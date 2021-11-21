;╔════════════════════════════════════════════╗
;║ S_PL2B : Sabretooth (Victor Creed) Program ║
;╚════════════════════════════════════════════╝
    
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c034f54 0x8C034F54
#symbol loc_8c035162 0x8C035162
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
#symbol loc_8c050834 0x8C050834
#symbol loc_8c050ea4 0x8C050EA4
#symbol loc_8c05115a 0x8C05115A
#symbol loc_8c0511b4 0x8C0511B4
#symbol loc_8c0511e2 0x8C0511E2
#symbol loc_8c0514b8 0x8C0514B8
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
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
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c09c6c8 0x8C09C6C8
#symbol loc_8c09cd9c 0x8C09CD9C
#symbol loc_8c0e3a70 0x8C0E3A70
#symbol loc_8c0e3bc0 0x8C0E3BC0
#symbol loc_8c0e402c 0x8C0E402C
#symbol loc_8c0e4224 0x8C0E4224
#symbol loc_8c0e4384 0x8C0E4384
#symbol loc_8c100672 0x8C100672
#symbol loc_8c103660 0x8C103660
#symbol loc_8c12939c 0x8C12939C
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c289636 0x8C289636
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300d4,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300d8,pc),r7
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
    mov.l @(PTR_ce300dc,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    mov.l @(PTR_ce300e8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce302a6
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce301c8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce30240
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce30182
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce30126
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce300b6
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce302f6
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce3032e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    mov.l @(PTR_ce300ec,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300f0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300b0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce300b6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce300f4,pc),r5
    mov.w @(DAT_ce300d6,pc),r6
    mov.l @(PTR_ce300f8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300d4:
    #data 0x0428
DAT_ce300d6:
    #data 0x036c
    #align4

PTR_ce300d8:
    #data PTR_ce335c8
PTR_ce300dc:
    #data loc_8c054508
PTR_ce300e0:
    #data loc_8c054b34
PTR_ce300e4:
    #data loc_8c05496c
PTR_ce300e8:
    #data loc_8c054d04
PTR_ce300ec:
    #data loc_8c053e00
PTR_ce300f0:
    #data loc_8c0542e0
PTR_ce300f4:
    #data DAT_ce3355c
PTR_ce300f8:
    #data loc_8c054e58

;=============================================

LAB_ce300fc:
    mov.w @(DAT_ce30218,pc),r5
    mov.l @(PTR_ce30228,pc),r3
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
    mov.w @(DAT_ce3021a,pc),r0
    mov.l @(PTR_ce3022c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30126:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3021c,pc),r3
    mov r4,r14
    mov.w @(DAT_ce3021e,pc),r6
    add r14,r3
    mov.l @(PTR_ce30230,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce30234,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3014e
    mov.l @r15,r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce30158

LAB_ce3014e:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30158:
    mov.w @(DAT_ce3021e,pc),r5
    mov.l @(PTR_ce30228,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3021a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3022c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30182:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30238,pc),r5
    mov.w @(DAT_ce30220,pc),r6
    mov.l @(PTR_ce30234,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301a0
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301a0:
    mov.w @(DAT_ce30220,pc),r5
    mov.l @(PTR_ce30228,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3021a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3022c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301c8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3023c,pc),r5
    mov.w @(DAT_ce30222,pc),r6
    mov.l @(PTR_ce30234,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301e8
    mov.w @(DAT_ce30224,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce301f0

LAB_ce301e8:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301f0:
    mov.w @(DAT_ce30222,pc),r5
    mov.l @(PTR_ce30228,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3021a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3022c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30218:
    #data 0x036c
DAT_ce3021a:
    #data 0x01e9
DAT_ce3021c:
    #data 0x02a4
DAT_ce3021e:
    #data 0x0374
DAT_ce30220:
    #data 0x0384
DAT_ce30222:
    #data 0x038c
DAT_ce30224:
    #data 0x040c
    #align4

PTR_ce30228:
    #data loc_8c055c3a
PTR_ce3022c:
    #data loc_8c0530d8
PTR_ce30230:
    #data DAT_ce3356c
PTR_ce30234:
    #data loc_8c054e58
PTR_ce30238:
    #data DAT_ce33580
PTR_ce3023c:
    #data DAT_ce335a8

;=============================================

FUN_ce30240:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3034e,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30350,pc),r6
    add r14,r3
    mov.l @(PTR_ce30358,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce3035c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30272
    mov.w @(DAT_ce30352,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30272
    mov.l @r15,r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce3027c

LAB_ce30272:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3027c:
    mov.w @(DAT_ce30350,pc),r5
    mov.l @(PTR_ce30360,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30354,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30364,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302a6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30368,pc),r5
    mov.w @(DAT_ce30356,pc),r6
    mov.l @(PTR_ce3035c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302c6
    mov.w @(DAT_ce30352,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302ce

LAB_ce302c6:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302ce:
    mov.w @(DAT_ce30356,pc),r5
    mov.l @(PTR_ce30360,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30354,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30364,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302f6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3036c,pc),r3
    jsr @r3
    mov 0x09,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30310
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30310:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x09,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30354,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30364,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3032e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30370,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30346
    mov.w @(DAT_ce30352,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30374

LAB_ce30346:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3034e:
    #data 0x02a4
DAT_ce30350:
    #data 0x037c
DAT_ce30352:
    #data 0x040c
DAT_ce30354:
    #data 0x01e9
DAT_ce30356:
    #data 0x0394
    #align4

PTR_ce30358:
    #data DAT_ce33594
PTR_ce3035c:
    #data loc_8c054e58
PTR_ce30360:
    #data loc_8c055c3a
PTR_ce30364:
    #data loc_8c0530d8
PTR_ce30368:
    #data DAT_ce335b8
PTR_ce3036c:
    #data loc_8c054da0
PTR_ce30370:
    #data loc_8c054d1c

;=============================================

LAB_ce30374:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30478,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30488,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30392:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce303be
    mov r4,r14
    tst r0,r0
    bf LAB_ce303ae
    bsr FUN_ce303f4
    mov r14,r4
    tst r0,r0
    bf LAB_ce303ae
    bsr FUN_ce3042a
    mov r14,r4
    tst r0,r0
    bt LAB_ce303b6

LAB_ce303ae:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce303b6:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303be:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3048c,pc),r5
    mov.w @(DAT_ce3047a,pc),r6
    mov.l @(PTR_ce30490,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303de
    mov.w @(DAT_ce3047c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303e6

LAB_ce303de:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303e6:
    mov.w @(DAT_ce3047e,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303f4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30494,pc),r5
    mov.w @(DAT_ce30480,pc),r6
    mov.l @(PTR_ce30490,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30414
    mov.w @(DAT_ce3047c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3041c

LAB_ce30414:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3041c:
    mov.w @(DAT_ce3047e,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3042a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30498,pc),r5
    mov.w @(DAT_ce30482,pc),r6
    mov.l @(PTR_ce30490,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3044a
    mov.w @(DAT_ce3047c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30452

LAB_ce3044a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30452:
    mov.w @(DAT_ce3047e,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30460:
    rts
    nop

LAB_ce30464:
    mov.w @(DAT_ce30484,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce3049c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30478:
    #data 0x01e9
DAT_ce3047a:
    #data 0x038c
DAT_ce3047c:
    #data 0x040c
DAT_ce3047e:
    #data 0x0258
DAT_ce30480:
    #data 0x037c
DAT_ce30482:
    #data 0x0394
DAT_ce30484:
    #data 0x01ff
    #align4

PTR_ce30488:
    #data loc_8c0530d8
PTR_ce3048c:
    #data DAT_ce335a8
PTR_ce30490:
    #data loc_8c054e58
PTR_ce30494:
    #data DAT_ce33594
PTR_ce30498:
    #data DAT_ce335b8
PTR_ce3049c:
    #data PTR_ce33638

;=============================================

LAB_ce304a0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce305a8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3059a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce304ca
    mov.w @(DAT_ce3059c,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce304c2
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce304e2
    mov.l @r15+,r14

LAB_ce304c2:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30578
    mov.l @r15+,r14

LAB_ce304ca:
    mov.w @(DAT_ce3059c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce304da
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30638
    mov.l @r15+,r14

LAB_ce304da:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce306fc
    mov.l @r15+,r14

LAB_ce304e2:
    mov.w @(DAT_ce3059e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30504
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce30516
    cmp/eq 0x02,r0
    bt LAB_ce3052a
    bra LAB_ce3053c
    nop

LAB_ce30504:
    mov.l @(PTR_ce305ac,pc),r3
    mov r4,r5
    mov.w @(DAT_ce305a0,pc),r0
    mov 0x14,r12
    mov r4,r13
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce305a2,pc),r0
    bra LAB_ce3053c
    mov.b r13,@(r0,r14)

LAB_ce30516:
    mov.w @(DAT_ce305a0,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce305b0,pc),r2
    mov r6,r5
    mov r6,r13
    mov 0x15,r12
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce305a2,pc),r0
    bra LAB_ce3053c
    mov.b r13,@(r0,r14)

LAB_ce3052a:
    mov.l @(PTR_ce305b4,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce305a0,pc),r0
    mov r6,r13
    mov r6,r5
    mov 0x16,r12
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce305a2,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce3053c:
    mov.w @(DAT_ce305a4,pc),r0
    mov.l @(PTR_ce305b8,pc),r3
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
    mov.l @(PTR_ce305bc,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce305c0,pc),r3
    mov r14,r4
    mov 0x07,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30578:
    mov.w @(DAT_ce3059e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce305c4
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce305d6
    cmp/eq 0x02,r0
    bt LAB_ce305ea
    bra LAB_ce305fc
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3059a:
    #data 0x01fe
DAT_ce3059c:
    #data 0x01f9
DAT_ce3059e:
    #data 0x01e8
DAT_ce305a0:
    #data 0x03f4
DAT_ce305a2:
    #data 0x01a7
DAT_ce305a4:
    #data 0x01a1
    #align4

PTR_ce305a8:
    #data loc_8c052b4c
PTR_ce305ac:
    #data DAT_ce33514
PTR_ce305b0:
    #data DAT_ce33518
PTR_ce305b4:
    #data DAT_ce3351c
PTR_ce305b8:
    #data loc_8c2896b0
PTR_ce305bc:
    #data loc_8c04223a
PTR_ce305c0:
    #data loc_8c034e8c

;=============================================

LAB_ce305c4:
    mov.l @(PTR_ce306d8,pc),r3
    mov 0x06,r4
    mov.w @(DAT_ce306ce,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306d0,pc),r0
    bra LAB_ce305fc
    mov.b r12,@(r0,r14)

LAB_ce305d6:
    mov.w @(DAT_ce306ce,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce306dc,pc),r2
    mov 0x07,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce306d0,pc),r0
    bra LAB_ce305fc
    mov.b r12,@(r0,r14)

LAB_ce305ea:
    mov.l @(PTR_ce306e0,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce306ce,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x08,r4
    mov.w @(DAT_ce306d0,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce305fc:
    mov.w @(DAT_ce306d2,pc),r0
    mov.l @(PTR_ce306e4,pc),r3
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
    mov.l @(PTR_ce306e8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce306ec,pc),r3
    mov 0x09,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30638:
    mov.w @(DAT_ce306d4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3065a
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce3066c
    cmp/eq 0x02,r0
    bt LAB_ce30680
    bra LAB_ce30692
    nop

LAB_ce3065a:
    mov.l @(PTR_ce306f0,pc),r3
    mov 0x03,r4
    mov.w @(DAT_ce306ce,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306d0,pc),r0
    bra LAB_ce30692
    mov.b r12,@(r0,r14)

LAB_ce3066c:
    mov.w @(DAT_ce306ce,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce306f4,pc),r2
    mov 0x04,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce306d0,pc),r0
    bra LAB_ce30692
    mov.b r12,@(r0,r14)

LAB_ce30680:
    mov.l @(PTR_ce306f8,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce306ce,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x05,r4
    mov.w @(DAT_ce306d0,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce30692:
    mov.w @(DAT_ce306d2,pc),r0
    mov.l @(PTR_ce306e4,pc),r3
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
    mov.l @(PTR_ce306e8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce306ec,pc),r3
    mov 0x08,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306ce:
    #data 0x03f4
DAT_ce306d0:
    #data 0x01a7
DAT_ce306d2:
    #data 0x01a1
DAT_ce306d4:
    #data 0x01e8
    #align4

PTR_ce306d8:
    #data DAT_ce33514
PTR_ce306dc:
    #data DAT_ce33518
PTR_ce306e0:
    #data DAT_ce3351c
PTR_ce306e4:
    #data loc_8c2896b0
PTR_ce306e8:
    #data loc_8c04223a
PTR_ce306ec:
    #data loc_8c034e8c
PTR_ce306f0:
    #data DAT_ce33520
PTR_ce306f4:
    #data DAT_ce33524
PTR_ce306f8:
    #data DAT_ce33528

;=============================================

LAB_ce306fc:
    mov.w @(DAT_ce307e8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3071e
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce30730
    cmp/eq 0x02,r0
    bt LAB_ce30744
    bra LAB_ce30756
    nop

LAB_ce3071e:
    mov.l @(PTR_ce307f4,pc),r3
    mov 0x09,r4
    mov.w @(DAT_ce307ea,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307ec,pc),r0
    bra LAB_ce30756
    mov.b r12,@(r0,r14)

LAB_ce30730:
    mov.w @(DAT_ce307ea,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce307f8,pc),r2
    mov 0x0A,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307ec,pc),r0
    bra LAB_ce30756
    mov.b r12,@(r0,r14)

LAB_ce30744:
    mov.l @(PTR_ce307fc,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce307ea,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x0B,r4
    mov.w @(DAT_ce307ec,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce30756:
    mov.w @(DAT_ce307ee,pc),r0
    mov.l @(PTR_ce30800,pc),r3
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
    mov.l @(PTR_ce30804,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce30808,pc),r3
    mov 0x0A,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30792:
    mov.w @(DAT_ce307f0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce307a2
    mov.w @(DAT_ce307f2,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce307b2

LAB_ce307a2:
    mov.w @(DAT_ce307f0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce307b6
    mov.w @(DAT_ce307f2,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce307b6

LAB_ce307b2:
    bra LAB_ce307ba
    nop

LAB_ce307b6:
    rts
    nop

LAB_ce307ba:
    mov.w @(DAT_ce307f0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce307c6
    bra LAB_ce30892
    nop

LAB_ce307c6:
    mov.w @(DAT_ce307e8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3080c
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce3081e
    cmp/eq 0x02,r0
    bt LAB_ce30832
    bra LAB_ce30844
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307e8:
    #data 0x01e8
DAT_ce307ea:
    #data 0x03f4
DAT_ce307ec:
    #data 0x01a7
DAT_ce307ee:
    #data 0x01a1
DAT_ce307f0:
    #data 0x01fe
DAT_ce307f2:
    #data 0x01d6
    #align4

PTR_ce307f4:
    #data DAT_ce33520
PTR_ce307f8:
    #data DAT_ce33524
PTR_ce307fc:
    #data DAT_ce33528
PTR_ce30800:
    #data loc_8c2896b0
PTR_ce30804:
    #data loc_8c04223a
PTR_ce30808:
    #data loc_8c034e8c

;=============================================

LAB_ce3080c:
    mov.l @(PTR_ce30934,pc),r3
    mov 0x0C,r4
    mov.w @(DAT_ce30928,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3092a,pc),r0
    bra LAB_ce30844
    mov.b r12,@(r0,r14)

LAB_ce3081e:
    mov.w @(DAT_ce30928,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30938,pc),r2
    mov 0x0D,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3092a,pc),r0
    bra LAB_ce30844
    mov.b r12,@(r0,r14)

LAB_ce30832:
    mov.l @(PTR_ce3093c,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce30928,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x0E,r4
    mov.w @(DAT_ce3092a,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce30844:
    mov.w @(DAT_ce3092c,pc),r0
    mov.l @(PTR_ce30940,pc),r3
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
    mov.l @(PTR_ce30944,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30948,pc),r3
    mov 0x0B,r5
    mov r12,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3092e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30888
    mov.w @(DAT_ce3092e,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30888:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30892:
    mov.w @(DAT_ce30930,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308b4
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce308c6
    cmp/eq 0x02,r0
    bt LAB_ce308da
    bra LAB_ce308ec
    nop

LAB_ce308b4:
    mov.l @(PTR_ce3094c,pc),r3
    mov 0x0F,r4
    mov.w @(DAT_ce30928,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3092a,pc),r0
    bra LAB_ce308ec
    mov.b r12,@(r0,r14)

LAB_ce308c6:
    mov.w @(DAT_ce30928,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30950,pc),r2
    mov 0x10,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3092a,pc),r0
    bra LAB_ce308ec
    mov.b r12,@(r0,r14)

LAB_ce308da:
    mov.l @(PTR_ce30954,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce30928,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x11,r4
    mov.w @(DAT_ce3092a,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce308ec:
    mov.w @(DAT_ce3092c,pc),r0
    mov.l @(PTR_ce30940,pc),r3
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
    mov.l @(PTR_ce30944,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce30948,pc),r3
    mov 0x0C,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30928:
    #data 0x03f4
DAT_ce3092a:
    #data 0x01a7
DAT_ce3092c:
    #data 0x01a1
DAT_ce3092e:
    #data 0x01d6
DAT_ce30930:
    #data 0x01e8
    #align4

PTR_ce30934:
    #data DAT_ce3352c
PTR_ce30938:
    #data DAT_ce33530
PTR_ce3093c:
    #data DAT_ce33534
PTR_ce30940:
    #data loc_8c2896b0
PTR_ce30944:
    #data loc_8c04223a
PTR_ce30948:
    #data loc_8c034e8c
PTR_ce3094c:
    #data DAT_ce33538
PTR_ce30950:
    #data DAT_ce3353c
PTR_ce30954:
    #data DAT_ce33540

;=============================================

LAB_ce30958:
    mov.w @(DAT_ce30a62,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30a6c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3096c:
    sts.l PR,@-r15
    mov.l @(PTR_ce30a70,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce3097a:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30a74,pc),r3
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
    mov.w @(DAT_ce30a64,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce309de
    mov.w @(DAT_ce30a66,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce309d6
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce309f6
    mov.l @r15+,r14

LAB_ce309d6:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30ac6
    mov.l @r15+,r14

LAB_ce309de:
    mov.w @(DAT_ce30a66,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce309ee
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30ae8
    mov.l @r15+,r14

LAB_ce309ee:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30b0a
    mov.l @r15+,r14

LAB_ce309f6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30a78,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30a10
    lds.l @r15+,PR
    mov.l @(PTR_ce30a7c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30a10:
    mov.w @(DAT_ce30a68,pc),r0
    mov.l @(PTR_ce30a80,pc),r5
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a2a
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce30ac0
    cmp/eq 0x02,r0
    bt LAB_ce30a88
    bra LAB_ce30ac0
    nop

LAB_ce30a2a:
    mov.w @(DAT_ce30a6a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30ac0
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x19,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r5,r3
    mov 0x14,r5
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    lds.l @r15+,PR
    mov.l @(PTR_ce30a84,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a62:
    #data 0x01ff
DAT_ce30a64:
    #data 0x01fe
DAT_ce30a66:
    #data 0x01f9
DAT_ce30a68:
    #data 0x01e8
DAT_ce30a6a:
    #data 0x0141
    #align4

PTR_ce30a6c:
    #data PTR_ce33648
PTR_ce30a70:
    #data loc_8c0511e2
PTR_ce30a74:
    #data loc_8c052c84
PTR_ce30a78:
    #data loc_8c034dee
PTR_ce30a7c:
    #data loc_8c051648
PTR_ce30a80:
    #data loc_8c2896b0
PTR_ce30a84:
    #data loc_8c04223a

;=============================================

LAB_ce30a88:
    mov.w @(DAT_ce30ba4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30ac0
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x1A,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r5,r3
    mov 0x16,r5
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    lds.l @r15+,PR
    mov.l @(PTR_ce30ba8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce30ac0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30ac6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30bac,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ae0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30bb0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30ae0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30ae8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30bac,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30b02
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30bb0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30b02:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30b0a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30bac,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30b24
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30bb0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30b24:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30b2c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30bb4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30bb8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30b42:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30bbc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30bc0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30ba6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b62
    bsr FUN_ce30b82
    mov r14,r4
    bra LAB_ce30b66
    nop

LAB_ce30b62:
    bsr FUN_ce30bd0
    mov r14,r4

LAB_ce30b66:
    mov.l @(PTR_ce30bc4,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30b7c
    lds.l @r15+,PR
    mov.l @(PTR_ce30bc8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30b7c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30b82:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30bac,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30b9c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30bcc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30b9c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ba4:
    #data 0x0141
DAT_ce30ba6:
    #data 0x01fe
    #align4

PTR_ce30ba8:
    #data loc_8c04223a
PTR_ce30bac:
    #data loc_8c034dee
PTR_ce30bb0:
    #data loc_8c051648
PTR_ce30bb4:
    #data loc_8c050084
PTR_ce30bb8:
    #data loc_8c04ff88
PTR_ce30bbc:
    #data loc_8c04fea8
PTR_ce30bc0:
    #data loc_8c050048
PTR_ce30bc4:
    #data loc_8c052ce2
PTR_ce30bc8:
    #data loc_8c052dac
PTR_ce30bcc:
    #data loc_8c05176e

;=============================================

FUN_ce30bd0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d28,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30bea
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d2c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30bea:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30bf2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30c50
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x12,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r4
    mov.w @(DAT_ce30d20,pc),r0
    mov.b r3,@(r0,r14)
    add 0xA8,r0
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30d30,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30d34,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30d38,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30d3c,pc),r2
    mov 0x14,r5
    mov 0x05,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30d40,pc),r3
    mov 0x16,r5
    jsr @r3
    mov r14,r4

LAB_ce30c50:
    mov.w @(DAT_ce30d22,pc),r0
    mov 0x03,r2
    mov.l @(PTR_ce30d44,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce30d48,pc),r3
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
    mov.l @(PTR_ce30d28,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cb0
    lds.l @r15+,PR
    mov.l @(PTR_ce30d4c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30cb0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30cb6:
    mov r4,r3
    mov.l @(PTR_ce30d50,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30cc8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d28,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30d24,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30d1a
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
    mov 0x22,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce30d54,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce30d26,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30d1a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30d1a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d20:
    #data 0x01f9
DAT_ce30d22:
    #data 0x01ff
DAT_ce30d24:
    #data 0x0141
DAT_ce30d26:
    #data 0x01d2
    #align4

PTR_ce30d28:
    #data loc_8c034dee
PTR_ce30d2c:
    #data loc_8c05176e
PTR_ce30d30:
    #data loc_8c2896b0
PTR_ce30d34:
    #data loc_8c052b4c
PTR_ce30d38:
    #data loc_8c056de4
PTR_ce30d3c:
    #data loc_8c034e8c
PTR_ce30d40:
    #data loc_8c04223a
PTR_ce30d44:
    #data loc_8c0511e2
PTR_ce30d48:
    #data loc_8c052c84
PTR_ce30d4c:
    #data loc_8c051648
PTR_ce30d50:
    #data PTR_ce33658
DAT_ce30d54:
    #data 0xc17d5555

;=============================================

LAB_ce30d58:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30e5c,pc),r3
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
    cmp/eq 0x16,r0
    bf LAB_ce30dd4
    mova @(DAT_ce30e60,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30e64,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30e58,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce30dcc
    mov 0x02,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30dcc:
    mov.l @(PTR_ce30e68,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4

LAB_ce30dd4:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce30de6
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce30de6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30dec:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30e5c,pc),r3
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
    bt LAB_ce30e40
    lds.l @r15+,PR
    mov.l @(PTR_ce30e6c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e40:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e46:
    mov r4,r3
    mov.l @(PTR_ce30e70,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e58:
    #data 0x01d2
    #align4

PTR_ce30e5c:
    #data loc_8c034dee
DAT_ce30e60:
    #data 0xc1200000
DAT_ce30e64:
    #data 0x3ed55555
PTR_ce30e68:
    #data loc_8c034e8c
PTR_ce30e6c:
    #data loc_8c051648
PTR_ce30e70:
    #data PTR_ce33664

;=============================================

LAB_ce30e74:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30f9c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30f92,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30ecc
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce30fa0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30fa4,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30fa8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30fac,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30f94,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce30ec6
    mov r14,r4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30ec6:
    lds.l @r15+,PR
    bra LAB_ce30ed2
    mov.l @r15+,r14

LAB_ce30ecc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30ed2:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30f9c,pc),r3
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
    mov.w @(DAT_ce30f96,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce30f56
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    mov.w @(DAT_ce30f96,pc),r0
    mov 0x02,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30f98,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce30fb0,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f56:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30f5c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30f9c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f76
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30fb4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30f76:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30f7e:
    mov 0x20,r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30fb8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f92:
    #data 0x0141
DAT_ce30f94:
    #data 0x01d2
DAT_ce30f96:
    #data 0x041c
DAT_ce30f98:
    #data 0x01f9
    #align4

PTR_ce30f9c:
    #data loc_8c034dee
DAT_ce30fa0:
    #data 0x417d5555
DAT_ce30fa4:
    #data 0xbea00000
DAT_ce30fa8:
    #data 0x40cdb6db
DAT_ce30fac:
    #data 0xbf092492
PTR_ce30fb0:
    #data loc_8c034e8c
PTR_ce30fb4:
    #data loc_8c051648
PTR_ce30fb8:
    #data PTR_ce33670

;=============================================

LAB_ce30fbc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310d4,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x20,r1
    mov.l @(PTR_ce310d8,pc),r2
    and 0x01,r0
    add r14,r1
    add 0x01,r0
    mov.b r0,@r1
    mov 0x01,r3
    mov.w @(DAT_ce310ce,pc),r0
    mov 0x12,r5
    mov.b r3,@(r0,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r6
    mov.w @(DAT_ce310d0,pc),r3
    add r3,r6
    jsr @r2
    mov r14,r4
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30ffc
    lds.l @r15+,PR
    mov.l @(PTR_ce310dc,pc),r2
    mov 0x02,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30ffc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31002:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310e0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31026
    mov.b @(0x5,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce310d8,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x5,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31026:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3102c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310e0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31050
    mov.b @(0x5,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce310d8,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x5,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31050:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31056:
    mov r4,r3
    mov.l @(PTR_ce310e4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31068:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce31098
    mov 0x00,r12
    cmp/eq 0x02,r0
    bt LAB_ce3111c
    cmp/eq 0x01,r0
    bt LAB_ce31124
    cmp/eq 0x03,r0
    bt LAB_ce31124
    cmp/eq 0x04,r0
    bt LAB_ce31124
    bra LAB_ce31126
    nop

LAB_ce31098:
    mov.l @(PTR_ce310d4,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce310e8,pc),r3
    mov 0x0F,r1
    and r0,r1
    jsr @r3
    mov 0x03,r0
    mov.l @(PTR_ce310ec,pc),r2
    mov 0x21,r1
    add r14,r1
    mov.b r0,@r1
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce310c2
    mov.l @(PTR_ce310f0,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x01,r3
    cmp/gt r3,r0
    bf LAB_ce310f4

LAB_ce310c2:
    mov 0x20,r0
    mov 0x02,r1
    mov.b r1,@(r0,r14)
    mov 0x21,r0
    bra LAB_ce31120
    mov.b r12,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310ce:
    #data 0x012c
DAT_ce310d0:
    #data 0x00ff
    #align4

PTR_ce310d4:
    #data loc_8c03319e
PTR_ce310d8:
    #data loc_8c034e8c
PTR_ce310dc:
    #data loc_8c0e4384
PTR_ce310e0:
    #data loc_8c034dee
PTR_ce310e4:
    #data PTR_ce3367c
PTR_ce310e8:
    #data loc_8c12939c
PTR_ce310ec:
    #data loc_8c289636
PTR_ce310f0:
    #data loc_8c0514b8

;=============================================

LAB_ce310f4:
    mov 0x21,r0
    mov.b @(r0,r14),r4
    mov 0x01,r13
    extu.b r4,r4
    mov r4,r0
    nop
    cmp/eq 0x02,r0
    bt/s LAB_ce31126
    and r4,r13
    mov.w @(DAT_ce311d4,pc),r0
    mov.w @(DAT_ce311d2,pc),r2
    mov.l @(PTR_ce311d8,pc),r3
    mov.b r2,@(r0,r14)
    mov 0x21,r0
    mov.b @(r0,r14),r5
    extu.b r5,r5
    jsr @r3
    mov r14,r4
    bra LAB_ce31126
    nop

LAB_ce3111c:
    mov 0x21,r0
    mov.b r12,@(r0,r14)

LAB_ce31120:
    bra LAB_ce31126
    mov r12,r13

LAB_ce31124:
    mov 0x03,r13

LAB_ce31126:
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce311dc,pc),r2
    mov r14,r4
    mov 0x13,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31138:
    mov.w @(DAT_ce311d6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x16,r0
    bf LAB_ce31164
    mov.l @(PTR_ce311e0,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce31164
    lds.l @r15+,PR
    mov.l @(PTR_ce311e4,pc),r2
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31164:
    mov 0x20,r0
    mov.l @(PTR_ce311e8,pc),r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31184
    cmp/eq 0x02,r0
    bt LAB_ce31220
    cmp/eq 0x01,r0
    bt LAB_ce31220
    cmp/eq 0x03,r0
    bt LAB_ce31220
    cmp/eq 0x04,r0
    bt LAB_ce31220
    bra LAB_ce31224
    nop

LAB_ce31184:
    mov 0x21,r0
    mov.b @(r0,r14),r0
    mov 0x7F,r4
    extu.b r0,r0
    and r4,r0
    cmp/eq 0x02,r0
    bt LAB_ce31198
    mov.w @(DAT_ce311d4,pc),r0
    mov.w @(DAT_ce311d2,pc),r2
    mov.b r2,@(r0,r14)

LAB_ce31198:
    mov 0x21,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    and r4,r0
    cmp/eq 0x01,r0
    bf LAB_ce311f0
    jsr @r13
    mov r14,r4
    mov 0x21,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x80,r0
    bt LAB_ce31224
    mov.l @(PTR_ce311ec,pc),r3
    mov 0x21,r0
    mov 0x03,r2
    mov 0x11,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce311dc,pc),r2
    mov 0x13,r5
    mov r14,r4
    mov 0x02,r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311d2:
    #data 0x00ff
DAT_ce311d4:
    #data 0x0326
DAT_ce311d6:
    #data 0x01d0
    #align4

PTR_ce311d8:
    #data loc_8c0e4384
PTR_ce311dc:
    #data loc_8c034e8c
PTR_ce311e0:
    #data loc_8c046c8a
PTR_ce311e4:
    #data loc_8c051648
PTR_ce311e8:
    #data loc_8c034dee
PTR_ce311ec:
    #data loc_8c042008

;=============================================

LAB_ce311f0:
    mov.w @(DAT_ce312dc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31218
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x21,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31208
    mov.b @(r0,r14),r0
    mov 0x0F,r12

LAB_ce31208:
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31210
    mov 0x10,r12

LAB_ce31210:
    mov.l @(PTR_ce312e8,pc),r2
    mov r12,r5
    jsr @r2
    mov r14,r4

LAB_ce31218:
    jsr @r13
    mov r14,r4
    bra LAB_ce31224
    nop

LAB_ce31220:
    jsr @r13
    mov r14,r4

LAB_ce31224:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3122e:
    mov.w @(DAT_ce312de,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce312ec,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31242:
    mov r4,r3
    mov.l @(PTR_ce312f0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31254:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce312e0,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce312e2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce312e4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31280
    fldi0 fr4
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31280:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce312e4,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x30,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce312f4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce312f8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce312fc,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31300,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce312e4,pc),r0
    mov 0x15,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce31304,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce312dc:
    #data 0x014b
DAT_ce312de:
    #data 0x01e9
DAT_ce312e0:
    #data 0x01f9
DAT_ce312e2:
    #data 0x041c
DAT_ce312e4:
    #data 0x01a3
    #align4

PTR_ce312e8:
    #data loc_8c042008
PTR_ce312ec:
    #data PTR_ce33684
PTR_ce312f0:
    #data PTR_ce336ac
PTR_ce312f4:
    #data loc_8c2896b0
PTR_ce312f8:
    #data loc_8c05218a
PTR_ce312fc:
    #data loc_8c05115a
PTR_ce31300:
    #data loc_8c056de4
PTR_ce31304:
    #data loc_8c034e8c

;=============================================

LAB_ce31308:
    mov.w @(DAT_ce31424,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31426,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3137e
    mov 0x00,r2
    mov.l @(PTR_ce31430,pc),r4
    mov.b r2,@(r0,r14)
    add 0x62,r0
    mov.b @(r0,r14),r3
    mov 0x5C,r0
    extu.b r3,r3
    shll2 r3
    shll r3
    add r4,r3
    fmov.s @r3,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31428,pc),r0
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    shll2 r3
    shll r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3142a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31364
    mov r14,r4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31364:
    mov.l @(PTR_ce31434,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce31438,pc),r2
    mov 0x01,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31438,pc),r3
    mov 0x01,r6
    mov r6,r5
    jsr @r3
    mov r14,r4

LAB_ce3137e:
    mov.w @(DAT_ce3142c,pc),r0
    mov.b @(r0,r14),r4
    tst r4,r4
    bt LAB_ce31390
    exts.b r4,r0
    tst 0x01,r0
    bt LAB_ce31390
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31390:
    mov.l @(PTR_ce3143c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31400
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31424,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31440,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce3142c,pc),r0
    mov.b @(r0,r14),r4
    tst r4,r4
    bt LAB_ce313d0
    exts.b r4,r0
    tst 0x01,r0
    bf LAB_ce313d0
    mova @(DAT_ce31444,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    bra LAB_ce313de
    mov 0x03,r13

LAB_ce313d0:
    mova @(DAT_ce31448,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    mov 0x04,r13
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce313de:
    mov.w @(DAT_ce3142a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce313f8
    mov r13,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce313f8:
    mov.l @(PTR_ce3144c,pc),r3
    mov 0x15,r5
    jsr @r3
    mov r14,r4

LAB_ce31400:
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31424:
    #data 0x01f5
DAT_ce31426:
    #data 0x0141
DAT_ce31428:
    #data 0x01a3
DAT_ce3142a:
    #data 0x01d2
DAT_ce3142c:
    #data 0x019e
    #align4

PTR_ce31430:
    #data DAT_ce33544
PTR_ce31434:
    #data loc_8c0e3a70
PTR_ce31438:
    #data loc_8c0e3bc0
PTR_ce3143c:
    #data loc_8c034dee
DAT_ce31440:
    #data 0x3e555555
DAT_ce31444:
    #data 0xc1055555
DAT_ce31448:
    #data 0xc0a00000
PTR_ce3144c:
    #data loc_8c034e8c

;=============================================

LAB_ce31450:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    fmov.s fr15,@-r15
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt/s LAB_ce3148e
    fldi0 fr15
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    bra LAB_ce3149e
    fmov fr15,@(r0,r14)

LAB_ce3148e:
    mov.l @(PTR_ce315a8,pc),r3
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x01,r0
    bt LAB_ce3149e
    mov.l @(PTR_ce315ac,pc),r1
    jsr @r1
    mov r14,r4

LAB_ce3149e:
    mov.l @(PTR_ce315b0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce314d4
    mov.w @(DAT_ce3159c,pc),r0
    mov 0x00,r3
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3159e,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce315b4,pc),r3
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce314d4:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce314dc:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce315b8,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce315a0,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce314f2:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    fldi0 fr4
    mov 0x32,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3159e,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3159c,pc),r0
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
    mov.w @(DAT_ce315a2,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce315bc,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce315c0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce315c4,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce315c8,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce315cc,pc),r3
    mov r14,r4
    mov 0x05,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31564:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce315b0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3157e
    lds.l @r15+,PR
    mov.l @(PTR_ce315b4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3157e:
    mov.w @(DAT_ce315a4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31596
    mov 0x00,r3
    mov r14,r4
    mov r3,r5
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce315d0,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31596:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3159c:
    #data 0x041c
DAT_ce3159e:
    #data 0x01f9
DAT_ce315a0:
    #data 0x02a4
DAT_ce315a2:
    #data 0x01a1
DAT_ce315a4:
    #data 0x0141
    #align4

PTR_ce315a8:
    #data loc_8c26823c
PTR_ce315ac:
    #data loc_8c0511e2
PTR_ce315b0:
    #data loc_8c034dee
PTR_ce315b4:
    #data loc_8c051648
PTR_ce315b8:
    #data PTR_ce336b8
PTR_ce315bc:
    #data loc_8c2896b0
PTR_ce315c0:
    #data loc_8c05218a
PTR_ce315c4:
    #data loc_8c05115a
PTR_ce315c8:
    #data loc_8c056de4
PTR_ce315cc:
    #data loc_8c034e8c
PTR_ce315d0:
    #data loc_8c09c6c8

;=============================================

LAB_ce315d4:
    mov r4,r3
    mov.l @(PTR_ce316d0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce315e6:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov 0x33,r3
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce316c6,pc),r0
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
    mov.w @(DAT_ce316c8,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce316d4,pc),r3
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
    mov.l @(PTR_ce316d8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce316dc,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce316e0,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce316e4,pc),r3
    mov r14,r4
    mov 0x06,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31654:
    mov r4,r3
    mov.l @(PTR_ce316e8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31666:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce316ec,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce316ca,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce316c0
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce316ca,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce316f0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce316cc,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce316f4,pc),r0
    extu.b r2,r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce316f8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce316fc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce316ce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce316c0
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce316c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce316c6:
    #data 0x041c
DAT_ce316c8:
    #data 0x01a1
DAT_ce316ca:
    #data 0x0141
DAT_ce316cc:
    #data 0x01a3
DAT_ce316ce:
    #data 0x01d2
    #align4

PTR_ce316d0:
    #data PTR_ce336c0
PTR_ce316d4:
    #data loc_8c2896b0
PTR_ce316d8:
    #data loc_8c05218a
PTR_ce316dc:
    #data loc_8c05115a
PTR_ce316e0:
    #data loc_8c056de4
PTR_ce316e4:
    #data loc_8c034e8c
PTR_ce316e8:
    #data PTR_ce336cc
PTR_ce316ec:
    #data loc_8c034dee
PTR_ce316f0:
    #data loc_8c053082
PTR_ce316f4:
    #data DAT_ce33554
DAT_ce316f8:
    #data 0x41cdb6db
DAT_ce316fc:
    #data 0xbfab6db6

;=============================================

LAB_ce31700:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3186c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31870,pc),r12
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    mov 0x00,r13
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
    mov.w @(DAT_ce3185a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3180c
    fldi0 fr15
    mova @(DAT_ce31874,pc),r0
    mov.l @(PTR_ce31878,pc),r3
    fmov.s @r0,fr14
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce317d8
    mov.b @(0x7,r14),r0
    mov 0xFF,r2
    mov.w @(DAT_ce3185e,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3185c,pc),r0
    mov.b r13,@(r0,r14)
    add 0x5A,r0
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce31860,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x03,r2
    mov.w @(DAT_ce31862,pc),r0
    mov.b r3,@(r0,r14)
    add 0x08,r0
    mov.b r2,@(r0,r14)
    add 0xBE,r0
    mov.l @(PTR_ce3187c,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce31880,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce31884,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr14,@(r0,r14)
    mov.w @(DAT_ce31864,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce317bc
    mov 0x05,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce317bc:
    mov 0x0F,r5
    jsr @r12
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31888,pc),r3
    mov 0x05,r6
    mov r6,r5
    mov r14,r4
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce317d8:
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov 0x0A,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce3188c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fdiv fr3,fr2
    fneg fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31890,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr14,@(r0,r14)
    jsr @r12
    mov r14,r4
    bra LAB_ce31898
    nop

LAB_ce3180c:
    mov.w @(DAT_ce31866,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31898
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x01,r5
    mov.w @(DAT_ce31866,pc),r0
    mov 0x03,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31868,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    jsr @r12
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31894,pc),r3
    mov r14,r4
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3185a:
    #data 0x019e
DAT_ce3185c:
    #data 0x019d
DAT_ce3185e:
    #data 0x00c2
DAT_ce31860:
    #data 0x015a
DAT_ce31862:
    #data 0x01ea
DAT_ce31864:
    #data 0x01d2
DAT_ce31866:
    #data 0x041c
DAT_ce31868:
    #data 0x01f9
    #align4

PTR_ce3186c:
    #data loc_8c034dee
PTR_ce31870:
    #data loc_8c034e8c
DAT_ce31874:
    #data 0xbf892492
PTR_ce31878:
    #data loc_8c05264c
PTR_ce3187c:
    #data loc_8c0523d8
DAT_ce31880:
    #data 0xc0a00000
DAT_ce31884:
    #data 0x414db6db
PTR_ce31888:
    #data loc_8c02fec4
DAT_ce3188c:
    #data 0x41000000
DAT_ce31890:
    #data 0x41892492
PTR_ce31894:
    #data loc_8c0511b4

;=============================================

LAB_ce31898:
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce318a6:
    mov.w @(DAT_ce319d8,pc),r0
    mov 0x03,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0xF8,r0
    mov.l @(PTR_ce319e4,pc),r3
    mov 0x01,r2
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
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce31942
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce319da,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fcmp/gt fr1,fr2
    bf LAB_ce31942
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov 0x0F,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x06,r6
    mov.w @(DAT_ce319da,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319dc,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce319e8,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce319ec,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31942:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31948:
    mov.w @(DAT_ce319d8,pc),r0
    mov 0x03,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0xF8,r0
    mov.l @(PTR_ce319e4,pc),r3
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319b0
    mov.w @(DAT_ce319de,pc),r0
    mov 0x01,r3
    mov 0x34,r2
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
    mov 0x22,r0
    mov 0x19,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce319e0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31992
    mov 0x22,r0
    mov.b @(r0,r14),r2
    neg r2,r2
    add 0x20,r2
    mov.b r2,@(r0,r14)

LAB_ce31992:
    mov.l @(PTR_ce319f0,pc),r3
    jsr @r3
    nop
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce319e8,pc),r3
    mov 0x09,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce319b0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce319b6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce319f8
    mov.l @(PTR_ce319e4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31a72
    lds.l @r15+,PR
    mov.l @(PTR_ce319f4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319d8:
    #data 0x01f2
DAT_ce319da:
    #data 0x041c
DAT_ce319dc:
    #data 0x01f9
DAT_ce319de:
    #data 0x01c8
DAT_ce319e0:
    #data 0x01d2
    #align4

PTR_ce319e4:
    #data loc_8c034dee
PTR_ce319e8:
    #data loc_8c034e8c
PTR_ce319ec:
    #data loc_8c0511b4
PTR_ce319f0:
    #data loc_8c02fd26
PTR_ce319f4:
    #data loc_8c051648

;=============================================

LAB_ce319f8:
    mov.l @(PTR_ce31b58,pc),r3
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
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce31a72
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce31b46,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fcmp/gt fr1,fr2
    bf LAB_ce31a72
    mov.w @(DAT_ce31b48,pc),r0
    mov 0x00,r2
    fldi0 fr4
    mov r14,r4
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31b46,pc),r0
    mov.l @(PTR_ce31b5c,pc),r3
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
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a72:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31a78:
    mov r4,r3
    mov.l @(PTR_ce31b60,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31a8a:
    mov r4,r3
    mov.l @(PTR_ce31b64,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31a9c:
    mov.w @(DAT_ce31b4a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce31aba
    mov 0x10,r4
    mov.w @(DAT_ce31b4e,pc),r0
    mov.w @(DAT_ce31b4c,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce31aba:
    mov.b @(0x7,r14),r0
    mov 0x00,r13
    fldi0 fr4
    mov 0x35,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31b48,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31b46,pc),r0
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
    mov.w @(DAT_ce31b50,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce31b68,pc),r3
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.l @r3,r2
    mov.b @(0x2,r14),r0
    add 0x7C,r2
    extu.b r0,r0
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31b52,pc),r0
    mov.l @(PTR_ce31b6c,pc),r2
    mov.w r4,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31b70,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce31b74,pc),r2
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b24:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31b54,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31b56,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31b4a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31b78
    bra LAB_ce31b7a
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b46:
    #data 0x041c
DAT_ce31b48:
    #data 0x01f9
DAT_ce31b4a:
    #data 0x0255
DAT_ce31b4c:
    #data 0x00ff
DAT_ce31b4e:
    #data 0x03f0
DAT_ce31b50:
    #data 0x01a1
DAT_ce31b52:
    #data 0x01ac
DAT_ce31b54:
    #data 0x03f8
DAT_ce31b56:
    #data 0x0328
    #align4

PTR_ce31b58:
    #data loc_8c034dee
PTR_ce31b5c:
    #data loc_8c052dac
PTR_ce31b60:
    #data PTR_ce336dc
PTR_ce31b64:
    #data PTR_ce336e8
PTR_ce31b68:
    #data loc_8c2896b0
PTR_ce31b6c:
    #data loc_8c05218a
PTR_ce31b70:
    #data loc_8c05115a
PTR_ce31b74:
    #data loc_8c034e8c

;=============================================

LAB_ce31b78:
    mov 0x00,r3

LAB_ce31b7a:
    mov.w @(DAT_ce31c1c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31c28,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31c1e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31bb2
    mov.w @(DAT_ce31c20,pc),r0
    mov 0x00,r4
    fldi0 fr3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31c30,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce31c2c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31bb2:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31bba:
    mov.w @(DAT_ce31c22,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov 0x00,r6
    mov.w @(DAT_ce31c24,pc),r0
    mov 0x07,r7
    mov.l @(PTR_ce31c34,pc),r3
    mov.b r2,@(r0,r4)
    mov.b @(0x7,r4),r0
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    jmp @r3
    mov 0x16,r5

LAB_ce31bd6:
    mov.w @(DAT_ce31c22,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov 0x00,r5
    mov.w @(DAT_ce31c24,pc),r0
    mov.b r2,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov r5,r0
    nop
    mov.b r0,@(0x7,r4)
    mov 0x14,r0
    mov.w r0,@(0x1c,r4)
    mov r5,r0
    nop
    mov.l @(PTR_ce31c38,pc),r3
    mov 0x01,r6
    mov.w r0,@(0x1e,r4)
    jmp @r3
    mov 0x16,r5

LAB_ce31c02:
    mov.w @(DAT_ce31c26,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31c3c,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c1c:
    #data 0x03f1
DAT_ce31c1e:
    #data 0x0141
DAT_ce31c20:
    #data 0x03f0
DAT_ce31c22:
    #data 0x03f8
DAT_ce31c24:
    #data 0x0328
DAT_ce31c26:
    #data 0x01f5
    #align4

PTR_ce31c28:
    #data loc_8c034dee
DAT_ce31c2c:
    #data 0x434db6db
PTR_ce31c30:
    #data loc_8c050834
PTR_ce31c34:
    #data loc_8c034f54
PTR_ce31c38:
    #data loc_8c034e8c
PTR_ce31c3c:
    #data PTR_ce336f8

;=============================================

LAB_ce31c40:
    mov.w @(DAT_ce31d78,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov 0x5C,r1
    mov.l r12,@-r15
    add r14,r1
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31d7a,pc),r0
    mov.l @(PTR_ce31d8c,pc),r3
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
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31d7c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31cf4
    mov 0x00,r13
    mov.b r13,@(r0,r14)
    mova @(DAT_ce31d90,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31d7e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31ca4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31ca4:
    mov.w @(0x1e,r14),r0
    mov r0,r3
    mov.w @(DAT_ce31d80,pc),r0
    add 0x35,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31d94,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31d98,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1e,r14),r0
    mov 0x01,r12
    mov.l @(DAT_ce31d9c,pc),r3
    mov 0x00,r6
    mov r0,r5
    and r12,r5
    xor r12,r5
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    mov r12,r6
    mov.l @(DAT_ce31d9c,pc),r3
    mov r0,r5
    and r12,r5
    xor r12,r5
    jsr @r3
    mov r14,r4

LAB_ce31cf4:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce31d04
    bra LAB_ce31e08
    nop

LAB_ce31d04:
    mova @(DAT_ce31da0,pc),r0
    fmov.s @r0,fr15
    mov.w @(DAT_ce31d82,pc),r0
    mov.b @(r0,r14),r4
    tst r4,r4
    bt LAB_ce31db4
    exts.b r4,r0
    tst 0x01,r0
    bf LAB_ce31db4
    mov.l @(PTR_ce31da4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce31db4
    mov.w @(DAT_ce31d84,pc),r0
    mov.l @(r0,r14),r4
    mova @(DAT_ce31da8,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31d7e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31d34
    mova @(DAT_ce31dac,pc),r0
    fmov.s @r0,fr4

LAB_ce31d34:
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31d86,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov fr2,@(r0,r4)
    mov.w @(DAT_ce31d88,pc),r0
    mov.b r13,@(r0,r4)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce31db0,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31d7e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31d74
    mov 0x05,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31d74:
    bra LAB_ce31df6
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d78:
    #data 0x03f8
DAT_ce31d7a:
    #data 0x0328
DAT_ce31d7c:
    #data 0x0141
DAT_ce31d7e:
    #data 0x01d2
DAT_ce31d80:
    #data 0x01a1
DAT_ce31d82:
    #data 0x019e
DAT_ce31d84:
    #data 0x01b0
DAT_ce31d86:
    #data 0x041c
DAT_ce31d88:
    #data 0x01f9
    #align4

PTR_ce31d8c:
    #data loc_8c034dee
DAT_ce31d90:
    #data 0xc27d5555
PTR_ce31d94:
    #data loc_8c2896b0
PTR_ce31d98:
    #data loc_8c0e3a70
DAT_ce31d9c:
    #data 0x8c0e3bc0
DAT_ce31da0:
    #data 0xc0d55555
PTR_ce31da4:
    #data loc_8c05264c
DAT_ce31da8:
    #data 0x41d55555
DAT_ce31dac:
    #data 0xc1d55555
DAT_ce31db0:
    #data 0x3fd55555

;=============================================

LAB_ce31db4:
    mov.w @(DAT_ce31ebe,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31ec0,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce31ecc,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ec2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31df4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31df4:
    mov 0x08,r6

LAB_ce31df6:
    lds.l @r15+,PR
    mov.l @(PTR_ce31ed0,pc),r3
    mov 0x16,r5
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e08:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31e14:
    mov.w @(DAT_ce31ec4,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31ec6,pc),r0
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
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf/s LAB_ce31e50
    fmov fr2,@(r0,r14)
    mov.l @(PTR_ce31ed4,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31e50:
    mov.l @(PTR_ce31ed8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e9e
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce31e78
    mov r14,r4
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    bra LAB_ce31e88
    mov 0x06,r13

LAB_ce31e78:
    mov.b @(0x7,r14),r0
    mov 0x01,r13
    add 0xFF,r0
    mov.b r0,@(0x7,r14)
    mov.w @(0x1e,r14),r0
    and r0,r13
    shll r13
    add 0x01,r13

LAB_ce31e88:
    mov.l @(PTR_ce31edc,pc),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce31ed0,pc),r2
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e9e:
    mov.w @(DAT_ce31ec8,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce31eb6
    mov.w @(DAT_ce31ec8,pc),r0
    mov 0x00,r2
    fldi0 fr4
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce31eb6:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ebe:
    #data 0x03f9
DAT_ce31ec0:
    #data 0x0327
DAT_ce31ec2:
    #data 0x01d2
DAT_ce31ec4:
    #data 0x03f8
DAT_ce31ec6:
    #data 0x0328
DAT_ce31ec8:
    #data 0x0141
    #align4

DAT_ce31ecc:
    #data 0x3ed55555
PTR_ce31ed0:
    #data loc_8c034e8c
PTR_ce31ed4:
    #data loc_8c0511e2
PTR_ce31ed8:
    #data loc_8c034dee
PTR_ce31edc:
    #data loc_8c05218a

;=============================================

LAB_ce31ee0:
    mov.w @(DAT_ce31ffa,pc),r0
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
    mov.w @(DAT_ce31ffc,pc),r0
    mov.l @(PTR_ce32008,pc),r3
    mov.b r2,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31ffe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31f8e
    mov 0x00,r13
    mov.b r13,@(r0,r14)
    mova @(DAT_ce3200c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32000,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f42
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31f42:
    mov.w @(DAT_ce32002,pc),r0
    mov 0x38,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32010,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32014,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x00,r6
    mov.l @(PTR_ce32018,pc),r12
    mov r6,r5
    jsr @r12
    mov r14,r4
    mov 0x00,r5
    mov 0x01,r6
    jsr @r12
    mov r14,r4
    mov 0x01,r5
    mov 0x00,r6
    jsr @r12
    mov r14,r4
    mov 0x01,r6
    mov r6,r5
    jsr @r12
    mov r14,r4

LAB_ce31f8e:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31ff0
    mov.w @(DAT_ce32004,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32006,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce3201c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32020,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32000,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31fe0
    mov 0x08,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31fe0:
    lds.l @r15+,PR
    mov.l @(PTR_ce32024,pc),r3
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ff0:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ffa:
    #data 0x03f8
DAT_ce31ffc:
    #data 0x0328
DAT_ce31ffe:
    #data 0x0141
DAT_ce32000:
    #data 0x01d2
DAT_ce32002:
    #data 0x01a1
DAT_ce32004:
    #data 0x03f9
DAT_ce32006:
    #data 0x0327
    #align4

PTR_ce32008:
    #data loc_8c034dee
DAT_ce3200c:
    #data 0xc22d5555
PTR_ce32010:
    #data loc_8c2896b0
PTR_ce32014:
    #data loc_8c0e3a70
PTR_ce32018:
    #data loc_8c0e402c
DAT_ce3201c:
    #data 0xc0d55555
DAT_ce32020:
    #data 0x3e555555
PTR_ce32024:
    #data loc_8c034e8c

;=============================================

LAB_ce32028:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
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
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf/s LAB_ce32056
    fmov fr2,@(r0,r14)
    mov.l @(PTR_ce3213c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32056:
    mov.w @(DAT_ce3212c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3206e
    mov r14,r4
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce3206e:
    mov.l @(PTR_ce32140,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32084
    lds.l @r15+,PR
    mov.l @(PTR_ce32144,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32084:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3208a:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32148,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce3212e,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce320a0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    fldi0 fr15
    tst r0,r0
    bf/s LAB_ce3215c
    mov 0x00,r13
    mov.w @(DAT_ce32130,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce320cc
    mov.w @(DAT_ce32134,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32132,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce320cc:
    mov.b @(0x7,r14),r0
    mov 0x39,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32136,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32138,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce3213a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3214c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32150,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32154,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32158,pc),r2
    mov 0x16,r5
    mov 0x09,r6
    jsr @r2
    mov r14,r4
    bra LAB_ce321a2
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3212c:
    #data 0x0141
DAT_ce3212e:
    #data 0x02a4
DAT_ce32130:
    #data 0x0255
DAT_ce32132:
    #data 0x00ff
DAT_ce32134:
    #data 0x03f0
DAT_ce32136:
    #data 0x01f9
DAT_ce32138:
    #data 0x041c
DAT_ce3213a:
    #data 0x01a1
    #align4

PTR_ce3213c:
    #data loc_8c0511e2
PTR_ce32140:
    #data loc_8c034dee
PTR_ce32144:
    #data loc_8c051648
PTR_ce32148:
    #data PTR_ce33704
PTR_ce3214c:
    #data loc_8c2896b0
PTR_ce32150:
    #data loc_8c05218a
PTR_ce32154:
    #data loc_8c05115a
PTR_ce32158:
    #data loc_8c034e8c

;=============================================

LAB_ce3215c:
    mov.w @(DAT_ce32274,pc),r0
    mov 0x02,r2
    mov 0x05,r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32276,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32280,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32278,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce321a2
    mov.w @(DAT_ce3227a,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov r15,r5
    mov.w @(DAT_ce32278,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce32288,pc),r3
    mov.b r13,@(r0,r14)
    mova @(DAT_ce32284,pc),r0
    fmov.s fr15,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce321a2:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce321ae:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32274,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32276,pc),r0
    mov.l @(PTR_ce32280,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf/s LAB_ce321f2
    mov 0x00,r4
    mov.w @(DAT_ce32278,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32226
    mov.b @(0x7,r14),r0
    mov 0x01,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32278,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3228c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce321f2:
    mov.l @r15,r3
    mov.b @r3,r2
    tst r2,r2
    bf LAB_ce32226
    mov.w @(DAT_ce3227c,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3227e,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov 0x16,r5
    mov r14,r4
    mov.b r0,@(0x7,r14)
    mov 0x0A,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32290,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32226:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3222e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32280,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32248
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32294,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32248:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32250:
    mov r4,r3
    mov.l @(PTR_ce32298,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32262:
    mov r4,r3
    mov.l @(PTR_ce3229c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32274:
    #data 0x03f8
DAT_ce32276:
    #data 0x0328
DAT_ce32278:
    #data 0x0141
DAT_ce3227a:
    #data 0x03f0
DAT_ce3227c:
    #data 0x03f9
DAT_ce3227e:
    #data 0x0327
    #align4

PTR_ce32280:
    #data loc_8c034dee
DAT_ce32284:
    #data 0x434db6db
PTR_ce32288:
    #data loc_8c050834
PTR_ce3228c:
    #data loc_8c09c6c8
PTR_ce32290:
    #data loc_8c034e8c
PTR_ce32294:
    #data loc_8c051648
PTR_ce32298:
    #data PTR_ce33710
PTR_ce3229c:
    #data PTR_ce3371c

;=============================================

LAB_ce322a0:
    mov.w @(DAT_ce323e0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce322bc
    mov.w @(DAT_ce323e4,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce323e2,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce322bc:
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    fldi0 fr4
    mov 0x3B,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce323e6,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce323e8,pc),r0
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
    mov.w @(DAT_ce323ea,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce323f4,pc),r3
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.l @r3,r2
    mov.b @(0x2,r14),r0
    add 0x7C,r2
    extu.b r0,r0
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce323f8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce323fc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32400,pc),r2
    mov r14,r4
    mov 0x0B,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32320:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce323ec,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce323ee,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce323e0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32342
    bra LAB_ce32344
    mov 0x02,r3

LAB_ce32342:
    mov 0x00,r3

LAB_ce32344:
    mov.w @(DAT_ce323f0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32404,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce323f2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32380
    mov.w @(DAT_ce323e4,pc),r0
    mov 0x00,r4
    fldi0 fr3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce3240c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce323f2,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32408,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32380:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32388:
    mov.w @(DAT_ce323ec,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov 0x0B,r6
    mov.w @(DAT_ce323ee,pc),r0
    mov 0x07,r7
    mov.l @(PTR_ce32410,pc),r3
    mov.b r2,@(r0,r4)
    mov.b @(0x7,r4),r0
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    jmp @r3
    mov 0x16,r5

LAB_ce323a4:
    mov.w @(DAT_ce323ec,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce323ee,pc),r0
    mov.l @(PTR_ce32404,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce323da
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32400,pc),r3
    mov 0x0C,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce323da:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce323e0:
    #data 0x0255
DAT_ce323e2:
    #data 0x00ff
DAT_ce323e4:
    #data 0x03f0
DAT_ce323e6:
    #data 0x01f9
DAT_ce323e8:
    #data 0x041c
DAT_ce323ea:
    #data 0x01a1
DAT_ce323ec:
    #data 0x03f8
DAT_ce323ee:
    #data 0x0328
DAT_ce323f0:
    #data 0x03f1
DAT_ce323f2:
    #data 0x0141
    #align4

PTR_ce323f4:
    #data loc_8c2896b0
PTR_ce323f8:
    #data loc_8c05218a
PTR_ce323fc:
    #data loc_8c05115a
PTR_ce32400:
    #data loc_8c034e8c
PTR_ce32404:
    #data loc_8c034dee
DAT_ce32408:
    #data 0x434db6db
PTR_ce3240c:
    #data loc_8c050834
PTR_ce32410:
    #data loc_8c034f54

;=============================================

LAB_ce32414:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32554,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce3253e,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3242a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32540,pc),r0
    mov r4,r14
    mov 0x02,r12
    mov.l r5,@r15
    mov.b r12,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce32542,pc),r0
    mov 0x5C,r1
    add r14,r1
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32544,pc),r0
    mov.b r12,@(r0,r14)
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    mov 0x6C,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    mov.l @(PTR_ce32558,pc),r3
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32546,pc),r0
    fldi0 fr15
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce324c6
    mov 0x00,r13
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32548,pc),r0
    mov.b r12,@(r0,r14)
    mova @(DAT_ce3255c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3254a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce324b2
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce324b2:
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce32560,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32564,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce324c6:
    mov.w @(DAT_ce3254c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce324d2
    bra LAB_ce3260a
    nop

LAB_ce324d2:
    mov.l @(PTR_ce32568,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce3257c
    mov.w @(DAT_ce3254e,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32550,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce3256c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3254a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3250e
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3250e:
    mov 0x68,r0
    mov r14,r4
    fmov fr15,@(r0,r14)
    mova @(DAT_ce32570,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x01,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32574,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x02,r6
    fmov fr3,@(r0,r14)
    mov 0x0D,r7
    mov.w @(DAT_ce32548,pc),r0
    mov.b r12,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32578,pc),r3
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3253e:
    #data 0x02a4
DAT_ce32540:
    #data 0x03f8
DAT_ce32542:
    #data 0x0328
DAT_ce32544:
    #data 0x01f5
DAT_ce32546:
    #data 0x0141
DAT_ce32548:
    #data 0x01f9
DAT_ce3254a:
    #data 0x01d2
DAT_ce3254c:
    #data 0x019e
DAT_ce3254e:
    #data 0x03f9
DAT_ce32550:
    #data 0x0327
    #align4

PTR_ce32554:
    #data PTR_ce3372c
PTR_ce32558:
    #data loc_8c034dee
DAT_ce3255c:
    #data 0xc1200000
DAT_ce32560:
    #data 0x41ab6db6
DAT_ce32564:
    #data 0xbfab6db6
PTR_ce32568:
    #data loc_8c05264c
DAT_ce3256c:
    #data 0x40555555
DAT_ce32570:
    #data 0x40cdb6db
DAT_ce32574:
    #data 0xbf4db6db
PTR_ce32578:
    #data loc_8c034f54

;=============================================

LAB_ce3257c:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32684,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32678,pc),r0
    mov.l @(r0,r14),r4
    add 0x49,r0
    mov.b r13,@(r0,r4)
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3267a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    fmov fr3,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce32688,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce3268c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3267c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce325d2
    mova @(DAT_ce32690,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce325d2:
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r4)
    mov.l @r15,r3
    mov.l r4,@(0x8,r3)
    mov.b @(0x2,r14),r0
    tst r0,r0
    bt LAB_ce325e8
    bra LAB_ce325ea
    mov 0x03,r13

LAB_ce325e8:
    mov 0x04,r13

LAB_ce325ea:
    mov.l @(PTR_ce32694,pc),r2
    mov r13,r5
    mov r13,r6
    jsr @r2
    mov r14,r4
    mov r14,r4
    mov 0x16,r5
    mov 0x0D,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32698,pc),r3
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3260a:
    mova @(DAT_ce3269c,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov.w @(DAT_ce3267a,pc),r0
    fadd fr3,fr2
    fmov.s @(r0,r14),fr1
    fcmp/gt fr2,fr1
    bf LAB_ce3266a
    mov.w @(DAT_ce3267e,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32680,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x16,r5
    mov.w @(DAT_ce32682,pc),r0
    mov r14,r4
    mov 0x0F,r6
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3267a,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32698,pc),r3
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3266a:
    add 0x04,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32678:
    #data 0x01b0
DAT_ce3267a:
    #data 0x041c
DAT_ce3267c:
    #data 0x01d2
DAT_ce3267e:
    #data 0x03f9
DAT_ce32680:
    #data 0x0327
DAT_ce32682:
    #data 0x01f9
    #align4

PTR_ce32684:
    #data loc_8c05218a
DAT_ce32688:
    #data 0xc2a00000
DAT_ce3268c:
    #data 0xbe555555
DAT_ce32690:
    #data 0x42a00000
PTR_ce32694:
    #data loc_8c02fec4
PTR_ce32698:
    #data loc_8c034e8c
DAT_ce3269c:
    #data 0x42092492

;=============================================

LAB_ce326a0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32792,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    add r14,r1
    mov.w @(DAT_ce32794,pc),r0
    mov.l @(PTR_ce327a4,pc),r3
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32796,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce326f8
    mov.w @(DAT_ce32798,pc),r0
    mov.l @r15,r4
    mov.l @(r0,r14),r3
    mov.l @(0x8,r4),r4
    cmp/eq r4,r3
    bt LAB_ce326f8
    mov.l @(PTR_ce327a8,pc),r1
    jsr @r1
    nop
    mov.l @(PTR_ce327ac,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce326f8:
    mov.w @(DAT_ce3279a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce3272c
    mov 0x00,r4
    mov.b @(r0,r14),r3
    add 0x56,r0
    add 0x3B,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce327b0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3279a,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3272c:
    mov.w @(DAT_ce3279c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3278a
    mov.w @(DAT_ce3279e,pc),r0
    mov 0x05,r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32794,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x02,r3
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x32,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce327a0,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce327b4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce327a2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3276a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3276a:
    mov.l @r15,r4
    mov 0x34,r0
    mov.l @(PTR_ce327b8,pc),r3
    mov 0x00,r5
    mov.l @(0x8,r4),r4
    fmov.s @(r0,r4),fr3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x01,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce327b8,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3278a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32792:
    #data 0x03f8
DAT_ce32794:
    #data 0x0328
DAT_ce32796:
    #data 0x019e
DAT_ce32798:
    #data 0x01b0
DAT_ce3279a:
    #data 0x014b
DAT_ce3279c:
    #data 0x0141
DAT_ce3279e:
    #data 0x03f9
DAT_ce327a0:
    #data 0x01f5
DAT_ce327a2:
    #data 0x01d2
    #align4

PTR_ce327a4:
    #data loc_8c034dee
PTR_ce327a8:
    #data loc_8c02fd26
PTR_ce327ac:
    #data loc_8c051648
PTR_ce327b0:
    #data loc_8c2896b0
DAT_ce327b4:
    #data 0xbf555555
PTR_ce327b8:
    #data loc_8c09cd9c

;=============================================

LAB_ce327bc:
    mov.w @(DAT_ce328c6,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce328c8,pc),r0
    mov.l @(PTR_ce328d0,pc),r3
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3282e
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce328d4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce328ca,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3281e
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3281e:
    mov.l @(PTR_ce328d8,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce328cc,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce3282e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32834:
    mov.w @(DAT_ce328c8,pc),r0
    mov 0x02,r3
    mov 0x5C,r1
    mov.b r3,@(r0,r4)
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
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3289c
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x00,r0
    mov.b r0,@(0x7,r4)
    mova @(DAT_ce328dc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce328e0,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce328ca,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce32896
    mov 0x0E,r6
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce32896:
    mov.l @(PTR_ce328e4,pc),r3
    jmp @r3
    mov 0x16,r5

LAB_ce3289c:
    rts
    nop

LAB_ce328a0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce328d0,pc),r13
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce328e8
    fldi0 fr15
    cmp/eq 0x01,r0
    bt LAB_ce32958
    cmp/eq 0x02,r0
    bf LAB_ce328c2
    bra LAB_ce329dc
    nop

LAB_ce328c2:
    bra LAB_ce329f4
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328c6:
    #data 0x0328
DAT_ce328c8:
    #data 0x01f5
DAT_ce328ca:
    #data 0x01d2
DAT_ce328cc:
    #data 0x0327
    #align4

PTR_ce328d0:
    #data loc_8c034dee
DAT_ce328d4:
    #data 0xc1d55555
PTR_ce328d8:
    #data loc_8c02fd26
DAT_ce328dc:
    #data 0xc0d55555
DAT_ce328e0:
    #data 0x3e555555
PTR_ce328e4:
    #data loc_8c034e8c

;=============================================

LAB_ce328e8:
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
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32930
    mov.l @(PTR_ce32a18,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32930:
    jsr @r13
    mov r14,r4
    mov.w @(DAT_ce32a10,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce329f4
    mov 0x02,r0
    mov.b r0,@(0x7,r14)
    mov 0x00,r3
    mov.w @(DAT_ce32a10,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    bra LAB_ce329f4
    fmov fr15,@(r0,r14)

LAB_ce32958:
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
    jsr @r13
    mov r14,r4
    mov.w @(DAT_ce32a12,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce329f4
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov 0x01,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x03,r6
    mov.w @(DAT_ce32a14,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32a12,pc),r0
    mov.l @(PTR_ce32a1c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32a20,pc),r2
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce329dc:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce329f4
    lds.l @r15+,PR
    mov.l @(PTR_ce32a24,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce329f4:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce329fe:
    mov r4,r3
    mov.l @(PTR_ce32a28,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a10:
    #data 0x0141
DAT_ce32a12:
    #data 0x041c
DAT_ce32a14:
    #data 0x01f9
    #align4

PTR_ce32a18:
    #data loc_8c0511e2
PTR_ce32a1c:
    #data loc_8c034e8c
PTR_ce32a20:
    #data loc_8c0511b4
PTR_ce32a24:
    #data loc_8c051648
PTR_ce32a28:
    #data PTR_ce3373c

;=============================================

LAB_ce32a2c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    fldi0 fr4
    mov 0x44,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32b76,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32b78,pc),r0
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
    mov.w @(DAT_ce32b7a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32b80,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32b84,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32b88,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32b8c,pc),r2
    mov 0x15,r5
    mov 0x0B,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32b90,pc),r3
    mov 0x14,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a9e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32b94,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32ab8
    lds.l @r15+,PR
    mov.l @(PTR_ce32b98,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ab8:
    mov.w @(DAT_ce32b7c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32af4
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x45,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32b80,pc),r3
    mov 0x16,r5
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
    mov.l @(PTR_ce32b90,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce32af4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32afa:
    mov r4,r3
    mov.l @(PTR_ce32b9c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32b0c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    fldi0 fr4
    mov 0x43,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32b76,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32b78,pc),r0
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
    mov.w @(DAT_ce32b7a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32b80,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32b84,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32b88,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32b8c,pc),r2
    mov r14,r4
    mov 0x0C,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b76:
    #data 0x01f9
DAT_ce32b78:
    #data 0x041c
DAT_ce32b7a:
    #data 0x01a1
DAT_ce32b7c:
    #data 0x0141
    #align4

PTR_ce32b80:
    #data loc_8c2896b0
PTR_ce32b84:
    #data loc_8c05218a
PTR_ce32b88:
    #data loc_8c05115a
PTR_ce32b8c:
    #data loc_8c034e8c
PTR_ce32b90:
    #data loc_8c04223a
PTR_ce32b94:
    #data loc_8c034dee
PTR_ce32b98:
    #data loc_8c051648
PTR_ce32b9c:
    #data PTR_ce33744

;=============================================

LAB_ce32ba0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32cb4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32bbc
    mov.l @(PTR_ce32cb8,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce32bfe
    nop

LAB_ce32bbc:
    mov.w @(DAT_ce32cae,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32be4
    mov.w @(DAT_ce32cae,pc),r0
    mov 0x01,r3
    mov r15,r5
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce32cbc,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32cc0,pc),r0
    mov.l @(PTR_ce32cc4,pc),r2
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4

LAB_ce32be4:
    mov.w @(DAT_ce32cae,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce32bfe
    mov.w @(DAT_ce32cae,pc),r0
    mov 0x02,r3
    mov.l @(PTR_ce32cc8,pc),r1
    mov 0x16,r5
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce32bfe:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c06:
    mov r4,r3
    mov.l @(PTR_ce32ccc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32c18:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r3
    fldi0 fr4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32cb0,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32cb2,pc),r0
    mov.l @(PTR_ce32cd0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x3C,r0
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
    lds.l @r15+,PR
    mov.l @(PTR_ce32cd4,pc),r2
    mov r14,r4
    mov 0x02,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32c5c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32cb4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32c86
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32cd4,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32c86:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32c8c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32cb4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32ca6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32cb8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32ca6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32cae:
    #data 0x0141
DAT_ce32cb0:
    #data 0x01f9
DAT_ce32cb2:
    #data 0x041c
    #align4

PTR_ce32cb4:
    #data loc_8c034dee
PTR_ce32cb8:
    #data loc_8c051648
DAT_ce32cbc:
    #data 0x41d55555
DAT_ce32cc0:
    #data 0x433c9249
PTR_ce32cc4:
    #data loc_8c050ea4
PTR_ce32cc8:
    #data loc_8c04223a
PTR_ce32ccc:
    #data PTR_ce3374c
PTR_ce32cd0:
    #data loc_8c05218a
PTR_ce32cd4:
    #data loc_8c034e8c

;=============================================

LAB_ce32cd8:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov 0x03,r6
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce32dac,pc),r0
    mov.b r6,@(r0,r4)
    mov.w @(DAT_ce32dae,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce32cfc
    mov 0x04,r5
    cmp/eq 0x01,r0
    bt LAB_ce32d02
    cmp/eq 0x02,r0
    bt LAB_ce32d02
    bra LAB_ce32d06
    nop

LAB_ce32cfc:
    mov.w @(DAT_ce32dac,pc),r0
    bra LAB_ce32d06
    mov.b r6,@(r0,r4)

LAB_ce32d02:
    mov.w @(DAT_ce32dac,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce32d06:
    mov.l @(PTR_ce32db4,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce32d0c:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce32dae,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce32d2a
    mov 0x04,r5
    cmp/eq 0x01,r0
    bt LAB_ce32d32
    cmp/eq 0x02,r0
    bt LAB_ce32d32
    bra LAB_ce32d36
    nop

LAB_ce32d2a:
    mov.w @(DAT_ce32dac,pc),r0
    mov 0x03,r3
    bra LAB_ce32d36
    mov.b r3,@(r0,r4)

LAB_ce32d32:
    mov.w @(DAT_ce32dac,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce32d36:
    mov.l @(PTR_ce32db4,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce32d3c:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce32dae,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce32d5e
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce32d64
    cmp/eq 0x02,r0
    bt LAB_ce32d6e
    bra LAB_ce32d78
    nop

LAB_ce32d5e:
    mov.w @(DAT_ce32dac,pc),r0
    bra LAB_ce32d74
    mov.b r5,@(r0,r4)

LAB_ce32d64:
    mov.w @(DAT_ce32dac,pc),r0
    mov.b r6,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce32d78
    mov.b r5,@(r0,r4)

LAB_ce32d6e:
    mov.w @(DAT_ce32dac,pc),r0
    mov 0x07,r2
    mov.b r2,@(r0,r4)

LAB_ce32d74:
    mov.w @(DAT_ce32db0,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce32d78:
    mov.l @(PTR_ce32db4,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce32d7e:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce32dae,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce32da0
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce32da6
    cmp/eq 0x02,r0
    bt LAB_ce32db8
    bra LAB_ce32dc2
    nop

LAB_ce32da0:
    mov.w @(DAT_ce32dac,pc),r0
    bra LAB_ce32dbe
    mov.b r5,@(r0,r4)

LAB_ce32da6:
    mov.w @(DAT_ce32dac,pc),r0
    bra LAB_ce32dbe
    mov.b r6,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32dac:
    #data 0x01e9
DAT_ce32dae:
    #data 0x04c9
DAT_ce32db0:
    #data 0x01a3
    #align4

PTR_ce32db4:
    #data loc_8c0530d8

;=============================================

LAB_ce32db8:
    mov.w @(DAT_ce32f18,pc),r0
    mov 0x07,r3
    mov.b r3,@(r0,r4)

LAB_ce32dbe:
    mov.w @(DAT_ce32f1a,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce32dc2:
    mov.l @(PTR_ce32f24,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce32dc8:
    mov r4,r3
    mov.l @(PTR_ce32f28,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32dda:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32f1c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32f2c,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32f30,pc),r0
    fldi0 fr4
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32f34,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32f1e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32e26
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32e26:
    mov.w @(DAT_ce32f20,pc),r0
    mov 0x42,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32f38,pc),r3
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
    mov.l @(PTR_ce32f3c,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce32e5a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32f40,pc),r3
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
    mova @(DAT_ce32f44,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32f22,pc),r0
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fcmp/gt fr1,fr2
    bf LAB_ce32ee6
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce32f1c,pc),r0
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32f22,pc),r0
    mov.l @(PTR_ce32f3c,pc),r3
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov fr2,@(r0,r14)
    mov 0x06,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ee6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32eec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32f40,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32f12
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32f12
    lds.l @r15+,PR
    mov.l @(PTR_ce32f48,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32f12:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f18:
    #data 0x01e9
DAT_ce32f1a:
    #data 0x01a3
DAT_ce32f1c:
    #data 0x01f9
DAT_ce32f1e:
    #data 0x01d2
DAT_ce32f20:
    #data 0x01a1
DAT_ce32f22:
    #data 0x041c
    #align4

PTR_ce32f24:
    #data loc_8c0530d8
PTR_ce32f28:
    #data PTR_ce33758
PTR_ce32f2c:
    #data loc_8c035162
DAT_ce32f30:
    #data 0xc1f00000
DAT_ce32f34:
    #data 0xc11a4924
PTR_ce32f38:
    #data loc_8c2896b0
PTR_ce32f3c:
    #data loc_8c034e8c
PTR_ce32f40:
    #data loc_8c034dee
DAT_ce32f44:
    #data 0xc2ab6db6
PTR_ce32f48:
    #data loc_8c051648

;=============================================

LAB_ce32f4c:
    mov.w @(DAT_ce33050,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32f8c
    mov 0x00,r4
    mov.w @(DAT_ce33052,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32f8c
    mov.w @(DAT_ce33054,pc),r0
    mov.w @(DAT_ce33056,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce32f8c
    mov.w @(DAT_ce33058,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32fa8
    mova @(DAT_ce33068,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce3305a,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bf LAB_ce32f94

LAB_ce32f8c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce32f94:
    mov.l @(PTR_ce3306c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32fc2
    mov r0,r4
    mov.w @(DAT_ce3305c,pc),r0
    mov 0x01,r2
    bra LAB_ce32fc2
    mov.b r2,@(r0,r14)

LAB_ce32fa8:
    mov.w @(DAT_ce33058,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce32fc2
    mov.l @(PTR_ce3306c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32fc2
    mov r0,r4
    mov.w @(DAT_ce3305c,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)

LAB_ce32fc2:
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fcc:
    mov.l r14,@-r15
    mov 0x05,r6
    sts.l PR,@-r15
    mov.l @(PTR_ce33070,pc),r3
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.l @(PTR_ce33074,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3305c,pc),r0
    mov r14,r4
    mov.l @(PTR_ce33078,pc),r1
    mov.b @(r0,r14),r0
    lds.l @r15+,PR
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ff6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33054,pc),r0
    mov r4,r14
    mov.w @(DAT_ce3305e,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce3301c
    mov.w @(DAT_ce33060,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r1
    xor r3,r1
    mov.w r1,@(r0,r14)
    mov.w @(DAT_ce33062,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)

LAB_ce3301c:
    mova @(DAT_ce3307c,pc),r0
    mov.l @(PTR_ce33084,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33080,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33064,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33088,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov r0,r6
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33050:
    #data 0x01a3
DAT_ce33052:
    #data 0x01fe
DAT_ce33054:
    #data 0x01fa
DAT_ce33056:
    #data 0x0c00
DAT_ce33058:
    #data 0x01f9
DAT_ce3305a:
    #data 0x041c
DAT_ce3305c:
    #data 0x01f7
DAT_ce3305e:
    #data 0x0800
DAT_ce33060:
    #data 0x0130
DAT_ce33062:
    #data 0x01d2
DAT_ce33064:
    #data 0x01a0
    #align4

DAT_ce33068:
    #data 0x42d55555
PTR_ce3306c:
    #data loc_8c045790
PTR_ce33070:
    #data loc_8c02fec4
PTR_ce33074:
    #data loc_8c056f2a
PTR_ce33078:
    #data PTR_ce33764
DAT_ce3307c:
    #data 0xc2d55555
DAT_ce33080:
    #data 0x436bb6db
PTR_ce33084:
    #data loc_8c103660
PTR_ce33088:
    #data loc_8c034e8c

;=============================================

LAB_ce3308c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mova @(DAT_ce33170,pc),r0
    mov.l @(PTR_ce33178,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33174,pc),r0
    mov r4,r14
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3316a,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce3317c,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov 0x02,r6
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce330c8:
    rts
    nop

LAB_ce330cc:
    mov.w @(DAT_ce3316c,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33180,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce330ea:
    mov r4,r3
    mov.l @(PTR_ce33184,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce330fc:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x00,r0
    mov.w r0,@(0x1c,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)

LAB_ce33118:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33188,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33144
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce3318c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3317c,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x0F,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33144:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3314a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33188,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33194
    mov.l @(PTR_ce33190,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce3321a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3316a:
    #data 0x01a0
DAT_ce3316c:
    #data 0x01ea
    #align4

DAT_ce33170:
    #data 0xc2a00000
DAT_ce33174:
    #data 0x43892492
PTR_ce33178:
    #data loc_8c103660
PTR_ce3317c:
    #data loc_8c034e8c
PTR_ce33180:
    #data PTR_ce33770
PTR_ce33184:
    #data PTR_ce3377c
PTR_ce33188:
    #data loc_8c034dee
PTR_ce3318c:
    #data loc_8c0e4224
PTR_ce33190:
    #data loc_8c051648

;=============================================

LAB_ce33194:
    mov.w @(DAT_ce332ba,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt/s LAB_ce331e6
    mov 0x01,r12
    mov.w @(DAT_ce332ba,pc),r0
    mov 0x02,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce332bc,pc),r0
    mov.l @(PTR_ce332c4,pc),r2
    mov.l @(r0,r14),r13
    mov 0x34,r0
    fmov.s @(r0,r13),fr3
    mov.w @(DAT_ce332be,pc),r0
    fmov.s fr3,@r15
    fmov.s @(r0,r13),fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov.b @(0x2,r13),r0
    extu.b r0,r5
    jsr @r2
    mov r15,r4
    mov.l @(PTR_ce332c8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce332cc,pc),r4
    mov 0x02,r0
    mov.b r0,@(0x5,r4)
    mov r12,r0
    nop
    mov.b r0,@(0x6,r4)
    mov 0x22,r3
    mov.w @(DAT_ce332c0,pc),r0
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce332d0,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce331e6:
    mov.w @(DAT_ce332ba,pc),r0
    mov.b @(r0,r14),r2
    tst r12,r2
    bt LAB_ce3321a
    mov.b @(r0,r14),r2
    mov 0x01,r3
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov 0x20,r2
    mov.w @(DAT_ce332bc,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r12,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
    add 0x8F,r0
    mov.w @(r0,r14),r1
    xor r1,r3
    mov.w r3,@(r0,r4)
    mov.b @(r0,r4),r2
    mov.l @(PTR_ce332d4,pc),r3
    mov.w @(DAT_ce332c2,pc),r0
    jsr @r3
    mov.b r2,@(r0,r4)

LAB_ce3321a:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33226:
    mov r4,r3
    mov.l @(PTR_ce332d8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33238:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov 0x01,r5
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce332dc,pc),r3
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
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce33264:
    mov r4,r3
    mov.l @(PTR_ce332e0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33276:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce332e4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce332b4
    mov.b @(0x7,r14),r0
    mov r14,r4
    fldi0 fr4
    mov 0x03,r6
    add 0x01,r0
    mov.l @(PTR_ce332f0,pc),r3
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce332e8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x0F,r5
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce332ec,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce332b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce332ba:
    #data 0x0140
DAT_ce332bc:
    #data 0x01c8
DAT_ce332be:
    #data 0x041c
DAT_ce332c0:
    #data 0x01b4
DAT_ce332c2:
    #data 0x01d2
    #align4

PTR_ce332c4:
    #data loc_8c100672
PTR_ce332c8:
    #data loc_8c0423fc
PTR_ce332cc:
    #data loc_8c26a518
PTR_ce332d0:
    #data loc_8c05933c
PTR_ce332d4:
    #data loc_8c02fd26
PTR_ce332d8:
    #data PTR_ce33788
PTR_ce332dc:
    #data loc_8c0e4224
PTR_ce332e0:
    #data PTR_ce33794
PTR_ce332e4:
    #data loc_8c034dee
DAT_ce332e8:
    #data 0xc11a4924
DAT_ce332ec:
    #data 0xbf892492
PTR_ce332f0:
    #data loc_8c034e8c

;=============================================

LAB_ce332f4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce333dc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce333d0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce33326
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

LAB_ce33326:
    mov.w @(DAT_ce333d2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce333c6
    mov.w @(DAT_ce333d4,pc),r0
    mov.l @(PTR_ce333e0,pc),r3
    mov.l @(r0,r14),r13
    mov 0x34,r0
    fmov.s @(r0,r13),fr3
    mov.w @(DAT_ce333d2,pc),r0
    fmov.s fr3,@r15
    fmov.s @(r0,r13),fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov.b @(0x2,r13),r0
    extu.b r0,r5
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce333e4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce333e8,pc),r5
    mov 0x02,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r5)
    mov 0x01,r0
    mov.b r0,@(0x6,r5)
    mov 0x21,r3
    mov.w @(DAT_ce333d6,pc),r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r4,@(r0,r13)
    add 0xAB,r0
    mov.b r3,@(r0,r13)
    add 0x8F,r0
    mov.w @(r0,r14),r2
    mov.w r2,@(r0,r13)
    mov.w @(DAT_ce333d8,pc),r0
    mov.l @(PTR_ce333ec,pc),r2
    mov.b @(r0,r14),r3
    jsr @r2
    mov.b r3,@(r0,r13)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce333d2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce333f0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce333f4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce333f8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce333d8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce333be
    mov 0x04,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce333be:
    mov.l @(PTR_ce333fc,pc),r3
    mov 0x0F,r5
    jsr @r3
    mov r14,r4

LAB_ce333c6:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce333d0:
    #data 0x0140
DAT_ce333d2:
    #data 0x041c
DAT_ce333d4:
    #data 0x01c8
DAT_ce333d6:
    #data 0x01b4
DAT_ce333d8:
    #data 0x01d2
    #align4

PTR_ce333dc:
    #data loc_8c034dee
PTR_ce333e0:
    #data loc_8c100672
PTR_ce333e4:
    #data loc_8c0423fc
PTR_ce333e8:
    #data loc_8c26a518
PTR_ce333ec:
    #data loc_8c02fd26
DAT_ce333f0:
    #data 0x40855555
DAT_ce333f4:
    #data 0x414db6db
DAT_ce333f8:
    #data 0xbf4db6db
PTR_ce333fc:
    #data loc_8c034e8c

;=============================================

LAB_ce33400:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce334fc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce334f2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce33484
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
    mov.w @(DAT_ce334f4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33484
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x01,r5
    mov.w @(DAT_ce334f6,pc),r0
    mov 0x03,r6
    mov.l @(PTR_ce33500,pc),r3
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce334f4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33504,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33484:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3348a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce334fc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce334a4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33508,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce334a4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce334ac:
    rts
    nop

LAB_ce334b0:
    mov.w @(DAT_ce334f8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(r0,r14),r5
    add 0x2F,r0
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3350c,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce334ca:
    add 0xF8,r15
    mov.w @(DAT_ce334fa,pc),r0
    mov 0x02,r2
    mov.l r4,@r15
    mov.l r5,@(0x4,r15)
    mov.l @r15,r3
    mov.b r2,@(r0,r3)
    mov.l @(PTR_ce33510,pc),r3
    mov.l @(0x4,r15),r4
    mov.l @r15,r5
    jmp @r3
    add 0x08,r15

LAB_ce334e2:
    add 0xF8,r15
    mov.l r4,@(0x4,r15)
    mov.l r5,@r15
    mov.l @(PTR_ce33510,pc),r3
    mov.l @r15,r4
    mov.l @(0x4,r15),r5
    jmp @r3
    add 0x08,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce334f2:
    #data 0x0140
DAT_ce334f4:
    #data 0x041c
DAT_ce334f6:
    #data 0x01f9
DAT_ce334f8:
    #data 0x01c8
DAT_ce334fa:
    #data 0x01f4
    #align4

PTR_ce334fc:
    #data loc_8c034dee
PTR_ce33500:
    #data loc_8c034e8c
PTR_ce33504:
    #data loc_8c0511b4
PTR_ce33508:
    #data loc_8c051648
PTR_ce3350c:
    #data PTR_ce337a0
PTR_ce33510:
    #data loc_8c04cc1c
DAT_ce33514:
    #data 0x0201
    #data 0x0201
DAT_ce33518:
    #data 0x02ff
    #data 0x02ff
DAT_ce3351c:
    #data 0xffff
    #data 0xffff
DAT_ce33520:
    #data 0x0201
    #data 0x0201
DAT_ce33524:
    #data 0x02ff
    #data 0x02ff
DAT_ce33528:
    #data 0xffff
    #data 0xffff
DAT_ce3352c:
    #data 0x0201
    #data 0x0200
DAT_ce33530:
    #data 0x02ff
    #data 0x0201
DAT_ce33534:
    #data 0xffff
    #data 0x02ff
DAT_ce33538:
    #data 0x0201
    #data 0x0201
DAT_ce3353c:
    #data 0x02ff
    #data 0x02ff
DAT_ce33540:
    #data 0xffff
    #data 0xffff
    #align4

DAT_ce33544:
    #data 0xc1f00000
DAT_ce33548:
    #data 0x00000000
    #data 0xc22d5555
    #data 0x00000000
DAT_ce33554:
    #data 0xc0a00000
    #data 0xc13aaaaa
DAT_ce3355c:
    #data 0x0003
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce3356c:
    #data 0x0005
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce33580:
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
DAT_ce33594:
    #data 0x0005
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce335a8:
    #data 0x0003
    #data 0x9100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce335b8:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
    #align4

PTR_ce335c8:
    #data LAB_ce30460
PTR_ce335cc:
    #data LAB_ce3001c
PTR_ce335d0:
    #data LAB_ce30464
PTR_ce335d4:
    #data LAB_ce30958
PTR_ce335d8:
    #data LAB_ce30cb6
PTR_ce335dc:
    #data LAB_ce30e46
PTR_ce335e0:
    #data LAB_ce30f7e
PTR_ce335e4:
    #data LAB_ce31056
PTR_ce335e8:
    #data LAB_ce3122e
PTR_ce335ec:
    #data LAB_ce32f4c
PTR_ce335f0:
    #data LAB_ce32fcc
PTR_ce335f4:
    #data LAB_ce330cc
PTR_ce335f8:
    #data LAB_ce334b0
PTR_ce335fc:
    #data LAB_ce30392
PTR_ce33600:
    #data LAB_ce32dc8
PTR_ce33604:
    #data LAB_ce30bf2
PTR_ce33608:
    #data LAB_ce32cd8
PTR_ce3360c:
    #data LAB_ce32d0c
PTR_ce33610:
    #data LAB_ce32d3c
PTR_ce33614:
    #data LAB_ce32d7e
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce33638:
    #data LAB_ce304a0
PTR_ce3363c:
    #data LAB_ce30792
PTR_ce33640:
    #data LAB_ce307ba
PTR_ce33644:
    #data LAB_ce304a0
PTR_ce33648:
    #data LAB_ce3097a
PTR_ce3364c:
    #data LAB_ce30b42
PTR_ce33650:
    #data LAB_ce30b2c
PTR_ce33654:
    #data LAB_ce3096c
PTR_ce33658:
    #data LAB_ce30cc8
PTR_ce3365c:
    #data LAB_ce30d58
PTR_ce33660:
    #data LAB_ce30dec
PTR_ce33664:
    #data LAB_ce30e74
PTR_ce33668:
    #data LAB_ce30ed2
PTR_ce3366c:
    #data FUN_ce30f5c
PTR_ce33670:
    #data LAB_ce30fbc
PTR_ce33674:
    #data LAB_ce31002
PTR_ce33678:
    #data LAB_ce3102c
PTR_ce3367c:
    #data LAB_ce31068
PTR_ce33680:
    #data LAB_ce31138
PTR_ce33684:
    #data LAB_ce31242
PTR_ce33688:
    #data LAB_ce314dc
PTR_ce3368c:
    #data LAB_ce315d4
PTR_ce33690:
    #data LAB_ce31a78
PTR_ce33694:
    #data LAB_ce3208a
PTR_ce33698:
    #data LAB_ce32250
PTR_ce3369c:
    #data LAB_ce31242
PTR_ce336a0:
    #data LAB_ce329fe
PTR_ce336a4:
    #data LAB_ce32afa
PTR_ce336a8:
    #data LAB_ce32c06
PTR_ce336ac:
    #data LAB_ce31254
PTR_ce336b0:
    #data LAB_ce31308
PTR_ce336b4:
    #data LAB_ce31450
PTR_ce336b8:
    #data LAB_ce314f2
PTR_ce336bc:
    #data LAB_ce31564
PTR_ce336c0:
    #data LAB_ce315e6
PTR_ce336c4:
    #data LAB_ce31654
PTR_ce336c8:
    #data LAB_ce319b6
PTR_ce336cc:
    #data LAB_ce31666
PTR_ce336d0:
    #data LAB_ce31700
PTR_ce336d4:
    #data LAB_ce318a6
PTR_ce336d8:
    #data LAB_ce31948
PTR_ce336dc:
    #data LAB_ce31a8a
PTR_ce336e0:
    #data LAB_ce31c02
PTR_ce336e4:
    #data LAB_ce32028
PTR_ce336e8:
    #data LAB_ce31a9c
PTR_ce336ec:
    #data LAB_ce31b24
PTR_ce336f0:
    #data LAB_ce31bba
PTR_ce336f4:
    #data LAB_ce31bd6
PTR_ce336f8:
    #data LAB_ce31c40
PTR_ce336fc:
    #data LAB_ce31e14
PTR_ce33700:
    #data LAB_ce31ee0
PTR_ce33704:
    #data LAB_ce320a0
PTR_ce33708:
    #data LAB_ce321ae
PTR_ce3370c:
    #data FUN_ce3222e
PTR_ce33710:
    #data LAB_ce32262
PTR_ce33714:
    #data LAB_ce32414
PTR_ce33718:
    #data LAB_ce328a0
PTR_ce3371c:
    #data LAB_ce322a0
PTR_ce33720:
    #data LAB_ce32320
PTR_ce33724:
    #data LAB_ce32388
PTR_ce33728:
    #data LAB_ce323a4
PTR_ce3372c:
    #data LAB_ce3242a
PTR_ce33730:
    #data LAB_ce326a0
PTR_ce33734:
    #data LAB_ce327bc
PTR_ce33738:
    #data LAB_ce32834
PTR_ce3373c:
    #data LAB_ce32a2c
PTR_ce33740:
    #data LAB_ce32a9e
PTR_ce33744:
    #data LAB_ce32b0c
PTR_ce33748:
    #data LAB_ce32ba0
PTR_ce3374c:
    #data LAB_ce32c18
PTR_ce33750:
    #data LAB_ce32c5c
PTR_ce33754:
    #data FUN_ce32c8c
PTR_ce33758:
    #data LAB_ce32dda
PTR_ce3375c:
    #data LAB_ce32e5a
PTR_ce33760:
    #data LAB_ce32eec
PTR_ce33764:
    #data LAB_ce32ff6
PTR_ce33768:
    #data LAB_ce3308c
PTR_ce3376c:
    #data LAB_ce330c8
PTR_ce33770:
    #data LAB_ce330ea
PTR_ce33774:
    #data LAB_ce33226
PTR_ce33778:
    #data LAB_ce334ac
PTR_ce3377c:
    #data LAB_ce330fc
PTR_ce33780:
    #data LAB_ce33118
PTR_ce33784:
    #data LAB_ce3314a
PTR_ce33788:
    #data LAB_ce33238
PTR_ce3378c:
    #data LAB_ce33264
PTR_ce33790:
    #data FUN_ce3348a
PTR_ce33794:
    #data LAB_ce33276
PTR_ce33798:
    #data LAB_ce332f4
PTR_ce3379c:
    #data LAB_ce33400
PTR_ce337a0:
    #data LAB_ce334ca
PTR_ce337a4:
    #data LAB_ce334ca
PTR_ce337a8:
    #data LAB_ce334e2
