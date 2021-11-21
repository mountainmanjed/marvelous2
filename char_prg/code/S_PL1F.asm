;╔══════════════════════════════════════════╗
;║ S_PL1F : B.B. Hood (Bulleta) Program     ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c04242a 0x8C04242A
#symbol loc_8c0424a6 0x8C0424A6
#symbol loc_8c045790 0x8C045790
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c04ce3a 0x8C04CE3A
#symbol loc_8c04ce54 0x8C04CE54
#symbol loc_8c04fea8 0x8C04FEA8
#symbol loc_8c04ff88 0x8C04FF88
#symbol loc_8c050048 0x8C050048
#symbol loc_8c050084 0x8C050084
#symbol loc_8c050834 0x8C050834
#symbol loc_8c050ea4 0x8C050EA4
#symbol loc_8c05115a 0x8C05115A
#symbol loc_8c0511b4 0x8C0511B4
#symbol loc_8c0511e2 0x8C0511E2
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c051854 0x8C051854
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c0523d8 0x8C0523D8
#symbol loc_8c05264c 0x8C05264C
#symbol loc_8c052b4c 0x8C052B4C
#symbol loc_8c052c84 0x8C052C84
#symbol loc_8c052ce2 0x8C052CE2
#symbol loc_8c052dac 0x8C052DAC
#symbol loc_8c053082 0x8C053082
#symbol loc_8c0530d8 0x8C0530D8
#symbol loc_8c053e00 0x8C053E00
#symbol loc_8c0542e0 0x8C0542E0
#symbol loc_8c054508 0x8C054508
#symbol loc_8c05496c 0x8C05496C
#symbol loc_8c054b34 0x8C054B34
#symbol loc_8c054d04 0x8C054D04
#symbol loc_8c054d1c 0x8C054D1C
#symbol loc_8c054da0 0x8C054DA0
#symbol loc_8c054e58 0x8C054E58
#symbol loc_8c055066 0x8C055066
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c05a49c 0x8C05A49C
#symbol loc_8c090f30 0x8C090F30
#symbol loc_8c090f64 0x8C090F64
#symbol loc_8c0918ec 0x8C0918EC
#symbol loc_8c091c2c 0x8C091C2C
#symbol loc_8c091ee0 0x8C091EE0
#symbol loc_8c091f1a 0x8C091F1A
#symbol loc_8c0de074 0x8C0DE074
#symbol loc_8c0df690 0x8C0DF690
#symbol loc_8c0fd966 0x8C0FD966
#symbol loc_8c0fdab6 0x8C0FDAB6
#symbol loc_8c0fdb4e 0x8C0FDB4E
#symbol loc_8c103660 0x8C103660
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c289636 0x8C289636
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce30032,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce30034,pc),r7
    mov.l @(r0,r4),r6
    mov 0x00,r4

LAB_ce3000a:
    mov r4,r0
    nop
    add 0x04,r4
    mov.l @(r0,r7),r3
    cmp/hs r5,r4
    bf/s LAB_ce3000a
    mov.l r3,@(r0,r6)
    rts
    nop

;=============================================

FUN_ce3001c:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    mov.l @(PTR_ce30038,pc),r3
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    jmp @r3
    fmov fr4,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30032:
    #data 0x0428
    #align4

PTR_ce30034:
    #data PTR_ce342cc
PTR_ce30038:
    #data loc_8c051648

;=============================================

