;╔══════════════════════════════╗
;║ S_PL24 : Cammy White Program ║
;╚══════════════════════════════╝
    
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
#symbol loc_8c0457e0 0x8C0457E0
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
#symbol loc_8c0514b8 0x8C0514B8
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c051854 0x8C051854
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c0522e0 0x8C0522E0
#symbol loc_8c0523d8 0x8C0523D8
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
#symbol loc_8c0e1590 0x8C0E1590
#symbol loc_8c103660 0x8C103660
#symbol loc_8c1294c8 0x8C1294C8
#symbol loc_8c129620 0x8C129620
#symbol loc_8c2659dc 0x8C2659DC
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c26a524 0x8C26A524
#symbol loc_8c26a5c0 0x8C26A5C0
#symbol loc_8c289608 0x8C289608
#symbol loc_8c289636 0x8C289636
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300da,pc),r0
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
    sts.l PR,@-r15
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    mov.l @(PTR_ce300e8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    mov.l @(PTR_ce300ec,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce30364
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce303b4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce30424
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce3029a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce300f8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce30140
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce30186
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce301e2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce302e0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce30254
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce3049c
    mov r14,r4
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce304dc
    mov r14,r4
    tst r0,r0
    bf LAB_ce300d4
    mov.l @(PTR_ce300f0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300f4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300d4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300da:
    #data 0x0428
    #align4

PTR_ce300dc:
    #data PTR_ce356b8
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
    sts.l PR,@-r15
    mov.l @(PTR_ce30210,pc),r5
    mov.w @(DAT_ce30200,pc),r6
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30116
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30116:
    mov.w @(DAT_ce30200,pc),r5
    mov.l @(PTR_ce30218,pc),r3
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
    mov.w @(DAT_ce30202,pc),r0
    mov.l @(PTR_ce3021c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30140:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30220,pc),r5
    mov.w @(DAT_ce30204,pc),r6
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3015e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3015e:
    mov.w @(DAT_ce30204,pc),r5
    mov.l @(PTR_ce30218,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30202,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3021c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30186:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30224,pc),r5
    mov.w @(DAT_ce30206,pc),r6
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301ac
    mov.w @(DAT_ce30208,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce301ba
    mov.w @(DAT_ce3020a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce301b4

LAB_ce301ac:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301b4:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce301ba:
    mov.w @(DAT_ce30206,pc),r5
    mov.l @(PTR_ce30218,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x09,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30202,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3021c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301e2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30228,pc),r5
    mov.w @(DAT_ce3020c,pc),r6
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3022c
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30200:
    #data 0x036c
DAT_ce30202:
    #data 0x01e9
DAT_ce30204:
    #data 0x0374
DAT_ce30206:
    #data 0x037c
DAT_ce30208:
    #data 0x01fc
DAT_ce3020a:
    #data 0x01d4
DAT_ce3020c:
    #data 0x0384
    #align4

PTR_ce30210:
    #data DAT_ce35614
PTR_ce30214:
    #data loc_8c054e58
PTR_ce30218:
    #data loc_8c055c3a
PTR_ce3021c:
    #data loc_8c0530d8
PTR_ce30220:
    #data DAT_ce35624
PTR_ce30224:
    #data DAT_ce35634
PTR_ce30228:
    #data DAT_ce35644

;=============================================

LAB_ce3022c:
    mov.w @(DAT_ce3033c,pc),r5
    mov.l @(PTR_ce3034c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3033e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30350,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30254:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30354,pc),r5
    mov.w @(DAT_ce30340,pc),r6
    mov.l @(PTR_ce30358,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30272
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30272:
    mov.w @(DAT_ce30340,pc),r5
    mov.l @(PTR_ce3034c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3033e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30350,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3029a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3035c,pc),r5
    mov.w @(DAT_ce30342,pc),r6
    mov.l @(PTR_ce30358,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302b8
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302b8:
    mov.w @(DAT_ce30342,pc),r5
    mov.l @(PTR_ce3034c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3033e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30350,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302e0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30360,pc),r5
    mov.w @(DAT_ce30344,pc),r6
    mov.l @(PTR_ce30358,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30306
    mov.w @(DAT_ce30346,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30314
    mov.w @(DAT_ce30348,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3030e

LAB_ce30306:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3030e:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30314:
    mov.w @(DAT_ce30344,pc),r5
    mov.l @(PTR_ce3034c,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3033e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30350,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3033c:
    #data 0x0384
DAT_ce3033e:
    #data 0x01e9
DAT_ce30340:
    #data 0x038c
DAT_ce30342:
    #data 0x0394
DAT_ce30344:
    #data 0x039c
DAT_ce30346:
    #data 0x01fc
DAT_ce30348:
    #data 0x01d4
    #align4

PTR_ce3034c:
    #data loc_8c055c3a
PTR_ce30350:
    #data loc_8c0530d8
PTR_ce30354:
    #data DAT_ce35654
PTR_ce30358:
    #data loc_8c054e58
PTR_ce3035c:
    #data DAT_ce35664
PTR_ce30360:
    #data DAT_ce35678

;=============================================

FUN_ce30364:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30484,pc),r5
    mov.w @(DAT_ce30474,pc),r6
    mov.l @(PTR_ce30488,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30384
    mov.w @(DAT_ce30476,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3038c

LAB_ce30384:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3038c:
    mov.w @(DAT_ce30474,pc),r5
    mov.l @(PTR_ce3048c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30478,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30490,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303b4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30494,pc),r5
    mov.w @(DAT_ce3047a,pc),r6
    mov.l @(PTR_ce30488,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303ee
    mov.w @(DAT_ce30476,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce303ee
    mov.w @(DAT_ce3047c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce303fc
    mov.w @(DAT_ce3047e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce303fc
    mov.w @(DAT_ce30480,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce303f6

LAB_ce303ee:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303f6:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce303fc:
    mov.w @(DAT_ce3047a,pc),r5
    mov.l @(PTR_ce3048c,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0B,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30478,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30490,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30424:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30498,pc),r5
    mov.w @(DAT_ce30482,pc),r6
    mov.l @(PTR_ce30488,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30444
    mov.w @(DAT_ce30476,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3044c

LAB_ce30444:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3044c:
    mov.w @(DAT_ce30482,pc),r5
    mov.l @(PTR_ce3048c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0E,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30478,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30490,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30474:
    #data 0x03a4
DAT_ce30476:
    #data 0x040c
DAT_ce30478:
    #data 0x01e9
DAT_ce3047a:
    #data 0x03ac
DAT_ce3047c:
    #data 0x01f9
DAT_ce3047e:
    #data 0x01fc
DAT_ce30480:
    #data 0x01d4
DAT_ce30482:
    #data 0x03b4
    #align4

PTR_ce30484:
    #data DAT_ce35688
PTR_ce30488:
    #data loc_8c054e58
PTR_ce3048c:
    #data loc_8c055c3a
PTR_ce30490:
    #data loc_8c0530d8
PTR_ce30494:
    #data DAT_ce35698
PTR_ce30498:
    #data DAT_ce356a8

;=============================================

FUN_ce3049c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce305b8,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce304b4
    mov.w @(DAT_ce305ae,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304bc

LAB_ce304b4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304bc:
    mov.w @(DAT_ce305b0,pc),r0
    mov 0x0D,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce305bc,pc),r3
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

FUN_ce304dc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305c0,pc),r3
    jsr @r3
    mov 0x05,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce304f6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304f6:
    mov.w @(DAT_ce305b0,pc),r0
    mov 0x05,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce305bc,pc),r3
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

LAB_ce30516:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce30578
    mov r4,r14
    tst r0,r0
    bf LAB_ce30532
    bsr FUN_ce30542
    mov r14,r4
    tst r0,r0
    bf LAB_ce30532
    bsr FUN_ce305d0
    mov r14,r4
    tst r0,r0
    bt LAB_ce3053a

LAB_ce30532:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce3053a:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30542:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305c4,pc),r5
    mov.w @(DAT_ce305b2,pc),r6
    mov.l @(PTR_ce305c8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30562
    mov.w @(DAT_ce305ae,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3056a

LAB_ce30562:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3056a:
    mov.w @(DAT_ce305b4,pc),r0
    mov 0x07,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30578:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305cc,pc),r5
    mov.w @(DAT_ce305b6,pc),r6
    mov.l @(PTR_ce305c8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30598
    mov.w @(DAT_ce305ae,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce305a0

LAB_ce30598:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce305a0:
    mov.w @(DAT_ce305b4,pc),r0
    mov 0x0B,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305ae:
    #data 0x040c
DAT_ce305b0:
    #data 0x01e9
DAT_ce305b2:
    #data 0x03a4
DAT_ce305b4:
    #data 0x0258
DAT_ce305b6:
    #data 0x03ac
    #align4

PTR_ce305b8:
    #data loc_8c054d1c
PTR_ce305bc:
    #data loc_8c0530d8
PTR_ce305c0:
    #data loc_8c054da0
PTR_ce305c4:
    #data DAT_ce35688
PTR_ce305c8:
    #data loc_8c054e58
PTR_ce305cc:
    #data DAT_ce35698

;=============================================

FUN_ce305d0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306d8,pc),r5
    mov.w @(DAT_ce306c4,pc),r6
    mov.l @(PTR_ce306dc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce305f0
    mov.w @(DAT_ce306c6,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce305f8

LAB_ce305f0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce305f8:
    mov.w @(DAT_ce306c8,pc),r0
    mov 0x0E,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30606:
    rts
    nop

LAB_ce3060a:
    mov.w @(DAT_ce306ca,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce306e0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3061e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce306e4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce306cc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3064c
    mov.w @(DAT_ce306ce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30644
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce308d8
    mov.l @r15+,r14

LAB_ce30644:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307f0
    mov.l @r15+,r14

LAB_ce3064c:
    mov.w @(DAT_ce306ce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3065e
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30744
    mov.l @r15+,r14

LAB_ce3065e:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30666
    mov.l @r15+,r14

LAB_ce30666:
    mov.w @(DAT_ce306d0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce306e8,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3068a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce306a8
    cmp/eq 0x02,r0
    bt LAB_ce306f4
    bra LAB_ce30712
    nop

LAB_ce3068a:
    mov.w @(DAT_ce306d2,pc),r0
    mov 0x03,r3
    mov 0x12,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov 0x14,r5
    mov.b r2,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306d4,pc),r0
    mov.l @(PTR_ce306ec,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306d6,pc),r0
    bra LAB_ce30712
    mov.b r13,@(r0,r14)

LAB_ce306a8:
    mov.w @(DAT_ce306d2,pc),r0
    mov 0x04,r2
    mov 0x13,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306d4,pc),r0
    mov.l @(PTR_ce306f0,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce3070e
    mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306c4:
    #data 0x03b4
DAT_ce306c6:
    #data 0x040c
DAT_ce306c8:
    #data 0x0258
DAT_ce306ca:
    #data 0x01ff
DAT_ce306cc:
    #data 0x01fe
DAT_ce306ce:
    #data 0x01f9
DAT_ce306d0:
    #data 0x01e8
DAT_ce306d2:
    #data 0x0158
DAT_ce306d4:
    #data 0x03f4
DAT_ce306d6:
    #data 0x01a7
    #align4

PTR_ce306d8:
    #data DAT_ce356a8
PTR_ce306dc:
    #data loc_8c054e58
PTR_ce306e0:
    #data PTR_ce35728
PTR_ce306e4:
    #data loc_8c052b4c
PTR_ce306e8:
    #data loc_8c04223a
PTR_ce306ec:
    #data DAT_ce355cc
PTR_ce306f0:
    #data DAT_ce355d0

;=============================================

LAB_ce306f4:
    mov.w @(DAT_ce30814,pc),r0
    mov 0x05,r1
    mov 0x14,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30816,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30820,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce3070e:
    mov.w @(DAT_ce30818,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30712:
    mov.w @(DAT_ce3081a,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce30824,pc),r3
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
    mov.w @(DAT_ce30814,pc),r0
    mov.l @(PTR_ce30828,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30744:
    mov.w @(DAT_ce3081c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3082c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30768
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30784
    cmp/eq 0x02,r0
    bt LAB_ce307a0
    bra LAB_ce307be
    nop

LAB_ce30768:
    mov.w @(DAT_ce30814,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30816,pc),r0
    mov.l @(PTR_ce30830,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30818,pc),r0
    bra LAB_ce307be
    mov.b r13,@(r0,r14)

LAB_ce30784:
    mov.w @(DAT_ce30814,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30816,pc),r0
    mov.l @(PTR_ce30834,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce307ba
    mov 0x01,r2

LAB_ce307a0:
    mov.w @(DAT_ce30814,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30816,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30820,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce307ba:
    mov.w @(DAT_ce30818,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce307be:
    mov.w @(DAT_ce3081a,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30824,pc),r3
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
    mov.w @(DAT_ce30814,pc),r0
    mov.l @(PTR_ce30828,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce307f0:
    mov.w @(DAT_ce3081c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3082c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30838
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30854
    cmp/eq 0x02,r0
    bt LAB_ce30870
    bra LAB_ce308a6
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30814:
    #data 0x0158
DAT_ce30816:
    #data 0x03f4
DAT_ce30818:
    #data 0x01a7
DAT_ce3081a:
    #data 0x01ac
DAT_ce3081c:
    #data 0x01e8
    #align4

PTR_ce30820:
    #data DAT_ce355d4
PTR_ce30824:
    #data loc_8c2896b0
PTR_ce30828:
    #data loc_8c034e8c
PTR_ce3082c:
    #data loc_8c04223a
PTR_ce30830:
    #data DAT_ce355cc
PTR_ce30834:
    #data DAT_ce355d0

;=============================================

LAB_ce30838:
    mov.w @(DAT_ce30934,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30936,pc),r0
    mov.l @(PTR_ce30944,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30938,pc),r0
    bra LAB_ce308a6
    mov.b r13,@(r0,r14)

LAB_ce30854:
    mov.w @(DAT_ce30934,pc),r0
    mov 0x04,r2
    mov 0x16,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30936,pc),r0
    mov.l @(PTR_ce30948,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce308a2
    mov 0x01,r2

LAB_ce30870:
    mov.w @(DAT_ce3093a,pc),r0
    mov.w @(DAT_ce3093c,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt/s LAB_ce3088a
    mov 0x05,r4
    mov.w @(DAT_ce30934,pc),r0
    mov 0x17,r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30894
    mov.b r2,@(r0,r14)

LAB_ce3088a:
    mov.w @(DAT_ce30934,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)

LAB_ce30894:
    mov 0x16,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30936,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce3094c,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce308a2:
    mov.w @(DAT_ce30938,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce308a6:
    mov.w @(DAT_ce3093e,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce30950,pc),r3
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
    mov.w @(DAT_ce30934,pc),r0
    mov.l @(PTR_ce30954,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce308d8:
    mov.w @(DAT_ce30940,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30958,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308fc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30918
    cmp/eq 0x02,r0
    bt LAB_ce3095c
    bra LAB_ce3097a
    nop

LAB_ce308fc:
    mov.w @(DAT_ce30934,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30936,pc),r0
    mov.l @(PTR_ce30944,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30938,pc),r0
    bra LAB_ce3097a
    mov.b r13,@(r0,r14)

LAB_ce30918:
    mov.w @(DAT_ce30934,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30936,pc),r0
    mov.l @(PTR_ce30948,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30976
    mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30934:
    #data 0x0158
DAT_ce30936:
    #data 0x03f4
DAT_ce30938:
    #data 0x01a7
DAT_ce3093a:
    #data 0x01fa
DAT_ce3093c:
    #data 0x0400
DAT_ce3093e:
    #data 0x01ac
DAT_ce30940:
    #data 0x01e8
    #align4

PTR_ce30944:
    #data DAT_ce355d8
PTR_ce30948:
    #data DAT_ce355dc
PTR_ce3094c:
    #data DAT_ce355e0
PTR_ce30950:
    #data loc_8c2896b0
PTR_ce30954:
    #data loc_8c034e8c
PTR_ce30958:
    #data loc_8c04223a

;=============================================

LAB_ce3095c:
    mov.w @(DAT_ce30a46,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a48,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30a5c,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30976:
    mov.w @(DAT_ce30a4a,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce3097a:
    mov.w @(DAT_ce30a4c,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30a60,pc),r3
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
    mov.w @(DAT_ce30a46,pc),r0
    mov.l @(PTR_ce30a64,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce309ac:
    mov.w @(DAT_ce30a4e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce309bc
    mov.w @(DAT_ce30a50,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce309cc

LAB_ce309bc:
    mov.w @(DAT_ce30a4e,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce309d0
    mov.w @(DAT_ce30a50,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce309d0

LAB_ce309cc:
    bra LAB_ce309d4
    nop

LAB_ce309d0:
    rts
    nop

LAB_ce309d4:
    mov.w @(DAT_ce30a4e,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce309e2
    bra LAB_ce30b32
    nop

LAB_ce309e2:
    bra LAB_ce309e6
    nop

LAB_ce309e6:
    mov.w @(DAT_ce30a52,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30a68,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a0a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a74
    cmp/eq 0x02,r0
    bt LAB_ce30ab0
    bra LAB_ce30aee
    nop

LAB_ce30a0a:
    mov.w @(DAT_ce30a54,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce30a18
    mov.w @(DAT_ce30a46,pc),r0
    bra LAB_ce30a1e
    mov.b r13,@(r0,r14)

LAB_ce30a18:
    mov.w @(DAT_ce30a46,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r14)

LAB_ce30a1e:
    mov.w @(DAT_ce30a56,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a58,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a3a
    mov.w @(DAT_ce30a48,pc),r0
    mov.l @(PTR_ce30a6c,pc),r3
    bra LAB_ce30a40
    mov.l r3,@(r0,r14)

LAB_ce30a3a:
    mov.w @(DAT_ce30a48,pc),r0
    mov.l @(PTR_ce30a70,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a40:
    mov.w @(DAT_ce30a4a,pc),r0
    bra LAB_ce30aee
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a46:
    #data 0x0158
DAT_ce30a48:
    #data 0x03f4
DAT_ce30a4a:
    #data 0x01a7
DAT_ce30a4c:
    #data 0x01ac
DAT_ce30a4e:
    #data 0x01fe
DAT_ce30a50:
    #data 0x01d6
DAT_ce30a52:
    #data 0x01e8
DAT_ce30a54:
    #data 0x01d3
DAT_ce30a56:
    #data 0x01a1
DAT_ce30a58:
    #data 0x01fc
    #align4

PTR_ce30a5c:
    #data DAT_ce355e0
PTR_ce30a60:
    #data loc_8c2896b0
PTR_ce30a64:
    #data loc_8c034e8c
PTR_ce30a68:
    #data loc_8c04223a
PTR_ce30a6c:
    #data DAT_ce355e4
PTR_ce30a70:
    #data DAT_ce355fc

;=============================================

LAB_ce30a74:
    mov.w @(DAT_ce30b64,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce30a84
    mov.w @(DAT_ce30b66,pc),r0
    mov 0x01,r2
    bra LAB_ce30a8a
    mov.b r2,@(r0,r14)

LAB_ce30a84:
    mov.w @(DAT_ce30b66,pc),r0
    mov 0x04,r1
    mov.b r1,@(r0,r14)

LAB_ce30a8a:
    mov.w @(DAT_ce30b68,pc),r0
    mov 0x0D,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b6a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30aa6
    mov.w @(DAT_ce30b6c,pc),r0
    mov.l @(PTR_ce30b78,pc),r3
    bra LAB_ce30aac
    mov.l r3,@(r0,r14)

LAB_ce30aa6:
    mov.w @(DAT_ce30b6c,pc),r0
    mov.l @(PTR_ce30b7c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30aac:
    bra LAB_ce30aea
    mov 0x01,r3

LAB_ce30ab0:
    mov.w @(DAT_ce30b64,pc),r0
    mov.b @(r0,r14),r1
    cmp/pz r1
    bt LAB_ce30ac0
    mov.w @(DAT_ce30b66,pc),r0
    mov 0x02,r2
    bra LAB_ce30ac6
    mov.b r2,@(r0,r14)

LAB_ce30ac0:
    mov.w @(DAT_ce30b66,pc),r0
    mov 0x05,r1
    mov.b r1,@(r0,r14)

LAB_ce30ac6:
    mov.w @(DAT_ce30b68,pc),r0
    mov 0x0E,r3
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b6a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30ae2
    mov.w @(DAT_ce30b6c,pc),r0
    mov.l @(PTR_ce30b80,pc),r3
    bra LAB_ce30ae8
    mov.l r3,@(r0,r14)

LAB_ce30ae2:
    mov.w @(DAT_ce30b6c,pc),r0
    mov.l @(PTR_ce30b84,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30ae8:
    mov 0x02,r3

LAB_ce30aea:
    mov.w @(DAT_ce30b6e,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30aee:
    mov.w @(DAT_ce30b70,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30b88,pc),r3
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
    mov.w @(DAT_ce30b66,pc),r0
    mov.l @(PTR_ce30b8c,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30b72,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30b28
    mov.w @(DAT_ce30b72,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30b28:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30b32:
    mov.w @(DAT_ce30b74,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b90,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30b56
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30bc2
    cmp/eq 0x02,r0
    bt LAB_ce30bfe
    bra LAB_ce30c3c
    nop

LAB_ce30b56:
    mov.w @(DAT_ce30b64,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce30b94
    mov.w @(DAT_ce30b66,pc),r0
    bra LAB_ce30b9a
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b64:
    #data 0x01d3
DAT_ce30b66:
    #data 0x0158
DAT_ce30b68:
    #data 0x01a1
DAT_ce30b6a:
    #data 0x01fc
DAT_ce30b6c:
    #data 0x03f4
DAT_ce30b6e:
    #data 0x01a7
DAT_ce30b70:
    #data 0x01ac
DAT_ce30b72:
    #data 0x01d6
DAT_ce30b74:
    #data 0x01e8
    #align4

PTR_ce30b78:
    #data DAT_ce355e8
PTR_ce30b7c:
    #data DAT_ce35600
PTR_ce30b80:
    #data DAT_ce355ec
PTR_ce30b84:
    #data DAT_ce35604
PTR_ce30b88:
    #data loc_8c2896b0
PTR_ce30b8c:
    #data loc_8c034e8c
PTR_ce30b90:
    #data loc_8c04223a

;=============================================

LAB_ce30b94:
    mov.w @(DAT_ce30c94,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r14)

LAB_ce30b9a:
    mov.w @(DAT_ce30c96,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c98,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30bb6
    mov.w @(DAT_ce30c9a,pc),r0
    mov.l @(PTR_ce30ca8,pc),r3
    bra LAB_ce30bbc
    mov.l r3,@(r0,r14)

LAB_ce30bb6:
    mov.w @(DAT_ce30c9a,pc),r0
    mov.l @(PTR_ce30cac,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30bbc:
    mov.w @(DAT_ce30c9c,pc),r0
    bra LAB_ce30c3c
    mov.b r13,@(r0,r14)

LAB_ce30bc2:
    mov.w @(DAT_ce30c9e,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce30bd2
    mov.w @(DAT_ce30c94,pc),r0
    mov 0x01,r2
    bra LAB_ce30bd8
    mov.b r2,@(r0,r14)

LAB_ce30bd2:
    mov.w @(DAT_ce30c94,pc),r0
    mov 0x04,r1
    mov.b r1,@(r0,r14)

LAB_ce30bd8:
    mov.w @(DAT_ce30c96,pc),r0
    mov 0x10,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c98,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30bf4
    mov.w @(DAT_ce30c9a,pc),r0
    mov.l @(PTR_ce30cb0,pc),r3
    bra LAB_ce30bfa
    mov.l r3,@(r0,r14)

LAB_ce30bf4:
    mov.w @(DAT_ce30c9a,pc),r0
    mov.l @(PTR_ce30cb4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30bfa:
    bra LAB_ce30c38
    mov 0x01,r3

LAB_ce30bfe:
    mov.w @(DAT_ce30c9e,pc),r0
    mov.b @(r0,r14),r1
    cmp/pz r1
    bt LAB_ce30c0e
    mov.w @(DAT_ce30c94,pc),r0
    mov 0x02,r2
    bra LAB_ce30c14
    mov.b r2,@(r0,r14)

LAB_ce30c0e:
    mov.w @(DAT_ce30c94,pc),r0
    mov 0x05,r1
    mov.b r1,@(r0,r14)

LAB_ce30c14:
    mov.w @(DAT_ce30c96,pc),r0
    mov 0x11,r3
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c98,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c30
    mov.w @(DAT_ce30c9a,pc),r0
    mov.l @(PTR_ce30cb8,pc),r3
    bra LAB_ce30c36
    mov.l r3,@(r0,r14)

LAB_ce30c30:
    mov.w @(DAT_ce30c9a,pc),r0
    mov.l @(PTR_ce30cbc,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c36:
    mov 0x02,r3

LAB_ce30c38:
    mov.w @(DAT_ce30c9c,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30c3c:
    mov.w @(DAT_ce30ca0,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30cc0,pc),r3
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
    mov.w @(DAT_ce30c94,pc),r0
    mov.l @(PTR_ce30cc4,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30ca2,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30c76
    mov.w @(DAT_ce30ca2,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30c76:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30c80:
    mov.w @(DAT_ce30ca4,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30cc8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c94:
    #data 0x0158
DAT_ce30c96:
    #data 0x01a1
DAT_ce30c98:
    #data 0x01fc
DAT_ce30c9a:
    #data 0x03f4
DAT_ce30c9c:
    #data 0x01a7
DAT_ce30c9e:
    #data 0x01d3
DAT_ce30ca0:
    #data 0x01ac
DAT_ce30ca2:
    #data 0x01d6
DAT_ce30ca4:
    #data 0x01ff
    #align4

PTR_ce30ca8:
    #data DAT_ce355f0
PTR_ce30cac:
    #data DAT_ce35608
PTR_ce30cb0:
    #data DAT_ce355f4
PTR_ce30cb4:
    #data DAT_ce3560c
PTR_ce30cb8:
    #data DAT_ce355f8
PTR_ce30cbc:
    #data DAT_ce35610
PTR_ce30cc0:
    #data loc_8c2896b0
PTR_ce30cc4:
    #data loc_8c034e8c
PTR_ce30cc8:
    #data PTR_ce35738

;=============================================

LAB_ce30ccc:
    sts.l PR,@-r15
    mov.l @(PTR_ce30dd4,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30cda:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30dd8,pc),r3
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
    mov.w @(DAT_ce30dcc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d42
    mov.w @(DAT_ce30dce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d3a
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e1c
    mov.l @r15+,r14

LAB_ce30d3a:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30de4
    mov.l @r15+,r14

LAB_ce30d42:
    mov.w @(DAT_ce30dce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d54
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d94
    mov.l @r15+,r14

LAB_ce30d54:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d5c
    mov.l @r15+,r14

LAB_ce30d5c:
    mov.w @(DAT_ce30dd0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30d78
    cmp/eq 0x01,r0
    bt LAB_ce30d78
    cmp/eq 0x02,r0
    bt LAB_ce30d78
    bra LAB_ce30d8e
    nop

LAB_ce30d78:
    mov.l @(PTR_ce30ddc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d8e
    lds.l @r15+,PR
    mov.l @(PTR_ce30de0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d8e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d94:
    mov.w @(DAT_ce30dd0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30db0
    cmp/eq 0x01,r0
    bt LAB_ce30db0
    cmp/eq 0x02,r0
    bt LAB_ce30db0
    bra LAB_ce30dc6
    nop

LAB_ce30db0:
    mov.l @(PTR_ce30ddc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30dc6
    lds.l @r15+,PR
    mov.l @(PTR_ce30de0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30dc6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30dcc:
    #data 0x01fe
DAT_ce30dce:
    #data 0x01f9
DAT_ce30dd0:
    #data 0x01e8
    #align4

PTR_ce30dd4:
    #data loc_8c0511e2
PTR_ce30dd8:
    #data loc_8c052c84
PTR_ce30ddc:
    #data loc_8c034dee
PTR_ce30de0:
    #data loc_8c051648

;=============================================

LAB_ce30de4:
    mov.w @(DAT_ce30ece,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30e00
    cmp/eq 0x01,r0
    bt LAB_ce30e00
    cmp/eq 0x02,r0
    bt LAB_ce30e00
    bra LAB_ce30e16
    nop

LAB_ce30e00:
    mov.l @(PTR_ce30ed4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e16
    lds.l @r15+,PR
    mov.l @(PTR_ce30ed8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e16:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e1c:
    mov.w @(DAT_ce30ece,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30e38
    cmp/eq 0x01,r0
    bt LAB_ce30e38
    cmp/eq 0x02,r0
    bt LAB_ce30e38
    bra LAB_ce30e4e
    nop

LAB_ce30e38:
    mov.l @(PTR_ce30ed4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e4e
    lds.l @r15+,PR
    mov.l @(PTR_ce30ed8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e4e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e54:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30edc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30ee0,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30e6a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ee4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30ee8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30ed0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30e8c
    bsr FUN_ce30ef8
    mov r14,r4
    bra LAB_ce30e90
    nop

LAB_ce30e8c:
    bsr FUN_ce30eac
    mov r14,r4

LAB_ce30e90:
    mov.l @(PTR_ce30eec,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30ea6
    lds.l @r15+,PR
    mov.l @(PTR_ce30ef0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30ea6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30eac:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30ed4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ec6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30ef4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30ec6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ece:
    #data 0x01e8
DAT_ce30ed0:
    #data 0x01fe
    #align4

PTR_ce30ed4:
    #data loc_8c034dee
PTR_ce30ed8:
    #data loc_8c051648
PTR_ce30edc:
    #data loc_8c050084
PTR_ce30ee0:
    #data loc_8c04ff88
PTR_ce30ee4:
    #data loc_8c04fea8
PTR_ce30ee8:
    #data loc_8c050048
PTR_ce30eec:
    #data loc_8c052ce2
PTR_ce30ef0:
    #data loc_8c052dac
PTR_ce30ef4:
    #data loc_8c05176e

;=============================================

FUN_ce30ef8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3103c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f12
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31040,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30f12:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30f1a:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30f78
    mov.l @(PTR_ce31044,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    mov.l @(PTR_ce31048,pc),r3
    mov 0x14,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    mov.w @(DAT_ce31030,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31032,pc),r0
    mov 0x5F,r2
    mov.l @(PTR_ce3104c,pc),r3
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
    mov.l @(PTR_ce31050,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31054,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4

LAB_ce30f78:
    mov.w @(DAT_ce31034,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30f88
    mov.l @(PTR_ce31058,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30f88:
    mov 0x5C,r1
    mov.l @(PTR_ce3105c,pc),r3
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
    mov.l @(PTR_ce3103c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fde
    lds.l @r15+,PR
    mov.l @(PTR_ce31060,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30fde:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30fe6:
    mov r4,r3
    mov.l @(PTR_ce31064,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30ff8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3103c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31036,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31078
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
    mov.w @(DAT_ce31038,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3106c
    mova @(DAT_ce31068,pc),r0
    bra LAB_ce31070
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31030:
    #data 0x01f9
DAT_ce31032:
    #data 0x01a1
DAT_ce31034:
    #data 0x01ff
DAT_ce31036:
    #data 0x0141
DAT_ce31038:
    #data 0x01d2
    #align4

PTR_ce3103c:
    #data loc_8c034dee
PTR_ce31040:
    #data loc_8c05176e
PTR_ce31044:
    #data loc_8c052b4c
PTR_ce31048:
    #data loc_8c034e8c
PTR_ce3104c:
    #data loc_8c2896b0
PTR_ce31050:
    #data loc_8c04223a
PTR_ce31054:
    #data loc_8c056de4
PTR_ce31058:
    #data loc_8c0511e2
PTR_ce3105c:
    #data loc_8c052c84
PTR_ce31060:
    #data loc_8c051648
PTR_ce31064:
    #data PTR_ce35748
DAT_ce31068:
    #data 0x41855555

;=============================================

LAB_ce3106c:
    mova @(DAT_ce311c8,pc),r0
    fmov.s @r0,fr3

LAB_ce31070:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31078:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3107e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bf LAB_ce310d4
    mov.l @(PTR_ce311cc,pc),r2
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
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310d4:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce311d0,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310f6:
    mov r4,r3
    mov.l @(PTR_ce311d4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31108:
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

LAB_ce31120:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce311cc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3114c
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce311d0,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3114c:
    mov.w @(DAT_ce311c2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3115a
    mova @(DAT_ce311d8,pc),r0
    bra LAB_ce3115e
    fmov.s @r0,fr4

LAB_ce3115a:
    mova @(DAT_ce311dc,pc),r0
    fmov.s @r0,fr4

LAB_ce3115e:
    mov.w @(DAT_ce311c4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3116e
    mov 0x5C,r0
    fmov fr4,fr3
    bra LAB_ce31170
    fneg fr3

LAB_ce3116e:
    fmov fr4,fr3

LAB_ce31170:
    mov 0x5C,r1
    fmov fr3,@(r0,r14)
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

LAB_ce311b0:
    mov r4,r3
    mov.l @(PTR_ce311e0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311c2:
    #data 0x0141
DAT_ce311c4:
    #data 0x01d2
    #align4

DAT_ce311c8:
    #data 0xc1855555
PTR_ce311cc:
    #data loc_8c034dee
PTR_ce311d0:
    #data loc_8c051648
PTR_ce311d4:
    #data PTR_ce35750
DAT_ce311d8:
    #data 0x40555555
DAT_ce311dc:
    #data 0x41555555
PTR_ce311e0:
    #data PTR_ce35758

;=============================================

LAB_ce311e4:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce312ea,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce312f0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce312f4,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x12,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3120a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce312f8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31222
    mov.b @(0x5,r14),r0
    add 0x01,r0
    bra LAB_ce3123a
    mov.b r0,@(0x5,r14)

LAB_ce31222:
    mov.w @(DAT_ce312ec,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce3123a
    mov.l @(PTR_ce312fc,pc),r3
    mov 0x00,r2
    mov r14,r4
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    mov r2,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3123a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31240:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31300,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31258
    lds.l @r15+,PR
    mov.l @(PTR_ce31304,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31258:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31308,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3126c:
    mov r4,r3
    mov.l @(PTR_ce3130c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3127e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31310,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    jsr @r3
    mov.w r0,@(0x1e,r14)
    mov.l @(PTR_ce31314,pc),r2
    and 0x03,r0
    mov.w r0,@(0x1c,r14)
    jsr @r2
    mov r14,r4
    mov 0x02,r3
    cmp/ge r3,r0
    bf LAB_ce312a8
    mov 0x00,r0
    mov.w r0,@(0x1c,r14)

LAB_ce312a8:
    mov.w @(0x1c,r14),r0
    mov.l @(PTR_ce312f4,pc),r13
    cmp/eq 0x00,r0
    bt LAB_ce312c0
    cmp/eq 0x01,r0
    bt LAB_ce312c4
    cmp/eq 0x02,r0
    bt LAB_ce312c8
    cmp/eq 0x03,r0
    bt LAB_ce312cc
    bra LAB_ce3139c
    nop

LAB_ce312c0:
    bra LAB_ce312e0
    mov 0x00,r6

LAB_ce312c4:
    bra LAB_ce312e0
    mov 0x03,r6

LAB_ce312c8:
    bra LAB_ce312e0
    mov 0x02,r6

LAB_ce312cc:
    mov.w @(DAT_ce312ee,pc),r0
    mov.l @(r0,r14),r0
    mov.b @(0x1,r0),r0
    extu.b r0,r0
    cmp/eq 0x26,r0
    bf LAB_ce3131c
    mov.l @(PTR_ce31318,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x01,r6

LAB_ce312e0:
    mov 0x13,r5
    jsr @r13
    mov r14,r4
    bra LAB_ce3139c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce312ea:
    #data 0x012c
DAT_ce312ec:
    #data 0x0141
DAT_ce312ee:
    #data 0x020c
    #align4

PTR_ce312f0:
    #data FUN_ce354f8
PTR_ce312f4:
    #data loc_8c034e8c
PTR_ce312f8:
    #data loc_8c034dee
PTR_ce312fc:
    #data loc_8c0e1590
PTR_ce31300:
    #data loc_8c046c8a
PTR_ce31304:
    #data loc_8c051648
PTR_ce31308:
    #data PTR_ce35760
PTR_ce3130c:
    #data PTR_ce35774
PTR_ce31310:
    #data loc_8c03319e
PTR_ce31314:
    #data loc_8c0514b8
PTR_ce31318:
    #data loc_8c05218a

;=============================================

LAB_ce3131c:
    mov.b @(0x2,r14),r0
    mov.l @(PTR_ce3143c,pc),r5
    mov r0,r4
    extu.b r4,r6
    mov r6,r3
    shll r6
    add r3,r6
    shll2 r6
    add r5,r6
    mov.l @(0x4,r6),r0
    mov.b @(0x1,r0),r0
    extu.b r0,r0
    cmp/eq 0x26,r0
    bt LAB_ce31394
    mov.l @(0x8,r6),r0
    mov.b @(0x1,r0),r0
    extu.b r0,r0
    cmp/eq 0x26,r0
    bt LAB_ce31394
    extu.b r4,r0
    xor 0x01,r0
    mov r0,r3
    shll r0
    add r3,r0
    shll2 r0
    add r5,r0
    mov.l @(0x4,r0),r0
    mov.b @(0x1,r0),r0
    extu.b r0,r0
    cmp/eq 0x26,r0
    bt LAB_ce31394
    extu.b r4,r0
    xor 0x01,r0
    mov r0,r3
    shll r0
    add r3,r0
    shll2 r0
    add r5,r0
    mov.l @(0x8,r0),r0
    mov.b @(0x1,r0),r0
    extu.b r0,r0
    cmp/eq 0x26,r0
    bt LAB_ce31394
    mov.l @(PTR_ce31440,pc),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce31394
    mov.l @(PTR_ce31444,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce31394
    mov 0x02,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce313a4
    mov.l @r15+,r14

LAB_ce31394:
    mov 0x13,r5
    mov 0x00,r6
    jsr @r13
    mov r14,r4

LAB_ce3139c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce313a4:
    mov.w @(DAT_ce31430,pc),r5
    mov 0x3C,r0
    mov 0x00,r6
    mov.w r0,@(0x1e,r4)
    add r4,r5
    mov r6,r0
    nop
    mov.l @(PTR_ce31448,pc),r3
    mov.b r0,@(0xf,r5)
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r3,fr3
    fcmp/gt fr2,fr3
    bt LAB_ce313c6
    mov.w @(DAT_ce31432,pc),r0
    bra LAB_ce313cc
    mov.b r6,@(r0,r4)

LAB_ce313c6:
    mov.w @(DAT_ce31432,pc),r0
    mov 0x01,r1
    mov.b r1,@(r0,r4)

LAB_ce313cc:
    mov.w @(DAT_ce31432,pc),r0
    mov 0x00,r6
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce31434,pc),r0
    extu.b r3,r3
    mov.w r3,@(r0,r4)
    mov.l @(PTR_ce3144c,pc),r3
    jmp @r3
    mov r6,r5

LAB_ce313de:
    mov.l @(PTR_ce31450,pc),r3
    jmp @r3
    nop

LAB_ce313e4:
    mov.w @(DAT_ce31436,pc),r3
    mov.w @(DAT_ce31438,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov.w @(0x1e,r14),r0
    mov.w @(DAT_ce31430,pc),r4
    tst r0,r0
    bt/s LAB_ce31428
    add r14,r4
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31428
    mov.b @(0xf,r4),r0
    tst r0,r0
    bt LAB_ce31428
    mov 0x20,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31416
    bra LAB_ce31418
    mov 0x01,r3

LAB_ce31416:
    mov 0x04,r3

LAB_ce31418:
    mov.w @(DAT_ce3143a,pc),r0
    mov r14,r4
    mov 0x13,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3144c,pc),r3
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31428:
    mov.l @(PTR_ce31450,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31430:
    #data 0x02a4
DAT_ce31432:
    #data 0x01d2
DAT_ce31434:
    #data 0x0130
DAT_ce31436:
    #data 0x00ff
DAT_ce31438:
    #data 0x0326
DAT_ce3143a:
    #data 0x0158
    #align4

PTR_ce3143c:
    #data loc_8c289608
PTR_ce31440:
    #data loc_8c289636
PTR_ce31444:
    #data loc_8c0e1590
PTR_ce31448:
    #data loc_8c26a524
PTR_ce3144c:
    #data loc_8c034e8c
PTR_ce31450:
    #data loc_8c034dee

;=============================================

LAB_ce31454:
    mov r4,r3
    mov.l @(PTR_ce31540,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31466:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce31538,pc),r0
    mov.l @(r0,r14),r0
    mov.b @(0x1,r0),r0
    extu.b r0,r0
    cmp/eq 0x26,r0
    bf LAB_ce31496
    mov.l @(PTR_ce31544,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31548,pc),r3
    mov r14,r4
    mov 0x04,r6
    mov 0x13,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31496:
    mov.l @(PTR_ce3154c,pc),r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce314b6
    mov.l @(PTR_ce31550,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce314b6
    mov 0x02,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    bra LAB_ce313a4
    mov.l @r15+,r14

LAB_ce314b6:
    lds.l @r15+,PR
    mov.l @(PTR_ce31548,pc),r3
    mov r14,r4
    mov 0x00,r6
    mov 0x13,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce314c4:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce314d8
    mov.b @(0x6,r4),r0
    mov 0x06,r6
    mov.l @(PTR_ce31548,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce314d8:
    mov.l @(PTR_ce31554,pc),r3
    jmp @r3
    nop

LAB_ce314de:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce314f2
    mov.b @(0x6,r4),r0
    mov 0x05,r6
    mov.l @(PTR_ce31548,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce314f2:
    mov.l @(PTR_ce31554,pc),r3
    jmp @r3
    nop

LAB_ce314f8:
    mov.w @(DAT_ce3153a,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31558,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3150c:
    mov r4,r3
    mov.l @(PTR_ce3155c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3151e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3153c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31560
    bra LAB_ce31562
    mov 0x32,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31538:
    #data 0x020c
DAT_ce3153a:
    #data 0x01e9
DAT_ce3153c:
    #data 0x01a3
    #align4

PTR_ce31540:
    #data PTR_ce35780
PTR_ce31544:
    #data loc_8c05218a
PTR_ce31548:
    #data loc_8c034e8c
PTR_ce3154c:
    #data loc_8c289636
PTR_ce31550:
    #data loc_8c0e1590
PTR_ce31554:
    #data loc_8c034dee
PTR_ce31558:
    #data PTR_ce3578c
PTR_ce3155c:
    #data PTR_ce357c8

;=============================================

LAB_ce31560:
    mov 0x30,r3

LAB_ce31562:
    mov.w @(DAT_ce3166c,pc),r0
    mov 0x00,r13
    mov 0x0A,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3167c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31680,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31684,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3166e,pc),r0
    mov 0x17,r5
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce31688,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31670,pc),r0
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
    mov.l @(PTR_ce3168c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31672,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce315cc
    bra LAB_ce315ce
    mov 0x02,r3

LAB_ce315cc:
    mov 0x00,r3

LAB_ce315ce:
    mov.w @(DAT_ce31674,pc),r0
    mov 0x15,r5
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce31690,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce315e2:
    mov.w @(DAT_ce31676,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce315fe
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    bra LAB_ce31872
    mov.l @r15+,r14

LAB_ce315fe:
    mov.l @(PTR_ce31694,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31678,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce316da
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31698,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3167a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31636
    mov.w @(DAT_ce31672,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce3169c,pc),r0
    extu.b r3,r3
    mov r3,r2
    shll r3
    add r2,r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce3164a
    nop

LAB_ce31636:
    mov.w @(DAT_ce31672,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce3169c,pc),r0
    extu.b r2,r2
    mov r2,r3
    shll r2
    add r3,r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce3164a:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3167a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce316a4
    mov.w @(DAT_ce31672,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce316a0,pc),r0
    extu.b r3,r3
    mov r3,r2
    shll r3
    add r2,r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce316b8
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3166c:
    #data 0x01a1
DAT_ce3166e:
    #data 0x041c
DAT_ce31670:
    #data 0x01f9
DAT_ce31672:
    #data 0x01a3
DAT_ce31674:
    #data 0x0158
DAT_ce31676:
    #data 0x019e
DAT_ce31678:
    #data 0x0141
DAT_ce3167a:
    #data 0x01d2
    #align4

PTR_ce3167c:
    #data loc_8c2896b0
PTR_ce31680:
    #data loc_8c056de4
PTR_ce31684:
    #data loc_8c05218a
PTR_ce31688:
    #data loc_8c042008
PTR_ce3168c:
    #data loc_8c05115a
PTR_ce31690:
    #data loc_8c034e8c
PTR_ce31694:
    #data loc_8c034dee
PTR_ce31698:
    #data loc_8c053082
PTR_ce3169c:
    #data DAT_ce357dc
PTR_ce316a0:
    #data DAT_ce357e0

;=============================================

LAB_ce316a4:
    mov.w @(DAT_ce3178c,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31794,pc),r0
    extu.b r2,r2
    mov r2,r3
    shll r2
    add r3,r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce316b8:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3178c,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31798,pc),r0
    extu.b r3,r3
    mov r3,r2
    shll r3
    add r2,r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3179c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce316da:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce316e0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce317a0,pc),r3
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
    mov.w @(DAT_ce3178e,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bf/s LAB_ce31738
    fldi0 fr4
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31748

LAB_ce31738:
    extu.b r4,r2
    tst r2,r2
    bt LAB_ce31750
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31750

LAB_ce31748:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce31750:
    mov.w @(DAT_ce31790,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31760
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31872
    mov.l @r15+,r14

LAB_ce31760:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31786
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce317a4,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31786:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3178c:
    #data 0x01a3
DAT_ce3178e:
    #data 0x01d2
DAT_ce31790:
    #data 0x019e
    #align4

PTR_ce31794:
    #data DAT_ce357e0
PTR_ce31798:
    #data DAT_ce357e4
DAT_ce3179c:
    #data 0xbfab6db6
PTR_ce317a0:
    #data loc_8c034dee
PTR_ce317a4:
    #data loc_8c034e8c

;=============================================

LAB_ce317a8:
    mov.l r14,@-r15
    mov 0x5C,r0
    mov r4,r14
    mov 0x68,r1
    add r14,r1
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr0
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr0,fr3
    fmov fr3,@(r0,r14)
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
    fcmp/gt fr3,fr0
    bf/s LAB_ce317f2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31802

LAB_ce317f2:
    fldi0 fr3
    fcmp/gt fr0,fr3
    bf LAB_ce3180c
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce3180c

LAB_ce31802:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce3180c:
    mov.l @(PTR_ce318e0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce318d8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31846
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce318d8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce318da,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce318e4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce318e8,pc),r2
    mov r14,r4
    mov 0x05,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31846:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3184c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce318e0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3186c
    mov.w @(DAT_ce318da,pc),r0
    mov 0x01,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce318ec,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3186c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31872:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce318dc,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31886
    mova @(DAT_ce318f0,pc),r0
    bra LAB_ce3188a
    fmov.s @r0,fr3

LAB_ce31886:
    mova @(DAT_ce318f4,pc),r0
    fmov.s @r0,fr3

LAB_ce3188a:
    mov 0x5C,r0
    mov.l @(PTR_ce318e8,pc),r3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fldi0 fr3
    mov 0x04,r6
    fmov fr3,@(r0,r4)
    mova @(DAT_ce318f8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce318fc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x15,r5

LAB_ce318ac:
    mov r4,r3
    mov.l @(PTR_ce31900,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce318be:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce318de,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31904
    bra LAB_ce31906
    mov 0x35,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce318d8:
    #data 0x041c
DAT_ce318da:
    #data 0x01f9
DAT_ce318dc:
    #data 0x01d2
DAT_ce318de:
    #data 0x01a3
    #align4

PTR_ce318e0:
    #data loc_8c034dee
PTR_ce318e4:
    #data loc_8c0511b4
PTR_ce318e8:
    #data loc_8c034e8c
PTR_ce318ec:
    #data loc_8c051648
DAT_ce318f0:
    #data 0xc0200000
DAT_ce318f4:
    #data 0x40200000
DAT_ce318f8:
    #data 0x41892492
DAT_ce318fc:
    #data 0xbf4db6db
PTR_ce31900:
    #data PTR_ce357f4

;=============================================

LAB_ce31904:
    mov 0x33,r3

LAB_ce31906:
    mov.w @(DAT_ce31a3e,pc),r0
    mov 0x00,r13
    mov 0x0A,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31a4c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31a50,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31a54,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31a40,pc),r0
    mov 0x16,r5
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce31a58,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31a42,pc),r0
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
    mov.l @(PTR_ce31a5c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31a60,pc),r3
    mov 0x06,r6
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31974:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a64,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31a44,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3198e
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31b0e
    mov.l @r15+,r14

LAB_ce3198e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31994:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a64,pc),r3
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
    mov.w @(DAT_ce31a40,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31a38
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31a40,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31a42,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31a46,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31a18
    mov.w @(DAT_ce31a48,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31a68,pc),r0
    extu.b r3,r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31a26
    nop

LAB_ce31a18:
    mov.w @(DAT_ce31a48,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31a68,pc),r0
    extu.b r2,r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31a26:
    mov.l @(PTR_ce31a60,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x07,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a38:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a3e:
    #data 0x01a1
DAT_ce31a40:
    #data 0x041c
DAT_ce31a42:
    #data 0x01f9
DAT_ce31a44:
    #data 0x0141
DAT_ce31a46:
    #data 0x01d2
DAT_ce31a48:
    #data 0x01a3
    #align4

PTR_ce31a4c:
    #data loc_8c2896b0
PTR_ce31a50:
    #data loc_8c056de4
PTR_ce31a54:
    #data loc_8c05218a
PTR_ce31a58:
    #data loc_8c042008
PTR_ce31a5c:
    #data loc_8c05115a
PTR_ce31a60:
    #data loc_8c034e8c
PTR_ce31a64:
    #data loc_8c034dee
PTR_ce31a68:
    #data DAT_ce35808

;=============================================

LAB_ce31a6c:
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
    mov.w @(DAT_ce31b9e,pc),r0
    mov.b @(r0,r4),r5
    extu.b r5,r3
    tst r3,r3
    bf LAB_ce31ab8
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r4),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31ad8

LAB_ce31ab8:
    extu.b r5,r2
    tst r2,r2
    bt LAB_ce31ac8
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31ad8

LAB_ce31ac8:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)

LAB_ce31ad8:
    rts
    nop

LAB_ce31adc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ba4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b08
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31ba8,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b08:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b0e:
    mov.b @(0x6,r4),r0
    mov 0x02,r3
    mov.l @(DAT_ce31bac,pc),r1
    add 0x01,r0
    lds r1,FPUL
    mov.b r0,@(0x6,r4)
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov.w @(DAT_ce31ba0,pc),r0
    mov.b r3,@(r0,r4)
    add 0xD9,r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce31b40
    mov.w @(DAT_ce31ba2,pc),r0
    mov.b @(r0,r4),r2
    mov.l @(PTR_ce31bb0,pc),r0
    extu.b r2,r2
    shll2 r2
    shll r2
    bra LAB_ce31b50
    fmov.s @(r0,r2),fr2

LAB_ce31b40:
    mov.w @(DAT_ce31ba2,pc),r0
    mov.b @(r0,r4),r3
    mov.l @(PTR_ce31bb0,pc),r0
    extu.b r3,r3
    shll2 r3
    shll r3
    fmov.s @(r0,r3),fr2
    fneg fr2

LAB_ce31b50:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr2,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce31ba2,pc),r0
    mov.b @(r0,r4),r3
    mov.l @(PTR_ce31bb4,pc),r0
    extu.b r3,r3
    shll2 r3
    shll r3
    fmov.s @(r0,r3),fr3
    mov 0x6C,r0
    rts
    fmov fr3,@(r0,r4)

LAB_ce31b72:
    mov r4,r3
    mov.l @(PTR_ce31bb8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31b84:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31ba2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31bbc
    bra LAB_ce31bbe
    mov 0x38,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b9e:
    #data 0x01d2
DAT_ce31ba0:
    #data 0x01f9
DAT_ce31ba2:
    #data 0x01a3
    #align4

PTR_ce31ba4:
    #data loc_8c034dee
PTR_ce31ba8:
    #data loc_8c051648
DAT_ce31bac:
    #data 0x42092492
PTR_ce31bb0:
    #data DAT_ce35810
PTR_ce31bb4:
    #data DAT_ce35814
PTR_ce31bb8:
    #data PTR_ce35820

;=============================================

LAB_ce31bbc:
    mov 0x36,r3

LAB_ce31bbe:
    mov.w @(DAT_ce31cae,pc),r0
    mov 0x00,r13
    mov 0x0A,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31cbc,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31cc0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31cc4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31cb0,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce31cc8,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31cb2,pc),r0
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
    mov.w @(DAT_ce31cb4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31c20
    bra LAB_ce31c22
    mov 0x0A,r2

LAB_ce31c20:
    mov 0x08,r2

LAB_ce31c22:
    mov.w @(DAT_ce31cb6,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31ccc,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c36:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31cd0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31cb8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31ca8
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31cb8,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31cd4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31cba,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31c74
    mov.w @(DAT_ce31cb4,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31cd8,pc),r0
    extu.b r3,r3
    shll2 r3
    shll r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31c84
    nop

LAB_ce31c74:
    mov.w @(DAT_ce31cb4,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31cd8,pc),r0
    extu.b r2,r2
    shll2 r2
    shll r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31c84:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31cb4,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31cdc,pc),r0
    extu.b r3,r3
    shll2 r3
    shll r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31ce0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31ca8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31cae:
    #data 0x01a1
DAT_ce31cb0:
    #data 0x041c
DAT_ce31cb2:
    #data 0x01f9
DAT_ce31cb4:
    #data 0x01a3
DAT_ce31cb6:
    #data 0x0158
DAT_ce31cb8:
    #data 0x0141
DAT_ce31cba:
    #data 0x01d2
    #align4

PTR_ce31cbc:
    #data loc_8c2896b0
PTR_ce31cc0:
    #data loc_8c056de4
PTR_ce31cc4:
    #data loc_8c05218a
PTR_ce31cc8:
    #data loc_8c05115a
PTR_ce31ccc:
    #data loc_8c034e8c
PTR_ce31cd0:
    #data loc_8c034dee
PTR_ce31cd4:
    #data loc_8c053082
PTR_ce31cd8:
    #data DAT_ce35830
PTR_ce31cdc:
    #data DAT_ce35834
DAT_ce31ce0:
    #data 0xbf4db6db

;=============================================

LAB_ce31ce4:
    mov.w @(DAT_ce31e04,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31cf8
    mov.l @(PTR_ce31e10,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31cf8:
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
    mov.w @(DAT_ce31e06,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31d64
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31e06,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31e08,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31e14,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d64:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d6a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31e10,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d96
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31e18,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d96:
    mov.w @(DAT_ce31e04,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31dd2
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x62,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31dae
    bra LAB_ce31db0
    mov 0x3B,r3

LAB_ce31dae:
    mov 0x39,r3

LAB_ce31db0:
    mov.w @(DAT_ce31e0a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31e1c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31dd2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31dd8:
    mov r4,r3
    mov.l @(PTR_ce31e20,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31dea:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31e0c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e24
    bra LAB_ce31e26
    mov 0x3F,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e04:
    #data 0x0141
DAT_ce31e06:
    #data 0x041c
DAT_ce31e08:
    #data 0x01f9
DAT_ce31e0a:
    #data 0x01a1
DAT_ce31e0c:
    #data 0x01a3
    #align4

PTR_ce31e10:
    #data loc_8c034dee
PTR_ce31e14:
    #data loc_8c0511b4
PTR_ce31e18:
    #data loc_8c051648
PTR_ce31e1c:
    #data loc_8c2896b0
PTR_ce31e20:
    #data PTR_ce35840

;=============================================

LAB_ce31e24:
    mov 0x3D,r3

LAB_ce31e26:
    mov.w @(DAT_ce31efe,pc),r0
    mov 0x00,r13
    mov 0x0A,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31f0c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31f10,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31f14,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f00,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce31f18,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f02,pc),r0
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
    mov.l @(PTR_ce31f1c,pc),r2
    mov 0x0B,r6
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e8c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31f20,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31f04,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31ef8
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31f24,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f06,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31ec4
    mov.w @(DAT_ce31f08,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31f28,pc),r0
    extu.b r3,r3
    shll2 r3
    shll r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31ed4
    nop

LAB_ce31ec4:
    mov.w @(DAT_ce31f08,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31f28,pc),r0
    extu.b r2,r2
    shll2 r2
    shll r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31ed4:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f08,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31f2c,pc),r0
    extu.b r3,r3
    shll2 r3
    shll r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31f30,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31ef8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31efe:
    #data 0x01a1
DAT_ce31f00:
    #data 0x041c
DAT_ce31f02:
    #data 0x01f9
DAT_ce31f04:
    #data 0x0141
DAT_ce31f06:
    #data 0x01d2
DAT_ce31f08:
    #data 0x01a3
    #align4

PTR_ce31f0c:
    #data loc_8c2896b0
PTR_ce31f10:
    #data loc_8c056de4
PTR_ce31f14:
    #data loc_8c05218a
PTR_ce31f18:
    #data loc_8c05115a
PTR_ce31f1c:
    #data loc_8c034e8c
PTR_ce31f20:
    #data loc_8c034dee
PTR_ce31f24:
    #data loc_8c053082
PTR_ce31f28:
    #data DAT_ce35864
PTR_ce31f2c:
    #data DAT_ce35868
DAT_ce31f30:
    #data 0xbf4db6db

;=============================================

LAB_ce31f34:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3202c,pc),r3
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
    mova @(DAT_ce32030,pc),r0
    fmov.s @r0,fr15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce31f9c
    mov.w @(DAT_ce3201e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31f8e
    bra LAB_ce320b0
    nop

LAB_ce31f8e:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    fadd fr15,fr3
    fmov fr3,@(r0,r14)

LAB_ce31f9c:
    mov.w @(DAT_ce32020,pc),r0
    mov.l @(r0,r14),r4
    add 0xED,r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31fae
    bra LAB_ce320b0
    nop

LAB_ce31fae:
    mov.w @(DAT_ce32022,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31fc2
    mov.w @(DAT_ce32024,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32046
    bra LAB_ce320b0
    nop

LAB_ce31fc2:
    mov.w @(DAT_ce32026,pc),r0
    mov 0x60,r4
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r4,r2
    bt LAB_ce3203c
    mov 0x06,r0
    mov.l @(PTR_ce32034,pc),r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32028,pc),r0
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
    mov 0x38,r0
    mov.l @(DAT_ce32038,pc),r1
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce3202a,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fcmp/gt fr2,fr1
    bt/s LAB_ce3201a
    mov 0x1D,r6
    mov.w @(DAT_ce3202a,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov fr2,@(r0,r14)

LAB_ce3201a:
    bra LAB_ce320c8
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3201e:
    #data 0x0141
DAT_ce32020:
    #data 0x020c
DAT_ce32022:
    #data 0x0525
DAT_ce32024:
    #data 0x01fe
DAT_ce32026:
    #data 0x034e
DAT_ce32028:
    #data 0x01a1
DAT_ce3202a:
    #data 0x041c
    #align4

PTR_ce3202c:
    #data loc_8c034dee
DAT_ce32030:
    #data 0x42cdb6db
PTR_ce32034:
    #data loc_8c2896b0
DAT_ce32038:
    #data 0x42ab6db6

;=============================================

LAB_ce3203c:
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce3214a,pc),r2
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce320b0

LAB_ce32046:
    mov.l @(PTR_ce32160,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce320a8
    mov r0,r5
    mov.w @(DAT_ce3214c,pc),r0
    mov.b @(r0,r5),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce32096
    mov.w @(DAT_ce3214c,pc),r0
    mov.b @(r0,r5),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3208e
    mov.w @(DAT_ce3214e,pc),r0
    fldi1 fr1
    fadd fr1,fr1
    mov.b @(r0,r5),r3
    mov 0x54,r0
    fmov.s @(r0,r5),fr2
    mova @(DAT_ce32164,pc),r0
    extu.b r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr2,fr3
    fmov.s @r0,fr2
    mov 0x38,r0
    fmov.s @(r0,r5),fr0
    fmul fr2,fr3
    fdiv fr1,fr3
    fadd fr0,fr3
    fmov.s @(r0,r14),fr0
    fcmp/gt fr3,fr0
    bf LAB_ce32096

LAB_ce3208e:
    mov.w @(DAT_ce32152,pc),r0
    mov.w @(DAT_ce32150,pc),r2
    bra LAB_ce3209c
    mov.b r2,@(r0,r14)

LAB_ce32096:
    mov.w @(DAT_ce32152,pc),r0
    mov.w @(DAT_ce32154,pc),r1
    mov.b r1,@(r0,r14)

LAB_ce3209c:
    lds.l @r15+,PR
    mov.l @(PTR_ce32168,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce320a8:
    mov.w @(DAT_ce32156,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce320ba

LAB_ce320b0:
    lds.l @r15+,PR
    mov r14,r4
    fmov.s @r15+,fr15
    bra LAB_ce320d6
    mov.l @r15+,r14

LAB_ce320ba:
    mov 0x05,r0
    mov.b r0,@(0x6,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov 0x0C,r6
    fsub fr15,fr3
    fmov fr3,@(r0,r14)

LAB_ce320c8:
    lds.l @r15+,PR
    mov.l @(PTR_ce3216c,pc),r3
    mov r14,r4
    mov 0x15,r5
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce320d6:
    mov.w @(DAT_ce32158,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32144
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32158,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3214c,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3215a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3211e
    mov.w @(DAT_ce3215c,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32170,pc),r0
    extu.b r3,r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce3212c
    nop

LAB_ce3211e:
    mov.w @(DAT_ce3215c,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce32170,pc),r0
    extu.b r2,r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce3212c:
    mov.l @(PTR_ce32174,pc),r3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3216c,pc),r2
    mov r14,r4
    mov 0x0D,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32144:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3214a:
    #data 0x0300
DAT_ce3214c:
    #data 0x01f9
DAT_ce3214e:
    #data 0x013c
DAT_ce32150:
    #data 0x00c3
DAT_ce32152:
    #data 0x01f7
DAT_ce32154:
    #data 0x00c4
DAT_ce32156:
    #data 0x0525
DAT_ce32158:
    #data 0x041c
DAT_ce3215a:
    #data 0x01d2
DAT_ce3215c:
    #data 0x01a3
    #align4

PTR_ce32160:
    #data loc_8c0457e0
DAT_ce32164:
    #data 0x40092492
PTR_ce32168:
    #data loc_8c0522e0
PTR_ce3216c:
    #data loc_8c034e8c
PTR_ce32170:
    #data DAT_ce35874
PTR_ce32174:
    #data loc_8c0511b4

;=============================================

LAB_ce32178:
    mov.w @(DAT_ce322ac,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3218c
    mov.l @(PTR_ce322b4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3218c:
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
    mov.w @(DAT_ce322ae,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bf LAB_ce321d8
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce321f8

LAB_ce321d8:
    extu.b r4,r2
    tst r2,r2
    bt LAB_ce321e8
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce321f8

LAB_ce321e8:
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce321f8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce321fe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce322b4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3222a
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce322b8,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3222a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32230:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce322b4,pc),r3
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
    mov.w @(DAT_ce322b0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce322a6
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce322b0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce322b2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce322bc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce322c0,pc),r2
    mov r14,r4
    mov 0x05,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce322a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce322ac:
    #data 0x0141
DAT_ce322ae:
    #data 0x01d2
DAT_ce322b0:
    #data 0x041c
DAT_ce322b2:
    #data 0x01f9
    #align4

PTR_ce322b4:
    #data loc_8c034dee
PTR_ce322b8:
    #data loc_8c051648
PTR_ce322bc:
    #data loc_8c0511b4
PTR_ce322c0:
    #data loc_8c034e8c

;=============================================

LAB_ce322c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce323f4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce323ea,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32314
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce323ec,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce322ea
    mova @(DAT_ce323f8,pc),r0
    bra LAB_ce322ee
    fmov.s @r0,fr3

LAB_ce322ea:
    mova @(DAT_ce323fc,pc),r0
    fmov.s @r0,fr3

LAB_ce322ee:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce323ec,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32300
    mova @(DAT_ce32400,pc),r0
    bra LAB_ce32302
    fmov.s @r0,fr3

LAB_ce32300:
    fldi0 fr3

LAB_ce32302:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32404,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)

LAB_ce32314:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3231a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce323f4,pc),r3
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
    mov.w @(DAT_ce323ec,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bf/s LAB_ce32372
    fldi0 fr4
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32382

LAB_ce32372:
    extu.b r4,r2
    tst r2,r2
    bt LAB_ce3238a
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3238a

LAB_ce32382:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce3238a:
    mov.w @(DAT_ce323ee,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce323ce
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce323ee,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce323f0,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32408,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3240c,pc),r2
    mov r14,r4
    mov 0x1E,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce323ce:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce323d4:
    bra LAB_ce3184c
    nop

LAB_ce323d8:
    mov r4,r3
    mov.l @(PTR_ce32410,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce323ea:
    #data 0x0141
DAT_ce323ec:
    #data 0x01d2
DAT_ce323ee:
    #data 0x041c
DAT_ce323f0:
    #data 0x01f9
    #align4

PTR_ce323f4:
    #data loc_8c034dee
DAT_ce323f8:
    #data 0x41200000
DAT_ce323fc:
    #data 0xc1200000
DAT_ce32400:
    #data 0x80000000
DAT_ce32404:
    #data 0xc19a4924
PTR_ce32408:
    #data loc_8c0511b4
PTR_ce3240c:
    #data loc_8c034e8c
PTR_ce32410:
    #data PTR_ce3587c

;=============================================

LAB_ce32414:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3251c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32510,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov 0x0A,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32512,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32520,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32524,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32514,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32462
    mov 0x15,r5
    bra LAB_ce32464
    mov 0x20,r6

LAB_ce32462:
    mov 0x0E,r6

LAB_ce32464:
    lds.l @r15+,PR
    mov.l @(PTR_ce32528,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3246e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3252c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32516,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32494
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce32518,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3251a,pc),r0
    mov.w r3,@(r0,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov 0x08,r0
    mov.w r0,@(0x1e,r14)

LAB_ce32494:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3249a:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce324de
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov 0x25,r0
    mov.b @(r0,r14),r6
    mov 0x00,r5
    mov.w @(0x1e,r14),r0
    mov 0x01,r7
    extu.b r6,r6
    mov r6,r3
    shll2 r6
    shll r6
    add r3,r6
    mov.l @(PTR_ce32530,pc),r3
    add r0,r6
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce324de
    mov 0x08,r0
    mov.w r0,@(0x1e,r14)

LAB_ce324de:
    mov.l @(PTR_ce3252c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3251a,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x80,r0
    bt/s LAB_ce32538
    mov 0x00,r13
    mov.w @(DAT_ce32516,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce325b4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32534,pc),r3
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3251a,pc),r0
    mov.w r13,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32510:
    #data 0x041c
DAT_ce32512:
    #data 0x01f9
DAT_ce32514:
    #data 0x01a3
DAT_ce32516:
    #data 0x0141
DAT_ce32518:
    #data 0x0080
DAT_ce3251a:
    #data 0x01ae
    #align4

PTR_ce3251c:
    #data loc_8c05218a
PTR_ce32520:
    #data loc_8c056de4
PTR_ce32524:
    #data loc_8c05115a
PTR_ce32528:
    #data loc_8c034e8c
PTR_ce3252c:
    #data loc_8c034dee
PTR_ce32530:
    #data loc_8c03544c
PTR_ce32534:
    #data loc_8c035162

;=============================================

LAB_ce32538:
    mov.l @(PTR_ce32664,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32656,pc),r0
    mov.l @(PTR_ce32668,pc),r4
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3257e
    mov 0x15,r5
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x61,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32658,pc),r0
    mov.b r3,@(r0,r14)
    add 0xA8,r0
    mov.b r2,@(r0,r14)
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
    bra LAB_ce325a8
    mov 0x1F,r6

LAB_ce3257e:
    mov.b @(0x6,r14),r0
    mov 0x46,r3
    mov 0x17,r6
    add 0x02,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3265a,pc),r0
    mov.b r3,@(r0,r14)
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

LAB_ce325a8:
    lds.l @r15+,PR
    mov.l @(PTR_ce3266c,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce325b4:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce325bc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32670,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce325d6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32674,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce325d6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce325de:
    mov.w @(DAT_ce3265c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce325fa
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    bra LAB_ce31872
    mov.l @r15+,r14

LAB_ce325fa:
    mov.l @(PTR_ce32670,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3265e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32650
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32678,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32660,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32622
    mova @(DAT_ce3267c,pc),r0
    bra LAB_ce32626
    fmov.s @r0,fr3

LAB_ce32622:
    mova @(DAT_ce32680,pc),r0
    fmov.s @r0,fr3

LAB_ce32626:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32660,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32638
    mova @(DAT_ce32684,pc),r0
    bra LAB_ce3263c
    fmov.s @r0,fr3

LAB_ce32638:
    mova @(DAT_ce32688,pc),r0
    fmov.s @r0,fr3

LAB_ce3263c:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3268c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32690,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32650:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32656:
    #data 0x01a3
DAT_ce32658:
    #data 0x01f9
DAT_ce3265a:
    #data 0x01a1
DAT_ce3265c:
    #data 0x019e
DAT_ce3265e:
    #data 0x0141
DAT_ce32660:
    #data 0x01d2
    #align4

PTR_ce32664:
    #data loc_8c035162
PTR_ce32668:
    #data loc_8c2896b0
PTR_ce3266c:
    #data loc_8c034e8c
PTR_ce32670:
    #data loc_8c034dee
PTR_ce32674:
    #data loc_8c051648
PTR_ce32678:
    #data loc_8c053082
DAT_ce3267c:
    #data 0x42055555
DAT_ce32680:
    #data 0xc2055555
DAT_ce32684:
    #data 0xc0055555
DAT_ce32688:
    #data 0x40055555
DAT_ce3268c:
    #data 0x422b6db6
DAT_ce32690:
    #data 0xbfab6db6

;=============================================

LAB_ce32694:
    mov r4,r3
    mov.l @(PTR_ce327b8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce326a6:
    mov.w @(DAT_ce327a2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce326c4
    mov.w @(DAT_ce327a6,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce327a4,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce326c4:
    mov.b @(0x6,r14),r0
    mov 0x40,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce327a8,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce327bc,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce327c0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce327aa,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce327c4,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce327ac,pc),r0
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
    mov.l @(PTR_ce327c8,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce327cc,pc),r3
    mov 0x0F,r6
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32732:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce327ae,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce327b0,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce327a2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32754
    bra LAB_ce32756
    mov 0x02,r3

LAB_ce32754:
    mov 0x00,r3

LAB_ce32756:
    mov.w @(DAT_ce327b2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce327d0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce327b4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3279a
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce327dc,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce327b4,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce327a6,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce327d4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce327d8,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce3279a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce327a2:
    #data 0x0255
DAT_ce327a4:
    #data 0x00ff
DAT_ce327a6:
    #data 0x03f0
DAT_ce327a8:
    #data 0x01a1
DAT_ce327aa:
    #data 0x041c
DAT_ce327ac:
    #data 0x01f9
DAT_ce327ae:
    #data 0x03f8
DAT_ce327b0:
    #data 0x0328
DAT_ce327b2:
    #data 0x03f1
DAT_ce327b4:
    #data 0x0141
    #align4

PTR_ce327b8:
    #data PTR_ce3589c
PTR_ce327bc:
    #data loc_8c2896b0
PTR_ce327c0:
    #data loc_8c05218a
PTR_ce327c4:
    #data loc_8c05115a
PTR_ce327c8:
    #data loc_8c035162
PTR_ce327cc:
    #data loc_8c034e8c
PTR_ce327d0:
    #data loc_8c034dee
DAT_ce327d4:
    #data 0xc1055555
DAT_ce327d8:
    #data 0x422b6db6
PTR_ce327dc:
    #data loc_8c050834

;=============================================

LAB_ce327e0:
    mov.w @(DAT_ce32926,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32928,pc),r0
    mov.l @(PTR_ce32938,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3292a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32842
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    mov.l @(DAT_ce3293c,pc),r1
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3292c,pc),r0
    lds r1,FPUL
    mov.b r3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce3292e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32828
    mova @(DAT_ce32940,pc),r0
    bra LAB_ce3282c
    fmov.s @r0,fr2

LAB_ce32828:
    mova @(DAT_ce32944,pc),r0
    fmov.s @r0,fr2

LAB_ce3282c:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32948,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32842:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32848:
    mov.w @(DAT_ce32926,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32928,pc),r0
    mov.l @(PTR_ce32938,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32930,pc),r0
    mov.l @(PTR_ce3294c,pc),r5
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32890
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x56,r0
    mov 0x40,r3
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

LAB_ce32890:
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
    mov.w @(DAT_ce32932,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32920
    mov.b @(0x6,r14),r0
    mov 0x41,r3
    fldi0 fr4
    mov 0x10,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32932,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3292c,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32934,pc),r0
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
    lds.l @r15+,PR
    mov.l @(PTR_ce32950,pc),r3
    mov 0x15,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32920:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32926:
    #data 0x03f8
DAT_ce32928:
    #data 0x0328
DAT_ce3292a:
    #data 0x0141
DAT_ce3292c:
    #data 0x01f9
DAT_ce3292e:
    #data 0x01d2
DAT_ce32930:
    #data 0x014b
DAT_ce32932:
    #data 0x041c
DAT_ce32934:
    #data 0x01a1
    #align4

PTR_ce32938:
    #data loc_8c034dee
DAT_ce3293c:
    #data 0x42092492
DAT_ce32940:
    #data 0x41a00000
DAT_ce32944:
    #data 0xc1a00000
DAT_ce32948:
    #data 0xbe092492
PTR_ce3294c:
    #data loc_8c2896b0
PTR_ce32950:
    #data loc_8c034e8c

;=============================================

LAB_ce32954:
    mov.w @(DAT_ce329c2,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce329c4,pc),r0
    mov.l @(PTR_ce329cc,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce329c6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce329bc
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce329c8,pc),r0
    mov.b r3,@(r0,r14)
    add 0xD9,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3298e
    mova @(DAT_ce329d0,pc),r0
    bra LAB_ce32992
    fmov.s @r0,fr3

LAB_ce3298e:
    mova @(DAT_ce329d4,pc),r0
    fmov.s @r0,fr3

LAB_ce32992:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce329ca,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce329a4
    mova @(DAT_ce329d8,pc),r0
    bra LAB_ce329a8
    fmov.s @r0,fr3

LAB_ce329a4:
    mova @(DAT_ce329dc,pc),r0
    fmov.s @r0,fr3

LAB_ce329a8:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce329e0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce329e4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce329bc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329c2:
    #data 0x03f8
DAT_ce329c4:
    #data 0x0328
DAT_ce329c6:
    #data 0x0141
DAT_ce329c8:
    #data 0x01f9
DAT_ce329ca:
    #data 0x01d2
    #align4

PTR_ce329cc:
    #data loc_8c034dee
DAT_ce329d0:
    #data 0x42055555
DAT_ce329d4:
    #data 0xc2055555
DAT_ce329d8:
    #data 0xc0055555
DAT_ce329dc:
    #data 0x40055555
DAT_ce329e0:
    #data 0x422b6db6
DAT_ce329e4:
    #data 0xbfab6db6

;=============================================

LAB_ce329e8:
    mov.w @(DAT_ce32ad0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32ad2,pc),r0
    mov.l @(PTR_ce32ae0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32ad4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32a2e
    mov 0x00,r4
    mov.w @(DAT_ce32ad6,pc),r0
    mov 0x41,r3
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

LAB_ce32a2e:
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
    mov.w @(DAT_ce32ad8,pc),r0
    mov.b @(r0,r14),r5
    extu.b r5,r3
    tst r3,r3
    bf/s LAB_ce32a7c
    fldi0 fr4
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32a8c

LAB_ce32a7c:
    extu.b r5,r2
    tst r2,r2
    bt LAB_ce32a94
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32a94

LAB_ce32a8c:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce32a94:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32aca
    mov.b @(0x6,r14),r0
    mov 0x11,r6
    mov.l @(PTR_ce32ae8,pc),r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32ada,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32adc,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32aca:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ad0:
    #data 0x03f8
DAT_ce32ad2:
    #data 0x0328
DAT_ce32ad4:
    #data 0x014b
DAT_ce32ad6:
    #data 0x01a1
DAT_ce32ad8:
    #data 0x01d2
DAT_ce32ada:
    #data 0x03f9
DAT_ce32adc:
    #data 0x0327
    #align4

PTR_ce32ae0:
    #data loc_8c034dee
PTR_ce32ae4:
    #data loc_8c2896b0
PTR_ce32ae8:
    #data loc_8c034e8c

;=============================================

LAB_ce32aec:
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
    mov.w @(DAT_ce32bf4,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bf LAB_ce32b3e
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32b4e

LAB_ce32b3e:
    extu.b r4,r2
    tst r2,r2
    bt LAB_ce32b58
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32b58

LAB_ce32b4e:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce32b58:
    mov.l @(PTR_ce32bfc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32bf6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32b92
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32bf6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32bf8,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32c00,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32c04,pc),r2
    mov r14,r4
    mov 0x12,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32b92:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b98:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32bfc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32bc4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32c08,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32bc4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32bca:
    mov r4,r3
    mov.l @(PTR_ce32c0c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32bdc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32bfa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32c10
    bra LAB_ce32c12
    mov 0x49,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32bf4:
    #data 0x01d2
DAT_ce32bf6:
    #data 0x041c
DAT_ce32bf8:
    #data 0x01f9
DAT_ce32bfa:
    #data 0x01a3
    #align4

PTR_ce32bfc:
    #data loc_8c034dee
PTR_ce32c00:
    #data loc_8c0511b4
PTR_ce32c04:
    #data loc_8c034e8c
PTR_ce32c08:
    #data loc_8c051648
PTR_ce32c0c:
    #data PTR_ce358bc

;=============================================

LAB_ce32c10:
    mov 0x47,r3

LAB_ce32c12:
    mov.w @(DAT_ce32d08,pc),r0
    mov 0x00,r4
    mov 0x0A,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32d14,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32d18,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32d1c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32d0a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32c50
    bra LAB_ce32c52
    mov 0x1A,r2

LAB_ce32c50:
    mov 0x18,r2

LAB_ce32c52:
    mov.w @(DAT_ce32d0c,pc),r0
    mov r14,r4
    mov.l @(PTR_ce32d20,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32c64:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32d24,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32d0e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32d02
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32d10,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32c96
    mov.w @(DAT_ce32d0a,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32d28,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce32ca6
    nop

LAB_ce32c96:
    mov.w @(DAT_ce32d0a,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce32d28,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce32ca6:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d10,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32cc4
    mov.w @(DAT_ce32d0a,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32d2c,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce32cd4
    nop

LAB_ce32cc4:
    mov.w @(DAT_ce32d0a,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce32d2c,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce32cd4:
    mov 0x68,r0
    mov.l @(PTR_ce32d28,pc),r4
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d0a,pc),r0
    mov.b @(r0,r14),r3
    mov 0x08,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r4,r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d0a,pc),r0
    mov.b @(r0,r14),r3
    mov 0x0C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32d02:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d08:
    #data 0x01a1
DAT_ce32d0a:
    #data 0x01a3
DAT_ce32d0c:
    #data 0x0158
DAT_ce32d0e:
    #data 0x0141
DAT_ce32d10:
    #data 0x01d2
    #align4

PTR_ce32d14:
    #data loc_8c2896b0
PTR_ce32d18:
    #data loc_8c056de4
PTR_ce32d1c:
    #data loc_8c05218a
PTR_ce32d20:
    #data loc_8c034e8c
PTR_ce32d24:
    #data loc_8c034dee
PTR_ce32d28:
    #data DAT_ce358cc
PTR_ce32d2c:
    #data DAT_ce358d0

;=============================================

LAB_ce32d30:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32e2c,pc),r3
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
    mov.w @(DAT_ce32e22,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bf/s LAB_ce32d88
    fldi0 fr4
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32d98

LAB_ce32d88:
    extu.b r4,r2
    tst r2,r2
    bt LAB_ce32da0
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32da0

LAB_ce32d98:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce32da0:
    mov.w @(DAT_ce32e24,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32de4
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32e24,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32e26,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32e30,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32e34,pc),r2
    mov r14,r4
    mov 0x1B,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32de4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32dea:
    mov.l @(PTR_ce32e38,pc),r3
    jmp @r3
    nop

LAB_ce32df0:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32e3c,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32e28,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e06:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32e2a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32e40
    bra LAB_ce32e42
    mov 0x45,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e22:
    #data 0x01d2
DAT_ce32e24:
    #data 0x041c
DAT_ce32e26:
    #data 0x01f9
DAT_ce32e28:
    #data 0x02a4
DAT_ce32e2a:
    #data 0x01a3
    #align4

PTR_ce32e2c:
    #data loc_8c034dee
PTR_ce32e30:
    #data loc_8c0511b4
PTR_ce32e34:
    #data loc_8c034e8c
PTR_ce32e38:
    #data LAB_ce3184c
PTR_ce32e3c:
    #data PTR_ce358ec

;=============================================

LAB_ce32e40:
    mov 0x43,r3

LAB_ce32e42:
    mov.w @(DAT_ce32f6e,pc),r0
    mov 0x00,r4
    mov 0x0A,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32f78,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32f7c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32f80,pc),r3
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov 0x16,r5
    mov.l @r15,r3
    fmov.s fr3,@r3
    mov.l @(PTR_ce32f84,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x15,r6
    mov r14,r4
    mov r6,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32f88,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce32ea6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32f8c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32f70,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32ec2
    lds.l @r15+,PR
    mov.l @(PTR_ce32f90,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ec2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ec8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32f8c,pc),r3
    mov r4,r14
    mov.l r5,@r15
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
    mov 0x38,r0
    mov.l @r15,r3
    fmov.s @(r0,r14),fr2
    fmov.s @r3,fr3
    fcmp/gt fr3,fr2
    bf LAB_ce32f36
    mov.w @(DAT_ce32f72,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32f66
    mov.w @(DAT_ce32f72,pc),r0
    mov 0x00,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32f74,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce32f36:
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    fldi1 fr3
    fadd fr3,fr3
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    mov 0x16,r6
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fldi0 fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32f94,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32f88,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f66:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f6e:
    #data 0x01a1
DAT_ce32f70:
    #data 0x0141
DAT_ce32f72:
    #data 0x041c
DAT_ce32f74:
    #data 0x01f9
    #align4

PTR_ce32f78:
    #data loc_8c2896b0
PTR_ce32f7c:
    #data loc_8c056de4
PTR_ce32f80:
    #data loc_8c05218a
PTR_ce32f84:
    #data loc_8c042008
PTR_ce32f88:
    #data loc_8c034e8c
PTR_ce32f8c:
    #data loc_8c034dee
PTR_ce32f90:
    #data LAB_ce31b0e
DAT_ce32f94:
    #data 0xbf4db6db

;=============================================

LAB_ce32f98:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce330d8,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce330dc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce330c8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32fdc
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce330ca,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce330c8,pc),r0
    mov.l @(PTR_ce330e0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce330e4,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32fdc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fe2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce330d8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3300e
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce330e8,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3300e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33014:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce330ec,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce330cc,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3302a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce330ce,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3304c
    mov.w @(DAT_ce330d2,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce330d0,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3304c:
    mov.b @(0x6,r14),r0
    mov 0x4E,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce330d4,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce330f0,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce330f4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce330ca,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3309a
    mov.l @(PTR_ce330f8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce330ca,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce330c8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce3309a:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x05,r0
    mov.l @r15,r3
    mov.b r0,@(0xc,r3)
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    mov r13,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov.b @(0x2,r14),r0
    tst r0,r0
    bt/s LAB_ce330fc
    mov 0x01,r5
    bra LAB_ce330fe
    mov 0x04,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce330c8:
    #data 0x041c
DAT_ce330ca:
    #data 0x01f9
DAT_ce330cc:
    #data 0x02a4
DAT_ce330ce:
    #data 0x0255
DAT_ce330d0:
    #data 0x00ff
DAT_ce330d2:
    #data 0x03f0
DAT_ce330d4:
    #data 0x01a1
    #align4

PTR_ce330d8:
    #data loc_8c034dee
PTR_ce330dc:
    #data loc_8c04fea8
PTR_ce330e0:
    #data loc_8c0511b4
PTR_ce330e4:
    #data loc_8c034e8c
PTR_ce330e8:
    #data loc_8c051648
PTR_ce330ec:
    #data PTR_ce35900
PTR_ce330f0:
    #data loc_8c2896b0
PTR_ce330f4:
    #data loc_8c05218a
PTR_ce330f8:
    #data loc_8c05115a

;=============================================

LAB_ce330fc:
    mov 0x03,r6

LAB_ce330fe:
    mov.l @(PTR_ce331d8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce331dc,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov r14,r4
    mov 0x16,r5
    mov 0x0C,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce331e0,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3311e:
    mov.w @(DAT_ce331ca,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce331cc,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce331ce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3313e
    bra LAB_ce33140
    mov 0x02,r3

LAB_ce3313e:
    mov 0x00,r3

LAB_ce33140:
    mov.w @(DAT_ce331d0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce331e4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce331d2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce331a2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce331d4,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce331d6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33172
    mova @(DAT_ce331ec,pc),r0
    mov.l @(PTR_ce331e8,pc),r2
    fmov.s @r0,fr3
    bra LAB_ce3317a
    fmov.s @r2,fr5

LAB_ce33172:
    mov.l @(PTR_ce331e8,pc),r3
    mova @(DAT_ce331f0,pc),r0
    fmov.s @r0,fr3
    fmov.s @r3,fr5

LAB_ce3317a:
    mova @(DAT_ce331f4,pc),r0
    fadd fr3,fr5
    fmov.s @r0,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    mov.l @(PTR_ce331fc,pc),r3
    fsub fr3,fr5
    fdiv fr4,fr5
    fmov fr5,@(r0,r14)
    mova @(DAT_ce331f8,pc),r0
    fmov.s @r3,fr5
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x60,r0
    fadd fr3,fr5
    fsub fr2,fr5
    fdiv fr4,fr5
    fmov fr5,@(r0,r14)

LAB_ce331a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce331a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce331ca,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce331cc,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce331ce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33200
    bra LAB_ce33202
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331ca:
    #data 0x03f8
DAT_ce331cc:
    #data 0x0328
DAT_ce331ce:
    #data 0x0255
DAT_ce331d0:
    #data 0x03f1
DAT_ce331d2:
    #data 0x0141
DAT_ce331d4:
    #data 0x0142
DAT_ce331d6:
    #data 0x01d2
    #align4

PTR_ce331d8:
    #data loc_8c02fec4
PTR_ce331dc:
    #data loc_8c035162
PTR_ce331e0:
    #data loc_8c034e8c
PTR_ce331e4:
    #data loc_8c034dee
PTR_ce331e8:
    #data loc_8c26a524
DAT_ce331ec:
    #data 0xc3a00000
DAT_ce331f0:
    #data 0x43a00000
DAT_ce331f4:
    #data 0x42000000
DAT_ce331f8:
    #data 0x43092492
PTR_ce331fc:
    #data loc_8c26a5c0

;=============================================

LAB_ce33200:
    mov 0x00,r3

LAB_ce33202:
    mov.w @(DAT_ce3332a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33338,pc),r3
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
    fmov fr2,@(r0,r14)
    bf/s LAB_ce33252
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce33252:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bf LAB_ce33276
    mov.w @(0x1c,r14),r0
    cmp/eq 0x1C,r0
    bf LAB_ce332b4
    mov.l @(PTR_ce3333c,pc),r2
    mov 0x01,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33276:
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce33348,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce3332c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33340,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33344,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3334c,pc),r2
    mov 0x0B,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33350,pc),r3
    mov 0x16,r5
    mov 0x02,r6
    jsr @r3
    mov r14,r4

LAB_ce332b4:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce332bc:
    mov.w @(DAT_ce3332e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33330,pc),r0
    mov.l @(PTR_ce33338,pc),r3
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3333c,pc),r2
    mov 0x01,r5
    mov 0x08,r6
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
    mov.w @(DAT_ce33332,pc),r3
    mov r13,r5
    fmov fr4,@(r0,r14)
    mov 0x22,r0
    mov.b r3,@(r0,r14)
    bsr FUN_ce3365c
    mov r14,r4
    mov.w @(DAT_ce33334,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce33316
    mov 0x22,r0
    bra LAB_ce33318
    mov 0x05,r4

LAB_ce33316:
    mov 0x15,r4

LAB_ce33318:
    mov.b @(r0,r14),r2
    sub r4,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt/s LAB_ce33354
    mov 0x00,r12
    bra LAB_ce33360
    mov.b r12,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3332a:
    #data 0x03f1
DAT_ce3332c:
    #data 0x03f0
DAT_ce3332e:
    #data 0x03f8
DAT_ce33330:
    #data 0x0328
DAT_ce33332:
    #data 0x00ff
DAT_ce33334:
    #data 0x01d2
    #align4

PTR_ce33338:
    #data loc_8c034dee
PTR_ce3333c:
    #data loc_8c02fec4
DAT_ce33340:
    #data 0x42195555
DAT_ce33344:
    #data 0x42892492
PTR_ce33348:
    #data loc_8c050834
PTR_ce3334c:
    #data loc_8c042008
PTR_ce33350:
    #data loc_8c034e8c

;=============================================

LAB_ce33354:
    mov.b @(r0,r14),r2
    mov 0x06,r5
    extu.b r2,r2
    cmp/gt r5,r2
    bf LAB_ce33360
    mov.b r5,@(r0,r14)

LAB_ce33360:
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce3341e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce33386
    add r3,r4
    mov.w @(DAT_ce33420,pc),r0
    mov.w @(DAT_ce33422,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce33386
    mov.w @(DAT_ce33424,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33384
    bra LAB_ce33386
    mov 0x0B,r4

LAB_ce33384:
    mov 0x15,r4

LAB_ce33386:
    mov 0x22,r0
    mov r13,r5
    mov.b r4,@(r0,r14)
    bsr FUN_ce337dc
    mov r14,r4
    mov.w @(DAT_ce33426,pc),r0
    mov 0x5C,r2
    mov.l @(PTR_ce33434,pc),r3
    mov r13,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l r12,@(r0,r14)
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
    mov.l @r15+,r12
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce333c0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33428,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3342a,pc),r0
    mov 0x01,r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3342c,pc),r0
    mov.b r3,@(r0,r14)
    mov.b @(0x7,r14),r0
    tst r0,r0
    bt/s LAB_ce333ea
    mov r5,r13
    bra LAB_ce335cc
    nop

LAB_ce333ea:
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf/s LAB_ce33446
    mov 0x00,r12
    mov.w @(DAT_ce3342e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33446
    mov.l @(PTR_ce33438,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce3343c
    mov.w @(DAT_ce33430,pc),r0
    mov r13,r5
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce33432,pc),r0
    mov.b r12,@(r0,r14)
    add 0x01,r0
    mov.b r12,@(r0,r14)
    bsr FUN_ce33882
    mov r14,r4
    bra LAB_ce335d2
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3341e:
    #data 0x0525
DAT_ce33420:
    #data 0x0340
DAT_ce33422:
    #data 0x3000
DAT_ce33424:
    #data 0x01d2
DAT_ce33426:
    #data 0x01a1
DAT_ce33428:
    #data 0x03f8
DAT_ce3342a:
    #data 0x0328
DAT_ce3342c:
    #data 0x01f5
DAT_ce3342e:
    #data 0x019e
DAT_ce33430:
    #data 0x03f9
DAT_ce33432:
    #data 0x0327
    #align4

PTR_ce33434:
    #data loc_8c2896b0
PTR_ce33438:
    #data loc_8c05264c

;=============================================

LAB_ce3343c:
    mov 0x01,r0
    mov.w r0,@(0x1e,r14)
    mov.b @(0xc,r13),r0
    add 0xFF,r0
    mov.b r0,@(0xc,r13)

LAB_ce33446:
    mov.b @(0xc,r13),r0
    tst r0,r0
    bf LAB_ce3350c
    mov.w @(DAT_ce33548,pc),r0
    mov 0x5D,r2
    mov.w @(DAT_ce3354c,pc),r3
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce3354a,pc),r0
    mov.b r12,@(r0,r14)
    add 0x01,r0
    mov.b r12,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3354e,pc),r0
    mov.b r3,@(r0,r14)
    add 0xAA,r0
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3355c,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce33550,pc),r0
    mov.l @(PTR_ce33560,pc),r2
    mov.l @(r0,r14),r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33552,pc),r0
    mov.w @(DAT_ce33554,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce33556,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce33556,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce334c0
    mova @(DAT_ce33564,pc),r0
    bra LAB_ce334c4
    fmov.s @r0,fr3

LAB_ce334c0:
    mova @(DAT_ce33568,pc),r0
    fmov.s @r0,fr3

LAB_ce334c4:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce3356c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce3357c,pc),r3
    mov r15,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33570,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33574,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33578,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33558,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33580,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x06,r6
    jsr @r3
    mov r14,r4
    bra LAB_ce335d2
    nop

LAB_ce3350c:
    mov.l @(PTR_ce33584,pc),r2
    mov.w @(DAT_ce3355a,pc),r5
    jsr @r2
    mov r14,r4
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shlr2 r0
    shlr r0
    cmp/eq 0x00,r0
    bt LAB_ce33532
    cmp/eq 0x01,r0
    bt LAB_ce33588
    cmp/eq 0x02,r0
    bt LAB_ce3359e
    cmp/eq 0x03,r0
    bt LAB_ce335b4
    bra LAB_ce335c6
    nop

LAB_ce33532:
    mov r13,r5
    bsr FUN_ce338ec
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce335c6
    mov r13,r5
    bsr FUN_ce33a2c
    mov r14,r4
    bra LAB_ce335c6
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33548:
    #data 0x03f9
DAT_ce3354a:
    #data 0x0327
DAT_ce3354c:
    #data 0x00c6
DAT_ce3354e:
    #data 0x01f7
DAT_ce33550:
    #data 0x01b0
DAT_ce33552:
    #data 0x01c8
DAT_ce33554:
    #data 0x0130
DAT_ce33556:
    #data 0x01d2
DAT_ce33558:
    #data 0x01a0
DAT_ce3355a:
    #data 0x0960
    #align4

PTR_ce3355c:
    #data loc_8c2896b0
PTR_ce33560:
    #data loc_8c0523d8
DAT_ce33564:
    #data 0x3fd55555
DAT_ce33568:
    #data 0xbfd55555
DAT_ce3356c:
    #data 0x42092492
DAT_ce33570:
    #data 0xbf4db6db
DAT_ce33574:
    #data 0xc22d5555
DAT_ce33578:
    #data 0x42960000
PTR_ce3357c:
    #data loc_8c103660
PTR_ce33580:
    #data loc_8c034e8c
PTR_ce33584:
    #data loc_8c033718

;=============================================

LAB_ce33588:
    mov r13,r5
    bsr FUN_ce33a2c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce335c6
    mov r13,r5
    bsr FUN_ce33944
    mov r14,r4
    bra LAB_ce335c6
    nop

LAB_ce3359e:
    mov r13,r5
    bsr FUN_ce33944
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce335c6
    mov r13,r5
    bsr FUN_ce339a4
    mov r14,r4
    bra LAB_ce335c6
    nop

LAB_ce335b4:
    mov r13,r5
    bsr FUN_ce339a4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce335c6
    mov r13,r5
    bsr FUN_ce338ec
    mov r14,r4

LAB_ce335c6:
    mov.b @(0x7,r14),r0
    tst r0,r0
    bt LAB_ce335d2

LAB_ce335cc:
    mov r13,r5
    bsr FUN_ce335de
    mov r14,r4

LAB_ce335d2:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce335de:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    mov 0x04,r0
    mov.l @(PTR_ce33654,pc),r4
    sts.l PR,@-r15
    fmov.s @(r0,r13),fr3
    mov 0x0C,r0
    fmov.s @(r0,r4),fr2
    mov 0x34,r0
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x08,r0
    fmov.s @(r0,r13),fr3
    mov.w @(DAT_ce3364e,pc),r0
    fmov.s @(r0,r4),fr2
    mov 0x38,r0
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce33650,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt/s LAB_ce3361c
    mov r14,r4
    mov.w @(DAT_ce33650,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce3361c:
    mov.l @(PTR_ce33658,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33646
    mov.w @(DAT_ce33652,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3363c
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    bra FUN_ce33882
    mov.l @r15+,r14

LAB_ce3363c:
    mov r13,r5
    bsr FUN_ce3365c
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x7,r14)

LAB_ce33646:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3364e:
    #data 0x00a8
DAT_ce33650:
    #data 0x041c
DAT_ce33652:
    #data 0x0260
    #align4

PTR_ce33654:
    #data loc_8c26a518
PTR_ce33658:
    #data loc_8c034dee

;=============================================

FUN_ce3365c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.w @(DAT_ce33768,pc),r0
    add r0,r15
    mov r4,r14
    mov.w @(DAT_ce3376a,pc),r0
    mov.l @(PTR_ce33774,pc),r2
    mov r15,r4
    mov.l @(PTR_ce33778,pc),r3
    mov r5,r13
    add 0x0C,r4
    mov r15,r1
    jsr @r3
    add 0x0C,r1
    mov 0x22,r0
    mov.b @(r0,r14),r0
    mov.b r0,@(0xe,r13)
    mov.w @(DAT_ce3376c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3370c
    mova @(DAT_ce3377c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce3376e,pc),r0
    fmov.s @(r0,r14),fr2
    mov.w @(DAT_ce33770,pc),r0
    fadd fr3,fr2
    mov.l @(r0,r14),r3
    mov 0x38,r0
    fmov.s @(r0,r3),fr1
    fcmp/gt fr2,fr1
    bf LAB_ce3370c
    mov.w @(DAT_ce33770,pc),r0
    mov.l @(r0,r14),r2
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fmov.s @(r0,r2),fr2
    mov.w @(DAT_ce33770,pc),r0
    fsub fr3,fr2
    mov.l @(r0,r14),r3
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    fabs fr2
    fmov fr2,fr4
    fmov.s @(r0,r3),fr2
    mova @(DAT_ce33780,pc),r0
    fsub fr3,fr2
    fmov.s @r0,fr3
    fcmp/gt fr3,fr4
    fabs fr2
    bt/s LAB_ce3370c
    fmov fr2,fr5
    mova @(DAT_ce33784,pc),r0
    fmov.s @r0,fr2
    fcmp/gt fr2,fr5
    bt LAB_ce3370c
    mov.w @(DAT_ce33770,pc),r0
    fldi0 fr1
    mov.l @(r0,r14),r2
    mov 0x60,r0
    fmov.s @(r0,r2),fr0
    fcmp/gt fr0,fr1
    bt LAB_ce3370c
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll2 r0
    add r4,r0
    mov r0,r3
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    add 0xFF,r0
    mov.b @(r0,r3),r2
    mov 0x22,r0
    mov.l @(PTR_ce33788,pc),r3
    mov r0,r8
    mov.b r2,@(r0,r14)
    jsr @r3
    add r14,r8
    mov.w @(DAT_ce33772,pc),r2
    and 0x03,r0
    mov.b @r8,r3
    add r2,r0
    add r0,r3
    bra LAB_ce337be
    mov.b r3,@r8

LAB_ce3370c:
    mov.w @(DAT_ce33770,pc),r0
    mov r15,r1
    mov.l @(PTR_ce3378c,pc),r3
    mov.l @(r0,r14),r2
    add 0x34,r2
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce33770,pc),r0
    fldi0 fr3
    mov.l @(r0,r14),r1
    mov 0x60,r0
    fmov.s @(r0,r1),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33736
    mova @(DAT_ce33790,pc),r0
    fmov.s @r0,fr2
    mov 0x04,r0
    fmov.s @(r0,r15),fr1
    mov 0x04,r0
    fsub fr2,fr1
    fmov fr1,@(r0,r15)

LAB_ce33736:
    mov.l @(PTR_ce33794,pc),r3
    mov r14,r4
    mov r15,r5
    jsr @r3
    add 0x34,r4
    mov 0x22,r1
    add r14,r1
    mov.b r0,@r1
    mov 0x22,r0
    mov.b @(r0,r14),r4
    extu.b r4,r4
    mov r4,r3
    cmp/pz r3
    bt LAB_ce33754
    add 0x07,r3

LAB_ce33754:
    shar r3
    shar r3
    shar r3
    mov r4,r0
    nop
    cmp/pz r0
    bf/s LAB_ce33798
    mov 0x04,r1
    bra LAB_ce337a2
    and 0x07,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33768:
    #data 0xff74
DAT_ce3376a:
    #data 0x0080
DAT_ce3376c:
    #data 0x019e
DAT_ce3376e:
    #data 0x041c
DAT_ce33770:
    #data 0x020c
DAT_ce33772:
    #data 0x00ff
    #align4

PTR_ce33774:
    #data DAT_ce3554c
PTR_ce33778:
    #data loc_8c129620
DAT_ce3377c:
    #data 0x432b6db6
DAT_ce33780:
    #data 0x43ad5555
DAT_ce33784:
    #data 0x43892492
PTR_ce33788:
    #data loc_8c03319e
PTR_ce3378c:
    #data loc_8c1294c8
DAT_ce33790:
    #data 0x42cdb6db
PTR_ce33794:
    #data loc_8c03362c

;=============================================

LAB_ce33798:
    not r0,r0
    add 0x01,r0
    and 0x07,r0
    not r0,r0
    add 0x01,r0

LAB_ce337a2:
    cmp/ge r1,r0
    mov 0x22,r0
    movt r1
    add r1,r3
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r2
    mov.b @(0xe,r13),r0
    extu.b r2,r2
    cmp/eq r0,r2
    bf LAB_ce337be
    mov 0x22,r0
    mov.b @(r0,r14),r2
    add 0x10,r2
    mov.b r2,@(r0,r14)

LAB_ce337be:
    mov 0x22,r0
    mov r13,r5
    mov.b @(r0,r14),r2
    mov 0x1F,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    bsr FUN_ce337dc
    mov r14,r4
    mov.w @(DAT_ce338ba,pc),r1
    add r1,r15
    lds.l @r15+,PR
    mov.l @r15+,r8
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce337dc:
    mov 0x00,r7
    mov.l r14,@-r15
    mov r7,r0
    nop
    mov.w r0,@(0x1e,r4)
    mov 0x22,r0
    mov.b @(r0,r4),r14
    mov 0x10,r2
    extu.b r14,r3
    cmp/gt r2,r3
    bf/s LAB_ce33806
    mov r7,r6
    mov.w @(DAT_ce338bc,pc),r0
    mov 0x1F,r3
    xor r14,r3
    mov.w r7,@(r0,r4)
    mov r3,r14
    mov.w @(DAT_ce338be,pc),r0
    mov.b r7,@(r0,r4)
    bra LAB_ce33812
    add 0x01,r14

LAB_ce33806:
    mov.w @(DAT_ce338bc,pc),r0
    mov 0x01,r3
    mov r3,r1
    mov.w r3,@(r0,r4)
    mov.w @(DAT_ce338be,pc),r0
    mov.b r1,@(r0,r4)

LAB_ce33812:
    mov.w @(DAT_ce338c0,pc),r0
    mov.l @(PTR_ce338c8,pc),r2
    mov.l @(r0,r4),r3
    mov 0x34,r0
    fmov.s @r2,fr3
    fmov.s @(r0,r3),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33824
    mov 0x09,r6

LAB_ce33824:
    mov.w @(DAT_ce338be,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce33830
    mov 0x09,r3
    xor r3,r6

LAB_ce33830:
    mov.l @(PTR_ce338cc,pc),r0
    extu.b r14,r2
    shll2 r2
    mov.w @(r0,r2),r3
    mov.b @(0xc,r5),r0
    tst r0,r0
    bt/s LAB_ce33872
    add r3,r6
    mov.b @(0xc,r5),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33850
    mov.w @(DAT_ce338c2,pc),r0
    mov 0x5D,r2
    bra LAB_ce33854
    mov.b r2,@(r0,r4)

LAB_ce33850:
    mov.w @(DAT_ce338c2,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce33854:
    mov.w @(DAT_ce338c4,pc),r0
    mov.l @(PTR_ce338d0,pc),r3
    mov.w r7,@(r0,r4)
    add 0xF2,r0
    mov.b r7,@(r0,r4)
    add 0x26,r0
    mov.l r7,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce33872:
    mov.l @(PTR_ce338d4,pc),r0
    extu.b r14,r6
    shll2 r6
    mov.l @(PTR_ce338d8,pc),r3
    mov.w @(r0,r6),r6
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

;=============================================

FUN_ce33882:
    mov 0x0C,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce338be,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce33894
    mova @(DAT_ce338dc,pc),r0
    bra LAB_ce33898
    fmov.s @r0,fr3

LAB_ce33894:
    mova @(DAT_ce338e0,pc),r0
    fmov.s @r0,fr3

LAB_ce33898:
    mov 0x5C,r0
    mov.l @(PTR_ce338d8,pc),r3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fldi0 fr3
    mov 0x0D,r6
    fmov fr3,@(r0,r4)
    mova @(DAT_ce338e4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce338e8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x16,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce338ba:
    #data 0x008c
DAT_ce338bc:
    #data 0x0130
DAT_ce338be:
    #data 0x01d2
DAT_ce338c0:
    #data 0x020c
DAT_ce338c2:
    #data 0x01a1
DAT_ce338c4:
    #data 0x01ac
    #align4

PTR_ce338c8:
    #data loc_8c26a524
PTR_ce338cc:
    #data DAT_ce3593a
PTR_ce338d0:
    #data loc_8c2896b0
PTR_ce338d4:
    #data DAT_ce35938
PTR_ce338d8:
    #data loc_8c034e8c
DAT_ce338dc:
    #data 0xc0200000
DAT_ce338e0:
    #data 0x40200000
DAT_ce338e4:
    #data 0x41892492
DAT_ce338e8:
    #data 0xbf4db6db

;=============================================

FUN_ce338ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x22,r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x18,r0
    bt LAB_ce33912
    mov.l @(PTR_ce33a14,pc),r3
    mova @(DAT_ce33a10,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @r3,fr4
    fmov.s @(r0,r14),fr2
    fadd fr3,fr4
    fcmp/gt fr2,fr4
    bf LAB_ce3391c

LAB_ce33912:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3391c:
    mov 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.l @r15,r5
    bsr FUN_ce33a8c
    mov r14,r4
    mova @(DAT_ce33a18,pc),r0
    mov.l @r15,r2
    fmov.s @r0,fr3
    mov 0x08,r0
    mov.l @(PTR_ce33a1c,pc),r3
    mov 0x16,r5
    fmov fr3,@(r0,r2)
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33944:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x22,r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x08,r0
    bt LAB_ce33972
    mova @(DAT_ce33a20,pc),r0
    mov.l @(PTR_ce33a14,pc),r3
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr4
    mov.w @(DAT_ce33a06,pc),r0
    fmov.s @r3,fr5
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr4
    bf/s LAB_ce3397c
    fadd fr3,fr5
    fcmp/gt fr5,fr4
    bf LAB_ce3397c

LAB_ce33972:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3397c:
    mov 0x02,r0
    mov.b r0,@(0x7,r14)
    mov.l @r15,r5
    bsr FUN_ce33a8c
    mov r14,r4
    mova @(DAT_ce33a24,pc),r0
    mov.l @r15,r2
    fmov.s @r0,fr3
    mov 0x08,r0
    mov.l @(PTR_ce33a1c,pc),r3
    mov 0x16,r5
    fmov fr3,@(r0,r2)
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce339a4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x22,r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x10,r0
    bt LAB_ce339c0
    mov.w @(DAT_ce33a08,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bf LAB_ce339ca

LAB_ce339c0:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce339ca:
    mov 0x04,r0
    mov.b r0,@(0x7,r14)
    mov.l @r15,r5
    bsr FUN_ce33a8c
    mov r14,r4
    mova @(DAT_ce33a28,pc),r0
    mov.l @r15,r2
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.w @(DAT_ce33a0c,pc),r1
    mov 0x16,r5
    fmov fr3,@(r0,r2)
    mov 0x02,r6
    mov.w @(DAT_ce33a0a,pc),r0
    add r14,r1
    mov.w @(DAT_ce33a0a,pc),r2
    mov.b @(r0,r14),r0
    add r14,r2
    mov.l @(PTR_ce33a1c,pc),r3
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a06:
    #data 0x041c
DAT_ce33a08:
    #data 0x01fd
DAT_ce33a0a:
    #data 0x01d2
DAT_ce33a0c:
    #data 0x0130
    #align4

DAT_ce33a10:
    #data 0x42cdb6dc
PTR_ce33a14:
    #data loc_8c26a5c0
DAT_ce33a18:
    #data 0xc3092492
PTR_ce33a1c:
    #data loc_8c034e8c
DAT_ce33a20:
    #data 0xc3700000
DAT_ce33a24:
    #data 0x43700000
DAT_ce33a28:
    #data 0x43a00000

;=============================================

FUN_ce33a2c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x22,r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33a46
    mov.w @(DAT_ce33b5a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bf LAB_ce33a50

LAB_ce33a46:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33a50:
    mov 0x03,r0
    mov.b r0,@(0x7,r14)
    mov.l @r15,r5
    bsr FUN_ce33a8c
    mov r14,r4
    mova @(DAT_ce33b64,pc),r0
    mov.l @r15,r2
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.w @(DAT_ce33b5e,pc),r1
    mov 0x16,r5
    fmov fr3,@(r0,r2)
    mov 0x02,r6
    mov.w @(DAT_ce33b5c,pc),r0
    add r14,r1
    mov.w @(DAT_ce33b5c,pc),r2
    mov.b @(r0,r14),r0
    add r14,r2
    mov.l @(PTR_ce33b68,pc),r3
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33a8c:
    mov 0x34,r0
    mov.l @(PTR_ce33b6c,pc),r6
    fmov.s @(r0,r4),fr3
    mov 0x0C,r0
    fmov.s @(r0,r6),fr2
    mov 0x04,r0
    fsub fr3,fr2
    fmov fr2,@(r0,r5)
    mov 0x38,r0
    fmov.s @(r0,r4),fr3
    add 0x70,r0
    fmov.s @(r0,r6),fr2
    mov 0x08,r0
    fsub fr3,fr2
    rts
    fmov fr2,@(r0,r5)

LAB_ce33aac:
    mov.w @(DAT_ce33b60,pc),r0
    mov 0x01,r3
    mov 0x02,r5
    mov.b r3,@(r0,r4)
    add 0x03,r0
    mov.b r5,@(r0,r4)
    add 0x08,r0
    mov.b r5,@(r0,r4)
    mov.w @(0x1e,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r4)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce33ad2
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x08,r0
    mov.w r0,@(0x1e,r4)

LAB_ce33ad2:
    rts
    nop

LAB_ce33ad6:
    mov.w @(DAT_ce33b60,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r4
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33b62,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33afa
    mov.l @(PTR_ce33b70,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce33afa:
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce33b24
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce33b74,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33b78,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x18,r0
    mov.w r0,@(0x1e,r14)

LAB_ce33b24:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33b2a:
    mov.w @(DAT_ce33b60,pc),r0
    mov 0x01,r3
    mov 0x02,r5
    mov.b r3,@(r0,r4)
    add 0x03,r0
    mov.b r5,@(r0,r4)
    add 0x08,r0
    mov.b r5,@(r0,r4)
    mov.w @(0x1e,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33b98
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33b5c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce33b80
    mova @(DAT_ce33b7c,pc),r0
    bra LAB_ce33b84
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33b5a:
    #data 0x01fd
DAT_ce33b5c:
    #data 0x01d2
DAT_ce33b5e:
    #data 0x0130
DAT_ce33b60:
    #data 0x01ea
DAT_ce33b62:
    #data 0x0141
    #align4

DAT_ce33b64:
    #data 0xc3a00000
PTR_ce33b68:
    #data loc_8c034e8c
PTR_ce33b6c:
    #data loc_8c26a518
PTR_ce33b70:
    #data loc_8c034dee
DAT_ce33b74:
    #data 0x41092492
DAT_ce33b78:
    #data 0xbdcdb6db
DAT_ce33b7c:
    #data 0x40555555

;=============================================

LAB_ce33b80:
    mova @(DAT_ce33ce8,pc),r0
    fmov.s @r0,fr3

LAB_ce33b84:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce33cec,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce33cf0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)

LAB_ce33b98:
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

LAB_ce33bd2:
    mov.w @(DAT_ce33cdc,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r4
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33cde,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33bf6
    mov.l @(PTR_ce33cf4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce33bf6:
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
    mov.w @(DAT_ce33ce0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33c76
    mov.w @(DAT_ce33ce0,pc),r0
    mov 0x00,r4
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33ce2,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce33cde,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33c76
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33cf8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33cde,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33c76:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33c7c:
    mov.w @(DAT_ce33cdc,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x02,r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r13,@(r0,r14)
    add 0x08,r0
    mov.l @(PTR_ce33cf4,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33cde,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33d1c
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r3,r6
    mov r3,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33cde,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33ce2,pc),r0
    mov.l @(PTR_ce33cfc,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33ce4,pc),r0
    mov 0x26,r3
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r13,@(r0,r4)
    add 0xAB,r0
    mov.b r3,@(r0,r4)
    add 0x31,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33d04
    mova @(DAT_ce33d00,pc),r0
    bra LAB_ce33d08
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33cdc:
    #data 0x01ea
DAT_ce33cde:
    #data 0x0141
DAT_ce33ce0:
    #data 0x041c
DAT_ce33ce2:
    #data 0x01f9
DAT_ce33ce4:
    #data 0x01c8
    #align4

DAT_ce33ce8:
    #data 0xc0555555
DAT_ce33cec:
    #data 0xc1892492
DAT_ce33cf0:
    #data 0xc0092492
PTR_ce33cf4:
    #data loc_8c034dee
PTR_ce33cf8:
    #data loc_8c0423fc
PTR_ce33cfc:
    #data loc_8c02fec4
DAT_ce33d00:
    #data 0xc0d55555

;=============================================

LAB_ce33d04:
    mova @(DAT_ce33e0c,pc),r0
    fmov.s @r0,fr3

LAB_ce33d08:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33e10,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33e14,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce33d1c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33d24:
    mov.w @(DAT_ce33e04,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r4
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.l @(PTR_ce33e18,pc),r3
    mov.b r4,@(r0,r14)
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
    mov.w @(DAT_ce33e06,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33db8
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x05,r6
    mov.w @(DAT_ce33e06,pc),r0
    mov 0x01,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33e08,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33e1c,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33db8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33dbe:
    mov.w @(DAT_ce33e04,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r4
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.l @(PTR_ce33e18,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33dfe
    mov.w @(DAT_ce33e08,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce33df4
    lds.l @r15+,PR
    mov.l @(PTR_ce33e20,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33df4:
    lds.l @r15+,PR
    mov.l @(PTR_ce33e24,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33dfe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33e04:
    #data 0x01ea
DAT_ce33e06:
    #data 0x041c
DAT_ce33e08:
    #data 0x01f9
    #align4

DAT_ce33e0c:
    #data 0x40d55555
DAT_ce33e10:
    #data 0x41092492
DAT_ce33e14:
    #data 0xbf4db6db
PTR_ce33e18:
    #data loc_8c034dee
PTR_ce33e1c:
    #data loc_8c034e8c
PTR_ce33e20:
    #data loc_8c05176e
PTR_ce33e24:
    #data loc_8c051648

;=============================================

LAB_ce33e28:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33f8c,pc),r3
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
    mov.w @(DAT_ce33f84,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33eb0
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33f84,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33f86,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33f90,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33f94,pc),r2
    mov r14,r4
    mov 0x0E,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33eb0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33eb6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33f8c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33ed6
    mov.w @(DAT_ce33f86,pc),r0
    mov 0x01,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce33f98,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33ed6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33edc:
    mov r4,r3
    mov.l @(PTR_ce33f9c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33eee:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce33fa0,pc),r3
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
    mov.w @(DAT_ce33f86,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33f84,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33fa4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33fa8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33f88,pc),r0
    mov 0x5E,r2
    mov.l @(PTR_ce33fac,pc),r3
    mov 0x1C,r6
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
    mov.l @(PTR_ce33f94,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33f64:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33f8c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33fb0
    mov.l @(PTR_ce33f98,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33f84:
    #data 0x041c
DAT_ce33f86:
    #data 0x01f9
DAT_ce33f88:
    #data 0x01a1
    #align4

PTR_ce33f8c:
    #data loc_8c034dee
PTR_ce33f90:
    #data loc_8c0511b4
PTR_ce33f94:
    #data loc_8c034e8c
PTR_ce33f98:
    #data loc_8c051648
PTR_ce33f9c:
    #data PTR_ce3597c
PTR_ce33fa0:
    #data loc_8c035162
PTR_ce33fa4:
    #data loc_8c05218a
PTR_ce33fa8:
    #data loc_8c05115a
PTR_ce33fac:
    #data loc_8c2896b0

;=============================================

LAB_ce33fb0:
    mov.w @(DAT_ce340f0,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt/s LAB_ce33fde
    mov 0x00,r4
    mov.w @(DAT_ce340f0,pc),r0
    mov r15,r5
    mov.l @(PTR_ce34108,pc),r3
    mov.b r4,@(r0,r14)
    mova @(DAT_ce34100,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34104,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    bra LAB_ce33ff2
    nop

LAB_ce33fde:
    mov.w @(DAT_ce340f0,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce33ff2
    mov.w @(DAT_ce340f0,pc),r0
    mov 0x16,r5
    mov.l @(PTR_ce3410c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce33ff2:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33ffa:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce34028
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce340f2,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce340f4,pc),r0
    mov.l @(PTR_ce34110,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce34028:
    mov.l @(PTR_ce34114,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34058
    mov.l @(PTR_ce34118,pc),r3
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
    mov.l @(PTR_ce3411c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce34058:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3405e:
    mov r4,r3
    mov.l @(PTR_ce34120,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34070:
    mov.w @(DAT_ce340f6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3408c
    mov.w @(DAT_ce340fa,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce340f8,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3408c:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce34124,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce340f4,pc),r0
    mov 0x00,r4
    fldi0 fr4
    mov 0x62,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce340f2,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce340fc,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34128,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3412c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34110,pc),r3
    mov r14,r4
    mov 0x0F,r6
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce340f0:
    #data 0x0141
DAT_ce340f2:
    #data 0x01f9
DAT_ce340f4:
    #data 0x041c
DAT_ce340f6:
    #data 0x0255
DAT_ce340f8:
    #data 0x00ff
DAT_ce340fa:
    #data 0x03f0
DAT_ce340fc:
    #data 0x01a1
    #align4

DAT_ce34100:
    #data 0x41c80000
DAT_ce34104:
    #data 0x4322db6d
PTR_ce34108:
    #data loc_8c050ea4
PTR_ce3410c:
    #data loc_8c04223a
PTR_ce34110:
    #data loc_8c034e8c
PTR_ce34114:
    #data loc_8c034dee
PTR_ce34118:
    #data loc_8c035162
PTR_ce3411c:
    #data loc_8c051648
PTR_ce34120:
    #data PTR_ce35984
PTR_ce34124:
    #data loc_8c05218a
PTR_ce34128:
    #data loc_8c2896b0
PTR_ce3412c:
    #data loc_8c05115a

;=============================================

LAB_ce34130:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34218,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3421a,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3421c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce34152
    bra LAB_ce34154
    mov 0x02,r3

LAB_ce34152:
    mov 0x00,r3

LAB_ce34154:
    mov.w @(DAT_ce3421e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3422c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34220,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34198
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce34238,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce34220,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce34222,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce34230,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34234,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce34198:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce341a0:
    mov.w @(DAT_ce34218,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3421a,pc),r0
    mov.l @(PTR_ce3422c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34224,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce341ee
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x56,r0
    mov 0x62,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3423c,pc),r3
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
    mov.w @(DAT_ce34226,pc),r0
    mov.w r2,@(r0,r14)

LAB_ce341ee:
    mov.w @(DAT_ce34220,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34212
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34228,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce34240,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34244,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce34212:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34218:
    #data 0x03f8
DAT_ce3421a:
    #data 0x0328
DAT_ce3421c:
    #data 0x0255
DAT_ce3421e:
    #data 0x03f1
DAT_ce34220:
    #data 0x0141
DAT_ce34222:
    #data 0x03f0
DAT_ce34224:
    #data 0x014b
DAT_ce34226:
    #data 0x01ac
DAT_ce34228:
    #data 0x01f9
    #align4

PTR_ce3422c:
    #data loc_8c034dee
DAT_ce34230:
    #data 0x41f00000
DAT_ce34234:
    #data 0x42f00000
PTR_ce34238:
    #data loc_8c050834
PTR_ce3423c:
    #data loc_8c2896b0
DAT_ce34240:
    #data 0x42092492
DAT_ce34244:
    #data 0xbf4db6db

;=============================================

LAB_ce34248:
    mov.w @(DAT_ce34384,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce34386,pc),r0
    mov.l @(PTR_ce34394,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3426c
    mov r14,r4
    mov.w @(DAT_ce34388,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3426c:
    mov.l @(PTR_ce34398,pc),r3
    jsr @r3
    nop
    mov 0x60,r1
    mov.l @(PTR_ce3439c,pc),r5
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
    mova @(DAT_ce343a0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt/s LAB_ce342f6
    mov 0x00,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3438a,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3438c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce343a4,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x64,r3
    mov.w @(DAT_ce3438e,pc),r0
    mov 0x10,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r5,r3
    mov 0x16,r5
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.w @(DAT_ce34390,pc),r0
    mov.l @(PTR_ce343a8,pc),r3
    mov.w r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce342f6:
    mov.w @(DAT_ce34392,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34328
    mov.b r4,@(r0,r14)
    add 0x56,r0
    mov 0x63,r3
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
    mov 0x10,r3
    mov.w @(DAT_ce34390,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce34328:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3432e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    and 0x01,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce34348
    mov.l @(PTR_ce34398,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce34348:
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
    mova @(DAT_ce343ac,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3437e
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce343b0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce3437e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34384:
    #data 0x03f8
DAT_ce34386:
    #data 0x0328
DAT_ce34388:
    #data 0x0142
DAT_ce3438a:
    #data 0x03f9
DAT_ce3438c:
    #data 0x0327
DAT_ce3438e:
    #data 0x01a1
DAT_ce34390:
    #data 0x01ac
DAT_ce34392:
    #data 0x014b
    #align4

PTR_ce34394:
    #data loc_8c055d54
PTR_ce34398:
    #data loc_8c034dee
PTR_ce3439c:
    #data loc_8c2896b0
DAT_ce343a0:
    #data 0x40892492
DAT_ce343a4:
    #data 0xbd892492
PTR_ce343a8:
    #data loc_8c034e8c
DAT_ce343ac:
    #data 0x40092492
DAT_ce343b0:
    #data 0xbf3c9249

;=============================================

LAB_ce343b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce344e4,pc),r3
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
    mov.w @(DAT_ce344dc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3440e
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce344dc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce344de,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce344e8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce344ec,pc),r2
    mov r14,r4
    mov 0x11,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3440e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34414:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce344e4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34440
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce344f0,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce34440:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34446:
    mov r4,r3
    mov.l @(PTR_ce344f4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34458:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce344f8,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    mov.l @(DAT_ce344fc,pc),r1
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce344de,pc),r0
    lds r1,FPUL
    mov.b r3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce34500,pc),r0
    fmov.s @r0,fr2
    mov 0x5C,r0
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce344e0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce34498
    fldi0 fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fneg fr2
    fmov fr2,@(r0,r14)

LAB_ce34498:
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce34504,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x3C,r3
    fmov fr3,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce344e2,pc),r0
    mov r4,r6
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34508,pc),r3
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
    mov.l @(PTR_ce344ec,pc),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce344dc:
    #data 0x041c
DAT_ce344de:
    #data 0x01f9
DAT_ce344e0:
    #data 0x01d2
DAT_ce344e2:
    #data 0x01a1
    #align4

PTR_ce344e4:
    #data loc_8c034dee
PTR_ce344e8:
    #data loc_8c0511b4
PTR_ce344ec:
    #data loc_8c034e8c
PTR_ce344f0:
    #data loc_8c051648
PTR_ce344f4:
    #data PTR_ce359a0
PTR_ce344f8:
    #data loc_8c035162
DAT_ce344fc:
    #data 0x42cdb6db
DAT_ce34500:
    #data 0x41d55555
DAT_ce34504:
    #data 0xbf092492
PTR_ce34508:
    #data loc_8c2896b0

;=============================================

LAB_ce3450c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34648,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce3464c,pc),r3
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
    bt LAB_ce34574
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce34650,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34654,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce34574:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3457a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34648,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34594
    lds.l @r15+,PR
    mov.l @(PTR_ce34658,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34594:
    mov.w @(DAT_ce34638,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce345a0
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce345a0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce345a6:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce3463a,pc),r1
    mov.l @(PTR_ce3465c,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce345be:
    mov.w @(DAT_ce3463c,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3463e,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce34664
    mov.w @(DAT_ce34640,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34608
    mov.w @(DAT_ce34642,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34608
    mov 0x22,r0
    mov.l @(PTR_ce34660,pc),r1
    mov.b @(r0,r14),r2
    mov 0x03,r3
    xor r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34664
    mov r0,r4
    bra LAB_ce3462a
    mov 0x05,r2

LAB_ce34608:
    mov.w @(DAT_ce34640,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34664
    mov.w @(DAT_ce34642,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34664
    mov.l @(PTR_ce34660,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34664
    mov r0,r4
    mov 0x00,r2

LAB_ce3462a:
    mov.w @(DAT_ce34644,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34638:
    #data 0x0141
DAT_ce3463a:
    #data 0x01f9
DAT_ce3463c:
    #data 0x01fa
DAT_ce3463e:
    #data 0x0c00
DAT_ce34640:
    #data 0x01fe
DAT_ce34642:
    #data 0x01a3
DAT_ce34644:
    #data 0x01f7
    #align4

PTR_ce34648:
    #data loc_8c034dee
PTR_ce3464c:
    #data loc_8c052ce2
PTR_ce34650:
    #data loc_8c0511b4
PTR_ce34654:
    #data loc_8c034e8c
PTR_ce34658:
    #data loc_8c051854
PTR_ce3465c:
    #data PTR_ce359ac
PTR_ce34660:
    #data loc_8c045790

;=============================================

LAB_ce34664:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3466c:
    rts
    mov 0x00,r0

LAB_ce34670:
    mov.w @(DAT_ce34722,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce34724,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce34702
    mov.w @(DAT_ce34726,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce346c6
    mov.w @(DAT_ce34728,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce346c6
    mova @(DAT_ce3472c,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce346c6
    mov 0x22,r0
    mov.l @(PTR_ce34730,pc),r1
    mov.b @(r0,r14),r2
    mov 0x03,r3
    xor r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34702
    mov r0,r4
    bra LAB_ce346f4
    mov 0x02,r2

LAB_ce346c6:
    mov.w @(DAT_ce34726,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34702
    mov.w @(DAT_ce34728,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34702
    mova @(DAT_ce3472c,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce34702
    mov.l @(PTR_ce34730,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34702
    mov r0,r4
    mov 0x01,r2

LAB_ce346f4:
    mov.w @(DAT_ce3472a,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34702:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3470a:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce3472a,pc),r1
    mov.l @(PTR_ce34734,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34722:
    #data 0x01fa
DAT_ce34724:
    #data 0x0c00
DAT_ce34726:
    #data 0x01fe
DAT_ce34728:
    #data 0x01a3
DAT_ce3472a:
    #data 0x01f7
    #align4

DAT_ce3472c:
    #data 0x43092492
PTR_ce34730:
    #data loc_8c045790
PTR_ce34734:
    #data PTR_ce359bc

;=============================================

LAB_ce34738:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34888,pc),r3
    jsr @r3
    mov r4,r14
    mova @(DAT_ce3488c,pc),r0
    mov.l @(PTR_ce34894,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34890,pc),r0
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
    mov.w @(DAT_ce3487e,pc),r0
    mov 0x0A,r2
    mov.w @(DAT_ce34880,pc),r1
    mov.b r2,@(r0,r14)
    add 0x28,r0
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34882,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bf/s LAB_ce347b6
    mov 0x00,r6
    mov.w @(DAT_ce34882,pc),r0
    mov.w @(DAT_ce34880,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34882,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce34884,pc),r0
    mov.w @(DAT_ce34880,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34882,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce347b6:
    mov.l @(PTR_ce34898,pc),r3
    mov 0x0F,r5
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce347c6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34888,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34884,pc),r0
    mov.w @(DAT_ce34880,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34882,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bf LAB_ce34820
    mov.w @(DAT_ce34882,pc),r0
    mov.w @(DAT_ce34880,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34882,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce34884,pc),r0
    mov.w @(DAT_ce34880,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34882,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce34820:
    mov.w @(DAT_ce34882,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3482e
    mova @(DAT_ce3489c,pc),r0
    bra LAB_ce34832
    fmov.s @r0,fr3

LAB_ce3482e:
    mova @(DAT_ce348a0,pc),r0
    fmov.s @r0,fr3

LAB_ce34832:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce348a4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce34894,pc),r3
    mov r15,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce348a8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce348ac,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce348b0,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3487e,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce34898,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3487e:
    #data 0x01a0
DAT_ce34880:
    #data 0x0130
DAT_ce34882:
    #data 0x01d2
DAT_ce34884:
    #data 0x01c8
    #align4

PTR_ce34888:
    #data loc_8c056f2a
DAT_ce3488c:
    #data 0xc2a00000
DAT_ce34890:
    #data 0x43384924
PTR_ce34894:
    #data loc_8c103660
PTR_ce34898:
    #data loc_8c034e8c
DAT_ce3489c:
    #data 0xc0555555
DAT_ce348a0:
    #data 0x40555555
DAT_ce348a4:
    #data 0xc0892492
DAT_ce348a8:
    #data 0xbf4db6db
DAT_ce348ac:
    #data 0xc2480000
DAT_ce348b0:
    #data 0x431e9249

;=============================================

LAB_ce348b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce349f8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce349ec,pc),r0
    mov.w @(DAT_ce349ee,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce349f0,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bt/s LAB_ce34910
    fldi0 fr4
    mov.w @(DAT_ce349f0,pc),r0
    mov.w @(DAT_ce349ee,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce349f0,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce349ec,pc),r0
    mov.w @(DAT_ce349ee,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce349f0,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce34910:
    mov 0x60,r0
    mov.l @(PTR_ce34a04,pc),r3
    fmov fr4,@(r0,r14)
    mova @(DAT_ce349fc,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34a00,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce349f2,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce34a08,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x02,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34946:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce349f8,pc),r3
    jsr @r3
    mov r4,r14
    mova @(DAT_ce34a0c,pc),r0
    mov.l @(PTR_ce34a04,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34a10,pc),r0
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
    mov.w @(DAT_ce349f2,pc),r0
    mov 0x0A,r2
    mov.w @(DAT_ce349ee,pc),r1
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    add 0x32,r0
    mov.b @(r0,r14),r0
    add r14,r1
    mov.w @(DAT_ce349f0,pc),r2
    mov 0x03,r6
    extu.b r0,r0
    mov.l @(PTR_ce34a08,pc),r3
    xor 0x01,r0
    add r14,r2
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce349ec,pc),r0
    mov.w @(DAT_ce349f0,pc),r2
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce349ee,pc),r1
    add r4,r2
    extu.b r0,r0
    xor 0x01,r0
    add r4,r1
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce349f4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce349ba:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce349f8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce349ec,pc),r0
    mov.w @(DAT_ce349ee,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce349f0,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce349f0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34a18
    mova @(DAT_ce34a14,pc),r0
    bra LAB_ce34a1c
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce349ec:
    #data 0x01c8
DAT_ce349ee:
    #data 0x0130
DAT_ce349f0:
    #data 0x01d2
DAT_ce349f2:
    #data 0x01a0
DAT_ce349f4:
    #data 0x041c
    #align4

PTR_ce349f8:
    #data loc_8c056f2a
DAT_ce349fc:
    #data 0x413aaaaa
DAT_ce34a00:
    #data 0x43654924
PTR_ce34a04:
    #data loc_8c103660
PTR_ce34a08:
    #data loc_8c034e8c
DAT_ce34a0c:
    #data 0xc2a00000
DAT_ce34a10:
    #data 0x43384924
DAT_ce34a14:
    #data 0x40d55555

;=============================================

LAB_ce34a18:
    mova @(DAT_ce34b74,pc),r0
    fmov.s @r0,fr3

LAB_ce34a1c:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce34b78,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce34b88,pc),r3
    mov r15,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34b7c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34b80,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34b84,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34b68,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce34b8c,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x04,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34a68:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34b90,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34b6a,pc),r0
    mov.w @(DAT_ce34b6c,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34b6e,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bt/s LAB_ce34ac2
    mov 0x05,r6
    mov.w @(DAT_ce34b6e,pc),r0
    mov.w @(DAT_ce34b6c,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34b6e,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce34b6a,pc),r0
    mov.w @(DAT_ce34b6c,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34b6e,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce34ac2:
    lds.l @r15+,PR
    mov.l @(PTR_ce34b8c,pc),r3
    mov 0x0F,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34ace:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34b6a,pc),r0
    mov r4,r14
    mov.w @(DAT_ce34b6c,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34b6e,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce34b6e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34b00
    mova @(DAT_ce34b94,pc),r0
    bra LAB_ce34b04
    fmov.s @r0,fr3

LAB_ce34b00:
    mova @(DAT_ce34b98,pc),r0
    fmov.s @r0,fr3

LAB_ce34b04:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce34b9c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce34b88,pc),r3
    mov r15,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34b7c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34b80,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34b84,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34b8c,pc),r2
    mov 0x0F,r5
    mov 0x06,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34b4a:
    mov.w @(DAT_ce34b70,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34ba0,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34b68:
    #data 0x01a0
DAT_ce34b6a:
    #data 0x01c8
DAT_ce34b6c:
    #data 0x0130
DAT_ce34b6e:
    #data 0x01d2
DAT_ce34b70:
    #data 0x01ea
    #align4

DAT_ce34b74:
    #data 0xc0d55555
DAT_ce34b78:
    #data 0x41092492
DAT_ce34b7c:
    #data 0xbf4db6db
DAT_ce34b80:
    #data 0xc22d5555
DAT_ce34b84:
    #data 0x42960000
PTR_ce34b88:
    #data loc_8c103660
PTR_ce34b8c:
    #data loc_8c034e8c
PTR_ce34b90:
    #data loc_8c056f2a
DAT_ce34b94:
    #data 0x3fd55555
DAT_ce34b98:
    #data 0xbfd55555
DAT_ce34b9c:
    #data 0x42092492
PTR_ce34ba0:
    #data PTR_ce359d8

;=============================================

LAB_ce34ba4:
    mov r4,r3
    mov.l @(PTR_ce34cb4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34bb6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce34bca
    mov.b @(0x7,r14),r0
    add 0x01,r0
    bra LAB_ce34c14
    mov.b r0,@(0x7,r14)

LAB_ce34bca:
    mov.l @(PTR_ce34cb8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce34cac,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34c14
    mov.b @(0x6,r14),r0
    mov 0x05,r6
    mov.l @(PTR_ce34cbc,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34cae,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34bf6
    mova @(DAT_ce34cc0,pc),r0
    bra LAB_ce34bfa
    fmov.s @r0,fr3

LAB_ce34bf6:
    mova @(DAT_ce34cc4,pc),r0
    fmov.s @r0,fr3

LAB_ce34bfa:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34cc8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34ccc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce34c14:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34c1a:
    mov.w @(DAT_ce34cac,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34c2e
    mov.l @(PTR_ce34cb8,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce34c2e:
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
    bt/s LAB_ce34ca6
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce34cb0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce34ca6
    mov.b @(0x6,r14),r0
    mov 0x00,r6
    fldi0 fr4
    mov r14,r4
    add 0x01,r0
    mov.l @(PTR_ce34cbc,pc),r3
    mov.b r0,@(0x6,r14)
    mov r6,r5
    mov.w @(DAT_ce34cb0,pc),r0
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
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce34ca6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34cac:
    #data 0x0141
DAT_ce34cae:
    #data 0x01d2
DAT_ce34cb0:
    #data 0x041c
    #align4

PTR_ce34cb4:
    #data PTR_ce359f4
PTR_ce34cb8:
    #data loc_8c034dee
PTR_ce34cbc:
    #data loc_8c02fec4
DAT_ce34cc0:
    #data 0xc0555555
DAT_ce34cc4:
    #data 0x40555555
DAT_ce34cc8:
    #data 0x41892492
DAT_ce34ccc:
    #data 0xbfcdb6db

;=============================================

LAB_ce34cd0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34ddc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34dd4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34d3e
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x20,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34dd4,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x03,r3
    mov.w @(DAT_ce34dd6,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
    add 0x31,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34d10
    mova @(DAT_ce34de0,pc),r0
    bra LAB_ce34d14
    fmov.s @r0,fr3

LAB_ce34d10:
    mova @(DAT_ce34de4,pc),r0
    fmov.s @r0,fr3

LAB_ce34d14:
    mov 0x5C,r0
    mov.l @(PTR_ce34df0,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34de8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34dec,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34df4,pc),r4
    mov 0x02,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce34d3e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34d44:
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
    mov.w @(DAT_ce34dd8,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce34d9c
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34dd8,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce34dda,pc),r0
    mov.b r3,@(r0,r4)

LAB_ce34d9c:
    rts
    nop

;=============================================

FUN_ce34da0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34ddc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34dba
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce34df8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34dba:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce34dc2:
    mov r4,r3
    mov.l @(PTR_ce34dfc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34dd4:
    #data 0x0141
DAT_ce34dd6:
    #data 0x01c8
DAT_ce34dd8:
    #data 0x041c
DAT_ce34dda:
    #data 0x01f9
    #align4

PTR_ce34ddc:
    #data loc_8c034dee
DAT_ce34de0:
    #data 0x40555555
DAT_ce34de4:
    #data 0xc0555555
DAT_ce34de8:
    #data 0x41092492
DAT_ce34dec:
    #data 0xbf4db6db
PTR_ce34df0:
    #data loc_8c05218a
PTR_ce34df4:
    #data loc_8c26a518
PTR_ce34df8:
    #data loc_8c051648
PTR_ce34dfc:
    #data PTR_ce35a08

;=============================================

LAB_ce34e00:
    mov.w @(DAT_ce34f08,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34e14
    mov.l @(PTR_ce34f10,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce34e14:
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
    mov.w @(DAT_ce34f0a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce34e86
    mov.w @(DAT_ce34f0a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34f08,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34e86
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34f08,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce34e86:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34e8c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34f10,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34f08,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34efa
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x21,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34f08,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x03,r3
    mov.w @(DAT_ce34f0c,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
    add 0x31,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34ecc
    mova @(DAT_ce34f14,pc),r0
    bra LAB_ce34ed0
    fmov.s @r0,fr3

LAB_ce34ecc:
    mova @(DAT_ce34f18,pc),r0
    fmov.s @r0,fr3

LAB_ce34ed0:
    mov 0x5C,r0
    mov.l @(PTR_ce34f24,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34f1c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34f20,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34f28,pc),r4
    mov 0x02,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce34efa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34f00:
    bra LAB_ce34d44
    nop

LAB_ce34f04:
    bra FUN_ce34da0
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34f08:
    #data 0x0141
DAT_ce34f0a:
    #data 0x041c
DAT_ce34f0c:
    #data 0x01c8
    #align4

PTR_ce34f10:
    #data loc_8c034dee
DAT_ce34f14:
    #data 0x40555555
DAT_ce34f18:
    #data 0xc0555555
DAT_ce34f1c:
    #data 0x41092492
DAT_ce34f20:
    #data 0xbf4db6db
PTR_ce34f24:
    #data loc_8c05218a
PTR_ce34f28:
    #data loc_8c26a518

;=============================================

LAB_ce34f2c:
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
    mov.w @(DAT_ce3503c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce34f84
    mov.w @(DAT_ce3503c,pc),r0
    mov 0x00,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3503e,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce34f84:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce34f96
    mov.l @(PTR_ce35044,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34fb4

LAB_ce34f96:
    mov.w @(DAT_ce3503e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce34faa
    lds.l @r15+,PR
    mov.l @(PTR_ce35048,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34faa:
    lds.l @r15+,PR
    mov.l @(PTR_ce3504c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34fb4:
    mov.w @(DAT_ce35040,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34fdc
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x22,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce35040,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce35042,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)

LAB_ce34fdc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34fe2:
    mov r4,r3
    mov.l @(PTR_ce35050,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34ff4:
    bra LAB_ce34bb6
    nop

LAB_ce34ff8:
    bra LAB_ce34c1a
    nop

LAB_ce34ffc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce35044,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce35040,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce35086
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x23,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce35040,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x03,r3
    mov.w @(DAT_ce35042,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
    add 0x31,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce35058
    mova @(DAT_ce35054,pc),r0
    bra LAB_ce3505c
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3503c:
    #data 0x041c
DAT_ce3503e:
    #data 0x01f9
DAT_ce35040:
    #data 0x0141
DAT_ce35042:
    #data 0x01c8
    #align4

PTR_ce35044:
    #data loc_8c034dee
PTR_ce35048:
    #data loc_8c05176e
PTR_ce3504c:
    #data loc_8c051648
PTR_ce35050:
    #data PTR_ce35a18
DAT_ce35054:
    #data 0x40555555

;=============================================

LAB_ce35058:
    mova @(DAT_ce351a8,pc),r0
    fmov.s @r0,fr3

LAB_ce3505c:
    mov 0x5C,r0
    mov.l @(PTR_ce351b4,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce351ac,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce351b0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce351b8,pc),r4
    mov 0x02,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce35086:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3508c:
    bra LAB_ce34d44
    nop

LAB_ce35090:
    bra FUN_ce34da0
    nop

LAB_ce35094:
    mov r4,r3
    mov.l @(PTR_ce351bc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce350a6:
    mov.w @(DAT_ce3519e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce350ba
    mov.l @(PTR_ce351c0,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce350ba:
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
    mov.w @(DAT_ce351a0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3513a
    mov.w @(DAT_ce351a0,pc),r0
    mov 0x00,r4
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce351a2,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3519e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3513a
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce351c4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3519e,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3513a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce35140:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce351c0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3519e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce35198
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x24,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3519e,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce351a4,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
    add 0x31,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce35180
    mova @(DAT_ce351c8,pc),r0
    bra LAB_ce35184
    fmov.s @r0,fr3

LAB_ce35180:
    mova @(DAT_ce351cc,pc),r0
    fmov.s @r0,fr3

LAB_ce35184:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce351d0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce351b0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce35198:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3519e:
    #data 0x0141
DAT_ce351a0:
    #data 0x041c
DAT_ce351a2:
    #data 0x01f9
DAT_ce351a4:
    #data 0x01c8
    #align4

DAT_ce351a8:
    #data 0xc0555555
DAT_ce351ac:
    #data 0x414db6db
DAT_ce351b0:
    #data 0xbf4db6db
PTR_ce351b4:
    #data loc_8c05218a
PTR_ce351b8:
    #data loc_8c26a518
PTR_ce351bc:
    #data PTR_ce35a2c
PTR_ce351c0:
    #data loc_8c034dee
PTR_ce351c4:
    #data loc_8c0423fc
DAT_ce351c8:
    #data 0xc0d55555
DAT_ce351cc:
    #data 0x40d55555
DAT_ce351d0:
    #data 0x41092492

;=============================================

LAB_ce351d4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3531c,pc),r3
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
    mov.w @(DAT_ce3530c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3523e
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce35320,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r5
    mov.w @(DAT_ce3530c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3523e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce35244:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3531c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce35272
    mov.w @(DAT_ce3530e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce35268
    lds.l @r15+,PR
    mov.l @(PTR_ce35324,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce35268:
    lds.l @r15+,PR
    mov.l @(PTR_ce35328,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce35272:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce35278:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce3531c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce35298
    mov.l @(PTR_ce35328,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce35298:
    mov.w @(DAT_ce35310,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce352c6
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce3532c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce35330,pc),r0
    mov.l @(PTR_ce35334,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce35312,pc),r0
    mov 0x0A,r2
    mov.b r2,@(r0,r14)

LAB_ce352c6:
    mov.w @(DAT_ce35314,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce352ec
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce35316,pc),r0
    mov 0x25,r2
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.l @(PTR_ce35338,pc),r3
    mov.b r2,@(r0,r4)
    jsr @r3
    mov r14,r4

LAB_ce352ec:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce352f4:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce35318,pc),r1
    mov.l @(PTR_ce3533c,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3530c:
    #data 0x041c
DAT_ce3530e:
    #data 0x01f9
DAT_ce35310:
    #data 0x014b
DAT_ce35312:
    #data 0x01a0
DAT_ce35314:
    #data 0x0141
DAT_ce35316:
    #data 0x01c8
DAT_ce35318:
    #data 0x01f7
    #align4

PTR_ce3531c:
    #data loc_8c034dee
PTR_ce35320:
    #data loc_8c034e8c
PTR_ce35324:
    #data loc_8c05176e
PTR_ce35328:
    #data loc_8c051648
DAT_ce3532c:
    #data 0x42555555
DAT_ce35330:
    #data 0x42f00000
PTR_ce35334:
    #data loc_8c103660
PTR_ce35338:
    #data loc_8c0423fc
PTR_ce3533c:
    #data PTR_ce35a3c

;=============================================

LAB_ce35340:
    mov.w @(DAT_ce35434,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce35436,pc),r1
    mov.l @(r0,r14),r0
    mov.b @(r0,r1),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce3535a
    cmp/eq 0x02,r0
    bt LAB_ce35366
    bra LAB_ce35382
    nop

LAB_ce3535a:
    mov.w @(DAT_ce35434,pc),r0
    mov r14,r5
    mov.l @(PTR_ce35440,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce35366:
    mov.w @(DAT_ce35434,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce35438,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce35382
    mov.w @(DAT_ce35434,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce35438,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)

LAB_ce35382:
    mov.w @(DAT_ce35434,pc),r0
    mov r14,r5
    mov.l @(PTR_ce35444,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3538e:
    mov.w @(DAT_ce35434,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(r0,r14),r3
    add 0x83,r0
    mov.b @(r0,r3),r2
    tst r2,r2
    bt LAB_ce353aa
    mov.w @(DAT_ce35434,pc),r0
    mov r14,r5
    mov.l @(PTR_ce35440,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce353aa:
    mov.w @(DAT_ce35434,pc),r0
    mov r14,r5
    mov.l @(PTR_ce35444,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce353b6:
    mov.w @(DAT_ce35434,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce35436,pc),r1
    mov.l @(r0,r14),r0
    mov.b @(r0,r1),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce353d0
    cmp/eq 0x02,r0
    bt LAB_ce353dc
    bra LAB_ce353f8
    nop

LAB_ce353d0:
    mov.w @(DAT_ce35434,pc),r0
    mov r14,r5
    mov.l @(PTR_ce35440,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce353dc:
    mov.w @(DAT_ce35434,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce35438,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce353f8
    mov.w @(DAT_ce35434,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce35438,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)

LAB_ce353f8:
    mov.w @(DAT_ce35434,pc),r0
    mov r14,r5
    mov.l @(PTR_ce35444,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce35404:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3543a,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce35422
    mov 0x07,r5
    cmp/eq 0x01,r0
    bt LAB_ce35422
    cmp/eq 0x02,r0
    bt LAB_ce35428
    bra LAB_ce3542e
    nop

LAB_ce35422:
    mov.w @(DAT_ce3543c,pc),r0
    bra LAB_ce3542e
    mov.b r5,@(r0,r4)

LAB_ce35428:
    mov.w @(DAT_ce3543c,pc),r0
    mov 0x0B,r2
    mov.b r2,@(r0,r4)

LAB_ce3542e:
    mov.l @(PTR_ce35448,pc),r2
    jmp @r2
    mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce35434:
    #data 0x01c8
DAT_ce35436:
    #data 0x014b
DAT_ce35438:
    #data 0x041c
DAT_ce3543a:
    #data 0x04c9
DAT_ce3543c:
    #data 0x01e9
    #align4

PTR_ce35440:
    #data loc_8c04ce3a
PTR_ce35444:
    #data loc_8c04cc1c
PTR_ce35448:
    #data loc_8c0530d8

;=============================================

LAB_ce3544c:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce35536,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3546a
    mov 0x07,r5
    cmp/eq 0x01,r0
    bt LAB_ce3546a
    cmp/eq 0x02,r0
    bt LAB_ce35470
    bra LAB_ce35476
    nop

LAB_ce3546a:
    mov.w @(DAT_ce35538,pc),r0
    bra LAB_ce35476
    mov.b r5,@(r0,r4)

LAB_ce35470:
    mov.w @(DAT_ce35538,pc),r0
    mov 0x0B,r2
    mov.b r2,@(r0,r4)

LAB_ce35476:
    mov.l @(PTR_ce35540,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce3547c:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce35536,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3549e
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce354a4
    cmp/eq 0x02,r0
    bt LAB_ce354aa
    bra LAB_ce354b4
    nop

LAB_ce3549e:
    mov.w @(DAT_ce35538,pc),r0
    bra LAB_ce354b0
    mov.b r5,@(r0,r4)

LAB_ce354a4:
    mov.w @(DAT_ce35538,pc),r0
    bra LAB_ce354b0
    mov.b r6,@(r0,r4)

LAB_ce354aa:
    mov.w @(DAT_ce35538,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce354b0:
    mov.w @(DAT_ce3553a,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce354b4:
    mov.l @(PTR_ce35540,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce354ba:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce35536,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce354dc
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce354e2
    cmp/eq 0x02,r0
    bt LAB_ce354e8
    bra LAB_ce354f2
    nop

LAB_ce354dc:
    mov.w @(DAT_ce35538,pc),r0
    bra LAB_ce354ee
    mov.b r5,@(r0,r4)

LAB_ce354e2:
    mov.w @(DAT_ce35538,pc),r0
    bra LAB_ce354ee
    mov.b r6,@(r0,r4)

LAB_ce354e8:
    mov.w @(DAT_ce35538,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce354ee:
    mov.w @(DAT_ce3553a,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce354f2:
    mov.l @(PTR_ce35540,pc),r2
    jmp @r2
    mov 0x15,r5

;=============================================

FUN_ce354f8:
    mov.w @(DAT_ce3553c,pc),r0
    mov.l @(PTR_ce35544,pc),r2
    mov.w @(r0,r4),r5
    mov 0x25,r0
    mov r5,r3
    shll r5
    add r3,r5
    shll2 r5
    shll2 r5
    add r2,r5
    add 0x60,r5
    mov 0x01,r3
    mov r5,r7
    mov.l r3,@(0x8,r5)
    add 0x10,r7
    mov.b @(r0,r4),r6
    mov 0x10,r4
    mov.l @(PTR_ce35548,pc),r3
    extu.b r6,r6
    shll2 r6
    shll2 r6
    shll r6
    add r3,r6

LAB_ce35526:
    mov.w @r6+,r3
    add 0xFF,r4
    tst r4,r4
    mov.w r3,@r7
    bf/s LAB_ce35526
    add 0x02,r7
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce35536:
    #data 0x04c9
DAT_ce35538:
    #data 0x01e9
DAT_ce3553a:
    #data 0x01a3
DAT_ce3553c:
    #data 0x012e
    #align4

PTR_ce35540:
    #data loc_8c0530d8
PTR_ce35544:
    #data loc_8c2659dc
PTR_ce35548:
    #data DAT_ce35a58
DAT_ce3554c:
    #data 0x000c
    #data 0x0000
    #data 0x000f
    #data 0x001f
    #data 0x000f
    #data 0x001f
    #data 0x000f
    #data 0x001f
    #data 0x000e
    #data 0x001e
    #data 0x000e
    #data 0x001e
    #data 0x000d
    #data 0x001e
    #data 0x000d
    #data 0x001d
    #data 0x0000
    #data 0x001d
    #data 0x0100
    #data 0x0013
    #data 0x0100
    #data 0x0012
    #data 0x0200
    #data 0x0012
    #data 0x0200
    #data 0x0012
    #data 0x0300
    #data 0x0012
    #data 0x0300
    #data 0x0011
    #data 0x0300
    #data 0x0011
    #data 0x1c00
    #data 0x0000
    #data 0x1f00
    #data 0x0f00
    #data 0x1f00
    #data 0x0f00
    #data 0x1e00
    #data 0x0e00
    #data 0x1e00
    #data 0x0e00
    #data 0x1e00
    #data 0x0e00
    #data 0x1d00
    #data 0x0d00
    #data 0x1d00
    #data 0x0d00
    #data 0x0000
    #data 0x0c00
    #data 0x0013
    #data 0x0300
    #data 0x0013
    #data 0x0300
    #data 0x0013
    #data 0x0300
    #data 0x0012
    #data 0x0200
    #data 0x0012
    #data 0x0200
    #data 0x0011
    #data 0x0100
    #data 0x0011
    #data 0x0100
DAT_ce355cc:
    #data 0x0201
    #data 0x0201
DAT_ce355d0:
    #data 0x02ff
    #data 0x02ff
DAT_ce355d4:
    #data 0xffff
    #data 0xffff
DAT_ce355d8:
    #data 0x0201
    #data 0x0201
DAT_ce355dc:
    #data 0x02ff
    #data 0x02ff
DAT_ce355e0:
    #data 0xffff
    #data 0xffff
DAT_ce355e4:
    #data 0x0201
    #data 0x0201
DAT_ce355e8:
    #data 0x02ff
    #data 0x02ff
DAT_ce355ec:
    #data 0xffff
    #data 0xffff
DAT_ce355f0:
    #data 0x0201
    #data 0x0201
DAT_ce355f4:
    #data 0x02ff
    #data 0x02ff
DAT_ce355f8:
    #data 0xffff
    #data 0xffff
DAT_ce355fc:
    #data 0x0201
    #data 0x0200
DAT_ce35600:
    #data 0x02ff
    #data 0x0201
DAT_ce35604:
    #data 0xffff
    #data 0x02ff
DAT_ce35608:
    #data 0x0201
    #data 0x0201
DAT_ce3560c:
    #data 0x02ff
    #data 0x02ff
DAT_ce35610:
    #data 0xffff
    #data 0xffff
DAT_ce35614:
    #data 0x0003
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0060
DAT_ce35624:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce35634:
    #data 0x0003
    #data 0x2000
    #data 0x0009
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce35644:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce35654:
    #data 0x0003
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce35664:
    #data 0x0005
    #data 0x1000
    #data 0x0006
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce35678:
    #data 0x0003
    #data 0x2000
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce35688:
    #data 0x0003
    #data 0x9100
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce35698:
    #data 0x0003
    #data 0x8100
    #data 0x000b
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce356a8:
    #data 0x0003
    #data 0x9100
    #data 0x000e
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
    #align4

PTR_ce356b8:
    #data LAB_ce30606
PTR_ce356bc:
    #data LAB_ce3001c
PTR_ce356c0:
    #data LAB_ce3060a
PTR_ce356c4:
    #data LAB_ce30c80
PTR_ce356c8:
    #data LAB_ce30fe6
PTR_ce356cc:
    #data LAB_ce310f6
PTR_ce356d0:
    #data LAB_ce311b0
PTR_ce356d4:
    #data LAB_ce31240
PTR_ce356d8:
    #data LAB_ce314f8
PTR_ce356dc:
    #data LAB_ce345a6
PTR_ce356e0:
    #data LAB_ce3470a
PTR_ce356e4:
    #data LAB_ce34b4a
PTR_ce356e8:
    #data LAB_ce352f4
PTR_ce356ec:
    #data LAB_ce30516
PTR_ce356f0:
    #data LAB_ce34446
PTR_ce356f4:
    #data LAB_ce30f1a
PTR_ce356f8:
    #data LAB_ce35404
PTR_ce356fc:
    #data LAB_ce3544c
PTR_ce35700:
    #data LAB_ce3547c
PTR_ce35704:
    #data LAB_ce354ba
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce35728:
    #data LAB_ce3061e
PTR_ce3572c:
    #data LAB_ce309ac
PTR_ce35730:
    #data LAB_ce309d4
PTR_ce35734:
    #data LAB_ce3061e
PTR_ce35738:
    #data LAB_ce30cda
PTR_ce3573c:
    #data LAB_ce30e6a
PTR_ce35740:
    #data LAB_ce30e54
PTR_ce35744:
    #data LAB_ce30ccc
PTR_ce35748:
    #data LAB_ce30ff8
PTR_ce3574c:
    #data LAB_ce3107e
PTR_ce35750:
    #data LAB_ce31108
PTR_ce35754:
    #data LAB_ce31120
PTR_ce35758:
    #data LAB_ce311e4
PTR_ce3575c:
    #data LAB_ce3120a
PTR_ce35760:
    #data LAB_ce3126c
PTR_ce35764:
    #data LAB_ce314c4
PTR_ce35768:
    #data LAB_ce31454
PTR_ce3576c:
    #data LAB_ce314c4
PTR_ce35770:
    #data LAB_ce314de
PTR_ce35774:
    #data LAB_ce3127e
PTR_ce35778:
    #data LAB_ce313de
PTR_ce3577c:
    #data LAB_ce313e4
PTR_ce35780:
    #data LAB_ce31466
PTR_ce35784:
    #data LAB_ce313de
PTR_ce35788:
    #data LAB_ce313e4
PTR_ce3578c:
    #data LAB_ce3150c
PTR_ce35790:
    #data LAB_ce318ac
PTR_ce35794:
    #data LAB_ce31b72
PTR_ce35798:
    #data LAB_ce31dd8
PTR_ce3579c:
    #data LAB_ce3150c
PTR_ce357a0:
    #data LAB_ce33ffa
PTR_ce357a4:
    #data LAB_ce323d8
PTR_ce357a8:
    #data LAB_ce32694
PTR_ce357ac:
    #data LAB_ce32bca
PTR_ce357b0:
    #data LAB_ce32df0
PTR_ce357b4:
    #data LAB_ce3150c
PTR_ce357b8:
    #data LAB_ce33014
PTR_ce357bc:
    #data LAB_ce3150c
PTR_ce357c0:
    #data LAB_ce33edc
PTR_ce357c4:
    #data LAB_ce3405e
PTR_ce357c8:
    #data LAB_ce3151e
PTR_ce357cc:
    #data LAB_ce315e2
PTR_ce357d0:
    #data LAB_ce316e0
PTR_ce357d4:
    #data LAB_ce317a8
PTR_ce357d8:
    #data LAB_ce3184c
DAT_ce357dc:
    #data 0x0000
    #data 0x41a0
DAT_ce357e0:
    #data 0x5555
    #data 0xc005
DAT_ce357e4:
    #data 0x9249
    #data 0x41bc
    #data 0x5555
    #data 0x4205
    #data 0x5555
    #data 0xc005
    #data 0x6db6
    #data 0x422b
    #align4

PTR_ce357f4:
    #data LAB_ce318be
PTR_ce357f8:
    #data LAB_ce31974
PTR_ce357fc:
    #data LAB_ce31994
PTR_ce35800:
    #data LAB_ce31a6c
PTR_ce35804:
    #data LAB_ce31adc
DAT_ce35808:
    #data 0x0000
    #data 0xbfc8
    #data 0x0000
    #data 0xc020
DAT_ce35810:
    #data 0x5555
    #data 0x4155
DAT_ce35814:
    #data 0x2492
    #data 0xbf09
    #data 0x0000
    #data 0x41a0
    #data 0x2492
    #data 0xbe09
    #align4

PTR_ce35820:
    #data LAB_ce31b84
PTR_ce35824:
    #data LAB_ce31c36
PTR_ce35828:
    #data LAB_ce31ce4
PTR_ce3582c:
    #data LAB_ce31d6a
DAT_ce35830:
    #data 0x5555
    #data 0x40d5
DAT_ce35834:
    #data 0x2492
    #data 0x4089
    #data 0x0000
    #data 0x4120
    #data 0xb6db
    #data 0x40cd
    #align4

PTR_ce35840:
    #data LAB_ce31dea
PTR_ce35844:
    #data LAB_ce31e8c
PTR_ce35848:
    #data LAB_ce31f34
PTR_ce3584c:
    #data LAB_ce32178
PTR_ce35850:
    #data LAB_ce321fe
PTR_ce35854:
    #data LAB_ce32230
PTR_ce35858:
    #data LAB_ce322c4
PTR_ce3585c:
    #data LAB_ce3231a
PTR_ce35860:
    #data LAB_ce323d4
DAT_ce35864:
    #data 0x5555
    #data 0x4055
DAT_ce35868:
    #data 0x4924
    #data 0x419a
    #data 0x0000
    #data 0x4120
    #data 0x0000
    #data 0x4170
DAT_ce35874:
    #data 0x5555
    #data 0xbe55
    #data 0x0000
    #data 0xbf20
    #align4

PTR_ce3587c:
    #data LAB_ce32414
PTR_ce35880:
    #data LAB_ce3246e
PTR_ce35884:
    #data LAB_ce3249a
PTR_ce35888:
    #data FUN_ce325bc
PTR_ce3588c:
    #data LAB_ce325de
PTR_ce35890:
    #data LAB_ce316e0
PTR_ce35894:
    #data LAB_ce317a8
PTR_ce35898:
    #data LAB_ce3184c
PTR_ce3589c:
    #data LAB_ce326a6
PTR_ce358a0:
    #data LAB_ce32732
PTR_ce358a4:
    #data LAB_ce327e0
PTR_ce358a8:
    #data LAB_ce32848
PTR_ce358ac:
    #data LAB_ce32954
PTR_ce358b0:
    #data LAB_ce329e8
PTR_ce358b4:
    #data LAB_ce32aec
PTR_ce358b8:
    #data LAB_ce32b98
PTR_ce358bc:
    #data LAB_ce32bdc
PTR_ce358c0:
    #data LAB_ce32c64
PTR_ce358c4:
    #data LAB_ce32d30
PTR_ce358c8:
    #data LAB_ce32dea
DAT_ce358cc:
    #data 0x0000
    #data 0x4120
DAT_ce358d0:
    #data 0x0000
    #data 0x8000
DAT_ce358d4:
    #data 0x4924
    #data 0xc19a
    #align4

DAT_ce358d8:
    #data 0x00000000
    #data 0x41855555
    #data 0x80000000
    #data 0xc1cdb6db
    #data 0x00000000
PTR_ce358ec:
    #data LAB_ce32e06
PTR_ce358f0:
    #data LAB_ce32ea6
PTR_ce358f4:
    #data LAB_ce32ec8
PTR_ce358f8:
    #data LAB_ce32f98
PTR_ce358fc:
    #data LAB_ce32fe2
PTR_ce35900:
    #data LAB_ce3302a
PTR_ce35904:
    #data LAB_ce3311e
PTR_ce35908:
    #data LAB_ce331a8
PTR_ce3590c:
    #data LAB_ce332bc
PTR_ce35910:
    #data LAB_ce333c0
PTR_ce35914:
    #data LAB_ce33aac
PTR_ce35918:
    #data LAB_ce33ad6
PTR_ce3591c:
    #data LAB_ce33b2a
PTR_ce35920:
    #data LAB_ce33bd2
PTR_ce35924:
    #data LAB_ce33c7c
PTR_ce35928:
    #data LAB_ce33d24
PTR_ce3592c:
    #data LAB_ce33dbe
PTR_ce35930:
    #data LAB_ce33e28
PTR_ce35934:
    #data LAB_ce33eb6
DAT_ce35938:
    #data 0x0003
DAT_ce3593a:
    #data 0x004a
    #data 0x0004
    #data 0x004b
    #data 0x0004
    #data 0x004b
    #data 0x0005
    #data 0x004c
    #data 0x0005
    #data 0x004c
    #data 0x0006
    #data 0x004d
    #data 0x0006
    #data 0x004d
    #data 0x0006
    #data 0x004d
    #data 0x0007
    #data 0x004e
    #data 0x0008
    #data 0x004f
    #data 0x0008
    #data 0x004f
    #data 0x0008
    #data 0x004f
    #data 0x0009
    #data 0x0050
    #data 0x0009
    #data 0x0050
    #data 0x000a
    #data 0x0051
    #data 0x000a
    #data 0x0051
    #data 0x000b
    #data 0x0052
    #align4

PTR_ce3597c:
    #data LAB_ce33eee
PTR_ce35980:
    #data LAB_ce33f64
PTR_ce35984:
    #data LAB_ce34070
PTR_ce35988:
    #data LAB_ce34130
PTR_ce3598c:
    #data LAB_ce341a0
PTR_ce35990:
    #data LAB_ce34248
PTR_ce35994:
    #data LAB_ce3432e
PTR_ce35998:
    #data LAB_ce343b4
PTR_ce3599c:
    #data LAB_ce34414
PTR_ce359a0:
    #data LAB_ce34458
PTR_ce359a4:
    #data LAB_ce3450c
PTR_ce359a8:
    #data LAB_ce3457a
PTR_ce359ac:
    #data LAB_ce345be
PTR_ce359b0:
    #data LAB_ce3466c
PTR_ce359b4:
    #data LAB_ce34670
PTR_ce359b8:
    #data LAB_ce345be
PTR_ce359bc:
    #data LAB_ce34738
PTR_ce359c0:
    #data LAB_ce347c6
PTR_ce359c4:
    #data LAB_ce348b4
PTR_ce359c8:
    #data LAB_ce34946
PTR_ce359cc:
    #data LAB_ce349ba
PTR_ce359d0:
    #data LAB_ce34a68
PTR_ce359d4:
    #data LAB_ce34ace
PTR_ce359d8:
    #data LAB_ce34ba4
PTR_ce359dc:
    #data LAB_ce34dc2
PTR_ce359e0:
    #data LAB_ce34f2c
PTR_ce359e4:
    #data LAB_ce34fe2
PTR_ce359e8:
    #data LAB_ce35094
PTR_ce359ec:
    #data LAB_ce35278
PTR_ce359f0:
    #data LAB_ce34ba4
PTR_ce359f4:
    #data LAB_ce34bb6
PTR_ce359f8:
    #data LAB_ce34c1a
PTR_ce359fc:
    #data LAB_ce34cd0
PTR_ce35a00:
    #data LAB_ce34d44
PTR_ce35a04:
    #data FUN_ce34da0
PTR_ce35a08:
    #data LAB_ce34e00
PTR_ce35a0c:
    #data LAB_ce34e8c
PTR_ce35a10:
    #data LAB_ce34f00
PTR_ce35a14:
    #data LAB_ce34f04
PTR_ce35a18:
    #data LAB_ce34ff4
PTR_ce35a1c:
    #data LAB_ce34ff8
PTR_ce35a20:
    #data LAB_ce34ffc
PTR_ce35a24:
    #data LAB_ce3508c
PTR_ce35a28:
    #data LAB_ce35090
PTR_ce35a2c:
    #data LAB_ce350a6
PTR_ce35a30:
    #data LAB_ce35140
PTR_ce35a34:
    #data LAB_ce351d4
PTR_ce35a38:
    #data LAB_ce35244
PTR_ce35a3c:
    #data LAB_ce35340
PTR_ce35a40:
    #data LAB_ce3538e
PTR_ce35a44:
    #data LAB_ce3538e
PTR_ce35a48:
    #data LAB_ce353b6
PTR_ce35a4c:
    #data LAB_ce3538e
PTR_ce35a50:
    #data LAB_ce3538e
PTR_ce35a54:
    #data LAB_ce3538e
DAT_ce35a58:
    #data 0x0000
DAT_ce35a5a:
    #data 0xf111
    #data 0xffda
    #data 0xffb8
    #data 0xfe96
    #data 0xfc64
    #data 0xf842
    #data 0xf520
    #data 0xff60
    #data 0xfd40
    #data 0xfc20
    #data 0xf910
    #data 0xf700
    #data 0xff50
    #data 0xfffb
    #data 0xfff0
    #data 0x0000
    #data 0xf111
    #data 0xffda
    #data 0xffb8
    #data 0xfe96
    #data 0xfc64
    #data 0xf842
    #data 0xf520
    #data 0xf6cf
    #data 0xf6ac
    #data 0xf489
    #data 0xf266
    #data 0xf044
    #data 0xff50
    #data 0xfffb
    #data 0xfff0
    #data 0x0000
    #data 0xf111
    #data 0xffda
    #data 0xffa7
    #data 0xfc75
    #data 0xf753
    #data 0xf433
    #data 0xf111
    #data 0xff60
    #data 0xfd40
    #data 0xfc20
    #data 0xf910
    #data 0xf700
    #data 0xff50
    #data 0xfffb
    #data 0xfff0
    #data 0x0000
    #data 0xf111
    #data 0xffda
    #data 0xffa7
    #data 0xfc75
    #data 0xf753
    #data 0xf433
    #data 0xf111
    #data 0xf6cf
    #data 0xf6ac
    #data 0xf489
    #data 0xf266
    #data 0xf044
    #data 0xf51f
    #data 0xfffb
    #data 0xfff0
    #data 0x0000
    #data 0xf111
    #data 0xffd9
    #data 0xff95
    #data 0xfd67
    #data 0xfa46
    #data 0xf624
    #data 0xf523
    #data 0xff60
    #data 0xfd40
    #data 0xfc20
    #data 0xf910
    #data 0xf700
    #data 0xfe14
    #data 0xfffb
    #data 0xff60
    #data 0x0000
    #data 0xf111
    #data 0xfc63
    #data 0xf943
    #data 0xf623
    #data 0xf413
    #data 0xf303
    #data 0xf104
    #data 0xf6cf
    #data 0xf6ac
    #data 0xf489
    #data 0xf266
    #data 0xf044
    #data 0xff30
    #data 0xfd95
    #data 0xff0a
