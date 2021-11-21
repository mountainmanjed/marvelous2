;╔══════════════════════════════════════════╗
;║ S_PL16 : Marrow (Sarah Rushman) Program  ║
;╚══════════════════════════════════════════╝

#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c045790 0x8C045790
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c04cc1c 0x8C04CC1C
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
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c082614 0x8C082614
#symbol loc_8c082b78 0x8C082B78
#symbol loc_8c083038 0x8C083038
#symbol loc_8c0834a4 0x8C0834A4
#symbol loc_8c0d28dc 0x8C0D28DC
#symbol loc_8c0d2ccc 0x8C0D2CCC
#symbol loc_8c0d3034 0x8C0D3034
#symbol loc_8c0d3424 0x8C0D3424
#symbol loc_8c0d360c 0x8C0D360C
#symbol loc_8c0d37b0 0x8C0D37B0
#symbol loc_8c0d38e4 0x8C0D38E4
#symbol loc_8c0d3b98 0x8C0D3B98
#symbol loc_8c0d3da0 0x8C0D3DA0
#symbol loc_8c0fdab6 0x8C0FDAB6
#symbol loc_8c103660 0x8C103660
#symbol loc_8c1294bc 0x8C1294BC
#symbol loc_8c1294c8 0x8C1294C8
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c26a524 0x8C26A524
#symbol loc_8c289636 0x8C289636
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300b2,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300b4,pc),r7
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
    mov.l @(PTR_ce300b8,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce300bc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce300c0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce300c4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce30284
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce302f8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce30204
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce30196
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce30150
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce300d0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce30380
    mov r14,r4
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce303c0
    mov r14,r4
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce300c8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300cc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300ac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300b2:
    #data 0x0428
    #align4

PTR_ce300b4:
    #data PTR_ce33354
PTR_ce300b8:
    #data loc_8c054508
PTR_ce300bc:
    #data loc_8c054b34
PTR_ce300c0:
    #data loc_8c05496c
PTR_ce300c4:
    #data loc_8c054d04
PTR_ce300c8:
    #data loc_8c053e00
PTR_ce300cc:
    #data loc_8c0542e0

;=============================================

FUN_ce300d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce301dc,pc),r3
    mov r4,r14
    mov.w @(DAT_ce301de,pc),r6
    add r14,r3
    mov.l @(PTR_ce301ec,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce301f0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30112
    mov.l @r15,r3
    mov.b @(0x4,r3),r0
    tst r0,r0
    bf LAB_ce30112
    mov.w @(DAT_ce301e0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30124
    mov.w @(DAT_ce301e2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3011c
    mov.w @(DAT_ce301e4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3011c

LAB_ce30112:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3011c:
    mov.w @(DAT_ce301e2,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30124:
    mov.w @(DAT_ce301de,pc),r5
    mov.l @(PTR_ce301f4,pc),r2
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
    mov.w @(DAT_ce301e6,pc),r0
    mov.l @(PTR_ce301f8,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30150:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301fc,pc),r5
    mov.w @(DAT_ce301e8,pc),r6
    mov.l @(PTR_ce301f0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3016e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3016e:
    mov.w @(DAT_ce301e8,pc),r5
    mov.l @(PTR_ce301f4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301e6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301f8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30196:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30200,pc),r5
    mov.w @(DAT_ce301ea,pc),r6
    mov.l @(PTR_ce301f0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301b4
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301b4:
    mov.w @(DAT_ce301ea,pc),r5
    mov.l @(PTR_ce301f4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301e6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301f8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301dc:
    #data 0x02a4
DAT_ce301de:
    #data 0x036c
DAT_ce301e0:
    #data 0x01f9
DAT_ce301e2:
    #data 0x01d4
DAT_ce301e4:
    #data 0x01fc
DAT_ce301e6:
    #data 0x01e9
DAT_ce301e8:
    #data 0x0374
DAT_ce301ea:
    #data 0x037c
    #align4

PTR_ce301ec:
    #data DAT_ce332f0
PTR_ce301f0:
    #data loc_8c054e58
PTR_ce301f4:
    #data loc_8c055c3a
PTR_ce301f8:
    #data loc_8c0530d8
PTR_ce301fc:
    #data DAT_ce33300
PTR_ce30200:
    #data DAT_ce33310

;=============================================

FUN_ce30204:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce302e4,pc),r5
    mov.w @(DAT_ce302d4,pc),r6
    mov.l @(PTR_ce302e8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30236
    mov.w @(DAT_ce302d6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30242
    mov.w @(DAT_ce302d8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3023a
    mov.w @(DAT_ce302da,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3023a

LAB_ce30236:
    bra LAB_ce3027c
    mov 0x00,r0

LAB_ce3023a:
    mov.w @(DAT_ce302d8,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30242:
    mov.w @(DAT_ce302d4,pc),r5
    mov.l @(PTR_ce302ec,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r13
    mov r13,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302dc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce302f0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce302d6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30274
    bra LAB_ce30278
    mov 0x01,r0

LAB_ce30274:
    mov r13,r0
    nop

LAB_ce30278:
    mov.b r0,@(0x6,r14)
    mov 0x01,r0

LAB_ce3027c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30284:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce302f4,pc),r5
    mov.w @(DAT_ce302de,pc),r6
    mov.l @(PTR_ce302e8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302a4
    mov.w @(DAT_ce302e0,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302ac

LAB_ce302a4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302ac:
    mov.w @(DAT_ce302de,pc),r5
    mov.l @(PTR_ce302ec,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302dc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce302f0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce302d4:
    #data 0x0384
DAT_ce302d6:
    #data 0x01f9
DAT_ce302d8:
    #data 0x01d4
DAT_ce302da:
    #data 0x01fc
DAT_ce302dc:
    #data 0x01e9
DAT_ce302de:
    #data 0x038c
DAT_ce302e0:
    #data 0x040c
    #align4

PTR_ce302e4:
    #data DAT_ce33320
PTR_ce302e8:
    #data loc_8c054e58
PTR_ce302ec:
    #data loc_8c055c3a
PTR_ce302f0:
    #data loc_8c0530d8
PTR_ce302f4:
    #data DAT_ce33334

;=============================================

FUN_ce302f8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30408,pc),r5
    mov.w @(DAT_ce303fa,pc),r6
    mov.l @(PTR_ce3040c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30334
    mov.w @(DAT_ce303fc,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30334
    mov.w @(DAT_ce303fe,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3033e
    mov.w @(DAT_ce30400,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3033e
    mov.w @(DAT_ce30402,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30338

LAB_ce30334:
    bra LAB_ce30378
    mov 0x00,r0

LAB_ce30338:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3033e:
    mov.w @(DAT_ce303fa,pc),r5
    mov.l @(PTR_ce30410,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r13
    mov r13,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30404,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30414,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce303fe,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30370
    bra LAB_ce30374
    mov 0x01,r0

LAB_ce30370:
    mov r13,r0
    nop

LAB_ce30374:
    mov.b r0,@(0x6,r14)
    mov 0x01,r0

LAB_ce30378:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30380:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30418,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30398
    mov.w @(DAT_ce303fc,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303a0

LAB_ce30398:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303a0:
    mov.w @(DAT_ce30404,pc),r0
    mov 0x06,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30414,pc),r3
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

FUN_ce303c0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3041c,pc),r3
    jsr @r3
    mov 0x07,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303da
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303da:
    mov.w @(DAT_ce30404,pc),r0
    mov 0x07,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30414,pc),r3
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

DAT_ce303fa:
    #data 0x0394
DAT_ce303fc:
    #data 0x040c
DAT_ce303fe:
    #data 0x01f9
DAT_ce30400:
    #data 0x01fc
DAT_ce30402:
    #data 0x01d4
DAT_ce30404:
    #data 0x01e9
    #align4

PTR_ce30408:
    #data DAT_ce33344
PTR_ce3040c:
    #data loc_8c054e58
PTR_ce30410:
    #data loc_8c055c3a
PTR_ce30414:
    #data loc_8c0530d8
PTR_ce30418:
    #data loc_8c054d1c
PTR_ce3041c:
    #data loc_8c054da0

;=============================================

LAB_ce30420:
    sts.l PR,@-r15
    add 0xFC,r15
    bsr FUN_ce30446
    mov.l r4,@r15
    tst r0,r0
    bf LAB_ce30434
    bsr FUN_ce30486
    mov.l @r15,r4
    tst r0,r0
    bt LAB_ce3043c

LAB_ce30434:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce3043c:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30446:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3052c,pc),r5
    mov.w @(DAT_ce3051c,pc),r6
    mov.l @(PTR_ce30530,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30470
    mov.w @(DAT_ce3051e,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30470
    mov.w @(DAT_ce30520,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30478

LAB_ce30470:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30478:
    mov.w @(DAT_ce30522,pc),r0
    mov 0x05,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30486:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30534,pc),r5
    mov.w @(DAT_ce30524,pc),r6
    mov.l @(PTR_ce30530,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304a6
    mov.w @(DAT_ce3051e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304ae

LAB_ce304a6:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304ae:
    mov.w @(DAT_ce30522,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce304bc:
    rts
    nop

LAB_ce304c0:
    mov.w @(DAT_ce30526,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30538,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce304d4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3053c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30528,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30502
    mov.w @(DAT_ce30520,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce304fa
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30778
    mov.l @r15+,r14

LAB_ce304fa:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce306cc
    mov.l @r15+,r14

LAB_ce30502:
    mov.w @(DAT_ce30520,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30514
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce305f6
    mov.l @r15+,r14

LAB_ce30514:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30540
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3051c:
    #data 0x0394
DAT_ce3051e:
    #data 0x040c
DAT_ce30520:
    #data 0x01f9
DAT_ce30522:
    #data 0x0258
DAT_ce30524:
    #data 0x038c
DAT_ce30526:
    #data 0x01ff
DAT_ce30528:
    #data 0x01fe
    #align4

PTR_ce3052c:
    #data DAT_ce33344
PTR_ce30530:
    #data loc_8c054e58
PTR_ce30534:
    #data DAT_ce33334
PTR_ce30538:
    #data PTR_ce333c4
PTR_ce3053c:
    #data loc_8c052b4c

;=============================================

LAB_ce30540:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30652,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov 0x01,r11
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30660,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30568
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30586
    cmp/eq 0x02,r0
    bt LAB_ce305a0
    bra LAB_ce305c2
    nop

LAB_ce30568:
    mov.w @(DAT_ce30654,pc),r0
    mov 0x1F,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30656,pc),r0
    mov.l @(PTR_ce30664,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30658,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3065a,pc),r0
    bra LAB_ce305c0
    nop

LAB_ce30586:
    mov.w @(DAT_ce30654,pc),r0
    mov 0x20,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30656,pc),r0
    mov.l @(PTR_ce30668,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30658,pc),r0
    bra LAB_ce305c0
    nop

LAB_ce305a0:
    mov.w @(DAT_ce30654,pc),r0
    mov 0x02,r11
    mov.l @(PTR_ce3066c,pc),r3
    mov r11,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x21,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30656,pc),r0
    mov.l @(PTR_ce30670,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30658,pc),r0

LAB_ce305c0:
    mov.b r11,@(r0,r14)

LAB_ce305c2:
    mov.w @(DAT_ce3065c,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce30674,pc),r3
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
    mov.w @(DAT_ce30654,pc),r0
    mov.l @(PTR_ce30678,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce305f6:
    mov.w @(DAT_ce30652,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30660,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3061a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30636
    cmp/eq 0x02,r0
    bt LAB_ce3067c
    bra LAB_ce3069a
    nop

LAB_ce3061a:
    mov.w @(DAT_ce30654,pc),r0
    mov 0x06,r3
    mov 0x1F,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30656,pc),r0
    mov.l @(PTR_ce30664,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30658,pc),r0
    bra LAB_ce3069a
    mov.b r13,@(r0,r14)

LAB_ce30636:
    mov.w @(DAT_ce30654,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x20,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30656,pc),r0
    mov.l @(PTR_ce30668,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30696
    mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30652:
    #data 0x01e8
DAT_ce30654:
    #data 0x0158
DAT_ce30656:
    #data 0x03f4
DAT_ce30658:
    #data 0x01a7
DAT_ce3065a:
    #data 0x02a2
DAT_ce3065c:
    #data 0x01ac
    #align4

PTR_ce30660:
    #data loc_8c042008
PTR_ce30664:
    #data DAT_ce332a8
PTR_ce30668:
    #data DAT_ce332ac
PTR_ce3066c:
    #data loc_8c0d2ccc
PTR_ce30670:
    #data DAT_ce332b0
PTR_ce30674:
    #data loc_8c2896b0
PTR_ce30678:
    #data loc_8c034e8c

;=============================================

LAB_ce3067c:
    mov.w @(DAT_ce3079c,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x21,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3079e,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce307a8,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30696:
    mov.w @(DAT_ce307a0,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce3069a:
    mov.w @(DAT_ce307a2,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce307ac,pc),r3
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
    mov.w @(DAT_ce3079c,pc),r0
    mov.l @(PTR_ce307b0,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce306cc:
    mov.w @(DAT_ce307a4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce307b4,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce306f0
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3070c
    cmp/eq 0x02,r0
    bt LAB_ce30728
    bra LAB_ce30746
    nop

LAB_ce306f0:
    mov.w @(DAT_ce3079c,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3079e,pc),r0
    mov.l @(PTR_ce307b8,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307a0,pc),r0
    bra LAB_ce30746
    mov.b r13,@(r0,r14)

LAB_ce3070c:
    mov.w @(DAT_ce3079c,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3079e,pc),r0
    mov.l @(PTR_ce307bc,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30742
    mov 0x01,r2

LAB_ce30728:
    mov.w @(DAT_ce3079c,pc),r0
    mov 0x02,r1
    mov 0x05,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3079e,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce307c0,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30742:
    mov.w @(DAT_ce307a0,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30746:
    mov.w @(DAT_ce307a2,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce307ac,pc),r3
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
    mov.w @(DAT_ce3079c,pc),r0
    mov.l @(PTR_ce307b0,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30778:
    mov.w @(DAT_ce307a4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce307b4,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307c4
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307e0
    cmp/eq 0x02,r0
    bt LAB_ce307fc
    bra LAB_ce3081a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3079c:
    #data 0x0158
DAT_ce3079e:
    #data 0x03f4
DAT_ce307a0:
    #data 0x01a7
DAT_ce307a2:
    #data 0x01ac
DAT_ce307a4:
    #data 0x01e8
    #align4

PTR_ce307a8:
    #data DAT_ce332b0
PTR_ce307ac:
    #data loc_8c2896b0
PTR_ce307b0:
    #data loc_8c034e8c
PTR_ce307b4:
    #data loc_8c04223a
PTR_ce307b8:
    #data DAT_ce332b4
PTR_ce307bc:
    #data DAT_ce332b8
PTR_ce307c0:
    #data DAT_ce332bc

;=============================================

LAB_ce307c4:
    mov.w @(DAT_ce308ca,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308cc,pc),r0
    mov.l @(PTR_ce308dc,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308ce,pc),r0
    bra LAB_ce3081a
    mov.b r13,@(r0,r14)

LAB_ce307e0:
    mov.w @(DAT_ce308ca,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308cc,pc),r0
    mov.l @(PTR_ce308e0,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30816
    mov 0x01,r2

LAB_ce307fc:
    mov.w @(DAT_ce308ca,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308cc,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce308e4,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30816:
    mov.w @(DAT_ce308ce,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce3081a:
    mov.w @(DAT_ce308d0,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce308e8,pc),r3
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
    mov.w @(DAT_ce308ca,pc),r0
    mov.l @(PTR_ce308ec,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3084c:
    mov.w @(DAT_ce308d2,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3085c
    mov.w @(DAT_ce308d4,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce3086c

LAB_ce3085c:
    mov.w @(DAT_ce308d2,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30870
    mov.w @(DAT_ce308d4,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30870

LAB_ce3086c:
    bra LAB_ce30874
    nop

LAB_ce30870:
    rts
    nop

LAB_ce30874:
    mov.w @(DAT_ce308d2,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30882
    bra LAB_ce309a2
    nop

LAB_ce30882:
    bra LAB_ce30886
    nop

LAB_ce30886:
    mov.w @(DAT_ce308d6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce308f0,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308aa
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30904
    cmp/eq 0x02,r0
    bt LAB_ce30930
    bra LAB_ce3095e
    nop

LAB_ce308aa:
    mov.w @(DAT_ce308ca,pc),r0
    mov 0x0C,r3
    mov 0x1F,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308d8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce308f8
    mov.w @(DAT_ce308cc,pc),r0
    mov.l @(PTR_ce308f4,pc),r3
    bra LAB_ce308fe
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308ca:
    #data 0x0158
DAT_ce308cc:
    #data 0x03f4
DAT_ce308ce:
    #data 0x01a7
DAT_ce308d0:
    #data 0x01ac
DAT_ce308d2:
    #data 0x01fe
DAT_ce308d4:
    #data 0x01d6
DAT_ce308d6:
    #data 0x01e8
DAT_ce308d8:
    #data 0x01fc
    #align4

PTR_ce308dc:
    #data DAT_ce332b4
PTR_ce308e0:
    #data DAT_ce332b8
PTR_ce308e4:
    #data DAT_ce332bc
PTR_ce308e8:
    #data loc_8c2896b0
PTR_ce308ec:
    #data loc_8c034e8c
PTR_ce308f0:
    #data loc_8c042008
PTR_ce308f4:
    #data DAT_ce332c0

;=============================================

LAB_ce308f8:
    mov.w @(DAT_ce309f2,pc),r0
    mov.l @(PTR_ce30a00,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce308fe:
    mov.w @(DAT_ce309f4,pc),r0
    bra LAB_ce3095e
    mov.b r13,@(r0,r14)

LAB_ce30904:
    mov.w @(DAT_ce309f6,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x20,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309f8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30926
    mov.w @(DAT_ce309f2,pc),r0
    mov.l @(PTR_ce30a04,pc),r3
    bra LAB_ce3092c
    mov.l r3,@(r0,r14)

LAB_ce30926:
    mov.w @(DAT_ce309f2,pc),r0
    mov.l @(PTR_ce30a08,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce3092c:
    bra LAB_ce3095a
    mov 0x01,r3

LAB_ce30930:
    mov.w @(DAT_ce309f6,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x21,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309f8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30952
    mov.w @(DAT_ce309f2,pc),r0
    mov.l @(PTR_ce30a0c,pc),r3
    bra LAB_ce30958
    mov.l r3,@(r0,r14)

LAB_ce30952:
    mov.w @(DAT_ce309f2,pc),r0
    mov.l @(PTR_ce30a10,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30958:
    mov 0x02,r3

LAB_ce3095a:
    mov.w @(DAT_ce309f4,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce3095e:
    mov.w @(DAT_ce309fa,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30a14,pc),r3
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
    mov.w @(DAT_ce309f6,pc),r0
    mov.l @(PTR_ce30a18,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce309fc,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30998
    mov.w @(DAT_ce309fc,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30998:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce309a2:
    mov.w @(DAT_ce309fe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30a1c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce309c6
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a28
    cmp/eq 0x02,r0
    bt LAB_ce30a54
    bra LAB_ce30a82
    nop

LAB_ce309c6:
    mov.w @(DAT_ce309f6,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309f8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce309e6
    mov.w @(DAT_ce309f2,pc),r0
    mov.l @(PTR_ce30a20,pc),r3
    bra LAB_ce309ec
    mov.l r3,@(r0,r14)

LAB_ce309e6:
    mov.w @(DAT_ce309f2,pc),r0
    mov.l @(PTR_ce30a24,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce309ec:
    mov.w @(DAT_ce309f4,pc),r0
    bra LAB_ce30a82
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309f2:
    #data 0x03f4
DAT_ce309f4:
    #data 0x01a7
DAT_ce309f6:
    #data 0x0158
DAT_ce309f8:
    #data 0x01fc
DAT_ce309fa:
    #data 0x01ac
DAT_ce309fc:
    #data 0x01d6
DAT_ce309fe:
    #data 0x01e8
    #align4

PTR_ce30a00:
    #data DAT_ce332d8
PTR_ce30a04:
    #data DAT_ce332c4
PTR_ce30a08:
    #data DAT_ce332dc
PTR_ce30a0c:
    #data DAT_ce332c8
PTR_ce30a10:
    #data DAT_ce332e0
PTR_ce30a14:
    #data loc_8c2896b0
PTR_ce30a18:
    #data loc_8c034e8c
PTR_ce30a1c:
    #data loc_8c04223a
PTR_ce30a20:
    #data DAT_ce332cc
PTR_ce30a24:
    #data DAT_ce332e4

;=============================================

LAB_ce30a28:
    mov.w @(DAT_ce30b24,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b26,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a4a
    mov.w @(DAT_ce30b28,pc),r0
    mov.l @(PTR_ce30b38,pc),r3
    bra LAB_ce30a50
    mov.l r3,@(r0,r14)

LAB_ce30a4a:
    mov.w @(DAT_ce30b28,pc),r0
    mov.l @(PTR_ce30b3c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a50:
    bra LAB_ce30a7e
    mov 0x01,r3

LAB_ce30a54:
    mov.w @(DAT_ce30b24,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b26,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a76
    mov.w @(DAT_ce30b28,pc),r0
    mov.l @(PTR_ce30b40,pc),r3
    bra LAB_ce30a7c
    mov.l r3,@(r0,r14)

LAB_ce30a76:
    mov.w @(DAT_ce30b28,pc),r0
    mov.l @(PTR_ce30b44,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a7c:
    mov 0x02,r3

LAB_ce30a7e:
    mov.w @(DAT_ce30b2a,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30a82:
    mov.w @(DAT_ce30b2c,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30b48,pc),r3
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
    mov.w @(DAT_ce30b24,pc),r0
    mov.l @(PTR_ce30b4c,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30b2e,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30abc
    mov.w @(DAT_ce30b2e,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30abc:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30ac6:
    mov.w @(DAT_ce30b30,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30b50,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30ada:
    sts.l PR,@-r15
    mov.l @(PTR_ce30b54,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30ae8:
    mov.w @(DAT_ce30b32,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30b12
    mov.w @(DAT_ce30b34,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30b0a
    bsr FUN_ce30cb6
    mov r14,r4
    bra LAB_ce30b5c
    nop

LAB_ce30b0a:
    bsr FUN_ce30c94
    mov r14,r4
    bra LAB_ce30b5c
    nop

LAB_ce30b12:
    mov.w @(DAT_ce30b34,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30b58
    bsr FUN_ce30c54
    mov r14,r4
    bra LAB_ce30b5c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b24:
    #data 0x0158
DAT_ce30b26:
    #data 0x01fc
DAT_ce30b28:
    #data 0x03f4
DAT_ce30b2a:
    #data 0x01a7
DAT_ce30b2c:
    #data 0x01ac
DAT_ce30b2e:
    #data 0x01d6
DAT_ce30b30:
    #data 0x01ff
DAT_ce30b32:
    #data 0x01fe
DAT_ce30b34:
    #data 0x01f9
    #align4

PTR_ce30b38:
    #data DAT_ce332d0
PTR_ce30b3c:
    #data DAT_ce332e8
PTR_ce30b40:
    #data DAT_ce332d4
PTR_ce30b44:
    #data DAT_ce332ec
PTR_ce30b48:
    #data loc_8c2896b0
PTR_ce30b4c:
    #data loc_8c034e8c
PTR_ce30b50:
    #data PTR_ce333d4
PTR_ce30b54:
    #data loc_8c0511e2

;=============================================

LAB_ce30b58:
    bsr FUN_ce30b9e
    mov r14,r4

LAB_ce30b5c:
    mov 0x5C,r1
    mov.l @(PTR_ce30c7c,pc),r3
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

;=============================================

FUN_ce30b9e:
    mov.w @(DAT_ce30c76,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30bb6
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30bd2
    mov.l @r15+,r14

LAB_ce30bb6:
    mov.l @(PTR_ce30c80,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30bcc
    lds.l @r15+,PR
    mov.l @(PTR_ce30c84,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30bcc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30bd2:
    mov r4,r3
    mov.l @(PTR_ce30c88,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30be4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30c80,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c04
    mov.b @(0x6,r14),r0
    mov 0x07,r5
    mov.l @(PTR_ce30c8c,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce30c04:
    mov.w @(DAT_ce30c78,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30c2c
    mov 0x00,r3
    mov r3,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30c90,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30c7a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30c2c
    lds.l @r15+,PR
    mov.l @(PTR_ce30c90,pc),r3
    mov 0x01,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c2c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30c32:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30c80,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c4c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30c84,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30c4c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30c54:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30c80,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c6e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30c84,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30c6e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c76:
    #data 0x01e8
DAT_ce30c78:
    #data 0x0141
DAT_ce30c7a:
    #data 0x019e
    #align4

PTR_ce30c7c:
    #data loc_8c052c84
PTR_ce30c80:
    #data loc_8c034dee
PTR_ce30c84:
    #data loc_8c051648
PTR_ce30c88:
    #data PTR_ce333e4
PTR_ce30c8c:
    #data loc_8c034e8c
PTR_ce30c90:
    #data loc_8c0d2ccc

;=============================================

FUN_ce30c94:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d78,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cae
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d7c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30cae:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30cb6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d78,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cd0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d7c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30cd0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30cd8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d80,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30d84,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30cee:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d88,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30d8c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30d74,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d10
    bsr FUN_ce30d52
    mov r14,r4
    bra LAB_ce30d14
    nop

LAB_ce30d10:
    bsr FUN_ce30d30
    mov r14,r4

LAB_ce30d14:
    mov.l @(PTR_ce30d90,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30d2a
    lds.l @r15+,PR
    mov.l @(PTR_ce30d94,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d2a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30d30:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d78,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d4a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d98,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30d4a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30d52:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d78,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d6c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d98,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30d6c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d74:
    #data 0x01fe
    #align4

PTR_ce30d78:
    #data loc_8c034dee
PTR_ce30d7c:
    #data loc_8c051648
PTR_ce30d80:
    #data loc_8c050084
PTR_ce30d84:
    #data loc_8c04ff88
PTR_ce30d88:
    #data loc_8c04fea8
PTR_ce30d8c:
    #data loc_8c050048
PTR_ce30d90:
    #data loc_8c052ce2
PTR_ce30d94:
    #data loc_8c052dac
PTR_ce30d98:
    #data loc_8c05176e

;=============================================

LAB_ce30d9c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30dfa
    mov.l @(PTR_ce30ed0,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce30ed4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30ec4,pc),r0
    mov 0x12,r2
    mov 0x01,r3
    mov.b r2,@(r0,r14)
    add 0x58,r0
    mov.b r3,@(r0,r14)
    mov 0x14,r5
    mov.l @(PTR_ce30ed8,pc),r3
    mov 0x02,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30ec6,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce30edc,pc),r3
    mov 0x15,r5
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
    mov.l @(PTR_ce30ee0,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30dfa:
    mov.w @(DAT_ce30ec8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30e0a
    mov.l @(PTR_ce30ee4,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30e0a:
    mov 0x5C,r1
    mov.l @(PTR_ce30ee8,pc),r3
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
    mov.l @(PTR_ce30eec,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e5e
    lds.l @r15+,PR
    mov.l @(PTR_ce30ef0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30e5e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e64:
    mov r4,r3
    mov.l @(PTR_ce30ef4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30e76:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30eec,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30eca,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30ebe
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
    mov.w @(DAT_ce30ecc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30eae
    mova @(DAT_ce30ef8,pc),r0
    bra LAB_ce30eb2
    fmov.s @r0,fr3

LAB_ce30eae:
    mova @(DAT_ce30efc,pc),r0
    fmov.s @r0,fr3

LAB_ce30eb2:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x14,r0
    mov.w r0,@(0x1e,r14)

LAB_ce30ebe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ec4:
    #data 0x01a1
DAT_ce30ec6:
    #data 0x01ac
DAT_ce30ec8:
    #data 0x01ff
DAT_ce30eca:
    #data 0x0141
DAT_ce30ecc:
    #data 0x01d2
    #align4

PTR_ce30ed0:
    #data loc_8c052b4c
PTR_ce30ed4:
    #data loc_8c056de4
PTR_ce30ed8:
    #data loc_8c034e8c
PTR_ce30edc:
    #data loc_8c2896b0
PTR_ce30ee0:
    #data loc_8c04223a
PTR_ce30ee4:
    #data loc_8c0511e2
PTR_ce30ee8:
    #data loc_8c052c84
PTR_ce30eec:
    #data loc_8c034dee
PTR_ce30ef0:
    #data loc_8c051648
PTR_ce30ef4:
    #data PTR_ce333ec
DAT_ce30ef8:
    #data 0x41855555
DAT_ce30efc:
    #data 0xc1855555

;=============================================

LAB_ce30f00:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ff0,pc),r3
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
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce30f7a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30fec,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f64
    mova @(DAT_ce30ff4,pc),r0
    bra LAB_ce30f68
    fmov.s @r0,fr3

LAB_ce30f64:
    mova @(DAT_ce30ff8,pc),r0
    fmov.s @r0,fr3

LAB_ce30f68:
    mov 0x02,r6
    mov.l @(PTR_ce30ffc,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov r6,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f7a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f80:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30ff0,pc),r3
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
    bt LAB_ce30fd4
    lds.l @r15+,PR
    mov.l @(PTR_ce31000,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30fd4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fda:
    mov r4,r3
    mov.l @(PTR_ce31004,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fec:
    #data 0x01d2
    #align4

PTR_ce30ff0:
    #data loc_8c034dee
DAT_ce30ff4:
    #data 0xbfd55555
DAT_ce30ff8:
    #data 0x3fd55555
PTR_ce30ffc:
    #data loc_8c034e8c
PTR_ce31000:
    #data loc_8c051648
PTR_ce31004:
    #data PTR_ce333f8

;=============================================

LAB_ce31008:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31148,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31142,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31072
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
    mova @(DAT_ce3114c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31150,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31154,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31158,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31144,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3106c
    mov r14,r4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3106c:
    lds.l @r15+,PR
    bra LAB_ce31078
    mov.l @r15+,r14

LAB_ce31072:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31078:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31148,pc),r3
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt/s LAB_ce310d2
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce310d2:
    mov.w @(DAT_ce31146,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31108
    mov 0x60,r0
    mov.l @(PTR_ce3115c,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31146,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31160,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x02,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31108:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3110e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31148,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31128
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31164,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31128:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31130:
    mov r4,r3
    mov.l @(PTR_ce31168,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31142:
    #data 0x0141
DAT_ce31144:
    #data 0x01d2
DAT_ce31146:
    #data 0x041c
    #align4

PTR_ce31148:
    #data loc_8c034dee
DAT_ce3114c:
    #data 0x41a00000
DAT_ce31150:
    #data 0xbf200000
DAT_ce31154:
    #data 0x40cdb6db
DAT_ce31158:
    #data 0xbf092492
PTR_ce3115c:
    #data loc_8c0511b4
PTR_ce31160:
    #data loc_8c034e8c
PTR_ce31164:
    #data loc_8c051648
PTR_ce31168:
    #data PTR_ce33404

;=============================================

LAB_ce3116c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3129a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce312a0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce312a4,pc),r2
    mov 0x00,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31194:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce312a8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311d8
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    mov.l @(PTR_ce312a0,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce312ac,pc),r0
    mov.l @(PTR_ce312a4,pc),r3
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x01,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce312b0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce312b4,pc),r2
    mov 0x32,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce311d8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311de:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce312a8,pc),r3
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
    mov.w @(DAT_ce3129c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3124c
    mov.w @(DAT_ce3129c,pc),r0
    mov 0x00,r3
    mov r14,r4
    mov 0x0A,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3129e,pc),r0
    mov.b r3,@(r0,r14)
    mov.b @(0x5,r14),r0
    mov.l @(PTR_ce312b8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3124c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31252:
    mov.w @(DAT_ce3129c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce312bc,pc),r3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce31274
    lds.l @r15+,PR
    mov.l @(PTR_ce312c0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31274:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce312c4,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31288:
    mov r4,r3
    mov.l @(PTR_ce312c8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3129a:
    #data 0x012c
DAT_ce3129c:
    #data 0x041c
DAT_ce3129e:
    #data 0x01f9
    #align4

PTR_ce312a0:
    #data loc_8c034e8c
PTR_ce312a4:
    #data loc_8c0d28dc
PTR_ce312a8:
    #data loc_8c034dee
DAT_ce312ac:
    #data 0x41892492
DAT_ce312b0:
    #data 0xbf4db6db
PTR_ce312b4:
    #data loc_8c04223a
PTR_ce312b8:
    #data loc_8c042008
PTR_ce312bc:
    #data loc_8c046c8a
PTR_ce312c0:
    #data loc_8c051648
PTR_ce312c4:
    #data PTR_ce33410
PTR_ce312c8:
    #data PTR_ce33424

;=============================================

LAB_ce312cc:
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
    cmp/eq 0x02,r0
    bt/s LAB_ce3132e
    mov 0x02,r12
    mov.l @(PTR_ce313d4,pc),r3
    mov.b @r3,r2
    tst r2,r2
    bt/s LAB_ce312fc
    mov 0x01,r13
    mov.l @(PTR_ce313d8,pc),r2
    jsr @r2
    nop
    bra LAB_ce31300
    and 0x01,r0

LAB_ce312fc:
    mov r13,r0
    nop

LAB_ce31300:
    mov.l @(PTR_ce313dc,pc),r3
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    cmp/ge r12,r0
    bf LAB_ce31312
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)

LAB_ce31312:
    mov.w @(0x1c,r14),r0
    cmp/eq 0x00,r0
    bt LAB_ce31324
    cmp/eq 0x01,r0
    bt LAB_ce3132e
    cmp/eq 0x02,r0
    bt LAB_ce31346
    bra LAB_ce31346
    nop

LAB_ce31324:
    mov r13,r0
    nop
    mov.b r0,@(0x6,r14)
    bra LAB_ce31336
    mov 0x00,r6

LAB_ce3132e:
    mov r12,r0
    nop
    mov 0x01,r6
    mov.b r0,@(0x6,r14)

LAB_ce31336:
    lds.l @r15+,PR
    mov.l @(PTR_ce313e0,pc),r3
    mov 0x13,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31346:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31350:
    mov.w @(DAT_ce313cc,pc),r3
    mov.w @(DAT_ce313ce,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce313e4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce313d0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31378
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce313e8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31378:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3137e:
    mov.l @(PTR_ce313e4,pc),r3
    jmp @r3
    nop

LAB_ce31384:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31398
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce313e0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31398:
    mov.l @(PTR_ce313e4,pc),r3
    jmp @r3
    nop

LAB_ce3139e:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce313b2
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce313e0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce313b2:
    mov.l @(PTR_ce313e4,pc),r3
    jmp @r3
    nop

LAB_ce313b8:
    mov.w @(DAT_ce313d2,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce313ec,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce313cc:
    #data 0x00ff
DAT_ce313ce:
    #data 0x0326
DAT_ce313d0:
    #data 0x0141
DAT_ce313d2:
    #data 0x01e9
    #align4

PTR_ce313d4:
    #data loc_8c289636
PTR_ce313d8:
    #data loc_8c03319e
PTR_ce313dc:
    #data loc_8c0514b8
PTR_ce313e0:
    #data loc_8c034e8c
PTR_ce313e4:
    #data loc_8c034dee
PTR_ce313e8:
    #data loc_8c0d3da0
PTR_ce313ec:
    #data PTR_ce33430

;=============================================

FUN_ce313f0:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31534,pc),r0
    mov 0x00,r4
    fldi0 fr4
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31536,pc),r0
    mov.l @(PTR_ce31540,pc),r3
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
    mov.l @(PTR_ce31544,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;=============================================

FUN_ce3142a:
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
    mov.w @(DAT_ce31536,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31476
    mov.w @(DAT_ce31536,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)

LAB_ce31476:
    rts
    nop

LAB_ce3147a:
    mov r4,r3
    mov.l @(PTR_ce31548,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3148c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x30,r3
    mov.l r13,@-r15
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31538,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.l @(PTR_ce3154c,pc),r3
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31550,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31540,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(DAT_ce31554,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce31558,pc),r1
    mov.l @(PTR_ce31560,pc),r13
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce3155c,pc),r1
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
    mov.w @(DAT_ce3153a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31522
    mov.w @(DAT_ce3153c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce31518
    mov 0x15,r5
    bra LAB_ce3151a
    mov 0x02,r6

LAB_ce31518:
    mov 0x03,r6

LAB_ce3151a:
    jsr @r13
    mov r14,r4
    bra LAB_ce3156a
    nop

LAB_ce31522:
    bsr FUN_ce313f0
    mov r14,r4
    mov.w @(DAT_ce3153c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce31564
    mov 0x15,r5
    bra LAB_ce31566
    mov 0x00,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31534:
    #data 0x01fc
DAT_ce31536:
    #data 0x041c
DAT_ce31538:
    #data 0x01a1
DAT_ce3153a:
    #data 0x01f9
DAT_ce3153c:
    #data 0x01a3
    #align4

PTR_ce31540:
    #data loc_8c05218a
PTR_ce31544:
    #data loc_8c05115a
PTR_ce31548:
    #data PTR_ce33450
PTR_ce3154c:
    #data loc_8c2896b0
PTR_ce31550:
    #data loc_8c056de4
DAT_ce31554:
    #data 0x41800000
DAT_ce31558:
    #data 0x41000000
DAT_ce3155c:
    #data 0x42800000
PTR_ce31560:
    #data loc_8c034e8c

;=============================================

LAB_ce31564:
    mov 0x01,r6

LAB_ce31566:
    jsr @r13
    mov r14,r4

LAB_ce3156a:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31572:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce3142a
    mov r4,r14
    mov.w @(DAT_ce31682,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3158e
    mov.l @(PTR_ce31688,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31682,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)

LAB_ce3158e:
    mov.l @(PTR_ce3168c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce315c2
    mov.w @(DAT_ce31684,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce315b8
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31690,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce315b8:
    lds.l @r15+,PR
    mov.l @(PTR_ce31694,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce315c2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce315c8:
    mov r4,r3
    mov.l @(PTR_ce31698,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce315da:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce313f0
    mov r14,r4
    mov.w @(DAT_ce31686,pc),r0
    mov 0x31,r2
    mov 0x00,r4
    mov.l @(PTR_ce3169c,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x05,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce316a0,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce316a4,pc),r3
    mov r14,r4
    mov 0x04,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31626:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3168c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31682,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31660
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov.l @(PTR_ce316a8,pc),r13
    mov r3,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31682,pc),r0
    mov.b r3,@(r0,r14)
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

LAB_ce31660:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31668:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3168c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce316ac
    lds.l @r15+,PR
    mov.l @(PTR_ce31694,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31682:
    #data 0x0141
DAT_ce31684:
    #data 0x01f9
DAT_ce31686:
    #data 0x01a1
    #align4

PTR_ce31688:
    #data loc_8c082614
PTR_ce3168c:
    #data loc_8c034dee
PTR_ce31690:
    #data loc_8c05176e
PTR_ce31694:
    #data loc_8c051648
PTR_ce31698:
    #data PTR_ce33458
PTR_ce3169c:
    #data loc_8c2896b0
PTR_ce316a0:
    #data loc_8c056de4
PTR_ce316a4:
    #data loc_8c034e8c
PTR_ce316a8:
    #data loc_8c083038

;=============================================

LAB_ce316ac:
    mov.w @(DAT_ce317c6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce316e0
    mov.b @(r0,r14),r3
    add 0x60,r0
    mov 0x00,r4
    add 0x30,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce317cc,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce317c6,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce316e0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce316e6:
    mov r4,r3
    mov.l @(PTR_ce317d0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce316f8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.l @(PTR_ce317d4,pc),r2
    mov r15,r1
    mov.l @(PTR_ce317d8,pc),r3
    mov r4,r14
    mov r15,r13
    jsr @r3
    mov 0x10,r0
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce317c8,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x36,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce317cc,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r2
    add 0x01,r2
    mov.w r2,@(r0,r1)
    mov.l @(PTR_ce317dc,pc),r1
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce317e0,pc),r3
    jsr @r3
    mov r14,r4
    bsr FUN_ce313f0
    mov r14,r4
    mov.w @(DAT_ce317ca,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31762
    mov.l @(PTR_ce317e4,pc),r3
    mova @(DAT_ce317e8,pc),r0
    fmov.s @r3,fr4
    bra LAB_ce3176a
    fmov.s @r0,fr3

LAB_ce31762:
    mov.l @(PTR_ce317e4,pc),r3
    mova @(DAT_ce317ec,pc),r0
    fmov.s @r0,fr3
    fmov.s @r3,fr4

LAB_ce3176a:
    fadd fr3,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce317f0,pc),r0
    fldi0 fr2
    fsub fr3,fr4
    fmov.s @r0,fr3
    mov 0x5C,r0
    fdiv fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce317c8,pc),r0
    mov.b @(r0,r14),r3
    mov 0x60,r0
    extu.b r3,r3
    shll2 r3
    shll r3
    add r13,r3
    fmov.s @r3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce317c8,pc),r0
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    shll2 r3
    shll r3
    add r3,r13
    mov.l @(PTR_ce317f4,pc),r3
    fmov.s @(r0,r13),fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce317c8,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce317f8,pc),r3
    mov.b @(r0,r14),r6
    add 0x0C,r6
    jsr @r3
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce317c6:
    #data 0x0141
DAT_ce317c8:
    #data 0x01a3
DAT_ce317ca:
    #data 0x01d2
    #align4

PTR_ce317cc:
    #data loc_8c2896b0
PTR_ce317d0:
    #data PTR_ce33464
PTR_ce317d4:
    #data DAT_ce33298
PTR_ce317d8:
    #data loc_8c1294bc
PTR_ce317dc:
    #data loc_8c056de4
PTR_ce317e0:
    #data loc_8c05218a
PTR_ce317e4:
    #data loc_8c26a524
DAT_ce317e8:
    #data 0xc3a00000
DAT_ce317ec:
    #data 0x43a00000
DAT_ce317f0:
    #data 0x42000000
PTR_ce317f4:
    #data loc_8c05115a
PTR_ce317f8:
    #data loc_8c034e8c

;=============================================

LAB_ce317fc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31922,pc),r3
    mov r4,r14
    mov.l @(PTR_ce31930,pc),r2
    add r14,r3
    mov.l r3,@r15
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31924,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31840
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31934,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31926,pc),r0
    mov.w @(DAT_ce31926,pc),r2
    mov.b @(r0,r14),r0
    add r14,r2
    mov.w @(DAT_ce31928,pc),r1
    extu.b r0,r0
    xor 0x01,r0
    add r14,r1
    mov.w r0,@r1
    mov.b r0,@r2
    mov.l @(PTR_ce31938,pc),r2
    mov.l @r15,r3
    fmov.s @r2,fr3
    fmov.s fr3,@r3

LAB_ce31840:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31848:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce3193c,pc),r5
    mov 0x0C,r1
    mov.w @(DAT_ce31922,pc),r4
    mov 0x34,r0
    add r5,r1
    mov.l @(PTR_ce31930,pc),r3
    add r14,r4
    sts.l PR,@-r15
    fmov.s @r1,fr2
    fmov.s @r4,fr3
    fsub fr3,fr2
    fmov.s @(r0,r14),fr3
    fadd fr2,fr3
    fmov fr3,@(r0,r14)
    mov 0x0C,r0
    fmov.s @(r0,r5),fr2
    fmov.s fr2,@r4
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
    mov.w @(DAT_ce3192a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce318be
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31c6a
    mov.l @r15+,r14

LAB_ce318be:
    mova @(DAT_ce31940,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce3192a,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bt LAB_ce31904
    mov.w @(DAT_ce3192c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31904
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.w @(DAT_ce31928,pc),r1
    mov 0x15,r5
    add 0x01,r0
    mov.w @(DAT_ce31926,pc),r2
    mov.b r0,@(0x6,r14)
    add r14,r1
    mov.w @(DAT_ce31926,pc),r0
    add r14,r2
    mov.l @(PTR_ce31944,pc),r3
    mov.b @(r0,r14),r0
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce3192e,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    add 0x0E,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31904:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3190a:
    mov.w @(DAT_ce31926,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3194c
    mov.l @(PTR_ce31938,pc),r3
    mova @(DAT_ce31948,pc),r0
    fmov.s @r3,fr3
    bra LAB_ce31954
    fmov.s @r0,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31922:
    #data 0x02a4
DAT_ce31924:
    #data 0x0141
DAT_ce31926:
    #data 0x01d2
DAT_ce31928:
    #data 0x0130
DAT_ce3192a:
    #data 0x041c
DAT_ce3192c:
    #data 0x01fd
DAT_ce3192e:
    #data 0x01a3
    #align4

PTR_ce31930:
    #data loc_8c034dee
PTR_ce31934:
    #data loc_8c053082
PTR_ce31938:
    #data loc_8c26a524
PTR_ce3193c:
    #data loc_8c26a518
DAT_ce31940:
    #data 0x435edb6d
PTR_ce31944:
    #data loc_8c034e8c
DAT_ce31948:
    #data 0xc3a00000

;=============================================

LAB_ce3194c:
    mov.l @(PTR_ce31a84,pc),r3
    mova @(DAT_ce31a88,pc),r0
    fmov.s @r0,fr2
    fmov.s @r3,fr3

LAB_ce31954:
    fadd fr2,fr3
    mov.l @(PTR_ce31a8c,pc),r3
    mov 0x34,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31a78,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31a1e
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31a7a,pc),r0
    mov.b @(r0,r14),r3
    mov 0x03,r0
    mov.w r0,@(0x1c,r14)
    tst r3,r3
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov 0x22,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31a7a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31990
    bra LAB_ce31992
    mov 0x39,r3

LAB_ce31990:
    mov 0x36,r3

LAB_ce31992:
    mov.w @(DAT_ce31a7c,pc),r0
    fldi0 fr4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31a90,pc),r3
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
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31a7e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce319de
    mov.w @(DAT_ce31a7a,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31a94,pc),r0
    extu.b r2,r2
    shll2 r2
    shll r2
    bra LAB_ce319ee
    fmov.s @(r0,r2),fr3

LAB_ce319de:
    mov.w @(DAT_ce31a7a,pc),r0
    mov.b @(r0,r14),r1
    mov.l @(PTR_ce31a94,pc),r0
    extu.b r1,r1
    shll2 r1
    shll r1
    fmov.s @(r0,r1),fr3
    fneg fr3

LAB_ce319ee:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31a7a,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31a98,pc),r0
    extu.b r3,r3
    shll2 r3
    shll r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31a7a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31a14
    mov 0x00,r5
    mov.l @(DAT_ce31a9c,pc),r3
    mov 0x48,r0
    mov.l r3,@(r0,r14)

LAB_ce31a14:
    lds.l @r15+,PR
    mov.l @(PTR_ce31aa0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a1e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31a24:
    mov.w @(DAT_ce31a80,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31b18
    mov 0x00,r13
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf LAB_ce31b18
    mov 0x01,r0
    mov.w r0,@(0x1e,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31b18
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31a7e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31aa8
    mov.w @(DAT_ce31a7a,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31aa4,pc),r0
    extu.b r3,r3
    mov r3,r2
    shll r3
    add r2,r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31abc
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a78:
    #data 0x0141
DAT_ce31a7a:
    #data 0x01a3
DAT_ce31a7c:
    #data 0x01a1
DAT_ce31a7e:
    #data 0x01d2
DAT_ce31a80:
    #data 0x019e
    #align4

PTR_ce31a84:
    #data loc_8c26a524
DAT_ce31a88:
    #data 0x43a00000
PTR_ce31a8c:
    #data loc_8c034dee
PTR_ce31a90:
    #data loc_8c2896b0
PTR_ce31a94:
    #data DAT_ce33480
PTR_ce31a98:
    #data DAT_ce33484
DAT_ce31a9c:
    #data 0x0000f200
PTR_ce31aa0:
    #data loc_8c0d3034
PTR_ce31aa4:
    #data DAT_ce33490

;=============================================

LAB_ce31aa8:
    mov.w @(DAT_ce31bc0,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31bc8,pc),r0
    extu.b r2,r2
    mov r2,r3
    shll r2
    add r3,r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31abc:
    mov 0x5C,r0
    mov.l @(PTR_ce31bc8,pc),r4
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31bc0,pc),r0
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    mov r3,r2
    shll r3
    add r2,r3
    shll2 r3
    add r4,r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31bc0,pc),r0
    mov.b @(r0,r14),r3
    mov 0x08,r0
    extu.b r3,r3
    mov r3,r2
    shll r3
    add r2,r3
    shll2 r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x48,r0
    mov.l r13,@(r0,r14)
    mov.w @(DAT_ce31bc0,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31bcc,pc),r3
    mov.b @(r0,r14),r6
    add 0x10,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31bd0,pc),r2
    mov r14,r4
    mov 0x01,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b18:
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
    mov.w @(DAT_ce31bc2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31b6a
    mov 0x48,r0
    mov r14,r4
    mov.l r13,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce31c6a
    mov.l @r15+,r14

LAB_ce31b6a:
    mov.l @(PTR_ce31bd4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31bc4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31bb8
    mov.w @(DAT_ce31bc0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31b86
    mov 0x22,r0
    bra LAB_ce31b88
    mov 0x39,r3

LAB_ce31b86:
    mov 0x36,r3

LAB_ce31b88:
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce31bc6,pc),r0
    add r1,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31bd8,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31bc4,pc),r0
    mov.b r13,@(r0,r14)
    mov r13,r0
    nop
    mov.w r0,@(0x1e,r14)

LAB_ce31bb8:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31bc0:
    #data 0x01a3
DAT_ce31bc2:
    #data 0x041c
DAT_ce31bc4:
    #data 0x0141
DAT_ce31bc6:
    #data 0x01a1
    #align4

PTR_ce31bc8:
    #data DAT_ce33490
PTR_ce31bcc:
    #data loc_8c034e8c
PTR_ce31bd0:
    #data loc_8c0d3034
PTR_ce31bd4:
    #data loc_8c034dee
PTR_ce31bd8:
    #data loc_8c2896b0

;=============================================

LAB_ce31bdc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31d18,pc),r3
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
    mov.w @(DAT_ce31d10,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31c32
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31c6a
    mov.l @r15+,r14

LAB_ce31c32:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31c38:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31d18,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c64
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31d1c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c64:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31c6a:
    mov.l r14,@-r15
    mov 0x06,r0
    mov r4,r14
    mov 0x00,r3
    sts.l PR,@-r15
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31d12,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31d10,pc),r0
    mov.l @(PTR_ce31d20,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31d14,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov 0x15,r5
    mov.l @(PTR_ce31d24,pc),r3
    add 0x12,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c9a:
    mov r4,r3
    mov.l @(PTR_ce31d28,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31cac:
    mov r4,r3
    mov.l @(PTR_ce31d2c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31cbe:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x47,r3
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31d16,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31d30,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31d34,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31d38,pc),r3
    jsr @r3
    mov r14,r4
    bsr FUN_ce313f0
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31d24,pc),r3
    mov r14,r4
    mov 0x14,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d10:
    #data 0x041c
DAT_ce31d12:
    #data 0x01f9
DAT_ce31d14:
    #data 0x01a3
DAT_ce31d16:
    #data 0x01a1
    #align4

PTR_ce31d18:
    #data loc_8c034dee
PTR_ce31d1c:
    #data loc_8c051648
PTR_ce31d20:
    #data loc_8c0511b4
PTR_ce31d24:
    #data loc_8c034e8c
PTR_ce31d28:
    #data PTR_ce334a8
PTR_ce31d2c:
    #data PTR_ce334b0
PTR_ce31d30:
    #data loc_8c2896b0
PTR_ce31d34:
    #data loc_8c056de4
PTR_ce31d38:
    #data loc_8c05218a

;=============================================

LAB_ce31d3c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31e4c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31e44,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31de0
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31e50,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31e46,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31d74
    mov.w @(DAT_ce31e48,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31e54,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31d84
    nop

LAB_ce31d74:
    mov.w @(DAT_ce31e48,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31e54,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31d84:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31e46,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31da2
    mov.w @(DAT_ce31e48,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31e58,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31db2
    nop

LAB_ce31da2:
    mov.w @(DAT_ce31e48,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31e58,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31db2:
    mov 0x68,r0
    mov.l @(PTR_ce31e54,pc),r4
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31e48,pc),r0
    mov.b @(r0,r14),r3
    mov 0x08,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r4,r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31e48,pc),r0
    mov.b @(r0,r14),r3
    mov 0x0C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31de0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31de6:
    mov.w @(DAT_ce31e44,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31dfa
    mov.l @(PTR_ce31e4c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31dfa:
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
    bf/s LAB_ce31e3e
    fmov fr2,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce31e3e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e44:
    #data 0x0141
DAT_ce31e46:
    #data 0x01d2
DAT_ce31e48:
    #data 0x01a3
    #align4

PTR_ce31e4c:
    #data loc_8c034dee
PTR_ce31e50:
    #data loc_8c053082
PTR_ce31e54:
    #data DAT_ce334c8
PTR_ce31e58:
    #data DAT_ce334cc

;=============================================

LAB_ce31e5c:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31f68,pc),r3
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
    mov.w @(DAT_ce31f5c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31f0e
    fldi0 fr15
    mov.l @(PTR_ce31f6c,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce31ed6
    mov.b @(0x7,r14),r0
    mov.w @(DAT_ce31f5e,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31f60,pc),r0
    mov.b r3,@(r0,r14)
    add 0xB9,r0
    mov.l @(PTR_ce31f70,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31f74,pc),r2
    mov r14,r4
    fmov.s @r15+,fr15
    jmp @r2
    mov.l @r15+,r14

LAB_ce31ed6:
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31f84,pc),r3
    mov 0x16,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce31f78,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    mov 0x15,r5
    fdiv fr3,fr2
    fneg fr2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce31f7c,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31f80,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f0e:
    mov.w @(DAT_ce31f62,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31f54
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov 0x01,r5
    add 0x02,r0
    mov.b r0,@(0x7,r14)
    mov 0x03,r6
    mov.w @(DAT_ce31f62,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f64,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31f84,pc),r3
    fmov fr15,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31f88,pc),r2
    mov r14,r4
    fmov.s @r15+,fr15
    jmp @r2
    mov.l @r15+,r14

LAB_ce31f54:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f5c:
    #data 0x019e
DAT_ce31f5e:
    #data 0x00c2
DAT_ce31f60:
    #data 0x01f7
DAT_ce31f62:
    #data 0x041c
DAT_ce31f64:
    #data 0x01f9
    #align4

PTR_ce31f68:
    #data loc_8c034dee
PTR_ce31f6c:
    #data loc_8c05264c
PTR_ce31f70:
    #data loc_8c0522e0
PTR_ce31f74:
    #data loc_8c0d37b0
DAT_ce31f78:
    #data 0x41000000
DAT_ce31f7c:
    #data 0x41092492
DAT_ce31f80:
    #data 0xbf2b6db6
PTR_ce31f84:
    #data loc_8c034e8c
PTR_ce31f88:
    #data loc_8c0511b4

;=============================================

LAB_ce31f8c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce320d4,pc),r3
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
    mov.w @(DAT_ce320c6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31ffc
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r14,r4
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r5
    mov.w @(DAT_ce320c6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce320c8,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce320d8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ffc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32002:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce320d4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3202e
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce320dc,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3202e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32034:
    mov r4,r3
    mov.l @(PTR_ce320e0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32046:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x47,r3
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce320ca,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce320e4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce320e8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce320ec,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce320d8,pc),r2
    mov 0x15,r6
    mov r6,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32094:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce320d4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce320cc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32160
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce320ce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce320f4
    mov.w @(DAT_ce320d0,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce320f0,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce32104
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320c6:
    #data 0x041c
DAT_ce320c8:
    #data 0x01f9
DAT_ce320ca:
    #data 0x01a1
DAT_ce320cc:
    #data 0x0141
DAT_ce320ce:
    #data 0x01d2
DAT_ce320d0:
    #data 0x01a3
    #align4

PTR_ce320d4:
    #data loc_8c034dee
PTR_ce320d8:
    #data loc_8c034e8c
PTR_ce320dc:
    #data loc_8c051648
PTR_ce320e0:
    #data PTR_ce334e8
PTR_ce320e4:
    #data loc_8c2896b0
PTR_ce320e8:
    #data loc_8c056de4
PTR_ce320ec:
    #data loc_8c05218a
PTR_ce320f0:
    #data DAT_ce33500

;=============================================

LAB_ce320f4:
    mov.w @(DAT_ce321fa,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce3220c,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce32104:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce321fc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32122
    mov.w @(DAT_ce321fa,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32210,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce32132
    nop

LAB_ce32122:
    mov.w @(DAT_ce321fa,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce32210,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce32132:
    mov 0x68,r0
    mov.l @(PTR_ce3220c,pc),r4
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce321fa,pc),r0
    mov.b @(r0,r14),r3
    mov 0x08,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r4,r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce321fa,pc),r0
    mov.b @(r0,r14),r3
    mov 0x0C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32160:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32166:
    mov r4,r3
    mov.l @(PTR_ce32214,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32178:
    mov.w @(DAT_ce321fe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32194
    mov.w @(DAT_ce32202,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32200,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32194:
    mov.b @(0x6,r14),r0
    mov 0x43,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32204,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32218,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    bsr FUN_ce313f0
    mov r14,r4
    mov.l @(PTR_ce3221c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32220,pc),r2
    mov r14,r4
    mov 0x02,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce321d8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32206,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32208,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce321fe,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32224
    bra LAB_ce32226
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce321fa:
    #data 0x01a3
DAT_ce321fc:
    #data 0x01d2
DAT_ce321fe:
    #data 0x0255
DAT_ce32200:
    #data 0x00ff
DAT_ce32202:
    #data 0x03f0
DAT_ce32204:
    #data 0x01a1
DAT_ce32206:
    #data 0x03f8
DAT_ce32208:
    #data 0x0328
    #align4

PTR_ce3220c:
    #data DAT_ce33500
PTR_ce32210:
    #data DAT_ce33504
PTR_ce32214:
    #data PTR_ce33520
PTR_ce32218:
    #data loc_8c2896b0
PTR_ce3221c:
    #data loc_8c0d360c
PTR_ce32220:
    #data loc_8c034e8c

;=============================================

LAB_ce32224:
    mov 0x00,r3

LAB_ce32226:
    mov.w @(DAT_ce32342,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32350,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32344,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3226a
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce3235c,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce32344,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32346,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32354,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32358,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce3226a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32272:
    mov.w @(DAT_ce32348,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3234a,pc),r0
    mov.l @(PTR_ce32350,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32344,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce322b4
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32344,pc),r0
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    mov.l @(PTR_ce32360,pc),r3
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32364,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce322b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce322ba:
    mov.w @(DAT_ce32348,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3234a,pc),r0
    mov.l @(PTR_ce32350,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32344,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce322f6
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32344,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3234c,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3234e,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce322f6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce322fc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32350,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32316
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32368,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32316:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3231e:
    mov r4,r3
    mov.l @(PTR_ce3236c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32330:
    mov r4,r3
    mov.l @(PTR_ce32370,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32342:
    #data 0x03f1
DAT_ce32344:
    #data 0x0141
DAT_ce32346:
    #data 0x03f0
DAT_ce32348:
    #data 0x03f8
DAT_ce3234a:
    #data 0x0328
DAT_ce3234c:
    #data 0x03f9
DAT_ce3234e:
    #data 0x0327
    #align4

PTR_ce32350:
    #data loc_8c034dee
DAT_ce32354:
    #data 0x41855555
DAT_ce32358:
    #data 0x43430000
PTR_ce3235c:
    #data loc_8c050834
PTR_ce32360:
    #data loc_8c0834a4
PTR_ce32364:
    #data loc_8c0d38e4
PTR_ce32368:
    #data loc_8c051648
PTR_ce3236c:
    #data PTR_ce33534
PTR_ce32370:
    #data PTR_ce3353c

;=============================================

LAB_ce32374:
    mov.w @(DAT_ce32434,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32390
    mov.w @(DAT_ce32438,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32436,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32390:
    mov.b @(0x7,r14),r0
    mov 0x3E,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3243a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32444,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32448,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3243c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x2,r14),r0
    tst r0,r0
    bt/s LAB_ce323d6
    mov 0x01,r5
    bra LAB_ce323d8
    mov 0x04,r6

LAB_ce323d6:
    mov 0x03,r6

LAB_ce323d8:
    mov.l @(PTR_ce3244c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32450,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce32454,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3243e,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce32458,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    mov 0x00,r6
    lds.l @r15+,PR
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32412:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32440,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32442,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32434,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3245c
    bra LAB_ce3245e
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32434:
    #data 0x0255
DAT_ce32436:
    #data 0x00ff
DAT_ce32438:
    #data 0x03f0
DAT_ce3243a:
    #data 0x01a1
DAT_ce3243c:
    #data 0x041c
DAT_ce3243e:
    #data 0x01f9
DAT_ce32440:
    #data 0x03f8
DAT_ce32442:
    #data 0x0328
    #align4

PTR_ce32444:
    #data loc_8c2896b0
PTR_ce32448:
    #data loc_8c05218a
PTR_ce3244c:
    #data loc_8c02fec4
DAT_ce32450:
    #data 0x40892492
PTR_ce32454:
    #data loc_8c05115a
PTR_ce32458:
    #data loc_8c034e8c

;=============================================

LAB_ce3245c:
    mov 0x00,r3

LAB_ce3245e:
    mov.w @(DAT_ce32580,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32590,pc),r3
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
    bf LAB_ce324fc
    mov.w @(DAT_ce32582,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32594,pc),r3
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x7,r14),r0
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
    mov r14,r2
    mov.l @(PTR_ce32598,pc),r3
    mov 0x6C,r0
    add 0x34,r2
    fmov fr4,@(r0,r14)
    mov r15,r1
    jsr @r3
    mov 0x0C,r0
    mova @(DAT_ce3259c,pc),r0
    mov.l @(PTR_ce325a4,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce325a0,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce324fc:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32504:
    mov.w @(DAT_ce32584,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32586,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32588,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3252c
    mov 0x00,r13
    mov.l @(PTR_ce325a8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32588,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce3252c:
    mov.l @(PTR_ce32590,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32578
    mov.w @(DAT_ce3258a,pc),r0
    mov 0x09,r6
    fldi0 fr4
    mov 0x01,r5
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov r14,r4
    mov.w @(DAT_ce3258c,pc),r0
    mov.l @(PTR_ce32594,pc),r3
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
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
    mova @(DAT_ce325ac,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32578:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32580:
    #data 0x03f1
DAT_ce32582:
    #data 0x03f0
DAT_ce32584:
    #data 0x03f8
DAT_ce32586:
    #data 0x0328
DAT_ce32588:
    #data 0x0141
DAT_ce3258a:
    #data 0x03f9
DAT_ce3258c:
    #data 0x0327
    #align4

PTR_ce32590:
    #data loc_8c034dee
PTR_ce32594:
    #data loc_8c034e8c
PTR_ce32598:
    #data loc_8c1294c8
DAT_ce3259c:
    #data 0xc2555555
DAT_ce325a0:
    #data 0x434db6db
PTR_ce325a4:
    #data loc_8c050834
PTR_ce325a8:
    #data loc_8c082b78
DAT_ce325ac:
    #data 0xbf4db6db

;=============================================

LAB_ce325b0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32710,pc),r3
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
    mov.w @(DAT_ce32700,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32620
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r14,r4
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r5
    mov.w @(DAT_ce32702,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32700,pc),r0
    mov.l @(PTR_ce32714,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32620:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32626:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32710,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32652
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32718,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32652:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32658:
    mov r4,r3
    mov.l @(PTR_ce3271c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3266a:
    mov.w @(DAT_ce32704,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32686
    mov.w @(DAT_ce32708,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32706,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32686:
    mov.b @(0x7,r14),r0
    mov 0x3E,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3270a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32720,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32724,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x2,r14),r0
    tst r0,r0
    bt/s LAB_ce326c4
    mov 0x01,r5
    bra LAB_ce326c6
    mov 0x04,r6

LAB_ce326c4:
    mov 0x03,r6

LAB_ce326c6:
    mov.l @(PTR_ce32728,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32714,pc),r3
    mov 0x10,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov 0x00,r6
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce326de:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3270c,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3270e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32704,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3272c
    bra LAB_ce3272e
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32700:
    #data 0x041c
DAT_ce32702:
    #data 0x01f9
DAT_ce32704:
    #data 0x0255
DAT_ce32706:
    #data 0x00ff
DAT_ce32708:
    #data 0x03f0
DAT_ce3270a:
    #data 0x01a1
DAT_ce3270c:
    #data 0x03f8
DAT_ce3270e:
    #data 0x0328
    #align4

PTR_ce32710:
    #data loc_8c034dee
PTR_ce32714:
    #data loc_8c034e8c
PTR_ce32718:
    #data loc_8c051648
PTR_ce3271c:
    #data PTR_ce33550
PTR_ce32720:
    #data loc_8c2896b0
PTR_ce32724:
    #data loc_8c05218a
PTR_ce32728:
    #data loc_8c02fec4

;=============================================

LAB_ce3272c:
    mov 0x00,r3

LAB_ce3272e:
    mov.w @(DAT_ce32802,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32808,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32794
    mov.w @(DAT_ce32804,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce3280c,pc),r3
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x7,r14),r0
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
    mov r14,r2
    mov.l @(PTR_ce32810,pc),r3
    mov 0x6C,r0
    add 0x34,r2
    fmov fr4,@(r0,r14)
    mov r15,r1
    jsr @r3
    mov 0x0C,r0
    mova @(DAT_ce32814,pc),r0
    mov.l @(PTR_ce3281c,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32818,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32794:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3279c:
    mov r4,r3
    mov.l @(PTR_ce32820,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce327ae:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32824,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32828,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32806,pc),r0
    mov 0x49,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3282c,pc),r3
    mov 0x15,r5
    mov.l r4,@(r0,r14)
    mov 0x09,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3280c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32830,pc),r3
    mov 0x02,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32802:
    #data 0x03f1
DAT_ce32804:
    #data 0x03f0
DAT_ce32806:
    #data 0x01a1
    #align4

PTR_ce32808:
    #data loc_8c034dee
PTR_ce3280c:
    #data loc_8c034e8c
PTR_ce32810:
    #data loc_8c1294c8
DAT_ce32814:
    #data 0xc2555555
DAT_ce32818:
    #data 0x434db6db
PTR_ce3281c:
    #data loc_8c050834
PTR_ce32820:
    #data PTR_ce33564
PTR_ce32824:
    #data FUN_ce313f0
PTR_ce32828:
    #data loc_8c05115a
PTR_ce3282c:
    #data loc_8c2896b0
PTR_ce32830:
    #data loc_8c0d2ccc

;=============================================

LAB_ce32834:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32950,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32856
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce32954,pc),r3
    mov 0x0B,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce32856:
    mov.w @(DAT_ce3294a,pc),r0
    mov.b @(r0,r14),r2
    cmp/pl r2
    bf LAB_ce3287a
    mov.l @(PTR_ce32958,pc),r3
    mov 0x00,r2
    mov r2,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3294c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3287a
    mov.l @(PTR_ce32958,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4

LAB_ce3287a:
    mov.w @(DAT_ce3294a,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce328a2
    mov 0x00,r2
    mov.l @(PTR_ce32964,pc),r3
    mov.b r2,@(r0,r14)
    mova @(DAT_ce3295c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32960,pc),r0
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

LAB_ce328a2:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce328aa:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32950,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce328c4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32968,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce328c4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce328cc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce328ec
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32954,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce328ec:
    mov.l @(PTR_ce32950,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3291c
    mov.l @(PTR_ce3296c,pc),r3
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
    mov.l @(PTR_ce32968,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3291c:
    mov.w @(DAT_ce3294a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32932
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce32970,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32932:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32938:
    mov r4,r3
    mov.l @(PTR_ce32974,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3294a:
    #data 0x0141
DAT_ce3294c:
    #data 0x019e
    #align4

PTR_ce32950:
    #data loc_8c034dee
PTR_ce32954:
    #data loc_8c034e8c
PTR_ce32958:
    #data loc_8c0d2ccc
DAT_ce3295c:
    #data 0xc2aa0000
DAT_ce32960:
    #data 0x4320b6db
PTR_ce32964:
    #data loc_8c050ea4
PTR_ce32968:
    #data loc_8c051648
PTR_ce3296c:
    #data loc_8c035162
PTR_ce32970:
    #data loc_8c0d3b98
PTR_ce32974:
    #data PTR_ce33570

;=============================================

LAB_ce32978:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce32ad4,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32ac8,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32ad8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32aca,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce329a8
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce329a8:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32adc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x48,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32ae0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce32acc,pc),r0
    mov r4,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32ae4,pc),r3
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
    mov.l @(PTR_ce32ae8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce329f2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32aec,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce32af0,pc),r3
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
    bt LAB_ce32a5a
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce32ae8,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32af4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32a5a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a60:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32aec,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a82
    mov.l @(PTR_ce32ad4,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32af8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32a82:
    mov.w @(DAT_ce32ace,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32a8e
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce32a8e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a94:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32ad0,pc),r1
    mov.l @(PTR_ce32afc,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce32aac:
    mov.w @(DAT_ce32ad2,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce32b00,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce32aba:
    mov.w @(DAT_ce32ad2,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce32b04,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ac8:
    #data 0x01f9
DAT_ce32aca:
    #data 0x01d2
DAT_ce32acc:
    #data 0x01a1
DAT_ce32ace:
    #data 0x0141
DAT_ce32ad0:
    #data 0x01f7
DAT_ce32ad2:
    #data 0x01c8
    #align4

PTR_ce32ad4:
    #data loc_8c035162
DAT_ce32ad8:
    #data 0x41f00000
DAT_ce32adc:
    #data 0x40892492
DAT_ce32ae0:
    #data 0xbf4db6db
PTR_ce32ae4:
    #data loc_8c2896b0
PTR_ce32ae8:
    #data loc_8c034e8c
PTR_ce32aec:
    #data loc_8c034dee
PTR_ce32af0:
    #data loc_8c052ce2
PTR_ce32af4:
    #data loc_8c0511b4
PTR_ce32af8:
    #data loc_8c051854
PTR_ce32afc:
    #data PTR_ce3357c
PTR_ce32b00:
    #data loc_8c04cc1c
PTR_ce32b04:
    #data loc_8c04ce54

;=============================================

LAB_ce32b08:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32bf0,pc),r1
    mov.l @(PTR_ce32bfc,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce32b20:
    mov.w @(DAT_ce32bf2,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32bf4,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32b6c
    mov.w @(DAT_ce32bf6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32b6c
    mov.w @(DAT_ce32bf8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32b6c
    mov.l @(DAT_ce32c00,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32b6c
    mov r0,r4
    mov.w @(DAT_ce32bfa,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b6c:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b74:
    rts
    mov 0x00,r0

LAB_ce32b78:
    mov.w @(DAT_ce32bf2,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32bf4,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32bd0
    mov.w @(DAT_ce32bf6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32bd0
    mov.w @(DAT_ce32bf8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32bd0
    mova @(DAT_ce32c04,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32bd0
    mov.l @(DAT_ce32c00,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32bd0
    mov r0,r4
    mov.w @(DAT_ce32bfa,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32bd0:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32bd8:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32bfa,pc),r1
    mov.l @(PTR_ce32c08,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32bf0:
    #data 0x01f9
DAT_ce32bf2:
    #data 0x01fa
DAT_ce32bf4:
    #data 0x0c00
DAT_ce32bf6:
    #data 0x01fe
DAT_ce32bf8:
    #data 0x01a3
DAT_ce32bfa:
    #data 0x01f7
    #align4

PTR_ce32bfc:
    #data PTR_ce33588
DAT_ce32c00:
    #data 0x8c045790
DAT_ce32c04:
    #data 0x43092492
PTR_ce32c08:
    #data PTR_ce33598

;=============================================

LAB_ce32c0c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce32c4a
    mov.w @(DAT_ce32d4e,pc),r0
    mov.w @(DAT_ce32d50,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce32d4e,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce32d52,pc),r0
    mov.w @(DAT_ce32d50,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce32d4e,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce32c4a:
    mov.l @(PTR_ce32d58,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32d54,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce32d64,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mova @(DAT_ce32d5c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32d60,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32d68,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32d6c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c8c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce32cca
    mov.w @(DAT_ce32d4e,pc),r0
    mov.w @(DAT_ce32d50,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce32d4e,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce32d52,pc),r0
    mov.w @(DAT_ce32d50,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce32d4e,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce32cca:
    mov.l @(PTR_ce32d58,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32d54,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce32d64,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mova @(DAT_ce32d70,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32d74,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32d68,pc),r2
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32d6c,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32d0c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32d78,pc),r3
    mov 0x06,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.l @(PTR_ce32d58,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32d54,pc),r0
    mov 0x0A,r3
    fldi0 fr4
    mov r15,r5
    mov.b r3,@(r0,r14)
    mov 0x04,r0
    mov.l @(PTR_ce32d64,pc),r3
    fmov.s fr4,@r15
    fmov fr4,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32d68,pc),r2
    mov 0x0F,r5
    mov 0x02,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d4e:
    #data 0x01d2
DAT_ce32d50:
    #data 0x0130
DAT_ce32d52:
    #data 0x01c8
DAT_ce32d54:
    #data 0x01a0
    #align4

PTR_ce32d58:
    #data loc_8c056f2a
DAT_ce32d5c:
    #data 0xc276aaaa
DAT_ce32d60:
    #data 0x43092492
PTR_ce32d64:
    #data loc_8c103660
PTR_ce32d68:
    #data loc_8c034e8c
PTR_ce32d6c:
    #data loc_8c0d3424
DAT_ce32d70:
    #data 0xc2700000
DAT_ce32d74:
    #data 0x433c9249
PTR_ce32d78:
    #data loc_8c02fec4

;=============================================

LAB_ce32d7c:
    mov.w @(DAT_ce32e9a,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32ea0,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32d9a:
    mov r4,r3
    mov.l @(PTR_ce32ea4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32dac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32ea8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32e9c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32dca
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32e9c,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce32dca:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32dd0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32ea8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32e9c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32e16
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r15,r5
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32e9c,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32eac,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32eb0,pc),r0
    mov.l @(PTR_ce32eb4,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32eb8,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4

LAB_ce32e16:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e1e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32ea8,pc),r3
    mov.w @(DAT_ce32e9e,pc),r0
    jsr @r3
    mov.l @(r0,r14),r13
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32e40
    lds.l @r15+,PR
    mov.l @(PTR_ce32ebc,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e40:
    mov.w @(DAT_ce32e9c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32e5c
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    add 0x73,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov 0x01,r3
    mov.b r3,@(r0,r13)
    add 0xAB,r0
    mov 0x20,r2
    mov.b r2,@(r0,r13)

LAB_ce32e5c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32e64:
    mov r4,r3
    mov.l @(PTR_ce32ec0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32e76:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32ea8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32e9c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32e94
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32e9c,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce32e94:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e9a:
    #data 0x01ea
DAT_ce32e9c:
    #data 0x0141
DAT_ce32e9e:
    #data 0x01c8
    #align4

PTR_ce32ea0:
    #data PTR_ce335a4
PTR_ce32ea4:
    #data PTR_ce335b0
PTR_ce32ea8:
    #data loc_8c034dee
DAT_ce32eac:
    #data 0xc2e2aaaa
DAT_ce32eb0:
    #data 0x431a4924
PTR_ce32eb4:
    #data loc_8c0fdab6
PTR_ce32eb8:
    #data loc_8c04223a
PTR_ce32ebc:
    #data loc_8c051648
PTR_ce32ec0:
    #data PTR_ce335bc

;=============================================

LAB_ce32ec4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32ff0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32fe8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32f0a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r15,r5
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32fe8,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32ff4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32ff8,pc),r0
    mov.l @(PTR_ce32ffc,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33000,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4

LAB_ce32f0a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f12:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32ff0,pc),r3
    mov.w @(DAT_ce32fea,pc),r0
    jsr @r3
    mov.l @(r0,r14),r13
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32f46
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33004,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f46:
    mov.w @(DAT_ce32fe8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32f62
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    add 0x73,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov 0x01,r3
    mov.b r3,@(r0,r13)
    add 0xAB,r0
    mov 0x21,r2
    mov.b r2,@(r0,r13)

LAB_ce32f62:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32f6a:
    mov r4,r3
    mov.l @(PTR_ce33008,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32f7c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32ff0,pc),r3
    mov r4,r14
    mov.w @(DAT_ce32fea,pc),r0
    jsr @r3
    mov.l @(r0,r14),r13
    mov.w @(DAT_ce32fe8,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt/s LAB_ce33020
    fldi0 fr15
    mov.b @(0x6,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce3300c,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32fec,pc),r0
    mov 0x01,r3
    mov 0x24,r2
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0xAB,r0
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32fca
    mova @(DAT_ce33010,pc),r0
    bra LAB_ce32fce
    fmov.s @r0,fr3

LAB_ce32fca:
    mova @(DAT_ce33014,pc),r0
    fmov.s @r0,fr3

LAB_ce32fce:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce33018,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3301c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    bra LAB_ce330ae
    fmov fr3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32fe8:
    #data 0x0141
DAT_ce32fea:
    #data 0x01c8
DAT_ce32fec:
    #data 0x01b4
    #align4

PTR_ce32ff0:
    #data loc_8c034dee
DAT_ce32ff4:
    #data 0xc2e95555
DAT_ce32ff8:
    #data 0x434b9249
PTR_ce32ffc:
    #data loc_8c0fdab6
PTR_ce33000:
    #data loc_8c04223a
PTR_ce33004:
    #data loc_8c05176e
PTR_ce33008:
    #data PTR_ce335c8
PTR_ce3300c:
    #data loc_8c02fec4
DAT_ce33010:
    #data 0xc0baaaaa
DAT_ce33014:
    #data 0x40baaaaa
DAT_ce33018:
    #data 0x414db6db
DAT_ce3301c:
    #data 0xbf4db6db

;=============================================

LAB_ce33020:
    mov.b @(r0,r14),r0
    mov 0x22,r5
    mov.l @(DAT_ce33140,pc),r12
    cmp/eq 0x01,r0
    bt/s LAB_ce33038
    mov 0x00,r4
    cmp/eq 0x02,r0
    bt LAB_ce33050
    cmp/eq 0x03,r0
    bt LAB_ce3307c
    bra LAB_ce330ae
    nop

LAB_ce33038:
    mov.w @(DAT_ce33138,pc),r0
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov.b r5,@(r0,r13)
    jsr @r12
    mov r14,r4
    mova @(DAT_ce33144,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33148,pc),r0
    fmov.s fr3,@r15
    bra LAB_ce33066
    fmov.s @r0,fr3

LAB_ce33050:
    mov.w @(DAT_ce33138,pc),r0
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov.b r5,@(r0,r13)
    jsr @r12
    mov r14,r4
    mova @(DAT_ce3314c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33150,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3

LAB_ce33066:
    mov 0x04,r0
    mov.l @(PTR_ce33154,pc),r3
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    mov r15,r5
    fmov fr15,@(r0,r15)
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    bra LAB_ce330a8
    mov 0x04,r5

LAB_ce3307c:
    mov.w @(DAT_ce33138,pc),r0
    mov 0x23,r3
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov.b r3,@(r0,r13)
    jsr @r12
    mov r14,r4
    mova @(DAT_ce33158,pc),r0
    mov.l @(PTR_ce33154,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce3315c,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr15,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov 0x06,r5

LAB_ce330a8:
    mov.l @(PTR_ce33160,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce330ae:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce330bc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33164,pc),r3
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
    bt/s LAB_ce33132
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce3313a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33132
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r5
    mov.w @(DAT_ce3313a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3313c,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce33168,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33132:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33138:
    #data 0x0141
DAT_ce3313a:
    #data 0x041c
DAT_ce3313c:
    #data 0x01f9
    #align4

DAT_ce33140:
    #data 0x8c05933c
DAT_ce33144:
    #data 0xc212aaaa
DAT_ce33148:
    #data 0x42dedb6d
DAT_ce3314c:
    #data 0xc2340000
DAT_ce33150:
    #data 0x42c0db6d
PTR_ce33154:
    #data loc_8c0fdab6
DAT_ce33158:
    #data 0xc2700000
DAT_ce3315c:
    #data 0x42b40000
PTR_ce33160:
    #data loc_8c04223a
PTR_ce33164:
    #data loc_8c034dee
PTR_ce33168:
    #data loc_8c034e8c

;=============================================

LAB_ce3316c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33244,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33198
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33248,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33198:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3319e:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3323c,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce331bc
    mov 0x05,r5
    cmp/eq 0x01,r0
    bt LAB_ce331bc
    cmp/eq 0x02,r0
    bt LAB_ce331c2
    bra LAB_ce331c8
    nop

LAB_ce331bc:
    mov.w @(DAT_ce3323e,pc),r0
    bra LAB_ce331c8
    mov.b r5,@(r0,r4)

LAB_ce331c2:
    mov.w @(DAT_ce3323e,pc),r0
    mov 0x04,r2
    mov.b r2,@(r0,r4)

LAB_ce331c8:
    mov.l @(PTR_ce3324c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce331ce:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3323c,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce331ec
    mov 0x05,r5
    cmp/eq 0x01,r0
    bt LAB_ce331ec
    cmp/eq 0x02,r0
    bt LAB_ce331f2
    bra LAB_ce331f8
    nop

LAB_ce331ec:
    mov.w @(DAT_ce3323e,pc),r0
    bra LAB_ce331f8
    mov.b r5,@(r0,r4)

LAB_ce331f2:
    mov.w @(DAT_ce3323e,pc),r0
    mov 0x04,r2
    mov.b r2,@(r0,r4)

LAB_ce331f8:
    mov.l @(PTR_ce3324c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce331fe:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3323c,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33220
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce33226
    cmp/eq 0x02,r0
    bt LAB_ce3322c
    bra LAB_ce33236
    nop

LAB_ce33220:
    mov.w @(DAT_ce3323e,pc),r0
    bra LAB_ce33232
    mov.b r5,@(r0,r4)

LAB_ce33226:
    mov.w @(DAT_ce3323e,pc),r0
    bra LAB_ce33232
    mov.b r6,@(r0,r4)

LAB_ce3322c:
    mov.w @(DAT_ce3323e,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce33232:
    mov.w @(DAT_ce33240,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce33236:
    mov.l @(PTR_ce3324c,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3323c:
    #data 0x04c9
DAT_ce3323e:
    #data 0x01e9
DAT_ce33240:
    #data 0x01a3
    #align4

PTR_ce33244:
    #data loc_8c034dee
PTR_ce33248:
    #data loc_8c051648
PTR_ce3324c:
    #data loc_8c0530d8

;=============================================

LAB_ce33250:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3328e,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33272
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce33278
    cmp/eq 0x02,r0
    bt LAB_ce3327e
    bra LAB_ce33288
    nop

LAB_ce33272:
    mov.w @(DAT_ce33290,pc),r0
    bra LAB_ce33284
    mov.b r5,@(r0,r4)

LAB_ce33278:
    mov.w @(DAT_ce33290,pc),r0
    bra LAB_ce33284
    mov.b r6,@(r0,r4)

LAB_ce3327e:
    mov.w @(DAT_ce33290,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce33284:
    mov.w @(DAT_ce33292,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce33288:
    mov.l @(PTR_ce33294,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3328e:
    #data 0x04c9
DAT_ce33290:
    #data 0x01e9
DAT_ce33292:
    #data 0x01a3
    #align4

PTR_ce33294:
    #data loc_8c0530d8
DAT_ce33298:
    #data 0x4924
    #data 0x419a
    #data 0xb6db
    #data 0xbf4d
    #data 0x4924
    #data 0x419a
    #data 0xb6db
    #data 0xbf4d
DAT_ce332a8:
    #data 0x0201
    #data 0x0200
DAT_ce332ac:
    #data 0x02ff
    #data 0x0201
DAT_ce332b0:
    #data 0xffff
    #data 0xffff
DAT_ce332b4:
    #data 0x0201
    #data 0x0201
DAT_ce332b8:
    #data 0x02ff
    #data 0x02ff
DAT_ce332bc:
    #data 0xffff
    #data 0xffff
DAT_ce332c0:
    #data 0x0201
    #data 0x0201
DAT_ce332c4:
    #data 0x02ff
    #data 0x02ff
DAT_ce332c8:
    #data 0xffff
    #data 0xffff
DAT_ce332cc:
    #data 0x0201
    #data 0x0201
DAT_ce332d0:
    #data 0x02ff
    #data 0x02ff
DAT_ce332d4:
    #data 0xffff
    #data 0xffff
DAT_ce332d8:
    #data 0x0201
    #data 0x0200
DAT_ce332dc:
    #data 0x02ff
    #data 0x0201
DAT_ce332e0:
    #data 0xffff
    #data 0x02ff
DAT_ce332e4:
    #data 0x0201
    #data 0x0201
DAT_ce332e8:
    #data 0x02ff
    #data 0x02ff
DAT_ce332ec:
    #data 0xffff
    #data 0xffff
DAT_ce332f0:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33300:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce33310:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce33320:
    #data 0x0005
    #data 0x0000
    #data 0x0003
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce33334:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33344:
    #data 0x0003
    #data 0x8100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
    #align4

PTR_ce33354:
    #data LAB_ce304bc
PTR_ce33358:
    #data LAB_ce3001c
PTR_ce3335c:
    #data LAB_ce304c0
PTR_ce33360:
    #data LAB_ce30ac6
PTR_ce33364:
    #data LAB_ce30e64
PTR_ce33368:
    #data LAB_ce30fda
PTR_ce3336c:
    #data LAB_ce31130
PTR_ce33370:
    #data LAB_ce31252
PTR_ce33374:
    #data LAB_ce313b8
PTR_ce33378:
    #data LAB_ce32b08
PTR_ce3337c:
    #data LAB_ce32bd8
PTR_ce33380:
    #data LAB_ce32d7c
PTR_ce33384:
    #data LAB_ce32a94
PTR_ce33388:
    #data LAB_ce30420
PTR_ce3338c:
    #data LAB_ce32938
PTR_ce33390:
    #data LAB_ce30d9c
PTR_ce33394:
    #data LAB_ce3319e
PTR_ce33398:
    #data LAB_ce331ce
PTR_ce3339c:
    #data LAB_ce331fe
PTR_ce333a0:
    #data LAB_ce33250
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce333c4:
    #data LAB_ce304d4
PTR_ce333c8:
    #data LAB_ce3084c
PTR_ce333cc:
    #data LAB_ce30874
PTR_ce333d0:
    #data LAB_ce304d4
PTR_ce333d4:
    #data LAB_ce30ae8
PTR_ce333d8:
    #data LAB_ce30cee
PTR_ce333dc:
    #data LAB_ce30cd8
PTR_ce333e0:
    #data LAB_ce30ada
PTR_ce333e4:
    #data LAB_ce30be4
PTR_ce333e8:
    #data FUN_ce30c32
PTR_ce333ec:
    #data LAB_ce30e76
PTR_ce333f0:
    #data LAB_ce30f00
PTR_ce333f4:
    #data LAB_ce30f80
PTR_ce333f8:
    #data LAB_ce31008
PTR_ce333fc:
    #data LAB_ce31078
PTR_ce33400:
    #data FUN_ce3110e
PTR_ce33404:
    #data LAB_ce3116c
PTR_ce33408:
    #data LAB_ce31194
PTR_ce3340c:
    #data LAB_ce311de
PTR_ce33410:
    #data LAB_ce31288
PTR_ce33414:
    #data LAB_ce31384
PTR_ce33418:
    #data LAB_ce31288
PTR_ce3341c:
    #data LAB_ce31384
PTR_ce33420:
    #data LAB_ce3139e
PTR_ce33424:
    #data LAB_ce312cc
PTR_ce33428:
    #data LAB_ce31350
PTR_ce3342c:
    #data LAB_ce3137e
PTR_ce33430:
    #data LAB_ce3147a
PTR_ce33434:
    #data LAB_ce315c8
PTR_ce33438:
    #data LAB_ce316e6
PTR_ce3343c:
    #data LAB_ce31c9a
PTR_ce33440:
    #data LAB_ce32166
PTR_ce33444:
    #data LAB_ce3231e
PTR_ce33448:
    #data LAB_ce3279c
PTR_ce3344c:
    #data LAB_ce328cc
PTR_ce33450:
    #data LAB_ce3148c
PTR_ce33454:
    #data LAB_ce31572
PTR_ce33458:
    #data LAB_ce315da
PTR_ce3345c:
    #data LAB_ce31626
PTR_ce33460:
    #data LAB_ce31668
PTR_ce33464:
    #data LAB_ce316f8
PTR_ce33468:
    #data LAB_ce317fc
PTR_ce3346c:
    #data LAB_ce31848
PTR_ce33470:
    #data LAB_ce3190a
PTR_ce33474:
    #data LAB_ce31a24
PTR_ce33478:
    #data LAB_ce31bdc
PTR_ce3347c:
    #data LAB_ce31c38
DAT_ce33480:
    #data 0x41a00000
DAT_ce33484:
    #data 0xc13c9249
    #data 0x41f00000
    #data 0xc12b6db6
DAT_ce33490:
    #data 0xc0555555
DAT_ce33494:
    #data 0x41092492
DAT_ce33498:
    #data 0xbf4db6db
    #data 0xc0d55555
    #data 0x414db6db
    #data 0xbf4db6db
PTR_ce334a8:
    #data LAB_ce31cac
PTR_ce334ac:
    #data LAB_ce32034
PTR_ce334b0:
    #data LAB_ce31cbe
PTR_ce334b4:
    #data LAB_ce31d3c
PTR_ce334b8:
    #data LAB_ce31de6
PTR_ce334bc:
    #data LAB_ce31e5c
PTR_ce334c0:
    #data LAB_ce31f8c
PTR_ce334c4:
    #data LAB_ce32002
DAT_ce334c8:
    #data 0x40d55555
DAT_ce334cc:
    #data 0x00000000
DAT_ce334d0:
    #data 0x419a4924
DAT_ce334d4:
    #data 0xbfa2db6d
    #data 0x40a00000
    #data 0x3ed55555
    #data 0x419a4924
    #data 0xbfa2db6d
PTR_ce334e8:
    #data LAB_ce32046
PTR_ce334ec:
    #data LAB_ce32094
PTR_ce334f0:
    #data LAB_ce31de6
PTR_ce334f4:
    #data LAB_ce31e5c
PTR_ce334f8:
    #data LAB_ce31f8c
PTR_ce334fc:
    #data LAB_ce32002
DAT_ce33500:
    #data 0x40d55555
DAT_ce33504:
    #data 0x00000000
DAT_ce33508:
    #data 0x419a4924
DAT_ce3350c:
    #data 0xbfa2db6d
    #data 0x41200000
    #data 0x00000000
    #data 0x419a4924
    #data 0xbfa2db6d
PTR_ce33520:
    #data LAB_ce32178
PTR_ce33524:
    #data LAB_ce321d8
PTR_ce33528:
    #data LAB_ce32272
PTR_ce3352c:
    #data LAB_ce322ba
PTR_ce33530:
    #data FUN_ce322fc
PTR_ce33534:
    #data LAB_ce32330
PTR_ce33538:
    #data LAB_ce32658
PTR_ce3353c:
    #data LAB_ce32374
PTR_ce33540:
    #data LAB_ce32412
PTR_ce33544:
    #data LAB_ce32504
PTR_ce33548:
    #data LAB_ce325b0
PTR_ce3354c:
    #data LAB_ce32626
PTR_ce33550:
    #data LAB_ce3266a
PTR_ce33554:
    #data LAB_ce326de
PTR_ce33558:
    #data LAB_ce32504
PTR_ce3355c:
    #data LAB_ce325b0
PTR_ce33560:
    #data LAB_ce32626
PTR_ce33564:
    #data LAB_ce327ae
PTR_ce33568:
    #data LAB_ce32834
PTR_ce3356c:
    #data FUN_ce328aa
PTR_ce33570:
    #data LAB_ce32978
PTR_ce33574:
    #data LAB_ce329f2
PTR_ce33578:
    #data LAB_ce32a60
PTR_ce3357c:
    #data LAB_ce32aac
PTR_ce33580:
    #data LAB_ce32aac
PTR_ce33584:
    #data LAB_ce32aba
PTR_ce33588:
    #data LAB_ce32b20
PTR_ce3358c:
    #data LAB_ce32b74
PTR_ce33590:
    #data LAB_ce32b78
PTR_ce33594:
    #data LAB_ce32b20
PTR_ce33598:
    #data LAB_ce32c0c
PTR_ce3359c:
    #data LAB_ce32c8c
PTR_ce335a0:
    #data LAB_ce32d0c
PTR_ce335a4:
    #data LAB_ce32d9a
PTR_ce335a8:
    #data LAB_ce32e64
PTR_ce335ac:
    #data LAB_ce32f6a
PTR_ce335b0:
    #data LAB_ce32dac
PTR_ce335b4:
    #data LAB_ce32dd0
PTR_ce335b8:
    #data LAB_ce32e1e
PTR_ce335bc:
    #data LAB_ce32e76
PTR_ce335c0:
    #data LAB_ce32ec4
PTR_ce335c4:
    #data LAB_ce32f12
PTR_ce335c8:
    #data LAB_ce32f7c
PTR_ce335cc:
    #data LAB_ce330bc
PTR_ce335d0:
    #data LAB_ce3316c
