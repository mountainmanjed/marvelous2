;============================================
; S_PL0E : Venom Program                    |
;============================================

#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c034f54 0x8C034F54
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c0423fc 0x8C0423FC
#symbol loc_8c045790 0x8C045790
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c04fea8 0x8C04FEA8
#symbol loc_8c04ff88 0x8C04FF88
#symbol loc_8c050048 0x8C050048
#symbol loc_8c050084 0x8C050084
#symbol loc_8c050552 0x8C050552
#symbol loc_8c050610 0x8C050610
#symbol loc_8c05064e 0x8C05064E
#symbol loc_8c050682 0x8C050682
#symbol loc_8c050834 0x8C050834
#symbol loc_8c050ea4 0x8C050EA4
#symbol loc_8c05115a 0x8C05115A
#symbol loc_8c0511b4 0x8C0511B4
#symbol loc_8c0511e2 0x8C0511E2
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c052b4c 0x8C052B4C
#symbol loc_8c052c84 0x8C052C84
#symbol loc_8c052ce2 0x8C052CE2
#symbol loc_8c052dac 0x8C052DAC
#symbol loc_8c053082 0x8C053082
#symbol loc_8c0530d8 0x8C0530D8
#symbol loc_8c053e00 0x8C053E00
#symbol loc_8c053f6e 0x8C053F6E
#symbol loc_8c0542e0 0x8C0542E0
#symbol loc_8c054508 0x8C054508
#symbol loc_8c05496c 0x8C05496C
#symbol loc_8c054b34 0x8C054B34
#symbol loc_8c054d04 0x8C054D04
#symbol loc_8c054d1c 0x8C054D1C
#symbol loc_8c054da0 0x8C054DA0
#symbol loc_8c054e58 0x8C054E58
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c071400 0x8C071400
#symbol loc_8c071730 0x8C071730
#symbol loc_8c071a94 0x8C071A94
#symbol loc_8c0c5cac 0x8C0C5CAC
#symbol loc_8c0c6024 0x8C0C6024
#symbol loc_8c0c6348 0x8C0C6348
#symbol loc_8c0c6e44 0x8C0C6E44
#symbol loc_8c0c73cc 0x8C0C73CC
#symbol loc_8c0c7c10 0x8C0C7C10
#symbol loc_8c100672 0x8C100672
#symbol loc_8c103660 0x8C103660
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c287ae8 0x8C287AE8
#symbol loc_8c2896b0 0x8C2896B0

;============================================

BEG_ce30000:
    mov.w @(DAT_ce300da,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300e0,pc),r7
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

