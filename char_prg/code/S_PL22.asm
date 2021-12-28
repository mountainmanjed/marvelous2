;============================================
; Sakura Program ; S_PL22                   ;
;============================================
    
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c030fec 0x8C030FEC
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c0424a6 0x8C0424A6
#symbol loc_8c045790 0x8C045790
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c04ce54 0x8C04CE54
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
#symbol loc_8c05120e 0x8C05120E
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c0517be 0x8C0517BE
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c0521d4 0x8C0521D4
#symbol loc_8c0523d8 0x8C0523D8
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
#symbol loc_8c0555c8 0x8C0555C8
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c055cd4 0x8C055CD4
#symbol loc_8c055d54 0x8C055D54
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c05a5b8 0x8C05A5B8
#symbol loc_8c095254 0x8C095254
#symbol loc_8c0952dc 0x8C0952DC
#symbol loc_8c095f6c 0x8C095F6C
#symbol loc_8c0e0460 0x8C0E0460
#symbol loc_8c0e0516 0x8C0E0516
#symbol loc_8c0fd966 0x8C0FD966
#symbol loc_8c0fda40 0x8C0FDA40
#symbol loc_8c0fdb4e 0x8C0FDB4E
#symbol loc_8c103660 0x8C103660
#symbol loc_8c129728 0x8C129728
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c26a5a0 0x8C26A5A0
#symbol loc_8c26a8ec 0x8C26A8EC
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c289636 0x8C289636
#symbol loc_8c2896b0 0x8C2896B0
    
;=============================================
    
