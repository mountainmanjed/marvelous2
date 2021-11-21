;╔════════════════════════════════╗
;║ S_PL05 : Strider Hiryu Program ║
;╚════════════════════════════════╝

#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c0423fc 0x8C0423FC
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
#symbol loc_8c05120e 0x8C05120E
#symbol loc_8c0514b8 0x8C0514B8
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
#symbol loc_8c065794 0x8C065794
#symbol loc_8c066050 0x8C066050
#symbol loc_8c066084 0x8C066084
#symbol loc_8c067148 0x8C067148
#symbol loc_8c067f6c 0x8C067F6C
#symbol loc_8c0686bc 0x8C0686BC
#symbol loc_8c0bf214 0x8C0BF214
#symbol loc_8c0bf86c 0x8C0BF86C
#symbol loc_8c0ee124 0x8C0EE124
#symbol loc_8c0fd7fe 0x8C0FD7FE
#symbol loc_8c100672 0x8C100672
#symbol loc_8c103660 0x8C103660
#symbol loc_8c11e730 0x8C11E730
#symbol loc_8c1294c8 0x8C1294C8
#symbol loc_8c129728 0x8C129728
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c26a524 0x8C26A524
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c289636 0x8C289636
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce3001c,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce30020,pc),r7
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3001c:
    #data 0x0428
    #align4

PTR_ce30020:
    #data PTR_ce35b5c

;=============================================

