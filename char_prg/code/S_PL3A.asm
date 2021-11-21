;╔══════════════════════════════════════════╗
;║ S_PL3A : Kobun (Servbot) Program         ║
;╚══════════════════════════════════════════╝

#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c03340c 0x8C03340C
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c045790 0x8C045790
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c04ce3a 0x8C04CE3A
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
#symbol loc_8c052b4c 0x8C052B4C
#symbol loc_8c052c84 0x8C052C84
#symbol loc_8c052ce2 0x8C052CE2
#symbol loc_8c052dac 0x8C052DAC
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
#symbol loc_8c055d7a 0x8C055D7A
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c05a2cc 0x8C05A2CC
#symbol loc_8c0b7d74 0x8C0B7D74
#symbol loc_8c0b804c 0x8C0B804C
#symbol loc_8c0b82f8 0x8C0B82F8
#symbol loc_8c0b83f8 0x8C0B83F8
#symbol loc_8c0b9f48 0x8C0B9F48
#symbol loc_8c0ba3b4 0x8C0BA3B4
#symbol loc_8c0ed060 0x8C0ED060
#symbol loc_8c0ed264 0x8C0ED264
#symbol loc_8c0ed3e4 0x8C0ED3E4
#symbol loc_8c0ed9e4 0x8C0ED9E4
#symbol loc_8c0eda3c 0x8C0EDA3C
#symbol loc_8c0f047c 0x8C0F047C
#symbol loc_8c0fdb4e 0x8C0FDB4E
#symbol loc_8c100672 0x8C100672
#symbol loc_8c103660 0x8C103660
#symbol loc_8c1292d4 0x8C1292D4
#symbol loc_8c12939c 0x8C12939C
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c26a5a8 0x8C26A5A8
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c289636 0x8C289636
#symbol loc_8c28963c 0x8C28963C
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300ae,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300b0,pc),r7
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
    mov.l @(PTR_ce300b4,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a8
    mov.l @(PTR_ce300b8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a8
    mov.l @(PTR_ce300bc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a8
    mov.l @(PTR_ce300c0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a8
    bsr FUN_ce3023e
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a8
    bsr FUN_ce30292
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a8
    bsr FUN_ce30356
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a8
    bsr FUN_ce300cc
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a8
    bsr FUN_ce30182
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a8
    bsr FUN_ce30134
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a8
    bsr FUN_ce301f0
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a8
    bsr FUN_ce3039c
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a8
    bsr FUN_ce30318
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a8
    mov.l @(PTR_ce300c4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300c8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300a8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300ae:
    #data 0x0428
    #align4

PTR_ce300b0:
    #data PTR_ce332c8
PTR_ce300b4:
    #data loc_8c054508
PTR_ce300b8:
    #data loc_8c054b34
PTR_ce300bc:
    #data loc_8c05496c
PTR_ce300c0:
    #data loc_8c054d04
PTR_ce300c4:
    #data loc_8c053e00
PTR_ce300c8:
    #data loc_8c0542e0

;=============================================

FUN_ce300cc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301d8,pc),r5
    mov.w @(DAT_ce301c8,pc),r6
    mov.l @(PTR_ce301dc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30106
    mov.w @(DAT_ce301c8,pc),r5
    mov.l @(PTR_ce301e0,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce301ca,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30114
    mov.w @(DAT_ce301cc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30114
    mov.w @(DAT_ce301ce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3010e

LAB_ce30106:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3010e:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30114:
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301d0,pc),r0
    mov.l @(PTR_ce301e4,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30134:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301e8,pc),r5
    mov.w @(DAT_ce301d2,pc),r6
    mov.l @(PTR_ce301dc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30152
    mov.w @(DAT_ce301d4,pc),r0
    mov.l @(r0,r14),r2
    cmp/pl r2
    bf LAB_ce3015a

LAB_ce30152:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3015a:
    mov.w @(DAT_ce301d2,pc),r5
    mov.l @(PTR_ce301e0,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301d0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301e4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30182:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301ec,pc),r5
    mov.w @(DAT_ce301d6,pc),r6
    mov.l @(PTR_ce301dc,pc),r3
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
    mov.w @(DAT_ce301d6,pc),r5
    mov.l @(PTR_ce301e0,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x09,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301d0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301e4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301c8:
    #data 0x036c
DAT_ce301ca:
    #data 0x01f9
DAT_ce301cc:
    #data 0x01fc
DAT_ce301ce:
    #data 0x01d4
DAT_ce301d0:
    #data 0x01e9
DAT_ce301d2:
    #data 0x038c
DAT_ce301d4:
    #data 0x02a4
DAT_ce301d6:
    #data 0x0394
    #align4

PTR_ce301d8:
    #data DAT_ce33288
PTR_ce301dc:
    #data loc_8c054e58
PTR_ce301e0:
    #data loc_8c055c3a
PTR_ce301e4:
    #data loc_8c0530d8
PTR_ce301e8:
    #data DAT_ce332a8
PTR_ce301ec:
    #data DAT_ce33298

;=============================================

FUN_ce301f0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30300,pc),r5
    mov.w @(DAT_ce302ea,pc),r6
    mov.l @(PTR_ce30304,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3020e
    mov.w @(DAT_ce302ec,pc),r0
    mov.l @(r0,r14),r2
    cmp/pl r2
    bf LAB_ce30216

LAB_ce3020e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30216:
    mov.w @(DAT_ce302ea,pc),r5
    mov.l @(PTR_ce30308,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302ee,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3030c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3023e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30310,pc),r5
    mov.w @(DAT_ce302f0,pc),r6
    mov.l @(PTR_ce30304,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30266
    mov.w @(DAT_ce302f2,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30266
    mov.w @(DAT_ce302ec,pc),r0
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce3026e

LAB_ce30266:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3026e:
    mov.w @(DAT_ce302f4,pc),r0
    mov 0x01,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302ee,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3030c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30292:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30314,pc),r5
    mov.w @(DAT_ce302f6,pc),r6
    mov.l @(PTR_ce30304,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302b2
    mov.w @(DAT_ce302f2,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302ba

LAB_ce302b2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302ba:
    mov.w @(DAT_ce302f4,pc),r0
    mov 0x01,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302ee,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3030c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce302fa,pc),r0
    mov 0x0A,r3
    mov.w @(DAT_ce302f8,pc),r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce302fc,pc),r0
    mov.l r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce302ea:
    #data 0x0374
DAT_ce302ec:
    #data 0x02a4
DAT_ce302ee:
    #data 0x01e9
DAT_ce302f0:
    #data 0x037c
DAT_ce302f2:
    #data 0x040c
DAT_ce302f4:
    #data 0x012c
DAT_ce302f6:
    #data 0x0384
DAT_ce302f8:
    #data 0x0080
DAT_ce302fa:
    #data 0x0202
DAT_ce302fc:
    #data 0x00cc
    #align4

PTR_ce30300:
    #data DAT_ce33278
PTR_ce30304:
    #data loc_8c054e58
PTR_ce30308:
    #data loc_8c055c3a
PTR_ce3030c:
    #data loc_8c0530d8
PTR_ce30310:
    #data DAT_ce33258
PTR_ce30314:
    #data DAT_ce33268

;=============================================

FUN_ce30318:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3043c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30330
    mov.w @(DAT_ce30432,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30338

LAB_ce30330:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30338:
    mov.w @(DAT_ce30434,pc),r0
    mov 0x02,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30440,pc),r3
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

FUN_ce30356:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30444,pc),r5
    mov.w @(DAT_ce30436,pc),r6
    mov.l @(PTR_ce30448,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30374
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30374:
    mov.w @(DAT_ce30436,pc),r5
    mov.l @(PTR_ce3044c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30434,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30440,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3039c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30450,pc),r3
    jsr @r3
    mov 0x04,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303b6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303b6:
    mov.w @(DAT_ce30438,pc),r0
    mov 0x04,r4
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf/s LAB_ce303c6
    mov 0x00,r5
    mov.l r5,@(r0,r14)
    mov 0x0A,r4

LAB_ce303c6:
    mov.w @(DAT_ce30434,pc),r0
    mov.b r4,@(r0,r14)
    mov r5,r0
    nop
    mov.l @(PTR_ce30440,pc),r3
    mov 0x15,r5
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

FUN_ce303e4:
    sts.l PR,@-r15
    add 0xFC,r15
    bsr FUN_ce3040a
    mov.l r4,@r15
    tst r0,r0
    bf LAB_ce303f8
    bsr FUN_ce3046e
    mov.l @r15,r4
    tst r0,r0
    bt LAB_ce30400

LAB_ce303f8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce30400:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce3040a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30454,pc),r5
    mov.w @(DAT_ce3043a,pc),r6
    mov.l @(PTR_ce30448,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3042a
    mov.w @(DAT_ce30432,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30458

LAB_ce3042a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30432:
    #data 0x040c
DAT_ce30434:
    #data 0x01e9
DAT_ce30436:
    #data 0x039c
DAT_ce30438:
    #data 0x02c8
DAT_ce3043a:
    #data 0x037c
    #align4

PTR_ce3043c:
    #data loc_8c054d1c
PTR_ce30440:
    #data loc_8c0530d8
PTR_ce30444:
    #data DAT_ce332b8
PTR_ce30448:
    #data loc_8c054e58
PTR_ce3044c:
    #data loc_8c055c3a
PTR_ce30450:
    #data loc_8c054da0
PTR_ce30454:
    #data DAT_ce33258

;=============================================

LAB_ce30458:
    mov.w @(DAT_ce304b6,pc),r0
    mov 0x01,r3
    mov 0x03,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce304b8,pc),r0
    mov.b r2,@(r0,r14)
    mov r3,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3046e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304c0,pc),r5
    mov.w @(DAT_ce304ba,pc),r6
    mov.l @(PTR_ce304c4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3048e
    mov.w @(DAT_ce304bc,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30496

LAB_ce3048e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30496:
    mov.w @(DAT_ce304b6,pc),r0
    mov 0x01,r3
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    add 0x7F,r3
    mov.w @(DAT_ce304b8,pc),r0
    mov.b r2,@(r0,r14)
    add 0xAA,r0
    mov.b r3,@(r0,r14)
    mov 0x3C,r2
    mov.w @(DAT_ce304be,pc),r0
    mov.l r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce304b6:
    #data 0x012c
DAT_ce304b8:
    #data 0x0258
DAT_ce304ba:
    #data 0x0384
DAT_ce304bc:
    #data 0x040c
DAT_ce304be:
    #data 0x00cc
    #align4

PTR_ce304c0:
    #data DAT_ce33268
PTR_ce304c4:
    #data loc_8c054e58

;=============================================

LAB_ce304c8:
    mov.w @(DAT_ce30578,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce304dc
    mov.l @(r0,r14),r1
    add 0xFF,r1
    mov.l r1,@(r0,r14)

LAB_ce304dc:
    mov.w @(DAT_ce3057a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce304fc
    mov.w @(DAT_ce3057c,pc),r0
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce304fc
    mov.l @(r0,r14),r1
    add 0xFF,r1
    cmp/pl r1
    bt/s LAB_ce304fc
    mov.l r1,@(r0,r14)
    mov.w @(DAT_ce3057e,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)

LAB_ce304fc:
    mov.w @(DAT_ce30580,pc),r0
    mov 0x20,r2
    mov.w @(r0,r14),r3
    cmp/ge r2,r3
    bt LAB_ce30520
    mov.w @(DAT_ce30582,pc),r0
    mov.l @(r0,r14),r1
    tst r1,r1
    bf LAB_ce30520
    mov.l @(PTR_ce30590,pc),r3
    mov 0x04,r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce30520
    mov.w @(DAT_ce30582,pc),r0
    mov 0x01,r3
    mov.l r3,@(r0,r14)

LAB_ce30520:
    mov.w @(DAT_ce30584,pc),r0
    mov.l @(r0,r14),r2
    cmp/pl r2
    bf LAB_ce3052e
    mov.l @(r0,r14),r1
    add 0xFF,r1
    mov.l r1,@(r0,r14)

LAB_ce3052e:
    mov.w @(DAT_ce30586,pc),r0
    mov.l @(r0,r14),r0
    mov.b @(0x1,r0),r0
    extu.b r0,r0
    cmp/eq 0x10,r0
    bf LAB_ce30572
    mov.w @(DAT_ce30586,pc),r0
    mov.l @(r0,r14),r2
    mov 0x25,r0
    mov.b @(r0,r2),r3
    mov.b @(r0,r14),r2
    cmp/eq r2,r3
    bf LAB_ce30572
    mov.b @(0x5,r14),r0
    tst r0,r0
    bf LAB_ce30572
    mov.w @(DAT_ce30588,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x0E,r0
    bf LAB_ce30572
    mov.w @(DAT_ce3058a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x1F,r0
    bf LAB_ce30572
    mov.w @(DAT_ce3058c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x3F,r0
    bf LAB_ce30572
    mov.w @(DAT_ce30584,pc),r0
    mov 0x78,r2
    mov.l r2,@(r0,r14)

LAB_ce30572:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30578:
    #data 0x02a4
DAT_ce3057a:
    #data 0x01a0
DAT_ce3057c:
    #data 0x00cc
DAT_ce3057e:
    #data 0x0202
DAT_ce30580:
    #data 0x0420
DAT_ce30582:
    #data 0x00d0
DAT_ce30584:
    #data 0x02c8
DAT_ce30586:
    #data 0x020c
DAT_ce30588:
    #data 0x01d0
DAT_ce3058a:
    #data 0x01d1
DAT_ce3058c:
    #data 0x01a2
    #align4

PTR_ce30590:
    #data loc_8c0ed3e4

;=============================================

LAB_ce30594:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30674,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x00,r13
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30660,pc),r0
    mov.b @(r0,r14),r4
    add 0x11,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce305bc
    add 0x06,r4

LAB_ce305bc:
    mov.w @(DAT_ce30662,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce305c6
    add 0x03,r4

LAB_ce305c6:
    mov.l @(PTR_ce30678,pc),r0
    extu.b r4,r12
    mov.w @(DAT_ce30664,pc),r2
    extu.b r4,r1
    mov.b @(r0,r12),r3
    add r14,r2
    extu.b r3,r3
    mov.l r3,@r2
    mov.l @(PTR_ce3067c,pc),r3
    jsr @r3
    mov 0x06,r0
    mov.l @(PTR_ce30680,pc),r1
    shll2 r0
    mov.l @(r0,r1),r2
    mov.w @(DAT_ce30666,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30660,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce30684,pc),r0
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce30668,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce30688,pc),r0
    mov.w @(DAT_ce3066a,pc),r2
    mov.b @(r0,r12),r3
    mov.w @(DAT_ce3066c,pc),r0
    add r14,r2
    mov.b r3,@r2
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3068c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30690,pc),r0
    mov.l @(PTR_ce30698,pc),r2
    mov.b @(r0,r12),r6
    mov.l @(PTR_ce30694,pc),r0
    mov.b @(r0,r12),r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3066e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30640
    mov.b @(r0,r14),r5
    mov.l @(PTR_ce3069c,pc),r3
    add 0xFF,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3066e,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce30640:
    mov.w @(DAT_ce30670,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30656
    mov.b @(r0,r14),r5
    mov.l @(PTR_ce3069c,pc),r3
    add 0xFF,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30670,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce30656:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30660:
    #data 0x01e8
DAT_ce30662:
    #data 0x01fe
DAT_ce30664:
    #data 0x0320
DAT_ce30666:
    #data 0x03f4
DAT_ce30668:
    #data 0x01a7
DAT_ce3066a:
    #data 0x01a1
DAT_ce3066c:
    #data 0x01ac
DAT_ce3066e:
    #data 0x0141
DAT_ce30670:
    #data 0x0140
    #align4

PTR_ce30674:
    #data loc_8c052b4c
PTR_ce30678:
    #data DAT_ce3335f
PTR_ce3067c:
    #data loc_8c1292d4
PTR_ce30680:
    #data PTR_ce33210
PTR_ce30684:
    #data DAT_ce33344
PTR_ce30688:
    #data DAT_ce33338
PTR_ce3068c:
    #data loc_8c2896b0
PTR_ce30690:
    #data DAT_ce33347
PTR_ce30694:
    #data DAT_ce33353
PTR_ce30698:
    #data loc_8c034e8c
PTR_ce3069c:
    #data loc_8c0ba3b4

;=============================================

LAB_ce306a0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r4
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3078a,pc),r0
    mov.b @(r0,r14),r13
    add 0x16,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce306c2
    add 0x03,r13

LAB_ce306c2:
    mov.w @(DAT_ce3078a,pc),r0
    extu.b r13,r12
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce3079c,pc),r0
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce3078c,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce307a0,pc),r0
    mov.w @(DAT_ce3078e,pc),r2
    mov.b @(r0,r12),r3
    mov.w @(DAT_ce30790,pc),r0
    add r14,r2
    mov.b r3,@r2
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce307a4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce307a8,pc),r0
    mov.b @(r0,r12),r6
    mov.l @(PTR_ce307ac,pc),r0
    mov.b @(r0,r12),r5
    mov.l @(PTR_ce307b0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30792,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30712
    add 0x06,r13

LAB_ce30712:
    mov.l @(PTR_ce307b4,pc),r0
    extu.b r13,r13
    shll2 r13
    mov.l @(r0,r13),r3
    mov.w @(DAT_ce30794,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30796,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30738
    mov.w @(DAT_ce30798,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30748
    mov.w @(DAT_ce30798,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    bra LAB_ce30748
    mov.b r2,@(r0,r14)

LAB_ce30738:
    mov.w @(DAT_ce30798,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30748
    mov.w @(DAT_ce30798,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30748:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30752:
    mov.w @(DAT_ce30796,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30766
    mov.w @(DAT_ce30798,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce3076e
    bra LAB_ce30772
    nop

LAB_ce30766:
    mov.w @(DAT_ce30798,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30772

LAB_ce3076e:
    bra LAB_ce306a0
    nop

LAB_ce30772:
    rts
    nop

LAB_ce30776:
    mov.w @(DAT_ce3079a,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce307b8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3078a:
    #data 0x01e8
DAT_ce3078c:
    #data 0x01a7
DAT_ce3078e:
    #data 0x01a1
DAT_ce30790:
    #data 0x01ac
DAT_ce30792:
    #data 0x01fc
DAT_ce30794:
    #data 0x03f4
DAT_ce30796:
    #data 0x01fe
DAT_ce30798:
    #data 0x01d6
DAT_ce3079a:
    #data 0x01ff
    #align4

PTR_ce3079c:
    #data DAT_ce33371
PTR_ce307a0:
    #data DAT_ce3336b
PTR_ce307a4:
    #data loc_8c2896b0
PTR_ce307a8:
    #data DAT_ce33374
PTR_ce307ac:
    #data DAT_ce3337a
PTR_ce307b0:
    #data loc_8c034e8c
PTR_ce307b4:
    #data PTR_ce33228
PTR_ce307b8:
    #data PTR_ce33380

;=============================================

LAB_ce307bc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce308dc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce308e0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce308e4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce307e2
    lds.l @r15+,PR
    mov.l @(PTR_ce308e8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce307e2:
    mov.l @(PTR_ce308ec,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce307f8
    lds.l @r15+,PR
    mov.l @(PTR_ce308f0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce307f8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce307fe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce308f4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce308f8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307bc
    mov.l @r15+,r14

LAB_ce30816:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce308fc,pc),r3
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
    mov.l @(PTR_ce308e4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30870
    lds.l @r15+,PR
    mov.l @(PTR_ce30900,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30870:
    mov.w @(DAT_ce308d2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30888
    mov.b @(r0,r14),r5
    mov.l @(PTR_ce30904,pc),r3
    add 0xFF,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce308d2,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)

LAB_ce30888:
    mov.w @(DAT_ce308d4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce308a8
    mova @(DAT_ce30908,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce308d6,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce308a0
    mova @(DAT_ce3090c,pc),r0
    fmov.s @r0,fr4

LAB_ce308a0:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce308a8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce308ae:
    sts.l PR,@-r15
    mov.l @(PTR_ce30910,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    bra LAB_ce30816
    lds.l @r15+,PR

LAB_ce308be:
    mov.w @(DAT_ce308d8,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30914,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308d2:
    #data 0x0141
DAT_ce308d4:
    #data 0x014b
DAT_ce308d6:
    #data 0x0130
DAT_ce308d8:
    #data 0x01ff
    #align4

PTR_ce308dc:
    #data loc_8c04fea8
PTR_ce308e0:
    #data loc_8c050048
PTR_ce308e4:
    #data loc_8c034dee
PTR_ce308e8:
    #data loc_8c05176e
PTR_ce308ec:
    #data loc_8c052ce2
PTR_ce308f0:
    #data loc_8c052dac
PTR_ce308f4:
    #data loc_8c050084
PTR_ce308f8:
    #data loc_8c04ff88
PTR_ce308fc:
    #data loc_8c052c84
PTR_ce30900:
    #data LAB_ce33180
PTR_ce30904:
    #data loc_8c0ba3b4
DAT_ce30908:
    #data 0xc0d55555
DAT_ce3090c:
    #data 0x40d55555
PTR_ce30910:
    #data loc_8c0511e2
PTR_ce30914:
    #data PTR_ce33390

;=============================================

LAB_ce30918:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce3096e
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30a34,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30a38,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30a2c,pc),r0
    mov 0x76,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30a3c,pc),r3
    mov 0x01,r6
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30a40,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3096e:
    mov.w @(DAT_ce30a2e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3097e
    mov.l @(PTR_ce30a44,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3097e:
    mov 0x5C,r1
    mov.l @(PTR_ce30a48,pc),r3
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
    mov.l @(PTR_ce30a4c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce309d4
    lds.l @r15+,PR
    mov.l @(PTR_ce30a50,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce309d4:
    mov.w @(DAT_ce30a30,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce309ea
    mov.b @(r0,r14),r5
    mov.l @(PTR_ce30a54,pc),r3
    add 0xFF,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a30,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce309ea:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce309f2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30a60
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce30a58,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30a32,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30a18
    mova @(DAT_ce30a5c,pc),r0
    fmov.s @r0,fr4

LAB_ce30a18:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    bra LAB_ce30ab4
    fmov fr4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a2c:
    #data 0x01f9
DAT_ce30a2e:
    #data 0x01ff
DAT_ce30a30:
    #data 0x0141
DAT_ce30a32:
    #data 0x01d2
    #align4

PTR_ce30a34:
    #data loc_8c052b4c
PTR_ce30a38:
    #data loc_8c056de4
PTR_ce30a3c:
    #data loc_8c2896b0
PTR_ce30a40:
    #data loc_8c034e8c
PTR_ce30a44:
    #data loc_8c0511e2
PTR_ce30a48:
    #data loc_8c052c84
PTR_ce30a4c:
    #data loc_8c034dee
PTR_ce30a50:
    #data LAB_ce33180
PTR_ce30a54:
    #data loc_8c0ba3b4
DAT_ce30a58:
    #data 0xc12d5555
DAT_ce30a5c:
    #data 0x412d5555

;=============================================

LAB_ce30a60:
    mov.l @(PTR_ce30ba0,pc),r2
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
    tst r0,r0
    bf LAB_ce30ab4
    lds.l @r15+,PR
    mov.l @(PTR_ce30ba4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30ab4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30aba:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30aea
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce30ba8,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30b96,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30adc
    mova @(DAT_ce30bac,pc),r0
    fmov.s @r0,fr4

LAB_ce30adc:
    mov 0x5C,r0
    fldi0 fr3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)

LAB_ce30aea:
    mov.l @(PTR_ce30ba0,pc),r3
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce30b22
    lds.l @r15+,PR
    mov.l @(PTR_ce30ba4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30b22:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30b28:
    mov r4,r3
    mov.l @(PTR_ce30bb0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30b3a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30b98,pc),r0
    mov r4,r14
    mov.l @(PTR_ce30bb4,pc),r2
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x02,r11
    mov.b @r2,r3
    extu.b r3,r3
    cmp/ge r11,r3
    bf LAB_ce30bfc
    mov 0x01,r12
    mov.l @(PTR_ce30bb8,pc),r2
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce30b9a,pc),r0
    mov.l @(r0,r14),r3
    jsr @r2
    mov.l r3,@r15
    mov r0,r13
    mov.l @r15,r0
    mov.b @(0x1,r0),r0
    extu.b r0,r0
    cmp/eq 0x3A,r0
    bf/s LAB_ce30b7a
    and r12,r13
    mov.b @(0x2,r14),r0
    extu.b r0,r13

LAB_ce30b7a:
    tst r13,r13
    bf LAB_ce30bc0
    mov r11,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x00,r3
    mov.w @(DAT_ce30b9c,pc),r0
    mov r3,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30bbc,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce30be6
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b96:
    #data 0x0130
DAT_ce30b98:
    #data 0x012c
DAT_ce30b9a:
    #data 0x020c
DAT_ce30b9c:
    #data 0x01f9
    #align4

PTR_ce30ba0:
    #data loc_8c034dee
PTR_ce30ba4:
    #data LAB_ce33180
DAT_ce30ba8:
    #data 0x412d5555
DAT_ce30bac:
    #data 0xc12d5555
PTR_ce30bb0:
    #data PTR_ce333a0
PTR_ce30bb4:
    #data loc_8c2895f0
PTR_ce30bb8:
    #data loc_8c03319e
PTR_ce30bbc:
    #data loc_8c0ed060

;=============================================

LAB_ce30bc0:
    mov r12,r0
    nop
    mov.b r0,@(0x6,r14)
    mov.l @(DAT_ce30cd0,pc),r1
    mov.w @(DAT_ce30ccc,pc),r0
    lds r1,FPUL
    mov.b r11,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fldi0 fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce30cd4,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)

LAB_ce30be6:
    mov r14,r4
    mov 0x12,r5
    mov r13,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce30cd8,pc),r3
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30bfc:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30c0a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30cdc,pc),r3
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
    mov.w @(DAT_ce30cce,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce30c74
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov.l @(PTR_ce30ce0,pc),r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30ccc,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30cce,pc),r0
    mov.l @(PTR_ce30ce4,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x01,r0
    mov.b r0,@(0x5,r5)
    mov.b r0,@(0x6,r5)
    mov 0x2C,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30ce8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30cd8,pc),r3
    mov r14,r4
    mov 0x02,r6
    mov 0x12,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c74:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30c7a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30cdc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c92
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce30c92:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30c9a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30cec,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30cb8
    mov.l @(PTR_ce30cf0,pc),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce30cf4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30cb8:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce30cf8,pc),r0
    extu.b r2,r2
    lds.l @r15+,PR
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ccc:
    #data 0x01f9
DAT_ce30cce:
    #data 0x041c
    #align4

DAT_ce30cd0:
    #data 0x44092492
DAT_ce30cd4:
    #data 0xbecdb6db
PTR_ce30cd8:
    #data loc_8c034e8c
PTR_ce30cdc:
    #data loc_8c034dee
PTR_ce30ce0:
    #data loc_8c26a518
PTR_ce30ce4:
    #data loc_8c04223a
PTR_ce30ce8:
    #data loc_8c0511b4
PTR_ce30cec:
    #data loc_8c046c8a
PTR_ce30cf0:
    #data loc_8c02fd26
PTR_ce30cf4:
    #data LAB_ce33180
PTR_ce30cf8:
    #data PTR_ce333ac

;=============================================

LAB_ce30cfc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30d44
    mov.b @(0x6,r14),r0
    mov 0x01,r5
    mov.l @(PTR_ce30e28,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30e2c,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce30e30,pc),r2
    mov 0x01,r13
    mov.b @r2,r3
    tst r3,r3
    bf/s LAB_ce30d2e
    and r0,r13
    mov 0x00,r13

LAB_ce30d2e:
    mov r13,r0
    nop
    mov.l @(PTR_ce30e34,pc),r3
    mov r14,r4
    mov.b r0,@(0x7,r14)
    mov r0,r6
    lds.l @r15+,PR
    mov 0x13,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d44:
    mov.l @(PTR_ce30e38,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x7,r14),r0
    tst r0,r0
    bt LAB_ce30dc4
    mov.w @(DAT_ce30e1c,pc),r0
    mov 0x02,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30e1e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30d6e
    mov 0x00,r3
    mov r3,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30e3c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30d6e:
    mov.w @(DAT_ce30e20,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d8e
    mov.w @(DAT_ce30e22,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce30d82
    mov 0x0A,r4
    mov 0xF6,r4

LAB_ce30d82:
    lds r4,FPUL
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    float FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce30d8e:
    mov.l @(PTR_ce30e40,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce30dc4
    mov.w @(DAT_ce30e22,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce30e2c,pc),r1
    mov.w @(r0,r14),r2
    xor r3,r2
    jsr @r1
    mov.w r2,@(r0,r14)
    mov 0x01,r13
    mov.l @(PTR_ce30e34,pc),r3
    and r0,r13
    mov r13,r6
    mov 0x13,r5
    add 0x03,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov.l @(PTR_ce30e3c,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30dc4:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30dcc:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce30de0
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce30e34,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce30de0:
    mov.l @(PTR_ce30e38,pc),r3
    jmp @r3
    nop

LAB_ce30de6:
    mov.w @(DAT_ce30e24,pc),r0
    mov 0x2C,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce30e26,pc),r2
    muls.w r3,r0
    add r14,r2
    mov.l @(PTR_ce30e44,pc),r1
    mov.b @r2,r2
    sts MACL,r0
    extu.b r2,r2
    shll2 r2
    add r0,r1
    add r1,r2
    mov.l @r2,r0
    jmp @r0
    mov.l @r15+,r14

LAB_ce30e0a:
    mov r4,r3
    mov.l @(PTR_ce30e48,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e1c:
    #data 0x01f5
DAT_ce30e1e:
    #data 0x0141
DAT_ce30e20:
    #data 0x0140
DAT_ce30e22:
    #data 0x0130
DAT_ce30e24:
    #data 0x04c9
DAT_ce30e26:
    #data 0x01e9
    #align4

PTR_ce30e28:
    #data loc_8c02fec4
PTR_ce30e2c:
    #data loc_8c03319e
PTR_ce30e30:
    #data loc_8c289636
PTR_ce30e34:
    #data loc_8c034e8c
PTR_ce30e38:
    #data loc_8c034dee
PTR_ce30e3c:
    #data loc_8c0b9f48
PTR_ce30e40:
    #data loc_8c03340c
PTR_ce30e44:
    #data PTR_ce333c0
PTR_ce30e48:
    #data PTR_ce33444

;=============================================

LAB_ce30e4c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30f8c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30f7c,pc),r0
    mov 0x00,r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce30e8c
    fldi0 fr4
    mov 0x5C,r0
    mov.l @(PTR_ce30f90,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce30f7c,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce30eba
    nop

LAB_ce30e8c:
    mov.l @(DAT_ce30f94,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce30f98,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce30f9c,pc),r1
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
    fmov fr4,@(r0,r14)

LAB_ce30eba:
    mov.l @(PTR_ce30fa0,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    mov 0x30,r3
    mov.w @(DAT_ce30f7e,pc),r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30fa4,pc),r3
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
    mov.w @(DAT_ce30f80,pc),r0
    mov.l @(PTR_ce30fa8,pc),r2
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    add 0x03,r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30efe:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fac,pc),r3
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
    mov.w @(DAT_ce30f82,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30fb0
    mov.w @(DAT_ce30f84,pc),r4
    mov r4,r0
    nop
    add 0xA3,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f5a
    mov.w @(DAT_ce30f86,pc),r4

LAB_ce30f5a:
    mov.w @(DAT_ce30f88,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bf LAB_ce30fb0
    mov.w @(DAT_ce30f8a,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce30fa8,pc),r3
    mov.b @(r0,r14),r13
    add 0x58,r0
    mov.b @(r0,r14),r6
    extu.b r13,r13
    add 0x0E,r6
    jsr @r3
    mov r14,r4
    bra LAB_ce30fbe
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f7c:
    #data 0x01f9
DAT_ce30f7e:
    #data 0x01a1
DAT_ce30f80:
    #data 0x01a3
DAT_ce30f82:
    #data 0x0140
DAT_ce30f84:
    #data 0x0200
DAT_ce30f86:
    #data 0x0100
DAT_ce30f88:
    #data 0x034a
DAT_ce30f8a:
    #data 0x014b
    #align4

PTR_ce30f8c:
    #data loc_8c05218a
PTR_ce30f90:
    #data loc_8c05115a
DAT_ce30f94:
    #data 0x41800000
DAT_ce30f98:
    #data 0x41000000
DAT_ce30f9c:
    #data 0x42800000
PTR_ce30fa0:
    #data loc_8c056de4
PTR_ce30fa4:
    #data loc_8c2896b0
PTR_ce30fa8:
    #data loc_8c034e8c
PTR_ce30fac:
    #data loc_8c034dee

;=============================================

LAB_ce30fb0:
    mov.w @(DAT_ce310d4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30fd8
    mov.w @(DAT_ce310d6,pc),r0
    mov.b @(r0,r14),r13
    extu.b r13,r13

LAB_ce30fbe:
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r13,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce310d4,pc),r0
    mov.b r3,@(r0,r14)
    add 0x62,r0
    mov.b @(r0,r14),r5
    mov.l @(PTR_ce310dc,pc),r3
    extu.b r5,r5
    jsr @r3
    mov r14,r4

LAB_ce30fd8:
    mov.w @(DAT_ce310d8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3101a
    mov.w @(DAT_ce310da,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3101a
    mov.w @(DAT_ce310d8,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce310da,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce310e0,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3101a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31022:
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
    mov.w @(DAT_ce310d8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31092
    mov.w @(DAT_ce310d8,pc),r0
    mov 0x00,r3
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce310da,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce310e0,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce31092:
    mov.l @(PTR_ce310e4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310bc
    mov.w @(DAT_ce310da,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce310b2
    lds.l @r15+,PR
    mov.l @(PTR_ce310e8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce310b2:
    lds.l @r15+,PR
    mov.l @(PTR_ce310ec,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce310bc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310c2:
    mov r4,r3
    mov.l @(PTR_ce310f0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310d4:
    #data 0x0141
DAT_ce310d6:
    #data 0x014b
DAT_ce310d8:
    #data 0x041c
DAT_ce310da:
    #data 0x01f9
    #align4

PTR_ce310dc:
    #data loc_8c0b7d74
PTR_ce310e0:
    #data loc_8c0511b4
PTR_ce310e4:
    #data loc_8c034dee
PTR_ce310e8:
    #data LAB_ce33180
PTR_ce310ec:
    #data loc_8c05176e
PTR_ce310f0:
    #data PTR_ce33450

;=============================================

LAB_ce310f4:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov 0x01,r3
    sts.l PR,@-r15
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
    mov.w @(DAT_ce311ea,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce311ec,pc),r0
    mov.l @(PTR_ce311f8,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce311fc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce311ee,pc),r0
    mov 0x78,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31200,pc),r3
    mov r4,r6
    mov.l r4,@(r0,r14)
    mov 0x16,r5
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
    mov.l @(PTR_ce31204,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31160:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce31208,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce311f0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31190
    mov.b @(0x6,r14),r0
    mov r15,r5
    mov.l @(PTR_ce31214,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce3120c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31210,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31190:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31198:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31208,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311b2
    lds.l @r15+,PR
    mov.l @(PTR_ce31218,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce311b2:
    mov.w @(DAT_ce311f2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311d2
    mova @(DAT_ce3121c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce311f4,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311ca
    mova @(DAT_ce31220,pc),r0
    fmov.s @r0,fr4

LAB_ce311ca:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce311d2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311d8:
    mov r4,r3
    mov.l @(PTR_ce31224,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311ea:
    #data 0x01f9
DAT_ce311ec:
    #data 0x041c
DAT_ce311ee:
    #data 0x01a1
DAT_ce311f0:
    #data 0x0141
DAT_ce311f2:
    #data 0x014b
DAT_ce311f4:
    #data 0x0130
    #align4

PTR_ce311f8:
    #data loc_8c05218a
PTR_ce311fc:
    #data loc_8c05115a
PTR_ce31200:
    #data loc_8c2896b0
PTR_ce31204:
    #data loc_8c034e8c
PTR_ce31208:
    #data loc_8c034dee
DAT_ce3120c:
    #data 0xc23aaaaa
DAT_ce31210:
    #data 0x42092492
PTR_ce31214:
    #data loc_8c050ea4
PTR_ce31218:
    #data LAB_ce33180
DAT_ce3121c:
    #data 0xc0d55555
DAT_ce31220:
    #data 0x40d55555
PTR_ce31224:
    #data PTR_ce3345c

;=============================================

LAB_ce31228:
    mov.w @(DAT_ce3132c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31244
    mov.w @(DAT_ce31330,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3132e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31244:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31344,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31348,pc),r2
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
    mov.w @(DAT_ce31332,pc),r0
    mov.l @(DAT_ce3134c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(DAT_ce31350,pc),r2
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31334,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31336,pc),r0
    mov.l r3,@(r0,r14)
    add 0x04,r0
    mov.l @(DAT_ce31354,pc),r3
    mov.l r2,@(r0,r14)
    add 0x04,r0
    mov.l @(DAT_ce31358,pc),r2
    mov.l r3,@(r0,r14)
    add 0x04,r0
    mov.l r2,@(r0,r14)
    mov 0x3F,r3
    mov.w @(DAT_ce31338,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3135c,pc),r3
    mov 0x02,r6
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov 0x16,r5
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce31360,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce312c0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3133a,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3133c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3132c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce312e2
    bra LAB_ce312e4
    mov 0x02,r3

LAB_ce312e2:
    mov 0x00,r3

LAB_ce312e4:
    mov.w @(DAT_ce3133e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31364,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31340,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31324
    mov.w @(DAT_ce31330,pc),r0
    mov 0x00,r4
    fldi0 fr3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3136c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31340,pc),r0
    mov.b r4,@(r0,r14)
    add 0xAF,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce31368,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31324:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3132c:
    #data 0x0255
DAT_ce3132e:
    #data 0x00ff
DAT_ce31330:
    #data 0x03f0
DAT_ce31332:
    #data 0x041c
DAT_ce31334:
    #data 0x01f9
DAT_ce31336:
    #data 0x02b4
DAT_ce31338:
    #data 0x01a1
DAT_ce3133a:
    #data 0x03f8
DAT_ce3133c:
    #data 0x0328
DAT_ce3133e:
    #data 0x03f1
DAT_ce31340:
    #data 0x0141
    #align4

PTR_ce31344:
    #data loc_8c05218a
PTR_ce31348:
    #data loc_8c05115a
DAT_ce3134c:
    #data 0x04050405
DAT_ce31350:
    #data 0x01020405
DAT_ce31354:
    #data 0x01020101
DAT_ce31358:
    #data 0x00010202
PTR_ce3135c:
    #data loc_8c2896b0
PTR_ce31360:
    #data loc_8c034e8c
PTR_ce31364:
    #data loc_8c034dee
DAT_ce31368:
    #data 0x425edb6d
PTR_ce3136c:
    #data loc_8c050834

;=============================================

LAB_ce31370:
    mov.w @(DAT_ce31494,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31496,pc),r0
    mov.l @(PTR_ce314a4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce3139a
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce314a8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce3139a:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce313d0
    mov.w @(DAT_ce31498,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce314ac,pc),r3
    mov 0x03,r6
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce3149a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce313d0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313d6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314a4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce31400
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce314ac,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31400:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31406:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce314a4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31420
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce314b0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31420:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31428:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3144e
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r3,r6
    mov 0x14,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3149c,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce314ac,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3144e:
    mov.l @(PTR_ce314a4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31464
    lds.l @r15+,PR
    mov.l @(PTR_ce314b0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31464:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3146a:
    mov.w @(DAT_ce3149e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x03,r2
    mov.w @(DAT_ce314a0,pc),r0
    mov.l @(PTR_ce314b4,pc),r3
    mov.l r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce314b8,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31494:
    #data 0x03f8
DAT_ce31496:
    #data 0x0328
DAT_ce31498:
    #data 0x03f9
DAT_ce3149a:
    #data 0x0327
DAT_ce3149c:
    #data 0x01f9
DAT_ce3149e:
    #data 0x01eb
DAT_ce314a0:
    #data 0x00cc
    #align4

PTR_ce314a4:
    #data loc_8c034dee
PTR_ce314a8:
    #data loc_8c0b82f8
PTR_ce314ac:
    #data loc_8c034e8c
PTR_ce314b0:
    #data LAB_ce33180
PTR_ce314b4:
    #data loc_8c05a2cc
PTR_ce314b8:
    #data PTR_ce33470

;=============================================

LAB_ce314bc:
    mov.w @(DAT_ce31598,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce314d8
    mov.w @(DAT_ce3159c,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3159a,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce314d8:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce315ac,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce315b0,pc),r2
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
    mov.w @(DAT_ce3159e,pc),r0
    mov 0x52,r2
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce315a0,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x25,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    mov r0,r3
    shll2 r0
    add r3,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce315a2,pc),r0
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.l @(PTR_ce315b4,pc),r3
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce315b8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce315bc,pc),r3
    mov r14,r4
    mov 0x05,r6
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31550:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce315a4,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce315a6,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31598,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31572
    bra LAB_ce31574
    mov 0x02,r3

LAB_ce31572:
    mov 0x00,r3

LAB_ce31574:
    mov.w @(DAT_ce315a8,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce315c0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce315aa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce315de
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce315c8
    mov.l @(PTR_ce315c4,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    bra LAB_ce315de
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31598:
    #data 0x0255
DAT_ce3159a:
    #data 0x00ff
DAT_ce3159c:
    #data 0x03f0
DAT_ce3159e:
    #data 0x041c
DAT_ce315a0:
    #data 0x01f9
DAT_ce315a2:
    #data 0x01a1
DAT_ce315a4:
    #data 0x03f8
DAT_ce315a6:
    #data 0x0328
DAT_ce315a8:
    #data 0x03f1
DAT_ce315aa:
    #data 0x0140
    #align4

PTR_ce315ac:
    #data loc_8c05218a
PTR_ce315b0:
    #data loc_8c05115a
PTR_ce315b4:
    #data loc_8c2896b0
PTR_ce315b8:
    #data loc_8c0ed9e4
PTR_ce315bc:
    #data loc_8c034e8c
PTR_ce315c0:
    #data loc_8c034dee
PTR_ce315c4:
    #data loc_8c035162

;=============================================

LAB_ce315c8:
    mov.w @(DAT_ce316e0,pc),r6
    mov 0x01,r7
    mov.w @(0x1c,r14),r0
    mov 0x00,r5
    add r14,r6
    mov.l @(PTR_ce316f8,pc),r3
    mov.b @r6,r6
    extu.b r6,r6
    add r0,r6
    jsr @r3
    mov r14,r4

LAB_ce315de:
    mov.w @(DAT_ce316e2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31630
    mov.w @(DAT_ce316e4,pc),r0
    mov 0x00,r4
    mov.w @(DAT_ce316e6,pc),r3
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce316e2,pc),r0
    mov.b r4,@(r0,r14)
    mov r3,r0
    nop
    add 0x6C,r0
    mov.l r3,@(r0,r14)
    mov 0x01,r5
    mov.l @(PTR_ce316fc,pc),r3
    jsr @r3
    mov r14,r4
    fldi0 fr3
    mova @(DAT_ce31700,pc),r0
    fmov.s fr3,@r15
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce31704,pc),r3
    mov 0x01,r6
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce316e8,pc),r5
    mov 0x06,r6
    mov.l @(PTR_ce31708,pc),r2
    add r14,r5
    add 0x20,r5
    jsr @r2
    mov r14,r4

LAB_ce31630:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31638:
    mov.b @(0x6,r4),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x20,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce316ea,pc),r0
    mov.w r5,@(r0,r4)

LAB_ce31648:
    mov.w @(DAT_ce316ec,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce316ee,pc),r0
    mov.l @(PTR_ce3170c,pc),r4
    mov.b r2,@(r0,r14)
    mov.b @(0x3,r4),r0
    tst r0,r0
    bf LAB_ce31674
    mov.b @r4,r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bt LAB_ce31674
    mov.w @(DAT_ce316f0,pc),r0
    mov.l @(r0,r14),r3
    add 0xFF,r3
    cmp/pl r3
    mov.l r3,@(r0,r14)
    bt LAB_ce31698

LAB_ce31674:
    mov.w @(DAT_ce316f2,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31710,pc),r3
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x0B,r6
    mov.w @(DAT_ce316f4,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jmp @r3
    mov.l @r15+,r14

LAB_ce31698:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31714,pc),r0
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce316aa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31718,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce316c4
    lds.l @r15+,PR
    mov.l @(PTR_ce3171c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce316c4:
    mov.w @(DAT_ce316e2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce316da
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31720,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce316da:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce316e0:
    #data 0x014b
DAT_ce316e2:
    #data 0x0141
DAT_ce316e4:
    #data 0x03f0
DAT_ce316e6:
    #data 0x0258
DAT_ce316e8:
    #data 0x02a4
DAT_ce316ea:
    #data 0x0352
DAT_ce316ec:
    #data 0x03f8
DAT_ce316ee:
    #data 0x0328
DAT_ce316f0:
    #data 0x02c4
DAT_ce316f2:
    #data 0x03f9
DAT_ce316f4:
    #data 0x0327
    #align4

PTR_ce316f8:
    #data loc_8c03544c
PTR_ce316fc:
    #data loc_8c035162
DAT_ce31700:
    #data 0x43092492
PTR_ce31704:
    #data loc_8c050834
PTR_ce31708:
    #data loc_8c0f047c
PTR_ce3170c:
    #data loc_8c2895f0
PTR_ce31710:
    #data loc_8c034e8c
PTR_ce31714:
    #data PTR_ce33484
PTR_ce31718:
    #data loc_8c034dee
PTR_ce3171c:
    #data LAB_ce33180
PTR_ce31720:
    #data loc_8c0eda3c

;=============================================

LAB_ce31724:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31a60
    mov r4,r14
    tst r0,r0
    bf LAB_ce3174a
    bsr FUN_ce31b78
    mov r14,r4
    tst r0,r0
    bf LAB_ce3174a
    bsr FUN_ce3197a
    mov r14,r4
    tst r0,r0
    bf LAB_ce3174a
    lds.l @r15+,PR
    mov.l @(PTR_ce317d4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3174a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31750:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31a60
    mov r4,r14
    tst r0,r0
    bf LAB_ce317aa
    bsr FUN_ce31c04
    mov r14,r4
    tst r0,r0
    bf LAB_ce317aa
    bsr FUN_ce319bc
    mov r14,r4
    mov.l @(PTR_ce317d4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce317ce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31786
    mov.l @(PTR_ce317d8,pc),r5
    mov 0x00,r3
    mov 0x01,r4
    mov.b r3,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x5,r5)
    mov.b r0,@(0x6,r5)

LAB_ce31786:
    mov.w @(DAT_ce317d0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce317aa
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

LAB_ce317aa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce317b0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce317d4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce317dc
    bsr FUN_ce31cd4
    mov r14,r4
    bra LAB_ce318ce
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce317ce:
    #data 0x014b
DAT_ce317d0:
    #data 0x0141
    #align4

PTR_ce317d4:
    #data loc_8c034dee
PTR_ce317d8:
    #data loc_8c26a518

;=============================================

LAB_ce317dc:
    mov.w @(DAT_ce318da,pc),r0
    mov 0x01,r12
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3188c
    mov 0x00,r13
    mov.w @(DAT_ce318dc,pc),r0
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce3188c
    mov.w @(DAT_ce318de,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce31800
    mov.w @(DAT_ce318e0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3181a

LAB_ce31800:
    mov.w @(DAT_ce318e2,pc),r4
    mov r4,r0
    nop
    add 0xEE,r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bf LAB_ce3181a
    mov.w @(DAT_ce318e4,pc),r0
    mov.w @(r0,r14),r1
    extu.w r1,r1
    tst r4,r1
    bt LAB_ce3188c

LAB_ce3181a:
    mov.w @(DAT_ce318da,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce318e4,pc),r0
    mov.w r13,@(r0,r14)
    mov.w @(DAT_ce318dc,pc),r0
    mov.l @(r0,r14),r3
    add 0xE2,r3
    mov.l r3,@(r0,r14)
    bsr FUN_ce31cb6
    mov r14,r4
    mov.w @(DAT_ce318e6,pc),r0
    mov.w @(DAT_ce318e8,pc),r5
    mov.w @(r0,r14),r4
    mov.w @(DAT_ce318ea,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r5,r3
    bt/s LAB_ce31842
    mov.w @(r0,r14),r3
    mov r13,r4

LAB_ce31842:
    mov.w @(DAT_ce318ec,pc),r2
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce3184c
    mov r12,r4

LAB_ce3184c:
    mov.w @(DAT_ce318ee,pc),r0
    mov 0x7D,r3
    mov 0x0D,r6
    mov.b r4,@(r0,r14)
    extu.b r4,r4
    mov.w @(DAT_ce318e6,pc),r0
    mov.w r4,@(r0,r14)
    add 0x71,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce318f4,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce318f0,pc),r0
    mov.l @(PTR_ce318f8,pc),r1
    mov.w @(r0,r14),r2
    or r5,r2
    mov 0x16,r5
    mov.w r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce3188c:
    mov.w @(DAT_ce318f2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce318ce
    mov.l @(PTR_ce318fc,pc),r4
    mov.b r13,@(r0,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mova @(DAT_ce31900,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce318e6,pc),r0
    fmov.s fr3,@r15
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce318b4
    fmov.s @r15,fr3
    fneg fr3
    fmov.s fr3,@r15

LAB_ce318b4:
    mov 0x34,r0
    fmov.s @r15,fr2
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce31904,pc),r3
    mov 0xFF,r5
    fadd fr3,fr2
    fmov.s fr2,@r15
    fmov.s @(r0,r14),fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r15,r4

LAB_ce318ce:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce318da:
    #data 0x0141
DAT_ce318dc:
    #data 0x02c4
DAT_ce318de:
    #data 0x0525
DAT_ce318e0:
    #data 0x019e
DAT_ce318e2:
    #data 0x0360
DAT_ce318e4:
    #data 0x0352
DAT_ce318e6:
    #data 0x0130
DAT_ce318e8:
    #data 0x0800
DAT_ce318ea:
    #data 0x0340
DAT_ce318ec:
    #data 0x0400
DAT_ce318ee:
    #data 0x01d2
DAT_ce318f0:
    #data 0x01ac
DAT_ce318f2:
    #data 0x014b
    #align4

PTR_ce318f4:
    #data loc_8c2896b0
PTR_ce318f8:
    #data loc_8c034e8c
PTR_ce318fc:
    #data loc_8c26a518
DAT_ce31900:
    #data 0xc3960000
PTR_ce31904:
    #data loc_8c100672

;=============================================

LAB_ce31908:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31a60
    mov r4,r14
    tst r0,r0
    bf LAB_ce31974
    mov 0x5C,r1
    mov.l @(PTR_ce31a34,pc),r3
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
    bt LAB_ce31944
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce31cd4
    mov.l @r15+,r14

LAB_ce31944:
    mov.w @(DAT_ce31a22,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31974
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x56,r0
    mov 0x7C,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31a38,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31974:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3197a:
    mov.w @(DAT_ce31a24,pc),r0
    mov 0x00,r6
    sts.l PR,@-r15
    mov.l @(r0,r4),r3
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fmov.s @(r0,r3),fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce31990
    mov r6,r5
    mov 0x01,r5

LAB_ce31990:
    mov.w @(DAT_ce31a26,pc),r0
    mov.b @(r0,r4),r2
    extu.b r2,r2
    cmp/eq r5,r2
    bt LAB_ce319b4
    mov 0x20,r0
    mov.l @(PTR_ce31a3c,pc),r3
    mov.b r6,@(r0,r4)
    mov 0x06,r6
    mov.w @(DAT_ce31a28,pc),r0
    mov.w r5,@(r0,r4)
    mov.w @(DAT_ce31a26,pc),r0
    mov.b r5,@(r0,r4)
    jsr @r3
    mov 0x16,r5
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce319b4:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce319bc:
    mov.w @(DAT_ce31a24,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r4
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fmov.s @(r0,r3),fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce319de
    mov 0x01,r13
    mov r13,r4

LAB_ce319de:
    mov.w @(DAT_ce31a26,pc),r0
    mov.b @(r0,r14),r2
    extu.b r2,r2
    cmp/eq r4,r2
    bt LAB_ce31a50
    mov.w @(DAT_ce31a28,pc),r0
    mov.w @(DAT_ce31a2e,pc),r2
    mov.w r4,@(r0,r14)
    mov.w @(DAT_ce31a26,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31a2a,pc),r0
    mov.b @(r0,r14),r12
    add 0xFE,r0
    mov.b @(r0,r14),r11
    mov.w @(DAT_ce31a2c,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce31a08
    mov 0x07,r10
    mov 0x0E,r10

LAB_ce31a08:
    mov.l @(PTR_ce31a3c,pc),r3
    mov 0x16,r5
    mov r10,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31a34,pc),r10

LAB_ce31a14:
    mov.w @(DAT_ce31a30,pc),r0
    mov.b @(r0,r14),r3
    cmp/eq r11,r3
    bf LAB_ce31a40
    mov.w @(DAT_ce31a2a,pc),r0
    bra LAB_ce31a4c
    mov.b r12,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a22:
    #data 0x014b
DAT_ce31a24:
    #data 0x020c
DAT_ce31a26:
    #data 0x01d2
DAT_ce31a28:
    #data 0x0130
DAT_ce31a2a:
    #data 0x0142
DAT_ce31a2c:
    #data 0x034a
DAT_ce31a2e:
    #data 0x0800
DAT_ce31a30:
    #data 0x0140
    #align4

PTR_ce31a34:
    #data loc_8c034dee
PTR_ce31a38:
    #data loc_8c2896b0
PTR_ce31a3c:
    #data loc_8c034e8c

;=============================================

LAB_ce31a40:
    mov.w @(DAT_ce31b52,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r10
    mov r14,r4
    bra LAB_ce31a14
    nop

LAB_ce31a4c:
    bra LAB_ce31a52
    mov 0x01,r0

LAB_ce31a50:
    mov 0x00,r0

LAB_ce31a52:
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31a60:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce31b54,pc),r0
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce31b42
    mov.w @(DAT_ce31b56,pc),r0
    mov.w @(DAT_ce31b5a,pc),r10
    mov.w @(r0,r14),r4
    add 0x04,r0
    mov.w @(r0,r14),r3
    add 0xEE,r0
    mov.w @(r0,r14),r12
    extu.w r4,r4
    mov.w @(DAT_ce31b58,pc),r0
    extu.w r3,r3
    or r3,r4
    mov.l @(r0,r14),r11
    extu.w r12,r12
    mov.w @(DAT_ce31b5c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31abe
    mov 0x00,r13
    mov 0x34,r0
    fmov.s @(r0,r11),fr4
    fmov.s @(r0,r14),fr3
    fsub fr3,fr4
    fldi0 fr3
    fcmp/gt fr3,fr4
    bf/s LAB_ce31ab0
    mov r13,r4
    mov.w @(DAT_ce31b5e,pc),r12
    bra LAB_ce31ab4
    nop

LAB_ce31ab0:
    fneg fr4
    mov r10,r12

LAB_ce31ab4:
    mova @(DAT_ce31b6c,pc),r0
    fmov.s @r0,fr3
    fcmp/gt fr3,fr4
    bt LAB_ce31abe
    mov.w @(DAT_ce31b60,pc),r4

LAB_ce31abe:
    mov.w @(DAT_ce31b62,pc),r2
    tst r2,r4
    bt LAB_ce31b42
    mov.w @(DAT_ce31b64,pc),r0
    mov 0x02,r3
    mov.w @(DAT_ce31b66,pc),r1
    mov.w r13,@(r0,r14)
    mov 0x20,r0
    add r14,r1
    mov.b r3,@(r0,r14)
    add r1,r0
    fldi0 fr3
    mov.l @r0,r3
    add 0xE2,r3
    mov.l r3,@r0
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    bsr FUN_ce31cb6
    mov r14,r4
    mov 0x34,r0
    mov r13,r4
    fmov.s @(r0,r14),fr2
    fmov.s @(r0,r11),fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce31af4
    mov 0x01,r5
    mov r5,r4

LAB_ce31af4:
    mov r12,r2
    tst r10,r2
    bt LAB_ce31afc
    mov r13,r4

LAB_ce31afc:
    mov.w @(DAT_ce31b5e,pc),r2
    tst r2,r12
    bt LAB_ce31b04
    mov r5,r4

LAB_ce31b04:
    mov.w @(DAT_ce31b68,pc),r0
    mov 0x7D,r3
    mov 0x16,r5
    mov.w r4,@(r0,r14)
    add 0x71,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31b70,pc),r3
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
    mov.w @(DAT_ce31b6a,pc),r0
    mov.l @(PTR_ce31b74,pc),r1
    mov.w @(r0,r14),r2
    or r10,r2
    mov.w r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    bra LAB_ce31b44
    mov 0x01,r0

LAB_ce31b42:
    mov 0x00,r0

LAB_ce31b44:
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b52:
    #data 0x0142
DAT_ce31b54:
    #data 0x02c4
DAT_ce31b56:
    #data 0x034e
DAT_ce31b58:
    #data 0x020c
DAT_ce31b5a:
    #data 0x0800
DAT_ce31b5c:
    #data 0x0525
DAT_ce31b5e:
    #data 0x0400
DAT_ce31b60:
    #data 0x0200
DAT_ce31b62:
    #data 0x0360
DAT_ce31b64:
    #data 0x0352
DAT_ce31b66:
    #data 0x02a4
DAT_ce31b68:
    #data 0x0130
DAT_ce31b6a:
    #data 0x01ac
    #align4

DAT_ce31b6c:
    #data 0x43855555
PTR_ce31b70:
    #data loc_8c2896b0
PTR_ce31b74:
    #data loc_8c034e8c

;=============================================

FUN_ce31b78:
    mov.w @(DAT_ce31c4c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(r0,r14),r4
    mov.w @(DAT_ce31c50,pc),r0
    mov.w @(DAT_ce31c4e,pc),r5
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31bb2
    extu.w r4,r4
    mov.w @(DAT_ce31c52,pc),r0
    mov.l @(r0,r14),r6
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fmov.s @(r0,r6),fr4
    mova @(DAT_ce31c5c,pc),r0
    fsub fr3,fr4
    fmov.s @r0,fr3
    fcmp/gt fr3,fr4
    bf/s LAB_ce31ba8
    mov 0x00,r4
    mov.w @(DAT_ce31c54,pc),r4

LAB_ce31ba8:
    mova @(DAT_ce31c60,pc),r0
    fmov.s @r0,fr3
    fcmp/gt fr4,fr3
    bf LAB_ce31bb2
    mov r5,r4

LAB_ce31bb2:
    mov.w @(DAT_ce31c56,pc),r2
    tst r4,r2
    bt LAB_ce31bfa
    mov 0x20,r0
    mov 0x01,r1
    mov.b r1,@(r0,r14)
    tst r5,r4
    mova @(DAT_ce31c64,pc),r0
    bt/s LAB_ce31bca
    fmov.s @r0,fr4
    mova @(DAT_ce31c68,pc),r0
    fmov.s @r0,fr4

LAB_ce31bca:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    bsr FUN_ce31cb6
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    mov 0x07,r13
    fcmp/gt fr3,fr2
    bf/s LAB_ce31be2
    mov 0x00,r4
    mov 0x01,r4

LAB_ce31be2:
    mov.w @(DAT_ce31c58,pc),r0
    mov.w @(r0,r14),r2
    cmp/eq r4,r2
    bt LAB_ce31bec
    mov 0x0E,r13

LAB_ce31bec:
    mov.l @(PTR_ce31c6c,pc),r2
    mov 0x16,r5
    mov r13,r6
    jsr @r2
    mov r14,r4
    bra LAB_ce31bfc
    mov 0x01,r0

LAB_ce31bfa:
    mov 0x00,r0

LAB_ce31bfc:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31c04:
    mov.w @(DAT_ce31c4c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(r0,r14),r4
    mov.w @(DAT_ce31c50,pc),r0
    mov.w @(DAT_ce31c56,pc),r5
    extu.w r4,r4
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31c20
    and r5,r4
    mov r5,r4

LAB_ce31c20:
    tst r4,r4
    bf LAB_ce31c70
    mov 0x20,r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    bsr FUN_ce31cb6
    mov r14,r4
    mov.w @(DAT_ce31c5a,pc),r0
    mov.w @(DAT_ce31c54,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt/s LAB_ce31c3e
    mov 0x0C,r13
    mov 0x06,r13

LAB_ce31c3e:
    mov.l @(PTR_ce31c6c,pc),r3
    mov 0x16,r5
    mov r13,r6
    jsr @r3
    mov r14,r4
    bra LAB_ce31cae
    mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c4c:
    #data 0x0340
DAT_ce31c4e:
    #data 0x0800
DAT_ce31c50:
    #data 0x0525
DAT_ce31c52:
    #data 0x020c
DAT_ce31c54:
    #data 0x0400
DAT_ce31c56:
    #data 0x0c00
DAT_ce31c58:
    #data 0x0130
DAT_ce31c5a:
    #data 0x034c
    #align4

DAT_ce31c5c:
    #data 0x43855555
DAT_ce31c60:
    #data 0xc3855555
DAT_ce31c64:
    #data 0x40a00000
DAT_ce31c68:
    #data 0xc0a00000
PTR_ce31c6c:
    #data loc_8c034e8c

;=============================================

LAB_ce31c70:
    mov.w @(DAT_ce31d90,pc),r0
    mov.w @(r0,r14),r6
    mov.w @(DAT_ce31d92,pc),r0
    extu.w r6,r6
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31c82
    and r5,r6
    mov r5,r6

LAB_ce31c82:
    cmp/eq r6,r4
    bt LAB_ce31cac
    mova @(DAT_ce31dac,pc),r0
    mov.w @(DAT_ce31d96,pc),r2
    fmov.s @r0,fr4
    mov.w @(DAT_ce31d94,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce31c9e
    mov 0x07,r13
    mova @(DAT_ce31db0,pc),r0
    fmov.s @r0,fr4
    mov 0x0E,r13

LAB_ce31c9e:
    mov.l @(PTR_ce31db4,pc),r3
    mov 0x5C,r0
    mov 0x16,r5
    fmov fr4,@(r0,r14)
    mov r13,r6
    jsr @r3
    mov r14,r4

LAB_ce31cac:
    mov 0x00,r0

LAB_ce31cae:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31cb6:
    mov.w @(DAT_ce31d98,pc),r0
    mov.l @(r0,r4),r3
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fmov.s @(r0,r3),fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce31cc8
    mov 0x00,r5
    mov 0x01,r5

LAB_ce31cc8:
    mov.w @(DAT_ce31d9a,pc),r0
    mov.b r5,@(r0,r4)
    extu.b r5,r5
    mov.w @(DAT_ce31d9c,pc),r0
    rts
    mov.w r5,@(r0,r4)

;=============================================

FUN_ce31cd4:
    mov 0x20,r0
    fldi0 fr3
    mov 0x00,r3
    mov.b r3,@(r0,r4)
    mov 0x0C,r6
    mov.w @(DAT_ce31d9c,pc),r0
    mov.l @(PTR_ce31db4,pc),r3
    mov.b @(r0,r4),r2
    mov.w @(DAT_ce31d9a,pc),r0
    mov.b r2,@(r0,r4)
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x16,r5

LAB_ce31cf0:
    mov.w @(DAT_ce31d9e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x03,r2
    mov.w @(DAT_ce31da0,pc),r0
    mov.l @(PTR_ce31db8,pc),r3
    mov.l r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31dbc,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d1a:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31da2,pc),r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31da4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31dc0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31dc4,pc),r2
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
    mov.w @(DAT_ce31da6,pc),r0
    mov 0x7C,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31da8,pc),r0
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31dc8,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31dcc,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31db4,pc),r3
    mov r14,r4
    mov 0x05,r6
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d90:
    #data 0x0342
DAT_ce31d92:
    #data 0x0525
DAT_ce31d94:
    #data 0x034a
DAT_ce31d96:
    #data 0x0400
DAT_ce31d98:
    #data 0x020c
DAT_ce31d9a:
    #data 0x01d2
DAT_ce31d9c:
    #data 0x0130
DAT_ce31d9e:
    #data 0x01eb
DAT_ce31da0:
    #data 0x00cc
DAT_ce31da2:
    #data 0x0080
DAT_ce31da4:
    #data 0x0202
DAT_ce31da6:
    #data 0x041c
DAT_ce31da8:
    #data 0x01f9
    #align4

DAT_ce31dac:
    #data 0x40a00000
DAT_ce31db0:
    #data 0xc0a00000
PTR_ce31db4:
    #data loc_8c034e8c
PTR_ce31db8:
    #data loc_8c05a2cc
PTR_ce31dbc:
    #data PTR_ce33494
PTR_ce31dc0:
    #data loc_8c05218a
PTR_ce31dc4:
    #data loc_8c05115a
PTR_ce31dc8:
    #data loc_8c2896b0
PTR_ce31dcc:
    #data loc_8c0ed9e4

;=============================================

LAB_ce31dd0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31ea8,pc),r0
    mov r4,r14
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31eb4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31eaa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e14
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce31dfe
    mov.l @(PTR_ce31eb8,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    bra LAB_ce31e14
    nop

LAB_ce31dfe:
    mov.w @(DAT_ce31eac,pc),r6
    mov 0x01,r7
    mov.w @(0x1c,r14),r0
    mov 0x00,r5
    add r14,r6
    mov.l @(PTR_ce31ebc,pc),r3
    mov.b @r6,r6
    extu.b r6,r6
    add r0,r6
    jsr @r3
    mov r14,r4

LAB_ce31e14:
    mov.w @(DAT_ce31eae,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e3e
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce31eae,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31ec0,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce31ec4,pc),r3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31e3e:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e46:
    mov.w @(DAT_ce31ea8,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31eb4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31ea2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x78,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce31ec8,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31eb0,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31e78
    mova @(DAT_ce31ecc,pc),r0
    fmov.s @r0,fr4

LAB_ce31e78:
    mov 0x60,r0
    fldi0 fr3
    fmov fr4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fldi1 fr3
    fadd fr3,fr3
    mov.l @(PTR_ce31ed0,pc),r3
    mov 0x16,r5
    mov 0x0F,r6
    fmul fr3,fr4
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31ed4
    mov.l @r15+,r14

LAB_ce31ea2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ea8:
    #data 0x0328
DAT_ce31eaa:
    #data 0x0140
DAT_ce31eac:
    #data 0x014b
DAT_ce31eae:
    #data 0x0141
DAT_ce31eb0:
    #data 0x0130
    #align4

PTR_ce31eb4:
    #data loc_8c034dee
PTR_ce31eb8:
    #data loc_8c035162
PTR_ce31ebc:
    #data loc_8c03544c
DAT_ce31ec0:
    #data 0x42092492
PTR_ce31ec4:
    #data loc_8c050834
DAT_ce31ec8:
    #data 0x41200000
DAT_ce31ecc:
    #data 0xc1200000
PTR_ce31ed0:
    #data loc_8c034e8c

;=============================================

LAB_ce31ed4:
    mov.l r14,@-r15
    mov 0x05,r3
    mov.w @(DAT_ce32006,pc),r0
    mov r4,r14
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32010,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x60,r0
    mov.l @(PTR_ce32014,pc),r3
    fmov.s @(r0,r14),fr15
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce31f02
    mov 0x6C,r0
    mov.l @(PTR_ce32010,pc),r3
    fmov.s @(r0,r14),fr15
    jsr @r3
    mov r14,r4

LAB_ce31f02:
    mov 0x5C,r0
    mov 0x5C,r1
    fmov fr15,@(r0,r14)
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
    mov.w @(DAT_ce32008,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31f52
    mov 0x00,r13
    mov.b r13,@(r0,r14)
    add 0x56,r0
    mov 0x7C,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32018,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31f52:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31f92
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce3201c,pc),r3
    mov 0x0A,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3200a,pc),r0
    mov 0x6D,r2
    mov.l @(PTR_ce32018,pc),r3
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

LAB_ce31f92:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31f9c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32010,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31fca
    mov.w @(DAT_ce3200c,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce3201c,pc),r3
    mov 0x0B,r6
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31fca:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31fd0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32010,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31fea
    lds.l @r15+,PR
    mov.l @(PTR_ce32020,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31fea:
    mov.w @(DAT_ce3200e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32000
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce32024,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32000:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32006:
    #data 0x0328
DAT_ce32008:
    #data 0x014b
DAT_ce3200a:
    #data 0x01a1
DAT_ce3200c:
    #data 0x0327
DAT_ce3200e:
    #data 0x0141
    #align4

PTR_ce32010:
    #data loc_8c034dee
PTR_ce32014:
    #data loc_8c055d54
PTR_ce32018:
    #data loc_8c2896b0
PTR_ce3201c:
    #data loc_8c034e8c
PTR_ce32020:
    #data LAB_ce33180
PTR_ce32024:
    #data loc_8c0eda3c

;=============================================

LAB_ce32028:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce320ba
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32108,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3210c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32110,pc),r3
    mov 0x05,r5
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
    mov.w @(DAT_ce320fe,pc),r0
    mov 0x15,r5
    mov 0x05,r6
    mov.b r3,@(r0,r14)
    mov 0x3C,r0
    mov.l @(PTR_ce32114,pc),r3
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32100,pc),r0
    mov.l @(PTR_ce32118,pc),r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3209a
    mov.w @(DAT_ce32102,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce32090
    mov r14,r4
    bra LAB_ce32092
    mov 0x00,r5

LAB_ce32090:
    mov 0x07,r5

LAB_ce32092:
    jsr @r13
    nop
    bra LAB_ce320ae
    nop

LAB_ce3209a:
    mov.w @(DAT_ce32102,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce320a8
    mov r14,r4
    bra LAB_ce320aa
    mov 0x04,r5

LAB_ce320a8:
    mov 0x03,r5

LAB_ce320aa:
    jsr @r13
    nop

LAB_ce320ae:
    mov.w @(DAT_ce32104,pc),r0
    mov 0x00,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)

LAB_ce320ba:
    mov.l @(PTR_ce3211c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce320da
    mov.w @(DAT_ce32106,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce320f6
    lds.l @r15+,PR
    mov.l @(PTR_ce32120,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce320da:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce320f6
    lds.l @r15+,PR
    mov.l @(PTR_ce32114,pc),r2
    mov 0x06,r6
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce320f6:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320fe:
    #data 0x01f9
DAT_ce32100:
    #data 0x01e9
DAT_ce32102:
    #data 0x01a3
DAT_ce32104:
    #data 0x027b
DAT_ce32106:
    #data 0x0141
    #align4

PTR_ce32108:
    #data loc_8c05218a
PTR_ce3210c:
    #data loc_8c05115a
PTR_ce32110:
    #data loc_8c056de4
PTR_ce32114:
    #data loc_8c034e8c
PTR_ce32118:
    #data loc_8c0b83f8
PTR_ce3211c:
    #data loc_8c034dee
PTR_ce32120:
    #data LAB_ce33180

;=============================================

LAB_ce32124:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce32180
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce321ec,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce321f0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce321f4,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce321e4,pc),r0
    mov 0x7B,r3
    mov 0x15,r5
    mov.b r13,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce321f8,pc),r3
    mov 0x07,r6
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce321fc,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32180:
    mov.w @(DAT_ce321e6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32192
    mov.l @(PTR_ce32200,pc),r3
    mov 0x03,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce32192:
    mov.l @(PTR_ce32204,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321c0
    mova @(DAT_ce32208,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce321e8,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce321ae
    mova @(DAT_ce3220c,pc),r0
    fmov.s @r0,fr4

LAB_ce321ae:
    mov 0x34,r0
    mov r14,r4
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce33180
    mov.l @r15+,r14

LAB_ce321c0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce321c8:
    mov.w @(DAT_ce321ea,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce32210,pc),r1
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce321e4:
    #data 0x01f9
DAT_ce321e6:
    #data 0x0141
DAT_ce321e8:
    #data 0x0130
DAT_ce321ea:
    #data 0x041c
    #align4

PTR_ce321ec:
    #data loc_8c05218a
PTR_ce321f0:
    #data loc_8c05115a
PTR_ce321f4:
    #data loc_8c056de4
PTR_ce321f8:
    #data loc_8c2896b0
PTR_ce321fc:
    #data loc_8c034e8c
PTR_ce32200:
    #data loc_8c0b9f48
PTR_ce32204:
    #data loc_8c034dee
DAT_ce32208:
    #data 0xc1d55555
DAT_ce3220c:
    #data 0x41d55555
PTR_ce32210:
    #data PTR_ce334ac

;=============================================

LAB_ce32214:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r5
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce322cc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce322d0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce322d4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce322c2,pc),r0
    mov 0x00,r13
    mov.w @(DAT_ce322c4,pc),r2
    mov.b @(r0,r14),r4
    mov.l @(PTR_ce322d8,pc),r0
    add r14,r2
    extu.b r4,r4
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce322c6,pc),r0
    mov.b r3,@r2
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce322dc,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x1E,r1
    mov.w @(DAT_ce322c8,pc),r0
    add r14,r1
    mov.b r13,@(r0,r14)
    mov.l @(PTR_ce322e0,pc),r0
    mov.b @(r0,r4),r2
    extu.b r2,r2
    mov.w r2,@r1
    shll r4
    mov.l @(PTR_ce322e4,pc),r2
    mov r4,r5
    shll2 r5
    add r2,r5
    mov.l @(PTR_ce322e8,pc),r3
    mov 0x22,r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov.s @r5,fr3
    mov 0x08,r12
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r5),fr3
    mov 0x68,r0
    mov r13,r5
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce322a8
    mov.w @(DAT_ce322ca,pc),r0
    bra LAB_ce322b0
    mov.b r13,@(r0,r14)

LAB_ce322a8:
    mov.w @(DAT_ce322ca,pc),r0
    mov 0x01,r2
    mov 0x0B,r12
    mov.b r2,@(r0,r14)

LAB_ce322b0:
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce322ec,pc),r3
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce322c2:
    #data 0x01a3
DAT_ce322c4:
    #data 0x01a1
DAT_ce322c6:
    #data 0x01ac
DAT_ce322c8:
    #data 0x01f9
DAT_ce322ca:
    #data 0x012c
    #align4

PTR_ce322cc:
    #data loc_8c056de4
PTR_ce322d0:
    #data loc_8c05218a
PTR_ce322d4:
    #data loc_8c05115a
PTR_ce322d8:
    #data DAT_ce334cc
PTR_ce322dc:
    #data loc_8c2896b0
PTR_ce322e0:
    #data DAT_ce334ce
PTR_ce322e4:
    #data DAT_ce334bc
PTR_ce322e8:
    #data loc_8c0ed264
PTR_ce322ec:
    #data loc_8c034e8c

;=============================================

LAB_ce322f0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32434,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32428,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce323b6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr4
    mov.w @(DAT_ce3242a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32312
    mov 0x34,r0
    fneg fr4

LAB_ce32312:
    fmov.s @(r0,r14),fr3
    mov 0x68,r1
    add r14,r1
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce32366
    fmov fr2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3242c,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    add 0x46,r0
    mov.b @(r0,r14),r4
    tst r4,r4
    bt LAB_ce3235a
    exts.b r4,r0
    tst 0x11,r0
    bf LAB_ce3235a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3242c,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3235a:
    mov.w @(DAT_ce3242c,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce32438,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4

LAB_ce32366:
    mov 0x22,r0
    mov.b @(r0,r14),r2
    add 0x20,r2
    mov.b r2,@(r0,r14)
    extu.b r2,r2
    tst r2,r2
    bf LAB_ce323b6
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bf/s LAB_ce323ac
    mov 0x4B,r5
    mov.w @(DAT_ce3242e,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce3243c,pc),r3
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)
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

LAB_ce323ac:
    lds.l @r15+,PR
    mov.l @(PTR_ce32440,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce323b6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce323bc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32434,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce323ec
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce32438,pc),r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3242c,pc),r0
    mov.b @(r0,r14),r6
    add 0x01,r6
    mov.b r6,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce323ec:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce323f2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32434,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32410
    mov.w @(DAT_ce32430,pc),r0
    mov 0x01,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce33180
    mov.l @r15+,r14

LAB_ce32410:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32416:
    mov r4,r3
    mov.l @(PTR_ce32444,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32428:
    #data 0x0141
DAT_ce3242a:
    #data 0x0130
DAT_ce3242c:
    #data 0x0158
DAT_ce3242e:
    #data 0x01a1
DAT_ce32430:
    #data 0x012c
    #align4

PTR_ce32434:
    #data loc_8c034dee
PTR_ce32438:
    #data loc_8c034e8c
PTR_ce3243c:
    #data loc_8c2896b0
PTR_ce32440:
    #data loc_8c04223a
PTR_ce32444:
    #data PTR_ce334d0

;=============================================

LAB_ce32448:
    mov.w @(DAT_ce3253c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32464
    mov.w @(DAT_ce32540,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3253e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32464:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3254c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32550,pc),r2
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
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    mov 0x00,r4
    mov.w @(DAT_ce32542,pc),r0
    mov 0x55,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32544,pc),r0
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32554,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov r14,r4
    mov.w @(r0,r2),r1
    mov 0x10,r6
    mov 0x16,r5
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce32558,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce324cc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32546,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32548,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3253c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce324ee
    bra LAB_ce324f0
    mov 0x02,r3

LAB_ce324ee:
    mov 0x00,r3

LAB_ce324f0:
    mov.w @(DAT_ce3254a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3255c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce32534
    mov.w @(DAT_ce32540,pc),r0
    mov 0x00,r4
    fldi0 fr3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32564,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x78,r0
    mov.w r0,@(0x1c,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1e,r14)
    mova @(DAT_ce32560,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32534:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3253c:
    #data 0x0255
DAT_ce3253e:
    #data 0x00ff
DAT_ce32540:
    #data 0x03f0
DAT_ce32542:
    #data 0x041c
DAT_ce32544:
    #data 0x01f9
DAT_ce32546:
    #data 0x03f8
DAT_ce32548:
    #data 0x0328
DAT_ce3254a:
    #data 0x03f1
    #align4

PTR_ce3254c:
    #data loc_8c05218a
PTR_ce32550:
    #data loc_8c05115a
PTR_ce32554:
    #data loc_8c2896b0
PTR_ce32558:
    #data loc_8c034e8c
PTR_ce3255c:
    #data loc_8c034dee
DAT_ce32560:
    #data 0x425edb6d
PTR_ce32564:
    #data loc_8c050834

;=============================================

LAB_ce32568:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce326b4,pc),r3
    mov 0x11,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce32584:
    mov.w @(DAT_ce326a2,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce326a4,pc),r0
    mov.l @(PTR_ce326b8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce325b4
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce325b4
    mov.l @(PTR_ce326bc,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce325b4:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce325e6
    mov.w @(DAT_ce326a6,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce326b4,pc),r3
    mov 0x12,r6
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce326a8,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce325e6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce325ec:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce326b8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32604
    mov.l @r15,r4
    add 0x04,r15
    bra LAB_ce33180
    lds.l @r15+,PR

LAB_ce32604:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3260c:
    mov r4,r3
    mov.l @(PTR_ce326c0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3261e:
    mov.w @(DAT_ce326aa,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3263a
    mov.w @(DAT_ce326ae,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce326ac,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3263a:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce326c4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce326c8,pc),r2
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
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    mov 0x00,r4
    mov.w @(DAT_ce326b0,pc),r0
    mov 0x56,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce326b2,pc),r0
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce326cc,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov r14,r4
    mov.w @(r0,r2),r1
    mov 0x13,r6
    mov 0x16,r5
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce326b4,pc),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326a2:
    #data 0x03f8
DAT_ce326a4:
    #data 0x0328
DAT_ce326a6:
    #data 0x03f9
DAT_ce326a8:
    #data 0x0327
DAT_ce326aa:
    #data 0x0255
DAT_ce326ac:
    #data 0x00ff
DAT_ce326ae:
    #data 0x03f0
DAT_ce326b0:
    #data 0x041c
DAT_ce326b2:
    #data 0x01f9
    #align4

PTR_ce326b4:
    #data loc_8c034e8c
PTR_ce326b8:
    #data loc_8c034dee
PTR_ce326bc:
    #data loc_8c0b804c
PTR_ce326c0:
    #data PTR_ce334e4
PTR_ce326c4:
    #data loc_8c05218a
PTR_ce326c8:
    #data loc_8c05115a
PTR_ce326cc:
    #data loc_8c2896b0

;=============================================

LAB_ce326d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce327dc,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce327de,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce327e0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce326f2
    bra LAB_ce326f4
    mov 0x02,r3

LAB_ce326f2:
    mov 0x00,r3

LAB_ce326f4:
    mov.w @(DAT_ce327e2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce327e8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce3273a
    mov.w @(DAT_ce327e4,pc),r0
    mov 0x00,r4
    fldi0 fr3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce327f0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce327ec,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce327f4,pc),r2
    mov 0x07,r6
    mov r6,r5
    jsr @r2
    mov r14,r4

LAB_ce3273a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32742:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    mov.l @(PTR_ce327f8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mov 0x0C,r0
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3278a
    mov r0,r4
    mova @(DAT_ce327fc,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce327e6,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32774
    mova @(DAT_ce32800,pc),r0
    fmov.s @r0,fr4

LAB_ce32774:
    mov 0x34,r0
    mov.l @(PTR_ce32808,pc),r3
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce32804,pc),r0
    fmov.s @r3,fr2
    fmov.s @r0,fr3
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r4)

LAB_ce3278a:
    mov.l @(PTR_ce3280c,pc),r3
    mov 0x16,r5
    mov 0x14,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3279a:
    mov.w @(DAT_ce327dc,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce327de,pc),r0
    mov.l @(PTR_ce327e8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce327d6
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3280c,pc),r3
    mov 0x15,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce327d6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce327dc:
    #data 0x03f8
DAT_ce327de:
    #data 0x0328
DAT_ce327e0:
    #data 0x0255
DAT_ce327e2:
    #data 0x03f1
DAT_ce327e4:
    #data 0x03f0
DAT_ce327e6:
    #data 0x0130
    #align4

PTR_ce327e8:
    #data loc_8c034dee
DAT_ce327ec:
    #data 0x425edb6d
PTR_ce327f0:
    #data loc_8c050834
PTR_ce327f4:
    #data loc_8c02fec4
PTR_ce327f8:
    #data loc_8c0b83f8
DAT_ce327fc:
    #data 0x42555555
DAT_ce32800:
    #data 0xc2555555
DAT_ce32804:
    #data 0x42892492
PTR_ce32808:
    #data loc_8c26a5a8
PTR_ce3280c:
    #data loc_8c034e8c

;=============================================

LAB_ce32810:
    mov.w @(DAT_ce32942,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32944,pc),r0
    mov.l @(PTR_ce32954,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce3285e
    mov.w @(DAT_ce32946,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32958,pc),r3
    mov 0x16,r6
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov r6,r5
    mov.w @(DAT_ce32948,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3294a,pc),r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3285e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32864:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    mov.l @(PTR_ce32954,pc),r3
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3288a
    mov.l @(PTR_ce3295c,pc),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce33180
    mov.l @r15+,r14

LAB_ce3288a:
    mov.w @(DAT_ce3294c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce328aa
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bf LAB_ce328aa
    lds.l @r15+,PR
    mov.l @(PTR_ce32958,pc),r2
    mov r14,r4
    mov 0x17,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce328aa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce328b0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32960,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce328c6
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce33180
    mov.l @r15+,r14

LAB_ce328c6:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32964,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce328d8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32968,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3294e,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce3296c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32950,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32902
    mova @(DAT_ce32970,pc),r0
    fmov.s @r0,fr4

LAB_ce32902:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x30,r3
    mov.w @(DAT_ce32952,pc),r0
    mov 0x15,r5
    mov 0x10,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32974,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32958,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32978,pc),r3
    mov r14,r4
    mov 0x03,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32942:
    #data 0x03f8
DAT_ce32944:
    #data 0x0328
DAT_ce32946:
    #data 0x03f9
DAT_ce32948:
    #data 0x0327
DAT_ce3294a:
    #data 0x00b4
DAT_ce3294c:
    #data 0x0140
DAT_ce3294e:
    #data 0x01f9
DAT_ce32950:
    #data 0x0130
DAT_ce32952:
    #data 0x01a1
    #align4

PTR_ce32954:
    #data loc_8c034dee
PTR_ce32958:
    #data loc_8c034e8c
PTR_ce3295c:
    #data loc_8c02fd26
PTR_ce32960:
    #data loc_8c055d7a
PTR_ce32964:
    #data PTR_ce334fc
PTR_ce32968:
    #data loc_8c05218a
DAT_ce3296c:
    #data 0xc0d55555
DAT_ce32970:
    #data 0x40d55555
PTR_ce32974:
    #data loc_8c2896b0
PTR_ce32978:
    #data loc_8c0ed3e4

;=============================================

LAB_ce3297c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32a7c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce32a80,pc),r2
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce32a72,pc),r0
    mov.b @r2,r3
    mov r4,r2
    mov.b @(r0,r14),r1
    extu.b r3,r3
    extu.b r1,r1
    shad r1,r2
    tst r2,r3
    bf LAB_ce329cc
    mov.w @(DAT_ce32a74,pc),r0
    mov r4,r2
    mov.b @(r0,r14),r1
    add 0xD5,r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    xor r4,r3
    shad r3,r2
    tst r2,r1
    bt LAB_ce329d4

LAB_ce329cc:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce33180
    mov.l @r15+,r14

LAB_ce329d4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce329da:
    mov r4,r3
    mov.l @(PTR_ce32a84,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce329ec:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce32a88,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(DAT_ce32a8c,pc),r1
    mov 0x02,r2
    mov.w @(DAT_ce32a76,pc),r0
    lds r1,FPUL
    mov.b r2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32a90,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32a78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32a24
    mova @(DAT_ce32a94,pc),r0
    fmov.s @r0,fr4

LAB_ce32a24:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32a98,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x77,r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32a9c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32a7a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32aa0,pc),r3
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
    mov.l @(PTR_ce32aa4,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a72:
    #data 0x01a4
DAT_ce32a74:
    #data 0x01fd
DAT_ce32a76:
    #data 0x01f9
DAT_ce32a78:
    #data 0x01d2
DAT_ce32a7a:
    #data 0x01a1
    #align4

PTR_ce32a7c:
    #data loc_8c034dee
PTR_ce32a80:
    #data loc_8c28963c
PTR_ce32a84:
    #data PTR_ce33504
PTR_ce32a88:
    #data loc_8c035162
DAT_ce32a8c:
    #data 0x43092492
DAT_ce32a90:
    #data 0x41f00000
DAT_ce32a94:
    #data 0xc1f00000
DAT_ce32a98:
    #data 0xbe892492
DAT_ce32a9c:
    #data 0xbf4db6db
PTR_ce32aa0:
    #data loc_8c2896b0
PTR_ce32aa4:
    #data loc_8c034e8c

;=============================================

LAB_ce32aa8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32bb4,pc),r3
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
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce32b0e
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32ba4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32bb8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32bbc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32b0e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32b14:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32bbc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32b2e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32bc0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32b2e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32b36:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32ba6,pc),r0
    mov r4,r14
    mov.w @(DAT_ce32ba8,pc),r3
    mov 0x00,r4
    mov.b @(r0,r14),r0
    add r14,r3
    mov.l @(PTR_ce32bc4,pc),r2
    extu.b r0,r0
    mov.b @r3,r3
    shll2 r0
    extu.b r3,r3
    shll r0
    add r0,r2
    shll2 r3
    add r2,r3
    mov.l @r3,r1
    tst r1,r1
    bt/s LAB_ce32b98
    mov.l r1,@r15
    mov.w @(DAT_ce32baa,pc),r0
    mov.w @(DAT_ce32bac,pc),r3
    mov.w @(r0,r14),r5
    extu.w r5,r5
    and r3,r5
    tst r5,r5
    bt LAB_ce32b98
    shlr8 r5
    mov 0x22,r0
    shlr2 r5
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce32bae,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32b98
    mov.l @(PTR_ce32bc8,pc),r1
    jsr @r1
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32b98
    mov r0,r4
    mov.w @(DAT_ce32bb0,pc),r3
    mov.l @r15,r2
    mov.w @(DAT_ce32bb2,pc),r0
    add r3,r2
    mov.b r2,@(r0,r14)

LAB_ce32b98:
    mov r4,r0
    nop
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ba4:
    #data 0x0142
DAT_ce32ba6:
    #data 0x01f9
DAT_ce32ba8:
    #data 0x01fe
DAT_ce32baa:
    #data 0x01fa
DAT_ce32bac:
    #data 0x0c00
DAT_ce32bae:
    #data 0x01a3
DAT_ce32bb0:
    #data 0x00ff
DAT_ce32bb2:
    #data 0x01f7
    #align4

PTR_ce32bb4:
    #data loc_8c052ce2
PTR_ce32bb8:
    #data loc_8c0511b4
PTR_ce32bbc:
    #data loc_8c034dee
PTR_ce32bc0:
    #data loc_8c051854
PTR_ce32bc4:
    #data DAT_ce33510
PTR_ce32bc8:
    #data loc_8c045790

;=============================================

LAB_ce32bcc:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mova @(DAT_ce32d20,pc),r0
    mov.l @(PTR_ce32d28,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32d24,pc),r0
    mov r4,r14
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32d2c,pc),r2
    mov 0x05,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32d12,pc),r0
    mov 0x0F,r5
    mov.l @(PTR_ce32d30,pc),r3
    mov.b @(r0,r14),r0
    and 0x3F,r0
    mov r0,r6
    jsr @r3
    mov r14,r4
    mov 0x34,r0
    mov.l @(PTR_ce32d34,pc),r3
    fmov.s @(r0,r14),fr15
    mov 0x38,r0
    fmov.s @(r0,r14),fr14
    mov.w @(DAT_ce32d14,pc),r0
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov 0x34,r0
    mov.l @(PTR_ce32d38,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x38,r0
    fmov fr14,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32d16,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32c3a
    mov.l @(PTR_ce32d3c,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4

LAB_ce32c3a:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce32c46:
    mov.w @(DAT_ce32d18,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32d40,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32c64:
    mov r4,r3
    mov.l @(PTR_ce32d44,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32c76:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32d48,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32d1a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32d08
    mov.b @(0x6,r14),r0
    mov 0xFF,r3
    mov 0x03,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x28,r0
    mov.w r0,@(0x1c,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr15
    mov 0x38,r0
    fmov.s @(r0,r14),fr14
    mov.w @(DAT_ce32d1c,pc),r0
    mov.b r3,@(r0,r14)
    add 0xF6,r0
    mov.b r2,@(r0,r14)
    add 0x78,r0
    mov.l @(PTR_ce32d34,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32d16,pc),r0
    mov 0x02,r2
    mov 0xFF,r3
    mov.b r2,@(r0,r14)
    mova @(DAT_ce32d4c,pc),r0
    fmov.s @r0,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    mov 0x01,r2
    fsub fr15,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32d50,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce32d54,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fsub fr14,fr3
    fdiv fr4,fr3
    fadd fr2,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d1c,pc),r0
    mov.b r3,@(r0,r14)
    add 0xF6,r0
    mov.b r2,@(r0,r14)
    add 0x78,r0
    mov.l @(PTR_ce32d34,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov 0x34,r0
    fmov fr15,@(r0,r14)
    mov 0x38,r0
    fmov fr14,@(r0,r14)

LAB_ce32d08:
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d12:
    #data 0x01f7
DAT_ce32d14:
    #data 0x01c8
DAT_ce32d16:
    #data 0x01f9
DAT_ce32d18:
    #data 0x01ea
DAT_ce32d1a:
    #data 0x0141
DAT_ce32d1c:
    #data 0x015a
    #align4

DAT_ce32d20:
    #data 0xc1555555
DAT_ce32d24:
    #data 0x42092492
PTR_ce32d28:
    #data loc_8c103660
PTR_ce32d2c:
    #data loc_8c02fec4
PTR_ce32d30:
    #data loc_8c034e8c
PTR_ce32d34:
    #data loc_8c04ce3a
PTR_ce32d38:
    #data loc_8c056f2a
PTR_ce32d3c:
    #data loc_8c0ed060
PTR_ce32d40:
    #data PTR_ce33530
PTR_ce32d44:
    #data PTR_ce33538
PTR_ce32d48:
    #data loc_8c034dee
DAT_ce32d4c:
    #data 0x42200000
DAT_ce32d50:
    #data 0xbf4db6db
DAT_ce32d54:
    #data 0x41809249

;=============================================

LAB_ce32d58:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32e30,pc),r3
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
    fmov fr2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32dbe
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32e34,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32dbe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32dc4:
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce32e28
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32e30,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32e2e,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32e38,pc),r3
    mov.l @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e28:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e2e:
    #data 0x01c8
    #align4

PTR_ce32e30:
    #data loc_8c034dee
PTR_ce32e34:
    #data loc_8c034e8c
PTR_ce32e38:
    #data loc_8c04ce3a

;=============================================

LAB_ce32e3c:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32f38,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32f2a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32e6e
    fldi0 fr15
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mov 0x04,r0
    mov.l @(PTR_ce32f3c,pc),r3
    fmov.s fr15,@r15
    fmov fr15,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32f40,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4

LAB_ce32e6e:
    mov.w @(DAT_ce32f2c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32f00
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32f2c,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32f2e,pc),r0
    mov.l @(r0,r14),r2
    add 0xEC,r0
    mov.l r14,@(r0,r2)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0x2E,r0
    mov 0x01,r2
    mov.b r2,@(r0,r3)
    add 0xD2,r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov 0x21,r2
    mov.b r2,@(r0,r3)
    mova @(DAT_ce32f44,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32f30,pc),r0
    fmov.s fr3,@r15
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32eb2
    fmov.s @r15,fr3
    fneg fr3
    fmov.s fr3,@r15

LAB_ce32eb2:
    mov 0x34,r0
    fmov.s @r15,fr2
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce32f32,pc),r0
    fadd fr3,fr2
    fmov.s fr2,@r15
    fmov.s @(r0,r14),fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mova @(DAT_ce32f48,pc),r0
    fmov.s @r0,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    mov 0x5C,r0
    fmov.s @r15,fr3
    fsub fr3,fr2
    fdiv fr4,fr2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce32f4c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r15),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce32f50,pc),r0
    fsub fr3,fr2
    fmov.s @r0,fr3
    fdiv fr4,fr2
    fadd fr3,fr2
    mov.l @(PTR_ce32f54,pc),r3
    mov 0x60,r0
    jsr @r3
    fmov fr2,@(r0,r14)
    bra LAB_ce32f20
    nop

LAB_ce32f00:
    mov.w @(DAT_ce32f34,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32f16
    mov.w @(DAT_ce32f2e,pc),r0
    mov.l @(PTR_ce32f58,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    bra LAB_ce32f20
    nop

LAB_ce32f16:
    mov.w @(DAT_ce32f2e,pc),r0
    mov.l @(PTR_ce32f5c,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4

LAB_ce32f20:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f2a:
    #data 0x014b
DAT_ce32f2c:
    #data 0x0141
DAT_ce32f2e:
    #data 0x01c8
DAT_ce32f30:
    #data 0x0130
DAT_ce32f32:
    #data 0x041c
DAT_ce32f34:
    #data 0x0140
    #align4

PTR_ce32f38:
    #data loc_8c034dee
PTR_ce32f3c:
    #data loc_8c0fdb4e
PTR_ce32f40:
    #data loc_8c04223a
DAT_ce32f44:
    #data 0x43855555
DAT_ce32f48:
    #data 0x42000000
DAT_ce32f4c:
    #data 0xbf4db6db
DAT_ce32f50:
    #data 0x414db6db
PTR_ce32f54:
    #data loc_8c02fd26
PTR_ce32f58:
    #data loc_8c04cc1c
PTR_ce32f5c:
    #data loc_8c04ce3a

;=============================================

LAB_ce32f60:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce330d8,pc),r3
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
    mov.w @(DAT_ce330ce,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32fd6
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce330ce,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce330d0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce330dc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce330e0,pc),r2
    mov r14,r4
    mov 0x02,r6
    mov 0x0F,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32fd6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32fdc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce330d8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32ff4
    mov.l @r15,r4
    add 0x04,r15
    bra LAB_ce33180
    lds.l @r15+,PR

LAB_ce32ff4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32ffc:
    mov r4,r3
    mov.l @(PTR_ce330e4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3300e:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r0
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    mov 0xFF,r3
    mov 0x03,r2
    sts.l PR,@-r15
    mov.b r0,@(0x6,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr15
    mov 0x38,r0
    fmov.s @(r0,r14),fr14
    mov.w @(DAT_ce330d2,pc),r0
    mov.b r3,@(r0,r14)
    add 0xF6,r0
    mov.b r2,@(r0,r14)
    add 0x78,r0
    mov.l @(PTR_ce330e8,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce330ec,pc),r0
    fmov.s @r0,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    mov 0xFF,r3
    fsub fr15,fr3
    mov 0x01,r2
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce330f0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce330f4,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fsub fr14,fr3
    fdiv fr4,fr3
    fadd fr2,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce330d2,pc),r0
    mov.b r3,@(r0,r14)
    add 0xF6,r0
    mov.b r2,@(r0,r14)
    add 0x78,r0
    mov.l @(r0,r14),r5
    mov.l @(PTR_ce330e8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x34,r0
    fmov fr15,@(r0,r14)
    mov 0x38,r0
    fmov fr14,@(r0,r14)
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce33096:
    rts
    nop

LAB_ce3309a:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce330d4,pc),r0
    mov.b @(r0,r4),r3
    mov.l @(PTR_ce330f8,pc),r0
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce330d6,pc),r0
    mov.l @(PTR_ce330fc,pc),r3
    mov.b r2,@(r0,r4)
    jmp @r3
    mov 0x1D,r5

LAB_ce330b4:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce330d4,pc),r0
    mov.b @(r0,r4),r3
    mov.l @(PTR_ce33100,pc),r0
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce330d6,pc),r0
    mov.l @(PTR_ce330fc,pc),r3
    mov.b r2,@(r0,r4)
    jmp @r3
    mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce330ce:
    #data 0x041c
DAT_ce330d0:
    #data 0x01f9
DAT_ce330d2:
    #data 0x015a
DAT_ce330d4:
    #data 0x04c9
DAT_ce330d6:
    #data 0x01e9
    #align4

PTR_ce330d8:
    #data loc_8c034dee
PTR_ce330dc:
    #data loc_8c0511b4
PTR_ce330e0:
    #data loc_8c034e8c
PTR_ce330e4:
    #data PTR_ce33550
PTR_ce330e8:
    #data loc_8c04ce3a
DAT_ce330ec:
    #data 0x41a00000
DAT_ce330f0:
    #data 0xbf4db6db
DAT_ce330f4:
    #data 0x41009249
PTR_ce330f8:
    #data DAT_ce33568
PTR_ce330fc:
    #data loc_8c0530d8
PTR_ce33100:
    #data DAT_ce3356b

;=============================================

LAB_ce33104:
    mov 0x00,r0
    mov.l @(PTR_ce331ac,pc),r5
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce331a0,pc),r0
    mov.w @(DAT_ce331a4,pc),r1
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce331a2,pc),r0
    add r4,r1
    shll r3
    add r5,r3
    mov.b @r3,r2
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce331a0,pc),r0
    mov.b @(r0,r4),r3
    shll r3
    add r3,r5
    mov.l @(PTR_ce331b0,pc),r3
    mov.b @(0x1,r5),r0
    mov.b r0,@r1
    jmp @r3
    mov 0x15,r5

LAB_ce33132:
    mov 0x00,r0
    mov.l @(PTR_ce331b4,pc),r5
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce331a0,pc),r0
    mov.w @(DAT_ce331a4,pc),r1
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce331a2,pc),r0
    add r4,r1
    shll r3
    add r5,r3
    mov.b @r3,r2
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce331a0,pc),r0
    mov.b @(r0,r4),r3
    shll r3
    add r3,r5
    mov.l @(PTR_ce331b0,pc),r3
    mov.b @(0x1,r5),r0
    mov.b r0,@r1
    jmp @r3
    mov 0x15,r5

LAB_ce33160:
    sts.l PR,@-r15
    mov.l @(PTR_ce331b8,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @(PTR_ce331bc,pc),r2
    mov r0,r1
    jsr @r2
    mov 0x03,r0
    mov.l @r15,r4
    mov r0,r6
    mov 0x00,r5
    add 0x0A,r6
    add 0x04,r15
    mov.l @(PTR_ce331c0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33180:
    mov.w @(DAT_ce331a6,pc),r0
    mov 0x00,r5
    fldi0 fr4
    mov.l r5,@(r0,r4)
    mov.w @(DAT_ce331a8,pc),r0
    mov.l @(PTR_ce331c4,pc),r3
    mov.b r5,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    jmp @r3
    fmov fr4,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331a0:
    #data 0x04c9
DAT_ce331a2:
    #data 0x01e9
DAT_ce331a4:
    #data 0x01a3
DAT_ce331a6:
    #data 0x00cc
DAT_ce331a8:
    #data 0x0202
    #align4

PTR_ce331ac:
    #data DAT_ce3356e
PTR_ce331b0:
    #data loc_8c0530d8
PTR_ce331b4:
    #data DAT_ce33574
PTR_ce331b8:
    #data loc_8c03319e
PTR_ce331bc:
    #data loc_8c12939c
PTR_ce331c0:
    #data loc_8c034e8c
PTR_ce331c4:
    #data loc_8c051648
DAT_ce331c8:
    #data 0x0201
    #data 0x0201
DAT_ce331cc:
    #data 0x02ff
    #data 0x02ff
DAT_ce331d0:
    #data 0xffff
    #data 0xffff
DAT_ce331d4:
    #data 0x0201
    #data 0x0201
DAT_ce331d8:
    #data 0x02ff
    #data 0x02ff
DAT_ce331dc:
    #data 0xffff
    #data 0xffff
DAT_ce331e0:
    #data 0x0201
    #data 0x0201
DAT_ce331e4:
    #data 0x02ff
    #data 0x02ff
DAT_ce331e8:
    #data 0xffff
    #data 0xffff
DAT_ce331ec:
    #data 0x0201
    #data 0x0201
DAT_ce331f0:
    #data 0x02ff
    #data 0x02ff
DAT_ce331f4:
    #data 0xffff
    #data 0xffff
DAT_ce331f8:
    #data 0x0201
    #data 0x0200
DAT_ce331fc:
    #data 0x02ff
    #data 0x0201
DAT_ce33200:
    #data 0xffff
    #data 0x02ff
DAT_ce33204:
    #data 0x0201
    #data 0x0201
DAT_ce33208:
    #data 0x02ff
    #data 0x02ff
DAT_ce3320c:
    #data 0xffff
    #data 0xffff
    #align4

PTR_ce33210:
    #data DAT_ce331c8
PTR_ce33214:
    #data DAT_ce331cc
PTR_ce33218:
    #data DAT_ce331d0
PTR_ce3321c:
    #data DAT_ce331d4
PTR_ce33220:
    #data DAT_ce331d8
PTR_ce33224:
    #data DAT_ce331dc
PTR_ce33228:
    #data DAT_ce331e0
PTR_ce3322c:
    #data DAT_ce331e4
PTR_ce33230:
    #data DAT_ce331e8
PTR_ce33234:
    #data DAT_ce331ec
PTR_ce33238:
    #data DAT_ce331f0
PTR_ce3323c:
    #data DAT_ce331f4
PTR_ce33240:
    #data DAT_ce331f8
PTR_ce33244:
    #data DAT_ce331fc
PTR_ce33248:
    #data DAT_ce33200
PTR_ce3324c:
    #data DAT_ce33204
PTR_ce33250:
    #data DAT_ce33208
PTR_ce33254:
    #data DAT_ce3320c
DAT_ce33258:
    #data 0x0003
    #data 0x9100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33268:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce33278:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce33288:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33298:
    #data 0x0003
    #data 0x1000
    #data 0x0009
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce332a8:
    #data 0x0003
    #data 0x1000
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce332b8:
    #data 0x0003
    #data 0x1040
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x8000
    #align4

PTR_ce332c8:
    #data LAB_ce304c8
PTR_ce332cc:
    #data LAB_ce3001c
PTR_ce332d0:
    #data LAB_ce30776
PTR_ce332d4:
    #data LAB_ce308be
PTR_ce332d8:
    #data LAB_ce309f2
PTR_ce332dc:
    #data LAB_ce30aba
PTR_ce332e0:
    #data LAB_ce30b28
PTR_ce332e4:
    #data LAB_ce30c9a
PTR_ce332e8:
    #data LAB_ce30de6
PTR_ce332ec:
    #data LAB_ce32b36
PTR_ce332f0:
    #data LAB_ce32bcc
PTR_ce332f4:
    #data LAB_ce32c46
PTR_ce332f8:
    #data LAB_ce33096
PTR_ce332fc:
    #data FUN_ce303e4
PTR_ce33300:
    #data LAB_ce329da
PTR_ce33304:
    #data LAB_ce30918
PTR_ce33308:
    #data LAB_ce3309a
PTR_ce3330c:
    #data LAB_ce330b4
PTR_ce33310:
    #data LAB_ce33104
PTR_ce33314:
    #data LAB_ce33132
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce33328:
    #data LAB_ce33160
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
DAT_ce33338:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x03
    #data 0x04
    #data 0x05
    #data 0x06
    #data 0x07
    #data 0x08
DAT_ce33341:
    #data 0x09
    #data 0x0a
    #data 0x0b
DAT_ce33344:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce33347:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce33350:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce33353:
    #data 0x07
    #data 0x07
    #data 0x07
    #data 0x08
    #data 0x08
    #data 0x08
    #data 0x09
    #data 0x09
    #data 0x09
DAT_ce3335c:
    #data 0x0a
    #data 0x0a
    #data 0x0a
DAT_ce3335f:
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce33365:
    #data 0x00
    #data 0x00
    #data 0x01
DAT_ce33368:
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce3336b:
    #data 0x0c
    #data 0x0d
    #data 0x0e
DAT_ce3336e:
    #data 0x0f
    #data 0x10
    #data 0x11
DAT_ce33371:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce33374:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce33377:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce3337a:
    #data 0x0b
    #data 0x0b
    #data 0x0b
DAT_ce3337d:
    #data 0x0c
    #data 0x0c
    #data 0x0c
PTR_ce33380:
    #data LAB_ce30594
PTR_ce33384:
    #data LAB_ce30752
PTR_ce33388:
    #data LAB_ce306a0
PTR_ce3338c:
    #data LAB_ce30594
PTR_ce33390:
    #data LAB_ce30816
PTR_ce33394:
    #data LAB_ce307bc
PTR_ce33398:
    #data LAB_ce307fe
PTR_ce3339c:
    #data FUN_ce308ae
PTR_ce333a0:
    #data LAB_ce30b3a
PTR_ce333a4:
    #data LAB_ce30c0a
PTR_ce333a8:
    #data FUN_ce30c7a
PTR_ce333ac:
    #data LAB_ce30cfc
PTR_ce333b0:
    #data LAB_ce30dcc
PTR_ce333b4:
    #data LAB_ce30cfc
PTR_ce333b8:
    #data LAB_ce30dcc
PTR_ce333bc:
    #data LAB_ce30dcc
PTR_ce333c0:
    #data LAB_ce30e0a
PTR_ce333c4:
    #data LAB_ce32028
PTR_ce333c8:
    #data LAB_ce310c2
PTR_ce333cc:
    #data LAB_ce311d8
PTR_ce333d0:
    #data LAB_ce31428
PTR_ce333d4:
    #data LAB_ce3146a
PTR_ce333d8:
    #data LAB_ce31cf0
PTR_ce333dc:
    #data LAB_ce32028
PTR_ce333e0:
    #data LAB_ce32124
PTR_ce333e4:
    #data LAB_ce321c8
PTR_ce333e8:
    #data LAB_ce328b0
PTR_ce333ec:
    #data LAB_ce30e0a
PTR_ce333f0:
    #data LAB_ce32028
PTR_ce333f4:
    #data LAB_ce310c2
PTR_ce333f8:
    #data LAB_ce3260c
PTR_ce333fc:
    #data LAB_ce31428
PTR_ce33400:
    #data LAB_ce3146a
PTR_ce33404:
    #data LAB_ce31cf0
PTR_ce33408:
    #data LAB_ce32028
PTR_ce3340c:
    #data LAB_ce32124
PTR_ce33410:
    #data LAB_ce321c8
PTR_ce33414:
    #data LAB_ce328b0
PTR_ce33418:
    #data LAB_ce30e0a
PTR_ce3341c:
    #data LAB_ce32028
PTR_ce33420:
    #data LAB_ce310c2
PTR_ce33424:
    #data LAB_ce32416
PTR_ce33428:
    #data LAB_ce31428
PTR_ce3342c:
    #data LAB_ce3146a
PTR_ce33430:
    #data LAB_ce31cf0
PTR_ce33434:
    #data LAB_ce32028
PTR_ce33438:
    #data LAB_ce32124
PTR_ce3343c:
    #data LAB_ce321c8
PTR_ce33440:
    #data LAB_ce328b0
PTR_ce33444:
    #data LAB_ce30e4c
PTR_ce33448:
    #data LAB_ce30efe
PTR_ce3344c:
    #data LAB_ce31022
PTR_ce33450:
    #data LAB_ce310f4
PTR_ce33454:
    #data LAB_ce31160
PTR_ce33458:
    #data LAB_ce31198
PTR_ce3345c:
    #data LAB_ce31228
PTR_ce33460:
    #data LAB_ce312c0
PTR_ce33464:
    #data LAB_ce31370
PTR_ce33468:
    #data LAB_ce313d6
PTR_ce3346c:
    #data FUN_ce31406
PTR_ce33470:
    #data LAB_ce314bc
PTR_ce33474:
    #data LAB_ce31550
PTR_ce33478:
    #data LAB_ce31638
PTR_ce3347c:
    #data LAB_ce31648
PTR_ce33480:
    #data LAB_ce316aa
PTR_ce33484:
    #data LAB_ce31724
PTR_ce33488:
    #data LAB_ce31750
PTR_ce3348c:
    #data LAB_ce317b0
PTR_ce33490:
    #data LAB_ce31908
PTR_ce33494:
    #data LAB_ce31d1a
PTR_ce33498:
    #data LAB_ce31dd0
PTR_ce3349c:
    #data LAB_ce31e46
PTR_ce334a0:
    #data LAB_ce31ed4
PTR_ce334a4:
    #data LAB_ce31f9c
PTR_ce334a8:
    #data LAB_ce31fd0
PTR_ce334ac:
    #data LAB_ce32214
PTR_ce334b0:
    #data LAB_ce322f0
PTR_ce334b4:
    #data LAB_ce323bc
PTR_ce334b8:
    #data LAB_ce323f2
DAT_ce334bc:
    #data 0x5555
    #data 0x4055
DAT_ce334c0:
    #data 0x5555
    #data 0xbd55
    #data 0x0000
    #data 0x4120
    #data 0x0000
    #data 0xbe20
DAT_ce334cc:
    #data 0x6e
    #data 0x71
DAT_ce334ce:
    #data 0x03
    #data 0x05
PTR_ce334d0:
    #data LAB_ce32448
PTR_ce334d4:
    #data LAB_ce324cc
PTR_ce334d8:
    #data LAB_ce32568
PTR_ce334dc:
    #data LAB_ce32584
PTR_ce334e0:
    #data FUN_ce325ec
PTR_ce334e4:
    #data LAB_ce3261e
PTR_ce334e8:
    #data LAB_ce326d0
PTR_ce334ec:
    #data LAB_ce32742
PTR_ce334f0:
    #data LAB_ce3279a
PTR_ce334f4:
    #data LAB_ce32810
PTR_ce334f8:
    #data LAB_ce32864
PTR_ce334fc:
    #data LAB_ce328d8
PTR_ce33500:
    #data LAB_ce3297c
PTR_ce33504:
    #data LAB_ce329ec
PTR_ce33508:
    #data LAB_ce32aa8
PTR_ce3350c:
    #data FUN_ce32b14
DAT_ce33510:
    #data 0x00000001
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000002
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce33530:
    #data LAB_ce32c64
PTR_ce33534:
    #data LAB_ce32ffc
PTR_ce33538:
    #data LAB_ce32c76
PTR_ce3353c:
    #data LAB_ce32d58
PTR_ce33540:
    #data LAB_ce32dc4
PTR_ce33544:
    #data LAB_ce32e3c
PTR_ce33548:
    #data LAB_ce32f60
PTR_ce3354c:
    #data FUN_ce32fdc
PTR_ce33550:
    #data LAB_ce3300e
PTR_ce33554:
    #data LAB_ce3300e
PTR_ce33558:
    #data LAB_ce32dc4
PTR_ce3355c:
    #data LAB_ce32e3c
PTR_ce33560:
    #data LAB_ce32f60
PTR_ce33564:
    #data FUN_ce32fdc
DAT_ce33568:
    #data 0x03
    #data 0x06
    #data 0x03
DAT_ce3356b:
    #data 0x03
    #data 0x06
    #data 0x03
DAT_ce3356e:
    #data 0x01
DAT_ce3356f:
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x00
    #data 0x00
DAT_ce33574:
    #data 0x01
DAT_ce33575:
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x00
    #data 0x00
