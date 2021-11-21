;╔══════════════════════════════════════════╗
;║ S_PL38 : Captain Commando Program        ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c034f54 0x8C034F54
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c0424a6 0x8C0424A6
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
#symbol loc_8c051854 0x8C051854
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c052b4c 0x8C052B4C
#symbol loc_8c052c84 0x8C052C84
#symbol loc_8c052ce2 0x8C052CE2
#symbol loc_8c052d6e 0x8C052D6E
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
#symbol loc_8c05923c 0x8C05923C
#symbol loc_8c0b41f4 0x8C0B41F4
#symbol loc_8c0b68dc 0x8C0B68DC
#symbol loc_8c0b7498 0x8C0B7498
#symbol loc_8c0ec428 0x8C0EC428
#symbol loc_8c0ecb58 0x8C0ECB58
#symbol loc_8c0ee570 0x8C0EE570
#symbol loc_8c0fd966 0x8C0FD966
#symbol loc_8c10235c 0x8C10235C
#symbol loc_8c103660 0x8C103660
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c289608 0x8C289608
#symbol loc_8c28963c 0x8C28963C
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300c8,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300cc,pc),r7
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
    mov.l @(PTR_ce300d0,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    mov.l @(PTR_ce300d4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    mov.l @(PTR_ce300d8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    mov.l @(PTR_ce300dc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce3025e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce30218
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce300e8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce30350
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce302b6
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce30142
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce30188
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce303b8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce303fe
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce3043e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300e4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300c2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300c8:
    #data 0x0428
    #align4

PTR_ce300cc:
    #data PTR_ce3323c
PTR_ce300d0:
    #data loc_8c054508
PTR_ce300d4:
    #data loc_8c054b34
PTR_ce300d8:
    #data loc_8c05496c
PTR_ce300dc:
    #data loc_8c054d04
PTR_ce300e0:
    #data loc_8c053e00
PTR_ce300e4:
    #data loc_8c0542e0

;=============================================

FUN_ce300e8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30200,pc),r5
    mov.w @(DAT_ce301ee,pc),r6
    mov.l @(PTR_ce30204,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30110
    mov.w @(DAT_ce301f0,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30110
    mov.w @(DAT_ce301f2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30118

LAB_ce30110:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30118:
    mov.w @(DAT_ce301ee,pc),r5
    mov.l @(PTR_ce30208,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301f4,pc),r0
    mov.l @(PTR_ce3020c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30142:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30210,pc),r5
    mov.w @(DAT_ce301f6,pc),r6
    mov.l @(PTR_ce30204,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30160
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30160:
    mov.w @(DAT_ce301f6,pc),r5
    mov.l @(PTR_ce30208,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301f4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3020c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30188:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30214,pc),r5
    mov.w @(DAT_ce301f8,pc),r6
    mov.l @(PTR_ce30204,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301b8
    mov.w @(DAT_ce301fa,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce301c6
    mov.w @(DAT_ce301fc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce301c6
    mov.w @(DAT_ce301fe,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce301c0

LAB_ce301b8:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301c0:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce301c6:
    mov.w @(DAT_ce301f8,pc),r5
    mov.l @(PTR_ce30208,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301f4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3020c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301ee:
    #data 0x0364
DAT_ce301f0:
    #data 0x040c
DAT_ce301f2:
    #data 0x02ab
DAT_ce301f4:
    #data 0x01e9
DAT_ce301f6:
    #data 0x036c
DAT_ce301f8:
    #data 0x037c
DAT_ce301fa:
    #data 0x01f9
DAT_ce301fc:
    #data 0x01fc
DAT_ce301fe:
    #data 0x01d4
    #align4

PTR_ce30200:
    #data DAT_ce331bc
PTR_ce30204:
    #data loc_8c054e58
PTR_ce30208:
    #data loc_8c055c3a
PTR_ce3020c:
    #data loc_8c0530d8
PTR_ce30210:
    #data DAT_ce331cc
PTR_ce30214:
    #data DAT_ce331dc

;=============================================

FUN_ce30218:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30338,pc),r5
    mov.w @(DAT_ce30322,pc),r6
    mov.l @(PTR_ce3033c,pc),r3
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
    mov.w @(DAT_ce30322,pc),r5
    mov.l @(PTR_ce30340,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30324,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30344,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3025e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30348,pc),r5
    mov.w @(DAT_ce30326,pc),r6
    mov.l @(PTR_ce3033c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30286
    mov.w @(DAT_ce30328,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30286
    mov.w @(DAT_ce3032a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3028e

LAB_ce30286:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3028e:
    mov.w @(DAT_ce30326,pc),r5
    mov.l @(PTR_ce30340,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30324,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30344,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302b6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3034c,pc),r5
    mov.w @(DAT_ce3032c,pc),r6
    mov.l @(PTR_ce3033c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302d4
    mov.w @(DAT_ce3032a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce302dc

LAB_ce302d4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302dc:
    mov.w @(DAT_ce3032c,pc),r5
    mov.l @(PTR_ce30340,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30324,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30344,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3032e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30310
    mov.w @(DAT_ce30330,pc),r0
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce30332,pc),r0
    extu.b r3,r3
    bra LAB_ce3031a
    mov.w r3,@(r0,r14)

LAB_ce30310:
    mov.w @(DAT_ce30334,pc),r0
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce30332,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce3031a:
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30322:
    #data 0x0374
DAT_ce30324:
    #data 0x01e9
DAT_ce30326:
    #data 0x0384
DAT_ce30328:
    #data 0x040c
DAT_ce3032a:
    #data 0x02ab
DAT_ce3032c:
    #data 0x038c
DAT_ce3032e:
    #data 0x0525
DAT_ce30330:
    #data 0x01a3
DAT_ce30332:
    #data 0x02ac
DAT_ce30334:
    #data 0x01fe
    #align4

PTR_ce30338:
    #data DAT_ce331ec
PTR_ce3033c:
    #data loc_8c054e58
PTR_ce30340:
    #data loc_8c055c3a
PTR_ce30344:
    #data loc_8c0530d8
PTR_ce30348:
    #data DAT_ce331fc
PTR_ce3034c:
    #data DAT_ce3320c

;=============================================

FUN_ce30350:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30488,pc),r5
    mov.w @(DAT_ce30476,pc),r6
    mov.l @(PTR_ce3048c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3036e
    mov.w @(DAT_ce30478,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30376

LAB_ce3036e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30376:
    mov.w @(DAT_ce30476,pc),r5
    mov.l @(PTR_ce30490,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3047a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30494,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3047c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce303a6
    mov.w @(DAT_ce3047e,pc),r0
    mov 0x02,r3
    bra LAB_ce303b0
    mov.w r3,@(r0,r14)

LAB_ce303a6:
    mov.w @(DAT_ce30480,pc),r0
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3047e,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce303b0:
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303b8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30498,pc),r5
    mov.w @(DAT_ce30482,pc),r6
    mov.l @(PTR_ce3048c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303d6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303d6:
    mov.w @(DAT_ce30482,pc),r5
    mov.l @(PTR_ce30490,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0C,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3047a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30494,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303fe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3049c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30416
    mov.w @(DAT_ce30484,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3041e

LAB_ce30416:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3041e:
    mov.w @(DAT_ce3047a,pc),r0
    mov 0x0D,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30494,pc),r3
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

FUN_ce3043e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304a0,pc),r3
    jsr @r3
    mov 0x07,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30458
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30458:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3047a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30494,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30476:
    #data 0x039c
DAT_ce30478:
    #data 0x02ab
DAT_ce3047a:
    #data 0x01e9
DAT_ce3047c:
    #data 0x0525
DAT_ce3047e:
    #data 0x02ac
DAT_ce30480:
    #data 0x01fe
DAT_ce30482:
    #data 0x0394
DAT_ce30484:
    #data 0x040c
    #align4

PTR_ce30488:
    #data DAT_ce3321c
PTR_ce3048c:
    #data loc_8c054e58
PTR_ce30490:
    #data loc_8c055c3a
PTR_ce30494:
    #data loc_8c0530d8
PTR_ce30498:
    #data DAT_ce3322c
PTR_ce3049c:
    #data loc_8c054d1c
PTR_ce304a0:
    #data loc_8c054da0

;=============================================

LAB_ce304a4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30584,pc),r5
    mov.w @(DAT_ce3056c,pc),r6
    mov.l @(PTR_ce30588,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304cc
    mov.w @(DAT_ce3056e,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce304cc
    mov.w @(DAT_ce30570,pc),r0
    mov 0x00,r2
    bra LAB_ce304ee
    mov.b r2,@(r0,r14)

LAB_ce304cc:
    mov.w @(DAT_ce30572,pc),r6
    mov.l @(PTR_ce3058c,pc),r5
    mov.l @(PTR_ce30588,pc),r2
    add r14,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304fe
    mov.w @(DAT_ce3056e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce304fe
    mov.w @(DAT_ce30570,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)

LAB_ce304ee:
    mov.w @(DAT_ce30574,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r2,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce304fe:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30506:
    mov.w @(DAT_ce30576,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30514
    mov.b @(r0,r4),r3
    add 0xFF,r3
    mov.b r3,@(r0,r4)

LAB_ce30514:
    rts
    nop

LAB_ce30518:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30590,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30578,pc),r0
    mov.b @(r0,r14),r2
    add 0xEA,r0
    mov.b @(r0,r14),r1
    extu.b r2,r2
    mov.w @(DAT_ce3057a,pc),r0
    mov r2,r3
    shll r2
    extu.b r1,r1
    add r3,r2
    mov.l @(PTR_ce30594,pc),r3
    shll2 r1
    shll2 r2
    add r1,r2
    add r3,r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3057c,pc),r0
    mov.b @(r0,r14),r1
    add 0xBF,r0
    mov.b r1,@(r0,r14)
    add 0x57,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30598
    mov.w @(DAT_ce3057c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30598
    mov.w @(DAT_ce3057e,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce30598
    mov.w @(DAT_ce30580,pc),r0
    mov 0x19,r3
    bra LAB_ce305ba
    mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3056c:
    #data 0x0364
DAT_ce3056e:
    #data 0x040c
DAT_ce30570:
    #data 0x0258
DAT_ce30572:
    #data 0x0384
DAT_ce30574:
    #data 0x01a3
DAT_ce30576:
    #data 0x02ab
DAT_ce30578:
    #data 0x01fe
DAT_ce3057a:
    #data 0x03f4
DAT_ce3057c:
    #data 0x01e8
DAT_ce3057e:
    #data 0x01f9
DAT_ce30580:
    #data 0x01a1
    #align4

PTR_ce30584:
    #data DAT_ce331bc
PTR_ce30588:
    #data loc_8c054e58
PTR_ce3058c:
    #data DAT_ce331fc
PTR_ce30590:
    #data loc_8c052b4c
PTR_ce30594:
    #data DAT_ce3318c

;=============================================

LAB_ce30598:
    mov.w @(DAT_ce306dc,pc),r0
    mov.b @(r0,r14),r2
    add 0x05,r0
    mov.b @(r0,r14),r1
    add 0xEA,r0
    mov r2,r3
    shll r2
    shll2 r3
    add r3,r2
    mov r1,r3
    shll r1
    add r3,r1
    mov.b @(r0,r14),r3
    add r1,r2
    add 0xB9,r0
    add r3,r2
    mov.b r2,@(r0,r14)

LAB_ce305ba:
    mov.w @(DAT_ce306de,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce306e8,pc),r3
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
    mov.w @(DAT_ce306e0,pc),r0
    mov.b @(r0,r14),r6
    add 0x11,r0
    mov.b @(r0,r14),r5
    add 0x05,r0
    mov.b @(r0,r14),r3
    extu.b r5,r5
    shll r5
    add r3,r5
    mov.l @(PTR_ce306ec,pc),r3
    add 0x07,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce306e2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30606
    mov.w @(DAT_ce306e0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30616

LAB_ce30606:
    mov.w @(DAT_ce306e0,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r5
    mov.l @(PTR_ce306f0,pc),r3
    add 0x14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce30616:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3061c:
    mov.w @(DAT_ce306e2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r4
    add 0xEA,r0
    mov.b @(r0,r14),r2
    add 0x14,r0
    extu.b r4,r4
    mov r4,r3
    shll r4
    add r3,r4
    mov.b @(r0,r14),r3
    extu.b r2,r2
    shll2 r4
    shll2 r2
    tst r3,r3
    add r2,r4
    bf/s LAB_ce3064a
    exts.w r4,r5
    mov.l @(PTR_ce306f4,pc),r4
    bra LAB_ce3064c
    nop

LAB_ce3064a:
    mov.l @(PTR_ce306f8,pc),r4

LAB_ce3064c:
    mov.w @(DAT_ce306e4,pc),r0
    add r5,r4
    mov.l r4,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce306e0,pc),r0
    mov.b @(r0,r14),r3
    add 0xBF,r0
    mov.b r3,@(r0,r14)
    add 0x57,r0
    mov.b @(r0,r14),r2
    add 0xEA,r0
    mov.b @(r0,r14),r1
    add 0xB9,r0
    mov r2,r3
    shll r2
    add r3,r2
    mov.l @(PTR_ce306e8,pc),r3
    add r1,r2
    add 0x0C,r2
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
    mov.w @(DAT_ce306e0,pc),r0
    mov.l @(PTR_ce306ec,pc),r2
    mov.b @(r0,r14),r6
    add 0x16,r0
    mov.b @(r0,r14),r5
    add 0x0B,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce306e0,pc),r0
    mov.l @(PTR_ce306f0,pc),r3
    mov.b @(r0,r14),r5
    add 0x14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce306e2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce306c6
    mov.w @(DAT_ce306e6,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce306d6
    mov.w @(DAT_ce306e6,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    bra LAB_ce306d6
    mov.b r2,@(r0,r14)

LAB_ce306c6:
    mov.w @(DAT_ce306e6,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce306d6
    mov.w @(DAT_ce306e6,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce306d6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306dc:
    #data 0x01f9
DAT_ce306de:
    #data 0x01ac
DAT_ce306e0:
    #data 0x01e8
DAT_ce306e2:
    #data 0x01fe
DAT_ce306e4:
    #data 0x03f4
DAT_ce306e6:
    #data 0x01d6
    #align4

PTR_ce306e8:
    #data loc_8c2896b0
PTR_ce306ec:
    #data loc_8c034e8c
PTR_ce306f0:
    #data loc_8c04223a
PTR_ce306f4:
    #data DAT_ce33174
PTR_ce306f8:
    #data DAT_ce331a4

;=============================================

LAB_ce306fc:
    mov.w @(DAT_ce307d4,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30710
    mov.w @(DAT_ce307d6,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30718
    bra LAB_ce3071c
    nop

LAB_ce30710:
    mov.w @(DAT_ce307d6,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce3071c

LAB_ce30718:
    bra LAB_ce3061c
    nop

LAB_ce3071c:
    rts
    nop

LAB_ce30720:
    mov.w @(DAT_ce307d8,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce307e4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30734:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce307e8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3074e
    lds.l @r15+,PR
    mov.l @(PTR_ce307ec,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3074e:
    mov.w @(DAT_ce307da,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30772
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce307f0,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce307dc,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3076a
    mova @(DAT_ce307f4,pc),r0
    fmov.s @r0,fr4

LAB_ce3076a:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce30772:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30778:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce307e8,pc),r13
    tst r0,r0
    bf LAB_ce30808
    jsr @r13
    mov r14,r4
    mov.w @(DAT_ce307de,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3086c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce307f8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce307fc,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30800,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30804,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce307e0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3086c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    bra LAB_ce3086c
    fmov fr3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307d4:
    #data 0x01fe
DAT_ce307d6:
    #data 0x01d6
DAT_ce307d8:
    #data 0x01ff
DAT_ce307da:
    #data 0x0140
DAT_ce307dc:
    #data 0x0130
DAT_ce307de:
    #data 0x0141
DAT_ce307e0:
    #data 0x01d2
    #align4

PTR_ce307e4:
    #data PTR_ce332ac
PTR_ce307e8:
    #data loc_8c034dee
PTR_ce307ec:
    #data loc_8c051648
DAT_ce307f0:
    #data 0xc2555555
DAT_ce307f4:
    #data 0x42555555
DAT_ce307f8:
    #data 0xc0d55555
DAT_ce307fc:
    #data 0x3ed55555
DAT_ce30800:
    #data 0x41092492
DAT_ce30804:
    #data 0xbf4db6db

;=============================================

LAB_ce30808:
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30856
    jsr @r13
    mov r14,r4
    mov.l @(PTR_ce30920,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3086c
    mov.w @(DAT_ce30918,pc),r0
    mov 0x00,r2
    fldi0 fr4
    mov 0x08,r5
    mov.b r2,@(r0,r14)
    mov 0x02,r6
    mov.b @(0x6,r14),r0
    mov 0x07,r7
    mov.l @(PTR_ce30924,pc),r3
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
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30928,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30856:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3086c
    lds.l @r15+,PR
    mov.l @(PTR_ce3092c,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3086c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30874:
    mov.w @(DAT_ce3091a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce30894
    cmp/eq 0x00,r0
    bt LAB_ce3089a
    cmp/eq 0x02,r0
    bt LAB_ce3093c
    cmp/eq 0x01,r0
    bt LAB_ce30948
    bra LAB_ce3097c
    nop

LAB_ce30894:
    mov.l @(PTR_ce30930,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3089a:
    mov 0x5C,r1
    mov.l @(PTR_ce30934,pc),r3
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
    mov.w @(DAT_ce30918,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30902
    mov.w @(DAT_ce3091c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30902
    mov.w @(DAT_ce3091e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce308fa
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30734
    mov.l @r15+,r14

LAB_ce308fa:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30778
    mov.l @r15+,r14

LAB_ce30902:
    mov.l @(PTR_ce30938,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3097c
    lds.l @r15+,PR
    mov.l @(PTR_ce3092c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30918:
    #data 0x01f9
DAT_ce3091a:
    #data 0x01ff
DAT_ce3091c:
    #data 0x01e8
DAT_ce3091e:
    #data 0x01fe
    #align4

PTR_ce30920:
    #data loc_8c052d6e
PTR_ce30924:
    #data loc_8c034f54
PTR_ce30928:
    #data loc_8c0511b4
PTR_ce3092c:
    #data loc_8c051648
PTR_ce30930:
    #data loc_8c0511e2
PTR_ce30934:
    #data loc_8c052c84
PTR_ce30938:
    #data loc_8c034dee

;=============================================

LAB_ce3093c:
    mov.l @(PTR_ce30a64,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30a68,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30948:
    mov.l @(PTR_ce30a6c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30a70,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30a74,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30966
    mov.l @(PTR_ce30a78,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30966:
    mov.l @(PTR_ce30a7c,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3097c
    lds.l @r15+,PR
    mov.l @(PTR_ce30a80,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3097c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30982:
    mov.w @(DAT_ce30a5c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30998
    mov.l @(PTR_ce30a84,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30998:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce309f0
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30a88,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a5e,pc),r0
    mov 0x58,r2
    mov 0x00,r4
    mov.l @(PTR_ce30a8c,pc),r3
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
    mov 0x01,r2
    mov.w @(DAT_ce30a60,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce30a90,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30a94,pc),r3
    mov 0x14,r5
    mov 0x1B,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30a98,pc),r2
    mov 0x15,r5
    jsr @r2
    mov r14,r4

LAB_ce309f0:
    mov 0x5C,r1
    mov.l @(PTR_ce30a9c,pc),r3
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
    mov.l @(PTR_ce30a74,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30a44
    lds.l @r15+,PR
    mov.l @(PTR_ce30aa0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30a44:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30a4a:
    mov r4,r3
    mov.l @(PTR_ce30aa4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a5c:
    #data 0x01ff
DAT_ce30a5e:
    #data 0x01a1
DAT_ce30a60:
    #data 0x01f9
    #align4

PTR_ce30a64:
    #data loc_8c050084
PTR_ce30a68:
    #data loc_8c04ff88
PTR_ce30a6c:
    #data loc_8c04fea8
PTR_ce30a70:
    #data loc_8c050048
PTR_ce30a74:
    #data loc_8c034dee
PTR_ce30a78:
    #data loc_8c05176e
PTR_ce30a7c:
    #data loc_8c052ce2
PTR_ce30a80:
    #data loc_8c052dac
PTR_ce30a84:
    #data loc_8c0511e2
PTR_ce30a88:
    #data loc_8c052b4c
PTR_ce30a8c:
    #data loc_8c2896b0
PTR_ce30a90:
    #data loc_8c056de4
PTR_ce30a94:
    #data loc_8c034e8c
PTR_ce30a98:
    #data loc_8c04223a
PTR_ce30a9c:
    #data loc_8c052c84
PTR_ce30aa0:
    #data loc_8c051648
PTR_ce30aa4:
    #data PTR_ce332bc

;=============================================

LAB_ce30aa8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30bdc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30bd4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30af6
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce30be0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30be4,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30bd6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30af6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30af6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30afc:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30bdc,pc),r3
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
    bt LAB_ce30b52
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce30b52:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30b58:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30bdc,pc),r3
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
    cmp/pl r0
    bt LAB_ce30bce
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce30be8,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30bd8,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce30bc2
    mov 0x02,r6
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30bc2:
    lds.l @r15+,PR
    mov.l @(PTR_ce30bec,pc),r3
    mov r6,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30bce:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30bd4:
    #data 0x0141
DAT_ce30bd6:
    #data 0x01d2
DAT_ce30bd8:
    #data 0x0130
    #align4

PTR_ce30bdc:
    #data loc_8c034dee
DAT_ce30be0:
    #data 0xc17d5555
DAT_ce30be4:
    #data 0x3ea00000
DAT_ce30be8:
    #data 0x3f200000
PTR_ce30bec:
    #data loc_8c034e8c

;=============================================

LAB_ce30bf0:
    mov.l r14,@-r15
    mov r4,r14
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ce4,pc),r3
    jsr @r3
    fldi0 fr15
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30c54
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
    bt LAB_ce30c70
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    bra LAB_ce30c70
    fmov fr15,@(r0,r14)

LAB_ce30c54:
    mov 0x5C,r0
    mov.l @(PTR_ce30ce8,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c70:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce30c78:
    mov r4,r3
    mov.l @(PTR_ce30cec,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30c8a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ce4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30cde,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30cd8
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce30cf0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30cf4,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30ce0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30cd8
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30cd8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30cde:
    #data 0x0141
DAT_ce30ce0:
    #data 0x01d2
    #align4

PTR_ce30ce4:
    #data loc_8c034dee
PTR_ce30ce8:
    #data loc_8c051648
PTR_ce30cec:
    #data PTR_ce332cc
DAT_ce30cf0:
    #data 0x417d5555
DAT_ce30cf4:
    #data 0xbea00000

;=============================================

LAB_ce30cf8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30e18,pc),r3
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
    bt LAB_ce30d6e
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce30e1c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30e14,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce30d62
    mov 0x03,r6
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30d62:
    lds.l @r15+,PR
    mov.l @(PTR_ce30e20,pc),r3
    mov 0x02,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d6e:
    mov.w @(DAT_ce30e16,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r3
    tst r3,r3
    rts
    mov.l @r15+,r14

LAB_ce30d7a:
    mov.l r14,@-r15
    mov r4,r14
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e18,pc),r3
    jsr @r3
    fldi0 fr15
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30dde
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
    bt LAB_ce30dfa
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    bra LAB_ce30dfa
    fmov fr15,@(r0,r14)

LAB_ce30dde:
    mov 0x5C,r0
    mov.l @(PTR_ce30e24,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce30dfa:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce30e02:
    mov r4,r3
    mov.l @(PTR_ce30e28,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e14:
    #data 0x0130
DAT_ce30e16:
    #data 0x0140
    #align4

PTR_ce30e18:
    #data loc_8c034dee
DAT_ce30e1c:
    #data 0xbfbaaaaa
PTR_ce30e20:
    #data loc_8c034e8c
PTR_ce30e24:
    #data loc_8c051648
PTR_ce30e28:
    #data PTR_ce332d8

;=============================================

LAB_ce30e2c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r3
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30f5a,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x25,r0
    mov.b @(r0,r14),r12
    mov.w @(DAT_ce30f5c,pc),r0
    extu.b r12,r12
    mov.b @(r0,r14),r3
    shll r12
    add 0x06,r12
    tst r3,r3
    bf/s LAB_ce30e6c
    mov 0x0D,r13
    mov.w @(DAT_ce30f5e,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x60,r0
    bf LAB_ce30e6c
    mov 0x25,r0
    mov.b @(r0,r14),r12
    mov 0x00,r13
    extu.b r12,r12
    shll r12
    add 0x05,r12

LAB_ce30e6c:
    mov.l @(PTR_ce30f64,pc),r3
    mov 0x12,r5
    mov r13,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    extu.w r12,r6
    mov.l @(PTR_ce30f68,pc),r2
    mov 0x01,r7
    mov r14,r4
    mov.l @r15+,r12
    mov 0x02,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30e8a:
    mov.l @(PTR_ce30f6c,pc),r2
    mov 0x02,r1
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.b @r2,r3
    extu.b r3,r3
    cmp/ge r1,r3
    bf/s LAB_ce30eca
    mov r4,r14
    mov.l @(PTR_ce30f70,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30f60,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce30ec0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30f74,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0xFF,r0
    bra LAB_ce30eca
    mov.w r0,@(0x1c,r14)

LAB_ce30ec0:
    mov.w @(DAT_ce30f62,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30eca
    mov.b r4,@(r0,r14)

LAB_ce30eca:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30ed0:
    sts.l PR,@-r15
    bsr FUN_ce30f3a
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30f70,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30ee0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce30f3a
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    mov.l @(PTR_ce30f64,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30f78,pc),r2
    mov 0x00,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30f04:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce30f3a
    mov r4,r14
    mov.l @(PTR_ce30f70,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f34
    mov.b @(0x5,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce30f64,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30f78,pc),r2
    mov 0x00,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30f34:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30f3a:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(0x1c,r14),r0
    mov 0x01,r7
    mov.l @(PTR_ce30f68,pc),r3
    mov r14,r4
    add 0x01,r0
    mov r7,r5
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    and 0x03,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    mov r0,r6
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f5a:
    #data 0x012c
DAT_ce30f5c:
    #data 0x0525
DAT_ce30f5e:
    #data 0x04dc
DAT_ce30f60:
    #data 0x0141
DAT_ce30f62:
    #data 0x014b
    #align4

PTR_ce30f64:
    #data loc_8c034e8c
PTR_ce30f68:
    #data loc_8c03544c
PTR_ce30f6c:
    #data loc_8c2895f0
PTR_ce30f70:
    #data loc_8c034dee
PTR_ce30f74:
    #data loc_8c0ec428
PTR_ce30f78:
    #data loc_8c035162

;=============================================

LAB_ce30f7c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce31030
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bt LAB_ce30fa6
    extu.b r4,r0
    cmp/eq 0x02,r0
    bf LAB_ce3100a

LAB_ce30fa6:
    mov r13,r0
    nop
    mov.l @(PTR_ce31088,pc),r3
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov 0x01,r12
    tst r12,r0
    bt LAB_ce30fdc
    mov.w @(DAT_ce31084,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x06,r0
    bt/s LAB_ce30fdc
    mov r0,r4
    tst r4,r4
    bt LAB_ce30fdc
    mov.l @(PTR_ce31088,pc),r3
    jsr @r3
    nop
    tst r12,r0
    bt LAB_ce30fd8
    mov 0x02,r4
    mov r4,r11
    bra LAB_ce30fe2
    mov r4,r0

LAB_ce30fd8:
    bra LAB_ce30fe4
    mov r13,r11

LAB_ce30fdc:
    mov r12,r11
    mov r12,r0
    nop

LAB_ce30fe2:
    mov.b r0,@(0x7,r14)

LAB_ce30fe4:
    mov.l @(PTR_ce3108c,pc),r3
    mov 0x13,r5
    mov r11,r6
    jsr @r3
    mov r14,r4
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce310da
    lds.l @r15+,PR
    mov.l @(PTR_ce31090,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov.l @r15+,r11
    mov 0x03,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3100a:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3108c,pc),r3
    mov 0x03,r6
    fmov fr4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov 0x13,r5
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31030:
    mov.l @(PTR_ce31094,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce3104a
    lds.l @r15+,PR
    mov.l @(PTR_ce31098,pc),r3
    mov r14,r4
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3104a:
    mov 0x20,r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bt LAB_ce3105a
    extu.b r4,r0
    cmp/eq 0x02,r0
    bf LAB_ce310ca

LAB_ce3105a:
    mov.l @(PTR_ce3109c,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce310a4
    mov.w @(DAT_ce31086,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce310da
    mov.b r13,@(r0,r14)
    mov 0x02,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce310a0,pc),r3
    mov r14,r4
    mov 0x00,r5
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31084:
    #data 0x01e9
DAT_ce31086:
    #data 0x0141
    #align4

PTR_ce31088:
    #data loc_8c03319e
PTR_ce3108c:
    #data loc_8c034e8c
PTR_ce31090:
    #data loc_8c0b41f4
PTR_ce31094:
    #data loc_8c046c8a
PTR_ce31098:
    #data loc_8c051648
PTR_ce3109c:
    #data loc_8c034dee
PTR_ce310a0:
    #data loc_8c0b68dc

;=============================================

LAB_ce310a4:
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce310da
    mov.w @(DAT_ce311d8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce310da
    mov.b r13,@(r0,r14)
    mov 0x04,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce311ec,pc),r3
    mov r14,r4
    mov 0x00,r5
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce310ca:
    lds.l @r15+,PR
    mov.l @(PTR_ce311f0,pc),r3
    mov r14,r4
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce310da:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce310e6:
    mov.w @(DAT_ce311da,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce311f4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce310fa:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov 0x00,r5
    mov.w @(DAT_ce311dc,pc),r0
    mov.l @(PTR_ce311f8,pc),r3
    mov.b r5,@(r0,r4)
    add 0xFD,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce311de,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce31122:
    mov r4,r3
    mov.l @(PTR_ce311fc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31134:
    mov.w @(DAT_ce311e0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31150
    mov.w @(DAT_ce311e4,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce311e2,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31150:
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31200,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce310fa
    mov r14,r4
    mov.w @(DAT_ce311e6,pc),r0
    mov 0x34,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31204,pc),r3
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
    mov.l @(PTR_ce31208,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3120c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce311e0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bt LAB_ce311b0
    lds.l @r15+,PR
    mov.l @(PTR_ce311ec,pc),r2
    mov 0x00,r6
    mov r6,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce311b0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311b6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce311e8,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce311ea,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce311e0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31210
    bra LAB_ce31212
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311d8:
    #data 0x0141
DAT_ce311da:
    #data 0x01e9
DAT_ce311dc:
    #data 0x01fc
DAT_ce311de:
    #data 0x041c
DAT_ce311e0:
    #data 0x0255
DAT_ce311e2:
    #data 0x00ff
DAT_ce311e4:
    #data 0x03f0
DAT_ce311e6:
    #data 0x01a1
DAT_ce311e8:
    #data 0x03f8
DAT_ce311ea:
    #data 0x0328
    #align4

PTR_ce311ec:
    #data loc_8c0b68dc
PTR_ce311f0:
    #data loc_8c034dee
PTR_ce311f4:
    #data PTR_ce332ec
PTR_ce311f8:
    #data loc_8c05218a
PTR_ce311fc:
    #data PTR_ce33324
PTR_ce31200:
    #data loc_8c035162
PTR_ce31204:
    #data loc_8c2896b0
PTR_ce31208:
    #data loc_8c034e8c
PTR_ce3120c:
    #data loc_8c05115a

;=============================================

LAB_ce31210:
    mov 0x00,r3

LAB_ce31212:
    mov.w @(DAT_ce31340,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31354,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31342,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31254
    mov 0x00,r4
    mov.l @(PTR_ce31360,pc),r3
    mov.b r4,@(r0,r14)
    mov r15,r5
    mov.b @(0x6,r14),r0
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31344,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce31358,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3135c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31254:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3125c:
    mov.w @(DAT_ce31346,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31348,pc),r0
    mov.l @(PTR_ce31354,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31342,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce312b4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31342,pc),r0
    mov.b @(r0,r14),r3
    mov 0x22,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31364,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce3129e
    mov.l @(PTR_ce31368,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce312a8

LAB_ce3129e:
    lds.l @r15+,PR
    mov.l @(PTR_ce3136c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce312a8:
    lds.l @r15+,PR
    mov.l @(PTR_ce31370,pc),r3
    mov 0x10,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce312b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312ba:
    mov.w @(DAT_ce31346,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31348,pc),r0
    mov.l @(PTR_ce31354,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312e6
    lds.l @r15+,PR
    mov.l @(PTR_ce3136c,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce312e6:
    mov.w @(DAT_ce31342,pc),r0
    mov.b @(r0,r14),r3
    mov.b @(r0,r14),r2
    mov 0x22,r0
    cmp/pz r3
    mov.b @(r0,r14),r3
    extu.b r3,r3
    cmp/eq r3,r2
    bt/s LAB_ce31306
    mov 0x00,r13
    mov.w @(DAT_ce3134a,pc),r0
    mov.b r13,@(r0,r14)
    add 0xA3,r0
    mov.b @(r0,r14),r3
    mov 0x22,r0
    mov.b r3,@(r0,r14)

LAB_ce31306:
    mov.w @(DAT_ce3134c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bt LAB_ce31338
    mov.w @(DAT_ce3134c,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce31374,pc),r1
    mov 0x00,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xB2,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    mov.w @(DAT_ce3134e,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31350,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)

LAB_ce31338:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31340:
    #data 0x03f1
DAT_ce31342:
    #data 0x0141
DAT_ce31344:
    #data 0x03f0
DAT_ce31346:
    #data 0x03f8
DAT_ce31348:
    #data 0x0328
DAT_ce3134a:
    #data 0x019e
DAT_ce3134c:
    #data 0x014b
DAT_ce3134e:
    #data 0x03f9
DAT_ce31350:
    #data 0x0327
    #align4

PTR_ce31354:
    #data loc_8c034dee
DAT_ce31358:
    #data 0xc1200000
DAT_ce3135c:
    #data 0x438d6db7
PTR_ce31360:
    #data loc_8c050834
PTR_ce31364:
    #data loc_8c0b7498
PTR_ce31368:
    #data loc_8c0ecb58
PTR_ce3136c:
    #data loc_8c051648
PTR_ce31370:
    #data loc_8c042008
PTR_ce31374:
    #data loc_8c0b41f4

;=============================================

LAB_ce31378:
    mov.w @(DAT_ce3146a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce313a2
    mov.l @(PTR_ce31474,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3146c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce313a2
    mov.w @(DAT_ce3146c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce313a2:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31478,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce313b4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r5
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3147c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3146a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce31456
    mov 0x00,r13
    mov.l @(PTR_ce31480,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3146e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce313ec
    mov.w @(DAT_ce31470,pc),r0
    mov 0x33,r3
    bra LAB_ce313f2
    mov.b r3,@(r0,r14)

LAB_ce313ec:
    mov.w @(DAT_ce31470,pc),r0
    mov 0x4C,r2
    mov.b r2,@(r0,r14)

LAB_ce313f2:
    mov.w @(DAT_ce31472,pc),r0
    mov.l @(PTR_ce31484,pc),r3
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
    mov 0x5C,r0
    mov.l @(DAT_ce31488,pc),r1
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce3148c,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce31490,pc),r1
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr1
    fsts FPUL,fr2
    fdiv fr2,fr1
    lds r1,FPUL
    fmov fr1,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr0
    mov 0x15,r5
    fsts FPUL,fr1
    fdiv fr1,fr0
    fldi0 fr3
    mov.l @(PTR_ce31494,pc),r3
    fmov fr0,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3146e,pc),r0
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x06,r6
    jsr @r3
    mov r14,r4
    bra LAB_ce314d2
    nop

LAB_ce31456:
    bsr FUN_ce310fa
    mov r14,r4
    mov.w @(DAT_ce3146e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31498
    mov.w @(DAT_ce31470,pc),r0
    mov 0x30,r3
    bra LAB_ce3149e
    mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3146a:
    #data 0x01f9
DAT_ce3146c:
    #data 0x041c
DAT_ce3146e:
    #data 0x01a3
DAT_ce31470:
    #data 0x01a1
DAT_ce31472:
    #data 0x01ac
    #align4

PTR_ce31474:
    #data loc_8c04fea8
PTR_ce31478:
    #data PTR_ce33334
PTR_ce3147c:
    #data loc_8c035162
PTR_ce31480:
    #data loc_8c05218a
PTR_ce31484:
    #data loc_8c2896b0
DAT_ce31488:
    #data 0x41800000
DAT_ce3148c:
    #data 0x41000000
DAT_ce31490:
    #data 0x42800000
PTR_ce31494:
    #data loc_8c034e8c

;=============================================

LAB_ce31498:
    mov.w @(DAT_ce315a2,pc),r0
    mov 0x4A,r2
    mov.b r2,@(r0,r14)

LAB_ce3149e:
    mov.w @(DAT_ce315a4,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce315b0,pc),r3
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce315b4,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce315a6,pc),r0
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce315b8,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce314d2:
    lds.l @r15+,PR
    mov.l @(PTR_ce315bc,pc),r3
    mov r14,r4
    mov 0x05,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce314e0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce315c0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce315a8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31524
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov 0x10,r3
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce315aa,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce315ac,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce31518
    mov r14,r4
    mov 0x00,r6
    bra LAB_ce3151c
    mov 0x04,r5

LAB_ce31518:
    mov 0x00,r6
    mov r6,r5

LAB_ce3151c:
    lds.l @r15+,PR
    mov.l @(PTR_ce315c4,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31524:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3152a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce315c0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31558
    mov.w @(DAT_ce315ac,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3154e
    lds.l @r15+,PR
    mov.l @(PTR_ce315c8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3154e:
    lds.l @r15+,PR
    mov.l @(PTR_ce315cc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31558:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3155e:
    mov r4,r3
    mov.l @(PTR_ce315d0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31570:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce315d4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce310fa
    mov r14,r4
    mov.l @(PTR_ce315bc,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce315a6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce315d8
    mov 0x00,r4
    mov.w @(DAT_ce315a2,pc),r0
    mov 0x31,r3
    bra LAB_ce315de
    mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315a2:
    #data 0x01a1
DAT_ce315a4:
    #data 0x01ac
DAT_ce315a6:
    #data 0x01a3
DAT_ce315a8:
    #data 0x0141
DAT_ce315aa:
    #data 0x027b
DAT_ce315ac:
    #data 0x01f9
    #align4

PTR_ce315b0:
    #data loc_8c2896b0
PTR_ce315b4:
    #data loc_8c034e8c
PTR_ce315b8:
    #data loc_8c05115a
PTR_ce315bc:
    #data loc_8c056de4
PTR_ce315c0:
    #data loc_8c034dee
PTR_ce315c4:
    #data loc_8c0b41f4
PTR_ce315c8:
    #data loc_8c05176e
PTR_ce315cc:
    #data loc_8c051648
PTR_ce315d0:
    #data PTR_ce33340
PTR_ce315d4:
    #data loc_8c035162

;=============================================

LAB_ce315d8:
    mov.w @(DAT_ce31706,pc),r0
    mov 0x4E,r2
    mov.b r2,@(r0,r14)

LAB_ce315de:
    mov.w @(DAT_ce31708,pc),r0
    mov 0x16,r5
    mov.l @(PTR_ce31714,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce31718,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3170a,pc),r0
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x06,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3171c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31618:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31720,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3170c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31670
    mov.l @(PTR_ce31724,pc),r6
    mov 0x00,r5
    mov 0x01,r4
    mov.b r5,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x5,r6)
    mov.b r0,@(0x6,r6)
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce3170e,pc),r6
    add 0x01,r0
    add r14,r6
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.w @(DAT_ce3170e,pc),r4
    mov.b r0,@(0x1,r6)
    add r14,r4
    mov.b r0,@r6
    mov r5,r0
    nop
    mov.l @(PTR_ce31728,pc),r3
    mov 0x01,r5
    mov r0,r6
    mov.b r0,@(0x3,r4)
    mov.b r0,@(0x2,r4)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31728,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x03,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31670:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31676:
    sts.l PR,@-r15
    mov.l @(PTR_ce31720,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce31684:
    mov.w @(DAT_ce3170c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31698
    mov 0x00,r3
    mov.b r3,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    bra LAB_ce316be
    mov.b r0,@(0x6,r4)

LAB_ce31698:
    mov.w @(DAT_ce3170e,pc),r0
    mov.b @(r0,r4),r3
    add 0xFF,r3
    mov.b r3,@(r0,r4)
    exts.b r3,r3
    cmp/pz r3
    bt LAB_ce316ce
    mov.w @(DAT_ce3170e,pc),r5
    mov 0x01,r3
    add r4,r5
    mov.b @(0x1,r5),r0
    mov.b r0,@r5
    mov.w @(DAT_ce31710,pc),r0
    mov.b @(r0,r4),r2
    xor r3,r2
    mov.b r2,@(r0,r4)
    mov.b @(r0,r4),r0
    tst r3,r0
    bf LAB_ce316c4

LAB_ce316be:
    mov.l @(PTR_ce3172c,pc),r3
    jmp @r3
    mov 0x00,r5

LAB_ce316c4:
    mov.l @(PTR_ce31730,pc),r1
    mov 0x04,r6
    mov r3,r7
    jmp @r1
    mov 0x00,r5

LAB_ce316ce:
    rts
    nop

;=============================================

FUN_ce316d2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31720,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce316ec
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31734,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce316ec:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce316f4:
    mov r4,r3
    mov.l @(PTR_ce31738,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31706:
    #data 0x01a1
DAT_ce31708:
    #data 0x01ac
DAT_ce3170a:
    #data 0x01a3
DAT_ce3170c:
    #data 0x0141
DAT_ce3170e:
    #data 0x02a4
DAT_ce31710:
    #data 0x02a6
    #align4

PTR_ce31714:
    #data loc_8c2896b0
PTR_ce31718:
    #data loc_8c034e8c
PTR_ce3171c:
    #data loc_8c05115a
PTR_ce31720:
    #data loc_8c034dee
PTR_ce31724:
    #data loc_8c26a518
PTR_ce31728:
    #data loc_8c0b41f4
PTR_ce3172c:
    #data loc_8c035162
PTR_ce31730:
    #data loc_8c03544c
PTR_ce31734:
    #data loc_8c051648
PTR_ce31738:
    #data PTR_ce33350

;=============================================

LAB_ce3173c:
    mov.w @(DAT_ce31840,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3175a
    mov.w @(DAT_ce31844,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31842,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3175a:
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31854,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce310fa
    mov r14,r4
    mov.w @(DAT_ce31846,pc),r0
    mov 0x3D,r3
    mov 0x00,r13
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31858,pc),r3
    mov 0x16,r5
    mov.l r13,@(r0,r14)
    mov 0x18,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31848,pc),r0
    mov.l @(PTR_ce3185c,pc),r2
    mov.b r13,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31860,pc),r3
    mov 0x01,r5
    mov r13,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3184a,pc),r4
    add r14,r4
    mov r13,r0
    nop
    mov.l @(PTR_ce31854,pc),r3
    mov r0,r5
    mov.b r0,@(0x3,r4)
    mov.b r0,@(0x2,r4)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31864,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce317ca:
    mov.w @(DAT_ce3184c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3184e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31840,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce317ea
    bra LAB_ce317ec
    mov 0x02,r3

LAB_ce317ea:
    mov 0x00,r3

LAB_ce317ec:
    mov.w @(DAT_ce31850,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31868,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31852,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31818
    mov 0x00,r3
    mov r3,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3186c,pc),r3
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x10,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3184a,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce31818:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3181e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3184c,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3184e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31840,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31870
    bra LAB_ce31872
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31840:
    #data 0x0255
DAT_ce31842:
    #data 0x00ff
DAT_ce31844:
    #data 0x03f0
DAT_ce31846:
    #data 0x01a1
DAT_ce31848:
    #data 0x02a9
DAT_ce3184a:
    #data 0x02a4
DAT_ce3184c:
    #data 0x03f8
DAT_ce3184e:
    #data 0x0328
DAT_ce31850:
    #data 0x03f1
DAT_ce31852:
    #data 0x0140
    #align4

PTR_ce31854:
    #data loc_8c035162
PTR_ce31858:
    #data loc_8c2896b0
PTR_ce3185c:
    #data loc_8c034e8c
PTR_ce31860:
    #data loc_8c02fec4
PTR_ce31864:
    #data loc_8c05115a
PTR_ce31868:
    #data loc_8c034dee
PTR_ce3186c:
    #data loc_8c0b68dc

;=============================================

LAB_ce31870:
    mov 0x00,r3

LAB_ce31872:
    mov.w @(DAT_ce319b2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce319c0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce319b4,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)
    exts.b r2,r2
    cmp/pz r2
    bt LAB_ce318b4
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    fldi0 fr4
    mov r15,r5
    add 0x01,r0
    mov.l @(PTR_ce319c8,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce319b6,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce319c4,pc),r0
    fmov.s fr4,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce318b4:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318bc:
    mov.w @(DAT_ce319b8,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce319ba,pc),r0
    mov.b r2,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mova @(DAT_ce319cc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce319d0,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce319bc,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce318f8
    fldi0 fr4
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce318f8:
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov 0x0C,r3
    mov.w @(DAT_ce319b4,pc),r0
    mov 0x1A,r6
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce319d4,pc),r3
    jmp @r3
    mov 0x16,r5

LAB_ce3190e:
    mov.w @(DAT_ce319b8,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce319ba,pc),r0
    mov.l @(PTR_ce319c0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
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
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    ftrc fr3,FPUL
    sts FPUL,r5
    xor r5,r4
    cmp/pz r4
    bt LAB_ce31976
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce31976:
    mov.w @(DAT_ce319be,pc),r0
    mov.l @(PTR_ce319d8,pc),r2
    mov.b @(r0,r14),r1
    mov.b @r2,r3
    mov 0x01,r2
    extu.b r1,r1
    shad r1,r2
    extu.b r3,r3
    tst r2,r3
    bf LAB_ce31998
    mov.w @(DAT_ce319b4,pc),r0
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    exts.b r3,r3
    cmp/pz r3
    bt LAB_ce319ac

LAB_ce31998:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce319d4,pc),r3
    mov 0x1B,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce319ac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319b2:
    #data 0x03f1
DAT_ce319b4:
    #data 0x02a4
DAT_ce319b6:
    #data 0x03f0
DAT_ce319b8:
    #data 0x03f8
DAT_ce319ba:
    #data 0x0328
DAT_ce319bc:
    #data 0x0130
DAT_ce319be:
    #data 0x01a4
    #align4

PTR_ce319c0:
    #data loc_8c034dee
DAT_ce319c4:
    #data 0x432b6db6
PTR_ce319c8:
    #data loc_8c050834
DAT_ce319cc:
    #data 0xc1d55555
DAT_ce319d0:
    #data 0x3ed55555
PTR_ce319d4:
    #data loc_8c034e8c
PTR_ce319d8:
    #data loc_8c28963c

;=============================================

LAB_ce319dc:
    mov.w @(DAT_ce31b3a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31b3c,pc),r0
    mov.l @(PTR_ce31b4c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
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
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    ftrc fr3,FPUL
    sts FPUL,r5
    xor r5,r4
    cmp/pz r4
    bt/s LAB_ce31a46
    mov r14,r4
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce31a46:
    mov.l @(PTR_ce31b4c,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce31b3e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31a6c
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce31b50,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31b54,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31a6c:
    lds.l @r15+,PR
    bra LAB_ce31f72
    mov.l @r15+,r14

LAB_ce31a72:
    mov.w @(DAT_ce31b3a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    fmov.s fr15,@-r15
    mov 0x68,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31b3c,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr0
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr0,fr3
    fmov fr3,@(r0,r14)
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    add r14,r1
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fmov fr0,fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce31ad2
    fldi0 fr15
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce31ad2:
    mov.l @(PTR_ce31b4c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31b40,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31b30
    mov.w @(DAT_ce31b42,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce31afe
    mov 0x00,r4
    mov.w @(DAT_ce31b44,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31b46,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce31afe:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31b58,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31b40,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31b48,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    mov.l @(PTR_ce31b5c,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    mov 0x01,r5
    fmov fr15,@(r0,r14)
    mov 0x03,r6
    jsr @r3
    mov r14,r4

LAB_ce31b30:
    lds.l @r15+,PR
    mov r14,r4
    fmov.s @r15+,fr15
    bra LAB_ce31f72
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b3a:
    #data 0x03f8
DAT_ce31b3c:
    #data 0x0328
DAT_ce31b3e:
    #data 0x0141
DAT_ce31b40:
    #data 0x041c
DAT_ce31b42:
    #data 0x02a9
DAT_ce31b44:
    #data 0x03f9
DAT_ce31b46:
    #data 0x0327
DAT_ce31b48:
    #data 0x01f9
    #align4

PTR_ce31b4c:
    #data loc_8c034dee
DAT_ce31b50:
    #data 0x41092492
DAT_ce31b54:
    #data 0xbf4db6db
PTR_ce31b58:
    #data loc_8c0511b4
PTR_ce31b5c:
    #data loc_8c034e8c

;=============================================

FUN_ce31b60:
    extu.b r4,r0
    mov.l @(PTR_ce31c94,pc),r2
    mov r0,r3
    shll r0
    add r3,r0
    extu.b r5,r5
    shll2 r0
    add r0,r2
    shll2 r5
    add r2,r5
    mov.l @r5,r4
    mov.b @r4,r3
    tst r3,r3
    bt LAB_ce31b94
    mov.b @(0x5,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31b94
    mov.w @(DAT_ce31c7c,pc),r0
    mov.l @(r0,r4),r0
    mov.b @(0x1,r0),r0
    extu.b r0,r0
    cmp/eq 0x38,r0
    bf LAB_ce31b94
    rts
    mov r4,r0

LAB_ce31b94:
    mov 0x00,r0
    rts
    nop

LAB_ce31b9a:
    mov.w @(DAT_ce31c7e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31c80,pc),r0
    mov.l @(PTR_ce31c98,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c74
    mov.w @(DAT_ce31c82,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31c58
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31c84,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31c7c,pc),r0
    mov.l @(r0,r14),r4
    mov.b @(0x2,r4),r0
    bsr FUN_ce31b60
    mov r0,r4
    tst r0,r0
    bf/s LAB_ce31c04
    mov r0,r4
    mov.w @(DAT_ce31c7c,pc),r0
    mov 0x01,r5
    mov.l @(r0,r14),r4
    mov.b @(0x2,r4),r0
    bsr FUN_ce31b60
    mov r0,r4
    tst r0,r0
    bf/s LAB_ce31c04
    mov r0,r4
    mov.w @(DAT_ce31c7c,pc),r0
    mov 0x02,r5
    mov.l @(r0,r14),r4
    mov.b @(0x2,r4),r0
    bsr FUN_ce31b60
    mov r0,r4
    tst r0,r0
    bt/s LAB_ce31c58
    mov r0,r4

LAB_ce31c04:
    mov.w @(DAT_ce31c86,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce31c58
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce31c9c,pc),r0
    fsub fr3,fr2
    fmov.s @r0,fr3
    mov 0x5C,r0
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fldi0 fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr1
    fcmp/gt fr1,fr2
    bf LAB_ce31c30
    bra LAB_ce31c32
    mov 0x00,r3

LAB_ce31c30:
    mov 0x01,r3

LAB_ce31c32:
    mov.w @(DAT_ce31c88,pc),r0
    mov 0x02,r6
    mov 0x00,r5
    mov r14,r4
    mov.w r3,@(r0,r14)
    mov 0x1F,r3
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce31c8a,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x39,r2
    mov.w @(DAT_ce31c8c,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFE,r0
    mov.l @(PTR_ce31ca0,pc),r3
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c58:
    mov.w @(DAT_ce31c8e,pc),r0
    mov r14,r4
    mov.l @(PTR_ce31ca4,pc),r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31c90,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c74:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c7c:
    #data 0x020c
DAT_ce31c7e:
    #data 0x03f8
DAT_ce31c80:
    #data 0x0328
DAT_ce31c82:
    #data 0x02a9
DAT_ce31c84:
    #data 0x02a8
DAT_ce31c86:
    #data 0x0411
DAT_ce31c88:
    #data 0x0130
DAT_ce31c8a:
    #data 0x01d2
DAT_ce31c8c:
    #data 0x02a6
DAT_ce31c8e:
    #data 0x03f9
DAT_ce31c90:
    #data 0x0327
    #align4

PTR_ce31c94:
    #data loc_8c289608
PTR_ce31c98:
    #data loc_8c034dee
DAT_ce31c9c:
    #data 0x42000000
PTR_ce31ca0:
    #data loc_8c034e8c
PTR_ce31ca4:
    #data loc_8c051648

;=============================================

LAB_ce31ca8:
    mov.w @(DAT_ce31dc6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31dc8,pc),r0
    mov.l @(PTR_ce31dd8,pc),r3
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce31dca,pc),r0
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    exts.b r3,r3
    cmp/pz r3
    bt LAB_ce31cfa
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31ddc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31cfa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d00:
    mov.w @(DAT_ce31dc6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x00,r13
    mov.w @(DAT_ce31dc8,pc),r0
    mov r13,r5
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31dcc,pc),r0
    mov.l @(r0,r14),r4
    mov.b @(0x2,r4),r0
    bsr FUN_ce31b60
    mov r0,r4
    tst r0,r0
    bf/s LAB_ce31d4c
    mov r0,r4
    mov.w @(DAT_ce31dcc,pc),r0
    mov 0x01,r5
    mov.l @(r0,r14),r4
    mov.b @(0x2,r4),r0
    bsr FUN_ce31b60
    mov r0,r4
    tst r0,r0
    bf/s LAB_ce31d4c
    mov r0,r4
    mov.w @(DAT_ce31dcc,pc),r0
    mov 0x02,r5
    mov.l @(r0,r14),r4
    mov.b @(0x2,r4),r0
    bsr FUN_ce31b60
    mov r0,r4
    tst r0,r0
    bt/s LAB_ce31da2
    mov r0,r4

LAB_ce31d4c:
    mov.w @(DAT_ce31dce,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce31da2
    mov.l @(PTR_ce31dd8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31dd0,pc),r0
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    exts.b r3,r3
    cmp/pz r3
    bt LAB_ce31dbe
    mov.b @(0x6,r14),r0
    mov 0x40,r3
    mov 0x19,r6
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    mov.w @(DAT_ce31dd2,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31de0,pc),r3
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
    mov.l @(PTR_ce31de4,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31da2:
    mov.w @(DAT_ce31dd4,pc),r0
    mov r14,r4
    mov.l @(PTR_ce31de8,pc),r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31dd6,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31dbe:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31dc6:
    #data 0x03f8
DAT_ce31dc8:
    #data 0x0328
DAT_ce31dca:
    #data 0x02a6
DAT_ce31dcc:
    #data 0x020c
DAT_ce31dce:
    #data 0x0411
DAT_ce31dd0:
    #data 0x02a4
DAT_ce31dd2:
    #data 0x01a1
DAT_ce31dd4:
    #data 0x03f9
DAT_ce31dd6:
    #data 0x0327
    #align4

PTR_ce31dd8:
    #data loc_8c034dee
PTR_ce31ddc:
    #data LAB_ce33130
PTR_ce31de0:
    #data loc_8c2896b0
PTR_ce31de4:
    #data loc_8c034e8c
PTR_ce31de8:
    #data loc_8c051648

;=============================================

LAB_ce31dec:
    mov.w @(DAT_ce31efe,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31f00,pc),r0
    mov.l @(PTR_ce31f10,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f02,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e52
    mov.l @(PTR_ce31f14,pc),r4
    mov 0x03,r0
    mov.l @(PTR_ce31f18,pc),r3
    mov 0x0D,r5
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x07,r6
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x01,r5
    mov.w @(DAT_ce31f04,pc),r4
    add 0x01,r0
    mov.l @(PTR_ce31f1c,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    add r14,r4
    mov.b r0,@(0x1,r4)
    mov.b r0,@r4
    mov 0x00,r0
    mov.w @(DAT_ce31f04,pc),r4
    mov r0,r6
    add r14,r4
    mov.b r0,@(0x3,r4)
    mov.b r0,@(0x2,r4)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31f1c,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x03,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e52:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e58:
    mov.w @(DAT_ce31efe,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31f00,pc),r0
    mov.l @(PTR_ce31f10,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31684
    mov.l @r15+,r14

LAB_ce31e78:
    mov.w @(DAT_ce31efe,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31f00,pc),r0
    mov.l @(PTR_ce31f10,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31ed4
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31f06,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31f08,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31f0a,pc),r0
    mov.l @(r0,r14),r5
    mov.b @(0x3,r5),r0
    tst r0,r0
    bf/s LAB_ce31ebe
    mov 0x1D,r6
    mov.w @(DAT_ce31f0c,pc),r0
    mov.b r4,@(r0,r5)

LAB_ce31ebe:
    mov.l @(PTR_ce31f20,pc),r3
    mov 0x16,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31f24,pc),r2
    mov r14,r4
    mov 0x02,r6
    mov 0x00,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31ed4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31eda:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce31f10,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31f30
    mov.l @(PTR_ce31f28,pc),r3
    mov 0x3A,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f2c,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce31f6a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31efe:
    #data 0x03f8
DAT_ce31f00:
    #data 0x0328
DAT_ce31f02:
    #data 0x0141
DAT_ce31f04:
    #data 0x02a4
DAT_ce31f06:
    #data 0x03f9
DAT_ce31f08:
    #data 0x0327
DAT_ce31f0a:
    #data 0x01b0
DAT_ce31f0c:
    #data 0x0236
    #align4

PTR_ce31f10:
    #data loc_8c034dee
PTR_ce31f14:
    #data loc_8c26a518
PTR_ce31f18:
    #data loc_8c02fec4
PTR_ce31f1c:
    #data loc_8c0b41f4
PTR_ce31f20:
    #data loc_8c034e8c
PTR_ce31f24:
    #data loc_8c0b68dc
PTR_ce31f28:
    #data loc_8c04223a
PTR_ce31f2c:
    #data loc_8c051648

;=============================================

LAB_ce31f30:
    mov.w @(DAT_ce32030,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31f6a
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x4A,r5
    mov.l @(PTR_ce32044,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x34,r0
    mov.w @(DAT_ce32032,pc),r7
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce32048,pc),r0
    mov.l @(PTR_ce3204c,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    mov 0x03,r6
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32050,pc),r2
    jsr @r2
    nop

LAB_ce31f6a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f72:
    mov.w @(DAT_ce32034,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31ff2
    mov.w @(DAT_ce32036,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce31ff2
    mov.w @(DAT_ce32038,pc),r0
    mov.l @(r0,r4),r6
    mov.b @(0x3,r6),r0
    tst r0,r0
    bf/s LAB_ce31fea
    mov 0xFF,r5
    mov.w @(DAT_ce3203a,pc),r0
    mov.b @(r0,r6),r2
    tst r2,r2
    bf LAB_ce31fea
    mov.w @(DAT_ce32034,pc),r0
    mov.b @(r0,r4),r0
    tst 0x11,r0
    bf LAB_ce31fea
    mov.w @(DAT_ce3203c,pc),r0
    mov 0x05,r3
    mov.b @(r0,r4),r2
    add 0x01,r2
    mov.b r2,@(r0,r4)
    exts.b r2,r2
    cmp/ge r3,r2
    bt LAB_ce31fda
    mov.w @(DAT_ce3203e,pc),r0
    mov 0x3D,r1
    mov 0x00,r6
    mov.l @(PTR_ce32054,pc),r2
    mov.b r1,@(r0,r4)
    add 0x0B,r0
    mov.w r6,@(r0,r4)
    add 0xF2,r0
    mov.b r6,@(r0,r4)
    add 0x26,r0
    mov.l r6,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r2,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r3
    add 0x01,r3
    mov.w r3,@(r0,r1)
    mov.w @(DAT_ce32036,pc),r0
    bra LAB_ce31fde
    mov.b r6,@(r0,r4)

LAB_ce31fda:
    mov.w @(DAT_ce32036,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce31fde:
    mov.w @(DAT_ce32040,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)
    add 0x01,r0
    rts
    mov.b r5,@(r0,r4)

LAB_ce31fea:
    mov.w @(DAT_ce32040,pc),r0
    mov.b r5,@(r0,r4)
    add 0xFE,r0
    mov.b r5,@(r0,r4)

LAB_ce31ff2:
    rts
    nop

LAB_ce31ff6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3201a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce310fa
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32058,pc),r2
    mov r14,r4
    mov 0x02,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3201a:
    mov.l @(PTR_ce3205c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32064
    lds.l @r15+,PR
    mov.l @(PTR_ce32060,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32030:
    #data 0x0141
DAT_ce32032:
    #data 0x037a
DAT_ce32034:
    #data 0x019e
DAT_ce32036:
    #data 0x02a6
DAT_ce32038:
    #data 0x01b0
DAT_ce3203a:
    #data 0x0202
DAT_ce3203c:
    #data 0x02a7
DAT_ce3203e:
    #data 0x01a1
DAT_ce32040:
    #data 0x02a8
    #align4

PTR_ce32044:
    #data loc_8c04223a
DAT_ce32048:
    #data 0x42092492
PTR_ce3204c:
    #data loc_8c10235c
PTR_ce32050:
    #data loc_8c02fd26
PTR_ce32054:
    #data loc_8c2896b0
PTR_ce32058:
    #data loc_8c034e8c
PTR_ce3205c:
    #data loc_8c034dee
PTR_ce32060:
    #data loc_8c051648

;=============================================

LAB_ce32064:
    mov.w @(DAT_ce32186,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3209c
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    add 0x0A,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32084
    lds.l @r15+,PR
    mov.l @(PTR_ce32190,pc),r3
    mov 0x00,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32084:
    mov 0x25,r0
    mov.l @(PTR_ce32194,pc),r3
    mov.b @(r0,r14),r6
    mov 0x01,r7
    lds.l @r15+,PR
    extu.b r6,r6
    mov r14,r4
    shll r6
    add 0x06,r6
    mov 0x00,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3209c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce320a2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce32108
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce310fa
    mov r14,r4
    mov.l @(PTR_ce32198,pc),r2
    mov 0x08,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32188,pc),r0
    mov 0x15,r5
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce3218a,pc),r0
    add 0x42,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3219c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce32188,pc),r0
    mov.l @(PTR_ce321a0,pc),r2
    mov.w @(r0,r14),r6
    shll r6
    add 0x0C,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce321a4,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32108:
    mov.l @(PTR_ce321a8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32120
    lds.l @r15+,PR
    mov.l @(PTR_ce321ac,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32120:
    mov.w @(DAT_ce32186,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3213e
    mov.b r13,@(r0,r14)
    mov 0x00,r6
    lds.l @r15+,PR
    mov.w @(DAT_ce32188,pc),r0
    mov r14,r4
    mov.l @(PTR_ce321b0,pc),r3
    mov.b @(r0,r14),r5
    mov.l @r15+,r13
    add 0x05,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3213e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32146:
    mov r4,r3
    mov.l @(PTR_ce321b4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32158:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce32190,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce321b8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32198,pc),r3
    mov 0x0A,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3218c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce321bc
    bra LAB_ce321be
    mov 0x51,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32186:
    #data 0x0141
DAT_ce32188:
    #data 0x02ac
DAT_ce3218a:
    #data 0x01a1
DAT_ce3218c:
    #data 0x01a3
    #align4

PTR_ce32190:
    #data loc_8c035162
PTR_ce32194:
    #data loc_8c03544c
PTR_ce32198:
    #data loc_8c056de4
PTR_ce3219c:
    #data loc_8c2896b0
PTR_ce321a0:
    #data loc_8c034e8c
PTR_ce321a4:
    #data loc_8c05115a
PTR_ce321a8:
    #data loc_8c034dee
PTR_ce321ac:
    #data loc_8c051648
PTR_ce321b0:
    #data loc_8c0b41f4
PTR_ce321b4:
    #data PTR_ce33388
PTR_ce321b8:
    #data FUN_ce310fa

;=============================================

LAB_ce321bc:
    mov 0x53,r4

LAB_ce321be:
    mov.w @(DAT_ce322da,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce322e4,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov 0x00,r4
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
    mov.w @(DAT_ce322dc,pc),r0
    mov.l @(PTR_ce322e8,pc),r2
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x20,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce322ec,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce321fe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce322f0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce322de,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32238
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce322dc,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce322f4,pc),r0
    extu.b r3,r3
    shll2 r3
    mov r3,r5
    shll2 r5
    add r0,r5
    mov.l r3,@r15
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce32240
    mov.l @r15+,r14

LAB_ce32238:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32240:
    fmov.s @r5+,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @r5+,fr3
    fmov fr3,@(r0,r4)
    mov 0x60,r0
    fmov.s @r5+,fr3
    fmov fr3,@(r0,r4)
    mov 0x6C,r0
    fmov.s @r5,fr3
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce322e0,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32270
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce32270:
    mov.w @(DAT_ce322e2,pc),r0
    mov 0x02,r3
    rts
    mov.b r3,@(r0,r4)

LAB_ce32278:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce322f0,pc),r3
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
    mov.w @(DAT_ce322de,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32338
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce322dc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce322f8
    bra LAB_ce322fa
    mov 0x54,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce322da:
    #data 0x01a1
DAT_ce322dc:
    #data 0x01a3
DAT_ce322de:
    #data 0x0141
DAT_ce322e0:
    #data 0x0130
DAT_ce322e2:
    #data 0x01f9
    #align4

PTR_ce322e4:
    #data loc_8c2896b0
PTR_ce322e8:
    #data loc_8c034e8c
PTR_ce322ec:
    #data loc_8c05115a
PTR_ce322f0:
    #data loc_8c034dee
PTR_ce322f4:
    #data DAT_ce333a0

;=============================================

LAB_ce322f8:
    mov 0x56,r5

LAB_ce322fa:
    mov.w @(DAT_ce32440,pc),r0
    mov.l @(PTR_ce32444,pc),r3
    mov.b r5,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
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
    mov.w @(DAT_ce32442,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce32448,pc),r0
    extu.b r2,r2
    shll2 r2
    mov r2,r5
    shll2 r5
    add r0,r5
    mov.l r2,@r15
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce32240
    mov.l @r15+,r14

LAB_ce32338:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32340:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3244c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3236c
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32454,pc),r3
    mov 0x0A,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32450,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x01,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3236c:
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
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce323aa:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32458,pc),r3
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
    bt LAB_ce32428
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce3245c,pc),r3
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
    mov.w @(DAT_ce32442,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov 0x15,r5
    mov.l @(PTR_ce32454,pc),r3
    extu.b r6,r6
    shll r6
    add 0x23,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32428:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3242e:
    mov r4,r3
    mov.l @(PTR_ce32460,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32440:
    #data 0x01a1
DAT_ce32442:
    #data 0x01a3
    #align4

PTR_ce32444:
    #data loc_8c2896b0
PTR_ce32448:
    #data DAT_ce333c0
PTR_ce3244c:
    #data loc_8c034dee
DAT_ce32450:
    #data 0xbf4db6db
PTR_ce32454:
    #data loc_8c034e8c
PTR_ce32458:
    #data loc_8c052ce2
PTR_ce3245c:
    #data loc_8c0511b4
PTR_ce32460:
    #data PTR_ce333e0

;=============================================

LAB_ce32464:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce32560,pc),r3
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
    mov.w @(DAT_ce32554,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32556,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32564,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32568,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32558,pc),r0
    mov 0x57,r2
    mov.l @(PTR_ce3256c,pc),r3
    mov 0x26,r6
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
    mov.l @(PTR_ce32570,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce324da:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32574,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324f6
    mov.l @(PTR_ce32578,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce3253a
    nop

LAB_ce324f6:
    mov.w @(DAT_ce3255a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32516
    mov 0x00,r3
    fldi0 fr3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce3257c,pc),r0
    fmov.s fr3,@r15
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce32580,pc),r3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32516:
    mov.w @(DAT_ce3255c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3253a
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32584,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce3255e,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32532
    mova @(DAT_ce32588,pc),r0
    fmov.s @r0,fr4

LAB_ce32532:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce3253a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32542:
    mov r4,r3
    mov.l @(PTR_ce3258c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32554:
    #data 0x01f9
DAT_ce32556:
    #data 0x041c
DAT_ce32558:
    #data 0x01a1
DAT_ce3255a:
    #data 0x0141
DAT_ce3255c:
    #data 0x0140
DAT_ce3255e:
    #data 0x0130
    #align4

PTR_ce32560:
    #data loc_8c035162
PTR_ce32564:
    #data loc_8c05218a
PTR_ce32568:
    #data loc_8c05115a
PTR_ce3256c:
    #data loc_8c2896b0
PTR_ce32570:
    #data loc_8c034e8c
PTR_ce32574:
    #data loc_8c034dee
PTR_ce32578:
    #data loc_8c051648
DAT_ce3257c:
    #data 0x432b6db6
PTR_ce32580:
    #data loc_8c050ea4
DAT_ce32584:
    #data 0xc2555555
DAT_ce32588:
    #data 0x42555555
PTR_ce3258c:
    #data PTR_ce333e8

;=============================================

LAB_ce32590:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce326a8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce326a2,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce326ac,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce326a4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce325c2
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce325c2:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce326b0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x32,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce326b4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce326a6,pc),r0
    mov r4,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce326b8,pc),r3
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
    mov.l @(PTR_ce326bc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3260c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce326c0,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce326c4,pc),r3
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
    bt LAB_ce32674
    mov.l @(PTR_ce326c8,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce326bc,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32674:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3267a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce326c0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3269c
    mov.l @(PTR_ce326a8,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce326cc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3269c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326a2:
    #data 0x01f9
DAT_ce326a4:
    #data 0x01d2
DAT_ce326a6:
    #data 0x01a1
    #align4

PTR_ce326a8:
    #data loc_8c035162
DAT_ce326ac:
    #data 0x41f00000
DAT_ce326b0:
    #data 0xbe892492
DAT_ce326b4:
    #data 0xbf4db6db
PTR_ce326b8:
    #data loc_8c2896b0
PTR_ce326bc:
    #data loc_8c034e8c
PTR_ce326c0:
    #data loc_8c034dee
PTR_ce326c4:
    #data loc_8c052ce2
PTR_ce326c8:
    #data loc_8c0511b4
PTR_ce326cc:
    #data loc_8c051854

;=============================================

LAB_ce326d0:
    mov.w @(DAT_ce32776,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r4
    extu.b r4,r4
    tst r4,r4
    bt LAB_ce326ea
    mov r4,r0
    nop
    cmp/eq 0x02,r0
    bf LAB_ce32768

LAB_ce326ea:
    mov.w @(DAT_ce32778,pc),r0
    mov.w @(DAT_ce3277c,pc),r2
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce3277a,pc),r0
    mov.w r3,@(r0,r14)
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce32768
    mov.w @(DAT_ce3277e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32768
    mov.l @(PTR_ce32788,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf/s LAB_ce32712
    mov r0,r13
    bra LAB_ce3276e
    mov 0x00,r0

LAB_ce32712:
    mov.w @(DAT_ce32780,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3272a
    mov.w @(DAT_ce32776,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32768
    bra LAB_ce32758
    nop

LAB_ce3272a:
    mov.w @(DAT_ce32776,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32760
    mov.w @(DAT_ce32782,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32758
    mov.l @(PTR_ce3278c,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce32784,pc),r1
    and 0x03,r0
    add r14,r1
    mov.b r0,@r1
    mov.w @(DAT_ce32784,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32790,pc),r0
    shll r3
    mov.b @(r0,r3),r2
    bra LAB_ce32762
    nop

LAB_ce32758:
    mov.w @(DAT_ce32786,pc),r0
    mov 0x02,r1
    bra LAB_ce3276a
    mov.b r1,@(r0,r14)

LAB_ce32760:
    mov 0x01,r2

LAB_ce32762:
    mov.w @(DAT_ce32786,pc),r0
    bra LAB_ce3276a
    mov.b r2,@(r0,r14)

LAB_ce32768:
    mov 0x00,r13

LAB_ce3276a:
    mov r13,r0
    nop

LAB_ce3276e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32776:
    #data 0x01f9
DAT_ce32778:
    #data 0x01fa
DAT_ce3277a:
    #data 0x02ae
DAT_ce3277c:
    #data 0x0c00
DAT_ce3277e:
    #data 0x01a3
DAT_ce32780:
    #data 0x01fe
DAT_ce32782:
    #data 0x02ab
DAT_ce32784:
    #data 0x02aa
DAT_ce32786:
    #data 0x01f7
    #align4

PTR_ce32788:
    #data loc_8c045790
PTR_ce3278c:
    #data loc_8c03319e
PTR_ce32790:
    #data DAT_ce333f4

;=============================================

LAB_ce32794:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.l @(PTR_ce32898,pc),r3
    mov r4,r14
    mov.w @(DAT_ce3288a,pc),r0
    jsr @r3
    mov.l @(r0,r14),r13
    mov.w @(DAT_ce3288c,pc),r0
    mov 0x0A,r2
    mov.w @(DAT_ce3288c,pc),r1
    mov.b @(r0,r14),r0
    add r13,r1
    mov.l @(PTR_ce328a4,pc),r11
    xor 0x01,r0
    mov.l @(PTR_ce3289c,pc),r10
    mov.b r0,@r1
    mov.w @(DAT_ce3288c,pc),r0
    mov.l @(PTR_ce328ac,pc),r12
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce3288e,pc),r0
    extu.b r3,r3
    mov.w r3,@(r0,r13)
    add 0x70,r0
    mov.b r2,@(r0,r14)
    mova @(DAT_ce328a0,pc),r0
    fmov.s @r0,fr14
    mova @(DAT_ce328a8,pc),r0
    fmov.s @r0,fr15
    mov.w @(DAT_ce32890,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce32800
    cmp/eq 0x03,r0
    bt LAB_ce32800
    cmp/eq 0x04,r0
    bt LAB_ce32800
    cmp/eq 0x05,r0
    bt LAB_ce32800
    cmp/eq 0x01,r0
    bt LAB_ce328c0
    cmp/eq 0x02,r0
    bf LAB_ce327fc
    bra LAB_ce32916
    nop

LAB_ce327fc:
    bra LAB_ce3298c
    nop

LAB_ce32800:
    mov.w @(DAT_ce32892,pc),r0
    mov.w @(DAT_ce32894,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce32830
    mov.w @(DAT_ce3288c,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)
    mov.w @(DAT_ce3288e,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    extu.b r0,r0
    mov.w r0,@r1
    mov.w @(DAT_ce3288c,pc),r0
    mov.b @(r0,r13),r2
    xor r3,r2
    mov.b r2,@(r0,r13)
    mov.b @(r0,r13),r1
    mov.w @(DAT_ce3288e,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r13)

LAB_ce32830:
    mov 0x04,r0
    mov r15,r5
    fmov fr14,@(r0,r15)
    mov 0x08,r0
    add 0x04,r5
    fmov fr15,@(r0,r15)
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce32896,pc),r0
    mov 0x0F,r5
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce328b0,pc),r0
    shll r6
    mov.w @(r0,r6),r6
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce32896,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce328b4,pc),r0
    shll r3
    mov.w @(r0,r3),r2
    mov.w r2,@r15
    extu.w r2,r2
    tst r2,r2
    bt LAB_ce3286a
    mov.w @r15,r5
    mov 0x00,r6
    jsr @r12
    mov r14,r4

LAB_ce3286a:
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce32896,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce328b8,pc),r0
    shll2 r3
    mov.l @(r0,r3),r2
    mov.l @(PTR_ce328bc,pc),r3
    mov r2,r5
    mov.l r2,@r15
    jsr @r3
    mov r14,r4
    bra LAB_ce3298c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3288a:
    #data 0x01c8
DAT_ce3288c:
    #data 0x01d2
DAT_ce3288e:
    #data 0x0130
DAT_ce32890:
    #data 0x01f7
DAT_ce32892:
    #data 0x02ae
DAT_ce32894:
    #data 0x0400
DAT_ce32896:
    #data 0x02aa
    #align4

PTR_ce32898:
    #data loc_8c056f2a
PTR_ce3289c:
    #data loc_8c103660
DAT_ce328a0:
    #data 0xc2be0000
PTR_ce328a4:
    #data loc_8c034e8c
DAT_ce328a8:
    #data 0x43092492
PTR_ce328ac:
    #data loc_8c0b41f4
PTR_ce328b0:
    #data DAT_ce333fc
PTR_ce328b4:
    #data DAT_ce33414
PTR_ce328b8:
    #data DAT_ce33404
PTR_ce328bc:
    #data loc_8c042008

;=============================================

LAB_ce328c0:
    mov.l @(PTR_ce329e0,pc),r3
    mov 0x05,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce329d2,pc),r0
    mov.w @(DAT_ce329d4,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bf LAB_ce328fa
    mov.w @(DAT_ce329d6,pc),r0
    mov 0x01,r2
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)
    mov.w @(DAT_ce329d8,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    extu.b r0,r0
    mov.w r0,@r1
    mov.w @(DAT_ce329d6,pc),r0
    mov.b @(r0,r13),r3
    xor r2,r3
    mov.b r3,@(r0,r13)
    mov.b @(r0,r13),r1
    mov.w @(DAT_ce329d8,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r13)

LAB_ce328fa:
    mov 0x04,r0
    mov r15,r5
    fmov fr14,@(r0,r15)
    mov 0x08,r0
    add 0x04,r5
    fmov fr15,@(r0,r15)
    jsr @r10
    mov r14,r4
    mov 0x0F,r5
    mov 0x02,r6
    jsr @r11
    mov r14,r4
    bra LAB_ce3298c
    nop

LAB_ce32916:
    mov.w @(DAT_ce329d2,pc),r0
    mov.w @(DAT_ce329da,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bf LAB_ce32946
    mov.w @(DAT_ce329d6,pc),r0
    mov 0x01,r2
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)
    mov.w @(DAT_ce329d8,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    extu.b r0,r0
    mov.w r0,@r1
    mov.w @(DAT_ce329d6,pc),r0
    mov.b @(r0,r13),r3
    xor r2,r3
    mov.b r3,@(r0,r13)
    mov.b @(r0,r13),r1
    mov.w @(DAT_ce329d8,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r13)

LAB_ce32946:
    mov.w @(DAT_ce329d6,pc),r0
    mov r15,r5
    mov.w @(DAT_ce329d6,pc),r1
    add 0x04,r5
    mov.b @(r0,r14),r0
    add r13,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov 0x04,r0
    fmov fr14,@(r0,r15)
    mov 0x08,r0
    fmov fr15,@(r0,r15)
    jsr @r10
    mov r14,r4
    mov 0x0F,r5
    mov 0x03,r6
    jsr @r11
    mov r14,r4
    mov 0x03,r5
    mov 0x00,r6
    jsr @r12
    mov r14,r4
    mov 0x08,r0
    mov.l @(PTR_ce329e4,pc),r3
    mov.w r0,@(0x1c,r14)
    mov 0x78,r0
    mov.w r0,@(0x1e,r14)
    mov 0x07,r5
    mov.w @(DAT_ce329dc,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    mov.l @(PTR_ce329e8,pc),r2
    mov 0x04,r5
    jsr @r2
    mov r14,r4

LAB_ce3298c:
    add 0x10,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce329a0:
    mov.w @(DAT_ce329de,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r2
    mov r14,r4
    mov.l @(PTR_ce329ec,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    mov.w @(DAT_ce329dc,pc),r0
    mov.l @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce329c0:
    mov r4,r3
    mov.l @(PTR_ce329f0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329d2:
    #data 0x02ae
DAT_ce329d4:
    #data 0x0400
DAT_ce329d6:
    #data 0x01d2
DAT_ce329d8:
    #data 0x0130
DAT_ce329da:
    #data 0x0800
DAT_ce329dc:
    #data 0x01c8
DAT_ce329de:
    #data 0x01ea
    #align4

PTR_ce329e0:
    #data loc_8c02fec4
PTR_ce329e4:
    #data loc_8c050552
PTR_ce329e8:
    #data loc_8c05064e
PTR_ce329ec:
    #data PTR_ce3341c
PTR_ce329f0:
    #data PTR_ce33434

;=============================================

LAB_ce329f4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32b30,pc),r3
    mov r4,r14
    jsr @r3
    mov r5,r13
    mov.w @(DAT_ce32b22,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32a64
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x20,r3
    mov.b @(0x6,r14),r0
    mov 0x12,r2
    mov 0x00,r7
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32b24,pc),r0
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    add 0x55,r0
    mov.b r2,@(r0,r13)
    mova @(DAT_ce32b34,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32b26,pc),r0
    fmov.s fr3,@r15
    mov.w @(r0,r14),r3
    mov 0x34,r0
    fmov.s @r15,fr2
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce32b38,pc),r0
    tst r3,r3
    fadd fr3,fr2
    fmov.s fr2,@r15
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce32b28,pc),r0
    mov 0x02,r6
    mov.l @(PTR_ce32b3c,pc),r3
    mov.b @(r0,r14),r5
    extu.b r5,r5
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce32b40,pc),r3
    mov 0x00,r5
    mov.w @(DAT_ce32b2a,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4

LAB_ce32a64:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32a6e:
    mov.b @(0x5,r5),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32ac8
    mov.w @(DAT_ce32b24,pc),r0
    mov.l @(r0,r5),r0
    mov.b @(0x1,r0),r0
    extu.b r0,r0
    cmp/eq 0x38,r0
    bf LAB_ce32ac8
    mov.w @(DAT_ce32b2c,pc),r0
    mov.b @(r0,r5),r0
    extu.b r0,r0
    cmp/eq 0x12,r0
    bf LAB_ce32ac8
    mova @(DAT_ce32b44,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r5),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32acc
    mov.b @(0x6,r4),r0
    mov 0x46,r3
    mov 0x13,r2
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x00,r6
    mov.w @(DAT_ce32b24,pc),r0
    mov.l r4,@(r0,r5)
    add 0xED,r0
    mov.b r3,@(r0,r5)
    add 0x55,r0
    mov.b r2,@(r0,r5)
    add 0x01,r0
    mov 0x03,r3
    mov.b r3,@(r0,r5)
    mov 0x00,r0
    mov.b r0,@(0x7,r5)
    mov 0x0A,r3
    mov.b r0,@(0x6,r5)
    mov.w @(DAT_ce32b2e,pc),r0
    mov.b r3,@(r0,r5)
    mov.l @(PTR_ce32b48,pc),r3
    jmp @r3
    mov 0x12,r5

LAB_ce32ac8:
    bra FUN_ce32f88
    nop

LAB_ce32acc:
    rts
    nop

;=============================================

FUN_ce32ad0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32b30,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32ae8
    mov.l @r15,r4
    add 0x04,r15
    bra FUN_ce32f88
    lds.l @r15+,PR

LAB_ce32ae8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32af0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32b30,pc),r3
    jsr @r3
    mov r5,r13
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32b50
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32b4c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b22:
    #data 0x014b
DAT_ce32b24:
    #data 0x01b4
DAT_ce32b26:
    #data 0x0130
DAT_ce32b28:
    #data 0x01d2
DAT_ce32b2a:
    #data 0x01c8
DAT_ce32b2c:
    #data 0x01f6
DAT_ce32b2e:
    #data 0x01a0
    #align4

PTR_ce32b30:
    #data loc_8c034dee
DAT_ce32b34:
    #data 0x42b40000
DAT_ce32b38:
    #data 0x438e8000
PTR_ce32b3c:
    #data loc_8c0fd966
PTR_ce32b40:
    #data loc_8c0424a6
DAT_ce32b44:
    #data 0x43ab6db6
PTR_ce32b48:
    #data loc_8c0b41f4
PTR_ce32b4c:
    #data loc_8c051648

;=============================================

LAB_ce32b50:
    mov.w @(DAT_ce32c26,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32b78
    mov 0x00,r3
    mov r13,r5
    mov.b r3,@(r0,r14)
    add 0x69,r0
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov 0x20,r3
    mov r14,r4
    mov.b r3,@(r0,r13)
    add 0x55,r0
    mov 0x01,r2
    mov.b r2,@(r0,r13)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce32b80
    mov.l @r15+,r14

LAB_ce32b78:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32b80:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mova @(DAT_ce32c30,pc),r0
    mov r4,r14
    fmov.s @r0,fr4
    mov.w @(DAT_ce32c28,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32b98
    mova @(DAT_ce32c34,pc),r0
    fmov.s @r0,fr4

LAB_ce32b98:
    mov 0x34,r0
    mov.l @(PTR_ce32c3c,pc),r3
    fmov.s @(r0,r5),fr3
    mova @(DAT_ce32c38,pc),r0
    mov 0x00,r7
    fadd fr3,fr4
    mov 0x02,r6
    fmov.s fr4,@r15
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r5),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce32c2a,pc),r0
    mov.b @(r0,r14),r5
    extu.b r5,r5
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce32c40,pc),r3
    mov 0x00,r5
    mov.w @(DAT_ce32c2c,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32bd0:
    mov r4,r3
    mov.l @(PTR_ce32c44,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32be2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32c48,pc),r3
    jsr @r3
    mov r5,r13
    mov.w @(DAT_ce32c26,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32c1e
    mov 0x00,r3
    mov r13,r5
    mov.b r3,@(r0,r14)
    mov 0x20,r3
    mov.b @(0x6,r14),r0
    mov 0x12,r2
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32c2e,pc),r0
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    add 0x55,r0
    mov.b r2,@(r0,r13)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce32b80
    mov.l @r15+,r14

LAB_ce32c1e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c26:
    #data 0x014b
DAT_ce32c28:
    #data 0x0130
DAT_ce32c2a:
    #data 0x01d2
DAT_ce32c2c:
    #data 0x01c8
DAT_ce32c2e:
    #data 0x01b4
    #align4

DAT_ce32c30:
    #data 0xc2b40000
DAT_ce32c34:
    #data 0x42b40000
DAT_ce32c38:
    #data 0x438e8000
PTR_ce32c3c:
    #data loc_8c0fd966
PTR_ce32c40:
    #data loc_8c0424a6
PTR_ce32c44:
    #data PTR_ce33440
PTR_ce32c48:
    #data loc_8c034dee

;=============================================

LAB_ce32c4c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r5,r14
    mov.b @(0x5,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32ccc
    mov.w @(DAT_ce32d7c,pc),r0
    mov.l @(r0,r14),r0
    mov.b @(0x1,r0),r0
    extu.b r0,r0
    cmp/eq 0x38,r0
    bf LAB_ce32ccc
    mov.w @(DAT_ce32d7e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x12,r0
    bf LAB_ce32ccc
    mova @(DAT_ce32d88,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32ccc
    mov.b @(0x6,r4),r0
    mov 0x45,r3
    mov 0x09,r2
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32d7c,pc),r0
    mov.l r4,@(r0,r14)
    add 0xED,r0
    mov.b r3,@(r0,r14)
    add 0x55,r0
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov 0x0A,r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32d80,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32d8c,pc),r3
    jsr @r3
    mov 0x49,r5
    mov 0x34,r0
    mov.w @(DAT_ce32d82,pc),r7
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce32d90,pc),r0
    mov.l @(PTR_ce32d94,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    mov 0x01,r6
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32ccc:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32cd4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32d98,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32cee
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32d9c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32cee:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32cf6:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce32d3a
    mov r5,r13
    mov.l @(PTR_ce32d98,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32d84,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32d62
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x21,r3
    mov.b @(0x6,r14),r0
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32d7c,pc),r0
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    add 0x55,r0
    mov.b r2,@(r0,r13)
    mov r2,r3
    mov.w @(DAT_ce32d86,pc),r0
    mov.w @(r0,r13),r2
    xor r3,r2
    bra LAB_ce32d62
    mov.w r2,@(r0,r13)

LAB_ce32d3a:
    mov.l @(PTR_ce32d98,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32d62
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra FUN_ce32f88
    mov.l @r15+,r14

LAB_ce32d62:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32d6a:
    mov r4,r3
    mov.l @(PTR_ce32da0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d7c:
    #data 0x01b4
DAT_ce32d7e:
    #data 0x01f6
DAT_ce32d80:
    #data 0x01a0
DAT_ce32d82:
    #data 0x00f9
DAT_ce32d84:
    #data 0x014b
DAT_ce32d86:
    #data 0x0130
    #align4

DAT_ce32d88:
    #data 0x43cdb6db
PTR_ce32d8c:
    #data loc_8c04223a
DAT_ce32d90:
    #data 0x42092492
PTR_ce32d94:
    #data loc_8c10235c
PTR_ce32d98:
    #data loc_8c034dee
PTR_ce32d9c:
    #data loc_8c051648
PTR_ce32da0:
    #data PTR_ce3344c

;=============================================

LAB_ce32da4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32ed4,pc),r3
    jsr @r3
    mov r5,r13
    mov.w @(DAT_ce32eca,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32dda
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x03,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32ed8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32ecc,pc),r0
    mov.b r4,@(r0,r13)
    add 0xFE,r0
    mov.b r4,@(r0,r13)
    mov r13,r4
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32dda:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32de2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(0x1e,r14),r0
    cmp/pl r0
    bf/s LAB_ce32e06
    mov 0x00,r13
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32e06
    mov r13,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov.w r0,@(0x1c,r14)

LAB_ce32e06:
    mov.l @(PTR_ce32edc,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce32e1c
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce32e1c
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32e1c:
    mov.l @(PTR_ce32ee0,pc),r3
    mov.w @(DAT_ce32ece,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    tst r0,r0
    bt/s LAB_ce32e30
    mov r14,r4
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)

LAB_ce32e30:
    mov.l @(PTR_ce32ed4,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce32ed0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32e98
    mov.l @(PTR_ce32ee4,pc),r3
    mov 0xFF,r5
    mov.b r13,@(r0,r14)
    add 0x7D,r0
    jsr @r3
    mov.l @(r0,r14),r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce32e98
    mov.b @(0x6,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce32ee8,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32ed2,pc),r0
    mov 0x23,r2
    mov.l @(PTR_ce32eec,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x04,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32ef0,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce32eaa
    nop

LAB_ce32e98:
    mov.w @(DAT_ce32eca,pc),r0
    mov.b @(r0,r14),r4
    tst r4,r4
    bt LAB_ce32efc
    add 0xFC,r4
    exts.b r4,r4
    tst r4,r4
    bf/s LAB_ce32eb8
    mov.b r13,@(r0,r14)

LAB_ce32eaa:
    lds.l @r15+,PR
    mov.l @(PTR_ce32ef4,pc),r2
    mov r14,r4
    mov 0x00,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32eb8:
    lds.l @r15+,PR
    mov.l @(PTR_ce32ef8,pc),r2
    mov r14,r4
    mov 0x01,r7
    mov.l @r15+,r13
    mov 0x04,r6
    mov 0x00,r5
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32eca:
    #data 0x0141
DAT_ce32ecc:
    #data 0x022a
DAT_ce32ece:
    #data 0x01c8
DAT_ce32ed0:
    #data 0x014b
DAT_ce32ed2:
    #data 0x01a1
    #align4

PTR_ce32ed4:
    #data loc_8c034dee
PTR_ce32ed8:
    #data loc_8c0ee570
PTR_ce32edc:
    #data loc_8c050682
PTR_ce32ee0:
    #data loc_8c050610
PTR_ce32ee4:
    #data loc_8c05923c
PTR_ce32ee8:
    #data loc_8c02fec4
PTR_ce32eec:
    #data loc_8c2896b0
PTR_ce32ef0:
    #data loc_8c034e8c
PTR_ce32ef4:
    #data loc_8c035162
PTR_ce32ef8:
    #data loc_8c03544c

;=============================================

LAB_ce32efc:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32f04:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33008,pc),r3
    mov r4,r14
    jsr @r3
    mov r5,r13
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32f22
    bsr FUN_ce32f88
    mov r14,r4
    bra LAB_ce32f7e
    nop

LAB_ce32f22:
    mov.w @(DAT_ce32ff8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32f3e
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x74,r0
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov 0x23,r3
    mov.b r3,@(r0,r13)
    add 0x55,r0
    mov 0x0A,r2
    mov.b r2,@(r0,r13)

LAB_ce32f3e:
    mov.w @(DAT_ce32ffa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32f7e
    mov.b r4,@(r0,r14)
    mova @(DAT_ce3300c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32ffc,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32f58
    mova @(DAT_ce33010,pc),r0
    fmov.s @r0,fr4

LAB_ce32f58:
    mov 0x34,r0
    mov.l @(PTR_ce33018,pc),r3
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce33014,pc),r0
    mov 0x00,r7
    fadd fr3,fr4
    mov 0x02,r6
    fmov.s fr4,@r15
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce32ffe,pc),r0
    mov.b @(r0,r14),r5
    extu.b r5,r5
    jsr @r3
    mov r15,r4

LAB_ce32f7e:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32f88:
    mov.w @(DAT_ce33000,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32f98
    mov.l @(PTR_ce3301c,pc),r3
    jmp @r3
    nop

LAB_ce32f98:
    mov.l @(PTR_ce33020,pc),r2
    jmp @r2
    nop

LAB_ce32f9e:
    mov.w @(DAT_ce33002,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33024,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce32fac:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33004,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce32fc8
    cmp/eq 0x01,r0
    bt LAB_ce32fc8
    cmp/eq 0x02,r0
    bf LAB_ce32fcc

LAB_ce32fc8:
    mov.w @(DAT_ce33006,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce32fcc:
    mov.l @(PTR_ce33028,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce32fd2:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33004,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce32fee
    cmp/eq 0x01,r0
    bt LAB_ce32fee
    cmp/eq 0x02,r0
    bf LAB_ce32ff2

LAB_ce32fee:
    mov.w @(DAT_ce33006,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce32ff2:
    mov.l @(PTR_ce33028,pc),r2
    jmp @r2
    mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ff8:
    #data 0x0140
DAT_ce32ffa:
    #data 0x0141
DAT_ce32ffc:
    #data 0x0130
DAT_ce32ffe:
    #data 0x01d2
DAT_ce33000:
    #data 0x01f9
DAT_ce33002:
    #data 0x01c8
DAT_ce33004:
    #data 0x04c9
DAT_ce33006:
    #data 0x01e9
    #align4

PTR_ce33008:
    #data loc_8c034dee
DAT_ce3300c:
    #data 0xc2aa0000
DAT_ce33010:
    #data 0x42aa0000
DAT_ce33014:
    #data 0x43700000
PTR_ce33018:
    #data loc_8c0fd966
PTR_ce3301c:
    #data loc_8c05176e
PTR_ce33020:
    #data loc_8c051648
PTR_ce33024:
    #data loc_8c04cc1c
PTR_ce33028:
    #data loc_8c0530d8

;=============================================

LAB_ce3302c:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33112,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3304a
    mov 0x01,r5
    cmp/eq 0x01,r0
    bt LAB_ce33050
    cmp/eq 0x02,r0
    bt LAB_ce33058
    bra LAB_ce33062
    nop

LAB_ce3304a:
    mov.w @(DAT_ce33114,pc),r0
    bra LAB_ce3305e
    mov.b r5,@(r0,r4)

LAB_ce33050:
    mov.w @(DAT_ce33114,pc),r0
    mov 0x02,r2
    bra LAB_ce3305e
    mov.b r2,@(r0,r4)

LAB_ce33058:
    mov.w @(DAT_ce33114,pc),r0
    mov 0x0C,r3
    mov.b r3,@(r0,r4)

LAB_ce3305e:
    mov.w @(DAT_ce33116,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33062:
    mov.l @(PTR_ce3311c,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce33068:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33112,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33086
    mov 0x01,r5
    cmp/eq 0x01,r0
    bt LAB_ce3308c
    cmp/eq 0x02,r0
    bt LAB_ce33094
    bra LAB_ce3309e
    nop

LAB_ce33086:
    mov.w @(DAT_ce33114,pc),r0
    bra LAB_ce3309a
    mov.b r5,@(r0,r4)

LAB_ce3308c:
    mov.w @(DAT_ce33114,pc),r0
    mov 0x02,r2
    bra LAB_ce3309a
    mov.b r2,@(r0,r4)

LAB_ce33094:
    mov.w @(DAT_ce33114,pc),r0
    mov 0x0C,r3
    mov.b r3,@(r0,r4)

LAB_ce3309a:
    mov.w @(DAT_ce33116,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3309e:
    mov.l @(PTR_ce3311c,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce330a4:
    mov.w @(DAT_ce33118,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce330d4
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce33120,pc),r8
    mov.l @(PTR_ce33124,pc),r3
    add 0xFF,r0
    shll2 r0
    jsr @r3
    add r0,r8
    lds.l @r15+,PR
    and 0x03,r0
    mov.l @(PTR_ce33128,pc),r3
    mov.b @(r0,r8),r6
    mov 0x00,r5
    mov.l @r15+,r8
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce330d4:
    lds.l @r15+,PR
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

LAB_ce330dc:
    mov.w @(DAT_ce3311a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.l r4,@-r15
    mov.b @(r0,r14),r14
    exts.b r14,r3
    cmp/pz r3
    bt LAB_ce330f2
    mov 0x00,r14

LAB_ce330f2:
    mov.l @(PTR_ce3312c,pc),r8
    exts.b r14,r0
    mov.l @(PTR_ce33124,pc),r3
    shll2 r0
    jsr @r3
    add r0,r8
    and 0x03,r0
    mov.l @r15,r4
    mov.b @(r0,r8),r6
    mov 0x00,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33128,pc),r3
    mov.l @r15+,r8
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33112:
    #data 0x04c9
DAT_ce33114:
    #data 0x01e9
DAT_ce33116:
    #data 0x01a3
DAT_ce33118:
    #data 0x0141
DAT_ce3311a:
    #data 0x01d3
    #align4

PTR_ce3311c:
    #data loc_8c0530d8
PTR_ce33120:
    #data DAT_ce33458
PTR_ce33124:
    #data loc_8c03319e
PTR_ce33128:
    #data loc_8c034e8c
PTR_ce3312c:
    #data DAT_ce33464

;=============================================

LAB_ce33130:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33164,pc),r0
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.l r4,@-r15
    mov.b @(r0,r14),r14
    tst r14,r14
    bt LAB_ce33144
    mov 0x01,r14

LAB_ce33144:
    mov.l @(PTR_ce33168,pc),r8
    exts.b r14,r0
    mov.l @(PTR_ce3316c,pc),r3
    shll2 r0
    jsr @r3
    add r0,r8
    and 0x03,r0
    mov.l @r15,r4
    mov.b @(r0,r8),r6
    mov 0x00,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33170,pc),r3
    mov.l @r15+,r8
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33164:
    #data 0x0141
    #align4

PTR_ce33168:
    #data DAT_ce3346c
PTR_ce3316c:
    #data loc_8c03319e
PTR_ce33170:
    #data loc_8c034e8c

DAT_ce33174:
    #data 0x0201
    #data 0x0201
    #data 0x02ff
    #data 0x02ff
    #data 0xffff
    #data 0xffff
    #data 0x0201
    #data 0x0201
    #data 0x02ff
    #data 0x02ff
    #data 0xffff
    #data 0xffff
DAT_ce3318c:
    #data 0x0201
    #data 0x0200
    #data 0x02ff
    #data 0x0201
    #data 0xffff
    #data 0x02ff
    #data 0x0201
    #data 0x0201
    #data 0x02ff
    #data 0x02ff
    #data 0xffff
    #data 0xffff
DAT_ce331a4:
    #data 0x0201
    #data 0x0200
    #data 0x02ff
    #data 0x0201
    #data 0xffff
    #data 0x02ff
    #data 0x0201
    #data 0x0201
    #data 0x02ff
    #data 0x02ff
    #data 0xffff
    #data 0xffff
DAT_ce331bc:
    #data 0x0003
    #data 0x9100
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce331cc:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce331dc:
    #data 0x0003
    #data 0x2000
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce331ec:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce331fc:
    #data 0x0003
    #data 0x9100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce3320c:
    #data 0x0003
    #data 0x1000
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce3321c:
    #data 0x0003
    #data 0x9000
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0140
DAT_ce3322c:
    #data 0x0003
    #data 0x1000
    #data 0x000c
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
    #align4

PTR_ce3323c:
    #data LAB_ce30506
PTR_ce33240:
    #data LAB_ce3001c
PTR_ce33244:
    #data LAB_ce30720
PTR_ce33248:
    #data LAB_ce30874
PTR_ce3324c:
    #data LAB_ce30a4a
PTR_ce33250:
    #data LAB_ce30c78
PTR_ce33254:
    #data LAB_ce30e02
PTR_ce33258:
    #data LAB_ce30f7c
PTR_ce3325c:
    #data LAB_ce310e6
PTR_ce33260:
    #data LAB_ce326d0
PTR_ce33264:
    #data LAB_ce32794
PTR_ce33268:
    #data LAB_ce329a0
PTR_ce3326c:
    #data LAB_ce32f9e
PTR_ce33270:
    #data LAB_ce304a4
PTR_ce33274:
    #data LAB_ce32542
PTR_ce33278:
    #data LAB_ce30982
PTR_ce3327c:
    #data LAB_ce32fac
PTR_ce33280:
    #data LAB_ce32fd2
PTR_ce33284:
    #data LAB_ce3302c
PTR_ce33288:
    #data LAB_ce33068
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce3329c:
    #data LAB_ce330a4
PTR_ce332a0:
    #data LAB_ce330dc
PTR_ce332a4:
    #data LAB_ce33130
    #data 0x00000000
PTR_ce332ac:
    #data LAB_ce30518
PTR_ce332b0:
    #data LAB_ce306fc
PTR_ce332b4:
    #data LAB_ce3061c
PTR_ce332b8:
    #data LAB_ce30518
PTR_ce332bc:
    #data LAB_ce30aa8
PTR_ce332c0:
    #data LAB_ce30afc
PTR_ce332c4:
    #data LAB_ce30b58
PTR_ce332c8:
    #data LAB_ce30bf0
PTR_ce332cc:
    #data LAB_ce30c8a
PTR_ce332d0:
    #data LAB_ce30cf8
PTR_ce332d4:
    #data LAB_ce30d7a
PTR_ce332d8:
    #data LAB_ce30e2c
PTR_ce332dc:
    #data LAB_ce30e8a
PTR_ce332e0:
    #data FUN_ce30ed0
PTR_ce332e4:
    #data LAB_ce30ee0
PTR_ce332e8:
    #data LAB_ce30f04
PTR_ce332ec:
    #data LAB_ce31122
PTR_ce332f0:
    #data LAB_ce31378
PTR_ce332f4:
    #data LAB_ce3155e
PTR_ce332f8:
    #data LAB_ce31122
PTR_ce332fc:
    #data LAB_ce31378
PTR_ce33300:
    #data LAB_ce31122
PTR_ce33304:
    #data LAB_ce316f4
PTR_ce33308:
    #data LAB_ce31ff6
PTR_ce3330c:
    #data LAB_ce320a2
PTR_ce33310:
    #data LAB_ce31122
PTR_ce33314:
    #data LAB_ce31122
PTR_ce33318:
    #data LAB_ce31122
PTR_ce3331c:
    #data LAB_ce32146
PTR_ce33320:
    #data LAB_ce3242e
PTR_ce33324:
    #data LAB_ce31134
PTR_ce33328:
    #data LAB_ce311b6
PTR_ce3332c:
    #data LAB_ce3125c
PTR_ce33330:
    #data LAB_ce312ba
PTR_ce33334:
    #data LAB_ce313b4
PTR_ce33338:
    #data LAB_ce314e0
PTR_ce3333c:
    #data LAB_ce3152a
PTR_ce33340:
    #data LAB_ce31570
PTR_ce33344:
    #data LAB_ce31618
PTR_ce33348:
    #data FUN_ce31676
PTR_ce3334c:
    #data FUN_ce316d2
PTR_ce33350:
    #data LAB_ce3173c
PTR_ce33354:
    #data LAB_ce317ca
PTR_ce33358:
    #data LAB_ce3181e
PTR_ce3335c:
    #data LAB_ce318bc
PTR_ce33360:
    #data LAB_ce3190e
PTR_ce33364:
    #data LAB_ce319dc
PTR_ce33368:
    #data LAB_ce31a72
PTR_ce3336c:
    #data LAB_ce31b9a
PTR_ce33370:
    #data LAB_ce31ca8
PTR_ce33374:
    #data LAB_ce31d00
PTR_ce33378:
    #data LAB_ce31dec
PTR_ce3337c:
    #data LAB_ce31e58
PTR_ce33380:
    #data LAB_ce31e78
PTR_ce33384:
    #data LAB_ce31eda
PTR_ce33388:
    #data LAB_ce32158
PTR_ce3338c:
    #data LAB_ce321fe
PTR_ce33390:
    #data LAB_ce32278
PTR_ce33394:
    #data LAB_ce32340
PTR_ce33398:
    #data LAB_ce323aa
PTR_ce3339c:
    #data FUN_ce316d2
DAT_ce333a0:
    #data 0xc1855555
DAT_ce333a4:
    #data 0x3f555555
DAT_ce333a8:
    #data 0x404db6db
DAT_ce333ac:
    #data 0xbe4db6db
    #data 0xc1855555
    #data 0x3f555555
    #data 0x40ab6db6
    #data 0xbe4db6db
DAT_ce333c0:
    #data 0xc192aaaa
DAT_ce333c4:
    #data 0x3ed55555
DAT_ce333c8:
    #data 0x40092492
DAT_ce333cc:
    #data 0xbe092492
    #data 0xc1baaaaa
    #data 0x3ed55555
    #data 0x40892492
    #data 0xbe4db6db
PTR_ce333e0:
    #data LAB_ce32464
PTR_ce333e4:
    #data LAB_ce324da
PTR_ce333e8:
    #data LAB_ce32590
PTR_ce333ec:
    #data LAB_ce3260c
PTR_ce333f0:
    #data LAB_ce3267a
DAT_ce333f4:
    #data 0x00040000
    #data 0x00050005
DAT_ce333fc:
    #data 0x00080000
    #data 0x00090009
DAT_ce33404:
    #data 0x00000008
    #data 0x00000007
    #data 0x00000009
    #data 0x00000009
DAT_ce33414:
    #data 0x00100000
    #data 0x00110011
PTR_ce3341c:
    #data LAB_ce329c0
PTR_ce33420:
    #data LAB_ce32cf6
PTR_ce33424:
    #data LAB_ce32d6a
PTR_ce33428:
    #data LAB_ce329c0
PTR_ce3342c:
    #data LAB_ce32af0
PTR_ce33430:
    #data LAB_ce32bd0
PTR_ce33434:
    #data LAB_ce329f4
PTR_ce33438:
    #data LAB_ce32a6e
PTR_ce3343c:
    #data FUN_ce32ad0
PTR_ce33440:
    #data LAB_ce32be2
PTR_ce33444:
    #data LAB_ce32c4c
PTR_ce33448:
    #data FUN_ce32cd4
PTR_ce3344c:
    #data LAB_ce32da4
PTR_ce33450:
    #data LAB_ce32de2
PTR_ce33454:
    #data LAB_ce32f04
DAT_ce33458:
    #data 0x0d
    #data 0x0d
    #data 0x0e
    #data 0x0f
    #data 0x10
    #data 0x10
    #data 0x11
    #data 0x12
    #data 0x13
    #data 0x13
    #data 0x14
    #data 0x15
DAT_ce33464:
    #data 0x16
    #data 0x16
    #data 0x17
    #data 0x18
    #data 0x19
    #data 0x19
    #data 0x1a
    #data 0x1b
DAT_ce3346c:
    #data 0x10
    #data 0x10
    #data 0x11
    #data 0x12
DAT_ce33470:
    #data 0x13
    #data 0x13
    #data 0x14
    #data 0x15
