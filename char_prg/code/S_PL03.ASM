; S_PL03A.BIN
#symbol fn_extern_8C054508 0x8C054508
#symbol fn_extern_8C054B34 0x8C054B34
#symbol fn_extern_8C05496C 0x8C05496C
#symbol fn_extern_8C054D04 0x8C054D04
#symbol fn_extern_8C053F6E 0x8C053F6E
#symbol fn_extern_8C053E00 0x8C053E00
#symbol fn_extern_8C0542E0 0x8C0542E0
#symbol fn_extern_8C054E58 0x8C054E58
#symbol fn_extern_8C055C3A 0x8C055C3A
#symbol fn_extern_8C0530D8 0x8C0530D8
#symbol fn_extern_8C054DA0 0x8C054DA0
#symbol extern_8C054D1C 0x8C054D1C
#symbol fn_extern_8C035162 0x8C035162
#symbol fn_extern_8C042008 0x8C042008
#symbol fn_extern_8C04223A 0x8C04223A
#symbol extern_8D068800 0x8D068800
#symbol extern_8C2896B0 0x8C2896B0
#symbol fn_extern_8C034E8C 0x8C034E8C
#symbol extern_8D0C2138 0x8D0C2138
#symbol fn_extern_8C052B4C 0x8C052B4C
#symbol fn_extern_8C034DEE 0x8C034DEE
#symbol fn_extern_8C051648 0x8C051648
#symbol fn_extern_8C0511B4 0x8C0511B4
#symbol extern_8C052C84 0x8C052C84
#symbol fn_extern_8C05176E 0x8C05176E
#symbol fn_extern_8C052CE2 0x8C052CE2
#symbol fn_extern_8C052DAC 0x8C052DAC
#symbol extern_8C05177A 0x8C05177A
#symbol fn_extern_8C04FEA8 0x8C04FEA8
#symbol fn_extern_8C050048 0x8C050048
#symbol fn_extern_8C050084 0x8C050084
#symbol fn_extern_8C04FF88 0x8C04FF88
#symbol fn_extern_8C0511E2 0x8C0511E2
#symbol fn_extern_8C056DE4 0x8C056DE4
#symbol extern_8D032338 0x8D032338
#symbol fn_extern_8C0BDF70 0x8C0BDF70
#symbol fn_extern_8C03544C 0x8C03544C
#symbol extern_8C289636 0x8C289636
#symbol fn_extern_8C0514B8 0x8C0514B8
#symbol fn_extern_8C11E730 0x8C11E730
#symbol extern_8C26823C 0x8C26823C
#symbol extern_8D042338 0x8D042338
#symbol fn_extern_8C046C8A 0x8C046C8A
#symbol fn_extern_8C05218A 0x8C05218A
#symbol extern_8D102338 0x8D102338
#symbol fn_extern_8C05115A 0x8C05115A
#symbol extern_8C062148 0x8C062148
#symbol extern_8C053082 0x8C053082
#symbol fn_extern_8C045790 0x8C045790
#symbol fn_extern_8C02FEC4 0x8C02FEC4
#symbol fn_extern_8C0522E0 0x8C0522E0
#symbol extern_8C0BB2BC 0x8C0BB2BC
#symbol extern_8C0BB314 0x8C0BB314
#symbol extern_8C050834 0x8C050834
#symbol extern_8C2895F6 0x8C2895F6
#symbol extern_8D032008 0x8D032008
#symbol extern_8C0626D8 0x8C0626D8
#symbol extern_8C055D2E 0x8C055D2E
#symbol extern_8C055D54 0x8C055D54
#symbol extern_8C063500 0x8C063500
#symbol extern_8D082338 0x8D082338
#symbol fn_extern_8C05264C 0x8C05264C
#symbol fn_extern_8C063900 0x8C063900
#symbol fn_extern_8C0523D8 0x8C0523D8
#symbol extern_8C0FDB4E 0x8C0FDB4E
#symbol extern_8C0424A6 0x8C0424A6
#symbol fn_extern_8C059F64 0x8C059F64
#symbol fn_extern_8C0BE4C4 0x8C0BE4C4
#symbol fn_extern_8C05933C 0x8C05933C
#symbol fn_extern_8C05248E 0x8C05248E
#symbol extern_8D3F2228 0x8D3F2228
#symbol extern_8C050EA4 0x8C050EA4
#symbol extern_8D1C2008 0x8D1C2008
#symbol extern_8D0E2008 0x8D0E2008
#symbol fn_extern_8C051854 0x8C051854
#symbol extern_8D0C2328 0x8D0C2328
#symbol extern_8C103660 0x8C103660
#symbol fn_extern_8C056F2A 0x8C056F2A
#symbol fn_extern_8C0423FC 0x8C0423FC
#symbol extern_8D052338 0x8D052338
#symbol fn_extern_8C0BBB48 0x8C0BBB48
#symbol fn_extern_8C052618 0x8C052618
#symbol extern_8D0A8800 0x8D0A8800
#symbol extern_8D198800 0x8D198800
#symbol code_extern_8C04CC1C 0x8C04CC1C
#symbol code_extern_8C04CE3A 0x8C04CE3A
#symbol fn_extern_8C129728 0x8C129728



;======================================================================

start_CE30000:
mov.w @(data_CE3001C,pc),r0 ; r0 set to 0x428		; addr: CE30000
mov 0x70,r5 ; r5 set to 0x70		; addr: CE30002
mov.l @(ptr_CE30020_to_ptr_CE35358_to_data_CE30642,pc),r7 ; r7 set to 0xCE35358		; addr: CE30004
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

data_CE3001C:
#data 0x0428		; addr: CE3001C
#data 0x0000		; addr: CE3001E

#align4
ptr_CE30020_to_ptr_CE35358_to_data_CE30642:
#data ptr_CE35358_to_data_CE30642		; addr: CE30020


f_code_CE30024:
mov.l r14,@-r15		; addr: CE30024
sts.l pr,@-r15		; addr: CE30026
mov.l @(ptr_CE300EC_to_fn_extern_8C054508,pc),r3 ; r3 set to 0x8C054508		; addr: CE30028
jsr @r3		; addr: CE3002A
mov r4,r14		; addr: CE3002C
extu.b r0,r0		; addr: CE3002E
tst r0,r0		; addr: CE30030
bf l_code_CE300E4		; addr: CE30032
mov.l @(ptr_CE300F0_to_fn_extern_8C054B34,pc),r3 ; r3 set to 0x8C054B34		; addr: CE30034
jsr @r3		; addr: CE30036
mov r14,r4		; addr: CE30038
extu.b r0,r0		; addr: CE3003A
tst r0,r0		; addr: CE3003C
bf l_code_CE300E4		; addr: CE3003E
mov.l @(ptr_CE300F4_to_fn_extern_8C05496C,pc),r3 ; r3 set to 0x8C05496C		; addr: CE30040
jsr @r3		; addr: CE30042
mov r14,r4		; addr: CE30044
extu.b r0,r0		; addr: CE30046
tst r0,r0		; addr: CE30048
bf l_code_CE300E4		; addr: CE3004A
mov.l @(ptr_CE300F8_to_fn_extern_8C054D04,pc),r3 ; r3 set to 0x8C054D04		; addr: CE3004C
jsr @r3		; addr: CE3004E
mov r14,r4		; addr: CE30050
extu.b r0,r0		; addr: CE30052
tst r0,r0		; addr: CE30054
bf l_code_CE300E4		; addr: CE30056
bsr data_CE30388		; addr: CE30058
mov r14,r4		; addr: CE3005A
extu.b r0,r0		; addr: CE3005C
tst r0,r0		; addr: CE3005E
bf l_code_CE300E4		; addr: CE30060
bsr data_CE303CE		; addr: CE30062
mov r14,r4		; addr: CE30064
extu.b r0,r0		; addr: CE30066
tst r0,r0		; addr: CE30068
bf l_code_CE300E4		; addr: CE3006A
bsr data_CE30316		; addr: CE3006C
mov r14,r4		; addr: CE3006E
extu.b r0,r0		; addr: CE30070
tst r0,r0		; addr: CE30072
bf l_code_CE300E4		; addr: CE30074
bsr data_CE30254		; addr: CE30076
mov r14,r4		; addr: CE30078
extu.b r0,r0		; addr: CE3007A
tst r0,r0		; addr: CE3007C
bf l_code_CE300E4		; addr: CE3007E
bsr l_code_CE301E0		; addr: CE30080
mov r14,r4		; addr: CE30082
extu.b r0,r0		; addr: CE30084
tst r0,r0		; addr: CE30086
bf l_code_CE300E4		; addr: CE30088
bsr data_CE30166		; addr: CE3008A
mov r14,r4		; addr: CE3008C
extu.b r0,r0		; addr: CE3008E
tst r0,r0		; addr: CE30090
bf l_code_CE300E4		; addr: CE30092
bsr data_CE30108		; addr: CE30094
mov r14,r4		; addr: CE30096
extu.b r0,r0		; addr: CE30098
tst r0,r0		; addr: CE3009A
bf l_code_CE300E4		; addr: CE3009C
bsr l_code_CE302D0		; addr: CE3009E
mov r14,r4		; addr: CE300A0
extu.b r0,r0		; addr: CE300A2
tst r0,r0		; addr: CE300A4
bf l_code_CE300E4		; addr: CE300A6
bsr data_CE304E0		; addr: CE300A8
mov r14,r4		; addr: CE300AA
extu.b r0,r0		; addr: CE300AC
tst r0,r0		; addr: CE300AE
bf l_code_CE300E4		; addr: CE300B0
bsr data_CE3047A		; addr: CE300B2
mov r14,r4		; addr: CE300B4
tst r0,r0		; addr: CE300B6
bf l_code_CE300E4		; addr: CE300B8
bsr l_code_CE30442		; addr: CE300BA
mov r14,r4		; addr: CE300BC
extu.b r0,r0		; addr: CE300BE
tst r0,r0		; addr: CE300C0
bf l_code_CE300E4		; addr: CE300C2
mov.w @(data_CE300EA,pc),r5 ; r5 set to 0x3B4		; addr: CE300C4
mov.l @(ptr_CE300FC_to_fn_extern_8C053F6E,pc),r3 ; r3 set to 0x8C053F6E		; addr: CE300C6
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE300C8
jsr @r3		; addr: CE300CA
mov r14,r4		; addr: CE300CC
extu.b r0,r0		; addr: CE300CE
tst r0,r0		; addr: CE300D0
bf l_code_CE300E4		; addr: CE300D2
mov.l @(ptr_CE30100_to_fn_extern_8C053E00,pc),r3 ; r3 set to 0x8C053E00		; addr: CE300D4
jsr @r3		; addr: CE300D6
mov r14,r4		; addr: CE300D8
lds.l @r15+,pr 		; addr: CE300DA
mov.l @(ptr_CE30104_to_fn_extern_8C0542E0,pc),r2 ; r2 set to 0x8C0542E0		; addr: CE300DC
mov r14,r4		; addr: CE300DE
jmp @r2		; addr: CE300E0
mov.l @r15+,r14		; addr: CE300E2

l_code_CE300E4:
lds.l @r15+,pr 		; addr: CE300E4
rts 		; addr: CE300E6
mov.l @r15+,r14		; addr: CE300E8
;-------------------------------------------------------------------------------

data_CE300EA:
#data 0x03B4		; addr: CE300EA

#align4
ptr_CE300EC_to_fn_extern_8C054508:
#data fn_extern_8C054508		; addr: CE300EC

ptr_CE300F0_to_fn_extern_8C054B34:
#data fn_extern_8C054B34		; addr: CE300F0

ptr_CE300F4_to_fn_extern_8C05496C:
#data fn_extern_8C05496C		; addr: CE300F4

ptr_CE300F8_to_fn_extern_8C054D04:
#data fn_extern_8C054D04		; addr: CE300F8

ptr_CE300FC_to_fn_extern_8C053F6E:
#data fn_extern_8C053F6E		; addr: CE300FC

ptr_CE30100_to_fn_extern_8C053E00:
#data fn_extern_8C053E00		; addr: CE30100

ptr_CE30104_to_fn_extern_8C0542E0:
#data fn_extern_8C0542E0		; addr: CE30104

data_CE30108:
#data 0x4F222FE6		; addr: CE30108
#data 0x938A7FFC		; addr: CE3010C
#data 0x96896E43		; addr: CE30110
#data 0xD54833EC		; addr: CE30114
#data 0x36EC2F32		; addr: CE30118
#data 0x430BD347		; addr: CE3011C
#data 0x600C64E3		; addr: CE30120
#data 0x89042008		; addr: CE30124
#data 0xE01A62F2		; addr: CE30128
#data 0x2338032C		; addr: CE3012C
#data 0x8904		; addr: CE30130

data_CE30132:
#data 0xE000		; addr: CE30132
#data 0x4F267F04		; addr: CE30134
#data 0x6EF6000B		; addr: CE30138
;-------------------------------------------------------------------------------

#align4
data_CE3013C:
#data 0xD3409574		; addr: CE3013C
#data 0x430B35EC		; addr: CE30140
#data 0xE00064E3		; addr: CE30144
#data 0xE30180E5		; addr: CE30148
#data 0xE51580E7		; addr: CE3014C
#data 0x906A80E6		; addr: CE30150
#data 0xD33B0E34		; addr: CE30154
#data 0x64E3430B		; addr: CE30158
#data 0x7F04E001		; addr: CE3015C
#data 0x000B4F26		; addr: CE30160
#data 0x6EF6		; addr: CE30164
;-------------------------------------------------------------------------------

data_CE30166:
#data 0x2FE6		; addr: CE30166
#data 0x2FD66E43		; addr: CE30168
#data 0xD5364F22		; addr: CE3016C
#data 0xD332965C		; addr: CE30170
#data 0x36EC430B		; addr: CE30174
#data 0x2008600C		; addr: CE30178
#data 0xC7338910		; addr: CE3017C
#data 0x9054F308		; addr: CE30180
#data 0xE038F2E6		; addr: CE30184
#data 0xF230F1E6		; addr: CE30188
#data 0x8907F215		; addr: CE3018C
#data 0x03EC904E		; addr: CE30190
#data 0x89052338		; addr: CE30194
#data 0x03EC904B		; addr: CE30198
#data 0x8B012338		; addr: CE3019C

#align4
data_CE301A0:
#data 0xE000A01A		; addr: CE301A0

#align4
data_CE301A4:
#data 0xED019542		; addr: CE301A4
#data 0xD3259042		; addr: CE301A8
#data 0x0ED435EC		; addr: CE301AC
#data 0x64E3430B		; addr: CE301B0
#data 0x6043E400		; addr: CE301B4
#data 0x80E50009		; addr: CE301B8
#data 0x000960D3		; addr: CE301BC
#data 0x604380E6		; addr: CE301C0
#data 0x80E70009		; addr: CE301C4
#data 0x902EE515		; addr: CE301C8
#data 0x0ED4D31D		; addr: CE301CC
#data 0x64E3430B		; addr: CE301D0
#data 0x000960D3		; addr: CE301D4

#align4
data_CE301D8:
#data 0x6DF64F26		; addr: CE301D8
#data 0x6EF6000B		; addr: CE301DC
;-------------------------------------------------------------------------------

l_code_CE301E0:
mov.l r14,@-r15		; addr: CE301E0
mov r4,r14		; addr: CE301E2
sts.l pr,@-r15		; addr: CE301E4
mov.l @(ptr_CE30250_to_data_CE352E4,pc),r5 ; r5 set to 0xCE352E4		; addr: CE301E6
mov.w @(data_CE30234,pc),r6 ; r6 set to 0x37C		; addr: CE301E8
mov.l @(ptr_CE3023C_to_fn_extern_8C054E58,pc),r3 ; r3 set to 0x8C054E58		; addr: CE301EA
jsr @r3		; addr: CE301EC
add r14,r6 ; r6 ??? bc r14 is ???		; addr: CE301EE
extu.b r0,r0		; addr: CE301F0
tst r0,r0		; addr: CE301F2
bf l_code_CE301FE		; addr: CE301F4
lds.l @r15+,pr 		; addr: CE301F6
mov 0x00,r0 ; r0 set to 0x00		; addr: CE301F8
rts 		; addr: CE301FA
mov.l @r15+,r14		; addr: CE301FC
;-------------------------------------------------------------------------------

l_code_CE301FE:
mov.w @(data_CE30234,pc),r5 ; r5 set to 0x37C		; addr: CE301FE
mov.l @(ptr_CE30240_to_fn_extern_8C055C3A,pc),r3 ; r3 set to 0x8C055C3A		; addr: CE30200
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE30202
jsr @r3		; addr: CE30204
mov r14,r4		; addr: CE30206
mov 0x00,r0 ; r0 set to 0x00		; addr: CE30208
mov.b r0,@(0x05,r14) 		; addr: CE3020A
mov 0x02,r3 ; r3 set to 0x02		; addr: CE3020C
mov.b r0,@(0x07,r14) 		; addr: CE3020E
mov 0x15,r5 ; r5 set to 0x15		; addr: CE30210
mov.b r0,@(0x06,r14) 		; addr: CE30212
mov.w @(data_CE3022A,pc),r0 ; r0 set to 0x1E9		; addr: CE30214
mov.b r3,@(r0,r14) 		; addr: CE30216
mov.l @(ptr_CE30244_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8		; addr: CE30218
jsr @r3		; addr: CE3021A
mov r14,r4		; addr: CE3021C
mov 0x01,r0 ; r0 set to 0x01		; addr: CE3021E
lds.l @r15+,pr 		; addr: CE30220
rts 		; addr: CE30222
mov.l @r15+,r14		; addr: CE30224
;-------------------------------------------------------------------------------
#data 0x02A4		; addr: CE30226
#data 0x036C		; addr: CE30228

data_CE3022A:
#data 0x01E9		; addr: CE3022A
#data 0x041C0374		; addr: CE3022C
#data 0x01FC01D4		; addr: CE30230

data_CE30234:
#data 0x037C		; addr: CE30234
#data 0x0000		; addr: CE30236

#align4
ptr_CE30238_to_data_CE352C4:
#data data_CE352C4		; addr: CE30238

ptr_CE3023C_to_fn_extern_8C054E58:
#data fn_extern_8C054E58		; addr: CE3023C

ptr_CE30240_to_fn_extern_8C055C3A:
#data fn_extern_8C055C3A		; addr: CE30240

ptr_CE30244_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8		; addr: CE30244

ptr_CE30248_to_data_CE352D4:
#data data_CE352D4		; addr: CE30248
#data 0x43092492		; addr: CE3024C

#align4
ptr_CE30250_to_data_CE352E4:
#data data_CE352E4		; addr: CE30250

data_CE30254:
#data 0x6E432FE6		; addr: CE30254
#data 0x4F222FD6		; addr: CE30258
#data 0x967DD543		; addr: CE3025C
#data 0x430BD343		; addr: CE30260
#data 0x600C36EC		; addr: CE30264
#data 0x89102008		; addr: CE30268
#data 0xF308C741		; addr: CE3026C
#data 0xF2E69075		; addr: CE30270
#data 0xF1E6E038		; addr: CE30274
#data 0xF215F230		; addr: CE30278
#data 0x906F8907		; addr: CE3027C
#data 0x233803EC		; addr: CE30280
#data 0x906C8905		; addr: CE30284
#data 0x233803EC		; addr: CE30288
#data 0x8B01		; addr: CE3028C

data_CE3028E:
#data 0xA01B		; addr: CE3028E
#data 0xE000		; addr: CE30290

data_CE30292:
#data 0x9563		; addr: CE30292
#data 0x9063ED01		; addr: CE30294
#data 0x35ECD337		; addr: CE30298
#data 0x430B0ED4		; addr: CE3029C
#data 0xE40064E3		; addr: CE302A0
#data 0x00096043		; addr: CE302A4
#data 0x60D380E5		; addr: CE302A8
#data 0x80E60009		; addr: CE302AC
#data 0x00096043		; addr: CE302B0
#data 0xE30280E7		; addr: CE302B4
#data 0xE5159054		; addr: CE302B8
#data 0xD32F0E34		; addr: CE302BC
#data 0x64E3430B		; addr: CE302C0
#data 0x000960D3		; addr: CE302C4

#align4
data_CE302C8:
#data 0x6DF64F26		; addr: CE302C8
#data 0x6EF6000B		; addr: CE302CC
;-------------------------------------------------------------------------------

l_code_CE302D0:
mov.l r14,@-r15		; addr: CE302D0
mov r4,r14		; addr: CE302D2
sts.l pr,@-r15		; addr: CE302D4
mov.l @(ptr_CE30380_to_data_CE35304,pc),r5 ; r5 set to 0xCE35304		; addr: CE302D6
mov.w @(data_CE30366,pc),r6 ; r6 set to 0x38C		; addr: CE302D8
mov.l @(ptr_CE30370_to_fn_extern_8C054E58,pc),r3 ; r3 set to 0x8C054E58		; addr: CE302DA
jsr @r3		; addr: CE302DC
add r14,r6 ; r6 ??? bc r14 is ???		; addr: CE302DE
extu.b r0,r0		; addr: CE302E0
tst r0,r0		; addr: CE302E2
bf l_code_CE302EE		; addr: CE302E4
lds.l @r15+,pr 		; addr: CE302E6
mov 0x00,r0 ; r0 set to 0x00		; addr: CE302E8
rts 		; addr: CE302EA
mov.l @r15+,r14		; addr: CE302EC
;-------------------------------------------------------------------------------

l_code_CE302EE:
mov.w @(data_CE30366,pc),r5 ; r5 set to 0x38C		; addr: CE302EE
mov.l @(ptr_CE30378_to_fn_extern_8C055C3A,pc),r3 ; r3 set to 0x8C055C3A		; addr: CE302F0
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE302F2
jsr @r3		; addr: CE302F4
mov r14,r4		; addr: CE302F6
mov 0x00,r0 ; r0 set to 0x00		; addr: CE302F8
mov.b r0,@(0x05,r14) 		; addr: CE302FA
mov 0x03,r3 ; r3 set to 0x03		; addr: CE302FC
mov.b r0,@(0x07,r14) 		; addr: CE302FE
mov 0x15,r5 ; r5 set to 0x15		; addr: CE30300
mov.b r0,@(0x06,r14) 		; addr: CE30302
mov.w @(data_CE30364,pc),r0 ; r0 set to 0x1E9		; addr: CE30304
mov.b r3,@(r0,r14) 		; addr: CE30306
mov.l @(ptr_CE3037C_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8		; addr: CE30308
jsr @r3		; addr: CE3030A
mov r14,r4		; addr: CE3030C
mov 0x01,r0 ; r0 set to 0x01		; addr: CE3030E
lds.l @r15+,pr 		; addr: CE30310
rts 		; addr: CE30312
mov.l @r15+,r14		; addr: CE30314
;-------------------------------------------------------------------------------

data_CE30316:
#data 0x2FE6		; addr: CE30316
#data 0x4F226E43		; addr: CE30318
#data 0x9623D519		; addr: CE3031C
#data 0x430BD313		; addr: CE30320
#data 0x600C36EC		; addr: CE30324
#data 0x89042008		; addr: CE30328
#data 0x02EE901D		; addr: CE3032C
#data 0x23386320		; addr: CE30330
#data 0x8B03		; addr: CE30334

data_CE30336:
#data 0x4F26		; addr: CE30336
#data 0x000BE000		; addr: CE30338
#data 0x6EF6		; addr: CE3033C
;-------------------------------------------------------------------------------

data_CE3033E:
#data 0xE000		; addr: CE3033E
#data 0xE30780E5		; addr: CE30340
#data 0xE51D80E7		; addr: CE30344
#data 0x900B80E6		; addr: CE30348
#data 0xD30B0E34		; addr: CE3034C
#data 0x64E3430B		; addr: CE30350
#data 0x4F26E001		; addr: CE30354
#data 0x6EF6000B		; addr: CE30358
;-------------------------------------------------------------------------------
#data 0x041C0384		; addr: CE3035C
#data 0x01FC01D4		; addr: CE30360

data_CE30364:
#data 0x01E9		; addr: CE30364

data_CE30366:
#data 0x038C		; addr: CE30366
#data 0x040C0394		; addr: CE30368

#align4
ptr_CE3036C_to_data_CE352F4:
#data data_CE352F4		; addr: CE3036C

ptr_CE30370_to_fn_extern_8C054E58:
#data fn_extern_8C054E58		; addr: CE30370
#data 0x43092492		; addr: CE30374

#align4
ptr_CE30378_to_fn_extern_8C055C3A:
#data fn_extern_8C055C3A		; addr: CE30378

ptr_CE3037C_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8		; addr: CE3037C

ptr_CE30380_to_data_CE35304:
#data data_CE35304		; addr: CE30380

ptr_CE30384_to_data_CE35318:
#data data_CE35318		; addr: CE30384

data_CE30388:
#data 0x6E432FE6		; addr: CE30388
#data 0xD5464F22		; addr: CE3038C
#data 0xD3469683		; addr: CE30390
#data 0x36EC430B		; addr: CE30394
#data 0x2008600C		; addr: CE30398
#data 0x907D8904		; addr: CE3039C
#data 0x632002EE		; addr: CE303A0
#data 0x8B032338		; addr: CE303A4

#align4
data_CE303A8:
#data 0xE0004F26		; addr: CE303A8
#data 0x6EF6000B		; addr: CE303AC
;-------------------------------------------------------------------------------

#align4
data_CE303B0:
#data 0x80E5E000		; addr: CE303B0
#data 0x80E7E309		; addr: CE303B4
#data 0x80E6E51D		; addr: CE303B8
#data 0x0E34906F		; addr: CE303BC
#data 0x430BD33B		; addr: CE303C0
#data 0xE00164E3		; addr: CE303C4
#data 0x000B4F26		; addr: CE303C8
#data 0x6EF6		; addr: CE303CC
;-------------------------------------------------------------------------------

data_CE303CE:
#data 0x2FE6		; addr: CE303CE
#data 0x4F226E43		; addr: CE303D0
#data 0x9663D537		; addr: CE303D4
#data 0x430BD334		; addr: CE303D8
#data 0x600C36EC		; addr: CE303DC
#data 0x89122008		; addr: CE303E0
#data 0x03EE905A		; addr: CE303E4
#data 0x22286230		; addr: CE303E8
#data 0x9058890D		; addr: CE303EC
#data 0x600C00EC		; addr: CE303F0
#data 0x8F128802		; addr: CE303F4
#data 0x9053E400		; addr: CE303F8
#data 0x222802EC		; addr: CE303FC
#data 0x90508907		; addr: CE30400
#data 0x233803EC		; addr: CE30404
#data 0x8B03		; addr: CE30408

data_CE3040A:
#data 0x4F26		; addr: CE3040A
#data 0x000BE000		; addr: CE3040C
#data 0x6EF6		; addr: CE30410
;-------------------------------------------------------------------------------

data_CE30412:
#data 0x9047		; addr: CE30412
#data 0x0E54E501		; addr: CE30414
#data 0xA002E020		; addr: CE30418
#data 0x0E54		; addr: CE3041C

data_CE3041E:
#data 0xE020		; addr: CE3041E
#data 0x0E44		; addr: CE30420

data_CE30422:
#data 0x6043		; addr: CE30422
#data 0x80E50009		; addr: CE30424
#data 0x80E7E306		; addr: CE30428
#data 0x80E6E51D		; addr: CE3042C
#data 0x0E349035		; addr: CE30430
#data 0x430BD31E		; addr: CE30434
#data 0xE00164E3		; addr: CE30438
#data 0x000B4F26		; addr: CE3043C
#data 0x6EF6		; addr: CE30440
;-------------------------------------------------------------------------------

l_code_CE30442:
mov.l r14,@-r15		; addr: CE30442
mov r4,r14		; addr: CE30444
sts.l pr,@-r15		; addr: CE30446
mov.l @(ptr_CE304B8_to_fn_extern_8C054DA0,pc),r3 ; r3 set to 0x8C054DA0		; addr: CE30448
jsr @r3		; addr: CE3044A
mov 0x08,r5 ; r5 set to 0x08		; addr: CE3044C
extu.b r0,r0		; addr: CE3044E
tst r0,r0		; addr: CE30450
bf l_code_CE3045C		; addr: CE30452
lds.l @r15+,pr 		; addr: CE30454
mov 0x00,r0 ; r0 set to 0x00		; addr: CE30456
rts 		; addr: CE30458
mov.l @r15+,r14		; addr: CE3045A
;-------------------------------------------------------------------------------

l_code_CE3045C:
mov 0x00,r0 ; r0 set to 0x00		; addr: CE3045C
mov.b r0,@(0x05,r14) 		; addr: CE3045E
mov 0x08,r3 ; r3 set to 0x08		; addr: CE30460
mov.b r0,@(0x07,r14) 		; addr: CE30462
mov 0x15,r5 ; r5 set to 0x15		; addr: CE30464
mov.b r0,@(0x06,r14) 		; addr: CE30466
mov.w @(data_CE3049E,pc),r0 ; r0 set to 0x1E9		; addr: CE30468
mov.b r3,@(r0,r14) 		; addr: CE3046A
mov.l @(ptr_CE304B0_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8		; addr: CE3046C
jsr @r3		; addr: CE3046E
mov r14,r4		; addr: CE30470
mov 0x01,r0 ; r0 set to 0x01		; addr: CE30472
lds.l @r15+,pr 		; addr: CE30474
rts 		; addr: CE30476
mov.l @r15+,r14		; addr: CE30478
;-------------------------------------------------------------------------------

data_CE3047A:
#data 0x2FE6		; addr: CE3047A
#data 0xD30F4F22		; addr: CE3047C
#data 0x6E43430B		; addr: CE30480
#data 0x89042008		; addr: CE30484
#data 0x02EE9008		; addr: CE30488
#data 0x23386320		; addr: CE3048C
#data 0x8B16		; addr: CE30490

data_CE30492:
#data 0x4F26		; addr: CE30492
#data 0x000BE000		; addr: CE30494
#data 0x039C6EF6		; addr: CE30498
#data 0x040C		; addr: CE3049C

data_CE3049E:
#data 0x01E9		; addr: CE3049E
#data 0x01F903A4		; addr: CE304A0
#data 0x01FC01D4		; addr: CE304A4

#align4
ptr_CE304A8_to_data_CE35328:
#data data_CE35328		; addr: CE304A8
#data fn_extern_8C054E58		; addr: CE304AC

#align4
ptr_CE304B0_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8		; addr: CE304B0

ptr_CE304B4_to_data_CE35338:
#data data_CE35338		; addr: CE304B4

ptr_CE304B8_to_fn_extern_8C054DA0:
#data fn_extern_8C054DA0		; addr: CE304B8
#data extern_8C054D1C		; addr: CE304BC

#align4
data_CE304C0:
#data 0xE30E9086		; addr: CE304C0
#data 0x0E34E51D		; addr: CE304C4
#data 0xD346E000		; addr: CE304C8
#data 0x430B80E5		; addr: CE304CC
#data 0xE00064E3		; addr: CE304D0
#data 0x80E680E7		; addr: CE304D4
#data 0x4F26E001		; addr: CE304D8
#data 0x6EF6000B		; addr: CE304DC
;-------------------------------------------------------------------------------

#align4
data_CE304E0:
#data 0x6E432FE6		; addr: CE304E0
#data 0xD5404F22		; addr: CE304E4
#data 0xD3409673		; addr: CE304E8
#data 0x36EC430B		; addr: CE304EC
#data 0x2008600C		; addr: CE304F0
#data 0x906D8907		; addr: CE304F4
#data 0x222802EC		; addr: CE304F8
#data 0x906A8907		; addr: CE304FC
#data 0x233803EC		; addr: CE30500
#data 0x8B03		; addr: CE30504

data_CE30506:
#data 0x4F26		; addr: CE30506
#data 0x000BE000		; addr: CE30508
#data 0x6EF6		; addr: CE3050C
;-------------------------------------------------------------------------------

data_CE3050E:
#data 0x9061		; addr: CE3050E
#data 0x955EE301		; addr: CE30510
#data 0xD3360E34		; addr: CE30514
#data 0x430B35EC		; addr: CE30518
#data 0xE00064E3		; addr: CE3051C
#data 0xE30F80E5		; addr: CE30520
#data 0xE51580E7		; addr: CE30524
#data 0x905180E6		; addr: CE30528
#data 0xD32D0E34		; addr: CE3052C
#data 0x64E3430B		; addr: CE30530
#data 0x4F26E001		; addr: CE30534
#data 0x6EF6000B		; addr: CE30538
;-------------------------------------------------------------------------------

#align4
data_CE3053C:
#data 0x6E432FE6		; addr: CE3053C
#data 0xD52C4F22		; addr: CE30540
#data 0xD3299648		; addr: CE30544
#data 0x36EC430B		; addr: CE30548
#data 0x2008600C		; addr: CE3054C
#data 0x90428904		; addr: CE30550
#data 0x632002EE		; addr: CE30554
#data 0x8B032338		; addr: CE30558

#align4
data_CE3055C:
#data 0xE0004F26		; addr: CE3055C
#data 0x6EF6000B		; addr: CE30560
;-------------------------------------------------------------------------------

#align4
data_CE30564:
#data 0xE307903A		; addr: CE30564
#data 0xE0010E34		; addr: CE30568
#data 0x000B4F26		; addr: CE3056C
#data 0x6EF6		; addr: CE30570
;-------------------------------------------------------------------------------

data_CE30572:
#data 0x2FE6		; addr: CE30572
#data 0x4F226E43		; addr: CE30574
#data 0x9630D51F		; addr: CE30578
#data 0x430BD31B		; addr: CE3057C
#data 0x600C36EC		; addr: CE30580
#data 0x89042008		; addr: CE30584
#data 0x02EE9027		; addr: CE30588
#data 0x23386320		; addr: CE3058C
#data 0x8B03		; addr: CE30590

data_CE30592:
#data 0x4F26		; addr: CE30592
#data 0x000BE000		; addr: CE30594
#data 0x6EF6		; addr: CE30598
;-------------------------------------------------------------------------------

data_CE3059A:
#data 0x901F		; addr: CE3059A
#data 0x0E34E309		; addr: CE3059C
#data 0x4F26E001		; addr: CE305A0
#data 0x6EF6000B		; addr: CE305A4
;-------------------------------------------------------------------------------

#align4
data_CE305A8:
#data 0x6E432FE6		; addr: CE305A8
#data 0xD5134F22		; addr: CE305AC
#data 0xD30E9616		; addr: CE305B0
#data 0x36EC430B		; addr: CE305B4
#data 0x2008600C		; addr: CE305B8
#data 0x900C8904		; addr: CE305BC
#data 0x632002EE		; addr: CE305C0
#data 0x8B1B2338		; addr: CE305C4

#align4
data_CE305C8:
#data 0xE0004F26		; addr: CE305C8
#data 0x6EF6000B		; addr: CE305CC
;-------------------------------------------------------------------------------
#data 0x03AC01E9		; addr: CE305D0
#data 0x01FC01D4		; addr: CE305D4
#data 0x040C0394		; addr: CE305D8
#data 0x039C0258		; addr: CE305DC
#data 0x000003A4		; addr: CE305E0
#data fn_extern_8C0530D8		; addr: CE305E4

#align4
ptr_CE305E8_to_data_CE35348:
#data data_CE35348		; addr: CE305E8
#data fn_extern_8C054E58		; addr: CE305EC
#data fn_extern_8C055C3A		; addr: CE305F0

#align4
ptr_CE305F4_to_data_CE35318:
#data data_CE35318		; addr: CE305F4

ptr_CE305F8_to_data_CE35328:
#data data_CE35328		; addr: CE305F8

ptr_CE305FC_to_data_CE35338:
#data data_CE35338		; addr: CE305FC

data_CE30600:
#data 0xE300E020		; addr: CE30600
#data 0xE2060E34		; addr: CE30604
#data 0x0E24901A		; addr: CE30608
#data 0x4F26E001		; addr: CE3060C
#data 0x6EF6000B		; addr: CE30610
;-------------------------------------------------------------------------------

#align4
data_CE30614:
#data 0x4F222FE6		; addr: CE30614
#data 0x6E43BFAB		; addr: CE30618
#data 0x8B072008		; addr: CE3061C
#data 0x64E3BFC2		; addr: CE30620
#data 0x8B032008		; addr: CE30624
#data 0x64E3BF88		; addr: CE30628
#data 0x89032008		; addr: CE3062C

#align4
data_CE30630:
#data 0xE0014F26		; addr: CE30630
#data 0x6EF6000B		; addr: CE30634
;-------------------------------------------------------------------------------

#align4
data_CE30638:
#data 0x4F26E000		; addr: CE30638
#data 0x6EF6000B		; addr: CE3063C
;-------------------------------------------------------------------------------
#data 0x0258		; addr: CE30640

data_CE30642:
#data 0x2FE6		; addr: CE30642
#data 0x2FD66E43		; addr: CE30644
#data 0x84E54F22		; addr: CE30648
#data 0x20089D6A		; addr: CE3064C
#data 0x3DEC8F0D		; addr: CE30650
#data 0x00EC9067		; addr: CE30654
#data 0x8815600C		; addr: CE30658
#data 0x84E58915		; addr: CE3065C
#data 0x8B042008		; addr: CE30660
#data 0x00EC905F		; addr: CE30664
#data 0x881D600C		; addr: CE30668
#data 0x890D		; addr: CE3066C

data_CE3066E:
#data 0xE012		; addr: CE3066E
#data 0x222802DC		; addr: CE30670
#data 0x03DC8909		; addr: CE30674
#data 0x0D3473FF		; addr: CE30678
#data 0x2338633E		; addr: CE3067C
#data 0xD32A8B03		; addr: CE30680
#data 0x430BE500		; addr: CE30684
#data 0x64E3		; addr: CE30688

data_CE3068A:
#data 0xE01C		; addr: CE3068A
#data 0x222802DC		; addr: CE3068C
#data 0x84E58921		; addr: CE30690
#data 0x8B172008		; addr: CE30694
#data 0x00EC9045		; addr: CE30698
#data 0x881D600C		; addr: CE3069C
#data 0x90418B04		; addr: CE306A0
#data 0x600C00EC		; addr: CE306A4
#data 0x89238806		; addr: CE306A8

#align4
data_CE306AC:
#data 0x04EC903B		; addr: CE306AC
#data 0x880A604C		; addr: CE306B0
#data 0x64038D1E		; addr: CE306B4
#data 0x00096043		; addr: CE306B8
#data 0x8919880B		; addr: CE306BC
#data 0x00096043		; addr: CE306C0
#data 0x8915881A		; addr: CE306C4

#align4
data_CE306C8:
#data 0xE01CD319		; addr: CE306C8
#data 0xE52BE200		; addr: CE306CC
#data 0x430B0D24		; addr: CE306D0
#data 0x64E3		; addr: CE306D4

data_CE306D6:
#data 0xE019		; addr: CE306D6
#data 0x222802DC		; addr: CE306D8
#data 0x84E5890A		; addr: CE306DC
#data 0x8B042008		; addr: CE306E0
#data 0x00EC901F		; addr: CE306E4
#data 0x881A600C		; addr: CE306E8
#data 0x8902		; addr: CE306EC

data_CE306EE:
#data 0xE019		; addr: CE306EE
#data 0x0D24E200		; addr: CE306F0

#align4
data_CE306F4:
#data 0x6DF64F26		; addr: CE306F4
#data 0x6EF6000B		; addr: CE306F8
;-------------------------------------------------------------------------------

l_code_CE306FC:
mov.l r14,@-r15		; addr: CE306FC
mov r4,r14		; addr: CE306FE
mov.w @(data_CE3072A,pc),r0 ; r0 set to 0x1E8		; addr: CE30700
mov.l r13,@-r15		; addr: CE30702
mov.l r12,@-r15		; addr: CE30704
mov 0x01,r12 ; r12 set to 0x01		; addr: CE30706
mov.l r11,@-r15		; addr: CE30708
sts.l pr,@-r15		; addr: CE3070A
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3070C
mov.l @(ptr_CE30734_to_fn_extern_8C04223A,pc),r11 ; r11 set to 0x8C04223A		; addr: CE3070E
extu.b r0,r0		; addr: CE30710
cmp/eq 0x00,r0 		; addr: CE30712
bt/s l_code_CE30738		; addr: CE30714
mov 0x00,r13 ; r13 set to 0x00		; addr: CE30716
cmp/eq 0x01,r0 		; addr: CE30718
bt l_code_CE30756		; addr: CE3071A
cmp/eq 0x02,r0 		; addr: CE3071C
bt data_CE30770		; addr: CE3071E
bra l_code_CE3078A		; addr: CE30720
nop 		; addr: CE30722
#data 0x01D002A4		; addr: CE30724
#data 0x01E9		; addr: CE30728

data_CE3072A:
#data 0x01E8		; addr: CE3072A
#data fn_extern_8C035162		; addr: CE3072C
#data fn_extern_8C042008		; addr: CE30730

#align4
ptr_CE30734_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE30734


l_code_CE30738:
mov.w @(data_CE30830,pc),r0 ; r0 set to 0x158		; addr: CE30738
mov 0x14,r5 ; r5 set to 0x14		; addr: CE3073A
mov.b r13,@(r0,r14) 		; addr: CE3073C
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE3073E
mov.b r13,@(r0,r14) 		; addr: CE30740
jsr @r11		; addr: CE30742
mov r14,r4		; addr: CE30744
mov.w @(data_CE30832,pc),r0 ; r0 set to 0x3F4		; addr: CE30746
mov.l @(ptr_CE30840_to_data_CE3527C,pc),r3 ; r3 set to 0xCE3527C		; addr: CE30748
mov.l r3,@(r0,r14) 		; addr: CE3074A
mov.w @(data_CE30834,pc),r0 ; r0 set to 0x1A7		; addr: CE3074C
mov.b r13,@(r0,r14) 		; addr: CE3074E
mov.w @(data_CE30836,pc),r0 ; r0 set to 0x2A2		; addr: CE30750
bra l_code_CE30788		; addr: CE30752
nop 		; addr: CE30754

l_code_CE30756:
mov.w @(data_CE30830,pc),r0 ; r0 set to 0x158		; addr: CE30756
mov 0x15,r5 ; r5 set to 0x15		; addr: CE30758
mov.b r12,@(r0,r14) 		; addr: CE3075A
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE3075C
mov.b r12,@(r0,r14) 		; addr: CE3075E
jsr @r11		; addr: CE30760
mov r14,r4		; addr: CE30762
mov.w @(data_CE30832,pc),r0 ; r0 set to 0x3F4		; addr: CE30764
mov.l @(ptr_CE30844_to_data_CE35280,pc),r3 ; r3 set to 0xCE35280		; addr: CE30766
mov.l r3,@(r0,r14) 		; addr: CE30768
mov.w @(data_CE30834,pc),r0 ; r0 set to 0x1A7		; addr: CE3076A
bra l_code_CE30788		; addr: CE3076C
nop 		; addr: CE3076E

#align4
data_CE30770:
#data 0xEC02905E		; addr: CE30770
#data 0x0EC4E516		; addr: CE30774
#data 0x0EC47049		; addr: CE30778
#data 0x64E34B0B		; addr: CE3077C
#data 0xD3319057		; addr: CE30780
#data 0x90550E36		; addr: CE30784


l_code_CE30788:
mov.b r12,@(r0,r14) 		; addr: CE30788

l_code_CE3078A:
mov.w @(data_CE30838,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1AC		; addr: CE3078A
mov 0x07,r5 ; r5 set to 0x07, r5 set to 0x07		; addr: CE3078C
mov.l @(ptr_CE3084C_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0		; addr: CE3078E
mov r14,r4		; addr: CE30790
mov.w r13,@(r0,r14) 		; addr: CE30792
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19E		; addr: CE30794
mov.b r13,@(r0,r14) 		; addr: CE30796
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4		; addr: CE30798
mov.l r13,@(r0,r14) 		; addr: CE3079A
mov.b @(0x02,r14),r0 		; addr: CE3079C
mov.l @r3,r2		; addr: CE3079E
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4		; addr: CE307A0
shll r0 ; r0 set to 0x188, r0 set to 0x188		; addr: CE307A2
add 0x7C,r2		; addr: CE307A4
mov.w @(r0,r2),r1		; addr: CE307A6
add 0x01,r1		; addr: CE307A8
mov.w r1,@(r0,r2) 		; addr: CE307AA
lds.l @r15+,pr 		; addr: CE307AC
mov.w @(data_CE30830,pc),r0 ; r0 set to 0x158, r0 set to 0x158		; addr: CE307AE
mov.l @(ptr_CE30850_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8C		; addr: CE307B0
mov.l @r15+,r11		; addr: CE307B2
mov.b @(r0,r14),r6		; addr: CE307B4
mov.l @r15+,r12		; addr: CE307B6
mov.l @r15+,r13		; addr: CE307B8
jmp @r2		; addr: CE307BA
mov.l @r15+,r14		; addr: CE307BC

l_code_CE307BE:
mov.w @(data_CE3083A,pc),r0 ; r0 set to 0x1E8		; addr: CE307BE
mov.l r14,@-r15		; addr: CE307C0
mov r4,r14		; addr: CE307C2
mov.l r13,@-r15		; addr: CE307C4
mov.l r12,@-r15		; addr: CE307C6
sts.l pr,@-r15		; addr: CE307C8
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE307CA
mov.l @(ptr_CE30854_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A		; addr: CE307CC
extu.b r0,r0		; addr: CE307CE
cmp/eq 0x00,r0 		; addr: CE307D0
bt/s l_code_CE307E2		; addr: CE307D2
mov 0x00,r13 ; r13 set to 0x00		; addr: CE307D4
cmp/eq 0x01,r0 		; addr: CE307D6
bt l_code_CE307FE		; addr: CE307D8
cmp/eq 0x02,r0 		; addr: CE307DA
bt l_code_CE3081A		; addr: CE307DC
bra l_code_CE30876		; addr: CE307DE
nop 		; addr: CE307E0

l_code_CE307E2:
mov.w @(data_CE30830,pc),r0 ; r0 set to 0x158		; addr: CE307E2
mov 0x06,r3 ; r3 set to 0x06		; addr: CE307E4
mov 0x14,r5 ; r5 set to 0x14		; addr: CE307E6
mov.b r13,@(r0,r14) 		; addr: CE307E8
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE307EA
mov.b r3,@(r0,r14) 		; addr: CE307EC
jsr @r12		; addr: CE307EE
mov r14,r4		; addr: CE307F0
mov.w @(data_CE30832,pc),r0 ; r0 set to 0x3F4		; addr: CE307F2
mov.l @(ptr_CE30840_to_data_CE3527C,pc),r3 ; r3 set to 0xCE3527C		; addr: CE307F4
mov.l r3,@(r0,r14) 		; addr: CE307F6
mov.w @(data_CE30834,pc),r0 ; r0 set to 0x1A7		; addr: CE307F8
bra l_code_CE30876		; addr: CE307FA
mov.b r13,@(r0,r14) 		; addr: CE307FC

l_code_CE307FE:
mov.w @(data_CE30830,pc),r0 ; r0 set to 0x158		; addr: CE307FE
mov 0x01,r2 ; r2 set to 0x01		; addr: CE30800
mov 0x07,r3 ; r3 set to 0x07		; addr: CE30802
mov.b r2,@(r0,r14) 		; addr: CE30804
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30806
mov 0x15,r5 ; r5 set to 0x15		; addr: CE30808
mov.b r3,@(r0,r14) 		; addr: CE3080A
jsr @r12		; addr: CE3080C
mov r14,r4		; addr: CE3080E
mov.w @(data_CE30832,pc),r0 ; r0 set to 0x3F4		; addr: CE30810
mov.l @(ptr_CE30844_to_data_CE35280,pc),r3 ; r3 set to 0xCE35280		; addr: CE30812
mov.l r3,@(r0,r14) 		; addr: CE30814
bra data_CE30872		; addr: CE30816
mov 0x01,r2		; addr: CE30818

l_code_CE3081A:
mov.w @(data_CE3083C,pc),r0 ; r0 set to 0x1FA		; addr: CE3081A
mov.w @(data_CE3083E,pc),r3 ; r3 set to 0x400		; addr: CE3081C
mov.w @(r0,r14),r1		; addr: CE3081E
extu.w r1,r1		; addr: CE30820
tst r3,r1		; addr: CE30822
bt data_CE30858		; addr: CE30824
mov.w @(data_CE30830,pc),r0 ; r0 set to 0x158		; addr: CE30826
mov 0x03,r2 ; r2 set to 0x03		; addr: CE30828
mov.b r2,@(r0,r14) 		; addr: CE3082A
bra data_CE30860		; addr: CE3082C
mov 0x1C,r1		; addr: CE3082E

data_CE30830:
#data 0x0158		; addr: CE30830

data_CE30832:
#data 0x03F4		; addr: CE30832

data_CE30834:
#data 0x01A7		; addr: CE30834

data_CE30836:
#data 0x02A2		; addr: CE30836

data_CE30838:
#data 0x01AC		; addr: CE30838

data_CE3083A:
#data 0x01E8		; addr: CE3083A

data_CE3083C:
#data 0x01FA		; addr: CE3083C

data_CE3083E:
#data 0x0400		; addr: CE3083E

#align4
ptr_CE30840_to_data_CE3527C:
#data data_CE3527C		; addr: CE30840

ptr_CE30844_to_data_CE35280:
#data data_CE35280		; addr: CE30844

ptr_CE30848_to_data_CE35284:
#data data_CE35284		; addr: CE30848

ptr_CE3084C_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE3084C

ptr_CE30850_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE30850

ptr_CE30854_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE30854

data_CE30858:
#data 0xE202908E		; addr: CE30858
#data 0x0E24E108		; addr: CE3085C

#align4
data_CE30860:
#data 0xE5167049		; addr: CE30860
#data 0x4C0B0E14		; addr: CE30864
#data 0x908664E3		; addr: CE30868
#data 0xD346E202		; addr: CE3086C
#data 0x0E36		; addr: CE30870

data_CE30872:
#data 0x9083		; addr: CE30872
#data 0x0E24		; addr: CE30874


l_code_CE30876:
mov.w @(data_CE3097E,pc),r0 ; r0 set to 0x1AC		; addr: CE30876
mov 0x09,r5 ; r5 set to 0x09		; addr: CE30878
mov.l @(ptr_CE3098C_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE3087A
mov r14,r4		; addr: CE3087C
mov.w r13,@(r0,r14) 		; addr: CE3087E
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE30880
mov.b r13,@(r0,r14) 		; addr: CE30882
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE30884
mov.l r13,@(r0,r14) 		; addr: CE30886
mov.b @(0x02,r14),r0 		; addr: CE30888
mov.l @r3,r2		; addr: CE3088A
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE3088C
shll r0 ; r0 set to 0x188		; addr: CE3088E
add 0x7C,r2		; addr: CE30890
mov.w @(r0,r2),r1		; addr: CE30892
add 0x01,r1		; addr: CE30894
mov.w r1,@(r0,r2) 		; addr: CE30896
lds.l @r15+,pr 		; addr: CE30898
mov.w @(data_CE30978,pc),r0 ; r0 set to 0x158		; addr: CE3089A
mov.l @(ptr_CE30990_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE3089C
mov.l @r15+,r12		; addr: CE3089E
mov.b @(r0,r14),r6		; addr: CE308A0
mov.l @r15+,r13		; addr: CE308A2
jmp @r2		; addr: CE308A4
mov.l @r15+,r14		; addr: CE308A6

l_code_CE308A8:
mov.w @(data_CE30980,pc),r0 ; r0 set to 0x1E8		; addr: CE308A8
mov.l r14,@-r15		; addr: CE308AA
mov r4,r14		; addr: CE308AC
mov.l r13,@-r15		; addr: CE308AE
mov 0x03,r4 ; r4 set to 0x03		; addr: CE308B0
mov.l r12,@-r15		; addr: CE308B2
sts.l pr,@-r15		; addr: CE308B4
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE308B6
mov.l @(ptr_CE30994_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A		; addr: CE308B8
extu.b r0,r0		; addr: CE308BA
cmp/eq 0x00,r0 		; addr: CE308BC
bt/s l_code_CE308CE		; addr: CE308BE
mov 0x00,r13 ; r13 set to 0x00		; addr: CE308C0
cmp/eq 0x01,r0 		; addr: CE308C2
bt l_code_CE308E8		; addr: CE308C4
cmp/eq 0x02,r0 		; addr: CE308C6
bt l_code_CE30904		; addr: CE308C8
bra l_code_CE30946		; addr: CE308CA
nop 		; addr: CE308CC

l_code_CE308CE:
mov.w @(data_CE30978,pc),r0 ; r0 set to 0x158		; addr: CE308CE
mov 0x14,r5 ; r5 set to 0x14		; addr: CE308D0
mov.b r13,@(r0,r14) 		; addr: CE308D2
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE308D4
mov.b r4,@(r0,r14) 		; addr: CE308D6
jsr @r12		; addr: CE308D8
mov r14,r4		; addr: CE308DA
mov.w @(data_CE3097A,pc),r0 ; r0 set to 0x3F4		; addr: CE308DC
mov.l @(ptr_CE30998_to_data_CE35288,pc),r3 ; r3 set to 0xCE35288		; addr: CE308DE
mov.l r3,@(r0,r14) 		; addr: CE308E0
mov.w @(data_CE3097C,pc),r0 ; r0 set to 0x1A7		; addr: CE308E2
bra l_code_CE30946		; addr: CE308E4
mov.b r13,@(r0,r14) 		; addr: CE308E6

l_code_CE308E8:
mov.w @(data_CE30978,pc),r0 ; r0 set to 0x158		; addr: CE308E8
mov 0x01,r2 ; r2 set to 0x01		; addr: CE308EA
mov 0x04,r3 ; r3 set to 0x04		; addr: CE308EC
mov.b r2,@(r0,r14) 		; addr: CE308EE
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE308F0
mov 0x15,r5 ; r5 set to 0x15		; addr: CE308F2
mov.b r3,@(r0,r14) 		; addr: CE308F4
jsr @r12		; addr: CE308F6
mov r14,r4		; addr: CE308F8
mov.w @(data_CE3097A,pc),r0 ; r0 set to 0x3F4		; addr: CE308FA
mov.l @(ptr_CE3099C_to_data_CE3528C,pc),r3 ; r3 set to 0xCE3528C		; addr: CE308FC
mov.l r3,@(r0,r14) 		; addr: CE308FE
bra data_CE30942		; addr: CE30900
mov 0x01,r2		; addr: CE30902

l_code_CE30904:
mov.w @(data_CE30982,pc),r0 ; r0 set to 0x1FA		; addr: CE30904
mov.w @(data_CE30984,pc),r3 ; r3 set to 0x800		; addr: CE30906
mov.w @(r0,r14),r1		; addr: CE30908
extu.w r1,r1		; addr: CE3090A
tst r3,r1		; addr: CE3090C
bt/s data_CE3092A		; addr: CE3090E
mov 0x16,r5 ; r5 set to 0x16		; addr: CE30910
mov.b @(0x06,r14),r0 		; addr: CE30912
add 0x01,r0 ; r0 set to 0x1FB		; addr: CE30914
mov.b r0,@(0x06,r14) 		; addr: CE30916
mov r13,r0 ; r0 ??? bc r13 is ???		; addr: CE30918
nop 		; addr: CE3091A
mov.b r0,@(0x07,r14) 		; addr: CE3091C
mov 0x13,r2 ; r2 set to 0x13		; addr: CE3091E
mov.w @(data_CE30978,pc),r0 ; r0 set to 0x158		; addr: CE30920
mov.b r4,@(r0,r14) 		; addr: CE30922
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30924
bra data_CE30936		; addr: CE30926
mov.b r2,@(r0,r14) 		; addr: CE30928

data_CE3092A:
#data 0x9025		; addr: CE3092A
#data 0xE105E202		; addr: CE3092C
#data 0x70490E24		; addr: CE30930
#data 0x0E14		; addr: CE30934

data_CE30936:
#data 0x4C0B		; addr: CE30936
#data 0x901E64E3		; addr: CE30938
#data 0xD318E202		; addr: CE3093C
#data 0x0E36		; addr: CE30940

data_CE30942:
#data 0x901B		; addr: CE30942
#data 0x0E24		; addr: CE30944


l_code_CE30946:
mov.w @(data_CE3097E,pc),r0 ; r0 set to 0x1AC		; addr: CE30946
mov 0x08,r5 ; r5 set to 0x08		; addr: CE30948
mov.l @(ptr_CE3098C_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE3094A
mov r14,r4		; addr: CE3094C
mov.w r13,@(r0,r14) 		; addr: CE3094E
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE30950
mov.b r13,@(r0,r14) 		; addr: CE30952
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE30954
mov.l r13,@(r0,r14) 		; addr: CE30956
mov.b @(0x02,r14),r0 		; addr: CE30958
mov.l @r3,r2		; addr: CE3095A
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE3095C
shll r0 ; r0 set to 0x188		; addr: CE3095E
add 0x7C,r2		; addr: CE30960
mov.w @(r0,r2),r1		; addr: CE30962
add 0x01,r1		; addr: CE30964
mov.w r1,@(r0,r2) 		; addr: CE30966
lds.l @r15+,pr 		; addr: CE30968
mov.w @(data_CE30978,pc),r0 ; r0 set to 0x158		; addr: CE3096A
mov.l @(ptr_CE30990_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE3096C
mov.l @r15+,r12		; addr: CE3096E
mov.b @(r0,r14),r6		; addr: CE30970
mov.l @r15+,r13		; addr: CE30972
jmp @r2		; addr: CE30974
mov.l @r15+,r14		; addr: CE30976

data_CE30978:
#data 0x0158		; addr: CE30978

data_CE3097A:
#data 0x03F4		; addr: CE3097A

data_CE3097C:
#data 0x01A7		; addr: CE3097C

data_CE3097E:
#data 0x01AC		; addr: CE3097E

data_CE30980:
#data 0x01E8		; addr: CE30980

data_CE30982:
#data 0x01FA		; addr: CE30982

data_CE30984:
#data 0x0800		; addr: CE30984
#data 0x0000		; addr: CE30986

#align4
ptr_CE30988_to_data_CE35284:
#data data_CE35284		; addr: CE30988

ptr_CE3098C_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE3098C

ptr_CE30990_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE30990

ptr_CE30994_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE30994

ptr_CE30998_to_data_CE35288:
#data data_CE35288		; addr: CE30998

ptr_CE3099C_to_data_CE3528C:
#data data_CE3528C		; addr: CE3099C

ptr_CE309A0_to_data_CE35290:
#data data_CE35290		; addr: CE309A0


l_code_CE309A4:
mov.w @(data_CE30A98,pc),r0 ; r0 set to 0x1E8		; addr: CE309A4
mov.l r14,@-r15		; addr: CE309A6
mov r4,r14		; addr: CE309A8
mov.l r13,@-r15		; addr: CE309AA
mov.l r12,@-r15		; addr: CE309AC
sts.l pr,@-r15		; addr: CE309AE
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE309B0
mov.l @(ptr_CE30AA8_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A		; addr: CE309B2
extu.b r0,r0		; addr: CE309B4
cmp/eq 0x00,r0 		; addr: CE309B6
bt/s l_code_CE309C8		; addr: CE309B8
mov 0x00,r13 ; r13 set to 0x00		; addr: CE309BA
cmp/eq 0x01,r0 		; addr: CE309BC
bt l_code_CE309E4		; addr: CE309BE
cmp/eq 0x02,r0 		; addr: CE309C0
bt data_CE30A00		; addr: CE309C2
bra l_code_CE30A1E		; addr: CE309C4
nop 		; addr: CE309C6

l_code_CE309C8:
mov.w @(data_CE30A9A,pc),r0 ; r0 set to 0x158		; addr: CE309C8
mov 0x09,r3 ; r3 set to 0x09		; addr: CE309CA
mov 0x14,r5 ; r5 set to 0x14		; addr: CE309CC
mov.b r13,@(r0,r14) 		; addr: CE309CE
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE309D0
mov.b r3,@(r0,r14) 		; addr: CE309D2
jsr @r12		; addr: CE309D4
mov r14,r4		; addr: CE309D6
mov.w @(data_CE30A9C,pc),r0 ; r0 set to 0x3F4		; addr: CE309D8
mov.l @(ptr_CE30AAC_to_data_CE35288,pc),r3 ; r3 set to 0xCE35288		; addr: CE309DA
mov.l r3,@(r0,r14) 		; addr: CE309DC
mov.w @(data_CE30A9E,pc),r0 ; r0 set to 0x1A7		; addr: CE309DE
bra l_code_CE30A1E		; addr: CE309E0
mov.b r13,@(r0,r14) 		; addr: CE309E2

l_code_CE309E4:
mov.w @(data_CE30A9A,pc),r0 ; r0 set to 0x158		; addr: CE309E4
mov 0x01,r2 ; r2 set to 0x01		; addr: CE309E6
mov 0x0A,r3 ; r3 set to 0x0A		; addr: CE309E8
mov.b r2,@(r0,r14) 		; addr: CE309EA
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE309EC
mov 0x15,r5 ; r5 set to 0x15		; addr: CE309EE
mov.b r3,@(r0,r14) 		; addr: CE309F0
jsr @r12		; addr: CE309F2
mov r14,r4		; addr: CE309F4
mov.w @(data_CE30A9C,pc),r0 ; r0 set to 0x3F4		; addr: CE309F6
mov.l @(ptr_CE30AB0_to_data_CE3528C,pc),r3 ; r3 set to 0xCE3528C		; addr: CE309F8
mov.l r3,@(r0,r14) 		; addr: CE309FA
bra data_CE30A1A		; addr: CE309FC
mov 0x01,r2		; addr: CE309FE

#align4
data_CE30A00:
#data 0xE102904B		; addr: CE30A00
#data 0x0E14E30B		; addr: CE30A04
#data 0xE5167049		; addr: CE30A08
#data 0x4C0B0E34		; addr: CE30A0C
#data 0x904364E3		; addr: CE30A10
#data 0xD327E202		; addr: CE30A14
#data 0x0E36		; addr: CE30A18

data_CE30A1A:
#data 0x9040		; addr: CE30A1A
#data 0x0E24		; addr: CE30A1C


l_code_CE30A1E:
mov.w @(data_CE30AA0,pc),r0 ; r0 set to 0x1AC		; addr: CE30A1E
mov 0x0A,r5 ; r5 set to 0x0A		; addr: CE30A20
mov.l @(ptr_CE30AB8_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE30A22
mov r14,r4		; addr: CE30A24
mov.w r13,@(r0,r14) 		; addr: CE30A26
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE30A28
mov.b r13,@(r0,r14) 		; addr: CE30A2A
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE30A2C
mov.l r13,@(r0,r14) 		; addr: CE30A2E
mov.b @(0x02,r14),r0 		; addr: CE30A30
mov.l @r3,r2		; addr: CE30A32
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE30A34
shll r0 ; r0 set to 0x188		; addr: CE30A36
add 0x7C,r2		; addr: CE30A38
mov.w @(r0,r2),r1		; addr: CE30A3A
add 0x01,r1		; addr: CE30A3C
mov.w r1,@(r0,r2) 		; addr: CE30A3E
lds.l @r15+,pr 		; addr: CE30A40
mov.w @(data_CE30A9A,pc),r0 ; r0 set to 0x158		; addr: CE30A42
mov.l @(ptr_CE30ABC_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE30A44
mov.l @r15+,r12		; addr: CE30A46
mov.b @(r0,r14),r6		; addr: CE30A48
mov.l @r15+,r13		; addr: CE30A4A
jmp @r2		; addr: CE30A4C
mov.l @r15+,r14		; addr: CE30A4E

f_code_CE30A50:
mov.l r14,@-r15		; addr: CE30A50
sts.l pr,@-r15		; addr: CE30A52
mov.l @(ptr_CE30AC0_to_fn_extern_8C052B4C,pc),r3 ; r3 set to 0x8C052B4C		; addr: CE30A54
jsr @r3		; addr: CE30A56
mov r4,r14		; addr: CE30A58
mov.w @(data_CE30AA2,pc),r0 ; r0 set to 0x1FE		; addr: CE30A5A
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30A5C
extu.b r0,r0		; addr: CE30A5E
cmp/eq 0x01,r0 		; addr: CE30A60
bf l_code_CE30A7E		; addr: CE30A62
mov.w @(data_CE30AA4,pc),r0 ; r0 set to 0x1F9		; addr: CE30A64
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30A66
extu.b r0,r0		; addr: CE30A68
cmp/eq 0x01,r0 		; addr: CE30A6A
bf l_code_CE30A76		; addr: CE30A6C
lds.l @r15+,pr 		; addr: CE30A6E
mov r14,r4		; addr: CE30A70
bra l_code_CE309A4		; addr: CE30A72
mov.l @r15+,r14		; addr: CE30A74

l_code_CE30A76:
lds.l @r15+,pr 		; addr: CE30A76
mov r14,r4		; addr: CE30A78
bra l_code_CE308A8		; addr: CE30A7A
mov.l @r15+,r14		; addr: CE30A7C

l_code_CE30A7E:
mov.w @(data_CE30AA4,pc),r0 ; r0 set to 0x1F9		; addr: CE30A7E
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30A80
extu.b r0,r0		; addr: CE30A82
cmp/eq 0x01,r0 		; addr: CE30A84
bf l_code_CE30A90		; addr: CE30A86
lds.l @r15+,pr 		; addr: CE30A88
mov r14,r4		; addr: CE30A8A
bra l_code_CE307BE		; addr: CE30A8C
mov.l @r15+,r14		; addr: CE30A8E

l_code_CE30A90:
lds.l @r15+,pr 		; addr: CE30A90
mov r14,r4		; addr: CE30A92
bra l_code_CE306FC		; addr: CE30A94
mov.l @r15+,r14		; addr: CE30A96

data_CE30A98:
#data 0x01E8		; addr: CE30A98

data_CE30A9A:
#data 0x0158		; addr: CE30A9A

data_CE30A9C:
#data 0x03F4		; addr: CE30A9C

data_CE30A9E:
#data 0x01A7		; addr: CE30A9E

data_CE30AA0:
#data 0x01AC		; addr: CE30AA0

data_CE30AA2:
#data 0x01FE		; addr: CE30AA2

data_CE30AA4:
#data 0x01F9		; addr: CE30AA4
#data 0x0000		; addr: CE30AA6

#align4
ptr_CE30AA8_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE30AA8

ptr_CE30AAC_to_data_CE35288:
#data data_CE35288		; addr: CE30AAC

ptr_CE30AB0_to_data_CE3528C:
#data data_CE3528C		; addr: CE30AB0

ptr_CE30AB4_to_data_CE35290:
#data data_CE35290		; addr: CE30AB4

ptr_CE30AB8_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE30AB8

ptr_CE30ABC_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE30ABC

ptr_CE30AC0_to_fn_extern_8C052B4C:
#data fn_extern_8C052B4C		; addr: CE30AC0

data_CE30AC4:
#data 0x2FE69075		; addr: CE30AC4
#data 0x2FD66E43		; addr: CE30AC8
#data 0x4F222FC6		; addr: CE30ACC
#data 0xDC3B00EC		; addr: CE30AD0
#data 0x8800600C		; addr: CE30AD4
#data 0xED008D06		; addr: CE30AD8
#data 0x89198801		; addr: CE30ADC
#data 0x892D8802		; addr: CE30AE0
#data 0x0009A043		; addr: CE30AE4

#align4
data_CE30AE8:
#data 0xE30C9064		; addr: CE30AE8
#data 0x0ED4E514		; addr: CE30AEC
#data 0x0E347049		; addr: CE30AF0
#data 0x64E34C0B		; addr: CE30AF4
#data 0x03EC905D		; addr: CE30AF8
#data 0x8B032338		; addr: CE30AFC
#data 0xD330905A		; addr: CE30B00
#data 0x0E36A003		; addr: CE30B04

#align4
data_CE30B08:
#data 0xD12F9056		; addr: CE30B08
#data 0x0E16		; addr: CE30B0C

data_CE30B0E:
#data 0x9054		; addr: CE30B0E
#data 0x0ED4A02D		; addr: CE30B10

#align4
data_CE30B14:
#data 0xE201904E		; addr: CE30B14
#data 0x0E24E30D		; addr: CE30B18
#data 0xE5157049		; addr: CE30B1C
#data 0x4C0B0E34		; addr: CE30B20
#data 0x904664E3		; addr: CE30B24
#data 0x233803EC		; addr: CE30B28
#data 0x90438B03		; addr: CE30B2C
#data 0xA003D326		; addr: CE30B30
#data 0x0E36		; addr: CE30B34

data_CE30B36:
#data 0x903F		; addr: CE30B36
#data 0x0E16D125		; addr: CE30B38

#align4
data_CE30B3C:
#data 0xE301A015		; addr: CE30B3C

#align4
data_CE30B40:
#data 0xE1029038		; addr: CE30B40
#data 0x0E14E30E		; addr: CE30B44
#data 0xE5167049		; addr: CE30B48
#data 0x4C0B0E34		; addr: CE30B4C
#data 0x903064E3		; addr: CE30B50
#data 0x233803EC		; addr: CE30B54
#data 0x902D8B03		; addr: CE30B58
#data 0xA003D31D		; addr: CE30B5C
#data 0x0E36		; addr: CE30B60

data_CE30B62:
#data 0x9029		; addr: CE30B62
#data 0x0E16D11C		; addr: CE30B64

data_CE30B68:
#data 0xE302		; addr: CE30B68

data_CE30B6A:
#data 0x9026		; addr: CE30B6A
#data 0x0E34		; addr: CE30B6C

data_CE30B6E:
#data 0x9025		; addr: CE30B6E
#data 0xD31AE50B		; addr: CE30B70
#data 0x70F20ED5		; addr: CE30B74
#data 0x70260ED4		; addr: CE30B78
#data 0x84E20ED6		; addr: CE30B7C
#data 0x600C6232		; addr: CE30B80
#data 0x727C4000		; addr: CE30B84
#data 0x7101012D		; addr: CE30B88
#data 0x90110215		; addr: CE30B8C
#data 0x06ECD213		; addr: CE30B90
#data 0x64E3420B		; addr: CE30B94
#data 0x00EC9011		; addr: CE30B98
#data 0x8903C80F		; addr: CE30B9C
#data 0x02EC900D		; addr: CE30BA0
#data 0x0E2472FF		; addr: CE30BA4

#align4
data_CE30BA8:
#data 0x6CF64F26		; addr: CE30BA8
#data 0x000B6DF6		; addr: CE30BAC
#data 0x01E86EF6		; addr: CE30BB0
#data 0x01FC0158		; addr: CE30BB4
#data 0x01A703F4		; addr: CE30BB8
#data 0x01D601AC		; addr: CE30BBC
#data fn_extern_8C04223A		; addr: CE30BC0

#align4
ptr_CE30BC4_to_data_CE35294:
#data data_CE35294		; addr: CE30BC4

ptr_CE30BC8_to_data_CE352AC:
#data data_CE352AC		; addr: CE30BC8

ptr_CE30BCC_to_data_CE35298:
#data data_CE35298		; addr: CE30BCC

ptr_CE30BD0_to_data_CE352B0:
#data data_CE352B0		; addr: CE30BD0

ptr_CE30BD4_to_data_CE3529C:
#data data_CE3529C		; addr: CE30BD4

ptr_CE30BD8_to_data_CE352B4:
#data data_CE352B4		; addr: CE30BD8
#data extern_8C2896B0		; addr: CE30BDC
#data fn_extern_8C034E8C		; addr: CE30BE0

#align4
data_CE30BE4:
#data 0x6E432FE6		; addr: CE30BE4
#data 0x2FD6906C		; addr: CE30BE8
#data 0x2FB62FC6		; addr: CE30BEC
#data 0x00EC4F22		; addr: CE30BF0
#data 0x600CDC37		; addr: CE30BF4
#data extern_8D068800		; addr: CE30BF8
#data 0x8801ED00		; addr: CE30BFC
#data 0x88028919		; addr: CE30C00
#data 0xA076892F		; addr: CE30C04
#data 0x0009		; addr: CE30C08

data_CE30C0A:
#data 0x905C		; addr: CE30C0A
#data 0xE514E30F		; addr: CE30C0C
#data 0x70490ED4		; addr: CE30C10
#data 0x4C0B0E34		; addr: CE30C14
#data 0x905564E3		; addr: CE30C18
#data 0x233803EC		; addr: CE30C1C
#data 0x90528B03		; addr: CE30C20
#data 0xA003D32C		; addr: CE30C24
#data 0x0E36		; addr: CE30C28

data_CE30C2A:
#data 0x904E		; addr: CE30C2A
#data 0x0E16D12B		; addr: CE30C2C

#align4
data_CE30C30:
#data 0xA060904C		; addr: CE30C30
#data 0x0ED4		; addr: CE30C34

data_CE30C36:
#data 0x9046		; addr: CE30C36
#data 0xE310E201		; addr: CE30C38
#data 0x70490E24		; addr: CE30C3C
#data 0x0E34E515		; addr: CE30C40
#data 0x64E34C0B		; addr: CE30C44
#data 0x03EC903E		; addr: CE30C48
#data 0x8B032338		; addr: CE30C4C
#data 0xD323903B		; addr: CE30C50
#data 0x0E36A003		; addr: CE30C54

#align4
data_CE30C58:
#data 0xD1229037		; addr: CE30C58
#data 0x0E16		; addr: CE30C5C

data_CE30C5E:
#data 0x9035		; addr: CE30C5E
#data 0xA048E301		; addr: CE30C60
#data 0x0E34		; addr: CE30C64

data_CE30C66:
#data 0x9032		; addr: CE30C66
#data 0x03ED9232		; addr: CE30C68
#data 0x2328633D		; addr: CE30C6C
#data 0xEB028D18		; addr: CE30C70
#data 0x000960B3		; addr: CE30C74
#data 0x60D380E6		; addr: CE30C78
#data 0x80E70009		; addr: CE30C7C
#data 0x9021E305		; addr: CE30C80
#data 0xF48DE112		; addr: CE30C84
#data 0xE05C0ED4		; addr: CE30C88
#data 0xE060FE47		; addr: CE30C8C
#data 0xE068FE47		; addr: CE30C90
#data 0xE06CFE47		; addr: CE30C94
#data 0x9014FE47		; addr: CE30C98
#data 0x70490E34		; addr: CE30C9C
#data 0x0E14A005		; addr: CE30CA0

#align4
data_CE30CA4:
#data 0xE311900F		; addr: CE30CA4
#data 0x70490EB4		; addr: CE30CA8
#data 0x0E34		; addr: CE30CAC

data_CE30CAE:
#data 0xE516		; addr: CE30CAE
#data 0x64E34C0B		; addr: CE30CB0
#data 0x03EC9008		; addr: CE30CB4
#data 0x8B172338		; addr: CE30CB8
#data 0xD30A9005		; addr: CE30CBC
#data 0x0E36A017		; addr: CE30CC0
#data 0x015801E8		; addr: CE30CC4
#data 0x03F401FC		; addr: CE30CC8
#data 0x01FA01A7		; addr: CE30CCC
#data 0x00001000		; addr: CE30CD0
#data fn_extern_8C04223A		; addr: CE30CD4

#align4
ptr_CE30CD8_to_data_CE352A0:
#data data_CE352A0		; addr: CE30CD8

ptr_CE30CDC_to_data_CE352B8:
#data data_CE352B8		; addr: CE30CDC

ptr_CE30CE0_to_data_CE352A4:
#data data_CE352A4		; addr: CE30CE0

ptr_CE30CE4_to_data_CE352BC:
#data data_CE352BC		; addr: CE30CE4

ptr_CE30CE8_to_data_CE352A8:
#data data_CE352A8		; addr: CE30CE8

data_CE30CEC:
#data 0xD1419079		; addr: CE30CEC
#data 0x0E16		; addr: CE30CF0

data_CE30CF2:
#data 0x9077		; addr: CE30CF2
#data 0x0EB4		; addr: CE30CF4

data_CE30CF6:
#data 0x9076		; addr: CE30CF6
#data 0xD33FE50C		; addr: CE30CF8
#data 0x70F20ED5		; addr: CE30CFC
#data 0x70260ED4		; addr: CE30D00
#data 0x84E20ED6		; addr: CE30D04
#data 0x600C6232		; addr: CE30D08
#data 0x727C4000		; addr: CE30D0C
#data 0x7101012D		; addr: CE30D10
#data 0x90670215		; addr: CE30D14
#data 0x06ECD238		; addr: CE30D18
#data 0x64E3420B		; addr: CE30D1C
#data 0x00EC9063		; addr: CE30D20
#data 0x8903C8F0		; addr: CE30D24
#data 0x02EC905F		; addr: CE30D28
#data 0x0E2472F0		; addr: CE30D2C

#align4
data_CE30D30:
#data 0x6BF64F26		; addr: CE30D30
#data 0x6DF66CF6		; addr: CE30D34
#data 0x6EF6000B		; addr: CE30D38
;-------------------------------------------------------------------------------

#align4
data_CE30D3C:
#data 0xE0199556		; addr: CE30D3C
#data 0x035C354C		; addr: CE30D40
#data 0x890E2338		; addr: CE30D44
#data 0xF38DE300		; addr: CE30D48
#data 0xE0600534		; addr: CE30D4C
#data 0xF235F246		; addr: CE30D50
#data 0xF48D8F01		; addr: CE30D54
#data 0xF447		; addr: CE30D58

data_CE30D5A:
#data 0xE068		; addr: CE30D5A
#data 0xC728F447		; addr: CE30D5C
#data 0xE06CF308		; addr: CE30D60
#data 0xF437		; addr: CE30D64

data_CE30D66:
#data 0x9042		; addr: CE30D66
#data 0x600C004C		; addr: CE30D68
#data 0x8B018801		; addr: CE30D6C
#data 0x0009AF38		; addr: CE30D70

#align4
data_CE30D74:
#data 0x0009AEA6		; addr: CE30D74

#align4
data_CE30D78:
#data 0xE0199538		; addr: CE30D78
#data 0x035C354C		; addr: CE30D7C
#data 0x890E2338		; addr: CE30D80
#data 0xF38DE300		; addr: CE30D84
#data 0xE0600534		; addr: CE30D88
#data 0xF235F246		; addr: CE30D8C
#data 0xF48D8F01		; addr: CE30D90
#data 0xF447		; addr: CE30D94

data_CE30D96:
#data 0xE068		; addr: CE30D96
#data 0xC719F447		; addr: CE30D98
#data 0xE06CF308		; addr: CE30D9C
#data 0xF437		; addr: CE30DA0

data_CE30DA2:
#data 0x9024		; addr: CE30DA2
#data 0x2338034C		; addr: CE30DA4
#data 0x901E8B03		; addr: CE30DA8
#data 0xC80F004C		; addr: CE30DAC
#data 0x8B07		; addr: CE30DB0

data_CE30DB2:
#data 0x901C		; addr: CE30DB2
#data 0x2228024C		; addr: CE30DB4
#data 0x90168905		; addr: CE30DB8
#data 0xC8F0004C		; addr: CE30DBC
#data 0x8901		; addr: CE30DC0

data_CE30DC2:
#data 0xAFBB		; addr: CE30DC2
#data 0x0009		; addr: CE30DC4

data_CE30DC6:
#data 0x000B		; addr: CE30DC6
#data 0x0009		; addr: CE30DC8
;-------------------------------------------------------------------------------

f_code_CE30DCA:
bra f_code_CE30A50		; addr: CE30DCA
nop 		; addr: CE30DCC

f_code_CE30DCE:
mov.w @(data_CE30DF0,pc),r0 ; r0 set to 0x1FF		; addr: CE30DCE
mov r4,r3		; addr: CE30DD0
mov.l r4,@-r15		; addr: CE30DD2
mov.b @(r0,r3),r2		; addr: CE30DD4
mov.l @(ptr_CE30E04_to_ptr_CE353C8_to_f_code_CE30A50,pc),r0 ; r0 set to 0xCE353C8		; addr: CE30DD6
extu.b r2,r2		; addr: CE30DD8
shll2 r2		; addr: CE30DDA
mov.l @(r0,r2),r3		; addr: CE30DDC
jmp @r3		; addr: CE30DDE
add 0x04,r15		; addr: CE30DE0
#data 0x03F4		; addr: CE30DE2
#data 0x01AC01A7		; addr: CE30DE4
#data 0x01D60158		; addr: CE30DE8
#data 0x01FE02A4		; addr: CE30DEC

data_CE30DF0:
#data 0x01FF		; addr: CE30DF0
#data 0x0000		; addr: CE30DF2

#align4
ptr_CE30DF4_to_data_CE352C0:
#data data_CE352C0		; addr: CE30DF4
#data extern_8C2896B0		; addr: CE30DF8
#data fn_extern_8C034E8C		; addr: CE30DFC
#data 0xBF4DB6DB		; addr: CE30E00

#align4
ptr_CE30E04_to_ptr_CE353C8_to_f_code_CE30A50:
#data ptr_CE353C8_to_f_code_CE30A50		; addr: CE30E04


l_code_CE30E08:
sts.l pr,@-r15		; addr: CE30E08
add 0xFC,r15		; addr: CE30E0A
mov.l @(ptr_CE30F08_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE30E0C
jsr @r3		; addr: CE30E0E
mov.l r4,@r15		; addr: CE30E10
exts.b r0,r0		; addr: CE30E12
cmp/pz r0		; addr: CE30E14
bt l_code_CE30E22		; addr: CE30E16
mov.l @r15,r4		; addr: CE30E18
add 0x04,r15		; addr: CE30E1A
mov.l @(ptr_CE30F0C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE30E1C
jmp @r3		; addr: CE30E1E
lds.l @r15+,pr 		; addr: CE30E20

l_code_CE30E22:
add 0x04,r15		; addr: CE30E22
lds.l @r15+,pr 		; addr: CE30E24
rts 		; addr: CE30E26
nop 		; addr: CE30E28
;-------------------------------------------------------------------------------

l_code_CE30E2A:
mov.w @(data_CE30EFE,pc),r0 ; r0 set to 0x1E8		; addr: CE30E2A
mov.l r14,@-r15		; addr: CE30E2C
mov r4,r14		; addr: CE30E2E
sts.l pr,@-r15		; addr: CE30E30
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30E32
extu.b r0,r0		; addr: CE30E34
cmp/eq 0x00,r0 		; addr: CE30E36
bt l_code_CE30E46		; addr: CE30E38
cmp/eq 0x01,r0 		; addr: CE30E3A
bt data_CE30E84		; addr: CE30E3C
cmp/eq 0x02,r0 		; addr: CE30E3E
bt data_CE30E84		; addr: CE30E40
bra l_code_CE30E9A		; addr: CE30E42
nop 		; addr: CE30E44

l_code_CE30E46:
mov.l @(ptr_CE30F08_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE30E46
jsr @r3		; addr: CE30E48
mov r14,r4		; addr: CE30E4A
exts.b r0,r0		; addr: CE30E4C
cmp/pz r0		; addr: CE30E4E
bf l_code_CE30E90		; addr: CE30E50
mov.w @(data_CE30F00,pc),r0 ; r0 set to 0x141		; addr: CE30E52
mov.b @(r0,r14),r2		; addr: CE30E54
tst r2,r2		; addr: CE30E56
bt l_code_CE30E9A		; addr: CE30E58
mov 0x00,r4 ; r4 set to 0x00		; addr: CE30E5A
mov.b r4,@(r0,r14) 		; addr: CE30E5C
add 0x60,r0 ; r0 set to 0x1A1		; addr: CE30E5E
mov 0x1B,r3 ; r3 set to 0x1B		; addr: CE30E60
mov.b r3,@(r0,r14) 		; addr: CE30E62
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE30E64
mov.w r4,@(r0,r14) 		; addr: CE30E66
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE30E68
mov.b r4,@(r0,r14) 		; addr: CE30E6A
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE30E6C
mov.l @(ptr_CE30F10_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE30E6E
mov.l r4,@(r0,r14) 		; addr: CE30E70
mov.b @(0x02,r14),r0 		; addr: CE30E72
mov.l @r3,r2		; addr: CE30E74
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE30E76
shll r0 ; r0 set to 0x188		; addr: CE30E78
add 0x7C,r2		; addr: CE30E7A
mov.w @(r0,r2),r1		; addr: CE30E7C
add 0x01,r1		; addr: CE30E7E
bra l_code_CE30E9A		; addr: CE30E80
mov.w r1,@(r0,r2) 		; addr: CE30E82

#align4
data_CE30E84:
#data 0x420BD220		; addr: CE30E84
#data 0x600E64E3		; addr: CE30E88
#data 0x89044011		; addr: CE30E8C


l_code_CE30E90:
lds.l @r15+,pr 		; addr: CE30E90
mov.l @(ptr_CE30F0C_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE30E92
mov r14,r4		; addr: CE30E94
jmp @r2		; addr: CE30E96
mov.l @r15+,r14		; addr: CE30E98

l_code_CE30E9A:
lds.l @r15+,pr 		; addr: CE30E9A
rts 		; addr: CE30E9C
mov.l @r15+,r14		; addr: CE30E9E
;-------------------------------------------------------------------------------

#align4
data_CE30EA0:
#data 0x4F222FE6		; addr: CE30EA0
#data 0x430BD318		; addr: CE30EA4
#data 0x600E6E43		; addr: CE30EA8
#data 0x89234011		; addr: CE30EAC
#data 0xE30284E7		; addr: CE30EB0
#data 0x80E77001		; addr: CE30EB4
#data 0x0E349023		; addr: CE30EB8
#data 0xF308C715		; addr: CE30EBC
#data 0xFE37E05C		; addr: CE30EC0
#data 0xF38DE068		; addr: CE30EC4
#data 0xC713FE37		; addr: CE30EC8
#data 0xE060F308		; addr: CE30ECC
#data 0xC712FE37		; addr: CE30ED0
#data 0xE06CF308		; addr: CE30ED4
#data 0x9013FE37		; addr: CE30ED8
#data 0x233803ED		; addr: CE30EDC
#data 0xE6048F04		; addr: CE30EE0
#data 0xF3E6E05C		; addr: CE30EE4
#data 0xFE37F34D		; addr: CE30EE8

#align4
data_CE30EEC:
#data 0xD30C4F26		; addr: CE30EEC
#data 0x64E3E508		; addr: CE30EF0
#data 0x6EF6432B		; addr: CE30EF4

#align4
data_CE30EF8:
#data 0x000B4F26		; addr: CE30EF8
#data 0x6EF6		; addr: CE30EFC
;-------------------------------------------------------------------------------

data_CE30EFE:
#data 0x01E8		; addr: CE30EFE

data_CE30F00:
#data 0x0141		; addr: CE30F00
#data 0x01F9		; addr: CE30F02
#data 0x00000130		; addr: CE30F04

#align4
ptr_CE30F08_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE30F08

ptr_CE30F0C_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE30F0C

ptr_CE30F10_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE30F10
#data 0x40555555		; addr: CE30F14
#data 0x40892492		; addr: CE30F18
#data 0xBEAB6DB6		; addr: CE30F1C
#data fn_extern_8C034E8C		; addr: CE30F20

#align4
data_CE30F24:
#data 0x6E432FE6		; addr: CE30F24
#data 0x4F222FD6		; addr: CE30F28
#data 0x430BD343		; addr: CE30F2C
#data 0x600EED00		; addr: CE30F30
#data 0x891C4011		; addr: CE30F34
#data 0xD34184E7		; addr: CE30F38
#data 0x80E77001		; addr: CE30F3C
#data 0x64E3430B		; addr: CE30F40
#data 0x64E39075		; addr: CE30F44
#data 0xE605F48D		; addr: CE30F48
#data 0xE05C0ED4		; addr: CE30F4C
#data 0xE060FE47		; addr: CE30F50
#data 0xE068FE47		; addr: CE30F54
#data 0xE06CFE47		; addr: CE30F58
#data 0xE508FE47		; addr: CE30F5C
#data 0xD3389068		; addr: CE30F60
#data 0xE038F3E6		; addr: CE30F64
#data 0x4F26FE37		; addr: CE30F68
#data 0x432B6DF6		; addr: CE30F6C
#data 0x6EF6		; addr: CE30F70

data_CE30F72:
#data 0x9060		; addr: CE30F72
#data 0x222802EC		; addr: CE30F74
#data 0x03EC8913		; addr: CE30F78
#data 0x0E347060		; addr: CE30F7C
#data 0x0ED5700B		; addr: CE30F80
#data 0x0ED470F2		; addr: CE30F84
#data 0xD32F7026		; addr: CE30F88
#data 0x84E20ED6		; addr: CE30F8C
#data 0x600C6232		; addr: CE30F90
#data 0x727C4000		; addr: CE30F94
#data 0x7101012D		; addr: CE30F98
#data 0x904A0215		; addr: CE30F9C
#data 0x0ED4		; addr: CE30FA0

data_CE30FA2:
#data 0x4F26		; addr: CE30FA2
#data 0x000B6DF6		; addr: CE30FA4
#data 0x6EF6		; addr: CE30FA8
;-------------------------------------------------------------------------------

data_CE30FAA:
#data 0x4F22		; addr: CE30FAA
#data 0xD3237FFC		; addr: CE30FAC
#data 0x2F42430B		; addr: CE30FB0
#data 0x4011600E		; addr: CE30FB4
#data 0x64F28904		; addr: CE30FB8
#data 0xD3237F04		; addr: CE30FBC
#data 0x4F26432B		; addr: CE30FC0

#align4
data_CE30FC4:
#data 0x4F267F04		; addr: CE30FC4
#data 0x0009000B		; addr: CE30FC8
;-------------------------------------------------------------------------------

#align4
data_CE30FCC:
#data 0x2FE69034		; addr: CE30FCC
#data 0x4F226E43		; addr: CE30FD0
#data 0x600C00EC		; addr: CE30FD4
#data 0x89068800		; addr: CE30FD8
#data 0x89048801		; addr: CE30FDC
#data 0x8B238802		; addr: CE30FE0
#data 0x200884E6		; addr: CE30FE4
#data 0x8B0A		; addr: CE30FE8

data_CE30FEA:
#data 0xD314		; addr: CE30FEA
#data 0x64E3430B		; addr: CE30FEC
#data 0x4011600E		; addr: CE30FF0
#data 0x4F26891A		; addr: CE30FF4
#data 0x64E3D314		; addr: CE30FF8
#data 0x6EF6432B		; addr: CE30FFC

#align4
data_CE31000:
#data 0x600C84E7		; addr: CE31000
#data 0x89058800		; addr: CE31004
#data 0x89078801		; addr: CE31008
#data 0x89098802		; addr: CE3100C
#data 0x0009A00C		; addr: CE31010

#align4
data_CE31014:
#data 0x64E34F26		; addr: CE31014
#data 0x6EF6AF42		; addr: CE31018

#align4
data_CE3101C:
#data 0x64E34F26		; addr: CE3101C
#data 0x6EF6AF80		; addr: CE31020

#align4
data_CE31024:
#data 0x64E34F26		; addr: CE31024
#data 0x6EF6AFBF		; addr: CE31028

#align4
data_CE3102C:
#data 0x000B4F26		; addr: CE3102C
#data 0x01F96EF6		; addr: CE31030
#data 0x0141041C		; addr: CE31034
#data 0x000001E8		; addr: CE31038
#data fn_extern_8C034DEE		; addr: CE3103C
#data fn_extern_8C0511B4		; addr: CE31040
#data fn_extern_8C034E8C		; addr: CE31044
#data extern_8C2896B0		; addr: CE31048
#data fn_extern_8C051648		; addr: CE3104C


l_code_CE31050:
sts.l pr,@-r15		; addr: CE31050
add 0xFC,r15		; addr: CE31052
mov.l @(ptr_CE31158_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31054
jsr @r3		; addr: CE31056
mov.l r4,@r15		; addr: CE31058
exts.b r0,r0		; addr: CE3105A
cmp/pz r0		; addr: CE3105C
bt l_code_CE3106A		; addr: CE3105E
mov.l @r15,r4		; addr: CE31060
add 0x04,r15		; addr: CE31062
mov.l @(ptr_CE3115C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE31064
jmp @r3		; addr: CE31066
lds.l @r15+,pr 		; addr: CE31068

l_code_CE3106A:
add 0x04,r15		; addr: CE3106A
lds.l @r15+,pr 		; addr: CE3106C
rts 		; addr: CE3106E
nop 		; addr: CE31070
;-------------------------------------------------------------------------------

f_code_CE31072:
mov.l r14,@-r15		; addr: CE31072
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE31074
mov r4,r14		; addr: CE31076
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31078
mov 0x34,r0 ; r0 set to 0x34		; addr: CE3107A
mov.l @(ptr_CE31160_to_extern_8C052C84,pc),r3 ; r3 set to 0x8C052C84		; addr: CE3107C
sts.l pr,@-r15		; addr: CE3107E
fmov.s @(r0,r14),fr2		; addr: CE31080
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE31082
mov 0x68,r1 ; r1 set to 0x68		; addr: CE31084
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31086
fadd fr3,fr2		; addr: CE31088
fmov.s fr2,@(r0,r14) 		; addr: CE3108A
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3108C
fmov.s @r1,fr3		; addr: CE3108E
mov 0x60,r1 ; r1 set to 0x60		; addr: CE31090
fmov.s @(r0,r14),fr2		; addr: CE31092
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31094
fadd fr3,fr2		; addr: CE31096
fmov.s fr2,@(r0,r14) 		; addr: CE31098
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3109A
fmov.s @(r0,r14),fr2		; addr: CE3109C
fmov.s @r1,fr3		; addr: CE3109E
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE310A0
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE310A2
fadd fr3,fr2		; addr: CE310A4
fmov.s fr2,@(r0,r14) 		; addr: CE310A6
mov 0x60,r0 ; r0 set to 0x60		; addr: CE310A8
fmov.s @(r0,r14),fr2		; addr: CE310AA
fmov.s @r1,fr3		; addr: CE310AC
fadd fr3,fr2		; addr: CE310AE
fmov.s fr2,@(r0,r14) 		; addr: CE310B0
jsr @r3		; addr: CE310B2
mov r14,r4		; addr: CE310B4
mov.w @(data_CE31152,pc),r0 ; r0 set to 0x1FE		; addr: CE310B6
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE310B8
extu.b r0,r0		; addr: CE310BA
cmp/eq 0x01,r0 		; addr: CE310BC
bf l_code_CE310DA		; addr: CE310BE
mov.w @(data_CE31154,pc),r0 ; r0 set to 0x1F9		; addr: CE310C0
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE310C2
extu.b r0,r0		; addr: CE310C4
cmp/eq 0x01,r0 		; addr: CE310C6
bf l_code_CE310D2		; addr: CE310C8
lds.l @r15+,pr 		; addr: CE310CA
mov r14,r4		; addr: CE310CC
bra l_code_CE31050		; addr: CE310CE
mov.l @r15+,r14		; addr: CE310D0

l_code_CE310D2:
lds.l @r15+,pr 		; addr: CE310D2
mov r14,r4		; addr: CE310D4
bra data_CE30FCC		; addr: CE310D6
mov.l @r15+,r14		; addr: CE310D8

l_code_CE310DA:
mov.w @(data_CE31154,pc),r0 ; r0 set to 0x1F9		; addr: CE310DA
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE310DC
extu.b r0,r0		; addr: CE310DE
cmp/eq 0x01,r0 		; addr: CE310E0
bf l_code_CE310EC		; addr: CE310E2
lds.l @r15+,pr 		; addr: CE310E4
mov r14,r4		; addr: CE310E6
bra l_code_CE30E2A		; addr: CE310E8
mov.l @r15+,r14		; addr: CE310EA

l_code_CE310EC:
lds.l @r15+,pr 		; addr: CE310EC
mov r14,r4		; addr: CE310EE
bra l_code_CE30E08		; addr: CE310F0
mov.l @r15+,r14		; addr: CE310F2

#align4
data_CE310F4:
#data 0x4F222FE6		; addr: CE310F4
#data 0x430BD317		; addr: CE310F8
#data 0x600E6E43		; addr: CE310FC
#data 0x89024011		; addr: CE31100
#data 0x430BD317		; addr: CE31104
#data 0x64E3		; addr: CE31108

data_CE3110A:
#data 0xD217		; addr: CE3110A
#data 0x64E3420B		; addr: CE3110C
#data 0x2008600C		; addr: CE31110
#data 0x4F268904		; addr: CE31114
#data 0x64E3D214		; addr: CE31118
#data 0x6EF6422B		; addr: CE3111C

#align4
data_CE31120:
#data 0x000B4F26		; addr: CE31120
#data 0x6EF6		; addr: CE31124
;-------------------------------------------------------------------------------

data_CE31126:
#data 0x8447		; addr: CE31126
#data 0x8B0F2008		; addr: CE31128
#data 0xF38D8447		; addr: CE3112C
#data 0x80477001		; addr: CE31130
#data 0xF437E068		; addr: CE31134
#data 0xF39DE060		; addr: CE31138
#data 0xF246F330		; addr: CE3113C
#data 0xF427F233		; addr: CE31140
#data 0xF208C70A		; addr: CE31144
#data 0xF427E06C		; addr: CE31148

#align4
data_CE3114C:
#data 0x432BD302		; addr: CE3114C
#data 0x0009		; addr: CE31150

data_CE31152:
#data 0x01FE		; addr: CE31152

data_CE31154:
#data 0x01F9		; addr: CE31154
#data 0x0000		; addr: CE31156

#align4
ptr_CE31158_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31158

ptr_CE3115C_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE3115C

ptr_CE31160_to_extern_8C052C84:
#data extern_8C052C84		; addr: CE31160
#data fn_extern_8C05176E		; addr: CE31164
#data fn_extern_8C052CE2		; addr: CE31168
#data fn_extern_8C052DAC		; addr: CE3116C
#data 0xBECDB6DB		; addr: CE31170


l_code_CE31174:
mov.l r14,@-r15		; addr: CE31174
mov r4,r14		; addr: CE31176
mov.l r13,@-r15		; addr: CE31178
sts.l pr,@-r15		; addr: CE3117A
mov.b @(0x07,r14),r0 		; addr: CE3117C
mov.l @(ptr_CE31288_to_fn_extern_8C034DEE,pc),r13 ; r13 set to 0x8C034DEE		; addr: CE3117E
extu.b r0,r0		; addr: CE31180
cmp/eq 0x00,r0 		; addr: CE31182
bt l_code_CE31192		; addr: CE31184
cmp/eq 0x01,r0 		; addr: CE31186
bt l_code_CE311C8		; addr: CE31188
cmp/eq 0x02,r0 		; addr: CE3118A
bt l_code_CE3125A		; addr: CE3118C
bra l_code_CE31270		; addr: CE3118E
nop 		; addr: CE31190

l_code_CE31192:
jsr @r13		; addr: CE31192
mov r14,r4		; addr: CE31194
mov.w @(data_CE31278,pc),r0 ; r0 set to 0x141		; addr: CE31196
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE31198
tst 0x01,r0 		; addr: CE3119A
bt l_code_CE31270		; addr: CE3119C
mov.w @(data_CE31278,pc),r0 ; r0 set to 0x141		; addr: CE3119E
mov.b @(r0,r14),r2		; addr: CE311A0
mov r0,r3 ; r3 set to 0x141		; addr: CE311A2
add 0xBD,r3 ; r3 set to 0xFE		; addr: CE311A4
and r3,r2		; addr: CE311A6
mov.b r2,@(r0,r14) 		; addr: CE311A8
mov.b @(0x07,r14),r0 		; addr: CE311AA
add 0x01,r0 ; r0 set to 0x142		; addr: CE311AC
mov.b r0,@(0x07,r14) 		; addr: CE311AE
mov.w @(data_CE3127A,pc),r0 ; r0 set to 0x1FC		; addr: CE311B0
mov.b @(r0,r14),r2		; addr: CE311B2
tst r2,r2		; addr: CE311B4
bf l_code_CE311BE		; addr: CE311B6
mova @(data_CE3128C,pc),r0  ; r0 set to 0xCE3128C		; addr: CE311B8
bra l_code_CE311C2		; addr: CE311BA
fmov.s @r0,fr3		; addr: CE311BC

l_code_CE311BE:
mova @(data_CE31290,pc),r0  ; r0 init to 0xCE31290		; addr: CE311BE
fmov.s @r0,fr3		; addr: CE311C0

l_code_CE311C2:
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60		; addr: CE311C2
bra l_code_CE31270		; addr: CE311C4
fmov.s fr3,@(r0,r14) 		; addr: CE311C6

l_code_CE311C8:
jsr @r13		; addr: CE311C8
mov r14,r4		; addr: CE311CA
mov.w @(data_CE3127C,pc),r0 ; r0 set to 0x19E		; addr: CE311CC
mov.b @(r0,r14),r2		; addr: CE311CE
tst r2,r2		; addr: CE311D0
bf/s data_CE3121C		; addr: CE311D2
fldi0 fr4		; addr: CE311D4
mov 0x38,r0 ; r0 set to 0x38		; addr: CE311D6
fmov.s @(r0,r14),fr3		; addr: CE311D8
mov.w @(data_CE3127E,pc),r0 ; r0 set to 0x41C		; addr: CE311DA
fmov.s @(r0,r14),fr2		; addr: CE311DC
fcmp/gt fr3,fr2		; addr: CE311DE
bf l_code_CE31270		; addr: CE311E0
mov.b @(0x07,r14),r0 		; addr: CE311E2
mov 0x00,r3 ; r3 set to 0x00		; addr: CE311E4
add 0x01,r0 ; r0 set to 0x41D		; addr: CE311E6
mov.b r0,@(0x07,r14) 		; addr: CE311E8
mov.w @(data_CE3127E,pc),r0 ; r0 set to 0x41C		; addr: CE311EA
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE311EC
mov 0x38,r0 ; r0 set to 0x38		; addr: CE311EE
fmov.s fr3,@(r0,r14) 		; addr: CE311F0
mov.w @(data_CE31280,pc),r0 ; r0 set to 0x1F9		; addr: CE311F2
mov.b r3,@(r0,r14) 		; addr: CE311F4
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE311F6
fmov.s fr4,@(r0,r14) 		; addr: CE311F8
mov 0x60,r0 ; r0 set to 0x60		; addr: CE311FA
fmov.s fr4,@(r0,r14) 		; addr: CE311FC
mov 0x68,r0 ; r0 set to 0x68		; addr: CE311FE
fmov.s fr4,@(r0,r14) 		; addr: CE31200
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE31202
mov.l @(ptr_CE31294_to_fn_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4		; addr: CE31204
fmov.s fr4,@(r0,r14) 		; addr: CE31206
jsr @r3		; addr: CE31208
mov r14,r4		; addr: CE3120A
lds.l @r15+,pr 		; addr: CE3120C
mov.l @(ptr_CE31298_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE3120E
mov 0x03,r6 ; r6 set to 0x03		; addr: CE31210
mov 0x01,r5 ; r5 set to 0x01		; addr: CE31212
mov r14,r4		; addr: CE31214
mov.l @r15+,r13		; addr: CE31216
jmp @r2		; addr: CE31218
mov.l @r15+,r14		; addr: CE3121A

#align4
data_CE3121C:
#data 0xF308C71F		; addr: CE3121C
#data 0xFE37E05C		; addr: CE31220
#data 0x03EC902D		; addr: CE31224
#data 0x89032338		; addr: CE31228
#data 0xF3E6E05C		; addr: CE3122C
#data 0xFE37F34D		; addr: CE31230

#align4
data_CE31234:
#data 0x64E3E068		; addr: CE31234
#data 0xC719FE47		; addr: CE31238
#data 0xE060F308		; addr: CE3123C
#data 0xFE37E301		; addr: CE31240
#data 0xF308C717		; addr: CE31244
#data 0xFE37E06C		; addr: CE31248
#data 0x0E34901A		; addr: CE3124C
#data 0xD3154F26		; addr: CE31250
#data 0x432B6DF6		; addr: CE31254
#data 0x6EF6		; addr: CE31258


l_code_CE3125A:
jsr @r13		; addr: CE3125A
mov r14,r4		; addr: CE3125C
exts.b r0,r0		; addr: CE3125E
cmp/pz r0		; addr: CE31260
bt l_code_CE31270		; addr: CE31262
lds.l @r15+,pr 		; addr: CE31264
mov.l @(ptr_CE312AC_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE31266
mov r14,r4		; addr: CE31268
mov.l @r15+,r13		; addr: CE3126A
jmp @r2		; addr: CE3126C
mov.l @r15+,r14		; addr: CE3126E

l_code_CE31270:
lds.l @r15+,pr 		; addr: CE31270
mov.l @r15+,r13		; addr: CE31272
rts 		; addr: CE31274
mov.l @r15+,r14		; addr: CE31276
;-------------------------------------------------------------------------------

data_CE31278:
#data 0x0141		; addr: CE31278

data_CE3127A:
#data 0x01FC		; addr: CE3127A

data_CE3127C:
#data 0x019E		; addr: CE3127C

data_CE3127E:
#data 0x041C		; addr: CE3127E

data_CE31280:
#data 0x01F9		; addr: CE31280
#data 0x01D2		; addr: CE31282
#data 0x000001D3		; addr: CE31284

#align4
ptr_CE31288_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31288

data_CE3128C:
#data 0xC1CDB6DB		; addr: CE3128C

#align4
data_CE31290:
#data 0xC2009249		; addr: CE31290

#align4
ptr_CE31294_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE31294

ptr_CE31298_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE31298
#data 0x40BAAAAA		; addr: CE3129C
#data 0x41700000		; addr: CE312A0
#data 0xBF892492		; addr: CE312A4
#data extern_8C05177A		; addr: CE312A8

#align4
ptr_CE312AC_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE312AC


l_code_CE312B0:
mov.w @(data_CE31384,pc),r0 ; r0 set to 0x1E8		; addr: CE312B0
mov.l r14,@-r15		; addr: CE312B2
mov r4,r14		; addr: CE312B4
sts.l pr,@-r15		; addr: CE312B6
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE312B8
extu.b r0,r0		; addr: CE312BA
cmp/eq 0x02,r0 		; addr: CE312BC
bf data_CE312F0		; addr: CE312BE
mov.b @(0x06,r14),r0 		; addr: CE312C0
extu.b r0,r0		; addr: CE312C2
cmp/eq 0x01,r0 		; addr: CE312C4
bt l_code_CE312D0		; addr: CE312C6
cmp/eq 0x02,r0 		; addr: CE312C8
bt l_code_CE312D8		; addr: CE312CA
bra data_CE312F0		; addr: CE312CC
nop 		; addr: CE312CE

l_code_CE312D0:
bsr data_CE31126		; addr: CE312D0
mov r14,r4		; addr: CE312D2
bra l_code_CE312E0		; addr: CE312D4
nop 		; addr: CE312D6

l_code_CE312D8:
lds.l @r15+,pr 		; addr: CE312D8
mov r14,r4		; addr: CE312DA
bra l_code_CE31174		; addr: CE312DC
mov.l @r15+,r14		; addr: CE312DE

l_code_CE312E0:
mov.l @(ptr_CE3138C_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2		; addr: CE312E0
jsr @r3		; addr: CE312E2
mov r14,r4		; addr: CE312E4
extu.b r0,r0		; addr: CE312E6
tst r0,r0		; addr: CE312E8
bf l_code_CE3130E		; addr: CE312EA
bra l_code_CE31318		; addr: CE312EC
nop 		; addr: CE312EE

#align4
data_CE312F0:
#data 0x430BD327		; addr: CE312F0
#data 0x600E64E3		; addr: CE312F4
#data 0x89024011		; addr: CE312F8
#data 0x430BD325		; addr: CE312FC
#data 0x64E3		; addr: CE31300

data_CE31302:
#data 0xD222		; addr: CE31302
#data 0x64E3420B		; addr: CE31304
#data 0x2008600C		; addr: CE31308
#data 0x8904		; addr: CE3130C


l_code_CE3130E:
lds.l @r15+,pr 		; addr: CE3130E
mov.l @(ptr_CE31398_to_fn_extern_8C052DAC,pc),r2 ; r2 set to 0x8C052DAC		; addr: CE31310
mov r14,r4		; addr: CE31312
jmp @r2		; addr: CE31314
mov.l @r15+,r14		; addr: CE31316

l_code_CE31318:
lds.l @r15+,pr 		; addr: CE31318
rts 		; addr: CE3131A
mov.l @r15+,r14		; addr: CE3131C
;-------------------------------------------------------------------------------

f_code_CE3131E:
mov.l r14,@-r15		; addr: CE3131E
sts.l pr,@-r15		; addr: CE31320
mov.l @(ptr_CE3139C_to_fn_extern_8C04FEA8,pc),r3 ; r3 set to 0x8C04FEA8		; addr: CE31322
jsr @r3		; addr: CE31324
mov r4,r14		; addr: CE31326
mov.l @(ptr_CE313A0_to_fn_extern_8C050048,pc),r2 ; r2 set to 0x8C050048		; addr: CE31328
jsr @r2		; addr: CE3132A
mov r14,r4		; addr: CE3132C
mov.w @(data_CE31386,pc),r0 ; r0 set to 0x1FE		; addr: CE3132E
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE31330
extu.b r0,r0		; addr: CE31332
cmp/eq 0x01,r0 		; addr: CE31334
bf l_code_CE31340		; addr: CE31336
lds.l @r15+,pr 		; addr: CE31338
mov r14,r4		; addr: CE3133A
bra l_code_CE312B0		; addr: CE3133C
mov.l @r15+,r14		; addr: CE3133E

l_code_CE31340:
lds.l @r15+,pr 		; addr: CE31340
mov r14,r4		; addr: CE31342
bra data_CE310F4		; addr: CE31344
mov.l @r15+,r14		; addr: CE31346

f_code_CE31348:
mov.l r14,@-r15		; addr: CE31348
sts.l pr,@-r15		; addr: CE3134A
mov.l @(ptr_CE313A4_to_fn_extern_8C050084,pc),r3 ; r3 set to 0x8C050084		; addr: CE3134C
jsr @r3		; addr: CE3134E
mov r4,r14		; addr: CE31350
mov.l @(ptr_CE313A8_to_fn_extern_8C04FF88,pc),r2 ; r2 set to 0x8C04FF88		; addr: CE31352
jsr @r2		; addr: CE31354
mov r14,r4		; addr: CE31356
lds.l @r15+,pr 		; addr: CE31358
mov r14,r4		; addr: CE3135A
bra f_code_CE3131E		; addr: CE3135C
mov.l @r15+,r14		; addr: CE3135E

f_code_CE31360:
sts.l pr,@-r15		; addr: CE31360
mov.l @(ptr_CE313AC_to_fn_extern_8C0511E2,pc),r3 ; r3 set to 0x8C0511E2		; addr: CE31362
jsr @r3		; addr: CE31364
mov.l r4,@-r15		; addr: CE31366
mov.l @r15,r4		; addr: CE31368
add 0x04,r15		; addr: CE3136A
bra f_code_CE31072		; addr: CE3136C
lds.l @r15+,pr 		; addr: CE3136E

f_code_CE31370:
mov.w @(data_CE31388,pc),r0 ; r0 set to 0x1FF		; addr: CE31370
mov r4,r3		; addr: CE31372
mov.l r4,@-r15		; addr: CE31374
mov.b @(r0,r3),r2		; addr: CE31376
mov.l @(ptr_CE313B0_to_ptr_CE353D8_to_f_code_CE31072,pc),r0 ; r0 set to 0xCE353D8		; addr: CE31378
extu.b r2,r2		; addr: CE3137A
shll2 r2		; addr: CE3137C
mov.l @(r0,r2),r3		; addr: CE3137E
jmp @r3		; addr: CE31380
add 0x04,r15		; addr: CE31382

data_CE31384:
#data 0x01E8		; addr: CE31384

data_CE31386:
#data 0x01FE		; addr: CE31386

data_CE31388:
#data 0x01FF		; addr: CE31388
#data 0x0000		; addr: CE3138A

#align4
ptr_CE3138C_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2		; addr: CE3138C
#data fn_extern_8C034DEE		; addr: CE31390
#data fn_extern_8C05176E		; addr: CE31394

#align4
ptr_CE31398_to_fn_extern_8C052DAC:
#data fn_extern_8C052DAC		; addr: CE31398

ptr_CE3139C_to_fn_extern_8C04FEA8:
#data fn_extern_8C04FEA8		; addr: CE3139C

ptr_CE313A0_to_fn_extern_8C050048:
#data fn_extern_8C050048		; addr: CE313A0

ptr_CE313A4_to_fn_extern_8C050084:
#data fn_extern_8C050084		; addr: CE313A4

ptr_CE313A8_to_fn_extern_8C04FF88:
#data fn_extern_8C04FF88		; addr: CE313A8

ptr_CE313AC_to_fn_extern_8C0511E2:
#data fn_extern_8C0511E2		; addr: CE313AC

ptr_CE313B0_to_ptr_CE353D8_to_f_code_CE31072:
#data ptr_CE353D8_to_f_code_CE31072		; addr: CE313B0

data_CE313B4:
#data 0x6E432FE6		; addr: CE313B4
#data 0x84E64F22		; addr: CE313B8
#data 0x8B2C2008		; addr: CE313BC
#data 0x430BD34A		; addr: CE313C0
#data 0x84E664E3		; addr: CE313C4
#data 0xD349E505		; addr: CE313C8
#data 0x80E67001		; addr: CE313CC
#data 0x64E3430B		; addr: CE313D0
#data 0x02EC9082		; addr: CE313D4
#data 0x8B1E2228		; addr: CE313D8
#data 0xE136907F		; addr: CE313DC
#data 0x0E14E301		; addr: CE313E0
#data 0x0E347058		; addr: CE313E4
#data 0xD342E514		; addr: CE313E8
#data 0x430BE609		; addr: CE313EC
#data 0x907564E3		; addr: CE313F0
#data 0xD340E400		; addr: CE313F4
#data 0x0E45E516		; addr: CE313F8
#data 0x0E4470F2		; addr: CE313FC
#data 0x0E467026		; addr: CE31400
#data 0x623284E2		; addr: CE31404
#data 0x4000600C		; addr: CE31408
#data 0x012D727C		; addr: CE3140C
#data 0x02157101		; addr: CE31410
#data 0x420BD239		; addr: CE31414
#data 0x64E3		; addr: CE31418

data_CE3141A:
#data 0x9062		; addr: CE3141A
#data 0x600C00EC		; addr: CE3141C
#data 0x8B028803		; addr: CE31420
#data 0x420BD236		; addr: CE31424
#data 0x64E3		; addr: CE31428

data_CE3142A:
#data 0xE15C		; addr: CE3142A
#data 0x31ECD335		; addr: CE3142C
#data 0xF318E034		; addr: CE31430
#data 0xE168F2E6		; addr: CE31434
#data 0xF23031EC		; addr: CE31438
#data 0xE05CFE27		; addr: CE3143C
#data 0xF318F2E6		; addr: CE31440
#data 0x31ECE160		; addr: CE31444
#data 0xFE27F230		; addr: CE31448
#data 0xF2E6E038		; addr: CE3144C
#data 0xE16CF318		; addr: CE31450
#data 0xF23031EC		; addr: CE31454
#data 0xE060FE27		; addr: CE31458
#data 0xF318F2E6		; addr: CE3145C
#data 0xFE27F230		; addr: CE31460
#data 0x64E3430B		; addr: CE31464
#data 0x420BD227		; addr: CE31468
#data 0x600E64E3		; addr: CE3146C
#data 0x89044011		; addr: CE31470
#data 0xD2254F26		; addr: CE31474
#data 0x422B64E3		; addr: CE31478
#data 0x6EF6		; addr: CE3147C

data_CE3147E:
#data 0x4F26		; addr: CE3147E
#data 0x6EF6000B		; addr: CE31480
;-------------------------------------------------------------------------------

f_code_CE31484:
mov r4,r3		; addr: CE31484
mov.l @(ptr_CE31510_to_ptr_CE353E8_to_f_code_CE31496,pc),r1 ; r1 set to 0xCE353E8		; addr: CE31486
mov.l r4,@-r15		; addr: CE31488
mov.b @(0x06,r3),r0 		; addr: CE3148A
extu.b r0,r0		; addr: CE3148C
shll2 r0		; addr: CE3148E
mov.l @(r0,r1),r3		; addr: CE31490
jmp @r3		; addr: CE31492
add 0x04,r15		; addr: CE31494

f_code_CE31496:
mov.l r14,@-r15		; addr: CE31496
sts.l pr,@-r15		; addr: CE31498
add 0xFC,r15		; addr: CE3149A
mov.w @(data_CE314E4,pc),r3 ; r3 set to 0x2A4		; addr: CE3149C
mov r4,r14		; addr: CE3149E
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE314A0
mov.l r3,@r15		; addr: CE314A2
mov.l @(ptr_CE31508_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE314A4
jsr @r3		; addr: CE314A6
mov r14,r4		; addr: CE314A8
mov.w @(data_CE314E6,pc),r0 ; r0 set to 0x141		; addr: CE314AA
mov.b @(r0,r14),r2		; addr: CE314AC
tst r2,r2		; addr: CE314AE
bf l_code_CE31536		; addr: CE314B0
mov.b @(0x06,r14),r0 		; addr: CE314B2
fldi0 fr4		; addr: CE314B4
add 0x01,r0 ; r0 set to 0x142		; addr: CE314B6
mov.b r0,@(0x06,r14) 		; addr: CE314B8
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE314BA
fmov.s fr4,@(r0,r14) 		; addr: CE314BC
mov 0x60,r0 ; r0 set to 0x60		; addr: CE314BE
fmov.s fr4,@(r0,r14) 		; addr: CE314C0
mov 0x68,r0 ; r0 set to 0x68		; addr: CE314C2
fmov.s fr4,@(r0,r14) 		; addr: CE314C4
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE314C6
fmov.s fr4,@(r0,r14) 		; addr: CE314C8
mov 0x10,r0 ; r0 set to 0x10		; addr: CE314CA
mov.w r0,@(0x1C,r14) 		; addr: CE314CC
mov.w @(data_CE314E8,pc),r0 ; r0 set to 0x1D2		; addr: CE314CE
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE314D0
tst r3,r3		; addr: CE314D2
bt l_code_CE31518		; addr: CE314D4
mova @(data_CE31514,pc),r0  ; r0 set to 0xCE31514		; addr: CE314D6
bra l_code_CE3151C		; addr: CE314D8
fmov.s @r0,fr3		; addr: CE314DA
#data 0x01A101FE		; addr: CE314DC
#data 0x01FF01AC		; addr: CE314E0

data_CE314E4:
#data 0x02A4		; addr: CE314E4

data_CE314E6:
#data 0x0141		; addr: CE314E6

data_CE314E8:
#data 0x01D2		; addr: CE314E8
#data 0x0000		; addr: CE314EA
#data fn_extern_8C052B4C		; addr: CE314EC
#data fn_extern_8C056DE4		; addr: CE314F0
#data fn_extern_8C034E8C		; addr: CE314F4
#data extern_8C2896B0		; addr: CE314F8
#data fn_extern_8C04223A		; addr: CE314FC
#data fn_extern_8C0511E2		; addr: CE31500
#data extern_8C052C84		; addr: CE31504

#align4
ptr_CE31508_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31508
#data fn_extern_8C051648		; addr: CE3150C

#align4
ptr_CE31510_to_ptr_CE353E8_to_f_code_CE31496:
#data ptr_CE353E8_to_f_code_CE31496		; addr: CE31510

data_CE31514:
#data 0x41555555		; addr: CE31514


l_code_CE31518:
mova @(data_CE31688,pc),r0  ; r0 init to 0xCE31688		; addr: CE31518
fmov.s @r0,fr3		; addr: CE3151A

l_code_CE3151C:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C		; addr: CE3151C
mov r14,r4		; addr: CE3151E
fmov.s fr3,@(r0,r14) 		; addr: CE31520
mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1C		; addr: CE31522
mov.l @r15,r3		; addr: CE31524
mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01		; addr: CE31526
mov 0x1F,r5 ; r5 set to 0x1F, r5 set to 0x1F		; addr: CE31528
mov.b r2,@(r0,r3) 		; addr: CE3152A
add 0x04,r15		; addr: CE3152C
lds.l @r15+,pr 		; addr: CE3152E
mov.l @(ptr_CE3168C_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008, r3 set to 0x8C042008		; addr: CE31530
jmp @r3		; addr: CE31532
mov.l @r15+,r14		; addr: CE31534

l_code_CE31536:
add 0x04,r15		; addr: CE31536
lds.l @r15+,pr 		; addr: CE31538
rts 		; addr: CE3153A
mov.l @r15+,r14		; addr: CE3153C
;-------------------------------------------------------------------------------

f_code_CE3153E:
mov.l r14,@-r15		; addr: CE3153E
sts.l pr,@-r15		; addr: CE31540
mov.l @(ptr_CE31690_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31542
jsr @r3		; addr: CE31544
mov r4,r14		; addr: CE31546
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE31548
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3154A
mov 0x34,r0 ; r0 set to 0x34		; addr: CE3154C
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE3154E
fmov.s @(r0,r14),fr2		; addr: CE31550
mov 0x68,r1 ; r1 set to 0x68		; addr: CE31552
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31554
fadd fr3,fr2		; addr: CE31556
fmov.s fr2,@(r0,r14) 		; addr: CE31558
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3155A
fmov.s @(r0,r14),fr2		; addr: CE3155C
fmov.s @r1,fr3		; addr: CE3155E
mov 0x60,r1 ; r1 set to 0x60		; addr: CE31560
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31562
fadd fr3,fr2		; addr: CE31564
fmov.s fr2,@(r0,r14) 		; addr: CE31566
mov 0x38,r0 ; r0 set to 0x38		; addr: CE31568
fmov.s @(r0,r14),fr2		; addr: CE3156A
fmov.s @r1,fr3		; addr: CE3156C
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE3156E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31570
fadd fr3,fr2		; addr: CE31572
fmov.s fr2,@(r0,r14) 		; addr: CE31574
mov 0x60,r0 ; r0 set to 0x60		; addr: CE31576
fmov.s @(r0,r14),fr2		; addr: CE31578
fmov.s @r1,fr3		; addr: CE3157A
fadd fr3,fr2		; addr: CE3157C
fmov.s fr2,@(r0,r14) 		; addr: CE3157E
mov.w @(0x1C,r14),r0 		; addr: CE31580
add 0xFF,r0 ; r0 set to 0x5F		; addr: CE31582
mov.w r0,@(0x1C,r14) 		; addr: CE31584
exts.w r0,r0 ; r0 ??		; addr: CE31586
tst r0,r0		; addr: CE31588
bf l_code_CE315B6		; addr: CE3158A
mov.b @(0x06,r14),r0 		; addr: CE3158C
add 0x01,r0		; addr: CE3158E
mov.b r0,@(0x06,r14) 		; addr: CE31590
mov.w @(data_CE3167E,pc),r0 ; r0 set to 0x1D2		; addr: CE31592
mov.b @(r0,r14),r3		; addr: CE31594
tst r3,r3		; addr: CE31596
bt l_code_CE315A0		; addr: CE31598
mova @(data_CE31694,pc),r0  ; r0 set to 0xCE31694		; addr: CE3159A
bra l_code_CE315A4		; addr: CE3159C
fmov.s @r0,fr3		; addr: CE3159E

l_code_CE315A0:
mova @(data_CE31698,pc),r0  ; r0 init to 0xCE31698		; addr: CE315A0
fmov.s @r0,fr3		; addr: CE315A2

l_code_CE315A4:
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02		; addr: CE315A4
mov.l @(ptr_CE3169C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C		; addr: CE315A6
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68		; addr: CE315A8
mov r14,r4		; addr: CE315AA
fmov.s fr3,@(r0,r14) 		; addr: CE315AC
mov r6,r5 ; r5 set to 0x02, r5 set to 0x02		; addr: CE315AE
lds.l @r15+,pr 		; addr: CE315B0
jmp @r3		; addr: CE315B2
mov.l @r15+,r14		; addr: CE315B4

l_code_CE315B6:
lds.l @r15+,pr 		; addr: CE315B6
rts 		; addr: CE315B8
mov.l @r15+,r14		; addr: CE315BA
;-------------------------------------------------------------------------------

f_code_CE315BC:
mov.l r14,@-r15		; addr: CE315BC
sts.l pr,@-r15		; addr: CE315BE
add 0xFC,r15		; addr: CE315C0
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE315C2
mov r4,r14		; addr: CE315C4
mov 0x34,r0 ; r0 set to 0x34		; addr: CE315C6
mov.w @(data_CE31680,pc),r3 ; r3 set to 0x2A4		; addr: CE315C8
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE315CA
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE315CC
mov.l r3,@r15		; addr: CE315CE
fmov.s @r1,fr3		; addr: CE315D0
mov 0x68,r1 ; r1 set to 0x68		; addr: CE315D2
fmov.s @(r0,r14),fr2		; addr: CE315D4
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE315D6
fadd fr3,fr2		; addr: CE315D8
fmov.s fr2,@(r0,r14) 		; addr: CE315DA
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE315DC
fmov.s @r1,fr3		; addr: CE315DE
mov 0x60,r1 ; r1 set to 0x60		; addr: CE315E0
fmov.s @(r0,r14),fr2		; addr: CE315E2
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE315E4
fadd fr3,fr2		; addr: CE315E6
fmov.s fr2,@(r0,r14) 		; addr: CE315E8
mov 0x38,r0 ; r0 set to 0x38		; addr: CE315EA
fmov.s @r1,fr3		; addr: CE315EC
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE315EE
fmov.s @(r0,r14),fr2		; addr: CE315F0
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE315F2
fadd fr3,fr2		; addr: CE315F4
fmov.s fr2,@(r0,r14) 		; addr: CE315F6
mov 0x60,r0 ; r0 set to 0x60		; addr: CE315F8
fmov.s @r1,fr3		; addr: CE315FA
fmov.s @(r0,r14),fr2		; addr: CE315FC
fadd fr3,fr2		; addr: CE315FE
fmov.s fr2,@(r0,r14) 		; addr: CE31600
mov.l @(ptr_CE31690_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31602
jsr @r3		; addr: CE31604
mov r14,r4		; addr: CE31606
exts.b r0,r0 ; r0 ??		; addr: CE31608
cmp/pz r0		; addr: CE3160A
bt l_code_CE3163C		; addr: CE3160C
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3160E
fldi0 fr4		; addr: CE31610
fmov.s fr4,@(r0,r14) 		; addr: CE31612
mov 0x60,r0 ; r0 set to 0x60		; addr: CE31614
fmov.s fr4,@(r0,r14) 		; addr: CE31616
mov 0x68,r0 ; r0 set to 0x68		; addr: CE31618
fmov.s fr4,@(r0,r14) 		; addr: CE3161A
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE3161C
fmov.s fr4,@(r0,r14) 		; addr: CE3161E
mov 0x1C,r0 ; r0 set to 0x1C		; addr: CE31620
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE31622
mov 0x00,r2 ; r2 set to 0x00		; addr: CE31624
mov 0x2B,r5 ; r5 set to 0x2B		; addr: CE31626
mov.b r2,@(r0,r3) 		; addr: CE31628
mov.l @(ptr_CE3168C_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE3162A
jsr @r3		; addr: CE3162C
mov r14,r4		; addr: CE3162E
mov r14,r4		; addr: CE31630
add 0x04,r15		; addr: CE31632
lds.l @r15+,pr 		; addr: CE31634
mov.l @(ptr_CE316A0_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE31636
jmp @r2		; addr: CE31638
mov.l @r15+,r14		; addr: CE3163A

l_code_CE3163C:
add 0x04,r15		; addr: CE3163C
lds.l @r15+,pr 		; addr: CE3163E
rts 		; addr: CE31640
mov.l @r15+,r14		; addr: CE31642
;-------------------------------------------------------------------------------

f_code_CE31644:
mov r4,r3		; addr: CE31644
mov.l @(ptr_CE316A4_to_ptr_CE353F4_to_f_code_CE31656,pc),r1 ; r1 set to 0xCE353F4		; addr: CE31646
mov.l r4,@-r15		; addr: CE31648
mov.b @(0x06,r3),r0 		; addr: CE3164A
extu.b r0,r0		; addr: CE3164C
shll2 r0		; addr: CE3164E
mov.l @(r0,r1),r3		; addr: CE31650
jmp @r3		; addr: CE31652
add 0x04,r15		; addr: CE31654

f_code_CE31656:
mov.b @(0x06,r4),r0 		; addr: CE31656
mov 0x0A,r6 ; r6 set to 0x0A		; addr: CE31658
mov.w @(data_CE31680,pc),r5 ; r5 set to 0x2A4		; addr: CE3165A
mov 0x01,r3 ; r3 set to 0x01		; addr: CE3165C
add 0x01,r0		; addr: CE3165E
mov.b r0,@(0x06,r4) 		; addr: CE31660
add r4,r5 ; r5 ??? bc r4 is ???		; addr: CE31662
mov.w @(data_CE31682,pc),r0 ; r0 set to 0x1F2		; addr: CE31664
mov.b r6,@(r0,r4) 		; addr: CE31666
add 0x01,r0 ; r0 set to 0x1F3		; addr: CE31668
mov.b r6,@(r0,r4) 		; addr: CE3166A
mov 0x19,r0 ; r0 set to 0x19		; addr: CE3166C
mov.b r3,@(r0,r5) 		; addr: CE3166E
mov 0x04,r6 ; r6 set to 0x04		; addr: CE31670
mov.w @(data_CE31684,pc),r0 ; r0 set to 0x1FA		; addr: CE31672
mov.l @(ptr_CE3169C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE31674
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???		; addr: CE31676
mov.w r0,@(0x0A,r5) 		; addr: CE31678
jmp @r3		; addr: CE3167A
mov 0x02,r5		; addr: CE3167C

data_CE3167E:
#data 0x01D2		; addr: CE3167E

data_CE31680:
#data 0x02A4		; addr: CE31680

data_CE31682:
#data 0x01F2		; addr: CE31682

data_CE31684:
#data 0x01FA		; addr: CE31684
#data 0x0000		; addr: CE31686

#align4
data_CE31688:
#data 0xC1555555		; addr: CE31688

#align4
ptr_CE3168C_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE3168C

ptr_CE31690_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31690

data_CE31694:
#data 0xBF555555		; addr: CE31694

#align4
data_CE31698:
#data 0x3F555555		; addr: CE31698

#align4
ptr_CE3169C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE3169C

ptr_CE316A0_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE316A0

ptr_CE316A4_to_ptr_CE353F4_to_f_code_CE31656:
#data ptr_CE353F4_to_f_code_CE31656		; addr: CE316A4

data_CE316A8:
#data 0x6E432FE6		; addr: CE316A8
#data 0x4F222FD6		; addr: CE316AC
#data 0x9D61D334		; addr: CE316B0
#data 0x3DEC430B		; addr: CE316B4
#data 0x4011600E		; addr: CE316B8
#data 0x84E68958		; addr: CE316BC
#data 0xE51FE301		; addr: CE316C0
#data 0x80E67001		; addr: CE316C4
#data 0x0D34E01C		; addr: CE316C8
#data 0x430BD32E		; addr: CE316CC
#data 0xE02064E3		; addr: CE316D0
#data 0x905081EE		; addr: CE316D4
#data 0x904F04ED		; addr: CE316D8
#data 0x233803EC		; addr: CE316DC
#data 0x85D58901		; addr: CE316E0
#data 0x6403		; addr: CE316E4

data_CE316E6:
#data 0x934A		; addr: CE316E6
#data 0x2D396D4D		; addr: CE316E8
#data 0x89014D11		; addr: CE316EC
#data 0x3D2C9246		; addr: CE316F0

#align4
data_CE316F4:
#data 0x4D2CE2F4		; addr: CE316F4
#data 0x64DDD226		; addr: CE316F8
#data 0x44084408		; addr: CE316FC
#data 0x6142342C		; addr: CE31700
#data 0xF508C721		; addr: CE31704
#data 0x415AC721		; addr: CE31708
#data 0xE05CF408		; addr: CE3170C
#data 0xF352F32D		; addr: CE31710
#data 0xFE37F343		; addr: CE31714
#data 0x5141E068		; addr: CE31718
#data 0xF32D415A		; addr: CE3171C
#data 0xF343F352		; addr: CE31720
#data 0xC71CFE37		; addr: CE31724
#data 0xF5085142		; addr: CE31728
#data 0xF32D415A		; addr: CE3172C
#data 0xF343F352		; addr: CE31730
#data 0xFE37E060		; addr: CE31734
#data 0x5143E06C		; addr: CE31738
#data 0xF32D415A		; addr: CE3173C
#data 0xF343F352		; addr: CE31740
#data 0x901CFE37		; addr: CE31744
#data 0x211801ED		; addr: CE31748
#data 0x66D38D08		; addr: CE3174C
#data 0xF3E6E05C		; addr: CE31750
#data 0xFE37F34D		; addr: CE31754
#data 0xF3E6E068		; addr: CE31758
#data 0xFE37F34D		; addr: CE3175C

#align4
data_CE31760:
#data 0xD30E4F26		; addr: CE31760
#data 0xE5027605		; addr: CE31764
#data 0x6DF664E3		; addr: CE31768
#data 0x6EF6432B		; addr: CE3176C

#align4
data_CE31770:
#data 0x6DF64F26		; addr: CE31770
#data 0x6EF6000B		; addr: CE31774
;-------------------------------------------------------------------------------
#data 0x034A02A4		; addr: CE31778
#data 0x30000525		; addr: CE3177C
#data 0x01300FFF		; addr: CE31780
#data fn_extern_8C034DEE		; addr: CE31784
#data fn_extern_8C042008		; addr: CE31788
#data 0x3FD55555		; addr: CE3178C
#data 0x47800000		; addr: CE31790

#align4
ptr_CE31794_to_data_CE35400:
#data data_CE35400		; addr: CE31794
#data 0x40092492		; addr: CE31798
#data fn_extern_8C034E8C		; addr: CE3179C

#align4
data_CE317A0:
#data 0x6E432FE6		; addr: CE317A0
#data 0x4F222FD6		; addr: CE317A4
#data 0x9D9FD352		; addr: CE317A8
#data 0x3DEC430B		; addr: CE317AC
#data 0x31ECE15C		; addr: CE317B0
#data 0xF318E034		; addr: CE317B4
#data 0xE168F2E6		; addr: CE317B8
#data 0xF23031EC		; addr: CE317BC
#data 0xE05CFE27		; addr: CE317C0
#data 0xF318F2E6		; addr: CE317C4
#data 0x31ECE160		; addr: CE317C8
#data 0xFE27F230		; addr: CE317CC
#data 0xF2E6E038		; addr: CE317D0
#data 0xE16CF318		; addr: CE317D4
#data 0xF23031EC		; addr: CE317D8
#data 0xE060FE27		; addr: CE317DC
#data 0xF318F2E6		; addr: CE317E0
#data 0xFE27F230		; addr: CE317E4
#data 0xF3E69081		; addr: CE317E8
#data 0xF2E6E038		; addr: CE317EC
#data 0x8B03F325		; addr: CE317F0
#data 0xF3E6907B		; addr: CE317F4
#data 0xFE37E038		; addr: CE317F8

#align4
data_CE317FC:
#data 0x70FF85EE		; addr: CE317FC
#data 0x600F81EE		; addr: CE31800
#data 0x8B112008		; addr: CE31804
#data 0xF38DE068		; addr: CE31808
#data 0xE01CFE37		; addr: CE3180C
#data 0xD339E400		; addr: CE31810
#data 0xE0190D44		; addr: CE31814
#data 0x0D44E52B		; addr: CE31818
#data 0x64E3430B		; addr: CE3181C
#data 0xD2364F26		; addr: CE31820
#data 0x6DF664E3		; addr: CE31824
#data 0x6EF6422B		; addr: CE31828

#align4
data_CE3182C:
#data 0x6DF64F26		; addr: CE3182C
#data 0x6EF6000B		; addr: CE31830
;-------------------------------------------------------------------------------

f_code_CE31834:
mov r4,r3		; addr: CE31834
mov.l @(ptr_CE31900_to_ptr_CE35430_to_f_code_CE31846,pc),r1 ; r1 set to 0xCE35430		; addr: CE31836
mov.l r4,@-r15		; addr: CE31838
mov.b @(0x06,r3),r0 		; addr: CE3183A
extu.b r0,r0		; addr: CE3183C
shll2 r0		; addr: CE3183E
mov.l @(r0,r1),r3		; addr: CE31840
jmp @r3		; addr: CE31842
add 0x04,r15		; addr: CE31844

f_code_CE31846:
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE31846
fldi0 fr4		; addr: CE31848
fmov.s fr4,@(r0,r4) 		; addr: CE3184A
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3184C
fmov.s fr4,@(r0,r4) 		; addr: CE3184E
mov 0x68,r0 ; r0 set to 0x68		; addr: CE31850
fmov.s fr4,@(r0,r4) 		; addr: CE31852
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE31854
fmov.s fr4,@(r0,r4) 		; addr: CE31856
mov.b @(0x06,r4),r0 		; addr: CE31858
mov.w @(data_CE318EC,pc),r5 ; r5 set to 0x2A4		; addr: CE3185A
add 0x01,r0 ; r0 set to 0x6D		; addr: CE3185C
mov.b r0,@(0x06,r4) 		; addr: CE3185E
mov 0x10,r0 ; r0 set to 0x10		; addr: CE31860
mov.w r0,@(0x1C,r4) 		; addr: CE31862
mov.w @(data_CE318F0,pc),r0 ; r0 set to 0x1D2		; addr: CE31864
mov.b @(r0,r4),r3		; addr: CE31866
tst r3,r3		; addr: CE31868
bt/s l_code_CE31874		; addr: CE3186A
add r4,r5 ; r5 ??? bc r4 is ???		; addr: CE3186C
mova @(data_CE31904,pc),r0  ; r0 set to 0xCE31904		; addr: CE3186E
bra l_code_CE31878		; addr: CE31870
fmov.s @r0,fr3		; addr: CE31872

l_code_CE31874:
mova @(data_CE31908,pc),r0  ; r0 init to 0xCE31908		; addr: CE31874
fmov.s @r0,fr3		; addr: CE31876

l_code_CE31878:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C		; addr: CE31878
fmov.s fr3,@(r0,r4) 		; addr: CE3187A
mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1C		; addr: CE3187C
mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01		; addr: CE3187E
mov.b r3,@(r0,r5) 		; addr: CE31880
mov.l @(ptr_CE318F8_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008, r3 set to 0x8C042008		; addr: CE31882
jmp @r3		; addr: CE31884
mov 0x1F,r5		; addr: CE31886

f_code_CE31888:
mov.l r14,@-r15		; addr: CE31888
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE3188A
mov r4,r14		; addr: CE3188C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3188E
mov 0x34,r0 ; r0 set to 0x34		; addr: CE31890
mov.l @(ptr_CE318F4_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31892
sts.l pr,@-r15		; addr: CE31894
fmov.s @(r0,r14),fr2		; addr: CE31896
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE31898
mov 0x68,r1 ; r1 set to 0x68		; addr: CE3189A
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3189C
fadd fr3,fr2		; addr: CE3189E
fmov.s fr2,@(r0,r14) 		; addr: CE318A0
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE318A2
fmov.s @r1,fr3		; addr: CE318A4
mov 0x60,r1 ; r1 set to 0x60		; addr: CE318A6
fmov.s @(r0,r14),fr2		; addr: CE318A8
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE318AA
fadd fr3,fr2		; addr: CE318AC
fmov.s fr2,@(r0,r14) 		; addr: CE318AE
mov 0x38,r0 ; r0 set to 0x38		; addr: CE318B0
fmov.s @(r0,r14),fr2		; addr: CE318B2
fmov.s @r1,fr3		; addr: CE318B4
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE318B6
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE318B8
fadd fr3,fr2		; addr: CE318BA
fmov.s fr2,@(r0,r14) 		; addr: CE318BC
mov 0x60,r0 ; r0 set to 0x60		; addr: CE318BE
fmov.s @(r0,r14),fr2		; addr: CE318C0
fmov.s @r1,fr3		; addr: CE318C2
fadd fr3,fr2		; addr: CE318C4
fmov.s fr2,@(r0,r14) 		; addr: CE318C6
jsr @r3		; addr: CE318C8
mov r14,r4		; addr: CE318CA
mov.w @(0x1C,r14),r0 		; addr: CE318CC
add 0xFF,r0 ; r0 set to 0x5F		; addr: CE318CE
mov.w r0,@(0x1C,r14) 		; addr: CE318D0
exts.w r0,r0 ; r0 ??		; addr: CE318D2
tst r0,r0		; addr: CE318D4
bf l_code_CE31926		; addr: CE318D6
mov.b @(0x06,r14),r0 		; addr: CE318D8
add 0x01,r0		; addr: CE318DA
mov.b r0,@(0x06,r14) 		; addr: CE318DC
mov.w @(data_CE318F0,pc),r0 ; r0 set to 0x1D2		; addr: CE318DE
mov.b @(r0,r14),r3		; addr: CE318E0
tst r3,r3		; addr: CE318E2
bt l_code_CE31910		; addr: CE318E4
mova @(data_CE3190C,pc),r0  ; r0 set to 0xCE3190C		; addr: CE318E6
bra l_code_CE31914		; addr: CE318E8
fmov.s @r0,fr3		; addr: CE318EA

data_CE318EC:
#data 0x02A4		; addr: CE318EC
#data 0x041C		; addr: CE318EE

data_CE318F0:
#data 0x01D2		; addr: CE318F0
#data 0x0000		; addr: CE318F2

#align4
ptr_CE318F4_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE318F4

ptr_CE318F8_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE318F8
#data fn_extern_8C05176E		; addr: CE318FC

#align4
ptr_CE31900_to_ptr_CE35430_to_f_code_CE31846:
#data ptr_CE35430_to_f_code_CE31846		; addr: CE31900

data_CE31904:
#data 0xC13AAAAA		; addr: CE31904

#align4
data_CE31908:
#data 0x413AAAAA		; addr: CE31908

#align4
data_CE3190C:
#data 0x3F555555		; addr: CE3190C


l_code_CE31910:
mova @(data_CE31A38,pc),r0  ; r0 init to 0xCE31A38		; addr: CE31910
fmov.s @r0,fr3		; addr: CE31912

l_code_CE31914:
mov.l @(ptr_CE31A3C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C		; addr: CE31914
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68		; addr: CE31916
mov r14,r4		; addr: CE31918
fmov.s fr3,@(r0,r14) 		; addr: CE3191A
lds.l @r15+,pr 		; addr: CE3191C
mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03		; addr: CE3191E
mov 0x02,r5 ; r5 set to 0x02, r5 set to 0x02		; addr: CE31920
jmp @r3		; addr: CE31922
mov.l @r15+,r14		; addr: CE31924

l_code_CE31926:
lds.l @r15+,pr 		; addr: CE31926
rts 		; addr: CE31928
mov.l @r15+,r14		; addr: CE3192A
;-------------------------------------------------------------------------------

f_code_CE3192C:
mov.l r14,@-r15		; addr: CE3192C
sts.l pr,@-r15		; addr: CE3192E
add 0xFC,r15		; addr: CE31930
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE31932
mov r4,r14		; addr: CE31934
mov 0x34,r0 ; r0 set to 0x34		; addr: CE31936
mov.w @(data_CE31A32,pc),r3 ; r3 set to 0x2A4		; addr: CE31938
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3193A
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE3193C
mov.l r3,@r15		; addr: CE3193E
fmov.s @r1,fr3		; addr: CE31940
mov 0x68,r1 ; r1 set to 0x68		; addr: CE31942
fmov.s @(r0,r14),fr2		; addr: CE31944
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31946
fadd fr3,fr2		; addr: CE31948
fmov.s fr2,@(r0,r14) 		; addr: CE3194A
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3194C
fmov.s @r1,fr3		; addr: CE3194E
mov 0x60,r1 ; r1 set to 0x60		; addr: CE31950
fmov.s @(r0,r14),fr2		; addr: CE31952
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31954
fadd fr3,fr2		; addr: CE31956
fmov.s fr2,@(r0,r14) 		; addr: CE31958
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3195A
fmov.s @r1,fr3		; addr: CE3195C
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE3195E
fmov.s @(r0,r14),fr2		; addr: CE31960
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31962
fadd fr3,fr2		; addr: CE31964
fmov.s fr2,@(r0,r14) 		; addr: CE31966
mov 0x60,r0 ; r0 set to 0x60		; addr: CE31968
fmov.s @r1,fr3		; addr: CE3196A
fmov.s @(r0,r14),fr2		; addr: CE3196C
fadd fr3,fr2		; addr: CE3196E
fmov.s fr2,@(r0,r14) 		; addr: CE31970
mov.l @(ptr_CE31A40_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31972
jsr @r3		; addr: CE31974
mov r14,r4		; addr: CE31976
exts.b r0,r0 ; r0 ??		; addr: CE31978
cmp/pz r0		; addr: CE3197A
bt l_code_CE319AC		; addr: CE3197C
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3197E
fldi0 fr4		; addr: CE31980
fmov.s fr4,@(r0,r14) 		; addr: CE31982
mov 0x60,r0 ; r0 set to 0x60		; addr: CE31984
fmov.s fr4,@(r0,r14) 		; addr: CE31986
mov 0x68,r0 ; r0 set to 0x68		; addr: CE31988
fmov.s fr4,@(r0,r14) 		; addr: CE3198A
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE3198C
fmov.s fr4,@(r0,r14) 		; addr: CE3198E
mov 0x1C,r0 ; r0 set to 0x1C		; addr: CE31990
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE31992
mov 0x00,r2 ; r2 set to 0x00		; addr: CE31994
mov 0x2B,r5 ; r5 set to 0x2B		; addr: CE31996
mov.b r2,@(r0,r3) 		; addr: CE31998
mov.l @(ptr_CE31A44_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE3199A
jsr @r3		; addr: CE3199C
mov r14,r4		; addr: CE3199E
mov r14,r4		; addr: CE319A0
add 0x04,r15		; addr: CE319A2
lds.l @r15+,pr 		; addr: CE319A4
mov.l @(ptr_CE31A48_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE319A6
jmp @r2		; addr: CE319A8
mov.l @r15+,r14		; addr: CE319AA

l_code_CE319AC:
add 0x04,r15		; addr: CE319AC
lds.l @r15+,pr 		; addr: CE319AE
rts 		; addr: CE319B0
mov.l @r15+,r14		; addr: CE319B2
;-------------------------------------------------------------------------------

f_code_CE319B4:
mov r4,r3		; addr: CE319B4
mov.l @(ptr_CE31A4C_to_ptr_CE3543C_to_f_code_CE319C6,pc),r1 ; r1 set to 0xCE3543C		; addr: CE319B6
mov.l r4,@-r15		; addr: CE319B8
mov.b @(0x06,r3),r0 		; addr: CE319BA
extu.b r0,r0		; addr: CE319BC
shll2 r0		; addr: CE319BE
mov.l @(r0,r1),r3		; addr: CE319C0
jmp @r3		; addr: CE319C2
add 0x04,r15		; addr: CE319C4

f_code_CE319C6:
mov.l r14,@-r15		; addr: CE319C6
mov r4,r14		; addr: CE319C8
mov 0x01,r3 ; r3 set to 0x01		; addr: CE319CA
sts.l pr,@-r15		; addr: CE319CC
mov.b @(0x06,r14),r0 		; addr: CE319CE
mov 0x00,r5 ; r5 set to 0x00		; addr: CE319D0
add 0x01,r0		; addr: CE319D2
mov.b r0,@(0x06,r14) 		; addr: CE319D4
mov.w @(data_CE31A34,pc),r0 ; r0 set to 0x12C		; addr: CE319D6
mov.b r3,@(r0,r14) 		; addr: CE319D8
mov.l @(ptr_CE31A50_to_fn_extern_8C0BDF70,pc),r3 ; r3 set to 0x8C0BDF70		; addr: CE319DA
jsr @r3		; addr: CE319DC
mov r14,r4		; addr: CE319DE
mov 0x25,r0 ; r0 set to 0x25		; addr: CE319E0
mov.l @(ptr_CE31A58_to_fn_extern_8C03544C,pc),r3 ; r3 set to 0x8C03544C		; addr: CE319E2
mov.b @(r0,r14),r6		; addr: CE319E4
mov 0x01,r7 ; r7 set to 0x01		; addr: CE319E6
mov.l @(ptr_CE31A54_to_data_CE35234,pc),r0 ; r0 set to 0xCE35234		; addr: CE319E8
mov 0x02,r5 ; r5 set to 0x02		; addr: CE319EA
extu.b r6,r6		; addr: CE319EC
shll2 r6		; addr: CE319EE
mov.l @(r0,r6),r6		; addr: CE319F0
jsr @r3		; addr: CE319F2
mov r14,r4		; addr: CE319F4
lds.l @r15+,pr 		; addr: CE319F6
mov.l @(ptr_CE31A3C_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE319F8
mov r14,r4		; addr: CE319FA
mov 0x00,r6 ; r6 set to 0x00		; addr: CE319FC
mov 0x12,r5 ; r5 set to 0x12		; addr: CE319FE
jmp @r2		; addr: CE31A00
mov.l @r15+,r14		; addr: CE31A02

f_code_CE31A04:
mov.l r14,@-r15		; addr: CE31A04
sts.l pr,@-r15		; addr: CE31A06
mov.l @(ptr_CE31A40_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31A08
jsr @r3		; addr: CE31A0A
mov r4,r14		; addr: CE31A0C
exts.b r0,r0		; addr: CE31A0E
cmp/pz r0		; addr: CE31A10
bt l_code_CE31A2C		; addr: CE31A12
mov.b @(0x06,r14),r0 		; addr: CE31A14
mov r14,r4		; addr: CE31A16
mov.l @(ptr_CE31A3C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE31A18
mov 0x01,r6 ; r6 set to 0x01		; addr: CE31A1A
add 0x01,r0		; addr: CE31A1C
mov.b r0,@(0x06,r14) 		; addr: CE31A1E
mov 0x20,r0 ; r0 set to 0x20		; addr: CE31A20
mov.w r0,@(0x1C,r14) 		; addr: CE31A22
mov 0x12,r5 ; r5 set to 0x12		; addr: CE31A24
lds.l @r15+,pr 		; addr: CE31A26
jmp @r3		; addr: CE31A28
mov.l @r15+,r14		; addr: CE31A2A

l_code_CE31A2C:
lds.l @r15+,pr 		; addr: CE31A2C
rts 		; addr: CE31A2E
mov.l @r15+,r14		; addr: CE31A30
;-------------------------------------------------------------------------------

data_CE31A32:
#data 0x02A4		; addr: CE31A32

data_CE31A34:
#data 0x012C		; addr: CE31A34
#data 0x0000		; addr: CE31A36

#align4
data_CE31A38:
#data 0xBF555555		; addr: CE31A38

#align4
ptr_CE31A3C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE31A3C

ptr_CE31A40_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31A40

ptr_CE31A44_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE31A44

ptr_CE31A48_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE31A48

ptr_CE31A4C_to_ptr_CE3543C_to_f_code_CE319C6:
#data ptr_CE3543C_to_f_code_CE319C6		; addr: CE31A4C

ptr_CE31A50_to_fn_extern_8C0BDF70:
#data fn_extern_8C0BDF70		; addr: CE31A50

ptr_CE31A54_to_data_CE35234:
#data data_CE35234		; addr: CE31A54

ptr_CE31A58_to_fn_extern_8C03544C:
#data fn_extern_8C03544C		; addr: CE31A58


f_code_CE31A5C:
mov.l r14,@-r15		; addr: CE31A5C
sts.l pr,@-r15		; addr: CE31A5E
mov.l @(ptr_CE31B8C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31A60
jsr @r3		; addr: CE31A62
mov r4,r14		; addr: CE31A64
mov.w @(data_CE31B7C,pc),r0 ; r0 set to 0x140		; addr: CE31A66
mov.b @(r0,r14),r2		; addr: CE31A68
tst r2,r2		; addr: CE31A6A
bt l_code_CE31ACA		; addr: CE31A6C
mov 0x00,r3 ; r3 set to 0x00		; addr: CE31A6E
mov.b r3,@(r0,r14) 		; addr: CE31A70
mov 0x25,r0 ; r0 set to 0x25		; addr: CE31A72
mov.b @(r0,r14),r6		; addr: CE31A74
mov 0x00,r5 ; r5 set to 0x00		; addr: CE31A76
mov.w @(data_CE31B7E,pc),r0 ; r0 set to 0x14B		; addr: CE31A78
mov 0x01,r7 ; r7 set to 0x01		; addr: CE31A7A
extu.b r6,r6		; addr: CE31A7C
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE31A7E
shll2 r6		; addr: CE31A80
mov.l @(ptr_CE31B90_to_data_CE35234,pc),r0 ; r0 set to 0xCE35234		; addr: CE31A82
extu.b r3,r3		; addr: CE31A84
mov.l @(r0,r6),r6		; addr: CE31A86
add r3,r6		; addr: CE31A88
mov.l @(ptr_CE31B94_to_fn_extern_8C03544C,pc),r3 ; r3 set to 0x8C03544C		; addr: CE31A8A
jsr @r3		; addr: CE31A8C
mov r14,r4		; addr: CE31A8E
mov.w @(0x1C,r14),r0 		; addr: CE31A90
add 0xFF,r0 ; r0 set to 0xCE35233		; addr: CE31A92
mov.w r0,@(0x1C,r14) 		; addr: CE31A94
add 0x01,r0 ; r0 set to 0xCE35234		; addr: CE31A96
exts.w r0,r0 ; r0 ??		; addr: CE31A98
tst r0,r0		; addr: CE31A9A
bf l_code_CE31ACA		; addr: CE31A9C
mov 0x25,r0 ; r0 set to 0x25		; addr: CE31A9E
mov.l @(ptr_CE31B94_to_fn_extern_8C03544C,pc),r3 ; r3 set to 0x8C03544C		; addr: CE31AA0
mov.b @(r0,r14),r6		; addr: CE31AA2
mov 0x00,r5 ; r5 set to 0x00		; addr: CE31AA4
mov.l @(ptr_CE31B90_to_data_CE35234,pc),r0 ; r0 set to 0xCE35234		; addr: CE31AA6
mov 0x01,r7 ; r7 set to 0x01		; addr: CE31AA8
extu.b r6,r6		; addr: CE31AAA
shll2 r6		; addr: CE31AAC
mov.l @(r0,r6),r6		; addr: CE31AAE
add 0x04,r6		; addr: CE31AB0
jsr @r3		; addr: CE31AB2
mov r14,r4		; addr: CE31AB4
mov.b @(0x06,r14),r0 		; addr: CE31AB6
mov r14,r4		; addr: CE31AB8
mov.l @(ptr_CE31B98_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE31ABA
mov 0x02,r6 ; r6 set to 0x02		; addr: CE31ABC
add 0x01,r0 ; r0 set to 0xCE35235		; addr: CE31ABE
mov.b r0,@(0x06,r14) 		; addr: CE31AC0
mov 0x12,r5 ; r5 set to 0x12		; addr: CE31AC2
lds.l @r15+,pr 		; addr: CE31AC4
jmp @r3		; addr: CE31AC6
mov.l @r15+,r14		; addr: CE31AC8

l_code_CE31ACA:
lds.l @r15+,pr 		; addr: CE31ACA
rts 		; addr: CE31ACC
mov.l @r15+,r14		; addr: CE31ACE
;-------------------------------------------------------------------------------

f_code_CE31AD0:
mov.l r14,@-r15		; addr: CE31AD0
sts.l pr,@-r15		; addr: CE31AD2
mov.l @(ptr_CE31B8C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31AD4
jsr @r3		; addr: CE31AD6
mov r4,r14		; addr: CE31AD8
exts.b r0,r0		; addr: CE31ADA
cmp/pz r0		; addr: CE31ADC
bt l_code_CE31AF2		; addr: CE31ADE
mov.b @(0x05,r14),r0 		; addr: CE31AE0
mov r14,r4		; addr: CE31AE2
mov.l @(ptr_CE31B9C_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE31AE4
mov 0x00,r5 ; r5 set to 0x00		; addr: CE31AE6
add 0x01,r0		; addr: CE31AE8
mov.b r0,@(0x05,r14) 		; addr: CE31AEA
lds.l @r15+,pr 		; addr: CE31AEC
jmp @r3		; addr: CE31AEE
mov.l @r15+,r14		; addr: CE31AF0

l_code_CE31AF2:
mov.w @(data_CE31B7C,pc),r0 ; r0 set to 0x140		; addr: CE31AF2
mov.b @(r0,r14),r2		; addr: CE31AF4
tst r2,r2		; addr: CE31AF6
bt l_code_CE31B2E		; addr: CE31AF8
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE31AFA
cmp/eq 0x60,r0 		; addr: CE31AFC
bf data_CE31B0C		; addr: CE31AFE
mov.l @(ptr_CE31B9C_to_fn_extern_8C035162,pc),r2 ; r2 set to 0x8C035162		; addr: CE31B00
mov 0x00,r5 ; r5 set to 0x00		; addr: CE31B02
jsr @r2		; addr: CE31B04
mov r14,r4		; addr: CE31B06
bra data_CE31B28		; addr: CE31B08
nop 		; addr: CE31B0A

#align4
data_CE31B0C:
#data 0x06ECE025		; addr: CE31B0C
#data 0x9033E500		; addr: CE31B10
#data 0x666CE701		; addr: CE31B14
#data 0x460803EC		; addr: CE31B18
#data 0x066ED01C		; addr: CE31B1C
#data 0xD31C363C		; addr: CE31B20
#data 0x64E3430B		; addr: CE31B24

#align4
data_CE31B28:
#data 0xE2009028		; addr: CE31B28
#data 0x0E24		; addr: CE31B2C


l_code_CE31B2E:
lds.l @r15+,pr 		; addr: CE31B2E
rts 		; addr: CE31B30
mov.l @r15+,r14		; addr: CE31B32
;-------------------------------------------------------------------------------

f_code_CE31B34:
mov r4,r3		; addr: CE31B34
mov.l @(ptr_CE31BA0_to_ptr_CE3544C_to_f_code_CE31C84,pc),r1 ; r1 set to 0xCE3544C		; addr: CE31B36
mov.l r4,@-r15		; addr: CE31B38
mov.b @(0x06,r3),r0 		; addr: CE31B3A
extu.b r0,r0		; addr: CE31B3C
shll2 r0		; addr: CE31B3E
mov.l @(r0,r1),r3		; addr: CE31B40
jmp @r3		; addr: CE31B42
add 0x04,r15		; addr: CE31B44

f_code_CE31B46:
mov.l r14,@-r15		; addr: CE31B46
sts.l pr,@-r15		; addr: CE31B48
add 0xF8,r15		; addr: CE31B4A
mov.w @(data_CE31B80,pc),r3 ; r3 set to 0x2A4		; addr: CE31B4C
mov r4,r14		; addr: CE31B4E
mov.w @(data_CE31B82,pc),r0 ; r0 set to 0x340		; addr: CE31B50
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE31B52
mov.l r3,@(0x04,r15) 		; addr: CE31B54
mov.w @(r0,r14),r2		; addr: CE31B56
mov.w @(data_CE31B84,pc),r3 ; r3 set to 0x3F0		; addr: CE31B58
extu.w r2,r2		; addr: CE31B5A
tst r3,r2		; addr: CE31B5C
bt l_code_CE31BE2		; addr: CE31B5E
mov.w @(r0,r14),r2		; addr: CE31B60
mov.w @(data_CE31B86,pc),r1 ; r1 set to 0x200		; addr: CE31B62
extu.w r2,r2		; addr: CE31B64
tst r1,r2		; addr: CE31B66
bt l_code_CE31B6E		; addr: CE31B68
bra l_code_CE31C18		; addr: CE31B6A
mov 0x00,r4		; addr: CE31B6C

l_code_CE31B6E:
mov.w @(r0,r14),r3		; addr: CE31B6E
mov.w @(data_CE31B88,pc),r2 ; r2 set to 0x100		; addr: CE31B70
extu.w r3,r3		; addr: CE31B72
tst r2,r3		; addr: CE31B74
bt l_code_CE31BA4		; addr: CE31B76
bra l_code_CE31C18		; addr: CE31B78
mov 0x04,r4		; addr: CE31B7A

data_CE31B7C:
#data 0x0140		; addr: CE31B7C

data_CE31B7E:
#data 0x014B		; addr: CE31B7E

data_CE31B80:
#data 0x02A4		; addr: CE31B80

data_CE31B82:
#data 0x0340		; addr: CE31B82

data_CE31B84:
#data 0x03F0		; addr: CE31B84

data_CE31B86:
#data 0x0200		; addr: CE31B86

data_CE31B88:
#data 0x0100		; addr: CE31B88
#data 0x0000		; addr: CE31B8A

#align4
ptr_CE31B8C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31B8C

ptr_CE31B90_to_data_CE35234:
#data data_CE35234		; addr: CE31B90

ptr_CE31B94_to_fn_extern_8C03544C:
#data fn_extern_8C03544C		; addr: CE31B94

ptr_CE31B98_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE31B98

ptr_CE31B9C_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE31B9C

ptr_CE31BA0_to_ptr_CE3544C_to_f_code_CE31C84:
#data ptr_CE3544C_to_f_code_CE31C84		; addr: CE31BA0


l_code_CE31BA4:
mov.w @(r0,r14),r0		; addr: CE31BA4
extu.w r0,r0		; addr: CE31BA6
tst 0x80,r0 		; addr: CE31BA8
bt l_code_CE31BB0		; addr: CE31BAA
bra l_code_CE31C18		; addr: CE31BAC
mov 0x06,r4		; addr: CE31BAE

l_code_CE31BB0:
mov.w @(data_CE31CA4,pc),r0 ; r0 set to 0x340		; addr: CE31BB0
mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE31BB2
extu.w r0,r0		; addr: CE31BB4
tst 0x40,r0 		; addr: CE31BB6
bt l_code_CE31BBE		; addr: CE31BB8
bra l_code_CE31C18		; addr: CE31BBA
mov 0x08,r4		; addr: CE31BBC

l_code_CE31BBE:
mov.w @(data_CE31CA4,pc),r0 ; r0 set to 0x340		; addr: CE31BBE
mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE31BC0
extu.w r0,r0		; addr: CE31BC2
tst 0x20,r0 		; addr: CE31BC4
bt l_code_CE31BCC		; addr: CE31BC6
bra l_code_CE31C18		; addr: CE31BC8
mov 0x0A,r4		; addr: CE31BCA

l_code_CE31BCC:
mov.l @(ptr_CE31CAC_to_extern_8C289636,pc),r1 ; r1 set to 0x8C289636		; addr: CE31BCC
mov.b @r1,r3		; addr: CE31BCE
tst r3,r3		; addr: CE31BD0
bt l_code_CE31C06		; addr: CE31BD2
mov.l @(ptr_CE31CB0_to_fn_extern_8C0514B8,pc),r3 ; r3 set to 0x8C0514B8		; addr: CE31BD4
jsr @r3		; addr: CE31BD6
mov r14,r4		; addr: CE31BD8
cmp/eq 0x01,r0 		; addr: CE31BDA
bf l_code_CE31C06		; addr: CE31BDC
bra l_code_CE31C18		; addr: CE31BDE
mov 0x0C,r4		; addr: CE31BE0

l_code_CE31BE2:
mov.l @(ptr_CE31CAC_to_extern_8C289636,pc),r1 ; r1 set to 0x8C289636		; addr: CE31BE2
mov.b @r1,r2		; addr: CE31BE4
tst r2,r2		; addr: CE31BE6
bt l_code_CE31C06		; addr: CE31BE8
mov.l @(ptr_CE31CB0_to_fn_extern_8C0514B8,pc),r3 ; r3 set to 0x8C0514B8		; addr: CE31BEA
jsr @r3		; addr: CE31BEC
mov r14,r4		; addr: CE31BEE
cmp/eq 0x01,r0 		; addr: CE31BF0
bf l_code_CE31C06		; addr: CE31BF2
mov.l @(ptr_CE31CB4_to_fn_extern_8C11E730,pc),r3 ; r3 set to 0x8C11E730		; addr: CE31BF4
jsr @r3		; addr: CE31BF6
nop 		; addr: CE31BF8
mov.l @(ptr_CE31CB8_to_extern_8C26823C,pc),r3 ; r3 set to 0x8C26823C		; addr: CE31BFA
mov.l @r3,r2		; addr: CE31BFC
mov.l @(0x1C,r2),r1 ; r1 ??? bc r2 is ???		; addr: CE31BFE
add r1,r0		; addr: CE31C00
bra l_code_CE31C16		; addr: CE31C02
mov 0x0F,r4		; addr: CE31C04

l_code_CE31C06:
mov.l @(ptr_CE31CB4_to_fn_extern_8C11E730,pc),r3 ; r3 set to 0x8C11E730		; addr: CE31C06
jsr @r3		; addr: CE31C08
nop 		; addr: CE31C0A
mov.l @(ptr_CE31CB8_to_extern_8C26823C,pc),r3 ; r3 set to 0x8C26823C		; addr: CE31C0C
mov 0x07,r4 ; r4 set to 0x07		; addr: CE31C0E
mov.l @r3,r2		; addr: CE31C10
mov.l @(0x1C,r2),r1		; addr: CE31C12
add r1,r0		; addr: CE31C14

l_code_CE31C16:
and r0,r4 ; r4 ??? bc r0 is ???		; addr: CE31C16

l_code_CE31C18:
mov.l @(ptr_CE31CBC_to_data_CE35454,pc),r3 ; r3 set to 0xCE35454, r3 set to 0xCE35454, r3 set to 0xCE35454		; addr: CE31C18
exts.b r4,r4		; addr: CE31C1A
shll r4		; addr: CE31C1C
mov.w @(data_CE31CA6,pc),r0 ; r0 set to 0x158, r0 set to 0x158, r0 set to 0x158		; addr: CE31C1E
add r4,r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???, r3 ??? bc r4 is ???		; addr: CE31C20
mov.l r3,@r15		; addr: CE31C22
mov 0x13,r5 ; r5 set to 0x13, r5 set to 0x13, r5 set to 0x13		; addr: CE31C24
mov.b @r3,r2		; addr: CE31C26
mov.b r2,@(r0,r14) 		; addr: CE31C28
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21, r0 set to 0x21		; addr: CE31C2A
mov.l @r15,r3		; addr: CE31C2C
mov.b @r3,r2		; addr: CE31C2E
mov.b r2,@(r0,r14) 		; addr: CE31C30
mov.l @r15,r2		; addr: CE31C32
mov.l @(0x04,r15),r3		; addr: CE31C34
mov.b @(0x01,r2),r0 		; addr: CE31C36
mov.b r0,@(0x0C,r3) 		; addr: CE31C38
mov.w @(data_CE31CA6,pc),r0 ; r0 set to 0x158, r0 set to 0x158, r0 set to 0x158		; addr: CE31C3A
mov.l @(ptr_CE31CC0_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C, r3 set to 0x8C034E8C		; addr: CE31C3C
mov.b @(r0,r14),r6		; addr: CE31C3E
jsr @r3		; addr: CE31C40
mov r14,r4		; addr: CE31C42
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21, r0 set to 0x21		; addr: CE31C44
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???, r0 ??? bc r14 is ???		; addr: CE31C46
extu.b r0,r0		; addr: CE31C48
cmp/eq 0x05,r0 		; addr: CE31C4A
bf l_code_CE31C5C		; addr: CE31C4C
mov r14,r4		; addr: CE31C4E
mov 0x02,r5 ; r5 set to 0x02, r5 set to 0x02, r5 set to 0x02		; addr: CE31C50
add 0x08,r15		; addr: CE31C52
lds.l @r15+,pr 		; addr: CE31C54
mov.l @(ptr_CE31CC4_to_fn_extern_8C0BDF70,pc),r2 ; r2 set to 0x8C0BDF70, r2 set to 0x8C0BDF70, r2 set to 0x8C0BDF70		; addr: CE31C56
jmp @r2		; addr: CE31C58
mov.l @r15+,r14		; addr: CE31C5A

l_code_CE31C5C:
add 0x08,r15		; addr: CE31C5C
lds.l @r15+,pr 		; addr: CE31C5E
rts 		; addr: CE31C60
mov.l @r15+,r14		; addr: CE31C62
;-------------------------------------------------------------------------------

f_code_CE31C64:
mov.w @(data_CE31CA8,pc),r5 ; r5 set to 0x2A4		; addr: CE31C64
mov 0x09,r0 ; r0 set to 0x09		; addr: CE31C66
mov.l @(ptr_CE31CC0_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE31C68
mov 0x07,r6 ; r6 set to 0x07		; addr: CE31C6A
add r4,r5 ; r5 ??? bc r4 is ???		; addr: CE31C6C
mov.b r0,@(0x0C,r5) 		; addr: CE31C6E
jmp @r3		; addr: CE31C70
mov 0x13,r5		; addr: CE31C72

f_code_CE31C74:
mov.w @(data_CE31CA8,pc),r5 ; r5 set to 0x2A4		; addr: CE31C74
mov 0x09,r0 ; r0 set to 0x09		; addr: CE31C76
mov.l @(ptr_CE31CC0_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE31C78
mov 0x08,r6 ; r6 set to 0x08		; addr: CE31C7A
add r4,r5 ; r5 ??? bc r4 is ???		; addr: CE31C7C
mov.b r0,@(0x0C,r5) 		; addr: CE31C7E
jmp @r3		; addr: CE31C80
mov 0x13,r5		; addr: CE31C82

f_code_CE31C84:
mov.l r14,@-r15		; addr: CE31C84
mov r4,r14		; addr: CE31C86
mov.b @(0x06,r14),r0 		; addr: CE31C88
mov r14,r4		; addr: CE31C8A
add 0x01,r0		; addr: CE31C8C
mov.b r0,@(0x06,r14) 		; addr: CE31C8E
mov 0x00,r0 ; r0 set to 0x00		; addr: CE31C90
mov.b r0,@(0x07,r14) 		; addr: CE31C92
mov 0x20,r0 ; r0 set to 0x20		; addr: CE31C94
mov.b @(r0,r14),r3		; addr: CE31C96
mov.l @(ptr_CE31CC8_to_ptr_CE35474_to_f_code_CE31B46,pc),r0 ; r0 set to 0xCE35474		; addr: CE31C98
extu.b r3,r3		; addr: CE31C9A
shll2 r3		; addr: CE31C9C
mov.l @(r0,r3),r2		; addr: CE31C9E
jmp @r2		; addr: CE31CA0
mov.l @r15+,r14		; addr: CE31CA2

data_CE31CA4:
#data 0x0340		; addr: CE31CA4

data_CE31CA6:
#data 0x0158		; addr: CE31CA6

data_CE31CA8:
#data 0x02A4		; addr: CE31CA8
#data 0x0000		; addr: CE31CAA

#align4
ptr_CE31CAC_to_extern_8C289636:
#data extern_8C289636		; addr: CE31CAC

ptr_CE31CB0_to_fn_extern_8C0514B8:
#data fn_extern_8C0514B8		; addr: CE31CB0

ptr_CE31CB4_to_fn_extern_8C11E730:
#data fn_extern_8C11E730		; addr: CE31CB4

ptr_CE31CB8_to_extern_8C26823C:
#data extern_8C26823C		; addr: CE31CB8

ptr_CE31CBC_to_data_CE35454:
#data data_CE35454		; addr: CE31CBC

ptr_CE31CC0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE31CC0

ptr_CE31CC4_to_fn_extern_8C0BDF70:
#data fn_extern_8C0BDF70		; addr: CE31CC4

ptr_CE31CC8_to_ptr_CE35474_to_f_code_CE31B46:
#data ptr_CE35474_to_f_code_CE31B46		; addr: CE31CC8

data_CE31CCC:
#data 0xC73C2FE6		; addr: CE31CCC
#data 0x6E43FFFB		; addr: CE31CD0
#data 0xFF084F22		; addr: CE31CD4
#data 0x03EC906F		; addr: CE31CD8
#data extern_8D042338		; addr: CE31CDC
#data 0xE03864E3		; addr: CE31CE0
#data 0xF3F0F3E6		; addr: CE31CE4
#data 0xFE37		; addr: CE31CE8

data_CE31CEA:
#data 0xD336		; addr: CE31CEA
#data 0x0009430B		; addr: CE31CEC
#data 0x4011600E		; addr: CE31CF0
#data 0x84E78908		; addr: CE31CF4
#data 0x80E77001		; addr: CE31CF8
#data 0xFEF7E060		; addr: CE31CFC
#data 0xF308C731		; addr: CE31D00
#data 0xFE37E06C		; addr: CE31D04

#align4
data_CE31D08:
#data 0xFFF94F26		; addr: CE31D08
#data 0x6EF6000B		; addr: CE31D0C
;-------------------------------------------------------------------------------

#align4
data_CE31D10:
#data 0x034C9053		; addr: CE31D10
#data 0x89132338		; addr: CE31D14
#data 0xF308C729		; addr: CE31D18
#data 0xF246E060		; addr: CE31D1C
#data 0x8B03F235		; addr: CE31D20
#data 0xF246E06C		; addr: CE31D24
#data 0xF427F24D		; addr: CE31D28

#align4
data_CE31D2C:
#data 0xF308C727		; addr: CE31D2C
#data 0xF246E060		; addr: CE31D30
#data 0x8B03F325		; addr: CE31D34
#data 0xF246E06C		; addr: CE31D38
#data 0xF427F24D		; addr: CE31D3C

#align4
data_CE31D40:
#data 0x432BD320		; addr: CE31D40
#data 0x0009		; addr: CE31D44


f_code_CE31D46:
mov.l r14,@-r15		; addr: CE31D46
sts.l pr,@-r15		; addr: CE31D48
add 0xFC,r15		; addr: CE31D4A
mov.w @(data_CE31DBC,pc),r3 ; r3 set to 0x2A4		; addr: CE31D4C
mov r4,r14		; addr: CE31D4E
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE31D50
mov.l r3,@r15		; addr: CE31D52
mov.l @(ptr_CE31DD0_to_fn_extern_8C046C8A,pc),r3 ; r3 set to 0x8C046C8A		; addr: CE31D54
jsr @r3		; addr: CE31D56
mov r14,r4		; addr: CE31D58
tst r0,r0		; addr: CE31D5A
bt l_code_CE31D70		; addr: CE31D5C
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE31D5E
mov 0x00,r0 ; r0 set to 0x00		; addr: CE31D60
mov r14,r4		; addr: CE31D62
mov.b r0,@(0x0C,r3) 		; addr: CE31D64
add 0x04,r15		; addr: CE31D66
lds.l @r15+,pr 		; addr: CE31D68
mov.l @(ptr_CE31DD4_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE31D6A
jmp @r3		; addr: CE31D6C
mov.l @r15+,r14		; addr: CE31D6E

l_code_CE31D70:
mov.b @(0x07,r14),r0 		; addr: CE31D70
mov r14,r4		; addr: CE31D72
mov.l @(ptr_CE31DD8_to_ptr_CE35488_to_data_CE31CCC,pc),r1 ; r1 set to 0xCE35488		; addr: CE31D74
extu.b r0,r0		; addr: CE31D76
shll2 r0		; addr: CE31D78
mov.l @(r0,r1),r3		; addr: CE31D7A
add 0x04,r15		; addr: CE31D7C
lds.l @r15+,pr 		; addr: CE31D7E
jmp @r3		; addr: CE31D80
mov.l @r15+,r14		; addr: CE31D82

f_code_CE31D84:
mov.l r14,@-r15		; addr: CE31D84
sts.l pr,@-r15		; addr: CE31D86
add 0xFC,r15		; addr: CE31D88
mov.w @(data_CE31DBC,pc),r3 ; r3 set to 0x2A4		; addr: CE31D8A
mov r4,r14		; addr: CE31D8C
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE31D8E
mov.l r3,@r15		; addr: CE31D90
mov.l @(ptr_CE31DD0_to_fn_extern_8C046C8A,pc),r3 ; r3 set to 0x8C046C8A		; addr: CE31D92
jsr @r3		; addr: CE31D94
mov r14,r4		; addr: CE31D96
tst r0,r0		; addr: CE31D98
bt l_code_CE31DAE		; addr: CE31D9A
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE31D9C
mov 0x00,r0 ; r0 set to 0x00		; addr: CE31D9E
mov r14,r4		; addr: CE31DA0
mov.b r0,@(0x0C,r3) 		; addr: CE31DA2
add 0x04,r15		; addr: CE31DA4
lds.l @r15+,pr 		; addr: CE31DA6
mov.l @(ptr_CE31DD4_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE31DA8
jmp @r3		; addr: CE31DAA
mov.l @r15+,r14		; addr: CE31DAC

l_code_CE31DAE:
mov r14,r4		; addr: CE31DAE
add 0x04,r15		; addr: CE31DB0
lds.l @r15+,pr 		; addr: CE31DB2
mov.l @(ptr_CE31DC4_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE		; addr: CE31DB4
jmp @r2		; addr: CE31DB6
mov.l @r15+,r14		; addr: CE31DB8
#data 0x014B		; addr: CE31DBA

data_CE31DBC:
#data 0x02A4		; addr: CE31DBC
#data 0x0000		; addr: CE31DBE
#data 0x3F892492		; addr: CE31DC0

#align4
ptr_CE31DC4_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31DC4
#data 0xBD892492		; addr: CE31DC8
#data 0xBF892492		; addr: CE31DCC

#align4
ptr_CE31DD0_to_fn_extern_8C046C8A:
#data fn_extern_8C046C8A		; addr: CE31DD0

ptr_CE31DD4_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE31DD4

ptr_CE31DD8_to_ptr_CE35488_to_data_CE31CCC:
#data ptr_CE35488_to_data_CE31CCC		; addr: CE31DD8


f_code_CE31DDC:
mov.w @(data_CE31EEE,pc),r3 ; r3 set to 0xFF		; addr: CE31DDC
mov.w @(data_CE31EF0,pc),r0 ; r0 set to 0x326		; addr: CE31DDE
mov.l r14,@-r15		; addr: CE31DE0
mov r4,r14		; addr: CE31DE2
sts.l pr,@-r15		; addr: CE31DE4
mov.b r3,@(r0,r14) 		; addr: CE31DE6
mov.l @(ptr_CE31EFC_to_fn_extern_8C046C8A,pc),r3 ; r3 set to 0x8C046C8A		; addr: CE31DE8
jsr @r3		; addr: CE31DEA
mov r14,r4		; addr: CE31DEC
mov.l @(ptr_CE31F00_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE		; addr: CE31DEE
jsr @r2		; addr: CE31DF0
mov r14,r4		; addr: CE31DF2
mov.w @(data_CE31EF2,pc),r0 ; r0 set to 0x141		; addr: CE31DF4
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE31DF6
tst r3,r3		; addr: CE31DF8
bt l_code_CE31E16		; addr: CE31DFA
mov 0x25,r0 ; r0 set to 0x25		; addr: CE31DFC
mov.l @(ptr_CE31F08_to_fn_extern_8C03544C,pc),r3 ; r3 set to 0x8C03544C		; addr: CE31DFE
mov.b @(r0,r14),r6		; addr: CE31E00
mov r14,r4		; addr: CE31E02
mov.l @(ptr_CE31F04_to_data_CE35264,pc),r0 ; r0 set to 0xCE35264		; addr: CE31E04
mov 0x01,r7 ; r7 set to 0x01		; addr: CE31E06
extu.b r6,r6		; addr: CE31E08
lds.l @r15+,pr 		; addr: CE31E0A
shll2 r6		; addr: CE31E0C
mov.l @(r0,r6),r6		; addr: CE31E0E
mov 0x00,r5 ; r5 set to 0x00		; addr: CE31E10
jmp @r3		; addr: CE31E12
mov.l @r15+,r14		; addr: CE31E14

l_code_CE31E16:
lds.l @r15+,pr 		; addr: CE31E16
rts 		; addr: CE31E18
mov.l @r15+,r14		; addr: CE31E1A
;-------------------------------------------------------------------------------

f_code_CE31E1C:
mov 0x21,r0 ; r0 set to 0x21		; addr: CE31E1C
mov r4,r3		; addr: CE31E1E
mov.l r4,@-r15		; addr: CE31E20
mov.b @(r0,r3),r2		; addr: CE31E22
mov.l @(ptr_CE31F0C_to_ptr_CE35490_to_f_code_CE31D46,pc),r0 ; r0 set to 0xCE35490		; addr: CE31E24
extu.b r2,r2		; addr: CE31E26
shll2 r2		; addr: CE31E28
mov.l @(r0,r2),r3		; addr: CE31E2A
jmp @r3		; addr: CE31E2C
add 0x04,r15		; addr: CE31E2E

f_code_CE31E30:
mov.l r14,@-r15		; addr: CE31E30
sts.l pr,@-r15		; addr: CE31E32
add 0xFC,r15		; addr: CE31E34
mov.w @(data_CE31EF4,pc),r3 ; r3 set to 0x2A4		; addr: CE31E36
mov r4,r14		; addr: CE31E38
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE31E3A
mov.l r3,@r15		; addr: CE31E3C
mov.l @(ptr_CE31EFC_to_fn_extern_8C046C8A,pc),r3 ; r3 set to 0x8C046C8A		; addr: CE31E3E
jsr @r3		; addr: CE31E40
mov r14,r4		; addr: CE31E42
tst r0,r0		; addr: CE31E44
bt l_code_CE31E5A		; addr: CE31E46
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE31E48
mov 0x00,r0 ; r0 set to 0x00		; addr: CE31E4A
mov r14,r4		; addr: CE31E4C
mov.b r0,@(0x0C,r3) 		; addr: CE31E4E
add 0x04,r15		; addr: CE31E50
lds.l @r15+,pr 		; addr: CE31E52
mov.l @(ptr_CE31F10_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE31E54
jmp @r3		; addr: CE31E56
mov.l @r15+,r14		; addr: CE31E58

l_code_CE31E5A:
mov r14,r4		; addr: CE31E5A
add 0x04,r15		; addr: CE31E5C
lds.l @r15+,pr 		; addr: CE31E5E
mov.l @(ptr_CE31F00_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE		; addr: CE31E60
jmp @r2		; addr: CE31E62
mov.l @r15+,r14		; addr: CE31E64

f_code_CE31E66:
mov 0x20,r0 ; r0 set to 0x20		; addr: CE31E66
mov r4,r3		; addr: CE31E68
mov.l r4,@-r15		; addr: CE31E6A
mov.b @(r0,r3),r2		; addr: CE31E6C
mov.l @(ptr_CE31F14_to_ptr_CE354A8_to_f_code_CE31E1C,pc),r0 ; r0 set to 0xCE354A8		; addr: CE31E6E
extu.b r2,r2		; addr: CE31E70
shll2 r2		; addr: CE31E72
mov.l @(r0,r2),r3		; addr: CE31E74
jmp @r3		; addr: CE31E76
add 0x04,r15		; addr: CE31E78

f_code_CE31E7A:
mov.l r14,@-r15		; addr: CE31E7A
mov r4,r14		; addr: CE31E7C
mov.w @(data_CE31EF4,pc),r4 ; r4 set to 0x2A4		; addr: CE31E7E
mov 0x00,r0 ; r0 set to 0x00		; addr: CE31E80
add r14,r4 ; r4 ??? bc r14 is ???		; addr: CE31E82
mov.b r0,@(0x0C,r4) 		; addr: CE31E84
mov r14,r4		; addr: CE31E86
mov.w @(data_CE31EF6,pc),r0 ; r0 set to 0x1E9		; addr: CE31E88
mov.b @(r0,r14),r3		; addr: CE31E8A
mov.l @(ptr_CE31F18_to_ptr_CE354BC_to_f_code_CE31EC0,pc),r0 ; r0 set to 0xCE354BC		; addr: CE31E8C
extu.b r3,r3		; addr: CE31E8E
shll2 r3		; addr: CE31E90
mov.l @(r0,r3),r2		; addr: CE31E92
jmp @r2		; addr: CE31E94
mov.l @r15+,r14		; addr: CE31E96

f_code_CE31E98:
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE31E98
fldi0 fr4		; addr: CE31E9A
fmov.s fr4,@(r0,r4) 		; addr: CE31E9C
mov 0x60,r0 ; r0 set to 0x60		; addr: CE31E9E
fmov.s fr4,@(r0,r4) 		; addr: CE31EA0
mov 0x68,r0 ; r0 set to 0x68		; addr: CE31EA2
fmov.s fr4,@(r0,r4) 		; addr: CE31EA4
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE31EA6
fmov.s fr4,@(r0,r4) 		; addr: CE31EA8
mov 0x00,r5 ; r5 set to 0x00		; addr: CE31EAA
mov.w @(data_CE31EF8,pc),r0 ; r0 set to 0x1FC		; addr: CE31EAC
mov.l @(ptr_CE31F1C_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A		; addr: CE31EAE
mov.b r5,@(r0,r4) 		; addr: CE31EB0
add 0xFD,r0 ; r0 set to 0x1F9		; addr: CE31EB2
mov.b r5,@(r0,r4) 		; addr: CE31EB4
mov.w @(data_CE31EFA,pc),r0 ; r0 set to 0x41C		; addr: CE31EB6
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???		; addr: CE31EB8
mov 0x38,r0 ; r0 set to 0x38		; addr: CE31EBA
jmp @r3		; addr: CE31EBC
fmov.s fr3,@(r0,r4) 		; addr: CE31EBE

f_code_CE31EC0:
mov r4,r3		; addr: CE31EC0
mov.l @(ptr_CE31F20_to_ptr_CE354FC_to_f_code_CE31ED2,pc),r1 ; r1 set to 0xCE354FC		; addr: CE31EC2
mov.l r4,@-r15		; addr: CE31EC4
mov.b @(0x06,r3),r0 		; addr: CE31EC6
extu.b r0,r0		; addr: CE31EC8
shll2 r0		; addr: CE31ECA
mov.l @(r0,r1),r3		; addr: CE31ECC
jmp @r3		; addr: CE31ECE
add 0x04,r15		; addr: CE31ED0

f_code_CE31ED2:
mov.l r14,@-r15		; addr: CE31ED2
mov r4,r14		; addr: CE31ED4
mov.w @(data_CE31EF4,pc),r4 ; r4 set to 0x2A4		; addr: CE31ED6
mov 0x0A,r0 ; r0 set to 0x0A		; addr: CE31ED8
mov.l @(ptr_CE31F24_to_ptr_CE35504_to_f_code_CE31F28,pc),r1 ; r1 set to 0xCE35504		; addr: CE31EDA
add r14,r4 ; r4 ??? bc r14 is ???		; addr: CE31EDC
mov.b r0,@(0x0C,r4) 		; addr: CE31EDE
mov r14,r4		; addr: CE31EE0
mov.b @(0x07,r14),r0 		; addr: CE31EE2
extu.b r0,r0 ; r0 set to 0x0A		; addr: CE31EE4
shll2 r0 ; r0 set to 0x28		; addr: CE31EE6
mov.l @(r0,r1),r3		; addr: CE31EE8
jmp @r3		; addr: CE31EEA
mov.l @r15+,r14		; addr: CE31EEC

data_CE31EEE:
#data 0x00FF		; addr: CE31EEE

data_CE31EF0:
#data 0x0326		; addr: CE31EF0

data_CE31EF2:
#data 0x0141		; addr: CE31EF2

data_CE31EF4:
#data 0x02A4		; addr: CE31EF4

data_CE31EF6:
#data 0x01E9		; addr: CE31EF6

data_CE31EF8:
#data 0x01FC		; addr: CE31EF8

data_CE31EFA:
#data 0x041C		; addr: CE31EFA

#align4
ptr_CE31EFC_to_fn_extern_8C046C8A:
#data fn_extern_8C046C8A		; addr: CE31EFC

ptr_CE31F00_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31F00

ptr_CE31F04_to_data_CE35264:
#data data_CE35264		; addr: CE31F04

ptr_CE31F08_to_fn_extern_8C03544C:
#data fn_extern_8C03544C		; addr: CE31F08

ptr_CE31F0C_to_ptr_CE35490_to_f_code_CE31D46:
#data ptr_CE35490_to_f_code_CE31D46		; addr: CE31F0C

ptr_CE31F10_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE31F10

ptr_CE31F14_to_ptr_CE354A8_to_f_code_CE31E1C:
#data ptr_CE354A8_to_f_code_CE31E1C		; addr: CE31F14

ptr_CE31F18_to_ptr_CE354BC_to_f_code_CE31EC0:
#data ptr_CE354BC_to_f_code_CE31EC0		; addr: CE31F18

ptr_CE31F1C_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE31F1C

ptr_CE31F20_to_ptr_CE354FC_to_f_code_CE31ED2:
#data ptr_CE354FC_to_f_code_CE31ED2		; addr: CE31F20

ptr_CE31F24_to_ptr_CE35504_to_f_code_CE31F28:
#data ptr_CE35504_to_f_code_CE31F28		; addr: CE31F24


f_code_CE31F28:
mov.l r14,@-r15		; addr: CE31F28
mov r4,r14		; addr: CE31F2A
mov 0x37,r3 ; r3 set to 0x37		; addr: CE31F2C
mov 0x00,r4 ; r4 set to 0x00		; addr: CE31F2E
sts.l pr,@-r15		; addr: CE31F30
mov.b @(0x07,r14),r0 		; addr: CE31F32
mov 0x05,r5 ; r5 set to 0x05		; addr: CE31F34
add 0x01,r0		; addr: CE31F36
mov.b r0,@(0x07,r14) 		; addr: CE31F38
mov.w @(data_CE32078,pc),r0 ; r0 set to 0x1A1		; addr: CE31F3A
mov.b r3,@(r0,r14) 		; addr: CE31F3C
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE31F3E
mov.w r4,@(r0,r14) 		; addr: CE31F40
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE31F42
mov.b r4,@(r0,r14) 		; addr: CE31F44
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE31F46
mov.l @(ptr_CE32084_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE31F48
mov.l r4,@(r0,r14) 		; addr: CE31F4A
mov.b @(0x02,r14),r0 		; addr: CE31F4C
mov.l @r3,r2		; addr: CE31F4E
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE31F50
shll r0 ; r0 set to 0x188		; addr: CE31F52
add 0x7C,r2		; addr: CE31F54
mov.w @(r0,r2),r1		; addr: CE31F56
add 0x01,r1		; addr: CE31F58
mov.w r1,@(r0,r2) 		; addr: CE31F5A
mov.l @(ptr_CE32088_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4		; addr: CE31F5C
jsr @r2		; addr: CE31F5E
mov r14,r4 ; r4 ??? bc r14 is ???		; addr: CE31F60
bsr f_code_CE31E98		; addr: CE31F62
mov r14,r4		; addr: CE31F64
mov.l @(ptr_CE3208C_to_fn_extern_8C05115A,pc),r2 ; r2 set to 0x8C05115A		; addr: CE31F66
jsr @r2		; addr: CE31F68
mov r14,r4		; addr: CE31F6A
mov.w @(data_CE3207A,pc),r0 ; r0 set to 0x1A3		; addr: CE31F6C
mov 0x15,r5 ; r5 set to 0x15		; addr: CE31F6E
mov r14,r4		; addr: CE31F70
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE31F72
add 0xB5,r0 ; r0 set to 0x158		; addr: CE31F74
mov.b r3,@(r0,r14) 		; addr: CE31F76
lds.l @r15+,pr 		; addr: CE31F78
mov.l @(ptr_CE32090_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE31F7A
mov.b @(r0,r14),r6		; addr: CE31F7C
jmp @r3		; addr: CE31F7E
mov.l @r15+,r14		; addr: CE31F80

data_CE31F82:
#data 0x907C		; addr: CE31F82
#data 0x6E432FE6		; addr: CE31F84
#data 0x4F222FD6		; addr: CE31F88
#data 0x9D7503EC		; addr: CE31F8C
#data extern_8D102338		; addr: CE31F90
#data 0xE3003DEC		; addr: CE31F94
#data 0x66336533		; addr: CE31F98
#data 0xD33D0E34		; addr: CE31F9C
#data 0x64E3430B		; addr: CE31FA0
#data 0x89062008		; addr: CE31FA4
#data 0xE301E01A		; addr: CE31FA8
#data 0xE51E0D34		; addr: CE31FAC
#data 0x430BD339		; addr: CE31FB0
#data 0x64E3		; addr: CE31FB4

data_CE31FB6:
#data 0xD239		; addr: CE31FB6
#data 0x64E3420B		; addr: CE31FB8
#data 0x4011600E		; addr: CE31FBC
#data 0xE0008907		; addr: CE31FC0
#data 0x80DCD336		; addr: CE31FC4
#data 0x4F2664E3		; addr: CE31FC8
#data 0x432B6DF6		; addr: CE31FCC
#data 0x6EF6		; addr: CE31FD0

data_CE31FD2:
#data 0x4F26		; addr: CE31FD2
#data 0x000B6DF6		; addr: CE31FD4
#data 0x6EF6		; addr: CE31FD8
;-------------------------------------------------------------------------------

f_code_CE31FDA:
mov.l r14,@-r15		; addr: CE31FDA
mov r4,r14		; addr: CE31FDC
mov.w @(data_CE3207C,pc),r4 ; r4 set to 0x2A4		; addr: CE31FDE
mov 0x0B,r0 ; r0 set to 0x0B		; addr: CE31FE0
mov.l @(ptr_CE320A4_to_ptr_CE3550C_to_f_code_CE31FF6,pc),r1 ; r1 set to 0xCE3550C		; addr: CE31FE2
add r14,r4 ; r4 ??? bc r14 is ???		; addr: CE31FE4
mov.b r0,@(0x0C,r4) 		; addr: CE31FE6
mov r14,r4		; addr: CE31FE8
mov.b @(0x07,r14),r0 		; addr: CE31FEA
extu.b r0,r0 ; r0 set to 0x0B		; addr: CE31FEC
shll2 r0 ; r0 set to 0x2C		; addr: CE31FEE
mov.l @(r0,r1),r3		; addr: CE31FF0
jmp @r3		; addr: CE31FF2
mov.l @r15+,r14		; addr: CE31FF4

f_code_CE31FF6:
mov.l r14,@-r15		; addr: CE31FF6
mov r4,r14		; addr: CE31FF8
mov 0x38,r3 ; r3 set to 0x38		; addr: CE31FFA
mov 0x00,r4 ; r4 set to 0x00		; addr: CE31FFC
sts.l pr,@-r15		; addr: CE31FFE
mov.b @(0x07,r14),r0 		; addr: CE32000
mov 0x05,r5 ; r5 set to 0x05		; addr: CE32002
add 0x01,r0		; addr: CE32004
mov.b r0,@(0x07,r14) 		; addr: CE32006
mov.w @(data_CE32078,pc),r0 ; r0 set to 0x1A1		; addr: CE32008
mov.b r3,@(r0,r14) 		; addr: CE3200A
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE3200C
mov.w r4,@(r0,r14) 		; addr: CE3200E
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE32010
mov.b r4,@(r0,r14) 		; addr: CE32012
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE32014
mov.l @(ptr_CE32084_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE32016
mov.l r4,@(r0,r14) 		; addr: CE32018
mov.b @(0x02,r14),r0 		; addr: CE3201A
mov.l @r3,r2		; addr: CE3201C
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE3201E
shll r0 ; r0 set to 0x188		; addr: CE32020
add 0x7C,r2		; addr: CE32022
mov.w @(r0,r2),r1		; addr: CE32024
add 0x01,r1		; addr: CE32026
mov.w r1,@(r0,r2) 		; addr: CE32028
mov.l @(ptr_CE32088_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4		; addr: CE3202A
jsr @r2		; addr: CE3202C
mov r14,r4 ; r4 ??? bc r14 is ???		; addr: CE3202E
mov.l @(ptr_CE320A8_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A		; addr: CE32030
jsr @r3		; addr: CE32032
mov r14,r4		; addr: CE32034
mov.w @(data_CE32080,pc),r0 ; r0 set to 0x1F9		; addr: CE32036
mov 0x02,r2 ; r2 set to 0x02		; addr: CE32038
mov 0x15,r5 ; r5 set to 0x15		; addr: CE3203A
mov r14,r4		; addr: CE3203C
mov.b r2,@(r0,r14) 		; addr: CE3203E
mova @(data_CE320AC,pc),r0  ; r0 set to 0xCE320AC		; addr: CE32040
fmov.s @r0,fr4		; addr: CE32042
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32044
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE32046
fdiv fr4,fr3		; addr: CE32048
fmov.s fr3,@(r0,r14) 		; addr: CE3204A
mov 0x68,r0 ; r0 set to 0x68		; addr: CE3204C
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE3204E
fdiv fr4,fr2		; addr: CE32050
fmov.s fr2,@(r0,r14) 		; addr: CE32052
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32054
fmov.s @(r0,r14),fr3		; addr: CE32056
fdiv fr4,fr3		; addr: CE32058
fmov.s fr3,@(r0,r14) 		; addr: CE3205A
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE3205C
fmov.s @(r0,r14),fr2		; addr: CE3205E
fdiv fr4,fr2		; addr: CE32060
fmov.s fr2,@(r0,r14) 		; addr: CE32062
mov.w @(data_CE3207A,pc),r0 ; r0 set to 0x1A3		; addr: CE32064
mov.b @(r0,r14),r3		; addr: CE32066
add 0xB5,r0 ; r0 set to 0x158		; addr: CE32068
add 0x02,r3		; addr: CE3206A
mov.b r3,@(r0,r14) 		; addr: CE3206C
lds.l @r15+,pr 		; addr: CE3206E
mov.l @(ptr_CE32090_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE32070
mov.b @(r0,r14),r6		; addr: CE32072
jmp @r3		; addr: CE32074
mov.l @r15+,r14		; addr: CE32076

data_CE32078:
#data 0x01A1		; addr: CE32078

data_CE3207A:
#data 0x01A3		; addr: CE3207A

data_CE3207C:
#data 0x02A4		; addr: CE3207C
#data 0x0141		; addr: CE3207E

data_CE32080:
#data 0x01F9		; addr: CE32080
#data 0x0000		; addr: CE32082

#align4
ptr_CE32084_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE32084

ptr_CE32088_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE32088

ptr_CE3208C_to_fn_extern_8C05115A:
#data fn_extern_8C05115A		; addr: CE3208C

ptr_CE32090_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE32090
#data extern_8C062148		; addr: CE32094
#data fn_extern_8C042008		; addr: CE32098
#data fn_extern_8C034DEE		; addr: CE3209C
#data fn_extern_8C051648		; addr: CE320A0

#align4
ptr_CE320A4_to_ptr_CE3550C_to_f_code_CE31FF6:
#data ptr_CE3550C_to_f_code_CE31FF6		; addr: CE320A4

ptr_CE320A8_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE320A8

data_CE320AC:
#data 0x41000000		; addr: CE320AC

#align4
data_CE320B0:
#data 0x4F222FE6		; addr: CE320B0
#data 0x906F7FFC		; addr: CE320B4
#data 0x936C6E43		; addr: CE320B8
#data 0x2F3233EC		; addr: CE320BC
#data 0x222802EC		; addr: CE320C0
#data 0xD336890A		; addr: CE320C4
#data 0xE501E200		; addr: CE320C8
#data 0x66230E24		; addr: CE320CC
#data 0x64E3430B		; addr: CE320D0
#data 0xE51ED233		; addr: CE320D4
#data 0x64E3420B		; addr: CE320D8

#align4
data_CE320DC:
#data 0x31ECE15C		; addr: CE320DC
#data 0xF318E034		; addr: CE320E0
#data 0xE168F2E6		; addr: CE320E4
#data 0xF23031EC		; addr: CE320E8
#data 0xE05CFE27		; addr: CE320EC
#data 0xF318F2E6		; addr: CE320F0
#data 0x31ECE160		; addr: CE320F4
#data 0xFE27F230		; addr: CE320F8
#data 0xF2E6E038		; addr: CE320FC
#data 0xE16CF318		; addr: CE32100
#data 0xF23031EC		; addr: CE32104
#data 0xE060FE27		; addr: CE32108
#data 0xF318F2E6		; addr: CE3210C
#data 0xFE27F230		; addr: CE32110
#data 0xF3E69041		; addr: CE32114
#data 0xF2E6E038		; addr: CE32118
#data 0x8F04F325		; addr: CE3211C
#data 0x903A64E3		; addr: CE32120
#data 0xE038F3E6		; addr: CE32124
#data 0xFE37		; addr: CE32128

data_CE3212A:
#data 0xD31F		; addr: CE3212A
#data 0x0009430B		; addr: CE3212C
#data 0x4011600E		; addr: CE32130
#data 0x84E7892B		; addr: CE32134
#data 0x80E77001		; addr: CE32138
#data 0x63F2E000		; addr: CE3213C
#data 0x902B803C		; addr: CE32140
#data 0x233803EC		; addr: CE32144
#data 0xC7188902		; addr: CE32148
#data 0xF308A002		; addr: CE3214C

#align4
data_CE32150:
#data 0xF308C717		; addr: CE32150

#align4
data_CE32154:
#data 0xFE37E05C		; addr: CE32154
#data 0x03EC9020		; addr: CE32158
#data 0x89022338		; addr: CE3215C
#data 0xA002C714		; addr: CE32160
#data 0xF308		; addr: CE32164

data_CE32166:
#data 0xC714		; addr: CE32166
#data 0xF308		; addr: CE32168

data_CE3216A:
#data 0xE068		; addr: CE3216A
#data 0xFE3764E3		; addr: CE3216C
#data 0xF308C712		; addr: CE32170
#data 0xE515E060		; addr: CE32174
#data 0xC711FE37		; addr: CE32178
#data 0xE06CF308		; addr: CE3217C
#data 0xFE37E604		; addr: CE32180
#data 0x4F267F04		; addr: CE32184
#data 0x432BD30E		; addr: CE32188
#data 0x6EF6		; addr: CE3218C

data_CE3218E:
#data 0x7F04		; addr: CE3218E
#data 0x000B4F26		; addr: CE32190
#data 0x02A46EF6		; addr: CE32194
#data 0x041C0141		; addr: CE32198
#data 0x000001D2		; addr: CE3219C
#data extern_8C062148		; addr: CE321A0
#data fn_extern_8C042008		; addr: CE321A4
#data fn_extern_8C034DEE		; addr: CE321A8
#data 0xBFD55555		; addr: CE321AC
#data 0x3FD55555		; addr: CE321B0
#data 0x3CD55555		; addr: CE321B4
#data 0xBCD55555		; addr: CE321B8
#data 0x40F00000		; addr: CE321BC
#data 0xBECDB6DB		; addr: CE321C0
#data fn_extern_8C034E8C		; addr: CE321C4


f_code_CE321C8:
mov.l r14,@-r15		; addr: CE321C8
mov r4,r14		; addr: CE321CA
mov.w @(data_CE322F0,pc),r4 ; r4 set to 0x2A4		; addr: CE321CC
mov 0x00,r0 ; r0 set to 0x00		; addr: CE321CE
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE321D0
add r14,r4 ; r4 ??? bc r14 is ???		; addr: CE321D2
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE321D4
sts.l pr,@-r15		; addr: CE321D6
mov.b r0,@(0x0C,r4) 		; addr: CE321D8
mov 0x34,r0 ; r0 set to 0x34		; addr: CE321DA
fmov.s @(r0,r14),fr2		; addr: CE321DC
fmov.s @r1,fr3		; addr: CE321DE
mov 0x68,r1 ; r1 set to 0x68		; addr: CE321E0
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE321E2
fadd fr3,fr2		; addr: CE321E4
fmov.s fr2,@(r0,r14) 		; addr: CE321E6
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE321E8
fmov.s @(r0,r14),fr2		; addr: CE321EA
fmov.s @r1,fr3		; addr: CE321EC
mov 0x60,r1 ; r1 set to 0x60		; addr: CE321EE
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE321F0
fadd fr3,fr2		; addr: CE321F2
fmov.s fr2,@(r0,r14) 		; addr: CE321F4
mov 0x38,r0 ; r0 set to 0x38		; addr: CE321F6
fmov.s @(r0,r14),fr2		; addr: CE321F8
fmov.s @r1,fr3		; addr: CE321FA
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE321FC
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE321FE
fadd fr3,fr2		; addr: CE32200
fmov.s fr2,@(r0,r14) 		; addr: CE32202
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32204
fmov.s @r1,fr3		; addr: CE32206
fmov.s @(r0,r14),fr2		; addr: CE32208
mov.l @(ptr_CE322FC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3220A
fadd fr3,fr2		; addr: CE3220C
fmov.s fr2,@(r0,r14) 		; addr: CE3220E
jsr @r3		; addr: CE32210
mov r14,r4		; addr: CE32212
exts.b r0,r4		; addr: CE32214
cmp/pz r4		; addr: CE32216
bt l_code_CE32224		; addr: CE32218
lds.l @r15+,pr 		; addr: CE3221A
mov.l @(ptr_CE32300_to_fn_extern_8C05176E,pc),r3 ; r3 set to 0x8C05176E		; addr: CE3221C
mov r14,r4		; addr: CE3221E
jmp @r3		; addr: CE32220
mov.l @r15+,r14		; addr: CE32222

l_code_CE32224:
lds.l @r15+,pr 		; addr: CE32224
rts 		; addr: CE32226
mov.l @r15+,r14		; addr: CE32228
;-------------------------------------------------------------------------------

f_code_CE3222A:
mov r4,r3		; addr: CE3222A
mov.l @(ptr_CE32304_to_ptr_CE35518_to_f_code_CE3223C,pc),r1 ; r1 set to 0xCE35518		; addr: CE3222C
mov.l r4,@-r15		; addr: CE3222E
mov.b @(0x06,r3),r0 		; addr: CE32230
extu.b r0,r0		; addr: CE32232
shll2 r0		; addr: CE32234
mov.l @(r0,r1),r3		; addr: CE32236
jmp @r3		; addr: CE32238
add 0x04,r15		; addr: CE3223A

f_code_CE3223C:
mov r4,r3		; addr: CE3223C
mov.l @(ptr_CE32308_to_ptr_CE35520_to_f_code_CE3224E,pc),r1 ; r1 set to 0xCE35520		; addr: CE3223E
mov.l r4,@-r15		; addr: CE32240
mov.b @(0x07,r3),r0 		; addr: CE32242
extu.b r0,r0		; addr: CE32244
shll2 r0		; addr: CE32246
mov.l @(r0,r1),r3		; addr: CE32248
jmp @r3		; addr: CE3224A
add 0x04,r15		; addr: CE3224C

f_code_CE3224E:
mov.l r14,@-r15		; addr: CE3224E
mov r4,r14		; addr: CE32250
sts.l pr,@-r15		; addr: CE32252
mov.b @(0x07,r14),r0 		; addr: CE32254
add 0x01,r0		; addr: CE32256
mov.b r0,@(0x07,r14) 		; addr: CE32258
mov.w @(data_CE322F2,pc),r0 ; r0 set to 0x255		; addr: CE3225A
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3225C
extu.b r0,r0		; addr: CE3225E
cmp/eq 0x03,r0 		; addr: CE32260
bf/s l_code_CE3226E		; addr: CE32262
mov 0x00,r4 ; r4 set to 0x00		; addr: CE32264
mov.w @(data_CE322F4,pc),r0 ; r0 set to 0x1A1		; addr: CE32266
mov 0x31,r2 ; r2 set to 0x31		; addr: CE32268
bra l_code_CE32278		; addr: CE3226A
mov.b r2,@(r0,r14) 		; addr: CE3226C

l_code_CE3226E:
mov.w @(data_CE322F6,pc),r0 ; r0 set to 0x1A3		; addr: CE3226E
mov.b @(r0,r14),r3		; addr: CE32270
add 0xFE,r0 ; r0 set to 0x1A1		; addr: CE32272
add 0x30,r3		; addr: CE32274
mov.b r3,@(r0,r14) 		; addr: CE32276

l_code_CE32278:
mov.w @(data_CE322F8,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1AC		; addr: CE32278
mov 0x05,r5 ; r5 set to 0x05, r5 set to 0x05		; addr: CE3227A
mov.l @(ptr_CE3230C_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0		; addr: CE3227C
mov.w r4,@(r0,r14) 		; addr: CE3227E
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19E		; addr: CE32280
mov.b r4,@(r0,r14) 		; addr: CE32282
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4		; addr: CE32284
mov.l r4,@(r0,r14) 		; addr: CE32286
mov.b @(0x02,r14),r0 		; addr: CE32288
mov.l @r3,r2		; addr: CE3228A
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4		; addr: CE3228C
mov.l @(ptr_CE32310_to_fn_extern_8C056DE4,pc),r3 ; r3 set to 0x8C056DE4, r3 set to 0x8C056DE4		; addr: CE3228E
shll r0 ; r0 set to 0x188, r0 set to 0x188		; addr: CE32290
add 0x7C,r2		; addr: CE32292
mov.w @(r0,r2),r1		; addr: CE32294
add 0x01,r1		; addr: CE32296
mov.w r1,@(r0,r2) 		; addr: CE32298
jsr @r3		; addr: CE3229A
mov r14,r4		; addr: CE3229C
bsr f_code_CE31E98		; addr: CE3229E
mov r14,r4		; addr: CE322A0
mov.l @(ptr_CE32314_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A, r3 set to 0x8C05115A		; addr: CE322A2
jsr @r3		; addr: CE322A4
mov r14,r4		; addr: CE322A6
mov.w @(data_CE322FA,pc),r0 ; r0 set to 0x1D2, r0 set to 0x1D2		; addr: CE322A8
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???		; addr: CE322AA
tst r3,r3		; addr: CE322AC
bt l_code_CE322C2		; addr: CE322AE
mov.w @(data_CE322F6,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3		; addr: CE322B0
mov.b @(r0,r14),r3		; addr: CE322B2
mov.l @(ptr_CE32318_to_data_CE35530,pc),r0 ; r0 set to 0xCE35530, r0 set to 0xCE35530		; addr: CE322B4
extu.b r3,r3		; addr: CE322B6
shll2 r3		; addr: CE322B8
shll2 r3		; addr: CE322BA
fmov.s @(r0,r3),fr3		; addr: CE322BC
bra l_code_CE322D2		; addr: CE322BE
nop 		; addr: CE322C0

l_code_CE322C2:
mov.w @(data_CE322F6,pc),r0 ; r0 set to 0x1A3		; addr: CE322C2
mov.b @(r0,r14),r2		; addr: CE322C4
mov.l @(ptr_CE32318_to_data_CE35530,pc),r0 ; r0 set to 0xCE35530		; addr: CE322C6
extu.b r2,r2		; addr: CE322C8
shll2 r2		; addr: CE322CA
shll2 r2		; addr: CE322CC
fmov.s @(r0,r2),fr3		; addr: CE322CE
fneg fr3		; addr: CE322D0

l_code_CE322D2:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C		; addr: CE322D2
fmov.s fr3,@(r0,r14) 		; addr: CE322D4
mov.w @(data_CE322FA,pc),r0 ; r0 set to 0x1D2, r0 set to 0x1D2		; addr: CE322D6
mov.b @(r0,r14),r3		; addr: CE322D8
tst r3,r3		; addr: CE322DA
bt l_code_CE32320		; addr: CE322DC
mov.w @(data_CE322F6,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3		; addr: CE322DE
mov.b @(r0,r14),r3		; addr: CE322E0
mov.l @(ptr_CE3231C_to_f_code_CE35534,pc),r0 ; r0 set to 0xCE35534, r0 set to 0xCE35534		; addr: CE322E2
extu.b r3,r3		; addr: CE322E4
shll2 r3		; addr: CE322E6
shll2 r3		; addr: CE322E8
fmov.s @(r0,r3),fr3		; addr: CE322EA
bra l_code_CE32330		; addr: CE322EC
nop 		; addr: CE322EE

data_CE322F0:
#data 0x02A4		; addr: CE322F0

data_CE322F2:
#data 0x0255		; addr: CE322F2

data_CE322F4:
#data 0x01A1		; addr: CE322F4

data_CE322F6:
#data 0x01A3		; addr: CE322F6

data_CE322F8:
#data 0x01AC		; addr: CE322F8

data_CE322FA:
#data 0x01D2		; addr: CE322FA

#align4
ptr_CE322FC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE322FC

ptr_CE32300_to_fn_extern_8C05176E:
#data fn_extern_8C05176E		; addr: CE32300

ptr_CE32304_to_ptr_CE35518_to_f_code_CE3223C:
#data ptr_CE35518_to_f_code_CE3223C		; addr: CE32304

ptr_CE32308_to_ptr_CE35520_to_f_code_CE3224E:
#data ptr_CE35520_to_f_code_CE3224E		; addr: CE32308

ptr_CE3230C_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE3230C

ptr_CE32310_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE32310

ptr_CE32314_to_fn_extern_8C05115A:
#data fn_extern_8C05115A		; addr: CE32314

ptr_CE32318_to_data_CE35530:
#data data_CE35530		; addr: CE32318

ptr_CE3231C_to_f_code_CE35534:
#data f_code_CE35534		; addr: CE3231C


l_code_CE32320:
mov.w @(data_CE32448,pc),r0 ; r0 set to 0x1A3		; addr: CE32320
mov.b @(r0,r14),r2		; addr: CE32322
mov.l @(ptr_CE32454_to_f_code_CE35534,pc),r0 ; r0 set to 0xCE35534		; addr: CE32324
extu.b r2,r2		; addr: CE32326
shll2 r2		; addr: CE32328
shll2 r2		; addr: CE3232A
fmov.s @(r0,r2),fr3		; addr: CE3232C
fneg fr3		; addr: CE3232E

l_code_CE32330:
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68		; addr: CE32330
mov.l @(ptr_CE32458_to_data_CE35530,pc),r4 ; r4 set to 0xCE35530, r4 set to 0xCE35530		; addr: CE32332
fmov.s fr3,@(r0,r14) 		; addr: CE32334
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15		; addr: CE32336
mov.w @(data_CE32448,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3		; addr: CE32338
mov.b @(r0,r14),r3		; addr: CE3233A
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08		; addr: CE3233C
extu.b r3,r3		; addr: CE3233E
shll2 r3		; addr: CE32340
shll2 r3		; addr: CE32342
add r4,r3		; addr: CE32344
fmov.s @(r0,r3),fr3		; addr: CE32346
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60		; addr: CE32348
fmov.s fr3,@(r0,r14) 		; addr: CE3234A
mov.w @(data_CE32448,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3		; addr: CE3234C
mov.b @(r0,r14),r3		; addr: CE3234E
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0C		; addr: CE32350
extu.b r3,r3		; addr: CE32352
shll2 r3		; addr: CE32354
shll2 r3		; addr: CE32356
add r3,r4 ; r4 ??? bc r3 is ???, r4 ??? bc r3 is ???		; addr: CE32358
fmov.s @(r0,r4),fr3		; addr: CE3235A
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C		; addr: CE3235C
mov r14,r4		; addr: CE3235E
fmov.s fr3,@(r0,r14) 		; addr: CE32360
mov.w @(data_CE32448,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3		; addr: CE32362
mov.b @(r0,r14),r3		; addr: CE32364
add 0xB5,r0 ; r0 set to 0x158, r0 set to 0x158		; addr: CE32366
add 0x05,r3		; addr: CE32368
mov.b r3,@(r0,r14) 		; addr: CE3236A
lds.l @r15+,pr 		; addr: CE3236C
mov.b @(r0,r14),r6		; addr: CE3236E
mov.l @(ptr_CE3245C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C		; addr: CE32370
jmp @r3		; addr: CE32372
mov.l @r15+,r14		; addr: CE32374

data_CE32376:
#data 0x2FE6		; addr: CE32376
#data 0xED002FD6		; addr: CE32378
#data 0xD3384F22		; addr: CE3237C
#data 0x6E43430B		; addr: CE32380
#data 0x4011600E		; addr: CE32384
#data 0x84E78914		; addr: CE32388
#data 0xF48DE515		; addr: CE3238C
#data 0x7001E609		; addr: CE32390
#data 0x80E7D331		; addr: CE32394
#data 0xFE47E05C		; addr: CE32398
#data 0xFE47E068		; addr: CE3239C
#data 0xF308C730		; addr: CE323A0
#data 0xFE37E060		; addr: CE323A4
#data 0xF308C72F		; addr: CE323A8
#data 0xFE37E06C		; addr: CE323AC
#data 0x64E3430B		; addr: CE323B0

#align4
data_CE323B4:
#data 0x02EC9049		; addr: CE323B4
#data 0x89232228		; addr: CE323B8
#data 0x31ECE15C		; addr: CE323BC
#data 0xF318E034		; addr: CE323C0
#data 0xE168F2E6		; addr: CE323C4
#data 0xF23031EC		; addr: CE323C8
#data 0xE05CFE27		; addr: CE323CC
#data 0xF318F2E6		; addr: CE323D0
#data 0x31ECE160		; addr: CE323D4
#data 0xFE27F230		; addr: CE323D8
#data 0xF2E6E038		; addr: CE323DC
#data 0xE16CF318		; addr: CE323E0
#data 0xF23031EC		; addr: CE323E4
#data 0xE060FE27		; addr: CE323E8
#data 0xF318F2E6		; addr: CE323EC
#data 0xFE27F230		; addr: CE323F0
#data 0x00EC902A		; addr: CE323F4
#data 0x8802600C		; addr: CE323F8
#data 0xD21B8902		; addr: CE323FC
#data 0x64E3420B		; addr: CE32400

#align4
data_CE32404:
#data 0x03EC9023		; addr: CE32404
#data 0x89192338		; addr: CE32408
#data 0xD3189020		; addr: CE3240C
#data 0x600C00EC		; addr: CE32410
#data 0x901A8803		; addr: CE32414
#data 0x705602EC		; addr: CE32418
#data 0x0E247231		; addr: CE3241C
#data 0x0ED5700B		; addr: CE32420
#data 0x0ED470F2		; addr: CE32424
#data 0x0ED67026		; addr: CE32428
#data 0x623284E2		; addr: CE3242C
#data 0x4000600C		; addr: CE32430
#data 0x012D727C		; addr: CE32434
#data 0x02157101		; addr: CE32438
#data 0x0ED49007		; addr: CE3243C

#align4
data_CE32440:
#data 0x6DF64F26		; addr: CE32440
#data 0x6EF6000B		; addr: CE32444
;-------------------------------------------------------------------------------

data_CE32448:
#data 0x01A3		; addr: CE32448
#data 0x0141		; addr: CE3244A
#data 0x014B01F9		; addr: CE3244C
#data 0x00000255		; addr: CE32450

#align4
ptr_CE32454_to_f_code_CE35534:
#data f_code_CE35534		; addr: CE32454

ptr_CE32458_to_data_CE35530:
#data data_CE35530		; addr: CE32458

ptr_CE3245C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE3245C
#data fn_extern_8C034DEE		; addr: CE32460
#data 0xC0892492		; addr: CE32464
#data 0xBF892492		; addr: CE32468
#data extern_8C053082		; addr: CE3246C
#data extern_8C2896B0		; addr: CE32470


f_code_CE32474:
mov.l r14,@-r15		; addr: CE32474
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE32476
mov r4,r14		; addr: CE32478
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3247A
mov 0x34,r0 ; r0 set to 0x34		; addr: CE3247C
mov.l @(ptr_CE325B8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3247E
sts.l pr,@-r15		; addr: CE32480
fmov.s @(r0,r14),fr2		; addr: CE32482
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE32484
mov 0x68,r1 ; r1 set to 0x68		; addr: CE32486
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32488
fadd fr3,fr2		; addr: CE3248A
fmov.s fr2,@(r0,r14) 		; addr: CE3248C
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3248E
fmov.s @r1,fr3		; addr: CE32490
mov 0x60,r1 ; r1 set to 0x60		; addr: CE32492
fmov.s @(r0,r14),fr2		; addr: CE32494
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32496
fadd fr3,fr2		; addr: CE32498
fmov.s fr2,@(r0,r14) 		; addr: CE3249A
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3249C
fmov.s @(r0,r14),fr2		; addr: CE3249E
fmov.s @r1,fr3		; addr: CE324A0
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE324A2
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE324A4
fadd fr3,fr2		; addr: CE324A6
fmov.s fr2,@(r0,r14) 		; addr: CE324A8
mov 0x60,r0 ; r0 set to 0x60		; addr: CE324AA
fmov.s @(r0,r14),fr2		; addr: CE324AC
fmov.s @r1,fr3		; addr: CE324AE
fadd fr3,fr2		; addr: CE324B0
fmov.s fr2,@(r0,r14) 		; addr: CE324B2
jsr @r3		; addr: CE324B4
mov r14,r4		; addr: CE324B6
mov.w @(data_CE325AE,pc),r0 ; r0 set to 0x41C		; addr: CE324B8
fmov.s @(r0,r14),fr3		; addr: CE324BA
mov 0x38,r0 ; r0 set to 0x38		; addr: CE324BC
fmov.s @(r0,r14),fr2		; addr: CE324BE
fcmp/gt fr3,fr2		; addr: CE324C0
bt l_code_CE324EC		; addr: CE324C2
mov.b @(0x07,r14),r0 		; addr: CE324C4
mov 0x00,r3 ; r3 set to 0x00		; addr: CE324C6
add 0x01,r0 ; r0 set to 0x39		; addr: CE324C8
mov.b r0,@(0x07,r14) 		; addr: CE324CA
mov.w @(data_CE325AE,pc),r0 ; r0 set to 0x41C		; addr: CE324CC
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE324CE
mov 0x38,r0 ; r0 set to 0x38		; addr: CE324D0
fmov.s fr3,@(r0,r14) 		; addr: CE324D2
mov.w @(data_CE325B0,pc),r0 ; r0 set to 0x1F9		; addr: CE324D4
mov.b r3,@(r0,r14) 		; addr: CE324D6
mov.l @(ptr_CE325BC_to_fn_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4		; addr: CE324D8
jsr @r3		; addr: CE324DA
mov r14,r4		; addr: CE324DC
lds.l @r15+,pr 		; addr: CE324DE
mov.l @(ptr_CE325C0_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE324E0
mov r14,r4		; addr: CE324E2
mov 0x0A,r6 ; r6 set to 0x0A		; addr: CE324E4
mov 0x15,r5 ; r5 set to 0x15		; addr: CE324E6
jmp @r2		; addr: CE324E8
mov.l @r15+,r14		; addr: CE324EA

l_code_CE324EC:
lds.l @r15+,pr 		; addr: CE324EC
rts 		; addr: CE324EE
mov.l @r15+,r14		; addr: CE324F0
;-------------------------------------------------------------------------------

f_code_CE324F2:
mov.l r14,@-r15		; addr: CE324F2
sts.l pr,@-r15		; addr: CE324F4
add 0xFC,r15		; addr: CE324F6
mov.w @(data_CE325B2,pc),r3 ; r3 set to 0x2A4		; addr: CE324F8
mov r4,r14		; addr: CE324FA
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE324FC
mov.l r3,@r15		; addr: CE324FE
mov.l @(ptr_CE325B8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32500
jsr @r3		; addr: CE32502
mov r14,r4		; addr: CE32504
exts.b r0,r0		; addr: CE32506
cmp/pz r0		; addr: CE32508
bt l_code_CE3251E		; addr: CE3250A
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE3250C
mov 0x00,r0 ; r0 set to 0x00		; addr: CE3250E
mov r14,r4		; addr: CE32510
mov.b r0,@(0x0C,r3) 		; addr: CE32512
add 0x04,r15		; addr: CE32514
lds.l @r15+,pr 		; addr: CE32516
mov.l @(ptr_CE325C4_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE32518
jmp @r3		; addr: CE3251A
mov.l @r15+,r14		; addr: CE3251C

l_code_CE3251E:
add 0x04,r15		; addr: CE3251E
lds.l @r15+,pr 		; addr: CE32520
rts 		; addr: CE32522
mov.l @r15+,r14		; addr: CE32524
;-------------------------------------------------------------------------------

f_code_CE32526:
mov r4,r3		; addr: CE32526
mov.l @(ptr_CE325C8_to_ptr_CE35550_to_f_code_CE32538,pc),r1 ; r1 set to 0xCE35550		; addr: CE32528
mov.l r4,@-r15		; addr: CE3252A
mov.b @(0x07,r3),r0 		; addr: CE3252C
extu.b r0,r0		; addr: CE3252E
shll2 r0		; addr: CE32530
mov.l @(r0,r1),r3		; addr: CE32532
jmp @r3		; addr: CE32534
add 0x04,r15		; addr: CE32536

f_code_CE32538:
mov.l r14,@-r15		; addr: CE32538
mov r4,r14		; addr: CE3253A
mov 0x00,r4 ; r4 set to 0x00		; addr: CE3253C
sts.l pr,@-r15		; addr: CE3253E
mov.b @(0x07,r14),r0 		; addr: CE32540
mov 0x05,r5 ; r5 set to 0x05		; addr: CE32542
add 0x01,r0		; addr: CE32544
mov.b r0,@(0x07,r14) 		; addr: CE32546
mov.w @(data_CE325B4,pc),r0 ; r0 set to 0x1A3		; addr: CE32548
mov.b @(r0,r14),r3		; addr: CE3254A
add 0xFE,r0 ; r0 set to 0x1A1		; addr: CE3254C
add 0x34,r3		; addr: CE3254E
mov.b r3,@(r0,r14) 		; addr: CE32550
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE32552
mov.w r4,@(r0,r14) 		; addr: CE32554
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE32556
mov.b r4,@(r0,r14) 		; addr: CE32558
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE3255A
mov.l @(ptr_CE325CC_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE3255C
mov.l r4,@(r0,r14) 		; addr: CE3255E
mov.b @(0x02,r14),r0 		; addr: CE32560
mov.l @r3,r2		; addr: CE32562
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE32564
shll r0 ; r0 set to 0x188		; addr: CE32566
add 0x7C,r2		; addr: CE32568
mov.w @(r0,r2),r1		; addr: CE3256A
add 0x01,r1		; addr: CE3256C
mov.w r1,@(r0,r2) 		; addr: CE3256E
mov.l @(ptr_CE325D0_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4		; addr: CE32570
jsr @r2		; addr: CE32572
mov r14,r4 ; r4 ??? bc r14 is ???		; addr: CE32574
mov.l @(ptr_CE325D4_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A		; addr: CE32576
jsr @r3		; addr: CE32578
mov r14,r4		; addr: CE3257A
mov.w @(data_CE325B0,pc),r0 ; r0 set to 0x1F9		; addr: CE3257C
mov 0x02,r2 ; r2 set to 0x02		; addr: CE3257E
fldi0 fr4		; addr: CE32580
mov.b r2,@(r0,r14) 		; addr: CE32582
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32584
fmov.s fr4,@(r0,r14) 		; addr: CE32586
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32588
fmov.s fr4,@(r0,r14) 		; addr: CE3258A
mov 0x68,r0 ; r0 set to 0x68		; addr: CE3258C
fmov.s fr4,@(r0,r14) 		; addr: CE3258E
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE32590
fmov.s fr4,@(r0,r14) 		; addr: CE32592
mov.w @(data_CE325B6,pc),r0 ; r0 set to 0x1D2		; addr: CE32594
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE32596
tst r3,r3		; addr: CE32598
bt l_code_CE325DC		; addr: CE3259A
mov.w @(data_CE325B4,pc),r0 ; r0 set to 0x1A3		; addr: CE3259C
mov.b @(r0,r14),r3		; addr: CE3259E
mov.l @(ptr_CE325D8_to_data_CE35560,pc),r0 ; r0 set to 0xCE35560		; addr: CE325A0
extu.b r3,r3		; addr: CE325A2
shll2 r3		; addr: CE325A4
shll2 r3		; addr: CE325A6
fmov.s @(r0,r3),fr3		; addr: CE325A8
bra l_code_CE325EC		; addr: CE325AA
nop 		; addr: CE325AC

data_CE325AE:
#data 0x041C		; addr: CE325AE

data_CE325B0:
#data 0x01F9		; addr: CE325B0

data_CE325B2:
#data 0x02A4		; addr: CE325B2

data_CE325B4:
#data 0x01A3		; addr: CE325B4

data_CE325B6:
#data 0x01D2		; addr: CE325B6

#align4
ptr_CE325B8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE325B8

ptr_CE325BC_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE325BC

ptr_CE325C0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE325C0

ptr_CE325C4_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE325C4

ptr_CE325C8_to_ptr_CE35550_to_f_code_CE32538:
#data ptr_CE35550_to_f_code_CE32538		; addr: CE325C8

ptr_CE325CC_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE325CC

ptr_CE325D0_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE325D0

ptr_CE325D4_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE325D4

ptr_CE325D8_to_data_CE35560:
#data data_CE35560		; addr: CE325D8


l_code_CE325DC:
mov.w @(data_CE326E0,pc),r0 ; r0 set to 0x1A3		; addr: CE325DC
mov.b @(r0,r14),r2		; addr: CE325DE
mov.l @(ptr_CE326E8_to_data_CE35560,pc),r0 ; r0 set to 0xCE35560		; addr: CE325E0
extu.b r2,r2		; addr: CE325E2
shll2 r2		; addr: CE325E4
shll2 r2		; addr: CE325E6
fmov.s @(r0,r2),fr3		; addr: CE325E8
fneg fr3		; addr: CE325EA

l_code_CE325EC:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C		; addr: CE325EC
fmov.s fr3,@(r0,r14) 		; addr: CE325EE
mov.w @(data_CE326E2,pc),r0 ; r0 set to 0x1D2, r0 set to 0x1D2		; addr: CE325F0
mov.b @(r0,r14),r3		; addr: CE325F2
tst r3,r3		; addr: CE325F4
bt l_code_CE3260A		; addr: CE325F6
mov.w @(data_CE326E0,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3		; addr: CE325F8
mov.b @(r0,r14),r3		; addr: CE325FA
mov.l @(ptr_CE326EC_to_f_code_CE35564,pc),r0 ; r0 set to 0xCE35564, r0 set to 0xCE35564		; addr: CE325FC
extu.b r3,r3		; addr: CE325FE
shll2 r3		; addr: CE32600
shll2 r3		; addr: CE32602
fmov.s @(r0,r3),fr3		; addr: CE32604
bra l_code_CE3261A		; addr: CE32606
nop 		; addr: CE32608

l_code_CE3260A:
mov.w @(data_CE326E0,pc),r0 ; r0 set to 0x1A3		; addr: CE3260A
mov.b @(r0,r14),r2		; addr: CE3260C
mov.l @(ptr_CE326EC_to_f_code_CE35564,pc),r0 ; r0 set to 0xCE35564		; addr: CE3260E
extu.b r2,r2		; addr: CE32610
shll2 r2		; addr: CE32612
shll2 r2		; addr: CE32614
fmov.s @(r0,r2),fr3		; addr: CE32616
fneg fr3		; addr: CE32618

l_code_CE3261A:
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68		; addr: CE3261A
mov.l @(ptr_CE326E8_to_data_CE35560,pc),r4 ; r4 set to 0xCE35560, r4 set to 0xCE35560		; addr: CE3261C
fmov.s fr3,@(r0,r14) 		; addr: CE3261E
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15		; addr: CE32620
mov.w @(data_CE326E0,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3		; addr: CE32622
mov.b @(r0,r14),r3		; addr: CE32624
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08		; addr: CE32626
extu.b r3,r3		; addr: CE32628
shll2 r3		; addr: CE3262A
shll2 r3		; addr: CE3262C
add r4,r3		; addr: CE3262E
fmov.s @(r0,r3),fr3		; addr: CE32630
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60		; addr: CE32632
fmov.s fr3,@(r0,r14) 		; addr: CE32634
mov.w @(data_CE326E0,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3		; addr: CE32636
mov.b @(r0,r14),r3		; addr: CE32638
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0C		; addr: CE3263A
extu.b r3,r3		; addr: CE3263C
shll2 r3		; addr: CE3263E
shll2 r3		; addr: CE32640
add r3,r4 ; r4 ??? bc r3 is ???, r4 ??? bc r3 is ???		; addr: CE32642
mov.l @(ptr_CE326F0_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C		; addr: CE32644
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???		; addr: CE32646
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C		; addr: CE32648
mov r14,r4		; addr: CE3264A
fmov.s fr3,@(r0,r14) 		; addr: CE3264C
mov.w @(data_CE326E0,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3		; addr: CE3264E
lds.l @r15+,pr 		; addr: CE32650
mov.b @(r0,r14),r6		; addr: CE32652
add 0x07,r6		; addr: CE32654
jmp @r3		; addr: CE32656
mov.l @r15+,r14		; addr: CE32658

data_CE3265A:
#data 0x2FE6		; addr: CE3265A
#data 0xD3254F22		; addr: CE3265C
#data 0x6E43430B		; addr: CE32660
#data 0x4011600E		; addr: CE32664
#data 0x84E78914		; addr: CE32668
#data 0xF48DE515		; addr: CE3266C
#data 0x7001E609		; addr: CE32670
#data 0x80E7D31E		; addr: CE32674
#data 0xFE47E05C		; addr: CE32678
#data 0xFE47E068		; addr: CE3267C
#data 0xF308C71D		; addr: CE32680
#data 0xFE37E060		; addr: CE32684
#data 0xF308C71C		; addr: CE32688
#data 0xFE37E06C		; addr: CE3268C
#data 0x64E3430B		; addr: CE32690

#align4
data_CE32694:
#data 0x02EC9026		; addr: CE32694
#data 0x891E2228		; addr: CE32698
#data 0xE3029023		; addr: CE3269C
#data 0x0E34E15C		; addr: CE326A0
#data 0xE03431EC		; addr: CE326A4
#data 0xF2E6F318		; addr: CE326A8
#data 0x31ECE168		; addr: CE326AC
#data 0xFE27F230		; addr: CE326B0
#data 0xF2E6E05C		; addr: CE326B4
#data 0xE160F318		; addr: CE326B8
#data 0xF23031EC		; addr: CE326BC
#data 0xE038FE27		; addr: CE326C0
#data 0xF318F2E6		; addr: CE326C4
#data 0x31ECE16C		; addr: CE326C8
#data 0xFE27F230		; addr: CE326CC
#data 0xF2E6E060		; addr: CE326D0
#data 0xF230F318		; addr: CE326D4
#data 0xFE27		; addr: CE326D8

data_CE326DA:
#data 0x4F26		; addr: CE326DA
#data 0x6EF6000B		; addr: CE326DC
;-------------------------------------------------------------------------------

data_CE326E0:
#data 0x01A3		; addr: CE326E0

data_CE326E2:
#data 0x01D2		; addr: CE326E2
#data 0x01F90141		; addr: CE326E4

#align4
ptr_CE326E8_to_data_CE35560:
#data data_CE35560		; addr: CE326E8

ptr_CE326EC_to_f_code_CE35564:
#data f_code_CE35564		; addr: CE326EC

ptr_CE326F0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE326F0
#data fn_extern_8C034DEE		; addr: CE326F4
#data 0xC0892492		; addr: CE326F8
#data 0xBF892492		; addr: CE326FC


f_code_CE32700:
mov.l r14,@-r15		; addr: CE32700
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE32702
mov r4,r14		; addr: CE32704
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32706
mov 0x34,r0 ; r0 set to 0x34		; addr: CE32708
mov.l @(ptr_CE32860_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3270A
sts.l pr,@-r15		; addr: CE3270C
fmov.s @(r0,r14),fr2		; addr: CE3270E
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE32710
mov 0x68,r1 ; r1 set to 0x68		; addr: CE32712
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32714
fadd fr3,fr2		; addr: CE32716
fmov.s fr2,@(r0,r14) 		; addr: CE32718
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3271A
fmov.s @r1,fr3		; addr: CE3271C
mov 0x60,r1 ; r1 set to 0x60		; addr: CE3271E
fmov.s @(r0,r14),fr2		; addr: CE32720
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32722
fadd fr3,fr2		; addr: CE32724
fmov.s fr2,@(r0,r14) 		; addr: CE32726
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32728
fmov.s @(r0,r14),fr2		; addr: CE3272A
fmov.s @r1,fr3		; addr: CE3272C
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE3272E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32730
fadd fr3,fr2		; addr: CE32732
fmov.s fr2,@(r0,r14) 		; addr: CE32734
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32736
fmov.s @(r0,r14),fr2		; addr: CE32738
fmov.s @r1,fr3		; addr: CE3273A
fadd fr3,fr2		; addr: CE3273C
fmov.s fr2,@(r0,r14) 		; addr: CE3273E
jsr @r3		; addr: CE32740
mov r14,r4		; addr: CE32742
mov.w @(data_CE32856,pc),r0 ; r0 set to 0x41C		; addr: CE32744
fmov.s @(r0,r14),fr3		; addr: CE32746
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32748
fmov.s @(r0,r14),fr2		; addr: CE3274A
fcmp/gt fr3,fr2		; addr: CE3274C
bt l_code_CE32778		; addr: CE3274E
mov.b @(0x07,r14),r0 		; addr: CE32750
mov 0x00,r3 ; r3 set to 0x00		; addr: CE32752
add 0x01,r0 ; r0 set to 0x39		; addr: CE32754
mov.b r0,@(0x07,r14) 		; addr: CE32756
mov.w @(data_CE32856,pc),r0 ; r0 set to 0x41C		; addr: CE32758
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE3275A
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3275C
fmov.s fr3,@(r0,r14) 		; addr: CE3275E
mov.w @(data_CE32858,pc),r0 ; r0 set to 0x1F9		; addr: CE32760
mov.b r3,@(r0,r14) 		; addr: CE32762
mov.l @(ptr_CE32864_to_fn_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4		; addr: CE32764
jsr @r3		; addr: CE32766
mov r14,r4		; addr: CE32768
lds.l @r15+,pr 		; addr: CE3276A
mov.l @(ptr_CE32868_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE3276C
mov r14,r4		; addr: CE3276E
mov 0x0A,r6 ; r6 set to 0x0A		; addr: CE32770
mov 0x15,r5 ; r5 set to 0x15		; addr: CE32772
jmp @r2		; addr: CE32774
mov.l @r15+,r14		; addr: CE32776

l_code_CE32778:
lds.l @r15+,pr 		; addr: CE32778
rts 		; addr: CE3277A
mov.l @r15+,r14		; addr: CE3277C
;-------------------------------------------------------------------------------

f_code_CE3277E:
mov.l r14,@-r15		; addr: CE3277E
sts.l pr,@-r15		; addr: CE32780
add 0xFC,r15		; addr: CE32782
mov.w @(data_CE3285A,pc),r3 ; r3 set to 0x2A4		; addr: CE32784
mov r4,r14		; addr: CE32786
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE32788
mov.l r3,@r15		; addr: CE3278A
mov.l @(ptr_CE32860_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3278C
jsr @r3		; addr: CE3278E
mov r14,r4		; addr: CE32790
exts.b r0,r0		; addr: CE32792
cmp/pz r0		; addr: CE32794
bt l_code_CE327AA		; addr: CE32796
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE32798
mov 0x00,r0 ; r0 set to 0x00		; addr: CE3279A
mov r14,r4		; addr: CE3279C
mov.b r0,@(0x0C,r3) 		; addr: CE3279E
add 0x04,r15		; addr: CE327A0
lds.l @r15+,pr 		; addr: CE327A2
mov.l @(ptr_CE3286C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE327A4
jmp @r3		; addr: CE327A6
mov.l @r15+,r14		; addr: CE327A8

l_code_CE327AA:
add 0x04,r15		; addr: CE327AA
lds.l @r15+,pr 		; addr: CE327AC
rts 		; addr: CE327AE
mov.l @r15+,r14		; addr: CE327B0
;-------------------------------------------------------------------------------

f_code_CE327B2:
mov r4,r3		; addr: CE327B2
mov.l @(ptr_CE32870_to_ptr_CE35580_to_f_code_CE327C4,pc),r1 ; r1 set to 0xCE35580		; addr: CE327B4
mov.l r4,@-r15		; addr: CE327B6
mov.b @(0x06,r3),r0 		; addr: CE327B8
extu.b r0,r0		; addr: CE327BA
shll2 r0		; addr: CE327BC
mov.l @(r0,r1),r3		; addr: CE327BE
jmp @r3		; addr: CE327C0
add 0x04,r15		; addr: CE327C2

f_code_CE327C4:
mov.l r14,@-r15		; addr: CE327C4
sts.l pr,@-r15		; addr: CE327C6
add 0xFC,r15		; addr: CE327C8
mov.w @(data_CE3285A,pc),r3 ; r3 set to 0x2A4		; addr: CE327CA
mov r4,r14		; addr: CE327CC
mov 0x05,r5 ; r5 set to 0x05		; addr: CE327CE
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE327D0
mov.l r3,@r15		; addr: CE327D2
mov.b @(0x06,r14),r0 		; addr: CE327D4
mov.l @(ptr_CE32874_to_fn_extern_8C056DE4,pc),r3 ; r3 set to 0x8C056DE4		; addr: CE327D6
add 0x01,r0		; addr: CE327D8
mov.b r0,@(0x06,r14) 		; addr: CE327DA
jsr @r3		; addr: CE327DC
mov r14,r4		; addr: CE327DE
bsr f_code_CE31E98		; addr: CE327E0
mov r14,r4		; addr: CE327E2
mov.l @(ptr_CE32878_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A		; addr: CE327E4
jsr @r3		; addr: CE327E6
mov r14,r4		; addr: CE327E8
mov.l @(ptr_CE32868_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE327EA
mov 0x15,r5 ; r5 set to 0x15		; addr: CE327EC
mov 0x0F,r6 ; r6 set to 0x0F		; addr: CE327EE
jsr @r2		; addr: CE327F0
mov r14,r4		; addr: CE327F2
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE327F4
mov 0x1C,r0 ; r0 set to 0x1C		; addr: CE327F6
mov 0x01,r2 ; r2 set to 0x01		; addr: CE327F8
mov.b r2,@(r0,r3) 		; addr: CE327FA
add 0x04,r15		; addr: CE327FC
lds.l @r15+,pr 		; addr: CE327FE
rts 		; addr: CE32800
mov.l @r15+,r14		; addr: CE32802
;-------------------------------------------------------------------------------

f_code_CE32804:
mov.l r14,@-r15		; addr: CE32804
sts.l pr,@-r15		; addr: CE32806
add 0xFC,r15		; addr: CE32808
mov.l @(ptr_CE32860_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3280A
jsr @r3		; addr: CE3280C
mov r4,r14		; addr: CE3280E
exts.b r0,r0		; addr: CE32810
cmp/pz r0		; addr: CE32812
bt l_code_CE3282C		; addr: CE32814
mov.b @(0x06,r14),r0 		; addr: CE32816
mov 0x15,r5 ; r5 set to 0x15		; addr: CE32818
mov r14,r4		; addr: CE3281A
mov 0x10,r6 ; r6 set to 0x10		; addr: CE3281C
add 0x01,r0		; addr: CE3281E
mov.b r0,@(0x06,r14) 		; addr: CE32820
add 0x04,r15		; addr: CE32822
lds.l @r15+,pr 		; addr: CE32824
mov.l @(ptr_CE32868_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE32826
jmp @r3		; addr: CE32828
mov.l @r15+,r14		; addr: CE3282A

l_code_CE3282C:
mov.l @(ptr_CE3287C_to_fn_extern_8C045790,pc),r2 ; r2 set to 0x8C045790		; addr: CE3282C
jsr @r2		; addr: CE3282E
mov r14,r4		; addr: CE32830
tst r0,r0		; addr: CE32832
bt/s l_code_CE32888		; addr: CE32834
mov.l r0,@r15		; addr: CE32836
mov.l @(ptr_CE32880_to_fn_extern_8C02FEC4,pc),r2 ; r2 set to 0x8C02FEC4		; addr: CE32838
mov 0x05,r6 ; r6 set to 0x05		; addr: CE3283A
mov r6,r5 ; r5 set to 0x05		; addr: CE3283C
jsr @r2		; addr: CE3283E
mov r14,r4		; addr: CE32840
mov.w @(data_CE3285E,pc),r0 ; r0 set to 0x1F7		; addr: CE32842
mov r14,r4		; addr: CE32844
mov.w @(data_CE3285C,pc),r3 ; r3 set to 0xC1		; addr: CE32846
mov.b r3,@(r0,r14) 		; addr: CE32848
mov.l @r15,r5 ; r5 ??? bc r15 is ???		; addr: CE3284A
add 0x04,r15		; addr: CE3284C
lds.l @r15+,pr 		; addr: CE3284E
mov.l @(ptr_CE32884_to_fn_extern_8C0522E0,pc),r3 ; r3 set to 0x8C0522E0		; addr: CE32850
jmp @r3		; addr: CE32852
mov.l @r15+,r14		; addr: CE32854

data_CE32856:
#data 0x041C		; addr: CE32856

data_CE32858:
#data 0x01F9		; addr: CE32858

data_CE3285A:
#data 0x02A4		; addr: CE3285A

data_CE3285C:
#data 0x00C1		; addr: CE3285C

data_CE3285E:
#data 0x01F7		; addr: CE3285E

#align4
ptr_CE32860_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32860

ptr_CE32864_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE32864

ptr_CE32868_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE32868

ptr_CE3286C_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE3286C

ptr_CE32870_to_ptr_CE35580_to_f_code_CE327C4:
#data ptr_CE35580_to_f_code_CE327C4		; addr: CE32870

ptr_CE32874_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE32874

ptr_CE32878_to_fn_extern_8C05115A:
#data fn_extern_8C05115A		; addr: CE32878

ptr_CE3287C_to_fn_extern_8C045790:
#data fn_extern_8C045790		; addr: CE3287C

ptr_CE32880_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE32880

ptr_CE32884_to_fn_extern_8C0522E0:
#data fn_extern_8C0522E0		; addr: CE32884


l_code_CE32888:
add 0x04,r15		; addr: CE32888
lds.l @r15+,pr 		; addr: CE3288A
rts 		; addr: CE3288C
mov.l @r15+,r14		; addr: CE3288E
;-------------------------------------------------------------------------------

f_code_CE32890:
mov.l r14,@-r15		; addr: CE32890
sts.l pr,@-r15		; addr: CE32892
add 0xFC,r15		; addr: CE32894
mov.w @(data_CE32972,pc),r3 ; r3 set to 0x2A4		; addr: CE32896
mov r4,r14		; addr: CE32898
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE3289A
mov.l r3,@r15		; addr: CE3289C
mov.l @(ptr_CE32980_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3289E
jsr @r3		; addr: CE328A0
mov r14,r4		; addr: CE328A2
exts.b r0,r0		; addr: CE328A4
cmp/pz r0		; addr: CE328A6
bt l_code_CE328BC		; addr: CE328A8
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE328AA
mov 0x00,r0 ; r0 set to 0x00		; addr: CE328AC
mov r14,r4		; addr: CE328AE
mov.b r0,@(0x0C,r3) 		; addr: CE328B0
add 0x04,r15		; addr: CE328B2
lds.l @r15+,pr 		; addr: CE328B4
mov.l @(ptr_CE32984_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE328B6
jmp @r3		; addr: CE328B8
mov.l @r15+,r14		; addr: CE328BA

l_code_CE328BC:
add 0x04,r15		; addr: CE328BC
lds.l @r15+,pr 		; addr: CE328BE
rts 		; addr: CE328C0
mov.l @r15+,r14		; addr: CE328C2
;-------------------------------------------------------------------------------

f_code_CE328C4:
mov r4,r3		; addr: CE328C4
mov.l @(ptr_CE32988_to_ptr_CE3558C_to_data_CE328D6,pc),r1 ; r1 set to 0xCE3558C		; addr: CE328C6
mov.l r4,@-r15		; addr: CE328C8
mov.b @(0x06,r3),r0 		; addr: CE328CA
extu.b r0,r0		; addr: CE328CC
shll2 r0		; addr: CE328CE
mov.l @(r0,r1),r3		; addr: CE328D0
jmp @r3		; addr: CE328D2
add 0x04,r15		; addr: CE328D4

data_CE328D6:
#data 0x904D		; addr: CE328D6
#data 0x6E432FE6		; addr: CE328D8
#data 0x00EC4F22		; addr: CE328DC
#data 0x8806600C		; addr: CE328E0
#data 0xE5008F06		; addr: CE328E4
#data 0xE3109046		; addr: CE328E8
#data 0x0E249243		; addr: CE328EC
#data 0x0E347001		; addr: CE328F0

#align4
data_CE328F4:
#data 0x430BD325		; addr: CE328F4
#data 0x84E664E3		; addr: CE328F8
#data 0xE400E345		; addr: CE328FC
#data 0x80E67001		; addr: CE32900
#data 0x0E349039		; addr: CE32904
#data 0x0E45700B		; addr: CE32908
#data 0x0E4470F2		; addr: CE3290C
#data 0xD31F7026		; addr: CE32910
#data 0x84E20E46		; addr: CE32914
#data 0x600C6232		; addr: CE32918
#data 0x727C4000		; addr: CE3291C
#data 0x7101012D		; addr: CE32920
#data 0xBAB70215		; addr: CE32924
#data 0xD31A64E3		; addr: CE32928
#data 0x64E3430B		; addr: CE3292C
#data 0xE072D319		; addr: CE32930
#data 0x430B81EE		; addr: CE32934
#data 0xD21864E3		; addr: CE32938
#data 0xE619E516		; addr: CE3293C
#data 0x64E3420B		; addr: CE32940
#data 0x64E34F26		; addr: CE32944
#data 0x6EF6		; addr: CE32948


f_code_CE3294A:
mov.l r14,@-r15		; addr: CE3294A
mov.l r13,@-r15		; addr: CE3294C
sts.l pr,@-r15		; addr: CE3294E
add 0xF4,r15		; addr: CE32950
mov.w @(data_CE3297C,pc),r0 ; r0 set to 0x3F8		; addr: CE32952
mov 0x02,r3 ; r3 set to 0x02		; addr: CE32954
mov r4,r14		; addr: CE32956
mov 0x05,r2 ; r2 set to 0x05		; addr: CE32958
mov.b r3,@(r0,r14) 		; addr: CE3295A
mov.w @(data_CE3297E,pc),r0 ; r0 set to 0x328		; addr: CE3295C
mov.w @(data_CE32972,pc),r13 ; r13 set to 0x2A4		; addr: CE3295E
mov.b r2,@(r0,r14) 		; addr: CE32960
mov.w @(data_CE32974,pc),r0 ; r0 set to 0x255		; addr: CE32962
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE32964
extu.b r0,r0		; addr: CE32966
cmp/eq 0x06,r0 		; addr: CE32968
bf/s data_CE329A0		; addr: CE3296A
add r14,r13 ; r13 ??? bc r14 is ???		; addr: CE3296C
bra data_CE329A2		; addr: CE3296E
mov 0x02,r3		; addr: CE32970

data_CE32972:
#data 0x02A4		; addr: CE32972

data_CE32974:
#data 0x0255		; addr: CE32974
#data 0x00FF		; addr: CE32976
#data 0x01A103F0		; addr: CE32978

data_CE3297C:
#data 0x03F8		; addr: CE3297C

data_CE3297E:
#data 0x0328		; addr: CE3297E

#align4
ptr_CE32980_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32980

ptr_CE32984_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE32984

ptr_CE32988_to_ptr_CE3558C_to_data_CE328D6:
#data ptr_CE3558C_to_data_CE328D6		; addr: CE32988
#data fn_extern_8C035162		; addr: CE3298C
#data extern_8C2896B0		; addr: CE32990
#data fn_extern_8C05115A		; addr: CE32994
#data extern_8C0BB2BC		; addr: CE32998
#data fn_extern_8C034E8C		; addr: CE3299C

data_CE329A0:
#data 0xE300		; addr: CE329A0

data_CE329A2:
#data 0x9080		; addr: CE329A2
#data 0x0E34E206		; addr: CE329A4
#data 0xD342E012		; addr: CE329A8
#data 0x430B0D24		; addr: CE329AC
#data 0x600E64E3		; addr: CE329B0
#data 0x89264011		; addr: CE329B4
#data 0xE4009076		; addr: CE329B8
#data 0x9274E30A		; addr: CE329BC
#data 0x70010E44		; addr: CE329C0
#data 0x84E60E44		; addr: CE329C4
#data 0x80E67001		; addr: CE329C8
#data 0x0D34E014		; addr: CE329CC
#data 0x9069E310		; addr: CE329D0
#data 0x70010E24		; addr: CE329D4
#data 0xE02C0E34		; addr: CE329D8
#data 0x81EED336		; addr: CE329DC
#data 0x64E3430B		; addr: CE329E0
#data 0xD337C735		; addr: CE329E4
#data 0xC735F308		; addr: CE329E8
#data 0xE60165F3		; addr: CE329EC
#data 0xF308FF3A		; addr: CE329F0
#data 0xFF37E004		; addr: CE329F4
#data 0x64E3430B		; addr: CE329F8
#data 0xE516D232		; addr: CE329FC
#data 0x420BE61A		; addr: CE32A00
#data 0x64E3		; addr: CE32A04

data_CE32A06:
#data 0x7F0C		; addr: CE32A06
#data 0x6DF64F26		; addr: CE32A08
#data 0x6EF6000B		; addr: CE32A0C
;-------------------------------------------------------------------------------

#align4
data_CE32A10:
#data 0xE5029049		; addr: CE32A10
#data 0x6E432FE6		; addr: CE32A14
#data 0x9447E305		; addr: CE32A18
#data 0x0E544F22		; addr: CE32A1C
#data 0x0E547007		; addr: CE32A20
#data 0x904234EC		; addr: CE32A24
#data 0x0E34E206		; addr: CE32A28
#data 0xD321E012		; addr: CE32A2C
#data 0x430B0424		; addr: CE32A30
#data 0x903B64E3		; addr: CE32A34
#data 0x222802EC		; addr: CE32A38
#data 0xE025890D		; addr: CE32A3C
#data 0xE50206EC		; addr: CE32A40
#data 0xE7019035		; addr: CE32A44
#data 0x03EC666C		; addr: CE32A48
#data 0xD01F4608		; addr: CE32A4C
#data 0x363C066E		; addr: CE32A50
#data 0x430BD31E		; addr: CE32A54
#data 0x64E3		; addr: CE32A58

data_CE32A5A:
#data 0x85EE		; addr: CE32A5A
#data 0x89052008		; addr: CE32A5C
#data 0x70FF85EE		; addr: CE32A60
#data 0x4F2681EE		; addr: CE32A64
#data 0x6EF6000B		; addr: CE32A68
;-------------------------------------------------------------------------------

#align4
data_CE32A6C:
#data 0xE400901C		; addr: CE32A6C
#data 0xE101D218		; addr: CE32A70
#data 0x70010E44		; addr: CE32A74
#data 0x84E20E44		; addr: CE32A78
#data 0x600C6320		; addr: CE32A7C
#data 0x633C410C		; addr: CE32A80
#data 0x8B0B2318		; addr: CE32A84
#data 0xD30FE046		; addr: CE32A88
#data 0x64E381EE		; addr: CE32A8C
#data 0xE61B84E6		; addr: CE32A90
#data 0x7001E516		; addr: CE32A94
#data 0x4F2680E6		; addr: CE32A98
#data 0x6EF6432B		; addr: CE32A9C

#align4
data_CE32AA0:
#data 0x000B4F26		; addr: CE32AA0
#data 0x03F16EF6		; addr: CE32AA4
#data 0x00FF03F0		; addr: CE32AA8
#data 0x032802A4		; addr: CE32AAC
#data 0x0140014B		; addr: CE32AB0
#data fn_extern_8C034DEE		; addr: CE32AB4
#data extern_8C0BB314		; addr: CE32AB8
#data 0xC1555555		; addr: CE32ABC
#data 0x42DEDB6D		; addr: CE32AC0
#data extern_8C050834		; addr: CE32AC4
#data fn_extern_8C034E8C		; addr: CE32AC8

#align4
ptr_CE32ACC_to_data_CE3524C:
#data data_CE3524C		; addr: CE32ACC
#data fn_extern_8C03544C		; addr: CE32AD0
#data extern_8C2895F6		; addr: CE32AD4

#align4
data_CE32AD8:
#data 0xE3029081		; addr: CE32AD8
#data 0x6E432FE6		; addr: CE32ADC
#data 0xE2052FD6		; addr: CE32AE0
#data 0x2FC69D7A		; addr: CE32AE4
#data 0x4F223DEC		; addr: CE32AE8
#data 0xE3060E34		; addr: CE32AEC
#data 0x0E249076		; addr: CE32AF0
#data 0x0D34E012		; addr: CE32AF4
#data 0x430BD33C		; addr: CE32AF8
#data 0x907064E3		; addr: CE32AFC
#data 0x880100EC		; addr: CE32B00
#data 0xEC008F09		; addr: CE32B04
#data 0xD339906B		; addr: CE32B08
#data 0x430B0EC4		; addr: CE32B0C
#data 0xD23864E3		; addr: CE32B10
#data 0x420BE548		; addr: CE32B14
#data 0x64E3		; addr: CE32B18

data_CE32B1A:
#data 0x85EE		; addr: CE32B1A
#data 0x81EE70FF		; addr: CE32B1C
#data 0x2008600F		; addr: CE32B20
#data 0x905D8B13		; addr: CE32B24
#data 0xD333E61C		; addr: CE32B28
#data 0x0EC464E3		; addr: CE32B2C
#data 0x0EC470FF		; addr: CE32B30
#data 0x9056E516		; addr: CE32B34
#data 0x70010EC4		; addr: CE32B38
#data 0x84E60EC4		; addr: CE32B3C
#data 0x80E67001		; addr: CE32B40
#data 0x6CF64F26		; addr: CE32B44
#data 0x432B6DF6		; addr: CE32B48
#data 0x6EF6		; addr: CE32B4C

data_CE32B4E:
#data 0xE013		; addr: CE32B4E
#data 0x90490DC4		; addr: CE32B50
#data 0x233803EC		; addr: CE32B54
#data 0xD3288B17		; addr: CE32B58
#data 0x64E3430B		; addr: CE32B5C
#data extern_8D032008		; addr: CE32B60
#data 0xE01364E3		; addr: CE32B64
#data 0x0D34E3FF		; addr: CE32B68

#align4
data_CE32B6C:
#data 0x430BD324		; addr: CE32B6C
#data 0x20080009		; addr: CE32B70
#data 0xE0148909		; addr: CE32B74
#data 0x233803DC		; addr: CE32B78
#data 0x03DC8905		; addr: CE32B7C
#data 0x0D3473FF		; addr: CE32B80
#data 0x700185EE		; addr: CE32B84
#data 0x81EE		; addr: CE32B88

data_CE32B8A:
#data 0x4F26		; addr: CE32B8A
#data 0x6DF66CF6		; addr: CE32B8C
#data 0x6EF6000B		; addr: CE32B90
;-------------------------------------------------------------------------------

f_code_CE32B94:
mov.l r14,@-r15		; addr: CE32B94
mov r4,r14		; addr: CE32B96
mov.l r13,@-r15		; addr: CE32B98
mov 0x06,r3 ; r3 set to 0x06		; addr: CE32B9A
mov.w @(data_CE32BDC,pc),r13 ; r13 set to 0x2A4		; addr: CE32B9C
mov 0x12,r0 ; r0 set to 0x12		; addr: CE32B9E
sts.l pr,@-r15		; addr: CE32BA0
add r14,r13 ; r13 ??? bc r14 is ???		; addr: CE32BA2
mov.b r3,@(r0,r13) 		; addr: CE32BA4
mov.l @(ptr_CE32BEC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32BA6
jsr @r3		; addr: CE32BA8
mov r14,r4		; addr: CE32BAA
exts.b r0,r0 ; r0 ??		; addr: CE32BAC
cmp/pz r0		; addr: CE32BAE
bt l_code_CE32BC2		; addr: CE32BB0
mov 0x00,r0 ; r0 set to 0x00		; addr: CE32BB2
mov.l @(ptr_CE32C04_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE32BB4
mov.b r0,@(0x0C,r13) 		; addr: CE32BB6
mov r14,r4		; addr: CE32BB8
lds.l @r15+,pr 		; addr: CE32BBA
mov.l @r15+,r13		; addr: CE32BBC
jmp @r3		; addr: CE32BBE
mov.l @r15+,r14		; addr: CE32BC0

l_code_CE32BC2:
lds.l @r15+,pr 		; addr: CE32BC2
mov.l @r15+,r13		; addr: CE32BC4
rts 		; addr: CE32BC6
mov.l @r15+,r14		; addr: CE32BC8
;-------------------------------------------------------------------------------

f_code_CE32BCA:
mov r4,r3		; addr: CE32BCA
mov.l @(ptr_CE32C08_to_ptr_CE355A0_to_f_code_CE32C0C,pc),r1 ; r1 set to 0xCE355A0		; addr: CE32BCC
mov.l r4,@-r15		; addr: CE32BCE
mov.b @(0x06,r3),r0 		; addr: CE32BD0
extu.b r0,r0		; addr: CE32BD2
shll2 r0		; addr: CE32BD4
mov.l @(r0,r1),r3		; addr: CE32BD6
jmp @r3		; addr: CE32BD8
add 0x04,r15		; addr: CE32BDA

data_CE32BDC:
#data 0x02A4		; addr: CE32BDC
#data 0x03F8		; addr: CE32BDE
#data 0x01410328		; addr: CE32BE0
#data 0x032703F9		; addr: CE32BE4
#data 0x00000525		; addr: CE32BE8

#align4
ptr_CE32BEC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32BEC
#data extern_8C0626D8		; addr: CE32BF0
#data fn_extern_8C04223A		; addr: CE32BF4
#data fn_extern_8C034E8C		; addr: CE32BF8
#data extern_8C055D2E		; addr: CE32BFC
#data extern_8C055D54		; addr: CE32C00

#align4
ptr_CE32C04_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE32C04

ptr_CE32C08_to_ptr_CE355A0_to_f_code_CE32C0C:
#data ptr_CE355A0_to_f_code_CE32C0C		; addr: CE32C08


f_code_CE32C0C:
mov.l r14,@-r15		; addr: CE32C0C
mov r4,r14		; addr: CE32C0E
mov.w @(data_CE32D64,pc),r4 ; r4 set to 0x2A4		; addr: CE32C10
mov 0x07,r0 ; r0 set to 0x07		; addr: CE32C12
sts.l pr,@-r15		; addr: CE32C14
add r14,r4 ; r4 ??? bc r14 is ???		; addr: CE32C16
mov.l @(ptr_CE32D6C_to_fn_extern_8C0BDF70,pc),r3 ; r3 set to 0x8C0BDF70		; addr: CE32C18
mov.b r0,@(0x0C,r4) 		; addr: CE32C1A
mov 0x01,r5 ; r5 set to 0x01		; addr: CE32C1C
mov.b @(0x06,r14),r0 		; addr: CE32C1E
add 0x01,r0 ; r0 set to 0x08		; addr: CE32C20
mov.b r0,@(0x06,r14) 		; addr: CE32C22
jsr @r3		; addr: CE32C24
mov r14,r4		; addr: CE32C26
mov 0x3C,r0 ; r0 set to 0x3C		; addr: CE32C28
fldi0 fr4		; addr: CE32C2A
mov.w r0,@(0x1C,r14) 		; addr: CE32C2C
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32C2E
fmov.s fr4,@(r0,r14) 		; addr: CE32C30
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32C32
fmov.s fr4,@(r0,r14) 		; addr: CE32C34
mov 0x68,r0 ; r0 set to 0x68		; addr: CE32C36
fmov.s fr4,@(r0,r14) 		; addr: CE32C38
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE32C3A
fmov.s fr4,@(r0,r14) 		; addr: CE32C3C
mova @(data_CE32D70,pc),r0  ; r0 set to 0xCE32D70		; addr: CE32C3E
fmov.s @r0,fr3 ; r3 ??		; addr: CE32C40
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32C42
mov.l @(ptr_CE32D7C_to_fn_extern_8C03544C,pc),r3 ; r3 set to 0x8C03544C		; addr: CE32C44
mov 0x01,r7 ; r7 set to 0x01		; addr: CE32C46
fmov.s fr3,@(r0,r14) 		; addr: CE32C48
mova @(data_CE32D74,pc),r0  ; r0 set to 0xCE32D74		; addr: CE32C4A
fmov.s @r0,fr3 ; r3 ??		; addr: CE32C4C
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE32C4E
mov 0x00,r5 ; r5 set to 0x00		; addr: CE32C50
fmov.s fr3,@(r0,r14) 		; addr: CE32C52
mov 0x25,r0 ; r0 set to 0x25		; addr: CE32C54
mov.b @(r0,r14),r6		; addr: CE32C56
mov.l @(ptr_CE32D78_to_data_CE35264,pc),r0 ; r0 set to 0xCE35264		; addr: CE32C58
extu.b r6,r6		; addr: CE32C5A
shll2 r6		; addr: CE32C5C
mov.l @(r0,r6),r6		; addr: CE32C5E
jsr @r3		; addr: CE32C60
mov r14,r4		; addr: CE32C62
lds.l @r15+,pr 		; addr: CE32C64
mov.l @(ptr_CE32D80_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE32C66
mov r14,r4		; addr: CE32C68
mov 0x05,r6 ; r6 set to 0x05		; addr: CE32C6A
mov 0x14,r5 ; r5 set to 0x14		; addr: CE32C6C
jmp @r2		; addr: CE32C6E
mov.l @r15+,r14		; addr: CE32C70

f_code_CE32C72:
mov.l r14,@-r15		; addr: CE32C72
mov r4,r14		; addr: CE32C74
mov.w @(data_CE32D64,pc),r4 ; r4 set to 0x2A4		; addr: CE32C76
mov 0x07,r0 ; r0 set to 0x07		; addr: CE32C78
fmov.s fr15,@-r15		; addr: CE32C7A
add r14,r4 ; r4 ??? bc r14 is ???		; addr: CE32C7C
sts.l pr,@-r15		; addr: CE32C7E
mov.b r0,@(0x0C,r4) 		; addr: CE32C80
mov.w @(0x1C,r14),r0 		; addr: CE32C82
add 0xFF,r0 ; r0 set to 0x06		; addr: CE32C84
mov.w r0,@(0x1C,r14) 		; addr: CE32C86
exts.w r0,r0 ; r0 ??		; addr: CE32C88
tst r0,r0		; addr: CE32C8A
bf/s data_CE32CCE		; addr: CE32C8C
fldi0 fr15		; addr: CE32C8E
mov.l @(ptr_CE32D84_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE32C90
mov 0x00,r0 ; r0 set to 0x00		; addr: CE32C92
mov r0,r5 ; r5 set to 0x00		; addr: CE32C94
mov.b r0,@(0x0C,r4) 		; addr: CE32C96
jsr @r3		; addr: CE32C98
mov r14,r4		; addr: CE32C9A
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32C9C
mov.l @(ptr_CE32D80_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE32C9E
fmov.s fr15,@(r0,r14) 		; addr: CE32CA0
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32CA2
fmov.s fr15,@(r0,r14) 		; addr: CE32CA4
mov 0x68,r0 ; r0 set to 0x68		; addr: CE32CA6
fmov.s fr15,@(r0,r14) 		; addr: CE32CA8
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE32CAA
fmov.s fr15,@(r0,r14) 		; addr: CE32CAC
mova @(data_CE32D88,pc),r0  ; r0 set to 0xCE32D88		; addr: CE32CAE
fmov.s @r0,fr3 ; r3 ??		; addr: CE32CB0
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE32CB2
mov r14,r4		; addr: CE32CB4
mov 0x09,r6 ; r6 set to 0x09		; addr: CE32CB6
fmov.s fr3,@(r0,r14) 		; addr: CE32CB8
mov 0x01,r5 ; r5 set to 0x01		; addr: CE32CBA
mov.b @(0x06,r14),r0 		; addr: CE32CBC
add 0x01,r0 ; r0 set to 0x6D		; addr: CE32CBE
mov.b r0,@(0x06,r14) 		; addr: CE32CC0
mov 0x00,r0 ; r0 set to 0x00		; addr: CE32CC2
mov.b r0,@(0x07,r14) 		; addr: CE32CC4
lds.l @r15+,pr 		; addr: CE32CC6
fmov.s @r15+,fr15		; addr: CE32CC8
jmp @r3		; addr: CE32CCA
mov.l @r15+,r14		; addr: CE32CCC

data_CE32CCE:
#data 0x904A		; addr: CE32CCE
#data 0x233803EC		; addr: CE32CD0
#data 0xE1608B0D		; addr: CE32CD4
#data 0xE03831EC		; addr: CE32CD8
#data 0xF2E6F318		; addr: CE32CDC
#data 0x31ECE16C		; addr: CE32CE0
#data 0xFE27F230		; addr: CE32CE4
#data 0xF2E6E060		; addr: CE32CE8
#data 0xF230F318		; addr: CE32CEC
#data 0xFE27		; addr: CE32CF0

data_CE32CF2:
#data 0xE060		; addr: CE32CF2
#data 0xF2E6F38D		; addr: CE32CF4
#data 0x8F03F325		; addr: CE32CF8
#data 0xFEF764E3		; addr: CE32CFC
#data 0xFEF7E06C		; addr: CE32D00

#align4
data_CE32D04:
#data 0xD3214F26		; addr: CE32D04
#data 0x432BFFF9		; addr: CE32D08
#data 0x6EF6		; addr: CE32D0C


f_code_CE32D0E:
mov.l r14,@-r15		; addr: CE32D0E
mov r4,r14		; addr: CE32D10
mov 0x60,r1 ; r1 set to 0x60		; addr: CE32D12
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32D14
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32D16
sts.l pr,@-r15		; addr: CE32D18
fmov.s @(r0,r14),fr2		; addr: CE32D1A
fmov.s @r1,fr3		; addr: CE32D1C
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE32D1E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32D20
fadd fr3,fr2		; addr: CE32D22
fmov.s fr2,@(r0,r14) 		; addr: CE32D24
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32D26
fmov.s @(r0,r14),fr2		; addr: CE32D28
fmov.s @r1,fr3		; addr: CE32D2A
fadd fr3,fr2		; addr: CE32D2C
fmov.s fr2,@(r0,r14) 		; addr: CE32D2E
mov.w @(data_CE32D68,pc),r0 ; r0 set to 0x41C		; addr: CE32D30
fmov.s @(r0,r14),fr3		; addr: CE32D32
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32D34
fmov.s @(r0,r14),fr2		; addr: CE32D36
fcmp/gt fr2,fr3		; addr: CE32D38
bf l_code_CE32D5E		; addr: CE32D3A
mov.b @(0x07,r14),r0 		; addr: CE32D3C
mov.l @(ptr_CE32D90_to_fn_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4		; addr: CE32D3E
add 0x01,r0 ; r0 set to 0x39		; addr: CE32D40
mov.b r0,@(0x07,r14) 		; addr: CE32D42
mov.w @(data_CE32D68,pc),r0 ; r0 set to 0x41C		; addr: CE32D44
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE32D46
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32D48
fmov.s fr3,@(r0,r14) 		; addr: CE32D4A
jsr @r3		; addr: CE32D4C
mov r14,r4		; addr: CE32D4E
lds.l @r15+,pr 		; addr: CE32D50
mov.l @(ptr_CE32D80_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE32D52
mov r14,r4		; addr: CE32D54
mov 0x03,r6 ; r6 set to 0x03		; addr: CE32D56
mov 0x01,r5 ; r5 set to 0x01		; addr: CE32D58
jmp @r2		; addr: CE32D5A
mov.l @r15+,r14		; addr: CE32D5C

l_code_CE32D5E:
lds.l @r15+,pr 		; addr: CE32D5E
rts 		; addr: CE32D60
mov.l @r15+,r14		; addr: CE32D62
;-------------------------------------------------------------------------------

data_CE32D64:
#data 0x02A4		; addr: CE32D64
#data 0x0140		; addr: CE32D66

data_CE32D68:
#data 0x041C		; addr: CE32D68
#data 0x0000		; addr: CE32D6A

#align4
ptr_CE32D6C_to_fn_extern_8C0BDF70:
#data fn_extern_8C0BDF70		; addr: CE32D6C

data_CE32D70:
#data 0x40092492		; addr: CE32D70

#align4
data_CE32D74:
#data 0xBD892492		; addr: CE32D74

#align4
ptr_CE32D78_to_data_CE35264:
#data data_CE35264		; addr: CE32D78

ptr_CE32D7C_to_fn_extern_8C03544C:
#data fn_extern_8C03544C		; addr: CE32D7C

ptr_CE32D80_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE32D80

ptr_CE32D84_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE32D84

data_CE32D88:
#data 0xBF4DB6DB		; addr: CE32D88
#data fn_extern_8C034DEE		; addr: CE32D8C

#align4
ptr_CE32D90_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE32D90


f_code_CE32D94:
mov.l r14,@-r15		; addr: CE32D94
sts.l pr,@-r15		; addr: CE32D96
add 0xFC,r15		; addr: CE32D98
mov.w @(data_CE32EDE,pc),r3 ; r3 set to 0x2A4		; addr: CE32D9A
mov r4,r14		; addr: CE32D9C
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE32D9E
mov.l r3,@r15		; addr: CE32DA0
mov.l @(ptr_CE32EF0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32DA2
jsr @r3		; addr: CE32DA4
mov r14,r4		; addr: CE32DA6
exts.b r0,r0		; addr: CE32DA8
cmp/pz r0		; addr: CE32DAA
bt l_code_CE32DC0		; addr: CE32DAC
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE32DAE
mov 0x00,r0 ; r0 set to 0x00		; addr: CE32DB0
mov r14,r4		; addr: CE32DB2
mov.b r0,@(0x0C,r3) 		; addr: CE32DB4
add 0x04,r15		; addr: CE32DB6
lds.l @r15+,pr 		; addr: CE32DB8
mov.l @(ptr_CE32EF4_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE32DBA
jmp @r3		; addr: CE32DBC
mov.l @r15+,r14		; addr: CE32DBE

l_code_CE32DC0:
add 0x04,r15		; addr: CE32DC0
lds.l @r15+,pr 		; addr: CE32DC2
rts 		; addr: CE32DC4
mov.l @r15+,r14		; addr: CE32DC6
;-------------------------------------------------------------------------------

f_code_CE32DC8:
mov r4,r3		; addr: CE32DC8
mov.l @(ptr_CE32EF8_to_ptr_CE355AC_to_f_code_CE32D0E,pc),r1 ; r1 set to 0xCE355AC		; addr: CE32DCA
mov.l r4,@-r15		; addr: CE32DCC
mov.b @(0x07,r3),r0 		; addr: CE32DCE
extu.b r0,r0		; addr: CE32DD0
shll2 r0		; addr: CE32DD2
mov.l @(r0,r1),r3		; addr: CE32DD4
jmp @r3		; addr: CE32DD6
add 0x04,r15		; addr: CE32DD8

f_code_CE32DDA:
mov.l r14,@-r15		; addr: CE32DDA
mov r4,r14		; addr: CE32DDC
mov.w @(data_CE32EDE,pc),r4 ; r4 set to 0x2A4		; addr: CE32DDE
mov 0x0C,r0 ; r0 set to 0x0C		; addr: CE32DE0
mov.l @(ptr_CE32EFC_to_ptr_CE355B4_to_data_CE32DF6,pc),r1 ; r1 set to 0xCE355B4		; addr: CE32DE2
add r14,r4 ; r4 ??? bc r14 is ???		; addr: CE32DE4
mov.b r0,@(0x0C,r4) 		; addr: CE32DE6
mov r14,r4		; addr: CE32DE8
mov.b @(0x06,r14),r0 		; addr: CE32DEA
extu.b r0,r0 ; r0 set to 0x0C		; addr: CE32DEC
shll2 r0 ; r0 set to 0x30		; addr: CE32DEE
mov.l @(r0,r1),r3		; addr: CE32DF0
jmp @r3		; addr: CE32DF2
mov.l @r15+,r14		; addr: CE32DF4

data_CE32DF6:
#data 0x2FE6		; addr: CE32DF6
#data 0x4F222FD6		; addr: CE32DF8
#data 0x936E7FFC		; addr: CE32DFC
#data 0xE5006E43		; addr: CE32E00
#data 0x2F3233EC		; addr: CE32E04
#data 0xD33D84E6		; addr: CE32E08
#data 0x80E67001		; addr: CE32E0C
#data 0x64E3430B		; addr: CE32E10
#data 0xE2489064		; addr: CE32E14
#data 0xD33AED00		; addr: CE32E18
#data 0x700B0E24		; addr: CE32E1C
#data 0x70F20ED5		; addr: CE32E20
#data 0x70260ED4		; addr: CE32E24
#data 0x84E20ED6		; addr: CE32E28
#data 0x600C6232		; addr: CE32E2C
#data 0x727C4000		; addr: CE32E30
#data 0x7101012D		; addr: CE32E34
#data 0xB82D0215		; addr: CE32E38
#data 0xD33264E3		; addr: CE32E3C
#data 0x64E3430B		; addr: CE32E40
#data 0xE01562F2		; addr: CE32E44
#data 0x904A02D4		; addr: CE32E48
#data 0x600C00EC		; addr: CE32E4C
#data 0x8F068806		; addr: CE32E50
#data 0x9046E629		; addr: CE32E54
#data 0x9243E310		; addr: CE32E58
#data 0x70010E24		; addr: CE32E5C
#data 0x0E34		; addr: CE32E60

data_CE32E62:
#data 0x64E3		; addr: CE32E62
#data 0x7F04E516		; addr: CE32E64
#data 0xD3284F26		; addr: CE32E68
#data 0x432B6DF6		; addr: CE32E6C
#data 0x6EF6		; addr: CE32E70


f_code_CE32E72:
mov.l r14,@-r15		; addr: CE32E72
sts.l pr,@-r15		; addr: CE32E74
add 0xF4,r15		; addr: CE32E76
mov.l @(ptr_CE32EF0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32E78
jsr @r3		; addr: CE32E7A
mov r4,r14		; addr: CE32E7C
mov.w @(data_CE32EE8,pc),r0 ; r0 set to 0x3F8		; addr: CE32E7E
mov 0x02,r2 ; r2 set to 0x02		; addr: CE32E80
mov 0x05,r3 ; r3 set to 0x05		; addr: CE32E82
mov.b r2,@(r0,r14) 		; addr: CE32E84
mov.w @(data_CE32EEA,pc),r0 ; r0 set to 0x328		; addr: CE32E86
mov.b r3,@(r0,r14) 		; addr: CE32E88
mov.w @(data_CE32EE2,pc),r0 ; r0 set to 0x255		; addr: CE32E8A
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE32E8C
extu.b r0,r0		; addr: CE32E8E
cmp/eq 0x06,r0 		; addr: CE32E90
bf data_CE32E98		; addr: CE32E92
bra data_CE32E9A		; addr: CE32E94
mov 0x02,r2		; addr: CE32E96

data_CE32E98:
#data 0xE200		; addr: CE32E98

data_CE32E9A:
#data 0x9027		; addr: CE32E9A
#data 0x90260E24		; addr: CE32E9C
#data 0x233803EC		; addr: CE32EA0
#data 0x901E8917		; addr: CE32EA4
#data 0xD31BE400		; addr: CE32EA8
#data 0x0E4465F3		; addr: CE32EAC
#data 0x0E447001		; addr: CE32EB0
#data 0x84E6E601		; addr: CE32EB4
#data 0x80E67001		; addr: CE32EB8
#data 0x0E449017		; addr: CE32EBC
#data 0x81EE70EB		; addr: CE32EC0
#data 0xF308C712		; addr: CE32EC4
#data 0xFF3AC712		; addr: CE32EC8
#data 0xE004F308		; addr: CE32ECC
#data 0x430BFF37		; addr: CE32ED0
#data 0x64E3		; addr: CE32ED4

data_CE32ED6:
#data 0x7F0C		; addr: CE32ED6
#data 0x000B4F26		; addr: CE32ED8
#data 0x6EF6		; addr: CE32EDC
;-------------------------------------------------------------------------------

data_CE32EDE:
#data 0x02A4		; addr: CE32EDE
#data 0x01A1		; addr: CE32EE0

data_CE32EE2:
#data 0x0255		; addr: CE32EE2
#data 0x03F000FF		; addr: CE32EE4

data_CE32EE8:
#data 0x03F8		; addr: CE32EE8

data_CE32EEA:
#data 0x0328		; addr: CE32EEA
#data 0x014103F1		; addr: CE32EEC

#align4
ptr_CE32EF0_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32EF0

ptr_CE32EF4_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE32EF4

ptr_CE32EF8_to_ptr_CE355AC_to_f_code_CE32D0E:
#data ptr_CE355AC_to_f_code_CE32D0E		; addr: CE32EF8

ptr_CE32EFC_to_ptr_CE355B4_to_data_CE32DF6:
#data ptr_CE355B4_to_data_CE32DF6		; addr: CE32EFC
#data fn_extern_8C035162		; addr: CE32F00
#data extern_8C2896B0		; addr: CE32F04
#data fn_extern_8C05115A		; addr: CE32F08
#data fn_extern_8C034E8C		; addr: CE32F0C
#data 0xC0D55555		; addr: CE32F10
#data 0x433C9249		; addr: CE32F14
#data extern_8C050834		; addr: CE32F18


f_code_CE32F1C:
mov.l r14,@-r15		; addr: CE32F1C
mov.l r13,@-r15		; addr: CE32F1E
sts.l pr,@-r15		; addr: CE32F20
add 0xFC,r15		; addr: CE32F22
mov.w @(data_CE3304E,pc),r0 ; r0 set to 0x3F8		; addr: CE32F24
mov 0x02,r2 ; r2 set to 0x02		; addr: CE32F26
mov.w @(data_CE3304C,pc),r3 ; r3 set to 0x2A4		; addr: CE32F28
mov r4,r14		; addr: CE32F2A
mov 0x00,r13 ; r13 set to 0x00		; addr: CE32F2C
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE32F2E
mov.l r3,@r15		; addr: CE32F30
mov 0x05,r3 ; r3 set to 0x05		; addr: CE32F32
mov.b r2,@(r0,r14) 		; addr: CE32F34
mov.w @(data_CE33050,pc),r0 ; r0 set to 0x328		; addr: CE32F36
mov.b r3,@(r0,r14) 		; addr: CE32F38
mov.l @(ptr_CE3305C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32F3A
jsr @r3		; addr: CE32F3C
mov r14,r4		; addr: CE32F3E
exts.b r0,r0 ; r0 ??		; addr: CE32F40
cmp/pz r0		; addr: CE32F42
bt data_CE32F6E		; addr: CE32F44
mov.b @(0x06,r14),r0 		; addr: CE32F46
mov 0x16,r5 ; r5 set to 0x16		; addr: CE32F48
mov r14,r4		; addr: CE32F4A
mov 0x2A,r6 ; r6 set to 0x2A		; addr: CE32F4C
add 0x01,r0		; addr: CE32F4E
mov.b r0,@(0x06,r14) 		; addr: CE32F50
mov.w @(data_CE33052,pc),r0 ; r0 set to 0x3F9		; addr: CE32F52
mov.b r13,@(r0,r14) 		; addr: CE32F54
add 0xFF,r0 ; r0 set to 0x3F8		; addr: CE32F56
mov.b r13,@(r0,r14) 		; addr: CE32F58
mov.w @(data_CE33054,pc),r0 ; r0 set to 0x327		; addr: CE32F5A
mov.b r13,@(r0,r14) 		; addr: CE32F5C
add 0x01,r0 ; r0 set to 0x328		; addr: CE32F5E
mov.b r13,@(r0,r14) 		; addr: CE32F60
add 0x04,r15		; addr: CE32F62
lds.l @r15+,pr 		; addr: CE32F64
mov.l @(ptr_CE33060_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE32F66
mov.l @r15+,r13 ; r13 ??? bc r15 is ???		; addr: CE32F68
jmp @r3		; addr: CE32F6A
mov.l @r15+,r14		; addr: CE32F6C

data_CE32F6E:
#data 0x9072		; addr: CE32F6E
#data 0x222802EC		; addr: CE32F70
#data 0xD33B890A		; addr: CE32F74
#data 0x430B0ED4		; addr: CE32F78
#data 0x200864E3		; addr: CE32F7C
#data 0x63F28904		; addr: CE32F80
#data 0x023CE015		; addr: CE32F84
#data 0x03247201		; addr: CE32F88

#align4
data_CE32F8C:
#data 0x4F267F04		; addr: CE32F8C
#data 0x000B6DF6		; addr: CE32F90
#data 0x6EF6		; addr: CE32F94
;-------------------------------------------------------------------------------

f_code_CE32F96:
mov.l r14,@-r15		; addr: CE32F96
mov r4,r14		; addr: CE32F98
mov.l r13,@-r15		; addr: CE32F9A
mov 0x06,r3 ; r3 set to 0x06		; addr: CE32F9C
mov.w @(data_CE3304C,pc),r13 ; r13 set to 0x2A4		; addr: CE32F9E
mov 0x12,r0 ; r0 set to 0x12		; addr: CE32FA0
sts.l pr,@-r15		; addr: CE32FA2
add r14,r13 ; r13 ??? bc r14 is ???		; addr: CE32FA4
mov.b r3,@(r0,r13) 		; addr: CE32FA6
mov.l @(ptr_CE3305C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32FA8
jsr @r3		; addr: CE32FAA
mov r14,r4		; addr: CE32FAC
mov 0x15,r0 ; r0 set to 0x15		; addr: CE32FAE
mov.b @(r0,r13),r2		; addr: CE32FB0
tst r2,r2		; addr: CE32FB2
bf l_code_CE32FD4		; addr: CE32FB4
mov.b @(0x06,r14),r0 		; addr: CE32FB6
mov 0x00,r5 ; r5 set to 0x00		; addr: CE32FB8
mov.l @(ptr_CE33068_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE32FBA
add 0x01,r0 ; r0 set to 0x16		; addr: CE32FBC
mov.b r0,@(0x06,r14) 		; addr: CE32FBE
jsr @r3		; addr: CE32FC0
mov r14,r4		; addr: CE32FC2
lds.l @r15+,pr 		; addr: CE32FC4
mov.l @(ptr_CE33060_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE32FC6
mov 0x2B,r6 ; r6 set to 0x2B		; addr: CE32FC8
mov 0x16,r5 ; r5 set to 0x16		; addr: CE32FCA
mov r14,r4		; addr: CE32FCC
mov.l @r15+,r13		; addr: CE32FCE
jmp @r2		; addr: CE32FD0
mov.l @r15+,r14		; addr: CE32FD2

l_code_CE32FD4:
lds.l @r15+,pr 		; addr: CE32FD4
mov.l @r15+,r13		; addr: CE32FD6
rts 		; addr: CE32FD8
mov.l @r15+,r14		; addr: CE32FDA
;-------------------------------------------------------------------------------

f_code_CE32FDC:
mov.l r14,@-r15		; addr: CE32FDC
sts.l pr,@-r15		; addr: CE32FDE
add 0xFC,r15		; addr: CE32FE0
mov.w @(data_CE3304C,pc),r3 ; r3 set to 0x2A4		; addr: CE32FE2
mov r4,r14		; addr: CE32FE4
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE32FE6
mov.l r3,@r15		; addr: CE32FE8
mov.l @(ptr_CE3305C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32FEA
jsr @r3		; addr: CE32FEC
mov r14,r4		; addr: CE32FEE
exts.b r0,r0		; addr: CE32FF0
cmp/pz r0		; addr: CE32FF2
bt l_code_CE33008		; addr: CE32FF4
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE32FF6
mov 0x00,r0 ; r0 set to 0x00		; addr: CE32FF8
mov r14,r4		; addr: CE32FFA
mov.b r0,@(0x0C,r3) 		; addr: CE32FFC
add 0x04,r15		; addr: CE32FFE
lds.l @r15+,pr 		; addr: CE33000
mov.l @(ptr_CE3306C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE33002
jmp @r3		; addr: CE33004
mov.l @r15+,r14		; addr: CE33006

l_code_CE33008:
add 0x04,r15		; addr: CE33008
lds.l @r15+,pr 		; addr: CE3300A
rts 		; addr: CE3300C
mov.l @r15+,r14		; addr: CE3300E
;-------------------------------------------------------------------------------

f_code_CE33010:
mov 0x20,r0 ; r0 set to 0x20		; addr: CE33010
mov r4,r3		; addr: CE33012
mov.l r4,@-r15		; addr: CE33014
mov.b @(r0,r3),r2		; addr: CE33016
mov.l @(ptr_CE33070_to_ptr_CE355C8_to_f_code_CE33A12,pc),r0 ; r0 set to 0xCE355C8		; addr: CE33018
extu.b r2,r2		; addr: CE3301A
shll2 r2		; addr: CE3301C
mov.l @(r0,r2),r3		; addr: CE3301E
jmp @r3		; addr: CE33020
add 0x04,r15		; addr: CE33022

f_code_CE33024:
mov.l r14,@-r15		; addr: CE33024
sts.l pr,@-r15		; addr: CE33026
add 0xF0,r15		; addr: CE33028
mov.w @(data_CE3304E,pc),r0 ; r0 set to 0x3F8		; addr: CE3302A
mov r4,r14		; addr: CE3302C
mov.w @(data_CE3304C,pc),r3 ; r3 set to 0x2A4		; addr: CE3302E
mov 0x02,r2 ; r2 set to 0x02		; addr: CE33030
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE33032
mov.l r3,@r15		; addr: CE33034
mov 0x05,r3 ; r3 set to 0x05		; addr: CE33036
mov.b r2,@(r0,r14) 		; addr: CE33038
mov.w @(data_CE33050,pc),r0 ; r0 set to 0x328		; addr: CE3303A
mov.b r3,@(r0,r14) 		; addr: CE3303C
mov.w @(data_CE33058,pc),r0 ; r0 set to 0x255		; addr: CE3303E
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE33040
extu.b r0,r0		; addr: CE33042
cmp/eq 0x06,r0 		; addr: CE33044
bf data_CE33074		; addr: CE33046
bra data_CE33076		; addr: CE33048
mov 0x02,r2		; addr: CE3304A

data_CE3304C:
#data 0x02A4		; addr: CE3304C

data_CE3304E:
#data 0x03F8		; addr: CE3304E

data_CE33050:
#data 0x0328		; addr: CE33050

data_CE33052:
#data 0x03F9		; addr: CE33052

data_CE33054:
#data 0x0327		; addr: CE33054
#data 0x0140		; addr: CE33056

data_CE33058:
#data 0x0255		; addr: CE33058
#data 0x0000		; addr: CE3305A

#align4
ptr_CE3305C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE3305C

ptr_CE33060_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE33060
#data extern_8C063500		; addr: CE33064

#align4
ptr_CE33068_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE33068

ptr_CE3306C_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE3306C

ptr_CE33070_to_ptr_CE355C8_to_f_code_CE33A12:
#data ptr_CE355C8_to_f_code_CE33A12		; addr: CE33070

data_CE33074:
#data 0xE200		; addr: CE33074

data_CE33076:
#data 0x9085		; addr: CE33076
#data 0x0E24D346		; addr: CE33078
#data 0x64E3430B		; addr: CE3307C
#data 0x4011600E		; addr: CE33080
#data 0x907E893A		; addr: CE33084
#data 0x0E44E400		; addr: CE33088
#data 0x0E447001		; addr: CE3308C
#data 0x700184E6		; addr: CE33090
#data 0x604380E6		; addr: CE33094
#data 0x80E70009		; addr: CE33098
#data 0x81EEE028		; addr: CE3309C
#data 0xF308C73D		; addr: CE330A0
#data 0xFE37E05C		; addr: CE330A4
#data 0xF308C73C		; addr: CE330A8
#data 0xFE37E068		; addr: CE330AC
#data 0x03ED906A		; addr: CE330B0
#data 0x8B072338		; addr: CE330B4
#data 0xF3E6E05C		; addr: CE330B8
#data 0xFE37F34D		; addr: CE330BC
#data 0xF3E6E068		; addr: CE330C0
#data 0xFE37F34D		; addr: CE330C4

#align4
data_CE330C8:
#data 0xE302905F		; addr: CE330C8
#data 0x0E34E516		; addr: CE330CC
#data 0xD333E606		; addr: CE330D0
#data 0x64E3430B		; addr: CE330D4
#data 0xE01C62F2		; addr: CE330D8
#data 0x65F3E301		; addr: CE330DC
#data 0xC7300234		; addr: CE330E0
#data 0xE004F308		; addr: CE330E4
#data 0xD3306633		; addr: CE330E8
#data 0xC72EFF37		; addr: CE330EC
#data 0xE008F308		; addr: CE330F0
#data 0xFF377504		; addr: CE330F4
#data 0x64E3430B		; addr: CE330F8

#align4
data_CE330FC:
#data 0x4F267F10		; addr: CE330FC
#data 0x6EF6000B		; addr: CE33100
;-------------------------------------------------------------------------------

#align4
data_CE33104:
#data 0x2FE69042		; addr: CE33104
#data 0x4F226E43		; addr: CE33108
#data 0x600C00EC		; addr: CE3310C
#data 0x8B058806		; addr: CE33110
#data 0xE3109037		; addr: CE33114
#data 0x0E249239		; addr: CE33118
#data 0x0E347001		; addr: CE3311C

#align4
data_CE33120:
#data 0xD32384E7		; addr: CE33120
#data 0x80E77001		; addr: CE33124
#data 0x64E3430B		; addr: CE33128
#data 0x420BD221		; addr: CE3312C
#data 0x902D64E3		; addr: CE33130
#data 0xE400E33B		; addr: CE33134
#data 0x700B0E34		; addr: CE33138
#data 0x70F20E45		; addr: CE3313C
#data 0x70260E44		; addr: CE33140
#data 0x6543D31C		; addr: CE33144
#data 0x84E20E46		; addr: CE33148
#data 0x600C6232		; addr: CE3314C
#data 0x727C4000		; addr: CE33150
#data 0x7101012D		; addr: CE33154
#data 0xD2180215		; addr: CE33158
#data 0x64E3420B		; addr: CE3315C
#data 0xE516D30F		; addr: CE33160
#data 0x430BE605		; addr: CE33164
#data 0x4F2664E3		; addr: CE33168
#data 0xAF5964E3		; addr: CE3316C
#data 0x6EF6		; addr: CE33170


f_code_CE33172:
mov r4,r3		; addr: CE33172
mov.l @(ptr_CE331C0_to_ptr_CE355D0_to_data_CE33104,pc),r1 ; r1 set to 0xCE355D0		; addr: CE33174
mov.l r4,@-r15		; addr: CE33176
mov.b @(0x07,r3),r0 		; addr: CE33178
extu.b r0,r0		; addr: CE3317A
shll2 r0		; addr: CE3317C
mov.l @(r0,r1),r3		; addr: CE3317E
jmp @r3		; addr: CE33180
add 0x04,r15		; addr: CE33182
#data 0x03F003F1		; addr: CE33184
#data 0x01F90130		; addr: CE33188
#data 0x00FF0255		; addr: CE3318C
#data 0x000001A1		; addr: CE33190
#data fn_extern_8C034DEE		; addr: CE33194
#data 0x41555555		; addr: CE33198
#data 0xBDD55555		; addr: CE3319C
#data fn_extern_8C034E8C		; addr: CE331A0
#data 0xC1D55555		; addr: CE331A4
#data 0x43092492		; addr: CE331A8
#data extern_8C050834		; addr: CE331AC

#align4
ptr_CE331B0_to_f_code_CE31E98:
#data f_code_CE31E98		; addr: CE331B0
#data fn_extern_8C05115A		; addr: CE331B4
#data extern_8C2896B0		; addr: CE331B8
#data fn_extern_8C035162		; addr: CE331BC

#align4
ptr_CE331C0_to_ptr_CE355D0_to_data_CE33104:
#data ptr_CE355D0_to_data_CE33104		; addr: CE331C0


f_code_CE331C4:
mov.l r14,@-r15		; addr: CE331C4
mov r4,r14		; addr: CE331C6
mov.l r13,@-r15		; addr: CE331C8
mov.l r12,@-r15		; addr: CE331CA
mov.l r11,@-r15		; addr: CE331CC
fmov.s fr15,@-r15		; addr: CE331CE
sts.l pr,@-r15		; addr: CE331D0
mov.w @(data_CE33314,pc),r13 ; r13 set to 0x2A4		; addr: CE331D2
mov.l @(ptr_CE33324_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE331D4
jsr @r3		; addr: CE331D6
add r14,r13 ; r13 ??? bc r14 is ???		; addr: CE331D8
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE331DA
mov.l @(ptr_CE33328_to_fn_extern_8C034E8C,pc),r11 ; r11 set to 0x8C034E8C		; addr: CE331DC
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE331DE
fldi0 fr15		; addr: CE331E0
mov 0x34,r0 ; r0 set to 0x34		; addr: CE331E2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE331E4
fmov.s @(r0,r14),fr2		; addr: CE331E6
mov 0x68,r1 ; r1 set to 0x68		; addr: CE331E8
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE331EA
fadd fr3,fr2		; addr: CE331EC
fmov.s fr2,@(r0,r14) 		; addr: CE331EE
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE331F0
fmov.s @(r0,r14),fr2		; addr: CE331F2
fmov.s @r1,fr3		; addr: CE331F4
fadd fr3,fr2		; addr: CE331F6
fmov.s fr2,@(r0,r14) 		; addr: CE331F8
mov.w @(data_CE33316,pc),r0 ; r0 set to 0x19E		; addr: CE331FA
mov.b @(r0,r14),r3		; addr: CE331FC
cmp/pz r3		; addr: CE331FE
bt/s data_CE332C8		; addr: CE33200
mov 0x00,r12 ; r12 set to 0x00		; addr: CE33202
mov.l @(ptr_CE3332C_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE33204
mov 0x1C,r0 ; r0 set to 0x1C		; addr: CE33206
mov 0x2B,r5 ; r5 set to 0x2B		; addr: CE33208
mov.b r12,@(r0,r13) 		; addr: CE3320A
jsr @r3		; addr: CE3320C
mov r14,r4		; addr: CE3320E
mov.w @(data_CE33316,pc),r0 ; r0 set to 0x19E		; addr: CE33210
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE33212
tst 0x7F,r0 		; addr: CE33214
bf data_CE3327C		; addr: CE33216
mov.l @(ptr_CE33330_to_fn_extern_8C05264C,pc),r2 ; r2 set to 0x8C05264C		; addr: CE33218
jsr @r2		; addr: CE3321A
mov r14,r4		; addr: CE3321C
tst r0,r0		; addr: CE3321E
bt data_CE3327C		; addr: CE33220
mov.b @(0x06,r14),r0 		; addr: CE33222
add 0x01,r0		; addr: CE33224
mov.b r0,@(0x06,r14) 		; addr: CE33226
mov r12,r0 ; r0 set to 0x00		; addr: CE33228
nop 		; addr: CE3322A
mov.l @(ptr_CE33334_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE3322C
mov 0x05,r6 ; r6 set to 0x05		; addr: CE3322E
mov.b r0,@(0x07,r14) 		; addr: CE33230
mov r6,r5 ; r5 set to 0x05		; addr: CE33232
jsr @r3		; addr: CE33234
mov r14,r4		; addr: CE33236
mov.w @(data_CE33318,pc),r0 ; r0 set to 0x41C		; addr: CE33238
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE3323A
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3323C
fmov.s fr3,@(r0,r14) 		; addr: CE3323E
mov.w @(data_CE3331A,pc),r0 ; r0 set to 0x1B0		; addr: CE33240
mov.l @(r0,r14),r3		; addr: CE33242
mov.l r3,@r13		; addr: CE33244
mov r12,r0 ; r0 set to 0x00		; addr: CE33246
nop 		; addr: CE33248
mov.b r0,@(0x0D,r13) 		; addr: CE3324A
mov 0x16,r0 ; r0 set to 0x16		; addr: CE3324C
mov.l @(ptr_CE33338_to_fn_extern_8C063900,pc),r3 ; r3 set to 0x8C063900		; addr: CE3324E
mov 0x00,r5 ; r5 set to 0x00		; addr: CE33250
mov.b r12,@(r0,r13) 		; addr: CE33252
jsr @r3		; addr: CE33254
mov r14,r4		; addr: CE33256
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33258
mov 0x0F,r6 ; r6 set to 0x0F		; addr: CE3325A
jsr @r11		; addr: CE3325C
mov r14,r4		; addr: CE3325E
mov.w @(data_CE3331C,pc),r2 ; r2 set to 0xC5		; addr: CE33260
mov r14,r4		; addr: CE33262
mov.w @(data_CE3331E,pc),r0 ; r0 set to 0x1F7		; addr: CE33264
mov.l @(ptr_CE3333C_to_fn_extern_8C0523D8,pc),r3 ; r3 set to 0x8C0523D8		; addr: CE33266
mov.b r2,@(r0,r14) 		; addr: CE33268
add 0xB9,r0 ; r0 set to 0x1B0		; addr: CE3326A
lds.l @r15+,pr 		; addr: CE3326C
mov.l @(r0,r14),r5 ; r5 ??? bc r14 is ???		; addr: CE3326E
fmov.s @r15+,fr15		; addr: CE33270
mov.l @r15+,r11 ; r11 ??? bc r15 is ???		; addr: CE33272
mov.l @r15+,r12 ; r12 ??? bc r15 is ???		; addr: CE33274
mov.l @r15+,r13		; addr: CE33276
jmp @r3		; addr: CE33278
mov.l @r15+,r14		; addr: CE3327A

#align4
data_CE3327C:
#data 0xF3E6904C		; addr: CE3327C
#data 0xFE37E038		; addr: CE33280
#data 0x80E7E001		; addr: CE33284
#data 0xF308C72D		; addr: CE33288
#data 0xFE37E05C		; addr: CE3328C
#data 0xFEF7E068		; addr: CE33290
#data 0xF308C72B		; addr: CE33294
#data 0xFE37E060		; addr: CE33298
#data 0xF308C72A		; addr: CE3329C
#data 0xFE37E06C		; addr: CE332A0
#data 0x03ED903C		; addr: CE332A4
#data extern_8D082338		; addr: CE332A8
#data 0xE05CE60B		; addr: CE332AC
#data 0xF34DF3E6		; addr: CE332B0
#data 0xE068FE37		; addr: CE332B4
#data 0xF34DF3E6		; addr: CE332B8
#data 0xFE37		; addr: CE332BC

data_CE332BE:
#data 0xE516		; addr: CE332BE
#data 0x64E34B0B		; addr: CE332C0
#data 0x0009A01F		; addr: CE332C4

#align4
data_CE332C8:
#data 0x70FF85EE		; addr: CE332C8
#data 0x600F81EE		; addr: CE332CC
#data 0x8B182008		; addr: CE332D0
#data 0xE01CD315		; addr: CE332D4
#data 0x0DC4E52B		; addr: CE332D8
#data 0x64E3430B		; addr: CE332DC
#data 0x80E6E003		; addr: CE332E0
#data 0x000960C3		; addr: CE332E4
#data 0xE06080E7		; addr: CE332E8
#data 0xE06CFEF7		; addr: CE332EC
#data 0xF330F39D		; addr: CE332F0
#data 0xE05CFEF7		; addr: CE332F4
#data 0xE516F2E6		; addr: CE332F8
#data 0xF233E60A		; addr: CE332FC
#data 0x4B0BFE27		; addr: CE33300
#data 0x64E3		; addr: CE33304

data_CE33306:
#data 0x4F26		; addr: CE33306
#data 0x6BF6FFF9		; addr: CE33308
#data 0x6DF66CF6		; addr: CE3330C
#data 0x6EF6000B		; addr: CE33310
;-------------------------------------------------------------------------------

data_CE33314:
#data 0x02A4		; addr: CE33314

data_CE33316:
#data 0x019E		; addr: CE33316

data_CE33318:
#data 0x041C		; addr: CE33318

data_CE3331A:
#data 0x01B0		; addr: CE3331A

data_CE3331C:
#data 0x00C5		; addr: CE3331C

data_CE3331E:
#data 0x01F7		; addr: CE3331E
#data 0x00000130		; addr: CE33320

#align4
ptr_CE33324_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33324

ptr_CE33328_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE33328

ptr_CE3332C_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE3332C

ptr_CE33330_to_fn_extern_8C05264C:
#data fn_extern_8C05264C		; addr: CE33330

ptr_CE33334_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE33334

ptr_CE33338_to_fn_extern_8C063900:
#data fn_extern_8C063900		; addr: CE33338

ptr_CE3333C_to_fn_extern_8C0523D8:
#data fn_extern_8C0523D8		; addr: CE3333C
#data 0x40555555		; addr: CE33340
#data 0x41892492		; addr: CE33344
#data 0xBF4DB6DB		; addr: CE33348


f_code_CE3334C:
mov.l r14,@-r15		; addr: CE3334C
sts.l pr,@-r15		; addr: CE3334E
mov.l @(ptr_CE333F4_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33350
jsr @r3		; addr: CE33352
mov r4,r14		; addr: CE33354
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE33356
mov.l @(ptr_CE333F8_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2		; addr: CE33358
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3335A
mov 0x34,r0 ; r0 set to 0x34		; addr: CE3335C
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE3335E
fmov.s @(r0,r14),fr2		; addr: CE33360
mov 0x68,r1 ; r1 set to 0x68		; addr: CE33362
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33364
fadd fr3,fr2		; addr: CE33366
fmov.s fr2,@(r0,r14) 		; addr: CE33368
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3336A
fmov.s @(r0,r14),fr2		; addr: CE3336C
fmov.s @r1,fr3		; addr: CE3336E
mov 0x60,r1 ; r1 set to 0x60		; addr: CE33370
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33372
fadd fr3,fr2		; addr: CE33374
fmov.s fr2,@(r0,r14) 		; addr: CE33376
mov 0x38,r0 ; r0 set to 0x38		; addr: CE33378
fmov.s @(r0,r14),fr2		; addr: CE3337A
fmov.s @r1,fr3		; addr: CE3337C
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE3337E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33380
fadd fr3,fr2		; addr: CE33382
fmov.s fr2,@(r0,r14) 		; addr: CE33384
mov 0x60,r0 ; r0 set to 0x60		; addr: CE33386
fmov.s @(r0,r14),fr2		; addr: CE33388
fmov.s @r1,fr3		; addr: CE3338A
fadd fr3,fr2		; addr: CE3338C
fmov.s fr2,@(r0,r14) 		; addr: CE3338E
jsr @r3		; addr: CE33390
mov r14,r4		; addr: CE33392
extu.b r0,r0 ; r0 set to 0x60		; addr: CE33394
tst r0,r0		; addr: CE33396
bt l_code_CE333C8		; addr: CE33398
mov 0x03,r0 ; r0 set to 0x03		; addr: CE3339A
fldi0 fr4		; addr: CE3339C
mov.b r0,@(0x06,r14) 		; addr: CE3339E
mov 0x00,r0 ; r0 set to 0x00		; addr: CE333A0
mov.b r0,@(0x07,r14) 		; addr: CE333A2
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE333A4
fmov.s fr4,@(r0,r14) 		; addr: CE333A6
mov 0x60,r0 ; r0 set to 0x60		; addr: CE333A8
fmov.s fr4,@(r0,r14) 		; addr: CE333AA
mov 0x68,r0 ; r0 set to 0x68		; addr: CE333AC
fmov.s fr4,@(r0,r14) 		; addr: CE333AE
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE333B0
mov.l @(ptr_CE333FC_to_fn_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4		; addr: CE333B2
fmov.s fr4,@(r0,r14) 		; addr: CE333B4
jsr @r3		; addr: CE333B6
mov r14,r4		; addr: CE333B8
lds.l @r15+,pr 		; addr: CE333BA
mov.l @(ptr_CE33400_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE333BC
mov r14,r4		; addr: CE333BE
mov 0x0C,r6 ; r6 set to 0x0C		; addr: CE333C0
mov 0x16,r5 ; r5 set to 0x16		; addr: CE333C2
jmp @r2		; addr: CE333C4
mov.l @r15+,r14		; addr: CE333C6

l_code_CE333C8:
lds.l @r15+,pr 		; addr: CE333C8
rts 		; addr: CE333CA
mov.l @r15+,r14		; addr: CE333CC
;-------------------------------------------------------------------------------

f_code_CE333CE:
mov.w @(data_CE333EE,pc),r0 ; r0 set to 0x3F8		; addr: CE333CE
mov 0x02,r3 ; r3 set to 0x02		; addr: CE333D0
mov.l r14,@-r15		; addr: CE333D2
mov r4,r14		; addr: CE333D4
mov.b r3,@(r0,r14) 		; addr: CE333D6
mov 0x05,r2 ; r2 set to 0x05		; addr: CE333D8
mov.w @(data_CE333F0,pc),r0 ; r0 set to 0x328		; addr: CE333DA
mov r14,r4		; addr: CE333DC
mov.l @(ptr_CE33404_to_ptr_CE355D8_to_f_code_CE331C4,pc),r1 ; r1 set to 0xCE355D8		; addr: CE333DE
mov.b r2,@(r0,r14) 		; addr: CE333E0
mov.b @(0x07,r14),r0 		; addr: CE333E2
extu.b r0,r0 ; r0 set to 0x28		; addr: CE333E4
shll2 r0 ; r0 set to 0xA0		; addr: CE333E6
mov.l @(r0,r1),r3 ; r3 ??		; addr: CE333E8
jmp @r3		; addr: CE333EA
mov.l @r15+,r14		; addr: CE333EC

data_CE333EE:
#data 0x03F8		; addr: CE333EE

data_CE333F0:
#data 0x0328		; addr: CE333F0
#data 0x0000		; addr: CE333F2

#align4
ptr_CE333F4_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE333F4

ptr_CE333F8_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2		; addr: CE333F8

ptr_CE333FC_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE333FC

ptr_CE33400_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE33400

ptr_CE33404_to_ptr_CE355D8_to_f_code_CE331C4:
#data ptr_CE355D8_to_f_code_CE331C4		; addr: CE33404

data_CE33408:
#data 0x2FD62FE6		; addr: CE33408
#data 0xFFFB2FC6		; addr: CE3340C
#data 0xFFDBFFEB		; addr: CE33410
#data 0x7FF44F22		; addr: CE33414
#data 0x9E87C746		; addr: CE33418
#data 0xC747FE08		; addr: CE3341C
#data 0x6D43FF08		; addr: CE33420
#data 0xDC44E016		; addr: CE33424
#data 0x03EC3EDC		; addr: CE33428
#data 0x4308C744		; addr: CE3342C
#data 0x33CC4300		; addr: CE33430
#data 0x435A6331		; addr: CE33434
#data 0xF3E2F32D		; addr: CE33438
#data 0xFF3AF3F3		; addr: CE3343C
#data 0xE016FD08		; addr: CE33440
#data 0x430803EC		; addr: CE33444
#data 0x33CC4300		; addr: CE33448
#data 0x63038531		; addr: CE3344C
#data 0xF32D435A		; addr: CE33450
#data 0xF3F3F3D2		; addr: CE33454
#data 0xE004D33A		; addr: CE33458
#data 0xFF3765F3		; addr: CE3345C
#data 0x64D3430B		; addr: CE33460
#data 0x65F3E016		; addr: CE33464
#data 0x420802EC		; addr: CE33468
#data 0x32CC4200		; addr: CE3346C
#data 0x63038522		; addr: CE33470
#data 0xE016435A		; addr: CE33474
#data 0xF3E2F32D		; addr: CE33478
#data 0xFF3AF3F3		; addr: CE3347C
#data 0x430803EC		; addr: CE33480
#data 0x3C3C4300		; addr: CE33484
#data 0x630385C3		; addr: CE33488
#data 0xD32D435A		; addr: CE3348C
#data 0xF32DE004		; addr: CE33490
#data 0xF3F3F3D2		; addr: CE33494
#data 0x430BFF37		; addr: CE33498
#data 0x904664D3		; addr: CE3349C
#data 0x222802DC		; addr: CE334A0
#data 0xEC008D0C		; addr: CE334A4
#data 0x60339342		; addr: CE334A8
#data 0x704C0009		; addr: CE334AC
#data 0x05DCD225		; addr: CE334B0
#data 0x353C707D		; addr: CE334B4
#data 0x04DE420B		; addr: CE334B8
#data 0x0DC49037		; addr: CE334BC

#align4
data_CE334C0:
#data 0x00ECE016		; addr: CE334C0
#data 0x890B8800		; addr: CE334C4
#data 0x89128801		; addr: CE334C8
#data 0x890B8802		; addr: CE334CC
#data 0x89098803		; addr: CE334D0
#data 0x89078804		; addr: CE334D4
#data 0x890A8805		; addr: CE334D8
#data 0x0009A00B		; addr: CE334DC

#align4
data_CE334E0:
#data 0xE301E016		; addr: CE334E0
#data 0x0E34A007		; addr: CE334E4

#align4
data_CE334E8:
#data 0x02ECE016		; addr: CE334E8
#data 0xA0027201		; addr: CE334EC
#data 0x0E24		; addr: CE334F0

data_CE334F2:
#data 0xE016		; addr: CE334F2
#data 0x0EC4		; addr: CE334F4

data_CE334F6:
#data 0x7F0C		; addr: CE334F6
#data 0xFDF94F26		; addr: CE334F8
#data 0xFFF9FEF9		; addr: CE334FC
#data 0x6DF66CF6		; addr: CE33500
#data 0x6EF6000B		; addr: CE33504
;-------------------------------------------------------------------------------

f_code_CE33508:
mov.l r14,@-r15		; addr: CE33508
mov r4,r14		; addr: CE3350A
mov.w @(data_CE3352C,pc),r4 ; r4 set to 0x2A4		; addr: CE3350C
sts.l pr,@-r15		; addr: CE3350E
add r14,r4 ; r4 ??? bc r14 is ???		; addr: CE33510
mov.b @(0x0D,r4),r0 		; addr: CE33512
tst r0,r0		; addr: CE33514
bt l_code_CE33550		; addr: CE33516
mov.b @(0x07,r14),r0 		; addr: CE33518
mov r14,r4		; addr: CE3351A
mov.l @(ptr_CE3354C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE3351C
mov 0x10,r6 ; r6 set to 0x10		; addr: CE3351E
add 0x01,r0		; addr: CE33520
mov.b r0,@(0x07,r14) 		; addr: CE33522
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33524
lds.l @r15+,pr 		; addr: CE33526
jmp @r3		; addr: CE33528
mov.l @r15+,r14		; addr: CE3352A

data_CE3352C:
#data 0x02A4		; addr: CE3352C
#data 0x014B		; addr: CE3352E
#data 0x000000FF		; addr: CE33530
#data 0x3FD55555		; addr: CE33534

#align4
ptr_CE33538_to_data_CE355E0:
#data data_CE355E0		; addr: CE33538
#data 0x43800000		; addr: CE3353C
#data 0x40092492		; addr: CE33540
#data extern_8C0FDB4E		; addr: CE33544
#data extern_8C0424A6		; addr: CE33548

#align4
ptr_CE3354C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE3354C


l_code_CE33550:
mov.l @(ptr_CE33654_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE		; addr: CE33550
jsr @r2		; addr: CE33552
mov r14,r4		; addr: CE33554
exts.b r0,r0		; addr: CE33556
cmp/pz r0		; addr: CE33558
bt l_code_CE33566		; addr: CE3355A
lds.l @r15+,pr 		; addr: CE3355C
mov.l @(ptr_CE33658_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE3355E
mov r14,r4		; addr: CE33560
jmp @r2		; addr: CE33562
mov.l @r15+,r14		; addr: CE33564

l_code_CE33566:
lds.l @r15+,pr 		; addr: CE33566
rts 		; addr: CE33568
mov.l @r15+,r14		; addr: CE3356A
;-------------------------------------------------------------------------------

f_code_CE3356C:
mov.l r14,@-r15		; addr: CE3356C
mov r4,r14		; addr: CE3356E
mov.l r13,@-r15		; addr: CE33570
mov.l r12,@-r15		; addr: CE33572
mov.l r11,@-r15		; addr: CE33574
sts.l pr,@-r15		; addr: CE33576
mov.w @(data_CE33648,pc),r13 ; r13 set to 0x2A4		; addr: CE33578
mov.l @(ptr_CE33654_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3357A
jsr @r3		; addr: CE3357C
add r14,r13 ; r13 ??? bc r14 is ???		; addr: CE3357E
exts.b r0,r0		; addr: CE33580
cmp/pz r0		; addr: CE33582
bt l_code_CE335C6		; addr: CE33584
mov 0x00,r0 ; r0 set to 0x00		; addr: CE33586
fldi0 fr4		; addr: CE33588
mov.b r0,@(0x0E,r13) 		; addr: CE3358A
mov 0x0D,r6 ; r6 set to 0x0D		; addr: CE3358C
mov.b @(0x07,r14),r0 		; addr: CE3358E
mov r14,r4		; addr: CE33590
mov.l @(ptr_CE33664_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE33592
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33594
add 0x01,r0 ; r0 set to 0x01		; addr: CE33596
mov.b r0,@(0x07,r14) 		; addr: CE33598
mov.w @(data_CE3364A,pc),r0 ; r0 set to 0x41C		; addr: CE3359A
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE3359C
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3359E
fmov.s fr3,@(r0,r14) 		; addr: CE335A0
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE335A2
fmov.s fr4,@(r0,r14) 		; addr: CE335A4
mov 0x68,r0 ; r0 set to 0x68		; addr: CE335A6
fmov.s fr4,@(r0,r14) 		; addr: CE335A8
mova @(data_CE3365C,pc),r0  ; r0 set to 0xCE3365C		; addr: CE335AA
fmov.s @r0,fr3		; addr: CE335AC
mov 0x60,r0 ; r0 set to 0x60		; addr: CE335AE
fmov.s fr3,@(r0,r14) 		; addr: CE335B0
mova @(data_CE33660,pc),r0  ; r0 set to 0xCE33660		; addr: CE335B2
fmov.s @r0,fr3		; addr: CE335B4
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE335B6
fmov.s fr3,@(r0,r14) 		; addr: CE335B8
lds.l @r15+,pr 		; addr: CE335BA
mov.l @r15+,r11		; addr: CE335BC
mov.l @r15+,r12		; addr: CE335BE
mov.l @r15+,r13		; addr: CE335C0
jmp @r3		; addr: CE335C2
mov.l @r15+,r14		; addr: CE335C4

l_code_CE335C6:
mov.w @(data_CE3364C,pc),r0 ; r0 set to 0x141		; addr: CE335C6
mov.b @(r0,r14),r12		; addr: CE335C8
extu.b r12,r3		; addr: CE335CA
tst r3,r3		; addr: CE335CC
bt l_code_CE3363C		; addr: CE335CE
mov 0x00,r2 ; r2 set to 0x00		; addr: CE335D0
mov.l @(ptr_CE33668_to_fn_extern_8C059F64,pc),r11 ; r11 set to 0x8C059F64		; addr: CE335D2
mov.b r2,@(r0,r14) 		; addr: CE335D4
extu.b r12,r0 ; r0 ??? bc r12 is ???		; addr: CE335D6
cmp/eq 0x3E,r0 		; addr: CE335D8
bf l_code_CE3360A		; addr: CE335DA
mov.l @(ptr_CE3366C_to_fn_extern_8C0BE4C4,pc),r2 ; r2 set to 0x8C0BE4C4		; addr: CE335DC
mov 0x00,r5 ; r5 set to 0x00		; addr: CE335DE
jsr @r2		; addr: CE335E0
mov r14,r4		; addr: CE335E2
mov.w @(data_CE3364E,pc),r0 ; r0 set to 0x1B4		; addr: CE335E4
mov 0x11,r2 ; r2 set to 0x11		; addr: CE335E6
mov.l @r13,r13		; addr: CE335E8
mov r14,r5 ; r5 ??? bc r14 is ???		; addr: CE335EA
mov.l r14,@(r0,r13) 		; addr: CE335EC
add 0xED,r0 ; r0 set to 0x1A1		; addr: CE335EE
mov.b r12,@(r0,r13) 		; addr: CE335F0
add 0x8F,r0 ; r0 set to 0x130		; addr: CE335F2
mov.w @(r0,r14),r3		; addr: CE335F4
mov.w r3,@(r0,r13) 		; addr: CE335F6
mov 0x02,r3 ; r3 set to 0x02		; addr: CE335F8
mov.w @(data_CE33650,pc),r0 ; r0 set to 0x1F6		; addr: CE335FA
mov.b r2,@(r0,r13) 		; addr: CE335FC
add 0x03,r0 ; r0 set to 0x1F9		; addr: CE335FE
mov.b r3,@(r0,r13) 		; addr: CE33600
jsr @r11		; addr: CE33602
mov r13,r4		; addr: CE33604
bra l_code_CE33628		; addr: CE33606
nop 		; addr: CE33608

l_code_CE3360A:
mov.w @(data_CE3364E,pc),r0 ; r0 set to 0x1B4		; addr: CE3360A
mov.l @r13,r13		; addr: CE3360C
mov.l @(ptr_CE33670_to_fn_extern_8C05933C,pc),r3 ; r3 set to 0x8C05933C		; addr: CE3360E
mov.l r14,@(r0,r13) 		; addr: CE33610
add 0xED,r0 ; r0 set to 0x1A1		; addr: CE33612
mov.b r12,@(r0,r14) 		; addr: CE33614
mov.b r12,@(r0,r13) 		; addr: CE33616
jsr @r3		; addr: CE33618
mov r14,r4		; addr: CE3361A
mov r14,r5		; addr: CE3361C
jsr @r11		; addr: CE3361E
mov r13,r4		; addr: CE33620
mov.l @(ptr_CE33670_to_fn_extern_8C05933C,pc),r2 ; r2 set to 0x8C05933C		; addr: CE33622
jsr @r2		; addr: CE33624
mov r14,r4		; addr: CE33626

l_code_CE33628:
mov r14,r5		; addr: CE33628
jsr @r11		; addr: CE3362A
mov r13,r4		; addr: CE3362C
lds.l @r15+,pr 		; addr: CE3362E
mov r14,r4		; addr: CE33630
mov.l @r15+,r11		; addr: CE33632
mov.l @r15+,r12		; addr: CE33634
mov.l @r15+,r13		; addr: CE33636
bra data_CE33408		; addr: CE33638
mov.l @r15+,r14		; addr: CE3363A

l_code_CE3363C:
lds.l @r15+,pr 		; addr: CE3363C
mov.l @r15+,r11		; addr: CE3363E
mov.l @r15+,r12		; addr: CE33640
mov.l @r15+,r13		; addr: CE33642
rts 		; addr: CE33644
mov.l @r15+,r14		; addr: CE33646
;-------------------------------------------------------------------------------

data_CE33648:
#data 0x02A4		; addr: CE33648

data_CE3364A:
#data 0x041C		; addr: CE3364A

data_CE3364C:
#data 0x0141		; addr: CE3364C

data_CE3364E:
#data 0x01B4		; addr: CE3364E

data_CE33650:
#data 0x01F6		; addr: CE33650
#data 0x0000		; addr: CE33652

#align4
ptr_CE33654_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33654

ptr_CE33658_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE33658

data_CE3365C:
#data 0x42092492		; addr: CE3365C

#align4
data_CE33660:
#data 0xBF092492		; addr: CE33660

#align4
ptr_CE33664_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE33664

ptr_CE33668_to_fn_extern_8C059F64:
#data fn_extern_8C059F64		; addr: CE33668

ptr_CE3366C_to_fn_extern_8C0BE4C4:
#data fn_extern_8C0BE4C4		; addr: CE3366C

ptr_CE33670_to_fn_extern_8C05933C:
#data fn_extern_8C05933C		; addr: CE33670

data_CE33674:
#data 0x314CE15C		; addr: CE33674
#data 0xF318E034		; addr: CE33678
#data 0xE168F246		; addr: CE3367C
#data 0xF230314C		; addr: CE33680
#data 0xE05CF427		; addr: CE33684
#data 0xF318F246		; addr: CE33688
#data 0x314CE160		; addr: CE3368C
#data 0xF427F230		; addr: CE33690
#data 0xF246E038		; addr: CE33694
#data 0xE16CF318		; addr: CE33698
#data 0xF230314C		; addr: CE3369C
#data 0xE060F427		; addr: CE336A0
#data 0xF318F246		; addr: CE336A4
#data 0xF427F230		; addr: CE336A8
#data 0xF408C73F		; addr: CE336AC
#data 0xF3469075		; addr: CE336B0
#data 0xE038F340		; addr: CE336B4
#data 0xF235F246		; addr: CE336B8
#data 0x906E8B07		; addr: CE336BC
#data 0xE038F346		; addr: CE336C0
#data 0xF437F340		; addr: CE336C4
#data 0x70018447		; addr: CE336C8
#data 0x8047		; addr: CE336CC

data_CE336CE:
#data 0xD338		; addr: CE336CE
#data 0x0009432B		; addr: CE336D0


f_code_CE336D4:
mov.l r14,@-r15		; addr: CE336D4
mov r4,r14		; addr: CE336D6
mov.w @(data_CE337A0,pc),r4 ; r4 set to 0x2A4		; addr: CE336D8
mov 0x38,r0 ; r0 set to 0x38		; addr: CE336DA
mov.l r13,@-r15		; addr: CE336DC
add r14,r4 ; r4 ??? bc r14 is ???		; addr: CE336DE
sts.l pr,@-r15		; addr: CE336E0
mov.l @r4,r13		; addr: CE336E2
fmov.s @(r0,r14),fr2		; addr: CE336E4
fmov.s @(r0,r13),fr3		; addr: CE336E6
fcmp/gt fr3,fr2		; addr: CE336E8
bf l_code_CE3371A		; addr: CE336EA
mov.b @(0x07,r14),r0 		; addr: CE336EC
mov 0x16,r5 ; r5 set to 0x16		; addr: CE336EE
mov.l @(ptr_CE337B4_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE336F0
mov 0x11,r6 ; r6 set to 0x11		; addr: CE336F2
add 0x01,r0 ; r0 set to 0x39		; addr: CE336F4
mov.b r0,@(0x07,r14) 		; addr: CE336F6
mov 0xFF,r0 ; r0 set to 0xFFFFFFFF		; addr: CE336F8
mov.b r0,@(0x0E,r4) 		; addr: CE336FA
mov 0x38,r0 ; r0 set to 0x38		; addr: CE336FC
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE336FE
fmov.s fr3,@(r0,r13) 		; addr: CE33700
jsr @r3		; addr: CE33702
mov r14,r4		; addr: CE33704
mov r13,r5 ; r5 ??? bc r13 is ???		; addr: CE33706
mov.w @(data_CE337A2,pc),r2 ; r2 set to 0xC5		; addr: CE33708
mov.w @(data_CE337A4,pc),r0 ; r0 set to 0x1F7		; addr: CE3370A
mov r14,r4		; addr: CE3370C
mov.l @(ptr_CE337B8_to_fn_extern_8C05248E,pc),r3 ; r3 set to 0x8C05248E		; addr: CE3370E
mov.b r2,@(r0,r14) 		; addr: CE33710
lds.l @r15+,pr 		; addr: CE33712
mov.l @r15+,r13		; addr: CE33714
jmp @r3		; addr: CE33716
mov.l @r15+,r14		; addr: CE33718

l_code_CE3371A:
lds.l @r15+,pr 		; addr: CE3371A
mov.l @(ptr_CE337B0_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE		; addr: CE3371C
mov r14,r4		; addr: CE3371E
mov.l @r15+,r13		; addr: CE33720
jmp @r2		; addr: CE33722
mov.l @r15+,r14		; addr: CE33724

f_code_CE33726:
mov.l r14,@-r15		; addr: CE33726
mov r4,r14		; addr: CE33728
mov.l r13,@-r15		; addr: CE3372A
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3372C
mov.l r12,@-r15		; addr: CE3372E
mov.w @(data_CE337A0,pc),r12 ; r12 set to 0x2A4		; addr: CE33730
sts.l pr,@-r15		; addr: CE33732
add r14,r12 ; r12 ??? bc r14 is ???		; addr: CE33734
fmov.s @(r0,r14),fr3		; addr: CE33736
mov.l @r12,r4		; addr: CE33738
mov.l @(ptr_CE337B0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3373A
fmov.s fr3,@(r0,r4) 		; addr: CE3373C
jsr @r3		; addr: CE3373E
mov r14,r4		; addr: CE33740
mov.w @(data_CE337A6,pc),r0 ; r0 set to 0x141		; addr: CE33742
mov.b @(r0,r14),r2		; addr: CE33744
tst r2,r2		; addr: CE33746
bt l_code_CE33804		; addr: CE33748
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3374A
mov.l @(ptr_CE337BC_to_fn_extern_8C059F64,pc),r13 ; r13 set to 0x8C059F64		; addr: CE3374C
cmp/eq 0x3F,r0 		; addr: CE3374E
bf l_code_CE337C4		; addr: CE33750
mov.b @(0x07,r14),r0 		; addr: CE33752
mov 0x02,r5 ; r5 set to 0x02		; addr: CE33754
mov.l @(ptr_CE337C0_to_fn_extern_8C0BE4C4,pc),r3 ; r3 set to 0x8C0BE4C4		; addr: CE33756
add 0x01,r0		; addr: CE33758
mov.b r0,@(0x07,r14) 		; addr: CE3375A
jsr @r3		; addr: CE3375C
mov r14,r4		; addr: CE3375E
mov.w @(data_CE337A8,pc),r0 ; r0 set to 0x1C8		; addr: CE33760
mov 0x3F,r3 ; r3 set to 0x3F		; addr: CE33762
mov r14,r5 ; r5 ??? bc r14 is ???		; addr: CE33764
mov.l @(r0,r14),r12		; addr: CE33766
add 0xEC,r0 ; r0 set to 0x1B4		; addr: CE33768
mov.l r14,@(r0,r12) 		; addr: CE3376A
add 0xED,r0 ; r0 set to 0x1A1		; addr: CE3376C
mov.b r3,@(r0,r12) 		; addr: CE3376E
add 0x8F,r0 ; r0 set to 0x130		; addr: CE33770
mov.w @(r0,r14),r2		; addr: CE33772
mov 0x01,r3 ; r3 set to 0x01		; addr: CE33774
mov.w r2,@(r0,r12) 		; addr: CE33776
mov 0x02,r2 ; r2 set to 0x02		; addr: CE33778
mov.w @(data_CE337AA,pc),r0 ; r0 set to 0x1F6		; addr: CE3377A
mov.b r3,@(r0,r12) 		; addr: CE3377C
add 0x03,r0 ; r0 set to 0x1F9		; addr: CE3377E
mov.b r2,@(r0,r12) 		; addr: CE33780
jsr @r13		; addr: CE33782
mov r12,r4		; addr: CE33784
mov r14,r5		; addr: CE33786
jsr @r13		; addr: CE33788
mov r12,r4		; addr: CE3378A
bsr data_CE33408		; addr: CE3378C
mov r14,r4		; addr: CE3378E
mov.l @(ptr_CE337B4_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE33790
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33792
mov 0x12,r6 ; r6 set to 0x12		; addr: CE33794
jsr @r2		; addr: CE33796
mov r14,r4		; addr: CE33798
bra l_code_CE337F8		; addr: CE3379A
nop 		; addr: CE3379C
#data 0x041C		; addr: CE3379E

data_CE337A0:
#data 0x02A4		; addr: CE337A0

data_CE337A2:
#data 0x00C5		; addr: CE337A2

data_CE337A4:
#data 0x01F7		; addr: CE337A4

data_CE337A6:
#data 0x0141		; addr: CE337A6

data_CE337A8:
#data 0x01C8		; addr: CE337A8

data_CE337AA:
#data 0x01F6		; addr: CE337AA
#data 0x44092492		; addr: CE337AC

#align4
ptr_CE337B0_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE337B0

ptr_CE337B4_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE337B4

ptr_CE337B8_to_fn_extern_8C05248E:
#data fn_extern_8C05248E		; addr: CE337B8

ptr_CE337BC_to_fn_extern_8C059F64:
#data fn_extern_8C059F64		; addr: CE337BC

ptr_CE337C0_to_fn_extern_8C0BE4C4:
#data fn_extern_8C0BE4C4		; addr: CE337C0


l_code_CE337C4:
mov.w @(data_CE338F6,pc),r0 ; r0 set to 0x1B4		; addr: CE337C4
mov.l @r12,r12		; addr: CE337C6
mov.l r14,@(r0,r12) 		; addr: CE337C8
add 0x8D,r0 ; r0 set to 0x141		; addr: CE337CA
mov.b @(r0,r14),r3		; addr: CE337CC
add 0x60,r0 ; r0 set to 0x1A1		; addr: CE337CE
mov.b r3,@(r0,r14) 		; addr: CE337D0
add 0xA0,r0 ; r0 set to 0x141		; addr: CE337D2
mov.b @(r0,r14),r2		; addr: CE337D4
add 0x60,r0 ; r0 set to 0x1A1		; addr: CE337D6
mov.l @(ptr_CE33900_to_fn_extern_8C05933C,pc),r3 ; r3 set to 0x8C05933C		; addr: CE337D8
mov.b r2,@(r0,r12) 		; addr: CE337DA
jsr @r3		; addr: CE337DC
mov r14,r4		; addr: CE337DE
mov r14,r5		; addr: CE337E0
jsr @r13		; addr: CE337E2
mov r12,r4		; addr: CE337E4
mov.l @(ptr_CE33900_to_fn_extern_8C05933C,pc),r2 ; r2 set to 0x8C05933C		; addr: CE337E6
jsr @r2		; addr: CE337E8
mov r14,r4		; addr: CE337EA
mov r14,r5		; addr: CE337EC
jsr @r13		; addr: CE337EE
mov r12,r4		; addr: CE337F0
mov.w @(data_CE338F8,pc),r0 ; r0 set to 0x141		; addr: CE337F2
mov 0x00,r3 ; r3 set to 0x00		; addr: CE337F4
mov.b r3,@(r0,r14) 		; addr: CE337F6

l_code_CE337F8:
lds.l @r15+,pr 		; addr: CE337F8
mov r14,r4		; addr: CE337FA
mov.l @r15+,r12		; addr: CE337FC
mov.l @r15+,r13		; addr: CE337FE
bra data_CE33408		; addr: CE33800
mov.l @r15+,r14		; addr: CE33802

l_code_CE33804:
lds.l @r15+,pr 		; addr: CE33804
mov.l @r15+,r12		; addr: CE33806
mov.l @r15+,r13		; addr: CE33808
rts 		; addr: CE3380A
mov.l @r15+,r14		; addr: CE3380C
;-------------------------------------------------------------------------------

data_CE3380E:
#data 0x2FE6		; addr: CE3380E
#data 0xD33C4F22		; addr: CE33810
#data 0x6E43430B		; addr: CE33814
#data 0x4011600E		; addr: CE33818
#data 0xD33A8931		; addr: CE3381C
#data 0x6563E600		; addr: CE33820
#data 0x64E3430B		; addr: CE33824
#data 0xE30084E7		; addr: CE33828
#data 0xF48D6233		; addr: CE3382C
#data 0x80E77001		; addr: CE33830
#data 0x0E349061		; addr: CE33834
#data 0x0E2470FF		; addr: CE33838
#data 0x0E24905E		; addr: CE3383C
#data 0x0E247001		; addr: CE33840
#data 0xFE47E05C		; addr: CE33844
#data 0xFE47E068		; addr: CE33848
#data 0xF308C72F		; addr: CE3384C
#data 0xFE37E05C		; addr: CE33850
#data 0xF308C72E		; addr: CE33854
#data 0xFE37E060		; addr: CE33858
#data 0xF308C72D		; addr: CE3385C
#data 0xFE37E06C		; addr: CE33860
#data 0x03ED904B		; addr: CE33864
#data extern_8D042338		; addr: CE33868
#data 0xE05CE613		; addr: CE3386C
#data 0xF34DF3E6		; addr: CE33870
#data 0xFE37		; addr: CE33874

data_CE33876:
#data 0x4F26		; addr: CE33876
#data 0xE516D327		; addr: CE33878
#data 0x432B64E3		; addr: CE3387C
#data 0x6EF6		; addr: CE33880

data_CE33882:
#data 0x4F26		; addr: CE33882
#data 0x6EF6000B		; addr: CE33884
;-------------------------------------------------------------------------------

f_code_CE33888:
mov.l r14,@-r15		; addr: CE33888
sts.l pr,@-r15		; addr: CE3388A
mov.l @(ptr_CE33904_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3388C
jsr @r3		; addr: CE3388E
mov r4,r14		; addr: CE33890
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE33892
mov.l @(ptr_CE3391C_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2		; addr: CE33894
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33896
mov 0x34,r0 ; r0 set to 0x34		; addr: CE33898
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE3389A
fmov.s @(r0,r14),fr2		; addr: CE3389C
mov 0x68,r1 ; r1 set to 0x68		; addr: CE3389E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE338A0
fadd fr3,fr2		; addr: CE338A2
fmov.s fr2,@(r0,r14) 		; addr: CE338A4
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE338A6
fmov.s @(r0,r14),fr2		; addr: CE338A8
fmov.s @r1,fr3		; addr: CE338AA
mov 0x60,r1 ; r1 set to 0x60		; addr: CE338AC
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE338AE
fadd fr3,fr2		; addr: CE338B0
fmov.s fr2,@(r0,r14) 		; addr: CE338B2
mov 0x38,r0 ; r0 set to 0x38		; addr: CE338B4
fmov.s @(r0,r14),fr2		; addr: CE338B6
fmov.s @r1,fr3		; addr: CE338B8
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE338BA
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE338BC
fadd fr3,fr2		; addr: CE338BE
fmov.s fr2,@(r0,r14) 		; addr: CE338C0
mov 0x60,r0 ; r0 set to 0x60		; addr: CE338C2
fmov.s @(r0,r14),fr2		; addr: CE338C4
fmov.s @r1,fr3		; addr: CE338C6
fadd fr3,fr2		; addr: CE338C8
fmov.s fr2,@(r0,r14) 		; addr: CE338CA
jsr @r3		; addr: CE338CC
mov r14,r4		; addr: CE338CE
extu.b r0,r0 ; r0 set to 0x60		; addr: CE338D0
tst r0,r0		; addr: CE338D2
bt l_code_CE338F0		; addr: CE338D4
mov.b @(0x07,r14),r0 		; addr: CE338D6
mov.l @(ptr_CE33920_to_fn_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4		; addr: CE338D8
add 0x01,r0 ; r0 set to 0x61		; addr: CE338DA
mov.b r0,@(0x07,r14) 		; addr: CE338DC
jsr @r3		; addr: CE338DE
mov r14,r4		; addr: CE338E0
lds.l @r15+,pr 		; addr: CE338E2
mov.l @(ptr_CE33918_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE338E4
mov r14,r4		; addr: CE338E6
mov 0x14,r6 ; r6 set to 0x14		; addr: CE338E8
mov 0x16,r5 ; r5 set to 0x16		; addr: CE338EA
jmp @r2		; addr: CE338EC
mov.l @r15+,r14		; addr: CE338EE

l_code_CE338F0:
lds.l @r15+,pr 		; addr: CE338F0
rts 		; addr: CE338F2
mov.l @r15+,r14		; addr: CE338F4
;-------------------------------------------------------------------------------

data_CE338F6:
#data 0x01B4		; addr: CE338F6

data_CE338F8:
#data 0x0141		; addr: CE338F8
#data 0x03F9		; addr: CE338FA
#data 0x01300327		; addr: CE338FC

#align4
ptr_CE33900_to_fn_extern_8C05933C:
#data fn_extern_8C05933C		; addr: CE33900

ptr_CE33904_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33904
#data fn_extern_8C02FEC4		; addr: CE33908
#data 0x40555555		; addr: CE3390C
#data 0xC0892492		; addr: CE33910
#data 0xBF892492		; addr: CE33914

#align4
ptr_CE33918_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE33918

ptr_CE3391C_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2		; addr: CE3391C

ptr_CE33920_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE33920


f_code_CE33924:
mov.l r14,@-r15		; addr: CE33924
sts.l pr,@-r15		; addr: CE33926
add 0xFC,r15		; addr: CE33928
mov.w @(data_CE33A4C,pc),r3 ; r3 set to 0x2A4		; addr: CE3392A
mov r4,r14		; addr: CE3392C
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE3392E
mov.l r3,@r15		; addr: CE33930
mov.l @(ptr_CE33A58_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33932
jsr @r3		; addr: CE33934
mov r14,r4		; addr: CE33936
exts.b r0,r0		; addr: CE33938
cmp/pz r0		; addr: CE3393A
bt l_code_CE33950		; addr: CE3393C
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE3393E
mov 0x00,r0 ; r0 set to 0x00		; addr: CE33940
mov r14,r4		; addr: CE33942
mov.b r0,@(0x0C,r3) 		; addr: CE33944
add 0x04,r15		; addr: CE33946
lds.l @r15+,pr 		; addr: CE33948
mov.l @(ptr_CE33A5C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE3394A
jmp @r3		; addr: CE3394C
mov.l @r15+,r14		; addr: CE3394E

l_code_CE33950:
add 0x04,r15		; addr: CE33950
lds.l @r15+,pr 		; addr: CE33952
rts 		; addr: CE33954
mov.l @r15+,r14		; addr: CE33956
;-------------------------------------------------------------------------------

f_code_CE33958:
mov.l r14,@-r15		; addr: CE33958
mov r4,r14		; addr: CE3395A
mov.w @(data_CE33A4E,pc),r0 ; r0 set to 0x3F8		; addr: CE3395C
mov 0x02,r4 ; r4 set to 0x02		; addr: CE3395E
mov 0x05,r3 ; r3 set to 0x05		; addr: CE33960
mov.l @(ptr_CE33A60_to_ptr_CE35610_to_f_code_CE33508,pc),r1 ; r1 set to 0xCE35610		; addr: CE33962
mov.b r4,@(r0,r14) 		; addr: CE33964
mov 0x01,r2 ; r2 set to 0x01		; addr: CE33966
mov.w @(data_CE33A50,pc),r0 ; r0 set to 0x328		; addr: CE33968
mov.b r3,@(r0,r14) 		; addr: CE3396A
mov.w @(data_CE33A52,pc),r0 ; r0 set to 0x1EA		; addr: CE3396C
mov.b r2,@(r0,r14) 		; addr: CE3396E
add 0x03,r0 ; r0 set to 0x1ED		; addr: CE33970
mov.b r4,@(r0,r14) 		; addr: CE33972
add 0x08,r0 ; r0 set to 0x1F5		; addr: CE33974
mov.b r4,@(r0,r14) 		; addr: CE33976
mov r14,r4 ; r4 ??? bc r14 is ???		; addr: CE33978
mov.b @(0x07,r14),r0 		; addr: CE3397A
extu.b r0,r0 ; r0 set to 0xF5		; addr: CE3397C
shll2 r0 ; r0 set to 0x3D4		; addr: CE3397E
mov.l @(r0,r1),r3 ; r3 ??		; addr: CE33980
jmp @r3		; addr: CE33982
mov.l @r15+,r14		; addr: CE33984

data_CE33986:
#data 0x2FE6		; addr: CE33986
#data 0x7FFC4F22		; addr: CE33988
#data 0x6E43E05C		; addr: CE3398C
#data 0x935BE168		; addr: CE33990
#data 0x33EC31EC		; addr: CE33994
#data 0xF0E62F32		; addr: CE33998
#data 0xF3E6E034		; addr: CE3399C
#data 0xFE37F300		; addr: CE339A0
#data 0xF318E05C		; addr: CE339A4
#data 0xF2E6E160		; addr: CE339A8
#data 0xF23031EC		; addr: CE339AC
#data 0xE038FE27		; addr: CE339B0
#data 0xE16CF318		; addr: CE339B4
#data 0x31ECF2E6		; addr: CE339B8
#data 0xFE27F230		; addr: CE339BC
#data 0xF318E060		; addr: CE339C0
#data 0xF230F2E6		; addr: CE339C4
#data 0xE05CFE27		; addr: CE339C8
#data 0xF38DF4E6		; addr: CE339CC
#data 0x8B01F345		; addr: CE339D0
#data 0x8905F035		; addr: CE339D4

#align4
data_CE339D8:
#data 0xF435F38D		; addr: CE339D8
#data 0xF38D8B06		; addr: CE339DC
#data 0x8B03F305		; addr: CE339E0

#align4
data_CE339E4:
#data 0xFE47F48D		; addr: CE339E4
#data 0xFE47E068		; addr: CE339E8

#align4
data_CE339EC:
#data 0x430BD31A		; addr: CE339EC
#data 0x600E64E3		; addr: CE339F0
#data 0x89084011		; addr: CE339F4
#data 0xE00063F2		; addr: CE339F8
#data 0x803C64E3		; addr: CE339FC
#data 0x4F267F04		; addr: CE33A00
#data 0x432BD315		; addr: CE33A04
#data 0x6EF6		; addr: CE33A08

data_CE33A0A:
#data 0x7F04		; addr: CE33A0A
#data 0x000B4F26		; addr: CE33A0C
#data 0x6EF6		; addr: CE33A10
;-------------------------------------------------------------------------------

f_code_CE33A12:
mov r4,r3		; addr: CE33A12
mov.l @(ptr_CE33A64_to_ptr_CE35630_to_f_code_CE33172,pc),r1 ; r1 set to 0xCE35630		; addr: CE33A14
mov.l r4,@-r15		; addr: CE33A16
mov.b @(0x06,r3),r0 		; addr: CE33A18
extu.b r0,r0		; addr: CE33A1A
shll2 r0		; addr: CE33A1C
mov.l @(r0,r1),r3		; addr: CE33A1E
jmp @r3		; addr: CE33A20
add 0x04,r15		; addr: CE33A22

f_code_CE33A24:
mov.l r14,@-r15		; addr: CE33A24
sts.l pr,@-r15		; addr: CE33A26
add 0xF0,r15		; addr: CE33A28
mov.w @(data_CE33A4E,pc),r0 ; r0 set to 0x3F8		; addr: CE33A2A
mov r4,r14		; addr: CE33A2C
mov.w @(data_CE33A4C,pc),r3 ; r3 set to 0x2A4		; addr: CE33A2E
mov 0x02,r2 ; r2 set to 0x02		; addr: CE33A30
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE33A32
mov.l r3,@r15		; addr: CE33A34
mov 0x05,r3 ; r3 set to 0x05		; addr: CE33A36
mov.b r2,@(r0,r14) 		; addr: CE33A38
mov.w @(data_CE33A50,pc),r0 ; r0 set to 0x328		; addr: CE33A3A
mov.b r3,@(r0,r14) 		; addr: CE33A3C
mov.w @(data_CE33A54,pc),r0 ; r0 set to 0x255		; addr: CE33A3E
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE33A40
extu.b r0,r0		; addr: CE33A42
cmp/eq 0x06,r0 		; addr: CE33A44
bf data_CE33A68		; addr: CE33A46
bra data_CE33A6A		; addr: CE33A48
mov 0x02,r2		; addr: CE33A4A

data_CE33A4C:
#data 0x02A4		; addr: CE33A4C

data_CE33A4E:
#data 0x03F8		; addr: CE33A4E

data_CE33A50:
#data 0x0328		; addr: CE33A50

data_CE33A52:
#data 0x01EA		; addr: CE33A52

data_CE33A54:
#data 0x0255		; addr: CE33A54
#data 0x0000		; addr: CE33A56

#align4
ptr_CE33A58_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33A58

ptr_CE33A5C_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE33A5C

ptr_CE33A60_to_ptr_CE35610_to_f_code_CE33508:
#data ptr_CE35610_to_f_code_CE33508		; addr: CE33A60

ptr_CE33A64_to_ptr_CE35630_to_f_code_CE33172:
#data ptr_CE35630_to_f_code_CE33172		; addr: CE33A64

data_CE33A68:
#data 0xE200		; addr: CE33A68

data_CE33A6A:
#data 0x907E		; addr: CE33A6A
#data 0x0E24D342		; addr: CE33A6C
#data 0x64E3430B		; addr: CE33A70
#data 0x4011600E		; addr: CE33A74
#data 0x9077893A		; addr: CE33A78
#data 0x0E44E400		; addr: CE33A7C
#data 0x0E447001		; addr: CE33A80
#data 0x700184E6		; addr: CE33A84
#data 0x604380E6		; addr: CE33A88
#data 0x80E70009		; addr: CE33A8C
#data 0x81EEE01E		; addr: CE33A90
#data 0xF308C739		; addr: CE33A94
#data 0xFE37E05C		; addr: CE33A98
#data 0xF308C738		; addr: CE33A9C
#data 0xFE37E068		; addr: CE33AA0
#data 0x03ED9063		; addr: CE33AA4
#data 0x8B072338		; addr: CE33AA8
#data 0xF3E6E05C		; addr: CE33AAC
#data 0xFE37F34D		; addr: CE33AB0
#data 0xF3E6E068		; addr: CE33AB4
#data 0xFE37F34D		; addr: CE33AB8

#align4
data_CE33ABC:
#data 0xE3029058		; addr: CE33ABC
#data 0x0E34E516		; addr: CE33AC0
#data 0xD32FE607		; addr: CE33AC4
#data 0x64E3430B		; addr: CE33AC8
#data 0xE01C62F2		; addr: CE33ACC
#data 0x65F3E301		; addr: CE33AD0
#data 0xC72C0234		; addr: CE33AD4
#data 0xE004F308		; addr: CE33AD8
#data 0xD32C6633		; addr: CE33ADC
#data 0xC72AFF37		; addr: CE33AE0
#data 0xE008F308		; addr: CE33AE4
#data 0xFF377504		; addr: CE33AE8
#data 0x64E3430B		; addr: CE33AEC

#align4
data_CE33AF0:
#data 0x4F267F10		; addr: CE33AF0
#data 0x6EF6000B		; addr: CE33AF4
;-------------------------------------------------------------------------------

#align4
data_CE33AF8:
#data 0x2FE6903B		; addr: CE33AF8
#data 0x4F226E43		; addr: CE33AFC
#data 0x600C00EC		; addr: CE33B00
#data 0x8B058806		; addr: CE33B04
#data 0xE3109030		; addr: CE33B08
#data 0x0E249232		; addr: CE33B0C
#data 0x0E347001		; addr: CE33B10

#align4
data_CE33B14:
#data 0xD31F84E7		; addr: CE33B14
#data 0x80E77001		; addr: CE33B18
#data 0x64E3430B		; addr: CE33B1C
#data 0xE23B9029		; addr: CE33B20
#data 0xD31CE400		; addr: CE33B24
#data 0x700B0E24		; addr: CE33B28
#data 0x70F20E45		; addr: CE33B2C
#data 0x70260E44		; addr: CE33B30
#data 0xE5160E46		; addr: CE33B34
#data 0xE60E84E2		; addr: CE33B38
#data 0x600C6232		; addr: CE33B3C
#data 0x727C4000		; addr: CE33B40
#data 0x7101012D		; addr: CE33B44
#data 0xD20E0215		; addr: CE33B48
#data 0x64E3420B		; addr: CE33B4C
#data 0x64E34F26		; addr: CE33B50
#data 0x6EF6AF66		; addr: CE33B54


f_code_CE33B58:
mov r4,r3		; addr: CE33B58
mov.l @(ptr_CE33B9C_to_ptr_CE35640_to_data_CE33AF8,pc),r1 ; r1 set to 0xCE35640		; addr: CE33B5A
mov.l r4,@-r15		; addr: CE33B5C
mov.b @(0x07,r3),r0 		; addr: CE33B5E
extu.b r0,r0		; addr: CE33B60
shll2 r0		; addr: CE33B62
mov.l @(r0,r1),r3		; addr: CE33B64
jmp @r3		; addr: CE33B66
add 0x04,r15		; addr: CE33B68
#data 0x03F1		; addr: CE33B6A
#data 0x013003F0		; addr: CE33B6C
#data 0x025501F9		; addr: CE33B70
#data 0x01A100FF		; addr: CE33B74
#data fn_extern_8C034DEE		; addr: CE33B78
#data 0x41555555		; addr: CE33B7C
#data 0xBDD55555		; addr: CE33B80
#data fn_extern_8C034E8C		; addr: CE33B84
#data 0xC1D55555		; addr: CE33B88
#data 0x43092492		; addr: CE33B8C
#data extern_8C050834		; addr: CE33B90
#data fn_extern_8C05218A		; addr: CE33B94
#data extern_8C2896B0		; addr: CE33B98

#align4
ptr_CE33B9C_to_ptr_CE35640_to_data_CE33AF8:
#data ptr_CE35640_to_data_CE33AF8		; addr: CE33B9C


f_code_CE33BA0:
mov.l r14,@-r15		; addr: CE33BA0
mov.l r13,@-r15		; addr: CE33BA2
mov.l r12,@-r15		; addr: CE33BA4
mov.l r11,@-r15		; addr: CE33BA6
fmov.s fr15,@-r15		; addr: CE33BA8
fmov.s fr14,@-r15		; addr: CE33BAA
sts.l pr,@-r15		; addr: CE33BAC
add 0xFC,r15		; addr: CE33BAE
mov.l @(ptr_CE33CB8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33BB0
mov r4,r14		; addr: CE33BB2
mov.w @(data_CE33CAA,pc),r13 ; r13 set to 0x2A4		; addr: CE33BB4
jsr @r3		; addr: CE33BB6
add r14,r13 ; r13 ??? bc r14 is ???		; addr: CE33BB8
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE33BBA
mov.l @(ptr_CE33CC0_to_fn_extern_8C034E8C,pc),r11 ; r11 set to 0x8C034E8C		; addr: CE33BBC
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33BBE
fldi0 fr15		; addr: CE33BC0
mov 0x34,r0 ; r0 set to 0x34		; addr: CE33BC2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE33BC4
fmov.s @(r0,r14),fr2		; addr: CE33BC6
mov 0x68,r1 ; r1 set to 0x68		; addr: CE33BC8
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33BCA
fadd fr3,fr2		; addr: CE33BCC
fmov.s fr2,@(r0,r14) 		; addr: CE33BCE
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE33BD0
fmov.s @(r0,r14),fr2		; addr: CE33BD2
fmov.s @r1,fr3		; addr: CE33BD4
fadd fr3,fr2		; addr: CE33BD6
fmov.s fr2,@(r0,r14) 		; addr: CE33BD8
mova @(data_CE33CBC,pc),r0  ; r0 set to 0xCE33CBC		; addr: CE33BDA
fmov.s @r0,fr14		; addr: CE33BDC
mov.w @(data_CE33CAC,pc),r0 ; r0 set to 0x19E		; addr: CE33BDE
mov.b @(r0,r14),r3		; addr: CE33BE0
cmp/pz r3		; addr: CE33BE2
bt/s data_CE33CE0		; addr: CE33BE4
mov 0x00,r12 ; r12 set to 0x00		; addr: CE33BE6
mov.l @(ptr_CE33CC4_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE33BE8
mov 0x1C,r0 ; r0 set to 0x1C		; addr: CE33BEA
mov 0x2B,r5 ; r5 set to 0x2B		; addr: CE33BEC
mov.b r12,@(r0,r13) 		; addr: CE33BEE
jsr @r3		; addr: CE33BF0
mov r14,r4		; addr: CE33BF2
mov.w @(data_CE33CAC,pc),r0 ; r0 set to 0x19E		; addr: CE33BF4
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE33BF6
tst 0x7F,r0 		; addr: CE33BF8
bf data_CE33C6A		; addr: CE33BFA
mov.w @(data_CE33CAE,pc),r0 ; r0 set to 0x1B0		; addr: CE33BFC
mov.l @(ptr_CE33CC8_to_fn_extern_8C05264C,pc),r3 ; r3 set to 0x8C05264C		; addr: CE33BFE
mov.l @(r0,r14),r2		; addr: CE33C00
mov.l r2,@r15		; addr: CE33C02
jsr @r3		; addr: CE33C04
mov r14,r4		; addr: CE33C06
tst r0,r0		; addr: CE33C08
bt data_CE33C6A		; addr: CE33C0A
mov 0x38,r0 ; r0 set to 0x38		; addr: CE33C0C
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE33C0E
fmov.s @(r0,r14),fr3		; addr: CE33C10
fmov.s fr3,@(r0,r3) 		; addr: CE33C12
mov.b @(0x06,r14),r0 		; addr: CE33C14
add 0x01,r0 ; r0 set to 0x39		; addr: CE33C16
mov.b r0,@(0x06,r14) 		; addr: CE33C18
mov r12,r0 ; r0 set to 0x00		; addr: CE33C1A
nop 		; addr: CE33C1C
mov.l @(ptr_CE33CCC_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE33C1E
mov 0x05,r6 ; r6 set to 0x05		; addr: CE33C20
mov.b r0,@(0x07,r14) 		; addr: CE33C22
mov r6,r5 ; r5 set to 0x05		; addr: CE33C24
jsr @r3		; addr: CE33C26
mov r14,r4		; addr: CE33C28
mov.w @(data_CE33CAE,pc),r0 ; r0 set to 0x1B0		; addr: CE33C2A
mov.l @(r0,r14),r2		; addr: CE33C2C
mov.l r2,@r13		; addr: CE33C2E
mov r12,r0 ; r0 set to 0x00		; addr: CE33C30
nop 		; addr: CE33C32
mov.b r0,@(0x0D,r13) 		; addr: CE33C34
mov 0x16,r0 ; r0 set to 0x16		; addr: CE33C36
mov.l @(ptr_CE33CD0_to_fn_extern_8C063900,pc),r3 ; r3 set to 0x8C063900		; addr: CE33C38
mov 0x01,r5 ; r5 set to 0x01		; addr: CE33C3A
mov.b r12,@(r0,r13) 		; addr: CE33C3C
jsr @r3		; addr: CE33C3E
mov r14,r4		; addr: CE33C40
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33C42
mov 0x15,r6 ; r6 set to 0x15		; addr: CE33C44
jsr @r11		; addr: CE33C46
mov r14,r4		; addr: CE33C48
mov.w @(data_CE33CB2,pc),r0 ; r0 set to 0x1F7		; addr: CE33C4A
mov r14,r4		; addr: CE33C4C
mov.w @(data_CE33CB0,pc),r2 ; r2 set to 0xC5		; addr: CE33C4E
mov.b r2,@(r0,r14) 		; addr: CE33C50
add 0xB9,r0 ; r0 set to 0x1B0		; addr: CE33C52
mov.l @(r0,r14),r5 ; r5 ??? bc r14 is ???		; addr: CE33C54
add 0x04,r15		; addr: CE33C56
lds.l @r15+,pr 		; addr: CE33C58
mov.l @(ptr_CE33CD4_to_fn_extern_8C0523D8,pc),r3 ; r3 set to 0x8C0523D8		; addr: CE33C5A
fmov.s @r15+,fr14		; addr: CE33C5C
fmov.s @r15+,fr15		; addr: CE33C5E
mov.l @r15+,r11 ; r11 ??? bc r15 is ???		; addr: CE33C60
mov.l @r15+,r12 ; r12 ??? bc r15 is ???		; addr: CE33C62
mov.l @r15+,r13		; addr: CE33C64
jmp @r3		; addr: CE33C66
mov.l @r15+,r14		; addr: CE33C68

data_CE33C6A:
#data 0xE001		; addr: CE33C6A
#data 0xC71A80E7		; addr: CE33C6C
#data 0xE05CF308		; addr: CE33C70
#data 0xE068FE37		; addr: CE33C74
#data 0xC718FEF7		; addr: CE33C78
#data 0xE060F308		; addr: CE33C7C
#data 0xE06CFE37		; addr: CE33C80
#data 0x9015FEE7		; addr: CE33C84
#data 0x233803ED		; addr: CE33C88
#data 0xE60B8D08		; addr: CE33C8C
#data 0xF3E6E05C		; addr: CE33C90
#data 0xFE37F34D		; addr: CE33C94
#data 0xF3E6E068		; addr: CE33C98
#data 0xFE37F34D		; addr: CE33C9C

#align4
data_CE33CA0:
#data 0x4B0BE516		; addr: CE33CA0
#data 0xA03C64E3		; addr: CE33CA4
#data 0x0009		; addr: CE33CA8

data_CE33CAA:
#data 0x02A4		; addr: CE33CAA

data_CE33CAC:
#data 0x019E		; addr: CE33CAC

data_CE33CAE:
#data 0x01B0		; addr: CE33CAE

data_CE33CB0:
#data 0x00C5		; addr: CE33CB0

data_CE33CB2:
#data 0x01F7		; addr: CE33CB2
#data 0x00000130		; addr: CE33CB4

#align4
ptr_CE33CB8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33CB8

data_CE33CBC:
#data 0xBF4DB6DB		; addr: CE33CBC

#align4
ptr_CE33CC0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE33CC0

ptr_CE33CC4_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE33CC4

ptr_CE33CC8_to_fn_extern_8C05264C:
#data fn_extern_8C05264C		; addr: CE33CC8

ptr_CE33CCC_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE33CCC

ptr_CE33CD0_to_fn_extern_8C063900:
#data fn_extern_8C063900		; addr: CE33CD0

ptr_CE33CD4_to_fn_extern_8C0523D8:
#data fn_extern_8C0523D8		; addr: CE33CD4
#data 0x40555555		; addr: CE33CD8
#data 0x41892492		; addr: CE33CDC

#align4
data_CE33CE0:
#data 0x70FF85EE		; addr: CE33CE0
#data 0x600F81EE		; addr: CE33CE4
#data 0x8B1A2008		; addr: CE33CE8
#data 0xE52B84E7		; addr: CE33CEC
#data 0x7001D34F		; addr: CE33CF0
#data 0xE01C80E7		; addr: CE33CF4
#data 0x430B0DC4		; addr: CE33CF8
#data 0xF39D64E3		; addr: CE33CFC
#data 0xE05CF330		; addr: CE33D00
#data 0xE501F2E6		; addr: CE33D04
#data 0xF233E609		; addr: CE33D08
#data 0xE068FE27		; addr: CE33D0C
#data 0xC748FEF7		; addr: CE33D10
#data 0xE060F208		; addr: CE33D14
#data 0xE06CFE27		; addr: CE33D18
#data 0x4B0BFEE7		; addr: CE33D1C
#data 0x64E3		; addr: CE33D20

data_CE33D22:
#data 0x7F04		; addr: CE33D22
#data 0xFEF94F26		; addr: CE33D24
#data 0x6BF6FFF9		; addr: CE33D28
#data 0x6DF66CF6		; addr: CE33D2C
#data 0x6EF6000B		; addr: CE33D30
;-------------------------------------------------------------------------------

f_code_CE33D34:
mov.l r14,@-r15		; addr: CE33D34
sts.l pr,@-r15		; addr: CE33D36
mov.l @(ptr_CE33E38_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33D38
jsr @r3		; addr: CE33D3A
mov r4,r14		; addr: CE33D3C
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE33D3E
mov.l @(ptr_CE33E3C_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2		; addr: CE33D40
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33D42
mov 0x34,r0 ; r0 set to 0x34		; addr: CE33D44
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE33D46
fmov.s @(r0,r14),fr2		; addr: CE33D48
mov 0x68,r1 ; r1 set to 0x68		; addr: CE33D4A
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33D4C
fadd fr3,fr2		; addr: CE33D4E
fmov.s fr2,@(r0,r14) 		; addr: CE33D50
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE33D52
fmov.s @(r0,r14),fr2		; addr: CE33D54
fmov.s @r1,fr3		; addr: CE33D56
mov 0x60,r1 ; r1 set to 0x60		; addr: CE33D58
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33D5A
fadd fr3,fr2		; addr: CE33D5C
fmov.s fr2,@(r0,r14) 		; addr: CE33D5E
mov 0x38,r0 ; r0 set to 0x38		; addr: CE33D60
fmov.s @(r0,r14),fr2		; addr: CE33D62
fmov.s @r1,fr3		; addr: CE33D64
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE33D66
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33D68
fadd fr3,fr2		; addr: CE33D6A
fmov.s fr2,@(r0,r14) 		; addr: CE33D6C
mov 0x60,r0 ; r0 set to 0x60		; addr: CE33D6E
fmov.s @(r0,r14),fr2		; addr: CE33D70
fmov.s @r1,fr3		; addr: CE33D72
fadd fr3,fr2		; addr: CE33D74
fmov.s fr2,@(r0,r14) 		; addr: CE33D76
jsr @r3		; addr: CE33D78
mov r14,r4		; addr: CE33D7A
extu.b r0,r0 ; r0 set to 0x60		; addr: CE33D7C
tst r0,r0		; addr: CE33D7E
bt l_code_CE33DB0		; addr: CE33D80
mov 0x03,r0 ; r0 set to 0x03		; addr: CE33D82
fldi0 fr4		; addr: CE33D84
mov.b r0,@(0x06,r14) 		; addr: CE33D86
mov 0x00,r0 ; r0 set to 0x00		; addr: CE33D88
mov.b r0,@(0x07,r14) 		; addr: CE33D8A
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE33D8C
fmov.s fr4,@(r0,r14) 		; addr: CE33D8E
mov 0x60,r0 ; r0 set to 0x60		; addr: CE33D90
fmov.s fr4,@(r0,r14) 		; addr: CE33D92
mov 0x68,r0 ; r0 set to 0x68		; addr: CE33D94
fmov.s fr4,@(r0,r14) 		; addr: CE33D96
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE33D98
mov.l @(ptr_CE33E40_to_fn_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4		; addr: CE33D9A
fmov.s fr4,@(r0,r14) 		; addr: CE33D9C
jsr @r3		; addr: CE33D9E
mov r14,r4		; addr: CE33DA0
lds.l @r15+,pr 		; addr: CE33DA2
mov.l @(ptr_CE33E44_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE33DA4
mov r14,r4		; addr: CE33DA6
mov 0x0C,r6 ; r6 set to 0x0C		; addr: CE33DA8
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33DAA
jmp @r2		; addr: CE33DAC
mov.l @r15+,r14		; addr: CE33DAE

l_code_CE33DB0:
lds.l @r15+,pr 		; addr: CE33DB0
rts 		; addr: CE33DB2
mov.l @r15+,r14		; addr: CE33DB4
;-------------------------------------------------------------------------------

f_code_CE33DB6:
mov.w @(data_CE33E2A,pc),r0 ; r0 set to 0x3F8		; addr: CE33DB6
mov 0x02,r3 ; r3 set to 0x02		; addr: CE33DB8
mov.l r14,@-r15		; addr: CE33DBA
mov r4,r14		; addr: CE33DBC
mov.b r3,@(r0,r14) 		; addr: CE33DBE
mov 0x05,r2 ; r2 set to 0x05		; addr: CE33DC0
mov.w @(data_CE33E2C,pc),r0 ; r0 set to 0x328		; addr: CE33DC2
mov r14,r4		; addr: CE33DC4
mov.l @(ptr_CE33E48_to_ptr_CE35648_to_f_code_CE33BA0,pc),r1 ; r1 set to 0xCE35648		; addr: CE33DC6
mov.b r2,@(r0,r14) 		; addr: CE33DC8
mov.b @(0x07,r14),r0 		; addr: CE33DCA
extu.b r0,r0 ; r0 set to 0x28		; addr: CE33DCC
shll2 r0 ; r0 set to 0xA0		; addr: CE33DCE
mov.l @(r0,r1),r3 ; r3 ??		; addr: CE33DD0
jmp @r3		; addr: CE33DD2
mov.l @r15+,r14		; addr: CE33DD4

f_code_CE33DD6:
mov.l r14,@-r15		; addr: CE33DD6
mov r4,r14		; addr: CE33DD8
mov.l r13,@-r15		; addr: CE33DDA
sts.l pr,@-r15		; addr: CE33DDC
mov.l @(ptr_CE33E38_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33DDE
mov.w @(data_CE33E2E,pc),r13 ; r13 set to 0x2A4		; addr: CE33DE0
jsr @r3		; addr: CE33DE2
add r14,r13 ; r13 ??? bc r14 is ???		; addr: CE33DE4
mov.b @(0x0D,r13),r0 		; addr: CE33DE6
tst r0,r0		; addr: CE33DE8
bt l_code_CE33E22		; addr: CE33DEA
mov.b @(0x07,r14),r0 		; addr: CE33DEC
mov 0x00,r3 ; r3 set to 0x00		; addr: CE33DEE
fldi0 fr4		; addr: CE33DF0
mov 0x16,r6 ; r6 set to 0x16		; addr: CE33DF2
add 0x01,r0		; addr: CE33DF4
mov r6,r5 ; r5 set to 0x16		; addr: CE33DF6
mov.b r0,@(0x07,r14) 		; addr: CE33DF8
mov 0x10,r0 ; r0 set to 0x10		; addr: CE33DFA
mov.b r3,@(r0,r13) 		; addr: CE33DFC
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE33DFE
fmov.s fr4,@(r0,r14) 		; addr: CE33E00
mov 0x60,r0 ; r0 set to 0x60		; addr: CE33E02
fmov.s fr4,@(r0,r14) 		; addr: CE33E04
mov 0x68,r0 ; r0 set to 0x68		; addr: CE33E06
fmov.s fr4,@(r0,r14) 		; addr: CE33E08
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE33E0A
fmov.s fr4,@(r0,r14) 		; addr: CE33E0C
mova @(data_CE33E4C,pc),r0  ; r0 set to 0xCE33E4C		; addr: CE33E0E
fmov.s @r0,fr3 ; r3 ??		; addr: CE33E10
mov 0x60,r0 ; r0 set to 0x60		; addr: CE33E12
mov.l @(ptr_CE33E44_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE33E14
mov r14,r4		; addr: CE33E16
fmov.s fr3,@(r0,r14) 		; addr: CE33E18
lds.l @r15+,pr 		; addr: CE33E1A
mov.l @r15+,r13		; addr: CE33E1C
jmp @r3		; addr: CE33E1E
mov.l @r15+,r14		; addr: CE33E20

l_code_CE33E22:
lds.l @r15+,pr 		; addr: CE33E22
mov.l @r15+,r13		; addr: CE33E24
rts 		; addr: CE33E26
mov.l @r15+,r14		; addr: CE33E28
;-------------------------------------------------------------------------------

data_CE33E2A:
#data 0x03F8		; addr: CE33E2A

data_CE33E2C:
#data 0x0328		; addr: CE33E2C

data_CE33E2E:
#data 0x02A4		; addr: CE33E2E
#data fn_extern_8C042008		; addr: CE33E30
#data 0xC0092492		; addr: CE33E34

#align4
ptr_CE33E38_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33E38

ptr_CE33E3C_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2		; addr: CE33E3C

ptr_CE33E40_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE33E40

ptr_CE33E44_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE33E44

ptr_CE33E48_to_ptr_CE35648_to_f_code_CE33BA0:
#data ptr_CE35648_to_f_code_CE33BA0		; addr: CE33E48

data_CE33E4C:
#data 0x3F092492		; addr: CE33E4C


f_code_CE33E50:
mov.l r14,@-r15		; addr: CE33E50
mov r4,r14		; addr: CE33E52
mov.l r13,@-r15		; addr: CE33E54
mov.l r12,@-r15		; addr: CE33E56
mov.l r11,@-r15		; addr: CE33E58
sts.l pr,@-r15		; addr: CE33E5A
mov.w @(data_CE33F64,pc),r12 ; r12 set to 0x2A4		; addr: CE33E5C
mov.l @(ptr_CE33F70_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33E5E
jsr @r3		; addr: CE33E60
add r14,r12 ; r12 ??? bc r14 is ???		; addr: CE33E62
exts.b r0,r0		; addr: CE33E64
cmp/pz r0		; addr: CE33E66
bt l_code_CE33E84		; addr: CE33E68
mov.b @(0x07,r14),r0 		; addr: CE33E6A
mov 0x17,r6 ; r6 set to 0x17		; addr: CE33E6C
mov.l @(ptr_CE33F74_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE33E6E
mov r14,r4		; addr: CE33E70
add 0x01,r0		; addr: CE33E72
mov.b r0,@(0x07,r14) 		; addr: CE33E74
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33E76
lds.l @r15+,pr 		; addr: CE33E78
mov.l @r15+,r11		; addr: CE33E7A
mov.l @r15+,r12		; addr: CE33E7C
mov.l @r15+,r13		; addr: CE33E7E
jmp @r3		; addr: CE33E80
mov.l @r15+,r14		; addr: CE33E82

l_code_CE33E84:
mov.w @(data_CE33F66,pc),r0 ; r0 set to 0x141		; addr: CE33E84
mov 0x00,r3 ; r3 set to 0x00		; addr: CE33E86
mov.b @(r0,r14),r4		; addr: CE33E88
extu.b r4,r2		; addr: CE33E8A
tst r2,r2		; addr: CE33E8C
bt/s data_CE33F10		; addr: CE33E8E
mov.b r3,@(r0,r14) 		; addr: CE33E90
extu.b r4,r0 ; r0 ??? bc r4 is ???		; addr: CE33E92
mov.l @(ptr_CE33F78_to_fn_extern_8C059F64,pc),r11 ; r11 set to 0x8C059F64		; addr: CE33E94
cmp/eq 0x42,r0 		; addr: CE33E96
bf data_CE33EE8		; addr: CE33E98
mov.w @(data_CE33F68,pc),r0 ; r0 set to 0x1B4		; addr: CE33E9A
mov 0x11,r2 ; r2 set to 0x11		; addr: CE33E9C
mov.l @r12,r13		; addr: CE33E9E
mov 0x0C,r6 ; r6 set to 0x0C		; addr: CE33EA0
mov r6,r5 ; r5 set to 0x0C		; addr: CE33EA2
mov.l r14,@(r0,r13) 		; addr: CE33EA4
mov.w @(data_CE33F6A,pc),r0 ; r0 set to 0x130		; addr: CE33EA6
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE33EA8
mov.w r3,@(r0,r13) 		; addr: CE33EAA
mov 0x02,r3 ; r3 set to 0x02		; addr: CE33EAC
mov.w @(data_CE33F6C,pc),r0 ; r0 set to 0x1F6		; addr: CE33EAE
mov.b r2,@(r0,r13) 		; addr: CE33EB0
add 0x03,r0 ; r0 set to 0x1F9		; addr: CE33EB2
mov.b r3,@(r0,r13) 		; addr: CE33EB4
add 0xA8,r0 ; r0 set to 0x1A1		; addr: CE33EB6
mov.b r4,@(r0,r13) 		; addr: CE33EB8
mov 0x10,r0 ; r0 set to 0x10		; addr: CE33EBA
mov 0xFF,r3 ; r3 set to 0xFFFFFFFF		; addr: CE33EBC
mov.b r3,@(r0,r12) 		; addr: CE33EBE
mov.l @(ptr_CE33F7C_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE33EC0
jsr @r3		; addr: CE33EC2
mov r14,r4		; addr: CE33EC4
mov.l @(ptr_CE33F80_to_fn_extern_8C0BE4C4,pc),r2 ; r2 set to 0x8C0BE4C4		; addr: CE33EC6
mov 0x00,r5 ; r5 set to 0x00		; addr: CE33EC8
jsr @r2		; addr: CE33ECA
mov r14,r4		; addr: CE33ECC
mov r14,r5 ; r5 ??? bc r14 is ???		; addr: CE33ECE
jsr @r11		; addr: CE33ED0
mov r13,r4		; addr: CE33ED2
mov r14,r5		; addr: CE33ED4
jsr @r11		; addr: CE33ED6
mov r13,r4		; addr: CE33ED8
lds.l @r15+,pr 		; addr: CE33EDA
mov r14,r4		; addr: CE33EDC
mov.l @r15+,r11 ; r11 ??? bc r15 is ???		; addr: CE33EDE
mov.l @r15+,r12		; addr: CE33EE0
mov.l @r15+,r13		; addr: CE33EE2
bra data_CE33408		; addr: CE33EE4
mov.l @r15+,r14		; addr: CE33EE6

#align4
data_CE33EE8:
#data 0x6DC2903E		; addr: CE33EE8
#data 0x0DE6D325		; addr: CE33EEC
#data 0x0E4470ED		; addr: CE33EF0
#data 0x430B0D44		; addr: CE33EF4
#data 0x65E364E3		; addr: CE33EF8
#data 0x64D34B0B		; addr: CE33EFC
#data 0x420BD220		; addr: CE33F00
#data 0x65E364E3		; addr: CE33F04
#data 0x64D34B0B		; addr: CE33F08
#data 0x64E3BA7C		; addr: CE33F0C

#align4
data_CE33F10:
#data 0x31ECE15C		; addr: CE33F10
#data 0xF318E034		; addr: CE33F14
#data 0xE168F2E6		; addr: CE33F18
#data 0xF23031EC		; addr: CE33F1C
#data 0xE05CFE27		; addr: CE33F20
#data 0xF318F2E6		; addr: CE33F24
#data 0x31ECE160		; addr: CE33F28
#data 0xFE27F230		; addr: CE33F2C
#data 0xF2E6E038		; addr: CE33F30
#data 0xE16CF318		; addr: CE33F34
#data 0xF23031EC		; addr: CE33F38
#data 0xE060FE27		; addr: CE33F3C
#data 0xF318F2E6		; addr: CE33F40
#data 0xFE27F230		; addr: CE33F44
#data 0x03CCE010		; addr: CE33F48
#data 0x8B032338		; addr: CE33F4C
#data 0x64C2E038		; addr: CE33F50
#data 0xF437F3E6		; addr: CE33F54

#align4
data_CE33F58:
#data 0x6BF64F26		; addr: CE33F58
#data 0x6DF66CF6		; addr: CE33F5C
#data 0x6EF6000B		; addr: CE33F60
;-------------------------------------------------------------------------------

data_CE33F64:
#data 0x02A4		; addr: CE33F64

data_CE33F66:
#data 0x0141		; addr: CE33F66

data_CE33F68:
#data 0x01B4		; addr: CE33F68

data_CE33F6A:
#data 0x0130		; addr: CE33F6A

data_CE33F6C:
#data 0x01F6		; addr: CE33F6C
#data 0x0000		; addr: CE33F6E

#align4
ptr_CE33F70_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33F70

ptr_CE33F74_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE33F74

ptr_CE33F78_to_fn_extern_8C059F64:
#data fn_extern_8C059F64		; addr: CE33F78

ptr_CE33F7C_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE33F7C

ptr_CE33F80_to_fn_extern_8C0BE4C4:
#data fn_extern_8C0BE4C4		; addr: CE33F80
#data fn_extern_8C05933C		; addr: CE33F84


f_code_CE33F88:
mov.l r14,@-r15		; addr: CE33F88
mov r4,r14		; addr: CE33F8A
mov.l r13,@-r15		; addr: CE33F8C
mov.l r12,@-r15		; addr: CE33F8E
mov.l r11,@-r15		; addr: CE33F90
sts.l pr,@-r15		; addr: CE33F92
mov.w @(data_CE340D2,pc),r12 ; r12 set to 0x2A4		; addr: CE33F94
mov.l @(ptr_CE340E4_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33F96
jsr @r3		; addr: CE33F98
add r14,r12 ; r12 ??? bc r14 is ???		; addr: CE33F9A
exts.b r0,r0		; addr: CE33F9C
cmp/pz r0		; addr: CE33F9E
bt data_CE33FD2		; addr: CE33FA0
mov.b @(0x07,r14),r0 		; addr: CE33FA2
mov 0x00,r6 ; r6 set to 0x00		; addr: CE33FA4
mov.l @(ptr_CE340E8_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE33FA6
mov r6,r5 ; r5 set to 0x00		; addr: CE33FA8
add 0x01,r0		; addr: CE33FAA
mov.b r0,@(0x07,r14) 		; addr: CE33FAC
jsr @r3		; addr: CE33FAE
mov r14,r4		; addr: CE33FB0
mov.w @(data_CE340D4,pc),r0 ; r0 set to 0x130		; addr: CE33FB2
mov 0x18,r6 ; r6 set to 0x18		; addr: CE33FB4
mov.w @(data_CE340D4,pc),r1 ; r1 set to 0x130		; addr: CE33FB6
mov r14,r4		; addr: CE33FB8
mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE33FBA
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33FBC
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33FBE
mov.l @(ptr_CE340EC_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE33FC0
xor 0x01,r0 		; addr: CE33FC2
mov.w r0,@r1		; addr: CE33FC4
lds.l @r15+,pr 		; addr: CE33FC6
mov.l @r15+,r11		; addr: CE33FC8
mov.l @r15+,r12		; addr: CE33FCA
mov.l @r15+,r13		; addr: CE33FCC
jmp @r3		; addr: CE33FCE
mov.l @r15+,r14		; addr: CE33FD0

data_CE33FD2:
#data 0x9280		; addr: CE33FD2
#data 0x32ECDD46		; addr: CE33FD4
#data 0x20088421		; addr: CE33FD8
#data 0x937A8914		; addr: CE33FDC
#data 0x33ECE000		; addr: CE33FE0
#data 0x90788031		; addr: CE33FE4
#data 0x0E349376		; addr: CE33FE8
#data 0x65C2D341		; addr: CE33FEC
#data 0x64E3430B		; addr: CE33FF0
#data 0x65E36BC2		; addr: CE33FF4
#data 0x64B34D0B		; addr: CE33FF8
#data 0x4D0B65E3		; addr: CE33FFC
#data 0xE01664B3		; addr: CE34000
#data 0x0C24E202		; addr: CE34004

#align4
data_CE34008:
#data 0x03EC9068		; addr: CE34008
#data 0x89202338		; addr: CE3400C
#data 0x6CC29065		; addr: CE34010
#data 0x708D0CE6		; addr: CE34014
#data 0x706003EC		; addr: CE34018
#data 0x70A00C34		; addr: CE3401C
#data 0x706002EC		; addr: CE34020
#data 0x0E24E300		; addr: CE34024
#data 0x0E3470A0		; addr: CE34028
#data 0x430BD332		; addr: CE3402C
#data 0x65E364E3		; addr: CE34030
#data 0x64C34D0B		; addr: CE34034
#data 0x420BD22F		; addr: CE34038
#data 0x65E364E3		; addr: CE3403C
#data 0x64C34D0B		; addr: CE34040
#data 0x64E34F26		; addr: CE34044
#data 0x6CF66BF6		; addr: CE34048
#data 0xA9DB6DF6		; addr: CE3404C
#data 0x6EF6		; addr: CE34050

data_CE34052:
#data 0x4F26		; addr: CE34052
#data 0x6CF66BF6		; addr: CE34054
#data 0x000B6DF6		; addr: CE34058
#data 0x6EF6		; addr: CE3405C
;-------------------------------------------------------------------------------

data_CE3405E:
#data 0x2FE6		; addr: CE3405E
#data 0x4F222FD6		; addr: CE34060
#data 0x93347FFC		; addr: CE34064
#data 0xED006E43		; addr: CE34068
#data 0x2F3233EC		; addr: CE3406C
#data 0x430BD31C		; addr: CE34070
#data 0x600E64E3		; addr: CE34074
#data 0x89454011		; addr: CE34078
#data 0x0ED49030		; addr: CE3407C
#data 0x0ED470FF		; addr: CE34080
#data 0x0ED4902D		; addr: CE34084
#data 0x0ED47001		; addr: CE34088
#data 0x700184E7		; addr: CE3408C
#data 0xC71A80E7		; addr: CE34090
#data 0xE05CF308		; addr: CE34094
#data 0xE068FE37		; addr: CE34098
#data 0xFE37F38D		; addr: CE3409C
#data 0xF308C717		; addr: CE340A0
#data 0xFE37E060		; addr: CE340A4
#data 0xF308C716		; addr: CE340A8
#data 0xFE37E06C		; addr: CE340AC
#data 0x03ED9010		; addr: CE340B0
#data extern_8D042338		; addr: CE340B4
#data 0xE05CE613		; addr: CE340B8
#data 0xF34DF3E6		; addr: CE340BC
#data 0xFE37		; addr: CE340C0

data_CE340C2:
#data 0x64E3		; addr: CE340C2
#data 0x7F04E516		; addr: CE340C4
#data 0xD3084F26		; addr: CE340C8
#data 0x432B6DF6		; addr: CE340CC
#data 0x6EF6		; addr: CE340D0

data_CE340D2:
#data 0x02A4		; addr: CE340D2

data_CE340D4:
#data 0x0130		; addr: CE340D4
#data 0x0150		; addr: CE340D6
#data 0x01F700C5		; addr: CE340D8
#data 0x01B40141		; addr: CE340DC
#data 0x032703F9		; addr: CE340E0

#align4
ptr_CE340E4_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE340E4

ptr_CE340E8_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE340E8

ptr_CE340EC_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE340EC
#data fn_extern_8C059F64		; addr: CE340F0
#data fn_extern_8C05248E		; addr: CE340F4
#data fn_extern_8C05933C		; addr: CE340F8
#data 0x40555555		; addr: CE340FC
#data 0xC0892492		; addr: CE34100
#data 0xBF892492		; addr: CE34104

#align4
data_CE34108:
#data 0x02EC9092		; addr: CE34108
#data 0x89222228		; addr: CE3410C
#data 0xE502D34B		; addr: CE34110
#data 0x430B0ED4		; addr: CE34114
#data 0x6DF264E3		; addr: CE34118
#data 0x9088E201		; addr: CE3411C
#data 0x6DD265E3		; addr: CE34120
#data 0x90850DE6		; addr: CE34124
#data 0x0D3503ED		; addr: CE34128
#data 0x9082E302		; addr: CE3412C
#data 0x70030D24		; addr: CE34130
#data 0x70A80D34		; addr: CE34134
#data 0xE244D342		; addr: CE34138
#data 0x430B0D24		; addr: CE3413C
#data 0xD24064D3		; addr: CE34140
#data 0x420B65E3		; addr: CE34144
#data 0x64E364D3		; addr: CE34148
#data 0x4F267F04		; addr: CE3414C
#data 0xA9596DF6		; addr: CE34150
#data 0x6EF6		; addr: CE34154

data_CE34156:
#data 0x7F04		; addr: CE34156
#data 0x6DF64F26		; addr: CE34158
#data 0x6EF6000B		; addr: CE3415C
;-------------------------------------------------------------------------------

f_code_CE34160:
mov.l r14,@-r15		; addr: CE34160
sts.l pr,@-r15		; addr: CE34162
mov.l @(ptr_CE34248_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34164
jsr @r3		; addr: CE34166
mov r4,r14		; addr: CE34168
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE3416A
mov.l @(ptr_CE3424C_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2		; addr: CE3416C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3416E
mov 0x34,r0 ; r0 set to 0x34		; addr: CE34170
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE34172
fmov.s @(r0,r14),fr2		; addr: CE34174
mov 0x68,r1 ; r1 set to 0x68		; addr: CE34176
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34178
fadd fr3,fr2		; addr: CE3417A
fmov.s fr2,@(r0,r14) 		; addr: CE3417C
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3417E
fmov.s @(r0,r14),fr2		; addr: CE34180
fmov.s @r1,fr3		; addr: CE34182
mov 0x60,r1 ; r1 set to 0x60		; addr: CE34184
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34186
fadd fr3,fr2		; addr: CE34188
fmov.s fr2,@(r0,r14) 		; addr: CE3418A
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3418C
fmov.s @(r0,r14),fr2		; addr: CE3418E
fmov.s @r1,fr3		; addr: CE34190
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE34192
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34194
fadd fr3,fr2		; addr: CE34196
fmov.s fr2,@(r0,r14) 		; addr: CE34198
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3419A
fmov.s @(r0,r14),fr2		; addr: CE3419C
fmov.s @r1,fr3		; addr: CE3419E
fadd fr3,fr2		; addr: CE341A0
fmov.s fr2,@(r0,r14) 		; addr: CE341A2
jsr @r3		; addr: CE341A4
mov r14,r4		; addr: CE341A6
extu.b r0,r0 ; r0 set to 0x60		; addr: CE341A8
tst r0,r0		; addr: CE341AA
bt l_code_CE341C8		; addr: CE341AC
mov.b @(0x07,r14),r0 		; addr: CE341AE
mov.l @(ptr_CE34250_to_fn_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4		; addr: CE341B0
add 0x01,r0 ; r0 set to 0x61		; addr: CE341B2
mov.b r0,@(0x07,r14) 		; addr: CE341B4
jsr @r3		; addr: CE341B6
mov r14,r4		; addr: CE341B8
lds.l @r15+,pr 		; addr: CE341BA
mov.l @(ptr_CE34254_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE341BC
mov r14,r4		; addr: CE341BE
mov 0x14,r6 ; r6 set to 0x14		; addr: CE341C0
mov 0x16,r5 ; r5 set to 0x16		; addr: CE341C2
jmp @r2		; addr: CE341C4
mov.l @r15+,r14		; addr: CE341C6

l_code_CE341C8:
lds.l @r15+,pr 		; addr: CE341C8
rts 		; addr: CE341CA
mov.l @r15+,r14		; addr: CE341CC
;-------------------------------------------------------------------------------

f_code_CE341CE:
mov.l r14,@-r15		; addr: CE341CE
sts.l pr,@-r15		; addr: CE341D0
add 0xFC,r15		; addr: CE341D2
mov.w @(data_CE34238,pc),r3 ; r3 set to 0x2A4		; addr: CE341D4
mov r4,r14		; addr: CE341D6
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE341D8
mov.l r3,@r15		; addr: CE341DA
mov.l @(ptr_CE34248_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE341DC
jsr @r3		; addr: CE341DE
mov r14,r4		; addr: CE341E0
exts.b r0,r0		; addr: CE341E2
cmp/pz r0		; addr: CE341E4
bt l_code_CE341FA		; addr: CE341E6
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE341E8
mov 0x00,r0 ; r0 set to 0x00		; addr: CE341EA
mov r14,r4		; addr: CE341EC
mov.b r0,@(0x0C,r3) 		; addr: CE341EE
add 0x04,r15		; addr: CE341F0
lds.l @r15+,pr 		; addr: CE341F2
mov.l @(ptr_CE34258_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE341F4
jmp @r3		; addr: CE341F6
mov.l @r15+,r14		; addr: CE341F8

l_code_CE341FA:
add 0x04,r15		; addr: CE341FA
lds.l @r15+,pr 		; addr: CE341FC
rts 		; addr: CE341FE
mov.l @r15+,r14		; addr: CE34200
;-------------------------------------------------------------------------------

f_code_CE34202:
mov.l r14,@-r15		; addr: CE34202
mov r4,r14		; addr: CE34204
mov.w @(data_CE3423A,pc),r0 ; r0 set to 0x3F8		; addr: CE34206
mov 0x02,r4 ; r4 set to 0x02		; addr: CE34208
mov 0x05,r3 ; r3 set to 0x05		; addr: CE3420A
mov.l @(ptr_CE3425C_to_ptr_CE35650_to_f_code_CE33DD6,pc),r1 ; r1 set to 0xCE35650		; addr: CE3420C
mov.b r4,@(r0,r14) 		; addr: CE3420E
mov 0x01,r2 ; r2 set to 0x01		; addr: CE34210
mov.w @(data_CE3423C,pc),r0 ; r0 set to 0x328		; addr: CE34212
mov.b r3,@(r0,r14) 		; addr: CE34214
mov.w @(data_CE3423E,pc),r0 ; r0 set to 0x1EA		; addr: CE34216
mov.b r2,@(r0,r14) 		; addr: CE34218
add 0x03,r0 ; r0 set to 0x1ED		; addr: CE3421A
mov.b r4,@(r0,r14) 		; addr: CE3421C
add 0x08,r0 ; r0 set to 0x1F5		; addr: CE3421E
mov.b r4,@(r0,r14) 		; addr: CE34220
mov r14,r4 ; r4 ??? bc r14 is ???		; addr: CE34222
mov.b @(0x07,r14),r0 		; addr: CE34224
extu.b r0,r0 ; r0 set to 0xF5		; addr: CE34226
shll2 r0 ; r0 set to 0x3D4		; addr: CE34228
mov.l @(r0,r1),r3 ; r3 ??		; addr: CE3422A
jmp @r3		; addr: CE3422C
mov.l @r15+,r14		; addr: CE3422E
#data 0x01B40141		; addr: CE34230
#data 0x01F60130		; addr: CE34234

data_CE34238:
#data 0x02A4		; addr: CE34238

data_CE3423A:
#data 0x03F8		; addr: CE3423A

data_CE3423C:
#data 0x0328		; addr: CE3423C

data_CE3423E:
#data 0x01EA		; addr: CE3423E
#data fn_extern_8C0BE4C4		; addr: CE34240
#data fn_extern_8C059F64		; addr: CE34244

#align4
ptr_CE34248_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE34248

ptr_CE3424C_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2		; addr: CE3424C

ptr_CE34250_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE34250

ptr_CE34254_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE34254

ptr_CE34258_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE34258

ptr_CE3425C_to_ptr_CE35650_to_f_code_CE33DD6:
#data ptr_CE35650_to_f_code_CE33DD6		; addr: CE3425C

data_CE34260:
#data 0x4F222FE6		; addr: CE34260
#data 0xE05C7FFC		; addr: CE34264
#data 0xE1686E43		; addr: CE34268
#data 0x31EC939B		; addr: CE3426C
#data 0x2F3233EC		; addr: CE34270
#data 0xE034F0E6		; addr: CE34274
#data 0xF300F3E6		; addr: CE34278
#data 0xE05CFE37		; addr: CE3427C
#data 0xE160F318		; addr: CE34280
#data 0x31ECF2E6		; addr: CE34284
#data 0xFE27F230		; addr: CE34288
#data 0xF318E038		; addr: CE3428C
#data 0xF2E6E16C		; addr: CE34290
#data 0xF23031EC		; addr: CE34294
#data 0xE060FE27		; addr: CE34298
#data 0xF2E6F318		; addr: CE3429C
#data 0xFE27F230		; addr: CE342A0
#data 0xF4E6E05C		; addr: CE342A4
#data 0xF345F38D		; addr: CE342A8
#data 0xF0358B01		; addr: CE342AC
#data 0x8905		; addr: CE342B0

data_CE342B2:
#data 0xF38D		; addr: CE342B2
#data 0x8B06F435		; addr: CE342B4
#data 0xF305F38D		; addr: CE342B8
#data 0x8B03		; addr: CE342BC

data_CE342BE:
#data 0xF48D		; addr: CE342BE
#data 0xE068FE47		; addr: CE342C0
#data 0xFE47		; addr: CE342C4

data_CE342C6:
#data 0xD33A		; addr: CE342C6
#data 0x64E3430B		; addr: CE342C8
#data 0x4011600E		; addr: CE342CC
#data 0x63F28908		; addr: CE342D0
#data 0x64E3E000		; addr: CE342D4
#data 0x7F04803C		; addr: CE342D8
#data 0xD3354F26		; addr: CE342DC
#data 0x6EF6432B		; addr: CE342E0

#align4
data_CE342E4:
#data 0x4F267F04		; addr: CE342E4
#data 0x6EF6000B		; addr: CE342E8
;-------------------------------------------------------------------------------

f_code_CE342EC:
mov r4,r3		; addr: CE342EC
mov.l @(ptr_CE343B8_to_ptr_CE35668_to_f_code_CE33B58,pc),r1 ; r1 set to 0xCE35668		; addr: CE342EE
mov.l r4,@-r15		; addr: CE342F0
mov.b @(0x06,r3),r0 		; addr: CE342F2
extu.b r0,r0		; addr: CE342F4
shll2 r0		; addr: CE342F6
mov.l @(r0,r1),r3		; addr: CE342F8
jmp @r3		; addr: CE342FA
add 0x04,r15		; addr: CE342FC

f_code_CE342FE:
mov r4,r3		; addr: CE342FE
mov.l @(ptr_CE343BC_to_ptr_CE35678_to_f_code_CE34310,pc),r1 ; r1 set to 0xCE35678		; addr: CE34300
mov.l r4,@-r15		; addr: CE34302
mov.b @(0x06,r3),r0 		; addr: CE34304
extu.b r0,r0		; addr: CE34306
shll2 r0		; addr: CE34308
mov.l @(r0,r1),r3		; addr: CE3430A
jmp @r3		; addr: CE3430C
add 0x04,r15		; addr: CE3430E

f_code_CE34310:
mov.l r14,@-r15		; addr: CE34310
mov r4,r14		; addr: CE34312
fldi0 fr4		; addr: CE34314
mov.l r13,@-r15		; addr: CE34316
mov 0x00,r13 ; r13 set to 0x00		; addr: CE34318
sts.l pr,@-r15		; addr: CE3431A
mov.b @(0x06,r14),r0 		; addr: CE3431C
mov r13,r5 ; r5 set to 0x00		; addr: CE3431E
mov.l @(ptr_CE343C0_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE34320
add 0x01,r0		; addr: CE34322
mov.b r0,@(0x06,r14) 		; addr: CE34324
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE34326
fmov.s fr4,@(r0,r14) 		; addr: CE34328
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3432A
fmov.s fr4,@(r0,r14) 		; addr: CE3432C
mov 0x68,r0 ; r0 set to 0x68		; addr: CE3432E
fmov.s fr4,@(r0,r14) 		; addr: CE34330
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE34332
fmov.s fr4,@(r0,r14) 		; addr: CE34334
mov.w @(data_CE343A8,pc),r0 ; r0 set to 0x1F9		; addr: CE34336
mov.b r13,@(r0,r14) 		; addr: CE34338
mov.w @(data_CE343AA,pc),r0 ; r0 set to 0x41C		; addr: CE3433A
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE3433C
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3433E
fmov.s fr3,@(r0,r14) 		; addr: CE34340
jsr @r3		; addr: CE34342
mov r14,r4		; addr: CE34344
mov.l @(ptr_CE343C4_to_fn_extern_8C05218A,pc),r2 ; r2 set to 0x8C05218A		; addr: CE34346
jsr @r2		; addr: CE34348
mov r14,r4		; addr: CE3434A
mov.l @(ptr_CE343C8_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A		; addr: CE3434C
jsr @r3		; addr: CE3434E
mov r14,r4		; addr: CE34350
mov.w @(data_CE343AC,pc),r0 ; r0 set to 0x1A1		; addr: CE34352
mov 0x3A,r2 ; r2 set to 0x3A		; addr: CE34354
mov.l @(ptr_CE343CC_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE34356
mov 0x11,r6 ; r6 set to 0x11		; addr: CE34358
mov.b r2,@(r0,r14) 		; addr: CE3435A
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE3435C
mov.w r13,@(r0,r14) 		; addr: CE3435E
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE34360
mov.b r13,@(r0,r14) 		; addr: CE34362
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE34364
mov.l r13,@(r0,r14) 		; addr: CE34366
mov 0x15,r5 ; r5 set to 0x15		; addr: CE34368
mov.b @(0x02,r14),r0 		; addr: CE3436A
mov r14,r4		; addr: CE3436C
mov.l @r3,r2 ; r2 ??		; addr: CE3436E
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE34370
shll r0 ; r0 set to 0x188		; addr: CE34372
add 0x7C,r2		; addr: CE34374
mov.w @(r0,r2),r1		; addr: CE34376
add 0x01,r1		; addr: CE34378
mov.w r1,@(r0,r2) 		; addr: CE3437A
lds.l @r15+,pr 		; addr: CE3437C
mov.l @(ptr_CE343D0_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE3437E
mov.l @r15+,r13 ; r13 ??? bc r15 is ???		; addr: CE34380
jmp @r2		; addr: CE34382
mov.l @r15+,r14		; addr: CE34384

f_code_CE34386:
mov.l r14,@-r15		; addr: CE34386
sts.l pr,@-r15		; addr: CE34388
add 0xF4,r15		; addr: CE3438A
mov.l @(ptr_CE343B0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3438C
jsr @r3		; addr: CE3438E
mov r4,r14		; addr: CE34390
exts.b r0,r0		; addr: CE34392
cmp/pz r0		; addr: CE34394
bt data_CE343D4		; addr: CE34396
mov.l @(ptr_CE343B4_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE34398
jsr @r3		; addr: CE3439A
mov r14,r4		; addr: CE3439C
add 0x0C,r15		; addr: CE3439E
lds.l @r15+,pr 		; addr: CE343A0
rts 		; addr: CE343A2
mov.l @r15+,r14		; addr: CE343A4
;-------------------------------------------------------------------------------
#data 0x02A4		; addr: CE343A6

data_CE343A8:
#data 0x01F9		; addr: CE343A8

data_CE343AA:
#data 0x041C		; addr: CE343AA

data_CE343AC:
#data 0x01A1		; addr: CE343AC
#data 0x0000		; addr: CE343AE

#align4
ptr_CE343B0_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE343B0

ptr_CE343B4_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE343B4

ptr_CE343B8_to_ptr_CE35668_to_f_code_CE33B58:
#data ptr_CE35668_to_f_code_CE33B58		; addr: CE343B8

ptr_CE343BC_to_ptr_CE35678_to_f_code_CE34310:
#data ptr_CE35678_to_f_code_CE34310		; addr: CE343BC

ptr_CE343C0_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE343C0

ptr_CE343C4_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE343C4

ptr_CE343C8_to_fn_extern_8C05115A:
#data fn_extern_8C05115A		; addr: CE343C8

ptr_CE343CC_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE343CC

ptr_CE343D0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE343D0

data_CE343D4:
#data 0x02EC908A		; addr: CE343D4
#data 0x890C2228		; addr: CE343D8
#data 0x65F3E300		; addr: CE343DC
#data 0xC7460E34		; addr: CE343E0
#data 0xC746F308		; addr: CE343E4
#data 0xFF3AD346		; addr: CE343E8
#data 0xE004F308		; addr: CE343EC
#data 0x430BFF37		; addr: CE343F0
#data 0x64E3		; addr: CE343F4

data_CE343F6:
#data 0x907A		; addr: CE343F6
#data 0x222802EC		; addr: CE343F8
#data 0xD3428903		; addr: CE343FC
#data 0x430BE516		; addr: CE34400
#data 0x64E3		; addr: CE34404

data_CE34406:
#data 0x7F0C		; addr: CE34406
#data 0x000B4F26		; addr: CE34408
#data 0x6EF6		; addr: CE3440C
;-------------------------------------------------------------------------------

f_code_CE3440E:
mov.l r14,@-r15		; addr: CE3440E
mov r4,r14		; addr: CE34410
mov.l r13,@-r15		; addr: CE34412
mov 0x00,r13 ; r13 set to 0x00		; addr: CE34414
mov.w @(data_CE344F0,pc),r4 ; r4 set to 0x2A4		; addr: CE34416
sts.l pr,@-r15		; addr: CE34418
add r14,r4 ; r4 ??? bc r14 is ???		; addr: CE3441A
mov r13,r0 ; r0 set to 0x00		; addr: CE3441C
nop 		; addr: CE3441E
mov.b r0,@(0x0F,r4) 		; addr: CE34420
mov 0x04,r3 ; r3 set to 0x04		; addr: CE34422
mov.b @(0x06,r14),r0 		; addr: CE34424
mov 0x17,r2 ; r2 set to 0x17		; addr: CE34426
fldi0 fr3		; addr: CE34428
mov 0x16,r5 ; r5 set to 0x16		; addr: CE3442A
add 0x01,r0 ; r0 set to 0x01		; addr: CE3442C
mov.b r0,@(0x06,r14) 		; addr: CE3442E
mov.w @(data_CE344F2,pc),r0 ; r0 set to 0x1FC		; addr: CE34430
mov.b r13,@(r0,r14) 		; addr: CE34432
mov.w @(data_CE344F4,pc),r0 ; r0 set to 0x158		; addr: CE34434
mov.b r3,@(r0,r14) 		; addr: CE34436
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE34438
mov.b r2,@(r0,r14) 		; addr: CE3443A
mov 0x68,r0 ; r0 set to 0x68		; addr: CE3443C
fmov.s fr3,@(r0,r14) 		; addr: CE3443E
mov 0x60,r0 ; r0 set to 0x60		; addr: CE34440
fldi1 fr3		; addr: CE34442
fadd fr3,fr3 ; r3 ??		; addr: CE34444
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE34446
mov.l @(ptr_CE34508_to_fn_extern_8C04223A,pc),r3 ; r3 set to 0x8C04223A		; addr: CE34448
fdiv fr3,fr2		; addr: CE3444A
fmov.s fr2,@(r0,r14) 		; addr: CE3444C
mova @(data_CE3450C,pc),r0  ; r0 set to 0xCE3450C		; addr: CE3444E
fmov.s @r0,fr2		; addr: CE34450
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE34452
fmov.s fr2,@(r0,r14) 		; addr: CE34454
jsr @r3		; addr: CE34456
mov r14,r4		; addr: CE34458
mov.w @(data_CE344F2,pc),r0 ; r0 set to 0x1FC		; addr: CE3445A
mov.b @(r0,r14),r2		; addr: CE3445C
tst r2,r2		; addr: CE3445E
bf data_CE3446A		; addr: CE34460
mov.w @(data_CE344F6,pc),r0 ; r0 set to 0x3F4		; addr: CE34462
mov.l @(ptr_CE34510_to_data_CE352A8,pc),r3 ; r3 set to 0xCE352A8		; addr: CE34464
bra data_CE34470		; addr: CE34466
mov.l r3,@(r0,r14) 		; addr: CE34468

data_CE3446A:
#data 0x9044		; addr: CE3446A
#data 0x0E16D129		; addr: CE3446C

#align4
data_CE34470:
#data 0xE3029042		; addr: CE34470
#data 0x0E34E50C		; addr: CE34474
#data 0x0ED57005		; addr: CE34478
#data 0x0ED470F2		; addr: CE3447C
#data 0xD3257026		; addr: CE34480
#data 0x84E20ED6		; addr: CE34484
#data 0x600C6232		; addr: CE34488
#data 0x727C4000		; addr: CE3448C
#data 0x7101012D		; addr: CE34490
#data 0x902D0215		; addr: CE34494
#data 0x06ECD220		; addr: CE34498
#data 0x64E3420B		; addr: CE3449C
#data 0x00EC902B		; addr: CE344A0
#data 0x8903C8F0		; addr: CE344A4
#data 0x02EC9027		; addr: CE344A8
#data 0x0E2472F0		; addr: CE344AC

#align4
data_CE344B0:
#data 0x6DF64F26		; addr: CE344B0
#data 0x6EF6000B		; addr: CE344B4
;-------------------------------------------------------------------------------

f_code_CE344B8:
mov.l r14,@-r15		; addr: CE344B8
mov r4,r14		; addr: CE344BA
mov.l r13,@-r15		; addr: CE344BC
sts.l pr,@-r15		; addr: CE344BE
mov.l @(ptr_CE34520_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE344C0
mov.w @(data_CE344F0,pc),r13 ; r13 set to 0x2A4		; addr: CE344C2
jsr @r3		; addr: CE344C4
add r14,r13 ; r13 ??? bc r14 is ???		; addr: CE344C6
mov.l @(ptr_CE34524_to_fn_extern_8C04FEA8,pc),r2 ; r2 set to 0x8C04FEA8		; addr: CE344C8
jsr @r2		; addr: CE344CA
mov r14,r4		; addr: CE344CC
mov.l @(ptr_CE34528_to_fn_extern_8C050048,pc),r3 ; r3 set to 0x8C050048		; addr: CE344CE
jsr @r3		; addr: CE344D0
mov r14,r4		; addr: CE344D2
mov.l @(ptr_CE3452C_to_fn_extern_8C052CE2,pc),r2 ; r2 set to 0x8C052CE2		; addr: CE344D4
jsr @r2		; addr: CE344D6
mov r14,r4		; addr: CE344D8
extu.b r0,r0		; addr: CE344DA
tst r0,r0		; addr: CE344DC
bt data_CE34534		; addr: CE344DE
lds.l @r15+,pr 		; addr: CE344E0
mov.l @(ptr_CE34530_to_fn_extern_8C052DAC,pc),r2 ; r2 set to 0x8C052DAC		; addr: CE344E2
mov r14,r4		; addr: CE344E4
mov.l @r15+,r13		; addr: CE344E6
jmp @r2		; addr: CE344E8
mov.l @r15+,r14		; addr: CE344EA
#data 0x014B0141		; addr: CE344EC

data_CE344F0:
#data 0x02A4		; addr: CE344F0

data_CE344F2:
#data 0x01FC		; addr: CE344F2

data_CE344F4:
#data 0x0158		; addr: CE344F4

data_CE344F6:
#data 0x03F4		; addr: CE344F6
#data 0x01D601A7		; addr: CE344F8
#data 0xC2555555		; addr: CE344FC
#data 0x43092492		; addr: CE34500
#data extern_8C050EA4		; addr: CE34504

#align4
ptr_CE34508_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE34508

data_CE3450C:
#data 0xBECDB6DB		; addr: CE3450C

#align4
ptr_CE34510_to_data_CE352A8:
#data data_CE352A8		; addr: CE34510

ptr_CE34514_to_data_CE352C0:
#data data_CE352C0		; addr: CE34514
#data extern_8C2896B0		; addr: CE34518
#data fn_extern_8C034E8C		; addr: CE3451C

#align4
ptr_CE34520_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE34520

ptr_CE34524_to_fn_extern_8C04FEA8:
#data fn_extern_8C04FEA8		; addr: CE34524

ptr_CE34528_to_fn_extern_8C050048:
#data fn_extern_8C050048		; addr: CE34528

ptr_CE3452C_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2		; addr: CE3452C

ptr_CE34530_to_fn_extern_8C052DAC:
#data fn_extern_8C052DAC		; addr: CE34530

data_CE34534:
#data 0xE30284DF		; addr: CE34534
#data 0x89203033		; addr: CE34538
#data 0x01EC90A6		; addr: CE3453C
#data 0x891C2118		; addr: CE34540
#data 0x02EC90A3		; addr: CE34544
#data 0x89182228		; addr: CE34548
#data 0x919FE400		; addr: CE3454C
#data 0x84DF0E44		; addr: CE34550
#data 0xD25031EC		; addr: CE34554
#data 0x80DF7001		; addr: CE34558
#data 0x701784DF		; addr: CE3455C
#data 0x90962100		; addr: CE34560
#data 0x70F20E45		; addr: CE34564
#data 0x70260E44		; addr: CE34568
#data 0x84E20E46		; addr: CE3456C
#data 0x600C6122		; addr: CE34570
#data 0x717C4000		; addr: CE34574
#data 0x7301031D		; addr: CE34578
#data 0x0135		; addr: CE3457C

data_CE3457E:
#data 0x4F26		; addr: CE3457E
#data 0x000B6DF6		; addr: CE34580
#data 0x6EF6		; addr: CE34584
;-------------------------------------------------------------------------------

f_code_CE34586:
mov r4,r3		; addr: CE34586
mov.l @(ptr_CE3469C_to_ptr_CE35680_to_f_code_CE3440E,pc),r1 ; r1 set to 0xCE35680		; addr: CE34588
mov.l r4,@-r15		; addr: CE3458A
mov.b @(0x06,r3),r0 		; addr: CE3458C
extu.b r0,r0		; addr: CE3458E
shll2 r0		; addr: CE34590
mov.l @(r0,r1),r3		; addr: CE34592
jmp @r3		; addr: CE34594
add 0x04,r15		; addr: CE34596

f_code_CE34598:
mov r4,r3		; addr: CE34598
mov.l @(ptr_CE346A0_to_ptr_CE35688_to_data_CE345AA,pc),r1 ; r1 set to 0xCE35688		; addr: CE3459A
mov.l r4,@-r15		; addr: CE3459C
mov.b @(0x06,r3),r0 		; addr: CE3459E
extu.b r0,r0		; addr: CE345A0
shll2 r0		; addr: CE345A2
mov.l @(r0,r1),r3		; addr: CE345A4
jmp @r3		; addr: CE345A6
add 0x04,r15		; addr: CE345A8

data_CE345AA:
#data 0x2FE6		; addr: CE345AA
#data 0x4F226E43		; addr: CE345AC
#data 0x430BD33C		; addr: CE345B0
#data 0x84E6E500		; addr: CE345B4
#data 0x7001E302		; addr: CE345B8
#data 0x906980E6		; addr: CE345BC
#data 0xC7390E34		; addr: CE345C0
#data 0xE05CF308		; addr: CE345C4
#data 0x9064FE37		; addr: CE345C8
#data 0x233803EC		; addr: CE345CC
#data 0xE05C8B03		; addr: CE345D0
#data 0xF34DF3E6		; addr: CE345D4
#data 0xFE37		; addr: CE345D8

data_CE345DA:
#data 0xE068		; addr: CE345DA
#data 0xFE37F38D		; addr: CE345DC
#data 0xF308C732		; addr: CE345E0
#data 0xE339E060		; addr: CE345E4
#data 0xC731FE37		; addr: CE345E8
#data 0xE06CF308		; addr: CE345EC
#data 0xFE37E400		; addr: CE345F0
#data 0x904BE514		; addr: CE345F4
#data 0x0E346643		; addr: CE345F8
#data 0x0E45700B		; addr: CE345FC
#data 0x0E4470F2		; addr: CE34600
#data 0xD3247026		; addr: CE34604
#data 0x84E20E46		; addr: CE34608
#data 0x600C6232		; addr: CE3460C
#data 0x727C4000		; addr: CE34610
#data 0x7101012D		; addr: CE34614
#data 0x4F260215		; addr: CE34618
#data 0x64E3D225		; addr: CE3461C
#data 0x6EF6422B		; addr: CE34620


f_code_CE34624:
mov.l r14,@-r15		; addr: CE34624
sts.l pr,@-r15		; addr: CE34626
mov.l @(ptr_CE346B8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34628
jsr @r3		; addr: CE3462A
mov r4,r14		; addr: CE3462C
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE3462E
mov.l @(ptr_CE346BC_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2		; addr: CE34630
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34632
mov 0x34,r0 ; r0 set to 0x34		; addr: CE34634
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE34636
fmov.s @(r0,r14),fr2		; addr: CE34638
mov 0x68,r1 ; r1 set to 0x68		; addr: CE3463A
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3463C
fadd fr3,fr2		; addr: CE3463E
fmov.s fr2,@(r0,r14) 		; addr: CE34640
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE34642
fmov.s @(r0,r14),fr2		; addr: CE34644
fmov.s @r1,fr3		; addr: CE34646
mov 0x60,r1 ; r1 set to 0x60		; addr: CE34648
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3464A
fadd fr3,fr2		; addr: CE3464C
fmov.s fr2,@(r0,r14) 		; addr: CE3464E
mov 0x38,r0 ; r0 set to 0x38		; addr: CE34650
fmov.s @(r0,r14),fr2		; addr: CE34652
fmov.s @r1,fr3		; addr: CE34654
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE34656
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34658
fadd fr3,fr2		; addr: CE3465A
fmov.s fr2,@(r0,r14) 		; addr: CE3465C
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3465E
fmov.s @(r0,r14),fr2		; addr: CE34660
fmov.s @r1,fr3		; addr: CE34662
fadd fr3,fr2		; addr: CE34664
fmov.s fr2,@(r0,r14) 		; addr: CE34666
jsr @r3		; addr: CE34668
mov r14,r4		; addr: CE3466A
extu.b r0,r0 ; r0 set to 0x60		; addr: CE3466C
tst r0,r0		; addr: CE3466E
bt l_code_CE346C4		; addr: CE34670
mov.b @(0x06,r14),r0 		; addr: CE34672
mov 0x14,r5 ; r5 set to 0x14		; addr: CE34674
mov.l @(ptr_CE346B4_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE34676
mov 0x01,r6 ; r6 set to 0x01		; addr: CE34678
add 0x01,r0 ; r0 set to 0x61		; addr: CE3467A
mov.b r0,@(0x06,r14) 		; addr: CE3467C
jsr @r3		; addr: CE3467E
mov r14,r4		; addr: CE34680
lds.l @r15+,pr 		; addr: CE34682
mov.l @(ptr_CE346C0_to_fn_extern_8C0511B4,pc),r2 ; r2 set to 0x8C0511B4		; addr: CE34684
mov r14,r4		; addr: CE34686
jmp @r2		; addr: CE34688
mov.l @r15+,r14		; addr: CE3468A
#data 0x0141019E		; addr: CE3468C
#data 0x01AC01A1		; addr: CE34690
#data 0x01D201F9		; addr: CE34694
#data extern_8C2896B0		; addr: CE34698

#align4
ptr_CE3469C_to_ptr_CE35680_to_f_code_CE3440E:
#data ptr_CE35680_to_f_code_CE3440E		; addr: CE3469C

ptr_CE346A0_to_ptr_CE35688_to_data_CE345AA:
#data ptr_CE35688_to_data_CE345AA		; addr: CE346A0
#data fn_extern_8C035162		; addr: CE346A4
#data 0x41F00000		; addr: CE346A8
#data 0x40892492		; addr: CE346AC
#data 0xBF4DB6DB		; addr: CE346B0

#align4
ptr_CE346B4_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE346B4

ptr_CE346B8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE346B8

ptr_CE346BC_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2		; addr: CE346BC

ptr_CE346C0_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE346C0


l_code_CE346C4:
lds.l @r15+,pr 		; addr: CE346C4
rts 		; addr: CE346C6
mov.l @r15+,r14		; addr: CE346C8
;-------------------------------------------------------------------------------

f_code_CE346CA:
mov.l r14,@-r15		; addr: CE346CA
sts.l pr,@-r15		; addr: CE346CC
mov.l @(ptr_CE347A4_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE346CE
jsr @r3		; addr: CE346D0
mov r4,r14		; addr: CE346D2
exts.b r0,r0		; addr: CE346D4
cmp/pz r0		; addr: CE346D6
bt data_CE346E4		; addr: CE346D8
lds.l @r15+,pr 		; addr: CE346DA
mov.l @(ptr_CE347A8_to_fn_extern_8C051854,pc),r3 ; r3 set to 0x8C051854		; addr: CE346DC
mov r14,r4		; addr: CE346DE
jmp @r3		; addr: CE346E0
mov.l @r15+,r14		; addr: CE346E2

#align4
data_CE346E4:
#data 0x03EC9056		; addr: CE346E4
#data 0x89012338		; addr: CE346E8
#data 0x0E34E300		; addr: CE346EC

#align4
data_CE346F0:
#data 0x000B4F26		; addr: CE346F0
#data 0x6EF6		; addr: CE346F4
;-------------------------------------------------------------------------------

f_code_CE346F6:
mov.w @(data_CE34796,pc),r0 ; r0 set to 0x1FA		; addr: CE346F6
mov.l r14,@-r15		; addr: CE346F8
mov r4,r14		; addr: CE346FA
mov.l r13,@-r15		; addr: CE346FC
mov.w @(data_CE34798,pc),r2 ; r2 set to 0xC00		; addr: CE346FE
sts.l pr,@-r15		; addr: CE34700
mov.w @(r0,r14),r3		; addr: CE34702
extu.w r3,r3		; addr: CE34704
tst r2,r3		; addr: CE34706
bt l_code_CE34772		; addr: CE34708
mov.w @(data_CE3479A,pc),r0 ; r0 set to 0x1F9		; addr: CE3470A
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3470C
extu.b r0,r0		; addr: CE3470E
cmp/eq 0x01,r0 		; addr: CE34710
bt l_code_CE34772		; addr: CE34712
mov.w @(data_CE3479C,pc),r0 ; r0 set to 0x1A3		; addr: CE34714
mov.b @(r0,r14),r3		; addr: CE34716
tst r3,r3		; addr: CE34718
bt l_code_CE34772		; addr: CE3471A
mov.w @(data_CE3479E,pc),r0 ; r0 set to 0x1FE		; addr: CE3471C
mov.l @(ptr_CE347AC_to_fn_extern_8C045790,pc),r13 ; r13 set to 0x8C045790		; addr: CE3471E
mov.b @(r0,r14),r3		; addr: CE34720
tst r3,r3		; addr: CE34722
bt l_code_CE34742		; addr: CE34724
mov.w @(data_CE3479A,pc),r0 ; r0 set to 0x1F9		; addr: CE34726
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE34728
extu.b r0,r0		; addr: CE3472A
cmp/eq 0x02,r0 		; addr: CE3472C
bt l_code_CE34772		; addr: CE3472E
jsr @r13		; addr: CE34730
mov r14,r4		; addr: CE34732
tst r0,r0		; addr: CE34734
bt/s l_code_CE34772		; addr: CE34736
mov r0,r4		; addr: CE34738
mov.w @(data_CE347A0,pc),r0 ; r0 set to 0x1F7		; addr: CE3473A
mov 0x03,r2 ; r2 set to 0x03		; addr: CE3473C
bra l_code_CE3476E		; addr: CE3473E
mov.b r2,@(r0,r14) 		; addr: CE34740

l_code_CE34742:
mov.w @(data_CE3479A,pc),r0 ; r0 set to 0x1F9		; addr: CE34742
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE34744
extu.b r0,r0		; addr: CE34746
cmp/eq 0x02,r0 		; addr: CE34748
bf l_code_CE3475E		; addr: CE3474A
jsr @r13		; addr: CE3474C
mov r14,r4		; addr: CE3474E
tst r0,r0		; addr: CE34750
bt/s l_code_CE34772		; addr: CE34752
mov r0,r4		; addr: CE34754
mov.w @(data_CE347A0,pc),r0 ; r0 set to 0x1F7		; addr: CE34756
mov 0x02,r3 ; r3 set to 0x02		; addr: CE34758
bra l_code_CE3476E		; addr: CE3475A
mov.b r3,@(r0,r14) 		; addr: CE3475C

l_code_CE3475E:
jsr @r13		; addr: CE3475E
mov r14,r4		; addr: CE34760
tst r0,r0		; addr: CE34762
bt/s l_code_CE34772		; addr: CE34764
mov r0,r4		; addr: CE34766
mov.w @(data_CE347A0,pc),r0 ; r0 set to 0x1F7		; addr: CE34768
mov 0x00,r3 ; r3 set to 0x00		; addr: CE3476A
mov.b r3,@(r0,r14) 		; addr: CE3476C

l_code_CE3476E:
bra l_code_CE34774		; addr: CE3476E
mov r4,r0		; addr: CE34770

l_code_CE34772:
mov 0x00,r0 ; r0 set to 0x00		; addr: CE34772

l_code_CE34774:
lds.l @r15+,pr 		; addr: CE34774
mov.l @r15+,r13		; addr: CE34776
rts 		; addr: CE34778
mov.l @r15+,r14		; addr: CE3477A
;-------------------------------------------------------------------------------

f_code_CE3477C:
mov.l r4,@-r15		; addr: CE3477C
mov r4,r0		; addr: CE3477E
nop 		; addr: CE34780
mov.w @(data_CE347A0,pc),r1 ; r1 set to 0x1F7		; addr: CE34782
mov.l @(ptr_CE347B0_to_ptr_CE35694_to_data_CE347B4,pc),r2 ; r2 set to 0xCE35694		; addr: CE34784
mov.b @(r0,r1),r0		; addr: CE34786
extu.b r0,r0		; addr: CE34788
and 0x3F,r0 		; addr: CE3478A
shll2 r0		; addr: CE3478C
mov.l @(r0,r2),r3		; addr: CE3478E
jmp @r3		; addr: CE34790
add 0x04,r15		; addr: CE34792
#data 0x0141		; addr: CE34794

data_CE34796:
#data 0x01FA		; addr: CE34796

data_CE34798:
#data 0x0C00		; addr: CE34798

data_CE3479A:
#data 0x01F9		; addr: CE3479A

data_CE3479C:
#data 0x01A3		; addr: CE3479C

data_CE3479E:
#data 0x01FE		; addr: CE3479E

data_CE347A0:
#data 0x01F7		; addr: CE347A0
#data 0x0000		; addr: CE347A2

#align4
ptr_CE347A4_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE347A4

ptr_CE347A8_to_fn_extern_8C051854:
#data fn_extern_8C051854		; addr: CE347A8

ptr_CE347AC_to_fn_extern_8C045790:
#data fn_extern_8C045790		; addr: CE347AC

ptr_CE347B0_to_ptr_CE35694_to_data_CE347B4:
#data ptr_CE35694_to_data_CE347B4		; addr: CE347B0

data_CE347B4:
#data 0x4F222FE6		; addr: CE347B4
#data 0x90747FF4		; addr: CE347B8
#data 0x92736E43		; addr: CE347BC
#data 0x633D03ED		; addr: CE347C0
#data extern_8D0C2328		; addr: CE347C4
#data 0x906EE30A		; addr: CE347C8
#data 0x00EC916D		; addr: CE347CC
#data 0xCA0131EC		; addr: CE347D0
#data 0x90692100		; addr: CE347D4
#data 0x00ED9168		; addr: CE347D8
#data 0xCA0131EC		; addr: CE347DC
#data 0x2101		; addr: CE347E0

data_CE347E2:
#data 0x9064		; addr: CE347E2
#data 0x6563E605		; addr: CE347E4
#data 0xE0000E34		; addr: CE347E8
#data 0x80E6D330		; addr: CE347EC
#data 0x64E3430B		; addr: CE347F0
#data 0xD331C72F		; addr: CE347F4
#data 0xC72FF308		; addr: CE347F8
#data 0xFF3A65F3		; addr: CE347FC
#data 0xE004F308		; addr: CE34800
#data 0x430BFF37		; addr: CE34804
#data 0xD22D64E3		; addr: CE34808
#data 0x64E3420B		; addr: CE3480C
#data 0xE50FD32C		; addr: CE34810
#data 0x430BE600		; addr: CE34814
#data 0x7F0C64E3		; addr: CE34818
#data 0x000B4F26		; addr: CE3481C
#data 0x6EF6		; addr: CE34820
;-------------------------------------------------------------------------------

f_code_CE34822:
mov.l r14,@-r15		; addr: CE34822
sts.l pr,@-r15		; addr: CE34824
add 0xF4,r15		; addr: CE34826
mov.w @(data_CE348AE,pc),r0 ; r0 set to 0x1A0		; addr: CE34828
mov 0x0A,r3 ; r3 set to 0x0A		; addr: CE3482A
mov r4,r14		; addr: CE3482C
mov r15,r5		; addr: CE3482E
mov.b r3,@(r0,r14) 		; addr: CE34830
mov 0x00,r0 ; r0 set to 0x00		; addr: CE34832
mov.b r0,@(0x06,r14) 		; addr: CE34834
mova @(data_CE348B4,pc),r0  ; r0 set to 0xCE348B4		; addr: CE34836
fmov.s @r0,fr3 ; r3 ??		; addr: CE34838
mova @(data_CE348B8,pc),r0  ; r0 set to 0xCE348B8		; addr: CE3483A
mov.l @(ptr_CE348BC_to_extern_8C103660,pc),r3 ; r3 set to 0x8C103660		; addr: CE3483C
fmov.s fr3,@r15		; addr: CE3483E
fmov.s @r0,fr3 ; r3 ??		; addr: CE34840
mov 0x04,r0 ; r0 set to 0x04		; addr: CE34842
fmov.s fr3,@(r0,r15) 		; addr: CE34844
jsr @r3		; addr: CE34846
mov r14,r4		; addr: CE34848
mov.l @(ptr_CE348C4_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE3484A
mov 0x0F,r5 ; r5 set to 0x0F		; addr: CE3484C
mov 0x01,r6 ; r6 set to 0x01		; addr: CE3484E
jsr @r2		; addr: CE34850
mov r14,r4		; addr: CE34852
add 0x0C,r15		; addr: CE34854
lds.l @r15+,pr 		; addr: CE34856
rts 		; addr: CE34858
mov.l @r15+,r14		; addr: CE3485A
;-------------------------------------------------------------------------------

f_code_CE3485C:
mov.l r14,@-r15		; addr: CE3485C
sts.l pr,@-r15		; addr: CE3485E
add 0xF4,r15		; addr: CE34860
mov.w @(data_CE348AE,pc),r0 ; r0 set to 0x1A0		; addr: CE34862
mov 0x0A,r3 ; r3 set to 0x0A		; addr: CE34864
mov r4,r14		; addr: CE34866
mov r15,r5		; addr: CE34868
mov.b r3,@(r0,r14) 		; addr: CE3486A
mov 0x00,r0 ; r0 set to 0x00		; addr: CE3486C
mov.b r0,@(0x06,r14) 		; addr: CE3486E
mova @(data_CE348B4,pc),r0  ; r0 set to 0xCE348B4		; addr: CE34870
fmov.s @r0,fr3 ; r3 ??		; addr: CE34872
mova @(data_CE348B8,pc),r0  ; r0 set to 0xCE348B8		; addr: CE34874
mov.l @(ptr_CE348BC_to_extern_8C103660,pc),r3 ; r3 set to 0x8C103660		; addr: CE34876
fmov.s fr3,@r15		; addr: CE34878
fmov.s @r0,fr3 ; r3 ??		; addr: CE3487A
mov 0x04,r0 ; r0 set to 0x04		; addr: CE3487C
fmov.s fr3,@(r0,r15) 		; addr: CE3487E
jsr @r3		; addr: CE34880
mov r14,r4		; addr: CE34882
mov.l @(ptr_CE348B0_to_fn_extern_8C02FEC4,pc),r2 ; r2 set to 0x8C02FEC4		; addr: CE34884
mov 0x05,r6 ; r6 set to 0x05		; addr: CE34886
mov r6,r5 ; r5 set to 0x05		; addr: CE34888
jsr @r2		; addr: CE3488A
mov r14,r4		; addr: CE3488C
mov.l @(ptr_CE348C0_to_fn_extern_8C056F2A,pc),r3 ; r3 set to 0x8C056F2A		; addr: CE3488E
jsr @r3		; addr: CE34890
mov r14,r4		; addr: CE34892
mov.l @(ptr_CE348C4_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE34894
mov 0x0F,r5 ; r5 set to 0x0F		; addr: CE34896
mov 0x08,r6 ; r6 set to 0x08		; addr: CE34898
jsr @r2		; addr: CE3489A
mov r14,r4		; addr: CE3489C
add 0x0C,r15		; addr: CE3489E
lds.l @r15+,pr 		; addr: CE348A0
rts 		; addr: CE348A2
mov.l @r15+,r14		; addr: CE348A4
;-------------------------------------------------------------------------------
#data 0x01FA		; addr: CE348A6
#data 0x01D20400		; addr: CE348A8
#data 0x0130		; addr: CE348AC

data_CE348AE:
#data 0x01A0		; addr: CE348AE

#align4
ptr_CE348B0_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE348B0

data_CE348B4:
#data 0xC2555555		; addr: CE348B4

#align4
data_CE348B8:
#data 0x43092492		; addr: CE348B8

#align4
ptr_CE348BC_to_extern_8C103660:
#data extern_8C103660		; addr: CE348BC

ptr_CE348C0_to_fn_extern_8C056F2A:
#data fn_extern_8C056F2A		; addr: CE348C0

ptr_CE348C4_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE348C4

data_CE348C8:
#data 0x4F222FE6		; addr: CE348C8
#data 0x93827FF0		; addr: CE348CC
#data 0x90816E43		; addr: CE348D0
#data 0x2F3233EC		; addr: CE348D4
#data 0x937E02ED		; addr: CE348D8
#data 0x2238622D		; addr: CE348DC
#data 0xE6058D0C		; addr: CE348E0
#data 0x9179907A		; addr: CE348E4
#data 0x31EC00EC		; addr: CE348E8
#data 0x2100CA01		; addr: CE348EC
#data 0x91749075		; addr: CE348F0
#data 0x31EC00ED		; addr: CE348F4
#data 0x2101CA01		; addr: CE348F8

#align4
data_CE348FC:
#data 0x6563D33A		; addr: CE348FC
#data 0x64E3430B		; addr: CE34900
#data 0xE20A906C		; addr: CE34904
#data 0xD33A65F3		; addr: CE34908
#data 0xE0000E24		; addr: CE3490C
#data 0xC73680E6		; addr: CE34910
#data 0xE004F308		; addr: CE34914
#data 0xFF377504		; addr: CE34918
#data 0xF308C734		; addr: CE3491C
#data 0xFF37E008		; addr: CE34920
#data 0x64E3430B		; addr: CE34924
#data 0xE01B62F2		; addr: CE34928
#data 0x0234E300		; addr: CE3492C
#data 0x430BD331		; addr: CE34930
#data 0xD23164E3		; addr: CE34934
#data 0xE607E50F		; addr: CE34938
#data 0x64E3420B		; addr: CE3493C
#data 0x4F267F10		; addr: CE34940
#data 0x6EF6000B		; addr: CE34944
;-------------------------------------------------------------------------------

f_code_CE34948:
rts 		; addr: CE34948
nop 		; addr: CE3494A
;-------------------------------------------------------------------------------

f_code_CE3494C:
mov.w @(data_CE349E2,pc),r0 ; r0 set to 0x1EA		; addr: CE3494C
mov 0x01,r3 ; r3 set to 0x01		; addr: CE3494E
mov.l r14,@-r15		; addr: CE34950
mov r4,r14		; addr: CE34952
mov.b r3,@(r0,r14) 		; addr: CE34954
add 0x0D,r0 ; r0 set to 0x1F7		; addr: CE34956
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE34958
mov r14,r4		; addr: CE3495A
mov.l @(ptr_CE34A00_to_ptr_CE356AC_to_f_code_CE3496A,pc),r1 ; r1 set to 0xCE356AC		; addr: CE3495C
extu.b r0,r0		; addr: CE3495E
and 0x3F,r0 		; addr: CE34960
shll2 r0		; addr: CE34962
mov.l @(r0,r1),r3 ; r3 ??		; addr: CE34964
jmp @r3		; addr: CE34966
mov.l @r15+,r14		; addr: CE34968

f_code_CE3496A:
mov.l r14,@-r15		; addr: CE3496A
sts.l pr,@-r15		; addr: CE3496C
mov.l @(ptr_CE34A04_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3496E
jsr @r3		; addr: CE34970
mov r4,r14		; addr: CE34972
exts.b r0,r0		; addr: CE34974
cmp/pz r0		; addr: CE34976
bt l_code_CE34990		; addr: CE34978
mov.w @(data_CE349DE,pc),r0 ; r0 set to 0x130		; addr: CE3497A
mov r14,r4		; addr: CE3497C
mov.w @(data_CE349DE,pc),r1 ; r1 set to 0x130		; addr: CE3497E
mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE34980
mov.l @(ptr_CE34A08_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE34982
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34984
xor 0x01,r0 		; addr: CE34986
mov.w r0,@r1		; addr: CE34988
lds.l @r15+,pr 		; addr: CE3498A
jmp @r3		; addr: CE3498C
mov.l @r15+,r14		; addr: CE3498E

l_code_CE34990:
mov.w @(data_CE349E4,pc),r0 ; r0 set to 0x141		; addr: CE34990
mov.b @(r0,r14),r2		; addr: CE34992
tst r2,r2		; addr: CE34994
bt l_code_CE349D0		; addr: CE34996
mov 0x00,r3 ; r3 set to 0x00		; addr: CE34998
mov.b r3,@(r0,r14) 		; addr: CE3499A
mov 0x01,r3 ; r3 set to 0x01		; addr: CE3499C
mov.w @(data_CE349E6,pc),r0 ; r0 set to 0x1C8		; addr: CE3499E
mov 0x02,r2 ; r2 set to 0x02		; addr: CE349A0
mov 0x00,r6 ; r6 set to 0x00		; addr: CE349A2
mov.l @(r0,r14),r4		; addr: CE349A4
add 0xEC,r0 ; r0 set to 0x1B4		; addr: CE349A6
mov r6,r5 ; r5 set to 0x00		; addr: CE349A8
mov.l r14,@(r0,r4) 		; addr: CE349AA
add 0x42,r0 ; r0 set to 0x1F6		; addr: CE349AC
mov.b r3,@(r0,r4) 		; addr: CE349AE
add 0x03,r0 ; r0 set to 0x1F9		; addr: CE349B0
mov.b r2,@(r0,r4) 		; addr: CE349B2
add 0xA8,r0 ; r0 set to 0x1A1		; addr: CE349B4
mov 0x20,r3 ; r3 set to 0x20		; addr: CE349B6
mov.b r3,@(r0,r4) 		; addr: CE349B8
add 0x31,r0 ; r0 set to 0x1D2		; addr: CE349BA
mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???		; addr: CE349BC
mov.l @(ptr_CE349E8_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE349BE
mov.b r2,@(r0,r4) 		; addr: CE349C0
jsr @r3		; addr: CE349C2
mov r14,r4		; addr: CE349C4
lds.l @r15+,pr 		; addr: CE349C6
mov.l @(ptr_CE34A0C_to_fn_extern_8C0423FC,pc),r2 ; r2 set to 0x8C0423FC		; addr: CE349C8
mov r14,r4		; addr: CE349CA
jmp @r2		; addr: CE349CC
mov.l @r15+,r14		; addr: CE349CE

l_code_CE349D0:
lds.l @r15+,pr 		; addr: CE349D0
rts 		; addr: CE349D2
mov.l @r15+,r14		; addr: CE349D4
;-------------------------------------------------------------------------------
#data 0x02A4		; addr: CE349D6
#data 0x040001FA		; addr: CE349D8
#data 0x01D2		; addr: CE349DC

data_CE349DE:
#data 0x0130		; addr: CE349DE
#data 0x01A0		; addr: CE349E0

data_CE349E2:
#data 0x01EA		; addr: CE349E2

data_CE349E4:
#data 0x0141		; addr: CE349E4

data_CE349E6:
#data 0x01C8		; addr: CE349E6

#align4
ptr_CE349E8_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE349E8
#data 0xC2555555		; addr: CE349EC
#data 0x43092492		; addr: CE349F0
#data extern_8C103660		; addr: CE349F4
#data fn_extern_8C056F2A		; addr: CE349F8
#data fn_extern_8C034E8C		; addr: CE349FC

#align4
ptr_CE34A00_to_ptr_CE356AC_to_f_code_CE3496A:
#data ptr_CE356AC_to_f_code_CE3496A		; addr: CE34A00

ptr_CE34A04_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE34A04

ptr_CE34A08_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE34A08

ptr_CE34A0C_to_fn_extern_8C0423FC:
#data fn_extern_8C0423FC		; addr: CE34A0C


f_code_CE34A10:
mov.l r14,@-r15		; addr: CE34A10
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE34A12
mov r4,r14		; addr: CE34A14
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34A16
mov 0x34,r0 ; r0 set to 0x34		; addr: CE34A18
mov.l @(ptr_CE34B00_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34A1A
sts.l pr,@-r15		; addr: CE34A1C
fmov.s @(r0,r14),fr2		; addr: CE34A1E
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE34A20
mov 0x68,r1 ; r1 set to 0x68		; addr: CE34A22
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34A24
fadd fr3,fr2		; addr: CE34A26
fmov.s fr2,@(r0,r14) 		; addr: CE34A28
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE34A2A
fmov.s @r1,fr3		; addr: CE34A2C
mov 0x60,r1 ; r1 set to 0x60		; addr: CE34A2E
fmov.s @(r0,r14),fr2		; addr: CE34A30
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34A32
fadd fr3,fr2		; addr: CE34A34
fmov.s fr2,@(r0,r14) 		; addr: CE34A36
mov 0x38,r0 ; r0 set to 0x38		; addr: CE34A38
fmov.s @(r0,r14),fr2		; addr: CE34A3A
fmov.s @r1,fr3		; addr: CE34A3C
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE34A3E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34A40
fadd fr3,fr2		; addr: CE34A42
fmov.s fr2,@(r0,r14) 		; addr: CE34A44
mov 0x60,r0 ; r0 set to 0x60		; addr: CE34A46
fmov.s @(r0,r14),fr2		; addr: CE34A48
fmov.s @r1,fr3		; addr: CE34A4A
fadd fr3,fr2		; addr: CE34A4C
fmov.s fr2,@(r0,r14) 		; addr: CE34A4E
jsr @r3		; addr: CE34A50
mov r14,r4		; addr: CE34A52
mov.l @(ptr_CE34B04_to_fn_extern_8C052CE2,pc),r2 ; r2 set to 0x8C052CE2		; addr: CE34A54
jsr @r2		; addr: CE34A56
mov r14,r4		; addr: CE34A58
extu.b r0,r0 ; r0 set to 0x60		; addr: CE34A5A
tst r0,r0		; addr: CE34A5C
bt l_code_CE34A6A		; addr: CE34A5E
lds.l @r15+,pr 		; addr: CE34A60
mov.l @(ptr_CE34B08_to_fn_extern_8C052DAC,pc),r2 ; r2 set to 0x8C052DAC		; addr: CE34A62
mov r14,r4		; addr: CE34A64
jmp @r2		; addr: CE34A66
mov.l @r15+,r14		; addr: CE34A68

l_code_CE34A6A:
lds.l @r15+,pr 		; addr: CE34A6A
rts 		; addr: CE34A6C
mov.l @r15+,r14		; addr: CE34A6E
;-------------------------------------------------------------------------------

#align4
data_CE34A70:
#data 0x4F222FE6		; addr: CE34A70
#data 0x430BD322		; addr: CE34A74
#data 0x600E6E43		; addr: CE34A78
#data 0x89384011		; addr: CE34A7C
#data 0x700184E6		; addr: CE34A80
#data 0xC72180E6		; addr: CE34A84
#data 0xE05CF308		; addr: CE34A88
#data 0xE068FE37		; addr: CE34A8C
#data 0xFE37F38D		; addr: CE34A90
#data 0xF308C71E		; addr: CE34A94
#data 0xFE37E060		; addr: CE34A98
#data 0xF308C71D		; addr: CE34A9C
#data 0xFE37E06C		; addr: CE34AA0
#data 0x03ED9028		; addr: CE34AA4
#data extern_8D042338		; addr: CE34AA8
#data 0xE05CE604		; addr: CE34AAC
#data 0xF34DF3E6		; addr: CE34AB0
#data 0xFE37		; addr: CE34AB4

data_CE34AB6:
#data 0xD318		; addr: CE34AB6
#data 0x430BE50F		; addr: CE34AB8
#data 0x901C64E3		; addr: CE34ABC
#data 0xE221E302		; addr: CE34AC0
#data 0x04EE911A		; addr: CE34AC4
#data 0xE60070EC		; addr: CE34AC8
#data 0x704204E6		; addr: CE34ACC
#data 0x70AB0434		; addr: CE34AD0
#data 0x70310424		; addr: CE34AD4
#data 0x314C00EC		; addr: CE34AD8
#data 0x6563D30F		; addr: CE34ADC
#data 0x2100CA01		; addr: CE34AE0
#data 0x64E3430B		; addr: CE34AE4
#data 0xD20D4F26		; addr: CE34AE8
#data 0x422B64E3		; addr: CE34AEC
#data 0x6EF6		; addr: CE34AF0

data_CE34AF2:
#data 0x4F26		; addr: CE34AF2
#data 0x6EF6000B		; addr: CE34AF4
;-------------------------------------------------------------------------------
#data 0x01C80130		; addr: CE34AF8
#data 0x000001D2		; addr: CE34AFC

#align4
ptr_CE34B00_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE34B00

ptr_CE34B04_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2		; addr: CE34B04

ptr_CE34B08_to_fn_extern_8C052DAC:
#data fn_extern_8C052DAC		; addr: CE34B08
#data 0x41200000		; addr: CE34B0C
#data 0x41AB6DB6		; addr: CE34B10
#data 0xBF892492		; addr: CE34B14
#data fn_extern_8C034E8C		; addr: CE34B18
#data fn_extern_8C02FEC4		; addr: CE34B1C
#data fn_extern_8C0423FC		; addr: CE34B20

#align4
data_CE34B24:
#data 0x2FD62FE6		; addr: CE34B24
#data 0xD3384F22		; addr: CE34B28
#data 0x6E43430B		; addr: CE34B2C
#data 0xF0E6E05C		; addr: CE34B30
#data 0xF3E6E034		; addr: CE34B34
#data 0x31ECE168		; addr: CE34B38
#data 0xFE37F300		; addr: CE34B3C
#data 0xF2E6E05C		; addr: CE34B40
#data 0xE160F318		; addr: CE34B44
#data 0xF23031EC		; addr: CE34B48
#data 0xE038FE27		; addr: CE34B4C
#data 0xF318F2E6		; addr: CE34B50
#data 0x31ECE16C		; addr: CE34B54
#data 0xFE27F230		; addr: CE34B58
#data 0xF2E6E060		; addr: CE34B5C
#data 0xF230F318		; addr: CE34B60
#data 0xFE27F38D		; addr: CE34B64
#data 0xF4E6E05C		; addr: CE34B68
#data 0x8B01F435		; addr: CE34B6C
#data 0x8905F305		; addr: CE34B70

#align4
data_CE34B74:
#data 0xF345F38D		; addr: CE34B74
#data 0xF38D8B06		; addr: CE34B78
#data 0x8B03F035		; addr: CE34B7C

#align4
data_CE34B80:
#data 0xFE47F48D		; addr: CE34B80
#data 0xFE47E068		; addr: CE34B84

#align4
data_CE34B88:
#data 0x03EC903C		; addr: CE34B88
#data extern_8D052338		; addr: CE34B8C
#data 0xD31FED00		; addr: CE34B90
#data 0x0ED4E516		; addr: CE34B94
#data 0x64E3430B		; addr: CE34B98

#align4
data_CE34B9C:
#data 0x420BD21D		; addr: CE34B9C
#data 0x200864E3		; addr: CE34BA0
#data 0x902E8919		; addr: CE34BA4
#data 0x222802EC		; addr: CE34BA8
#data 0x902B8B08		; addr: CE34BAC
#data 0x233803EC		; addr: CE34BB0
#data 0x0ED48911		; addr: CE34BB4
#data 0xE3017001		; addr: CE34BB8
#data 0x0E34A00D		; addr: CE34BBC

#align4
data_CE34BC0:
#data 0x01EC9022		; addr: CE34BC0
#data 0x89082118		; addr: CE34BC4
#data 0x70010ED4		; addr: CE34BC8
#data 0x880100EC		; addr: CE34BCC
#data 0x901A8903		; addr: CE34BD0
#data 0x72FF02EC		; addr: CE34BD4
#data 0x0E24		; addr: CE34BD8

data_CE34BDA:
#data 0xD30F		; addr: CE34BDA
#data 0x64E3430B		; addr: CE34BDC
#data 0x2008600C		; addr: CE34BE0
#data 0x84E6890A		; addr: CE34BE4
#data 0xD30C64E3		; addr: CE34BE8
#data 0x7001E603		; addr: CE34BEC
#data 0xE50F80E6		; addr: CE34BF0
#data 0x6DF64F26		; addr: CE34BF4
#data 0x6EF6432B		; addr: CE34BF8

#align4
data_CE34BFC:
#data 0x6DF64F26		; addr: CE34BFC
#data 0x6EF6000B		; addr: CE34C00
;-------------------------------------------------------------------------------
#data 0x0525014B		; addr: CE34C04
#data 0x01420141		; addr: CE34C08
#data fn_extern_8C034DEE		; addr: CE34C0C
#data fn_extern_8C04223A		; addr: CE34C10
#data extern_8C055D2E		; addr: CE34C14
#data fn_extern_8C052CE2		; addr: CE34C18
#data fn_extern_8C034E8C		; addr: CE34C1C

#align4
data_CE34C20:
#data 0x4F222FE6		; addr: CE34C20
#data 0x939D7FFC		; addr: CE34C24
#data 0x33EC6E43		; addr: CE34C28
#data 0xD34F2F32		; addr: CE34C2C
#data 0x64E3430B		; addr: CE34C30
#data 0x02EC9097		; addr: CE34C34
#data 0x8B1B2228		; addr: CE34C38
#data 0x31ECE15C		; addr: CE34C3C
#data 0xF318E034		; addr: CE34C40
#data 0xE168F2E6		; addr: CE34C44
#data 0xF23031EC		; addr: CE34C48
#data 0xE05CFE27		; addr: CE34C4C
#data 0xF318F2E6		; addr: CE34C50
#data 0x31ECE160		; addr: CE34C54
#data 0xFE27F230		; addr: CE34C58
#data 0xF2E6E038		; addr: CE34C5C
#data 0xE16CF318		; addr: CE34C60
#data 0xF23031EC		; addr: CE34C64
#data 0xE060FE27		; addr: CE34C68
#data 0xF318F2E6		; addr: CE34C6C
#data 0xFE27F230		; addr: CE34C70

#align4
data_CE34C74:
#data 0xF38DE060		; addr: CE34C74
#data 0xF325F2E6		; addr: CE34C78
#data 0xE06C8B13		; addr: CE34C7C
#data 0xE068FE37		; addr: CE34C80
#data 0xC73AFE37		; addr: CE34C84
#data 0xE05CF308		; addr: CE34C88
#data 0xC739FE37		; addr: CE34C8C
#data 0xE060F308		; addr: CE34C90
#data 0x9067FE37		; addr: CE34C94
#data 0x233803ED		; addr: CE34C98
#data 0xE05C8B03		; addr: CE34C9C
#data 0xF34DF3E6		; addr: CE34CA0
#data 0xFE37		; addr: CE34CA4

data_CE34CA6:
#data 0x85EE		; addr: CE34CA6
#data 0x81EE70FF		; addr: CE34CA8
#data 0x2008600F		; addr: CE34CAC
#data 0x84E68B2E		; addr: CE34CB0
#data 0x80E67001		; addr: CE34CB4
#data 0xF308C72F		; addr: CE34CB8
#data 0xFE37E05C		; addr: CE34CBC
#data 0xF308C72E		; addr: CE34CC0
#data 0xFE37E068		; addr: CE34CC4
#data 0xF308C72D		; addr: CE34CC8
#data 0xFE37E060		; addr: CE34CCC
#data 0xF308C72C		; addr: CE34CD0
#data 0xFE37E06C		; addr: CE34CD4
#data 0x03ED9046		; addr: CE34CD8
#data 0x89072338		; addr: CE34CDC
#data 0xF3E6E05C		; addr: CE34CE0
#data 0xFE37F34D		; addr: CE34CE4
#data 0xF3E6E068		; addr: CE34CE8
#data 0xFE37F34D		; addr: CE34CEC

#align4
data_CE34CF0:
#data 0xE01C63F2		; addr: CE34CF0
#data 0x0324E200		; addr: CE34CF4
#data 0xD323E52B		; addr: CE34CF8
#data 0x64E3430B		; addr: CE34CFC
#data 0xE50F64E3		; addr: CE34D00
#data 0x7F04E602		; addr: CE34D04
#data 0xD2204F26		; addr: CE34D08
#data 0x6EF6422B		; addr: CE34D0C

#align4
data_CE34D10:
#data 0x4F267F04		; addr: CE34D10
#data 0x6EF6000B		; addr: CE34D14
;-------------------------------------------------------------------------------

#align4
data_CE34D18:
#data 0x70018446		; addr: CE34D18
#data 0xC71C8046		; addr: CE34D1C
#data 0xE05CF308		; addr: CE34D20
#data 0xE068F437		; addr: CE34D24
#data 0xF437F38D		; addr: CE34D28
#data 0xF308C719		; addr: CE34D2C
#data 0xF437E060		; addr: CE34D30
#data 0xF308C718		; addr: CE34D34
#data 0xF437E06C		; addr: CE34D38
#data 0x034D9014		; addr: CE34D3C
#data 0x8B032338		; addr: CE34D40
#data 0xF346E05C		; addr: CE34D44
#data 0xF437F34D		; addr: CE34D48

#align4
data_CE34D4C:
#data 0xAF67E05A		; addr: CE34D4C
#data 0x814E		; addr: CE34D50


f_code_CE34D52:
mov r4,r3		; addr: CE34D52
mov.l @(ptr_CE34D9C_to_ptr_CE356C4_to_data_CE34D18,pc),r1 ; r1 set to 0xCE356C4		; addr: CE34D54
mov.l r4,@-r15		; addr: CE34D56
mov.b @(0x06,r3),r0 		; addr: CE34D58
extu.b r0,r0		; addr: CE34D5A
shll2 r0		; addr: CE34D5C
mov.l @(r0,r1),r3		; addr: CE34D5E
jmp @r3		; addr: CE34D60
add 0x04,r15		; addr: CE34D62
#data 0x014102A4		; addr: CE34D64
#data 0x00000130		; addr: CE34D68
#data fn_extern_8C034DEE		; addr: CE34D6C
#data 0x3F555555		; addr: CE34D70
#data 0x3F892492		; addr: CE34D74
#data 0x40D55555		; addr: CE34D78
#data 0xBDD55555		; addr: CE34D7C
#data 0x414DB6DB		; addr: CE34D80
#data 0xBF092492		; addr: CE34D84
#data fn_extern_8C042008		; addr: CE34D88
#data fn_extern_8C034E8C		; addr: CE34D8C
#data 0x40555555		; addr: CE34D90
#data 0x41892492		; addr: CE34D94
#data 0xBE892492		; addr: CE34D98

#align4
ptr_CE34D9C_to_ptr_CE356C4_to_data_CE34D18:
#data ptr_CE356C4_to_data_CE34D18		; addr: CE34D9C


f_code_CE34DA0:
sts.l pr,@-r15		; addr: CE34DA0
add 0xFC,r15		; addr: CE34DA2
mov.l @(ptr_CE34EDC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34DA4
jsr @r3		; addr: CE34DA6
mov.l r4,@r15		; addr: CE34DA8
exts.b r0,r0		; addr: CE34DAA
cmp/pz r0		; addr: CE34DAC
bt l_code_CE34DBA		; addr: CE34DAE
mov.l @r15,r4		; addr: CE34DB0
add 0x04,r15		; addr: CE34DB2
mov.l @(ptr_CE34EE0_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE34DB4
jmp @r3		; addr: CE34DB6
lds.l @r15+,pr 		; addr: CE34DB8

l_code_CE34DBA:
add 0x04,r15		; addr: CE34DBA
lds.l @r15+,pr 		; addr: CE34DBC
rts 		; addr: CE34DBE
nop 		; addr: CE34DC0
;-------------------------------------------------------------------------------

f_code_CE34DC2:
mov.l r14,@-r15		; addr: CE34DC2
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE34DC4
mov r4,r14		; addr: CE34DC6
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34DC8
mov 0x34,r0 ; r0 set to 0x34		; addr: CE34DCA
mov.l @(ptr_CE34EDC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34DCC
sts.l pr,@-r15		; addr: CE34DCE
fmov.s @(r0,r14),fr2		; addr: CE34DD0
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE34DD2
mov 0x68,r1 ; r1 set to 0x68		; addr: CE34DD4
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34DD6
fadd fr3,fr2		; addr: CE34DD8
fmov.s fr2,@(r0,r14) 		; addr: CE34DDA
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE34DDC
fmov.s @r1,fr3		; addr: CE34DDE
mov 0x60,r1 ; r1 set to 0x60		; addr: CE34DE0
fmov.s @(r0,r14),fr2		; addr: CE34DE2
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34DE4
fadd fr3,fr2		; addr: CE34DE6
fmov.s fr2,@(r0,r14) 		; addr: CE34DE8
mov 0x38,r0 ; r0 set to 0x38		; addr: CE34DEA
fmov.s @(r0,r14),fr2		; addr: CE34DEC
fmov.s @r1,fr3		; addr: CE34DEE
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE34DF0
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34DF2
fadd fr3,fr2		; addr: CE34DF4
fmov.s fr2,@(r0,r14) 		; addr: CE34DF6
mov 0x60,r0 ; r0 set to 0x60		; addr: CE34DF8
fmov.s @(r0,r14),fr2		; addr: CE34DFA
fmov.s @r1,fr3		; addr: CE34DFC
fadd fr3,fr2		; addr: CE34DFE
fmov.s fr2,@(r0,r14) 		; addr: CE34E00
jsr @r3		; addr: CE34E02
mov r14,r4		; addr: CE34E04
mov.w @(data_CE34ED4,pc),r0 ; r0 set to 0x41C		; addr: CE34E06
fmov.s @(r0,r14),fr3		; addr: CE34E08
mov 0x38,r0 ; r0 set to 0x38		; addr: CE34E0A
fmov.s @(r0,r14),fr2		; addr: CE34E0C
fcmp/gt fr3,fr2		; addr: CE34E0E
bt l_code_CE34E2E		; addr: CE34E10
mov.w @(data_CE34ED4,pc),r0 ; r0 set to 0x41C		; addr: CE34E12
mov r14,r4		; addr: CE34E14
mov.l @(ptr_CE34EE4_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE34E16
mov 0x05,r6 ; r6 set to 0x05		; addr: CE34E18
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE34E1A
mov 0x38,r0 ; r0 set to 0x38		; addr: CE34E1C
mov 0x01,r5 ; r5 set to 0x01		; addr: CE34E1E
fmov.s fr3,@(r0,r14) 		; addr: CE34E20
mov.b @(0x06,r14),r0 		; addr: CE34E22
add 0x01,r0 ; r0 set to 0x39		; addr: CE34E24
mov.b r0,@(0x06,r14) 		; addr: CE34E26
lds.l @r15+,pr 		; addr: CE34E28
jmp @r3		; addr: CE34E2A
mov.l @r15+,r14		; addr: CE34E2C

l_code_CE34E2E:
lds.l @r15+,pr 		; addr: CE34E2E
rts 		; addr: CE34E30
mov.l @r15+,r14		; addr: CE34E32
;-------------------------------------------------------------------------------

#align4
data_CE34E34:
#data 0x4F222FE6		; addr: CE34E34
#data 0x430BD328		; addr: CE34E38
#data 0x600E6E43		; addr: CE34E3C
#data 0x89444011		; addr: CE34E40
#data 0xE60084E6		; addr: CE34E44
#data 0x6563D327		; addr: CE34E48
#data 0x80E67001		; addr: CE34E4C
#data 0xF3E69040		; addr: CE34E50
#data 0xFE37E038		; addr: CE34E54
#data 0x64E3430B		; addr: CE34E58
#data 0xE302903B		; addr: CE34E5C
#data 0x913AE222		; addr: CE34E60
#data 0x70EC04EE		; addr: CE34E64
#data 0x704204E6		; addr: CE34E68
#data 0x70AB0434		; addr: CE34E6C
#data 0x708F0424		; addr: CE34E70
#data 0x314C03EC		; addr: CE34E74
#data 0x0E34902E		; addr: CE34E78
#data 0x600C00EC		; addr: CE34E7C
#data 0x2101CA01		; addr: CE34E80
#data 0x034C9029		; addr: CE34E84
#data 0x04349026		; addr: CE34E88
#data 0xF308C717		; addr: CE34E8C
#data 0xFE37E05C		; addr: CE34E90
#data 0xF38DE068		; addr: CE34E94
#data 0xC715FE37		; addr: CE34E98
#data 0xE060F308		; addr: CE34E9C
#data 0xC714FE37		; addr: CE34EA0
#data 0xE06CF308		; addr: CE34EA4
#data 0x9016FE37		; addr: CE34EA8
#data 0x233803ED		; addr: CE34EAC
#data 0xE6028D04		; addr: CE34EB0
#data 0xF3E6E05C		; addr: CE34EB4
#data 0xFE37F34D		; addr: CE34EB8

#align4
data_CE34EBC:
#data 0xE501D309		; addr: CE34EBC
#data 0x64E3430B		; addr: CE34EC0
#data 0xD20C4F26		; addr: CE34EC4
#data 0x422B64E3		; addr: CE34EC8
#data 0x6EF6		; addr: CE34ECC

data_CE34ECE:
#data 0x4F26		; addr: CE34ECE
#data 0x6EF6000B		; addr: CE34ED0
;-------------------------------------------------------------------------------

data_CE34ED4:
#data 0x041C		; addr: CE34ED4
#data 0x01C8		; addr: CE34ED6
#data 0x013001D2		; addr: CE34ED8

#align4
ptr_CE34EDC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE34EDC

ptr_CE34EE0_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE34EE0

ptr_CE34EE4_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE34EE4
#data fn_extern_8C02FEC4		; addr: CE34EE8
#data 0x41200000		; addr: CE34EEC
#data 0x41892492		; addr: CE34EF0
#data 0xBF092492		; addr: CE34EF4
#data fn_extern_8C0423FC		; addr: CE34EF8

#align4
data_CE34EFC:
#data 0x4F222FE6		; addr: CE34EFC
#data 0x430BD34D		; addr: CE34F00
#data 0x90936E43		; addr: CE34F04
#data 0x222802EC		; addr: CE34F08
#data 0xE160890D		; addr: CE34F0C
#data 0xE03831EC		; addr: CE34F10
#data 0xF2E6F318		; addr: CE34F14
#data 0x31ECE16C		; addr: CE34F18
#data 0xFE27F230		; addr: CE34F1C
#data 0xF2E6E060		; addr: CE34F20
#data 0xF230F318		; addr: CE34F24
#data 0xFE27		; addr: CE34F28

data_CE34F2A:
#data 0x9082		; addr: CE34F2A
#data 0xE038F3E6		; addr: CE34F2C
#data 0xF235F2E6		; addr: CE34F30
#data 0x907C890D		; addr: CE34F34
#data 0xD34064E3		; addr: CE34F38
#data 0xF3E6E609		; addr: CE34F3C
#data 0xE50FE038		; addr: CE34F40
#data 0x84E6FE37		; addr: CE34F44
#data 0x80E67001		; addr: CE34F48
#data 0x432B4F26		; addr: CE34F4C
#data 0x6EF6		; addr: CE34F50

data_CE34F52:
#data 0x4F26		; addr: CE34F52
#data 0x6EF6000B		; addr: CE34F54
;-------------------------------------------------------------------------------

f_code_CE34F58:
mov.b @(0x06,r4),r0 		; addr: CE34F58
add 0x01,r0		; addr: CE34F5A
mov.b r0,@(0x06,r4) 		; addr: CE34F5C
mova @(data_CE35040,pc),r0  ; r0 set to 0xCE35040		; addr: CE34F5E
fmov.s @r0,fr3		; addr: CE34F60
mov 0x60,r0 ; r0 set to 0x60		; addr: CE34F62
fmov.s fr3,@(r0,r4) 		; addr: CE34F64
mova @(data_CE35044,pc),r0  ; r0 set to 0xCE35044		; addr: CE34F66
fmov.s @r0,fr3		; addr: CE34F68
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE34F6A
bra data_CE34EFC		; addr: CE34F6C
fmov.s fr3,@(r0,r4) 		; addr: CE34F6E

f_code_CE34F70:
mov r4,r3		; addr: CE34F70
mov.l @(ptr_CE35048_to_ptr_CE356D8_to_f_code_CE34F58,pc),r1 ; r1 set to 0xCE356D8		; addr: CE34F72
mov.l r4,@-r15		; addr: CE34F74
mov.b @(0x06,r3),r0 		; addr: CE34F76
extu.b r0,r0		; addr: CE34F78
shll2 r0		; addr: CE34F7A
mov.l @(r0,r1),r3		; addr: CE34F7C
jmp @r3		; addr: CE34F7E
add 0x04,r15		; addr: CE34F80

f_code_CE34F82:
mov.l r14,@-r15		; addr: CE34F82
sts.l pr,@-r15		; addr: CE34F84
mov.l @(ptr_CE35038_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34F86
jsr @r3		; addr: CE34F88
mov r4,r14		; addr: CE34F8A
exts.b r0,r0		; addr: CE34F8C
cmp/pz r0		; addr: CE34F8E
bt l_code_CE34FA6		; addr: CE34F90
mov.l @(ptr_CE3504C_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE34F92
mov 0x00,r6 ; r6 set to 0x00		; addr: CE34F94
mov r6,r5 ; r5 set to 0x00		; addr: CE34F96
jsr @r3		; addr: CE34F98
mov r14,r4		; addr: CE34F9A
lds.l @r15+,pr 		; addr: CE34F9C
mov.l @(ptr_CE35050_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE34F9E
mov r14,r4		; addr: CE34FA0
jmp @r2		; addr: CE34FA2
mov.l @r15+,r14		; addr: CE34FA4

l_code_CE34FA6:
lds.l @r15+,pr 		; addr: CE34FA6
rts 		; addr: CE34FA8
mov.l @r15+,r14		; addr: CE34FAA
;-------------------------------------------------------------------------------

f_code_CE34FAC:
mov.b @(0x06,r4),r0 		; addr: CE34FAC
mov 0x02,r6 ; r6 set to 0x02		; addr: CE34FAE
mov.l @(ptr_CE3503C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE34FB0
add 0x01,r0		; addr: CE34FB2
mov.b r0,@(0x06,r4) 		; addr: CE34FB4
jmp @r3		; addr: CE34FB6
mov 0x14,r5		; addr: CE34FB8

f_code_CE34FBA:
mov.l @(ptr_CE35038_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34FBA
jmp @r3		; addr: CE34FBC
nop 		; addr: CE34FBE

f_code_CE34FC0:
mov.l r14,@-r15		; addr: CE34FC0
sts.l pr,@-r15		; addr: CE34FC2
mov.l @(ptr_CE35038_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34FC4
jsr @r3		; addr: CE34FC6
mov r4,r14		; addr: CE34FC8
exts.b r0,r0		; addr: CE34FCA
cmp/pz r0		; addr: CE34FCC
bt l_code_CE34FDC		; addr: CE34FCE
mov.b @(0x06,r14),r0 		; addr: CE34FD0
add 0x01,r0		; addr: CE34FD2
mov.b r0,@(0x06,r14) 		; addr: CE34FD4
lds.l @r15+,pr 		; addr: CE34FD6
rts 		; addr: CE34FD8
mov.l @r15+,r14		; addr: CE34FDA
;-------------------------------------------------------------------------------

l_code_CE34FDC:
mov.w @(data_CE35034,pc),r0 ; r0 set to 0x14B		; addr: CE34FDC
mov.b @(r0,r14),r3		; addr: CE34FDE
tst r3,r3		; addr: CE34FE0
bt l_code_CE35012		; addr: CE34FE2
mov 0x00,r3 ; r3 set to 0x00		; addr: CE34FE4
mov.b r3,@(r0,r14) 		; addr: CE34FE6
mov.l @(ptr_CE35054_to_fn_extern_8C0BBB48,pc),r3 ; r3 set to 0x8C0BBB48		; addr: CE34FE8
jsr @r3		; addr: CE34FEA
mov r14,r4		; addr: CE34FEC
tst r0,r0		; addr: CE34FEE
bt/s l_code_CE34FFE		; addr: CE34FF0
mov r0,r5 ; r5 set to 0x14B		; addr: CE34FF2
lds.l @r15+,pr 		; addr: CE34FF4
mov.l @(ptr_CE35058_to_fn_extern_8C052618,pc),r3 ; r3 set to 0x8C052618		; addr: CE34FF6
mov r14,r4		; addr: CE34FF8
jmp @r3		; addr: CE34FFA
mov.l @r15+,r14		; addr: CE34FFC

l_code_CE34FFE:
mov.l @(ptr_CE3504C_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE34FFE
mov 0x00,r6 ; r6 set to 0x00		; addr: CE35000
mov r6,r5 ; r5 set to 0x00		; addr: CE35002
jsr @r3		; addr: CE35004
mov r14,r4		; addr: CE35006
lds.l @r15+,pr 		; addr: CE35008
mov.l @(ptr_CE35050_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE3500A
mov r14,r4		; addr: CE3500C
jmp @r2		; addr: CE3500E
mov.l @r15+,r14		; addr: CE35010

l_code_CE35012:
lds.l @r15+,pr 		; addr: CE35012
rts 		; addr: CE35014
mov.l @r15+,r14		; addr: CE35016
;-------------------------------------------------------------------------------

f_code_CE35018:
mov r4,r3		; addr: CE35018
mov.l @(ptr_CE3505C_to_ptr_CE356EC_to_f_code_CE34FC0,pc),r1 ; r1 set to 0xCE356EC		; addr: CE3501A
mov.l r4,@-r15		; addr: CE3501C
mov.b @(0x06,r3),r0 		; addr: CE3501E
extu.b r0,r0		; addr: CE35020
shll2 r0		; addr: CE35022
mov.l @(r0,r1),r3		; addr: CE35024
jmp @r3		; addr: CE35026
add 0x04,r15		; addr: CE35028

f_code_CE3502A:
mov.l @(ptr_CE35050_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE3502A
jmp @r3		; addr: CE3502C
nop 		; addr: CE3502E
#data 0x041C0140		; addr: CE35030

data_CE35034:
#data 0x014B		; addr: CE35034
#data 0x0000		; addr: CE35036

#align4
ptr_CE35038_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE35038

ptr_CE3503C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE3503C

data_CE35040:
#data 0xC1092492		; addr: CE35040

#align4
data_CE35044:
#data 0xBF892492		; addr: CE35044

#align4
ptr_CE35048_to_ptr_CE356D8_to_f_code_CE34F58:
#data ptr_CE356D8_to_f_code_CE34F58		; addr: CE35048

ptr_CE3504C_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE3504C

ptr_CE35050_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE35050

ptr_CE35054_to_fn_extern_8C0BBB48:
#data fn_extern_8C0BBB48		; addr: CE35054

ptr_CE35058_to_fn_extern_8C052618:
#data fn_extern_8C052618		; addr: CE35058

ptr_CE3505C_to_ptr_CE356EC_to_f_code_CE34FC0:
#data ptr_CE356EC_to_f_code_CE34FC0		; addr: CE3505C


f_code_CE35060:
mov.w @(data_CE3515E,pc),r0 ; r0 set to 0x1C8		; addr: CE35060
mov r4,r5		; addr: CE35062
mov.l r4,@-r15		; addr: CE35064
mov.l @(ptr_CE3516C_to_code_extern_8C04CC1C,pc),r3 ; r3 set to 0x8C04CC1C		; addr: CE35066
mov.l @(r0,r4),r4		; addr: CE35068
jmp @r3		; addr: CE3506A
add 0x04,r15		; addr: CE3506C

f_code_CE3506E:
mov.w @(data_CE3515E,pc),r0 ; r0 set to 0x1C8		; addr: CE3506E
mov.l r14,@-r15		; addr: CE35070
mov r4,r14		; addr: CE35072
mov.w @(data_CE35160,pc),r3 ; r3 set to 0x150		; addr: CE35074
mov.l @(r0,r14),r4		; addr: CE35076
add r4,r3 ; r3 ??? bc r4 is ???		; addr: CE35078
mov.b @(0x01,r3),r0 		; addr: CE3507A
tst r0,r0		; addr: CE3507C
bt l_code_CE350A0		; addr: CE3507E
mov.w @(data_CE35162,pc),r0 ; r0 set to 0x140		; addr: CE35080
mov.b @(r0,r4),r2		; addr: CE35082
tst r2,r2		; addr: CE35084
bt l_code_CE35094		; addr: CE35086
mov.w @(data_CE3515E,pc),r0 ; r0 set to 0x1C8		; addr: CE35088
mov r14,r5		; addr: CE3508A
mov.l @(ptr_CE3516C_to_code_extern_8C04CC1C,pc),r3 ; r3 set to 0x8C04CC1C		; addr: CE3508C
mov.l @(r0,r14),r4		; addr: CE3508E
jmp @r3		; addr: CE35090
mov.l @r15+,r14		; addr: CE35092

l_code_CE35094:
mov.w @(data_CE3515E,pc),r0 ; r0 set to 0x1C8		; addr: CE35094
mov r14,r5		; addr: CE35096
mov.l @(ptr_CE35170_to_code_extern_8C04CE3A,pc),r3 ; r3 set to 0x8C04CE3A		; addr: CE35098
mov.l @(r0,r14),r4		; addr: CE3509A
jmp @r3		; addr: CE3509C
mov.l @r15+,r14		; addr: CE3509E

l_code_CE350A0:
rts 		; addr: CE350A0
mov.l @r15+,r14		; addr: CE350A2
;-------------------------------------------------------------------------------

f_code_CE350A4:
mov.w @(data_CE3515E,pc),r0 ; r0 set to 0x1C8		; addr: CE350A4
mov.l r14,@-r15		; addr: CE350A6
mov r4,r14		; addr: CE350A8
mov.l @(r0,r14),r4		; addr: CE350AA
mov.w @(data_CE35162,pc),r0 ; r0 set to 0x140		; addr: CE350AC
mov.b @(r0,r4),r3		; addr: CE350AE
tst r3,r3		; addr: CE350B0
bf l_code_CE350C0		; addr: CE350B2
mov.w @(data_CE3515E,pc),r0 ; r0 set to 0x1C8		; addr: CE350B4
mov r14,r5		; addr: CE350B6
mov.l @(ptr_CE3516C_to_code_extern_8C04CC1C,pc),r3 ; r3 set to 0x8C04CC1C		; addr: CE350B8
mov.l @(r0,r14),r4		; addr: CE350BA
jmp @r3		; addr: CE350BC
mov.l @r15+,r14		; addr: CE350BE

l_code_CE350C0:
rts 		; addr: CE350C0
mov.l @r15+,r14		; addr: CE350C2
;-------------------------------------------------------------------------------

f_code_CE350C4:
rts 		; addr: CE350C4
nop 		; addr: CE350C6
;-------------------------------------------------------------------------------

f_code_CE350C8:
mov.w @(data_CE3515E,pc),r0 ; r0 set to 0x1C8		; addr: CE350C8
mov.l r14,@-r15		; addr: CE350CA
mov r4,r14		; addr: CE350CC
mov.l @(r0,r14),r4		; addr: CE350CE
mov.w @(data_CE35162,pc),r0 ; r0 set to 0x140		; addr: CE350D0
mov.b @(r0,r4),r3		; addr: CE350D2
tst r3,r3		; addr: CE350D4
bf l_code_CE350E4		; addr: CE350D6
mov.w @(data_CE3515E,pc),r0 ; r0 set to 0x1C8		; addr: CE350D8
mov r14,r5		; addr: CE350DA
mov.l @(ptr_CE3516C_to_code_extern_8C04CC1C,pc),r3 ; r3 set to 0x8C04CC1C		; addr: CE350DC
mov.l @(r0,r14),r4		; addr: CE350DE
jmp @r3		; addr: CE350E0
mov.l @r15+,r14		; addr: CE350E2

l_code_CE350E4:
mov.w @(data_CE3515E,pc),r0 ; r0 set to 0x1C8		; addr: CE350E4
mov r14,r5		; addr: CE350E6
mov.l @(ptr_CE35170_to_code_extern_8C04CE3A,pc),r3 ; r3 set to 0x8C04CE3A		; addr: CE350E8
mov.l @(r0,r14),r4		; addr: CE350EA
jmp @r3		; addr: CE350EC
mov.l @r15+,r14		; addr: CE350EE

f_code_CE350F0:
mov.l r4,@-r15		; addr: CE350F0
mov r4,r0		; addr: CE350F2
nop 		; addr: CE350F4
mov.w @(data_CE35164,pc),r1 ; r1 set to 0x1F7		; addr: CE350F6
mov.l @(ptr_CE35174_to_ptr_CE356FC_to_f_code_CE35060,pc),r2 ; r2 set to 0xCE356FC		; addr: CE350F8
mov.b @(r0,r1),r0		; addr: CE350FA
extu.b r0,r0		; addr: CE350FC
and 0x3F,r0 		; addr: CE350FE
shll2 r0		; addr: CE35100
mov.l @(r0,r2),r3		; addr: CE35102
jmp @r3		; addr: CE35104
add 0x04,r15		; addr: CE35106

f_code_CE35108:
mov 0x00,r0 ; r0 set to 0x00		; addr: CE35108
mov.b r0,@(0x05,r4) 		; addr: CE3510A
mov.b r0,@(0x07,r4) 		; addr: CE3510C
mov.b r0,@(0x06,r4) 		; addr: CE3510E
mov.w @(data_CE35166,pc),r0 ; r0 set to 0x4C9		; addr: CE35110
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???		; addr: CE35112
cmp/eq 0x00,r0 		; addr: CE35114
bt/s l_code_CE3512E		; addr: CE35116
mov 0x09,r5 ; r5 set to 0x09		; addr: CE35118
cmp/eq 0x01,r0 		; addr: CE3511A
bt l_code_CE35126		; addr: CE3511C
cmp/eq 0x02,r0 		; addr: CE3511E
bt l_code_CE3512E		; addr: CE35120
bra l_code_CE35132		; addr: CE35122
nop 		; addr: CE35124

l_code_CE35126:
mov.w @(data_CE35168,pc),r0 ; r0 set to 0x1E9		; addr: CE35126
mov 0x07,r2 ; r2 set to 0x07		; addr: CE35128
bra l_code_CE35132		; addr: CE3512A
mov.b r2,@(r0,r4) 		; addr: CE3512C

l_code_CE3512E:
mov.w @(data_CE35168,pc),r0 ; r0 set to 0x1E9		; addr: CE3512E
mov.b r5,@(r0,r4) 		; addr: CE35130

l_code_CE35132:
mov.l @(ptr_CE35178_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8		; addr: CE35132
jmp @r2		; addr: CE35134
mov 0x1D,r5		; addr: CE35136

f_code_CE35138:
mov 0x00,r0 ; r0 set to 0x00		; addr: CE35138
mov.b r0,@(0x05,r4) 		; addr: CE3513A
mov.b r0,@(0x07,r4) 		; addr: CE3513C
mov.b r0,@(0x06,r4) 		; addr: CE3513E
mov.w @(data_CE35166,pc),r0 ; r0 set to 0x4C9		; addr: CE35140
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???		; addr: CE35142
cmp/eq 0x00,r0 		; addr: CE35144
bt/s l_code_CE3517C		; addr: CE35146
mov 0x09,r5 ; r5 set to 0x09		; addr: CE35148
cmp/eq 0x01,r0 		; addr: CE3514A
bt l_code_CE35156		; addr: CE3514C
cmp/eq 0x02,r0 		; addr: CE3514E
bt l_code_CE3517C		; addr: CE35150
bra l_code_CE35180		; addr: CE35152
nop 		; addr: CE35154

l_code_CE35156:
mov.w @(data_CE35168,pc),r0 ; r0 set to 0x1E9		; addr: CE35156
mov 0x07,r2 ; r2 set to 0x07		; addr: CE35158
bra l_code_CE35180		; addr: CE3515A
mov.b r2,@(r0,r4) 		; addr: CE3515C

data_CE3515E:
#data 0x01C8		; addr: CE3515E

data_CE35160:
#data 0x0150		; addr: CE35160

data_CE35162:
#data 0x0140		; addr: CE35162

data_CE35164:
#data 0x01F7		; addr: CE35164

data_CE35166:
#data 0x04C9		; addr: CE35166

data_CE35168:
#data 0x01E9		; addr: CE35168
#data 0x0000		; addr: CE3516A

#align4
ptr_CE3516C_to_code_extern_8C04CC1C:
#data code_extern_8C04CC1C		; addr: CE3516C

ptr_CE35170_to_code_extern_8C04CE3A:
#data code_extern_8C04CE3A		; addr: CE35170

ptr_CE35174_to_ptr_CE356FC_to_f_code_CE35060:
#data ptr_CE356FC_to_f_code_CE35060		; addr: CE35174

ptr_CE35178_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8		; addr: CE35178


l_code_CE3517C:
mov.w @(data_CE35220,pc),r0 ; r0 set to 0x1E9		; addr: CE3517C
mov.b r5,@(r0,r4) 		; addr: CE3517E

l_code_CE35180:
mov.l @(ptr_CE3522C_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8		; addr: CE35180
jmp @r2		; addr: CE35182
mov 0x1D,r5		; addr: CE35184

f_code_CE35186:
mov 0x00,r0 ; r0 set to 0x00		; addr: CE35186
mov.b r0,@(0x05,r4) 		; addr: CE35188
mov.b r0,@(0x07,r4) 		; addr: CE3518A
mov.b r0,@(0x06,r4) 		; addr: CE3518C
mov.w @(data_CE35222,pc),r0 ; r0 set to 0x4C9		; addr: CE3518E
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???		; addr: CE35190
cmp/eq 0x00,r0 		; addr: CE35192
bt/s l_code_CE351A4		; addr: CE35194
mov 0x01,r5 ; r5 set to 0x01		; addr: CE35196
cmp/eq 0x01,r0 		; addr: CE35198
bt l_code_CE351AC		; addr: CE3519A
cmp/eq 0x02,r0 		; addr: CE3519C
bt data_CE351B2		; addr: CE3519E
bra l_code_CE351BA		; addr: CE351A0
nop 		; addr: CE351A2

l_code_CE351A4:
mov.w @(data_CE35220,pc),r0 ; r0 set to 0x1E9		; addr: CE351A4
mov 0x02,r3 ; r3 set to 0x02		; addr: CE351A6
bra l_code_CE351B6		; addr: CE351A8
mov.b r3,@(r0,r4) 		; addr: CE351AA

l_code_CE351AC:
mov.w @(data_CE35220,pc),r0 ; r0 set to 0x1E9		; addr: CE351AC
bra l_code_CE351B6		; addr: CE351AE
mov.b r5,@(r0,r4) 		; addr: CE351B0

data_CE351B2:
#data 0x9035		; addr: CE351B2
#data 0x0454		; addr: CE351B4


l_code_CE351B6:
mov.w @(data_CE35224,pc),r0 ; r0 set to 0x1A3		; addr: CE351B6
mov.b r5,@(r0,r4) 		; addr: CE351B8

l_code_CE351BA:
mov.l @(ptr_CE3522C_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8		; addr: CE351BA
jmp @r2		; addr: CE351BC
mov 0x15,r5		; addr: CE351BE

f_code_CE351C0:
mov 0x00,r0 ; r0 set to 0x00		; addr: CE351C0
mov.b r0,@(0x05,r4) 		; addr: CE351C2
mov 0x01,r6 ; r6 set to 0x01		; addr: CE351C4
mov.b r0,@(0x07,r4) 		; addr: CE351C6
mov.b r0,@(0x06,r4) 		; addr: CE351C8
mov.w @(data_CE35222,pc),r0 ; r0 set to 0x4C9		; addr: CE351CA
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???		; addr: CE351CC
cmp/eq 0x00,r0 		; addr: CE351CE
bt/s l_code_CE351E0		; addr: CE351D0
mov 0x02,r5 ; r5 set to 0x02		; addr: CE351D2
cmp/eq 0x01,r0 		; addr: CE351D4
bt l_code_CE351E6		; addr: CE351D6
cmp/eq 0x02,r0 		; addr: CE351D8
bt data_CE351EC		; addr: CE351DA
bra l_code_CE351F4		; addr: CE351DC
nop 		; addr: CE351DE

l_code_CE351E0:
mov.w @(data_CE35220,pc),r0 ; r0 set to 0x1E9		; addr: CE351E0
bra l_code_CE351F0		; addr: CE351E2
mov.b r5,@(r0,r4) 		; addr: CE351E4

l_code_CE351E6:
mov.w @(data_CE35220,pc),r0 ; r0 set to 0x1E9		; addr: CE351E6
bra l_code_CE351F0		; addr: CE351E8
mov.b r6,@(r0,r4) 		; addr: CE351EA

#align4
data_CE351EC:
#data 0x04549018		; addr: CE351EC


l_code_CE351F0:
mov.w @(data_CE35224,pc),r0 ; r0 set to 0x1A3		; addr: CE351F0
mov.b r6,@(r0,r4) 		; addr: CE351F2

l_code_CE351F4:
mov.l @(ptr_CE3522C_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8		; addr: CE351F4
jmp @r2		; addr: CE351F6
mov 0x15,r5		; addr: CE351F8

f_code_CE351FA:
mov.l r14,@-r15		; addr: CE351FA
sts.l pr,@-r15		; addr: CE351FC
add 0xF8,r15		; addr: CE351FE
mov.w @(data_CE35226,pc),r14 ; r14 set to 0x2A4		; addr: CE35200
mov 0x00,r5 ; r5 set to 0x00		; addr: CE35202
mov.w @(data_CE35228,pc),r6 ; r6 set to 0x80		; addr: CE35204
add r4,r14 ; r14 ??? bc r4 is ???		; addr: CE35206
mov.l @(ptr_CE35230_to_fn_extern_8C129728,pc),r3 ; r3 set to 0x8C129728		; addr: CE35208
mov.l r14,@r15		; addr: CE3520A
mov.b @(0x0C,r14),r0 		; addr: CE3520C
mov.b r0,@(0x04,r15) 		; addr: CE3520E
jsr @r3		; addr: CE35210
mov.l @r15,r4		; addr: CE35212
mov.b @(0x04,r15),r0 		; addr: CE35214
mov.b r0,@(0x0C,r14) 		; addr: CE35216
add 0x08,r15		; addr: CE35218
lds.l @r15+,pr 		; addr: CE3521A
rts 		; addr: CE3521C
mov.l @r15+,r14		; addr: CE3521E
;-------------------------------------------------------------------------------

data_CE35220:
#data 0x01E9		; addr: CE35220

data_CE35222:
#data 0x04C9		; addr: CE35222

data_CE35224:
#data 0x01A3		; addr: CE35224

data_CE35226:
#data 0x02A4		; addr: CE35226

data_CE35228:
#data 0x0080		; addr: CE35228
#data 0x0000		; addr: CE3522A

#align4
ptr_CE3522C_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8		; addr: CE3522C

ptr_CE35230_to_fn_extern_8C129728:
#data fn_extern_8C129728		; addr: CE35230

data_CE35234:
#data 0x00000042		; addr: CE35234
#data 0x0000004B		; addr: CE35238
#data 0x00000054		; addr: CE3523C
#data 0x0000005D		; addr: CE35240
#data 0x00000066		; addr: CE35244
#data 0x0000006F		; addr: CE35248

#align4
data_CE3524C:
#data 0x00000030		; addr: CE3524C
#data 0x00000033		; addr: CE35250
#data 0x00000036		; addr: CE35254
#data 0x00000039		; addr: CE35258
#data 0x0000003C		; addr: CE3525C
#data 0x0000003F		; addr: CE35260

#align4
data_CE35264:
#data 0x00000078		; addr: CE35264
#data 0x00000079		; addr: CE35268
#data 0x0000007A		; addr: CE3526C
#data 0x0000007B		; addr: CE35270
#data 0x0000007C		; addr: CE35274
#data 0x0000007D		; addr: CE35278

#align4
data_CE3527C:
#data 0x02000201		; addr: CE3527C

#align4
data_CE35280:
#data 0x020102FF		; addr: CE35280

#align4
data_CE35284:
#data 0x02FFFFFF		; addr: CE35284

#align4
data_CE35288:
#data 0x02010201		; addr: CE35288

#align4
data_CE3528C:
#data 0x02FF02FF		; addr: CE3528C

#align4
data_CE35290:
#data 0xFFFFFFFF		; addr: CE35290

#align4
data_CE35294:
#data 0x02000201		; addr: CE35294

#align4
data_CE35298:
#data 0x020102FF		; addr: CE35298

#align4
data_CE3529C:
#data 0x02FFFFFF		; addr: CE3529C

#align4
data_CE352A0:
#data 0x02010201		; addr: CE352A0

#align4
data_CE352A4:
#data 0x02FF02FF		; addr: CE352A4

#align4
data_CE352A8:
#data 0xFFFFFFFF		; addr: CE352A8

#align4
data_CE352AC:
#data 0x02000201		; addr: CE352AC

#align4
data_CE352B0:
#data 0x020102FF		; addr: CE352B0

#align4
data_CE352B4:
#data 0x02FFFFFF		; addr: CE352B4

#align4
data_CE352B8:
#data 0x02010201		; addr: CE352B8

#align4
data_CE352BC:
#data 0x02FF02FF		; addr: CE352BC

#align4
data_CE352C0:
#data 0xFFFFFFFF		; addr: CE352C0

#align4
data_CE352C4:
#data 0x10000003		; addr: CE352C4
#data 0x00000001		; addr: CE352C8
#data 0x18001000		; addr: CE352CC
#data 0x03000800		; addr: CE352D0

#align4
data_CE352D4:
#data 0x20000003		; addr: CE352D4
#data 0x00000001		; addr: CE352D8
#data 0x18001000		; addr: CE352DC
#data 0x03000800		; addr: CE352E0

#align4
data_CE352E4:
#data 0x10000003		; addr: CE352E4
#data 0x00000002		; addr: CE352E8
#data 0x10000800		; addr: CE352EC
#data 0x03001800		; addr: CE352F0

#align4
data_CE352F4:
#data 0x20000003		; addr: CE352F4
#data 0x00000002		; addr: CE352F8
#data 0x10000800		; addr: CE352FC
#data 0x03001800		; addr: CE35300

#align4
data_CE35304:
#data 0x10000005		; addr: CE35304
#data 0x00000003		; addr: CE35308
#data 0x18000800		; addr: CE3530C
#data 0x14001000		; addr: CE35310

#align4
data_CE35314:
#data 0x03000400		; addr: CE35314

#align4
data_CE35318:
#data 0x91000003		; addr: CE35318
#data 0x00000007		; addr: CE3531C
#data 0x18001000		; addr: CE35320
#data 0x03000800		; addr: CE35324

#align4
data_CE35328:
#data 0x91000003		; addr: CE35328
#data 0x00000009		; addr: CE3532C
#data 0x10000800		; addr: CE35330
#data 0x03001800		; addr: CE35334

#align4
data_CE35338:
#data 0x81000003		; addr: CE35338
#data 0x00000006		; addr: CE3533C
#data 0x18001000		; addr: CE35340
#data 0x00600800		; addr: CE35344

#align4
data_CE35348:
#data 0x20000003		; addr: CE35348
#data 0x0000000F		; addr: CE3534C
#data 0x14001000		; addr: CE35350
#data 0x00600400		; addr: CE35354

#align4
ptr_CE35358_to_data_CE30642:
#data data_CE30642		; addr: CE35358

ptr_CE3535C_to_f_code_CE30024:
#data f_code_CE30024		; addr: CE3535C

ptr_CE35360_to_f_code_CE30DCE:
#data f_code_CE30DCE		; addr: CE35360

ptr_CE35364_to_f_code_CE31370:
#data f_code_CE31370		; addr: CE35364

ptr_CE35368_to_f_code_CE31484:
#data f_code_CE31484		; addr: CE35368

ptr_CE3536C_to_f_code_CE31834:
#data f_code_CE31834		; addr: CE3536C

ptr_CE35370_to_f_code_CE319B4:
#data f_code_CE319B4		; addr: CE35370

ptr_CE35374_to_f_code_CE31B34:
#data f_code_CE31B34		; addr: CE35374

ptr_CE35378_to_f_code_CE31E7A:
#data f_code_CE31E7A		; addr: CE35378

ptr_CE3537C_to_f_code_CE346F6:
#data f_code_CE346F6		; addr: CE3537C

ptr_CE35380_to_f_code_CE3477C:
#data f_code_CE3477C		; addr: CE35380

ptr_CE35384_to_f_code_CE3494C:
#data f_code_CE3494C		; addr: CE35384

ptr_CE35388_to_f_code_CE350F0:
#data f_code_CE350F0		; addr: CE35388

ptr_CE3538C_to_data_CE30614:
#data data_CE30614		; addr: CE3538C

ptr_CE35390_to_f_code_CE34598:
#data f_code_CE34598		; addr: CE35390

ptr_CE35394_to_data_CE313B4:
#data data_CE313B4		; addr: CE35394

ptr_CE35398_to_f_code_CE35108:
#data f_code_CE35108		; addr: CE35398

ptr_CE3539C_to_f_code_CE35138:
#data f_code_CE35138		; addr: CE3539C

ptr_CE353A0_to_f_code_CE35186:
#data f_code_CE35186		; addr: CE353A0

ptr_CE353A4_to_f_code_CE351C0:
#data f_code_CE351C0		; addr: CE353A4
#data 0x00000000		; addr: CE353A8

#align4
ptr_CE353AC_to_f_code_CE31644:
#data f_code_CE31644		; addr: CE353AC
#data 0x00000000		; addr: CE353B0

#align4
ptr_CE353B4_to_f_code_CE351FA:
#data f_code_CE351FA		; addr: CE353B4
#data 0x00000000		; addr: CE353B8
#data 0x00000000		; addr: CE353BC
#data 0x00000000		; addr: CE353C0
#data 0x00000000		; addr: CE353C4

#align4
ptr_CE353C8_to_f_code_CE30A50:
#data f_code_CE30A50		; addr: CE353C8

ptr_CE353CC_to_data_CE30D78:
#data data_CE30D78		; addr: CE353CC

ptr_CE353D0_to_data_CE30D3C:
#data data_CE30D3C		; addr: CE353D0

ptr_CE353D4_to_f_code_CE30DCA:
#data f_code_CE30DCA		; addr: CE353D4

ptr_CE353D8_to_f_code_CE31072:
#data f_code_CE31072		; addr: CE353D8

ptr_CE353DC_to_f_code_CE3131E:
#data f_code_CE3131E		; addr: CE353DC

ptr_CE353E0_to_f_code_CE31348:
#data f_code_CE31348		; addr: CE353E0

ptr_CE353E4_to_f_code_CE31360:
#data f_code_CE31360		; addr: CE353E4

ptr_CE353E8_to_f_code_CE31496:
#data f_code_CE31496		; addr: CE353E8

ptr_CE353EC_to_f_code_CE3153E:
#data f_code_CE3153E		; addr: CE353EC

ptr_CE353F0_to_f_code_CE315BC:
#data f_code_CE315BC		; addr: CE353F0

ptr_CE353F4_to_f_code_CE31656:
#data f_code_CE31656		; addr: CE353F4

ptr_CE353F8_to_data_CE316A8:
#data data_CE316A8		; addr: CE353F8

ptr_CE353FC_to_data_CE317A0:
#data data_CE317A0		; addr: CE353FC

data_CE35400:
#data 0xFFF68000		; addr: CE35400
#data 0x00000000		; addr: CE35404
#data 0x00000000		; addr: CE35408
#data 0xFFFFB000		; addr: CE3540C
#data 0xFFFC0000		; addr: CE35410
#data 0xFFFFE000		; addr: CE35414
#data 0xFFF38000		; addr: CE35418
#data 0x0000A800		; addr: CE3541C
#data 0xFFF90000		; addr: CE35420
#data 0x00001000		; addr: CE35424
#data 0x000B8000		; addr: CE35428
#data 0xFFFF5000		; addr: CE3542C

#align4
ptr_CE35430_to_f_code_CE31846:
#data f_code_CE31846		; addr: CE35430

ptr_CE35434_to_f_code_CE31888:
#data f_code_CE31888		; addr: CE35434

ptr_CE35438_to_f_code_CE3192C:
#data f_code_CE3192C		; addr: CE35438

ptr_CE3543C_to_f_code_CE319C6:
#data f_code_CE319C6		; addr: CE3543C

ptr_CE35440_to_f_code_CE31A04:
#data f_code_CE31A04		; addr: CE35440

ptr_CE35444_to_f_code_CE31A5C:
#data f_code_CE31A5C		; addr: CE35444

ptr_CE35448_to_f_code_CE31AD0:
#data f_code_CE31AD0		; addr: CE35448

ptr_CE3544C_to_f_code_CE31C84:
#data f_code_CE31C84		; addr: CE3544C

ptr_CE35450_to_f_code_CE31E66:
#data f_code_CE31E66		; addr: CE35450

data_CE35454:
#data 0x07000700		; addr: CE35454
#data 0x07000700		; addr: CE35458
#data 0x08010801		; addr: CE3545C
#data 0x08020802		; addr: CE35460
#data 0x08030803		; addr: CE35464
#data 0x08040804		; addr: CE35468
#data 0x08050805		; addr: CE3546C
#data 0x08050805		; addr: CE35470

#align4
ptr_CE35474_to_f_code_CE31B46:
#data f_code_CE31B46		; addr: CE35474

ptr_CE35478_to_f_code_CE31C74:
#data f_code_CE31C74		; addr: CE35478

ptr_CE3547C_to_f_code_CE31C64:
#data f_code_CE31C64		; addr: CE3547C

ptr_CE35480_to_f_code_CE31C74:
#data f_code_CE31C74		; addr: CE35480

ptr_CE35484_to_f_code_CE31C74:
#data f_code_CE31C74		; addr: CE35484

ptr_CE35488_to_data_CE31CCC:
#data data_CE31CCC		; addr: CE35488

ptr_CE3548C_to_data_CE31D10:
#data data_CE31D10		; addr: CE3548C

ptr_CE35490_to_f_code_CE31D46:
#data f_code_CE31D46		; addr: CE35490

ptr_CE35494_to_f_code_CE31D84:
#data f_code_CE31D84		; addr: CE35494

ptr_CE35498_to_f_code_CE31D84:
#data f_code_CE31D84		; addr: CE35498

ptr_CE3549C_to_f_code_CE31D84:
#data f_code_CE31D84		; addr: CE3549C

ptr_CE354A0_to_f_code_CE31D84:
#data f_code_CE31D84		; addr: CE354A0

ptr_CE354A4_to_f_code_CE31DDC:
#data f_code_CE31DDC		; addr: CE354A4

ptr_CE354A8_to_f_code_CE31E1C:
#data f_code_CE31E1C		; addr: CE354A8

ptr_CE354AC_to_f_code_CE31E30:
#data f_code_CE31E30		; addr: CE354AC

ptr_CE354B0_to_f_code_CE31E30:
#data f_code_CE31E30		; addr: CE354B0

ptr_CE354B4_to_f_code_CE31E30:
#data f_code_CE31E30		; addr: CE354B4

ptr_CE354B8_to_f_code_CE31E30:
#data f_code_CE31E30		; addr: CE354B8

ptr_CE354BC_to_f_code_CE31EC0:
#data f_code_CE31EC0		; addr: CE354BC

ptr_CE354C0_to_f_code_CE31EC0:
#data f_code_CE31EC0		; addr: CE354C0

ptr_CE354C4_to_f_code_CE3222A:
#data f_code_CE3222A		; addr: CE354C4

ptr_CE354C8_to_f_code_CE327B2:
#data f_code_CE327B2		; addr: CE354C8

ptr_CE354CC_to_f_code_CE31EC0:
#data f_code_CE31EC0		; addr: CE354CC

ptr_CE354D0_to_f_code_CE31EC0:
#data f_code_CE31EC0		; addr: CE354D0

ptr_CE354D4_to_f_code_CE33010:
#data f_code_CE33010		; addr: CE354D4

ptr_CE354D8_to_f_code_CE328C4:
#data f_code_CE328C4		; addr: CE354D8

ptr_CE354DC_to_f_code_CE32BCA:
#data f_code_CE32BCA		; addr: CE354DC

ptr_CE354E0_to_f_code_CE32DDA:
#data f_code_CE32DDA		; addr: CE354E0

ptr_CE354E4_to_f_code_CE31EC0:
#data f_code_CE31EC0		; addr: CE354E4

ptr_CE354E8_to_f_code_CE31EC0:
#data f_code_CE31EC0		; addr: CE354E8

ptr_CE354EC_to_f_code_CE31EC0:
#data f_code_CE31EC0		; addr: CE354EC

ptr_CE354F0_to_f_code_CE31EC0:
#data f_code_CE31EC0		; addr: CE354F0

ptr_CE354F4_to_f_code_CE342FE:
#data f_code_CE342FE		; addr: CE354F4

ptr_CE354F8_to_f_code_CE34586:
#data f_code_CE34586		; addr: CE354F8

ptr_CE354FC_to_f_code_CE31ED2:
#data f_code_CE31ED2		; addr: CE354FC

ptr_CE35500_to_f_code_CE31FDA:
#data f_code_CE31FDA		; addr: CE35500

ptr_CE35504_to_f_code_CE31F28:
#data f_code_CE31F28		; addr: CE35504

ptr_CE35508_to_data_CE31F82:
#data data_CE31F82		; addr: CE35508

ptr_CE3550C_to_f_code_CE31FF6:
#data f_code_CE31FF6		; addr: CE3550C

ptr_CE35510_to_data_CE320B0:
#data data_CE320B0		; addr: CE35510

ptr_CE35514_to_f_code_CE321C8:
#data f_code_CE321C8		; addr: CE35514

ptr_CE35518_to_f_code_CE3223C:
#data f_code_CE3223C		; addr: CE35518

ptr_CE3551C_to_f_code_CE32526:
#data f_code_CE32526		; addr: CE3551C

ptr_CE35520_to_f_code_CE3224E:
#data f_code_CE3224E		; addr: CE35520

ptr_CE35524_to_data_CE32376:
#data data_CE32376		; addr: CE35524

ptr_CE35528_to_f_code_CE32474:
#data f_code_CE32474		; addr: CE35528

ptr_CE3552C_to_f_code_CE324F2:
#data f_code_CE324F2		; addr: CE3552C

data_CE35530:
#data 0x40F00000		; addr: CE35530


f_code_CE35534:
mov.l @(0x14,r5),r5		; addr: CE35534
bsr data_CE352E4		; addr: CE35536
mov.l @r11+,r13		; addr: CE35538
jmp @r1		; addr: CE3553A
mov.w @(loc_CE355D2,pc),r2		; addr: CE3553C
#data 0xBF3C		; addr: CE3553E
#data 0x4192AAAA		; addr: CE35540
#data 0xBF12AAAA		; addr: CE35544
#data 0x41DEDB6D		; addr: CE35548
#data 0xBF5EDB6D		; addr: CE3554C

#align4
ptr_CE35550_to_f_code_CE32538:
#data f_code_CE32538		; addr: CE35550

ptr_CE35554_to_data_CE3265A:
#data data_CE3265A		; addr: CE35554

ptr_CE35558_to_f_code_CE32700:
#data f_code_CE32700		; addr: CE35558

ptr_CE3555C_to_f_code_CE3277E:
#data f_code_CE3277E		; addr: CE3555C

data_CE35560:
#data 0x40F00000		; addr: CE35560


f_code_CE35564:
mov.l @(0x14,r5),r5		; addr: CE35564
bsr data_CE35314		; addr: CE35566
mov.l @r11+,r13		; addr: CE35568
jmp @r1		; addr: CE3556A
mov.w @(loc_CE35602,pc),r2		; addr: CE3556C
#data 0xBF3C		; addr: CE3556E
#data 0x41200000		; addr: CE35570
#data 0xBE555555		; addr: CE35574
#data 0x41AB6DB6		; addr: CE35578
#data 0xBF4DB6DB		; addr: CE3557C

#align4
ptr_CE35580_to_f_code_CE327C4:
#data f_code_CE327C4		; addr: CE35580

ptr_CE35584_to_f_code_CE32804:
#data f_code_CE32804		; addr: CE35584

ptr_CE35588_to_f_code_CE32890:
#data f_code_CE32890		; addr: CE35588

ptr_CE3558C_to_data_CE328D6:
#data data_CE328D6		; addr: CE3558C

ptr_CE35590_to_f_code_CE3294A:
#data f_code_CE3294A		; addr: CE35590

ptr_CE35594_to_data_CE32A10:
#data data_CE32A10		; addr: CE35594

ptr_CE35598_to_data_CE32AD8:
#data data_CE32AD8		; addr: CE35598

ptr_CE3559C_to_f_code_CE32B94:
#data f_code_CE32B94		; addr: CE3559C

ptr_CE355A0_to_f_code_CE32C0C:
#data f_code_CE32C0C		; addr: CE355A0

ptr_CE355A4_to_f_code_CE32C72:
#data f_code_CE32C72		; addr: CE355A4

ptr_CE355A8_to_f_code_CE32DC8:
#data f_code_CE32DC8		; addr: CE355A8

ptr_CE355AC_to_f_code_CE32D0E:
#data f_code_CE32D0E		; addr: CE355AC

ptr_CE355B0_to_f_code_CE32D94:
#data f_code_CE32D94		; addr: CE355B0

ptr_CE355B4_to_data_CE32DF6:
#data data_CE32DF6		; addr: CE355B4

ptr_CE355B8_to_f_code_CE32E72:
#data f_code_CE32E72		; addr: CE355B8

ptr_CE355BC_to_f_code_CE32F1C:
#data f_code_CE32F1C		; addr: CE355BC

ptr_CE355C0_to_f_code_CE32F96:
#data f_code_CE32F96		; addr: CE355C0

ptr_CE355C4_to_f_code_CE32FDC:
#data f_code_CE32FDC		; addr: CE355C4

ptr_CE355C8_to_f_code_CE33A12:
#data f_code_CE33A12		; addr: CE355C8

ptr_CE355CC_to_f_code_CE342EC:
#data f_code_CE342EC		; addr: CE355CC

ptr_CE355D0_to_data_CE33104:
#data 0x3104		; addr: CE355D0

loc_CE355D2:
#data 0x0CE3		; addr: CE355D2

#align4
ptr_CE355D4_to_f_code_CE33024:
#data f_code_CE33024		; addr: CE355D4

ptr_CE355D8_to_f_code_CE331C4:
#data f_code_CE331C4		; addr: CE355D8

ptr_CE355DC_to_f_code_CE3334C:
#data f_code_CE3334C		; addr: CE355DC

data_CE355E0:
#data 0x4000D000		; addr: CE355E0
#data 0x20009000		; addr: CE355E4
#data 0x2000D000		; addr: CE355E8
#data 0x40009000		; addr: CE355EC
#data 0x4000E000		; addr: CE355F0
#data 0x20009000		; addr: CE355F4
#data 0x20000000		; addr: CE355F8
#data 0x4000C000		; addr: CE355FC
#data 0xF000		; addr: CE35600

loc_CE35602:
#data 0x2000		; addr: CE35602
#data 0x40004000		; addr: CE35604
#data 0x40000000		; addr: CE35608
#data 0x20007000		; addr: CE3560C

#align4
ptr_CE35610_to_f_code_CE33508:
#data f_code_CE33508		; addr: CE35610

ptr_CE35614_to_f_code_CE3356C:
#data f_code_CE3356C		; addr: CE35614

ptr_CE35618_to_data_CE33674:
#data data_CE33674		; addr: CE35618

ptr_CE3561C_to_f_code_CE336D4:
#data f_code_CE336D4		; addr: CE3561C

ptr_CE35620_to_f_code_CE33726:
#data f_code_CE33726		; addr: CE35620

ptr_CE35624_to_data_CE3380E:
#data data_CE3380E		; addr: CE35624

ptr_CE35628_to_f_code_CE33888:
#data f_code_CE33888		; addr: CE35628

ptr_CE3562C_to_f_code_CE33924:
#data f_code_CE33924		; addr: CE3562C

ptr_CE35630_to_f_code_CE33172:
#data f_code_CE33172		; addr: CE35630

ptr_CE35634_to_f_code_CE333CE:
#data f_code_CE333CE		; addr: CE35634

ptr_CE35638_to_f_code_CE33958:
#data f_code_CE33958		; addr: CE35638

ptr_CE3563C_to_data_CE33986:
#data data_CE33986		; addr: CE3563C

ptr_CE35640_to_data_CE33AF8:
#data data_CE33AF8		; addr: CE35640

ptr_CE35644_to_f_code_CE33A24:
#data f_code_CE33A24		; addr: CE35644

ptr_CE35648_to_f_code_CE33BA0:
#data f_code_CE33BA0		; addr: CE35648

ptr_CE3564C_to_f_code_CE33D34:
#data f_code_CE33D34		; addr: CE3564C

ptr_CE35650_to_f_code_CE33DD6:
#data f_code_CE33DD6		; addr: CE35650

ptr_CE35654_to_f_code_CE33E50:
#data f_code_CE33E50		; addr: CE35654

ptr_CE35658_to_f_code_CE33F88:
#data f_code_CE33F88		; addr: CE35658

ptr_CE3565C_to_data_CE3405E:
#data data_CE3405E		; addr: CE3565C

ptr_CE35660_to_f_code_CE34160:
#data f_code_CE34160		; addr: CE35660

ptr_CE35664_to_f_code_CE341CE:
#data f_code_CE341CE		; addr: CE35664

ptr_CE35668_to_f_code_CE33B58:
#data f_code_CE33B58		; addr: CE35668

ptr_CE3566C_to_f_code_CE33DB6:
#data f_code_CE33DB6		; addr: CE3566C

ptr_CE35670_to_f_code_CE34202:
#data f_code_CE34202		; addr: CE35670

ptr_CE35674_to_data_CE34260:
#data data_CE34260		; addr: CE35674

ptr_CE35678_to_f_code_CE34310:
#data f_code_CE34310		; addr: CE35678

ptr_CE3567C_to_f_code_CE34386:
#data f_code_CE34386		; addr: CE3567C

ptr_CE35680_to_f_code_CE3440E:
#data f_code_CE3440E		; addr: CE35680

ptr_CE35684_to_f_code_CE344B8:
#data f_code_CE344B8		; addr: CE35684

ptr_CE35688_to_data_CE345AA:
#data data_CE345AA		; addr: CE35688

ptr_CE3568C_to_f_code_CE34624:
#data f_code_CE34624		; addr: CE3568C

ptr_CE35690_to_f_code_CE346CA:
#data f_code_CE346CA		; addr: CE35690

ptr_CE35694_to_data_CE347B4:
#data data_CE347B4		; addr: CE35694

ptr_CE35698_to_f_code_CE34822:
#data f_code_CE34822		; addr: CE35698

ptr_CE3569C_to_f_code_CE3485C:
#data f_code_CE3485C		; addr: CE3569C

ptr_CE356A0_to_data_CE348C8:
#data data_CE348C8		; addr: CE356A0

ptr_CE356A4_to_f_code_CE34948:
#data f_code_CE34948		; addr: CE356A4

ptr_CE356A8_to_f_code_CE34948:
#data f_code_CE34948		; addr: CE356A8

ptr_CE356AC_to_f_code_CE3496A:
#data f_code_CE3496A		; addr: CE356AC

ptr_CE356B0_to_f_code_CE34D52:
#data f_code_CE34D52		; addr: CE356B0

ptr_CE356B4_to_f_code_CE34F70:
#data f_code_CE34F70		; addr: CE356B4

ptr_CE356B8_to_f_code_CE35018:
#data f_code_CE35018		; addr: CE356B8

ptr_CE356BC_to_f_code_CE3502A:
#data f_code_CE3502A		; addr: CE356BC

ptr_CE356C0_to_f_code_CE3502A:
#data f_code_CE3502A		; addr: CE356C0

ptr_CE356C4_to_data_CE34D18:
#data data_CE34D18		; addr: CE356C4

ptr_CE356C8_to_data_CE34C20:
#data data_CE34C20		; addr: CE356C8

ptr_CE356CC_to_data_CE34B24:
#data data_CE34B24		; addr: CE356CC

ptr_CE356D0_to_data_CE34A70:
#data data_CE34A70		; addr: CE356D0

ptr_CE356D4_to_f_code_CE34A10:
#data f_code_CE34A10		; addr: CE356D4

ptr_CE356D8_to_f_code_CE34F58:
#data f_code_CE34F58		; addr: CE356D8

ptr_CE356DC_to_data_CE34EFC:
#data data_CE34EFC		; addr: CE356DC

ptr_CE356E0_to_data_CE34E34:
#data data_CE34E34		; addr: CE356E0

ptr_CE356E4_to_f_code_CE34DC2:
#data f_code_CE34DC2		; addr: CE356E4

ptr_CE356E8_to_f_code_CE34DA0:
#data f_code_CE34DA0		; addr: CE356E8

ptr_CE356EC_to_f_code_CE34FC0:
#data f_code_CE34FC0		; addr: CE356EC

ptr_CE356F0_to_f_code_CE34FBA:
#data f_code_CE34FBA		; addr: CE356F0

ptr_CE356F4_to_f_code_CE34FAC:
#data f_code_CE34FAC		; addr: CE356F4

ptr_CE356F8_to_f_code_CE34F82:
#data f_code_CE34F82		; addr: CE356F8

ptr_CE356FC_to_f_code_CE35060:
#data f_code_CE35060		; addr: CE356FC

ptr_CE35700_to_f_code_CE35060:
#data f_code_CE35060		; addr: CE35700

ptr_CE35704_to_f_code_CE3506E:
#data f_code_CE3506E		; addr: CE35704

ptr_CE35708_to_f_code_CE350A4:
#data f_code_CE350A4		; addr: CE35708

ptr_CE3570C_to_f_code_CE350C4:
#data f_code_CE350C4		; addr: CE3570C

ptr_CE35710_to_f_code_CE350C8:
#data f_code_CE350C8		; addr: CE35710
