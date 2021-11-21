;╔══════════════════════════════════════════╗
;║ S_PL34 : Sentinel Program (Classified)   ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c045790 0x8C045790
#symbol loc_8c046c8a 0x8C046C8A
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
#symbol loc_8c052618 0x8C052618
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
#symbol loc_8c0a9ab4 0x8C0A9AB4
#symbol loc_8c0a9af8 0x8C0A9AF8
#symbol loc_8c0aaa60 0x8C0AAA60
#symbol loc_8c0ab514 0x8C0AB514
#symbol loc_8c0aba00 0x8C0ABA00
#symbol loc_8c0e92f4 0x8C0E92F4
#symbol loc_8c0e932e 0x8C0E932E
#symbol loc_8c0e9650 0x8C0E9650
#symbol loc_8c10235c 0x8C10235C
#symbol loc_8c103660 0x8C103660
#symbol loc_8c129728 0x8C129728
#symbol loc_8c2895f0 0x8C2895F0
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
    bsr FUN_ce300f0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30156
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce3019c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30266
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30218
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30348
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce302d6
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce303b2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30412
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30480
    mov r14,r4
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce304c0
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
    #data PTR_ce32e58
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
    mov.l @(PTR_ce30204,pc),r5
    mov.w @(DAT_ce301f0,pc),r6
    mov.l @(PTR_ce30208,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3012a
    mov.w @(DAT_ce301f2,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce3012a
    mov.w @(DAT_ce301f4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30138
    mov.w @(DAT_ce301f6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30138
    mov.w @(DAT_ce301f8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30132

LAB_ce3012a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30132:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30138:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301fa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3020c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30156:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30210,pc),r5
    mov.w @(DAT_ce301fc,pc),r6
    mov.l @(PTR_ce30208,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30176
    mov.w @(DAT_ce301f2,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3017e

LAB_ce30176:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3017e:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301fa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3020c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3019c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce301fe,pc),r13
    sts.l PR,@-r15
    mov.w @(DAT_ce30200,pc),r6
    add r14,r13
    mov.l @(PTR_ce30214,pc),r5
    mov.l @(PTR_ce30208,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301c8
    mov.w @(DAT_ce301f2,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce301c8
    mov.b @(0x5,r13),r0
    tst r0,r0
    bt LAB_ce301cc

LAB_ce301c8:
    bra LAB_ce301e8
    mov 0x00,r0

LAB_ce301cc:
    mov 0x00,r0
    mov.b r0,@(0x6,r13)
    mov 0x06,r3
    mov.b r0,@(0x7,r13)
    mov 0x1D,r5
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301fa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3020c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0

LAB_ce301e8:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301f0:
    #data 0x0394
DAT_ce301f2:
    #data 0x040c
DAT_ce301f4:
    #data 0x01f9
DAT_ce301f6:
    #data 0x01fc
DAT_ce301f8:
    #data 0x01d4
DAT_ce301fa:
    #data 0x01e9
DAT_ce301fc:
    #data 0x0364
DAT_ce301fe:
    #data 0x02a4
DAT_ce30200:
    #data 0x038c
    #align4

PTR_ce30204:
    #data DAT_ce32e48
PTR_ce30208:
    #data loc_8c054e58
PTR_ce3020c:
    #data loc_8c0530d8
PTR_ce30210:
    #data DAT_ce32dc8
PTR_ce30214:
    #data DAT_ce32e38

;=============================================

FUN_ce30218:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30330,pc),r5
    mov.w @(DAT_ce3031e,pc),r6
    mov.l @(PTR_ce30334,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30236
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30236:
    mov.w @(DAT_ce3031e,pc),r5
    mov.l @(PTR_ce30338,pc),r3
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
    mov.w @(DAT_ce30320,pc),r0
    mov.l @(PTR_ce3033c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30322,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30266:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30340,pc),r5
    mov.w @(DAT_ce30324,pc),r6
    mov.l @(PTR_ce30334,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30296
    mov.w @(DAT_ce30326,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce302a4
    mov.w @(DAT_ce30328,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce302a4
    mov.w @(DAT_ce3032a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3029e

LAB_ce30296:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3029e:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce302a4:
    mov.w @(DAT_ce30324,pc),r5
    mov.l @(PTR_ce30338,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30320,pc),r0
    mov.l @(PTR_ce3033c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30322,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302d6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30344,pc),r5
    mov.w @(DAT_ce3032c,pc),r6
    mov.l @(PTR_ce30334,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302f4
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302f4:
    mov.w @(DAT_ce3032c,pc),r5
    mov.l @(PTR_ce30338,pc),r3
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
    mov.w @(DAT_ce30320,pc),r0
    mov.l @(PTR_ce3033c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3031e:
    #data 0x03a4
DAT_ce30320:
    #data 0x01e9
DAT_ce30322:
    #data 0x01a3
DAT_ce30324:
    #data 0x039c
DAT_ce30326:
    #data 0x01f9
DAT_ce30328:
    #data 0x01fc
DAT_ce3032a:
    #data 0x01d4
DAT_ce3032c:
    #data 0x036c
    #align4

PTR_ce30330:
    #data DAT_ce32dd8
PTR_ce30334:
    #data loc_8c054e58
PTR_ce30338:
    #data loc_8c055c3a
PTR_ce3033c:
    #data loc_8c0530d8
PTR_ce30340:
    #data DAT_ce32de8
PTR_ce30344:
    #data DAT_ce32df8

;=============================================

FUN_ce30348:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30468,pc),r5
    mov.w @(DAT_ce30458,pc),r6
    mov.l @(PTR_ce3046c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30378
    mov.w @(DAT_ce3045a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30386
    mov.w @(DAT_ce3045c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30386
    mov.w @(DAT_ce3045e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30380

LAB_ce30378:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30380:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30386:
    mov.w @(DAT_ce30458,pc),r5
    mov.l @(PTR_ce30470,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30460,pc),r0
    mov.l @(PTR_ce30474,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303b2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce30462,pc),r13
    sts.l PR,@-r15
    mov.l @(PTR_ce30478,pc),r5
    add r14,r13
    mov.l @(PTR_ce3046c,pc),r3
    mov.w @(DAT_ce30464,pc),r6
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303d6
    mov.b @(0x5,r13),r0
    tst r0,r0
    bt LAB_ce303da

LAB_ce303d6:
    bra LAB_ce30408
    mov 0x00,r0

LAB_ce303da:
    mov 0x00,r12
    mov r12,r0
    nop
    mov.w @(DAT_ce30464,pc),r5
    mov.l @(PTR_ce30470,pc),r3
    add r14,r5
    mov.b r0,@(0x6,r13)
    mov.b r0,@(0x7,r13)
    jsr @r3
    mov r14,r4
    mov r12,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30460,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30474,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0

LAB_ce30408:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30412:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3047c,pc),r5
    mov.w @(DAT_ce30466,pc),r6
    mov.l @(PTR_ce3046c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30430
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30430:
    mov.w @(DAT_ce30466,pc),r5
    mov.l @(PTR_ce30470,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30460,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30474,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30458:
    #data 0x0374
DAT_ce3045a:
    #data 0x01f9
DAT_ce3045c:
    #data 0x01fc
DAT_ce3045e:
    #data 0x01d4
DAT_ce30460:
    #data 0x01e9
DAT_ce30462:
    #data 0x02a4
DAT_ce30464:
    #data 0x037c
DAT_ce30466:
    #data 0x0384
    #align4

PTR_ce30468:
    #data DAT_ce32e08
PTR_ce3046c:
    #data loc_8c054e58
PTR_ce30470:
    #data loc_8c055c3a
PTR_ce30474:
    #data loc_8c0530d8
PTR_ce30478:
    #data DAT_ce32e18
PTR_ce3047c:
    #data DAT_ce32e28

;=============================================

FUN_ce30480:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30598,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30498
    mov.w @(DAT_ce3058c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304a0

LAB_ce30498:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304a0:
    mov.w @(DAT_ce3058e,pc),r0
    mov 0x03,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce3059c,pc),r3
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

FUN_ce304c0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305a0,pc),r3
    jsr @r3
    mov 0x07,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce304da
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304da:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3058e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3059c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304f8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305a4,pc),r5
    mov.w @(DAT_ce30590,pc),r6
    mov.l @(PTR_ce305a8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30518
    mov.w @(DAT_ce3058c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30520

LAB_ce30518:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30520:
    mov.w @(DAT_ce30592,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov r3,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30530:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305ac,pc),r5
    mov.w @(DAT_ce30594,pc),r6
    mov.l @(PTR_ce305a8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30550
    mov.w @(DAT_ce3058c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30558

LAB_ce30550:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30558:
    mov.w @(DAT_ce30592,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30566:
    sts.l PR,@-r15
    add 0xFC,r15
    bsr FUN_ce304f8
    mov.l r4,@r15
    tst r0,r0
    bf LAB_ce3057a
    bsr FUN_ce30530
    mov.l @r15,r4
    tst r0,r0
    bt LAB_ce30582

LAB_ce3057a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce30582:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3058c:
    #data 0x040c
DAT_ce3058e:
    #data 0x01e9
DAT_ce30590:
    #data 0x0364
DAT_ce30592:
    #data 0x0258
DAT_ce30594:
    #data 0x038c
    #align4

PTR_ce30598:
    #data loc_8c054d1c
PTR_ce3059c:
    #data loc_8c0530d8
PTR_ce305a0:
    #data loc_8c054da0
PTR_ce305a4:
    #data DAT_ce32dc8
PTR_ce305a8:
    #data loc_8c054e58
PTR_ce305ac:
    #data DAT_ce32e38

;=============================================

LAB_ce305b0:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce306b8,pc),r0
    mov 0x02,r3
    mov.l r13,@-r15
    mov.w @(DAT_ce306b6,pc),r13
    mov.l r12,@-r15
    add r14,r13
    sts.l PR,@-r15
    mov.w r3,@(r0,r14)
    mov 0x10,r0
    mov.b @(r0,r13),r3
    tst r3,r3
    bt/s LAB_ce30604
    mov 0x00,r12
    mov.w @(DAT_ce306ba,pc),r0
    mov.w @(r0,r14),r3
    mov.w @(0x12,r13),r0
    cmp/eq r0,r3
    bf LAB_ce30600
    mov 0x10,r0
    mov.b @(r0,r13),r2
    add 0xFF,r2
    mov.b r2,@(r0,r13)
    mov.w @(DAT_ce306bc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30604
    mov.w @(DAT_ce306be,pc),r3
    mov r3,r0
    nop
    add 0x42,r0
    mov.l @(PTR_ce306cc,pc),r2
    mov.b @(r0,r14),r5
    add r3,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce306bc,pc),r0
    bra LAB_ce30604
    mov.b r12,@(r0,r14)

LAB_ce30600:
    mov 0x10,r0
    mov.b r12,@(r0,r13)

LAB_ce30604:
    mov.w @(DAT_ce306c0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30612
    mov.b @(0x5,r14),r0
    tst r0,r0
    bt LAB_ce3063e

LAB_ce30612:
    mov.w @(DAT_ce306c0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30622
    mov.b @(0x5,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce3066a

LAB_ce30622:
    mov.b @(0x8,r13),r0
    tst r0,r0
    bt LAB_ce3066a
    mov r12,r0
    nop
    mov.b r0,@(0x8,r13)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce306d0,pc),r3
    mov 0x00,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3063e:
    mov.w @r13,r2
    add 0xFF,r2
    mov.w r2,@r13
    exts.w r2,r2
    tst r2,r2
    bf LAB_ce3066a
    mov.w @(DAT_ce306c2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x15,r0
    bf LAB_ce3065a
    mov 0x01,r2
    bra LAB_ce3066a
    mov.w r2,@r13

LAB_ce3065a:
    lds.l @r15+,PR
    mov r13,r5
    mov.l @(PTR_ce306d4,pc),r2
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3066a:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30674:
    mov.w @(DAT_ce306c4,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce306d8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30688:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce306dc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce306c6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce306e0
    mov.w @(DAT_ce306c8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce306ae
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30906
    mov.l @r15+,r14

LAB_ce306ae:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3084a
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306b6:
    #data 0x02a4
DAT_ce306b8:
    #data 0x03e4
DAT_ce306ba:
    #data 0x0158
DAT_ce306bc:
    #data 0x0141
DAT_ce306be:
    #data 0x00ff
DAT_ce306c0:
    #data 0x0201
DAT_ce306c2:
    #data 0x01d0
DAT_ce306c4:
    #data 0x01ff
DAT_ce306c6:
    #data 0x01fe
DAT_ce306c8:
    #data 0x01f9
    #align4

PTR_ce306cc:
    #data FUN_ce32cbc
PTR_ce306d0:
    #data loc_8c035162
PTR_ce306d4:
    #data FUN_ce31ee4
PTR_ce306d8:
    #data PTR_ce32ec8
PTR_ce306dc:
    #data loc_8c052b4c

;=============================================

LAB_ce306e0:
    mov.w @(DAT_ce307de,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce306f2
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3078e
    mov.l @r15+,r14

LAB_ce306f2:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce306fa
    mov.l @r15+,r14

LAB_ce306fa:
    mov.w @(DAT_ce307e0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3071a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30736
    cmp/eq 0x02,r0
    bt LAB_ce3074a
    bra LAB_ce3075e
    nop

LAB_ce3071a:
    mov.w @(DAT_ce307e2,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce307ec,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce307e4,pc),r0
    mov.l @(PTR_ce307f0,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307e6,pc),r0
    bra LAB_ce3075e
    mov.b r13,@(r0,r14)

LAB_ce30736:
    mov.w @(DAT_ce307e2,pc),r0
    mov 0x01,r4
    mov.l @(PTR_ce307f4,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce307e4,pc),r0
    mov.l r3,@(r0,r14)
    bra LAB_ce3075a
    nop

LAB_ce3074a:
    mov.w @(DAT_ce307e2,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce307f8,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce307e4,pc),r0
    mov.l r3,@(r0,r14)

LAB_ce3075a:
    mov.w @(DAT_ce307e6,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3075e:
    mov.w @(DAT_ce307e8,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce307fc,pc),r3
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
    mov.w @(DAT_ce307e2,pc),r0
    mov.l @(PTR_ce30800,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce3078e:
    mov.w @(DAT_ce307e0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307ae
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307cc
    cmp/eq 0x02,r0
    bt LAB_ce30804
    bra LAB_ce3081a
    nop

LAB_ce307ae:
    mov.w @(DAT_ce307e2,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce307ec,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce307e4,pc),r0
    mov.l @(PTR_ce307f0,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307e6,pc),r0
    bra LAB_ce3081a
    mov.b r13,@(r0,r14)

LAB_ce307cc:
    mov.w @(DAT_ce307e2,pc),r0
    mov 0x01,r4
    mov.l @(PTR_ce307f4,pc),r2
    mov 0x07,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce30812
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307de:
    #data 0x01f9
DAT_ce307e0:
    #data 0x01e8
DAT_ce307e2:
    #data 0x0158
DAT_ce307e4:
    #data 0x03f4
DAT_ce307e6:
    #data 0x01a7
DAT_ce307e8:
    #data 0x01ac
    #align4

PTR_ce307ec:
    #data loc_8c04223a
PTR_ce307f0:
    #data DAT_ce32d80
PTR_ce307f4:
    #data DAT_ce32d84
PTR_ce307f8:
    #data DAT_ce32d88
PTR_ce307fc:
    #data loc_8c2896b0
PTR_ce30800:
    #data loc_8c034e8c

;=============================================

LAB_ce30804:
    mov.w @(DAT_ce30926,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce30934,pc),r2
    mov 0x08,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30812:
    mov.w @(DAT_ce30928,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3092a,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3081a:
    mov.w @(DAT_ce3092c,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30938,pc),r3
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
    mov.w @(DAT_ce30926,pc),r0
    mov.l @(PTR_ce3093c,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce3084a:
    mov.w @(DAT_ce30930,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce3092e,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    add r14,r12
    bt/s LAB_ce30870
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3088e
    cmp/eq 0x02,r0
    bt LAB_ce308a6
    bra LAB_ce308d4
    nop

LAB_ce30870:
    mov.w @(DAT_ce30926,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30940,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30928,pc),r0
    mov.l @(PTR_ce30944,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3092a,pc),r0
    bra LAB_ce308d4
    mov.b r13,@(r0,r14)

LAB_ce3088e:
    mov.w @(DAT_ce30926,pc),r0
    mov 0x01,r4
    mov 0x04,r3
    mov.l @(PTR_ce30948,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30928,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3092a,pc),r0
    bra LAB_ce308d4
    mov.b r4,@(r0,r14)

LAB_ce308a6:
    mov.w @(DAT_ce30926,pc),r0
    mov 0x02,r2
    mov 0x05,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce30928,pc),r0
    mov.l @(PTR_ce3094c,pc),r2
    mov.l @(PTR_ce30940,pc),r3
    mov.l r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3092a,pc),r0
    mov 0x02,r2
    mov 0x08,r3
    mov.b r2,@(r0,r14)
    mov 0x13,r0
    mov.b r3,@(r0,r12)
    mov.w @(DAT_ce30926,pc),r0
    mov.b @(r0,r14),r2
    mov 0x12,r0
    mov.b r2,@(r0,r12)

LAB_ce308d4:
    mov.w @(DAT_ce3092c,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce30938,pc),r3
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
    mov.w @(DAT_ce30926,pc),r0
    mov.l @(PTR_ce3093c,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30906:
    mov.w @(DAT_ce30930,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30950
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3096e
    cmp/eq 0x02,r0
    bt LAB_ce30990
    bra LAB_ce309a6
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30926:
    #data 0x0158
DAT_ce30928:
    #data 0x03f4
DAT_ce3092a:
    #data 0x01a7
DAT_ce3092c:
    #data 0x01ac
DAT_ce3092e:
    #data 0x02a4
DAT_ce30930:
    #data 0x01e8
    #align4

PTR_ce30934:
    #data DAT_ce32d88
PTR_ce30938:
    #data loc_8c2896b0
PTR_ce3093c:
    #data loc_8c034e8c
PTR_ce30940:
    #data loc_8c04223a
PTR_ce30944:
    #data DAT_ce32d8c
PTR_ce30948:
    #data DAT_ce32d90
PTR_ce3094c:
    #data DAT_ce32d94

;=============================================

LAB_ce30950:
    mov.w @(DAT_ce30a36,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30a48,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a38,pc),r0
    mov.l @(PTR_ce30a4c,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a3a,pc),r0
    bra LAB_ce309a6
    mov.b r13,@(r0,r14)

LAB_ce3096e:
    mov.w @(DAT_ce30a36,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce30a48,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a38,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce30a50,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a3a,pc),r0
    bra LAB_ce309a6
    mov.b r3,@(r0,r14)

LAB_ce30990:
    mov.w @(DAT_ce30a36,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.l @(PTR_ce30a54,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30a38,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a3a,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce309a6:
    mov.w @(DAT_ce30a3c,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30a58,pc),r3
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
    mov.w @(DAT_ce30a36,pc),r0
    mov.l @(PTR_ce30a5c,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce309d6:
    mov.w @(DAT_ce30a3e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce309fe
    mov.w @(DAT_ce30a40,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce309ee
    mov.w @(DAT_ce30a42,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce309fe

LAB_ce309ee:
    mov.w @(DAT_ce30a40,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30a02
    mov.w @(DAT_ce30a42,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30a02

LAB_ce309fe:
    bra LAB_ce30a06
    nop

LAB_ce30a02:
    rts
    nop

LAB_ce30a06:
    mov.w @(DAT_ce30a40,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30a14
    bra LAB_ce30b10
    nop

LAB_ce30a14:
    bra LAB_ce30a18
    nop

LAB_ce30a18:
    mov.w @(DAT_ce30a44,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a60
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce30a86
    cmp/eq 0x02,r0
    bt LAB_ce30aaa
    bra LAB_ce30ad0
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a36:
    #data 0x0158
DAT_ce30a38:
    #data 0x03f4
DAT_ce30a3a:
    #data 0x01a7
DAT_ce30a3c:
    #data 0x01ac
DAT_ce30a3e:
    #data 0x0201
DAT_ce30a40:
    #data 0x01fe
DAT_ce30a42:
    #data 0x01d6
DAT_ce30a44:
    #data 0x01e8
    #align4

PTR_ce30a48:
    #data loc_8c04223a
PTR_ce30a4c:
    #data DAT_ce32d8c
PTR_ce30a50:
    #data DAT_ce32d90
PTR_ce30a54:
    #data DAT_ce32d94
PTR_ce30a58:
    #data loc_8c2896b0
PTR_ce30a5c:
    #data loc_8c034e8c

;=============================================

LAB_ce30a60:
    mov.w @(DAT_ce30b48,pc),r0
    mov 0x0C,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a7a
    mov.w @(DAT_ce30b4a,pc),r0
    mov.l @(PTR_ce30b54,pc),r2
    bra LAB_ce30a80
    mov.l r2,@(r0,r14)

LAB_ce30a7a:
    mov.w @(DAT_ce30b4a,pc),r0
    mov.l @(PTR_ce30b58,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a80:
    mov.w @(DAT_ce30b4c,pc),r0
    bra LAB_ce30ad0
    mov.b r4,@(r0,r14)

LAB_ce30a86:
    mov.w @(DAT_ce30b48,pc),r0
    mov 0x01,r5
    mov 0x0D,r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30aa2
    mov.w @(DAT_ce30b4a,pc),r0
    mov.l @(PTR_ce30b5c,pc),r2
    bra LAB_ce30acc
    mov.l r2,@(r0,r14)

LAB_ce30aa2:
    mov.w @(DAT_ce30b4a,pc),r0
    mov.l @(PTR_ce30b60,pc),r1
    bra LAB_ce30acc
    mov.l r1,@(r0,r14)

LAB_ce30aaa:
    mov.w @(DAT_ce30b48,pc),r0
    mov 0x02,r5
    mov 0x0E,r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30ac6
    mov.w @(DAT_ce30b4a,pc),r0
    mov.l @(PTR_ce30b64,pc),r2
    bra LAB_ce30acc
    mov.l r2,@(r0,r14)

LAB_ce30ac6:
    mov.w @(DAT_ce30b4a,pc),r0
    mov.l @(PTR_ce30b68,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30acc:
    mov.w @(DAT_ce30b4c,pc),r0
    mov.b r5,@(r0,r14)

LAB_ce30ad0:
    mov.w @(DAT_ce30b4e,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30b6c,pc),r3
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
    mov.w @(DAT_ce30b48,pc),r0
    mov.l @(PTR_ce30b70,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30b50,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30b0a
    mov.w @(DAT_ce30b50,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30b0a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30b10:
    mov.w @(DAT_ce30b52,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30b2e
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce30b84
    cmp/eq 0x02,r0
    bt LAB_ce30ba8
    bra LAB_ce30bce
    nop

LAB_ce30b2e:
    mov.w @(DAT_ce30b48,pc),r0
    mov 0x0F,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30b78
    mov.w @(DAT_ce30b4a,pc),r0
    mov.l @(PTR_ce30b74,pc),r2
    bra LAB_ce30b7e
    mov.l r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b48:
    #data 0x0158
DAT_ce30b4a:
    #data 0x03f4
DAT_ce30b4c:
    #data 0x01a7
DAT_ce30b4e:
    #data 0x01ac
DAT_ce30b50:
    #data 0x01d6
DAT_ce30b52:
    #data 0x01e8
    #align4

PTR_ce30b54:
    #data DAT_ce32d98
PTR_ce30b58:
    #data DAT_ce32db0
PTR_ce30b5c:
    #data DAT_ce32d9c
PTR_ce30b60:
    #data DAT_ce32db4
PTR_ce30b64:
    #data DAT_ce32da0
PTR_ce30b68:
    #data DAT_ce32db8
PTR_ce30b6c:
    #data loc_8c2896b0
PTR_ce30b70:
    #data loc_8c034e8c
PTR_ce30b74:
    #data DAT_ce32da4

;=============================================

LAB_ce30b78:
    mov.w @(DAT_ce30c98,pc),r0
    mov.l @(PTR_ce30ca8,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b7e:
    mov.w @(DAT_ce30c9a,pc),r0
    bra LAB_ce30bce
    mov.b r4,@(r0,r14)

LAB_ce30b84:
    mov.w @(DAT_ce30c9c,pc),r0
    mov 0x01,r5
    mov 0x10,r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30ba0
    mov.w @(DAT_ce30c98,pc),r0
    mov.l @(PTR_ce30cac,pc),r2
    bra LAB_ce30bca
    mov.l r2,@(r0,r14)

LAB_ce30ba0:
    mov.w @(DAT_ce30c98,pc),r0
    mov.l @(PTR_ce30cb0,pc),r1
    bra LAB_ce30bca
    mov.l r1,@(r0,r14)

LAB_ce30ba8:
    mov.w @(DAT_ce30c9c,pc),r0
    mov 0x02,r5
    mov 0x11,r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30bc4
    mov.w @(DAT_ce30c98,pc),r0
    mov.l @(PTR_ce30cb4,pc),r2
    bra LAB_ce30bca
    mov.l r2,@(r0,r14)

LAB_ce30bc4:
    mov.w @(DAT_ce30c98,pc),r0
    mov.l @(PTR_ce30cb8,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30bca:
    mov.w @(DAT_ce30c9a,pc),r0
    mov.b r5,@(r0,r14)

LAB_ce30bce:
    mov.w @(DAT_ce30c9e,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30cbc,pc),r3
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
    mov.w @(DAT_ce30c9c,pc),r0
    mov.l @(PTR_ce30cc0,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30ca0,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30c08
    mov.w @(DAT_ce30ca0,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30c08:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30c0e:
    mov.w @(DAT_ce30ca2,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30cc4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30c22:
    sts.l PR,@-r15
    mov.l @(PTR_ce30cc8,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30c30:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30ccc,pc),r3
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
    mov.w @(DAT_ce30ca4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30cd0
    mov.w @(DAT_ce30ca6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c90
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30fae
    mov.l @r15+,r14

LAB_ce30c90:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30f70
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c98:
    #data 0x03f4
DAT_ce30c9a:
    #data 0x01a7
DAT_ce30c9c:
    #data 0x0158
DAT_ce30c9e:
    #data 0x01ac
DAT_ce30ca0:
    #data 0x01d6
DAT_ce30ca2:
    #data 0x01ff
DAT_ce30ca4:
    #data 0x01fe
DAT_ce30ca6:
    #data 0x01f9
    #align4

PTR_ce30ca8:
    #data DAT_ce32dbc
PTR_ce30cac:
    #data DAT_ce32da8
PTR_ce30cb0:
    #data DAT_ce32dc0
PTR_ce30cb4:
    #data DAT_ce32dac
PTR_ce30cb8:
    #data DAT_ce32dc4
PTR_ce30cbc:
    #data loc_8c2896b0
PTR_ce30cc0:
    #data loc_8c034e8c
PTR_ce30cc4:
    #data PTR_ce32ed8
PTR_ce30cc8:
    #data loc_8c0511e2
PTR_ce30ccc:
    #data loc_8c052c84

;=============================================

LAB_ce30cd0:
    mov.w @(DAT_ce30db8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30ce2
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e30
    mov.l @r15+,r14

LAB_ce30ce2:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30cea
    mov.l @r15+,r14

LAB_ce30cea:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce30dbc,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    mov.w @(DAT_ce30dba,pc),r13
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    add r14,r13
    mov.l @(PTR_ce30dc0,pc),r10
    extu.b r0,r0
    mov.l @(PTR_ce30dc4,pc),r11
    cmp/eq 0x00,r0
    bt/s LAB_ce30d18
    mov 0x00,r12
    cmp/eq 0x01,r0
    bt LAB_ce30d2e
    cmp/eq 0x02,r0
    bt LAB_ce30d6c
    bra LAB_ce30e22
    nop

LAB_ce30d18:
    jsr @r11
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30d26
    bra LAB_ce30e22
    nop

LAB_ce30d26:
    jsr @r10
    mov r14,r4
    bra LAB_ce30e22
    nop

LAB_ce30d2e:
    jsr @r11
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d3c
    jsr @r10
    mov r14,r4

LAB_ce30d3c:
    mov.w @(DAT_ce30dbe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e22
    mov.b r12,@(r0,r14)
    add 0x60,r0
    mov 0x13,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30dc8,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    bra LAB_ce30e22
    mov.w r1,@(r0,r2)

LAB_ce30d6c:
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30d84
    cmp/eq 0x01,r0
    bt LAB_ce30d90
    cmp/eq 0x02,r0
    bt LAB_ce30dd4
    cmp/eq 0x03,r0
    bt LAB_ce30e04
    bra LAB_ce30e22
    nop

LAB_ce30d84:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x9,r13)

LAB_ce30d90:
    mov.w @(DAT_ce30dbe,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30dfc
    mov.b @(r0,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce30dcc,pc),r3
    mov.b r0,@(0x9,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30dd0,pc),r2
    mov 0x26,r5
    jsr @r2
    mov r14,r4
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x14,r0
    bra LAB_ce30dfc
    mov.w r0,@(0x1c,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30db8:
    #data 0x01f9
DAT_ce30dba:
    #data 0x02a4
DAT_ce30dbc:
    #data 0x01e8
DAT_ce30dbe:
    #data 0x0141
    #align4

PTR_ce30dc0:
    #data loc_8c051648
PTR_ce30dc4:
    #data loc_8c034dee
PTR_ce30dc8:
    #data loc_8c2896b0
PTR_ce30dcc:
    #data loc_8c0ab514
PTR_ce30dd0:
    #data loc_8c042008

;=============================================

LAB_ce30dd4:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce30df6
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov r12,r0
    nop
    mov.l @(PTR_ce30ed0,pc),r3
    mov 0x07,r5
    mov.b r0,@(0x9,r13)
    mov 0x03,r6
    jsr @r3
    mov r14,r4

LAB_ce30df6:
    mov.w @(DAT_ce30eca,pc),r0
    mov.b @(r0,r14),r0
    mov.b r0,@(0x9,r13)

LAB_ce30dfc:
    jsr @r11
    mov r14,r4
    bra LAB_ce30e22
    nop

LAB_ce30e04:
    jsr @r11
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e12
    jsr @r10
    mov r14,r4

LAB_ce30e12:
    mov.w @(DAT_ce30eca,pc),r0
    mov.b @(r0,r14),r0
    mov.b r0,@(0x9,r13)
    mov.b @(0x9,r13),r0
    tst r0,r0
    bf LAB_ce30e22
    mov 0xFF,r0
    mov.b r0,@(0x9,r13)

LAB_ce30e22:
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30e30:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce30ece,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    mov.w @(DAT_ce30ecc,pc),r13
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    add r14,r13
    mov.l @(PTR_ce30ed4,pc),r10
    extu.b r0,r0
    mov.l @(PTR_ce30ed8,pc),r11
    cmp/eq 0x00,r0
    bt/s LAB_ce30e5e
    mov 0x00,r12
    cmp/eq 0x01,r0
    bt LAB_ce30e74
    cmp/eq 0x02,r0
    bt LAB_ce30eb2
    bra LAB_ce30f62
    nop

LAB_ce30e5e:
    jsr @r11
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30e6c
    bra LAB_ce30f62
    nop

LAB_ce30e6c:
    jsr @r10
    mov r14,r4
    bra LAB_ce30f62
    nop

LAB_ce30e74:
    jsr @r11
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e82
    jsr @r10
    mov r14,r4

LAB_ce30e82:
    mov.w @(DAT_ce30eca,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30f62
    mov.b r12,@(r0,r14)
    add 0x60,r0
    mov 0x14,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30edc,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    bra LAB_ce30f62
    mov.w r1,@(r0,r2)

LAB_ce30eb2:
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30ee0
    cmp/eq 0x01,r0
    bt LAB_ce30eec
    cmp/eq 0x02,r0
    bt LAB_ce30f14
    cmp/eq 0x03,r0
    bt LAB_ce30f44
    bra LAB_ce30f62
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30eca:
    #data 0x0141
DAT_ce30ecc:
    #data 0x02a4
DAT_ce30ece:
    #data 0x01e8
    #align4

PTR_ce30ed0:
    #data loc_8c034e8c
PTR_ce30ed4:
    #data loc_8c051648
PTR_ce30ed8:
    #data loc_8c034dee
PTR_ce30edc:
    #data loc_8c2896b0

;=============================================

LAB_ce30ee0:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x9,r13)

LAB_ce30eec:
    mov.w @(DAT_ce30fca,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f3c
    mov.b @(r0,r14),r0
    mov 0x01,r5
    mov.l @(PTR_ce30fd0,pc),r3
    mov.b r0,@(0x9,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30fd4,pc),r2
    mov 0x26,r5
    jsr @r2
    mov r14,r4
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x14,r0
    bra LAB_ce30f3c
    mov.w r0,@(0x1c,r14)

LAB_ce30f14:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce30f36
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov r12,r0
    nop
    mov.l @(PTR_ce30fd8,pc),r3
    mov 0x09,r5
    mov.b r0,@(0x9,r13)
    mov 0x03,r6
    jsr @r3
    mov r14,r4

LAB_ce30f36:
    mov.w @(DAT_ce30fca,pc),r0
    mov.b @(r0,r14),r0
    mov.b r0,@(0x9,r13)

LAB_ce30f3c:
    jsr @r11
    mov r14,r4
    bra LAB_ce30f62
    nop

LAB_ce30f44:
    jsr @r11
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f52
    jsr @r10
    mov r14,r4

LAB_ce30f52:
    mov.w @(DAT_ce30fca,pc),r0
    mov.b @(r0,r14),r0
    mov.b r0,@(0x9,r13)
    mov.b @(0x9,r13),r0
    tst r0,r0
    bf LAB_ce30f62
    mov 0xFF,r0
    mov.b r0,@(0x9,r13)

LAB_ce30f62:
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30f70:
    mov.w @(DAT_ce30fce,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce30fcc,pc),r4
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30f92
    add r14,r4
    cmp/eq 0x01,r0
    bt LAB_ce30f92
    cmp/eq 0x02,r0
    bf LAB_ce30fa8
    mov 0x10,r0
    mov 0x08,r3
    mov.b r3,@(r0,r4)

LAB_ce30f92:
    mov.l @(PTR_ce30fdc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fa8
    lds.l @r15+,PR
    mov.l @(PTR_ce30fe0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30fa8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fae:
    mov.w @(DAT_ce30fce,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31016
    cmp/eq 0x01,r0
    bt LAB_ce30fe4
    cmp/eq 0x02,r0
    bt LAB_ce30fe4
    bra LAB_ce3102c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fca:
    #data 0x0141
DAT_ce30fcc:
    #data 0x02a4
DAT_ce30fce:
    #data 0x01e8
    #align4

PTR_ce30fd0:
    #data loc_8c0ab514
PTR_ce30fd4:
    #data loc_8c042008
PTR_ce30fd8:
    #data loc_8c034e8c
PTR_ce30fdc:
    #data loc_8c034dee
PTR_ce30fe0:
    #data loc_8c051648

;=============================================

LAB_ce30fe4:
    mov.w @(DAT_ce310ce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31016
    mov.b @(r0,r14),r3
    add 0x60,r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce310d4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce310ce,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce31016:
    mov.l @(PTR_ce310d8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3102c
    lds.l @r15+,PR
    mov.l @(PTR_ce310dc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3102c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31032:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310e0,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce310e4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31048:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310e8,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce310ec,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce310d0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3106a
    bsr FUN_ce310ac
    mov r14,r4
    bra LAB_ce3106e
    nop

LAB_ce3106a:
    bsr FUN_ce3108a
    mov r14,r4

LAB_ce3106e:
    mov.l @(PTR_ce310f0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce31084
    lds.l @r15+,PR
    mov.l @(PTR_ce310f4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31084:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3108a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce310d8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310a4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce310f8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce310a4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce310ac:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce310d8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310c6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce310f8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce310c6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310ce:
    #data 0x0141
DAT_ce310d0:
    #data 0x01fe
    #align4

PTR_ce310d4:
    #data loc_8c2896b0
PTR_ce310d8:
    #data loc_8c034dee
PTR_ce310dc:
    #data loc_8c051648
PTR_ce310e0:
    #data loc_8c050084
PTR_ce310e4:
    #data loc_8c04ff88
PTR_ce310e8:
    #data loc_8c04fea8
PTR_ce310ec:
    #data loc_8c050048
PTR_ce310f0:
    #data loc_8c052ce2
PTR_ce310f4:
    #data loc_8c052dac
PTR_ce310f8:
    #data loc_8c05176e

;=============================================

LAB_ce310fc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x08,r3
    mov.l r12,@-r15
    mov 0x10,r0
    mov.w @(DAT_ce31206,pc),r12
    sts.l PR,@-r15
    add r14,r12
    mov.b r3,@(r0,r12)
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce3116e
    mov 0x00,r13
    mov.l @(PTR_ce31214,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce31218,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31208,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3116e
    mov.w @(DAT_ce3120a,pc),r0
    mov 0x35,r2
    mov.l @(PTR_ce3121c,pc),r3
    mov 0x14,r5
    mov.b r2,@(r0,r14)
    add 0x58,r0
    mov.b r13,@(r0,r14)
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3120c,pc),r0
    mov.l @(PTR_ce31220,pc),r3
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
    mov.w @(DAT_ce3120e,pc),r0
    mov.w @(r0,r14),r0
    mov.w r0,@(0x12,r12)

LAB_ce3116e:
    mov.w @(DAT_ce31210,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3117e
    mov.l @(PTR_ce31224,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3117e:
    mov 0x5C,r1
    mov.l @(PTR_ce31228,pc),r3
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
    mov.w @(DAT_ce31212,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce311d0
    mov.l @(PTR_ce3122c,pc),r3
    mov 0x16,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31212,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce311d0:
    mov.l @(PTR_ce31230,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311ea
    lds.l @r15+,PR
    mov.l @(PTR_ce31234,pc),r3
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce311ea:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce311f4:
    mov r4,r3
    mov.l @(PTR_ce31238,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31206:
    #data 0x02a4
DAT_ce31208:
    #data 0x01fe
DAT_ce3120a:
    #data 0x01a1
DAT_ce3120c:
    #data 0x01ac
DAT_ce3120e:
    #data 0x0158
DAT_ce31210:
    #data 0x01ff
DAT_ce31212:
    #data 0x014b
    #align4

PTR_ce31214:
    #data loc_8c052b4c
PTR_ce31218:
    #data loc_8c056de4
PTR_ce3121c:
    #data loc_8c034e8c
PTR_ce31220:
    #data loc_8c2896b0
PTR_ce31224:
    #data loc_8c0511e2
PTR_ce31228:
    #data loc_8c052c84
PTR_ce3122c:
    #data loc_8c04223a
PTR_ce31230:
    #data loc_8c034dee
PTR_ce31234:
    #data loc_8c051648
PTR_ce31238:
    #data PTR_ce32ee8

;=============================================

LAB_ce3123c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31364,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31360,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31280
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31362,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31278
    mova @(DAT_ce31368,pc),r0
    bra LAB_ce3127c
    fmov.s @r0,fr3

LAB_ce31278:
    mova @(DAT_ce3136c,pc),r0
    fmov.s @r0,fr3

LAB_ce3127c:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce31280:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31286:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31364,pc),r3
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
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce312fc
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    fldi0 fr4
    mov r6,r5
    add 0x01,r0
    mov.l @(PTR_ce31370,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce312fc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31302:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31364,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3131c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31374,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3131c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31324:
    mov r4,r3
    mov.l @(PTR_ce31378,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31336:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x14,r0
    mov.w r0,@(0x1c,r4)
    mov.w @(DAT_ce31362,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31380
    mova @(DAT_ce3137c,pc),r0
    bra LAB_ce31384
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31360:
    #data 0x0141
DAT_ce31362:
    #data 0x01d2
    #align4

PTR_ce31364:
    #data loc_8c034dee
DAT_ce31368:
    #data 0x41555555
DAT_ce3136c:
    #data 0xc1555555
PTR_ce31370:
    #data loc_8c034e8c
PTR_ce31374:
    #data loc_8c051648
PTR_ce31378:
    #data PTR_ce32ef4
DAT_ce3137c:
    #data 0xc1855555

;=============================================

LAB_ce31380:
    mova @(DAT_ce3149c,pc),r0
    fmov.s @r0,fr3

LAB_ce31384:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)

LAB_ce31388:
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce313ee
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce314a4,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce313ee:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce313f4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce314a0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3140e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce314a8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3140e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31416:
    mov r4,r3
    mov.l @(PTR_ce314ac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31428:
    mov.l @(PTR_ce314b0,pc),r2
    mov 0x02,r1
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.b @r2,r3
    extu.b r3,r3
    cmp/ge r1,r3
    bt/s LAB_ce31448
    mov r4,r14
    mov.w @(DAT_ce31498,pc),r3
    mov 0x00,r0
    add r14,r3
    mov.b r0,@r3
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31448:
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov.l @(DAT_ce314b4,pc),r1
    mov 0x2F,r5
    add 0x01,r0
    fldi0 fr4
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31498,pc),r0
    lds r1,FPUL
    mov.b r3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    mov.l @(PTR_ce314bc,pc),r3
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce314b8,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce314a4,pc),r2
    mov r14,r4
    mov 0x06,r6
    mov 0x1A,r5
    jmp @r2
    mov.l @r15+,r14
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31498:
    #data 0x012c
    #align4

DAT_ce3149c:
    #data 0x41855555
PTR_ce314a0:
    #data loc_8c034dee
PTR_ce314a4:
    #data loc_8c034e8c
PTR_ce314a8:
    #data loc_8c051648
PTR_ce314ac:
    #data PTR_ce32f00
PTR_ce314b0:
    #data loc_8c2895f0
DAT_ce314b4:
    #data 0x44092492
DAT_ce314b8:
    #data 0xc0892492
PTR_ce314bc:
    #data loc_8c042008

;=============================================

LAB_ce314c0:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce315f4,pc),r3
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
    mov.w @(DAT_ce315ee,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3153a
    mov.w @(DAT_ce315ee,pc),r0
    mov 0x01,r5
    mov.l @(PTR_ce315f8,pc),r3
    mov 0x03,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce315fc,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31600,pc),r3
    mov 0x1F,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3153a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31540:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce315f4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31558
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce31558:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31560:
    mov r4,r3
    mov.l @(PTR_ce31604,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31572:
    mov.l @(PTR_ce315f8,pc),r3
    mov 0x00,r6
    jmp @r3
    mov 0x13,r5

LAB_ce3157a:
    mov.l @(PTR_ce315f8,pc),r3
    mov 0x01,r6
    jmp @r3
    mov 0x13,r5

LAB_ce31582:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31608,pc),r0
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce315a2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3160c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce315ba
    lds.l @r15+,PR
    mov.l @(PTR_ce31610,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce315ba:
    lds.l @r15+,PR
    mov.l @(PTR_ce315f4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce315c4:
    mov.w @(DAT_ce315f0,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31614,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce315d8:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31618,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce315f2,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315ee:
    #data 0x041c
DAT_ce315f0:
    #data 0x01e9
DAT_ce315f2:
    #data 0x02a4
    #align4

PTR_ce315f4:
    #data loc_8c034dee
PTR_ce315f8:
    #data loc_8c034e8c
PTR_ce315fc:
    #data loc_8c0511b4
PTR_ce31600:
    #data loc_8c042008
PTR_ce31604:
    #data PTR_ce32f0c
PTR_ce31608:
    #data PTR_ce32f14
PTR_ce3160c:
    #data loc_8c046c8a
PTR_ce31610:
    #data loc_8c051648
PTR_ce31614:
    #data PTR_ce32f28
PTR_ce31618:
    #data PTR_ce32f50

;=============================================

LAB_ce3161c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce3173c,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31740,pc),r12
    tst r0,r0
    bf/s LAB_ce31698
    mov 0x00,r13
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31734,pc),r0
    mov.l @(PTR_ce31744,pc),r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31736,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31738,pc),r0
    mov 0x15,r5
    mov 0x00,r6
    mov.b @(r0,r14),r2
    add 0xFE,r0
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r12,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.l @(PTR_ce31748,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31738,pc),r0
    bra LAB_ce316f0
    mov.b @(r0,r14),r5

LAB_ce31698:
    mova @(DAT_ce3174c,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31738,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r12,r3
    extu.b r0,r0
    add 0x7C,r3
    shll r0
    mov.w @(r0,r3),r2
    mov 0x15,r5
    mov 0x0E,r6
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.l @(PTR_ce31748,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31738,pc),r0
    mov.b @(r0,r14),r5
    add 0x03,r5

LAB_ce316f0:
    mov.l @(PTR_ce31750,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov r13,r0
    nop
    mov.l @(PTR_ce31754,pc),r3
    mov 0x05,r5
    mov.b r0,@(0x4,r2)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3173a,pc),r0
    mov 0x30,r2
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r12,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31734:
    #data 0x01f9
DAT_ce31736:
    #data 0x041c
DAT_ce31738:
    #data 0x01a3
DAT_ce3173a:
    #data 0x01a1
    #align4

PTR_ce3173c:
    #data loc_8c05218a
PTR_ce31740:
    #data loc_8c2896b0
PTR_ce31744:
    #data loc_8c05115a
PTR_ce31748:
    #data loc_8c034e8c
DAT_ce3174c:
    #data 0x41800000
PTR_ce31750:
    #data loc_8c0e92f4
PTR_ce31754:
    #data loc_8c056de4

;=============================================

LAB_ce31758:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce318b0,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce318a8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce317b2
    mov 0x00,r3
    mov.w @(DAT_ce318aa,pc),r5
    mov.b r3,@(r0,r14)
    mov.b @(0x7,r14),r0
    add r14,r5
    mov.b @r5,r5
    mov r0,r3
    shll r0
    mov.l @(PTR_ce318b4,pc),r2
    add r3,r0
    add r0,r5
    jsr @r2
    mov r14,r4
    tst r0,r0
    bf/s LAB_ce31796
    mov.l r0,@(0x14,r14)
    mov.l @r15,r2
    mov 0x01,r0
    mov.b r0,@(0x4,r2)

LAB_ce31796:
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce318b8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x25,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce318b8,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce317b2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce317ba:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.b @(0x4,r5),r0
    tst r0,r0
    bt/s LAB_ce317e0
    mov r4,r14
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf/s LAB_ce317d8
    mov 0x15,r5
    bra LAB_ce317da
    mov 0x01,r6

LAB_ce317d8:
    mov 0x0F,r6

LAB_ce317da:
    mov.l @(PTR_ce318bc,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce317e0:
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
    mov.w @(DAT_ce318ac,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce3182e
    mov r14,r4
    mov.w @(DAT_ce318ac,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce3182e:
    lds.l @r15+,PR
    mov.l @(PTR_ce318b0,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31836:
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
    mov.w @(DAT_ce318ac,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce3188a
    mov r14,r4
    mov.w @(DAT_ce318ac,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce3188a:
    mov.l @(PTR_ce318b0,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce318a8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce318a2
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce318a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce318a8:
    #data 0x0140
DAT_ce318aa:
    #data 0x01a3
DAT_ce318ac:
    #data 0x041c
    #align4

PTR_ce318b0:
    #data loc_8c034dee
PTR_ce318b4:
    #data loc_8c0a9ab4
PTR_ce318b8:
    #data loc_8c042008
PTR_ce318bc:
    #data loc_8c034e8c

;=============================================

LAB_ce318c0:
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
    mov.w @(DAT_ce319fe,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce31914
    mov r14,r4
    mov.w @(DAT_ce319fe,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce31914:
    mov.l @(PTR_ce31a0c,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31942
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce31930
    lds.l @r15+,PR
    mov.l @(PTR_ce31a10,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31930:
    mova @(DAT_ce31a14,pc),r0
    mov.l @(PTR_ce31a18,pc),r3
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31942:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31948:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31a1c,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31a00,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3195e:
    mov.w @(DAT_ce31a02,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce3197c
    mov 0x10,r4
    mov.w @(DAT_ce31a06,pc),r0
    mov.w @(DAT_ce31a04,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce3197c:
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0xb,r5)
    mov.b r0,@(0xc,r5)
    mov.b r0,@(0xd,r5)
    mov.b r0,@(0xe,r5)
    mov.b r0,@(0xf,r5)
    mov r4,r0
    nop
    mov.l @(PTR_ce31a20,pc),r3
    mov.b r0,@(0xa,r5)
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
    mov.w @(DAT_ce31a08,pc),r0
    mov.l @(PTR_ce31a24,pc),r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce319fe,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31a0a,pc),r0
    mov 0x2E,r2
    mov.l @(PTR_ce31a28,pc),r3
    mov 0x16,r5
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
    mov.l @(PTR_ce31a2c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce31a30,pc),r3
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319fe:
    #data 0x041c
DAT_ce31a00:
    #data 0x02a4
DAT_ce31a02:
    #data 0x0255
DAT_ce31a04:
    #data 0x00ff
DAT_ce31a06:
    #data 0x03f0
DAT_ce31a08:
    #data 0x01f9
DAT_ce31a0a:
    #data 0x01a1
    #align4

PTR_ce31a0c:
    #data loc_8c034dee
PTR_ce31a10:
    #data loc_8c051648
DAT_ce31a14:
    #data 0xbf4db6db
PTR_ce31a18:
    #data loc_8c05176e
PTR_ce31a1c:
    #data PTR_ce32f64
PTR_ce31a20:
    #data loc_8c05218a
PTR_ce31a24:
    #data loc_8c05115a
PTR_ce31a28:
    #data loc_8c2896b0
PTR_ce31a2c:
    #data loc_8c042008
PTR_ce31a30:
    #data loc_8c034e8c

;=============================================

LAB_ce31a34:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31b56,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31b58,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31b5a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31a56
    bra LAB_ce31a58
    mov 0x02,r3

LAB_ce31a56:
    mov 0x00,r3

LAB_ce31a58:
    mov.w @(DAT_ce31b5c,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x03,r0
    mov.l @(PTR_ce31b68,pc),r3
    mov.b r0,@(0xa,r5)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31ab0
    mov.w @(DAT_ce31b5e,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31b6c,pc),r3
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31b70,pc),r3
    mov 0x5A,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31b74,pc),r2
    mov 0x2D,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce31b78,pc),r0
    mov.l @(PTR_ce31b80,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce31b7c,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31ab0:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31ab8:
    mov 0x03,r0
    mov.l r14,@-r15
    mov 0x02,r3
    mov r4,r14
    sts.l PR,@-r15
    mov.b r0,@(0xa,r5)
    mov 0x05,r2
    mov.w @(DAT_ce31b56,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31b58,pc),r0
    mov.l @(PTR_ce31b68,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31b84,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bf LAB_ce31b12
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31b12
    mov.w @(DAT_ce31b60,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31b6c,pc),r3
    mov 0x02,r6
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce31b62,pc),r0
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

LAB_ce31b12:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31b18:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31b68,pc),r3
    mov 0x03,r0
    mov.l r4,@r15
    mov.b r0,@(0xa,r5)
    jsr @r3
    mov.l @r15,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b38
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31b88,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31b38:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31b40:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31b8c,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31b64,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b56:
    #data 0x03f8
DAT_ce31b58:
    #data 0x0328
DAT_ce31b5a:
    #data 0x0255
DAT_ce31b5c:
    #data 0x03f1
DAT_ce31b5e:
    #data 0x03f0
DAT_ce31b60:
    #data 0x03f9
DAT_ce31b62:
    #data 0x0327
DAT_ce31b64:
    #data 0x02a4
    #align4

PTR_ce31b68:
    #data loc_8c034dee
PTR_ce31b6c:
    #data loc_8c034e8c
PTR_ce31b70:
    #data loc_8c0aba00
PTR_ce31b74:
    #data loc_8c042008
DAT_ce31b78:
    #data 0xc3480000
DAT_ce31b7c:
    #data 0x43700000
PTR_ce31b80:
    #data loc_8c050834
PTR_ce31b84:
    #data loc_8c055d54
PTR_ce31b88:
    #data loc_8c051648
PTR_ce31b8c:
    #data PTR_ce32f74

;=============================================

LAB_ce31b90:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31ca4,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
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
    mov 0x00,r13
    mov.w @(DAT_ce31c9a,pc),r0
    mov.l @(PTR_ce31ca8,pc),r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31c9c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31cac,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31c9e,pc),r0
    mov 0x21,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31cb0,pc),r3
    mov 0x16,r6
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31cb4,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x48,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31c14:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31cb8,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c56
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce31cbc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31cbc,pc),r2
    mov 0x2F,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31ca0,pc),r0
    mov.l @(PTR_ce31cc0,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce31c5e
    mov.l @r15+,r14

LAB_ce31c56:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31c5e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31cb8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31c7e
    lds.l @r15+,PR
    mov.l @(PTR_ce31cc4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c7e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31c84:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31cc8,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31ca2,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c9a:
    #data 0x01f9
DAT_ce31c9c:
    #data 0x041c
DAT_ce31c9e:
    #data 0x01a1
DAT_ce31ca0:
    #data 0x01a3
DAT_ce31ca2:
    #data 0x02a4
    #align4

PTR_ce31ca4:
    #data loc_8c05218a
PTR_ce31ca8:
    #data loc_8c05115a
PTR_ce31cac:
    #data loc_8c056de4
PTR_ce31cb0:
    #data loc_8c2896b0
PTR_ce31cb4:
    #data loc_8c034e8c
PTR_ce31cb8:
    #data loc_8c034dee
PTR_ce31cbc:
    #data loc_8c042008
PTR_ce31cc0:
    #data loc_8c0aaa60
PTR_ce31cc4:
    #data loc_8c051648
PTR_ce31cc8:
    #data PTR_ce32f80

;=============================================

LAB_ce31ccc:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    fldi0 fr4
    mov.l @(PTR_ce31de0,pc),r3
    mov 0x00,r13
    mov.l r5,@r15
    mov r13,r5
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
    mov.w @(DAT_ce31dd4,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31de4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31de8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31dd6,pc),r0
    mov 0x34,r2
    mov.l @(PTR_ce31dec,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x1B,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31df0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31dd8,pc),r0
    mov.l @r15,r3
    mov.w @(r0,r14),r0
    mov.w r0,@(0x12,r3)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31d4a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x10,r0
    mov r4,r14
    mov 0x08,r3
    mov.b r3,@(r0,r5)
    mov.l @(PTR_ce31df4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d72
    mov.l @(PTR_ce31df8,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d72:
    mov.w @(DAT_ce31dda,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31d94
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31dfc,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31e00,pc),r0
    mov.l @(PTR_ce31e04,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31d94:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d9c:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31e08,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31ddc,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31db2:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31dde,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31e0c
    mov r5,r13
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra FUN_ce31ee4
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31dd4:
    #data 0x01f9
DAT_ce31dd6:
    #data 0x01a1
DAT_ce31dd8:
    #data 0x0158
DAT_ce31dda:
    #data 0x014b
DAT_ce31ddc:
    #data 0x02a4
DAT_ce31dde:
    #data 0x0201
    #align4

PTR_ce31de0:
    #data loc_8c035162
PTR_ce31de4:
    #data loc_8c05218a
PTR_ce31de8:
    #data loc_8c05115a
PTR_ce31dec:
    #data loc_8c2896b0
PTR_ce31df0:
    #data loc_8c034e8c
PTR_ce31df4:
    #data loc_8c034dee
PTR_ce31df8:
    #data loc_8c051648
DAT_ce31dfc:
    #data 0xc2a00000
DAT_ce31e00:
    #data 0x43092492
PTR_ce31e04:
    #data loc_8c050ea4
PTR_ce31e08:
    #data PTR_ce32f88

;=============================================

LAB_ce31e0c:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31f48,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov r13,r5
    bsr FUN_ce32c88
    mov r14,r4
    mov.w @(DAT_ce31f3e,pc),r0
    mov 0x01,r3
    mov 0x00,r12
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x02,r3
    add 0xF8,r0
    mov.w @(DAT_ce31f40,pc),r2
    mov r12,r6
    mov 0x1A,r5
    mov.w r2,@r13
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r12,@(r0,r14)
    add 0xD8,r0
    mov.b r12,@(r0,r14)
    add 0x01,r0
    mov.b r12,@(r0,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31f4c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31f50,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.l @(PTR_ce31f54,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra LAB_ce31e72
    mov.l @r15+,r14

LAB_ce31e72:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31f58,pc),r3
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
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce31ed4
    mov.w @(0x1c,r14),r0
    mov 0x08,r3
    cmp/gt r3,r0
    bt LAB_ce31ede
    mov.w @(DAT_ce31f42,pc),r0
    mov.w @(r0,r14),r1
    tst r1,r1
    bt LAB_ce31ede

LAB_ce31ed4:
    lds.l @r15+,PR
    mov.l @(PTR_ce31f5c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ede:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31ee4:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31f3e,pc),r0
    mov 0x00,r4
    fldi0 fr4
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31f60,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x8,r5),r0
    tst r0,r0
    bt LAB_ce31f1e
    mov r4,r0
    nop
    mov.l @(PTR_ce31f64,pc),r3
    mov.b r0,@(0x8,r5)
    mov 0x00,r5
    jsr @r3
    mov r14,r4

LAB_ce31f1e:
    lds.l @r15+,PR
    mov.l @(PTR_ce31f68,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31f28:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31f6c,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31f44,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f3e:
    #data 0x0201
DAT_ce31f40:
    #data 0x0384
DAT_ce31f42:
    #data 0x034e
DAT_ce31f44:
    #data 0x02a4
    #align4

PTR_ce31f48:
    #data loc_8c05218a
DAT_ce31f4c:
    #data 0x40cdb6db
DAT_ce31f50:
    #data 0xbf092492
PTR_ce31f54:
    #data loc_8c034e8c
PTR_ce31f58:
    #data loc_8c034dee
PTR_ce31f5c:
    #data loc_8c051648
DAT_ce31f60:
    #data 0xbf4db6db
PTR_ce31f64:
    #data loc_8c035162
PTR_ce31f68:
    #data loc_8c05176e
PTR_ce31f6c:
    #data PTR_ce32f90

;=============================================

LAB_ce31f70:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    mov r3,r5
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce320bc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce320d4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce320be,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce31f9e
    mov 0x00,r4
    mov.w @(DAT_ce320c0,pc),r0
    mov 0x35,r2
    bra LAB_ce31fa4
    mov.b r2,@(r0,r14)

LAB_ce31f9e:
    mov.w @(DAT_ce320c0,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)

LAB_ce31fa4:
    mov.w @(DAT_ce320c2,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce320d8,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce320dc,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce320bc,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31fd2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce320e0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31fec
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce320e4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31fec:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31ff4:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce320e8,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce320c4,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3200a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce320be,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3202c
    mov.w @(DAT_ce320c8,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce320c6,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3202c:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce320ec,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
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
    mov 0x00,r13
    mov.w @(DAT_ce320ca,pc),r0
    mov.l @(PTR_ce320f0,pc),r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce320cc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce320c0,pc),r0
    mov 0x39,r2
    mov.l @(PTR_ce320d8,pc),r3
    mov 0x16,r5
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
    mov.l @(PTR_ce320dc,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32098:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce320ce,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce320d0,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce320be,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce320f4
    bra LAB_ce320f6
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320bc:
    #data 0x0158
DAT_ce320be:
    #data 0x0255
DAT_ce320c0:
    #data 0x01a1
DAT_ce320c2:
    #data 0x01ac
DAT_ce320c4:
    #data 0x02a4
DAT_ce320c6:
    #data 0x00ff
DAT_ce320c8:
    #data 0x03f0
DAT_ce320ca:
    #data 0x01f9
DAT_ce320cc:
    #data 0x041c
DAT_ce320ce:
    #data 0x03f8
DAT_ce320d0:
    #data 0x0328
    #align4

PTR_ce320d4:
    #data loc_8c056de4
PTR_ce320d8:
    #data loc_8c2896b0
PTR_ce320dc:
    #data loc_8c034e8c
PTR_ce320e0:
    #data loc_8c034dee
PTR_ce320e4:
    #data loc_8c051648
PTR_ce320e8:
    #data PTR_ce32f98
PTR_ce320ec:
    #data loc_8c05218a
PTR_ce320f0:
    #data loc_8c05115a

;=============================================

LAB_ce320f4:
    mov 0x00,r3

LAB_ce320f6:
    mov.w @(DAT_ce3222c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3223c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32148
    mov.w @(DAT_ce3222e,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32240,pc),r3
    mov 0x15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov 0x03,r0
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32244,pc),r0
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce3224c,pc),r3
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce32248,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    mov 0x01,r6
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    bsr FUN_ce32150
    mov r14,r4

LAB_ce32148:
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32150:
    mov.w @(DAT_ce32230,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32232,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce321b4
    mov.l @(PTR_ce32250,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce321b0
    mov.l @(PTR_ce32240,pc),r2
    mov 0x2F,r5
    jsr @r2
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce321b0
    mov.w @(DAT_ce32234,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32254,pc),r3
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x04,r6
    mov.w @(DAT_ce32236,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce321b0:
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)

LAB_ce321b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce321ba:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3223c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321d4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32258,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce321d4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce321dc:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3225c,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32238,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce321f2:
    mov.b @(0x6,r4),r0
    mov 0x1E,r6
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce32254,pc),r3
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    jmp @r3
    mov 0x15,r5

LAB_ce32212:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3223c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32260
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32258,pc),r3
    jmp @r3
    lds.l @r15+,PR

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3222c:
    #data 0x03f1
DAT_ce3222e:
    #data 0x03f0
DAT_ce32230:
    #data 0x03f8
DAT_ce32232:
    #data 0x0328
DAT_ce32234:
    #data 0x03f9
DAT_ce32236:
    #data 0x0327
DAT_ce32238:
    #data 0x02a4
    #align4

PTR_ce3223c:
    #data loc_8c034dee
PTR_ce32240:
    #data loc_8c042008
DAT_ce32244:
    #data 0xc3555555
DAT_ce32248:
    #data 0x437cdb6d
PTR_ce3224c:
    #data loc_8c050834
PTR_ce32250:
    #data loc_8c0aaa60
PTR_ce32254:
    #data loc_8c034e8c
PTR_ce32258:
    #data loc_8c051648
PTR_ce3225c:
    #data PTR_ce32fa8

;=============================================

LAB_ce32260:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32268:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32398,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32384,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3227e:
    mov.w @(DAT_ce32386,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3229a
    mov.w @(DAT_ce3238a,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32388,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3229a:
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce3239c,pc),r3
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
    mov.w @(DAT_ce3238c,pc),r0
    mov 0x02,r2
    mov 0x3A,r3
    mov.b r2,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov 0x00,r4
    mov.l @(PTR_ce323a0,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov 0x05,r6
    mov.l @r3,r2
    mov 0x16,r5
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce323a4,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce322f2:
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
    mov.w @(DAT_ce32386,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32314
    bra LAB_ce32316
    mov 0x02,r3

LAB_ce32314:
    mov 0x00,r3

LAB_ce32316:
    mov.w @(DAT_ce32392,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce323a8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3237c
    mov.w @(DAT_ce3238a,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32394,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32344
    mova @(DAT_ce323ac,pc),r0
    bra LAB_ce32348
    fmov.s @r0,fr3

LAB_ce32344:
    mova @(DAT_ce323b0,pc),r0
    fmov.s @r0,fr3

LAB_ce32348:
    mov 0x5C,r0
    mov.l @(PTR_ce323bc,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mov 0x09,r0
    mov.w r0,@(0x1e,r14)
    mova @(DAT_ce323b4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce323b8,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce323c0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce323a4,pc),r3
    mov 0x16,r5
    mov 0x06,r6
    jsr @r3
    mov r14,r4

LAB_ce3237c:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32384:
    #data 0x02a4
DAT_ce32386:
    #data 0x0255
DAT_ce32388:
    #data 0x00ff
DAT_ce3238a:
    #data 0x03f0
DAT_ce3238c:
    #data 0x01f9
DAT_ce3238e:
    #data 0x03f8
DAT_ce32390:
    #data 0x0328
DAT_ce32392:
    #data 0x03f1
DAT_ce32394:
    #data 0x01d2
    #align4

PTR_ce32398:
    #data PTR_ce32fb0
PTR_ce3239c:
    #data loc_8c05218a
PTR_ce323a0:
    #data loc_8c2896b0
PTR_ce323a4:
    #data loc_8c034e8c
PTR_ce323a8:
    #data loc_8c034dee
DAT_ce323ac:
    #data 0x413aaaaa
DAT_ce323b0:
    #data 0xc13aaaaa
DAT_ce323b4:
    #data 0xc2a00000
DAT_ce323b8:
    #data 0x437cdb6d
PTR_ce323bc:
    #data loc_8c050834
PTR_ce323c0:
    #data loc_8c0e9650

;=============================================

LAB_ce323c4:
    mov.w @(DAT_ce324d6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce324d8,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce324da,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce323ec
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce323ec:
    mov 0x68,r1
    mov.l @(PTR_ce324e8,pc),r3
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
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce324dc,pc),r0
    mov.l @(PTR_ce324ec,pc),r5
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce3246c
    mov 0x00,r4
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce3246c
    mov.w @(DAT_ce324de,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3246c
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce32468
    mov.w @(DAT_ce324e0,pc),r0
    mov 0x3A,r2
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
    bra LAB_ce3246c
    nop

LAB_ce32468:
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce3246c:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32522
    mov.w @(DAT_ce324e2,pc),r0
    mov 0x3B,r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce324e4,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce324e0,pc),r0
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
    mov.w @(DAT_ce324e6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce324c0
    mova @(DAT_ce324f0,pc),r0
    bra LAB_ce324c4
    fmov.s @r0,fr3

LAB_ce324c0:
    mova @(DAT_ce324f4,pc),r0
    fmov.s @r0,fr3

LAB_ce324c4:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce324e6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce324fc
    mova @(DAT_ce324f8,pc),r0
    bra LAB_ce32500
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce324d6:
    #data 0x03f8
DAT_ce324d8:
    #data 0x0328
DAT_ce324da:
    #data 0x0141
DAT_ce324dc:
    #data 0x019e
DAT_ce324de:
    #data 0x0140
DAT_ce324e0:
    #data 0x01a1
DAT_ce324e2:
    #data 0x03f9
DAT_ce324e4:
    #data 0x0327
DAT_ce324e6:
    #data 0x01d2
    #align4

PTR_ce324e8:
    #data loc_8c034dee
PTR_ce324ec:
    #data loc_8c2896b0
DAT_ce324f0:
    #data 0x40a00000
DAT_ce324f4:
    #data 0xc0a00000
DAT_ce324f8:
    #data 0xbd555555

;=============================================

LAB_ce324fc:
    mova @(DAT_ce325ec,pc),r0
    fmov.s @r0,fr3

LAB_ce32500:
    mov 0x68,r0
    mov.l @(PTR_ce325f8,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce325f0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov r14,r4
    mov 0x07,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce325f4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32522:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32528:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov.l @(PTR_ce325fc,pc),r3
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
    mov.w @(DAT_ce325e8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce325ac
    mov.l @r15,r5
    bsr FUN_ce31ee4
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x16,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x08,r6
    mov.w @(DAT_ce325e8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce325ea,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce325f8,pc),r3
    jsr @r3
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32600,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce325ac:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce325b4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce325fc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce325ce
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32604,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce325ce:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce325d6:
    mov r4,r3
    mov.l @(PTR_ce32608,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325e8:
    #data 0x041c
DAT_ce325ea:
    #data 0x01f9
    #align4

DAT_ce325ec:
    #data 0x3d555555
DAT_ce325f0:
    #data 0xc0a00000
DAT_ce325f4:
    #data 0xbf200000
PTR_ce325f8:
    #data loc_8c034e8c
PTR_ce325fc:
    #data loc_8c034dee
PTR_ce32600:
    #data loc_8c0511b4
PTR_ce32604:
    #data loc_8c051648
PTR_ce32608:
    #data PTR_ce32fc4

;=============================================

LAB_ce3260c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3273c,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32734,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32740,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32736,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3264a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3264a:
    mova @(DAT_ce32744,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x36,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32748,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x1D,r6
    mov.w @(DAT_ce32738,pc),r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3274c,pc),r3
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
    mov.l @(PTR_ce32750,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3268e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32754,pc),r3
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
    mov.w @(DAT_ce3273a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32706
    mov.w @(DAT_ce3273a,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce32750,pc),r3
    mov 0x01,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32758,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3275c,pc),r3
    mov 0x1F,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32706:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3270c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32754,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3272e
    mov.l @(PTR_ce3273c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32760,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3272e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32734:
    #data 0x01f9
DAT_ce32736:
    #data 0x01d2
DAT_ce32738:
    #data 0x01a1
DAT_ce3273a:
    #data 0x041c
    #align4

PTR_ce3273c:
    #data loc_8c035162
DAT_ce32740:
    #data 0x41f00000
DAT_ce32744:
    #data 0x40892492
DAT_ce32748:
    #data 0xbf4db6db
PTR_ce3274c:
    #data loc_8c2896b0
PTR_ce32750:
    #data loc_8c034e8c
PTR_ce32754:
    #data loc_8c034dee
PTR_ce32758:
    #data loc_8c0511b4
PTR_ce3275c:
    #data loc_8c042008
PTR_ce32760:
    #data loc_8c051854

;=============================================

LAB_ce32764:
    mov.w @(DAT_ce32876,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32878,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce327b8
    mov.w @(DAT_ce3287a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce327b8
    mov.w @(DAT_ce3287c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce327b8
    mov.l @(PTR_ce3288c,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce327b8
    mov r0,r4
    mov.w @(DAT_ce3287e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce327a0
    bra LAB_ce327aa
    mov 0x01,r2

LAB_ce327a0:
    mov.w @(DAT_ce3287e,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce327b8
    mov 0x00,r2

LAB_ce327aa:
    mov.w @(DAT_ce32880,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce327b8:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce327c0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce32882,pc),r3
    mov r4,r14
    mov.w @(DAT_ce32876,pc),r0
    add r14,r3
    mov.l r3,@r15
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce32884,pc),r3
    extu.w r2,r2
    tst r3,r2
    bt/s LAB_ce327f4
    mov 0x0A,r3
    mov.w @(DAT_ce32886,pc),r0
    mov.w @(DAT_ce32886,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce32888,pc),r0
    mov.w @(DAT_ce32888,pc),r1
    mov.w @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.w r0,@r1

LAB_ce327f4:
    mov.w @(DAT_ce3288a,pc),r0
    mov 0x05,r6
    fldi0 fr4
    mov r6,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32890,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32894,pc),r0
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce3289c,pc),r3
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce32898,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov 0x00,r0
    mov.l @(PTR_ce328a0,pc),r3
    mov.b r0,@(0x4,r2)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce328a4,pc),r2
    mov 0x15,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3287c,pc),r0
    mov 0x01,r3
    mov r3,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce328a8,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32868
    mov r0,r5
    mov.l @(PTR_ce328ac,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce3286e
    nop

LAB_ce32868:
    mov.l @(PTR_ce328b0,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3286e:
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32876:
    #data 0x01fa
DAT_ce32878:
    #data 0x0c00
DAT_ce3287a:
    #data 0x01fe
DAT_ce3287c:
    #data 0x01a3
DAT_ce3287e:
    #data 0x01f9
DAT_ce32880:
    #data 0x01f7
DAT_ce32882:
    #data 0x02a4
DAT_ce32884:
    #data 0x0400
DAT_ce32886:
    #data 0x01d2
DAT_ce32888:
    #data 0x0130
DAT_ce3288a:
    #data 0x01a0
    #align4

PTR_ce3288c:
    #data loc_8c045790
PTR_ce32890:
    #data loc_8c02fec4
DAT_ce32894:
    #data 0xc2f00000
DAT_ce32898:
    #data 0x42cdb6db
PTR_ce3289c:
    #data loc_8c103660
PTR_ce328a0:
    #data loc_8c056f2a
PTR_ce328a4:
    #data loc_8c034e8c
PTR_ce328a8:
    #data loc_8c0e932e
PTR_ce328ac:
    #data loc_8c052618
PTR_ce328b0:
    #data loc_8c051648

;=============================================

LAB_ce328b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce329e6,pc),r0
    mov 0x0A,r2
    mov r4,r14
    fldi0 fr4
    mov.w @(DAT_ce329e4,pc),r3
    mov 0x05,r6
    mov r6,r5
    add r14,r3
    mov.l r3,@r15
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce329f0,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce329f4,pc),r0
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce329fc,pc),r3
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce329f8,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov 0x00,r0
    mov.l @(PTR_ce32a00,pc),r3
    mov.b r0,@(0x4,r2)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32a04,pc),r2
    mov 0x15,r5
    mov 0x0E,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce329e8,pc),r0
    mov 0x01,r3
    mov 0x04,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32a08,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32938
    mov r0,r5
    mov.l @(PTR_ce32a0c,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce3293e
    nop

LAB_ce32938:
    mov.l @(PTR_ce32a10,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3293e:
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32946:
    #data 0x2f46
    #data 0x6043
    #data 0x0009
    #data 0x914d
    #data 0xd231
    #data 0x001c
    #data 0x600c
    #data 0xc93f
    #data 0x4008
    #data 0x032e
    #data 0x432b
    #data 0x7f04

;=============================================

LAB_ce3295e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce329e4,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.l @(PTR_ce32a18,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce329ec,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce329b2
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r5
    mov.l @(PTR_ce32a1c,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf/s LAB_ce32996
    mov.l r0,@(0x14,r14)
    mov.l @r15,r3
    mov 0x01,r0
    mov.b r0,@(0x4,r3)
    bra LAB_ce3299e
    nop

LAB_ce32996:
    mov.l @(PTR_ce32a0c,pc),r2
    mov.l @(0x14,r14),r5
    jsr @r2
    mov r14,r4

LAB_ce3299e:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov 0x25,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32a20,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce329b2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce329ba:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce329e4,pc),r4
    sts.l PR,@-r15
    add r14,r4
    mov.b @(0x4,r4),r0
    tst r0,r0
    bt LAB_ce329da
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce32a04,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce329da:
    lds.l @r15+,PR
    mov.l @(PTR_ce32a18,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329e4:
    #data 0x02a4
DAT_ce329e6:
    #data 0x01a0
DAT_ce329e8:
    #data 0x01a3
    #data 0x01f7
DAT_ce329ec:
    #data 0x0140
    #align4

PTR_ce329f0:
    #data loc_8c02fec4
DAT_ce329f4:
    #data 0xc2f00000
DAT_ce329f8:
    #data 0x42cdb6db
PTR_ce329fc:
    #data loc_8c103660
PTR_ce32a00:
    #data loc_8c056f2a
PTR_ce32a04:
    #data loc_8c034e8c
PTR_ce32a08:
    #data loc_8c0e932e
PTR_ce32a0c:
    #data loc_8c052618
PTR_ce32a10:
    #data loc_8c05176e
PTR_ce32a14:
    #data PTR_ce32fd0
PTR_ce32a18:
    #data loc_8c034dee
PTR_ce32a1c:
    #data loc_8c0a9af8
PTR_ce32a20:
    #data loc_8c042008

;=============================================

LAB_ce32a24:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32b58,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32b54,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32a40
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce32a40:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a46:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32b58,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a6a
    mov.l @(PTR_ce32b5c,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32b60,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32a6a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a70:
    mov r4,r3
    mov.l @(PTR_ce32b64,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32a82:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32b56,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.l @(PTR_ce32b58,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32b54,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32ad6
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x04,r5
    mov.l @(PTR_ce32b68,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf/s LAB_ce32aba
    mov.l r0,@(0x14,r14)
    mov.l @r15,r3
    mov 0x01,r0
    mov.b r0,@(0x4,r3)
    bra LAB_ce32ac2
    nop

LAB_ce32aba:
    mov.l @(PTR_ce32b6c,pc),r2
    mov.l @(0x14,r14),r5
    jsr @r2
    mov r14,r4

LAB_ce32ac2:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov 0x25,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32b70,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ad6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ade:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32b56,pc),r4
    sts.l PR,@-r15
    add r14,r4
    mov.b @(0x4,r4),r0
    tst r0,r0
    bt LAB_ce32afe
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce32b74,pc),r3
    mov 0x0F,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce32afe:
    lds.l @r15+,PR
    mov.l @(PTR_ce32b58,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32b08:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32b58,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32b54,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32b24
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce32b24:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b2a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32b58,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32b4e
    mov.l @(PTR_ce32b5c,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32b78,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32b4e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b54:
    #data 0x0140
DAT_ce32b56:
    #data 0x02a4
    #align4

PTR_ce32b58:
    #data loc_8c034dee
PTR_ce32b5c:
    #data loc_8c02fec4
PTR_ce32b60:
    #data loc_8c051648
PTR_ce32b64:
    #data PTR_ce32fd8
PTR_ce32b68:
    #data loc_8c0a9af8
PTR_ce32b6c:
    #data loc_8c052618
PTR_ce32b70:
    #data loc_8c042008
PTR_ce32b74:
    #data loc_8c034e8c
PTR_ce32b78:
    #data loc_8c05176e

;=============================================

LAB_ce32b7c:
    mov r4,r3
    mov.l @(PTR_ce32c6c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32b8e:
    mov.w @(DAT_ce32c64,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32c70,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32bac:
    rts
    nop

LAB_ce32bb0:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32c66,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce32bca
    mov 0x06,r5
    cmp/eq 0x01,r0
    bt LAB_ce32bca
    cmp/eq 0x02,r0
    bf LAB_ce32bce

LAB_ce32bca:
    mov.w @(DAT_ce32c68,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce32bce:
    mov.l @(PTR_ce32c74,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce32bd4:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32c66,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce32bee
    mov 0x06,r5
    cmp/eq 0x01,r0
    bt LAB_ce32bee
    cmp/eq 0x02,r0
    bf LAB_ce32bf2

LAB_ce32bee:
    mov.w @(DAT_ce32c68,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce32bf2:
    mov.l @(PTR_ce32c74,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce32bf8:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32c66,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce32c18
    cmp/eq 0x01,r0
    bt LAB_ce32c1e
    cmp/eq 0x02,r0
    bt LAB_ce32c26
    bra LAB_ce32c30
    nop

LAB_ce32c18:
    mov.w @(DAT_ce32c68,pc),r0
    bra LAB_ce32c2c
    mov.b r5,@(r0,r4)

LAB_ce32c1e:
    mov.w @(DAT_ce32c68,pc),r0
    mov 0x05,r2
    bra LAB_ce32c2c
    mov.b r2,@(r0,r4)

LAB_ce32c26:
    mov.w @(DAT_ce32c68,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce32c2c:
    mov.w @(DAT_ce32c6a,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce32c30:
    mov.l @(PTR_ce32c74,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce32c36:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32c66,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce32c56
    cmp/eq 0x01,r0
    bt LAB_ce32c5c
    cmp/eq 0x02,r0
    bt LAB_ce32c78
    bra LAB_ce32c82
    nop

LAB_ce32c56:
    mov.w @(DAT_ce32c68,pc),r0
    bra LAB_ce32c7e
    mov.b r5,@(r0,r4)

LAB_ce32c5c:
    mov.w @(DAT_ce32c68,pc),r0
    mov 0x05,r2
    bra LAB_ce32c7e
    mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c64:
    #data 0x01ea
DAT_ce32c66:
    #data 0x04c9
DAT_ce32c68:
    #data 0x01e9
DAT_ce32c6a:
    #data 0x01a3
    #align4

PTR_ce32c6c:
    #data PTR_ce32fe8
PTR_ce32c70:
    #data PTR_ce32ff8
PTR_ce32c74:
    #data loc_8c0530d8

;=============================================

LAB_ce32c78:
    mov.w @(DAT_ce32d4e,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce32c7e:
    mov.w @(DAT_ce32d50,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce32c82:
    mov.l @(PTR_ce32d5c,pc),r2
    jmp @r2
    mov 0x15,r5

;=============================================

FUN_ce32c88:
    mov.l @(PTR_ce32d60,pc),r3
    mov 0x01,r0
    mov 0x02,r6
    mov.b r0,@(0x8,r5)
    mov r0,r7
    jmp @r3
    mov 0x03,r5

LAB_ce32c96:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF8,r15
    mov.w @(DAT_ce32d52,pc),r14
    mov 0x00,r5
    mov.w @(DAT_ce32d54,pc),r6
    add r4,r14
    mov.l @(DAT_ce32d64,pc),r3
    mov.l r14,@r15
    mov.b @(0x5,r14),r0
    mov.b r0,@(0x4,r15)
    jsr @r3
    mov.l @r15,r4
    mov.b @(0x4,r15),r0
    mov.b r0,@(0x5,r14)
    add 0x08,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32cbc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x34,r0
    mov r4,r14
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    extu.b r5,r4
    mov.l @(PTR_ce32d6c,pc),r6
    fmov.s fr3,@r15
    shll2 r4
    fmov.s @(r0,r14),fr3
    mov 0x04,r0
    shll r4
    fmov fr3,@(r0,r15)
    mova @(DAT_ce32d68,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce32d70,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32d56,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32cfc
    add r6,r4
    mov.l @r4,r3
    fmov.s @r15,fr2
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    bra LAB_ce32d0a
    fsub fr3,fr2

LAB_ce32cfc:
    mov.l @r4,r2
    fmov.s @r15,fr2
    lds r2,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fadd fr3,fr2

LAB_ce32d0a:
    extu.b r5,r3
    fmov.s fr2,@r15
    shll2 r3
    shll r3
    add r6,r3
    mov.l @(0x4,r3),r2
    mova @(DAT_ce32d74,pc),r0
    fmov.s @r0,fr2
    mov 0x04,r0
    lds r2,FPUL
    extu.b r5,r5
    fmov.s @(r0,r15),fr1
    tst r5,r5
    mov 0x04,r0
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr4,fr3
    fadd fr3,fr1
    bf/s LAB_ce32d3a
    fmov fr1,@(r0,r15)
    mov.l @(PTR_ce32d78,pc),r2
    mov 0x49,r5
    jsr @r2
    mov r14,r4

LAB_ce32d3a:
    mov.l @(PTR_ce32d7c,pc),r3
    mov r15,r5
    mov.w @(DAT_ce32d58,pc),r7
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d4e:
    #data 0x01e9
DAT_ce32d50:
    #data 0x01a3
DAT_ce32d52:
    #data 0x02a4
DAT_ce32d54:
    #data 0x0080
DAT_ce32d56:
    #data 0x0130
DAT_ce32d58:
    #data 0x0409
    #align4

PTR_ce32d5c:
    #data loc_8c0530d8
PTR_ce32d60:
    #data loc_8c03544c
DAT_ce32d64:
    #data 0x8c129728
DAT_ce32d68:
    #data 0x3fd55555
PTR_ce32d6c:
    #data DAT_ce33000
DAT_ce32d70:
    #data 0x47800000
DAT_ce32d74:
    #data 0x40092492
PTR_ce32d78:
    #data loc_8c04223a
PTR_ce32d7c:
    #data loc_8c10235c
DAT_ce32d80:
    #data 0x0201
    #data 0x0201
DAT_ce32d84:
    #data 0xffff
    #data 0xffff
DAT_ce32d88:
    #data 0xffff
    #data 0xffff
DAT_ce32d8c:
    #data 0x0201
    #data 0x0201
DAT_ce32d90:
    #data 0xffff
    #data 0xffff
DAT_ce32d94:
    #data 0xffff
    #data 0xffff
DAT_ce32d98:
    #data 0x0201
    #data 0x0201
DAT_ce32d9c:
    #data 0xffff
    #data 0xffff
DAT_ce32da0:
    #data 0xffff
    #data 0xffff
DAT_ce32da4:
    #data 0x0201
    #data 0x0201
DAT_ce32da8:
    #data 0xffff
    #data 0xffff
DAT_ce32dac:
    #data 0xffff
    #data 0xffff
DAT_ce32db0:
    #data 0x0201
    #data 0x0200
DAT_ce32db4:
    #data 0x02ff
    #data 0x0201
DAT_ce32db8:
    #data 0xffff
    #data 0x02ff
DAT_ce32dbc:
    #data 0x0201
    #data 0x0201
DAT_ce32dc0:
    #data 0x02ff
    #data 0x02ff
DAT_ce32dc4:
    #data 0xffff
    #data 0xffff
DAT_ce32dc8:
    #data 0x0003
    #data 0x9100
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce32dd8:
    #data 0x0003
    #data 0x1000
    #data 0x0009
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce32de8:
    #data 0x0003
    #data 0x2000
    #data 0x0009
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce32df8:
    #data 0x0003
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce32e08:
    #data 0x0003
    #data 0x2000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce32e18:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce32e28:
    #data 0x0003
    #data 0x8000
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce32e38:
    #data 0x0003
    #data 0x9100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce32e48:
    #data 0x0003
    #data 0xa100
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
    #align4

PTR_ce32e58:
    #data LAB_ce305b0
PTR_ce32e5c:
    #data LAB_ce3001c
PTR_ce32e60:
    #data LAB_ce30674
PTR_ce32e64:
    #data LAB_ce30c0e
PTR_ce32e68:
    #data LAB_ce311f4
PTR_ce32e6c:
    #data LAB_ce31324
PTR_ce32e70:
    #data LAB_ce31416
PTR_ce32e74:
    #data LAB_ce31560
PTR_ce32e78:
    #data LAB_ce315c4
PTR_ce32e7c:
    #data LAB_ce32764
PTR_ce32e80:
    #data DAT_ce32946
PTR_ce32e84:
    #data LAB_ce32b8e
PTR_ce32e88:
    #data LAB_ce32bac
PTR_ce32e8c:
    #data FUN_ce30566
PTR_ce32e90:
    #data LAB_ce325d6
PTR_ce32e94:
    #data LAB_ce310fc
PTR_ce32e98:
    #data LAB_ce32bb0
PTR_ce32e9c:
    #data LAB_ce32bd4
PTR_ce32ea0:
    #data LAB_ce32bf8
PTR_ce32ea4:
    #data LAB_ce32c36
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce32eb4:
    #data LAB_ce32c96
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce32ec8:
    #data LAB_ce30688
PTR_ce32ecc:
    #data LAB_ce309d6
PTR_ce32ed0:
    #data LAB_ce30a06
PTR_ce32ed4:
    #data LAB_ce30688
PTR_ce32ed8:
    #data LAB_ce30c30
PTR_ce32edc:
    #data LAB_ce31048
PTR_ce32ee0:
    #data LAB_ce31032
PTR_ce32ee4:
    #data LAB_ce30c22
PTR_ce32ee8:
    #data LAB_ce3123c
PTR_ce32eec:
    #data LAB_ce31286
PTR_ce32ef0:
    #data FUN_ce31302
PTR_ce32ef4:
    #data LAB_ce31336
PTR_ce32ef8:
    #data LAB_ce31388
PTR_ce32efc:
    #data FUN_ce313f4
PTR_ce32f00:
    #data LAB_ce31428
PTR_ce32f04:
    #data LAB_ce314c0
PTR_ce32f08:
    #data FUN_ce31540
PTR_ce32f0c:
    #data LAB_ce31582
PTR_ce32f10:
    #data LAB_ce315a2
PTR_ce32f14:
    #data LAB_ce31572
PTR_ce32f18:
    #data LAB_ce3157a
PTR_ce32f1c:
    #data LAB_ce31572
PTR_ce32f20:
    #data LAB_ce3157a
PTR_ce32f24:
    #data LAB_ce3157a
PTR_ce32f28:
    #data LAB_ce315d8
PTR_ce32f2c:
    #data LAB_ce31948
PTR_ce32f30:
    #data LAB_ce31b40
PTR_ce32f34:
    #data LAB_ce31c84
PTR_ce32f38:
    #data LAB_ce31d9c
PTR_ce32f3c:
    #data LAB_ce31f28
PTR_ce32f40:
    #data LAB_ce31ff4
PTR_ce32f44:
    #data LAB_ce321dc
PTR_ce32f48:
    #data LAB_ce32268
PTR_ce32f4c:
    #data LAB_ce315d8
PTR_ce32f50:
    #data LAB_ce3161c
PTR_ce32f54:
    #data LAB_ce31758
PTR_ce32f58:
    #data LAB_ce317ba
PTR_ce32f5c:
    #data LAB_ce31836
PTR_ce32f60:
    #data LAB_ce318c0
PTR_ce32f64:
    #data LAB_ce3195e
PTR_ce32f68:
    #data LAB_ce31a34
PTR_ce32f6c:
    #data LAB_ce31ab8
PTR_ce32f70:
    #data FUN_ce31b18
PTR_ce32f74:
    #data LAB_ce31b90
PTR_ce32f78:
    #data LAB_ce31c14
PTR_ce32f7c:
    #data LAB_ce31c5e
PTR_ce32f80:
    #data LAB_ce31ccc
PTR_ce32f84:
    #data LAB_ce31d4a
PTR_ce32f88:
    #data LAB_ce31db2
PTR_ce32f8c:
    #data LAB_ce31e72
PTR_ce32f90:
    #data LAB_ce31f70
PTR_ce32f94:
    #data LAB_ce31fd2
PTR_ce32f98:
    #data LAB_ce3200a
PTR_ce32f9c:
    #data LAB_ce32098
PTR_ce32fa0:
    #data FUN_ce32150
PTR_ce32fa4:
    #data FUN_ce321ba
PTR_ce32fa8:
    #data LAB_ce321f2
PTR_ce32fac:
    #data LAB_ce32212
PTR_ce32fb0:
    #data LAB_ce3227e
PTR_ce32fb4:
    #data LAB_ce322f2
PTR_ce32fb8:
    #data LAB_ce323c4
PTR_ce32fbc:
    #data LAB_ce32528
PTR_ce32fc0:
    #data FUN_ce325b4
PTR_ce32fc4:
    #data LAB_ce3260c
PTR_ce32fc8:
    #data LAB_ce3268e
PTR_ce32fcc:
    #data LAB_ce3270c
PTR_ce32fd0:
    #data LAB_ce327c0
PTR_ce32fd4:
    #data LAB_ce328b4
PTR_ce32fd8:
    #data LAB_ce3295e
PTR_ce32fdc:
    #data LAB_ce329ba
PTR_ce32fe0:
    #data LAB_ce32a24
PTR_ce32fe4:
    #data LAB_ce32a46
PTR_ce32fe8:
    #data LAB_ce32a82
PTR_ce32fec:
    #data LAB_ce32ade
PTR_ce32ff0:
    #data LAB_ce32b08
PTR_ce32ff4:
    #data LAB_ce32b2a
PTR_ce32ff8:
    #data LAB_ce32a70
PTR_ce32ffc:
    #data LAB_ce32b7c
DAT_ce33000:
    #data 0x0000
    #data 0x0040
DAT_ce33004:
    #data 0x0000
    #data 0x0030
    #data 0x0000
    #data 0x0078
    #data 0x0000
    #data 0x0054
    #data 0x0000
    #data 0x0060
    #data 0x0000
    #data 0x009e
