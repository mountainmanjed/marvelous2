;╔══════════════════════════════════════════╗
;║ S_PL1D : Roll Program                    ║
;╚══════════════════════════════════════════╝
   
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c03362c 0x8C03362C
#symbol loc_8c033718 0x8C033718
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c0353ee 0x8C0353EE
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
#symbol loc_8c050834 0x8C050834
#symbol loc_8c050ea4 0x8C050EA4
#symbol loc_8c05115a 0x8C05115A
#symbol loc_8c0511b4 0x8C0511B4
#symbol loc_8c0511e2 0x8C0511E2
#symbol loc_8c05120e 0x8C05120E
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
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c08b818 0x8C08B818
#symbol loc_8c08bf48 0x8C08BF48
#symbol loc_8c08c850 0x8C08C850
#symbol loc_8c08ce7c 0x8C08CE7C
#symbol loc_8c08e2f8 0x8C08E2F8
#symbol loc_8c08e8e0 0x8C08E8E0
#symbol loc_8c08f128 0x8C08F128
#symbol loc_8c08f524 0x8C08F524
#symbol loc_8c08f954 0x8C08F954
#symbol loc_8c0d8840 0x8C0D8840
#symbol loc_8c0da85c 0x8C0DA85C
#symbol loc_8c0db810 0x8C0DB810
#symbol loc_8c0db83e 0x8C0DB83E
#symbol loc_8c0f047c 0x8C0F047C
#symbol loc_8c103660 0x8C103660
#symbol loc_8c129728 0x8C129728
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c289636 0x8C289636
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300d2,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300d4,pc),r7
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
    mov.l @(PTR_ce300d8,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    mov.l @(PTR_ce300dc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce301fc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30264
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce302aa
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce300f0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30158
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30314
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce303b8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce3044a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce304b4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30542
    mov r14,r4
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30580
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    mov.l @(PTR_ce300e8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300ec,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300cc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300d2:
    #data 0x0428
    #align4

PTR_ce300d4:
    #data PTR_ce358d8
PTR_ce300d8:
    #data loc_8c054508
PTR_ce300dc:
    #data loc_8c054b34
PTR_ce300e0:
    #data loc_8c05496c
PTR_ce300e4:
    #data loc_8c054d04
PTR_ce300e8:
    #data loc_8c053e00
PTR_ce300ec:
    #data loc_8c0542e0

;=============================================

FUN_ce300f0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301e8,pc),r5
    mov.w @(DAT_ce301da,pc),r6
    mov.l @(PTR_ce301ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30120
    mov.w @(DAT_ce301dc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3012e
    mov.w @(DAT_ce301de,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3012e
    mov.w @(DAT_ce301e0,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce30128

LAB_ce30120:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30128:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3012e:
    mov.w @(DAT_ce301da,pc),r5
    mov.l @(PTR_ce301f0,pc),r2
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
    mov.w @(DAT_ce301e2,pc),r0
    mov.l @(PTR_ce301f4,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30158:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301f8,pc),r5
    mov.w @(DAT_ce301e4,pc),r6
    mov.l @(PTR_ce301ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301a4
    mov.w @(DAT_ce301dc,pc),r0
    mov.w @(DAT_ce301e6,pc),r4
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce30188
    add r14,r4
    mov 0x1D,r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce301b2
    bra LAB_ce301a4
    nop

LAB_ce30188:
    mov 0x1D,r0
    mov.b @(r0,r4),r2
    mov 0x02,r3
    extu.b r2,r2
    cmp/gt r3,r2
    bt LAB_ce301a4
    mov.w @(DAT_ce301de,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce301b2
    mov.w @(DAT_ce301e0,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce301ac

LAB_ce301a4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301ac:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce301b2:
    mov.w @(DAT_ce301e4,pc),r5
    mov.l @(PTR_ce301f0,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301e2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301f4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301da:
    #data 0x0364
DAT_ce301dc:
    #data 0x01f9
DAT_ce301de:
    #data 0x01fc
DAT_ce301e0:
    #data 0x01d4
DAT_ce301e2:
    #data 0x01e9
DAT_ce301e4:
    #data 0x036c
DAT_ce301e6:
    #data 0x02a4
    #align4

PTR_ce301e8:
    #data DAT_ce34f68
PTR_ce301ec:
    #data loc_8c054e58
PTR_ce301f0:
    #data loc_8c055c3a
PTR_ce301f4:
    #data loc_8c0530d8
PTR_ce301f8:
    #data DAT_ce34f78

;=============================================

FUN_ce301fc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30300,pc),r5
    mov.w @(DAT_ce302f0,pc),r6
    mov.l @(PTR_ce30304,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30236
    mov.w @(DAT_ce302f2,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30236
    mov.w @(DAT_ce302f4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30246
    mov.w @(DAT_ce302f6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3023e
    mov.w @(DAT_ce302f8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3023e

LAB_ce30236:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3023e:
    mov.w @(DAT_ce302f6,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30246:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302fa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30308,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30264:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3030c,pc),r5
    mov.w @(DAT_ce302fc,pc),r6
    mov.l @(PTR_ce30304,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30284
    mov.w @(DAT_ce302f2,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3028c

LAB_ce30284:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3028c:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302fa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30308,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302aa:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30310,pc),r5
    mov.w @(DAT_ce302fe,pc),r6
    mov.l @(PTR_ce30304,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302ca
    mov.w @(DAT_ce302f2,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302d2

LAB_ce302ca:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302d2:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302fa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30308,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce302f0:
    #data 0x038c
DAT_ce302f2:
    #data 0x040c
DAT_ce302f4:
    #data 0x01f9
DAT_ce302f6:
    #data 0x01d4
DAT_ce302f8:
    #data 0x01fc
DAT_ce302fa:
    #data 0x01e9
DAT_ce302fc:
    #data 0x0374
DAT_ce302fe:
    #data 0x037c
    #align4

PTR_ce30300:
    #data DAT_ce34f88
PTR_ce30304:
    #data loc_8c054e58
PTR_ce30308:
    #data loc_8c0530d8
PTR_ce3030c:
    #data DAT_ce34f98
PTR_ce30310:
    #data DAT_ce34fa8

;=============================================

FUN_ce30314:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce303e2,pc),r13
    sts.l PR,@-r15
    add r14,r13
    mov.l @(PTR_ce303f0,pc),r5
    mov.b @(0x8,r13),r0
    tst r0,r0
    bf LAB_ce30362
    mov.w @(DAT_ce303e4,pc),r6
    mov.l @(PTR_ce303f4,pc),r2
    add r14,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3038c
    mov.w @(DAT_ce303e6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3038c
    mov.b @(0x5,r13),r0
    tst r0,r0
    bf LAB_ce3038c
    mov.b @(0x6,r13),r0
    tst r0,r0
    bf LAB_ce3038c
    mov.b @(0x7,r13),r0
    tst r0,r0
    bf LAB_ce3038c
    mov.w @(DAT_ce303e4,pc),r5
    mov.l @(PTR_ce303f8,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    bra LAB_ce30398
    nop

LAB_ce30362:
    mov.w @(DAT_ce303e4,pc),r6
    mov.l @(PTR_ce303f4,pc),r2
    add r14,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3038c
    mov.w @(DAT_ce303e6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30398
    mov.w @(DAT_ce303e8,pc),r0
    mov.b @(r0,r14),r2
    add 0x28,r0
    mov.b @(r0,r14),r0
    tst r0,r0
    movt r0
    tst r0,r2
    bt LAB_ce30390

LAB_ce3038c:
    bra LAB_ce303b0
    mov 0x00,r0

LAB_ce30390:
    mov.w @(DAT_ce303e8,pc),r0
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce30398:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce303ea,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce303fc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0

LAB_ce303b0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303b8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce303e2,pc),r13
    mov.l r12,@-r15
    add r14,r13
    sts.l PR,@-r15
    mov.b @(0x3,r13),r0
    tst r0,r0
    bf LAB_ce303de
    mov.w @(DAT_ce303ec,pc),r6
    mov.l @(PTR_ce30400,pc),r5
    mov.l @(PTR_ce303f4,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30404

LAB_ce303de:
    bra LAB_ce30440
    mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce303e2:
    #data 0x02a4
DAT_ce303e4:
    #data 0x0384
DAT_ce303e6:
    #data 0x01f9
DAT_ce303e8:
    #data 0x01d4
DAT_ce303ea:
    #data 0x01e9
DAT_ce303ec:
    #data 0x0394
    #align4

PTR_ce303f0:
    #data DAT_ce34fb8
PTR_ce303f4:
    #data loc_8c054e58
PTR_ce303f8:
    #data loc_8c055c3a
PTR_ce303fc:
    #data loc_8c0530d8
PTR_ce30400:
    #data DAT_ce34fc8

;=============================================

LAB_ce30404:
    mov.w @(DAT_ce3050c,pc),r5
    mov.l @(PTR_ce3051c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r12
    mov r12,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x0C,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3050e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30520,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30510,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30436
    mov 0x1A,r0
    bra LAB_ce3043e
    mov.b r12,@(r0,r13)

LAB_ce30436:
    mov.w @(DAT_ce30512,pc),r0
    mov.b @(r0,r14),r2
    mov 0x1A,r0
    mov.b r2,@(r0,r13)

LAB_ce3043e:
    mov 0x01,r0

LAB_ce30440:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3044a:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce30514,pc),r13
    sts.l PR,@-r15
    add r14,r13
    mov.b @(0x3,r13),r0
    tst r0,r0
    bf LAB_ce3046e
    mov.w @(DAT_ce30516,pc),r6
    mov.l @(PTR_ce30524,pc),r5
    mov.l @(PTR_ce30528,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30472

LAB_ce3046e:
    bra LAB_ce304ac
    mov 0x00,r0

LAB_ce30472:
    mov.w @(DAT_ce30516,pc),r5
    mov.l @(PTR_ce3051c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0C,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3050e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30520,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30510,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce304a2
    mov 0x1A,r0
    mov 0x01,r1
    bra LAB_ce304aa
    mov.b r1,@(r0,r13)

LAB_ce304a2:
    mov.w @(DAT_ce30512,pc),r0
    mov.b @(r0,r14),r2
    mov 0x1A,r0
    mov.b r2,@(r0,r13)

LAB_ce304aa:
    mov 0x01,r0

LAB_ce304ac:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304b4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce30514,pc),r13
    sts.l PR,@-r15
    add r14,r13
    mov.b @(0x3,r13),r0
    tst r0,r0
    bf LAB_ce304d8
    mov.w @(DAT_ce30518,pc),r6
    mov.l @(PTR_ce3052c,pc),r5
    mov.l @(PTR_ce30528,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce304dc

LAB_ce304d8:
    bra LAB_ce3053a
    mov 0x00,r0

LAB_ce304dc:
    mov.w @(DAT_ce30518,pc),r5
    mov.l @(PTR_ce3051c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0C,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3050e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30520,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30510,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30530
    mov 0x1A,r0
    mov 0x02,r1
    bra LAB_ce30538
    mov.b r1,@(r0,r13)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3050c:
    #data 0x0394
DAT_ce3050e:
    #data 0x01e9
DAT_ce30510:
    #data 0x0525
DAT_ce30512:
    #data 0x01fe
DAT_ce30514:
    #data 0x02a4
DAT_ce30516:
    #data 0x039c
DAT_ce30518:
    #data 0x03a4
    #align4

PTR_ce3051c:
    #data loc_8c055c3a
PTR_ce30520:
    #data loc_8c0530d8
PTR_ce30524:
    #data DAT_ce34fd8
PTR_ce30528:
    #data loc_8c054e58
PTR_ce3052c:
    #data DAT_ce34fe8

;=============================================

LAB_ce30530:
    mov.w @(DAT_ce30642,pc),r0
    mov.b @(r0,r14),r2
    mov 0x1A,r0
    mov.b r2,@(r0,r13)

LAB_ce30538:
    mov 0x01,r0

LAB_ce3053a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30542:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30650,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce3055a
    mov.w @(DAT_ce30644,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30562

LAB_ce3055a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30562:
    mov.w @(DAT_ce30646,pc),r0
    mov 0x08,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30654,pc),r3
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

FUN_ce30580:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30658,pc),r3
    jsr @r3
    mov 0x03,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3059a
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3059a:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30646,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30654,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce305b8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce305e4
    mov r4,r14
    tst r0,r0
    bf LAB_ce305d4
    bsr FUN_ce3061a
    mov r14,r4
    tst r0,r0
    bf LAB_ce305d4
    bsr FUN_ce30676
    mov r14,r4
    tst r0,r0
    bt LAB_ce305dc

LAB_ce305d4:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce305dc:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce305e4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3065c,pc),r5
    mov.w @(DAT_ce30648,pc),r6
    mov.l @(PTR_ce30660,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30604
    mov.w @(DAT_ce30644,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3060c

LAB_ce30604:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3060c:
    mov.w @(DAT_ce3064a,pc),r0
    mov 0x07,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3061a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30664,pc),r5
    mov.w @(DAT_ce3064c,pc),r6
    mov.l @(PTR_ce30660,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3063a
    mov.w @(DAT_ce30644,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30668

LAB_ce3063a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30642:
    #data 0x01fe
DAT_ce30644:
    #data 0x040c
DAT_ce30646:
    #data 0x01e9
DAT_ce30648:
    #data 0x038c
DAT_ce3064a:
    #data 0x0258
DAT_ce3064c:
    #data 0x0374
    #align4

PTR_ce30650:
    #data loc_8c054d1c
PTR_ce30654:
    #data loc_8c0530d8
PTR_ce30658:
    #data loc_8c054da0
PTR_ce3065c:
    #data DAT_ce34f88
PTR_ce30660:
    #data loc_8c054e58
PTR_ce30664:
    #data DAT_ce34f98

;=============================================

LAB_ce30668:
    mov.w @(DAT_ce3075e,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30676:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30770,pc),r5
    mov.w @(DAT_ce30760,pc),r6
    mov.l @(PTR_ce30774,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30696
    mov.w @(DAT_ce30762,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3069e

LAB_ce30696:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3069e:
    mov.w @(DAT_ce3075e,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce306ac:
    mov.w @(DAT_ce30766,pc),r0
    mov.w @(DAT_ce30764,pc),r5
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce306c4
    add r4,r5
    mov.w @(0x1e,r5),r0
    tst r0,r0
    bt LAB_ce306c4
    mov.w @(0x1e,r5),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r5)

LAB_ce306c4:
    mov.b @(0xd,r5),r0
    tst r0,r0
    bt LAB_ce306fe
    mov.w @(DAT_ce30766,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce306fa
    mov.l @(PTR_ce30778,pc),r3
    mov r4,r2
    mov 0x34,r0
    mov.l @(PTR_ce3077c,pc),r1
    add r0,r2
    mov.l r2,@-r15
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    and 0x03,r0
    shll r0
    mov.w @(r0,r1),r2
    mova @(DAT_ce30780,pc),r0
    fmov.s @r0,fr0
    lds r2,FPUL
    mov.l @r15+,r2
    float FPUL,fr3
    fmov.s @r2,fr2
    fmac fr0,fr3,fr2
    bra LAB_ce306fe
    fmov.s fr2,@r2

LAB_ce306fa:
    mov 0x00,r0
    mov.b r0,@(0xd,r5)

LAB_ce306fe:
    rts
    nop

LAB_ce30702:
    mov.w @(DAT_ce30768,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30784,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30716:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30788,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3076a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30744
    mov.w @(DAT_ce3076c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3073c
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce309aa
    mov.l @r15+,r14

LAB_ce3073c:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30904
    mov.l @r15+,r14

LAB_ce30744:
    mov.w @(DAT_ce3076c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30756
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30834
    mov.l @r15+,r14

LAB_ce30756:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3078c
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3075e:
    #data 0x0258
DAT_ce30760:
    #data 0x037c
DAT_ce30762:
    #data 0x040c
DAT_ce30764:
    #data 0x02a4
DAT_ce30766:
    #data 0x01a0
DAT_ce30768:
    #data 0x01ff
DAT_ce3076a:
    #data 0x01fe
DAT_ce3076c:
    #data 0x01f9
    #align4

PTR_ce30770:
    #data DAT_ce34fa8
PTR_ce30774:
    #data loc_8c054e58
PTR_ce30778:
    #data loc_8c26823c
PTR_ce3077c:
    #data DAT_ce35948
DAT_ce30780:
    #data 0x3fd55555
PTR_ce30784:
    #data PTR_ce35950
PTR_ce30788:
    #data loc_8c052b4c

;=============================================

LAB_ce3078c:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30890,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3089c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307b2
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307cc
    cmp/eq 0x02,r0
    bt LAB_ce307e6
    bra LAB_ce30800
    nop

LAB_ce307b2:
    mov.w @(DAT_ce30892,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30894,pc),r0
    mov.l @(PTR_ce308a0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30896,pc),r0
    bra LAB_ce30800
    mov.b r13,@(r0,r14)

LAB_ce307cc:
    mov.w @(DAT_ce30892,pc),r0
    mov 0x01,r11
    mov 0x15,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30894,pc),r0
    mov.l @(PTR_ce308a4,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce307fc
    nop

LAB_ce307e6:
    mov.w @(DAT_ce30892,pc),r0
    mov 0x02,r11
    mov 0x16,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30894,pc),r0
    mov.l @(PTR_ce308a8,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce307fc:
    mov.w @(DAT_ce30896,pc),r0
    mov.b r11,@(r0,r14)

LAB_ce30800:
    mov.w @(DAT_ce30898,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce308ac,pc),r3
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
    mov.w @(DAT_ce30892,pc),r0
    mov.l @(PTR_ce308b0,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30834:
    mov.w @(DAT_ce30890,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3089c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30858
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30874
    cmp/eq 0x02,r0
    bt LAB_ce308b4
    bra LAB_ce308d2
    nop

LAB_ce30858:
    mov.w @(DAT_ce30892,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30894,pc),r0
    mov.l @(PTR_ce308a0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30896,pc),r0
    bra LAB_ce308d2
    mov.b r13,@(r0,r14)

LAB_ce30874:
    mov.w @(DAT_ce30892,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30894,pc),r0
    mov.l @(PTR_ce308a4,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce308ce
    mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30890:
    #data 0x01e8
DAT_ce30892:
    #data 0x0158
DAT_ce30894:
    #data 0x03f4
DAT_ce30896:
    #data 0x01a7
DAT_ce30898:
    #data 0x01ac
    #align4

PTR_ce3089c:
    #data loc_8c04223a
PTR_ce308a0:
    #data DAT_ce34f20
PTR_ce308a4:
    #data DAT_ce34f24
PTR_ce308a8:
    #data DAT_ce34f28
PTR_ce308ac:
    #data loc_8c2896b0
PTR_ce308b0:
    #data loc_8c034e8c

;=============================================

LAB_ce308b4:
    mov.w @(DAT_ce309ca,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309cc,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce309d4,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce308ce:
    mov.w @(DAT_ce309ce,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce308d2:
    mov.w @(DAT_ce309d0,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce309d8,pc),r3
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
    mov.w @(DAT_ce309ca,pc),r0
    mov.l @(PTR_ce309dc,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30904:
    mov.w @(DAT_ce309d2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30924
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30942
    cmp/eq 0x02,r0
    bt LAB_ce30964
    bra LAB_ce3097a
    nop

LAB_ce30924:
    mov.w @(DAT_ce309ca,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce309e0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce309cc,pc),r0
    mov.l @(PTR_ce309e4,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce309ce,pc),r0
    bra LAB_ce3097a
    mov.b r13,@(r0,r14)

LAB_ce30942:
    mov.w @(DAT_ce309ca,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce309e0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce309cc,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce309e8,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce309ce,pc),r0
    bra LAB_ce3097a
    mov.b r3,@(r0,r14)

LAB_ce30964:
    mov.w @(DAT_ce309ca,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce309ec,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce309cc,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce309ce,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3097a:
    mov.w @(DAT_ce309d0,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce309d8,pc),r3
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
    mov.w @(DAT_ce309ca,pc),r0
    mov.l @(PTR_ce309dc,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce309aa:
    mov.w @(DAT_ce309d2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce309f0
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a0e
    cmp/eq 0x02,r0
    bt LAB_ce30a30
    bra LAB_ce30a46
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309ca:
    #data 0x0158
DAT_ce309cc:
    #data 0x03f4
DAT_ce309ce:
    #data 0x01a7
DAT_ce309d0:
    #data 0x01ac
DAT_ce309d2:
    #data 0x01e8
    #align4

PTR_ce309d4:
    #data DAT_ce34f28
PTR_ce309d8:
    #data loc_8c2896b0
PTR_ce309dc:
    #data loc_8c034e8c
PTR_ce309e0:
    #data loc_8c04223a
PTR_ce309e4:
    #data DAT_ce34f2c
PTR_ce309e8:
    #data DAT_ce34f30
PTR_ce309ec:
    #data DAT_ce34f34

;=============================================

LAB_ce309f0:
    mov.w @(DAT_ce30ad4,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30ae4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30ad6,pc),r0
    mov.l @(PTR_ce30ae8,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30ad8,pc),r0
    bra LAB_ce30a46
    mov.b r13,@(r0,r14)

LAB_ce30a0e:
    mov.w @(DAT_ce30ad4,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce30ae4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30ad6,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce30aec,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30ad8,pc),r0
    bra LAB_ce30a46
    mov.b r3,@(r0,r14)

LAB_ce30a30:
    mov.w @(DAT_ce30ad4,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.l @(PTR_ce30af0,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30ad6,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30ad8,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30a46:
    mov.w @(DAT_ce30ada,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30af4,pc),r3
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
    mov.w @(DAT_ce30ad4,pc),r0
    mov.l @(PTR_ce30af8,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30a76:
    mov.w @(DAT_ce30adc,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30a86
    mov.w @(DAT_ce30ade,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30a96

LAB_ce30a86:
    mov.w @(DAT_ce30adc,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30a9a
    mov.w @(DAT_ce30ade,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30a9a

LAB_ce30a96:
    bra LAB_ce30a9e
    nop

LAB_ce30a9a:
    rts
    nop

LAB_ce30a9e:
    mov.w @(DAT_ce30adc,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30aac
    bra LAB_ce30bc6
    nop

LAB_ce30aac:
    bra LAB_ce30ab0
    nop

LAB_ce30ab0:
    mov.w @(DAT_ce30ae0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30ae4,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30afc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30b28
    cmp/eq 0x02,r0
    bt LAB_ce30b54
    bra LAB_ce30b82
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ad4:
    #data 0x0158
DAT_ce30ad6:
    #data 0x03f4
DAT_ce30ad8:
    #data 0x01a7
DAT_ce30ada:
    #data 0x01ac
DAT_ce30adc:
    #data 0x01fe
DAT_ce30ade:
    #data 0x01d6
DAT_ce30ae0:
    #data 0x01e8
    #align4

PTR_ce30ae4:
    #data loc_8c04223a
PTR_ce30ae8:
    #data DAT_ce34f2c
PTR_ce30aec:
    #data DAT_ce34f30
PTR_ce30af0:
    #data DAT_ce34f34
PTR_ce30af4:
    #data loc_8c2896b0
PTR_ce30af8:
    #data loc_8c034e8c

;=============================================

LAB_ce30afc:
    mov.w @(DAT_ce30bea,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30bec,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b1c
    mov.w @(DAT_ce30bee,pc),r0
    mov.l @(PTR_ce30bf8,pc),r3
    bra LAB_ce30b22
    mov.l r3,@(r0,r14)

LAB_ce30b1c:
    mov.w @(DAT_ce30bee,pc),r0
    mov.l @(PTR_ce30bfc,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b22:
    mov.w @(DAT_ce30bf0,pc),r0
    bra LAB_ce30b82
    mov.b r13,@(r0,r14)

LAB_ce30b28:
    mov.w @(DAT_ce30bea,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30bec,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b4a
    mov.w @(DAT_ce30bee,pc),r0
    mov.l @(PTR_ce30c00,pc),r3
    bra LAB_ce30b50
    mov.l r3,@(r0,r14)

LAB_ce30b4a:
    mov.w @(DAT_ce30bee,pc),r0
    mov.l @(PTR_ce30c04,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b50:
    bra LAB_ce30b7e
    mov 0x01,r3

LAB_ce30b54:
    mov.w @(DAT_ce30bea,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30bec,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b76
    mov.w @(DAT_ce30bee,pc),r0
    mov.l @(PTR_ce30c08,pc),r3
    bra LAB_ce30b7c
    mov.l r3,@(r0,r14)

LAB_ce30b76:
    mov.w @(DAT_ce30bee,pc),r0
    mov.l @(PTR_ce30c0c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b7c:
    mov 0x02,r3

LAB_ce30b7e:
    mov.w @(DAT_ce30bf0,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30b82:
    mov.w @(DAT_ce30bf2,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30c10,pc),r3
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
    mov.w @(DAT_ce30bea,pc),r0
    mov.l @(PTR_ce30c14,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30bf4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30bbc
    mov.w @(DAT_ce30bf4,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30bbc:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30bc6:
    mov.w @(DAT_ce30bf6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30c18,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30c1c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30c48
    cmp/eq 0x02,r0
    bt LAB_ce30c74
    bra LAB_ce30cba
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30bea:
    #data 0x0158
DAT_ce30bec:
    #data 0x01fc
DAT_ce30bee:
    #data 0x03f4
DAT_ce30bf0:
    #data 0x01a7
DAT_ce30bf2:
    #data 0x01ac
DAT_ce30bf4:
    #data 0x01d6
DAT_ce30bf6:
    #data 0x01e8
    #align4

PTR_ce30bf8:
    #data DAT_ce34f38
PTR_ce30bfc:
    #data DAT_ce34f50
PTR_ce30c00:
    #data DAT_ce34f3c
PTR_ce30c04:
    #data DAT_ce34f54
PTR_ce30c08:
    #data DAT_ce34f40
PTR_ce30c0c:
    #data DAT_ce34f58
PTR_ce30c10:
    #data loc_8c2896b0
PTR_ce30c14:
    #data loc_8c034e8c
PTR_ce30c18:
    #data loc_8c04223a

;=============================================

LAB_ce30c1c:
    mov.w @(DAT_ce30d12,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30d14,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c3c
    mov.w @(DAT_ce30d16,pc),r0
    mov.l @(PTR_ce30d24,pc),r3
    bra LAB_ce30c42
    mov.l r3,@(r0,r14)

LAB_ce30c3c:
    mov.w @(DAT_ce30d16,pc),r0
    mov.l @(PTR_ce30d28,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c42:
    mov.w @(DAT_ce30d18,pc),r0
    bra LAB_ce30cba
    mov.b r13,@(r0,r14)

LAB_ce30c48:
    mov.w @(DAT_ce30d12,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30d14,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c6a
    mov.w @(DAT_ce30d16,pc),r0
    mov.l @(PTR_ce30d2c,pc),r3
    bra LAB_ce30c70
    mov.l r3,@(r0,r14)

LAB_ce30c6a:
    mov.w @(DAT_ce30d16,pc),r0
    mov.l @(PTR_ce30d30,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c70:
    bra LAB_ce30cb6
    mov 0x01,r3

LAB_ce30c74:
    mov.w @(DAT_ce30d12,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce30d1a,pc),r3
    extu.w r2,r2
    tst r3,r2
    bt/s LAB_ce30c9a
    mov 0x16,r5
    mov.w @(DAT_ce30d12,pc),r0
    mov 0x06,r2
    mov 0x12,r1
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r1,@(r0,r14)

LAB_ce30c9a:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30d14,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30cae
    mov.w @(DAT_ce30d16,pc),r0
    mov.l @(PTR_ce30d34,pc),r3
    bra LAB_ce30cb4
    mov.l r3,@(r0,r14)

LAB_ce30cae:
    mov.w @(DAT_ce30d16,pc),r0
    mov.l @(PTR_ce30d38,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30cb4:
    mov 0x02,r3

LAB_ce30cb6:
    mov.w @(DAT_ce30d18,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30cba:
    mov.w @(DAT_ce30d1c,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30d3c,pc),r3
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
    mov.w @(DAT_ce30d12,pc),r0
    mov.l @(PTR_ce30d40,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30d1e,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30cf4
    mov.w @(DAT_ce30d1e,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30cf4:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30cfe:
    mov.w @(DAT_ce30d20,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30d44,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d12:
    #data 0x0158
DAT_ce30d14:
    #data 0x01fc
DAT_ce30d16:
    #data 0x03f4
DAT_ce30d18:
    #data 0x01a7
DAT_ce30d1a:
    #data 0x2000
DAT_ce30d1c:
    #data 0x01ac
DAT_ce30d1e:
    #data 0x01d6
DAT_ce30d20:
    #data 0x01ff
    #align4

PTR_ce30d24:
    #data DAT_ce34f44
PTR_ce30d28:
    #data DAT_ce34f5c
PTR_ce30d2c:
    #data DAT_ce34f48
PTR_ce30d30:
    #data DAT_ce34f60
PTR_ce30d34:
    #data DAT_ce34f4c
PTR_ce30d38:
    #data DAT_ce34f64
PTR_ce30d3c:
    #data loc_8c2896b0
PTR_ce30d40:
    #data loc_8c034e8c
PTR_ce30d44:
    #data PTR_ce35960

;=============================================

LAB_ce30d48:
    sts.l PR,@-r15
    mov.l @(PTR_ce30e50,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30d56:
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
    mov.w @(DAT_ce30e46,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30dbe
    mov.w @(DAT_ce30e48,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30db6
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30eea
    mov.l @r15+,r14

LAB_ce30db6:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30eb2
    mov.l @r15+,r14

LAB_ce30dbe:
    mov.w @(DAT_ce30e48,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30dd0
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e82
    mov.l @r15+,r14

LAB_ce30dd0:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30dd8
    mov.l @r15+,r14

LAB_ce30dd8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e58,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30df2
    lds.l @r15+,PR
    mov.l @(PTR_ce30e5c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30df2:
    mov.w @(DAT_ce30e4a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30e08
    cmp/eq 0x00,r0
    bt LAB_ce30e7c
    cmp/eq 0x01,r0
    bt LAB_ce30e7c
    bra LAB_ce30e7c
    nop

LAB_ce30e08:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce30e6c
    fldi0 fr4
    mov.w @(DAT_ce30e4c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e7c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30e4e,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30e34
    mova @(DAT_ce30e60,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    bra LAB_ce30e7c
    fmov fr4,@(r0,r14)

LAB_ce30e34:
    mova @(DAT_ce30e64,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30e68,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    bra LAB_ce30e7c
    fmov fr3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e46:
    #data 0x01fe
DAT_ce30e48:
    #data 0x01f9
DAT_ce30e4a:
    #data 0x01e8
DAT_ce30e4c:
    #data 0x0141
DAT_ce30e4e:
    #data 0x0130
    #align4

PTR_ce30e50:
    #data loc_8c0511e2
PTR_ce30e54:
    #data loc_8c052c84
PTR_ce30e58:
    #data loc_8c034dee
PTR_ce30e5c:
    #data loc_8c051648
DAT_ce30e60:
    #data 0xbfd55555
DAT_ce30e64:
    #data 0x3fd55555
DAT_ce30e68:
    #data 0x80000000

;=============================================

LAB_ce30e6c:
    mov.w @(DAT_ce30f40,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30e7c
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)

LAB_ce30e7c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e82:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30f48,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e9c
    lds.l @r15+,PR
    mov.l @(PTR_ce30f4c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e9c:
    mov.w @(DAT_ce30f42,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30eac
    cmp/eq 0x00,r0
    bt LAB_ce30eac
    cmp/eq 0x01,r0

LAB_ce30eac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30eb2:
    mov.w @(DAT_ce30f42,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30ece
    cmp/eq 0x01,r0
    bt LAB_ce30ece
    cmp/eq 0x02,r0
    bt LAB_ce30ece
    bra LAB_ce30ee4
    nop

LAB_ce30ece:
    mov.l @(PTR_ce30f48,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ee4
    lds.l @r15+,PR
    mov.l @(PTR_ce30f4c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30ee4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30eea:
    mov.w @(DAT_ce30f42,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30f06
    cmp/eq 0x00,r0
    bt LAB_ce30f76
    cmp/eq 0x01,r0
    bt LAB_ce30f76
    bra LAB_ce30f8c
    nop

LAB_ce30f06:
    mov.l @(PTR_ce30f48,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30f82
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30f6a
    mov.w @(DAT_ce30f40,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30f8c
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30f44,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30f58
    mova @(DAT_ce30f50,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30f54,pc),r0
    bra LAB_ce30f64
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f40:
    #data 0x0141
DAT_ce30f42:
    #data 0x01e8
DAT_ce30f44:
    #data 0x0130
    #align4

PTR_ce30f48:
    #data loc_8c034dee
PTR_ce30f4c:
    #data loc_8c051648
DAT_ce30f50:
    #data 0xc12d5555
DAT_ce30f54:
    #data 0x3ed55555

;=============================================

LAB_ce30f58:
    mova @(DAT_ce31030,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31034,pc),r0
    fmov.s @r0,fr3

LAB_ce30f64:
    mov 0x68,r0
    bra LAB_ce30f8c
    fmov fr3,@(r0,r14)

LAB_ce30f6a:
    lds.l @r15+,PR
    mov.l @(PTR_ce31038,pc),r2
    mov 0x07,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30f76:
    mov.l @(PTR_ce3103c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f8c

LAB_ce30f82:
    lds.l @r15+,PR
    mov.l @(PTR_ce31040,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30f8c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f92:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31044,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31048,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30fa8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3104c,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31050,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3102e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30fca
    bsr FUN_ce3100c
    mov r14,r4
    bra LAB_ce30fce
    nop

LAB_ce30fca:
    bsr FUN_ce30fea
    mov r14,r4

LAB_ce30fce:
    mov.l @(PTR_ce31054,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30fe4
    lds.l @r15+,PR
    mov.l @(PTR_ce31058,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30fe4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30fea:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3103c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31004
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3105c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31004:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce3100c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3103c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31026
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3105c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31026:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3102e:
    #data 0x01fe
    #align4

DAT_ce31030:
    #data 0x412d5555
DAT_ce31034:
    #data 0xbed55555
PTR_ce31038:
    #data loc_8c05120e
PTR_ce3103c:
    #data loc_8c034dee
PTR_ce31040:
    #data loc_8c051648
PTR_ce31044:
    #data loc_8c050084
PTR_ce31048:
    #data loc_8c04ff88
PTR_ce3104c:
    #data loc_8c04fea8
PTR_ce31050:
    #data loc_8c050048
PTR_ce31054:
    #data loc_8c052ce2
PTR_ce31058:
    #data loc_8c052dac
PTR_ce3105c:
    #data loc_8c05176e

;=============================================

LAB_ce31060:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce310b6
    mov.l @(PTR_ce31194,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x16,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce3118a,pc),r0
    mov 0x03,r6
    mov.b r3,@(r0,r14)
    add 0x58,r0
    mov.l @(PTR_ce31198,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3118c,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce3119c,pc),r3
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
    mov.l @(PTR_ce311a0,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce310b6:
    mov.w @(DAT_ce3118e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce310c6
    mov.l @(PTR_ce311a4,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce310c6:
    mov 0x5C,r1
    mov.l @(PTR_ce311a8,pc),r3
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
    mov.l @(PTR_ce311ac,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3111c
    lds.l @r15+,PR
    mov.l @(PTR_ce311b0,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3111c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31124:
    mov r4,r3
    mov.l @(PTR_ce311b4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31136:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce311ac,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31190,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31184
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31192,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31164
    mova @(DAT_ce311b8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce311bc,pc),r0
    bra LAB_ce31170
    fmov.s @r0,fr3

LAB_ce31164:
    mova @(DAT_ce311c0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce311c4,pc),r0
    fmov.s @r0,fr3

LAB_ce31170:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce311c8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce311cc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31184:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3118a:
    #data 0x01a1
DAT_ce3118c:
    #data 0x01ac
DAT_ce3118e:
    #data 0x01ff
DAT_ce31190:
    #data 0x0141
DAT_ce31192:
    #data 0x01d2
    #align4

PTR_ce31194:
    #data loc_8c052b4c
PTR_ce31198:
    #data loc_8c034e8c
PTR_ce3119c:
    #data loc_8c2896b0
PTR_ce311a0:
    #data loc_8c056de4
PTR_ce311a4:
    #data loc_8c0511e2
PTR_ce311a8:
    #data loc_8c052c84
PTR_ce311ac:
    #data loc_8c034dee
PTR_ce311b0:
    #data loc_8c051648
PTR_ce311b4:
    #data PTR_ce35970
DAT_ce311b8:
    #data 0xc1200000
DAT_ce311bc:
    #data 0x3e200000
DAT_ce311c0:
    #data 0x41200000
DAT_ce311c4:
    #data 0xbe200000
DAT_ce311c8:
    #data 0x40892492
DAT_ce311cc:
    #data 0xbe892492

;=============================================

LAB_ce311d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3132c,pc),r3
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce31322,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce3124a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov 0x02,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x6,r14)
    mov r14,r4
    mov.w @(DAT_ce31322,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31324,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31330,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3124a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31250:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce3132c,pc),r3
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
    bt LAB_ce312a0
    mov.l @(PTR_ce31334,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce312a0:
    mov.w @(DAT_ce31326,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce312b6
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce312b6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312bc:
    mov r4,r3
    mov.l @(PTR_ce31338,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce312ce:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3132c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31326,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3131c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31328,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce312fc
    mova @(DAT_ce3133c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31340,pc),r0
    bra LAB_ce31308
    fmov.s @r0,fr3

LAB_ce312fc:
    mova @(DAT_ce31344,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31348,pc),r0
    fmov.s @r0,fr3

LAB_ce31308:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3134c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31350,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce3131c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31322:
    #data 0x041c
DAT_ce31324:
    #data 0x01f9
DAT_ce31326:
    #data 0x0141
DAT_ce31328:
    #data 0x01d2
    #align4

PTR_ce3132c:
    #data loc_8c034dee
PTR_ce31330:
    #data loc_8c034e8c
PTR_ce31334:
    #data loc_8c051648
PTR_ce31338:
    #data PTR_ce3597c
DAT_ce3133c:
    #data 0x41200000
DAT_ce31340:
    #data 0xbe555555
DAT_ce31344:
    #data 0xc1200000
DAT_ce31348:
    #data 0x3e555555
DAT_ce3134c:
    #data 0x40892492
DAT_ce31350:
    #data 0xbe892492

;=============================================

LAB_ce31354:
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce3149a,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce313ce
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    mov.w @(DAT_ce3149a,pc),r0
    mov 0x02,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3149c,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce314a4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce313ce:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313d4:
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
    bt LAB_ce31424
    mov.l @(PTR_ce314a8,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31424:
    mov.w @(DAT_ce3149e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3143a
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce3143a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31440:
    mov r4,r3
    mov.l @(PTR_ce314ac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31452:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce314b0,pc),r3
    add 0x01,r0
    jsr @r3
    mov.b r0,@(0x6,r14)
    mov.l @(PTR_ce314b4,pc),r1
    and 0x03,r0
    shll r0
    mov r14,r4
    mov.b @(r0,r1),r2
    mov 0x20,r0
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce31474:
    mov 0x20,r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce314b8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31488:
    mov r4,r3
    mov.l @(PTR_ce314bc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3149a:
    #data 0x041c
DAT_ce3149c:
    #data 0x01f9
DAT_ce3149e:
    #data 0x0141
    #align4

PTR_ce314a0:
    #data loc_8c034dee
PTR_ce314a4:
    #data loc_8c034e8c
PTR_ce314a8:
    #data loc_8c051648
PTR_ce314ac:
    #data PTR_ce35988
PTR_ce314b0:
    #data loc_8c03319e
PTR_ce314b4:
    #data DAT_ce35990
PTR_ce314b8:
    #data PTR_ce35998
PTR_ce314bc:
    #data PTR_ce359a4

;=============================================

LAB_ce314c0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5D,r0
    mov.w r0,@(0x1c,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x64,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31610,pc),r0
    fmov.s @r0,fr4
    mov.b @(0x2,r14),r0
    tst r0,r0
    bf LAB_ce314f0
    mov.w @(DAT_ce31608,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce314fc
    fadd fr4,fr3

LAB_ce314f0:
    mov.w @(DAT_ce31608,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fsub fr4,fr3

LAB_ce314fc:
    fmov fr3,@(r0,r14)
    mov 0x0B,r5
    mov.w @(DAT_ce31608,pc),r0
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce3160a,pc),r0
    extu.b r3,r3
    mov.w r3,@(r0,r14)
    mov.w @(DAT_ce3160c,pc),r0
    mov.l @(PTR_ce31614,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31618,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x12,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31526:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31568
    mov.b @(0x7,r4),r0
    mov 0x01,r3
    fldi0 fr4
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce31608,pc),r0
    mov.b @(r0,r4),r2
    xor r3,r2
    mov.b r2,@(r0,r4)
    mov.b @(r0,r4),r1
    mov.w @(DAT_ce3160a,pc),r0
    extu.b r1,r1
    mov.l @(PTR_ce31618,pc),r2
    mov.w r1,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce3161c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    jmp @r2
    mov 0x12,r5

LAB_ce31568:
    mov.l @(PTR_ce31620,pc),r3
    jmp @r3
    nop

LAB_ce3156e:
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
    mov.w @(DAT_ce3160c,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce315c8
    mov.b @(0x7,r4),r0
    mov 0x03,r6
    mov.l @(PTR_ce31618,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce3160c,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x12,r5

LAB_ce315c8:
    mov.l @(PTR_ce31620,pc),r2
    jmp @r2
    nop

LAB_ce315ce:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31620,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce315f0
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    mov 0x00,r0
    mov.b r0,@(0x6,r14)
    mov 0x64,r0
    fmov.s @(r0,r14),fr3
    mov 0x34,r0
    fmov fr3,@(r0,r14)

LAB_ce315f0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce315f6:
    mov r4,r3
    mov.l @(PTR_ce31624,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31608:
    #data 0x01d2
DAT_ce3160a:
    #data 0x0130
DAT_ce3160c:
    #data 0x041c
    #align4

DAT_ce31610:
    #data 0x441a2aaa
PTR_ce31614:
    #data loc_8c0db810
PTR_ce31618:
    #data loc_8c034e8c
DAT_ce3161c:
    #data 0xbf4db6db
PTR_ce31620:
    #data loc_8c034dee
PTR_ce31624:
    #data PTR_ce359b4

;=============================================

LAB_ce31628:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x26,r0
    mov.w r0,@(0x1c,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x64,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31778,pc),r0
    fmov.s @r0,fr4
    mov.b @(0x2,r14),r0
    tst r0,r0
    bf LAB_ce31658
    mov.w @(DAT_ce31772,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce31664
    fadd fr4,fr3

LAB_ce31658:
    mov.w @(DAT_ce31772,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fsub fr4,fr3

LAB_ce31664:
    fmov fr3,@(r0,r14)
    mov 0x0C,r5
    mov.w @(DAT_ce31772,pc),r0
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce31774,pc),r0
    extu.b r3,r3
    mov.w r3,@(r0,r14)
    mova @(DAT_ce3177c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31776,pc),r0
    mov.l @(PTR_ce31780,pc),r3
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31784,pc),r2
    mov r14,r4
    mov 0x04,r6
    mov 0x12,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31694:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3170c
    mov.b @(0x7,r4),r0
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov 0x10,r0
    mov.w r0,@(0x1c,r4)
    mova @(DAT_ce31788,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31772,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    tst 0x01,r0
    bf LAB_ce316c6
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce3178c,pc),r0
    bra LAB_ce316d2
    fmov.s @r0,fr2

LAB_ce316c6:
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    fsub fr4,fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31790,pc),r0
    fmov.s @r0,fr2

LAB_ce316d2:
    mov.l @(DAT_ce31794,pc),r1
    mov 0x5C,r0
    fmov fr2,@(r0,r4)
    mov 0x38,r0
    lds r1,FPUL
    mov 0x01,r3
    fmov.s @(r0,r4),fr2
    mov 0x05,r6
    mov.l @(PTR_ce31784,pc),r1
    fsts FPUL,fr3
    fsub fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x68,r0
    fldi0 fr2
    fmov fr2,@(r0,r4)
    mova @(DAT_ce31798,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r4)
    mova @(DAT_ce3179c,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r4)
    mov.w @(DAT_ce31772,pc),r0
    mov.b @(r0,r4),r2
    xor r3,r2
    mov.b r2,@(r0,r4)
    jmp @r1
    mov 0x12,r5

LAB_ce3170c:
    mov.l @(PTR_ce317a0,pc),r3
    jmp @r3
    nop

LAB_ce31712:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31736
    mov.b @(0x7,r4),r0
    mov 0x01,r3
    mov.l @(PTR_ce31784,pc),r1
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce31772,pc),r0
    mov.b @(r0,r4),r2
    xor r3,r2
    mov.b r2,@(r0,r4)
    jmp @r1
    mov 0x12,r5

LAB_ce31736:
    mov 0x5C,r1
    mov.l @(PTR_ce317a0,pc),r3
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
    jmp @r3
    fmov fr2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31772:
    #data 0x01d2
DAT_ce31774:
    #data 0x0130
DAT_ce31776:
    #data 0x041c
    #align4

DAT_ce31778:
    #data 0xc3200000
DAT_ce3177c:
    #data 0x43892492
PTR_ce31780:
    #data loc_8c0db810
PTR_ce31784:
    #data loc_8c034e8c
DAT_ce31788:
    #data 0xc1a00000
DAT_ce3178c:
    #data 0x40555555
DAT_ce31790:
    #data 0xc0555555
DAT_ce31794:
    #data 0x42d64924
DAT_ce31798:
    #data 0x41092492
DAT_ce3179c:
    #data 0xbf4db6db
PTR_ce317a0:
    #data loc_8c034dee

;=============================================

LAB_ce317a4:
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
    mov.w @(DAT_ce318fe,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31810
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31904,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce318fe,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31908,pc),r2
    mov r14,r4
    mov 0x07,r6
    mov 0x12,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31810:
    lds.l @r15+,PR
    mov.l @(PTR_ce3190c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3181a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3190c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3183c
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    mov 0x00,r0
    mov.b r0,@(0x6,r14)
    mov 0x64,r0
    fmov.s @(r0,r14),fr3
    mov 0x34,r0
    fmov fr3,@(r0,r14)

LAB_ce3183c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31842:
    mov r4,r3
    mov.l @(PTR_ce31910,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31854:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x0D,r5
    mov.l @(PTR_ce31914,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x40,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31908,pc),r2
    mov 0x00,r6
    mov r6,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3187a:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31894
    mov.b @(0x7,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce31908,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    jmp @r3
    mov 0x08,r5

LAB_ce31894:
    mov.l @(PTR_ce3190c,pc),r2
    jmp @r2
    nop

LAB_ce3189a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3190c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce318ba
    mov.b @(0x7,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce31908,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce318ba:
    lds.l @r15+,PR
    mov.l @(PTR_ce3190c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce318c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3190c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce318de
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    mov 0x00,r0
    mov.b r0,@(0x6,r14)

LAB_ce318de:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318e4:
    mov.w @(DAT_ce31900,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31918,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce318fe:
    #data 0x041c
DAT_ce31900:
    #data 0x0364
    #align4

PTR_ce31904:
    #data loc_8c0511b4
PTR_ce31908:
    #data loc_8c034e8c
PTR_ce3190c:
    #data loc_8c034dee
PTR_ce31910:
    #data PTR_ce359c8
PTR_ce31914:
    #data loc_8c0db810
PTR_ce31918:
    #data PTR_ce359d8

;=============================================

LAB_ce3191c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31934
    bsr FUN_ce31ea8
    mov r14,r4

LAB_ce31934:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3193a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a4c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31952
    lds.l @r15+,PR
    mov.l @(PTR_ce31a50,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31952:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31a54,pc),r0
    extu.b r2,r2
    lds.l @r15+,PR
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31966:
    mov r4,r3
    mov.l @(PTR_ce31a58,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31978:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31a5c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31a60,pc),r2
    mov 0x13,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3199c:
    mov.l @(PTR_ce31a64,pc),r3
    jmp @r3
    nop

LAB_ce319a2:
    mov r4,r3
    mov.l @(PTR_ce31a68,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce319b4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31a5c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31a6c,pc),r2
    mov 0x06,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31a60,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce319e4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce31a00
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce31a60,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce31a00:
    lds.l @r15+,PR
    mov.l @(PTR_ce31a64,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a0a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a64,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31a46,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31a22
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce31a22:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31a28:
    mov.w @(DAT_ce31a4a,pc),r0
    mov.w @(DAT_ce31a48,pc),r3
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce31a64,pc),r3
    jmp @r3
    nop

LAB_ce31a34:
    mov r4,r3
    mov.l @(PTR_ce31a70,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a46:
    #data 0x0141
DAT_ce31a48:
    #data 0x00ff
DAT_ce31a4a:
    #data 0x0326
    #align4

PTR_ce31a4c:
    #data loc_8c046c8a
PTR_ce31a50:
    #data loc_8c051648
PTR_ce31a54:
    #data PTR_ce359e0
PTR_ce31a58:
    #data PTR_ce35a0c
PTR_ce31a5c:
    #data loc_8c035162
PTR_ce31a60:
    #data loc_8c034e8c
PTR_ce31a64:
    #data loc_8c034dee
PTR_ce31a68:
    #data PTR_ce35a14
PTR_ce31a6c:
    #data loc_8c0db810
PTR_ce31a70:
    #data PTR_ce35a24

;=============================================

LAB_ce31a74:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31bb0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31bb4,pc),r2
    mov 0x13,r5
    mov 0x07,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31a98:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31bb8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31ba8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31ac2
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31bbc,pc),r5
    mov.l @(PTR_ce31bc0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31bc4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31ac2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31ac8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31bc4,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bf LAB_ce31aee
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31bc8,pc),r5
    mov.l @(PTR_ce31bc0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31bc4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31aee:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31af4:
    sts.l PR,@-r15
    mov.l @(PTR_ce31bc4,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31bb8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31b06:
    mov.w @(DAT_ce31baa,pc),r3
    mov.w @(DAT_ce31bac,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31bcc,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b20:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce31bd0,pc),r3
    jsr @r3
    mov 0x1C,r5
    tst r0,r0
    bt LAB_ce31b3e
    mov 0x20,r0
    mov r14,r4
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce31966
    mov.l @r15+,r14

LAB_ce31b3e:
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31bb0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce31bd4,pc),r2
    mov.b @(r0,r14),r6
    mov 0x57,r3
    mov 0x07,r5
    extu.b r6,r6
    mulu.w r3,r6
    mov 0x01,r7
    sts MACL,r6
    add 0x39,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31bd8,pc),r3
    mov 0x08,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31bb4,pc),r2
    mov 0x00,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31b82
    mov.l @r15+,r14

LAB_ce31b82:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce31b9e
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce31bb4,pc),r3
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce31b9e:
    lds.l @r15+,PR
    mov.l @(PTR_ce31bb8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ba8:
    #data 0x0141
DAT_ce31baa:
    #data 0x00ff
DAT_ce31bac:
    #data 0x0326
    #align4

PTR_ce31bb0:
    #data loc_8c035162
PTR_ce31bb4:
    #data loc_8c034e8c
PTR_ce31bb8:
    #data loc_8c034dee
PTR_ce31bbc:
    #data DAT_ce35790
PTR_ce31bc0:
    #data FUN_ce34d50
PTR_ce31bc4:
    #data FUN_ce34dd0
PTR_ce31bc8:
    #data DAT_ce357c0
PTR_ce31bcc:
    #data PTR_ce35a34
PTR_ce31bd0:
    #data FUN_ce34ec6
PTR_ce31bd4:
    #data loc_8c03544c
PTR_ce31bd8:
    #data loc_8c0db810

;=============================================

LAB_ce31bdc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31d14,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c04
    mov.b @(0x7,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce31d18,pc),r3
    mov r14,r4
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c04:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31c0a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce31c26
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce31d18,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce31c26:
    lds.l @r15+,PR
    mov.l @(PTR_ce31d14,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c30:
    mov.l @(PTR_ce31d14,pc),r3
    jmp @r3
    nop

LAB_ce31c36:
    mov.w @(DAT_ce31d10,pc),r3
    mov.w @(DAT_ce31d12,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31d1c,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c50:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce31d20,pc),r3
    jsr @r3
    mov 0x1C,r5
    tst r0,r0
    bt LAB_ce31c6e
    mov 0x20,r0
    mov r14,r4
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce31966
    mov.l @r15+,r14

LAB_ce31c6e:
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31d24,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce31d28,pc),r2
    mov.b @(r0,r14),r6
    mov 0x57,r3
    mov 0x01,r7
    extu.b r6,r6
    mov r7,r5
    mulu.w r3,r6
    sts MACL,r6
    add 0x55,r6
    jsr @r2
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce31d28,pc),r2
    mov.b @(r0,r14),r6
    mov 0x57,r3
    mov 0x02,r5
    extu.b r6,r6
    mulu.w r3,r6
    mov 0x01,r7
    sts MACL,r6
    add 0x20,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31d2c,pc),r3
    mov 0x09,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31d18,pc),r2
    mov 0x00,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31cca
    mov.l @r15+,r14

LAB_ce31cca:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce31ce6
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce31d18,pc),r3
    mov 0x08,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce31ce6:
    lds.l @r15+,PR
    mov.l @(PTR_ce31d14,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31cf0:
    mov.l @(PTR_ce31d14,pc),r3
    jmp @r3
    nop

LAB_ce31cf6:
    mov.w @(DAT_ce31d10,pc),r3
    mov.w @(DAT_ce31d12,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31d30,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d10:
    #data 0x00ff
DAT_ce31d12:
    #data 0x0326
    #align4

PTR_ce31d14:
    #data loc_8c034dee
PTR_ce31d18:
    #data loc_8c034e8c
PTR_ce31d1c:
    #data PTR_ce35a48
PTR_ce31d20:
    #data FUN_ce34ec6
PTR_ce31d24:
    #data loc_8c035162
PTR_ce31d28:
    #data loc_8c03544c
PTR_ce31d2c:
    #data loc_8c0db810
PTR_ce31d30:
    #data PTR_ce35a54

;=============================================

LAB_ce31d34:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce31e88,pc),r3
    jsr @r3
    mov 0x1C,r5
    tst r0,r0
    bt LAB_ce31d52
    mov 0x20,r0
    mov r14,r4
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce31966
    mov.l @r15+,r14

LAB_ce31d52:
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31e8c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce31e90,pc),r2
    mov.b @(r0,r14),r6
    mov 0x57,r3
    mov 0x02,r5
    extu.b r6,r6
    mulu.w r3,r6
    mov 0x01,r7
    sts MACL,r6
    add 0x55,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31e94,pc),r3
    mov 0x0A,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31e98,pc),r2
    mov 0x00,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31d96
    mov.l @r15+,r14

LAB_ce31d96:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce31db2
    mov.b @(0x7,r14),r0
    mov 0x0E,r5
    mov.l @(PTR_ce31e98,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce31db2:
    lds.l @r15+,PR
    mov.l @(PTR_ce31e9c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31dbc:
    mov.l @(PTR_ce31e9c,pc),r3
    jmp @r3
    nop

LAB_ce31dc2:
    mov r4,r3
    mov.l @(PTR_ce31ea0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31dd4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31e8c,pc),r3
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
    mov 0x00,r4
    mov.w @(DAT_ce31e82,pc),r0
    mov 0x13,r5
    mov.l @(PTR_ce31e98,pc),r3
    mov 0x04,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31e84,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31e1c:
    mov.l @(PTR_ce31e9c,pc),r3
    jmp @r3
    nop

LAB_ce31e22:
    mov r4,r3
    mov.l @(PTR_ce31ea4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31e34:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31e8c,pc),r3
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
    mov 0x00,r4
    mov.w @(DAT_ce31e82,pc),r0
    mov 0x13,r5
    mov.l @(PTR_ce31e98,pc),r3
    mov 0x05,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31e84,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31e7c:
    mov.l @(PTR_ce31e9c,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e82:
    #data 0x041c
DAT_ce31e84:
    #data 0x01fc
    #align4

PTR_ce31e88:
    #data FUN_ce34ec6
PTR_ce31e8c:
    #data loc_8c035162
PTR_ce31e90:
    #data loc_8c03544c
PTR_ce31e94:
    #data loc_8c0db810
PTR_ce31e98:
    #data loc_8c034e8c
PTR_ce31e9c:
    #data loc_8c034dee
PTR_ce31ea0:
    #data PTR_ce35a60
PTR_ce31ea4:
    #data PTR_ce35a68

;=============================================

FUN_ce31ea8:
    mov.w @(DAT_ce31fb2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31fb4,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31f14
    mov 0x20,r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31fb2,pc),r0
    mov.w @(DAT_ce31fb6,pc),r3
    mov.w @(r0,r14),r1
    extu.w r1,r1
    tst r3,r1
    bt LAB_ce31ed2
    mov 0x20,r0
    mov 0x06,r2
    mov.b r2,@(r0,r14)

LAB_ce31ed2:
    mov.w @(DAT_ce31fb2,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x80,r0
    bt LAB_ce31ee2
    mov 0x20,r0
    mov 0x07,r2
    mov.b r2,@(r0,r14)

LAB_ce31ee2:
    mov.w @(DAT_ce31fb2,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x40,r0
    bt LAB_ce31ef2
    mov 0x20,r0
    mov 0x08,r2
    mov.b r2,@(r0,r14)

LAB_ce31ef2:
    mov.w @(DAT_ce31fb2,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x20,r0
    bt LAB_ce31f02
    mov 0x20,r0
    mov 0x09,r2
    mov.b r2,@(r0,r14)

LAB_ce31f02:
    mov.w @(DAT_ce31fb2,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x10,r0
    bt LAB_ce31f26
    mov 0x20,r0
    mov 0x0A,r2
    bra LAB_ce31f26
    mov.b r2,@(r0,r14)

LAB_ce31f14:
    mov.l @(PTR_ce31fbc,pc),r1
    jsr @r1
    nop
    mov.l @(PTR_ce31fc0,pc),r1
    and 0x0F,r0
    shll r0
    mov.b @(r0,r1),r3
    mov 0x20,r0
    mov.b r3,@(r0,r14)

LAB_ce31f26:
    mov.l @(PTR_ce31fc4,pc),r3
    mov.b @r3,r2
    tst r2,r2
    bf LAB_ce31f58
    mov 0x20,r0
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x06,r0
    bt/s LAB_ce31f52
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x08,r0
    bt LAB_ce31f52
    mov r4,r0
    nop
    cmp/eq 0x09,r0
    bt LAB_ce31f52
    mov r4,r0
    nop
    cmp/eq 0x0A,r0
    bf LAB_ce31f58

LAB_ce31f52:
    mov 0x20,r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)

LAB_ce31f58:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f5e:
    mov.w @(DAT_ce31fb8,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31fc8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31f72:
    mov r4,r3
    mov.l @(PTR_ce31fcc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31f84:
    mov r4,r3
    mov.l @(PTR_ce31fd0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31f96:
    mov.w @(DAT_ce31fba,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31fd4
    mov 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    bra LAB_ce320b4
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31fb2:
    #data 0x04dc
DAT_ce31fb4:
    #data 0x03f0
DAT_ce31fb6:
    #data 0x0100
DAT_ce31fb8:
    #data 0x01e9
DAT_ce31fba:
    #data 0x01f9
    #align4

PTR_ce31fbc:
    #data loc_8c03319e
PTR_ce31fc0:
    #data DAT_ce35a70
PTR_ce31fc4:
    #data loc_8c289636
PTR_ce31fc8:
    #data PTR_ce35a90
PTR_ce31fcc:
    #data PTR_ce35ac4
PTR_ce31fd0:
    #data PTR_ce35acc

;=============================================

LAB_ce31fd4:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce320cc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce320d0,pc),r2
    mov 0x01,r5
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
    mov 0x30,r3
    mov.w @(DAT_ce320c6,pc),r0
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce320c8,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce320d4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce320d8,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce320dc,pc),r3
    mov 0x15,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce320e0,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce32048
    mov.l @r15+,r14

LAB_ce32048:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce320e4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce320ca,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32088
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov.l @(PTR_ce320e8,pc),r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce320ca,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce320ec,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce320f0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce320f4,pc),r3
    mov 0x03,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce320f8,pc),r2
    mov 0x03,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32088:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3208e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce320f0,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce320e4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce320ae
    lds.l @r15+,PR
    mov.l @(PTR_ce320fc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce320ae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce320b4:
    mov r4,r3
    mov.l @(PTR_ce32100,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320c6:
    #data 0x041c
DAT_ce320c8:
    #data 0x01a1
DAT_ce320ca:
    #data 0x0141
    #align4

PTR_ce320cc:
    #data loc_8c05218a
PTR_ce320d0:
    #data loc_8c035162
PTR_ce320d4:
    #data loc_8c2896b0
PTR_ce320d8:
    #data loc_8c056de4
PTR_ce320dc:
    #data loc_8c034e8c
PTR_ce320e0:
    #data loc_8c05115a
PTR_ce320e4:
    #data loc_8c034dee
PTR_ce320e8:
    #data DAT_ce35058
PTR_ce320ec:
    #data FUN_ce34d50
PTR_ce320f0:
    #data FUN_ce34dd0
PTR_ce320f4:
    #data loc_8c0d8840
PTR_ce320f8:
    #data loc_8c08b818
PTR_ce320fc:
    #data loc_8c051648
PTR_ce32100:
    #data PTR_ce35ad8

;=============================================

LAB_ce32104:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32258,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(DAT_ce3225c,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce32260,pc),r0
    fldi0 fr2
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x05,r5
    mov.l @(DAT_ce32264,pc),r1
    fdiv fr4,fr3
    mov.l @(PTR_ce32268,pc),r3
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
    mov.w @(DAT_ce32250,pc),r0
    mov 0x3D,r2
    mov 0x00,r4
    mov.l @(PTR_ce3226c,pc),r3
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
    mov.l @(PTR_ce32270,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce32184:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce32202
    mov r4,r14
    mov.l @(PTR_ce32274,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32252,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce321c8
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov.l @(PTR_ce32278,pc),r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32252,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3227c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32280,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32284,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32288,pc),r2
    mov 0x04,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce321c8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce321ce:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce32202
    mov r4,r14
    mov.l @(PTR_ce32280,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32274,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321fc
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3228c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce321fc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32202:
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
    mov.w @(DAT_ce32254,pc),r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce3224c
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)

LAB_ce3224c:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32250:
    #data 0x01a1
DAT_ce32252:
    #data 0x0141
DAT_ce32254:
    #data 0x041c
    #align4

PTR_ce32258:
    #data loc_8c05218a
DAT_ce3225c:
    #data 0x8c035162
DAT_ce32260:
    #data 0x41000000
DAT_ce32264:
    #data 0x42800000
PTR_ce32268:
    #data loc_8c056de4
PTR_ce3226c:
    #data loc_8c2896b0
PTR_ce32270:
    #data loc_8c034e8c
PTR_ce32274:
    #data loc_8c034dee
PTR_ce32278:
    #data DAT_ce35058
PTR_ce3227c:
    #data FUN_ce34d50
PTR_ce32280:
    #data FUN_ce34dd0
PTR_ce32284:
    #data loc_8c0d8840
PTR_ce32288:
    #data loc_8c08b818
PTR_ce3228c:
    #data loc_8c05176e

;=============================================

LAB_ce32290:
    mov r4,r3
    mov.l @(PTR_ce323bc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce322a2:
    mov r4,r3
    mov.l @(PTR_ce323c0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce322b4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce323c4,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.l @(PTR_ce323c8,pc),r2
    mov 0x06,r5
    mov 0x02,r7
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce323b4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce322e2
    mov 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    bra LAB_ce323a2
    mov.l @r15+,r14

LAB_ce322e2:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce323cc,pc),r3
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
    mov 0x33,r3
    mov.w @(DAT_ce323b6,pc),r0
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce323b8,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce323d0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce323d4,pc),r2
    mov 0x0A,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce323d8,pc),r3
    mov 0x15,r5
    mov 0x03,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce323dc,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3234e
    mov.l @r15+,r14

LAB_ce3234e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce323e0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce323ba,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3237a
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce323ba,pc),r0
    mov.b r3,@(r0,r14)
    add 0x62,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce323e4,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3237a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32380:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce323e0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3239a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce323e8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3239a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce323a2:
    mov r4,r3
    mov.l @(PTR_ce323ec,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce323b4:
    #data 0x01f9
DAT_ce323b6:
    #data 0x041c
DAT_ce323b8:
    #data 0x01a1
DAT_ce323ba:
    #data 0x0141
    #align4

PTR_ce323bc:
    #data PTR_ce35ae4
PTR_ce323c0:
    #data PTR_ce35aec
PTR_ce323c4:
    #data loc_8c035162
PTR_ce323c8:
    #data loc_8c0353ee
PTR_ce323cc:
    #data loc_8c05218a
PTR_ce323d0:
    #data loc_8c2896b0
PTR_ce323d4:
    #data loc_8c056de4
PTR_ce323d8:
    #data loc_8c034e8c
PTR_ce323dc:
    #data loc_8c05115a
PTR_ce323e0:
    #data loc_8c034dee
PTR_ce323e4:
    #data loc_8c08f128
PTR_ce323e8:
    #data loc_8c051648
PTR_ce323ec:
    #data PTR_ce35af8

;=============================================

LAB_ce323f0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce324e4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce324e8,pc),r0
    fldi0 fr2
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x0A,r5
    mov.l @(DAT_ce324ec,pc),r1
    fdiv fr4,fr3
    mov.l @(PTR_ce324f0,pc),r3
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
    mov.w @(DAT_ce324e0,pc),r0
    mov 0x34,r2
    mov 0x00,r4
    mov.l @(PTR_ce324f4,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x15,r5
    mov.b @(0x2,r14),r0
    mov 0x05,r6
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce324f8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce32468:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce32202
    mov r4,r14
    mov.l @(PTR_ce324fc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce324e2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3249a
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce324e2,pc),r0
    mov.b r3,@(r0,r14)
    add 0x62,r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r5
    mov.l @(PTR_ce32500,pc),r3
    add 0x02,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3249a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce324a0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce32202
    mov r4,r14
    mov.l @(PTR_ce324fc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324c8
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32504,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce324c8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce324ce:
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

DAT_ce324e0:
    #data 0x01a1
DAT_ce324e2:
    #data 0x0141
    #align4

PTR_ce324e4:
    #data loc_8c05218a
DAT_ce324e8:
    #data 0x41000000
DAT_ce324ec:
    #data 0x42800000
PTR_ce324f0:
    #data loc_8c056de4
PTR_ce324f4:
    #data loc_8c2896b0
PTR_ce324f8:
    #data loc_8c034e8c
PTR_ce324fc:
    #data loc_8c034dee
PTR_ce32500:
    #data loc_8c08f128
PTR_ce32504:
    #data loc_8c05176e
PTR_ce32508:
    #data PTR_ce35b04

;=============================================

LAB_ce3250c:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov 0x01,r5
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32658,pc),r3
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
    mov.w @(DAT_ce3264e,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32650,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3265c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32660,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32652,pc),r0
    mov 0x50,r2
    mov.l @(PTR_ce32664,pc),r3
    mov 0x0F,r6
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
    mov.l @(PTR_ce32668,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32582:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce3266c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce325a2
    mov.l @(PTR_ce32670,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce325a2:
    mov.w @(DAT_ce32654,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce325c4
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32674,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32678,pc),r0
    mov.l @(PTR_ce3267c,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce325c4:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce325cc:
    mov r4,r3
    mov.l @(PTR_ce32680,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce325de:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3265c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32658,pc),r2
    mov 0x01,r5
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
    mov.w @(DAT_ce32650,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce32668,pc),r3
    mov 0x02,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32656,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3262c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3266c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32646
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32670,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32646:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3264e:
    #data 0x01f9
DAT_ce32650:
    #data 0x041c
DAT_ce32652:
    #data 0x01a1
DAT_ce32654:
    #data 0x0141
DAT_ce32656:
    #data 0x01fc
    #align4

PTR_ce32658:
    #data loc_8c035162
PTR_ce3265c:
    #data loc_8c05218a
PTR_ce32660:
    #data loc_8c05115a
PTR_ce32664:
    #data loc_8c2896b0
PTR_ce32668:
    #data loc_8c034e8c
PTR_ce3266c:
    #data loc_8c034dee
PTR_ce32670:
    #data loc_8c051648
DAT_ce32674:
    #data 0x420c0000
DAT_ce32678:
    #data 0x42cdb6db
PTR_ce3267c:
    #data loc_8c050ea4
PTR_ce32680:
    #data PTR_ce35b0c

;=============================================

LAB_ce32684:
    mov.w @(DAT_ce327b8,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce327d4,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3269e:
    mov.w @(DAT_ce327be,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce327ba,pc),r5
    extu.b r0,r0
    mov.w @(DAT_ce327bc,pc),r6
    cmp/eq 0x06,r0
    bf/s LAB_ce326be
    add r14,r5
    mov.w @(DAT_ce327c0,pc),r0
    mov 0x10,r3
    mov.b r6,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce326be:
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x18,r0
    mov.b r4,@(r0,r5)
    mov r6,r0
    nop
    mov.b r0,@(0x4,r5)
    mov 0x45,r3
    mov.w @(DAT_ce327c2,pc),r0
    fldi0 fr4
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce327c4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce327c6,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce327c8,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce327d8,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    mov 0x03,r5
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce327dc,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce327e0,pc),r3
    mov 0x16,r5
    mov 0x07,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce327e4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce32734:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce327ca,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce327cc,pc),r0
    mov.w @(DAT_ce327ba,pc),r13
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce327be,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce3275c
    add r14,r13
    bra LAB_ce3275e
    mov 0x02,r3

LAB_ce3275c:
    mov 0x00,r3

LAB_ce3275e:
    mov.w @(DAT_ce327ce,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce327e8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce327d0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce327ae
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce327f0,pc),r3
    add 0x01,r0
    mov.l @(PTR_ce327ec,pc),r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce327c0,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x02,r0
    mov.b r0,@(0xb,r13)
    mov.w @(DAT_ce327bc,pc),r0
    mov.b r0,@(0xa,r13)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce327f4,pc),r0
    mov.l @(PTR_ce327fc,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce327f8,pc),r0
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

LAB_ce327ae:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce327b8:
    #data 0x0364
DAT_ce327ba:
    #data 0x02a4
DAT_ce327bc:
    #data 0x00ff
DAT_ce327be:
    #data 0x0255
DAT_ce327c0:
    #data 0x03f0
DAT_ce327c2:
    #data 0x01f9
DAT_ce327c4:
    #data 0x041c
DAT_ce327c6:
    #data 0x01fc
DAT_ce327c8:
    #data 0x01a1
DAT_ce327ca:
    #data 0x03f8
DAT_ce327cc:
    #data 0x0328
DAT_ce327ce:
    #data 0x03f1
DAT_ce327d0:
    #data 0x0141
    #align4

PTR_ce327d4:
    #data PTR_ce35b14
PTR_ce327d8:
    #data loc_8c2896b0
PTR_ce327dc:
    #data loc_8c0db83e
PTR_ce327e0:
    #data loc_8c034e8c
PTR_ce327e4:
    #data loc_8c05115a
PTR_ce327e8:
    #data loc_8c034dee
PTR_ce327ec:
    #data DAT_ce352d0
PTR_ce327f0:
    #data FUN_ce34d50
DAT_ce327f4:
    #data 0xc1555555
DAT_ce327f8:
    #data 0x42d20000
PTR_ce327fc:
    #data loc_8c050834

;=============================================

LAB_ce32800:
    mov.w @(DAT_ce32938,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    mov.w @(DAT_ce32936,pc),r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add r14,r13
    mov.w @(DAT_ce3293a,pc),r0
    mov.l @(PTR_ce32944,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce328a0
    mov.b @(0x6,r14),r0
    mov r13,r5
    add 0x1E,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov r0,r3
    mov.b r0,@(0xa,r13)
    mov 0x19,r0
    mov.b r3,@(r0,r13)
    mov 0x06,r6
    mov.w @(DAT_ce3293c,pc),r0
    mov.l @(PTR_ce32948,pc),r3
    mov.w r0,@(0x1e,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3294c,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce32950,pc),r1
    and 0x03,r0
    shll2 r0
    mov.l @(r0,r1),r3
    mov 0x1B,r0
    mov 0x01,r2
    mov.l r3,@(0x14,r13)
    mov.l @(PTR_ce32954,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32958,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3295c,pc),r13
    mov 0x00,r5
    jsr @r13
    mov r14,r4
    mov 0x01,r5
    jsr @r13
    mov r14,r4
    mov 0x03,r5
    jsr @r13
    mov r14,r4
    mov 0x04,r5
    jsr @r13
    mov r14,r4
    mov.l @(PTR_ce32964,pc),r3
    mov.l @(PTR_ce32960,pc),r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32968,pc),r2
    mov 0x16,r5
    mov 0x08,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3296c,pc),r3
    mov r14,r4
    mov 0x1E,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce328a0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce328a8:
    mov.w @(DAT_ce32938,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    mov.w @(DAT_ce32936,pc),r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add r14,r13
    mov.w @(DAT_ce3293a,pc),r0
    mov.l @(PTR_ce32944,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32970,pc),r3
    mov 0x05,r1
    mov.b @r3,r2
    extu.b r2,r2
    cmp/ge r1,r2
    bf/s LAB_ce328da
    mov 0x00,r4
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r13)

LAB_ce328da:
    mov.w @(0x1e,r13),r0
    tst r0,r0
    bf LAB_ce32920
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x19,r0
    mov.b r4,@(r0,r13)
    mov.w @(DAT_ce3293e,pc),r0
    mov.l @(PTR_ce32974,pc),r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32940,pc),r0
    mov.l @(PTR_ce32964,pc),r3
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32968,pc),r2
    mov 0x16,r5
    mov 0x22,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3296c,pc),r3
    mov r14,r4
    mov 0x2B,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32920:
    mov.b @(0x7,r14),r0
    mov r13,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce32978,pc),r1
    extu.b r0,r0
    shll2 r0
    mov r14,r4
    mov.l @r15+,r13
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32936:
    #data 0x02a4
DAT_ce32938:
    #data 0x03f8
DAT_ce3293a:
    #data 0x0328
DAT_ce3293c:
    #data 0x00b4
DAT_ce3293e:
    #data 0x03f9
DAT_ce32940:
    #data 0x0327
    #align4

PTR_ce32944:
    #data FUN_ce34dd0
PTR_ce32948:
    #data loc_8c0f047c
PTR_ce3294c:
    #data loc_8c03319e
PTR_ce32950:
    #data PTR_ce35b2c
PTR_ce32954:
    #data loc_8c05218a
PTR_ce32958:
    #data loc_8c035162
PTR_ce3295c:
    #data loc_8c08e2f8
PTR_ce32960:
    #data DAT_ce35320
PTR_ce32964:
    #data FUN_ce34d50
PTR_ce32968:
    #data loc_8c034e8c
PTR_ce3296c:
    #data loc_8c042008
PTR_ce32970:
    #data loc_8c2895f0
PTR_ce32974:
    #data DAT_ce353b0
PTR_ce32978:
    #data PTR_ce35b3c

;=============================================

FUN_ce3297c:
    mov.w @(DAT_ce32a84,pc),r0
    mov.l @(r0,r4),r5
    add 0xC6,r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce32992
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fmov.s @(r0,r5),fr3
    fcmp/gt fr2,fr3
    bt LAB_ce329a4

LAB_ce32992:
    mov.w @(DAT_ce32a86,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce329a8
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fmov.s @(r0,r5),fr3
    fcmp/gt fr3,fr2
    bf LAB_ce329a8

LAB_ce329a4:
    rts
    mov 0x01,r0

LAB_ce329a8:
    mov 0x00,r0
    rts
    nop

LAB_ce329ae:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l r5,@r15
    mov r4,r14
    bsr FUN_ce3297c
    mov r14,r4
    tst r0,r0
    bt LAB_ce329d8
    mov 0x06,r0
    mov r14,r4
    mov.b r0,@(0x7,r14)
    mov 0x18,r0
    mov.l @r15,r3
    mov 0x00,r2
    mov.b r2,@(r0,r3)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce329e2
    mov.l @r15+,r14

LAB_ce329d8:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce33168
    mov.l @r15+,r14

LAB_ce329e2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    mov.l r12,@-r15
    sts.l PR,@-r15

LAB_ce329ee:
    mov 0x18,r0
    mov.b @(r0,r13),r3
    tst r3,r3
    bf LAB_ce32a1c
    mov.b @(r0,r13),r3
    mov 0x16,r5
    mov 0x0A,r6
    add 0x01,r3
    mov.b r3,@(r0,r13)
    mov 0x01,r3
    mov.w @(DAT_ce32a86,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce32a88,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mov 0x19,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce32a8c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32a1c:
    mov 0x00,r12
    bsr FUN_ce3297c
    mov r14,r4
    tst r0,r0
    bt LAB_ce32a2e
    mov 0x18,r0
    mov.b r12,@(r0,r13)
    bra LAB_ce329ee
    mov r13,r4

LAB_ce32a2e:
    mov.l @(PTR_ce32a90,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a52
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x18,r0
    mov.b r12,@(r0,r13)
    mov 0x19,r0
    mov.l @(PTR_ce32a8c,pc),r3
    mov 0x16,r5
    mov.b r12,@(r0,r13)
    mov 0x08,r6
    jsr @r3
    mov r14,r4

LAB_ce32a52:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra LAB_ce33168
    mov.l @r15+,r14

LAB_ce32a5e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    bsr FUN_ce3297c
    mov r5,r13
    tst r0,r0
    bt LAB_ce32a94
    mov 0x06,r0
    mov r13,r5
    mov.b r0,@(0x7,r14)
    mov 0x18,r0
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r13)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce329e2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a84:
    #data 0x020c
DAT_ce32a86:
    #data 0x01d2
DAT_ce32a88:
    #data 0x0130
    #align4

PTR_ce32a8c:
    #data loc_8c034e8c
PTR_ce32a90:
    #data loc_8c034dee

;=============================================

LAB_ce32a94:
    mov 0x18,r0
    mov.b @(r0,r13),r2
    tst r2,r2
    bf LAB_ce32ab2
    mov.b @(r0,r13),r2
    mov 0x00,r3
    mov 0x16,r5
    add 0x01,r2
    mov.b r2,@(r0,r13)
    mov 0x19,r0
    mov.b r3,@(r0,r13)
    mov 0x08,r6
    mov.l @(PTR_ce32b88,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32ab2:
    mov.w @(DAT_ce32b86,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32ac4
    mov.l @(DAT_ce32b8c,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    bra LAB_ce32acc
    fsts FPUL,fr3

LAB_ce32ac4:
    mov.l @(DAT_ce32b90,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    fsts FPUL,fr3

LAB_ce32acc:
    fmov.s @(r0,r14),fr2
    mov r14,r4
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce33168
    mov.l @r15+,r14

LAB_ce32adc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    bsr FUN_ce3297c
    mov r5,r13
    tst r0,r0
    bt LAB_ce32b02
    mov 0x06,r0
    mov r13,r5
    mov.b r0,@(0x7,r14)
    mov 0x18,r0
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r13)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce329e2
    mov.l @r15+,r14

LAB_ce32b02:
    mov 0x18,r0
    mov.b @(r0,r13),r2
    tst r2,r2
    bf LAB_ce32b20
    mov.b @(r0,r13),r2
    mov 0x00,r3
    mov 0x16,r5
    add 0x01,r2
    mov.b r2,@(r0,r13)
    mov 0x19,r0
    mov.b r3,@(r0,r13)
    mov 0x08,r6
    mov.l @(PTR_ce32b88,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32b20:
    mov.w @(DAT_ce32b86,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32b32
    mov.l @(DAT_ce32b94,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    bra LAB_ce32b3a
    fsts FPUL,fr3

LAB_ce32b32:
    mov.l @(DAT_ce32b98,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    fsts FPUL,fr3

LAB_ce32b3a:
    fmov.s @(r0,r14),fr2
    mov r14,r4
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce33168
    mov.l @r15+,r14

LAB_ce32b4a:
    mov 0x18,r0
    mov r5,r3
    mov.l r5,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce32b9c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce32b5e:
    mov 0x18,r0
    mov r5,r3
    mov.l r5,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce32ba0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce32b72:
    mov 0x18,r0
    mov r5,r3
    mov.l r5,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce32ba4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b86:
    #data 0x01d2
    #align4

PTR_ce32b88:
    #data loc_8c034e8c
DAT_ce32b8c:
    #data 0xc0a00000
DAT_ce32b90:
    #data 0x40a00000
DAT_ce32b94:
    #data 0x40855555
DAT_ce32b98:
    #data 0xc0855555
PTR_ce32b9c:
    #data PTR_ce35b5c
PTR_ce32ba0:
    #data PTR_ce35b70
PTR_ce32ba4:
    #data PTR_ce35b84

;=============================================

LAB_ce32ba8:
    mov.l r14,@-r15
    mov 0x18,r0
    mov.l r13,@-r15
    mov r5,r13
    mov r4,r14
    fldi0 fr4
    sts.l PR,@-r15
    mov.b @(r0,r13),r3
    mov 0x16,r5
    mov 0x08,r6
    add 0x01,r3
    mov.b r3,@(r0,r13)
    mov 0x06,r0
    mov.w r0,@(0x1c,r14)
    mov 0x19,r0
    mov 0x00,r3
    mov.b r3,@(r0,r13)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    mov.l @(PTR_ce32cec,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32be2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32c22
    mov 0x18,r0
    mov.l @(PTR_ce32cf8,pc),r13
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mova @(DAT_ce32cf0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x05,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32cf4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r13
    mov r14,r4
    mov 0x06,r5
    jsr @r13
    mov r14,r4
    mov 0x07,r5
    jsr @r13
    mov r14,r4

LAB_ce32c22:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32c2a:
    mov.l r14,@-r15
    mov 0x18,r0
    mov.l r13,@-r15
    mov r5,r13
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r13),r3
    add 0x01,r3
    mov.b r3,@(r0,r13)
    mov 0x06,r0
    mov.w r0,@(0x1c,r14)
    mov 0x19,r0
    mov 0x00,r3
    mov.b r3,@(r0,r13)
    mov.w @(DAT_ce32ce8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32c54
    mova @(DAT_ce32cfc,pc),r0
    bra LAB_ce32c58
    fmov.s @r0,fr3

LAB_ce32c54:
    mova @(DAT_ce32d00,pc),r0
    fmov.s @r0,fr3

LAB_ce32c58:
    mov 0x5C,r0
    mov.l @(PTR_ce32cec,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mov 0x08,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32c76:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32cb6
    mov 0x18,r0
    mov.l @(PTR_ce32cf8,pc),r13
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mova @(DAT_ce32cf0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x08,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32cf4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r13
    mov r14,r4
    mov 0x09,r5
    jsr @r13
    mov r14,r4
    mov 0x0A,r5
    jsr @r13
    mov r14,r4

LAB_ce32cb6:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32cbe:
    mov.l r14,@-r15
    mov 0x18,r0
    mov.l r13,@-r15
    mov r5,r13
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r13),r3
    add 0x01,r3
    mov.b r3,@(r0,r13)
    mov 0x06,r0
    mov.w r0,@(0x1c,r14)
    mov 0x19,r0
    mov 0x00,r3
    mov.b r3,@(r0,r13)
    mov.w @(DAT_ce32ce8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32d08
    mova @(DAT_ce32d04,pc),r0
    bra LAB_ce32d0c
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ce8:
    #data 0x01d2
    #align4

PTR_ce32cec:
    #data loc_8c034e8c
DAT_ce32cf0:
    #data 0x41892492
DAT_ce32cf4:
    #data 0xbf4db6db
PTR_ce32cf8:
    #data loc_8c08e2f8
DAT_ce32cfc:
    #data 0xc0a00000
DAT_ce32d00:
    #data 0x40a00000
DAT_ce32d04:
    #data 0x40855555

;=============================================

LAB_ce32d08:
    mova @(DAT_ce32e50,pc),r0
    fmov.s @r0,fr3

LAB_ce32d0c:
    mov 0x5C,r0
    mov.l @(PTR_ce32e54,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mov 0x08,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32d2a:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32d6a
    mov 0x18,r0
    mov.l @(PTR_ce32e60,pc),r13
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mova @(DAT_ce32e58,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x0B,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32e5c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r13
    mov r14,r4
    mov 0x0C,r5
    jsr @r13
    mov r14,r4
    mov 0x0D,r5
    jsr @r13
    mov r14,r4

LAB_ce32d6a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32d72:
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
    fldi0 fr3
    fcmp/gt fr3,fr2
    bt/s LAB_ce32dc0
    fmov fr2,@(r0,r4)
    mov 0x18,r0
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mova @(DAT_ce32e64,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r4)

LAB_ce32dc0:
    rts
    nop

LAB_ce32dc4:
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
    mov.w @(DAT_ce32e4c,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32e20
    mov 0x18,r0
    mov.l @(PTR_ce32e68,pc),r3
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r4)
    mov.w @(DAT_ce32e4c,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce32e20:
    rts
    nop

LAB_ce32e24:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32e34
    bra LAB_ce33168
    nop

LAB_ce32e34:
    rts
    nop

LAB_ce32e38:
    mov 0x18,r0
    mov r5,r3
    mov.l r5,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce32e6c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e4c:
    #data 0x041c
    #align4

DAT_ce32e50:
    #data 0xc0855555
PTR_ce32e54:
    #data loc_8c034e8c
DAT_ce32e58:
    #data 0x41892492
DAT_ce32e5c:
    #data 0xbf4db6db
PTR_ce32e60:
    #data loc_8c08e2f8
DAT_ce32e64:
    #data 0xbfcdb6db
PTR_ce32e68:
    #data loc_8c0511b4
PTR_ce32e6c:
    #data PTR_ce35b98

;=============================================

LAB_ce32e70:
    mov.l r14,@-r15
    mov 0x18,r0
    mov.l r13,@-r15
    mov r5,r13
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r13),r3
    add 0x01,r3
    mov.b r3,@(r0,r13)
    mov 0x06,r0
    mov.w r0,@(0x1c,r14)
    mov 0x19,r0
    mov 0x00,r3
    mov.b r3,@(r0,r13)
    mov.w @(DAT_ce32fa0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32e9a
    mova @(DAT_ce32fa4,pc),r0
    bra LAB_ce32e9e
    fmov.s @r0,fr3

LAB_ce32e9a:
    mova @(DAT_ce32fa8,pc),r0
    fmov.s @r0,fr3

LAB_ce32e9e:
    mov 0x5C,r0
    mov.l @(PTR_ce32fac,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mov 0x08,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32fb0,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32ec4:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32eda
    mov 0x18,r0
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mov.w r0,@(0x1c,r4)

LAB_ce32eda:
    rts
    nop

LAB_ce32ede:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32f04
    mov 0x18,r0
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r4)
    mov.w @(DAT_ce32fa0,pc),r0
    mov.b @(r0,r4),r3
    mova @(DAT_ce32fb4,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    tst r3,r3
    fmov fr3,@(r0,r4)

LAB_ce32f04:
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
    fadd fr3,fr2
    rts
    fmov fr2,@(r0,r4)

LAB_ce32f22:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32f3a
    mov 0x18,r0
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r4)

LAB_ce32f3a:
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
    fadd fr3,fr2
    rts
    fmov fr2,@(r0,r4)

LAB_ce32f58:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l r5,@r15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32f98
    bsr FUN_ce3297c
    mov r14,r4
    tst r0,r0
    bt LAB_ce32f8e
    mov 0x06,r0
    mov r14,r4
    mov.b r0,@(0x7,r14)
    mov 0x18,r0
    mov.l @r15,r3
    mov 0x00,r2
    mov.b r2,@(r0,r3)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce329e2
    mov.l @r15+,r14

LAB_ce32f8e:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce33168
    mov.l @r15+,r14

LAB_ce32f98:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32fa0:
    #data 0x01d2
    #align4

DAT_ce32fa4:
    #data 0xc1555555
DAT_ce32fa8:
    #data 0x41555555
PTR_ce32fac:
    #data loc_8c034e8c
PTR_ce32fb0:
    #data loc_8c08e2f8
DAT_ce32fb4:
    #data 0x3ed55555

;=============================================

LAB_ce32fb8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce330bc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt/s LAB_ce32fd4
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)

LAB_ce32fd4:
    lds.l @r15+,PR
    mov.l @(PTR_ce330c0,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32fdc:
    mov r4,r3
    mov.l @(PTR_ce330c4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32fee:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce330b2,pc),r4
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add r14,r4
    mov.l @(PTR_ce330c8,pc),r5
    add 0x01,r0
    mov.l @(PTR_ce330cc,pc),r3
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce330b4,pc),r0
    mov.b r0,@(0xa,r4)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce330b6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce33058
    mov 0x02,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce330b8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33028
    mova @(DAT_ce330d0,pc),r0
    bra LAB_ce3302c
    fmov.s @r0,fr3

LAB_ce33028:
    mova @(DAT_ce330d4,pc),r0
    fmov.s @r0,fr3

LAB_ce3302c:
    mov 0x5C,r0
    mov.l @(PTR_ce330e0,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce330d8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x10,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce330dc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce330ec
    mov.l @r15+,r14

LAB_ce33058:
    mov.l @(PTR_ce330e0,pc),r2
    mov 0x16,r5
    mov 0x0F,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3306a
    mov.l @r15+,r14

LAB_ce3306a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce330c0,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce330bc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce330ac
    mov.w @(DAT_ce330b2,pc),r4
    mov 0x00,r0
    fldi0 fr4
    mov 0x00,r5
    add r14,r4
    mov.l @(PTR_ce330e4,pc),r3
    mov.b r0,@(0xb,r4)
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
    mov.l @(PTR_ce330e8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce330ac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce330b2:
    #data 0x02a4
DAT_ce330b4:
    #data 0x00ff
DAT_ce330b6:
    #data 0x041c
DAT_ce330b8:
    #data 0x01d2
    #align4

PTR_ce330bc:
    #data loc_8c034dee
PTR_ce330c0:
    #data FUN_ce34dd0
PTR_ce330c4:
    #data PTR_ce35bac
PTR_ce330c8:
    #data DAT_ce35428
PTR_ce330cc:
    #data FUN_ce34d50
DAT_ce330d0:
    #data 0x40200000
DAT_ce330d4:
    #data 0xc0200000
DAT_ce330d8:
    #data 0x40892492
DAT_ce330dc:
    #data 0xbf4db6db
PTR_ce330e0:
    #data loc_8c034e8c
PTR_ce330e4:
    #data loc_8c035162
PTR_ce330e8:
    #data loc_8c051648

;=============================================

LAB_ce330ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce331f4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce331f8,pc),r2
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
    mov.w @(DAT_ce331de,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33162
    mov.w @(DAT_ce331de,pc),r0
    mov.w @(DAT_ce331e0,pc),r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce331fc,pc),r3
    add r14,r4
    fmov fr3,@(r0,r14)
    mov 0x00,r0
    mov r0,r5
    mov.b r0,@(0xb,r4)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33200,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33162:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33168:
    mov.w @(DAT_ce331e2,pc),r0
    mov.w @(DAT_ce331e0,pc),r6
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce33220
    add r4,r6
    mov.w @(DAT_ce331e6,pc),r0
    mov.w @(DAT_ce331e4,pc),r3
    mov.w @(r0,r4),r7
    and r3,r7
    extu.w r7,r2
    tst r2,r2
    bt LAB_ce33204
    mov.w @(DAT_ce331e8,pc),r0
    mov.w @(DAT_ce331ea,pc),r2
    mov.w @(r0,r4),r1
    extu.w r1,r1
    tst r2,r1
    bt LAB_ce33192
    bra LAB_ce331c6
    mov 0x07,r0

LAB_ce33192:
    mov.w @(DAT_ce331ec,pc),r3
    extu.w r7,r5
    tst r5,r3
    bt LAB_ce331b6
    mov.w @(DAT_ce331ee,pc),r1
    tst r5,r1
    bt LAB_ce331a6
    mov 0x04,r0
    bra LAB_ce33216
    mov.b r0,@(0x7,r4)

LAB_ce331a6:
    mov.w @(DAT_ce331f0,pc),r2
    tst r2,r5
    bt LAB_ce331b0
    bra LAB_ce331b2
    mov 0x05,r0

LAB_ce331b0:
    mov 0x03,r0

LAB_ce331b2:
    bra LAB_ce33216
    mov.b r0,@(0x7,r4)

LAB_ce331b6:
    mov.w @(DAT_ce331ee,pc),r2
    tst r5,r2
    bt LAB_ce331ca
    mov.b @(0x7,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce3321c
    mov 0x01,r0

LAB_ce331c6:
    bra LAB_ce33216
    mov.b r0,@(0x7,r4)

LAB_ce331ca:
    mov.w @(DAT_ce331f0,pc),r3
    tst r3,r5
    bt LAB_ce33204
    mov.b @(0x7,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3321c
    mov 0x02,r0
    bra LAB_ce33216
    mov.b r0,@(0x7,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331de:
    #data 0x041c
DAT_ce331e0:
    #data 0x02a4
DAT_ce331e2:
    #data 0x0525
DAT_ce331e4:
    #data 0x3f60
DAT_ce331e6:
    #data 0x034a
DAT_ce331e8:
    #data 0x034e
DAT_ce331ea:
    #data 0x0360
DAT_ce331ec:
    #data 0x2000
DAT_ce331ee:
    #data 0x0800
DAT_ce331f0:
    #data 0x0400
    #align4

PTR_ce331f4:
    #data FUN_ce34dd0
PTR_ce331f8:
    #data loc_8c034dee
PTR_ce331fc:
    #data loc_8c035162
PTR_ce33200:
    #data loc_8c05176e

;=============================================

LAB_ce33204:
    mov 0x19,r0
    mov.b @(r0,r6),r2
    tst r2,r2
    bf LAB_ce3321c
    mov.b @(0x7,r4),r0
    tst r0,r0
    bt LAB_ce3321c
    mov 0x00,r0
    mov.b r0,@(0x7,r4)

LAB_ce33216:
    mov 0x18,r0
    mov 0x00,r3
    mov.b r3,@(r0,r6)

LAB_ce3321c:
    rts
    nop

LAB_ce33220:
    mov.w @(DAT_ce332e2,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce332ec,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce33234:
    mov.w @(DAT_ce332e4,pc),r0
    mov.w @(DAT_ce332e6,pc),r6
    mov.l @(r0,r4),r5
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    fmov.s @(r0,r5),fr4
    mova @(DAT_ce332f0,pc),r0
    fsub fr3,fr4
    fmov.s @r0,fr3
    fcmp/gt fr4,fr3
    bt/s LAB_ce33254
    add r4,r6
    mova @(DAT_ce332f4,pc),r0
    fmov.s @r0,fr2
    fcmp/gt fr2,fr4
    bf LAB_ce33258

LAB_ce33254:
    bra LAB_ce3326a
    mov 0x07,r0

LAB_ce33258:
    mova @(DAT_ce332f8,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fmov.s @(r0,r5),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bt LAB_ce3326e
    mov 0x04,r0

LAB_ce3326a:
    bra LAB_ce3327a
    mov.b r0,@(0x7,r4)

LAB_ce3326e:
    mov.b @(0x7,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce33280
    mov 0x01,r0
    mov.b r0,@(0x7,r4)

LAB_ce3327a:
    mov 0x18,r0
    mov 0x00,r3
    mov.b r3,@(r0,r6)

LAB_ce33280:
    rts
    nop

LAB_ce33284:
    mov.w @(DAT_ce332e6,pc),r5
    mov 0x1B,r0
    add r4,r5
    mov.b @(r0,r5),r3
    add 0xFF,r3
    mov.b r3,@(r0,r5)
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce332aa
    mov.l @(0x14,r5),r6
    mov.w @r6+,r0
    mov.b r0,@(0x7,r4)
    mov 0x1B,r0
    mov.w @r6+,r3
    mov.b r3,@(r0,r5)
    mov 0x18,r0
    mov 0x00,r3
    mov.l r6,@(0x14,r5)
    mov.b r3,@(r0,r5)

LAB_ce332aa:
    rts
    nop

LAB_ce332ae:
    mov.b @(0x7,r4),r0
    mov.w @(DAT_ce332e6,pc),r5
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce332c4
    add r4,r5
    mov 0x02,r0
    mov.b r0,@(0x7,r4)
    mov 0x18,r0
    mov 0x00,r3
    mov.b r3,@(r0,r5)

LAB_ce332c4:
    rts
    nop

LAB_ce332c8:
    mov.w @(DAT_ce332e8,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce332fc,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce332e2:
    #data 0x01a3
DAT_ce332e4:
    #data 0x020c
DAT_ce332e6:
    #data 0x02a4
DAT_ce332e8:
    #data 0x0364
    #align4

PTR_ce332ec:
    #data PTR_ce35bb8
DAT_ce332f0:
    #data 0xc3200000
DAT_ce332f4:
    #data 0x43200000
DAT_ce332f8:
    #data 0x42892492
PTR_ce332fc:
    #data PTR_ce35bc4

;=============================================

LAB_ce33300:
    mov.w @(DAT_ce33406,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce33402,pc),r4
    extu.b r0,r0
    mov.w @(DAT_ce33404,pc),r6
    cmp/eq 0x06,r0
    bf/s LAB_ce33320
    add r14,r4
    mov.w @(DAT_ce33408,pc),r0
    mov 0x10,r3
    mov.b r6,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33320:
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x18,r0
    mov.b r5,@(r0,r4)
    mov r6,r0
    nop
    mov.b r0,@(0x4,r4)
    mov 0x4E,r3
    mov.b r0,@(0xa,r4)
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3340a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33414,pc),r3
    mov.l r5,@(r0,r14)
    mov 0x01,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33418,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3341c,pc),r3
    mov 0x16,r5
    mov 0x11,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3340c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3338c
    mov.l @(PTR_ce33420,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3338c:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce33392:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3340e,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov.w @(DAT_ce33402,pc),r13
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33410,pc),r0
    add r14,r13
    mov.l @(PTR_ce33424,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33412,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce333f8
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce3342c,pc),r3
    add 0x01,r0
    mov.l @(PTR_ce33428,pc),r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33408,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x04,r0
    mov.b r0,@(0xb,r13)
    mov.w @(DAT_ce33404,pc),r0
    mov.b r0,@(0xa,r13)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33430,pc),r0
    mov.l @(PTR_ce33438,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33434,pc),r0
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

LAB_ce333f8:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33402:
    #data 0x02a4
DAT_ce33404:
    #data 0x00ff
DAT_ce33406:
    #data 0x0255
DAT_ce33408:
    #data 0x03f0
DAT_ce3340a:
    #data 0x01a1
DAT_ce3340c:
    #data 0x01f9
DAT_ce3340e:
    #data 0x03f8
DAT_ce33410:
    #data 0x0328
DAT_ce33412:
    #data 0x0141
    #align4

PTR_ce33414:
    #data loc_8c2896b0
PTR_ce33418:
    #data loc_8c0db83e
PTR_ce3341c:
    #data loc_8c034e8c
PTR_ce33420:
    #data loc_8c05115a
PTR_ce33424:
    #data loc_8c034dee
PTR_ce33428:
    #data DAT_ce35488
PTR_ce3342c:
    #data FUN_ce34d50
DAT_ce33430:
    #data 0xc1555555
DAT_ce33434:
    #data 0x42d20000
PTR_ce33438:
    #data loc_8c050834

;=============================================

LAB_ce3343c:
    mov.w @(DAT_ce33568,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3356a,pc),r0
    mov.w @(DAT_ce33566,pc),r13
    mov.l @(PTR_ce33574,pc),r3
    mov.b r2,@(r0,r14)
    add r14,r13
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce334ea
    mov.b @(0x6,r14),r0
    mov 0x00,r12
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.b r0,@(0xa,r13)
    mov 0x19,r0
    mov.b r12,@(r0,r13)
    mov 0x1C,r0
    mov.b r12,@(r0,r13)
    mov 0x01,r3
    mov.w @(DAT_ce3356c,pc),r0
    mov r13,r5
    add 0x1E,r5
    mov.b r3,@(r0,r14)
    mov 0x06,r6
    mov.w @(DAT_ce3356e,pc),r0
    mov.l @(PTR_ce33578,pc),r3
    mov.w r0,@(0x1e,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3357c,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce33580,pc),r1
    and 0x03,r0
    shll2 r0
    mov.l @(r0,r1),r3
    mov 0x1B,r0
    mov 0x01,r2
    mov.l r3,@(0x14,r13)
    mov.l @(PTR_ce33584,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33588,pc),r2
    mov r12,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3358c,pc),r13
    mov r12,r5
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
    mov.l @(PTR_ce33594,pc),r3
    mov.l @(PTR_ce33590,pc),r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33598,pc),r2
    mov 0x16,r5
    mov r14,r4
    mov 0x12,r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce334ea:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce334f4:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33568,pc),r0
    mov 0x02,r3
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3356a,pc),r0
    mov.w @(DAT_ce33566,pc),r13
    mov.l @(PTR_ce33574,pc),r3
    mov.b r2,@(r0,r14)
    add r14,r13
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3359c,pc),r3
    mov 0x05,r1
    mov.b @r3,r2
    extu.b r2,r2
    cmp/ge r1,r2
    bf/s LAB_ce3352a
    mov 0x00,r12
    mov r12,r0
    nop
    mov.w r0,@(0x1e,r13)

LAB_ce3352a:
    mov.w @(0x1e,r13),r0
    mov.l @(PTR_ce33598,pc),r11
    tst r0,r0
    bf LAB_ce335a4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x19,r0
    mov.b r12,@(r0,r13)
    mov.w @(DAT_ce33570,pc),r0
    mov.l @(PTR_ce335a0,pc),r5
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce33572,pc),r0
    mov.l @(PTR_ce33594,pc),r3
    mov.b r12,@(r0,r14)
    add 0x01,r0
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x16,r5
    mov 0x21,r6
    jsr @r11
    mov r14,r4
    bra LAB_ce3362a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33566:
    #data 0x02a4
DAT_ce33568:
    #data 0x03f8
DAT_ce3356a:
    #data 0x0328
DAT_ce3356c:
    #data 0x0201
DAT_ce3356e:
    #data 0x00b4
DAT_ce33570:
    #data 0x03f9
DAT_ce33572:
    #data 0x0327
    #align4

PTR_ce33574:
    #data FUN_ce34dd0
PTR_ce33578:
    #data loc_8c0f047c
PTR_ce3357c:
    #data loc_8c03319e
PTR_ce33580:
    #data PTR_ce35bdc
PTR_ce33584:
    #data loc_8c05218a
PTR_ce33588:
    #data loc_8c035162
PTR_ce3358c:
    #data loc_8c08e8e0
PTR_ce33590:
    #data DAT_ce354d8
PTR_ce33594:
    #data FUN_ce34d50
PTR_ce33598:
    #data loc_8c034e8c
PTR_ce3359c:
    #data loc_8c2895f0
PTR_ce335a0:
    #data DAT_ce35538

;=============================================

LAB_ce335a4:
    mov 0x1C,r0
    mov.b @(r0,r13),r2
    tst r2,r2
    bf LAB_ce335d8
    bsr FUN_ce3297c
    mov r14,r4
    tst r0,r0
    bt LAB_ce335d8
    mov 0x18,r0
    mov 0x01,r4
    mov.b r4,@(r0,r13)
    mov r4,r3
    mov.w @(DAT_ce336ac,pc),r0
    mov 0x16,r5
    mov 0x14,r6
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce336ae,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mov 0x19,r0
    mov.b r3,@(r0,r13)
    jsr @r11
    mov r14,r4

LAB_ce335d8:
    mov 0x18,r0
    mov.b @(r0,r13),r3
    tst r3,r3
    bt LAB_ce335fc
    mov.l @(PTR_ce336bc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce335fc
    mov 0x18,r0
    mov.b r12,@(r0,r13)
    mov 0x19,r0
    mov 0x16,r5
    mov.b r12,@(r0,r13)
    mov 0x12,r6
    jsr @r11
    mov r14,r4

LAB_ce335fc:
    bsr FUN_ce33808
    mov r14,r4
    mov.w @(DAT_ce336b0,pc),r2
    mov r0,r4
    extu.b r0,r0
    cmp/eq r2,r0
    bt LAB_ce3362a
    mov.w @(DAT_ce336b2,pc),r5
    mov 0x22,r0
    mov.l @(PTR_ce336c0,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce336b4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3362a
    mov.w @(DAT_ce336b4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce3362a:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33636:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce336bc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt/s LAB_ce33652
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)

LAB_ce33652:
    lds.l @r15+,PR
    mov.l @(PTR_ce336c4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3365a:
    mov r4,r3
    mov.l @(PTR_ce336c8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3366c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r3
    mov.w @(DAT_ce336b6,pc),r4
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add r14,r4
    mov.l @(PTR_ce336cc,pc),r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce336b8,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce336b0,pc),r0
    mov.l @(PTR_ce336d0,pc),r3
    mov.b r0,@(0xa,r4)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce336b4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce33708
    mov 0x02,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce336ac,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce336d8
    mova @(DAT_ce336d4,pc),r0
    bra LAB_ce336dc
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce336ac:
    #data 0x01d2
DAT_ce336ae:
    #data 0x0130
DAT_ce336b0:
    #data 0x00ff
DAT_ce336b2:
    #data 0x02bc
DAT_ce336b4:
    #data 0x041c
DAT_ce336b6:
    #data 0x02a4
DAT_ce336b8:
    #data 0x0201
    #align4

PTR_ce336bc:
    #data loc_8c034dee
PTR_ce336c0:
    #data loc_8c033718
PTR_ce336c4:
    #data FUN_ce34dd0
PTR_ce336c8:
    #data PTR_ce35bec
PTR_ce336cc:
    #data DAT_ce35588
PTR_ce336d0:
    #data FUN_ce34d50
DAT_ce336d4:
    #data 0x40200000

;=============================================

LAB_ce336d8:
    mova @(DAT_ce337e4,pc),r0
    fmov.s @r0,fr3

LAB_ce336dc:
    mov 0x5C,r0
    mov.l @(PTR_ce337f0,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce337e8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x1A,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce337ec,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce33762
    mov.l @r15+,r14

LAB_ce33708:
    mov.l @(PTR_ce337f0,pc),r2
    mov 0x16,r5
    mov 0x19,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3371a
    mov.l @r15+,r14

LAB_ce3371a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce337f4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce337f8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3375c
    mov.w @(DAT_ce337de,pc),r4
    mov 0x00,r0
    fldi0 fr4
    mov 0x00,r5
    add r14,r4
    mov.l @(PTR_ce337fc,pc),r3
    mov.b r0,@(0xb,r4)
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
    mov.l @(PTR_ce33800,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3375c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33762:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce337f4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce337f8,pc),r2
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
    mov.w @(DAT_ce337e0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce337d8
    mov.w @(DAT_ce337e0,pc),r0
    mov.w @(DAT_ce337de,pc),r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce337fc,pc),r3
    add r14,r4
    fmov fr3,@(r0,r14)
    mov 0x00,r0
    mov r0,r5
    mov.b r0,@(0xb,r4)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33804,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce337d8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce337de:
    #data 0x02a4
DAT_ce337e0:
    #data 0x041c
    #align4

DAT_ce337e4:
    #data 0xc0200000
DAT_ce337e8:
    #data 0x40892492
DAT_ce337ec:
    #data 0xbf4db6db
PTR_ce337f0:
    #data loc_8c034e8c
PTR_ce337f4:
    #data FUN_ce34dd0
PTR_ce337f8:
    #data loc_8c034dee
PTR_ce337fc:
    #data loc_8c035162
PTR_ce33800:
    #data loc_8c051648
PTR_ce33804:
    #data loc_8c05176e

;=============================================

FUN_ce33808:
    mov.w @(DAT_ce33938,pc),r0
    mov.w @(DAT_ce33936,pc),r5
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce3384c
    add r4,r5
    mov 0x00,r0
    mov.w @(DAT_ce3393c,pc),r3
    mov.b r0,@(0xc,r5)
    mov.w @(DAT_ce3393a,pc),r0
    mov.w @(r0,r4),r7
    extu.w r7,r6
    tst r6,r3
    bt/s LAB_ce3382c
    mov 0x60,r3
    mov.b @(0xc,r5),r0
    or 0x01,r0
    mov.b r0,@(0xc,r5)

LAB_ce3382c:
    tst r3,r6
    bt LAB_ce33836
    mov.b @(0xc,r5),r0
    or 0x02,r0
    mov.b r0,@(0xc,r5)

LAB_ce33836:
    mov.w @(DAT_ce3393e,pc),r0
    mov 0xF6,r2
    mov.w @(DAT_ce33940,pc),r3
    mov.w @(r0,r4),r4
    mov.l @(PTR_ce3394c,pc),r0
    extu.w r4,r4
    and r3,r4
    shad r2,r4
    extu.w r4,r4
    rts
    mov.b @(r0,r4),r0

LAB_ce3384c:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33942,pc),r1
    mov.l @(PTR_ce33950,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce33864:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33944,pc),r0
    mov r4,r14
    mov.w @(DAT_ce33936,pc),r4
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce33946,pc),r0
    add r14,r4
    mov.l r3,@r15
    mov.l @(PTR_ce33954,pc),r3
    mov.b r0,@(0xc,r4)
    mov r14,r4
    mov.l @r15,r5
    add 0x34,r5
    jsr @r3
    add 0x34,r4
    extu.b r0,r4
    shlr2 r4
    shlr r4
    mov r4,r0
    nop
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33898:
    mov 0x22,r0
    mov.w @(DAT_ce33936,pc),r5
    mov.b @(r0,r4),r6
    mov 0x1B,r0
    add r4,r5
    mov.b @(r0,r5),r3
    add 0xFF,r3
    mov.b r3,@(r0,r5)
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce338cc
    mov.l @(0x14,r5),r7
    mov.w @r7+,r0
    mov.b r0,@(0xc,r5)
    mov.w @(DAT_ce33948,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce338c4
    mov.w @r7+,r6
    neg r6,r0
    mov 0x1F,r6
    and r0,r6

LAB_ce338c4:
    mov.w @r7+,r3
    mov 0x1B,r0
    mov.b r3,@(r0,r5)
    mov.l r7,@(0x14,r5)

LAB_ce338cc:
    rts
    mov r6,r0

LAB_ce338d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33944,pc),r0
    mov r4,r14
    mov.w @(DAT_ce33936,pc),r4
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce33946,pc),r0
    add r14,r4
    mov.l r3,@r15
    mov.l @(PTR_ce33954,pc),r3
    mov.b r0,@(0xc,r4)
    mov r14,r4
    mov.l @r15,r5
    add 0x34,r5
    jsr @r3
    add 0x34,r4
    extu.b r0,r4
    mov.w @(DAT_ce3394a,pc),r0
    shlr2 r4
    shlr r4
    add r4,r0
    mov 0x1F,r4
    and r0,r4
    mov r4,r0
    nop
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3390c:
    add 0xFC,r15
    mov.w @(DAT_ce33936,pc),r3
    mov.l @(PTR_ce33958,pc),r0
    add r4,r3
    mov r3,r2
    mov.l r3,@r15
    mov.b @r2,r3
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    add 0x04,r15

LAB_ce33924:
    mov r4,r3
    mov.l @(PTR_ce3395c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33936:
    #data 0x02a4
DAT_ce33938:
    #data 0x0525
DAT_ce3393a:
    #data 0x0348
DAT_ce3393c:
    #data 0x0300
DAT_ce3393e:
    #data 0x0340
DAT_ce33940:
    #data 0x3c00
DAT_ce33942:
    #data 0x01a3
DAT_ce33944:
    #data 0x020c
DAT_ce33946:
    #data 0x00ff
DAT_ce33948:
    #data 0x01d2
DAT_ce3394a:
    #data 0x00f0
    #align4

PTR_ce3394c:
    #data DAT_ce35bf8
PTR_ce33950:
    #data PTR_ce35c08
PTR_ce33954:
    #data loc_8c03362c
PTR_ce33958:
    #data PTR_ce35c14
PTR_ce3395c:
    #data PTR_ce35c20

;=============================================

LAB_ce33960:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce33a4e,pc),r4
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add r14,r4
    mov.l @(PTR_ce33a5c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33a50,pc),r0
    mov.b r0,@(0x4,r4)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33a60,pc),r2
    mov 0x01,r5
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
    mov.w @(DAT_ce33a52,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce33a64,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33a54,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33a56,pc),r0
    mov 0x39,r2
    mov.l @(PTR_ce33a68,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x09,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33a6c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33a70,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce339ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33a74,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33a58,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33a14
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33a58,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce33a78,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33a14:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33a1a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33a74,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33a34
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33a7c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33a34:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33a3c:
    mov r4,r3
    mov.l @(PTR_ce33a80,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a4e:
    #data 0x02a4
DAT_ce33a50:
    #data 0x00ff
DAT_ce33a52:
    #data 0x041c
DAT_ce33a54:
    #data 0x01fc
DAT_ce33a56:
    #data 0x01a1
DAT_ce33a58:
    #data 0x0141
    #align4

PTR_ce33a5c:
    #data loc_8c05218a
PTR_ce33a60:
    #data loc_8c035162
PTR_ce33a64:
    #data loc_8c056de4
PTR_ce33a68:
    #data loc_8c2896b0
PTR_ce33a6c:
    #data loc_8c034e8c
PTR_ce33a70:
    #data loc_8c05115a
PTR_ce33a74:
    #data loc_8c034dee
PTR_ce33a78:
    #data loc_8c08bf48
PTR_ce33a7c:
    #data loc_8c051648
PTR_ce33a80:
    #data PTR_ce35c2c

;=============================================

LAB_ce33a84:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33bc4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33bc8,pc),r2
    mov 0x01,r5
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
    mov.w @(DAT_ce33bb8,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce33bcc,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33bba,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33bbc,pc),r0
    mov 0x3A,r2
    mov.l @(PTR_ce33bd0,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x0A,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33bd4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33bd8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce33b08:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33bdc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33bbe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33b30
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33bbe,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce33be0,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33b30:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33b36:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33bdc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33b50
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33be4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33b50:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33b58:
    mov r4,r3
    mov.l @(PTR_ce33be8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33b6a:
    mov r4,r3
    mov.l @(PTR_ce33bec,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33b7c:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33bc0,pc),r4
    mov.l r13,@-r15
    add r14,r4
    sts.l PR,@-r15
    mov.b @(0x8,r4),r0
    tst r0,r0
    bt LAB_ce33bf0
    mov 0xFF,r0
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce33bc2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce33baa
    mov 0x02,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce33dd6
    mov.l @r15+,r14

LAB_ce33baa:
    mov 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce33cbe
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33bb8:
    #data 0x041c
DAT_ce33bba:
    #data 0x01fc
DAT_ce33bbc:
    #data 0x01a1
DAT_ce33bbe:
    #data 0x0141
DAT_ce33bc0:
    #data 0x02a4
DAT_ce33bc2:
    #data 0x01f9
    #align4

PTR_ce33bc4:
    #data loc_8c05218a
PTR_ce33bc8:
    #data loc_8c035162
PTR_ce33bcc:
    #data loc_8c056de4
PTR_ce33bd0:
    #data loc_8c2896b0
PTR_ce33bd4:
    #data loc_8c034e8c
PTR_ce33bd8:
    #data loc_8c05115a
PTR_ce33bdc:
    #data loc_8c034dee
PTR_ce33be0:
    #data loc_8c08c850
PTR_ce33be4:
    #data loc_8c051648
PTR_ce33be8:
    #data PTR_ce35c38
PTR_ce33bec:
    #data PTR_ce35c44

;=============================================

LAB_ce33bf0:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33cd8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33cdc,pc),r2
    mov 0x01,r5
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
    mov.w @(DAT_ce33cd0,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce33ce0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33cd2,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33cd4,pc),r0
    mov 0x3A,r2
    mov.l @(PTR_ce33ce4,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x0B,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33ce8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33cec,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce33c6e
    mov.l @r15+,r14

LAB_ce33c6e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33cf0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33cd6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33c96
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33cd6,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce33cf4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33c96:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33c9c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33cf0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33cb6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33cf8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33cb6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33cbe:
    mov r4,r3
    mov.l @(PTR_ce33cfc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33cd0:
    #data 0x041c
DAT_ce33cd2:
    #data 0x01fc
DAT_ce33cd4:
    #data 0x01a1
DAT_ce33cd6:
    #data 0x0141
    #align4

PTR_ce33cd8:
    #data loc_8c05218a
PTR_ce33cdc:
    #data loc_8c035162
PTR_ce33ce0:
    #data loc_8c056de4
PTR_ce33ce4:
    #data loc_8c2896b0
PTR_ce33ce8:
    #data loc_8c034e8c
PTR_ce33cec:
    #data loc_8c05115a
PTR_ce33cf0:
    #data loc_8c034dee
PTR_ce33cf4:
    #data loc_8c08ce7c
PTR_ce33cf8:
    #data loc_8c051648
PTR_ce33cfc:
    #data PTR_ce35c50

;=============================================

LAB_ce33d00:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33df4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33df8,pc),r2
    mov 0x01,r5
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
    mov.w @(DAT_ce33de8,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce33dfc,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33dea,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33dec,pc),r0
    mov 0x48,r2
    mov.l @(PTR_ce33e00,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x0D,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33e04,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33e08,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce33d84:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33dee,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.l @(PTR_ce33e0c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33df0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33dac
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    mov.l @r15,r3
    mov.b r0,@(0x9,r3)

LAB_ce33dac:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33db4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33e0c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33dce
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33e10,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33dce:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33dd6:
    mov r4,r3
    mov.l @(PTR_ce33e14,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33de8:
    #data 0x041c
DAT_ce33dea:
    #data 0x01fc
DAT_ce33dec:
    #data 0x01a1
DAT_ce33dee:
    #data 0x02a4
DAT_ce33df0:
    #data 0x0141
    #align4

PTR_ce33df4:
    #data loc_8c05218a
PTR_ce33df8:
    #data loc_8c035162
PTR_ce33dfc:
    #data loc_8c056de4
PTR_ce33e00:
    #data loc_8c2896b0
PTR_ce33e04:
    #data loc_8c034e8c
PTR_ce33e08:
    #data loc_8c05115a
PTR_ce33e0c:
    #data loc_8c034dee
PTR_ce33e10:
    #data loc_8c051648
PTR_ce33e14:
    #data PTR_ce35c5c

;=============================================

LAB_ce33e18:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33f20,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33f24,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce33f28,pc),r0
    fldi0 fr2
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x05,r5
    mov.l @(DAT_ce33f2c,pc),r1
    fdiv fr4,fr3
    mov.l @(PTR_ce33f30,pc),r3
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
    mov.w @(DAT_ce33f18,pc),r0
    mov 0x48,r2
    mov 0x00,r4
    mov.l @(PTR_ce33f34,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x15,r5
    mov.b @(0x2,r14),r0
    mov 0x0E,r6
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33f38,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce33e98:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33f1a,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.l @(PTR_ce33f3c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33f40,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33f1c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33ec6
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    mov.l @r15,r3
    mov.b r0,@(0x9,r3)

LAB_ce33ec6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33ece:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33f3c,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce33f40,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33ef8
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33f44,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33ef8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33efe:
    mov.w @(DAT_ce33f1e,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33f48,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33f18:
    #data 0x01a1
DAT_ce33f1a:
    #data 0x02a4
DAT_ce33f1c:
    #data 0x0141
DAT_ce33f1e:
    #data 0x0364
    #align4

PTR_ce33f20:
    #data loc_8c05218a
PTR_ce33f24:
    #data loc_8c035162
DAT_ce33f28:
    #data 0x41000000
DAT_ce33f2c:
    #data 0x42800000
PTR_ce33f30:
    #data loc_8c056de4
PTR_ce33f34:
    #data loc_8c2896b0
PTR_ce33f38:
    #data loc_8c034e8c
PTR_ce33f3c:
    #data FUN_ce32202
PTR_ce33f40:
    #data loc_8c034dee
PTR_ce33f44:
    #data loc_8c05176e
PTR_ce33f48:
    #data PTR_ce35c68

;=============================================

LAB_ce33f4c:
    mov.w @(DAT_ce34074,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34070,pc),r4
    extu.b r0,r0
    mov.w @(DAT_ce34072,pc),r5
    cmp/eq 0x06,r0
    bf/s LAB_ce33f6e
    add r14,r4
    mov.w @(DAT_ce34076,pc),r0
    mov 0x10,r3
    mov.b r5,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33f6e:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r5,r0
    nop
    mov.b r0,@(0x4,r4)
    mov.b r0,@(0xa,r4)
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce34084,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34088,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce34078,pc),r0
    mov 0x46,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3408c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce34074,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bt LAB_ce33fe0
    mov.l @(PTR_ce34090,pc),r13
    mov 0x04,r5
    jsr @r13
    mov r14,r4
    mov 0x00,r5
    jsr @r13
    mov r14,r4
    mov 0x02,r5
    jsr @r13
    mov r14,r4

LAB_ce33fe0:
    mov.l @(PTR_ce34094,pc),r3
    mov 0x16,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3407a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce34002
    mov.w @(DAT_ce3407c,pc),r0
    mov.l @(PTR_ce34098,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce34002:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce3400a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce3407e,pc),r0
    mov r4,r14
    mov.w @(DAT_ce34070,pc),r3
    mov 0x02,r2
    add r14,r3
    mov.l r3,@r15
    mov 0x05,r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce34080,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce34074,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce34032
    bra LAB_ce34034
    mov 0x02,r2

LAB_ce34032:
    mov 0x00,r2

LAB_ce34034:
    mov.w @(DAT_ce34082,pc),r0
    mov.l @(PTR_ce3409c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce340e2
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce340a0,pc),r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34076,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x06,r0
    mov.l @r15,r3
    mov.b r0,@(0xb,r3)
    bsr FUN_ce34d50
    mov r14,r4
    mov.w @(DAT_ce3407a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce340a4
    mov 0x16,r5
    bra LAB_ce340a6
    mov 0x01,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34070:
    #data 0x02a4
DAT_ce34072:
    #data 0x00ff
DAT_ce34074:
    #data 0x0255
DAT_ce34076:
    #data 0x03f0
DAT_ce34078:
    #data 0x01a1
DAT_ce3407a:
    #data 0x01f9
DAT_ce3407c:
    #data 0x041c
DAT_ce3407e:
    #data 0x03f8
DAT_ce34080:
    #data 0x0328
DAT_ce34082:
    #data 0x03f1
    #align4

PTR_ce34084:
    #data loc_8c05218a
PTR_ce34088:
    #data loc_8c035162
PTR_ce3408c:
    #data loc_8c2896b0
PTR_ce34090:
    #data loc_8c0db83e
PTR_ce34094:
    #data loc_8c034e8c
PTR_ce34098:
    #data loc_8c05115a
PTR_ce3409c:
    #data loc_8c034dee
PTR_ce340a0:
    #data DAT_ce350c8

;=============================================

LAB_ce340a4:
    mov 0x02,r6

LAB_ce340a6:
    mov.l @(PTR_ce341d0,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x2,r14),r0
    tst r0,r0
    bf/s LAB_ce340b8
    mov 0x0D,r5
    bra LAB_ce340ba
    mov 0x03,r6

LAB_ce340b8:
    mov 0x04,r6

LAB_ce340ba:
    mov.l @(PTR_ce341d4,pc),r2
    jsr @r2
    mov r14,r4
    mova @(DAT_ce341d8,pc),r0
    mov.l @(PTR_ce341e0,pc),r3
    fmov.s @r0,fr3
    mov 0x04,r0
    mov r15,r5
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce341dc,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    mov 0x01,r6
    fmov fr3,@(r0,r15)
    mov 0x0C,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce340e2:
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce340ea:
    mov.w @(DAT_ce341ca,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.w @(DAT_ce341c8,pc),r5
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce341cc,pc),r0
    add r4,r5
    mov.b r2,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x00,r0
    mov.b r0,@(0xa,r5)

LAB_ce34104:
    mov.w @(DAT_ce341ca,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce341cc,pc),r0
    mov.l @(PTR_ce341e4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce341ce,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3413e
    mov.b @(0x6,r14),r0
    mov 0x2D,r5
    mov.l @(PTR_ce341e8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce341ec,pc),r2
    mov 0x1A,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3413e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34144:
    mov.w @(DAT_ce341ca,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce341cc,pc),r0
    mov.l @(PTR_ce341e4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce341ce,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce34174
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce341f0,pc),r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    bra FUN_ce34d50
    mov.l @r15+,r14

LAB_ce34174:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3417a:
    mov.w @(DAT_ce341ca,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce341cc,pc),r0
    mov.b r2,@(r0,r14)
    bsr FUN_ce34dd0
    mov r14,r4
    mov.l @(PTR_ce341e4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce341ce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce341c2
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce341f4,pc),r3
    add 0x01,r0
    jsr @r3
    mov.b r0,@(0x6,r14)
    mov 0x04,r0
    mov.l @(PTR_ce341f8,pc),r5
    mov.w r0,@(0x1e,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    bsr FUN_ce34d50
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce341ec,pc),r2
    mov 0x09,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce341c2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce341c8:
    #data 0x02a4
DAT_ce341ca:
    #data 0x03f8
DAT_ce341cc:
    #data 0x0328
DAT_ce341ce:
    #data 0x0141
    #align4

PTR_ce341d0:
    #data loc_8c034e8c
PTR_ce341d4:
    #data loc_8c02fec4
DAT_ce341d8:
    #data 0xc1555555
DAT_ce341dc:
    #data 0x42d20000
PTR_ce341e0:
    #data loc_8c050834
PTR_ce341e4:
    #data loc_8c034dee
PTR_ce341e8:
    #data loc_8c042008
PTR_ce341ec:
    #data loc_8c0d8840
PTR_ce341f0:
    #data DAT_ce355e8
PTR_ce341f4:
    #data loc_8c02fd26
PTR_ce341f8:
    #data DAT_ce35140

;=============================================

LAB_ce341fc:
    mov.w @(DAT_ce34330,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x22,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add r14,r1
    mov.w @(DAT_ce34332,pc),r0
    mov.l @(PTR_ce3433c,pc),r3
    mov.b r2,@(r0,r14)
    mov.l @r3,r0
    mov.l @(PTR_ce34340,pc),r2
    mov.l @(0x1c,r0),r0
    and 0x01,r0
    mov.b r0,@r1
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce34334,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34242
    mov.b @(0x6,r14),r0
    mov 0x03,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce34e02
    mov r14,r4
    mov 0x04,r5
    bsr FUN_ce34e02
    mov r14,r4
    mov 0x05,r5
    bsr FUN_ce34e02
    mov r14,r4

LAB_ce34242:
    bsr FUN_ce34554
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce34dd0
    mov.l @r15+,r14

LAB_ce3424e:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce34330,pc),r0
    mov 0x02,r2
    mov.w @(DAT_ce34336,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov 0x05,r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce34332,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34340,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce342de
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x12,r0
    mov.w r0,@(0x1e,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.l @r15,r3
    mov r13,r0
    nop
    mov.b r0,@(0xc,r3)
    mov 0x3C,r0
    mov.l @(PTR_ce34344,pc),r5
    mov.w r0,@(0x1c,r14)
    bsr FUN_ce34d50
    mov r14,r4
    mov.w @(DAT_ce34338,pc),r0
    mov 0x44,r2
    mov.l @(PTR_ce34348,pc),r3
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
    mov.l @(PTR_ce3434c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34350,pc),r3
    mov 0x48,r5
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x16,r5
    mov 0x03,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce34354,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce342de:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce342e8:
    mov.w @(DAT_ce34330,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce34332,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce34320
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce34344,pc),r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce34d50
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34354,pc),r2
    mov r14,r4
    mov 0x04,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce34320:
    mov.w @(0x1c,r14),r0
    tst 0x01,r0
    bt/s LAB_ce34358
    mov r14,r4
    mov.w @(DAT_ce34338,pc),r0
    mov 0x4C,r2
    bra LAB_ce3435e
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34330:
    #data 0x03f8
DAT_ce34332:
    #data 0x0328
DAT_ce34334:
    #data 0x0141
DAT_ce34336:
    #data 0x02a4
DAT_ce34338:
    #data 0x01a1
    #align4

PTR_ce3433c:
    #data loc_8c26823c
PTR_ce34340:
    #data loc_8c034dee
PTR_ce34344:
    #data DAT_ce351c0
PTR_ce34348:
    #data loc_8c2896b0
PTR_ce3434c:
    #data loc_8c08f524
PTR_ce34350:
    #data loc_8c04223a
PTR_ce34354:
    #data loc_8c034e8c

;=============================================

LAB_ce34358:
    mov.w @(DAT_ce3445c,pc),r0
    mov 0x44,r1
    mov.b r1,@(r0,r14)

LAB_ce3435e:
    mov.l @(PTR_ce34470,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce3445e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34380
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x04,r5
    mov.l @(PTR_ce34474,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34474,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4

LAB_ce34380:
    bsr FUN_ce345d0
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce34dd0
    mov.l @r15+,r14

LAB_ce3438c:
    mov.w @(DAT_ce34460,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce34462,pc),r0
    mov.l @(PTR_ce34470,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce343c8
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce34464,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce34466,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce343c8:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce34dd0
    mov.l @r15+,r14

LAB_ce343d0:
    mov r4,r3
    mov.l @(PTR_ce34478,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce343e2:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce34468,pc),r4
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add r14,r4
    mov.l @(PTR_ce3447c,pc),r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3446a,pc),r0
    mov.b r0,@(0xa,r4)
    bsr FUN_ce34d50
    mov r14,r4
    mov.w @(DAT_ce3446c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce3444a
    mov 0x02,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3446e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3441a
    mova @(DAT_ce34480,pc),r0
    bra LAB_ce3441e
    fmov.s @r0,fr3

LAB_ce3441a:
    mova @(DAT_ce34484,pc),r0
    fmov.s @r0,fr3

LAB_ce3441e:
    mov 0x5C,r0
    mov.l @(PTR_ce34490,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34488,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x06,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3448c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce344da
    mov.l @r15+,r14

LAB_ce3444a:
    mov.l @(PTR_ce34490,pc),r2
    mov 0x16,r5
    mov 0x05,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce34494
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3445c:
    #data 0x01a1
DAT_ce3445e:
    #data 0x0141
DAT_ce34460:
    #data 0x03f8
DAT_ce34462:
    #data 0x0328
DAT_ce34464:
    #data 0x03f9
DAT_ce34466:
    #data 0x0327
DAT_ce34468:
    #data 0x02a4
DAT_ce3446a:
    #data 0x00ff
DAT_ce3446c:
    #data 0x041c
DAT_ce3446e:
    #data 0x01d2
    #align4

PTR_ce34470:
    #data loc_8c034dee
PTR_ce34474:
    #data loc_8c08f954
PTR_ce34478:
    #data PTR_ce35c94
PTR_ce3447c:
    #data DAT_ce35240
DAT_ce34480:
    #data 0x40200000
DAT_ce34484:
    #data 0xc0200000
DAT_ce34488:
    #data 0x40892492
DAT_ce3448c:
    #data 0xbf4db6db
PTR_ce34490:
    #data loc_8c034e8c

;=============================================

LAB_ce34494:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce34dd0
    mov r4,r14
    mov.l @(PTR_ce345b8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce344d4
    mov.w @(DAT_ce345b2,pc),r4
    mov 0x00,r0
    fldi0 fr4
    mov 0x00,r5
    add r14,r4
    mov.l @(PTR_ce345bc,pc),r3
    mov.b r0,@(0xb,r4)
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
    mov.l @(PTR_ce345c0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce344d4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce344da:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce34dd0
    mov r4,r14
    mov.l @(PTR_ce345b8,pc),r2
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
    mov.w @(DAT_ce345b4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3454e
    mov.w @(DAT_ce345b4,pc),r0
    mov.w @(DAT_ce345b2,pc),r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce345bc,pc),r3
    add r14,r4
    fmov fr3,@(r0,r14)
    mov 0x00,r0
    mov r0,r5
    mov.b r0,@(0xb,r4)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce345c4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3454e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce34554:
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
    bf/s LAB_ce345a2
    mov 0x00,r13
    mov.l @(PTR_ce345cc,pc),r12
    mov.l @(PTR_ce345c8,pc),r11

LAB_ce34572:
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll r0
    shll r0
    mov.w @(r0,r12),r13
    exts.w r13,r0
    cmp/eq 0xFF,r0
    bt LAB_ce345a2
    mov r13,r5
    jsr @r11
    mov r14,r4
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll r0
    shll r0
    add r12,r0
    mov.w @(0x2,r0),r0
    mov.w r0,@(0x1e,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf LAB_ce34572

LAB_ce345a2:
    mov r13,r0
    nop
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce345b2:
    #data 0x02a4
DAT_ce345b4:
    #data 0x041c
    #align4

PTR_ce345b8:
    #data loc_8c034dee
PTR_ce345bc:
    #data loc_8c035162
PTR_ce345c0:
    #data loc_8c051648
PTR_ce345c4:
    #data loc_8c05176e
PTR_ce345c8:
    #data loc_8c0d8840
PTR_ce345cc:
    #data DAT_ce35ca0

;=============================================

FUN_ce345d0:
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
    bt/s LAB_ce34618
    mov 0x00,r13
    mov.l @(PTR_ce34714,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce3464c
    mov.w @(DAT_ce3470c,pc),r4
    mov 0x01,r3
    add r14,r4
    mov.b @(0xc,r4),r0
    add 0x01,r0
    mov.b r0,@(0xc,r4)
    mov.b @(0xc,r4),r0
    extu.b r0,r0
    cmp/ge r3,r0
    bf LAB_ce3464c
    mov 0x00,r0
    mov.b r0,@(0xc,r4)
    mov.w @(0x1e,r14),r0
    add 0xFC,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1e,r14),r0
    cmp/pl r0
    bt LAB_ce3464c

LAB_ce34618:
    mov.l @(PTR_ce3471c,pc),r12
    mov.l @(PTR_ce34718,pc),r11

LAB_ce3461c:
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll r0
    shll r0
    mov.w @(r0,r12),r13
    exts.w r13,r0
    cmp/eq 0xFF,r0
    bt LAB_ce3464c
    mov r13,r5
    jsr @r11
    mov r14,r4
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll r0
    shll r0
    add r12,r0
    mov.w @(0x2,r0),r0
    mov.w r0,@(0x1e,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce3461c

LAB_ce3464c:
    mov r13,r0
    nop
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3465c:
    mov r4,r3
    mov.l @(PTR_ce34720,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3466e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce34724,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34728,pc),r2
    mov 0x01,r5
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
    mov 0x15,r5
    mov.w @(DAT_ce3470e,pc),r0
    mov 0x0C,r6
    mov.l @(PTR_ce3472c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34730,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce346b8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34734,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34710,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce346e4
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce34710,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce34712,pc),r0
    lds.l @r15+,PR
    mov.l @(PTR_ce34738,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce346e4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce346ea:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34734,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34704
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3473c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34704:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3470c:
    #data 0x02a4
DAT_ce3470e:
    #data 0x041c
DAT_ce34710:
    #data 0x0141
DAT_ce34712:
    #data 0x02be
    #align4

PTR_ce34714:
    #data loc_8c055d54
PTR_ce34718:
    #data loc_8c08f954
PTR_ce3471c:
    #data DAT_ce35da2
PTR_ce34720:
    #data PTR_ce35e7c
PTR_ce34724:
    #data loc_8c05218a
PTR_ce34728:
    #data loc_8c035162
PTR_ce3472c:
    #data loc_8c034e8c
PTR_ce34730:
    #data loc_8c05115a
PTR_ce34734:
    #data loc_8c034dee
PTR_ce34738:
    #data loc_8c0da85c
PTR_ce3473c:
    #data loc_8c051648

;=============================================

LAB_ce34740:
    mov r4,r3
    mov.l @(PTR_ce3487c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34752:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34874,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34880,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34876,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3477a
    mova @(DAT_ce34884,pc),r0
    bra LAB_ce3477e
    fmov.s @r0,fr3

LAB_ce3477a:
    mova @(DAT_ce34888,pc),r0
    fmov.s @r0,fr3

LAB_ce3477e:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x4F,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3488c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34890,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34878,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34894,pc),r3
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
    mov.l @(PTR_ce34898,pc),r2
    mov r4,r6
    mov 0x14,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce347cc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3489c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce348a0,pc),r3
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
    bt LAB_ce34834
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce34898,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce348a4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34834:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3483a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3489c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34854
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce348a8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34854:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3485c:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce34874,pc),r1
    mov.l @(PTR_ce348ac,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34874:
    #data 0x01f9
DAT_ce34876:
    #data 0x0130
DAT_ce34878:
    #data 0x01a1
    #align4

PTR_ce3487c:
    #data PTR_ce35e88
PTR_ce34880:
    #data loc_8c035162
DAT_ce34884:
    #data 0xc1f00000
DAT_ce34888:
    #data 0x41f00000
DAT_ce3488c:
    #data 0x3e892492
DAT_ce34890:
    #data 0xbf4db6db
PTR_ce34894:
    #data loc_8c2896b0
PTR_ce34898:
    #data loc_8c034e8c
PTR_ce3489c:
    #data loc_8c034dee
PTR_ce348a0:
    #data loc_8c052ce2
PTR_ce348a4:
    #data loc_8c0511b4
PTR_ce348a8:
    #data loc_8c051854
PTR_ce348ac:
    #data PTR_ce35e94

;=============================================

LAB_ce348b0:
    mov.w @(DAT_ce349d8,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce349da,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce348fc
    mov.w @(DAT_ce349dc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce348fc
    mov.w @(DAT_ce349de,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce348fc
    mov.l @(PTR_ce349ec,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce348fc
    mov r0,r4
    mov.w @(DAT_ce349e0,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce348fc:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34904:
    rts
    mov 0x00,r0

LAB_ce34908:
    mov.w @(DAT_ce349d8,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce349e2,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce34960
    mov.w @(DAT_ce349dc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34960
    mov.w @(DAT_ce349de,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34960
    mova @(DAT_ce349f0,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce34960
    mov.l @(PTR_ce349ec,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34960
    mov r0,r4
    mov.w @(DAT_ce349e0,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34960:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34968:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce349e0,pc),r1
    mov.l @(PTR_ce349f4,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce34980:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce349a4
    mov.w @(DAT_ce349e4,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce349e6,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce349a4:
    mova @(DAT_ce349f8,pc),r0
    mov.l @(PTR_ce34a00,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce349fc,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce349e8,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce34a04,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34a08,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce349d8:
    #data 0x01fa
DAT_ce349da:
    #data 0x0c00
DAT_ce349dc:
    #data 0x01fe
DAT_ce349de:
    #data 0x01a3
DAT_ce349e0:
    #data 0x01f7
DAT_ce349e2:
    #data 0x1c00
DAT_ce349e4:
    #data 0x01d2
DAT_ce349e6:
    #data 0x0130
DAT_ce349e8:
    #data 0x01a0
    #align4

PTR_ce349ec:
    #data loc_8c045790
DAT_ce349f0:
    #data 0x43092492
PTR_ce349f4:
    #data PTR_ce35ea4
DAT_ce349f8:
    #data 0xc292aaaa
DAT_ce349fc:
    #data 0x42d64924
PTR_ce34a00:
    #data loc_8c103660
PTR_ce34a04:
    #data loc_8c056f2a
PTR_ce34a08:
    #data loc_8c034e8c

;=============================================

LAB_ce34a0c:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34b4a,pc),r0
    mov r4,r14
    fldi0 fr15
    fmov.s fr15,@r15
    mov.b @(r0,r14),r3
    cmp/pz r3
    bf LAB_ce34a44
    mova @(DAT_ce34b5c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce34b4c,pc),r0
    fmov.s fr3,@r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34a36
    fmov.s @r15,fr3
    fneg fr3
    fmov.s fr3,@r15

LAB_ce34a36:
    mov.w @(DAT_ce34b4a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34a44
    fmov.s @r15,fr3
    fneg fr3
    fmov.s fr3,@r15

LAB_ce34a44:
    fmov.s @r15,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce34b60,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce34a76
    mov.w @(DAT_ce34b4c,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce34b4e,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce34a76:
    mova @(DAT_ce34b64,pc),r0
    mov.l @(PTR_ce34b6c,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34b68,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34b50,pc),r0
    mov 0x0A,r2
    fldi1 fr3
    fadd fr3,fr3
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    mov.l @(PTR_ce34b74,pc),r3
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce34b70,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34b78,pc),r2
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce34ac8:
    mov.w @(DAT_ce34b52,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34b7c,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34ae6:
    mov r4,r3
    mov.l @(PTR_ce34b80,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34af8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34b84,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34b54,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce34b44
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov.w @(DAT_ce34b4c,pc),r1
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34b54,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x20,r3
    mov.w @(DAT_ce34b56,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x1E,r0
    mov.b @(r0,r14),r0
    add r4,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce34b58,pc),r0
    mov.b r3,@(r0,r4)
    add 0x55,r0
    mov.l @(PTR_ce34b88,pc),r3
    jsr @r3
    mov.b r2,@(r0,r4)
    lds.l @r15+,PR
    mov.l @(PTR_ce34b8c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34b44:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34b4a:
    #data 0x01d3
DAT_ce34b4c:
    #data 0x01d2
DAT_ce34b4e:
    #data 0x0130
DAT_ce34b50:
    #data 0x01a0
DAT_ce34b52:
    #data 0x01ea
DAT_ce34b54:
    #data 0x0141
DAT_ce34b56:
    #data 0x01c8
DAT_ce34b58:
    #data 0x01a1
    #align4

DAT_ce34b5c:
    #data 0xc0d55555
DAT_ce34b60:
    #data 0xbf092492
DAT_ce34b64:
    #data 0xc292aaaa
DAT_ce34b68:
    #data 0x42d64924
PTR_ce34b6c:
    #data loc_8c103660
DAT_ce34b70:
    #data 0xbf4db6db
PTR_ce34b74:
    #data loc_8c056f2a
PTR_ce34b78:
    #data loc_8c034e8c
PTR_ce34b7c:
    #data PTR_ce35eac
PTR_ce34b80:
    #data PTR_ce35eb4
PTR_ce34b84:
    #data loc_8c034dee
PTR_ce34b88:
    #data loc_8c02fd26
PTR_ce34b8c:
    #data loc_8c0423fc

;=============================================

LAB_ce34b90:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34ca8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34baa
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce34cac,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34baa:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce34bb2:
    mov r4,r3
    mov.l @(PTR_ce34cb0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34bc4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34cb4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce34ca8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce34c9c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34c1a
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x02,r2
    mov.w @(DAT_ce34ca0,pc),r1
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34c9e,pc),r0
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
    mov.w @(DAT_ce34ca2,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34c1a
    lds.l @r15+,PR
    mov.l @(PTR_ce34cb8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34c1a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34c20:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34cb4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce34ca8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34c40
    lds.l @r15+,PR
    mov.l @(PTR_ce34cb8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34c40:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34c46:
    mov.w @(DAT_ce34c9e,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce34cbc,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce34c54:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34ca4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34c6e
    mov 0x07,r5
    cmp/eq 0x01,r0
    bt LAB_ce34c6e
    cmp/eq 0x02,r0
    bf LAB_ce34c72

LAB_ce34c6e:
    mov.w @(DAT_ce34ca6,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce34c72:
    mov.l @(PTR_ce34cc0,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce34c78:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34ca4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34c92
    mov 0x07,r5
    cmp/eq 0x01,r0
    bt LAB_ce34c92
    cmp/eq 0x02,r0
    bf LAB_ce34c96

LAB_ce34c92:
    mov.w @(DAT_ce34ca6,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce34c96:
    mov.l @(PTR_ce34cc0,pc),r2
    jmp @r2
    mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34c9c:
    #data 0x0141
DAT_ce34c9e:
    #data 0x01c8
DAT_ce34ca0:
    #data 0x01d2
DAT_ce34ca2:
    #data 0x0150
DAT_ce34ca4:
    #data 0x04c9
DAT_ce34ca6:
    #data 0x01e9
    #align4

PTR_ce34ca8:
    #data loc_8c034dee
PTR_ce34cac:
    #data loc_8c051648
PTR_ce34cb0:
    #data PTR_ce35ebc
PTR_ce34cb4:
    #data FUN_ce32202
PTR_ce34cb8:
    #data loc_8c05176e
PTR_ce34cbc:
    #data loc_8c04cc1c
PTR_ce34cc0:
    #data loc_8c0530d8

;=============================================

LAB_ce34cc4:
    mov.w @(DAT_ce34dc0,pc),r7
    mov 0x00,r5
    add r4,r7
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34dc2,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34cea
    mov 0x02,r6
    cmp/eq 0x01,r0
    bt LAB_ce34cfa
    cmp/eq 0x02,r0
    bt LAB_ce34cfa
    bra LAB_ce34d04
    nop

LAB_ce34cea:
    mov.w @(DAT_ce34dc4,pc),r0
    mov.b r5,@(r0,r4)
    add 0x10,r0
    mov.b r5,@(r0,r4)
    mov r6,r0
    nop
    bra LAB_ce34d04
    mov.b r0,@(0x2,r7)

LAB_ce34cfa:
    mov.w @(DAT_ce34dc4,pc),r0
    mov 0x01,r3
    mov.b r6,@(r0,r4)
    add 0xBA,r0
    mov.b r3,@(r0,r4)

LAB_ce34d04:
    mov.l @(PTR_ce34dc8,pc),r3
    jmp @r3
    mov 0x15,r5

LAB_ce34d0a:
    mov.w @(DAT_ce34dc0,pc),r6
    mov 0x00,r5
    add r4,r6
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34dc2,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34d3c
    mov 0x02,r7
    cmp/eq 0x01,r0
    bt LAB_ce34d30
    cmp/eq 0x02,r0
    bt LAB_ce34d3c
    bra LAB_ce34d4a
    nop

LAB_ce34d30:
    mov.w @(DAT_ce34dc4,pc),r0
    mov 0x01,r3
    mov.b r7,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce34d4a
    mov.b r3,@(r0,r4)

LAB_ce34d3c:
    mov.w @(DAT_ce34dc4,pc),r0
    mov.b r5,@(r0,r4)
    add 0x10,r0
    mov.b r5,@(r0,r4)
    mov r7,r0
    nop
    mov.b r0,@(0x2,r6)

LAB_ce34d4a:
    mov.l @(PTR_ce34dc8,pc),r2
    jmp @r2
    mov 0x15,r5

;=============================================

FUN_ce34d50:
    mov.l r14,@-r15
    mov r5,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov r4,r12
    mov.l r11,@-r15
    mov 0x00,r11
    mov.l r10,@-r15
    mov 0x01,r10
    mov.l r9,@-r15
    mov.w @(DAT_ce34dc0,pc),r13
    sts.l PR,@-r15
    mov.l @(PTR_ce34dcc,pc),r9
    add r12,r13

LAB_ce34d6c:
    mov 0x25,r6
    mov.b @r14,r0
    add r12,r6
    mov 0x57,r3
    mov.b r0,@(0xe,r13)
    mov.b @r6,r6
    mov.b @(0x2,r14),r0
    extu.b r6,r6
    mulu.w r3,r6
    extu.b r0,r0
    sts MACL,r6
    add r0,r6
    mov.b @(0x3,r14),r0
    extu.b r0,r7
    mov.b @(0x1,r14),r0
    extu.b r0,r5
    jsr @r9
    mov r12,r4
    mov.l @(0x4,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce34d9a
    bra LAB_ce34d9e
    mov r11,r0

LAB_ce34d9a:
    mov r10,r0
    nop

LAB_ce34d9e:
    mov.b r0,@(0xf,r13)
    mov.l @(0x4,r14),r3
    mov.b @(0xe,r13),r0
    shll2 r3
    shll r3
    tst r0,r0
    add r3,r14
    bt LAB_ce34d6c
    mov.l r14,@(0x10,r13)
    lds.l @r15+,PR
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34dc0:
    #data 0x02a4
DAT_ce34dc2:
    #data 0x04c9
DAT_ce34dc4:
    #data 0x01e9
    #align4

PTR_ce34dc8:
    #data loc_8c0530d8
PTR_ce34dcc:
    #data loc_8c03544c

;=============================================

FUN_ce34dd0:
    mov.l r14,@-r15
    mov.w @(DAT_ce34f02,pc),r14
    mov.l r13,@-r15
    add r4,r14
    sts.l PR,@-r15
    mov.b @(0xe,r14),r0
    add 0xFF,r0
    mov.b r0,@(0xe,r14)
    extu.b r0,r0
    tst r0,r0
    bf/s LAB_ce34df6
    mov 0x01,r13
    mov.b @(0xf,r14),r0
    tst r0,r0
    bt/s LAB_ce34df2
    mov.l @(0x10,r14),r5
    mov 0x00,r13

LAB_ce34df2:
    bsr FUN_ce34d50
    nop

LAB_ce34df6:
    mov r13,r0
    nop
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce34e02:
    mov.l r14,@-r15
    add 0xFC,r15
    mov 0x25,r2
    mov r5,r14
    add r4,r2
    mov.l @(PTR_ce34f10,pc),r3
    mov.b @r2,r2
    mov 0x57,r1
    shll2 r14
    extu.b r2,r2
    mulu.w r1,r2
    shll r14
    add r3,r14
    mov.b @(0x2,r14),r0
    sts MACL,r2
    extu.b r0,r0
    add r2,r0
    mov.l r0,@r15
    mov.b @(0x3,r14),r0
    mov.l @r15,r6
    extu.b r0,r7
    mov.b @(0x1,r14),r0
    extu.b r0,r5
    add 0x04,r15
    mov.l @(PTR_ce34f14,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34e38:
    mov.w @(DAT_ce34f02,pc),r5
    add r4,r5
    mov.w @(0x1e,r5),r0
    tst r0,r0
    bt LAB_ce34e74
    mov.w @(DAT_ce34f04,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bf LAB_ce34e60
    mov 0x00,r6
    mov r6,r0
    nop
    mov.w r0,@(0x1e,r5)
    mov.b r0,@(0xb,r5)
    mov.w @(DAT_ce34f06,pc),r0
    mov.b r0,@(0xa,r5)
    mov.w @(DAT_ce34f08,pc),r0
    bra LAB_ce34e74
    mov.b r6,@(r0,r4)

LAB_ce34e60:
    mov.w @(0x1e,r5),r0
    add 0xF8,r0
    mov.w r0,@(0x1e,r5)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce34e70
    mov 0x01,r0
    mov.w r0,@(0x1e,r5)

LAB_ce34e70:
    rts
    mov 0x01,r0

LAB_ce34e74:
    mov 0x00,r0
    rts
    nop

LAB_ce34e7a:
    mov.w @(DAT_ce34f02,pc),r5
    add r4,r5
    mov.b @(0x8,r5),r0
    tst r0,r0
    bt LAB_ce34e9a
    mov 0x00,r0
    mov.b r0,@(0x8,r5)
    mov.b @(0xd,r5),r0
    add 0x01,r0
    mov.b r0,@(0xd,r5)
    mov.w @(DAT_ce34f0a,pc),r0
    mov.b @(r0,r4),r3
    add 0x06,r3
    mov.b r3,@(r0,r4)
    rts
    mov 0x01,r0

LAB_ce34e9a:
    mov 0x00,r0
    rts
    nop

LAB_ce34ea0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF8,r15
    mov.w @(DAT_ce34f02,pc),r14
    mov 0x00,r5
    mov.w @(DAT_ce34f0c,pc),r6
    add r4,r14
    mov.l @(PTR_ce34f18,pc),r3
    mov.l r14,@r15
    mov.b @r14,r0
    mov.b r0,@(0x4,r15)
    jsr @r3
    mov.l @r15,r4
    mov.b @(0x4,r15),r0
    mov.b r0,@r14
    add 0x08,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce34ec6:
    mov.l r13,@-r15
    mov 0x08,r1
    mov.l @(PTR_ce34f1c,pc),r13
    mov 0x00,r6

LAB_ce34ece:
    mov.b @(0x2,r4),r0
    mov r13,r2
    add 0x18,r2
    extu.b r0,r0
    mov r0,r3
    shll r0
    add r3,r0
    shll2 r0
    add r2,r0
    mov.l @(r0,r6),r7
    cmp/eq r4,r7
    bt LAB_ce34ef6
    mov.b @(0x1,r7),r0
    extu.b r5,r3
    extu.b r0,r0
    cmp/eq r3,r0
    bf LAB_ce34ef6
    mov 0x01,r0
    rts
    mov.l @r15+,r13

LAB_ce34ef6:
    add 0x04,r6
    cmp/hi r1,r6
    bf LAB_ce34ece
    mov 0x00,r0
    rts
    mov.l @r15+,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34f02:
    #data 0x02a4
DAT_ce34f04:
    #data 0x01e9
DAT_ce34f06:
    #data 0x00ff
DAT_ce34f08:
    #data 0x0201
DAT_ce34f0a:
    #data 0x01a0
DAT_ce34f0c:
    #data 0x0080
    #align4

PTR_ce34f10:
    #data DAT_ce34ff8
PTR_ce34f14:
    #data loc_8c03544c
PTR_ce34f18:
    #data loc_8c129728
PTR_ce34f1c:
    #data loc_8c2895f0
DAT_ce34f20:
    #data 0x0201
    #data 0x0201
DAT_ce34f24:
    #data 0x02ff
    #data 0x02ff
DAT_ce34f28:
    #data 0xffff
    #data 0xffff
DAT_ce34f2c:
    #data 0x0201
    #data 0x0201
DAT_ce34f30:
    #data 0x02ff
    #data 0x02ff
DAT_ce34f34:
    #data 0xffff
    #data 0xffff
DAT_ce34f38:
    #data 0x0201
    #data 0x0201
DAT_ce34f3c:
    #data 0x02ff
    #data 0x02ff
DAT_ce34f40:
    #data 0xffff
    #data 0xffff
DAT_ce34f44:
    #data 0x0201
    #data 0x0201
DAT_ce34f48:
    #data 0x02ff
    #data 0x02ff
DAT_ce34f4c:
    #data 0xffff
    #data 0xffff
DAT_ce34f50:
    #data 0x0201
    #data 0x0200
DAT_ce34f54:
    #data 0x02ff
    #data 0x0201
DAT_ce34f58:
    #data 0xffff
    #data 0x02ff
DAT_ce34f5c:
    #data 0x0201
    #data 0x0201
DAT_ce34f60:
    #data 0x02ff
    #data 0x02ff
DAT_ce34f64:
    #data 0xffff
    #data 0xffff
DAT_ce34f68:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34f78:
    #data 0x0003
    #data 0x0000
    #data 0x0002
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce34f88:
    #data 0x0003
    #data 0x8100
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34f98:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce34fa8:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce34fb8:
    #data 0x0003
    #data 0x0000
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce34fc8:
    #data 0x0003
    #data 0x1000
    #data 0x000c
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce34fd8:
    #data 0x0003
    #data 0x1000
    #data 0x000c
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0060
DAT_ce34fe8:
    #data 0x0003
    #data 0x1000
    #data 0x000c
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce34ff8:
    #data 0x01
DAT_ce34ff9:
    #data 0x02
DAT_ce34ffa:
    #data 0x38
DAT_ce34ffb:
    #data 0x01
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0100
    #data 0x0001
    #data 0x0000
    #data 0x0001
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0001
    #data 0x0102
    #data 0x0001
    #data 0x0000
    #data 0x0001
    #data 0x0100
    #data 0x0001
    #data 0x0000
    #data 0x0001
    #data 0x0100
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0010
    #data 0x0105
    #data 0x0000
    #data 0x0000
DAT_ce35058:
    #data 0x0004
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0105
    #data 0x0000
    #data 0x0000
    #data 0x0004
    #data 0x0102
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0103
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0104
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0008
    #data 0x010a
    #data 0x0000
    #data 0x0000
DAT_ce350c8:
    #data 0x0000
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x010f
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x0118
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0110
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x0119
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0111
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x011a
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0112
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x011b
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0113
    #data 0x0001
    #data 0x0000
    #data 0x0210
    #data 0x011c
    #data 0xfffe
    #data 0xffff
DAT_ce35140:
    #data 0x0003
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0104
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0103
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0102
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0103
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0104
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0109
    #data 0xfff1
    #data 0xffff
DAT_ce351c0:
    #data 0x0003
    #data 0x0103
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0104
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0104
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0103
    #data 0x0001
    #data 0x0000
    #data 0x0003
    #data 0x0102
    #data 0xfff1
    #data 0xffff
DAT_ce35240:
    #data 0x0000
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0113
    #data 0x0001
    #data 0x0000
    #data 0x020a
    #data 0x011c
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0112
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x011b
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0111
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x011a
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0110
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x0119
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x010f
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x0118
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x010e
    #data 0x0001
    #data 0x0000
    #data 0x02ff
    #data 0x0117
    #data 0xfffe
    #data 0xffff
DAT_ce352d0:
    #data 0x0000
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0104
    #data 0x010f
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0104
    #data 0x0110
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0104
    #data 0x0111
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0104
    #data 0x0112
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0110
    #data 0x0113
    #data 0xffff
    #data 0xffff
DAT_ce35320:
    #data 0x0000
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0137
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x0154
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0136
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x0153
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0136
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x0152
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0134
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x0151
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0133
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x0150
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0132
    #data 0x0001
    #data 0x0000
    #data 0x02ff
    #data 0x0100
    #data 0xfffe
    #data 0xffff
DAT_ce353b0:
    #data 0x0000
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0133
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x0150
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0134
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x0151
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0135
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x0152
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0136
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x0153
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0137
    #data 0x0001
    #data 0x0000
    #data 0x020e
    #data 0x0154
    #data 0xfffe
    #data 0xffff
DAT_ce35428:
    #data 0x0000
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x010a
    #data 0x0113
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x0112
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x0111
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x0110
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x010f
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x01ff
    #data 0x010e
    #data 0xffff
    #data 0xffff
DAT_ce35488:
    #data 0x0000
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x0118
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x0119
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x011a
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x011b
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0210
    #data 0x011c
    #data 0xffff
    #data 0xffff
DAT_ce354d8:
    #data 0x0000
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x0125
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x0124
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x0123
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x0122
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0204
    #data 0x0121
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x02ff
    #data 0x0120
    #data 0xffff
    #data 0xffff
DAT_ce35538:
    #data 0x0000
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x0121
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x0122
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x0123
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x0124
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x020e
    #data 0x0125
    #data 0xffff
    #data 0xffff
DAT_ce35588:
    #data 0x0000
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x020a
    #data 0x011c
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x011b
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x011a
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x0119
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0203
    #data 0x0118
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x02ff
    #data 0x0117
    #data 0xffff
    #data 0xffff
DAT_ce355e8:
    #data 0x0000
    #data 0x0102
    #data 0x0001
    #data 0x0000
DAT_ce355f0:
    #data 0x0100
    #data 0x0102
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0102
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0103
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0103
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0103
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0104
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0104
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0104
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0104
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0104
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0104
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0103
    #data 0x0001
    #data 0x0000
    #data 0x0100
    #data 0x0103
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x0103
    #data 0xffd1
    #data 0xffff
    #data 0x0001
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0001
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0001
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0001
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0001
    #data 0x0106
    #data 0x0000
    #data 0x0000
DAT_ce35790:
    #data 0x0004
    #data 0x0105
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x010a
    #data 0x0000
    #data 0x0000
DAT_ce357c0:
    #data 0x0004
    #data 0x010a
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0109
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0108
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0107
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0106
    #data 0x0001
    #data 0x0000
    #data 0x0004
    #data 0x0105
    #data 0x0000
    #data 0x0000
DAT_ce357f0:
    #data 0x0001
    #data 0x0020
    #data 0x0002
    #data 0x0020
    #data 0x0003
    #data 0x0001
    #data 0x0004
    #data 0x0001
    #data 0x0005
    #data 0x0001
    #data 0x0000
    #data 0x7fff
DAT_ce35808:
    #data 0x0007
    #data 0x0001
    #data 0x0005
    #data 0x0001
    #data 0x0002
    #data 0x7fff
DAT_ce35814:
    #data 0x0004
    #data 0x0001
    #data 0x0004
    #data 0x0001
    #data 0x0005
    #data 0x0001
    #data 0x0001
    #data 0x7fff
DAT_ce35824:
    #data 0x0002
    #data 0x0020
    #data 0x0005
    #data 0x0001
    #data 0x0007
    #data 0x0001
    #data 0x0001
    #data 0x7fff
DAT_ce35834:
    #data 0x00ff
    #data 0x0018
    #data 0x0010
    #data 0x00ff
    #data 0x001c
    #data 0x0010
    #data 0x00ff
    #data 0x0000
    #data 0x0010
    #data 0x00ff
    #data 0x0004
    #data 0x0010
    #data 0x00ff
    #data 0x0008
    #data 0x0010
    #data 0x00ff
    #data 0x000c
    #data 0x0010
    #data 0x00ff
    #data 0x0010
    #data 0x0010
    #data 0x00ff
    #data 0x0014
    #data 0x0010
    #data 0x00ff
    #data 0x0018
    #data 0x7fff
DAT_ce3586a:
    #data 0x00ff
    #data 0x001c
    #data 0x0030
    #data 0x00ff
    #data 0x0010
    #data 0x0010
    #data 0x00ff
    #data 0x0004
    #data 0x0010
    #data 0x00ff
    #data 0x0010
    #data 0x0010
    #data 0x00ff
    #data 0x0004
    #data 0x0010
    #data 0x00ff
    #data 0x0008
    #data 0x7fff
DAT_ce3588e:
    #data 0x00ff
    #data 0x0000
    #data 0x0030
    #data 0x00ff
    #data 0x0010
    #data 0x0010
    #data 0x00ff
    #data 0x0018
    #data 0x0010
    #data 0x00ff
    #data 0x0010
    #data 0x0010
    #data 0x00ff
    #data 0x0000
    #data 0x0010
    #data 0x00ff
    #data 0x0018
    #data 0x7fff
DAT_ce358b2:
    #data 0x00ff
    #data 0x0014
    #data 0x0010
    #data 0x00ff
    #data 0x0018
    #data 0x0010
    #data 0x00ff
    #data 0x0000
    #data 0x0030
    #data 0x00ff
    #data 0x000c
    #data 0x0010
    #data 0x00ff
    #data 0x0008
    #data 0x0010
    #data 0x00ff
    #data 0x0004
    #data 0x7fff
    #data 0x0000
    #align4

PTR_ce358d8:
    #data LAB_ce306ac
PTR_ce358dc:
    #data LAB_ce3001c
PTR_ce358e0:
    #data LAB_ce30702
PTR_ce358e4:
    #data LAB_ce30cfe
PTR_ce358e8:
    #data LAB_ce31124
PTR_ce358ec:
    #data LAB_ce312bc
PTR_ce358f0:
    #data LAB_ce31440
PTR_ce358f4:
    #data LAB_ce318e4
PTR_ce358f8:
    #data LAB_ce31f5e
PTR_ce358fc:
    #data LAB_ce3485c
PTR_ce35900:
    #data LAB_ce34968
PTR_ce35904:
    #data LAB_ce34ac8
PTR_ce35908:
    #data LAB_ce34c46
PTR_ce3590c:
    #data LAB_ce305b8
PTR_ce35910:
    #data LAB_ce34740
PTR_ce35914:
    #data LAB_ce31060
PTR_ce35918:
    #data LAB_ce34c54
PTR_ce3591c:
    #data LAB_ce34c78
PTR_ce35920:
    #data LAB_ce34cc4
PTR_ce35924:
    #data LAB_ce34d0a
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce35934:
    #data LAB_ce34ea0
PTR_ce35938:
    #data LAB_ce34e38
PTR_ce3593c:
    #data LAB_ce34e7a
    #data 0x00000000
    #data 0x00000000
DAT_ce35948:
    #data 0xfffc0004
    #data 0xfffc0004
PTR_ce35950:
    #data LAB_ce30716
PTR_ce35954:
    #data LAB_ce30a76
PTR_ce35958:
    #data LAB_ce30a9e
PTR_ce3595c:
    #data LAB_ce30716
PTR_ce35960:
    #data LAB_ce30d56
PTR_ce35964:
    #data LAB_ce30fa8
PTR_ce35968:
    #data LAB_ce30f92
PTR_ce3596c:
    #data LAB_ce30d48
PTR_ce35970:
    #data LAB_ce31136
PTR_ce35974:
    #data LAB_ce311d0
PTR_ce35978:
    #data LAB_ce31250
PTR_ce3597c:
    #data LAB_ce312ce
PTR_ce35980:
    #data LAB_ce31354
PTR_ce35984:
    #data LAB_ce313d4
PTR_ce35988:
    #data LAB_ce31452
PTR_ce3598c:
    #data LAB_ce31474
DAT_ce35990:
    #data 0x0000
    #data 0x0000
    #data 0x0001
    #data 0x0002
    #align4

PTR_ce35998:
    #data LAB_ce31488
PTR_ce3599c:
    #data LAB_ce315f6
PTR_ce359a0:
    #data LAB_ce31842
PTR_ce359a4:
    #data LAB_ce314c0
PTR_ce359a8:
    #data LAB_ce31526
PTR_ce359ac:
    #data LAB_ce3156e
PTR_ce359b0:
    #data LAB_ce315ce
PTR_ce359b4:
    #data LAB_ce31628
PTR_ce359b8:
    #data LAB_ce31694
PTR_ce359bc:
    #data LAB_ce31712
PTR_ce359c0:
    #data LAB_ce317a4
PTR_ce359c4:
    #data LAB_ce3181a
PTR_ce359c8:
    #data LAB_ce31854
PTR_ce359cc:
    #data LAB_ce3187a
PTR_ce359d0:
    #data LAB_ce3189a
PTR_ce359d4:
    #data LAB_ce318c4
PTR_ce359d8:
    #data LAB_ce3191c
PTR_ce359dc:
    #data LAB_ce3193a
PTR_ce359e0:
    #data LAB_ce31dc2
PTR_ce359e4:
    #data LAB_ce31e22
PTR_ce359e8:
    #data LAB_ce31dc2
PTR_ce359ec:
    #data LAB_ce31e22
PTR_ce359f0:
    #data LAB_ce31e22
PTR_ce359f4:
    #data LAB_ce31966
PTR_ce359f8:
    #data LAB_ce319a2
PTR_ce359fc:
    #data LAB_ce31a34
PTR_ce35a00:
    #data LAB_ce31b06
PTR_ce35a04:
    #data LAB_ce31c36
PTR_ce35a08:
    #data LAB_ce31cf6
PTR_ce35a0c:
    #data LAB_ce31978
PTR_ce35a10:
    #data LAB_ce3199c
PTR_ce35a14:
    #data LAB_ce319b4
PTR_ce35a18:
    #data LAB_ce319e4
PTR_ce35a1c:
    #data LAB_ce31a0a
PTR_ce35a20:
    #data LAB_ce31a28
PTR_ce35a24:
    #data LAB_ce31a74
PTR_ce35a28:
    #data LAB_ce31a98
PTR_ce35a2c:
    #data LAB_ce31ac8
PTR_ce35a30:
    #data FUN_ce31af4
PTR_ce35a34:
    #data LAB_ce31b20
PTR_ce35a38:
    #data LAB_ce31b82
PTR_ce35a3c:
    #data LAB_ce31bdc
PTR_ce35a40:
    #data LAB_ce31c0a
PTR_ce35a44:
    #data LAB_ce31c30
PTR_ce35a48:
    #data LAB_ce31c50
PTR_ce35a4c:
    #data LAB_ce31cca
PTR_ce35a50:
    #data LAB_ce31cf0
PTR_ce35a54:
    #data LAB_ce31d34
PTR_ce35a58:
    #data LAB_ce31d96
PTR_ce35a5c:
    #data LAB_ce31dbc
PTR_ce35a60:
    #data LAB_ce31dd4
PTR_ce35a64:
    #data LAB_ce31e1c
PTR_ce35a68:
    #data LAB_ce31e34
PTR_ce35a6c:
    #data LAB_ce31e7c
DAT_ce35a70:
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

PTR_ce35a90:
    #data LAB_ce31f72
PTR_ce35a94:
    #data LAB_ce31f72
PTR_ce35a98:
    #data LAB_ce32290
PTR_ce35a9c:
    #data LAB_ce325cc
PTR_ce35aa0:
    #data LAB_ce32684
PTR_ce35aa4:
    #data LAB_ce332c8
PTR_ce35aa8:
    #data LAB_ce3390c
PTR_ce35aac:
    #data LAB_ce33efe
PTR_ce35ab0:
    #data LAB_ce324ce
PTR_ce35ab4:
    #data LAB_ce33efe
PTR_ce35ab8:
    #data LAB_ce33efe
PTR_ce35abc:
    #data LAB_ce33efe
PTR_ce35ac0:
    #data LAB_ce3465c
PTR_ce35ac4:
    #data LAB_ce31f84
PTR_ce35ac8:
    #data LAB_ce320b4
PTR_ce35acc:
    #data LAB_ce31f96
PTR_ce35ad0:
    #data LAB_ce32048
PTR_ce35ad4:
    #data LAB_ce3208e
PTR_ce35ad8:
    #data LAB_ce32104
PTR_ce35adc:
    #data LAB_ce32184
PTR_ce35ae0:
    #data LAB_ce321ce
PTR_ce35ae4:
    #data LAB_ce322a2
PTR_ce35ae8:
    #data LAB_ce323a2
PTR_ce35aec:
    #data LAB_ce322b4
PTR_ce35af0:
    #data LAB_ce3234e
PTR_ce35af4:
    #data FUN_ce32380
PTR_ce35af8:
    #data LAB_ce323f0
PTR_ce35afc:
    #data LAB_ce32468
PTR_ce35b00:
    #data LAB_ce324a0
PTR_ce35b04:
    #data LAB_ce3250c
PTR_ce35b08:
    #data LAB_ce32582
PTR_ce35b0c:
    #data LAB_ce325de
PTR_ce35b10:
    #data LAB_ce3262c
PTR_ce35b14:
    #data LAB_ce3269e
PTR_ce35b18:
    #data LAB_ce32734
PTR_ce35b1c:
    #data LAB_ce32800
PTR_ce35b20:
    #data LAB_ce328a8
PTR_ce35b24:
    #data LAB_ce32fb8
PTR_ce35b28:
    #data LAB_ce32fdc
PTR_ce35b2c:
    #data DAT_ce357f0
PTR_ce35b30:
    #data DAT_ce35808
PTR_ce35b34:
    #data DAT_ce35814
PTR_ce35b38:
    #data DAT_ce35824
PTR_ce35b3c:
    #data LAB_ce329ae
PTR_ce35b40:
    #data LAB_ce32a5e
PTR_ce35b44:
    #data LAB_ce32adc
PTR_ce35b48:
    #data LAB_ce32b4a
PTR_ce35b4c:
    #data LAB_ce32b5e
PTR_ce35b50:
    #data LAB_ce32b72
PTR_ce35b54:
    #data LAB_ce329e2
PTR_ce35b58:
    #data LAB_ce32e38
PTR_ce35b5c:
    #data LAB_ce32ba8
PTR_ce35b60:
    #data LAB_ce32be2
PTR_ce35b64:
    #data LAB_ce32d72
PTR_ce35b68:
    #data LAB_ce32dc4
PTR_ce35b6c:
    #data LAB_ce32e24
PTR_ce35b70:
    #data LAB_ce32c2a
PTR_ce35b74:
    #data LAB_ce32c76
PTR_ce35b78:
    #data LAB_ce32d72
PTR_ce35b7c:
    #data LAB_ce32dc4
PTR_ce35b80:
    #data LAB_ce32e24
PTR_ce35b84:
    #data LAB_ce32cbe
PTR_ce35b88:
    #data LAB_ce32d2a
PTR_ce35b8c:
    #data LAB_ce32d72
PTR_ce35b90:
    #data LAB_ce32dc4
PTR_ce35b94:
    #data LAB_ce32e24
PTR_ce35b98:
    #data LAB_ce32e70
PTR_ce35b9c:
    #data LAB_ce32ec4
PTR_ce35ba0:
    #data LAB_ce32ede
PTR_ce35ba4:
    #data LAB_ce32f22
PTR_ce35ba8:
    #data LAB_ce32f58
PTR_ce35bac:
    #data LAB_ce32fee
PTR_ce35bb0:
    #data LAB_ce3306a
PTR_ce35bb4:
    #data LAB_ce330ec
PTR_ce35bb8:
    #data LAB_ce33234
PTR_ce35bbc:
    #data LAB_ce33284
PTR_ce35bc0:
    #data LAB_ce332ae
PTR_ce35bc4:
    #data LAB_ce33300
PTR_ce35bc8:
    #data LAB_ce33392
PTR_ce35bcc:
    #data LAB_ce3343c
PTR_ce35bd0:
    #data LAB_ce334f4
PTR_ce35bd4:
    #data LAB_ce33636
PTR_ce35bd8:
    #data LAB_ce3365a
PTR_ce35bdc:
    #data DAT_ce35834
PTR_ce35be0:
    #data DAT_ce3586a
PTR_ce35be4:
    #data DAT_ce3588e
PTR_ce35be8:
    #data DAT_ce358b2
PTR_ce35bec:
    #data LAB_ce3366c
PTR_ce35bf0:
    #data LAB_ce3371a
PTR_ce35bf4:
    #data LAB_ce33762
DAT_ce35bf8:
    #data 0x08ff
    #data 0x0818
    #data 0x0c10
    #data 0x0c14
    #data 0x0400
    #data 0x041c
    #data 0x0400
    #data 0x041c
    #align4

PTR_ce35c08:
    #data LAB_ce33864
PTR_ce35c0c:
    #data LAB_ce33898
PTR_ce35c10:
    #data LAB_ce338d0
PTR_ce35c14:
    #data LAB_ce33924
PTR_ce35c18:
    #data LAB_ce33a3c
PTR_ce35c1c:
    #data LAB_ce33b58
PTR_ce35c20:
    #data LAB_ce33960
PTR_ce35c24:
    #data LAB_ce339ec
PTR_ce35c28:
    #data FUN_ce33a1a
PTR_ce35c2c:
    #data LAB_ce33a84
PTR_ce35c30:
    #data LAB_ce33b08
PTR_ce35c34:
    #data FUN_ce33b36
PTR_ce35c38:
    #data LAB_ce33b6a
PTR_ce35c3c:
    #data LAB_ce33cbe
PTR_ce35c40:
    #data LAB_ce33dd6
PTR_ce35c44:
    #data LAB_ce33b7c
PTR_ce35c48:
    #data LAB_ce33c6e
PTR_ce35c4c:
    #data FUN_ce33c9c
PTR_ce35c50:
    #data LAB_ce33d00
PTR_ce35c54:
    #data LAB_ce33d84
PTR_ce35c58:
    #data FUN_ce33db4
PTR_ce35c5c:
    #data LAB_ce33e18
PTR_ce35c60:
    #data LAB_ce33e98
PTR_ce35c64:
    #data LAB_ce33ece
PTR_ce35c68:
    #data LAB_ce33f4c
PTR_ce35c6c:
    #data LAB_ce3400a
PTR_ce35c70:
    #data LAB_ce340ea
PTR_ce35c74:
    #data LAB_ce34104
PTR_ce35c78:
    #data LAB_ce34144
PTR_ce35c7c:
    #data LAB_ce3417a
PTR_ce35c80:
    #data LAB_ce341fc
PTR_ce35c84:
    #data LAB_ce3424e
PTR_ce35c88:
    #data LAB_ce342e8
PTR_ce35c8c:
    #data LAB_ce3438c
PTR_ce35c90:
    #data LAB_ce343d0
PTR_ce35c94:
    #data LAB_ce343e2
PTR_ce35c98:
    #data LAB_ce34494
PTR_ce35c9c:
    #data LAB_ce344da
DAT_ce35ca0:
    #data 0x0023
DAT_ce35ca2:
    #data 0x0003
    #data 0x0024
    #data 0x0003
    #data 0x002b
    #data 0x0003
    #data 0x002c
    #data 0x0003
    #data 0x002d
    #data 0x0003
    #data 0x002e
    #data 0x0003
    #data 0x0020
    #data 0x0003
    #data 0x0026
    #data 0x0003
    #data 0x0028
    #data 0x0003
    #data 0x0021
    #data 0x0003
    #data 0x0022
    #data 0x0003
    #data 0x0029
    #data 0x0003
    #data 0x0027
    #data 0x0003
    #data 0x002a
    #data 0x0003
    #data 0x0025
    #data 0x0003
    #data 0x001f
    #data 0x0003
    #data 0x0023
    #data 0x0003
    #data 0x0024
    #data 0x0003
    #data 0x002b
    #data 0x0003
    #data 0x002c
    #data 0x0003
    #data 0x002d
    #data 0x0003
    #data 0x002e
    #data 0x0003
    #data 0x0020
    #data 0x0003
    #data 0x0026
    #data 0x0003
    #data 0x0028
    #data 0x0003
    #data 0x0021
    #data 0x0003
    #data 0x0022
    #data 0x0003
    #data 0x0029
    #data 0x0003
    #data 0x0027
    #data 0x0003
    #data 0x002a
    #data 0x0003
    #data 0x0025
    #data 0x0003
    #data 0x001f
    #data 0x0003
    #data 0x0023
    #data 0x0003
    #data 0x0024
    #data 0x0003
    #data 0x002b
    #data 0x0003
    #data 0x002c
    #data 0x0003
    #data 0x002d
    #data 0x0003
    #data 0x002e
    #data 0x0003
    #data 0x0020
    #data 0x0003
    #data 0x0026
    #data 0x0003
    #data 0x0028
    #data 0x0003
    #data 0x0021
    #data 0x0003
    #data 0x0022
    #data 0x0003
    #data 0x0029
    #data 0x0003
    #data 0x0027
    #data 0x0003
    #data 0x002a
    #data 0x0003
    #data 0x0025
    #data 0x0003
    #data 0x001f
    #data 0x0003
    #data 0x0023
    #data 0x0003
    #data 0x0024
    #data 0x0003
    #data 0x002b
    #data 0x0003
    #data 0x002c
    #data 0x0003
    #data 0x002d
    #data 0x0003
    #data 0x002e
    #data 0x0003
    #data 0x0020
    #data 0x0003
    #data 0x0026
    #data 0x0003
    #data 0x0028
    #data 0x0003
    #data 0x0021
    #data 0x0003
    #data 0x0022
    #data 0x0003
    #data 0x0029
    #data 0x0003
    #data 0x0027
    #data 0x0003
    #data 0x002a
    #data 0x0003
    #data 0x0025
    #data 0x0003
    #data 0x001f
    #data 0x0003
    #data 0xffff
DAT_ce35da2:
    #data 0x0000
DAT_ce35da4:
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0x0000
    #data 0x0008
    #data 0x0001
    #data 0x0008
    #data 0x0002
    #data 0x0008
    #data 0xffff
    #align4

PTR_ce35e7c:
    #data LAB_ce3466e
PTR_ce35e80:
    #data LAB_ce346b8
PTR_ce35e84:
    #data FUN_ce346ea
PTR_ce35e88:
    #data LAB_ce34752
PTR_ce35e8c:
    #data LAB_ce347cc
PTR_ce35e90:
    #data FUN_ce3483a
PTR_ce35e94:
    #data LAB_ce348b0
PTR_ce35e98:
    #data LAB_ce34904
PTR_ce35e9c:
    #data LAB_ce34908
PTR_ce35ea0:
    #data LAB_ce348b0
PTR_ce35ea4:
    #data LAB_ce34980
PTR_ce35ea8:
    #data LAB_ce34a0c
PTR_ce35eac:
    #data LAB_ce34ae6
PTR_ce35eb0:
    #data LAB_ce34bb2
PTR_ce35eb4:
    #data LAB_ce34af8
PTR_ce35eb8:
    #data LAB_ce34b90
PTR_ce35ebc:
    #data LAB_ce34bc4
PTR_ce35ec0:
    #data LAB_ce34c20
