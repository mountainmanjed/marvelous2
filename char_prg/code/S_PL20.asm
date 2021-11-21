;╔══════════════════════════════════════════╗
;║ S_PL20 : Felicia Program                 ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c034f54 0x8C034F54
#symbol loc_8c035162 0x8C035162
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c045790 0x8C045790
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c04ce3a 0x8C04CE3A
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
#symbol loc_8c0514b8 0x8C0514B8
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c051854 0x8C051854
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c0522e0 0x8C0522E0
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
#symbol loc_8c055d54 0x8C055D54
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c0925b4 0x8C0925B4
#symbol loc_8c093210 0x8C093210
#symbol loc_8c0dfba0 0x8C0DFBA0
#symbol loc_8c0fdab6 0x8C0FDAB6
#symbol loc_8c103660 0x8C103660
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c26a524 0x8C26A524
#symbol loc_8c287ae8 0x8C287AE8
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c289636 0x8C289636
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300c6,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300c8,pc),r7
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
    mov.l @(PTR_ce300cc,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    mov.l @(PTR_ce300d0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    mov.l @(PTR_ce300d4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    mov.l @(PTR_ce300d8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce302f0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce302a0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30368
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce3025a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30214
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce3012a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce300e4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce301a8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce303b8
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce303f8
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    mov.l @(PTR_ce300dc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300e0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300c6:
    #data 0x0428
    #align4

PTR_ce300c8:
    #data PTR_ce34710
PTR_ce300cc:
    #data loc_8c054508
PTR_ce300d0:
    #data loc_8c054b34
PTR_ce300d4:
    #data loc_8c05496c
PTR_ce300d8:
    #data loc_8c054d04
PTR_ce300dc:
    #data loc_8c053e00
PTR_ce300e0:
    #data loc_8c0542e0

;=============================================

FUN_ce300e4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301fc,pc),r5
    mov.w @(DAT_ce301ee,pc),r6
    mov.l @(PTR_ce30200,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30102
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30102:
    mov.w @(DAT_ce301ee,pc),r5
    mov.l @(PTR_ce30204,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301f0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30208,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3012a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3020c,pc),r5
    mov.w @(DAT_ce301f2,pc),r6
    mov.l @(PTR_ce30200,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3015a
    mov.w @(DAT_ce301f4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30168
    mov.w @(DAT_ce301f6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30168
    mov.w @(DAT_ce301f8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30162

LAB_ce3015a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30162:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30168:
    mov.w @(DAT_ce301f2,pc),r5
    mov.l @(PTR_ce30204,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov.w @(DAT_ce301f4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30188
    bra LAB_ce3018c
    mov 0x01,r0

LAB_ce30188:
    mov r4,r0
    nop

LAB_ce3018c:
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.w @(DAT_ce301f0,pc),r0
    mov.l @(PTR_ce30208,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301a8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30210,pc),r5
    mov.w @(DAT_ce301fa,pc),r6
    mov.l @(PTR_ce30200,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301c6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301c6:
    mov.w @(DAT_ce301fa,pc),r5
    mov.l @(PTR_ce30204,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301f0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30208,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301ee:
    #data 0x036c
DAT_ce301f0:
    #data 0x01e9
DAT_ce301f2:
    #data 0x0374
DAT_ce301f4:
    #data 0x01f9
DAT_ce301f6:
    #data 0x01fc
DAT_ce301f8:
    #data 0x01d4
DAT_ce301fa:
    #data 0x037c
    #align4

PTR_ce301fc:
    #data DAT_ce3469c
PTR_ce30200:
    #data loc_8c054e58
PTR_ce30204:
    #data loc_8c055c3a
PTR_ce30208:
    #data loc_8c0530d8
PTR_ce3020c:
    #data DAT_ce3468c
PTR_ce30210:
    #data DAT_ce346ac

;=============================================

FUN_ce30214:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30324,pc),r5
    mov.w @(DAT_ce30318,pc),r6
    mov.l @(PTR_ce30328,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30232
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30232:
    mov.w @(DAT_ce30318,pc),r5
    mov.l @(PTR_ce3032c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3031a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30330,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3025a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30334,pc),r5
    mov.w @(DAT_ce3031c,pc),r6
    mov.l @(PTR_ce30328,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30278
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30278:
    mov.w @(DAT_ce3031c,pc),r5
    mov.l @(PTR_ce3032c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3031a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30330,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302a0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30338,pc),r5
    mov.w @(DAT_ce3031e,pc),r6
    mov.l @(PTR_ce30328,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302c0
    mov.w @(DAT_ce30320,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302c8

LAB_ce302c0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302c8:
    mov.w @(DAT_ce3031e,pc),r5
    mov.l @(PTR_ce3032c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3031a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30330,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302f0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3033c,pc),r5
    mov.w @(DAT_ce30322,pc),r6
    mov.l @(PTR_ce30328,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30310
    mov.w @(DAT_ce30320,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30340

LAB_ce30310:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30318:
    #data 0x0384
DAT_ce3031a:
    #data 0x01e9
DAT_ce3031c:
    #data 0x038c
DAT_ce3031e:
    #data 0x039c
DAT_ce30320:
    #data 0x040c
DAT_ce30322:
    #data 0x03a4
    #align4

PTR_ce30324:
    #data DAT_ce346bc
PTR_ce30328:
    #data loc_8c054e58
PTR_ce3032c:
    #data loc_8c055c3a
PTR_ce30330:
    #data loc_8c0530d8
PTR_ce30334:
    #data DAT_ce346cc
PTR_ce30338:
    #data DAT_ce346e0
PTR_ce3033c:
    #data DAT_ce346f0

;=============================================

LAB_ce30340:
    mov.w @(DAT_ce3045e,pc),r5
    mov.l @(PTR_ce30468,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30460,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3046c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30368:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30470,pc),r5
    mov.w @(DAT_ce30462,pc),r6
    mov.l @(PTR_ce30474,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30388
    mov.w @(DAT_ce30464,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30390

LAB_ce30388:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30390:
    mov.w @(DAT_ce30462,pc),r5
    mov.l @(PTR_ce30468,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30460,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3046c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303b8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30478,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce303d0
    mov.w @(DAT_ce30464,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303d8

LAB_ce303d0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303d8:
    mov.w @(DAT_ce30460,pc),r0
    mov 0x09,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce3046c,pc),r3
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

FUN_ce303f8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3047c,pc),r3
    jsr @r3
    mov 0x0A,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30412
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30412:
    mov.w @(DAT_ce30460,pc),r0
    mov 0x0A,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce3046c,pc),r3
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

LAB_ce30432:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce30480
    mov r4,r14
    tst r0,r0
    bf LAB_ce3044e
    bsr FUN_ce304c0
    mov r14,r4
    tst r0,r0
    bf LAB_ce3044e
    bsr FUN_ce304f6
    mov r14,r4
    tst r0,r0
    bt LAB_ce30456

LAB_ce3044e:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce30456:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3045e:
    #data 0x03a4
DAT_ce30460:
    #data 0x01e9
DAT_ce30462:
    #data 0x03ac
DAT_ce30464:
    #data 0x040c
    #align4

PTR_ce30468:
    #data loc_8c055c3a
PTR_ce3046c:
    #data loc_8c0530d8
PTR_ce30470:
    #data DAT_ce34700
PTR_ce30474:
    #data loc_8c054e58
PTR_ce30478:
    #data loc_8c054d1c
PTR_ce3047c:
    #data loc_8c054da0

;=============================================

FUN_ce30480:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30594,pc),r5
    mov.w @(DAT_ce30584,pc),r6
    mov.l @(PTR_ce30598,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304aa
    mov.w @(DAT_ce30586,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce304aa
    mov.w @(DAT_ce30588,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce304b2

LAB_ce304aa:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304b2:
    mov.w @(DAT_ce3058a,pc),r0
    mov 0x07,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304c0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3059c,pc),r5
    mov.w @(DAT_ce3058c,pc),r6
    mov.l @(PTR_ce30598,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304e0
    mov.w @(DAT_ce30586,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304e8

LAB_ce304e0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304e8:
    mov.w @(DAT_ce3058a,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304f6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305a0,pc),r5
    mov.w @(DAT_ce3058e,pc),r6
    mov.l @(PTR_ce30598,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30516
    mov.w @(DAT_ce30586,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3051e

LAB_ce30516:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3051e:
    mov.w @(DAT_ce3058a,pc),r0
    mov 0x08,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3052c:
    rts
    nop

LAB_ce30530:
    mov.w @(DAT_ce30590,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce305a4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30544:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce305a8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30592,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30572
    mov.w @(DAT_ce30588,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3056a
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3082c
    mov.l @r15+,r14

LAB_ce3056a:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30738
    mov.l @r15+,r14

LAB_ce30572:
    mov.w @(DAT_ce30588,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce305ac
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30668
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30584:
    #data 0x03a4
DAT_ce30586:
    #data 0x040c
DAT_ce30588:
    #data 0x01f9
DAT_ce3058a:
    #data 0x0258
DAT_ce3058c:
    #data 0x039c
DAT_ce3058e:
    #data 0x03ac
DAT_ce30590:
    #data 0x01ff
DAT_ce30592:
    #data 0x01fe
    #align4

PTR_ce30594:
    #data DAT_ce346f0
PTR_ce30598:
    #data loc_8c054e58
PTR_ce3059c:
    #data DAT_ce346e0
PTR_ce305a0:
    #data DAT_ce34700
PTR_ce305a4:
    #data PTR_ce34780
PTR_ce305a8:
    #data loc_8c052b4c

;=============================================

LAB_ce305ac:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce305b4
    mov.l @r15+,r14

LAB_ce305b4:
    mov.w @(DAT_ce306c4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce306d0,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce305d8
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce305f6
    cmp/eq 0x02,r0
    bt LAB_ce30612
    bra LAB_ce30636
    nop

LAB_ce305d8:
    mov.w @(DAT_ce306c6,pc),r0
    mov 0x03,r3
    mov 0x12,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov 0x14,r5
    mov.b r2,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306c8,pc),r0
    mov.l @(PTR_ce306d4,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306ca,pc),r0
    bra LAB_ce30636
    mov.b r13,@(r0,r14)

LAB_ce305f6:
    mov.w @(DAT_ce306c6,pc),r0
    mov 0x04,r2
    mov 0x13,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306c8,pc),r0
    mov.l @(PTR_ce306d8,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30632
    mov 0x01,r2

LAB_ce30612:
    mov.b @(0x6,r14),r0
    mov 0x05,r3
    mov 0x14,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.w @(DAT_ce306c6,pc),r0
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306c8,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce306dc,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30632:
    mov.w @(DAT_ce306ca,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30636:
    mov.w @(DAT_ce306cc,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce306e0,pc),r3
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
    mov.w @(DAT_ce306c6,pc),r0
    mov.l @(PTR_ce306e4,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30668:
    mov.w @(DAT_ce306c4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce306d0,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3068c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce306a8
    cmp/eq 0x02,r0
    bt LAB_ce306e8
    bra LAB_ce30706
    nop

LAB_ce3068c:
    mov.w @(DAT_ce306c6,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306c8,pc),r0
    mov.l @(PTR_ce306d4,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306ca,pc),r0
    bra LAB_ce30706
    mov.b r13,@(r0,r14)

LAB_ce306a8:
    mov.w @(DAT_ce306c6,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306c8,pc),r0
    mov.l @(PTR_ce306d8,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30702
    mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306c4:
    #data 0x01e8
DAT_ce306c6:
    #data 0x0158
DAT_ce306c8:
    #data 0x03f4
DAT_ce306ca:
    #data 0x01a7
DAT_ce306cc:
    #data 0x01ac
    #align4

PTR_ce306d0:
    #data loc_8c04223a
PTR_ce306d4:
    #data DAT_ce34644
PTR_ce306d8:
    #data DAT_ce34648
PTR_ce306dc:
    #data DAT_ce3464c
PTR_ce306e0:
    #data loc_8c2896b0
PTR_ce306e4:
    #data loc_8c034e8c

;=============================================

LAB_ce306e8:
    mov.w @(DAT_ce30802,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30804,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30810,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30702:
    mov.w @(DAT_ce30806,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30706:
    mov.w @(DAT_ce30808,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30814,pc),r3
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
    mov.w @(DAT_ce30802,pc),r0
    mov.l @(PTR_ce30818,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30738:
    mov.w @(DAT_ce3080a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3081c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3075c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30778
    cmp/eq 0x02,r0
    bt LAB_ce30794
    bra LAB_ce307d0
    nop

LAB_ce3075c:
    mov.w @(DAT_ce30802,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30804,pc),r0
    mov.l @(PTR_ce30820,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30806,pc),r0
    bra LAB_ce307d0
    mov.b r13,@(r0,r14)

LAB_ce30778:
    mov.w @(DAT_ce30802,pc),r0
    mov 0x04,r2
    mov 0x16,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30804,pc),r0
    mov.l @(PTR_ce30824,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce307cc
    mov 0x01,r2

LAB_ce30794:
    mov.w @(DAT_ce3080c,pc),r0
    mov.w @(DAT_ce3080e,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt/s LAB_ce307b4
    mov 0x05,r4
    mov.b @(0x6,r14),r0
    mov 0x17,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30802,pc),r0
    mov.b r4,@(r0,r14)
    add 0x49,r0
    bra LAB_ce307be
    mov.b r2,@(r0,r14)

LAB_ce307b4:
    mov.w @(DAT_ce30802,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)

LAB_ce307be:
    mov 0x16,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30804,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30828,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce307cc:
    mov.w @(DAT_ce30806,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce307d0:
    mov.w @(DAT_ce30808,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce30814,pc),r3
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
    mov.w @(DAT_ce30802,pc),r0
    mov.l @(PTR_ce30818,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30802:
    #data 0x0158
DAT_ce30804:
    #data 0x03f4
DAT_ce30806:
    #data 0x01a7
DAT_ce30808:
    #data 0x01ac
DAT_ce3080a:
    #data 0x01e8
DAT_ce3080c:
    #data 0x01fa
DAT_ce3080e:
    #data 0x0400
    #align4

PTR_ce30810:
    #data DAT_ce3464c
PTR_ce30814:
    #data loc_8c2896b0
PTR_ce30818:
    #data loc_8c034e8c
PTR_ce3081c:
    #data loc_8c04223a
PTR_ce30820:
    #data DAT_ce34650
PTR_ce30824:
    #data DAT_ce34654
PTR_ce30828:
    #data DAT_ce34658

;=============================================

LAB_ce3082c:
    mov.w @(DAT_ce30912,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30920,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30850
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3086c
    cmp/eq 0x02,r0
    bt LAB_ce30888
    bra LAB_ce308a6
    nop

LAB_ce30850:
    mov.w @(DAT_ce30914,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30916,pc),r0
    mov.l @(PTR_ce30924,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30918,pc),r0
    bra LAB_ce308a6
    mov.b r13,@(r0,r14)

LAB_ce3086c:
    mov.w @(DAT_ce30914,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30916,pc),r0
    mov.l @(PTR_ce30928,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce308a2
    mov 0x01,r2

LAB_ce30888:
    mov.w @(DAT_ce30914,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30916,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce3092c,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce308a2:
    mov.w @(DAT_ce30918,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce308a6:
    mov.w @(DAT_ce3091a,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30930,pc),r3
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
    mov.w @(DAT_ce30914,pc),r0
    mov.l @(PTR_ce30934,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce308d8:
    mov.w @(DAT_ce3091c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce308e8
    mov.w @(DAT_ce3091e,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce308f8

LAB_ce308e8:
    mov.w @(DAT_ce3091c,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce308fc
    mov.w @(DAT_ce3091e,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce308fc

LAB_ce308f8:
    bra LAB_ce30900
    nop

LAB_ce308fc:
    rts
    nop

LAB_ce30900:
    mov.w @(DAT_ce3091c,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3090e
    bra LAB_ce30a7c
    nop

LAB_ce3090e:
    bra LAB_ce30938
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30912:
    #data 0x01e8
DAT_ce30914:
    #data 0x0158
DAT_ce30916:
    #data 0x03f4
DAT_ce30918:
    #data 0x01a7
DAT_ce3091a:
    #data 0x01ac
DAT_ce3091c:
    #data 0x01fe
DAT_ce3091e:
    #data 0x01d6
    #align4

PTR_ce30920:
    #data loc_8c04223a
PTR_ce30924:
    #data DAT_ce34650
PTR_ce30928:
    #data DAT_ce34654
PTR_ce3092c:
    #data DAT_ce34658
PTR_ce30930:
    #data loc_8c2896b0
PTR_ce30934:
    #data loc_8c034e8c

;=============================================

LAB_ce30938:
    mov.w @(DAT_ce30a06,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30a14,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3095c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30998
    cmp/eq 0x02,r0
    bt LAB_ce309d4
    bra LAB_ce30a38
    nop

LAB_ce3095c:
    mov.w @(DAT_ce30a08,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce3096a
    mov.w @(DAT_ce30a0a,pc),r0
    bra LAB_ce30970
    mov.b r13,@(r0,r14)

LAB_ce3096a:
    mov.w @(DAT_ce30a0a,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r14)

LAB_ce30970:
    mov.w @(DAT_ce30a0c,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a0e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3098c
    mov.w @(DAT_ce30a10,pc),r0
    mov.l @(PTR_ce30a18,pc),r3
    bra LAB_ce30992
    mov.l r3,@(r0,r14)

LAB_ce3098c:
    mov.w @(DAT_ce30a10,pc),r0
    mov.l @(PTR_ce30a1c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30992:
    mov.w @(DAT_ce30a12,pc),r0
    bra LAB_ce30a38
    mov.b r13,@(r0,r14)

LAB_ce30998:
    mov.w @(DAT_ce30a08,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce309a8
    mov.w @(DAT_ce30a0a,pc),r0
    mov 0x01,r2
    bra LAB_ce309ae
    mov.b r2,@(r0,r14)

LAB_ce309a8:
    mov.w @(DAT_ce30a0a,pc),r0
    mov 0x04,r1
    mov.b r1,@(r0,r14)

LAB_ce309ae:
    mov.w @(DAT_ce30a0c,pc),r0
    mov 0x0D,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a0e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce309ca
    mov.w @(DAT_ce30a10,pc),r0
    mov.l @(PTR_ce30a20,pc),r3
    bra LAB_ce309d0
    mov.l r3,@(r0,r14)

LAB_ce309ca:
    mov.w @(DAT_ce30a10,pc),r0
    mov.l @(PTR_ce30a24,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce309d0:
    bra LAB_ce30a34
    mov 0x01,r3

LAB_ce309d4:
    mov.w @(DAT_ce30a08,pc),r0
    mov.b @(r0,r14),r1
    cmp/pz r1
    bt LAB_ce309e4
    mov.w @(DAT_ce30a0a,pc),r0
    mov 0x02,r2
    bra LAB_ce309ea
    mov.b r2,@(r0,r14)

LAB_ce309e4:
    mov.w @(DAT_ce30a0a,pc),r0
    mov 0x05,r1
    mov.b r1,@(r0,r14)

LAB_ce309ea:
    mov.w @(DAT_ce30a0c,pc),r0
    mov 0x0E,r3
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a0e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a2c
    mov.w @(DAT_ce30a10,pc),r0
    mov.l @(PTR_ce30a28,pc),r3
    bra LAB_ce30a32
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a06:
    #data 0x01e8
DAT_ce30a08:
    #data 0x01d3
DAT_ce30a0a:
    #data 0x0158
DAT_ce30a0c:
    #data 0x01a1
DAT_ce30a0e:
    #data 0x01fc
DAT_ce30a10:
    #data 0x03f4
DAT_ce30a12:
    #data 0x01a7
    #align4

PTR_ce30a14:
    #data loc_8c04223a
PTR_ce30a18:
    #data DAT_ce3465c
PTR_ce30a1c:
    #data DAT_ce34674
PTR_ce30a20:
    #data DAT_ce34660
PTR_ce30a24:
    #data DAT_ce34678
PTR_ce30a28:
    #data DAT_ce34664

;=============================================

LAB_ce30a2c:
    mov.w @(DAT_ce30b18,pc),r0
    mov.l @(PTR_ce30b2c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a32:
    mov 0x02,r3

LAB_ce30a34:
    mov.w @(DAT_ce30b1a,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30a38:
    mov.w @(DAT_ce30b1c,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30b30,pc),r3
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
    mov.w @(DAT_ce30b1e,pc),r0
    mov.l @(PTR_ce30b34,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30b20,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30a72
    mov.w @(DAT_ce30b20,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30a72:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30a7c:
    mov.w @(DAT_ce30b22,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b38,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30aa0
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30adc
    cmp/eq 0x02,r0
    bt LAB_ce30b4c
    bra LAB_ce30b8a
    nop

LAB_ce30aa0:
    mov.w @(DAT_ce30b24,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce30aae
    mov.w @(DAT_ce30b1e,pc),r0
    bra LAB_ce30ab4
    mov.b r13,@(r0,r14)

LAB_ce30aae:
    mov.w @(DAT_ce30b1e,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r14)

LAB_ce30ab4:
    mov.w @(DAT_ce30b26,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b28,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30ad0
    mov.w @(DAT_ce30b18,pc),r0
    mov.l @(PTR_ce30b3c,pc),r3
    bra LAB_ce30ad6
    mov.l r3,@(r0,r14)

LAB_ce30ad0:
    mov.w @(DAT_ce30b18,pc),r0
    mov.l @(PTR_ce30b40,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30ad6:
    mov.w @(DAT_ce30b1a,pc),r0
    bra LAB_ce30b8a
    mov.b r13,@(r0,r14)

LAB_ce30adc:
    mov.w @(DAT_ce30b24,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce30aec
    mov.w @(DAT_ce30b1e,pc),r0
    mov 0x01,r2
    bra LAB_ce30af2
    mov.b r2,@(r0,r14)

LAB_ce30aec:
    mov.w @(DAT_ce30b1e,pc),r0
    mov 0x04,r1
    mov.b r1,@(r0,r14)

LAB_ce30af2:
    mov.w @(DAT_ce30b26,pc),r0
    mov 0x10,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b28,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b0e
    mov.w @(DAT_ce30b18,pc),r0
    mov.l @(PTR_ce30b44,pc),r3
    bra LAB_ce30b14
    mov.l r3,@(r0,r14)

LAB_ce30b0e:
    mov.w @(DAT_ce30b18,pc),r0
    mov.l @(PTR_ce30b48,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b14:
    bra LAB_ce30b86
    mov 0x01,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b18:
    #data 0x03f4
DAT_ce30b1a:
    #data 0x01a7
DAT_ce30b1c:
    #data 0x01ac
DAT_ce30b1e:
    #data 0x0158
DAT_ce30b20:
    #data 0x01d6
DAT_ce30b22:
    #data 0x01e8
DAT_ce30b24:
    #data 0x01d3
DAT_ce30b26:
    #data 0x01a1
DAT_ce30b28:
    #data 0x01fc
    #align4

PTR_ce30b2c:
    #data DAT_ce3467c
PTR_ce30b30:
    #data loc_8c2896b0
PTR_ce30b34:
    #data loc_8c034e8c
PTR_ce30b38:
    #data loc_8c04223a
PTR_ce30b3c:
    #data DAT_ce34668
PTR_ce30b40:
    #data DAT_ce34680
PTR_ce30b44:
    #data DAT_ce3466c
PTR_ce30b48:
    #data DAT_ce34684

;=============================================

LAB_ce30b4c:
    mov.w @(DAT_ce30c72,pc),r0
    mov.b @(r0,r14),r1
    cmp/pz r1
    bt LAB_ce30b5c
    mov.w @(DAT_ce30c74,pc),r0
    mov 0x02,r2
    bra LAB_ce30b62
    mov.b r2,@(r0,r14)

LAB_ce30b5c:
    mov.w @(DAT_ce30c74,pc),r0
    mov 0x05,r1
    mov.b r1,@(r0,r14)

LAB_ce30b62:
    mov.w @(DAT_ce30c76,pc),r0
    mov 0x11,r3
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b7e
    mov.w @(DAT_ce30c7a,pc),r0
    mov.l @(PTR_ce30c88,pc),r3
    bra LAB_ce30b84
    mov.l r3,@(r0,r14)

LAB_ce30b7e:
    mov.w @(DAT_ce30c7a,pc),r0
    mov.l @(PTR_ce30c8c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b84:
    mov 0x02,r3

LAB_ce30b86:
    mov.w @(DAT_ce30c7c,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30b8a:
    mov.w @(DAT_ce30c7e,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30c90,pc),r3
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
    mov.w @(DAT_ce30c74,pc),r0
    mov.l @(PTR_ce30c94,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30c80,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30bc4
    mov.w @(DAT_ce30c80,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30bc4:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30bce:
    mov.w @(DAT_ce30c82,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c98,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30be2:
    sts.l PR,@-r15
    mov.l @(PTR_ce30c9c,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30bf0:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30ca0,pc),r3
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
    mov.w @(DAT_ce30c84,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c58
    mov.w @(DAT_ce30c86,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c50
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e0c
    mov.l @r15+,r14

LAB_ce30c50:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d90
    mov.l @r15+,r14

LAB_ce30c58:
    mov.w @(DAT_ce30c86,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c6a
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d44
    mov.l @r15+,r14

LAB_ce30c6a:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30ca4
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c72:
    #data 0x01d3
DAT_ce30c74:
    #data 0x0158
DAT_ce30c76:
    #data 0x01a1
DAT_ce30c78:
    #data 0x01fc
DAT_ce30c7a:
    #data 0x03f4
DAT_ce30c7c:
    #data 0x01a7
DAT_ce30c7e:
    #data 0x01ac
DAT_ce30c80:
    #data 0x01d6
DAT_ce30c82:
    #data 0x01ff
DAT_ce30c84:
    #data 0x01fe
DAT_ce30c86:
    #data 0x01f9
    #align4

PTR_ce30c88:
    #data DAT_ce34670
PTR_ce30c8c:
    #data DAT_ce34688
PTR_ce30c90:
    #data loc_8c2896b0
PTR_ce30c94:
    #data loc_8c034e8c
PTR_ce30c98:
    #data PTR_ce34790
PTR_ce30c9c:
    #data loc_8c0511e2
PTR_ce30ca0:
    #data loc_8c052c84

;=============================================

LAB_ce30ca4:
    mov.w @(DAT_ce30d7c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30cc0
    cmp/eq 0x00,r0
    bt LAB_ce30d28
    cmp/eq 0x01,r0
    bt LAB_ce30d28
    bra LAB_ce30d3e
    nop

LAB_ce30cc0:
    mov.l @(PTR_ce30d84,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30d34
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt/s LAB_ce30cf8
    mov 0x00,r4
    mov.w @(DAT_ce30d7e,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bt LAB_ce30ce4
    cmp/eq 0x02,r0
    bt LAB_ce30cec
    bra LAB_ce30d3e
    nop

LAB_ce30ce4:
    mov.w @(DAT_ce30d7e,pc),r0
    mov.b r4,@(r0,r14)
    bra LAB_ce30cf2
    mov 0x1A,r3

LAB_ce30cec:
    mov.w @(DAT_ce30d7e,pc),r0
    mov 0x1B,r3
    mov.b r4,@(r0,r14)

LAB_ce30cf2:
    add 0x60,r0
    bra LAB_ce30d08
    mov.b r3,@(r0,r14)

LAB_ce30cf8:
    mov.w @(DAT_ce30d7e,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce30d3e
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x19,r3
    mov.b r3,@(r0,r14)

LAB_ce30d08:
    mov.w @(DAT_ce30d80,pc),r0
    mov.l @(PTR_ce30d88,pc),r3
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
    bra LAB_ce30d3e
    mov.w r1,@(r0,r2)

LAB_ce30d28:
    mov.l @(PTR_ce30d84,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d3e

LAB_ce30d34:
    lds.l @r15+,PR
    mov.l @(PTR_ce30d8c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30d3e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d44:
    mov.w @(DAT_ce30d7c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30d60
    cmp/eq 0x01,r0
    bt LAB_ce30d60
    cmp/eq 0x02,r0
    bt LAB_ce30d60
    bra LAB_ce30d76
    nop

LAB_ce30d60:
    mov.l @(PTR_ce30d84,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d76
    lds.l @r15+,PR
    mov.l @(PTR_ce30d8c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d76:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d7c:
    #data 0x01e8
DAT_ce30d7e:
    #data 0x0141
DAT_ce30d80:
    #data 0x01ac
    #align4

PTR_ce30d84:
    #data loc_8c034dee
PTR_ce30d88:
    #data loc_8c2896b0
PTR_ce30d8c:
    #data loc_8c051648

;=============================================

LAB_ce30d90:
    mov.w @(DAT_ce30e7c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30dac
    cmp/eq 0x00,r0
    bt LAB_ce30df0
    cmp/eq 0x01,r0
    bt LAB_ce30df0
    bra LAB_ce30e06
    nop

LAB_ce30dac:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt LAB_ce30df0
    mov.l @(PTR_ce30e84,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30dfc
    mov.w @(DAT_ce30e7e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30e06
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x1C,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30e88,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    bra LAB_ce30e06
    mov.w r1,@(r0,r2)

LAB_ce30df0:
    mov.l @(PTR_ce30e84,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e06

LAB_ce30dfc:
    lds.l @r15+,PR
    mov.l @(PTR_ce30e8c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30e06:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e0c:
    mov.w @(DAT_ce30e7c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30e28
    cmp/eq 0x01,r0
    bt LAB_ce30e28
    cmp/eq 0x02,r0
    bt LAB_ce30e28
    bra LAB_ce30e3e
    nop

LAB_ce30e28:
    mov.l @(PTR_ce30e84,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e3e
    lds.l @r15+,PR
    mov.l @(PTR_ce30e8c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e3e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e44:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e90,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30e94,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30e5a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e98,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30e9c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30e80,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30ea0
    bsr FUN_ce30f36
    mov r14,r4
    bra LAB_ce30ea4
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e7c:
    #data 0x01e8
DAT_ce30e7e:
    #data 0x0141
DAT_ce30e80:
    #data 0x01fe
    #align4

PTR_ce30e84:
    #data loc_8c034dee
PTR_ce30e88:
    #data loc_8c2896b0
PTR_ce30e8c:
    #data loc_8c051648
PTR_ce30e90:
    #data loc_8c050084
PTR_ce30e94:
    #data loc_8c04ff88
PTR_ce30e98:
    #data loc_8c04fea8
PTR_ce30e9c:
    #data loc_8c050048

;=============================================

LAB_ce30ea0:
    bsr FUN_ce30ec0
    mov r14,r4

LAB_ce30ea4:
    mov.l @(PTR_ce30f5c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30eba
    lds.l @r15+,PR
    mov.l @(PTR_ce30f60,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30eba:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30ec0:
    mov.w @(DAT_ce30f58,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce30edc
    cmp/eq 0x00,r0
    bt LAB_ce30f1a
    cmp/eq 0x02,r0
    bt LAB_ce30f1a
    bra LAB_ce30f30
    nop

LAB_ce30edc:
    mov.l @(PTR_ce30f64,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30f26
    mov.w @(DAT_ce30f5a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f30
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x1D,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30f68,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    bra LAB_ce30f30
    mov.w r1,@(r0,r2)

LAB_ce30f1a:
    mov.l @(PTR_ce30f64,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f30

LAB_ce30f26:
    lds.l @r15+,PR
    mov.l @(PTR_ce30f6c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30f30:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30f36:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30f64,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f50
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30f6c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30f50:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f58:
    #data 0x01e8
DAT_ce30f5a:
    #data 0x0141
    #align4

PTR_ce30f5c:
    #data loc_8c052ce2
PTR_ce30f60:
    #data loc_8c052dac
PTR_ce30f64:
    #data loc_8c034dee
PTR_ce30f68:
    #data loc_8c2896b0
PTR_ce30f6c:
    #data loc_8c05176e

;=============================================

LAB_ce30f70:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30fce
    mov.l @(PTR_ce3109c,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x14,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x05,r6
    mov.w @(DAT_ce31090,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce310a0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31092,pc),r0
    mov 0x48,r2
    mov 0x00,r4
    mov.l @(PTR_ce310a4,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x16,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce310a8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce310ac,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4

LAB_ce30fce:
    mov.w @(DAT_ce31094,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30fde
    mov.l @(PTR_ce310b0,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30fde:
    mov 0x5C,r1
    mov.l @(PTR_ce310b4,pc),r3
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
    mov.l @(PTR_ce310b8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31032
    lds.l @r15+,PR
    mov.l @(PTR_ce310bc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31032:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31038:
    mov r4,r3
    mov.l @(PTR_ce310c0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3104a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310b8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31096,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce310e8
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31096,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x12,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31098,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3107a
    mova @(DAT_ce310c4,pc),r0
    bra LAB_ce3107e
    fmov.s @r0,fr3

LAB_ce3107a:
    mova @(DAT_ce310c8,pc),r0
    fmov.s @r0,fr3

LAB_ce3107e:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31098,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce310d0
    mova @(DAT_ce310cc,pc),r0
    bra LAB_ce310d4
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31090:
    #data 0x01f9
DAT_ce31092:
    #data 0x01a1
DAT_ce31094:
    #data 0x01ff
DAT_ce31096:
    #data 0x0141
DAT_ce31098:
    #data 0x01d2
    #align4

PTR_ce3109c:
    #data loc_8c052b4c
PTR_ce310a0:
    #data loc_8c034e8c
PTR_ce310a4:
    #data loc_8c2896b0
PTR_ce310a8:
    #data loc_8c04223a
PTR_ce310ac:
    #data loc_8c056de4
PTR_ce310b0:
    #data loc_8c0511e2
PTR_ce310b4:
    #data loc_8c052c84
PTR_ce310b8:
    #data loc_8c034dee
PTR_ce310bc:
    #data loc_8c051648
PTR_ce310c0:
    #data PTR_ce347a0
DAT_ce310c4:
    #data 0x41995555
DAT_ce310c8:
    #data 0xc1995555
DAT_ce310cc:
    #data 0xbf3aaaaa

;=============================================

LAB_ce310d0:
    mova @(DAT_ce3122c,pc),r0
    fmov.s @r0,fr3

LAB_ce310d4:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31230,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31234,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce310e8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310ee:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(DAT_ce31238,pc),r3
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
    bf LAB_ce31166
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    mov r14,r4
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31224,pc),r0
    mov.b @(r0,r14),r3
    mova @(DAT_ce3123c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    tst r3,r3
    mov.l @(PTR_ce31240,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31234,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31166:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3116c:
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
    mov.w @(DAT_ce31226,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce311b8
    mov.l @(DAT_ce31238,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce311b8:
    mov.w @(DAT_ce31228,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce311ea
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31228,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3122a,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce311ea:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce311f0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(DAT_ce31238,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3120a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31244,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3120a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31212:
    mov r4,r3
    mov.l @(PTR_ce31248,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31224:
    #data 0x01d2
DAT_ce31226:
    #data 0x0141
DAT_ce31228:
    #data 0x041c
DAT_ce3122a:
    #data 0x01f9
    #align4

DAT_ce3122c:
    #data 0x3f3aaaaa
DAT_ce31230:
    #data 0x411a4924
DAT_ce31234:
    #data 0xbf809249
DAT_ce31238:
    #data 0x8c034dee
DAT_ce3123c:
    #data 0xbf3aaaaa
PTR_ce31240:
    #data loc_8c034e8c
PTR_ce31244:
    #data loc_8c051648
PTR_ce31248:
    #data PTR_ce347b0

;=============================================

LAB_ce3124c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31334,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3132e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce312aa
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x12,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3132e,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31330,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3127c
    mova @(DAT_ce31338,pc),r0
    bra LAB_ce31280
    fmov.s @r0,fr3

LAB_ce3127c:
    mova @(DAT_ce3133c,pc),r0
    fmov.s @r0,fr3

LAB_ce31280:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31330,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31292
    mova @(DAT_ce31340,pc),r0
    bra LAB_ce31296
    fmov.s @r0,fr3

LAB_ce31292:
    mova @(DAT_ce31344,pc),r0
    fmov.s @r0,fr3

LAB_ce31296:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31348,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3134c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce312aa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312b0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31334,pc),r3
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
    bf LAB_ce31328
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r5
    mov.w @(DAT_ce31330,pc),r0
    mov.b @(r0,r14),r3
    mova @(DAT_ce31340,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    tst r3,r3
    mov.l @(PTR_ce31350,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3134c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31328:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3132e:
    #data 0x0141
DAT_ce31330:
    #data 0x01d2
    #align4

PTR_ce31334:
    #data loc_8c034dee
DAT_ce31338:
    #data 0xc1700000
DAT_ce3133c:
    #data 0x41700000
DAT_ce31340:
    #data 0x3ed55555
DAT_ce31344:
    #data 0xbed55555
DAT_ce31348:
    #data 0x412b6db6
DAT_ce3134c:
    #data 0xbf892492
PTR_ce31350:
    #data loc_8c034e8c

;=============================================

LAB_ce31354:
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
    mov.w @(DAT_ce3149a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce313a0
    mov.l @(PTR_ce314a4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce313a0:
    mov.w @(DAT_ce3149c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce313d2
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3149c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3149e,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce313d2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce313d8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce314a4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313f2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce314a8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce313f2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce313fa:
    mov r4,r3
    mov.l @(PTR_ce314ac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3140c:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce314a0,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce314b0,pc),r3
    jmp @r3
    mov 0x12,r5

LAB_ce31420:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce314a4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31438
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce31438:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31440:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314b4,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31458
    lds.l @r15+,PR
    mov.l @(PTR_ce314a8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31458:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce314b8,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3146c:
    mov r4,r3
    mov.l @(PTR_ce314bc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3147e:
    mov.l @(PTR_ce314c4,pc),r1
    mov 0x03,r5
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @r1,r2
    mov.l @(PTR_ce314c0,pc),r3
    tst r2,r2
    bt/s LAB_ce314cc
    mov.l @r3,r4
    mov.l @(PTR_ce314c8,pc),r2
    mov.l @(0x1c,r4),r0
    bra LAB_ce314d2
    and r5,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3149a:
    #data 0x0141
DAT_ce3149c:
    #data 0x041c
DAT_ce3149e:
    #data 0x01f9
DAT_ce314a0:
    #data 0x012c
    #align4

PTR_ce314a4:
    #data loc_8c034dee
PTR_ce314a8:
    #data loc_8c051648
PTR_ce314ac:
    #data PTR_ce347c0
PTR_ce314b0:
    #data loc_8c034e8c
PTR_ce314b4:
    #data loc_8c046c8a
PTR_ce314b8:
    #data PTR_ce347c8
PTR_ce314bc:
    #data PTR_ce347dc
PTR_ce314c0:
    #data loc_8c26823c
PTR_ce314c4:
    #data loc_8c289636
PTR_ce314c8:
    #data DAT_ce347ec

;=============================================

LAB_ce314cc:
    mov.l @(0x1c,r4),r0
    mov.l @(PTR_ce315e8,pc),r2
    and r5,r0

LAB_ce314d2:
    mov.b @(r0,r2),r0
    mov.l @(PTR_ce315ec,pc),r3
    extu.b r0,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov 0x02,r2
    cmp/ge r2,r0
    bf LAB_ce314e8
    mov 0x00,r0
    mov.w r0,@(0x1c,r14)

LAB_ce314e8:
    mov.w @(0x1c,r14),r0
    cmp/eq 0x00,r0
    bt LAB_ce314fa
    cmp/eq 0x01,r0
    bt LAB_ce31504
    cmp/eq 0x02,r0
    bt LAB_ce3150e
    bra LAB_ce3151a
    nop

LAB_ce314fa:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bra LAB_ce31516
    mov 0x00,r3

LAB_ce31504:
    mov.b @(0x6,r14),r0
    add 0x02,r0
    mov.b r0,@(0x6,r14)
    bra LAB_ce31516
    mov 0x01,r3

LAB_ce3150e:
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x03,r0
    mov.b r0,@(0x6,r14)

LAB_ce31516:
    mov.w @(DAT_ce315d8,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce3151a:
    mov.w @(DAT_ce315d8,pc),r0
    mov 0x13,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce315f0,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce3152a:
    mov.l @(PTR_ce315f4,pc),r3
    jmp @r3
    nop

LAB_ce31530:
    mov.w @(DAT_ce315da,pc),r3
    mov.w @(DAT_ce315dc,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce315f4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce315de,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3155c
    mov 0x00,r3
    mov r14,r4
    mov r3,r6
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce315f8,pc),r3
    mov 0x04,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3155c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31562:
    mov.l @(PTR_ce315f4,pc),r3
    jmp @r3
    nop

LAB_ce31568:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce3157c
    mov.b @(0x6,r4),r0
    mov 0x03,r6
    mov.l @(PTR_ce315f0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce3157c:
    mov.l @(PTR_ce315f4,pc),r3
    jmp @r3
    nop

LAB_ce31582:
    mov.w @(DAT_ce315e0,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce315fc,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31596:
    mov r4,r3
    mov.l @(PTR_ce31600,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce315a8:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31604,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce315e2,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce315be:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce315e4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31608
    bra LAB_ce3160a
    mov 0x32,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315d8:
    #data 0x0158
DAT_ce315da:
    #data 0x00ff
DAT_ce315dc:
    #data 0x0326
DAT_ce315de:
    #data 0x0141
DAT_ce315e0:
    #data 0x01e9
DAT_ce315e2:
    #data 0x02a4
DAT_ce315e4:
    #data 0x01a3
    #align4

PTR_ce315e8:
    #data DAT_ce347f0
PTR_ce315ec:
    #data loc_8c0514b8
PTR_ce315f0:
    #data loc_8c034e8c
PTR_ce315f4:
    #data loc_8c034dee
PTR_ce315f8:
    #data loc_8c0dfba0
PTR_ce315fc:
    #data PTR_ce347f4
PTR_ce31600:
    #data PTR_ce34820
PTR_ce31604:
    #data PTR_ce34828

;=============================================

LAB_ce31608:
    mov 0x30,r3

LAB_ce3160a:
    mov.w @(DAT_ce31736,pc),r0
    mov 0x00,r13
    mov 0x05,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31744,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31748,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3174c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31738,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce31750,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3173a,pc),r0
    mov.b r13,@(r0,r14)
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
    mov.w @(DAT_ce3173c,pc),r0
    mov.l @(PTR_ce31754,pc),r4
    mov.b @(r0,r14),r2
    mov 0x60,r0
    extu.b r2,r2
    shll2 r2
    shll r2
    add r4,r2
    fmov.s @r2,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3173c,pc),r0
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    shll2 r3
    shll r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3173c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31696
    mov 0x15,r5
    bra LAB_ce31698
    mov 0x01,r6

LAB_ce31696:
    mov 0x00,r6

LAB_ce31698:
    lds.l @r15+,PR
    mov.l @(PTR_ce31758,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce316a4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3175c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3173e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce316c6
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31760,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce316c6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce316cc:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3175c,pc),r3
    mov 0x00,r13
    mov.l r5,@r15
    mov r4,r14
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
    mov.w @(DAT_ce3173e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31788
    mov.w @(DAT_ce31740,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31788
    mov.w @(DAT_ce3173e,pc),r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt LAB_ce3172a
    mov.w @(DAT_ce3173c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31722
    bra LAB_ce31724
    mov 0x57,r3

LAB_ce31722:
    mov 0x55,r3

LAB_ce31724:
    mov.w @(DAT_ce31736,pc),r0
    bra LAB_ce3176a
    mov.b r3,@(r0,r14)

LAB_ce3172a:
    mov.w @(DAT_ce3173c,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce31764
    bra LAB_ce31766
    mov 0x33,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31736:
    #data 0x01a1
DAT_ce31738:
    #data 0x041c
DAT_ce3173a:
    #data 0x01f9
DAT_ce3173c:
    #data 0x01a3
DAT_ce3173e:
    #data 0x0141
DAT_ce31740:
    #data 0x019e
    #align4

PTR_ce31744:
    #data loc_8c2896b0
PTR_ce31748:
    #data loc_8c056de4
PTR_ce3174c:
    #data loc_8c05218a
PTR_ce31750:
    #data loc_8c05115a
PTR_ce31754:
    #data DAT_ce34840
PTR_ce31758:
    #data loc_8c034e8c
PTR_ce3175c:
    #data loc_8c034dee
PTR_ce31760:
    #data loc_8c053082

;=============================================

LAB_ce31764:
    mov 0x31,r2

LAB_ce31766:
    mov.w @(DAT_ce31864,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce3176a:
    mov.w @(DAT_ce31866,pc),r0
    mov.l @(PTR_ce3186c,pc),r3
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

LAB_ce31788:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31796
    bra LAB_ce318ba
    nop

LAB_ce31796:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt LAB_ce317a6
    bra LAB_ce317a8
    mov 0x02,r0

LAB_ce317a6:
    mov 0x00,r0

LAB_ce317a8:
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31868,pc),r0
    mov.b @(r0,r14),r2
    mov.w @(0x1c,r14),r0
    extu.b r2,r2
    add r2,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3186a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce317ca
    mov.w @(0x1c,r14),r0
    mov.l @(PTR_ce31870,pc),r1
    shll2 r0
    shll2 r0
    bra LAB_ce317d6
    fmov.s @(r0,r1),fr3

LAB_ce317ca:
    mov.w @(0x1c,r14),r0
    mov.l @(PTR_ce31870,pc),r1
    shll2 r0
    shll2 r0
    fmov.s @(r0,r1),fr3
    fneg fr3

LAB_ce317d6:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3186a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce317ee
    mov.w @(0x1c,r14),r0
    mov.l @(PTR_ce31874,pc),r1
    shll2 r0
    shll2 r0
    bra LAB_ce317fa
    fmov.s @(r0,r1),fr3

LAB_ce317ee:
    mov.w @(0x1c,r14),r0
    mov.l @(PTR_ce31874,pc),r1
    shll2 r0
    shll2 r0
    fmov.s @(r0,r1),fr3
    fneg fr3

LAB_ce317fa:
    mov 0x68,r0
    mov.l @(PTR_ce31870,pc),r4
    fmov fr3,@(r0,r14)
    mov 0x08,r1
    mov.w @(0x1c,r14),r0
    fldi1 fr4
    fadd fr4,fr4
    shll2 r0
    shll2 r0
    add r4,r0
    fmov.s @(r0,r1),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(0x1c,r14),r0
    shll2 r0
    shll2 r0
    add r0,r4
    mov 0x0C,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x60,r0
    mov.l @r15,r3
    fmul fr4,fr3
    fmov.s fr3,@r3
    fmov.s @(r0,r14),fr3
    mov 0x04,r0
    mov.l @r15,r3
    fmul fr4,fr3
    fmov fr3,@(r0,r3)
    mov 0x22,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt LAB_ce31858
    mov.w @(DAT_ce31868,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31850
    bra LAB_ce31852
    mov 0x5A,r3

LAB_ce31850:
    mov 0x58,r3

LAB_ce31852:
    mov.w @(DAT_ce31864,pc),r0
    bra LAB_ce3187e
    mov.b r3,@(r0,r14)

LAB_ce31858:
    mov.w @(DAT_ce31868,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce31878
    bra LAB_ce3187a
    mov 0x36,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31864:
    #data 0x01a1
DAT_ce31866:
    #data 0x01ac
DAT_ce31868:
    #data 0x01a3
DAT_ce3186a:
    #data 0x01d2
    #align4

PTR_ce3186c:
    #data loc_8c2896b0
PTR_ce31870:
    #data DAT_ce34850
PTR_ce31874:
    #data DAT_ce34854

;=============================================

LAB_ce31878:
    mov 0x34,r2

LAB_ce3187a:
    mov.w @(DAT_ce31980,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce3187e:
    mov.w @(DAT_ce31982,pc),r0
    mov.l @(PTR_ce3198c,pc),r3
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
    mov.w @(DAT_ce31984,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce318aa
    mov 0x15,r5
    bra LAB_ce318ac
    mov 0x03,r6

LAB_ce318aa:
    mov 0x02,r6

LAB_ce318ac:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31990,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce318ba:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce318c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31a2e
    mov r4,r14
    mov.l @(PTR_ce31994,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31986,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt/s LAB_ce31908
    mov 0x00,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31998,pc),r3
    add 0x02,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31986,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31988,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31984,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31904
    bra LAB_ce3196e
    mov 0x07,r6

LAB_ce31904:
    bra LAB_ce3196e
    mov 0x06,r6

LAB_ce31908:
    mov.w @(DAT_ce3198a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3197a
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt LAB_ce31930
    mov.w @(DAT_ce31984,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31928
    bra LAB_ce3192a
    mov 0x5B,r3

LAB_ce31928:
    mov 0x59,r3

LAB_ce3192a:
    mov.w @(DAT_ce31980,pc),r0
    bra LAB_ce31942
    mov.b r3,@(r0,r14)

LAB_ce31930:
    mov.w @(DAT_ce31984,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce3193c
    bra LAB_ce3193e
    mov 0x37,r2

LAB_ce3193c:
    mov 0x35,r2

LAB_ce3193e:
    mov.w @(DAT_ce31980,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce31942:
    mov.w @(DAT_ce31982,pc),r0
    mov.l @(PTR_ce3198c,pc),r3
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
    mov.w @(DAT_ce31984,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3196c
    bra LAB_ce3196e
    mov 0x05,r6

LAB_ce3196c:
    mov 0x04,r6

LAB_ce3196e:
    lds.l @r15+,PR
    mov.l @(PTR_ce31990,pc),r2
    mov 0x15,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3197a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31980:
    #data 0x01a1
DAT_ce31982:
    #data 0x01ac
DAT_ce31984:
    #data 0x01a3
DAT_ce31986:
    #data 0x041c
DAT_ce31988:
    #data 0x01f9
DAT_ce3198a:
    #data 0x019e
    #align4

PTR_ce3198c:
    #data loc_8c2896b0
PTR_ce31990:
    #data loc_8c034e8c
PTR_ce31994:
    #data loc_8c034dee
PTR_ce31998:
    #data loc_8c0511b4

;=============================================

LAB_ce3199c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31aa0,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    bsr FUN_ce31a2e
    mov r14,r4
    mov.w @(DAT_ce31a96,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce319f4
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31a96,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31a98,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31aa4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31a9a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce319e6
    mov 0x15,r5
    bra LAB_ce319e8
    mov 0x07,r6

LAB_ce319e6:
    mov 0x06,r6

LAB_ce319e8:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31aa8,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce319f4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce319fc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31aa0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31a28
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31aac,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a28:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31a2e:
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
    rts
    fmov fr2,@(r0,r4)

LAB_ce31a68:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31ab0,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31a9c,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a7e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31a9a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31ab4
    bra LAB_ce31ab6
    mov 0x56,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a96:
    #data 0x041c
DAT_ce31a98:
    #data 0x01f9
DAT_ce31a9a:
    #data 0x01a3
DAT_ce31a9c:
    #data 0x02a4
    #align4

PTR_ce31aa0:
    #data loc_8c034dee
PTR_ce31aa4:
    #data loc_8c0511b4
PTR_ce31aa8:
    #data loc_8c034e8c
PTR_ce31aac:
    #data loc_8c051648
PTR_ce31ab0:
    #data PTR_ce34890

;=============================================

LAB_ce31ab4:
    mov 0x54,r3

LAB_ce31ab6:
    mov.w @(DAT_ce31bea,pc),r0
    mov 0x00,r4
    mov 0x05,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31bf8,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31bfc,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31c00,pc),r3
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
    mov.w @(DAT_ce31bec,pc),r0
    mov.l @(PTR_ce31c04,pc),r4
    mov.b @(r0,r14),r3
    mov 0x60,r0
    extu.b r3,r3
    shll2 r3
    shll r3
    add r4,r3
    fmov.s @r3,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31bec,pc),r0
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    shll2 r3
    shll r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31bec,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31b30
    mov 0x15,r5
    bra LAB_ce31b32
    mov 0x1D,r6

LAB_ce31b30:
    mov 0x1C,r6

LAB_ce31b32:
    lds.l @r15+,PR
    mov.l @(PTR_ce31c08,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b3c:
    mov.b @(0x7,r4),r0
    add 0x01,r0
    bra LAB_ce316cc
    mov.b r0,@(0x7,r4)

LAB_ce31b44:
    mov r4,r3
    mov.l @(PTR_ce31c0c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31b56:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31bec,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31b70
    bra LAB_ce31b72
    mov 0x39,r3

LAB_ce31b70:
    mov 0x38,r3

LAB_ce31b72:
    mov.w @(DAT_ce31bea,pc),r0
    mov 0x00,r13
    mov 0x05,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31bf8,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31bfc,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31c00,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31bee,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce31c10,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31bf0,pc),r0
    mov.b r13,@(r0,r14)
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
    mov.w @(DAT_ce31bf2,pc),r0
    mov.w r13,@(r0,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31bf4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31c18
    mov.w @(DAT_ce31bec,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31c14,pc),r0
    extu.b r3,r3
    shll2 r3
    shll r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31c28
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31bea:
    #data 0x01a1
DAT_ce31bec:
    #data 0x01a3
DAT_ce31bee:
    #data 0x041c
DAT_ce31bf0:
    #data 0x01f9
DAT_ce31bf2:
    #data 0x0352
DAT_ce31bf4:
    #data 0x01d2
    #align4

PTR_ce31bf8:
    #data loc_8c2896b0
PTR_ce31bfc:
    #data loc_8c056de4
PTR_ce31c00:
    #data loc_8c05218a
PTR_ce31c04:
    #data DAT_ce348a8
PTR_ce31c08:
    #data loc_8c034e8c
PTR_ce31c0c:
    #data PTR_ce348b8
PTR_ce31c10:
    #data loc_8c05115a
PTR_ce31c14:
    #data DAT_ce348d8

;=============================================

LAB_ce31c18:
    mov.w @(DAT_ce31cf8,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31d0c,pc),r0
    extu.b r2,r2
    shll2 r2
    shll r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31c28:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31cfa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31c46
    mov.w @(DAT_ce31cf8,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31d10,pc),r0
    extu.b r3,r3
    shll2 r3
    shll r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31c56
    nop

LAB_ce31c46:
    mov.w @(DAT_ce31cf8,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31d10,pc),r0
    extu.b r2,r2
    shll2 r2
    shll r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31c56:
    mov 0x00,r6
    mov.l @(PTR_ce31d14,pc),r3
    mov 0x60,r0
    mov r6,r5
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31cf8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31c72
    mov 0x15,r5
    bra LAB_ce31c74
    mov 0x09,r6

LAB_ce31c72:
    mov 0x08,r6

LAB_ce31c74:
    lds.l @r15+,PR
    mov.l @(PTR_ce31d18,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c80:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31d1c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31cfc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31c96
    bra LAB_ce31df8
    nop

LAB_ce31c96:
    mov.w @(DAT_ce31d00,pc),r4
    mov 0x60,r6
    mov.w @(DAT_ce31cfe,pc),r5
    mov r4,r0
    nop
    add 0x9E,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31d64
    fldi0 fr4
    mov.w @(DAT_ce31d02,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31cc6
    mov.w @(DAT_ce31d04,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31d8a
    mov.w @(DAT_ce31cf8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31d7a
    bra LAB_ce31d6e
    nop

LAB_ce31cc6:
    mov.w @(DAT_ce31d06,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bf LAB_ce31d6e
    mov.w @(r0,r14),r1
    extu.w r1,r1
    tst r5,r1
    bf LAB_ce31d7a
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r6,r2
    bf LAB_ce31d8a
    mov 0x04,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r3
    mov.w @(DAT_ce31d08,pc),r0
    mov.b r3,@(r0,r14)
    add 0xA5,r0
    mov.b @(r0,r14),r0
    tst 0x11,r0
    bt LAB_ce31d24
    mova @(DAT_ce31d20,pc),r0
    bra LAB_ce31d28
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31cf8:
    #data 0x01a3
DAT_ce31cfa:
    #data 0x01d2
DAT_ce31cfc:
    #data 0x0141
DAT_ce31cfe:
    #data 0x0100
DAT_ce31d00:
    #data 0x0200
DAT_ce31d02:
    #data 0x0525
DAT_ce31d04:
    #data 0x01fe
DAT_ce31d06:
    #data 0x0352
DAT_ce31d08:
    #data 0x01f9
    #align4

PTR_ce31d0c:
    #data DAT_ce348d8
PTR_ce31d10:
    #data DAT_ce348dc
PTR_ce31d14:
    #data loc_8c0dfba0
PTR_ce31d18:
    #data loc_8c034e8c
PTR_ce31d1c:
    #data loc_8c034dee
DAT_ce31d20:
    #data 0x80000000

;=============================================

LAB_ce31d24:
    mova @(DAT_ce31e04,pc),r0
    fmov.s @r0,fr3

LAB_ce31d28:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31dfe,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31d40
    mov 0x5C,r0
    fldi1 fr3
    fmov.s @(r0,r14),fr2
    fneg fr3
    fmul fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce31d40:
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31e08,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31e0c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31e00,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31d60
    bra LAB_ce31dec
    mov 0x0D,r6

LAB_ce31d60:
    bra LAB_ce31dec
    mov 0x0C,r6

LAB_ce31d64:
    mov.w @(DAT_ce31e02,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bt LAB_ce31d76

LAB_ce31d6e:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce320f6
    mov.l @r15+,r14

LAB_ce31d76:
    tst r5,r3
    bt LAB_ce31d82

LAB_ce31d7a:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce320a2
    mov.l @r15+,r14

LAB_ce31d82:
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r6,r3
    bt LAB_ce31d92

LAB_ce31d8a:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce32190
    mov.l @r15+,r14

LAB_ce31d92:
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
    tst r0,r0
    bt LAB_ce31dda
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fabs fr3
    fabs fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31df8
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31dda:
    mov 0x05,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31e00,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31dea
    bra LAB_ce31dec
    mov 0x0F,r6

LAB_ce31dea:
    mov 0x0E,r6

LAB_ce31dec:
    lds.l @r15+,PR
    mov.l @(PTR_ce31e10,pc),r2
    mov 0x15,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31df8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31dfe:
    #data 0x01d2
DAT_ce31e00:
    #data 0x01a3
DAT_ce31e02:
    #data 0x0348
    #align4

DAT_ce31e04:
    #data 0xbfa00000
DAT_ce31e08:
    #data 0x41cdb6db
DAT_ce31e0c:
    #data 0xbff00000
PTR_ce31e10:
    #data loc_8c034e8c

;=============================================

LAB_ce31e14:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ecc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31ec4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31ebe
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31ec4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31ed0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31ec6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31e52
    mov.w @(DAT_ce31ec8,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31ed4,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31e62
    nop

LAB_ce31e52:
    mov.w @(DAT_ce31ec8,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31ed4,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31e62:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ec6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31e80
    mov.w @(DAT_ce31ec8,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31ed8,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31e90
    nop

LAB_ce31e80:
    mov.w @(DAT_ce31ec8,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31ed8,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31e90:
    mov 0x68,r0
    mov.l @(PTR_ce31ed4,pc),r4
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ec8,pc),r0
    mov.b @(r0,r14),r3
    mov 0x08,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r4,r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ec8,pc),r0
    mov.b @(r0,r14),r3
    mov 0x0C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31ebe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ec4:
    #data 0x0141
DAT_ce31ec6:
    #data 0x01d2
DAT_ce31ec8:
    #data 0x01a3
    #align4

PTR_ce31ecc:
    #data loc_8c034dee
PTR_ce31ed0:
    #data loc_8c053082
PTR_ce31ed4:
    #data DAT_ce348e8
PTR_ce31ed8:
    #data DAT_ce348ec

;=============================================

LAB_ce31edc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31fd8,pc),r3
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
    mov.w @(DAT_ce31fcc,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bf LAB_ce31f32
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31f42

LAB_ce31f32:
    extu.b r4,r2
    tst r2,r2
    bt LAB_ce31f4c
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31f4c

LAB_ce31f42:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce31f4c:
    mov.w @(DAT_ce31fce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31f88
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x62,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31f64
    bra LAB_ce31f66
    mov 0x3D,r3

LAB_ce31f64:
    mov 0x3C,r3

LAB_ce31f66:
    mov.w @(DAT_ce31fd0,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31fdc,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31f88:
    mov.w @(DAT_ce31fd2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31fc6
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31fe0,pc),r3
    add 0x02,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31fd2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31fd4,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31fd6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31fba
    mov 0x15,r5
    bra LAB_ce31fbc
    mov 0x0F,r6

LAB_ce31fba:
    mov 0x0E,r6

LAB_ce31fbc:
    lds.l @r15+,PR
    mov.l @(PTR_ce31fe4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31fc6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31fcc:
    #data 0x01d2
DAT_ce31fce:
    #data 0x0141
DAT_ce31fd0:
    #data 0x01a1
DAT_ce31fd2:
    #data 0x041c
DAT_ce31fd4:
    #data 0x01f9
DAT_ce31fd6:
    #data 0x01a3
    #align4

PTR_ce31fd8:
    #data loc_8c034dee
PTR_ce31fdc:
    #data loc_8c2896b0
PTR_ce31fe0:
    #data loc_8c0511b4
PTR_ce31fe4:
    #data loc_8c034e8c

;=============================================

LAB_ce31fe8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32110,pc),r3
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
    mov.w @(DAT_ce32106,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3206a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32106,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32108,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32114,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3210a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce3205e
    mov 0x15,r5
    bra LAB_ce32060
    mov 0x0F,r6

LAB_ce3205e:
    mov 0x0E,r6

LAB_ce32060:
    lds.l @r15+,PR
    mov.l @(PTR_ce32118,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3206a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32070:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32110,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3209c
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3211c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3209c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce320a2:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3210a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce320b8
    bra LAB_ce320ba
    mov 0x3B,r3

LAB_ce320b8:
    mov 0x3A,r3

LAB_ce320ba:
    mov.w @(DAT_ce3210c,pc),r0
    mov 0x00,r4
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
    mov.w @(DAT_ce3210a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce320ec
    mov 0x15,r5
    bra LAB_ce320ee
    mov 0x0B,r6

LAB_ce320ec:
    mov 0x0A,r6

LAB_ce320ee:
    mov.l @(PTR_ce32118,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce320f6:
    mov 0x06,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3210a,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce32124
    bra LAB_ce32126
    mov 0x3F,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32106:
    #data 0x041c
DAT_ce32108:
    #data 0x01f9
DAT_ce3210a:
    #data 0x01a3
DAT_ce3210c:
    #data 0x01a1
    #align4

PTR_ce32110:
    #data loc_8c034dee
PTR_ce32114:
    #data loc_8c0511b4
PTR_ce32118:
    #data loc_8c034e8c
PTR_ce3211c:
    #data loc_8c051648
PTR_ce32120:
    #data loc_8c2896b0

;=============================================

LAB_ce32124:
    mov 0x3E,r3

LAB_ce32126:
    mov.w @(DAT_ce32238,pc),r0
    mov 0x00,r5
    fldi0 fr4
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce32240,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce3223a,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce3216a
    mova @(DAT_ce32244,pc),r0
    bra LAB_ce3216e
    fmov.s @r0,fr3

LAB_ce3216a:
    mova @(DAT_ce32248,pc),r0
    fmov.s @r0,fr3

LAB_ce3216e:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce3223a,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32180
    mova @(DAT_ce3224c,pc),r0
    bra LAB_ce32184
    fmov.s @r0,fr3

LAB_ce32180:
    mova @(DAT_ce32250,pc),r0
    fmov.s @r0,fr3

LAB_ce32184:
    mov.l @(PTR_ce32254,pc),r3
    mov 0x68,r0
    mov 0x19,r6
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x15,r5

LAB_ce32190:
    mov 0x07,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3223c,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce321a0
    bra LAB_ce321a2
    mov 0x41,r3

LAB_ce321a0:
    mov 0x40,r3

LAB_ce321a2:
    mov.w @(DAT_ce32238,pc),r0
    mov 0x00,r5
    fldi0 fr4
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce32240,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce3223a,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce321e6
    mova @(DAT_ce32258,pc),r0
    bra LAB_ce321ea
    fmov.s @r0,fr3

LAB_ce321e6:
    mova @(DAT_ce3225c,pc),r0
    fmov.s @r0,fr3

LAB_ce321ea:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce3223a,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce321fc
    mova @(DAT_ce32260,pc),r0
    bra LAB_ce32200
    fmov.s @r0,fr3

LAB_ce321fc:
    mova @(DAT_ce32264,pc),r0
    fmov.s @r0,fr3

LAB_ce32200:
    mov.l @(PTR_ce32254,pc),r3
    mov 0x68,r0
    mov 0x1A,r6
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x15,r5

LAB_ce3220c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32268,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32270
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3226c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32238:
    #data 0x01a1
DAT_ce3223a:
    #data 0x01d2
DAT_ce3223c:
    #data 0x01a3
    #align4

PTR_ce32240:
    #data loc_8c2896b0
DAT_ce32244:
    #data 0x41200000
DAT_ce32248:
    #data 0xc1200000
DAT_ce3224c:
    #data 0xbea00000
DAT_ce32250:
    #data 0x3ea00000
PTR_ce32254:
    #data loc_8c034e8c
DAT_ce32258:
    #data 0x4162aaaa
DAT_ce3225c:
    #data 0xc162aaaa
DAT_ce32260:
    #data 0xbf3aaaaa
DAT_ce32264:
    #data 0x3f3aaaaa
PTR_ce32268:
    #data loc_8c034dee
PTR_ce3226c:
    #data loc_8c051648

;=============================================

LAB_ce32270:
    mov.w @(DAT_ce3236c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce322b0
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

LAB_ce322b0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce322b6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32370,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce322e2
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32374,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce322e2:
    mov.l @(PTR_ce32378,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3236c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3233a
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf LAB_ce32310
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr2
    fmov.s @(r0,r14),fr1
    fadd fr2,fr1
    fmov fr1,@(r0,r14)

LAB_ce32310:
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

LAB_ce3233a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32340:
    mov r4,r3
    mov.l @(PTR_ce3237c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32352:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3236e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32380
    bra LAB_ce32382
    mov 0x5D,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3236c:
    #data 0x0141
DAT_ce3236e:
    #data 0x01a3
    #align4

PTR_ce32370:
    #data loc_8c034dee
PTR_ce32374:
    #data loc_8c051648
PTR_ce32378:
    #data loc_8c05120e
PTR_ce3237c:
    #data PTR_ce34908

;=============================================

LAB_ce32380:
    mov 0x5C,r3

LAB_ce32382:
    mov.w @(DAT_ce32458,pc),r0
    mov 0x00,r13
    mov 0x05,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32464,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32468,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3246c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3245a,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce32470,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3245c,pc),r0
    mov.b r13,@(r0,r14)
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
    mov.w @(DAT_ce3245e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce323e6
    mov 0x15,r5
    bra LAB_ce323e8
    mov 0x11,r6

LAB_ce323e6:
    mov 0x10,r6

LAB_ce323e8:
    lds.l @r15+,PR
    mov.l @(PTR_ce32474,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce323f4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32478,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3240e
    lds.l @r15+,PR
    mov.l @(PTR_ce3247c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3240e:
    mov.w @(DAT_ce32460,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32426
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x01,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce32480,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32426:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3242c:
    mov r4,r3
    mov.l @(PTR_ce32484,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3243e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3245e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32488
    bra LAB_ce3248a
    mov 0x45,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32458:
    #data 0x01a1
DAT_ce3245a:
    #data 0x041c
DAT_ce3245c:
    #data 0x01f9
DAT_ce3245e:
    #data 0x01a3
DAT_ce32460:
    #data 0x0141
    #align4

PTR_ce32464:
    #data loc_8c2896b0
PTR_ce32468:
    #data loc_8c056de4
PTR_ce3246c:
    #data loc_8c05218a
PTR_ce32470:
    #data loc_8c05115a
PTR_ce32474:
    #data loc_8c034e8c
PTR_ce32478:
    #data loc_8c034dee
PTR_ce3247c:
    #data loc_8c051648
PTR_ce32480:
    #data loc_8c0925b4
PTR_ce32484:
    #data PTR_ce34910

;=============================================

LAB_ce32488:
    mov 0x44,r3

LAB_ce3248a:
    mov.w @(DAT_ce32570,pc),r0
    mov 0x00,r13
    mov 0x05,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3257c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32580,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32584,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32572,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce32588,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32574,pc),r0
    mov.b r13,@(r0,r14)
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
    mov.l @(PTR_ce3258c,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32590,pc),r3
    mov 0x01,r5
    mov r13,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.w @(DAT_ce32576,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce32594,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    add 0x12,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32506:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32598,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32578,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce325e6
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3259c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x0C,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3257a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32542
    mov.w @(DAT_ce32576,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce325a0,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce32552
    nop

LAB_ce32542:
    mov.w @(DAT_ce32576,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce325a0,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce32552:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3257a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce325a8
    mov.w @(DAT_ce32576,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce325a4,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce325b8
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32570:
    #data 0x01a1
DAT_ce32572:
    #data 0x041c
DAT_ce32574:
    #data 0x01f9
DAT_ce32576:
    #data 0x01a3
DAT_ce32578:
    #data 0x0141
DAT_ce3257a:
    #data 0x01d2
    #align4

PTR_ce3257c:
    #data loc_8c2896b0
PTR_ce32580:
    #data loc_8c056de4
PTR_ce32584:
    #data loc_8c05218a
PTR_ce32588:
    #data loc_8c05115a
PTR_ce3258c:
    #data loc_8c0925b4
PTR_ce32590:
    #data loc_8c0dfba0
PTR_ce32594:
    #data loc_8c034e8c
PTR_ce32598:
    #data loc_8c034dee
PTR_ce3259c:
    #data loc_8c053082
PTR_ce325a0:
    #data DAT_ce34920
PTR_ce325a4:
    #data DAT_ce34924

;=============================================

LAB_ce325a8:
    mov.w @(DAT_ce326e2,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce326ec,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce325b8:
    mov 0x68,r0
    mov.l @(PTR_ce326f0,pc),r4
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce326e2,pc),r0
    mov.b @(r0,r14),r3
    mov 0x08,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r4,r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce326e2,pc),r0
    mov.b @(r0,r14),r3
    mov 0x0C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce325e6:
    mov.w @(DAT_ce326e4,pc),r0
    fldi0 fr3
    mov.b @(r0,r14),r3
    extu.b r3,r3
    lds r3,FPUL
    float FPUL,fr4
    fcmp/eq fr3,fr4
    bt LAB_ce32616
    mov 0x00,r1
    mov.b r1,@(r0,r14)
    mova @(DAT_ce326f4,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce326e6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce3260e
    fmul fr3,fr4
    fldi1 fr2
    fneg fr2
    fmul fr2,fr4

LAB_ce3260e:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce32616:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3261c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce326f8,pc),r3
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
    mov.w @(DAT_ce326e6,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bf LAB_ce32672
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32682

LAB_ce32672:
    extu.b r4,r2
    tst r2,r2
    bt LAB_ce3268c
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3268c

LAB_ce32682:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce3268c:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce326a2
    mov.w @(DAT_ce326e8,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fcmp/gt fr2,fr1
    bf LAB_ce326b6

LAB_ce326a2:
    mov.w @(DAT_ce326e2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32704
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32704

LAB_ce326b6:
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce326e8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce326ea,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce326fc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce326e2,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov 0x15,r5
    mov.l @(PTR_ce32700,pc),r3
    add 0x15,r6
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326e2:
    #data 0x01a3
DAT_ce326e4:
    #data 0x014b
DAT_ce326e6:
    #data 0x01d2
DAT_ce326e8:
    #data 0x041c
DAT_ce326ea:
    #data 0x01f9
    #align4

PTR_ce326ec:
    #data DAT_ce34924
PTR_ce326f0:
    #data DAT_ce34920
DAT_ce326f4:
    #data 0x3fd55555
PTR_ce326f8:
    #data loc_8c034dee
PTR_ce326fc:
    #data loc_8c0511b4
PTR_ce32700:
    #data loc_8c034e8c

;=============================================

LAB_ce32704:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3270a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3283c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce32750
    mov.w @(DAT_ce3282c,pc),r0
    fldi0 fr3
    mov.b @(r0,r14),r3
    extu.b r3,r3
    lds r3,FPUL
    float FPUL,fr4
    fcmp/eq fr3,fr4
    bt LAB_ce3276c
    mov 0x00,r1
    mov.b r1,@(r0,r14)
    mova @(DAT_ce32840,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce3282e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32742
    fmul fr3,fr4
    fldi1 fr2
    fneg fr2
    fmul fr2,fr4

LAB_ce32742:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32750:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32844,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3276c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32772:
    mov r4,r3
    mov.l @(PTR_ce32848,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32784:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce3284c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32850,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32830,pc),r0
    mov 0x00,r3
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32832,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32854,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32858,pc),r2
    mov r14,r4
    mov 0x18,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce327d2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3283c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce327ec
    lds.l @r15+,PR
    mov.l @(PTR_ce32844,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce327ec:
    mov.w @(DAT_ce32834,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32814
    mov.l @(PTR_ce3285c,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32814
    mov r0,r5
    mov 0x00,r0
    mov.w @(DAT_ce32836,pc),r3
    mov.b r0,@(0x6,r14)
    mov r14,r4
    mov.w @(DAT_ce32838,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce32860,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32814:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3281a:
    mov r4,r3
    mov.l @(PTR_ce32864,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3282c:
    #data 0x014b
DAT_ce3282e:
    #data 0x01d2
DAT_ce32830:
    #data 0x041c
DAT_ce32832:
    #data 0x01f9
DAT_ce32834:
    #data 0x0141
DAT_ce32836:
    #data 0x00c3
DAT_ce32838:
    #data 0x01f7
    #align4

PTR_ce3283c:
    #data loc_8c034dee
DAT_ce32840:
    #data 0x3fd55555
PTR_ce32844:
    #data loc_8c051648
PTR_ce32848:
    #data PTR_ce34950
PTR_ce3284c:
    #data loc_8c056de4
PTR_ce32850:
    #data loc_8c05218a
PTR_ce32854:
    #data loc_8c05115a
PTR_ce32858:
    #data loc_8c034e8c
PTR_ce3285c:
    #data loc_8c045790
PTR_ce32860:
    #data loc_8c0522e0
PTR_ce32864:
    #data PTR_ce34958

;=============================================

LAB_ce32868:
    mov.w @(DAT_ce329a4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32886
    mov.w @(DAT_ce329a8,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce329a6,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32886:
    mov.b @(0x6,r14),r0
    mov 0x49,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce329aa,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce329bc,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce329c0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce329ac,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce329c4,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce329ae,pc),r0
    mov.b r13,@(r0,r14)
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
    mov r13,r6
    mov.l @(PTR_ce329c8,pc),r2
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce328ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce329b0,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce329b2,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce329a4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3290e
    bra LAB_ce32910
    mov 0x02,r3

LAB_ce3290e:
    mov 0x00,r3

LAB_ce32910:
    mov.w @(DAT_ce329b4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce329cc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce329b6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32954
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce329d8,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce329b6,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce329a8,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce329d0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce329d4,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32954:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3295c:
    mov.w @(DAT_ce329b0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce329b2,pc),r0
    mov.l @(PTR_ce329cc,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce329b6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce329dc
    mov.w @(DAT_ce329b8,pc),r0
    fldi0 fr3
    mov.b @(r0,r14),r3
    extu.b r3,r3
    lds r3,FPUL
    float FPUL,fr4
    fcmp/eq fr3,fr4
    bt LAB_ce32a2a
    mov.w @(DAT_ce329ba,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf/s LAB_ce32998
    mov 0x34,r0
    fneg fr4

LAB_ce32998:
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329a4:
    #data 0x0255
DAT_ce329a6:
    #data 0x00ff
DAT_ce329a8:
    #data 0x03f0
DAT_ce329aa:
    #data 0x01a1
DAT_ce329ac:
    #data 0x041c
DAT_ce329ae:
    #data 0x01f9
DAT_ce329b0:
    #data 0x03f8
DAT_ce329b2:
    #data 0x0328
DAT_ce329b4:
    #data 0x03f1
DAT_ce329b6:
    #data 0x0141
DAT_ce329b8:
    #data 0x014b
DAT_ce329ba:
    #data 0x01d2
    #align4

PTR_ce329bc:
    #data loc_8c2896b0
PTR_ce329c0:
    #data loc_8c05218a
PTR_ce329c4:
    #data loc_8c05115a
PTR_ce329c8:
    #data loc_8c034e8c
PTR_ce329cc:
    #data loc_8c034dee
DAT_ce329d0:
    #data 0xc0a00000
DAT_ce329d4:
    #data 0x4304db6d
PTR_ce329d8:
    #data loc_8c050834

;=============================================

LAB_ce329dc:
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32b04,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32b06,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32a00
    mova @(DAT_ce32b18,pc),r0
    bra LAB_ce32a04
    fmov.s @r0,fr3

LAB_ce32a00:
    mova @(DAT_ce32b1c,pc),r0
    fmov.s @r0,fr3

LAB_ce32a04:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32b06,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32a16
    mova @(DAT_ce32b20,pc),r0
    bra LAB_ce32a1a
    fmov.s @r0,fr3

LAB_ce32a16:
    mova @(DAT_ce32b24,pc),r0
    fmov.s @r0,fr3

LAB_ce32a1a:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32b28,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x28,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32a2a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a30:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32b08,pc),r0
    mov 0x02,r3
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32b0a,pc),r0
    mov.l @(PTR_ce32b2c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce32b30,pc),r12
    add r14,r1
    fldi0 fr15
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
    mov.w @(DAT_ce32b0c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32b4c
    mov 0x00,r13
    mov.l @(PTR_ce32b34,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce32ace
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32b38,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32b0e,pc),r0
    mov 0x20,r3
    mov.l @(r0,r14),r2
    add 0xF0,r0
    mov.b r3,@(r0,r2)
    add 0x10,r0
    mov.l @(r0,r14),r2
    add 0x49,r0
    mov.b r13,@(r0,r2)
    add 0xB7,r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce32b10,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce32b0e,pc),r0
    mov.l @(r0,r14),r3
    add 0x22,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32abe
    mova @(DAT_ce32b3c,pc),r0
    bra LAB_ce32ac2
    fmov.s @r0,fr3

LAB_ce32abe:
    mova @(DAT_ce32b40,pc),r0
    fmov.s @r0,fr3

LAB_ce32ac2:
    mov 0x34,r0
    fmov.s @(r0,r3),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    bra LAB_ce32b6e
    mov 0x01,r6

LAB_ce32ace:
    mov 0x06,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r3
    mov.w @(DAT_ce32b12,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32b14,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32b16,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce32b44,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32b48,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    bra LAB_ce32b6e
    mov r3,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b04:
    #data 0x0141
DAT_ce32b06:
    #data 0x01d2
DAT_ce32b08:
    #data 0x03f8
DAT_ce32b0a:
    #data 0x0328
DAT_ce32b0c:
    #data 0x019e
DAT_ce32b0e:
    #data 0x01b0
DAT_ce32b10:
    #data 0x041c
DAT_ce32b12:
    #data 0x01f9
DAT_ce32b14:
    #data 0x03f9
DAT_ce32b16:
    #data 0x0327
    #align4

DAT_ce32b18:
    #data 0x41055555
DAT_ce32b1c:
    #data 0xc1055555
DAT_ce32b20:
    #data 0x3fa00000
DAT_ce32b24:
    #data 0xbfa00000
DAT_ce32b28:
    #data 0x41ad5555
PTR_ce32b2c:
    #data loc_8c034dee
PTR_ce32b30:
    #data loc_8c034e8c
PTR_ce32b34:
    #data loc_8c05264c
PTR_ce32b38:
    #data loc_8c05218a
DAT_ce32b3c:
    #data 0xc2baaaaa
DAT_ce32b40:
    #data 0x42baaaaa
DAT_ce32b44:
    #data 0x41cdb6db
DAT_ce32b48:
    #data 0xbff00000

;=============================================

LAB_ce32b4c:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32b78
    mov 0x07,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    mov.w @(DAT_ce32c4e,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32c50,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)

LAB_ce32b6e:
    mov 0x16,r5
    jsr @r12
    mov r14,r4
    bra LAB_ce32ba2
    nop

LAB_ce32b78:
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fabs fr3
    fcmp/gt fr3,fr2
    bt LAB_ce32ba2
    mov.w @(DAT_ce32c52,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32b94
    mov 0x60,r0
    bra LAB_ce32b9a
    fmov.s @(r0,r14),fr3

LAB_ce32b94:
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    fneg fr3

LAB_ce32b9a:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce32ba2:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32bae:
    mov.w @(DAT_ce32c54,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32c56,pc),r0
    mov.l @(PTR_ce32c60,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32c58,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32c22
    mov 0x00,r4
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32c5a,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32c58,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32c52,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32bee
    mova @(DAT_ce32c64,pc),r0
    bra LAB_ce32bf2
    fmov.s @r0,fr3

LAB_ce32bee:
    mova @(DAT_ce32c68,pc),r0
    fmov.s @r0,fr3

LAB_ce32bf2:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32c52,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32c04
    mova @(DAT_ce32c6c,pc),r0
    bra LAB_ce32c08
    fmov.s @r0,fr3

LAB_ce32c04:
    mova @(DAT_ce32c70,pc),r0
    fmov.s @r0,fr3

LAB_ce32c08:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32c74,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32c78,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c22:
    mov.w @(DAT_ce32c5c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32cac
    mov.w @(DAT_ce32c5e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32c80
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32c7c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c4e:
    #data 0x03f9
DAT_ce32c50:
    #data 0x0327
DAT_ce32c52:
    #data 0x01d2
DAT_ce32c54:
    #data 0x03f8
DAT_ce32c56:
    #data 0x0328
DAT_ce32c58:
    #data 0x0141
DAT_ce32c5a:
    #data 0x01f9
DAT_ce32c5c:
    #data 0x014b
DAT_ce32c5e:
    #data 0x019e
    #align4

PTR_ce32c60:
    #data loc_8c034dee
DAT_ce32c64:
    #data 0x41555555
DAT_ce32c68:
    #data 0xc1555555
DAT_ce32c6c:
    #data 0xbf12aaaa
DAT_ce32c70:
    #data 0x3f12aaaa
DAT_ce32c74:
    #data 0x41bc9249
DAT_ce32c78:
    #data 0xbf892492
PTR_ce32c7c:
    #data loc_8c051648

;=============================================

LAB_ce32c80:
    mov.w @(DAT_ce32d9e,pc),r0
    mov.l @(PTR_ce32da8,pc),r3
    mov.b @(r0,r14),r2
    add 0x56,r0
    add 0x49,r2
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
    mov.w @(DAT_ce32d9e,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce32cac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32cb2:
    mov.w @(DAT_ce32da0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r8,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32da2,pc),r0
    mov.l @(PTR_ce32dac,pc),r3
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
    mov.w @(DAT_ce32da4,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bf LAB_ce32d18
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32d28

LAB_ce32d18:
    extu.b r4,r2
    tst r2,r2
    bt LAB_ce32d32
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32d32

LAB_ce32d28:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce32d32:
    mov.w @(DAT_ce32d9e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32d66
    mov 0x00,r4
    mov.b @(r0,r14),r3
    add 0x56,r0
    add 0x4D,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32da8,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce32d9e,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce32d66:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32de8
    mov.w @(DAT_ce32da6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32e2c
    mov.b @(r0,r14),r3
    mov 0x34,r8
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32da4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32db4
    add r14,r8
    mov.w @(DAT_ce32da6,pc),r3
    mov.l @(PTR_ce32db0,pc),r1
    add r14,r3
    mov.b @r3,r3
    shll2 r3
    shll r3
    add r3,r1
    fmov.s @r1,fr3
    bra LAB_ce32dc4
    fneg fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d9e:
    #data 0x014b
DAT_ce32da0:
    #data 0x03f8
DAT_ce32da2:
    #data 0x0328
DAT_ce32da4:
    #data 0x01d2
DAT_ce32da6:
    #data 0x0141
    #align4

PTR_ce32da8:
    #data loc_8c2896b0
PTR_ce32dac:
    #data loc_8c034dee
PTR_ce32db0:
    #data DAT_ce34978

;=============================================

LAB_ce32db4:
    mov.w @(DAT_ce32f0a,pc),r3
    mov.l @(PTR_ce32f18,pc),r1
    add r14,r3
    mov.b @r3,r3
    shll2 r3
    shll r3
    add r3,r1
    fmov.s @r1,fr3

LAB_ce32dc4:
    mov.w @(DAT_ce32f0a,pc),r3
    mov 0x38,r0
    fmov.s @r8,fr2
    add r14,r3
    mov.l @(PTR_ce32f1c,pc),r1
    fadd fr3,fr2
    fmov.s fr2,@r8
    mov.b @r3,r3
    fmov.s @(r0,r14),fr2
    shll2 r3
    shll r3
    add r3,r1
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce32f0a,pc),r0
    bra LAB_ce32e2c
    mov.b r4,@(r0,r14)

LAB_ce32de8:
    mov.w @(DAT_ce32f0c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32e2c
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32f20,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32f0c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32f0e,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32f10,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32f12,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32f24,pc),r2
    mov 0x03,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r8
    jmp @r2
    mov.l @r15+,r14

LAB_ce32e2c:
    lds.l @r15+,PR
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

LAB_ce32e34:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32f28,pc),r3
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
    mov.w @(DAT_ce32f0c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32eaa
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32f0c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32f0e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32f20,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32f24,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32eaa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32eb0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32f28,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32edc
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32f2c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32edc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ee2:
    mov r4,r3
    mov.l @(PTR_ce32f30,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32ef4:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32f34,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32f14,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f0a:
    #data 0x0141
DAT_ce32f0c:
    #data 0x041c
DAT_ce32f0e:
    #data 0x01f9
DAT_ce32f10:
    #data 0x03f9
DAT_ce32f12:
    #data 0x0327
DAT_ce32f14:
    #data 0x02a4
    #align4

PTR_ce32f18:
    #data DAT_ce34978
PTR_ce32f1c:
    #data DAT_ce3497c
PTR_ce32f20:
    #data loc_8c0511b4
PTR_ce32f24:
    #data loc_8c034e8c
PTR_ce32f28:
    #data loc_8c034dee
PTR_ce32f2c:
    #data loc_8c051648
PTR_ce32f30:
    #data PTR_ce34988
PTR_ce32f34:
    #data PTR_ce34990

;=============================================

LAB_ce32f38:
    mov.w @(DAT_ce33088,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32f56
    mov.w @(DAT_ce3308c,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3308a,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32f56:
    mov.b @(0x7,r14),r0
    mov 0x50,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3308e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3309c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce330a0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33090,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce330a4,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33092,pc),r0
    mov.b r13,@(r0,r14)
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
    mov.l @(PTR_ce330a8,pc),r2
    mov 0x04,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32fbc:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce33094,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33096,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33088,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32fe4
    bra LAB_ce32fe6
    mov 0x02,r3

LAB_ce32fe4:
    mov 0x00,r3

LAB_ce32fe6:
    mov.w @(DAT_ce33098,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce330ac,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3309a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3307c
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3309a,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3308c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.l @r15,r3
    mov r4,r0
    nop
    mov.b r0,@(0x8,r3)
    mov.l @r15,r3
    mov r4,r0
    nop
    mov.l @(PTR_ce330b0,pc),r2
    mov 0x04,r1
    mov.b r0,@(0x9,r3)
    mov.w @r2,r3
    cmp/ge r1,r3
    bt/s LAB_ce33042
    fldi0 fr15
    mov 0x5C,r0
    mov.l @(PTR_ce330b4,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce3307c
    nop

LAB_ce33042:
    mov.l @(PTR_ce330b8,pc),r13
    mov 0x03,r5
    jsr @r13
    mov r14,r4
    mov 0x02,r5
    jsr @r13
    mov r14,r4
    mov 0x01,r5
    jsr @r13
    mov r14,r4
    mov 0x00,r5
    jsr @r13
    mov r14,r4
    mova @(DAT_ce330bc,pc),r0
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce330c4,pc),r3
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce330c0,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    mov 0x01,r6
    fmov fr3,@(r0,r15)
    mov 0x0C,r0
    fmov fr15,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce3307c:
    add 0x10,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33088:
    #data 0x0255
DAT_ce3308a:
    #data 0x00ff
DAT_ce3308c:
    #data 0x03f0
DAT_ce3308e:
    #data 0x01a1
DAT_ce33090:
    #data 0x041c
DAT_ce33092:
    #data 0x01f9
DAT_ce33094:
    #data 0x03f8
DAT_ce33096:
    #data 0x0328
DAT_ce33098:
    #data 0x03f1
DAT_ce3309a:
    #data 0x0141
    #align4

PTR_ce3309c:
    #data loc_8c2896b0
PTR_ce330a0:
    #data loc_8c05218a
PTR_ce330a4:
    #data loc_8c05115a
PTR_ce330a8:
    #data loc_8c034e8c
PTR_ce330ac:
    #data loc_8c034dee
PTR_ce330b0:
    #data loc_8c287ae8
PTR_ce330b4:
    #data loc_8c051648
PTR_ce330b8:
    #data loc_8c093210
DAT_ce330bc:
    #data 0xbfd55555
DAT_ce330c0:
    #data 0x4302b6db
PTR_ce330c4:
    #data loc_8c050834

;=============================================

LAB_ce330c8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce331b2,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce331b4,pc),r0
    mov.l @(PTR_ce331bc,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r0
    mov.b @(0x8,r0),r0
    cmp/eq 0x00,r0
    bt LAB_ce33132
    cmp/eq 0x01,r0
    bt LAB_ce330f8
    cmp/eq 0x02,r0
    bt LAB_ce33112
    bra LAB_ce3311a
    nop

LAB_ce330f8:
    mov.b @(0x7,r14),r0
    mov 0x16,r5
    mov r14,r4
    mov 0x05,r6
    add 0x02,r0
    mov.b r0,@(0x7,r14)
    mov 0x17,r0
    mov.w r0,@(0x1c,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce331c0,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33112:
    mov.l @(PTR_ce331c4,pc),r3
    mov 0x17,r5
    jsr @r3
    mov r14,r4

LAB_ce3311a:
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce331b6,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce331b8,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce33132:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3313a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce331bc,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0x8,r2),r0
    cmp/pz r0
    bt LAB_ce33170
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov r14,r4
    fmov fr4,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce331c8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33170:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33178:
    mov.w @(DAT_ce331b2,pc),r0
    mov 0x02,r3
    mov 0x05,r6
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce331b4,pc),r0
    mov.b r6,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce331ae
    mov.b @(0x7,r4),r0
    mov.l @(PTR_ce331cc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r4)
    mov 0x01,r0
    mov.b r0,@(0x9,r5)
    mov 0x00,r0
    mov.w r0,@(0x1e,r4)
    mov 0x22,r0
    mov.b r6,@(r0,r4)
    mov 0x00,r6
    jmp @r3
    mov 0x02,r5

LAB_ce331ae:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331b2:
    #data 0x03f8
DAT_ce331b4:
    #data 0x0328
DAT_ce331b6:
    #data 0x03f9
DAT_ce331b8:
    #data 0x0327
    #align4

PTR_ce331bc:
    #data loc_8c034dee
PTR_ce331c0:
    #data loc_8c034e8c
PTR_ce331c4:
    #data loc_8c042008
PTR_ce331c8:
    #data loc_8c051648
PTR_ce331cc:
    #data loc_8c0dfba0

;=============================================

LAB_ce331d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce332da,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce332dc,pc),r0
    mov.l @(PTR_ce332e4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x22,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3321e
    mov.l @(PTR_ce332e8,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce3321e
    mov.w @(0x1e,r14),r0
    mov 0x04,r3
    add 0x01,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1e,r14),r0
    cmp/gt r3,r0
    bf LAB_ce3321e
    mov 0x00,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1c,r14),r0
    add r3,r0
    mov.w r0,@(0x1c,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce3321e:
    mov.l @(PTR_ce332ec,pc),r1
    mov 0x05,r2
    mov.b @r1,r3
    extu.b r3,r3
    cmp/ge r2,r3
    bt LAB_ce33236
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33256

LAB_ce33236:
    mov.b @(0x7,r14),r0
    mov 0x16,r5
    mov r14,r4
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x02,r0
    mov.l @r15,r3
    mov.b r0,@(0x9,r3)
    mov 0x18,r0
    mov.w r0,@(0x1c,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce332f0,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33256:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3325e:
    mov.w @(DAT_ce332da,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce332dc,pc),r0
    mov.b r2,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33292
    mov.b @(0x7,r4),r0
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov 0x03,r0
    mov.b r0,@(0x9,r5)
    mov 0x00,r5
    mov.w @(DAT_ce332de,pc),r0
    mov.b r5,@(r0,r4)
    add 0xFF,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce332e0,pc),r0
    mov.b r5,@(r0,r4)
    add 0x01,r0
    mov.b r5,@(r0,r4)

LAB_ce33292:
    rts
    nop

LAB_ce33296:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce332e4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce332c2
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce332f4,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce332c2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce332c8:
    mov r4,r3
    mov.l @(PTR_ce332f8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce332da:
    #data 0x03f8
DAT_ce332dc:
    #data 0x0328
DAT_ce332de:
    #data 0x03f9
DAT_ce332e0:
    #data 0x0327
    #align4

PTR_ce332e4:
    #data loc_8c034dee
PTR_ce332e8:
    #data loc_8c055d54
PTR_ce332ec:
    #data loc_8c2895f0
PTR_ce332f0:
    #data loc_8c034e8c
PTR_ce332f4:
    #data loc_8c051648
PTR_ce332f8:
    #data PTR_ce349b0

;=============================================

LAB_ce332fc:
    mov.w @(DAT_ce3343c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3331a
    mov.w @(DAT_ce33440,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3343e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3331a:
    mov.b @(0x6,r14),r0
    mov 0x52,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33442,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33450,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33454,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33444,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce33458,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33446,pc),r0
    mov.b r13,@(r0,r14)
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
    mov.l @(PTR_ce3345c,pc),r2
    mov 0x0A,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33380:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33448,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3344a,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3343c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce333a2
    bra LAB_ce333a4
    mov 0x02,r3

LAB_ce333a2:
    mov 0x00,r3

LAB_ce333a4:
    mov.w @(DAT_ce3344c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33460,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3344e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce333f2
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce33464,pc),r3
    mov 0x01,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0D,r6
    mov.w @(DAT_ce3344e,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33440,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33468,pc),r0
    mov.l @(PTR_ce33470,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce3346c,pc),r0
    mov r15,r5
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

LAB_ce333f2:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce333fa:
    mov.w @(DAT_ce33448,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3344a,pc),r0
    mov.l @(PTR_ce33460,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3344e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33436
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x04,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3344e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33474,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x68,r0
    mov.w r0,@(0x1c,r14)
    mov 0x1B,r0
    mov.w r0,@(0x1e,r14)

LAB_ce33436:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3343c:
    #data 0x0255
DAT_ce3343e:
    #data 0x00ff
DAT_ce33440:
    #data 0x03f0
DAT_ce33442:
    #data 0x01a1
DAT_ce33444:
    #data 0x041c
DAT_ce33446:
    #data 0x01f9
DAT_ce33448:
    #data 0x03f8
DAT_ce3344a:
    #data 0x0328
DAT_ce3344c:
    #data 0x03f1
DAT_ce3344e:
    #data 0x0141
    #align4

PTR_ce33450:
    #data loc_8c2896b0
PTR_ce33454:
    #data loc_8c05218a
PTR_ce33458:
    #data loc_8c05115a
PTR_ce3345c:
    #data loc_8c034e8c
PTR_ce33460:
    #data loc_8c034dee
PTR_ce33464:
    #data loc_8c02fec4
DAT_ce33468:
    #data 0xc2855555
DAT_ce3346c:
    #data 0x41bc9249
PTR_ce33470:
    #data loc_8c050834
PTR_ce33474:
    #data loc_8c0925b4

;=============================================

LAB_ce33478:
    mov.w @(DAT_ce335a0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce335a2,pc),r0
    mov.l @(PTR_ce335b0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce334cc
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce335b4,pc),r3
    mov 0x0B,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    mov.w @(DAT_ce335a4,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce335a6,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce334cc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce334d2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce335b0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce334f2
    mov.l @(PTR_ce335b8,pc),r3
    jsr @r3
    nop
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce335bc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce334f2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce334fa:
    mov r4,r3
    mov.l @(PTR_ce335c0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3350c:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov 0x01,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
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
    mov.w @(DAT_ce335a8,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce335aa,pc),r0
    mov.l @(PTR_ce335c4,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce335c8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce335cc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce335ac,pc),r0
    mov 0x47,r2
    mov 0x00,r4
    mov.l @(PTR_ce335d0,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov 0x1B,r6
    mov.l @r3,r2
    mov 0x15,r5
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce335b4,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce33580:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce335b0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce335d4
    mov.l @(PTR_ce335bc,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce335a0:
    #data 0x03f8
DAT_ce335a2:
    #data 0x0328
DAT_ce335a4:
    #data 0x03f9
DAT_ce335a6:
    #data 0x0327
DAT_ce335a8:
    #data 0x01f9
DAT_ce335aa:
    #data 0x041c
DAT_ce335ac:
    #data 0x01a1
    #align4

PTR_ce335b0:
    #data loc_8c034dee
PTR_ce335b4:
    #data loc_8c034e8c
PTR_ce335b8:
    #data loc_8c02fd26
PTR_ce335bc:
    #data loc_8c051648
PTR_ce335c0:
    #data PTR_ce349c4
PTR_ce335c4:
    #data loc_8c035162
PTR_ce335c8:
    #data loc_8c05218a
PTR_ce335cc:
    #data loc_8c05115a
PTR_ce335d0:
    #data loc_8c2896b0

;=============================================

LAB_ce335d4:
    mov.w @(DAT_ce336f4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt/s LAB_ce33602
    mov 0x00,r4
    mov.w @(DAT_ce336f4,pc),r0
    mov r15,r5
    mov.l @(PTR_ce33704,pc),r3
    mov.b r4,@(r0,r14)
    mova @(DAT_ce336fc,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33700,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    bra LAB_ce33616
    nop

LAB_ce33602:
    mov.w @(DAT_ce336f4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce33616
    mov.w @(DAT_ce336f4,pc),r0
    mov 0x16,r5
    mov.l @(PTR_ce33708,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce33616:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3361e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce33644
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov r14,r4
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce336f6,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce3370c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33644:
    mov.l @(PTR_ce33710,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33674
    mov.l @(PTR_ce33714,pc),r3
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
    mov.l @(PTR_ce33718,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33674:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3367a:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce336f8,pc),r1
    mov.l @(PTR_ce3371c,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce33692:
    mov.w @(DAT_ce336fa,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(r0,r14),r3
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    cmp/pl r0
    bf LAB_ce336ae
    mov.w @(DAT_ce336fa,pc),r0
    mov r14,r5
    mov.l @(PTR_ce33720,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce336ae:
    mov.w @(DAT_ce336fa,pc),r0
    mov r14,r5
    mov.l @(PTR_ce33724,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce336ba:
    mov.w @(DAT_ce336fa,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33724,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce336c8:
    mov.w @(DAT_ce336fa,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(r0,r14),r3
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    cmp/pl r0
    bf LAB_ce336e4
    mov.w @(DAT_ce336fa,pc),r0
    mov r14,r5
    mov.l @(PTR_ce33724,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce336e4:
    mov.w @(DAT_ce336fa,pc),r0
    mov r14,r5
    mov.l @(PTR_ce33720,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce336f0:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce336f4:
    #data 0x0141
DAT_ce336f6:
    #data 0x01f9
DAT_ce336f8:
    #data 0x01f7
DAT_ce336fa:
    #data 0x01c8
    #align4

DAT_ce336fc:
    #data 0xc25c0000
DAT_ce33700:
    #data 0x42676db6
PTR_ce33704:
    #data loc_8c050ea4
PTR_ce33708:
    #data loc_8c04223a
PTR_ce3370c:
    #data loc_8c034e8c
PTR_ce33710:
    #data loc_8c034dee
PTR_ce33714:
    #data loc_8c035162
PTR_ce33718:
    #data loc_8c051648
PTR_ce3371c:
    #data PTR_ce349cc
PTR_ce33720:
    #data loc_8c04ce3a
PTR_ce33724:
    #data loc_8c04cc1c

;=============================================

LAB_ce33728:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33834,pc),r1
    mov.l @(PTR_ce33840,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce33740:
    mov.w @(DAT_ce33836,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33838,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce337b0
    mov.w @(DAT_ce3383a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33780
    mov.w @(DAT_ce3383c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33780
    mov.l @(PTR_ce33844,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce337b0
    mov r0,r4
    bra LAB_ce337a2
    mov 0x00,r2

LAB_ce33780:
    mov.w @(DAT_ce3383a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce337b0
    mov.w @(DAT_ce3383c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce337b0
    mov.l @(PTR_ce33844,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce337b0
    mov r0,r4
    mov 0x01,r2

LAB_ce337a2:
    mov.w @(DAT_ce3383e,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce337b0:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce337b8:
    rts
    mov 0x00,r0

LAB_ce337bc:
    mov.w @(DAT_ce33836,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33838,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33814
    mov.w @(DAT_ce3383a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33814
    mov.w @(DAT_ce3383c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33814
    mova @(DAT_ce33848,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce33814
    mov.l @(PTR_ce33844,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33814
    mov r0,r4
    mov.w @(DAT_ce3383e,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33814:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3381c:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce3383e,pc),r1
    mov.l @(PTR_ce3384c,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33834:
    #data 0x01f9
DAT_ce33836:
    #data 0x01fa
DAT_ce33838:
    #data 0x0c00
DAT_ce3383a:
    #data 0x01fe
DAT_ce3383c:
    #data 0x01a3
DAT_ce3383e:
    #data 0x01f7
    #align4

PTR_ce33840:
    #data PTR_ce349e0
PTR_ce33844:
    #data loc_8c045790
DAT_ce33848:
    #data 0x43092492
PTR_ce3384c:
    #data PTR_ce349f0

;=============================================

LAB_ce33850:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33950,pc),r3
    mov 0x06,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.l @(PTR_ce33954,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3394a,pc),r0
    mov 0x0A,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33958,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3395c,pc),r0
    mov.l @(PTR_ce33960,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33964,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3389a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33950,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.l @(PTR_ce33954,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3394a,pc),r0
    mov 0x0A,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33958,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3395c,pc),r0
    mov.l @(PTR_ce33960,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33964,pc),r2
    mov 0x0F,r5
    mov 0x02,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce338e4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33950,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.l @(PTR_ce33954,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3394a,pc),r0
    mov 0x0A,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33968,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3396c,pc),r0
    mov.l @(PTR_ce33960,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf/s LAB_ce3393a
    mov 0x04,r6
    mov.w @(DAT_ce3394c,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3394e,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce3393a:
    mov.l @(PTR_ce33964,pc),r3
    mov 0x0F,r5
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3394a:
    #data 0x01a0
DAT_ce3394c:
    #data 0x01d2
DAT_ce3394e:
    #data 0x0130
    #align4

PTR_ce33950:
    #data loc_8c02fec4
PTR_ce33954:
    #data loc_8c056f2a
DAT_ce33958:
    #data 0xc2a00000
DAT_ce3395c:
    #data 0x43009249
PTR_ce33960:
    #data loc_8c103660
PTR_ce33964:
    #data loc_8c034e8c
DAT_ce33968:
    #data 0xc25c0000
DAT_ce3396c:
    #data 0x42ebb6db

;=============================================

LAB_ce33970:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.l @(PTR_ce33aa8,pc),r3
    mov 0x06,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.w @(DAT_ce33a98,pc),r0
    mov 0x0A,r2
    mov r15,r5
    mov.l @(PTR_ce33ab4,pc),r3
    mov.b r2,@(r0,r14)
    mova @(DAT_ce33aac,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce33ab0,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov 0x0C,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33a9a,pc),r0
    mov.w @(DAT_ce33a9c,pc),r3
    mov.l @(r0,r14),r4
    mov 0x00,r0
    mov.l @(DAT_ce33ab8,pc),r2
    mov.l r4,@r15
    add r3,r4
    mov.l @(0x4,r4),r1
    and r2,r1
    or r0,r1
    tst r1,r1
    bt/s LAB_ce339d2
    mov 0x06,r6
    mov.w @(DAT_ce33a9a,pc),r0
    mov.l @(r0,r14),r3
    mova @(DAT_ce33abc,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce33a9e,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r3)

LAB_ce339d2:
    mov.l @(PTR_ce33ac0,pc),r3
    mov 0x0F,r5
    jsr @r3
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce339e2:
    mov.w @(DAT_ce33aa0,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33ac4,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33a00:
    mov r4,r3
    mov.l @(PTR_ce33ac8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33a12:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33acc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33aa2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33a90
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x03,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33aa2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33ad0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33ad4,pc),r3
    mov 0x30,r5
    mov.w @(DAT_ce33a9a,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    mov 0x78,r0
    mov.w r0,@(0x1c,r14)
    mov 0x00,r0
    mov.w r0,@(0x1e,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf LAB_ce33a68
    mov.w @(DAT_ce33aa4,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33aa6,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce33a68:
    mov.w @(DAT_ce33a9a,pc),r0
    mov.w @(DAT_ce33a9c,pc),r3
    mov.l @(r0,r14),r4
    mov.l @(DAT_ce33ab8,pc),r0
    mov.l r4,@r15
    add r3,r4
    mov.l @(0x4,r4),r3
    mov.l @(DAT_ce33ad8,pc),r2
    mov.l @r4,r1
    and r0,r3
    and r2,r1
    or r3,r1
    tst r1,r1
    bf LAB_ce33a90
    mov.w @(DAT_ce33a9a,pc),r0
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce33a9e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r3)

LAB_ce33a90:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a98:
    #data 0x01a0
DAT_ce33a9a:
    #data 0x01c8
DAT_ce33a9c:
    #data 0x0414
DAT_ce33a9e:
    #data 0x041c
DAT_ce33aa0:
    #data 0x01ea
DAT_ce33aa2:
    #data 0x0141
DAT_ce33aa4:
    #data 0x01d2
DAT_ce33aa6:
    #data 0x0130
    #align4

PTR_ce33aa8:
    #data loc_8c02fec4
DAT_ce33aac:
    #data 0xc2f00000
DAT_ce33ab0:
    #data 0x42f00000
PTR_ce33ab4:
    #data loc_8c103660
DAT_ce33ab8:
    #data 0x04000000
DAT_ce33abc:
    #data 0x42892492
PTR_ce33ac0:
    #data loc_8c034e8c
PTR_ce33ac4:
    #data PTR_ce34a00
PTR_ce33ac8:
    #data PTR_ce34a10
PTR_ce33acc:
    #data loc_8c034dee
PTR_ce33ad0:
    #data loc_8c05064e
PTR_ce33ad4:
    #data loc_8c050552
DAT_ce33ad8:
    #data 0x20000000

;=============================================

LAB_ce33adc:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33bb8,pc),r3
    mov r4,r14
    mov.w @(DAT_ce33bae,pc),r0
    jsr @r3
    mov.l @(r0,r14),r13
    mov.l @(PTR_ce33bbc,pc),r2
    mov 0x01,r12
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce33b00
    mov.w @(DAT_ce33bb0,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce33b00:
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf LAB_ce33b38
    mov.l @(PTR_ce33bc0,pc),r3
    mov.w @(DAT_ce33bae,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    tst r0,r0
    bf LAB_ce33b32
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf LAB_ce33b38
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce33b32
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf LAB_ce33b38
    mov.w @(DAT_ce33bb2,pc),r0
    mov.w @(r0,r13),r3
    tst r3,r3
    bf LAB_ce33b38

LAB_ce33b32:
    mov r12,r0
    nop
    mov.w r0,@(0x1e,r14)

LAB_ce33b38:
    mov.w @(DAT_ce33bb4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33ba2
    mov.b @(r0,r14),r2
    cmp/pl r2
    bf LAB_ce33b8c
    mov.b @(r0,r14),r3
    tst r12,r3
    bt LAB_ce33b50
    bra LAB_ce33b52
    mov 0x21,r2

LAB_ce33b50:
    mov 0x22,r2

LAB_ce33b52:
    mov.w @(DAT_ce33bb6,pc),r0
    mov.l @(PTR_ce33bc4,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33bc8,pc),r2
    mov 0x0F,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33bb4,pc),r0
    mov 0x00,r3
    mov r15,r5
    mov 0x01,r6
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33bcc,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33bd0,pc),r0
    mov.l @(PTR_ce33bd4,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    bra LAB_ce33ba2
    nop

LAB_ce33b8c:
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce33ba2
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce33bd8,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce33ba2:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33bae:
    #data 0x01c8
DAT_ce33bb0:
    #data 0x0142
DAT_ce33bb2:
    #data 0x0420
DAT_ce33bb4:
    #data 0x0141
DAT_ce33bb6:
    #data 0x01a1
    #align4

PTR_ce33bb8:
    #data loc_8c034dee
PTR_ce33bbc:
    #data loc_8c050682
PTR_ce33bc0:
    #data loc_8c050610
PTR_ce33bc4:
    #data loc_8c05933c
PTR_ce33bc8:
    #data loc_8c04223a
DAT_ce33bcc:
    #data 0xc2dc0000
DAT_ce33bd0:
    #data 0x430b4924
PTR_ce33bd4:
    #data loc_8c0fdab6
PTR_ce33bd8:
    #data loc_8c034e8c

;=============================================

LAB_ce33bdc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33d10,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33d06,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33c84
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x00,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x6,r14)
    mov 0x20,r2
    mov.w @(DAT_ce33d06,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce33d08,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.l @(PTR_ce33d14,pc),r3
    mov.b r2,@(r0,r4)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33d0a,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    add 0xD9,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33c2c
    mova @(DAT_ce33d18,pc),r0
    bra LAB_ce33c30
    fmov.s @r0,fr3

LAB_ce33c2c:
    mova @(DAT_ce33d1c,pc),r0
    fmov.s @r0,fr3

LAB_ce33c30:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33d0c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33c42
    mova @(DAT_ce33d20,pc),r0
    bra LAB_ce33c46
    fmov.s @r0,fr3

LAB_ce33c42:
    mova @(DAT_ce33d24,pc),r0
    fmov.s @r0,fr3

LAB_ce33c46:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33d28,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33d2c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33d30,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce33d0c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33c6e
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce33c74
    fadd fr4,fr3

LAB_ce33c6e:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fsub fr4,fr3

LAB_ce33c74:
    mov.l @(DAT_ce33d34,pc),r1
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    lds r1,FPUL
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce33c84:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33c8a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33d10,pc),r3
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
    bt/s LAB_ce33d00
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce33d0e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33d00
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r5
    mov.w @(DAT_ce33d0e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33d0a,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce33d38,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33d00:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33d06:
    #data 0x0141
DAT_ce33d08:
    #data 0x01c8
DAT_ce33d0a:
    #data 0x01f9
DAT_ce33d0c:
    #data 0x01d2
DAT_ce33d0e:
    #data 0x041c
    #align4

PTR_ce33d10:
    #data loc_8c034dee
PTR_ce33d14:
    #data loc_8c02fec4
DAT_ce33d18:
    #data 0xc0d55555
DAT_ce33d1c:
    #data 0x40d55555
DAT_ce33d20:
    #data 0x3d055555
DAT_ce33d24:
    #data 0xbd055555
DAT_ce33d28:
    #data 0x419a4924
DAT_ce33d2c:
    #data 0xbfc52492
DAT_ce33d30:
    #data 0x42555555
DAT_ce33d34:
    #data 0x424db6db
PTR_ce33d38:
    #data loc_8c034e8c

;=============================================

LAB_ce33d3c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33e20,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33d68
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33e24,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33d68:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33d6e:
    mov r4,r3
    mov.l @(PTR_ce33e28,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33d80:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33e20,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33e16,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33dba
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33e16,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bf LAB_ce33dba
    mov.w @(DAT_ce33e18,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33e1a,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce33dba:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33dc0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33e20,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33e16,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33e10
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x02,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33e16,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33e1c,pc),r0
    mov.b r2,@(r0,r14)
    add 0xD9,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33df2
    mova @(DAT_ce33e2c,pc),r0
    bra LAB_ce33df6
    fmov.s @r0,fr3

LAB_ce33df2:
    mova @(DAT_ce33e30,pc),r0
    fmov.s @r0,fr3

LAB_ce33df6:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33e34,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33e38,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce33e10:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33e16:
    #data 0x0141
DAT_ce33e18:
    #data 0x01d2
DAT_ce33e1a:
    #data 0x0130
DAT_ce33e1c:
    #data 0x01f9
    #align4

PTR_ce33e20:
    #data loc_8c034dee
PTR_ce33e24:
    #data loc_8c051648
PTR_ce33e28:
    #data PTR_ce34a24
DAT_ce33e2c:
    #data 0xc1200000
DAT_ce33e30:
    #data 0x41200000
DAT_ce33e34:
    #data 0x41092492
DAT_ce33e38:
    #data 0xbf092492

;=============================================

LAB_ce33e3c:
    mov.w @(DAT_ce33f6c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33e50
    mov.l @(PTR_ce33f78,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce33e50:
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
    mov.w @(DAT_ce33f6e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33eb2
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33f6e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33f70,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce33f7c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33eb2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33eb8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33f78,pc),r3
    jsr @r3
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x23,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r6
    mov.w @(DAT_ce33f72,pc),r0
    mov r6,r5
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.l @(PTR_ce33f80,pc),r3
    mov.b r2,@(r0,r4)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33eea:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33f78,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33f22
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.w @(DAT_ce33f76,pc),r1
    mov 0x0F,r5
    add 0x01,r0
    mov.w @(DAT_ce33f74,pc),r2
    mov.b r0,@(0x6,r14)
    add r14,r1
    mov.w @(DAT_ce33f74,pc),r0
    add r14,r2
    mov.l @(PTR_ce33f84,pc),r3
    mov 0x03,r6
    mov.b @(r0,r14),r0
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33f22:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33f28:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33f78,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33f54
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33f88,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33f54:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33f5a:
    mov r4,r3
    mov.l @(PTR_ce33f8c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33f6c:
    #data 0x0141
DAT_ce33f6e:
    #data 0x041c
DAT_ce33f70:
    #data 0x01f9
DAT_ce33f72:
    #data 0x01c8
DAT_ce33f74:
    #data 0x01d2
DAT_ce33f76:
    #data 0x0130
    #align4

PTR_ce33f78:
    #data loc_8c034dee
PTR_ce33f7c:
    #data loc_8c0511b4
PTR_ce33f80:
    #data loc_8c02fec4
PTR_ce33f84:
    #data loc_8c034e8c
PTR_ce33f88:
    #data loc_8c051648
PTR_ce33f8c:
    #data PTR_ce34a3c

;=============================================

LAB_ce33f90:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce340d0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce340c4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33fd0
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x24,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r6
    mov.w @(DAT_ce340c4,pc),r0
    mov r6,r5
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce340c6,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.l @(PTR_ce340d4,pc),r3
    mov.b r2,@(r0,r4)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33fd0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33fd6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce340d0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce340c4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34048
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
    mov.w @(DAT_ce340c8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3400e
    mova @(DAT_ce340d8,pc),r0
    bra LAB_ce34012
    fmov.s @r0,fr3

LAB_ce3400e:
    mova @(DAT_ce340dc,pc),r0
    fmov.s @r0,fr3

LAB_ce34012:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce340e0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce340e4,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce340c8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34032
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce34038
    fsub fr4,fr3

LAB_ce34032:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3

LAB_ce34038:
    mov.l @(DAT_ce340e8,pc),r1
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    lds r1,FPUL
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce34048:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3404e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce340d0,pc),r3
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
    mov.w @(DAT_ce340ca,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce340be
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    mov.w @(DAT_ce340ca,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce340cc,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce340ec,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce340be:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce340c4:
    #data 0x0141
DAT_ce340c6:
    #data 0x01c8
DAT_ce340c8:
    #data 0x01d2
DAT_ce340ca:
    #data 0x041c
DAT_ce340cc:
    #data 0x01f9
    #align4

PTR_ce340d0:
    #data loc_8c034dee
PTR_ce340d4:
    #data loc_8c02fec4
DAT_ce340d8:
    #data 0xc0555555
DAT_ce340dc:
    #data 0x40555555
DAT_ce340e0:
    #data 0xbf700000
DAT_ce340e4:
    #data 0x42200000
DAT_ce340e8:
    #data 0x41cdb6db
PTR_ce340ec:
    #data loc_8c034e8c

;=============================================

LAB_ce340f0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34218,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3411c
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3421c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3411c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34122:
    mov r4,r3
    mov.l @(PTR_ce34220,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34134:
    mov.l r14,@-r15
    mov.l r8,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34218,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34210,pc),r0
    mov.b @(r0,r14),r2
    cmp/pl r2
    bf LAB_ce34180
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov 0x26,r3
    mov.w @(DAT_ce34212,pc),r0
    mov.l @(r0,r14),r4
    add 0xD9,r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce34224,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce34228,pc),r0
    fldi0 fr4
    mov.l @(PTR_ce3422c,pc),r3
    mov r15,r5
    mov 0x01,r6
    fmov.s fr4,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34230,pc),r2
    mov 0x0F,r5
    jsr @r2
    mov r14,r4

LAB_ce34180:
    mov.w @(DAT_ce34210,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce341c6
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r3,r5
    mov r3,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34210,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34234,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34214,pc),r0
    mov 0x34,r8
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce341b2
    add r14,r8
    mov.l @(DAT_ce34238,pc),r1
    lds r1,FPUL
    bra LAB_ce341b8
    fsts FPUL,fr3

LAB_ce341b2:
    mov.l @(DAT_ce3423c,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce341b8:
    fmov.s @r8,fr2
    mov.w @(DAT_ce34216,pc),r0
    fadd fr3,fr2
    fmov.s fr2,@r8
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce341c6:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

LAB_ce341d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34218,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34210,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3420a
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x25,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r6
    mov.w @(DAT_ce34212,pc),r0
    mov r6,r5
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.l @(PTR_ce34234,pc),r3
    mov.b r2,@(r0,r4)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3420a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34210:
    #data 0x0141
DAT_ce34212:
    #data 0x01c8
DAT_ce34214:
    #data 0x01d2
DAT_ce34216:
    #data 0x041c
    #align4

PTR_ce34218:
    #data loc_8c034dee
PTR_ce3421c:
    #data loc_8c051648
PTR_ce34220:
    #data PTR_ce34a4c
PTR_ce34224:
    #data loc_8c05933c
DAT_ce34228:
    #data 0xc0cdb6db
PTR_ce3422c:
    #data loc_8c0fdab6
PTR_ce34230:
    #data loc_8c04223a
PTR_ce34234:
    #data loc_8c02fec4
DAT_ce34238:
    #data 0x4326aaaa
DAT_ce3423c:
    #data 0xc326aaaa

;=============================================

LAB_ce34240:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34394,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3426c
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce34398,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3426c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34272:
    mov r4,r3
    mov.l @(PTR_ce3439c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34284:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce343a0,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3438e,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce343a4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34390,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce342b4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce342b4:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce343a8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x46,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce343ac,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce34392,pc),r0
    mov r4,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce343b0,pc),r3
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
    mov.l @(PTR_ce343b4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce342fe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34394,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce343b8,pc),r3
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
    bt LAB_ce34366
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce343bc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce343b4,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce34366:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3436c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34394,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce343c4
    mov.l @(PTR_ce343a0,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce343c0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3438e:
    #data 0x01f9
DAT_ce34390:
    #data 0x01d2
DAT_ce34392:
    #data 0x01a1
    #align4

PTR_ce34394:
    #data loc_8c034dee
PTR_ce34398:
    #data loc_8c051648
PTR_ce3439c:
    #data PTR_ce34a58
PTR_ce343a0:
    #data loc_8c035162
DAT_ce343a4:
    #data 0x41f00000
DAT_ce343a8:
    #data 0x40892492
DAT_ce343ac:
    #data 0xbf4db6db
PTR_ce343b0:
    #data loc_8c2896b0
PTR_ce343b4:
    #data loc_8c034e8c
PTR_ce343b8:
    #data loc_8c052ce2
PTR_ce343bc:
    #data loc_8c0511b4
PTR_ce343c0:
    #data loc_8c051854

;=============================================

LAB_ce343c4:
    mov.w @(DAT_ce3449e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce343d0
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce343d0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce343d6:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce344a0,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce343f0
    mov 0x08,r5
    cmp/eq 0x01,r0
    bt LAB_ce343f0
    cmp/eq 0x02,r0
    bf LAB_ce343f4

LAB_ce343f0:
    mov.w @(DAT_ce344a2,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce343f4:
    mov.l @(PTR_ce344a8,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce343fa:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce344a0,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34414
    mov 0x08,r5
    cmp/eq 0x01,r0
    bt LAB_ce34414
    cmp/eq 0x02,r0
    bf LAB_ce34418

LAB_ce34414:
    mov.w @(DAT_ce344a2,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce34418:
    mov.l @(PTR_ce344a8,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce3441e:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce344a0,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce3443e
    cmp/eq 0x01,r0
    bt LAB_ce34444
    cmp/eq 0x02,r0
    bt LAB_ce3444c
    bra LAB_ce34458
    nop

LAB_ce3443e:
    mov.w @(DAT_ce344a2,pc),r0
    bra LAB_ce34452
    mov.b r5,@(r0,r4)

LAB_ce34444:
    mov.w @(DAT_ce344a2,pc),r0
    mov 0x02,r2
    bra LAB_ce34452
    mov.b r2,@(r0,r4)

LAB_ce3444c:
    mov.w @(DAT_ce344a2,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r4)

LAB_ce34452:
    mov.w @(DAT_ce344a4,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce34458:
    mov.l @(PTR_ce344a8,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce3445e:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce344a0,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce3447e
    cmp/eq 0x01,r0
    bt LAB_ce34484
    cmp/eq 0x02,r0
    bt LAB_ce3448c
    bra LAB_ce34498
    nop

LAB_ce3447e:
    mov.w @(DAT_ce344a2,pc),r0
    bra LAB_ce34492
    mov.b r5,@(r0,r4)

LAB_ce34484:
    mov.w @(DAT_ce344a2,pc),r0
    mov 0x03,r2
    bra LAB_ce34492
    mov.b r2,@(r0,r4)

LAB_ce3448c:
    mov.w @(DAT_ce344a2,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce34492:
    mov.w @(DAT_ce344a4,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce34498:
    mov.l @(PTR_ce344a8,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3449e:
    #data 0x0141
DAT_ce344a0:
    #data 0x04c9
DAT_ce344a2:
    #data 0x01e9
DAT_ce344a4:
    #data 0x01a3
    #align4

PTR_ce344a8:
    #data loc_8c0530d8

;=============================================

LAB_ce344ac:
    mov r4,r3
    mov.l @(PTR_ce345b4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce344be:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r2
    mov.w @(DAT_ce345a8,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add r14,r1
    mov 0x14,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce345a4,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    add 0x02,r0
    mov 0x11,r3
    mov.b r3,@(r0,r14)
    add 0x23,r0
    mov 0x02,r2
    mov.l @(PTR_ce345b8,pc),r3
    mov.b r2,@(r0,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    mov r2,r6
    mov.w @(DAT_ce345a6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce34506:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce3460a
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce34526
    mov.w @(DAT_ce345aa,pc),r0
    mov.w @(DAT_ce345ac,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce34530

LAB_ce34526:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bra LAB_ce34544
    mov 0x03,r6

LAB_ce34530:
    mov.w @(DAT_ce345ae,pc),r0
    mov.w @(DAT_ce345b0,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bf LAB_ce34550
    mov.b @(0x6,r14),r0
    mov 0x04,r6
    add 0x02,r0
    mov.b r0,@(0x6,r14)

LAB_ce34544:
    lds.l @r15+,PR
    mov.l @(PTR_ce345b8,pc),r3
    mov 0x14,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34550:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34556:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce3460a
    mov r4,r14
    mov.l @(DAT_ce345bc,pc),r1
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce345c0,pc),r0
    fmov.s @r0,fr2
    mov.w @(DAT_ce345b2,pc),r0
    fmov.s @(r0,r14),fr1
    mov 0x38,r0
    fmov.s @(r0,r14),fr0
    fadd fr2,fr1
    fcmp/gt fr1,fr0
    bf LAB_ce3458a
    mov.w @(DAT_ce345ae,pc),r0
    mov.w @(DAT_ce345b0,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bf LAB_ce3459e

LAB_ce3458a:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce345b8,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3459e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce345a4:
    #data 0x01d5
DAT_ce345a6:
    #data 0x01d2
DAT_ce345a8:
    #data 0x0130
DAT_ce345aa:
    #data 0x0340
DAT_ce345ac:
    #data 0x1000
DAT_ce345ae:
    #data 0x034a
DAT_ce345b0:
    #data 0x0400
DAT_ce345b2:
    #data 0x041c
    #align4

PTR_ce345b4:
    #data PTR_ce34a64
PTR_ce345b8:
    #data loc_8c034e8c
DAT_ce345bc:
    #data 0x40092492
DAT_ce345c0:
    #data 0x42cdb6db

;=============================================

LAB_ce345c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce3460a
    mov r4,r14
    mov.l @(PTR_ce3462c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34604
    mov.l @(PTR_ce34630,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    mov 0x02,r3
    mov.w @(DAT_ce34628,pc),r0
    mov 0x01,r6
    mov 0x03,r7
    mov r6,r5
    mov.b r3,@(r0,r14)
    add 0xD9,r0
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce3462a,pc),r0
    mov.l @(PTR_ce34634,pc),r3
    extu.b r2,r2
    mov.w r2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce34604:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3460a:
    mov.w @(DAT_ce3462a,pc),r0
    mov.l @(PTR_ce34638,pc),r3
    mov.w @(r0,r4),r2
    tst r2,r2
    bt/s LAB_ce3461c
    fmov.s @r3,fr4
    mova @(DAT_ce3463c,pc),r0
    bra LAB_ce34620
    fmov.s @r0,fr3

LAB_ce3461c:
    mova @(DAT_ce34640,pc),r0
    fmov.s @r0,fr3

LAB_ce34620:
    fadd fr3,fr4
    mov 0x34,r0
    rts
    fmov fr4,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34628:
    #data 0x01f9
DAT_ce3462a:
    #data 0x0130
    #align4

PTR_ce3462c:
    #data loc_8c034dee
PTR_ce34630:
    #data loc_8c0530d8
PTR_ce34634:
    #data loc_8c034f54
PTR_ce34638:
    #data loc_8c26a524
DAT_ce3463c:
    #data 0x43902aab
DAT_ce34640:
    #data 0xc3902aab
DAT_ce34644:
    #data 0x0201
    #data 0x0200
DAT_ce34648:
    #data 0x02ff
    #data 0x0201
DAT_ce3464c:
    #data 0xffff
    #data 0x02ff
DAT_ce34650:
    #data 0x0201
    #data 0x0201
DAT_ce34654:
    #data 0x02ff
    #data 0x02ff
DAT_ce34658:
    #data 0xffff
    #data 0xffff
DAT_ce3465c:
    #data 0x0201
    #data 0x0200
DAT_ce34660:
    #data 0x02ff
    #data 0x0201
DAT_ce34664:
    #data 0xffff
    #data 0x02ff
DAT_ce34668:
    #data 0x0201
    #data 0x0201
DAT_ce3466c:
    #data 0x02ff
    #data 0x02ff
DAT_ce34670:
    #data 0xffff
    #data 0xffff
DAT_ce34674:
    #data 0x0201
    #data 0x0200
DAT_ce34678:
    #data 0x02ff
    #data 0x0201
DAT_ce3467c:
    #data 0xffff
    #data 0x02ff
DAT_ce34680:
    #data 0x0201
    #data 0x0201
DAT_ce34684:
    #data 0x02ff
    #data 0x02ff
DAT_ce34688:
    #data 0xffff
    #data 0xffff
DAT_ce3468c:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0060
DAT_ce3469c:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce346ac:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce346bc:
    #data 0x0003
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce346cc:
    #data 0x0005
    #data 0x1000
    #data 0x0004
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce346e0:
    #data 0x0003
    #data 0x9100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce346f0:
    #data 0x0003
    #data 0x9100
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce34700:
    #data 0x0003
    #data 0x9100
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
    #align4

PTR_ce34710:
    #data LAB_ce3052c
PTR_ce34714:
    #data LAB_ce3001c
PTR_ce34718:
    #data LAB_ce30530
PTR_ce3471c:
    #data LAB_ce30bce
PTR_ce34720:
    #data LAB_ce31038
PTR_ce34724:
    #data LAB_ce31212
PTR_ce34728:
    #data LAB_ce313fa
PTR_ce3472c:
    #data LAB_ce31440
PTR_ce34730:
    #data LAB_ce31582
PTR_ce34734:
    #data LAB_ce33728
PTR_ce34738:
    #data LAB_ce3381c
PTR_ce3473c:
    #data LAB_ce339e2
PTR_ce34740:
    #data LAB_ce3367a
PTR_ce34744:
    #data LAB_ce30432
PTR_ce34748:
    #data LAB_ce34272
PTR_ce3474c:
    #data LAB_ce30f70
PTR_ce34750:
    #data LAB_ce343d6
PTR_ce34754:
    #data LAB_ce343fa
PTR_ce34758:
    #data LAB_ce3441e
PTR_ce3475c:
    #data LAB_ce3445e
    #data 0x00000000
    #data 0x00000000
PTR_ce34768:
    #data LAB_ce344ac
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce34780:
    #data LAB_ce30544
PTR_ce34784:
    #data LAB_ce308d8
PTR_ce34788:
    #data LAB_ce30900
PTR_ce3478c:
    #data LAB_ce30544
PTR_ce34790:
    #data LAB_ce30bf0
PTR_ce34794:
    #data LAB_ce30e5a
PTR_ce34798:
    #data LAB_ce30e44
PTR_ce3479c:
    #data LAB_ce30be2
PTR_ce347a0:
    #data LAB_ce3104a
PTR_ce347a4:
    #data LAB_ce310ee
PTR_ce347a8:
    #data LAB_ce3116c
PTR_ce347ac:
    #data FUN_ce311f0
PTR_ce347b0:
    #data LAB_ce3124c
PTR_ce347b4:
    #data LAB_ce312b0
PTR_ce347b8:
    #data LAB_ce31354
PTR_ce347bc:
    #data FUN_ce313d8
PTR_ce347c0:
    #data LAB_ce3140c
PTR_ce347c4:
    #data LAB_ce31420
PTR_ce347c8:
    #data LAB_ce3146c
PTR_ce347cc:
    #data LAB_ce31568
PTR_ce347d0:
    #data LAB_ce3146c
PTR_ce347d4:
    #data LAB_ce31568
PTR_ce347d8:
    #data LAB_ce31568
PTR_ce347dc:
    #data LAB_ce3147e
PTR_ce347e0:
    #data LAB_ce3152a
PTR_ce347e4:
    #data LAB_ce31530
PTR_ce347e8:
    #data LAB_ce31562
DAT_ce347ec:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
DAT_ce347f0:
    #data 0x00
    #data 0x02
    #data 0x00
    #data 0x02
    #align4

PTR_ce347f4:
    #data LAB_ce31596
PTR_ce347f8:
    #data LAB_ce31b44
PTR_ce347fc:
    #data LAB_ce32340
PTR_ce34800:
    #data LAB_ce3242c
PTR_ce34804:
    #data LAB_ce32772
PTR_ce34808:
    #data LAB_ce3242c
PTR_ce3480c:
    #data LAB_ce3281a
PTR_ce34810:
    #data LAB_ce32ee2
PTR_ce34814:
    #data LAB_ce332c8
PTR_ce34818:
    #data LAB_ce334fa
PTR_ce3481c:
    #data LAB_ce3361e
PTR_ce34820:
    #data LAB_ce315a8
PTR_ce34824:
    #data LAB_ce31a68
PTR_ce34828:
    #data LAB_ce315be
PTR_ce3482c:
    #data LAB_ce316a4
PTR_ce34830:
    #data LAB_ce316cc
PTR_ce34834:
    #data LAB_ce318c4
PTR_ce34838:
    #data LAB_ce3199c
PTR_ce3483c:
    #data LAB_ce319fc
DAT_ce34840:
    #data 0x41892492
DAT_ce34844:
    #data 0xbf9a4924
    #data 0x41c52492
    #data 0xbfbc9249
DAT_ce34850:
    #data 0x40baaaaa
DAT_ce34854:
    #data 0x3f145555
DAT_ce34858:
    #data 0xc0700000
DAT_ce3485c:
    #data 0xbec52492
    #data 0x40f00000
    #data 0x3f3faaaa
    #data 0xc09a4924
    #data 0xbef89249
    #data 0x40baaaaa
    #data 0x3e555555
    #data 0xc13c9249
    #data 0xbf092492
    #data 0x40f00000
    #data 0x3f200000
    #data 0xc11a4924
    #data 0xbf1a4924
PTR_ce34890:
    #data LAB_ce31a7e
PTR_ce34894:
    #data LAB_ce31b3c
PTR_ce34898:
    #data LAB_ce316cc
PTR_ce3489c:
    #data LAB_ce318c4
PTR_ce348a0:
    #data LAB_ce3199c
PTR_ce348a4:
    #data LAB_ce319fc
DAT_ce348a8:
    #data 0x41892492
DAT_ce348ac:
    #data 0xbf9a4924
    #data 0x41892492
    #data 0xbf9a4924
PTR_ce348b8:
    #data LAB_ce31b56
PTR_ce348bc:
    #data LAB_ce31c80
PTR_ce348c0:
    #data LAB_ce31e14
PTR_ce348c4:
    #data LAB_ce31edc
PTR_ce348c8:
    #data LAB_ce31fe8
PTR_ce348cc:
    #data LAB_ce32070
PTR_ce348d0:
    #data LAB_ce3220c
PTR_ce348d4:
    #data LAB_ce322b6
DAT_ce348d8:
    #data 0x3fd55555
DAT_ce348dc:
    #data 0x41555555
    #data 0x3fd55555
    #data 0x41a00000
DAT_ce348e8:
    #data 0x40d55555
DAT_ce348ec:
    #data 0xbf12aaaa
DAT_ce348f0:
    #data 0x414db6db
DAT_ce348f4:
    #data 0xbf892492
    #data 0x41480000
    #data 0xbf12aaaa
    #data 0x41ab6db6
    #data 0xbf892492
PTR_ce34908:
    #data LAB_ce32352
PTR_ce3490c:
    #data LAB_ce323f4
PTR_ce34910:
    #data LAB_ce3243e
PTR_ce34914:
    #data LAB_ce32506
PTR_ce34918:
    #data LAB_ce3261c
PTR_ce3491c:
    #data LAB_ce3270a
DAT_ce34920:
    #data 0x40d55555
DAT_ce34924:
    #data 0xbd555555
DAT_ce34928:
    #data 0x00000000
DAT_ce3492c:
    #data 0x00000000
    #data 0x40f00000
    #data 0xbc555555
    #data 0x40cdb6db
    #data 0xbf092492
    #data 0x3fd55555
    #data 0x80000000
    #data 0x41700000
    #data 0xbf092492
PTR_ce34950:
    #data LAB_ce32784
PTR_ce34954:
    #data LAB_ce327d2
PTR_ce34958:
    #data LAB_ce32868
PTR_ce3495c:
    #data LAB_ce328ec
PTR_ce34960:
    #data LAB_ce3295c
PTR_ce34964:
    #data LAB_ce32a30
PTR_ce34968:
    #data LAB_ce32bae
PTR_ce3496c:
    #data LAB_ce32cb2
PTR_ce34970:
    #data LAB_ce32e34
PTR_ce34974:
    #data LAB_ce32eb0
DAT_ce34978:
    #data 0x40d55555
DAT_ce3497c:
    #data 0x422b6db6
    #data 0x00000000
    #data 0x42a2db6d
PTR_ce34988:
    #data LAB_ce32ef4
PTR_ce3498c:
    #data LAB_ce32ef4
PTR_ce34990:
    #data LAB_ce32f38
PTR_ce34994:
    #data LAB_ce32fbc
PTR_ce34998:
    #data LAB_ce330c8
PTR_ce3499c:
    #data LAB_ce3313a
PTR_ce349a0:
    #data LAB_ce33178
PTR_ce349a4:
    #data LAB_ce331d0
PTR_ce349a8:
    #data LAB_ce3325e
PTR_ce349ac:
    #data LAB_ce33296
PTR_ce349b0:
    #data LAB_ce332fc
PTR_ce349b4:
    #data LAB_ce33380
PTR_ce349b8:
    #data LAB_ce333fa
PTR_ce349bc:
    #data LAB_ce33478
PTR_ce349c0:
    #data FUN_ce334d2
PTR_ce349c4:
    #data LAB_ce3350c
PTR_ce349c8:
    #data LAB_ce33580
PTR_ce349cc:
    #data LAB_ce33692
PTR_ce349d0:
    #data LAB_ce336ba
PTR_ce349d4:
    #data LAB_ce336ba
PTR_ce349d8:
    #data LAB_ce336c8
PTR_ce349dc:
    #data LAB_ce336f0
PTR_ce349e0:
    #data LAB_ce33740
PTR_ce349e4:
    #data LAB_ce337b8
PTR_ce349e8:
    #data LAB_ce337bc
PTR_ce349ec:
    #data LAB_ce33740
PTR_ce349f0:
    #data LAB_ce33850
PTR_ce349f4:
    #data LAB_ce3389a
PTR_ce349f8:
    #data LAB_ce338e4
PTR_ce349fc:
    #data LAB_ce33970
PTR_ce34a00:
    #data LAB_ce33a00
PTR_ce34a04:
    #data LAB_ce33d6e
PTR_ce34a08:
    #data LAB_ce33f5a
PTR_ce34a0c:
    #data LAB_ce34122
PTR_ce34a10:
    #data LAB_ce33a12
PTR_ce34a14:
    #data LAB_ce33adc
PTR_ce34a18:
    #data LAB_ce33bdc
PTR_ce34a1c:
    #data LAB_ce33c8a
PTR_ce34a20:
    #data LAB_ce33d3c
PTR_ce34a24:
    #data LAB_ce33d80
PTR_ce34a28:
    #data LAB_ce33dc0
PTR_ce34a2c:
    #data LAB_ce33e3c
PTR_ce34a30:
    #data LAB_ce33eb8
PTR_ce34a34:
    #data LAB_ce33eea
PTR_ce34a38:
    #data LAB_ce33f28
PTR_ce34a3c:
    #data LAB_ce33f90
PTR_ce34a40:
    #data LAB_ce33fd6
PTR_ce34a44:
    #data LAB_ce3404e
PTR_ce34a48:
    #data LAB_ce340f0
PTR_ce34a4c:
    #data LAB_ce34134
PTR_ce34a50:
    #data LAB_ce341d0
PTR_ce34a54:
    #data LAB_ce34240
PTR_ce34a58:
    #data LAB_ce34284
PTR_ce34a5c:
    #data LAB_ce342fe
PTR_ce34a60:
    #data LAB_ce3436c
PTR_ce34a64:
    #data LAB_ce344be
PTR_ce34a68:
    #data LAB_ce34506
PTR_ce34a6c:
    #data LAB_ce34556
PTR_ce34a70:
    #data LAB_ce345c4