LAB_ce3001c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    mov.l @(PTR_ce300e8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    mov.l @(PTR_ce300ec,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    mov.l @(PTR_ce300f0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce301be
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce30234
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce30178
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce300bc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce30132
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce30284
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce302bc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    mov.w @(DAT_ce300dc,pc),r5
    mov.l @(PTR_ce300f4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    mov.l @(PTR_ce300f8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300fc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300b6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce300bc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30100,pc),r5
    mov.w @(DAT_ce300de,pc),r6
    mov.l @(PTR_ce30104,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30108
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300da:
    #data 0x0428
DAT_ce300dc:
    #data 0x03cc
DAT_ce300de:
    #data 0x036c
    #align4

PTR_ce300e0:
    #data PTR_ce33340
PTR_ce300e4:
    #data loc_8c054508
PTR_ce300e8:
    #data loc_8c054b34
PTR_ce300ec:
    #data loc_8c05496c
PTR_ce300f0:
    #data loc_8c054d04
PTR_ce300f4:
    #data loc_8c053f6e
PTR_ce300f8:
    #data loc_8c053e00
PTR_ce300fc:
    #data loc_8c0542e0
PTR_ce30100:
    #data DAT_ce332c4
PTR_ce30104:
    #data loc_8c054e58

;=============================================

LAB_ce30108:
    mov.w @(DAT_ce3020e,pc),r5
    mov.l @(PTR_ce3021c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30210,pc),r0
    mov.l @(PTR_ce30220,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30132:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30224,pc),r5
    mov.w @(DAT_ce30212,pc),r6
    mov.l @(PTR_ce30228,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30150
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30150:
    mov.w @(DAT_ce30212,pc),r5
    mov.l @(PTR_ce3021c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30210,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30220,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30178:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3022c,pc),r5
    mov.w @(DAT_ce30214,pc),r6
    mov.l @(PTR_ce30228,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30196
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30196:
    mov.w @(DAT_ce30214,pc),r5
    mov.l @(PTR_ce3021c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30210,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30220,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301be:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30230,pc),r5
    mov.w @(DAT_ce30216,pc),r6
    mov.l @(PTR_ce30228,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301de
    mov.w @(DAT_ce30218,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce301e6

LAB_ce301de:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301e6:
    mov.w @(DAT_ce30216,pc),r5
    mov.l @(PTR_ce3021c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30210,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30220,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3020e:
    #data 0x036c
DAT_ce30210:
    #data 0x01e9
DAT_ce30212:
    #data 0x0374
DAT_ce30214:
    #data 0x037c
DAT_ce30216:
    #data 0x0384
DAT_ce30218:
    #data 0x040c
    #align4

PTR_ce3021c:
    #data loc_8c055c3a
PTR_ce30220:
    #data loc_8c0530d8
PTR_ce30224:
    #data DAT_ce332d4
PTR_ce30228:
    #data loc_8c054e58
PTR_ce3022c:
    #data DAT_ce332b0
PTR_ce30230:
    #data DAT_ce33290

;=============================================

FUN_ce30234:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30354,pc),r5
    mov.w @(DAT_ce3034c,pc),r6
    mov.l @(PTR_ce30358,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30254
    mov.w @(DAT_ce3034e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3025c

LAB_ce30254:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3025c:
    mov.w @(DAT_ce3034c,pc),r5
    mov.l @(PTR_ce3035c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30350,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30360,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30284:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30364,pc),r3
    jsr @r3
    mov 0x05,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3029e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3029e:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30350,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30360,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302bc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30368,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce302d4
    mov.w @(DAT_ce3034e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302dc

LAB_ce302d4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302dc:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30350,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30360,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302fa:
    sts.l PR,@-r15
    add 0xFC,r15
    bsr FUN_ce30324
    mov.l r4,@r15
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30312
    bsr FUN_ce3037e
    mov.l @r15,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3031a

LAB_ce30312:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce3031a:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30324:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3036c,pc),r5
    mov.w @(DAT_ce30352,pc),r6
    mov.l @(PTR_ce30358,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30344
    mov.w @(DAT_ce3034e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30370

LAB_ce30344:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3034c:
    #data 0x038c
DAT_ce3034e:
    #data 0x040c
DAT_ce30350:
    #data 0x01e9
DAT_ce30352:
    #data 0x0384
    #align4

PTR_ce30354:
    #data DAT_ce332a0
PTR_ce30358:
    #data loc_8c054e58
PTR_ce3035c:
    #data loc_8c055c3a
PTR_ce30360:
    #data loc_8c0530d8
PTR_ce30364:
    #data loc_8c054da0
PTR_ce30368:
    #data loc_8c054d1c
PTR_ce3036c:
    #data DAT_ce33290

;=============================================

LAB_ce30370:
    mov.w @(DAT_ce30468,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3037e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30480,pc),r5
    mov.w @(DAT_ce3046a,pc),r6
    mov.l @(PTR_ce30484,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3039e
    mov.w @(DAT_ce3046c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303a6

LAB_ce3039e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303a6:
    mov.w @(DAT_ce30468,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce303b4:
    mov.w @(DAT_ce3046e,pc),r5
    add r4,r5
    mov.b @(0x1,r5),r0
    tst r0,r0
    bt LAB_ce3040e
    mov.w @(DAT_ce30470,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x15,r0
    bf LAB_ce30404
    mov.w @(DAT_ce30472,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30404
    mov.w @(DAT_ce30474,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x16,r0
    bf LAB_ce30404
    mov.w @(DAT_ce30476,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce30404
    mov.b @(0x1,r5),r0
    tst r0,r0
    bt LAB_ce30404
    mov.l @(PTR_ce30488,pc),r3
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x01,r0
    bt LAB_ce303fe
    mov.l @(PTR_ce3048c,pc),r1
    mov 0x00,r6
    mov 0x01,r7
    jmp @r1
    mov r6,r5

LAB_ce303fe:
    mov.l @(PTR_ce30490,pc),r2
    jmp @r2
    mov 0x01,r5

LAB_ce30404:
    mov.l @(PTR_ce30490,pc),r3
    mov 0x00,r0
    mov.b r0,@(0x1,r5)
    jmp @r3
    mov r0,r5

LAB_ce3040e:
    rts
    nop

LAB_ce30412:
    mov.w @(DAT_ce30478,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30494,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30426:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30498,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3047a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30450
    mov.w @(DAT_ce3047c,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce30448
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3049c
    mov.l @r15+,r14

LAB_ce30448:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30532
    mov.l @r15+,r14

LAB_ce30450:
    mov.w @(DAT_ce3047c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30460
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce305ea
    mov.l @r15+,r14

LAB_ce30460:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30680
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30468:
    #data 0x0258
DAT_ce3046a:
    #data 0x038c
DAT_ce3046c:
    #data 0x040c
DAT_ce3046e:
    #data 0x02a4
DAT_ce30470:
    #data 0x01d0
DAT_ce30472:
    #data 0x01e9
DAT_ce30474:
    #data 0x0159
DAT_ce30476:
    #data 0x0158
DAT_ce30478:
    #data 0x01ff
DAT_ce3047a:
    #data 0x01fe
DAT_ce3047c:
    #data 0x01f9
    #align4

PTR_ce30480:
    #data DAT_ce332a0
PTR_ce30484:
    #data loc_8c054e58
PTR_ce30488:
    #data loc_8c26823c
PTR_ce3048c:
    #data loc_8c03544c
PTR_ce30490:
    #data loc_8c035162
PTR_ce30494:
    #data PTR_ce333b0
PTR_ce30498:
    #data loc_8c052b4c

;=============================================

LAB_ce3049c:
    mov.w @(DAT_ce3057a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce304be
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce304d0
    cmp/eq 0x02,r0
    bt LAB_ce304e4
    bra LAB_ce304f6
    nop

LAB_ce304be:
    mov.l @(PTR_ce30584,pc),r3
    mov r4,r5
    mov.w @(DAT_ce3057c,pc),r0
    mov 0x14,r12
    mov r4,r13
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3057e,pc),r0
    bra LAB_ce304f6
    mov.b r13,@(r0,r14)

LAB_ce304d0:
    mov.w @(DAT_ce3057c,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30588,pc),r2
    mov r6,r5
    mov r6,r13
    mov 0x15,r12
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3057e,pc),r0
    bra LAB_ce304f6
    mov.b r13,@(r0,r14)

LAB_ce304e4:
    mov.l @(PTR_ce3058c,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce3057c,pc),r0
    mov r6,r13
    mov r6,r5
    mov 0x16,r12
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3057e,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce304f6:
    mov.w @(DAT_ce30580,pc),r0
    mov.l @(PTR_ce30590,pc),r3
    mov.b r5,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r12,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30594,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce30598,pc),r3
    mov r14,r4
    mov 0x07,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30532:
    mov.w @(DAT_ce3057a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30554
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce30566
    cmp/eq 0x02,r0
    bt LAB_ce3059c
    bra LAB_ce305ae
    nop

LAB_ce30554:
    mov.l @(PTR_ce30584,pc),r3
    mov 0x06,r4
    mov.w @(DAT_ce3057c,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3057e,pc),r0
    bra LAB_ce305ae
    mov.b r12,@(r0,r14)

LAB_ce30566:
    mov.w @(DAT_ce3057c,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30588,pc),r2
    mov 0x07,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3057e,pc),r0
    bra LAB_ce305ae
    mov.b r12,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3057a:
    #data 0x01e8
DAT_ce3057c:
    #data 0x03f4
DAT_ce3057e:
    #data 0x01a7
DAT_ce30580:
    #data 0x01a1
    #align4

PTR_ce30584:
    #data DAT_ce33260
PTR_ce30588:
    #data DAT_ce33264
PTR_ce3058c:
    #data DAT_ce33268
PTR_ce30590:
    #data loc_8c2896b0
PTR_ce30594:
    #data loc_8c04223a
PTR_ce30598:
    #data loc_8c034e8c

;=============================================

LAB_ce3059c:
    mov.l @(PTR_ce306bc,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce306b4,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x08,r4
    mov.w @(DAT_ce306b6,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce305ae:
    mov.w @(DAT_ce306b8,pc),r0
    mov.l @(PTR_ce306c0,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l r5,@(r0,r14)
    mov r13,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce306c4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce306c8,pc),r3
    mov 0x09,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce305ea:
    mov.w @(DAT_ce306ba,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3060c
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce3061e
    cmp/eq 0x02,r0
    bt LAB_ce30632
    bra LAB_ce30644
    nop

LAB_ce3060c:
    mov.l @(PTR_ce306cc,pc),r3
    mov 0x03,r4
    mov.w @(DAT_ce306b4,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306b6,pc),r0
    bra LAB_ce30644
    mov.b r12,@(r0,r14)

LAB_ce3061e:
    mov.w @(DAT_ce306b4,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce306d0,pc),r2
    mov 0x04,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce306b6,pc),r0
    bra LAB_ce30644
    mov.b r12,@(r0,r14)

LAB_ce30632:
    mov.l @(PTR_ce306d4,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce306b4,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x05,r4
    mov.w @(DAT_ce306b6,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce30644:
    mov.w @(DAT_ce306b8,pc),r0
    mov.l @(PTR_ce306c0,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l r5,@(r0,r14)
    mov r13,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce306c4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce306c8,pc),r3
    mov 0x08,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30680:
    mov.w @(DAT_ce306ba,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce306a2
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce306d8
    cmp/eq 0x02,r0
    bt LAB_ce306ec
    bra LAB_ce306fe
    nop

LAB_ce306a2:
    mov.l @(PTR_ce306cc,pc),r3
    mov 0x09,r4
    mov.w @(DAT_ce306b4,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306b6,pc),r0
    bra LAB_ce306fe
    mov.b r12,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306b4:
    #data 0x03f4
DAT_ce306b6:
    #data 0x01a7
DAT_ce306b8:
    #data 0x01a1
DAT_ce306ba:
    #data 0x01e8
    #align4

PTR_ce306bc:
    #data DAT_ce33268
PTR_ce306c0:
    #data loc_8c2896b0
PTR_ce306c4:
    #data loc_8c04223a
PTR_ce306c8:
    #data loc_8c034e8c
PTR_ce306cc:
    #data DAT_ce3326c
PTR_ce306d0:
    #data DAT_ce33270
PTR_ce306d4:
    #data DAT_ce33274

;=============================================

LAB_ce306d8:
    mov.w @(DAT_ce307ca,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce307d8,pc),r2
    mov 0x0A,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307cc,pc),r0
    bra LAB_ce306fe
    mov.b r12,@(r0,r14)

LAB_ce306ec:
    mov.l @(PTR_ce307dc,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce307ca,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x0B,r4
    mov.w @(DAT_ce307cc,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce306fe:
    mov.w @(DAT_ce307ce,pc),r0
    mov.l @(PTR_ce307e0,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l r5,@(r0,r14)
    mov r13,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce307e4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce307e8,pc),r3
    mov 0x0A,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3073a:
    mov.w @(DAT_ce307d0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3074a
    mov.w @(DAT_ce307d2,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce3075a

LAB_ce3074a:
    mov.w @(DAT_ce307d0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3075e
    mov.w @(DAT_ce307d2,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce3075e

LAB_ce3075a:
    bra LAB_ce30762
    nop

LAB_ce3075e:
    rts
    nop

LAB_ce30762:
    mov.w @(DAT_ce307d0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3076e
    bra LAB_ce30870
    nop

LAB_ce3076e:
    mov.w @(DAT_ce307d4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30790
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce307b2
    cmp/eq 0x02,r0
    bt LAB_ce30800
    bra LAB_ce30822
    nop

LAB_ce30790:
    mov.w @(DAT_ce307d6,pc),r0
    mov r5,r12
    mov 0x0C,r4
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce307a6
    mov 0x14,r13
    mov.w @(DAT_ce307ca,pc),r0
    mov.l @(PTR_ce307ec,pc),r3
    bra LAB_ce307ac
    mov.l r3,@(r0,r14)

LAB_ce307a6:
    mov.w @(DAT_ce307ca,pc),r0
    mov.l @(PTR_ce307f0,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce307ac:
    mov.w @(DAT_ce307cc,pc),r0
    bra LAB_ce30822
    mov.b r5,@(r0,r14)

LAB_ce307b2:
    mov.w @(DAT_ce307d6,pc),r0
    mov 0x01,r6
    mov 0x0D,r4
    mov r6,r12
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce307f8
    mov 0x15,r13
    mov.w @(DAT_ce307ca,pc),r0
    mov.l @(PTR_ce307f4,pc),r3
    bra LAB_ce3081e
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307ca:
    #data 0x03f4
DAT_ce307cc:
    #data 0x01a7
DAT_ce307ce:
    #data 0x01a1
DAT_ce307d0:
    #data 0x01fe
DAT_ce307d2:
    #data 0x01d6
DAT_ce307d4:
    #data 0x01e8
DAT_ce307d6:
    #data 0x01fc
    #align4

PTR_ce307d8:
    #data DAT_ce33270
PTR_ce307dc:
    #data DAT_ce33274
PTR_ce307e0:
    #data loc_8c2896b0
PTR_ce307e4:
    #data loc_8c04223a
PTR_ce307e8:
    #data loc_8c034e8c
PTR_ce307ec:
    #data DAT_ce33260
PTR_ce307f0:
    #data DAT_ce33278
PTR_ce307f4:
    #data DAT_ce33264

;=============================================

LAB_ce307f8:
    mov.w @(DAT_ce308ec,pc),r0
    mov.l @(PTR_ce308f8,pc),r1
    bra LAB_ce3081e
    mov.l r1,@(r0,r14)

LAB_ce30800:
    mov.w @(DAT_ce308ee,pc),r0
    mov 0x02,r6
    mov 0x0E,r4
    mov r6,r12
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce30818
    mov 0x16,r13
    mov.w @(DAT_ce308ec,pc),r0
    mov.l @(PTR_ce308fc,pc),r3
    bra LAB_ce3081e
    mov.l r3,@(r0,r14)

LAB_ce30818:
    mov.w @(DAT_ce308ec,pc),r0
    mov.l @(PTR_ce30900,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce3081e:
    mov.w @(DAT_ce308f0,pc),r0
    mov.b r6,@(r0,r14)

LAB_ce30822:
    mov.w @(DAT_ce308f2,pc),r0
    mov.l @(PTR_ce30904,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l r5,@(r0,r14)
    mov r13,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30908,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3090c,pc),r3
    mov 0x0B,r5
    mov r12,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce308f4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30866
    mov.w @(DAT_ce308f4,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30866:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30870:
    mov.w @(DAT_ce308f6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30892
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce308b4
    cmp/eq 0x02,r0
    bt LAB_ce308d4
    bra LAB_ce3092e
    nop

LAB_ce30892:
    mov.w @(DAT_ce308ee,pc),r0
    mov r5,r12
    mov 0x0F,r4
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce308a8
    mov 0x14,r13
    mov.w @(DAT_ce308ec,pc),r0
    mov.l @(PTR_ce30910,pc),r3
    bra LAB_ce308ae
    mov.l r3,@(r0,r14)

LAB_ce308a8:
    mov.w @(DAT_ce308ec,pc),r0
    mov.l @(PTR_ce30914,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce308ae:
    mov.w @(DAT_ce308f0,pc),r0
    bra LAB_ce3092e
    mov.b r5,@(r0,r14)

LAB_ce308b4:
    mov.w @(DAT_ce308ee,pc),r0
    mov 0x01,r6
    mov 0x10,r4
    mov r6,r12
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce308cc
    mov 0x15,r13
    mov.w @(DAT_ce308ec,pc),r0
    mov.l @(PTR_ce30918,pc),r3
    bra LAB_ce3092a
    mov.l r3,@(r0,r14)

LAB_ce308cc:
    mov.w @(DAT_ce308ec,pc),r0
    mov.l @(PTR_ce3091c,pc),r1
    bra LAB_ce3092a
    mov.l r1,@(r0,r14)

LAB_ce308d4:
    mov.w @(DAT_ce308ee,pc),r0
    mov 0x02,r6
    mov 0x11,r4
    mov r6,r12
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce30924
    mov 0x16,r13
    mov.w @(DAT_ce308ec,pc),r0
    mov.l @(PTR_ce30920,pc),r3
    bra LAB_ce3092a
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308ec:
    #data 0x03f4
DAT_ce308ee:
    #data 0x01fc
DAT_ce308f0:
    #data 0x01a7
DAT_ce308f2:
    #data 0x01a1
DAT_ce308f4:
    #data 0x01d6
DAT_ce308f6:
    #data 0x01e8
    #align4

PTR_ce308f8:
    #data DAT_ce3327c
PTR_ce308fc:
    #data DAT_ce33268
PTR_ce30900:
    #data DAT_ce33280
PTR_ce30904:
    #data loc_8c2896b0
PTR_ce30908:
    #data loc_8c04223a
PTR_ce3090c:
    #data loc_8c034e8c
PTR_ce30910:
    #data DAT_ce3326c
PTR_ce30914:
    #data DAT_ce33284
PTR_ce30918:
    #data DAT_ce33270
PTR_ce3091c:
    #data DAT_ce33288
PTR_ce30920:
    #data DAT_ce33274

;=============================================

LAB_ce30924:
    mov.w @(DAT_ce30a4c,pc),r0
    mov.l @(PTR_ce30a58,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce3092a:
    mov.w @(DAT_ce30a4e,pc),r0
    mov.b r6,@(r0,r14)

LAB_ce3092e:
    mov.w @(DAT_ce30a50,pc),r0
    mov.l @(PTR_ce30a5c,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l r5,@(r0,r14)
    mov r13,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30a60,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce30a64,pc),r3
    mov 0x0C,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3096a:
    mov.w @(DAT_ce30a52,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30a68,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3097e:
    sts.l PR,@-r15
    mov.l @(PTR_ce30a6c,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce3098c:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30a70,pc),r3
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
    mov.w @(DAT_ce30a54,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce309f0
    mov.w @(DAT_ce30a56,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce309e8
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30a08
    mov.l @r15+,r14

LAB_ce309e8:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30a2a
    mov.l @r15+,r14

LAB_ce309f0:
    mov.w @(DAT_ce30a56,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a00
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30a7c
    mov.l @r15+,r14

LAB_ce30a00:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30af0
    mov.l @r15+,r14

LAB_ce30a08:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30a74,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30a22
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30a78,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30a22:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30a2a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30a74,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30a44
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30a78,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30a44:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a4c:
    #data 0x03f4
DAT_ce30a4e:
    #data 0x01a7
DAT_ce30a50:
    #data 0x01a1
DAT_ce30a52:
    #data 0x01ff
DAT_ce30a54:
    #data 0x01fe
DAT_ce30a56:
    #data 0x01f9
    #align4

PTR_ce30a58:
    #data DAT_ce3328c
PTR_ce30a5c:
    #data loc_8c2896b0
PTR_ce30a60:
    #data loc_8c04223a
PTR_ce30a64:
    #data loc_8c034e8c
PTR_ce30a68:
    #data PTR_ce333c0
PTR_ce30a6c:
    #data loc_8c0511e2
PTR_ce30a70:
    #data loc_8c052c84
PTR_ce30a74:
    #data loc_8c034dee
PTR_ce30a78:
    #data loc_8c051648

;=============================================

LAB_ce30a7c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30b70,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30a96
    lds.l @r15+,PR
    mov.l @(PTR_ce30b74,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30a96:
    mov.w @(DAT_ce30b68,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30aea
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce30aae
    cmp/eq 0x02,r0
    bt LAB_ce30abc
    bra LAB_ce30aea
    nop

LAB_ce30aae:
    mov.w @(DAT_ce30b6a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30aea
    mov.b r4,@(r0,r14)
    bra LAB_ce30ac8
    mov 0x19,r3

LAB_ce30abc:
    mov.w @(DAT_ce30b6a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30aea
    mov 0x1A,r3
    mov.b r4,@(r0,r14)

LAB_ce30ac8:
    add 0x56,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30b6c,pc),r0
    mov.l @(PTR_ce30b78,pc),r3
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

LAB_ce30aea:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30af0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30b70,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30b0a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30b74,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30b0a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30b12:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30b7c,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30b80,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30b28:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30b84,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30b88,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30b6e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b48
    bsr FUN_ce30b94
    mov r14,r4
    bra LAB_ce30b4c
    nop

LAB_ce30b48:
    bsr FUN_ce30bf8
    mov r14,r4

LAB_ce30b4c:
    mov.l @(PTR_ce30b8c,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30b62
    lds.l @r15+,PR
    mov.l @(PTR_ce30b90,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30b62:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b68:
    #data 0x01e8
DAT_ce30b6a:
    #data 0x014b
DAT_ce30b6c:
    #data 0x01ac
DAT_ce30b6e:
    #data 0x01fe
    #align4

PTR_ce30b70:
    #data loc_8c034dee
PTR_ce30b74:
    #data loc_8c051648
PTR_ce30b78:
    #data loc_8c2896b0
PTR_ce30b7c:
    #data loc_8c050084
PTR_ce30b80:
    #data loc_8c04ff88
PTR_ce30b84:
    #data loc_8c04fea8
PTR_ce30b88:
    #data loc_8c050048
PTR_ce30b8c:
    #data loc_8c052ce2
PTR_ce30b90:
    #data loc_8c052dac

;=============================================

FUN_ce30b94:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30c60,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30bae
    lds.l @r15+,PR
    mov.l @(PTR_ce30c64,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30bae:
    mov.w @(DAT_ce30c5c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30bf2
    cmp/eq 0x01,r0
    bt LAB_ce30bf2
    cmp/eq 0x02,r0
    bf LAB_ce30bf2
    mov.w @(DAT_ce30c5e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30bf2
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30c68,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce30c5e,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30bf2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30bf8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30c60,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c12
    lds.l @r15+,PR
    mov.l @(PTR_ce30c64,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c12:
    mov.w @(DAT_ce30c5c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30c56
    cmp/eq 0x01,r0
    bt LAB_ce30c56
    cmp/eq 0x02,r0
    bf LAB_ce30c56
    mov.w @(DAT_ce30c5e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30c56
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30c68,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce30c5e,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30c56:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c5c:
    #data 0x01e8
DAT_ce30c5e:
    #data 0x014b
    #align4

PTR_ce30c60:
    #data loc_8c034dee
PTR_ce30c64:
    #data loc_8c05176e
PTR_ce30c68:
    #data loc_8c2896b0

;=============================================

LAB_ce30c6c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30cc8
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov 0x12,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30d98,pc),r0
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30da0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30da4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30da8,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30dac,pc),r2
    mov 0x15,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30db0,pc),r3
    mov 0x14,r5
    mov 0x04,r6
    jsr @r3
    mov r14,r4

LAB_ce30cc8:
    mov.w @(DAT_ce30d9a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30cd8
    mov.l @(PTR_ce30db4,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30cd8:
    mov 0x5C,r1
    mov.l @(PTR_ce30db8,pc),r3
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
    mov.l @(PTR_ce30dbc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d2c
    lds.l @r15+,PR
    mov.l @(PTR_ce30dc0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30d2c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d32:
    mov r4,r3
    mov.l @(PTR_ce30dc4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30d44:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30dbc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30d9c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30d92
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce30dc8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30dcc,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x18,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce30d9e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce30d8a
    fldi0 fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30d8a:
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce30d92:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d98:
    #data 0x01f9
DAT_ce30d9a:
    #data 0x01ff
DAT_ce30d9c:
    #data 0x0141
DAT_ce30d9e:
    #data 0x01d2
    #align4

PTR_ce30da0:
    #data loc_8c2896b0
PTR_ce30da4:
    #data loc_8c052b4c
PTR_ce30da8:
    #data loc_8c056de4
PTR_ce30dac:
    #data loc_8c04223a
PTR_ce30db0:
    #data loc_8c034e8c
PTR_ce30db4:
    #data loc_8c0511e2
PTR_ce30db8:
    #data loc_8c052c84
PTR_ce30dbc:
    #data loc_8c034dee
PTR_ce30dc0:
    #data loc_8c051648
PTR_ce30dc4:
    #data PTR_ce333d0
DAT_ce30dc8:
    #data 0xc17d5555
DAT_ce30dcc:
    #data 0x3ea00000

;=============================================

LAB_ce30dd0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30f08,pc),r3
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
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce30e3a
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce30f0c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e3a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e40:
    mov r4,r3
    mov.l @(PTR_ce30f10,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30e52:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x18,r0
    mov.w r0,@(0x1c,r4)
    mova @(DAT_ce30f14,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce30f18,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce30f06,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce30e86
    fldi0 fr4
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce30e86:
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)

LAB_ce30e8e:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce30f08,pc),r3
    add r14,r1
    mov 0x34,r0
    sts.l PR,@-r15
    fmov.s @r1,fr3
    mov 0x68,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
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
    bf LAB_ce30ed6
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce30f1c,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30ed6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30edc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30f08,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f00
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    mov.l @(PTR_ce30f0c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f00:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f06:
    #data 0x01d2
    #align4

PTR_ce30f08:
    #data loc_8c034dee
PTR_ce30f0c:
    #data loc_8c051648
PTR_ce30f10:
    #data PTR_ce333d8
DAT_ce30f14:
    #data 0x417d5555
DAT_ce30f18:
    #data 0xbecdb6db
PTR_ce30f1c:
    #data loc_8c034e8c

;=============================================

LAB_ce30f20:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30f42
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x12,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r6
    mov.w @(DAT_ce31018,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31020,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30f42:
    mov.l @(PTR_ce31024,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f62
    mov.b @(0x5,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce31020,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x5,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f62:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f68:
    mov r4,r3
    mov.l @(PTR_ce31028,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30f7a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30fa4
    cmp/eq 0x02,r0
    bt LAB_ce30fa4
    cmp/eq 0x01,r0
    bt LAB_ce30fb0
    cmp/eq 0x03,r0
    bt LAB_ce30fb0
    cmp/eq 0x04,r0
    bt LAB_ce30fb0
    bra LAB_ce30fbe
    nop

LAB_ce30fa4:
    mov.l @(PTR_ce3102c,pc),r3
    jsr @r3
    nop
    mov 0x01,r6
    bra LAB_ce30fb2
    and r0,r6

LAB_ce30fb0:
    mov 0x02,r6

LAB_ce30fb2:
    lds.l @r15+,PR
    mov.l @(PTR_ce31020,pc),r2
    mov 0x13,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30fbe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fc4:
    mov.w @(DAT_ce3101a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x16,r0
    bf LAB_ce30fe8
    mov.l @(PTR_ce31030,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce30fe8
    lds.l @r15+,PR
    mov.l @(PTR_ce31034,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30fe8:
    lds.l @r15+,PR
    mov.l @(PTR_ce31024,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30ff2:
    mov.w @(DAT_ce3101c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31038,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31006:
    mov r4,r3
    mov.l @(PTR_ce3103c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31018:
    #data 0x012c
DAT_ce3101a:
    #data 0x01d0
DAT_ce3101c:
    #data 0x01e9
    #align4

PTR_ce31020:
    #data loc_8c034e8c
PTR_ce31024:
    #data loc_8c034dee
PTR_ce31028:
    #data PTR_ce333e4
PTR_ce3102c:
    #data loc_8c03319e
PTR_ce31030:
    #data loc_8c046c8a
PTR_ce31034:
    #data loc_8c051648
PTR_ce31038:
    #data PTR_ce333ec
PTR_ce3103c:
    #data PTR_ce3340c

;=============================================

LAB_ce31040:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3118c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
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
    mov.l @(PTR_ce31190,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3117e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce3109c
    mov 0x00,r13
    mov.w @(DAT_ce31180,pc),r0
    mov 0x28,r12
    mov.l @(PTR_ce31194,pc),r3
    mov r13,r11
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3117e,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce310a0
    nop

LAB_ce3109c:
    mov 0x2D,r12
    mov 0x02,r11

LAB_ce310a0:
    mov.w @(DAT_ce31182,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31198,pc),r3
    mov r14,r4
    mov.b r12,@(r0,r14)
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
    mov.w @(DAT_ce31184,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce3119c,pc),r2
    add r11,r6
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce310da:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce311a0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31186,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce311c0
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3117e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31106
    mov.l @(PTR_ce311a4,pc),r2
    mov 0x01,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4

LAB_ce31106:
    mova @(DAT_ce311a8,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31188,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31116
    mova @(DAT_ce311ac,pc),r0
    fmov.s @r0,fr4

LAB_ce31116:
    mov 0x34,r0
    mov.l @(PTR_ce311b0,pc),r4
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3117e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3112c
    add 0x10,r4

LAB_ce3112c:
    mov.w @(DAT_ce31184,pc),r0
    mov.b @(r0,r14),r2
    mov 0x5C,r0
    extu.b r2,r2
    shll r2
    shll2 r2
    add r2,r4
    fmov.s @r4+,fr3
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov.s @r4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce311b4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31188,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31164
    mov 0x00,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31164:
    mov.l @(PTR_ce311a4,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce311b8,pc),r2
    mov 0x14,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce311bc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3117e:
    #data 0x01f9
DAT_ce31180:
    #data 0x041c
DAT_ce31182:
    #data 0x01a1
DAT_ce31184:
    #data 0x01a3
DAT_ce31186:
    #data 0x0141
DAT_ce31188:
    #data 0x01d2
    #align4

PTR_ce3118c:
    #data loc_8c05218a
PTR_ce31190:
    #data loc_8c056de4
PTR_ce31194:
    #data loc_8c05115a
PTR_ce31198:
    #data loc_8c2896b0
PTR_ce3119c:
    #data loc_8c034e8c
PTR_ce311a0:
    #data loc_8c034dee
PTR_ce311a4:
    #data loc_8c0c5cac
DAT_ce311a8:
    #data 0xc2555555
DAT_ce311ac:
    #data 0x42555555
PTR_ce311b0:
    #data DAT_ce332e4
DAT_ce311b4:
    #data 0xbfcdb6db
PTR_ce311b8:
    #data loc_8c042008
PTR_ce311bc:
    #data loc_8c053082

;=============================================

LAB_ce311c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311c6:
    mov.w @(DAT_ce31300,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31310,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31302,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce311f2
    mov 0x00,r4
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt LAB_ce311f2
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31304,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce311f2:
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce31228
    mov.w @(DAT_ce31304,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31228
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31314,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31304,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce31228:
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
    mov.w @(DAT_ce31306,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce312aa
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31306,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31308,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFC,r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31318,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3131c,pc),r2
    mov r14,r4
    mov 0x04,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce312aa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312b0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31310,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312ca
    lds.l @r15+,PR
    mov.l @(PTR_ce31320,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce312ca:
    mov.w @(DAT_ce3130a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce312e4
    mov 0x00,r3
    mov r14,r4
    mov r3,r6
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31324,pc),r3
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce312e4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312ea:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31328,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce3130c,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31300:
    #data 0x01f5
DAT_ce31302:
    #data 0x019e
DAT_ce31304:
    #data 0x014b
DAT_ce31306:
    #data 0x041c
DAT_ce31308:
    #data 0x01f9
DAT_ce3130a:
    #data 0x0141
DAT_ce3130c:
    #data 0x02a4
    #align4

PTR_ce31310:
    #data loc_8c034dee
PTR_ce31314:
    #data loc_8c2896b0
PTR_ce31318:
    #data loc_8c0511b4
PTR_ce3131c:
    #data loc_8c034e8c
PTR_ce31320:
    #data loc_8c051648
PTR_ce31324:
    #data loc_8c0c5cac
PTR_ce31328:
    #data PTR_ce3341c

;=============================================

LAB_ce3132c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31464,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31456,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31458,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.b r13,@r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31468,pc),r2
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
    mov 0x41,r3
    mov.w @(DAT_ce3145a,pc),r0
    mov r14,r4
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3146c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3145c,pc),r0
    mov.b @(r0,r14),r6
    add 0x0C,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce31470,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce313a0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31474,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3145e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce313dc
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3145e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31478,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3147c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bf LAB_ce313dc
    mov.l @r15,r2
    mov 0xFF,r3
    mov.b r3,@r2

LAB_ce313dc:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313e4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31474,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.l @r15,r0
    mov.b @r0,r0
    cmp/eq 0xFF,r0
    bf LAB_ce31416
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3145c,pc),r0
    mov.b @(r0,r14),r6
    add 0x0E,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31470,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31416:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3141e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31474,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31438
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31480,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31438:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31440:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31484,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31460,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31456:
    #data 0x01f9
DAT_ce31458:
    #data 0x041c
DAT_ce3145a:
    #data 0x01a1
DAT_ce3145c:
    #data 0x01a3
DAT_ce3145e:
    #data 0x0141
DAT_ce31460:
    #data 0x02a4
    #align4

PTR_ce31464:
    #data loc_8c05218a
PTR_ce31468:
    #data loc_8c05115a
PTR_ce3146c:
    #data loc_8c2896b0
PTR_ce31470:
    #data loc_8c034e8c
PTR_ce31474:
    #data loc_8c034dee
PTR_ce31478:
    #data loc_8c056de4
PTR_ce3147c:
    #data loc_8c0c6024
PTR_ce31480:
    #data loc_8c051648
PTR_ce31484:
    #data PTR_ce3342c

;=============================================

LAB_ce31488:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31590,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31592,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31594,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce314bc
    mov 0x22,r0
    bra LAB_ce314be
    mov 0x1C,r3

LAB_ce314bc:
    mov 0x18,r3

LAB_ce314be:
    mov.b r3,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x6,r5)
    mov 0x22,r0
    mov.b @(r0,r14),r3
    mov 0x18,r0
    extu.b r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmov fr3,@(r0,r5)
    mov 0x22,r0
    mov.b @(r0,r14),r3
    mov 0x14,r0
    extu.b r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmov fr3,@(r0,r5)
    mov 0x1C,r0
    fldi0 fr3
    fmov fr3,@(r0,r5)
    mov.w @(DAT_ce31594,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x32,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.l @(PTR_ce3159c,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.l @r3,r2
    add 0x7C,r2
    mov.b @(0x2,r14),r0
    extu.b r0,r0
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce315a0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce315a4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31594,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov 0x15,r5
    mov.l @(PTR_ce315a8,pc),r3
    add 0x05,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce3152e:
    mov r4,r3
    mov.l @(PTR_ce315ac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31540:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce315b0,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31596,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31588
    mov.b @(0x7,r14),r0
    mov 0x01,r3
    mov 0x10,r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x05,r5
    mov.w @(DAT_ce31598,pc),r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce3159a,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.l @(PTR_ce315b4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce315b8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra FUN_ce3187e
    mov.l @r15+,r14

LAB_ce31588:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31590:
    #data 0x01f9
DAT_ce31592:
    #data 0x041c
DAT_ce31594:
    #data 0x01a3
DAT_ce31596:
    #data 0x0140
DAT_ce31598:
    #data 0x0168
DAT_ce3159a:
    #data 0x027b
    #align4

PTR_ce3159c:
    #data loc_8c2896b0
PTR_ce315a0:
    #data loc_8c05218a
PTR_ce315a4:
    #data loc_8c05115a
PTR_ce315a8:
    #data loc_8c034e8c
PTR_ce315ac:
    #data PTR_ce33438
PTR_ce315b0:
    #data loc_8c034dee
PTR_ce315b4:
    #data loc_8c056de4
PTR_ce315b8:
    #data loc_8c071a94

;=============================================

LAB_ce315bc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31700,pc),r3
    jsr @r3
    mov r5,r13
    mov r13,r5
    bsr FUN_ce3187e
    mov r14,r4
    mov.b @(0x6,r13),r0
    cmp/pl r0
    bf/s LAB_ce3163c
    mov 0x00,r4
    mov.b @(0x7,r14),r0
    mov 0x01,r3
    mov.w @(DAT_ce316f2,pc),r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce316f0,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b r2,@(r0,r14)
    add 0xFB,r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x02,r3
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce316f4,pc),r0
    mov.l @(r0,r14),r4
    add 0x2C,r0
    mov.b r3,@(r0,r4)
    add 0x03,r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31704,pc),r3
    mov.b r2,@(r0,r4)
    jsr @r3
    mov 0x23,r5
    mov.l @(PTR_ce31708,pc),r2
    mov 0x14,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3170c,pc),r3
    mov 0x00,r5
    mov 0x05,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31710,pc),r2
    mov 0x15,r5
    mov 0x09,r6
    jsr @r2
    mov r14,r4
    mov r13,r5
    bsr FUN_ce3187e
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    bra FUN_ce318ba
    mov.l @r15+,r14

LAB_ce3163c:
    cmp/pz r0
    bf LAB_ce3164c
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3166c

LAB_ce3164c:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    mov.w @(DAT_ce316f6,pc),r0
    mov r14,r4
    mov.l @(PTR_ce31710,pc),r3
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    add 0x07,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce3166c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31674:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce316f0,pc),r0
    mov 0x01,r12
    mov r4,r14
    mov 0x03,r3
    mov.b r12,@(r0,r14)
    add 0x08,r0
    mov.b r3,@(r0,r14)
    add 0xD6,r0
    mov.l @(r0,r14),r13
    mov r5,r11
    mov r11,r5
    bsr FUN_ce318ba
    mov r14,r4
    mov.w @(DAT_ce316f8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31724
    mov 0x00,r10
    mov.b r10,@(r0,r14)
    add 0x74,r0
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov 0x35,r3
    mov.b r3,@(r0,r13)
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt/s LAB_ce316c0
    mov r14,r4
    mov.w @(DAT_ce316fa,pc),r0
    mov 0x36,r2
    mov.b r2,@(r0,r13)

LAB_ce316c0:
    mov.l @(PTR_ce31714,pc),r3
    jsr @r3
    nop
    mov 0x34,r0
    mov.l @(PTR_ce31718,pc),r3
    fmov.s @(r0,r13),fr3
    mov.w @(DAT_ce316fc,pc),r0
    fmov.s fr3,@r15
    fmov.s @(r0,r13),fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov.b @(0x2,r13),r0
    extu.b r0,r5
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce3171c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31720,pc),r4
    mov r12,r0
    nop
    mov.b r0,@(0x5,r4)
    bra LAB_ce317ac
    mov.b r0,@(0x6,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce316f0:
    #data 0x01ea
DAT_ce316f2:
    #data 0x00c3
DAT_ce316f4:
    #data 0x01c8
DAT_ce316f6:
    #data 0x01a3
DAT_ce316f8:
    #data 0x0140
DAT_ce316fa:
    #data 0x01a1
DAT_ce316fc:
    #data 0x041c
    #align4

PTR_ce31700:
    #data loc_8c034dee
PTR_ce31704:
    #data loc_8c050552
PTR_ce31708:
    #data loc_8c05064e
PTR_ce3170c:
    #data loc_8c02fec4
PTR_ce31710:
    #data loc_8c034e8c
PTR_ce31714:
    #data loc_8c05933c
PTR_ce31718:
    #data loc_8c100672
PTR_ce3171c:
    #data loc_8c0423fc
PTR_ce31720:
    #data loc_8c26a518

;=============================================

LAB_ce31724:
    mov.l @(PTR_ce31838,pc),r3
    jsr @r3
    mov r13,r4
    tst r0,r0
    bt LAB_ce3173c
    mov r10,r0
    nop
    mov.l @(PTR_ce3183c,pc),r3
    mov 0x23,r5
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r13,r4

LAB_ce3173c:
    mov.l @(PTR_ce31840,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce3175a
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce3175a
    mov.w @(0x1c,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce31844,pc),r3
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4

LAB_ce3175a:
    mov.l @(PTR_ce31848,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce317a6
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt LAB_ce31772
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce31790

LAB_ce31772:
    mov.b @(0x7,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce3184c,pc),r3
    mov 0x0B,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.b @(0x6,r13),r0
    add 0x01,r0
    mov.b r0,@(0x6,r13)
    mov 0xFF,r0
    mov.b r0,@(0x6,r11)
    jsr @r3
    mov r14,r4
    bra LAB_ce317ac
    nop

LAB_ce31790:
    mov r10,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov r12,r0
    nop
    mov.l @(PTR_ce3184c,pc),r3
    mov 0x15,r5
    mov.w r0,@(0x1e,r14)
    mov 0x09,r6
    jsr @r3
    mov r14,r4

LAB_ce317a6:
    mov r11,r5
    bsr FUN_ce3187e
    mov r14,r4

LAB_ce317ac:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce317bc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x01,r13
    mov.w @(DAT_ce31830,pc),r0
    sts.l PR,@-r15
    mov.b r13,@(r0,r14)
    bsr FUN_ce318ba
    mov r14,r4
    mov.l @(PTR_ce31848,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31832,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31828
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r5,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x02,r2
    mov.w @(DAT_ce31834,pc),r0
    mov.b r13,@(r0,r14)
    add 0xD6,r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r13,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    add 0x27,r0
    mov.b r2,@(r0,r4)
    add 0xA8,r0
    mov 0x23,r3
    mov.b r3,@(r0,r4)
    mov r5,r0
    nop
    mov.b r0,@(0x6,r4)
    mov.l @(PTR_ce31850,pc),r3
    mov.w @(DAT_ce31836,pc),r0
    jsr @r3
    mov.b r5,@(r0,r4)
    lds.l @r15+,PR
    mov.l @(PTR_ce31854,pc),r2
    mov r14,r4
    mov 0x00,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31828:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31830:
    #data 0x01ea
DAT_ce31832:
    #data 0x0141
DAT_ce31834:
    #data 0x01f2
DAT_ce31836:
    #data 0x01fd
    #align4

PTR_ce31838:
    #data loc_8c050610
PTR_ce3183c:
    #data loc_8c050552
PTR_ce31840:
    #data loc_8c050682
PTR_ce31844:
    #data loc_8c05064e
PTR_ce31848:
    #data loc_8c034dee
PTR_ce3184c:
    #data loc_8c034e8c
PTR_ce31850:
    #data loc_8c02fd26
PTR_ce31854:
    #data loc_8c0c7c10

;=============================================

LAB_ce31858:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31998,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31878
    mov.l @(PTR_ce3199c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce319a0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31878:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3187e:
    mov.w @(DAT_ce3198c,pc),r0
    mov.l @(PTR_ce319a4,pc),r2
    mov.b @(r0,r4),r6
    mova @(DAT_ce319a8,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce319ac,pc),r0
    shar r6
    fmov.s @r0,fr1
    shll r6
    mov.w @(DAT_ce3198e,pc),r0
    add r2,r6
    mov.w @r6+,r3
    lds r3,FPUL
    mov.w @r6,r3
    float FPUL,fr3
    lds r3,FPUL
    mov.b @(r0,r4),r3
    tst r3,r3
    fmov fr3,fr4
    float FPUL,fr3
    fmul fr2,fr4
    fmov fr3,fr5
    bt/s LAB_ce318b0
    fmul fr1,fr5
    fneg fr4

LAB_ce318b0:
    mov 0x0C,r0
    fmov fr4,@(r0,r5)
    mov 0x10,r0
    rts
    fmov fr5,@(r0,r5)

;=============================================

FUN_ce318ba:
    mov.w @(DAT_ce31990,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    and 0x7F,r0
    lds r0,FPUL
    mova @(DAT_ce319b0,pc),r0
    fmov.s @r0,fr4
    mov 0x14,r0
    float FPUL,fr3
    fmov fr3,fr5
    fmov.s @(r0,r5),fr3
    fcmp/eq fr5,fr3
    bt LAB_ce31920
    fmov.s @(r0,r5),fr3
    mov 0x18,r0
    fmov fr3,@(r0,r5)
    mov 0x14,r0
    fmov fr5,@(r0,r5)
    mov 0x18,r0
    fmov.s @(r0,r5),fr3
    mov 0x14,r0
    fmov.s @(r0,r5),fr2
    mov 0x1C,r0
    fsub fr3,fr2
    fmov fr2,@(r0,r5)
    mova @(DAT_ce319b4,pc),r0
    fmov.s @r0,fr3
    mov 0x1C,r0
    fmov.s @(r0,r5),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce318fe
    fmov.s @(r0,r5),fr2
    fsub fr4,fr2
    fmov fr2,@(r0,r5)

LAB_ce318fe:
    mova @(DAT_ce319b8,pc),r0
    fmov.s @r0,fr3
    mov 0x1C,r0
    fmov.s @(r0,r5),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31910
    fmov.s @(r0,r5),fr2
    fadd fr4,fr2
    fmov fr2,@(r0,r5)

LAB_ce31910:
    mov.w @(DAT_ce31992,pc),r3
    fmov.s @(r0,r5),fr2
    add r4,r3
    mov.b @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fdiv fr3,fr2
    fmov fr2,@(r0,r5)

LAB_ce31920:
    mov 0x18,r0
    fmov.s @(r0,r5),fr3
    mov 0x14,r0
    fmov.s @(r0,r5),fr2
    fcmp/eq fr3,fr2
    bf LAB_ce31932
    mov 0x1C,r0
    fldi0 fr3
    fmov fr3,@(r0,r5)

LAB_ce31932:
    mov 0x1C,r1
    add r5,r1
    mov 0x18,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r5),fr2
    fadd fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce3194c
    fmov fr2,@(r0,r5)
    fmov.s @(r0,r5),fr2
    fadd fr4,fr2
    fmov fr2,@(r0,r5)

LAB_ce3194c:
    fmov.s @(r0,r5),fr3
    fcmp/gt fr3,fr4
    bt LAB_ce31958
    fmov.s @(r0,r5),fr3
    fsub fr4,fr3
    fmov fr3,@(r0,r5)

LAB_ce31958:
    fmov.s @(r0,r5),fr3
    mov 0x22,r0
    ftrc fr3,FPUL
    sts FPUL,r3
    rts
    mov.b r3,@(r0,r4)

LAB_ce31964:
    mov r4,r3
    mov.l @(PTR_ce319bc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31976:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce319c0,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31994,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3198c:
    #data 0x0141
DAT_ce3198e:
    #data 0x01d2
DAT_ce31990:
    #data 0x014b
DAT_ce31992:
    #data 0x0142
DAT_ce31994:
    #data 0x02a4
    #align4

PTR_ce31998:
    #data loc_8c034dee
PTR_ce3199c:
    #data loc_8c05218a
PTR_ce319a0:
    #data loc_8c051648
PTR_ce319a4:
    #data DAT_ce33304
DAT_ce319a8:
    #data 0x3fd55555
DAT_ce319ac:
    #data 0x40092492
DAT_ce319b0:
    #data 0x42000000
DAT_ce319b4:
    #data 0x41800000
DAT_ce319b8:
    #data 0xc1800000
PTR_ce319bc:
    #data PTR_ce33448
PTR_ce319c0:
    #data PTR_ce33454

;=============================================

LAB_ce319c4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31b0e,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce319e8
    mov.w @(DAT_ce31b12,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31b10,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce319e8:
    mov.b @(0x7,r14),r0
    mov 0x00,r13
    mov.l @(PTR_ce31b24,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31b14,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31b16,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31b28,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr15
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov 0x37,r3
    mov.w @(DAT_ce31b18,pc),r0
    mov 0x01,r5
    mov 0x0D,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31b2c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31b30,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31b1a,pc),r0
    mov.l @(PTR_ce31b34,pc),r4
    fmov.s @(r0,r4),fr3
    add 0xFC,r0
    fmov.s @(r0,r4),fr2
    mov 0x34,r0
    fmov.s @(r0,r14),fr1
    mova @(DAT_ce31b38,pc),r0
    fadd fr3,fr2
    fldi1 fr3
    fadd fr3,fr3
    fdiv fr3,fr2
    fsub fr1,fr2
    fmov.s @r0,fr1
    mov 0x5C,r0
    fdiv fr1,fr2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce31b3c,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31b40,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov r13,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov.l @r15,r3
    mov r13,r0
    nop
    mov.b r0,@(0x2,r3)
    mov 0x01,r0
    mov.l @r15,r3
    mov 0x16,r5
    mov r14,r4
    mov r13,r6
    mov.b r0,@(0x1,r3)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31b44,pc),r3
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31aaa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31b1c,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31b1e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31b0e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31ace
    bra LAB_ce31ad0
    mov 0x02,r3

LAB_ce31ace:
    mov 0x00,r3

LAB_ce31ad0:
    mov.w @(DAT_ce31b20,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31b48,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31b22,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31afe
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov 0x02,r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31b22,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31b14,pc),r0
    mov.b r2,@(r0,r14)
    mov 0xFF,r0
    mov.l @r15,r3
    mov.b r0,@(0x1,r3)
    bra LAB_ce31b4c
    nop

LAB_ce31afe:
    mov.w @(0x1e,r14),r0
    xor 0x01,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce31b4c
    bra LAB_ce31b4e
    mov 0x08,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b0e:
    #data 0x0255
DAT_ce31b10:
    #data 0x00ff
DAT_ce31b12:
    #data 0x03f0
DAT_ce31b14:
    #data 0x01f9
DAT_ce31b16:
    #data 0x041c
DAT_ce31b18:
    #data 0x01a1
DAT_ce31b1a:
    #data 0x008c
DAT_ce31b1c:
    #data 0x03f8
DAT_ce31b1e:
    #data 0x0328
DAT_ce31b20:
    #data 0x03f1
DAT_ce31b22:
    #data 0x0141
    #align4

PTR_ce31b24:
    #data loc_8c05218a
PTR_ce31b28:
    #data loc_8c05115a
PTR_ce31b2c:
    #data loc_8c2896b0
PTR_ce31b30:
    #data loc_8c02fec4
PTR_ce31b34:
    #data loc_8c26a518
DAT_ce31b38:
    #data 0x41800000
DAT_ce31b3c:
    #data 0x414db6db
DAT_ce31b40:
    #data 0xbf4db6db
PTR_ce31b44:
    #data loc_8c034e8c
PTR_ce31b48:
    #data loc_8c034dee

;=============================================

LAB_ce31b4c:
    mov 0x01,r5

LAB_ce31b4e:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31c8c,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b5a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31c78,pc),r0
    mov r4,r14
    mov 0x02,r4
    mov.b r4,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce31c7a,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31c7c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31b7c
    bra LAB_ce31b7e
    mov 0x02,r2

LAB_ce31b7c:
    mov 0x00,r2

LAB_ce31b7e:
    mov.w @(DAT_ce31c7e,pc),r0
    mov.l @(PTR_ce31c90,pc),r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31c80,pc),r0
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31c16
    mov.w @(DAT_ce31c82,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x01,r3
    mov.w @(DAT_ce31c84,pc),r0
    mov r3,r6
    fldi0 fr4
    mov r15,r5
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31c94,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31c98,pc),r0
    mov.l @(PTR_ce31c9c,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31c16:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31c1e:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31ca0,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31c86,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c34:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31c78,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31c7a,pc),r0
    mov.l @(PTR_ce31c90,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31c88,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31c70
    mov.b @(0x7,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    mov.l @r15,r3
    mov.b r0,@(0x3,r3)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31ca4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c70:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c78:
    #data 0x03f8
DAT_ce31c7a:
    #data 0x0328
DAT_ce31c7c:
    #data 0x0255
DAT_ce31c7e:
    #data 0x03f1
DAT_ce31c80:
    #data 0x01f5
DAT_ce31c82:
    #data 0x03f0
DAT_ce31c84:
    #data 0x0142
DAT_ce31c86:
    #data 0x02a4
DAT_ce31c88:
    #data 0x0141
    #align4

PTR_ce31c8c:
    #data loc_8c035162
PTR_ce31c90:
    #data loc_8c034dee
DAT_ce31c94:
    #data 0xc1e2aaaa
DAT_ce31c98:
    #data 0x4313db6d
PTR_ce31c9c:
    #data loc_8c050834
PTR_ce31ca0:
    #data PTR_ce33460
PTR_ce31ca4:
    #data loc_8c071400

;=============================================

LAB_ce31ca8:
    mov.w @(DAT_ce31dac,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31dae,pc),r0
    mov.b r2,@(r0,r14)
    mov.b @(0x2,r5),r0
    cmp/pz r0
    bt LAB_ce31d18
    mov.w @(DAT_ce31db0,pc),r0
    mov 0x00,r13
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31db2,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    mov.b r0,@(0x7,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce31db8,pc),r3
    mov 0x0D,r6
    mov.b r0,@(0x3,r5)
    mov r0,r5
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
    mova @(DAT_ce31dbc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov.l @(PTR_ce31dc0,pc),r3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x06,r6
    lds.l @r15+,PR
    mov 0x16,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d18:
    cmp/pl r0
    bf LAB_ce31d22
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce31d22:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31d2a:
    mov.w @(DAT_ce31dac,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31dae,pc),r0
    mov.l @(PTR_ce31dc4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31da6
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31dc8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31db4,pc),r0
    mov.l @(r0,r14),r4
    mova @(DAT_ce31dcc,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31db6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31d6c
    mova @(DAT_ce31dd0,pc),r0
    fmov.s @r0,fr4

LAB_ce31d6c:
    mova @(DAT_ce31dd4,pc),r0
    mov.l @(PTR_ce31dc0,pc),r3
    fmov.s @r0,fr5
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    mov 0x01,r6
    fmov.s @(r0,r14),fr2
    mov 0x5C,r0
    fadd fr4,fr3
    fldi0 fr4
    mov 0x16,r5
    fsub fr2,fr3
    fdiv fr5,fr3
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x60,r0
    fsub fr3,fr2
    fdiv fr5,fr2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31da6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31dac:
    #data 0x03f8
DAT_ce31dae:
    #data 0x0328
DAT_ce31db0:
    #data 0x03f9
DAT_ce31db2:
    #data 0x0327
DAT_ce31db4:
    #data 0x01c8
DAT_ce31db6:
    #data 0x01d2
    #align4

PTR_ce31db8:
    #data loc_8c02fec4
DAT_ce31dbc:
    #data 0xbf700000
PTR_ce31dc0:
    #data loc_8c034e8c
PTR_ce31dc4:
    #data loc_8c034dee
PTR_ce31dc8:
    #data loc_8c05218a
DAT_ce31dcc:
    #data 0x42555555
DAT_ce31dd0:
    #data 0xc2555555
DAT_ce31dd4:
    #data 0x41000000

;=============================================

LAB_ce31dd8:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31eee,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31ef0,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31ef2,pc),r0
    mov.l @(PTR_ce31efc,pc),r3
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31e78
    mov.b @(0x7,r14),r0
    mov 0x38,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31ef4,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31f00,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31f04,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31f08,pc),r3
    mov r14,r4
    mov 0x02,r6
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e78:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e7e:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31eee,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31ef0,pc),r0
    mov.l @(PTR_ce31efc,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce31f0c,pc),r0
    fmov.s @r0,fr14
    mov.w @(DAT_ce31ef6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31f56
    fldi0 fr15
    mov.w @(DAT_ce31ef8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31f10
    mov 0x00,r13
    mov.w @(DAT_ce31ef6,pc),r0
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31f00,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x10,r2
    mov.w @(DAT_ce31efa,pc),r0
    mov.w @(r0,r14),r1
    or r2,r1
    mov.w r1,@(r0,r14)
    add 0x9F,r0
    bra LAB_ce31f56
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31eee:
    #data 0x03f8
DAT_ce31ef0:
    #data 0x0328
DAT_ce31ef2:
    #data 0x01f5
DAT_ce31ef4:
    #data 0x01a1
DAT_ce31ef6:
    #data 0x014b
DAT_ce31ef8:
    #data 0x019e
DAT_ce31efa:
    #data 0x01ac
    #align4

PTR_ce31efc:
    #data loc_8c034dee
PTR_ce31f00:
    #data loc_8c2896b0
PTR_ce31f04:
    #data loc_8c05218a
PTR_ce31f08:
    #data loc_8c034e8c
DAT_ce31f0c:
    #data 0xbf700000

;=============================================

LAB_ce31f10:
    mov.w @(DAT_ce31fd2,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31fd4,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.l @r15,r3
    mov r13,r0
    nop
    mov.b r0,@(0x3,r3)
    mov 0x00,r5
    mov.l @(PTR_ce31fdc,pc),r3
    mov 0x0D,r6
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    mov.l @(PTR_ce31fe0,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    mov 0x16,r5
    fmov fr14,@(r0,r14)
    mov 0x06,r6
    jsr @r3
    mov r14,r4

LAB_ce31f56:
    mov.w @(DAT_ce31fd6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31fc4
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31fdc,pc),r3
    mov 0x0D,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce31fe4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce31fe8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr14,@(r0,r14)
    mov.w @(DAT_ce31fd8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f96
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31f96:
    mova @(DAT_ce31fec,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31fd8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31fa6
    mova @(DAT_ce31ff0,pc),r0
    fmov.s @r0,fr4

LAB_ce31fa6:
    mov 0x34,r0
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x00,r6
    mov r6,r5
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31ff4,pc),r3
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31fc4:
    add 0x04,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31fd2:
    #data 0x03f9
DAT_ce31fd4:
    #data 0x0327
DAT_ce31fd6:
    #data 0x0141
DAT_ce31fd8:
    #data 0x01d2
    #align4

PTR_ce31fdc:
    #data loc_8c02fec4
PTR_ce31fe0:
    #data loc_8c034e8c
DAT_ce31fe4:
    #data 0xc1200000
DAT_ce31fe8:
    #data 0x40892492
DAT_ce31fec:
    #data 0x42555555
DAT_ce31ff0:
    #data 0xc2555555
PTR_ce31ff4:
    #data loc_8c0c5cac

;=============================================

LAB_ce31ff8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3210a,pc),r0
    mov r4,r14
    mov 0x02,r4
    mov.l r5,@r15
    mov.b r4,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce3210c,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3210e,pc),r0
    mov.l @(PTR_ce3211c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32110,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce3204a
    mov 0x00,r4
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32120,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce32110,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3204a:
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
    mov.w @(DAT_ce32112,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce320e0
    mov.w @(DAT_ce32114,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32116,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x01,r3
    mov.w @(DAT_ce32112,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32118,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @r15,r2
    mov r4,r0
    nop
    mov r3,r5
    mov.l @(PTR_ce32124,pc),r3
    mov.b r0,@(0x3,r2)
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32128,pc),r2
    jsr @r2
    mov r14,r4
    mov r14,r4
    mov 0x16,r5
    mov 0x03,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3212c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce320e0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce320e8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce32134
    mov.l @(PTR_ce3211c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321a6
    lds.l @r15+,PR
    mov.l @(PTR_ce32130,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3210a:
    #data 0x03f8
DAT_ce3210c:
    #data 0x0328
DAT_ce3210e:
    #data 0x01f5
DAT_ce32110:
    #data 0x014b
DAT_ce32112:
    #data 0x041c
DAT_ce32114:
    #data 0x03f9
DAT_ce32116:
    #data 0x0327
DAT_ce32118:
    #data 0x01f9
    #align4

PTR_ce3211c:
    #data loc_8c034dee
PTR_ce32120:
    #data loc_8c2896b0
PTR_ce32124:
    #data loc_8c0c5cac
PTR_ce32128:
    #data loc_8c0511b4
PTR_ce3212c:
    #data loc_8c034e8c
PTR_ce32130:
    #data loc_8c051648

;=============================================

LAB_ce32134:
    mov.l @(PTR_ce32248,pc),r3
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
    mov.w @(DAT_ce3223c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce321a6
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    add 0xFF,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3223c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3223e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3224c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32250,pc),r2
    mov r14,r4
    mov 0x05,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce321a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce321ac:
    mov r4,r3
    mov.l @(PTR_ce32254,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce321be:
    mov r4,r3
    mov.l @(PTR_ce32258,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce321d0:
    mov.w @(DAT_ce32242,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce32240,pc),r12
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce321f4
    add r14,r12
    mov.w @(DAT_ce32246,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32244,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce321f4:
    mov.b @(0x7,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3223e,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3223c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce3225c,pc),r3
    mov r0,r5
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32260,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32264,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32268,pc),r3
    mov 0x02,r4
    mov.w @r3,r2
    cmp/gt r4,r2
    bt LAB_ce3226c
    mov r4,r0
    nop
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    bra LAB_ce322d4
    mov 0x08,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3223c:
    #data 0x041c
DAT_ce3223e:
    #data 0x01f9
DAT_ce32240:
    #data 0x02a4
DAT_ce32242:
    #data 0x0255
DAT_ce32244:
    #data 0x00ff
DAT_ce32246:
    #data 0x03f0
    #align4

PTR_ce32248:
    #data loc_8c034dee
PTR_ce3224c:
    #data loc_8c0511b4
PTR_ce32250:
    #data loc_8c034e8c
PTR_ce32254:
    #data PTR_ce33478
PTR_ce32258:
    #data PTR_ce33484
PTR_ce3225c:
    #data loc_8c035162
PTR_ce32260:
    #data loc_8c05218a
PTR_ce32264:
    #data loc_8c05115a
PTR_ce32268:
    #data loc_8c287ae8

;=============================================

LAB_ce3226c:
    mov.l @(PTR_ce323a8,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce323a8,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x4,r12)
    mov 0x0E,r0
    mov.b r0,@(0x5,r12)
    mov 0x3D,r4
    mov.w @(DAT_ce32398,pc),r0
    mov.b @(r0,r14),r5
    extu.b r5,r0
    cmp/eq 0x04,r0
    bt/s LAB_ce3229c
    mov r0,r5
    mov r5,r0
    nop
    cmp/eq 0x05,r0
    bf LAB_ce3229e

LAB_ce3229c:
    mov 0x44,r4

LAB_ce3229e:
    mov.w @(DAT_ce3239a,pc),r0
    mov 0x07,r6
    mov.l @(PTR_ce323ac,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    fldi0 fr4
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce322d4:
    lds.l @r15+,PR
    mov.l @(PTR_ce323b0,pc),r2
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce322e4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3239c,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3239e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32398,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32306
    bra LAB_ce32308
    mov 0x02,r3

LAB_ce32306:
    mov 0x00,r3

LAB_ce32308:
    mov.w @(DAT_ce323a0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce323b4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce323a2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32346
    mov.w @(DAT_ce323a4,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce323c0,pc),r3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce323a2,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce323b8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce323bc,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32346:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3234e:
    mov.w @(DAT_ce3239c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3239e,pc),r0
    mov.l @(PTR_ce323b4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce323a2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32392
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov r4,r5
    mov.w @(DAT_ce323a2,pc),r0
    mov r14,r6
    mov.l @(PTR_ce323c4,pc),r3
    mov.b r4,@(r0,r14)
    add 0x27,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32392:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32398:
    #data 0x0255
DAT_ce3239a:
    #data 0x01a1
DAT_ce3239c:
    #data 0x03f8
DAT_ce3239e:
    #data 0x0328
DAT_ce323a0:
    #data 0x03f1
DAT_ce323a2:
    #data 0x0141
DAT_ce323a4:
    #data 0x03f0
    #align4

PTR_ce323a8:
    #data loc_8c0c6348
PTR_ce323ac:
    #data loc_8c2896b0
PTR_ce323b0:
    #data loc_8c034e8c
PTR_ce323b4:
    #data loc_8c034dee
DAT_ce323b8:
    #data 0x41d55555
DAT_ce323bc:
    #data 0x434db6db
PTR_ce323c0:
    #data loc_8c050834
PTR_ce323c4:
    #data loc_8c071730

;=============================================

LAB_ce323c8:
    mov.w @(DAT_ce324e6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    mov.w @(DAT_ce324e4,pc),r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add r14,r13
    mov.w @(DAT_ce324e8,pc),r0
    mov.l @(PTR_ce324f4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x4,r13),r0
    cmp/pz r0
    bf LAB_ce323fe
    mov.b @(0x4,r13),r0
    tst r0,r0
    bt LAB_ce3242c
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3242c

LAB_ce323fe:
    mov.w @(DAT_ce324ea,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce324ec,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.l @(PTR_ce324f8,pc),r3
    mov r14,r4
    mov.b r0,@(0x7,r14)
    mov 0x08,r6
    lds.l @r15+,PR
    mov 0x16,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3242c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32434:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce324f4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3244e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce324fc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3244e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32456:
    mov r4,r3
    mov.l @(PTR_ce32500,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32468:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x01,r5
    mov.w @(DAT_ce324ee,pc),r0
    fldi0 fr4
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce324f0,pc),r0
    mov.l @(PTR_ce32504,pc),r3
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
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce324f8,pc),r2
    mov r14,r4
    mov 0x02,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce324b0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce324f4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324ca
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce324fc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce324ca:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce324d2:
    mov r4,r3
    mov.l @(PTR_ce32508,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce324e4:
    #data 0x02a4
DAT_ce324e6:
    #data 0x03f8
DAT_ce324e8:
    #data 0x0328
DAT_ce324ea:
    #data 0x03f9
DAT_ce324ec:
    #data 0x0327
DAT_ce324ee:
    #data 0x01f9
DAT_ce324f0:
    #data 0x041c
    #align4

PTR_ce324f4:
    #data loc_8c034dee
PTR_ce324f8:
    #data loc_8c034e8c
PTR_ce324fc:
    #data loc_8c051648
PTR_ce32500:
    #data PTR_ce33490
PTR_ce32504:
    #data loc_8c0c7c10
PTR_ce32508:
    #data PTR_ce33498

;=============================================

LAB_ce3250c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32640,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32638,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3263a,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32644,pc),r2
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
    mov 0x26,r3
    mov.w @(DAT_ce3263c,pc),r0
    mov r14,r4
    mov 0x10,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32648,pc),r3
    mov 0x15,r5
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
    mov.l @r15+,r13
    mov.l @(PTR_ce3264c,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3257a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32650,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32594
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32654,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32594:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3259c:
    mov r4,r3
    mov.l @(PTR_ce32658,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce325ae:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32640,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32638,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3263a,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32644,pc),r2
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
    mov 0x48,r3
    mov.w @(DAT_ce3263c,pc),r0
    mov r14,r4
    mov 0x11,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32648,pc),r3
    mov 0x15,r5
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
    mov.l @r15+,r13
    mov.l @(PTR_ce3264c,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3261c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32650,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3265c
    mov.l @(PTR_ce32654,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce3269e
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32638:
    #data 0x041c
DAT_ce3263a:
    #data 0x01f9
DAT_ce3263c:
    #data 0x01a1
    #align4

PTR_ce32640:
    #data loc_8c05218a
PTR_ce32644:
    #data loc_8c05115a
PTR_ce32648:
    #data loc_8c2896b0
PTR_ce3264c:
    #data loc_8c034e8c
PTR_ce32650:
    #data loc_8c034dee
PTR_ce32654:
    #data loc_8c051648
PTR_ce32658:
    #data PTR_ce334a0

;=============================================

LAB_ce3265c:
    mov.w @(DAT_ce32764,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32684
    mov.w @(DAT_ce32764,pc),r0
    mov 0x01,r3
    mov r15,r5
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce3276c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32770,pc),r0
    mov.l @(PTR_ce32774,pc),r2
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4

LAB_ce32684:
    mov.w @(DAT_ce32764,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce3269e
    mov.w @(DAT_ce32764,pc),r0
    mov 0x02,r3
    mov.l @(PTR_ce32778,pc),r1
    mov 0x16,r5
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce3269e:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce326a6:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov 0x04,r3
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce32766,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce3277c,pc),r3
    jmp @r3
    mov 0x1D,r5

LAB_ce326ba:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov 0x04,r3
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce32766,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce3277c,pc),r3
    jmp @r3
    mov 0x1D,r5

LAB_ce326ce:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce32768,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce326f0
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce326f6
    cmp/eq 0x02,r0
    bt LAB_ce32700
    bra LAB_ce3270a
    nop

LAB_ce326f0:
    mov.w @(DAT_ce32766,pc),r0
    bra LAB_ce326fa
    mov.b r5,@(r0,r4)

LAB_ce326f6:
    mov.w @(DAT_ce32766,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce326fa:
    mov.w @(DAT_ce3276a,pc),r0
    bra LAB_ce3270a
    mov.b r5,@(r0,r4)

LAB_ce32700:
    mov.w @(DAT_ce32766,pc),r0
    mov 0x06,r2
    mov.b r2,@(r0,r4)
    add 0xBA,r0
    mov.b r6,@(r0,r4)

LAB_ce3270a:
    mov.l @(PTR_ce3277c,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce32710:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce32768,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce32732
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce32738
    cmp/eq 0x02,r0
    bt LAB_ce32742
    bra LAB_ce3274c
    nop

LAB_ce32732:
    mov.w @(DAT_ce32766,pc),r0
    bra LAB_ce3273c
    mov.b r5,@(r0,r4)

LAB_ce32738:
    mov.w @(DAT_ce32766,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce3273c:
    mov.w @(DAT_ce3276a,pc),r0
    bra LAB_ce3274c
    mov.b r5,@(r0,r4)

LAB_ce32742:
    mov.w @(DAT_ce32766,pc),r0
    mov 0x06,r2
    mov.b r2,@(r0,r4)
    add 0xBA,r0
    mov.b r6,@(r0,r4)

LAB_ce3274c:
    mov.l @(PTR_ce3277c,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce32752:
    mov r4,r3
    mov.l @(PTR_ce32780,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32764:
    #data 0x0141
DAT_ce32766:
    #data 0x01e9
DAT_ce32768:
    #data 0x04c9
DAT_ce3276a:
    #data 0x01a3
    #align4

DAT_ce3276c:
    #data 0xc1baaaaa
DAT_ce32770:
    #data 0x432b6db6
PTR_ce32774:
    #data loc_8c050ea4
PTR_ce32778:
    #data loc_8c04223a
PTR_ce3277c:
    #data loc_8c0530d8
PTR_ce32780:
    #data PTR_ce334a8

;=============================================

LAB_ce32784:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce328d0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce328dc,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce328e0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce328e4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce328e8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce328d2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce327cc
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce327cc:
    mov.w @(DAT_ce328d4,pc),r0
    mov 0x25,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce328ec,pc),r3
    mov r4,r6
    mov.l r4,@(r0,r14)
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
    mov.l @(PTR_ce328f0,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce32800:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce328f4,pc),r3
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
    mov.w @(DAT_ce328d6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3288a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov 0x02,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce328d0,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce328d6,pc),r0
    mov.l @(PTR_ce328f8,pc),r3
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
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce328f0,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3288a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32890:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce328f4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce328aa
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce328fc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce328aa:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce328b2:
    mov.w @(DAT_ce328da,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32900,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce328d8,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328d0:
    #data 0x01f9
DAT_ce328d2:
    #data 0x01d2
DAT_ce328d4:
    #data 0x01a1
DAT_ce328d6:
    #data 0x041c
DAT_ce328d8:
    #data 0x02a4
DAT_ce328da:
    #data 0x01f5
    #align4

PTR_ce328dc:
    #data loc_8c035162
DAT_ce328e0:
    #data 0xc1f00000
DAT_ce328e4:
    #data 0x3e555555
DAT_ce328e8:
    #data 0xbf4db6db
PTR_ce328ec:
    #data loc_8c2896b0
PTR_ce328f0:
    #data loc_8c034e8c
PTR_ce328f4:
    #data loc_8c034dee
PTR_ce328f8:
    #data loc_8c0c7c10
PTR_ce328fc:
    #data loc_8c051648
PTR_ce32900:
    #data PTR_ce334b4

;=============================================

LAB_ce32904:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov 0x00,r4
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x22,r0
    mov 0x1C,r3
    mov r4,r6
    mov.b r3,@(r0,r14)
    mov 0x0C,r5
    mov.w @(DAT_ce32954,pc),r0
    mov.b r5,@(r0,r14)
    add 0x01,r0
    mov.b r5,@(r0,r14)
    mov 0x20,r0
    mov.l @r15,r3
    mov 0x08,r5
    mov.b r4,@(r0,r3)
    mov.l @(PTR_ce32958,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3295c,pc),r2
    mov 0x14,r5
    mov 0x03,r6
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32960,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32954:
    #data 0x01f2
    #align4

PTR_ce32958:
    #data loc_8c0c73cc
PTR_ce3295c:
    #data loc_8c034e8c
PTR_ce32960:
    #data FUN_ce3187e

;=============================================

LAB_ce32964:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mova @(DAT_ce32aa8,pc),r0
    mov r4,r14
    mov.l r5,@r15
    fmov.s @r0,fr15
    mov.w @(DAT_ce32a9e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32990
    mov 0x01,r13
    mov.b @(r0,r14),r3
    add 0xD5,r0
    mov.b @(r0,r14),r2
    mov r13,r1
    extu.b r2,r2
    shad r2,r1
    tst r1,r3
    bt LAB_ce32a32

LAB_ce32990:
    mov.w @(DAT_ce32aa0,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce32aac,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ab0,pc),r3
    mov.l @r15,r5
    jsr @r3
    mov r14,r4
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce329ec
    mov.w @(DAT_ce32aa2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32a92
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce32ab4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32ab8,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32abc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce32aa4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce329ec
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce329ec:
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr4
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov r13,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce32a9e,pc),r0
    mov.b @(r0,r14),r3
    add 0xD5,r0
    mov.b @(r0,r14),r2
    extu.b r2,r2
    xor r13,r2
    shad r2,r1
    tst r1,r3
    bf LAB_ce32a32
    mov 0x22,r0
    mov.l @(DAT_ce32ac0,pc),r2
    mov.b @(r0,r14),r1
    mov r13,r3
    extu.b r1,r1
    shad r1,r3
    tst r2,r3
    bf LAB_ce32a92

LAB_ce32a32:
    mov.l @r15,r0
    mov 0x20,r2
    mov 0xFF,r3
    add r0,r2
    mov.b r3,@r2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32aa6,pc),r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce32ac4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32ac8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce32aa4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32a7e
    mov 0x04,r7
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32a7e:
    mov r14,r4
    mov 0x14,r5
    mov 0x03,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32acc,pc),r3
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a92:
    add 0x04,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a9e:
    #data 0x01fd
DAT_ce32aa0:
    #data 0x01f5
DAT_ce32aa2:
    #data 0x0140
DAT_ce32aa4:
    #data 0x01d2
DAT_ce32aa6:
    #data 0x0142
    #align4

DAT_ce32aa8:
    #data 0xbf700000
PTR_ce32aac:
    #data loc_8c034dee
PTR_ce32ab0:
    #data FUN_ce3187e
DAT_ce32ab4:
    #data 0xc0ad5555
DAT_ce32ab8:
    #data 0xbfa00000
DAT_ce32abc:
    #data 0xc0cdb6db
DAT_ce32ac0:
    #data 0xff00000f
DAT_ce32ac4:
    #data 0xc1200000
DAT_ce32ac8:
    #data 0x414db6db
PTR_ce32acc:
    #data loc_8c034f54

;=============================================

LAB_ce32ad0:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32bf8,pc),r3
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
    bt LAB_ce32b24
    lds.l @r15+,PR
    mov.l @(PTR_ce32bfc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32b24:
    mov.w @(DAT_ce32be8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32b5a
    mov.w @(DAT_ce32be8,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32bea,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32c00,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32b5a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b60:
    mov.w @(DAT_ce32bea,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce32bc8
    mov.w @(DAT_ce32bec,pc),r0
    mov.w @(DAT_ce32bee,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce32bc8
    mov.w @(DAT_ce32bf0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32bc8
    mov.w @(DAT_ce32bf2,pc),r0
    mov.l @(PTR_ce32c04,pc),r13
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32bbe
    mov.w @(DAT_ce32bea,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32bac
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32bdc
    mov r0,r4
    mov.w @(DAT_ce32bf4,pc),r0
    mov 0x00,r3
    bra LAB_ce32bdc
    mov.b r3,@(r0,r14)

LAB_ce32bac:
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32bdc
    mov r0,r4
    mov.w @(DAT_ce32bf4,pc),r0
    mov 0x02,r2
    bra LAB_ce32bdc
    mov.b r2,@(r0,r14)

LAB_ce32bbe:
    mov.w @(DAT_ce32bea,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32bcc

LAB_ce32bc8:
    bra LAB_ce32be0
    mov 0x00,r0

LAB_ce32bcc:
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32bdc
    mov r0,r4
    mov.w @(DAT_ce32bf4,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce32bdc:
    mov r4,r0
    nop

LAB_ce32be0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32be8:
    #data 0x041c
DAT_ce32bea:
    #data 0x01f9
DAT_ce32bec:
    #data 0x01fa
DAT_ce32bee:
    #data 0x0c00
DAT_ce32bf0:
    #data 0x01a3
DAT_ce32bf2:
    #data 0x01fe
DAT_ce32bf4:
    #data 0x01f7
    #align4

PTR_ce32bf8:
    #data loc_8c034dee
PTR_ce32bfc:
    #data loc_8c05176e
PTR_ce32c00:
    #data loc_8c052dac
PTR_ce32c04:
    #data loc_8c045790

;=============================================

LAB_ce32c08:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32cf0,pc),r1
    mov.l @(PTR_ce32d00,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce32c20:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32d04,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.w @(DAT_ce32cf2,pc),r0
    mov.w @(DAT_ce32cf4,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32c4e
    mov.w @(DAT_ce32cf6,pc),r0
    mov 0x01,r2
    mov.w @(r0,r14),r1
    xor r2,r1
    mov.w r1,@(r0,r14)
    mov.w @(DAT_ce32cf8,pc),r0
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)

LAB_ce32c4e:
    mova @(DAT_ce32d08,pc),r0
    mov.l @(PTR_ce32d10,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32d0c,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32d14,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32cfa,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce32d18,pc),r3
    mov r0,r6
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c88:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32d04,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.w @(DAT_ce32cf2,pc),r0
    mov.w @(DAT_ce32cfc,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32cb6
    mov.w @(DAT_ce32cf6,pc),r0
    mov 0x01,r2
    mov.w @(r0,r14),r1
    xor r2,r1
    mov.w r1,@(r0,r14)
    mov.w @(DAT_ce32cf8,pc),r0
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)

LAB_ce32cb6:
    mova @(DAT_ce32d1c,pc),r0
    mov.l @(PTR_ce32d10,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32d0c,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32d14,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32cfa,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce32d18,pc),r3
    mov 0x01,r6
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32cf0:
    #data 0x01f7
DAT_ce32cf2:
    #data 0x01fa
DAT_ce32cf4:
    #data 0x0400
DAT_ce32cf6:
    #data 0x0130
DAT_ce32cf8:
    #data 0x01d2
DAT_ce32cfa:
    #data 0x01a0
DAT_ce32cfc:
    #data 0x0800
    #align4

PTR_ce32d00:
    #data PTR_ce334c0
PTR_ce32d04:
    #data loc_8c02fec4
DAT_ce32d08:
    #data 0xc312aaaa
DAT_ce32d0c:
    #data 0x433c9249
PTR_ce32d10:
    #data loc_8c103660
PTR_ce32d14:
    #data loc_8c056f2a
PTR_ce32d18:
    #data loc_8c034e8c
DAT_ce32d1c:
    #data 0xc32d5555

;=============================================

LAB_ce32d20:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32e84,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.w @(DAT_ce32e6c,pc),r0
    mov.w @(DAT_ce32e6e,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32d4e
    mov.w @(DAT_ce32e70,pc),r0
    mov 0x01,r2
    mov.w @(r0,r14),r1
    xor r2,r1
    mov.w r1,@(r0,r14)
    mov.w @(DAT_ce32e72,pc),r0
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)

LAB_ce32d4e:
    mova @(DAT_ce32e88,pc),r0
    mov.l @(PTR_ce32e90,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32e8c,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32e94,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32e74,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce32e98,pc),r3
    mov 0x02,r6
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32d88:
    mov.w @(DAT_ce32e76,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32e9c,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32da6:
    mov r4,r3
    mov.l @(PTR_ce32ea0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32db8:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)

LAB_ce32dd0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32ea4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32e78,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32e64
    mov.b @(0x6,r14),r0
    mov 0x20,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32e7a,pc),r0
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce32ea8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32e7c,pc),r0
    mov.w @(r0,r13),r2
    tst r2,r2
    bf LAB_ce32e46
    mov.l @(PTR_ce32eac,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32e7e,pc),r0
    mov 0x01,r2
    mov.w @(DAT_ce32e72,pc),r1
    mov 0x02,r3
    mov.b r2,@(r0,r13)
    add 0xDC,r0
    mov.b @(r0,r14),r0
    add r13,r1
    mov.l @(PTR_ce32eb0,pc),r2
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce32e70,pc),r0
    mov.w @(DAT_ce32e70,pc),r1
    mov.w @(r0,r14),r0
    add r13,r1
    xor 0x01,r0
    mov.w r0,@r1
    mov.w @(DAT_ce32e80,pc),r0
    jsr @r2
    mov.b r3,@(r0,r13)
    mov.w @(DAT_ce32e76,pc),r0
    mov 0x00,r1
    mov.l @(PTR_ce32eb4,pc),r3
    mov r14,r4
    mov.b r1,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e46:
    mov.l @(PTR_ce32eb8,pc),r3
    mov r13,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32eb8,pc),r2
    mov r13,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32eb0,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e64:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e6c:
    #data 0x01fa
DAT_ce32e6e:
    #data 0x0400
DAT_ce32e70:
    #data 0x0130
DAT_ce32e72:
    #data 0x01d2
DAT_ce32e74:
    #data 0x01a0
DAT_ce32e76:
    #data 0x01ea
DAT_ce32e78:
    #data 0x0141
DAT_ce32e7a:
    #data 0x01c8
DAT_ce32e7c:
    #data 0x0420
DAT_ce32e7e:
    #data 0x01f6
DAT_ce32e80:
    #data 0x01f9
    #align4

PTR_ce32e84:
    #data loc_8c02fec4
DAT_ce32e88:
    #data 0xc32d5555
DAT_ce32e8c:
    #data 0x435edb6d
PTR_ce32e90:
    #data loc_8c103660
PTR_ce32e94:
    #data loc_8c056f2a
PTR_ce32e98:
    #data loc_8c034e8c
PTR_ce32e9c:
    #data PTR_ce334cc
PTR_ce32ea0:
    #data PTR_ce334e0
PTR_ce32ea4:
    #data loc_8c034dee
PTR_ce32ea8:
    #data loc_8c05933c
PTR_ce32eac:
    #data loc_8c05218a
PTR_ce32eb0:
    #data loc_8c02fd26
PTR_ce32eb4:
    #data loc_8c051648
PTR_ce32eb8:
    #data loc_8c0c6e44

;=============================================

LAB_ce32ebc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32fc8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32edc
    mov.l @(PTR_ce32fcc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32fd0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32edc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ee2:
    mov r4,r3
    mov.l @(PTR_ce32fd4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32ef4:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)

LAB_ce32f0c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32fc8,pc),r3
    jsr @r3
    mov r4,r13
    mov.w @(DAT_ce32fbe,pc),r0
    mov.b @(r0,r13),r2
    tst r2,r2
    bt LAB_ce32f7c
    mov.b @(0x6,r13),r0
    mov 0x0B,r3
    add 0x01,r0
    mov.b r0,@(0x6,r13)
    mov.w @(DAT_ce32fc0,pc),r0
    mov.l @(r0,r13),r14
    add 0xEC,r0
    mov.l r13,@(r0,r14)
    add 0x42,r0
    mov.b r3,@(r0,r14)
    add 0xDC,r0
    mov.b @(r0,r13),r2
    mov.b r2,@(r0,r14)
    mov 0x02,r2
    mov.w @(DAT_ce32fc2,pc),r0
    mov.w @(r0,r13),r3
    mov.w r3,@(r0,r14)
    mov 0x21,r3
    mov.w @(DAT_ce32fc4,pc),r0
    mov.b r2,@(r0,r14)
    add 0xA8,r0
    mov.l @(PTR_ce32fd8,pc),r2
    jsr @r2
    mov.b r3,@(r0,r14)
    mov 0x34,r0
    mov.l @(PTR_ce32fdc,pc),r3
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce32fc6,pc),r0
    fmov.s fr3,@r15
    fmov.s @(r0,r14),fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov.b @(0x2,r14),r0
    extu.b r0,r5
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce32fe0,pc),r2
    jsr @r2
    mov r13,r4
    mov.l @(PTR_ce32fe4,pc),r4
    mov 0x01,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)

LAB_ce32f7c:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32f86:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32fc8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32fa6
    mov.l @(PTR_ce32fcc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32fd0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32fa6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fac:
    mov r4,r3
    mov.l @(PTR_ce32fe8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32fbe:
    #data 0x0141
DAT_ce32fc0:
    #data 0x01c8
DAT_ce32fc2:
    #data 0x0130
DAT_ce32fc4:
    #data 0x01f9
DAT_ce32fc6:
    #data 0x041c
    #align4

PTR_ce32fc8:
    #data loc_8c034dee
PTR_ce32fcc:
    #data loc_8c05218a
PTR_ce32fd0:
    #data loc_8c051648
PTR_ce32fd4:
    #data PTR_ce334ec
PTR_ce32fd8:
    #data loc_8c02fd26
PTR_ce32fdc:
    #data loc_8c100672
PTR_ce32fe0:
    #data loc_8c0423fc
PTR_ce32fe4:
    #data loc_8c26a518
PTR_ce32fe8:
    #data PTR_ce334f8

;=============================================

LAB_ce32fec:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mova @(DAT_ce33140,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce33144,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)

LAB_ce3300c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce33078
    mov.l @(PTR_ce33148,pc),r3
    jsr @r3
    mov r14,r4
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
    mov.w @(DAT_ce33134,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33128
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov 0x0F,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x03,r6
    mov.w @(DAT_ce33134,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33136,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3314c,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce33128
    nop

LAB_ce33078:
    mov.l @(PTR_ce33148,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33128
    mov.w @(DAT_ce33138,pc),r0
    mov 0x02,r12
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r12,@(r0,r13)
    add 0xDC,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)
    mov 0x22,r3
    mov.w @(DAT_ce3313a,pc),r0
    mov.w @(r0,r14),r2
    mov.w r2,@(r0,r13)
    mov.w @(DAT_ce33136,pc),r0
    mov.b r12,@(r0,r13)
    add 0xA8,r0
    mov.b r3,@(r0,r13)
    mov 0x34,r0
    fmov.s @(r0,r13),fr3
    mov.w @(DAT_ce33134,pc),r0
    fmov.s fr3,@r15
    fmov.s @(r0,r13),fr3
    mov 0x04,r0
    mov.l @(PTR_ce33150,pc),r3
    fmov fr3,@(r0,r15)
    mov.b @(0x2,r13),r0
    extu.b r0,r5
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce33154,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33158,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce3315c,pc),r4
    mov r12,r0
    nop
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33136,pc),r0
    mov.b r12,@(r0,r14)
    mova @(DAT_ce33160,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33164,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33168,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3316c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3313c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce33120
    mov 0x04,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33120:
    mov.l @(PTR_ce3314c,pc),r3
    mov 0x0F,r5
    jsr @r3
    mov r14,r4

LAB_ce33128:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33134:
    #data 0x041c
DAT_ce33136:
    #data 0x01f9
DAT_ce33138:
    #data 0x01c8
DAT_ce3313a:
    #data 0x0130
DAT_ce3313c:
    #data 0x01d2
    #align4

DAT_ce33140:
    #data 0x40892492
DAT_ce33144:
    #data 0xbfcdb6db
PTR_ce33148:
    #data loc_8c034dee
PTR_ce3314c:
    #data loc_8c034e8c
PTR_ce33150:
    #data loc_8c100672
PTR_ce33154:
    #data loc_8c0423fc
PTR_ce33158:
    #data loc_8c02fd26
PTR_ce3315c:
    #data loc_8c26a518
DAT_ce33160:
    #data 0x40a00000
DAT_ce33164:
    #data 0xbd200000
DAT_ce33168:
    #data 0x41960000
DAT_ce3316c:
    #data 0xbf5edb6d

;=============================================

LAB_ce33170:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33250,pc),r3
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
    mov.w @(DAT_ce33244,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce331e8
    mov.w @(DAT_ce33244,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33246,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33254,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce331e8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce331ee:
    rts
    nop

LAB_ce331f2:
    mov.w @(DAT_ce33248,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce33258,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    mov.w @(DAT_ce3324a,pc),r0
    mov.l @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3320c:
    add 0xF8,r15
    mov.l r4,@(0x4,r15)
    mov.l r5,@r15
    mov.l @(PTR_ce3325c,pc),r3
    mov.l @r15,r4
    mov.l @(0x4,r15),r5
    jmp @r3
    add 0x08,r15

LAB_ce3321c:
    mov.l r14,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce33232
    mov.w @(DAT_ce3324c,pc),r0
    mov 0x02,r3
    bra LAB_ce3323e
    mov.b r3,@(r0,r14)

LAB_ce33232:
    mov.l @r15,r4
    mov r14,r5
    add 0x04,r15
    mov.l @(PTR_ce3325c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3323e:
    add 0x04,r15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33244:
    #data 0x041c
DAT_ce33246:
    #data 0x01f9
DAT_ce33248:
    #data 0x01f7
DAT_ce3324a:
    #data 0x01c8
DAT_ce3324c:
    #data 0x01f4
    #align4

PTR_ce33250:
    #data loc_8c034dee
PTR_ce33254:
    #data loc_8c051648
PTR_ce33258:
    #data PTR_ce33504
PTR_ce3325c:
    #data loc_8c04cc1c
DAT_ce33260:
    #data 0x0201
    #data 0x0201
DAT_ce33264:
    #data 0xffff
    #data 0xffff
DAT_ce33268:
    #data 0xffff
    #data 0xffff
DAT_ce3326c:
    #data 0x0201
    #data 0x0201
DAT_ce33270:
    #data 0xffff
    #data 0xffff
DAT_ce33274:
    #data 0xffff
    #data 0xffff
DAT_ce33278:
    #data 0x0201
    #data 0x0200
DAT_ce3327c:
    #data 0x02ff
    #data 0x0201
DAT_ce33280:
    #data 0xffff
    #data 0xffff
DAT_ce33284:
    #data 0x0201
    #data 0x0201
DAT_ce33288:
    #data 0x02ff
    #data 0x02ff
DAT_ce3328c:
    #data 0xffff
    #data 0xffff
DAT_ce33290:
    #data 0x0003
    #data 0x9100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce332a0:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce332b0:
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
DAT_ce332c4:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce332d4:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce332e4:
    #data 0x5555
    #data 0xc0d5
DAT_ce332e8:
    #data 0xb6db
    #data 0x414d
    #data 0x5555
    #data 0xc185
    #data 0x6db6
    #data 0x41ab
DAT_ce332f4:
    #data 0x0000
    #data 0xc0a0
DAT_ce332f8:
    #data 0x2492
    #data 0x4009
    #data 0x5555
    #data 0xc155
    #data 0x0000
    #data 0x4170
DAT_ce33304:
    #data 0xff97
DAT_ce33306:
    #data 0x0058
    #data 0xffa8
    #data 0x0084
    #data 0xfff0
    #data 0x00a5
    #data 0xff97
    #data 0x0058
    #data 0xffa4
    #data 0x0087
    #data 0xfff0
    #data 0x00a8
    #data 0xffc0
    #data 0x004c
    #data 0xfff7
    #data 0x0079
    #data 0x0059
    #data 0x0010
    #data 0x0044
    #data 0x0040
    #data 0x002d
    #data 0x0078
    #data 0xffb4
    #data 0x0026
    #data 0x0000
    #data 0x0000
    #data 0xffc3
    #data 0x00a3
    #data 0xffb2
    #data 0x0080
    #align4

PTR_ce33340:
    #data LAB_ce303b4
PTR_ce33344:
    #data LAB_ce3001c
PTR_ce33348:
    #data LAB_ce30412
PTR_ce3334c:
    #data LAB_ce3096a
PTR_ce33350:
    #data LAB_ce30d32
PTR_ce33354:
    #data LAB_ce30e40
PTR_ce33358:
    #data LAB_ce30f20
PTR_ce3335c:
    #data LAB_ce30f68
PTR_ce33360:
    #data LAB_ce30ff2
PTR_ce33364:
    #data LAB_ce32b60
PTR_ce33368:
    #data LAB_ce32c08
PTR_ce3336c:
    #data LAB_ce32d88
PTR_ce33370:
    #data LAB_ce331f2
PTR_ce33374:
    #data FUN_ce302fa
PTR_ce33378:
    #data LAB_ce32752
PTR_ce3337c:
    #data LAB_ce30c6c
PTR_ce33380:
    #data LAB_ce326a6
PTR_ce33384:
    #data LAB_ce326ba
PTR_ce33388:
    #data LAB_ce326ce
PTR_ce3338c:
    #data LAB_ce32710
    #data 0x00000000
PTR_ce33394:
    #data LAB_ce328b2
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce333b0:
    #data LAB_ce30426
PTR_ce333b4:
    #data LAB_ce3073a
PTR_ce333b8:
    #data LAB_ce30762
PTR_ce333bc:
    #data LAB_ce30426
PTR_ce333c0:
    #data LAB_ce3098c
PTR_ce333c4:
    #data LAB_ce30b28
PTR_ce333c8:
    #data LAB_ce30b12
PTR_ce333cc:
    #data LAB_ce3097e
PTR_ce333d0:
    #data LAB_ce30d44
PTR_ce333d4:
    #data LAB_ce30dd0
PTR_ce333d8:
    #data LAB_ce30e52
PTR_ce333dc:
    #data LAB_ce30e8e
PTR_ce333e0:
    #data LAB_ce30edc
PTR_ce333e4:
    #data LAB_ce30f7a
PTR_ce333e8:
    #data LAB_ce30fc4
PTR_ce333ec:
    #data LAB_ce31006
PTR_ce333f0:
    #data LAB_ce312ea
PTR_ce333f4:
    #data LAB_ce31440
PTR_ce333f8:
    #data LAB_ce31964
PTR_ce333fc:
    #data LAB_ce321ac
PTR_ce33400:
    #data LAB_ce32456
PTR_ce33404:
    #data LAB_ce324d2
PTR_ce33408:
    #data LAB_ce3259c
PTR_ce3340c:
    #data LAB_ce31040
PTR_ce33410:
    #data LAB_ce310da
PTR_ce33414:
    #data LAB_ce311c6
PTR_ce33418:
    #data LAB_ce312b0
PTR_ce3341c:
    #data LAB_ce3132c
PTR_ce33420:
    #data LAB_ce313a0
PTR_ce33424:
    #data LAB_ce313e4
PTR_ce33428:
    #data FUN_ce3141e
PTR_ce3342c:
    #data LAB_ce31488
PTR_ce33430:
    #data LAB_ce3152e
PTR_ce33434:
    #data LAB_ce31858
PTR_ce33438:
    #data LAB_ce31540
PTR_ce3343c:
    #data LAB_ce315bc
PTR_ce33440:
    #data LAB_ce31674
PTR_ce33444:
    #data LAB_ce317bc
PTR_ce33448:
    #data LAB_ce31976
PTR_ce3344c:
    #data LAB_ce31c1e
PTR_ce33450:
    #data LAB_ce320e8
PTR_ce33454:
    #data LAB_ce319c4
PTR_ce33458:
    #data LAB_ce31aaa
PTR_ce3345c:
    #data LAB_ce31b5a
PTR_ce33460:
    #data LAB_ce31c34
PTR_ce33464:
    #data LAB_ce31ca8
PTR_ce33468:
    #data LAB_ce31d2a
PTR_ce3346c:
    #data LAB_ce31dd8
PTR_ce33470:
    #data LAB_ce31e7e
PTR_ce33474:
    #data LAB_ce31ff8
PTR_ce33478:
    #data LAB_ce321be
PTR_ce3347c:
    #data LAB_ce323c8
PTR_ce33480:
    #data FUN_ce32434
PTR_ce33484:
    #data LAB_ce321d0
PTR_ce33488:
    #data LAB_ce322e4
PTR_ce3348c:
    #data LAB_ce3234e
PTR_ce33490:
    #data LAB_ce32468
PTR_ce33494:
    #data LAB_ce324b0
PTR_ce33498:
    #data LAB_ce3250c
PTR_ce3349c:
    #data LAB_ce3257a
PTR_ce334a0:
    #data LAB_ce325ae
PTR_ce334a4:
    #data LAB_ce3261c
PTR_ce334a8:
    #data LAB_ce32784
PTR_ce334ac:
    #data LAB_ce32800
PTR_ce334b0:
    #data FUN_ce32890
PTR_ce334b4:
    #data LAB_ce32904
PTR_ce334b8:
    #data LAB_ce32964
PTR_ce334bc:
    #data LAB_ce32ad0
PTR_ce334c0:
    #data LAB_ce32c20
PTR_ce334c4:
    #data LAB_ce32c88
PTR_ce334c8:
    #data LAB_ce32d20
PTR_ce334cc:
    #data LAB_ce32da6
PTR_ce334d0:
    #data LAB_ce32ee2
PTR_ce334d4:
    #data LAB_ce32fac
PTR_ce334d8:
    #data LAB_ce331ee
PTR_ce334dc:
    #data LAB_ce331ee
PTR_ce334e0:
    #data LAB_ce32db8
PTR_ce334e4:
    #data LAB_ce32dd0
PTR_ce334e8:
    #data LAB_ce32ebc
PTR_ce334ec:
    #data LAB_ce32ef4
PTR_ce334f0:
    #data LAB_ce32f0c
PTR_ce334f4:
    #data LAB_ce32f86
PTR_ce334f8:
    #data LAB_ce32fec
PTR_ce334fc:
    #data LAB_ce3300c
PTR_ce33500:
    #data LAB_ce33170
PTR_ce33504:
    #data LAB_ce3320c
PTR_ce33508:
    #data LAB_ce3320c
PTR_ce3350c:
    #data LAB_ce3320c
PTR_ce33510:
    #data LAB_ce3321c
