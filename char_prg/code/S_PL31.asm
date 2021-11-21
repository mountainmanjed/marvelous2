;╔══════════════════════════════════════════╗
;║ S_PL31 : Spiral (Rita Wayword) Program   ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c0423fc 0x8C0423FC
#symbol loc_8c0424a6 0x8C0424A6
#symbol loc_8c0424fe 0x8C0424FE
#symbol loc_8c045790 0x8C045790
#symbol loc_8c0457e0 0x8C0457E0
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
#symbol loc_8c050962 0x8C050962
#symbol loc_8c050ea4 0x8C050EA4
#symbol loc_8c05115a 0x8C05115A
#symbol loc_8c0511b4 0x8C0511B4
#symbol loc_8c0511e2 0x8C0511E2
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c0517be 0x8C0517BE
#symbol loc_8c051854 0x8C051854
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c0522e0 0x8C0522E0
#symbol loc_8c0523d8 0x8C0523D8
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
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c0599f4 0x8C0599F4
#symbol loc_8c0a6d1c 0x8C0A6D1C
#symbol loc_8c0a7724 0x8C0A7724
#symbol loc_8c0e803c 0x8C0E803C
#symbol loc_8c0e8090 0x8C0E8090
#symbol loc_8c0f047c 0x8C0F047C
#symbol loc_8c0fdb4e 0x8C0FDB4E
#symbol loc_8c103660 0x8C103660
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300d8,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300dc,pc),r7
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
    mov r4,r14
    mov.w @(DAT_ce300da,pc),r4
    mov 0x16,r0
    sts.l PR,@-r15
    add r14,r4
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3003a
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d2

