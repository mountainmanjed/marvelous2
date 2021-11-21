;╔══════════════════════════════════════════╗
;║ S_PL2D : Shuma-Gorath Program            ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c0424fe 0x8C0424FE
#symbol loc_8c045790 0x8C045790
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c04cc1c 0x8C04CC1C
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
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c0517be 0x8C0517BE
#symbol loc_8c051854 0x8C051854
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c0523d8 0x8C0523D8
#symbol loc_8c05264c 0x8C05264C
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
#symbol loc_8c055066 0x8C055066
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c0590f4 0x8C0590F4
#symbol loc_8c05929c 0x8C05929C
#symbol loc_8c09e6e0 0x8C09E6E0
#symbol loc_8c09eec8 0x8C09EEC8
#symbol loc_8c09f35c 0x8C09F35C
#symbol loc_8c0e5538 0x8C0E5538
#symbol loc_8c0eeb9c 0x8C0EEB9C
#symbol loc_8c0f047c 0x8C0F047C
#symbol loc_8c103660 0x8C103660
#symbol loc_8c268340 0x8C268340
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c287ae8 0x8C287AE8
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300d8,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300e0,pc),r7
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
    mov.w @(DAT_ce300dc,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce300de,pc),r2
    extu.w r3,r3
    mov.w @(DAT_ce300da,pc),r13
    cmp/eq r2,r3
    bt/s LAB_ce300d0
    add r14,r13
    mov 0x10,r0
    mov.b @(r0,r13),r1
    tst r1,r1
    bf LAB_ce300d0
    mov.b @(0x9,r13),r0
    tst r0,r0
    bf LAB_ce3004e
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0

