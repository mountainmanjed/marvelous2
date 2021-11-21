;╔══════════════════════════════════════════╗
;║ S_PL1B : Chun-Li Program                 ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c054508 0x8C054508
#symbol loc_8c054b34 0x8C054B34
#symbol loc_8c05496c 0x8C05496C
#symbol loc_8c054d04 0x8C054D04
#symbol loc_8c053f6e 0x8C053F6E
#symbol loc_8c053e00 0x8C053E00
#symbol loc_8c0542e0 0x8C0542E0
#symbol loc_8c054e58 0x8C054E58
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c0530d8 0x8C0530D8
#symbol loc_8c055244 0x8C055244
#symbol loc_8c0559da 0x8C0559DA
#symbol loc_8c054d1c 0x8C054D1C
#symbol loc_8c054da0 0x8C054DA0
#symbol loc_8c052b4c 0x8C052B4C
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c2896b0 0x8C2896B0
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c08a55c 0x8C08A55C
#symbol loc_8c0511e2 0x8C0511E2
#symbol loc_8c052c84 0x8C052C84
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c051648 0x8C051648
#symbol loc_8c0511b4 0x8C0511B4
#symbol loc_8c050084 0x8C050084
#symbol loc_8c04ff88 0x8C04FF88
#symbol loc_8c04fea8 0x8C04FEA8
#symbol loc_8c050048 0x8C050048
#symbol loc_8c052ce2 0x8C052CE2
#symbol loc_8c052dac 0x8C052DAC
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c26a524 0x8C26A524
#symbol loc_8c04fc9e 0x8C04FC9E
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c05115a 0x8C05115A
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c042008 0x8C042008
#symbol loc_8c053082 0x8C053082
#symbol loc_8c050834 0x8C050834
#symbol loc_8c055d54 0x8C055D54
#symbol loc_8c05264c 0x8C05264C
#symbol loc_8c0523d8 0x8C0523D8
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c26a5c0 0x8C26A5C0
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c050ea4 0x8C050EA4
#symbol loc_8c051854 0x8C051854
#symbol loc_8c045790 0x8C045790
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c103660 0x8C103660
#symbol loc_8c0423fc 0x8C0423FC

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300cc,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300d0,pc),r7
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
    mov.l @(PTR_ce300d4,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c6
    mov.l @(PTR_ce300d8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c6
    mov.l @(PTR_ce300dc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c6
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c6
    bsr FUN_ce302f4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c6
    bsr FUN_ce302a4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c6
    bsr FUN_ce30254
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c6
    bsr FUN_ce301da
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c6
    bsr FUN_ce300f0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c6
    bsr FUN_ce3014e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c6
    bsr FUN_ce30194
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c6
    bsr FUN_ce3039a
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c6
    bsr FUN_ce303da
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c6
    mov.w @(DAT_ce300ce,pc),r5
    mov.l @(PTR_ce300e4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c6
    mov.l @(PTR_ce300e8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300ec,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300c6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300cc:
    #data 0x0428
DAT_ce300ce:
    #data 0x03cc
    #align4

PTR_ce300d0:
    #data PTR_ce339b0
PTR_ce300d4:
    #data loc_8c054508
PTR_ce300d8:
    #data loc_8c054b34
PTR_ce300dc:
    #data loc_8c05496c
PTR_ce300e0:
    #data loc_8c054d04
PTR_ce300e4:
    #data loc_8c053f6e
PTR_ce300e8:
    #data loc_8c053e00
PTR_ce300ec:
    #data loc_8c0542e0

;=============================================

FUN_ce300f0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30202,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30204,pc),r6
    add r14,r3
    mov.l @(PTR_ce30210,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30118
    mov.l @r15,r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce30122

LAB_ce30118:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30122:
    mov.w @(DAT_ce30204,pc),r5
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
    mov.w @(DAT_ce30206,pc),r0
    mov.l @(PTR_ce3021c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3014e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30220,pc),r5
    mov.w @(DAT_ce30208,pc),r6
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3016c
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3016c:
    mov.w @(DAT_ce30208,pc),r5
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
    mov.w @(DAT_ce30206,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3021c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30194:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30224,pc),r5
    mov.w @(DAT_ce3020a,pc),r6
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301b2
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301b2:
    mov.w @(DAT_ce3020a,pc),r5
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
    mov.w @(DAT_ce30206,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3021c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301da:
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
    bt LAB_ce301fa
    mov.w @(DAT_ce3020e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3022c

LAB_ce301fa:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30202:
    #data 0x02a4
DAT_ce30204:
    #data 0x036c
DAT_ce30206:
    #data 0x01e9
DAT_ce30208:
    #data 0x0374
DAT_ce3020a:
    #data 0x037c
DAT_ce3020c:
    #data 0x0384
DAT_ce3020e:
    #data 0x040c
    #align4

PTR_ce30210:
    #data DAT_ce3392c
PTR_ce30214:
    #data loc_8c054e58
PTR_ce30218:
    #data loc_8c055c3a
PTR_ce3021c:
    #data loc_8c0530d8
PTR_ce30220:
    #data DAT_ce33940
PTR_ce30224:
    #data DAT_ce33950
PTR_ce30228:
    #data DAT_ce33964

;=============================================

LAB_ce3022c:
    mov.w @(DAT_ce30338,pc),r5
    mov.l @(PTR_ce3034c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3033a,pc),r0
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
    mov.w @(DAT_ce3033c,pc),r6
    mov.l @(PTR_ce30358,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30274
    mov.w @(DAT_ce3033e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3027c

LAB_ce30274:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3027c:
    mov.w @(DAT_ce3033c,pc),r5
    mov.l @(PTR_ce3034c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3033a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30350,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302a4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3035c,pc),r5
    mov.w @(DAT_ce30340,pc),r6
    mov.l @(PTR_ce30358,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302c4
    mov.w @(DAT_ce3033e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302cc

LAB_ce302c4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302cc:
    mov.w @(DAT_ce30340,pc),r5
    mov.l @(PTR_ce3034c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3033a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30350,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302f4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30360,pc),r5
    mov.w @(DAT_ce30342,pc),r6
    mov.l @(PTR_ce30364,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30330
    mov.l @(PTR_ce30368,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30330
    mov.w @(DAT_ce30344,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30372
    mov.w @(DAT_ce30346,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30372
    mov.w @(DAT_ce30348,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3036c

LAB_ce30330:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30338:
    #data 0x0384
DAT_ce3033a:
    #data 0x01e9
DAT_ce3033c:
    #data 0x038c
DAT_ce3033e:
    #data 0x040c
DAT_ce30340:
    #data 0x0394
DAT_ce30342:
    #data 0x03a4
DAT_ce30344:
    #data 0x01f9
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
    #data DAT_ce33974
PTR_ce30358:
    #data loc_8c054e58
PTR_ce3035c:
    #data DAT_ce33984
PTR_ce30360:
    #data DAT_ce339a4
PTR_ce30364:
    #data loc_8c055244
PTR_ce30368:
    #data loc_8c0559da

;=============================================

LAB_ce3036c:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30372:
    mov.w @(DAT_ce30476,pc),r5
    mov.l @(PTR_ce30480,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30478,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30484,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3039a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30488,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce303b2
    mov.w @(DAT_ce3047a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303ba

LAB_ce303b2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303ba:
    mov.w @(DAT_ce30478,pc),r0
    mov 0x0F,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30484,pc),r3
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

FUN_ce303da:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3048c,pc),r3
    jsr @r3
    mov 0x08,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303f4
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303f4:
    mov.w @(DAT_ce30478,pc),r0
    mov 0x08,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30484,pc),r3
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

LAB_ce30414:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce30440
    mov r4,r14
    tst r0,r0
    bf LAB_ce30430
    bsr FUN_ce30498
    mov r14,r4
    tst r0,r0
    bf LAB_ce30430
    bsr FUN_ce304ce
    mov r14,r4
    tst r0,r0
    bt LAB_ce30438

LAB_ce30430:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce30438:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30440:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30490,pc),r5
    mov.w @(DAT_ce3047c,pc),r6
    mov.l @(PTR_ce30494,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30460
    mov.w @(DAT_ce3047a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30468

LAB_ce30460:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30468:
    mov.w @(DAT_ce3047e,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30476:
    #data 0x03a4
DAT_ce30478:
    #data 0x01e9
DAT_ce3047a:
    #data 0x040c
DAT_ce3047c:
    #data 0x0394
DAT_ce3047e:
    #data 0x0258
    #align4

PTR_ce30480:
    #data loc_8c055c3a
PTR_ce30484:
    #data loc_8c0530d8
PTR_ce30488:
    #data loc_8c054d1c
PTR_ce3048c:
    #data loc_8c054da0
PTR_ce30490:
    #data DAT_ce33984
PTR_ce30494:
    #data loc_8c054e58

;=============================================

FUN_ce30498:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3059c,pc),r5
    mov.w @(DAT_ce3058c,pc),r6
    mov.l @(PTR_ce305a0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304b8
    mov.w @(DAT_ce3058e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304c0

LAB_ce304b8:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304c0:
    mov.w @(DAT_ce30590,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304ce:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305a4,pc),r5
    mov.w @(DAT_ce30592,pc),r6
    mov.l @(PTR_ce305a0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304ee
    mov.w @(DAT_ce3058e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304f6

LAB_ce304ee:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304f6:
    mov.w @(DAT_ce30590,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30504:
    rts
    nop

LAB_ce30508:
    mov.w @(DAT_ce30594,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce305a8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3051c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce305ac,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30596,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3054a
    mov.w @(DAT_ce30598,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30542
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30874
    mov.l @r15+,r14

LAB_ce30542:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30760
    mov.l @r15+,r14

LAB_ce3054a:
    mov.w @(DAT_ce30598,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3055c
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3068a
    mov.l @r15+,r14

LAB_ce3055c:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30564
    mov.l @r15+,r14

LAB_ce30564:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3059a,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x01,r12
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce305b0,pc),r11
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce305b4
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce305ce
    cmp/eq 0x02,r0
    bt LAB_ce305e8
    bra LAB_ce30656
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3058c:
    #data 0x038c
DAT_ce3058e:
    #data 0x040c
DAT_ce30590:
    #data 0x0258
DAT_ce30592:
    #data 0x0384
DAT_ce30594:
    #data 0x01ff
DAT_ce30596:
    #data 0x01fe
DAT_ce30598:
    #data 0x01f9
DAT_ce3059a:
    #data 0x01e8
    #align4

PTR_ce3059c:
    #data DAT_ce33974
PTR_ce305a0:
    #data loc_8c054e58
PTR_ce305a4:
    #data DAT_ce33964
PTR_ce305a8:
    #data PTR_ce33a20
PTR_ce305ac:
    #data loc_8c052b4c
PTR_ce305b0:
    #data loc_8c04223a

;=============================================

LAB_ce305b4:
    mov.w @(DAT_ce306e6,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce306e8,pc),r0
    mov.l @(PTR_ce306f4,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306ea,pc),r0
    bra LAB_ce30656
    mov.b r13,@(r0,r14)

LAB_ce305ce:
    mov.w @(DAT_ce306e6,pc),r0
    mov 0x15,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r12,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce306e8,pc),r0
    mov.l @(PTR_ce306f8,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306ea,pc),r0
    bra LAB_ce30656
    mov.b r12,@(r0,r14)

LAB_ce305e8:
    mov.w @(DAT_ce306e8,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce306fc,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce306ea,pc),r0
    mov.w @(DAT_ce306ec,pc),r2
    mov.b r4,@(r0,r14)
    add 0x53,r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce30648
    mov r12,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x57,r3
    mov.w @(DAT_ce306ee,pc),r0
    mov 0x15,r6
    mov r6,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30700,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r2
    add 0x01,r2
    mov.w r2,@(r0,r1)
    mov.l @(PTR_ce30704,pc),r1
    jsr @r1
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30708,pc),r3
    mov r14,r4
    mov 0x00,r6
    mov.l @r15+,r11
    mov 0x05,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30648:
    mov.w @(DAT_ce306e6,pc),r0
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    jsr @r11
    mov r14,r4

LAB_ce30656:
    mov.w @(DAT_ce306f0,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce30700,pc),r3
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
    mov.w @(DAT_ce306e6,pc),r0
    mov.l @(PTR_ce30704,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3068a:
    mov.w @(DAT_ce306f2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3070c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce306ae
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce306ca
    cmp/eq 0x02,r0
    bt LAB_ce30710
    bra LAB_ce3072e
    nop

LAB_ce306ae:
    mov.w @(DAT_ce306e6,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306e8,pc),r0
    mov.l @(PTR_ce306f4,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306ea,pc),r0
    bra LAB_ce3072e
    mov.b r13,@(r0,r14)

LAB_ce306ca:
    mov.w @(DAT_ce306e6,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306e8,pc),r0
    mov.l @(PTR_ce306f8,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce3072a
    mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306e6:
    #data 0x0158
DAT_ce306e8:
    #data 0x03f4
DAT_ce306ea:
    #data 0x01a7
DAT_ce306ec:
    #data 0x0800
DAT_ce306ee:
    #data 0x01a1
DAT_ce306f0:
    #data 0x01ac
DAT_ce306f2:
    #data 0x01e8
    #align4

PTR_ce306f4:
    #data DAT_ce338e4
PTR_ce306f8:
    #data DAT_ce338e8
PTR_ce306fc:
    #data DAT_ce338ec
PTR_ce30700:
    #data loc_8c2896b0
PTR_ce30704:
    #data loc_8c034e8c
PTR_ce30708:
    #data loc_8c08a55c
PTR_ce3070c:
    #data loc_8c04223a

;=============================================

LAB_ce30710:
    mov.w @(DAT_ce3083e,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30840,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce3084c,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce3072a:
    mov.w @(DAT_ce30842,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce3072e:
    mov.w @(DAT_ce30844,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30850,pc),r3
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
    mov.w @(DAT_ce3083e,pc),r0
    mov.l @(PTR_ce30854,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30760:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30846,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30858,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30786
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307a2
    cmp/eq 0x02,r0
    bt LAB_ce307c2
    bra LAB_ce3080a
    nop

LAB_ce30786:
    mov.w @(DAT_ce3083e,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30840,pc),r0
    mov.l @(PTR_ce3085c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30842,pc),r0
    bra LAB_ce3080a
    mov.b r13,@(r0,r14)

LAB_ce307a2:
    mov.w @(DAT_ce3083e,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30840,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce30860,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30842,pc),r0
    bra LAB_ce3080a
    mov.b r2,@(r0,r14)

LAB_ce307c2:
    mov.w @(DAT_ce30848,pc),r0
    mov 0x34,r8
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce307d6
    add r14,r8
    mov.l @(DAT_ce30864,pc),r1
    lds r1,FPUL
    bra LAB_ce307dc
    fsts FPUL,fr3

LAB_ce307d6:
    mov.l @(DAT_ce30868,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce307dc:
    fmov.s @r8,fr2
    mov 0x02,r3
    mov.w @(DAT_ce3083e,pc),r0
    mov 0x05,r2
    fadd fr3,fr2
    mov 0x16,r5
    fmov.s fr2,@r8
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30840,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce3086c,pc),r3
    mov 0x04,r5
    mov 0x00,r6
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30842,pc),r0
    mov.l @(PTR_ce30870,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce3080a:
    mov.w @(DAT_ce30844,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce30850,pc),r3
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
    mov.w @(DAT_ce3083e,pc),r0
    mov.l @(PTR_ce30854,pc),r2
    mov.l @r15+,r8
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3083e:
    #data 0x0158
DAT_ce30840:
    #data 0x03f4
DAT_ce30842:
    #data 0x01a7
DAT_ce30844:
    #data 0x01ac
DAT_ce30846:
    #data 0x01e8
DAT_ce30848:
    #data 0x01d2
    #align4

PTR_ce3084c:
    #data DAT_ce338ec
PTR_ce30850:
    #data loc_8c2896b0
PTR_ce30854:
    #data loc_8c034e8c
PTR_ce30858:
    #data loc_8c04223a
PTR_ce3085c:
    #data DAT_ce338f0
PTR_ce30860:
    #data DAT_ce338f4
DAT_ce30864:
    #data 0x41d55555
DAT_ce30868:
    #data 0xc1d55555
PTR_ce3086c:
    #data DAT_ce338f8
PTR_ce30870:
    #data loc_8c08a55c

;=============================================

LAB_ce30874:
    mov.w @(DAT_ce30964,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30978,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30898
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce308b4
    cmp/eq 0x02,r0
    bt LAB_ce308d4
    bra LAB_ce30932
    nop

LAB_ce30898:
    mov.w @(DAT_ce30966,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30968,pc),r0
    mov.l @(PTR_ce3097c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3096a,pc),r0
    bra LAB_ce30932
    mov.b r13,@(r0,r14)

LAB_ce308b4:
    mov.w @(DAT_ce30966,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30968,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce30980,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3096a,pc),r0
    bra LAB_ce30932
    mov.b r2,@(r0,r14)

LAB_ce308d4:
    mov.w @(DAT_ce30968,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce30984,pc),r1
    mov.l r1,@(r0,r14)
    mov.w @(DAT_ce3096a,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3096c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30922
    mov.w @(DAT_ce3096e,pc),r0
    mov.w @(DAT_ce30970,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce30922
    mov.b @(0x6,r14),r0
    mov 0x12,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30972,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30988,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    bra LAB_ce30954
    mov 0x03,r6

LAB_ce30922:
    mov.w @(DAT_ce30966,pc),r0
    mov 0x0B,r3
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4

LAB_ce30932:
    mov.w @(DAT_ce30974,pc),r0
    mov.l @(PTR_ce30988,pc),r3
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
    mov.w @(DAT_ce30966,pc),r0
    mov.b @(r0,r14),r6

LAB_ce30954:
    lds.l @r15+,PR
    mov.l @(PTR_ce3098c,pc),r2
    mov 0x0A,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30964:
    #data 0x01e8
DAT_ce30966:
    #data 0x0158
DAT_ce30968:
    #data 0x03f4
DAT_ce3096a:
    #data 0x01a7
DAT_ce3096c:
    #data 0x0525
DAT_ce3096e:
    #data 0x01fa
DAT_ce30970:
    #data 0x0400
DAT_ce30972:
    #data 0x01a1
DAT_ce30974:
    #data 0x01ac
    #align4

PTR_ce30978:
    #data loc_8c04223a
PTR_ce3097c:
    #data DAT_ce338f0
PTR_ce30980:
    #data DAT_ce338f4
PTR_ce30984:
    #data DAT_ce338f8
PTR_ce30988:
    #data loc_8c2896b0
PTR_ce3098c:
    #data loc_8c034e8c

;=============================================

LAB_ce30990:
    mov.w @(DAT_ce30a66,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce309a0
    mov.w @(DAT_ce30a68,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce309b0

LAB_ce309a0:
    mov.w @(DAT_ce30a66,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce309b4
    mov.w @(DAT_ce30a68,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce309b4

LAB_ce309b0:
    bra LAB_ce309b8
    nop

LAB_ce309b4:
    rts
    nop

LAB_ce309b8:
    mov.w @(DAT_ce30a66,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce309c6
    bra LAB_ce30ad8
    nop

LAB_ce309c6:
    bra LAB_ce309ca
    nop

LAB_ce309ca:
    mov.w @(DAT_ce30a6a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce309ea
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a18
    cmp/eq 0x02,r0
    bt LAB_ce30a4a
    bra LAB_ce30a96
    nop

LAB_ce309ea:
    mov.w @(DAT_ce30a6c,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30a74,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a6e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a0c
    mov.w @(DAT_ce30a70,pc),r0
    mov.l @(PTR_ce30a78,pc),r3
    bra LAB_ce30a12
    mov.l r3,@(r0,r14)

LAB_ce30a0c:
    mov.w @(DAT_ce30a70,pc),r0
    mov.l @(PTR_ce30a7c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a12:
    mov.w @(DAT_ce30a72,pc),r0
    bra LAB_ce30a96
    mov.b r13,@(r0,r14)

LAB_ce30a18:
    mov.w @(DAT_ce30a6c,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce30a74,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a6e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a3c
    mov.w @(DAT_ce30a70,pc),r0
    mov.l @(PTR_ce30a80,pc),r3
    bra LAB_ce30a42
    mov.l r3,@(r0,r14)

LAB_ce30a3c:
    mov.w @(DAT_ce30a70,pc),r0
    mov.l @(PTR_ce30a84,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a42:
    mov.w @(DAT_ce30a72,pc),r0
    mov 0x01,r3
    bra LAB_ce30a96
    mov.b r3,@(r0,r14)

LAB_ce30a4a:
    mov.w @(DAT_ce30a6c,pc),r0
    mov 0x02,r4
    mov 0x0E,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a8c
    mov.w @(DAT_ce30a70,pc),r0
    mov.l @(PTR_ce30a88,pc),r2
    bra LAB_ce30a92
    mov.l r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a66:
    #data 0x01fe
DAT_ce30a68:
    #data 0x01d6
DAT_ce30a6a:
    #data 0x01e8
DAT_ce30a6c:
    #data 0x0158
DAT_ce30a6e:
    #data 0x01fc
DAT_ce30a70:
    #data 0x03f4
DAT_ce30a72:
    #data 0x01a7
    #align4

PTR_ce30a74:
    #data loc_8c04223a
PTR_ce30a78:
    #data DAT_ce338fc
PTR_ce30a7c:
    #data DAT_ce33914
PTR_ce30a80:
    #data DAT_ce33900
PTR_ce30a84:
    #data DAT_ce33918
PTR_ce30a88:
    #data DAT_ce33904

;=============================================

LAB_ce30a8c:
    mov.w @(DAT_ce30b80,pc),r0
    mov.l @(PTR_ce30b90,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a92:
    mov.w @(DAT_ce30b82,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30a96:
    mov.w @(DAT_ce30b84,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30b94,pc),r3
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
    mov.w @(DAT_ce30b86,pc),r0
    mov.l @(PTR_ce30b98,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30b88,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30ad0
    mov.w @(DAT_ce30b88,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30ad0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30ad8:
    mov.w @(DAT_ce30b8a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b9c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30afc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30b28
    cmp/eq 0x02,r0
    bt LAB_ce30b54
    bra LAB_ce30bea
    nop

LAB_ce30afc:
    mov.w @(DAT_ce30b86,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b8c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b1c
    mov.w @(DAT_ce30b80,pc),r0
    mov.l @(PTR_ce30ba0,pc),r3
    bra LAB_ce30b22
    mov.l r3,@(r0,r14)

LAB_ce30b1c:
    mov.w @(DAT_ce30b80,pc),r0
    mov.l @(PTR_ce30ba4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b22:
    mov.w @(DAT_ce30b82,pc),r0
    bra LAB_ce30bea
    mov.b r13,@(r0,r14)

LAB_ce30b28:
    mov.w @(DAT_ce30b86,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b8c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b4a
    mov.w @(DAT_ce30b80,pc),r0
    mov.l @(PTR_ce30ba8,pc),r3
    bra LAB_ce30b50
    mov.l r3,@(r0,r14)

LAB_ce30b4a:
    mov.w @(DAT_ce30b80,pc),r0
    mov.l @(PTR_ce30bac,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b50:
    bra LAB_ce30be6
    mov 0x01,r3

LAB_ce30b54:
    mov.w @(DAT_ce30b86,pc),r0
    mov 0x02,r1
    mov 0x1A,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce30b8e,pc),r3
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce30bb0
    mov.b @(0x6,r14),r0
    mov 0x06,r2
    mov 0x13,r1
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30b86,pc),r0
    mov.b r2,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30bc8
    mov.b r1,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b80:
    #data 0x03f4
DAT_ce30b82:
    #data 0x01a7
DAT_ce30b84:
    #data 0x01ac
DAT_ce30b86:
    #data 0x0158
DAT_ce30b88:
    #data 0x01d6
DAT_ce30b8a:
    #data 0x01e8
DAT_ce30b8c:
    #data 0x01fc
DAT_ce30b8e:
    #data 0x1000
    #align4

PTR_ce30b90:
    #data DAT_ce3391c
PTR_ce30b94:
    #data loc_8c2896b0
PTR_ce30b98:
    #data loc_8c034e8c
PTR_ce30b9c:
    #data loc_8c04223a
PTR_ce30ba0:
    #data DAT_ce33908
PTR_ce30ba4:
    #data DAT_ce33920
PTR_ce30ba8:
    #data DAT_ce3390c
PTR_ce30bac:
    #data DAT_ce33924

;=============================================

LAB_ce30bb0:
    mov.w @(DAT_ce30cd0,pc),r0
    mov.w @(DAT_ce30cd2,pc),r1
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r1,r2
    bt LAB_ce30bc8
    mov.w @(DAT_ce30cd4,pc),r0
    mov 0x05,r3
    mov 0x14,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)

LAB_ce30bc8:
    mov 0x16,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30cd6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30bde
    mov.w @(DAT_ce30cd8,pc),r0
    mov.l @(PTR_ce30ce8,pc),r3
    bra LAB_ce30be4
    mov.l r3,@(r0,r14)

LAB_ce30bde:
    mov.w @(DAT_ce30cd8,pc),r0
    mov.l @(PTR_ce30cec,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30be4:
    mov 0x02,r3

LAB_ce30be6:
    mov.w @(DAT_ce30cda,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30bea:
    mov.w @(DAT_ce30cdc,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30cf0,pc),r3
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
    mov.w @(DAT_ce30cd4,pc),r0
    mov.l @(PTR_ce30cf4,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30cde,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30c24
    mov.w @(DAT_ce30cde,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30c24:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30c2e:
    mov.w @(DAT_ce30ce0,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30cf8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30c42:
    sts.l PR,@-r15
    mov.l @(PTR_ce30cfc,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30c50:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30d00,pc),r3
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
    mov.w @(DAT_ce30ce2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30cb6
    mov.w @(DAT_ce30ce4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30cae
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e30
    mov.l @r15+,r14

LAB_ce30cae:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e68
    mov.l @r15+,r14

LAB_ce30cb6:
    mov.w @(DAT_ce30ce4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30cc8
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30dde
    mov.l @r15+,r14

LAB_ce30cc8:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d04
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30cd0:
    #data 0x01fa
DAT_ce30cd2:
    #data 0x0800
DAT_ce30cd4:
    #data 0x0158
DAT_ce30cd6:
    #data 0x01fc
DAT_ce30cd8:
    #data 0x03f4
DAT_ce30cda:
    #data 0x01a7
DAT_ce30cdc:
    #data 0x01ac
DAT_ce30cde:
    #data 0x01d6
DAT_ce30ce0:
    #data 0x01ff
DAT_ce30ce2:
    #data 0x01fe
DAT_ce30ce4:
    #data 0x01f9
    #align4

PTR_ce30ce8:
    #data DAT_ce33910
PTR_ce30cec:
    #data DAT_ce33928
PTR_ce30cf0:
    #data loc_8c2896b0
PTR_ce30cf4:
    #data loc_8c034e8c
PTR_ce30cf8:
    #data PTR_ce33a30
PTR_ce30cfc:
    #data loc_8c0511e2
PTR_ce30d00:
    #data loc_8c052c84

;=============================================

LAB_ce30d04:
    mov.w @(DAT_ce30dfa,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30d20
    cmp/eq 0x00,r0
    bt LAB_ce30d2e
    cmp/eq 0x01,r0
    bt LAB_ce30d2e
    bra LAB_ce30d44
    nop

LAB_ce30d20:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt LAB_ce30d2e
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d4a
    mov.l @r15+,r14

LAB_ce30d2e:
    mov.l @(PTR_ce30e00,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d44
    lds.l @r15+,PR
    mov.l @(PTR_ce30e04,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d44:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d4a:
    mov r4,r3
    mov.l @(PTR_ce30e08,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30d5c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e00,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30dfc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d86
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce30e0c,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x06,r5
    mov.w @(DAT_ce30dfe,pc),r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d86:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d8c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e00,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce30da8
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce30da8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30dae:
    mov.b @(0x7,r4),r0
    mov 0x18,r6
    mov.l @(PTR_ce30e10,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    jmp @r3
    mov 0x15,r5

LAB_ce30dbc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30e00,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30dd6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30e04,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30dd6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30dde:
    mov.w @(DAT_ce30dfa,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30e14
    cmp/eq 0x01,r0
    bt LAB_ce30e14
    cmp/eq 0x02,r0
    bt LAB_ce30e14
    bra LAB_ce30e2a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30dfa:
    #data 0x01e8
DAT_ce30dfc:
    #data 0x0141
DAT_ce30dfe:
    #data 0x00f0
    #align4

PTR_ce30e00:
    #data loc_8c034dee
PTR_ce30e04:
    #data loc_8c051648
PTR_ce30e08:
    #data PTR_ce33a40
PTR_ce30e0c:
    #data loc_8c08a55c
PTR_ce30e10:
    #data loc_8c034e8c

;=============================================

LAB_ce30e14:
    mov.l @(PTR_ce30f04,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e2a
    lds.l @r15+,PR
    mov.l @(PTR_ce30f08,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e2a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e30:
    mov.w @(DAT_ce30efe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30e4c
    cmp/eq 0x01,r0
    bt LAB_ce30e4c
    cmp/eq 0x02,r0
    bt LAB_ce30e4c
    bra LAB_ce30e62
    nop

LAB_ce30e4c:
    mov.l @(PTR_ce30f04,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e62
    lds.l @r15+,PR
    mov.l @(PTR_ce30f08,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e62:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e68:
    mov.w @(DAT_ce30efe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30e84
    cmp/eq 0x00,r0
    bt LAB_ce30e92
    cmp/eq 0x01,r0
    bt LAB_ce30e92
    bra LAB_ce30ea8
    nop

LAB_ce30e84:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt LAB_ce30e92
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30eae
    mov.l @r15+,r14

LAB_ce30e92:
    mov.l @(PTR_ce30f04,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ea8
    lds.l @r15+,PR
    mov.l @(PTR_ce30f08,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30ea8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30eae:
    mov r4,r3
    mov.l @(PTR_ce30f0c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30ec0:
    mov.b @(0x7,r4),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce30f00,pc),r0
    mov.b r3,@(r0,r4)
    add 0xD9,r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30eda
    mova @(DAT_ce30f10,pc),r0
    bra LAB_ce30ede
    fmov.s @r0,fr3

LAB_ce30eda:
    mova @(DAT_ce30f14,pc),r0
    fmov.s @r0,fr3

LAB_ce30ede:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce30f18,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce30f1c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    mov 0x00,r0
    rts
    mov.w r0,@(0x1e,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30efe:
    #data 0x01e8
DAT_ce30f00:
    #data 0x01f9
    #align4

PTR_ce30f04:
    #data loc_8c034dee
PTR_ce30f08:
    #data loc_8c051648
PTR_ce30f0c:
    #data PTR_ce33a50
DAT_ce30f10:
    #data 0x40555555
DAT_ce30f14:
    #data 0xc0555555
DAT_ce30f18:
    #data 0x41cdb6db
DAT_ce30f1c:
    #data 0xbf892492

;=============================================

LAB_ce30f20:
    mov.w @(DAT_ce31030,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f38
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf LAB_ce30f38
    mov 0x01,r0
    mov.w r0,@(0x1e,r14)

LAB_ce30f38:
    mov.l @(PTR_ce31038,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31032,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce30f8e
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    mov 0x01,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31034,pc),r0
    mov.b r4,@(r0,r14)
    add 0x14,r0
    mov.b r4,@(r0,r14)
    add 0xE9,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31032,pc),r0
    mov.l @(PTR_ce3103c,pc),r3
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
    mov.l @(PTR_ce31040,pc),r2
    mov r14,r4
    mov 0x04,r6
    mov 0x0A,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce30f8e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30f94:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31038,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fae
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31044,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30fae:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30fb6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31048,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce3104c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30fcc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31050,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31054,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31036,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30fee
    bsr FUN_ce31064
    mov r14,r4
    bra LAB_ce30ff2
    nop

LAB_ce30fee:
    bsr FUN_ce3100e
    mov r14,r4

LAB_ce30ff2:
    mov.l @(PTR_ce31058,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce31008
    lds.l @r15+,PR
    mov.l @(PTR_ce3105c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31008:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3100e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31038,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31028
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31060,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31028:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31030:
    #data 0x019e
DAT_ce31032:
    #data 0x041c
DAT_ce31034:
    #data 0x01fc
DAT_ce31036:
    #data 0x01fe
    #align4

PTR_ce31038:
    #data loc_8c034dee
PTR_ce3103c:
    #data loc_8c0511b4
PTR_ce31040:
    #data loc_8c034e8c
PTR_ce31044:
    #data loc_8c051648
PTR_ce31048:
    #data loc_8c050084
PTR_ce3104c:
    #data loc_8c04ff88
PTR_ce31050:
    #data loc_8c04fea8
PTR_ce31054:
    #data loc_8c050048
PTR_ce31058:
    #data loc_8c052ce2
PTR_ce3105c:
    #data loc_8c052dac
PTR_ce31060:
    #data loc_8c05176e

;=============================================

FUN_ce31064:
    mov.w @(DAT_ce3114a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31080
    cmp/eq 0x00,r0
    bt LAB_ce310ce
    cmp/eq 0x01,r0
    bt LAB_ce310ce
    bra LAB_ce310e4
    nop

LAB_ce31080:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt LAB_ce3108e
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce310ea
    mov.l @r15+,r14

LAB_ce3108e:
    mov.l @(PTR_ce31154,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce310da
    mov.w @(DAT_ce3114c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce310e4
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31158,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3114c,pc),r0
    bra LAB_ce310e4
    mov.b r4,@(r0,r14)

LAB_ce310ce:
    mov.l @(PTR_ce31154,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310e4

LAB_ce310da:
    lds.l @r15+,PR
    mov.l @(PTR_ce3115c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce310e4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310ea:
    mov r4,r3
    mov.l @(PTR_ce31160,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce310fc:
    mov.w @(DAT_ce3114e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31120
    mov.l @(PTR_ce31154,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3119a
    lds.l @r15+,PR
    mov.l @(PTR_ce3115c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31120:
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31164,pc),r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31150,pc),r0
    mov.b r5,@(r0,r14)
    mova @(DAT_ce31168,pc),r0
    fmov.s @r4,fr2
    fmov.s @r0,fr3
    mov 0x34,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bf LAB_ce3116c
    mov.w @(DAT_ce31152,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3118c
    bra LAB_ce31184
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3114a:
    #data 0x01e8
DAT_ce3114c:
    #data 0x014b
DAT_ce3114e:
    #data 0x019e
DAT_ce31150:
    #data 0x01fc
DAT_ce31152:
    #data 0x01d2
    #align4

PTR_ce31154:
    #data loc_8c034dee
PTR_ce31158:
    #data loc_8c2896b0
PTR_ce3115c:
    #data loc_8c05176e
PTR_ce31160:
    #data PTR_ce33a5c
PTR_ce31164:
    #data loc_8c26a524
DAT_ce31168:
    #data 0xc3200000

;=============================================

LAB_ce3116c:
    mova @(DAT_ce311fc,pc),r0
    fmov.s @r4,fr1
    fmov.s @r0,fr2
    mov 0x34,r0
    fmov.s @(r0,r14),fr0
    fadd fr2,fr1
    fcmp/gt fr1,fr0
    bf LAB_ce31190
    mov.w @(DAT_ce311f4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3118c

LAB_ce31184:
    mov.w @(DAT_ce311f6,pc),r0
    mov 0x01,r3
    bra LAB_ce31190
    mov.b r3,@(r0,r14)

LAB_ce3118c:
    mov.w @(DAT_ce311f6,pc),r0
    mov.b r5,@(r0,r14)

LAB_ce31190:
    lds.l @r15+,PR
    mov.l @(PTR_ce31200,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3119a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311a0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31204,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311ec
    mov.w @(DAT_ce311f8,pc),r0
    mov 0x11,r3
    mov 0x00,r2
    mov.b r3,@(r0,r14)
    add 0xFE,r0
    mov.l @(PTR_ce31208,pc),r3
    mov 0x03,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce311f6,pc),r0
    mov.l @(PTR_ce3120c,pc),r13
    mov.b @(r0,r14),r0
    cmp/eq 0x00,r0
    bt LAB_ce311dc
    cmp/eq 0x01,r0
    bt LAB_ce311e0
    cmp/eq 0xFF,r0
    bt LAB_ce311e4
    bra LAB_ce311ec
    nop

LAB_ce311dc:
    bra LAB_ce311e6
    mov 0x0E,r6

LAB_ce311e0:
    bra LAB_ce311e6
    mov 0x0F,r6

LAB_ce311e4:
    mov 0x0D,r6

LAB_ce311e6:
    mov 0x01,r5
    jsr @r13
    mov r14,r4

LAB_ce311ec:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311f4:
    #data 0x01d2
DAT_ce311f6:
    #data 0x01d3
DAT_ce311f8:
    #data 0x01d6
    #align4

DAT_ce311fc:
    #data 0x43200000
PTR_ce31200:
    #data loc_8c04fc9e
PTR_ce31204:
    #data loc_8c034dee
PTR_ce31208:
    #data loc_8c0530d8
PTR_ce3120c:
    #data loc_8c034e8c

;=============================================

LAB_ce31210:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3126e
    mov.l @(PTR_ce31348,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x14,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0D,r6
    mov.w @(DAT_ce3133c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3134c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3133e,pc),r0
    mov 0x62,r2
    mov 0x00,r4
    mov.l @(PTR_ce31350,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x16,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31354,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31358,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4

LAB_ce3126e:
    mov.w @(DAT_ce31340,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3127e
    mov.l @(PTR_ce3135c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3127e:
    mov 0x5C,r1
    mov.l @(PTR_ce31360,pc),r3
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
    mov.l @(PTR_ce31364,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312d2
    lds.l @r15+,PR
    mov.l @(PTR_ce31368,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce312d2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312d8:
    mov r4,r3
    mov.l @(PTR_ce3136c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce312ea:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31364,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31342,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31384
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31344,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31326
    mova @(DAT_ce31370,pc),r0
    bra LAB_ce3132a
    fmov.s @r0,fr3

LAB_ce31326:
    mova @(DAT_ce31374,pc),r0
    fmov.s @r0,fr3

LAB_ce3132a:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31344,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3137c
    mova @(DAT_ce31378,pc),r0
    bra LAB_ce31380
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3133c:
    #data 0x01f9
DAT_ce3133e:
    #data 0x01a1
DAT_ce31340:
    #data 0x01ff
DAT_ce31342:
    #data 0x0141
DAT_ce31344:
    #data 0x01d2
    #align4

PTR_ce31348:
    #data loc_8c052b4c
PTR_ce3134c:
    #data loc_8c034e8c
PTR_ce31350:
    #data loc_8c2896b0
PTR_ce31354:
    #data loc_8c04223a
PTR_ce31358:
    #data loc_8c056de4
PTR_ce3135c:
    #data loc_8c0511e2
PTR_ce31360:
    #data loc_8c052c84
PTR_ce31364:
    #data loc_8c034dee
PTR_ce31368:
    #data loc_8c051648
PTR_ce3136c:
    #data PTR_ce33a64
DAT_ce31370:
    #data 0x417d5555
DAT_ce31374:
    #data 0xc17d5555
DAT_ce31378:
    #data 0xbea00000

;=============================================

LAB_ce3137c:
    mova @(DAT_ce314d8,pc),r0
    fmov.s @r0,fr3

LAB_ce31380:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce31384:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3138a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314dc,pc),r3
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
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce313de
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce313de:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313e4:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce314dc,pc),r3
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
    bt LAB_ce31454
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    fldi0 fr4
    mov r6,r5
    add 0x01,r0
    mov.l @(PTR_ce314e0,pc),r3
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

LAB_ce31454:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3145a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce314dc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31474
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce314e4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31474:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3147c:
    mov r4,r3
    mov.l @(PTR_ce314e8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3148e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314dc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce314d4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce314ce
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
    mov.w @(DAT_ce314d6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce314c6
    mova @(DAT_ce314ec,pc),r0
    bra LAB_ce314ca
    fmov.s @r0,fr3

LAB_ce314c6:
    mova @(DAT_ce314f0,pc),r0
    fmov.s @r0,fr3

LAB_ce314ca:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce314ce:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314d4:
    #data 0x0141
DAT_ce314d6:
    #data 0x01d2
    #align4

DAT_ce314d8:
    #data 0x3ea00000
PTR_ce314dc:
    #data loc_8c034dee
PTR_ce314e0:
    #data loc_8c034e8c
PTR_ce314e4:
    #data loc_8c051648
PTR_ce314e8:
    #data PTR_ce33a74
DAT_ce314ec:
    #data 0xc1200000
DAT_ce314f0:
    #data 0x41200000

;=============================================

LAB_ce314f4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3161c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31546
    mov.w @(DAT_ce31618,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3151a
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce3151a:
    mov 0x68,r1
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
    bra LAB_ce3156c
    fmov fr2,@(r0,r14)

LAB_ce31546:
    mov.b @(0x6,r14),r0
    mov r14,r4
    fldi0 fr4
    mov 0x03,r6
    add 0x01,r0
    mov.l @(PTR_ce31620,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3156c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31572:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3161c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3158c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31624,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3158c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31594:
    mov r4,r3
    mov.l @(PTR_ce31628,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce315a6:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3161a,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce31620,pc),r3
    jmp @r3
    mov 0x12,r5

LAB_ce315ba:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3161c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce315d2
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce315d2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce315da:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3162c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce315f2
    lds.l @r15+,PR
    mov.l @(PTR_ce31624,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce315f2:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31630,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31606:
    mov r4,r3
    mov.l @(PTR_ce31634,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31618:
    #data 0x0141
DAT_ce3161a:
    #data 0x012c
    #align4

PTR_ce3161c:
    #data loc_8c034dee
PTR_ce31620:
    #data loc_8c034e8c
PTR_ce31624:
    #data loc_8c051648
PTR_ce31628:
    #data PTR_ce33a80
PTR_ce3162c:
    #data loc_8c046c8a
PTR_ce31630:
    #data PTR_ce33a88
PTR_ce31634:
    #data PTR_ce33a9c

;=============================================

LAB_ce31638:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31760,pc),r3
    add 0x01,r0
    jsr @r3
    mov.b r0,@(0x6,r14)
    and 0x03,r0
    mov.l @(PTR_ce31764,pc),r13
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/eq 0x00,r0
    bt LAB_ce31666
    cmp/eq 0x01,r0
    bt LAB_ce3166a
    cmp/eq 0x02,r0
    bt LAB_ce3166e
    cmp/eq 0x03,r0
    bt LAB_ce31672
    bra LAB_ce3167a
    nop

LAB_ce31666:
    bra LAB_ce31674
    mov 0x00,r6

LAB_ce3166a:
    bra LAB_ce31674
    mov 0x01,r6

LAB_ce3166e:
    bra LAB_ce31674
    mov 0x02,r6

LAB_ce31672:
    mov 0x03,r6

LAB_ce31674:
    mov 0x13,r5
    jsr @r13
    mov r14,r4

LAB_ce3167a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31682:
    mov.l @(PTR_ce31768,pc),r3
    jmp @r3
    nop

LAB_ce31688:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce3169c
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce31764,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce3169c:
    mov.l @(PTR_ce31768,pc),r3
    jmp @r3
    nop

LAB_ce316a2:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce316b6
    mov.b @(0x6,r4),r0
    mov 0x04,r6
    mov.l @(PTR_ce31764,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce316b6:
    mov.l @(PTR_ce31768,pc),r3
    jmp @r3
    nop

LAB_ce316bc:
    mov.w @(DAT_ce31758,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce3176c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce316d0:
    mov r4,r3
    mov.l @(PTR_ce31770,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce316e2:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x30,r3
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3175a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31774,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31778,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3177c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3175c,pc),r0
    fldi0 fr4
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3175e,pc),r0
    mov.l @(PTR_ce31780,pc),r3
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
    mov r13,r6
    mov.l @(PTR_ce31764,pc),r2
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31758:
    #data 0x01e9
DAT_ce3175a:
    #data 0x01a1
DAT_ce3175c:
    #data 0x01f9
DAT_ce3175e:
    #data 0x041c
    #align4

PTR_ce31760:
    #data loc_8c03319e
PTR_ce31764:
    #data loc_8c034e8c
PTR_ce31768:
    #data loc_8c034dee
PTR_ce3176c:
    #data PTR_ce33aa4
PTR_ce31770:
    #data PTR_ce33ae4
PTR_ce31774:
    #data loc_8c2896b0
PTR_ce31778:
    #data loc_8c056de4
PTR_ce3177c:
    #data loc_8c05218a
PTR_ce31780:
    #data loc_8c05115a

;=============================================

LAB_ce31784:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce318a0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3179e
    lds.l @r15+,PR
    mov.l @(PTR_ce318a4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3179e:
    mov.w @(DAT_ce31892,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    tst 0x01,r0
    bt LAB_ce317be
    mov.w @(DAT_ce31892,pc),r2
    mov 0x00,r0
    mov.l @(PTR_ce318a8,pc),r3
    mov r14,r4
    add r14,r2
    mov r0,r6
    mov.b r0,@(0x1,r2)
    mov r0,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce317be:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce317c4:
    mov r4,r3
    mov.l @(PTR_ce318ac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce317d6:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31894,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce317f0
    bra LAB_ce317f2
    mov 0x37,r3

LAB_ce317f0:
    mov 0x34,r3

LAB_ce317f2:
    mov.w @(DAT_ce31896,pc),r0
    mov 0x00,r13
    mov 0x0C,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce318b0,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce318b4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce318b8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31898,pc),r0
    mov.l @(PTR_ce318bc,pc),r2
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3189a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x45,r0
    mov.l @r2,r3
    mov.b @(r0,r3),r1
    tst r1,r1
    bt/s LAB_ce31842
    mov r14,r4
    bra LAB_ce31844
    mov 0x14,r5

LAB_ce31842:
    mov 0x1A,r5

LAB_ce31844:
    mov.l @(PTR_ce318c0,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce3189c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31864
    mov.w @(DAT_ce31894,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce318c4,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31874
    nop

LAB_ce31864:
    mov.w @(DAT_ce31894,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce318c4,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31874:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3189c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce318cc
    mov.w @(DAT_ce31894,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce318c8,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce318dc
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31892:
    #data 0x0150
DAT_ce31894:
    #data 0x01a3
DAT_ce31896:
    #data 0x01a1
DAT_ce31898:
    #data 0x01f9
DAT_ce3189a:
    #data 0x041c
DAT_ce3189c:
    #data 0x01d2
    #align4

PTR_ce318a0:
    #data loc_8c034dee
PTR_ce318a4:
    #data loc_8c051648
PTR_ce318a8:
    #data loc_8c08a55c
PTR_ce318ac:
    #data PTR_ce33aec
PTR_ce318b0:
    #data loc_8c2896b0
PTR_ce318b4:
    #data loc_8c056de4
PTR_ce318b8:
    #data loc_8c05218a
PTR_ce318bc:
    #data loc_8c26823c
PTR_ce318c0:
    #data loc_8c042008
PTR_ce318c4:
    #data DAT_ce33afc
PTR_ce318c8:
    #data DAT_ce33b00

;=============================================

LAB_ce318cc:
    mov.w @(DAT_ce319c6,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce319d0,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce318dc:
    mov 0x68,r0
    mov.l @(PTR_ce319d4,pc),r4
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319c6,pc),r0
    mov.b @(r0,r14),r3
    mov 0x08,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r4,r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319c6,pc),r0
    mov.b @(r0,r14),r3
    mov 0x0C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    mov.l @(PTR_ce319d8,pc),r3
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce319dc,pc),r2
    mov 0x04,r5
    mov 0x02,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce319c6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31926
    bra LAB_ce31928
    mov 0x03,r3

LAB_ce31926:
    mov 0x01,r3

LAB_ce31928:
    mov.w @(DAT_ce319c8,pc),r0
    mov 0x15,r5
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce319e0,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3193c:
    mov.l r14,@-r15
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce319e4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce319ca,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    tst 0x01,r0
    bt LAB_ce31988
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce319e8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce319cc,pc),r0
    mov 0x34,r8
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31972
    add r14,r8
    mov.l @(DAT_ce319ec,pc),r1
    lds r1,FPUL
    bra LAB_ce31978
    fsts FPUL,fr3

LAB_ce31972:
    mov.l @(DAT_ce319f0,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce31978:
    fmov.s @r8,fr2
    mov r14,r4
    fadd fr3,fr2
    fmov.s fr2,@r8
    lds.l @r15+,PR
    mov.l @r15+,r8
    bra LAB_ce319f8
    mov.l @r15+,r14

LAB_ce31988:
    lds.l @r15+,PR
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31990:
    sts.l PR,@-r15
    mov.l @(PTR_ce319e4,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    bra LAB_ce319f8
    lds.l @r15+,PR

LAB_ce319a0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce319e4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319c0
    mov.w @(DAT_ce319ce,pc),r0
    mov 0x01,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce319f4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce319c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319c6:
    #data 0x01a3
DAT_ce319c8:
    #data 0x0158
DAT_ce319ca:
    #data 0x0150
DAT_ce319cc:
    #data 0x01d2
DAT_ce319ce:
    #data 0x01f9
    #align4

PTR_ce319d0:
    #data DAT_ce33b00
PTR_ce319d4:
    #data DAT_ce33afc
PTR_ce319d8:
    #data loc_8c05115a
PTR_ce319dc:
    #data loc_8c08a55c
PTR_ce319e0:
    #data loc_8c034e8c
PTR_ce319e4:
    #data loc_8c034dee
PTR_ce319e8:
    #data loc_8c053082
DAT_ce319ec:
    #data 0x42200000
DAT_ce319f0:
    #data 0xc2200000
PTR_ce319f4:
    #data loc_8c051648

;=============================================

LAB_ce319f8:
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
    mov.w @(DAT_ce31b14,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bf/s LAB_ce31a4c
    fldi0 fr4
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31a5c

LAB_ce31a4c:
    extu.b r4,r2
    tst r2,r2
    bt LAB_ce31a64
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31a64

LAB_ce31a5c:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce31a64:
    mov.w @(DAT_ce31b16,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31aa0
    mov 0x00,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31b20,pc),r0
    shar r3
    add 0xFF,r3
    shll2 r3
    mov.l @(r0,r3),r1
    mov.w @(DAT_ce31b18,pc),r0
    mov.l @(PTR_ce31b24,pc),r3
    mov.b r1,@(r0,r14)
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
    mov.w @(DAT_ce31b16,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce31aa0:
    mov.w @(DAT_ce31b1a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31ae2
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31b28,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31b1a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31b1c,pc),r0
    mov.b r4,@(r0,r14)
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
    mov.l @(PTR_ce31b2c,pc),r2
    mov r14,r4
    mov 0x1A,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31ae2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31ae8:
    mov r4,r3
    mov.l @(PTR_ce31b30,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31afa:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31b1e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31b34
    bra LAB_ce31b36
    mov 0x3B,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b14:
    #data 0x01d2
DAT_ce31b16:
    #data 0x0141
DAT_ce31b18:
    #data 0x01a1
DAT_ce31b1a:
    #data 0x041c
DAT_ce31b1c:
    #data 0x01f9
DAT_ce31b1e:
    #data 0x01a3
    #align4

PTR_ce31b20:
    #data DAT_ce33b1c
PTR_ce31b24:
    #data loc_8c2896b0
PTR_ce31b28:
    #data loc_8c0511b4
PTR_ce31b2c:
    #data loc_8c034e8c
PTR_ce31b30:
    #data PTR_ce33b34

;=============================================

LAB_ce31b34:
    mov 0x39,r3

LAB_ce31b36:
    mov.w @(DAT_ce31c5c,pc),r0
    mov 0x00,r13
    mov 0x0C,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31c70,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31c74,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31c78,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31c5e,pc),r0
    fldi0 fr4
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31c60,pc),r0
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
    mov r13,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce31c62,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31ba6
    mov.w @(DAT_ce31c64,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31c7c,pc),r0
    extu.b r3,r3
    shll2 r3
    shll r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31bb6
    nop

LAB_ce31ba6:
    mov.w @(DAT_ce31c64,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31c7c,pc),r0
    extu.b r2,r2
    shll2 r2
    shll r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31bb6:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31c64,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31c80,pc),r0
    extu.b r3,r3
    shll2 r3
    shll r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    mov.l @(PTR_ce31c88,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31c84,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31c8c,pc),r2
    mov 0x04,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31c64,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31bf0
    bra LAB_ce31bf2
    mov 0x06,r3

LAB_ce31bf0:
    mov 0x04,r3

LAB_ce31bf2:
    mov.w @(DAT_ce31c66,pc),r0
    mov 0x15,r5
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce31c90,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c06:
    mov.w @(DAT_ce31c68,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31c1e
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf LAB_ce31c1e
    mov 0x01,r0
    mov.w r0,@(0x1e,r14)

LAB_ce31c1e:
    mov.w @(DAT_ce31c6a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31c2c
    mov.l @(PTR_ce31c94,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31c2c:
    mov.w @(DAT_ce31c6c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31d1a
    mov.b @(r0,r14),r2
    cmp/pz r2
    bf LAB_ce31c98
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
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c5c:
    #data 0x01a1
DAT_ce31c5e:
    #data 0x01f9
DAT_ce31c60:
    #data 0x041c
DAT_ce31c62:
    #data 0x01d2
DAT_ce31c64:
    #data 0x01a3
DAT_ce31c66:
    #data 0x0158
DAT_ce31c68:
    #data 0x019e
DAT_ce31c6a:
    #data 0x014b
DAT_ce31c6c:
    #data 0x0141
    #align4

PTR_ce31c70:
    #data loc_8c2896b0
PTR_ce31c74:
    #data loc_8c056de4
PTR_ce31c78:
    #data loc_8c05218a
PTR_ce31c7c:
    #data DAT_ce33b40
PTR_ce31c80:
    #data DAT_ce33b44
DAT_ce31c84:
    #data 0xc0092492
PTR_ce31c88:
    #data loc_8c05115a
PTR_ce31c8c:
    #data loc_8c08a55c
PTR_ce31c90:
    #data loc_8c034e8c
PTR_ce31c94:
    #data loc_8c034dee

;=============================================

LAB_ce31c98:
    mov.l @(PTR_ce31df4,pc),r3
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
    mov.w @(DAT_ce31de6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31d1a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31de6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31de8,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31df8,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31dfc,pc),r2
    mov 0x34,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31d1a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31d20:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31e00,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d3a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31e04,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31d3a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31d42:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31e08,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31dea,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d58:
    mov.w @(DAT_ce31dec,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31d76
    mov.w @(DAT_ce31df0,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31dee,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31d76:
    mov.b @(0x6,r14),r0
    mov 0x40,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31df2,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31e0c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31e10,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31de8,pc),r0
    mov 0x02,r5
    fldi0 fr4
    mov r13,r6
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31de6,pc),r0
    mov.l @(PTR_ce31e14,pc),r3
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
    mov.l @(PTR_ce31e18,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce31e1c,pc),r3
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31de6:
    #data 0x041c
DAT_ce31de8:
    #data 0x01f9
DAT_ce31dea:
    #data 0x02a4
DAT_ce31dec:
    #data 0x0255
DAT_ce31dee:
    #data 0x00ff
DAT_ce31df0:
    #data 0x03f0
DAT_ce31df2:
    #data 0x01a1
    #align4

PTR_ce31df4:
    #data loc_8c053082
PTR_ce31df8:
    #data loc_8c0511b4
PTR_ce31dfc:
    #data loc_8c04223a
PTR_ce31e00:
    #data loc_8c034dee
PTR_ce31e04:
    #data loc_8c051648
PTR_ce31e08:
    #data PTR_ce33b50
PTR_ce31e0c:
    #data loc_8c2896b0
PTR_ce31e10:
    #data loc_8c05218a
PTR_ce31e14:
    #data loc_8c08a55c
PTR_ce31e18:
    #data loc_8c05115a
PTR_ce31e1c:
    #data loc_8c034e8c

;=============================================

LAB_ce31e20:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31f02,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31f04,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31f06,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31e42
    bra LAB_ce31e44
    mov 0x02,r3

LAB_ce31e42:
    mov 0x00,r3

LAB_ce31e44:
    mov.w @(DAT_ce31f08,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31f10,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f0a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e88
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce31f1c,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce31f0a,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31f0c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce31f14,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31f18,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31e88:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e90:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31f02,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31f04,pc),r0
    mov.l @(PTR_ce31f10,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f0e,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    tst 0x01,r0
    bt LAB_ce31efa
    mov.b @(0x6,r14),r0
    mov 0x0B,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.l @r15,r3
    mov r0,r6
    mov.b r0,@(0x1,r3)
    mov.l @(PTR_ce31f20,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f20,pc),r2
    mov 0x01,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    tst r0,r0
    bf/s LAB_ce31ee4
    mov.l r0,@(0x14,r14)
    mov 0x04,r0
    mov.b r0,@(0x6,r14)
    bra LAB_ce31eec
    mov r0,r6

LAB_ce31ee4:
    mov.l @r15,r2
    mov 0x08,r0
    mov 0x03,r6
    mov.b r0,@(0x2,r2)

LAB_ce31eec:
    mov r14,r4
    mov 0x16,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31f24,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31efa:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f02:
    #data 0x03f8
DAT_ce31f04:
    #data 0x0328
DAT_ce31f06:
    #data 0x0255
DAT_ce31f08:
    #data 0x03f1
DAT_ce31f0a:
    #data 0x0141
DAT_ce31f0c:
    #data 0x03f0
DAT_ce31f0e:
    #data 0x0150
    #align4

PTR_ce31f10:
    #data loc_8c034dee
DAT_ce31f14:
    #data 0x4288aaaa
DAT_ce31f18:
    #data 0x43182492
PTR_ce31f1c:
    #data loc_8c050834
PTR_ce31f20:
    #data loc_8c08a55c
PTR_ce31f24:
    #data loc_8c034e8c

;=============================================

LAB_ce31f28:
    mov.w @(DAT_ce3205a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov r5,r13
    mov.w @(DAT_ce3205c,pc),r0
    mov.l @(PTR_ce32074,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x1,r13),r0
    tst r0,r0
    bf LAB_ce31f6c
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32078,pc),r3
    mov 0x16,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x04,r6
    mov.w @(DAT_ce3205e,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32060,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce31f6c:
    mov.b @(0x2,r13),r0
    tst r0,r0
    bt LAB_ce31f8e
    mov.l @(PTR_ce3207c,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce31f8e
    mov.b @(0x2,r13),r0
    add 0xFF,r0
    mov.b r0,@(0x2,r13)
    extu.b r0,r0
    tst 0x01,r0
    bf LAB_ce31f8e
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)

LAB_ce31f8e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31f96:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32074,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31fb0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32080,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31fb0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31fb8:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32084,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32062,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31fce:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32064,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31ff0
    mov.w @(DAT_ce32068,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32066,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31ff0:
    mov.b @(0x6,r14),r0
    mov 0x45,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3206a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32088,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x40,r2
    mov.w @(DAT_ce3206c,pc),r0
    mov.w r2,@(r0,r14)
    mov.l @(PTR_ce3208c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3206e,pc),r0
    fldi0 fr4
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32070,pc),r0
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
    mov.w @(DAT_ce32072,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32090
    mov 0x3C,r4
    mov.l @r15,r3
    mov 0x14,r0
    mov.b r0,@(0x4,r3)
    bra LAB_ce32098
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3205a:
    #data 0x03f8
DAT_ce3205c:
    #data 0x0328
DAT_ce3205e:
    #data 0x03f9
DAT_ce32060:
    #data 0x0327
DAT_ce32062:
    #data 0x02a4
DAT_ce32064:
    #data 0x0255
DAT_ce32066:
    #data 0x00ff
DAT_ce32068:
    #data 0x03f0
DAT_ce3206a:
    #data 0x01a1
DAT_ce3206c:
    #data 0x01ac
DAT_ce3206e:
    #data 0x01f9
DAT_ce32070:
    #data 0x041c
DAT_ce32072:
    #data 0x0525
    #align4

PTR_ce32074:
    #data loc_8c034dee
PTR_ce32078:
    #data loc_8c034e8c
PTR_ce3207c:
    #data loc_8c055d54
PTR_ce32080:
    #data loc_8c051648
PTR_ce32084:
    #data PTR_ce33b64
PTR_ce32088:
    #data loc_8c2896b0
PTR_ce3208c:
    #data loc_8c05218a

;=============================================

LAB_ce32090:
    mov.l @r15,r2
    mov r4,r0
    nop
    mov.b r0,@(0x4,r2)

LAB_ce32098:
    mov r4,r0
    nop
    mov.l @(PTR_ce32158,pc),r3
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x16,r5
    mov 0x05,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3215c,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce320b6:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3214a,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3214c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3214e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce320da
    bra LAB_ce320dc
    mov 0x02,r3

LAB_ce320da:
    mov 0x00,r3

LAB_ce320dc:
    mov.w @(DAT_ce32150,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32160,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32152,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32140
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32152,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32154,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32108
    mova @(DAT_ce32164,pc),r0
    bra LAB_ce3210c
    fmov.s @r0,fr3

LAB_ce32108:
    mova @(DAT_ce32168,pc),r0
    fmov.s @r0,fr3

LAB_ce3210c:
    mov.l @(PTR_ce3216c,pc),r3
    mov 0x5C,r0
    mov 0x04,r5
    fmov fr3,@(r0,r14)
    mov 0x03,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32156,pc),r0
    mov r15,r5
    mov.l @(PTR_ce32178,pc),r3
    mov 0x01,r6
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce32170,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32174,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32140:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3214a:
    #data 0x03f8
DAT_ce3214c:
    #data 0x0328
DAT_ce3214e:
    #data 0x0255
DAT_ce32150:
    #data 0x03f1
DAT_ce32152:
    #data 0x0141
DAT_ce32154:
    #data 0x01d2
DAT_ce32156:
    #data 0x03f0
    #align4

PTR_ce32158:
    #data loc_8c05115a
PTR_ce3215c:
    #data loc_8c034e8c
PTR_ce32160:
    #data loc_8c034dee
DAT_ce32164:
    #data 0x41555555
DAT_ce32168:
    #data 0xc1555555
PTR_ce3216c:
    #data loc_8c08a55c
DAT_ce32170:
    #data 0xc2200000
DAT_ce32174:
    #data 0x42b40000
PTR_ce32178:
    #data loc_8c050834

;=============================================

LAB_ce3217c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32280,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32282,pc),r0
    mov.l @(PTR_ce3228c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32284,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce321b0
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce321b0:
    mov 0x68,r1
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
    mov.w @(DAT_ce32286,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32212
    mov 0x00,r13
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32290,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x40,r2
    mov.w @(DAT_ce32288,pc),r0
    mov.w r2,@(r0,r14)
    add 0x9F,r0
    mov.b r13,@(r0,r14)

LAB_ce32212:
    mov.l @r15,r3
    mov.b @(0x4,r3),r0
    tst r0,r0
    bt LAB_ce3222e
    mov.l @(PTR_ce32294,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce3222e
    mov.l @r15,r3
    mov.b @(0x4,r3),r0
    add 0xFF,r0
    bra LAB_ce32276
    mov.b r0,@(0x4,r3)

LAB_ce3222e:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32276
    mov.b @(0x6,r14),r0
    mov 0x46,r3
    mov 0x16,r5
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x07,r6
    mov.w @(DAT_ce3228a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32290,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32298,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32276:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32280:
    #data 0x03f8
DAT_ce32282:
    #data 0x0328
DAT_ce32284:
    #data 0x0141
DAT_ce32286:
    #data 0x014b
DAT_ce32288:
    #data 0x01ac
DAT_ce3228a:
    #data 0x01a1
    #align4

PTR_ce3228c:
    #data loc_8c034dee
PTR_ce32290:
    #data loc_8c2896b0
PTR_ce32294:
    #data loc_8c055d54
PTR_ce32298:
    #data loc_8c034e8c

;=============================================

LAB_ce3229c:
    mov.w @(DAT_ce323e0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce323e2,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x34,r0
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    add r14,r1
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov.l @(PTR_ce323f8,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3232a
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    fldi0 fr4
    mov 0x08,r6
    add 0x01,r0
    mov.l @(PTR_ce323fc,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce323e4,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce323e6,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3232a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32330:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce323f8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3234a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32400,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3234a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32352:
    mov r4,r3
    mov.l @(PTR_ce32404,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32364:
    mov.w @(DAT_ce323e8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32382
    mov.w @(DAT_ce323ec,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce323ea,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32382:
    mov.b @(0x6,r14),r0
    mov 0x4B,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce323ee,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32408,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3240c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce323f0,pc),r0
    fldi0 fr4
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce323f2,pc),r0
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
    mov.w @(DAT_ce323f4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32414
    mova @(DAT_ce32410,pc),r0
    bra LAB_ce32418
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce323e0:
    #data 0x03f8
DAT_ce323e2:
    #data 0x0328
DAT_ce323e4:
    #data 0x03f9
DAT_ce323e6:
    #data 0x0327
DAT_ce323e8:
    #data 0x0255
DAT_ce323ea:
    #data 0x00ff
DAT_ce323ec:
    #data 0x03f0
DAT_ce323ee:
    #data 0x01a1
DAT_ce323f0:
    #data 0x01f9
DAT_ce323f2:
    #data 0x041c
DAT_ce323f4:
    #data 0x01d2
    #align4

PTR_ce323f8:
    #data loc_8c034dee
PTR_ce323fc:
    #data loc_8c034e8c
PTR_ce32400:
    #data loc_8c051648
PTR_ce32404:
    #data PTR_ce33b78
PTR_ce32408:
    #data loc_8c2896b0
PTR_ce3240c:
    #data loc_8c05218a
DAT_ce32410:
    #data 0x41200000

;=============================================

LAB_ce32414:
    mova @(DAT_ce3253c,pc),r0
    fmov.s @r0,fr3

LAB_ce32418:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3252a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3242a
    mova @(DAT_ce32540,pc),r0
    bra LAB_ce3242e
    fmov.s @r0,fr3

LAB_ce3242a:
    mova @(DAT_ce32544,pc),r0
    fmov.s @r0,fr3

LAB_ce3242e:
    mov 0x68,r0
    mov.l @(PTR_ce32550,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32548,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3254c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32554,pc),r2
    mov 0x04,r5
    mov 0x02,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32558,pc),r3
    mov 0x09,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32462:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3252c,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3252e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32530,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32484
    bra LAB_ce32486
    mov 0x02,r3

LAB_ce32484:
    mov 0x00,r3

LAB_ce32486:
    mov.w @(DAT_ce32532,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3255c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32534,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce324ca
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32568,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce32534,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32536,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32560,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32564,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce324ca:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce324d2:
    mov.w @(DAT_ce3252c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r8,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3252e,pc),r0
    mov.l @(PTR_ce3255c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32534,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32520
    mov.b @(0x6,r14),r0
    mov 0x34,r8
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3252a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3250e
    add r14,r8
    mov.l @(DAT_ce3256c,pc),r1
    lds r1,FPUL
    bra LAB_ce32514
    fsts FPUL,fr3

LAB_ce3250e:
    mov.l @(DAT_ce32570,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce32514:
    fmov.s @r8,fr2
    mov 0x02,r3
    mov.w @(DAT_ce32538,pc),r0
    fadd fr3,fr2
    fmov.s fr2,@r8
    mov.b r3,@(r0,r14)

LAB_ce32520:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r8
    bra FUN_ce326c0
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3252a:
    #data 0x01d2
DAT_ce3252c:
    #data 0x03f8
DAT_ce3252e:
    #data 0x0328
DAT_ce32530:
    #data 0x0255
DAT_ce32532:
    #data 0x03f1
DAT_ce32534:
    #data 0x0141
DAT_ce32536:
    #data 0x03f0
DAT_ce32538:
    #data 0x01f9
    #align4

DAT_ce3253c:
    #data 0xc1200000
DAT_ce32540:
    #data 0xbed55555
DAT_ce32544:
    #data 0x3ed55555
DAT_ce32548:
    #data 0x41bc9249
DAT_ce3254c:
    #data 0xbecdb6db
PTR_ce32550:
    #data loc_8c05115a
PTR_ce32554:
    #data loc_8c08a55c
PTR_ce32558:
    #data loc_8c034e8c
PTR_ce3255c:
    #data loc_8c034dee
DAT_ce32560:
    #data 0xc13aaaaa
DAT_ce32564:
    #data 0x42d64924
PTR_ce32568:
    #data loc_8c050834
DAT_ce3256c:
    #data 0xc2200000
DAT_ce32570:
    #data 0x42200000

;=============================================

LAB_ce32574:
    mov.w @(DAT_ce3269c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    fldi0 fr3
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3269e,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce325a0
    mov 0x00,r13
    mova @(DAT_ce326ac,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    bra LAB_ce325a6
    fmov fr2,@(r0,r14)

LAB_ce325a0:
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)

LAB_ce325a6:
    mov.l @(PTR_ce326b0,pc),r3
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
    mov.w @(DAT_ce326a0,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bf/s LAB_ce325fa
    fldi0 fr15
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3260a

LAB_ce325fa:
    extu.b r4,r2
    tst r2,r2
    bt LAB_ce32612
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32612

LAB_ce3260a:
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce32612:
    bsr FUN_ce326c0
    mov r14,r4
    mov.w @(DAT_ce326a2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3266c
    mov.w @(DAT_ce326a4,pc),r0
    mov.l @(PTR_ce326b4,pc),r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce326a6,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce326a2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce326a8,pc),r0
    mov.b r13,@(r0,r14)
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
    mov.l @(PTR_ce326b8,pc),r2
    mov 0x15,r5
    mov r14,r4
    mov 0x1A,r6
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3266c:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32676:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce326b0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32696
    mov.w @(DAT_ce326a8,pc),r0
    mov 0x01,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce326bc,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32696:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3269c:
    #data 0x03f8
DAT_ce3269e:
    #data 0x0328
DAT_ce326a0:
    #data 0x01d2
DAT_ce326a2:
    #data 0x041c
DAT_ce326a4:
    #data 0x03f9
DAT_ce326a6:
    #data 0x0327
DAT_ce326a8:
    #data 0x01f9
    #align4

DAT_ce326ac:
    #data 0xbf892492
PTR_ce326b0:
    #data loc_8c034dee
PTR_ce326b4:
    #data loc_8c0511b4
PTR_ce326b8:
    #data loc_8c034e8c
PTR_ce326bc:
    #data loc_8c051648

;=============================================

FUN_ce326c0:
    mov.w @(DAT_ce327f4,pc),r0
    mov 0xFE,r3
    mov.b @(r0,r4),r5
    and r3,r5
    exts.b r5,r2
    tst r2,r2
    bt LAB_ce32706
    mov.b @(r0,r4),r2
    mov 0x01,r3
    exts.b r5,r5
    and r3,r2
    shar r5
    mov.b r2,@(r0,r4)
    mov.l @(PTR_ce32804,pc),r0
    add 0xFF,r5
    shll2 r5
    mov.l @(r0,r5),r2
    mov 0x00,r5
    mov.w @(DAT_ce327f6,pc),r0
    mov.b r2,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce32808,pc),r2
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r2,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r3
    add 0x01,r3
    mov.w r3,@(r0,r1)

LAB_ce32706:
    rts
    nop

LAB_ce3270a:
    mov.w @(DAT_ce327f8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32744
    mov.l @(PTR_ce3280c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce327fa,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32744
    mov.w @(DAT_ce327fa,pc),r0
    mov 0x00,r3
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce327f8,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce32810,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32744:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32814,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce327fc,pc),r5
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3275a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov 0x4D,r3
    mov 0x00,r13
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    mov 0x07,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce327f6,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32808,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32818,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3281c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov 0x0F,r0
    mov.b r0,@(0x5,r2)
    mov.w @(DAT_ce327f8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce3282c
    fldi0 fr4
    mov.l @(DAT_ce32820,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce32824,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce32828,pc),r1
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
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce327fe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce327ec
    bra LAB_ce327ee
    mov 0x0F,r3

LAB_ce327ec:
    mov 0x0D,r3

LAB_ce327ee:
    mov.w @(DAT_ce32800,pc),r0
    bra LAB_ce32860
    mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce327f4:
    #data 0x0141
DAT_ce327f6:
    #data 0x01a1
DAT_ce327f8:
    #data 0x01f9
DAT_ce327fa:
    #data 0x041c
DAT_ce327fc:
    #data 0x02a4
DAT_ce327fe:
    #data 0x01a3
DAT_ce32800:
    #data 0x0158
    #align4

PTR_ce32804:
    #data DAT_ce33b8c
PTR_ce32808:
    #data loc_8c2896b0
PTR_ce3280c:
    #data loc_8c04fea8
PTR_ce32810:
    #data loc_8c051648
PTR_ce32814:
    #data PTR_ce33ba8
PTR_ce32818:
    #data loc_8c056de4
PTR_ce3281c:
    #data loc_8c05218a
DAT_ce32820:
    #data 0x41800000
DAT_ce32824:
    #data 0x41000000
DAT_ce32828:
    #data 0x42800000

;=============================================

LAB_ce3282c:
    mov.w @(DAT_ce3292e,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32930,pc),r0
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
    mov.w @(DAT_ce32932,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32854
    bra LAB_ce32856
    mov 0x09,r3

LAB_ce32854:
    mov 0x07,r3

LAB_ce32856:
    mov.w @(DAT_ce32934,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32940,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32860:
    mov.w @(DAT_ce32934,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce32944,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32936,pc),r0
    mov 0x04,r5
    mov r14,r4
    mov 0x03,r6
    mov.b @(r0,r14),r0
    mov.w r0,@(0x1c,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1e,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32948,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32888:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3294c,pc),r13
    mov r4,r14
    jsr @r13
    mov r5,r12
    mov.w @(DAT_ce32936,pc),r3
    mov.w @(0x1c,r14),r0
    add r14,r3
    mov.b @r3,r3
    cmp/eq r3,r0
    bt LAB_ce328fa
    mov.w @(DAT_ce32936,pc),r0
    mov.b @(r0,r14),r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3292e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce328c8
    mov.w @(DAT_ce32932,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce328c4
    bra LAB_ce328d6
    mov 0x55,r4

LAB_ce328c4:
    bra LAB_ce328d6
    mov 0x53,r4

LAB_ce328c8:
    mov.w @(DAT_ce32932,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce328d4
    bra LAB_ce328d6
    mov 0x4F,r4

LAB_ce328d4:
    mov 0x4D,r4

LAB_ce328d6:
    mov.w @(DAT_ce32938,pc),r0
    mov.l @(PTR_ce32950,pc),r3
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

LAB_ce328fa:
    mov.w @(DAT_ce3293a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32914
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    add 0x01,r0
    exts.w r0,r0
    cmp/pz r0
    bf LAB_ce32972
    bra LAB_ce329f8
    nop

LAB_ce32914:
    mov.w @(DAT_ce3293c,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x60,r0
    bf LAB_ce32954
    mov.b @(0x5,r12),r0
    add 0xFF,r0
    mov.b r0,@(0x5,r12)
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce329f8
    bra LAB_ce32972
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3292e:
    #data 0x01f9
DAT_ce32930:
    #data 0x041c
DAT_ce32932:
    #data 0x01a3
DAT_ce32934:
    #data 0x0158
DAT_ce32936:
    #data 0x0141
DAT_ce32938:
    #data 0x01a1
DAT_ce3293a:
    #data 0x0525
DAT_ce3293c:
    #data 0x034e
    #align4

PTR_ce32940:
    #data loc_8c05115a
PTR_ce32944:
    #data loc_8c034e8c
PTR_ce32948:
    #data loc_8c08a55c
PTR_ce3294c:
    #data loc_8c034dee
PTR_ce32950:
    #data loc_8c2896b0

;=============================================

LAB_ce32954:
    mov.w @(DAT_ce32a4a,pc),r0
    mov 0x40,r4
    mov 0x05,r3
    mov.w @(r0,r14),r0
    add r12,r3
    mov.b @r3,r3
    extu.w r0,r0
    tst r0,r4
    mov.l @(PTR_ce32a58,pc),r0
    movt r4
    extu.b r4,r2
    mov.b @(r0,r2),r2
    extu.b r2,r2
    cmp/gt r2,r3
    bt LAB_ce3297a

LAB_ce32972:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    bra LAB_ce329f8
    mov.b r0,@(0x6,r14)

LAB_ce3297a:
    mov 0x0F,r0
    mov.b r0,@(0x5,r12)
    extu.b r4,r2
    mov.w @(DAT_ce32a4c,pc),r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    cmp/eq r2,r3
    bt LAB_ce329f8
    mov.b r4,@(r0,r14)
    add 0x9F,r0
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce32a4e,pc),r0
    mov.b r3,@r15
    mov.b @(r0,r14),r11
    mov.w @(DAT_ce32a50,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce329b4
    mov.w @(DAT_ce32a4c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce329ac
    bra LAB_ce329ae
    mov 0x0F,r2

LAB_ce329ac:
    mov 0x0D,r2

LAB_ce329ae:
    mov.w @(DAT_ce32a52,pc),r0
    bra LAB_ce329c6
    mov.b r2,@(r0,r14)

LAB_ce329b4:
    mov.w @(DAT_ce32a4c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce329c0
    bra LAB_ce329c2
    mov 0x09,r1

LAB_ce329c0:
    mov 0x07,r1

LAB_ce329c2:
    mov.w @(DAT_ce32a52,pc),r0
    mov.b r1,@(r0,r14)

LAB_ce329c6:
    mov.w @(DAT_ce32a52,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce32a5c,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32a60,pc),r2
    mov 0x04,r5
    mov 0x03,r6
    jsr @r2
    mov r14,r4
    bra LAB_ce329e8
    mov 0x01,r12

LAB_ce329e0:
    mov.w @(DAT_ce32a54,pc),r0
    mov.b r12,@(r0,r14)
    jsr @r13
    mov r14,r4

LAB_ce329e8:
    mov.w @(DAT_ce32a4e,pc),r0
    exts.b r11,r2
    mov.b @(r0,r14),r3
    cmp/eq r2,r3
    bf LAB_ce329e0
    mov.w @(DAT_ce32a54,pc),r0
    mov.b @r15,r2
    mov.b r2,@(r0,r14)

LAB_ce329f8:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32a06:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32a64,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32a56,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    tst 0x01,r0
    bt LAB_ce32a7e
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32a50,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32a3e
    mov.w @(DAT_ce32a4c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32a36
    bra LAB_ce32a38
    mov 0x12,r2

LAB_ce32a36:
    mov 0x10,r2

LAB_ce32a38:
    mov.w @(DAT_ce32a52,pc),r0
    bra LAB_ce32a6e
    mov.b r2,@(r0,r14)

LAB_ce32a3e:
    mov.w @(DAT_ce32a4c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32a68
    bra LAB_ce32a6a
    mov 0x0C,r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a4a:
    #data 0x034e
DAT_ce32a4c:
    #data 0x01a3
DAT_ce32a4e:
    #data 0x0141
DAT_ce32a50:
    #data 0x01f9
DAT_ce32a52:
    #data 0x0158
DAT_ce32a54:
    #data 0x0142
DAT_ce32a56:
    #data 0x0150
    #align4

PTR_ce32a58:
    #data DAT_ce33bb8
PTR_ce32a5c:
    #data loc_8c034e8c
PTR_ce32a60:
    #data loc_8c08a55c
PTR_ce32a64:
    #data loc_8c034dee

;=============================================

LAB_ce32a68:
    mov 0x0A,r1

LAB_ce32a6a:
    mov.w @(DAT_ce32b74,pc),r0
    mov.b r1,@(r0,r14)

LAB_ce32a6e:
    mov.w @(DAT_ce32b74,pc),r0
    mov 0x15,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce32b84,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a7e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a84:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32b88,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32acc
    mov.w @(DAT_ce32b76,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce32ab2
    fldi0 fr4
    mov 0x60,r0
    mov.l @(PTR_ce32b8c,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ab2:
    mov 0x5C,r0
    mov.l @(PTR_ce32b90,pc),r3
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

LAB_ce32acc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ad2:
    mov r4,r3
    mov.l @(PTR_ce32b94,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32ae4:
    mov.w @(DAT_ce32b78,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32b00
    mov.w @(DAT_ce32b7c,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32b7a,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32b00:
    mov.b @(0x6,r14),r0
    mov 0x5D,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32b7e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32b98,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32b9c,pc),r2
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
    mov.l @(PTR_ce32b84,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    mov 0x0B,r6
    lds.l @r15+,PR
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32b52:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32b80,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32b82,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32b78,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32ba0
    bra LAB_ce32ba2
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b74:
    #data 0x0158
DAT_ce32b76:
    #data 0x01f9
DAT_ce32b78:
    #data 0x0255
DAT_ce32b7a:
    #data 0x00ff
DAT_ce32b7c:
    #data 0x03f0
DAT_ce32b7e:
    #data 0x01a1
DAT_ce32b80:
    #data 0x03f8
DAT_ce32b82:
    #data 0x0328
    #align4

PTR_ce32b84:
    #data loc_8c034e8c
PTR_ce32b88:
    #data loc_8c034dee
PTR_ce32b8c:
    #data loc_8c05176e
PTR_ce32b90:
    #data loc_8c051648
PTR_ce32b94:
    #data PTR_ce33bbc
PTR_ce32b98:
    #data loc_8c2896b0
PTR_ce32b9c:
    #data loc_8c05218a

;=============================================

LAB_ce32ba0:
    mov 0x00,r3

LAB_ce32ba2:
    mov.w @(DAT_ce32cc8,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32ce0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32cca,pc),r0
    mov.b @(r0,r14),r0
    tst r0,r0
    movt r0
    tst 0x01,r0
    bf LAB_ce32c00
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32ccc,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x0E,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32cce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32bda
    mova @(DAT_ce32ce4,pc),r0
    bra LAB_ce32bde
    fmov.s @r0,fr3

LAB_ce32bda:
    mova @(DAT_ce32ce8,pc),r0
    fmov.s @r0,fr3

LAB_ce32bde:
    mov 0x5C,r0
    mov.l @(PTR_ce32cf4,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32cec,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32cf0,pc),r0
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

LAB_ce32c00:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c08:
    mov.w @(DAT_ce32cd0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32cd2,pc),r0
    mov.b r2,@(r0,r14)
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
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    mov 0x6C,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    mov.l @(PTR_ce32ce0,pc),r3
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32cd4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32d36
    mov 0x00,r13
    mov.l @(PTR_ce32cf8,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce32d10
    mov 0x05,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r3
    mov.w @(DAT_ce32cd6,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32cd8,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32cda,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32cdc,pc),r0
    mov.b r3,@(r0,r14)
    add 0xF9,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32c9a
    mova @(DAT_ce32cfc,pc),r0
    bra LAB_ce32c9e
    fmov.s @r0,fr3

LAB_ce32c9a:
    mova @(DAT_ce32d00,pc),r0
    fmov.s @r0,fr3

LAB_ce32c9e:
    mov 0x5C,r0
    mov.l @(PTR_ce32d0c,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32d04,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x0D,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32d08,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32cc8:
    #data 0x03f1
DAT_ce32cca:
    #data 0x0141
DAT_ce32ccc:
    #data 0x03f0
DAT_ce32cce:
    #data 0x01d2
DAT_ce32cd0:
    #data 0x03f8
DAT_ce32cd2:
    #data 0x0328
DAT_ce32cd4:
    #data 0x019e
DAT_ce32cd6:
    #data 0x01fc
DAT_ce32cd8:
    #data 0x03f9
DAT_ce32cda:
    #data 0x0327
DAT_ce32cdc:
    #data 0x01d9
    #align4

PTR_ce32ce0:
    #data loc_8c034dee
DAT_ce32ce4:
    #data 0x41baaaaa
DAT_ce32ce8:
    #data 0xc1baaaaa
DAT_ce32cec:
    #data 0x41200000
DAT_ce32cf0:
    #data 0x433c9249
PTR_ce32cf4:
    #data loc_8c050834
PTR_ce32cf8:
    #data loc_8c05264c
DAT_ce32cfc:
    #data 0x40200000
DAT_ce32d00:
    #data 0xc0200000
DAT_ce32d04:
    #data 0x41892492
DAT_ce32d08:
    #data 0xbf4db6db
PTR_ce32d0c:
    #data loc_8c034e8c

;=============================================

LAB_ce32d10:
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce32e28,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32e2a,pc),r0
    mov.b r3,@(r0,r14)
    add 0xB9,r0
    mov.l @(PTR_ce32e3c,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32e40,pc),r2
    mov 0x00,r6
    mov 0x08,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32d36:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32d52
    mov.w @(DAT_ce32e2c,pc),r0
    mov r14,r4
    mov.l @(PTR_ce32e44,pc),r3
    mov.b r13,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32d52:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32d5a:
    mov.w @(DAT_ce32e2e,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x02,r4
    sts.l PR,@-r15
    mov.l @(r0,r14),r13
    mov.w @(DAT_ce32e30,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32e32,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.b @(0x6,r14),r0
    mov r3,r5
    mov r3,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32e34,pc),r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32e36,pc),r0
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.l @(PTR_ce32e48,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32e38,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32da4
    mov.l @(PTR_ce32e4c,pc),r3
    fmov.s @r3,fr3
    bra LAB_ce32dac
    fldi0 fr2

LAB_ce32da4:
    mov.l @(PTR_ce32e4c,pc),r3
    mova @(DAT_ce32e50,pc),r0
    fmov.s @r0,fr2
    fmov.s @r3,fr3

LAB_ce32dac:
    fadd fr2,fr3
    mov 0x34,r0
    mov.l @(PTR_ce32e58,pc),r3
    mov 0x16,r5
    mov 0x0E,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32e54,pc),r0
    fmov.s @r3,fr2
    fmov.s @r0,fr3
    mov 0x38,r0
    mov.l @(PTR_ce32e5c,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32e38,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32de2
    mova @(DAT_ce32e60,pc),r0
    bra LAB_ce32de6
    fmov.s @r0,fr3

LAB_ce32de2:
    mova @(DAT_ce32e64,pc),r0
    fmov.s @r0,fr3

LAB_ce32de6:
    mov 0x5C,r0
    mov.w @(DAT_ce32e38,pc),r2
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    add r13,r2
    mov.w @(DAT_ce32e38,pc),r0
    mov r13,r5
    mov.w @(DAT_ce32e3a,pc),r1
    mov r14,r4
    mov.b @(r0,r14),r0
    add r13,r1
    fldi1 fr3
    extu.b r0,r0
    fadd fr3,fr3
    xor 0x01,r0
    mov.l @(PTR_ce32e68,pc),r3
    mov.w r0,@r1
    mov.b r0,@r2
    mov 0x60,r0
    fmov fr4,@(r0,r13)
    mov 0x6C,r0
    fmov fr4,@(r0,r13)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fdiv fr3,fr2
    fmov fr2,@(r0,r13)
    mov 0x68,r0
    fmov fr4,@(r0,r13)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e28:
    #data 0x00c2
DAT_ce32e2a:
    #data 0x01f7
DAT_ce32e2c:
    #data 0x01d3
DAT_ce32e2e:
    #data 0x01c8
DAT_ce32e30:
    #data 0x03f8
DAT_ce32e32:
    #data 0x0328
DAT_ce32e34:
    #data 0x012c
DAT_ce32e36:
    #data 0x01ea
DAT_ce32e38:
    #data 0x01d2
DAT_ce32e3a:
    #data 0x0130
    #align4

PTR_ce32e3c:
    #data loc_8c0523d8
PTR_ce32e40:
    #data loc_8c08a55c
PTR_ce32e44:
    #data loc_8c05176e
PTR_ce32e48:
    #data loc_8c02fec4
PTR_ce32e4c:
    #data loc_8c26a524
DAT_ce32e50:
    #data 0xc1d55555
DAT_ce32e54:
    #data 0xc2f00000
PTR_ce32e58:
    #data loc_8c26a5c0
PTR_ce32e5c:
    #data loc_8c034e8c
DAT_ce32e60:
    #data 0x3dd55555
DAT_ce32e64:
    #data 0xbdd55555
PTR_ce32e68:
    #data loc_8c04cc1c

;=============================================

LAB_ce32e6c:
    mov.w @(DAT_ce32f96,pc),r0
    mov 0x02,r5
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r3
    mov.l r13,@-r15
    mov 0x01,r2
    sts.l PR,@-r15
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce32f98,pc),r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce32f9a,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32f9c,pc),r0
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r5,@(r0,r14)
    add 0x08,r0
    mov.b r5,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce32f10
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
    mov 0x5C,r1
    add r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
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
    bra LAB_ce32f8e
    fmov fr2,@(r0,r4)

LAB_ce32f10:
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    mov 0x01,r3
    mov.w @(DAT_ce32fa4,pc),r1
    add 0x01,r0
    mov r13,r6
    mov.b r0,@(0x6,r14)
    mov 0x22,r2
    mov.w @(DAT_ce32f9e,pc),r0
    add r4,r1
    mov r13,r5
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32fa0,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32fa2,pc),r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
    add 0x31,r0
    mov.b @(r0,r4),r0
    mov.w @(DAT_ce32fa6,pc),r2
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.l @(PTR_ce32fa8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32fa6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32f64
    mova @(DAT_ce32fac,pc),r0
    bra LAB_ce32f68
    fmov.s @r0,fr3

LAB_ce32f64:
    mova @(DAT_ce32fb0,pc),r0
    fmov.s @r0,fr3

LAB_ce32f68:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32fb4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov.l @(PTR_ce32fb8,pc),r3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x0A,r6
    lds.l @r15+,PR
    mov 0x01,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f8e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f96:
    #data 0x01c8
DAT_ce32f98:
    #data 0x03f8
DAT_ce32f9a:
    #data 0x0328
DAT_ce32f9c:
    #data 0x01ea
DAT_ce32f9e:
    #data 0x03f9
DAT_ce32fa0:
    #data 0x0327
DAT_ce32fa2:
    #data 0x01b4
DAT_ce32fa4:
    #data 0x0130
DAT_ce32fa6:
    #data 0x01d2
    #align4

PTR_ce32fa8:
    #data loc_8c02fec4
DAT_ce32fac:
    #data 0x40d55555
DAT_ce32fb0:
    #data 0xc0d55555
DAT_ce32fb4:
    #data 0xbf4db6db
PTR_ce32fb8:
    #data loc_8c034e8c

;=============================================

LAB_ce32fbc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33128,pc),r3
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
    mov.w @(DAT_ce33120,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3303e
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    fldi0 fr4
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r6
    mov.w @(DAT_ce33120,pc),r0
    mov 0x16,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33122,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3312c,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3303e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33044:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33128,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3305e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33130,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3305e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33066:
    mov r4,r3
    mov.l @(PTR_ce33134,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33078:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce33138,pc),r3
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
    mov.w @(DAT_ce33122,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33120,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3313c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33140,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33124,pc),r0
    mov 0x61,r2
    mov.l @(PTR_ce33144,pc),r3
    mov 0x1B,r6
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
    mov.l @(PTR_ce3312c,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce330ee:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33128,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33126,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3311a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r3,r6
    mov 0x05,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33126,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce33148,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3311a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33120:
    #data 0x041c
DAT_ce33122:
    #data 0x01f9
DAT_ce33124:
    #data 0x01a1
DAT_ce33126:
    #data 0x0141
    #align4

PTR_ce33128:
    #data loc_8c034dee
PTR_ce3312c:
    #data loc_8c034e8c
PTR_ce33130:
    #data loc_8c051648
PTR_ce33134:
    #data PTR_ce33bd8
PTR_ce33138:
    #data loc_8c035162
PTR_ce3313c:
    #data loc_8c05218a
PTR_ce33140:
    #data loc_8c05115a
PTR_ce33144:
    #data loc_8c2896b0
PTR_ce33148:
    #data loc_8c08a55c

;=============================================

LAB_ce3314c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33290,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33288,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33188
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33288,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33294,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33298,pc),r0
    mov.l @(PTR_ce3329c,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce33188:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33190:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33290,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33288,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce331c0
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r3,r6
    mov 0x06,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33288,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x16,r0
    mov.l @(PTR_ce332a0,pc),r3
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce331c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce331c6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33290,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce331f0
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce332a4,pc),r3
    mov 0x1C,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce331f0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce331f6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33290,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33210
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce332a8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33210:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33218:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3326a
    mov.b @(0x6,r14),r0
    mov 0x56,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce3328a,pc),r0
    mov 0x07,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce332ac,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3328c,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.w @(DAT_ce3328e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce332a4,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3326a:
    mov.l @(PTR_ce33290,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce332b4
    mov.l @(PTR_ce332b0,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce332a8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33288:
    #data 0x0141
DAT_ce3328a:
    #data 0x01a1
DAT_ce3328c:
    #data 0x01f9
DAT_ce3328e:
    #data 0x041c
    #align4

PTR_ce33290:
    #data loc_8c034dee
DAT_ce33294:
    #data 0x42695555
DAT_ce33298:
    #data 0x431a4924
PTR_ce3329c:
    #data loc_8c050ea4
PTR_ce332a0:
    #data loc_8c08a55c
PTR_ce332a4:
    #data loc_8c034e8c
PTR_ce332a8:
    #data loc_8c051648
PTR_ce332ac:
    #data loc_8c2896b0
PTR_ce332b0:
    #data loc_8c035162

;=============================================

LAB_ce332b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce332ba:
    mov r4,r3
    mov.l @(PTR_ce33400,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce332cc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce33404,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce333f8,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33408,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce333fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce332fc
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce332fc:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3340c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x50,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33410,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce333fc,pc),r0
    mov 0x05,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33414,pc),r3
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
    mov.l @(PTR_ce33418,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33346:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3341c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce33420,pc),r3
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
    bt LAB_ce333ae
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33424,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33418,pc),r2
    mov r14,r4
    mov 0x06,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce333ae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce333b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3341c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce333ce
    lds.l @r15+,PR
    mov.l @(PTR_ce33428,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce333ce:
    mov.w @(DAT_ce333fe,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce333da
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce333da:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce333e0:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce333f8,pc),r1
    mov.l @(PTR_ce3342c,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce333f8:
    #data 0x01f9
DAT_ce333fa:
    #data 0x01d2
DAT_ce333fc:
    #data 0x01a1
DAT_ce333fe:
    #data 0x0141
    #align4

PTR_ce33400:
    #data PTR_ce33bf0
PTR_ce33404:
    #data loc_8c035162
DAT_ce33408:
    #data 0x41f00000
DAT_ce3340c:
    #data 0x40892492
DAT_ce33410:
    #data 0xbf4db6db
PTR_ce33414:
    #data loc_8c2896b0
PTR_ce33418:
    #data loc_8c034e8c
PTR_ce3341c:
    #data loc_8c034dee
PTR_ce33420:
    #data loc_8c052ce2
PTR_ce33424:
    #data loc_8c0511b4
PTR_ce33428:
    #data loc_8c051854
PTR_ce3342c:
    #data PTR_ce33bfc

;=============================================

LAB_ce33430:
    mov.w @(DAT_ce33520,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33522,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce3347c
    mov.w @(DAT_ce33524,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3347c
    mov.w @(DAT_ce33526,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3347c
    mov.l @(PTR_ce33530,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3347c
    mov r0,r4
    mov.w @(DAT_ce33528,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3347c:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33484:
    rts
    mov 0x00,r0

LAB_ce33488:
    mov.w @(DAT_ce33520,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33522,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce334e0
    mov.w @(DAT_ce33524,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce334e0
    mov.w @(DAT_ce33526,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce334e0
    mova @(DAT_ce33534,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce334e0
    mov.l @(PTR_ce33530,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce334e0
    mov r0,r4
    mov.w @(DAT_ce33528,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce334e0:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce334e8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33538,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3352a,pc),r0
    mov.w @(DAT_ce3352c,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce3352e,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    mov r14,r4
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce33528,pc),r0
    mov.l @(PTR_ce3353c,pc),r1
    mov.b @(r0,r14),r0
    lds.l @r15+,PR
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33520:
    #data 0x01fa
DAT_ce33522:
    #data 0x0c00
DAT_ce33524:
    #data 0x01fe
DAT_ce33526:
    #data 0x01a3
DAT_ce33528:
    #data 0x01f7
DAT_ce3352a:
    #data 0x01c8
DAT_ce3352c:
    #data 0x0130
DAT_ce3352e:
    #data 0x01d2
    #align4

PTR_ce33530:
    #data loc_8c045790
DAT_ce33534:
    #data 0x43092492
PTR_ce33538:
    #data loc_8c056f2a
PTR_ce3353c:
    #data PTR_ce33c0c

;=============================================

LAB_ce33540:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce3357e
    mov.w @(DAT_ce3367a,pc),r0
    mov.w @(DAT_ce3367c,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce3367a,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce3367e,pc),r0
    mov.w @(DAT_ce3367c,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.w @(DAT_ce3367a,pc),r2
    mov.b @(r0,r4),r0
    add r4,r1
    add r4,r2
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce3357e:
    mova @(DAT_ce33688,pc),r0
    mov.l @(PTR_ce33690,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce3368c,pc),r0
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
    mov.w @(DAT_ce33680,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33694,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce335b2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    fldi0 fr4
    mov 0x68,r0
    fmov fr4,fr5
    mov r4,r14
    fmov fr5,@(r0,r14)
    mov 0x60,r0
    fmov fr5,@(r0,r14)
    mova @(DAT_ce33698,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33682,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bf LAB_ce335f2
    mov.w @(DAT_ce3367a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce335e4
    mova @(DAT_ce3369c,pc),r0
    bra LAB_ce335e8
    fmov.s @r0,fr5

LAB_ce335e4:
    mova @(DAT_ce336a0,pc),r0
    fmov.s @r0,fr5

LAB_ce335e8:
    mov.w @(DAT_ce33682,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce335f2
    fneg fr5

LAB_ce335f2:
    mov 0x5C,r0
    fmov fr5,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce3362c
    mov.w @(DAT_ce3367a,pc),r0
    mov.w @(DAT_ce3367c,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce3367a,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce3367e,pc),r0
    mov.w @(DAT_ce3367c,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.w @(DAT_ce3367a,pc),r2
    mov.b @(r0,r4),r0
    add r4,r1
    add r4,r2
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce3362c:
    mova @(DAT_ce33688,pc),r0
    mov.l @(PTR_ce33690,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce3368c,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33680,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33694,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3365e:
    mov.w @(DAT_ce33684,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r2
    mov r14,r4
    mov.l @(PTR_ce336a4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3367a:
    #data 0x01d2
DAT_ce3367c:
    #data 0x0130
DAT_ce3367e:
    #data 0x01c8
DAT_ce33680:
    #data 0x01a0
DAT_ce33682:
    #data 0x01d3
DAT_ce33684:
    #data 0x01ea
    #align4

DAT_ce33688:
    #data 0x413aaaaa
DAT_ce3368c:
    #data 0x433c9249
PTR_ce33690:
    #data loc_8c103660
PTR_ce33694:
    #data loc_8c034e8c
DAT_ce33698:
    #data 0xbf092492
DAT_ce3369c:
    #data 0x40d55555
DAT_ce336a0:
    #data 0xc0d55555
PTR_ce336a4:
    #data PTR_ce33c14

;=============================================

LAB_ce336a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce337c8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce336e2
    mov.w @(DAT_ce337bc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce336ec
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce337be,pc),r0
    mov 0x20,r2
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.l @(PTR_ce337cc,pc),r3
    mov.b r2,@(r0,r4)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce336e2:
    lds.l @r15+,PR
    mov.l @(PTR_ce337d0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce336ec:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce336f2:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce337c8,pc),r3
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
    bt LAB_ce33746
    lds.l @r15+,PR
    mov.l @(PTR_ce337d4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33746:
    mov.w @(DAT_ce337bc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33766
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce337be,pc),r0
    mov 0x21,r2
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)

LAB_ce33766:
    mov.w @(DAT_ce337c0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33796
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce337c2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33796
    lds.l @r15+,PR
    mov.l @(PTR_ce337d0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33796:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3379c:
    mov.w @(DAT_ce337c4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    and 0x3F,r0
    cmp/eq 0x02,r0
    bt LAB_ce337b8
    mov.w @(DAT_ce337be,pc),r0
    mov r14,r5
    mov.l @(PTR_ce337d8,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce337b8:
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce337bc:
    #data 0x0141
DAT_ce337be:
    #data 0x01c8
DAT_ce337c0:
    #data 0x041c
DAT_ce337c2:
    #data 0x0150
DAT_ce337c4:
    #data 0x01f7
    #align4

PTR_ce337c8:
    #data loc_8c034dee
PTR_ce337cc:
    #data loc_8c0423fc
PTR_ce337d0:
    #data loc_8c051648
PTR_ce337d4:
    #data loc_8c05176e
PTR_ce337d8:
    #data loc_8c04cc1c

;=============================================

LAB_ce337dc:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce338b4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce337fc
    cmp/eq 0x01,r0
    bt LAB_ce33804
    cmp/eq 0x02,r0
    bt LAB_ce3380c
    bra LAB_ce33812
    nop

LAB_ce337fc:
    mov.w @(DAT_ce338b6,pc),r0
    mov 0x03,r3
    bra LAB_ce33812
    mov.b r3,@(r0,r4)

LAB_ce33804:
    mov.w @(DAT_ce338b6,pc),r0
    mov 0x05,r1
    bra LAB_ce33812
    mov.b r1,@(r0,r4)

LAB_ce3380c:
    mov.w @(DAT_ce338b6,pc),r0
    mov 0x04,r2
    mov.b r2,@(r0,r4)

LAB_ce33812:
    mov.l @(PTR_ce338bc,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33818:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce338b4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33838
    cmp/eq 0x01,r0
    bt LAB_ce33840
    cmp/eq 0x02,r0
    bt LAB_ce33848
    bra LAB_ce3384e
    nop

LAB_ce33838:
    mov.w @(DAT_ce338b6,pc),r0
    mov 0x03,r3
    bra LAB_ce3384e
    mov.b r3,@(r0,r4)

LAB_ce33840:
    mov.w @(DAT_ce338b6,pc),r0
    mov 0x05,r1
    bra LAB_ce3384e
    mov.b r1,@(r0,r4)

LAB_ce33848:
    mov.w @(DAT_ce338b6,pc),r0
    mov 0x04,r2
    mov.b r2,@(r0,r4)

LAB_ce3384e:
    mov.l @(PTR_ce338bc,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33854:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce338b4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33876
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce3387c
    cmp/eq 0x02,r0
    bt LAB_ce33882
    bra LAB_ce3388c
    nop

LAB_ce33876:
    mov.w @(DAT_ce338b6,pc),r0
    bra LAB_ce33888
    mov.b r5,@(r0,r4)

LAB_ce3387c:
    mov.w @(DAT_ce338b6,pc),r0
    bra LAB_ce33888
    mov.b r6,@(r0,r4)

LAB_ce33882:
    mov.w @(DAT_ce338b6,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce33888:
    mov.w @(DAT_ce338b8,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce3388c:
    mov.l @(PTR_ce338bc,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce33892:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce338b4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce338c0
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce338c6
    cmp/eq 0x02,r0
    bt LAB_ce338cc
    bra LAB_ce338d6
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce338b4:
    #data 0x04c9
DAT_ce338b6:
    #data 0x01e9
DAT_ce338b8:
    #data 0x01a3
    #align4

PTR_ce338bc:
    #data loc_8c0530d8

;=============================================

LAB_ce338c0:
    mov.w @(DAT_ce338dc,pc),r0
    bra LAB_ce338d2
    mov.b r5,@(r0,r4)

LAB_ce338c6:
    mov.w @(DAT_ce338dc,pc),r0
    bra LAB_ce338d2
    mov.b r6,@(r0,r4)

LAB_ce338cc:
    mov.w @(DAT_ce338dc,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce338d2:
    mov.w @(DAT_ce338de,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce338d6:
    mov.l @(PTR_ce338e0,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce338dc:
    #data 0x01e9
DAT_ce338de:
    #data 0x01a3
    #align4

PTR_ce338e0:
    #data loc_8c0530d8
DAT_ce338e4:
    #data 0x0201
    #data 0x0200
DAT_ce338e8:
    #data 0x02ff
    #data 0x0201
DAT_ce338ec:
    #data 0xffff
    #data 0x02ff
DAT_ce338f0:
    #data 0x0201
    #data 0x0201
DAT_ce338f4:
    #data 0x02ff
    #data 0x02ff
DAT_ce338f8:
    #data 0xffff
    #data 0xffff
DAT_ce338fc:
    #data 0x0201
    #data 0x0200
DAT_ce33900:
    #data 0x02ff
    #data 0x0201
DAT_ce33904:
    #data 0xffff
    #data 0x02ff
DAT_ce33908:
    #data 0x0201
    #data 0x0201
DAT_ce3390c:
    #data 0x02ff
    #data 0x02ff
DAT_ce33910:
    #data 0xffff
    #data 0xffff
DAT_ce33914:
    #data 0x0201
    #data 0x0200
DAT_ce33918:
    #data 0x02ff
    #data 0x0201
DAT_ce3391c:
    #data 0xffff
    #data 0x02ff
DAT_ce33920:
    #data 0x0201
    #data 0x0201
DAT_ce33924:
    #data 0x02ff
    #data 0x02ff
DAT_ce33928:
    #data 0xffff
    #data 0xffff
DAT_ce3392c:
    #data 0x0005
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0400
    #data 0x1400
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33940:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0060
DAT_ce33950:
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
DAT_ce33964:
    #data 0x0003
    #data 0x9100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33974:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce33984:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0060
    #data 0x0003
    #data 0xa100
    #data 0x000b
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce339a4:
    #data 0x0004
    #data 0x000a
    #data 0x0006
    #data 0x0000
    #data 0x0060
    #data 0x0000
    #align4
    
PTR_ce339b0:
    #data LAB_ce30504
PTR_ce339b4:
    #data LAB_ce3001c
PTR_ce339b8:
    #data LAB_ce30508
PTR_ce339bc:
    #data LAB_ce30c2e
PTR_ce339c0:
    #data LAB_ce312d8
PTR_ce339c4:
    #data LAB_ce3147c
PTR_ce339c8:
    #data LAB_ce31594
PTR_ce339cc:
    #data LAB_ce315da
PTR_ce339d0:
    #data LAB_ce316bc
PTR_ce339d4:
    #data LAB_ce333e0
PTR_ce339d8:
    #data LAB_ce334e8
PTR_ce339dc:
    #data LAB_ce3365e
PTR_ce339e0:
    #data LAB_ce3379c
PTR_ce339e4:
    #data LAB_ce30414
PTR_ce339e8:
    #data LAB_ce332ba
PTR_ce339ec:
    #data LAB_ce31210
PTR_ce339f0:
    #data LAB_ce337dc
PTR_ce339f4:
    #data LAB_ce33818
PTR_ce339f8:
    #data LAB_ce33854
PTR_ce339fc:
    #data LAB_ce33892
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce33a20:
    #data LAB_ce3051c
PTR_ce33a24:
    #data LAB_ce30990
PTR_ce33a28:
    #data LAB_ce309b8
PTR_ce33a2c:
    #data LAB_ce3051c
PTR_ce33a30:
    #data LAB_ce30c50
PTR_ce33a34:
    #data LAB_ce30fcc
PTR_ce33a38:
    #data LAB_ce30fb6
PTR_ce33a3c:
    #data LAB_ce30c42
PTR_ce33a40:
    #data LAB_ce30d5c
PTR_ce33a44:
    #data LAB_ce30d8c
PTR_ce33a48:
    #data LAB_ce30dae
PTR_ce33a4c:
    #data LAB_ce30dbc
PTR_ce33a50:
    #data LAB_ce30ec0
PTR_ce33a54:
    #data LAB_ce30f20
PTR_ce33a58:
    #data FUN_ce30f94
PTR_ce33a5c:
    #data LAB_ce310fc
PTR_ce33a60:
    #data LAB_ce311a0
PTR_ce33a64:
    #data LAB_ce312ea
PTR_ce33a68:
    #data LAB_ce3138a
PTR_ce33a6c:
    #data LAB_ce313e4
PTR_ce33a70:
    #data FUN_ce3145a
PTR_ce33a74:
    #data LAB_ce3148e
PTR_ce33a78:
    #data LAB_ce314f4
PTR_ce33a7c:
    #data FUN_ce31572
PTR_ce33a80:
    #data LAB_ce315a6
PTR_ce33a84:
    #data LAB_ce315ba
PTR_ce33a88:
    #data LAB_ce31606
PTR_ce33a8c:
    #data LAB_ce316a2
PTR_ce33a90:
    #data LAB_ce31688
PTR_ce33a94:
    #data LAB_ce316a2
PTR_ce33a98:
    #data LAB_ce316a2
PTR_ce33a9c:
    #data LAB_ce31638
PTR_ce33aa0:
    #data LAB_ce31682
PTR_ce33aa4:
    #data LAB_ce316d0
PTR_ce33aa8:
    #data LAB_ce317c4
PTR_ce33aac:
    #data LAB_ce31ae8
PTR_ce33ab0:
    #data LAB_ce31d42
PTR_ce33ab4:
    #data LAB_ce31fb8
PTR_ce33ab8:
    #data LAB_ce32352
PTR_ce33abc:
    #data LAB_ce3270a
PTR_ce33ac0:
    #data LAB_ce316d0
PTR_ce33ac4:
    #data LAB_ce33218
PTR_ce33ac8:
    #data LAB_ce316d0
PTR_ce33acc:
    #data LAB_ce316d0
PTR_ce33ad0:
    #data LAB_ce32ad2
PTR_ce33ad4:
    #data LAB_ce316d0
PTR_ce33ad8:
    #data LAB_ce316d0
PTR_ce33adc:
    #data LAB_ce316d0
PTR_ce33ae0:
    #data LAB_ce33066
PTR_ce33ae4:
    #data LAB_ce316e2
PTR_ce33ae8:
    #data LAB_ce31784
PTR_ce33aec:
    #data LAB_ce317d6
PTR_ce33af0:
    #data LAB_ce3193c
PTR_ce33af4:
    #data FUN_ce31990
PTR_ce33af8:
    #data LAB_ce319a0
DAT_ce33afc:
    #data 0x41200000
DAT_ce33b00:
    #data 0xbf200000
DAT_ce33b04:
    #data 0x41ab6db6
DAT_ce33b08:
    #data 0xbf892492
    #data 0x41555555
    #data 0xbed55555
    #data 0x41f00000
    #data 0xbf892492
DAT_ce33b1c:
    #data 0x00000033
    #data 0x00000034
    #data 0x00000033
    #data 0x00000034
    #data 0x00000037
    #data 0x00000038
PTR_ce33b34:
    #data LAB_ce31afa
PTR_ce33b38:
    #data LAB_ce31c06
PTR_ce33b3c:
    #data FUN_ce31d20
DAT_ce33b40:
    #data 0x40555555
DAT_ce33b44:
    #data 0x42092492
    #data 0x41555555
    #data 0x41ab6db6
PTR_ce33b50:
    #data LAB_ce31d58
PTR_ce33b54:
    #data LAB_ce31e20
PTR_ce33b58:
    #data LAB_ce31e90
PTR_ce33b5c:
    #data LAB_ce31f28
PTR_ce33b60:
    #data FUN_ce31f96
PTR_ce33b64:
    #data LAB_ce31fce
PTR_ce33b68:
    #data LAB_ce320b6
PTR_ce33b6c:
    #data LAB_ce3217c
PTR_ce33b70:
    #data LAB_ce3229c
PTR_ce33b74:
    #data FUN_ce32330
PTR_ce33b78:
    #data LAB_ce32364
PTR_ce33b7c:
    #data LAB_ce32462
PTR_ce33b80:
    #data LAB_ce324d2
PTR_ce33b84:
    #data LAB_ce32574
PTR_ce33b88:
    #data LAB_ce32676
DAT_ce33b8c:
    #data 0x00000047
    #data 0x00000048
    #data 0x00000047
    #data 0x00000048
    #data 0x0000004b
    #data 0x0000004c
    #data 0x00000063
PTR_ce33ba8:
    #data LAB_ce3275a
PTR_ce33bac:
    #data LAB_ce32888
PTR_ce33bb0:
    #data LAB_ce32a06
PTR_ce33bb4:
    #data LAB_ce32a84
DAT_ce33bb8:
    #data 0x00000600
PTR_ce33bbc:
    #data LAB_ce32ae4
PTR_ce33bc0:
    #data LAB_ce32b52
PTR_ce33bc4:
    #data LAB_ce32c08
PTR_ce33bc8:
    #data LAB_ce32d5a
PTR_ce33bcc:
    #data LAB_ce32e6c
PTR_ce33bd0:
    #data LAB_ce32fbc
PTR_ce33bd4:
    #data FUN_ce33044
PTR_ce33bd8:
    #data LAB_ce33078
PTR_ce33bdc:
    #data LAB_ce330ee
PTR_ce33be0:
    #data LAB_ce3314c
PTR_ce33be4:
    #data LAB_ce33190
PTR_ce33be8:
    #data LAB_ce331c6
PTR_ce33bec:
    #data FUN_ce331f6
PTR_ce33bf0:
    #data LAB_ce332cc
PTR_ce33bf4:
    #data LAB_ce33346
PTR_ce33bf8:
    #data LAB_ce333b4
PTR_ce33bfc:
    #data LAB_ce33430
PTR_ce33c00:
    #data LAB_ce33484
PTR_ce33c04:
    #data LAB_ce33488
PTR_ce33c08:
    #data LAB_ce33430
PTR_ce33c0c:
    #data LAB_ce33540
PTR_ce33c10:
    #data LAB_ce335b2
PTR_ce33c14:
    #data LAB_ce336a8
PTR_ce33c18:
    #data LAB_ce336f2
PTR_ce33c1c:
    #data LAB_ce336a8
