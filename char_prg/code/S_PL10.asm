;============================================
; S_PL10 : Tron Bonne Program               |
;============================================

#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
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
#symbol loc_8c051854 0x8C051854
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c0522e0 0x8C0522E0
#symbol loc_8c052b4c 0x8C052B4C
#symbol loc_8c052c84 0x8C052C84
#symbol loc_8c052ce2 0x8C052CE2
#symbol loc_8c052dac 0x8C052DAC
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
#symbol loc_8c055d54 0x8C055D54
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c07382c 0x8C07382C
#symbol loc_8c073b10 0x8C073B10
#symbol loc_8c0743f0 0x8C0743F0
#symbol loc_8c0746f8 0x8C0746F8
#symbol loc_8c074a84 0x8C074A84
#symbol loc_8c0c84bc 0x8C0C84BC
#symbol loc_8c0c84ea 0x8C0C84EA
#symbol loc_8c0c90b0 0x8C0C90B0
#symbol loc_8c0cb7c0 0x8C0CB7C0
#symbol loc_8c0cbb4c 0x8C0CBB4C
#symbol loc_8c10235c 0x8C10235C
#symbol loc_8c103660 0x8C103660
#symbol loc_8c1294c8 0x8C1294C8
#symbol loc_8c129728 0x8C129728
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c268340 0x8C268340
#symbol loc_8c26a5a0 0x8C26A5A0
#symbol loc_8c26a5a4 0x8C26A5A4
#symbol loc_8c289636 0x8C289636
#symbol loc_8c2896b0 0x8C2896B0

;============================================