LAB_ce3003a:
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d2
    mov.l @(PTR_ce300e8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d2
    mov.l @(PTR_ce300ec,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d2
    bsr FUN_ce3035a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d2
    bsr FUN_ce30484
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d2
    bsr FUN_ce303b0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d2
    bsr FUN_ce30430
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d2
    bsr FUN_ce300f8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d2
    bsr FUN_ce30188
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d2
    bsr FUN_ce3024e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d2
    bsr FUN_ce302f4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d2
    bsr FUN_ce304d8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d2
    bsr FUN_ce30518
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d2
    mov.l @(PTR_ce300f0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300f4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300d2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300d8:
    #data 0x0428
DAT_ce300da:
    #data 0x02a4
    #align4

PTR_ce300dc:
    #data PTR_ce33cc0
PTR_ce300e0:
    #data loc_8c054508
PTR_ce300e4:
    #data loc_8c054b34
PTR_ce300e8:
    #data loc_8c05496c
PTR_ce300ec:
    #data loc_8c054d04
PTR_ce300f0:
    #data loc_8c053e00
PTR_ce300f4:
    #data loc_8c0542e0

;=============================================

FUN_ce300f8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce301ae,pc),r13
    sts.l PR,@-r15
    mov.l @(PTR_ce301bc,pc),r5
    add r14,r13
    mov.l @(PTR_ce301c0,pc),r3
    mov.w @(DAT_ce301b0,pc),r6
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30152
    mov 0x00,r12
    mov r12,r5
    bra LAB_ce30128
    mov r13,r4

LAB_ce3011e:
    mov.b @r4,r2
    tst r2,r2
    bt/s LAB_ce30128
    add 0x01,r4
    add 0x01,r5

LAB_ce30128:
    mov r13,r3
    add 0x06,r3
    cmp/hs r3,r4
    bf LAB_ce3011e
    mov r5,r0
    nop
    cmp/eq 0x06,r0
    bt LAB_ce30152
    mov.w @(DAT_ce301b2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3015c
    mov.w @(DAT_ce301b4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3015c
    mov.w @(DAT_ce301b6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30156

LAB_ce30152:
    bra LAB_ce3017e
    mov 0x00,r0

LAB_ce30156:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3015c:
    mov.w @(DAT_ce301b0,pc),r5
    mov.l @(PTR_ce301c4,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov r12,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301b8,pc),r0
    mov.l @(PTR_ce301c8,pc),r3
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0

LAB_ce3017e:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30188:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce301ae,pc),r13
    sts.l PR,@-r15
    mov.l @(PTR_ce301cc,pc),r5
    add r14,r13
    mov.l @(PTR_ce301c0,pc),r3
    mov.w @(DAT_ce301ba,pc),r6
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30204
    mov 0x00,r12
    mov r12,r5
    bra LAB_ce301da
    mov r13,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301ae:
    #data 0x02a4
DAT_ce301b0:
    #data 0x036c
DAT_ce301b2:
    #data 0x01f9
DAT_ce301b4:
    #data 0x01fc
DAT_ce301b6:
    #data 0x01d4
DAT_ce301b8:
    #data 0x01e9
DAT_ce301ba:
    #data 0x0374
    #align4

PTR_ce301bc:
    #data DAT_ce33c2c
PTR_ce301c0:
    #data loc_8c054e58
PTR_ce301c4:
    #data loc_8c055c3a
PTR_ce301c8:
    #data loc_8c0530d8
PTR_ce301cc:
    #data DAT_ce33c40

;=============================================

LAB_ce301d0:
    mov.b @r4,r2
    tst r2,r2
    bf/s LAB_ce301da
    add 0x01,r4
    add 0x01,r5

LAB_ce301da:
    mov r13,r3
    add 0x06,r3
    cmp/hs r3,r4
    bf LAB_ce301d0
    mov r5,r0
    nop
    cmp/eq 0x06,r0
    bt LAB_ce30204
    mov.w @(DAT_ce302d4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3020e
    mov.w @(DAT_ce302d6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3020e
    mov.w @(DAT_ce302d8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30208

LAB_ce30204:
    bra LAB_ce30244
    mov 0x00,r0

LAB_ce30208:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3020e:
    mov.w @(DAT_ce302da,pc),r5
    mov.l @(PTR_ce302e4,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce302dc,pc),r0
    mov r0,r3
    add 0x5B,r3
    add r14,r3
    mov.b @(r0,r14),r2
    mov.b @r3,r3
    shll r3
    add r3,r2
    mov.b r2,@(r0,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302de,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce302e8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0

LAB_ce30244:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3024e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce302ec,pc),r5
    mov.w @(DAT_ce302e0,pc),r6
    mov.l @(PTR_ce302f0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30292
    mov.w @(DAT_ce302d4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30278
    mov.w @(DAT_ce302e2,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x20,r0
    bf LAB_ce30292

LAB_ce30278:
    mov.w @(DAT_ce302d4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce302a0
    mov.w @(DAT_ce302d6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce302a0
    mov.w @(DAT_ce302d8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3029a

LAB_ce30292:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3029a:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce302a0:
    mov.w @(DAT_ce302e0,pc),r5
    mov.l @(PTR_ce302e4,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov.w @(DAT_ce302dc,pc),r0
    mov.b @(r0,r14),r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x02,r3
    mov.w @(DAT_ce302de,pc),r0
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce302e8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce302d4:
    #data 0x01f9
DAT_ce302d6:
    #data 0x01fc
DAT_ce302d8:
    #data 0x01d4
DAT_ce302da:
    #data 0x0374
DAT_ce302dc:
    #data 0x01a3
DAT_ce302de:
    #data 0x01e9
DAT_ce302e0:
    #data 0x037c
DAT_ce302e2:
    #data 0x0382
    #align4

PTR_ce302e4:
    #data loc_8c055c3a
PTR_ce302e8:
    #data loc_8c0530d8
PTR_ce302ec:
    #data DAT_ce33c50
PTR_ce302f0:
    #data loc_8c054e58

;=============================================

FUN_ce302f4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30418,pc),r5
    mov.w @(DAT_ce30404,pc),r6
    mov.l @(PTR_ce3041c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30324
    mov.w @(DAT_ce30406,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30332
    mov.w @(DAT_ce30408,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30332
    mov.w @(DAT_ce3040a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3032c

LAB_ce30324:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3032c:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30332:
    mov.w @(DAT_ce30404,pc),r5
    mov.l @(PTR_ce30420,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3040c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30424,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3035a:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3040e,pc),r4
    mov 0x16,r0
    sts.l PR,@-r15
    add r14,r4
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3038a
    mov.w @(DAT_ce30410,pc),r6
    mov.l @(PTR_ce30428,pc),r5
    mov.l @(PTR_ce3041c,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3038a
    mov.w @(DAT_ce30412,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    mov 0x03,r2
    cmp/ge r2,r3
    bt LAB_ce30392

LAB_ce3038a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30392:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3040c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30424,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303b0:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3040e,pc),r4
    mov 0x16,r0
    sts.l PR,@-r15
    add r14,r4
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce303de
    mov.w @(DAT_ce30414,pc),r6
    mov.l @(PTR_ce3042c,pc),r5
    mov.l @(PTR_ce3041c,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303de
    mov.w @(DAT_ce30412,pc),r0
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
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0A,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3040c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30424,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30404:
    #data 0x0384
DAT_ce30406:
    #data 0x01f9
DAT_ce30408:
    #data 0x01fc
DAT_ce3040a:
    #data 0x01d4
DAT_ce3040c:
    #data 0x01e9
DAT_ce3040e:
    #data 0x02a4
DAT_ce30410:
    #data 0x038c
DAT_ce30412:
    #data 0x040c
DAT_ce30414:
    #data 0x0394
    #align4

PTR_ce30418:
    #data DAT_ce33c60
PTR_ce3041c:
    #data loc_8c054e58
PTR_ce30420:
    #data loc_8c055c3a
PTR_ce30424:
    #data loc_8c0530d8
PTR_ce30428:
    #data DAT_ce33c70
PTR_ce3042c:
    #data DAT_ce33c80

;=============================================

FUN_ce30430:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30552,pc),r4
    mov 0x16,r0
    sts.l PR,@-r15
    add r14,r4
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3045e
    mov.w @(DAT_ce30554,pc),r6
    mov.l @(PTR_ce3055c,pc),r5
    mov.l @(PTR_ce30560,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3045e
    mov.w @(DAT_ce30556,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30466

LAB_ce3045e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30466:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0B,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30558,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30564,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30484:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30552,pc),r4
    mov 0x16,r0
    sts.l PR,@-r15
    add r14,r4
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce304b2
    mov.w @(DAT_ce3055a,pc),r6
    mov.l @(PTR_ce30568,pc),r5
    mov.l @(PTR_ce30560,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304b2
    mov.w @(DAT_ce30556,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304ba

LAB_ce304b2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304ba:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0D,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30558,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30564,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304d8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3056c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce304f0
    mov.w @(DAT_ce30556,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304f8

LAB_ce304f0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304f8:
    mov.w @(DAT_ce30558,pc),r0
    mov 0x05,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30564,pc),r3
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

FUN_ce30518:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30570,pc),r3
    jsr @r3
    mov 0x06,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30532
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30532:
    mov.w @(DAT_ce30558,pc),r0
    mov 0x06,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30564,pc),r3
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

DAT_ce30552:
    #data 0x02a4
DAT_ce30554:
    #data 0x039c
DAT_ce30556:
    #data 0x040c
DAT_ce30558:
    #data 0x01e9
DAT_ce3055a:
    #data 0x03ac
    #align4

PTR_ce3055c:
    #data DAT_ce33c90
PTR_ce30560:
    #data loc_8c054e58
PTR_ce30564:
    #data loc_8c0530d8
PTR_ce30568:
    #data DAT_ce33cb0
PTR_ce3056c:
    #data loc_8c054d1c
PTR_ce30570:
    #data loc_8c054da0

;=============================================

LAB_ce30574:
    sts.l PR,@-r15
    bsr FUN_ce3058c
    nop
    tst r0,r0
    bt LAB_ce30584
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce30584:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce3058c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30650,pc),r5
    mov.w @(DAT_ce30642,pc),r6
    mov.l @(PTR_ce30654,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce305ac
    mov.w @(DAT_ce30644,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce305b4

LAB_ce305ac:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce305b4:
    mov.w @(DAT_ce30646,pc),r0
    mov 0x0D,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce305c2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30648,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    bsr FUN_ce305e0
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce30820
    mov.l @r15+,r14

;=============================================

FUN_ce305e0:
    mov.b @(0x5,r4),r0
    mov.w @(DAT_ce30648,pc),r6
    tst r0,r0
    bf/s LAB_ce3063e
    add r4,r6
    mov.w @(DAT_ce3064a,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x15,r0
    bt LAB_ce3063e
    mov.w @(DAT_ce3064a,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x1D,r0
    bt LAB_ce3063e
    mov.w @(DAT_ce3064a,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x12,r0
    bt LAB_ce3063e
    mov.w @(DAT_ce3064a,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x13,r0
    bt LAB_ce3063e
    mov.w @(DAT_ce3064c,pc),r0
    mov.w @(DAT_ce3064e,pc),r3
    mov.w @(r0,r4),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce3063e
    mov r6,r5
    mov 0x01,r7
    add 0x06,r5
    bra LAB_ce30636
    mov r6,r4

LAB_ce30628:
    mov.b @r4,r2
    tst r2,r2
    bt LAB_ce30632
    rts
    mov.b r7,@r5

LAB_ce30632:
    add 0x01,r4
    add 0x01,r5

LAB_ce30636:
    mov r6,r3
    add 0x06,r3
    cmp/hs r3,r4
    bf LAB_ce30628

LAB_ce3063e:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30642:
    #data 0x03ac
DAT_ce30644:
    #data 0x040c
DAT_ce30646:
    #data 0x0258
DAT_ce30648:
    #data 0x02a4
DAT_ce3064a:
    #data 0x01d0
DAT_ce3064c:
    #data 0x034e
DAT_ce3064e:
    #data 0x0200
    #align4

PTR_ce30650:
    #data DAT_ce33cb0
PTR_ce30654:
    #data loc_8c054e58

;=============================================

LAB_ce30658:
    mov.l r14,@-r15
    mov r5,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(0xe,r14),r0
    tst r0,r0
    bt/s LAB_ce306d4
    mov r4,r13
    mov.w @(DAT_ce30778,pc),r0
    mov.b @(r0,r13),r3
    tst r3,r3
    bf LAB_ce30676
    mov.w @(0xe,r14),r0
    add 0xFF,r0
    mov.w r0,@(0xe,r14)

LAB_ce30676:
    mov 0x14,r0
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    add 0x01,r3
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce306e0
    mov 0x04,r1
    mov.b r1,@(r0,r14)
    mov 0x15,r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce3077c,pc),r0
    extu.b r2,r2
    mov.b @(r0,r2),r3
    mov.w @(DAT_ce3077a,pc),r2
    extu.b r3,r3
    cmp/eq r2,r3
    bf/s LAB_ce306aa
    mov 0x01,r7
    mov 0x15,r0
    mov 0x02,r1
    mov.b r1,@(r0,r14)

LAB_ce306aa:
    mov 0x15,r0
    mov r13,r4
    mov.b @(r0,r14),r6
    mov 0x1C,r2
    mov.l @(PTR_ce3077c,pc),r0
    mov 0x00,r5
    extu.b r6,r6
    mov.b @(r0,r6),r6
    mov 0x25,r0
    mov.b @(r0,r13),r3
    lds.l @r15+,PR
    extu.b r3,r3
    mulu.w r2,r3
    extu.b r6,r6
    mov.l @r15+,r13
    sts MACL,r3
    add r3,r6
    mov.l @(PTR_ce30780,pc),r3
    add 0x22,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce306d4:
    mov.l @(PTR_ce30784,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r13,r4
    mov 0x00,r0
    mov.b r0,@(0xd,r14)

LAB_ce306e0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce306e8:
    mov.l r14,@-r15
    mov r5,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(0xe,r14),r0
    tst r0,r0
    bt/s LAB_ce30764
    mov r4,r13
    mov.w @(DAT_ce30778,pc),r0
    mov.b @(r0,r13),r3
    tst r3,r3
    bf LAB_ce30706
    mov.w @(0xe,r14),r0
    add 0xFF,r0
    mov.w r0,@(0xe,r14)

LAB_ce30706:
    mov 0x14,r0
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    add 0x01,r3
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce30770
    mov 0x04,r1
    mov.b r1,@(r0,r14)
    mov 0x15,r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce30788,pc),r0
    extu.b r2,r2
    mov.b @(r0,r2),r3
    mov.w @(DAT_ce3077a,pc),r2
    extu.b r3,r3
    cmp/eq r2,r3
    bf/s LAB_ce3073a
    mov 0x01,r7
    mov 0x15,r0
    mov 0x02,r1
    mov.b r1,@(r0,r14)

LAB_ce3073a:
    mov 0x15,r0
    mov r13,r4
    mov.b @(r0,r14),r6
    mov 0x1C,r2
    mov.l @(PTR_ce30788,pc),r0
    mov 0x00,r5
    extu.b r6,r6
    mov.b @(r0,r6),r6
    mov 0x25,r0
    mov.b @(r0,r13),r3
    lds.l @r15+,PR
    extu.b r3,r3
    mulu.w r2,r3
    extu.b r6,r6
    mov.l @r15+,r13
    sts MACL,r3
    add r3,r6
    mov.l @(PTR_ce30780,pc),r3
    add 0x22,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce30764:
    mov.l @(PTR_ce30784,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r13,r4
    mov 0x00,r0
    mov.b r0,@(0xd,r14)

LAB_ce30770:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30778:
    #data 0x01a0
DAT_ce3077a:
    #data 0x00ff
    #align4

PTR_ce3077c:
    #data DAT_ce33d30
PTR_ce30780:
    #data loc_8c03544c
PTR_ce30784:
    #data loc_8c035162
PTR_ce30788:
    #data DAT_ce33d3f

;=============================================

LAB_ce3078c:
    mov.l r14,@-r15
    mov r5,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(0xe,r14),r0
    tst r0,r0
    bt/s LAB_ce30800
    mov r4,r13
    mov.w @(0xe,r14),r0
    add 0xFF,r0
    mov.w r0,@(0xe,r14)
    mov 0x14,r0
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    add 0x01,r3
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce30814
    mov 0x04,r1
    mov.b r1,@(r0,r14)
    mov 0x15,r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce308c8,pc),r0
    extu.b r2,r2
    mov.b @(r0,r2),r3
    mov.w @(DAT_ce308bc,pc),r2
    extu.b r3,r3
    cmp/eq r2,r3
    bf/s LAB_ce307d6
    mov 0x01,r7
    mov 0x15,r0
    mov 0x02,r1
    mov.b r1,@(r0,r14)

LAB_ce307d6:
    mov 0x15,r0
    mov r13,r4
    mov.b @(r0,r14),r6
    mov 0x1C,r2
    mov.l @(PTR_ce308c8,pc),r0
    mov 0x00,r5
    extu.b r6,r6
    mov.b @(r0,r6),r6
    mov 0x25,r0
    mov.b @(r0,r13),r3
    lds.l @r15+,PR
    extu.b r3,r3
    mulu.w r2,r3
    extu.b r6,r6
    mov.l @r15+,r13
    sts MACL,r3
    add r3,r6
    mov.l @(PTR_ce308cc,pc),r3
    add 0x30,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce30800:
    mov.l @(PTR_ce308d0,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r13,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0xd,r14)
    mov 0x16,r0
    mov.b r4,@(r0,r14)

LAB_ce30814:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3081c:
    rts
    nop

LAB_ce30820:
    mov.w @(DAT_ce308be,pc),r0
    mov.l r14,@-r15
    mov.w @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce30830
    mov r5,r14
    mov 0x00,r0
    mov.w r0,@(0xe,r14)

LAB_ce30830:
    mov.b @(0xd,r14),r0
    mov r14,r5
    mov.l @(PTR_ce308d4,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce30840:
    mov.w @(DAT_ce308c0,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce308d8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30854:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce308dc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce308c2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30882
    mov.w @(DAT_ce308c4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3087a
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30afc
    mov.l @r15+,r14

LAB_ce3087a:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30a56
    mov.l @r15+,r14

LAB_ce30882:
    mov.w @(DAT_ce308c4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30894
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30976
    mov.l @r15+,r14

LAB_ce30894:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3089c
    mov.l @r15+,r14

LAB_ce3089c:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce308c6,pc),r4
    mov 0x16,r0
    mov.l r13,@-r15
    add r14,r4
    sts.l PR,@-r15
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce308e4
    lds.l @r15+,PR
    mov.l @(PTR_ce308e0,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308bc:
    #data 0x00ff
DAT_ce308be:
    #data 0x0420
DAT_ce308c0:
    #data 0x01ff
DAT_ce308c2:
    #data 0x01fe
DAT_ce308c4:
    #data 0x01f9
DAT_ce308c6:
    #data 0x02a4
    #align4

PTR_ce308c8:
    #data DAT_ce33d4e
PTR_ce308cc:
    #data loc_8c03544c
PTR_ce308d0:
    #data loc_8c035162
PTR_ce308d4:
    #data PTR_ce33d60
PTR_ce308d8:
    #data PTR_ce33d70
PTR_ce308dc:
    #data loc_8c052b4c
PTR_ce308e0:
    #data LAB_ce3266c

;=============================================

LAB_ce308e4:
    mov.w @(DAT_ce309e8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308fc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30912
    cmp/eq 0x02,r0
    bt LAB_ce30932
    bra LAB_ce30946
    nop

LAB_ce308fc:
    mov.w @(DAT_ce309ea,pc),r0
    mov.l @(PTR_ce309f4,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce309ec,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce309ee,pc),r0
    mov.b r13,@(r0,r14)
    bra LAB_ce30928
    mov 0x14,r5

LAB_ce30912:
    mov.w @(DAT_ce309ea,pc),r0
    mov 0x01,r4
    mov.l @(PTR_ce309f8,pc),r3
    mov 0x15,r5
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce309ec,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce309ee,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30928:
    mov.l @(PTR_ce309fc,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce30946
    nop

LAB_ce30932:
    mov.w @(DAT_ce309ea,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce30a00,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce309ec,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce309ee,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30946:
    mov.w @(DAT_ce309f0,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce30a04,pc),r3
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
    mov.w @(DAT_ce309ea,pc),r0
    mov.l @(PTR_ce30a08,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30976:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce309f2,pc),r4
    mov 0x16,r0
    mov.l r13,@-r15
    add r14,r4
    sts.l PR,@-r15
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30996
    lds.l @r15+,PR
    mov.l @(PTR_ce30a0c,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30996:
    mov.w @(DAT_ce309e8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce309ae
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce309c6
    cmp/eq 0x02,r0
    bt LAB_ce30a10
    bra LAB_ce30a26
    nop

LAB_ce309ae:
    mov.w @(DAT_ce309ea,pc),r0
    mov 0x06,r3
    mov.l @(PTR_ce309f4,pc),r2
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce309ec,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce309ee,pc),r0
    mov.b r13,@(r0,r14)
    bra LAB_ce309de
    mov 0x14,r5

LAB_ce309c6:
    mov.w @(DAT_ce309ea,pc),r0
    mov 0x01,r4
    mov 0x07,r3
    mov.l @(PTR_ce309f8,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.w @(DAT_ce309ec,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce309ee,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce309de:
    mov.l @(PTR_ce309fc,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce30a26
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309e8:
    #data 0x01e8
DAT_ce309ea:
    #data 0x0158
DAT_ce309ec:
    #data 0x03f4
DAT_ce309ee:
    #data 0x01a7
DAT_ce309f0:
    #data 0x01ac
DAT_ce309f2:
    #data 0x02a4
    #align4

PTR_ce309f4:
    #data DAT_ce33be0
PTR_ce309f8:
    #data DAT_ce33be4
PTR_ce309fc:
    #data loc_8c04223a
PTR_ce30a00:
    #data DAT_ce33be8
PTR_ce30a04:
    #data loc_8c2896b0
PTR_ce30a08:
    #data loc_8c034e8c
PTR_ce30a0c:
    #data LAB_ce326ba

;=============================================

LAB_ce30a10:
    mov.w @(DAT_ce30b1c,pc),r0
    mov 0x02,r4
    mov 0x08,r3
    mov.l @(PTR_ce30b28,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30b1e,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30b20,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30a26:
    mov.w @(DAT_ce30b22,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30b2c,pc),r3
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
    mov.w @(DAT_ce30b1c,pc),r0
    mov.l @(PTR_ce30b30,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30a56:
    mov.w @(DAT_ce30b24,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a76
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a94
    cmp/eq 0x02,r0
    bt LAB_ce30ab6
    bra LAB_ce30acc
    nop

LAB_ce30a76:
    mov.w @(DAT_ce30b1c,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30b34,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30b1e,pc),r0
    mov.l @(PTR_ce30b38,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30b20,pc),r0
    bra LAB_ce30acc
    mov.b r13,@(r0,r14)

LAB_ce30a94:
    mov.w @(DAT_ce30b1c,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce30b34,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30b1e,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce30b3c,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30b20,pc),r0
    bra LAB_ce30acc
    mov.b r3,@(r0,r14)

LAB_ce30ab6:
    mov.w @(DAT_ce30b1c,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce30b40,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30b1e,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30b20,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30acc:
    mov.w @(DAT_ce30b22,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce30b2c,pc),r3
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
    mov.w @(DAT_ce30b1c,pc),r0
    mov.l @(PTR_ce30b30,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30afc:
    mov.w @(DAT_ce30b24,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30b44
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30b62
    cmp/eq 0x02,r0
    bt LAB_ce30b84
    bra LAB_ce30b9a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b1c:
    #data 0x0158
DAT_ce30b1e:
    #data 0x03f4
DAT_ce30b20:
    #data 0x01a7
DAT_ce30b22:
    #data 0x01ac
DAT_ce30b24:
    #data 0x01e8
    #align4

PTR_ce30b28:
    #data DAT_ce33be8
PTR_ce30b2c:
    #data loc_8c2896b0
PTR_ce30b30:
    #data loc_8c034e8c
PTR_ce30b34:
    #data loc_8c04223a
PTR_ce30b38:
    #data DAT_ce33bec
PTR_ce30b3c:
    #data DAT_ce33bf0
PTR_ce30b40:
    #data DAT_ce33bf4

;=============================================

LAB_ce30b44:
    mov.w @(DAT_ce30c3e,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30c50,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30c40,pc),r0
    mov.l @(PTR_ce30c54,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30c42,pc),r0
    bra LAB_ce30b9a
    mov.b r13,@(r0,r14)

LAB_ce30b62:
    mov.w @(DAT_ce30c3e,pc),r0
    mov 0x01,r4
    mov 0x0A,r3
    mov.l @(PTR_ce30c58,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.w @(DAT_ce30c40,pc),r0
    mov.l @(PTR_ce30c50,pc),r3
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30c42,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce30b9a
    nop

LAB_ce30b84:
    mov.w @(DAT_ce30c3e,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.l @(PTR_ce30c5c,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30c40,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30c42,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30b9a:
    mov.w @(DAT_ce30c44,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30c60,pc),r3
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
    mov.w @(DAT_ce30c3e,pc),r0
    mov.l @(PTR_ce30c64,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30bca:
    mov.w @(DAT_ce30c46,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30bda
    mov.w @(DAT_ce30c48,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30bea

LAB_ce30bda:
    mov.w @(DAT_ce30c46,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30bee
    mov.w @(DAT_ce30c48,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30bee

LAB_ce30bea:
    bra LAB_ce30bf2
    nop

LAB_ce30bee:
    rts
    nop

LAB_ce30bf2:
    mov.w @(DAT_ce30c46,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c00
    bra LAB_ce30db8
    nop

LAB_ce30c00:
    bra LAB_ce30c04
    nop

LAB_ce30c04:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30c4a,pc),r4
    mov 0x16,r0
    mov.l r13,@-r15
    add r14,r4
    sts.l PR,@-r15
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30c24
    lds.l @r15+,PR
    mov.l @(PTR_ce30c68,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c24:
    mov.w @(DAT_ce30c4c,pc),r0
    mov 0x0B,r4
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30c6c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30c9e
    cmp/eq 0x02,r0
    bt LAB_ce30cf2
    bra LAB_ce30d3e
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c3e:
    #data 0x0158
DAT_ce30c40:
    #data 0x03f4
DAT_ce30c42:
    #data 0x01a7
DAT_ce30c44:
    #data 0x01ac
DAT_ce30c46:
    #data 0x01fe
DAT_ce30c48:
    #data 0x01d6
DAT_ce30c4a:
    #data 0x02a4
DAT_ce30c4c:
    #data 0x01e8
    #align4

PTR_ce30c50:
    #data loc_8c04223a
PTR_ce30c54:
    #data DAT_ce33bec
PTR_ce30c58:
    #data DAT_ce33bf0
PTR_ce30c5c:
    #data DAT_ce33bf4
PTR_ce30c60:
    #data loc_8c2896b0
PTR_ce30c64:
    #data loc_8c034e8c
PTR_ce30c68:
    #data LAB_ce32708

;=============================================

LAB_ce30c6c:
    mov.w @(DAT_ce30d82,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30d94,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30d84,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30c92
    mov.w @(DAT_ce30d86,pc),r0
    mov.l @(PTR_ce30d98,pc),r3
    bra LAB_ce30c98
    mov.l r3,@(r0,r14)

LAB_ce30c92:
    mov.w @(DAT_ce30d86,pc),r0
    mov.l @(PTR_ce30d9c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c98:
    mov.w @(DAT_ce30d88,pc),r0
    bra LAB_ce30d3e
    mov.b r13,@(r0,r14)

LAB_ce30c9e:
    mov.w @(DAT_ce30d82,pc),r0
    mov 0x01,r3
    mov 0x0D,r2
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.l @(PTR_ce30d94,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30d84,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30cc6
    mov.w @(DAT_ce30d86,pc),r0
    mov.l @(PTR_ce30da0,pc),r3
    bra LAB_ce30ccc
    mov.l r3,@(r0,r14)

LAB_ce30cc6:
    mov.w @(DAT_ce30d86,pc),r0
    mov.l @(PTR_ce30da4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30ccc:
    mov.w @(DAT_ce30d88,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    add 0x53,r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce30d8a,pc),r3
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce30d3e
    mov.w @(DAT_ce30d82,pc),r0
    mov 0x14,r2
    mov 0x06,r1
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x12,r2
    bra LAB_ce30d3e
    mov.b r2,@(r0,r14)

LAB_ce30cf2:
    mov.w @(DAT_ce30d82,pc),r0
    mov 0x02,r5
    mov 0x0E,r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0xB8,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30d84,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30d16
    mov.w @(DAT_ce30d86,pc),r0
    mov.l @(PTR_ce30da8,pc),r3
    bra LAB_ce30d1c
    mov.l r3,@(r0,r14)

LAB_ce30d16:
    mov.w @(DAT_ce30d86,pc),r0
    mov.l @(PTR_ce30dac,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30d1c:
    mov.w @(DAT_ce30d88,pc),r0
    mov.w @(DAT_ce30d8a,pc),r2
    mov.b r5,@(r0,r14)
    add 0x53,r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce30d3e
    mov.w @(DAT_ce30d82,pc),r0
    mov 0x14,r3
    mov 0x07,r1
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x13,r3
    mov.b r3,@(r0,r14)

LAB_ce30d3e:
    mov.w @(DAT_ce30d8c,pc),r0
    mov.l @(PTR_ce30db0,pc),r3
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
    mov.w @(DAT_ce30d8e,pc),r0
    mov.l @(PTR_ce30db4,pc),r2
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30d90,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30d7a
    mov.w @(DAT_ce30d90,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30d7a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d82:
    #data 0x0159
DAT_ce30d84:
    #data 0x01fc
DAT_ce30d86:
    #data 0x03f4
DAT_ce30d88:
    #data 0x01a7
DAT_ce30d8a:
    #data 0x1000
DAT_ce30d8c:
    #data 0x01ac
DAT_ce30d8e:
    #data 0x0158
DAT_ce30d90:
    #data 0x01d6
    #align4

PTR_ce30d94:
    #data loc_8c04223a
PTR_ce30d98:
    #data DAT_ce33bf8
PTR_ce30d9c:
    #data DAT_ce33c10
PTR_ce30da0:
    #data DAT_ce33bfc
PTR_ce30da4:
    #data DAT_ce33c14
PTR_ce30da8:
    #data DAT_ce33c00
PTR_ce30dac:
    #data DAT_ce33c18
PTR_ce30db0:
    #data loc_8c2896b0
PTR_ce30db4:
    #data loc_8c034e8c

;=============================================

LAB_ce30db8:
    mov.w @(DAT_ce30e7e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x0C,r4
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30dda
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30e0c
    cmp/eq 0x02,r0
    bt LAB_ce30e5e
    bra LAB_ce30eae
    nop

LAB_ce30dda:
    mov.w @(DAT_ce30e80,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30e8c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30e82,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30e00
    mov.w @(DAT_ce30e84,pc),r0
    mov.l @(PTR_ce30e90,pc),r3
    bra LAB_ce30e06
    mov.l r3,@(r0,r14)

LAB_ce30e00:
    mov.w @(DAT_ce30e84,pc),r0
    mov.l @(PTR_ce30e94,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30e06:
    mov.w @(DAT_ce30e86,pc),r0
    bra LAB_ce30eae
    mov.b r13,@(r0,r14)

LAB_ce30e0c:
    mov.w @(DAT_ce30e80,pc),r0
    mov 0x01,r3
    mov 0x10,r2
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.l @(PTR_ce30e8c,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30e82,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30e34
    mov.w @(DAT_ce30e84,pc),r0
    mov.l @(PTR_ce30e98,pc),r3
    bra LAB_ce30e3a
    mov.l r3,@(r0,r14)

LAB_ce30e34:
    mov.w @(DAT_ce30e84,pc),r0
    mov.l @(PTR_ce30e9c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30e3a:
    mov.w @(DAT_ce30e86,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    add 0x53,r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce30e88,pc),r3
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce30eae
    mov.w @(DAT_ce30e80,pc),r0
    mov 0x14,r4
    mov 0x08,r2
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30eae
    mov.b r4,@(r0,r14)

LAB_ce30e5e:
    mov.w @(DAT_ce30e80,pc),r0
    mov 0x11,r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov 0x02,r4
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30ea4
    mov.w @(DAT_ce30e84,pc),r0
    mov.l @(PTR_ce30ea0,pc),r2
    bra LAB_ce30eaa
    mov.l r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e7e:
    #data 0x01e8
DAT_ce30e80:
    #data 0x0159
DAT_ce30e82:
    #data 0x01fc
DAT_ce30e84:
    #data 0x03f4
DAT_ce30e86:
    #data 0x01a7
DAT_ce30e88:
    #data 0x2000
    #align4

PTR_ce30e8c:
    #data loc_8c04223a
PTR_ce30e90:
    #data DAT_ce33c04
PTR_ce30e94:
    #data DAT_ce33c1c
PTR_ce30e98:
    #data DAT_ce33c08
PTR_ce30e9c:
    #data DAT_ce33c20
PTR_ce30ea0:
    #data DAT_ce33c0c

;=============================================

LAB_ce30ea4:
    mov.w @(DAT_ce30fb2,pc),r0
    mov.l @(PTR_ce30fc4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30eaa:
    mov.w @(DAT_ce30fb4,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30eae:
    mov.w @(DAT_ce30fb6,pc),r0
    mov.l @(PTR_ce30fc8,pc),r3
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
    mov.w @(DAT_ce30fb8,pc),r0
    mov.l @(PTR_ce30fcc,pc),r2
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30fba,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30eea
    mov.w @(DAT_ce30fba,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30eea:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30ef2:
    mov.w @(DAT_ce30fbc,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30fd0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30f06:
    sts.l PR,@-r15
    mov.l @(PTR_ce30fd4,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30f14:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30fd8,pc),r3
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
    mov.w @(DAT_ce30fbe,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f7c
    mov.w @(DAT_ce30fc0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f74
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3111c
    mov.l @r15+,r14

LAB_ce30f74:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce310e4
    mov.l @r15+,r14

LAB_ce30f7c:
    mov.w @(DAT_ce30fc0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f8e
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3107e
    mov.l @r15+,r14

LAB_ce30f8e:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30f96
    mov.l @r15+,r14

LAB_ce30f96:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30fc2,pc),r4
    mov 0x16,r0
    sts.l PR,@-r15
    add r14,r4
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30fe0
    lds.l @r15+,PR
    mov.l @(PTR_ce30fdc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fb2:
    #data 0x03f4
DAT_ce30fb4:
    #data 0x01a7
DAT_ce30fb6:
    #data 0x01ac
DAT_ce30fb8:
    #data 0x0158
DAT_ce30fba:
    #data 0x01d6
DAT_ce30fbc:
    #data 0x01ff
DAT_ce30fbe:
    #data 0x01fe
DAT_ce30fc0:
    #data 0x01f9
DAT_ce30fc2:
    #data 0x02a4
    #align4

PTR_ce30fc4:
    #data DAT_ce33c24
PTR_ce30fc8:
    #data loc_8c2896b0
PTR_ce30fcc:
    #data loc_8c034e8c
PTR_ce30fd0:
    #data PTR_ce33d80
PTR_ce30fd4:
    #data loc_8c0511e2
PTR_ce30fd8:
    #data loc_8c052c84
PTR_ce30fdc:
    #data LAB_ce3277c

;=============================================

LAB_ce30fe0:
    mov.w @(DAT_ce310cc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30ff6
    cmp/eq 0x01,r0
    bt LAB_ce30ff6
    cmp/eq 0x02,r0
    bt LAB_ce31006
    bra LAB_ce31078
    nop

LAB_ce30ff6:
    mov.l @(PTR_ce310d4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31012
    bra LAB_ce31078
    nop

LAB_ce31006:
    mov.l @(PTR_ce310d4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3101c

LAB_ce31012:
    lds.l @r15+,PR
    mov.l @(PTR_ce310d8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3101c:
    mov.w @(DAT_ce310ce,pc),r0
    mov.l @(PTR_ce310dc,pc),r5
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce3104c
    mov 0x00,r4
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
    mov.b @(0x2,r14),r0
    mov.l @r5,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)

LAB_ce3104c:
    mov.w @(DAT_ce310d0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31078
    mov.b r4,@(r0,r14)
    add 0x61,r0
    mov 0x02,r3
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

LAB_ce31078:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3107e:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce310d2,pc),r4
    mov 0x16,r0
    sts.l PR,@-r15
    add r14,r4
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3109a
    lds.l @r15+,PR
    mov.l @(PTR_ce310e0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3109a:
    mov.w @(DAT_ce310cc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce310b0
    cmp/eq 0x01,r0
    bt LAB_ce310b0
    cmp/eq 0x02,r0
    bt LAB_ce310b0
    bra LAB_ce310c6
    nop

LAB_ce310b0:
    mov.l @(PTR_ce310d4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310c6
    lds.l @r15+,PR
    mov.l @(PTR_ce310d8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce310c6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310cc:
    #data 0x01e8
DAT_ce310ce:
    #data 0x0141
DAT_ce310d0:
    #data 0x0140
DAT_ce310d2:
    #data 0x02a4
    #align4

PTR_ce310d4:
    #data loc_8c034dee
PTR_ce310d8:
    #data loc_8c051648
PTR_ce310dc:
    #data loc_8c2896b0
PTR_ce310e0:
    #data LAB_ce3277c

;=============================================

LAB_ce310e4:
    mov.w @(DAT_ce311c8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31100
    cmp/eq 0x01,r0
    bt LAB_ce31100
    cmp/eq 0x02,r0
    bt LAB_ce31100
    bra LAB_ce31116
    nop

LAB_ce31100:
    mov.l @(PTR_ce311d0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31116
    lds.l @r15+,PR
    mov.l @(PTR_ce311d4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31116:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3111c:
    mov.w @(DAT_ce311c8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31138
    cmp/eq 0x01,r0
    bt LAB_ce31138
    cmp/eq 0x02,r0
    bt LAB_ce31138
    bra LAB_ce3114e
    nop

LAB_ce31138:
    mov.l @(PTR_ce311d0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3114e
    lds.l @r15+,PR
    mov.l @(PTR_ce311d4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3114e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31154:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce311d8,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce311dc,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3116a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce311e0,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce311e4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce311ca,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3118c
    bsr FUN_ce31210
    mov r14,r4
    bra LAB_ce31190
    nop

LAB_ce3118c:
    bsr FUN_ce311ac
    mov r14,r4

LAB_ce31190:
    mov.l @(PTR_ce311e8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce311a6
    lds.l @r15+,PR
    mov.l @(PTR_ce311ec,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce311a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce311ac:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce311cc,pc),r4
    mov 0x16,r0
    sts.l PR,@-r15
    add r14,r4
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce311f4
    lds.l @r15+,PR
    mov.l @(PTR_ce311f0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311c8:
    #data 0x01e8
DAT_ce311ca:
    #data 0x01fe
DAT_ce311cc:
    #data 0x02a4
    #align4

PTR_ce311d0:
    #data loc_8c034dee
PTR_ce311d4:
    #data loc_8c051648
PTR_ce311d8:
    #data loc_8c050084
PTR_ce311dc:
    #data loc_8c04ff88
PTR_ce311e0:
    #data loc_8c04fea8
PTR_ce311e4:
    #data loc_8c050048
PTR_ce311e8:
    #data loc_8c052ce2
PTR_ce311ec:
    #data loc_8c052dac
PTR_ce311f0:
    #data LAB_ce3277c

;=============================================

LAB_ce311f4:
    mov.l @(PTR_ce31338,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3120a
    lds.l @r15+,PR
    mov.l @(PTR_ce3133c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3120a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31210:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31338,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3122a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3133c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3122a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31232:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31288
    mov.l @(PTR_ce31340,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce31344,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3132e,pc),r0
    mov 0x19,r2
    mov 0x01,r3
    mov.b r2,@(r0,r14)
    add 0x58,r0
    mov.b r3,@(r0,r14)
    mov 0x14,r5
    mov.l @(PTR_ce31348,pc),r3
    mov 0x05,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31330,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce3134c,pc),r3
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

LAB_ce31288:
    mov.w @(DAT_ce31332,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31298
    mov.l @(PTR_ce31350,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31298:
    mov 0x5C,r1
    mov.l @(PTR_ce31354,pc),r3
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
    mov.l @(PTR_ce31338,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312ec
    lds.l @r15+,PR
    mov.l @(PTR_ce31358,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce312ec:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312f2:
    mov r4,r3
    mov.l @(PTR_ce3135c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31304:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x18,r0
    mov.w r0,@(0x1c,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce31334,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31364
    mova @(DAT_ce31360,pc),r0
    bra LAB_ce31368
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3132e:
    #data 0x01a1
DAT_ce31330:
    #data 0x01ac
DAT_ce31332:
    #data 0x01ff
DAT_ce31334:
    #data 0x01d2
    #align4

PTR_ce31338:
    #data loc_8c034dee
PTR_ce3133c:
    #data loc_8c05176e
PTR_ce31340:
    #data loc_8c052b4c
PTR_ce31344:
    #data loc_8c056de4
PTR_ce31348:
    #data loc_8c034e8c
PTR_ce3134c:
    #data loc_8c2896b0
PTR_ce31350:
    #data loc_8c0511e2
PTR_ce31354:
    #data loc_8c052c84
PTR_ce31358:
    #data loc_8c051648
PTR_ce3135c:
    #data PTR_ce33d90
DAT_ce31360:
    #data 0x41555555

;=============================================

LAB_ce31364:
    mova @(DAT_ce314a0,pc),r0
    fmov.s @r0,fr3

LAB_ce31368:
    mov 0x5C,r0
    mov 0x5C,r1
    fmov fr3,@(r0,r4)
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

LAB_ce313a6:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce314a4,pc),r3
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
    tst r0,r0
    bf LAB_ce31424
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3149c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3140e
    mova @(DAT_ce314a8,pc),r0
    bra LAB_ce31412
    fmov.s @r0,fr3

LAB_ce3140e:
    mova @(DAT_ce314ac,pc),r0
    fmov.s @r0,fr3

LAB_ce31412:
    mov 0x02,r6
    mov.l @(PTR_ce314b0,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov r6,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31424:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3142a:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce314a4,pc),r3
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
    tst r0,r0
    bf LAB_ce31484
    lds.l @r15+,PR
    mov.l @(PTR_ce314b4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31484:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3148a:
    mov r4,r3
    mov.l @(PTR_ce314b8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3149c:
    #data 0x01d2
    #align4

DAT_ce314a0:
    #data 0xc1555555
PTR_ce314a4:
    #data loc_8c034dee
DAT_ce314a8:
    #data 0xbf555555
DAT_ce314ac:
    #data 0x3f555555
PTR_ce314b0:
    #data loc_8c034e8c
PTR_ce314b4:
    #data loc_8c051648
PTR_ce314b8:
    #data PTR_ce33d9c

;=============================================

LAB_ce314bc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31600,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce315f8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31510
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce315fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce314e2
    mova @(DAT_ce31604,pc),r0
    bra LAB_ce314e6
    fmov.s @r0,fr3

LAB_ce314e2:
    mova @(DAT_ce31608,pc),r0
    fmov.s @r0,fr3

LAB_ce314e6:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce315fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce314f8
    mova @(DAT_ce3160c,pc),r0
    bra LAB_ce314fc
    fmov.s @r0,fr3

LAB_ce314f8:
    mova @(DAT_ce31610,pc),r0
    fmov.s @r0,fr3

LAB_ce314fc:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31614,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31618,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31510:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31516:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31600,pc),r3
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce315fc,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31598
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r5
    mov.w @(DAT_ce315fe,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce315fc,pc),r0
    mov.l @(PTR_ce31620,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3161c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    mov 0x68,r0
    fdiv fr3,fr2
    fneg fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31598:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3159e:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31600,pc),r3
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
    bt LAB_ce315f2
    lds.l @r15+,PR
    mov.l @(PTR_ce31624,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce315f2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315f8:
    #data 0x0141
DAT_ce315fa:
    #data 0x01d2
DAT_ce315fc:
    #data 0x041c
DAT_ce315fe:
    #data 0x01f9
    #align4

PTR_ce31600:
    #data loc_8c034dee
DAT_ce31604:
    #data 0xc1a00000
DAT_ce31608:
    #data 0x41a00000
DAT_ce3160c:
    #data 0x3f200000
DAT_ce31610:
    #data 0xbf200000
DAT_ce31614:
    #data 0x40cdb6db
DAT_ce31618:
    #data 0xbf092492
DAT_ce3161c:
    #data 0x41000000
PTR_ce31620:
    #data loc_8c034e8c
PTR_ce31624:
    #data loc_8c051648

;=============================================

LAB_ce31628:
    mov r4,r3
    mov.l @(PTR_ce3177c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3163a:
    mov.l @(PTR_ce31780,pc),r2
    mov 0x02,r1
    mov.l r14,@-r15
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.b @r2,r3
    extu.b r3,r3
    cmp/ge r1,r3
    bt/s LAB_ce31658
    mov r4,r14
    mov.w @(DAT_ce3177a,pc),r3
    mov 0x00,r0
    add r14,r3
    bra LAB_ce316d8
    mov.b r0,@r3

LAB_ce31658:
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x34,r8
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3177a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x04,r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31678
    add r14,r8
    mov.l @(DAT_ce31784,pc),r1
    lds r1,FPUL
    bra LAB_ce3167e
    fsts FPUL,fr3

LAB_ce31678:
    mov.l @(DAT_ce31788,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce3167e:
    fmov.s @r8,fr2
    mov 0x38,r0
    mov.l @(DAT_ce3178c,pc),r1
    mov 0x12,r5
    fsub fr3,fr2
    fldi0 fr4
    lds r1,FPUL
    mov 0x00,r6
    mov.l @(PTR_ce31798,pc),r3
    fmov.s fr2,@r8
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31790,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31794,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3179c,pc),r2
    mov 0x20,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce317a0,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce317a0,pc),r2
    mov 0x01,r6
    mov 0x00,r5
    mov r14,r4
    mov.l @r15+,r8
    jmp @r2
    mov.l @r15+,r14

LAB_ce316d8:
    lds.l @r15+,PR
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

LAB_ce316e0:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce317a4,pc),r3
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
    bt LAB_ce31734
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31734:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3173a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce317a4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31774
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31798,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce317a8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x12,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce317ac,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31774:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3177a:
    #data 0x012c
    #align4

PTR_ce3177c:
    #data PTR_ce33da8
PTR_ce31780:
    #data loc_8c2895f0
DAT_ce31784:
    #data 0xc1555555
DAT_ce31788:
    #data 0x41555555
DAT_ce3178c:
    #data 0x433c9249
DAT_ce31790:
    #data 0x404db6db
DAT_ce31794:
    #data 0x3d4db6db
PTR_ce31798:
    #data loc_8c034e8c
PTR_ce3179c:
    #data loc_8c042008
PTR_ce317a0:
    #data loc_8c0e803c
PTR_ce317a4:
    #data loc_8c034dee
DAT_ce317a8:
    #data 0xc09a4924
DAT_ce317ac:
    #data 0xbe092492

;=============================================

LAB_ce317b0:
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
    mov.w @(DAT_ce318d2,pc),r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce3180a
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce318d8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce318d2,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x12,r5

LAB_ce3180a:
    rts
    nop

;=============================================

FUN_ce3180e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce318dc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31826
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce31826:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3182e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce318e0,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31846
    lds.l @r15+,PR
    mov.l @(PTR_ce318e4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31846:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce318e8,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3185a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3187e
    mov.b @(0x6,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce318d8,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce3194c
    mov.l @r15+,r14

LAB_ce3187e:
    mov.l @(PTR_ce318dc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce318d4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3189e
    mov 0x00,r3
    mov r14,r4
    mov r3,r6
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce318ec,pc),r3
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3189e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318a4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce318c8
    mov.b @(0x6,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce318d8,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce3194c
    mov.l @r15+,r14

LAB_ce318c8:
    lds.l @r15+,PR
    mov.l @(PTR_ce318dc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce318d2:
    #data 0x041c
DAT_ce318d4:
    #data 0x0141
    #align4

PTR_ce318d8:
    #data loc_8c034e8c
PTR_ce318dc:
    #data loc_8c034dee
PTR_ce318e0:
    #data loc_8c046c8a
PTR_ce318e4:
    #data loc_8c051648
PTR_ce318e8:
    #data PTR_ce33dbc
PTR_ce318ec:
    #data loc_8c0e803c

;=============================================

LAB_ce318f0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31914
    mov.b @(0x6,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce31a48,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce3194c
    mov.l @r15+,r14

LAB_ce31914:
    lds.l @r15+,PR
    mov.l @(PTR_ce31a4c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3191e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31942
    mov.b @(0x6,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce31a48,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce3194c
    mov.l @r15+,r14

LAB_ce31942:
    lds.l @r15+,PR
    mov.l @(PTR_ce31a4c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;=============================================

FUN_ce3194c:
    mov.w @(DAT_ce31a3a,pc),r6
    mov 0x16,r0
    mov 0x00,r5
    add r4,r6
    mov.b r5,@(r0,r6)
    mov r5,r0
    nop
    mov.b r0,@(0xd,r6)
    mov.w r0,@(0xe,r6)
    mov 0x14,r0
    mov.b r5,@(r0,r6)
    mov 0x15,r0
    mov.b r5,@(r0,r6)
    mov.w @(DAT_ce31a3c,pc),r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce31a3e,pc),r0
    mov.w r5,@(r0,r4)
    add 0xFA,r0
    mov.w r5,@(r0,r4)
    add 0x08,r0
    rts
    mov.b r5,@(r0,r4)

LAB_ce31978:
    mov.w @(DAT_ce31a40,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31a50,pc),r0
    extu.b r3,r3
    mov.w @(DAT_ce31a3a,pc),r5
    shll2 r3
    mov.l @(r0,r3),r2
    add r14,r5
    jmp @r2
    mov.l @r15+,r14

;=============================================

FUN_ce31990:
    mov.w @(DAT_ce31a42,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce319be
    mova @(DAT_ce31a54,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr2
    fdiv fr4,fr2
    fmov fr2,@(r0,r4)
    mov 0x60,r0
    fmov.s @(r0,r4),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r4)
    mov 0x6C,r0
    fmov.s @(r0,r4),fr2
    fdiv fr4,fr2
    fmov fr2,@(r0,r4)

LAB_ce319be:
    rts
    nop

;=============================================

FUN_ce319c2:
    mov.w @(DAT_ce31a42,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31a08
    mov 0x5C,r1
    mov.l @(PTR_ce31a58,pc),r3
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

LAB_ce31a08:
    rts
    nop

;=============================================

FUN_ce31a0c:
    mov.w @(DAT_ce31a42,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31a68
    mov.w @(DAT_ce31a44,pc),r0
    mov 0xFF,r2
    fldi0 fr4
    mov.b r2,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce31a5c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce31a64,pc),r3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31a60,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    jmp @r3
    fmov fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a3a:
    #data 0x02a4
DAT_ce31a3c:
    #data 0x0200
DAT_ce31a3e:
    #data 0x03ec
DAT_ce31a40:
    #data 0x01e9
DAT_ce31a42:
    #data 0x01f9
DAT_ce31a44:
    #data 0x01d3
    #align4

PTR_ce31a48:
    #data loc_8c034e8c
PTR_ce31a4c:
    #data loc_8c034dee
PTR_ce31a50:
    #data PTR_ce33dd0
DAT_ce31a54:
    #data 0x41000000
PTR_ce31a58:
    #data loc_8c052ce2
DAT_ce31a5c:
    #data 0xc0092492
DAT_ce31a60:
    #data 0xbf4db6db
PTR_ce31a64:
    #data loc_8c0517be

;=============================================

LAB_ce31a68:
    mov.l @(PTR_ce31b64,pc),r3
    jmp @r3
    nop

LAB_ce31a6e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce31b68,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31b6c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31b70,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31b60,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31aa4
    mov.l @(PTR_ce31b74,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31aa4:
    mov.l @(PTR_ce31b78,pc),r3
    mov 0x15,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    bsr FUN_ce31990
    mov r14,r4
    mov r13,r4
    add 0x06,r4
    mov 0x00,r5

LAB_ce31ab8:
    mov r13,r3
    mov.b r5,@r4
    add 0x0C,r3
    add 0x01,r4
    cmp/hs r3,r4
    bf LAB_ce31ab8
    mov r5,r0
    nop
    mov r13,r5
    mov.b r0,@(0xc,r13)
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31ad4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov r4,r13
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    mov.l r9,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b7c,pc),r3
    jsr @r3
    mov r5,r12
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b02
    lds.l @r15+,PR
    mov r13,r4
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra FUN_ce31a0c
    mov.l @r15+,r14

LAB_ce31b02:
    mov.w @(DAT_ce31b62,pc),r0
    mov.b @(r0,r13),r2
    tst r2,r2
    bt LAB_ce31b3c
    mov.l @(PTR_ce31b80,pc),r9
    mov 0x00,r4
    mov 0x06,r11
    mov r4,r14
    mov.b r4,@(r0,r13)
    mov 0x01,r10

LAB_ce31b16:
    mov r12,r3
    add r14,r3
    mov.b @r3,r2
    tst r2,r2
    bf LAB_ce31b2e
    mov r12,r2
    add r14,r2
    mov 0x00,r5
    mov r14,r6
    mov.b r10,@r2
    jsr @r9
    mov r13,r4

LAB_ce31b2e:
    add 0x01,r14
    cmp/ge r11,r14
    bf LAB_ce31b16
    mov.l @(PTR_ce31b84,pc),r2
    mov 0x22,r5
    jsr @r2
    mov r13,r4

LAB_ce31b3c:
    lds.l @r15+,PR
    mov r13,r4
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra FUN_ce319c2
    mov.l @r15+,r14

LAB_ce31b4e:
    mov r4,r3
    mov.l @(PTR_ce31b88,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b60:
    #data 0x01f9
DAT_ce31b62:
    #data 0x0141
    #align4

PTR_ce31b64:
    #data loc_8c051648
PTR_ce31b68:
    #data loc_8c056de4
PTR_ce31b6c:
    #data loc_8c05218a
PTR_ce31b70:
    #data loc_8c035162
PTR_ce31b74:
    #data loc_8c05115a
PTR_ce31b78:
    #data loc_8c034e8c
PTR_ce31b7c:
    #data loc_8c034dee
PTR_ce31b80:
    #data loc_8c0a6d1c
PTR_ce31b84:
    #data loc_8c042008
PTR_ce31b88:
    #data PTR_ce33e08

;=============================================

LAB_ce31b8c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31c80,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31c84,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31c88,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31c76,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31bc2
    mov.l @(PTR_ce31c8c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31bc2:
    mov.w @(DAT_ce31c78,pc),r0
    mov 0x32,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31c90,pc),r3
    mov 0x15,r5
    mov.l r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31c94,pc),r2
    jsr @r2
    mov r14,r4
    bsr FUN_ce31990
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce31c00:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31c98,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c20
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra FUN_ce31a0c
    mov.l @r15+,r14

LAB_ce31c20:
    mov.w @(DAT_ce31c7a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31c38
    mov r14,r4
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31c7c,pc),r0
    mov.l @r15,r2
    mov.b @(r0,r14),r0
    add 0x01,r0
    mov.b r0,@(0xc,r2)

LAB_ce31c38:
    add 0x04,r15
    lds.l @r15+,PR
    bra FUN_ce319c2
    mov.l @r15+,r14

LAB_ce31c40:
    mov r4,r3
    mov.l @(PTR_ce31c9c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31c52:
    mov r4,r3
    mov.l @(PTR_ce31ca0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31c64:
    mov r4,r3
    mov.l @(PTR_ce31ca4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c76:
    #data 0x01f9
DAT_ce31c78:
    #data 0x01a1
DAT_ce31c7a:
    #data 0x0141
DAT_ce31c7c:
    #data 0x01a3
    #align4

PTR_ce31c80:
    #data loc_8c056de4
PTR_ce31c84:
    #data loc_8c05218a
PTR_ce31c88:
    #data loc_8c035162
PTR_ce31c8c:
    #data loc_8c05115a
PTR_ce31c90:
    #data loc_8c2896b0
PTR_ce31c94:
    #data loc_8c034e8c
PTR_ce31c98:
    #data loc_8c034dee
PTR_ce31c9c:
    #data PTR_ce33e10
PTR_ce31ca0:
    #data PTR_ce33e18
PTR_ce31ca4:
    #data PTR_ce33e20

;=============================================

LAB_ce31ca8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31d34,pc),r3
    mov.l r5,@r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31d38,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31d3c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31d30,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31cde
    mov.l @(PTR_ce31d40,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31cde:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31d44,pc),r3
    mov 0x15,r5
    fmov fr4,@(r0,r14)
    mov 0x02,r6
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce31d04:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31d48,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d2a
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31d32,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)

LAB_ce31d2a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d30:
    #data 0x01f9
DAT_ce31d32:
    #data 0x012c
    #align4

PTR_ce31d34:
    #data loc_8c05218a
PTR_ce31d38:
    #data loc_8c056de4
PTR_ce31d3c:
    #data loc_8c035162
PTR_ce31d40:
    #data loc_8c05115a
PTR_ce31d44:
    #data loc_8c034e8c
PTR_ce31d48:
    #data loc_8c034dee

;=============================================

LAB_ce31d4c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31e28
    mov.w @(DAT_ce31e6c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31dc6
    mov.w @(DAT_ce31e6e,pc),r0
    mov.w @(DAT_ce31e70,pc),r3
    mov.w @(r0,r14),r0
    extu.w r0,r0
    and r3,r0
    or 0x60,r0
    tst r0,r0
    bt LAB_ce31dc6
    mov.w @(DAT_ce31e6e,pc),r0
    mov.w @(DAT_ce31e72,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31d88
    mov 0x01,r0
    mov.w r0,@(0x1e,r14)

LAB_ce31d88:
    mov.w @(DAT_ce31e6e,pc),r0
    mov.w @(DAT_ce31e74,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31d98
    mov 0x02,r0
    mov.w r0,@(0x1e,r14)

LAB_ce31d98:
    mov.w @(DAT_ce31e6e,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x40,r0
    bt LAB_ce31da6
    mov 0x03,r0
    mov.w r0,@(0x1e,r14)

LAB_ce31da6:
    mov.w @(DAT_ce31e6e,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x20,r0
    bt LAB_ce31db4
    mov 0x04,r0
    mov.w r0,@(0x1e,r14)

LAB_ce31db4:
    mov.w @(DAT_ce31e6e,pc),r0
    mov.w @(DAT_ce31e76,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31dc6
    mov.w @(0x1e,r14),r0
    add 0x05,r0
    mov.w r0,@(0x1e,r14)

LAB_ce31dc6:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31e80,pc),r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(0x1e,r14),r0
    shll r0
    shll r0
    mov.w @(r0,r4),r3
    mov.w @(DAT_ce31e78,pc),r0
    lds r3,FPUL
    mov.l @(r0,r14),r2
    mov 0x34,r0
    float FPUL,fr3
    fmov.s @(r0,r2),fr2
    mova @(DAT_ce31e84,pc),r0
    fmov.s @r0,fr0
    mov 0x34,r0
    fmac fr0,fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(0x1e,r14),r0
    shll r0
    shll r0
    add r0,r4
    mov.w @(0x2,r4),r0
    mov r0,r3
    lds r3,FPUL
    mov.w @(DAT_ce31e78,pc),r0
    float FPUL,fr3
    mov.l @(r0,r14),r2
    mov 0x38,r0
    fmov.s @(r0,r2),fr2
    mova @(DAT_ce31e88,pc),r0
    fmov.s @r0,fr0
    mov 0x38,r0
    mov.l @(PTR_ce31e8c,pc),r3
    fmac fr0,fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31e7a,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce31e90,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    mov 0x03,r6
    lds.l @r15+,PR
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e28:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e2e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31e94,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e66
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce31e7c,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt/s LAB_ce31e54
    mov r14,r4
    mov.w @(DAT_ce31e7e,pc),r0
    mov 0x00,r2
    bra LAB_ce31e60
    mov.b r2,@(r0,r14)

LAB_ce31e54:
    mov.w @(DAT_ce31e7e,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0xDD,r0
    mov.b r3,@(r0,r14)

LAB_ce31e60:
    lds.l @r15+,PR
    bra FUN_ce31a0c
    mov.l @r15+,r14

LAB_ce31e66:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e6c:
    #data 0x0525
DAT_ce31e6e:
    #data 0x0340
DAT_ce31e70:
    #data 0x0300
DAT_ce31e72:
    #data 0x0200
DAT_ce31e74:
    #data 0x0100
DAT_ce31e76:
    #data 0x1000
DAT_ce31e78:
    #data 0x020c
DAT_ce31e7a:
    #data 0x012c
DAT_ce31e7c:
    #data 0x041c
DAT_ce31e7e:
    #data 0x01f9
    #align4

PTR_ce31e80:
    #data DAT_ce33bb8
DAT_ce31e84:
    #data 0x3fd55555
DAT_ce31e88:
    #data 0x40092492
PTR_ce31e8c:
    #data loc_8c05218a
PTR_ce31e90:
    #data loc_8c034e8c
PTR_ce31e94:
    #data loc_8c034dee

;=============================================

LAB_ce31e98:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce31ee4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31fb4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31fb8,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31fbc,pc),r3
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
    mov.l @(PTR_ce31fc0,pc),r3
    mov 0x04,r6
    fmov fr4,@(r0,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ee4:
    mov.l @(PTR_ce31fc4,pc),r3
    mov 0x00,r13
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31f28
    mov.w @(DAT_ce31fa8,pc),r0
    mov 0xFF,r3
    mov.b r3,@(r0,r14)
    add 0x29,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31f18
    mov r14,r4
    mov.w @(DAT_ce31faa,pc),r0
    mov 0x11,r3
    mov.b r13,@(r0,r14)
    add 0xD8,r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r13,@(r0,r14)

LAB_ce31f18:
    mov.l @(PTR_ce31fc8,pc),r3
    jsr @r3
    nop
    mova @(DAT_ce31fcc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    bra LAB_ce31f5a
    fmov fr3,@(r0,r14)

LAB_ce31f28:
    mov.w @(DAT_ce31fac,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f32
    mov.b r13,@(r0,r14)

LAB_ce31f32:
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce31fae,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31f5a
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce31fd0,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31fb0,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31fd4,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31f5a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31f62:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf/s LAB_ce31f94
    mov r5,r13
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31fb4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31fc0,pc),r2
    mov 0x15,r5
    mov 0x05,r6
    jsr @r2
    mov r14,r4
    bsr FUN_ce31990
    mov r14,r4
    bra LAB_ce32038
    nop

LAB_ce31f94:
    mov.l @(PTR_ce31fc4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31fd8
    bsr FUN_ce31a0c
    mov r14,r4
    bra LAB_ce32038
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31fa8:
    #data 0x01d3
DAT_ce31faa:
    #data 0x01fc
DAT_ce31fac:
    #data 0x0141
DAT_ce31fae:
    #data 0x041c
DAT_ce31fb0:
    #data 0x01f9
    #align4

PTR_ce31fb4:
    #data loc_8c05218a
PTR_ce31fb8:
    #data loc_8c056de4
PTR_ce31fbc:
    #data loc_8c035162
PTR_ce31fc0:
    #data loc_8c034e8c
PTR_ce31fc4:
    #data loc_8c034dee
PTR_ce31fc8:
    #data loc_8c05176e
DAT_ce31fcc:
    #data 0xc04db6db
PTR_ce31fd0:
    #data loc_8c0511b4
PTR_ce31fd4:
    #data loc_8c051648

;=============================================

LAB_ce31fd8:
    mov.w @(DAT_ce320f2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32034
    mov 0x00,r12
    mov.l @(PTR_ce32104,pc),r3
    mov.b r12,@(r0,r14)
    mova @(DAT_ce320fc,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32100,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32108,pc),r2
    mov r12,r5
    jsr @r2
    mov r14,r4
    mov 0x01,r0
    mov.l @(PTR_ce3210c,pc),r3
    mov.b r0,@(0xd,r13)
    mov 0x28,r6
    mov.w @(DAT_ce320f4,pc),r0
    mov.w r0,@(0xe,r13)
    mov 0x14,r0
    mov.b r12,@(r0,r13)
    mov 0x15,r0
    mov.b r12,@(r0,r13)
    mov.w @(0xe,r13),r0
    mov r0,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32110,pc),r2
    mov r13,r5
    mov r12,r6
    add 0x0E,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce320f6,pc),r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce320f8,pc),r0
    mov.w r12,@(r0,r14)

LAB_ce32034:
    bsr FUN_ce319c2
    mov r14,r4

LAB_ce32038:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32044:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf/s LAB_ce32076
    mov r5,r13
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32114,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32118,pc),r2
    mov 0x15,r5
    mov 0x06,r6
    jsr @r2
    mov r14,r4
    bsr FUN_ce31990
    mov r14,r4
    bra LAB_ce320e6
    nop

LAB_ce32076:
    mov.l @(PTR_ce3211c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3208a
    bsr FUN_ce31a0c
    mov r14,r4
    bra LAB_ce320e6
    nop

LAB_ce3208a:
    mov.w @(DAT_ce320f2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce320e2
    mov 0x00,r12
    mov.l @(PTR_ce32104,pc),r3
    mov.b r12,@(r0,r14)
    mova @(DAT_ce32120,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32124,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32108,pc),r2
    mov r12,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce320f4,pc),r0
    mov r13,r5
    mov.w @(DAT_ce320f8,pc),r1
    add 0x0E,r5
    mov.w r0,@(0xe,r13)
    mov 0x02,r0
    mov.b r0,@(0xd,r13)
    mov 0x14,r0
    mov.b r12,@(r0,r13)
    mov 0x15,r0
    mov.b r12,@(r0,r13)
    add r14,r1
    mov.w @(0xe,r13),r0
    mov 0x02,r6
    mov.l @(PTR_ce32110,pc),r3
    mov.w r0,@r1
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce320fa,pc),r0
    mov.w r12,@(r0,r14)
    add 0x08,r0
    mov.b r12,@(r0,r14)

LAB_ce320e2:
    bsr FUN_ce319c2
    mov r14,r4

LAB_ce320e6:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320f2:
    #data 0x0141
DAT_ce320f4:
    #data 0x0258
DAT_ce320f6:
    #data 0x0200
DAT_ce320f8:
    #data 0x03ea
DAT_ce320fa:
    #data 0x03e6
    #align4

DAT_ce320fc:
    #data 0xc0d55555
DAT_ce32100:
    #data 0x434b9249
PTR_ce32104:
    #data loc_8c050962
PTR_ce32108:
    #data loc_8c035162
PTR_ce3210c:
    #data loc_8c0599f4
PTR_ce32110:
    #data loc_8c0f047c
PTR_ce32114:
    #data loc_8c05218a
PTR_ce32118:
    #data loc_8c034e8c
PTR_ce3211c:
    #data loc_8c034dee
DAT_ce32120:
    #data 0xc1ad5555
DAT_ce32124:
    #data 0x4331db6d

;=============================================

LAB_ce32128:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce3224c,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32250,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32254,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32244,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3215e
    mov.l @(PTR_ce32258,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3215e:
    mov.l @(PTR_ce3225c,pc),r3
    mov 0x15,r5
    mov 0x07,r6
    jsr @r3
    mov r14,r4
    bsr FUN_ce31990
    mov r14,r4
    mov 0x5A,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce3217a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce321a2
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3225c,pc),r3
    mov 0x09,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce321a2:
    mov.l @(PTR_ce32260,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32246,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32204
    mov.l @(PTR_ce32264,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce321c6
    mov r0,r5
    mov.w @(DAT_ce32244,pc),r0
    mov.b @(r0,r5),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce321dc

LAB_ce321c6:
    mov.l @(PTR_ce32268,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32204
    mov r0,r5
    mov.w @(DAT_ce32244,pc),r0
    mov.b @(r0,r5),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32204

LAB_ce321dc:
    mov.w @(DAT_ce32248,pc),r0
    mov 0x03,r2
    mov 0x40,r3
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r2
    or r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3224a,pc),r2
    or r2,r1
    mov.b r1,@(r0,r14)
    mov.l @(PTR_ce3226c,pc),r1
    jsr @r1
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32204:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce319c2
    mov.l @r15+,r14
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32212:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32260,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3222a
    mov.l @r15,r4
    add 0x04,r15
    bra FUN_ce31a0c
    lds.l @r15+,PR

LAB_ce3222a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32232:
    mov r4,r3
    mov.l @(PTR_ce32270,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32244:
    #data 0x01f9
DAT_ce32246:
    #data 0x0141
DAT_ce32248:
    #data 0x01f7
DAT_ce3224a:
    #data 0x0080
    #align4

PTR_ce3224c:
    #data loc_8c056de4
PTR_ce32250:
    #data loc_8c05218a
PTR_ce32254:
    #data loc_8c035162
PTR_ce32258:
    #data loc_8c05115a
PTR_ce3225c:
    #data loc_8c034e8c
PTR_ce32260:
    #data loc_8c034dee
PTR_ce32264:
    #data loc_8c045790
PTR_ce32268:
    #data loc_8c0457e0
PTR_ce3226c:
    #data loc_8c0522e0
PTR_ce32270:
    #data PTR_ce33e30

;=============================================

LAB_ce32274:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce323b0,pc),r3
    mov.l r5,@r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce323a2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3229a
    mov.l @(PTR_ce323b4,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3229a:
    mov.w @(DAT_ce323a4,pc),r0
    mov 0x33,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce323b8,pc),r3
    mov 0x16,r5
    mov.l r4,@(r0,r14)
    mov r4,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce323bc,pc),r2
    jsr @r2
    mov r14,r4
    bsr FUN_ce31990
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce322d8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce323c0,pc),r3
    mov r4,r14
    jsr @r3
    mov r5,r13
    mov.w @(DAT_ce323a6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32360
    mov 0x00,r12
    mov.l @(PTR_ce323c4,pc),r3
    mov.b r12,@(r0,r14)
    mov 0x02,r5
    mov.b @(0x7,r14),r0
    mov r12,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce323c8,pc),r0
    mov.l @(PTR_ce323d0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce323cc,pc),r0
    mov r15,r5
    mov 0x03,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce323d4,pc),r2
    mov r12,r5
    jsr @r2
    mov r14,r4
    mov 0x16,r0
    mov r13,r5
    mov 0x01,r3
    mov.b r3,@(r0,r13)
    mov 0x03,r0
    mov.b r0,@(0xd,r13)
    mov r12,r3
    mov.w @(DAT_ce323a8,pc),r0
    mov r3,r2
    add 0x0E,r5
    mov.w r0,@(0xe,r13)
    mov 0x14,r0
    mov.b r3,@(r0,r13)
    mov 0x15,r0
    mov.l @(PTR_ce323d8,pc),r3
    mov 0x06,r6
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce323aa,pc),r0
    mov r12,r2
    mov r2,r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce323ac,pc),r0
    mov.w r2,@(r0,r14)
    add 0xFC,r0
    mov.w r2,@(r0,r14)
    add 0x08,r0
    mov.b r3,@(r0,r14)

LAB_ce32360:
    bsr FUN_ce319c2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32370:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce323c0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32388
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce31a0c
    mov.l @r15+,r14

LAB_ce32388:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce319c2
    mov.l @r15+,r14

LAB_ce32390:
    mov r4,r3
    mov.l @(PTR_ce323dc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce323a2:
    #data 0x01f9
DAT_ce323a4:
    #data 0x01a1
DAT_ce323a6:
    #data 0x0141
DAT_ce323a8:
    #data 0x01a4
DAT_ce323aa:
    #data 0x0200
DAT_ce323ac:
    #data 0x03ea
    #align4

PTR_ce323b0:
    #data loc_8c05218a
PTR_ce323b4:
    #data loc_8c05115a
PTR_ce323b8:
    #data loc_8c2896b0
PTR_ce323bc:
    #data loc_8c034e8c
PTR_ce323c0:
    #data loc_8c034dee
PTR_ce323c4:
    #data loc_8c0e8090
DAT_ce323c8:
    #data 0x413aaaaa
DAT_ce323cc:
    #data 0x43092492
PTR_ce323d0:
    #data loc_8c050962
PTR_ce323d4:
    #data loc_8c035162
PTR_ce323d8:
    #data loc_8c0f047c
PTR_ce323dc:
    #data PTR_ce33e3c

;=============================================

LAB_ce323e0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32516,pc),r3
    mov r4,r14
    mov.w @(DAT_ce32518,pc),r0
    mov 0x10,r4
    mov.l @(PTR_ce3252c,pc),r1
    fldi0 fr4
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce3251a,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x76,r3
    mov.b @(0x2,r14),r0
    mov.l @r1,r2
    extu.b r0,r0
    shll2 r0
    shll2 r0
    add r2,r3
    or 0x01,r0
    mov.b r0,@r3
    mov.w @(DAT_ce3251c,pc),r0
    mov.b r4,@(r0,r14)
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
    mov.w @(DAT_ce3251e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce3243e
    cmp/eq 0x01,r0
    bt LAB_ce32446
    bra LAB_ce3244e
    nop

LAB_ce3243e:
    mov.w @(DAT_ce32520,pc),r0
    mov 0x07,r3
    bra LAB_ce32454
    mov.b r3,@(r0,r14)

LAB_ce32446:
    mov.w @(DAT_ce32520,pc),r0
    mov 0x08,r1
    bra LAB_ce32454
    mov.b r1,@(r0,r14)

LAB_ce3244e:
    mov.w @(DAT_ce32520,pc),r0
    mov 0x09,r2
    mov.b r2,@(r0,r14)

LAB_ce32454:
    mov.w @(DAT_ce32520,pc),r0
    mov 0x0F,r5
    mov.l @(PTR_ce32530,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    bsr FUN_ce3194c
    mov r14,r4
    mov.l @(PTR_ce32534,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce32474:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32522,pc),r0
    mov r4,r14
    mov 0x02,r4
    mov.l r5,@r15
    mov.b r4,@(r0,r14)
    mov 0x05,r5
    mov.w @(DAT_ce3251c,pc),r0
    mov 0x01,r3
    mov.b r5,@(r0,r14)
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce32524,pc),r0
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.l @(PTR_ce32538,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3250e
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32524,pc),r0
    mov.b r4,@(r0,r14)
    mov.l @r15,r3
    mov r4,r0
    nop
    mov.b r0,@(0xd,r3)
    mov 0x34,r3
    mov.w @(DAT_ce32526,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3252c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3251e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce324f0
    cmp/eq 0x01,r0
    bt LAB_ce324f0
    bra LAB_ce324f4
    nop

LAB_ce324f0:
    bra LAB_ce324f6
    mov 0x07,r2

LAB_ce324f4:
    mov 0x08,r2

LAB_ce324f6:
    mov.w @(DAT_ce32520,pc),r0
    mov 0x16,r5
    mov.l @(PTR_ce32530,pc),r3
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32528,pc),r0
    mov 0x06,r3
    mov.l @(r0,r14),r4
    add 0x2E,r0
    mov.b r3,@(r0,r4)

LAB_ce3250e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32516:
    #data 0x00ff
DAT_ce32518:
    #data 0x03f9
DAT_ce3251a:
    #data 0x0327
DAT_ce3251c:
    #data 0x0328
DAT_ce3251e:
    #data 0x01f9
DAT_ce32520:
    #data 0x0158
DAT_ce32522:
    #data 0x03f8
DAT_ce32524:
    #data 0x01ea
DAT_ce32526:
    #data 0x01a1
DAT_ce32528:
    #data 0x01c8
    #align4

PTR_ce3252c:
    #data loc_8c2896b0
PTR_ce32530:
    #data loc_8c034e8c
PTR_ce32534:
    #data loc_8c0424fe
PTR_ce32538:
    #data loc_8c034dee

;=============================================

LAB_ce3253c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32640,pc),r0
    mov r4,r14
    mov 0x02,r4
    mov.l r5,@r15
    mov.b r4,@(r0,r14)
    mov 0x05,r5
    mov.w @(DAT_ce32642,pc),r0
    mov 0x00,r13
    mov.l @(PTR_ce32654,pc),r3
    mov.b r5,@(r0,r14)
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce32644,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3258c
    mov.w @(DAT_ce32646,pc),r0
    mov 0x00,r5
    mov.l @(PTR_ce32658,pc),r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32648,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra FUN_ce31a0c
    mov.l @r15+,r14

LAB_ce3258c:
    mov.w @(DAT_ce3264a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32612
    mov.w @(DAT_ce3264c,pc),r0
    mov 0x02,r7
    mov.l @(PTR_ce3265c,pc),r3
    mov 0x00,r5
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3264a,pc),r0
    mov.l @(PTR_ce32660,pc),r4
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bt LAB_ce325b8
    cmp/eq 0x02,r0
    bt LAB_ce325c0
    cmp/eq 0x03,r0
    bt LAB_ce325e6
    bra LAB_ce3260e
    nop

LAB_ce325b8:
    mov.w @(DAT_ce3264e,pc),r0
    mov 0x34,r3
    bra LAB_ce325c6
    mov.b r3,@(r0,r14)

LAB_ce325c0:
    mov.w @(DAT_ce3264e,pc),r0
    mov 0x35,r2
    mov.b r2,@(r0,r14)

LAB_ce325c6:
    mov.w @(DAT_ce32650,pc),r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r4,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    bra LAB_ce3260e
    nop

LAB_ce325e6:
    mov.w @(DAT_ce3264e,pc),r0
    mov 0x36,r1
    mov.b r1,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r4,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov 0x16,r0
    mov.l @r15,r3
    mov.b r13,@(r0,r3)

LAB_ce3260e:
    mov.w @(DAT_ce3264a,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce32612:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3261c:
    mov r4,r3
    mov.l @(PTR_ce32664,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3262e:
    mov r4,r3
    mov.l @(PTR_ce32668,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32640:
    #data 0x03f8
DAT_ce32642:
    #data 0x0328
DAT_ce32644:
    #data 0x01ed
DAT_ce32646:
    #data 0x03f9
DAT_ce32648:
    #data 0x0327
DAT_ce3264a:
    #data 0x0141
DAT_ce3264c:
    #data 0x0140
DAT_ce3264e:
    #data 0x01a1
DAT_ce32650:
    #data 0x01ac
    #align4

PTR_ce32654:
    #data loc_8c034dee
PTR_ce32658:
    #data loc_8c035162
PTR_ce3265c:
    #data loc_8c03544c
PTR_ce32660:
    #data loc_8c2896b0
PTR_ce32664:
    #data PTR_ce33e48
PTR_ce32668:
    #data PTR_ce33e54

;=============================================

LAB_ce3266c:
    mov.w @(DAT_ce32734,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3273c,pc),r4
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce3268a
    cmp/eq 0x01,r0
    bt LAB_ce3268a
    cmp/eq 0x02,r0
    bt LAB_ce32698
    bra LAB_ce326aa
    nop

LAB_ce3268a:
    mov.w @(DAT_ce32736,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32738,pc),r0
    mov.l r4,@(r0,r14)
    bra LAB_ce326a4
    mov 0x14,r5

LAB_ce32698:
    mov.w @(DAT_ce32736,pc),r0
    mov 0x02,r3
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32738,pc),r0
    mov.l r4,@(r0,r14)

LAB_ce326a4:
    mov.l @(PTR_ce32740,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce326aa:
    mov.w @(DAT_ce32736,pc),r0
    mov 0x16,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce32744,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce326ba:
    mov.w @(DAT_ce32734,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3273c,pc),r4
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce326d8
    cmp/eq 0x01,r0
    bt LAB_ce326d8
    cmp/eq 0x02,r0
    bt LAB_ce326e6
    bra LAB_ce326f8
    nop

LAB_ce326d8:
    mov.w @(DAT_ce32736,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32738,pc),r0
    mov.l r4,@(r0,r14)
    bra LAB_ce326f2
    mov 0x14,r5

LAB_ce326e6:
    mov.w @(DAT_ce32736,pc),r0
    mov 0x04,r3
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32738,pc),r0
    mov.l r4,@(r0,r14)

LAB_ce326f2:
    mov.l @(PTR_ce32740,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce326f8:
    mov.w @(DAT_ce32736,pc),r0
    mov 0x16,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce32744,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32708:
    mov.w @(DAT_ce32734,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3273c,pc),r4
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce32726
    cmp/eq 0x01,r0
    bt LAB_ce32726
    cmp/eq 0x02,r0
    bt LAB_ce32748
    bra LAB_ce3275a
    nop

LAB_ce32726:
    mov.w @(DAT_ce32736,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32738,pc),r0
    mov.l r4,@(r0,r14)
    bra LAB_ce32754
    mov 0x14,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32734:
    #data 0x01e8
DAT_ce32736:
    #data 0x0158
DAT_ce32738:
    #data 0x03f4
    #align4

PTR_ce3273c:
    #data DAT_ce33c28
PTR_ce32740:
    #data loc_8c04223a
PTR_ce32744:
    #data loc_8c034e8c

;=============================================

LAB_ce32748:
    mov.w @(DAT_ce32856,pc),r0
    mov 0x06,r3
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32858,pc),r0
    mov.l r4,@(r0,r14)

LAB_ce32754:
    mov.l @(PTR_ce32868,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3275a:
    mov.w @(DAT_ce32856,pc),r0
    mov 0x16,r5
    mov.l @(PTR_ce3286c,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3285a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce32776
    mov.w @(DAT_ce3285a,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce32776:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3277c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32870,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce327aa
    mov.w @(DAT_ce3285c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce327a0
    lds.l @r15+,PR
    mov.l @(PTR_ce32874,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce327a0:
    lds.l @r15+,PR
    mov.l @(PTR_ce32878,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce327aa:
    mov.w @(DAT_ce3285e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce327d2
    mov.l @(PTR_ce3287c,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf/s LAB_ce327ca
    mov r0,r5
    mov.l @(PTR_ce32880,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce327d2
    mov r0,r5

LAB_ce327ca:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce327d8
    mov.l @r15+,r14

LAB_ce327d2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce327d8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    mov.l r12,@-r15
    mov 0x00,r12
    sts.l PR,@-r15
    mov r12,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x04,r3
    mov.w @(DAT_ce32860,pc),r0
    mov r13,r5
    mov.b r3,@(r0,r14)
    mov 0x40,r3
    mov.b @(r0,r14),r2
    or r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce32862,pc),r2
    or r2,r1
    mov.b r1,@(r0,r14)
    mov.l @(PTR_ce32884,pc),r1
    jsr @r1
    mov r14,r4
    mov.w @(DAT_ce32864,pc),r0
    mov 0x04,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32888,pc),r3
    jsr @r3
    mov r14,r4
    mov r12,r0
    nop
    mov.b r0,@(0x6,r13)
    mov 0x6C,r0
    fldi0 fr3
    fmov fr3,@(r0,r13)
    mov 0x68,r0
    fmov fr3,@(r0,r13)
    mov 0x60,r0
    fmov fr3,@(r0,r13)
    mov 0x5C,r0
    fmov fr3,@(r0,r13)
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32844:
    mov r4,r3
    mov.l @(PTR_ce3288c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32856:
    #data 0x0158
DAT_ce32858:
    #data 0x03f4
DAT_ce3285a:
    #data 0x01d6
DAT_ce3285c:
    #data 0x01f9
DAT_ce3285e:
    #data 0x0141
DAT_ce32860:
    #data 0x01f7
DAT_ce32862:
    #data 0x0080
DAT_ce32864:
    #data 0x01e9
    #align4

PTR_ce32868:
    #data loc_8c04223a
PTR_ce3286c:
    #data loc_8c034e8c
PTR_ce32870:
    #data loc_8c034dee
PTR_ce32874:
    #data loc_8c05176e
PTR_ce32878:
    #data loc_8c051648
PTR_ce3287c:
    #data loc_8c045790
PTR_ce32880:
    #data loc_8c0457e0
PTR_ce32884:
    #data loc_8c0523d8
PTR_ce32888:
    #data loc_8c0530d8
PTR_ce3288c:
    #data PTR_ce33e5c

;=============================================

LAB_ce32890:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce329b8,pc),r3
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
    mov.w @(DAT_ce329b0,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce329b2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce329bc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce329b4,pc),r0
    mov 0x31,r3
    mov 0x02,r6
    mov r14,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce329c0,pc),r3
    mov 0x14,r5
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
    mov.l @(PTR_ce329c4,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce328fe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce329c8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3291e
    mov.l @(PTR_ce329cc,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3291e:
    mov.w @(DAT_ce329b6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32946
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce329d0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce329d4,pc),r0
    mov.l @(PTR_ce329d8,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32946:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3294e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce32994
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce329b8,pc),r3
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
    mov 0x00,r3
    mov.w @(DAT_ce329b0,pc),r0
    mov r14,r4
    mov 0x03,r6
    mov.b r3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce329b2,pc),r0
    mov.l @(PTR_ce329c4,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32994:
    mov.l @(PTR_ce329c8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce329aa
    lds.l @r15+,PR
    mov.l @(PTR_ce329cc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce329aa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329b0:
    #data 0x01f9
DAT_ce329b2:
    #data 0x041c
DAT_ce329b4:
    #data 0x01a1
DAT_ce329b6:
    #data 0x0141
    #align4

PTR_ce329b8:
    #data loc_8c05218a
PTR_ce329bc:
    #data loc_8c05115a
PTR_ce329c0:
    #data loc_8c2896b0
PTR_ce329c4:
    #data loc_8c034e8c
PTR_ce329c8:
    #data loc_8c034dee
PTR_ce329cc:
    #data loc_8c051648
DAT_ce329d0:
    #data 0x424eaaaa
DAT_ce329d4:
    #data 0x42f00000
PTR_ce329d8:
    #data loc_8c050ea4

;=============================================

LAB_ce329dc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov r5,r12
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32b18,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32b1c,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32b12,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32a0c
    mov.l @(PTR_ce32b20,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32a0c:
    mov.w @(DAT_ce32b14,pc),r0
    mov 0x32,r3
    mov 0x00,r13
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32b24,pc),r3
    mov 0x15,r5
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
    mov.l @(PTR_ce32b28,pc),r2
    jsr @r2
    mov r14,r4
    mov r12,r4
    add 0x06,r4

LAB_ce32a40:
    mov r12,r3
    mov.b r13,@r4
    add 0x0C,r3
    add 0x01,r4
    cmp/hs r3,r4
    bf LAB_ce32a40
    mov r13,r0
    nop
    mov.b r0,@(0xc,r12)
    mov r12,r5
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32a5e:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov r4,r13
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    mov.l r9,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32b2c,pc),r3
    jsr @r3
    mov r5,r12
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a98
    mov.b @(0x6,r13),r0
    mov r13,r4
    mov.l @(PTR_ce32b28,pc),r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r13)
    mov 0x0B,r6
    lds.l @r15+,PR
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a98:
    mov.w @(DAT_ce32b16,pc),r0
    mov.b @(r0,r13),r2
    tst r2,r2
    bt LAB_ce32ae0
    mov.l @(PTR_ce32b30,pc),r9
    mov 0x00,r4
    mov 0x06,r11
    mov r4,r14
    mov.b r4,@(r0,r13)
    mov 0x01,r10

LAB_ce32aac:
    mov r12,r3
    add r14,r3
    mov.b @r3,r2
    tst r2,r2
    bf LAB_ce32ac4
    mov r12,r2
    add r14,r2
    mov 0x00,r5
    mov r14,r6
    mov.b r10,@r2
    jsr @r9
    mov r13,r4

LAB_ce32ac4:
    add 0x01,r14
    cmp/ge r11,r14
    bf LAB_ce32aac
    lds.l @r15+,PR
    mov r13,r4
    mov.l @(PTR_ce32b34,pc),r2
    mov 0x22,r5
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32ae0:
    lds.l @r15+,PR
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32af0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32b2c,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32b3c
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32b38,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b12:
    #data 0x01f9
DAT_ce32b14:
    #data 0x01a1
DAT_ce32b16:
    #data 0x0141
    #align4

PTR_ce32b18:
    #data loc_8c05218a
PTR_ce32b1c:
    #data loc_8c035162
PTR_ce32b20:
    #data loc_8c05115a
PTR_ce32b24:
    #data loc_8c2896b0
PTR_ce32b28:
    #data loc_8c034e8c
PTR_ce32b2c:
    #data loc_8c034dee
PTR_ce32b30:
    #data loc_8c0a6d1c
PTR_ce32b34:
    #data loc_8c042008
PTR_ce32b38:
    #data loc_8c051648

;=============================================

LAB_ce32b3c:
    mov.w @(DAT_ce32c58,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32b52
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32c5a,pc),r0
    mov.l @r15,r2
    mov.b @(r0,r14),r0
    add 0x01,r0
    mov.b r0,@(0xc,r2)

LAB_ce32b52:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b5a:
    mov r4,r3
    mov.l @(PTR_ce32c60,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32b6c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32c64,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32c68,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32c6c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32c5c,pc),r0
    mov 0x02,r2
    mov 0x00,r4
    mov.l @(PTR_ce32c70,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x07,r5
    mov.b @(0x2,r14),r0
    mov 0x02,r6
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32c74,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce32bca:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32c78,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32be4
    lds.l @r15+,PR
    mov.l @(PTR_ce32c7c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32be4:
    mov.w @(DAT_ce32c58,pc),r0
    mov.l @(PTR_ce32c70,pc),r5
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32c14
    mov 0x00,r4
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
    mov.b @(0x2,r14),r0
    mov.l @r5,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)

LAB_ce32c14:
    mov.w @(DAT_ce32c5e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32c40
    mov.b r4,@(r0,r14)
    add 0x61,r0
    mov 0x02,r3
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

LAB_ce32c40:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c46:
    mov r4,r3
    mov.l @(PTR_ce32c80,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c58:
    #data 0x0141
DAT_ce32c5a:
    #data 0x01a3
DAT_ce32c5c:
    #data 0x01a1
DAT_ce32c5e:
    #data 0x0140
    #align4

PTR_ce32c60:
    #data PTR_ce33e64
PTR_ce32c64:
    #data loc_8c05218a
PTR_ce32c68:
    #data loc_8c035162
PTR_ce32c6c:
    #data loc_8c05115a
PTR_ce32c70:
    #data loc_8c2896b0
PTR_ce32c74:
    #data loc_8c034e8c
PTR_ce32c78:
    #data loc_8c034dee
PTR_ce32c7c:
    #data loc_8c051648
PTR_ce32c80:
    #data PTR_ce33e70

;=============================================

LAB_ce32c84:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32de4,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32de8,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32dec,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32dd6,pc),r0
    mov 0x08,r2
    mov 0x00,r4
    mov.l @(PTR_ce32df0,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x09,r5
    mov.b @(0x2,r14),r0
    mov 0x02,r6
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32df4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce32ce2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32df8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32cfc
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32dfc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32cfc:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32d04:
    mov r4,r3
    mov.l @(PTR_ce32e00,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32d16:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32dd8,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32d38
    mov.w @(DAT_ce32ddc,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32dda,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32d38:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32de4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32de8,pc),r2
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
    mov.w @(DAT_ce32dde,pc),r0
    mov.l @(PTR_ce32dec,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32dd6,pc),r0
    mov 0x38,r2
    mov 0x00,r13
    mov.l @(PTR_ce32df0,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x16,r5
    mov.b @(0x2,r14),r0
    mov 0x09,r6
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32df4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r3
    mov 0x16,r0
    mov r14,r4
    mov.b r13,@(r0,r3)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32dae:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32de0,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32de2,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32dd8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce32e04
    mov r5,r12
    bra LAB_ce32e06
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32dd6:
    #data 0x01a1
DAT_ce32dd8:
    #data 0x0255
DAT_ce32dda:
    #data 0x00ff
DAT_ce32ddc:
    #data 0x03f0
DAT_ce32dde:
    #data 0x041c
DAT_ce32de0:
    #data 0x03f8
DAT_ce32de2:
    #data 0x0328
    #align4

PTR_ce32de4:
    #data loc_8c05218a
PTR_ce32de8:
    #data loc_8c035162
PTR_ce32dec:
    #data loc_8c05115a
PTR_ce32df0:
    #data loc_8c2896b0
PTR_ce32df4:
    #data loc_8c034e8c
PTR_ce32df8:
    #data loc_8c034dee
PTR_ce32dfc:
    #data loc_8c051648
PTR_ce32e00:
    #data PTR_ce33e78

;=============================================

LAB_ce32e04:
    mov 0x00,r3

LAB_ce32e06:
    mov.w @(DAT_ce32eec,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32f00,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32eee,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32e74
    mov 0x00,r13
    mov.l @(PTR_ce32f04,pc),r3
    mov.b r13,@(r0,r14)
    mov 0x02,r5
    mov.b @(0x6,r14),r0
    mov r13,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32f08,pc),r0
    mov r13,r3
    fmov.s @r0,fr3
    mova @(DAT_ce32f0c,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce32ef0,pc),r0
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32f10,pc),r3
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov r0,r3
    mov.b r0,@(0xd,r12)
    mov.w r0,@(0xe,r12)
    mov 0x14,r0
    mov.b r3,@(r0,r12)
    mov 0x15,r0
    mov r13,r2
    mov.b r2,@(r0,r12)
    mov.w @(DAT_ce32ef2,pc),r0
    mov r2,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32ef4,pc),r0
    mov.w r3,@(r0,r14)
    add 0xFC,r0
    mov.w r3,@(r0,r14)
    add 0x08,r0
    mov.b r3,@(r0,r14)

LAB_ce32e74:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32e80:
    mov.w @(DAT_ce32ef6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32ef8,pc),r0
    mov.l @(PTR_ce32f00,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32eee,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32ee6
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov 0x38,r3
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32efa,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32f14,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mova @(DAT_ce32f18,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32efc,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32ee6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32ee6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32eec:
    #data 0x03f1
DAT_ce32eee:
    #data 0x0141
DAT_ce32ef0:
    #data 0x03f0
DAT_ce32ef2:
    #data 0x0200
DAT_ce32ef4:
    #data 0x03ea
DAT_ce32ef6:
    #data 0x03f8
DAT_ce32ef8:
    #data 0x0328
DAT_ce32efa:
    #data 0x01a1
DAT_ce32efc:
    #data 0x0130
    #align4

PTR_ce32f00:
    #data loc_8c034dee
PTR_ce32f04:
    #data loc_8c0e8090
DAT_ce32f08:
    #data 0x413aaaaa
DAT_ce32f0c:
    #data 0x43092492
PTR_ce32f10:
    #data loc_8c050834
PTR_ce32f14:
    #data loc_8c2896b0
DAT_ce32f18:
    #data 0xc0d55555

;=============================================

LAB_ce32f1c:
    mov.w @(DAT_ce33030,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x00,r13
    mov.w @(DAT_ce33032,pc),r0
    mov.l @(PTR_ce33040,pc),r3
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
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32f92
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce33044,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33034,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33036,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    mov.l @(PTR_ce33048,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    mov 0x0A,r6
    lds.l @r15+,PR
    mov 0x16,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f92:
    mov.w @(DAT_ce33038,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32ff4
    mov.w @(DAT_ce3303a,pc),r0
    mov 0x02,r7
    mov.l @(PTR_ce3304c,pc),r3
    mov 0x00,r5
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33038,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bt LAB_ce32fbc
    cmp/eq 0x02,r0
    bt LAB_ce32fc4
    cmp/eq 0x03,r0
    bt LAB_ce32fcc
    bra LAB_ce32ff0
    nop

LAB_ce32fbc:
    mov.w @(DAT_ce3303c,pc),r0
    mov 0x38,r3
    bra LAB_ce32fd2
    mov.b r3,@(r0,r14)

LAB_ce32fc4:
    mov.w @(DAT_ce3303c,pc),r0
    mov 0x39,r1
    bra LAB_ce32fd2
    mov.b r1,@(r0,r14)

LAB_ce32fcc:
    mov.w @(DAT_ce3303c,pc),r0
    mov 0x3A,r3
    mov.b r3,@(r0,r14)

LAB_ce32fd2:
    mov.w @(DAT_ce3303e,pc),r0
    mov.l @(PTR_ce33050,pc),r3
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

LAB_ce32ff0:
    mov.w @(DAT_ce33038,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce32ff4:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32ffc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33040,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33016
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33054,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33016:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3301e:
    mov r4,r3
    mov.l @(PTR_ce33058,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33030:
    #data 0x03f8
DAT_ce33032:
    #data 0x0328
DAT_ce33034:
    #data 0x03f9
DAT_ce33036:
    #data 0x0327
DAT_ce33038:
    #data 0x0141
DAT_ce3303a:
    #data 0x0140
DAT_ce3303c:
    #data 0x01a1
DAT_ce3303e:
    #data 0x01ac
    #align4

PTR_ce33040:
    #data loc_8c034dee
PTR_ce33044:
    #data loc_8c035162
PTR_ce33048:
    #data loc_8c034e8c
PTR_ce3304c:
    #data loc_8c03544c
PTR_ce33050:
    #data loc_8c2896b0
PTR_ce33054:
    #data loc_8c051648
PTR_ce33058:
    #data PTR_ce33e80

;=============================================

LAB_ce3305c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce331a4,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3307c
    mov.w @(DAT_ce331a8,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce331a6,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3307c:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce331bc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce331c0,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce331c4,pc),r3
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
    mov 0x3B,r3
    mov.w @(DAT_ce331aa,pc),r0
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce331ac,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce331c8,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce331cc,pc),r2
    mov 0x16,r5
    mov 0x0B,r6
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce330ea:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce331ae,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce331b0,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce331a4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3310c
    bra LAB_ce3310e
    mov 0x02,r3

LAB_ce3310c:
    mov 0x00,r3

LAB_ce3310e:
    mov.w @(DAT_ce331b2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce331d0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce331b4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33152
    mov 0x00,r4
    mov.l @(PTR_ce331dc,pc),r3
    mov.b r4,@(r0,r14)
    mov r15,r5
    mov.b @(0x6,r14),r0
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce331d4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce331d8,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce331a8,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    mov 0x03,r0
    mov.w r0,@(0x1e,r14)

LAB_ce33152:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3315a:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x02,r3
    mov.w @(DAT_ce331ae,pc),r0
    mov 0x05,r2
    mov.l r12,@-r15
    mov 0x00,r12
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce331b0,pc),r0
    mov.l @(PTR_ce331d0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce331e4
    mov.w @(DAT_ce331b6,pc),r0
    mov r14,r4
    mov.l @(PTR_ce331e0,pc),r3
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce331b8,pc),r0
    mov.b r12,@(r0,r14)
    add 0x01,r0
    mov.b r12,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331a4:
    #data 0x0255
DAT_ce331a6:
    #data 0x00ff
DAT_ce331a8:
    #data 0x03f0
DAT_ce331aa:
    #data 0x041c
DAT_ce331ac:
    #data 0x01a1
DAT_ce331ae:
    #data 0x03f8
DAT_ce331b0:
    #data 0x0328
DAT_ce331b2:
    #data 0x03f1
DAT_ce331b4:
    #data 0x0141
DAT_ce331b6:
    #data 0x03f9
DAT_ce331b8:
    #data 0x0327
    #align4

PTR_ce331bc:
    #data loc_8c05218a
PTR_ce331c0:
    #data loc_8c035162
PTR_ce331c4:
    #data loc_8c05115a
PTR_ce331c8:
    #data loc_8c2896b0
PTR_ce331cc:
    #data loc_8c034e8c
PTR_ce331d0:
    #data loc_8c034dee
DAT_ce331d4:
    #data 0x413aaaaa
DAT_ce331d8:
    #data 0x43092492
PTR_ce331dc:
    #data loc_8c050834
PTR_ce331e0:
    #data loc_8c051648

;=============================================

LAB_ce331e4:
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce3322a
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3322a
    mov 0x1E,r0
    mov.l @(PTR_ce332dc,pc),r10
    mov.w r0,@(0x1c,r14)
    mov r12,r13
    mov.w @(0x1e,r14),r0
    mov 0x06,r11
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)

LAB_ce33208:
    mov 0x00,r5
    mov r13,r6
    jsr @r10
    mov r14,r4
    add 0x01,r13
    cmp/ge r11,r13
    bf LAB_ce33208
    lds.l @r15+,PR
    mov.l @(PTR_ce332e0,pc),r2
    mov r14,r4
    mov 0x22,r5
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3322a:
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33238:
    mov r4,r3
    mov.l @(PTR_ce332e4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3324a:
    mov r4,r3
    mov.l @(PTR_ce332e8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3325c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce332ec,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce332d6,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce332f0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce332d8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3328c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3328c:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce332f4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x30,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce332f8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce332da,pc),r0
    mov r4,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce332fc,pc),r3
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
    mov.l @(PTR_ce33300,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce332d6:
    #data 0x01f9
DAT_ce332d8:
    #data 0x01d2
DAT_ce332da:
    #data 0x01a1
    #align4

PTR_ce332dc:
    #data loc_8c0a7724
PTR_ce332e0:
    #data loc_8c042008
PTR_ce332e4:
    #data PTR_ce33e94
PTR_ce332e8:
    #data PTR_ce33ea0
PTR_ce332ec:
    #data loc_8c035162
DAT_ce332f0:
    #data 0x41f00000
DAT_ce332f4:
    #data 0x40892492
DAT_ce332f8:
    #data 0xbf4db6db
PTR_ce332fc:
    #data loc_8c2896b0
PTR_ce33300:
    #data loc_8c034e8c

;=============================================

LAB_ce33304:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33408,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce3340c,pc),r3
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
    bt LAB_ce3336c
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce33410,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33414,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3336c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33372:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33408,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33394
    mov.l @(PTR_ce33418,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3341c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33394:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3339a:
    mov.w @(DAT_ce333fc,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce333fe,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    mov.w @(DAT_ce333fa,pc),r4
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt/s LAB_ce333f2
    add r14,r4
    mov.w @(DAT_ce33400,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce333f2
    mov.w @(DAT_ce33402,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce333f2
    mov 0x16,r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce333f2
    mov.l @(PTR_ce33420,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce333f2
    mov r0,r4
    mov.w @(DAT_ce33404,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce333f2:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce333fa:
    #data 0x02a4
DAT_ce333fc:
    #data 0x01fa
DAT_ce333fe:
    #data 0x0c00
DAT_ce33400:
    #data 0x01fe
DAT_ce33402:
    #data 0x01a3
DAT_ce33404:
    #data 0x01f7
    #align4

PTR_ce33408:
    #data loc_8c034dee
PTR_ce3340c:
    #data loc_8c052ce2
PTR_ce33410:
    #data loc_8c034e8c
PTR_ce33414:
    #data loc_8c0511b4
PTR_ce33418:
    #data loc_8c035162
PTR_ce3341c:
    #data loc_8c051854
PTR_ce33420:
    #data loc_8c045790

;=============================================

LAB_ce33424:
    mov.w @(DAT_ce3353a,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3353c,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    mov.w @(DAT_ce33538,pc),r4
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt/s LAB_ce334a0
    add r14,r4
    mov.w @(DAT_ce3353e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33470
    mov.w @(DAT_ce33540,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33470
    mov 0x16,r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce334a0
    mov.l @(PTR_ce33550,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce334a0
    mov r0,r4
    bra LAB_ce33492
    mov 0x01,r2

LAB_ce33470:
    mov.w @(DAT_ce3353e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce334a0
    mov.w @(DAT_ce33540,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce334a0
    mov.l @(PTR_ce33550,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce334a0
    mov r0,r4
    mov 0x02,r2

LAB_ce33492:
    mov.w @(DAT_ce33542,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce334a0:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce334a8:
    rts
    mov 0x00,r0

LAB_ce334ac:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33544,pc),r1
    mov.l @(PTR_ce33554,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce334c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce334e8
    mov.w @(DAT_ce33546,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33548,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce334e8:
    mov.w @(DAT_ce3354a,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33558,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3355c,pc),r2
    mov 0x0F,r5
    mov 0x04,r6
    jsr @r2
    mov r14,r4
    mova @(DAT_ce33560,pc),r0
    mov.l @(PTR_ce33568,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33564,pc),r0
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
    mov.l @(PTR_ce3356c,pc),r3
    mov 0x10,r5
    mov.w @(DAT_ce3354c,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    mov.l @(PTR_ce33570,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    mov 0x30,r0
    mov.w r0,@(0x1c,r14)
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33538:
    #data 0x02a4
DAT_ce3353a:
    #data 0x01fa
DAT_ce3353c:
    #data 0x0c00
DAT_ce3353e:
    #data 0x01fe
DAT_ce33540:
    #data 0x01a3
DAT_ce33542:
    #data 0x01f7
DAT_ce33544:
    #data 0x01f9
DAT_ce33546:
    #data 0x01d2
DAT_ce33548:
    #data 0x0130
DAT_ce3354a:
    #data 0x01a0
DAT_ce3354c:
    #data 0x01c8
    #align4

PTR_ce33550:
    #data loc_8c045790
PTR_ce33554:
    #data PTR_ce33eac
PTR_ce33558:
    #data loc_8c056f2a
PTR_ce3355c:
    #data loc_8c034e8c
DAT_ce33560:
    #data 0xc2aa0000
DAT_ce33564:
    #data 0x42564924
PTR_ce33568:
    #data loc_8c103660
PTR_ce3356c:
    #data loc_8c050552
PTR_ce33570:
    #data loc_8c05064e

;=============================================

LAB_ce33574:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce3359a
    mov.w @(DAT_ce336c6,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce336c8,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce3359a:
    mov.w @(DAT_ce336ca,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce336d0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce336d4,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mova @(DAT_ce336d8,pc),r0
    mov.l @(PTR_ce336e0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce336dc,pc),r0
    fldi0 fr15
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr15,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce335e6:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce3360c
    mov.w @(DAT_ce336c6,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce336c8,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce3360c:
    mov.w @(DAT_ce336ca,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce336d0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce336d4,pc),r2
    mov 0x0F,r5
    mov 0x05,r6
    jsr @r2
    mov r14,r4
    mova @(DAT_ce336d8,pc),r0
    mov.l @(PTR_ce336e0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce336dc,pc),r0
    fldi0 fr15
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr15,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce33658:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce336ca,pc),r0
    mov r4,r14
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce336d0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce336d4,pc),r2
    mov 0x0F,r5
    mov 0x06,r6
    jsr @r2
    mov r14,r4
    mova @(DAT_ce336d8,pc),r0
    mov.l @(PTR_ce336e0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce336dc,pc),r0
    fldi0 fr15
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr15,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce336ae:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce336cc,pc),r1
    mov.l @(PTR_ce336e4,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce336c6:
    #data 0x01d2
DAT_ce336c8:
    #data 0x0130
DAT_ce336ca:
    #data 0x01a0
DAT_ce336cc:
    #data 0x01f7
    #align4

PTR_ce336d0:
    #data loc_8c056f2a
PTR_ce336d4:
    #data loc_8c034e8c
DAT_ce336d8:
    #data 0xc2aa0000
DAT_ce336dc:
    #data 0x42564924
PTR_ce336e0:
    #data loc_8c103660
PTR_ce336e4:
    #data PTR_ce33ebc

;=============================================

LAB_ce336e8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33804,pc),r3
    mov r4,r14
    mov.w @(DAT_ce337f8,pc),r0
    jsr @r3
    mov.l @(r0,r14),r13
    mov.w @(DAT_ce337fa,pc),r0
    mov.l @(PTR_ce33808,pc),r3
    fmov.s @(r0,r13),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r13)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce33714
    mov.w @(DAT_ce337fc,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce33714:
    mov.l @(PTR_ce3380c,pc),r3
    mov.w @(DAT_ce337f8,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    tst r0,r0
    bt/s LAB_ce33726
    mov 0x20,r12
    mov 0x00,r0
    mov.w r0,@(0x1c,r14)

LAB_ce33726:
    mov.w @(DAT_ce337fe,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33774
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33810,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33814,pc),r0
    mov.l @(PTR_ce33818,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3381c,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r13,r4
    mov.w @(DAT_ce33800,pc),r0
    mov.l @(PTR_ce33820,pc),r1
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r12,@(r0,r13)
    mov.b r12,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)
    mov 0x01,r3
    mov.b @(r0,r13),r2
    xor r3,r2
    mov.b r2,@(r0,r13)
    jsr @r1
    mov r14,r4
    mov.w @(DAT_ce33802,pc),r0
    mov 0x08,r3
    mov.b r3,@(r0,r14)

LAB_ce33774:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce337a4
    mov.w @(DAT_ce33800,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce33824,pc),r1
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r12,@(r0,r13)
    mov.b r12,@(r0,r14)
    add 0x55,r0
    mov.b r3,@(r0,r13)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r13)
    mov.b @(r0,r13),r2
    xor r3,r2
    mov.b r2,@(r0,r13)
    jsr @r1
    mov r14,r4

LAB_ce337a4:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce337b0:
    mov r4,r3
    mov.l @(PTR_ce33828,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce337c2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33804,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce337fe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce337f2
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce3382c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33830,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)

LAB_ce337f2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce337f8:
    #data 0x01c8
DAT_ce337fa:
    #data 0x041c
DAT_ce337fc:
    #data 0x0142
DAT_ce337fe:
    #data 0x0141
DAT_ce33800:
    #data 0x01b4
DAT_ce33802:
    #data 0x01a0
    #align4

PTR_ce33804:
    #data loc_8c034dee
PTR_ce33808:
    #data loc_8c050682
PTR_ce3380c:
    #data loc_8c050610
DAT_ce33810:
    #data 0xc22d5555
DAT_ce33814:
    #data 0x41dedb6d
PTR_ce33818:
    #data loc_8c0fdb4e
PTR_ce3381c:
    #data loc_8c0424a6
PTR_ce33820:
    #data loc_8c05933c
PTR_ce33824:
    #data loc_8c051648
PTR_ce33828:
    #data PTR_ce33ecc
DAT_ce3382c:
    #data 0x41ab6db6
DAT_ce33830:
    #data 0xbf4db6db

;=============================================

LAB_ce33834:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33944,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce338ac
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.w @(DAT_ce33936,pc),r2
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce33934,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce3388c
    mov.w @(DAT_ce33938,pc),r0
    mov 0x02,r3
    bra LAB_ce3389c
    mov.b r3,@(r0,r14)

LAB_ce3388c:
    mov.w @(DAT_ce3393a,pc),r1
    tst r1,r3
    bt LAB_ce33896
    bra LAB_ce33898
    mov 0x03,r3

LAB_ce33896:
    mov 0x01,r3

LAB_ce33898:
    mov.w @(DAT_ce33938,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce3389c:
    mov.w @(DAT_ce33938,pc),r0
    mov 0x0F,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce33948,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce338ac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce338b2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33944,pc),r3
    mov.w @(DAT_ce3393c,pc),r0
    jsr @r3
    mov.l @(r0,r14),r13
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce338d4
    lds.l @r15+,PR
    mov.l @(PTR_ce3394c,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce338d4:
    mov.w @(DAT_ce3393e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3391a
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    add 0x73,r0
    mov.l r14,@(r0,r13)
    add 0xA4,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce338f2
    bra LAB_ce33902
    mov 0x22,r4

LAB_ce338f2:
    mov.w @(DAT_ce33938,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce33900
    bra LAB_ce33902
    mov 0x23,r4

LAB_ce33900:
    mov 0x21,r4

LAB_ce33902:
    mov.w @(DAT_ce33940,pc),r0
    mov 0x01,r3
    mov.b r4,@(r0,r13)
    mov.b r4,@(r0,r14)
    add 0x55,r0
    mov.b r3,@(r0,r13)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r13)
    mov.b @(r0,r13),r2
    xor r3,r2
    mov.b r2,@(r0,r13)

LAB_ce3391a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33922:
    mov r4,r3
    mov.l @(PTR_ce33950,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33934:
    #data 0x034a
DAT_ce33936:
    #data 0x2000
DAT_ce33938:
    #data 0x0158
DAT_ce3393a:
    #data 0x1000
DAT_ce3393c:
    #data 0x01c8
DAT_ce3393e:
    #data 0x0141
DAT_ce33940:
    #data 0x01a1
    #align4

PTR_ce33944:
    #data loc_8c034dee
PTR_ce33948:
    #data loc_8c034e8c
PTR_ce3394c:
    #data loc_8c05176e
PTR_ce33950:
    #data PTR_ce33ed0

;=============================================

LAB_ce33954:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33a94,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33a86,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33978
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce33a98,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce33978:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3397e:
    mov.w @(DAT_ce33a88,pc),r0
    mov 0x60,r1
    mov.l r14,@-r15
    add r4,r1
    sts.l PR,@-r15
    mov.l @(r0,r4),r14
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
    mova @(DAT_ce33a9c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce33a8a,pc),r0
    fmov.s @(r0,r4),fr2
    mov 0x38,r0
    fmov.s @(r0,r4),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bt LAB_ce339fa
    mov.w @(DAT_ce33a8a,pc),r0
    mov 0x24,r5
    fldi0 fr4
    mov 0x02,r3
    fmov.s @(r0,r4),fr2
    mov 0x38,r0
    fmov fr2,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce33a8c,pc),r0
    mov.l r4,@(r0,r14)
    add 0xED,r0
    mov.b r5,@(r0,r14)
    mov.b r5,@(r0,r4)
    add 0x55,r0
    mov.b r3,@(r0,r14)
    add 0xDC,r0
    mov.b @(r0,r4),r2
    mov 0x01,r3
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r4),r0
    mov.l @(PTR_ce33a94,pc),r2
    add 0x01,r0
    jsr @r2
    mov.b r0,@(0x6,r4)
    lds.l @r15+,PR
    mov.l @(PTR_ce33aa0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce339fa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33a00:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33a94,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33a1a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33aa4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33a1a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33a22:
    mov r4,r3
    mov.l @(PTR_ce33aa8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33a34:
    mov.w @(DAT_ce33a8e,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33aac,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33a52:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33a90,pc),r1
    mov.l @(PTR_ce33ab0,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce33a6a:
    mov.w @(DAT_ce33a88,pc),r0
    mov.l r4,@-r15
    mov.l @(PTR_ce33ab4,pc),r3
    mov.l @r15,r5
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce33a78:
    mov.w @(DAT_ce33a88,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33ab8,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a86:
    #data 0x0141
DAT_ce33a88:
    #data 0x01c8
DAT_ce33a8a:
    #data 0x041c
DAT_ce33a8c:
    #data 0x01b4
DAT_ce33a8e:
    #data 0x01ea
DAT_ce33a90:
    #data 0x01f7
    #align4

PTR_ce33a94:
    #data loc_8c034dee
DAT_ce33a98:
    #data 0xbf4db6db
DAT_ce33a9c:
    #data 0xc2f00000
PTR_ce33aa0:
    #data loc_8c0423fc
PTR_ce33aa4:
    #data loc_8c05176e
PTR_ce33aa8:
    #data PTR_ce33edc
PTR_ce33aac:
    #data PTR_ce33ee8
PTR_ce33ab0:
    #data PTR_ce33ef8
PTR_ce33ab4:
    #data loc_8c04ce54
PTR_ce33ab8:
    #data loc_8c04cc1c

;=============================================

LAB_ce33abc:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33b94,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33ada
    mov 0x0D,r5
    cmp/eq 0x01,r0
    bt LAB_ce33ada
    cmp/eq 0x02,r0
    bt LAB_ce33ae0
    bra LAB_ce33ae6
    nop

LAB_ce33ada:
    mov.w @(DAT_ce33b96,pc),r0
    bra LAB_ce33ae6
    mov.b r5,@(r0,r4)

LAB_ce33ae0:
    mov.w @(DAT_ce33b96,pc),r0
    mov 0x0C,r2
    mov.b r2,@(r0,r4)

LAB_ce33ae6:
    mov.l @(PTR_ce33b9c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33aec:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33b94,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33b0a
    mov 0x0D,r5
    cmp/eq 0x01,r0
    bt LAB_ce33b0a
    cmp/eq 0x02,r0
    bt LAB_ce33b10
    bra LAB_ce33b16
    nop

LAB_ce33b0a:
    mov.w @(DAT_ce33b96,pc),r0
    bra LAB_ce33b16
    mov.b r5,@(r0,r4)

LAB_ce33b10:
    mov.w @(DAT_ce33b96,pc),r0
    mov 0x0C,r2
    mov.b r2,@(r0,r4)

LAB_ce33b16:
    mov.l @(PTR_ce33b9c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33b1c:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33b94,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33b3e
    mov 0x07,r6
    cmp/eq 0x01,r0
    bt LAB_ce33b44
    cmp/eq 0x02,r0
    bt LAB_ce33b50
    bra LAB_ce33b5a
    nop

LAB_ce33b3e:
    mov.w @(DAT_ce33b96,pc),r0
    bra LAB_ce33b56
    mov.b r6,@(r0,r4)

LAB_ce33b44:
    mov.w @(DAT_ce33b96,pc),r0
    mov 0x01,r3
    mov.b r6,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce33b5a
    mov.b r3,@(r0,r4)

LAB_ce33b50:
    mov.w @(DAT_ce33b96,pc),r0
    mov 0x08,r1
    mov.b r1,@(r0,r4)

LAB_ce33b56:
    mov.w @(DAT_ce33b98,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33b5a:
    mov.l @(PTR_ce33b9c,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce33b60:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33b94,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33b82
    mov 0x07,r6
    cmp/eq 0x01,r0
    bt LAB_ce33b88
    cmp/eq 0x02,r0
    bt LAB_ce33ba0
    bra LAB_ce33baa
    nop

LAB_ce33b82:
    mov.w @(DAT_ce33b96,pc),r0
    bra LAB_ce33ba6
    mov.b r6,@(r0,r4)

LAB_ce33b88:
    mov.w @(DAT_ce33b96,pc),r0
    mov 0x01,r3
    mov.b r6,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce33baa
    mov.b r3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33b94:
    #data 0x04c9
DAT_ce33b96:
    #data 0x01e9
DAT_ce33b98:
    #data 0x01a3
    #align4

PTR_ce33b9c:
    #data loc_8c0530d8

;=============================================

LAB_ce33ba0:
    mov.w @(DAT_ce33bb0,pc),r0
    mov 0x09,r1
    mov.b r1,@(r0,r4)

LAB_ce33ba6:
    mov.w @(DAT_ce33bb2,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33baa:
    mov.l @(PTR_ce33bb4,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33bb0:
    #data 0x01e9
DAT_ce33bb2:
    #data 0x01a3
    #align4

PTR_ce33bb4:
    #data loc_8c0530d8
DAT_ce33bb8:
    #data 0x0000
DAT_ce33bba:
    #data 0x0080
    #data 0xff80
    #data 0x00c0
    #data 0x0080
    #data 0x00c0
    #data 0xff00
    #data 0x0000
    #data 0x0100
    #data 0x0000
    #data 0x0000
    #data 0x0080
    #data 0xffc0
    #data 0x0080
    #data 0x0040
    #data 0x0080
    #data 0xff80
    #data 0x0000
    #data 0x0080
    #data 0x0000
DAT_ce33be0:
    #data 0x0201
    #data 0x0201
DAT_ce33be4:
    #data 0x02ff
    #data 0x02ff
DAT_ce33be8:
    #data 0xffff
    #data 0xffff
DAT_ce33bec:
    #data 0x0201
    #data 0x0201
DAT_ce33bf0:
    #data 0x02ff
    #data 0x02ff
DAT_ce33bf4:
    #data 0xffff
    #data 0xffff
DAT_ce33bf8:
    #data 0x0201
    #data 0x0201
DAT_ce33bfc:
    #data 0x02ff
    #data 0x02ff
DAT_ce33c00:
    #data 0xffff
    #data 0xffff
DAT_ce33c04:
    #data 0x0201
    #data 0x0201
DAT_ce33c08:
    #data 0x02ff
    #data 0x02ff
DAT_ce33c0c:
    #data 0xffff
    #data 0xffff
DAT_ce33c10:
    #data 0x0201
    #data 0x0200
DAT_ce33c14:
    #data 0x02ff
    #data 0x0201
DAT_ce33c18:
    #data 0xffff
    #data 0x02ff
DAT_ce33c1c:
    #data 0x0201
    #data 0x0201
DAT_ce33c20:
    #data 0x02ff
    #data 0x02ff
DAT_ce33c24:
    #data 0xffff
    #data 0xffff
DAT_ce33c28:
    #data 0xffff
    #data 0xffff
DAT_ce33c2c:
    #data 0x0005
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce33c40:
    #data 0x0003
    #data 0x0000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0360
DAT_ce33c50:
    #data 0x0003
    #data 0x0000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce33c60:
    #data 0x0003
    #data 0x0000
    #data 0x0003
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce33c70:
    #data 0x0003
    #data 0x8100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce33c80:
    #data 0x0003
    #data 0x8100
    #data 0x000a
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce33c90:
    #data 0x0003
    #data 0x8100
    #data 0x000a
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
    #data 0x0003
    #data 0x9100
    #data 0x000c
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33cb0:
    #data 0x0003
    #data 0x9100
    #data 0x000d
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
    #align4

PTR_ce33cc0:
    #data LAB_ce305c2
PTR_ce33cc4:
    #data LAB_ce3001c
PTR_ce33cc8:
    #data LAB_ce30840
PTR_ce33ccc:
    #data LAB_ce30ef2
PTR_ce33cd0:
    #data LAB_ce312f2
PTR_ce33cd4:
    #data LAB_ce3148a
PTR_ce33cd8:
    #data LAB_ce31628
PTR_ce33cdc:
    #data LAB_ce3182e
PTR_ce33ce0:
    #data LAB_ce31978
PTR_ce33ce4:
    #data LAB_ce334ac
PTR_ce33ce8:
    #data LAB_ce336ae
PTR_ce33cec:
    #data LAB_ce33a34
PTR_ce33cf0:
    #data LAB_ce33a52
PTR_ce33cf4:
    #data LAB_ce30574
PTR_ce33cf8:
    #data LAB_ce3324a
PTR_ce33cfc:
    #data LAB_ce31232
PTR_ce33d00:
    #data LAB_ce33abc
PTR_ce33d04:
    #data LAB_ce33aec
PTR_ce33d08:
    #data LAB_ce33b1c
PTR_ce33d0c:
    #data LAB_ce33b60
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #align4

DAT_ce33d30:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x03
    #data 0x04
    #data 0x05
    #data 0x06
    #data 0x07
    #data 0x07
    #data 0x06
    #data 0x05
    #data 0x04
    #data 0x03
    #data 0x02
    #data 0xff
DAT_ce33d3f:
    #data 0x00
    #data 0x01
    #data 0x08
    #data 0x09
    #data 0x0a
    #data 0x0b
    #data 0x0c
    #data 0x0d
    #data 0x0d
    #data 0x0c
    #data 0x0b
    #data 0x0a
    #data 0x09
    #data 0x08
    #data 0xff
DAT_ce33d4e:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x03
    #data 0x04
    #data 0x05
    #data 0x06
    #data 0x07
    #data 0x08
    #data 0x09
    #data 0x0a
    #data 0x0b
    #data 0x0c
    #data 0x0d
    #data 0xff
    #data 0x00
    #data 0x00
    #data 0x00
    #align4

PTR_ce33d60:
    #data LAB_ce3081c
PTR_ce33d64:
    #data LAB_ce30658
PTR_ce33d68:
    #data LAB_ce306e8
PTR_ce33d6c:
    #data LAB_ce3078c
PTR_ce33d70:
    #data LAB_ce30854
PTR_ce33d74:
    #data LAB_ce30bca
PTR_ce33d78:
    #data LAB_ce30bf2
PTR_ce33d7c:
    #data LAB_ce30854
PTR_ce33d80:
    #data LAB_ce30f14
PTR_ce33d84:
    #data LAB_ce3116a
PTR_ce33d88:
    #data LAB_ce31154
PTR_ce33d8c:
    #data LAB_ce30f06
PTR_ce33d90:
    #data LAB_ce31304
PTR_ce33d94:
    #data LAB_ce313a6
PTR_ce33d98:
    #data LAB_ce3142a
PTR_ce33d9c:
    #data LAB_ce314bc
PTR_ce33da0:
    #data LAB_ce31516
PTR_ce33da4:
    #data LAB_ce3159e
PTR_ce33da8:
    #data LAB_ce3163a
PTR_ce33dac:
    #data LAB_ce316e0
PTR_ce33db0:
    #data LAB_ce3173a
PTR_ce33db4:
    #data LAB_ce317b0
PTR_ce33db8:
    #data FUN_ce3180e
PTR_ce33dbc:
    #data LAB_ce3185a
PTR_ce33dc0:
    #data LAB_ce318a4
PTR_ce33dc4:
    #data LAB_ce318f0
PTR_ce33dc8:
    #data LAB_ce318a4
PTR_ce33dcc:
    #data LAB_ce3191e
PTR_ce33dd0:
    #data LAB_ce31b4e
PTR_ce33dd4:
    #data LAB_ce31c40
PTR_ce33dd8:
    #data LAB_ce31c52
PTR_ce33ddc:
    #data LAB_ce32232
PTR_ce33de0:
    #data LAB_ce3262e
PTR_ce33de4:
    #data LAB_ce32844
PTR_ce33de8:
    #data LAB_ce3294e
PTR_ce33dec:
    #data LAB_ce32b5a
PTR_ce33df0:
    #data LAB_ce32c46
PTR_ce33df4:
    #data LAB_ce32d04
PTR_ce33df8:
    #data LAB_ce31f62
PTR_ce33dfc:
    #data LAB_ce32044
PTR_ce33e00:
    #data LAB_ce3301e
PTR_ce33e04:
    #data LAB_ce33238
PTR_ce33e08:
    #data LAB_ce31a6e
PTR_ce33e0c:
    #data LAB_ce31ad4
PTR_ce33e10:
    #data LAB_ce31b8c
PTR_ce33e14:
    #data LAB_ce31c00
PTR_ce33e18:
    #data LAB_ce31c64
PTR_ce33e1c:
    #data LAB_ce31e98
PTR_ce33e20:
    #data LAB_ce31ca8
PTR_ce33e24:
    #data LAB_ce31d04
PTR_ce33e28:
    #data LAB_ce31d4c
PTR_ce33e2c:
    #data LAB_ce31e2e
PTR_ce33e30:
    #data LAB_ce32128
PTR_ce33e34:
    #data LAB_ce3217a
PTR_ce33e38:
    #data FUN_ce32212
PTR_ce33e3c:
    #data LAB_ce32274
PTR_ce33e40:
    #data LAB_ce322d8
PTR_ce33e44:
    #data LAB_ce32370
PTR_ce33e48:
    #data LAB_ce323e0
PTR_ce33e4c:
    #data LAB_ce32474
PTR_ce33e50:
    #data LAB_ce3253c
PTR_ce33e54:
    #data LAB_ce32390
PTR_ce33e58:
    #data LAB_ce3261c
PTR_ce33e5c:
    #data LAB_ce32890
PTR_ce33e60:
    #data LAB_ce328fe
PTR_ce33e64:
    #data LAB_ce329dc
PTR_ce33e68:
    #data LAB_ce32a5e
PTR_ce33e6c:
    #data LAB_ce32af0
PTR_ce33e70:
    #data LAB_ce32b6c
PTR_ce33e74:
    #data LAB_ce32bca
PTR_ce33e78:
    #data LAB_ce32c84
PTR_ce33e7c:
    #data LAB_ce32ce2
PTR_ce33e80:
    #data LAB_ce32d16
PTR_ce33e84:
    #data LAB_ce32dae
PTR_ce33e88:
    #data LAB_ce32e80
PTR_ce33e8c:
    #data LAB_ce32f1c
PTR_ce33e90:
    #data FUN_ce32ffc
PTR_ce33e94:
    #data LAB_ce3305c
PTR_ce33e98:
    #data LAB_ce330ea
PTR_ce33e9c:
    #data LAB_ce3315a
PTR_ce33ea0:
    #data LAB_ce3325c
PTR_ce33ea4:
    #data LAB_ce33304
PTR_ce33ea8:
    #data LAB_ce33372
PTR_ce33eac:
    #data LAB_ce3339a
PTR_ce33eb0:
    #data LAB_ce334a8
PTR_ce33eb4:
    #data LAB_ce33424
PTR_ce33eb8:
    #data LAB_ce334a8
PTR_ce33ebc:
    #data LAB_ce334c4
PTR_ce33ec0:
    #data LAB_ce33574
PTR_ce33ec4:
    #data LAB_ce335e6
PTR_ce33ec8:
    #data LAB_ce33658
PTR_ce33ecc:
    #data LAB_ce336e8
PTR_ce33ed0:
    #data LAB_ce337c2
PTR_ce33ed4:
    #data LAB_ce33834
PTR_ce33ed8:
    #data LAB_ce338b2
PTR_ce33edc:
    #data LAB_ce33954
PTR_ce33ee0:
    #data LAB_ce3397e
PTR_ce33ee4:
    #data FUN_ce33a00
PTR_ce33ee8:
    #data LAB_ce337b0
PTR_ce33eec:
    #data LAB_ce33922
PTR_ce33ef0:
    #data LAB_ce33a22
PTR_ce33ef4:
    #data LAB_ce33922
PTR_ce33ef8:
    #data LAB_ce33a6a
PTR_ce33efc:
    #data LAB_ce33a78
PTR_ce33f00:
    #data LAB_ce33a78
PTR_ce33f04:
    #data LAB_ce33a78
PTR_ce33f08:
    #data LAB_ce33a78
