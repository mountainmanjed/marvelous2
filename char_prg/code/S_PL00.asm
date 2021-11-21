;╔═══════════════════════════════╗
;║ S_PL00 : Ryu Program          ║
;╚═══════════════════════════════╝

#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
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
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c051854 0x8C051854
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c052b4c 0x8C052B4C
#symbol loc_8c052c84 0x8C052C84
#symbol loc_8c052ce2 0x8C052CE2
#symbol loc_8c052d44 0x8C052D44
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
#symbol loc_8c0600a4 0x8C0600A4
#symbol loc_8c060434 0x8C060434
#symbol loc_8c0bae94 0x8C0BAE94
#symbol loc_8c0bb0bc 0x8C0BB0BC
#symbol loc_8c103660 0x8C103660
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
    bsr FUN_ce303a8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce302fc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30362
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce3014a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce300e4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30192
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce3027a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30200
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30414
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30454
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
    #data PTR_ce3350c
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
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce301da,pc),r3
    mov r4,r14
    mov.w @(DAT_ce301dc,pc),r6
    add r14,r3
    mov.l @(PTR_ce301e8,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce301ec,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30114
    mov.w @(DAT_ce301de,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3011e
    mov.l @r15,r3
    mov.b @(0x2,r3),r0
    tst r0,r0
    bt LAB_ce3011e

LAB_ce30114:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3011e:
    mov.w @(DAT_ce301dc,pc),r5
    mov.l @(PTR_ce301f0,pc),r3
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
    mov.w @(DAT_ce301e0,pc),r0
    mov.l @(PTR_ce301f4,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3014a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301f8,pc),r5
    mov.w @(DAT_ce301e2,pc),r6
    mov.l @(PTR_ce301ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30168
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30168:
    mov.w @(DAT_ce301e2,pc),r5
    mov.l @(PTR_ce301f0,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce301e0,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce301f4,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
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

FUN_ce30192:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301fc,pc),r5
    mov.w @(DAT_ce301e4,pc),r6
    mov.l @(PTR_ce301ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301b0
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301b0:
    mov.w @(DAT_ce301e4,pc),r5
    mov.l @(PTR_ce301f0,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce301e0,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce301f4,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
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

DAT_ce301da:
    #data 0x02a4
DAT_ce301dc:
    #data 0x0364
DAT_ce301de:
    #data 0x01fc
DAT_ce301e0:
    #data 0x01e9
DAT_ce301e2:
    #data 0x036c
DAT_ce301e4:
    #data 0x0374
    #align4

PTR_ce301e8:
    #data DAT_ce3348c
PTR_ce301ec:
    #data loc_8c054e58
PTR_ce301f0:
    #data loc_8c055c3a
PTR_ce301f4:
    #data loc_8c0530d8
PTR_ce301f8:
    #data DAT_ce3349c
PTR_ce301fc:
    #data DAT_ce334ac

;=============================================

FUN_ce30200:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce302e4,pc),r5
    mov.w @(DAT_ce302d8,pc),r6
    mov.l @(PTR_ce302e8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30242
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce30232
    mov.w @(DAT_ce302da,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    mova @(DAT_ce302ec,pc),r0
    fsub fr2,fr1
    fmov.s @r0,fr2
    fcmp/gt fr1,fr2
    bt LAB_ce30272

LAB_ce30232:
    mov.w @(DAT_ce302dc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30250
    mov.w @(DAT_ce302de,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3024a

LAB_ce30242:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3024a:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30250:
    mov.w @(DAT_ce302d8,pc),r5
    mov.l @(PTR_ce302f0,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce302e0,pc),r0
    mov 0x03,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce302f4,pc),r3
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)

LAB_ce30272:
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3027a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce302f8,pc),r5
    mov.w @(DAT_ce302e2,pc),r6
    mov.l @(PTR_ce302e8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302a0
    mov.w @(DAT_ce302dc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce302ae
    mov.w @(DAT_ce302de,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce302a8

LAB_ce302a0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302a8:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce302ae:
    mov.w @(DAT_ce302e2,pc),r5
    mov.l @(PTR_ce302f0,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce302e0,pc),r0
    mov 0x04,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce302f4,pc),r3
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

DAT_ce302d8:
    #data 0x037c
DAT_ce302da:
    #data 0x041c
DAT_ce302dc:
    #data 0x01fc
DAT_ce302de:
    #data 0x01d4
DAT_ce302e0:
    #data 0x01e9
DAT_ce302e2:
    #data 0x0384
    #align4

PTR_ce302e4:
    #data DAT_ce334bc
PTR_ce302e8:
    #data loc_8c054e58
DAT_ce302ec:
    #data 0x42cdb6db
PTR_ce302f0:
    #data loc_8c055c3a
PTR_ce302f4:
    #data loc_8c0530d8
PTR_ce302f8:
    #data DAT_ce334cc

;=============================================

FUN_ce302fc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30400,pc),r5
    mov.w @(DAT_ce303f0,pc),r6
    mov.l @(PTR_ce30404,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30336
    mov.w @(DAT_ce303f2,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30336
    mov.w @(DAT_ce303f4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30344
    mov.w @(DAT_ce303f6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30344
    mov.w @(DAT_ce303f8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3033e

LAB_ce30336:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3033e:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30344:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce303fa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30408,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30362:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3040c,pc),r5
    mov.w @(DAT_ce303fc,pc),r6
    mov.l @(PTR_ce30404,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30382
    mov.w @(DAT_ce303f2,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3038a

LAB_ce30382:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3038a:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce303fa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30408,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303a8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30410,pc),r5
    mov.w @(DAT_ce303fe,pc),r6
    mov.l @(PTR_ce30404,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303ca
    mov.w @(DAT_ce303f2,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    mov 0x03,r2
    cmp/ge r2,r3
    bt LAB_ce303d2

LAB_ce303ca:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303d2:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0B,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce303fa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30408,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce303f0:
    #data 0x038c
DAT_ce303f2:
    #data 0x040c
DAT_ce303f4:
    #data 0x01f9
DAT_ce303f6:
    #data 0x01fc
DAT_ce303f8:
    #data 0x01d4
DAT_ce303fa:
    #data 0x01e9
DAT_ce303fc:
    #data 0x0394
DAT_ce303fe:
    #data 0x039c
    #align4

PTR_ce30400:
    #data DAT_ce334dc
PTR_ce30404:
    #data loc_8c054e58
PTR_ce30408:
    #data loc_8c0530d8
PTR_ce3040c:
    #data DAT_ce334ec
PTR_ce30410:
    #data DAT_ce334fc

;=============================================

FUN_ce30414:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3052c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce3042c
    mov.w @(DAT_ce3051e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30434

LAB_ce3042c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30434:
    mov.w @(DAT_ce30520,pc),r0
    mov 0x0D,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30530,pc),r3
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

FUN_ce30454:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30534,pc),r3
    jsr @r3
    mov 0x08,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3046e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3046e:
    mov.w @(DAT_ce30520,pc),r0
    mov 0x08,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30530,pc),r3
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

LAB_ce3048e:
    rts
    nop

LAB_ce30492:
    mov.w @(DAT_ce30522,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30538,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce304a6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3053c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30524,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce304d4
    mov.w @(DAT_ce30526,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce304cc
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307ea
    mov.l @r15+,r14

LAB_ce304cc:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce306c8
    mov.l @r15+,r14

LAB_ce304d4:
    mov.w @(DAT_ce30526,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce304e6
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce305f0
    mov.l @r15+,r14

LAB_ce304e6:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce304ee
    mov.l @r15+,r14

LAB_ce304ee:
    mov.w @(DAT_ce30528,pc),r0
    mov 0x07,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x01,r12
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3052a,pc),r0
    mov.l @(PTR_ce30540,pc),r11
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30544
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3055e
    cmp/eq 0x02,r0
    bt LAB_ce30578
    bra LAB_ce305b8
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3051e:
    #data 0x040c
DAT_ce30520:
    #data 0x01e9
DAT_ce30522:
    #data 0x01ff
DAT_ce30524:
    #data 0x01fe
DAT_ce30526:
    #data 0x01f9
DAT_ce30528:
    #data 0x0159
DAT_ce3052a:
    #data 0x01e8
    #align4

PTR_ce3052c:
    #data loc_8c054d1c
PTR_ce30530:
    #data loc_8c0530d8
PTR_ce30534:
    #data loc_8c054da0
PTR_ce30538:
    #data PTR_ce3357c
PTR_ce3053c:
    #data loc_8c052b4c
PTR_ce30540:
    #data loc_8c04223a

;=============================================

LAB_ce30544:
    mov.w @(DAT_ce30650,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30652,pc),r0
    mov.l @(PTR_ce30660,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30654,pc),r0
    bra LAB_ce305b8
    mov.b r13,@(r0,r14)

LAB_ce3055e:
    mov.w @(DAT_ce30650,pc),r0
    mov 0x15,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r12,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30652,pc),r0
    mov.l @(PTR_ce30664,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30654,pc),r0
    bra LAB_ce305b8
    mov.b r12,@(r0,r14)

LAB_ce30578:
    mov.w @(DAT_ce30656,pc),r0
    mov.w @(DAT_ce30658,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt/s LAB_ce3059a
    mov 0x02,r10
    mov.w @(DAT_ce3065a,pc),r0
    mov 0x14,r2
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov 0x12,r2
    mov.b r2,@(r0,r14)
    bra LAB_ce305ac
    mov r12,r0

LAB_ce3059a:
    mov.w @(DAT_ce30650,pc),r0
    mov 0x16,r5
    mov.b r10,@(r0,r14)
    add 0x49,r0
    mov.b r10,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov r13,r0
    nop

LAB_ce305ac:
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30652,pc),r0
    mov.l @(PTR_ce30668,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30654,pc),r0
    mov.b r10,@(r0,r14)

LAB_ce305b8:
    mov.w @(DAT_ce3065c,pc),r0
    mov r14,r4
    mov.l @(PTR_ce3066c,pc),r3
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
    mov.w @(DAT_ce30650,pc),r0
    mov.l @(PTR_ce30670,pc),r2
    mov.l @r15+,r10
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @r15+,r11
    mov.b @(r0,r14),r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce305f0:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3065a,pc),r0
    mov 0x07,r4
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3065e,pc),r0
    mov.l @(PTR_ce30674,pc),r12
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3061a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30636
    cmp/eq 0x02,r0
    bt LAB_ce30678
    bra LAB_ce30696
    nop

LAB_ce3061a:
    mov.w @(DAT_ce30650,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30652,pc),r0
    mov.l @(PTR_ce30660,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30654,pc),r0
    bra LAB_ce30696
    mov.b r13,@(r0,r14)

LAB_ce30636:
    mov.w @(DAT_ce30650,pc),r0
    mov 0x01,r2
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30652,pc),r0
    mov.l @(PTR_ce30664,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30692
    mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30650:
    #data 0x0158
DAT_ce30652:
    #data 0x03f4
DAT_ce30654:
    #data 0x01a7
DAT_ce30656:
    #data 0x01fa
DAT_ce30658:
    #data 0x0800
DAT_ce3065a:
    #data 0x0159
DAT_ce3065c:
    #data 0x01ac
DAT_ce3065e:
    #data 0x01e8
    #align4

PTR_ce30660:
    #data DAT_ce33444
PTR_ce30664:
    #data DAT_ce33448
PTR_ce30668:
    #data DAT_ce3344c
PTR_ce3066c:
    #data loc_8c2896b0
PTR_ce30670:
    #data loc_8c034e8c
PTR_ce30674:
    #data loc_8c04223a

;=============================================

LAB_ce30678:
    mov.w @(DAT_ce30768,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3076a,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30778,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30692:
    mov.w @(DAT_ce3076c,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30696:
    mov.w @(DAT_ce3076e,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce3077c,pc),r3
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
    mov.w @(DAT_ce30768,pc),r0
    mov.l @(PTR_ce30780,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce306c8:
    mov.w @(DAT_ce30770,pc),r0
    mov 0x08,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x01,r12
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30772,pc),r0
    mov.l @(PTR_ce30784,pc),r11
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce306f6
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30712
    cmp/eq 0x02,r0
    bt LAB_ce3072e
    bra LAB_ce307b4
    nop

LAB_ce306f6:
    mov.w @(DAT_ce30768,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce3076a,pc),r0
    mov.l @(PTR_ce30788,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3076c,pc),r0
    bra LAB_ce307b4
    mov.b r13,@(r0,r14)

LAB_ce30712:
    mov.w @(DAT_ce30768,pc),r0
    mov 0x04,r3
    mov 0x15,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce3076a,pc),r0
    mov.l @(PTR_ce3078c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3076c,pc),r0
    bra LAB_ce307b4
    mov.b r12,@(r0,r14)

LAB_ce3072e:
    mov.w @(DAT_ce30774,pc),r0
    mov.w @(DAT_ce30776,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce30790
    mov.w @(DAT_ce30770,pc),r0
    mov 0x14,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    bra LAB_ce307a8
    fmov fr4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30768:
    #data 0x0158
DAT_ce3076a:
    #data 0x03f4
DAT_ce3076c:
    #data 0x01a7
DAT_ce3076e:
    #data 0x01ac
DAT_ce30770:
    #data 0x0159
DAT_ce30772:
    #data 0x01e8
DAT_ce30774:
    #data 0x01fa
DAT_ce30776:
    #data 0x0800
    #align4

PTR_ce30778:
    #data DAT_ce3344c
PTR_ce3077c:
    #data loc_8c2896b0
PTR_ce30780:
    #data loc_8c034e8c
PTR_ce30784:
    #data loc_8c04223a
PTR_ce30788:
    #data DAT_ce33450
PTR_ce3078c:
    #data DAT_ce33454

;=============================================

LAB_ce30790:
    mov.w @(DAT_ce308a8,pc),r0
    mov 0x02,r1
    mov 0x05,r2
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r2,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x6,r14)

LAB_ce307a8:
    mov.w @(DAT_ce308aa,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce308b4,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308ac,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce307b4:
    mov.w @(DAT_ce308ae,pc),r0
    mov r14,r4
    mov.l @(PTR_ce308b8,pc),r3
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
    mov.w @(DAT_ce308a8,pc),r0
    mov.l @(PTR_ce308bc,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @r15+,r12
    mov.b @(r0,r14),r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce307ea:
    mov.w @(DAT_ce308b0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce308c0,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3080e
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3082a
    cmp/eq 0x02,r0
    bt LAB_ce30846
    bra LAB_ce30864
    nop

LAB_ce3080e:
    mov.w @(DAT_ce308a8,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308aa,pc),r0
    mov.l @(PTR_ce308c4,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308ac,pc),r0
    bra LAB_ce30864
    mov.b r13,@(r0,r14)

LAB_ce3082a:
    mov.w @(DAT_ce308a8,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308aa,pc),r0
    mov.l @(PTR_ce308c8,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30860
    mov 0x01,r2

LAB_ce30846:
    mov.w @(DAT_ce308a8,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308aa,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce308b4,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30860:
    mov.w @(DAT_ce308ac,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30864:
    mov.w @(DAT_ce308ae,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce308b8,pc),r3
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
    mov.w @(DAT_ce308a8,pc),r0
    mov.l @(PTR_ce308bc,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30896:
    mov.w @(DAT_ce308b2,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce308a4
    bra LAB_ce30a00
    nop

LAB_ce308a4:
    bra LAB_ce308cc
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308a8:
    #data 0x0158
DAT_ce308aa:
    #data 0x03f4
DAT_ce308ac:
    #data 0x01a7
DAT_ce308ae:
    #data 0x01ac
DAT_ce308b0:
    #data 0x01e8
DAT_ce308b2:
    #data 0x01fe
    #align4

PTR_ce308b4:
    #data DAT_ce33458
PTR_ce308b8:
    #data loc_8c2896b0
PTR_ce308bc:
    #data loc_8c034e8c
PTR_ce308c0:
    #data loc_8c04223a
PTR_ce308c4:
    #data DAT_ce33450
PTR_ce308c8:
    #data DAT_ce33454

;=============================================

LAB_ce308cc:
    mov.w @(DAT_ce309cc,pc),r0
    mov 0x0B,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov 0x02,r11
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce309ce,pc),r0
    mov.l @(PTR_ce309dc,pc),r12
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308fa
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30926
    cmp/eq 0x02,r0
    bt LAB_ce3095a
    bra LAB_ce30984
    nop

LAB_ce308fa:
    mov.w @(DAT_ce309d0,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309d2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3091a
    mov.w @(DAT_ce309d4,pc),r0
    mov.l @(PTR_ce309e0,pc),r3
    bra LAB_ce30920
    mov.l r3,@(r0,r14)

LAB_ce3091a:
    mov.w @(DAT_ce309d4,pc),r0
    mov.l @(PTR_ce309e4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30920:
    mov.w @(DAT_ce309d6,pc),r0
    bra LAB_ce30984
    mov.b r13,@(r0,r14)

LAB_ce30926:
    mov.w @(DAT_ce309cc,pc),r0
    mov 0x14,r2
    mov 0x15,r3
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov r3,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309d2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3094c
    mov.w @(DAT_ce309d4,pc),r0
    mov.l @(PTR_ce309e8,pc),r3
    bra LAB_ce30952
    mov.l r3,@(r0,r14)

LAB_ce3094c:
    mov.w @(DAT_ce309d4,pc),r0
    mov.l @(PTR_ce309ec,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30952:
    mov.w @(DAT_ce309d6,pc),r0
    mov 0x01,r3
    bra LAB_ce30984
    mov.b r3,@(r0,r14)

LAB_ce3095a:
    mov.w @(DAT_ce309d0,pc),r0
    mov 0x0E,r3
    mov 0x16,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309d2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3097a
    mov.w @(DAT_ce309d4,pc),r0
    mov.l @(PTR_ce309f0,pc),r3
    bra LAB_ce30980
    mov.l r3,@(r0,r14)

LAB_ce3097a:
    mov.w @(DAT_ce309d4,pc),r0
    mov.l @(PTR_ce309f4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30980:
    mov.w @(DAT_ce309d6,pc),r0
    mov.b r11,@(r0,r14)

LAB_ce30984:
    mov.w @(DAT_ce309d8,pc),r0
    mov.l @(PTR_ce309f8,pc),r3
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
    mov.w @(DAT_ce309d0,pc),r0
    mov.l @(PTR_ce309fc,pc),r2
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce309da,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce309c0
    mov.w @(DAT_ce309da,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce309c0:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309cc:
    #data 0x0159
DAT_ce309ce:
    #data 0x01e8
DAT_ce309d0:
    #data 0x0158
DAT_ce309d2:
    #data 0x01fc
DAT_ce309d4:
    #data 0x03f4
DAT_ce309d6:
    #data 0x01a7
DAT_ce309d8:
    #data 0x01ac
DAT_ce309da:
    #data 0x01d6
    #align4

PTR_ce309dc:
    #data loc_8c04223a
PTR_ce309e0:
    #data DAT_ce3345c
PTR_ce309e4:
    #data DAT_ce33474
PTR_ce309e8:
    #data DAT_ce33460
PTR_ce309ec:
    #data DAT_ce33478
PTR_ce309f0:
    #data DAT_ce33464
PTR_ce309f4:
    #data DAT_ce3347c
PTR_ce309f8:
    #data loc_8c2896b0
PTR_ce309fc:
    #data loc_8c034e8c

;=============================================

LAB_ce30a00:
    mov.w @(DAT_ce30aea,pc),r0
    mov 0x0C,r5
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov 0x14,r11
    sts.l PR,@-r15
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce30aee,pc),r0
    mov.w @(DAT_ce30aec,pc),r4
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30af8,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a30
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a62
    cmp/eq 0x02,r0
    bt LAB_ce30aac
    bra LAB_ce30b1c
    nop

LAB_ce30a30:
    mov.w @(DAT_ce30af0,pc),r0
    mov 0x03,r3
    mov 0x0F,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)
    add 0xB8,r0
    mov 0x14,r5
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30af2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a56
    mov.w @(DAT_ce30af4,pc),r0
    mov.l @(PTR_ce30afc,pc),r3
    bra LAB_ce30a5c
    mov.l r3,@(r0,r14)

LAB_ce30a56:
    mov.w @(DAT_ce30af4,pc),r0
    mov.l @(PTR_ce30b00,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a5c:
    mov.w @(DAT_ce30af6,pc),r0
    bra LAB_ce30b1c
    mov.b r13,@(r0,r14)

LAB_ce30a62:
    mov.w @(DAT_ce30aea,pc),r0
    mov 0x04,r3
    mov 0x10,r2
    mov.b r11,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bt LAB_ce30a8c
    mov.w @(DAT_ce30aea,pc),r0
    mov 0x01,r3
    mov 0x18,r2
    mov.b r5,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)

LAB_ce30a8c:
    mov 0x15,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30af2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30aa2
    mov.w @(DAT_ce30af4,pc),r0
    mov.l @(PTR_ce30b04,pc),r3
    bra LAB_ce30aa8
    mov.l r3,@(r0,r14)

LAB_ce30aa2:
    mov.w @(DAT_ce30af4,pc),r0
    mov.l @(PTR_ce30b08,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30aa8:
    bra LAB_ce30b18
    mov 0x01,r3

LAB_ce30aac:
    mov.w @(DAT_ce30af0,pc),r0
    mov 0x05,r1
    mov 0x19,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r4,r2
    bt/s LAB_ce30ad2
    mov 0x16,r5
    mov.w @(DAT_ce30af0,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30ad6
    mov.b r3,@(r0,r14)

LAB_ce30ad2:
    mov.w @(DAT_ce30aea,pc),r0
    mov.b r11,@(r0,r14)

LAB_ce30ad6:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30af2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b10
    mov.w @(DAT_ce30af4,pc),r0
    mov.l @(PTR_ce30b0c,pc),r3
    bra LAB_ce30b16
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30aea:
    #data 0x0159
DAT_ce30aec:
    #data 0x2000
DAT_ce30aee:
    #data 0x01e8
DAT_ce30af0:
    #data 0x0158
DAT_ce30af2:
    #data 0x01fc
DAT_ce30af4:
    #data 0x03f4
DAT_ce30af6:
    #data 0x01a7
    #align4

PTR_ce30af8:
    #data loc_8c04223a
PTR_ce30afc:
    #data DAT_ce33468
PTR_ce30b00:
    #data DAT_ce33480
PTR_ce30b04:
    #data DAT_ce3346c
PTR_ce30b08:
    #data DAT_ce33484
PTR_ce30b0c:
    #data DAT_ce33470

;=============================================

LAB_ce30b10:
    mov.w @(DAT_ce30c30,pc),r0
    mov.l @(PTR_ce30c40,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b16:
    mov 0x02,r3

LAB_ce30b18:
    mov.w @(DAT_ce30c32,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30b1c:
    mov.w @(DAT_ce30c34,pc),r0
    mov.l @(PTR_ce30c44,pc),r3
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
    mov.w @(DAT_ce30c36,pc),r0
    mov.l @(PTR_ce30c48,pc),r2
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30c38,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30b58
    mov.w @(DAT_ce30c38,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30b58:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30b64:
    mov.w @(DAT_ce30c3a,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30b74
    mov.w @(DAT_ce30c38,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30b84

LAB_ce30b74:
    mov.w @(DAT_ce30c3a,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30b88
    mov.w @(DAT_ce30c38,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30b88

LAB_ce30b84:
    bra LAB_ce30896
    nop

LAB_ce30b88:
    rts
    nop

LAB_ce30b8c:
    mov.w @(DAT_ce30c3c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c4c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30ba0:
    sts.l PR,@-r15
    mov.l @(PTR_ce30c50,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30bae:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30c54,pc),r3
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
    mov.w @(DAT_ce30c3a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c16
    mov.w @(DAT_ce30c3e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c0e
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30ec0
    mov.l @r15+,r14

LAB_ce30c0e:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d26
    mov.l @r15+,r14

LAB_ce30c16:
    mov.w @(DAT_ce30c3e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c28
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30d04
    mov.l @r15+,r14

LAB_ce30c28:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c58
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c30:
    #data 0x03f4
DAT_ce30c32:
    #data 0x01a7
DAT_ce30c34:
    #data 0x01ac
DAT_ce30c36:
    #data 0x0158
DAT_ce30c38:
    #data 0x01d6
DAT_ce30c3a:
    #data 0x01fe
DAT_ce30c3c:
    #data 0x01ff
DAT_ce30c3e:
    #data 0x01f9
    #align4

PTR_ce30c40:
    #data DAT_ce33488
PTR_ce30c44:
    #data loc_8c2896b0
PTR_ce30c48:
    #data loc_8c034e8c
PTR_ce30c4c:
    #data PTR_ce3358c
PTR_ce30c50:
    #data loc_8c0511e2
PTR_ce30c54:
    #data loc_8c052c84

;=============================================

LAB_ce30c58:
    mov.w @(DAT_ce30d4c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30c76
    cmp/eq 0x01,r0
    bt LAB_ce30c76
    cmp/eq 0x02,r0
    bt LAB_ce30c86
    bra LAB_ce30cfc
    nop

LAB_ce30c76:
    mov.l @(PTR_ce30d54,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30c92
    bra LAB_ce30cfc
    nop

LAB_ce30c86:
    mov.l @(PTR_ce30d54,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c9e

LAB_ce30c92:
    lds.l @r15+,PR
    mov.l @(PTR_ce30d58,pc),r3
    mov r14,r4
    mov.l @r15+,r8
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c9e:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt LAB_ce30cfc
    mov.w @(DAT_ce30d4e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30cd4
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x13,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30d5c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce30cd4:
    mov.w @(DAT_ce30d50,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30cfc
    mov.w @(DAT_ce30d52,pc),r0
    mov 0x34,r8
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce30cf0
    add r14,r8
    mov.l @(DAT_ce30d60,pc),r1
    lds r1,FPUL
    bra LAB_ce30cf6
    fsts FPUL,fr3

LAB_ce30cf0:
    mov.l @(DAT_ce30d64,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce30cf6:
    fmov.s @r8,fr2
    fadd fr3,fr2
    fmov.s fr2,@r8

LAB_ce30cfc:
    lds.l @r15+,PR
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30d04:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d54,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d1e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d58,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30d1e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30d26:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30d4c,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30d54,pc),r13
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30db0
    mov 0x00,r12
    cmp/eq 0x01,r0
    bt LAB_ce30d68
    cmp/eq 0x02,r0
    bt LAB_ce30daa
    bra LAB_ce30eb4
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d4c:
    #data 0x01e8
DAT_ce30d4e:
    #data 0x0141
DAT_ce30d50:
    #data 0x0140
DAT_ce30d52:
    #data 0x01d2
    #align4

PTR_ce30d54:
    #data loc_8c034dee
PTR_ce30d58:
    #data loc_8c051648
PTR_ce30d5c:
    #data loc_8c2896b0
DAT_ce30d60:
    #data 0x40555555
DAT_ce30d64:
    #data 0xc0555555

;=============================================

LAB_ce30d68:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d76
    bra LAB_ce30ea4
    nop

LAB_ce30d76:
    mov.w @(DAT_ce30e68,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30d82
    bra LAB_ce30eb4
    nop

LAB_ce30d82:
    mov.b r12,@(r0,r14)
    add 0x60,r0
    mov 0x1A,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30e70,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    bra LAB_ce30eb4
    mov.w r1,@(r0,r2)

LAB_ce30daa:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30dbe

LAB_ce30db0:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30ea4
    bra LAB_ce30eb4
    nop

LAB_ce30dbe:
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30dd4
    fldi0 fr15
    cmp/eq 0x01,r0
    bt LAB_ce30e18
    cmp/eq 0x02,r0
    bt LAB_ce30e90
    bra LAB_ce30eb4
    nop

LAB_ce30dd4:
    jsr @r13
    mov r14,r4
    mov.w @(DAT_ce30e68,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30eb4
    mov.b @(0x7,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30e6a,pc),r0
    mov.b r3,@(r0,r14)
    add 0xD9,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30dfa
    mova @(DAT_ce30e74,pc),r0
    bra LAB_ce30dfe
    fmov.s @r0,fr3

LAB_ce30dfa:
    mova @(DAT_ce30e78,pc),r0
    fmov.s @r0,fr3

LAB_ce30dfe:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce30e7c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30e80,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    bra LAB_ce30eb4
    fmov fr3,@(r0,r14)

LAB_ce30e18:
    jsr @r13
    mov r14,r4
    mov 0x38,r0
    mov.l @(PTR_ce30e84,pc),r3
    fmov.s @(r0,r14),fr4
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30eb4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce30e88,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30e6c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30e6a,pc),r0
    mov.b r12,@(r0,r14)
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
    mov.l @(PTR_ce30e8c,pc),r2
    mov r14,r4
    mov 0x0A,r6
    fmov.s @r15+,fr15
    mov 0x14,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e68:
    #data 0x0141
DAT_ce30e6a:
    #data 0x01f9
DAT_ce30e6c:
    #data 0x041c
    #align4

PTR_ce30e70:
    #data loc_8c2896b0
DAT_ce30e74:
    #data 0x40e2aaaa
DAT_ce30e78:
    #data 0xc0e2aaaa
DAT_ce30e7c:
    #data 0x41092492
DAT_ce30e80:
    #data 0xbf40db6d
PTR_ce30e84:
    #data loc_8c052d44
PTR_ce30e88:
    #data loc_8c0511b4
PTR_ce30e8c:
    #data loc_8c034e8c

;=============================================

LAB_ce30e90:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30eb4
    mov.w @(DAT_ce30f7c,pc),r0
    mov 0x05,r2
    mov.l @(r0,r14),r3
    add 0xDF,r0
    mov.b r2,@(r0,r3)

LAB_ce30ea4:
    lds.l @r15+,PR
    mov.l @(PTR_ce30f84,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30eb4:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30ec0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30f88,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30eda
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30f84,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30eda:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30ee2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30f8c,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30f90,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30ef8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30f94,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30f98,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30f7e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f1a
    bsr FUN_ce30fde
    mov r14,r4
    bra LAB_ce30f1e
    nop

LAB_ce30f1a:
    bsr FUN_ce30f3a
    mov r14,r4

LAB_ce30f1e:
    mov.l @(PTR_ce30f9c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30f34
    lds.l @r15+,PR
    mov.l @(PTR_ce30fa0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f34:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30f3a:
    mov.w @(DAT_ce30f80,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30f56
    cmp/eq 0x02,r0
    bt LAB_ce30f56
    cmp/eq 0x01,r0
    bt LAB_ce30f66
    bra LAB_ce30fd8
    nop

LAB_ce30f56:
    mov.l @(PTR_ce30f88,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30f72
    bra LAB_ce30fd8
    nop

LAB_ce30f66:
    mov.l @(PTR_ce30f88,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fa8

LAB_ce30f72:
    lds.l @r15+,PR
    mov.l @(PTR_ce30fa4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f7c:
    #data 0x020c
DAT_ce30f7e:
    #data 0x01fe
DAT_ce30f80:
    #data 0x01e8
    #align4

PTR_ce30f84:
    #data loc_8c051648
PTR_ce30f88:
    #data loc_8c034dee
PTR_ce30f8c:
    #data loc_8c050084
PTR_ce30f90:
    #data loc_8c04ff88
PTR_ce30f94:
    #data loc_8c04fea8
PTR_ce30f98:
    #data loc_8c050048
PTR_ce30f9c:
    #data loc_8c052ce2
PTR_ce30fa0:
    #data loc_8c052dac
PTR_ce30fa4:
    #data loc_8c05176e

;=============================================

LAB_ce30fa8:
    mov.w @(DAT_ce310da,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30fd8
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x16,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce310e4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce30fd8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30fde:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce310e8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ff8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce310ec,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30ff8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31000:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3105e
    mov.l @(PTR_ce310f0,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x1B,r3
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce310dc,pc),r0
    mov 0x0B,r6
    mov.b r3,@(r0,r14)
    add 0x58,r0
    mov.l @(PTR_ce310f4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce310de,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce310e4,pc),r3
    mov 0x16,r5
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
    mov.l @(PTR_ce310f8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce310fc,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4

LAB_ce3105e:
    mov.w @(DAT_ce310e0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3106e
    mov.l @(PTR_ce31100,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3106e:
    mov 0x5C,r1
    mov.l @(PTR_ce31104,pc),r3
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
    mov.l @(PTR_ce310e8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310c2
    lds.l @r15+,PR
    mov.l @(PTR_ce31108,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce310c2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310c8:
    mov r4,r3
    mov.l @(PTR_ce3110c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310da:
    #data 0x0141
DAT_ce310dc:
    #data 0x01a1
DAT_ce310de:
    #data 0x01ac
DAT_ce310e0:
    #data 0x01ff
    #align4

PTR_ce310e4:
    #data loc_8c2896b0
PTR_ce310e8:
    #data loc_8c034dee
PTR_ce310ec:
    #data loc_8c05176e
PTR_ce310f0:
    #data loc_8c052b4c
PTR_ce310f4:
    #data loc_8c034e8c
PTR_ce310f8:
    #data loc_8c04223a
PTR_ce310fc:
    #data loc_8c056de4
PTR_ce31100:
    #data loc_8c0511e2
PTR_ce31104:
    #data loc_8c052c84
PTR_ce31108:
    #data loc_8c051648
PTR_ce3110c:
    #data PTR_ce3359c

;=============================================

LAB_ce31110:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce31116:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31210,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3120c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31170
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
    mov.w @(DAT_ce3120e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3114e
    mova @(DAT_ce31214,pc),r0
    bra LAB_ce31152
    fmov.s @r0,fr3

LAB_ce3114e:
    mova @(DAT_ce31218,pc),r0
    fmov.s @r0,fr3

LAB_ce31152:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3120e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31164
    mova @(DAT_ce3121c,pc),r0
    bra LAB_ce31168
    fmov.s @r0,fr3

LAB_ce31164:
    mova @(DAT_ce31220,pc),r0
    fmov.s @r0,fr3

LAB_ce31168:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x18,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31170:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31176:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31210,pc),r3
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
    cmp/pl r0
    bt LAB_ce31206
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3120e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311da
    mova @(DAT_ce31224,pc),r0
    bra LAB_ce311de
    fmov.s @r0,fr3

LAB_ce311da:
    mova @(DAT_ce31228,pc),r0
    fmov.s @r0,fr3

LAB_ce311de:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3120e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311f0
    mova @(DAT_ce3122c,pc),r0
    bra LAB_ce311f4
    fmov.s @r0,fr3

LAB_ce311f0:
    mova @(DAT_ce31230,pc),r0
    fmov.s @r0,fr3

LAB_ce311f4:
    mov 0x02,r6
    mov.l @(PTR_ce31234,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov r6,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31206:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3120c:
    #data 0x0141
DAT_ce3120e:
    #data 0x01d2
    #align4

PTR_ce31210:
    #data loc_8c034dee
DAT_ce31214:
    #data 0x41555555
DAT_ce31218:
    #data 0xc1555555
DAT_ce3121c:
    #data 0xbe055555
DAT_ce31220:
    #data 0x3e055555
DAT_ce31224:
    #data 0x40855555
DAT_ce31228:
    #data 0xc0855555
DAT_ce3122c:
    #data 0xbead5555
DAT_ce31230:
    #data 0x3ead5555
PTR_ce31234:
    #data loc_8c034e8c

;=============================================

LAB_ce31238:
    mov 0x5C,r0
    fmov.s @(r0,r4),fr0
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    mov 0x68,r1
    add r4,r1
    fadd fr0,fr3
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
    fmov.s @(r0,r4),fr3
    fmov fr0,fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf LAB_ce31282
    mov.l @(PTR_ce31378,pc),r3
    jmp @r3
    nop

LAB_ce31282:
    mov.l @(PTR_ce3137c,pc),r3
    jmp @r3
    nop

LAB_ce31288:
    mov r4,r3
    mov.l @(PTR_ce31380,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3129a:
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
    mov.w @(DAT_ce31374,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce312c0
    mova @(DAT_ce31384,pc),r0
    bra LAB_ce312c4
    fmov.s @r0,fr3

LAB_ce312c0:
    mova @(DAT_ce31388,pc),r0
    fmov.s @r0,fr3

LAB_ce312c4:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31374,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce312d6
    mova @(DAT_ce3138c,pc),r0
    bra LAB_ce312da
    fmov.s @r0,fr3

LAB_ce312d6:
    mova @(DAT_ce31390,pc),r0
    fmov.s @r0,fr3

LAB_ce312da:
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mov 0x14,r0
    mov.w r0,@(0x1c,r4)

LAB_ce312e2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3137c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce312fa:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce3137c,pc),r3
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
    cmp/pl r0
    bt LAB_ce313b2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31374,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3135e
    mova @(DAT_ce31394,pc),r0
    bra LAB_ce31362
    fmov.s @r0,fr3

LAB_ce3135e:
    mova @(DAT_ce31398,pc),r0
    fmov.s @r0,fr3

LAB_ce31362:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31374,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3139c
    mova @(DAT_ce3138c,pc),r0
    bra LAB_ce313a0
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31374:
    #data 0x01d2
    #align4

PTR_ce31378:
    #data loc_8c051648
PTR_ce3137c:
    #data loc_8c034dee
PTR_ce31380:
    #data PTR_ce335ac
DAT_ce31384:
    #data 0xc192aaaa
DAT_ce31388:
    #data 0x4192aaaa
DAT_ce3138c:
    #data 0x3ead5555
DAT_ce31390:
    #data 0xbead5555
DAT_ce31394:
    #data 0xc0855555
DAT_ce31398:
    #data 0x40855555

;=============================================

LAB_ce3139c:
    mova @(DAT_ce314e0,pc),r0
    fmov.s @r0,fr3

LAB_ce313a0:
    mov.l @(PTR_ce314e4,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x03,r6
    mov 0x02,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce313b2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313b8:
    mov 0x5C,r0
    fmov.s @(r0,r4),fr0
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    mov 0x68,r1
    add r4,r1
    fadd fr0,fr3
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
    fmov.s @(r0,r4),fr3
    fmov fr0,fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf LAB_ce31402
    mov.l @(PTR_ce314e8,pc),r3
    jmp @r3
    nop

LAB_ce31402:
    mov.l @(PTR_ce314ec,pc),r3
    jmp @r3
    nop

LAB_ce31408:
    mov r4,r3
    mov.l @(PTR_ce314f0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3141a:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce314d8,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce314e4,pc),r3
    jmp @r3
    mov 0x12,r5

LAB_ce3142e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce314ec,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31446
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce31446:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3144e:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bt LAB_ce31458
    bra LAB_ce3148c
    nop

LAB_ce31458:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r4
    mov.l @(PTR_ce314f4,pc),r0
    extu.b r4,r6
    extu.b r4,r4
    tst r4,r4
    bf/s LAB_ce31480
    mov.b @(r0,r6),r6
    mov.l @(PTR_ce314f8,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce314fc,pc),r1
    and 0x07,r0
    mov.b @(r0,r1),r6

LAB_ce31480:
    lds.l @r15+,PR
    mov.l @(PTR_ce314e4,pc),r3
    mov 0x13,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3148c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31500,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce314a4
    lds.l @r15+,PR
    mov.l @(PTR_ce314e8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce314a4:
    lds.l @r15+,PR
    mov.l @(PTR_ce314ec,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce314ae:
    mov.w @(DAT_ce314da,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31504,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce314c2:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31508,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce314dc,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314d8:
    #data 0x012c
DAT_ce314da:
    #data 0x01e9
DAT_ce314dc:
    #data 0x02a4
    #align4

DAT_ce314e0:
    #data 0xbead5555
PTR_ce314e4:
    #data loc_8c034e8c
PTR_ce314e8:
    #data loc_8c051648
PTR_ce314ec:
    #data loc_8c034dee
PTR_ce314f0:
    #data PTR_ce335bc
PTR_ce314f4:
    #data DAT_ce335cc
PTR_ce314f8:
    #data loc_8c03319e
PTR_ce314fc:
    #data DAT_ce335c4
PTR_ce31500:
    #data loc_8c046c8a
PTR_ce31504:
    #data PTR_ce335d4
PTR_ce31508:
    #data PTR_ce3360c

;=============================================

LAB_ce3150c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31628,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3162c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31630,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3161a,pc),r0
    mov 0x00,r4
    mov 0x15,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3161c,pc),r0
    mov.b r4,@(r0,r14)
    add 0xAA,r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x30,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31634,pc),r3
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
    mov.w @(DAT_ce3161e,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce31638,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31572:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3163c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3158c
    lds.l @r15+,PR
    mov.l @(PTR_ce31640,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3158c:
    mov.w @(DAT_ce31620,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce315a4
    mov 0x00,r3
    mov r14,r4
    mov r3,r5
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31644,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce315a4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce315aa:
    mov 0x60,r0
    fmov.s @(r0,r4),fr0
    mov 0x38,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r1
    add r4,r1
    fadd fr0,fr3
    fmov fr3,@(r0,r4)
    mov 0x60,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr0
    fmov fr2,@(r0,r4)
    bf/s LAB_ce315d8
    fmov fr2,fr4
    fcmp/gt fr4,fr3
    bf LAB_ce315d8
    mova @(DAT_ce31648,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)

LAB_ce315d8:
    rts
    nop

;=============================================

FUN_ce315dc:
    mov.b @r5,r3
    extu.b r3,r3
    cmp/pl r3
    bf LAB_ce3167a
    mov.b @(0x1,r5),r0
    extu.b r0,r0
    cmp/pl r0
    bf LAB_ce3167a
    mov.w @(DAT_ce31622,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce3167a
    mov 0x00,r6
    mov.b @(r0,r4),r7
    mov.b r6,@(r0,r4)
    add 0x5E,r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31658
    mov.w @(DAT_ce31624,pc),r0
    mov.b @(r0,r4),r0
    tst 0x01,r0
    bt LAB_ce3164c
    mov.b @(0x1,r5),r0
    add 0xFF,r0
    mov.b r0,@(0x1,r5)
    extu.b r0,r0
    cmp/pl r0
    bf LAB_ce3167a
    bra LAB_ce31658
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3161a:
    #data 0x041c
DAT_ce3161c:
    #data 0x01f9
DAT_ce3161e:
    #data 0x01a3
DAT_ce31620:
    #data 0x0141
DAT_ce31622:
    #data 0x0140
DAT_ce31624:
    #data 0x019e
    #align4

PTR_ce31628:
    #data loc_8c05218a
PTR_ce3162c:
    #data loc_8c05115a
PTR_ce31630:
    #data loc_8c056de4
PTR_ce31634:
    #data loc_8c2896b0
PTR_ce31638:
    #data loc_8c034e8c
PTR_ce3163c:
    #data loc_8c034dee
PTR_ce31640:
    #data loc_8c051648
PTR_ce31644:
    #data loc_8c0600a4
DAT_ce31648:
    #data 0xbfcdb6db

;=============================================

LAB_ce3164c:
    mov.b @r5,r3
    add 0xFF,r3
    mov.b r3,@r5
    extu.b r3,r3
    cmp/pl r3
    bf LAB_ce3167a

LAB_ce31658:
    mov.w @(DAT_ce31774,pc),r0
    mov.l @(PTR_ce31780,pc),r3
    mov.b r7,@(r0,r4)
    add 0x0B,r0
    mov.w r6,@(r0,r4)
    add 0xF2,r0
    mov.b r6,@(r0,r4)
    add 0x26,r0
    mov.l r6,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce3167a:
    rts
    nop

LAB_ce3167e:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31784,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31776,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31694:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31788,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31778,pc),r0
    mov.l @(PTR_ce3178c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3177a,pc),r0
    mov 0x00,r13
    mov.l @(PTR_ce31790,pc),r3
    mov 0x0A,r5
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3177c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce316de
    mova @(DAT_ce31794,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce31798,pc),r0
    bra LAB_ce316e6
    fmov.s @r0,fr3

LAB_ce316de:
    mova @(DAT_ce3179c,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce317a0,pc),r0
    fmov.s @r0,fr3

LAB_ce316e6:
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3177e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce316f6
    mov 0x5C,r0
    fneg fr4

LAB_ce316f6:
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3177e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31706
    mova @(DAT_ce317a4,pc),r0
    bra LAB_ce3170a
    fmov.s @r0,fr3

LAB_ce31706:
    mova @(DAT_ce317a8,pc),r0
    fmov.s @r0,fr3

LAB_ce3170a:
    mov 0x68,r0
    mov.l @(PTR_ce317b0,pc),r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce317ac,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3177c,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x33,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31780,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3177c,pc),r0
    mov.l @r15,r2
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    mov.b @(r0,r4),r1
    mov 0x15,r5
    mov.w @(DAT_ce3177c,pc),r0
    mov.b r1,@r2
    mov.b @(r0,r14),r0
    mov.l @r15,r2
    extu.b r0,r0
    shll r0
    add r4,r0
    mov r14,r4
    mov.b @(0x1,r0),r0
    mov.b r0,@(0x1,r2)
    mov.w @(DAT_ce3177c,pc),r0
    mov.b @(r0,r14),r6
    add 0x02,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce317b4,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31774:
    #data 0x01a1
DAT_ce31776:
    #data 0x02a4
DAT_ce31778:
    #data 0x041c
DAT_ce3177a:
    #data 0x01fc
DAT_ce3177c:
    #data 0x01a3
DAT_ce3177e:
    #data 0x01d2
    #align4

PTR_ce31780:
    #data loc_8c2896b0
PTR_ce31784:
    #data PTR_ce33618
PTR_ce31788:
    #data loc_8c05218a
PTR_ce3178c:
    #data loc_8c05115a
PTR_ce31790:
    #data loc_8c056de4
DAT_ce31794:
    #data 0x41200000
DAT_ce31798:
    #data 0x41892492
DAT_ce3179c:
    #data 0x41855555
DAT_ce317a0:
    #data 0x42092492
DAT_ce317a4:
    #data 0xbf3aaaaa
DAT_ce317a8:
    #data 0x3f3aaaaa
DAT_ce317ac:
    #data 0xbf892492
PTR_ce317b0:
    #data DAT_ce33614
PTR_ce317b4:
    #data loc_8c034e8c

;=============================================

LAB_ce317b8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce318e8,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    bsr FUN_ce315dc
    mov r14,r4
    mov.w @(DAT_ce318e2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce317e8
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce318ec,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce317e8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce317f0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce315aa
    mov r4,r14
    mov 0x5C,r0
    fmov.s @(r0,r14),fr0
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x68,r1
    add r14,r1
    fadd fr0,fr3
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fldi0 fr3
    fmov fr2,fr4
    fmul fr0,fr4
    fcmp/gt fr4,fr3
    bf/s LAB_ce31822
    fmov fr2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31822:
    lds.l @r15+,PR
    mov.l @(PTR_ce318e8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3182c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce315aa
    mov r4,r14
    mov.w @(DAT_ce318e4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31852
    mov.w @(DAT_ce318e2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31870
    lds.l @r15+,PR
    mov.l @(PTR_ce318e8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31852:
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce318e6,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce318e4,pc),r0
    mov.l @(PTR_ce318f0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31870:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31876:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce318e8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31890
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce318f4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31890:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31898:
    mov.w @(DAT_ce318e2,pc),r0
    mov.b @(r0,r4),r3
    cmp/pl r3
    bf LAB_ce318cc
    mov 0x00,r5
    mov.b r5,@(r0,r4)
    add 0x62,r0
    mov.b @(r0,r4),r3
    add 0xFE,r0
    add 0x39,r3
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce318f8,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce318cc:
    rts
    nop

LAB_ce318d0:
    mov r4,r3
    mov.l @(PTR_ce318fc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce318e2:
    #data 0x0141
DAT_ce318e4:
    #data 0x041c
DAT_ce318e6:
    #data 0x01f9
    #align4

PTR_ce318e8:
    #data loc_8c034dee
PTR_ce318ec:
    #data loc_8c053082
PTR_ce318f0:
    #data loc_8c0511b4
PTR_ce318f4:
    #data loc_8c051648
PTR_ce318f8:
    #data loc_8c2896b0
PTR_ce318fc:
    #data PTR_ce3362c

;=============================================

LAB_ce31900:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31a20,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31a24,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31a28,pc),r3
    mov 0x0A,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31a1a,pc),r0
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31a1c,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x39,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31a2c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mova @(DAT_ce31a30,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31a34,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov.l @(PTR_ce31a38,pc),r2
    fmov fr3,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31a1c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31976
    mova @(DAT_ce31a3c,pc),r0
    bra LAB_ce3197a
    fmov.s @r0,fr4

LAB_ce31976:
    mova @(DAT_ce31a40,pc),r0
    fmov.s @r0,fr4

LAB_ce3197a:
    mov.w @(DAT_ce31a1e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31988
    mov 0x5C,r0
    bra LAB_ce3198c
    fmov fr4,fr3

LAB_ce31988:
    fmov fr4,fr3
    fneg fr3

LAB_ce3198c:
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    mov.l @(PTR_ce31a44,pc),r3
    mov r14,r4
    fldi0 fr3
    mov 0x04,r6
    fmov fr3,@(r0,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce319a2:
    mov.l r14,@-r15
    mov 0x60,r0
    mov r4,r14
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr4
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,fr3
    fmul fr3,fr4
    fldi0 fr3
    fcmp/gt fr3,fr4
    bf/s LAB_ce319f8
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31a48,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce319f8:
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce31a44,pc),r3
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31a1c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31898
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a1a:
    #data 0x041c
DAT_ce31a1c:
    #data 0x01a3
DAT_ce31a1e:
    #data 0x01d2
    #align4

PTR_ce31a20:
    #data loc_8c05218a
PTR_ce31a24:
    #data loc_8c05115a
PTR_ce31a28:
    #data loc_8c056de4
PTR_ce31a2c:
    #data loc_8c2896b0
DAT_ce31a30:
    #data 0x41092492
DAT_ce31a34:
    #data 0xbf4db6db
PTR_ce31a38:
    #data loc_8c053082
DAT_ce31a3c:
    #data 0x40c80000
DAT_ce31a40:
    #data 0x40855555
PTR_ce31a44:
    #data loc_8c034e8c
PTR_ce31a48:
    #data loc_8c034dee

;=============================================

LAB_ce31a4c:
    mov.w @(DAT_ce31b90,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce31a7e
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31a7e
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31b98,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a7e:
    mov 0x5C,r1
    mov.l @(PTR_ce31b9c,pc),r3
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
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31898
    mov.l @r15+,r14

LAB_ce31aa8:
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
    mov.w @(DAT_ce31b92,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31b1a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x07,r6
    mov.w @(DAT_ce31b92,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31b94,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31b98,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31ba0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b1a:
    lds.l @r15+,PR
    mov.l @(PTR_ce31b9c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b24:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31b9c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b3e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31ba4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31b3e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31b46:
    mov.w @(DAT_ce31b90,pc),r0
    mov.b @(r0,r4),r3
    cmp/pl r3
    bf LAB_ce31b7a
    mov 0x00,r5
    mov.b r5,@(r0,r4)
    add 0x62,r0
    mov.b @(r0,r4),r3
    add 0xFE,r0
    add 0x3C,r3
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce31ba8,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31b7a:
    rts
    nop

LAB_ce31b7e:
    mov r4,r3
    mov.l @(PTR_ce31bac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b90:
    #data 0x0141
DAT_ce31b92:
    #data 0x041c
DAT_ce31b94:
    #data 0x01f9
    #align4

PTR_ce31b98:
    #data loc_8c034e8c
PTR_ce31b9c:
    #data loc_8c034dee
PTR_ce31ba0:
    #data loc_8c0511b4
PTR_ce31ba4:
    #data loc_8c051648
PTR_ce31ba8:
    #data loc_8c2896b0
PTR_ce31bac:
    #data PTR_ce33640

;=============================================

LAB_ce31bb0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce31cf0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31ce4,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31cf4,pc),r3
    mov.b @(r0,r14),r2
    add 0xFE,r0
    add 0x3C,r2
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
    mov.w @(DAT_ce31ce4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31bfc
    mova @(DAT_ce31cf8,pc),r0
    bra LAB_ce31c00
    fmov.s @r0,fr4

LAB_ce31bfc:
    mova @(DAT_ce31cfc,pc),r0
    fmov.s @r0,fr4

LAB_ce31c00:
    mov.w @(DAT_ce31ce6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31c16
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31c22
    bra LAB_ce31c24
    nop

LAB_ce31c16:
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf/s LAB_ce31c24
    fneg fr4

LAB_ce31c22:
    fneg fr4

LAB_ce31c24:
    mov 0x5C,r0
    fldi0 fr2
    fmov.s @(r0,r14),fr3
    mov r14,r4
    mov.l @(PTR_ce31d00,pc),r3
    mov 0x08,r6
    fadd fr4,fr3
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce31ce4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c4a:
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
    mov.w @(DAT_ce31ce8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt/s LAB_ce31cba
    mov 0x00,r4
    mov 0x03,r0
    mov.l @(PTR_ce31d04,pc),r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31ce8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31cea,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31d00,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31cba:
    mov.w @(DAT_ce31cec,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce31d08
    mov.b r4,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31d08
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31d00,pc),r3
    mov 0x0A,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ce4:
    #data 0x01a3
DAT_ce31ce6:
    #data 0x01d2
DAT_ce31ce8:
    #data 0x041c
DAT_ce31cea:
    #data 0x01f9
DAT_ce31cec:
    #data 0x0141
    #align4

PTR_ce31cf0:
    #data loc_8c056de4
PTR_ce31cf4:
    #data loc_8c2896b0
DAT_ce31cf8:
    #data 0x40855555
DAT_ce31cfc:
    #data 0x40200000
PTR_ce31d00:
    #data loc_8c034e8c
PTR_ce31d04:
    #data loc_8c0511b4

;=============================================

LAB_ce31d08:
    mov.l @(PTR_ce31e34,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31b46
    mov.l @r15+,r14

LAB_ce31d16:
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
    mov.w @(DAT_ce31e2c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31d88
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31e2c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31e2e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31e38,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31e3c,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31d88:
    mov.l @(PTR_ce31e34,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d9e
    lds.l @r15+,PR
    mov.l @(PTR_ce31e40,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31d9e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31da4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31e34,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31dbe
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31e44,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31dbe:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce31dc6:
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
    mov.w @(DAT_ce31e2c,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31e12
    mov.w @(DAT_ce31e2c,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)

LAB_ce31e12:
    rts
    nop

LAB_ce31e16:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31e48,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31e30,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e2c:
    #data 0x041c
DAT_ce31e2e:
    #data 0x01f9
DAT_ce31e30:
    #data 0x02a4
    #align4

PTR_ce31e34:
    #data loc_8c034dee
PTR_ce31e38:
    #data loc_8c0511b4
PTR_ce31e3c:
    #data loc_8c034e8c
PTR_ce31e40:
    #data loc_8c05176e
PTR_ce31e44:
    #data loc_8c051648
PTR_ce31e48:
    #data PTR_ce33650

;=============================================

LAB_ce31e4c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31f50,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f54,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31f48,pc),r0
    mov 0x00,r4
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x3F,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31f58,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x5C,r0
    mov.l @(DAT_ce31f5c,pc),r1
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce31f60,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fsts FPUL,fr2
    fmov.s @(r0,r14),fr1
    mov r14,r4
    mov.l @(DAT_ce31f64,pc),r1
    mov 0x15,r5
    fdiv fr2,fr1
    fldi0 fr3
    lds r1,FPUL
    mov.l @(PTR_ce31f68,pc),r2
    fmov fr1,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr0
    fsts FPUL,fr1
    fdiv fr1,fr0
    fmov fr0,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f48,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    add 0x0E,r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce31ed2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31dc6
    mov r4,r14
    mov.l @(PTR_ce31f6c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31f4a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31efe
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x01,r5
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31f70,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31efe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f04:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31dc6
    mov r4,r14
    mov.l @(PTR_ce31f6c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31f2c
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31f74,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f2c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f32:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31f78,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31f4c,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f48:
    #data 0x01a3
DAT_ce31f4a:
    #data 0x0141
DAT_ce31f4c:
    #data 0x02a4
    #align4

PTR_ce31f50:
    #data loc_8c05218a
PTR_ce31f54:
    #data loc_8c056de4
PTR_ce31f58:
    #data loc_8c2896b0
DAT_ce31f5c:
    #data 0x41800000
DAT_ce31f60:
    #data 0x41000000
DAT_ce31f64:
    #data 0x42800000
PTR_ce31f68:
    #data loc_8c034e8c
PTR_ce31f6c:
    #data loc_8c034dee
PTR_ce31f70:
    #data loc_8c0600a4
PTR_ce31f74:
    #data loc_8c05176e
PTR_ce31f78:
    #data PTR_ce3365c

;=============================================

LAB_ce31f7c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce320b2,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31f9e
    mov.w @(DAT_ce320b6,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce320b4,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31f9e:
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
    mov.w @(DAT_ce320b8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce31fda
    mov 0x00,r13
    mov.l @(PTR_ce320c8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce320cc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce320ba,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce320b8,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce31fda:
    mov.w @(DAT_ce320bc,pc),r0
    mov.l @r15,r3
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31fe8
    bra LAB_ce31fea
    mov 0x0C,r0

LAB_ce31fe8:
    mov 0x18,r0

LAB_ce31fea:
    mov.b r0,@(0x3,r3)
    mov 0x40,r0
    mov.w r0,@(0x1c,r14)
    mov 0x55,r3
    mov.w @(DAT_ce320be,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce320d0,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce320b8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32030
    mov r14,r4
    mov 0x16,r5
    mov 0x04,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce320d4,pc),r1
    mov.l @r15+,r13
    jmp @r1
    mov.l @r15+,r14

LAB_ce32030:
    mov r14,r4
    mov 0x16,r5
    mov 0x06,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce320d4,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32042:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce320c0,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce320c2,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce320b2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32064
    bra LAB_ce32066
    mov 0x02,r3

LAB_ce32064:
    mov 0x00,r3

LAB_ce32066:
    mov.w @(DAT_ce320c4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce320d8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce320c6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce320aa
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce320e4,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce320c6,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce320b6,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce320dc,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce320e0,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce320aa:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320b2:
    #data 0x0255
DAT_ce320b4:
    #data 0x00ff
DAT_ce320b6:
    #data 0x03f0
DAT_ce320b8:
    #data 0x01f9
DAT_ce320ba:
    #data 0x041c
DAT_ce320bc:
    #data 0x0525
DAT_ce320be:
    #data 0x01a1
DAT_ce320c0:
    #data 0x03f8
DAT_ce320c2:
    #data 0x0328
DAT_ce320c4:
    #data 0x03f1
DAT_ce320c6:
    #data 0x0141
    #align4

PTR_ce320c8:
    #data loc_8c05218a
PTR_ce320cc:
    #data loc_8c05115a
PTR_ce320d0:
    #data loc_8c2896b0
PTR_ce320d4:
    #data loc_8c034e8c
PTR_ce320d8:
    #data loc_8c034dee
DAT_ce320dc:
    #data 0x42200000
DAT_ce320e0:
    #data 0x43092492
PTR_ce320e4:
    #data loc_8c050834

;=============================================

LAB_ce320e8:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32206,pc),r0
    mov 0x02,r3
    mov.l r13,@-r15
    mov 0x05,r2
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32208,pc),r0
    mov.l @(PTR_ce32214,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3220a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32150
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3220c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32130
    mova @(DAT_ce32218,pc),r0
    mov r4,r13
    fmov.s @r0,fr15
    mova @(DAT_ce3221c,pc),r0
    fmov.s @r0,fr14
    bra LAB_ce3213c
    mov r4,r5

LAB_ce32130:
    mova @(DAT_ce32220,pc),r0
    mov r4,r13
    fmov.s @r0,fr15
    mova @(DAT_ce32224,pc),r0
    fmov.s @r0,fr14
    mov 0x01,r5

LAB_ce3213c:
    mov.l @(PTR_ce32228,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3222c,pc),r2
    mov r13,r5
    fmov fr14,fr5
    fmov fr15,fr4
    jsr @r2
    mov r14,r4
    cmp/eq 0x00,r0

LAB_ce32150:
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3215c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32206,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32208,pc),r0
    mov.l @(PTR_ce32214,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0x3,r2),r0
    cmp/pz r0
    bf LAB_ce32198
    mov.l @(PTR_ce32230,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce32198
    mov.l @r15,r2
    mov.b @(0x3,r2),r0
    add 0xFF,r0
    mov.b r0,@(0x3,r2)
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32198:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce321da
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3220e,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32210,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3220c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce321cc
    mov 0x16,r5
    bra LAB_ce321ce
    mov 0x05,r6

LAB_ce321cc:
    mov 0x07,r6

LAB_ce321ce:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32234,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce321da:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce321e2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32214,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32246
    mov.w @(DAT_ce3220c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3223c
    lds.l @r15+,PR
    mov.l @(PTR_ce32238,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32206:
    #data 0x03f8
DAT_ce32208:
    #data 0x0328
DAT_ce3220a:
    #data 0x0141
DAT_ce3220c:
    #data 0x01f9
DAT_ce3220e:
    #data 0x03f9
DAT_ce32210:
    #data 0x0327
    #align4

PTR_ce32214:
    #data loc_8c034dee
DAT_ce32218:
    #data 0x43430000
DAT_ce3221c:
    #data 0x42e32492
DAT_ce32220:
    #data 0x432d5555
DAT_ce32224:
    #data 0x431a4924
PTR_ce32228:
    #data loc_8c0bae94
PTR_ce3222c:
    #data loc_8c060434
PTR_ce32230:
    #data loc_8c055d54
PTR_ce32234:
    #data loc_8c034e8c
PTR_ce32238:
    #data loc_8c051648

;=============================================

LAB_ce3223c:
    lds.l @r15+,PR
    mov.l @(PTR_ce32394,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32246:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3224c:
    mov r4,r3
    mov.l @(PTR_ce32398,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3225e:
    mov.w @(DAT_ce32380,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32294
    mov 0x00,r5
    mov.b @(r0,r4),r6
    mov.b r5,@(r0,r4)
    add 0x56,r0
    mov.b r6,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce3239c,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x10,r2
    mov.w @(DAT_ce32382,pc),r0
    mov.w r2,@(r0,r4)

LAB_ce32294:
    rts
    nop

LAB_ce32298:
    mov.w @(DAT_ce32380,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce322c8
    mov 0x00,r5
    mov.b @(r0,r4),r6
    mov.b r5,@(r0,r4)
    add 0x56,r0
    mov.b r6,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce3239c,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce322c8:
    rts
    nop

LAB_ce322cc:
    mov.w @(DAT_ce32384,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce322ea
    mov.w @(DAT_ce32388,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32386,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce322ea:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce323a0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce323a4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3238a,pc),r0
    mov 0x00,r13
    mov 0x51,r3
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3238c,pc),r0
    mov.b r13,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3239c,pc),r3
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
    mov.w @(DAT_ce32382,pc),r0
    mov.w r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce323a8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov r13,r6
    mov.l @(PTR_ce323b0,pc),r2
    fmov fr3,@(r0,r14)
    mova @(DAT_ce323ac,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov r14,r4
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3235e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3238e,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32390,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32384,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce323b4
    bra LAB_ce323b6
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32380:
    #data 0x014b
DAT_ce32382:
    #data 0x01ac
DAT_ce32384:
    #data 0x0255
DAT_ce32386:
    #data 0x00ff
DAT_ce32388:
    #data 0x03f0
DAT_ce3238a:
    #data 0x041c
DAT_ce3238c:
    #data 0x01f9
DAT_ce3238e:
    #data 0x03f8
DAT_ce32390:
    #data 0x0328
    #align4

PTR_ce32394:
    #data loc_8c05176e
PTR_ce32398:
    #data PTR_ce33670
PTR_ce3239c:
    #data loc_8c2896b0
PTR_ce323a0:
    #data loc_8c05218a
PTR_ce323a4:
    #data loc_8c05115a
DAT_ce323a8:
    #data 0x41092492
DAT_ce323ac:
    #data 0xbf892492
PTR_ce323b0:
    #data loc_8c034e8c

;=============================================

LAB_ce323b4:
    mov 0x00,r3

LAB_ce323b6:
    mov.w @(DAT_ce324fa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32508,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce324fc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce323fa
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32514,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce324fc,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce324fe,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce3250c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32510,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce323fa:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32402:
    mov.w @(DAT_ce32500,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32502,pc),r0
    mov.l @(PTR_ce32508,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32504,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32436
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32518,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32436:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3243c:
    mov.w @(DAT_ce32500,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32502,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr4
    mov 0x34,r0
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x6C,r1
    add r14,r1
    mov 0x60,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,fr3
    fmul fr3,fr4
    fldi0 fr3
    fcmp/gt fr3,fr4
    bf/s LAB_ce3249e
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce32508,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3249e:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3251c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32520,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce324bc:
    mov.w @(DAT_ce32500,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32502,pc),r0
    mov.l @(PTR_ce32508,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32524
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce3253a
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32520,pc),r3
    mov 0x08,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce324fa:
    #data 0x03f1
DAT_ce324fc:
    #data 0x0140
DAT_ce324fe:
    #data 0x03f0
DAT_ce32500:
    #data 0x03f8
DAT_ce32502:
    #data 0x0328
DAT_ce32504:
    #data 0x0141
    #align4

PTR_ce32508:
    #data loc_8c034dee
DAT_ce3250c:
    #data 0x42a00000
DAT_ce32510:
    #data 0x43092492
PTR_ce32514:
    #data loc_8c050834
PTR_ce32518:
    #data loc_8c053082
PTR_ce3251c:
    #data loc_8c0bb0bc
PTR_ce32520:
    #data loc_8c034e8c

;=============================================

LAB_ce32524:
    mov.l @(DAT_ce32674,pc),r1
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov r14,r4
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce3225e
    mov.l @r15+,r14

LAB_ce3253a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32540:
    mov.w @(DAT_ce32666,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32668,pc),r0
    mov.l @(PTR_ce32678,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32586
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce3267c,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3266a,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3266c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32586:
    mov.l @(DAT_ce32674,pc),r1
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov r14,r4
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce32298
    mov.l @r15+,r14
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce325a2:
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
    mov.w @(DAT_ce3266e,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32602
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3266e,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce32670,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce3267c,pc),r3
    jmp @r3
    mov 0x16,r5

LAB_ce32602:
    mov.l @(PTR_ce32678,pc),r2
    jmp @r2
    nop

LAB_ce32608:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32678,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32622
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32680,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32622:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3262a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3264a
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3267c,pc),r3
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3264a:
    mov.l @(PTR_ce32678,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32660
    lds.l @r15+,PR
    mov.l @(PTR_ce32680,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32660:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32666:
    #data 0x03f8
DAT_ce32668:
    #data 0x0328
DAT_ce3266a:
    #data 0x03f9
DAT_ce3266c:
    #data 0x0327
DAT_ce3266e:
    #data 0x041c
DAT_ce32670:
    #data 0x01f9
    #align4

DAT_ce32674:
    #data 0xbe092492
PTR_ce32678:
    #data loc_8c034dee
PTR_ce3267c:
    #data loc_8c034e8c
PTR_ce32680:
    #data loc_8c051648

;=============================================

LAB_ce32684:
    mov r4,r3
    mov.l @(PTR_ce327a8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32696:
    mov.w @(DAT_ce32794,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce326b2
    mov.w @(DAT_ce32798,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32796,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce326b2:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce327ac,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce327b0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3279a,pc),r0
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3279c,pc),r0
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x59,r3
    mov.w @(DAT_ce3279e,pc),r0
    mov 0x16,r5
    fldi0 fr4
    mov 0x09,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce327b4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
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
    mov.l @(PTR_ce327b8,pc),r2
    fmov fr4,@(r0,r14)
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32bc4
    mov.l @r15+,r14

LAB_ce32720:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce327a0,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce327a2,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32794,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32742
    bra LAB_ce32744
    mov 0x02,r3

LAB_ce32742:
    mov 0x00,r3

LAB_ce32744:
    mov.w @(DAT_ce327a4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce327bc,pc),r3
    jsr @r3
    mov r14,r4
    bsr FUN_ce32bc4
    mov r14,r4
    mov.w @(DAT_ce327a6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3278c
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce327c8,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    mov.w @(DAT_ce327a6,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32798,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce327c0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce327c4,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce3278c:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32794:
    #data 0x0255
DAT_ce32796:
    #data 0x00ff
DAT_ce32798:
    #data 0x03f0
DAT_ce3279a:
    #data 0x041c
DAT_ce3279c:
    #data 0x01f9
DAT_ce3279e:
    #data 0x01a1
DAT_ce327a0:
    #data 0x03f8
DAT_ce327a2:
    #data 0x0328
DAT_ce327a4:
    #data 0x03f1
DAT_ce327a6:
    #data 0x0141
    #align4

PTR_ce327a8:
    #data PTR_ce33690
PTR_ce327ac:
    #data loc_8c05218a
PTR_ce327b0:
    #data loc_8c05115a
PTR_ce327b4:
    #data loc_8c2896b0
PTR_ce327b8:
    #data loc_8c034e8c
PTR_ce327bc:
    #data loc_8c034dee
DAT_ce327c0:
    #data 0xc1c80000
DAT_ce327c4:
    #data 0x42c52492
PTR_ce327c8:
    #data loc_8c050834

;=============================================

LAB_ce327cc:
    mov.w @(DAT_ce328ce,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce328d0,pc),r0
    mov.l @(PTR_ce328d8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32832
    mov.l @(PTR_ce328dc,pc),r3
    mov 0x04,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce328d2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32802
    mova @(DAT_ce328e0,pc),r0
    bra LAB_ce32806
    fmov.s @r0,fr3

LAB_ce32802:
    mova @(DAT_ce328e4,pc),r0
    fmov.s @r0,fr3

LAB_ce32806:
    mov 0x5C,r0
    mov.l @(PTR_ce328f0,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce328e8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x0D,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce328ec,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x01,r0
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce32866
    nop

LAB_ce32832:
    mov.w @(DAT_ce328d4,pc),r0
    mov.b @(r0,r14),r3
    add 0x5D,r0
    mov.b @(r0,r14),r4
    tst r3,r3
    tst r4,r4
    bt LAB_ce32866
    exts.b r4,r0
    tst 0x01,r0
    bf LAB_ce32866
    mov.w @(DAT_ce328d6,pc),r0
    mov.l @(r0,r14),r2
    add 0x52,r0
    mov.b @(r0,r2),r3
    tst r3,r3
    bf LAB_ce32866
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce328f0,pc),r3
    mov 0x0A,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4

LAB_ce32866:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32bc4
    mov.l @r15+,r14

LAB_ce3286e:
    mov.w @(DAT_ce328ce,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r8,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce328d0,pc),r0
    mov.l @(PTR_ce328d8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce328d4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3291e
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce328d4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce328dc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce328d2,pc),r0
    mov 0x34,r8
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce328b6
    add r14,r8
    mov.l @(DAT_ce328f4,pc),r1
    lds r1,FPUL
    bra LAB_ce328bc
    fsts FPUL,fr3

LAB_ce328b6:
    mov.l @(DAT_ce328f8,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce328bc:
    fmov.s @r8,fr2
    fadd fr3,fr2
    fmov.s fr2,@r8
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32900
    mova @(DAT_ce328fc,pc),r0
    bra LAB_ce32904
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328ce:
    #data 0x03f8
DAT_ce328d0:
    #data 0x0328
DAT_ce328d2:
    #data 0x01d2
DAT_ce328d4:
    #data 0x0141
DAT_ce328d6:
    #data 0x01b0
    #align4

PTR_ce328d8:
    #data loc_8c034dee
PTR_ce328dc:
    #data loc_8c053082
DAT_ce328e0:
    #data 0x40555555
DAT_ce328e4:
    #data 0xc0555555
DAT_ce328e8:
    #data 0x42092492
DAT_ce328ec:
    #data 0xbf892492
PTR_ce328f0:
    #data loc_8c034e8c
DAT_ce328f4:
    #data 0x42200000
DAT_ce328f8:
    #data 0xc2200000
DAT_ce328fc:
    #data 0x3fd55555

;=============================================

LAB_ce32900:
    mova @(DAT_ce32a54,pc),r0
    fmov.s @r0,fr3

LAB_ce32904:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32a58,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32a5c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce3291e:
    lds.l @r15+,PR
    mov.w @(DAT_ce32a46,pc),r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @r15+,r8
    tst r3,r3
    bra FUN_ce32bc4
    mov.l @r15+,r14

LAB_ce3292e:
    mov.w @(DAT_ce32a48,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32a4a,pc),r0
    mov.l @(PTR_ce32a60,pc),r3
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
    bf/s LAB_ce329ba
    fmov fr2,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    fmov fr3,fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32a4c,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32a4e,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf/s LAB_ce329b2
    mov 0x16,r5
    bra LAB_ce329b4
    mov 0x0B,r6

LAB_ce329b2:
    mov 0x0E,r6

LAB_ce329b4:
    mov.l @(PTR_ce32a64,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce329ba:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32bc4
    mov.l @r15+,r14

LAB_ce329c2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32a60,pc),r3
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
    mov.w @(DAT_ce32a50,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32a3e
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32a50,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32a52,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf/s LAB_ce32a30
    mov 0x16,r5
    bra LAB_ce32a32
    mov 0x0C,r6

LAB_ce32a30:
    mov 0x0F,r6

LAB_ce32a32:
    mov.l @(PTR_ce32a64,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32a68,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32a3e:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32bc4
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a46:
    #data 0x0140
DAT_ce32a48:
    #data 0x03f8
DAT_ce32a4a:
    #data 0x0328
DAT_ce32a4c:
    #data 0x03f9
DAT_ce32a4e:
    #data 0x0327
DAT_ce32a50:
    #data 0x041c
DAT_ce32a52:
    #data 0x01f9
    #align4

DAT_ce32a54:
    #data 0xbfd55555
DAT_ce32a58:
    #data 0x422b6db6
DAT_ce32a5c:
    #data 0xbf892492
PTR_ce32a60:
    #data loc_8c034dee
PTR_ce32a64:
    #data loc_8c034e8c
PTR_ce32a68:
    #data loc_8c0511b4

;=============================================

LAB_ce32a6c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32b90,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a86
    lds.l @r15+,PR
    mov.l @(PTR_ce32b94,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a86:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32bc4
    mov.l @r15+,r14

LAB_ce32a8e:
    mov r4,r3
    mov.l @(PTR_ce32b98,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32aa0:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce32b9c,pc),r3
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
    mov.w @(DAT_ce32b82,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32b84,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ba0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32ba4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32b86,pc),r0
    mov 0x5E,r2
    mov.l @(PTR_ce32ba8,pc),r3
    mov 0x17,r6
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
    mov.l @(PTR_ce32bac,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32b16:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32b90,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32b36
    mov.l @(PTR_ce32b94,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b36:
    mov.w @(DAT_ce32b88,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce32b58
    mov 0x00,r2
    mov.l @(PTR_ce32bb8,pc),r3
    mov.b r2,@(r0,r14)
    mova @(DAT_ce32bb0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32bb4,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32b58:
    mov.w @(DAT_ce32b8a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32b7a
    mov.w @(DAT_ce32b8c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32b6e
    mova @(DAT_ce32bbc,pc),r0
    bra LAB_ce32b72
    fmov.s @r0,fr4

LAB_ce32b6e:
    mova @(DAT_ce32bc0,pc),r0
    fmov.s @r0,fr4

LAB_ce32b72:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce32b7a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b82:
    #data 0x01f9
DAT_ce32b84:
    #data 0x041c
DAT_ce32b86:
    #data 0x01a1
DAT_ce32b88:
    #data 0x0141
DAT_ce32b8a:
    #data 0x0140
DAT_ce32b8c:
    #data 0x01d2
    #align4

PTR_ce32b90:
    #data loc_8c034dee
PTR_ce32b94:
    #data loc_8c051648
PTR_ce32b98:
    #data PTR_ce336ac
PTR_ce32b9c:
    #data loc_8c035162
PTR_ce32ba0:
    #data loc_8c05218a
PTR_ce32ba4:
    #data loc_8c05115a
PTR_ce32ba8:
    #data loc_8c2896b0
PTR_ce32bac:
    #data loc_8c034e8c
DAT_ce32bb0:
    #data 0x41c80000
DAT_ce32bb4:
    #data 0x43250000
PTR_ce32bb8:
    #data loc_8c050ea4
DAT_ce32bbc:
    #data 0x40555555
DAT_ce32bc0:
    #data 0xc0555555

;=============================================

FUN_ce32bc4:
    mov.w @(DAT_ce32c8e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32bf6
    mov.b @(r0,r4),r3
    add 0x56,r0
    mov 0x00,r5
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce32c9c,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce32c8e,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce32bf6:
    rts
    nop

LAB_ce32bfa:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32c90,pc),r1
    mov.l @(PTR_ce32ca0,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce32c12:
    mov.w @(DAT_ce32c92,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32c94,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32c82
    mov.w @(DAT_ce32c96,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32c52
    mov.w @(DAT_ce32c98,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32c52
    mov.l @(PTR_ce32ca4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32c82
    mov r0,r4
    bra LAB_ce32c74
    mov 0x01,r2

LAB_ce32c52:
    mov.w @(DAT_ce32c96,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32c82
    mov.w @(DAT_ce32c98,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32c82
    mov.l @(PTR_ce32ca4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32c82
    mov r0,r4
    mov 0x00,r2

LAB_ce32c74:
    mov.w @(DAT_ce32c9a,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c82:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c8a:
    rts
    mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c8e:
    #data 0x014b
DAT_ce32c90:
    #data 0x01f9
DAT_ce32c92:
    #data 0x01fa
DAT_ce32c94:
    #data 0x0c00
DAT_ce32c96:
    #data 0x01fe
DAT_ce32c98:
    #data 0x01a3
DAT_ce32c9a:
    #data 0x01f7
    #align4

PTR_ce32c9c:
    #data loc_8c2896b0
PTR_ce32ca0:
    #data PTR_ce336b4
PTR_ce32ca4:
    #data loc_8c045790

;=============================================

LAB_ce32ca8:
    mov.w @(DAT_ce32d94,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32d96,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32d02
    mov.w @(DAT_ce32d98,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32d02
    mov.w @(DAT_ce32d9a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32d02
    mova @(DAT_ce32da4,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32d02
    mov.l @(PTR_ce32da8,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32d02
    mov r0,r4
    mov.w @(DAT_ce32d9c,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32d02:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32d0a:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32d9c,pc),r1
    mov.l @(PTR_ce32dac,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce32d22:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32d9e,pc),r0
    mov r4,r14
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce32da0,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf/s LAB_ce32d58
    mov 0x05,r6
    mov.w @(DAT_ce32d9e,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce32da0,pc),r0
    extu.b r2,r2
    mov.w r2,@(r0,r14)

LAB_ce32d58:
    mov.l @(PTR_ce32db0,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32db4,pc),r0
    mov.l @(PTR_ce32dbc,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32db8,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32da2,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce32dc0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32dc4,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d94:
    #data 0x01fa
DAT_ce32d96:
    #data 0x0c00
DAT_ce32d98:
    #data 0x01fe
DAT_ce32d9a:
    #data 0x01a3
DAT_ce32d9c:
    #data 0x01f7
DAT_ce32d9e:
    #data 0x01d2
DAT_ce32da0:
    #data 0x0130
DAT_ce32da2:
    #data 0x01a0
    #align4

DAT_ce32da4:
    #data 0x43092492
PTR_ce32da8:
    #data loc_8c045790
PTR_ce32dac:
    #data PTR_ce336c4
PTR_ce32db0:
    #data loc_8c02fec4
DAT_ce32db4:
    #data 0xc2a6aaaa
DAT_ce32db8:
    #data 0x431e9249
PTR_ce32dbc:
    #data loc_8c103660
PTR_ce32dc0:
    #data loc_8c056f2a
PTR_ce32dc4:
    #data loc_8c034e8c

;=============================================

LAB_ce32dc8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32ee8,pc),r0
    mov r4,r14
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce32eea,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf/s LAB_ce32dfe
    mov 0x05,r6
    mov.w @(DAT_ce32ee8,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce32eea,pc),r0
    extu.b r2,r2
    mov.w r2,@(r0,r14)

LAB_ce32dfe:
    mov.l @(PTR_ce32ef0,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32ef4,pc),r0
    mov.l @(PTR_ce32efc,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32ef8,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32eec,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce32f00,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32f04,pc),r2
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e3a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32ee8,pc),r0
    mov r4,r14
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce32eea,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf/s LAB_ce32e70
    mov 0x05,r6
    mov.w @(DAT_ce32ee8,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce32eea,pc),r0
    extu.b r2,r2
    mov.w r2,@(r0,r14)

LAB_ce32e70:
    mov.l @(PTR_ce32ef0,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32ef4,pc),r0
    mov.l @(PTR_ce32efc,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32ef8,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32eec,pc),r0
    mov 0x0A,r2
    fldi0 fr4
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fldi1 fr3
    fadd fr3,fr3
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    mov.l @(PTR_ce32f00,pc),r3
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32f08,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32f04,pc),r2
    mov 0x0F,r5
    mov 0x02,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32eca:
    mov.w @(DAT_ce32eee,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32f0c,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ee8:
    #data 0x01d2
DAT_ce32eea:
    #data 0x0130
DAT_ce32eec:
    #data 0x01a0
DAT_ce32eee:
    #data 0x01ea
    #align4

PTR_ce32ef0:
    #data loc_8c02fec4
DAT_ce32ef4:
    #data 0xc2a6aaaa
DAT_ce32ef8:
    #data 0x431e9249
PTR_ce32efc:
    #data loc_8c103660
PTR_ce32f00:
    #data loc_8c056f2a
PTR_ce32f04:
    #data loc_8c034e8c
DAT_ce32f08:
    #data 0xbf4db6db
PTR_ce32f0c:
    #data PTR_ce336d0

;=============================================

LAB_ce32f10:
    mov.w @(DAT_ce32fdc,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32f4e
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce32fde,pc),r0
    mov 0x00,r6
    mov 0x02,r2
    mov r6,r5
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce32fe4,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32fe0,pc),r0
    mov 0x20,r2
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)

LAB_ce32f4e:
    mov.l @(PTR_ce32fe8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32f66
    lds.l @r15+,PR
    mov.l @(PTR_ce32fec,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f66:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32f6e:
    mov.w @(DAT_ce32fdc,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32fb6
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce32fde,pc),r0
    mov 0x00,r6
    mov 0x02,r2
    mov r6,r5
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce32fe4,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32fe0,pc),r0
    mov 0x21,r2
    mov.w @(DAT_ce32fe2,pc),r1
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    add r14,r1
    mov.b r3,@(r0,r13)
    mov.b @(r0,r14),r0
    xor 0x01,r0
    mov.b r0,@r1

LAB_ce32fb6:
    mov.l @(PTR_ce32fe8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32fd4
    mov.l @(PTR_ce32ff0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32fec,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32fd4:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32fdc:
    #data 0x0141
DAT_ce32fde:
    #data 0x01c8
DAT_ce32fe0:
    #data 0x01a1
DAT_ce32fe2:
    #data 0x01d2
    #align4

PTR_ce32fe4:
    #data loc_8c02fec4
PTR_ce32fe8:
    #data loc_8c034dee
PTR_ce32fec:
    #data loc_8c051648
PTR_ce32ff0:
    #data loc_8c05218a

;=============================================

LAB_ce32ff4:
    mov.l r14,@-r15
    mov 0x00,r0
    mov r4,r14
    mov 0x5C,r1
    add r14,r1
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r0,@(0x6,r14)
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
    mova @(DAT_ce33128,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce33116,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fadd fr4,fr3
    fcmp/gt fr3,fr2
    bt LAB_ce33054
    mov.w @(DAT_ce33116,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce33054:
    mov.w @(DAT_ce33118,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3308a
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce3311a,pc),r0
    mov 0x00,r6
    mov 0x02,r2
    mov r6,r5
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce3312c,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3311c,pc),r0
    mov 0x22,r2
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)

LAB_ce3308a:
    mov.l @(PTR_ce33130,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce330a2
    lds.l @r15+,PR
    mov.l @(PTR_ce33134,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce330a2:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce330aa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce33176
    mov r4,r14
    tst r0,r0
    bf LAB_ce330c6
    bsr FUN_ce330d6
    mov r14,r4
    tst r0,r0
    bf LAB_ce330c6
    bsr FUN_ce33140
    mov r14,r4
    tst r0,r0
    bt LAB_ce330ce

LAB_ce330c6:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce330ce:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce330d6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce33138,pc),r5
    mov.w @(DAT_ce3311e,pc),r6
    mov.l @(PTR_ce3313c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce33100
    mov.w @(DAT_ce33120,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce33100
    mov.w @(DAT_ce33122,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce33108

LAB_ce33100:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce33108:
    mov.w @(DAT_ce33124,pc),r0
    mov 0x05,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33116:
    #data 0x041c
DAT_ce33118:
    #data 0x0141
DAT_ce3311a:
    #data 0x01c8
DAT_ce3311c:
    #data 0x01a1
DAT_ce3311e:
    #data 0x038c
DAT_ce33120:
    #data 0x040c
DAT_ce33122:
    #data 0x01f9
DAT_ce33124:
    #data 0x0258
    #align4

DAT_ce33128:
    #data 0x42855555
PTR_ce3312c:
    #data loc_8c02fec4
PTR_ce33130:
    #data loc_8c034dee
PTR_ce33134:
    #data loc_8c051648
PTR_ce33138:
    #data DAT_ce334dc
PTR_ce3313c:
    #data loc_8c054e58

;=============================================

FUN_ce33140:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce33244,pc),r5
    mov.w @(DAT_ce33234,pc),r6
    mov.l @(PTR_ce33248,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce33160
    mov.w @(DAT_ce33236,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce33168

LAB_ce33160:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce33168:
    mov.w @(DAT_ce33238,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33176:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3324c,pc),r5
    mov.w @(DAT_ce3323a,pc),r6
    mov.l @(PTR_ce33248,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce33198
    mov.w @(DAT_ce33236,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    mov 0x03,r2
    cmp/ge r2,r3
    bt LAB_ce331a0

LAB_ce33198:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce331a0:
    mov.w @(DAT_ce33238,pc),r0
    mov 0x0B,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce331ae:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce3323c,pc),r1
    mov.l @(PTR_ce33250,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce331c6:
    mov.w @(DAT_ce3323e,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33254,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce331d4:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33240,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce331f2
    mov 0x05,r5
    cmp/eq 0x01,r0
    bt LAB_ce331f2
    cmp/eq 0x02,r0
    bt LAB_ce331f8
    bra LAB_ce331fe
    nop

LAB_ce331f2:
    mov.w @(DAT_ce33242,pc),r0
    bra LAB_ce331fe
    mov.b r5,@(r0,r4)

LAB_ce331f8:
    mov.w @(DAT_ce33242,pc),r0
    mov 0x06,r2
    mov.b r2,@(r0,r4)

LAB_ce331fe:
    mov.l @(PTR_ce33258,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33204:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33240,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33222
    mov 0x05,r5
    cmp/eq 0x01,r0
    bt LAB_ce33222
    cmp/eq 0x02,r0
    bt LAB_ce33228
    bra LAB_ce3322e
    nop

LAB_ce33222:
    mov.w @(DAT_ce33242,pc),r0
    bra LAB_ce3322e
    mov.b r5,@(r0,r4)

LAB_ce33228:
    mov.w @(DAT_ce33242,pc),r0
    mov 0x06,r2
    mov.b r2,@(r0,r4)

LAB_ce3322e:
    mov.l @(PTR_ce33258,pc),r2
    jmp @r2
    mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33234:
    #data 0x0394
DAT_ce33236:
    #data 0x040c
DAT_ce33238:
    #data 0x0258
DAT_ce3323a:
    #data 0x039c
DAT_ce3323c:
    #data 0x01f7
DAT_ce3323e:
    #data 0x01c8
DAT_ce33240:
    #data 0x04c9
DAT_ce33242:
    #data 0x01e9
    #align4

PTR_ce33244:
    #data DAT_ce334ec
PTR_ce33248:
    #data loc_8c054e58
PTR_ce3324c:
    #data DAT_ce334fc
PTR_ce33250:
    #data PTR_ce336dc
PTR_ce33254:
    #data loc_8c04cc1c
PTR_ce33258:
    #data loc_8c0530d8

;=============================================

LAB_ce3325c:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33364,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3327e
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce33284
    cmp/eq 0x02,r0
    bt LAB_ce3328a
    bra LAB_ce33294
    nop

LAB_ce3327e:
    mov.w @(DAT_ce33366,pc),r0
    bra LAB_ce33290
    mov.b r6,@(r0,r4)

LAB_ce33284:
    mov.w @(DAT_ce33366,pc),r0
    bra LAB_ce33290
    mov.b r5,@(r0,r4)

LAB_ce3328a:
    mov.w @(DAT_ce33366,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce33290:
    mov.w @(DAT_ce33368,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce33294:
    mov.l @(PTR_ce33370,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce3329a:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33364,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce332bc
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce332c2
    cmp/eq 0x02,r0
    bt LAB_ce332c8
    bra LAB_ce332d2
    nop

LAB_ce332bc:
    mov.w @(DAT_ce33366,pc),r0
    bra LAB_ce332ce
    mov.b r6,@(r0,r4)

LAB_ce332c2:
    mov.w @(DAT_ce33366,pc),r0
    bra LAB_ce332ce
    mov.b r5,@(r0,r4)

LAB_ce332c8:
    mov.w @(DAT_ce33366,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce332ce:
    mov.w @(DAT_ce33368,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce332d2:
    mov.l @(PTR_ce33370,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce332d8:
    mov r4,r3
    mov.l @(PTR_ce33374,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce332ea:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce33378,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3336a,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce3337c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3336c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3331a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3331a:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33380,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x54,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33384,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce3336e,pc),r0
    mov 0x08,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33388,pc),r3
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
    mov.l @(PTR_ce3338c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33364:
    #data 0x04c9
DAT_ce33366:
    #data 0x01e9
DAT_ce33368:
    #data 0x01a3
DAT_ce3336a:
    #data 0x01f9
DAT_ce3336c:
    #data 0x01d2
DAT_ce3336e:
    #data 0x01a1
    #align4

PTR_ce33370:
    #data loc_8c0530d8
PTR_ce33374:
    #data PTR_ce336e8
PTR_ce33378:
    #data loc_8c035162
DAT_ce3337c:
    #data 0x41f00000
DAT_ce33380:
    #data 0x40892492
DAT_ce33384:
    #data 0xbf4db6db
PTR_ce33388:
    #data loc_8c2896b0
PTR_ce3338c:
    #data loc_8c034e8c

;=============================================

LAB_ce33390:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33430,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce33434,pc),r3
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
    bt LAB_ce333f2
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33438,pc),r3
    mov 0x09,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce333f2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce333f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33430,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3341a
    mov.l @(PTR_ce3343c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33440,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3341a:
    mov.w @(DAT_ce3342c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33426
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce33426:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3342c:
    #data 0x0141
    #align4

PTR_ce33430:
    #data loc_8c034dee
PTR_ce33434:
    #data loc_8c052ce2
PTR_ce33438:
    #data loc_8c034e8c
PTR_ce3343c:
    #data loc_8c035162
PTR_ce33440:
    #data loc_8c051854
DAT_ce33444:
    #data 0x0201
    #data 0x0201
DAT_ce33448:
    #data 0x02ff
    #data 0x02ff
DAT_ce3344c:
    #data 0xffff
    #data 0xffff
DAT_ce33450:
    #data 0x0201
    #data 0x0201
DAT_ce33454:
    #data 0x02ff
    #data 0x02ff
DAT_ce33458:
    #data 0xffff
    #data 0xffff
DAT_ce3345c:
    #data 0x0201
    #data 0x0201
DAT_ce33460:
    #data 0x02ff
    #data 0x02ff
DAT_ce33464:
    #data 0xffff
    #data 0xffff
DAT_ce33468:
    #data 0x0201
    #data 0x0201
DAT_ce3346c:
    #data 0x02ff
    #data 0x02ff
DAT_ce33470:
    #data 0xffff
    #data 0xffff
DAT_ce33474:
    #data 0x0201
    #data 0x0200
DAT_ce33478:
    #data 0x02ff
    #data 0x0201
DAT_ce3347c:
    #data 0xffff
    #data 0x02ff
DAT_ce33480:
    #data 0x0201
    #data 0x0201
DAT_ce33484:
    #data 0x02ff
    #data 0x02ff
DAT_ce33488:
    #data 0xffff
    #data 0xffff
DAT_ce3348c:
    #data 0x0003
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce3349c:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce334ac:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce334bc:
    #data 0x0003
    #data 0x2000
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce334cc:
    #data 0x0003
    #data 0x2000
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce334dc:
    #data 0x0003
    #data 0x8100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce334ec:
    #data 0x0003
    #data 0x9100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce334fc:
    #data 0x0003
    #data 0x9100
    #data 0x000b
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
    #align4

PTR_ce3350c:
    #data LAB_ce3048e
PTR_ce33510:
    #data LAB_ce3001c
PTR_ce33514:
    #data LAB_ce30492
PTR_ce33518:
    #data LAB_ce30b8c
PTR_ce3351c:
    #data LAB_ce310c8
PTR_ce33520:
    #data LAB_ce31288
PTR_ce33524:
    #data LAB_ce31408
PTR_ce33528:
    #data LAB_ce3144e
PTR_ce3352c:
    #data LAB_ce314ae
PTR_ce33530:
    #data LAB_ce32bfa
PTR_ce33534:
    #data LAB_ce32d0a
PTR_ce33538:
    #data LAB_ce32eca
PTR_ce3353c:
    #data LAB_ce331ae
PTR_ce33540:
    #data LAB_ce330aa
PTR_ce33544:
    #data LAB_ce332d8
PTR_ce33548:
    #data LAB_ce31000
PTR_ce3354c:
    #data LAB_ce331d4
PTR_ce33550:
    #data LAB_ce33204
PTR_ce33554:
    #data LAB_ce3325c
PTR_ce33558:
    #data LAB_ce3329a
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce3357c:
    #data LAB_ce304a6
PTR_ce33580:
    #data LAB_ce30b64
PTR_ce33584:
    #data LAB_ce30896
PTR_ce33588:
    #data LAB_ce304a6
PTR_ce3358c:
    #data LAB_ce30bae
PTR_ce33590:
    #data LAB_ce30ef8
PTR_ce33594:
    #data LAB_ce30ee2
PTR_ce33598:
    #data LAB_ce30ba0
PTR_ce3359c:
    #data LAB_ce31110
PTR_ce335a0:
    #data LAB_ce31116
PTR_ce335a4:
    #data LAB_ce31176
PTR_ce335a8:
    #data LAB_ce31238
PTR_ce335ac:
    #data LAB_ce3129a
PTR_ce335b0:
    #data LAB_ce312e2
PTR_ce335b4:
    #data LAB_ce312fa
PTR_ce335b8:
    #data LAB_ce313b8
PTR_ce335bc:
    #data LAB_ce3141a
PTR_ce335c0:
    #data LAB_ce3142e
DAT_ce335c4:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x03
    #data 0x06
    #data 0x01
    #data 0x02
    #data 0x06
DAT_ce335cc:
    #data 0x04
    #data 0x04
    #data 0x00
    #data 0x04
    #data 0x04
    #data 0x00
    #data 0x00
    #data 0x00
    #align4

PTR_ce335d4:
    #data LAB_ce314c2
PTR_ce335d8:
    #data LAB_ce3167e
PTR_ce335dc:
    #data LAB_ce318d0
PTR_ce335e0:
    #data LAB_ce31b7e
PTR_ce335e4:
    #data LAB_ce31e16
PTR_ce335e8:
    #data LAB_ce31f32
PTR_ce335ec:
    #data LAB_ce3224c
PTR_ce335f0:
    #data LAB_ce314c2
PTR_ce335f4:
    #data LAB_ce3262a
PTR_ce335f8:
    #data LAB_ce314c2
PTR_ce335fc:
    #data LAB_ce314c2
PTR_ce33600:
    #data LAB_ce32684
PTR_ce33604:
    #data LAB_ce314c2
PTR_ce33608:
    #data LAB_ce32a8e
PTR_ce3360c:
    #data LAB_ce3150c
PTR_ce33610:
    #data LAB_ce31572
DAT_ce33614:
    #data 0x01
DAT_ce33615:
    #data 0x01
    #data 0x01
    #data 0x01
    #align4

PTR_ce33618:
    #data LAB_ce31694
PTR_ce3361c:
    #data LAB_ce317b8
PTR_ce33620:
    #data LAB_ce317f0
PTR_ce33624:
    #data LAB_ce3182c
PTR_ce33628:
    #data FUN_ce31876
PTR_ce3362c:
    #data LAB_ce31900
PTR_ce33630:
    #data LAB_ce319a2
PTR_ce33634:
    #data LAB_ce31a4c
PTR_ce33638:
    #data LAB_ce31aa8
PTR_ce3363c:
    #data LAB_ce31b24
PTR_ce33640:
    #data LAB_ce31bb0
PTR_ce33644:
    #data LAB_ce31c4a
PTR_ce33648:
    #data LAB_ce31d16
PTR_ce3364c:
    #data FUN_ce31da4
PTR_ce33650:
    #data LAB_ce31e4c
PTR_ce33654:
    #data LAB_ce31ed2
PTR_ce33658:
    #data LAB_ce31f04
PTR_ce3365c:
    #data LAB_ce31f7c
PTR_ce33660:
    #data LAB_ce32042
PTR_ce33664:
    #data LAB_ce320e8
PTR_ce33668:
    #data LAB_ce3215c
PTR_ce3366c:
    #data LAB_ce321e2
PTR_ce33670:
    #data LAB_ce322cc
PTR_ce33674:
    #data LAB_ce3235e
PTR_ce33678:
    #data LAB_ce32402
PTR_ce3367c:
    #data LAB_ce3243c
PTR_ce33680:
    #data LAB_ce324bc
PTR_ce33684:
    #data LAB_ce32540
PTR_ce33688:
    #data LAB_ce325a2
PTR_ce3368c:
    #data LAB_ce32608
PTR_ce33690:
    #data LAB_ce32696
PTR_ce33694:
    #data LAB_ce32720
PTR_ce33698:
    #data LAB_ce327cc
PTR_ce3369c:
    #data LAB_ce3286e
PTR_ce336a0:
    #data LAB_ce3292e
PTR_ce336a4:
    #data LAB_ce329c2
PTR_ce336a8:
    #data LAB_ce32a6c
PTR_ce336ac:
    #data LAB_ce32aa0
PTR_ce336b0:
    #data LAB_ce32b16
PTR_ce336b4:
    #data LAB_ce32c12
PTR_ce336b8:
    #data LAB_ce32c8a
PTR_ce336bc:
    #data LAB_ce32ca8
PTR_ce336c0:
    #data LAB_ce32c12
PTR_ce336c4:
    #data LAB_ce32d22
PTR_ce336c8:
    #data LAB_ce32dc8
PTR_ce336cc:
    #data LAB_ce32e3a
PTR_ce336d0:
    #data LAB_ce32f10
PTR_ce336d4:
    #data LAB_ce32f6e
PTR_ce336d8:
    #data LAB_ce32ff4
PTR_ce336dc:
    #data LAB_ce331c6
PTR_ce336e0:
    #data LAB_ce331c6
PTR_ce336e4:
    #data LAB_ce331c6
PTR_ce336e8:
    #data LAB_ce332ea
PTR_ce336ec:
    #data LAB_ce33390
PTR_ce336f0:
    #data LAB_ce333f8