LAB_ce30024:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3010c,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    mov.l @(PTR_ce30110,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    mov.l @(PTR_ce30114,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    mov.l @(PTR_ce30118,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce30124
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce3018a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce301f0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce3027a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce302c0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce30306
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce30388
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce303ce
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce30414
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce3045c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce304c8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce30524
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce3056a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce305f0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce3065a
    mov r14,r4
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce3069a
    mov r14,r4
    tst r0,r0
    bf LAB_ce30104
    mov.l @(PTR_ce3011c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30120,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30104:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    #data 0x0000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

PTR_ce3010c:
    #data loc_8c054508
PTR_ce30110:
    #data loc_8c054b34
PTR_ce30114:
    #data loc_8c05496c
PTR_ce30118:
    #data loc_8c054d04
PTR_ce3011c:
    #data loc_8c053e00
PTR_ce30120:
    #data loc_8c0542e0

;=============================================

FUN_ce30124:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3022c,pc),r3
    mov r4,r14
    mov.w @(DAT_ce3022e,pc),r6
    add r14,r3
    mov.l @(PTR_ce30238,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce3023c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30156
    mov.w @(DAT_ce30230,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30156
    mov.l @r15,r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30160

LAB_ce30156:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30160:
    mov.w @(DAT_ce3022e,pc),r5
    mov.l @(PTR_ce30240,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0C,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30232,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30244,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3018a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3022c,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30234,pc),r6
    add r14,r3
    mov.l @(PTR_ce30248,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce3023c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301bc
    mov.w @(DAT_ce30230,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce301bc
    mov.l @r15,r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce301c6

LAB_ce301bc:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce301c6:
    mov.w @(DAT_ce30234,pc),r5
    mov.l @(PTR_ce30240,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0A,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30232,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30244,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301f0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3022c,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30236,pc),r6
    add r14,r3
    mov.l @(PTR_ce3024c,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce3023c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30222
    mov.w @(DAT_ce30230,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30222
    mov.l @r15,r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30250

LAB_ce30222:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3022c:
    #data 0x02a4
DAT_ce3022e:
    #data 0x036c
DAT_ce30230:
    #data 0x040c
DAT_ce30232:
    #data 0x01e9
DAT_ce30234:
    #data 0x0374
DAT_ce30236:
    #data 0x037c
    #align4

PTR_ce30238:
    #data DAT_ce35b2c
PTR_ce3023c:
    #data loc_8c054e58
PTR_ce30240:
    #data loc_8c055c3a
PTR_ce30244:
    #data loc_8c0530d8
PTR_ce30248:
    #data DAT_ce35b3c
PTR_ce3024c:
    #data DAT_ce35b4c

;=============================================

LAB_ce30250:
    mov.w @(DAT_ce30362,pc),r5
    mov.l @(PTR_ce30370,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30364,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30374,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3027a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30378,pc),r5
    mov.w @(DAT_ce30366,pc),r6
    mov.l @(PTR_ce3037c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30298
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30298:
    mov.w @(DAT_ce30366,pc),r5
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
    mov.w @(DAT_ce30364,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30374,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302c0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30380,pc),r5
    mov.w @(DAT_ce30368,pc),r6
    mov.l @(PTR_ce3037c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302de
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302de:
    mov.w @(DAT_ce30368,pc),r5
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
    mov.w @(DAT_ce30364,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30374,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30306:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30384,pc),r5
    mov.w @(DAT_ce3036a,pc),r6
    mov.l @(PTR_ce3037c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3032c
    mov.w @(DAT_ce3036c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3033a
    mov.w @(DAT_ce3036e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30334

LAB_ce3032c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30334:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3033a:
    mov.w @(DAT_ce3036a,pc),r5
    mov.l @(PTR_ce30370,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30364,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30374,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30362:
    #data 0x037c
DAT_ce30364:
    #data 0x01e9
DAT_ce30366:
    #data 0x0384
DAT_ce30368:
    #data 0x038c
DAT_ce3036a:
    #data 0x0394
DAT_ce3036c:
    #data 0x01fc
DAT_ce3036e:
    #data 0x01d4
    #align4

PTR_ce30370:
    #data loc_8c055c3a
PTR_ce30374:
    #data loc_8c0530d8
PTR_ce30378:
    #data DAT_ce35aa0
PTR_ce3037c:
    #data loc_8c054e58
PTR_ce30380:
    #data DAT_ce35ab0
PTR_ce30384:
    #data DAT_ce35ac0

;=============================================

FUN_ce30388:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304ac,pc),r5
    mov.w @(DAT_ce304a2,pc),r6
    mov.l @(PTR_ce304b0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303a6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303a6:
    mov.w @(DAT_ce304a2,pc),r5
    mov.l @(PTR_ce304b4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce304a4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304b8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303ce:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304bc,pc),r5
    mov.w @(DAT_ce304a6,pc),r6
    mov.l @(PTR_ce304b0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303ec
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303ec:
    mov.w @(DAT_ce304a6,pc),r5
    mov.l @(PTR_ce304b4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce304a4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304b8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30414:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304c0,pc),r5
    mov.w @(DAT_ce304a8,pc),r6
    mov.l @(PTR_ce304b0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30432
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30432:
    mov.w @(DAT_ce304a8,pc),r5
    mov.l @(PTR_ce304b4,pc),r3
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
    mov.w @(DAT_ce304a4,pc),r0
    mov.l @(PTR_ce304b8,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3045c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304c4,pc),r5
    mov.w @(DAT_ce304aa,pc),r6
    mov.l @(PTR_ce304b0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3047a
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3047a:
    mov.w @(DAT_ce304aa,pc),r5
    mov.l @(PTR_ce304b4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x09,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce304a4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304b8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce304a2:
    #data 0x039c
DAT_ce304a4:
    #data 0x01e9
DAT_ce304a6:
    #data 0x03a4
DAT_ce304a8:
    #data 0x03ac
DAT_ce304aa:
    #data 0x03b4
    #align4

PTR_ce304ac:
    #data DAT_ce35ae0
PTR_ce304b0:
    #data loc_8c054e58
PTR_ce304b4:
    #data loc_8c055c3a
PTR_ce304b8:
    #data loc_8c0530d8
PTR_ce304bc:
    #data DAT_ce35b1c
PTR_ce304c0:
    #data DAT_ce35a80
PTR_ce304c4:
    #data DAT_ce35af0

;=============================================

FUN_ce304c8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305d4,pc),r5
    mov.w @(DAT_ce305c6,pc),r6
    mov.l @(PTR_ce305d8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304ee
    mov.w @(DAT_ce305c8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce304fc
    mov.w @(DAT_ce305ca,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce304f6

LAB_ce304ee:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304f6:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce304fc:
    mov.w @(DAT_ce305c6,pc),r5
    mov.l @(PTR_ce305dc,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0B,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce305cc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce305e0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30524:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305e4,pc),r5
    mov.w @(DAT_ce305ce,pc),r6
    mov.l @(PTR_ce305d8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30542
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30542:
    mov.w @(DAT_ce305ce,pc),r5
    mov.l @(PTR_ce305dc,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0D,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce305cc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce305e0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3056a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce305d0,pc),r3
    mov r4,r14
    mov.w @(DAT_ce305d2,pc),r6
    add r14,r3
    mov.l @(PTR_ce305e8,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce305ec,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30592
    mov.l @r15,r2
    mov.b @(0x3,r2),r0
    tst r0,r0
    bt LAB_ce3059c

LAB_ce30592:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3059c:
    mov.w @(DAT_ce305d2,pc),r5
    mov.l @(PTR_ce305dc,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0E,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce305cc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce305e0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305c6:
    #data 0x03bc
DAT_ce305c8:
    #data 0x01fc
DAT_ce305ca:
    #data 0x01d4
DAT_ce305cc:
    #data 0x01e9
DAT_ce305ce:
    #data 0x03c4
DAT_ce305d0:
    #data 0x02a4
DAT_ce305d2:
    #data 0x03cc
    #align4

PTR_ce305d4:
    #data DAT_ce35a90
PTR_ce305d8:
    #data loc_8c054e58
PTR_ce305dc:
    #data loc_8c055c3a
PTR_ce305e0:
    #data loc_8c0530d8
PTR_ce305e4:
    #data DAT_ce35ad0
PTR_ce305e8:
    #data DAT_ce35b0e
PTR_ce305ec:
    #data loc_8c055066

;=============================================

FUN_ce305f0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce306d4,pc),r13
    sts.l PR,@-r15
    mov.w @(DAT_ce306d6,pc),r6
    add r14,r13
    mov.l @(PTR_ce306e0,pc),r5
    mov.l @(PTR_ce306e4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3062c
    mov.w @(DAT_ce306d8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3061c
    mov.b @(0x1,r13),r0
    tst r0,r0
    bt LAB_ce3062c

LAB_ce3061c:
    mov.b @(0x1,r13),r0
    tst r0,r0
    bf LAB_ce30626
    bra LAB_ce30632
    mov 0x0F,r3

LAB_ce30626:
    mov.b @(0x2,r13),r0
    tst r0,r0
    bt LAB_ce30630

LAB_ce3062c:
    bra LAB_ce30652
    mov 0x00,r0

LAB_ce30630:
    mov 0x10,r3

LAB_ce30632:
    mov.w @(DAT_ce306da,pc),r0
    mov.w @(DAT_ce306d6,pc),r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce306e8,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce306ec,pc),r3
    mov 0x00,r0
    mov 0x15,r5
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0

LAB_ce30652:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3065a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce306f0,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30672
    mov.w @(DAT_ce306dc,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3067a

LAB_ce30672:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3067a:
    mov.w @(DAT_ce306da,pc),r0
    mov 0x16,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce306ec,pc),r3
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

;=============================================

FUN_ce3069a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306f4,pc),r3
    jsr @r3
    mov 0x11,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce306b4
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce306b4:
    mov.w @(DAT_ce306da,pc),r0
    mov 0x11,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce306ec,pc),r3
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

DAT_ce306d4:
    #data 0x02a4
DAT_ce306d6:
    #data 0x0364
DAT_ce306d8:
    #data 0x01f9
DAT_ce306da:
    #data 0x01e9
DAT_ce306dc:
    #data 0x040c
    #align4

PTR_ce306e0:
    #data DAT_ce35b00
PTR_ce306e4:
    #data loc_8c055066
PTR_ce306e8:
    #data loc_8c055c3a
PTR_ce306ec:
    #data loc_8c0530d8
PTR_ce306f0:
    #data loc_8c054d1c
PTR_ce306f4:
    #data loc_8c054da0

;=============================================

LAB_ce306f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce30724
    mov r4,r14
    tst r0,r0
    bf LAB_ce30714
    bsr FUN_ce3075a
    mov r14,r4
    tst r0,r0
    bf LAB_ce30714
    bsr FUN_ce30790
    mov r14,r4
    tst r0,r0
    bt LAB_ce3071c

LAB_ce30714:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce3071c:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30724:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30804,pc),r5
    mov.w @(DAT_ce307f4,pc),r6
    mov.l @(PTR_ce30808,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30744
    mov.w @(DAT_ce307f6,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3074c

LAB_ce30744:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3074c:
    mov.w @(DAT_ce307f8,pc),r0
    mov 0x0C,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3075a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3080c,pc),r5
    mov.w @(DAT_ce307fa,pc),r6
    mov.l @(PTR_ce30808,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3077a
    mov.w @(DAT_ce307f6,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30782

LAB_ce3077a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30782:
    mov.w @(DAT_ce307f8,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30790:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce307fc,pc),r3
    mov r4,r14
    mov.w @(DAT_ce307fe,pc),r6
    add r14,r3
    mov.l @(PTR_ce30810,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce30808,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce307c2
    mov.w @(DAT_ce307f6,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce307c2
    mov.l @r15,r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce307cc

LAB_ce307c2:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce307cc:
    mov.w @(DAT_ce307f8,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce307dc:
    rts
    nop

LAB_ce307e0:
    mov.w @(DAT_ce30800,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30814,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307f4:
    #data 0x036c
DAT_ce307f6:
    #data 0x040c
DAT_ce307f8:
    #data 0x0258
DAT_ce307fa:
    #data 0x0374
DAT_ce307fc:
    #data 0x02a4
DAT_ce307fe:
    #data 0x037c
DAT_ce30800:
    #data 0x01ff
    #align4

PTR_ce30804:
    #data DAT_ce35b2c
PTR_ce30808:
    #data loc_8c054e58
PTR_ce3080c:
    #data DAT_ce35b3c
PTR_ce30810:
    #data DAT_ce35b4c
PTR_ce30814:
    #data PTR_ce35bcc

;=============================================

LAB_ce30818:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30914,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30904,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30846
    mov.w @(DAT_ce30906,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3083e
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30abc
    mov.l @r15+,r14

LAB_ce3083e:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce309e0
    mov.l @r15+,r14

LAB_ce30846:
    mov.w @(DAT_ce30906,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30858
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30934
    mov.l @r15+,r14

LAB_ce30858:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30860
    mov.l @r15+,r14

LAB_ce30860:
    mov.w @(DAT_ce30908,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30882
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3089e
    cmp/eq 0x02,r0
    bt LAB_ce308b6
    bra LAB_ce308d2
    nop

LAB_ce30882:
    mov.w @(DAT_ce3090a,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce30918,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3090c,pc),r0
    mov.l @(PTR_ce3091c,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3090e,pc),r0
    bra LAB_ce308d2
    mov.b r13,@(r0,r14)

LAB_ce3089e:
    mov.w @(DAT_ce3090a,pc),r0
    mov 0x01,r12
    mov.l @(PTR_ce30920,pc),r3
    mov 0x1E,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30924,pc),r2
    bra LAB_ce308ca
    nop

LAB_ce308b6:
    mov.w @(DAT_ce3090a,pc),r0
    mov 0x02,r12
    mov.l @(PTR_ce30920,pc),r3
    mov 0x1E,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30928,pc),r2

LAB_ce308ca:
    mov.w @(DAT_ce3090c,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3090e,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce308d2:
    mov.w @(DAT_ce30910,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce3092c,pc),r3
    mov r14,r4
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
    mov.w @(DAT_ce3090a,pc),r0
    mov.l @(PTR_ce30930,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30904:
    #data 0x01fe
DAT_ce30906:
    #data 0x01f9
DAT_ce30908:
    #data 0x01e8
DAT_ce3090a:
    #data 0x0158
DAT_ce3090c:
    #data 0x03f4
DAT_ce3090e:
    #data 0x01a7
DAT_ce30910:
    #data 0x01ac
    #align4

PTR_ce30914:
    #data loc_8c052b4c
PTR_ce30918:
    #data loc_8c04223a
PTR_ce3091c:
    #data DAT_ce35a38
PTR_ce30920:
    #data loc_8c042008
PTR_ce30924:
    #data DAT_ce35a3c
PTR_ce30928:
    #data DAT_ce35a40
PTR_ce3092c:
    #data loc_8c2896b0
PTR_ce30930:
    #data loc_8c034e8c

;=============================================

LAB_ce30934:
    mov.w @(DAT_ce30a3c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30954
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30972
    cmp/eq 0x02,r0
    bt LAB_ce30990
    bra LAB_ce309b0
    nop

LAB_ce30954:
    mov.w @(DAT_ce30a3e,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30a48,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a40,pc),r0
    mov.l @(PTR_ce30a4c,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a42,pc),r0
    bra LAB_ce309b0
    mov.b r13,@(r0,r14)

LAB_ce30972:
    mov.w @(DAT_ce30a3e,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x1E,r5
    mov.l @(PTR_ce30a50,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a40,pc),r0
    mov.l @(PTR_ce30a54,pc),r2
    mov.l r2,@(r0,r14)
    bra LAB_ce309ac
    mov 0x01,r3

LAB_ce30990:
    mov.w @(DAT_ce30a3e,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x1E,r5
    mov.l @(PTR_ce30a50,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a40,pc),r0
    mov 0x02,r3
    mov.l @(PTR_ce30a58,pc),r2
    mov.l r2,@(r0,r14)

LAB_ce309ac:
    mov.w @(DAT_ce30a42,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce309b0:
    mov.w @(DAT_ce30a44,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30a5c,pc),r3
    mov r14,r4
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
    mov.w @(DAT_ce30a3e,pc),r0
    mov.l @(PTR_ce30a60,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce309e0:
    mov.w @(DAT_ce30a3c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a00
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a1e
    cmp/eq 0x02,r0
    bt LAB_ce30a6c
    bra LAB_ce30a8c
    nop

LAB_ce30a00:
    mov.w @(DAT_ce30a3e,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30a48,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a40,pc),r0
    mov.l @(PTR_ce30a64,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a42,pc),r0
    bra LAB_ce30a8c
    mov.b r13,@(r0,r14)

LAB_ce30a1e:
    mov.w @(DAT_ce30a3e,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x1E,r5
    mov.l @(PTR_ce30a50,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a40,pc),r0
    mov.l @(PTR_ce30a68,pc),r2
    mov.l r2,@(r0,r14)
    bra LAB_ce30a88
    mov 0x01,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a3c:
    #data 0x01e8
DAT_ce30a3e:
    #data 0x0158
DAT_ce30a40:
    #data 0x03f4
DAT_ce30a42:
    #data 0x01a7
DAT_ce30a44:
    #data 0x01ac
    #align4

PTR_ce30a48:
    #data loc_8c04223a
PTR_ce30a4c:
    #data DAT_ce35a38
PTR_ce30a50:
    #data loc_8c042008
PTR_ce30a54:
    #data DAT_ce35a3c
PTR_ce30a58:
    #data DAT_ce35a40
PTR_ce30a5c:
    #data loc_8c2896b0
PTR_ce30a60:
    #data loc_8c034e8c
PTR_ce30a64:
    #data DAT_ce35a44
PTR_ce30a68:
    #data DAT_ce35a48

;=============================================

LAB_ce30a6c:
    mov.w @(DAT_ce30b8e,pc),r0
    mov 0x02,r1
    mov 0x05,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x1E,r5
    mov.l @(PTR_ce30b9c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30b90,pc),r0
    mov 0x02,r3
    mov.l @(PTR_ce30ba0,pc),r2
    mov.l r2,@(r0,r14)

LAB_ce30a88:
    mov.w @(DAT_ce30b92,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30a8c:
    mov.w @(DAT_ce30b94,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce30ba4,pc),r3
    mov r14,r4
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
    mov.w @(DAT_ce30b8e,pc),r0
    mov.l @(PTR_ce30ba8,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30abc:
    mov.w @(DAT_ce30b96,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x01,r12
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30ae0
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30afe
    cmp/eq 0x02,r0
    bt LAB_ce30b1c
    bra LAB_ce30b5c
    nop

LAB_ce30ae0:
    mov.w @(DAT_ce30b8e,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30bac,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30b90,pc),r0
    mov.l @(PTR_ce30bb0,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30b92,pc),r0
    bra LAB_ce30b5c
    mov.b r13,@(r0,r14)

LAB_ce30afe:
    mov.w @(DAT_ce30b8e,pc),r0
    mov 0x0A,r3
    mov 0x1E,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30b9c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30b90,pc),r0
    mov.l @(PTR_ce30bb4,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30b92,pc),r0
    bra LAB_ce30b5c
    mov.b r12,@(r0,r14)

LAB_ce30b1c:
    mov 0x22,r0
    mov.l @(PTR_ce30ba0,pc),r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce30b90,pc),r0
    mov.w @(DAT_ce30b98,pc),r2
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30b92,pc),r0
    mov.b r12,@(r0,r14)
    add 0x53,r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce30b48
    mov 0x22,r0
    mov.b r12,@(r0,r14)
    mov 0x03,r3
    mov.w @(DAT_ce30b8e,pc),r0
    mov 0x12,r1
    mov.b r3,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30b5c
    mov.b r1,@(r0,r14)

LAB_ce30b48:
    mov.w @(DAT_ce30b8e,pc),r0
    mov 0x02,r3
    mov 0x0B,r1
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.l @(PTR_ce30b9c,pc),r3
    mov 0x1E,r5
    mov.b r1,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce30b5c:
    mov.w @(DAT_ce30b94,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30ba4,pc),r3
    mov r14,r4
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
    mov.w @(DAT_ce30b8e,pc),r0
    mov.l @(PTR_ce30ba8,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b8e:
    #data 0x0158
DAT_ce30b90:
    #data 0x03f4
DAT_ce30b92:
    #data 0x01a7
DAT_ce30b94:
    #data 0x01ac
DAT_ce30b96:
    #data 0x01e8
DAT_ce30b98:
    #data 0x0800
    #align4

PTR_ce30b9c:
    #data loc_8c042008
PTR_ce30ba0:
    #data DAT_ce35a4c
PTR_ce30ba4:
    #data loc_8c2896b0
PTR_ce30ba8:
    #data loc_8c034e8c
PTR_ce30bac:
    #data loc_8c04223a
PTR_ce30bb0:
    #data DAT_ce35a44
PTR_ce30bb4:
    #data DAT_ce35a48

;=============================================

LAB_ce30bb8:
    mov.w @(DAT_ce30c92,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30bc8
    mov.w @(DAT_ce30c94,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30bd8

LAB_ce30bc8:
    mov.w @(DAT_ce30c92,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30bdc
    mov.w @(DAT_ce30c94,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30bdc

LAB_ce30bd8:
    bra LAB_ce30be0
    nop

LAB_ce30bdc:
    rts
    nop

LAB_ce30be0:
    mov.w @(DAT_ce30c92,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30bee
    bra LAB_ce30d0a
    nop

LAB_ce30bee:
    bra LAB_ce30bf2
    nop

LAB_ce30bf2:
    mov.w @(DAT_ce30c96,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30c12
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30c40
    cmp/eq 0x02,r0
    bt LAB_ce30c6e
    bra LAB_ce30cc8
    nop

LAB_ce30c12:
    mov.w @(DAT_ce30c98,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30ca0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30c9a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30c34
    mov.w @(DAT_ce30c9c,pc),r0
    mov.l @(PTR_ce30ca4,pc),r3
    bra LAB_ce30c3a
    mov.l r3,@(r0,r14)

LAB_ce30c34:
    mov.w @(DAT_ce30c9c,pc),r0
    mov.l @(PTR_ce30ca8,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c3a:
    mov.w @(DAT_ce30c9e,pc),r0
    bra LAB_ce30cc8
    mov.b r13,@(r0,r14)

LAB_ce30c40:
    mov.w @(DAT_ce30c98,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x1E,r5
    mov.l @(PTR_ce30cac,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30c9a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30c64
    mov.w @(DAT_ce30c9c,pc),r0
    mov.l @(PTR_ce30cb0,pc),r3
    bra LAB_ce30c6a
    mov.l r3,@(r0,r14)

LAB_ce30c64:
    mov.w @(DAT_ce30c9c,pc),r0
    mov.l @(PTR_ce30cb4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c6a:
    bra LAB_ce30cc4
    mov 0x01,r3

LAB_ce30c6e:
    mov.w @(DAT_ce30c98,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x1E,r5
    mov.l @(PTR_ce30cac,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30c9a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30cbc
    mov.w @(DAT_ce30c9c,pc),r0
    mov.l @(PTR_ce30cb8,pc),r3
    bra LAB_ce30cc2
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c92:
    #data 0x01fe
DAT_ce30c94:
    #data 0x01d6
DAT_ce30c96:
    #data 0x01e8
DAT_ce30c98:
    #data 0x0158
DAT_ce30c9a:
    #data 0x01fc
DAT_ce30c9c:
    #data 0x03f4
DAT_ce30c9e:
    #data 0x01a7
    #align4

PTR_ce30ca0:
    #data loc_8c04223a
PTR_ce30ca4:
    #data DAT_ce35a50
PTR_ce30ca8:
    #data DAT_ce35a68
PTR_ce30cac:
    #data loc_8c042008
PTR_ce30cb0:
    #data DAT_ce35a54
PTR_ce30cb4:
    #data DAT_ce35a6c
PTR_ce30cb8:
    #data DAT_ce35a58

;=============================================

LAB_ce30cbc:
    mov.w @(DAT_ce30daa,pc),r0
    mov.l @(PTR_ce30db8,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30cc2:
    mov 0x02,r3

LAB_ce30cc4:
    mov.w @(DAT_ce30dac,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30cc8:
    mov.w @(DAT_ce30dae,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30dbc,pc),r3
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
    mov.w @(DAT_ce30db0,pc),r0
    mov.l @(PTR_ce30dc0,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30db2,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30d02
    mov.w @(DAT_ce30db2,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30d02:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30d0a:
    mov.w @(DAT_ce30db4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30d2a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30d58
    cmp/eq 0x02,r0
    bt LAB_ce30d86
    bra LAB_ce30dec
    nop

LAB_ce30d2a:
    mov.w @(DAT_ce30db0,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30dc4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30db6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30d4c
    mov.w @(DAT_ce30daa,pc),r0
    mov.l @(PTR_ce30dc8,pc),r3
    bra LAB_ce30d52
    mov.l r3,@(r0,r14)

LAB_ce30d4c:
    mov.w @(DAT_ce30daa,pc),r0
    mov.l @(PTR_ce30dcc,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30d52:
    mov.w @(DAT_ce30dac,pc),r0
    bra LAB_ce30dec
    mov.b r13,@(r0,r14)

LAB_ce30d58:
    mov.w @(DAT_ce30db0,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x1E,r5
    mov.l @(PTR_ce30dd0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30db6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30d7c
    mov.w @(DAT_ce30daa,pc),r0
    mov.l @(PTR_ce30dd4,pc),r3
    bra LAB_ce30d82
    mov.l r3,@(r0,r14)

LAB_ce30d7c:
    mov.w @(DAT_ce30daa,pc),r0
    mov.l @(PTR_ce30dd8,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30d82:
    bra LAB_ce30de8
    mov 0x01,r3

LAB_ce30d86:
    mov.w @(DAT_ce30db0,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x1E,r5
    mov.l @(PTR_ce30dd0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30db6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30de0
    mov.w @(DAT_ce30daa,pc),r0
    mov.l @(PTR_ce30ddc,pc),r3
    bra LAB_ce30de6
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30daa:
    #data 0x03f4
DAT_ce30dac:
    #data 0x01a7
DAT_ce30dae:
    #data 0x01ac
DAT_ce30db0:
    #data 0x0158
DAT_ce30db2:
    #data 0x01d6
DAT_ce30db4:
    #data 0x01e8
DAT_ce30db6:
    #data 0x01fc
    #align4

PTR_ce30db8:
    #data DAT_ce35a70
PTR_ce30dbc:
    #data loc_8c2896b0
PTR_ce30dc0:
    #data loc_8c034e8c
PTR_ce30dc4:
    #data loc_8c04223a
PTR_ce30dc8:
    #data DAT_ce35a5c
PTR_ce30dcc:
    #data DAT_ce35a74
PTR_ce30dd0:
    #data loc_8c042008
PTR_ce30dd4:
    #data DAT_ce35a60
PTR_ce30dd8:
    #data DAT_ce35a78
PTR_ce30ddc:
    #data DAT_ce35a64

;=============================================

LAB_ce30de0:
    mov.w @(DAT_ce30eee,pc),r0
    mov.l @(PTR_ce30f00,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30de6:
    mov 0x02,r3

LAB_ce30de8:
    mov.w @(DAT_ce30ef0,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30dec:
    mov.w @(DAT_ce30ef2,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30f04,pc),r3
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
    mov.w @(DAT_ce30ef4,pc),r0
    mov.l @(PTR_ce30f08,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30ef6,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30e26
    mov.w @(DAT_ce30ef6,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30e26:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30e2e:
    mov.w @(DAT_ce30ef8,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30f0c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30e42:
    sts.l PR,@-r15
    mov.l @(PTR_ce30f10,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30e50:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30f14,pc),r3
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
    mov.w @(DAT_ce30efa,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30eb8
    mov.w @(DAT_ce30efc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30eb0
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31034
    mov.l @r15+,r14

LAB_ce30eb0:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30fa8
    mov.l @r15+,r14

LAB_ce30eb8:
    mov.w @(DAT_ce30efc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30eca
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30f70
    mov.l @r15+,r14

LAB_ce30eca:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30ed2
    mov.l @r15+,r14

LAB_ce30ed2:
    mov.w @(DAT_ce30efe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30f18
    cmp/eq 0x00,r0
    bt LAB_ce30f54
    cmp/eq 0x01,r0
    bt LAB_ce30f54
    bra LAB_ce30f6a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30eee:
    #data 0x03f4
DAT_ce30ef0:
    #data 0x01a7
DAT_ce30ef2:
    #data 0x01ac
DAT_ce30ef4:
    #data 0x0158
DAT_ce30ef6:
    #data 0x01d6
DAT_ce30ef8:
    #data 0x01ff
DAT_ce30efa:
    #data 0x01fe
DAT_ce30efc:
    #data 0x01f9
DAT_ce30efe:
    #data 0x01e8
    #align4

PTR_ce30f00:
    #data DAT_ce35a7c
PTR_ce30f04:
    #data loc_8c2896b0
PTR_ce30f08:
    #data loc_8c034e8c
PTR_ce30f0c:
    #data PTR_ce35bdc
PTR_ce30f10:
    #data loc_8c0511e2
PTR_ce30f14:
    #data loc_8c052c84

;=============================================

LAB_ce30f18:
    mov.l @(PTR_ce30ff8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30f60
    mov.w @(DAT_ce30ff0,pc),r0
    fldi0 fr3
    mov.b @(r0,r14),r3
    lds r3,FPUL
    float FPUL,fr4
    fcmp/eq fr3,fr4
    bt LAB_ce30f6a
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce30ff2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f44
    mova @(DAT_ce30ffc,pc),r0
    bra LAB_ce30f48
    fmov.s @r0,fr3

LAB_ce30f44:
    mova @(DAT_ce31000,pc),r0
    fmov.s @r0,fr3

LAB_ce30f48:
    fmul fr3,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    bra LAB_ce30f6a
    fmov fr3,@(r0,r14)

LAB_ce30f54:
    mov.l @(PTR_ce30ff8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f6a

LAB_ce30f60:
    lds.l @r15+,PR
    mov.l @(PTR_ce31004,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30f6a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f70:
    mov.w @(DAT_ce30ff4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30f8c
    cmp/eq 0x01,r0
    bt LAB_ce30f8c
    cmp/eq 0x02,r0
    bt LAB_ce30f8c
    bra LAB_ce30fa2
    nop

LAB_ce30f8c:
    mov.l @(PTR_ce30ff8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fa2
    lds.l @r15+,PR
    mov.l @(PTR_ce31004,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30fa2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fa8:
    mov.w @(DAT_ce30ff4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30fc4
    cmp/eq 0x00,r0
    bt LAB_ce31018
    cmp/eq 0x01,r0
    bt LAB_ce31018
    bra LAB_ce3102e
    nop

LAB_ce30fc4:
    mov.l @(PTR_ce30ff8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31024
    mov.w @(DAT_ce30ff0,pc),r0
    fldi0 fr3
    mov.b @(r0,r14),r3
    lds r3,FPUL
    float FPUL,fr4
    fcmp/eq fr3,fr4
    bt LAB_ce3102e
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce30ff2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31008
    mova @(DAT_ce30ffc,pc),r0
    bra LAB_ce3100c
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ff0:
    #data 0x0141
DAT_ce30ff2:
    #data 0x01d2
DAT_ce30ff4:
    #data 0x01e8
    #align4

PTR_ce30ff8:
    #data loc_8c034dee
DAT_ce30ffc:
    #data 0x3fd55555
DAT_ce31000:
    #data 0xbfd55555
PTR_ce31004:
    #data loc_8c051648

;=============================================

LAB_ce31008:
    mova @(DAT_ce310cc,pc),r0
    fmov.s @r0,fr3

LAB_ce3100c:
    fmul fr3,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    bra LAB_ce3102e
    fmov fr3,@(r0,r14)

LAB_ce31018:
    mov.l @(PTR_ce310d0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3102e

LAB_ce31024:
    lds.l @r15+,PR
    mov.l @(PTR_ce310d4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3102e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31034:
    mov.w @(DAT_ce310c6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31050
    cmp/eq 0x00,r0
    bt LAB_ce31060
    cmp/eq 0x01,r0
    bt LAB_ce31060
    bra LAB_ce31076
    nop

LAB_ce31050:
    mov 0x22,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31060
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3107c
    mov.l @r15+,r14

LAB_ce31060:
    mov.l @(PTR_ce310d0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31076
    lds.l @r15+,PR
    mov.l @(PTR_ce310d4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31076:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3107c:
    mov r4,r3
    mov.l @(PTR_ce310d8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3108e:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x20,r0
    mov.w r0,@(0x1c,r4)
    mov.w @(DAT_ce310c8,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce310a6
    mova @(DAT_ce310dc,pc),r0
    bra LAB_ce310aa
    fmov.s @r0,fr3

LAB_ce310a6:
    mova @(DAT_ce310e0,pc),r0
    fmov.s @r0,fr3

LAB_ce310aa:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce310c8,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce310bc
    mova @(DAT_ce310e4,pc),r0
    bra LAB_ce310c0
    fmov.s @r0,fr3

LAB_ce310bc:
    mova @(DAT_ce310e8,pc),r0
    fmov.s @r0,fr3

LAB_ce310c0:
    mov 0x68,r0
    rts
    fmov fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310c6:
    #data 0x01e8
DAT_ce310c8:
    #data 0x01d2
    #align4

DAT_ce310cc:
    #data 0xbfd55555
PTR_ce310d0:
    #data loc_8c034dee
PTR_ce310d4:
    #data loc_8c051648
PTR_ce310d8:
    #data PTR_ce35bec
DAT_ce310dc:
    #data 0x41555555
DAT_ce310e0:
    #data 0xc1555555
DAT_ce310e4:
    #data 0xbe555555
DAT_ce310e8:
    #data 0x3e555555

;=============================================

LAB_ce310ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31200,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce311fc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31106
    mov.l @(PTR_ce31204,pc),r3
    mov 0x03,r5
    jsr @r3
    mov r14,r4

LAB_ce31106:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31138
    mov.b @(0x6,r14),r0
    mov r14,r4
    fldi0 fr4
    mov 0x04,r6
    add 0x01,r0
    mov.l @(PTR_ce31208,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x0A,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31138:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3113e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31200,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31158
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3120c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31158:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31160:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31210,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31214,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31176:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31218,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce3121c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce311fe,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31198
    bsr FUN_ce311da
    mov r14,r4
    bra LAB_ce3119c
    nop

LAB_ce31198:
    bsr FUN_ce311b8
    mov r14,r4

LAB_ce3119c:
    mov.l @(PTR_ce31220,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce311b2
    lds.l @r15+,PR
    mov.l @(PTR_ce31224,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce311b2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce311b8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31200,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311d2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31228,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce311d2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce311da:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31200,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311f4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31228,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce311f4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311fc:
    #data 0x0141
DAT_ce311fe:
    #data 0x01fe
    #align4

PTR_ce31200:
    #data loc_8c034dee
PTR_ce31204:
    #data loc_8c05120e
PTR_ce31208:
    #data loc_8c034e8c
PTR_ce3120c:
    #data loc_8c051648
PTR_ce31210:
    #data loc_8c050084
PTR_ce31214:
    #data loc_8c04ff88
PTR_ce31218:
    #data loc_8c04fea8
PTR_ce3121c:
    #data loc_8c050048
PTR_ce31220:
    #data loc_8c052ce2
PTR_ce31224:
    #data loc_8c052dac
PTR_ce31228:
    #data loc_8c05176e

;=============================================

LAB_ce3122c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3128a
    mov.l @(PTR_ce3136c,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x14,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x11,r6
    mov.w @(DAT_ce31364,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31370,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31366,pc),r0
    mov 0x59,r2
    mov 0x00,r4
    mov.l @(PTR_ce31374,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x1E,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31378,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3137c,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4

LAB_ce3128a:
    mov.w @(DAT_ce31368,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3129a
    mov.l @(PTR_ce31380,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3129a:
    mov 0x5C,r1
    mov.l @(PTR_ce31384,pc),r3
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
    mov.l @(PTR_ce31388,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312ee
    lds.l @r15+,PR
    mov.l @(PTR_ce3138c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce312ee:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312f4:
    mov r4,r3
    mov.l @(PTR_ce31390,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31306:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31388,pc),r3
    jsr @r3
    mov r4,r14
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3136a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31336
    mova @(DAT_ce31394,pc),r0
    bra LAB_ce3133a
    fmov.s @r0,fr3

LAB_ce31336:
    mova @(DAT_ce31398,pc),r0
    fmov.s @r0,fr3

LAB_ce3133a:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3136a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3134c
    mova @(DAT_ce3139c,pc),r0
    bra LAB_ce31350
    fmov.s @r0,fr3

LAB_ce3134c:
    mova @(DAT_ce313a0,pc),r0
    fmov.s @r0,fr3

LAB_ce31350:
    mov 0x68,r0
    mov.l @(PTR_ce31378,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x0E,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov 0x06,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31364:
    #data 0x01f9
DAT_ce31366:
    #data 0x01a1
DAT_ce31368:
    #data 0x01ff
DAT_ce3136a:
    #data 0x01d2
    #align4

PTR_ce3136c:
    #data loc_8c052b4c
PTR_ce31370:
    #data loc_8c034e8c
PTR_ce31374:
    #data loc_8c2896b0
PTR_ce31378:
    #data loc_8c042008
PTR_ce3137c:
    #data loc_8c056de4
PTR_ce31380:
    #data loc_8c0511e2
PTR_ce31384:
    #data loc_8c052c84
PTR_ce31388:
    #data loc_8c034dee
PTR_ce3138c:
    #data loc_8c051648
PTR_ce31390:
    #data PTR_ce35bf8
DAT_ce31394:
    #data 0x417d5555
DAT_ce31398:
    #data 0xc17d5555
DAT_ce3139c:
    #data 0xbea00000
DAT_ce313a0:
    #data 0x3ea00000

;=============================================

LAB_ce313a4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314a0,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce313f8
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce313f8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313fe:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce314a0,pc),r3
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
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31494
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3149a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3145c
    mova @(DAT_ce314a4,pc),r0
    bra LAB_ce31460
    fmov.s @r0,fr3

LAB_ce3145c:
    mova @(DAT_ce314a8,pc),r0
    fmov.s @r0,fr3

LAB_ce31460:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3149a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31472
    mova @(DAT_ce314ac,pc),r0
    bra LAB_ce31476
    fmov.s @r0,fr3

LAB_ce31472:
    mova @(DAT_ce314b0,pc),r0
    fmov.s @r0,fr3

LAB_ce31476:
    mov 0x68,r0
    mov.l @(PTR_ce314b4,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x02,r4
    mov.w @(DAT_ce3149c,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31494:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3149a:
    #data 0x01d2
DAT_ce3149c:
    #data 0x0159
    #align4

PTR_ce314a0:
    #data loc_8c034dee
DAT_ce314a4:
    #data 0x40d55555
DAT_ce314a8:
    #data 0xc0d55555
DAT_ce314ac:
    #data 0xbe555555
DAT_ce314b0:
    #data 0x3e555555
PTR_ce314b4:
    #data loc_8c034e8c

;=============================================

LAB_ce314b8:
    mov.w @(DAT_ce315fa,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31506
    mov 0x5C,r1
    mov.l @(PTR_ce31600,pc),r3
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    mov 0x03,r5
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

LAB_ce31506:
    mov.l @(PTR_ce31604,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3151c
    lds.l @r15+,PR
    mov.l @(PTR_ce31608,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3151c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31522:
    mov r4,r3
    mov.l @(PTR_ce3160c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31534:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31604,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce315fc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31564
    mova @(DAT_ce31610,pc),r0
    bra LAB_ce31568
    fmov.s @r0,fr3

LAB_ce31564:
    mova @(DAT_ce31614,pc),r0
    fmov.s @r0,fr3

LAB_ce31568:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce315fc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3157a
    mova @(DAT_ce31618,pc),r0
    bra LAB_ce3157e
    fmov.s @r0,fr3

LAB_ce3157a:
    mova @(DAT_ce3161c,pc),r0
    fmov.s @r0,fr3

LAB_ce3157e:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31588:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31604,pc),r3
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
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce315f4
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    mov 0x03,r2
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce315fe,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce31620,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce315f4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315fa:
    #data 0x0141
DAT_ce315fc:
    #data 0x01d2
DAT_ce315fe:
    #data 0x0159
    #align4

PTR_ce31600:
    #data loc_8c05120e
PTR_ce31604:
    #data loc_8c034dee
PTR_ce31608:
    #data loc_8c051648
PTR_ce3160c:
    #data PTR_ce35c08
DAT_ce31610:
    #data 0xc1855555
DAT_ce31614:
    #data 0x41855555
DAT_ce31618:
    #data 0x3ea00000
DAT_ce3161c:
    #data 0xbea00000
PTR_ce31620:
    #data loc_8c034e8c

;=============================================

LAB_ce31624:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31728,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3163e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3172c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3163e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31646:
    mov r4,r3
    mov.l @(PTR_ce31730,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31658:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov.l @(PTR_ce31734,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31720,pc),r0
    jsr @r2
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31738,pc),r1
    and 0x03,r0
    shll r0
    mov r14,r4
    mov.w @(r0,r1),r0
    mov.w r0,@(0x1e,r14)
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce3167e:
    mov r4,r3
    mov.l @(PTR_ce3173c,pc),r1
    mov.l r4,@-r15
    mov.w @(0x1e,r3),r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3168e:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31740,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31722,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce316a4:
    mov.l r8,@-r15
    mov 0x34,r8
    mov.b @(0x7,r4),r0
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    mov 0x10,r0
    fmov fr3,@(r0,r5)
    mov 0x38,r0
    fmov.s @(r0,r4),fr3
    mov 0x14,r0
    fmov fr3,@(r0,r5)
    mov.w @(DAT_ce31724,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce316d0
    add r4,r8
    mov.l @(DAT_ce31744,pc),r1
    lds r1,FPUL
    bra LAB_ce316d6
    fsts FPUL,fr3

LAB_ce316d0:
    mov.l @(DAT_ce31748,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce316d6:
    fmov.s @r8,fr2
    mov 0x38,r0
    mov.l @(DAT_ce3174c,pc),r1
    fadd fr3,fr2
    fldi0 fr4
    lds r1,FPUL
    fmov.s fr2,@r8
    fmov.s @(r0,r4),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce31724,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31702
    mova @(DAT_ce31750,pc),r0
    bra LAB_ce31706
    fmov.s @r0,fr2

LAB_ce31702:
    mova @(DAT_ce31754,pc),r0
    fmov.s @r0,fr2

LAB_ce31706:
    mov 0x5C,r0
    mov.l @(PTR_ce3175c,pc),r3
    fmov fr2,@(r0,r4)
    mova @(DAT_ce31758,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x12,r5
    fmov fr3,@(r0,r4)
    mov 0x20,r0
    mov.w r0,@(0x1c,r4)
    mov 0x00,r6
    jmp @r3
    mov.l @r15+,r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31720:
    #data 0x012c
DAT_ce31722:
    #data 0x02a4
DAT_ce31724:
    #data 0x01d2
    #align4

PTR_ce31728:
    #data loc_8c034dee
PTR_ce3172c:
    #data loc_8c051648
PTR_ce31730:
    #data PTR_ce35c14
PTR_ce31734:
    #data loc_8c11e730
PTR_ce31738:
    #data DAT_ce35c1c
PTR_ce3173c:
    #data PTR_ce35c24
PTR_ce31740:
    #data PTR_ce35c30
DAT_ce31744:
    #data 0xc3a00000
DAT_ce31748:
    #data 0x43a00000
DAT_ce3174c:
    #data 0x432b6db6
DAT_ce31750:
    #data 0x41555555
DAT_ce31754:
    #data 0xc1555555
DAT_ce31758:
    #data 0xbf892492
PTR_ce3175c:
    #data loc_8c034e8c

;=============================================

LAB_ce31760:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce318dc,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31802
    mov.b @(0x7,r14),r0
    mov 0x01,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x10,r0
    mov.l @r15,r3
    fmov.s @(r0,r3),fr2
    mova @(DAT_ce318e0,pc),r0
    mov.l @(PTR_ce318ec,pc),r3
    fsub fr3,fr2
    fmov.s @r0,fr3
    mov 0x5C,r0
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fldi0 fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce318e4,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce318e8,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x12,r5
    mov 0x01,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce318f0,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31802:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3180a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce318dc,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31878
    mov.b @(0x7,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x10,r0
    mov.l @r15,r3
    fmov.s @(r0,r3),fr3
    mov 0x34,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce31878:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31880:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce318dc,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x60,r1
    add r14,r1
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce318da,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce318d4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce318f4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce318da,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce318f0,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce318d4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce318da:
    #data 0x041c
    #align4

PTR_ce318dc:
    #data loc_8c034dee
DAT_ce318e0:
    #data 0x42000000
DAT_ce318e4:
    #data 0x41092492
DAT_ce318e8:
    #data 0xbf2b6db6
PTR_ce318ec:
    #data loc_8c067148
PTR_ce318f0:
    #data loc_8c034e8c
PTR_ce318f4:
    #data loc_8c0511b4

;=============================================

LAB_ce318f8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31a4c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31910
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce31910:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31918:
    mov r4,r3
    mov.l @(PTR_ce31a50,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3192a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x03,r5
    mov.l @(PTR_ce31a54,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov 0x00,r6
    mov.l @(PTR_ce31a58,pc),r3
    mov 0x18,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    mov r6,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31950:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a4c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3197a
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31a58,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x12,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3197a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31980:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31a4c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31998
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce31998:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce319a0:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31a5c,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31a44,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce319b6:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r8,@-r15
    mov 0x34,r8
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x10,r0
    fmov fr3,@(r0,r5)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov 0x14,r0
    fmov fr3,@(r0,r5)
    mov.w @(DAT_ce31a46,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce319e8
    add r14,r8
    mov.l @(DAT_ce31a60,pc),r1
    lds r1,FPUL
    bra LAB_ce319ee
    fsts FPUL,fr3

LAB_ce319e8:
    mov.l @(DAT_ce31a64,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce319ee:
    fmov.s @r8,fr2
    mov 0x01,r3
    fadd fr3,fr2
    fmov.s fr2,@r8
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce31a48,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mov r3,r0
    nop
    mov.l @(PTR_ce31a68,pc),r3
    mov.b r0,@(0x4,r5)
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov 0x30,r0
    mov.l @(PTR_ce31a58,pc),r3
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov 0x01,r6
    mov 0x0A,r5
    mov.l @r15+,r8
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a26:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31a40
    mov.b @(0x7,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce31a58,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    jmp @r3
    mov 0x15,r5

LAB_ce31a40:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a44:
    #data 0x02a4
DAT_ce31a46:
    #data 0x01d2
DAT_ce31a48:
    #data 0x0130
    #align4

PTR_ce31a4c:
    #data loc_8c034dee
PTR_ce31a50:
    #data PTR_ce35c44
PTR_ce31a54:
    #data loc_8c067148
PTR_ce31a58:
    #data loc_8c034e8c
PTR_ce31a5c:
    #data PTR_ce35c50
DAT_ce31a60:
    #data 0x44200000
DAT_ce31a64:
    #data 0xc4200000
PTR_ce31a68:
    #data loc_8c066050

;=============================================

LAB_ce31a6c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b9c,pc),r3
    jsr @r3
    mov r5,r13
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31abc
    mov.b @(0x7,r14),r0
    mov 0x01,r3
    mov 0x03,r6
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.w @(DAT_ce31b8e,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce31b90,pc),r0
    extu.b r1,r1
    mov.l @(PTR_ce31ba0,pc),r2
    mov.w r1,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x4,r13)
    mov 0x10,r0
    fmov.s @(r0,r13),fr3
    mov 0x34,r0
    fmov fr3,@(r0,r14)
    mov 0x14,r0
    fmov.s @(r0,r13),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31abc:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31ac4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b9c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31ae8
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31ba0,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ae8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31aee:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31b9c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b06
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce31b06:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31b0e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ba4,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31b26
    lds.l @r15+,PR
    mov.l @(PTR_ce31ba8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b26:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31bac,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b38:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31bb0,pc),r0
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b54:
    mov.w @(DAT_ce31b92,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31bc6
    mov.w @(DAT_ce31b94,pc),r0
    mov.w @(DAT_ce31b96,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31bc6
    mov.w @(r0,r14),r0
    mov.w @(DAT_ce31b98,pc),r3
    extu.w r0,r0
    tst r3,r0
    bt LAB_ce31b7e
    bra LAB_ce31bce
    mov 0x00,r0

LAB_ce31b7e:
    mov.w @(DAT_ce31b94,pc),r0
    mov.w @(DAT_ce31b9a,pc),r2
    mov.w @(r0,r14),r1
    extu.w r1,r1
    tst r2,r1
    bt LAB_ce31bb4
    bra LAB_ce31bce
    mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b8e:
    #data 0x01d2
DAT_ce31b90:
    #data 0x0130
DAT_ce31b92:
    #data 0x0525
DAT_ce31b94:
    #data 0x0340
DAT_ce31b96:
    #data 0x0360
DAT_ce31b98:
    #data 0x0200
DAT_ce31b9a:
    #data 0x0100
    #align4

PTR_ce31b9c:
    #data loc_8c034dee
PTR_ce31ba0:
    #data loc_8c034e8c
PTR_ce31ba4:
    #data loc_8c046c8a
PTR_ce31ba8:
    #data loc_8c051648
PTR_ce31bac:
    #data PTR_ce35c64
PTR_ce31bb0:
    #data PTR_ce35c6c

;=============================================

LAB_ce31bb4:
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x40,r0
    bt LAB_ce31bc0
    bra LAB_ce31bc2
    mov 0x02,r0

LAB_ce31bc0:
    mov 0x03,r0

LAB_ce31bc2:
    bra LAB_ce31bd0
    mov.w r0,@(0x1c,r14)

LAB_ce31bc6:
    mov.l @(PTR_ce31cac,pc),r2
    jsr @r2
    nop
    and 0x03,r0

LAB_ce31bce:
    mov.w r0,@(0x1c,r14)

LAB_ce31bd0:
    mov.l @(PTR_ce31cb0,pc),r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce31bde
    mov.l @(PTR_ce31cb4,pc),r1
    bra LAB_ce31be2
    mov.w @(0x1c,r14),r0

LAB_ce31bde:
    mov.l @(PTR_ce31cb8,pc),r1
    mov.w @(0x1c,r14),r0

LAB_ce31be2:
    mov.b @(r0,r1),r0
    mov.l @(PTR_ce31cbc,pc),r3
    extu.b r0,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov 0x02,r2
    cmp/ge r2,r0
    bf LAB_ce31bf8
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31bf8:
    mov.w @(0x1c,r14),r0
    mov.l @(PTR_ce31cc0,pc),r13
    cmp/eq 0x00,r0
    bt LAB_ce31c10
    cmp/eq 0x01,r0
    bt LAB_ce31c1c
    cmp/eq 0x02,r0
    bt LAB_ce31c20
    cmp/eq 0x03,r0
    bt LAB_ce31c24
    bra LAB_ce31c28
    nop

LAB_ce31c10:
    mov.l @(PTR_ce31cc4,pc),r3
    mov 0x06,r5
    jsr @r3
    mov r14,r4
    bra LAB_ce31c2a
    mov 0x00,r6

LAB_ce31c1c:
    bra LAB_ce31c2a
    mov 0x01,r6

LAB_ce31c20:
    bra LAB_ce31c2a
    mov 0x02,r6

LAB_ce31c24:
    bra LAB_ce31c2a
    mov 0x04,r6

LAB_ce31c28:
    mov 0x01,r6

LAB_ce31c2a:
    mov 0x13,r5
    jsr @r13
    mov r14,r4
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31c38:
    mov.l @(PTR_ce31cc0,pc),r3
    mov 0x02,r6
    jmp @r3
    mov 0x13,r5

LAB_ce31c40:
    mov.w @(DAT_ce31caa,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31cc8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31cc0,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x13,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c60:
    mov.w @(DAT_ce31caa,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31cc8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31cc0,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x13,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c80:
    mov 0x20,r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31ccc,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31c94:
    mov r4,r3
    mov.l @(PTR_ce31cd0,pc),r1
    mov.l r4,@-r15
    mov.w @(0x1c,r3),r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31ca4:
    mov.l @(PTR_ce31cd4,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31caa:
    #data 0x012c
    #align4

PTR_ce31cac:
    #data loc_8c03319e
PTR_ce31cb0:
    #data loc_8c289636
PTR_ce31cb4:
    #data DAT_ce35c80
PTR_ce31cb8:
    #data DAT_ce35c84
PTR_ce31cbc:
    #data loc_8c0514b8
PTR_ce31cc0:
    #data loc_8c034e8c
PTR_ce31cc4:
    #data loc_8c067148
PTR_ce31cc8:
    #data loc_8c0bf214
PTR_ce31ccc:
    #data PTR_ce35c88
PTR_ce31cd0:
    #data PTR_ce35c9c
PTR_ce31cd4:
    #data loc_8c034dee

;=============================================

LAB_ce31cd8:
    mov r4,r3
    mov.l @(PTR_ce31e28,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31cea:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31e2c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31e1e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31d1e
    mov.b @(0x7,r14),r0
    mov 0x02,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31e20,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31e30,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce31d1e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d24:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r1
    mov.l @(PTR_ce31e2c,pc),r3
    add r14,r1
    mov 0x38,r0
    sts.l PR,@-r15
    fmov.s @r1,fr3
    mov 0x6C,r1
    fmov.s @(r0,r14),fr2
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
    mov.w @(DAT_ce31e1e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31d7c
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov.l @(DAT_ce31e38,pc),r1
    mov r14,r4
    add 0x01,r0
    mov.l @(DAT_ce31e34,pc),r2
    mov.b r0,@(0x7,r14)
    add 0x48,r4
    mov.w @(DAT_ce31e1e,pc),r0
    lds r1,FPUL
    mov.b r3,@(r0,r14)
    mov 0x38,r0
    mov.l @r4,r3
    fsts FPUL,fr3
    add r2,r3
    extu.w r3,r3
    mov.l r3,@r4
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce31d7c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d82:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r1
    mov.l @(PTR_ce31e2c,pc),r3
    add r14,r1
    mov 0x38,r0
    sts.l PR,@-r15
    fmov.s @r1,fr3
    mov 0x6C,r1
    fmov.s @(r0,r14),fr2
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
    mova @(DAT_ce31e3c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31e22,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bt LAB_ce31df4
    mov.b @(0x7,r14),r0
    mov r14,r4
    add 0x48,r4
    mov.l @(DAT_ce31e34,pc),r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce31e40,pc),r0
    mov.l @r4,r3
    mov 0x05,r5
    add r2,r3
    extu.w r3,r3
    mov.l r3,@r4
    fmov.s @r0,fr3
    mov.w @(DAT_ce31e22,pc),r0
    mov.l @(PTR_ce31e44,pc),r3
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31e48,pc),r2
    mov r14,r4
    mov 0x05,r6
    mov 0x13,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31df4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31dfa:
    mov.l @(PTR_ce31e2c,pc),r3
    jmp @r3
    nop

LAB_ce31e00:
    mov.l @(PTR_ce31e2c,pc),r3
    jmp @r3
    nop

LAB_ce31e06:
    mov.w @(DAT_ce31e24,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce31e2c,pc),r3
    jmp @r3
    nop

LAB_ce31e12:
    mov.w @(DAT_ce31e24,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce31e2c,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e1e:
    #data 0x0141
DAT_ce31e20:
    #data 0x01f9
DAT_ce31e22:
    #data 0x041c
DAT_ce31e24:
    #data 0x012c
    #align4

PTR_ce31e28:
    #data PTR_ce35cac
PTR_ce31e2c:
    #data loc_8c034dee
DAT_ce31e30:
    #data 0x414db6db
DAT_ce31e34:
    #data 0x00008000
DAT_ce31e38:
    #data 0x4391b6db
DAT_ce31e3c:
    #data 0x449936db
DAT_ce31e40:
    #data 0x44811b6d
PTR_ce31e44:
    #data loc_8c067148
PTR_ce31e48:
    #data loc_8c034e8c

;=============================================

LAB_ce31e4c:
    mov.w @(DAT_ce31f5c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31f70,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31e60:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31f74,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31f5e,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e76:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31f78,pc),r3
    mov.l r5,@r15
    mov 0x0A,r5
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f7c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31f60,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f62,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31f64,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31ec0
    mov.w @(DAT_ce31f66,pc),r0
    mov 0x5A,r2
    bra LAB_ce31ee2
    mov.b r2,@(r0,r14)

LAB_ce31ec0:
    mov.w @(DAT_ce31f5c,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce31ed0
    mov.w @(DAT_ce31f66,pc),r0
    mov 0x34,r3
    bra LAB_ce31ee2
    mov.b r3,@(r0,r14)

LAB_ce31ed0:
    mov.w @(DAT_ce31f68,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce31edc
    bra LAB_ce31ede
    mov 0x32,r2

LAB_ce31edc:
    mov 0x30,r2

LAB_ce31ede:
    mov.w @(DAT_ce31f66,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce31ee2:
    mov.w @(DAT_ce31f6a,pc),r0
    mov.l @(PTR_ce31f80,pc),r3
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
    mov.l @r15,r3
    mov r13,r0
    nop
    mov.b r0,@(0x6,r3)
    mov.w @(DAT_ce31f6c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f16
    mova @(DAT_ce31f84,pc),r0
    bra LAB_ce31f1a
    fmov.s @r0,fr3

LAB_ce31f16:
    mova @(DAT_ce31f88,pc),r0
    fmov.s @r0,fr3

LAB_ce31f1a:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f6c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f2c
    mova @(DAT_ce31f8c,pc),r0
    bra LAB_ce31f30
    fmov.s @r0,fr3

LAB_ce31f2c:
    mova @(DAT_ce31f90,pc),r0
    fmov.s @r0,fr3

LAB_ce31f30:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f68,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f40
    bra LAB_ce31f42
    mov 0x0C,r0

LAB_ce31f40:
    mov 0x01,r0

LAB_ce31f42:
    mov.l @(PTR_ce31f94,pc),r2
    mov.w r0,@(0x1c,r14)
    jsr @r2
    mov r14,r4
    mov r14,r4
    mov 0x15,r5
    mov 0x00,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31f98,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f5c:
    #data 0x01e9
DAT_ce31f5e:
    #data 0x02a4
DAT_ce31f60:
    #data 0x041c
DAT_ce31f62:
    #data 0x01f9
DAT_ce31f64:
    #data 0x0255
DAT_ce31f66:
    #data 0x01a1
DAT_ce31f68:
    #data 0x01a3
DAT_ce31f6a:
    #data 0x01ac
DAT_ce31f6c:
    #data 0x01d2
    #align4

PTR_ce31f70:
    #data PTR_ce35cbc
PTR_ce31f74:
    #data PTR_ce35d18
PTR_ce31f78:
    #data loc_8c056de4
PTR_ce31f7c:
    #data loc_8c05218a
PTR_ce31f80:
    #data loc_8c2896b0
DAT_ce31f84:
    #data 0x41855555
DAT_ce31f88:
    #data 0xc1855555
DAT_ce31f8c:
    #data 0xbea00000
DAT_ce31f90:
    #data 0x3ea00000
PTR_ce31f94:
    #data loc_8c05115a
PTR_ce31f98:
    #data loc_8c034e8c

;=============================================

LAB_ce31f9c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce320c0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce320ba,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32038
    mov 0x5C,r1
    mov.l @(PTR_ce320c4,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32038
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce320bc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3200c
    mova @(DAT_ce320c8,pc),r0
    bra LAB_ce32010
    fmov.s @r0,fr3

LAB_ce3200c:
    mova @(DAT_ce320cc,pc),r0
    fmov.s @r0,fr3

LAB_ce32010:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce320bc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32022
    mova @(DAT_ce320d0,pc),r0
    bra LAB_ce32026
    fmov.s @r0,fr3

LAB_ce32022:
    mova @(DAT_ce320d4,pc),r0
    fmov.s @r0,fr3

LAB_ce32026:
    mov.l @(PTR_ce320d8,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x01,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32038:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3203e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce320c0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32058
    lds.l @r15+,PR
    mov.l @(PTR_ce320dc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32058:
    mov.w @(DAT_ce320ba,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce320a2
    mov 0x5C,r1
    mov.l @(PTR_ce320c4,pc),r3
    add r14,r1
    mov r14,r4
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
    jmp @r3
    mov.l @r15+,r14

LAB_ce320a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce320a8:
    mov r4,r3
    mov.l @(PTR_ce320e0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320ba:
    #data 0x0141
DAT_ce320bc:
    #data 0x01d2
    #align4

PTR_ce320c0:
    #data loc_8c034dee
PTR_ce320c4:
    #data FUN_ce34df6
DAT_ce320c8:
    #data 0x41200000
DAT_ce320cc:
    #data 0xc1200000
DAT_ce320d0:
    #data 0xbe555555
DAT_ce320d4:
    #data 0x3e555555
PTR_ce320d8:
    #data loc_8c034e8c
PTR_ce320dc:
    #data loc_8c051648
PTR_ce320e0:
    #data PTR_ce35d24

;=============================================

LAB_ce320e4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x04,r5
    mov.l @(PTR_ce32204,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32208,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce321fa,pc),r0
    mov 0x00,r3
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce321fc,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x14,r0
    mov.l @(PTR_ce3220c,pc),r3
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32210,pc),r2
    mov r14,r4
    mov 0x02,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3212e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32214,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3219e
    mov.b @(0x6,r14),r0
    mov 0x11,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce321fe,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32218,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32200,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3215e
    mova @(DAT_ce3221c,pc),r0
    bra LAB_ce32162
    fmov.s @r0,fr3

LAB_ce3215e:
    mova @(DAT_ce32220,pc),r0
    fmov.s @r0,fr3

LAB_ce32162:
    mov 0x38,r0
    mov.l @(PTR_ce32224,pc),r3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32228,pc),r0
    fmov.s @r3,fr2
    fmov.s @r0,fr3
    mov 0x34,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce32202,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32186
    mova @(DAT_ce3222c,pc),r0
    bra LAB_ce32188
    fmov.s @r0,fr2

LAB_ce32186:
    fldi0 fr2

LAB_ce32188:
    mov 0x34,r0
    mov.l @(PTR_ce32210,pc),r3
    fmov.s @(r0,r14),fr3
    mov r14,r4
    mov 0x03,r6
    fadd fr2,fr3
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3219e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce321a4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32214,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321f4
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32230,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32200,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce321e6
    lds.l @r15+,PR
    mov.l @(PTR_ce32234,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce321e6:
    lds.l @r15+,PR
    mov.l @(PTR_ce32210,pc),r2
    mov r14,r4
    mov 0x04,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce321f4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce321fa:
    #data 0x041c
DAT_ce321fc:
    #data 0x01f9
DAT_ce321fe:
    #data 0x01d6
DAT_ce32200:
    #data 0x01fe
DAT_ce32202:
    #data 0x01a3
    #align4

PTR_ce32204:
    #data loc_8c056de4
PTR_ce32208:
    #data loc_8c05218a
PTR_ce3220c:
    #data loc_8c05115a
PTR_ce32210:
    #data loc_8c034e8c
PTR_ce32214:
    #data loc_8c034dee
PTR_ce32218:
    #data loc_8c053082
DAT_ce3221c:
    #data 0x42892492
DAT_ce32220:
    #data 0x43892492
PTR_ce32224:
    #data loc_8c26a524
DAT_ce32228:
    #data 0xc3a00000
DAT_ce3222c:
    #data 0x443aaaaa
DAT_ce32230:
    #data 0xbf4db6db
PTR_ce32234:
    #data loc_8c05176e

;=============================================

LAB_ce32238:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32398,pc),r3
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
    mov.w @(DAT_ce32388,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce322b0
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32388,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3238a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3239c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce323a0,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce322b0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce322b6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32398,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce322d0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce323a4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce322d0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce322d8:
    mov r4,r3
    mov.l @(PTR_ce323a8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce322ea:
    mov.w @(DAT_ce3238c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32308
    mov.w @(DAT_ce32390,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3238e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32308:
    mov.b @(0x6,r14),r0
    mov 0x35,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32392,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce323ac,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce323b0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3238a,pc),r0
    fldi0 fr4
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32388,pc),r0
    mov.l @(PTR_ce323b4,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce323a0,pc),r2
    mov 0x02,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32366:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32394,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32396,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3238c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce323b8
    bra LAB_ce323ba
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32388:
    #data 0x041c
DAT_ce3238a:
    #data 0x01f9
DAT_ce3238c:
    #data 0x0255
DAT_ce3238e:
    #data 0x00ff
DAT_ce32390:
    #data 0x03f0
DAT_ce32392:
    #data 0x01a1
DAT_ce32394:
    #data 0x03f8
DAT_ce32396:
    #data 0x0328
    #align4

PTR_ce32398:
    #data loc_8c034dee
PTR_ce3239c:
    #data loc_8c0511b4
PTR_ce323a0:
    #data loc_8c034e8c
PTR_ce323a4:
    #data loc_8c051648
PTR_ce323a8:
    #data PTR_ce35d38
PTR_ce323ac:
    #data loc_8c2896b0
PTR_ce323b0:
    #data loc_8c05218a
PTR_ce323b4:
    #data loc_8c05115a

;=============================================

LAB_ce323b8:
    mov 0x00,r3

LAB_ce323ba:
    mov.w @(DAT_ce324fe,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32514,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32500,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce323fe
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32520,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce32500,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32502,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32518,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3251c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce323fe:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32406:
    mov.w @(DAT_ce32504,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32506,pc),r0
    mov.l @(PTR_ce32514,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32440
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32524,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32440:
    mov.w @(DAT_ce32500,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32468
    mov.w @(DAT_ce32508,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32528,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3250a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32500,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32468:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3246e:
    mov r4,r3
    mov.l @(PTR_ce3252c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32480:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3250c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3249a
    bra LAB_ce3249c
    mov 0x38,r3

LAB_ce3249a:
    mov 0x36,r3

LAB_ce3249c:
    mov.w @(DAT_ce3250e,pc),r0
    mov 0x00,r13
    mov 0x08,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32530,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32534,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32538,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32510,pc),r0
    mov.l @(PTR_ce3253c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32512,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x0F,r0
    mov.l @(PTR_ce32540,pc),r3
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov 0x05,r6
    mov 0x15,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce324fe:
    #data 0x03f1
DAT_ce32500:
    #data 0x0141
DAT_ce32502:
    #data 0x03f0
DAT_ce32504:
    #data 0x03f8
DAT_ce32506:
    #data 0x0328
DAT_ce32508:
    #data 0x03f9
DAT_ce3250a:
    #data 0x0327
DAT_ce3250c:
    #data 0x01a3
DAT_ce3250e:
    #data 0x01a1
DAT_ce32510:
    #data 0x041c
DAT_ce32512:
    #data 0x01f9
    #align4

PTR_ce32514:
    #data loc_8c034dee
DAT_ce32518:
    #data 0xc2695555
DAT_ce3251c:
    #data 0x4313db6d
PTR_ce32520:
    #data loc_8c050834
PTR_ce32524:
    #data loc_8c051648
PTR_ce32528:
    #data loc_8c065794
PTR_ce3252c:
    #data PTR_ce35d44
PTR_ce32530:
    #data loc_8c2896b0
PTR_ce32534:
    #data loc_8c056de4
PTR_ce32538:
    #data loc_8c05218a
PTR_ce3253c:
    #data loc_8c05115a
PTR_ce32540:
    #data loc_8c034e8c

;=============================================

LAB_ce32544:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32690,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32576
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32694,pc),r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32686,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x06,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32576:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3257c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32690,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32596
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32698,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32596:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3259e:
    mov r4,r3
    mov.l @(PTR_ce3269c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce325b0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32686,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce325c8
    bra LAB_ce325ca
    mov 0x3B,r3

LAB_ce325c8:
    mov 0x39,r3

LAB_ce325ca:
    mov.w @(DAT_ce32688,pc),r0
    mov 0x00,r4
    mov 0x08,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce326a0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce326a4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce326a8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce3268a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3268c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce326ac,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32694,pc),r3
    mov 0x0D,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov 0x09,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3262c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32690,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3265e
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32694,pc),r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32686,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x0A,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce3265e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32664:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32690,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3267e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32698,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3267e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32686:
    #data 0x01a3
DAT_ce32688:
    #data 0x01a1
DAT_ce3268a:
    #data 0x041c
DAT_ce3268c:
    #data 0x01f9
    #align4

PTR_ce32690:
    #data loc_8c034dee
PTR_ce32694:
    #data loc_8c034e8c
PTR_ce32698:
    #data loc_8c051648
PTR_ce3269c:
    #data PTR_ce35d50
PTR_ce326a0:
    #data loc_8c2896b0
PTR_ce326a4:
    #data loc_8c056de4
PTR_ce326a8:
    #data loc_8c05218a
PTR_ce326ac:
    #data loc_8c05115a

;=============================================

LAB_ce326b0:
    mov r4,r3
    mov.l @(PTR_ce327e0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce326c2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce327d8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce326da
    bra LAB_ce326dc
    mov 0x3B,r3

LAB_ce326da:
    mov 0x39,r3

LAB_ce326dc:
    mov.w @(DAT_ce327da,pc),r0
    mov 0x00,r4
    mov 0x08,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce327e4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce327e8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce327ec,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce327dc,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce327f4,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    mova @(DAT_ce327f0,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x0D,r6
    mov 0x15,r5
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fdiv fr4,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr2
    fdiv fr4,fr2
    fmov fr2,@(r0,r14)
    mov 0x0E,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3274a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce327f8,pc),r3
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
    mov.w @(DAT_ce327de,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce327aa
    mov.w @(DAT_ce327de,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce327aa:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce327d2
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce327f4,pc),r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce327d8,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x0E,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce327d2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce327d8:
    #data 0x01a3
DAT_ce327da:
    #data 0x01a1
DAT_ce327dc:
    #data 0x01f9
DAT_ce327de:
    #data 0x041c
    #align4

PTR_ce327e0:
    #data PTR_ce35d5c
PTR_ce327e4:
    #data loc_8c2896b0
PTR_ce327e8:
    #data loc_8c056de4
PTR_ce327ec:
    #data loc_8c05218a
DAT_ce327f0:
    #data 0x40800000
PTR_ce327f4:
    #data loc_8c034e8c
PTR_ce327f8:
    #data loc_8c034dee

;=============================================

LAB_ce327fc:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
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
    mov.w @(DAT_ce3293c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt/s LAB_ce3285a
    mov r14,r4
    mov.w @(DAT_ce3293c,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce3285a:
    mov.l @(PTR_ce32948,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32870
    lds.l @r15+,PR
    mov.l @(PTR_ce3294c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32870:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32876:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32950,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce3293e,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3288c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    mov.l r12,@-r15
    mov 0x04,r5
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32954,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32958,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32940,pc),r0
    mov 0x00,r12
    mov.l @(PTR_ce3295c,pc),r3
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce3293c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32960,pc),r2
    mov 0x01,r5
    mov 0x0D,r6
    jsr @r2
    mov r14,r4
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x9,r13)
    mov.b r0,@(0xa,r13)
    mov 0x02,r0
    mov.b r0,@(0xb,r13)
    mov.w @(DAT_ce32942,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce328ec
    mov.l @(PTR_ce32964,pc),r3
    mova @(DAT_ce32968,pc),r0
    fmov.s @r3,fr4
    bra LAB_ce328f4
    fmov.s @r0,fr3

LAB_ce328ec:
    mov.l @(PTR_ce32964,pc),r3
    mova @(DAT_ce3296c,pc),r0
    fmov.s @r0,fr3
    fmov.s @r3,fr4

LAB_ce328f4:
    fadd fr3,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce32970,pc),r0
    fldi0 fr2
    fsub fr3,fr4
    fmov.s @r0,fr3
    mov 0x5C,r0
    fdiv fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce32944,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3291a
    mova @(DAT_ce32974,pc),r0
    bra LAB_ce3291e
    fmov.s @r0,fr2

LAB_ce3291a:
    mova @(DAT_ce32978,pc),r0
    fmov.s @r0,fr2

LAB_ce3291e:
    mov 0x60,r0
    mov.l @(PTR_ce32980,pc),r3
    fmov fr2,@(r0,r14)
    mova @(DAT_ce3297c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x08,r6
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x01,r5
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3293c:
    #data 0x041c
DAT_ce3293e:
    #data 0x02a4
DAT_ce32940:
    #data 0x01f9
DAT_ce32942:
    #data 0x01d2
DAT_ce32944:
    #data 0x01a3
    #align4

PTR_ce32948:
    #data loc_8c034dee
PTR_ce3294c:
    #data loc_8c05176e
PTR_ce32950:
    #data PTR_ce35d68
PTR_ce32954:
    #data loc_8c056de4
PTR_ce32958:
    #data loc_8c05218a
PTR_ce3295c:
    #data loc_8c05115a
PTR_ce32960:
    #data loc_8c02fec4
PTR_ce32964:
    #data loc_8c26a524
DAT_ce32968:
    #data 0xc3a6aaab
DAT_ce3296c:
    #data 0x43a6aaab
DAT_ce32970:
    #data 0x42000000
DAT_ce32974:
    #data 0x41ab6db6
DAT_ce32978:
    #data 0x414db6db
DAT_ce3297c:
    #data 0xbf092492
PTR_ce32980:
    #data loc_8c034e8c

;=============================================

LAB_ce32984:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32ac8,pc),r3
    jsr @r3
    mov r5,r13
    mov.w @(DAT_ce32abc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32a6e
    mov.l @(PTR_ce32acc,pc),r3
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
    mov.w @(DAT_ce32abe,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt/s LAB_ce32a08
    mov 0x00,r12
    mov.w @(DAT_ce32abe,pc),r0
    mov.l @(PTR_ce32ad0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32ac0,pc),r0
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32ad4,pc),r2
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32a08:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce32a6e
    mov.w @(DAT_ce32ac2,pc),r0
    mov.b @(r0,r14),r2
    add 0xD5,r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    add 0x01,r3
    tst r3,r2
    bt LAB_ce32a6e
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32ad8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32adc,pc),r2
    mov 0x00,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32ac4,pc),r0
    mov.l @(r0,r14),r0
    mov.b @(0x1,r0),r0
    extu.b r0,r0
    cmp/eq 0x1A,r0
    bf LAB_ce32a50
    mov.l @(PTR_ce32adc,pc),r2
    mov 0x01,r5
    mov 0x0D,r6
    jsr @r2
    mov r14,r4

LAB_ce32a50:
    mov 0x01,r0
    mov.b r0,@(0xa,r13)
    mov r12,r0
    nop
    mov.b r0,@(0x7,r13)
    mov 0x06,r6
    mov.b r0,@(0x8,r13)
    mov 0x14,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce32ae0,pc),r3
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a6e:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32a78:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce336ca
    mov r4,r14
    mov.l @(PTR_ce32ac8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32aa0
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32ac6,pc),r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov.b r0,@(0x7,r14)

LAB_ce32aa0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32aa6:
    mov.l @(PTR_ce32ae4,pc),r2
    mov 0x05,r1
    mov.l r14,@-r15
    mov.b @r2,r3
    extu.b r3,r3
    cmp/ge r1,r3
    bf/s LAB_ce32ae8
    mov r4,r14
    mov r14,r4
    bra LAB_ce3368e
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32abc:
    #data 0x0141
DAT_ce32abe:
    #data 0x041c
DAT_ce32ac0:
    #data 0x01f9
DAT_ce32ac2:
    #data 0x01fd
DAT_ce32ac4:
    #data 0x020c
DAT_ce32ac6:
    #data 0x012c
    #align4

PTR_ce32ac8:
    #data loc_8c034dee
PTR_ce32acc:
    #data loc_8c053082
PTR_ce32ad0:
    #data loc_8c0511b4
PTR_ce32ad4:
    #data loc_8c051648
PTR_ce32ad8:
    #data loc_8c0ee124
PTR_ce32adc:
    #data loc_8c02fec4
PTR_ce32ae0:
    #data loc_8c034e8c
PTR_ce32ae4:
    #data loc_8c2895f0

;=============================================

LAB_ce32ae8:
    mov.b @(0x9,r5),r0
    tst r0,r0
    bf LAB_ce32afe
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32afe
    mov 0x01,r0
    mov.b r0,@(0x9,r5)

LAB_ce32afe:
    mov.w @(0x1e,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32be0,pc),r1
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32b0c:
    mov.l r14,@-r15
    mov.b @(0x9,r5),r0
    tst r0,r0
    bt/s LAB_ce32b1c
    mov r4,r14
    mov r14,r4
    bra LAB_ce3368e
    mov.l @r15+,r14

LAB_ce32b1c:
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32be4,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32b2c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32be8,pc),r3
    mov.l r5,@r15
    mov 0x14,r5
    mov.b @(0x7,r14),r0
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce32b50:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    bsr FUN_ce336ca
    mov r5,r13
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce32b66
    bra LAB_ce32bf6
    mov 0x05,r6

LAB_ce32b66:
    mov.w @(DAT_ce32bd2,pc),r0
    mov.w @(DAT_ce32bd4,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32b8a
    mov.w @(r0,r14),r1
    mov.w @(DAT_ce32bd6,pc),r2
    extu.w r1,r1
    tst r2,r1
    bt LAB_ce32b80
    bra LAB_ce32b82
    mov 0x01,r2

LAB_ce32b80:
    mov 0x00,r2

LAB_ce32b82:
    mov.w @(DAT_ce32bd8,pc),r0
    mov.b r2,@(r0,r14)
    bra LAB_ce32bf6
    mov 0x03,r6

LAB_ce32b8a:
    mov.w @(r0,r14),r0
    mov.w @(DAT_ce32bda,pc),r4
    extu.w r0,r0
    tst 0x60,r0
    bt LAB_ce32bc2
    mov.w @(DAT_ce32bd2,pc),r0
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r4,r2
    bt LAB_ce32ba2
    bra LAB_ce32c0e
    mov 0x06,r6

LAB_ce32ba2:
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x20,r0
    bt LAB_ce32bae
    bra LAB_ce32bb0
    mov 0x01,r2

LAB_ce32bae:
    mov 0x00,r2

LAB_ce32bb0:
    mov r13,r5
    mov.w @(DAT_ce32bd8,pc),r0
    mov r14,r4
    mov 0x04,r6
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra FUN_ce33674
    mov.l @r15+,r14

LAB_ce32bc2:
    mov.w @(DAT_ce32bd2,pc),r0
    mov.w @(DAT_ce32bdc,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32bec
    bra LAB_ce32c0e
    mov 0x01,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32bd2:
    #data 0x034a
DAT_ce32bd4:
    #data 0x0300
DAT_ce32bd6:
    #data 0x0100
DAT_ce32bd8:
    #data 0x01a3
DAT_ce32bda:
    #data 0x1000
DAT_ce32bdc:
    #data 0x2000
    #align4

PTR_ce32be0:
    #data PTR_ce35d78
PTR_ce32be4:
    #data PTR_ce35d98
PTR_ce32be8:
    #data loc_8c034e8c

;=============================================

LAB_ce32bec:
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bt LAB_ce32c02
    mov 0x02,r6

LAB_ce32bf6:
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    bra FUN_ce33674
    mov.l @r15+,r14

LAB_ce32c02:
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce32cf2,pc),r3
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32c1a
    mov 0x07,r6

LAB_ce32c0e:
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    bra FUN_ce33674
    mov.l @r15+,r14

LAB_ce32c1a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32c22:
    mov.l r14,@-r15
    mov.b @(0x9,r5),r0
    tst r0,r0
    bt/s LAB_ce32c32
    mov r4,r14
    mov r14,r4
    bra LAB_ce3368e
    mov.l @r15+,r14

LAB_ce32c32:
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32d00,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32c42:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    fldi0 fr4
    mov.l @(PTR_ce32d08,pc),r3
    mov 0x04,r6
    mov.l r5,@r15
    mov 0x14,r5
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32d04,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce32c80:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    bsr FUN_ce336ca
    mov r5,r13
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce32c96
    bra LAB_ce32d32
    mov 0x05,r6

LAB_ce32c96:
    mov.w @(DAT_ce32cf4,pc),r0
    mov.w @(DAT_ce32cf6,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32cba
    mov.w @(r0,r14),r1
    mov.w @(DAT_ce32cf8,pc),r2
    extu.w r1,r1
    tst r2,r1
    bt LAB_ce32cb0
    bra LAB_ce32cb2
    mov 0x01,r2

LAB_ce32cb0:
    mov 0x00,r2

LAB_ce32cb2:
    mov.w @(DAT_ce32cfa,pc),r0
    mov.b r2,@(r0,r14)
    bra LAB_ce32d32
    mov 0x03,r6

LAB_ce32cba:
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x60,r0
    bt LAB_ce32d0c
    mov.w @(DAT_ce32cf4,pc),r0
    mov.w @(DAT_ce32cfc,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32cd2
    bra LAB_ce32d1a
    mov 0x06,r6

LAB_ce32cd2:
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x20,r0
    bt LAB_ce32cde
    bra LAB_ce32ce0
    mov 0x01,r2

LAB_ce32cde:
    mov 0x00,r2

LAB_ce32ce0:
    mov r13,r5
    mov.w @(DAT_ce32cfa,pc),r0
    mov r14,r4
    mov 0x04,r6
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra FUN_ce33674
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32cf2:
    #data 0x0800
DAT_ce32cf4:
    #data 0x034a
DAT_ce32cf6:
    #data 0x0300
DAT_ce32cf8:
    #data 0x0100
DAT_ce32cfa:
    #data 0x01a3
DAT_ce32cfc:
    #data 0x1000
    #align4

PTR_ce32d00:
    #data PTR_ce35da0
DAT_ce32d04:
    #data 0x40892492
PTR_ce32d08:
    #data loc_8c034e8c

;=============================================

LAB_ce32d0c:
    mov.w @(DAT_ce32e28,pc),r0
    mov.w @(DAT_ce32e2a,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32d26
    mov 0x02,r6

LAB_ce32d1a:
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    bra FUN_ce33674
    mov.l @r15+,r14

LAB_ce32d26:
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce32e2c,pc),r2
    extu.w r3,r3
    tst r2,r3
    bf LAB_ce32d3e
    mov 0x00,r6

LAB_ce32d32:
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    bra FUN_ce33674
    mov.l @r15+,r14

LAB_ce32d3e:
    mov 0x60,r1
    add r14,r1
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32e38,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32e2e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fadd fr4,fr3
    fcmp/gt fr2,fr3
    bt/s LAB_ce32d82
    mov r14,r4
    mov.w @(DAT_ce32e2e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fadd fr4,fr3
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce32d82:
    lds.l @r15+,PR
    mov.l @(PTR_ce32e3c,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32d8c:
    mov.l r14,@-r15
    mov.b @(0x9,r5),r0
    tst r0,r0
    bt/s LAB_ce32d9c
    mov r4,r14
    mov r14,r4
    bra LAB_ce3368e
    mov.l @r15+,r14

LAB_ce32d9c:
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32e40,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32dac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    fldi0 fr4
    mov.l @(PTR_ce32e48,pc),r3
    mov 0x05,r6
    mov.l r5,@r15
    mov 0x14,r5
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32e44,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce32dea:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    bsr FUN_ce336ca
    mov r5,r13
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce32e04
    bra LAB_ce32ea4
    mov 0x05,r6

LAB_ce32e04:
    mov.w @(DAT_ce32e28,pc),r0
    mov.w @(DAT_ce32e30,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32e4c
    mov.w @(r0,r14),r1
    mov.w @(DAT_ce32e32,pc),r2
    extu.w r1,r1
    tst r2,r1
    bt LAB_ce32e1e
    bra LAB_ce32e20
    mov 0x01,r2

LAB_ce32e1e:
    mov 0x00,r2

LAB_ce32e20:
    mov.w @(DAT_ce32e34,pc),r0
    mov.b r2,@(r0,r14)
    bra LAB_ce32ea4
    mov 0x03,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e28:
    #data 0x034a
DAT_ce32e2a:
    #data 0x0800
DAT_ce32e2c:
    #data 0x2000
DAT_ce32e2e:
    #data 0x041c
DAT_ce32e30:
    #data 0x0300
DAT_ce32e32:
    #data 0x0100
DAT_ce32e34:
    #data 0x01a3
    #align4

DAT_ce32e38:
    #data 0x44452492
PTR_ce32e3c:
    #data loc_8c034dee
PTR_ce32e40:
    #data PTR_ce35da8
DAT_ce32e44:
    #data 0xc0cdb6db
PTR_ce32e48:
    #data loc_8c034e8c

;=============================================

LAB_ce32e4c:
    mov.w @(r0,r14),r0
    mov.w @(DAT_ce32f4a,pc),r4
    extu.w r0,r0
    tst 0x60,r0
    bt LAB_ce32e82
    mov.w @(DAT_ce32f4c,pc),r0
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r4,r2
    bt LAB_ce32e64
    bra LAB_ce32e90
    mov 0x06,r6

LAB_ce32e64:
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x20,r0
    bt LAB_ce32e70
    bra LAB_ce32e72
    mov 0x01,r2

LAB_ce32e70:
    mov 0x00,r2

LAB_ce32e72:
    mov.w @(DAT_ce32f4e,pc),r0
    mov r13,r5
    mov 0x04,r6
    mov.b r2,@(r0,r14)
    bsr FUN_ce33674
    mov r14,r4
    bra LAB_ce32f2c
    nop

LAB_ce32e82:
    mov.w @(DAT_ce32f4c,pc),r0
    mov.w @(DAT_ce32f50,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32e9a
    mov 0x07,r6

LAB_ce32e90:
    mov r13,r5
    bsr FUN_ce33674
    mov r14,r4
    bra LAB_ce32f2c
    nop

LAB_ce32e9a:
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bf LAB_ce32eae
    mov 0x00,r6

LAB_ce32ea4:
    mov r13,r5
    bsr FUN_ce33674
    mov r14,r4
    bra LAB_ce32f2c
    nop

LAB_ce32eae:
    mov 0x60,r1
    add r14,r1
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce32f52,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt/s LAB_ce32ee8
    fldi0 fr15
    mov.w @(DAT_ce32f52,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)

LAB_ce32ee8:
    mov.l @(PTR_ce32f54,pc),r3
    jsr @r3
    nop
    tst 0x0F,r0
    bf LAB_ce32f26
    mova @(DAT_ce32f58,pc),r0
    mov.l @(PTR_ce32f60,pc),r13
    fmov.s @r0,fr3
    mova @(DAT_ce32f5c,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr15,@(r0,r15)
    fldi1 fr15
    fmov fr15,fr4
    fmov fr15,fr5
    jsr @r13
    mov r14,r4
    mov r15,r5
    fmov fr15,fr4
    fmov fr15,fr5
    jsr @r13
    mov r14,r4
    mov r15,r5
    fmov fr15,fr4
    fmov fr15,fr5
    jsr @r13
    mov r14,r4

LAB_ce32f26:
    mov.l @(PTR_ce32f64,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32f2c:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32f38:
    mov r4,r3
    mov.l @(PTR_ce32f68,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f4a:
    #data 0x1000
DAT_ce32f4c:
    #data 0x034a
DAT_ce32f4e:
    #data 0x01a3
DAT_ce32f50:
    #data 0x0800
DAT_ce32f52:
    #data 0x041c
    #align4

PTR_ce32f54:
    #data loc_8c03319e
DAT_ce32f58:
    #data 0xc20c0000
DAT_ce32f5c:
    #data 0x43809249
PTR_ce32f60:
    #data loc_8c0fd7fe
PTR_ce32f64:
    #data loc_8c034dee
PTR_ce32f68:
    #data PTR_ce35db0

;=============================================

LAB_ce32f6c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov 0x3F,r3
    mov 0x00,r4
    mov.l r5,@r15
    mov.b @(0x7,r14),r0
    mov 0x14,r5
    mov 0x09,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3308e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33094,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33098,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3309c,pc),r3
    mov 0x1E,r5
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce32fbe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l r5,@r15
    mov r4,r14
    bsr FUN_ce336ca
    mov r14,r4
    mov.l @(PTR_ce330a0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32fe6
    mov.l @r15,r5
    mov r14,r4
    mov 0x00,r6
    add 0x04,r15
    lds.l @r15+,PR
    bra FUN_ce33674
    mov.l @r15+,r14

LAB_ce32fe6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fee:
    mov r4,r3
    mov.l @(PTR_ce330a4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33000:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l r5,@r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33090,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3301c
    bra LAB_ce3301e
    mov 0x42,r3

LAB_ce3301c:
    mov 0x40,r3

LAB_ce3301e:
    mov.w @(DAT_ce3308e,pc),r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33094,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x01,r0
    mov.l @r15,r2
    mov.b r0,@(0x9,r2)
    mov.w @(DAT_ce33092,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33060
    mov.w @(DAT_ce33090,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce330a8,pc),r0
    extu.b r2,r2
    shll2 r2
    shll r2
    bra LAB_ce33070
    fmov.s @(r0,r2),fr3

LAB_ce33060:
    mov.w @(DAT_ce33090,pc),r0
    mov.b @(r0,r14),r1
    mov.l @(PTR_ce330a8,pc),r0
    extu.b r1,r1
    shll2 r1
    shll r1
    fmov.s @(r0,r1),fr3
    fneg fr3

LAB_ce33070:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33092,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce330b0
    mov.w @(DAT_ce33090,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce330ac,pc),r0
    extu.b r3,r3
    shll2 r3
    shll r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce330be
    fneg fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3308e:
    #data 0x01a1
DAT_ce33090:
    #data 0x01a3
DAT_ce33092:
    #data 0x01d2
    #align4

PTR_ce33094:
    #data loc_8c2896b0
PTR_ce33098:
    #data loc_8c034e8c
PTR_ce3309c:
    #data loc_8c042008
PTR_ce330a0:
    #data loc_8c034dee
PTR_ce330a4:
    #data PTR_ce35db8
PTR_ce330a8:
    #data DAT_ce35dc8
PTR_ce330ac:
    #data DAT_ce35dcc

;=============================================

LAB_ce330b0:
    mov.w @(DAT_ce331dc,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce331e4,pc),r0
    extu.b r3,r3
    shll2 r3
    shll r3
    fmov.s @(r0,r3),fr3

LAB_ce330be:
    mov 0x68,r0
    mov.l @(PTR_ce331f0,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce331e8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x14,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce331ec,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce331dc,pc),r0
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x0A,r6
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce330ee:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce331f4,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce331de,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce33112
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x00,r0
    mov.l @r15,r3
    mov.b r0,@(0xa,r3)

LAB_ce33112:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3311a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce331f4,pc),r3
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
    mov.w @(DAT_ce331e0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce331a2
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce331e0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce331e2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce331f8,pc),r3
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
    mov.l @(PTR_ce331f0,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    mov 0x0D,r6
    lds.l @r15+,PR
    mov 0x14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce331a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce331a8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce331f4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce331c2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce331fc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce331c2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce331ca:
    mov r4,r3
    mov.l @(PTR_ce33200,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331dc:
    #data 0x01a3
DAT_ce331de:
    #data 0x0141
DAT_ce331e0:
    #data 0x041c
DAT_ce331e2:
    #data 0x01f9
    #align4

PTR_ce331e4:
    #data DAT_ce35dcc
DAT_ce331e8:
    #data 0xc19a4924
DAT_ce331ec:
    #data 0xbe892492
PTR_ce331f0:
    #data loc_8c034e8c
PTR_ce331f4:
    #data loc_8c034dee
PTR_ce331f8:
    #data loc_8c0511b4
PTR_ce331fc:
    #data loc_8c051648
PTR_ce33200:
    #data PTR_ce35dd8

;=============================================

LAB_ce33204:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l r5,@r15
    mov.b @(0x7,r14),r0
    mov 0x14,r5
    mov 0x07,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.l @r15,r3
    mov.b @(0xb,r3),r0
    add 0xFF,r0
    mov.b r0,@(0xb,r3)
    mov.l @(PTR_ce332c4,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce33230:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce332c8,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce332b8
    mov.b @(0x7,r14),r0
    mov 0x01,r6
    mov.l @(PTR_ce332cc,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov 0x00,r0
    fldi0 fr4
    mov.b r0,@(0xa,r2)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce332c0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33280
    mov.l @(PTR_ce332d0,pc),r3
    mova @(DAT_ce332d4,pc),r0
    fmov.s @r3,fr4
    bra LAB_ce33288
    fmov.s @r0,fr3

LAB_ce33280:
    mov.l @(PTR_ce332d0,pc),r3
    mova @(DAT_ce332d8,pc),r0
    fmov.s @r0,fr3
    fmov.s @r3,fr4

LAB_ce33288:
    fadd fr3,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce332dc,pc),r0
    mov 0x06,r5
    fsub fr3,fr4
    fmov.s @r0,fr3
    mov 0x5C,r0
    fdiv fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x20,r0
    mov.l @r15,r3
    mov.b r0,@(0xc,r3)
    mov.l @(PTR_ce332e0,pc),r3
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x14,r5
    mov 0x08,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce332c4,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce332b8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce332c0:
    #data 0x01d2
    #align4

PTR_ce332c4:
    #data loc_8c034e8c
PTR_ce332c8:
    #data loc_8c034dee
PTR_ce332cc:
    #data loc_8c02fec4
PTR_ce332d0:
    #data loc_8c26a524
DAT_ce332d4:
    #data 0x43a6aaab
DAT_ce332d8:
    #data 0xc3a6aaab
DAT_ce332dc:
    #data 0x42000000
PTR_ce332e0:
    #data loc_8c042008

;=============================================

LAB_ce332e4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov.l r5,@r15
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    mov 0x01,r13
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
    mov.w @(DAT_ce333fe,pc),r0
    mov.l @(PTR_ce3340c,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0xc,r2),r0
    add 0xFF,r0
    mov.b r0,@(0xc,r2)
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce333ac
    mov.w @(DAT_ce33400,pc),r0
    mov.b @(r0,r14),r2
    add 0xD5,r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    xor r13,r3
    add 0x01,r3
    tst r3,r2
    bt LAB_ce333ac
    mov.b @(0x7,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33402,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33404,pc),r0
    mov.l @(PTR_ce33410,pc),r2
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33414,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33406,pc),r0
    mov.l @(r0,r14),r0
    mov.b @(0x1,r0),r0
    extu.b r0,r0
    cmp/eq 0x1A,r0
    bf LAB_ce33392
    mov.l @(PTR_ce33414,pc),r2
    mov 0x01,r6
    mov r6,r5
    jsr @r2
    mov r14,r4

LAB_ce33392:
    mov.l @r15,r3
    mov r13,r0
    nop
    mov 0x14,r5
    mov r14,r4
    mov.b r0,@(0xa,r3)
    mov 0x06,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33418,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce333ac:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce333b6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3340c,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce333e4
    mov.l @r15,r3
    mov 0x00,r0
    mov r14,r4
    mov 0x00,r6
    mov.b r0,@(0x9,r3)
    mov.w @(DAT_ce33408,pc),r0
    mov.w r0,@(0x1c,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    bra FUN_ce33674
    mov.l @r15+,r14

LAB_ce333e4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce333ec:
    mov r4,r3
    mov.l @(PTR_ce3341c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce333fe:
    #data 0x01f5
DAT_ce33400:
    #data 0x01fd
DAT_ce33402:
    #data 0x01d2
DAT_ce33404:
    #data 0x0130
DAT_ce33406:
    #data 0x020c
DAT_ce33408:
    #data 0x00f0
    #align4

PTR_ce3340c:
    #data loc_8c034dee
PTR_ce33410:
    #data loc_8c0ee124
PTR_ce33414:
    #data loc_8c02fec4
PTR_ce33418:
    #data loc_8c034e8c
PTR_ce3341c:
    #data PTR_ce35de8

;=============================================

LAB_ce33420:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov 0x43,r3
    mov 0x00,r4
    mov.l r5,@r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33562,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3356c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x1C,r0
    mov.l @r15,r2
    mov.b r0,@(0xc,r2)
    mova @(DAT_ce33570,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33574,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov.l @(PTR_ce33578,pc),r2
    mov 0x14,r5
    fmov fr3,@(r0,r14)
    mov 0x0E,r6
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce33480:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l r5,@r15
    mov r4,r14
    bsr FUN_ce336ca
    mov r14,r4
    mov.l @(PTR_ce3357c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33564,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce334d6
    mov 0x60,r1
    add r14,r1
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce33566,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce334d6
    mov.w @(DAT_ce33566,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce334d6:
    mov.l @r15,r3
    mov.b @(0xc,r3),r0
    add 0xFF,r0
    mov.b r0,@(0xc,r3)
    exts.b r0,r0
    tst r0,r0
    bf LAB_ce334fa
    mov.b @(0x7,r14),r0
    mov 0x14,r5
    mov r14,r4
    mov 0x0F,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33578,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce334fa:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33502:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l r5,@r15
    mov r4,r14
    bsr FUN_ce336ca
    mov r14,r4
    mov.l @(PTR_ce3357c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3352a
    mov.l @r15,r5
    mov r14,r4
    mov 0x00,r6
    add 0x04,r15
    lds.l @r15+,PR
    bra FUN_ce33674
    mov.l @r15+,r14

LAB_ce3352a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33532:
    mov r4,r3
    mov.l @(PTR_ce33580,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33544:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l r5,@r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33568,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33588
    mova @(DAT_ce33584,pc),r0
    bra LAB_ce3358c
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33562:
    #data 0x01a1
DAT_ce33564:
    #data 0x0141
DAT_ce33566:
    #data 0x041c
DAT_ce33568:
    #data 0x01d2
    #align4

PTR_ce3356c:
    #data loc_8c2896b0
DAT_ce33570:
    #data 0xc14db6db
DAT_ce33574:
    #data 0x3e892492
PTR_ce33578:
    #data loc_8c034e8c
PTR_ce3357c:
    #data loc_8c034dee
PTR_ce33580:
    #data PTR_ce35df4
DAT_ce33584:
    #data 0x40a00000

;=============================================

LAB_ce33588:
    mova @(DAT_ce336e8,pc),r0
    fmov.s @r0,fr3

LAB_ce3358c:
    mov 0x5C,r0
    mov.l @(PTR_ce336f4,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x01,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce336ec,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov r6,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce336f0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce335ba:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce336f8,pc),r3
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
    mov.w @(DAT_ce336e0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3364c
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov r3,r6
    add 0x01,r0
    mov r3,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce336e0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce336e2,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce336fc,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33700,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce336f4,pc),r3
    mov r14,r4
    mov 0x03,r6
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3364c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33652:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce336f8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3366c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33704,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3366c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce33674:
    mov.b @(0x9,r5),r0
    tst r0,r0
    bf LAB_ce33680
    mov.b @(0xb,r5),r0
    tst r0,r0
    bf LAB_ce33684

LAB_ce33680:
    bra LAB_ce3368e
    nop

LAB_ce33684:
    extu.b r6,r0
    mov.w r0,@(0x1e,r4)
    mov 0x00,r0
    rts
    mov.b r0,@(0x7,r4)

LAB_ce3368e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov r13,r0
    nop
    mov.b r0,@(0x9,r5)
    mov 0x01,r3
    mov.b r0,@(0xa,r5)
    mov r13,r5
    mov.w @(DAT_ce336e4,pc),r0
    mov r13,r6
    mov.b r13,@(r0,r14)
    add 0xFE,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce336fc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    mov.l @(PTR_ce33708,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;=============================================

FUN_ce336ca:
    add 0xFC,r15
    mov.l r5,@r15
    mov r5,r0
    nop
    mov.b @(0x7,r0),r0
    mov.l @(PTR_ce3370c,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r0
    jmp @r0
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce336e0:
    #data 0x041c
DAT_ce336e2:
    #data 0x01f9
DAT_ce336e4:
    #data 0x01d6
    #align4

DAT_ce336e8:
    #data 0xc0a00000
DAT_ce336ec:
    #data 0xc14db6db
DAT_ce336f0:
    #data 0xbe892492
PTR_ce336f4:
    #data loc_8c034e8c
PTR_ce336f8:
    #data loc_8c034dee
PTR_ce336fc:
    #data loc_8c02fec4
PTR_ce33700:
    #data loc_8c0511b4
PTR_ce33704:
    #data loc_8c051648
PTR_ce33708:
    #data loc_8c05176e
PTR_ce3370c:
    #data PTR_ce35e00

;=============================================

LAB_ce33710:
    mov.w @(DAT_ce3382e,pc),r0
    mov.w @(DAT_ce33830,pc),r2
    mov.w @(r0,r4),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce33726
    mov.b @(0x7,r5),r0
    add 0x01,r0
    mov.b r0,@(0x7,r5)
    mov 0x0F,r0
    mov.b r0,@(0x8,r5)

LAB_ce33726:
    rts
    mov 0x00,r0

LAB_ce3372a:
    mov.b @(0x8,r5),r0
    add 0xFF,r0
    mov.b r0,@(0x8,r5)
    extu.b r0,r0
    tst r0,r0
    bf/s LAB_ce33740
    mov 0x00,r6
    mov r6,r0
    nop
    bra LAB_ce3374c
    mov.b r0,@(0x7,r5)

LAB_ce33740:
    mov.w @(DAT_ce3382e,pc),r0
    mov.w @(DAT_ce33832,pc),r2
    mov.w @(r0,r4),r3
    extu.w r3,r3
    tst r2,r3
    bf LAB_ce33750

LAB_ce3374c:
    rts
    mov 0x00,r0

LAB_ce33750:
    mov r6,r0
    nop
    mov.b r0,@(0x7,r5)
    mov 0x01,r0
    rts
    nop

LAB_ce3375c:
    mov r4,r3
    mov.l @(PTR_ce33844,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3376e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33834,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce33790
    mov 0x00,r13
    mov.w @(DAT_ce33836,pc),r0
    mov 0x5C,r2
    bra LAB_ce337a2
    mov.b r2,@(r0,r14)

LAB_ce33790:
    mov.w @(DAT_ce33838,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce3379c
    bra LAB_ce3379e
    mov 0x5D,r3

LAB_ce3379c:
    mov 0x44,r3

LAB_ce3379e:
    mov.w @(DAT_ce33836,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce337a2:
    mov.w @(DAT_ce3383a,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce33848,pc),r3
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce3384c,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33850,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3383c,pc),r0
    mov.l @(PTR_ce33854,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3383e,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33858,pc),r2
    mov 0x11,r6
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce337f0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3385c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3380a
    lds.l @r15+,PR
    mov.l @(PTR_ce33860,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3380a:
    mov.w @(DAT_ce33840,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33868
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    add 0x62,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce33824
    mov r14,r4
    bra LAB_ce33826
    mov 0x06,r5

LAB_ce33824:
    mov 0x00,r5

LAB_ce33826:
    lds.l @r15+,PR
    mov.l @(PTR_ce33864,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3382e:
    #data 0x034e
DAT_ce33830:
    #data 0x0400
DAT_ce33832:
    #data 0x0800
DAT_ce33834:
    #data 0x0255
DAT_ce33836:
    #data 0x01a1
DAT_ce33838:
    #data 0x01a3
DAT_ce3383a:
    #data 0x01ac
DAT_ce3383c:
    #data 0x041c
DAT_ce3383e:
    #data 0x01f9
DAT_ce33840:
    #data 0x0141
    #align4

PTR_ce33844:
    #data PTR_ce35e08
PTR_ce33848:
    #data loc_8c2896b0
PTR_ce3384c:
    #data loc_8c056de4
PTR_ce33850:
    #data loc_8c05218a
PTR_ce33854:
    #data loc_8c05115a
PTR_ce33858:
    #data loc_8c034e8c
PTR_ce3385c:
    #data loc_8c034dee
PTR_ce33860:
    #data loc_8c051648
PTR_ce33864:
    #data loc_8c066050

;=============================================

LAB_ce33868:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3386e:
    mov r4,r3
    mov.l @(PTR_ce339c4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33880:
    mov.w @(DAT_ce339ac,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3389e
    mov.w @(DAT_ce339b0,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce339ae,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3389e:
    mov.b @(0x6,r14),r0
    mov 0x45,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce339b2,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce339c8,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce339cc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce339b4,pc),r0
    mov.l @(PTR_ce339d0,pc),r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce339b6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce339d4,pc),r2
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce338f2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce339b8,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce339ba,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce339ac,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33914
    bra LAB_ce33916
    mov 0x02,r3

LAB_ce33914:
    mov 0x00,r3

LAB_ce33916:
    mov.w @(DAT_ce339bc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce339d8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce339be,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3395e
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce339e4,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce339be,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x6F,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce339b0,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce339dc,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce339e0,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce3395e:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33966:
    mov.w @(DAT_ce339b8,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce339ba,pc),r0
    mov.l @(PTR_ce339d8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt/s LAB_ce339e8
    mov 0x00,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce339c0,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce339c2,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x28,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce339ac:
    #data 0x0255
DAT_ce339ae:
    #data 0x00ff
DAT_ce339b0:
    #data 0x03f0
DAT_ce339b2:
    #data 0x01a1
DAT_ce339b4:
    #data 0x01f9
DAT_ce339b6:
    #data 0x041c
DAT_ce339b8:
    #data 0x03f8
DAT_ce339ba:
    #data 0x0328
DAT_ce339bc:
    #data 0x03f1
DAT_ce339be:
    #data 0x0141
DAT_ce339c0:
    #data 0x03f9
DAT_ce339c2:
    #data 0x0327
    #align4

PTR_ce339c4:
    #data PTR_ce35e10
PTR_ce339c8:
    #data loc_8c2896b0
PTR_ce339cc:
    #data loc_8c05218a
PTR_ce339d0:
    #data loc_8c05115a
PTR_ce339d4:
    #data loc_8c034e8c
PTR_ce339d8:
    #data loc_8c034dee
DAT_ce339dc:
    #data 0x41c80000
DAT_ce339e0:
    #data 0x43474924
PTR_ce339e4:
    #data loc_8c050834

;=============================================

LAB_ce339e8:
    mov.w @(DAT_ce33b0a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce339fc
    mov.l @(PTR_ce33b14,pc),r3
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce339fc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33a02:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33b18,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce33a2c
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33b1c,pc),r3
    mov 0x21,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33a2c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33a32:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33b18,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33a5e
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33b20,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33a5e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33a64:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33b24,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce33b0c,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce33a7a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce33b28,pc),r3
    mov.l r5,@r15
    mov 0x0A,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33b2c,pc),r2
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
    mov 0x02,r3
    mov.w @(DAT_ce33b0e,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x05,r0
    mov.l @r15,r2
    mov.b r0,@(0x5,r2)
    mov.w @(DAT_ce33b10,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33ac2
    bra LAB_ce33ac4
    mov 0x4F,r4

LAB_ce33ac2:
    mov 0x4C,r4

LAB_ce33ac4:
    mov.w @(DAT_ce33b12,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce33b30,pc),r3
    mov.b @(r0,r14),r2
    add 0xFE,r0
    extu.b r2,r2
    shll r2
    add r2,r4
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov 0x00,r4
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
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
    mov.w @(DAT_ce33b12,pc),r0
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x12,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33b1c,pc),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33b0a:
    #data 0x0141
DAT_ce33b0c:
    #data 0x02a4
DAT_ce33b0e:
    #data 0x01f9
DAT_ce33b10:
    #data 0x01fe
DAT_ce33b12:
    #data 0x01a3
    #align4

PTR_ce33b14:
    #data loc_8c066084
PTR_ce33b18:
    #data loc_8c034dee
PTR_ce33b1c:
    #data loc_8c034e8c
PTR_ce33b20:
    #data loc_8c051648
PTR_ce33b24:
    #data PTR_ce35e24
PTR_ce33b28:
    #data loc_8c056de4
PTR_ce33b2c:
    #data loc_8c05218a
PTR_ce33b30:
    #data loc_8c2896b0

;=============================================

LAB_ce33b34:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33bf0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33be2
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce33be8,pc),r0
    mov.b @(r0,r14),r4
    add 0xD4,r0
    mov.b @(r0,r14),r3
    extu.b r4,r4
    shll r4
    tst r3,r3
    bt LAB_ce33b84
    mov.w @(DAT_ce33bea,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce33bf4,pc),r0
    extu.b r3,r3
    add r4,r3
    shll2 r3
    shll r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce33b96
    nop

LAB_ce33b84:
    mov.w @(DAT_ce33bea,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce33bf4,pc),r0
    extu.b r2,r2
    add r4,r2
    shll2 r2
    shll r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce33b96:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x06,r5
    mov.w @(DAT_ce33bea,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce33bf8,pc),r0
    extu.b r3,r3
    add r3,r4
    mov.l @(PTR_ce33bfc,pc),r3
    shll2 r4
    shll r4
    fmov.s @(r0,r4),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33be8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33bc2
    bra LAB_ce33bc4
    mov 0x15,r2

LAB_ce33bc2:
    mov 0x18,r2

LAB_ce33bc4:
    mov.w @(DAT_ce33bec,pc),r0
    mov 0x15,r5
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0x4B,r0
    mov.b @(r0,r14),r6
    add 0xB5,r0
    mov.b @(r0,r14),r3
    extu.b r6,r6
    shll r6
    lds.l @r15+,PR
    add r3,r6
    mov.l @(PTR_ce33c00,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33be2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33be8:
    #data 0x01fe
DAT_ce33bea:
    #data 0x01a3
DAT_ce33bec:
    #data 0x0158
    #align4

PTR_ce33bf0:
    #data loc_8c034dee
PTR_ce33bf4:
    #data DAT_ce35e38
PTR_ce33bf8:
    #data DAT_ce35e3c
PTR_ce33bfc:
    #data loc_8c042008
PTR_ce33c00:
    #data loc_8c034e8c

;=============================================

LAB_ce33c04:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov.l @(PTR_ce33d30,pc),r3
    mov 0x34,r0
    mov.l r5,@r15
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
    mov.l @(PTR_ce33d34,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33d22,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33c64
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.l @r15,r5
    bsr FUN_ce33dfa
    mov r14,r4

LAB_ce33c64:
    mov.w @(DAT_ce33d24,pc),r0
    mov.b @(r0,r14),r4
    tst r4,r4
    bt/s LAB_ce33c80
    fldi0 fr4
    exts.b r4,r0
    tst 0x11,r0
    bf LAB_ce33cea
    mov.w @(DAT_ce33d26,pc),r0
    mov.l @(r0,r14),r2
    add 0x52,r0
    mov.b @(r0,r2),r3
    tst r3,r3
    bf LAB_ce33cea

LAB_ce33c80:
    mov.w @(DAT_ce33d28,pc),r0
    mov 0x03,r5
    mov.b @(r0,r14),r4
    mov r4,r3
    tst r5,r3
    bt LAB_ce33c9a
    mov.w @(DAT_ce33d2a,pc),r0
    mov.b @(r0,r14),r1
    extu.b r1,r1
    add 0x01,r1
    and r4,r1
    tst r5,r1
    bt LAB_ce33cea

LAB_ce33c9a:
    mov.w @(DAT_ce33d2c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33cde
    mov 0x04,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r3
    mov.w @(DAT_ce33d2c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33d2e,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33d38,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x15,r5
    mov 0x1B,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33d3c,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce33cde:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33d1a

LAB_ce33cea:
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(DAT_ce33d40,pc),r1
    mov r14,r4
    add 0x01,r0
    lds r1,FPUL
    mov 0x35,r6
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce33d44,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33d3c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33d1a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33d22:
    #data 0x0141
DAT_ce33d24:
    #data 0x019e
DAT_ce33d26:
    #data 0x01b0
DAT_ce33d28:
    #data 0x01fd
DAT_ce33d2a:
    #data 0x01d2
DAT_ce33d2c:
    #data 0x041c
DAT_ce33d2e:
    #data 0x01f9
    #align4

PTR_ce33d30:
    #data loc_8c034dee
PTR_ce33d34:
    #data FUN_ce34df6
PTR_ce33d38:
    #data loc_8c0511b4
PTR_ce33d3c:
    #data loc_8c034e8c
DAT_ce33d40:
    #data 0x41000000
DAT_ce33d44:
    #data 0xbf4db6db

;=============================================

LAB_ce33d48:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce33e68,pc),r3
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
    mov.w @(DAT_ce33e5e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33dd2
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33e5e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33e60,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33e6c,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33e70,pc),r2
    mov r14,r4
    mov 0x1B,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33dd2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33dd8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33e68,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33df2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33e74,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33df2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce33dfa:
    mov.b @(0x5,r5),r0
    tst r0,r0
    bt LAB_ce33e48
    mov.b @(0x5,r5),r0
    mov 0x10,r3
    add 0xFF,r0
    mov.b r0,@(0x5,r5)
    mov.w @(DAT_ce33e62,pc),r0
    mov.b r3,@(r0,r4)
    add 0x09,r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce33e18
    bra LAB_ce33e1a
    mov 0x4F,r5

LAB_ce33e18:
    mov 0x4C,r5

LAB_ce33e1a:
    mov.w @(DAT_ce33e64,pc),r0
    mov.l @(PTR_ce33e78,pc),r3
    mov.b @(r0,r4),r2
    add 0xFE,r0
    extu.b r2,r2
    shll r2
    add r2,r5
    mov.b r5,@(r0,r4)
    add 0x0B,r0
    mov 0x00,r5
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce33e48:
    rts
    nop

LAB_ce33e4c:
    mov r4,r3
    mov.l @(PTR_ce33e7c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33e5e:
    #data 0x041c
DAT_ce33e60:
    #data 0x01f9
DAT_ce33e62:
    #data 0x01f5
DAT_ce33e64:
    #data 0x01a3
    #align4

PTR_ce33e68:
    #data loc_8c034dee
PTR_ce33e6c:
    #data loc_8c0511b4
PTR_ce33e70:
    #data loc_8c034e8c
PTR_ce33e74:
    #data loc_8c051648
PTR_ce33e78:
    #data loc_8c2896b0
PTR_ce33e7c:
    #data PTR_ce35e58

;=============================================

LAB_ce33e80:
    mov.w @(DAT_ce33fb4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33e9e
    mov.w @(DAT_ce33fb8,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33fb6,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33e9e:
    mov.b @(0x6,r14),r0
    mov 0x47,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33fba,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33fcc,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33fd0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33fbc,pc),r0
    fldi0 fr4
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33fbe,pc),r0
    mov.l @(PTR_ce33fd4,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33fd8,pc),r2
    mov 0x04,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33efc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33fc0,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33fc2,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33fb4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33f1e
    bra LAB_ce33f20
    mov 0x02,r3

LAB_ce33f1e:
    mov 0x00,r3

LAB_ce33f20:
    mov.w @(DAT_ce33fc4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33fdc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33fc6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33f5a
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce33fe8,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce33fb8,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33fe0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33fe4,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce33f5a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33f62:
    mov.w @(DAT_ce33fc0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33fc2,pc),r0
    mov.l @(PTR_ce33fdc,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33ff4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33fc8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33f94
    mova @(DAT_ce33fec,pc),r0
    bra LAB_ce33f98
    fmov.s @r0,fr3

LAB_ce33f94:
    mova @(DAT_ce33ff0,pc),r0
    fmov.s @r0,fr3

LAB_ce33f98:
    mov 0x5C,r0
    mov.l @(PTR_ce33fd8,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x18,r0
    mov.w r0,@(0x1c,r14)
    mov 0x1E,r6
    lds.l @r15+,PR
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33fb4:
    #data 0x0255
DAT_ce33fb6:
    #data 0x00ff
DAT_ce33fb8:
    #data 0x03f0
DAT_ce33fba:
    #data 0x01a1
DAT_ce33fbc:
    #data 0x01f9
DAT_ce33fbe:
    #data 0x041c
DAT_ce33fc0:
    #data 0x03f8
DAT_ce33fc2:
    #data 0x0328
DAT_ce33fc4:
    #data 0x03f1
DAT_ce33fc6:
    #data 0x0141
DAT_ce33fc8:
    #data 0x01d2
    #align4

PTR_ce33fcc:
    #data loc_8c2896b0
PTR_ce33fd0:
    #data loc_8c05218a
PTR_ce33fd4:
    #data loc_8c05115a
PTR_ce33fd8:
    #data loc_8c034e8c
PTR_ce33fdc:
    #data loc_8c034dee
DAT_ce33fe0:
    #data 0xc1f00000
DAT_ce33fe4:
    #data 0x432fb6db
PTR_ce33fe8:
    #data loc_8c050834
DAT_ce33fec:
    #data 0x41555555
DAT_ce33ff0:
    #data 0xc1555555

;=============================================

LAB_ce33ff4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33ffa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34114,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce34116,pc),r0
    mov.l @(PTR_ce34128,pc),r3
    mov.b r2,@(r0,r14)
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
    mov.w @(DAT_ce34118,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce340b2
    mov.l @(PTR_ce3412c,pc),r3
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce340b2
    mov.l @(PTR_ce34130,pc),r3
    mov 0x08,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce3411a,pc),r3
    add 0x02,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3411c,pc),r0
    mov.b r3,@(r0,r14)
    add 0xB9,r0
    mov.l @(PTR_ce34134,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3411e,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce34140,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mova @(DAT_ce34138,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3413c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34144,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov 0x05,r6
    bra LAB_ce34106
    mov 0x0F,r5

LAB_ce340b2:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3410c
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34120,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce34122,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce34124,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce340e4
    mova @(DAT_ce34148,pc),r0
    bra LAB_ce340e8
    fmov.s @r0,fr3

LAB_ce340e4:
    mova @(DAT_ce3414c,pc),r0
    fmov.s @r0,fr3

LAB_ce340e8:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34124,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce340fa
    mova @(DAT_ce34150,pc),r0
    bra LAB_ce340fe
    fmov.s @r0,fr3

LAB_ce340fa:
    mova @(DAT_ce34154,pc),r0
    fmov.s @r0,fr3

LAB_ce340fe:
    mov 0x68,r0
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mov 0x1F,r6

LAB_ce34106:
    mov.l @(PTR_ce34158,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3410c:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34114:
    #data 0x03f8
DAT_ce34116:
    #data 0x0328
DAT_ce34118:
    #data 0x019e
DAT_ce3411a:
    #data 0x00c2
DAT_ce3411c:
    #data 0x01f7
DAT_ce3411e:
    #data 0x01a0
DAT_ce34120:
    #data 0x03f9
DAT_ce34122:
    #data 0x0327
DAT_ce34124:
    #data 0x01d2
    #align4

PTR_ce34128:
    #data loc_8c034dee
PTR_ce3412c:
    #data loc_8c05264c
PTR_ce34130:
    #data loc_8c02fec4
PTR_ce34134:
    #data loc_8c0523d8
DAT_ce34138:
    #data 0xc2c15555
DAT_ce3413c:
    #data 0x43009249
PTR_ce34140:
    #data loc_8c103660
PTR_ce34144:
    #data loc_8c042008
DAT_ce34148:
    #data 0x413aaaaa
DAT_ce3414c:
    #data 0xc13aaaaa
DAT_ce34150:
    #data 0xbe555555
DAT_ce34154:
    #data 0x3e555555
PTR_ce34158:
    #data loc_8c034e8c

;=============================================

LAB_ce3415c:
    mov.w @(DAT_ce3422a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3422c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3422e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce341b6
    mov 0x5C,r1
    mov.l @(PTR_ce34234,pc),r3
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    mov 0x03,r5
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

LAB_ce341b6:
    mov.l @(PTR_ce34238,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce341cc
    lds.l @r15+,PR
    mov.l @(PTR_ce3423c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce341cc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce341d2:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3422a,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov 0x01,r2
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3422c,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce34230,pc),r0
    mov.l @(PTR_ce34238,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3422e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34224
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x0C,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce34240,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34244,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce34224:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3422a:
    #data 0x03f8
DAT_ce3422c:
    #data 0x0328
DAT_ce3422e:
    #data 0x0141
DAT_ce34230:
    #data 0x01ea
    #align4

PTR_ce34234:
    #data loc_8c05120e
PTR_ce34238:
    #data loc_8c034dee
PTR_ce3423c:
    #data loc_8c051648
DAT_ce34240:
    #data 0x42092492
DAT_ce34244:
    #data 0xbecdb6db

;=============================================

LAB_ce34248:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce34396,pc),r0
    mov 0x05,r3
    mov.l r13,@-r15
    mov 0x02,r13
    mov 0x01,r2
    sts.l PR,@-r15
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce34398,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3439a,pc),r0
    mov.l @(PTR_ce343a8,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r13,@(r0,r14)
    add 0x08,r0
    mov.b r13,@(r0,r14)
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce342fe
    mov.b @(0x6,r14),r0
    mov 0x0D,r3
    mov 0x00,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3439c,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0x03,r0
    mov.b r13,@(r0,r4)
    add 0xA8,r0
    mov 0x22,r3
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce343ac,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce343b0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3439e,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    add 0x94,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce342fe:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34306:
    mov.w @(DAT_ce34396,pc),r0
    mov 0x02,r5
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r3
    mov.l r13,@-r15
    mov 0x01,r4
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce34398,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3439a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x03,r0
    mov.b r5,@(r0,r14)
    add 0x08,r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce3439e,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3438e
    mov.b @(0x6,r14),r0
    mov 0x07,r6
    mov.l @(PTR_ce343ac,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3439e,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce343a0,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce343a2,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce343a4,pc),r0
    mov.l @(PTR_ce343b4,pc),r2
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce343a6,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x45,r0
    mov.l @r2,r3
    mov.b @(r0,r3),r1
    tst r1,r1
    bf LAB_ce3437e
    mov.l @(PTR_ce343b8,pc),r3
    mov 0x0F,r5
    jsr @r3
    mov r14,r4

LAB_ce3437e:
    lds.l @r15+,PR
    mov.l @(PTR_ce343bc,pc),r2
    mov 0x20,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3438e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34396:
    #data 0x03f8
DAT_ce34398:
    #data 0x0328
DAT_ce3439a:
    #data 0x01ea
DAT_ce3439c:
    #data 0x01c8
DAT_ce3439e:
    #data 0x012c
DAT_ce343a0:
    #data 0x03f9
DAT_ce343a2:
    #data 0x0327
DAT_ce343a4:
    #data 0x041c
DAT_ce343a6:
    #data 0x01f9
    #align4

PTR_ce343a8:
    #data loc_8c034dee
PTR_ce343ac:
    #data loc_8c02fec4
PTR_ce343b0:
    #data loc_8c067f6c
PTR_ce343b4:
    #data loc_8c26823c
PTR_ce343b8:
    #data loc_8c042008
PTR_ce343bc:
    #data loc_8c034e8c

;=============================================

LAB_ce343c0:
    mov.w @(DAT_ce344f4,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r4
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.l @(PTR_ce34504,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34408
    mov.l @(PTR_ce34508,pc),r3
    mov 0x00,r6
    mov r6,r5
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
    mov.l @(PTR_ce3450c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce34408:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3440e:
    mov r4,r3
    mov.l @(PTR_ce34510,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34420:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce344f6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce34442
    mov 0x00,r13
    mov.w @(DAT_ce344f8,pc),r0
    mov 0x5B,r2
    bra LAB_ce34448
    mov.b r2,@(r0,r14)

LAB_ce34442:
    mov.w @(DAT_ce344f8,pc),r0
    mov 0x4B,r3
    mov.b r3,@(r0,r14)

LAB_ce34448:
    mov.w @(DAT_ce344fa,pc),r0
    mov 0x0D,r5
    mov.l @(PTR_ce34514,pc),r3
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce34518,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3451c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce344fc,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce34520,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce344fe,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x0F,r0
    mov.l @(PTR_ce34524,pc),r3
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov 0x1C,r6
    mov 0x15,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce344a4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34504,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce34562
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce34528,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34500,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce3452c,pc),r3
    mov 0x00,r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x08,r0
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    mov 0x68,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce34502,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34534
    mova @(DAT_ce34530,pc),r0
    bra LAB_ce34538
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce344f4:
    #data 0x01ea
DAT_ce344f6:
    #data 0x0255
DAT_ce344f8:
    #data 0x01a1
DAT_ce344fa:
    #data 0x01ac
DAT_ce344fc:
    #data 0x041c
DAT_ce344fe:
    #data 0x01f9
DAT_ce34500:
    #data 0x01f5
DAT_ce34502:
    #data 0x01d2
    #align4

PTR_ce34504:
    #data loc_8c034dee
PTR_ce34508:
    #data loc_8c02fec4
PTR_ce3450c:
    #data loc_8c051648
PTR_ce34510:
    #data PTR_ce35e7c
PTR_ce34514:
    #data loc_8c2896b0
PTR_ce34518:
    #data loc_8c056de4
PTR_ce3451c:
    #data loc_8c05218a
PTR_ce34520:
    #data loc_8c05115a
PTR_ce34524:
    #data loc_8c034e8c
PTR_ce34528:
    #data loc_8c053082
PTR_ce3452c:
    #data loc_8c0686bc
DAT_ce34530:
    #data 0xc0d55555

;=============================================

LAB_ce34534:
    mova @(DAT_ce34678,pc),r0
    fmov.s @r0,fr3

LAB_ce34538:
    mov 0x5C,r0
    mov.l @(PTR_ce34680,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3467c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x06,r5
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34684,pc),r2
    mov 0x32,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34688,pc),r3
    mov r14,r4
    mov 0x1F,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce34562:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34568:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3466c,pc),r0
    mov 0x02,r4
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce345c8
    mov.l @(PTR_ce3468c,pc),r2
    jsr @r2
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
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce345c8:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34688,pc),r3
    mov 0x23,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce345e2:
    mov.w @(DAT_ce3466e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l r8,@-r15
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
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
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov.l @(PTR_ce3468c,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce346f6
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34670,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x08,r0
    bt/s LAB_ce3464e
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x03,r0
    bf LAB_ce3465a

LAB_ce3464e:
    mov.w @(DAT_ce34672,pc),r0
    mov.l @(r0,r14),r3
    mov 0x34,r0
    fmov.s @(r0,r3),fr3
    bra LAB_ce346a8
    fmov fr3,@(r0,r14)

LAB_ce3465a:
    mov.w @(DAT_ce34674,pc),r0
    mov.l @(PTR_ce34690,pc),r2
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce34698
    fmov.s @r2,fr2
    mova @(DAT_ce34694,pc),r0
    bra LAB_ce3469c
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3466c:
    #data 0x01f5
DAT_ce3466e:
    #data 0x01f4
DAT_ce34670:
    #data 0x0255
DAT_ce34672:
    #data 0x020c
DAT_ce34674:
    #data 0x01a3
    #align4

DAT_ce34678:
    #data 0x40d55555
DAT_ce3467c:
    #data 0x41ab6db6
PTR_ce34680:
    #data loc_8c042008
PTR_ce34684:
    #data loc_8c04223a
PTR_ce34688:
    #data loc_8c034e8c
PTR_ce3468c:
    #data loc_8c034dee
PTR_ce34690:
    #data loc_8c26a524
DAT_ce34694:
    #data 0x44200000

;=============================================

LAB_ce34698:
    mova @(DAT_ce347d8,pc),r0
    fmov.s @r0,fr3

LAB_ce3469c:
    fadd fr3,fr2
    mova @(DAT_ce347dc,pc),r0
    fmov.s @r0,fr3
    mov 0x34,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce346a8:
    mov.w @(DAT_ce347d2,pc),r0
    mov 0x01,r5
    mov.l @(PTR_ce347e0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce347d4,pc),r0
    mov 0x34,r8
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce346cc
    add r14,r8
    mov.l @(DAT_ce347e4,pc),r1
    lds r1,FPUL
    bra LAB_ce346d2
    fsts FPUL,fr3

LAB_ce346cc:
    mov.l @(DAT_ce347e8,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce346d2:
    fmov.s @r8,fr2
    mov 0x38,r0
    mov.l @(DAT_ce347ec,pc),r1
    mov r14,r4
    fadd fr3,fr2
    mov.l @(PTR_ce347f0,pc),r3
    lds r1,FPUL
    mov 0x2F,r6
    mov 0x15,r5
    fmov.s fr2,@r8
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r8
    jmp @r3
    mov.l @r15+,r14

LAB_ce346f6:
    lds.l @r15+,PR
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

LAB_ce346fe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce347f4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34750
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce347d4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34722
    mova @(DAT_ce347f8,pc),r0
    bra LAB_ce34726
    fmov.s @r0,fr3

LAB_ce34722:
    mova @(DAT_ce347fc,pc),r0
    fmov.s @r0,fr3

LAB_ce34726:
    mov 0x5C,r0
    mov.l @(PTR_ce34804,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34800,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x04,r5
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34808,pc),r2
    mov 0x4B,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce347f0,pc),r3
    mov r14,r4
    mov 0x27,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce34750:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34756:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce347f4,pc),r3
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
    mov.w @(DAT_ce347d2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce347cc
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3480c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce347d2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce347d6,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce347f0,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    mov 0x03,r6
    lds.l @r15+,PR
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce347cc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce347d2:
    #data 0x041c
DAT_ce347d4:
    #data 0x01d2
DAT_ce347d6:
    #data 0x01f9
    #align4

DAT_ce347d8:
    #data 0x43555555
DAT_ce347dc:
    #data 0xc3a00000
PTR_ce347e0:
    #data loc_8c0686bc
DAT_ce347e4:
    #data 0xc3055555
DAT_ce347e8:
    #data 0x43055555
DAT_ce347ec:
    #data 0x43ab6db6
PTR_ce347f0:
    #data loc_8c034e8c
PTR_ce347f4:
    #data loc_8c034dee
DAT_ce347f8:
    #data 0x40d55555
DAT_ce347fc:
    #data 0xc0d55555
DAT_ce34800:
    #data 0xc1ab6db6
PTR_ce34804:
    #data loc_8c042008
PTR_ce34808:
    #data loc_8c04223a
PTR_ce3480c:
    #data loc_8c0511b4

;=============================================

LAB_ce34810:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34904,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3482a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce34908,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3482a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce34832:
    mov r4,r3
    mov.l @(PTR_ce3490c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34844:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x52,r3
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce348fc,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34910,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce34914,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34918,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce348fe,pc),r0
    fldi0 fr4
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce34900,pc),r0
    mov.l @(PTR_ce3491c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34920,pc),r2
    mov 0x31,r6
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce348b2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34904,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce348cc
    lds.l @r15+,PR
    mov.l @(PTR_ce34908,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce348cc:
    mov.w @(DAT_ce34902,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce348e4
    mov 0x00,r3
    mov r14,r4
    mov r3,r5
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce34924,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce348e4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce348ea:
    mov r4,r3
    mov.l @(PTR_ce34928,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce348fc:
    #data 0x01a1
DAT_ce348fe:
    #data 0x01f9
DAT_ce34900:
    #data 0x041c
DAT_ce34902:
    #data 0x0141
    #align4

PTR_ce34904:
    #data loc_8c034dee
PTR_ce34908:
    #data loc_8c051648
PTR_ce3490c:
    #data PTR_ce35e98
PTR_ce34910:
    #data loc_8c2896b0
PTR_ce34914:
    #data loc_8c056de4
PTR_ce34918:
    #data loc_8c05218a
PTR_ce3491c:
    #data loc_8c05115a
PTR_ce34920:
    #data loc_8c034e8c
PTR_ce34924:
    #data loc_8c067148
PTR_ce34928:
    #data PTR_ce35ea0

;=============================================

LAB_ce3492c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x48,r3
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x04,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34a62,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34a6c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce34a70,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34a74,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34a64,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce34a78,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34a66,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34a7c,pc),r2
    mov 0x32,r6
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3499a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34a80,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce349b4
    lds.l @r15+,PR
    mov.l @(PTR_ce34a84,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce349b4:
    mov.w @(DAT_ce34a68,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce349cc
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x04,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce34a88,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce349cc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce349d2:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce34a8c,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce34a6a,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce349e8:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x48,r3
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x04,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34a62,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34a6c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce34a70,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34a74,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34a66,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce34a46
    mov.w @(DAT_ce34a64,pc),r0
    mov 0x01,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34a66,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34a78,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce34a46:
    mov.w @(DAT_ce34a66,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce34a56
    mov 0x15,r5
    bra LAB_ce34a58
    mov 0x34,r6

LAB_ce34a56:
    mov 0x33,r6

LAB_ce34a58:
    lds.l @r15+,PR
    mov.l @(PTR_ce34a7c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34a62:
    #data 0x01a1
DAT_ce34a64:
    #data 0x041c
DAT_ce34a66:
    #data 0x01f9
DAT_ce34a68:
    #data 0x0141
DAT_ce34a6a:
    #data 0x02a4
    #align4

PTR_ce34a6c:
    #data loc_8c2896b0
PTR_ce34a70:
    #data loc_8c056de4
PTR_ce34a74:
    #data loc_8c05218a
PTR_ce34a78:
    #data loc_8c05115a
PTR_ce34a7c:
    #data loc_8c034e8c
PTR_ce34a80:
    #data loc_8c034dee
PTR_ce34a84:
    #data loc_8c051648
PTR_ce34a88:
    #data loc_8c066050
PTR_ce34a8c:
    #data PTR_ce35ea8

;=============================================

LAB_ce34a90:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34bc4,pc),r3
    mov 0x00,r13
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34aee
    mov.w @(DAT_ce34bba,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce34adc
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce34bc8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce34bcc,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce34adc:
    mov.w @(DAT_ce34bba,pc),r0
    mov r14,r4
    mov.b r13,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce34bd0,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce34aee:
    mov.w @(DAT_ce34bbc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce34b08
    mov.b r13,@(r0,r14)
    mov 0x01,r0
    mov.l @r15,r3
    mov.b r0,@(0x2,r3)
    mov 0x10,r3
    mov.w @(DAT_ce34bbe,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)

LAB_ce34b08:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34b12:
    mov r4,r3
    mov.l @(PTR_ce34bd4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34b24:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce34bd8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce34bba,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce34bc0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34bdc,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34be0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34bc2,pc),r0
    mov 0x58,r2
    mov.l @(PTR_ce34be4,pc),r3
    mov 0x36,r6
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x15,r5
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
    mov.l @(PTR_ce34be8,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce34b9a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34bc4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34bec
    mov.l @(PTR_ce34bd0,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34bba:
    #data 0x01f9
DAT_ce34bbc:
    #data 0x0141
DAT_ce34bbe:
    #data 0x027b
DAT_ce34bc0:
    #data 0x041c
DAT_ce34bc2:
    #data 0x01a1
    #align4

PTR_ce34bc4:
    #data loc_8c034dee
DAT_ce34bc8:
    #data 0xbf4db6db
PTR_ce34bcc:
    #data loc_8c05176e
PTR_ce34bd0:
    #data loc_8c051648
PTR_ce34bd4:
    #data PTR_ce35eb0
PTR_ce34bd8:
    #data loc_8c035162
PTR_ce34bdc:
    #data loc_8c05218a
PTR_ce34be0:
    #data loc_8c05115a
PTR_ce34be4:
    #data loc_8c2896b0
PTR_ce34be8:
    #data loc_8c034e8c

;=============================================

LAB_ce34bec:
    mov.w @(DAT_ce34d34,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt/s LAB_ce34c1c
    mov 0x00,r4
    mov.w @(DAT_ce34d34,pc),r0
    mov r15,r5
    mov.l @(PTR_ce34d44,pc),r3
    mov.b r4,@(r0,r14)
    mova @(DAT_ce34d3c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34d40,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    bra LAB_ce34c32
    nop

LAB_ce34c1c:
    mov.w @(DAT_ce34d34,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bt LAB_ce34c32
    mov.w @(DAT_ce34d34,pc),r0
    mov 0x1E,r5
    mov.l @(PTR_ce34d48,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce34c32:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34c3a:
    mov r4,r3
    mov.l @(PTR_ce34d4c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34c4c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce34d50,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34d36,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce34d54,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34d38,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34c7c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce34c7c:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34d58,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x33,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34d5c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce34d3a,pc),r0
    mov r4,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34d60,pc),r3
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
    mov.l @(PTR_ce34d64,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34cc6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34d68,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce34d6c,pc),r3
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
    bt LAB_ce34d2e
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce34d70,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34d64,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce34d2e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34d34:
    #data 0x014b
DAT_ce34d36:
    #data 0x01f9
DAT_ce34d38:
    #data 0x01d2
DAT_ce34d3a:
    #data 0x01a1
    #align4

DAT_ce34d3c:
    #data 0xc1ad5555
DAT_ce34d40:
    #data 0x43452492
PTR_ce34d44:
    #data loc_8c050ea4
PTR_ce34d48:
    #data loc_8c042008
PTR_ce34d4c:
    #data PTR_ce35eb8
PTR_ce34d50:
    #data loc_8c035162
DAT_ce34d54:
    #data 0x41f00000
DAT_ce34d58:
    #data 0x40892492
DAT_ce34d5c:
    #data 0xbf4db6db
PTR_ce34d60:
    #data loc_8c2896b0
PTR_ce34d64:
    #data loc_8c034e8c
PTR_ce34d68:
    #data loc_8c034dee
PTR_ce34d6c:
    #data loc_8c052ce2
PTR_ce34d70:
    #data loc_8c0511b4

;=============================================

LAB_ce34d74:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34e7c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34d8e
    lds.l @r15+,PR
    mov.l @(PTR_ce34e80,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34d8e:
    mov.w @(DAT_ce34e6e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34d9a
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce34d9a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34da0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce34dc0
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34e84,pc),r3
    mov 0x10,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce34dc0:
    mov.l @(PTR_ce34e7c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34df0
    mov.l @(PTR_ce34e88,pc),r3
    mov 0x00,r5
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
    mov.l @(PTR_ce34e8c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce34df0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce34df6:
    mov.w @(DAT_ce34e70,pc),r5
    add r4,r5
    mov.b @(0x6,r5),r0
    add 0xFF,r0
    mov.b r0,@(0x6,r5)
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34e12
    mov.l @(PTR_ce34e90,pc),r3
    mov 0x08,r0
    mov 0x0C,r6
    mov.b r0,@(0x6,r5)
    jmp @r3
    mov 0x01,r5

LAB_ce34e12:
    rts
    nop

LAB_ce34e16:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce34e72,pc),r1
    mov.l @(PTR_ce34e94,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce34e2e:
    mov.w @(DAT_ce34e74,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce34e76,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce34ecc
    mov.w @(DAT_ce34e78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34e9c
    mov.w @(DAT_ce34e7a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34e9c
    mov.l @(PTR_ce34e98,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34ecc
    mov r0,r4
    bra LAB_ce34ebe
    mov 0x03,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34e6e:
    #data 0x0141
DAT_ce34e70:
    #data 0x02a4
DAT_ce34e72:
    #data 0x01f9
DAT_ce34e74:
    #data 0x01fa
DAT_ce34e76:
    #data 0x0c00
DAT_ce34e78:
    #data 0x01fe
DAT_ce34e7a:
    #data 0x01a3
    #align4

PTR_ce34e7c:
    #data loc_8c034dee
PTR_ce34e80:
    #data loc_8c051854
PTR_ce34e84:
    #data loc_8c034e8c
PTR_ce34e88:
    #data loc_8c035162
PTR_ce34e8c:
    #data loc_8c051648
PTR_ce34e90:
    #data loc_8c0bf86c
PTR_ce34e94:
    #data PTR_ce35ec4
PTR_ce34e98:
    #data loc_8c045790

;=============================================

LAB_ce34e9c:
    mov.w @(DAT_ce34fbc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34ecc
    mov.w @(DAT_ce34fbe,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34ecc
    mov.l @(PTR_ce34fc8,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34ecc
    mov r0,r4
    mov 0x00,r2

LAB_ce34ebe:
    mov.w @(DAT_ce34fc0,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34ecc:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34ed4:
    rts
    mov 0x00,r0

LAB_ce34ed8:
    mov.w @(DAT_ce34fc2,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce34fc4,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce34f30
    mov.w @(DAT_ce34fbc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34f30
    mov.w @(DAT_ce34fbe,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34f30
    mova @(DAT_ce34fcc,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce34f30
    mov.l @(PTR_ce34fc8,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34f30
    mov r0,r4
    mov.w @(DAT_ce34fc0,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34f30:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34f38:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce34fc0,pc),r1
    mov.l @(PTR_ce34fd0,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce34f50:
    mov.l r14,@-r15
    mov 0x05,r6
    sts.l PR,@-r15
    mov.l @(PTR_ce34fd4,pc),r3
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.l @(PTR_ce34fd8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34fdc,pc),r3
    mov r14,r4
    mov 0x00,r6
    mov 0x0F,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce34f72:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34fd4,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.w @(DAT_ce34fc6,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce34fd8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce34fe0,pc),r0
    mov.l @(PTR_ce34fe4,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34fcc,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34fdc,pc),r2
    mov 0x0F,r5
    mov 0x03,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34fbc:
    #data 0x01fe
DAT_ce34fbe:
    #data 0x01a3
DAT_ce34fc0:
    #data 0x01f7
DAT_ce34fc2:
    #data 0x01fa
DAT_ce34fc4:
    #data 0x0c00
DAT_ce34fc6:
    #data 0x01a0
    #align4

PTR_ce34fc8:
    #data loc_8c045790
DAT_ce34fcc:
    #data 0x43092492
PTR_ce34fd0:
    #data PTR_ce35ed4
PTR_ce34fd4:
    #data loc_8c02fec4
PTR_ce34fd8:
    #data loc_8c056f2a
PTR_ce34fdc:
    #data loc_8c034e8c
DAT_ce34fe0:
    #data 0xc28f5555
PTR_ce34fe4:
    #data loc_8c103660

;=============================================

LAB_ce34fe8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bf/s LAB_ce3500e
    mov 0x05,r6
    mov.w @(DAT_ce35150,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce35152,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce3500e:
    mov.l @(PTR_ce3515c,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce35154,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce35168,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mova @(DAT_ce35160,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce35164,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3516c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce35170,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce35174,pc),r2
    mov 0x0F,r5
    mov 0x05,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce35058:
    mov.w @(DAT_ce35156,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce35178,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce35076:
    mov r4,r3
    mov.l @(PTR_ce3517c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce35088:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xD8,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    fldi0 fr15
    mov r15,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    add 0x04,r4
    mov.w @(DAT_ce35158,pc),r0
    mov r4,r1
    add 0x0C,r1
    mov r4,r13
    mov.l @(r0,r14),r5
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r5)
    mov 0x60,r0
    fmov fr15,@(r0,r5)
    mov 0x68,r0
    fmov fr15,@(r0,r5)
    mov 0x6C,r0
    fmov fr15,@(r0,r5)
    mov.l @(PTR_ce35180,pc),r3
    mov r14,r2
    mov.l r1,@r15
    add 0x34,r2
    jsr @r3
    mov 0x0C,r0
    mov.l @(PTR_ce35180,pc),r3
    mov r13,r1
    jsr @r3
    mov 0x0C,r0
    mov.l @(PTR_ce35184,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x34,r0
    fmov.s @r13,fr3
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    mov r14,r1
    mov.l @(PTR_ce35180,pc),r3
    fsub fr3,fr2
    add 0x34,r1
    fmov.s fr2,@r13
    fmov.s @(r0,r13),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fsub fr3,fr2
    fmov fr2,@(r0,r13)
    mov.l @r15,r2
    jsr @r3
    mov 0x0C,r0
    mova @(DAT_ce35188,pc),r0
    fmov.s @r13,fr3
    fmov.s @r0,fr4
    mov 0x5C,r0
    mov.l @(DAT_ce3518c,pc),r1
    fdiv fr4,fr3
    lds r1,FPUL
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r13),fr3
    mov 0x60,r0
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce35190,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    add 0x28,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce35150:
    #data 0x01d2
DAT_ce35152:
    #data 0x0130
DAT_ce35154:
    #data 0x01a0
DAT_ce35156:
    #data 0x01ea
DAT_ce35158:
    #data 0x01c8
    #align4

PTR_ce3515c:
    #data loc_8c02fec4
DAT_ce35160:
    #data 0xc2c15555
DAT_ce35164:
    #data 0x43009249
PTR_ce35168:
    #data loc_8c103660
PTR_ce3516c:
    #data loc_8c056f2a
PTR_ce35170:
    #data loc_8c042008
PTR_ce35174:
    #data loc_8c034e8c
PTR_ce35178:
    #data PTR_ce35ee4
PTR_ce3517c:
    #data PTR_ce35ef4
PTR_ce35180:
    #data loc_8c1294c8
PTR_ce35184:
    #data loc_8c04ce3a
DAT_ce35188:
    #data 0x41800000
DAT_ce3518c:
    #data 0x41092492
DAT_ce35190:
    #data 0xbf092492

;=============================================

LAB_ce35194:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce352cc,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce35240
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce352c4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce351f8
    mova @(DAT_ce352d0,pc),r0
    bra LAB_ce351fc
    fmov.s @r0,fr3

LAB_ce351f8:
    mova @(DAT_ce352d4,pc),r0
    fmov.s @r0,fr3

LAB_ce351fc:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce352d8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x0A,r3
    mov r15,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce352dc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce352c6,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce352e0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce352e4,pc),r0
    mov.l @(PTR_ce352e8,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce352ec,pc),r2
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4

LAB_ce35240:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce35248:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce352cc,pc),r3
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
    mov.w @(DAT_ce352c8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce352be
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce352c8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce352ca,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce352f0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce352ec,pc),r2
    mov r14,r4
    mov 0x02,r6
    mov 0x0F,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce352be:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce352c4:
    #data 0x01d2
DAT_ce352c6:
    #data 0x01a0
DAT_ce352c8:
    #data 0x041c
DAT_ce352ca:
    #data 0x01f9
    #align4

PTR_ce352cc:
    #data loc_8c034dee
DAT_ce352d0:
    #data 0x40d55555
DAT_ce352d4:
    #data 0xc0d55555
DAT_ce352d8:
    #data 0x40cdb6db
DAT_ce352dc:
    #data 0xbf4db6db
DAT_ce352e0:
    #data 0x41a00000
DAT_ce352e4:
    #data 0x42e76db6
PTR_ce352e8:
    #data loc_8c103660
PTR_ce352ec:
    #data loc_8c034e8c
PTR_ce352f0:
    #data loc_8c0511b4

;=============================================

LAB_ce352f4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce35420,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce35338
    mov.w @(DAT_ce35412,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce35356
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce35414,pc),r0
    mov 0x00,r6
    mov 0x02,r2
    mov r6,r5
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce35424,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce35416,pc),r0
    mov 0x20,r2
    bra LAB_ce35356
    mov.b r2,@(r0,r13)

LAB_ce35338:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce35428,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce35356:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3535e:
    mov r4,r3
    mov.l @(PTR_ce3542c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce35370:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce35420,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce35412,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce353a2
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce35430,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce35434,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce353a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce353a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce35420,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x60,r1
    add r14,r1
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce35418,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce35464
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov.l @(PTR_ce35438,pc),r4
    mov r14,r2
    add 0x01,r0
    mov r15,r1
    mov.b r0,@(0x6,r14)
    add 0x34,r2
    mov.w @(DAT_ce35418,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3541a,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x03,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.l @(PTR_ce3543c,pc),r3
    mov.b r0,@(0x6,r4)
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce3541c,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce35440
    bra LAB_ce35442
    mov 0xF8,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce35412:
    #data 0x0141
DAT_ce35414:
    #data 0x01c8
DAT_ce35416:
    #data 0x01a1
DAT_ce35418:
    #data 0x041c
DAT_ce3541a:
    #data 0x01f9
DAT_ce3541c:
    #data 0x01d2
    #align4

PTR_ce35420:
    #data loc_8c034dee
PTR_ce35424:
    #data loc_8c02fec4
PTR_ce35428:
    #data loc_8c051648
PTR_ce3542c:
    #data PTR_ce360dc
DAT_ce35430:
    #data 0xc1892492
DAT_ce35434:
    #data 0xbf4db6db
PTR_ce35438:
    #data loc_8c26a518
PTR_ce3543c:
    #data loc_8c1294c8

;=============================================

LAB_ce35440:
    mov 0x08,r2

LAB_ce35442:
    lds r2,FPUL
    mov 0xFF,r5
    fmov.s @r15,fr2
    mov.l @(PTR_ce3557c,pc),r3
    float FPUL,fr3
    fadd fr3,fr2
    fmov.s fr2,@r15
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce35580,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce35584,pc),r3
    mov 0x0F,r5
    mov 0x04,r6
    jsr @r3
    mov r14,r4

LAB_ce35464:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3546c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce35588,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce354f6
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x00,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x6,r14)
    mov 0x02,r2
    mov.w @(DAT_ce35574,pc),r0
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce3558c,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce35576,pc),r0
    mov 0x21,r2
    fldi0 fr4
    mov.b r2,@(r0,r13)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce35578,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce354c8
    mova @(DAT_ce35590,pc),r0
    bra LAB_ce354cc
    fmov.s @r0,fr3

LAB_ce354c8:
    mova @(DAT_ce35594,pc),r0
    fmov.s @r0,fr3

LAB_ce354cc:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce35578,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce354de
    mova @(DAT_ce35598,pc),r0
    bra LAB_ce354e2
    fmov.s @r0,fr3

LAB_ce354de:
    mova @(DAT_ce3559c,pc),r0
    fmov.s @r0,fr3

LAB_ce354e2:
    mov 0x68,r0
    mov.l @(PTR_ce35584,pc),r3
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x01,r6
    mov 0x02,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce354f6:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce354fe:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce35588,pc),r3
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
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3556e
    mov.b @(0x6,r14),r0
    mov r14,r4
    fldi0 fr4
    mov 0x03,r6
    add 0x01,r0
    mov.l @(PTR_ce35584,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3556e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce35574:
    #data 0x01c8
DAT_ce35576:
    #data 0x01a1
DAT_ce35578:
    #data 0x01d2
    #align4

PTR_ce3557c:
    #data loc_8c100672
PTR_ce35580:
    #data loc_8c0423fc
PTR_ce35584:
    #data loc_8c034e8c
PTR_ce35588:
    #data loc_8c034dee
PTR_ce3558c:
    #data loc_8c02fec4
DAT_ce35590:
    #data 0xc1555555
DAT_ce35594:
    #data 0x41555555
DAT_ce35598:
    #data 0x3e555555
DAT_ce3559c:
    #data 0xbe555555

;=============================================

LAB_ce355a0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce356a8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce355ba
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce356ac,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce355ba:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce355c2:
    mov r4,r3
    mov.l @(PTR_ce356b0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce355d4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce356a8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce356a6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce35606
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce356b4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce356b8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce35606:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3560c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce356a8,pc),r3
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
    fcmp/gt fr3,fr2
    bt/s LAB_ce35668
    fmov fr2,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce356bc,pc),r3
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce35668:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3566e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce356a8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce356a6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce356a0
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce356c0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce356b8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce356a0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce356a6:
    #data 0x0141
    #align4

PTR_ce356a8:
    #data loc_8c034dee
PTR_ce356ac:
    #data loc_8c051648
PTR_ce356b0:
    #data PTR_ce360f0
DAT_ce356b4:
    #data 0x42092492
DAT_ce356b8:
    #data 0xbf892492
PTR_ce356bc:
    #data loc_8c034e8c
DAT_ce356c0:
    #data 0xc1ab6db6

;=============================================

LAB_ce356c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce357f0,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x60,r1
    add r14,r1
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce357e6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce35752
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov.l @(PTR_ce357f4,pc),r4
    mov r14,r2
    add 0x01,r0
    mov r15,r1
    mov.b r0,@(0x6,r14)
    add 0x34,r2
    mov.w @(DAT_ce357e6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce357e8,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x03,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.l @(PTR_ce357f8,pc),r3
    mov.b r0,@(0x6,r4)
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce357ea,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce3572e
    bra LAB_ce35730
    mov 0xF8,r2

LAB_ce3572e:
    mov 0x08,r2

LAB_ce35730:
    lds r2,FPUL
    mov 0xFF,r5
    fmov.s @r15,fr2
    mov.l @(PTR_ce357fc,pc),r3
    float FPUL,fr3
    fadd fr3,fr2
    fmov.s fr2,@r15
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce35800,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce35804,pc),r3
    mov 0x0F,r5
    mov 0x07,r6
    jsr @r3
    mov r14,r4

LAB_ce35752:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3575a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce357f0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce357e0
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x02,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r6
    mov.w @(DAT_ce357ec,pc),r0
    mov r6,r5
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0x03,r0
    mov.b r2,@(r0,r4)
    add 0xA8,r0
    mov 0x23,r3
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce35808,pc),r3
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
    mov.w @(DAT_ce357ea,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce357b4
    mova @(DAT_ce3580c,pc),r0
    bra LAB_ce357b8
    fmov.s @r0,fr3

LAB_ce357b4:
    mova @(DAT_ce35810,pc),r0
    fmov.s @r0,fr3

LAB_ce357b8:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce357ea,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce357ca
    mova @(DAT_ce35814,pc),r0
    bra LAB_ce357ce
    fmov.s @r0,fr3

LAB_ce357ca:
    mova @(DAT_ce35818,pc),r0
    fmov.s @r0,fr3

LAB_ce357ce:
    mov.l @(PTR_ce35804,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x08,r6
    mov 0x0F,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce357e0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce357e6:
    #data 0x041c
DAT_ce357e8:
    #data 0x01f9
DAT_ce357ea:
    #data 0x01d2
DAT_ce357ec:
    #data 0x01c8
    #align4

PTR_ce357f0:
    #data loc_8c034dee
PTR_ce357f4:
    #data loc_8c26a518
PTR_ce357f8:
    #data loc_8c1294c8
PTR_ce357fc:
    #data loc_8c100672
PTR_ce35800:
    #data loc_8c0423fc
PTR_ce35804:
    #data loc_8c034e8c
PTR_ce35808:
    #data loc_8c02fec4
DAT_ce3580c:
    #data 0x41555555
DAT_ce35810:
    #data 0xc1555555
DAT_ce35814:
    #data 0x3e555555
DAT_ce35818:
    #data 0xbe555555

;=============================================

LAB_ce3581c:
    mov.w @(DAT_ce35948,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce35864
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

LAB_ce35864:
    mov.l @(PTR_ce35954,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3588c
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce35958,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3588c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce35892:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce3594a,pc),r1
    mov.l @(PTR_ce3595c,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce358aa:
    mov.w @(DAT_ce3594c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(r0,r14),r3
    mov.b @(0x6,r3),r0
    mov 0x01,r3
    extu.b r0,r0
    cmp/gt r3,r0
    bf LAB_ce358c8
    mov.w @(DAT_ce3594c,pc),r0
    mov r14,r5
    mov.l @(PTR_ce35960,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce358c8:
    rts
    mov.l @r15+,r14

LAB_ce358cc:
    mov.w @(DAT_ce3594c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(r0,r14),r3
    mov.b @(0x6,r3),r0
    tst r0,r0
    bf LAB_ce358e6
    mov.w @(DAT_ce3594c,pc),r0
    mov r14,r5
    mov.l @(PTR_ce35964,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce358e6:
    mov.w @(DAT_ce3594c,pc),r0
    mov r14,r5
    mov.l @(PTR_ce35960,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce358f2:
    mov.w @(DAT_ce3594c,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce35960,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce35900:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3594e,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3591a
    mov 0x0A,r5
    cmp/eq 0x01,r0
    bt LAB_ce3591a
    cmp/eq 0x02,r0
    bf LAB_ce3591e

LAB_ce3591a:
    mov.w @(DAT_ce35950,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3591e:
    mov.l @(PTR_ce35968,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce35924:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3594e,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3593e
    mov 0x0A,r5
    cmp/eq 0x01,r0
    bt LAB_ce3593e
    cmp/eq 0x02,r0
    bf LAB_ce35942

LAB_ce3593e:
    mov.w @(DAT_ce35950,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce35942:
    mov.l @(PTR_ce35968,pc),r2
    jmp @r2
    mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce35948:
    #data 0x0141
DAT_ce3594a:
    #data 0x01f7
DAT_ce3594c:
    #data 0x01c8
DAT_ce3594e:
    #data 0x04c9
DAT_ce35950:
    #data 0x01e9
    #align4

PTR_ce35954:
    #data loc_8c034dee
PTR_ce35958:
    #data loc_8c051648
PTR_ce3595c:
    #data PTR_ce36108
PTR_ce35960:
    #data loc_8c04cc1c
PTR_ce35964:
    #data loc_8c04ce54
PTR_ce35968:
    #data loc_8c0530d8

;=============================================

LAB_ce3596c:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce35a22,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce3598c
    cmp/eq 0x01,r0
    bt LAB_ce35992
    cmp/eq 0x02,r0
    bt LAB_ce3599a
    bra LAB_ce359a6
    nop

LAB_ce3598c:
    mov.w @(DAT_ce35a24,pc),r0
    bra LAB_ce359a0
    mov.b r5,@(r0,r4)

LAB_ce35992:
    mov.w @(DAT_ce35a24,pc),r0
    mov 0x0D,r2
    bra LAB_ce359a0
    mov.b r2,@(r0,r4)

LAB_ce3599a:
    mov.w @(DAT_ce35a24,pc),r0
    mov 0x09,r3
    mov.b r3,@(r0,r4)

LAB_ce359a0:
    mov.w @(DAT_ce35a26,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce359a6:
    mov.l @(PTR_ce35a2c,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce359ac:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce35a22,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce359cc
    cmp/eq 0x01,r0
    bt LAB_ce359d2
    cmp/eq 0x02,r0
    bt LAB_ce359da
    bra LAB_ce359e6
    nop

LAB_ce359cc:
    mov.w @(DAT_ce35a24,pc),r0
    bra LAB_ce359e0
    mov.b r5,@(r0,r4)

LAB_ce359d2:
    mov.w @(DAT_ce35a24,pc),r0
    mov 0x0D,r2
    bra LAB_ce359e0
    mov.b r2,@(r0,r4)

LAB_ce359da:
    mov.w @(DAT_ce35a24,pc),r0
    mov 0x09,r3
    mov.b r3,@(r0,r4)

LAB_ce359e0:
    mov.w @(DAT_ce35a26,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce359e6:
    mov.l @(PTR_ce35a2c,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce359ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce35a30,pc),r3
    mov 0x05,r1
    mov.w @(DAT_ce35a28,pc),r14
    mov.b @r3,r2
    extu.b r2,r2
    cmp/ge r1,r2
    bf/s LAB_ce35a08
    add r4,r14
    mov.b @(0x1,r14),r0
    bra LAB_ce35a0a
    mov r0,r3

LAB_ce35a08:
    mov 0x00,r3

LAB_ce35a0a:
    mov.l @(PTR_ce35a34,pc),r2
    mov 0x00,r5
    mov.w @(DAT_ce35a2a,pc),r6
    mov.b r3,@r15
    jsr @r2
    mov r14,r4
    mov.b @r15,r0
    mov.b r0,@(0x1,r14)
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce35a22:
    #data 0x04c9
DAT_ce35a24:
    #data 0x01e9
DAT_ce35a26:
    #data 0x01a3
DAT_ce35a28:
    #data 0x02a4
DAT_ce35a2a:
    #data 0x0080
    #align4

PTR_ce35a2c:
    #data loc_8c0530d8
PTR_ce35a30:
    #data loc_8c2895f0
PTR_ce35a34:
    #data loc_8c129728
DAT_ce35a38:
    #data 0x0201
    #data 0x0200
DAT_ce35a3c:
    #data 0x02ff
    #data 0x0201
DAT_ce35a40:
    #data 0xffff
    #data 0x02ff
DAT_ce35a44:
    #data 0x0201
    #data 0x0201
DAT_ce35a48:
    #data 0x02ff
    #data 0x02ff
DAT_ce35a4c:
    #data 0xffff
    #data 0xffff
DAT_ce35a50:
    #data 0x0201
    #data 0x0200
DAT_ce35a54:
    #data 0x02ff
    #data 0x0201
DAT_ce35a58:
    #data 0xffff
    #data 0x02ff
DAT_ce35a5c:
    #data 0x0201
    #data 0x0201
DAT_ce35a60:
    #data 0x02ff
    #data 0x02ff
DAT_ce35a64:
    #data 0xffff
    #data 0xffff
DAT_ce35a68:
    #data 0x0201
    #data 0x0200
DAT_ce35a6c:
    #data 0x02ff
    #data 0x0201
DAT_ce35a70:
    #data 0xffff
    #data 0x02ff
DAT_ce35a74:
    #data 0x0201
    #data 0x0201
DAT_ce35a78:
    #data 0x02ff
    #data 0x02ff
DAT_ce35a7c:
    #data 0xffff
    #data 0xffff
DAT_ce35a80:
    #data 0x0003
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce35a90:
    #data 0x0003
    #data 0x2000
    #data 0x000b
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0360
DAT_ce35aa0:
    #data 0x0003
    #data 0x1000
    #data 0x0005
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce35ab0:
    #data 0x0003
    #data 0x1000
    #data 0x0006
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0060
DAT_ce35ac0:
    #data 0x0003
    #data 0x2000
    #data 0x0007
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce35ad0:
    #data 0x0003
    #data 0x1000
    #data 0x000d
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce35ae0:
    #data 0x0003
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x0400
    #data 0x1000
    #data 0x1400
    #data 0x0360
DAT_ce35af0:
    #data 0x0003
    #data 0x1000
    #data 0x0009
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce35b00:
    #data 0x0020
    #data 0x0000
    #data 0x000f
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0300
DAT_ce35b0e:
    #data 0x0020
    #data 0x1000
    #data 0x000e
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0060
DAT_ce35b1c:
    #data 0x0003
    #data 0x1000
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce35b2c:
    #data 0x0003
    #data 0x9100
    #data 0x000c
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce35b3c:
    #data 0x0003
    #data 0x9100
    #data 0x000a
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce35b4c:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
    #align4

PTR_ce35b5c:
    #data LAB_ce307dc
PTR_ce35b60:
    #data LAB_ce30024
PTR_ce35b64:
    #data LAB_ce307e0
PTR_ce35b68:
    #data LAB_ce30e2e
PTR_ce35b6c:
    #data LAB_ce312f4
PTR_ce35b70:
    #data LAB_ce31522
PTR_ce35b74:
    #data LAB_ce31646
PTR_ce35b78:
    #data LAB_ce31b0e
PTR_ce35b7c:
    #data LAB_ce31e4c
PTR_ce35b80:
    #data LAB_ce34e16
PTR_ce35b84:
    #data LAB_ce34f38
PTR_ce35b88:
    #data LAB_ce35058
PTR_ce35b8c:
    #data LAB_ce35892
PTR_ce35b90:
    #data LAB_ce306f8
PTR_ce35b94:
    #data LAB_ce34c3a
PTR_ce35b98:
    #data LAB_ce3122c
PTR_ce35b9c:
    #data LAB_ce35900
PTR_ce35ba0:
    #data LAB_ce35924
PTR_ce35ba4:
    #data LAB_ce3596c
PTR_ce35ba8:
    #data LAB_ce359ac
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce35bb8:
    #data LAB_ce359ec
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce35bcc:
    #data LAB_ce30818
PTR_ce35bd0:
    #data LAB_ce30bb8
PTR_ce35bd4:
    #data LAB_ce30be0
PTR_ce35bd8:
    #data LAB_ce30818
PTR_ce35bdc:
    #data LAB_ce30e50
PTR_ce35be0:
    #data LAB_ce31176
PTR_ce35be4:
    #data LAB_ce31160
PTR_ce35be8:
    #data LAB_ce30e42
PTR_ce35bec:
    #data LAB_ce3108e
PTR_ce35bf0:
    #data LAB_ce310ec
PTR_ce35bf4:
    #data FUN_ce3113e
PTR_ce35bf8:
    #data LAB_ce31306
PTR_ce35bfc:
    #data LAB_ce313a4
PTR_ce35c00:
    #data LAB_ce313fe
PTR_ce35c04:
    #data LAB_ce314b8
PTR_ce35c08:
    #data LAB_ce31534
PTR_ce35c0c:
    #data LAB_ce31588
PTR_ce35c10:
    #data LAB_ce31624
PTR_ce35c14:
    #data LAB_ce31658
PTR_ce35c18:
    #data LAB_ce3167e
DAT_ce35c1c:
    #data 0x0000
    #data 0x0000
    #data 0x0001
    #data 0x0002
    #align4

PTR_ce35c24:
    #data LAB_ce3168e
PTR_ce35c28:
    #data LAB_ce31918
PTR_ce35c2c:
    #data LAB_ce319a0
PTR_ce35c30:
    #data LAB_ce316a4
PTR_ce35c34:
    #data LAB_ce31760
PTR_ce35c38:
    #data LAB_ce3180a
PTR_ce35c3c:
    #data LAB_ce31880
PTR_ce35c40:
    #data LAB_ce318f8
PTR_ce35c44:
    #data LAB_ce3192a
PTR_ce35c48:
    #data LAB_ce31950
PTR_ce35c4c:
    #data FUN_ce31980
PTR_ce35c50:
    #data LAB_ce319b6
PTR_ce35c54:
    #data LAB_ce31a26
PTR_ce35c58:
    #data LAB_ce31a6c
PTR_ce35c5c:
    #data LAB_ce31ac4
PTR_ce35c60:
    #data FUN_ce31aee
PTR_ce35c64:
    #data LAB_ce31b38
PTR_ce35c68:
    #data LAB_ce31c80
PTR_ce35c6c:
    #data LAB_ce31b54
PTR_ce35c70:
    #data LAB_ce31c60
PTR_ce35c74:
    #data LAB_ce31c38
PTR_ce35c78:
    #data LAB_ce31c40
PTR_ce35c7c:
    #data LAB_ce31c60
DAT_ce35c80:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x03
DAT_ce35c84:
    #data 0x03
    #data 0x01
    #data 0x02
    #data 0x03
    #align4

PTR_ce35c88:
    #data LAB_ce31c94
PTR_ce35c8c:
    #data LAB_ce31e12
PTR_ce35c90:
    #data LAB_ce31e00
PTR_ce35c94:
    #data LAB_ce31e06
PTR_ce35c98:
    #data LAB_ce31e12
PTR_ce35c9c:
    #data LAB_ce31ca4
PTR_ce35ca0:
    #data LAB_ce31ca4
PTR_ce35ca4:
    #data LAB_ce31ca4
PTR_ce35ca8:
    #data LAB_ce31cd8
PTR_ce35cac:
    #data LAB_ce31cea
PTR_ce35cb0:
    #data LAB_ce31d24
PTR_ce35cb4:
    #data LAB_ce31d82
PTR_ce35cb8:
    #data LAB_ce31dfa
PTR_ce35cbc:
    #data LAB_ce31e60
PTR_ce35cc0:
    #data LAB_ce31e60
PTR_ce35cc4:
    #data LAB_ce31e60
PTR_ce35cc8:
    #data LAB_ce320a8
PTR_ce35ccc:
    #data LAB_ce322d8
PTR_ce35cd0:
    #data LAB_ce3246e
PTR_ce35cd4:
    #data LAB_ce3259e
PTR_ce35cd8:
    #data LAB_ce326b0
PTR_ce35cdc:
    #data LAB_ce32876
PTR_ce35ce0:
    #data LAB_ce3375c
PTR_ce35ce4:
    #data LAB_ce3386e
PTR_ce35ce8:
    #data LAB_ce33a64
PTR_ce35cec:
    #data LAB_ce33e4c
PTR_ce35cf0:
    #data LAB_ce3440e
PTR_ce35cf4:
    #data LAB_ce34832
PTR_ce35cf8:
    #data LAB_ce348ea
PTR_ce35cfc:
    #data LAB_ce349d2
PTR_ce35d00:
    #data LAB_ce34da0
PTR_ce35d04:
    #data LAB_ce31e60
PTR_ce35d08:
    #data LAB_ce31e60
PTR_ce35d0c:
    #data LAB_ce31e60
PTR_ce35d10:
    #data LAB_ce31e60
PTR_ce35d14:
    #data LAB_ce34b12
PTR_ce35d18:
    #data LAB_ce31e76
PTR_ce35d1c:
    #data LAB_ce31f9c
PTR_ce35d20:
    #data LAB_ce3203e
PTR_ce35d24:
    #data LAB_ce320e4
PTR_ce35d28:
    #data LAB_ce3212e
PTR_ce35d2c:
    #data LAB_ce321a4
PTR_ce35d30:
    #data LAB_ce32238
PTR_ce35d34:
    #data FUN_ce322b6
PTR_ce35d38:
    #data LAB_ce322ea
PTR_ce35d3c:
    #data LAB_ce32366
PTR_ce35d40:
    #data LAB_ce32406
PTR_ce35d44:
    #data LAB_ce32480
PTR_ce35d48:
    #data LAB_ce32544
PTR_ce35d4c:
    #data FUN_ce3257c
PTR_ce35d50:
    #data LAB_ce325b0
PTR_ce35d54:
    #data LAB_ce3262c
PTR_ce35d58:
    #data FUN_ce32664
PTR_ce35d5c:
    #data LAB_ce326c2
PTR_ce35d60:
    #data LAB_ce3274a
PTR_ce35d64:
    #data LAB_ce327fc
PTR_ce35d68:
    #data LAB_ce3288c
PTR_ce35d6c:
    #data LAB_ce32984
PTR_ce35d70:
    #data LAB_ce32a78
PTR_ce35d74:
    #data LAB_ce32aa6
PTR_ce35d78:
    #data LAB_ce32b0c
PTR_ce35d7c:
    #data LAB_ce32c22
PTR_ce35d80:
    #data LAB_ce32d8c
PTR_ce35d84:
    #data LAB_ce32f38
PTR_ce35d88:
    #data LAB_ce32fee
PTR_ce35d8c:
    #data LAB_ce331ca
PTR_ce35d90:
    #data LAB_ce333ec
PTR_ce35d94:
    #data LAB_ce33532
PTR_ce35d98:
    #data LAB_ce32b2c
PTR_ce35d9c:
    #data LAB_ce32b50
PTR_ce35da0:
    #data LAB_ce32c42
PTR_ce35da4:
    #data LAB_ce32c80
PTR_ce35da8:
    #data LAB_ce32dac
PTR_ce35dac:
    #data LAB_ce32dea
PTR_ce35db0:
    #data LAB_ce32f6c
PTR_ce35db4:
    #data LAB_ce32fbe
PTR_ce35db8:
    #data LAB_ce33000
PTR_ce35dbc:
    #data LAB_ce330ee
PTR_ce35dc0:
    #data LAB_ce3311a
PTR_ce35dc4:
    #data FUN_ce331a8
DAT_ce35dc8:
    #data 0x41200000
DAT_ce35dcc:
    #data 0x80000000
    #data 0x41ad5555
    #data 0x80000000
PTR_ce35dd8:
    #data LAB_ce33204
PTR_ce35ddc:
    #data LAB_ce33230
PTR_ce35de0:
    #data LAB_ce332e4
PTR_ce35de4:
    #data LAB_ce333b6
PTR_ce35de8:
    #data LAB_ce33420
PTR_ce35dec:
    #data LAB_ce33480
PTR_ce35df0:
    #data LAB_ce33502
PTR_ce35df4:
    #data LAB_ce33544
PTR_ce35df8:
    #data LAB_ce335ba
PTR_ce35dfc:
    #data FUN_ce33652
PTR_ce35e00:
    #data LAB_ce33710
PTR_ce35e04:
    #data LAB_ce3372a
PTR_ce35e08:
    #data LAB_ce3376e
PTR_ce35e0c:
    #data LAB_ce337f0
PTR_ce35e10:
    #data LAB_ce33880
PTR_ce35e14:
    #data LAB_ce338f2
PTR_ce35e18:
    #data LAB_ce33966
PTR_ce35e1c:
    #data LAB_ce33a02
PTR_ce35e20:
    #data LAB_ce33a32
PTR_ce35e24:
    #data LAB_ce33a7a
PTR_ce35e28:
    #data LAB_ce33b34
PTR_ce35e2c:
    #data LAB_ce33c04
PTR_ce35e30:
    #data LAB_ce33d48
PTR_ce35e34:
    #data FUN_ce33dd8
DAT_ce35e38:
    #data 0x41200000
DAT_ce35e3c:
    #data 0x41cdb6db
    #data 0x41baaaaa
    #data 0x40892492
    #data 0x41200000
    #data 0xc1cdb6db
    #data 0x41baaaaa
    #data 0xc0892492
PTR_ce35e58:
    #data LAB_ce33e80
PTR_ce35e5c:
    #data LAB_ce33efc
PTR_ce35e60:
    #data LAB_ce33f62
PTR_ce35e64:
    #data LAB_ce33ffa
PTR_ce35e68:
    #data LAB_ce3415c
PTR_ce35e6c:
    #data LAB_ce341d2
PTR_ce35e70:
    #data LAB_ce34248
PTR_ce35e74:
    #data LAB_ce34306
PTR_ce35e78:
    #data LAB_ce343c0
PTR_ce35e7c:
    #data LAB_ce34420
PTR_ce35e80:
    #data LAB_ce344a4
PTR_ce35e84:
    #data LAB_ce34568
PTR_ce35e88:
    #data LAB_ce345e2
PTR_ce35e8c:
    #data LAB_ce346fe
PTR_ce35e90:
    #data LAB_ce34756
PTR_ce35e94:
    #data LAB_ce34810
PTR_ce35e98:
    #data LAB_ce34844
PTR_ce35e9c:
    #data LAB_ce348b2
PTR_ce35ea0:
    #data LAB_ce3492c
PTR_ce35ea4:
    #data LAB_ce3499a
PTR_ce35ea8:
    #data LAB_ce349e8
PTR_ce35eac:
    #data LAB_ce34a90
PTR_ce35eb0:
    #data LAB_ce34b24
PTR_ce35eb4:
    #data LAB_ce34b9a
PTR_ce35eb8:
    #data LAB_ce34c4c
PTR_ce35ebc:
    #data LAB_ce34cc6
PTR_ce35ec0:
    #data LAB_ce34d74
PTR_ce35ec4:
    #data LAB_ce34e2e
PTR_ce35ec8:
    #data LAB_ce34ed4
PTR_ce35ecc:
    #data LAB_ce34ed8
PTR_ce35ed0:
    #data LAB_ce34e2e
PTR_ce35ed4:
    #data LAB_ce34f50
PTR_ce35ed8:
    #data LAB_ce34f72
PTR_ce35edc:
    #data LAB_ce34f50
PTR_ce35ee0:
    #data LAB_ce34fe8
PTR_ce35ee4:
    #data LAB_ce35076
PTR_ce35ee8:
    #data LAB_ce3535e
PTR_ce35eec:
    #data LAB_ce35076
PTR_ce35ef0:
    #data LAB_ce355c2
PTR_ce35ef4:
    #data LAB_ce35088
PTR_ce35ef8:
    #data LAB_ce35194
PTR_ce35efc:
    #data LAB_ce35248
PTR_ce35f00:
    #data LAB_ce352f4
    #data 0x41d55555
    #data 0x414db6db
    #data 0x42855555
    #data 0x424db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x42700000
    #data 0x412b6db6
    #data 0x41d55555
    #data 0x414db6db
    #data 0x423aaaaa
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41f00000
    #data 0x40892492
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x42092492
    #data 0x4212aaaa
    #data 0x40892492
    #data 0x42055555
    #data 0x424db6db
    #data 0x41555555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41a00000
    #data 0x40cdb6db
    #data 0x42200000
    #data 0xc12b6db6
    #data 0x4212aaaa
    #data 0xc2092492
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41f00000
    #data 0x41892492
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x42092492
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x414db6db
    #data 0x42555555
    #data 0x414db6db
    #data 0x41d55555
    #data 0x41892492
    #data 0x41f00000
    #data 0x40892492
    #data 0x41d55555
    #data 0x414db6db
PTR_ce360dc:
    #data LAB_ce35370
PTR_ce360e0:
    #data LAB_ce353a8
PTR_ce360e4:
    #data LAB_ce3546c
PTR_ce360e8:
    #data LAB_ce354fe
PTR_ce360ec:
    #data LAB_ce355a0
PTR_ce360f0:
    #data LAB_ce355d4
PTR_ce360f4:
    #data LAB_ce3560c
PTR_ce360f8:
    #data LAB_ce3566e
PTR_ce360fc:
    #data LAB_ce356c4
PTR_ce36100:
    #data LAB_ce3575a
PTR_ce36104:
    #data LAB_ce3581c
PTR_ce36108:
    #data LAB_ce358aa
PTR_ce3610c:
    #data LAB_ce358cc
PTR_ce36110:
    #data LAB_ce358f2
PTR_ce36114:
    #data LAB_ce358f2