LAB_ce3003c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30100,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    mov.l @(PTR_ce30104,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    mov.l @(PTR_ce30108,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    mov.l @(PTR_ce3010c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    bsr FUN_ce30118
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    bsr FUN_ce30160
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    bsr FUN_ce301a6
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    bsr FUN_ce301ee
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    bsr FUN_ce3025c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    bsr FUN_ce302a2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    bsr FUN_ce30308
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    bsr FUN_ce30384
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    bsr FUN_ce303d2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    bsr FUN_ce30420
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    bsr FUN_ce3045c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    bsr FUN_ce304c8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    mov.l @(PTR_ce30110,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30114,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300f8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    #data 0x0000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

PTR_ce30100:
    #data loc_8c054508
PTR_ce30104:
    #data loc_8c054b34
PTR_ce30108:
    #data loc_8c05496c
PTR_ce3010c:
    #data loc_8c054d04
PTR_ce30110:
    #data loc_8c053e00
PTR_ce30114:
    #data loc_8c0542e0

;=============================================

FUN_ce30118:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30240,pc),r5
    mov.w @(DAT_ce30234,pc),r6
    mov.l @(PTR_ce30244,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30138
    mov.w @(DAT_ce30236,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30140

LAB_ce30138:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30140:
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30238,pc),r0
    mov.l @(PTR_ce30248,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30160:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3024c,pc),r5
    mov.w @(DAT_ce3023a,pc),r6
    mov.l @(PTR_ce30244,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30180
    mov.w @(DAT_ce30236,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30188

LAB_ce30180:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30188:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30238,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30248,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301a6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30250,pc),r5
    mov.w @(DAT_ce3023c,pc),r6
    mov.l @(PTR_ce30244,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301c8
    mov.w @(DAT_ce30236,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    mov 0x01,r2
    cmp/ge r2,r3
    bt LAB_ce301d0

LAB_ce301c8:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301d0:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30238,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30248,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301ee:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30254,pc),r5
    mov.w @(DAT_ce3023e,pc),r6
    mov.l @(PTR_ce30244,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3020c
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3020c:
    mov.w @(DAT_ce3023e,pc),r5
    mov.l @(PTR_ce30258,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30238,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30248,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30234:
    #data 0x0364
DAT_ce30236:
    #data 0x040c
DAT_ce30238:
    #data 0x01e9
DAT_ce3023a:
    #data 0x036c
DAT_ce3023c:
    #data 0x0374
DAT_ce3023e:
    #data 0x0384
    #align4

PTR_ce30240:
    #data DAT_ce3424a
PTR_ce30244:
    #data loc_8c054e58
PTR_ce30248:
    #data loc_8c0530d8
PTR_ce3024c:
    #data DAT_ce3423a
PTR_ce30250:
    #data DAT_ce3425e
PTR_ce30254:
    #data DAT_ce34216
PTR_ce30258:
    #data loc_8c055c3a

;=============================================

FUN_ce3025c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30368,pc),r5
    mov.w @(DAT_ce30356,pc),r6
    mov.l @(PTR_ce3036c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3027a
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3027a:
    mov.w @(DAT_ce30356,pc),r5
    mov.l @(PTR_ce30370,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30358,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30374,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302a2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30378,pc),r5
    mov.w @(DAT_ce3035a,pc),r6
    mov.l @(PTR_ce3036c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302d2
    mov.w @(DAT_ce3035c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce302e0
    mov.w @(DAT_ce3035e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce302e0
    mov.w @(DAT_ce30360,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce302da

LAB_ce302d2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302da:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce302e0:
    mov.w @(DAT_ce3035a,pc),r5
    mov.l @(PTR_ce30370,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0C,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30358,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30374,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30308:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3037c,pc),r5
    mov.w @(DAT_ce30362,pc),r6
    mov.l @(PTR_ce30380,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30326
    mov.w @(DAT_ce30364,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3032e

LAB_ce30326:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3032e:
    mov.w @(DAT_ce30362,pc),r5
    mov.l @(PTR_ce30370,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30358,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30374,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30356:
    #data 0x0394
DAT_ce30358:
    #data 0x01e9
DAT_ce3035a:
    #data 0x03bc
DAT_ce3035c:
    #data 0x01f9
DAT_ce3035e:
    #data 0x01fc
DAT_ce30360:
    #data 0x01d4
DAT_ce30362:
    #data 0x039c
DAT_ce30364:
    #data 0x02f8
    #align4

PTR_ce30368:
    #data DAT_ce341f6
PTR_ce3036c:
    #data loc_8c054e58
PTR_ce30370:
    #data loc_8c055c3a
PTR_ce30374:
    #data loc_8c0530d8
PTR_ce30378:
    #data DAT_ce34206
PTR_ce3037c:
    #data DAT_ce341cc
PTR_ce30380:
    #data loc_8c055066

;=============================================

FUN_ce30384:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304a8,pc),r5
    mov.w @(DAT_ce3049c,pc),r6
    mov.l @(PTR_ce304ac,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303a2
    mov.w @(DAT_ce3049e,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt LAB_ce303aa

LAB_ce303a2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303aa:
    mov.w @(DAT_ce3049c,pc),r5
    mov.l @(PTR_ce304b0,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304b4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303d2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304b8,pc),r5
    mov.w @(DAT_ce304a2,pc),r6
    mov.l @(PTR_ce304ac,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303f0
    mov.w @(DAT_ce3049e,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt LAB_ce303f8

LAB_ce303f0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303f8:
    mov.w @(DAT_ce304a2,pc),r5
    mov.l @(PTR_ce304b0,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304b4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30420:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304bc,pc),r5
    mov.w @(DAT_ce304a4,pc),r6
    mov.l @(PTR_ce304c0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3043e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3043e:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x09,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304b4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3045c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce304c4,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30474
    mov.w @(DAT_ce304a6,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3047c

LAB_ce30474:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3047c:
    mov.w @(DAT_ce304a0,pc),r0
    mov 0x0A,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce304b4,pc),r3
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3049c:
    #data 0x03a4
DAT_ce3049e:
    #data 0x02f8
DAT_ce304a0:
    #data 0x01e9
DAT_ce304a2:
    #data 0x03ac
DAT_ce304a4:
    #data 0x03b4
DAT_ce304a6:
    #data 0x040c
    #align4

PTR_ce304a8:
    #data DAT_ce341da
PTR_ce304ac:
    #data loc_8c055066
PTR_ce304b0:
    #data loc_8c055c3a
PTR_ce304b4:
    #data loc_8c0530d8
PTR_ce304b8:
    #data DAT_ce341e8
PTR_ce304bc:
    #data DAT_ce34272
PTR_ce304c0:
    #data loc_8c054e58
PTR_ce304c4:
    #data loc_8c054d1c

;=============================================

FUN_ce304c8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305e4,pc),r3
    jsr @r3
    mov 0x0B,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce304e2
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304e2:
    mov.w @(DAT_ce305d8,pc),r0
    mov 0x0B,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce305e8,pc),r3
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30502:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce3052e
    mov r4,r14
    tst r0,r0
    bf LAB_ce3051e
    bsr FUN_ce30566
    mov r14,r4
    tst r0,r0
    bf LAB_ce3051e
    bsr FUN_ce3059c
    mov r14,r4
    tst r0,r0
    bt LAB_ce30526

LAB_ce3051e:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce30526:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3052e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305ec,pc),r5
    mov.w @(DAT_ce305da,pc),r6
    mov.l @(PTR_ce305f0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3054e
    mov.w @(DAT_ce305dc,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30556

LAB_ce3054e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30556:
    mov.w @(DAT_ce305de,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov r3,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30566:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305f4,pc),r5
    mov.w @(DAT_ce305e0,pc),r6
    mov.l @(PTR_ce305f0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30586
    mov.w @(DAT_ce305dc,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3058e

LAB_ce30586:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3058e:
    mov.w @(DAT_ce305de,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3059c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305f8,pc),r5
    mov.w @(DAT_ce305e2,pc),r6
    mov.l @(PTR_ce305f0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce305be
    mov.w @(DAT_ce305dc,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    mov 0x01,r2
    cmp/ge r2,r3
    bt LAB_ce305c6

LAB_ce305be:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce305c6:
    mov.w @(DAT_ce305de,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce305d4:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305d8:
    #data 0x01e9
DAT_ce305da:
    #data 0x0364
DAT_ce305dc:
    #data 0x040c
DAT_ce305de:
    #data 0x0258
DAT_ce305e0:
    #data 0x036c
DAT_ce305e2:
    #data 0x0374
    #align4

PTR_ce305e4:
    #data loc_8c054da0
PTR_ce305e8:
    #data loc_8c0530d8
PTR_ce305ec:
    #data DAT_ce3423a
PTR_ce305f0:
    #data loc_8c054e58
PTR_ce305f4:
    #data DAT_ce3424a
PTR_ce305f8:
    #data DAT_ce3425e

;=============================================

LAB_ce305fc:
    mov.w @(DAT_ce306fc,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce3070c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30610:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30710,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.w @(DAT_ce306fe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3069e
    mov.w @(DAT_ce30700,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3069e
    mov.w @(DAT_ce30702,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3069e
    mov.w @(DAT_ce30704,pc),r0
    mov.w @(DAT_ce30706,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce3069e
    mov.l @(PTR_ce30714,pc),r3
    mov 0x16,r5
    jsr @r3
    mov r14,r4
    fldi1 fr3
    fadd fr3,fr3
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    mov 0x02,r5
    mov 0x00,r4
    fmul fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce30708,pc),r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce3070a,pc),r0
    mov.l r4,@(r0,r14)
    mov r5,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x15,r3
    mov.w @(DAT_ce30700,pc),r0
    mov 0x05,r6
    mov.b r5,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30718,pc),r3
    mov 0x14,r5
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce3071c,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3069e:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce306a6
    mov.l @r15+,r14

LAB_ce306a6:
    mov.l r14,@-r15
    mov 0x00,r0
    sts.l PR,@-r15
    mov.l @(PTR_ce30710,pc),r3
    mov r4,r14
    mov r0,r5
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30720,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce306fe,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce306e2
    mov.w @(DAT_ce30700,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce306da
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3098c
    mov.l @r15+,r14

LAB_ce306da:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3089e
    mov.l @r15+,r14

LAB_ce306e2:
    mov.w @(DAT_ce30700,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce306f4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307f2
    mov.l @r15+,r14

LAB_ce306f4:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30724
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306fc:
    #data 0x01ff
DAT_ce306fe:
    #data 0x01fe
DAT_ce30700:
    #data 0x01f9
DAT_ce30702:
    #data 0x01e8
DAT_ce30704:
    #data 0x01fa
DAT_ce30706:
    #data 0x0c00
DAT_ce30708:
    #data 0x01a7
DAT_ce3070a:
    #data 0x03f4
    #align4

PTR_ce3070c:
    #data PTR_ce3433c
PTR_ce30710:
    #data loc_8c035162
PTR_ce30714:
    #data loc_8c04223a
PTR_ce30718:
    #data loc_8c2896b0
PTR_ce3071c:
    #data loc_8c034e8c
PTR_ce30720:
    #data loc_8c052b4c

;=============================================

LAB_ce30724:
    mov.w @(DAT_ce30828,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30834,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    add 0x14,r5
    mov.w @(DAT_ce30828,pc),r0
    mov 0x01,r5
    mov.l @(PTR_ce30838,pc),r6
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30750
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce30760
    cmp/eq 0x02,r0
    bt LAB_ce3076c
    bra LAB_ce307be
    nop

LAB_ce30750:
    mov.w @(DAT_ce3082a,pc),r0
    mov.l @(PTR_ce3083c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3082c,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3082e,pc),r0
    bra LAB_ce30768
    nop

LAB_ce30760:
    mov.w @(DAT_ce3082a,pc),r0
    mov.l @(PTR_ce30840,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3082c,pc),r0

LAB_ce30768:
    bra LAB_ce307be
    mov.b r5,@(r0,r14)

LAB_ce3076c:
    mov.w @(DAT_ce3082a,pc),r0
    mov 0x02,r3
    mov.l @(PTR_ce30844,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3082c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x53,r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce30830,pc),r3
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce307be
    mov.w @(DAT_ce3082a,pc),r0
    mov.l r4,@(r0,r14)
    mov r5,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x12,r2
    mov.w @(DAT_ce30832,pc),r0
    mov 0x07,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r6,r2
    mov 0x06,r6
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce30848,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce307be:
    mov.w @(DAT_ce30828,pc),r0
    mov 0x07,r5
    mov.b @(r0,r14),r2
    add 0xB9,r0
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r6,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.w @(DAT_ce30828,pc),r0
    lds.l @r15+,PR
    mov.l @(PTR_ce30848,pc),r3
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce307f2:
    mov.w @(DAT_ce30828,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30812
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3081e
    cmp/eq 0x02,r0
    bt LAB_ce3084c
    bra LAB_ce30858
    nop

LAB_ce30812:
    mov.w @(DAT_ce3082a,pc),r0
    mov.l @(PTR_ce3083c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3082c,pc),r0
    bra LAB_ce30858
    mov.b r13,@(r0,r14)

LAB_ce3081e:
    mov.w @(DAT_ce3082a,pc),r0
    mov.l @(PTR_ce30840,pc),r2
    mov.l r2,@(r0,r14)
    bra LAB_ce30854
    mov 0x01,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30828:
    #data 0x01e8
DAT_ce3082a:
    #data 0x03f4
DAT_ce3082c:
    #data 0x01a7
DAT_ce3082e:
    #data 0x02a2
DAT_ce30830:
    #data 0x0c00
DAT_ce30832:
    #data 0x01a1
    #align4

PTR_ce30834:
    #data loc_8c04223a
PTR_ce30838:
    #data loc_8c2896b0
PTR_ce3083c:
    #data DAT_ce34282
PTR_ce30840:
    #data DAT_ce34286
PTR_ce30844:
    #data DAT_ce3428a
PTR_ce30848:
    #data loc_8c034e8c

;=============================================

LAB_ce3084c:
    mov.w @(DAT_ce3095c,pc),r0
    mov 0x02,r3
    mov.l @(PTR_ce30968,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30854:
    mov.w @(DAT_ce3095e,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30858:
    mov.w @(DAT_ce30960,pc),r0
    mov.l @(PTR_ce3096c,pc),r3
    mov.b @(r0,r14),r5
    add 0x14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30960,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30970,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r2
    add 0xB9,r0
    add 0x06,r2
    mov.b r2,@(r0,r14)
    add 0x0B,r0
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
    lds.l @r15+,PR
    mov.w @(DAT_ce30960,pc),r0
    mov.l @(PTR_ce30974,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce3089e:
    mov.w @(DAT_ce30960,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r4
    extu.b r4,r5
    extu.b r4,r0
    mov r5,r11
    mov r5,r12
    cmp/eq 0x00,r0
    add 0x03,r11
    mov 0x01,r5
    bt/s LAB_ce308cc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce308d8
    cmp/eq 0x02,r0
    bt LAB_ce308e4
    bra LAB_ce3091a
    nop

LAB_ce308cc:
    mov.w @(DAT_ce3095c,pc),r0
    mov.l @(PTR_ce30978,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3095e,pc),r0
    bra LAB_ce3091a
    mov.b r13,@(r0,r14)

LAB_ce308d8:
    mov.w @(DAT_ce3095c,pc),r0
    mov.l @(PTR_ce3097c,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3095e,pc),r0
    bra LAB_ce3091a
    mov.b r5,@(r0,r14)

LAB_ce308e4:
    mov.w @(DAT_ce3095c,pc),r0
    mov 0x02,r3
    mov.l @(PTR_ce30980,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3095e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x53,r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce30962,pc),r3
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce30912
    mov 0x06,r12
    mov r5,r0
    nop
    mov.l @(PTR_ce30984,pc),r2
    mov 0x16,r5
    mov.b r0,@(0x6,r14)
    mov 0x13,r11
    jsr @r2
    mov r14,r4
    bra LAB_ce3091a
    nop

LAB_ce30912:
    mov.l @(PTR_ce30988,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4

LAB_ce3091a:
    mov.w @(DAT_ce30960,pc),r0
    mov.l @(PTR_ce3096c,pc),r3
    mov.b @(r0,r14),r5
    add 0x14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30964,pc),r0
    mov r12,r6
    mov.l @(PTR_ce30970,pc),r3
    mov 0x08,r5
    mov.b r11,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce30974,pc),r2
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3095c:
    #data 0x03f4
DAT_ce3095e:
    #data 0x01a7
DAT_ce30960:
    #data 0x01e8
DAT_ce30962:
    #data 0x0800
DAT_ce30964:
    #data 0x01a1
    #align4

PTR_ce30968:
    #data DAT_ce3428a
PTR_ce3096c:
    #data loc_8c04223a
PTR_ce30970:
    #data loc_8c2896b0
PTR_ce30974:
    #data loc_8c034e8c
PTR_ce30978:
    #data DAT_ce3428e
PTR_ce3097c:
    #data DAT_ce34292
PTR_ce30980:
    #data DAT_ce34296
PTR_ce30984:
    #data loc_8c0df690
PTR_ce30988:
    #data loc_8c090f30

;=============================================

LAB_ce3098c:
    mov.w @(DAT_ce30a90,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r4
    extu.b r4,r5
    mov r5,r11
    extu.b r4,r0
    cmp/eq 0x00,r0
    mov r5,r13
    add 0x09,r11
    bt/s LAB_ce309b8
    mov 0x00,r12
    cmp/eq 0x01,r0
    bt LAB_ce309c4
    cmp/eq 0x02,r0
    bt LAB_ce309d2
    bra LAB_ce309f6
    nop

LAB_ce309b8:
    mov.w @(DAT_ce30a92,pc),r0
    mov.l @(PTR_ce30aa0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30a94,pc),r0
    bra LAB_ce309f6
    mov.b r12,@(r0,r14)

LAB_ce309c4:
    mov.w @(DAT_ce30a92,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce30aa4,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a94,pc),r0
    bra LAB_ce309f6
    mov.b r3,@(r0,r14)

LAB_ce309d2:
    mov.w @(DAT_ce30a92,pc),r0
    mov 0x02,r3
    mov.l @(PTR_ce30aa8,pc),r1
    mov.l r1,@(r0,r14)
    mov.w @(DAT_ce30a94,pc),r0
    mov.b r3,@(r0,r14)
    add 0x53,r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce30a96,pc),r3
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce309f6
    mov.l @(PTR_ce30aac,pc),r2
    mov 0x01,r5
    mov 0x03,r13
    mov 0x14,r11
    jsr @r2
    mov r14,r4

LAB_ce309f6:
    mov.w @(DAT_ce30a90,pc),r0
    mov.l @(PTR_ce30ab0,pc),r3
    mov.b @(r0,r14),r5
    add 0x14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a98,pc),r0
    mov r13,r6
    mov.l @(PTR_ce30ab4,pc),r3
    mov 0x0A,r5
    mov.b r11,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l r12,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce30ab8,pc),r2
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30a38:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30abc,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.w @(DAT_ce30a9a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a54
    mov.w @(DAT_ce30a9c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bf LAB_ce30a64

LAB_ce30a54:
    mov.w @(DAT_ce30a9a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30a6c
    mov.w @(DAT_ce30a9c,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30a6c

LAB_ce30a64:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30a72
    mov.l @r15+,r14

LAB_ce30a6c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30a72:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30abc,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.w @(DAT_ce30a9a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30ac0
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30be4
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a90:
    #data 0x01e8
DAT_ce30a92:
    #data 0x03f4
DAT_ce30a94:
    #data 0x01a7
DAT_ce30a96:
    #data 0x0400
DAT_ce30a98:
    #data 0x01a1
DAT_ce30a9a:
    #data 0x01fe
DAT_ce30a9c:
    #data 0x01d6
    #align4

PTR_ce30aa0:
    #data DAT_ce3428e
PTR_ce30aa4:
    #data DAT_ce34292
PTR_ce30aa8:
    #data DAT_ce34296
PTR_ce30aac:
    #data loc_8c090f30
PTR_ce30ab0:
    #data loc_8c04223a
PTR_ce30ab4:
    #data loc_8c2896b0
PTR_ce30ab8:
    #data loc_8c034e8c
PTR_ce30abc:
    #data loc_8c035162

;=============================================

LAB_ce30ac0:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30ac8
    mov.l @r15+,r14

LAB_ce30ac8:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30bb0,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30bc0,pc),r11
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30aee
    mov 0x00,r12
    cmp/eq 0x01,r0
    bt LAB_ce30b18
    cmp/eq 0x02,r0
    bt LAB_ce30b40
    bra LAB_ce30b6a
    nop

LAB_ce30aee:
    mov.w @(DAT_ce30bb2,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov r12,r13
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30bb4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b0c
    mov.w @(DAT_ce30bb6,pc),r0
    mov.l @(PTR_ce30bc4,pc),r3
    bra LAB_ce30b12
    mov.l r3,@(r0,r14)

LAB_ce30b0c:
    mov.w @(DAT_ce30bb6,pc),r0
    mov.l @(PTR_ce30bc8,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b12:
    mov.w @(DAT_ce30bb8,pc),r0
    bra LAB_ce30b6a
    mov.b r12,@(r0,r14)

LAB_ce30b18:
    mov.w @(DAT_ce30bb2,pc),r0
    mov 0x0D,r2
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x01,r13
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30bb4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b36
    mov.w @(DAT_ce30bb6,pc),r0
    mov.l @(PTR_ce30bcc,pc),r3
    bra LAB_ce30b3c
    mov.l r3,@(r0,r14)

LAB_ce30b36:
    mov.w @(DAT_ce30bb6,pc),r0
    mov.l @(PTR_ce30bd0,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b3c:
    bra LAB_ce30b66
    mov 0x01,r3

LAB_ce30b40:
    mov.w @(DAT_ce30bb2,pc),r0
    mov 0x0E,r3
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    mov 0x02,r13
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30bb4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b5e
    mov.w @(DAT_ce30bb6,pc),r0
    mov.l @(PTR_ce30bd4,pc),r3
    bra LAB_ce30b64
    mov.l r3,@(r0,r14)

LAB_ce30b5e:
    mov.w @(DAT_ce30bb6,pc),r0
    mov.l @(PTR_ce30bd8,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b64:
    mov 0x02,r3

LAB_ce30b66:
    mov.w @(DAT_ce30bb8,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30b6a:
    mov.w @(DAT_ce30bba,pc),r0
    mov r13,r6
    mov.l @(PTR_ce30bdc,pc),r3
    mov 0x0B,r5
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l r12,@(r0,r14)
    add 0x03,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30be0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30bbc,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30ba4
    mov.w @(DAT_ce30bbc,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30ba4:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30bb0:
    #data 0x01e8
DAT_ce30bb2:
    #data 0x01a1
DAT_ce30bb4:
    #data 0x01fc
DAT_ce30bb6:
    #data 0x03f4
DAT_ce30bb8:
    #data 0x01a7
DAT_ce30bba:
    #data 0x01ac
DAT_ce30bbc:
    #data 0x01d6
    #align4

PTR_ce30bc0:
    #data loc_8c04223a
PTR_ce30bc4:
    #data DAT_ce3429a
PTR_ce30bc8:
    #data DAT_ce342b2
PTR_ce30bcc:
    #data DAT_ce3429e
PTR_ce30bd0:
    #data DAT_ce342b6
PTR_ce30bd4:
    #data DAT_ce342a2
PTR_ce30bd8:
    #data DAT_ce342ba
PTR_ce30bdc:
    #data loc_8c2896b0
PTR_ce30be0:
    #data loc_8c034e8c

;=============================================

LAB_ce30be4:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30cd8,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30ce8,pc),r11
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30c0a
    mov 0x00,r12
    cmp/eq 0x01,r0
    bt LAB_ce30c34
    cmp/eq 0x02,r0
    bt LAB_ce30c60
    bra LAB_ce30c92
    nop

LAB_ce30c0a:
    mov.w @(DAT_ce30cda,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov r12,r13
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30cdc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c28
    mov.w @(DAT_ce30cde,pc),r0
    mov.l @(PTR_ce30cec,pc),r3
    bra LAB_ce30c2e
    mov.l r3,@(r0,r14)

LAB_ce30c28:
    mov.w @(DAT_ce30cde,pc),r0
    mov.l @(PTR_ce30cf0,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c2e:
    mov.w @(DAT_ce30ce0,pc),r0
    bra LAB_ce30c92
    mov.b r12,@(r0,r14)

LAB_ce30c34:
    mov.w @(DAT_ce30cda,pc),r0
    mov 0x10,r2
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x01,r13
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30cdc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c52
    mov.w @(DAT_ce30cde,pc),r0
    mov.l @(PTR_ce30cf4,pc),r3
    bra LAB_ce30c58
    mov.l r3,@(r0,r14)

LAB_ce30c52:
    mov.w @(DAT_ce30cde,pc),r0
    mov.l @(PTR_ce30cf8,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c58:
    mov.w @(DAT_ce30ce0,pc),r0
    mov 0x01,r3
    bra LAB_ce30c92
    mov.b r3,@(r0,r14)

LAB_ce30c60:
    mov.w @(DAT_ce30cda,pc),r0
    mov 0x11,r3
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    mov 0x02,r13
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30cdc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c7e
    mov.w @(DAT_ce30cde,pc),r0
    mov.l @(PTR_ce30cfc,pc),r3
    bra LAB_ce30c84
    mov.l r3,@(r0,r14)

LAB_ce30c7e:
    mov.w @(DAT_ce30cde,pc),r0
    mov.l @(PTR_ce30d00,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c84:
    mov.w @(DAT_ce30ce0,pc),r0
    mov 0x02,r3
    mov r3,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30d04,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30c92:
    mov.w @(DAT_ce30ce2,pc),r0
    mov r13,r6
    mov.l @(PTR_ce30d08,pc),r3
    mov 0x0C,r5
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l r12,@(r0,r14)
    add 0x03,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30d0c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30ce4,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30ccc
    mov.w @(DAT_ce30ce4,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30ccc:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30cd8:
    #data 0x01e8
DAT_ce30cda:
    #data 0x01a1
DAT_ce30cdc:
    #data 0x01fc
DAT_ce30cde:
    #data 0x03f4
DAT_ce30ce0:
    #data 0x01a7
DAT_ce30ce2:
    #data 0x01ac
DAT_ce30ce4:
    #data 0x01d6
    #align4

PTR_ce30ce8:
    #data loc_8c04223a
PTR_ce30cec:
    #data DAT_ce342a6
PTR_ce30cf0:
    #data DAT_ce342be
PTR_ce30cf4:
    #data DAT_ce342aa
PTR_ce30cf8:
    #data DAT_ce342c2
PTR_ce30cfc:
    #data DAT_ce342ae
PTR_ce30d00:
    #data DAT_ce342c6
PTR_ce30d04:
    #data loc_8c090f30
PTR_ce30d08:
    #data loc_8c2896b0
PTR_ce30d0c:
    #data loc_8c034e8c

;=============================================

LAB_ce30d10:
    mov.w @(DAT_ce30e3e,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30e44,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30d24:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e48,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r0
    fmov.s @(r0,r14),fr15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30daa
    mov 0x5C,r1
    mov.l @(PTR_ce30e4c,pc),r3
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d8c
    lds.l @r15+,PR
    mov.l @(PTR_ce30e50,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d8c:
    mov 0x5C,r0
    fldi0 fr2
    fmov.s @(r0,r14),fr3
    fcmp/eq fr2,fr3
    bt LAB_ce30db4
    fmov.s @(r0,r14),fr3
    fldi0 fr2
    fmul fr15,fr3
    fcmp/gt fr3,fr2
    bf LAB_ce30db4
    mov 0x68,r0
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    bra LAB_ce30db4
    fmov fr2,@(r0,r14)

LAB_ce30daa:
    lds.l @r15+,PR
    mov r14,r4
    fmov.s @r15+,fr15
    bra LAB_ce30dbc
    mov.l @r15+,r14

LAB_ce30db4:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce30dbc:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30e54,pc),r3
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @r1,fr3
    mov 0x60,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30e40,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30e24
    mov.w @(DAT_ce30e42,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30e1c
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31138
    mov.l @r15+,r14

LAB_ce30e1c:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31060
    mov.l @r15+,r14

LAB_ce30e24:
    mov.w @(DAT_ce30e42,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30e36
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30fc8
    mov.l @r15+,r14

LAB_ce30e36:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e58
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e3e:
    #data 0x01ff
DAT_ce30e40:
    #data 0x01fe
DAT_ce30e42:
    #data 0x01f9
    #align4

PTR_ce30e44:
    #data PTR_ce3434c
PTR_ce30e48:
    #data loc_8c0511e2
PTR_ce30e4c:
    #data loc_8c034dee
PTR_ce30e50:
    #data loc_8c051648
PTR_ce30e54:
    #data loc_8c052c84

;=============================================

LAB_ce30e58:
    mov.w @(DAT_ce30f82,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30e7e
    cmp/eq 0x00,r0
    bf LAB_ce30e72
    bra LAB_ce30fa8
    nop

LAB_ce30e72:
    cmp/eq 0x01,r0
    bf LAB_ce30e7a
    bra LAB_ce30fa8
    nop

LAB_ce30e7a:
    bra LAB_ce30fc0
    nop

LAB_ce30e7e:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce30ee6
    mov 0x00,r13
    mov.w @(DAT_ce30f84,pc),r0
    mov.l @(PTR_ce30f90,pc),r4
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt/s LAB_ce30eb6
    mov 0x02,r5
    mov.w @(DAT_ce30f84,pc),r0
    mov.b r13,@(r0,r14)
    add 0x60,r0
    mov.b r5,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r4,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)

LAB_ce30eb6:
    mov.w @(DAT_ce30f84,pc),r0
    mov.b @(r0,r14),r3
    tst r5,r3
    bt LAB_ce30fa8
    mov.b r13,@(r0,r14)
    add 0x60,r0
    mov 0x19,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r4,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    bra LAB_ce30fa8
    nop

LAB_ce30ee6:
    mov.l @(PTR_ce30f94,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce30f56
    mov.w @(DAT_ce30f84,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30fc0
    mov.b @(0x7,r14),r0
    mov.w @(DAT_ce30f88,pc),r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce30f98,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30f9c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30fa0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30fa4,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30f86,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bf LAB_ce30f3c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30f3c:
    mov.w @(DAT_ce30f8a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30fc0
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    bra LAB_ce30fc0
    fmov fr3,@(r0,r14)

LAB_ce30f56:
    mov.w @(DAT_ce30f84,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30fc0
    mov r13,r0
    nop
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30f8c,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    bra LAB_ce30fc0
    fmov fr4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f82:
    #data 0x01e8
DAT_ce30f84:
    #data 0x0141
DAT_ce30f86:
    #data 0x01fa
DAT_ce30f88:
    #data 0x0800
DAT_ce30f8a:
    #data 0x0130
DAT_ce30f8c:
    #data 0x041c
    #align4

PTR_ce30f90:
    #data loc_8c2896b0
PTR_ce30f94:
    #data loc_8c034dee
DAT_ce30f98:
    #data 0x40cdb6db
DAT_ce30f9c:
    #data 0xbf092492
DAT_ce30fa0:
    #data 0x41055555
DAT_ce30fa4:
    #data 0xbe200000

;=============================================

LAB_ce30fa8:
    mov.l @(PTR_ce31080,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fc0
    lds.l @r15+,PR
    mov.l @(PTR_ce31084,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30fc0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30fc8:
    mov.w @(DAT_ce3107c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30fe4
    cmp/eq 0x00,r0
    bt LAB_ce31044
    cmp/eq 0x01,r0
    bt LAB_ce31044
    bra LAB_ce3105a
    nop

LAB_ce30fe4:
    mov.w @(DAT_ce3107e,pc),r0
    mov.l @(PTR_ce31088,pc),r5
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt/s LAB_ce31016
    mov 0x00,r4
    mov.w @(DAT_ce3107e,pc),r0
    mov 0x08,r3
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
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

LAB_ce31016:
    mov.w @(DAT_ce3107e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce31044
    mov.w @(DAT_ce3107e,pc),r0
    mov 0x1A,r3
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
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

LAB_ce31044:
    mov.l @(PTR_ce31080,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3105a
    lds.l @r15+,PR
    mov.l @(PTR_ce31084,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3105a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31060:
    mov.w @(DAT_ce3107c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3108c
    cmp/eq 0x00,r0
    bt LAB_ce3111c
    cmp/eq 0x01,r0
    bt LAB_ce3111c
    bra LAB_ce31132
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3107c:
    #data 0x01e8
DAT_ce3107e:
    #data 0x0141
    #align4

PTR_ce31080:
    #data loc_8c034dee
PTR_ce31084:
    #data loc_8c051648
PTR_ce31088:
    #data loc_8c2896b0

;=============================================

LAB_ce3108c:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt LAB_ce3111c
    mov.l @(PTR_ce31178,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce310d6
    mov.w @(DAT_ce31170,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31132
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce3117c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31180,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31172,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31132
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    bra LAB_ce31132
    fmov fr3,@(r0,r14)

LAB_ce310d6:
    mov.w @(DAT_ce31170,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce310fe
    mov 0x00,r0
    fldi0 fr4
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31174,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    bra LAB_ce31132
    fmov fr4,@(r0,r14)

LAB_ce310fe:
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce31132
    mov.w @(DAT_ce31170,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce31184,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31188,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    bra LAB_ce31132
    fmov fr3,@(r0,r14)

LAB_ce3111c:
    mov.l @(PTR_ce31178,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31132
    lds.l @r15+,PR
    mov.l @(PTR_ce3118c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31132:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31138:
    mov.w @(DAT_ce31176,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31154
    cmp/eq 0x01,r0
    bt LAB_ce31154
    cmp/eq 0x02,r0
    bt LAB_ce31154
    bra LAB_ce3116a
    nop

LAB_ce31154:
    mov.l @(PTR_ce31178,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3116a
    lds.l @r15+,PR
    mov.l @(PTR_ce3118c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3116a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31170:
    #data 0x0141
DAT_ce31172:
    #data 0x0130
DAT_ce31174:
    #data 0x041c
DAT_ce31176:
    #data 0x01e8
    #align4

PTR_ce31178:
    #data loc_8c034dee
DAT_ce3117c:
    #data 0x41555555
DAT_ce31180:
    #data 0xbf480000
DAT_ce31184:
    #data 0x41092492
DAT_ce31188:
    #data 0xbf892492
PTR_ce3118c:
    #data loc_8c051648

;=============================================

LAB_ce31190:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31278,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce3127c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce311a6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31280,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31284,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31272,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce311c8
    bsr FUN_ce31250
    mov r14,r4
    bra LAB_ce311cc
    nop

LAB_ce311c8:
    bsr FUN_ce311e8
    mov r14,r4

LAB_ce311cc:
    mov.l @(PTR_ce31288,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce311e2
    lds.l @r15+,PR
    mov.l @(PTR_ce3128c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce311e2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce311e8:
    mov.w @(DAT_ce31274,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31204
    cmp/eq 0x00,r0
    bt LAB_ce31234
    cmp/eq 0x01,r0
    bt LAB_ce31234
    bra LAB_ce3124a
    nop

LAB_ce31204:
    mov.w @(DAT_ce31276,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31234
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x0E,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31290,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31234:
    mov.l @(PTR_ce31294,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3124a
    lds.l @r15+,PR
    mov.l @(PTR_ce31298,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3124a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31250:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31294,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3126a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31298,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3126a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31272:
    #data 0x01fe
DAT_ce31274:
    #data 0x01e8
DAT_ce31276:
    #data 0x0141
    #align4

PTR_ce31278:
    #data loc_8c050084
PTR_ce3127c:
    #data loc_8c04ff88
PTR_ce31280:
    #data loc_8c04fea8
PTR_ce31284:
    #data loc_8c050048
PTR_ce31288:
    #data loc_8c052ce2
PTR_ce3128c:
    #data loc_8c052dac
PTR_ce31290:
    #data loc_8c2896b0
PTR_ce31294:
    #data loc_8c034dee
PTR_ce31298:
    #data loc_8c05176e

;=============================================

LAB_ce3129c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce312f8
    mov.l @(PTR_ce313bc,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x42,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x05,r5
    mov.w @(DAT_ce313b4,pc),r0
    mov.b r3,@(r0,r14)
    add 0x58,r0
    mov.b r4,@(r0,r14)
    add 0xB3,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce313c0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce313c4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce313c8,pc),r3
    mov 0x15,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce313cc,pc),r2
    mov 0x14,r5
    mov 0x04,r6
    jsr @r2
    mov r14,r4

LAB_ce312f8:
    mov.w @(DAT_ce313b6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31308
    mov.l @(PTR_ce313d0,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31308:
    mov 0x5C,r1
    mov.l @(PTR_ce313d4,pc),r3
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce313d8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3135c
    lds.l @r15+,PR
    mov.l @(PTR_ce313dc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3135c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31362:
    mov r4,r3
    mov.l @(PTR_ce313e0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31374:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x18,r0
    mov.w r0,@(0x1c,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce313b8,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3139e
    mova @(DAT_ce313e4,pc),r0
    bra LAB_ce313a2
    fmov.s @r0,fr3

LAB_ce3139e:
    mova @(DAT_ce313e8,pc),r0
    fmov.s @r0,fr3

LAB_ce313a2:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce313b8,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce313f0
    mova @(DAT_ce313ec,pc),r0
    bra LAB_ce313f4
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce313b4:
    #data 0x01a1
DAT_ce313b6:
    #data 0x01ff
DAT_ce313b8:
    #data 0x01d2
    #align4

PTR_ce313bc:
    #data loc_8c052b4c
PTR_ce313c0:
    #data loc_8c2896b0
PTR_ce313c4:
    #data loc_8c056de4
PTR_ce313c8:
    #data loc_8c04223a
PTR_ce313cc:
    #data loc_8c034e8c
PTR_ce313d0:
    #data loc_8c0511e2
PTR_ce313d4:
    #data loc_8c052c84
PTR_ce313d8:
    #data loc_8c034dee
PTR_ce313dc:
    #data loc_8c051648
PTR_ce313e0:
    #data PTR_ce3435c
DAT_ce313e4:
    #data 0x41200000
DAT_ce313e8:
    #data 0xc1200000
DAT_ce313ec:
    #data 0xbda00000

;=============================================

LAB_ce313f0:
    mova @(DAT_ce31534,pc),r0
    fmov.s @r0,fr3

LAB_ce313f4:
    mov 0x68,r0
    mov 0x5C,r1
    fmov fr3,@(r0,r4)
    add r4,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r4),fr2
    mov 0x68,r1
    add r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x5C,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x60,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    rts
    fmov fr2,@(r0,r4)

LAB_ce31432:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31538,pc),r3
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @r1,fr3
    mov 0x60,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce314b8
    mov.w @(DAT_ce31530,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31490
    mova @(DAT_ce3153c,pc),r0
    bra LAB_ce31494
    fmov.s @r0,fr3

LAB_ce31490:
    mova @(DAT_ce31540,pc),r0
    fmov.s @r0,fr3

LAB_ce31494:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31530,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce314a6
    mova @(DAT_ce31544,pc),r0
    bra LAB_ce314aa
    fmov.s @r0,fr3

LAB_ce314a6:
    mova @(DAT_ce31548,pc),r0
    fmov.s @r0,fr3

LAB_ce314aa:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)

LAB_ce314b8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce314be:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31538,pc),r3
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @r1,fr3
    mov 0x60,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31518
    lds.l @r15+,PR
    mov.l @(PTR_ce3154c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31518:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3151e:
    mov r4,r3
    mov.l @(PTR_ce31550,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31530:
    #data 0x01d2
    #align4

DAT_ce31534:
    #data 0x3da00000
PTR_ce31538:
    #data loc_8c034dee
DAT_ce3153c:
    #data 0x40855555
DAT_ce31540:
    #data 0xc0855555
DAT_ce31544:
    #data 0xbe92aaaa
DAT_ce31548:
    #data 0x3e92aaaa
PTR_ce3154c:
    #data loc_8c051648
PTR_ce31550:
    #data PTR_ce34368

;=============================================

LAB_ce31554:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x18,r0
    mov.w r0,@(0x1c,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce31662,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3157e
    mova @(DAT_ce31664,pc),r0
    bra LAB_ce31582
    fmov.s @r0,fr3

LAB_ce3157e:
    mova @(DAT_ce31668,pc),r0
    fmov.s @r0,fr3

LAB_ce31582:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31662,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31594
    mova @(DAT_ce3166c,pc),r0
    bra LAB_ce31598
    fmov.s @r0,fr3

LAB_ce31594:
    mova @(DAT_ce31670,pc),r0
    fmov.s @r0,fr3

LAB_ce31598:
    mov 0x68,r0
    mov 0x5C,r1
    fmov fr3,@(r0,r4)
    add r4,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r4),fr2
    mov 0x68,r1
    add r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x5C,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x60,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    rts
    fmov fr2,@(r0,r4)

LAB_ce315d6:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31674,pc),r3
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @r1,fr3
    mov 0x60,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3165c
    mov.w @(DAT_ce31662,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31634
    mova @(DAT_ce31678,pc),r0
    bra LAB_ce31638
    fmov.s @r0,fr3

LAB_ce31634:
    mova @(DAT_ce3167c,pc),r0
    fmov.s @r0,fr3

LAB_ce31638:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31662,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3164a
    mova @(DAT_ce31680,pc),r0
    bra LAB_ce3164e
    fmov.s @r0,fr3

LAB_ce3164a:
    mova @(DAT_ce31684,pc),r0
    fmov.s @r0,fr3

LAB_ce3164e:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)

LAB_ce3165c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31662:
    #data 0x01d2
    #align4

DAT_ce31664:
    #data 0xc1055555
DAT_ce31668:
    #data 0x41055555
DAT_ce3166c:
    #data 0x3d855555
DAT_ce31670:
    #data 0xbd855555
PTR_ce31674:
    #data loc_8c034dee
DAT_ce31678:
    #data 0xc0855555
DAT_ce3167c:
    #data 0x40855555
DAT_ce31680:
    #data 0x3e92aaaa
DAT_ce31684:
    #data 0xbe92aaaa

;=============================================

LAB_ce31688:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce317c0,pc),r3
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @r1,fr3
    mov 0x60,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce316e2
    lds.l @r15+,PR
    mov.l @(PTR_ce317c4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce316e2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce316e8:
    mov r4,r3
    mov.l @(PTR_ce317c8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce316fa:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce317bc,pc),r0
    mov.b r3,@(r0,r4)
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce317cc,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce317be,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31728
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    fsub fr4,fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce317d0,pc),r0
    bra LAB_ce31734
    fmov.s @r0,fr2

LAB_ce31728:
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce317d4,pc),r0
    fmov.s @r0,fr2

LAB_ce31734:
    mov.l @(PTR_ce317d8,pc),r3
    mov 0x5C,r0
    mov 0x00,r6
    fmov fr2,@(r0,r4)
    jmp @r3
    mov 0x12,r5

LAB_ce31740:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce317c0,pc),r3
    add r14,r1
    mov 0x34,r0
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce317dc,pc),r0
    fsub fr3,fr2
    fmov.s @r0,fr3
    fabs fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3178a
    mov.b @(0x5,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce317d8,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x5,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    mov 0x34,r0
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3178a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31790:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce317e0,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce317a8
    lds.l @r15+,PR
    mov.l @(PTR_ce317c4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce317a8:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce317e4,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce317bc:
    #data 0x012c
DAT_ce317be:
    #data 0x0130
    #align4

PTR_ce317c0:
    #data loc_8c034dee
PTR_ce317c4:
    #data loc_8c051648
PTR_ce317c8:
    #data PTR_ce34374
DAT_ce317cc:
    #data 0x43555555
DAT_ce317d0:
    #data 0x40a00000
DAT_ce317d4:
    #data 0xc0a00000
PTR_ce317d8:
    #data loc_8c034e8c
DAT_ce317dc:
    #data 0x41055555
PTR_ce317e0:
    #data loc_8c046c8a
PTR_ce317e4:
    #data PTR_ce3437c

;=============================================

LAB_ce317e8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce3188e
    mov 0x00,r13
    mov.l @(PTR_ce318f8,pc),r2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3180e
    mov r13,r0
    nop
    bra LAB_ce3186a
    mov.b r0,@(0x7,r14)

LAB_ce3180e:
    mov.w @(DAT_ce318ea,pc),r0
    mov.w @(DAT_ce318e8,pc),r3
    mov.w @(r0,r14),r6
    and r3,r6
    extu.w r6,r2
    tst r2,r2
    bt LAB_ce3185c
    mov.w @(DAT_ce318ec,pc),r1
    extu.w r6,r5
    tst r5,r1
    bt/s LAB_ce31828
    mov r13,r4
    mov r13,r4

LAB_ce31828:
    mov.w @(DAT_ce318ee,pc),r3
    tst r5,r3
    bt LAB_ce31830
    mov 0x01,r4

LAB_ce31830:
    mov.w @(DAT_ce318f0,pc),r7
    mov r5,r3
    and r7,r3
    cmp/eq r7,r3
    bf/s LAB_ce3183e
    mov 0x03,r6
    mov r6,r4

LAB_ce3183e:
    mov 0x40,r3
    tst r5,r3
    bt/s LAB_ce31848
    mov 0x20,r3
    mov r13,r4

LAB_ce31848:
    tst r5,r3
    bt/s LAB_ce31850
    mov 0x60,r0
    mov 0x01,r4

LAB_ce31850:
    and r5,r0
    cmp/eq 0x60,r0
    bf LAB_ce31858
    mov r6,r4

LAB_ce31858:
    bra LAB_ce31868
    mov r4,r0

LAB_ce3185c:
    mov.l @(PTR_ce318fc,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce31900,pc),r1
    and 0x07,r0
    mov.b @(r0,r1),r0

LAB_ce31868:
    mov.b r0,@(0x7,r14)

LAB_ce3186a:
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce31904,pc),r3
    mov r0,r6
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.l @(PTR_ce31908,pc),r3
    mov r14,r4
    mov 0x01,r7
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov 0x03,r5
    mov 0x0B,r6
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3188e:
    mov.l @(PTR_ce3190c,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce318e0
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt LAB_ce318bc
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce318bc
    mov.l @(PTR_ce31910,pc),r2
    mov 0x13,r5
    jsr @r2
    mov r14,r4
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)

LAB_ce318bc:
    mov.w @(DAT_ce318f4,pc),r0
    mov.w @(DAT_ce318f2,pc),r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce318f6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce318e0
    mov 0x3C,r0
    mov.l @(PTR_ce31914,pc),r3
    mov.w r0,@(0x1c,r14)
    mov 0x0E,r5
    mov.w @(DAT_ce318f6,pc),r0
    mov r14,r4
    mov.b r13,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce318e0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce318e8:
    #data 0x0360
DAT_ce318ea:
    #data 0x04dc
DAT_ce318ec:
    #data 0x0200
DAT_ce318ee:
    #data 0x0100
DAT_ce318f0:
    #data 0x0300
DAT_ce318f2:
    #data 0x00ff
DAT_ce318f4:
    #data 0x0326
DAT_ce318f6:
    #data 0x0141
    #align4

PTR_ce318f8:
    #data loc_8c289636
PTR_ce318fc:
    #data loc_8c03319e
PTR_ce31900:
    #data DAT_ce34390
PTR_ce31904:
    #data loc_8c034e8c
PTR_ce31908:
    #data loc_8c03544c
PTR_ce3190c:
    #data loc_8c034dee
PTR_ce31910:
    #data loc_8c042008
PTR_ce31914:
    #data loc_8c0df690

;=============================================

LAB_ce31918:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce3192c
    mov.b @(0x6,r4),r0
    mov 0x05,r6
    mov.l @(PTR_ce31a50,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce3192c:
    mov.l @(PTR_ce31a54,pc),r3
    jmp @r3
    nop

LAB_ce31932:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31946
    mov.b @(0x6,r4),r0
    mov 0x04,r6
    mov.l @(PTR_ce31a50,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31946:
    mov.l @(PTR_ce31a54,pc),r3
    jmp @r3
    nop

LAB_ce3194c:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31960
    mov.b @(0x6,r4),r0
    mov 0x06,r6
    mov.l @(PTR_ce31a50,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31960:
    mov.l @(PTR_ce31a54,pc),r3
    jmp @r3
    nop

;=============================================

FUN_ce31966:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce31a58,pc),r3
    jsr @r3
    mov 0x2B,r5
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce31a3e,pc),r0
    mov.l @(PTR_ce31a5c,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31a40,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31a60,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31a64,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce319ae:
    mov.w @(DAT_ce31a42,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31a68,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce319c2:
    mov r4,r3
    mov.l @(PTR_ce31a6c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce319d4:
    mov.w @(DAT_ce31a44,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce319f0
    mov.w @(DAT_ce31a48,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31a46,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce319f0:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r0
    mov.w r0,@(0x1c,r14)
    bsr FUN_ce31966
    mov r14,r4
    mov.w @(DAT_ce31a4a,pc),r0
    mov 0x39,r2
    mov 0x00,r4
    mov.l @(PTR_ce31a70,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r4,r6
    mov.b @(0x2,r14),r0
    mov 0x16,r5
    mov.l @r3,r2
    mov r14,r4
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31a4c,pc),r0
    mov.w @(r0,r14),r1
    mov r0,r2
    add 0x54,r2
    or r2,r1
    mov.w r1,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31a50,pc),r1
    jmp @r1
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a3e:
    #data 0x01fc
DAT_ce31a40:
    #data 0x041c
DAT_ce31a42:
    #data 0x01e9
DAT_ce31a44:
    #data 0x0255
DAT_ce31a46:
    #data 0x00ff
DAT_ce31a48:
    #data 0x03f0
DAT_ce31a4a:
    #data 0x01a1
DAT_ce31a4c:
    #data 0x01ac
    #align4

PTR_ce31a50:
    #data loc_8c034e8c
PTR_ce31a54:
    #data loc_8c034dee
PTR_ce31a58:
    #data loc_8c042008
PTR_ce31a5c:
    #data loc_8c05218a
PTR_ce31a60:
    #data loc_8c035162
PTR_ce31a64:
    #data loc_8c05115a
PTR_ce31a68:
    #data PTR_ce34398
PTR_ce31a6c:
    #data PTR_ce343cc
PTR_ce31a70:
    #data loc_8c2896b0

;=============================================

LAB_ce31a74:
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31b52,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce31b54,pc),r0
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce31b56,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31a92
    bra LAB_ce31a94
    mov 0x02,r3

LAB_ce31a92:
    mov 0x00,r3

LAB_ce31a94:
    mov.w @(DAT_ce31b58,pc),r0
    mov 0x00,r5
    fldi0 fr4
    mov 0x01,r6
    mov.b r3,@(r0,r4)
    mov.b @(0x6,r4),r0
    mov.l @(PTR_ce31b64,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31b5a,pc),r0
    mov.b r5,@(r0,r4)
    add 0x01,r0
    mov.b r5,@(r0,r4)
    mova @(DAT_ce31b60,pc),r0
    fmov.s fr4,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r15,r5
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31ac8:
    mov.w @(DAT_ce31b52,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31b54,pc),r0
    mov.l @(PTR_ce31b68,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    cmp/eq 0x0F,r0
    bf LAB_ce31afa
    mov.l @(PTR_ce31b6c,pc),r2
    mov 0x04,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31b70,pc),r3
    mov 0x03,r5
    mov 0x01,r7
    mov 0x02,r6
    jsr @r3
    mov r14,r4

LAB_ce31afa:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31b4c
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce31b74,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31b78,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31b7c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31b5c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31b4c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31b4c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b52:
    #data 0x03f8
DAT_ce31b54:
    #data 0x0328
DAT_ce31b56:
    #data 0x0255
DAT_ce31b58:
    #data 0x03f1
DAT_ce31b5a:
    #data 0x03f0
DAT_ce31b5c:
    #data 0x0130
    #align4

DAT_ce31b60:
    #data 0x4322db6d
PTR_ce31b64:
    #data loc_8c050834
PTR_ce31b68:
    #data loc_8c034dee
PTR_ce31b6c:
    #data loc_8c0df690
PTR_ce31b70:
    #data loc_8c03544c
PTR_ce31b74:
    #data loc_8c034e8c
DAT_ce31b78:
    #data 0xc1555555
DAT_ce31b7c:
    #data 0x3dd55555

;=============================================

LAB_ce31b80:
    mov.w @(DAT_ce31cb2,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov 0x5C,r1
    mov.l r12,@-r15
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31cb4,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x34,r0
    fmov.s @r1,fr3
    mov 0x68,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @r1,fr3
    mov 0x60,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x6C,r1
    mov.l @(PTR_ce31cc8,pc),r3
    add r14,r1
    mov 0x60,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31cb6,pc),r0
    mov.l @(PTR_ce31ccc,pc),r12
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31c80
    mov 0x00,r13
    mov.l @(PTR_ce31cd0,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce31c1e
    mov.l @(PTR_ce31cd4,pc),r3
    mov 0x0D,r5
    mov 0x07,r6
    jsr @r3
    mov r14,r4
    mov 0x06,r0
    mov.b r0,@(0x6,r14)
    mov 0x2F,r0
    mov.w r0,@(0x1c,r14)
    mov r13,r0
    nop
    mov 0x16,r5
    mov.w r0,@(0x1e,r14)
    mov 0x04,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce31cba,pc),r0
    mov.w @(DAT_ce31cb8,pc),r3
    mov.b r3,@(r0,r14)
    add 0xB9,r0
    mov.l @(PTR_ce31cd8,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    bra LAB_ce31c78
    nop

LAB_ce31c1e:
    mov.w @(DAT_ce31cbc,pc),r0
    mov 0x02,r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31cbe,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31cc0,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x04,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce31cdc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31ce0,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31ce4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31ce8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31cc2,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31c72
    mov 0x02,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31c72:
    mov 0x16,r5
    jsr @r12
    mov r14,r4

LAB_ce31c78:
    mov.w @(DAT_ce31cc4,pc),r0
    mov 0x0A,r3
    bra LAB_ce31ca8
    mov.b r3,@(r0,r14)

LAB_ce31c80:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31ca8
    mov 0x05,r0
    mov 0x16,r5
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce31cbc,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31cbe,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)

LAB_ce31ca8:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31cb2:
    #data 0x03f8
DAT_ce31cb4:
    #data 0x0328
DAT_ce31cb6:
    #data 0x019e
DAT_ce31cb8:
    #data 0x00c2
DAT_ce31cba:
    #data 0x01f7
DAT_ce31cbc:
    #data 0x03f9
DAT_ce31cbe:
    #data 0x0327
DAT_ce31cc0:
    #data 0x01f9
DAT_ce31cc2:
    #data 0x0130
DAT_ce31cc4:
    #data 0x01a0
    #align4

PTR_ce31cc8:
    #data loc_8c034dee
PTR_ce31ccc:
    #data loc_8c034e8c
PTR_ce31cd0:
    #data loc_8c05264c
PTR_ce31cd4:
    #data loc_8c02fec4
PTR_ce31cd8:
    #data loc_8c0523d8
DAT_ce31cdc:
    #data 0xbfd55555
DAT_ce31ce0:
    #data 0x3bd55555
DAT_ce31ce4:
    #data 0x414db6db
DAT_ce31ce8:
    #data 0xbf092492

;=============================================

LAB_ce31cec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31e38,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce31e2a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31d6a
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce31e2a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31e2c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31e3c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31e40,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31d6a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31d70:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31e38,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d8a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31e44,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31d8a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31d92:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce31e2e,pc),r0
    mov r4,r14
    mov 0x02,r4
    mov.b r4,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce31e30,pc),r0
    mov 0x01,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31e32,pc),r0
    mov.l @(PTR_ce31e38,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31e58
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf/s LAB_ce31df2
    mov 0x3F,r4
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x16,r5
    mov.w @(0x1e,r14),r0
    mov 0x05,r6
    mov.l @(PTR_ce31e48,pc),r3
    add 0x01,r0
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31e4c,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31e34,pc),r0
    mov 0x21,r3
    bra LAB_ce31ede
    mov.l r3,@(r0,r14)

LAB_ce31df2:
    mov.w @(DAT_ce31e34,pc),r0
    mov 0x22,r1
    mov.l r1,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.l @(PTR_ce31e48,pc),r3
    mov 0x16,r5
    mov.w r0,@(0x1c,r14)
    mov 0x06,r6
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31e50,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31e54,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    bra LAB_ce31ede
    fmov fr3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e2a:
    #data 0x041c
DAT_ce31e2c:
    #data 0x01f9
DAT_ce31e2e:
    #data 0x03f8
DAT_ce31e30:
    #data 0x0328
DAT_ce31e32:
    #data 0x01ea
DAT_ce31e34:
    #data 0x02f0
    #align4

PTR_ce31e38:
    #data loc_8c034dee
PTR_ce31e3c:
    #data loc_8c0511b4
PTR_ce31e40:
    #data loc_8c051648
PTR_ce31e44:
    #data FUN_ce3001c
PTR_ce31e48:
    #data loc_8c034e8c
PTR_ce31e4c:
    #data loc_8c0df690
DAT_ce31e50:
    #data 0x40cdb6db
DAT_ce31e54:
    #data 0xbd892492

;=============================================

LAB_ce31e58:
    mov.w @(DAT_ce31ef2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31ede
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31ef4,pc),r0
    mov.l @(r0,r14),r2
    add 0xEC,r0
    mov.l r14,@(r0,r2)
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf/s LAB_ce31e82
    mov r14,r4
    mov.w @(DAT_ce31ef4,pc),r0
    mov 0x3A,r2
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov.b r2,@(r0,r3)
    bra LAB_ce31e8c
    nop

LAB_ce31e82:
    mov.w @(DAT_ce31ef4,pc),r0
    mov 0x3B,r3
    mov.l @(r0,r14),r1
    add 0xD9,r0
    mov.b r3,@(r0,r1)

LAB_ce31e8c:
    mov.l @(PTR_ce31ef8,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce31ef4,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce31efc,pc),r3
    mov r14,r5
    jsr @r3
    mov.l @(r0,r14),r4
    mova @(DAT_ce31f00,pc),r0
    fmov.s @r0,fr15
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce31eb8
    mova @(DAT_ce31f04,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr15,@(r0,r15)
    bra LAB_ce31ed4
    mov 0x03,r6

LAB_ce31eb8:
    mov.l @(PTR_ce31f08,pc),r3
    jsr @r3
    nop
    and 0x07,r0
    mov.b r0,@r15
    mova @(DAT_ce31f0c,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr15,@(r0,r15)
    mov.b @r15,r6
    extu.b r6,r6
    add 0x09,r6

LAB_ce31ed4:
    mov.l @(PTR_ce31f10,pc),r3
    mov r15,r5
    add 0x04,r5
    jsr @r3
    mov r14,r4

LAB_ce31ede:
    mov.w @(DAT_ce31ef4,pc),r0
    mov.l @(PTR_ce31f14,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ef2:
    #data 0x0141
DAT_ce31ef4:
    #data 0x01c8
    #align4

PTR_ce31ef8:
    #data loc_8c05933c
PTR_ce31efc:
    #data loc_8c05a49c
DAT_ce31f00:
    #data 0x42f00000
DAT_ce31f04:
    #data 0xc2700000
PTR_ce31f08:
    #data loc_8c03319e
DAT_ce31f0c:
    #data 0xc2f6aaaa
PTR_ce31f10:
    #data loc_8c0fdab6
PTR_ce31f14:
    #data loc_8c04cc1c

;=============================================

LAB_ce31f18:
    mov.w @(DAT_ce32024,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x02,r4
    mov 0x01,r2
    sts.l PR,@-r15
    mov.l @(r0,r14),r13
    mov.w @(DAT_ce32026,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32028,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3202a,pc),r0
    mov.l @(PTR_ce32034,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3202c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3200c
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce3202c,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce3200c
    mov.w @(DAT_ce3202e,pc),r0
    mov 0x23,r2
    mov 0x00,r3
    fldi0 fr4
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3202c,pc),r0
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32038,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3203c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32040,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32044,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r13)
    mov 0x60,r0
    fmov fr4,@(r0,r13)
    mov 0x68,r0
    fmov fr4,@(r0,r13)
    mov 0x6C,r0
    fmov fr4,@(r0,r13)
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fmov.s @(r0,r13),fr3
    mova @(DAT_ce32048,pc),r0
    fsub fr3,fr2
    fmov.s @r0,fr3
    mov 0x5C,r0
    fdiv fr3,fr2
    fmov fr2,@(r0,r13)
    mov 0x38,r0
    fmov.s @(r0,r13),fr2
    mov.w @(DAT_ce32030,pc),r0
    fmov.s @(r0,r13),fr1
    mova @(DAT_ce3204c,pc),r0
    fsub fr2,fr1
    fmov.s @r0,fr2
    mov 0x60,r0
    fdiv fr2,fr1
    fmov fr1,@(r0,r13)
    mov.w @(DAT_ce32032,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3201c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr1
    fneg fr1
    fmov fr1,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr1
    fneg fr1
    bra LAB_ce3201c
    fmov fr1,@(r0,r14)

LAB_ce3200c:
    lds.l @r15+,PR
    mov.w @(DAT_ce32024,pc),r0
    mov r14,r4
    mov.l @(PTR_ce32050,pc),r3
    mov.l @r15+,r13
    mov.l @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3201c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32024:
    #data 0x01c8
DAT_ce32026:
    #data 0x03f8
DAT_ce32028:
    #data 0x0328
DAT_ce3202a:
    #data 0x01ea
DAT_ce3202c:
    #data 0x0141
DAT_ce3202e:
    #data 0x02f0
DAT_ce32030:
    #data 0x041c
DAT_ce32032:
    #data 0x0130
    #align4

PTR_ce32034:
    #data loc_8c034dee
DAT_ce32038:
    #data 0xc0555555
DAT_ce3203c:
    #data 0x3d555555
DAT_ce32040:
    #data 0x40892492
DAT_ce32044:
    #data 0xbe892492
DAT_ce32048:
    #data 0x41800000
DAT_ce3204c:
    #data 0x41000000
PTR_ce32050:
    #data loc_8c04cc1c

;=============================================

LAB_ce32054:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce321d4,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov 0x01,r2
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce321d6,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce321d8,pc),r0
    mov.l @(PTR_ce321e8,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x5C,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce321da,pc),r0
    mov.l @(r0,r14),r4
    mov 0x34,r0
    add r4,r1
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov.w @(DAT_ce321da,pc),r0
    mov.l @(r0,r14),r4
    mov 0x5C,r0
    add r4,r1
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov.w @(DAT_ce321da,pc),r0
    mov.l @(r0,r14),r4
    mov 0x38,r0
    add r4,r1
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov.w @(DAT_ce321da,pc),r0
    mov.l @(r0,r14),r4
    mov 0x60,r0
    add r4,r1
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov.w @(DAT_ce321da,pc),r0
    mov.l @(r0,r14),r5
    mov 0x38,r0
    fmov.s @(r0,r5),fr3
    mov.w @(DAT_ce321dc,pc),r0
    fmov.s @(r0,r5),fr2
    fcmp/gt fr3,fr2
    bf/s LAB_ce3213e
    mov 0x00,r4
    mov.w @(DAT_ce321da,pc),r0
    fldi0 fr4
    mov.l @(r0,r14),r2
    mov 0x5C,r0
    fmov fr4,@(r0,r2)
    mov.w @(DAT_ce321da,pc),r0
    mov.l @(r0,r14),r3
    mov 0x60,r0
    fmov fr4,@(r0,r3)
    mov.w @(DAT_ce321da,pc),r0
    mov.l @(r0,r14),r3
    mov 0x68,r0
    fmov fr4,@(r0,r3)
    mov.w @(DAT_ce321da,pc),r0
    mov.l @(r0,r14),r3
    mov 0x6C,r0
    fmov fr4,@(r0,r3)
    mov.w @(DAT_ce321da,pc),r0
    mov.l @(r0,r14),r5
    mov.w @(DAT_ce321dc,pc),r0
    fmov.s @(r0,r5),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r5)
    mov.w @(DAT_ce321da,pc),r0
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce321de,pc),r0
    mov.b r4,@(r0,r3)

LAB_ce3213e:
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce321dc,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce321ce
    mov.w @(DAT_ce321e0,pc),r0
    mov.l @(PTR_ce321ec,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce321e2,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce321dc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x24,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce321f0,pc),r2
    mov 0x16,r5
    mov 0x07,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce321da,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce321f4,pc),r3
    mov r14,r5
    jsr @r3
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce321da,pc),r0
    mov 0x10,r3
    mov.l @(r0,r14),r2
    add 0x2E,r0
    mov.b r3,@(r0,r2)
    add 0xD2,r0
    mov.l @(r0,r14),r2
    add 0xD9,r0
    mov 0x3C,r3
    mov.b r3,@(r0,r2)
    mov.b r3,@(r0,r14)
    add 0x27,r0
    mov.l @(r0,r14),r2
    mova @(DAT_ce321f8,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce321dc,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r2)
    mov 0x01,r2
    mov.w @(DAT_ce321da,pc),r0
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce321de,pc),r0
    mov.b r2,@(r0,r3)
    mov.l @(PTR_ce321fc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce321e4,pc),r0
    mov 0x24,r2
    mov.l @(PTR_ce32200,pc),r3
    mov.l r2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce321ce:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce321d4:
    #data 0x03f8
DAT_ce321d6:
    #data 0x0328
DAT_ce321d8:
    #data 0x01ea
DAT_ce321da:
    #data 0x01c8
DAT_ce321dc:
    #data 0x041c
DAT_ce321de:
    #data 0x012c
DAT_ce321e0:
    #data 0x03f9
DAT_ce321e2:
    #data 0x0327
DAT_ce321e4:
    #data 0x02f0
    #align4

PTR_ce321e8:
    #data loc_8c034dee
PTR_ce321ec:
    #data loc_8c0511b4
PTR_ce321f0:
    #data loc_8c034e8c
PTR_ce321f4:
    #data loc_8c05a49c
DAT_ce321f8:
    #data 0x424db6db
PTR_ce321fc:
    #data loc_8c05933c
PTR_ce32200:
    #data loc_8c02fd26

;=============================================

LAB_ce32204:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3235c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce32224
    lds.l @r15+,PR
    mov.l @(PTR_ce32360,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32224:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3222a:
    mov r4,r3
    mov.l @(PTR_ce32364,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3223c:
    mov.w @(DAT_ce3234a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32258
    mov.w @(DAT_ce3234e,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3234c,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32258:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32350,pc),r0
    mov.w r0,@(0x1c,r14)
    bsr FUN_ce31966
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce32368,pc),r3
    mov.b @(r0,r14),r6
    mov 0x01,r7
    mov 0x07,r5
    extu.b r6,r6
    add 0x03,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32352,pc),r0
    mov 0x38,r2
    mov 0x00,r4
    mov.l @(PTR_ce3236c,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x16,r5
    mov.b @(0x2,r14),r0
    mov 0x08,r6
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32370,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32374,pc),r3
    mov r14,r4
    mov 0x00,r6
    mov 0x05,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce322b6:
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32354,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce32356,pc),r0
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce3234a,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce322d4
    bra LAB_ce322d6
    mov 0x02,r3

LAB_ce322d4:
    mov 0x00,r3

LAB_ce322d6:
    mov.w @(DAT_ce32358,pc),r0
    mov 0x00,r5
    fldi0 fr4
    mov 0x01,r6
    mov.b r3,@(r0,r4)
    mov.b @(0x6,r4),r0
    mov.l @(PTR_ce3237c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3234e,pc),r0
    mov.b r5,@(r0,r4)
    add 0x01,r0
    mov.b r5,@(r0,r4)
    mova @(DAT_ce32378,pc),r0
    fmov.s fr4,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r15,r5
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3230a:
    mov.w @(DAT_ce32354,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32356,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3235a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32340
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r3,r6
    mov 0x06,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3235a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32374,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32340:
    lds.l @r15+,PR
    mov.l @(PTR_ce3235c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3234a:
    #data 0x0255
DAT_ce3234c:
    #data 0x00ff
DAT_ce3234e:
    #data 0x03f0
DAT_ce32350:
    #data 0x0080
DAT_ce32352:
    #data 0x01a1
DAT_ce32354:
    #data 0x03f8
DAT_ce32356:
    #data 0x0328
DAT_ce32358:
    #data 0x03f1
DAT_ce3235a:
    #data 0x0141
    #align4

PTR_ce3235c:
    #data loc_8c034dee
PTR_ce32360:
    #data loc_8c051648
PTR_ce32364:
    #data PTR_ce343f4
PTR_ce32368:
    #data loc_8c03544c
PTR_ce3236c:
    #data loc_8c2896b0
PTR_ce32370:
    #data loc_8c034e8c
PTR_ce32374:
    #data loc_8c0de074
DAT_ce32378:
    #data 0x4322db6d
PTR_ce3237c:
    #data loc_8c050834

;=============================================

LAB_ce32380:
    mov.w @(DAT_ce3244a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3244c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt/s LAB_ce323d2
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce32458,pc),r3
    mov 0x09,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3245c,pc),r2
    mov 0x07,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3244e,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32450,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    bra LAB_ce32404
    mov.b r13,@(r0,r14)

LAB_ce323d2:
    mov.w @(DAT_ce32452,pc),r0
    mov.l @(PTR_ce32460,pc),r12
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce323ec
    mov.w @(DAT_ce32452,pc),r0
    mov 0x00,r5
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov 0x03,r5
    jsr @r12
    mov r14,r4

LAB_ce323ec:
    mov.w @(DAT_ce32452,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce32404
    mov.w @(DAT_ce32452,pc),r0
    mov 0x01,r5
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov 0x02,r5
    jsr @r12
    mov r14,r4

LAB_ce32404:
    lds.l @r15+,PR
    mov.l @(PTR_ce32464,pc),r3
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32412:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32464,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3242c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32468,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3242c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32434:
    mov.w @(DAT_ce32454,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32444
    mov.l @(PTR_ce3246c,pc),r3
    jmp @r3
    nop

LAB_ce32444:
    mov.l  @(PTR_ce32470,pc),r2
    jmp @r2
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3244a:
    #data 0x03f8
DAT_ce3244c:
    #data 0x0328
DAT_ce3244e:
    #data 0x03f9
DAT_ce32450:
    #data 0x0327
DAT_ce32452:
    #data 0x0141
DAT_ce32454:
    #data 0x01f9
    #align4

PTR_ce32458:
    #data loc_8c034e8c
PTR_ce3245c:
    #data loc_8c0de074
PTR_ce32460:
    #data loc_8c091c2c
PTR_ce32464:
    #data loc_8c034dee
PTR_ce32468:
    #data loc_8c051648
PTR_ce3246c:
    #data loc_8c05176e
PTR_ce32470:
    #data FUN_ce3001c

;=============================================

LAB_ce32474:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    fldi0 fr15
    tst r0,r0
    bf/s LAB_ce324f8
    mov 0x00,r13
    mov.w @(DAT_ce32562,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce324a0
    mov.w @(DAT_ce32566,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32564,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce324a0:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    bsr FUN_ce31966
    mov r14,r4
    mova @(DAT_ce32574,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce32568,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce324c6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce324c6:
    mov.w @(DAT_ce3256a,pc),r0
    mov 0x3D,r3
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32578,pc),r3
    mov 0x0A,r6
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3257c,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce32556
    nop

LAB_ce324f8:
    mov.w @(DAT_ce3256c,pc),r0
    mov 0x02,r2
    mov 0x05,r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3256e,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32562,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32512
    bra LAB_ce32514
    mov 0x02,r2

LAB_ce32512:
    mov 0x00,r2

LAB_ce32514:
    mov.w @(DAT_ce32570,pc),r0
    mov.l @(PTR_ce32580,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32572,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32556
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov r15,r5
    mov.w @(DAT_ce32572,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce32588,pc),r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32566,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce32584,pc),r0
    fmov.s fr15,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr15,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32556:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32562:
    #data 0x0255
DAT_ce32564:
    #data 0x00ff
DAT_ce32566:
    #data 0x03f0
DAT_ce32568:
    #data 0x0130
DAT_ce3256a:
    #data 0x01a1
DAT_ce3256c:
    #data 0x03f8
DAT_ce3256e:
    #data 0x0328
DAT_ce32570:
    #data 0x03f1
DAT_ce32572:
    #data 0x0141
    #align4

DAT_ce32574:
    #data 0xc0a00000
PTR_ce32578:
    #data loc_8c2896b0
PTR_ce3257c:
    #data loc_8c034e8c
PTR_ce32580:
    #data loc_8c034dee
DAT_ce32584:
    #data 0x4322db6d
PTR_ce32588:
    #data loc_8c050834

;=============================================

LAB_ce3258c:
    mov.w @(DAT_ce326b0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce326b2,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    add r14,r1
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov.l @(PTR_ce326bc,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32612
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x18,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce326c0,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce326b4,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32606
    mov 0x11,r6
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32606:
    lds.l @r15+,PR
    mov.l @(PTR_ce326c4,pc),r3
    mov 0x16,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32612:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32618:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    fmov.s fr13,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce326b0,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    mov 0x68,r1
    mov.w @(DAT_ce326b2,pc),r0
    add r14,r1
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr14
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr14,fr3
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fldi0 fr2
    fmul fr14,fr3
    fcmp/gt fr3,fr2
    bf/s LAB_ce32688
    fldi0 fr15
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)

LAB_ce32688:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt/s LAB_ce326c8
    mov 0x00,r13
    mov.w @(DAT_ce326b6,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce326b8,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov 0x07,r0
    mov.b r0,@(0x6,r14)
    mov 0x04,r0
    bra LAB_ce3289a
    mov.w r0,@(0x1c,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326b0:
    #data 0x03f8
DAT_ce326b2:
    #data 0x0328
DAT_ce326b4:
    #data 0x0130
DAT_ce326b6:
    #data 0x03f9
DAT_ce326b8:
    #data 0x0327
    #align4

PTR_ce326bc:
    #data loc_8c034dee
DAT_ce326c0:
    #data 0x3e555555
PTR_ce326c4:
    #data loc_8c034e8c

;=============================================

LAB_ce326c8:
    mov.l @(PTR_ce3284c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bf/s LAB_ce326d8
    mov r0,r12
    bra LAB_ce3289a
    nop

LAB_ce326d8:
    mov.l @(PTR_ce32850,pc),r2
    mov 0x0D,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32832,pc),r0
    mov.b r13,@(r0,r14)
    mov r13,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov r12,r5
    mov.w @(DAT_ce32836,pc),r0
    mov.w @(DAT_ce32834,pc),r3
    mov.b r3,@(r0,r14)
    mov.b r3,@(r0,r12)
    mov.l @(PTR_ce32854,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32838,pc),r0
    mov 0x0A,r3
    mov.l r13,@(r0,r14)
    add 0x04,r0
    mov.l r13,@(r0,r14)
    mov.w @(DAT_ce3283a,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32858,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce3283c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3272a
    mov 0x04,r0
    fmov.s @(r0,r15),fr3
    mov 0x04,r0
    fneg fr3
    fmov fr3,@(r0,r15)

LAB_ce3272a:
    mov 0x34,r0
    mov.l @(PTR_ce32860,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x04,r0
    fmov.s @(r0,r15),fr2
    mov 0x04,r0
    mov r15,r4
    mov 0x00,r7
    fadd fr3,fr2
    mov 0x02,r6
    fmov fr2,@(r0,r15)
    mova @(DAT_ce3285c,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x08,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce3283e,pc),r0
    mov.b @(r0,r14),r5
    extu.b r5,r5
    jsr @r3
    add 0x04,r4
    mov 0x34,r0
    fmov.s @(r0,r14),fr13
    mov 0x38,r0
    fmov.s @(r0,r14),fr14
    mov 0xFF,r3
    mov.w @(DAT_ce32840,pc),r0
    mov 0x20,r2
    mov.b r3,@(r0,r14)
    add 0xF6,r0
    mov.b r2,@(r0,r14)
    add 0x78,r0
    mov.l @(PTR_ce32864,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce32842,pc),r0
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce32844,pc),r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32868,pc),r0
    fmov.s @r0,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fsub fr13,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce3286c,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fsub fr14,fr3
    fdiv fr4,fr3
    fadd fr2,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32870,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x28,r0
    mov.l @(PTR_ce32874,pc),r3
    mov 0x16,r5
    mov.w r0,@(0x1c,r14)
    mov 0x10,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32840,pc),r0
    mov 0xFF,r2
    mov 0x09,r6
    mov.b r2,@(r0,r14)
    add 0xF6,r0
    mov.b r13,@(r0,r14)
    mov 0x34,r0
    fmov fr13,@(r0,r14)
    mov 0x38,r0
    fmov fr14,@(r0,r14)
    mov 0x0D,r5
    mov.w @(DAT_ce32846,pc),r0
    mov.l @(r0,r14),r3
    mov 0x01,r0
    mov.w r0,@(0x1c,r3)
    mov.w @(DAT_ce32846,pc),r0
    mov.l @(PTR_ce32874,pc),r3
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce32848,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce32846,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce32846,pc),r0
    mov.w @(DAT_ce3284a,pc),r3
    mov.l @(r0,r14),r4
    mov.l @(DAT_ce32878,pc),r2
    mov.l r4,@r15
    add r3,r4
    mov.l @(0x4,r4),r0
    mov.l @r4,r1
    and 0x01,r0
    and r2,r1
    or r0,r1
    tst r1,r1
    bt LAB_ce3282a
    mov.w @(DAT_ce32846,pc),r0
    mov 0x01,r3
    mov.l @(r0,r14),r1
    add 0x0A,r0
    mov.b @(r0,r1),r2
    xor r3,r2
    mov.b r2,@(r0,r1)
    add 0xF6,r0
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r4),r2
    mov.w @(DAT_ce3283c,pc),r0
    extu.b r2,r2
    mov.w r2,@(r0,r4)

LAB_ce3282a:
    mov.w @(DAT_ce32846,pc),r0
    mov.l @(r0,r14),r3
    bra LAB_ce3287c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32832:
    #data 0x0141
DAT_ce32834:
    #data 0x00c3
DAT_ce32836:
    #data 0x01f7
DAT_ce32838:
    #data 0x02e4
DAT_ce3283a:
    #data 0x01a0
DAT_ce3283c:
    #data 0x0130
DAT_ce3283e:
    #data 0x01d2
DAT_ce32840:
    #data 0x015a
DAT_ce32842:
    #data 0x02a4
DAT_ce32844:
    #data 0x02a8
DAT_ce32846:
    #data 0x01c8
DAT_ce32848:
    #data 0x041c
DAT_ce3284a:
    #data 0x0414
    #align4

PTR_ce3284c:
    #data loc_8c045790
PTR_ce32850:
    #data loc_8c02fec4
PTR_ce32854:
    #data loc_8c0523d8
DAT_ce32858:
    #data 0xc3055555
DAT_ce3285c:
    #data 0x41892492
PTR_ce32860:
    #data loc_8c0fd966
PTR_ce32864:
    #data loc_8c04ce3a
DAT_ce32868:
    #data 0x42200000
DAT_ce3286c:
    #data 0x41809249
DAT_ce32870:
    #data 0xbf4db6db
PTR_ce32874:
    #data loc_8c034e8c
DAT_ce32878:
    #data 0x90001010

;=============================================

LAB_ce3287c:
    add 0xEC,r0
    mov.l r14,@(r0,r3)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov 0x3D,r2
    mov.b r2,@(r0,r3)
    mov.l @(PTR_ce329d8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce329dc,pc),r3
    mov 0x03,r5
    mov.w @(DAT_ce329cc,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4

LAB_ce3289a:
    add 0x10,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr13
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce328ac:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce329ce,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov 0x01,r2
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce329d0,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce329d2,pc),r0
    mov.l @(PTR_ce329e0,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce329d4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce328e0
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)

LAB_ce328e0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce328e6:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov.l @(PTR_ce329e0,pc),r3
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    mov r5,r13
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce329c2
    mov.b @(0x7,r14),r0
    mov 0x16,r5
    fldi0 fr4
    mov 0x0B,r6
    add 0x01,r0
    mov.l @(PTR_ce329ec,pc),r3
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce329e4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce329e8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce329d6,pc),r0
    mov 0xFF,r2
    mov 0x22,r3
    mov.b r2,@(r0,r14)
    add 0xF6,r0
    mov.b r3,@(r0,r14)
    add 0x78,r0
    mov.l @(PTR_ce329f0,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce329d6,pc),r0
    mov 0xFF,r2
    mov 0x00,r3
    mov.b r2,@(r0,r14)
    add 0xF6,r0
    mov.b r3,@(r0,r14)
    add 0x64,r0
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov 0x3E,r3
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce329d8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce329f4,pc),r2
    mov r14,r5
    mov 0x01,r6
    jsr @r2
    mov r13,r4
    mov.l @(PTR_ce329dc,pc),r3
    mov 0x03,r5
    jsr @r3
    mov r13,r4
    mova @(DAT_ce329f8,pc),r0
    mov.l @(PTR_ce32a00,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce329fc,pc),r0
    mov r15,r5
    mov 0x03,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce329c2:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329cc:
    #data 0x01c8
DAT_ce329ce:
    #data 0x03f8
DAT_ce329d0:
    #data 0x0328
DAT_ce329d2:
    #data 0x01ea
DAT_ce329d4:
    #data 0x0141
DAT_ce329d6:
    #data 0x015a
    #align4

PTR_ce329d8:
    #data loc_8c05933c
PTR_ce329dc:
    #data loc_8c0424a6
PTR_ce329e0:
    #data loc_8c034dee
DAT_ce329e4:
    #data 0x41092492
DAT_ce329e8:
    #data 0xbf4db6db
PTR_ce329ec:
    #data loc_8c034e8c
PTR_ce329f0:
    #data loc_8c04ce3a
PTR_ce329f4:
    #data loc_8c05a49c
DAT_ce329f8:
    #data 0xc2555555
DAT_ce329fc:
    #data 0x42092492
PTR_ce32a00:
    #data loc_8c0fdab6

;=============================================

LAB_ce32a04:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov.l @(PTR_ce32b10,pc),r3
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    mov r5,r13
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32ad8
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov.w @(DAT_ce32b0a,pc),r0
    fmov.s @(r0,r14),fr1
    fcmp/gt fr2,fr1
    bf LAB_ce32ad8
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32b14,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov.l @(PTR_ce32b18,pc),r3
    mov 0x0F,r6
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32b10,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov 0x3E,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32b0c,pc),r0
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce32b1c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32b20,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r13,r4
    mov.l @(PTR_ce32b24,pc),r3
    mov r14,r5
    mov 0x01,r6
    jsr @r3
    mov r13,r4
    mova @(DAT_ce32b28,pc),r0
    mov.l @(PTR_ce32b30,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32b2c,pc),r0
    mov r15,r5
    mov 0x03,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32ad8:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32ae2:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32b10,pc),r3
    mov r4,r14
    jsr @r3
    mov r5,r13
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32b34
    mov.b @(0x7,r14),r0
    mov 0x21,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32b0e,pc),r0
    bra LAB_ce32bc4
    mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b0a:
    #data 0x02a8
DAT_ce32b0c:
    #data 0x01b4
DAT_ce32b0e:
    #data 0x0150
    #align4

PTR_ce32b10:
    #data loc_8c034dee
DAT_ce32b14:
    #data 0xbff00000
PTR_ce32b18:
    #data loc_8c034e8c
PTR_ce32b1c:
    #data loc_8c05933c
PTR_ce32b20:
    #data loc_8c0424a6
PTR_ce32b24:
    #data loc_8c05a49c
DAT_ce32b28:
    #data 0xc2555555
DAT_ce32b2c:
    #data 0x42092492
PTR_ce32b30:
    #data loc_8c0fdab6

;=============================================

LAB_ce32b34:
    mov.w @(DAT_ce32c98,pc),r0
    mov.b @(r0,r14),r1
    cmp/pz r1
    bf LAB_ce32bc4
    mov.b @(r0,r14),r2
    cmp/pl r2
    bf LAB_ce32b8c
    mov.l @(DAT_ce32ca0,pc),r1
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov 0x60,r0
    lds r1,FPUL
    mov 0x3E,r3
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce32c9a,pc),r0
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce32ca4,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ca8,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r13,r4
    mov.l @(PTR_ce32cac,pc),r3
    mov r14,r5
    mov 0x01,r6
    jsr @r3
    mov r13,r4
    fldi0 fr3
    mova @(DAT_ce32cb0,pc),r0
    fmov.s fr3,@r15
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce32cb4,pc),r3
    mov 0x03,r6
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r13,r4

LAB_ce32b8c:
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce32bc4:
    mov 0x34,r0
    mov.l @(PTR_ce32cb8,pc),r3
    fmov.s @(r0,r13),fr15
    mov 0x38,r0
    fmov.s @(r0,r13),fr14
    mov r13,r5
    jsr @r3
    mov r14,r4
    mov 0x34,r0
    fmov fr15,@(r0,r13)
    mov 0x38,r0
    fmov fr14,@(r0,r13)
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32bea:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.l @(PTR_ce32cbc,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce32c9c,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32c90
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov 0x21,r3
    fmov fr3,@(r0,r14)
    mov 0xFF,r2
    mov.w @(DAT_ce32c9e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0A,r0
    mov.l @(PTR_ce32cc0,pc),r3
    mov.b r2,@(r0,r14)
    mov.l @r15,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32c9e,pc),r0
    mov 0x00,r2
    mov 0xFF,r3
    fldi0 fr4
    mov.b r2,@(r0,r14)
    add 0x0A,r0
    mov.b r3,@(r0,r14)
    mov 0x60,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32cc4,pc),r3
    mov 0x16,r5
    fmov fr4,@(r0,r14)
    mov 0x0C,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32cbc,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce32c90:
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c98:
    #data 0x0141
DAT_ce32c9a:
    #data 0x01b4
DAT_ce32c9c:
    #data 0x02a8
DAT_ce32c9e:
    #data 0x0150
    #align4

DAT_ce32ca0:
    #data 0x412b6db6
PTR_ce32ca4:
    #data loc_8c05933c
PTR_ce32ca8:
    #data loc_8c0424a6
PTR_ce32cac:
    #data loc_8c05a49c
DAT_ce32cb0:
    #data 0x424db6db
PTR_ce32cb4:
    #data loc_8c0fdab6
PTR_ce32cb8:
    #data loc_8c04cc1c
PTR_ce32cbc:
    #data loc_8c034dee
PTR_ce32cc0:
    #data loc_8c04ce54
PTR_ce32cc4:
    #data loc_8c034e8c

;=============================================

LAB_ce32cc8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32dec,pc),r3
    mov r4,r14
    jsr @r3
    mov r5,r13
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bf/s LAB_ce32cee
    mov 0x00,r12
    bra LAB_ce32e20
    nop

LAB_ce32cee:
    mov.w @(DAT_ce32dda,pc),r0
    mov.l @(PTR_ce32df0,pc),r3
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce32ddc,pc),r0
    mov.b r12,@(r0,r14)
    add 0x01,r0
    jsr @r3
    mov.b r12,@(r0,r14)
    mov.l @(PTR_ce32df4,pc),r2
    mov 0x2B,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32df8,pc),r3
    mov 0x16,r5
    mov 0x0D,r6
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x21,r3
    mov.w r0,@(0x1e,r14)
    mov r13,r5
    mov.w @(DAT_ce32dde,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x34,r0
    mov.l @(PTR_ce32dfc,pc),r3
    fmov.s @(r0,r13),fr15
    jsr @r3
    mov r14,r4
    mov 0x34,r0
    mov.l @(PTR_ce32e04,pc),r4
    fmov fr15,@(r0,r13)
    mov.w @(DAT_ce32de0,pc),r0
    fmov.s @(r0,r13),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r13)
    mova @(DAT_ce32e00,pc),r0
    fmov.s @r0,fr6
    mova @(DAT_ce32e08,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce32de2,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32d6a
    fmov fr6,fr4
    mova @(DAT_ce32e0c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32de4,pc),r0
    fmov.s @(r0,r4),fr6
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fadd fr3,fr6
    fcmp/gt fr6,fr2
    bf LAB_ce32d80
    bra LAB_ce32d8c
    fmov fr5,fr4

LAB_ce32d6a:
    mova @(DAT_ce32e10,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32de6,pc),r0
    fmov.s @(r0,r4),fr7
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fadd fr3,fr7
    fcmp/gt fr2,fr7
    bf/s LAB_ce32d8c
    fmov fr5,fr4
    fmov fr6,fr4

LAB_ce32d80:
    mov.w @(DAT_ce32de8,pc),r0
    mov.b r12,@(r0,r14)
    extu.b r12,r12
    mov.w @(DAT_ce32de2,pc),r0
    bra LAB_ce32d98
    mov.w r12,@(r0,r14)

LAB_ce32d8c:
    mov.w @(DAT_ce32de8,pc),r0
    mov 0x01,r2
    mov r2,r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32de2,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce32d98:
    mov 0x34,r0
    fmov fr4,fr3
    fmov.s @(r0,r13),fr4
    mov.w @(DAT_ce32de0,pc),r0
    fadd fr3,fr4
    fmov.s @(r0,r14),fr6
    mova @(DAT_ce32e14,pc),r0
    fmov.s @r0,fr5
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fsub fr3,fr4
    fldi0 fr3
    fdiv fr5,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce32e18,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fsub fr6,fr3
    fdiv fr5,fr3
    fadd fr2,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32e1c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x18,r0
    bra LAB_ce32e6e
    mov.w r0,@(0x1c,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32dda:
    #data 0x03f9
DAT_ce32ddc:
    #data 0x0327
DAT_ce32dde:
    #data 0x0150
DAT_ce32de0:
    #data 0x041c
DAT_ce32de2:
    #data 0x0130
DAT_ce32de4:
    #data 0x009c
DAT_ce32de6:
    #data 0x0098
DAT_ce32de8:
    #data 0x01d2
    #align4

PTR_ce32dec:
    #data loc_8c034dee
PTR_ce32df0:
    #data loc_8c02fd26
PTR_ce32df4:
    #data loc_8c042008
PTR_ce32df8:
    #data loc_8c034e8c
PTR_ce32dfc:
    #data loc_8c04cc1c
DAT_ce32e00:
    #data 0x437d5555
PTR_ce32e04:
    #data loc_8c26a518
DAT_ce32e08:
    #data 0xc37d5555
DAT_ce32e0c:
    #data 0xc3200000
DAT_ce32e10:
    #data 0x43200000
DAT_ce32e14:
    #data 0x42400000
DAT_ce32e18:
    #data 0x419a4924
DAT_ce32e1c:
    #data 0xbf4db6db

;=============================================

LAB_ce32e20:
    mov.l @(PTR_ce32eb4,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32eaa,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32e6e
    mov.w @(DAT_ce32eaa,pc),r0
    mov 0x3E,r3
    mov.b r12,@(r0,r14)
    add 0x73,r0
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce32eb8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ebc,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r13,r4
    mov.l @(PTR_ce32ec0,pc),r3
    mov r14,r5
    mov 0x01,r6
    jsr @r3
    mov r13,r4
    mova @(DAT_ce32ec4,pc),r0
    mov.l @(PTR_ce32ecc,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32ec8,pc),r0
    mov r15,r5
    mov 0x03,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32e6e:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32e7c:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32eac,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce32ed0,pc),r1
    mov.b r4,@(r0,r14)
    mov 0x01,r2
    mov.w @(DAT_ce32eae,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32eb0,pc),r0
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    mov.w @(DAT_ce32eb2,pc),r0
    mov.l @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32eaa:
    #data 0x0141
DAT_ce32eac:
    #data 0x03f8
DAT_ce32eae:
    #data 0x0328
DAT_ce32eb0:
    #data 0x01ea
DAT_ce32eb2:
    #data 0x01c8
    #align4

PTR_ce32eb4:
    #data loc_8c04cc1c
PTR_ce32eb8:
    #data loc_8c05933c
PTR_ce32ebc:
    #data loc_8c0424a6
PTR_ce32ec0:
    #data loc_8c05a49c
DAT_ce32ec4:
    #data 0xc2555555
DAT_ce32ec8:
    #data 0x42092492
PTR_ce32ecc:
    #data loc_8c0fdab6
PTR_ce32ed0:
    #data PTR_ce34408

;=============================================

LAB_ce32ed4:
    mov.w @(DAT_ce33014,pc),r0
    mov 0x5C,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    add r14,r1
    mov.l r12,@-r15
    mov 0x01,r12
    mov.l r11,@-r15
    mov 0x02,r11
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.l @(r0,r14),r13
    add 0x22,r0
    mov.b r12,@(r0,r14)
    add 0x03,r0
    mov.b r11,@(r0,r14)
    mov 0x34,r0
    fmov.s @r1,fr3
    mov 0x68,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    mov.l @(PTR_ce33020,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce33016,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32f64
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce33024,pc),r3
    fmov fr3,@(r0,r14)
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
    mov.l @(PTR_ce33028,pc),r3
    mov 0x16,r5
    fmov fr4,@(r0,r14)
    mov 0x0E,r6
    jsr @r3
    mov r14,r4

LAB_ce32f64:
    mov.w @(0x1e,r14),r0
    mov 0x05,r3
    cmp/ge r3,r0
    bt LAB_ce32f90
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce32f90
    mov r11,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x00,r5
    mov.w @(0x1e,r14),r0
    mov.l @(PTR_ce3302c,pc),r2
    mov r0,r6
    jsr @r2
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)

LAB_ce32f90:
    mov.w @(DAT_ce33018,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33006
    mov.l @(r0,r14),r3
    mov.l @(PTR_ce33030,pc),r10
    cmp/pz r3
    bt LAB_ce32fd2
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce33028,pc),r3
    mov 0x07,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov r11,r0
    nop
    mov.b r0,@(0x5,r10)
    mov r12,r0
    nop
    mov.b r0,@(0x6,r10)
    mov 0x10,r3
    mov.w @(DAT_ce3301a,pc),r0
    mov 0x4A,r2
    mov.b r3,@(r0,r13)
    add 0xAB,r0
    bra LAB_ce32fe0
    mov.b r2,@(r0,r13)

LAB_ce32fd2:
    mov r12,r0
    nop
    mov.b r0,@(0x5,r10)
    mov 0x47,r3
    mov.b r0,@(0x6,r10)
    mov.w @(DAT_ce3301c,pc),r0
    mov.b r3,@(r0,r13)

LAB_ce32fe0:
    mov.w @(DAT_ce33018,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce33034,pc),r3
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3301e,pc),r0
    mov.l r14,@(r0,r13)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r4
    mov.l @(PTR_ce33038,pc),r2
    mov 0x01,r6
    mov r14,r5
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33006:
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33014:
    #data 0x01c8
DAT_ce33016:
    #data 0x041c
DAT_ce33018:
    #data 0x02e4
DAT_ce3301a:
    #data 0x01f6
DAT_ce3301c:
    #data 0x01a1
DAT_ce3301e:
    #data 0x01b4
    #align4

PTR_ce33020:
    #data loc_8c034dee
PTR_ce33024:
    #data loc_8c0511b4
PTR_ce33028:
    #data loc_8c034e8c
PTR_ce3302c:
    #data loc_8c091f1a
PTR_ce33030:
    #data loc_8c26a518
PTR_ce33034:
    #data loc_8c05933c
PTR_ce33038:
    #data loc_8c05a49c

;=============================================

LAB_ce3303c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3318c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33056
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33190,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33056:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3305e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3318c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3308c
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce3308c
    mov.l @(PTR_ce33194,pc),r3
    mov 0x06,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov 0x12,r6
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3308c:
    mov.w @(DAT_ce33182,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce330a6
    mov.w @(DAT_ce33182,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce33198,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    mov 0x01,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce330a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce330ac:
    mov r4,r3
    mov.l @(PTR_ce3319c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce330be:
    mov r4,r3
    mov.l @(PTR_ce331a0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce330d0:
    mov.l r14,@-r15
    mov 0x0A,r6
    sts.l PR,@-r15
    mov.l @(PTR_ce33194,pc),r3
    mov r4,r14
    jsr @r3
    mov 0x15,r5
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce33184,pc),r0
    mov.l @(PTR_ce331a4,pc),r4
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    shll2 r0
    fmov.s @(r0,r4),fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33184,pc),r0
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    shll r3
    shll2 r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33186,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33126
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33126:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3312c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce331a8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce331ac,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33188,pc),r0
    mov 0x34,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce331b0,pc),r3
    mov 0x15,r5
    mov.l r4,@(r0,r14)
    mov 0x05,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33194,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce331b4,pc),r3
    mov 0x17,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33182:
    #data 0x0141
DAT_ce33184:
    #data 0x01a3
DAT_ce33186:
    #data 0x0130
DAT_ce33188:
    #data 0x01a1
    #align4

PTR_ce3318c:
    #data loc_8c034dee
PTR_ce33190:
    #data loc_8c051648
PTR_ce33194:
    #data loc_8c034e8c
PTR_ce33198:
    #data loc_8c091ee0
PTR_ce3319c:
    #data PTR_ce3441c
PTR_ce331a0:
    #data PTR_ce3443c
PTR_ce331a4:
    #data DAT_ce34450
PTR_ce331a8:
    #data FUN_ce31966
PTR_ce331ac:
    #data loc_8c056de4
PTR_ce331b0:
    #data loc_8c2896b0
PTR_ce331b4:
    #data loc_8c04223a

;=============================================

LAB_ce331b8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3328c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce331d6
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    bra LAB_ce330d0
    mov.l @r15+,r14

LAB_ce331d6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce331dc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3328c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce331f6
    lds.l @r15+,PR
    mov.l @(PTR_ce33290,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce331f6:
    mov.w @(DAT_ce33284,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3320c
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce3320c:
    mov 0x68,r1
    add r14,r1
    mov 0x5C,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3323c:
    mov.l @(PTR_ce33294,pc),r3
    jmp @r3
    nop

LAB_ce33242:
    mov.l @(PTR_ce33294,pc),r3
    jmp @r3
    nop

LAB_ce33248:
    mov.w @(DAT_ce33286,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce33272
    mov.l @(PTR_ce33298,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33288,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33272
    mov.w @(DAT_ce33288,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce33272:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3329c,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33284:
    #data 0x0141
DAT_ce33286:
    #data 0x01f9
DAT_ce33288:
    #data 0x041c
    #align4

PTR_ce3328c:
    #data loc_8c034dee
PTR_ce33290:
    #data FUN_ce3001c
PTR_ce33294:
    #data loc_8c051648
PTR_ce33298:
    #data loc_8c04fea8
PTR_ce3329c:
    #data PTR_ce34460

;=============================================

LAB_ce332a0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r5
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce333ec,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x05,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce333f0,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce333dc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x0C,r0
    bf/s LAB_ce3334c
    mov 0x00,r13
    mov.w @(DAT_ce333de,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3331a
    mov.l @(DAT_ce333f4,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    mov 0x2B,r5
    lds r1,FPUL
    mov.l @(DAT_ce333f8,pc),r1
    mov.l @(PTR_ce33400,pc),r3
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce333fc,pc),r1
    fldi0 fr3
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr1
    fsts FPUL,fr2
    fdiv fr2,fr1
    lds r1,FPUL
    fmov fr1,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr0
    fsts FPUL,fr1
    fdiv fr1,fr0
    fmov fr0,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33404,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce33320
    nop

LAB_ce3331a:
    mov.l @(PTR_ce33408,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce33320:
    mov.w @(DAT_ce333e0,pc),r0
    mov 0x48,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3340c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce333e2,pc),r0
    mov.b @(r0,r14),r6
    bra LAB_ce3337c
    add 0x0D,r6

LAB_ce3334c:
    mov.l @(PTR_ce33408,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce333e0,pc),r0
    mov 0x32,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3340c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce333e2,pc),r0
    mov.b @(r0,r14),r6
    add 0x03,r6

LAB_ce3337c:
    lds.l @r15+,PR
    mov.l @(PTR_ce33410,pc),r2
    mov r14,r4
    mov 0x15,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3338a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33414,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce333e4,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce333d4
    mov.w @(DAT_ce333e4,pc),r0
    mov 0x00,r13
    mov 0x10,r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce333e6,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce333dc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x0C,r0
    bf/s LAB_ce333c0
    mov r14,r4
    mov 0x00,r6
    bra LAB_ce333c4
    mov 0x01,r5

LAB_ce333c0:
    mov 0x00,r6
    mov r6,r5

LAB_ce333c4:
    mov.l @(PTR_ce33418,pc),r2
    jsr @r2
    nop
    mov.w @(DAT_ce333e8,pc),r0
    mov.l r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce333d4:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce333dc:
    #data 0x01e9
DAT_ce333de:
    #data 0x01f9
DAT_ce333e0:
    #data 0x01a1
DAT_ce333e2:
    #data 0x01a3
DAT_ce333e4:
    #data 0x0141
DAT_ce333e6:
    #data 0x027b
DAT_ce333e8:
    #data 0x02f4
    #align4

PTR_ce333ec:
    #data loc_8c035162
PTR_ce333f0:
    #data loc_8c056de4
DAT_ce333f4:
    #data 0x41800000
DAT_ce333f8:
    #data 0x41000000
DAT_ce333fc:
    #data 0x42800000
PTR_ce33400:
    #data loc_8c042008
PTR_ce33404:
    #data loc_8c05218a
PTR_ce33408:
    #data FUN_ce31966
PTR_ce3340c:
    #data loc_8c2896b0
PTR_ce33410:
    #data loc_8c034e8c
PTR_ce33414:
    #data loc_8c034dee
PTR_ce33418:
    #data loc_8c090f64

;=============================================

LAB_ce3341c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3351c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3350e,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33458
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33510,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x0C,r0
    bf/s LAB_ce33448
    mov 0x15,r5
    mov.w @(DAT_ce33512,pc),r0
    mov.b @(r0,r14),r6
    bra LAB_ce3344e
    add 0x11,r6

LAB_ce33448:
    mov.w @(DAT_ce33512,pc),r0
    mov.b @(r0,r14),r6
    add 0x0F,r6

LAB_ce3344e:
    lds.l @r15+,PR
    mov.l @(PTR_ce33520,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33458:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3345e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3351c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3348c
    mov.w @(DAT_ce33514,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce33482
    lds.l @r15+,PR
    mov.l @(PTR_ce33524,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33482:
    lds.l @r15+,PR
    mov.l @(PTR_ce33528,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3348c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33492:
    add 0xFC,r15
    mov.w @(DAT_ce33516,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce334b2
    mov.b r3,@r15
    mov.w @(DAT_ce33516,pc),r0
    mov 0x00,r1
    mov.l @(PTR_ce3352c,pc),r3
    mov 0x01,r5
    mov.b r1,@(r0,r4)
    mov.b @r15,r0
    and 0x7F,r0
    mov r0,r6
    jmp @r3
    add 0x04,r15

LAB_ce334b2:
    rts
    add 0x04,r15

LAB_ce334b6:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce3353c
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce33530,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33518,pc),r0
    mov 0x30,r2
    mov.l @(PTR_ce33534,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x00,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33520,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33538,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3350e:
    #data 0x02f4
DAT_ce33510:
    #data 0x01e9
DAT_ce33512:
    #data 0x01a3
DAT_ce33514:
    #data 0x01f9
DAT_ce33516:
    #data 0x0141
DAT_ce33518:
    #data 0x01a1
    #align4

PTR_ce3351c:
    #data loc_8c034dee
PTR_ce33520:
    #data loc_8c034e8c
PTR_ce33524:
    #data loc_8c05176e
PTR_ce33528:
    #data FUN_ce3001c
PTR_ce3352c:
    #data loc_8c0de074
PTR_ce33530:
    #data loc_8c056de4
PTR_ce33534:
    #data loc_8c2896b0
PTR_ce33538:
    #data FUN_ce31966

;=============================================

LAB_ce3353c:
    mov.w @(DAT_ce33640,pc),r0
    mov.b @(r0,r14),r0
    tst 0x80,r0
    bt LAB_ce33562
    mov.w @(DAT_ce33642,pc),r0
    mov 0x10,r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov 0x7F,r3
    mov.w @(DAT_ce33640,pc),r0
    mov.b @(r0,r14),r2
    and r3,r2
    mov.b r2,@(r0,r14)
    add 0x62,r0
    mov.l @(PTR_ce33648,pc),r2
    mov.b @(r0,r14),r5
    jsr @r2
    mov r14,r4

LAB_ce33562:
    bsr FUN_ce33492
    mov r14,r4
    mov.l @(PTR_ce3364c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3357e
    lds.l @r15+,PR
    mov.l @(PTR_ce33650,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3357e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33586:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce335e2
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce33654,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33644,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33646,pc),r0
    mov 0x30,r2
    mov.l @(PTR_ce33658,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3365c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33660,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce335e2:
    mov.w @(DAT_ce33640,pc),r0
    mov.b @(r0,r14),r0
    tst 0x80,r0
    bt LAB_ce3360a
    mov.w @(DAT_ce33642,pc),r0
    mov 0x10,r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov 0x7F,r3
    mov.w @(DAT_ce33640,pc),r0
    mov.b @(r0,r14),r2
    and r3,r2
    mov.b r2,@(r0,r14)
    add 0x62,r0
    mov.b @(r0,r14),r5
    mov.l @(PTR_ce33648,pc),r2
    add 0x02,r5
    jsr @r2
    mov r14,r4

LAB_ce3360a:
    bsr FUN_ce33492
    mov r14,r4
    mov.l @(PTR_ce3364c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33626
    lds.l @r15+,PR
    mov.l @(PTR_ce33650,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33626:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3362e:
    mov r4,r3
    mov.l @(PTR_ce33664,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33640:
    #data 0x0141
DAT_ce33642:
    #data 0x027b
DAT_ce33644:
    #data 0x01f9
DAT_ce33646:
    #data 0x01a1
    #align4

PTR_ce33648:
    #data loc_8c0918ec
PTR_ce3364c:
    #data loc_8c034dee
PTR_ce33650:
    #data FUN_ce3001c
PTR_ce33654:
    #data loc_8c056de4
PTR_ce33658:
    #data loc_8c2896b0
PTR_ce3365c:
    #data loc_8c034e8c
PTR_ce33660:
    #data FUN_ce31966
PTR_ce33664:
    #data PTR_ce34470

;=============================================

LAB_ce33668:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce33758,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33752,pc),r0
    mov 0x30,r2
    mov 0x00,r4
    mov.l @(PTR_ce3375c,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x15,r5
    mov.b @(0x2,r14),r0
    mov 0x02,r6
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33760,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33764,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce336b6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33768,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33754,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce336ee
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3376c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce33770,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33774,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce336ee:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce336f4:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce33768,pc),r3
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @r1,fr3
    mov 0x60,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33754,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3374c
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33754,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce3374c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33752:
    #data 0x01a1
DAT_ce33754:
    #data 0x0141
    #align4

PTR_ce33758:
    #data loc_8c056de4
PTR_ce3375c:
    #data loc_8c2896b0
PTR_ce33760:
    #data loc_8c034e8c
PTR_ce33764:
    #data FUN_ce31966
PTR_ce33768:
    #data loc_8c034dee
PTR_ce3376c:
    #data loc_8c053082
DAT_ce33770:
    #data 0x414db6db
DAT_ce33774:
    #data 0xbf092492

;=============================================

LAB_ce33778:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33864,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3385c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x80,r0
    bt LAB_ce337de
    mov.b @(0x6,r14),r0
    mov 0x7F,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3385c,pc),r0
    mov.b @(r0,r14),r2
    and r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce33868,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3386c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33870,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33874,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3385e,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce337d2
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce337d2:
    mov.w @(DAT_ce33860,pc),r0
    mov.l @(PTR_ce33878,pc),r3
    mov.b @(r0,r14),r5
    add 0x04,r5
    jsr @r3
    mov r14,r4

LAB_ce337de:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce33492
    mov.l @r15+,r14

LAB_ce337e6:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce33864,pc),r3
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @r1,fr3
    mov 0x60,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce33492
    mov r14,r4
    mov.l @(PTR_ce3387c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce33844
    lds.l @r15+,PR
    mov.l @(PTR_ce33880,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33844:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3384a:
    mov r4,r3
    mov.l @(PTR_ce33884,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3385c:
    #data 0x0141
DAT_ce3385e:
    #data 0x0130
DAT_ce33860:
    #data 0x01a3
    #align4

PTR_ce33864:
    #data loc_8c034dee
DAT_ce33868:
    #data 0x3fd55555
DAT_ce3386c:
    #data 0xbcd55555
DAT_ce33870:
    #data 0x40f00000
DAT_ce33874:
    #data 0xbf4db6db
PTR_ce33878:
    #data loc_8c0918ec
PTR_ce3387c:
    #data loc_8c052ce2
PTR_ce33880:
    #data loc_8c052dac
PTR_ce33884:
    #data PTR_ce34484

;=============================================

LAB_ce33888:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x2B,r5
    mov.l @(PTR_ce339cc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r0
    mov.w r0,@(0x1c,r14)
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
    mov 0x00,r3
    mov.w @(DAT_ce339be,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce339c0,pc),r0
    mov.l @(PTR_ce339d0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce339d4,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce339d8,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce339dc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce339c2,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce338ee
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce338ee:
    mov.w @(DAT_ce339c4,pc),r0
    mov 0x02,r3
    mov 0x01,r2
    mov r14,r4
    mov.b r3,@(r0,r14)
    add 0x04,r0
    mov.l @(PTR_ce339e0,pc),r3
    mov 0x0B,r6
    mov.b r2,@(r0,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33908:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce339e4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce3396a
    mov.w @(DAT_ce339c4,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce339c6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33984
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3396a:
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    mov 0x0C,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.w @(DAT_ce339c8,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce339e0,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33984:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3398a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce339e4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce339a4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce339e8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce339a4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce339ac:
    mov r4,r3
    mov.l @(PTR_ce339ec,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce339be:
    #data 0x01fc
DAT_ce339c0:
    #data 0x041c
DAT_ce339c2:
    #data 0x0130
DAT_ce339c4:
    #data 0x01f5
DAT_ce339c6:
    #data 0x0141
DAT_ce339c8:
    #data 0x01f9
    #align4

PTR_ce339cc:
    #data loc_8c042008
PTR_ce339d0:
    #data loc_8c05218a
PTR_ce339d4:
    #data loc_8c035162
PTR_ce339d8:
    #data loc_8c056de4
DAT_ce339dc:
    #data 0xc1055555
PTR_ce339e0:
    #data loc_8c034e8c
PTR_ce339e4:
    #data loc_8c034dee
PTR_ce339e8:
    #data FUN_ce3001c
PTR_ce339ec:
    #data PTR_ce34490

;=============================================

LAB_ce339f0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x2B,r5
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33b38,pc),r3
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
    mov 0x00,r13
    mov.w @(DAT_ce33b2c,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33b2e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33b3c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33b40,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33b30,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce33a50
    mov r14,r4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33a50:
    mov.l @(PTR_ce33b44,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce33b32,pc),r0
    mov 0x41,r2
    mov.l @(PTR_ce33b48,pc),r3
    mov 0x02,r6
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x14,r5
    mov.b @(0x2,r14),r0
    mov r14,r4
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce33b4c,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33a8a:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33b50,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33aa8
    mov.l @(PTR_ce33b54,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce33b22
    nop

LAB_ce33aa8:
    mov 0x5C,r0
    fmov.s @(r0,r14),fr15
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x68,r1
    add r14,r1
    fadd fr15,fr3
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce33b34,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33b06
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33b58,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33b5c,pc),r0
    mov.l @(PTR_ce33b60,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33b64,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce33b06:
    mov 0x5C,r0
    fldi0 fr2
    fmov.s @(r0,r14),fr3
    fmul fr15,fr3
    fcmp/gt fr3,fr2
    bf LAB_ce33b22
    fmov fr2,fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce33b22:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33b2c:
    #data 0x01f9
DAT_ce33b2e:
    #data 0x041c
DAT_ce33b30:
    #data 0x01d2
DAT_ce33b32:
    #data 0x01a1
DAT_ce33b34:
    #data 0x0141
    #align4

PTR_ce33b38:
    #data loc_8c042008
DAT_ce33b3c:
    #data 0xc1200000
DAT_ce33b40:
    #data 0x3e200000
PTR_ce33b44:
    #data loc_8c05218a
PTR_ce33b48:
    #data loc_8c2896b0
PTR_ce33b4c:
    #data loc_8c034e8c
PTR_ce33b50:
    #data loc_8c034dee
PTR_ce33b54:
    #data FUN_ce3001c
DAT_ce33b58:
    #data 0xc1f00000
DAT_ce33b5c:
    #data 0x432b6db6
PTR_ce33b60:
    #data loc_8c050ea4
PTR_ce33b64:
    #data loc_8c05115a

;=============================================

LAB_ce33b68:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce33bb0
    mov.b @(0x6,r14),r0
    mov 0x2B,r5
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce33c60,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33c64,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33c68,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33c6c,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33bb0:
    mov.l @(PTR_ce33c70,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33bc6
    lds.l @r15+,PR
    mov.l @(PTR_ce33c74,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33bc6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33bcc:
    mov r4,r3
    mov.l @(PTR_ce33c78,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33bde:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce33c7c,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33c58,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33c80,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33c5a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33c0e
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33c0e:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33c84,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x43,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33c88,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce33c5c,pc),r0
    mov r4,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33c8c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce33c6c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33c58:
    #data 0x01f9
DAT_ce33c5a:
    #data 0x01d2
DAT_ce33c5c:
    #data 0x01a1
    #align4

PTR_ce33c60:
    #data loc_8c042008
PTR_ce33c64:
    #data loc_8c056de4
PTR_ce33c68:
    #data loc_8c05218a
PTR_ce33c6c:
    #data loc_8c034e8c
PTR_ce33c70:
    #data loc_8c034dee
PTR_ce33c74:
    #data FUN_ce3001c
PTR_ce33c78:
    #data PTR_ce34498
PTR_ce33c7c:
    #data loc_8c035162
DAT_ce33c80:
    #data 0x41f00000
DAT_ce33c84:
    #data 0x40892492
DAT_ce33c88:
    #data 0xbf4db6db
PTR_ce33c8c:
    #data loc_8c2896b0

;=============================================

LAB_ce33c90:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33db4,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce33db8,pc),r3
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce33cf8
    mov.l @(PTR_ce33dbc,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33dc0,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33cf8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33cfe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33db4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33d20
    mov.l @(PTR_ce33dc4,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33dc8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33d20:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33d26:
    mov.w @(DAT_ce33da6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce33da8,pc),r2
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce33d7c
    mov r13,r4
    mov.w @(DAT_ce33daa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33d7c
    mov.w @(DAT_ce33dac,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce33d7c
    mov.l @(PTR_ce33dcc,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33d7c
    mov r0,r4
    mov.w @(DAT_ce33dae,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce33d6c
    mov.w @(DAT_ce33db0,pc),r0
    mov 0x01,r2
    bra LAB_ce33d7c
    mov.b r2,@(r0,r14)

LAB_ce33d6c:
    mov.w @(DAT_ce33dae,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce33d7a
    mov.w @(DAT_ce33db0,pc),r0
    bra LAB_ce33d7c
    mov.b r13,@(r0,r14)

LAB_ce33d7a:
    mov r13,r4

LAB_ce33d7c:
    mov r4,r0
    nop
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33d88:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce33db0,pc),r0
    mov r4,r14
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33dd8
    mova @(DAT_ce33dd0,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mova @(DAT_ce33dd4,pc),r0
    bra LAB_ce33de4
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33da6:
    #data 0x01fa
DAT_ce33da8:
    #data 0x0c00
DAT_ce33daa:
    #data 0x01fe
DAT_ce33dac:
    #data 0x01a3
DAT_ce33dae:
    #data 0x01f9
DAT_ce33db0:
    #data 0x01f7
    #align4

PTR_ce33db4:
    #data loc_8c034dee
PTR_ce33db8:
    #data loc_8c052ce2
PTR_ce33dbc:
    #data loc_8c0511b4
PTR_ce33dc0:
    #data loc_8c034e8c
PTR_ce33dc4:
    #data loc_8c035162
PTR_ce33dc8:
    #data loc_8c051854
PTR_ce33dcc:
    #data loc_8c045790
DAT_ce33dd0:
    #data 0xc1d55555
DAT_ce33dd4:
    #data 0x432fb6db

;=============================================

LAB_ce33dd8:
    mova @(DAT_ce33ec4,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mova @(DAT_ce33ec8,pc),r0
    fmov.s @r0,fr3

LAB_ce33de4:
    mov 0x08,r0
    mov.w @(DAT_ce33eb2,pc),r2
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce33eb0,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bf LAB_ce33e06
    mov.w @(DAT_ce33eb4,pc),r0
    mov.w @(DAT_ce33eb4,pc),r1
    mov.w @(DAT_ce33eb6,pc),r3
    mov.w @(r0,r14),r0
    add r14,r1
    add r14,r3
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r3

LAB_ce33e06:
    mov.w @(DAT_ce33eb8,pc),r0
    mov.w @(DAT_ce33eb4,pc),r1
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce33eb4,pc),r0
    mov.w @(DAT_ce33eb6,pc),r2
    add r4,r1
    mov.w @(r0,r14),r0
    add r4,r2
    mov.l @(DAT_ce33ecc,pc),r3
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33eba,pc),r0
    mov 0x0A,r2
    mov.w @(DAT_ce33ebc,pc),r3
    mov.b r2,@(r0,r14)
    add 0x28,r0
    mov.l @(r0,r14),r4
    mov 0x00,r0
    mov.l @(DAT_ce33ed0,pc),r2
    mov.l r4,@r15
    add r3,r4
    mov.l @(0x4,r4),r1
    and r2,r1
    or r0,r1
    tst r1,r1
    bt LAB_ce33e5a
    mov.w @(DAT_ce33ebe,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33e5a
    mov.w @(DAT_ce33eb8,pc),r0
    mov.l @(r0,r14),r3
    mova @(DAT_ce33ed4,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce33ec0,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r3)

LAB_ce33e5a:
    mov.l @(PTR_ce33ed8,pc),r3
    mov 0x06,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33edc,pc),r2
    mov r15,r5
    add 0x04,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33ee0,pc),r3
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33e80:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33ee4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33ec2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33eaa
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x02,r5
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33ec2,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce33ee8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33eaa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33eb0:
    #data 0x01fa
DAT_ce33eb2:
    #data 0x0800
DAT_ce33eb4:
    #data 0x0130
DAT_ce33eb6:
    #data 0x01d2
DAT_ce33eb8:
    #data 0x01c8
DAT_ce33eba:
    #data 0x01a0
DAT_ce33ebc:
    #data 0x0414
DAT_ce33ebe:
    #data 0x01f7
DAT_ce33ec0:
    #data 0x041c
DAT_ce33ec2:
    #data 0x0141
    #align4

DAT_ce33ec4:
    #data 0xc276aaaa
DAT_ce33ec8:
    #data 0x42da9249
DAT_ce33ecc:
    #data 0x8c056f2a
DAT_ce33ed0:
    #data 0x04000000
DAT_ce33ed4:
    #data 0x42cdb6db
PTR_ce33ed8:
    #data loc_8c02fec4
PTR_ce33edc:
    #data loc_8c103660
PTR_ce33ee0:
    #data loc_8c034e8c
PTR_ce33ee4:
    #data loc_8c034dee
PTR_ce33ee8:
    #data loc_8c0df690

;=============================================

LAB_ce33eec:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34034,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33f64
    mov.l @(PTR_ce34038,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce3403c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34040,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34044,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3402c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33f3e
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33f3e:
    mov.w @(DAT_ce3402e,pc),r0
    mov 0x01,r2
    mov 0x0F,r5
    mov.l @(r0,r14),r3
    add 0xEC,r0
    mov 0x01,r6
    mov.l r14,@(r0,r3)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0x2E,r0
    mov.b r2,@(r0,r3)
    add 0xD2,r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov 0x20,r2
    mov.b r2,@(r0,r3)
    mov.l @(PTR_ce34048,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce33f64:
    mova @(DAT_ce3404c,pc),r0
    fmov.s @r0,fr15
    mov.w @(DAT_ce34030,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce33f88
    mov.w @(DAT_ce34030,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce34054,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mova @(DAT_ce34050,pc),r0
    fmov.s fr15,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce33f88:
    mov.w @(DAT_ce34030,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce33fb2
    mov.w @(DAT_ce34030,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce34058,pc),r3
    mov 0x06,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce3405c,pc),r0
    mov.l @(PTR_ce34060,pc),r3
    mov r15,r5
    fmov.s fr15,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    mov 0x09,r6
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce33fb2:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce33fbc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34034,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce34026
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov.w @(DAT_ce34032,pc),r0
    fmov.s @(r0,r14),fr1
    fcmp/gt fr2,fr1
    bf LAB_ce34026
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce34064,pc),r3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34068,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34026:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3402c:
    #data 0x0130
DAT_ce3402e:
    #data 0x01c8
DAT_ce34030:
    #data 0x0141
DAT_ce34032:
    #data 0x041c
    #align4

PTR_ce34034:
    #data loc_8c034dee
PTR_ce34038:
    #data loc_8c02fec4
DAT_ce3403c:
    #data 0x403aaaaa
DAT_ce34040:
    #data 0x412b6db6
DAT_ce34044:
    #data 0xbf2b6db6
PTR_ce34048:
    #data loc_8c034e8c
DAT_ce3404c:
    #data 0x42340000
DAT_ce34050:
    #data 0x4311b6db
PTR_ce34054:
    #data loc_8c0fdb4e
PTR_ce34058:
    #data loc_8c04223a
DAT_ce3405c:
    #data 0x431a4924
PTR_ce34060:
    #data loc_8c0fdab6
PTR_ce34064:
    #data loc_8c04242a
PTR_ce34068:
    #data loc_8c051648

;=============================================

LAB_ce3406c:
    mov.w @(DAT_ce3415e,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3416c,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34086:
    mov.w @(DAT_ce34160,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce34170,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce34094:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt LAB_ce340b2
    mov.l @(PTR_ce34174,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34162,pc),r0
    mov.b @(r0,r14),r0
    tst 0x80,r0
    bt LAB_ce340b2
    mov 0x00,r0
    mov.w r0,@(0x1c,r14)

LAB_ce340b2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce340b8:
    rts
    nop

LAB_ce340bc:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce34164,pc),r1
    mov.l @(PTR_ce34178,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce340d4:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34166,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce340ee
    mov 0x01,r5
    cmp/eq 0x01,r0
    bt LAB_ce340ee
    cmp/eq 0x02,r0
    bf LAB_ce340f2

LAB_ce340ee:
    mov.w @(DAT_ce34168,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce340f2:
    mov.l @(PTR_ce3417c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce340f8:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34166,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34112
    mov 0x01,r5
    cmp/eq 0x01,r0
    bt LAB_ce34112
    cmp/eq 0x02,r0
    bf LAB_ce34116

LAB_ce34112:
    mov.w @(DAT_ce34168,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce34116:
    mov.l @(PTR_ce3417c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce3411c:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34166,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce3413c
    cmp/eq 0x01,r0
    bt LAB_ce34144
    cmp/eq 0x02,r0
    bt LAB_ce3414c
    bra LAB_ce34158
    nop

LAB_ce3413c:
    mov.w @(DAT_ce34168,pc),r0
    mov 0x06,r3
    bra LAB_ce34152
    mov.b r3,@(r0,r4)

LAB_ce34144:
    mov.w @(DAT_ce34168,pc),r0
    mov 0x05,r1
    bra LAB_ce34152
    mov.b r1,@(r0,r4)

LAB_ce3414c:
    mov.w @(DAT_ce34168,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r4)

LAB_ce34152:
    mov.w @(DAT_ce3416a,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce34158:
    mov.l @(PTR_ce3417c,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3415e:
    #data 0x01ea
DAT_ce34160:
    #data 0x01c8
DAT_ce34162:
    #data 0x0143
DAT_ce34164:
    #data 0x01f7
DAT_ce34166:
    #data 0x04c9
DAT_ce34168:
    #data 0x01e9
DAT_ce3416a:
    #data 0x01a3
    #align4

PTR_ce3416c:
    #data PTR_ce344a4
PTR_ce34170:
    #data loc_8c04ce54
PTR_ce34174:
    #data loc_8c034dee
PTR_ce34178:
    #data PTR_ce344b0
PTR_ce3417c:
    #data loc_8c0530d8

;=============================================

LAB_ce34180:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce341c2,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce341a0
    cmp/eq 0x01,r0
    bt LAB_ce341a8
    cmp/eq 0x02,r0
    bt LAB_ce341b0
    bra LAB_ce341bc
    nop

LAB_ce341a0:
    mov.w @(DAT_ce341c4,pc),r0
    mov 0x06,r3
    bra LAB_ce341b6
    mov.b r3,@(r0,r4)

LAB_ce341a8:
    mov.w @(DAT_ce341c4,pc),r0
    mov 0x05,r1
    bra LAB_ce341b6
    mov.b r1,@(r0,r4)

LAB_ce341b0:
    mov.w @(DAT_ce341c4,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r4)

LAB_ce341b6:
    mov.w @(DAT_ce341c6,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce341bc:
    mov.l @(PTR_ce341c8,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce341c2:
    #data 0x04c9
DAT_ce341c4:
    #data 0x01e9
DAT_ce341c6:
    #data 0x01a3
    #align4

PTR_ce341c8:
    #data loc_8c0530d8
DAT_ce341cc:
    #data 0x0028
    #data 0x1000
    #data 0x0006
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0300
DAT_ce341da:
    #data 0x0028
    #data 0x1000
    #data 0x0007
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0060
DAT_ce341e8:
    #data 0x0028
    #data 0x1000
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x2000
    #data 0x0300
DAT_ce341f6:
    #data 0x0003
    #data 0x1000
    #data 0x0005
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce34206:
    #data 0x0003
    #data 0x0000
    #data 0x000c
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0060
DAT_ce34216:
    #data 0x0003
    #data 0x1000
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
    #data 0x0005
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce3423a:
    #data 0x0003
    #data 0x9100
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce3424a:
    #data 0x0005
    #data 0x9100
    #data 0x0000
    #data 0x0000
    #data 0x0400
    #data 0x1400
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce3425e:
    #data 0x0005
    #data 0x9100
    #data 0x0003
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce34272:
    #data 0x0003
    #data 0x9000
    #data 0x0009
    #data 0x0000
    #data 0x1000
    #data 0x0000
    #data 0x1000
    #data 0x0060
DAT_ce34282:
    #data 0x0201
    #data 0x0200
DAT_ce34286:
    #data 0x02ff
    #data 0x0201
DAT_ce3428a:
    #data 0xffff
    #data 0xffff
DAT_ce3428e:
    #data 0x0201
    #data 0x0201
DAT_ce34292:
    #data 0x02ff
    #data 0x02ff
DAT_ce34296:
    #data 0xffff
    #data 0xffff
DAT_ce3429a:
    #data 0x0201
    #data 0x0201
DAT_ce3429e:
    #data 0x02ff
    #data 0x02ff
DAT_ce342a2:
    #data 0xffff
    #data 0xffff
DAT_ce342a6:
    #data 0x0201
    #data 0x0201
DAT_ce342aa:
    #data 0x02ff
    #data 0x02ff
DAT_ce342ae:
    #data 0xffff
    #data 0xffff
DAT_ce342b2:
    #data 0x0201
    #data 0x0200
DAT_ce342b6:
    #data 0x02ff
    #data 0x0201
DAT_ce342ba:
    #data 0xffff
    #data 0x02ff
DAT_ce342be:
    #data 0x0201
    #data 0x0201
DAT_ce342c2:
    #data 0x02ff
    #data 0x02ff
DAT_ce342c6:
    #data 0xffff
    #data 0xffff
    #align4

PTR_ce342cc:
    #data LAB_ce305d4
PTR_ce342d0:
    #data LAB_ce3003c
PTR_ce342d4:
    #data LAB_ce305fc
PTR_ce342d8:
    #data LAB_ce30d10
PTR_ce342dc:
    #data LAB_ce31362
PTR_ce342e0:
    #data LAB_ce3151e
PTR_ce342e4:
    #data LAB_ce316e8
PTR_ce342e8:
    #data LAB_ce31790
PTR_ce342ec:
    #data LAB_ce319ae
PTR_ce342f0:
    #data LAB_ce33d26
PTR_ce342f4:
    #data LAB_ce33d88
PTR_ce342f8:
    #data LAB_ce3406c
PTR_ce342fc:
    #data LAB_ce340bc
PTR_ce34300:
    #data LAB_ce30502
PTR_ce34304:
    #data LAB_ce33bcc
PTR_ce34308:
    #data LAB_ce3129c
PTR_ce3430c:
    #data LAB_ce340d4
PTR_ce34310:
    #data LAB_ce340f8
PTR_ce34314:
    #data LAB_ce3411c
PTR_ce34318:
    #data LAB_ce34180
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce3433c:
    #data LAB_ce306a6
PTR_ce34340:
    #data LAB_ce30a38
PTR_ce34344:
    #data LAB_ce30a72
PTR_ce34348:
    #data LAB_ce30610
PTR_ce3434c:
    #data LAB_ce30dbc
PTR_ce34350:
    #data LAB_ce311a6
PTR_ce34354:
    #data LAB_ce31190
PTR_ce34358:
    #data LAB_ce30d24
PTR_ce3435c:
    #data LAB_ce31374
PTR_ce34360:
    #data LAB_ce31432
PTR_ce34364:
    #data LAB_ce314be
PTR_ce34368:
    #data LAB_ce31554
PTR_ce3436c:
    #data LAB_ce315d6
PTR_ce34370:
    #data LAB_ce31688
PTR_ce34374:
    #data LAB_ce316fa
PTR_ce34378:
    #data LAB_ce31740
PTR_ce3437c:
    #data LAB_ce317e8
PTR_ce34380:
    #data LAB_ce31918
PTR_ce34384:
    #data LAB_ce31932
PTR_ce34388:
    #data LAB_ce31918
PTR_ce3438c:
    #data LAB_ce3194c
DAT_ce34390:
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x00
    #data 0x03
    #data 0x03
    #data 0x01
    #data 0x03
    #align4

PTR_ce34398:
    #data LAB_ce319c2
PTR_ce3439c:
    #data LAB_ce3222a
PTR_ce343a0:
    #data LAB_ce32434
PTR_ce343a4:
    #data LAB_ce330ac
PTR_ce343a8:
    #data LAB_ce330be
PTR_ce343ac:
    #data LAB_ce33248
PTR_ce343b0:
    #data LAB_ce334b6
PTR_ce343b4:
    #data LAB_ce33586
PTR_ce343b8:
    #data LAB_ce3362e
PTR_ce343bc:
    #data LAB_ce3384a
PTR_ce343c0:
    #data LAB_ce339ac
PTR_ce343c4:
    #data LAB_ce33b68
PTR_ce343c8:
    #data LAB_ce33248
PTR_ce343cc:
    #data LAB_ce319d4
PTR_ce343d0:
    #data LAB_ce31a74
PTR_ce343d4:
    #data LAB_ce31ac8
PTR_ce343d8:
    #data LAB_ce31b80
PTR_ce343dc:
    #data LAB_ce31cec
PTR_ce343e0:
    #data FUN_ce31d70
PTR_ce343e4:
    #data LAB_ce31d92
PTR_ce343e8:
    #data LAB_ce31f18
PTR_ce343ec:
    #data LAB_ce32054
PTR_ce343f0:
    #data LAB_ce32204
PTR_ce343f4:
    #data LAB_ce3223c
PTR_ce343f8:
    #data LAB_ce322b6
PTR_ce343fc:
    #data LAB_ce3230a
PTR_ce34400:
    #data LAB_ce32380
PTR_ce34404:
    #data LAB_ce32412
PTR_ce34408:
    #data LAB_ce328e6
PTR_ce3440c:
    #data LAB_ce32a04
PTR_ce34410:
    #data LAB_ce32ae2
PTR_ce34414:
    #data LAB_ce32bea
PTR_ce34418:
    #data LAB_ce32cc8
PTR_ce3441c:
    #data LAB_ce32474
PTR_ce34420:
    #data LAB_ce3258c
PTR_ce34424:
    #data LAB_ce32618
PTR_ce34428:
    #data LAB_ce328ac
PTR_ce3442c:
    #data LAB_ce32e7c
PTR_ce34430:
    #data LAB_ce32ed4
PTR_ce34434:
    #data LAB_ce3303c
PTR_ce34438:
    #data LAB_ce3305e
PTR_ce3443c:
    #data LAB_ce3312c
PTR_ce34440:
    #data LAB_ce331b8
PTR_ce34444:
    #data LAB_ce331dc
PTR_ce34448:
    #data LAB_ce3323c
PTR_ce3444c:
    #data LAB_ce33242
DAT_ce34450:
    #data 0xc1200000
DAT_ce34454:
    #data 0x3fcdb6db
    #data 0xc1855555
    #data 0x402b6db6
PTR_ce34460:
    #data LAB_ce332a0
PTR_ce34464:
    #data LAB_ce3338a
PTR_ce34468:
    #data LAB_ce3341c
PTR_ce3446c:
    #data LAB_ce3345e
PTR_ce34470:
    #data LAB_ce33668
PTR_ce34474:
    #data LAB_ce336b6
PTR_ce34478:
    #data LAB_ce336f4
PTR_ce3447c:
    #data LAB_ce33778
PTR_ce34480:
    #data LAB_ce337e6
PTR_ce34484:
    #data LAB_ce33888
PTR_ce34488:
    #data LAB_ce33908
PTR_ce3448c:
    #data FUN_ce3398a
PTR_ce34490:
    #data LAB_ce339f0
PTR_ce34494:
    #data LAB_ce33a8a
PTR_ce34498:
    #data LAB_ce33bde
PTR_ce3449c:
    #data LAB_ce33c90
PTR_ce344a0:
    #data LAB_ce33cfe
PTR_ce344a4:
    #data LAB_ce33e80
PTR_ce344a8:
    #data LAB_ce33eec
PTR_ce344ac:
    #data LAB_ce33fbc
PTR_ce344b0:
    #data LAB_ce34086
PTR_ce344b4:
    #data LAB_ce34086
PTR_ce344b8:
    #data LAB_ce340b8
PTR_ce344bc:
    #data LAB_ce34094
PTR_ce344c0:
    #data LAB_ce340b8
PTR_ce344c4:
    #data LAB_ce340b8