BEG_ce30000:
    mov.w @(DAT_ce300f6,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce30108,pc),r7
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
    mov.w @(DAT_ce300f8,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30040
    mov.w @(DAT_ce300fa,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30040
    mov.w @(DAT_ce300fc,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3003a
    rts
    mov 0x00,r0

LAB_ce3003a:
    mov.b @(r0,r4),r3
    add 0x01,r3
    mov.b r3,@(r0,r4)

LAB_ce30040:
    mov 0x01,r0
    rts
    nop

;=============================================

FUN_ce30046:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3010c,pc),r3
    jsr @r3
    mov 0x02,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30060
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30060:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce300fe,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30110,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3007e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30114,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30096
    mov.w @(DAT_ce30100,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3009e

LAB_ce30096:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3009e:
    mov.w @(DAT_ce300fe,pc),r0
    mov 0x13,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30110,pc),r3
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

FUN_ce300be:
    mov.w @(DAT_ce30102,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce300d2
    mov.l @(PTR_ce30118,pc),r5
    bra LAB_ce300d4
    nop

LAB_ce300d2:
    mov.l @(PTR_ce3011c,pc),r5

LAB_ce300d4:
    mov.w @(DAT_ce30104,pc),r6
    mov.l @(PTR_ce30120,pc),r2
    add r14,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce300ee
    mov.w @(DAT_ce30100,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bf LAB_ce30124

LAB_ce300ee:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300f6:
    #data 0x0428
DAT_ce300f8:
    #data 0x01f9
DAT_ce300fa:
    #data 0x01fc
DAT_ce300fc:
    #data 0x01d4
DAT_ce300fe:
    #data 0x01e9
DAT_ce30100:
    #data 0x040c
DAT_ce30102:
    #data 0x00cc
DAT_ce30104:
    #data 0x0364
    #align4
    
PTR_ce30108:
    #data PTR_ce35134
PTR_ce3010c:
    #data loc_8c054da0
PTR_ce30110:
    #data loc_8c0530d8
PTR_ce30114:
    #data loc_8c054d1c
PTR_ce30118:
    #data DAT_ce3500c
PTR_ce3011c:
    #data DAT_ce3508c
PTR_ce30120:
    #data loc_8c054e58

;=============================================

LAB_ce30124:
    mov.w @(DAT_ce3022c,pc),r5
    mov.l @(PTR_ce3023c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3022e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30240,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3014c:
    mov.w @(DAT_ce30230,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30162
    mov.l @(PTR_ce30244,pc),r13
    bra LAB_ce30164
    nop

LAB_ce30162:
    mov.l @(PTR_ce30248,pc),r13

LAB_ce30164:
    mov.w @(DAT_ce30232,pc),r6
    mov r13,r5
    mov.l @(PTR_ce3024c,pc),r2
    add r14,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30180
    mov.w @(DAT_ce30234,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bf LAB_ce30184

LAB_ce30180:
    bra LAB_ce301a8
    mov 0x00,r0

LAB_ce30184:
    mov.w @(DAT_ce30232,pc),r5
    mov.l @(PTR_ce3023c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(0x4,r13),r0
    mov r0,r3
    mov.w @(DAT_ce3022e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30240,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0

LAB_ce301a8:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301b0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30250,pc),r5
    mov.w @(DAT_ce30236,pc),r6
    mov.l @(PTR_ce3024c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301d0
    mov.w @(DAT_ce30234,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce301d8

LAB_ce301d0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301d8:
    mov.w @(DAT_ce30236,pc),r5
    mov.l @(PTR_ce3023c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0E,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3022e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30240,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30200:
    mov.w @(DAT_ce30230,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3025c
    mov.w @(DAT_ce30238,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30226
    mov.w @(DAT_ce3023a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30226
    mov.l @(PTR_ce30254,pc),r5
    bra LAB_ce30276
    nop

LAB_ce30226:
    mov.l @(PTR_ce30258,pc),r5
    bra LAB_ce30276
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3022c:
    #data 0x0364
DAT_ce3022e:
    #data 0x01e9
DAT_ce30230:
    #data 0x00cc
DAT_ce30232:
    #data 0x036c
DAT_ce30234:
    #data 0x040c
DAT_ce30236:
    #data 0x0374
DAT_ce30238:
    #data 0x0525
DAT_ce3023a:
    #data 0x01f9
    #align4

PTR_ce3023c:
    #data loc_8c055c3a
PTR_ce30240:
    #data loc_8c0530d8
PTR_ce30244:
    #data DAT_ce3501c
PTR_ce30248:
    #data DAT_ce3509c
PTR_ce3024c:
    #data loc_8c054e58
PTR_ce30250:
    #data DAT_ce3502c
PTR_ce30254:
    #data DAT_ce34fbc
PTR_ce30258:
    #data DAT_ce34fac

;=============================================

LAB_ce3025c:
    mov.w @(DAT_ce3033c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30274
    mov.w @(DAT_ce3033e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30274
    mov.l @(PTR_ce30348,pc),r5
    bra LAB_ce30276
    nop

LAB_ce30274:
    mov.l @(PTR_ce3034c,pc),r5

LAB_ce30276:
    mov.w @(DAT_ce30340,pc),r6
    mov.l @(PTR_ce30350,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30290
    bsr FUN_ce3001c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30298

LAB_ce30290:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30298:
    mov.w @(DAT_ce30340,pc),r5
    mov.l @(PTR_ce30354,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3033e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce302c0
    mov 0x15,r5
    mov.w @(DAT_ce30342,pc),r0
    bra LAB_ce302c6
    mov.b r4,@(r0,r14)

LAB_ce302c0:
    mov.w @(DAT_ce30342,pc),r0
    mov 0x0D,r2
    mov.b r2,@(r0,r14)

LAB_ce302c6:
    mov.l @(PTR_ce30358,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302d4:
    mov.w @(DAT_ce30344,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30300
    mov.w @(DAT_ce3033c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce302fa
    mov.w @(DAT_ce3033e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce302fa
    mov.l @(PTR_ce3035c,pc),r5
    bra LAB_ce3031a
    nop

LAB_ce302fa:
    mov.l @(PTR_ce30360,pc),r5
    bra LAB_ce3031a
    nop

LAB_ce30300:
    mov.w @(DAT_ce3033c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30318
    mov.w @(DAT_ce3033e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30318
    mov.l @(PTR_ce30364,pc),r5
    bra LAB_ce3031a
    nop

LAB_ce30318:
    mov.l @(PTR_ce30368,pc),r5

LAB_ce3031a:
    mov.w @(DAT_ce30346,pc),r6
    mov.l @(PTR_ce30350,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30334
    bsr FUN_ce3001c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3036c

LAB_ce30334:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3033c:
    #data 0x0525
DAT_ce3033e:
    #data 0x01f9
DAT_ce30340:
    #data 0x037c
DAT_ce30342:
    #data 0x01e9
DAT_ce30344:
    #data 0x00cc
DAT_ce30346:
    #data 0x0384
    #align4

PTR_ce30348:
    #data DAT_ce3505c
PTR_ce3034c:
    #data DAT_ce3504c
PTR_ce30350:
    #data loc_8c054e58
PTR_ce30354:
    #data loc_8c055c3a
PTR_ce30358:
    #data loc_8c0530d8
PTR_ce3035c:
    #data DAT_ce34fdc
PTR_ce30360:
    #data DAT_ce34fcc
PTR_ce30364:
    #data DAT_ce3507c
PTR_ce30368:
    #data DAT_ce3506c

;=============================================

LAB_ce3036c:
    mov.w @(DAT_ce30460,pc),r5
    mov.l @(PTR_ce30470,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30462,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce30396
    mov 0x15,r5
    mov.w @(DAT_ce30464,pc),r0
    mov 0x05,r2
    bra LAB_ce3039c
    mov.b r2,@(r0,r14)

LAB_ce30396:
    mov.w @(DAT_ce30464,pc),r0
    mov 0x07,r1
    mov.b r1,@(r0,r14)

LAB_ce3039c:
    mov.l @(PTR_ce30474,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303aa:
    mov.w @(DAT_ce30466,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce303c8
    mov.w @(DAT_ce30462,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce303c8
    mov.l @(PTR_ce30478,pc),r5
    bra LAB_ce303ca
    nop

LAB_ce303c8:
    mov.l @(PTR_ce3047c,pc),r5

LAB_ce303ca:
    mov.w @(DAT_ce30468,pc),r6
    mov.l @(PTR_ce30480,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303ec
    mov.w @(DAT_ce30462,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce303fa
    mov.w @(DAT_ce3046a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce303f4

LAB_ce303ec:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303f4:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce303fa:
    mov.w @(DAT_ce30468,pc),r5
    mov.l @(PTR_ce30470,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30462,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce30424
    mov 0x15,r5
    mov.w @(DAT_ce30464,pc),r0
    mov 0x01,r2
    bra LAB_ce3042a
    mov.b r2,@(r0,r14)

LAB_ce30424:
    mov.w @(DAT_ce30464,pc),r0
    mov 0x0C,r1
    mov.b r1,@(r0,r14)

LAB_ce3042a:
    mov.l @(PTR_ce30474,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30438:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30484,pc),r5
    mov.w @(DAT_ce3046c,pc),r6
    mov.l @(PTR_ce30480,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3045c
    mov.w @(DAT_ce3046e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    mov 0x03,r2
    cmp/ge r2,r3
    bt LAB_ce30488

LAB_ce3045c:
    bra LAB_ce304c0
    mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30460:
    #data 0x0384
DAT_ce30462:
    #data 0x01f9
DAT_ce30464:
    #data 0x01e9
DAT_ce30466:
    #data 0x0525
DAT_ce30468:
    #data 0x038c
DAT_ce3046a:
    #data 0x01d4
DAT_ce3046c:
    #data 0x03ac
DAT_ce3046e:
    #data 0x040c
    #align4

PTR_ce30470:
    #data loc_8c055c3a
PTR_ce30474:
    #data loc_8c0530d8
PTR_ce30478:
    #data DAT_ce34ffc
PTR_ce3047c:
    #data DAT_ce34fec
PTR_ce30480:
    #data loc_8c054e58
PTR_ce30484:
    #data DAT_ce3503c

;=============================================

LAB_ce30488:
    mov.w @(DAT_ce305a4,pc),r4
    mov 0x00,r5
    mov.l @(PTR_ce305b4,pc),r13
    mov 0x08,r6
    jsr @r13
    add r14,r4
    mov.w @(DAT_ce305a6,pc),r4
    mov 0x00,r5
    mov 0x08,r6
    jsr @r13
    add r14,r4
    mov.w @(DAT_ce305a8,pc),r4
    mov 0x00,r5
    mov 0x08,r6
    jsr @r13
    add r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x14,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce305aa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce305b8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0

LAB_ce304c0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304c8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce305bc,pc),r5
    mov r4,r14
    mov.l @(PTR_ce305c0,pc),r3
    mov.w @(DAT_ce305ac,pc),r6
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30500
    mov.l @(PTR_ce305c4,pc),r2
    mov r15,r6
    mov.w @(DAT_ce305ae,pc),r5
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3050a
    mov.l @(PTR_ce305c4,pc),r2
    mov 0x60,r5
    mov r15,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3050a

LAB_ce30500:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3050a:
    mov.w @(DAT_ce305ac,pc),r5
    mov.l @(PTR_ce305c8,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce305aa,pc),r0
    mov 0x10,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce305b8,pc),r3
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30536:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce305cc,pc),r5
    mov r4,r14
    mov.l @(PTR_ce305c0,pc),r3
    mov.w @(DAT_ce305b0,pc),r6
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3056e
    mov.l @(PTR_ce305c4,pc),r2
    mov r15,r6
    mov.w @(DAT_ce305ae,pc),r5
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30578
    mov.l @(PTR_ce305c4,pc),r2
    mov 0x60,r5
    mov r15,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30578

LAB_ce3056e:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30578:
    mov.w @(DAT_ce305b0,pc),r5
    mov.l @(PTR_ce305c8,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce305aa,pc),r0
    mov 0x11,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce305b8,pc),r3
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305a4:
    #data 0x036c
DAT_ce305a6:
    #data 0x037c
DAT_ce305a8:
    #data 0x0384
DAT_ce305aa:
    #data 0x01e9
DAT_ce305ac:
    #data 0x0394
DAT_ce305ae:
    #data 0x0300
DAT_ce305b0:
    #data 0x039c
    #align4
    
PTR_ce305b4:
    #data loc_8c129728
PTR_ce305b8:
    #data loc_8c0530d8
PTR_ce305bc:
    #data DAT_ce350ac
PTR_ce305c0:
    #data loc_8c054e58
PTR_ce305c4:
    #data loc_8c055cd4
PTR_ce305c8:
    #data loc_8c055c3a
PTR_ce305cc:
    #data DAT_ce350bc

;=============================================

FUN_ce305d0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306b8,pc),r5
    mov.w @(DAT_ce306a6,pc),r6
    mov.l @(PTR_ce306bc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce305f2
    mov.w @(DAT_ce306a8,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    mov 0x03,r2
    cmp/ge r2,r3
    bt LAB_ce305fa

LAB_ce305f2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce305fa:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x12,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce306aa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce306c0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30618:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce306ac,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30630
    mov.l @(PTR_ce306c4,pc),r5
    bra LAB_ce30632
    nop

LAB_ce30630:
    mov.l @(PTR_ce306c8,pc),r5

LAB_ce30632:
    mov.w @(DAT_ce306ae,pc),r6
    mov.l @(PTR_ce306cc,pc),r13
    add r14,r6
    jsr @r13
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30654
    mov.w @(DAT_ce306a8,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30654
    mov 0x06,r2

LAB_ce3064e:
    mov.w @(DAT_ce306b0,pc),r0
    bra LAB_ce30708
    mov.b r2,@(r0,r14)

LAB_ce30654:
    mov.w @(DAT_ce306ac,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30662
    mov.l @(PTR_ce306d0,pc),r12
    bra LAB_ce30664
    nop

LAB_ce30662:
    mov.l @(PTR_ce306d4,pc),r12

LAB_ce30664:
    mov.w @(DAT_ce306b2,pc),r6
    mov r12,r5
    add r14,r6
    jsr @r13
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30684
    mov.w @(DAT_ce306a8,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30684
    mov.w @(0x4,r12),r0
    bra LAB_ce3064e
    mov r0,r2

LAB_ce30684:
    mov.w @(DAT_ce306b4,pc),r6
    mov.l @(PTR_ce306d8,pc),r5
    add r14,r6
    jsr @r13
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce306dc
    mov.w @(DAT_ce306a8,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce306dc
    mov.w @(DAT_ce306b0,pc),r0
    mov 0x0E,r3
    bra LAB_ce30708
    mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306a6:
    #data 0x03a4
DAT_ce306a8:
    #data 0x040c
DAT_ce306aa:
    #data 0x01e9
DAT_ce306ac:
    #data 0x00cc
DAT_ce306ae:
    #data 0x0364
DAT_ce306b0:
    #data 0x0258
DAT_ce306b2:
    #data 0x036c
DAT_ce306b4:
    #data 0x0374
    #align4
    
PTR_ce306b8:
    #data DAT_ce350cc
PTR_ce306bc:
    #data loc_8c0555c8
PTR_ce306c0:
    #data loc_8c0530d8
PTR_ce306c4:
    #data DAT_ce3500c
PTR_ce306c8:
    #data DAT_ce3508c
PTR_ce306cc:
    #data loc_8c054e58
PTR_ce306d0:
    #data DAT_ce3501c
PTR_ce306d4:
    #data DAT_ce3509c
PTR_ce306d8:
    #data DAT_ce3502c

;=============================================

LAB_ce306dc:
    mov.w @(DAT_ce3071e,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30712
    mov.w @(DAT_ce30720,pc),r6
    mov.l @(PTR_ce30728,pc),r5
    mov.l @(PTR_ce3072c,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30712
    mov.w @(DAT_ce30722,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    mov 0x03,r3
    cmp/ge r3,r2
    bf LAB_ce30712
    mov.w @(DAT_ce30724,pc),r0
    mov 0x12,r1
    mov.b r1,@(r0,r14)

LAB_ce30708:
    mov.w @(DAT_ce30726,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    bra LAB_ce30714
    mov r3,r0

LAB_ce30712:
    mov 0x00,r0

LAB_ce30714:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3071e:
    #data 0x00cc
DAT_ce30720:
    #data 0x03a4
DAT_ce30722:
    #data 0x040c
DAT_ce30724:
    #data 0x0258
DAT_ce30726:
    #data 0x01a3
    #align4

PTR_ce30728:
    #data DAT_ce350cc
PTR_ce3072c:
    #data loc_8c0555c8

;=============================================

LAB_ce30730:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce307ec,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30744
    bra LAB_ce30864
    nop

LAB_ce30744:
    mov.l @(PTR_ce307f0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30754
    bra LAB_ce30864
    nop

LAB_ce30754:
    mov.l @(PTR_ce307f4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30764
    bra LAB_ce30864
    nop

LAB_ce30764:
    mov.l @(PTR_ce307f8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30774
    bra LAB_ce30864
    nop

LAB_ce30774:
    mov.w @(DAT_ce307e8,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bt LAB_ce307fc
    bsr FUN_ce305d0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3078a
    bra LAB_ce30864
    nop

LAB_ce3078a:
    bsr FUN_ce304c8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce30536
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce30438
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce300be
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce3014c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce301b0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce30200
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce302d4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce303aa
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bra LAB_ce30842
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307e8:
    #data 0x00cc
    #align4
    
PTR_ce307ec:
    #data loc_8c054508
PTR_ce307f0:
    #data loc_8c054b34
PTR_ce307f4:
    #data loc_8c05496c
PTR_ce307f8:
    #data loc_8c054d04

;=============================================

LAB_ce307fc:
    bsr FUN_ce30438
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce300be
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce3014c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce301b0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce30200
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce302d4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce303aa
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864

LAB_ce30842:
    bsr FUN_ce3007e
    mov r14,r4
    tst r0,r0
    bf LAB_ce30864
    bsr FUN_ce30046
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30864
    mov.l @(PTR_ce308ac,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce308b0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30864:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3086a:
    mov.w @(DAT_ce308a4,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce308a0
    mov.w @(DAT_ce308a6,pc),r0
    mov.l @(r0,r4),r3
    tst r3,r3
    bf LAB_ce308a0
    mov.b @(0x5,r4),r0
    tst r0,r0
    bf LAB_ce3089a
    mov.w @(DAT_ce308a8,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x15,r0
    bf LAB_ce3089a
    mov.w @(DAT_ce308aa,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce308a0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x0D,r0
    bt LAB_ce308a0

LAB_ce3089a:
    mov.w @(DAT_ce308a4,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r4)

LAB_ce308a0:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308a4:
    #data 0x02b3
DAT_ce308a6:
    #data 0x00cc
DAT_ce308a8:
    #data 0x01d0
DAT_ce308aa:
    #data 0x01e9
    #align4

PTR_ce308ac:
    #data loc_8c053e00
PTR_ce308b0:
    #data loc_8c0542e0

;=============================================

LAB_ce308b4:
    mov.b @(0x1,r4),r0
    extu.b r0,r0
    cmp/eq 0x22,r0
    bf LAB_ce308e6
    mov.w @(DAT_ce3099a,pc),r0
    mov.b @(r0,r5),r0
    tst 0x06,r0
    bt LAB_ce308e6
    mov.w @(DAT_ce3099c,pc),r0
    mov.l @(r0,r4),r3
    tst r3,r3
    bf LAB_ce308e6
    mov.w @(DAT_ce3099e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce308e6
    mov.b @(r0,r4),r2
    cmp/pl r2
    bf LAB_ce308ee
    mov.w @(DAT_ce309a0,pc),r0
    mov.l @(r0,r5),r0
    mov.b @(0x2,r0),r0
    extu.b r0,r0
    tst 0x20,r0
    bt LAB_ce308ea

LAB_ce308e6:
    rts
    mov 0x00,r0

LAB_ce308ea:
    bra LAB_ce308f0
    mov 0x02,r5

LAB_ce308ee:
    mov 0x04,r5

LAB_ce308f0:
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r4),fr4
    fcmp/gt fr4,fr3
    bf LAB_ce308fc
    fneg fr4

LAB_ce308fc:
    mova @(DAT_ce309b4,pc),r0
    fmov.s @r0,fr3
    fcmp/gt fr3,fr4
    bf LAB_ce30912
    lds r5,FPUL
    mov 0x5C,r0
    fmov.s @(r0,r4),fr1
    float FPUL,fr2
    fdiv fr2,fr1
    bra LAB_ce3092c
    fmov fr1,@(r0,r4)

LAB_ce30912:
    mov.w @(DAT_ce309a2,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3091e
    bra LAB_ce30922
    fmov fr3,fr2

LAB_ce3091e:
    mova @(DAT_ce309b8,pc),r0
    fmov.s @r0,fr2

LAB_ce30922:
    mov 0x5C,r0
    fldi0 fr3
    fmov fr2,@(r0,r4)
    mov 0x68,r0
    fmov fr3,@(r0,r4)

LAB_ce3092c:
    mov 0x01,r0
    rts
    nop

LAB_ce30932:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce309bc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce309a4,pc),r0
    mov.w @(DAT_ce309a6,pc),r3
    mov.w @(r0,r14),r2
    mov.l @(PTR_ce309c0,pc),r5
    extu.w r2,r2
    tst r3,r2
    bt/s LAB_ce309c4
    mov 0x00,r4
    mov.w @(DAT_ce309a8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce309c4
    mov.w @(DAT_ce309aa,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce309c4
    mov.w @(DAT_ce309ac,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce309c4
    mov.w @(DAT_ce309ae,pc),r0
    mov 0x01,r3
    mov 0x12,r2
    mov.l r4,@(r0,r14)
    mov 0x04,r6
    mov.w @(DAT_ce309b0,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFA,r0
    mov.b r2,@(r0,r14)
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
    bra LAB_ce30a3e
    mov 0x08,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3099a:
    #data 0x019c
DAT_ce3099c:
    #data 0x00cc
DAT_ce3099e:
    #data 0x02b3
DAT_ce309a0:
    #data 0x01bc
DAT_ce309a2:
    #data 0x01d2
DAT_ce309a4:
    #data 0x01fa
DAT_ce309a6:
    #data 0x0800
DAT_ce309a8:
    #data 0x01fe
DAT_ce309aa:
    #data 0x01e8
DAT_ce309ac:
    #data 0x01f9
DAT_ce309ae:
    #data 0x03f4
DAT_ce309b0:
    #data 0x01a7
    #align4

DAT_ce309b4:
    #data 0x40555555
DAT_ce309b8:
    #data 0xc0555555
PTR_ce309bc:
    #data loc_8c052b4c
PTR_ce309c0:
    #data loc_8c2896b0

;=============================================

LAB_ce309c4:
    mov.w @(DAT_ce30b14,pc),r0
    mov.b @(r0,r14),r3
    add 0xEA,r0
    mov.b @(r0,r14),r1
    extu.b r3,r3
    mov.w @(DAT_ce30b16,pc),r0
    mov r3,r2
    shll r3
    extu.b r1,r1
    add r2,r3
    mov.l @(PTR_ce30b1c,pc),r2
    shll2 r1
    shll2 r3
    add r1,r3
    add r2,r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30b18,pc),r0
    mov.b @(r0,r14),r1
    add 0xBF,r0
    mov.b r1,@(r0,r14)
    add 0x52,r0
    mov.b @(r0,r14),r3
    add 0x05,r0
    mov r3,r1
    shll2 r1
    shll r3
    add r1,r3
    mov.b @(r0,r14),r1
    mov r1,r2
    shll r1
    add r2,r1
    add r1,r3
    add 0xEA,r0
    mov.b @(r0,r14),r2
    add 0xB9,r0
    add r2,r3
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
    mov.w @(DAT_ce30b18,pc),r0
    mov.b @(r0,r14),r6
    add 0x11,r0
    mov.b @(r0,r14),r5
    add 0x05,r0
    mov.b @(r0,r14),r3
    extu.b r5,r5
    shll r5
    add r3,r5
    add 0x07,r5

LAB_ce30a3e:
    mov.l @(PTR_ce30b20,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30b18,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r5
    mov.l @(PTR_ce30b24,pc),r3
    add 0x14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce30a54:
    mov.w @(DAT_ce30b14,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r4
    add 0xEA,r0
    mov.b @(r0,r14),r2
    add 0x14,r0
    extu.b r4,r4
    mov r4,r3
    shll r4
    add r3,r4
    mov.b @(r0,r14),r3
    extu.b r2,r2
    shll2 r4
    shll2 r2
    tst r3,r3
    add r2,r4
    bf/s LAB_ce30a82
    exts.w r4,r5
    mov.l @(PTR_ce30b28,pc),r4
    bra LAB_ce30a84
    nop

LAB_ce30a82:
    mov.l @(PTR_ce30b2c,pc),r4

LAB_ce30a84:
    mov.w @(DAT_ce30b16,pc),r0
    add r5,r4
    mov.l r4,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce30b18,pc),r0
    mov.b @(r0,r14),r3
    add 0xBF,r0
    mov.b r3,@(r0,r14)
    add 0x57,r0
    mov.b @(r0,r14),r2
    add 0xEA,r0
    mov.b @(r0,r14),r1
    add 0xB9,r0
    mov r2,r3
    shll r2
    add r3,r2
    mov.l @(PTR_ce30b30,pc),r3
    add r1,r2
    add 0x0C,r2
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
    mov.w @(DAT_ce30b18,pc),r0
    mov.l @(PTR_ce30b20,pc),r2
    mov.b @(r0,r14),r6
    add 0x16,r0
    mov.b @(r0,r14),r5
    add 0x0B,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30b18,pc),r0
    mov.l @(PTR_ce30b24,pc),r3
    mov.b @(r0,r14),r5
    add 0x14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30b14,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30afe
    mov.w @(DAT_ce30b1a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30b0e
    mov.w @(DAT_ce30b1a,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    bra LAB_ce30b0e
    mov.b r2,@(r0,r14)

LAB_ce30afe:
    mov.w @(DAT_ce30b1a,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30b0e
    mov.w @(DAT_ce30b1a,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30b0e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b14:
    #data 0x01fe
DAT_ce30b16:
    #data 0x03f4
DAT_ce30b18:
    #data 0x01e8
DAT_ce30b1a:
    #data 0x01d6
    #align4

PTR_ce30b1c:
    #data DAT_ce34f64
PTR_ce30b20:
    #data loc_8c034e8c
PTR_ce30b24:
    #data loc_8c04223a
PTR_ce30b28:
    #data DAT_ce34f7c
PTR_ce30b2c:
    #data DAT_ce34f94
PTR_ce30b30:
    #data loc_8c2896b0

;=============================================

LAB_ce30b34:
    mov.w @(DAT_ce30c1a,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30b48
    mov.w @(DAT_ce30c1c,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30b50
    bra LAB_ce30b54
    nop

LAB_ce30b48:
    mov.w @(DAT_ce30c1c,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30b54

LAB_ce30b50:
    bra LAB_ce30a54
    nop

LAB_ce30b54:
    rts
    nop

LAB_ce30b58:
    mov.w @(DAT_ce30c1e,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c24,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30b6c:
    mov.w @(DAT_ce30c1e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce30b8c
    cmp/eq 0x00,r0
    bt LAB_ce30b92
    cmp/eq 0x02,r0
    bt LAB_ce30c3c
    cmp/eq 0x01,r0
    bt LAB_ce30c48
    bra LAB_ce30c7c
    nop

LAB_ce30b8c:
    mov.l @(PTR_ce30c28,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30b92:
    mov 0x5C,r1
    mov.l @(PTR_ce30c2c,pc),r3
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
    mov.l @(PTR_ce30c30,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30be6
    lds.l @r15+,PR
    mov.l @(PTR_ce30c34,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30be6:
    mov.w @(DAT_ce30c20,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30c7c
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30c38,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce30c20,pc),r0
    bra LAB_ce30c7c
    mov.b r4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c1a:
    #data 0x01fe
DAT_ce30c1c:
    #data 0x01d6
DAT_ce30c1e:
    #data 0x01ff
DAT_ce30c20:
    #data 0x014b
    #align4
    
PTR_ce30c24:
    #data PTR_ce351a4
PTR_ce30c28:
    #data loc_8c0511e2
PTR_ce30c2c:
    #data loc_8c052c84
PTR_ce30c30:
    #data loc_8c034dee
PTR_ce30c34:
    #data loc_8c051648
PTR_ce30c38:
    #data loc_8c2896b0

;=============================================

LAB_ce30c3c:
    mov.l @(PTR_ce30d70,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30d74,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30c48:
    mov.l @(PTR_ce30d78,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30d7c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30d80,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c66
    mov.l @(PTR_ce30d84,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30c66:
    mov.l @(PTR_ce30d88,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30c7c
    lds.l @r15+,PR
    mov.l @(PTR_ce30d8c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c7c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30c82:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30d00
    mov.l @(PTR_ce30d90,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30d66,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce30cbe
    mov 0x00,r13
    mov.w @(DAT_ce30d68,pc),r0
    mov 0x6C,r1
    mov 0x01,r3
    mov.b r1,@(r0,r14)
    add 0x58,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.l @(PTR_ce30d94,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce30cd2
    mov 0x03,r6

LAB_ce30cbe:
    mov.w @(DAT_ce30d68,pc),r0
    mov 0x71,r2
    mov.l @(PTR_ce30d94,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x58,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x04,r6

LAB_ce30cd2:
    mov.l @(PTR_ce30d98,pc),r2
    mov 0x14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30d6a,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce30d9c,pc),r3
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
    mov.l @(PTR_ce30da0,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30d00:
    mov.w @(DAT_ce30d6c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30d10
    mov.l @(PTR_ce30da4,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30d10:
    mov 0x5C,r1
    mov.l @(PTR_ce30da8,pc),r3
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
    mov.l @(PTR_ce30d80,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30db0
    lds.l @r15+,PR
    mov.l @(PTR_ce30dac,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d66:
    #data 0x01fe
DAT_ce30d68:
    #data 0x01a1
DAT_ce30d6a:
    #data 0x01ac
DAT_ce30d6c:
    #data 0x01ff
    #align4
    
PTR_ce30d70:
    #data loc_8c050084
PTR_ce30d74:
    #data loc_8c04ff88
PTR_ce30d78:
    #data loc_8c04fea8
PTR_ce30d7c:
    #data loc_8c050048
PTR_ce30d80:
    #data loc_8c034dee
PTR_ce30d84:
    #data loc_8c05176e
PTR_ce30d88:
    #data loc_8c052ce2
PTR_ce30d8c:
    #data loc_8c052dac
PTR_ce30d90:
    #data loc_8c052b4c
PTR_ce30d94:
    #data loc_8c04223a
PTR_ce30d98:
    #data loc_8c034e8c
PTR_ce30d9c:
    #data loc_8c2896b0
PTR_ce30da0:
    #data loc_8c056de4
PTR_ce30da4:
    #data loc_8c0511e2
PTR_ce30da8:
    #data loc_8c052c84
PTR_ce30dac:
    #data loc_8c051648

;=============================================

LAB_ce30db0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30db8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce30eec,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    mov.w @(DAT_ce30ee4,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30dde
    lds.l @r15+,PR
    mov.l @(PTR_ce30ef0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30dde:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30de4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ef4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30ee6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30dfc
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce30dfc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e02:
    mov.w @(DAT_ce30ee4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30e78
    mov.l @(PTR_ce30ef4,pc),r3
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
    mov.w @(DAT_ce30ee6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30ede
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30ee8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30e6a
    mova @(DAT_ce30ef8,pc),r0
    bra LAB_ce30e6e
    fmov.s @r0,fr3

LAB_ce30e6a:
    mova @(DAT_ce30efc,pc),r0
    fmov.s @r0,fr3

LAB_ce30e6e:
    mov 0x68,r0
    mov 0x02,r6
    fmov fr3,@(r0,r14)
    bra LAB_ce30eca
    mov r6,r5

LAB_ce30e78:
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
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf LAB_ce30ed4
    mov.b @(0x6,r14),r0
    mov 0x02,r5
    mov 0x06,r6
    add 0x02,r0
    mov.b r0,@(0x6,r14)

LAB_ce30eca:
    lds.l @r15+,PR
    mov.l @(PTR_ce30f00,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30ed4:
    lds.l @r15+,PR
    mov.l @(PTR_ce30ef4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30ede:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ee4:
    #data 0x00cc
DAT_ce30ee6:
    #data 0x0141
DAT_ce30ee8:
    #data 0x01d2
    #align4
    
PTR_ce30eec:
    #data PTR_ce351b4
PTR_ce30ef0:
    #data loc_8c0511e2
PTR_ce30ef4:
    #data loc_8c034dee
DAT_ce30ef8:
    #data 0xbed55555
DAT_ce30efc:
    #data 0x3ed55555
PTR_ce30f00:
    #data loc_8c034e8c

;=============================================

LAB_ce30f04:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31034,pc),r3
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
    mov.w @(DAT_ce3102e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce30f6a
    mov r14,r4
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

LAB_ce30f6a:
    lds.l @r15+,PR
    mov.l @(PTR_ce31038,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f72:
    mov.w @(DAT_ce31030,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30fc0
    mov.w @(DAT_ce3102e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30f96
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce30f96:
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

LAB_ce30fc0:
    mov.l @(PTR_ce31034,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fd6
    lds.l @r15+,PR
    mov.l @(PTR_ce3103c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30fd6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fdc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce31040,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    mov.w @(DAT_ce31030,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31002
    lds.l @r15+,PR
    mov.l @(PTR_ce31038,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31002:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31008:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31030,pc),r0
    mov.l @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3106e
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce31032,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31048
    mova @(DAT_ce31044,pc),r0
    bra LAB_ce3104c
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3102e:
    #data 0x0141
DAT_ce31030:
    #data 0x00cc
DAT_ce31032:
    #data 0x01d2
    #align4

PTR_ce31034:
    #data loc_8c034dee
PTR_ce31038:
    #data loc_8c0511e2
PTR_ce3103c:
    #data loc_8c051648
PTR_ce31040:
    #data PTR_ce351c4
DAT_ce31044:
    #data 0xc1855555

;=============================================

LAB_ce31048:
    mova @(DAT_ce310f0,pc),r0
    fmov.s @r0,fr3

LAB_ce3104c:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce310ec,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3105e
    mova @(DAT_ce310f4,pc),r0
    bra LAB_ce31062
    fmov.s @r0,fr3

LAB_ce3105e:
    mova @(DAT_ce310f8,pc),r0
    fmov.s @r0,fr3

LAB_ce31062:
    mov.l @(PTR_ce310fc,pc),r3
    mov 0x68,r0
    mov 0x05,r6
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x02,r5

LAB_ce3106e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31100,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce310ee,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce310e6
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce310ee,pc),r0
    mov.b r3,@(r0,r14)
    add 0x8B,r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bf LAB_ce310de
    mov.w @(DAT_ce310ec,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce310a2
    mova @(DAT_ce31104,pc),r0
    bra LAB_ce310a6
    fmov.s @r0,fr3

LAB_ce310a2:
    mova @(DAT_ce31108,pc),r0
    fmov.s @r0,fr3

LAB_ce310a6:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce310ec,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce310b8
    mova @(DAT_ce3110c,pc),r0
    bra LAB_ce310bc
    fmov.s @r0,fr3

LAB_ce310b8:
    mova @(DAT_ce31110,pc),r0
    fmov.s @r0,fr3

LAB_ce310bc:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x34,r1
    mov.w @(DAT_ce310ec,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce310d0
    add r14,r1
    bra LAB_ce310d2
    mov 0xD8,r3

LAB_ce310d0:
    mov 0x28,r3

LAB_ce310d2:
    lds r3,FPUL
    fmov.s @r1,fr2
    float FPUL,fr3
    fadd fr3,fr2
    bra LAB_ce310e6
    fmov.s fr2,@r1

LAB_ce310de:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31114
    mov.l @r15+,r14

LAB_ce310e6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310ec:
    #data 0x01d2
DAT_ce310ee:
    #data 0x0141
DAT_ce310f0:
    #data 0x41855555
DAT_ce310f4:
    #data 0x3ed55555
DAT_ce310f8:
    #data 0xbed55555
PTR_ce310fc:
    #data loc_8c034e8c
PTR_ce31100:
    #data loc_8c034dee
DAT_ce31104:
    #data 0xc1555555
DAT_ce31108:
    #data 0x41555555
DAT_ce3110c:
    #data 0x3ebaaaaa
DAT_ce31110:
    #data 0xbebaaaaa

;=============================================

LAB_ce31114:
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
    add 0x6C,r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31194
    mov.l @(PTR_ce3122c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31226,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31180
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

LAB_ce31180:
    mov.w @(DAT_ce31228,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311c2
    lds.l @r15+,PR
    mov.l @(PTR_ce31230,pc),r3
    mov 0x03,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31194:
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf LAB_ce311b8
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31234,pc),r3
    mov 0x07,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce311b8:
    lds.l @r15+,PR
    mov.l @(PTR_ce3122c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce311c2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce311c8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3122c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311e2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31238,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce311e2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce311ea:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31252
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3122a,pc),r0
    mov.l @(r0,r14),r3
    mov.b @(0x1,r3),r0
    mov r0,r3
    mov.b @(0x1,r14),r0
    cmp/eq r0,r3
    bf LAB_ce31252
    mov.w @(DAT_ce3122a,pc),r0
    mov.l @(r0,r14),r3
    mov.b @(0x6,r3),r0
    tst r0,r0
    bf LAB_ce31240
    mov.l @(PTR_ce3123c,pc),r2
    jsr @r2
    nop
    tst 0x01,r0
    bt LAB_ce3124e
    bra LAB_ce31252
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31226:
    #data 0x0141
DAT_ce31228:
    #data 0x014b
DAT_ce3122a:
    #data 0x020c
    #align4

PTR_ce3122c:
    #data loc_8c034dee
PTR_ce31230:
    #data loc_8c05120e
PTR_ce31234:
    #data loc_8c034e8c
PTR_ce31238:
    #data loc_8c051648
PTR_ce3123c:
    #data loc_8c03319e

;=============================================

LAB_ce31240:
    mov.w @(DAT_ce31386,pc),r0
    mov 0x05,r3
    mov.l @(r0,r14),r2
    mov.b @(0x7,r2),r0
    extu.b r0,r0
    cmp/ge r3,r0
    bt LAB_ce31252

LAB_ce3124e:
    mov 0x05,r0
    mov.b r0,@(0x7,r14)

LAB_ce31252:
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31390,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31264:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r3
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31388,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce3138a,pc),r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31394,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce31398,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce3138c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31296
    mova @(DAT_ce3139c,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce313a0,pc),r0
    fmov.s @r0,fr4

LAB_ce31296:
    mov 0x5C,r0
    fldi0 fr2
    fmov fr4,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x02,r7
    mov.l @(PTR_ce313a4,pc),r3
    mov 0x01,r5
    fsub fr5,fr3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov fr2,@(r0,r14)
    mov 0x25,r0
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x08,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce313a8,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce313ac,pc),r3
    mov r14,r4
    mov 0x03,r6
    mov 0x12,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce312da:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313b0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31302
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce313ac,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x12,r0
    mov.w r0,@(0x1c,r14)
    mov r0,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31302:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31308:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313b0,pc),r3
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
    cmp/pl r0
    bt LAB_ce31380
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3138c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3136a
    mova @(DAT_ce313b4,pc),r0
    bra LAB_ce3136e
    fmov.s @r0,fr3

LAB_ce3136a:
    mova @(DAT_ce313b8,pc),r0
    fmov.s @r0,fr3

LAB_ce3136e:
    mov.l @(PTR_ce313ac,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x01,r6
    mov 0x12,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31380:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31386:
    #data 0x020c
DAT_ce31388:
    #data 0x012c
DAT_ce3138a:
    #data 0x02a4
DAT_ce3138c:
    #data 0x0130
    #align4
    
PTR_ce31390:
    #data PTR_ce351d4
DAT_ce31394:
    #data 0x43a00000
DAT_ce31398:
    #data 0x41200000
DAT_ce3139c:
    #data 0xc3a00000
DAT_ce313a0:
    #data 0xc1200000
PTR_ce313a4:
    #data loc_8c03544c
PTR_ce313a8:
    #data loc_8c0e0460
PTR_ce313ac:
    #data loc_8c034e8c
PTR_ce313b0:
    #data loc_8c034dee
DAT_ce313b4:
    #data 0x3edc0000
DAT_ce313b8:
    #data 0xbedc0000

;=============================================

LAB_ce313bc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31820
    mov r4,r14
    fldi0 fr3
    fcmp/gt fr0,fr3
    bf LAB_ce313e6
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce314cc,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x12,r5
    mov.w @(DAT_ce314be,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x34,r0
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce313e6:
    mov.l @(PTR_ce314d0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce314d4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce313f6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314d0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31416
    mov.b @(0x5,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)

LAB_ce31416:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3141c:
    mov.l @(PTR_ce314d8,pc),r2
    mov 0x02,r1
    mov.b @r2,r3
    extu.b r3,r3
    cmp/ge r1,r3
    bt LAB_ce31434
    mov.w @(DAT_ce314c0,pc),r3
    mov 0x00,r0
    add r4,r3
    mov.b r0,@r3
    bra LAB_ce3143c
    nop

LAB_ce31434:
    mov.b @(0x7,r4),r0
    add 0x01,r0
    bra LAB_ce31440
    mov.b r0,@(0x7,r4)

LAB_ce3143c:
    rts
    nop

LAB_ce31440:
    mov.w @(DAT_ce314c0,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)
    mov.b @(0x7,r4),r0
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov 0x20,r0
    mov.w r0,@(0x1c,r4)
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    mov.w @(DAT_ce314be,pc),r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce314dc,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce314e0,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce314c2,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31470
    mova @(DAT_ce314e4,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce314e8,pc),r0
    fmov.s @r0,fr4

LAB_ce31470:
    mov 0x5C,r0
    fldi0 fr2
    fmov fr4,@(r0,r4)
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    mov 0x00,r6
    mov.l @(PTR_ce314cc,pc),r3
    fsub fr5,fr3
    fmov fr3,@(r0,r4)
    mov 0x6C,r0
    fmov fr2,@(r0,r4)
    mov 0x60,r0
    fmov fr2,@(r0,r4)
    mov 0x68,r0
    fmov fr2,@(r0,r4)
    jmp @r3
    mov 0x12,r5

;=============================================

FUN_ce31492:
    mov.w @(DAT_ce314c6,pc),r0
    mov.w @(DAT_ce314c4,pc),r5
    mov.w @(r0,r4),r0
    extu.w r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce314ae
    cmp/eq 0x01,r0
    bt LAB_ce314ec
    cmp/eq 0x02,r0
    bt LAB_ce314fa
    cmp/eq 0x03,r0
    bt LAB_ce31510
    bra LAB_ce31526
    nop

LAB_ce314ae:
    mov.w @(DAT_ce314c8,pc),r0
    mov.w @(DAT_ce314ca,pc),r2
    mov.w @(r0,r4),r3
    extu.w r3,r3
    tst r2,r3
    bf LAB_ce31506
    bra LAB_ce31526
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314be:
    #data 0x02a4
DAT_ce314c0:
    #data 0x012c
DAT_ce314c2:
    #data 0x0130
DAT_ce314c4:
    #data 0x3c00
DAT_ce314c6:
    #data 0x02a8
DAT_ce314c8:
    #data 0x04e0
DAT_ce314ca:
    #data 0x2000
    #align4

PTR_ce314cc:
    #data loc_8c034e8c
PTR_ce314d0:
    #data loc_8c034dee
PTR_ce314d4:
    #data loc_8c0511e2
PTR_ce314d8:
    #data loc_8c2895f0
DAT_ce314dc:
    #data 0x44200000
DAT_ce314e0:
    #data 0x41555555
DAT_ce314e4:
    #data 0xc4200000
DAT_ce314e8:
    #data 0xc1555555

;=============================================

LAB_ce314ec:
    mov.w @(DAT_ce315c8,pc),r0
    mov.w @(r0,r4),r1
    extu.w r1,r1
    tst r5,r1
    bt LAB_ce31526
    bra LAB_ce31506
    nop

LAB_ce314fa:
    mov.w @(DAT_ce315ca,pc),r0
    mov.w @(DAT_ce315cc,pc),r3
    mov.w @(r0,r4),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce31526

LAB_ce31506:
    mov.w @(DAT_ce315ce,pc),r0
    mov.w @(r0,r4),r3
    add 0x01,r3
    bra LAB_ce31526
    mov.w r3,@(r0,r4)

LAB_ce31510:
    mov.w @(DAT_ce315c8,pc),r0
    mov.w @(r0,r4),r1
    extu.w r1,r1
    tst r5,r1
    bt LAB_ce31526
    mov.w @(DAT_ce315ce,pc),r0
    mov 0x00,r2
    mov 0x01,r3
    mov.w r2,@(r0,r4)
    add 0x04,r0
    mov.w r3,@(r0,r4)

LAB_ce31526:
    rts
    nop

LAB_ce3152a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce315d8,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31552
    lds.l @r15+,PR
    mov.l @(PTR_ce315dc,pc),r3
    mov r14,r4
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31552:
    mov.b @(0x6,r14),r0
    mov 0x01,r11
    mov.l @(PTR_ce315e0,pc),r12
    tst r0,r0
    bt/s LAB_ce31562
    mov 0x00,r13
    bra LAB_ce31736
    nop

LAB_ce31562:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31574
    bra LAB_ce31724
    nop

LAB_ce31574:
    mov.l @(PTR_ce315e4,pc),r2
    mov.b @r2,r3
    tst r3,r3
    bt/s LAB_ce3164c
    mov 0x03,r6
    mov.w @(DAT_ce315c8,pc),r0
    mov.w @(DAT_ce315d0,pc),r3
    mov.w @(r0,r14),r5
    and r3,r5
    extu.w r5,r2
    tst r2,r2
    bt LAB_ce315e8
    mov.w @(DAT_ce315d2,pc),r1
    extu.w r5,r4
    tst r4,r1
    bt LAB_ce31596
    mov r13,r5

LAB_ce31596:
    mov.w @(DAT_ce315d4,pc),r3
    tst r4,r3
    bt LAB_ce3159e
    mov r11,r5

LAB_ce3159e:
    mov.w @(DAT_ce315d6,pc),r7
    mov r4,r3
    and r7,r3
    cmp/eq r7,r3
    bf/s LAB_ce315ac
    mov 0x40,r3
    mov 0x02,r5

LAB_ce315ac:
    tst r4,r3
    bt/s LAB_ce315b4
    mov 0x20,r3
    mov r6,r5

LAB_ce315b4:
    tst r4,r3
    bt/s LAB_ce315bc
    mov 0x60,r0
    mov 0x04,r5

LAB_ce315bc:
    and r4,r0
    cmp/eq 0x60,r0
    bf LAB_ce315c4
    mov 0x05,r5

LAB_ce315c4:
    bra LAB_ce315f4
    mov r5,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315c8:
    #data 0x04dc
DAT_ce315ca:
    #data 0x04e0
DAT_ce315cc:
    #data 0x1000
DAT_ce315ce:
    #data 0x02a8
DAT_ce315d0:
    #data 0x0360
DAT_ce315d2:
    #data 0x0200
DAT_ce315d4:
    #data 0x0100
DAT_ce315d6:
    #data 0x0300
    #align4

PTR_ce315d8:
    #data loc_8c046c8a
PTR_ce315dc:
    #data loc_8c051648
PTR_ce315e0:
    #data loc_8c034e8c
PTR_ce315e4:
    #data loc_8c289636

;=============================================

LAB_ce315e8:
    mov.l @(PTR_ce316dc,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce316e0,pc),r1
    and 0x0F,r0
    mov.b @(r0,r1),r0

LAB_ce315f4:
    mov.b r0,@(0x7,r14)
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bf LAB_ce31652
    mov.l @(PTR_ce316e4,pc),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce31652
    mov.l @(PTR_ce316ec,pc),r3
    mova @(DAT_ce316e8,pc),r0
    fmov.s @r0,fr3
    mov 0x34,r0
    fmov.s @r3,fr4
    fmov.s @(r0,r14),fr2
    fadd fr3,fr4
    fcmp/gt fr2,fr4
    bt LAB_ce31622
    mov.w @(DAT_ce316d4,pc),r0
    mov.w r13,@(r0,r14)
    mov.w @(DAT_ce316d6,pc),r0
    bra LAB_ce3162a
    mov.b r13,@(r0,r14)

LAB_ce31622:
    mov.w @(DAT_ce316d4,pc),r0
    mov.w r11,@(r0,r14)
    mov.w @(DAT_ce316d6,pc),r0
    mov.b r11,@(r0,r14)

LAB_ce3162a:
    mov.l @(PTR_ce316f0,pc),r2
    mov.l @r2,r3
    mov.l @(0x1c,r3),r1
    tst r1,r11
    bt LAB_ce31652
    mov 0x06,r0
    mov.w @(DAT_ce316d4,pc),r1
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce316d4,pc),r0
    add r14,r1
    mov.w @(DAT_ce316d6,pc),r3
    mov.w @(r0,r14),r0
    add r14,r3
    xor 0x01,r0
    mov.w r0,@r1
    bra LAB_ce31652
    mov.b r0,@r3

LAB_ce3164c:
    mov r6,r0
    nop
    mov.b r0,@(0x7,r14)

LAB_ce31652:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce316f4,pc),r10
    extu.b r0,r0
    mov.l @(PTR_ce316f8,pc),r11
    cmp/eq 0x00,r0
    bt LAB_ce3167a
    cmp/eq 0x01,r0
    bt LAB_ce3169e
    cmp/eq 0x02,r0
    bt LAB_ce3169e
    cmp/eq 0x03,r0
    bt LAB_ce3169e
    cmp/eq 0x04,r0
    bt LAB_ce3169e
    cmp/eq 0x05,r0
    bt LAB_ce316b4
    cmp/eq 0x06,r0
    bt LAB_ce316fc
    bra LAB_ce317de
    nop

LAB_ce3167a:
    mov r13,r0
    nop
    mov 0x01,r7
    mov.w r0,@(0x1c,r14)
    mov r7,r5
    mov 0x02,r6
    jsr @r11
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov r0,r6
    jsr @r12
    mov r14,r4
    mov 0x00,r5
    jsr @r10
    mov r14,r4
    bra LAB_ce317de
    nop

LAB_ce3169e:
    mov r13,r0
    nop
    mov.w @(DAT_ce316d8,pc),r4
    mov.w r0,@(0x1c,r14)
    add r14,r4
    mov.w r0,@(0x8,r4)
    mov.w r0,@(0x6,r4)
    mov.w r0,@(0x4,r4)
    mov.b @(0x7,r14),r0
    bra LAB_ce3171a
    mov r0,r6

LAB_ce316b4:
    mov.w @(DAT_ce316da,pc),r0
    mov 0x04,r5
    mov.w r13,@(r0,r14)
    jsr @r10
    mov r14,r4
    mov 0x25,r0
    mov.b @(r0,r14),r6
    mov 0x01,r5
    mov 0x02,r7
    extu.b r6,r6
    shll r6
    add 0x08,r6
    jsr @r11
    mov r14,r4
    bra LAB_ce317de
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce316d4:
    #data 0x0130
DAT_ce316d6:
    #data 0x01d2
DAT_ce316d8:
    #data 0x02a4
DAT_ce316da:
    #data 0x02ae
    #align4

PTR_ce316dc:
    #data loc_8c03319e
PTR_ce316e0:
    #data DAT_ce35201
PTR_ce316e4:
    #data loc_8c289636
DAT_ce316e8:
    #data 0x43a00000
PTR_ce316ec:
    #data loc_8c26a5a0
PTR_ce316f0:
    #data loc_8c26823c
PTR_ce316f4:
    #data loc_8c0e0460
PTR_ce316f8:
    #data loc_8c03544c

;=============================================

LAB_ce316fc:
    mov 0x05,r5
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce31800,pc),r0
    mov 0x01,r5
    mov 0x02,r7
    mov.w r13,@(r0,r14)
    mov 0x25,r0
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x08,r6
    jsr @r11
    mov r14,r4
    mov 0x0C,r6

LAB_ce3171a:
    mov 0x13,r5
    jsr @r12
    mov r14,r4
    bra LAB_ce317de
    nop

LAB_ce31724:
    mov.b @(r0,r14),r6
    mov 0x13,r5
    mov.l @(PTR_ce31810,pc),r0
    extu.b r6,r6
    mov.b @(r0,r6),r6
    jsr @r12
    mov r14,r4
    bra LAB_ce317de
    nop

LAB_ce31736:
    mov 0x20,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce317cc
    mov.b @(0x7,r14),r0
    mov.w @(DAT_ce31802,pc),r10
    extu.b r0,r0
    cmp/eq 0x05,r0
    bf LAB_ce31764
    mov.w @(DAT_ce31804,pc),r0
    mov.b r10,@(r0,r14)
    add 0x88,r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce317cc
    mov.w @(DAT_ce31806,pc),r0
    mov 0x13,r5
    mov 0x03,r6
    mov.w r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    bra LAB_ce317cc
    nop

LAB_ce31764:
    cmp/eq 0x06,r0
    bf LAB_ce31784
    mov.w @(DAT_ce31804,pc),r0
    mov.b r10,@(r0,r14)
    add 0x8A,r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce317cc
    mov.w @(DAT_ce31800,pc),r0
    mov 0x13,r5
    mov 0x0D,r6
    mov.w r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    bra LAB_ce317cc
    nop

LAB_ce31784:
    mov.l @(PTR_ce31814,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt/s LAB_ce31796
    mov r14,r4
    mov.w @(DAT_ce31804,pc),r0
    mov.b r10,@(r0,r14)

LAB_ce31796:
    bsr FUN_ce31492
    nop
    mov.w @(DAT_ce31808,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce317de
    mov r11,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31808,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3180a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce317ba
    mov r14,r4
    bra LAB_ce317bc
    mov 0x03,r5

LAB_ce317ba:
    mov 0x02,r5

LAB_ce317bc:
    lds.l @r15+,PR
    mov.l @(PTR_ce31818,pc),r3
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce317cc:
    lds.l @r15+,PR
    mov.l @(PTR_ce31814,pc),r3
    mov r14,r4
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce317de:
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce317ec:
    mov.w @(DAT_ce3180c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce3181c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31800:
    #data 0x02b0
DAT_ce31802:
    #data 0x00ff
DAT_ce31804:
    #data 0x0326
DAT_ce31806:
    #data 0x02ae
DAT_ce31808:
    #data 0x0141
DAT_ce3180a:
    #data 0x02ac
DAT_ce3180c:
    #data 0x01e9
    #align4
    
PTR_ce31810:
    #data DAT_ce351fc
PTR_ce31814:
    #data loc_8c034dee
PTR_ce31818:
    #data loc_8c095254
PTR_ce3181c:
    #data PTR_ce35214

;=============================================

FUN_ce31820:
    mov 0x5C,r0
    fmov.s @(r0,r4),fr1
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    mov 0x68,r1
    add r4,r1
    fadd fr1,fr3
    fmov fr3,@(r0,r4)
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
    fmov fr2,@(r0,r4)
    mov 0x5C,r0
    fmov.s @(r0,r4),fr0
    rts
    fmul fr1,fr0

LAB_ce3185e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce318c4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31964,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31968,pc),r2
    mov 0x00,r5
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
    mov 0x3C,r3
    mov.w @(DAT_ce3195c,pc),r0
    mov 0x00,r4
    mov r4,r6
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3196c,pc),r3
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
    mov.l @(PTR_ce31970,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce318c4:
    mov.l @(PTR_ce31974,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce318da
    lds.l @r15+,PR
    mov.l @(PTR_ce31978,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce318da:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318e0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31942
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov r3,r5
    add 0x01,r0
    mov.w @(DAT_ce31962,pc),r1
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    add r14,r1
    mov.w @(DAT_ce3195e,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31960,pc),r0
    mov.l @(PTR_ce31968,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31962,pc),r0
    mov.l @(r0,r14),r0
    xor 0x01,r0
    mov.l r0,@r1
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31964,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3197c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31970,pc),r2
    mov 0x16,r5
    mov 0x13,r6
    jsr @r2
    mov r14,r4
    bra LAB_ce319a4
    nop

LAB_ce31942:
    mov.l @(PTR_ce31974,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31980
    mov.l @(PTR_ce31978,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3195c:
    #data 0x01a1
DAT_ce3195e:
    #data 0x01f9
DAT_ce31960:
    #data 0x041c
DAT_ce31962:
    #data 0x00cc
    #align4

PTR_ce31964:
    #data loc_8c05218a
PTR_ce31968:
    #data loc_8c035162
PTR_ce3196c:
    #data loc_8c2896b0
PTR_ce31970:
    #data loc_8c034e8c
PTR_ce31974:
    #data loc_8c034dee
PTR_ce31978:
    #data loc_8c051648
PTR_ce3197c:
    #data loc_8c05115a

;=============================================

LAB_ce31980:
    mov.w @(DAT_ce31a78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce319a4
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31a80,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31a84,pc),r0
    mov.l @(PTR_ce31a88,pc),r3
    mov 0x03,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce319a4:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce319ac:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce319c2
    mov.l @(PTR_ce31a8c,pc),r3
    mov 0x02,r0
    mov.w r0,@(0x1c,r4)
    jmp @r3
    mov 0x08,r5

LAB_ce319c2:
    rts
    nop

;=============================================

FUN_ce319c6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31a90,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319e0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31a94,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce319e0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce319e8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a98,pc),r3
    jsr @r3
    mov r4,r14
    bsr FUN_ce319ac
    mov r14,r4
    mov.w @(DAT_ce31a7a,pc),r0
    mov 0x02,r3
    mov 0x5C,r1
    mov.b r3,@(r0,r14)
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
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf LAB_ce31a64
    mov.w @(DAT_ce31a7c,pc),r0
    mov 0x01,r4
    mov r4,r1
    mov.b @(r0,r14),r2
    add 0xD5,r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    xor r4,r3
    shad r3,r1
    tst r1,r2
    bf LAB_ce31a64
    lds.l @r15+,PR
    mov.l @(PTR_ce31a90,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a64:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31a9c,pc),r3
    mov 0x2C,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a78:
    #data 0x0141
DAT_ce31a7a:
    #data 0x01f5
DAT_ce31a7c:
    #data 0x01fd
    #align4

DAT_ce31a80:
    #data 0xc1855555
DAT_ce31a84:
    #data 0x431a4924
PTR_ce31a88:
    #data loc_8c050834
PTR_ce31a8c:
    #data loc_8c0e0460
PTR_ce31a90:
    #data loc_8c034dee
PTR_ce31a94:
    #data loc_8c051648
PTR_ce31a98:
    #data loc_8c05218a
PTR_ce31a9c:
    #data loc_8c034e8c

;=============================================

LAB_ce31aa0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b9c,pc),r3
    jsr @r3
    mov r4,r14
    bsr FUN_ce319ac
    mov r14,r4
    mov.w @(DAT_ce31b8c,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31ba0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31b8e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31aee
    mov 0x00,r4
    mov.b @(r0,r14),r3
    mova @(DAT_ce31ba4,pc),r0
    fmov.s @r0,fr3
    mov 0x34,r2
    lds r3,FPUL
    mov.w @(DAT_ce31b8e,pc),r0
    float FPUL,fr4
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31b90,pc),r0
    mov.b @(r0,r14),r3
    fmul fr3,fr4
    tst r3,r3
    bt/s LAB_ce31ae6
    add r14,r2
    fmov fr4,fr2
    bra LAB_ce31ae8
    fneg fr2

LAB_ce31ae6:
    fmov fr4,fr2

LAB_ce31ae8:
    fmov.s @r2,fr3
    fadd fr2,fr3
    fmov.s fr3,@r2

LAB_ce31aee:
    mov.w @(DAT_ce31b92,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31afe
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31afe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b04:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31b9c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31ba8,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31b94,pc),r0
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31b96,pc),r0
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31b98,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x10,r0
    bf LAB_ce31b6c
    mov.w @(DAT_ce31b9a,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bt/s LAB_ce31b58
    extu.b r4,r4
    mova @(DAT_ce31bac,pc),r0
    bra LAB_ce31b5c
    fmov.s @r0,fr4

LAB_ce31b58:
    mova @(DAT_ce31bb0,pc),r0
    fmov.s @r0,fr4

LAB_ce31b5c:
    tst r4,r4
    bt LAB_ce31b66
    mova @(DAT_ce31bb4,pc),r0
    bra LAB_ce31bcc
    fmov.s @r0,fr5

LAB_ce31b66:
    mova @(DAT_ce31bb8,pc),r0
    bra LAB_ce31bcc
    fmov.s @r0,fr5

LAB_ce31b6c:
    mov.w @(DAT_ce31b9a,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bt/s LAB_ce31b7e
    extu.b r4,r4
    mova @(DAT_ce31bbc,pc),r0
    bra LAB_ce31b82
    fmov.s @r0,fr4

LAB_ce31b7e:
    mova @(DAT_ce31bc0,pc),r0
    fmov.s @r0,fr4

LAB_ce31b82:
    tst r4,r4
    bt LAB_ce31bc8
    mova @(DAT_ce31bc4,pc),r0
    bra LAB_ce31bcc
    fmov.s @r0,fr5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b8c:
    #data 0x01f5
DAT_ce31b8e:
    #data 0x0140
DAT_ce31b90:
    #data 0x01d2
DAT_ce31b92:
    #data 0x0141
DAT_ce31b94:
    #data 0x041c
DAT_ce31b96:
    #data 0x01f9
DAT_ce31b98:
    #data 0x01e9
DAT_ce31b9a:
    #data 0x01fe
    #align4

PTR_ce31b9c:
    #data loc_8c05218a
PTR_ce31ba0:
    #data loc_8c034dee
DAT_ce31ba4:
    #data 0x3fd55555
PTR_ce31ba8:
    #data loc_8c056de4
DAT_ce31bac:
    #data 0x41855555
DAT_ce31bb0:
    #data 0x41c80000
DAT_ce31bb4:
    #data 0xbf2d5555
DAT_ce31bb8:
    #data 0xbf480000
DAT_ce31bbc:
    #data 0xc1855555
DAT_ce31bc0:
    #data 0xc1baaaaa
DAT_ce31bc4:
    #data 0x3f2d5555

;=============================================

LAB_ce31bc8:
    mova @(DAT_ce31cbc,pc),r0
    fmov.s @r0,fr5

LAB_ce31bcc:
    mov.w @(DAT_ce31cac,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31bda
    mov 0x5C,r0
    bra LAB_ce31bde
    fmov fr4,fr3

LAB_ce31bda:
    fmov fr4,fr3
    fneg fr3

LAB_ce31bde:
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31cac,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31bee
    mov 0x68,r0
    bra LAB_ce31bf2
    fmov fr5,fr3

LAB_ce31bee:
    fmov fr5,fr3
    fneg fr3

LAB_ce31bf2:
    mov.l @(PTR_ce31cc0,pc),r3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x2B,r6
    lds.l @r15+,PR
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c02:
    mov r4,r3
    mov.l @(PTR_ce31cc4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31c14:
    mov.w @(DAT_ce31cae,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31c30
    mov.w @(DAT_ce31cb2,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31cb0,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31c30:
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce31cc8,pc),r3
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
    mov.l @(PTR_ce31ccc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31cac,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31c62
    mova @(DAT_ce31cd0,pc),r0
    bra LAB_ce31c66
    fmov.s @r0,fr3

LAB_ce31c62:
    mova @(DAT_ce31cd4,pc),r0
    fmov.s @r0,fr3

LAB_ce31c66:
    mov 0x5C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce31cb4,pc),r0
    mov 0x12,r6
    mov 0x16,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31cb6,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x28,r0
    mov.l @(PTR_ce31cc0,pc),r3
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c8a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31cb8,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31cba,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31cae,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31cd8
    bra LAB_ce31cda
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31cac:
    #data 0x01d2
DAT_ce31cae:
    #data 0x0255
DAT_ce31cb0:
    #data 0x00ff
DAT_ce31cb2:
    #data 0x03f0
DAT_ce31cb4:
    #data 0x041c
DAT_ce31cb6:
    #data 0x01f9
DAT_ce31cb8:
    #data 0x03f8
DAT_ce31cba:
    #data 0x0328
DAT_ce31cbc:
    #data 0x3f480000
PTR_ce31cc0:
    #data loc_8c034e8c
PTR_ce31cc4:
    #data PTR_ce35268
PTR_ce31cc8:
    #data loc_8c05115a
PTR_ce31ccc:
    #data loc_8c05218a
DAT_ce31cd0:
    #data 0x40baaaaa
DAT_ce31cd4:
    #data 0xc0baaaaa

;=============================================

LAB_ce31cd8:
    mov 0x00,r3

LAB_ce31cda:
    mov.w @(DAT_ce31dc8,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31dd8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31dca,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31d1a
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce31de0,pc),r3
    mov r15,r5
    add 0x01,r0
    fldi0 fr4
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    mov.w @(DAT_ce31dca,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31dcc,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce31ddc,pc),r0
    fmov.s fr4,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31d1a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d22:
    mov.w @(DAT_ce31dce,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce31dd0,pc),r0
    mov.b r2,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    rts
    mov.b r0,@(0x6,r4)

LAB_ce31d36:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xE4,r15
    mov.w @(DAT_ce31dce,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31dd0,pc),r0
    mov.l @(PTR_ce31dd8,pc),r3
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
    mov 0x01,r4
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
    mov.w @(DAT_ce31dd2,pc),r0
    mov.b @(r0,r14),r3
    add 0xD5,r0
    mov.b @(r0,r14),r2
    mov r4,r1
    extu.b r2,r2
    xor r4,r2
    shad r2,r1
    tst r1,r3
    bf/s LAB_ce31dae
    mov 0x00,r13
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce31de8

LAB_ce31dae:
    mov.w @(DAT_ce31dd4,pc),r0
    mov.l @(PTR_ce31de4,pc),r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31dd6,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce31ed0
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31dc8:
    #data 0x03f1
DAT_ce31dca:
    #data 0x0141
DAT_ce31dcc:
    #data 0x03f0
DAT_ce31dce:
    #data 0x03f8
DAT_ce31dd0:
    #data 0x0328
DAT_ce31dd2:
    #data 0x01fd
DAT_ce31dd4:
    #data 0x03f9
DAT_ce31dd6:
    #data 0x0327
    #align4

PTR_ce31dd8:
    #data loc_8c034dee
DAT_ce31ddc:
    #data 0x4322db6d
PTR_ce31de0:
    #data loc_8c050834
PTR_ce31de4:
    #data loc_8c051648

;=============================================

LAB_ce31de8:
    mov.l @(PTR_ce31f3c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce31ed0
    mov.l r0,@(0xc,r15)
    mov.b @(0x6,r14),r0
    mov 0x06,r6
    mov.l @(PTR_ce31f40,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f44,pc),r2
    mov 0x0F,r5
    mov 0x06,r6
    jsr @r2
    mov r14,r4
    mova @(DAT_ce31f48,pc),r0
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x10,r0
    mov.l @(PTR_ce31f50,pc),r3
    add 0x10,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce31f4c,pc),r0
    fmov.s @r0,fr3
    mov 0x14,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov 0x10,r0
    mov.w @(DAT_ce31f2a,pc),r3
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31f2c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31f54,pc),r3
    mov.l @(0xc,r15),r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f2e,pc),r0
    mov 0x0A,r2
    mov.w @(DAT_ce31f34,pc),r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31f30,pc),r0
    mov.l @(DAT_ce31f58,pc),r2
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f32,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce31f30,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31f32,pc),r0
    mov.l @(r0,r14),r4
    mov.l r4,@(0x8,r15)
    add r3,r4
    mov.l @(0x4,r4),r1
    and r2,r1
    or r1,r13
    tst r13,r13
    bt LAB_ce31e7c
    mov.w @(DAT_ce31f32,pc),r0
    mov.l @(r0,r14),r1
    mova @(DAT_ce31f5c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31f30,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r1)

LAB_ce31e7c:
    mov.w @(DAT_ce31f32,pc),r0
    mov.w @(DAT_ce31f34,pc),r3
    mov.l @(r0,r14),r4
    mov 0x00,r0
    mov.l @(DAT_ce31f60,pc),r2
    mov.l r4,@(0x4,r15)
    add r3,r4
    mov.l @r4,r1
    and r2,r1
    or r0,r1
    tst r1,r1
    bt LAB_ce31ea6
    mov.w @(DAT_ce31f32,pc),r0
    mov.l @(r0,r14),r3
    mova @(DAT_ce31f64,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31f30,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r3)

LAB_ce31ea6:
    mov.w @(DAT_ce31f32,pc),r0
    mov.w @(DAT_ce31f34,pc),r3
    mov.l @(r0,r14),r4
    mov 0x00,r0
    mov.l @(DAT_ce31f68,pc),r2
    mov.l r4,@r15
    add r3,r4
    mov.l @r4,r1
    and r2,r1
    or r0,r1
    tst r1,r1
    bt LAB_ce31ed0
    mov.w @(DAT_ce31f32,pc),r0
    mov.l @(r0,r14),r3
    mova @(DAT_ce31f6c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31f30,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r3)

LAB_ce31ed0:
    add 0x1C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31eda:
    mov.w @(DAT_ce31f36,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov 0x02,r14
    mov 0x01,r2
    sts.l PR,@-r15
    mov.b r14,@(r0,r4)
    mov.w @(DAT_ce31f38,pc),r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce31f3a,pc),r0
    mov.b r2,@(r0,r4)
    add 0x03,r0
    mov.b r14,@(r0,r4)
    add 0x08,r0
    mov.b r14,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce31f24
    mov.b @(0x6,r4),r0
    mov 0x07,r6
    mov.l @(PTR_ce31f44,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x40,r0
    mov.w r0,@(0x1c,r4)
    mov 0x04,r0
    mov.w r0,@(0x1e,r4)
    jsr @r3
    mov 0x0F,r5
    mov.l @(PTR_ce31f70,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce31f74,pc),r3
    mov.l r14,@r3

LAB_ce31f24:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f2a:
    #data 0x00c3
DAT_ce31f2c:
    #data 0x01f7
DAT_ce31f2e:
    #data 0x01a0
DAT_ce31f30:
    #data 0x041c
DAT_ce31f32:
    #data 0x01c8
DAT_ce31f34:
    #data 0x0414
DAT_ce31f36:
    #data 0x03f8
DAT_ce31f38:
    #data 0x0328
DAT_ce31f3a:
    #data 0x01ea
    #align4

PTR_ce31f3c:
    #data loc_8c045790
PTR_ce31f40:
    #data loc_8c02fec4
PTR_ce31f44:
    #data loc_8c034e8c
DAT_ce31f48:
    #data 0xc2a6aaaa
DAT_ce31f4c:
    #data 0x431e9249
PTR_ce31f50:
    #data loc_8c103660
PTR_ce31f54:
    #data loc_8c0523d8
DAT_ce31f58:
    #data 0x04000000
DAT_ce31f5c:
    #data 0x43009249
DAT_ce31f60:
    #data 0x20000000
DAT_ce31f64:
    #data 0x42676db6
DAT_ce31f68:
    #data 0x10000000
DAT_ce31f6c:
    #data 0x42452492
PTR_ce31f70:
    #data loc_8c030fec
PTR_ce31f74:
    #data loc_8c26a8ec

;=============================================

LAB_ce31f78:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce320bc,pc),r0
    mov r4,r14
    mov 0x02,r4
    mov.b r4,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce320be,pc),r0
    mov 0x01,r13
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce320c0,pc),r0
    mov.l @(PTR_ce320d0,pc),r3
    mov.b r13,@(r0,r14)
    add 0x03,r0
    mov.l r4,@r3
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce3204e
    mov.l @(PTR_ce320d4,pc),r12
    mov 0x04,r0
    jsr @r12
    mov.w r0,@(0x1e,r14)
    mov.l @(PTR_ce320d8,pc),r2
    tst r13,r0
    movt r5
    jsr @r2
    mov r14,r4
    jsr @r12
    nop
    and 0x7F,r0
    lds r0,FPUL
    cmp/pz r0
    bt/s LAB_ce31fd6
    float FPUL,fr3
    mov.l @(DAT_ce320dc,pc),r3
    lds r3,FPUL
    fsts FPUL,fr2
    fadd fr2,fr3

LAB_ce31fd6:
    mova @(DAT_ce320e0,pc),r0
    fmov.s @r0,fr2
    fmul fr2,fr3
    jsr @r12
    fmov.s fr3,@r15
    and 0x3F,r0
    lds r0,FPUL
    cmp/pz r0
    bt/s LAB_ce31ff2
    float FPUL,fr3
    mov.l @(DAT_ce320dc,pc),r3
    lds r3,FPUL
    fsts FPUL,fr2
    fadd fr2,fr3

LAB_ce31ff2:
    mova @(DAT_ce320e4,pc),r0
    fmov.s @r0,fr2
    mov 0x04,r0
    fmul fr2,fr3
    jsr @r12
    fmov fr3,@(r0,r15)
    tst r13,r0
    bt LAB_ce32008
    fmov.s @r15,fr3
    fneg fr3
    fmov.s fr3,@r15

LAB_ce32008:
    jsr @r12
    nop
    tst r13,r0
    bt LAB_ce3201a
    mov 0x04,r0
    fmov.s @(r0,r15),fr3
    mov 0x04,r0
    fneg fr3
    fmov fr3,@(r0,r15)

LAB_ce3201a:
    mov 0x34,r0
    fmov.s @r15,fr2
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce320e8,pc),r0
    mov.l @(PTR_ce320ec,pc),r3
    mov 0x00,r7
    fadd fr3,fr2
    mov 0x01,r6
    fmov.s fr2,@r15
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fmov.s @(r0,r15),fr1
    mov 0x04,r0
    fadd fr3,fr2
    fadd fr2,fr1
    fmov fr1,@(r0,r15)
    mov 0x3C,r0
    fmov.s @(r0,r14),fr2
    mov 0x08,r0
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce320c2,pc),r0
    mov.w @(r0,r14),r5
    jsr @r3
    mov r15,r4

LAB_ce3204e:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce32114
    mov.b @(0x6,r14),r0
    mov 0x00,r12
    mov.l @(PTR_ce320f0,pc),r3
    mov r14,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x10,r6
    mov.w @(DAT_ce320c4,pc),r0
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce320c6,pc),r0
    mov.b r12,@(r0,r14)
    add 0x01,r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce320c8,pc),r0
    mov.l @(r0,r14),r13
    jsr @r3
    mov r13,r4
    mov.w @(DAT_ce320ca,pc),r0
    mov 0x08,r3
    mov r12,r5
    mov r12,r6
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce320f4,pc),r3
    mov.b r12,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce320cc,pc),r0
    mov 0x24,r2
    mov.l @(PTR_ce320d0,pc),r3
    mov.b r2,@(r0,r13)
    mov.w @(DAT_ce320ce,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x40,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce320f8,pc),r0
    mov.l r12,@r3
    fmov.s @r0,fr4
    mov.w @(DAT_ce320c2,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bra LAB_ce320fc
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320bc:
    #data 0x03f8
DAT_ce320be:
    #data 0x0328
DAT_ce320c0:
    #data 0x01ea
DAT_ce320c2:
    #data 0x0130
DAT_ce320c4:
    #data 0x03f9
DAT_ce320c6:
    #data 0x0327
DAT_ce320c8:
    #data 0x01c8
DAT_ce320ca:
    #data 0x01b4
DAT_ce320cc:
    #data 0x01a1
DAT_ce320ce:
    #data 0x041c
    #align4

PTR_ce320d0:
    #data loc_8c26a8ec
PTR_ce320d4:
    #data loc_8c03319e
PTR_ce320d8:
    #data loc_8c04223a
DAT_ce320dc:
    #data 0x4f800000
DAT_ce320e0:
    #data 0x3fd55555
DAT_ce320e4:
    #data 0x40092492
DAT_ce320e8:
    #data 0x434db6db
PTR_ce320ec:
    #data loc_8c0fda40
PTR_ce320f0:
    #data loc_8c05a5b8
PTR_ce320f4:
    #data loc_8c02fec4
DAT_ce320f8:
    #data 0x41d55555

;=============================================

LAB_ce320fc:
    bt LAB_ce32106
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce3210c
    fadd fr4,fr3

LAB_ce32106:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fsub fr4,fr3

LAB_ce3210c:
    mov.l @(PTR_ce32238,pc),r3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce32114:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32120:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3223c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce3214a
    mov.w @(DAT_ce3222a,pc),r0
    mov 0x30,r3
    mov r14,r4
    mov.l @(r0,r14),r2
    add 0xE1,r0
    mov.b r3,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce32240,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3214a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32150:
    mov r4,r3
    mov.l @(PTR_ce32244,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32162:
    mov r4,r3
    mov.l @(PTR_ce32248,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32174:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3222c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3222e,pc),r0
    mov.b r4,@(r0,r14)
    add 0xAA,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce3224c,pc),r0
    extu.b r3,r3
    shll r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce32230,pc),r0
    mov.l @(PTR_ce32250,pc),r3
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
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    mov 0x0A,r5
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32254,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32258,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3225c,pc),r2
    mov 0x00,r5
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
    mov.w @(DAT_ce32232,pc),r0
    mov.l @(PTR_ce32260,pc),r1
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    mov.w @(r0,r1),r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce32264,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32234,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce3220c
    mov r14,r4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3220c:
    mov.l @(PTR_ce32268,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce3226c,pc),r2
    mov 0x14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32232,pc),r0
    mov 0x15,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce32270,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3222a:
    #data 0x020c
DAT_ce3222c:
    #data 0x02b2
DAT_ce3222e:
    #data 0x01f9
DAT_ce32230:
    #data 0x01a1
DAT_ce32232:
    #data 0x01a3
DAT_ce32234:
    #data 0x01d2
    #align4
    
PTR_ce32238:
    #data loc_8c0521d4
PTR_ce3223c:
    #data loc_8c034dee
PTR_ce32240:
    #data loc_8c051648
PTR_ce32244:
    #data PTR_ce35278
PTR_ce32248:
    #data PTR_ce35294
PTR_ce3224c:
    #data DAT_ce352b8
PTR_ce32250:
    #data loc_8c2896b0
PTR_ce32254:
    #data loc_8c056de4
PTR_ce32258:
    #data loc_8c05218a
PTR_ce3225c:
    #data loc_8c035162
PTR_ce32260:
    #data DAT_ce350de
DAT_ce32264:
    #data 0x413aaaaa
PTR_ce32268:
    #data loc_8c05115a
PTR_ce3226c:
    #data loc_8c042008
PTR_ce32270:
    #data loc_8c034e8c

;=============================================

LAB_ce32274:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32380,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32370,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce322a2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32372,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce322a2
    mov.l @(PTR_ce32384,pc),r3
    mov 0x06,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32374,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce322a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce322a8:
    mov.l r14,@-r15
    mova @(DAT_ce32388,pc),r0
    mov.l r13,@-r15
    mov r4,r14
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    fmov.s @r0,fr15
    mov.w @(DAT_ce32376,pc),r0
    mov.l @(PTR_ce3238c,pc),r12
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt/s LAB_ce32316
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32378,pc),r0
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3237a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce322e2
    mova @(DAT_ce32390,pc),r0
    bra LAB_ce322e6
    fmov.s @r0,fr3

LAB_ce322e2:
    mova @(DAT_ce32394,pc),r0
    fmov.s @r0,fr3

LAB_ce322e6:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32398,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3237c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32308
    mova @(DAT_ce3239c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)

LAB_ce32308:
    mov.l @(PTR_ce323a0,pc),r3
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce32366
    mov 0x04,r6

LAB_ce32316:
    mov.w @(DAT_ce32376,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce323ac

LAB_ce3231e:
    mov 0x05,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r3
    mov.w @(DAT_ce32378,pc),r0
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3237c,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce323a4,pc),r0
    extu.b r3,r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    add 0x60,r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32360
    mova @(DAT_ce323a8,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3237e,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32360
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32360:
    mov.w @(DAT_ce3237c,pc),r0
    mov.b @(r0,r14),r6
    add 0x06,r6

LAB_ce32366:
    mov 0x15,r5
    jsr @r12
    mov r14,r4
    bra LAB_ce3242a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32370:
    #data 0x0141
DAT_ce32372:
    #data 0x00cc
DAT_ce32374:
    #data 0x02b3
DAT_ce32376:
    #data 0x019e
DAT_ce32378:
    #data 0x02b2
DAT_ce3237a:
    #data 0x01d2
DAT_ce3237c:
    #data 0x01a3
DAT_ce3237e:
    #data 0x0130
    #align4

PTR_ce32380:
    #data loc_8c034dee
PTR_ce32384:
    #data loc_8c0e0460
DAT_ce32388:
    #data 0xbf4db6db
PTR_ce3238c:
    #data loc_8c034e8c
DAT_ce32390:
    #data 0xc0555555
DAT_ce32394:
    #data 0x40555555
DAT_ce32398:
    #data 0x41092492
DAT_ce3239c:
    #data 0x41892492
PTR_ce323a0:
    #data loc_8c053082
PTR_ce323a4:
    #data DAT_ce350e4
DAT_ce323a8:
    #data 0x3ed55555

;=============================================

LAB_ce323ac:
    mov.l @(PTR_ce324f0,pc),r2
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce3242a
    mov.w @(DAT_ce324e6,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3231e
    mov 0x08,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r3
    mov.w @(DAT_ce324e8,pc),r0
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce324ea,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3241a
    mova @(DAT_ce324f4,pc),r0
    bra LAB_ce3241e
    fmov.s @r0,fr3

LAB_ce3241a:
    mova @(DAT_ce324f8,pc),r0
    fmov.s @r0,fr3

LAB_ce3241e:
    mov 0x68,r0
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    mov 0x02,r6
    jsr @r12
    mov r14,r4

LAB_ce3242a:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32436:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce324f0,pc),r3
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
    mov.w @(DAT_ce324ec,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce324be
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    fldi0 fr4
    mov 0x15,r5
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
    mov 0x05,r6
    mov.w @(DAT_ce324ec,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce324ee,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce324fc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32500,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce324be:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce324c4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce324f0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324de
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32504,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce324de:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce324e6:
    #data 0x00cc
DAT_ce324e8:
    #data 0x02b2
DAT_ce324ea:
    #data 0x01d2
DAT_ce324ec:
    #data 0x041c
DAT_ce324ee:
    #data 0x01f9
    #align4

PTR_ce324f0:
    #data loc_8c034dee
DAT_ce324f4:
    #data 0xbf555555
DAT_ce324f8:
    #data 0x3f555555
PTR_ce324fc:
    #data loc_8c034e8c
PTR_ce32500:
    #data loc_8c0511b4
PTR_ce32504:
    #data loc_8c051648

;=============================================

LAB_ce32508:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce325ec,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce325e4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32544
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce325f0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce325e4,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce32544:
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
    mov.w @(DAT_ce325e6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32590
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce325f4,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce325e8,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32588
    mov r14,r4
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32588:
    lds.l @r15+,PR
    mov.l @(PTR_ce325f8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32590:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32596:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce325ec,pc),r3
    jsr @r3
    mov r4,r14
    bsr FUN_ce31820
    mov r14,r4
    fldi0 fr3
    fcmp/gt fr0,fr3
    bf LAB_ce325b4
    mov 0x5C,r0
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce325b4:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce325de
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32600,pc),r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce325fc,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce325ea,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    add 0x08,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce325de:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325e4:
    #data 0x014b
DAT_ce325e6:
    #data 0x0141
DAT_ce325e8:
    #data 0x0130
DAT_ce325ea:
    #data 0x01a3
    #align4

PTR_ce325ec:
    #data loc_8c034dee
PTR_ce325f0:
    #data loc_8c2896b0
DAT_ce325f4:
    #data 0x3ed55555
PTR_ce325f8:
    #data loc_8c053082
DAT_ce325fc:
    #data 0xc0092492
PTR_ce32600:
    #data loc_8c034e8c

;=============================================

LAB_ce32604:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce326e8,pc),r3
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
    mov.w @(DAT_ce326e2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3268e
    mov 0x04,r0
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
    mov 0x01,r3
    mov.w @(DAT_ce326e2,pc),r0
    mov 0x15,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce326e4,pc),r0
    mov.b r3,@(r0,r14)
    add 0xAA,r0
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce326ec,pc),r3
    add 0x0A,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce326f0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3268e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32694:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce326e8,pc),r3
    jsr @r3
    mov r4,r14
    bsr FUN_ce31820
    mov r14,r4
    fldi0 fr3
    fcmp/gt fr0,fr3
    bf LAB_ce326c4
    mov 0x5C,r0
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x04,r0
    mov.l @(PTR_ce326ec,pc),r3
    mov r14,r4
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    lds.l @r15+,PR
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce326c4:
    lds.l @r15+,PR
    mov.l @(PTR_ce326f4,pc),r3
    mov 0x03,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce326d0:
    mov r4,r3
    mov.l @(PTR_ce326f8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326e2:
    #data 0x041c
DAT_ce326e4:
    #data 0x01f9
    #align4
    
PTR_ce326e8:
    #data loc_8c034dee
PTR_ce326ec:
    #data loc_8c034e8c
PTR_ce326f0:
    #data loc_8c0511b4
PTR_ce326f4:
    #data loc_8c05120e
PTR_ce326f8:
    #data PTR_ce352bc

;=============================================

LAB_ce326fc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce32834,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32824,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32826,pc),r0
    mov 0x04,r5
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce32838,pc),r0
    extu.b r2,r2
    shll r2
    mov.b @(r0,r2),r3
    mov.w @(DAT_ce32828,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3283c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32840,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32844,pc),r3
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
    mov.w @(DAT_ce32826,pc),r0
    mov.l @(PTR_ce32848,pc),r1
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    mov.w @(r0,r1),r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32826,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce3284c,pc),r0
    extu.b r3,r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3282a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce3279a
    mov 0x14,r5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3279a:
    mov.l @(PTR_ce32850,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32826,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce32854,pc),r3
    mov.b @(r0,r14),r6
    add 0x1D,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3282c,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt LAB_ce327c8
    mov.w @(DAT_ce3282e,pc),r0
    mov 0x06,r5
    mov.l @(PTR_ce32858,pc),r3
    mov r14,r4
    mov.b r13,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce327c8:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce327d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3285c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32830,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3281e
    mov.b @(0x6,r14),r0
    mov 0x34,r1
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3282a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce327f8
    add r14,r1
    bra LAB_ce327fa
    mov 0x20,r3

LAB_ce327f8:
    mov 0xE0,r3

LAB_ce327fa:
    lds r3,FPUL
    fmov.s @r1,fr2
    mov.w @(DAT_ce3282c,pc),r0
    float FPUL,fr3
    fadd fr3,fr2
    fmov.s fr2,@r1
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3281e
    mov.w @(DAT_ce3282e,pc),r0
    mov 0x01,r3
    mov 0x06,r5
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce32858,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3281e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32824:
    #data 0x02b2
DAT_ce32826:
    #data 0x01a3
DAT_ce32828:
    #data 0x01a1
DAT_ce3282a:
    #data 0x01d2
DAT_ce3282c:
    #data 0x00cc
DAT_ce3282e:
    #data 0x02b3
DAT_ce32830:
    #data 0x0141
    #align4
    
PTR_ce32834:
    #data loc_8c035162
PTR_ce32838:
    #data DAT_ce352d8
PTR_ce3283c:
    #data loc_8c2896b0
PTR_ce32840:
    #data loc_8c056de4
PTR_ce32844:
    #data loc_8c05218a
PTR_ce32848:
    #data DAT_ce350ec
PTR_ce3284c:
    #data DAT_ce350f0
PTR_ce32850:
    #data loc_8c042008
PTR_ce32854:
    #data loc_8c034e8c
PTR_ce32858:
    #data loc_8c0e0460
PTR_ce3285c:
    #data loc_8c034dee

;=============================================

LAB_ce32860:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32980,pc),r3
    jsr @r3
    mov r4,r14
    mova @(DAT_ce32984,pc),r0
    mov.l @(PTR_ce32988,pc),r13
    fmov.s @r0,fr5
    mov 0x01,r5
    mov.w @(DAT_ce32976,pc),r0
    mov 0x02,r6
    mov.b @(r0,r14),r3
    tst r5,r3
    bt/s LAB_ce328ca
    mov 0x00,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32978,pc),r0
    mov.b r6,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3297a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3289c
    mova @(DAT_ce3298c,pc),r0
    bra LAB_ce328a0
    fmov.s @r0,fr3

LAB_ce3289c:
    mova @(DAT_ce32990,pc),r0
    fmov.s @r0,fr3

LAB_ce328a0:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32994,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3297c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce328c2
    mova @(DAT_ce32998,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)

LAB_ce328c2:
    mov 0x6C,r0
    fmov fr5,@(r0,r14)
    bra LAB_ce328ec
    mov 0x04,r6

LAB_ce328ca:
    mova @(DAT_ce3299c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32976,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce328f6
    mov 0x05,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32978,pc),r0
    mov.b r5,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3297c,pc),r0
    mov.b @(r0,r14),r6
    add 0x20,r6

LAB_ce328ec:
    mov 0x15,r5
    jsr @r13
    mov r14,r4
    bra LAB_ce3296e
    nop

LAB_ce328f6:
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
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3296e
    mov 0x06,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32978,pc),r0
    mov.b r6,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3297a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32956
    mova @(DAT_ce329a0,pc),r0
    bra LAB_ce3295a
    fmov.s @r0,fr3

LAB_ce32956:
    mova @(DAT_ce329a4,pc),r0
    fmov.s @r0,fr3

LAB_ce3295a:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov 0x15,r5
    fmov fr5,@(r0,r14)
    mov 0x1F,r6
    jsr @r13
    mov r14,r4

LAB_ce3296e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32976:
    #data 0x019e
DAT_ce32978:
    #data 0x02b2
DAT_ce3297a:
    #data 0x01d2
DAT_ce3297c:
    #data 0x01a3
    #align4
    
PTR_ce32980:
    #data loc_8c034dee
DAT_ce32984:
    #data 0xbf4db6db
PTR_ce32988:
    #data loc_8c034e8c
DAT_ce3298c:
    #data 0xc0555555
DAT_ce32990:
    #data 0x40555555
DAT_ce32994:
    #data 0x41092492
DAT_ce32998:
    #data 0x41892492
DAT_ce3299c:
    #data 0x40092492
DAT_ce329a0:
    #data 0xbe555555
DAT_ce329a4:
    #data 0x3e555555

;=============================================

LAB_ce329a8:
    mov.w @(DAT_ce32a6a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce329ea
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    fldi0 fr4
    mov 0x05,r6
    add 0x01,r0
    mov.l @(PTR_ce32a6c,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32a6a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32a70,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce329ea:
    mov 0x5C,r1
    mov.l @(PTR_ce32a74,pc),r3
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

LAB_ce32a2c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x68,r1
    mov.l @(PTR_ce32a74,pc),r3
    add r14,r1
    mov 0x5C,r0
    sts.l PR,@-r15
    fmov.s @r1,fr3
    mov 0x5C,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a64
    lds.l @r15+,PR
    mov.l @(PTR_ce32a78,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a64:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a6a:
    #data 0x041c
    #align4

PTR_ce32a6c:
    #data loc_8c034e8c
PTR_ce32a70:
    #data loc_8c0511b4
PTR_ce32a74:
    #data loc_8c034dee
PTR_ce32a78:
    #data loc_8c051648

;=============================================

LAB_ce32a7c:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32bd0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32bc6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32aba
    mov 0x00,r4
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32bd4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce32bc6,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce32aba:
    mov.w @(DAT_ce32bc8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32af8
    fldi0 fr15
    mov.b r4,@(r0,r14)
    add 0x62,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32bd8,pc),r0
    extu.b r3,r3
    mov.l @(DAT_ce32be0,pc),r1
    shll2 r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    lds r1,FPUL
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32bdc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fldi1 fr3
    fadd fr3,fr3
    fmov.s @(r0,r14),fr2
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fsts FPUL,fr2
    fadd fr2,fr1
    fmov fr1,@(r0,r14)

LAB_ce32af8:
    mov.l @(PTR_ce32be4,pc),r3
    jsr @r3
    mov r14,r4
    fldi0 fr3
    fcmp/gt fr0,fr3
    bf/s LAB_ce32b0e
    fldi0 fr3
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce32b0e:
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32b40
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce32bec,pc),r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce32be8,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    mov.w @(DAT_ce32bca,pc),r0
    mov.b @(r0,r14),r6
    fmov.s @r15+,fr15
    add 0x08,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32b40:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce32b48:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32bd0,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce32be4,pc),r2
    fldi0 fr15
    jsr @r2
    mov r14,r4
    fldi0 fr3
    fcmp/gt fr0,fr3
    bf LAB_ce32b6a
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce32b6a:
    mov.w @(DAT_ce32bcc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32bac
    mov 0x04,r0
    mov.l @(PTR_ce32bec,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov 0x15,r5
    mov.w @(DAT_ce32bcc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32bca,pc),r0
    mov.b @(r0,r14),r6
    add 0x0A,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32bf0,pc),r2
    mov r14,r4
    fmov.s @r15+,fr15
    jmp @r2
    mov.l @r15+,r14

LAB_ce32bac:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce32bb4:
    mov r4,r3
    mov.l @(PTR_ce32bf4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32bc6:
    #data 0x014b
DAT_ce32bc8:
    #data 0x0141
DAT_ce32bca:
    #data 0x01a3
DAT_ce32bcc:
    #data 0x041c
    #align4
    
PTR_ce32bd0:
    #data loc_8c034dee
PTR_ce32bd4:
    #data loc_8c2896b0
PTR_ce32bd8:
    #data DAT_ce350f8
DAT_ce32bdc:
    #data 0xbf4db6db
DAT_ce32be0:
    #data 0x41200000
PTR_ce32be4:
    #data FUN_ce31820
DAT_ce32be8:
    #data 0xc0092492
PTR_ce32bec:
    #data loc_8c034e8c
PTR_ce32bf0:
    #data loc_8c0511b4
PTR_ce32bf4:
    #data PTR_ce352dc

;=============================================

LAB_ce32bf8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x00,r12
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32d48,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32d3a,pc),r0
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32d4c,pc),r2
    mov r12,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32d50,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32d3c,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce32d54,pc),r3
    mov.l @(r0,r14),r2
    tst r2,r2
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
    add 0x60,r0
    mov.l @(r0,r14),r4
    mov 0x01,r13
    mov.w @(DAT_ce32d3e,pc),r0
    and r4,r13
    mov.b @(r0,r14),r5
    shll r13
    extu.b r5,r3
    add r3,r13
    mov r4,r0
    nop
    mov.l @(PTR_ce32d58,pc),r3
    extu.b r5,r5
    shll2 r0
    mov.w @(DAT_ce32d40,pc),r1
    add r3,r0
    mov r14,r4
    shll r5
    mov.w @(r0,r5),r0
    add r14,r1
    mov 0x15,r5
    mov.w r0,@(0x1c,r14)
    mov.l @(PTR_ce32d5c,pc),r0
    mov.b @(r0,r13),r2
    mov.w @(DAT_ce32d42,pc),r0
    mov.b r2,@r1
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32d60,pc),r2
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r2,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r3
    add 0x01,r3
    mov.w r3,@(r0,r1)
    mov.l @(PTR_ce32d64,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r13),r6
    mov.l @r15+,r12
    mov.l @(PTR_ce32d68,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ca2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32d6c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32d44,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32ce2
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    add 0x8B,r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce32cc6
    mov r14,r4
    bra LAB_ce32cc8
    mov 0x00,r5

LAB_ce32cc6:
    mov 0x06,r5

LAB_ce32cc8:
    mov.l @(PTR_ce32d70,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce32d74,pc),r2
    mov 0x1E,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32d46,pc),r0
    mov 0x00,r3
    mov 0x10,r2
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)

LAB_ce32ce2:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce32d12
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32d3c,pc),r0
    lds.l @r15+,PR
    mov.l @(r0,r14),r6
    mov.w @(DAT_ce32d3e,pc),r0
    shll r6
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32d78,pc),r0
    extu.b r3,r3
    add r3,r6
    mov.l @(PTR_ce32d68,pc),r3
    mov.b @(r0,r6),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32d12:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32d18:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32d6c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32d32
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32d7c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32d32:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d3a:
    #data 0x01f9
DAT_ce32d3c:
    #data 0x00cc
DAT_ce32d3e:
    #data 0x01a3
DAT_ce32d40:
    #data 0x01a1
DAT_ce32d42:
    #data 0x01ac
DAT_ce32d44:
    #data 0x0141
DAT_ce32d46:
    #data 0x027b
    #align4

PTR_ce32d48:
    #data loc_8c05218a
PTR_ce32d4c:
    #data loc_8c035162
PTR_ce32d50:
    #data loc_8c05115a
PTR_ce32d54:
    #data loc_8c056de4
PTR_ce32d58:
    #data DAT_ce35100
PTR_ce32d5c:
    #data DAT_ce352e8
PTR_ce32d60:
    #data loc_8c2896b0
PTR_ce32d64:
    #data DAT_ce352ec
PTR_ce32d68:
    #data loc_8c034e8c
PTR_ce32d6c:
    #data loc_8c034dee
PTR_ce32d70:
    #data loc_8c095254
PTR_ce32d74:
    #data loc_8c042008
PTR_ce32d78:
    #data DAT_ce352f0
PTR_ce32d7c:
    #data loc_8c051648

;=============================================

LAB_ce32d80:
    mov r4,r3
    mov.l @(PTR_ce32eec,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32d92:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x04,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32ee0,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x44,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32ef0,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32ef4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32ef8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32efc,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce32f00,pc),r0
    fldi0 fr2
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov.l @(DAT_ce32f04,pc),r1
    fdiv fr4,fr3
    mov.w @(DAT_ce32ee0,pc),r3
    lds r1,FPUL
    add r14,r3
    mov.l @(PTR_ce32f08,pc),r2
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    add 0x60,r0
    mov.l @(r0,r14),r0
    mov.b @r3,r3
    shll2 r0
    extu.b r3,r3
    add r2,r0
    shll r3
    mov.w @(r0,r3),r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32ee0,pc),r3
    mov.w @(DAT_ce32ee2,pc),r0
    add r14,r3
    mov.l @(PTR_ce32f0c,pc),r1
    mov.l @(r0,r14),r0
    mov.b @r3,r3
    shll r0
    add r0,r1
    extu.b r3,r3
    add r1,r3
    mov.w @(DAT_ce32ee4,pc),r1
    mov.b @r3,r0
    add r14,r1
    mov.l @(PTR_ce32ef0,pc),r3
    mov.b r0,@r1
    mov.w @(DAT_ce32ee6,pc),r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r2
    add 0x01,r2
    mov.w r2,@(r0,r1)
    mov.w @(DAT_ce32ee0,pc),r0
    mov.b @(r0,r14),r6
    add 0x15,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce32f10,pc),r2
    mov r14,r4
    mov 0x15,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32e6e:
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce32ee8,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf/s LAB_ce32ec0
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce32ec0:
    mov.l @(PTR_ce32f14,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce32eea,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32f28
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    add 0x8B,r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce32f18
    mov r14,r4
    bra LAB_ce32f1a
    mov 0x01,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ee0:
    #data 0x01a3
DAT_ce32ee2:
    #data 0x00cc
DAT_ce32ee4:
    #data 0x01a1
DAT_ce32ee6:
    #data 0x01ac
DAT_ce32ee8:
    #data 0x041c
DAT_ce32eea:
    #data 0x0141
    #align4

PTR_ce32eec:
    #data PTR_ce352f4
PTR_ce32ef0:
    #data loc_8c2896b0
PTR_ce32ef4:
    #data loc_8c056de4
PTR_ce32ef8:
    #data loc_8c05218a
PTR_ce32efc:
    #data loc_8c035162
DAT_ce32f00:
    #data 0x41000000
DAT_ce32f04:
    #data 0x42800000
PTR_ce32f08:
    #data DAT_ce35108
PTR_ce32f0c:
    #data DAT_ce35300
PTR_ce32f10:
    #data loc_8c034e8c
PTR_ce32f14:
    #data loc_8c034dee

;=============================================

LAB_ce32f18:
    mov 0x07,r5

LAB_ce32f1a:
    mov.l @(PTR_ce3301c,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce33020,pc),r2
    mov 0x1E,r5
    jsr @r2
    mov r14,r4

LAB_ce32f28:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce32f4c
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33024,pc),r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33010,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    add 0x17,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f4c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f52:
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce33012,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf/s LAB_ce32fa4
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce32fa4:
    mov.l @(PTR_ce33028,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32fba
    lds.l @r15+,PR
    mov.l @(PTR_ce3302c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32fba:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fc0:
    mov r4,r3
    mov.l @(PTR_ce33030,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32fd2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33034,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33014,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33016,pc),r0
    mov.l @(PTR_ce33038,pc),r5
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x08,r0
    bf/s LAB_ce3303c
    mov r5,r4
    mov 0x10,r0
    fmov.s @(r0,r4),fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x14,r0
    fmov.s @(r0,r5),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33018,pc),r0
    bra LAB_ce3306c
    mov 0x4C,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33010:
    #data 0x01a3
DAT_ce33012:
    #data 0x041c
DAT_ce33014:
    #data 0x01f9
DAT_ce33016:
    #data 0x0255
DAT_ce33018:
    #data 0x01a1
    #align4
    
PTR_ce3301c:
    #data loc_8c095254
PTR_ce33020:
    #data loc_8c042008
PTR_ce33024:
    #data loc_8c034e8c
PTR_ce33028:
    #data loc_8c034dee
PTR_ce3302c:
    #data loc_8c05176e
PTR_ce33030:
    #data PTR_ce35304
PTR_ce33034:
    #data loc_8c05218a
PTR_ce33038:
    #data DAT_ce35110

;=============================================

LAB_ce3303c:
    mov.w @(DAT_ce330fc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    shll2 r0
    fmov.s @(r0,r4),fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce330fc,pc),r0
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    shll r3
    shll2 r3
    add r3,r5
    fmov.s @(r0,r5),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce330fc,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    extu.b r3,r3
    shll r3
    add 0x4B,r3

LAB_ce3306c:
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce330fe,pc),r0
    mov.l @(PTR_ce33104,pc),r3
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
    mova @(DAT_ce33108,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33100,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce330a2
    mov 0x5C,r0
    bra LAB_ce330a8
    fmov.s @(r0,r14),fr3

LAB_ce330a2:
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3

LAB_ce330a8:
    mov 0x5C,r0
    mov.l @(PTR_ce3310c,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x08,r5
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.w @(DAT_ce330fc,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce33110,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    add 0x0C,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce330ce:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33114,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33102,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce330f6
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33118,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3311c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce330f6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce330fc:
    #data 0x01a3
DAT_ce330fe:
    #data 0x01ac
DAT_ce33100:
    #data 0x01d2
DAT_ce33102:
    #data 0x0141
    #align4

PTR_ce33104:
    #data loc_8c2896b0
DAT_ce33108:
    #data 0xbf4db6db
PTR_ce3310c:
    #data loc_8c056de4
PTR_ce33110:
    #data loc_8c034e8c
PTR_ce33114:
    #data loc_8c034dee
PTR_ce33118:
    #data loc_8c053082
PTR_ce3311c:
    #data loc_8c05115a

;=============================================

LAB_ce33120:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce33224,pc),r3
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
    mov.w @(DAT_ce3321e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce33196
    mov 0x00,r4
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33228,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3321e,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce33196:
    mov.w @(DAT_ce33220,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce331e4
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce3322c,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce33220,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33222,pc),r0
    mov.b r4,@(r0,r14)
    add 0xAA,r0
    mov.b @(r0,r14),r6
    add 0x0E,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33230,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33234,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce331e4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    

;=============================================

FUN_ce331ea:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33224,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33204
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33238,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33204:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3320c:
    mov r4,r3
    mov.l @(PTR_ce3323c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3321e:
    #data 0x014b
DAT_ce33220:
    #data 0x041c
DAT_ce33222:
    #data 0x01f9
    #align4

PTR_ce33224:
    #data loc_8c034dee
PTR_ce33228:
    #data loc_8c2896b0
PTR_ce3322c:
    #data loc_8c034e8c
PTR_ce33230:
    #data loc_8c05218a
PTR_ce33234:
    #data loc_8c0511b4
PTR_ce33238:
    #data loc_8c051648
PTR_ce3323c:
    #data PTR_ce35314

;=============================================

LAB_ce33240:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x04,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33314,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    extu.b r3,r3
    shll r3
    add 0x5A,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33318,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3331c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33320,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33314,pc),r0
    mov.l @(PTR_ce33324,pc),r1
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    mov.w @(r0,r1),r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce33314,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce33328,pc),r0
    extu.b r3,r3
    shll2 r3
    fmov.s @(r0,r3),fr4
    mov.w @(DAT_ce33316,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce332ba
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt/s LAB_ce332c4
    fneg fr4
    bra LAB_ce332c6
    nop

LAB_ce332ba:
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce332c6

LAB_ce332c4:
    fneg fr4

LAB_ce332c6:
    mov 0x5C,r0
    fldi0 fr2
    fmov.s @(r0,r14),fr3
    mov r14,r4
    mov.l @(PTR_ce3332c,pc),r3
    mov 0x15,r5
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce33314,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    add 0x19,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce332e6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33330,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33334
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce33334
    mov.l @(PTR_ce3332c,pc),r3
    mov 0x03,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov 0x22,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33314:
    #data 0x01a3
DAT_ce33316:
    #data 0x01d2
    #align4

PTR_ce33318:
    #data loc_8c2896b0
PTR_ce3331c:
    #data loc_8c056de4
PTR_ce33320:
    #data loc_8c05218a
PTR_ce33324:
    #data DAT_ce35130
PTR_ce33328:
    #data DAT_ce35128
PTR_ce3332c:
    #data loc_8c034e8c
PTR_ce33330:
    #data loc_8c034dee

;=============================================

LAB_ce33334:
    mov.w @(DAT_ce3349c,pc),r0
    mov.l @(PTR_ce334a8,pc),r5
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce33366
    mov 0x00,r4
    mov.b @(r0,r14),r3
    add 0x56,r0
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
    mov.w @(DAT_ce3349c,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce33366:
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
    mov.w @(DAT_ce3349e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33402
    mov 0x02,r0
    fldi0 fr4
    mov.b r0,@(0x6,r14)
    mov 0x5D,r3
    mov.w @(DAT_ce334a0,pc),r0
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
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3349e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce334a2,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce334ac,pc),r3
    mov 0x22,r6
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce334b0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33402:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33408:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce334b4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3342c
    mov.w @(DAT_ce334a4,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce334b8,pc),r1
    mov r14,r4
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r1
    mov.l @r15+,r14

LAB_ce3342c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33432:
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
    mov.w @(DAT_ce3349e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33486
    lds.l @r15+,PR
    mov.l @(PTR_ce334b8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33486:
    mov.l @(PTR_ce334b4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce334c0
    lds.l @r15+,PR
    mov.l @(PTR_ce334bc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3349c:
    #data 0x014b
DAT_ce3349e:
    #data 0x041c
DAT_ce334a0:
    #data 0x01a1
DAT_ce334a2:
    #data 0x01f9
DAT_ce334a4:
    #data 0x01d2
    #align4
    
PTR_ce334a8:
    #data loc_8c2896b0
PTR_ce334ac:
    #data loc_8c034e8c
PTR_ce334b0:
    #data loc_8c0511b4
PTR_ce334b4:
    #data loc_8c034dee
PTR_ce334b8:
    #data loc_8c051648
PTR_ce334bc:
    #data loc_8c05176e

;=============================================

LAB_ce334c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce334c6:
    mov r4,r3
    mov.l @(PTR_ce33600,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce334d8:
    mov.w @(DAT_ce335ee,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce334f6
    mov.w @(DAT_ce335f2,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce335f0,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce334f6:
    mov.b @(0x6,r14),r0
    mov 0x47,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce335f4,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33604,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33608,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3360c,pc),r3
    mov r13,r5
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
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce335f6,pc),r0
    mov.b r13,@(r0,r14)
    add 0xD9,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33558
    mova @(DAT_ce33610,pc),r0
    bra LAB_ce3355c
    fmov.s @r0,fr3

LAB_ce33558:
    mova @(DAT_ce33614,pc),r0
    fmov.s @r0,fr3

LAB_ce3355c:
    mov.l @(PTR_ce33618,pc),r3
    mov 0x5C,r0
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3361c,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33576:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce335f8,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce335fa,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce335ee,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33598
    bra LAB_ce3359a
    mov 0x02,r3

LAB_ce33598:
    mov 0x00,r3

LAB_ce3359a:
    mov.w @(DAT_ce335fc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33620,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce335fe,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce335e6
    mov.w @(DAT_ce335fe,pc),r0
    mov 0x00,r4
    mov r15,r5
    mov 0x01,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3362c,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce335f2,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33624,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33628,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4

LAB_ce335e6:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce335ee:
    #data 0x0255
DAT_ce335f0:
    #data 0x00ff
DAT_ce335f2:
    #data 0x03f0
DAT_ce335f4:
    #data 0x01a1
DAT_ce335f6:
    #data 0x01f9
DAT_ce335f8:
    #data 0x03f8
DAT_ce335fa:
    #data 0x0328
DAT_ce335fc:
    #data 0x03f1
DAT_ce335fe:
    #data 0x0141
    #align4

PTR_ce33600:
    #data PTR_ce35324
PTR_ce33604:
    #data loc_8c2896b0
PTR_ce33608:
    #data loc_8c05218a
PTR_ce3360c:
    #data loc_8c035162
DAT_ce33610:
    #data 0x41200000
DAT_ce33614:
    #data 0xc1200000
PTR_ce33618:
    #data loc_8c034e8c
PTR_ce3361c:
    #data loc_8c05115a
PTR_ce33620:
    #data loc_8c034dee
DAT_ce33624:
    #data 0x41d55555
DAT_ce33628:
    #data 0x4311b6db
PTR_ce3362c:
    #data loc_8c050834

;=============================================

LAB_ce33630:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3372e,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33730,pc),r0
    mov.l @(PTR_ce33740,pc),r13
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33732,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce336cc
    mov.l @(PTR_ce33744,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33734,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce33694
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

LAB_ce33694:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce336a6
    bra LAB_ce3380a
    nop

LAB_ce336a6:
    mov 0x07,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33736,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce336b8
    mova @(DAT_ce33748,pc),r0
    bra LAB_ce336bc
    fmov.s @r0,fr3

LAB_ce336b8:
    mova @(DAT_ce3374c,pc),r0
    fmov.s @r0,fr3

LAB_ce336bc:
    mov 0x68,r0
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mov 0x02,r6
    jsr @r13
    mov r14,r4
    bra LAB_ce3380a
    nop

LAB_ce336cc:
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bf/s LAB_ce336de
    fldi0 fr4
    mov.w @(DAT_ce33738,pc),r0
    mov.l @(r0,r14),r2
    mov.b @(0x3,r2),r0
    tst r0,r0
    bt LAB_ce33760

LAB_ce336de:
    mov 0x08,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3373a,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33750,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33736,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce336fe
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce336fe:
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce33754,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3373c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3371a
    mova @(DAT_ce33758,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)

LAB_ce3371a:
    mova @(DAT_ce3375c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x16,r5
    mov 0x04,r6
    fmov fr3,@(r0,r14)
    jsr @r13
    mov r14,r4
    bra LAB_ce3380a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3372e:
    #data 0x03f8
DAT_ce33730:
    #data 0x0328
DAT_ce33732:
    #data 0x019e
DAT_ce33734:
    #data 0x0141
DAT_ce33736:
    #data 0x01d2
DAT_ce33738:
    #data 0x01b0
DAT_ce3373a:
    #data 0x01f9
DAT_ce3373c:
    #data 0x01a3
    #align4
    
PTR_ce33740:
    #data loc_8c034e8c
PTR_ce33744:
    #data loc_8c034dee
DAT_ce33748:
    #data 0xbed55555
DAT_ce3374c:
    #data 0x3ed55555
DAT_ce33750:
    #data 0x40555555
DAT_ce33754:
    #data 0x40d55555
DAT_ce33758:
    #data 0x41555555
DAT_ce3375c:
    #data 0xbf4db6db

;=============================================

LAB_ce33760:
    mov.w @(DAT_ce33844,pc),r5
    mov 0x0A,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce33858,pc),r0
    add r14,r5
    fmov.s @r0,fr3
    mov.l @(DAT_ce3385c,pc),r4
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x00,r2
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov.l @r5,r3
    and r4,r3
    or r2,r3
    tst r3,r3
    bf LAB_ce337a2
    mov.w @(DAT_ce33846,pc),r0
    mov.w @(DAT_ce33848,pc),r3
    mov.l @(r0,r14),r0
    add r0,r3
    mov.w @(DAT_ce33846,pc),r0
    mov.b r2,@r3
    mov.l @(r0,r14),r1
    mov.w @(DAT_ce3384a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r1)
    mov.w @(DAT_ce33846,pc),r0
    mov.l @(r0,r14),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fmov fr3,@(r0,r3)

LAB_ce337a2:
    mova @(DAT_ce33860,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce3384c,pc),r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3384e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce337c4
    mov 0x5C,r0
    mov.w @(DAT_ce3384c,pc),r5
    fmov.s @(r0,r14),fr3
    add r14,r5
    fneg fr3
    fmov fr3,@(r0,r14)
    fmov.s @r5,fr3
    fneg fr3
    fmov.s fr3,@r5

LAB_ce337c4:
    mov.w @(DAT_ce33844,pc),r5
    mov 0x00,r2
    add r14,r5
    mov.l @r5,r3
    and r3,r4
    or r2,r4
    tst r4,r4
    bf LAB_ce337f0
    mov.w @(DAT_ce33846,pc),r0
    mov.l @(r0,r14),r1
    mov.w @(DAT_ce33850,pc),r0
    mov.w @(r0,r1),r3
    tst r3,r3
    bt LAB_ce337f0
    mov.w @(DAT_ce33846,pc),r0
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce3384c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fsub fr3,fr2
    fmov fr2,@(r0,r3)

LAB_ce337f0:
    mov 0x16,r5
    mov 0x11,r6
    jsr @r13
    mov r14,r4
    mov.w @(DAT_ce33846,pc),r0
    mov 0x14,r2
    mov.l @(r0,r14),r3
    add 0xF0,r0
    mov.b r2,@(r0,r3)
    add 0x10,r0
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce33852,pc),r0
    mov.l r3,@(r0,r14)

LAB_ce3380a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33812:
    mov.w @(DAT_ce33854,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33856,pc),r0
    mov.l @(PTR_ce33864,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3386c
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33868,pc),r3
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33844:
    #data 0x0414
DAT_ce33846:
    #data 0x01b0
DAT_ce33848:
    #data 0x01f9
DAT_ce3384a:
    #data 0x041c
DAT_ce3384c:
    #data 0x02a4
DAT_ce3384e:
    #data 0x01d2
DAT_ce33850:
    #data 0x0420
DAT_ce33852:
    #data 0x02bc
DAT_ce33854:
    #data 0x03f8
DAT_ce33856:
    #data 0x0328
DAT_ce33858:
    #data 0xc1555555
DAT_ce3385c:
    #data 0x07000000
DAT_ce33860:
    #data 0x43055555
PTR_ce33864:
    #data loc_8c034dee
PTR_ce33868:
    #data loc_8c034e8c

;=============================================

LAB_ce3386c:
    mov.w @(DAT_ce3399c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce338e4
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce339b4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x5C,r1
    mov.w @(DAT_ce3399c,pc),r0
    add r14,r1
    mov.b r4,@(r0,r14)
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
    mov.w @(DAT_ce3399e,pc),r4
    fadd fr3,fr2
    mov.l @(DAT_ce339b8,pc),r2
    add r14,r4
    fmov fr2,@(r0,r14)
    mov 0x00,r0
    mov.l @r4,r1
    and r2,r1
    or r0,r1
    tst r1,r1
    bf LAB_ce338e4
    mov.w @(DAT_ce339a0,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce339a2,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt LAB_ce338e4
    mov.w @(DAT_ce339a4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fsub fr3,fr2
    fmov fr2,@(r0,r4)

LAB_ce338e4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce338ea:
    mov.w @(DAT_ce339a6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce339a8,pc),r0
    mov.l @(PTR_ce339bc,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3399c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce33934
    mov 0x00,r4
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce339b4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3399c,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce33934:
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
    mov.w @(DAT_ce339aa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33996
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce339ac,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce339ae,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce339c0,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce339b0,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33986
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33986:
    mova @(DAT_ce339c4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce339c8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce33996:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3399c:
    #data 0x014b
DAT_ce3399e:
    #data 0x0414
DAT_ce339a0:
    #data 0x02bc
DAT_ce339a2:
    #data 0x0420
DAT_ce339a4:
    #data 0x02a4
DAT_ce339a6:
    #data 0x03f8
DAT_ce339a8:
    #data 0x0328
DAT_ce339aa:
    #data 0x0141
DAT_ce339ac:
    #data 0x03f9
DAT_ce339ae:
    #data 0x0327
DAT_ce339b0:
    #data 0x0130
    #align4
    
PTR_ce339b4:
    #data loc_8c2896b0
DAT_ce339b8:
    #data 0x07000000
PTR_ce339bc:
    #data loc_8c034dee
DAT_ce339c0:
    #data 0x3ed55555
DAT_ce339c4:
    #data 0x41cdb6db
DAT_ce339c8:
    #data 0xbf4db6db

;=============================================

LAB_ce339cc:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33b34,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33b28,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce33a0c
    fldi0 fr15
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33b38,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce33b28,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce33a0c:
    mov.l @(PTR_ce33b3c,pc),r3
    jsr @r3
    mov r14,r4
    fldi0 fr3
    fcmp/gt fr0,fr3
    bf/s LAB_ce33a22
    fldi0 fr3
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce33a22:
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33a48
    mov.b @(0x6,r14),r0
    mov 0x07,r6
    mov.l @(PTR_ce33b40,pc),r3
    mov 0x16,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce33a48:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce33a50:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33b34,pc),r3
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
    mov.w @(DAT_ce33b2a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33ad0
    mov 0x09,r0
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
    mov 0x16,r5
    mov.w @(DAT_ce33b2a,pc),r0
    mov 0x08,r6
    mov.l @(PTR_ce33b40,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33b44,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33ad0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33ad6:
    mov.w @(DAT_ce33b2c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33b2e,pc),r0
    mov.l @(PTR_ce33b34,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33b3c,pc),r2
    jsr @r2
    mov r14,r4
    fldi0 fr3
    fcmp/gt fr0,fr3
    bf LAB_ce33b48
    mov.w @(DAT_ce33b30,pc),r0
    mov 0x00,r4
    fmov fr3,fr4
    mov 0x03,r6
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce33b32,pc),r0
    mov.l @(PTR_ce33b40,pc),r3
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x09,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33b28:
    #data 0x014b
DAT_ce33b2a:
    #data 0x041c
DAT_ce33b2c:
    #data 0x03f8
DAT_ce33b2e:
    #data 0x0328
DAT_ce33b30:
    #data 0x03f9
DAT_ce33b32:
    #data 0x0327
    #align4

PTR_ce33b34:
    #data loc_8c034dee
PTR_ce33b38:
    #data loc_8c2896b0
PTR_ce33b3c:
    #data FUN_ce31820
PTR_ce33b40:
    #data loc_8c034e8c
PTR_ce33b44:
    #data loc_8c0511b4

;=============================================

LAB_ce33b48:
    lds.l @r15+,PR
    mov.l @(PTR_ce33cb0,pc),r3
    mov 0x03,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33b54:
    mov.w @(DAT_ce33c9a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33c9c,pc),r0
    mov.l @(PTR_ce33cb4,pc),r3
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
    mov.w @(DAT_ce33c9e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33bfa
    mov.w @(DAT_ce33ca0,pc),r0
    mov 0x00,r4
    fldi0 fr4
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x05,r6
    mov.w @(DAT_ce33ca2,pc),r0
    mov.l @(PTR_ce33cb8,pc),r3
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
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
    mov.w @(DAT_ce33c9e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33ca4,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33cbc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33bfa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    

;=============================================

FUN_ce33c00:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33cb4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33c1a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33cc0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33c1a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33c22:
    mov.w @(DAT_ce33c9a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33c9c,pc),r0
    mov.l @(PTR_ce33cb4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33c94
    mov 0x03,r0
    mov.l @(PTR_ce33cb8,pc),r3
    mov 0x5C,r1
    mov.b r0,@(0x6,r14)
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    mov 0x16,r5
    mov 0x00,r6
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33ca6,pc),r4
    mov 0x00,r1
    mov.l @(DAT_ce33cc4,pc),r3
    add r14,r4
    mov.l @r4,r2
    and r3,r2
    or r1,r2
    tst r2,r2
    bf LAB_ce33c94
    mov.w @(DAT_ce33ca8,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce33caa,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt LAB_ce33c94
    mov.w @(DAT_ce33cac,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fsub fr3,fr2
    fmov fr2,@(r0,r4)

LAB_ce33c94:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33c9a:
    #data 0x03f8
DAT_ce33c9c:
    #data 0x0328
DAT_ce33c9e:
    #data 0x041c
DAT_ce33ca0:
    #data 0x03f9
DAT_ce33ca2:
    #data 0x0327
DAT_ce33ca4:
    #data 0x01f9
DAT_ce33ca6:
    #data 0x0414
DAT_ce33ca8:
    #data 0x02bc
DAT_ce33caa:
    #data 0x0420
DAT_ce33cac:
    #data 0x02a4
    #align4
    
PTR_ce33cb0:
    #data loc_8c05120e
PTR_ce33cb4:
    #data loc_8c034dee
PTR_ce33cb8:
    #data loc_8c034e8c
PTR_ce33cbc:
    #data loc_8c0511b4
PTR_ce33cc0:
    #data loc_8c051648
DAT_ce33cc4:
    #data 0x07000000

;=============================================

LAB_ce33cc8:
    mov r4,r3
    mov.l @(PTR_ce33df8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33cda:
    mov.w @(DAT_ce33de6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce33cfa
    mov 0x00,r13
    mov.w @(DAT_ce33dea,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33de8,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33cfa:
    mov.w @(DAT_ce33dec,pc),r0
    mov.l @(PTR_ce33dfc,pc),r3
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33e00,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33e04,pc),r3
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x51,r3
    mov.w @(DAT_ce33dee,pc),r0
    mov 0x09,r6
    mov 0x16,r5
    mov r14,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33e08,pc),r3
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
    mov.l @(PTR_ce33e0c,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33d52:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33df0,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33df2,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33de6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33d74
    bra LAB_ce33d76
    mov 0x02,r3

LAB_ce33d74:
    mov 0x00,r3

LAB_ce33d76:
    mov.w @(DAT_ce33df4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33e10,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33df6,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce33d9c
    mov.w @(DAT_ce33df6,pc),r0
    mov 0x04,r5
    mov.l @(PTR_ce33e14,pc),r1
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce33d9c:
    mov.w @(DAT_ce33df6,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce33dde
    mov.w @(DAT_ce33df6,pc),r0
    mov 0x00,r4
    mov r15,r5
    mov 0x01,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33e20,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33dea,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33e18,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33e1c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4

LAB_ce33dde:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33de6:
    #data 0x0255
DAT_ce33de8:
    #data 0x00ff
DAT_ce33dea:
    #data 0x03f0
DAT_ce33dec:
    #data 0x01f9
DAT_ce33dee:
    #data 0x01a1
DAT_ce33df0:
    #data 0x03f8
DAT_ce33df2:
    #data 0x0328
DAT_ce33df4:
    #data 0x03f1
DAT_ce33df6:
    #data 0x0141
    #align4

PTR_ce33df8:
    #data PTR_ce35350
PTR_ce33dfc:
    #data loc_8c05218a
PTR_ce33e00:
    #data loc_8c035162
PTR_ce33e04:
    #data loc_8c05115a
PTR_ce33e08:
    #data loc_8c2896b0
PTR_ce33e0c:
    #data loc_8c034e8c
PTR_ce33e10:
    #data loc_8c034dee
PTR_ce33e14:
    #data loc_8c0952dc
DAT_ce33e18:
    #data 0x41555555
DAT_ce33e1c:
    #data 0x42f44924
PTR_ce33e20:
    #data loc_8c050834

;=============================================

LAB_ce33e24:
    mov.w @(DAT_ce33f52,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33f54,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    and 0x0F,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33e4e
    mov.l @(PTR_ce33f64,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce33e4e:
    lds.l @r15+,PR
    mov.l @(PTR_ce33f68,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33e58:
    mov.w @(DAT_ce33f56,pc),r0
    mov 0x00,r5
    mov.l @(PTR_ce33f6c,pc),r3
    mov 0x0A,r6
    mov.b r5,@(r0,r4)
    add 0xFF,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce33f58,pc),r0
    mov.b r5,@(r0,r4)
    add 0x01,r0
    mov.b r5,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x16,r5

LAB_ce33e78:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33f68,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33e92
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33f70,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33e92:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33e9a:
    mov r4,r3
    mov.l @(PTR_ce33f74,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33eac:
    mov.w @(DAT_ce33f5a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33ec8
    mov.w @(DAT_ce33f5e,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33f5c,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33ec8:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33f78,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33f7c,pc),r2
    mov 0x00,r5
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
    mov.l @(PTR_ce33f64,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33f60,pc),r0
    mov 0x65,r2
    mov 0x00,r4
    mov.l @(PTR_ce33f80,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov 0x0F,r6
    mov.l @r3,r2
    mov 0x16,r5
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mova @(DAT_ce33f84,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce33f6c,pc),r2
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r2
    mov.l @r15+,r14

LAB_ce33f30:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33f52,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33f54,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33f5a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33f88
    bra LAB_ce33f8a
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33f52:
    #data 0x03f8
DAT_ce33f54:
    #data 0x0328
DAT_ce33f56:
    #data 0x03f9
DAT_ce33f58:
    #data 0x0327
DAT_ce33f5a:
    #data 0x0255
DAT_ce33f5c:
    #data 0x00ff
DAT_ce33f5e:
    #data 0x03f0
DAT_ce33f60:
    #data 0x01a1
    #align4
    
PTR_ce33f64:
    #data loc_8c05115a
PTR_ce33f68:
    #data loc_8c034dee
PTR_ce33f6c:
    #data loc_8c034e8c
PTR_ce33f70:
    #data loc_8c051648
PTR_ce33f74:
    #data PTR_ce35364
PTR_ce33f78:
    #data loc_8c05218a
PTR_ce33f7c:
    #data loc_8c035162
PTR_ce33f80:
    #data loc_8c2896b0
DAT_ce33f84:
    #data 0x414db6db

;=============================================

LAB_ce33f88:
    mov 0x00,r3

LAB_ce33f8a:
    mov.w @(DAT_ce340ba,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce340d0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce340bc,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce33fce
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce340dc,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    mov 0x01,r6
    mov.w @(DAT_ce340be,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce340d4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce340d8,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce33fce:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33fd6:
    mov.w @(DAT_ce340c0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce340c2,pc),r0
    mov.l @(PTR_ce340d0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce340bc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce340b4
    mov.w @(DAT_ce340c4,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce340c6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3402e
    mov.b @(r0,r14),r2
    add 0x56,r0
    mov 0x00,r4
    mov.l @(PTR_ce340e0,pc),r3
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
    mov.w @(DAT_ce340c6,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3402e:
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce340b4
    mov.w @(DAT_ce340c8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34090
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce340ca,pc),r0
    mov.l @(r0,r14),r3
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    fmov fr3,@(r0,r3)
    mova @(DAT_ce340e4,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce340cc,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3407e
    mova @(DAT_ce340e8,pc),r0
    fmov.s @r0,fr4

LAB_ce3407e:
    mov.w @(DAT_ce340ca,pc),r0
    mov 0x10,r6
    mov.l @(r0,r14),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r3)
    bra LAB_ce340aa
    mov 0x16,r5

LAB_ce34090:
    mov.b @(0x6,r14),r0
    mov 0x01,r5
    mov 0x09,r6
    add 0x02,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce340ec,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce340f0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce340aa:
    lds.l @r15+,PR
    mov.l @(PTR_ce340f4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce340b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce340ba:
    #data 0x03f1
DAT_ce340bc:
    #data 0x0141
DAT_ce340be:
    #data 0x03f0
DAT_ce340c0:
    #data 0x03f8
DAT_ce340c2:
    #data 0x0328
DAT_ce340c4:
    #data 0x01f9
DAT_ce340c6:
    #data 0x014b
DAT_ce340c8:
    #data 0x019e
DAT_ce340ca:
    #data 0x01b0
DAT_ce340cc:
    #data 0x0130
    #align4
    
PTR_ce340d0:
    #data loc_8c034dee
DAT_ce340d4:
    #data 0xc23aaaaa
DAT_ce340d8:
    #data 0x430b4924
PTR_ce340dc:
    #data loc_8c050834
PTR_ce340e0:
    #data loc_8c2896b0
DAT_ce340e4:
    #data 0x42a00000
DAT_ce340e8:
    #data 0xc2a00000
DAT_ce340ec:
    #data 0xc0092492
DAT_ce340f0:
    #data 0xbf4db6db
PTR_ce340f4:
    #data loc_8c034e8c

;=============================================

LAB_ce340f8:
    mov.w @(DAT_ce34242,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x00,r13
    mov.w @(DAT_ce34244,pc),r0
    mov.l @(PTR_ce34250,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34148
    mov.w @(DAT_ce34246,pc),r0
    mov r14,r4
    fldi0 fr4
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce34248,pc),r0
    mov.l @(PTR_ce34254,pc),r3
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce34148:
    mov.w @(DAT_ce3424a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34178
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34258,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3424a,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce34178:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34180:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34250,pc),r3
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
    mov.w @(DAT_ce3424c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce34208
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov 0x15,r5
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
    mov 0x0A,r6
    mov.w @(DAT_ce3424c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3424e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3425c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34260,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34208:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3420e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34250,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34228
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce34264,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34228:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce34230:
    mov r4,r3
    mov.l @(PTR_ce34268,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34242:
    #data 0x03f8
DAT_ce34244:
    #data 0x0328
DAT_ce34246:
    #data 0x03f9
DAT_ce34248:
    #data 0x0327
DAT_ce3424a:
    #data 0x014b
DAT_ce3424c:
    #data 0x041c
DAT_ce3424e:
    #data 0x01f9
    #align4

PTR_ce34250:
    #data loc_8c034dee
PTR_ce34254:
    #data loc_8c0517be
PTR_ce34258:
    #data loc_8c2896b0
PTR_ce3425c:
    #data loc_8c034e8c
PTR_ce34260:
    #data loc_8c0511b4
PTR_ce34264:
    #data loc_8c051648
PTR_ce34268:
    #data PTR_ce3537c

;=============================================

LAB_ce3426c:
    mov.w @(DAT_ce34378,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce3428c
    mov 0x00,r13
    mov.w @(DAT_ce3437c,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3437a,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3428c:
    mov.w @(DAT_ce3437e,pc),r0
    mov.l @(PTR_ce34390,pc),r3
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34394,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34398,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x30,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce34380,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce342be
    mov.w @(DAT_ce34382,pc),r0
    mov 0x18,r3
    bra LAB_ce342c4
    mov.b r3,@(r0,r14)

LAB_ce342be:
    mov.w @(DAT_ce34382,pc),r0
    mov 0x10,r1
    mov.b r1,@(r0,r14)

LAB_ce342c4:
    mov.w @(DAT_ce34384,pc),r0
    mov 0x55,r3
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3439c,pc),r3
    mov 0x0C,r6
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce343a0,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce343a4,pc),r3
    mov r14,r4
    mov 0x0A,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce34300:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34386,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce34388,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce34378,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce34322
    bra LAB_ce34324
    mov 0x02,r3

LAB_ce34322:
    mov 0x00,r3

LAB_ce34324:
    mov.w @(DAT_ce3438a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce343a8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3438c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce34370
    mov.w @(DAT_ce3438c,pc),r0
    mov 0x00,r4
    mov r15,r5
    mov 0x01,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce343b4,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3437c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce343ac,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce343b0,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4

LAB_ce34370:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34378:
    #data 0x0255
DAT_ce3437a:
    #data 0x00ff
DAT_ce3437c:
    #data 0x03f0
DAT_ce3437e:
    #data 0x01f9
DAT_ce34380:
    #data 0x0525
DAT_ce34382:
    #data 0x02b9
DAT_ce34384:
    #data 0x01a1
DAT_ce34386:
    #data 0x03f8
DAT_ce34388:
    #data 0x0328
DAT_ce3438a:
    #data 0x03f1
DAT_ce3438c:
    #data 0x0141
    #align4
    
PTR_ce34390:
    #data loc_8c05218a
PTR_ce34394:
    #data loc_8c035162
PTR_ce34398:
    #data loc_8c05115a
PTR_ce3439c:
    #data loc_8c2896b0
PTR_ce343a0:
    #data loc_8c034e8c
PTR_ce343a4:
    #data loc_8c0e0460
PTR_ce343a8:
    #data loc_8c034dee
DAT_ce343ac:
    #data 0x41555555
DAT_ce343b0:
    #data 0x42f44924
PTR_ce343b4:
    #data loc_8c050834

;=============================================

LAB_ce343b8:
    mov.w @(DAT_ce3449e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce344a0,pc),r0
    mov.l @(PTR_ce344ac,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce344a2,pc),r0
    mov.b @(r0,r14),r0
    tst 0x80,r0
    bt LAB_ce343fe
    mov.w @(DAT_ce344a2,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce344b0,pc),r3
    mov 0x09,r5
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce344b4,pc),r0
    mov.l @(PTR_ce344bc,pc),r3
    fmov.s @r0,fr5
    mova @(DAT_ce344b8,pc),r0
    lds.l @r15+,PR
    fmov.s @r0,fr4
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce343fe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34404:
    mov.w @(DAT_ce3449e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce344a0,pc),r0
    mov.b r2,@(r0,r14)
    add 0x91,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34432
    mov.l @(PTR_ce344c0,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce34432
    mov.w @(DAT_ce344a4,pc),r0
    mov.b @(r0,r14),r3
    add 0xFF,r3
    bra LAB_ce34460
    mov.b r3,@(r0,r14)

LAB_ce34432:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce34460
    mov.w @(DAT_ce344a6,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce344c4,pc),r3
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x0E,r6
    mov.w @(DAT_ce344a8,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce34460:
    lds.l @r15+,PR
    mov.l @(PTR_ce344ac,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3446a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce344ac,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34484
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce344c8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34484:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3448c:
    mov r4,r3
    mov.l @(PTR_ce344cc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3449e:
    #data 0x03f8
DAT_ce344a0:
    #data 0x0328
DAT_ce344a2:
    #data 0x0141
DAT_ce344a4:
    #data 0x02b9
DAT_ce344a6:
    #data 0x03f9
DAT_ce344a8:
    #data 0x0327
    #align4
    
PTR_ce344ac:
    #data loc_8c034dee
PTR_ce344b0:
    #data loc_8c0e0516
DAT_ce344b4:
    #data 0x42e32492
DAT_ce344b8:
    #data 0xc3430000
PTR_ce344bc:
    #data loc_8c095f6c
PTR_ce344c0:
    #data loc_8c055d54
PTR_ce344c4:
    #data loc_8c034e8c
PTR_ce344c8:
    #data loc_8c051648
PTR_ce344cc:
    #data PTR_ce35390

;=============================================

LAB_ce344d0:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce34624,pc),r3
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
    mov.w @(DAT_ce3461a,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3461c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34628,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3462c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3461e,pc),r0
    mov 0x6B,r2
    mov.l @(PTR_ce34630,pc),r3
    mov 0x2A,r6
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
    mov.l @(PTR_ce34634,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce34546:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34638,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34566
    mov.l @(PTR_ce3463c,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34566:
    mov.w @(DAT_ce34620,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34588
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce34640,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34644,pc),r0
    mov.l @(PTR_ce34648,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce34588:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34590:
    mov r4,r3
    mov.l @(PTR_ce3464c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce345a2:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3461a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34624,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce34650,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34622,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce345d6
    fldi0 fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce345d6:
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce34654,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x3D,r3
    fmov fr3,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce3461e,pc),r0
    mov 0x01,r6
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34630,pc),r3
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
    mov.l @(PTR_ce34634,pc),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3461a:
    #data 0x01f9
DAT_ce3461c:
    #data 0x041c
DAT_ce3461e:
    #data 0x01a1
DAT_ce34620:
    #data 0x0141
DAT_ce34622:
    #data 0x01d2
    #align4

PTR_ce34624:
    #data loc_8c035162
PTR_ce34628:
    #data loc_8c05218a
PTR_ce3462c:
    #data loc_8c05115a
PTR_ce34630:
    #data loc_8c2896b0
PTR_ce34634:
    #data loc_8c034e8c
PTR_ce34638:
    #data loc_8c034dee
PTR_ce3463c:
    #data loc_8c051648
DAT_ce34640:
    #data 0xc2340000
DAT_ce34644:
    #data 0x43092492
PTR_ce34648:
    #data loc_8c050ea4
PTR_ce3464c:
    #data PTR_ce35398
DAT_ce34650:
    #data 0x41d55555
DAT_ce34654:
    #data 0xbecdb6db

;=============================================

LAB_ce34658:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3477c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce34780,pc),r3
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
    bt LAB_ce346c0
    mov.l @(PTR_ce34784,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34788,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce346c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce346c6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3477c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce346f2
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3478c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce346f2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce346f8:
    mov.w @(DAT_ce3476e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce34770,pc),r2
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce34762
    mov r13,r4
    mov.w @(DAT_ce34772,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34762
    mov.w @(DAT_ce34774,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce34762
    mov.l @(PTR_ce34790,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34762
    mov r0,r4
    mov.w @(DAT_ce34776,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3474e
    mov.w @(DAT_ce34774,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce34748
    mov.w @(DAT_ce34778,pc),r0
    mov 0x02,r2
    bra LAB_ce34762
    mov.b r2,@(r0,r14)

LAB_ce34748:
    mov.w @(DAT_ce34778,pc),r0
    bra LAB_ce34762
    mov.b r13,@(r0,r14)

LAB_ce3474e:
    mov.w @(DAT_ce34774,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3475c
    bra LAB_ce34762
    mov r13,r4

LAB_ce3475c:
    mov.w @(DAT_ce34778,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce34762:
    mov r4,r0
    nop
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3476e:
    #data 0x01fa
DAT_ce34770:
    #data 0x0c00
DAT_ce34772:
    #data 0x01a3
DAT_ce34774:
    #data 0x01f9
DAT_ce34776:
    #data 0x01fe
DAT_ce34778:
    #data 0x01f7
    #align4
    
PTR_ce3477c:
    #data loc_8c034dee
PTR_ce34780:
    #data loc_8c052ce2
PTR_ce34784:
    #data loc_8c0511b4
PTR_ce34788:
    #data loc_8c034e8c
PTR_ce3478c:
    #data loc_8c051648
PTR_ce34790:
    #data loc_8c045790

;=============================================

LAB_ce34794:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xE8,r15
    mov.w @(DAT_ce3489a,pc),r0
    mov r4,r14
    mov.w @(DAT_ce3489c,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce347ba
    mov.w @(DAT_ce3489e,pc),r0
    mov.w @(DAT_ce3489e,pc),r1
    mov.w @(DAT_ce348a0,pc),r3
    mov.w @(r0,r14),r0
    add r14,r1
    add r14,r3
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r3

LAB_ce347ba:
    mov.w @(DAT_ce348a2,pc),r0
    mov.w @(DAT_ce3489e,pc),r1
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce3489e,pc),r0
    mov.w @(DAT_ce348a0,pc),r2
    add r4,r1
    mov.w @(r0,r14),r0
    add r4,r2
    mov.l @(PTR_ce348ac,pc),r3
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce348a4,pc),r0
    mov 0x0A,r2
    mov.b r2,@(r0,r14)
    add 0x57,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce348d8
    mov.w @(DAT_ce348a6,pc),r0
    mov.w @(DAT_ce348a8,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(DAT_ce348b0,pc),r2
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce348a2,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce348a6,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce348a2,pc),r0
    mov.l @(r0,r14),r4
    mov 0x00,r0
    mov.l r4,@(0x8,r15)
    add r3,r4
    mov.l @(0x4,r4),r1
    and r2,r1
    or r0,r1
    tst r1,r1
    bt LAB_ce34822
    mov.w @(DAT_ce348a2,pc),r0
    mov.l @(r0,r14),r3
    mova @(DAT_ce348b4,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce348a6,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r3)

LAB_ce34822:
    mov.w @(DAT_ce348a2,pc),r0
    mov.w @(DAT_ce348a8,pc),r3
    mov.l @(r0,r14),r4
    mov 0x00,r0
    mov.l @(DAT_ce348b8,pc),r2
    mov.l r4,@(0x4,r15)
    add r3,r4
    mov.l @r4,r1
    and r2,r1
    or r0,r1
    tst r1,r1
    bt LAB_ce3484c
    mov.w @(DAT_ce348a2,pc),r0
    mov.l @(r0,r14),r3
    mova @(DAT_ce348bc,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce348a6,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r3)

LAB_ce3484c:
    mov.w @(DAT_ce348a2,pc),r0
    mov.w @(DAT_ce348a8,pc),r3
    mov.l @(r0,r14),r4
    mov 0x00,r0
    mov.l @(DAT_ce348c0,pc),r2
    mov.l r4,@r15
    add r3,r4
    mov.l @r4,r1
    and r2,r1
    or r0,r1
    tst r1,r1
    bt LAB_ce34876
    mov.w @(DAT_ce348a2,pc),r0
    mov.l @(r0,r14),r3
    mova @(DAT_ce348c4,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce348a6,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r3)

LAB_ce34876:
    mov 0x60,r0
    mov.l @(PTR_ce348c8,pc),r3
    mov.w r0,@(0x1c,r14)
    mov 0x28,r5
    mov.w @(DAT_ce348a2,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    mov.l @(PTR_ce348cc,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce348d0,pc),r0
    fmov.s @r0,fr3
    mov 0x0C,r0
    fmov fr3,@(r0,r15)
    mova @(DAT_ce348d4,pc),r0
    bra LAB_ce348ee
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3489a:
    #data 0x01fa
DAT_ce3489c:
    #data 0x0400
DAT_ce3489e:
    #data 0x0130
DAT_ce348a0:
    #data 0x01d2
DAT_ce348a2:
    #data 0x01c8
DAT_ce348a4:
    #data 0x01a0
DAT_ce348a6:
    #data 0x041c
DAT_ce348a8:
    #data 0x0414
    #align4
    
PTR_ce348ac:
    #data loc_8c056f2a
DAT_ce348b0:
    #data 0x04000000
DAT_ce348b4:
    #data 0x43009249
DAT_ce348b8:
    #data 0x20000000
DAT_ce348bc:
    #data 0x42676db6
DAT_ce348c0:
    #data 0x10000000
DAT_ce348c4:
    #data 0x42452492
PTR_ce348c8:
    #data loc_8c050552
PTR_ce348cc:
    #data loc_8c05064e
DAT_ce348d0:
    #data 0xc1d55555
DAT_ce348d4:
    #data 0x432fb6db

;=============================================

LAB_ce348d8:
    mov.l @(PTR_ce349dc,pc),r2
    mov 0x05,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce349e0,pc),r0
    fmov.s @r0,fr3
    mov 0x0C,r0
    fmov fr3,@(r0,r15)
    mova @(DAT_ce349e4,pc),r0
    fmov.s @r0,fr3

LAB_ce348ee:
    mov r15,r5
    mov.l @(PTR_ce349e8,pc),r3
    mov 0x10,r0
    add 0x0C,r5
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce349ce,pc),r0
    mov 0x0F,r5
    mov.l @(PTR_ce349f0,pc),r3
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce349ec,pc),r0
    extu.b r6,r6
    mov.b @(r0,r6),r6
    jsr @r3
    mov r14,r4
    add 0x18,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34916:
    mov.w @(DAT_ce349d0,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    extu.b r2,r2
    extu.b r0,r0
    shll2 r2
    add r0,r2
    mov.l @(PTR_ce349f4,pc),r0
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3493a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce349f8,pc),r3
    mov 0x00,r13
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce349fc,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce3495a
    mov.w @(DAT_ce349d2,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce3495a:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bf LAB_ce3497e
    mov.w @(DAT_ce349d4,pc),r0
    mov.l @(r0,r14),r2
    mov.w @(DAT_ce349d6,pc),r0
    mov.w @(r0,r2),r3
    tst r3,r3
    bt LAB_ce34986
    mov.l @(PTR_ce34a00,pc),r3
    mov.w @(DAT_ce349d4,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    tst r0,r0
    bt LAB_ce34986

LAB_ce3497e:
    mov.w @(DAT_ce349d4,pc),r0
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce349d6,pc),r0
    mov.w r13,@(r0,r3)

LAB_ce34986:
    mov.w @(DAT_ce349d8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce349b4
    mov r13,r4
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce349ae
    mov.w @(DAT_ce349d8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x80,r0
    bt LAB_ce349b2
    mov.w @(DAT_ce349d4,pc),r0
    mov.l @(r0,r14),r2
    mov.w @(DAT_ce349d6,pc),r0
    mov.w @(r0,r2),r3
    tst r3,r3
    bf LAB_ce349b4

LAB_ce349ae:
    bra LAB_ce349b4
    mov 0x01,r4

LAB_ce349b2:
    mov r13,r4

LAB_ce349b4:
    extu.b r4,r4
    tst r4,r4
    bt LAB_ce34a04
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce349f0,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce34a60
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce349ce:
    #data 0x01f7
DAT_ce349d0:
    #data 0x01ea
DAT_ce349d2:
    #data 0x0142
DAT_ce349d4:
    #data 0x01c8
DAT_ce349d6:
    #data 0x025c
DAT_ce349d8:
    #data 0x014b
    #align4
    
PTR_ce349dc:
    #data loc_8c02fec4
DAT_ce349e0:
    #data 0xc276aaaa
DAT_ce349e4:
    #data 0x42da9249
PTR_ce349e8:
    #data loc_8c103660
PTR_ce349ec:
    #data DAT_ce353a4
PTR_ce349f0:
    #data loc_8c034e8c
PTR_ce349f4:
    #data PTR_ce353a8
PTR_ce349f8:
    #data loc_8c034dee
PTR_ce349fc:
    #data loc_8c050682
PTR_ce34a00:
    #data loc_8c050610

;=============================================

LAB_ce34a04:
    mov.w @(DAT_ce34ae8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34a60
    mov.b r13,@(r0,r14)
    mov 0x20,r2
    mov.w @(DAT_ce34aea,pc),r0
    mov.l @(r0,r14),r3
    add 0xEC,r0
    mov.l r14,@(r0,r3)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov.b r2,@(r0,r3)
    mov.l @(PTR_ce34af0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34aec,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34a34
    mova @(DAT_ce34af4,pc),r0
    bra LAB_ce34a38
    fmov.s @r0,fr3

LAB_ce34a34:
    mova @(DAT_ce34af8,pc),r0
    fmov.s @r0,fr3

LAB_ce34a38:
    mov 0x34,r0
    fmov.s fr3,@r15
    fmov.s @r15,fr2
    mov 0x01,r6
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce34afc,pc),r0
    mov.l @(PTR_ce34b00,pc),r3
    mov 0x00,r7
    fadd fr3,fr2
    fmov.s fr2,@r15
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce34aec,pc),r0
    mov.w @(r0,r14),r5
    jsr @r3
    mov r15,r4

LAB_ce34a60:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34a6a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34b04,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34ae8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34ae0
    mov.l @(PTR_ce34b08,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34ae8,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce34aea,pc),r0
    mov.l @(r0,r14),r2
    add 0xEC,r0
    mov.l r14,@(r0,r2)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0x2E,r0
    mov 0x03,r2
    mov.b r2,@(r0,r3)
    add 0xD2,r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov 0x21,r2
    mov.b r2,@(r0,r3)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce34b0c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34b10,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34b14,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34b18,pc),r0
    mov.l @(PTR_ce34b1c,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce34ae0:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34ae8:
    #data 0x0141
DAT_ce34aea:
    #data 0x01c8
DAT_ce34aec:
    #data 0x0130
    #align4
    
PTR_ce34af0:
    #data loc_8c05933c
DAT_ce34af4:
    #data 0x41200000
DAT_ce34af8:
    #data 0xc1200000
DAT_ce34afc:
    #data 0x43272492
PTR_ce34b00:
    #data loc_8c0fd966
PTR_ce34b04:
    #data loc_8c034dee
PTR_ce34b08:
    #data loc_8c02fec4
DAT_ce34b0c:
    #data 0xc0892492
DAT_ce34b10:
    #data 0xbf4db6db
DAT_ce34b14:
    #data 0x42340000
DAT_ce34b18:
    #data 0x4311b6db
PTR_ce34b1c:
    #data loc_8c0fdb4e

;=============================================

LAB_ce34b20:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34c38,pc),r3
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
    bf/s LAB_ce34ba2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov.w @(DAT_ce34c30,pc),r0
    fmov.s @(r0,r14),fr1
    fcmp/gt fr2,fr1
    bf LAB_ce34ba2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34c30,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34c32,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34b94
    mov.l @(PTR_ce34c3c,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce34b96
    mov 0x02,r6

LAB_ce34b94:
    mov 0x04,r6

LAB_ce34b96:
    lds.l @r15+,PR
    mov.l @(PTR_ce34c40,pc),r2
    mov 0x0F,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34ba2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34ba8:
    mov.w @(DAT_ce34c32,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce34bf2
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

LAB_ce34bf2:
    mov.l @(PTR_ce34c38,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34c2a
    mov.w @(DAT_ce34c32,pc),r0
    mov.b @(r0,r14),r3
    mov.b @(r0,r14),r0
    tst r3,r3
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce34c16
    mov.w @(DAT_ce34c34,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce34c20

LAB_ce34c16:
    lds.l @r15+,PR
    mov.l @(PTR_ce34c44,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34c20:
    lds.l @r15+,PR
    mov.l @(PTR_ce34c48,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34c2a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34c30:
    #data 0x041c
DAT_ce34c32:
    #data 0x01f7
DAT_ce34c34:
    #data 0x01f9
    #align4
    
PTR_ce34c38:
    #data loc_8c034dee
PTR_ce34c3c:
    #data loc_8c05218a
PTR_ce34c40:
    #data loc_8c034e8c
PTR_ce34c44:
    #data loc_8c05176e
PTR_ce34c48:
    #data loc_8c051648

;=============================================

LAB_ce34c4c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34d20,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34d1a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34cf0
    mov.l @(PTR_ce34d24,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34d1a,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce34d1c,pc),r0
    mov.l @(r0,r14),r2
    add 0xEC,r0
    mov.l r14,@(r0,r2)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov 0x22,r2
    mov.b r2,@(r0,r3)
    mov.l @(PTR_ce34d28,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34d1c,pc),r0
    mov 0x01,r3
    mov r15,r5
    mov.l @(r0,r14),r2
    add 0x2E,r0
    mov.b r3,@(r0,r2)
    add 0xD2,r0
    mov.l @(r0,r14),r2
    add 0xD9,r0
    mov 0x23,r3
    mov.b r3,@(r0,r2)
    mova @(DAT_ce34d2c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34d30,pc),r0
    mov.l @(PTR_ce34d34,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34d38,pc),r3
    mov 0x01,r5
    mov.w @(DAT_ce34d1c,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    mova @(DAT_ce34d3c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34d40,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34d44,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34d1e,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34cf0
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce34cf0:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34cf8:
    mov.w @(DAT_ce34d1c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    add 0x83,r0
    mov.b @(r0,r3),r2
    extu.b r2,r2
    cmp/pl r2
    bf LAB_ce34d4c
    mov.l @(PTR_ce34d48,pc),r3
    mov r14,r5
    mov.w @(DAT_ce34d1c,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    bra LAB_ce34d56
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34d1a:
    #data 0x0141
DAT_ce34d1c:
    #data 0x01c8
DAT_ce34d1e:
    #data 0x0130
    #align4

PTR_ce34d20:
    #data loc_8c034dee
PTR_ce34d24:
    #data loc_8c02fec4
PTR_ce34d28:
    #data loc_8c05933c
DAT_ce34d2c:
    #data 0xc2d55555
DAT_ce34d30:
    #data 0x43092492
PTR_ce34d34:
    #data loc_8c0fdb4e
PTR_ce34d38:
    #data loc_8c0424a6
DAT_ce34d3c:
    #data 0x41092492
DAT_ce34d40:
    #data 0xbf4db6db
DAT_ce34d44:
    #data 0x40d55555
PTR_ce34d48:
    #data loc_8c04cc1c

;=============================================

LAB_ce34d4c:
    mov.l @(PTR_ce34e58,pc),r3
    mov r14,r5
    mov.w @(DAT_ce34e44,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4

LAB_ce34d56:
    mov.w @(DAT_ce34e46,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce34dae
    mov.w @(DAT_ce34e44,pc),r0
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce34e48,pc),r0
    mov.b @(r0,r3),r2
    tst r2,r2
    bt LAB_ce34dae
    mov.w @(DAT_ce34e44,pc),r0
    mov 0x00,r3
    mov.l @(r0,r14),r2
    mov.w @(DAT_ce34e48,pc),r0
    mov.b r3,@(r0,r2)
    mov.w @(DAT_ce34e44,pc),r0
    mov.w @(DAT_ce34e4a,pc),r3
    mov.l @(r0,r14),r0
    add r3,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x01,r0
    bf/s LAB_ce34d86
    fldi0 fr4
    fldi1 fr4

LAB_ce34d86:
    mov.w @(DAT_ce34e44,pc),r0
    mov.w @(DAT_ce34e4a,pc),r3
    mov.l @(r0,r14),r0
    add r3,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x02,r0
    bf LAB_ce34d98
    fldi1 fr4
    fneg fr4

LAB_ce34d98:
    mov.w @(DAT_ce34e44,pc),r0
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce34e4c,pc),r0
    mov.w @(r0,r3),r2
    tst r2,r2
    bf/s LAB_ce34da8
    mov 0x34,r0
    fneg fr4

LAB_ce34da8:
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce34dae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34db4:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34e4e,pc),r0
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce34e50,pc),r0
    mov.l @(r0,r4),r2
    mov.l @(PTR_ce34e5c,pc),r0
    mov r2,r1
    shll r2
    add r1,r2
    add r2,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce34e52,pc),r0
    mov.l @(PTR_ce34e60,pc),r3
    mov.b r2,@(r0,r4)
    jmp @r3
    mov 0x1D,r5

LAB_ce34dda:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34e4e,pc),r0
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce34e50,pc),r0
    mov.l @(r0,r4),r2
    mov.l @(PTR_ce34e64,pc),r0
    mov r2,r1
    shll r2
    add r1,r2
    add r2,r3
    mov.b @(r0,r3),r2
    mov 0x01,r3
    mov.w @(DAT_ce34e52,pc),r0
    mov.b r2,@(r0,r4)
    add 0xBA,r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce34e60,pc),r3
    jmp @r3
    mov 0x1D,r5

LAB_ce34e06:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34e4e,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34e28
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce34e2e
    cmp/eq 0x02,r0
    bt LAB_ce34e36
    bra LAB_ce34e3e
    nop

LAB_ce34e28:
    mov.w @(DAT_ce34e52,pc),r0
    bra LAB_ce34e3a
    mov.b r5,@(r0,r4)

LAB_ce34e2e:
    mov.w @(DAT_ce34e52,pc),r0
    mov 0x05,r2
    bra LAB_ce34e3a
    mov.b r2,@(r0,r4)

LAB_ce34e36:
    mov.w @(DAT_ce34e52,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce34e3a:
    mov.w @(DAT_ce34e54,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce34e3e:
    mov.l @(PTR_ce34e60,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34e44:
    #data 0x01c8
DAT_ce34e46:
    #data 0x01f6
DAT_ce34e48:
    #data 0x0140
DAT_ce34e4a:
    #data 0x0150
DAT_ce34e4c:
    #data 0x0130
DAT_ce34e4e:
    #data 0x04c9
DAT_ce34e50:
    #data 0x00cc
DAT_ce34e52:
    #data 0x01e9
DAT_ce34e54:
    #data 0x01a3
    #align4
    
PTR_ce34e58:
    #data loc_8c04ce54
PTR_ce34e5c:
    #data DAT_ce353d8
PTR_ce34e60:
    #data loc_8c0530d8
PTR_ce34e64:
    #data DAT_ce353de

;=============================================

LAB_ce34e68:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34f38,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34e8a
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce34e90
    cmp/eq 0x02,r0
    bt LAB_ce34e98
    bra LAB_ce34ea0
    nop

LAB_ce34e8a:
    mov.w @(DAT_ce34f3a,pc),r0
    bra LAB_ce34e9c
    mov.b r5,@(r0,r4)

LAB_ce34e90:
    mov.w @(DAT_ce34f3a,pc),r0
    mov 0x05,r2
    bra LAB_ce34e9c
    mov.b r2,@(r0,r4)

LAB_ce34e98:
    mov.w @(DAT_ce34f3a,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce34e9c:
    mov.w @(DAT_ce34f3c,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce34ea0:
    mov.l @(PTR_ce34f44,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce34ea6:
    mov.l r14,@-r15
    mov 0x5C,r0
    fldi0 fr4
    mov r4,r14
    sts.l PR,@-r15
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    add 0x60,r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34ee6
    mov.l @(PTR_ce34f48,pc),r3
    mov 0x02,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34f3e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34ede
    mova @(DAT_ce34f4c,pc),r0
    bra LAB_ce34ee2
    fmov.s @r0,fr3

LAB_ce34ede:
    mova @(DAT_ce34f50,pc),r0
    fmov.s @r0,fr3

LAB_ce34ee2:
    bra LAB_ce34f1a
    mov 0x5C,r0

LAB_ce34ee6:
    mov.l @(PTR_ce34f48,pc),r2
    mov 0x02,r5
    mov 0x04,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce34f3e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34efe
    mova @(DAT_ce34f54,pc),r0
    bra LAB_ce34f02
    fmov.s @r0,fr3

LAB_ce34efe:
    mova @(DAT_ce34f58,pc),r0
    fmov.s @r0,fr3

LAB_ce34f02:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34f3e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34f14
    mova @(DAT_ce34f5c,pc),r0
    bra LAB_ce34f18
    fmov.s @r0,fr3

LAB_ce34f14:
    mova @(DAT_ce34f60,pc),r0
    fmov.s @r0,fr3

LAB_ce34f18:
    mov 0x68,r0

LAB_ce34f1a:
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34f22:
    mov.w @(DAT_ce34f40,pc),r0
    mov.l @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce34f30
    mov 0x02,r5
    bra LAB_ce34f32
    mov 0x01,r6

LAB_ce34f30:
    mov 0x05,r6

LAB_ce34f32:
    mov.l @(PTR_ce34f48,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34f38:
    #data 0x04c9
DAT_ce34f3a:
    #data 0x01e9
DAT_ce34f3c:
    #data 0x01a3
DAT_ce34f3e:
    #data 0x01d2
DAT_ce34f40:
    #data 0x00cc
    #align4
    
PTR_ce34f44:
    #data loc_8c0530d8
PTR_ce34f48:
    #data loc_8c034e8c
DAT_ce34f4c:
    #data 0x41555555
DAT_ce34f50:
    #data 0xc1555555
DAT_ce34f54:
    #data 0x41855555
DAT_ce34f58:
    #data 0xc1855555
DAT_ce34f5c:
    #data 0xbed55555
DAT_ce34f60:
    #data 0x3ed55555
DAT_ce34f64:
    #data 0x0201
    #data 0x0201
    #data 0x02ff
    #data 0x02ff
    #data 0xffff
    #data 0xffff
    #data 0x0201
    #data 0x0201
    #data 0x02ff
    #data 0x02ff
    #data 0xffff
    #data 0xffff
DAT_ce34f7c:
    #data 0x0201
    #data 0x0201
    #data 0x02ff
    #data 0x02ff
    #data 0xffff
    #data 0xffff
    #data 0x0201
    #data 0x0201
    #data 0x02ff
    #data 0x02ff
    #data 0xffff
    #data 0xffff
DAT_ce34f94:
    #data 0x0201
    #data 0x0200
    #data 0x02ff
    #data 0x0201
    #data 0xffff
    #data 0x02ff
    #data 0x0201
    #data 0x0201
    #data 0x02ff
    #data 0x02ff
    #data 0xffff
    #data 0xffff
DAT_ce34fac:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34fbc:
    #data 0x0003
    #data 0x0000
    #data 0x000d
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34fcc:
    #data 0x0003
    #data 0x0000
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce34fdc:
    #data 0x0003
    #data 0x0000
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce34fec:
    #data 0x0003
    #data 0x0000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce34ffc:
    #data 0x0003
    #data 0x0000
    #data 0x000c
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce3500c:
    #data 0x0003
    #data 0x9100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce3501c:
    #data 0x0003
    #data 0x9100
DAT_ce35020:
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce3502c:
    #data 0x0003
    #data 0x9100
    #data 0x000e
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce3503c:
    #data 0x0003
    #data 0x1100
    #data 0x0014
    #data 0x0000
    #data 0x0400
    #data 0x1000
    #data 0x1400
    #data 0x0040
DAT_ce3504c:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce3505c:
    #data 0x0003
    #data 0x0000
    #data 0x000d
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce3506c:
    #data 0x0003
    #data 0x0000
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce3507c:
    #data 0x0003
    #data 0x0000
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce3508c:
    #data 0x0003
    #data 0x9100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce3509c:
    #data 0x0003
    #data 0x9100
    #data 0x000b
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce350ac:
    #data 0x0003
    #data 0x1000
    #data 0x0010
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0360
DAT_ce350bc:
    #data 0x0003
    #data 0x1000
    #data 0x0011
    #data 0x0000
    #data 0x0400
    #data 0x1000
    #data 0x1400
    #data 0x0360
DAT_ce350cc:
    #data 0x0004
    #data 0x1100
    #data 0x0012
    #data 0x0000
    #data 0x0200
    #data 0x0200
    #data 0x0800
    #data 0x0040
    #data 0x0100
DAT_ce350de:
    #data 0x0010
    #data 0x0028
    #data 0x0000
DAT_ce350e4:
    #data 0x2492
    #data 0x4189
    #data 0xb6db
    #data 0x41cd
DAT_ce350ec:
    #data 0x0010
    #data 0x0018
DAT_ce350f0:
    #data 0x0000
    #data 0x4120
    #data 0x5555
    #data 0x4155
DAT_ce350f8:
    #data 0x2492
    #data 0x4189
    #data 0x6db6
    #data 0x41ab
DAT_ce35100:
    #data 0x0032
    #data 0x003c
    #data 0x0032
    #data 0x003c
DAT_ce35108:
    #data 0x0028
    #data 0x0036
    #data 0x0028
    #data 0x0028
DAT_ce35110:
    #data 0x5555
    #data 0x40d5
DAT_ce35114:
    #data 0x2492
    #data 0x4109
    #data 0x0000
    #data 0x4120
    #data 0x0000
    #data 0x4196
DAT_ce35120:
    #data 0x41055555
DAT_ce35124:
    #data 0x414db6db
DAT_ce35128:
    #data 0xc0200000
    #data 0xc0855555
DAT_ce35130:
    #data 0x00030001

PTR_ce35134:
    #data LAB_ce3086a LAB_ce30730 LAB_ce30b58 LAB_ce30b6c
    #data LAB_ce30db8 LAB_ce30fdc LAB_ce311ea LAB_ce3152a
    #data LAB_ce317ec LAB_ce346f8 LAB_ce34794 LAB_ce34916
    #data LAB_ce34cf8 LAB_ce30618 LAB_ce34590 LAB_ce30c82
    #data LAB_ce34db4 LAB_ce34dda LAB_ce34e06 LAB_ce34e68
    #data 0x00000000 0x00000000 0x00000000 0x00000000
    #data LAB_ce308b4 LAB_ce34ea6 LAB_ce34f22 0x00000000

PTR_ce351a4:
    #data LAB_ce30932
PTR_ce351a8:
    #data LAB_ce30b34
PTR_ce351ac:
    #data LAB_ce30a54
PTR_ce351b0:
    #data LAB_ce30932
PTR_ce351b4:
    #data LAB_ce30de4
PTR_ce351b8:
    #data LAB_ce30e02
PTR_ce351bc:
    #data LAB_ce30f04
PTR_ce351c0:
    #data LAB_ce30f72
PTR_ce351c4:
    #data LAB_ce31008
PTR_ce351c8:
    #data LAB_ce3106e
PTR_ce351cc:
    #data LAB_ce31114
PTR_ce351d0:
    #data FUN_ce311c8
PTR_ce351d4:
    #data LAB_ce31264
PTR_ce351d8:
    #data LAB_ce312da
PTR_ce351dc:
    #data LAB_ce31308
PTR_ce351e0:
    #data LAB_ce313bc
PTR_ce351e4:
    #data LAB_ce313f6
PTR_ce351e8:
    #data LAB_ce3141c
PTR_ce351ec:
    #data LAB_ce31440
PTR_ce351f0:
    #data LAB_ce31308
PTR_ce351f4:
    #data LAB_ce313bc
PTR_ce351f8:
    #data LAB_ce313f6
DAT_ce351fc:
    #data 0x0000
    #data 0x0504
    #data 0x05
DAT_ce35201:
    #data 0x00
    #data 0x0201
    #data 0x0403
    #data 0x0505
    #data 0x0005
    #data 0x0201
    #data 0x0403
    #data 0x0505
    #data 0x0005
    #align4
    
PTR_ce35214:
    #data LAB_ce32162
PTR_ce35218:
    #data LAB_ce32fc0
PTR_ce3521c:
    #data LAB_ce3185e
PTR_ce35220:
    #data loc_8c051648
PTR_ce35224:
    #data loc_8c051648
PTR_ce35228:
    #data LAB_ce32bb4
PTR_ce3522c:
    #data LAB_ce334c6
PTR_ce35230:
    #data LAB_ce32d80
PTR_ce35234:
    #data LAB_ce33cc8
PTR_ce35238:
    #data loc_8c051648
PTR_ce3523c:
    #data loc_8c051648
PTR_ce35240:
    #data LAB_ce34230
PTR_ce35244:
    #data LAB_ce3320c
PTR_ce35248:
    #data LAB_ce326d0
PTR_ce3524c:
    #data LAB_ce33e9a
PTR_ce35250:
    #data loc_8c051648
PTR_ce35254:
    #data LAB_ce31c02
PTR_ce35258:
    #data LAB_ce31c02
PTR_ce3525c:
    #data LAB_ce32150
PTR_ce35260:
    #data LAB_ce3448c
PTR_ce35264:
    #data LAB_ce318e0
PTR_ce35268:
    #data LAB_ce31b04
PTR_ce3526c:
    #data LAB_ce31aa0
PTR_ce35270:
    #data LAB_ce319e8
PTR_ce35274:
    #data FUN_ce319c6
PTR_ce35278:
    #data LAB_ce31c14
PTR_ce3527c:
    #data LAB_ce31c8a
PTR_ce35280:
    #data LAB_ce31d22
PTR_ce35284:
    #data LAB_ce31d36
PTR_ce35288:
    #data LAB_ce31eda
PTR_ce3528c:
    #data LAB_ce31f78
PTR_ce35290:
    #data LAB_ce32120
PTR_ce35294:
    #data LAB_ce32174
PTR_ce35298:
    #data LAB_ce32274
PTR_ce3529c:
    #data LAB_ce322a8
PTR_ce352a0:
    #data LAB_ce32436
PTR_ce352a4:
    #data FUN_ce324c4
PTR_ce352a8:
    #data LAB_ce32508
PTR_ce352ac:
    #data LAB_ce32596
PTR_ce352b0:
    #data LAB_ce32604
PTR_ce352b4:
    #data LAB_ce32694
DAT_ce352b8:
    #data 0x003e
    #data 0x0040
    #align4

PTR_ce352bc:
    #data LAB_ce326fc
PTR_ce352c0:
    #data LAB_ce327d0
PTR_ce352c4:
    #data LAB_ce32860
PTR_ce352c8:
    #data LAB_ce329a8
PTR_ce352cc:
    #data LAB_ce32a2c
PTR_ce352d0:
    #data LAB_ce32a7c
PTR_ce352d4:
    #data LAB_ce32b48
DAT_ce352d8:
    #data 0x005e
    #data 0x0060
    #align4

PTR_ce352dc:
    #data LAB_ce32bf8
PTR_ce352e0:
    #data LAB_ce32ca2
PTR_ce352e4:
    #data FUN_ce32d18
DAT_ce352e8:
    #data 0x4644
    #data 0x6e6d
DAT_ce352ec:
    #data 0x1211
    #data 0x2e2d
DAT_ce352f0:
    #data 0x1413
    #data 0x302f
    #align4

PTR_ce352f4:
    #data LAB_ce32d92
PTR_ce352f8:
    #data LAB_ce32e6e
PTR_ce352fc:
    #data LAB_ce32f52
DAT_ce35300:
    #data 0x504e
    #data 0x706f
    #align4

PTR_ce35304:
    #data LAB_ce32fd2
PTR_ce35308:
    #data LAB_ce330ce
PTR_ce3530c:
    #data LAB_ce33120
PTR_ce35310:
    #data FUN_ce331ea
PTR_ce35314:
    #data LAB_ce33240
PTR_ce35318:
    #data LAB_ce332e6
PTR_ce3531c:
    #data LAB_ce33408
PTR_ce35320:
    #data LAB_ce33432
PTR_ce35324:
    #data LAB_ce334d8
PTR_ce35328:
    #data LAB_ce33576
PTR_ce3532c:
    #data LAB_ce33630
PTR_ce35330:
    #data LAB_ce33812
PTR_ce35334:
    #data LAB_ce338ea
PTR_ce35338:
    #data LAB_ce339cc
PTR_ce3533c:
    #data LAB_ce33a50
PTR_ce35340:
    #data LAB_ce33ad6
PTR_ce35344:
    #data LAB_ce33b54
PTR_ce35348:
    #data FUN_ce33c00
PTR_ce3534c:
    #data LAB_ce33c22
PTR_ce35350:
    #data LAB_ce33cda
PTR_ce35354:
    #data LAB_ce33d52
PTR_ce35358:
    #data LAB_ce33e24
PTR_ce3535c:
    #data LAB_ce33e58
PTR_ce35360:
    #data LAB_ce33e78
PTR_ce35364:
    #data LAB_ce33eac
PTR_ce35368:
    #data LAB_ce33f30
PTR_ce3536c:
    #data LAB_ce33fd6
PTR_ce35370:
    #data LAB_ce340f8
PTR_ce35374:
    #data LAB_ce34180
PTR_ce35378:
    #data FUN_ce3420e
PTR_ce3537c:
    #data LAB_ce3426c
PTR_ce35380:
    #data LAB_ce34300
PTR_ce35384:
    #data LAB_ce343b8
PTR_ce35388:
    #data LAB_ce34404
PTR_ce3538c:
    #data LAB_ce3446a
PTR_ce35390:
    #data LAB_ce344d0
PTR_ce35394:
    #data LAB_ce34546
PTR_ce35398:
    #data LAB_ce345a2
PTR_ce3539c:
    #data LAB_ce34658
PTR_ce353a0:
    #data LAB_ce346c6
DAT_ce353a4:
    #data 0x0300
    #data 0x0005
    #align4

PTR_ce353a8:
    #data LAB_ce3493a
PTR_ce353ac:
    #data LAB_ce34a6a
PTR_ce353b0:
    #data LAB_ce34b20
PTR_ce353b4:
    #data LAB_ce34ba8
PTR_ce353b8:
    #data LAB_ce34c4c
PTR_ce353bc:
    #data LAB_ce34b20
PTR_ce353c0:
    #data LAB_ce34ba8
PTR_ce353c4:
    #data loc_8c051648
PTR_ce353c8:
    #data LAB_ce34c4c
PTR_ce353cc:
    #data LAB_ce34ba8
PTR_ce353d0:
    #data loc_8c051648
PTR_ce353d4:
    #data loc_8c051648
DAT_ce353d8:
    #data 0x080e
    #data 0x0e06
    #data 0x060b
DAT_ce353de:
    #data 0x080e
    #data 0x0e06
    #data 0x060b