BEG_ce30000:
    mov.w @(DAT_ce300b4,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300b8,pc),r7
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
    mov.l @(PTR_ce300bc,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    mov.l @(PTR_ce300c0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    mov.l @(PTR_ce300c4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    mov.l @(PTR_ce300c8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    bsr FUN_ce301fc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    bsr FUN_ce30242
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    bsr FUN_ce30186
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    bsr FUN_ce30140
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    bsr FUN_ce300d8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    bsr FUN_ce30288
    mov r14,r4
    tst r0,r0
    bf LAB_ce300ae
    bsr FUN_ce302c6
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    mov.w @(DAT_ce300b6,pc),r5
    mov.l @(PTR_ce300cc,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce300d0,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300d4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce300ae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300b4:
    #data 0x0428
DAT_ce300b6:
    #data 0x03cc
    #align4

PTR_ce300b8:
    #data PTR_ce33a20
PTR_ce300bc:
    #data loc_8c054508
PTR_ce300c0:
    #data loc_8c054b34
PTR_ce300c4:
    #data loc_8c05496c
PTR_ce300c8:
    #data loc_8c054d04
PTR_ce300cc:
    #data loc_8c053f6e
PTR_ce300d0:
    #data loc_8c053e00
PTR_ce300d4:
    #data loc_8c0542e0

;=============================================

FUN_ce300d8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301e4,pc),r5
    mov.w @(DAT_ce301d4,pc),r6
    mov.l @(PTR_ce301e8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30108
    mov.w @(DAT_ce301d6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30116
    mov.w @(DAT_ce301d8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30116
    mov.w @(DAT_ce301da,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce30110

LAB_ce30108:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30110:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30116:
    mov.w @(DAT_ce301d4,pc),r5
    mov.l @(PTR_ce301ec,pc),r2
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
    mov.w @(DAT_ce301dc,pc),r0
    mov.l @(PTR_ce301f0,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30140:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301f4,pc),r5
    mov.w @(DAT_ce301de,pc),r6
    mov.l @(PTR_ce301e8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3015e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3015e:
    mov.w @(DAT_ce301de,pc),r5
    mov.l @(PTR_ce301ec,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301dc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301f0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30186:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301f8,pc),r5
    mov.w @(DAT_ce301e0,pc),r6
    mov.l @(PTR_ce301e8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301a4
    mov.w @(DAT_ce301e2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce301ac

LAB_ce301a4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301ac:
    mov.w @(DAT_ce301e0,pc),r5
    mov.l @(PTR_ce301ec,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301dc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301f0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301d4:
    #data 0x0364
DAT_ce301d6:
    #data 0x01f9
DAT_ce301d8:
    #data 0x01fc
DAT_ce301da:
    #data 0x01d4
DAT_ce301dc:
    #data 0x01e9
DAT_ce301de:
    #data 0x036c
DAT_ce301e0:
    #data 0x0374
DAT_ce301e2:
    #data 0x02a9
    #align4

PTR_ce301e4:
    #data DAT_ce339d0
PTR_ce301e8:
    #data loc_8c054e58
PTR_ce301ec:
    #data loc_8c055c3a
PTR_ce301f0:
    #data loc_8c0530d8
PTR_ce301f4:
    #data DAT_ce339e0
PTR_ce301f8:
    #data DAT_ce339f0

;=============================================

FUN_ce301fc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30308,pc),r5
    mov.w @(DAT_ce302fe,pc),r6
    mov.l @(PTR_ce3030c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3021c
    mov.w @(DAT_ce30300,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30224

LAB_ce3021c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30224:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30302,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30310,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30242:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30314,pc),r5
    mov.w @(DAT_ce30304,pc),r6
    mov.l @(PTR_ce3030c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30262
    mov.w @(DAT_ce30300,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3026a

LAB_ce30262:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3026a:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30302,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30310,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30288:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30318,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce302a0
    mov.w @(DAT_ce30300,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302a8

LAB_ce302a0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302a8:
    mov.w @(DAT_ce30302,pc),r0
    mov 0x06,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30310,pc),r3
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302c6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3031c,pc),r3
    jsr @r3
    mov 0x03,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302e0
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302e0:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30302,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30310,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce302fe:
    #data 0x037c
DAT_ce30300:
    #data 0x040c
DAT_ce30302:
    #data 0x01e9
DAT_ce30304:
    #data 0x0384
    #align4

PTR_ce30308:
    #data DAT_ce33a00
PTR_ce3030c:
    #data loc_8c054e58
PTR_ce30310:
    #data loc_8c0530d8
PTR_ce30314:
    #data DAT_ce33a10
PTR_ce30318:
    #data loc_8c054d1c
PTR_ce3031c:
    #data loc_8c054da0

;=============================================

LAB_ce30320:
    sts.l PR,@-r15
    add 0xFC,r15
    bsr FUN_ce30346
    mov.l r4,@r15
    tst r0,r0
    bf LAB_ce30334
    bsr FUN_ce3037c
    mov.l @r15,r4
    tst r0,r0
    bt LAB_ce3033c

LAB_ce30334:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce3033c:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30346:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30420,pc),r5
    mov.w @(DAT_ce30412,pc),r6
    mov.l @(PTR_ce30424,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30366
    mov.w @(DAT_ce30414,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3036e

LAB_ce30366:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3036e:
    mov.w @(DAT_ce30416,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3037c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30428,pc),r5
    mov.w @(DAT_ce30418,pc),r6
    mov.l @(PTR_ce30424,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3039c
    mov.w @(DAT_ce30414,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303a4

LAB_ce3039c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303a4:
    mov.w @(DAT_ce30416,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce303b2:
    rts
    nop

LAB_ce303b6:
    mov.w @(DAT_ce3041a,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce3042c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce303ca:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30430,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3041c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce303f8
    mov.w @(DAT_ce3041e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce303f0
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3064a
    mov.l @r15+,r14

LAB_ce303f0:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce305a4
    mov.l @r15+,r14

LAB_ce303f8:
    mov.w @(DAT_ce3041e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3040a
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce304dc
    mov.l @r15+,r14

LAB_ce3040a:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30434
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30412:
    #data 0x0384
DAT_ce30414:
    #data 0x040c
DAT_ce30416:
    #data 0x0258
DAT_ce30418:
    #data 0x037c
DAT_ce3041a:
    #data 0x01ff
DAT_ce3041c:
    #data 0x01fe
DAT_ce3041e:
    #data 0x01f9
    #align4

PTR_ce30420:
    #data DAT_ce33a10
PTR_ce30424:
    #data loc_8c054e58
PTR_ce30428:
    #data DAT_ce33a00
PTR_ce3042c:
    #data PTR_ce33a90
PTR_ce30430:
    #data loc_8c052b4c

;=============================================

LAB_ce30434:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30532,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3053c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3045a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30474
    cmp/eq 0x02,r0
    bt LAB_ce3048e
    bra LAB_ce304a8
    nop

LAB_ce3045a:
    mov.w @(DAT_ce30534,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30536,pc),r0
    mov.l @(PTR_ce30540,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30538,pc),r0
    bra LAB_ce304a8
    mov.b r13,@(r0,r14)

LAB_ce30474:
    mov.w @(DAT_ce30534,pc),r0
    mov 0x01,r11
    mov 0x15,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30536,pc),r0
    mov.l @(PTR_ce30544,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce304a4
    nop

LAB_ce3048e:
    mov.w @(DAT_ce30534,pc),r0
    mov 0x02,r11
    mov 0x16,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30536,pc),r0
    mov.l @(PTR_ce30548,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce304a4:
    mov.w @(DAT_ce30538,pc),r0
    mov.b r11,@(r0,r14)

LAB_ce304a8:
    mov.w @(DAT_ce3053a,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce3054c,pc),r3
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
    mov.w @(DAT_ce30534,pc),r0
    mov.l @(PTR_ce30550,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce304dc:
    mov.w @(DAT_ce30532,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce304fc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3051a
    cmp/eq 0x02,r0
    bt LAB_ce30554
    bra LAB_ce30574
    nop

LAB_ce304fc:
    mov.w @(DAT_ce30534,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3053c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30536,pc),r0
    mov.l @(PTR_ce30540,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30538,pc),r0
    bra LAB_ce30574
    mov.b r13,@(r0,r14)

LAB_ce3051a:
    mov.w @(DAT_ce30534,pc),r0
    mov 0x01,r4
    mov 0x07,r3
    mov.l @(PTR_ce30544,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30536,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30538,pc),r0
    bra LAB_ce30574
    mov.b r4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30532:
    #data 0x01e8
DAT_ce30534:
    #data 0x0158
DAT_ce30536:
    #data 0x03f4
DAT_ce30538:
    #data 0x01a7
DAT_ce3053a:
    #data 0x01ac
    #align4

PTR_ce3053c:
    #data loc_8c04223a
PTR_ce30540:
    #data DAT_ce33988
PTR_ce30544:
    #data DAT_ce3398c
PTR_ce30548:
    #data DAT_ce33990
PTR_ce3054c:
    #data loc_8c2896b0
PTR_ce30550:
    #data loc_8c034e8c

;=============================================

LAB_ce30554:
    mov.w @(DAT_ce3066e,pc),r0
    mov 0x02,r2
    mov 0x08,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.l @(PTR_ce30678,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30670,pc),r0
    mov 0x02,r3
    mov.l @(PTR_ce3067c,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30672,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30574:
    mov.w @(DAT_ce30674,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30680,pc),r3
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
    mov.w @(DAT_ce3066e,pc),r0
    mov.l @(PTR_ce30684,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce305a4:
    mov.w @(DAT_ce30676,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce305c4
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce305e2
    cmp/eq 0x02,r0
    bt LAB_ce305fa
    bra LAB_ce3061a
    nop

LAB_ce305c4:
    mov.w @(DAT_ce3066e,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30678,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30670,pc),r0
    mov.l @(PTR_ce30688,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30672,pc),r0
    bra LAB_ce3061a
    mov.b r13,@(r0,r14)

LAB_ce305e2:
    mov.w @(DAT_ce3066e,pc),r0
    mov 0x01,r4
    mov 0x04,r3
    mov.l @(PTR_ce3068c,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30670,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30672,pc),r0
    bra LAB_ce3061a
    mov.b r4,@(r0,r14)

LAB_ce305fa:
    mov.w @(DAT_ce3066e,pc),r0
    mov 0x02,r2
    mov 0x05,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.l @(PTR_ce30678,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30670,pc),r0
    mov 0x02,r3
    mov.l @(PTR_ce30690,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30672,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce3061a:
    mov.w @(DAT_ce30674,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce30680,pc),r3
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
    mov.w @(DAT_ce3066e,pc),r0
    mov.l @(PTR_ce30684,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce3064a:
    mov.w @(DAT_ce30676,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30678,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30694
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce306b0
    cmp/eq 0x02,r0
    bt LAB_ce306cc
    bra LAB_ce306ea
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3066e:
    #data 0x0158
DAT_ce30670:
    #data 0x03f4
DAT_ce30672:
    #data 0x01a7
DAT_ce30674:
    #data 0x01ac
DAT_ce30676:
    #data 0x01e8
    #align4

PTR_ce30678:
    #data loc_8c04223a
PTR_ce3067c:
    #data DAT_ce33990
PTR_ce30680:
    #data loc_8c2896b0
PTR_ce30684:
    #data loc_8c034e8c
PTR_ce30688:
    #data DAT_ce33994
PTR_ce3068c:
    #data DAT_ce33998
PTR_ce30690:
    #data DAT_ce3399c

;=============================================

LAB_ce30694:
    mov.w @(DAT_ce307a2,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307a4,pc),r0
    mov.l @(PTR_ce307b0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307a6,pc),r0
    bra LAB_ce306ea
    mov.b r13,@(r0,r14)

LAB_ce306b0:
    mov.w @(DAT_ce307a2,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307a4,pc),r0
    mov.l @(PTR_ce307b4,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce306e6
    mov 0x01,r2

LAB_ce306cc:
    mov.w @(DAT_ce307a2,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307a4,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce307b8,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce306e6:
    mov.w @(DAT_ce307a6,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce306ea:
    mov.w @(DAT_ce307a8,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce307bc,pc),r3
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
    mov.w @(DAT_ce307a2,pc),r0
    mov.l @(PTR_ce307c0,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3071c:
    mov.w @(DAT_ce307aa,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30732
    mov.w @(DAT_ce307ac,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bf LAB_ce30742

LAB_ce30732:
    mov.w @(DAT_ce307aa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30746
    mov.w @(DAT_ce307ac,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30746

LAB_ce30742:
    bsr FUN_ce30754
    mov r14,r4

LAB_ce30746:
    mova @(DAT_ce307c4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30754:
    mov.w @(DAT_ce307aa,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3076c
    bsr FUN_ce30896
    mov r14,r4
    bra LAB_ce30770
    nop

LAB_ce3076c:
    bsr FUN_ce3077e
    mov r14,r4

LAB_ce30770:
    mova @(DAT_ce307c4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3077e:
    mov.w @(DAT_ce307ae,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce307c8,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307cc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307f8
    cmp/eq 0x02,r0
    bt LAB_ce30824
    bra LAB_ce30852
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307a2:
    #data 0x0158
DAT_ce307a4:
    #data 0x03f4
DAT_ce307a6:
    #data 0x01a7
DAT_ce307a8:
    #data 0x01ac
DAT_ce307aa:
    #data 0x01fe
DAT_ce307ac:
    #data 0x01d6
DAT_ce307ae:
    #data 0x01e8
    #align4

PTR_ce307b0:
    #data DAT_ce33994
PTR_ce307b4:
    #data DAT_ce33998
PTR_ce307b8:
    #data DAT_ce3399c
PTR_ce307bc:
    #data loc_8c2896b0
PTR_ce307c0:
    #data loc_8c034e8c
DAT_ce307c4:
    #data 0xbf4db6db
PTR_ce307c8:
    #data loc_8c04223a

;=============================================

LAB_ce307cc:
    mov.w @(DAT_ce308ba,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308bc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce307ec
    mov.w @(DAT_ce308be,pc),r0
    mov.l @(PTR_ce308c8,pc),r3
    bra LAB_ce307f2
    mov.l r3,@(r0,r14)

LAB_ce307ec:
    mov.w @(DAT_ce308be,pc),r0
    mov.l @(PTR_ce308cc,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce307f2:
    mov.w @(DAT_ce308c0,pc),r0
    bra LAB_ce30852
    mov.b r13,@(r0,r14)

LAB_ce307f8:
    mov.w @(DAT_ce308ba,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308bc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3081a
    mov.w @(DAT_ce308be,pc),r0
    mov.l @(PTR_ce308d0,pc),r3
    bra LAB_ce30820
    mov.l r3,@(r0,r14)

LAB_ce3081a:
    mov.w @(DAT_ce308be,pc),r0
    mov.l @(PTR_ce308d4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30820:
    bra LAB_ce3084e
    mov 0x01,r3

LAB_ce30824:
    mov.w @(DAT_ce308ba,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308bc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30846
    mov.w @(DAT_ce308be,pc),r0
    mov.l @(PTR_ce308d8,pc),r3
    bra LAB_ce3084c
    mov.l r3,@(r0,r14)

LAB_ce30846:
    mov.w @(DAT_ce308be,pc),r0
    mov.l @(PTR_ce308dc,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce3084c:
    mov 0x02,r3

LAB_ce3084e:
    mov.w @(DAT_ce308c0,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30852:
    mov.w @(DAT_ce308c2,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce308e0,pc),r3
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
    mov.w @(DAT_ce308ba,pc),r0
    mov.l @(PTR_ce308e4,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce308c4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce3088c
    mov.w @(DAT_ce308c4,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce3088c:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30896:
    mov.w @(DAT_ce308c6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce308e8,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308ec
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30918
    cmp/eq 0x02,r0
    bt LAB_ce30944
    bra LAB_ce30972
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308ba:
    #data 0x0158
DAT_ce308bc:
    #data 0x01fc
DAT_ce308be:
    #data 0x03f4
DAT_ce308c0:
    #data 0x01a7
DAT_ce308c2:
    #data 0x01ac
DAT_ce308c4:
    #data 0x01d6
DAT_ce308c6:
    #data 0x01e8
    #align4

PTR_ce308c8:
    #data DAT_ce339a0
PTR_ce308cc:
    #data DAT_ce339b8
PTR_ce308d0:
    #data DAT_ce339a4
PTR_ce308d4:
    #data DAT_ce339bc
PTR_ce308d8:
    #data DAT_ce339a8
PTR_ce308dc:
    #data DAT_ce339c0
PTR_ce308e0:
    #data loc_8c2896b0
PTR_ce308e4:
    #data loc_8c034e8c
PTR_ce308e8:
    #data loc_8c04223a

;=============================================

LAB_ce308ec:
    mov.w @(DAT_ce309ca,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309cc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3090c
    mov.w @(DAT_ce309ce,pc),r0
    mov.l @(PTR_ce309d8,pc),r3
    bra LAB_ce30912
    mov.l r3,@(r0,r14)

LAB_ce3090c:
    mov.w @(DAT_ce309ce,pc),r0
    mov.l @(PTR_ce309dc,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30912:
    mov.w @(DAT_ce309d0,pc),r0
    bra LAB_ce30972
    mov.b r13,@(r0,r14)

LAB_ce30918:
    mov.w @(DAT_ce309ca,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309cc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3093a
    mov.w @(DAT_ce309ce,pc),r0
    mov.l @(PTR_ce309e0,pc),r3
    bra LAB_ce30940
    mov.l r3,@(r0,r14)

LAB_ce3093a:
    mov.w @(DAT_ce309ce,pc),r0
    mov.l @(PTR_ce309e4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30940:
    bra LAB_ce3096e
    mov 0x01,r3

LAB_ce30944:
    mov.w @(DAT_ce309ca,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309cc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30966
    mov.w @(DAT_ce309ce,pc),r0
    mov.l @(PTR_ce309e8,pc),r3
    bra LAB_ce3096c
    mov.l r3,@(r0,r14)

LAB_ce30966:
    mov.w @(DAT_ce309ce,pc),r0
    mov.l @(PTR_ce309ec,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce3096c:
    mov 0x02,r3

LAB_ce3096e:
    mov.w @(DAT_ce309d0,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30972:
    mov.w @(DAT_ce309d2,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce309f0,pc),r3
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
    mov.w @(DAT_ce309ca,pc),r0
    mov.l @(PTR_ce309f4,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce309d4,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce309ac
    mov.w @(DAT_ce309d4,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce309ac:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce309b6:
    mov.w @(DAT_ce309d6,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce309f8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309ca:
    #data 0x0158
DAT_ce309cc:
    #data 0x01fc
DAT_ce309ce:
    #data 0x03f4
DAT_ce309d0:
    #data 0x01a7
DAT_ce309d2:
    #data 0x01ac
DAT_ce309d4:
    #data 0x01d6
DAT_ce309d6:
    #data 0x01ff
    #align4

PTR_ce309d8:
    #data DAT_ce339ac
PTR_ce309dc:
    #data DAT_ce339c4
PTR_ce309e0:
    #data DAT_ce339b0
PTR_ce309e4:
    #data DAT_ce339c8
PTR_ce309e8:
    #data DAT_ce339b4
PTR_ce309ec:
    #data DAT_ce339cc
PTR_ce309f0:
    #data loc_8c2896b0
PTR_ce309f4:
    #data loc_8c034e8c
PTR_ce309f8:
    #data PTR_ce33aa0

;=============================================

LAB_ce309fc:
    sts.l PR,@-r15
    mov.l @(PTR_ce30ad8,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30a0a:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30adc,pc),r3
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
    mov.w @(DAT_ce30ad0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30a72
    mov.w @(DAT_ce30ad2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30a6a
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e4c
    mov.l @r15+,r14

LAB_ce30a6a:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c8c
    mov.l @r15+,r14

LAB_ce30a72:
    mov.w @(DAT_ce30ad2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30a84
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30b5e
    mov.l @r15+,r14

LAB_ce30a84:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30a8c
    mov.l @r15+,r14

LAB_ce30a8c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.l @(PTR_ce30ae0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30aac
    lds.l @r15+,PR
    mov.l @(PTR_ce30ae4,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30aac:
    mov.w @(DAT_ce30ad4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30ac2
    cmp/eq 0x01,r0
    bt LAB_ce30ae8
    cmp/eq 0x00,r0
    bt LAB_ce30b16
    bra LAB_ce30b16
    nop

LAB_ce30ac2:
    mov.w @(DAT_ce30ad6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30b16
    mov.b r13,@(r0,r14)
    bra LAB_ce30af4
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ad0:
    #data 0x01fe
DAT_ce30ad2:
    #data 0x01f9
DAT_ce30ad4:
    #data 0x01e8
DAT_ce30ad6:
    #data 0x0141
    #align4

PTR_ce30ad8:
    #data loc_8c0511e2
PTR_ce30adc:
    #data loc_8c052c84
PTR_ce30ae0:
    #data loc_8c034dee
PTR_ce30ae4:
    #data loc_8c051648

;=============================================

LAB_ce30ae8:
    mov.w @(DAT_ce30b96,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30b16
    mov 0x01,r3
    mov.b r13,@(r0,r14)

LAB_ce30af4:
    add 0x60,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30b98,pc),r0
    mov.l @(PTR_ce30ba0,pc),r3
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

LAB_ce30b16:
    mov.w @(DAT_ce30b9a,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30b56
    mova @(DAT_ce30ba4,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30b9c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b3e
    mov.w @(DAT_ce30b9a,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce30b50
    fmac fr0,fr3,fr2

LAB_ce30b3e:
    mov.w @(DAT_ce30b9a,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce30b50:
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce30b9a,pc),r0
    mov.w r13,@(r0,r14)

LAB_ce30b56:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30b5e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ba8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30b80
    mov.l @(PTR_ce30bac,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30bb0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30b80:
    mov.w @(DAT_ce30b9e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30c44
    cmp/eq 0x01,r0
    bt LAB_ce30bb4
    cmp/eq 0x02,r0
    bt LAB_ce30c28
    bra LAB_ce30c44
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b96:
    #data 0x0141
DAT_ce30b98:
    #data 0x01ac
DAT_ce30b9a:
    #data 0x0150
DAT_ce30b9c:
    #data 0x0130
DAT_ce30b9e:
    #data 0x01e8
    #align4

PTR_ce30ba0:
    #data loc_8c2896b0
DAT_ce30ba4:
    #data 0x3fd55555
PTR_ce30ba8:
    #data loc_8c034dee
PTR_ce30bac:
    #data loc_8c035162
PTR_ce30bb0:
    #data loc_8c051648

;=============================================

LAB_ce30bb4:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30bd0
    mov.w @(DAT_ce30cb4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30bd0
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov 0x00,r0
    mov.w r0,@(0x1e,r14)

LAB_ce30bd0:
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c44
    mov.w @(DAT_ce30cb4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30c44
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce30c00
    mov.l @(PTR_ce30cbc,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30cbc,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)

LAB_ce30c00:
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst 0x02,r0
    bt LAB_ce30c18
    mov.l @(PTR_ce30cc0,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    bra LAB_ce30c44
    nop

LAB_ce30c18:
    mov.l @(PTR_ce30cc4,pc),r2
    mov 0x03,r6
    mov 0x01,r7
    mov r6,r5
    jsr @r2
    mov r14,r4
    bra LAB_ce30c44
    nop

LAB_ce30c28:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30c44
    mov.w @(DAT_ce30cb4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30c44
    mov.b @(0x6,r14),r0
    mov 0x01,r5
    mov.l @(PTR_ce30cc8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce30c44:
    mov.w @(DAT_ce30cb6,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30c86
    mova @(DAT_ce30ccc,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30cb8,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c6c
    mov.w @(DAT_ce30cb6,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce30c7e
    fmac fr0,fr3,fr2

LAB_ce30c6c:
    mov.w @(DAT_ce30cb6,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce30c7e:
    fmov fr2,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce30cb6,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce30c86:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30c8c:
    mov.w @(DAT_ce30cba,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30cd0,pc),r12
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce30cd4
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30d6e
    cmp/eq 0x00,r0
    bf LAB_ce30cb0
    bra LAB_ce30da4
    nop

LAB_ce30cb0:
    bra LAB_ce30e02
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30cb4:
    #data 0x0141
DAT_ce30cb6:
    #data 0x0150
DAT_ce30cb8:
    #data 0x0130
DAT_ce30cba:
    #data 0x01e8
    #align4

PTR_ce30cbc:
    #data loc_8c07382c
PTR_ce30cc0:
    #data loc_8c035162
PTR_ce30cc4:
    #data loc_8c03544c
PTR_ce30cc8:
    #data loc_8c0c84bc
DAT_ce30ccc:
    #data 0x3fd55555
PTR_ce30cd0:
    #data loc_8c034dee

;=============================================

LAB_ce30cd4:
    mov.w @(DAT_ce30dbc,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x20,r0
    bf LAB_ce30ce2
    mov 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce30ce2:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30d0e
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30dbe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d0e
    mov.b @(0x7,r14),r0
    tst r0,r0
    bt LAB_ce30d02
    mov.b @(0x6,r14),r0
    add 0x02,r0
    bra LAB_ce30e42
    mov.b r0,@(0x6,r14)

LAB_ce30d02:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5A,r0
    bra LAB_ce30e42
    mov.w r0,@(0x1c,r14)

LAB_ce30d0e:
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d2e
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bf LAB_ce30d28
    mov.b @(0x7,r14),r0
    tst r0,r0
    bt LAB_ce30d2e

LAB_ce30d28:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce30d2e:
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30d5c
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30dbe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e02
    mov.b @(0x6,r14),r0
    mov 0x17,r5
    mov.l @(PTR_ce30dc4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30dc8,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    bra LAB_ce30e02
    nop

LAB_ce30d5c:
    cmp/eq 0x03,r0
    bf LAB_ce30e02
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30dae
    bra LAB_ce30e02
    nop

LAB_ce30d6e:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30dae
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30d94
    mov.w @(DAT_ce30dbe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d94
    mov.b @(0x6,r14),r0
    mov 0x0D,r5
    mov.l @(PTR_ce30dcc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce30d94:
    mov.w @(DAT_ce30dc0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e02
    mov 0x04,r3
    mov.b r13,@(r0,r14)
    bra LAB_ce30de2
    add 0x61,r0

LAB_ce30da4:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30dd4

LAB_ce30dae:
    lds.l @r15+,PR
    mov.l @(PTR_ce30dd0,pc),r2
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30dbc:
    #data 0x0340
DAT_ce30dbe:
    #data 0x0141
DAT_ce30dc0:
    #data 0x0140
    #align4

PTR_ce30dc4:
    #data loc_8c04223a
PTR_ce30dc8:
    #data loc_8c0743f0
PTR_ce30dcc:
    #data loc_8c0c84bc
PTR_ce30dd0:
    #data loc_8c051648

;=============================================

LAB_ce30dd4:
    mov.w @(DAT_ce30eb6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30e02
    mov.b r13,@(r0,r14)
    add 0x60,r0
    mov 0x19,r3

LAB_ce30de2:
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30eb8,pc),r0
    mov.l @(PTR_ce30ec0,pc),r3
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

LAB_ce30e02:
    mov.w @(DAT_ce30eba,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e42
    mova @(DAT_ce30ec4,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30ebc,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30e2a
    mov.w @(DAT_ce30eba,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce30e3c
    fmac fr0,fr3,fr2

LAB_ce30e2a:
    mov.w @(DAT_ce30eba,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce30e3c:
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce30eba,pc),r0
    mov.w r13,@(r0,r14)

LAB_ce30e42:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30e4c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce30ec8,pc),r3
    mov 0x00,r13
    fldi0 fr15
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e70
    mov.l @(PTR_ce30ecc,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce30fa0
    nop

LAB_ce30e70:
    mov.w @(DAT_ce30ebe,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30e86
    cmp/eq 0x01,r0
    bt LAB_ce30f60
    cmp/eq 0x02,r0
    bt LAB_ce30ed0
    bra LAB_ce30f60
    nop

LAB_ce30e86:
    mov.w @(DAT_ce30eb6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f60
    mov.b r13,@(r0,r14)
    add 0x60,r0
    mov 0x09,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30ec0,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    bra LAB_ce30f60
    mov.w r1,@(r0,r2)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30eb6:
    #data 0x0141
DAT_ce30eb8:
    #data 0x01ac
DAT_ce30eba:
    #data 0x0150
DAT_ce30ebc:
    #data 0x0130
DAT_ce30ebe:
    #data 0x01e8
    #align4

PTR_ce30ec0:
    #data loc_8c2896b0
DAT_ce30ec4:
    #data 0x3fd55555
PTR_ce30ec8:
    #data loc_8c034dee
PTR_ce30ecc:
    #data loc_8c051648

;=============================================

LAB_ce30ed0:
    mov.w @(DAT_ce30fac,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30f28
    mov.w @(DAT_ce30fae,pc),r0
    mov.w @(DAT_ce30fb0,pc),r3
    mov.w @(r0,r14),r1
    extu.w r1,r1
    tst r3,r1
    bt LAB_ce30f02
    mova @(DAT_ce30fbc,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30fb2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30ef8
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce30efe
    fadd fr4,fr3

LAB_ce30ef8:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fsub fr4,fr3

LAB_ce30efe:
    bra LAB_ce30f28
    fmov fr3,@(r0,r14)

LAB_ce30f02:
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce30fb4,pc),r1
    extu.w r2,r2
    tst r1,r2
    bt LAB_ce30f28
    mova @(DAT_ce30fc0,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30fb2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30f20
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce30f26
    fadd fr4,fr3

LAB_ce30f20:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fsub fr4,fr3

LAB_ce30f26:
    fmov fr3,@(r0,r14)

LAB_ce30f28:
    mov.l @(PTR_ce30fc4,pc),r3
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x0F,r0
    bf LAB_ce30f60
    mov.l @(PTR_ce30fc8,pc),r3
    mov r14,r2
    mov r15,r1
    add 0x34,r2
    jsr @r3
    mov 0x0C,r0
    fmov.s @r15,fr3
    mov 0x00,r6
    mov.w @(DAT_ce30fb6,pc),r0
    fadd fr15,fr3
    mov.l @(PTR_ce30fcc,pc),r3
    mov.w @(r0,r14),r2
    mov 0x04,r0
    tst r2,r2
    fmov.s fr3,@r15
    fmov.s @(r0,r15),fr3
    mov 0x04,r0
    fadd fr15,fr3
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce30fb6,pc),r0
    mov.w @(r0,r14),r5
    jsr @r3
    mov r15,r4

LAB_ce30f60:
    mov.w @(DAT_ce30fb8,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30fa0
    mova @(DAT_ce30fd0,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30fb6,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30f88
    mov.w @(DAT_ce30fb8,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce30f9a
    fmac fr0,fr3,fr2

LAB_ce30f88:
    mov.w @(DAT_ce30fb8,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce30f9a:
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce30fb8,pc),r0
    mov.w r13,@(r0,r14)

LAB_ce30fa0:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fac:
    #data 0x0525
DAT_ce30fae:
    #data 0x034a
DAT_ce30fb0:
    #data 0x0800
DAT_ce30fb2:
    #data 0x01d2
DAT_ce30fb4:
    #data 0x0400
DAT_ce30fb6:
    #data 0x0130
DAT_ce30fb8:
    #data 0x0150
    #align4

DAT_ce30fbc:
    #data 0xc0a00000
DAT_ce30fc0:
    #data 0x40855555
PTR_ce30fc4:
    #data loc_8c26823c
PTR_ce30fc8:
    #data loc_8c1294c8
PTR_ce30fcc:
    #data loc_8c0cbb4c
DAT_ce30fd0:
    #data 0x3fd55555

;=============================================

LAB_ce30fd4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310dc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce310e0,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30fea:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310e4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce310e8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce310d4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3100c
    bsr FUN_ce3104e
    mov r14,r4
    bra LAB_ce31010
    nop

LAB_ce3100c:
    bsr FUN_ce3102c
    mov r14,r4

LAB_ce31010:
    mov.l @(PTR_ce310ec,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce31026
    lds.l @r15+,PR
    mov.l @(PTR_ce310f0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31026:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3102c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce310f4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31046
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce310f8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31046:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce3104e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310f4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31068
    lds.l @r15+,PR
    mov.l @(PTR_ce310f8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31068:
    mov.w @(DAT_ce310d6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce31080
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce3108e
    cmp/eq 0x02,r0
    bt LAB_ce310bc
    bra LAB_ce310bc
    nop

LAB_ce31080:
    mov.w @(DAT_ce310d8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce310bc
    mov.b r4,@(r0,r14)
    bra LAB_ce3109a
    mov 0x0F,r3

LAB_ce3108e:
    mov.w @(DAT_ce310d8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce310bc
    mov 0x10,r3
    mov.b r4,@(r0,r14)

LAB_ce3109a:
    add 0x60,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce310da,pc),r0
    mov.l @(PTR_ce310fc,pc),r3
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

LAB_ce310bc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310c2:
    mov r4,r3
    mov.l @(PTR_ce31100,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310d4:
    #data 0x01fe
DAT_ce310d6:
    #data 0x01e8
DAT_ce310d8:
    #data 0x0141
DAT_ce310da:
    #data 0x01ac
    #align4

PTR_ce310dc:
    #data loc_8c050084
PTR_ce310e0:
    #data loc_8c04ff88
PTR_ce310e4:
    #data loc_8c04fea8
PTR_ce310e8:
    #data loc_8c050048
PTR_ce310ec:
    #data loc_8c052ce2
PTR_ce310f0:
    #data loc_8c052dac
PTR_ce310f4:
    #data loc_8c034dee
PTR_ce310f8:
    #data loc_8c05176e
PTR_ce310fc:
    #data loc_8c2896b0
PTR_ce31100:
    #data PTR_ce33ab0

;=============================================

LAB_ce31104:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31260,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31256,pc),r0
    mov 0x16,r2
    mov 0x01,r3
    mov.b r2,@(r0,r14)
    add 0x58,r0
    mov.b r3,@(r0,r14)
    mov 0x14,r5
    mov.l @(PTR_ce31264,pc),r3
    mov 0x03,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31258,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31268,pc),r3
    mov 0x05,r5
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
    mov.l @(PTR_ce3126c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3115a:
    mov.w @(DAT_ce3125a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31170
    mov.l @(PTR_ce31270,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31170:
    mov 0x5C,r1
    mov.l @(PTR_ce31274,pc),r3
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
    mov.l @(PTR_ce31278,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3125c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311ce
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3127c,pc),r3
    mov 0x11,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce311ce:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311d4:
    mov.w @(DAT_ce3125a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce311ea
    mov.l @(PTR_ce31270,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce311ea:
    mov 0x5C,r1
    mov.l @(PTR_ce31274,pc),r3
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
    mov.l @(PTR_ce31278,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3123e
    lds.l @r15+,PR
    mov.l @(PTR_ce31280,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3123e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31244:
    mov r4,r3
    mov.l @(PTR_ce31284,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31256:
    #data 0x01a1
DAT_ce31258:
    #data 0x01ac
DAT_ce3125a:
    #data 0x01ff
DAT_ce3125c:
    #data 0x0141
    #align4

PTR_ce31260:
    #data loc_8c052b4c
PTR_ce31264:
    #data loc_8c034e8c
PTR_ce31268:
    #data loc_8c2896b0
PTR_ce3126c:
    #data loc_8c056de4
PTR_ce31270:
    #data loc_8c0511e2
PTR_ce31274:
    #data loc_8c052c84
PTR_ce31278:
    #data loc_8c034dee
PTR_ce3127c:
    #data loc_8c0c84bc
PTR_ce31280:
    #data loc_8c051648
PTR_ce31284:
    #data PTR_ce33abc

;=============================================

LAB_ce31288:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313c8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce313be,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce312ba
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce313c0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce312b2
    mova @(DAT_ce313cc,pc),r0
    bra LAB_ce312b6
    fmov.s @r0,fr3

LAB_ce312b2:
    mova @(DAT_ce313d0,pc),r0
    fmov.s @r0,fr3

LAB_ce312b6:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce312ba:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312c0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313c8,pc),r3
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce3131c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce313c0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31306
    mova @(DAT_ce313d4,pc),r0
    bra LAB_ce3130a
    fmov.s @r0,fr3

LAB_ce31306:
    mova @(DAT_ce313d8,pc),r0
    fmov.s @r0,fr3

LAB_ce3130a:
    mov 0x02,r6
    mov.l @(PTR_ce313dc,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov r6,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3131c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31322:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce313c8,pc),r3
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
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31356
    mov.l @(PTR_ce313e0,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31356:
    mov.w @(DAT_ce313be,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3136c
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce3136c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31372:
    mov r4,r3
    mov.l @(PTR_ce313e4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31384:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r3
    fldi0 fr4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x02,r5
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce313c2,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce313dc,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce313c4,pc),r0
    mov.b @(r0,r14),r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce313be:
    #data 0x0141
DAT_ce313c0:
    #data 0x01d2
DAT_ce313c2:
    #data 0x01d5
DAT_ce313c4:
    #data 0x0140
    #align4

PTR_ce313c8:
    #data loc_8c034dee
DAT_ce313cc:
    #data 0xc1555555
DAT_ce313d0:
    #data 0x41555555
DAT_ce313d4:
    #data 0x3e855555
DAT_ce313d8:
    #data 0xbe855555
PTR_ce313dc:
    #data loc_8c034e8c
PTR_ce313e0:
    #data loc_8c051648
PTR_ce313e4:
    #data PTR_ce33ac8

;=============================================

LAB_ce313e8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31514,pc),r3
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
    mov.w @(DAT_ce3150e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3144c
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31510,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31444
    mova @(DAT_ce31518,pc),r0
    bra LAB_ce31448
    fmov.s @r0,fr3

LAB_ce31444:
    mova @(DAT_ce3151c,pc),r0
    fmov.s @r0,fr3

LAB_ce31448:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce3144c:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce3148a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31510,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3146c
    mova @(DAT_ce31520,pc),r0
    bra LAB_ce31470
    fmov.s @r0,fr3

LAB_ce3146c:
    mova @(DAT_ce31524,pc),r0
    fmov.s @r0,fr3

LAB_ce31470:
    mov 0x68,r0
    mov.l @(PTR_ce3152c,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31528,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov r14,r4
    mov 0x05,r6
    fmov fr3,@(r0,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3148a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31490:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31514,pc),r3
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
    bt LAB_ce314e0
    mov.l @(PTR_ce31530,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce314e0:
    mov.w @(DAT_ce3150e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce314f6
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce314f6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce314fc:
    mov r4,r3
    mov.l @(PTR_ce31534,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3150e:
    #data 0x0141
DAT_ce31510:
    #data 0x01d2
    #align4

PTR_ce31514:
    #data loc_8c034dee
DAT_ce31518:
    #data 0xc1555555
DAT_ce3151c:
    #data 0x41555555
DAT_ce31520:
    #data 0x3e855555
DAT_ce31524:
    #data 0xbe855555
DAT_ce31528:
    #data 0xbf4db6db
PTR_ce3152c:
    #data loc_8c034e8c
PTR_ce31530:
    #data loc_8c05176e
PTR_ce31534:
    #data PTR_ce33ad4

;=============================================

LAB_ce31538:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3162c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31624,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3157a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31626,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31562
    mova @(DAT_ce31630,pc),r0
    bra LAB_ce31566
    fmov.s @r0,fr3

LAB_ce31562:
    mova @(DAT_ce31634,pc),r0
    fmov.s @r0,fr3

LAB_ce31566:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31638,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3163c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce3157a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31580:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3162c,pc),r3
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
    fmov fr2,fr3
    fmov fr2,@(r0,r14)
    fldi0 fr2
    fcmp/eq fr2,fr3
    bt LAB_ce315e8
    mov.w @(DAT_ce31628,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce315e8
    mov.w @(DAT_ce31628,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce315e8:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce3161e
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31626,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31608
    mova @(DAT_ce31640,pc),r0
    bra LAB_ce3160c
    fmov.s @r0,fr3

LAB_ce31608:
    mova @(DAT_ce31644,pc),r0
    fmov.s @r0,fr3

LAB_ce3160c:
    mov.l @(PTR_ce31648,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x03,r6
    mov 0x02,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3161e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31624:
    #data 0x0141
DAT_ce31626:
    #data 0x01d2
DAT_ce31628:
    #data 0x041c
    #align4

PTR_ce3162c:
    #data loc_8c034dee
DAT_ce31630:
    #data 0x41555555
DAT_ce31634:
    #data 0xc1555555
DAT_ce31638:
    #data 0x40892492
DAT_ce3163c:
    #data 0xbf092492
DAT_ce31640:
    #data 0xbe855555
DAT_ce31644:
    #data 0x3e855555
PTR_ce31648:
    #data loc_8c034e8c

;=============================================

LAB_ce3164c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3178c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31790,pc),r3
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
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31684
    mov.l @(PTR_ce31794,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31684:
    mov.w @(DAT_ce31782,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3169a
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce3169a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce316a0:
    mov r4,r3
    mov.l @(PTR_ce31798,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce316b2:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31784,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x64,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3179c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31786,pc),r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    tst r4,r3
    bf LAB_ce316e8
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fsub fr4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce317a0,pc),r0
    bra LAB_ce316f4
    fmov.s @r0,fr2

LAB_ce316e8:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce317a4,pc),r0
    fmov.s @r0,fr2

LAB_ce316f4:
    mov 0x5C,r0
    mov.l @(PTR_ce317a8,pc),r3
    fmov fr2,@(r0,r14)
    mov 0x12,r5
    mov.w @(DAT_ce31788,pc),r0
    mov 0x00,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3171a:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
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
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce31778
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31786,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bf LAB_ce3175e
    mova @(DAT_ce317ac,pc),r0
    bra LAB_ce31762
    fmov.s @r0,fr3

LAB_ce3175e:
    mova @(DAT_ce317b0,pc),r0
    fmov.s @r0,fr3

LAB_ce31762:
    mov.l @(PTR_ce317a8,pc),r3
    mov 0x68,r0
    mov 0x12,r5
    fmov fr3,@(r0,r14)
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce317b4,pc),r2
    mov 0x0A,r5
    jsr @r2
    mov r14,r4

LAB_ce31778:
    lds.l @r15+,PR
    mov.l @(PTR_ce31790,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31782:
    #data 0x0141
DAT_ce31784:
    #data 0x012c
DAT_ce31786:
    #data 0x01a4
DAT_ce31788:
    #data 0x041c
    #align4

PTR_ce3178c:
    #data loc_8c0511e2
PTR_ce31790:
    #data loc_8c034dee
PTR_ce31794:
    #data loc_8c051648
PTR_ce31798:
    #data PTR_ce33ae0
DAT_ce3179c:
    #data 0x43d55555
DAT_ce317a0:
    #data 0x41200000
DAT_ce317a4:
    #data 0xc1200000
PTR_ce317a8:
    #data loc_8c034e8c
DAT_ce317ac:
    #data 0xbed55555
DAT_ce317b0:
    #data 0x3ed55555
PTR_ce317b4:
    #data loc_8c042008

;=============================================

LAB_ce317b8:
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
    fcmp/gt fr3,fr2
    bf LAB_ce3180c
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    fmov fr3,fr4
    mov 0x02,r6
    add 0x01,r0
    mov.l @(PTR_ce31914,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x64,r0
    fmov.s @(r0,r14),fr2
    mov 0x34,r0
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce3180c:
    lds.l @r15+,PR
    mov.l @(PTR_ce31918,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31816:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31918,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3182e
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce3182e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31836:
    mov r4,r3
    mov.l @(PTR_ce3191c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31848:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31860
    bsr FUN_ce31cdc
    mov r14,r4

LAB_ce31860:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31866:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31920,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce3187e
    lds.l @r15+,PR
    mov.l @(PTR_ce31924,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3187e:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31928,pc),r0
    extu.b r2,r2
    lds.l @r15+,PR
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31892:
    mov r4,r3
    mov.l @(PTR_ce3192c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce318a4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31930,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
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
    mov.w @(DAT_ce3190e,pc),r0
    mov r3,r2
    mov 0x13,r5
    mov r2,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31910,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFD,r0
    mov.l @(PTR_ce31914,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce318ee:
    mov.l @(PTR_ce31918,pc),r3
    jmp @r3
    nop

LAB_ce318f4:
    mov.w @(DAT_ce31912,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31934,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3190e:
    #data 0x041c
DAT_ce31910:
    #data 0x01fc
DAT_ce31912:
    #data 0x01f5
    #align4

PTR_ce31914:
    #data loc_8c034e8c
PTR_ce31918:
    #data loc_8c034dee
PTR_ce3191c:
    #data PTR_ce33af0
PTR_ce31920:
    #data loc_8c046c8a
PTR_ce31924:
    #data loc_8c051648
PTR_ce31928:
    #data PTR_ce33af8
PTR_ce3192c:
    #data PTR_ce33b24
PTR_ce31930:
    #data loc_8c035162
PTR_ce31934:
    #data PTR_ce33b2c

;=============================================

LAB_ce31938:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce31a4c,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.l @(PTR_ce31a50,pc),r2
    mov 0x05,r5
    mov 0x01,r7
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31a46,pc),r0
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31a48,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31a4a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3197c
    mov.l @(PTR_ce31a58,pc),r2
    mova @(DAT_ce31a54,pc),r0
    fmov.s @r0,fr3
    mov 0x34,r0
    fmov.s @r2,fr2
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bt LAB_ce31996

LAB_ce3197c:
    mov.w @(DAT_ce31a4a,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce319d2
    mov.l @(PTR_ce31a60,pc),r3
    mova @(DAT_ce31a5c,pc),r0
    fmov.s @r0,fr3
    mov 0x34,r0
    fmov.s @r3,fr2
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bf LAB_ce319d2

LAB_ce31996:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31a4a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce319aa
    mova @(DAT_ce31a64,pc),r0
    bra LAB_ce319ae
    fmov.s @r0,fr3

LAB_ce319aa:
    mova @(DAT_ce31a68,pc),r0
    fmov.s @r0,fr3

LAB_ce319ae:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31a6c,pc),r3
    mov 0x00,r5
    fmov fr4,@(r0,r14)
    mov 0x02,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce319de
    mov.l @r15+,r14

LAB_ce319d2:
    mov 0x02,r0
    mov r14,r4
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    bra LAB_ce31a7a
    mov.l @r15+,r14

LAB_ce319de:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a70,pc),r3
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce31a4a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31a1e
    mov.l @(PTR_ce31a58,pc),r2
    mova @(DAT_ce31a54,pc),r0
    fmov.s @r0,fr3
    mov 0x34,r0
    fmov.s @r2,fr2
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bf LAB_ce31a38

LAB_ce31a1e:
    mov.w @(DAT_ce31a4a,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31a74
    mov.l @(PTR_ce31a60,pc),r3
    mova @(DAT_ce31a5c,pc),r0
    fmov.s @r0,fr3
    mov 0x34,r0
    fmov.s @r3,fr2
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bt LAB_ce31a74

LAB_ce31a38:
    mov.b @(0x7,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    bra LAB_ce31a7a
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a46:
    #data 0x041c
DAT_ce31a48:
    #data 0x01fc
DAT_ce31a4a:
    #data 0x0130
    #align4

PTR_ce31a4c:
    #data loc_8c035162
PTR_ce31a50:
    #data loc_8c03544c
DAT_ce31a54:
    #data 0xc3a00000
PTR_ce31a58:
    #data loc_8c26a5a4
DAT_ce31a5c:
    #data 0x43a00000
PTR_ce31a60:
    #data loc_8c26a5a0
DAT_ce31a64:
    #data 0xc0d55555
DAT_ce31a68:
    #data 0x40d55555
PTR_ce31a6c:
    #data loc_8c034e8c
PTR_ce31a70:
    #data loc_8c034dee

;=============================================

LAB_ce31a74:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31a7a:
    mov.w @(DAT_ce31b8e,pc),r3
    mov 0x00,r5
    mov.w @(DAT_ce31b90,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x03,r0
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31b94,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31b98,pc),r2
    mov 0x13,r5
    mov 0x03,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31ab4:
    mov.w @(DAT_ce31b8e,pc),r3
    mov.w @(DAT_ce31b90,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31b9c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b16
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31ba0,pc),r13
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    jsr @r13
    mov r14,r4
    mov 0x01,r5
    jsr @r13
    mov r14,r4
    mov 0x02,r5
    jsr @r13
    mov r14,r4
    mov 0x03,r5
    jsr @r13
    mov r14,r4
    mov 0x04,r5
    jsr @r13
    mov r14,r4
    mov 0x05,r5
    jsr @r13
    mov r14,r4
    mov 0x06,r5
    jsr @r13
    mov r14,r4
    mov 0x07,r5
    jsr @r13
    mov r14,r4
    mov 0x08,r5
    jsr @r13
    mov r14,r4
    mov 0x09,r5
    jsr @r13
    mov r14,r4

LAB_ce31b16:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31b1e:
    mov.w @(DAT_ce31b90,pc),r0
    mov.w @(DAT_ce31b8e,pc),r3
    mov.b r3,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce31b3e
    mov.b @(0x7,r4),r0
    mov 0x04,r6
    mov.l @(PTR_ce31b98,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31b3e:
    rts
    nop

LAB_ce31b42:
    mov.w @(DAT_ce31b8e,pc),r3
    mov.w @(DAT_ce31b90,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31b9c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b6e
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31b98,pc),r3
    mov 0x1F,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x0D,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b6e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b74:
    mov.w @(DAT_ce31b90,pc),r0
    mov.w @(DAT_ce31b8e,pc),r3
    rts
    mov.b r3,@(r0,r4)

LAB_ce31b7c:
    mov r4,r3
    mov.l @(PTR_ce31ba4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b8e:
    #data 0x00ff
DAT_ce31b90:
    #data 0x0326
    #align4

PTR_ce31b94:
    #data loc_8c0c84bc
PTR_ce31b98:
    #data loc_8c034e8c
PTR_ce31b9c:
    #data loc_8c034dee
PTR_ce31ba0:
    #data loc_8c0cb7c0
PTR_ce31ba4:
    #data PTR_ce33b48

;=============================================

LAB_ce31ba8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31cb8,pc),r3
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31cbc,pc),r2
    mov 0x01,r7
    mov 0x05,r5
    mov r7,r6
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
    mov 0x00,r4
    mov.w @(DAT_ce31cb0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31cb2,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31cb4,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31c00
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    bra LAB_ce31c0c
    fmov.s fr3,@r15

LAB_ce31c00:
    mova @(DAT_ce31cc0,pc),r0
    fmov.s @r0,fr3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov.s fr2,@r15

LAB_ce31c0c:
    mova @(DAT_ce31cc4,pc),r0
    mov.l @(PTR_ce31cc8,pc),r3
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    mov r15,r5
    mov 0x01,r6
    fadd fr3,fr2
    mov 0x08,r7
    fmov fr2,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31ccc,pc),r2
    mov 0x4A,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31cd0,pc),r3
    mov 0x13,r5
    mov 0x02,r6
    jsr @r3
    mov r14,r4
    bsr FUN_ce31c44
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31c44:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31cd4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31cb6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31ca2
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31cd8,pc),r13
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r13
    mov r14,r4
    mov 0x01,r5
    jsr @r13
    mov r14,r4
    mov 0x02,r5
    jsr @r13
    mov r14,r4
    mov 0x03,r5
    jsr @r13
    mov r14,r4
    mov 0x04,r5
    jsr @r13
    mov r14,r4
    mov 0x05,r5
    jsr @r13
    mov r14,r4
    mov 0x06,r5
    jsr @r13
    mov r14,r4
    mov 0x07,r5
    jsr @r13
    mov r14,r4
    mov 0x08,r5
    jsr @r13
    mov r14,r4
    mov 0x0A,r5
    jsr @r13
    mov r14,r4
    mov 0x0B,r5
    jsr @r13
    mov r14,r4

LAB_ce31ca2:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31caa:
    mov.l @(PTR_ce31cd4,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31cb0:
    #data 0x041c
DAT_ce31cb2:
    #data 0x01fc
DAT_ce31cb4:
    #data 0x0130
DAT_ce31cb6:
    #data 0x0141
    #align4

PTR_ce31cb8:
    #data loc_8c035162
PTR_ce31cbc:
    #data loc_8c03544c
DAT_ce31cc0:
    #data 0x80000000
DAT_ce31cc4:
    #data 0x42ab6db6
PTR_ce31cc8:
    #data loc_8c10235c
PTR_ce31ccc:
    #data loc_8c04223a
PTR_ce31cd0:
    #data loc_8c034e8c
PTR_ce31cd4:
    #data loc_8c034dee
PTR_ce31cd8:
    #data loc_8c0c90b0

;=============================================

FUN_ce31cdc:
    mov.w @(DAT_ce31dd4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce31dd6,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce31d4a
    mov 0x05,r13
    mov 0x20,r0
    mov.w @(DAT_ce31dd8,pc),r1
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31dd4,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r1,r3
    bt LAB_ce31d08
    mov 0x20,r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)

LAB_ce31d08:
    mov.w @(DAT_ce31dd4,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x80,r0
    bt LAB_ce31d18
    mov 0x20,r0
    mov 0x07,r2
    mov.b r2,@(r0,r14)

LAB_ce31d18:
    mov.w @(DAT_ce31dd4,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x40,r0
    bt LAB_ce31d28
    mov 0x20,r0
    mov 0x08,r2
    mov.b r2,@(r0,r14)

LAB_ce31d28:
    mov.w @(DAT_ce31dd4,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x20,r0
    bt LAB_ce31d38
    mov 0x20,r0
    mov 0x09,r2
    mov.b r2,@(r0,r14)

LAB_ce31d38:
    mov.w @(DAT_ce31dd4,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x10,r0
    bt LAB_ce31d5c
    mov 0x20,r0
    mov 0x0A,r2
    bra LAB_ce31d5c
    mov.b r2,@(r0,r14)

LAB_ce31d4a:
    mov.l @(PTR_ce31ddc,pc),r1
    jsr @r1
    nop
    mov.l @(PTR_ce31de0,pc),r1
    and 0x0F,r0
    shll r0
    mov.b @(r0,r1),r3
    mov 0x20,r0
    mov.b r3,@(r0,r14)

LAB_ce31d5c:
    mov.l @(PTR_ce31de4,pc),r3
    mov.b @r3,r2
    tst r2,r2
    bf LAB_ce31d84
    mov 0x20,r0
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x08,r0
    bt/s LAB_ce31d80
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x09,r0
    bt LAB_ce31d80
    mov r4,r0
    nop
    cmp/eq 0x0A,r0
    bf LAB_ce31d84

LAB_ce31d80:
    mov 0x20,r0
    mov.b r13,@(r0,r14)

LAB_ce31d84:
    mov.l @(PTR_ce31de8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r2
    cmp/gt r2,r0
    bf LAB_ce31d94
    mov 0x20,r0
    mov.b r13,@(r0,r14)

LAB_ce31d94:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31d9c:
    mov.w @(DAT_ce31dda,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31dec,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31db0:
    mov r4,r3
    mov.l @(PTR_ce31df0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31dc2:
    mov r4,r3
    mov.l @(PTR_ce31df4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31dd4:
    #data 0x04dc
DAT_ce31dd6:
    #data 0x03f0
DAT_ce31dd8:
    #data 0x0100
DAT_ce31dda:
    #data 0x01e9
    #align4

PTR_ce31ddc:
    #data loc_8c03319e
PTR_ce31de0:
    #data DAT_ce33b54
PTR_ce31de4:
    #data loc_8c289636
PTR_ce31de8:
    #data loc_8c0514b8
PTR_ce31dec:
    #data PTR_ce33b74
PTR_ce31df0:
    #data PTR_ce33ba4
PTR_ce31df4:
    #data PTR_ce33bac

;=============================================

LAB_ce31df8:
    mov.w @(DAT_ce31f04,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce31f02,pc),r4
    extu.b r0,r0
    cmp/eq 0x02,r0
    add r14,r4
    bf/s LAB_ce31e20
    mov 0x01,r5
    mov r5,r0
    nop
    mov.b r0,@(0x6,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce32136
    mov.l @r15+,r14

LAB_ce31e20:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov r5,r0
    nop
    mov 0x00,r13
    mov.w r0,@(0x1e,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce31f10,pc),r3
    mov.b r0,@(0x6,r4)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f14,pc),r2
    mov r13,r5
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
    mov 0x05,r5
    mov.w @(DAT_ce31f06,pc),r0
    mov.l @(PTR_ce31f18,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f08,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f0a,pc),r0
    mov 0x37,r2
    mov.l @(PTR_ce31f1c,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x03,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31f20,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31f24,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce31eaa
    mov.l @r15+,r14

LAB_ce31eaa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31f28,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31f0c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31efa
    mov.b @(0x7,r14),r0
    fldi0 fr3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f0e,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31ed6
    mova @(DAT_ce31f2c,pc),r0
    bra LAB_ce31eda
    fmov.s @r0,fr3

LAB_ce31ed6:
    mova @(DAT_ce31f30,pc),r0
    fmov.s @r0,fr3

LAB_ce31eda:
    mov.l @(PTR_ce31f34,pc),r3
    mov 0x68,r0
    mov 0x4B,r5
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f38,pc),r2
    mov 0x05,r5
    mov 0x01,r7
    mov 0x04,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31f3c,pc),r3
    mov 0x0E,r5
    jsr @r3
    mov r14,r4

LAB_ce31efa:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce324ec
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f02:
    #data 0x02a4
DAT_ce31f04:
    #data 0x01f9
DAT_ce31f06:
    #data 0x041c
DAT_ce31f08:
    #data 0x01fc
DAT_ce31f0a:
    #data 0x01a1
DAT_ce31f0c:
    #data 0x0141
DAT_ce31f0e:
    #data 0x0130
    #align4

PTR_ce31f10:
    #data loc_8c05218a
PTR_ce31f14:
    #data loc_8c035162
PTR_ce31f18:
    #data loc_8c056de4
PTR_ce31f1c:
    #data loc_8c2896b0
PTR_ce31f20:
    #data loc_8c034e8c
PTR_ce31f24:
    #data loc_8c05115a
PTR_ce31f28:
    #data loc_8c034dee
DAT_ce31f2c:
    #data 0xc0555555
DAT_ce31f30:
    #data 0x40555555
PTR_ce31f34:
    #data loc_8c04223a
PTR_ce31f38:
    #data loc_8c03544c
PTR_ce31f3c:
    #data loc_8c0c84bc

;=============================================

LAB_ce31f40:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3206c,pc),r3
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce32064,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31f7a
    mova @(DAT_ce32070,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31f8e

LAB_ce31f7a:
    mov.w @(DAT_ce32064,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31fc8
    mova @(DAT_ce32074,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31fc8

LAB_ce31f8e:
    mov.b @(0x7,r14),r0
    mov.w @(DAT_ce32066,pc),r3
    add 0x01,r0
    mov.l @(PTR_ce32078,pc),r2
    mov.b r0,@(0x7,r14)
    add r14,r3
    mov.b @(0x6,r14),r0
    mov.b @r3,r3
    extu.b r0,r0
    extu.b r3,r3
    shll2 r0
    add r2,r0
    shll r3
    mov.w @(r0,r3),r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32064,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31fba
    mova @(DAT_ce32070,pc),r0
    bra LAB_ce31fbe
    fmov.s @r0,fr3

LAB_ce31fba:
    mova @(DAT_ce32074,pc),r0
    fmov.s @r0,fr3

LAB_ce31fbe:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)

LAB_ce31fc8:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce324ec
    mov.l @r15+,r14

LAB_ce31fd0:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce3206c,pc),r3
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
    bsr FUN_ce324ec
    mov r14,r4
    mov.w @(0x1c,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce32028
    mov.w @(DAT_ce32068,pc),r0
    mov 0x41,r2
    mov 0x00,r4
    mov.l @(PTR_ce3207c,pc),r3
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

LAB_ce32028:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce3205e
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32064,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32048
    mova @(DAT_ce32080,pc),r0
    bra LAB_ce3204c
    fmov.s @r0,fr3

LAB_ce32048:
    mova @(DAT_ce32084,pc),r0
    fmov.s @r0,fr3

LAB_ce3204c:
    mov.l @(PTR_ce32088,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x04,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3205e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32064:
    #data 0x0130
DAT_ce32066:
    #data 0x01a3
DAT_ce32068:
    #data 0x01a1
    #align4

PTR_ce3206c:
    #data loc_8c034dee
DAT_ce32070:
    #data 0xc1a00000
DAT_ce32074:
    #data 0x41a00000
PTR_ce32078:
    #data DAT_ce33b9c
PTR_ce3207c:
    #data loc_8c2896b0
DAT_ce32080:
    #data 0x40555555
DAT_ce32084:
    #data 0xc0555555
PTR_ce32088:
    #data loc_8c034e8c

;=============================================

LAB_ce3208c:
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
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fldi0 fr3
    fmov fr2,fr4
    fcmp/eq fr3,fr4
    bt/s LAB_ce320c2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov fr4,fr1
    fmov.s @(r0,r14),fr2
    fmul fr2,fr1
    fcmp/gt fr3,fr1
    bf LAB_ce320cc

LAB_ce320c2:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce320cc:
    mov.l @(PTR_ce3214c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce320ee
    mov.l @(PTR_ce32150,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32154,pc),r2
    mov 0x2B,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32158,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce320ee:
    mov.w @(DAT_ce32148,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32130
    mova @(DAT_ce3215c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce3214a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32116
    mov.w @(DAT_ce32148,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce32128
    fmac fr0,fr3,fr2

LAB_ce32116:
    mov.w @(DAT_ce32148,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce32128:
    fmov fr2,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce32148,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce32130:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32136:
    mov r4,r3
    mov.l @(PTR_ce32160,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32148:
    #data 0x0150
DAT_ce3214a:
    #data 0x0130
    #align4

PTR_ce3214c:
    #data loc_8c034dee
PTR_ce32150:
    #data loc_8c035162
PTR_ce32154:
    #data loc_8c042008
PTR_ce32158:
    #data loc_8c051648
DAT_ce3215c:
    #data 0x3fd55555
PTR_ce32160:
    #data PTR_ce33bc0

;=============================================

LAB_ce32164:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.w @(DAT_ce3225a,pc),r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    mov.w r0,@(0x1e,r14)
    add r14,r4
    mov r13,r0
    nop
    mov.l @(PTR_ce32264,pc),r3
    mov.b r0,@(0x6,r4)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32268,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce3226c,pc),r0
    fldi0 fr2
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x05,r5
    mov.l @(DAT_ce32270,pc),r1
    fdiv fr4,fr3
    mov.l @(PTR_ce32274,pc),r3
    lds r1,FPUL
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
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3225c,pc),r0
    mov 0x38,r2
    mov.l @(PTR_ce32278,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x05,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3227c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce321f6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce3248c
    mov r4,r14
    mov.l @(PTR_ce32280,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3225e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32252
    mov.b @(0x7,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32260,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32226
    mova @(DAT_ce32284,pc),r0
    bra LAB_ce3222a
    fmov.s @r0,fr3

LAB_ce32226:
    mova @(DAT_ce32288,pc),r0
    fmov.s @r0,fr3

LAB_ce3222a:
    mov 0x68,r0
    mov.l @(PTR_ce3228c,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov 0x4B,r5
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32290,pc),r2
    mov 0x05,r5
    mov 0x01,r7
    mov 0x04,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32294,pc),r3
    mov 0x0F,r5
    jsr @r3
    mov r14,r4

LAB_ce32252:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce324ec
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3225a:
    #data 0x02a4
DAT_ce3225c:
    #data 0x01a1
DAT_ce3225e:
    #data 0x0141
DAT_ce32260:
    #data 0x0130
    #align4

PTR_ce32264:
    #data loc_8c05218a
PTR_ce32268:
    #data loc_8c035162
DAT_ce3226c:
    #data 0x41000000
DAT_ce32270:
    #data 0x42800000
PTR_ce32274:
    #data loc_8c056de4
PTR_ce32278:
    #data loc_8c2896b0
PTR_ce3227c:
    #data loc_8c034e8c
PTR_ce32280:
    #data loc_8c034dee
DAT_ce32284:
    #data 0xc0555555
DAT_ce32288:
    #data 0x40555555
PTR_ce3228c:
    #data loc_8c04223a
PTR_ce32290:
    #data loc_8c03544c
PTR_ce32294:
    #data loc_8c0c84bc

;=============================================

LAB_ce32298:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce323c4,pc),r3
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce323be,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce322d2
    mova @(DAT_ce323c8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce322e6

LAB_ce322d2:
    mov.w @(DAT_ce323be,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32320
    mova @(DAT_ce323cc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce32320

LAB_ce322e6:
    mov.b @(0x7,r14),r0
    mov.w @(DAT_ce323c0,pc),r3
    add 0x01,r0
    mov.l @(PTR_ce323d0,pc),r2
    mov.b r0,@(0x7,r14)
    add r14,r3
    mov.b @(0x6,r14),r0
    mov.b @r3,r3
    extu.b r0,r0
    extu.b r3,r3
    shll2 r0
    add r2,r0
    shll r3
    mov.w @(r0,r3),r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce323be,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32312
    mova @(DAT_ce323c8,pc),r0
    bra LAB_ce32316
    fmov.s @r0,fr3

LAB_ce32312:
    mova @(DAT_ce323cc,pc),r0
    fmov.s @r0,fr3

LAB_ce32316:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)

LAB_ce32320:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce324ec
    mov.l @r15+,r14

LAB_ce32328:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce323c4,pc),r3
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
    bsr FUN_ce324ec
    mov r14,r4
    mov.w @(0x1c,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce32380
    mov.w @(DAT_ce323c2,pc),r0
    mov 0x42,r2
    mov 0x00,r4
    mov.l @(PTR_ce323d4,pc),r3
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

LAB_ce32380:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce323e8
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce323be,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce323a0
    mova @(DAT_ce323d8,pc),r0
    bra LAB_ce323a4
    fmov.s @r0,fr3

LAB_ce323a0:
    mova @(DAT_ce323dc,pc),r0
    fmov.s @r0,fr3

LAB_ce323a4:
    mov 0x68,r0
    mov.l @(PTR_ce323e4,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce323e0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov r14,r4
    mov 0x06,r6
    fmov fr3,@(r0,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce323be:
    #data 0x0130
DAT_ce323c0:
    #data 0x01a3
DAT_ce323c2:
    #data 0x01a1
    #align4

PTR_ce323c4:
    #data loc_8c034dee
DAT_ce323c8:
    #data 0xc1a00000
DAT_ce323cc:
    #data 0x41a00000
PTR_ce323d0:
    #data DAT_ce33b9c
PTR_ce323d4:
    #data loc_8c2896b0
DAT_ce323d8:
    #data 0x3f555555
DAT_ce323dc:
    #data 0xbf555555
DAT_ce323e0:
    #data 0xbf4db6db
PTR_ce323e4:
    #data loc_8c034e8c

;=============================================

LAB_ce323e8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce323ee:
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
    mov.w @(DAT_ce324da,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32440
    mov.w @(DAT_ce324da,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce32440:
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr4
    fcmp/eq fr3,fr4
    bt LAB_ce32456
    mov 0x68,r0
    fmov fr4,fr1
    fmov.s @(r0,r14),fr2
    fmul fr2,fr1
    fcmp/gt fr3,fr1
    bf LAB_ce32460

LAB_ce32456:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce32460:
    mov.l @(PTR_ce324dc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32486
    mov.l @(PTR_ce324e0,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce324e4,pc),r2
    mov 0x2B,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce324e8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32486:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3248c:
    mov 0x5C,r1
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
    fmov fr2,@(r0,r4)
    mov 0x38,r0
    fmov.s @(r0,r4),fr3
    mov.w @(DAT_ce324da,pc),r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce324d6
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)

LAB_ce324d6:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce324da:
    #data 0x041c
    #align4

PTR_ce324dc:
    #data loc_8c034dee
PTR_ce324e0:
    #data loc_8c035162
PTR_ce324e4:
    #data loc_8c042008
PTR_ce324e8:
    #data loc_8c05176e

;=============================================

FUN_ce324ec:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bt/s LAB_ce32532
    mov 0x00,r13
    mov.l @(PTR_ce3258c,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce3256a
    mov.w @(DAT_ce32584,pc),r4
    mov 0x01,r3
    add r14,r4
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.b @(0x6,r4),r0
    extu.b r0,r0
    cmp/ge r3,r0
    bf LAB_ce3256a
    mov r13,r0
    nop
    mov.b r0,@(0x6,r4)
    mov.w @(0x1e,r14),r0
    add 0xFD,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1e,r14),r0
    cmp/pl r0
    bt LAB_ce3256a

LAB_ce32532:
    mov 0x04,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce32586,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32546
    mov.w @(DAT_ce32588,pc),r0
    mov 0x37,r1
    bra LAB_ce3254c
    mov.b r1,@(r0,r14)

LAB_ce32546:
    mov.w @(DAT_ce32588,pc),r0
    mov 0x38,r3
    mov.b r3,@(r0,r14)

LAB_ce3254c:
    mov.w @(DAT_ce3258a,pc),r0
    mov.l @(PTR_ce32590,pc),r3
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

LAB_ce3256a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32572:
    mov r4,r3
    mov.l @(PTR_ce32594,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32584:
    #data 0x02a4
DAT_ce32586:
    #data 0x01f9
DAT_ce32588:
    #data 0x01a1
DAT_ce3258a:
    #data 0x01ac
    #align4

PTR_ce3258c:
    #data loc_8c055d54
PTR_ce32590:
    #data loc_8c2896b0
PTR_ce32594:
    #data PTR_ce33bd4

;=============================================

LAB_ce32598:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce326e4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce326e8,pc),r2
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
    mov 0x00,r13
    mov.w @(DAT_ce326d6,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce326ec,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce326d8,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce326da,pc),r0
    mov 0x3F,r2
    mov.l @(PTR_ce326f0,pc),r3
    mov 0x15,r5
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
    mov.w @(DAT_ce326dc,pc),r0
    mov.l @(PTR_ce326f4,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce326f8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce3261e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce326fc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce326de,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3264e
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce326dc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32644
    mov r14,r4
    bra LAB_ce32646
    mov 0x04,r5

LAB_ce32644:
    mov 0x07,r5

LAB_ce32646:
    lds.l @r15+,PR
    mov.l @(PTR_ce32700,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3264e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32654:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce326fc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce326e0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3269c
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x2F,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce326e0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32704,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce326dc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce32688
    mov r14,r4
    bra LAB_ce3268a
    mov 0x02,r5

LAB_ce32688:
    mov 0x03,r5

LAB_ce3268a:
    mov.l @(PTR_ce32700,pc),r2
    jsr @r2
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce32708,pc),r3
    mov 0x00,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3269c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce326a2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce326fc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce326bc
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3270c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce326bc:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce326c4:
    mov r4,r3
    mov.l @(PTR_ce32710,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326d6:
    #data 0x041c
DAT_ce326d8:
    #data 0x01fc
DAT_ce326da:
    #data 0x01a1
DAT_ce326dc:
    #data 0x01a3
DAT_ce326de:
    #data 0x0140
DAT_ce326e0:
    #data 0x0141
    #align4

PTR_ce326e4:
    #data loc_8c05218a
PTR_ce326e8:
    #data loc_8c035162
PTR_ce326ec:
    #data loc_8c056de4
PTR_ce326f0:
    #data loc_8c2896b0
PTR_ce326f4:
    #data loc_8c034e8c
PTR_ce326f8:
    #data loc_8c05115a
PTR_ce326fc:
    #data loc_8c034dee
PTR_ce32700:
    #data loc_8c0c84bc
PTR_ce32704:
    #data loc_8c042008
PTR_ce32708:
    #data loc_8c074a84
PTR_ce3270c:
    #data loc_8c051648
PTR_ce32710:
    #data PTR_ce33be4

;=============================================

LAB_ce32714:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32848,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3284c,pc),r2
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
    mov 0x00,r13
    mov.w @(DAT_ce3283c,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce32850,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3283e,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32840,pc),r0
    mov 0x31,r2
    mov.l @(PTR_ce32854,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x02,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32858,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3285c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32798:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32860,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32842,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32800
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32842,pc),r0
    mov.b r3,@(r0,r14)
    add 0x62,r0
    mov.l @(PTR_ce32864,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32868,pc),r3
    mov r14,r2
    mov r15,r1
    add 0x34,r2
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce32844,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bf LAB_ce327dc
    mova @(DAT_ce3286c,pc),r0
    bra LAB_ce327e0
    fmov.s @r0,fr3

LAB_ce327dc:
    mova @(DAT_ce32870,pc),r0
    fmov.s @r0,fr3

LAB_ce327e0:
    fmov.s @r15,fr2
    mova @(DAT_ce32874,pc),r0
    mov.l @(PTR_ce32878,pc),r3
    mov 0x00,r6
    fadd fr3,fr2
    fmov.s fr2,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov.s @(r0,r15),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce32844,pc),r0
    mov.w @(r0,r14),r5
    jsr @r3
    mov r15,r4

LAB_ce32800:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32808:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32860,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32822
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3287c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32822:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3282a:
    mov r4,r3
    mov.l @(PTR_ce32880,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3283c:
    #data 0x041c
DAT_ce3283e:
    #data 0x01fc
DAT_ce32840:
    #data 0x01a1
DAT_ce32842:
    #data 0x0141
DAT_ce32844:
    #data 0x0130
    #align4

PTR_ce32848:
    #data loc_8c05218a
PTR_ce3284c:
    #data loc_8c035162
PTR_ce32850:
    #data loc_8c056de4
PTR_ce32854:
    #data loc_8c2896b0
PTR_ce32858:
    #data loc_8c034e8c
PTR_ce3285c:
    #data loc_8c05115a
PTR_ce32860:
    #data loc_8c034dee
PTR_ce32864:
    #data loc_8c073b10
PTR_ce32868:
    #data loc_8c1294c8
DAT_ce3286c:
    #data 0xc3055555
DAT_ce32870:
    #data 0x43055555
DAT_ce32874:
    #data 0x43700000
PTR_ce32878:
    #data loc_8c0cbb4c
PTR_ce3287c:
    #data loc_8c051648
PTR_ce32880:
    #data PTR_ce33bf0

;=============================================

LAB_ce32884:
    mov.w @(DAT_ce3299a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce328a2
    mov.w @(DAT_ce3299e,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3299c,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce328a2:
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    mov.l @(PTR_ce329b0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce329a0,pc),r0
    mov.l r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce329b4,pc),r2
    mov r13,r5
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
    mov 0x39,r3
    mov.w @(DAT_ce329a2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce329a4,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce329b8,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    mov 0x16,r5
    mov r13,r6
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce329bc,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce329c0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce3291a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce329a6,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce329a8,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3299a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3293c
    bra LAB_ce3293e
    mov 0x02,r3

LAB_ce3293c:
    mov 0x00,r3

LAB_ce3293e:
    mov.w @(DAT_ce329aa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce329c4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce329ac,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32992
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.b @(0x2,r14),r0
    tst r0,r0
    bf/s LAB_ce32962
    mov 0x0D,r5
    bra LAB_ce32964
    mov 0x03,r6

LAB_ce32962:
    mov 0x04,r6

LAB_ce32964:
    mov.l @(PTR_ce329c8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3299e,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce329d4,pc),r3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce329cc,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce329d0,pc),r0
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32992:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3299a:
    #data 0x0255
DAT_ce3299c:
    #data 0x00ff
DAT_ce3299e:
    #data 0x03f0
DAT_ce329a0:
    #data 0x02e4
DAT_ce329a2:
    #data 0x041c
DAT_ce329a4:
    #data 0x01fc
DAT_ce329a6:
    #data 0x03f8
DAT_ce329a8:
    #data 0x0328
DAT_ce329aa:
    #data 0x03f1
DAT_ce329ac:
    #data 0x0141
    #align4

PTR_ce329b0:
    #data loc_8c05218a
PTR_ce329b4:
    #data loc_8c035162
PTR_ce329b8:
    #data loc_8c2896b0
PTR_ce329bc:
    #data loc_8c034e8c
PTR_ce329c0:
    #data loc_8c05115a
PTR_ce329c4:
    #data loc_8c034dee
PTR_ce329c8:
    #data loc_8c02fec4
DAT_ce329cc:
    #data 0x41a00000
DAT_ce329d0:
    #data 0x43676db6
PTR_ce329d4:
    #data loc_8c050834

;=============================================

LAB_ce329d8:
    mov.w @(DAT_ce32b16,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32b18,pc),r0
    mov.l @(PTR_ce32b2c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32b1a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32a06
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32b30,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a06:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32a0c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32b2c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a26
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32b34,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32a26:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32a2e:
    mov r4,r3
    mov.l @(PTR_ce32b38,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32a40:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32b1e,pc),r0
    mov r4,r14
    mov.w @(DAT_ce32b1c,pc),r3
    add r14,r3
    mov.l r3,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32a66
    mov.w @(DAT_ce32b22,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32b20,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32a66:
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    mov.l @(PTR_ce32b3c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32b24,pc),r0
    mov.l r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32b40,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32b44,pc),r3
    mov 0x05,r5
    mov 0x01,r7
    mov 0x02,r6
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
    mov.l @r15,r3
    mov r13,r0
    nop
    mov.b r0,@(0x7,r3)
    mov 0x3D,r3
    mov.w @(DAT_ce32b26,pc),r0
    mov 0x16,r5
    mov 0x01,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32b28,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32b48,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32b4c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32b50,pc),r3
    jsr @r3
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32af4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32b16,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32b18,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32b1e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32b54
    bra LAB_ce32b56
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b16:
    #data 0x03f8
DAT_ce32b18:
    #data 0x0328
DAT_ce32b1a:
    #data 0x0141
DAT_ce32b1c:
    #data 0x02a4
DAT_ce32b1e:
    #data 0x0255
DAT_ce32b20:
    #data 0x00ff
DAT_ce32b22:
    #data 0x03f0
DAT_ce32b24:
    #data 0x02e4
DAT_ce32b26:
    #data 0x041c
DAT_ce32b28:
    #data 0x01fc
    #align4

PTR_ce32b2c:
    #data loc_8c034dee
PTR_ce32b30:
    #data loc_8c02fd26
PTR_ce32b34:
    #data loc_8c051648
PTR_ce32b38:
    #data PTR_ce33c00
PTR_ce32b3c:
    #data loc_8c05218a
PTR_ce32b40:
    #data loc_8c035162
PTR_ce32b44:
    #data loc_8c03544c
PTR_ce32b48:
    #data loc_8c2896b0
PTR_ce32b4c:
    #data loc_8c034e8c
PTR_ce32b50:
    #data loc_8c05115a

;=============================================

LAB_ce32b54:
    mov 0x00,r3

LAB_ce32b56:
    mov.w @(DAT_ce32c6e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32c7c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32c70,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32baa
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.b @(0x2,r14),r0
    tst r0,r0
    bf/s LAB_ce32b7a
    mov 0x0D,r5
    bra LAB_ce32b7c
    mov 0x03,r6

LAB_ce32b7a:
    mov 0x04,r6

LAB_ce32b7c:
    mov.l @(PTR_ce32c80,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32c72,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32c8c,pc),r3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32c84,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32c88,pc),r0
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32baa:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32bb2:
    mov.w @(DAT_ce32c74,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32c76,pc),r0
    mov.l @(PTR_ce32c7c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32c78,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32be4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32c90,pc),r3
    mov 0x0A,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32be4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32bea:
    mov.w @(DAT_ce32c74,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32c76,pc),r0
    mov.l @(PTR_ce32c7c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32c70,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32c2c
    mov.b @(0x6,r14),r0
    mov 0x2F,r5
    mov.l @(PTR_ce32c94,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.w r0,@(0x1c,r14)
    mov 0x01,r0
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32c98,pc),r2
    mov 0x02,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32c2c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c32:
    mov.w @(DAT_ce32c74,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32c76,pc),r0
    mov.l @(PTR_ce32c7c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce338fa
    mov r14,r4
    tst r0,r0
    bf LAB_ce32c66
    mov.w @(DAT_ce32c7a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x04,r0
    bt LAB_ce32c66
    mov.w @(DAT_ce32c7a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bf LAB_ce32c9c

LAB_ce32c66:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    bra LAB_ce32cb2
    mov.b r0,@(0x6,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c6e:
    #data 0x03f1
DAT_ce32c70:
    #data 0x0141
DAT_ce32c72:
    #data 0x03f0
DAT_ce32c74:
    #data 0x03f8
DAT_ce32c76:
    #data 0x0328
DAT_ce32c78:
    #data 0x0140
DAT_ce32c7a:
    #data 0x0255
    #align4

PTR_ce32c7c:
    #data loc_8c034dee
PTR_ce32c80:
    #data loc_8c02fec4
DAT_ce32c84:
    #data 0xc1c80000
DAT_ce32c88:
    #data 0x43654924
PTR_ce32c8c:
    #data loc_8c050834
PTR_ce32c90:
    #data loc_8c0c84ea
PTR_ce32c94:
    #data loc_8c042008
PTR_ce32c98:
    #data loc_8c0c84bc

;=============================================

LAB_ce32c9c:
    mov.w @(DAT_ce32d82,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bt LAB_ce32cb2
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32d88,pc),r3
    add 0x02,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32cb2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32cb8:
    mov.w @(DAT_ce32d84,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32d86,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32d82,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32cd8
    mov.l @(PTR_ce32d8c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32cd8:
    bsr FUN_ce32d16
    mov r14,r4
    cmp/pz r0
    bt LAB_ce32cee
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32d88,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32cee:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32cf4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32d8c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32d0e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32d90,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32d0e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce32d16:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce32d32
    bra LAB_ce32d64
    mov 0x00,r0

LAB_ce32d32:
    mov.l @(PTR_ce32d98,pc),r12
    mov.l @(PTR_ce32d94,pc),r11

LAB_ce32d36:
    mov.w @(0x1c,r14),r0
    shll r0
    mov.b @(r0,r12),r13
    exts.b r13,r0
    cmp/eq 0xFF,r0
    bt LAB_ce32d62
    mov.w @(0x1c,r14),r0
    mov r13,r5
    mov r0,r6
    jsr @r11
    mov r14,r4
    mov.w @(0x1c,r14),r0
    shll r0
    add r12,r0
    mov.b @(0x1,r0),r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce32d36

LAB_ce32d62:
    exts.b r13,r0

LAB_ce32d64:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32d70:
    mov r4,r3
    mov.l @(PTR_ce32d9c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d82:
    #data 0x0141
DAT_ce32d84:
    #data 0x03f8
DAT_ce32d86:
    #data 0x0328
    #align4

PTR_ce32d88:
    #data loc_8c02fd26
PTR_ce32d8c:
    #data loc_8c034dee
PTR_ce32d90:
    #data loc_8c051648
PTR_ce32d94:
    #data loc_8c0746f8
PTR_ce32d98:
    #data DAT_ce33c1c
PTR_ce32d9c:
    #data PTR_ce33c70

;=============================================

LAB_ce32da0:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce32ec0,pc),r3
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
    mov.w @(DAT_ce32eb4,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32eb6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ec4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32ec8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32eb8,pc),r0
    mov 0x43,r2
    mov.l @(PTR_ce32ecc,pc),r3
    mov 0x07,r6
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
    mov.l @(PTR_ce32ed0,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32e16:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32ed4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32e36
    mov.l @(PTR_ce32ed8,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e36:
    mov.w @(DAT_ce32eba,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32e58
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32edc,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32ee0,pc),r0
    mov.l @(PTR_ce32ee4,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32e58:
    mov.w @(DAT_ce32ebc,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32e9a
    mova @(DAT_ce32ee8,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32ebe,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32e80
    mov.w @(DAT_ce32ebc,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce32e92
    fmac fr0,fr3,fr2

LAB_ce32e80:
    mov.w @(DAT_ce32ebc,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce32e92:
    fmov fr2,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce32ebc,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce32e9a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ea2:
    mov r4,r3
    mov.l @(PTR_ce32eec,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32eb4:
    #data 0x01f9
DAT_ce32eb6:
    #data 0x041c
DAT_ce32eb8:
    #data 0x01a1
DAT_ce32eba:
    #data 0x0141
DAT_ce32ebc:
    #data 0x0150
DAT_ce32ebe:
    #data 0x0130
    #align4

PTR_ce32ec0:
    #data loc_8c035162
PTR_ce32ec4:
    #data loc_8c05218a
PTR_ce32ec8:
    #data loc_8c05115a
PTR_ce32ecc:
    #data loc_8c2896b0
PTR_ce32ed0:
    #data loc_8c034e8c
PTR_ce32ed4:
    #data loc_8c034dee
PTR_ce32ed8:
    #data loc_8c051648
DAT_ce32edc:
    #data 0xc2055555
DAT_ce32ee0:
    #data 0x42cdb6db
PTR_ce32ee4:
    #data loc_8c050ea4
DAT_ce32ee8:
    #data 0x3fd55555
PTR_ce32eec:
    #data PTR_ce33c78

;=============================================

LAB_ce32ef0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32ff8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ffc,pc),r2
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
    mov 0x00,r4
    mov.w @(DAT_ce32fec,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce33000,pc),r3
    mov 0x02,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32fee,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce32f3e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33004,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32f58
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33008,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32f58:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32f60:
    mov r4,r3
    mov.l @(PTR_ce3300c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32f72:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32ff0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32ffc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32ff2,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32f9a
    mova @(DAT_ce33010,pc),r0
    bra LAB_ce32f9e
    fmov.s @r0,fr3

LAB_ce32f9a:
    mova @(DAT_ce33014,pc),r0
    fmov.s @r0,fr3

LAB_ce32f9e:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x32,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33018,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3301c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32ff4,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33020,pc),r3
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
    mov.l @(PTR_ce33000,pc),r2
    mov r4,r6
    mov 0x14,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32fec:
    #data 0x041c
DAT_ce32fee:
    #data 0x01fc
DAT_ce32ff0:
    #data 0x01f9
DAT_ce32ff2:
    #data 0x0130
DAT_ce32ff4:
    #data 0x01a1
    #align4

PTR_ce32ff8:
    #data loc_8c05218a
PTR_ce32ffc:
    #data loc_8c035162
PTR_ce33000:
    #data loc_8c034e8c
PTR_ce33004:
    #data loc_8c034dee
PTR_ce33008:
    #data loc_8c051648
PTR_ce3300c:
    #data PTR_ce33c80
DAT_ce33010:
    #data 0xc1f00000
DAT_ce33014:
    #data 0x41f00000
DAT_ce33018:
    #data 0x3e892492
DAT_ce3301c:
    #data 0xbf4db6db
PTR_ce33020:
    #data loc_8c2896b0

;=============================================

LAB_ce33024:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3317c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce33180,pc),r3
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
    bt LAB_ce3308c
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce33184,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33188,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3308c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33092:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3317c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce330ac
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3318c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce330ac:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce330b4:
    mov r4,r3
    mov.l @(PTR_ce33190,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce330c6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33194,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33198,pc),r2
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
    mov 0x00,r4
    mov.w @(DAT_ce33170,pc),r0
    mov 0x0F,r5
    mov.l @(PTR_ce33184,pc),r3
    mov 0x02,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33172,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce33114:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3317c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33174,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33148
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3319c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33148
    mov r0,r5
    mov.w @(DAT_ce33178,pc),r0
    mov r14,r4
    mov.w @(DAT_ce33176,pc),r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce331a0,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33148:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3314e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3317c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33168
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce331a4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33168:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33170:
    #data 0x041c
DAT_ce33172:
    #data 0x01fc
DAT_ce33174:
    #data 0x0141
DAT_ce33176:
    #data 0x00c2
DAT_ce33178:
    #data 0x01f7
    #align4

PTR_ce3317c:
    #data loc_8c034dee
PTR_ce33180:
    #data loc_8c052ce2
PTR_ce33184:
    #data loc_8c034e8c
PTR_ce33188:
    #data loc_8c0511b4
PTR_ce3318c:
    #data loc_8c051854
PTR_ce33190:
    #data PTR_ce33c8c
PTR_ce33194:
    #data loc_8c05218a
PTR_ce33198:
    #data loc_8c035162
PTR_ce3319c:
    #data loc_8c045790
PTR_ce331a0:
    #data loc_8c0522e0
PTR_ce331a4:
    #data loc_8c051648

;=============================================

LAB_ce331a8:
    mov r4,r3
    mov.l @(PTR_ce33290,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce331ba:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33294,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33298,pc),r2
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
    mov 0x00,r4
    mov.w @(DAT_ce3328a,pc),r0
    mov 0x3B,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3328c,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3329c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    mov 0x15,r5
    mov 0x08,r6
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce332a0,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3322c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce332a4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3328e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33250
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce332a8,pc),r3
    mov 0x10,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33250:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33256:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce332a4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33270
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce332ac,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33270:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33278:
    mov r4,r3
    mov.l @(PTR_ce332b0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3328a:
    #data 0x041c
DAT_ce3328c:
    #data 0x01fc
DAT_ce3328e:
    #data 0x0141
    #align4

PTR_ce33290:
    #data PTR_ce33c98
PTR_ce33294:
    #data loc_8c05218a
PTR_ce33298:
    #data loc_8c035162
PTR_ce3329c:
    #data loc_8c2896b0
PTR_ce332a0:
    #data loc_8c034e8c
PTR_ce332a4:
    #data loc_8c034dee
PTR_ce332a8:
    #data loc_8c0c84bc
PTR_ce332ac:
    #data loc_8c051648
PTR_ce332b0:
    #data PTR_ce33ca4

;=============================================

LAB_ce332b4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce333c8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce333cc,pc),r2
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
    mov 0x00,r4
    mov.w @(DAT_ce333bc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce333be,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov 0x3C,r3
    mov.w @(DAT_ce333c0,pc),r0
    mov 0x15,r5
    mov 0x09,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce333d0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce333d4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce33330:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce333d8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3334e
    mov.l @(PTR_ce333cc,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce333dc,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3334e:
    mov.w @(DAT_ce333c2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3339e
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce33376
    mov.l @(PTR_ce333e0,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce333e0,pc),r3
    mov 0x03,r5
    jsr @r3
    mov r14,r4
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)

LAB_ce33376:
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst 0x02,r0
    bt LAB_ce3338e
    lds.l @r15+,PR
    mov.l @(PTR_ce333cc,pc),r2
    mov 0x00,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3338e:
    lds.l @r15+,PR
    mov 0x03,r6
    mov.l @(PTR_ce333e4,pc),r2
    mov r14,r4
    mov 0x01,r7
    mov r6,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3339e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce333a4:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce333c4,pc),r1
    mov.l @(PTR_ce333e8,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce333bc:
    #data 0x041c
DAT_ce333be:
    #data 0x01fc
DAT_ce333c0:
    #data 0x01a1
DAT_ce333c2:
    #data 0x0141
DAT_ce333c4:
    #data 0x01f9
    #align4

PTR_ce333c8:
    #data loc_8c05218a
PTR_ce333cc:
    #data loc_8c035162
PTR_ce333d0:
    #data loc_8c2896b0
PTR_ce333d4:
    #data loc_8c034e8c
PTR_ce333d8:
    #data loc_8c034dee
PTR_ce333dc:
    #data loc_8c051648
PTR_ce333e0:
    #data loc_8c07382c
PTR_ce333e4:
    #data loc_8c03544c
PTR_ce333e8:
    #data PTR_ce33cac

;=============================================

LAB_ce333ec:
    mov.w @(DAT_ce334f4,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce334f6,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33438
    mov.w @(DAT_ce334f8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33438
    mov.w @(DAT_ce334fa,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33438
    mov.l @(PTR_ce33504,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33438
    mov r0,r4
    mov.w @(DAT_ce334fc,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33438:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33440:
    rts
    mov 0x00,r0

LAB_ce33444:
    mov.w @(DAT_ce334f4,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce334fe,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce3349c
    mov.w @(DAT_ce334f8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3349c
    mov.w @(DAT_ce334fa,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3349c
    mova @(DAT_ce33508,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce3349c
    mov.l @(PTR_ce33504,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3349c
    mov r0,r4
    mov.w @(DAT_ce334fc,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3349c:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce334a4:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce334fc,pc),r1
    mov.l @(PTR_ce3350c,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce334bc:
    mov.l r14,@-r15
    mov 0x22,r0
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt/s LAB_ce334e0
    mov r14,r4
    mov.w @(DAT_ce33500,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33502,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce334e0:
    mov.l @(PTR_ce33510,pc),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce33514,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x0F,r5
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce334f4:
    #data 0x01fa
DAT_ce334f6:
    #data 0x0c00
DAT_ce334f8:
    #data 0x01fe
DAT_ce334fa:
    #data 0x01a3
DAT_ce334fc:
    #data 0x01f7
DAT_ce334fe:
    #data 0x1c00
DAT_ce33500:
    #data 0x01d2
DAT_ce33502:
    #data 0x0130
    #align4

PTR_ce33504:
    #data loc_8c045790
DAT_ce33508:
    #data 0x43092492
PTR_ce3350c:
    #data PTR_ce33cbc
PTR_ce33510:
    #data loc_8c056f2a
PTR_ce33514:
    #data loc_8c034e8c

;=============================================

LAB_ce33518:
    mov.l r14,@-r15
    mov 0x22,r0
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt/s LAB_ce3353c
    fldi0 fr4
    mov.w @(DAT_ce3365c,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3365e,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce3353c:
    mov 0x5C,r0
    fldi1 fr3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fadd fr3,fr3
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    mov.l @(PTR_ce33670,pc),r3
    fmov.s @(r0,r14),fr2
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce3366c,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33674,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x0F,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3356c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mova @(DAT_ce33678,pc),r0
    mov.l @(PTR_ce33680,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce3367c,pc),r0
    mov r4,r14
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33660,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33674,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x03,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce335a2:
    mov.w @(DAT_ce33662,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33684,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce335c0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33688,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce335e0
    mov.l @(PTR_ce3368c,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce335e0:
    mov.w @(DAT_ce33664,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce3360a
    mov.w @(DAT_ce33664,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce33680,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mova @(DAT_ce33678,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3367c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33660,pc),r0
    mov 0x0A,r2
    mov.b r2,@(r0,r14)

LAB_ce3360a:
    mov.w @(DAT_ce33666,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce33642
    mov.w @(DAT_ce33666,pc),r0
    mov 0x00,r2
    mov.w @(DAT_ce3365c,pc),r1
    mov 0x02,r3
    mov.b r2,@(r0,r14)
    mov 0x20,r2
    mov.w @(DAT_ce33668,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x1E,r0
    mov.b @(r0,r14),r0
    add r4,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce3366a,pc),r0
    mov.b r3,@(r0,r4)
    add 0xA8,r0
    mov.b r2,@(r0,r4)
    add 0x55,r0
    mov.l @(PTR_ce33690,pc),r2
    mov 0x01,r3
    jsr @r2
    mov.b r3,@(r0,r4)

LAB_ce33642:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3364a:
    mov r4,r3
    mov.l @(PTR_ce33694,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3365c:
    #data 0x01d2
DAT_ce3365e:
    #data 0x0130
DAT_ce33660:
    #data 0x01a0
DAT_ce33662:
    #data 0x01ea
DAT_ce33664:
    #data 0x0140
DAT_ce33666:
    #data 0x0141
DAT_ce33668:
    #data 0x01c8
DAT_ce3366a:
    #data 0x01f9
    #align4

DAT_ce3366c:
    #data 0xbf4db6db
PTR_ce33670:
    #data loc_8c056f2a
PTR_ce33674:
    #data loc_8c034e8c
DAT_ce33678:
    #data 0xc2fd5555
DAT_ce3367c:
    #data 0x42b40000
PTR_ce33680:
    #data loc_8c103660
PTR_ce33684:
    #data PTR_ce33ccc
PTR_ce33688:
    #data loc_8c034dee
PTR_ce3368c:
    #data loc_8c051648
PTR_ce33690:
    #data loc_8c02fd26
PTR_ce33694:
    #data PTR_ce33cdc

;=============================================

LAB_ce33698:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce337c8,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce337cc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce337b6,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce336d4
    mov.w @(DAT_ce337b6,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce337d8,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mova @(DAT_ce337d0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce337d4,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce337b8,pc),r0
    mov 0x0A,r2
    mov.b r2,@(r0,r14)

LAB_ce336d4:
    mov.w @(DAT_ce337ba,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33716
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x02,r2
    mov.w @(DAT_ce337be,pc),r1
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce337bc,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0x03,r0
    mov.b r2,@(r0,r4)
    add 0xA8,r0
    mov 0x21,r3
    mov.b r3,@(r0,r4)
    add 0x31,r0
    mov.b @(r0,r14),r0
    add r4,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce337c0,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33716
    mov.l @(PTR_ce337dc,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce33716:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3371e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce337c8,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce337cc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3373e
    lds.l @r15+,PR
    mov.l @(PTR_ce337dc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3373e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33744:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce337cc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3375e
    lds.l @r15+,PR
    mov.l @(PTR_ce337e0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3375e:
    mov.w @(DAT_ce337ba,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33790
    mov 0x00,r3
    mov.w @(DAT_ce337be,pc),r1
    mov.b r3,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce337bc,pc),r0
    mov 0x22,r2
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x1E,r0
    mov.b @(r0,r14),r0
    add r4,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce337c2,pc),r0
    mov.b r3,@(r0,r4)
    add 0xA8,r0
    mov.b r2,@(r0,r4)
    add 0x55,r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)

LAB_ce33790:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33796:
    mov.w @(DAT_ce337c4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    and 0x3F,r0
    cmp/eq 0x03,r0
    bt LAB_ce337b2
    mov.w @(DAT_ce337bc,pc),r0
    mov r14,r5
    mov.l @(PTR_ce337e4,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce337b2:
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce337b6:
    #data 0x0140
DAT_ce337b8:
    #data 0x01a0
DAT_ce337ba:
    #data 0x0141
DAT_ce337bc:
    #data 0x01c8
DAT_ce337be:
    #data 0x01d2
DAT_ce337c0:
    #data 0x0150
DAT_ce337c2:
    #data 0x01f9
DAT_ce337c4:
    #data 0x01f7
    #align4

PTR_ce337c8:
    #data FUN_ce3248c
PTR_ce337cc:
    #data loc_8c034dee
DAT_ce337d0:
    #data 0xc2cb5555
DAT_ce337d4:
    #data 0x42f89249
PTR_ce337d8:
    #data loc_8c103660
PTR_ce337dc:
    #data loc_8c05176e
PTR_ce337e0:
    #data loc_8c051648
PTR_ce337e4:
    #data loc_8c04cc1c

;=============================================

LAB_ce337e8:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce338b8,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33806
    mov 0x04,r5
    cmp/eq 0x01,r0
    bt LAB_ce3380e
    cmp/eq 0x02,r0
    bt LAB_ce3380e
    bra LAB_ce33812
    nop

LAB_ce33806:
    mov.w @(DAT_ce338ba,pc),r0
    mov 0x05,r3
    bra LAB_ce33812
    mov.b r3,@(r0,r4)

LAB_ce3380e:
    mov.w @(DAT_ce338ba,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33812:
    mov.l @(PTR_ce338bc,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33818:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce338b8,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33836
    mov 0x04,r5
    cmp/eq 0x01,r0
    bt LAB_ce3383e
    cmp/eq 0x02,r0
    bt LAB_ce3383e
    bra LAB_ce33842
    nop

LAB_ce33836:
    mov.w @(DAT_ce338ba,pc),r0
    mov 0x05,r3
    bra LAB_ce33842
    mov.b r3,@(r0,r4)

LAB_ce3383e:
    mov.w @(DAT_ce338ba,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33842:
    mov.l @(PTR_ce338bc,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33848:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce338b8,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33868
    cmp/eq 0x01,r0
    bt LAB_ce33870
    cmp/eq 0x02,r0
    bt LAB_ce33878
    bra LAB_ce3387e
    nop

LAB_ce33868:
    mov.w @(DAT_ce338ba,pc),r0
    mov 0x07,r3
    bra LAB_ce3387e
    mov.b r3,@(r0,r4)

LAB_ce33870:
    mov.w @(DAT_ce338ba,pc),r0
    mov 0x08,r1
    bra LAB_ce3387e
    mov.b r1,@(r0,r4)

LAB_ce33878:
    mov.w @(DAT_ce338ba,pc),r0
    mov 0x09,r2
    mov.b r2,@(r0,r4)

LAB_ce3387e:
    mov.l @(PTR_ce338bc,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce33884:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce338b8,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce338a4
    cmp/eq 0x01,r0
    bt LAB_ce338b0
    cmp/eq 0x02,r0
    bt LAB_ce338c0
    bra LAB_ce338c6
    nop

LAB_ce338a4:
    mov.w @(DAT_ce338ba,pc),r0
    mov 0x01,r3
    mov.b r5,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce338c6
    mov.b r3,@(r0,r4)

LAB_ce338b0:
    mov.w @(DAT_ce338ba,pc),r0
    mov 0x08,r1
    bra LAB_ce338c6
    mov.b r1,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce338b8:
    #data 0x04c9
DAT_ce338ba:
    #data 0x01e9
    #align4

PTR_ce338bc:
    #data loc_8c0530d8

;=============================================

LAB_ce338c0:
    mov.w @(DAT_ce33968,pc),r0
    mov 0x09,r2
    mov.b r2,@(r0,r4)

LAB_ce338c6:
    mov.l @(PTR_ce3397c,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce338cc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3396a,pc),r14
    mov 0x00,r5
    mov.w @(DAT_ce3396c,pc),r6
    add r4,r14
    mov.l r14,@(0x8,r15)
    mov.l @r14,r3
    mov.l r3,@(0x4,r15)
    mov.b @(0x4,r14),r0
    mov.l @(PTR_ce33980,pc),r3
    mov.b r0,@r15
    jsr @r3
    mov.l @(0x8,r15),r4
    mov.l @(0x4,r15),r2
    mov.l r2,@r14
    mov.b @r15,r0
    mov.b r0,@(0x4,r14)
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce338fa:
    mov.w @(DAT_ce3396e,pc),r0
    mov.b @(r0,r4),r0
    tst 0x80,r0
    bt LAB_ce3395e
    mov.w @(DAT_ce33970,pc),r0
    mov.l @(r0,r4),r2
    mov.b @(0x3,r2),r0
    tst r0,r0
    bf LAB_ce3395e
    mov.w @(DAT_ce3396e,pc),r0
    mov.b @(r0,r4),r0
    tst 0x11,r0
    bf LAB_ce3395e
    mov.w @(DAT_ce33970,pc),r0
    mov.l @(r0,r4),r2
    add 0x04,r0
    mov.l @(r0,r2),r3
    cmp/eq r3,r4
    bf LAB_ce3395e
    mov.w @(DAT_ce33970,pc),r0
    mov.l @(r0,r4),r5
    mov.w @(DAT_ce33972,pc),r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bf LAB_ce3395e
    mov.w @(DAT_ce33974,pc),r0
    mov.b @(r0,r5),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce3395e
    mov.w @(DAT_ce33976,pc),r0
    mov.w @(r0,r5),r3
    tst r3,r3
    bt LAB_ce3395e
    mov.b @(0x5,r5),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3395e
    mov.w @(DAT_ce33978,pc),r0
    mov.w @(DAT_ce3397a,pc),r2
    mov.b @(r0,r4),r3
    mov.l @(PTR_ce33984,pc),r4
    extu.b r3,r3
    mulu.w r2,r3
    sts MACL,r3
    add r3,r4
    mov.b @(0x5,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33962

LAB_ce3395e:
    rts
    mov 0x00,r0

LAB_ce33962:
    mov 0x01,r0
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33968:
    #data 0x01e9
DAT_ce3396a:
    #data 0x02a4
DAT_ce3396c:
    #data 0x0080
DAT_ce3396e:
    #data 0x019e
DAT_ce33970:
    #data 0x01b0
DAT_ce33972:
    #data 0x0411
DAT_ce33974:
    #data 0x01f9
DAT_ce33976:
    #data 0x0420
DAT_ce33978:
    #data 0x01a4
DAT_ce3397a:
    #data 0x05a4
    #align4

PTR_ce3397c:
    #data loc_8c0530d8
PTR_ce33980:
    #data loc_8c129728
PTR_ce33984:
    #data loc_8c268340
DAT_ce33988:
    #data 0x0201
    #data 0x0201
DAT_ce3398c:
    #data 0xffff
    #data 0xffff
DAT_ce33990:
    #data 0xffff
    #data 0xffff
DAT_ce33994:
    #data 0x0201
    #data 0x0201
DAT_ce33998:
    #data 0xffff
    #data 0xffff
DAT_ce3399c:
    #data 0xffff
    #data 0xffff
DAT_ce339a0:
    #data 0x0201
    #data 0x0201
DAT_ce339a4:
    #data 0xffff
    #data 0xffff
DAT_ce339a8:
    #data 0xffff
    #data 0xffff
DAT_ce339ac:
    #data 0x0201
    #data 0x0201
DAT_ce339b0:
    #data 0xffff
    #data 0xffff
DAT_ce339b4:
    #data 0xffff
    #data 0xffff
DAT_ce339b8:
    #data 0x0201
    #data 0x0200
DAT_ce339bc:
    #data 0x02ff
    #data 0x0201
DAT_ce339c0:
    #data 0xffff
    #data 0x02ff
DAT_ce339c4:
    #data 0x0201
    #data 0x0201
DAT_ce339c8:
    #data 0x02ff
    #data 0x02ff
DAT_ce339cc:
    #data 0xffff
    #data 0xffff
DAT_ce339d0:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce339e0:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce339f0:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce33a00:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce33a10:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
    #align4

PTR_ce33a20:
    #data LAB_ce303b2
PTR_ce33a24:
    #data LAB_ce3001c
PTR_ce33a28:
    #data LAB_ce303b6
PTR_ce33a2c:
    #data LAB_ce309b6
PTR_ce33a30:
    #data LAB_ce31244
PTR_ce33a34:
    #data LAB_ce314fc
PTR_ce33a38:
    #data LAB_ce316a0
PTR_ce33a3c:
    #data LAB_ce31836
PTR_ce33a40:
    #data LAB_ce31d9c
PTR_ce33a44:
    #data LAB_ce333a4
PTR_ce33a48:
    #data LAB_ce334a4
PTR_ce33a4c:
    #data LAB_ce335a2
PTR_ce33a50:
    #data LAB_ce33796
PTR_ce33a54:
    #data LAB_ce30320
PTR_ce33a58:
    #data LAB_ce32f60
PTR_ce33a5c:
    #data LAB_ce310c2
PTR_ce33a60:
    #data LAB_ce337e8
PTR_ce33a64:
    #data LAB_ce33818
PTR_ce33a68:
    #data LAB_ce33848
PTR_ce33a6c:
    #data LAB_ce33884
    #data 0x00000000
PTR_ce33a74:
    #data LAB_ce31372
    #data 0x00000000
PTR_ce33a7c:
    #data LAB_ce338cc
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce33a90:
    #data LAB_ce303ca
PTR_ce33a94:
    #data LAB_ce3071c
PTR_ce33a98:
    #data FUN_ce30754
PTR_ce33a9c:
    #data LAB_ce303ca
PTR_ce33aa0:
    #data LAB_ce30a0a
PTR_ce33aa4:
    #data LAB_ce30fea
PTR_ce33aa8:
    #data LAB_ce30fd4
PTR_ce33aac:
    #data LAB_ce309fc
PTR_ce33ab0:
    #data LAB_ce31104
PTR_ce33ab4:
    #data LAB_ce3115a
PTR_ce33ab8:
    #data LAB_ce311d4
PTR_ce33abc:
    #data LAB_ce31288
PTR_ce33ac0:
    #data LAB_ce312c0
PTR_ce33ac4:
    #data LAB_ce31322
PTR_ce33ac8:
    #data LAB_ce31384
PTR_ce33acc:
    #data LAB_ce313e8
PTR_ce33ad0:
    #data LAB_ce31490
PTR_ce33ad4:
    #data LAB_ce31538
PTR_ce33ad8:
    #data LAB_ce31580
PTR_ce33adc:
    #data LAB_ce3164c
PTR_ce33ae0:
    #data LAB_ce316b2
PTR_ce33ae4:
    #data LAB_ce3171a
PTR_ce33ae8:
    #data LAB_ce317b8
PTR_ce33aec:
    #data LAB_ce31816
PTR_ce33af0:
    #data LAB_ce31848
PTR_ce33af4:
    #data LAB_ce31866
PTR_ce33af8:
    #data LAB_ce31892
PTR_ce33afc:
    #data LAB_ce31b7c
PTR_ce33b00:
    #data LAB_ce31892
PTR_ce33b04:
    #data LAB_ce31b7c
PTR_ce33b08:
    #data LAB_ce31b7c
PTR_ce33b0c:
    #data LAB_ce31892
PTR_ce33b10:
    #data LAB_ce31892
PTR_ce33b14:
    #data LAB_ce31892
PTR_ce33b18:
    #data LAB_ce318f4
PTR_ce33b1c:
    #data LAB_ce318f4
PTR_ce33b20:
    #data LAB_ce318f4
PTR_ce33b24:
    #data LAB_ce318a4
PTR_ce33b28:
    #data LAB_ce318ee
PTR_ce33b2c:
    #data LAB_ce31938
PTR_ce33b30:
    #data LAB_ce319de
PTR_ce33b34:
    #data LAB_ce31a7a
PTR_ce33b38:
    #data LAB_ce31ab4
PTR_ce33b3c:
    #data LAB_ce31b1e
PTR_ce33b40:
    #data LAB_ce31b42
PTR_ce33b44:
    #data LAB_ce31b74
PTR_ce33b48:
    #data LAB_ce31ba8
PTR_ce33b4c:
    #data FUN_ce31c44
PTR_ce33b50:
    #data LAB_ce31caa
DAT_ce33b54:
    #data 0x0005
    #data 0x0005
    #data 0x0005
    #data 0x0006
    #data 0x0006
    #data 0x0007
    #data 0x0007
    #data 0x0007
    #data 0x0008
    #data 0x0008
    #data 0x0008
    #data 0x0008
    #data 0x0009
    #data 0x000a
    #data 0x000a
    #data 0x000a
    #align4

PTR_ce33b74:
    #data LAB_ce31db0
PTR_ce33b78:
    #data LAB_ce32572
PTR_ce33b7c:
    #data LAB_ce326c4
PTR_ce33b80:
    #data LAB_ce32ea2
PTR_ce33b84:
    #data LAB_ce3282a
PTR_ce33b88:
    #data LAB_ce32a2e
PTR_ce33b8c:
    #data LAB_ce32d70
PTR_ce33b90:
    #data LAB_ce330b4
PTR_ce33b94:
    #data LAB_ce331a8
PTR_ce33b98:
    #data LAB_ce33278
DAT_ce33b9c:
    #data 0x000c
    #data 0x0018
    #data 0x000c
    #data 0x0018
    #align4

PTR_ce33ba4:
    #data LAB_ce31dc2
PTR_ce33ba8:
    #data LAB_ce32136
PTR_ce33bac:
    #data LAB_ce31df8
PTR_ce33bb0:
    #data LAB_ce31eaa
PTR_ce33bb4:
    #data LAB_ce31f40
PTR_ce33bb8:
    #data LAB_ce31fd0
PTR_ce33bbc:
    #data LAB_ce3208c
PTR_ce33bc0:
    #data LAB_ce32164
PTR_ce33bc4:
    #data LAB_ce321f6
PTR_ce33bc8:
    #data LAB_ce32298
PTR_ce33bcc:
    #data LAB_ce32328
PTR_ce33bd0:
    #data LAB_ce323ee
PTR_ce33bd4:
    #data LAB_ce32598
PTR_ce33bd8:
    #data LAB_ce3261e
PTR_ce33bdc:
    #data LAB_ce32654
PTR_ce33be0:
    #data FUN_ce326a2
PTR_ce33be4:
    #data LAB_ce32714
PTR_ce33be8:
    #data LAB_ce32798
PTR_ce33bec:
    #data FUN_ce32808
PTR_ce33bf0:
    #data LAB_ce32884
PTR_ce33bf4:
    #data LAB_ce3291a
PTR_ce33bf8:
    #data LAB_ce329d8
PTR_ce33bfc:
    #data FUN_ce32a0c
PTR_ce33c00:
    #data LAB_ce32a40
PTR_ce33c04:
    #data LAB_ce32af4
PTR_ce33c08:
    #data LAB_ce32bb2
PTR_ce33c0c:
    #data LAB_ce32bea
PTR_ce33c10:
    #data LAB_ce32c32
PTR_ce33c14:
    #data LAB_ce32cb8
PTR_ce33c18:
    #data FUN_ce32cf4
DAT_ce33c1c:
    #data 0x02
DAT_ce33c1d:
    #data 0x02
    #data 0x020d
    #data 0x0205
    #data 0x0206
    #data 0x0202
    #data 0x0203
    #data 0x0205
    #data 0x020b
    #data 0x0203
    #data 0x0204
    #data 0x0200
    #data 0x0204
    #data 0x020c
    #data 0x020d
    #data 0x0201
    #data 0x0202
    #data 0x0204
    #data 0x0205
    #data 0x0200
    #data 0x0201
    #data 0x0203
    #data 0x020a
    #data 0x0200
    #data 0x0203
    #data 0x0204
    #data 0x0201
    #data 0x0202
    #data 0x0206
    #data 0x0207
    #data 0x0208
    #data 0x0209
    #data 0x020a
    #data 0x0200
    #data 0x020e
    #data 0x0201
    #data 0x0202
    #data 0x0200
    #data 0x0204
    #data 0x0205
    #data 0x020c
    #data 0x00ff
    #align4

PTR_ce33c70:
    #data LAB_ce32da0
PTR_ce33c74:
    #data LAB_ce32e16
PTR_ce33c78:
    #data LAB_ce32ef0
PTR_ce33c7c:
    #data LAB_ce32f3e
PTR_ce33c80:
    #data LAB_ce32f72
PTR_ce33c84:
    #data LAB_ce33024
PTR_ce33c88:
    #data FUN_ce33092
PTR_ce33c8c:
    #data LAB_ce330c6
PTR_ce33c90:
    #data LAB_ce33114
PTR_ce33c94:
    #data FUN_ce3314e
PTR_ce33c98:
    #data LAB_ce331ba
PTR_ce33c9c:
    #data LAB_ce3322c
PTR_ce33ca0:
    #data FUN_ce33256
PTR_ce33ca4:
    #data LAB_ce332b4
PTR_ce33ca8:
    #data LAB_ce33330
PTR_ce33cac:
    #data LAB_ce333ec
PTR_ce33cb0:
    #data LAB_ce33440
PTR_ce33cb4:
    #data LAB_ce33444
PTR_ce33cb8:
    #data LAB_ce333ec
PTR_ce33cbc:
    #data LAB_ce334bc
PTR_ce33cc0:
    #data LAB_ce33518
PTR_ce33cc4:
    #data LAB_ce3356c
PTR_ce33cc8:
    #data LAB_ce334bc
PTR_ce33ccc:
    #data LAB_ce335c0
PTR_ce33cd0:
    #data LAB_ce3364a
PTR_ce33cd4:
    #data LAB_ce33744
PTR_ce33cd8:
    #data LAB_ce335c0
PTR_ce33cdc:
    #data LAB_ce33698
PTR_ce33ce0:
    #data LAB_ce3371e
