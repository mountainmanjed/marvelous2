;============================================
; S_PL0F : Dr. Doom Program                 |
;============================================

#symbol loc_8c03319e 0x8C03319E
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
#symbol loc_8c0514b8 0x8C0514B8
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
#symbol loc_8c054184 0x8C054184
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
#symbol loc_8c071ed8 0x8C071ED8
#symbol loc_8c072330 0x8C072330
#symbol loc_8c072660 0x8C072660
#symbol loc_8c072958 0x8C072958
#symbol loc_8c072dcc 0x8C072DCC
#symbol loc_8c07338c 0x8C07338C
#symbol loc_8c0c7f64 0x8C0C7F64
#symbol loc_8c103660 0x8C103660
#symbol loc_8c2681dc 0x8C2681DC
#symbol loc_8c2896b0 0x8C2896B0

;============================================

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
    bsr FUN_ce30228
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce3028e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce302d4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce3031a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce300ec
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce30154
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce301ba
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce303c6
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce3038c
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c2
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300e8,pc),r2
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
    #data PTR_ce336f8
PTR_ce300d0:
    #data loc_8c054508
PTR_ce300d4:
    #data loc_8c054b34
PTR_ce300d8:
    #data loc_8c05496c
PTR_ce300dc:
    #data loc_8c054d04
PTR_ce300e0:
    #data loc_8c054184
PTR_ce300e4:
    #data loc_8c053e00
PTR_ce300e8:
    #data loc_8c0542e0

;=============================================

