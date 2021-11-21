;╔══════════════════════════════════════════╗
;║ S_PL1C : Megaman Program                 ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c03362c 0x8C03362C
#symbol loc_8c033718 0x8C033718
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
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
#symbol loc_8c05576c 0x8C05576C
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c055d54 0x8C055D54
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c08b818 0x8C08B818
#symbol loc_8c08bb40 0x8C08BB40
#symbol loc_8c08bf48 0x8C08BF48
#symbol loc_8c08c850 0x8C08C850
#symbol loc_8c08ce7c 0x8C08CE7C
#symbol loc_8c08d690 0x8C08D690
#symbol loc_8c08da80 0x8C08DA80
#symbol loc_8c08e2f8 0x8C08E2F8
#symbol loc_8c08e8e0 0x8C08E8E0
#symbol loc_8c0d8840 0x8C0D8840
#symbol loc_8c0d8e64 0x8C0D8E64
#symbol loc_8c0da85c 0x8C0DA85C
#symbol loc_8c0db578 0x8C0DB578
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
    bsr FUN_ce301dc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30244
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce3028a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce300f0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce3014e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30316
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce3044e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce303ba
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce304b8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30546
    mov r14,r4
    tst r0,r0
    bf LAB_ce300cc
    bsr FUN_ce30584
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
    #data PTR_ce35dc4
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
    mov.l @(PTR_ce301c4,pc),r5
    mov.w @(DAT_ce301b6,pc),r6
    mov.l @(PTR_ce301c8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30120
    mov.w @(DAT_ce301b8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3012e
    mov.w @(DAT_ce301ba,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3012e
    mov.w @(DAT_ce301bc,pc),r0
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
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301be,pc),r0
    mov.l @(PTR_ce301cc,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3014e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301d0,pc),r5
    mov.w @(DAT_ce301c0,pc),r6
    mov.l @(PTR_ce301d4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3017e
    mov.w @(DAT_ce301b8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3018e
    mov.w @(DAT_ce301bc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30186
    mov.w @(DAT_ce301ba,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30186

LAB_ce3017e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30186:
    mov.w @(DAT_ce301bc,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3018e:
    mov.w @(DAT_ce301c0,pc),r5
    mov.l @(PTR_ce301d8,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301be,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301cc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301b6:
    #data 0x0364
DAT_ce301b8:
    #data 0x01f9
DAT_ce301ba:
    #data 0x01fc
DAT_ce301bc:
    #data 0x01d4
DAT_ce301be:
    #data 0x01e9
DAT_ce301c0:
    #data 0x036c
    #align4

PTR_ce301c4:
    #data DAT_ce353b8
PTR_ce301c8:
    #data loc_8c05576c
PTR_ce301cc:
    #data loc_8c0530d8
PTR_ce301d0:
    #data DAT_ce353c2
PTR_ce301d4:
    #data loc_8c054e58
PTR_ce301d8:
    #data loc_8c055c3a

;=============================================

FUN_ce301dc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce302dc,pc),r5
    mov.w @(DAT_ce302cc,pc),r6
    mov.l @(PTR_ce302e0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30216
    mov.w @(DAT_ce302ce,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30216
    mov.w @(DAT_ce302d0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30226
    mov.w @(DAT_ce302d2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3021e
    mov.w @(DAT_ce302d4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3021e

LAB_ce30216:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3021e:
    mov.w @(DAT_ce302d2,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30226:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302d6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce302e4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30244:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce302e8,pc),r5
    mov.w @(DAT_ce302d8,pc),r6
    mov.l @(PTR_ce302e0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30264
    mov.w @(DAT_ce302ce,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3026c

LAB_ce30264:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3026c:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302d6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce302e4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3028a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce302ec,pc),r5
    mov.w @(DAT_ce302da,pc),r6
    mov.l @(PTR_ce302e0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302c4
    mov.w @(DAT_ce302ce,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce302c4
    mov.w @(DAT_ce302d0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce302f8
    mov.w @(DAT_ce302d2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce302f0
    mov.w @(DAT_ce302d4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce302f0

LAB_ce302c4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce302cc:
    #data 0x038c
DAT_ce302ce:
    #data 0x040c
DAT_ce302d0:
    #data 0x01f9
DAT_ce302d2:
    #data 0x01d4
DAT_ce302d4:
    #data 0x01fc
DAT_ce302d6:
    #data 0x01e9
DAT_ce302d8:
    #data 0x0374
DAT_ce302da:
    #data 0x037c
    #align4

PTR_ce302dc:
    #data DAT_ce353d2
PTR_ce302e0:
    #data loc_8c054e58
PTR_ce302e4:
    #data loc_8c0530d8
PTR_ce302e8:
    #data DAT_ce353e2
PTR_ce302ec:
    #data DAT_ce353f2

;=============================================

LAB_ce302f0:
    mov.w @(DAT_ce303e4,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce302f8:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce303e6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce303f4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30316:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce303e8,pc),r13
    sts.l PR,@-r15
    add r14,r13
    mov.l @(PTR_ce303f8,pc),r5
    mov.b @(0x8,r13),r0
    tst r0,r0
    bf LAB_ce30364
    mov.w @(DAT_ce303ea,pc),r6
    mov.l @(PTR_ce303fc,pc),r2
    add r14,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3038e
    mov.w @(DAT_ce303ec,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3038e
    mov.b @(0x5,r13),r0
    tst r0,r0
    bf LAB_ce3038e
    mov.b @(0x6,r13),r0
    tst r0,r0
    bf LAB_ce3038e
    mov.b @(0x7,r13),r0
    tst r0,r0
    bf LAB_ce3038e
    mov.w @(DAT_ce303ea,pc),r5
    mov.l @(PTR_ce30400,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    bra LAB_ce3039a
    nop

LAB_ce30364:
    mov.w @(DAT_ce303ea,pc),r6
    mov.l @(PTR_ce303fc,pc),r2
    add r14,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3038e
    mov.w @(DAT_ce303ec,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3039a
    mov.w @(DAT_ce303e4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30392
    mov.w @(DAT_ce303ee,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30392

LAB_ce3038e:
    bra LAB_ce303b2
    mov 0x00,r0

LAB_ce30392:
    mov.w @(DAT_ce303e4,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3039a:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce303e6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce303f4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0

LAB_ce303b2:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303ba:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce303e8,pc),r13
    mov.l r12,@-r15
    add r14,r13
    sts.l PR,@-r15
    mov.b @(0x3,r13),r0
    tst r0,r0
    bf LAB_ce303e0
    mov.w @(DAT_ce303f0,pc),r6
    mov.l @(PTR_ce30404,pc),r5
    mov.l @(PTR_ce303fc,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30408

LAB_ce303e0:
    bra LAB_ce30444
    mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce303e4:
    #data 0x01d4
DAT_ce303e6:
    #data 0x01e9
DAT_ce303e8:
    #data 0x02a4
DAT_ce303ea:
    #data 0x0384
DAT_ce303ec:
    #data 0x01f9
DAT_ce303ee:
    #data 0x01fc
DAT_ce303f0:
    #data 0x0394
    #align4

PTR_ce303f4:
    #data loc_8c0530d8
PTR_ce303f8:
    #data DAT_ce35402
PTR_ce303fc:
    #data loc_8c054e58
PTR_ce30400:
    #data loc_8c055c3a
PTR_ce30404:
    #data DAT_ce35412

;=============================================

LAB_ce30408:
    mov.w @(DAT_ce30510,pc),r5
    mov.l @(PTR_ce30520,pc),r3
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
    mov.w @(DAT_ce30512,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30524,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30514,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3043a
    mov 0x1A,r0
    bra LAB_ce30442
    mov.b r12,@(r0,r13)

LAB_ce3043a:
    mov.w @(DAT_ce30516,pc),r0
    mov.b @(r0,r14),r2
    mov 0x1A,r0
    mov.b r2,@(r0,r13)

LAB_ce30442:
    mov 0x01,r0

LAB_ce30444:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3044e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce30518,pc),r13
    sts.l PR,@-r15
    add r14,r13
    mov.b @(0x3,r13),r0
    tst r0,r0
    bf LAB_ce30472
    mov.w @(DAT_ce3051a,pc),r6
    mov.l @(PTR_ce30528,pc),r5
    mov.l @(PTR_ce3052c,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30476

LAB_ce30472:
    bra LAB_ce304b0
    mov 0x00,r0

LAB_ce30476:
    mov.w @(DAT_ce3051a,pc),r5
    mov.l @(PTR_ce30520,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0C,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30512,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30524,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30514,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce304a6
    mov 0x1A,r0
    mov 0x01,r1
    bra LAB_ce304ae
    mov.b r1,@(r0,r13)

LAB_ce304a6:
    mov.w @(DAT_ce30516,pc),r0
    mov.b @(r0,r14),r2
    mov 0x1A,r0
    mov.b r2,@(r0,r13)

LAB_ce304ae:
    mov 0x01,r0

LAB_ce304b0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304b8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce30518,pc),r13
    sts.l PR,@-r15
    add r14,r13
    mov.b @(0x3,r13),r0
    tst r0,r0
    bf LAB_ce304dc
    mov.w @(DAT_ce3051c,pc),r6
    mov.l @(PTR_ce30530,pc),r5
    mov.l @(PTR_ce3052c,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce304e0

LAB_ce304dc:
    bra LAB_ce3053e
    mov 0x00,r0

LAB_ce304e0:
    mov.w @(DAT_ce3051c,pc),r5
    mov.l @(PTR_ce30520,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0C,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30512,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30524,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30514,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30534
    mov 0x1A,r0
    mov 0x02,r1
    bra LAB_ce3053c
    mov.b r1,@(r0,r13)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30510:
    #data 0x0394
DAT_ce30512:
    #data 0x01e9
DAT_ce30514:
    #data 0x0525
DAT_ce30516:
    #data 0x01fe
DAT_ce30518:
    #data 0x02a4
DAT_ce3051a:
    #data 0x039c
DAT_ce3051c:
    #data 0x03a4
    #align4

PTR_ce30520:
    #data loc_8c055c3a
PTR_ce30524:
    #data loc_8c0530d8
PTR_ce30528:
    #data DAT_ce35422
PTR_ce3052c:
    #data loc_8c054e58
PTR_ce30530:
    #data DAT_ce35432

;=============================================

LAB_ce30534:
    mov.w @(DAT_ce30646,pc),r0
    mov.b @(r0,r14),r2
    mov 0x1A,r0
    mov.b r2,@(r0,r13)

LAB_ce3053c:
    mov 0x01,r0

LAB_ce3053e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30546:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30654,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce3055e
    mov.w @(DAT_ce30648,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30566

LAB_ce3055e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30566:
    mov.w @(DAT_ce3064a,pc),r0
    mov 0x08,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30658,pc),r3
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

FUN_ce30584:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3065c,pc),r3
    jsr @r3
    mov 0x03,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3059e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3059e:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3064a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30658,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce305bc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce305e8
    mov r4,r14
    tst r0,r0
    bf LAB_ce305d8
    bsr FUN_ce3061e
    mov r14,r4
    tst r0,r0
    bf LAB_ce305d8
    bsr FUN_ce3067a
    mov r14,r4
    tst r0,r0
    bt LAB_ce305e0

LAB_ce305d8:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce305e0:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce305e8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30660,pc),r5
    mov.w @(DAT_ce3064c,pc),r6
    mov.l @(PTR_ce30664,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30608
    mov.w @(DAT_ce30648,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30610

LAB_ce30608:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30610:
    mov.w @(DAT_ce3064e,pc),r0
    mov 0x07,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3061e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30668,pc),r5
    mov.w @(DAT_ce30650,pc),r6
    mov.l @(PTR_ce30664,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3063e
    mov.w @(DAT_ce30648,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3066c

LAB_ce3063e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30646:
    #data 0x01fe
DAT_ce30648:
    #data 0x040c
DAT_ce3064a:
    #data 0x01e9
DAT_ce3064c:
    #data 0x038c
DAT_ce3064e:
    #data 0x0258
DAT_ce30650:
    #data 0x0374
    #align4

PTR_ce30654:
    #data loc_8c054d1c
PTR_ce30658:
    #data loc_8c0530d8
PTR_ce3065c:
    #data loc_8c054da0
PTR_ce30660:
    #data DAT_ce353d2
PTR_ce30664:
    #data loc_8c054e58
PTR_ce30668:
    #data DAT_ce353e2

;=============================================

LAB_ce3066c:
    mov.w @(DAT_ce30762,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3067a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30774,pc),r5
    mov.w @(DAT_ce30764,pc),r6
    mov.l @(PTR_ce30778,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3069a
    mov.w @(DAT_ce30766,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce306a2

LAB_ce3069a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce306a2:
    mov.w @(DAT_ce30762,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce306b0:
    mov.w @(DAT_ce3076a,pc),r0
    mov.w @(DAT_ce30768,pc),r5
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce306c8
    add r4,r5
    mov.w @(0x1e,r5),r0
    tst r0,r0
    bt LAB_ce306c8
    mov.w @(0x1e,r5),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r5)

LAB_ce306c8:
    mov.b @(0xd,r5),r0
    tst r0,r0
    bt LAB_ce30702
    mov.w @(DAT_ce3076a,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce306fe
    mov.l @(PTR_ce3077c,pc),r3
    mov r4,r2
    mov 0x34,r0
    mov.l @(PTR_ce30780,pc),r1
    add r0,r2
    mov.l r2,@-r15
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    and 0x03,r0
    shll r0
    mov.w @(r0,r1),r2
    mova @(DAT_ce30784,pc),r0
    fmov.s @r0,fr0
    lds r2,FPUL
    mov.l @r15+,r2
    float FPUL,fr3
    fmov.s @r2,fr2
    fmac fr0,fr3,fr2
    bra LAB_ce30702
    fmov.s fr2,@r2

LAB_ce306fe:
    mov 0x00,r0
    mov.b r0,@(0xd,r5)

LAB_ce30702:
    rts
    nop

LAB_ce30706:
    mov.w @(DAT_ce3076c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30788,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3071a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3078c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3076e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30748
    mov.w @(DAT_ce30770,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30740
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce309a0
    mov.l @r15+,r14

LAB_ce30740:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce308fa
    mov.l @r15+,r14

LAB_ce30748:
    mov.w @(DAT_ce30770,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3075a
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30832
    mov.l @r15+,r14

LAB_ce3075a:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30790
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30762:
    #data 0x0258
DAT_ce30764:
    #data 0x037c
DAT_ce30766:
    #data 0x040c
DAT_ce30768:
    #data 0x02a4
DAT_ce3076a:
    #data 0x01a0
DAT_ce3076c:
    #data 0x01ff
DAT_ce3076e:
    #data 0x01fe
DAT_ce30770:
    #data 0x01f9
    #align4

PTR_ce30774:
    #data DAT_ce353f2
PTR_ce30778:
    #data loc_8c054e58
PTR_ce3077c:
    #data loc_8c26823c
PTR_ce30780:
    #data DAT_ce35e34
DAT_ce30784:
    #data 0x3fd55555
PTR_ce30788:
    #data PTR_ce35e3c
PTR_ce3078c:
    #data loc_8c052b4c

;=============================================

LAB_ce30790:
    mov.w @(DAT_ce30892,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307b2
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307ce
    cmp/eq 0x02,r0
    bt LAB_ce307ec
    bra LAB_ce30800
    nop

LAB_ce307b2:
    mov.w @(DAT_ce30894,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce3089c,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30896,pc),r0
    mov.l @(PTR_ce308a0,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30898,pc),r0
    bra LAB_ce30800
    mov.b r13,@(r0,r14)

LAB_ce307ce:
    mov.w @(DAT_ce30894,pc),r0
    mov 0x01,r12
    mov.l @(PTR_ce3089c,pc),r3
    mov 0x15,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30896,pc),r0
    mov.l @(PTR_ce308a4,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30898,pc),r0
    bra LAB_ce30800
    mov.b r12,@(r0,r14)

LAB_ce307ec:
    mov.w @(DAT_ce30894,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce308a8,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30896,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30898,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30800:
    mov.w @(DAT_ce3089a,pc),r0
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
    mov.w @(DAT_ce30894,pc),r0
    mov.l @(PTR_ce308b0,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30832:
    mov.w @(DAT_ce30892,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30852
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30870
    cmp/eq 0x02,r0
    bt LAB_ce308b4
    bra LAB_ce308ca
    nop

LAB_ce30852:
    mov.w @(DAT_ce30894,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3089c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30896,pc),r0
    mov.l @(PTR_ce308a0,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30898,pc),r0
    bra LAB_ce308ca
    mov.b r13,@(r0,r14)

LAB_ce30870:
    mov.w @(DAT_ce30894,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce3089c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30896,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce308a4,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30898,pc),r0
    bra LAB_ce308ca
    mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30892:
    #data 0x01e8
DAT_ce30894:
    #data 0x0158
DAT_ce30896:
    #data 0x03f4
DAT_ce30898:
    #data 0x01a7
DAT_ce3089a:
    #data 0x01ac
    #align4

PTR_ce3089c:
    #data loc_8c04223a
PTR_ce308a0:
    #data DAT_ce35370
PTR_ce308a4:
    #data DAT_ce35374
PTR_ce308a8:
    #data DAT_ce35378
PTR_ce308ac:
    #data loc_8c2896b0
PTR_ce308b0:
    #data loc_8c034e8c

;=============================================

LAB_ce308b4:
    mov.w @(DAT_ce309c0,pc),r0
    mov 0x02,r4
    mov 0x08,r3
    mov.l @(PTR_ce309cc,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce309c2,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce309c4,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce308ca:
    mov.w @(DAT_ce309c6,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce309d0,pc),r3
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
    mov.w @(DAT_ce309c0,pc),r0
    mov.l @(PTR_ce309d4,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce308fa:
    mov.w @(DAT_ce309c8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3091a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30938
    cmp/eq 0x02,r0
    bt LAB_ce3095a
    bra LAB_ce30970
    nop

LAB_ce3091a:
    mov.w @(DAT_ce309c0,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce309d8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce309c2,pc),r0
    mov.l @(PTR_ce309dc,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce309c4,pc),r0
    bra LAB_ce30970
    mov.b r13,@(r0,r14)

LAB_ce30938:
    mov.w @(DAT_ce309c0,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce309d8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce309c2,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce309e0,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce309c4,pc),r0
    bra LAB_ce30970
    mov.b r3,@(r0,r14)

LAB_ce3095a:
    mov.w @(DAT_ce309c0,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce309e4,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce309c2,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce309c4,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30970:
    mov.w @(DAT_ce309c6,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce309d0,pc),r3
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
    mov.w @(DAT_ce309c0,pc),r0
    mov.l @(PTR_ce309d4,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce309a0:
    mov.w @(DAT_ce309c8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce309e8
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a06
    cmp/eq 0x02,r0
    bt LAB_ce30a28
    bra LAB_ce30a3e
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309c0:
    #data 0x0158
DAT_ce309c2:
    #data 0x03f4
DAT_ce309c4:
    #data 0x01a7
DAT_ce309c6:
    #data 0x01ac
DAT_ce309c8:
    #data 0x01e8
    #align4

PTR_ce309cc:
    #data DAT_ce35378
PTR_ce309d0:
    #data loc_8c2896b0
PTR_ce309d4:
    #data loc_8c034e8c
PTR_ce309d8:
    #data loc_8c04223a
PTR_ce309dc:
    #data DAT_ce3537c
PTR_ce309e0:
    #data DAT_ce35380
PTR_ce309e4:
    #data DAT_ce35384

;=============================================

LAB_ce309e8:
    mov.w @(DAT_ce30aea,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30afc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30aec,pc),r0
    mov.l @(PTR_ce30b00,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30aee,pc),r0
    bra LAB_ce30a3e
    mov.b r13,@(r0,r14)

LAB_ce30a06:
    mov.w @(DAT_ce30aea,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce30afc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30aec,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce30b04,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30aee,pc),r0
    bra LAB_ce30a3e
    mov.b r3,@(r0,r14)

LAB_ce30a28:
    mov.w @(DAT_ce30aea,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.l @(PTR_ce30b08,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30aec,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30aee,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30a3e:
    mov.w @(DAT_ce30af0,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30b0c,pc),r3
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
    mov.w @(DAT_ce30aea,pc),r0
    mov.l @(PTR_ce30b10,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30a6e:
    mov.w @(DAT_ce30af2,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30a7e
    mov.w @(DAT_ce30af4,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30a8e

LAB_ce30a7e:
    mov.w @(DAT_ce30af2,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30a92
    mov.w @(DAT_ce30af4,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30a92

LAB_ce30a8e:
    bra LAB_ce30a96
    nop

LAB_ce30a92:
    rts
    nop

LAB_ce30a96:
    mov.w @(DAT_ce30af2,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30aa4
    bra LAB_ce30bbe
    nop

LAB_ce30aa4:
    bra LAB_ce30aa8
    nop

LAB_ce30aa8:
    mov.w @(DAT_ce30af6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30ac8
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30b24
    cmp/eq 0x02,r0
    bt LAB_ce30b56
    bra LAB_ce30b7c
    nop

LAB_ce30ac8:
    mov.w @(DAT_ce30aea,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30afc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30af8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30b18
    mov.w @(DAT_ce30aec,pc),r0
    mov.l @(PTR_ce30b14,pc),r3
    bra LAB_ce30b1e
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30aea:
    #data 0x0158
DAT_ce30aec:
    #data 0x03f4
DAT_ce30aee:
    #data 0x01a7
DAT_ce30af0:
    #data 0x01ac
DAT_ce30af2:
    #data 0x01fe
DAT_ce30af4:
    #data 0x01d6
DAT_ce30af6:
    #data 0x01e8
DAT_ce30af8:
    #data 0x01fc
    #align4

PTR_ce30afc:
    #data loc_8c04223a
PTR_ce30b00:
    #data DAT_ce3537c
PTR_ce30b04:
    #data DAT_ce35380
PTR_ce30b08:
    #data DAT_ce35384
PTR_ce30b0c:
    #data loc_8c2896b0
PTR_ce30b10:
    #data loc_8c034e8c
PTR_ce30b14:
    #data DAT_ce35388

;=============================================

LAB_ce30b18:
    mov.w @(DAT_ce30c0e,pc),r0
    mov.l @(PTR_ce30c1c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b1e:
    mov.w @(DAT_ce30c10,pc),r0
    bra LAB_ce30b7c
    mov.b r13,@(r0,r14)

LAB_ce30b24:
    mov.w @(DAT_ce30c12,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce30c20,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30c14,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30b48
    mov.w @(DAT_ce30c0e,pc),r0
    mov.l @(PTR_ce30c24,pc),r3
    bra LAB_ce30b4e
    mov.l r3,@(r0,r14)

LAB_ce30b48:
    mov.w @(DAT_ce30c0e,pc),r0
    mov.l @(PTR_ce30c28,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b4e:
    mov.w @(DAT_ce30c10,pc),r0
    mov 0x01,r3
    bra LAB_ce30b7c
    mov.b r3,@(r0,r14)

LAB_ce30b56:
    mov.w @(DAT_ce30c12,pc),r0
    mov 0x02,r4
    mov 0x0E,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30b72
    mov.w @(DAT_ce30c0e,pc),r0
    mov.l @(PTR_ce30c2c,pc),r2
    bra LAB_ce30b78
    mov.l r2,@(r0,r14)

LAB_ce30b72:
    mov.w @(DAT_ce30c0e,pc),r0
    mov.l @(PTR_ce30c30,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b78:
    mov.w @(DAT_ce30c10,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30b7c:
    mov.w @(DAT_ce30c16,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30c34,pc),r3
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
    mov.w @(DAT_ce30c12,pc),r0
    mov.l @(PTR_ce30c38,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30c18,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30bb6
    mov.w @(DAT_ce30c18,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30bb6:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30bbe:
    mov.w @(DAT_ce30c1a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30c20,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30be2
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30c44
    cmp/eq 0x02,r0
    bt LAB_ce30c70
    bra LAB_ce30c9e
    nop

LAB_ce30be2:
    mov.w @(DAT_ce30c12,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c14,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c02
    mov.w @(DAT_ce30c0e,pc),r0
    mov.l @(PTR_ce30c3c,pc),r3
    bra LAB_ce30c08
    mov.l r3,@(r0,r14)

LAB_ce30c02:
    mov.w @(DAT_ce30c0e,pc),r0
    mov.l @(PTR_ce30c40,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c08:
    mov.w @(DAT_ce30c10,pc),r0
    bra LAB_ce30c9e
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c0e:
    #data 0x03f4
DAT_ce30c10:
    #data 0x01a7
DAT_ce30c12:
    #data 0x0158
DAT_ce30c14:
    #data 0x01fc
DAT_ce30c16:
    #data 0x01ac
DAT_ce30c18:
    #data 0x01d6
DAT_ce30c1a:
    #data 0x01e8
    #align4

PTR_ce30c1c:
    #data DAT_ce353a0
PTR_ce30c20:
    #data loc_8c04223a
PTR_ce30c24:
    #data DAT_ce3538c
PTR_ce30c28:
    #data DAT_ce353a4
PTR_ce30c2c:
    #data DAT_ce35390
PTR_ce30c30:
    #data DAT_ce353a8
PTR_ce30c34:
    #data loc_8c2896b0
PTR_ce30c38:
    #data loc_8c034e8c
PTR_ce30c3c:
    #data DAT_ce35394
PTR_ce30c40:
    #data DAT_ce353ac

;=============================================

LAB_ce30c44:
    mov.w @(DAT_ce30d6c,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30d6e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c66
    mov.w @(DAT_ce30d70,pc),r0
    mov.l @(PTR_ce30d80,pc),r3
    bra LAB_ce30c6c
    mov.l r3,@(r0,r14)

LAB_ce30c66:
    mov.w @(DAT_ce30d70,pc),r0
    mov.l @(PTR_ce30d84,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c6c:
    bra LAB_ce30c9a
    mov 0x01,r3

LAB_ce30c70:
    mov.w @(DAT_ce30d6c,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30d6e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c92
    mov.w @(DAT_ce30d70,pc),r0
    mov.l @(PTR_ce30d88,pc),r3
    bra LAB_ce30c98
    mov.l r3,@(r0,r14)

LAB_ce30c92:
    mov.w @(DAT_ce30d70,pc),r0
    mov.l @(PTR_ce30d8c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c98:
    mov 0x02,r3

LAB_ce30c9a:
    mov.w @(DAT_ce30d72,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30c9e:
    mov.w @(DAT_ce30d74,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30d90,pc),r3
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
    mov.w @(DAT_ce30d6c,pc),r0
    mov.l @(PTR_ce30d94,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30d76,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30cd8
    mov.w @(DAT_ce30d76,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30cd8:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30ce2:
    mov.w @(DAT_ce30d78,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30d98,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30cf6:
    sts.l PR,@-r15
    mov.l @(PTR_ce30d9c,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30d04:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30da0,pc),r3
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
    mov.w @(DAT_ce30d7a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30da4
    mov.w @(DAT_ce30d7c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d64
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30f94
    mov.l @r15+,r14

LAB_ce30d64:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30ef0
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d6c:
    #data 0x0158
DAT_ce30d6e:
    #data 0x01fc
DAT_ce30d70:
    #data 0x03f4
DAT_ce30d72:
    #data 0x01a7
DAT_ce30d74:
    #data 0x01ac
DAT_ce30d76:
    #data 0x01d6
DAT_ce30d78:
    #data 0x01ff
DAT_ce30d7a:
    #data 0x01fe
DAT_ce30d7c:
    #data 0x01f9
    #align4

PTR_ce30d80:
    #data DAT_ce35398
PTR_ce30d84:
    #data DAT_ce353b0
PTR_ce30d88:
    #data DAT_ce3539c
PTR_ce30d8c:
    #data DAT_ce353b4
PTR_ce30d90:
    #data loc_8c2896b0
PTR_ce30d94:
    #data loc_8c034e8c
PTR_ce30d98:
    #data PTR_ce35e4c
PTR_ce30d9c:
    #data loc_8c0511e2
PTR_ce30da0:
    #data loc_8c052c84

;=============================================

LAB_ce30da4:
    mov.w @(DAT_ce30e76,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30db6
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e44
    mov.l @r15+,r14

LAB_ce30db6:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30dbe
    mov.l @r15+,r14

LAB_ce30dbe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e7c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30dd8
    lds.l @r15+,PR
    mov.l @(PTR_ce30e80,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30dd8:
    mov.w @(DAT_ce30e78,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce30df0
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce30e0e
    cmp/eq 0x00,r0
    bt LAB_ce30e3e
    bra LAB_ce30e3e
    nop

LAB_ce30df0:
    mov.w @(DAT_ce30e7a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30e3e
    mov.l @(PTR_ce30e84,pc),r3
    mov 0x00,r5
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30e88,pc),r2
    mov 0x00,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30e0e:
    mov.w @(DAT_ce30e7a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e3e
    mov.b r4,@(r0,r14)
    add 0xEF,r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30e2e
    mova @(DAT_ce30e8c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30e90,pc),r0
    bra LAB_ce30e3a
    fmov.s @r0,fr3

LAB_ce30e2e:
    mova @(DAT_ce30e94,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30e98,pc),r0
    fmov.s @r0,fr3

LAB_ce30e3a:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce30e3e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e44:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e7c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e5e
    lds.l @r15+,PR
    mov.l @(PTR_ce30e80,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e5e:
    mov.w @(DAT_ce30e78,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce30e9c
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce30eba
    cmp/eq 0x00,r0
    bt LAB_ce30eea
    bra LAB_ce30eea
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e76:
    #data 0x01f9
DAT_ce30e78:
    #data 0x01e8
DAT_ce30e7a:
    #data 0x0141
    #align4

PTR_ce30e7c:
    #data loc_8c034dee
PTR_ce30e80:
    #data loc_8c051648
PTR_ce30e84:
    #data loc_8c08b818
PTR_ce30e88:
    #data loc_8c0d8840
DAT_ce30e8c:
    #data 0xc0a00000
DAT_ce30e90:
    #data 0x3ea00000
DAT_ce30e94:
    #data 0x40a00000
DAT_ce30e98:
    #data 0xbea00000

;=============================================

LAB_ce30e9c:
    mov.w @(DAT_ce30f6a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30eea
    mov.l @(PTR_ce30f70,pc),r3
    mov 0x01,r5
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30f74,pc),r2
    mov 0x01,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30eba:
    mov.w @(DAT_ce30f6a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30eea
    mov.b r4,@(r0,r14)
    add 0xEF,r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30eda
    mova @(DAT_ce30f78,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30f7c,pc),r0
    bra LAB_ce30ee6
    fmov.s @r0,fr3

LAB_ce30eda:
    mova @(DAT_ce30f80,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30f84,pc),r0
    fmov.s @r0,fr3

LAB_ce30ee6:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce30eea:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30ef0:
    mov.w @(DAT_ce30f6c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce30f0c
    cmp/eq 0x00,r0
    bt LAB_ce30f4e
    cmp/eq 0x02,r0
    bt LAB_ce30f4e
    bra LAB_ce30f64
    nop

LAB_ce30f0c:
    mov.l @(PTR_ce30f88,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30f5a
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30f64
    mov.w @(DAT_ce30f6a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30f64
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce30f8c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30f6e,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30f44
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce30f4a
    fadd fr4,fr3

LAB_ce30f44:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fsub fr4,fr3

LAB_ce30f4a:
    bra LAB_ce30f64
    fmov fr3,@(r0,r14)

LAB_ce30f4e:
    mov.l @(PTR_ce30f88,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f64

LAB_ce30f5a:
    lds.l @r15+,PR
    mov.l @(PTR_ce30f90,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30f64:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f6a:
    #data 0x0141
DAT_ce30f6c:
    #data 0x01e8
DAT_ce30f6e:
    #data 0x0130
    #align4

PTR_ce30f70:
    #data loc_8c08b818
PTR_ce30f74:
    #data loc_8c0d8840
DAT_ce30f78:
    #data 0xc0a00000
DAT_ce30f7c:
    #data 0x3ea00000
DAT_ce30f80:
    #data 0x40a00000
DAT_ce30f84:
    #data 0xbea00000
PTR_ce30f88:
    #data loc_8c034dee
DAT_ce30f8c:
    #data 0xc2555555
PTR_ce30f90:
    #data loc_8c051648

;=============================================

LAB_ce30f94:
    mov.w @(DAT_ce31070,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30fb0
    cmp/eq 0x00,r0
    bt LAB_ce30ffc
    cmp/eq 0x01,r0
    bt LAB_ce30ffc
    bra LAB_ce31012
    nop

LAB_ce30fb0:
    mov.l @(PTR_ce31078,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31008
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31012
    mov.w @(DAT_ce31072,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31012
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31074,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30fea
    mova @(DAT_ce3107c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31080,pc),r0
    bra LAB_ce30ff6
    fmov.s @r0,fr3

LAB_ce30fea:
    mova @(DAT_ce31084,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31088,pc),r0
    fmov.s @r0,fr3

LAB_ce30ff6:
    mov 0x68,r0
    bra LAB_ce31012
    fmov fr3,@(r0,r14)

LAB_ce30ffc:
    mov.l @(PTR_ce31078,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31012

LAB_ce31008:
    lds.l @r15+,PR
    mov.l @(PTR_ce3108c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31012:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31018:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31090,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31094,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3102e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31098,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce3109c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31076,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31050
    bsr FUN_ce310f2
    mov r14,r4
    bra LAB_ce31054
    nop

LAB_ce31050:
    bsr FUN_ce310a8
    mov r14,r4

LAB_ce31054:
    mov.l @(PTR_ce310a0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3106a
    lds.l @r15+,PR
    mov.l @(PTR_ce310a4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3106a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31070:
    #data 0x01e8
DAT_ce31072:
    #data 0x0141
DAT_ce31074:
    #data 0x0130
DAT_ce31076:
    #data 0x01fe
    #align4

PTR_ce31078:
    #data loc_8c034dee
DAT_ce3107c:
    #data 0xc162aaaa
DAT_ce31080:
    #data 0x3ed55555
DAT_ce31084:
    #data 0x4162aaaa
DAT_ce31088:
    #data 0xbed55555
PTR_ce3108c:
    #data loc_8c051648
PTR_ce31090:
    #data loc_8c050084
PTR_ce31094:
    #data loc_8c04ff88
PTR_ce31098:
    #data loc_8c04fea8
PTR_ce3109c:
    #data loc_8c050048
PTR_ce310a0:
    #data loc_8c052ce2
PTR_ce310a4:
    #data loc_8c052dac

;=============================================

FUN_ce310a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce311e4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310c2
    lds.l @r15+,PR
    mov.l @(PTR_ce311e8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce310c2:
    mov.w @(DAT_ce311d8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce310ec
    mov.w @(DAT_ce311da,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce310ec
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x02,r5
    mov.l @(PTR_ce311ec,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce311f0,pc),r2
    mov 0x02,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce310ec:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce310f2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce311e4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3110c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce311e8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3110c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31114:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3116a
    mov.l @(PTR_ce311f4,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x16,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce311dc,pc),r0
    mov 0x03,r6
    mov.b r3,@(r0,r14)
    add 0x58,r0
    mov.l @(PTR_ce311f8,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce311de,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce311fc,pc),r3
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
    mov.l @(PTR_ce31200,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3116a:
    mov.w @(DAT_ce311e0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3117a
    mov.l @(PTR_ce31204,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3117a:
    mov 0x5C,r1
    mov.l @(PTR_ce31208,pc),r3
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
    mov.l @(PTR_ce311e4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311d0
    lds.l @r15+,PR
    mov.l @(PTR_ce3120c,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce311d0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311d8:
    #data 0x01e8
DAT_ce311da:
    #data 0x0141
DAT_ce311dc:
    #data 0x01a1
DAT_ce311de:
    #data 0x01ac
DAT_ce311e0:
    #data 0x01ff
    #align4

PTR_ce311e4:
    #data loc_8c034dee
PTR_ce311e8:
    #data loc_8c05176e
PTR_ce311ec:
    #data loc_8c08b818
PTR_ce311f0:
    #data loc_8c0d8840
PTR_ce311f4:
    #data loc_8c052b4c
PTR_ce311f8:
    #data loc_8c034e8c
PTR_ce311fc:
    #data loc_8c2896b0
PTR_ce31200:
    #data loc_8c056de4
PTR_ce31204:
    #data loc_8c0511e2
PTR_ce31208:
    #data loc_8c052c84
PTR_ce3120c:
    #data loc_8c051648

;=============================================

LAB_ce31210:
    mov r4,r3
    mov.l @(PTR_ce3136c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31222:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31370,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31362,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31270
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31364,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31250
    mova @(DAT_ce31374,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31378,pc),r0
    bra LAB_ce3125c
    fmov.s @r0,fr3

LAB_ce31250:
    mova @(DAT_ce3137c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31380,pc),r0
    fmov.s @r0,fr3

LAB_ce3125c:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31384,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31388,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31270:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31276:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31370,pc),r3
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
    mov.w @(DAT_ce31366,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce312f0
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov 0x02,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x6,r14)
    mov r14,r4
    mov.w @(DAT_ce31366,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31368,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce3138c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce312f0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312f6:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31370,pc),r3
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
    bt LAB_ce31346
    mov.l @(PTR_ce31390,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31346:
    mov.w @(DAT_ce31362,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3135c
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce3135c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31362:
    #data 0x0141
DAT_ce31364:
    #data 0x01d2
DAT_ce31366:
    #data 0x041c
DAT_ce31368:
    #data 0x01f9
    #align4

PTR_ce3136c:
    #data PTR_ce35e5c
PTR_ce31370:
    #data loc_8c034dee
DAT_ce31374:
    #data 0xc1555555
DAT_ce31378:
    #data 0x3e855555
DAT_ce3137c:
    #data 0x41555555
DAT_ce31380:
    #data 0xbe855555
DAT_ce31384:
    #data 0x40cdb6db
DAT_ce31388:
    #data 0xbf092492
PTR_ce3138c:
    #data loc_8c034e8c
PTR_ce31390:
    #data loc_8c051648

;=============================================

LAB_ce31394:
    mov r4,r3
    mov.l @(PTR_ce314f0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce313a6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314f4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce314e6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce313f4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce314e8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce313d4
    mova @(DAT_ce314f8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce314fc,pc),r0
    bra LAB_ce313e0
    fmov.s @r0,fr3

LAB_ce313d4:
    mova @(DAT_ce31500,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31504,pc),r0
    fmov.s @r0,fr3

LAB_ce313e0:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31508,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3150c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce313f4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313fa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314f4,pc),r3
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
    mov.w @(DAT_ce314ea,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31474
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    mov.w @(DAT_ce314ea,pc),r0
    mov 0x02,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce314ec,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31510,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31474:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3147a:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce314f4,pc),r3
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
    bt LAB_ce314ca
    mov.l @(PTR_ce31514,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce314ca:
    mov.w @(DAT_ce314e6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce314e0
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce314e0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314e6:
    #data 0x0141
DAT_ce314e8:
    #data 0x01d2
DAT_ce314ea:
    #data 0x041c
DAT_ce314ec:
    #data 0x01f9
    #align4

PTR_ce314f0:
    #data PTR_ce35e68
PTR_ce314f4:
    #data loc_8c034dee
DAT_ce314f8:
    #data 0x41480000
DAT_ce314fc:
    #data 0xbe700000
DAT_ce31500:
    #data 0xc1480000
DAT_ce31504:
    #data 0x3e700000
DAT_ce31508:
    #data 0x40ab6db6
DAT_ce3150c:
    #data 0xbf092492
PTR_ce31510:
    #data loc_8c034e8c
PTR_ce31514:
    #data loc_8c051648

;=============================================

LAB_ce31518:
    mov r4,r3
    mov.l @(PTR_ce31664,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3152a:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r3
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31660,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce31668,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31662,pc),r0
    mov.l @(PTR_ce31674,pc),r3
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce3166c,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31670,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31678,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3167c,pc),r13
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
    mov 0x00,r5
    jsr @r13
    mov r14,r4
    mov.l r0,@(0x14,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce315b4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce315d4
    mov.b @(0x6,r14),r0
    mov 0x21,r5
    mov.l @(PTR_ce31680,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce315d4:
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
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce315f6:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r1
    add r14,r1
    mov 0x38,r0
    sts.l PR,@-r15
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
    mov.w @(DAT_ce31662,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce3165a
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce31684,pc),r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31662,pc),r0
    mov.l @(PTR_ce31688,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x22,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3168c,pc),r2
    mov 0x06,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31690,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3165a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31660:
    #data 0x012c
DAT_ce31662:
    #data 0x041c
    #align4

PTR_ce31664:
    #data PTR_ce35e74
DAT_ce31668:
    #data 0x43d55555
DAT_ce3166c:
    #data 0xc1892492
DAT_ce31670:
    #data 0xbf4db6db
PTR_ce31674:
    #data loc_8c034e8c
PTR_ce31678:
    #data FUN_ce35254
PTR_ce3167c:
    #data loc_8c0d8e64
PTR_ce31680:
    #data loc_8c042008
PTR_ce31684:
    #data DAT_ce35474
PTR_ce31688:
    #data FUN_ce351a4
PTR_ce3168c:
    #data loc_8c0d8840
PTR_ce31690:
    #data loc_8c034dee

;=============================================

LAB_ce31694:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce317d8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce316be
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce317dc,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x12,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce316be:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce316c4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce317e0,pc),r3
    jsr @r3
    mov.l r4,@r15
    tst r0,r0
    bf LAB_ce316da
    mov.l @r15,r3
    mov.b @(0x6,r3),r0
    add 0x01,r0
    mov.b r0,@(0x6,r3)

LAB_ce316da:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce316e2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce317d8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce316fa
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce316fa:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31702:
    mov.w @(DAT_ce317d4,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce317e4,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3171c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31734
    bsr FUN_ce31e20
    mov r14,r4

LAB_ce31734:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3173a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce317e8,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31752
    lds.l @r15+,PR
    mov.l @(PTR_ce317ec,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31752:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce317f0,pc),r0
    extu.b r2,r2
    lds.l @r15+,PR
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31766:
    mov r4,r3
    mov.l @(PTR_ce317f4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31778:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce317f8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce317fc,pc),r2
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
    mov.l @(PTR_ce31800,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce317dc,pc),r2
    mov 0x13,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce317bc:
    mov.l @(PTR_ce317d8,pc),r3
    jmp @r3
    nop

LAB_ce317c2:
    mov r4,r3
    mov.l @(PTR_ce31804,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce317d4:
    #data 0x0364
    #align4

PTR_ce317d8:
    #data loc_8c034dee
PTR_ce317dc:
    #data loc_8c034e8c
PTR_ce317e0:
    #data FUN_ce35222
PTR_ce317e4:
    #data PTR_ce35e8c
PTR_ce317e8:
    #data loc_8c046c8a
PTR_ce317ec:
    #data loc_8c051648
PTR_ce317f0:
    #data PTR_ce35e94
PTR_ce317f4:
    #data PTR_ce35ec0
PTR_ce317f8:
    #data loc_8c035162
PTR_ce317fc:
    #data loc_8c03544c
PTR_ce31800:
    #data FUN_ce35254
PTR_ce31804:
    #data PTR_ce35ec8

;=============================================

LAB_ce31808:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce3192c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov 0x00,r0
    mov r0,r5
    mov.w r0,@(0x1e,r14)
    mov r0,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3182c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce3185a
    mov.b @(0x7,r14),r0
    mov 0x01,r3
    mov 0x04,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x00,r6
    mov.w @(DAT_ce31920,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce31922,pc),r0
    mov.l @(PTR_ce3192c,pc),r2
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    jsr @r2
    mov r14,r4

LAB_ce3185a:
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce3186e
    mov.l @(PTR_ce3192c,pc),r3
    mov 0x04,r0
    mov 0x13,r5
    mov.b r0,@(0x7,r14)
    mov 0x01,r6
    jsr @r3
    mov r14,r4

LAB_ce3186e:
    lds.l @r15+,PR
    mov.l @(PTR_ce31930,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31878:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce31896
    mov.l @(PTR_ce3192c,pc),r3
    mov 0x04,r0
    mov r14,r4
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    mov 0x01,r6
    mov 0x13,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31896:
    mov.l @(PTR_ce31930,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce318b6
    mov.b @(0x7,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce3192c,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce318b6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318bc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce318d6
    mov.l @(PTR_ce3192c,pc),r3
    mov 0x04,r0
    mov 0x13,r5
    mov.b r0,@(0x7,r14)
    mov 0x01,r6
    jsr @r3
    mov r14,r4

LAB_ce318d6:
    lds.l @r15+,PR
    mov.l @(PTR_ce31930,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce318e0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31930,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31924,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce318fe
    mov.b @(0x7,r14),r0
    mov.w @(DAT_ce31926,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31928,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce318fe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31904:
    mov.l @(PTR_ce31930,pc),r3
    mov.w @(DAT_ce31928,pc),r0
    mov.w @(DAT_ce31926,pc),r2
    jmp @r3
    mov.b r2,@(r0,r4)

LAB_ce3190e:
    mov r4,r3
    mov.l @(PTR_ce31934,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31920:
    #data 0x01d2
DAT_ce31922:
    #data 0x0130
DAT_ce31924:
    #data 0x0141
DAT_ce31926:
    #data 0x00ff
DAT_ce31928:
    #data 0x0326
    #align4

PTR_ce3192c:
    #data loc_8c034e8c
PTR_ce31930:
    #data loc_8c034dee
PTR_ce31934:
    #data PTR_ce35ee0

;=============================================

LAB_ce31938:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31a20,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce31a24,pc),r2
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
    mov.l @(PTR_ce31a28,pc),r3
    mov 0x13,r5
    mov 0x08,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31974:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a2c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319d8
    mov.b @(0x7,r14),r0
    mov.w @(DAT_ce31a16,pc),r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31a14,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce3199a
    bra LAB_ce319b2
    mov 0x0A,r3

LAB_ce3199a:
    mov.w @(DAT_ce31a18,pc),r1
    tst r1,r3
    bt LAB_ce319a6
    mov 0x09,r3
    bra LAB_ce319b2
    nop

LAB_ce319a6:
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce31a1a,pc),r2
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce319b8
    mov 0x0B,r3

LAB_ce319b2:
    mov.w @(DAT_ce31a1c,pc),r0
    bra LAB_ce319c8
    mov.b r3,@(r0,r14)

LAB_ce319b8:
    mov.l @(PTR_ce31a30,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce31a34,pc),r1
    and 0x1F,r0
    mov.b @(r0,r1),r2
    mov.w @(DAT_ce31a1c,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce319c8:
    mov.w @(DAT_ce31a1c,pc),r0
    mov 0x13,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce31a28,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce319d8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce319de:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a2c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31a1e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce319f6
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce319f6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce319fc:
    mov.l @(PTR_ce31a2c,pc),r3
    jmp @r3
    nop

LAB_ce31a02:
    mov r4,r3
    mov.l @(PTR_ce31a38,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a14:
    #data 0x04dc
DAT_ce31a16:
    #data 0x2000
DAT_ce31a18:
    #data 0x0800
DAT_ce31a1a:
    #data 0x0400
DAT_ce31a1c:
    #data 0x0158
DAT_ce31a1e:
    #data 0x0141
    #align4

PTR_ce31a20:
    #data loc_8c035162
PTR_ce31a24:
    #data loc_8c03544c
PTR_ce31a28:
    #data loc_8c034e8c
PTR_ce31a2c:
    #data loc_8c034dee
PTR_ce31a30:
    #data loc_8c03319e
PTR_ce31a34:
    #data DAT_ce35ef0
PTR_ce31a38:
    #data PTR_ce35f18

;=============================================

LAB_ce31a3c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce31b5c,pc),r3
    jsr @r3
    mov 0x00,r5
    mov 0x25,r0
    mov.l @(PTR_ce31b60,pc),r2
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
    mov.w @(DAT_ce31b52,pc),r0
    mov.w @(DAT_ce31b54,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bf LAB_ce31a8c
    mov.l @(PTR_ce31b64,pc),r3
    jsr @r3
    nop
    tst 0xF0,r0
    bt LAB_ce31a8c
    mov.l @(PTR_ce31b68,pc),r3
    mov 0x04,r0
    mov 0x13,r5
    mov.b r0,@(0x7,r14)
    mov 0x06,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31b32
    mov.l @r15+,r14

LAB_ce31a8c:
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce31b68,pc),r3
    mov 0x07,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31aa4
    mov.l @r15+,r14

LAB_ce31aa4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b6c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31b56,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31ac8
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31b74,pc),r3
    mov.l @(PTR_ce31b70,pc),r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ac8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31ace:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b78,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bf LAB_ce31af4
    mov.b @(0x7,r14),r0
    mov 0x01,r5
    mov.l @(PTR_ce31b5c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31b6c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31af4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31afa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b6c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31b56,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce31b14
    mov.b @(0x7,r14),r0
    add 0x01,r0
    bra LAB_ce31b1a
    mov.b r0,@(0x7,r14)

LAB_ce31b14:
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31b26

LAB_ce31b1a:
    lds.l @r15+,PR
    mov.l @(PTR_ce31b5c,pc),r3
    mov 0x01,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b26:
    lds.l @r15+,PR
    mov.l @(PTR_ce31b7c,pc),r2
    mov 0x02,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b32:
    mov.l @(PTR_ce31b6c,pc),r3
    jmp @r3
    nop

LAB_ce31b38:
    mov.w @(DAT_ce31b58,pc),r3
    mov.w @(DAT_ce31b5a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31b80,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b52:
    #data 0x04dc
DAT_ce31b54:
    #data 0x0200
DAT_ce31b56:
    #data 0x0141
DAT_ce31b58:
    #data 0x00ff
DAT_ce31b5a:
    #data 0x0326
    #align4

PTR_ce31b5c:
    #data loc_8c035162
PTR_ce31b60:
    #data loc_8c03544c
PTR_ce31b64:
    #data loc_8c03319e
PTR_ce31b68:
    #data loc_8c034e8c
PTR_ce31b6c:
    #data loc_8c034dee
PTR_ce31b70:
    #data DAT_ce35cb4
PTR_ce31b74:
    #data FUN_ce351a4
PTR_ce31b78:
    #data FUN_ce35222
PTR_ce31b7c:
    #data FUN_ce35254
PTR_ce31b80:
    #data PTR_ce35f2c

;=============================================

LAB_ce31b84:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce31cac,pc),r3
    jsr @r3
    mov 0x1D,r5
    tst r0,r0
    bt LAB_ce31ba2
    mov 0x20,r0
    mov r14,r4
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce31766
    mov.l @r15+,r14

LAB_ce31ba2:
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31cb0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce31cb4,pc),r2
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
    mov.l @(PTR_ce31cb8,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31cbc,pc),r2
    mov 0x00,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31be6
    mov.l @r15+,r14

LAB_ce31be6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce31c02
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce31cbc,pc),r3
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce31c02:
    lds.l @r15+,PR
    mov.l @(PTR_ce31cc0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c0c:
    mov.l @(PTR_ce31cc0,pc),r3
    jmp @r3
    nop

LAB_ce31c12:
    mov.w @(DAT_ce31ca6,pc),r3
    mov.w @(DAT_ce31ca8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31cc4,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c2c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce31cac,pc),r3
    jsr @r3
    mov 0x1D,r5
    tst r0,r0
    bt LAB_ce31c4a
    mov 0x20,r0
    mov r14,r4
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce31766
    mov.l @r15+,r14

LAB_ce31c4a:
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31cb0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce31cb4,pc),r2
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
    mov 0x25,r0
    mov.l @(PTR_ce31cb4,pc),r2
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
    mov.l @(PTR_ce31cb8,pc),r3
    mov 0x07,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31cbc,pc),r2
    mov 0x00,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31cc8
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ca6:
    #data 0x00ff
DAT_ce31ca8:
    #data 0x0326
    #align4

PTR_ce31cac:
    #data FUN_ce35330
PTR_ce31cb0:
    #data loc_8c035162
PTR_ce31cb4:
    #data loc_8c03544c
PTR_ce31cb8:
    #data loc_8c0db810
PTR_ce31cbc:
    #data loc_8c034e8c
PTR_ce31cc0:
    #data loc_8c034dee
PTR_ce31cc4:
    #data PTR_ce35f38

;=============================================

LAB_ce31cc8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce31ce4
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce31df8,pc),r3
    mov 0x0C,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce31ce4:
    lds.l @r15+,PR
    mov.l @(PTR_ce31dfc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31cee:
    mov.l @(PTR_ce31dfc,pc),r3
    jmp @r3
    nop

LAB_ce31cf4:
    mov r4,r3
    mov.l @(PTR_ce31e00,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31d06:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31e04,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31e08,pc),r2
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
    mov.w @(DAT_ce31df2,pc),r0
    mov 0x13,r5
    mov.l @(PTR_ce31df8,pc),r3
    mov 0x04,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31df4,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31d56:
    mov.l @(PTR_ce31dfc,pc),r3
    jmp @r3
    nop

LAB_ce31d5c:
    mov r4,r3
    mov.l @(PTR_ce31e0c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31d6e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31e04,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31e14,pc),r2
    mov.l @(PTR_ce31e10,pc),r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31e18,pc),r3
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
    mov.w @(DAT_ce31df2,pc),r0
    mov 0x13,r5
    mov.l @(PTR_ce31df8,pc),r3
    mov 0x05,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31df4,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31dc4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31e18,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bf LAB_ce31de8
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31e1c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31dfc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31de8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31dee:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31df2:
    #data 0x041c
DAT_ce31df4:
    #data 0x01fc
    #align4

PTR_ce31df8:
    #data loc_8c034e8c
PTR_ce31dfc:
    #data loc_8c034dee
PTR_ce31e00:
    #data PTR_ce35f44
PTR_ce31e04:
    #data loc_8c035162
PTR_ce31e08:
    #data FUN_ce35254
PTR_ce31e0c:
    #data PTR_ce35f4c
PTR_ce31e10:
    #data DAT_ce354cc
PTR_ce31e14:
    #data FUN_ce351a4
PTR_ce31e18:
    #data FUN_ce35222
PTR_ce31e1c:
    #data loc_8c0db578

;=============================================

FUN_ce31e20:
    mov.w @(DAT_ce31f2a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31f2c,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31e8c
    mov 0x20,r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31f2a,pc),r0
    mov.w @(DAT_ce31f2e,pc),r3
    mov.w @(r0,r14),r1
    extu.w r1,r1
    tst r3,r1
    bt LAB_ce31e4a
    mov 0x20,r0
    mov 0x06,r2
    mov.b r2,@(r0,r14)

LAB_ce31e4a:
    mov.w @(DAT_ce31f2a,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x80,r0
    bt LAB_ce31e5a
    mov 0x20,r0
    mov 0x07,r2
    mov.b r2,@(r0,r14)

LAB_ce31e5a:
    mov.w @(DAT_ce31f2a,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x40,r0
    bt LAB_ce31e6a
    mov 0x20,r0
    mov 0x08,r2
    mov.b r2,@(r0,r14)

LAB_ce31e6a:
    mov.w @(DAT_ce31f2a,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x20,r0
    bt LAB_ce31e7a
    mov 0x20,r0
    mov 0x09,r2
    mov.b r2,@(r0,r14)

LAB_ce31e7a:
    mov.w @(DAT_ce31f2a,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x10,r0
    bt LAB_ce31e9e
    mov 0x20,r0
    mov 0x0A,r2
    bra LAB_ce31e9e
    mov.b r2,@(r0,r14)

LAB_ce31e8c:
    mov.l @(PTR_ce31f34,pc),r1
    jsr @r1
    nop
    mov.l @(PTR_ce31f38,pc),r1
    and 0x0F,r0
    shll r0
    mov.b @(r0,r1),r3
    mov 0x20,r0
    mov.b r3,@(r0,r14)

LAB_ce31e9e:
    mov.l @(PTR_ce31f3c,pc),r3
    mov.b @r3,r2
    tst r2,r2
    bf LAB_ce31ec8
    mov 0x20,r0
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x06,r0
    bt/s LAB_ce31ec2
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x09,r0
    bt LAB_ce31ec2
    mov r4,r0
    nop
    cmp/eq 0x0A,r0
    bf LAB_ce31ec8

LAB_ce31ec2:
    mov 0x20,r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)

LAB_ce31ec8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31ece:
    mov.w @(DAT_ce31f30,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31f40,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31ee2:
    mov r4,r3
    mov.l @(PTR_ce31f44,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31ef4:
    mov r4,r3
    mov.l @(PTR_ce31f48,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31f06:
    mov.w @(DAT_ce31f32,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce31f1e
    cmp/eq 0x02,r0
    bt LAB_ce31f4c
    bra LAB_ce31f58
    nop

LAB_ce31f1e:
    mov 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    bra LAB_ce32038
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f2a:
    #data 0x04dc
DAT_ce31f2c:
    #data 0x03f0
DAT_ce31f2e:
    #data 0x0100
DAT_ce31f30:
    #data 0x01e9
DAT_ce31f32:
    #data 0x01f9
    #align4

PTR_ce31f34:
    #data loc_8c03319e
PTR_ce31f38:
    #data DAT_ce35f58
PTR_ce31f3c:
    #data loc_8c289636
PTR_ce31f40:
    #data PTR_ce35f78
PTR_ce31f44:
    #data PTR_ce35fac
PTR_ce31f48:
    #data PTR_ce35fb8

;=============================================

LAB_ce31f4c:
    mov 0x02,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    bra LAB_ce3216c
    mov.l @r15+,r14

LAB_ce31f58:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32050,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32054,pc),r2
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
    mov 0x31,r3
    mov.w @(DAT_ce3204a,pc),r0
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3204c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32058,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3205c,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32060,pc),r3
    mov 0x15,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32064,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31fcc
    mov.l @r15+,r14

LAB_ce31fcc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32068,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3204e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3200c
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov.l @(PTR_ce3206c,pc),r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3204e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32070,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32074,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32078,pc),r3
    mov 0x03,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3207c,pc),r2
    mov 0x00,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3200c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32012:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32074,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce32068,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32032
    lds.l @r15+,PR
    mov.l @(PTR_ce32080,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32032:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32038:
    mov r4,r3
    mov.l @(PTR_ce32084,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3204a:
    #data 0x041c
DAT_ce3204c:
    #data 0x01a1
DAT_ce3204e:
    #data 0x0141
    #align4

PTR_ce32050:
    #data loc_8c05218a
PTR_ce32054:
    #data loc_8c035162
PTR_ce32058:
    #data loc_8c2896b0
PTR_ce3205c:
    #data loc_8c056de4
PTR_ce32060:
    #data loc_8c034e8c
PTR_ce32064:
    #data loc_8c05115a
PTR_ce32068:
    #data loc_8c034dee
PTR_ce3206c:
    #data DAT_ce354a4
PTR_ce32070:
    #data FUN_ce351a4
PTR_ce32074:
    #data FUN_ce35222
PTR_ce32078:
    #data loc_8c0d8840
PTR_ce3207c:
    #data loc_8c08bb40
PTR_ce32080:
    #data loc_8c051648
PTR_ce32084:
    #data PTR_ce35fc4

;=============================================

LAB_ce32088:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32184,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32188,pc),r2
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
    mov 0x31,r3
    mov.w @(DAT_ce3217e,pc),r0
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32180,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3218c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32190,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32194,pc),r3
    mov 0x15,r5
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32198,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce32100:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3219c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32182,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32140
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov.l @(PTR_ce321a0,pc),r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32182,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce321a4,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce321a8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce321ac,pc),r3
    mov 0x04,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce321b0,pc),r2
    mov 0x01,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32140:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32146:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce321a8,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce3219c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32166
    lds.l @r15+,PR
    mov.l @(PTR_ce321b4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32166:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3216c:
    mov r4,r3
    mov.l @(PTR_ce321b8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3217e:
    #data 0x041c
DAT_ce32180:
    #data 0x01a1
DAT_ce32182:
    #data 0x0141
    #align4

PTR_ce32184:
    #data loc_8c05218a
PTR_ce32188:
    #data loc_8c035162
PTR_ce3218c:
    #data loc_8c2896b0
PTR_ce32190:
    #data loc_8c056de4
PTR_ce32194:
    #data loc_8c034e8c
PTR_ce32198:
    #data loc_8c05115a
PTR_ce3219c:
    #data loc_8c034dee
PTR_ce321a0:
    #data DAT_ce354a4
PTR_ce321a4:
    #data FUN_ce351a4
PTR_ce321a8:
    #data FUN_ce35222
PTR_ce321ac:
    #data loc_8c0d8840
PTR_ce321b0:
    #data loc_8c08bb40
PTR_ce321b4:
    #data loc_8c051648
PTR_ce321b8:
    #data PTR_ce35fd0

;=============================================

LAB_ce321bc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32310,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32314,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce32318,pc),r0
    fldi0 fr2
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x05,r5
    mov.l @(DAT_ce3231c,pc),r1
    fdiv fr4,fr3
    mov.l @(PTR_ce32320,pc),r3
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
    mov.w @(DAT_ce32308,pc),r0
    mov 0x3D,r2
    mov 0x00,r4
    mov.l @(PTR_ce32324,pc),r3
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
    mov.l @(PTR_ce32328,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3223c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce322ba
    mov r4,r14
    mov.l @(PTR_ce3232c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3230a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32280
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov.l @(PTR_ce32330,pc),r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3230a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32334,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32338,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3233c,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32340,pc),r2
    mov 0x02,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32280:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32286:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce322ba
    mov r4,r14
    mov.l @(PTR_ce32338,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3232c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce322b4
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32344,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce322b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce322ba:
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
    mov.w @(DAT_ce3230c,pc),r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce32304
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)

LAB_ce32304:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32308:
    #data 0x01a1
DAT_ce3230a:
    #data 0x0141
DAT_ce3230c:
    #data 0x041c
    #align4

PTR_ce32310:
    #data loc_8c05218a
PTR_ce32314:
    #data loc_8c035162
DAT_ce32318:
    #data 0x41000000
DAT_ce3231c:
    #data 0x42800000
PTR_ce32320:
    #data loc_8c056de4
PTR_ce32324:
    #data loc_8c2896b0
PTR_ce32328:
    #data loc_8c034e8c
PTR_ce3232c:
    #data loc_8c034dee
PTR_ce32330:
    #data DAT_ce354a4
PTR_ce32334:
    #data FUN_ce351a4
PTR_ce32338:
    #data FUN_ce35222
PTR_ce3233c:
    #data loc_8c0d8840
PTR_ce32340:
    #data loc_8c08bb40
PTR_ce32344:
    #data loc_8c05176e

;=============================================

LAB_ce32348:
    mov r4,r3
    mov.l @(PTR_ce324a0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3235a:
    mov r4,r3
    mov.l @(PTR_ce324a4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3236c:
    mov.w @(DAT_ce32492,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3238e
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce32698
    mov.l @r15+,r14

LAB_ce3238e:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce324a8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce324ac,pc),r2
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
    mov.w @(DAT_ce32494,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce324b0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32496,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce324b8,pc),r0
    mov.l @(PTR_ce324b4,pc),r5
    fmov.s @r0,fr5
    mova @(DAT_ce324bc,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32498,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32402
    mov r5,r4
    mov.w @(DAT_ce3249a,pc),r0
    mov.b @(r0,r14),r1
    mov 0x5C,r0
    extu.b r1,r1
    shll2 r1
    shll r1
    add r1,r4
    mov.l @r4,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce324c0,pc),r0
    bra LAB_ce32422
    fmov.s @r0,fr3

LAB_ce32402:
    mov.w @(DAT_ce3249a,pc),r0
    mov.b @(r0,r14),r2
    mov 0x5C,r0
    extu.b r2,r2
    shll2 r2
    shll r2
    add r2,r4
    mov.l @r4,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce324c4,pc),r0
    fmov.s @r0,fr3

LAB_ce32422:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3249a,pc),r0
    mov.b @(r0,r14),r3
    mova @(DAT_ce324c8,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    extu.b r3,r3
    shll2 r3
    shll r3
    add r3,r5
    mov.l @(0x4,r5),r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce324cc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3249a,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce324d0,pc),r0
    extu.b r3,r3
    shll r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce3249c,pc),r0
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce324d4,pc),r3
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
    mov.w @(DAT_ce3249a,pc),r0
    mov.l @(PTR_ce324d8,pc),r2
    mov.b @(r0,r14),r6
    add 0x03,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce324dc
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32492:
    #data 0x01f9
DAT_ce32494:
    #data 0x041c
DAT_ce32496:
    #data 0x01fc
DAT_ce32498:
    #data 0x01d2
DAT_ce3249a:
    #data 0x01a3
DAT_ce3249c:
    #data 0x01a1
    #align4

PTR_ce324a0:
    #data PTR_ce36004
PTR_ce324a4:
    #data PTR_ce3600c
PTR_ce324a8:
    #data loc_8c05218a
PTR_ce324ac:
    #data loc_8c035162
PTR_ce324b0:
    #data loc_8c056de4
PTR_ce324b4:
    #data DAT_ce35fdc
DAT_ce324b8:
    #data 0x3fd55555
DAT_ce324bc:
    #data 0x47800000
DAT_ce324c0:
    #data 0x3f3aaaaa
DAT_ce324c4:
    #data 0xbf3aaaaa
DAT_ce324c8:
    #data 0x40092492
DAT_ce324cc:
    #data 0xbf700000
PTR_ce324d0:
    #data DAT_ce35ffc
PTR_ce324d4:
    #data loc_8c2896b0
PTR_ce324d8:
    #data loc_8c034e8c

;=============================================

LAB_ce324dc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce325f4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce325ec,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3251a
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce325ec,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce325ee,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3250c
    mov.l @(DAT_ce325f8,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    bra LAB_ce32514
    fsts FPUL,fr3

LAB_ce3250c:
    mov.l @(DAT_ce325fc,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    fsts FPUL,fr3

LAB_ce32514:
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce3251a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32520:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce325f4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce325ec,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3255e
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce325ec,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce325ee,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32550
    mov.l @(DAT_ce32600,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    bra LAB_ce32558
    fsts FPUL,fr3

LAB_ce32550:
    mov.l @(DAT_ce32604,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    fsts FPUL,fr3

LAB_ce32558:
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce3255e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32564:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce325f4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce325ec,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce325a2
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32608,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce325f0,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce3260c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32610,pc),r2
    mov 0x08,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32614,pc),r3
    mov 0x4B,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce325a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce325a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce325f4,pc),r3
    jsr @r3
    mov r4,r14
    bsr FUN_ce328de
    mov r14,r4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x68,r1
    add r14,r1
    ftrc fr4,FPUL
    fadd fr4,fr3
    sts FPUL,r4
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,fr3
    ftrc fr3,FPUL
    sts FPUL,r5
    xor r5,r4
    cmp/pz r4
    bt/s LAB_ce325e6
    fmov fr2,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce325e6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325ec:
    #data 0x0141
DAT_ce325ee:
    #data 0x01d2
DAT_ce325f0:
    #data 0x0140
    #align4

PTR_ce325f4:
    #data loc_8c034dee
DAT_ce325f8:
    #data 0xc1555555
DAT_ce325fc:
    #data 0x41555555
DAT_ce32600:
    #data 0xc2200000
DAT_ce32604:
    #data 0x42200000
PTR_ce32608:
    #data loc_8c053082
PTR_ce3260c:
    #data loc_8c05115a
PTR_ce32610:
    #data loc_8c0d8840
PTR_ce32614:
    #data loc_8c04223a

;=============================================

LAB_ce32618:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32708,pc),r3
    jsr @r3
    mov r4,r14
    bsr FUN_ce328de
    mov r14,r4
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce32700,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce3265e
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32702,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32700,pc),r0
    mov.l @(PTR_ce3270c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32704,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov 0x15,r5
    mov.l @(PTR_ce32710,pc),r3
    add 0x06,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce3265e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32664:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32708,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3267e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32714,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3267e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32686:
    mov r4,r3
    mov.l @(PTR_ce32718,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32698:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce3271c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32720,pc),r2
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
    mov.l @(PTR_ce32724,pc),r3
    mov 0x05,r5
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32728,pc),r0
    mov.l @(PTR_ce3272c,pc),r5
    fmov.s @r0,fr5
    mova @(DAT_ce32730,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32706,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32738
    mov r5,r4
    mov.w @(DAT_ce32704,pc),r0
    mov.b @(r0,r14),r1
    mov 0x5C,r0
    extu.b r1,r1
    shll2 r1
    shll r1
    add r1,r4
    mov.l @(0x10,r4),r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32734,pc),r0
    bra LAB_ce32758
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32700:
    #data 0x041c
DAT_ce32702:
    #data 0x01f9
DAT_ce32704:
    #data 0x01a3
DAT_ce32706:
    #data 0x01d2
    #align4

PTR_ce32708:
    #data loc_8c034dee
PTR_ce3270c:
    #data loc_8c0511b4
PTR_ce32710:
    #data loc_8c034e8c
PTR_ce32714:
    #data loc_8c051648
PTR_ce32718:
    #data PTR_ce36028
PTR_ce3271c:
    #data loc_8c05218a
PTR_ce32720:
    #data loc_8c035162
PTR_ce32724:
    #data loc_8c056de4
DAT_ce32728:
    #data 0x3fd55555
PTR_ce3272c:
    #data DAT_ce35fdc
DAT_ce32730:
    #data 0x47800000
DAT_ce32734:
    #data 0x3f3aaaaa

;=============================================

LAB_ce32738:
    mov.w @(DAT_ce32888,pc),r0
    mov.b @(r0,r14),r2
    mov 0x5C,r0
    extu.b r2,r2
    shll2 r2
    shll r2
    add r2,r4
    mov.l @(0x10,r4),r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32894,pc),r0
    fmov.s @r0,fr3

LAB_ce32758:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce32888,pc),r0
    mov.b @(r0,r14),r3
    mova @(DAT_ce32898,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    extu.b r3,r3
    shll2 r3
    shll r3
    add r3,r5
    mov.l @(0x14,r5),r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3289c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32888,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce328a0,pc),r0
    extu.b r3,r3
    shll r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce3288a,pc),r0
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce328a4,pc),r3
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x15,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce32888,pc),r0
    mov.l @(PTR_ce328a8,pc),r2
    mov.b @(r0,r14),r6
    add 0x10,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce327c6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce328ac,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3288c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce327f2
    mov.b @(0x7,r14),r0
    mov 0x08,r5
    mov.l @(PTR_ce328b0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce328b4,pc),r2
    mov 0x4B,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce327f2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce327f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce328ac,pc),r3
    jsr @r3
    mov r4,r14
    bsr FUN_ce328de
    mov r14,r4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x68,r1
    add r14,r1
    ftrc fr4,FPUL
    fadd fr4,fr3
    sts FPUL,r4
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,fr3
    ftrc fr3,FPUL
    sts FPUL,r5
    xor r5,r4
    cmp/pz r4
    bt/s LAB_ce32836
    fmov fr2,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce32836:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3283c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce328ac,pc),r3
    jsr @r3
    mov r4,r14
    bsr FUN_ce328de
    mov r14,r4
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce3288e,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce32882
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32890,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3288e,pc),r0
    mov.l @(PTR_ce328b8,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32888,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov 0x15,r5
    mov.l @(PTR_ce328a8,pc),r3
    add 0x06,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32882:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32888:
    #data 0x01a3
DAT_ce3288a:
    #data 0x01a1
DAT_ce3288c:
    #data 0x0141
DAT_ce3288e:
    #data 0x041c
DAT_ce32890:
    #data 0x01f9
    #align4

DAT_ce32894:
    #data 0xbf3aaaaa
DAT_ce32898:
    #data 0x40092492
DAT_ce3289c:
    #data 0xbf700000
PTR_ce328a0:
    #data DAT_ce36000
PTR_ce328a4:
    #data loc_8c2896b0
PTR_ce328a8:
    #data loc_8c034e8c
PTR_ce328ac:
    #data loc_8c034dee
PTR_ce328b0:
    #data loc_8c0d8840
PTR_ce328b4:
    #data loc_8c04223a
PTR_ce328b8:
    #data loc_8c0511b4

;=============================================

LAB_ce328bc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32a00,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce328d6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32a04,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce328d6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce328de:
    mov 0x60,r0
    fmov.s @(r0,r4),fr4
    mov 0x38,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r1
    add r4,r1
    ftrc fr4,FPUL
    fadd fr4,fr3
    sts FPUL,r5
    fmov fr3,@(r0,r4)
    mov 0x60,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,fr3
    ftrc fr3,FPUL
    sts FPUL,r6
    xor r6,r5
    cmp/pz r5
    bt/s LAB_ce32910
    fmov fr2,@(r0,r4)
    mova @(DAT_ce32a08,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)

LAB_ce32910:
    rts
    nop

LAB_ce32914:
    mov r4,r3
    mov.l @(PTR_ce32a0c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32926:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce32a10,pc),r3
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
    mov.w @(DAT_ce329f8,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce329fa,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32a14,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32a18,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce329fc,pc),r0
    mov 0x50,r2
    mov.l @(PTR_ce32a1c,pc),r3
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
    mov.l @(PTR_ce32a20,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3299c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32a00,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce329bc
    mov.l @(PTR_ce32a04,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce329bc:
    mov.w @(DAT_ce329fe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce329de
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32a24,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32a28,pc),r0
    mov.l @(PTR_ce32a2c,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce329de:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce329e6:
    mov r4,r3
    mov.l @(PTR_ce32a30,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329f8:
    #data 0x01f9
DAT_ce329fa:
    #data 0x041c
DAT_ce329fc:
    #data 0x01a1
DAT_ce329fe:
    #data 0x0141
    #align4

PTR_ce32a00:
    #data loc_8c034dee
PTR_ce32a04:
    #data loc_8c051648
DAT_ce32a08:
    #data 0xbfcdb6db
PTR_ce32a0c:
    #data PTR_ce3603c
PTR_ce32a10:
    #data loc_8c035162
PTR_ce32a14:
    #data loc_8c05218a
PTR_ce32a18:
    #data loc_8c05115a
PTR_ce32a1c:
    #data loc_8c2896b0
PTR_ce32a20:
    #data loc_8c034e8c
DAT_ce32a24:
    #data 0xc2695555
DAT_ce32a28:
    #data 0x42ab6db6
PTR_ce32a2c:
    #data loc_8c050ea4
PTR_ce32a30:
    #data PTR_ce36044

;=============================================

LAB_ce32a34:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32b8c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32b90,pc),r2
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
    mov.w @(DAT_ce32b74,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce32b94,pc),r3
    mov 0x02,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32b76,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce32a82:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32b98,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a9c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32b9c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32a9c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32aa4:
    mov.w @(DAT_ce32b78,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32ba0,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32abe:
    mov.w @(DAT_ce32b7e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce32b7a,pc),r5
    extu.b r0,r0
    mov.w @(DAT_ce32b7c,pc),r6
    cmp/eq 0x06,r0
    bf/s LAB_ce32ade
    add r14,r5
    mov.w @(DAT_ce32b80,pc),r0
    mov 0x10,r3
    mov.b r6,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32ade:
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
    mov.w @(DAT_ce32b82,pc),r0
    fldi0 fr4
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32b74,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32b76,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32b84,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32ba4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    mov 0x16,r5
    mov 0x07,r6
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32b94,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32ba8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce32b4c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32b86,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32b88,pc),r0
    mov.w @(DAT_ce32b7a,pc),r13
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32b7e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce32bac
    add r14,r13
    bra LAB_ce32bae
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b74:
    #data 0x041c
DAT_ce32b76:
    #data 0x01fc
DAT_ce32b78:
    #data 0x0364
DAT_ce32b7a:
    #data 0x02a4
DAT_ce32b7c:
    #data 0x00ff
DAT_ce32b7e:
    #data 0x0255
DAT_ce32b80:
    #data 0x03f0
DAT_ce32b82:
    #data 0x01f9
DAT_ce32b84:
    #data 0x01a1
DAT_ce32b86:
    #data 0x03f8
DAT_ce32b88:
    #data 0x0328
    #align4

PTR_ce32b8c:
    #data loc_8c05218a
PTR_ce32b90:
    #data loc_8c035162
PTR_ce32b94:
    #data loc_8c034e8c
PTR_ce32b98:
    #data loc_8c034dee
PTR_ce32b9c:
    #data loc_8c051648
PTR_ce32ba0:
    #data PTR_ce3604c
PTR_ce32ba4:
    #data loc_8c2896b0
PTR_ce32ba8:
    #data loc_8c05115a

;=============================================

LAB_ce32bac:
    mov 0x00,r3

LAB_ce32bae:
    mov.w @(DAT_ce32cb0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32cc0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32cb2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32bfe
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32cc8,pc),r3
    add 0x01,r0
    mov.l @(PTR_ce32cc4,pc),r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32cb4,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x02,r0
    mov.b r0,@(0xb,r13)
    mov.w @(DAT_ce32cb6,pc),r0
    mov.b r0,@(0xa,r13)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32ccc,pc),r0
    mov.l @(PTR_ce32cd4,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32cd0,pc),r0
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

LAB_ce32bfe:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32c08:
    mov.w @(DAT_ce32cba,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    mov.w @(DAT_ce32cb8,pc),r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add r14,r13
    mov.w @(DAT_ce32cbc,pc),r0
    mov.l @(PTR_ce32cd8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce32ca8
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
    mov.w @(DAT_ce32cbe,pc),r0
    mov.l @(PTR_ce32cdc,pc),r3
    mov.w r0,@(0x1e,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ce0,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce32ce4,pc),r1
    and 0x03,r0
    shll2 r0
    mov.l @(r0,r1),r3
    mov 0x1B,r0
    mov 0x01,r2
    mov.l r3,@(0x14,r13)
    mov.l @(PTR_ce32ce8,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32cec,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32cf0,pc),r13
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
    mov.l @(PTR_ce32cc8,pc),r3
    mov.l @(PTR_ce32cf4,pc),r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32cf8,pc),r2
    mov 0x16,r5
    mov 0x08,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32cfc,pc),r3
    mov r14,r4
    mov 0x1E,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ca8:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32cb0:
    #data 0x03f1
DAT_ce32cb2:
    #data 0x0141
DAT_ce32cb4:
    #data 0x03f0
DAT_ce32cb6:
    #data 0x00ff
DAT_ce32cb8:
    #data 0x02a4
DAT_ce32cba:
    #data 0x03f8
DAT_ce32cbc:
    #data 0x0328
DAT_ce32cbe:
    #data 0x00b4
    #align4

PTR_ce32cc0:
    #data loc_8c034dee
PTR_ce32cc4:
    #data DAT_ce3581c
PTR_ce32cc8:
    #data FUN_ce351a4
DAT_ce32ccc:
    #data 0xc1555555
DAT_ce32cd0:
    #data 0x42d20000
PTR_ce32cd4:
    #data loc_8c050834
PTR_ce32cd8:
    #data FUN_ce35222
PTR_ce32cdc:
    #data loc_8c0f047c
PTR_ce32ce0:
    #data loc_8c03319e
PTR_ce32ce4:
    #data PTR_ce36064
PTR_ce32ce8:
    #data loc_8c05218a
PTR_ce32cec:
    #data loc_8c035162
PTR_ce32cf0:
    #data loc_8c08e2f8
PTR_ce32cf4:
    #data DAT_ce3586c
PTR_ce32cf8:
    #data loc_8c034e8c
PTR_ce32cfc:
    #data loc_8c042008

;=============================================

LAB_ce32d00:
    mov.w @(DAT_ce32df6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    mov.w @(DAT_ce32df4,pc),r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add r14,r13
    mov.w @(DAT_ce32df8,pc),r0
    mov.l @(PTR_ce32e04,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32e08,pc),r3
    mov 0x05,r1
    mov.b @r3,r2
    extu.b r2,r2
    cmp/ge r1,r2
    bf/s LAB_ce32d32
    mov 0x00,r4
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r13)

LAB_ce32d32:
    mov.w @(0x1e,r13),r0
    tst r0,r0
    bf LAB_ce32d78
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x19,r0
    mov.b r4,@(r0,r13)
    mov.w @(DAT_ce32dfa,pc),r0
    mov.l @(PTR_ce32e0c,pc),r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32dfc,pc),r0
    mov.l @(PTR_ce32e10,pc),r3
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32e14,pc),r2
    mov 0x16,r5
    mov 0x22,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32e18,pc),r3
    mov r14,r4
    mov 0x2B,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32d78:
    mov.b @(0x7,r14),r0
    mov r13,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce32e1c,pc),r1
    extu.b r0,r0
    shll2 r0
    mov r14,r4
    mov.l @r15+,r13
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;=============================================

FUN_ce32d8e:
    mov.w @(DAT_ce32dfe,pc),r0
    mov.l @(r0,r4),r5
    add 0xC6,r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce32da4
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fmov.s @(r0,r5),fr3
    fcmp/gt fr2,fr3
    bt LAB_ce32db6

LAB_ce32da4:
    mov.w @(DAT_ce32e00,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce32dba
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fmov.s @(r0,r5),fr3
    fcmp/gt fr3,fr2
    bf LAB_ce32dba

LAB_ce32db6:
    rts
    mov 0x01,r0

LAB_ce32dba:
    mov 0x00,r0
    rts
    nop

LAB_ce32dc0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l r5,@r15
    mov r4,r14
    bsr FUN_ce32d8e
    mov r14,r4
    tst r0,r0
    bt LAB_ce32dea
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
    bra LAB_ce32e20
    mov.l @r15+,r14

LAB_ce32dea:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce33594
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32df4:
    #data 0x02a4
DAT_ce32df6:
    #data 0x03f8
DAT_ce32df8:
    #data 0x0328
DAT_ce32dfa:
    #data 0x03f9
DAT_ce32dfc:
    #data 0x0327
DAT_ce32dfe:
    #data 0x020c
DAT_ce32e00:
    #data 0x01d2
    #align4

PTR_ce32e04:
    #data FUN_ce35222
PTR_ce32e08:
    #data loc_8c2895f0
PTR_ce32e0c:
    #data DAT_ce358fc
PTR_ce32e10:
    #data FUN_ce351a4
PTR_ce32e14:
    #data loc_8c034e8c
PTR_ce32e18:
    #data loc_8c042008
PTR_ce32e1c:
    #data PTR_ce36074

;=============================================

LAB_ce32e20:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    mov.l r12,@-r15
    sts.l PR,@-r15

LAB_ce32e2c:
    mov 0x18,r0
    mov.b @(r0,r13),r3
    tst r3,r3
    bf LAB_ce32e5a
    mov.b @(r0,r13),r3
    mov 0x16,r5
    mov 0x0A,r6
    add 0x01,r3
    mov.b r3,@(r0,r13)
    mov 0x01,r3
    mov.w @(DAT_ce32f30,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce32f32,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mov 0x19,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce32f34,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32e5a:
    mov 0x00,r12
    bsr FUN_ce32d8e
    mov r14,r4
    tst r0,r0
    bt LAB_ce32e6c
    mov 0x18,r0
    mov.b r12,@(r0,r13)
    bra LAB_ce32e2c
    mov r13,r4

LAB_ce32e6c:
    mov.l @(PTR_ce32f38,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32e90
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x18,r0
    mov.b r12,@(r0,r13)
    mov 0x19,r0
    mov.l @(PTR_ce32f34,pc),r3
    mov 0x16,r5
    mov.b r12,@(r0,r13)
    mov 0x08,r6
    jsr @r3
    mov r14,r4

LAB_ce32e90:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra LAB_ce33594
    mov.l @r15+,r14

LAB_ce32e9c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    bsr FUN_ce32d8e
    mov r5,r13
    tst r0,r0
    bt LAB_ce32ec2
    mov 0x06,r0
    mov r13,r5
    mov.b r0,@(0x7,r14)
    mov 0x18,r0
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r13)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce32e20
    mov.l @r15+,r14

LAB_ce32ec2:
    mov 0x18,r0
    mov.b @(r0,r13),r2
    tst r2,r2
    bf LAB_ce32ee0
    mov.b @(r0,r13),r2
    mov 0x00,r3
    mov 0x16,r5
    add 0x01,r2
    mov.b r2,@(r0,r13)
    mov 0x19,r0
    mov.b r3,@(r0,r13)
    mov 0x08,r6
    mov.l @(PTR_ce32f34,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32ee0:
    mov.w @(DAT_ce32f30,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32ef2
    mov.l @(DAT_ce32f3c,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    bra LAB_ce32efa
    fsts FPUL,fr3

LAB_ce32ef2:
    mov.l @(DAT_ce32f40,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    fsts FPUL,fr3

LAB_ce32efa:
    fmov.s @(r0,r14),fr2
    mov r14,r4
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce33594
    mov.l @r15+,r14

LAB_ce32f0a:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    bsr FUN_ce32d8e
    mov r5,r13
    tst r0,r0
    bt LAB_ce32f44
    mov 0x06,r0
    mov r13,r5
    mov.b r0,@(0x7,r14)
    mov 0x18,r0
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r13)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce32e20
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f30:
    #data 0x01d2
DAT_ce32f32:
    #data 0x0130
    #align4

PTR_ce32f34:
    #data loc_8c034e8c
PTR_ce32f38:
    #data loc_8c034dee
DAT_ce32f3c:
    #data 0xc0a00000
DAT_ce32f40:
    #data 0x40a00000

;=============================================

LAB_ce32f44:
    mov 0x18,r0
    mov.b @(r0,r13),r2
    tst r2,r2
    bf LAB_ce32f62
    mov.b @(r0,r13),r2
    mov 0x00,r3
    mov 0x16,r5
    add 0x01,r2
    mov.b r2,@(r0,r13)
    mov 0x19,r0
    mov.b r3,@(r0,r13)
    mov 0x08,r6
    mov.l @(PTR_ce33078,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32f62:
    mov.w @(DAT_ce33074,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32f74
    mov.l @(DAT_ce3307c,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    bra LAB_ce32f7c
    fsts FPUL,fr3

LAB_ce32f74:
    mov.l @(DAT_ce33080,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    fsts FPUL,fr3

LAB_ce32f7c:
    fmov.s @(r0,r14),fr2
    mov r14,r4
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce33594
    mov.l @r15+,r14

LAB_ce32f8c:
    mov 0x18,r0
    mov r5,r3
    mov.l r5,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce33084,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce32fa0:
    mov 0x18,r0
    mov r5,r3
    mov.l r5,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce33088,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce32fb4:
    mov 0x18,r0
    mov r5,r3
    mov.l r5,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce3308c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce32fc8:
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
    mov.l @(PTR_ce33078,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce33002:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33042
    mov 0x18,r0
    mov.l @(PTR_ce33098,pc),r13
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mova @(DAT_ce33090,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x05,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33094,pc),r0
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

LAB_ce33042:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3304a:
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
    mov.w @(DAT_ce33074,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce330a0
    mova @(DAT_ce3309c,pc),r0
    bra LAB_ce330a4
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33074:
    #data 0x01d2
    #align4

PTR_ce33078:
    #data loc_8c034e8c
DAT_ce3307c:
    #data 0x40855555
DAT_ce33080:
    #data 0xc0855555
PTR_ce33084:
    #data PTR_ce36094
PTR_ce33088:
    #data PTR_ce360a8
PTR_ce3308c:
    #data PTR_ce360bc
DAT_ce33090:
    #data 0x41892492
DAT_ce33094:
    #data 0xbf4db6db
PTR_ce33098:
    #data loc_8c08e2f8
DAT_ce3309c:
    #data 0xc0a00000

;=============================================

LAB_ce330a0:
    mova @(DAT_ce331f4,pc),r0
    fmov.s @r0,fr3

LAB_ce330a4:
    mov 0x5C,r0
    mov.l @(PTR_ce331f8,pc),r3
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

LAB_ce330c2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33102
    mov 0x18,r0
    mov.l @(PTR_ce33204,pc),r13
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mova @(DAT_ce331fc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x08,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33200,pc),r0
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

LAB_ce33102:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3310a:
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
    mov.w @(DAT_ce331f0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce33134
    mova @(DAT_ce33208,pc),r0
    bra LAB_ce33138
    fmov.s @r0,fr3

LAB_ce33134:
    mova @(DAT_ce3320c,pc),r0
    fmov.s @r0,fr3

LAB_ce33138:
    mov 0x5C,r0
    mov.l @(PTR_ce331f8,pc),r3
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

LAB_ce33156:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33196
    mov 0x18,r0
    mov.l @(PTR_ce33204,pc),r13
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mova @(DAT_ce331fc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x0B,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33200,pc),r0
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

LAB_ce33196:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3319e:
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
    bt/s LAB_ce331ec
    fmov fr2,@(r0,r4)
    mov 0x18,r0
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mova @(DAT_ce33210,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r4)

LAB_ce331ec:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331f0:
    #data 0x01d2
    #align4

DAT_ce331f4:
    #data 0x40a00000
PTR_ce331f8:
    #data loc_8c034e8c
DAT_ce331fc:
    #data 0x41892492
DAT_ce33200:
    #data 0xbf4db6db
PTR_ce33204:
    #data loc_8c08e2f8
DAT_ce33208:
    #data 0x40855555
DAT_ce3320c:
    #data 0xc0855555
DAT_ce33210:
    #data 0xbfcdb6db

;=============================================

LAB_ce33214:
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
    mov.w @(DAT_ce3334e,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33270
    mov 0x18,r0
    mov.l @(PTR_ce33354,pc),r3
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r4)
    mov.w @(DAT_ce3334e,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce33270:
    rts
    nop

LAB_ce33274:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33284
    bra LAB_ce33594
    nop

LAB_ce33284:
    rts
    nop

LAB_ce33288:
    mov 0x18,r0
    mov r5,r3
    mov.l r5,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce33358,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3329c:
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
    mov.w @(DAT_ce33350,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce332c6
    mova @(DAT_ce3335c,pc),r0
    bra LAB_ce332ca
    fmov.s @r0,fr3

LAB_ce332c6:
    mova @(DAT_ce33360,pc),r0
    fmov.s @r0,fr3

LAB_ce332ca:
    mov 0x5C,r0
    mov.l @(PTR_ce33364,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mov 0x08,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33368,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce332f0:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33306
    mov 0x18,r0
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mov.w r0,@(0x1c,r4)

LAB_ce33306:
    rts
    nop

LAB_ce3330a:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33330
    mov 0x18,r0
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r4)
    mov.w @(DAT_ce33350,pc),r0
    mov.b @(r0,r4),r3
    mova @(DAT_ce3336c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    tst r3,r3
    fmov fr3,@(r0,r4)

LAB_ce33330:
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3334e:
    #data 0x041c
DAT_ce33350:
    #data 0x01d2
    #align4

PTR_ce33354:
    #data loc_8c0511b4
PTR_ce33358:
    #data PTR_ce360d0
DAT_ce3335c:
    #data 0xc1555555
DAT_ce33360:
    #data 0x41555555
PTR_ce33364:
    #data loc_8c034e8c
PTR_ce33368:
    #data loc_8c08e2f8
DAT_ce3336c:
    #data 0x3ed55555

;=============================================

LAB_ce33370:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33388
    mov 0x18,r0
    mov.b @(r0,r5),r2
    add 0x01,r2
    mov.b r2,@(r0,r5)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r4)

LAB_ce33388:
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

LAB_ce333a6:
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
    bf LAB_ce333e6
    bsr FUN_ce32d8e
    mov r14,r4
    tst r0,r0
    bt LAB_ce333dc
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
    bra LAB_ce32e20
    mov.l @r15+,r14

LAB_ce333dc:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce33594
    mov.l @r15+,r14

LAB_ce333e6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce333ee:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce334a8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt/s LAB_ce3340a
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)

LAB_ce3340a:
    lds.l @r15+,PR
    mov.l @(PTR_ce334ac,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33412:
    mov r4,r3
    mov.l @(PTR_ce334b0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33424:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce334a0,pc),r4
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add r14,r4
    mov.l @(PTR_ce334b4,pc),r5
    add 0x01,r0
    mov.l @(PTR_ce334b8,pc),r3
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce334a2,pc),r0
    mov.b r0,@(0xa,r4)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce334a4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce3348e
    mov 0x02,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce334a6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3345e
    mova @(DAT_ce334bc,pc),r0
    bra LAB_ce33462
    fmov.s @r0,fr3

LAB_ce3345e:
    mova @(DAT_ce334c0,pc),r0
    fmov.s @r0,fr3

LAB_ce33462:
    mov 0x5C,r0
    mov.l @(PTR_ce334cc,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce334c4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x10,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce334c8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce33518
    mov.l @r15+,r14

LAB_ce3348e:
    mov.l @(PTR_ce334cc,pc),r2
    mov 0x16,r5
    mov 0x0F,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce334d0
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce334a0:
    #data 0x02a4
DAT_ce334a2:
    #data 0x00ff
DAT_ce334a4:
    #data 0x041c
DAT_ce334a6:
    #data 0x01d2
    #align4

PTR_ce334a8:
    #data loc_8c034dee
PTR_ce334ac:
    #data FUN_ce35222
PTR_ce334b0:
    #data PTR_ce360e4
PTR_ce334b4:
    #data DAT_ce35974
PTR_ce334b8:
    #data FUN_ce351a4
DAT_ce334bc:
    #data 0x40200000
DAT_ce334c0:
    #data 0xc0200000
DAT_ce334c4:
    #data 0x40892492
DAT_ce334c8:
    #data 0xbf4db6db
PTR_ce334cc:
    #data loc_8c034e8c

;=============================================

LAB_ce334d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce335f8,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce335fc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33512
    mov.w @(DAT_ce335e2,pc),r4
    mov 0x00,r0
    fldi0 fr4
    mov 0x00,r5
    add r14,r4
    mov.l @(PTR_ce33600,pc),r3
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
    mov.l @(PTR_ce33604,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33512:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33518:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce335f8,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce335fc,pc),r2
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
    mov.w @(DAT_ce335e4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3358e
    mov.w @(DAT_ce335e4,pc),r0
    mov.w @(DAT_ce335e2,pc),r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce33600,pc),r3
    add r14,r4
    fmov fr3,@(r0,r14)
    mov 0x00,r0
    mov r0,r5
    mov.b r0,@(0xb,r4)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33608,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3358e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33594:
    mov.w @(DAT_ce335e6,pc),r0
    mov.w @(DAT_ce335e2,pc),r6
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce33650
    add r4,r6
    mov.w @(DAT_ce335ea,pc),r0
    mov.w @(DAT_ce335e8,pc),r3
    mov.w @(r0,r4),r7
    and r3,r7
    extu.w r7,r2
    tst r2,r2
    bt LAB_ce33634
    mov.w @(DAT_ce335ec,pc),r0
    mov.w @(DAT_ce335ee,pc),r2
    mov.w @(r0,r4),r1
    extu.w r1,r1
    tst r2,r1
    bt LAB_ce335be
    bra LAB_ce3361c
    mov 0x07,r0

LAB_ce335be:
    mov.w @(DAT_ce335f0,pc),r3
    extu.w r7,r5
    tst r5,r3
    bt LAB_ce3360c
    mov.w @(DAT_ce335f2,pc),r1
    tst r5,r1
    bt LAB_ce335d2
    mov 0x04,r0
    bra LAB_ce33646
    mov.b r0,@(0x7,r4)

LAB_ce335d2:
    mov.w @(DAT_ce335f4,pc),r2
    tst r2,r5
    bt LAB_ce335dc
    bra LAB_ce335de
    mov 0x05,r0

LAB_ce335dc:
    mov 0x03,r0

LAB_ce335de:
    bra LAB_ce33646
    mov.b r0,@(0x7,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce335e2:
    #data 0x02a4
DAT_ce335e4:
    #data 0x041c
DAT_ce335e6:
    #data 0x0525
DAT_ce335e8:
    #data 0x3f60
DAT_ce335ea:
    #data 0x034a
DAT_ce335ec:
    #data 0x034e
DAT_ce335ee:
    #data 0x0360
DAT_ce335f0:
    #data 0x2000
DAT_ce335f2:
    #data 0x0800
DAT_ce335f4:
    #data 0x0400
    #align4

PTR_ce335f8:
    #data FUN_ce35222
PTR_ce335fc:
    #data loc_8c034dee
PTR_ce33600:
    #data loc_8c035162
PTR_ce33604:
    #data loc_8c051648
PTR_ce33608:
    #data loc_8c05176e

;=============================================

LAB_ce3360c:
    mov.w @(DAT_ce33712,pc),r2
    tst r5,r2
    bt LAB_ce33620
    mov.b @(0x7,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce3364c
    mov 0x01,r0

LAB_ce3361c:
    bra LAB_ce33646
    mov.b r0,@(0x7,r4)

LAB_ce33620:
    mov.w @(DAT_ce33714,pc),r3
    tst r3,r5
    bt LAB_ce33634
    mov.b @(0x7,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3364c
    mov 0x02,r0
    bra LAB_ce33646
    mov.b r0,@(0x7,r4)

LAB_ce33634:
    mov 0x19,r0
    mov.b @(r0,r6),r2
    tst r2,r2
    bf LAB_ce3364c
    mov.b @(0x7,r4),r0
    tst r0,r0
    bt LAB_ce3364c
    mov 0x00,r0
    mov.b r0,@(0x7,r4)

LAB_ce33646:
    mov 0x18,r0
    mov 0x00,r3
    mov.b r3,@(r0,r6)

LAB_ce3364c:
    rts
    nop

LAB_ce33650:
    mov.w @(DAT_ce33716,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce33720,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce33664:
    mov.w @(DAT_ce33718,pc),r0
    mov.w @(DAT_ce3371a,pc),r6
    mov.l @(r0,r4),r5
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    fmov.s @(r0,r5),fr4
    mova @(DAT_ce33724,pc),r0
    fsub fr3,fr4
    fmov.s @r0,fr3
    fcmp/gt fr4,fr3
    bt/s LAB_ce33684
    add r4,r6
    mova @(DAT_ce33728,pc),r0
    fmov.s @r0,fr2
    fcmp/gt fr2,fr4
    bf LAB_ce33688

LAB_ce33684:
    bra LAB_ce3369a
    mov 0x07,r0

LAB_ce33688:
    mova @(DAT_ce3372c,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fmov.s @(r0,r5),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bt LAB_ce3369e
    mov 0x04,r0

LAB_ce3369a:
    bra LAB_ce336aa
    mov.b r0,@(0x7,r4)

LAB_ce3369e:
    mov.b @(0x7,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce336b0
    mov 0x01,r0
    mov.b r0,@(0x7,r4)

LAB_ce336aa:
    mov 0x18,r0
    mov 0x00,r3
    mov.b r3,@(r0,r6)

LAB_ce336b0:
    rts
    nop

LAB_ce336b4:
    mov.w @(DAT_ce3371a,pc),r5
    mov 0x1B,r0
    add r4,r5
    mov.b @(r0,r5),r3
    add 0xFF,r3
    mov.b r3,@(r0,r5)
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce336da
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

LAB_ce336da:
    rts
    nop

LAB_ce336de:
    mov.b @(0x7,r4),r0
    mov.w @(DAT_ce3371a,pc),r5
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce336f4
    add r4,r5
    mov 0x02,r0
    mov.b r0,@(0x7,r4)
    mov 0x18,r0
    mov 0x00,r3
    mov.b r3,@(r0,r5)

LAB_ce336f4:
    rts
    nop

LAB_ce336f8:
    mov.w @(DAT_ce3371c,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33730,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33712:
    #data 0x0800
DAT_ce33714:
    #data 0x0400
DAT_ce33716:
    #data 0x01a3
DAT_ce33718:
    #data 0x020c
DAT_ce3371a:
    #data 0x02a4
DAT_ce3371c:
    #data 0x0364
    #align4

PTR_ce33720:
    #data PTR_ce360f0
DAT_ce33724:
    #data 0xc3200000
DAT_ce33728:
    #data 0x43200000
DAT_ce3372c:
    #data 0x42892492
PTR_ce33730:
    #data PTR_ce360fc

;=============================================

LAB_ce33734:
    mov.w @(DAT_ce3383a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce33836,pc),r4
    extu.b r0,r0
    mov.w @(DAT_ce33838,pc),r6
    cmp/eq 0x06,r0
    bf/s LAB_ce33754
    add r14,r4
    mov.w @(DAT_ce3383c,pc),r0
    mov 0x10,r3
    mov.b r6,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33754:
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
    mov.w @(DAT_ce3383e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33848,pc),r3
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
    mov.l @(PTR_ce3384c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33850,pc),r3
    mov 0x16,r5
    mov 0x11,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33840,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce337c0
    mov.l @(PTR_ce33854,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce337c0:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce337c6:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33842,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov.w @(DAT_ce33836,pc),r13
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33844,pc),r0
    add r14,r13
    mov.l @(PTR_ce33858,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33846,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3382c
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce33860,pc),r3
    add 0x01,r0
    mov.l @(PTR_ce3385c,pc),r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3383c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x04,r0
    mov.b r0,@(0xb,r13)
    mov.w @(DAT_ce33838,pc),r0
    mov.b r0,@(0xa,r13)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33864,pc),r0
    mov.l @(PTR_ce3386c,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33868,pc),r0
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

LAB_ce3382c:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33836:
    #data 0x02a4
DAT_ce33838:
    #data 0x00ff
DAT_ce3383a:
    #data 0x0255
DAT_ce3383c:
    #data 0x03f0
DAT_ce3383e:
    #data 0x01a1
DAT_ce33840:
    #data 0x01f9
DAT_ce33842:
    #data 0x03f8
DAT_ce33844:
    #data 0x0328
DAT_ce33846:
    #data 0x0141
    #align4

PTR_ce33848:
    #data loc_8c2896b0
PTR_ce3384c:
    #data loc_8c0db83e
PTR_ce33850:
    #data loc_8c034e8c
PTR_ce33854:
    #data loc_8c05115a
PTR_ce33858:
    #data loc_8c034dee
PTR_ce3385c:
    #data DAT_ce359d4
PTR_ce33860:
    #data FUN_ce351a4
DAT_ce33864:
    #data 0xc1555555
DAT_ce33868:
    #data 0x42d20000
PTR_ce3386c:
    #data loc_8c050834

;=============================================

LAB_ce33870:
    mov.w @(DAT_ce3399c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3399e,pc),r0
    mov.w @(DAT_ce3399a,pc),r13
    mov.l @(PTR_ce339a8,pc),r3
    mov.b r2,@(r0,r14)
    add r14,r13
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce3391e
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
    mov.w @(DAT_ce339a0,pc),r0
    mov r13,r5
    add 0x1E,r5
    mov.b r3,@(r0,r14)
    mov 0x06,r6
    mov.w @(DAT_ce339a2,pc),r0
    mov.l @(PTR_ce339ac,pc),r3
    mov.w r0,@(0x1e,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce339b0,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce339b4,pc),r1
    and 0x03,r0
    shll2 r0
    mov.l @(r0,r1),r3
    mov 0x1B,r0
    mov 0x01,r2
    mov.l r3,@(0x14,r13)
    mov.l @(PTR_ce339b8,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce339bc,pc),r2
    mov r12,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce339c0,pc),r13
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
    mov.l @(PTR_ce339c8,pc),r3
    mov.l @(PTR_ce339c4,pc),r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce339cc,pc),r2
    mov 0x16,r5
    mov r14,r4
    mov 0x12,r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3391e:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33928:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3399c,pc),r0
    mov 0x02,r3
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3399e,pc),r0
    mov.w @(DAT_ce3399a,pc),r13
    mov.l @(PTR_ce339a8,pc),r3
    mov.b r2,@(r0,r14)
    add r14,r13
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce339d0,pc),r3
    mov 0x05,r1
    mov.b @r3,r2
    extu.b r2,r2
    cmp/ge r1,r2
    bf/s LAB_ce3395e
    mov 0x00,r12
    mov r12,r0
    nop
    mov.w r0,@(0x1e,r13)

LAB_ce3395e:
    mov.w @(0x1e,r13),r0
    mov.l @(PTR_ce339cc,pc),r11
    tst r0,r0
    bf LAB_ce339d8
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x19,r0
    mov.b r12,@(r0,r13)
    mov.w @(DAT_ce339a4,pc),r0
    mov.l @(PTR_ce339d4,pc),r5
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce339a6,pc),r0
    mov.l @(PTR_ce339c8,pc),r3
    mov.b r12,@(r0,r14)
    add 0x01,r0
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x16,r5
    mov 0x21,r6
    jsr @r11
    mov r14,r4
    bra LAB_ce33a5e
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3399a:
    #data 0x02a4
DAT_ce3399c:
    #data 0x03f8
DAT_ce3399e:
    #data 0x0328
DAT_ce339a0:
    #data 0x0201
DAT_ce339a2:
    #data 0x00b4
DAT_ce339a4:
    #data 0x03f9
DAT_ce339a6:
    #data 0x0327
    #align4

PTR_ce339a8:
    #data FUN_ce35222
PTR_ce339ac:
    #data loc_8c0f047c
PTR_ce339b0:
    #data loc_8c03319e
PTR_ce339b4:
    #data PTR_ce36114
PTR_ce339b8:
    #data loc_8c05218a
PTR_ce339bc:
    #data loc_8c035162
PTR_ce339c0:
    #data loc_8c08e8e0
PTR_ce339c4:
    #data DAT_ce35a24
PTR_ce339c8:
    #data FUN_ce351a4
PTR_ce339cc:
    #data loc_8c034e8c
PTR_ce339d0:
    #data loc_8c2895f0
PTR_ce339d4:
    #data DAT_ce35a84

;=============================================

LAB_ce339d8:
    mov 0x1C,r0
    mov.b @(r0,r13),r2
    tst r2,r2
    bf LAB_ce33a0c
    bsr FUN_ce32d8e
    mov r14,r4
    tst r0,r0
    bt LAB_ce33a0c
    mov 0x18,r0
    mov 0x01,r4
    mov.b r4,@(r0,r13)
    mov r4,r3
    mov.w @(DAT_ce33ae0,pc),r0
    mov 0x16,r5
    mov 0x14,r6
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33ae2,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mov 0x19,r0
    mov.b r3,@(r0,r13)
    jsr @r11
    mov r14,r4

LAB_ce33a0c:
    mov 0x18,r0
    mov.b @(r0,r13),r3
    tst r3,r3
    bt LAB_ce33a30
    mov.l @(PTR_ce33af0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33a30
    mov 0x18,r0
    mov.b r12,@(r0,r13)
    mov 0x19,r0
    mov 0x16,r5
    mov.b r12,@(r0,r13)
    mov 0x12,r6
    jsr @r11
    mov r14,r4

LAB_ce33a30:
    bsr FUN_ce33c3c
    mov r14,r4
    mov.w @(DAT_ce33ae4,pc),r2
    mov r0,r4
    extu.b r0,r0
    cmp/eq r2,r0
    bt LAB_ce33a5e
    mov.w @(DAT_ce33ae6,pc),r5
    mov 0x22,r0
    mov.l @(PTR_ce33af4,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33ae8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33a5e
    mov.w @(DAT_ce33ae8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce33a5e:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33a6a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33af0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt/s LAB_ce33a86
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)

LAB_ce33a86:
    lds.l @r15+,PR
    mov.l @(PTR_ce33af8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33a8e:
    mov r4,r3
    mov.l @(PTR_ce33afc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33aa0:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r3
    mov.w @(DAT_ce33aea,pc),r4
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add r14,r4
    mov.l @(PTR_ce33b00,pc),r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33aec,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33ae4,pc),r0
    mov.l @(PTR_ce33b04,pc),r3
    mov.b r0,@(0xa,r4)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33ae8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce33b3c
    mov 0x02,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33ae0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33b0c
    mova @(DAT_ce33b08,pc),r0
    bra LAB_ce33b10
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33ae0:
    #data 0x01d2
DAT_ce33ae2:
    #data 0x0130
DAT_ce33ae4:
    #data 0x00ff
DAT_ce33ae6:
    #data 0x02bc
DAT_ce33ae8:
    #data 0x041c
DAT_ce33aea:
    #data 0x02a4
DAT_ce33aec:
    #data 0x0201
    #align4

PTR_ce33af0:
    #data loc_8c034dee
PTR_ce33af4:
    #data loc_8c033718
PTR_ce33af8:
    #data FUN_ce35222
PTR_ce33afc:
    #data PTR_ce36124
PTR_ce33b00:
    #data DAT_ce35ad4
PTR_ce33b04:
    #data FUN_ce351a4
DAT_ce33b08:
    #data 0x40200000

;=============================================

LAB_ce33b0c:
    mova @(DAT_ce33c18,pc),r0
    fmov.s @r0,fr3

LAB_ce33b10:
    mov 0x5C,r0
    mov.l @(PTR_ce33c24,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33c1c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x1A,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33c20,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce33b96
    mov.l @r15+,r14

LAB_ce33b3c:
    mov.l @(PTR_ce33c24,pc),r2
    mov 0x16,r5
    mov 0x19,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce33b4e
    mov.l @r15+,r14

LAB_ce33b4e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33c28,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce33c2c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33b90
    mov.w @(DAT_ce33c12,pc),r4
    mov 0x00,r0
    fldi0 fr4
    mov 0x00,r5
    add r14,r4
    mov.l @(PTR_ce33c30,pc),r3
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
    mov.l @(PTR_ce33c34,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33b90:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33b96:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33c28,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce33c2c,pc),r2
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
    mov.w @(DAT_ce33c14,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33c0c
    mov.w @(DAT_ce33c14,pc),r0
    mov.w @(DAT_ce33c12,pc),r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce33c30,pc),r3
    add r14,r4
    fmov fr3,@(r0,r14)
    mov 0x00,r0
    mov r0,r5
    mov.b r0,@(0xb,r4)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33c38,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33c0c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33c12:
    #data 0x02a4
DAT_ce33c14:
    #data 0x041c
    #align4

DAT_ce33c18:
    #data 0xc0200000
DAT_ce33c1c:
    #data 0x40892492
DAT_ce33c20:
    #data 0xbf4db6db
PTR_ce33c24:
    #data loc_8c034e8c
PTR_ce33c28:
    #data FUN_ce35222
PTR_ce33c2c:
    #data loc_8c034dee
PTR_ce33c30:
    #data loc_8c035162
PTR_ce33c34:
    #data loc_8c051648
PTR_ce33c38:
    #data loc_8c05176e

;=============================================

FUN_ce33c3c:
    mov.w @(DAT_ce33d6c,pc),r0
    mov.w @(DAT_ce33d6a,pc),r5
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce33c80
    add r4,r5
    mov 0x00,r0
    mov.w @(DAT_ce33d70,pc),r3
    mov.b r0,@(0xc,r5)
    mov.w @(DAT_ce33d6e,pc),r0
    mov.w @(r0,r4),r7
    extu.w r7,r6
    tst r6,r3
    bt/s LAB_ce33c60
    mov 0x60,r3
    mov.b @(0xc,r5),r0
    or 0x01,r0
    mov.b r0,@(0xc,r5)

LAB_ce33c60:
    tst r3,r6
    bt LAB_ce33c6a
    mov.b @(0xc,r5),r0
    or 0x02,r0
    mov.b r0,@(0xc,r5)

LAB_ce33c6a:
    mov.w @(DAT_ce33d72,pc),r0
    mov 0xF6,r2
    mov.w @(DAT_ce33d74,pc),r3
    mov.w @(r0,r4),r4
    mov.l @(PTR_ce33d80,pc),r0
    extu.w r4,r4
    and r3,r4
    shad r2,r4
    extu.w r4,r4
    rts
    mov.b @(r0,r4),r0

LAB_ce33c80:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33d76,pc),r1
    mov.l @(PTR_ce33d84,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce33c98:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33d78,pc),r0
    mov r4,r14
    mov.w @(DAT_ce33d6a,pc),r4
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce33d7a,pc),r0
    add r14,r4
    mov.l r3,@r15
    mov.l @(PTR_ce33d88,pc),r3
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

LAB_ce33ccc:
    mov 0x22,r0
    mov.w @(DAT_ce33d6a,pc),r5
    mov.b @(r0,r4),r6
    mov 0x1B,r0
    add r4,r5
    mov.b @(r0,r5),r3
    add 0xFF,r3
    mov.b r3,@(r0,r5)
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce33d00
    mov.l @(0x14,r5),r7
    mov.w @r7+,r0
    mov.b r0,@(0xc,r5)
    mov.w @(DAT_ce33d7c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce33cf8
    mov.w @r7+,r6
    neg r6,r0
    mov 0x1F,r6
    and r0,r6

LAB_ce33cf8:
    mov.w @r7+,r3
    mov 0x1B,r0
    mov.b r3,@(r0,r5)
    mov.l r7,@(0x14,r5)

LAB_ce33d00:
    rts
    mov r6,r0

LAB_ce33d04:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33d78,pc),r0
    mov r4,r14
    mov.w @(DAT_ce33d6a,pc),r4
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce33d7a,pc),r0
    add r14,r4
    mov.l r3,@r15
    mov.l @(PTR_ce33d88,pc),r3
    mov.b r0,@(0xc,r4)
    mov r14,r4
    mov.l @r15,r5
    add 0x34,r5
    jsr @r3
    add 0x34,r4
    extu.b r0,r4
    mov.w @(DAT_ce33d7e,pc),r0
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

LAB_ce33d40:
    add 0xFC,r15
    mov.w @(DAT_ce33d6a,pc),r3
    mov.l @(PTR_ce33d8c,pc),r0
    add r4,r3
    mov r3,r2
    mov.l r3,@r15
    mov.b @r2,r3
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    add 0x04,r15

LAB_ce33d58:
    mov r4,r3
    mov.l @(PTR_ce33d90,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33d6a:
    #data 0x02a4
DAT_ce33d6c:
    #data 0x0525
DAT_ce33d6e:
    #data 0x0348
DAT_ce33d70:
    #data 0x0300
DAT_ce33d72:
    #data 0x0340
DAT_ce33d74:
    #data 0x3c00
DAT_ce33d76:
    #data 0x01a3
DAT_ce33d78:
    #data 0x020c
DAT_ce33d7a:
    #data 0x00ff
DAT_ce33d7c:
    #data 0x01d2
DAT_ce33d7e:
    #data 0x00f0
    #align4

PTR_ce33d80:
    #data DAT_ce36130
PTR_ce33d84:
    #data PTR_ce36140
PTR_ce33d88:
    #data loc_8c03362c
PTR_ce33d8c:
    #data PTR_ce3614c
PTR_ce33d90:
    #data PTR_ce36158

;=============================================

LAB_ce33d94:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce33e82,pc),r4
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add r14,r4
    mov.l @(PTR_ce33e90,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33e84,pc),r0
    mov.b r0,@(0x4,r4)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33e94,pc),r2
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
    mov.w @(DAT_ce33e86,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce33e98,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33e88,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33e8a,pc),r0
    mov 0x39,r2
    mov.l @(PTR_ce33e9c,pc),r3
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
    mov.l @(PTR_ce33ea0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33ea4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce33e20:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33ea8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33e8c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33e48
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33e8c,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce33eac,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33e48:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33e4e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33ea8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33e68
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33eb0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33e68:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33e70:
    mov r4,r3
    mov.l @(PTR_ce33eb4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33e82:
    #data 0x02a4
DAT_ce33e84:
    #data 0x00ff
DAT_ce33e86:
    #data 0x041c
DAT_ce33e88:
    #data 0x01fc
DAT_ce33e8a:
    #data 0x01a1
DAT_ce33e8c:
    #data 0x0141
    #align4

PTR_ce33e90:
    #data loc_8c05218a
PTR_ce33e94:
    #data loc_8c035162
PTR_ce33e98:
    #data loc_8c056de4
PTR_ce33e9c:
    #data loc_8c2896b0
PTR_ce33ea0:
    #data loc_8c034e8c
PTR_ce33ea4:
    #data loc_8c05115a
PTR_ce33ea8:
    #data loc_8c034dee
PTR_ce33eac:
    #data loc_8c08bf48
PTR_ce33eb0:
    #data loc_8c051648
PTR_ce33eb4:
    #data PTR_ce36164

;=============================================

LAB_ce33eb8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33ff8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33ffc,pc),r2
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
    mov.w @(DAT_ce33fec,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce34000,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33fee,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33ff0,pc),r0
    mov 0x3A,r2
    mov.l @(PTR_ce34004,pc),r3
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
    mov.l @(PTR_ce34008,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3400c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce33f3c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34010,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33ff2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33f64
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33ff2,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce34014,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33f64:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33f6a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34010,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33f84
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce34018,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33f84:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33f8c:
    mov r4,r3
    mov.l @(PTR_ce3401c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33f9e:
    mov r4,r3
    mov.l @(PTR_ce34020,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33fb0:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33ff4,pc),r4
    mov.l r13,@-r15
    add r14,r4
    sts.l PR,@-r15
    mov.b @(0x8,r4),r0
    tst r0,r0
    bt LAB_ce34024
    mov 0xFF,r0
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce33ff6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce33fde
    mov 0x02,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce3420a
    mov.l @r15+,r14

LAB_ce33fde:
    mov 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce340f2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33fec:
    #data 0x041c
DAT_ce33fee:
    #data 0x01fc
DAT_ce33ff0:
    #data 0x01a1
DAT_ce33ff2:
    #data 0x0141
DAT_ce33ff4:
    #data 0x02a4
DAT_ce33ff6:
    #data 0x01f9
    #align4

PTR_ce33ff8:
    #data loc_8c05218a
PTR_ce33ffc:
    #data loc_8c035162
PTR_ce34000:
    #data loc_8c056de4
PTR_ce34004:
    #data loc_8c2896b0
PTR_ce34008:
    #data loc_8c034e8c
PTR_ce3400c:
    #data loc_8c05115a
PTR_ce34010:
    #data loc_8c034dee
PTR_ce34014:
    #data loc_8c08c850
PTR_ce34018:
    #data loc_8c051648
PTR_ce3401c:
    #data PTR_ce36170
PTR_ce34020:
    #data PTR_ce3617c

;=============================================

LAB_ce34024:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce3410c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34110,pc),r2
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
    mov.w @(DAT_ce34104,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce34114,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34106,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34108,pc),r0
    mov 0x3A,r2
    mov.l @(PTR_ce34118,pc),r3
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
    mov.l @(PTR_ce3411c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34120,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce340a2
    mov.l @r15+,r14

LAB_ce340a2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34124,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3410a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce340ca
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3410a,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce34128,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce340ca:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce340d0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34124,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce340ea
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3412c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce340ea:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce340f2:
    mov r4,r3
    mov.l @(PTR_ce34130,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34104:
    #data 0x041c
DAT_ce34106:
    #data 0x01fc
DAT_ce34108:
    #data 0x01a1
DAT_ce3410a:
    #data 0x0141
    #align4

PTR_ce3410c:
    #data loc_8c05218a
PTR_ce34110:
    #data loc_8c035162
PTR_ce34114:
    #data loc_8c056de4
PTR_ce34118:
    #data loc_8c2896b0
PTR_ce3411c:
    #data loc_8c034e8c
PTR_ce34120:
    #data loc_8c05115a
PTR_ce34124:
    #data loc_8c034dee
PTR_ce34128:
    #data loc_8c08ce7c
PTR_ce3412c:
    #data loc_8c051648
PTR_ce34130:
    #data PTR_ce36188

;=============================================

LAB_ce34134:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce34228,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3422c,pc),r2
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
    mov.w @(DAT_ce3421c,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce34230,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3421e,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34220,pc),r0
    mov 0x48,r2
    mov.l @(PTR_ce34234,pc),r3
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
    mov.l @(PTR_ce34238,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3423c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce341b8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce34222,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.l @(PTR_ce34240,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34224,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce341e0
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    mov.l @r15,r3
    mov.b r0,@(0x9,r3)

LAB_ce341e0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce341e8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34240,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34202
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce34244,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34202:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3420a:
    mov r4,r3
    mov.l @(PTR_ce34248,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3421c:
    #data 0x041c
DAT_ce3421e:
    #data 0x01fc
DAT_ce34220:
    #data 0x01a1
DAT_ce34222:
    #data 0x02a4
DAT_ce34224:
    #data 0x0141
    #align4

PTR_ce34228:
    #data loc_8c05218a
PTR_ce3422c:
    #data loc_8c035162
PTR_ce34230:
    #data loc_8c056de4
PTR_ce34234:
    #data loc_8c2896b0
PTR_ce34238:
    #data loc_8c034e8c
PTR_ce3423c:
    #data loc_8c05115a
PTR_ce34240:
    #data loc_8c034dee
PTR_ce34244:
    #data loc_8c051648
PTR_ce34248:
    #data PTR_ce36194

;=============================================

LAB_ce3424c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce34354,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34358,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce3435c,pc),r0
    fldi0 fr2
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x05,r5
    mov.l @(DAT_ce34360,pc),r1
    fdiv fr4,fr3
    mov.l @(PTR_ce34364,pc),r3
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
    mov.w @(DAT_ce3434c,pc),r0
    mov 0x48,r2
    mov 0x00,r4
    mov.l @(PTR_ce34368,pc),r3
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
    mov.l @(PTR_ce3436c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce342cc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3434e,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.l @(PTR_ce34370,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34374,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce34350,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce342fa
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    mov.l @r15,r3
    mov.b r0,@(0x9,r3)

LAB_ce342fa:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34302:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34370,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce34374,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3432c
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce34378,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3432c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34332:
    mov.w @(DAT_ce34352,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3437c,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3434c:
    #data 0x01a1
DAT_ce3434e:
    #data 0x02a4
DAT_ce34350:
    #data 0x0141
DAT_ce34352:
    #data 0x0364
    #align4

PTR_ce34354:
    #data loc_8c05218a
PTR_ce34358:
    #data loc_8c035162
DAT_ce3435c:
    #data 0x41000000
DAT_ce34360:
    #data 0x42800000
PTR_ce34364:
    #data loc_8c056de4
PTR_ce34368:
    #data loc_8c2896b0
PTR_ce3436c:
    #data loc_8c034e8c
PTR_ce34370:
    #data FUN_ce322ba
PTR_ce34374:
    #data loc_8c034dee
PTR_ce34378:
    #data loc_8c05176e
PTR_ce3437c:
    #data PTR_ce361a0

;=============================================

LAB_ce34380:
    mov.w @(DAT_ce344a0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce3449c,pc),r4
    extu.b r0,r0
    mov.w @(DAT_ce3449e,pc),r5
    cmp/eq 0x06,r0
    bf/s LAB_ce343a0
    add r14,r4
    mov.w @(DAT_ce344a2,pc),r0
    mov 0x10,r3
    mov.b r5,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce343a0:
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
    mov.l @(PTR_ce344b0,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce344b4,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce344a4,pc),r0
    mov 0x46,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce344b8,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce344a0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bt LAB_ce3440e
    mov.l @(PTR_ce344bc,pc),r1
    mov 0x00,r5
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce344bc,pc),r3
    mov 0x02,r5
    jsr @r3
    mov r14,r4

LAB_ce3440e:
    mov.l @(PTR_ce344c0,pc),r2
    mov 0x16,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce344a6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce34430
    mov.w @(DAT_ce344a8,pc),r0
    mov.l @(PTR_ce344c4,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce34430:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce34436:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce344aa,pc),r0
    mov r4,r14
    mov.w @(DAT_ce3449c,pc),r3
    mov 0x02,r2
    add r14,r3
    mov.l r3,@r15
    mov 0x05,r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce344ac,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce344a0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3445e
    bra LAB_ce34460
    mov 0x02,r2

LAB_ce3445e:
    mov 0x00,r2

LAB_ce34460:
    mov.w @(DAT_ce344ae,pc),r0
    mov.l @(PTR_ce344c8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3450e
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce344cc,pc),r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce344a2,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x06,r0
    mov.l @r15,r3
    mov.b r0,@(0xb,r3)
    bsr FUN_ce351a4
    mov r14,r4
    mov.w @(DAT_ce344a6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce344d0
    mov 0x16,r5
    bra LAB_ce344d2
    mov 0x01,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3449c:
    #data 0x02a4
DAT_ce3449e:
    #data 0x00ff
DAT_ce344a0:
    #data 0x0255
DAT_ce344a2:
    #data 0x03f0
DAT_ce344a4:
    #data 0x01a1
DAT_ce344a6:
    #data 0x01f9
DAT_ce344a8:
    #data 0x041c
DAT_ce344aa:
    #data 0x03f8
DAT_ce344ac:
    #data 0x0328
DAT_ce344ae:
    #data 0x03f1
    #align4

PTR_ce344b0:
    #data loc_8c05218a
PTR_ce344b4:
    #data loc_8c035162
PTR_ce344b8:
    #data loc_8c2896b0
PTR_ce344bc:
    #data loc_8c0db83e
PTR_ce344c0:
    #data loc_8c034e8c
PTR_ce344c4:
    #data loc_8c05115a
PTR_ce344c8:
    #data loc_8c034dee
PTR_ce344cc:
    #data DAT_ce35514

;=============================================

LAB_ce344d0:
    mov 0x02,r6

LAB_ce344d2:
    mov.l @(PTR_ce345fc,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x2,r14),r0
    tst r0,r0
    bf/s LAB_ce344e4
    mov 0x0D,r5
    bra LAB_ce344e6
    mov 0x03,r6

LAB_ce344e4:
    mov 0x04,r6

LAB_ce344e6:
    mov.l @(PTR_ce34600,pc),r2
    jsr @r2
    mov r14,r4
    mova @(DAT_ce34604,pc),r0
    mov.l @(PTR_ce3460c,pc),r3
    fmov.s @r0,fr3
    mov 0x04,r0
    mov r15,r5
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce34608,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    mov 0x01,r6
    fmov fr3,@(r0,r15)
    mov 0x0C,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce3450e:
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34516:
    mov.w @(DAT_ce345f6,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.w @(DAT_ce345f4,pc),r5
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce345f8,pc),r0
    add r4,r5
    mov.b r2,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x00,r0
    mov.b r0,@(0xa,r5)

LAB_ce34530:
    mov.w @(DAT_ce345f6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce345f8,pc),r0
    mov.l @(PTR_ce34610,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce345fa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3456a
    mov.b @(0x6,r14),r0
    mov 0x2D,r5
    mov.l @(PTR_ce34614,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34618,pc),r2
    mov 0x1A,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3456a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34570:
    mov.w @(DAT_ce345f6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce345f8,pc),r0
    mov.l @(PTR_ce34610,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce345fa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce345a0
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3461c,pc),r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    bra FUN_ce351a4
    mov.l @r15+,r14

LAB_ce345a0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce345a6:
    mov.w @(DAT_ce345f6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce345f8,pc),r0
    mov.b r2,@(r0,r14)
    bsr FUN_ce35222
    mov r14,r4
    mov.l @(PTR_ce34610,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce345fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce345ee
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce34620,pc),r3
    add 0x01,r0
    jsr @r3
    mov.b r0,@(0x6,r14)
    mov 0x04,r0
    mov.l @(PTR_ce34624,pc),r5
    mov.w r0,@(0x1e,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    bsr FUN_ce351a4
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34618,pc),r2
    mov 0x09,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce345ee:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce345f4:
    #data 0x02a4
DAT_ce345f6:
    #data 0x03f8
DAT_ce345f8:
    #data 0x0328
DAT_ce345fa:
    #data 0x0141
    #align4

PTR_ce345fc:
    #data loc_8c034e8c
PTR_ce34600:
    #data loc_8c02fec4
DAT_ce34604:
    #data 0xc1555555
DAT_ce34608:
    #data 0x42d20000
PTR_ce3460c:
    #data loc_8c050834
PTR_ce34610:
    #data loc_8c034dee
PTR_ce34614:
    #data loc_8c042008
PTR_ce34618:
    #data loc_8c0d8840
PTR_ce3461c:
    #data DAT_ce35b34
PTR_ce34620:
    #data loc_8c02fd26
PTR_ce34624:
    #data DAT_ce3558c

;=============================================

LAB_ce34628:
    mov.w @(DAT_ce34760,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x22,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add r14,r1
    mov.w @(DAT_ce34762,pc),r0
    mov.l @(PTR_ce3476c,pc),r3
    mov.b r2,@(r0,r14)
    mov.l @r3,r0
    mov.l @(PTR_ce34770,pc),r2
    mov.l @(0x1c,r0),r0
    and 0x01,r0
    mov.b r0,@r1
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce34764,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3466e
    mov.b @(0x6,r14),r0
    mov 0x03,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce35254
    mov r14,r4
    mov 0x04,r5
    bsr FUN_ce35254
    mov r14,r4
    mov 0x05,r5
    bsr FUN_ce35254
    mov r14,r4

LAB_ce3466e:
    bsr FUN_ce34990
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce35222
    mov.l @r15+,r14

LAB_ce3467a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce34760,pc),r0
    mov 0x02,r2
    mov.w @(DAT_ce34766,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov 0x05,r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce34762,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34770,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3470a
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
    mov.l @(PTR_ce34774,pc),r5
    mov.w r0,@(0x1c,r14)
    bsr FUN_ce351a4
    mov r14,r4
    mov.w @(DAT_ce34768,pc),r0
    mov 0x44,r2
    mov.l @(PTR_ce34778,pc),r3
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
    mov.l @(PTR_ce3477c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34780,pc),r3
    mov 0x48,r5
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x16,r5
    mov 0x03,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce34784,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3470a:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34714:
    mov.w @(DAT_ce34760,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce34762,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce34750
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce34774,pc),r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce351a4
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34784,pc),r2
    mov 0x04,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce34750:
    mov.w @(0x1c,r14),r0
    tst 0x01,r0
    bt/s LAB_ce34788
    mov r14,r4
    mov.w @(DAT_ce34768,pc),r0
    mov 0x4C,r2
    bra LAB_ce3478e
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34760:
    #data 0x03f8
DAT_ce34762:
    #data 0x0328
DAT_ce34764:
    #data 0x0141
DAT_ce34766:
    #data 0x02a4
DAT_ce34768:
    #data 0x01a1
    #align4

PTR_ce3476c:
    #data loc_8c26823c
PTR_ce34770:
    #data loc_8c034dee
PTR_ce34774:
    #data DAT_ce3568c
PTR_ce34778:
    #data loc_8c2896b0
PTR_ce3477c:
    #data loc_8c08d690
PTR_ce34780:
    #data loc_8c04223a
PTR_ce34784:
    #data loc_8c034e8c

;=============================================

LAB_ce34788:
    mov.w @(DAT_ce34898,pc),r0
    mov 0x44,r1
    mov.b r1,@(r0,r14)

LAB_ce3478e:
    mov.l @(PTR_ce348ac,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce3489a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce347ba
    mov.l @(PTR_ce348b0,pc),r13
    mov 0x00,r3
    mov 0x03,r5
    mov.b r3,@(r0,r14)
    jsr @r13
    mov r14,r4
    mov 0x04,r5
    jsr @r13
    mov r14,r4
    mov 0x09,r5
    jsr @r13
    mov r14,r4
    mov 0x0A,r5
    jsr @r13
    mov r14,r4

LAB_ce347ba:
    bsr FUN_ce34a0c
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra FUN_ce35222
    mov.l @r15+,r14

LAB_ce347c8:
    mov.w @(DAT_ce3489c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3489e,pc),r0
    mov.l @(PTR_ce348ac,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34804
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce348a0,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce348a2,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce34804:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce35222
    mov.l @r15+,r14

LAB_ce3480c:
    mov r4,r3
    mov.l @(PTR_ce348b4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3481e:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce348a4,pc),r4
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add r14,r4
    mov.l @(PTR_ce348b8,pc),r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce348a6,pc),r0
    mov.b r0,@(0xa,r4)
    bsr FUN_ce351a4
    mov r14,r4
    mov.w @(DAT_ce348a8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce34886
    mov 0x02,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce348aa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34856
    mova @(DAT_ce348bc,pc),r0
    bra LAB_ce3485a
    fmov.s @r0,fr3

LAB_ce34856:
    mova @(DAT_ce348c0,pc),r0
    fmov.s @r0,fr3

LAB_ce3485a:
    mov 0x5C,r0
    mov.l @(PTR_ce348cc,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce348c4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x06,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce348c8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce34916
    mov.l @r15+,r14

LAB_ce34886:
    mov.l @(PTR_ce348cc,pc),r2
    mov 0x16,r5
    mov 0x05,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce348d0
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34898:
    #data 0x01a1
DAT_ce3489a:
    #data 0x0141
DAT_ce3489c:
    #data 0x03f8
DAT_ce3489e:
    #data 0x0328
DAT_ce348a0:
    #data 0x03f9
DAT_ce348a2:
    #data 0x0327
DAT_ce348a4:
    #data 0x02a4
DAT_ce348a6:
    #data 0x00ff
DAT_ce348a8:
    #data 0x041c
DAT_ce348aa:
    #data 0x01d2
    #align4

PTR_ce348ac:
    #data loc_8c034dee
PTR_ce348b0:
    #data loc_8c08da80
PTR_ce348b4:
    #data PTR_ce361cc
PTR_ce348b8:
    #data DAT_ce3578c
DAT_ce348bc:
    #data 0x40200000
DAT_ce348c0:
    #data 0xc0200000
DAT_ce348c4:
    #data 0x40892492
DAT_ce348c8:
    #data 0xbf4db6db
PTR_ce348cc:
    #data loc_8c034e8c

;=============================================

LAB_ce348d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce35222
    mov r4,r14
    mov.l @(PTR_ce349f4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34910
    mov.w @(DAT_ce349ee,pc),r4
    mov 0x00,r0
    fldi0 fr4
    mov 0x00,r5
    add r14,r4
    mov.l @(PTR_ce349f8,pc),r3
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
    mov.l @(PTR_ce349fc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34910:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34916:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce35222
    mov r4,r14
    mov.l @(PTR_ce349f4,pc),r2
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
    mov.w @(DAT_ce349f0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3498a
    mov.w @(DAT_ce349f0,pc),r0
    mov.w @(DAT_ce349ee,pc),r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce349f8,pc),r3
    add r14,r4
    fmov fr3,@(r0,r14)
    mov 0x00,r0
    mov r0,r5
    mov.b r0,@(0xb,r4)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34a00,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3498a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce34990:
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
    bf/s LAB_ce349de
    mov 0x00,r13
    mov.l @(PTR_ce34a08,pc),r12
    mov.l @(PTR_ce34a04,pc),r11

LAB_ce349ae:
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll r0
    shll r0
    mov.w @(r0,r12),r13
    exts.w r13,r0
    cmp/eq 0xFF,r0
    bt LAB_ce349de
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
    bf LAB_ce349ae

LAB_ce349de:
    mov r13,r0
    nop
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce349ee:
    #data 0x02a4
DAT_ce349f0:
    #data 0x041c
    #align4

PTR_ce349f4:
    #data loc_8c034dee
PTR_ce349f8:
    #data loc_8c035162
PTR_ce349fc:
    #data loc_8c051648
PTR_ce34a00:
    #data loc_8c05176e
PTR_ce34a04:
    #data loc_8c0d8840
PTR_ce34a08:
    #data DAT_ce361d8

;=============================================

FUN_ce34a0c:
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
    bt/s LAB_ce34a54
    mov 0x00,r13
    mov.l @(PTR_ce34b50,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce34a88
    mov.w @(DAT_ce34b48,pc),r4
    mov 0x01,r3
    add r14,r4
    mov.b @(0xc,r4),r0
    add 0x01,r0
    mov.b r0,@(0xc,r4)
    mov.b @(0xc,r4),r0
    extu.b r0,r0
    cmp/ge r3,r0
    bf LAB_ce34a88
    mov 0x00,r0
    mov.b r0,@(0xc,r4)
    mov.w @(0x1e,r14),r0
    add 0xFC,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1e,r14),r0
    cmp/pl r0
    bt LAB_ce34a88

LAB_ce34a54:
    mov.l @(PTR_ce34b58,pc),r12
    mov.l @(PTR_ce34b54,pc),r11

LAB_ce34a58:
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll r0
    shll r0
    mov.w @(r0,r12),r13
    exts.w r13,r0
    cmp/eq 0xFF,r0
    bt LAB_ce34a88
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
    bt LAB_ce34a58

LAB_ce34a88:
    mov r13,r0
    nop
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34a98:
    mov r4,r3
    mov.l @(PTR_ce34b5c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34aaa:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce34b60,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34b64,pc),r2
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
    mov 0x15,r5
    mov.w @(DAT_ce34b4a,pc),r0
    mov 0x0C,r6
    mov.l @(PTR_ce34b68,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34b6c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce34af4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34b70,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34b4c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34b20
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce34b4c,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce34b4e,pc),r0
    lds.l @r15+,PR
    mov.l @(PTR_ce34b74,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce34b20:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce34b26:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34b70,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34b40
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce34b78,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34b40:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34b48:
    #data 0x02a4
DAT_ce34b4a:
    #data 0x041c
DAT_ce34b4c:
    #data 0x0141
DAT_ce34b4e:
    #data 0x02be
    #align4

PTR_ce34b50:
    #data loc_8c055d54
PTR_ce34b54:
    #data loc_8c08da80
PTR_ce34b58:
    #data DAT_ce3629a
PTR_ce34b5c:
    #data PTR_ce36374
PTR_ce34b60:
    #data loc_8c05218a
PTR_ce34b64:
    #data loc_8c035162
PTR_ce34b68:
    #data loc_8c034e8c
PTR_ce34b6c:
    #data loc_8c05115a
PTR_ce34b70:
    #data loc_8c034dee
PTR_ce34b74:
    #data loc_8c0da85c
PTR_ce34b78:
    #data loc_8c051648

;=============================================

LAB_ce34b7c:
    mov r4,r3
    mov.l @(PTR_ce34cb8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34b8e:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34cb0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34cbc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34cb2,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bf LAB_ce34bb6
    mova @(DAT_ce34cc0,pc),r0
    bra LAB_ce34bba
    fmov.s @r0,fr3

LAB_ce34bb6:
    mova @(DAT_ce34cc4,pc),r0
    fmov.s @r0,fr3

LAB_ce34bba:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x4F,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34cc8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34ccc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34cb4,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34cd0,pc),r3
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
    mov.l @(PTR_ce34cd4,pc),r2
    mov r4,r6
    mov 0x14,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34c08:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34cd8,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce34cdc,pc),r3
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
    bt LAB_ce34c70
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce34cd4,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34ce0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34c70:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce34c76:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34cd8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34c90
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce34ce4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34c90:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce34c98:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce34cb0,pc),r1
    mov.l @(PTR_ce34ce8,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34cb0:
    #data 0x01f9
DAT_ce34cb2:
    #data 0x0130
DAT_ce34cb4:
    #data 0x01a1
    #align4

PTR_ce34cb8:
    #data PTR_ce36380
PTR_ce34cbc:
    #data loc_8c035162
DAT_ce34cc0:
    #data 0xc1f00000
DAT_ce34cc4:
    #data 0x41f00000
DAT_ce34cc8:
    #data 0x3e892492
DAT_ce34ccc:
    #data 0xbf4db6db
PTR_ce34cd0:
    #data loc_8c2896b0
PTR_ce34cd4:
    #data loc_8c034e8c
PTR_ce34cd8:
    #data loc_8c034dee
PTR_ce34cdc:
    #data loc_8c052ce2
PTR_ce34ce0:
    #data loc_8c0511b4
PTR_ce34ce4:
    #data loc_8c051854
PTR_ce34ce8:
    #data PTR_ce3638c

;=============================================

LAB_ce34cec:
    mov.w @(DAT_ce34e14,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce34e16,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce34d38
    mov.w @(DAT_ce34e18,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34d38
    mov.w @(DAT_ce34e1a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34d38
    mov.l @(PTR_ce34e28,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34d38
    mov r0,r4
    mov.w @(DAT_ce34e1c,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34d38:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34d40:
    rts
    mov 0x00,r0

LAB_ce34d44:
    mov.w @(DAT_ce34e14,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce34e1e,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce34d9c
    mov.w @(DAT_ce34e18,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34d9c
    mov.w @(DAT_ce34e1a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34d9c
    mova @(DAT_ce34e2c,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce34d9c
    mov.l @(PTR_ce34e28,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34d9c
    mov r0,r4
    mov.w @(DAT_ce34e1c,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34d9c:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34da4:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce34e1c,pc),r1
    mov.l @(PTR_ce34e30,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce34dbc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bt LAB_ce34de0
    mov.w @(DAT_ce34e20,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce34e22,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce34de0:
    mova @(DAT_ce34e34,pc),r0
    mov.l @(PTR_ce34e3c,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34e38,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34e24,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce34e40,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34e44,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34e14:
    #data 0x01fa
DAT_ce34e16:
    #data 0x0c00
DAT_ce34e18:
    #data 0x01fe
DAT_ce34e1a:
    #data 0x01a3
DAT_ce34e1c:
    #data 0x01f7
DAT_ce34e1e:
    #data 0x1c00
DAT_ce34e20:
    #data 0x01d2
DAT_ce34e22:
    #data 0x0130
DAT_ce34e24:
    #data 0x01a0
    #align4

PTR_ce34e28:
    #data loc_8c045790
DAT_ce34e2c:
    #data 0x43092492
PTR_ce34e30:
    #data PTR_ce3639c
DAT_ce34e34:
    #data 0xc292aaaa
DAT_ce34e38:
    #data 0x42d64924
PTR_ce34e3c:
    #data loc_8c103660
PTR_ce34e40:
    #data loc_8c056f2a
PTR_ce34e44:
    #data loc_8c034e8c

;=============================================

LAB_ce34e48:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34f80,pc),r0
    mov r4,r14
    fldi0 fr4
    fmov.s fr4,@r15
    mov.b @(r0,r14),r3
    cmp/pz r3
    bf LAB_ce34e7e
    mova @(DAT_ce34f90,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce34f82,pc),r0
    fmov.s fr3,@r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34e70
    fmov.s @r15,fr3
    fneg fr3
    fmov.s fr3,@r15

LAB_ce34e70:
    mov.w @(DAT_ce34f80,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34e7e
    fmov.s @r15,fr3
    fneg fr3
    fmov.s fr3,@r15

LAB_ce34e7e:
    fmov.s @r15,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce34f94,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bt LAB_ce34eb0
    mov.w @(DAT_ce34f82,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce34f84,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce34eb0:
    mova @(DAT_ce34f98,pc),r0
    mov.l @(PTR_ce34fa0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34f9c,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34f86,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce34fa4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34fa8,pc),r2
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34ee4:
    mov.w @(DAT_ce34f88,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34fac,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34f02:
    mov r4,r3
    mov.l @(PTR_ce34fb0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34f14:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34fb4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34f8a,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce34f60
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov.w @(DAT_ce34f82,pc),r1
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34f8a,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x20,r3
    mov.w @(DAT_ce34f8c,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x1E,r0
    mov.b @(r0,r14),r0
    add r4,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce34f8e,pc),r0
    mov.b r3,@(r0,r4)
    add 0x55,r0
    mov.l @(PTR_ce34fb8,pc),r3
    jsr @r3
    mov.b r2,@(r0,r4)
    lds.l @r15+,PR
    mov.l @(PTR_ce34fbc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34f60:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34f66:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34fb4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34fc4
    lds.l @r15+,PR
    mov.l @(PTR_ce34fc0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34f80:
    #data 0x01d3
DAT_ce34f82:
    #data 0x01d2
DAT_ce34f84:
    #data 0x0130
DAT_ce34f86:
    #data 0x01a0
DAT_ce34f88:
    #data 0x01ea
DAT_ce34f8a:
    #data 0x0141
DAT_ce34f8c:
    #data 0x01c8
DAT_ce34f8e:
    #data 0x01a1
    #align4

DAT_ce34f90:
    #data 0xc0d55555
DAT_ce34f94:
    #data 0xbf092492
DAT_ce34f98:
    #data 0xc292aaaa
DAT_ce34f9c:
    #data 0x42d64924
PTR_ce34fa0:
    #data loc_8c103660
PTR_ce34fa4:
    #data loc_8c056f2a
PTR_ce34fa8:
    #data loc_8c034e8c
PTR_ce34fac:
    #data PTR_ce363a4
PTR_ce34fb0:
    #data PTR_ce363ac
PTR_ce34fb4:
    #data loc_8c034dee
PTR_ce34fb8:
    #data loc_8c02fd26
PTR_ce34fbc:
    #data loc_8c0423fc
PTR_ce34fc0:
    #data loc_8c051648

;=============================================

LAB_ce34fc4:
    mov.w @(DAT_ce350ca,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34ffe
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce350cc,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce350ce,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mova @(DAT_ce350d8,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce350ce,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bf LAB_ce34ff6
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce34ffc
    fsub fr4,fr3

LAB_ce34ff6:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3

LAB_ce34ffc:
    fmov fr3,@(r0,r14)

LAB_ce34ffe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce35004:
    mov r4,r3
    mov.l @(PTR_ce350dc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce35016:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce350e0,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce350e4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce350ca,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3506c
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x02,r2
    mov.w @(DAT_ce350cc,pc),r1
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce350d0,pc),r0
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
    mov.w @(DAT_ce350d2,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3506c
    lds.l @r15+,PR
    mov.l @(PTR_ce350e8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3506c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce35072:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce350e0,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce350e4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce35092
    lds.l @r15+,PR
    mov.l @(PTR_ce350e8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce35092:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce35098:
    mov.w @(DAT_ce350d0,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce350ec,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce350a6:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce350d4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce350c0
    mov 0x07,r5
    cmp/eq 0x01,r0
    bt LAB_ce350c0
    cmp/eq 0x02,r0
    bf LAB_ce350c4

LAB_ce350c0:
    mov.w @(DAT_ce350d6,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce350c4:
    mov.l @(PTR_ce350f0,pc),r2
    jmp @r2
    mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce350ca:
    #data 0x0141
DAT_ce350cc:
    #data 0x01d2
DAT_ce350ce:
    #data 0x0130
DAT_ce350d0:
    #data 0x01c8
DAT_ce350d2:
    #data 0x0150
DAT_ce350d4:
    #data 0x04c9
DAT_ce350d6:
    #data 0x01e9
    #align4

DAT_ce350d8:
    #data 0x41d55555
PTR_ce350dc:
    #data PTR_ce363b4
PTR_ce350e0:
    #data FUN_ce322ba
PTR_ce350e4:
    #data loc_8c034dee
PTR_ce350e8:
    #data loc_8c05176e
PTR_ce350ec:
    #data loc_8c04cc1c
PTR_ce350f0:
    #data loc_8c0530d8

;=============================================

LAB_ce350f4:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce351ee,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3510e
    mov 0x07,r5
    cmp/eq 0x01,r0
    bt LAB_ce3510e
    cmp/eq 0x02,r0
    bf LAB_ce35112

LAB_ce3510e:
    mov.w @(DAT_ce351f0,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce35112:
    mov.l @(PTR_ce351f4,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce35118:
    mov.w @(DAT_ce351f2,pc),r6
    mov 0x00,r5
    add r4,r6
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce351ee,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3514a
    mov 0x02,r7
    cmp/eq 0x01,r0
    bt LAB_ce3513e
    cmp/eq 0x02,r0
    bt LAB_ce3514a
    bra LAB_ce35158
    nop

LAB_ce3513e:
    mov.w @(DAT_ce351f0,pc),r0
    mov 0x01,r3
    mov.b r7,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce35158
    mov.b r3,@(r0,r4)

LAB_ce3514a:
    mov.w @(DAT_ce351f0,pc),r0
    mov.b r5,@(r0,r4)
    add 0x10,r0
    mov.b r5,@(r0,r4)
    mov r7,r0
    nop
    mov.b r0,@(0x2,r6)

LAB_ce35158:
    mov.l @(PTR_ce351f4,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce3515e:
    mov.w @(DAT_ce351f2,pc),r7
    mov 0x00,r5
    add r4,r7
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce351ee,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce35184
    mov 0x02,r6
    cmp/eq 0x01,r0
    bt LAB_ce35194
    cmp/eq 0x02,r0
    bt LAB_ce35194
    bra LAB_ce3519e
    nop

LAB_ce35184:
    mov.w @(DAT_ce351f0,pc),r0
    mov.b r5,@(r0,r4)
    add 0x10,r0
    mov.b r5,@(r0,r4)
    mov r6,r0
    nop
    bra LAB_ce3519e
    mov.b r0,@(0x2,r7)

LAB_ce35194:
    mov.w @(DAT_ce351f0,pc),r0
    mov 0x01,r3
    mov.b r6,@(r0,r4)
    add 0xBA,r0
    mov.b r3,@(r0,r4)

LAB_ce3519e:
    mov.l @(PTR_ce351f4,pc),r3
    jmp @r3
    mov 0x15,r5

;=============================================

FUN_ce351a4:
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
    mov.w @(DAT_ce351f2,pc),r13
    sts.l PR,@-r15
    mov.l @(PTR_ce351f8,pc),r9
    add r12,r13

LAB_ce351c0:
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
    bf LAB_ce351fc
    bra LAB_ce35200
    mov r11,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce351ee:
    #data 0x04c9
DAT_ce351f0:
    #data 0x01e9
DAT_ce351f2:
    #data 0x02a4
    #align4

PTR_ce351f4:
    #data loc_8c0530d8
PTR_ce351f8:
    #data loc_8c03544c

;=============================================

LAB_ce351fc:
    mov r10,r0
    nop

LAB_ce35200:
    mov.b r0,@(0xf,r13)
    mov.l @(0x4,r14),r3
    mov.b @(0xe,r13),r0
    shll2 r3
    shll r3
    tst r0,r0
    add r3,r14
    bt LAB_ce351c0
    mov.l r14,@(0x10,r13)
    lds.l @r15+,PR
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce35222:
    mov.l r14,@-r15
    mov.w @(DAT_ce35318,pc),r14
    mov.l r13,@-r15
    add r4,r14
    sts.l PR,@-r15
    mov.b @(0xe,r14),r0
    add 0xFF,r0
    mov.b r0,@(0xe,r14)
    extu.b r0,r0
    tst r0,r0
    bf/s LAB_ce35248
    mov 0x01,r13
    mov.b @(0xf,r14),r0
    tst r0,r0
    bt/s LAB_ce35244
    mov.l @(0x10,r14),r5
    mov 0x00,r13

LAB_ce35244:
    bsr FUN_ce351a4
    nop

LAB_ce35248:
    mov r13,r0
    nop
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce35254:
    mov.l r14,@-r15
    add 0xFC,r15
    mov 0x25,r2
    mov r5,r14
    add r4,r2
    mov.l @(PTR_ce35324,pc),r3
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
    mov.l @(PTR_ce35328,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3528a:
    mov.w @(DAT_ce35318,pc),r5
    add r4,r5
    mov.w @(0x1e,r5),r0
    tst r0,r0
    bt LAB_ce352c6
    mov.w @(DAT_ce3531a,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bf LAB_ce352b2
    mov 0x00,r6
    mov r6,r0
    nop
    mov.w r0,@(0x1e,r5)
    mov.b r0,@(0xb,r5)
    mov.w @(DAT_ce3531c,pc),r0
    mov.b r0,@(0xa,r5)
    mov.w @(DAT_ce3531e,pc),r0
    bra LAB_ce352c6
    mov.b r6,@(r0,r4)

LAB_ce352b2:
    mov.w @(0x1e,r5),r0
    add 0xF8,r0
    mov.w r0,@(0x1e,r5)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce352c2
    mov 0x01,r0
    mov.w r0,@(0x1e,r5)

LAB_ce352c2:
    rts
    mov 0x01,r0

LAB_ce352c6:
    mov 0x00,r0
    rts
    nop

LAB_ce352cc:
    mov.w @(DAT_ce35318,pc),r5
    add r4,r5
    mov.b @(0x8,r5),r0
    tst r0,r0
    bt LAB_ce352ec
    mov 0x00,r0
    mov.b r0,@(0x8,r5)
    mov.b @(0xd,r5),r0
    add 0x01,r0
    mov.b r0,@(0xd,r5)
    mov.w @(DAT_ce35320,pc),r0
    mov.b @(r0,r4),r3
    add 0x06,r3
    mov.b r3,@(r0,r4)
    rts
    mov 0x01,r0

LAB_ce352ec:
    mov 0x00,r0
    rts
    nop

LAB_ce352f2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF8,r15
    mov.w @(DAT_ce35318,pc),r14
    mov 0x00,r5
    mov.w @(DAT_ce35322,pc),r6
    add r4,r14
    mov.l @(PTR_ce3532c,pc),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce35318:
    #data 0x02a4
DAT_ce3531a:
    #data 0x01e9
DAT_ce3531c:
    #data 0x00ff
DAT_ce3531e:
    #data 0x0201
DAT_ce35320:
    #data 0x01a0
DAT_ce35322:
    #data 0x0080
    #align4

PTR_ce35324:
    #data DAT_ce35444
PTR_ce35328:
    #data loc_8c03544c
PTR_ce3532c:
    #data loc_8c129728

;=============================================

FUN_ce35330:
    mov.l r13,@-r15
    mov 0x08,r1
    mov.l @(PTR_ce3536c,pc),r13
    mov 0x00,r6

LAB_ce35338:
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
    bt LAB_ce35360
    mov.b @(0x1,r7),r0
    extu.b r5,r3
    extu.b r0,r0
    cmp/eq r3,r0
    bf LAB_ce35360
    mov 0x01,r0
    rts
    mov.l @r15+,r13

LAB_ce35360:
    add 0x04,r6
    cmp/hi r1,r6
    bf LAB_ce35338
    mov 0x00,r0
    rts
    mov.l @r15+,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

PTR_ce3536c:
    #data loc_8c2895f0
DAT_ce35370:
    #data 0x0201
    #data 0x0201
DAT_ce35374:
    #data 0x02ff
    #data 0x02ff
DAT_ce35378:
    #data 0xffff
    #data 0xffff
DAT_ce3537c:
    #data 0x0201
    #data 0x0201
DAT_ce35380:
    #data 0x02ff
    #data 0x02ff
DAT_ce35384:
    #data 0xffff
    #data 0xffff
DAT_ce35388:
    #data 0x0201
    #data 0x0201
DAT_ce3538c:
    #data 0x02ff
    #data 0x02ff
DAT_ce35390:
    #data 0xffff
    #data 0xffff
DAT_ce35394:
    #data 0x0201
    #data 0x0201
DAT_ce35398:
    #data 0x02ff
    #data 0x02ff
DAT_ce3539c:
    #data 0xffff
    #data 0xffff
DAT_ce353a0:
    #data 0x0201
    #data 0x0200
DAT_ce353a4:
    #data 0x02ff
    #data 0x0201
DAT_ce353a8:
    #data 0xffff
    #data 0xffff
DAT_ce353ac:
    #data 0x0201
    #data 0x0201
DAT_ce353b0:
    #data 0x02ff
    #data 0x02ff
DAT_ce353b4:
    #data 0xffff
    #data 0xffff
DAT_ce353b8:
    #data 0x0058
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0100
DAT_ce353c2:
    #data 0x0003
    #data 0x0000
    #data 0x0002
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce353d2:
    #data 0x0003
    #data 0x8100
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce353e2:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce353f2:
    #data 0x0003
    #data 0x8100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce35402:
    #data 0x0003
    #data 0x0000
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce35412:
    #data 0x0003
    #data 0x1000
    #data 0x000c
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce35422:
    #data 0x0003
    #data 0x1000
    #data 0x000c
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0060
DAT_ce35432:
    #data 0x0003
    #data 0x1000
    #data 0x000c
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
    #data 0x0000
    
DAT_ce35444:
    #data 0x01
DAT_ce35445:
    #data 0x02
DAT_ce35446:
    #data 0x38
DAT_ce35447:
    #data 0x01
    #align4
    
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
    #data 0x0146
    #data 0x0001
    #data 0x0000
    #data 0x0101
    #data 0x013d
    #data 0x0001
    #data 0x0000
    #data 0x0201
    #data 0x014c
    #data 0x0001
    #data 0x0000
DAT_ce35474:
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
DAT_ce354a4:
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
DAT_ce354cc:
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
DAT_ce35514:
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
DAT_ce3558c:
    #data 0x0000
    #data 0x0143
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013a
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0144
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013b
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0145
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013c
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0146
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013d
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0147
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013e
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0148
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013f
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0149
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x0140
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x014a
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x0141
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x014b
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x0142
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x014a
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x0141
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0149
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x0140
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0148
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013f
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0147
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013e
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0146
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013d
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0145
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013c
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0144
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013b
    #data 0xffe1
    #data 0xffff
DAT_ce3568c:
    #data 0x0000
    #data 0x0143
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013a
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0144
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013b
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0145
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013c
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0146
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013d
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0147
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013e
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0148
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013f
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0149
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x0140
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x014a
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x0141
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x014b
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x0142
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x014a
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x0141
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0149
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x0140
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0148
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013f
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0147
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013e
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0146
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013d
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0145
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013c
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0144
    #data 0x0001
    #data 0x0000
    #data 0x0103
    #data 0x013b
    #data 0xffe1
    #data 0xffff
DAT_ce3578c:
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
DAT_ce3581c:
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
DAT_ce3586c:
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
DAT_ce358fc:
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
DAT_ce35974:
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
DAT_ce359d4:
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
DAT_ce35a24:
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
DAT_ce35a84:
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
DAT_ce35ad4:
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
DAT_ce35b34:
    #data 0x0000
    #data 0x0102
    #data 0x0001
    #data 0x0000
DAT_ce35b3c:
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
DAT_ce35cb4:
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
DAT_ce35cdc:
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
DAT_ce35cf4:
    #data 0x0007
    #data 0x0001
    #data 0x0005
    #data 0x0001
    #data 0x0002
    #data 0x7fff
DAT_ce35d00:
    #data 0x0004
    #data 0x0001
    #data 0x0004
    #data 0x0001
    #data 0x0005
    #data 0x0001
    #data 0x0001
    #data 0x7fff
DAT_ce35d10:
    #data 0x0002
    #data 0x0020
    #data 0x0005
    #data 0x0001
    #data 0x0007
    #data 0x0001
    #data 0x0001
    #data 0x7fff
DAT_ce35d20:
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
DAT_ce35d56:
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
DAT_ce35d7a:
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
DAT_ce35d9e:
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

PTR_ce35dc4:
    #data LAB_ce306b0
PTR_ce35dc8:
    #data LAB_ce3001c
PTR_ce35dcc:
    #data LAB_ce30706
PTR_ce35dd0:
    #data LAB_ce30ce2
PTR_ce35dd4:
    #data LAB_ce31210
PTR_ce35dd8:
    #data LAB_ce31394
PTR_ce35ddc:
    #data LAB_ce31518
PTR_ce35de0:
    #data LAB_ce31702
PTR_ce35de4:
    #data LAB_ce31ece
PTR_ce35de8:
    #data LAB_ce34c98
PTR_ce35dec:
    #data LAB_ce34da4
PTR_ce35df0:
    #data LAB_ce34ee4
PTR_ce35df4:
    #data LAB_ce35098
PTR_ce35df8:
    #data LAB_ce305bc
PTR_ce35dfc:
    #data LAB_ce34b7c
PTR_ce35e00:
    #data LAB_ce31114
PTR_ce35e04:
    #data LAB_ce350a6
PTR_ce35e08:
    #data LAB_ce350f4
PTR_ce35e0c:
    #data LAB_ce35118
PTR_ce35e10:
    #data LAB_ce3515e
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce35e20:
    #data LAB_ce352f2
PTR_ce35e24:
    #data LAB_ce3528a
PTR_ce35e28:
    #data LAB_ce352cc
    #data 0x00000000
    #data 0x00000000
DAT_ce35e34:
    #data 0x0004
    #data 0xfffc
    #data 0x0004
    #data 0xfffc
    #align4

PTR_ce35e3c:
    #data LAB_ce3071a
PTR_ce35e40:
    #data LAB_ce30a6e
PTR_ce35e44:
    #data LAB_ce30a96
PTR_ce35e48:
    #data LAB_ce3071a
PTR_ce35e4c:
    #data LAB_ce30d04
PTR_ce35e50:
    #data LAB_ce3102e
PTR_ce35e54:
    #data LAB_ce31018
PTR_ce35e58:
    #data LAB_ce30cf6
PTR_ce35e5c:
    #data LAB_ce31222
PTR_ce35e60:
    #data LAB_ce31276
PTR_ce35e64:
    #data LAB_ce312f6
PTR_ce35e68:
    #data LAB_ce313a6
PTR_ce35e6c:
    #data LAB_ce313fa
PTR_ce35e70:
    #data LAB_ce3147a
PTR_ce35e74:
    #data LAB_ce3152a
PTR_ce35e78:
    #data LAB_ce315b4
PTR_ce35e7c:
    #data LAB_ce315f6
PTR_ce35e80:
    #data LAB_ce31694
PTR_ce35e84:
    #data FUN_ce316c4
PTR_ce35e88:
    #data FUN_ce316e2
PTR_ce35e8c:
    #data LAB_ce3171c
PTR_ce35e90:
    #data LAB_ce3173a
PTR_ce35e94:
    #data LAB_ce31cf4
PTR_ce35e98:
    #data LAB_ce31d5c
PTR_ce35e9c:
    #data LAB_ce31cf4
PTR_ce35ea0:
    #data LAB_ce31d5c
PTR_ce35ea4:
    #data LAB_ce31d5c
PTR_ce35ea8:
    #data LAB_ce31766
PTR_ce35eac:
    #data LAB_ce317c2
PTR_ce35eb0:
    #data LAB_ce3190e
PTR_ce35eb4:
    #data LAB_ce31a02
PTR_ce35eb8:
    #data LAB_ce31b38
PTR_ce35ebc:
    #data LAB_ce31c12
PTR_ce35ec0:
    #data LAB_ce31778
PTR_ce35ec4:
    #data LAB_ce317bc
PTR_ce35ec8:
    #data LAB_ce31808
PTR_ce35ecc:
    #data LAB_ce3182c
PTR_ce35ed0:
    #data LAB_ce31878
PTR_ce35ed4:
    #data LAB_ce318bc
PTR_ce35ed8:
    #data LAB_ce318e0
PTR_ce35edc:
    #data LAB_ce31904
PTR_ce35ee0:
    #data LAB_ce31938
PTR_ce35ee4:
    #data LAB_ce31974
PTR_ce35ee8:
    #data LAB_ce319de
PTR_ce35eec:
    #data LAB_ce319fc
DAT_ce35ef0:
    #data 0x0909
    #data 0x0909
    #data 0x0909
    #data 0x0909
    #data 0x0909
    #data 0x0a09
    #data 0x0a0a
    #data 0x0a0a
    #data 0x0a0a
    #data 0x0a0a
    #data 0x0b0a
    #data 0x0b0b
    #data 0x0b0b
    #data 0x0b0b
    #data 0x0b0b
    #data 0x0b0b
    #data 0x0246
    #data 0x0247
    #data 0x0248
    #data 0x0000
    #align4

PTR_ce35f18:
    #data LAB_ce31a3c
PTR_ce35f1c:
    #data LAB_ce31aa4
PTR_ce35f20:
    #data LAB_ce31ace
PTR_ce35f24:
    #data LAB_ce31afa
PTR_ce35f28:
    #data LAB_ce31b32
PTR_ce35f2c:
    #data LAB_ce31b84
PTR_ce35f30:
    #data LAB_ce31be6
PTR_ce35f34:
    #data LAB_ce31c0c
PTR_ce35f38:
    #data LAB_ce31c2c
PTR_ce35f3c:
    #data LAB_ce31cc8
PTR_ce35f40:
    #data LAB_ce31cee
PTR_ce35f44:
    #data LAB_ce31d06
PTR_ce35f48:
    #data LAB_ce31d56
PTR_ce35f4c:
    #data LAB_ce31d6e
PTR_ce35f50:
    #data LAB_ce31dc4
PTR_ce35f54:
    #data LAB_ce31dee
DAT_ce35f58:
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

PTR_ce35f78:
    #data LAB_ce31ee2
PTR_ce35f7c:
    #data LAB_ce31ee2
PTR_ce35f80:
    #data LAB_ce32348
PTR_ce35f84:
    #data LAB_ce329e6
PTR_ce35f88:
    #data LAB_ce32aa4
PTR_ce35f8c:
    #data LAB_ce336f8
PTR_ce35f90:
    #data LAB_ce33d40
PTR_ce35f94:
    #data LAB_ce34332
PTR_ce35f98:
    #data LAB_ce32914
PTR_ce35f9c:
    #data LAB_ce34332
PTR_ce35fa0:
    #data LAB_ce34332
PTR_ce35fa4:
    #data LAB_ce34332
PTR_ce35fa8:
    #data LAB_ce34a98
PTR_ce35fac:
    #data LAB_ce31ef4
PTR_ce35fb0:
    #data LAB_ce32038
PTR_ce35fb4:
    #data LAB_ce3216c
PTR_ce35fb8:
    #data LAB_ce31f06
PTR_ce35fbc:
    #data LAB_ce31fcc
PTR_ce35fc0:
    #data LAB_ce32012
PTR_ce35fc4:
    #data LAB_ce32088
PTR_ce35fc8:
    #data LAB_ce32100
PTR_ce35fcc:
    #data LAB_ce32146
PTR_ce35fd0:
    #data LAB_ce321bc
PTR_ce35fd4:
    #data LAB_ce3223c
PTR_ce35fd8:
    #data LAB_ce32286
DAT_ce35fdc:
    #data 0x0000
    #data 0xfffc
DAT_ce35fe0:
    #data 0x0000
    #data 0x0007
    #data 0x0000
    #data 0xfff8
    #data 0x0000
    #data 0x000b
DAT_ce35fec:
    #data 0x0000
    #data 0xfff9
DAT_ce35ff0:
    #data 0x0000
    #data 0x0009
    #data 0x0000
    #data 0xfff6
    #data 0x0000
    #data 0x000b
DAT_ce35ffc:
    #data 0x0034
    #data 0x0038
DAT_ce36000:
    #data 0x0033
    #data 0x0037
    #align4

PTR_ce36004:
    #data LAB_ce3235a
PTR_ce36008:
    #data LAB_ce32686
PTR_ce3600c:
    #data LAB_ce3236c
PTR_ce36010:
    #data LAB_ce324dc
PTR_ce36014:
    #data LAB_ce32520
PTR_ce36018:
    #data LAB_ce32564
PTR_ce3601c:
    #data LAB_ce325a8
PTR_ce36020:
    #data LAB_ce32618
PTR_ce36024:
    #data FUN_ce32664
PTR_ce36028:
    #data LAB_ce32698
PTR_ce3602c:
    #data LAB_ce327c6
PTR_ce36030:
    #data LAB_ce327f8
PTR_ce36034:
    #data LAB_ce3283c
PTR_ce36038:
    #data LAB_ce328bc
PTR_ce3603c:
    #data LAB_ce32926
PTR_ce36040:
    #data LAB_ce3299c
PTR_ce36044:
    #data LAB_ce32a34
PTR_ce36048:
    #data LAB_ce32a82
PTR_ce3604c:
    #data LAB_ce32abe
PTR_ce36050:
    #data LAB_ce32b4c
PTR_ce36054:
    #data LAB_ce32c08
PTR_ce36058:
    #data LAB_ce32d00
PTR_ce3605c:
    #data LAB_ce333ee
PTR_ce36060:
    #data LAB_ce33412
PTR_ce36064:
    #data DAT_ce35cdc
PTR_ce36068:
    #data DAT_ce35cf4
PTR_ce3606c:
    #data DAT_ce35d00
PTR_ce36070:
    #data DAT_ce35d10
PTR_ce36074:
    #data LAB_ce32dc0
PTR_ce36078:
    #data LAB_ce32e9c
PTR_ce3607c:
    #data LAB_ce32f0a
PTR_ce36080:
    #data LAB_ce32f8c
PTR_ce36084:
    #data LAB_ce32fa0
PTR_ce36088:
    #data LAB_ce32fb4
PTR_ce3608c:
    #data LAB_ce32e20
PTR_ce36090:
    #data LAB_ce33288
PTR_ce36094:
    #data LAB_ce32fc8
PTR_ce36098:
    #data LAB_ce33002
PTR_ce3609c:
    #data LAB_ce3319e
PTR_ce360a0:
    #data LAB_ce33214
PTR_ce360a4:
    #data LAB_ce33274
PTR_ce360a8:
    #data LAB_ce3304a
PTR_ce360ac:
    #data LAB_ce330c2
PTR_ce360b0:
    #data LAB_ce3319e
PTR_ce360b4:
    #data LAB_ce33214
PTR_ce360b8:
    #data LAB_ce33274
PTR_ce360bc:
    #data LAB_ce3310a
PTR_ce360c0:
    #data LAB_ce33156
PTR_ce360c4:
    #data LAB_ce3319e
PTR_ce360c8:
    #data LAB_ce33214
PTR_ce360cc:
    #data LAB_ce33274
PTR_ce360d0:
    #data LAB_ce3329c
PTR_ce360d4:
    #data LAB_ce332f0
PTR_ce360d8:
    #data LAB_ce3330a
PTR_ce360dc:
    #data LAB_ce33370
PTR_ce360e0:
    #data LAB_ce333a6
PTR_ce360e4:
    #data LAB_ce33424
PTR_ce360e8:
    #data LAB_ce334d0
PTR_ce360ec:
    #data LAB_ce33518
PTR_ce360f0:
    #data LAB_ce33664
PTR_ce360f4:
    #data LAB_ce336b4
PTR_ce360f8:
    #data LAB_ce336de
PTR_ce360fc:
    #data LAB_ce33734
PTR_ce36100:
    #data LAB_ce337c6
PTR_ce36104:
    #data LAB_ce33870
PTR_ce36108:
    #data LAB_ce33928
PTR_ce3610c:
    #data LAB_ce33a6a
PTR_ce36110:
    #data LAB_ce33a8e
PTR_ce36114:
    #data DAT_ce35d20
PTR_ce36118:
    #data DAT_ce35d56
PTR_ce3611c:
    #data DAT_ce35d7a
PTR_ce36120:
    #data DAT_ce35d9e
PTR_ce36124:
    #data LAB_ce33aa0
PTR_ce36128:
    #data LAB_ce33b4e
PTR_ce3612c:
    #data LAB_ce33b96
DAT_ce36130:
    #data 0x08ff
    #data 0x0818
    #data 0x0c10
    #data 0x0c14
    #data 0x0400
    #data 0x041c
    #data 0x0400
    #data 0x041c
    #align4

PTR_ce36140:
    #data LAB_ce33c98
PTR_ce36144:
    #data LAB_ce33ccc
PTR_ce36148:
    #data LAB_ce33d04
PTR_ce3614c:
    #data LAB_ce33d58
PTR_ce36150:
    #data LAB_ce33e70
PTR_ce36154:
    #data LAB_ce33f8c
PTR_ce36158:
    #data LAB_ce33d94
PTR_ce3615c:
    #data LAB_ce33e20
PTR_ce36160:
    #data FUN_ce33e4e
PTR_ce36164:
    #data LAB_ce33eb8
PTR_ce36168:
    #data LAB_ce33f3c
PTR_ce3616c:
    #data FUN_ce33f6a
PTR_ce36170:
    #data LAB_ce33f9e
PTR_ce36174:
    #data LAB_ce340f2
PTR_ce36178:
    #data LAB_ce3420a
PTR_ce3617c:
    #data LAB_ce33fb0
PTR_ce36180:
    #data LAB_ce340a2
PTR_ce36184:
    #data FUN_ce340d0
PTR_ce36188:
    #data LAB_ce34134
PTR_ce3618c:
    #data LAB_ce341b8
PTR_ce36190:
    #data FUN_ce341e8
PTR_ce36194:
    #data LAB_ce3424c
PTR_ce36198:
    #data LAB_ce342cc
PTR_ce3619c:
    #data LAB_ce34302
PTR_ce361a0:
    #data LAB_ce34380
PTR_ce361a4:
    #data LAB_ce34436
PTR_ce361a8:
    #data LAB_ce34516
PTR_ce361ac:
    #data LAB_ce34530
PTR_ce361b0:
    #data LAB_ce34570
PTR_ce361b4:
    #data LAB_ce345a6
PTR_ce361b8:
    #data LAB_ce34628
PTR_ce361bc:
    #data LAB_ce3467a
PTR_ce361c0:
    #data LAB_ce34714
PTR_ce361c4:
    #data LAB_ce347c8
PTR_ce361c8:
    #data LAB_ce3480c
PTR_ce361cc:
    #data LAB_ce3481e
PTR_ce361d0:
    #data LAB_ce348d0
PTR_ce361d4:
    #data LAB_ce34916
DAT_ce361d8:
    #data 0x000e
DAT_ce361da:
    #data 0x0003
    #data 0x000f
    #data 0x0003
    #data 0x0016
    #data 0x0003
    #data 0x0017
    #data 0x0003
    #data 0x0018
    #data 0x0003
    #data 0x0019
    #data 0x0003
    #data 0x000b
    #data 0x0003
    #data 0x0011
    #data 0x0003
    #data 0x0013
    #data 0x0003
    #data 0x000c
    #data 0x0003
    #data 0x000d
    #data 0x0003
    #data 0x0014
    #data 0x0003
    #data 0x0012
    #data 0x0003
    #data 0x0015
    #data 0x0003
    #data 0x0010
    #data 0x0003
    #data 0x000a
    #data 0x0003
    #data 0x000e
    #data 0x0003
    #data 0x000f
    #data 0x0003
    #data 0x0016
    #data 0x0003
    #data 0x0017
    #data 0x0003
    #data 0x0018
    #data 0x0003
    #data 0x0019
    #data 0x0003
    #data 0x000b
    #data 0x0003
    #data 0x0011
    #data 0x0003
    #data 0x0013
    #data 0x0003
    #data 0x000c
    #data 0x0003
    #data 0x000d
    #data 0x0003
    #data 0x0014
    #data 0x0003
    #data 0x0012
    #data 0x0003
    #data 0x0015
    #data 0x0003
    #data 0x0010
    #data 0x0003
    #data 0x000a
    #data 0x0003
    #data 0x000e
    #data 0x0003
    #data 0x000f
    #data 0x0003
    #data 0x0016
    #data 0x0003
    #data 0x0017
    #data 0x0003
    #data 0x0018
    #data 0x0003
    #data 0x0019
    #data 0x0003
    #data 0x000b
    #data 0x0003
    #data 0x0011
    #data 0x0003
    #data 0x0013
    #data 0x0003
    #data 0x000c
    #data 0x0003
    #data 0x000d
    #data 0x0003
    #data 0x0014
    #data 0x0003
    #data 0x0012
    #data 0x0003
    #data 0x0015
    #data 0x0003
    #data 0x0010
    #data 0x0003
    #data 0x000a
    #data 0x0003
    #data 0xffff
DAT_ce3629a:
    #data 0x0000
DAT_ce3629c:
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

PTR_ce36374:
    #data LAB_ce34aaa
PTR_ce36378:
    #data LAB_ce34af4
PTR_ce3637c:
    #data FUN_ce34b26
PTR_ce36380:
    #data LAB_ce34b8e
PTR_ce36384:
    #data LAB_ce34c08
PTR_ce36388:
    #data FUN_ce34c76
PTR_ce3638c:
    #data LAB_ce34cec
PTR_ce36390:
    #data LAB_ce34d40
PTR_ce36394:
    #data LAB_ce34d44
PTR_ce36398:
    #data LAB_ce34cec
PTR_ce3639c:
    #data LAB_ce34dbc
PTR_ce363a0:
    #data LAB_ce34e48
PTR_ce363a4:
    #data LAB_ce34f02
PTR_ce363a8:
    #data LAB_ce35004
PTR_ce363ac:
    #data LAB_ce34f14
PTR_ce363b0:
    #data LAB_ce34f66
PTR_ce363b4:
    #data LAB_ce35016
PTR_ce363b8:
    #data LAB_ce35072