LAB_ce3004e:
    mov.l @(PTR_ce300e8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    mov.l @(PTR_ce300ec,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    mov.l @(PTR_ce300f0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    mov.b @(0x9,r13),r0
    tst r0,r0
    bf LAB_ce300be
    bsr FUN_ce30228
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    bsr FUN_ce30290
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    bsr FUN_ce300fc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    bsr FUN_ce30154
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    bsr FUN_ce301b8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    bsr FUN_ce302f8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    bsr FUN_ce30368
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0

LAB_ce300be:
    mov.l @(PTR_ce300f4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300f8,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce300d0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300d8:
    #data 0x0428
DAT_ce300da:
    #data 0x02a4
DAT_ce300dc:
    #data 0x0158
DAT_ce300de:
    #data 0x0201
    #align4

PTR_ce300e0:
    #data PTR_ce337fc
PTR_ce300e4:
    #data loc_8c054508
PTR_ce300e8:
    #data loc_8c054b34
PTR_ce300ec:
    #data loc_8c05496c
PTR_ce300f0:
    #data loc_8c054d04
PTR_ce300f4:
    #data loc_8c053e00
PTR_ce300f8:
    #data loc_8c0542e0

;=============================================

FUN_ce300fc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce301fe,pc),r13
    sts.l PR,@-r15
    mov.w @(DAT_ce30200,pc),r6
    add r14,r13
    mov.l @(PTR_ce3020c,pc),r5
    mov.l @(PTR_ce30210,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30124
    mov.b @(0x3,r13),r0
    tst r0,r0
    bf LAB_ce30124
    mov.b @(0x9,r13),r0
    tst r0,r0
    bt LAB_ce30128

LAB_ce30124:
    bra LAB_ce3014c
    mov 0x00,r0

LAB_ce30128:
    mov.w @(DAT_ce30200,pc),r5
    mov.l @(PTR_ce30214,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30202,pc),r0
    mov.l @(PTR_ce30218,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0

LAB_ce3014c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30154:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce301fe,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30204,pc),r6
    add r14,r3
    mov.l @(PTR_ce3021c,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce30210,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30184
    mov.w @(DAT_ce30206,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30184
    mov.l @r15,r3
    mov.b @(0x9,r3),r0
    tst r0,r0
    bt LAB_ce3018e

LAB_ce30184:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3018e:
    mov.w @(DAT_ce30204,pc),r5
    mov.l @(PTR_ce30214,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30202,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30218,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301b8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30220,pc),r5
    mov.w @(DAT_ce30208,pc),r6
    mov.l @(PTR_ce30224,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301d6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301d6:
    mov.w @(DAT_ce30208,pc),r5
    mov.l @(PTR_ce30214,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30202,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30218,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301fe:
    #data 0x02a4
DAT_ce30200:
    #data 0x036c
DAT_ce30202:
    #data 0x01e9
DAT_ce30204:
    #data 0x0374
DAT_ce30206:
    #data 0x01d4
DAT_ce30208:
    #data 0x037c
    #align4

PTR_ce3020c:
    #data DAT_ce3371c
PTR_ce30210:
    #data loc_8c055066
PTR_ce30214:
    #data loc_8c055c3a
PTR_ce30218:
    #data loc_8c0530d8
PTR_ce3021c:
    #data DAT_ce3372a
PTR_ce30220:
    #data DAT_ce33738
PTR_ce30224:
    #data loc_8c054e58

;=============================================

FUN_ce30228:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30346,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30348,pc),r6
    add r14,r3
    mov.l @(PTR_ce30350,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce30354,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3025c
    mov.w @(DAT_ce3034a,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    mov 0x03,r3
    cmp/ge r3,r2
    bf LAB_ce3025c
    mov.l @r15,r3
    mov.b @(0x9,r3),r0
    tst r0,r0
    bt LAB_ce30266

LAB_ce3025c:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30266:
    mov.w @(DAT_ce3034c,pc),r5
    mov.l @(PTR_ce30358,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3034e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3035c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30290:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30346,pc),r3
    mov r4,r14
    mov.w @(DAT_ce3034c,pc),r6
    add r14,r3
    mov.l @(PTR_ce30360,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce30354,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302c4
    mov.w @(DAT_ce3034a,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    mov 0x01,r3
    cmp/ge r3,r2
    bf LAB_ce302c4
    mov.l @r15,r3
    mov.b @(0x9,r3),r0
    tst r0,r0
    bt LAB_ce302ce

LAB_ce302c4:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce302ce:
    mov.w @(DAT_ce3034c,pc),r5
    mov.l @(PTR_ce30358,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3034e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3035c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30346,pc),r3
    mov r4,r14
    mov.l @(PTR_ce30364,pc),r2
    mov 0x06,r5
    add r14,r3
    mov.l r3,@r15
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3031c
    mov.l @r15,r3
    mov.b @(0x9,r3),r0
    tst r0,r0
    bt LAB_ce30326

LAB_ce3031c:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30326:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3034e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3035c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30346:
    #data 0x02a4
DAT_ce30348:
    #data 0x0384
DAT_ce3034a:
    #data 0x040c
DAT_ce3034c:
    #data 0x038c
DAT_ce3034e:
    #data 0x01e9
    #align4

PTR_ce30350:
    #data DAT_ce3374c
PTR_ce30354:
    #data loc_8c054e58
PTR_ce30358:
    #data loc_8c055c3a
PTR_ce3035c:
    #data loc_8c0530d8
PTR_ce30360:
    #data DAT_ce3375c
PTR_ce30364:
    #data loc_8c054da0

;=============================================

FUN_ce30368:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30446,pc),r3
    mov r4,r14
    mov.l @(PTR_ce30450,pc),r2
    add r14,r3
    mov.l r3,@r15
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce30392
    mov.w @(DAT_ce30448,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce30392
    mov.l @r15,r2
    mov.b @(0x9,r2),r0
    tst r0,r0
    bt LAB_ce3039c

LAB_ce30392:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3039c:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3044a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30454,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303bc:
    sts.l PR,@-r15
    bsr FUN_ce303d4
    nop
    tst r0,r0
    bt LAB_ce303cc
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce303cc:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce303d4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30458,pc),r5
    mov.w @(DAT_ce3044c,pc),r6
    mov.l @(PTR_ce3045c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303f4
    mov.w @(DAT_ce30448,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303fc

LAB_ce303f4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303fc:
    mov.w @(DAT_ce3044e,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3040a:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce30446,pc),r13
    sts.l PR,@-r15
    add r14,r13
    bsr FUN_ce30438
    mov r13,r5
    mov r13,r5
    bsr FUN_ce30460
    mov r14,r4
    mov r13,r5
    bsr FUN_ce3050a
    mov r14,r4
    mov r13,r5
    bsr FUN_ce30598
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce305f4
    mov.l @r15+,r14

;=============================================

FUN_ce30438:
    mov.b @(0x2,r5),r0
    tst r0,r0
    bf LAB_ce30442
    mov 0x00,r0
    mov.b r0,@(0x3,r5)

LAB_ce30442:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30446:
    #data 0x02a4
DAT_ce30448:
    #data 0x040c
DAT_ce3044a:
    #data 0x01e9
DAT_ce3044c:
    #data 0x038c
DAT_ce3044e:
    #data 0x0258
    #align4

PTR_ce30450:
    #data loc_8c054d1c
PTR_ce30454:
    #data loc_8c0530d8
PTR_ce30458:
    #data DAT_ce3375c
PTR_ce3045c:
    #data loc_8c054e58

;=============================================

FUN_ce30460:
    mov.l r14,@-r15
    mov r5,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x9,r14),r0
    tst r0,r0
    bt/s LAB_ce30502
    mov r4,r13
    mov.w @(DAT_ce30586,pc),r0
    mov.b @(r0,r13),r4
    extu.b r4,r0
    cmp/eq 0x1C,r0
    bt/s LAB_ce3048c
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x16,r0
    bt LAB_ce3048c
    mov.w @(DAT_ce30588,pc),r0
    mov.w @(r0,r13),r3
    tst r3,r3
    bf LAB_ce30490

LAB_ce3048c:
    mov 0x01,r0
    mov.w r0,@(0xa,r14)

LAB_ce30490:
    mov.w @(0xa,r14),r0
    add 0xFF,r0
    mov.w r0,@(0xa,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce304b2
    mov r13,r4
    mov 0x00,r0
    mov.l @(PTR_ce30590,pc),r3
    mov r0,r5
    mov.b r0,@(0x9,r14)
    mov.b r0,@(0xd,r14)
    mov.b r0,@(0xe,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce304b2:
    mov.b @(0xe,r14),r0
    add 0xFF,r0
    mov.b r0,@(0xe,r14)
    exts.b r0,r0
    tst r0,r0
    bf LAB_ce30502
    mov 0x08,r0
    mov.b r0,@(0xe,r14)
    mov 0x25,r0
    mov.b @(r0,r13),r6
    mov 0x02,r7
    mov.b @(0xf,r14),r0
    mov 0x00,r5
    extu.b r6,r6
    mov r6,r3
    shll r6
    add r3,r6
    mov.l @(PTR_ce30594,pc),r3
    shll2 r6
    shll2 r6
    add r0,r6
    add 0x25,r6
    jsr @r3
    mov r13,r4
    mov.b @(0x9,r14),r0
    mov r0,r3
    mov.b @(0xf,r14),r0
    add r3,r0
    mov.b r0,@(0xf,r14)
    mov.b @(0xf,r14),r0
    mov r0,r4
    exts.b r4,r3
    tst r3,r3
    bt LAB_ce304fc
    exts.b r4,r0
    cmp/eq 0x04,r0
    bf LAB_ce30502

LAB_ce304fc:
    mov.b @(0x9,r14),r0
    neg r0,r0
    mov.b r0,@(0x9,r14)

LAB_ce30502:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3050a:
    mov.l r14,@-r15
    mov.w @(DAT_ce3058a,pc),r0
    mov.l r13,@-r15
    mov r4,r13
    sts.l PR,@-r15
    mov.b @(r0,r13),r0
    extu.b r0,r0
    cmp/eq 0x0F,r0
    bf/s LAB_ce3057e
    mov r5,r14
    mov.w @(DAT_ce3058c,pc),r0
    mov.b @(r0,r13),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3057e
    mov.w @(0x1c,r13),r0
    tst r0,r0
    bt LAB_ce30570
    mov 0x25,r0
    mov.b @(r0,r13),r6
    mov 0x01,r7
    mov.b @(0xe,r14),r0
    mov 0x00,r5
    extu.b r6,r6
    mov r6,r3
    shll r6
    add r3,r6
    mov.l @(PTR_ce30594,pc),r3
    shll2 r6
    shll2 r6
    add r0,r6
    add 0x14,r6
    jsr @r3
    mov r13,r4
    mov.b @(0xd,r14),r0
    add 0xFF,r0
    mov.b r0,@(0xd,r14)
    exts.b r0,r0
    tst r0,r0
    bf LAB_ce30564
    mov 0x09,r0
    mov.b r0,@(0xd,r14)
    mov.b @(0xf,r14),r0
    neg r0,r0
    mov.b r0,@(0xf,r14)

LAB_ce30564:
    mov.b @(0xf,r14),r0
    mov r0,r3
    mov.b @(0xe,r14),r0
    add r3,r0
    bra LAB_ce3057e
    mov.b r0,@(0xe,r14)

LAB_ce30570:
    lds.l @r15+,PR
    mov r13,r4
    mov.l @(PTR_ce30590,pc),r3
    mov 0x00,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3057e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30586:
    #data 0x01d0
DAT_ce30588:
    #data 0x0420
DAT_ce3058a:
    #data 0x0159
DAT_ce3058c:
    #data 0x0158
    #align4

PTR_ce30590:
    #data loc_8c035162
PTR_ce30594:
    #data loc_8c03544c

;=============================================

FUN_ce30598:
    mov 0x10,r0
    mov.l r14,@-r15
    mov.b @(r0,r5),r3
    tst r3,r3
    bt/s LAB_ce305f0
    mov r4,r14
    mov 0x00,r3
    mov.b r3,@(r0,r5)
    mov.w @(DAT_ce306a8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x0C,r0
    bf LAB_ce305e6
    mov.w @(DAT_ce306aa,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bf LAB_ce305e6
    mov 0x10,r0
    mov r14,r4
    mov 0x01,r2
    mov.b r2,@(r0,r5)
    mov 0x25,r0
    mov.b @(r0,r14),r6
    mov r2,r7
    mov.w @(DAT_ce306ac,pc),r0
    mov 0x00,r5
    extu.b r6,r6
    mov r6,r3
    shll r6
    add r3,r6
    mov.b @(r0,r14),r2
    shll2 r6
    mov.l @(PTR_ce306bc,pc),r3
    shll2 r6
    add r2,r6
    add 0x05,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce305e6:
    mov.l @(PTR_ce306c0,pc),r3
    mov r14,r4
    mov 0x00,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce305f0:
    rts
    mov.l @r15+,r14

LAB_ce305f4:
    mov.w @(DAT_ce306a8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x07,r0
    bt/s LAB_ce30614
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x09,r0
    bt LAB_ce30614
    mov r4,r0
    nop
    cmp/eq 0x0B,r0
    bf LAB_ce3063a

LAB_ce30614:
    mov.w @(DAT_ce306ae,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3063a
    mov 0x25,r0
    mov.l @(PTR_ce306bc,pc),r2
    mov.b @(r0,r14),r6
    mov r14,r4
    mov 0x00,r5
    extu.b r6,r6
    mov r6,r3
    shll r6
    add r3,r6
    shll2 r6
    shll2 r6
    mov 0x01,r7
    add 0x22,r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce3063a:
    rts
    mov.l @r15+,r14

LAB_ce3063e:
    mov.w @(DAT_ce306b0,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce306c4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30652:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce306b2,pc),r3
    mov r4,r14
    mov.l @(PTR_ce306c8,pc),r2
    add r14,r3
    mov.l r3,@r15
    jsr @r2
    mov r14,r4
    mov.l @r15,r3
    mov.b @(0x9,r3),r0
    tst r0,r0
    bt LAB_ce30684
    mov.w @(DAT_ce306b4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30684
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce306cc,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce30684:
    mov.w @(DAT_ce306b6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce306d0
    mov.w @(DAT_ce306b8,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce3069e
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce306ec
    mov.l @r15+,r14

LAB_ce3069e:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce30784
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306a8:
    #data 0x0159
DAT_ce306aa:
    #data 0x0158
DAT_ce306ac:
    #data 0x0141
DAT_ce306ae:
    #data 0x01a3
DAT_ce306b0:
    #data 0x01ff
DAT_ce306b2:
    #data 0x02a4
DAT_ce306b4:
    #data 0x01e8
DAT_ce306b6:
    #data 0x01fe
DAT_ce306b8:
    #data 0x01f9
    #align4

PTR_ce306bc:
    #data loc_8c03544c
PTR_ce306c0:
    #data loc_8c035162
PTR_ce306c4:
    #data PTR_ce3386c
PTR_ce306c8:
    #data loc_8c052b4c
PTR_ce306cc:
    #data LAB_ce326ee

;=============================================

LAB_ce306d0:
    mov.w @(DAT_ce307d6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce306e2
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce3083e
    mov.l @r15+,r14

LAB_ce306e2:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce308d6
    mov.l @r15+,r14

LAB_ce306ec:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce307d8,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30710
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30722
    cmp/eq 0x02,r0
    bt LAB_ce3073e
    bra LAB_ce3074e
    nop

LAB_ce30710:
    mov.l @(PTR_ce307e0,pc),r3
    mov r13,r11
    mov.w @(DAT_ce307da,pc),r0
    mov r13,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307dc,pc),r0
    mov.b r11,@(r0,r14)
    bra LAB_ce30734
    mov 0x14,r5

LAB_ce30722:
    mov.l @(PTR_ce307e4,pc),r3
    mov 0x01,r4
    mov.w @(DAT_ce307da,pc),r0
    mov r4,r11
    mov 0x15,r5
    mov r4,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307dc,pc),r0
    mov.b r11,@(r0,r14)

LAB_ce30734:
    mov.l @(PTR_ce307e8,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce3074e
    nop

LAB_ce3073e:
    mov.l @(PTR_ce307ec,pc),r3
    mov 0x02,r4
    mov.w @(DAT_ce307da,pc),r0
    mov r4,r11
    mov r4,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307dc,pc),r0
    mov.b r11,@(r0,r14)

LAB_ce3074e:
    mov.w @(DAT_ce307de,pc),r0
    mov r11,r6
    mov.l @(PTR_ce307f0,pc),r3
    mov 0x07,r5
    mov.b r12,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce307f4,pc),r2
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30784:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce307d8,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307a8
    mov 0x00,r11
    cmp/eq 0x01,r0
    bt LAB_ce307ba
    cmp/eq 0x02,r0
    bt LAB_ce307f8
    bra LAB_ce30808
    nop

LAB_ce307a8:
    mov.l @(PTR_ce307e0,pc),r3
    mov r11,r12
    mov.w @(DAT_ce307da,pc),r0
    mov 0x06,r13
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307dc,pc),r0
    mov.b r12,@(r0,r14)
    bra LAB_ce307cc
    mov 0x14,r5

LAB_ce307ba:
    mov.l @(PTR_ce307e4,pc),r3
    mov 0x01,r4
    mov.w @(DAT_ce307da,pc),r0
    mov r4,r12
    mov 0x15,r5
    mov.l r3,@(r0,r14)
    mov 0x07,r13
    mov.w @(DAT_ce307dc,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce307cc:
    mov.l @(PTR_ce307e8,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce30808
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307d6:
    #data 0x01f9
DAT_ce307d8:
    #data 0x01e8
DAT_ce307da:
    #data 0x03f4
DAT_ce307dc:
    #data 0x01a7
DAT_ce307de:
    #data 0x01a1
    #align4

PTR_ce307e0:
    #data DAT_ce336ec
PTR_ce307e4:
    #data DAT_ce336f0
PTR_ce307e8:
    #data loc_8c04223a
PTR_ce307ec:
    #data DAT_ce336f4
PTR_ce307f0:
    #data loc_8c2896b0
PTR_ce307f4:
    #data loc_8c034e8c

;=============================================

LAB_ce307f8:
    mov.l @(PTR_ce30914,pc),r3
    mov 0x02,r4
    mov.w @(DAT_ce3090a,pc),r0
    mov r4,r12
    mov 0x08,r13
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3090c,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce30808:
    mov.w @(DAT_ce3090e,pc),r0
    mov r12,r6
    mov.l @(PTR_ce30918,pc),r3
    mov 0x09,r5
    mov.b r13,@(r0,r14)
    add 0x0B,r0
    mov.w r11,@(r0,r14)
    add 0xF2,r0
    mov.b r11,@(r0,r14)
    add 0x26,r0
    mov.l r11,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce3091c,pc),r2
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3083e:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30910,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30862
    mov 0x00,r11
    cmp/eq 0x01,r0
    bt LAB_ce30874
    cmp/eq 0x02,r0
    bt LAB_ce30890
    bra LAB_ce308a0
    nop

LAB_ce30862:
    mov.l @(PTR_ce30920,pc),r3
    mov r11,r12
    mov.w @(DAT_ce3090a,pc),r0
    mov 0x03,r13
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3090c,pc),r0
    mov.b r12,@(r0,r14)
    bra LAB_ce30886
    mov 0x14,r5

LAB_ce30874:
    mov.l @(PTR_ce30924,pc),r3
    mov 0x01,r4
    mov.w @(DAT_ce3090a,pc),r0
    mov r4,r12
    mov 0x15,r5
    mov.l r3,@(r0,r14)
    mov 0x04,r13
    mov.w @(DAT_ce3090c,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce30886:
    mov.l @(PTR_ce30928,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce308a0
    nop

LAB_ce30890:
    mov.l @(PTR_ce3092c,pc),r3
    mov 0x02,r4
    mov.w @(DAT_ce3090a,pc),r0
    mov r4,r12
    mov 0x05,r13
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3090c,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce308a0:
    mov.w @(DAT_ce3090e,pc),r0
    mov r12,r6
    mov.l @(PTR_ce30918,pc),r3
    mov 0x08,r5
    mov.b r13,@(r0,r14)
    add 0x0B,r0
    mov.w r11,@(r0,r14)
    add 0xF2,r0
    mov.b r11,@(r0,r14)
    add 0x26,r0
    mov.l r11,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce3091c,pc),r2
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce308d6:
    mov.w @(DAT_ce30910,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308f8
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce30930
    cmp/eq 0x02,r0
    bt LAB_ce30944
    bra LAB_ce30956
    nop

LAB_ce308f8:
    mov.l @(PTR_ce30920,pc),r3
    mov 0x09,r4
    mov.w @(DAT_ce3090a,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3090c,pc),r0
    bra LAB_ce30956
    mov.b r12,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3090a:
    #data 0x03f4
DAT_ce3090c:
    #data 0x01a7
DAT_ce3090e:
    #data 0x01a1
DAT_ce30910:
    #data 0x01e8
    #align4

PTR_ce30914:
    #data DAT_ce336f4
PTR_ce30918:
    #data loc_8c2896b0
PTR_ce3091c:
    #data loc_8c034e8c
PTR_ce30920:
    #data DAT_ce336f8
PTR_ce30924:
    #data DAT_ce336fc
PTR_ce30928:
    #data loc_8c04223a
PTR_ce3092c:
    #data DAT_ce33700

;=============================================

LAB_ce30930:
    mov.w @(DAT_ce30a26,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30a38,pc),r2
    mov 0x0A,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a28,pc),r0
    bra LAB_ce30956
    mov.b r12,@(r0,r14)

LAB_ce30944:
    mov.l @(PTR_ce30a3c,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce30a26,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x0B,r4
    mov.w @(DAT_ce30a28,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce30956:
    mov.w @(DAT_ce30a2a,pc),r0
    mov.l @(PTR_ce30a40,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l r5,@(r0,r14)
    mov r13,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30a44,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce30a48,pc),r3
    mov 0x0A,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30992:
    mov.w @(DAT_ce30a2c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce309a2
    mov.w @(DAT_ce30a2e,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce309b2

LAB_ce309a2:
    mov.w @(DAT_ce30a2c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce309b6
    mov.w @(DAT_ce30a2e,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce309b6

LAB_ce309b2:
    bra LAB_ce309ba
    nop

LAB_ce309b6:
    rts
    nop

LAB_ce309ba:
    mov.w @(DAT_ce30a30,pc),r5
    add r4,r5
    mov.b @(0x9,r5),r0
    tst r0,r0
    bt LAB_ce309d4
    mov.w @(DAT_ce30a32,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce309d4
    mov.l @(PTR_ce30a4c,pc),r3
    jmp @r3
    nop

LAB_ce309d4:
    mov.w @(DAT_ce30a2c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce309e0
    bra LAB_ce30afc
    nop

LAB_ce309e0:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30a32,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a04
    mov 0x00,r11
    cmp/eq 0x01,r0
    bt LAB_ce30a58
    cmp/eq 0x02,r0
    bt LAB_ce30a84
    bra LAB_ce30ab4
    nop

LAB_ce30a04:
    mov.w @(DAT_ce30a34,pc),r0
    mov 0x0C,r13
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce30a18
    mov r11,r12
    mov.w @(DAT_ce30a26,pc),r0
    mov.l @(PTR_ce30a50,pc),r3
    bra LAB_ce30a1e
    mov.l r3,@(r0,r14)

LAB_ce30a18:
    mov.w @(DAT_ce30a26,pc),r0
    mov.l @(PTR_ce30a54,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a1e:
    mov.w @(DAT_ce30a28,pc),r0
    mov.b r11,@(r0,r14)
    bra LAB_ce30a7a
    mov 0x14,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a26:
    #data 0x03f4
DAT_ce30a28:
    #data 0x01a7
DAT_ce30a2a:
    #data 0x01a1
DAT_ce30a2c:
    #data 0x01fe
DAT_ce30a2e:
    #data 0x01d6
DAT_ce30a30:
    #data 0x02a4
DAT_ce30a32:
    #data 0x01e8
DAT_ce30a34:
    #data 0x01fc
    #align4

PTR_ce30a38:
    #data DAT_ce336fc
PTR_ce30a3c:
    #data DAT_ce33700
PTR_ce30a40:
    #data loc_8c2896b0
PTR_ce30a44:
    #data loc_8c04223a
PTR_ce30a48:
    #data loc_8c034e8c
PTR_ce30a4c:
    #data LAB_ce32730
PTR_ce30a50:
    #data DAT_ce336ec
PTR_ce30a54:
    #data DAT_ce33704

;=============================================

LAB_ce30a58:
    mov.w @(DAT_ce30b46,pc),r0
    mov 0x01,r4
    mov 0x0D,r13
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce30a6e
    mov r4,r12
    mov.w @(DAT_ce30b48,pc),r0
    mov.l @(PTR_ce30b58,pc),r3
    bra LAB_ce30a74
    mov.l r3,@(r0,r14)

LAB_ce30a6e:
    mov.w @(DAT_ce30b48,pc),r0
    mov.l @(PTR_ce30b5c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a74:
    mov.w @(DAT_ce30b4a,pc),r0
    mov 0x15,r5
    mov.b r4,@(r0,r14)

LAB_ce30a7a:
    mov.l @(PTR_ce30b60,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce30ab4
    nop

LAB_ce30a84:
    mov.w @(DAT_ce30b4c,pc),r0
    mov 0x0E,r13
    mov.w @(DAT_ce30b4e,pc),r2
    mov 0x05,r12
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce30a9a
    mov 0x02,r4
    mov 0x13,r13
    mov r4,r12

LAB_ce30a9a:
    mov.w @(DAT_ce30b46,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30aaa
    mov.w @(DAT_ce30b48,pc),r0
    mov.l @(PTR_ce30b64,pc),r3
    bra LAB_ce30ab0
    mov.l r3,@(r0,r14)

LAB_ce30aaa:
    mov.w @(DAT_ce30b48,pc),r0
    mov.l @(PTR_ce30b68,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30ab0:
    mov.w @(DAT_ce30b4a,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30ab4:
    mov.w @(DAT_ce30b50,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30b6c,pc),r3
    mov r12,r6
    mov.b r13,@(r0,r14)
    add 0x0B,r0
    mov.w r11,@(r0,r14)
    add 0xF2,r0
    mov.b r11,@(r0,r14)
    add 0x26,r0
    mov.l r11,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30b70,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30b52,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30af0
    mov.w @(DAT_ce30b52,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30af0:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30afc:
    mov.w @(DAT_ce30b56,pc),r0
    mov 0x01,r6
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce30b54,pc),r7
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    add r14,r7
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30b24
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce30b7c
    cmp/eq 0x02,r0
    bt LAB_ce30b9e
    bra LAB_ce30c0a
    nop

LAB_ce30b24:
    mov.w @(DAT_ce30b46,pc),r0
    mov r4,r13
    mov 0x0F,r5
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce30b3a
    mov 0x14,r12
    mov.w @(DAT_ce30b48,pc),r0
    mov.l @(PTR_ce30b74,pc),r3
    bra LAB_ce30b40
    mov.l r3,@(r0,r14)

LAB_ce30b3a:
    mov.w @(DAT_ce30b48,pc),r0
    mov.l @(PTR_ce30b78,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b40:
    mov.w @(DAT_ce30b4a,pc),r0
    bra LAB_ce30c0a
    mov.b r4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b46:
    #data 0x01fc
DAT_ce30b48:
    #data 0x03f4
DAT_ce30b4a:
    #data 0x01a7
DAT_ce30b4c:
    #data 0x01fa
DAT_ce30b4e:
    #data 0x2000
DAT_ce30b50:
    #data 0x01a1
DAT_ce30b52:
    #data 0x01d6
DAT_ce30b54:
    #data 0x02a4
DAT_ce30b56:
    #data 0x01e8
    #align4

PTR_ce30b58:
    #data DAT_ce336f0
PTR_ce30b5c:
    #data DAT_ce33708
PTR_ce30b60:
    #data loc_8c04223a
PTR_ce30b64:
    #data DAT_ce336f4
PTR_ce30b68:
    #data DAT_ce3370c
PTR_ce30b6c:
    #data loc_8c2896b0
PTR_ce30b70:
    #data loc_8c034e8c
PTR_ce30b74:
    #data DAT_ce336f8
PTR_ce30b78:
    #data DAT_ce33710

;=============================================

LAB_ce30b7c:
    mov.w @(DAT_ce30c5a,pc),r0
    mov r6,r13
    mov 0x10,r5
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce30b92
    mov 0x15,r12
    mov.w @(DAT_ce30c5c,pc),r0
    mov.l @(PTR_ce30c6c,pc),r3
    bra LAB_ce30b98
    mov.l r3,@(r0,r14)

LAB_ce30b92:
    mov.w @(DAT_ce30c5c,pc),r0
    mov.l @(PTR_ce30c70,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b98:
    mov.w @(DAT_ce30c5e,pc),r0
    bra LAB_ce30c0a
    mov.b r6,@(r0,r14)

LAB_ce30b9e:
    mov.w @(DAT_ce30c60,pc),r0
    mov 0x02,r13
    mov.w @(DAT_ce30c62,pc),r3
    mov 0x11,r5
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt/s LAB_ce30bee
    mov 0x16,r12
    mova @(DAT_ce30c74,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce30c64,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bf LAB_ce30bee
    fldi0 fr4
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x05,r13
    mov 0x12,r5
    mov r4,r0
    nop
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30c5a,pc),r0
    mov.b r4,@(r0,r14)
    add 0xDA,r0
    mov.b r4,@(r0,r14)
    add 0xFE,r0
    mov.b r4,@(r0,r14)
    mov 0x10,r0
    mov.b r6,@(r0,r7)

LAB_ce30bee:
    mov.w @(DAT_ce30c5a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30bfe
    mov.w @(DAT_ce30c5c,pc),r0
    mov.l @(PTR_ce30c78,pc),r3
    bra LAB_ce30c04
    mov.l r3,@(r0,r14)

LAB_ce30bfe:
    mov.w @(DAT_ce30c5c,pc),r0
    mov.l @(PTR_ce30c7c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c04:
    mov.w @(DAT_ce30c5e,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)

LAB_ce30c0a:
    mov.w @(DAT_ce30c66,pc),r0
    mov.l @(PTR_ce30c80,pc),r3
    mov.b r5,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r12,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30c84,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce30c88,pc),r3
    mov r14,r4
    mov 0x0C,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c46:
    mov.w @(DAT_ce30c68,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c8c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c5a:
    #data 0x01fc
DAT_ce30c5c:
    #data 0x03f4
DAT_ce30c5e:
    #data 0x01a7
DAT_ce30c60:
    #data 0x01fa
DAT_ce30c62:
    #data 0x1000
DAT_ce30c64:
    #data 0x041c
DAT_ce30c66:
    #data 0x01a1
DAT_ce30c68:
    #data 0x01ff
    #align4

PTR_ce30c6c:
    #data DAT_ce336fc
PTR_ce30c70:
    #data DAT_ce33714
DAT_ce30c74:
    #data 0x433c9249
PTR_ce30c78:
    #data DAT_ce33700
PTR_ce30c7c:
    #data DAT_ce33718
PTR_ce30c80:
    #data loc_8c2896b0
PTR_ce30c84:
    #data loc_8c04223a
PTR_ce30c88:
    #data loc_8c034e8c
PTR_ce30c8c:
    #data PTR_ce3387c

;=============================================

LAB_ce30c90:
    sts.l PR,@-r15
    mov.l @(PTR_ce30d8c,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30c9e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r1
    mov r4,r14
    mov 0x34,r0
    mov.w @(DAT_ce30d82,pc),r3
    add r14,r1
    add r14,r3
    mov.l r3,@r15
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
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.l @(PTR_ce30d90,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0x9,r2),r0
    tst r0,r0
    bt LAB_ce30d06
    mov.w @(DAT_ce30d84,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30d06
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce30d94,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d06:
    mov.w @(DAT_ce30d86,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30d2a
    mov.w @(DAT_ce30d88,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce30d20
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce30d46
    mov.l @r15+,r14

LAB_ce30d20:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce30d68
    mov.l @r15+,r14

LAB_ce30d2a:
    mov.w @(DAT_ce30d88,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30d3c
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce30dea
    mov.l @r15+,r14

LAB_ce30d3c:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra FUN_ce30e4c
    mov.l @r15+,r14

LAB_ce30d46:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d98,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d60
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d9c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30d60:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30d68:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d98,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30da0
    lds.l @r15+,PR
    mov.l @(PTR_ce30d9c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d82:
    #data 0x02a4
DAT_ce30d84:
    #data 0x01a3
DAT_ce30d86:
    #data 0x01fe
DAT_ce30d88:
    #data 0x01f9
    #align4

PTR_ce30d8c:
    #data loc_8c0511e2
PTR_ce30d90:
    #data loc_8c052c84
PTR_ce30d94:
    #data LAB_ce3275e
PTR_ce30d98:
    #data loc_8c034dee
PTR_ce30d9c:
    #data loc_8c051648

;=============================================

LAB_ce30da0:
    mov.w @(DAT_ce30eba,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30de4
    cmp/eq 0x02,r0
    bt LAB_ce30de4
    cmp/eq 0x01,r0
    bf LAB_ce30de4
    mov.w @(DAT_ce30ebc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30de4
    mov.w @(DAT_ce30ebe,pc),r0
    mov 0x19,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30ec4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce30ebc,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30de4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30dea:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ec8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e04
    lds.l @r15+,PR
    mov.l @(PTR_ce30ecc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e04:
    mov.w @(DAT_ce30eba,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30e46
    cmp/eq 0x01,r0
    bt LAB_ce30e46
    cmp/eq 0x02,r0
    bf LAB_ce30e46
    mov.w @(DAT_ce30ebc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e46
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30ec4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce30e46:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30e4c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30ec8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e66
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30ecc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30e66:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30e6e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ed0,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30ed4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30e84:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30ec0,pc),r3
    mov r4,r14
    mov.l @(PTR_ce30ed8,pc),r2
    add r14,r3
    mov.l r3,@r15
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30edc,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0x9,r2),r0
    tst r0,r0
    bt LAB_ce30ee4
    mov.w @(DAT_ce30ec2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30ee4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce30ee0,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30eba:
    #data 0x01e8
DAT_ce30ebc:
    #data 0x0141
DAT_ce30ebe:
    #data 0x01a1
DAT_ce30ec0:
    #data 0x02a4
DAT_ce30ec2:
    #data 0x01a3
    #align4

PTR_ce30ec4:
    #data loc_8c2896b0
PTR_ce30ec8:
    #data loc_8c034dee
PTR_ce30ecc:
    #data loc_8c051648
PTR_ce30ed0:
    #data loc_8c050084
PTR_ce30ed4:
    #data loc_8c04ff88
PTR_ce30ed8:
    #data loc_8c04fea8
PTR_ce30edc:
    #data loc_8c050048
PTR_ce30ee0:
    #data LAB_ce327c8

;=============================================

LAB_ce30ee4:
    mov.w @(DAT_ce30fd6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30ef6
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce30f00
    mov.l @r15+,r14

LAB_ce30ef6:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce30f36
    mov.l @r15+,r14

LAB_ce30f00:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fe0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f1a
    lds.l @r15+,PR
    mov.l @(PTR_ce30fe4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f1a:
    mov.l @(PTR_ce30fe8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30f30
    lds.l @r15+,PR
    mov.l @(PTR_ce30fec,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f30:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f36:
    mov.w @(DAT_ce30fda,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce30fd8,pc),r4
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30f6c
    add r14,r4
    cmp/eq 0x01,r0
    bt LAB_ce30f6c
    cmp/eq 0x02,r0
    bf LAB_ce30f98
    mov 0x10,r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30f6c
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce30ff0,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f6c:
    mov.l @(PTR_ce30fe0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f82
    lds.l @r15+,PR
    mov.l @(PTR_ce30fe4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30f82:
    mov.l @(PTR_ce30fe8,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30f98
    lds.l @r15+,PR
    mov.l @(PTR_ce30fec,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30f98:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f9e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fe0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30fdc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30fd0
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce30ff4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30ff8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce30fd0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fd6:
    #data 0x01fe
DAT_ce30fd8:
    #data 0x02a4
DAT_ce30fda:
    #data 0x01e8
DAT_ce30fdc:
    #data 0x014b
    #align4

PTR_ce30fe0:
    #data loc_8c034dee
PTR_ce30fe4:
    #data loc_8c05176e
PTR_ce30fe8:
    #data loc_8c052ce2
PTR_ce30fec:
    #data loc_8c052dac
PTR_ce30ff0:
    #data PTR_ce3388c
DAT_ce30ff4:
    #data 0xc1892492
DAT_ce30ff8:
    #data 0xc0092492

;=============================================

LAB_ce30ffc:
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
    mova @(DAT_ce310f4,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce310ee,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bf LAB_ce31064
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce310fc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce310ee,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce310f8,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov.s @(r0,r14),fr1
    fdiv fr2,fr1
    fneg fr1
    fmov fr1,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31100,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31104,pc),r3
    mov 0x30,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31064:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3106a:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r1
    mov.l @(PTR_ce310fc,pc),r3
    add r14,r1
    mov 0x38,r0
    sts.l PR,@-r15
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
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce310ee,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce310c4
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce310f0,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce310ee,pc),r0
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

LAB_ce310c4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310ca:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310fc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310e8
    mov.l @(PTR_ce31108,pc),r3
    mov 0x00,r0
    mov.b r0,@(0x6,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce310e8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310ee:
    #data 0x041c
DAT_ce310f0:
    #data 0x01f9
    #align4

DAT_ce310f4:
    #data 0xc2f00000
DAT_ce310f8:
    #data 0x41000000
PTR_ce310fc:
    #data loc_8c034dee
PTR_ce31100:
    #data loc_8c0511b4
PTR_ce31104:
    #data loc_8c04223a
PTR_ce31108:
    #data loc_8c051648

;=============================================

LAB_ce3110c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31168
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov 0x44,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3122c,pc),r0
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31234,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31238,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3123c,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31240,pc),r2
    mov 0x14,r5
    mov 0x02,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31244,pc),r3
    mov 0x15,r5
    jsr @r3
    mov r14,r4

LAB_ce31168:
    mov.w @(DAT_ce3122e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31178
    mov.l @(PTR_ce31248,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31178:
    mov 0x5C,r1
    mov.l @(PTR_ce3124c,pc),r3
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
    mov.l @(PTR_ce31250,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311cc
    lds.l @r15+,PR
    mov.l @(PTR_ce31254,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce311cc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311d2:
    mov r4,r3
    mov.l @(PTR_ce31258,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce311e4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31250,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31230,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31226
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce3125c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31232,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3121e
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3121e:
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce31226:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3122c:
    #data 0x01f9
DAT_ce3122e:
    #data 0x01ff
DAT_ce31230:
    #data 0x0141
DAT_ce31232:
    #data 0x01d2
    #align4

PTR_ce31234:
    #data loc_8c2896b0
PTR_ce31238:
    #data loc_8c052b4c
PTR_ce3123c:
    #data loc_8c056de4
PTR_ce31240:
    #data loc_8c034e8c
PTR_ce31244:
    #data loc_8c04223a
PTR_ce31248:
    #data loc_8c0511e2
PTR_ce3124c:
    #data loc_8c052c84
PTR_ce31250:
    #data loc_8c034dee
PTR_ce31254:
    #data loc_8c051648
PTR_ce31258:
    #data PTR_ce3389c
DAT_ce3125c:
    #data 0xc1200000

;=============================================

LAB_ce31260:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313a0,pc),r3
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
    tst r0,r0
    bf LAB_ce312a6
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    mov.l @(PTR_ce313a4,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce312a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce312ac:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce313a0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312c6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce313a8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce312c6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce312ce:
    mov r4,r3
    mov.l @(PTR_ce313ac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce312e0:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3139c,pc),r4
    mov 0x00,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add r14,r4
    mov.l @(PTR_ce313b0,pc),r2
    mov 0x1E,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.b r3,@r4
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce313b4,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce313b8,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce313bc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3139e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3132e
    mova @(DAT_ce313c0,pc),r0
    fmov.s @r0,fr5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3132e:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr5,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31340:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3139c,pc),r4
    sts.l PR,@-r15
    add r14,r4
    mov.b @r4,r3
    tst r3,r3
    bf LAB_ce3136e
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
    bra LAB_ce31384
    fmov fr2,@(r0,r14)

LAB_ce3136e:
    mov.l @(PTR_ce313a0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31384
    lds.l @r15+,PR
    mov.l @(PTR_ce313a8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31384:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3138a:
    mov r4,r3
    mov.l @(PTR_ce313c4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3139c:
    #data 0x02a4
DAT_ce3139e:
    #data 0x01d2
    #align4

PTR_ce313a0:
    #data loc_8c034dee
PTR_ce313a4:
    #data loc_8c034e8c
PTR_ce313a8:
    #data loc_8c051648
PTR_ce313ac:
    #data PTR_ce338a8
PTR_ce313b0:
    #data loc_8c042008
PTR_ce313b4:
    #data loc_8c0e5538
DAT_ce313b8:
    #data 0x43200000
DAT_ce313bc:
    #data 0x40dc0000
DAT_ce313c0:
    #data 0xc3200000
PTR_ce313c4:
    #data PTR_ce338b0

;=============================================

LAB_ce313c8:
    mov.w @(DAT_ce314de,pc),r0
    mov 0x00,r3
    mov.l @(PTR_ce314e4,pc),r2
    mov.b r3,@(r0,r4)
    mov.b @r2,r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce313ec
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce314de,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce314e8,pc),r3
    jmp @r3
    mov 0x12,r5

LAB_ce313ec:
    rts
    nop

LAB_ce313f0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314ec,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31422
    mov.b @(0x6,r14),r0
    mov 0x01,r5
    mov.l @(PTR_ce314e8,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce314f0,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce314f4,pc),r3
    mov 0x01,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31422:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31428:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314ec,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31454
    mov.b @(0x5,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce314e8,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce314f8,pc),r2
    mov 0x00,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31454:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3145a:
    mov r4,r3
    mov.l @(PTR_ce314fc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3146c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce314e0,pc),r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3149c
    add r14,r13
    cmp/eq 0x02,r0
    bt LAB_ce3149c
    cmp/eq 0x01,r0
    bt LAB_ce314c6
    cmp/eq 0x03,r0
    bt LAB_ce314c6
    cmp/eq 0x04,r0
    bt LAB_ce314c6
    bra LAB_ce314d6
    nop

LAB_ce3149c:
    mov.l @(PTR_ce31500,pc),r3
    jsr @r3
    nop
    mov 0x0F,r4
    mov.l @(PTR_ce314e8,pc),r3
    and r0,r4
    mov.l @(PTR_ce31504,pc),r0
    mov 0x13,r5
    mov.b @(r0,r4),r0
    mov.b r0,@(0x1,r13)
    mov.b @(0x1,r13),r0
    mov r0,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31508,pc),r2
    mov r14,r4
    mov 0x0A,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce314c6:
    lds.l @r15+,PR
    mov.l @(PTR_ce314e8,pc),r2
    mov 0x02,r6
    mov 0x13,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce314d6:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314de:
    #data 0x012c
DAT_ce314e0:
    #data 0x02a4
    #align4

PTR_ce314e4:
    #data loc_8c2895f0
PTR_ce314e8:
    #data loc_8c034e8c
PTR_ce314ec:
    #data loc_8c034dee
PTR_ce314f0:
    #data loc_8c0511b4
PTR_ce314f4:
    #data loc_8c0e5538
PTR_ce314f8:
    #data loc_8c035162
PTR_ce314fc:
    #data PTR_ce338bc
PTR_ce31500:
    #data loc_8c03319e
PTR_ce31504:
    #data DAT_ce3376c
PTR_ce31508:
    #data loc_8c042008

;=============================================

LAB_ce3150c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce315de,pc),r0
    mov r4,r14
    mov.w @(DAT_ce315dc,pc),r3
    add r14,r3
    mov.l r3,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x16,r0
    bf LAB_ce31546
    mov.l @(PTR_ce315e4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce31546
    mov.l @(PTR_ce315e8,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce315ec,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31546:
    mov 0x20,r0
    mov.l @(PTR_ce315f0,pc),r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31566
    cmp/eq 0x02,r0
    bt LAB_ce315a8
    cmp/eq 0x01,r0
    bt LAB_ce315a8
    cmp/eq 0x03,r0
    bt LAB_ce315a8
    cmp/eq 0x04,r0
    bt LAB_ce315a8
    bra LAB_ce315ac
    nop

LAB_ce31566:
    mov.l @r15,r3
    mov.b @(0x1,r3),r0
    tst r0,r0
    bt LAB_ce315a8
    jsr @r13
    mov r14,r4
    mov.w @(DAT_ce315e0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce315ac
    mov 0x25,r0
    mov.b @(r0,r14),r6
    mov.w @(DAT_ce315e0,pc),r0
    extu.b r6,r6
    mov r6,r3
    shll r6
    mov.b @(r0,r14),r0
    add r3,r6
    shll2 r6
    tst 0x01,r0
    shll2 r6
    bt/s LAB_ce31596
    add 0x23,r6
    add 0x01,r6

LAB_ce31596:
    mov r14,r4
    mov 0x00,r5
    mov 0x01,r7
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce315f4,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce315a8:
    jsr @r13
    mov r14,r4

LAB_ce315ac:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce315b6:
    mov.w @(DAT_ce315e2,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce315f8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce315ca:
    mov r4,r3
    mov.l @(PTR_ce315fc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315dc:
    #data 0x02a4
DAT_ce315de:
    #data 0x01d0
DAT_ce315e0:
    #data 0x0141
DAT_ce315e2:
    #data 0x01e9
    #align4

PTR_ce315e4:
    #data loc_8c046c8a
PTR_ce315e8:
    #data loc_8c035162
PTR_ce315ec:
    #data loc_8c051648
PTR_ce315f0:
    #data loc_8c034dee
PTR_ce315f4:
    #data loc_8c03544c
PTR_ce315f8:
    #data PTR_ce338c4
PTR_ce315fc:
    #data PTR_ce338e4

;=============================================

LAB_ce31600:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    mov 0x30,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31734,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31736,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31738,pc),r0
    mov.b r4,@(r0,r14)
    add 0xA5,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31740,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31744,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31748,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3174c,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3173a,pc),r0
    mov 0x15,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce31750,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31666:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31754,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce3173c,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3167c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31758,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3173e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce316c2
    mov.l @(PTR_ce3175c,pc),r2
    mov 0x06,r4
    mov.w @r2,r3
    cmp/gt r4,r3
    bf LAB_ce316be
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x00,r0
    mov.l @r15,r3
    mov.b r0,@(0x2,r3)
    mov.l @r15,r3
    mov r4,r0
    nop
    mov r14,r4
    mov.b r0,@(0x4,r3)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31760,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce316be:
    mov 0x02,r0
    mov.b r0,@(0x6,r14)

LAB_ce316c2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce316ca:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.b @(0x2,r5),r0
    cmp/pz r0
    bf/s LAB_ce316f0
    mov r4,r14
    mov.b @(0x2,r5),r0
    cmp/eq 0x3F,r0
    bf LAB_ce316fa
    mov 0x01,r0
    mov.l @(PTR_ce31764,pc),r3
    mov.b r0,@(0x3,r5)
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31768,pc),r2
    mov 0x20,r5
    jsr @r2
    mov r14,r4

LAB_ce316f0:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)

LAB_ce316fa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31700:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31758,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3171a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3176c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3171a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31722:
    mov r4,r3
    mov.l @(PTR_ce31770,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31734:
    #data 0x01f9
DAT_ce31736:
    #data 0x041c
DAT_ce31738:
    #data 0x01fc
DAT_ce3173a:
    #data 0x01a3
DAT_ce3173c:
    #data 0x02a4
DAT_ce3173e:
    #data 0x0141
    #align4

PTR_ce31740:
    #data loc_8c2896b0
PTR_ce31744:
    #data loc_8c05218a
PTR_ce31748:
    #data loc_8c05115a
PTR_ce3174c:
    #data loc_8c035162
PTR_ce31750:
    #data loc_8c034e8c
PTR_ce31754:
    #data PTR_ce338f0
PTR_ce31758:
    #data loc_8c034dee
PTR_ce3175c:
    #data loc_8c287ae8
PTR_ce31760:
    #data loc_8c09e6e0
PTR_ce31764:
    #data loc_8c056de4
PTR_ce31768:
    #data loc_8c042008
PTR_ce3176c:
    #data loc_8c051648
PTR_ce31770:
    #data PTR_ce338f8

;=============================================

LAB_ce31774:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x02,r5
    mov.w @(DAT_ce31868,pc),r13
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add r14,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3186a,pc),r0
    mov.b r5,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x6,r13)
    mov.w @(DAT_ce3186c,pc),r0
    fldi0 fr4
    mov.b @(r0,r14),r0
    extu.b r0,r0
    and r5,r0
    shar r0
    mov.b r0,@(0x5,r13)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3186e,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x32,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31874,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3186c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce317f4
    mov.l @(DAT_ce31878,pc),r1
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    bra LAB_ce31806
    fmov fr2,@(r0,r14)

LAB_ce317f4:
    mov.w @(DAT_ce3186c,pc),r0
    mov.l @(PTR_ce3187c,pc),r2
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31870,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r2
    mov r14,r4

LAB_ce31806:
    mov.l @(PTR_ce31880,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31884,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x5,r13),r0
    mov 0x15,r5
    mov.l @(PTR_ce31888,pc),r3
    mov r0,r6
    add 0x03,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3188c,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce31890,pc),r2
    mov.b @(r0,r14),r6
    mov 0x01,r7
    lds.l @r15+,PR
    extu.b r6,r6
    mov r7,r5
    mov r6,r3
    shll r6
    add r3,r6
    mov.l @r15+,r13
    shll2 r6
    mov r14,r4
    shll2 r6
    add 0x2F,r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce3184a:
    mov.w @(DAT_ce3186a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31894,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31868,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31868:
    #data 0x02a4
DAT_ce3186a:
    #data 0x01f5
DAT_ce3186c:
    #data 0x01f9
DAT_ce3186e:
    #data 0x01a3
DAT_ce31870:
    #data 0x041c
    #align4

PTR_ce31874:
    #data loc_8c2896b0
DAT_ce31878:
    #data 0xc2ab6db6
PTR_ce3187c:
    #data loc_8c05115a
PTR_ce31880:
    #data loc_8c05218a
PTR_ce31884:
    #data loc_8c0eeb9c
PTR_ce31888:
    #data loc_8c034e8c
PTR_ce3188c:
    #data loc_8c035162
PTR_ce31890:
    #data loc_8c03544c
PTR_ce31894:
    #data PTR_ce33904

;=============================================

LAB_ce31898:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce319b4,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319a2
    mov.l @(PTR_ce319b8,pc),r3
    mov 0x15,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce319aa,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce318d0
    mov r14,r4
    mov.l @(DAT_ce319bc,pc),r1
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce318d0:
    mov.l @(PTR_ce319c0,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce319c4,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.l @r15,r4
    mov.b @(0x5,r4),r0
    mov r0,r4
    mov.l @(PTR_ce319c8,pc),r0
    shll2 r4
    mov.l @(r0,r4),r4
    mov.w @(DAT_ce319ac,pc),r0
    mov.b @(r0,r14),r3
    mova @(DAT_ce319cc,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce319d0,pc),r0
    extu.b r3,r3
    fmov.s @r0,fr4
    shll2 r3
    shll2 r3
    add r3,r4
    mov.l @r4+,r3
    mov 0x5C,r0
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    mov.l @r4+,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce319d4,pc),r0
    fmov.s @r0,fr5
    mov.l @r4+,r3
    mov 0x60,r0
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    mov.l @r4,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319ae,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31952
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31952:
    mov.w @(DAT_ce319ac,pc),r0
    mov 0x00,r4
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x32,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce319d8,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x10,r2
    mov.w @(DAT_ce319b0,pc),r0
    mov.w @(r0,r14),r1
    or r2,r1
    mov.w r1,@(r0,r14)
    mov 0x02,r1
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce319aa,pc),r0
    mov.b r1,@(r0,r14)
    mov r14,r4
    mov 0x15,r5
    mov 0x06,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce319dc,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce319a2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319aa:
    #data 0x01f9
DAT_ce319ac:
    #data 0x01a3
DAT_ce319ae:
    #data 0x01d2
DAT_ce319b0:
    #data 0x01ac
    #align4

PTR_ce319b4:
    #data loc_8c034dee
PTR_ce319b8:
    #data loc_8c042008
DAT_ce319bc:
    #data 0x42ab6db6
PTR_ce319c0:
    #data loc_8c09f35c
PTR_ce319c4:
    #data loc_8c056de4
PTR_ce319c8:
    #data PTR_ce337dc
DAT_ce319cc:
    #data 0x3fd55555
DAT_ce319d0:
    #data 0x47800000
DAT_ce319d4:
    #data 0x40092492
PTR_ce319d8:
    #data loc_8c2896b0
PTR_ce319dc:
    #data loc_8c034e8c

;=============================================

LAB_ce319e0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31b12,pc),r0
    mov r4,r14
    mov.l @(PTR_ce31b20,pc),r13
    mov.l r5,@r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce319fe
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bf LAB_ce31aa8

LAB_ce319fe:
    mov.w @(DAT_ce31b14,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31a0e
    mov.l @r15,r5
    bsr FUN_ce31c32
    mov r14,r4

LAB_ce31a0e:
    mov.w @(DAT_ce31b16,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce31aea
    mov 0x00,r12
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
    mov.w @(DAT_ce31b18,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31a90
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31b1a,pc),r0
    fldi0 fr4
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce31b18,pc),r0
    mov.l @(PTR_ce31b24,pc),r3
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
    bra LAB_ce31ad0
    mov 0x0B,r6

LAB_ce31a90:
    mov.w @(DAT_ce31b1c,pc),r0
    mov.b @(r0,r14),r4
    tst r4,r4
    bt LAB_ce31ada
    mov.w @(DAT_ce31b1e,pc),r0
    mov 0x01,r1
    exts.b r4,r2
    mov.b @(r0,r14),r3
    extu.b r3,r3
    shad r3,r1
    tst r1,r2
    bf LAB_ce31ada

LAB_ce31aa8:
    mov.b @(0x7,r14),r0
    mov 0x07,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce31b28,pc),r0
    fmov.s @r0,fr2
    mov 0x5C,r0
    fneg fr3
    fdiv fr2,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31b2c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31b30,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31ad0:
    mov 0x15,r5
    jsr @r13
    mov r14,r4
    bra LAB_ce31b06
    nop

LAB_ce31ada:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31b34,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31aea:
    mov.l @(PTR_ce31b34,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b06
    mov.l @r15,r3
    mov r12,r0
    nop
    mov 0x15,r5
    mov.b r0,@(0x5,r3)
    mov 0x09,r6
    jsr @r13
    mov r14,r4

LAB_ce31b06:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b12:
    #data 0x019e
DAT_ce31b14:
    #data 0x01e9
DAT_ce31b16:
    #data 0x0141
DAT_ce31b18:
    #data 0x041c
DAT_ce31b1a:
    #data 0x01f9
DAT_ce31b1c:
    #data 0x01fd
DAT_ce31b1e:
    #data 0x01d2
    #align4

PTR_ce31b20:
    #data loc_8c034e8c
PTR_ce31b24:
    #data loc_8c0511b4
DAT_ce31b28:
    #data 0x40800000
DAT_ce31b2c:
    #data 0x414db6db
DAT_ce31b30:
    #data 0xbf9a4924
PTR_ce31b34:
    #data loc_8c034dee

;=============================================

LAB_ce31b38:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31c6c,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31b8e
    mov 0x00,r13
    mov.l @(PTR_ce31c74,pc),r3
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
    bra LAB_ce31bac
    fmov fr2,@(r0,r14)

LAB_ce31b8e:
    mov.l @(PTR_ce31c74,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31bac
    mov.l @r15,r2
    mov r13,r0
    nop
    mov.l @(PTR_ce31c78,pc),r3
    mov 0x15,r5
    mov.b r0,@(0x5,r2)
    mov 0x09,r6
    jsr @r3
    mov r14,r4

LAB_ce31bac:
    mov.w @(DAT_ce31c6e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31c00
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31c70,pc),r0
    fldi0 fr4
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31c6e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0xFF,r0
    mov.l @r15,r3
    mov.b r0,@(0x5,r3)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31c7c,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x15,r5
    mov 0x0B,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31c78,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c00:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31c0a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31c74,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c2c
    mov.l @(PTR_ce31c80,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31c84,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c2c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31c32:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov r4,r13
    mov.l r12,@-r15
    mov r5,r12
    mov.l r11,@-r15
    mov 0x01,r11
    mov r11,r3
    mov.w @(DAT_ce31c72,pc),r2
    mov.l r10,@-r15
    mov.l r9,@-r15
    mov.l r8,@-r15
    mov 0x00,r8
    fmov.s fr15,@-r15
    mov.l @(PTR_ce31c88,pc),r14
    sts.l PR,@-r15
    mov.b @(0x2,r13),r0
    mov.l @(PTR_ce31c78,pc),r10
    extu.b r0,r0
    and r11,r0
    neg r0,r0
    shad r0,r3
    mul.l r2,r3
    mova @(DAT_ce31c8c,pc),r0
    fmov.s @r0,fr15
    sts MACL,r3
    add r3,r14
    bra LAB_ce31d0c
    mov r8,r9

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c6c:
    #data 0x0141
DAT_ce31c6e:
    #data 0x041c
DAT_ce31c70:
    #data 0x01f9
DAT_ce31c72:
    #data 0x05a4
    #align4

PTR_ce31c74:
    #data loc_8c034dee
PTR_ce31c78:
    #data loc_8c034e8c
PTR_ce31c7c:
    #data loc_8c0511b4
PTR_ce31c80:
    #data loc_8c035162
PTR_ce31c84:
    #data loc_8c051648
PTR_ce31c88:
    #data loc_8c268340
DAT_ce31c8c:
    #data 0x40092492

;=============================================

LAB_ce31c90:
    mov.b @r14,r2
    tst r2,r2
    bt LAB_ce31d06
    mov.w @(DAT_ce31dc4,pc),r0
    mov.b @(r0,r14),r2
    add 0x01,r0
    mov.b @(r0,r14),r4
    mov 0x34,r0
    extu.b r2,r2
    fmov.s @(r0,r13),fr6
    extu.b r4,r3
    add r3,r2
    lds r2,FPUL
    extu.b r4,r4
    float FPUL,fr3
    lds r4,FPUL
    fmov fr3,fr4
    fmul fr15,fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr0
    fmov.s @(r0,r13),fr2
    fsub fr3,fr6
    float FPUL,fr3
    fsub fr0,fr2
    fmov fr15,fr0
    fmac fr0,fr3,fr2
    fmov fr6,fr0
    fmov fr2,fr5
    fsub fr4,fr5
    fmov fr4,fr2
    fmul fr4,fr2
    fmov fr5,fr3
    fmul fr5,fr3
    fmac fr0,fr6,fr3
    fcmp/gt fr3,fr2
    bf LAB_ce31cf2
    mov.b @(0x5,r12),r0
    tst r0,r0
    bf LAB_ce31d06
    mov r11,r0
    nop
    mov 0x15,r5
    mov.b r0,@(0x5,r12)
    mov 0x05,r6
    jsr @r10
    mov r13,r4
    bra LAB_ce31d12
    nop

LAB_ce31cf2:
    mov.b @(0x5,r12),r0
    tst r0,r0
    bt LAB_ce31d06
    mov r8,r0
    nop
    mov 0x15,r5
    mov.b r0,@(0x5,r12)
    mov 0x09,r6
    jsr @r10
    mov r13,r4

LAB_ce31d06:
    mov.w @(DAT_ce31dc6,pc),r3
    add 0x01,r9
    add r3,r14

LAB_ce31d0c:
    mov 0x03,r2
    cmp/ge r2,r9
    bf LAB_ce31c90

LAB_ce31d12:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r8
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31d26:
    mov r4,r3
    mov.l @(PTR_ce31dcc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31d38:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r3
    fldi0 fr4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31dc8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31dca,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31dd0,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31dd4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31dd8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31ddc,pc),r2
    mov r14,r4
    mov 0x0C,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31d86:
    mov r4,r3
    mov.l @(PTR_ce31de0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31d98:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce31de4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31de8
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov r14,r4
    mov 0x11,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31ddc,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31dc4:
    #data 0x013c
DAT_ce31dc6:
    #data 0x0b48
DAT_ce31dc8:
    #data 0x041c
DAT_ce31dca:
    #data 0x01f9
    #align4

PTR_ce31dcc:
    #data PTR_ce33910
PTR_ce31dd0:
    #data loc_8c056de4
PTR_ce31dd4:
    #data loc_8c05218a
PTR_ce31dd8:
    #data loc_8c05115a
PTR_ce31ddc:
    #data loc_8c034e8c
PTR_ce31de0:
    #data PTR_ce3391c
PTR_ce31de4:
    #data loc_8c034dee

;=============================================

LAB_ce31de8:
    mov.l @(PTR_ce31f38,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce31e3c
    mov r0,r13
    mov.b @(0x7,r14),r0
    mov 0x03,r3
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x05,r6
    mov.w @(DAT_ce31f2a,pc),r0
    mov r6,r5
    mov.b r3,@(r0,r14)
    add 0xF8,r0
    mov.w @(DAT_ce31f2c,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0D,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31f3c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f40,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31f2e,pc),r0
    mov 0x00,r3
    mov 0x15,r5
    mov.b r3,@(r0,r13)
    mov 0x0D,r6
    mov.l @(PTR_ce31f44,pc),r3
    jsr @r3
    mov r14,r4
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31f48,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e3c:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31e46:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31f30,pc),r3
    mov r4,r14
    mov.w @(DAT_ce31f32,pc),r0
    mov 0x01,r2
    add r14,r3
    mov.l r3,@r15
    mov 0x03,r3
    mov.b r2,@(r0,r14)
    add 0x08,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31f4c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f34,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e9e
    mov.b @(0x7,r14),r0
    mov 0x02,r3
    mov r14,r4
    mov 0x03,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31f36,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31f50,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31f54,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x00,r0
    mov.l @r15,r3
    mov.b r0,@(0x7,r3)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31f58,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e9e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31ea6:
    mov.w @(DAT_ce31f32,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x03,r2
    mov.w @(DAT_ce31f30,pc),r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0x08,r0
    mov.b r2,@(r0,r14)
    add r14,r13
    mov.b @(0x7,r13),r0
    cmp/pz r0
    bf LAB_ce31f0c
    mov.l @(PTR_ce31f4c,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31ef0
    mov 0x60,r1
    add r14,r1
    mov 0x38,r0
    fmov.s @r1,fr2
    fmov.s @(r0,r14),fr1
    mov 0x6C,r1
    add r14,r1
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr1
    fmov.s @r1,fr2
    fadd fr2,fr1
    fmov fr1,@(r0,r14)

LAB_ce31ef0:
    mov.b @(0x7,r13),r0
    cmp/pl r0
    bf LAB_ce31f22
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31f44,pc),r3
    mov 0x0E,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f0c:
    mov.w @(DAT_ce31f36,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31f5c,pc),r3
    mov.b r4,@(r0,r14)
    add 0xF1,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f22:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f2a:
    #data 0x01f2
DAT_ce31f2c:
    #data 0x00c3
DAT_ce31f2e:
    #data 0x0236
DAT_ce31f30:
    #data 0x02a4
DAT_ce31f32:
    #data 0x01ea
DAT_ce31f34:
    #data 0x0141
DAT_ce31f36:
    #data 0x01f9
    #align4

PTR_ce31f38:
    #data loc_8c045790
PTR_ce31f3c:
    #data loc_8c02fec4
PTR_ce31f40:
    #data loc_8c0523d8
PTR_ce31f44:
    #data loc_8c034e8c
PTR_ce31f48:
    #data loc_8c0424fe
PTR_ce31f4c:
    #data loc_8c034dee
DAT_ce31f50:
    #data 0x41dedb6d
DAT_ce31f54:
    #data 0xbf2b6db6
PTR_ce31f58:
    #data loc_8c0e5538
PTR_ce31f5c:
    #data loc_8c051648

;=============================================

LAB_ce31f60:
    mov.w @(DAT_ce3203a,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x03,r2
    fldi0 fr3
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0x08,r0
    mov.b r2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt/s LAB_ce31f9c
    mov 0x00,r13
    mov 0x60,r1
    add r14,r1
    mov 0x38,r0
    fmov.s @r1,fr2
    fmov.s @(r0,r14),fr1
    mov 0x6C,r1
    add r14,r1
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr1
    fmov.s @r1,fr2
    fadd fr2,fr1
    fmov fr1,@(r0,r14)

LAB_ce31f9c:
    mov.l @(PTR_ce32044,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31ff0
    mov.b @(0x7,r14),r0
    mov 0x38,r3
    mov r14,r4
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce32048,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x0F,r6
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3203c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3204c,pc),r3
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
    mov.l @(PTR_ce32050,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31ff0:
    mov.w @(DAT_ce3203e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32032
    mov.b r13,@(r0,r14)
    mov 0x22,r0
    mov 0x10,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce3203a,pc),r0
    mov 0x00,r6
    mov r6,r5
    mov.b r13,@(r0,r14)
    add 0xDE,r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov 0x23,r3
    mov.b r2,@(r0,r4)
    add 0xCF,r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce32040,pc),r0
    mov.l @(PTR_ce32054,pc),r3
    mov.b r13,@(r0,r4)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32032:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3203a:
    #data 0x01ea
DAT_ce3203c:
    #data 0x01a1
DAT_ce3203e:
    #data 0x0141
DAT_ce32040:
    #data 0x0236
    #align4

PTR_ce32044:
    #data loc_8c034dee
DAT_ce32048:
    #data 0xc1bc9249
PTR_ce3204c:
    #data loc_8c2896b0
PTR_ce32050:
    #data loc_8c034e8c
PTR_ce32054:
    #data loc_8c02fec4

;=============================================

LAB_ce32058:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32146,pc),r0
    mov r4,r14
    mov.w @(DAT_ce32144,pc),r3
    add r14,r3
    mov.l r3,@r15
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3209e
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
    mova @(DAT_ce3214c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32148,pc),r0
    fmov.s @(r0,r14),fr4
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fadd fr3,fr4
    fcmp/gt fr4,fr2
    bt LAB_ce320da
    fmov fr4,@(r0,r14)

LAB_ce3209e:
    mov.l @(PTR_ce32150,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce320da
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.w @(DAT_ce3214a,pc),r0
    mov 0x10,r6
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.w @(DAT_ce32148,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0xFF,r0
    mov.l @r15,r3
    mov.b r0,@(0x7,r3)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32154,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce320da:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce320e2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32150,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce320fc
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32158,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce320fc:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32104:
    mov r4,r3
    mov.l @(PTR_ce3215c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32116:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce32160,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32164,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32168,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32154,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32144:
    #data 0x02a4
DAT_ce32146:
    #data 0x0141
DAT_ce32148:
    #data 0x041c
DAT_ce3214a:
    #data 0x01f9
    #align4

DAT_ce3214c:
    #data 0x429a4924
PTR_ce32150:
    #data loc_8c034dee
PTR_ce32154:
    #data loc_8c034e8c
PTR_ce32158:
    #data loc_8c051648
PTR_ce3215c:
    #data PTR_ce33930
PTR_ce32160:
    #data loc_8c035162
PTR_ce32164:
    #data loc_8c05218a
PTR_ce32168:
    #data loc_8c05115a

;=============================================

LAB_ce3216c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce3225c,pc),r3
    mov r4,r14
    mov.w @(DAT_ce32254,pc),r13
    jsr @r3
    add r14,r13
    mov.w @(DAT_ce32256,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt/s LAB_ce321d0
    mov 0x00,r12
    mov.w @(DAT_ce32256,pc),r0
    mov 0x01,r3
    mov r15,r5
    mov 0x03,r6
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce32260,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32264,pc),r0
    mov.l @(PTR_ce32268,pc),r2
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32258,pc),r0
    mov 0x39,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3226c,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce321d0:
    mov.w @(DAT_ce32256,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce32214
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    mov.l @(PTR_ce32270,pc),r1
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32256,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    mov 0x02,r0
    mov.b r0,@(0x9,r13)
    mov.w @(DAT_ce3225a,pc),r0
    mov.w r0,@(0xa,r13)
    mov r12,r0
    nop
    mov.b r0,@(0x8,r13)
    mov 0x08,r0
    mov.b r0,@(0xe,r13)
    mov r12,r0
    nop
    mov r13,r5
    mov.l @(PTR_ce32274,pc),r3
    mov.b r0,@(0xf,r13)
    add 0x0A,r5
    mov 0x06,r6
    jsr @r3
    mov r14,r4

LAB_ce32214:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32220:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3225c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3223a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32278,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3223a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32242:
    mov r4,r3
    mov.l @(PTR_ce3227c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32254:
    #data 0x02a4
DAT_ce32256:
    #data 0x0141
DAT_ce32258:
    #data 0x01a1
DAT_ce3225a:
    #data 0x01f4
    #align4

PTR_ce3225c:
    #data loc_8c034dee
DAT_ce32260:
    #data 0x42855555
DAT_ce32264:
    #data 0x4304db6d
PTR_ce32268:
    #data loc_8c050834
PTR_ce3226c:
    #data loc_8c2896b0
PTR_ce32270:
    #data loc_8c0e5538
PTR_ce32274:
    #data loc_8c0f047c
PTR_ce32278:
    #data loc_8c051648
PTR_ce3227c:
    #data PTR_ce33940

;=============================================

LAB_ce32280:
    mov.w @(DAT_ce3237a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce3237c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3237e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3238c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce322c2
    mov.b @(0x7,r14),r0
    mov 0x02,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32380,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce322c2:
    mov.w @(DAT_ce32382,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32316
    mov.w @(DAT_ce32382,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32380,pc),r0
    mov.l @(PTR_ce32390,pc),r2
    mov.b @(r0,r14),r4
    mova @(DAT_ce32394,pc),r0
    fmov.s @r0,fr2
    extu.b r4,r4
    mov.w @(DAT_ce32384,pc),r0
    shll r4
    shll r4
    add r2,r4
    mov.w @r4+,r3
    lds r3,FPUL
    mov.b @(r0,r14),r3
    float FPUL,fr3
    tst r3,r3
    fmov fr3,fr4
    bt/s LAB_ce322fa
    fmul fr2,fr4
    fneg fr4

LAB_ce322fa:
    mov 0x34,r0
    mov.l @(DAT_ce32398,pc),r1
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    mov.w @r4,r3
    fmov.s @(r0,r14),fr2
    lds r3,FPUL
    float FPUL,fr3
    lds r1,FPUL
    fsts FPUL,fr0
    fmac fr0,fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce32316:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3231c:
    mov.w @(DAT_ce3237a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce3237c,pc),r0
    mov.l @(PTR_ce3239c,pc),r13
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3237e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3238c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32382,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32372
    mov.b @(0x7,r14),r0
    mov 0x05,r6
    mov.l @(PTR_ce323a0,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce323a4,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32386,pc),r0
    fmov.s @(r0,r13),fr2
    mov 0x5C,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce323a8,pc),r0
    fmov.s @r0,fr2
    mov.w @(DAT_ce32388,pc),r0
    fmov.s @(r0,r13),fr1
    mov 0x60,r0
    fadd fr2,fr1
    fmov fr1,@(r0,r14)

LAB_ce32372:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3237a:
    #data 0x03f8
DAT_ce3237c:
    #data 0x0328
DAT_ce3237e:
    #data 0x01ea
DAT_ce32380:
    #data 0x01f9
DAT_ce32382:
    #data 0x0141
DAT_ce32384:
    #data 0x01d2
DAT_ce32386:
    #data 0x0088
DAT_ce32388:
    #data 0x00a0
    #align4

PTR_ce3238c:
    #data loc_8c034dee
PTR_ce32390:
    #data DAT_ce337e4
DAT_ce32394:
    #data 0x3fd55555
DAT_ce32398:
    #data 0x40092492
PTR_ce3239c:
    #data loc_8c26a518
PTR_ce323a0:
    #data loc_8c02fec4
DAT_ce323a4:
    #data 0x43a00000
DAT_ce323a8:
    #data 0xc39a4924

;=============================================

LAB_ce323ac:
    mov.w @(DAT_ce324c0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x01,r13
    mov.w @(DAT_ce324c2,pc),r0
    mov.l @(PTR_ce324c8,pc),r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce324c4,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce324cc,pc),r0
    fmov.s @r0,fr4
    mov 0x34,r0
    mov r0,r1
    add r14,r1
    fmov.s @r1,fr3
    mov 0x5C,r1
    add r14,r1
    fmov.s @r1,fr2
    fsub fr3,fr2
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr2
    fadd fr2,fr3
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    mov r0,r1
    add r14,r1
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fmov.s @r1,fr2
    fsub fr3,fr2
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr2
    fadd fr2,fr3
    fmov fr3,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    ftrc fr3,FPUL
    sts FPUL,r4
    exts.w r4,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    ftrc fr3,FPUL
    fmov.s @(r0,r14),fr3
    mov 0x60,r0
    sts FPUL,r3
    ftrc fr3,FPUL
    fmov.s @(r0,r14),fr3
    exts.w r3,r3
    sts FPUL,r5
    ftrc fr3,FPUL
    sub r3,r4
    cmp/pz r4
    exts.w r5,r5
    sts FPUL,r3
    exts.w r3,r3
    sub r3,r5
    bt LAB_ce32432
    neg r4,r4

LAB_ce32432:
    cmp/pz r5
    bt LAB_ce32438
    neg r5,r5

LAB_ce32438:
    cmp/gt r13,r4
    bt LAB_ce32466
    cmp/gt r13,r5
    bt LAB_ce32466
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce324d0,pc),r3
    mov 0x07,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x34,r0
    mov 0x0F,r5
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32466:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3246e:
    mov.w @(DAT_ce324c0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce324c2,pc),r0
    mov.l @(PTR_ce324d4,pc),r12
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce324c4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce324c8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce324dc
    mov.w @(DAT_ce324c6,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32510
    mov.w @(DAT_ce324c6,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce324d8,pc),r1
    mov r3,r5
    mov.b @(r0,r14),r2
    mov r3,r6
    xor r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    mov 0x06,r5
    jsr @r12
    mov r14,r4
    bra LAB_ce32510
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce324c0:
    #data 0x03f8
DAT_ce324c2:
    #data 0x0328
DAT_ce324c4:
    #data 0x01ea
DAT_ce324c6:
    #data 0x0141
    #align4

PTR_ce324c8:
    #data loc_8c034dee
DAT_ce324cc:
    #data 0x41800000
PTR_ce324d0:
    #data loc_8c034e8c
PTR_ce324d4:
    #data loc_8c0e5538
PTR_ce324d8:
    #data loc_8c02fec4

;=============================================

LAB_ce324dc:
    mov 0x10,r11
    mov 0x00,r13

LAB_ce324e0:
    mov 0x07,r5
    jsr @r12
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce324f6
    mov r0,r4
    mov 0x21,r0
    mov.b r13,@(r0,r4)
    add 0x01,r13
    cmp/ge r11,r13
    bf LAB_ce324e0

LAB_ce324f6:
    mov.w @(DAT_ce3260e,pc),r0
    mov 0x00,r3
    mov.l @(r0,r14),r4
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32610,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x30,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32510:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3251c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32614,pc),r0
    mov 0x02,r5
    mov.w @(DAT_ce32612,pc),r3
    mov r4,r14
    mov 0x01,r6
    add r14,r3
    mov.l r3,@r15
    mov 0x05,r3
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce32616,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32618,pc),r0
    mov.b r6,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce325a4
    mov.w @(DAT_ce3260e,pc),r0
    mov 0x00,r13
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r6,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    add 0x27,r0
    mov.b r5,@(r0,r4)
    add 0xA8,r0
    mov 0x24,r3
    mov.b r3,@(r0,r4)
    mov r13,r0
    nop
    mov.b r0,@(0x6,r4)
    mov.l @(PTR_ce32624,pc),r3
    mov.w @(DAT_ce3261a,pc),r0
    jsr @r3
    mov.b r13,@(r0,r4)
    mov.w @(DAT_ce3261c,pc),r0
    fldi0 fr4
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3261e,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x20,r0
    mov.b r13,@(r0,r14)
    mov 0x40,r0
    mov.w r0,@(0x1c,r14)
    mov 0xFF,r0
    mov.l @r15,r3
    mov.b r0,@(0x8,r3)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce325a4:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce325ae:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x20,r0
    mov.w @(DAT_ce32612,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32634
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32674
    mov 0x20,r0
    mov.l @(DAT_ce32628,pc),r1
    mov.b @(r0,r14),r2
    mov 0x01,r3
    lds r1,FPUL
    add 0x01,r2
    mov.b r2,@(r0,r14)
    mov 0x02,r2
    mov.w @(DAT_ce32610,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32620,pc),r0
    mov.l @(PTR_ce3262c,pc),r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32622,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x12,r5
    mov 0x00,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32630,pc),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3260e:
    #data 0x01c8
DAT_ce32610:
    #data 0x012c
DAT_ce32612:
    #data 0x02a4
DAT_ce32614:
    #data 0x03f8
DAT_ce32616:
    #data 0x0328
DAT_ce32618:
    #data 0x01ea
DAT_ce3261a:
    #data 0x0236
DAT_ce3261c:
    #data 0x03f9
DAT_ce3261e:
    #data 0x0327
DAT_ce32620:
    #data 0x01f9
DAT_ce32622:
    #data 0x041c
    #align4

PTR_ce32624:
    #data loc_8c02fd26
DAT_ce32628:
    #data 0x43092492
PTR_ce3262c:
    #data loc_8c05218a
PTR_ce32630:
    #data loc_8c034e8c

;=============================================

LAB_ce32634:
    mov.l @(PTR_ce32788,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32674
    mov.b @(0x7,r14),r0
    mov 0x01,r5
    mov.l @(PTR_ce3278c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32790,pc),r0
    mov r14,r4
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x01,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32794,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x09,r6
    fmov fr3,@(r0,r14)
    mov 0x00,r0
    mov.l @r15,r3
    mov.b r0,@(0x9,r3)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32798,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32674:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3267c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32788,pc),r3
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
    mov.w @(DAT_ce3277e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce326e8
    mov.w @(DAT_ce3277e,pc),r0
    mov 0x00,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32780,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3279c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce327a0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce326e8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce326ee:
    mov.w @(DAT_ce32780,pc),r0
    mov.l r14,@-r15
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce326fe
    mov 0x01,r14
    bra LAB_ce32702
    mov 0x3A,r5

LAB_ce326fe:
    mov 0x3B,r5
    mov 0x02,r14

LAB_ce32702:
    mov.w @(DAT_ce32782,pc),r0
    mov r14,r6
    mov.l @(PTR_ce327a4,pc),r3
    mov.b r5,@(r0,r4)
    add 0x0B,r0
    mov 0x00,r5
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l r5,@(r0,r4)
    mov 0x16,r5
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32798,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce32730:
    mov.w @(DAT_ce32782,pc),r0
    mov 0x3C,r3
    mov 0x00,r5
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce327a4,pc),r3
    mov 0x03,r6
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32798,pc),r2
    jmp @r2
    mov 0x16,r5

LAB_ce3275e:
    mov.w @(DAT_ce32784,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce327ac
    mov.l @(PTR_ce327a8,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce327ac
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce32828
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3277e:
    #data 0x041c
DAT_ce32780:
    #data 0x01f9
DAT_ce32782:
    #data 0x01a1
DAT_ce32784:
    #data 0x0141
    #align4

PTR_ce32788:
    #data loc_8c034dee
PTR_ce3278c:
    #data loc_8c0e5538
DAT_ce32790:
    #data 0xc12b6db6
DAT_ce32794:
    #data 0xbf700000
PTR_ce32798:
    #data loc_8c034e8c
PTR_ce3279c:
    #data loc_8c0511b4
PTR_ce327a0:
    #data loc_8c051648
PTR_ce327a4:
    #data loc_8c2896b0
PTR_ce327a8:
    #data loc_8c05264c

;=============================================

LAB_ce327ac:
    mov.l @(PTR_ce32900,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce327c2
    lds.l @r15+,PR
    mov.l @(PTR_ce32904,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce327c2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce327c8:
    mov.w @(DAT_ce328e4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce327e8
    mov.l @(PTR_ce32908,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce327e8
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce32828
    mov.l @r15+,r14

LAB_ce327e8:
    mov.l @(PTR_ce32900,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce327fe
    lds.l @r15+,PR
    mov.l @(PTR_ce3290c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce327fe:
    mov.w @(DAT_ce328e6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32822
    mov.w @(DAT_ce328e6,pc),r0
    mov 0x00,r3
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce328e8,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce32910,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32822:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32828:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce328ec,pc),r0
    mov r4,r14
    mov.w @(DAT_ce328ea,pc),r4
    mov 0x01,r12
    mov.l @(r0,r14),r13
    add r14,r4
    mov r12,r0
    nop
    mov.w r0,@(0xa,r4)
    mov r13,r5
    mov.w @(DAT_ce328ee,pc),r0
    mov.w @(DAT_ce328f0,pc),r3
    mov.b r12,@(r0,r14)
    add 0x0D,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32914,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32918,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3291c,pc),r3
    mov 0x1D,r5
    jsr @r3
    mov r14,r4
    mov 0x03,r0
    mov 0x00,r11
    mov.b r0,@(0x6,r14)
    mov r11,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x03,r3
    mov.w @(DAT_ce328f2,pc),r0
    mov.b r3,@(r0,r14)
    mov r11,r0
    nop
    mov.b r0,@(0x6,r13)
    mov 0x05,r5
    mov.b r0,@(0x7,r13)
    mov r11,r6
    mov.w @(DAT_ce328f4,pc),r0
    mov.l @(PTR_ce32920,pc),r3
    mov.b r11,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce328e8,pc),r0
    mov 0x0F,r5
    mov.l @(PTR_ce32924,pc),r3
    mov.b @(r0,r14),r6
    add 0x03,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce328f8,pc),r0
    mov 0x10,r4
    mov.w @(DAT_ce328f6,pc),r2
    mov 0x76,r1
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce328fa,pc),r0
    mov.l @(PTR_ce32928,pc),r2
    mov.b r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r2,r3
    extu.b r0,r0
    shll2 r0
    shll2 r0
    add r3,r1
    or 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce328fc,pc),r0
    mov.b r4,@(r0,r14)
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce328d2:
    mov r4,r3
    mov.l @(PTR_ce3292c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328e4:
    #data 0x0141
DAT_ce328e6:
    #data 0x041c
DAT_ce328e8:
    #data 0x01f9
DAT_ce328ea:
    #data 0x02a4
DAT_ce328ec:
    #data 0x01b0
DAT_ce328ee:
    #data 0x01ea
DAT_ce328f0:
    #data 0x00c4
DAT_ce328f2:
    #data 0x01e9
DAT_ce328f4:
    #data 0x0236
DAT_ce328f6:
    #data 0x00ff
DAT_ce328f8:
    #data 0x03f9
DAT_ce328fa:
    #data 0x0327
DAT_ce328fc:
    #data 0x0328
    #align4

PTR_ce32900:
    #data loc_8c034dee
PTR_ce32904:
    #data loc_8c051648
PTR_ce32908:
    #data loc_8c05264c
PTR_ce3290c:
    #data loc_8c05176e
PTR_ce32910:
    #data loc_8c052dac
PTR_ce32914:
    #data loc_8c0523d8
PTR_ce32918:
    #data loc_8c0424fe
PTR_ce3291c:
    #data loc_8c0530d8
PTR_ce32920:
    #data loc_8c02fec4
PTR_ce32924:
    #data loc_8c034e8c
PTR_ce32928:
    #data loc_8c2896b0
PTR_ce3292c:
    #data PTR_ce3395c

;=============================================

LAB_ce32930:
    mov.w @(DAT_ce32a5e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3294c
    mov.w @(DAT_ce32a62,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32a60,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3294c:
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x3E,r3
    mov.w @(DAT_ce32a64,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32a66,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32a68,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32a74,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32a78,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32a7c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32a80,pc),r2
    mov r14,r4
    mov 0x07,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce329ba:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov 0x05,r4
    tst r0,r0
    mov 0x02,r12
    bf/s LAB_ce32a30
    mov 0x00,r13
    mov.w @(DAT_ce32a6a,pc),r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce32a6c,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32a5e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce329e8
    bra LAB_ce329ea
    mov 0x02,r3

LAB_ce329e8:
    mov 0x00,r3

LAB_ce329ea:
    mov.w @(DAT_ce32a6e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32a84,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32a70,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32ac2
    mov.w @(DAT_ce32a62,pc),r0
    mov 0x01,r3
    mov r15,r5
    mov r3,r6
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32a70,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce32a88,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32a8c,pc),r0
    mov.l @(PTR_ce32a90,pc),r2
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4
    bra LAB_ce32ac2
    nop

LAB_ce32a30:
    mov.w @(DAT_ce32a6a,pc),r0
    mov.l @(PTR_ce32a84,pc),r3
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce32a6c,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce32a98
    mov.w @(DAT_ce32a70,pc),r0
    mov.b @(r0,r14),r3
    tst r12,r3
    bt LAB_ce32ac2
    mov.b @(r0,r14),r2
    mov 0x02,r3
    mov.l @(PTR_ce32a94,pc),r1
    xor r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    bra LAB_ce32ac2
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a5e:
    #data 0x0255
DAT_ce32a60:
    #data 0x00ff
DAT_ce32a62:
    #data 0x03f0
DAT_ce32a64:
    #data 0x041c
DAT_ce32a66:
    #data 0x01f9
DAT_ce32a68:
    #data 0x01a1
DAT_ce32a6a:
    #data 0x03f8
DAT_ce32a6c:
    #data 0x0328
DAT_ce32a6e:
    #data 0x03f1
DAT_ce32a70:
    #data 0x0141
    #align4

PTR_ce32a74:
    #data loc_8c2896b0
PTR_ce32a78:
    #data loc_8c05218a
PTR_ce32a7c:
    #data loc_8c05115a
PTR_ce32a80:
    #data loc_8c034e8c
PTR_ce32a84:
    #data loc_8c034dee
DAT_ce32a88:
    #data 0x42855555
DAT_ce32a8c:
    #data 0xc304db6d
PTR_ce32a90:
    #data loc_8c050834
PTR_ce32a94:
    #data loc_8c09eec8

;=============================================

LAB_ce32a98:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32ac2
    mov.w @(DAT_ce32bfa,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce32c08,pc),r3
    mov 0x16,r5
    mov.b r0,@(0x7,r14)
    mov 0x09,r6
    jsr @r3
    mov r14,r4

LAB_ce32ac2:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32ace:
    mov.w @(DAT_ce32bfc,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32c0c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32afa
    mov.w @(DAT_ce32bfe,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32c10,pc),r3
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32afa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b00:
    mov r4,r3
    mov.l @(PTR_ce32c14,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32b12:
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    fldi0 fr4
    mov r3,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32c00,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce32c02,pc),r0
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    mov.l @(PTR_ce32c08,pc),r3
    fmov fr4,@(r0,r4)
    jmp @r3
    mov 0x14,r5

LAB_ce32b40:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32c0c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32b5a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32c10,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32b5a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32b62:
    mov r4,r3
    mov.l @(PTR_ce32c18,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32b74:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    fldi0 fr4
    mov 0x45,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32c00,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32c02,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32c04,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32c1c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32c20,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32c24,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce32c28,pc),r2
    mov.b @(r0,r14),r6
    mov 0x01,r7
    mov 0x00,r5
    extu.b r6,r6
    mov r6,r3
    shll r6
    add r3,r6
    shll2 r6
    shll2 r6
    add 0x22,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32c08,pc),r3
    mov r14,r4
    mov 0x14,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32bfa:
    #data 0x03f9
DAT_ce32bfc:
    #data 0x0328
DAT_ce32bfe:
    #data 0x0327
DAT_ce32c00:
    #data 0x041c
DAT_ce32c02:
    #data 0x01f9
DAT_ce32c04:
    #data 0x01a1
    #align4

PTR_ce32c08:
    #data loc_8c034e8c
PTR_ce32c0c:
    #data loc_8c034dee
PTR_ce32c10:
    #data loc_8c051648
PTR_ce32c14:
    #data PTR_ce33968
PTR_ce32c18:
    #data PTR_ce33970
PTR_ce32c1c:
    #data loc_8c2896b0
PTR_ce32c20:
    #data loc_8c05218a
PTR_ce32c24:
    #data loc_8c05115a
PTR_ce32c28:
    #data loc_8c03544c

;=============================================

LAB_ce32c2c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32d2c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32c48
    mov.l @(PTR_ce32d30,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce32c6a
    nop

LAB_ce32c48:
    mov.w @(DAT_ce32d24,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32c6a
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32d34,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32d38,pc),r0
    mov.l @(PTR_ce32d3c,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32c6a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c72:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov 0x05,r3
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce32d26,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce32d40,pc),r3
    jmp @r3
    mov 0x1D,r5

LAB_ce32c86:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov 0x05,r3
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce32d26,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce32d40,pc),r3
    jmp @r3
    mov 0x1D,r5

LAB_ce32c9a:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce32d28,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce32cc8
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce32cbc
    cmp/eq 0x02,r0
    bt LAB_ce32cc8
    bra LAB_ce32cd0
    nop

LAB_ce32cbc:
    mov.w @(DAT_ce32d26,pc),r0
    mov 0x02,r3
    mov.b r6,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce32cd0
    mov.b r3,@(r0,r4)

LAB_ce32cc8:
    mov.w @(DAT_ce32d26,pc),r0
    mov.b r5,@(r0,r4)
    add 0xBA,r0
    mov.b r6,@(r0,r4)

LAB_ce32cd0:
    mov.l @(PTR_ce32d40,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce32cd6:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce32d28,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce32cf8
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce32d02
    cmp/eq 0x02,r0
    bt LAB_ce32d02
    bra LAB_ce32d0c
    nop

LAB_ce32cf8:
    mov.w @(DAT_ce32d26,pc),r0
    mov.b r5,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce32d0c
    mov.b r6,@(r0,r4)

LAB_ce32d02:
    mov.w @(DAT_ce32d26,pc),r0
    mov 0x02,r3
    mov.b r6,@(r0,r4)
    add 0xBA,r0
    mov.b r3,@(r0,r4)

LAB_ce32d0c:
    mov.l @(PTR_ce32d40,pc),r3
    jmp @r3
    mov 0x15,r5

LAB_ce32d12:
    mov r4,r3
    mov.l @(PTR_ce32d44,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d24:
    #data 0x0141
DAT_ce32d26:
    #data 0x01e9
DAT_ce32d28:
    #data 0x04c9
    #align4

PTR_ce32d2c:
    #data loc_8c034dee
PTR_ce32d30:
    #data loc_8c051648
DAT_ce32d34:
    #data 0xc1baaaaa
DAT_ce32d38:
    #data 0x432b6db6
PTR_ce32d3c:
    #data loc_8c050ea4
PTR_ce32d40:
    #data loc_8c0530d8
PTR_ce32d44:
    #data PTR_ce33978

;=============================================

LAB_ce32d48:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32e5e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32e68,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32e6c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32e60,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32d7a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32d7a:
    mova @(DAT_ce32e70,pc),r0
    fldi0 fr4
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x3D,r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce32e62,pc),r0
    mov 0x15,r5
    mov 0x12,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32e74,pc),r3
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
    mov.l @(PTR_ce32e78,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce32dc0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32e7c,pc),r3
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
    mov.w @(DAT_ce32e64,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32e36
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32e64,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32e5e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32e80,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32e78,pc),r2
    mov r14,r4
    mov 0x13,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32e36:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32e3c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32e7c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32e56
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32e84,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32e56:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e5e:
    #data 0x01f9
DAT_ce32e60:
    #data 0x01d2
DAT_ce32e62:
    #data 0x01a1
DAT_ce32e64:
    #data 0x041c
    #align4

PTR_ce32e68:
    #data loc_8c035162
DAT_ce32e6c:
    #data 0xc212aaaa
DAT_ce32e70:
    #data 0xc1092492
PTR_ce32e74:
    #data loc_8c2896b0
PTR_ce32e78:
    #data loc_8c034e8c
PTR_ce32e7c:
    #data loc_8c034dee
PTR_ce32e80:
    #data loc_8c0511b4
PTR_ce32e84:
    #data loc_8c051854

;=============================================

LAB_ce32e88:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32f88,pc),r4
    mov.l r13,@-r15
    add r14,r4
    sts.l PR,@-r15
    mov.b @(0x9,r4),r0
    tst r0,r0
    bf LAB_ce32efc
    mov.b @(0xc,r4),r0
    tst r0,r0
    bf LAB_ce32efc
    mov.w @(DAT_ce32f8a,pc),r0
    mov.w @(DAT_ce32f8c,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32efc
    mov.w @(DAT_ce32f8e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32efc
    mov.w @(DAT_ce32f90,pc),r0
    mov.l @(PTR_ce32fa0,pc),r13
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32ee8
    mov.w @(DAT_ce32f92,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32ed6
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32efc
    mov r0,r4
    bra LAB_ce32ef4
    mov 0x00,r3

LAB_ce32ed6:
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32efc
    mov r0,r4
    mov.w @(DAT_ce32f94,pc),r0
    mov 0x01,r3
    bra LAB_ce32ef8
    mov.b r3,@(r0,r14)

LAB_ce32ee8:
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32efc
    mov r0,r4
    mov 0x02,r3

LAB_ce32ef4:
    mov.w @(DAT_ce32f94,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce32ef8:
    bra LAB_ce32efe
    mov r4,r0

LAB_ce32efc:
    mov 0x00,r0

LAB_ce32efe:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32f06:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32f94,pc),r1
    mov.l @(PTR_ce32fa4,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce32f1e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32fa8,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.w @(DAT_ce32f8a,pc),r0
    mov.w @(DAT_ce32f96,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt/s LAB_ce32f4e
    mov r14,r4
    mov.w @(DAT_ce32f98,pc),r0
    mov 0x01,r2
    mov.w @(r0,r14),r1
    xor r2,r1
    mov.w r1,@(r0,r14)
    mov.w @(DAT_ce32f9a,pc),r0
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)

LAB_ce32f4e:
    mov.l @(PTR_ce32fac,pc),r3
    jsr @r3
    nop
    mova @(DAT_ce32fb0,pc),r0
    mov.l @(PTR_ce32fb8,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32fb4,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32f9c,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce32fbc,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov r0,r6
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f88:
    #data 0x02a4
DAT_ce32f8a:
    #data 0x01fa
DAT_ce32f8c:
    #data 0x0c00
DAT_ce32f8e:
    #data 0x01a3
DAT_ce32f90:
    #data 0x01fe
DAT_ce32f92:
    #data 0x01f9
DAT_ce32f94:
    #data 0x01f7
DAT_ce32f96:
    #data 0x0800
DAT_ce32f98:
    #data 0x0130
DAT_ce32f9a:
    #data 0x01d2
DAT_ce32f9c:
    #data 0x01a0
    #align4

PTR_ce32fa0:
    #data loc_8c045790
PTR_ce32fa4:
    #data PTR_ce33984
PTR_ce32fa8:
    #data loc_8c02fec4
PTR_ce32fac:
    #data loc_8c056f2a
DAT_ce32fb0:
    #data 0xc2200000
DAT_ce32fb4:
    #data 0x43092492
PTR_ce32fb8:
    #data loc_8c103660
PTR_ce32fbc:
    #data loc_8c034e8c

;=============================================

LAB_ce32fc0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce330f0,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.w @(DAT_ce330e2,pc),r0
    mov.w @(DAT_ce330e4,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt/s LAB_ce32ff0
    mov r14,r4
    mov.w @(DAT_ce330e6,pc),r0
    mov 0x01,r2
    mov.w @(r0,r14),r1
    xor r2,r1
    mov.w r1,@(r0,r14)
    mov.w @(DAT_ce330e8,pc),r0
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)

LAB_ce32ff0:
    mov.l @(PTR_ce330f4,pc),r3
    jsr @r3
    nop
    mova @(DAT_ce330f8,pc),r0
    mov.l @(PTR_ce33100,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce330fc,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce330ea,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33104,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov 0x01,r6
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3302a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce330f0,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.w @(DAT_ce330e2,pc),r0
    mov.w @(DAT_ce330e4,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt/s LAB_ce3305a
    mov r14,r4
    mov.w @(DAT_ce330e6,pc),r0
    mov 0x01,r2
    mov.w @(r0,r14),r1
    xor r2,r1
    mov.w r1,@(r0,r14)
    mov.w @(DAT_ce330e8,pc),r0
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)

LAB_ce3305a:
    mov.l @(PTR_ce330f4,pc),r3
    jsr @r3
    nop
    mova @(DAT_ce33108,pc),r0
    mov.l @(PTR_ce33100,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce3310c,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce330ea,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33110,pc),r3
    mov 0x02,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33114,pc),r3
    mov 0x32,r5
    mov.w @(DAT_ce330ec,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    mov.l @(PTR_ce33118,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33104,pc),r3
    mov 0x00,r0
    mov 0x0F,r5
    mov.b r0,@(0x6,r14)
    mov 0x02,r6
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce330ae:
    rts
    nop

LAB_ce330b2:
    mov.w @(DAT_ce330ee,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3311c,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce330d0:
    mov r4,r3
    mov.l @(PTR_ce33120,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce330e2:
    #data 0x01fa
DAT_ce330e4:
    #data 0x0400
DAT_ce330e6:
    #data 0x0130
DAT_ce330e8:
    #data 0x01d2
DAT_ce330ea:
    #data 0x01a0
DAT_ce330ec:
    #data 0x01c8
DAT_ce330ee:
    #data 0x01ea
    #align4

PTR_ce330f0:
    #data loc_8c02fec4
PTR_ce330f4:
    #data loc_8c056f2a
DAT_ce330f8:
    #data 0xc2d55555
DAT_ce330fc:
    #data 0x432b6db6
PTR_ce33100:
    #data loc_8c103660
PTR_ce33104:
    #data loc_8c034e8c
DAT_ce33108:
    #data 0xc3055555
DAT_ce3310c:
    #data 0x42cdb6db
PTR_ce33110:
    #data loc_8c0e5538
PTR_ce33114:
    #data loc_8c050552
PTR_ce33118:
    #data loc_8c05064e
PTR_ce3311c:
    #data PTR_ce33998
PTR_ce33120:
    #data PTR_ce339ac

;=============================================

LAB_ce33124:
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

LAB_ce3313c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33254,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3324e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33196
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3324e,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce33250,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov 0x02,r3
    mov.b r2,@(r0,r4)
    add 0x27,r0
    mov.b r3,@(r0,r4)
    add 0xA8,r0
    mov 0x20,r2
    mov.b r2,@(r0,r4)
    mov 0x22,r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33252,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3318e
    mov 0x22,r0
    mov 0x1B,r2
    mov.b r2,@(r0,r14)

LAB_ce3318e:
    lds.l @r15+,PR
    mov.l @(PTR_ce33258,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33196:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3319c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33254,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce331bc
    mov.l @(PTR_ce3325c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33260,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce331bc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce331c2:
    mov r4,r3
    mov.l @(PTR_ce33264,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce331d4:
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

LAB_ce331ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33254,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3324e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33248
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3324e,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce33250,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov 0x02,r3
    mov.b r2,@(r0,r4)
    add 0x27,r0
    mov.b r3,@(r0,r4)
    add 0xA8,r0
    mov 0x22,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r4)
    mov r2,r0
    nop
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33252,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33240
    mov 0x22,r0
    mov 0x16,r2
    mov.b r2,@(r0,r14)

LAB_ce33240:
    lds.l @r15+,PR
    mov.l @(PTR_ce33258,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33248:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3324e:
    #data 0x0141
DAT_ce33250:
    #data 0x01c8
DAT_ce33252:
    #data 0x01d2
    #align4

PTR_ce33254:
    #data loc_8c034dee
PTR_ce33258:
    #data loc_8c02fd26
PTR_ce3325c:
    #data loc_8c05218a
PTR_ce33260:
    #data loc_8c051648
PTR_ce33264:
    #data PTR_ce339b8

;=============================================

LAB_ce33268:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33338,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33292
    mova @(DAT_ce3333c,pc),r0
    mov.l @(PTR_ce33344,pc),r3
    fmov.s @r0,fr3
    mov 0x60,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33340,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33292:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33298:
    mov r4,r3
    mov.l @(PTR_ce33348,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce332aa:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33338,pc),r3
    mov.w @(DAT_ce33330,pc),r13
    jsr @r3
    add r14,r13
    mov.w @(DAT_ce33332,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33328
    mov.b @(0x6,r14),r0
    mov 0x02,r4
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x78,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce33334,pc),r0
    mov.b @(r0,r14),r3
    mov 0x20,r0
    extu.b r3,r3
    and r4,r3
    shar r3
    mov.b r3,@(r0,r14)
    mov 0x09,r0
    mov.b r0,@(0xd,r13)
    mov 0x00,r0
    mov.b r0,@(0xe,r13)
    mov 0x01,r0
    mov.b r0,@(0xf,r13)
    mov.w @(DAT_ce33334,pc),r0
    mov.b @(r0,r14),r3
    mov 0x20,r0
    extu.b r3,r3
    and r4,r3
    shar r3
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce3334c,pc),r0
    mov.l @(DAT_ce33350,pc),r1
    mov 0x24,r5
    fmov.s @r0,fr3
    mov 0x6C,r0
    lds r1,FPUL
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fsub fr3,fr2
    mov.l @(PTR_ce33354,pc),r3
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33328:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33330:
    #data 0x02a4
DAT_ce33332:
    #data 0x0141
DAT_ce33334:
    #data 0x01f9
    #align4

PTR_ce33338:
    #data loc_8c034dee
DAT_ce3333c:
    #data 0xc0cdb6db
DAT_ce33340:
    #data 0xbf092492
PTR_ce33344:
    #data loc_8c05176e
PTR_ce33348:
    #data PTR_ce339c4
DAT_ce3334c:
    #data 0x3e892492
DAT_ce33350:
    #data 0x41092492
PTR_ce33354:
    #data loc_8c042008

;=============================================

LAB_ce33358:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3349c,pc),r3
    mov.w @(DAT_ce3348c,pc),r0
    jsr @r3
    mov.l @(r0,r14),r13
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33388
    mov.l @(PTR_ce334a0,pc),r3
    mov 0xFD,r5
    jsr @r3
    mov r13,r4
    mov.w @(DAT_ce3348e,pc),r0
    mov.w @(r0,r13),r2
    tst r2,r2
    bt LAB_ce33402
    mov.l @(PTR_ce334a4,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4

LAB_ce33388:
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
    fmov fr2,fr4
    fcmp/gt fr4,fr3
    bf/s LAB_ce333ca
    fmov fr2,@(r0,r14)
    fneg fr4

LAB_ce333ca:
    mova @(DAT_ce334a8,pc),r0
    fmov.s @r0,fr3
    fcmp/gt fr4,fr3
    bt LAB_ce333da
    mov 0x6C,r0
    fmov.s @(r0,r14),fr2
    fneg fr2
    fmov fr2,@(r0,r14)

LAB_ce333da:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce33402
    mov.l @(PTR_ce334ac,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce333f8
    mov r13,r4
    mov.w @(DAT_ce33490,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce333f8:
    mov.l @(PTR_ce334b0,pc),r3
    jsr @r3
    nop
    tst r0,r0
    bt LAB_ce334e6

LAB_ce33402:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce334b4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov r0,r5
    mov.b r0,@(0x7,r14)
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce334b8,pc),r2
    mov 0x2B,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33492,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce33434
    mov 0x25,r4
    mov.w @(DAT_ce33494,pc),r0
    mov 0x21,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce33434:
    mov.w @(DAT_ce33496,pc),r0
    mov 0x01,r3
    mov 0x02,r12
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x44,r0
    mov.b r12,@(r0,r13)
    add 0x98,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)
    add 0x27,r0
    mov.l @(PTR_ce334bc,pc),r3
    mov.b r12,@(r0,r13)
    add 0xA8,r0
    jsr @r3
    mov.b r4,@(r0,r13)
    mov 0x22,r0
    mov 0x18,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce334c0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33498,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3347a
    mov 0x22,r0
    mov 0x08,r3
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3347a:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce334c4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    bra LAB_ce334c8
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3348c:
    #data 0x01c8
DAT_ce3348e:
    #data 0x0420
DAT_ce33490:
    #data 0x0142
DAT_ce33492:
    #data 0x01f9
DAT_ce33494:
    #data 0x041c
DAT_ce33496:
    #data 0x01b4
DAT_ce33498:
    #data 0x01d2
    #align4

PTR_ce3349c:
    #data loc_8c034dee
PTR_ce334a0:
    #data loc_8c05929c
PTR_ce334a4:
    #data loc_8c0590f4
DAT_ce334a8:
    #data 0x403c9249
PTR_ce334ac:
    #data loc_8c050682
PTR_ce334b0:
    #data loc_8c050610
PTR_ce334b4:
    #data loc_8c035162
PTR_ce334b8:
    #data loc_8c042008
PTR_ce334bc:
    #data loc_8c02fd26
DAT_ce334c0:
    #data 0x40a00000
DAT_ce334c4:
    #data 0x412b6db6

;=============================================

LAB_ce334c8:
    mova @(DAT_ce33624,pc),r0
    mov.l @(PTR_ce33628,pc),r3
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x0B,r6
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x0F,r5
    mov.w @(DAT_ce3361a,pc),r0
    mov.b r12,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce334e6:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce334f0:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l r13,@-r15
    sts.l PR,@-r15
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
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x20,r0
    mov.l @(PTR_ce3362c,pc),r13
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33556
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33560
    mov.w @(DAT_ce3361c,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce33630,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33556:
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce335a8
    jsr @r13
    mov r14,r4

LAB_ce33560:
    mov.w @(DAT_ce3361e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce335be
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3361e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3361a,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33634,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33628,pc),r2
    mov 0x0A,r6
    mov 0x0F,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce335a8:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce335be
    lds.l @r15+,PR
    mov.l @(PTR_ce33638,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce335be:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce335c6:
    rts
    nop

LAB_ce335ca:
    rts
    nop

LAB_ce335ce:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33620,pc),r1
    mov.l @(PTR_ce3363c,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce335e6:
    mov.w @(DAT_ce33622,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33640,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce335f4:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33644,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    mov.w @(DAT_ce33622,pc),r0
    mov.l @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3360a:
    add 0xF8,r15
    mov.l r4,@(0x4,r15)
    mov.l r5,@r15
    mov.l @(PTR_ce33640,pc),r3
    mov.l @r15,r4
    mov.l @(0x4,r15),r5
    jmp @r3
    add 0x08,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3361a:
    #data 0x01f9
DAT_ce3361c:
    #data 0x01d4
DAT_ce3361e:
    #data 0x041c
DAT_ce33620:
    #data 0x01f7
DAT_ce33622:
    #data 0x01c8
    #align4

DAT_ce33624:
    #data 0xbf700000
PTR_ce33628:
    #data loc_8c034e8c
PTR_ce3362c:
    #data loc_8c034dee
PTR_ce33630:
    #data loc_8c0517be
PTR_ce33634:
    #data loc_8c0511b4
PTR_ce33638:
    #data loc_8c051648
PTR_ce3363c:
    #data PTR_ce339d0
PTR_ce33640:
    #data loc_8c04cc1c
PTR_ce33644:
    #data PTR_ce339e4

;=============================================

LAB_ce33648:
    mov.b @(0x6,r4),r0
    mov 0x1D,r6
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce336e4,pc),r3
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce336dc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce336e0,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fneg fr3
    fdiv fr2,fr3
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x0D,r5

LAB_ce33674:
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
    fmov fr2,fr4
    fcmp/gt fr4,fr3
    bf/s LAB_ce336b8
    fmov fr2,@(r0,r4)
    fmov.s @(r0,r4),fr4
    fneg fr4

LAB_ce336b8:
    mova @(DAT_ce336dc,pc),r0
    fmov.s @r0,fr3
    fcmp/gt fr4,fr3
    bt LAB_ce336ce
    fldi1 fr2
    fadd fr2,fr2
    mov 0x6C,r0
    fmov.s @(r0,r4),fr1
    fmul fr2,fr1
    fneg fr1
    fmov fr1,@(r0,r4)

LAB_ce336ce:
    mov.w @(DAT_ce336da,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce336e8,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce336da:
    #data 0x0142
    #align4

DAT_ce336dc:
    #data 0x412b6db6
DAT_ce336e0:
    #data 0x41800000
PTR_ce336e4:
    #data loc_8c034e8c
PTR_ce336e8:
    #data loc_8c034dee
DAT_ce336ec:
    #data 0x0201
    #data 0x0201
DAT_ce336f0:
    #data 0xffff
    #data 0xffff
DAT_ce336f4:
    #data 0xffff
    #data 0xffff
DAT_ce336f8:
    #data 0x0201
    #data 0x0201
DAT_ce336fc:
    #data 0xffff
    #data 0xffff
DAT_ce33700:
    #data 0xffff
    #data 0xffff
DAT_ce33704:
    #data 0x0201
    #data 0x0200
DAT_ce33708:
    #data 0x02ff
    #data 0x0201
DAT_ce3370c:
    #data 0xffff
    #data 0xffff
DAT_ce33710:
    #data 0x0201
    #data 0x0201
DAT_ce33714:
    #data 0x02ff
    #data 0x02ff
DAT_ce33718:
    #data 0xffff
    #data 0xffff
DAT_ce3371c:
    #data 0x0028
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0300
DAT_ce3372a:
    #data 0x0028
    #data 0x0000
    #data 0x0001
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0060
DAT_ce33738:
    #data 0x0005
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce3374c:
    #data 0x0003
    #data 0x9100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce3375c:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce3376c:
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0101
    #data 0x0101
DAT_ce3377c:
    #data 0x8000
    #data 0xfff9
    #data 0x0000
    #data 0x0000
    #data 0xe000
    #data 0x0007
    #data 0x7000
    #data 0xffff
    #data 0x0000
    #data 0xfff9
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x000d
    #data 0x7000
    #data 0xffff
    #data 0x8000
    #data 0xfff9
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x000b
    #data 0x7000
    #data 0xffff
DAT_ce337ac:
    #data 0x8000
    #data 0xfffb
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x9000
    #data 0xffff
    #data 0x0000
    #data 0xfff9
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0004
    #data 0x9000
    #data 0xffff
    #data 0x0000
    #data 0xfffa
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0002
    #data 0x9000
    #data 0xffff
    #align4

PTR_ce337dc:
    #data DAT_ce3377c
PTR_ce337e0:
    #data DAT_ce337ac
DAT_ce337e4:
    #data 0xffb8
DAT_ce337e6:
    #data 0x0030
    #data 0xffa8
    #data 0x0028
    #data 0xffa0
    #data 0x0050
    #data 0xffd0
    #data 0x0030
    #data 0xffc0
    #data 0x0000
    #data 0xffb0
    #data 0x0060
    #align4

PTR_ce337fc:
    #data LAB_ce3040a
PTR_ce33800:
    #data LAB_ce3001c
PTR_ce33804:
    #data LAB_ce3063e
PTR_ce33808:
    #data LAB_ce30c46
PTR_ce3380c:
    #data LAB_ce311d2
PTR_ce33810:
    #data LAB_ce312ce
PTR_ce33814:
    #data LAB_ce3138a
PTR_ce33818:
    #data LAB_ce3145a
PTR_ce3381c:
    #data LAB_ce315b6
PTR_ce33820:
    #data LAB_ce32e88
PTR_ce33824:
    #data LAB_ce32f06
PTR_ce33828:
    #data LAB_ce330b2
PTR_ce3382c:
    #data LAB_ce335ce
PTR_ce33830:
    #data FUN_ce303bc
PTR_ce33834:
    #data LAB_ce32d12
PTR_ce33838:
    #data LAB_ce3110c
PTR_ce3383c:
    #data LAB_ce32c72
PTR_ce33840:
    #data LAB_ce32c86
PTR_ce33844:
    #data LAB_ce32c9a
PTR_ce33848:
    #data LAB_ce32cd6
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce3386c:
    #data LAB_ce30652
PTR_ce33870:
    #data LAB_ce30992
PTR_ce33874:
    #data LAB_ce309ba
PTR_ce33878:
    #data LAB_ce30652
PTR_ce3387c:
    #data LAB_ce30c9e
PTR_ce33880:
    #data LAB_ce30e84
PTR_ce33884:
    #data LAB_ce30e6e
PTR_ce33888:
    #data LAB_ce30c90
PTR_ce3388c:
    #data LAB_ce30f9e
PTR_ce33890:
    #data LAB_ce30ffc
PTR_ce33894:
    #data LAB_ce3106a
PTR_ce33898:
    #data LAB_ce310ca
PTR_ce3389c:
    #data LAB_ce311e4
PTR_ce338a0:
    #data LAB_ce31260
PTR_ce338a4:
    #data FUN_ce312ac
PTR_ce338a8:
    #data LAB_ce312e0
PTR_ce338ac:
    #data LAB_ce31340
PTR_ce338b0:
    #data LAB_ce313c8
PTR_ce338b4:
    #data LAB_ce313f0
PTR_ce338b8:
    #data LAB_ce31428
PTR_ce338bc:
    #data LAB_ce3146c
PTR_ce338c0:
    #data LAB_ce3150c
PTR_ce338c4:
    #data LAB_ce315ca
PTR_ce338c8:
    #data LAB_ce31722
PTR_ce338cc:
    #data LAB_ce31d26
PTR_ce338d0:
    #data LAB_ce32104
PTR_ce338d4:
    #data LAB_ce315ca
PTR_ce338d8:
    #data LAB_ce328d2
PTR_ce338dc:
    #data LAB_ce32b00
PTR_ce338e0:
    #data LAB_ce32b62
PTR_ce338e4:
    #data LAB_ce31600
PTR_ce338e8:
    #data LAB_ce31666
PTR_ce338ec:
    #data FUN_ce31700
PTR_ce338f0:
    #data LAB_ce3167c
PTR_ce338f4:
    #data LAB_ce316ca
PTR_ce338f8:
    #data LAB_ce31774
PTR_ce338fc:
    #data LAB_ce3184a
PTR_ce33900:
    #data LAB_ce31c0a
PTR_ce33904:
    #data LAB_ce31898
PTR_ce33908:
    #data LAB_ce319e0
PTR_ce3390c:
    #data LAB_ce31b38
PTR_ce33910:
    #data LAB_ce31d38
PTR_ce33914:
    #data LAB_ce31d86
PTR_ce33918:
    #data FUN_ce320e2
PTR_ce3391c:
    #data LAB_ce31d98
PTR_ce33920:
    #data LAB_ce31e46
PTR_ce33924:
    #data LAB_ce31ea6
PTR_ce33928:
    #data LAB_ce31f60
PTR_ce3392c:
    #data LAB_ce32058
PTR_ce33930:
    #data LAB_ce32116
PTR_ce33934:
    #data LAB_ce3216c
PTR_ce33938:
    #data FUN_ce32220
PTR_ce3393c:
    #data LAB_ce32242
PTR_ce33940:
    #data LAB_ce32280
PTR_ce33944:
    #data LAB_ce3231c
PTR_ce33948:
    #data LAB_ce323ac
PTR_ce3394c:
    #data LAB_ce3246e
PTR_ce33950:
    #data LAB_ce3251c
PTR_ce33954:
    #data LAB_ce325ae
PTR_ce33958:
    #data LAB_ce3267c
PTR_ce3395c:
    #data LAB_ce32930
PTR_ce33960:
    #data LAB_ce329ba
PTR_ce33964:
    #data LAB_ce32ace
PTR_ce33968:
    #data LAB_ce32b12
PTR_ce3396c:
    #data LAB_ce32b40
PTR_ce33970:
    #data LAB_ce32b74
PTR_ce33974:
    #data LAB_ce32c2c
PTR_ce33978:
    #data LAB_ce32d48
PTR_ce3397c:
    #data LAB_ce32dc0
PTR_ce33980:
    #data FUN_ce32e3c
PTR_ce33984:
    #data LAB_ce32f1e
PTR_ce33988:
    #data LAB_ce32fc0
PTR_ce3398c:
    #data LAB_ce3302a
PTR_ce33990:
    #data LAB_ce330ae
PTR_ce33994:
    #data LAB_ce330ae
PTR_ce33998:
    #data LAB_ce330d0
PTR_ce3399c:
    #data LAB_ce331c2
PTR_ce339a0:
    #data LAB_ce33298
PTR_ce339a4:
    #data LAB_ce335c6
PTR_ce339a8:
    #data LAB_ce335ca
PTR_ce339ac:
    #data LAB_ce33124
PTR_ce339b0:
    #data LAB_ce3313c
PTR_ce339b4:
    #data LAB_ce3319c
PTR_ce339b8:
    #data LAB_ce331d4
PTR_ce339bc:
    #data LAB_ce331ec
PTR_ce339c0:
    #data LAB_ce33268
PTR_ce339c4:
    #data LAB_ce332aa
PTR_ce339c8:
    #data LAB_ce33358
PTR_ce339cc:
    #data LAB_ce334f0
PTR_ce339d0:
    #data LAB_ce335e6
PTR_ce339d4:
    #data LAB_ce335e6
PTR_ce339d8:
    #data LAB_ce335e6
PTR_ce339dc:
    #data LAB_ce335e6
PTR_ce339e0:
    #data LAB_ce335f4
PTR_ce339e4:
    #data LAB_ce3360a
PTR_ce339e8:
    #data LAB_ce33648
PTR_ce339ec:
    #data LAB_ce33674