FUN_ce300ec:
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
    bt LAB_ce3011c
    mov.w @(DAT_ce30202,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3012a
    mov.w @(DAT_ce30204,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3012a
    mov.w @(DAT_ce30206,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30124

LAB_ce3011c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30124:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3012a:
    mov.w @(DAT_ce30200,pc),r5
    mov.l @(PTR_ce30218,pc),r2
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
    mov.w @(DAT_ce30208,pc),r0
    mov.l @(PTR_ce3021c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30154:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30220,pc),r5
    mov.w @(DAT_ce3020a,pc),r6
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30184
    mov.w @(DAT_ce30202,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30192
    mov.w @(DAT_ce30204,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30192
    mov.w @(DAT_ce30206,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3018c

LAB_ce30184:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3018c:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30192:
    mov.w @(DAT_ce3020a,pc),r5
    mov.l @(PTR_ce30218,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30208,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3021c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301ba:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30224,pc),r5
    mov.w @(DAT_ce3020c,pc),r6
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301d8
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301d8:
    mov.w @(DAT_ce3020c,pc),r5
    mov.l @(PTR_ce30218,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30208,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3021c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30200:
    #data 0x036c
DAT_ce30202:
    #data 0x01f9
DAT_ce30204:
    #data 0x01fc
DAT_ce30206:
    #data 0x01d4
DAT_ce30208:
    #data 0x01e9
DAT_ce3020a:
    #data 0x0374
DAT_ce3020c:
    #data 0x037c
    #align4

PTR_ce30210:
    #data DAT_ce3367c
PTR_ce30214:
    #data loc_8c054e58
PTR_ce30218:
    #data loc_8c055c3a
PTR_ce3021c:
    #data loc_8c0530d8
PTR_ce30220:
    #data DAT_ce3368c
PTR_ce30224:
    #data DAT_ce336a0

;=============================================

FUN_ce30228:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3034c,pc),r5
    mov.w @(DAT_ce30338,pc),r6
    mov.l @(PTR_ce30350,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30268
    mov.w @(DAT_ce3033a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3025e
    mov.w @(DAT_ce3033c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3025e
    mov.w @(DAT_ce3033e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30268
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce3025e:
    mov.w @(DAT_ce30340,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bf LAB_ce30270

LAB_ce30268:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30270:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30342,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30354,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3028e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30358,pc),r5
    mov.w @(DAT_ce30344,pc),r6
    mov.l @(PTR_ce30350,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302ae
    mov.w @(DAT_ce30340,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302b6

LAB_ce302ae:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302b6:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30342,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30354,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302d4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3035c,pc),r5
    mov.w @(DAT_ce30346,pc),r6
    mov.l @(PTR_ce30350,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302f4
    mov.w @(DAT_ce30340,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302fc

LAB_ce302f4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302fc:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30342,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30354,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3031a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30360,pc),r5
    mov.w @(DAT_ce30348,pc),r6
    mov.l @(PTR_ce30350,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30364
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30338:
    #data 0x0384
DAT_ce3033a:
    #data 0x01f9
DAT_ce3033c:
    #data 0x01fc
DAT_ce3033e:
    #data 0x01d4
DAT_ce30340:
    #data 0x040c
DAT_ce30342:
    #data 0x01e9
DAT_ce30344:
    #data 0x038c
DAT_ce30346:
    #data 0x0394
DAT_ce30348:
    #data 0x039c
    #align4

PTR_ce3034c:
    #data DAT_ce336b4
PTR_ce30350:
    #data loc_8c054e58
PTR_ce30354:
    #data loc_8c0530d8
PTR_ce30358:
    #data DAT_ce336c8
PTR_ce3035c:
    #data DAT_ce336d8
PTR_ce30360:
    #data DAT_ce336e8

;=============================================

LAB_ce30364:
    mov.w @(DAT_ce30468,pc),r5
    mov.l @(PTR_ce30474,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3046a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30478,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3038c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3047c,pc),r3
    jsr @r3
    mov 0x06,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303a6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303a6:
    mov.w @(DAT_ce3046a,pc),r0
    mov 0x06,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30478,pc),r3
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

FUN_ce303c6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30480,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce303de
    mov.w @(DAT_ce3046c,pc),r0
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
    mov.w @(DAT_ce3046a,pc),r0
    mov 0x07,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30478,pc),r3
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

LAB_ce30406:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce30432
    mov r4,r14
    tst r0,r0
    bf LAB_ce30422
    bsr FUN_ce3048c
    mov r14,r4
    tst r0,r0
    bf LAB_ce30422
    bsr FUN_ce304c2
    mov r14,r4
    tst r0,r0
    bt LAB_ce3042a

LAB_ce30422:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce3042a:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30432:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30484,pc),r5
    mov.w @(DAT_ce3046e,pc),r6
    mov.l @(PTR_ce30488,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30452
    mov.w @(DAT_ce3046c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3045a

LAB_ce30452:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3045a:
    mov.w @(DAT_ce30470,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30468:
    #data 0x039c
DAT_ce3046a:
    #data 0x01e9
DAT_ce3046c:
    #data 0x040c
DAT_ce3046e:
    #data 0x0384
DAT_ce30470:
    #data 0x0258
    #align4

PTR_ce30474:
    #data loc_8c055c3a
PTR_ce30478:
    #data loc_8c0530d8
PTR_ce3047c:
    #data loc_8c054da0
PTR_ce30480:
    #data loc_8c054d1c
PTR_ce30484:
    #data DAT_ce336b4
PTR_ce30488:
    #data loc_8c054e58

;=============================================

FUN_ce3048c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3059c,pc),r5
    mov.w @(DAT_ce30586,pc),r6
    mov.l @(PTR_ce305a0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304ac
    mov.w @(DAT_ce30588,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304b4

LAB_ce304ac:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304b4:
    mov.w @(DAT_ce3058a,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304c2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305a4,pc),r5
    mov.w @(DAT_ce3058c,pc),r6
    mov.l @(PTR_ce305a0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304e2
    mov.w @(DAT_ce30588,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304ea

LAB_ce304e2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304ea:
    mov.w @(DAT_ce3058a,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce304f8:
    mov.w @(DAT_ce30590,pc),r0
    mov.w @(DAT_ce3058e,pc),r5
    mov.b @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce30540
    add r4,r5
    mov.b @(0x5,r4),r0
    tst r0,r0
    bf LAB_ce30540
    mov.w @(0xa,r5),r0
    add 0xFF,r0
    mov.w r0,@(0xa,r5)
    extu.w r0,r0
    tst r0,r0
    bf LAB_ce30540
    mov.w @(DAT_ce30592,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x15,r0
    bf/s LAB_ce30528
    mov 0x01,r6
    mov r6,r0
    nop
    mov.w r0,@(0xa,r5)

LAB_ce30528:
    mov.w @(DAT_ce30592,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x1D,r0
    bf LAB_ce3053a
    mov r6,r0
    nop
    bra LAB_ce30540
    mov.w r0,@(0xa,r5)

LAB_ce3053a:
    mov.l @(PTR_ce305a8,pc),r2
    jmp @r2
    nop

LAB_ce30540:
    rts
    nop

LAB_ce30544:
    mov.w @(DAT_ce30594,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce305ac,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30558:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce305b0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30596,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce305b4
    mov.w @(DAT_ce30598,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3057e
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307fc
    mov.l @r15+,r14

LAB_ce3057e:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3072c
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30586:
    #data 0x038c
DAT_ce30588:
    #data 0x040c
DAT_ce3058a:
    #data 0x0258
DAT_ce3058c:
    #data 0x0394
DAT_ce3058e:
    #data 0x02a4
DAT_ce30590:
    #data 0x0201
DAT_ce30592:
    #data 0x01d0
DAT_ce30594:
    #data 0x01ff
DAT_ce30596:
    #data 0x01fe
DAT_ce30598:
    #data 0x01f9
    #align4

PTR_ce3059c:
    #data DAT_ce336c8
PTR_ce305a0:
    #data loc_8c054e58
PTR_ce305a4:
    #data DAT_ce336d8
PTR_ce305a8:
    #data LAB_ce32dce
PTR_ce305ac:
    #data PTR_ce33768
PTR_ce305b0:
    #data loc_8c052b4c

;=============================================

LAB_ce305b4:
    mov.w @(DAT_ce306a0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce305c6
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30668
    mov.l @r15+,r14

LAB_ce305c6:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce305ce
    mov.l @r15+,r14

LAB_ce305ce:
    mov.w @(DAT_ce306a2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce305ee
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30604
    cmp/eq 0x02,r0
    bt LAB_ce30624
    bra LAB_ce30638
    nop

LAB_ce305ee:
    mov.w @(DAT_ce306a4,pc),r0
    mov.l @(PTR_ce306ac,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce306a6,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306a8,pc),r0
    mov.b r13,@(r0,r14)
    bra LAB_ce3061a
    mov 0x14,r5

LAB_ce30604:
    mov.w @(DAT_ce306a4,pc),r0
    mov 0x01,r4
    mov.l @(PTR_ce306b0,pc),r3
    mov 0x15,r5
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce306a6,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306a8,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3061a:
    mov.l @(PTR_ce306b4,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce30638
    nop

LAB_ce30624:
    mov.w @(DAT_ce306a4,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce306b8,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce306a6,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306a8,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30638:
    mov.w @(DAT_ce306aa,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce306bc,pc),r3
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
    mov.w @(DAT_ce306a4,pc),r0
    mov.l @(PTR_ce306c0,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30668:
    mov.w @(DAT_ce306a2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30688
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce306c4
    cmp/eq 0x02,r0
    bt LAB_ce306e6
    bra LAB_ce306fc
    nop

LAB_ce30688:
    mov.w @(DAT_ce306a4,pc),r0
    mov 0x06,r3
    mov.l @(PTR_ce306ac,pc),r2
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce306a6,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce306a8,pc),r0
    mov.b r13,@(r0,r14)
    bra LAB_ce306dc
    mov 0x14,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306a0:
    #data 0x01f9
DAT_ce306a2:
    #data 0x01e8
DAT_ce306a4:
    #data 0x0158
DAT_ce306a6:
    #data 0x03f4
DAT_ce306a8:
    #data 0x01a7
DAT_ce306aa:
    #data 0x01ac
    #align4

PTR_ce306ac:
    #data DAT_ce33634
PTR_ce306b0:
    #data DAT_ce33638
PTR_ce306b4:
    #data loc_8c04223a
PTR_ce306b8:
    #data DAT_ce3363c
PTR_ce306bc:
    #data loc_8c2896b0
PTR_ce306c0:
    #data loc_8c034e8c

;=============================================

LAB_ce306c4:
    mov.w @(DAT_ce307d2,pc),r0
    mov 0x01,r4
    mov 0x07,r3
    mov.l @(PTR_ce307dc,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.w @(DAT_ce307d4,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307d6,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce306dc:
    mov.l @(PTR_ce307e0,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce306fc
    nop

LAB_ce306e6:
    mov.w @(DAT_ce307d2,pc),r0
    mov 0x02,r4
    mov 0x08,r3
    mov.l @(PTR_ce307e4,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce307d4,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307d6,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce306fc:
    mov.w @(DAT_ce307d8,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce307e8,pc),r3
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
    mov.w @(DAT_ce307d2,pc),r0
    mov.l @(PTR_ce307ec,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce3072c:
    mov.w @(DAT_ce307da,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3074c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3076a
    cmp/eq 0x02,r0
    bt LAB_ce3078c
    bra LAB_ce307a2
    nop

LAB_ce3074c:
    mov.w @(DAT_ce307d2,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce307e0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce307d4,pc),r0
    mov.l @(PTR_ce307f0,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307d6,pc),r0
    bra LAB_ce307a2
    mov.b r13,@(r0,r14)

LAB_ce3076a:
    mov.w @(DAT_ce307d2,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce307e0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce307d4,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce307f4,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307d6,pc),r0
    bra LAB_ce307a2
    mov.b r3,@(r0,r14)

LAB_ce3078c:
    mov.w @(DAT_ce307d2,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce307f8,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce307d4,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307d6,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce307a2:
    mov.w @(DAT_ce307d8,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce307e8,pc),r3
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
    mov.w @(DAT_ce307d2,pc),r0
    mov.l @(PTR_ce307ec,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307d2:
    #data 0x0158
DAT_ce307d4:
    #data 0x03f4
DAT_ce307d6:
    #data 0x01a7
DAT_ce307d8:
    #data 0x01ac
DAT_ce307da:
    #data 0x01e8
    #align4

PTR_ce307dc:
    #data DAT_ce33638
PTR_ce307e0:
    #data loc_8c04223a
PTR_ce307e4:
    #data DAT_ce3363c
PTR_ce307e8:
    #data loc_8c2896b0
PTR_ce307ec:
    #data loc_8c034e8c
PTR_ce307f0:
    #data DAT_ce33640
PTR_ce307f4:
    #data DAT_ce33644
PTR_ce307f8:
    #data DAT_ce33648

;=============================================

LAB_ce307fc:
    mov.w @(DAT_ce308f8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30908,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30820
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3083c
    cmp/eq 0x02,r0
    bt LAB_ce30856
    bra LAB_ce30872
    nop

LAB_ce30820:
    mov.w @(DAT_ce308fa,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308fc,pc),r0
    mov.l @(PTR_ce3090c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308fe,pc),r0
    bra LAB_ce30872
    mov.b r13,@(r0,r14)

LAB_ce3083c:
    mov.w @(DAT_ce308fa,pc),r0
    mov 0x01,r4
    mov 0x0A,r3
    mov.l @(PTR_ce30910,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce308fc,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308fe,pc),r0
    mov.b r4,@(r0,r14)
    bra LAB_ce3086e
    mov 0x15,r5

LAB_ce30856:
    mov.w @(DAT_ce308fa,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.l @(PTR_ce30914,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce308fc,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308fe,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3086e:
    jsr @r12
    mov r14,r4

LAB_ce30872:
    mov.w @(DAT_ce30900,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30918,pc),r3
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
    mov.w @(DAT_ce308fa,pc),r0
    mov.l @(PTR_ce3091c,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce308a4:
    mov.w @(DAT_ce30902,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce308cc
    mov.w @(DAT_ce30904,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce308bc
    mov.w @(DAT_ce30906,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce308cc

LAB_ce308bc:
    mov.w @(DAT_ce30904,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce308d0
    mov.w @(DAT_ce30906,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce308d0

LAB_ce308cc:
    bra LAB_ce308d4
    nop

LAB_ce308d0:
    rts
    nop

LAB_ce308d4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30920,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30904,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce308f0
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30a48
    mov.l @r15+,r14

LAB_ce308f0:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30924
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308f8:
    #data 0x01e8
DAT_ce308fa:
    #data 0x0158
DAT_ce308fc:
    #data 0x03f4
DAT_ce308fe:
    #data 0x01a7
DAT_ce30900:
    #data 0x01ac
DAT_ce30902:
    #data 0x0201
DAT_ce30904:
    #data 0x01fe
DAT_ce30906:
    #data 0x01d6
    #align4

PTR_ce30908:
    #data loc_8c04223a
PTR_ce3090c:
    #data DAT_ce33640
PTR_ce30910:
    #data DAT_ce33644
PTR_ce30914:
    #data DAT_ce33648
PTR_ce30918:
    #data loc_8c2896b0
PTR_ce3091c:
    #data loc_8c034e8c
PTR_ce30920:
    #data FUN_ce32e04

;=============================================

LAB_ce30924:
    mov.w @(DAT_ce30a14,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce30a12,pc),r5
    extu.b r0,r0
    cmp/eq 0x00,r0
    add r14,r5
    bt/s LAB_ce30948
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30976
    cmp/eq 0x02,r0
    bt LAB_ce3099e
    bra LAB_ce309d0
    nop

LAB_ce30948:
    mov.w @(DAT_ce30a16,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30a24,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a18,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3096a
    mov.w @(DAT_ce30a1a,pc),r0
    mov.l @(PTR_ce30a28,pc),r3
    bra LAB_ce30970
    mov.l r3,@(r0,r14)

LAB_ce3096a:
    mov.w @(DAT_ce30a1a,pc),r0
    mov.l @(PTR_ce30a2c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30970:
    mov.w @(DAT_ce30a1c,pc),r0
    bra LAB_ce309d0
    mov.b r13,@(r0,r14)

LAB_ce30976:
    mov.w @(DAT_ce30a16,pc),r0
    mov 0x01,r4
    mov 0x0D,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30992
    mov.w @(DAT_ce30a1a,pc),r0
    mov.l @(PTR_ce30a30,pc),r2
    bra LAB_ce30998
    mov.l r2,@(r0,r14)

LAB_ce30992:
    mov.w @(DAT_ce30a1a,pc),r0
    mov.l @(PTR_ce30a34,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30998:
    mov.w @(DAT_ce30a1c,pc),r0
    bra LAB_ce309d0
    mov.b r4,@(r0,r14)

LAB_ce3099e:
    mov.w @(DAT_ce30a16,pc),r0
    mov 0x02,r4
    mov 0x0E,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce309ba
    mov.w @(DAT_ce30a1a,pc),r0
    mov.l @(PTR_ce30a38,pc),r2
    bra LAB_ce309c0
    mov.l r2,@(r0,r14)

LAB_ce309ba:
    mov.w @(DAT_ce30a1a,pc),r0
    mov.l @(PTR_ce30a3c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce309c0:
    mov.w @(DAT_ce30a1c,pc),r0
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x8,r5)

LAB_ce309d0:
    mov.w @(DAT_ce30a1e,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30a40,pc),r3
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
    mov.w @(DAT_ce30a16,pc),r0
    mov.l @(PTR_ce30a44,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30a20,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30a0a
    mov.w @(DAT_ce30a20,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30a0a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a12:
    #data 0x02a4
DAT_ce30a14:
    #data 0x01e8
DAT_ce30a16:
    #data 0x0158
DAT_ce30a18:
    #data 0x01fc
DAT_ce30a1a:
    #data 0x03f4
DAT_ce30a1c:
    #data 0x01a7
DAT_ce30a1e:
    #data 0x01ac
DAT_ce30a20:
    #data 0x01d6
    #align4

PTR_ce30a24:
    #data loc_8c04223a
PTR_ce30a28:
    #data DAT_ce3364c
PTR_ce30a2c:
    #data DAT_ce33664
PTR_ce30a30:
    #data DAT_ce33650
PTR_ce30a34:
    #data DAT_ce33668
PTR_ce30a38:
    #data DAT_ce33654
PTR_ce30a3c:
    #data DAT_ce3366c
PTR_ce30a40:
    #data loc_8c2896b0
PTR_ce30a44:
    #data loc_8c034e8c

;=============================================

LAB_ce30a48:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30b44,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b54,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a6e
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30aa0
    cmp/eq 0x02,r0
    bt LAB_ce30ad4
    bra LAB_ce30ba0
    nop

LAB_ce30a6e:
    mov 0x0C,r5
    mov 0x00,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b46,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30b58,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30b48,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a94
    mov.w @(DAT_ce30b4a,pc),r0
    mov.l @(PTR_ce30b5c,pc),r3
    bra LAB_ce30a9a
    mov.l r3,@(r0,r14)

LAB_ce30a94:
    mov.w @(DAT_ce30b4a,pc),r0
    mov.l @(PTR_ce30b60,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a9a:
    mov.w @(DAT_ce30b4c,pc),r0
    bra LAB_ce30ba0
    mov.b r13,@(r0,r14)

LAB_ce30aa0:
    mov 0x0C,r5
    mov 0x01,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b46,pc),r0
    mov 0x10,r2
    mov.l @(PTR_ce30b58,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30b48,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30ac6
    mov.w @(DAT_ce30b4a,pc),r0
    mov.l @(PTR_ce30b64,pc),r3
    bra LAB_ce30acc
    mov.l r3,@(r0,r14)

LAB_ce30ac6:
    mov.w @(DAT_ce30b4a,pc),r0
    mov.l @(PTR_ce30b68,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30acc:
    mov.w @(DAT_ce30b4c,pc),r0
    mov 0x01,r3
    bra LAB_ce30ba0
    mov.b r3,@(r0,r14)

LAB_ce30ad4:
    mov.w @(DAT_ce30b48,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce30ae4
    mov.w @(DAT_ce30b4a,pc),r0
    mov.l @(PTR_ce30b6c,pc),r2
    bra LAB_ce30aea
    mov.l r2,@(r0,r14)

LAB_ce30ae4:
    mov.w @(DAT_ce30b4a,pc),r0
    mov.l @(PTR_ce30b70,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30aea:
    mov.w @(DAT_ce30b4c,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    add 0x5A,r0
    mov.b r13,@(r0,r14)
    add 0xFB,r0
    mov.b r13,@(r0,r14)
    add 0xDA,r0
    mov.b @(r0,r14),r2
    mov 0x0F,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    add 0x24,r0
    mov.w @(r0,r14),r1
    mov.w @(DAT_ce30b4e,pc),r2
    extu.w r1,r1
    tst r2,r1
    bt/s LAB_ce30b78
    fldi0 fr15
    mova @(DAT_ce30b74,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce30b50,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bf LAB_ce30b78
    mov 0x0C,r5
    mov 0x02,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b46,pc),r0
    mov 0x11,r2
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    bra LAB_ce30b98
    mov 0x02,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b44:
    #data 0x01e8
DAT_ce30b46:
    #data 0x01a1
DAT_ce30b48:
    #data 0x01fc
DAT_ce30b4a:
    #data 0x03f4
DAT_ce30b4c:
    #data 0x01a7
DAT_ce30b4e:
    #data 0x1000
DAT_ce30b50:
    #data 0x041c
    #align4

PTR_ce30b54:
    #data loc_8c034e8c
PTR_ce30b58:
    #data loc_8c04223a
PTR_ce30b5c:
    #data DAT_ce33658
PTR_ce30b60:
    #data DAT_ce33670
PTR_ce30b64:
    #data DAT_ce3365c
PTR_ce30b68:
    #data DAT_ce33674
PTR_ce30b6c:
    #data DAT_ce33660
PTR_ce30b70:
    #data DAT_ce33678
DAT_ce30b74:
    #data 0x43092492

;=============================================

LAB_ce30b78:
    mov 0x14,r5
    mov 0x03,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c7e,pc),r0
    mov 0x12,r3
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov 0x01,r0

LAB_ce30b98:
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)

LAB_ce30ba0:
    mov.w @(DAT_ce30c80,pc),r0
    mov.l @(PTR_ce30c8c,pc),r3
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
    mov.w @(DAT_ce30c82,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30bce
    mov.w @(DAT_ce30c82,pc),r0
    mov.b @(r0,r14),r1
    add 0xF0,r1
    mov.b r1,@(r0,r14)

LAB_ce30bce:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30bda:
    mov.w @(DAT_ce30c84,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c90,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30bee:
    sts.l PR,@-r15
    mov.l @(PTR_ce30c94,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30bfc:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30c98,pc),r3
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
    mov.w @(DAT_ce30c86,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c64
    mov.w @(DAT_ce30c88,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c5c
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d9c
    mov.l @r15+,r14

LAB_ce30c5c:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d10
    mov.l @r15+,r14

LAB_ce30c64:
    mov.w @(DAT_ce30c88,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c76
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30cd6
    mov.l @r15+,r14

LAB_ce30c76:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c9c
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c7e:
    #data 0x01a1
DAT_ce30c80:
    #data 0x01ac
DAT_ce30c82:
    #data 0x01d6
DAT_ce30c84:
    #data 0x01ff
DAT_ce30c86:
    #data 0x01fe
DAT_ce30c88:
    #data 0x01f9
    #align4

PTR_ce30c8c:
    #data loc_8c2896b0
PTR_ce30c90:
    #data PTR_ce33778
PTR_ce30c94:
    #data loc_8c0511e2
PTR_ce30c98:
    #data loc_8c052c84

;=============================================

LAB_ce30c9c:
    mov.w @(DAT_ce30d88,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30cba
    cmp/eq 0x01,r0
    bt LAB_ce30cba
    cmp/eq 0x02,r0
    bf LAB_ce30cd0
    mov.l @(PTR_ce30d8c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30cba:
    mov.l @(PTR_ce30d90,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cd0
    lds.l @r15+,PR
    mov.l @(PTR_ce30d94,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30cd0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30cd6:
    mov.w @(DAT_ce30d88,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30cf4
    cmp/eq 0x01,r0
    bt LAB_ce30cf4
    cmp/eq 0x02,r0
    bf LAB_ce30d0a
    mov.l @(PTR_ce30d8c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30cf4:
    mov.l @(PTR_ce30d90,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d0a
    lds.l @r15+,PR
    mov.l @(PTR_ce30d94,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30d0a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d10:
    mov.w @(DAT_ce30d88,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30d2c
    cmp/eq 0x01,r0
    bt LAB_ce30d2c
    cmp/eq 0x02,r0
    bt LAB_ce30d3c
    bra LAB_ce30d82
    nop

LAB_ce30d2c:
    mov.l @(PTR_ce30d90,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30d48
    bra LAB_ce30d82
    nop

LAB_ce30d3c:
    mov.l @(PTR_ce30d90,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d52

LAB_ce30d48:
    lds.l @r15+,PR
    mov.l @(PTR_ce30d94,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d52:
    mov.w @(DAT_ce30d8a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d82
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x19,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30d98,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce30d82:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d88:
    #data 0x01e8
DAT_ce30d8a:
    #data 0x0141
    #align4

PTR_ce30d8c:
    #data FUN_ce3362a
PTR_ce30d90:
    #data loc_8c034dee
PTR_ce30d94:
    #data loc_8c051648
PTR_ce30d98:
    #data loc_8c2896b0

;=============================================

LAB_ce30d9c:
    mov.w @(DAT_ce30e82,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30db8
    cmp/eq 0x01,r0
    bt LAB_ce30db8
    cmp/eq 0x02,r0
    bt LAB_ce30db8
    bra LAB_ce30dce
    nop

LAB_ce30db8:
    mov.l @(PTR_ce30e88,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30dce
    lds.l @r15+,PR
    mov.l @(PTR_ce30e8c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30dce:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30dd4:
    mov.w @(DAT_ce30e84,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30dee
    mov.l @(PTR_ce30e90,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30e94,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30dee:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30df4:
    mov.w @(DAT_ce30e84,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30e0e
    mov.l @(PTR_ce30e98,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30e46

LAB_ce30e0e:
    mov.l @(PTR_ce30e9c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30ea0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30e86,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30e2c
    bsr FUN_ce30f3c
    mov r14,r4
    bra LAB_ce30e30
    nop

LAB_ce30e2c:
    bsr FUN_ce30e4c
    mov r14,r4

LAB_ce30e30:
    mov.l @(PTR_ce30ea4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30e46
    lds.l @r15+,PR
    mov.l @(PTR_ce30ea8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e46:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30e4c:
    mov.w @(DAT_ce30e82,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30eac,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30e60:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30e88,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e7a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30eb0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30e7a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e82:
    #data 0x01e8
DAT_ce30e84:
    #data 0x0201
DAT_ce30e86:
    #data 0x01fe
    #align4

PTR_ce30e88:
    #data loc_8c034dee
PTR_ce30e8c:
    #data loc_8c051648
PTR_ce30e90:
    #data loc_8c050084
PTR_ce30e94:
    #data loc_8c04ff88
PTR_ce30e98:
    #data loc_8c054184
PTR_ce30e9c:
    #data loc_8c04fea8
PTR_ce30ea0:
    #data loc_8c050048
PTR_ce30ea4:
    #data loc_8c052ce2
PTR_ce30ea8:
    #data loc_8c052dac
PTR_ce30eac:
    #data PTR_ce33788
PTR_ce30eb0:
    #data loc_8c05176e

;=============================================

LAB_ce30eb4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30fbc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ece
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30fc0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30ece:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30ed6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30fb6,pc),r3
    mov r4,r14
    mov.l @(PTR_ce30fbc,pc),r2
    add r14,r3
    mov.l r3,@r15
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30efc
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce30fc0,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce30efc:
    mov.w @(DAT_ce30fb8,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce30f1a
    mov.w @(DAT_ce30fb8,pc),r0
    mov 0x00,r6
    mov.l @(PTR_ce30fc4,pc),r1
    mov r6,r5
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce30f1a:
    mov.w @(DAT_ce30fb8,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce30f34
    mov.w @(DAT_ce30fb8,pc),r0
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    mov.l @r15,r1
    mov.b r0,@(0x8,r1)

LAB_ce30f34:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30f3c:
    mov.w @(DAT_ce30fba,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30fc8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30f50:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30fbc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f6a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30fc0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30f6a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30f72:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30fbc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f8c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30fc0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30f8c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30f94:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30fbc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fae
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30fc0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30fae:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fb6:
    #data 0x02a4
DAT_ce30fb8:
    #data 0x0141
DAT_ce30fba:
    #data 0x01e8
    #align4

PTR_ce30fbc:
    #data loc_8c034dee
PTR_ce30fc0:
    #data loc_8c05176e
PTR_ce30fc4:
    #data loc_8c072dcc
PTR_ce30fc8:
    #data PTR_ce33794

;=============================================

LAB_ce30fcc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310c0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce310b6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31046
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3100e
    mova @(DAT_ce310c4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce310c8,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce310cc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce310d0,pc),r0
    bra LAB_ce3102a
    fmov.s @r0,fr3

LAB_ce3100e:
    mova @(DAT_ce310d4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce310d8,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce310dc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce310e0,pc),r0
    fmov.s @r0,fr3

LAB_ce3102a:
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce310b8,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31046
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31046:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3104c:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce310c0,pc),r3
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
    mov.w @(DAT_ce310ba,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce310a4
    mov.w @(DAT_ce310bc,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bt LAB_ce310ac
    bra LAB_ce310e8
    nop

LAB_ce310a4:
    mov.w @(DAT_ce310bc,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce310e8

LAB_ce310ac:
    lds.l @r15+,PR
    mov.l @(PTR_ce310e4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310b6:
    #data 0x0141
DAT_ce310b8:
    #data 0x0130
DAT_ce310ba:
    #data 0x01d2
DAT_ce310bc:
    #data 0x01fd
    #align4

PTR_ce310c0:
    #data loc_8c034dee
DAT_ce310c4:
    #data 0xc0d55555
DAT_ce310c8:
    #data 0x3d555555
DAT_ce310cc:
    #data 0xc02b6db6
DAT_ce310d0:
    #data 0xbd092492
DAT_ce310d4:
    #data 0xc0855555
DAT_ce310d8:
    #data 0x3cd55555
DAT_ce310dc:
    #data 0xc09a4924
DAT_ce310e0:
    #data 0xbd892492
PTR_ce310e4:
    #data loc_8c05176e

;=============================================

LAB_ce310e8:
    mov.w @(DAT_ce31214,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31166
    mov.b @(0x7,r14),r0
    mov.l @(DAT_ce31220,pc),r1
    add 0x01,r0
    lds r1,FPUL
    mov.b r0,@(0x7,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31124
    mov.l @(PTR_ce31224,pc),r2
    mov 0x14,r5
    mov 0x04,r6
    jsr @r2
    mov r14,r4
    mova @(DAT_ce31228,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3122c,pc),r0
    bra LAB_ce3113a
    fmov.s @r0,fr3

LAB_ce31124:
    mov.l @(PTR_ce31224,pc),r3
    mov 0x14,r5
    mov 0x05,r6
    jsr @r3
    mov r14,r4
    mova @(DAT_ce31230,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31234,pc),r0
    fmov.s @r0,fr3

LAB_ce3113a:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31238,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3123c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31216,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31166
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31166:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3116c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31240,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31186
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31244,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31186:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3118e:
    mov r4,r3
    mov.l @(PTR_ce31248,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce311a0:
    mov r4,r3
    mov.l @(PTR_ce3124c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce311b2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31296
    mov.l @(PTR_ce31250,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce31254,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31218,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce3125c
    mov 0x00,r13
    mov.w @(DAT_ce3121a,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce31224,pc),r3
    mov 0x06,r6
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3121c,pc),r0
    mov 0x1A,r2
    mov.l @(PTR_ce31258,pc),r3
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
    bra LAB_ce31290
    mov 0x16,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31214:
    #data 0x019e
DAT_ce31216:
    #data 0x0130
DAT_ce31218:
    #data 0x01fe
DAT_ce3121a:
    #data 0x01f9
DAT_ce3121c:
    #data 0x01a1
    #align4

DAT_ce31220:
    #data 0x42092492
PTR_ce31224:
    #data loc_8c034e8c
DAT_ce31228:
    #data 0x40d55555
DAT_ce3122c:
    #data 0xbe555555
DAT_ce31230:
    #data 0x40555555
DAT_ce31234:
    #data 0xbdd55555
DAT_ce31238:
    #data 0x41892492
DAT_ce3123c:
    #data 0xbf4db6db
PTR_ce31240:
    #data loc_8c034dee
PTR_ce31244:
    #data loc_8c05176e
PTR_ce31248:
    #data PTR_ce337a0
PTR_ce3124c:
    #data PTR_ce337ac
PTR_ce31250:
    #data loc_8c052b4c
PTR_ce31254:
    #data loc_8c056de4
PTR_ce31258:
    #data loc_8c2896b0

;=============================================

LAB_ce3125c:
    mov.w @(DAT_ce3137e,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce31388,pc),r3
    mov 0x07,r6
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31380,pc),r0
    mov 0x1B,r2
    mov.l @(PTR_ce3138c,pc),r3
    mov 0x15,r5
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

LAB_ce31290:
    mov.l @(PTR_ce31390,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31296:
    mov.w @(DAT_ce31382,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce312a6
    mov.l @(PTR_ce31394,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce312a6:
    mov 0x5C,r1
    mov.l @(PTR_ce31398,pc),r3
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
    mov.l @(PTR_ce3139c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312fc
    lds.l @r15+,PR
    mov.l @(PTR_ce313a0,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce312fc:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31304:
    mov r4,r3
    mov.l @(PTR_ce313a4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31316:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3139c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31384,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31378
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
    mova @(DAT_ce313a8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce313ac,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce313b0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce313b4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31386,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31378
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31378:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3137e:
    #data 0x01f9
DAT_ce31380:
    #data 0x01a1
DAT_ce31382:
    #data 0x01ff
DAT_ce31384:
    #data 0x0141
DAT_ce31386:
    #data 0x01d2
    #align4

PTR_ce31388:
    #data loc_8c034e8c
PTR_ce3138c:
    #data loc_8c2896b0
PTR_ce31390:
    #data loc_8c04223a
PTR_ce31394:
    #data loc_8c0511e2
PTR_ce31398:
    #data loc_8c052c84
PTR_ce3139c:
    #data loc_8c034dee
PTR_ce313a0:
    #data loc_8c051648
PTR_ce313a4:
    #data PTR_ce337b8
DAT_ce313a8:
    #data 0xc1855555
DAT_ce313ac:
    #data 0x3e855555
DAT_ce313b0:
    #data 0x40cdb6db
DAT_ce313b4:
    #data 0xbf092492

;=============================================

LAB_ce313b8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314d4,pc),r3
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
    mov.w @(DAT_ce314ce,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce3142c
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    fldi0 fr4
    mov r6,r5
    add 0x01,r0
    mov.l @(PTR_ce314d8,pc),r3
    mov.b r0,@(0x6,r14)
    mov r14,r4
    mov.w @(DAT_ce314ce,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3142c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31432:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce314d4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3144c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce314dc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3144c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31454:
    mov r4,r3
    mov.l @(PTR_ce314e0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31466:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314d4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce314d0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce314c8
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
    mova @(DAT_ce314e4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce314e8,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce314ec,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce314f0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce314d2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce314c8
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce314c8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314ce:
    #data 0x041c
DAT_ce314d0:
    #data 0x0141
DAT_ce314d2:
    #data 0x01d2
    #align4

PTR_ce314d4:
    #data loc_8c034dee
PTR_ce314d8:
    #data loc_8c034e8c
PTR_ce314dc:
    #data loc_8c051648
PTR_ce314e0:
    #data PTR_ce337c4
DAT_ce314e4:
    #data 0x41a00000
DAT_ce314e8:
    #data 0xbea00000
DAT_ce314ec:
    #data 0x40cdb6db
DAT_ce314f0:
    #data 0xbf092492

;=============================================

LAB_ce314f4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3164c,pc),r3
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
    mov.w @(DAT_ce31646,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31568
    mov.b @(0x6,r14),r0
    mov r14,r4
    fldi0 fr4
    mov 0x03,r6
    add 0x01,r0
    mov.l @(PTR_ce31650,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x02,r5
    mov.w @(DAT_ce31646,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31568:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3156e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3164c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31588
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31654,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31588:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31590:
    mov r4,r3
    mov.l @(PTR_ce31658,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce315a2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov.l @(PTR_ce3165c,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31648,pc),r0
    jsr @r2
    mov.b r3,@(r0,r14)
    tst 0x01,r0
    bf LAB_ce315cc
    mov.l @(PTR_ce31650,pc),r2
    mov 0x12,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov 0x07,r0
    bra LAB_ce315f6
    mov.w r0,@(0x1e,r14)

LAB_ce315cc:
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    mov.l @(PTR_ce31650,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce31660,pc),r2
    mov.b @(r0,r14),r6
    mov 0x1C,r3
    lds.l @r15+,PR
    extu.b r6,r6
    mov r14,r4
    mulu.w r3,r6
    mov 0x03,r7
    mov 0x00,r5
    sts MACL,r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce315f6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce315fc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3164c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3161e
    mov.b @(0x5,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31664,pc),r3
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3161e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31624:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3164c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31668
    mov.b @(0x5,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31664,pc),r3
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31646:
    #data 0x041c
DAT_ce31648:
    #data 0x012c
    #align4

PTR_ce3164c:
    #data loc_8c034dee
PTR_ce31650:
    #data loc_8c034e8c
PTR_ce31654:
    #data loc_8c051648
PTR_ce31658:
    #data PTR_ce337d0
PTR_ce3165c:
    #data loc_8c03319e
PTR_ce31660:
    #data loc_8c03544c
PTR_ce31664:
    #data loc_8c035162

;=============================================

LAB_ce31668:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3166e:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    mov.l r9,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3178c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x01,r13
    and r0,r13
    mov.w @(DAT_ce31780,pc),r0
    mov 0x01,r11
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce316ca
    mov 0x00,r12
    mov.b @(0x2,r14),r0
    mov.l @(PTR_ce31790,pc),r4
    extu.b r0,r0
    mov r0,r3
    shll2 r0
    add r3,r0
    mov.w @(DAT_ce31782,pc),r3
    shll2 r0
    add r4,r0
    mov.w @r0,r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce316b0
    bra LAB_ce316ca
    mov r12,r13

LAB_ce316b0:
    mov.b @(0x2,r14),r0
    extu.b r0,r0
    mov r0,r2
    shll2 r0
    add r2,r0
    mov.w @(DAT_ce31784,pc),r2
    shll2 r0
    add r0,r4
    mov.w @r4,r1
    extu.w r1,r1
    tst r2,r1
    bt LAB_ce316ca
    mov r11,r13

LAB_ce316ca:
    mov.w @(DAT_ce31786,pc),r0
    mov.l @(r0,r14),r5
    mov.b @(0x1,r5),r0
    extu.b r0,r0
    cmp/eq 0x18,r0
    bt/s LAB_ce316e8
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x19,r0
    bt LAB_ce316e8
    mov r4,r0
    nop
    cmp/eq 0x1A,r0
    bf LAB_ce316ea

LAB_ce316e8:
    mov r11,r13

LAB_ce316ea:
    mov.l @(PTR_ce31794,pc),r2
    mov 0x02,r10
    jsr @r2
    mov r14,r4
    cmp/ge r10,r0
    bf LAB_ce316f8
    mov r10,r13

LAB_ce316f8:
    extu.b r13,r0
    mov.l @(PTR_ce31798,pc),r9
    cmp/eq 0x00,r0
    bt LAB_ce31708
    cmp/eq 0x01,r0
    bt LAB_ce31740
    bra LAB_ce317a8
    nop

LAB_ce31708:
    mov 0x21,r0
    mov 0x00,r5
    mov.b r12,@(r0,r14)
    mov 0x02,r6
    jsr @r9
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
    mova @(DAT_ce3179c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31788,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce317bc
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    bra LAB_ce317bc
    fmov fr3,@(r0,r14)

LAB_ce31740:
    mov 0x21,r0
    mov.b r11,@(r0,r14)
    mov 0x13,r5
    mov.w @(DAT_ce31788,pc),r0
    mov 0x01,r6
    mov.w r12,@(r0,r14)
    jsr @r9
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce317a0,pc),r2
    mov.b @(r0,r14),r6
    mov 0x1C,r3
    mov 0x03,r5
    extu.b r6,r6
    mulu.w r3,r6
    mov 0x01,r7
    sts MACL,r6
    add 0x03,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce317a4,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce317a4,pc),r2
    mov 0x00,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    bra LAB_ce317bc
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31780:
    #data 0x0525
DAT_ce31782:
    #data 0x0200
DAT_ce31784:
    #data 0x0100
DAT_ce31786:
    #data 0x020c
DAT_ce31788:
    #data 0x0130
    #align4

PTR_ce3178c:
    #data loc_8c03319e
PTR_ce31790:
    #data loc_8c2681dc
PTR_ce31794:
    #data loc_8c0514b8
PTR_ce31798:
    #data loc_8c034e8c
DAT_ce3179c:
    #data 0xc0a00000
PTR_ce317a0:
    #data loc_8c03544c
PTR_ce317a4:
    #data loc_8c0c7f64

;=============================================

LAB_ce317a8:
    mov 0x21,r0
    mov 0x13,r5
    mov.b r10,@(r0,r14)
    mov 0x00,r6
    jsr @r9
    mov r14,r4
    mov.l @(PTR_ce318dc,pc),r3
    mov 0x10,r5
    jsr @r3
    mov r14,r4

LAB_ce317bc:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce317d8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce318e0,pc),r3
    jsr @r3
    mov r4,r14
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce31852
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
    mova @(DAT_ce318e4,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce318da,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31852
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce318e8,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce318ec,pc),r13
    mov 0x02,r5
    mov 0x00,r6
    jsr @r13
    mov r14,r4
    mov 0x02,r5
    mov 0x01,r6
    jsr @r13
    mov r14,r4
    mov 0x02,r6
    mov r6,r5
    jsr @r13
    mov r14,r4
    mov 0x02,r5
    mov 0x03,r6
    jsr @r13
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce318dc,pc),r2
    mov r14,r4
    mov 0x10,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31852:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3185a:
    mov.l @(PTR_ce318e0,pc),r3
    jmp @r3
    nop

LAB_ce31860:
    mov.l @(PTR_ce318e0,pc),r3
    jmp @r3
    nop

LAB_ce31866:
    mov 0x21,r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce318f0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3187a:
    mov r4,r3
    mov.l @(PTR_ce318f4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3188c:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce318a0
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce318e8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce318a0:
    mov.l @(PTR_ce318e0,pc),r3
    jmp @r3
    nop

LAB_ce318a6:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce318ba
    mov.b @(0x6,r4),r0
    mov 0x00,r6
    mov.l @(PTR_ce318e8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce318ba:
    mov.l @(PTR_ce318e0,pc),r3
    jmp @r3
    nop

LAB_ce318c0:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce318d4
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce318e8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce318d4:
    mov.l @(PTR_ce318e0,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce318da:
    #data 0x0298
    #align4

PTR_ce318dc:
    #data loc_8c042008
PTR_ce318e0:
    #data loc_8c034dee
DAT_ce318e4:
    #data 0x42d55555
PTR_ce318e8:
    #data loc_8c034e8c
PTR_ce318ec:
    #data loc_8c0c7f64
PTR_ce318f0:
    #data PTR_ce337e4
PTR_ce318f4:
    #data PTR_ce337f0

;=============================================

LAB_ce318f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a50,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31918
    mov.l @(PTR_ce31a54,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31a58,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31918:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31a5c,pc),r0
    extu.b r2,r2
    lds.l @r15+,PR
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3192c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31a4a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31a54,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce31a60,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31a4c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3195e
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3195e:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31a64,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x39,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31a68,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce31a4e,pc),r0
    mov r4,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31a6c,pc),r3
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
    mov.l @(PTR_ce31a70,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce319a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a74,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31a78,pc),r3
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
    bt LAB_ce31a10
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce31a70,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31a7c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a10:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31a16:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31a74,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31a30
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31a80,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31a30:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31a38:
    mov r4,r3
    mov.l @(PTR_ce31a84,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a4a:
    #data 0x01f9
DAT_ce31a4c:
    #data 0x01d2
DAT_ce31a4e:
    #data 0x01a1
    #align4

PTR_ce31a50:
    #data loc_8c046c8a
PTR_ce31a54:
    #data loc_8c035162
PTR_ce31a58:
    #data loc_8c051648
PTR_ce31a5c:
    #data PTR_ce337f8
DAT_ce31a60:
    #data 0xc1f00000
DAT_ce31a64:
    #data 0xbe892492
DAT_ce31a68:
    #data 0xbf4db6db
PTR_ce31a6c:
    #data loc_8c2896b0
PTR_ce31a70:
    #data loc_8c034e8c
PTR_ce31a74:
    #data loc_8c034dee
PTR_ce31a78:
    #data loc_8c052ce2
PTR_ce31a7c:
    #data loc_8c0511b4
PTR_ce31a80:
    #data loc_8c051854
PTR_ce31a84:
    #data PTR_ce3380c

;=============================================

LAB_ce31a88:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31b84,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31b88,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31b8c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31b90,pc),r2
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
    mov.w @(DAT_ce31b78,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31b7a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31b7c,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x32,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31b94,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov r13,r6
    mov.w @(r0,r2),r1
    mov 0x15,r5
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31b98,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31b14:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b9c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b2e
    lds.l @r15+,PR
    mov.l @(PTR_ce31ba0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b2e:
    mov.l @(PTR_ce31ba4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31b7e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31b60
    mov 0x00,r3
    mov r3,r5
    mov r3,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31ba8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31ba8,pc),r2
    mov 0x01,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31b80,pc),r0
    mov 0x10,r3
    mov 0x00,r2
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r2,@(r0,r14)

LAB_ce31b60:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b66:
    mov r4,r3
    mov.l @(PTR_ce31bac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b78:
    #data 0x01f9
DAT_ce31b7a:
    #data 0x041c
DAT_ce31b7c:
    #data 0x01a3
DAT_ce31b7e:
    #data 0x0141
DAT_ce31b80:
    #data 0x027a
    #align4

PTR_ce31b84:
    #data loc_8c056de4
PTR_ce31b88:
    #data loc_8c05218a
PTR_ce31b8c:
    #data loc_8c035162
PTR_ce31b90:
    #data loc_8c05115a
PTR_ce31b94:
    #data loc_8c2896b0
PTR_ce31b98:
    #data loc_8c034e8c
PTR_ce31b9c:
    #data loc_8c034dee
PTR_ce31ba0:
    #data loc_8c051648
PTR_ce31ba4:
    #data FUN_ce33622
PTR_ce31ba8:
    #data loc_8c072958
PTR_ce31bac:
    #data PTR_ce33818

;=============================================

LAB_ce31bb0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31cf8,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31cfc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31cee,pc),r0
    mov 0x02,r3
    mov 0x00,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31d00,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(DAT_ce31d04,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    mov 0x00,r4
    lds r1,FPUL
    mov.l @(DAT_ce31d08,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce31d0c,pc),r1
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
    mov.w @(DAT_ce31cf0,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x34,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce31d10,pc),r3
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x15,r5
    mov.b @(0x2,r14),r0
    mov 0x01,r6
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31d14,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x30,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce31c4e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31d18,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31d1c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31d20,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31cf2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31c90
    mov 0x00,r3
    mov r3,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31d24,pc),r3
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31d24,pc),r2
    mov 0x01,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31cf4,pc),r0
    mov 0x10,r3
    mov 0x00,r2
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r2,@(r0,r14)

LAB_ce31c90:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31cb0
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31d14,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31cb0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31cb6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31d18,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31d1c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31cd6
    lds.l @r15+,PR
    mov.l @(PTR_ce31d28,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31cd6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31cdc:
    mov r4,r3
    mov.l @(PTR_ce31d2c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31cee:
    #data 0x01f9
DAT_ce31cf0:
    #data 0x01a3
DAT_ce31cf2:
    #data 0x0141
DAT_ce31cf4:
    #data 0x027a
    #align4

PTR_ce31cf8:
    #data loc_8c056de4
PTR_ce31cfc:
    #data loc_8c05218a
PTR_ce31d00:
    #data loc_8c035162
DAT_ce31d04:
    #data 0x41800000
DAT_ce31d08:
    #data 0x41000000
DAT_ce31d0c:
    #data 0x42800000
PTR_ce31d10:
    #data loc_8c2896b0
PTR_ce31d14:
    #data loc_8c034e8c
PTR_ce31d18:
    #data FUN_ce335e8
PTR_ce31d1c:
    #data loc_8c034dee
PTR_ce31d20:
    #data FUN_ce33622
PTR_ce31d24:
    #data loc_8c072958
PTR_ce31d28:
    #data loc_8c05176e
PTR_ce31d2c:
    #data PTR_ce33820

;=============================================

LAB_ce31d30:
    mov.w @(DAT_ce31e40,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31d42
    mov 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31d42:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31e48,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d52:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31e4c,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31e50,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31e54,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31e58,pc),r2
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
    mov.w @(DAT_ce31e40,pc),r0
    mov 0x3F,r3
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31e42,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31e44,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31e5c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x15,r5
    mov.l @(PTR_ce31e60,pc),r2
    mov 0x03,r6
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce31dd6:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31e64,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31dfc
    lds.l @r15+,PR
    mov.l @(PTR_ce31e68,pc),r3
    mov r14,r4
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31dfc:
    mov.l @(PTR_ce31e6c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31e46,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31e22
    mov.l @(PTR_ce31e70,pc),r11
    mov 0x00,r4
    mov r4,r13
    mov 0x0A,r12
    mov.b r4,@(r0,r14)

LAB_ce31e14:
    mov 0x00,r5
    mov r13,r6
    jsr @r11
    mov r14,r4
    add 0x01,r13
    cmp/ge r12,r13
    bf LAB_ce31e14

LAB_ce31e22:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31e2e:
    mov r4,r3
    mov.l @(PTR_ce31e74,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e40:
    #data 0x01f9
DAT_ce31e42:
    #data 0x041c
DAT_ce31e44:
    #data 0x01a1
DAT_ce31e46:
    #data 0x0141
    #align4

PTR_ce31e48:
    #data PTR_ce3382c
PTR_ce31e4c:
    #data loc_8c056de4
PTR_ce31e50:
    #data loc_8c05218a
PTR_ce31e54:
    #data loc_8c035162
PTR_ce31e58:
    #data loc_8c05115a
PTR_ce31e5c:
    #data loc_8c2896b0
PTR_ce31e60:
    #data loc_8c034e8c
PTR_ce31e64:
    #data loc_8c034dee
PTR_ce31e68:
    #data loc_8c051648
PTR_ce31e6c:
    #data FUN_ce33626
PTR_ce31e70:
    #data loc_8c072660
PTR_ce31e74:
    #data PTR_ce33834

;=============================================

LAB_ce31e78:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31fac,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31fb0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31fa6,pc),r0
    mov 0x02,r3
    mov 0x00,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31fb4,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(DAT_ce31fb8,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    mov 0x00,r4
    lds r1,FPUL
    mov.l @(DAT_ce31fbc,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce31fc0,pc),r1
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
    mov.w @(DAT_ce31fa8,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x30,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce31fc4,pc),r3
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x15,r5
    mov.b @(0x2,r14),r0
    mov 0x04,r6
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31fc8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce31f12:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31fcc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31fd0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31f3e
    lds.l @r15+,PR
    mov.l @(PTR_ce31fd4,pc),r2
    mov r14,r4
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31f3e:
    mov.l @(PTR_ce31fd8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31faa,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce31f6c
    mov.w @(DAT_ce31faa,pc),r0
    mov 0x0A,r13
    mov.l @(PTR_ce31fdc,pc),r11
    mov 0x0F,r12
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)

LAB_ce31f5e:
    mov 0x00,r5
    mov r13,r6
    jsr @r11
    mov r14,r4
    add 0x01,r13
    cmp/ge r12,r13
    bf LAB_ce31f5e

LAB_ce31f6c:
    mov.w @(DAT_ce31faa,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce31f88
    mov.w @(DAT_ce31faa,pc),r0
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce31fe0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31f88:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31f94:
    mov r4,r3
    mov.l @(PTR_ce31fe4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31fa6:
    #data 0x01f9
DAT_ce31fa8:
    #data 0x01a3
DAT_ce31faa:
    #data 0x0141
    #align4

PTR_ce31fac:
    #data loc_8c056de4
PTR_ce31fb0:
    #data loc_8c05218a
PTR_ce31fb4:
    #data loc_8c035162
DAT_ce31fb8:
    #data 0x41800000
DAT_ce31fbc:
    #data 0x41000000
DAT_ce31fc0:
    #data 0x42800000
PTR_ce31fc4:
    #data loc_8c2896b0
PTR_ce31fc8:
    #data loc_8c034e8c
PTR_ce31fcc:
    #data FUN_ce335e8
PTR_ce31fd0:
    #data loc_8c034dee
PTR_ce31fd4:
    #data loc_8c05176e
PTR_ce31fd8:
    #data FUN_ce33626
PTR_ce31fdc:
    #data loc_8c072660
DAT_ce31fe0:
    #data 0xbf4db6db
PTR_ce31fe4:
    #data PTR_ce3383c

;=============================================

LAB_ce31fe8:
    mov.w @(DAT_ce32122,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31ffa
    mov 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31ffa:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3212c,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3200a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32130,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32134,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32138,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3213c,pc),r2
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
    mov.w @(DAT_ce32122,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32124,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32126,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x36,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32140,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    mov 0x15,r5
    mov 0x05,r6
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32144,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r3
    mov r13,r0
    nop
    mov r14,r4
    mov.b r0,@(0x9,r3)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce3209e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32148,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32128,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce320d0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x24,r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.l @(PTR_ce3214c,pc),r3
    mov r14,r4
    mov.w r0,@(0x1e,r14)
    mov 0x20,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce320d0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce320d6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l r5,@r15
    mov.w @(0x1c,r14),r0
    tst 0x03,r0
    bf LAB_ce320f8
    mov.w @(0x1e,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce32150,pc),r3
    mov r0,r6
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)

LAB_ce320f8:
    mov.l @(PTR_ce32148,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3211a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5A,r0
    mov.w r0,@(0x1c,r14)
    mov 0x01,r0
    mov.l @r15,r3
    mov.b r0,@(0x9,r3)

LAB_ce3211a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32122:
    #data 0x01f9
DAT_ce32124:
    #data 0x041c
DAT_ce32126:
    #data 0x01a3
DAT_ce32128:
    #data 0x0141
    #align4

PTR_ce3212c:
    #data PTR_ce33844
PTR_ce32130:
    #data loc_8c056de4
PTR_ce32134:
    #data loc_8c05218a
PTR_ce32138:
    #data loc_8c035162
PTR_ce3213c:
    #data loc_8c05115a
PTR_ce32140:
    #data loc_8c2896b0
PTR_ce32144:
    #data loc_8c034e8c
PTR_ce32148:
    #data loc_8c034dee
PTR_ce3214c:
    #data loc_8c042008
PTR_ce32150:
    #data loc_8c07338c

;=============================================

LAB_ce32154:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    cmp/eq 0x3C,r0
    bf LAB_ce32168
    mov.l @(PTR_ce32284,pc),r2
    mov 0x21,r5
    jsr @r2
    mov r14,r4

LAB_ce32168:
    mov.l @(PTR_ce32288,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32180
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce32180:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32186:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32288,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321a0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3228c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce321a0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce321a8:
    mov r4,r3
    mov.l @(PTR_ce32290,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce321ba:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32274,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce321dc
    mov.w @(DAT_ce32278,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32276,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce321dc:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32294,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32298,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3229c,pc),r3
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
    mov.w @(DAT_ce3227a,pc),r0
    mov 0x41,r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3227c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3227e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce322a0,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov r13,r6
    mov.w r1,@(r0,r2)
    mov 0x16,r5
    mov.l @(PTR_ce322a4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32250:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce32280,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32282,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32274,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce322a8
    bra LAB_ce322aa
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32274:
    #data 0x0255
DAT_ce32276:
    #data 0x00ff
DAT_ce32278:
    #data 0x03f0
DAT_ce3227a:
    #data 0x01f9
DAT_ce3227c:
    #data 0x041c
DAT_ce3227e:
    #data 0x01a1
DAT_ce32280:
    #data 0x03f8
DAT_ce32282:
    #data 0x0328
    #align4

PTR_ce32284:
    #data loc_8c042008
PTR_ce32288:
    #data loc_8c034dee
PTR_ce3228c:
    #data loc_8c051648
PTR_ce32290:
    #data PTR_ce3384c
PTR_ce32294:
    #data loc_8c05218a
PTR_ce32298:
    #data loc_8c035162
PTR_ce3229c:
    #data loc_8c05115a
PTR_ce322a0:
    #data loc_8c2896b0
PTR_ce322a4:
    #data loc_8c034e8c

;=============================================

LAB_ce322a8:
    mov 0x00,r3

LAB_ce322aa:
    mov.w @(DAT_ce323d0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce323e0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce323d2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32300
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5A,r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov 0x05,r0
    mov.l @r15,r3
    mov r15,r5
    add 0x04,r5
    mov.b r0,@(0x7,r3)
    mova @(DAT_ce323e4,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce323ec,pc),r3
    mov 0x01,r6
    fmov fr3,@(r0,r15)
    mova @(DAT_ce323e8,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov 0x0C,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce323d4,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce32300:
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32308:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce323d6,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce323d8,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    cmp/eq 0x5A,r0
    bf LAB_ce32334
    mov.l @(PTR_ce323f0,pc),r2
    mov 0x15,r5
    jsr @r2
    mov r14,r4

LAB_ce32334:
    mov.l @(PTR_ce323e0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce323f4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf/s LAB_ce32372
    mov 0x00,r11
    mov.b @(0x7,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce323f8,pc),r3
    mov 0x07,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce323da,pc),r0
    mov.b r11,@(r0,r14)
    add 0xFF,r0
    mov.b r11,@(r0,r14)
    mov.w @(DAT_ce323dc,pc),r0
    mov.b r11,@(r0,r14)
    add 0x01,r0
    bra LAB_ce323c0
    mov.b r11,@(r0,r14)

LAB_ce32372:
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce323c0
    mov 0x0A,r12
    mov r12,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov.l @r15,r3
    mov.b @(0x7,r3),r0
    tst r0,r0
    bt LAB_ce323c0
    mov.l @r15,r2
    mov r11,r13
    mov.l @(PTR_ce323fc,pc),r10
    mov.b @(0x7,r2),r0
    add 0xFF,r0
    mov.b r0,@(0x7,r2)

LAB_ce3239c:
    mov 0x01,r5
    mov r13,r6
    jsr @r10
    mov r14,r4
    add 0x01,r13
    cmp/ge r12,r13
    bf LAB_ce3239c
    mov r14,r4
    mov 0x1F,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce323f0,pc),r2
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce323c0:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce323d0:
    #data 0x03f1
DAT_ce323d2:
    #data 0x0141
DAT_ce323d4:
    #data 0x03f0
DAT_ce323d6:
    #data 0x03f8
DAT_ce323d8:
    #data 0x0328
DAT_ce323da:
    #data 0x03f9
DAT_ce323dc:
    #data 0x0327
    #align4

PTR_ce323e0:
    #data loc_8c034dee
DAT_ce323e4:
    #data 0xc2855555
DAT_ce323e8:
    #data 0x434db6db
PTR_ce323ec:
    #data loc_8c050834
PTR_ce323f0:
    #data loc_8c042008
PTR_ce323f4:
    #data FUN_ce33626
PTR_ce323f8:
    #data loc_8c034e8c
PTR_ce323fc:
    #data loc_8c072660

;=============================================

LAB_ce32400:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32558,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3241a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3255c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3241a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32422:
    mov r4,r3
    mov.l @(PTR_ce32560,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32434:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32546,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32454
    mov.w @(DAT_ce3254a,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32548,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32454:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32564,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3254c,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce32568,pc),r3
    mov 0x00,r5
    mov.b r2,@(r0,r14)
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
    mov 0x38,r3
    mov.w @(DAT_ce3254e,pc),r0
    mov 0x00,r4
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3256c,pc),r3
    mov 0x01,r6
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32570,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce324ba:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce32550,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32552,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32546,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce324de
    bra LAB_ce324e0
    mov 0x02,r3

LAB_ce324de:
    mov 0x00,r3

LAB_ce324e0:
    mov.w @(DAT_ce32554,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32574,pc),r3
    mov.l @r15,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32558,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32556,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3253e
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5A,r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov 0x05,r0
    mov.l @r15,r3
    mov r15,r5
    add 0x04,r5
    mov.b r0,@(0x7,r3)
    mova @(DAT_ce32578,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce32580,pc),r3
    mov 0x01,r6
    fmov fr3,@(r0,r15)
    mova @(DAT_ce3257c,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov 0x0C,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce3254a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce3253e:
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32546:
    #data 0x0255
DAT_ce32548:
    #data 0x00ff
DAT_ce3254a:
    #data 0x03f0
DAT_ce3254c:
    #data 0x01f9
DAT_ce3254e:
    #data 0x01a1
DAT_ce32550:
    #data 0x03f8
DAT_ce32552:
    #data 0x0328
DAT_ce32554:
    #data 0x03f1
DAT_ce32556:
    #data 0x0141
    #align4

PTR_ce32558:
    #data loc_8c034dee
PTR_ce3255c:
    #data loc_8c051648
PTR_ce32560:
    #data PTR_ce33860
PTR_ce32564:
    #data loc_8c05218a
PTR_ce32568:
    #data loc_8c035162
PTR_ce3256c:
    #data loc_8c2896b0
PTR_ce32570:
    #data loc_8c034e8c
PTR_ce32574:
    #data FUN_ce335e8
DAT_ce32578:
    #data 0xc22d5555
DAT_ce3257c:
    #data 0x42bc9249
PTR_ce32580:
    #data loc_8c050834

;=============================================

LAB_ce32584:
    mov.w @(DAT_ce3269c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3269e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    cmp/eq 0x5A,r0
    bf/s LAB_ce325ac
    mov r5,r13
    mov.l @(PTR_ce326a8,pc),r2
    mov 0x15,r5
    jsr @r2
    mov r14,r4

LAB_ce325ac:
    mov.l @(PTR_ce326ac,pc),r3
    mov r13,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce326b0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce326b4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce325f2
    mov.b @(0x7,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce326b8,pc),r3
    mov 0x08,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce326a0,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce326a2,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    bra LAB_ce3263a
    mov.b r4,@(r0,r14)

LAB_ce325f2:
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3263a
    mov 0x0A,r4
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov.b @(0x7,r13),r0
    tst r0,r0
    bt LAB_ce3263a
    mov.b @(0x7,r13),r0
    mov 0x0F,r12
    mov.l @(PTR_ce326bc,pc),r11
    add 0xFF,r0
    mov.b r0,@(0x7,r13)
    mov r4,r13

LAB_ce3261a:
    mov 0x01,r5
    mov r13,r6
    jsr @r11
    mov r14,r4
    add 0x01,r13
    cmp/ge r12,r13
    bf LAB_ce3261a
    lds.l @r15+,PR
    mov.l @(PTR_ce326a8,pc),r2
    mov 0x1F,r5
    mov r14,r4
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3263a:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32646:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce326b0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32660
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce326c0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32660:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32668:
    mov r4,r3
    mov.l @(PTR_ce326c4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3267a:
    mov.w @(DAT_ce326a4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3268c
    mov 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce3268c:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce326c8,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3269c:
    #data 0x03f8
DAT_ce3269e:
    #data 0x0328
DAT_ce326a0:
    #data 0x03f9
DAT_ce326a2:
    #data 0x0327
DAT_ce326a4:
    #data 0x01f9
    #align4

PTR_ce326a8:
    #data loc_8c042008
PTR_ce326ac:
    #data FUN_ce335e8
PTR_ce326b0:
    #data loc_8c034dee
PTR_ce326b4:
    #data FUN_ce33626
PTR_ce326b8:
    #data loc_8c034e8c
PTR_ce326bc:
    #data loc_8c072660
PTR_ce326c0:
    #data loc_8c05176e
PTR_ce326c4:
    #data PTR_ce33870
PTR_ce326c8:
    #data PTR_ce33880

;=============================================

LAB_ce326cc:
    mov.w @(DAT_ce327d4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce326ec
    mov r5,r13
    mov.w @(DAT_ce327d8,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce327d6,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce326ec:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce327e8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce327ec,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce327f0,pc),r3
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
    mov.w @(DAT_ce327da,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce327dc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x4,r13)
    mov 0x3A,r3
    mov.b r0,@(0x5,r13)
    mov 0x16,r5
    mov.w @(DAT_ce327de,pc),r0
    mov 0x02,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce327f4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce327f8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32766:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce327e0,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce327e2,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce327d4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32788
    bra LAB_ce3278a
    mov 0x02,r3

LAB_ce32788:
    mov 0x00,r3

LAB_ce3278a:
    mov.w @(DAT_ce327e4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce327fc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce327e6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce327cc
    mov 0x00,r4
    mov.l @(PTR_ce32808,pc),r3
    mov.b r4,@(r0,r14)
    mov r15,r5
    mov.b @(0x6,r14),r0
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32800,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32804,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce327d8,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce327cc:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce327d4:
    #data 0x0255
DAT_ce327d6:
    #data 0x00ff
DAT_ce327d8:
    #data 0x03f0
DAT_ce327da:
    #data 0x01f9
DAT_ce327dc:
    #data 0x041c
DAT_ce327de:
    #data 0x01a1
DAT_ce327e0:
    #data 0x03f8
DAT_ce327e2:
    #data 0x0328
DAT_ce327e4:
    #data 0x03f1
DAT_ce327e6:
    #data 0x0141
    #align4

PTR_ce327e8:
    #data loc_8c05218a
PTR_ce327ec:
    #data loc_8c035162
PTR_ce327f0:
    #data loc_8c05115a
PTR_ce327f4:
    #data loc_8c2896b0
PTR_ce327f8:
    #data loc_8c034e8c
PTR_ce327fc:
    #data loc_8c034dee
DAT_ce32800:
    #data 0xc2960000
DAT_ce32804:
    #data 0x43362492
PTR_ce32808:
    #data loc_8c050834

;=============================================

LAB_ce3280c:
    mov.w @(DAT_ce328fa,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    mov r5,r12
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce328fc,pc),r0
    mov.l @(PTR_ce32908,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce328fe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32852
    mov 0x00,r13
    mov.l @(PTR_ce3290c,pc),r3
    mov 0x00,r6
    mov.b r13,@(r0,r14)
    mov r6,r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce32852
    lds.l @r15+,PR
    mov.l @(PTR_ce32910,pc),r3
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32852:
    mov.b @(0x5,r12),r0
    tst r0,r0
    bf LAB_ce3286e
    mov.w @(DAT_ce32900,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3286e
    mov.l @(PTR_ce32914,pc),r3
    mov 0x16,r5
    mov 0x03,r6
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    mov.b r0,@(0x5,r12)

LAB_ce3286e:
    mov.b @(0x4,r12),r0
    tst r0,r0
    bt LAB_ce3288e
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32902,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32904,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)

LAB_ce3288e:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32898:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32908,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce328c0
    mov.l @(PTR_ce32914,pc),r2
    mov 0x16,r5
    mov 0x04,r6
    jsr @r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce328c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce328c6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32908,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce328e0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32910,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce328e0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce328e8:
    mov r4,r3
    mov.l @(PTR_ce32918,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328fa:
    #data 0x03f8
DAT_ce328fc:
    #data 0x0328
DAT_ce328fe:
    #data 0x0141
DAT_ce32900:
    #data 0x019e
DAT_ce32902:
    #data 0x03f9
DAT_ce32904:
    #data 0x0327
    #align4

PTR_ce32908:
    #data loc_8c034dee
PTR_ce3290c:
    #data loc_8c071ed8
PTR_ce32910:
    #data loc_8c051648
PTR_ce32914:
    #data loc_8c034e8c
PTR_ce32918:
    #data PTR_ce33888

;=============================================

LAB_ce3291c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32a30,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3293c
    mov.w @(DAT_ce32a34,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32a32,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3293c:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32a44,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32a48,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32a4c,pc),r3
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
    mov.w @(DAT_ce32a36,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32a38,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.l @r15,r3
    mov r4,r0
    nop
    mov.b r0,@(0x6,r3)
    mov 0x40,r3
    mov.w @(DAT_ce32a3a,pc),r0
    mov 0x16,r5
    mov 0x05,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32a50,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32a54,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x30,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce329ba:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32a3c,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32a3e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32a30,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce329dc
    bra LAB_ce329de
    mov 0x02,r3

LAB_ce329dc:
    mov 0x00,r3

LAB_ce329de:
    mov.w @(DAT_ce32a40,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32a58,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32a42,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32a28
    mov.w @(DAT_ce32a42,pc),r0
    mov 0x7E,r3
    mov 0x00,r4
    mov r15,r5
    mov.b @(r0,r14),r2
    mov 0x01,r6
    and r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32a64,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32a5c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32a60,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce32a34,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r2
    mov r14,r4

LAB_ce32a28:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a30:
    #data 0x0255
DAT_ce32a32:
    #data 0x00ff
DAT_ce32a34:
    #data 0x03f0
DAT_ce32a36:
    #data 0x01f9
DAT_ce32a38:
    #data 0x041c
DAT_ce32a3a:
    #data 0x01a1
DAT_ce32a3c:
    #data 0x03f8
DAT_ce32a3e:
    #data 0x0328
DAT_ce32a40:
    #data 0x03f1
DAT_ce32a42:
    #data 0x0141
    #align4

PTR_ce32a44:
    #data loc_8c05218a
PTR_ce32a48:
    #data loc_8c035162
PTR_ce32a4c:
    #data loc_8c05115a
PTR_ce32a50:
    #data loc_8c2896b0
PTR_ce32a54:
    #data loc_8c034e8c
PTR_ce32a58:
    #data loc_8c034dee
DAT_ce32a5c:
    #data 0xc1d55555
DAT_ce32a60:
    #data 0x43362492
PTR_ce32a64:
    #data loc_8c050834

;=============================================

LAB_ce32a68:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32ba6,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32ba8,pc),r0
    mov.l @(PTR_ce32bb4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32baa,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce32aa8
    mov.w @(DAT_ce32baa,pc),r0
    mov 0x7D,r3
    mov 0x00,r6
    mov.l @(PTR_ce32bb8,pc),r1
    mov.b @(r0,r14),r2
    mov r6,r5
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce32bbc,pc),r3
    mov 0x4B,r5
    jsr @r3
    mov r14,r4

LAB_ce32aa8:
    mov.l @r15,r2
    mov.b @(0x6,r2),r0
    tst r0,r0
    bt LAB_ce32ad2
    mov.l @(PTR_ce32bc0,pc),r3
    mov 0x16,r5
    mov 0x06,r6
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32bac,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32bae,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce32ad2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32ada:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32bb4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32af4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32bc4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32af4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32afc:
    mov r4,r3
    mov.l @(PTR_ce32bc8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32b0e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32bcc,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32bd0,pc),r2
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
    mov 0x00,r3
    mov.w @(DAT_ce32bb0,pc),r0
    mov 0x14,r5
    mov 0x02,r6
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32bb2,pc),r0
    mov.l @(PTR_ce32bc0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32bd4,pc),r2
    mov 0x10,r5
    jsr @r2
    mov r14,r4
    mov 0x40,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce32b6c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32bb4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32b8e
    lds.l @r15+,PR
    mov.l @(PTR_ce32bc4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32b8e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b94:
    mov r4,r3
    mov.l @(PTR_ce32bd8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ba6:
    #data 0x03f8
DAT_ce32ba8:
    #data 0x0328
DAT_ce32baa:
    #data 0x0141
DAT_ce32bac:
    #data 0x03f9
DAT_ce32bae:
    #data 0x0327
DAT_ce32bb0:
    #data 0x01f9
DAT_ce32bb2:
    #data 0x041c
    #align4

PTR_ce32bb4:
    #data loc_8c034dee
PTR_ce32bb8:
    #data loc_8c072330
PTR_ce32bbc:
    #data loc_8c04223a
PTR_ce32bc0:
    #data loc_8c034e8c
PTR_ce32bc4:
    #data loc_8c051648
PTR_ce32bc8:
    #data PTR_ce3389c
PTR_ce32bcc:
    #data loc_8c05218a
PTR_ce32bd0:
    #data loc_8c035162
PTR_ce32bd4:
    #data loc_8c042008
PTR_ce32bd8:
    #data PTR_ce338ac

;=============================================

LAB_ce32bdc:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    fldi0 fr4
    mov 0x00,r13
    mov.l @(PTR_ce32ce4,pc),r3
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
    mov.w @(DAT_ce32cd8,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32cda,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ce8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32cec,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32cdc,pc),r0
    mov 0x3E,r2
    mov.l @(PTR_ce32cf0,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x06,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32cf4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32c5c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32cf8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32c7c
    mov.l @(PTR_ce32cfc,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c7c:
    mov.w @(DAT_ce32cde,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32c9e
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32d00,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32d04,pc),r0
    mov.l @(PTR_ce32d08,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32c9e:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ca6:
    mov r4,r3
    mov.l @(PTR_ce32d0c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32cb8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32ce0,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32d10
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce32dce
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32cd8:
    #data 0x01f9
DAT_ce32cda:
    #data 0x041c
DAT_ce32cdc:
    #data 0x01a1
DAT_ce32cde:
    #data 0x0141
DAT_ce32ce0:
    #data 0x0201
    #align4

PTR_ce32ce4:
    #data loc_8c035162
PTR_ce32ce8:
    #data loc_8c05218a
PTR_ce32cec:
    #data loc_8c05115a
PTR_ce32cf0:
    #data loc_8c2896b0
PTR_ce32cf4:
    #data loc_8c034e8c
PTR_ce32cf8:
    #data loc_8c034dee
PTR_ce32cfc:
    #data loc_8c051648
DAT_ce32d00:
    #data 0x425c0000
DAT_ce32d04:
    #data 0x431e9249
PTR_ce32d08:
    #data loc_8c050ea4
PTR_ce32d0c:
    #data PTR_ce338b4

;=============================================

LAB_ce32d10:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32e50,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32e54,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32e48,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32d34
    mov.l @(PTR_ce32e58,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32d34:
    mov.w @(DAT_ce32e4a,pc),r0
    mov 0x01,r3
    mov 0x00,r13
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce32e4c,pc),r0
    mov 0x1A,r5
    mov.l @r15,r2
    mov r13,r6
    mov.w r0,@(0xa,r2)
    add 0x19,r0
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r13,@(r0,r14)
    add 0xD8,r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32e5c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce32e64,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32e60,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce32d86
    mov.l @r15+,r14

LAB_ce32d86:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r1
    mov.l @(PTR_ce32e68,pc),r3
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
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32dc8
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32e6c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32dc8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32dce:
    mov.w @(DAT_ce32e4a,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce32e70,pc),r0
    mov.l @(PTR_ce32e74,pc),r3
    fmov.s @r0,fr3
    mov 0x6C,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce32df2:
    mov r4,r3
    mov.l @(PTR_ce32e78,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce32e04:
    mov.w @(DAT_ce32e4e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x1A,r0
    bf LAB_ce32e9a
    mov.l @(PTR_ce32e50,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32e4a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32e80
    mova @(DAT_ce32e7c,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fdiv fr4,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr2
    fdiv fr4,fr2
    bra LAB_ce32e9a
    fmov fr2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e48:
    #data 0x01f9
DAT_ce32e4a:
    #data 0x0201
DAT_ce32e4c:
    #data 0x01e0
DAT_ce32e4e:
    #data 0x0159
    #align4

PTR_ce32e50:
    #data loc_8c05218a
PTR_ce32e54:
    #data loc_8c035162
PTR_ce32e58:
    #data loc_8c05115a
DAT_ce32e5c:
    #data 0x414db6db
DAT_ce32e60:
    #data 0xbe892492
PTR_ce32e64:
    #data loc_8c034e8c
PTR_ce32e68:
    #data loc_8c034dee
PTR_ce32e6c:
    #data loc_8c051648
DAT_ce32e70:
    #data 0xbf4db6db
PTR_ce32e74:
    #data loc_8c05176e
PTR_ce32e78:
    #data PTR_ce338bc
DAT_ce32e7c:
    #data 0x41000000

;=============================================

LAB_ce32e80:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32f80,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32e9a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ea0:
    mov.w @(DAT_ce32f72,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32f84,pc),r0
    extu.b r3,r3
    mov.w @(DAT_ce32f70,pc),r5
    shll2 r3
    mov.l @(r0,r3),r2
    add r14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32eb8:
    mov.w @(DAT_ce32f74,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32f76,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32f28
    mov.w @(DAT_ce32f78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32ef8
    mov.w @(DAT_ce32f7a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32ef8
    mov.l @(PTR_ce32f88,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32f28
    mov r0,r4
    bra LAB_ce32f1a
    mov 0x00,r2

LAB_ce32ef8:
    mov.w @(DAT_ce32f78,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32f28
    mov.w @(DAT_ce32f7a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32f28
    mov.l @(PTR_ce32f88,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32f28
    mov r0,r4
    mov 0x01,r2

LAB_ce32f1a:
    mov.w @(DAT_ce32f7c,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f28:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f30:
    mov.w @(DAT_ce32f74,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32f76,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32fbc
    mov.w @(DAT_ce32f78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32f8c
    mov.w @(DAT_ce32f7a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32f8c
    mov.l @(PTR_ce32f88,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32fbc
    mov r0,r4
    bra LAB_ce32fae
    mov 0x02,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f70:
    #data 0x02a4
DAT_ce32f72:
    #data 0x01e9
DAT_ce32f74:
    #data 0x01fa
DAT_ce32f76:
    #data 0x0c00
DAT_ce32f78:
    #data 0x01fe
DAT_ce32f7a:
    #data 0x01a3
DAT_ce32f7c:
    #data 0x01f7
    #align4

DAT_ce32f80:
    #data 0xbf4db6db
PTR_ce32f84:
    #data PTR_ce338c4
PTR_ce32f88:
    #data loc_8c045790

;=============================================

LAB_ce32f8c:
    mov.w @(DAT_ce330bc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32fbc
    mov.w @(DAT_ce330be,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32fbc
    mov.l @(PTR_ce330cc,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32fbc
    mov r0,r4
    mov 0x03,r2

LAB_ce32fae:
    mov.w @(DAT_ce330c0,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fbc:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fc4:
    rts
    mov 0x00,r0

LAB_ce32fc8:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce330c2,pc),r1
    mov.l @(PTR_ce330d0,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce32fe0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce33004
    mov.w @(DAT_ce330c4,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce330c6,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce33004:
    mov.w @(DAT_ce330c8,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r6
    mov.l @(PTR_ce330d4,pc),r3
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
    mova @(DAT_ce330d8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce330dc,pc),r0
    mov.l @(PTR_ce330e0,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce330e4,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3304e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce33072
    mov.w @(DAT_ce330c4,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce330c6,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce33072:
    mov.w @(DAT_ce330c8,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x02,r6
    mov.l @(PTR_ce330d4,pc),r3
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
    mova @(DAT_ce330d8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce330dc,pc),r0
    mov.l @(PTR_ce330e0,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce330e4,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce330bc:
    #data 0x01fe
DAT_ce330be:
    #data 0x01a3
DAT_ce330c0:
    #data 0x01f7
DAT_ce330c2:
    #data 0x01f9
DAT_ce330c4:
    #data 0x01d2
DAT_ce330c6:
    #data 0x0130
DAT_ce330c8:
    #data 0x01a0
    #align4

PTR_ce330cc:
    #data loc_8c045790
PTR_ce330d0:
    #data PTR_ce338e8
PTR_ce330d4:
    #data loc_8c034e8c
DAT_ce330d8:
    #data 0xc36e5555
DAT_ce330dc:
    #data 0x43384924
PTR_ce330e0:
    #data loc_8c103660
PTR_ce330e4:
    #data loc_8c056f2a

;=============================================

LAB_ce330e8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce3310c
    mov.w @(DAT_ce3323a,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3323c,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce3310c:
    mov.w @(DAT_ce3323e,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x04,r6
    mov.l @(PTR_ce33248,pc),r3
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
    mova @(DAT_ce3324c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33250,pc),r0
    mov.l @(PTR_ce33254,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33258,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33156:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce3317a
    mov.w @(DAT_ce3323a,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3323c,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce3317a:
    mov.w @(DAT_ce3323e,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x03,r6
    mov.l @(PTR_ce33248,pc),r3
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
    mova @(DAT_ce3324c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33250,pc),r0
    mov.l @(PTR_ce33254,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33258,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce331c4:
    mov.w @(DAT_ce33240,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce3325c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce331d8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33260,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33242,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33234
    mov 0x00,r3
    mov.l @(PTR_ce33264,pc),r1
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.b @(0x6,r14),r0
    mov 0x02,r2
    mov 0x20,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mov 0x00,r6
    mov.w @(DAT_ce33244,pc),r0
    mov.l @(r0,r14),r4
    add 0x2E,r0
    mov.b r3,@(r0,r4)
    add 0x03,r0
    mov.b r2,@(r0,r4)
    add 0xA8,r0
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    mov 0x01,r3
    mov.b @(r0,r4),r2
    mov r3,r5
    xor r3,r2
    mov.b r2,@(r0,r4)
    jsr @r1
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33268,pc),r3
    mov 0x22,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33234:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3323a:
    #data 0x01d2
DAT_ce3323c:
    #data 0x0130
DAT_ce3323e:
    #data 0x01a0
DAT_ce33240:
    #data 0x01f7
DAT_ce33242:
    #data 0x0141
DAT_ce33244:
    #data 0x01c8
    #align4

PTR_ce33248:
    #data loc_8c034e8c
DAT_ce3324c:
    #data 0xc36e5555
DAT_ce33250:
    #data 0x4313db6d
PTR_ce33254:
    #data loc_8c103660
PTR_ce33258:
    #data loc_8c056f2a
PTR_ce3325c:
    #data PTR_ce338f8
PTR_ce33260:
    #data loc_8c034dee
PTR_ce33264:
    #data loc_8c0c7f64
PTR_ce33268:
    #data loc_8c042008

;=============================================

LAB_ce3326c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce333a0,pc),r3
    jsr @r3
    mov r4,r14
    bsr FUN_ce33622
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3329c
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce333a4,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3329c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce332a2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce333a0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce332bc
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce333a8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce332bc:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce332c4:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce333ac,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce33398,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce332da:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce333a0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce332f4
    lds.l @r15+,PR
    mov.l @(PTR_ce333a8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce332f4:
    mov.w @(DAT_ce3339a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3332e
    mov 0x00,r3
    mov.l @(PTR_ce333b0,pc),r1
    mov.b r3,@(r0,r14)
    mov 0x0B,r3
    mov.w @(DAT_ce3339c,pc),r0
    mov 0x02,r2
    mov 0x21,r5
    mov.l @(r0,r14),r4
    add 0x2E,r0
    mov.b r3,@(r0,r4)
    add 0x03,r0
    mov.b r2,@(r0,r4)
    add 0xA8,r0
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    mov 0x01,r3
    mov.b @(r0,r4),r2
    xor r3,r2
    mov.b r2,@(r0,r4)
    lds.l @r15+,PR
    jmp @r1
    mov.l @r15+,r14

LAB_ce3332e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33334:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce333a0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3339a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33392
    mov 0x00,r3
    mov.l @(PTR_ce333b4,pc),r1
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.b @(0x6,r14),r0
    mov 0x02,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3339c,pc),r0
    mov.l @(r0,r14),r4
    add 0x2E,r0
    mov.b r3,@(r0,r4)
    add 0x03,r0
    mov 0x22,r3
    mov.b r2,@(r0,r4)
    mov r3,r2
    add 0xA8,r0
    mov.b r3,@(r0,r4)
    mov.b r2,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    mov 0x01,r3
    mov.b @(r0,r4),r2
    mov r3,r5
    mov r3,r6
    xor r3,r2
    mov.b r2,@(r0,r4)
    jsr @r1
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce333b8,pc),r3
    mov 0x22,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33392:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33398:
    #data 0x02a4
DAT_ce3339a:
    #data 0x0141
DAT_ce3339c:
    #data 0x01c8
    #align4

PTR_ce333a0:
    #data loc_8c034dee
PTR_ce333a4:
    #data loc_8c034e8c
PTR_ce333a8:
    #data loc_8c051648
PTR_ce333ac:
    #data PTR_ce33908
PTR_ce333b0:
    #data loc_8c0423fc
PTR_ce333b4:
    #data loc_8c0c7f64
PTR_ce333b8:
    #data loc_8c042008

;=============================================

LAB_ce333bc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce334f4,pc),r3
    jsr @r3
    mov r4,r14
    bsr FUN_ce33622
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce333ec
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce334f8,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce333ec:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce333f2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce334f4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3340c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce334fc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3340c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33414:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33500,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce334e6,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3342a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce334f4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33444
    lds.l @r15+,PR
    mov.l @(PTR_ce334fc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33444:
    mov.w @(DAT_ce334e8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33476
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce334ea,pc),r0
    mov 0x02,r2
    mov 0x23,r5
    mov.l @(r0,r14),r4
    add 0x2E,r0
    mov.b r3,@(r0,r4)
    add 0x03,r0
    mov.b r2,@(r0,r4)
    add 0xA8,r0
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    mov 0x01,r3
    mov.b @(r0,r4),r2
    xor r3,r2
    mov.b r2,@(r0,r4)

LAB_ce33476:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3347c:
    mov.w @(DAT_ce334ec,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r2
    mov r14,r4
    mov.l @(PTR_ce33504,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33498:
    mov.w @(DAT_ce334ea,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33508,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce334a6:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce334ee,pc),r1
    mov.l @(PTR_ce3350c,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce334be:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce334f0,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce334de
    cmp/eq 0x01,r0
    bt LAB_ce33510
    cmp/eq 0x02,r0
    bt LAB_ce33518
    bra LAB_ce3351e
    nop

LAB_ce334de:
    mov.w @(DAT_ce334f2,pc),r0
    mov 0x03,r3
    bra LAB_ce3351e
    mov.b r3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce334e6:
    #data 0x02a4
DAT_ce334e8:
    #data 0x0141
DAT_ce334ea:
    #data 0x01c8
DAT_ce334ec:
    #data 0x01ea
DAT_ce334ee:
    #data 0x01f7
DAT_ce334f0:
    #data 0x04c9
DAT_ce334f2:
    #data 0x01e9
    #align4

PTR_ce334f4:
    #data loc_8c034dee
PTR_ce334f8:
    #data loc_8c034e8c
PTR_ce334fc:
    #data loc_8c05176e
PTR_ce33500:
    #data PTR_ce33914
PTR_ce33504:
    #data PTR_ce33920
PTR_ce33508:
    #data loc_8c04cc1c
PTR_ce3350c:
    #data PTR_ce33930

;=============================================

LAB_ce33510:
    mov.w @(DAT_ce335dc,pc),r0
    mov 0x05,r1
    bra LAB_ce3351e
    mov.b r1,@(r0,r4)

LAB_ce33518:
    mov.w @(DAT_ce335dc,pc),r0
    mov 0x04,r2
    mov.b r2,@(r0,r4)

LAB_ce3351e:
    mov.l @(PTR_ce335e4,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33524:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce335de,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33544
    cmp/eq 0x01,r0
    bt LAB_ce3354c
    cmp/eq 0x02,r0
    bt LAB_ce33554
    bra LAB_ce3355a
    nop

LAB_ce33544:
    mov.w @(DAT_ce335dc,pc),r0
    mov 0x03,r3
    bra LAB_ce3355a
    mov.b r3,@(r0,r4)

LAB_ce3354c:
    mov.w @(DAT_ce335dc,pc),r0
    mov 0x05,r1
    bra LAB_ce3355a
    mov.b r1,@(r0,r4)

LAB_ce33554:
    mov.w @(DAT_ce335dc,pc),r0
    mov 0x04,r2
    mov.b r2,@(r0,r4)

LAB_ce3355a:
    mov.l @(PTR_ce335e4,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33560:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce335de,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33580
    cmp/eq 0x01,r0
    bt LAB_ce33588
    cmp/eq 0x02,r0
    bt LAB_ce33590
    bra LAB_ce33594
    nop

LAB_ce33580:
    mov.w @(DAT_ce335dc,pc),r0
    mov 0x01,r3
    bra LAB_ce33594
    mov.b r3,@(r0,r4)

LAB_ce33588:
    mov.w @(DAT_ce335dc,pc),r0
    mov 0x02,r1
    bra LAB_ce33594
    mov.b r1,@(r0,r4)

LAB_ce33590:
    mov.w @(DAT_ce335dc,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33594:
    mov.w @(DAT_ce335e0,pc),r0
    mov.l @(PTR_ce335e4,pc),r3
    mov.b r5,@(r0,r4)
    jmp @r3
    mov 0x15,r5

LAB_ce3359e:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce335de,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce335be
    cmp/eq 0x01,r0
    bt LAB_ce335c6
    cmp/eq 0x02,r0
    bt LAB_ce335ce
    bra LAB_ce335d2
    nop

LAB_ce335be:
    mov.w @(DAT_ce335dc,pc),r0
    mov 0x01,r3
    bra LAB_ce335d2
    mov.b r3,@(r0,r4)

LAB_ce335c6:
    mov.w @(DAT_ce335dc,pc),r0
    mov 0x02,r1
    bra LAB_ce335d2
    mov.b r1,@(r0,r4)

LAB_ce335ce:
    mov.w @(DAT_ce335dc,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce335d2:
    mov.w @(DAT_ce335e0,pc),r0
    mov.l @(PTR_ce335e4,pc),r3
    mov.b r5,@(r0,r4)
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce335dc:
    #data 0x01e9
DAT_ce335de:
    #data 0x04c9
DAT_ce335e0:
    #data 0x01a3
    #align4

PTR_ce335e4:
    #data loc_8c0530d8

;=============================================

FUN_ce335e8:
    mov.w @(DAT_ce3362e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3360c
    mov 0x60,r1
    add r4,r1
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r4),fr2
    mov 0x6C,r1
    add r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x60,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)

LAB_ce3360c:
    mov 0x38,r0
    fmov.s @(r0,r4),fr3
    mov.w @(DAT_ce33630,pc),r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce3361e
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)

LAB_ce3361e:
    rts
    nop

;=============================================

FUN_ce33622:
    rts
    nop

;=============================================

FUN_ce33626:
    rts
    nop

;=============================================

FUN_ce3362a:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3362e:
    #data 0x0201
DAT_ce33630:
    #data 0x041c
    #align4

DAT_ce33634:
    #data 0x0201
    #data 0x0201
DAT_ce33638:
    #data 0x02ff
    #data 0x02ff
DAT_ce3363c:
    #data 0xffff
    #data 0xffff
DAT_ce33640:
    #data 0x0201
    #data 0x0201
DAT_ce33644:
    #data 0x02ff
    #data 0x02ff
DAT_ce33648:
    #data 0xffff
    #data 0xffff
DAT_ce3364c:
    #data 0x0201
    #data 0x0201
DAT_ce33650:
    #data 0x02ff
    #data 0x02ff
DAT_ce33654:
    #data 0xffff
    #data 0xffff
DAT_ce33658:
    #data 0x0201
    #data 0x0201
DAT_ce3365c:
    #data 0x02ff
    #data 0x02ff
DAT_ce33660:
    #data 0xffff
    #data 0xffff
DAT_ce33664:
    #data 0x0201
    #data 0x0200
DAT_ce33668:
    #data 0x02ff
    #data 0x0201
DAT_ce3366c:
    #data 0xffff
    #data 0xffff
DAT_ce33670:
    #data 0x0201
    #data 0x0201
DAT_ce33674:
    #data 0x02ff
    #data 0x02ff
DAT_ce33678:
    #data 0xffff
    #data 0xffff
DAT_ce3367c:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce3368c:
    #data 0x0005
    #data 0x0000
    #data 0x0001
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce336a0:
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
DAT_ce336b4:
    #data 0x0005
    #data 0x8100
    #data 0x0003
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce336c8:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce336d8:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce336e8:
    #data 0x0003
    #data 0x8000
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
    #align4

PTR_ce336f8:
    #data LAB_ce304f8
PTR_ce336fc:
    #data LAB_ce3001c
PTR_ce33700:
    #data LAB_ce30544
PTR_ce33704:
    #data LAB_ce30bda
PTR_ce33708:
    #data LAB_ce31304
PTR_ce3370c:
    #data LAB_ce31454
PTR_ce33710:
    #data LAB_ce31590
PTR_ce33714:
    #data LAB_ce318f8
PTR_ce33718:
    #data LAB_ce32ea0
PTR_ce3371c:
    #data LAB_ce32fc8
PTR_ce33720:
    #data LAB_ce331c4
PTR_ce33724:
    #data LAB_ce3347c
PTR_ce33728:
    #data LAB_ce334a6
PTR_ce3372c:
    #data LAB_ce30406
PTR_ce33730:
    #data LAB_ce31a38
PTR_ce33734:
    #data LAB_ce311b2
PTR_ce33738:
    #data LAB_ce334be
PTR_ce3373c:
    #data LAB_ce33524
PTR_ce33740:
    #data LAB_ce33560
PTR_ce33744:
    #data LAB_ce3359e
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce33768:
    #data LAB_ce30558
PTR_ce3376c:
    #data LAB_ce308a4
PTR_ce33770:
    #data LAB_ce308d4
PTR_ce33774:
    #data LAB_ce30558
PTR_ce33778:
    #data LAB_ce30bfc
PTR_ce3377c:
    #data LAB_ce30df4
PTR_ce33780:
    #data LAB_ce30dd4
PTR_ce33784:
    #data LAB_ce30bee
PTR_ce33788:
    #data LAB_ce30e60
PTR_ce3378c:
    #data LAB_ce30eb4
PTR_ce33790:
    #data LAB_ce30ed6
PTR_ce33794:
    #data LAB_ce30f50
PTR_ce33798:
    #data FUN_ce30f72
PTR_ce3379c:
    #data LAB_ce311a0
PTR_ce337a0:
    #data LAB_ce30fcc
PTR_ce337a4:
    #data LAB_ce3104c
PTR_ce337a8:
    #data FUN_ce3116c
PTR_ce337ac:
    #data FUN_ce30f94
PTR_ce337b0:
    #data LAB_ce3118e
PTR_ce337b4:
    #data LAB_ce3118e
PTR_ce337b8:
    #data LAB_ce31316
PTR_ce337bc:
    #data LAB_ce313b8
PTR_ce337c0:
    #data FUN_ce31432
PTR_ce337c4:
    #data LAB_ce31466
PTR_ce337c8:
    #data LAB_ce314f4
PTR_ce337cc:
    #data FUN_ce3156e
PTR_ce337d0:
    #data LAB_ce315a2
PTR_ce337d4:
    #data LAB_ce315fc
PTR_ce337d8:
    #data LAB_ce31624
    #data 0x0707
    #data 0x0c0d
    #data 0x0a0b
    #data 0x0809
    #align4

PTR_ce337e4:
    #data LAB_ce317d8
PTR_ce337e8:
    #data LAB_ce3185a
PTR_ce337ec:
    #data LAB_ce31860
PTR_ce337f0:
    #data LAB_ce3166e
PTR_ce337f4:
    #data LAB_ce31866
PTR_ce337f8:
    #data LAB_ce3187a
PTR_ce337fc:
    #data LAB_ce3188c
PTR_ce33800:
    #data LAB_ce318a6
PTR_ce33804:
    #data LAB_ce3188c
PTR_ce33808:
    #data LAB_ce318c0
PTR_ce3380c:
    #data LAB_ce3192c
PTR_ce33810:
    #data LAB_ce319a8
PTR_ce33814:
    #data FUN_ce31a16
PTR_ce33818:
    #data LAB_ce31a88
PTR_ce3381c:
    #data LAB_ce31b14
PTR_ce33820:
    #data LAB_ce31bb0
PTR_ce33824:
    #data LAB_ce31c4e
PTR_ce33828:
    #data LAB_ce31cb6
PTR_ce3382c:
    #data LAB_ce31b66
PTR_ce33830:
    #data LAB_ce31cdc
PTR_ce33834:
    #data LAB_ce31d52
PTR_ce33838:
    #data LAB_ce31dd6
PTR_ce3383c:
    #data LAB_ce31e78
PTR_ce33840:
    #data LAB_ce31f12
PTR_ce33844:
    #data LAB_ce31e2e
PTR_ce33848:
    #data LAB_ce31f94
PTR_ce3384c:
    #data LAB_ce3200a
PTR_ce33850:
    #data LAB_ce3209e
PTR_ce33854:
    #data LAB_ce320d6
PTR_ce33858:
    #data LAB_ce32154
PTR_ce3385c:
    #data FUN_ce32186
PTR_ce33860:
    #data LAB_ce321ba
PTR_ce33864:
    #data LAB_ce32250
PTR_ce33868:
    #data LAB_ce32308
PTR_ce3386c:
    #data LAB_ce32400
PTR_ce33870:
    #data LAB_ce32434
PTR_ce33874:
    #data LAB_ce324ba
PTR_ce33878:
    #data LAB_ce32584
PTR_ce3387c:
    #data FUN_ce32646
PTR_ce33880:
    #data LAB_ce32422
PTR_ce33884:
    #data LAB_ce32668
PTR_ce33888:
    #data LAB_ce326cc
PTR_ce3388c:
    #data LAB_ce32766
PTR_ce33890:
    #data LAB_ce3280c
PTR_ce33894:
    #data LAB_ce32898
PTR_ce33898:
    #data FUN_ce328c6
PTR_ce3389c:
    #data LAB_ce3291c
PTR_ce338a0:
    #data LAB_ce329ba
PTR_ce338a4:
    #data LAB_ce32a68
PTR_ce338a8:
    #data FUN_ce32ada
PTR_ce338ac:
    #data LAB_ce32b0e
PTR_ce338b0:
    #data LAB_ce32b6c
PTR_ce338b4:
    #data LAB_ce32bdc
PTR_ce338b8:
    #data LAB_ce32c5c
PTR_ce338bc:
    #data LAB_ce32cb8
PTR_ce338c0:
    #data LAB_ce32d86
PTR_ce338c4:
    #data LAB_ce31d30
PTR_ce338c8:
    #data LAB_ce31fe8
PTR_ce338cc:
    #data LAB_ce321a8
PTR_ce338d0:
    #data LAB_ce3267a
PTR_ce338d4:
    #data LAB_ce328e8
PTR_ce338d8:
    #data LAB_ce32afc
PTR_ce338dc:
    #data LAB_ce32b94
PTR_ce338e0:
    #data LAB_ce32ca6
PTR_ce338e4:
    #data LAB_ce32df2
PTR_ce338e8:
    #data LAB_ce32eb8
PTR_ce338ec:
    #data LAB_ce32fc4
PTR_ce338f0:
    #data LAB_ce32f30
PTR_ce338f4:
    #data LAB_ce32fc4
PTR_ce338f8:
    #data LAB_ce32fe0
PTR_ce338fc:
    #data LAB_ce3304e
PTR_ce33900:
    #data LAB_ce330e8
PTR_ce33904:
    #data LAB_ce33156
PTR_ce33908:
    #data LAB_ce331d8
PTR_ce3390c:
    #data LAB_ce3326c
PTR_ce33910:
    #data FUN_ce332a2
PTR_ce33914:
    #data LAB_ce33334
PTR_ce33918:
    #data LAB_ce333bc
PTR_ce3391c:
    #data FUN_ce333f2
PTR_ce33920:
    #data LAB_ce332c4
PTR_ce33924:
    #data LAB_ce332da
PTR_ce33928:
    #data LAB_ce33414
PTR_ce3392c:
    #data LAB_ce3342a
PTR_ce33930:
    #data LAB_ce33498
PTR_ce33934:
    #data LAB_ce33498
PTR_ce33938:
    #data LAB_ce33498
PTR_ce3393c:
    #data LAB_ce33498
    #data 0x1211
    #data 0x1210
    #data 0x1514
    #data 0x1513
    #data 0x1817
    #data 0x1816