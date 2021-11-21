;=============================================
; S_PL1E: Gouki Program                      +
;=============================================

#symbol loc_8c054508 0x8C054508
#symbol loc_8c054b34 0x8C054B34
#symbol loc_8c05496c 0x8C05496C
#symbol loc_8c054d04 0x8C054D04
#symbol loc_8c053e00 0x8C053E00
#symbol loc_8c0542e0 0x8C0542E0
#symbol loc_8c054e58 0x8C054E58
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c0530d8 0x8C0530D8
#symbol loc_8c045790 0x8C045790
#symbol loc_8c0522e0 0x8C0522E0
#symbol loc_8c055cd4 0x8C055CD4
#symbol loc_8c129728 0x8C129728
#symbol loc_8c0555c8 0x8C0555C8
#symbol loc_8c054d1c 0x8C054D1C
#symbol loc_8c054da0 0x8C054DA0
#symbol loc_8c052b4c 0x8C052B4C
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c2896b0 0x8C2896B0
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c0511e2 0x8C0511E2
#symbol loc_8c052c84 0x8C052C84
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c051648 0x8C051648
#symbol loc_8c052d44 0x8C052D44
#symbol loc_8c0511b4 0x8C0511B4
#symbol loc_8c050084 0x8C050084
#symbol loc_8c04ff88 0x8C04FF88
#symbol loc_8c04fea8 0x8C04FEA8
#symbol loc_8c050048 0x8C050048
#symbol loc_8c052ce2 0x8C052CE2
#symbol loc_8c052dac 0x8C052DAC
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c0ddc3c 0x8C0DDC3C
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c05115a 0x8C05115A
#symbol loc_8c08fe50 0x8C08FE50
#symbol loc_8c053082 0x8C053082
#symbol loc_8c0dde08 0x8C0DDE08
#symbol loc_8c050834 0x8C050834
#symbol loc_8c090b14 0x8C090B14
#symbol loc_8c0ddb1c 0x8C0DDB1C
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c103660 0x8C103660
#symbol loc_8c0523d8 0x8C0523D8
#symbol loc_8c030fec 0x8C030FEC
#symbol loc_8c26a8ec 0x8C26A8EC
#symbol loc_8c0fda40 0x8C0FDA40
#symbol loc_8c05a49c 0x8C05A49C
#symbol loc_8c0dd938 0x8C0DD938
#symbol loc_8c09042c 0x8C09042C
#symbol loc_8c055d54 0x8C055D54
#symbol loc_8c035162 0x8C035162
#symbol loc_8c050ea4 0x8C050EA4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c100672 0x8C100672
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c0423fc 0x8C0423FC
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c051854 0x8C051854

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce3001c,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce30020,pc),r7
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3001c:
    #data 0x0428
    #align4

PTR_ce30020:
    #data PTR_ce34698

;=============================================

LAB_ce30024:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3010c,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    mov.l @(PTR_ce30110,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    mov.l @(PTR_ce30114,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    mov.l @(PTR_ce30118,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce30666
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce30380
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce3040c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce30596
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce30182
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce30550
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce3060a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce30212
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce302fe
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce30124
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce301ca
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce30284
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce304c4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce30750
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce306ae
    mov r14,r4
    tst r0,r0
    bf LAB_ce30104
    bsr FUN_ce306ee
    mov r14,r4
    tst r0,r0
    bf LAB_ce30104
    mov.l @(PTR_ce3011c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30120,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30104:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

    #align4
PTR_ce3010c:
    #data loc_8c054508
PTR_ce30110:
    #data loc_8c054b34
PTR_ce30114:
    #data loc_8c05496c
PTR_ce30118:
    #data loc_8c054d04
PTR_ce3011c:
    #data loc_8c053e00
PTR_ce30120:
    #data loc_8c0542e0

;=============================================

FUN_ce30124:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30250,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30252,pc),r6
    add r14,r3
    mov.l @(PTR_ce30260,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce30264,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3014c
    mov.l @r15,r2
    mov.b @(0x2,r2),r0
    tst r0,r0
    bt LAB_ce30156

LAB_ce3014c:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30156:
    mov.w @(DAT_ce30252,pc),r5
    mov.l @(PTR_ce30268,pc),r3
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
    mov.w @(DAT_ce30254,pc),r0
    mov.l @(PTR_ce3026c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30182:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30270,pc),r5
    mov.w @(DAT_ce30256,pc),r6
    mov.l @(PTR_ce30264,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301a0
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301a0:
    mov.w @(DAT_ce30256,pc),r5
    mov.l @(PTR_ce30268,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.w @(DAT_ce30254,pc),r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3026c,pc),r3
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

FUN_ce301ca:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30274,pc),r5
    mov.w @(DAT_ce30258,pc),r6
    mov.l @(PTR_ce30264,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301e8
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301e8:
    mov.w @(DAT_ce30258,pc),r5
    mov.l @(PTR_ce30268,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30254,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce3026c,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
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

FUN_ce30212:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30278,pc),r5
    mov.w @(DAT_ce3025a,pc),r6
    mov.l @(PTR_ce30264,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30234
    mov.l @(PTR_ce3027c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bf/s LAB_ce3023c
    mov r0,r5

LAB_ce30234:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3023c:
    mov.w @(DAT_ce3025e,pc),r0
    mov.w @(DAT_ce3025c,pc),r2
    mov.l @(PTR_ce30280,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30250:
    #data 0x02a4
DAT_ce30252:
    #data 0x0364
DAT_ce30254:
    #data 0x01e9
DAT_ce30256:
    #data 0x036c
DAT_ce30258:
    #data 0x0374
DAT_ce3025a:
    #data 0x03c4
DAT_ce3025c:
    #data 0x00c4
DAT_ce3025e:
    #data 0x01f7
    #align4

PTR_ce30260:
    #data DAT_ce345b0
PTR_ce30264:
    #data loc_8c054e58
PTR_ce30268:
    #data loc_8c055c3a
PTR_ce3026c:
    #data loc_8c0530d8
PTR_ce30270:
    #data DAT_ce345c0
PTR_ce30274:
    #data DAT_ce345d0
PTR_ce30278:
    #data DAT_ce34672
PTR_ce3027c:
    #data loc_8c045790
PTR_ce30280:
    #data loc_8c0522e0

;=============================================

FUN_ce30284:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30368,pc),r5
    mov.w @(DAT_ce3035c,pc),r6
    mov.l @(PTR_ce3036c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302c6
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce302b6
    mov.w @(DAT_ce3035e,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    mova @(DAT_ce30370,pc),r0
    fsub fr2,fr1
    fmov.s @r0,fr2
    fcmp/gt fr1,fr2
    bt LAB_ce302c6

LAB_ce302b6:
    mov.w @(DAT_ce30360,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce302d4
    mov.w @(DAT_ce30362,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce302ce

LAB_ce302c6:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302ce:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce302d4:
    mov.w @(DAT_ce3035c,pc),r5
    mov.l @(PTR_ce30374,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30364,pc),r0
    mov 0x03,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30378,pc),r3
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

FUN_ce302fe:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3037c,pc),r5
    mov.w @(DAT_ce30366,pc),r6
    mov.l @(PTR_ce3036c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30324
    mov.w @(DAT_ce30360,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30332
    mov.w @(DAT_ce30362,pc),r0
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
    mov.w @(DAT_ce30366,pc),r5
    mov.l @(PTR_ce30374,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30364,pc),r0
    mov 0x04,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30378,pc),r3
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

DAT_ce3035c:
    #data 0x037c
DAT_ce3035e:
    #data 0x041c
DAT_ce30360:
    #data 0x01fc
DAT_ce30362:
    #data 0x01d4
DAT_ce30364:
    #data 0x01e9
DAT_ce30366:
    #data 0x0384
    #align4

PTR_ce30368:
    #data DAT_ce345e0
PTR_ce3036c:
    #data loc_8c054e58
DAT_ce30370:
    #data 0x42cdb6db
PTR_ce30374:
    #data loc_8c055c3a
PTR_ce30378:
    #data loc_8c0530d8
PTR_ce3037c:
    #data DAT_ce345f0

;=============================================

FUN_ce30380:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce304a8,pc),r5
    mov r4,r14
    mov.l @(PTR_ce304ac,pc),r3
    mov.w @(DAT_ce30498,pc),r6
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303ba
    mov.l @(PTR_ce304b0,pc),r2
    mov r15,r6
    mov.w @(DAT_ce3049a,pc),r5
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303be
    mov.l @(PTR_ce304b0,pc),r2
    mov 0x60,r5
    mov r15,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303be

LAB_ce303ba:
    bra LAB_ce30402
    mov 0x00,r0

LAB_ce303be:
    mov.w @(DAT_ce30498,pc),r5
    mov.l @(PTR_ce304b4,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3049c,pc),r4
    mov 0x00,r5
    mov.l @(PTR_ce304b8,pc),r13
    mov 0x08,r6
    jsr @r13
    add r14,r4
    mov.w @(DAT_ce3049e,pc),r4
    mov 0x00,r5
    mov 0x08,r6
    jsr @r13
    add r14,r4
    mov.w @(DAT_ce304a0,pc),r4
    mov 0x00,r5
    mov 0x08,r6
    jsr @r13
    add r14,r4
    mov.w @(DAT_ce304a2,pc),r0
    mov 0x06,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce304bc,pc),r3
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov 0x01,r0

LAB_ce30402:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3040c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce304c0,pc),r5
    mov r4,r14
    mov.l @(PTR_ce304ac,pc),r3
    mov.w @(DAT_ce304a4,pc),r6
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30446
    mov.l @(PTR_ce304b0,pc),r2
    mov r15,r6
    mov.w @(DAT_ce3049a,pc),r5
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3044a
    mov.l @(PTR_ce304b0,pc),r2
    mov 0x60,r5
    mov r15,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3044a

LAB_ce30446:
    bra LAB_ce3048e
    mov 0x00,r0

LAB_ce3044a:
    mov.w @(DAT_ce304a4,pc),r5
    mov.l @(PTR_ce304b4,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3049c,pc),r4
    mov 0x00,r5
    mov.l @(PTR_ce304b8,pc),r13
    mov 0x08,r6
    jsr @r13
    add r14,r4
    mov.w @(DAT_ce3049e,pc),r4
    mov 0x00,r5
    mov 0x08,r6
    jsr @r13
    add r14,r4
    mov.w @(DAT_ce304a0,pc),r4
    mov 0x00,r5
    mov 0x08,r6
    jsr @r13
    add r14,r4
    mov.w @(DAT_ce304a2,pc),r0
    mov 0x07,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce304bc,pc),r3
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov 0x01,r0

LAB_ce3048e:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30498:
    #data 0x0394
DAT_ce3049a:
    #data 0x0300
DAT_ce3049c:
    #data 0x038c
DAT_ce3049e:
    #data 0x03b4
DAT_ce304a0:
    #data 0x03cc
DAT_ce304a2:
    #data 0x01e9
DAT_ce304a4:
    #data 0x039c
    #align4

PTR_ce304a8:
    #data DAT_ce34600
PTR_ce304ac:
    #data loc_8c054e58
PTR_ce304b0:
    #data loc_8c055cd4
PTR_ce304b4:
    #data loc_8c055c3a
PTR_ce304b8:
    #data loc_8c129728
PTR_ce304bc:
    #data loc_8c0530d8
PTR_ce304c0:
    #data DAT_ce34610

;=============================================

FUN_ce304c4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305d0,pc),r5
    mov.w @(DAT_ce305be,pc),r6
    mov.l @(PTR_ce305d4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30502
    mov.w @(DAT_ce305c0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce304f0
    mov.w @(DAT_ce305c2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30502
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce304f0:
    mov.w @(DAT_ce305c4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce305d8,pc),r0
    fsub fr3,fr2
    fmov.s @r0,fr3
    fcmp/gt fr2,fr3
    bf LAB_ce3050a

LAB_ce30502:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3050a:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce30526
    mov.w @(DAT_ce305c4,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    mova @(DAT_ce305d8,pc),r0
    fsub fr2,fr1
    fmov.s @r0,fr2
    fcmp/gt fr1,fr2
    bt LAB_ce30548

LAB_ce30526:
    mov.w @(DAT_ce305be,pc),r5
    mov.l @(PTR_ce305dc,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce305c6,pc),r0
    mov 0x0E,r2
    mov.l @(PTR_ce305e0,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)

LAB_ce30548:
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30550:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305e4,pc),r5
    mov.w @(DAT_ce305c8,pc),r6
    mov.l @(PTR_ce305d4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30570
    mov.w @(DAT_ce305ca,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30578

LAB_ce30570:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30578:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0D,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce305c6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce305e0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30596:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305e8,pc),r5
    mov.w @(DAT_ce305cc,pc),r6
    mov.l @(PTR_ce305d4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce305b6
    mov.w @(DAT_ce305ca,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce305ec

LAB_ce305b6:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305be:
    #data 0x03bc
DAT_ce305c0:
    #data 0x01fc
DAT_ce305c2:
    #data 0x01d4
DAT_ce305c4:
    #data 0x041c
DAT_ce305c6:
    #data 0x01e9
DAT_ce305c8:
    #data 0x038c
DAT_ce305ca:
    #data 0x040c
DAT_ce305cc:
    #data 0x03b4
    #align4

PTR_ce305d0:
    #data DAT_ce34620
PTR_ce305d4:
    #data loc_8c054e58
DAT_ce305d8:
    #data 0x42cdb6db
PTR_ce305dc:
    #data loc_8c055c3a
PTR_ce305e0:
    #data loc_8c0530d8
PTR_ce305e4:
    #data DAT_ce34630
PTR_ce305e8:
    #data DAT_ce34640

;=============================================

LAB_ce305ec:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0B,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30708,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30714,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3060a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30718,pc),r5
    mov.w @(DAT_ce3070a,pc),r6
    mov.l @(PTR_ce3071c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3063a
    mov.w @(DAT_ce3070c,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce3063a
    mov.w @(DAT_ce3070e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30648
    mov.w @(DAT_ce30710,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30642

LAB_ce3063a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30642:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30648:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30708,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30714,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30666:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30720,pc),r5
    mov.w @(DAT_ce30712,pc),r6
    mov.l @(PTR_ce30724,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30688
    mov.w @(DAT_ce3070c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    mov 0x03,r2
    cmp/ge r2,r3
    bt LAB_ce30690

LAB_ce30688:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30690:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30708,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30714,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce306ae:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30728,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce306c6
    mov.w @(DAT_ce3070c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce306ce

LAB_ce306c6:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce306ce:
    mov.w @(DAT_ce30708,pc),r0
    mov 0x10,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30714,pc),r3
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

FUN_ce306ee:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3072c,pc),r3
    jsr @r3
    mov 0x0F,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30730
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30708:
    #data 0x01e9
DAT_ce3070a:
    #data 0x03a4
DAT_ce3070c:
    #data 0x040c
DAT_ce3070e:
    #data 0x01fc
DAT_ce30710:
    #data 0x01d4
DAT_ce30712:
    #data 0x03ac
    #align4

PTR_ce30714:
    #data loc_8c0530d8
PTR_ce30718:
    #data DAT_ce34650
PTR_ce3071c:
    #data loc_8c054e58
PTR_ce30720:
    #data DAT_ce34660
PTR_ce30724:
    #data loc_8c0555c8
PTR_ce30728:
    #data loc_8c054d1c
PTR_ce3072c:
    #data loc_8c054da0

;=============================================

LAB_ce30730:
    mov.w @(DAT_ce30840,pc),r0
    mov 0x0F,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30858,pc),r3
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

FUN_ce30750:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3085c,pc),r5
    mov.w @(DAT_ce30842,pc),r6
    mov.l @(PTR_ce30860,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30770
    mov.w @(DAT_ce30844,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30778

LAB_ce30770:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30778:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x11,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30840,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30858,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30796:
    rts
    nop

LAB_ce3079a:
    mov.w @(DAT_ce30846,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30864,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce307ae:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30868,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30848,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce307dc
    mov.w @(DAT_ce3084a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce307d4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30afc
    mov.l @r15+,r14

LAB_ce307d4:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce309dc
    mov.l @r15+,r14

LAB_ce307dc:
    mov.w @(DAT_ce3084a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce307ee
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30908
    mov.l @r15+,r14

LAB_ce307ee:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307f6
    mov.l @r15+,r14

LAB_ce307f6:
    mov.w @(DAT_ce3084c,pc),r0
    mov 0x07,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x01,r12
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3084e,pc),r0
    mov.l @(PTR_ce3086c,pc),r11
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30826
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30874
    cmp/eq 0x02,r0
    bt LAB_ce3088e
    bra LAB_ce308d0
    nop

LAB_ce30826:
    mov.w @(DAT_ce30850,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30852,pc),r0
    mov.l @(PTR_ce30870,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30854,pc),r0
    bra LAB_ce308d0
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30840:
    #data 0x01e9
DAT_ce30842:
    #data 0x03cc
DAT_ce30844:
    #data 0x040c
DAT_ce30846:
    #data 0x01ff
DAT_ce30848:
    #data 0x01fe
DAT_ce3084a:
    #data 0x01f9
DAT_ce3084c:
    #data 0x0159
DAT_ce3084e:
    #data 0x01e8
DAT_ce30850:
    #data 0x0158
DAT_ce30852:
    #data 0x03f4
DAT_ce30854:
    #data 0x01a7
    #align4

PTR_ce30858:
    #data loc_8c0530d8
PTR_ce3085c:
    #data DAT_ce34686
PTR_ce30860:
    #data loc_8c054e58
PTR_ce30864:
    #data PTR_ce34708
PTR_ce30868:
    #data loc_8c052b4c
PTR_ce3086c:
    #data loc_8c04223a
PTR_ce30870:
    #data DAT_ce34568

;=============================================

LAB_ce30874:
    mov.w @(DAT_ce30964,pc),r0
    mov 0x15,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r12,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30966,pc),r0
    mov.l @(PTR_ce30974,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30968,pc),r0
    bra LAB_ce308d0
    mov.b r12,@(r0,r14)

LAB_ce3088e:
    mov.w @(DAT_ce30964,pc),r0
    mov 0x02,r10
    mov 0x16,r5
    mov.b r10,@(r0,r14)
    add 0x49,r0
    mov.b r10,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3096a,pc),r0
    mov.w @(DAT_ce3096c,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce308c6
    mov r12,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x14,r3
    mov.w @(DAT_ce3096e,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov 0x12,r3
    mov.b r3,@(r0,r14)

LAB_ce308c6:
    mov.w @(DAT_ce30966,pc),r0
    mov.l @(PTR_ce30978,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30968,pc),r0
    mov.b r10,@(r0,r14)

LAB_ce308d0:
    mov.w @(DAT_ce30970,pc),r0
    mov r14,r4
    mov.l @(PTR_ce3097c,pc),r3
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
    mov.w @(DAT_ce30964,pc),r0
    mov.l @(PTR_ce30980,pc),r2
    mov.l @r15+,r10
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @r15+,r11
    mov.b @(r0,r14),r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30908:
    mov.w @(DAT_ce30972,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30984,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3092c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30948
    cmp/eq 0x02,r0
    bt LAB_ce3098c
    bra LAB_ce309aa
    nop

LAB_ce3092c:
    mov.w @(DAT_ce30964,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30966,pc),r0
    mov.l @(PTR_ce30988,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30968,pc),r0
    bra LAB_ce309aa
    mov.b r13,@(r0,r14)

LAB_ce30948:
    mov.w @(DAT_ce30964,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30966,pc),r0
    mov.l @(PTR_ce30974,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce309a6
    mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30964:
    #data 0x0158
DAT_ce30966:
    #data 0x03f4
DAT_ce30968:
    #data 0x01a7
DAT_ce3096a:
    #data 0x01fa
DAT_ce3096c:
    #data 0x0800
DAT_ce3096e:
    #data 0x0159
DAT_ce30970:
    #data 0x01ac
DAT_ce30972:
    #data 0x01e8
    #align4

PTR_ce30974:
    #data DAT_ce3456c
PTR_ce30978:
    #data DAT_ce34570
PTR_ce3097c:
    #data loc_8c2896b0
PTR_ce30980:
    #data loc_8c034e8c
PTR_ce30984:
    #data loc_8c04223a
PTR_ce30988:
    #data DAT_ce34568

;=============================================

LAB_ce3098c:
    mov.w @(DAT_ce30ace,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30ad0,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30ae0,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce309a6:
    mov.w @(DAT_ce30ad2,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce309aa:
    mov.w @(DAT_ce30ad4,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30ae4,pc),r3
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
    mov.w @(DAT_ce30ace,pc),r0
    mov.l @(PTR_ce30ae8,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce309dc:
    mov.w @(DAT_ce30ad6,pc),r0
    mov 0x08,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x01,r12
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30ad8,pc),r0
    mov.l @(PTR_ce30aec,pc),r11
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a0a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a26
    cmp/eq 0x02,r0
    bt LAB_ce30a42
    bra LAB_ce30a98
    nop

LAB_ce30a0a:
    mov.w @(DAT_ce30ace,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30ad0,pc),r0
    mov.l @(PTR_ce30af0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30ad2,pc),r0
    bra LAB_ce30a98
    mov.b r13,@(r0,r14)

LAB_ce30a26:
    mov.w @(DAT_ce30ace,pc),r0
    mov 0x04,r3
    mov 0x15,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30ad0,pc),r0
    mov.l @(PTR_ce30af4,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30ad2,pc),r0
    bra LAB_ce30a98
    mov.b r12,@(r0,r14)

LAB_ce30a42:
    mov.w @(DAT_ce30ace,pc),r0
    mov 0x02,r2
    mov 0x05,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30ada,pc),r0
    mov.w @(DAT_ce30adc,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce30a8c
    mov r12,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fldi0 fr4
    mov 0x14,r4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce30ad6,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)

LAB_ce30a8c:
    mov.w @(DAT_ce30ad0,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30af8,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30ad2,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30a98:
    mov.w @(DAT_ce30ad4,pc),r0
    mov r14,r4
    mov.l @(PTR_ce30ae4,pc),r3
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
    mov.w @(DAT_ce30ace,pc),r0
    mov.l @(PTR_ce30ae8,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @r15+,r12
    mov.b @(r0,r14),r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ace:
    #data 0x0158
DAT_ce30ad0:
    #data 0x03f4
DAT_ce30ad2:
    #data 0x01a7
DAT_ce30ad4:
    #data 0x01ac
DAT_ce30ad6:
    #data 0x0159
DAT_ce30ad8:
    #data 0x01e8
DAT_ce30ada:
    #data 0x01fa
DAT_ce30adc:
    #data 0x0800
    #align4

PTR_ce30ae0:
    #data DAT_ce34570
PTR_ce30ae4:
    #data loc_8c2896b0
PTR_ce30ae8:
    #data loc_8c034e8c
PTR_ce30aec:
    #data loc_8c04223a
PTR_ce30af0:
    #data DAT_ce34574
PTR_ce30af4:
    #data DAT_ce34578
PTR_ce30af8:
    #data DAT_ce3457c

;=============================================

LAB_ce30afc:
    mov.w @(DAT_ce30bfe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30c0c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30b20
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30b3c
    cmp/eq 0x02,r0
    bt LAB_ce30b58
    bra LAB_ce30b76
    nop

LAB_ce30b20:
    mov.w @(DAT_ce30c00,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c02,pc),r0
    mov.l @(PTR_ce30c10,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30c04,pc),r0
    bra LAB_ce30b76
    mov.b r13,@(r0,r14)

LAB_ce30b3c:
    mov.w @(DAT_ce30c00,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c02,pc),r0
    mov.l @(PTR_ce30c14,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30b72
    mov 0x01,r2

LAB_ce30b58:
    mov.w @(DAT_ce30c00,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c02,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30c18,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30b72:
    mov.w @(DAT_ce30c04,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30b76:
    mov.w @(DAT_ce30c06,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30c1c,pc),r3
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
    mov.w @(DAT_ce30c00,pc),r0
    mov.l @(PTR_ce30c20,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30ba8:
    mov.w @(DAT_ce30c08,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30bb6
    bra LAB_ce30cd2
    nop

LAB_ce30bb6:
    bra LAB_ce30bba
    nop

LAB_ce30bba:
    mov.w @(DAT_ce30bfe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30c0c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30bde
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30c34
    cmp/eq 0x02,r0
    bt LAB_ce30c60
    bra LAB_ce30c8e
    nop

LAB_ce30bde:
    mov.w @(DAT_ce30c00,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c0a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c28
    mov.w @(DAT_ce30c02,pc),r0
    mov.l @(PTR_ce30c24,pc),r3
    bra LAB_ce30c2e
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30bfe:
    #data 0x01e8
DAT_ce30c00:
    #data 0x0158
DAT_ce30c02:
    #data 0x03f4
DAT_ce30c04:
    #data 0x01a7
DAT_ce30c06:
    #data 0x01ac
DAT_ce30c08:
    #data 0x01fe
DAT_ce30c0a:
    #data 0x01fc
    #align4

PTR_ce30c0c:
    #data loc_8c04223a
PTR_ce30c10:
    #data DAT_ce34574
PTR_ce30c14:
    #data DAT_ce34578
PTR_ce30c18:
    #data DAT_ce3457c
PTR_ce30c1c:
    #data loc_8c2896b0
PTR_ce30c20:
    #data loc_8c034e8c
PTR_ce30c24:
    #data DAT_ce34580

;=============================================

LAB_ce30c28:
    mov.w @(DAT_ce30d28,pc),r0
    mov.l @(PTR_ce30d3c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c2e:
    mov.w @(DAT_ce30d2a,pc),r0
    bra LAB_ce30c8e
    mov.b r13,@(r0,r14)

LAB_ce30c34:
    mov.w @(DAT_ce30d2c,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30d2e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c56
    mov.w @(DAT_ce30d28,pc),r0
    mov.l @(PTR_ce30d40,pc),r3
    bra LAB_ce30c5c
    mov.l r3,@(r0,r14)

LAB_ce30c56:
    mov.w @(DAT_ce30d28,pc),r0
    mov.l @(PTR_ce30d44,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c5c:
    bra LAB_ce30c8a
    mov 0x01,r3

LAB_ce30c60:
    mov.w @(DAT_ce30d2c,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30d2e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c82
    mov.w @(DAT_ce30d28,pc),r0
    mov.l @(PTR_ce30d48,pc),r3
    bra LAB_ce30c88
    mov.l r3,@(r0,r14)

LAB_ce30c82:
    mov.w @(DAT_ce30d28,pc),r0
    mov.l @(PTR_ce30d4c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c88:
    mov 0x02,r3

LAB_ce30c8a:
    mov.w @(DAT_ce30d2a,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30c8e:
    mov.w @(DAT_ce30d30,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30d50,pc),r3
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
    mov.w @(DAT_ce30d2c,pc),r0
    mov.l @(PTR_ce30d54,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30d32,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30cc8
    mov.w @(DAT_ce30d32,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30cc8:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30cd2:
    mov.w @(DAT_ce30d34,pc),r0
    mov 0x0C,r5
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov 0x14,r11
    sts.l PR,@-r15
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce30d38,pc),r0
    mov.w @(DAT_ce30d36,pc),r4
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30d58,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30d02
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30d6c
    cmp/eq 0x02,r0
    bt LAB_ce30db6
    bra LAB_ce30e00
    nop

LAB_ce30d02:
    mov.w @(DAT_ce30d2c,pc),r0
    mov 0x03,r3
    mov 0x16,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)
    add 0xB8,r0
    mov 0x14,r5
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30d2e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30d60
    mov.w @(DAT_ce30d28,pc),r0
    mov.l @(PTR_ce30d5c,pc),r3
    bra LAB_ce30d66
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d28:
    #data 0x03f4
DAT_ce30d2a:
    #data 0x01a7
DAT_ce30d2c:
    #data 0x0158
DAT_ce30d2e:
    #data 0x01fc
DAT_ce30d30:
    #data 0x01ac
DAT_ce30d32:
    #data 0x01d6
DAT_ce30d34:
    #data 0x0159
DAT_ce30d36:
    #data 0x2000
DAT_ce30d38:
    #data 0x01e8
    #align4

PTR_ce30d3c:
    #data DAT_ce34598
PTR_ce30d40:
    #data DAT_ce34584
PTR_ce30d44:
    #data DAT_ce3459c
PTR_ce30d48:
    #data DAT_ce34588
PTR_ce30d4c:
    #data DAT_ce345a0
PTR_ce30d50:
    #data loc_8c2896b0
PTR_ce30d54:
    #data loc_8c034e8c
PTR_ce30d58:
    #data loc_8c04223a
PTR_ce30d5c:
    #data DAT_ce3458c

;=============================================

LAB_ce30d60:
    mov.w @(DAT_ce30e48,pc),r0
    mov.l @(PTR_ce30e58,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30d66:
    mov.w @(DAT_ce30e4a,pc),r0
    bra LAB_ce30e00
    mov.b r13,@(r0,r14)

LAB_ce30d6c:
    mov.w @(DAT_ce30e4c,pc),r0
    mov 0x04,r3
    mov 0x17,r2
    mov.b r11,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bt LAB_ce30d96
    mov.w @(DAT_ce30e4c,pc),r0
    mov 0x01,r3
    mov 0x10,r2
    mov.b r5,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)

LAB_ce30d96:
    mov 0x15,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30e4e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30dac
    mov.w @(DAT_ce30e48,pc),r0
    mov.l @(PTR_ce30e5c,pc),r3
    bra LAB_ce30db2
    mov.l r3,@(r0,r14)

LAB_ce30dac:
    mov.w @(DAT_ce30e48,pc),r0
    mov.l @(PTR_ce30e60,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30db2:
    bra LAB_ce30dfc
    mov 0x01,r3

LAB_ce30db6:
    mov.w @(DAT_ce30e50,pc),r0
    mov 0x05,r1
    mov 0x18,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r4,r2
    bt/s LAB_ce30ddc
    mov 0x16,r5
    mov.w @(DAT_ce30e50,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30de0
    mov.b r3,@(r0,r14)

LAB_ce30ddc:
    mov.w @(DAT_ce30e4c,pc),r0
    mov.b r11,@(r0,r14)

LAB_ce30de0:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30e4e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30df4
    mov.w @(DAT_ce30e48,pc),r0
    mov.l @(PTR_ce30e64,pc),r3
    bra LAB_ce30dfa
    mov.l r3,@(r0,r14)

LAB_ce30df4:
    mov.w @(DAT_ce30e48,pc),r0
    mov.l @(PTR_ce30e68,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30dfa:
    mov 0x02,r3

LAB_ce30dfc:
    mov.w @(DAT_ce30e4a,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30e00:
    mov.w @(DAT_ce30e52,pc),r0
    mov.l @(PTR_ce30e6c,pc),r3
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
    mov.w @(DAT_ce30e50,pc),r0
    mov.l @(PTR_ce30e70,pc),r2
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30e54,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30e3c
    mov.w @(DAT_ce30e54,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30e3c:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e48:
    #data 0x03f4
DAT_ce30e4a:
    #data 0x01a7
DAT_ce30e4c:
    #data 0x0159
DAT_ce30e4e:
    #data 0x01fc
DAT_ce30e50:
    #data 0x0158
DAT_ce30e52:
    #data 0x01ac
DAT_ce30e54:
    #data 0x01d6
    #align4

PTR_ce30e58:
    #data DAT_ce345a4
PTR_ce30e5c:
    #data DAT_ce34590
PTR_ce30e60:
    #data DAT_ce345a8
PTR_ce30e64:
    #data DAT_ce34594
PTR_ce30e68:
    #data DAT_ce345ac
PTR_ce30e6c:
    #data loc_8c2896b0
PTR_ce30e70:
    #data loc_8c034e8c

;=============================================

LAB_ce30e74:
    mov.w @(DAT_ce30f6e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30e84
    mov.w @(DAT_ce30f70,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30e94

LAB_ce30e84:
    mov.w @(DAT_ce30f6e,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30e98
    mov.w @(DAT_ce30f70,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30e98

LAB_ce30e94:
    bra LAB_ce30ba8
    nop

LAB_ce30e98:
    rts
    nop

LAB_ce30e9c:
    mov.w @(DAT_ce30f72,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30f78,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30eb0:
    sts.l PR,@-r15
    mov.l @(PTR_ce30f7c,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30ebe:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30f80,pc),r3
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
    mov.w @(DAT_ce30f6e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f26
    mov.w @(DAT_ce30f74,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f1e
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce3119a
    mov.l @r15+,r14

LAB_ce30f1e:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31028
    mov.l @r15+,r14

LAB_ce30f26:
    mov.w @(DAT_ce30f74,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f38
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce31006
    mov.l @r15+,r14

LAB_ce30f38:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30f40
    mov.l @r15+,r14

LAB_ce30f40:
    mov.w @(DAT_ce30f76,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30f5e
    cmp/eq 0x01,r0
    bt LAB_ce30f5e
    cmp/eq 0x02,r0
    bt LAB_ce30f88
    bra LAB_ce30ffe
    nop

LAB_ce30f5e:
    mov.l @(PTR_ce30f84,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30f94
    bra LAB_ce30ffe
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f6e:
    #data 0x01fe
DAT_ce30f70:
    #data 0x01d6
DAT_ce30f72:
    #data 0x01ff
DAT_ce30f74:
    #data 0x01f9
DAT_ce30f76:
    #data 0x01e8
    #align4

PTR_ce30f78:
    #data PTR_ce34718
PTR_ce30f7c:
    #data loc_8c0511e2
PTR_ce30f80:
    #data loc_8c052c84
PTR_ce30f84:
    #data loc_8c034dee

;=============================================

LAB_ce30f88:
    mov.l @(PTR_ce31098,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fa0

LAB_ce30f94:
    lds.l @r15+,PR
    mov.l @(PTR_ce3109c,pc),r3
    mov r14,r4
    mov.l @r15+,r8
    jmp @r3
    mov.l @r15+,r14

LAB_ce30fa0:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt LAB_ce30ffe
    mov.w @(DAT_ce31090,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30fd6
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x13,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce310a0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce30fd6:
    mov.w @(DAT_ce31092,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30ffe
    mov.w @(DAT_ce31094,pc),r0
    mov 0x34,r8
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce30ff2
    add r14,r8
    mov.l @(DAT_ce310a4,pc),r1
    lds r1,FPUL
    bra LAB_ce30ff8
    fsts FPUL,fr3

LAB_ce30ff2:
    mov.l @(DAT_ce310a8,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce30ff8:
    fmov.s @r8,fr2
    fadd fr3,fr2
    fmov.s fr2,@r8

LAB_ce30ffe:
    lds.l @r15+,PR
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31006:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31098,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31020
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3109c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31020:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31028:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31096,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce31098,pc),r13
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce310b2
    mov 0x00,r12
    cmp/eq 0x01,r0
    bt LAB_ce3104e
    cmp/eq 0x02,r0
    bt LAB_ce310ac
    bra LAB_ce3118e
    nop

LAB_ce3104e:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3105c
    bra LAB_ce3117e
    nop

LAB_ce3105c:
    mov.w @(DAT_ce31090,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31068
    bra LAB_ce3118e
    nop

LAB_ce31068:
    mov.b r12,@(r0,r14)
    add 0x60,r0
    mov 0x19,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce310a0,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    bra LAB_ce3118e
    mov.w r1,@(r0,r2)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31090:
    #data 0x0141
DAT_ce31092:
    #data 0x0140
DAT_ce31094:
    #data 0x01d2
DAT_ce31096:
    #data 0x01e8
    #align4

PTR_ce31098:
    #data loc_8c034dee
PTR_ce3109c:
    #data loc_8c051648
PTR_ce310a0:
    #data loc_8c2896b0
DAT_ce310a4:
    #data 0x40555555
DAT_ce310a8:
    #data 0xc0555555

;=============================================

LAB_ce310ac:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce310c0

LAB_ce310b2:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce3117e
    bra LAB_ce3118e
    nop

LAB_ce310c0:
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce310d6
    fldi0 fr15
    cmp/eq 0x01,r0
    bt LAB_ce3111a
    cmp/eq 0x02,r0
    bt LAB_ce3116a
    bra LAB_ce3118e
    nop

LAB_ce310d6:
    jsr @r13
    mov r14,r4
    mov.w @(DAT_ce311b4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3118e
    mov.b @(0x7,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce311b6,pc),r0
    mov.b r3,@(r0,r14)
    add 0xD9,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce310fc
    mova @(DAT_ce311bc,pc),r0
    bra LAB_ce31100
    fmov.s @r0,fr3

LAB_ce310fc:
    mova @(DAT_ce311c0,pc),r0
    fmov.s @r0,fr3

LAB_ce31100:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce311c4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce311c8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    bra LAB_ce3118e
    fmov fr3,@(r0,r14)

LAB_ce3111a:
    jsr @r13
    mov r14,r4
    mov 0x38,r0
    mov.l @(PTR_ce311cc,pc),r3
    fmov.s @(r0,r14),fr4
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3118e
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce311d0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce311b8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce311b6,pc),r0
    mov.b r12,@(r0,r14)
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
    mov.l @(PTR_ce311d4,pc),r2
    mov r14,r4
    mov 0x0A,r6
    fmov.s @r15+,fr15
    mov 0x14,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3116a:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3118e
    mov.w @(DAT_ce311ba,pc),r0
    mov 0x05,r2
    mov.l @(r0,r14),r3
    add 0xDF,r0
    mov.b r2,@(r0,r3)

LAB_ce3117e:
    lds.l @r15+,PR
    mov.l @(PTR_ce311d8,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3118e:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3119a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce311dc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311e0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce311d8,pc),r3
    jmp @r3
    lds.l @r15+,PR

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311b4:
    #data 0x0141
DAT_ce311b6:
    #data 0x01f9
DAT_ce311b8:
    #data 0x041c
DAT_ce311ba:
    #data 0x020c
    #align4

DAT_ce311bc:
    #data 0x40d55555
DAT_ce311c0:
    #data 0xc0d55555
DAT_ce311c4:
    #data 0x4111b6db
DAT_ce311c8:
    #data 0xbf40db6d
PTR_ce311cc:
    #data loc_8c052d44
PTR_ce311d0:
    #data loc_8c0511b4
PTR_ce311d4:
    #data loc_8c034e8c
PTR_ce311d8:
    #data loc_8c051648
PTR_ce311dc:
    #data loc_8c034dee

;=============================================

LAB_ce311e0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce311e8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31288,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce3128c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce311fe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31290,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31294,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31284,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31220
    bsr FUN_ce31262
    mov r14,r4
    bra LAB_ce31224
    nop

LAB_ce31220:
    bsr FUN_ce31240
    mov r14,r4

LAB_ce31224:
    mov.l @(PTR_ce31298,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3123a
    lds.l @r15+,PR
    mov.l @(PTR_ce3129c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3123a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31240:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce312a0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3125a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce312a4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3125a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce31262:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce312a0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3127c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce312a4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3127c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31284:
    #data 0x01fe
    #align4

PTR_ce31288:
    #data loc_8c050084
PTR_ce3128c:
    #data loc_8c04ff88
PTR_ce31290:
    #data loc_8c04fea8
PTR_ce31294:
    #data loc_8c050048
PTR_ce31298:
    #data loc_8c052ce2
PTR_ce3129c:
    #data loc_8c052dac
PTR_ce312a0:
    #data loc_8c034dee
PTR_ce312a4:
    #data loc_8c05176e

;=============================================

LAB_ce312a8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31306
    mov.l @(PTR_ce313e0,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x1A,r3
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce313d4,pc),r0
    mov 0x0C,r6
    mov.b r3,@(r0,r14)
    add 0x58,r0
    mov.l @(PTR_ce313e4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce313d6,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce313e8,pc),r3
    mov 0x16,r5
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
    mov.l @(PTR_ce313ec,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce313f0,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4

LAB_ce31306:
    mov.w @(DAT_ce313d8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31316
    mov.l @(PTR_ce313f4,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31316:
    mov 0x5C,r1
    mov.l @(PTR_ce313f8,pc),r3
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
    mov.l @(PTR_ce313fc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3136a
    lds.l @r15+,PR
    mov.l @(PTR_ce31400,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3136a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31370:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce31404,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce313f4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3138e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313fc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce313da,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3141c
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce313dc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce313be
    mova @(DAT_ce31408,pc),r0
    bra LAB_ce313c2
    fmov.s @r0,fr3

LAB_ce313be:
    mova @(DAT_ce3140c,pc),r0
    fmov.s @r0,fr3

LAB_ce313c2:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce313dc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31414
    mova @(DAT_ce31410,pc),r0
    bra LAB_ce31418
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce313d4:
    #data 0x01a1
DAT_ce313d6:
    #data 0x01ac
DAT_ce313d8:
    #data 0x01ff
DAT_ce313da:
    #data 0x0141
DAT_ce313dc:
    #data 0x01d2
    #align4

PTR_ce313e0:
    #data loc_8c052b4c
PTR_ce313e4:
    #data loc_8c034e8c
PTR_ce313e8:
    #data loc_8c2896b0
PTR_ce313ec:
    #data loc_8c04223a
PTR_ce313f0:
    #data loc_8c056de4
PTR_ce313f4:
    #data loc_8c0511e2
PTR_ce313f8:
    #data loc_8c052c84
PTR_ce313fc:
    #data loc_8c034dee
PTR_ce31400:
    #data loc_8c051648
PTR_ce31404:
    #data PTR_ce34728
DAT_ce31408:
    #data 0x41a00000
DAT_ce3140c:
    #data 0xc1a00000
DAT_ce31410:
    #data 0xbf200000

;=============================================

LAB_ce31414:
    mova @(DAT_ce3154c,pc),r0
    fmov.s @r0,fr3

LAB_ce31418:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce3141c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31422:
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
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    mov 0x68,r0
    fmov.s @(r0,r4),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf LAB_ce31492
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    fmov fr3,fr4
    add 0x01,r0
    mov.l @(PTR_ce31550,pc),r3
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce31546,pc),r0
    fmov.s @(r0,r4),fr2
    mov 0x38,r0
    fmov fr2,@(r0,r4)
    jmp @r3
    mov r6,r5

LAB_ce31492:
    mov.l @(PTR_ce31554,pc),r2
    jmp @r2
    nop

LAB_ce31498:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31554,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce314b2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31558,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce314b2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce314ba:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce3155c,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce31560,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce314d8:
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31548,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce314f6
    mova @(DAT_ce31564,pc),r0
    bra LAB_ce314fa
    fmov.s @r0,fr3

LAB_ce314f6:
    mova @(DAT_ce31568,pc),r0
    fmov.s @r0,fr3

LAB_ce314fa:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31548,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3150c
    mova @(DAT_ce3154c,pc),r0
    bra LAB_ce31510
    fmov.s @r0,fr3

LAB_ce3150c:
    mova @(DAT_ce3156c,pc),r0
    fmov.s @r0,fr3

LAB_ce31510:
    mov.l @(PTR_ce31550,pc),r3
    mov 0x68,r0
    mov 0x01,r6
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x02,r5

LAB_ce3151c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31554,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3154a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31540
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    bra LAB_ce31570
    mov.l @r15+,r14

LAB_ce31540:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31546:
    #data 0x041c
DAT_ce31548:
    #data 0x01d2
DAT_ce3154a:
    #data 0x0141
    #align4

DAT_ce3154c:
    #data 0x3f200000
    #align4

PTR_ce31550:
    #data loc_8c034e8c
PTR_ce31554:
    #data loc_8c034dee
PTR_ce31558:
    #data loc_8c051648
PTR_ce3155c:
    #data PTR_ce34734
PTR_ce31560:
    #data loc_8c0511e2
DAT_ce31564:
    #data 0xc1a00000
DAT_ce31568:
    #data 0x41a00000
DAT_ce3156c:
    #data 0xbf200000

;=============================================

LAB_ce31570:
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
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    mov 0x68,r0
    fmov.s @(r0,r4),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf LAB_ce315c6
    mov.b @(0x6,r4),r0
    mov 0x03,r6
    mov.l @(PTR_ce316a8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x02,r5

LAB_ce315c6:
    mov.l @(PTR_ce316ac,pc),r2
    jmp @r2
    nop

LAB_ce315cc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce316ac,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce315e6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce316b0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce315e6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce315ee:
    mov r4,r3
    mov.l @(PTR_ce316b4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31600:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce316a2,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce316a8,pc),r3
    jmp @r3
    mov 0x12,r5

LAB_ce31614:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce316ac,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3162a
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)

LAB_ce3162a:
    mov.w @(DAT_ce316a4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31642
    mov 0x00,r3
    mov r14,r4
    mov r3,r5
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce316b8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31642:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31648:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bt LAB_ce31652
    bra LAB_ce3168a
    nop

LAB_ce31652:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r4
    mov.l @(PTR_ce316bc,pc),r0
    extu.b r4,r6
    extu.b r4,r4
    tst r4,r4
    bf/s LAB_ce3167e
    mov.b @(r0,r6),r6
    mov.l @(PTR_ce316c0,pc),r2
    jsr @r2
    nop
    and 0x03,r0
    mov.l @(PTR_ce316c4,pc),r1
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    mov.b @(r0,r1),r6

LAB_ce3167e:
    lds.l @r15+,PR
    mov.l @(PTR_ce316a8,pc),r3
    mov 0x13,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3168a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce316c8,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce316cc
    lds.l @r15+,PR
    mov.l @(PTR_ce316b0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce316a2:
    #data 0x012c
DAT_ce316a4:
    #data 0x0141
    #align4

PTR_ce316a8:
    #data loc_8c034e8c
PTR_ce316ac:
    #data loc_8c034dee
PTR_ce316b0:
    #data loc_8c051648
PTR_ce316b4:
    #data PTR_ce34744
PTR_ce316b8:
    #data loc_8c0ddc3c
PTR_ce316bc:
    #data DAT_ce34750
PTR_ce316c0:
    #data loc_8c03319e
PTR_ce316c4:
    #data DAT_ce3474c
PTR_ce316c8:
    #data loc_8c046c8a

;=============================================

LAB_ce316cc:
    mov.l @(PTR_ce31814,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31702
    mov.w @(0x1c,r14),r0
    cmp/eq 0x01,r0
    bt/s LAB_ce316ea
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x03,r0
    bf LAB_ce31702

LAB_ce316ea:
    mov.w @(DAT_ce31806,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31702
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x01,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce31818,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31702:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31708:
    mov.w @(DAT_ce31808,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce3181c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3171c:
    mov.w @(DAT_ce3180a,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3174e
    mov.b @(r0,r4),r3
    add 0x56,r0
    mov 0x00,r5
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce31820,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3180a,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3174e:
    rts
    nop

LAB_ce31752:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31824,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce3180c,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31768:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31828,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3182c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31830,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3180e,pc),r0
    mov 0x00,r4
    mov 0x15,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31810,pc),r0
    mov.b r4,@(r0,r14)
    add 0xAA,r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x30,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31820,pc),r3
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
    mov.w @(DAT_ce31812,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce31834,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce317ce:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31814,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce317e8
    lds.l @r15+,PR
    mov.l @(PTR_ce31838,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce317e8:
    mov.w @(DAT_ce31806,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31800
    mov 0x00,r3
    mov r14,r4
    mov r3,r5
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce3183c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31800:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31806:
    #data 0x0141
DAT_ce31808:
    #data 0x01e9
DAT_ce3180a:
    #data 0x014b
DAT_ce3180c:
    #data 0x02a4
DAT_ce3180e:
    #data 0x041c
DAT_ce31810:
    #data 0x01f9
DAT_ce31812:
    #data 0x01a3
    #align4

PTR_ce31814:
    #data loc_8c034dee
PTR_ce31818:
    #data loc_8c0ddc3c
PTR_ce3181c:
    #data PTR_ce34758
PTR_ce31820:
    #data loc_8c2896b0
PTR_ce31824:
    #data PTR_ce347a0
PTR_ce31828:
    #data loc_8c05218a
PTR_ce3182c:
    #data loc_8c05115a
PTR_ce31830:
    #data loc_8c056de4
PTR_ce31834:
    #data loc_8c034e8c
PTR_ce31838:
    #data loc_8c051648
PTR_ce3183c:
    #data loc_8c08fe50

;=============================================

FUN_ce31840:
    mov 0x60,r0
    fmov.s @(r0,r4),fr0
    mov 0x38,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r1
    add r4,r1
    fadd fr0,fr3
    fmov fr3,@(r0,r4)
    mov 0x60,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr0
    fmov fr2,@(r0,r4)
    bf/s LAB_ce3186e
    fmov fr2,fr4
    fcmp/gt fr4,fr3
    bf LAB_ce3186e
    mova @(DAT_ce3194c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)

LAB_ce3186e:
    rts
    nop

;=============================================

FUN_ce31872:
    mov.b @r5,r3
    extu.b r3,r3
    cmp/pl r3
    bf LAB_ce318de
    mov.b @(0x1,r5),r0
    extu.b r0,r0
    cmp/pl r0
    bf LAB_ce318de
    mov.w @(DAT_ce3193c,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce318de
    mov 0x00,r6
    mov.b @(r0,r4),r7
    mov.b r6,@(r0,r4)
    add 0x5E,r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce318bc
    mov.w @(DAT_ce3193e,pc),r0
    mov.b @(r0,r4),r0
    tst 0x01,r0
    bt LAB_ce318b0
    mov.b @(0x1,r5),r0
    add 0xFF,r0
    mov.b r0,@(0x1,r5)
    extu.b r0,r0
    cmp/pl r0
    bf LAB_ce318de
    bra LAB_ce318bc
    nop

LAB_ce318b0:
    mov.b @r5,r3
    add 0xFF,r3
    mov.b r3,@r5
    extu.b r3,r3
    cmp/pl r3
    bf LAB_ce318de

LAB_ce318bc:
    mov.w @(DAT_ce31940,pc),r0
    mov.l @(PTR_ce31950,pc),r3
    mov.b r7,@(r0,r4)
    add 0x0B,r0
    mov.w r6,@(r0,r4)
    add 0xF2,r0
    mov.b r6,@(r0,r4)
    add 0x26,r0
    mov.l r6,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce318de:
    rts
    nop

LAB_ce318e2:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31954,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31942,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce318f8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31958,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31944,pc),r0
    mov 0x00,r13
    mov.l @(PTR_ce3195c,pc),r3
    mov 0x0A,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31946,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31948,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31968
    mova @(DAT_ce31960,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce31964,pc),r0
    bra LAB_ce31970
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3193c:
    #data 0x0140
DAT_ce3193e:
    #data 0x019e
DAT_ce31940:
    #data 0x01a1
DAT_ce31942:
    #data 0x02a4
DAT_ce31944:
    #data 0x041c
DAT_ce31946:
    #data 0x01fc
DAT_ce31948:
    #data 0x01a3
    #align4

DAT_ce3194c:
    #data 0xbfcdb6db
PTR_ce31950:
    #data loc_8c2896b0
PTR_ce31954:
    #data PTR_ce347ac
PTR_ce31958:
    #data loc_8c05218a
PTR_ce3195c:
    #data loc_8c056de4
DAT_ce31960:
    #data 0x41555555
DAT_ce31964:
    #data 0x41892492

;=============================================

LAB_ce31968:
    mova @(DAT_ce31a80,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce31a84,pc),r0
    fmov.s @r0,fr3

LAB_ce31970:
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31a78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31980
    mov 0x5C,r0
    fneg fr4

LAB_ce31980:
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31a78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31990
    mova @(DAT_ce31a88,pc),r0
    bra LAB_ce31994
    fmov.s @r0,fr3

LAB_ce31990:
    mova @(DAT_ce31a8c,pc),r0
    fmov.s @r0,fr3

LAB_ce31994:
    mov 0x68,r0
    mov.l @(PTR_ce31a98,pc),r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31a90,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31a7a,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x33,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31a94,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31a7a,pc),r0
    mov.l @r15,r2
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    mov.b @(r0,r4),r1
    mov 0x15,r5
    mov.w @(DAT_ce31a7a,pc),r0
    mov.b r1,@r2
    mov.b @(r0,r14),r0
    mov.l @r15,r2
    extu.b r0,r0
    shll r0
    add r4,r0
    mov r14,r4
    mov.b @(0x1,r0),r0
    mov.b r0,@(0x1,r2)
    mov.w @(DAT_ce31a7a,pc),r0
    mov.b @(r0,r14),r6
    add 0x02,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31a9c,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce319fe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31aa0,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    bsr FUN_ce31872
    mov r14,r4
    mov.w @(DAT_ce31a7c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31a34
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31aa4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31aa8,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a34:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31a3c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31840
    mov r4,r14
    mov 0x5C,r0
    fmov.s @(r0,r14),fr0
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x68,r1
    add r14,r1
    fadd fr0,fr3
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fldi0 fr3
    fmov fr2,fr4
    fmul fr0,fr4
    fcmp/gt fr4,fr3
    bf/s LAB_ce31a6e
    fmov fr2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31a6e:
    lds.l @r15+,PR
    mov.l @(PTR_ce31aa0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a78:
    #data 0x01d2
DAT_ce31a7a:
    #data 0x01a3
DAT_ce31a7c:
    #data 0x0141
    #align4

DAT_ce31a80:
    #data 0x41a00000
DAT_ce31a84:
    #data 0x42092492
DAT_ce31a88:
    #data 0xbf555555
DAT_ce31a8c:
    #data 0x3f555555
DAT_ce31a90:
    #data 0xbf892492
PTR_ce31a94:
    #data loc_8c2896b0
PTR_ce31a98:
    #data DAT_ce347a8
PTR_ce31a9c:
    #data loc_8c034e8c
PTR_ce31aa0:
    #data loc_8c034dee
PTR_ce31aa4:
    #data loc_8c053082
PTR_ce31aa8:
    #data loc_8c05115a

;=============================================

LAB_ce31aac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31840
    mov r4,r14
    mov.w @(DAT_ce31bd8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31ad2
    mov.w @(DAT_ce31bda,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31af0
    lds.l @r15+,PR
    mov.l @(PTR_ce31be0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31ad2:
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31bdc,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31bd8,pc),r0
    mov.l @(PTR_ce31be4,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31af0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31af6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31be0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b10
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31be8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31b10:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31b18:
    mov.w @(DAT_ce31bda,pc),r0
    mov.b @(r0,r4),r3
    cmp/pl r3
    bf LAB_ce31b4c
    mov 0x00,r5
    mov.b r5,@(r0,r4)
    add 0x62,r0
    mov.b @(r0,r4),r3
    add 0xFE,r0
    add 0x3A,r3
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce31bec,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31b4c:
    rts
    nop

LAB_ce31b50:
    mov r4,r3
    mov.l @(PTR_ce31bf0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31b62:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31bf4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31bf8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31bfc,pc),r3
    mov 0x08,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31bd8,pc),r0
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31bde,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x3A,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31bec,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mova @(DAT_ce31c00,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31c04,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov.l @(PTR_ce31c08,pc),r2
    fmov fr3,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31bde,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31c10
    mova @(DAT_ce31c0c,pc),r0
    bra LAB_ce31c14
    fmov.s @r0,fr4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31bd8:
    #data 0x041c
DAT_ce31bda:
    #data 0x0141
DAT_ce31bdc:
    #data 0x01f9
DAT_ce31bde:
    #data 0x01a3
    #align4

PTR_ce31be0:
    #data loc_8c034dee
PTR_ce31be4:
    #data loc_8c0511b4
PTR_ce31be8:
    #data loc_8c051648
PTR_ce31bec:
    #data loc_8c2896b0
PTR_ce31bf0:
    #data PTR_ce347c0
PTR_ce31bf4:
    #data loc_8c05218a
PTR_ce31bf8:
    #data loc_8c05115a
PTR_ce31bfc:
    #data loc_8c056de4
DAT_ce31c00:
    #data 0x40cdb6db
DAT_ce31c04:
    #data 0xbf4db6db
PTR_ce31c08:
    #data loc_8c053082
DAT_ce31c0c:
    #data 0x40c80000

;=============================================

LAB_ce31c10:
    mova @(DAT_ce31d20,pc),r0
    fmov.s @r0,fr4

LAB_ce31c14:
    mov.w @(DAT_ce31d1a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31c22
    mov 0x5C,r0
    bra LAB_ce31c26
    fmov fr4,fr3

LAB_ce31c22:
    fmov fr4,fr3
    fneg fr3

LAB_ce31c26:
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    mov.l @(PTR_ce31d24,pc),r3
    mov r14,r4
    fldi0 fr3
    mov 0x04,r6
    fmov fr3,@(r0,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c3c:
    mov.l r14,@-r15
    mov 0x60,r0
    mov r4,r14
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr4
    mov 0x34,r0
    fmov.s @r1,fr3
    mov 0x68,r1
    fmov.s @(r0,r14),fr2
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
    fmov fr2,fr3
    fmul fr3,fr4
    fldi0 fr3
    fcmp/gt fr3,fr4
    bf/s LAB_ce31c92
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31d28,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c92:
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31d2c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31d1c,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31d24,pc),r3
    mov 0x06,r6
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31b18
    mov.l @r15+,r14

LAB_ce31cbe:
    mov.w @(DAT_ce31d1e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce31cf0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31cf0
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31d24,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31cf0:
    mov 0x5C,r1
    mov.l @(PTR_ce31d28,pc),r3
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
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31b18
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d1a:
    #data 0x01d2
DAT_ce31d1c:
    #data 0x01a3
DAT_ce31d1e:
    #data 0x0141
    #align4

DAT_ce31d20:
    #data 0x40855555
PTR_ce31d24:
    #data loc_8c034e8c
PTR_ce31d28:
    #data loc_8c034dee
PTR_ce31d2c:
    #data loc_8c0dde08

;=============================================

LAB_ce31d30:
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
    mov.w @(DAT_ce31e6a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31da2
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x07,r6
    mov.w @(DAT_ce31e6a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31e6c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31e74,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31e78,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31da2:
    lds.l @r15+,PR
    mov.l @(PTR_ce31e7c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31dac:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31e7c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31dc6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31e80,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31dc6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31dce:
    mov.w @(DAT_ce31e6e,pc),r0
    mov.b @(r0,r4),r3
    cmp/pl r3
    bf LAB_ce31e02
    mov 0x00,r5
    mov.b r5,@(r0,r4)
    add 0x62,r0
    mov.b @(r0,r4),r3
    add 0xFE,r0
    add 0x3D,r3
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce31e84,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31e02:
    rts
    nop

LAB_ce31e06:
    mov r4,r3
    mov.l @(PTR_ce31e88,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31e18:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31e8c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31e90,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31e70,pc),r0
    mov 0x00,r4
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x3D,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31e84,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31e70,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e98
    mova @(DAT_ce31e94,pc),r0
    bra LAB_ce31e9c
    fmov.s @r0,fr4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e6a:
    #data 0x041c
DAT_ce31e6c:
    #data 0x01f9
DAT_ce31e6e:
    #data 0x0141
DAT_ce31e70:
    #data 0x01a3
    #align4

PTR_ce31e74:
    #data loc_8c034e8c
PTR_ce31e78:
    #data loc_8c0511b4
PTR_ce31e7c:
    #data loc_8c034dee
PTR_ce31e80:
    #data loc_8c051648
PTR_ce31e84:
    #data loc_8c2896b0
PTR_ce31e88:
    #data PTR_ce347d4
PTR_ce31e8c:
    #data loc_8c05218a
PTR_ce31e90:
    #data loc_8c056de4
DAT_ce31e94:
    #data 0x40855555

;=============================================

LAB_ce31e98:
    mova @(DAT_ce31fa4,pc),r0
    fmov.s @r0,fr4

LAB_ce31e9c:
    mov.w @(DAT_ce31f98,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31eb2
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31ebe
    bra LAB_ce31ec0
    nop

LAB_ce31eb2:
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf/s LAB_ce31ec0
    fneg fr4

LAB_ce31ebe:
    fneg fr4

LAB_ce31ec0:
    mov 0x5C,r0
    mov.l @(PTR_ce31fa8,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x00,r5
    fldi0 fr2
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f9a,pc),r0
    mov r14,r4
    mov.l @(PTR_ce31fac,pc),r3
    mov 0x08,r6
    mov.b @(r0,r14),r0
    mov 0x15,r5
    extu.b r0,r0
    shll r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ef0:
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
    mov.w @(DAT_ce31f9c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt/s LAB_ce31f60
    mov 0x00,r4
    mov 0x03,r0
    mov.l @(PTR_ce31fb0,pc),r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31f9c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f9e,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31fac,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31f60:
    mov.w @(DAT_ce31fa0,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce31f8a
    mov.b r4,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31f8a
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31fac,pc),r3
    mov 0x0A,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f8a:
    mov.l @(PTR_ce31fb4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31dce
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f98:
    #data 0x01d2
DAT_ce31f9a:
    #data 0x01a3
DAT_ce31f9c:
    #data 0x041c
DAT_ce31f9e:
    #data 0x01f9
DAT_ce31fa0:
    #data 0x0141
    #align4

DAT_ce31fa4:
    #data 0x40200000
PTR_ce31fa8:
    #data loc_8c0dde08
PTR_ce31fac:
    #data loc_8c034e8c
PTR_ce31fb0:
    #data loc_8c0511b4
PTR_ce31fb4:
    #data loc_8c034dee

;=============================================

LAB_ce31fb8:
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
    mov.w @(DAT_ce320ce,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3202a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce320ce,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce320d0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce320d4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce320d8,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3202a:
    mov.l @(PTR_ce320dc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32040
    lds.l @r15+,PR
    mov.l @(PTR_ce320e0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32040:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32046:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce320dc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32060
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce320e4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32060:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce32068:
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
    mov.w @(DAT_ce320ce,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce320b4
    mov.w @(DAT_ce320ce,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)

LAB_ce320b4:
    rts
    nop

LAB_ce320b8:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce320e8,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce320d2,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320ce:
    #data 0x041c
DAT_ce320d0:
    #data 0x01f9
DAT_ce320d2:
    #data 0x02a4
    #align4

PTR_ce320d4:
    #data loc_8c0511b4
PTR_ce320d8:
    #data loc_8c034e8c
PTR_ce320dc:
    #data loc_8c034dee
PTR_ce320e0:
    #data loc_8c05176e
PTR_ce320e4:
    #data loc_8c051648
PTR_ce320e8:
    #data PTR_ce347e4

;=============================================

LAB_ce320ec:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32244,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32248,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3223e,pc),r0
    mov 0x00,r4
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x40,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3224c,pc),r3
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
    mov.l @(DAT_ce32250,pc),r1
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce32254,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fsts FPUL,fr2
    fmov.s @(r0,r14),fr1
    mov r14,r4
    mov.l @(DAT_ce32258,pc),r1
    mov 0x15,r5
    fdiv fr2,fr1
    fldi0 fr3
    lds r1,FPUL
    mov.l @(PTR_ce3225c,pc),r2
    fmov fr1,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr0
    fsts FPUL,fr1
    fdiv fr1,fr0
    fmov fr0,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3223e,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    add 0x0E,r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce32172:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce32068
    mov r4,r14
    mov.l @(PTR_ce32260,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32240,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3219e
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x01,r5
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32264,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3219e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce321a4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce32068
    mov r4,r14
    mov.l @(PTR_ce32260,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321cc
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32268,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce321cc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce321d2:
    mov r4,r3
    mov.l @(PTR_ce3226c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce321e4:
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
    mov.w @(DAT_ce32242,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3223a
    mov.w @(DAT_ce32242,pc),r0
    fldi0 fr4
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)

LAB_ce3223a:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3223e:
    #data 0x01a3
DAT_ce32240:
    #data 0x0141
DAT_ce32242:
    #data 0x041c
    #align4

PTR_ce32244:
    #data loc_8c05218a
PTR_ce32248:
    #data loc_8c056de4
PTR_ce3224c:
    #data loc_8c2896b0
DAT_ce32250:
    #data 0x41800000
DAT_ce32254:
    #data 0x41000000
DAT_ce32258:
    #data 0x42800000
PTR_ce3225c:
    #data loc_8c034e8c
PTR_ce32260:
    #data loc_8c034dee
PTR_ce32264:
    #data loc_8c08fe50
PTR_ce32268:
    #data loc_8c05176e
PTR_ce3226c:
    #data PTR_ce347f0

;=============================================

LAB_ce32270:
    mov.w @(DAT_ce3239c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3228c
    mov.w @(DAT_ce323a0,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3239e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3228c:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce323ac,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce323b0,pc),r0
    mov.l @(DAT_ce323b4,pc),r1
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x57,r3
    lds r1,FPUL
    mov 0x00,r4
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fdiv fr4,fr2
    fmov fr2,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr2
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fldi0 fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce323a2,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce323b8,pc),r3
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.l @r3,r2
    mov.b @(0x2,r14),r0
    add 0x7C,r2
    mov r14,r4
    mov 0x03,r6
    extu.b r0,r0
    shll r0
    mov.w @(r0,r2),r1
    mov 0x16,r5
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce323bc,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce322f4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce323a4,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce323a6,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3239c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32316
    bra LAB_ce32318
    mov 0x02,r3

LAB_ce32316:
    mov 0x00,r3

LAB_ce32318:
    mov.w @(DAT_ce323a8,pc),r0
    mov 0x5C,r1
    add r14,r1
    mov.b r3,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    add r14,r1
    mov.l @(PTR_ce323c0,pc),r3
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
    mov.w @(DAT_ce323aa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32394
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce323cc,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce323aa,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce323a0,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce323c4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce323c8,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32394:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3239c:
    #data 0x0255
DAT_ce3239e:
    #data 0x00ff
DAT_ce323a0:
    #data 0x03f0
DAT_ce323a2:
    #data 0x01a1
DAT_ce323a4:
    #data 0x03f8
DAT_ce323a6:
    #data 0x0328
DAT_ce323a8:
    #data 0x03f1
DAT_ce323aa:
    #data 0x0141
    #align4

PTR_ce323ac:
    #data loc_8c05218a
DAT_ce323b0:
    #data 0x41800000
DAT_ce323b4:
    #data 0x42800000
PTR_ce323b8:
    #data loc_8c2896b0
PTR_ce323bc:
    #data loc_8c034e8c
PTR_ce323c0:
    #data loc_8c034dee
DAT_ce323c4:
    #data 0xc2baaaaa
DAT_ce323c8:
    #data 0x42c96db6
PTR_ce323cc:
    #data loc_8c050834

;=============================================

LAB_ce323d0:
    mov.w @(DAT_ce32504,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32506,pc),r0
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
    mov.l @(PTR_ce3250c,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32442
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32510,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x06,r0
    mov.w r0,@(0x1c,r14)
    mov 0x50,r0
    mov.w r0,@(0x1e,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32442:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32448:
    mov.w @(DAT_ce32504,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32506,pc),r0
    mov.l @(PTR_ce3250c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce321e4
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce32496
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32510,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    mov.w @(DAT_ce32508,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3250a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32496:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce324b0
    mov.l @(PTR_ce32514,pc),r3
    mov 0x04,r0
    mov.w r0,@(0x1c,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce324b0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce324b6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce321e4
    mov r4,r14
    mov.l @(PTR_ce3250c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324d4
    lds.l @r15+,PR
    mov.l @(PTR_ce32518,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce324d4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce324da:
    mov r4,r3
    mov.l @(PTR_ce3251c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce324ec:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce32500
    mov.l @(PTR_ce32520,pc),r3
    mov 0x02,r0
    jmp @r3
    mov.w r0,@(0x1c,r4)

LAB_ce32500:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32504:
    #data 0x03f8
DAT_ce32506:
    #data 0x0328
DAT_ce32508:
    #data 0x03f9
DAT_ce3250a:
    #data 0x0327
    #align4

PTR_ce3250c:
    #data loc_8c034dee
PTR_ce32510:
    #data loc_8c034e8c
PTR_ce32514:
    #data loc_8c090b14
PTR_ce32518:
    #data loc_8c05176e
PTR_ce3251c:
    #data PTR_ce34804
PTR_ce32520:
    #data loc_8c0ddb1c

;=============================================

LAB_ce32524:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32628,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3262c,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3261a,pc),r0
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3261c,pc),r0
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3261e,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bt/s LAB_ce3256e
    extu.b r4,r4
    mova @(DAT_ce32630,pc),r0
    bra LAB_ce32572
    fmov.s @r0,fr4

LAB_ce3256e:
    mova @(DAT_ce32634,pc),r0
    fmov.s @r0,fr4

LAB_ce32572:
    tst r4,r4
    bt LAB_ce3257c
    mova @(DAT_ce32638,pc),r0
    bra LAB_ce32580
    fmov.s @r0,fr5

LAB_ce3257c:
    mova @(DAT_ce3263c,pc),r0
    fmov.s @r0,fr5

LAB_ce32580:
    mov.w @(DAT_ce32620,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3258e
    mov 0x5C,r0
    bra LAB_ce32592
    fmov fr4,fr3

LAB_ce3258e:
    fmov fr4,fr3
    fneg fr3

LAB_ce32592:
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32620,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce325a2
    mov 0x68,r0
    bra LAB_ce325a6
    fmov fr5,fr3

LAB_ce325a2:
    fmov fr5,fr3
    fneg fr3

LAB_ce325a6:
    mov 0x15,r6
    mov.l @(PTR_ce32640,pc),r3
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov r6,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce325b6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32628,pc),r3
    jsr @r3
    mov r4,r14
    bsr FUN_ce324ec
    mov r14,r4
    mov.w @(DAT_ce32622,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32644,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32624,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32604
    mov 0x00,r4
    mov.b @(r0,r14),r3
    mova @(DAT_ce32648,pc),r0
    fmov.s @r0,fr3
    mov 0x34,r2
    lds r3,FPUL
    mov.w @(DAT_ce32624,pc),r0
    float FPUL,fr4
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32620,pc),r0
    mov.b @(r0,r14),r3
    fmul fr3,fr4
    tst r3,r3
    bt/s LAB_ce325fc
    add r14,r2
    fmov fr4,fr2
    bra LAB_ce325fe
    fneg fr2

LAB_ce325fc:
    fmov fr4,fr2

LAB_ce325fe:
    fmov.s @r2,fr3
    fadd fr2,fr3
    fmov.s fr3,@r2

LAB_ce32604:
    mov.w @(DAT_ce32626,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32614
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce32614:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3261a:
    #data 0x041c
DAT_ce3261c:
    #data 0x01f9
DAT_ce3261e:
    #data 0x01fe
DAT_ce32620:
    #data 0x01d2
DAT_ce32622:
    #data 0x01f5
DAT_ce32624:
    #data 0x0140
DAT_ce32626:
    #data 0x0141
    #align4

PTR_ce32628:
    #data loc_8c05218a
PTR_ce3262c:
    #data loc_8c056de4
DAT_ce32630:
    #data 0x41855555
DAT_ce32634:
    #data 0x41c80000
DAT_ce32638:
    #data 0xbf2d5555
DAT_ce3263c:
    #data 0xbf480000
PTR_ce32640:
    #data loc_8c034e8c
PTR_ce32644:
    #data loc_8c034dee
DAT_ce32648:
    #data 0x3fd55555

;=============================================

LAB_ce3264c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32788,pc),r3
    jsr @r3
    mov r4,r14
    bsr FUN_ce324ec
    mov r14,r4
    mov.w @(DAT_ce3277a,pc),r0
    mov 0x02,r3
    mov 0x5C,r1
    mov.b r3,@(r0,r14)
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
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf LAB_ce326c8
    mov.w @(DAT_ce3277c,pc),r0
    mov 0x01,r4
    mov r4,r1
    mov.b @(r0,r14),r2
    add 0xD5,r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    xor r4,r3
    shad r3,r1
    tst r1,r2
    bf LAB_ce326c8
    lds.l @r15+,PR
    mov.l @(PTR_ce3278c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce326c8:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32790,pc),r3
    mov 0x16,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce326dc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3278c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce326f6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32794,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce326f6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce326fe:
    mov r4,r3
    mov.l @(PTR_ce32798,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32710:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32788,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3279c,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3277e,pc),r0
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32780,pc),r0
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32782,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bt/s LAB_ce3275a
    extu.b r4,r4
    mova @(DAT_ce327a0,pc),r0
    bra LAB_ce3275e
    fmov.s @r0,fr4

LAB_ce3275a:
    mova @(DAT_ce327a4,pc),r0
    fmov.s @r0,fr4

LAB_ce3275e:
    tst r4,r4
    bt LAB_ce32768
    mova @(DAT_ce327a8,pc),r0
    bra LAB_ce3276c
    fmov.s @r0,fr5

LAB_ce32768:
    mova @(DAT_ce327ac,pc),r0
    fmov.s @r0,fr5

LAB_ce3276c:
    mov.w @(DAT_ce32784,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce327b0
    mov 0x5C,r0
    bra LAB_ce327b4
    fmov fr4,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3277a:
    #data 0x01f5
DAT_ce3277c:
    #data 0x01fd
DAT_ce3277e:
    #data 0x041c
DAT_ce32780:
    #data 0x01f9
DAT_ce32782:
    #data 0x01fe
DAT_ce32784:
    #data 0x01d2
    #align4

PTR_ce32788:
    #data loc_8c05218a
PTR_ce3278c:
    #data loc_8c034dee
PTR_ce32790:
    #data loc_8c034e8c
PTR_ce32794:
    #data loc_8c051648
PTR_ce32798:
    #data PTR_ce34814
PTR_ce3279c:
    #data loc_8c056de4
DAT_ce327a0:
    #data 0xc1855555
DAT_ce327a4:
    #data 0xc1baaaaa
DAT_ce327a8:
    #data 0x3f2d5555
DAT_ce327ac:
    #data 0x3f480000

;=============================================

LAB_ce327b0:
    fmov fr4,fr3
    fneg fr3

LAB_ce327b4:
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce328ea,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce327c4
    mov 0x68,r0
    bra LAB_ce327c8
    fmov fr5,fr3

LAB_ce327c4:
    fmov fr5,fr3
    fneg fr3

LAB_ce327c8:
    mov 0x15,r6
    mov.l @(PTR_ce328f4,pc),r3
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov r6,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce327d8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce328f8,pc),r3
    jsr @r3
    mov r4,r14
    bsr FUN_ce324ec
    mov r14,r4
    mov.w @(DAT_ce328ec,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce328fc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce328ee,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32826
    mov 0x00,r4
    mov.b @(r0,r14),r3
    mova @(DAT_ce32900,pc),r0
    fmov.s @r0,fr3
    mov 0x34,r2
    lds r3,FPUL
    mov.w @(DAT_ce328ee,pc),r0
    float FPUL,fr4
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce328ea,pc),r0
    mov.b @(r0,r14),r3
    fmul fr3,fr4
    tst r3,r3
    bt/s LAB_ce3281e
    add r14,r2
    fmov fr4,fr2
    bra LAB_ce32820
    fneg fr2

LAB_ce3281e:
    fmov fr4,fr2

LAB_ce32820:
    fmov.s @r2,fr3
    fadd fr2,fr3
    fmov.s fr3,@r2

LAB_ce32826:
    mov.w @(DAT_ce328f0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32836
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce32836:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3283c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce328f8,pc),r3
    jsr @r3
    mov r4,r14
    bsr FUN_ce324ec
    mov r14,r4
    mov.w @(DAT_ce328ec,pc),r0
    mov 0x02,r3
    mov 0x5C,r1
    mov.b r3,@(r0,r14)
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
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf LAB_ce328b4
    mov.w @(DAT_ce328f2,pc),r0
    mov 0x01,r1
    mov.b @(r0,r14),r2
    add 0xD5,r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    shad r3,r1
    tst r1,r2
    bf LAB_ce328b4
    lds.l @r15+,PR
    mov.l @(PTR_ce328fc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce328b4:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce328f4,pc),r3
    mov 0x16,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce328c8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce328fc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce328e2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32904,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce328e2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328ea:
    #data 0x01d2
DAT_ce328ec:
    #data 0x01f5
DAT_ce328ee:
    #data 0x0140
DAT_ce328f0:
    #data 0x0141
DAT_ce328f2:
    #data 0x01fd
    #align4

PTR_ce328f4:
    #data loc_8c034e8c
PTR_ce328f8:
    #data loc_8c05218a
PTR_ce328fc:
    #data loc_8c034dee
DAT_ce32900:
    #data 0x3fd55555
PTR_ce32904:
    #data loc_8c051648

;=============================================

LAB_ce32908:
    mov r4,r3
    mov.l @(PTR_ce32a30,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3291a:
    mov.w @(DAT_ce32a1a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32936
    mov.w @(DAT_ce32a1e,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32a1c,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32936:
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce32a34,pc),r3
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
    mov.l @(PTR_ce32a38,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32a20,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32968
    mova @(DAT_ce32a3c,pc),r0
    bra LAB_ce3296c
    fmov.s @r0,fr3

LAB_ce32968:
    mova @(DAT_ce32a40,pc),r0
    fmov.s @r0,fr3

LAB_ce3296c:
    mov 0x5C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce32a22,pc),r0
    mov 0x06,r6
    mov 0x16,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32a24,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x28,r0
    mov.l @(PTR_ce32a44,pc),r3
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32990:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32a26,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32a28,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32a1a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce329b2
    bra LAB_ce329b4
    mov 0x02,r3

LAB_ce329b2:
    mov 0x00,r3

LAB_ce329b4:
    mov.w @(DAT_ce32a2a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32a48,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32a2c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce329f8
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32a54,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    mov.w @(DAT_ce32a2c,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32a1e,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32a4c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32a50,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce329f8:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a00:
    mov.w @(DAT_ce32a26,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov 0x09,r6
    mov.w @(DAT_ce32a28,pc),r0
    mov.l @(PTR_ce32a44,pc),r3
    mov.b r2,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x16,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a1a:
    #data 0x0255
DAT_ce32a1c:
    #data 0x00ff
DAT_ce32a1e:
    #data 0x03f0
DAT_ce32a20:
    #data 0x01d2
DAT_ce32a22:
    #data 0x041c
DAT_ce32a24:
    #data 0x01f9
DAT_ce32a26:
    #data 0x03f8
DAT_ce32a28:
    #data 0x0328
DAT_ce32a2a:
    #data 0x03f1
DAT_ce32a2c:
    #data 0x0141
    #align4

PTR_ce32a30:
    #data PTR_ce34824
PTR_ce32a34:
    #data loc_8c05115a
PTR_ce32a38:
    #data loc_8c05218a
DAT_ce32a3c:
    #data 0x40baaaaa
DAT_ce32a40:
    #data 0xc0baaaaa
PTR_ce32a44:
    #data loc_8c034e8c
PTR_ce32a48:
    #data loc_8c034dee
DAT_ce32a4c:
    #data 0xc13aaaaa
DAT_ce32a50:
    #data 0x43452492
PTR_ce32a54:
    #data loc_8c050834

;=============================================

LAB_ce32a58:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce32b96,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32b98,pc),r0
    mov.l @(PTR_ce32ba8,pc),r3
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
    mov 0x01,r4
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
    mov.w @(DAT_ce32b9a,pc),r0
    mov.b @(r0,r14),r3
    add 0xD5,r0
    mov.b @(r0,r14),r2
    mov r4,r1
    extu.b r2,r2
    xor r4,r2
    shad r2,r1
    tst r1,r3
    bf LAB_ce32acc
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce32aec

LAB_ce32acc:
    mov.w @(DAT_ce32b9c,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32bac,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32b9e,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32aec:
    mov.l @(PTR_ce32bb0,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32b3e
    mov.l r0,@r15
    mov.b @(0x6,r14),r0
    mov 0x05,r6
    mov.l @(PTR_ce32bb4,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32bb8,pc),r2
    mov 0x0F,r5
    mov 0x02,r6
    jsr @r2
    mov r14,r4
    mova @(DAT_ce32bbc,pc),r0
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce32bc4,pc),r3
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce32bc0,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov 0x10,r0
    mov.w @(DAT_ce32ba0,pc),r3
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32ba2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32bc8,pc),r3
    mov.l @r15,r5
    jsr @r3
    mov r14,r4

LAB_ce32b3e:
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b46:
    mov.w @(DAT_ce32b96,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov 0x02,r14
    mov 0x01,r2
    sts.l PR,@-r15
    mov.b r14,@(r0,r4)
    mov.w @(DAT_ce32b98,pc),r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce32ba4,pc),r0
    mov.b r2,@(r0,r4)
    add 0x03,r0
    mov.b r14,@(r0,r4)
    add 0x08,r0
    mov.b r14,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce32b90
    mov.b @(0x6,r4),r0
    mov 0x03,r6
    mov.l @(PTR_ce32bb8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x40,r0
    mov.w r0,@(0x1c,r4)
    mov 0x04,r0
    mov.w r0,@(0x1e,r4)
    jsr @r3
    mov 0x0F,r5
    mov.l @(PTR_ce32bcc,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce32bd0,pc),r3
    mov.l r14,@r3

LAB_ce32b90:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b96:
    #data 0x03f8
DAT_ce32b98:
    #data 0x0328
DAT_ce32b9a:
    #data 0x01fd
DAT_ce32b9c:
    #data 0x03f9
DAT_ce32b9e:
    #data 0x0327
DAT_ce32ba0:
    #data 0x00c2
DAT_ce32ba2:
    #data 0x01f7
DAT_ce32ba4:
    #data 0x01ea
    #align4

PTR_ce32ba8:
    #data loc_8c034dee
PTR_ce32bac:
    #data loc_8c051648
PTR_ce32bb0:
    #data loc_8c045790
PTR_ce32bb4:
    #data loc_8c02fec4
PTR_ce32bb8:
    #data loc_8c034e8c
DAT_ce32bbc:
    #data 0xc2a6aaaa
DAT_ce32bc0:
    #data 0x431e9249
PTR_ce32bc4:
    #data loc_8c103660
PTR_ce32bc8:
    #data loc_8c0523d8
PTR_ce32bcc:
    #data loc_8c030fec
PTR_ce32bd0:
    #data loc_8c26a8ec

;=============================================

LAB_ce32bd4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32d16,pc),r0
    mov r4,r14
    mov 0x02,r4
    mov.b r4,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce32d18,pc),r0
    mov 0x01,r13
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32d1a,pc),r0
    mov.l @(PTR_ce32d28,pc),r3
    mov.b r13,@(r0,r14)
    add 0x03,r0
    mov.l r4,@r3
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce32caa
    mov.l @(PTR_ce32d2c,pc),r12
    mov 0x04,r0
    jsr @r12
    mov.w r0,@(0x1e,r14)
    mov.l @(PTR_ce32d30,pc),r2
    tst r13,r0
    movt r5
    jsr @r2
    mov r14,r4
    jsr @r12
    nop
    and 0x7F,r0
    lds r0,FPUL
    cmp/pz r0
    bt/s LAB_ce32c32
    float FPUL,fr3
    mov.l @(DAT_ce32d34,pc),r3
    lds r3,FPUL
    fsts FPUL,fr2
    fadd fr2,fr3

LAB_ce32c32:
    mova @(DAT_ce32d38,pc),r0
    fmov.s @r0,fr2
    fmul fr2,fr3
    jsr @r12
    fmov.s fr3,@r15
    and 0x3F,r0
    lds r0,FPUL
    cmp/pz r0
    bt/s LAB_ce32c4e
    float FPUL,fr3
    mov.l @(DAT_ce32d34,pc),r3
    lds r3,FPUL
    fsts FPUL,fr2
    fadd fr2,fr3

LAB_ce32c4e:
    mova @(DAT_ce32d3c,pc),r0
    fmov.s @r0,fr2
    mov 0x04,r0
    fmul fr2,fr3
    jsr @r12
    fmov fr3,@(r0,r15)
    tst r13,r0
    bt LAB_ce32c64
    fmov.s @r15,fr3
    fneg fr3
    fmov.s fr3,@r15

LAB_ce32c64:
    jsr @r12
    nop
    tst r13,r0
    bt LAB_ce32c76
    mov 0x04,r0
    fmov.s @(r0,r15),fr3
    mov 0x04,r0
    fneg fr3
    fmov fr3,@(r0,r15)

LAB_ce32c76:
    mov 0x34,r0
    fmov.s @r15,fr2
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce32d40,pc),r0
    mov.l @(PTR_ce32d44,pc),r3
    mov 0x00,r7
    fadd fr3,fr2
    mov 0x01,r6
    fmov.s fr2,@r15
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fmov.s @(r0,r15),fr1
    mov 0x04,r0
    fadd fr3,fr2
    fadd fr2,fr1
    fmov fr1,@(r0,r15)
    mov 0x3C,r0
    fmov.s @(r0,r14),fr2
    mov 0x08,r0
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce32d1c,pc),r0
    mov.w @(r0,r14),r5
    jsr @r3
    mov r15,r4

LAB_ce32caa:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce32d0a
    mov.b @(0x6,r14),r0
    mov 0x00,r12
    mov.l @(PTR_ce32d48,pc),r3
    mov r14,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0E,r6
    mov.w @(DAT_ce32d1e,pc),r0
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce32d20,pc),r0
    mov.b r12,@(r0,r14)
    add 0x01,r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce32d22,pc),r0
    mov.l @(r0,r14),r13
    jsr @r3
    mov r13,r4
    mov.w @(DAT_ce32d24,pc),r0
    mov 0x08,r3
    mov r12,r5
    mov r12,r6
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce32d4c,pc),r3
    mov.b r12,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32d26,pc),r0
    mov 0x22,r2
    mov.l @(PTR_ce32d50,pc),r3
    mov 0x02,r5
    mov.b r2,@(r0,r13)
    mov 0x40,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32d28,pc),r2
    mov.l r12,@r2

LAB_ce32d0a:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d16:
    #data 0x03f8
DAT_ce32d18:
    #data 0x0328
DAT_ce32d1a:
    #data 0x01ea
DAT_ce32d1c:
    #data 0x0130
DAT_ce32d1e:
    #data 0x03f9
DAT_ce32d20:
    #data 0x0327
DAT_ce32d22:
    #data 0x01c8
DAT_ce32d24:
    #data 0x01b4
DAT_ce32d26:
    #data 0x01a1
    #align4

PTR_ce32d28:
    #data loc_8c26a8ec
PTR_ce32d2c:
    #data loc_8c03319e
PTR_ce32d30:
    #data loc_8c04223a
DAT_ce32d34:
    #data 0x4f800000
DAT_ce32d38:
    #data 0x3fd55555
DAT_ce32d3c:
    #data 0x40092492
DAT_ce32d40:
    #data 0x434db6db
PTR_ce32d44:
    #data loc_8c0fda40
PTR_ce32d48:
    #data loc_8c05a49c
PTR_ce32d4c:
    #data loc_8c02fec4
PTR_ce32d50:
    #data loc_8c0ddc3c

;=============================================

LAB_ce32d54:
    mov.w @(DAT_ce32e9c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32eb0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce32d86
    mov.w @(DAT_ce32e9e,pc),r0
    mov 0x30,r3
    mov r14,r4
    mov.l @(r0,r14),r2
    add 0xE1,r0
    mov.b r3,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce32eb4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32d86:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32d8c:
    mov 0x60,r0
    fmov.s @(r0,r4),fr0
    mov 0x38,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r1
    add r4,r1
    fadd fr0,fr3
    fmov fr3,@(r0,r4)
    mov 0x60,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,fr3
    fmov fr2,@(r0,r4)
    fmov fr0,fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf LAB_ce32dba
    mova @(DAT_ce32eb8,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r4)

LAB_ce32dba:
    rts
    nop

;=============================================

FUN_ce32dbe:
    mov.w @(DAT_ce32ea0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32df0
    mov.b @(r0,r4),r3
    add 0x56,r0
    mov 0x00,r5
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce32ebc,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce32ea0,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce32df0:
    rts
    nop

LAB_ce32df4:
    mov r4,r3
    mov.l @(PTR_ce32ec0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32e06:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32ea2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce32e2c
    mov r14,r4
    mov.w @(DAT_ce32ea6,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32ea4,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32e2c:
    mov.l @(PTR_ce32ec4,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce32ec8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32ea8,pc),r0
    mov 0x00,r13
    mov 0x4F,r3
    mov r13,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov 0x16,r5
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32eaa,pc),r0
    mov.b r13,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32ebc,pc),r3
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
    mov.l @(PTR_ce32ecc,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32e7a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32eac,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32eae,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32ea2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32ed0
    bra LAB_ce32ed2
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e9c:
    #data 0x01f5
DAT_ce32e9e:
    #data 0x020c
DAT_ce32ea0:
    #data 0x014b
DAT_ce32ea2:
    #data 0x0255
DAT_ce32ea4:
    #data 0x00ff
DAT_ce32ea6:
    #data 0x03f0
DAT_ce32ea8:
    #data 0x041c
DAT_ce32eaa:
    #data 0x01f9
DAT_ce32eac:
    #data 0x03f8
DAT_ce32eae:
    #data 0x0328
    #align4

PTR_ce32eb0:
    #data loc_8c034dee
PTR_ce32eb4:
    #data loc_8c051648
DAT_ce32eb8:
    #data 0xbf9a4924
PTR_ce32ebc:
    #data loc_8c2896b0
PTR_ce32ec0:
    #data PTR_ce34840
PTR_ce32ec4:
    #data loc_8c05218a
PTR_ce32ec8:
    #data loc_8c05115a
PTR_ce32ecc:
    #data loc_8c034e8c

;=============================================

LAB_ce32ed0:
    mov 0x00,r3

LAB_ce32ed2:
    mov.w @(DAT_ce32f84,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32f90,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32f86,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32f52
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32f86,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32f88,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32f10
    mova @(DAT_ce32f94,pc),r0
    bra LAB_ce32f14
    fmov.s @r0,fr3

LAB_ce32f10:
    mova @(DAT_ce32f98,pc),r0
    fmov.s @r0,fr3

LAB_ce32f14:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32f88,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32f26
    mova @(DAT_ce32f9c,pc),r0
    bra LAB_ce32f2a
    fmov.s @r0,fr3

LAB_ce32f26:
    mova @(DAT_ce32fa0,pc),r0
    fmov.s @r0,fr3

LAB_ce32f2a:
    mov 0x68,r0
    mov.l @(PTR_ce32fac,pc),r3
    fmov fr3,@(r0,r14)
    mov r15,r5
    mov.w @(DAT_ce32f8a,pc),r0
    mov 0x01,r6
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32fa4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32fa8,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32f52:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f5a:
    mov.w @(DAT_ce32f8c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce32f8e,pc),r0
    mov 0x07,r6
    mov.l @(PTR_ce32fb0,pc),r3
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32dbe
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f84:
    #data 0x03f1
DAT_ce32f86:
    #data 0x0141
DAT_ce32f88:
    #data 0x01d2
DAT_ce32f8a:
    #data 0x03f0
DAT_ce32f8c:
    #data 0x03f8
DAT_ce32f8e:
    #data 0x0328
    #align4

PTR_ce32f90:
    #data loc_8c034dee
DAT_ce32f94:
    #data 0x41855555
DAT_ce32f98:
    #data 0xc1855555
DAT_ce32f9c:
    #data 0xbf200000
DAT_ce32fa0:
    #data 0x3f200000
DAT_ce32fa4:
    #data 0xc1c80000
DAT_ce32fa8:
    #data 0x42c96db6
PTR_ce32fac:
    #data loc_8c050834
PTR_ce32fb0:
    #data loc_8c034e8c

;=============================================

LAB_ce32fb4:
    mov.w @(DAT_ce33098,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3309a,pc),r0
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov fr2,fr3
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf/s LAB_ce32ffc
    mov r14,r4
    mov 0x5C,r0
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce32ffc:
    mov.l @(PTR_ce330a0,pc),r3
    jsr @r3
    nop
    bsr FUN_ce32dbe
    mov r14,r4
    mov.w @(DAT_ce3309c,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt/s LAB_ce33012
    mov 0x00,r4
    mov.b r4,@(r0,r14)

LAB_ce33012:
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce33048
    mov.w @(DAT_ce3309c,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3309e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3302a
    mova @(DAT_ce330a4,pc),r0
    bra LAB_ce3302e
    fmov.s @r0,fr3

LAB_ce3302a:
    mova @(DAT_ce330a8,pc),r0
    fmov.s @r0,fr3

LAB_ce3302e:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3309e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33040
    mova @(DAT_ce330ac,pc),r0
    bra LAB_ce33044
    fmov.s @r0,fr3

LAB_ce33040:
    mova @(DAT_ce330b0,pc),r0
    fmov.s @r0,fr3

LAB_ce33044:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce33048:
    mov.w @(DAT_ce3309c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33092
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3309e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33064
    mova @(DAT_ce330b4,pc),r0
    bra LAB_ce33068
    fmov.s @r0,fr3

LAB_ce33064:
    mova @(DAT_ce330b8,pc),r0
    fmov.s @r0,fr3

LAB_ce33068:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3309e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3307a
    mova @(DAT_ce330ac,pc),r0
    bra LAB_ce3307e
    fmov.s @r0,fr3

LAB_ce3307a:
    mova @(DAT_ce330b0,pc),r0
    fmov.s @r0,fr3

LAB_ce3307e:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce330bc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce330c0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce33092:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33098:
    #data 0x03f8
DAT_ce3309a:
    #data 0x0328
DAT_ce3309c:
    #data 0x0141
DAT_ce3309e:
    #data 0x01d2
    #align4

PTR_ce330a0:
    #data loc_8c034dee
DAT_ce330a4:
    #data 0x41855555
DAT_ce330a8:
    #data 0xc1855555
DAT_ce330ac:
    #data 0xbf200000
DAT_ce330b0:
    #data 0x3f200000
DAT_ce330b4:
    #data 0x41a00000
DAT_ce330b8:
    #data 0xc1a00000
DAT_ce330bc:
    #data 0x42092492
DAT_ce330c0:
    #data 0xbf892492

;=============================================

LAB_ce330c4:
    mov.w @(DAT_ce331f6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce331f8,pc),r0
    mov.l @(PTR_ce33204,pc),r3
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce32dbe
    mov r14,r4
    mov.w @(DAT_ce331fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33114
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33208,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33114:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3311a:
    mov.w @(DAT_ce331f6,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov 0x5C,r1
    mov.w @(DAT_ce331f8,pc),r0
    add r4,r1
    mov.b r2,@(r0,r4)
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    add r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x5C,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x68,r0
    fmov fr2,fr3
    fmov.s @(r0,r4),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf LAB_ce33172
    mov.b @(0x6,r4),r0
    mov 0x00,r5
    fmov fr3,fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce331fc,pc),r0
    mov.b r5,@(r0,r4)
    add 0xFF,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce331fe,pc),r0
    mov.b r5,@(r0,r4)
    add 0x01,r0
    mov.b r5,@(r0,r4)

LAB_ce33172:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce32d8c
    mov r4,r14
    mov.w @(DAT_ce33200,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce331a2
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3320c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33200,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce331be
    mov.l @r15+,r14

LAB_ce331a2:
    mov.w @(DAT_ce331fa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce331b8
    mov.l @(PTR_ce33204,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32dbe
    mov.l @r15+,r14

LAB_ce331b8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce331be:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33204,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce331d8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33210,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce331d8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce331e0:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33214,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce33202,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331f6:
    #data 0x03f8
DAT_ce331f8:
    #data 0x0328
DAT_ce331fa:
    #data 0x0141
DAT_ce331fc:
    #data 0x03f9
DAT_ce331fe:
    #data 0x0327
DAT_ce33200:
    #data 0x041c
DAT_ce33202:
    #data 0x02a4
    #align4

PTR_ce33204:
    #data loc_8c034dee
PTR_ce33208:
    #data loc_8c053082
PTR_ce3320c:
    #data loc_8c0511b4
PTR_ce33210:
    #data loc_8c051648
PTR_ce33214:
    #data PTR_ce34860

;=============================================

LAB_ce33218:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3333e,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33238
    mov.w @(DAT_ce33342,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33340,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33238:
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce33354,pc),r3
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
    mov.l @(PTR_ce33358,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33344,pc),r0
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33346,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33348,pc),r0
    mov.l @r15,r3
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33278
    bra LAB_ce3327a
    mov 0x10,r0

LAB_ce33278:
    mov 0x18,r0

LAB_ce3327a:
    mov.b r0,@(0x3,r3)
    mov 0x28,r0
    mov.w r0,@(0x1c,r14)
    mov 0x55,r3
    mov.w @(DAT_ce3334a,pc),r0
    mov 0x16,r5
    mov 0x01,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3335c,pc),r3
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
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33360,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce332b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3334c,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3334e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3333e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce332d6
    bra LAB_ce332d8
    mov 0x02,r3

LAB_ce332d6:
    mov 0x00,r3

LAB_ce332d8:
    mov.w @(DAT_ce33350,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33364,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33352,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3331c
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce33370,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce33352,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33342,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33368,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3336c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce3331c:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33324:
    mov.w @(DAT_ce3334c,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov 0x08,r6
    mov.w @(DAT_ce3334e,pc),r0
    mov.l @(PTR_ce33360,pc),r3
    mov.b r2,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x16,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3333e:
    #data 0x0255
DAT_ce33340:
    #data 0x00ff
DAT_ce33342:
    #data 0x03f0
DAT_ce33344:
    #data 0x041c
DAT_ce33346:
    #data 0x01f9
DAT_ce33348:
    #data 0x0525
DAT_ce3334a:
    #data 0x01a1
DAT_ce3334c:
    #data 0x03f8
DAT_ce3334e:
    #data 0x0328
DAT_ce33350:
    #data 0x03f1
DAT_ce33352:
    #data 0x0141
    #align4

PTR_ce33354:
    #data loc_8c05218a
PTR_ce33358:
    #data loc_8c05115a
PTR_ce3335c:
    #data loc_8c2896b0
PTR_ce33360:
    #data loc_8c034e8c
PTR_ce33364:
    #data loc_8c034dee
DAT_ce33368:
    #data 0x4276aaaa
DAT_ce3336c:
    #data 0x42d64924
PTR_ce33370:
    #data loc_8c050834

;=============================================

LAB_ce33374:
    mov.w @(DAT_ce3347a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    fmov.s fr15,@-r15
    mov 0x05,r2
    fmov.s fr14,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3347c,pc),r0
    mov.l @(PTR_ce33484,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3347e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce333c4
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33490,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce33488,pc),r0
    fmov.s @r0,fr14
    mova @(DAT_ce3348c,pc),r0
    fmov.s @r0,fr15
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    fmov fr14,fr4
    mov 0x00,r5
    fmov fr15,fr5
    mov r14,r4
    fmov.s @r15+,fr14
    mov.l @(PTR_ce33494,pc),r2
    fmov.s @r15+,fr15
    jmp @r2
    mov.l @r15+,r14

LAB_ce333c4:
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce333ce:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3347a,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3347c,pc),r0
    mov.l @(PTR_ce33484,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0x3,r2),r0
    cmp/pl r0
    bf LAB_ce3340a
    mov.l @(PTR_ce33498,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce3340a
    mov.l @r15,r2
    mov.b @(0x3,r2),r0
    add 0xFF,r0
    mov.b r0,@(0x3,r2)
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce3340a:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce3343e
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov 0x16,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r6
    mov.w @(DAT_ce33480,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33482,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3349c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3343e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33446:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33484,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33460
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce334a0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33460:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33468:
    mov r4,r3
    mov.l @(PTR_ce334a4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3347a:
    #data 0x03f8
DAT_ce3347c:
    #data 0x0328
DAT_ce3347e:
    #data 0x0141
DAT_ce33480:
    #data 0x03f9
DAT_ce33482:
    #data 0x0327
    #align4

PTR_ce33484:
    #data loc_8c034dee
DAT_ce33488:
    #data 0x43430000
DAT_ce3348c:
    #data 0x42e32492
PTR_ce33490:
    #data loc_8c0dd938
PTR_ce33494:
    #data loc_8c09042c
PTR_ce33498:
    #data loc_8c055d54
PTR_ce3349c:
    #data loc_8c034e8c
PTR_ce334a0:
    #data loc_8c051648
PTR_ce334a4:
    #data PTR_ce34878

;=============================================

LAB_ce334a8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce335f4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce335f8,pc),r2
    mov 0x0A,r5
    jsr @r2
    mov r14,r4
    mov 0x68,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x15,r3
    mov.w @(DAT_ce335e6,pc),r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce335fc,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce335e8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33500
    mova @(DAT_ce33600,pc),r0
    bra LAB_ce33504
    fmov.s @r0,fr3

LAB_ce33500:
    mova @(DAT_ce33604,pc),r0
    fmov.s @r0,fr3

LAB_ce33504:
    mov 0x5C,r0
    mov.l @(PTR_ce3360c,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33608,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce335ea,pc),r0
    mov.b @(r0,r14),r6
    add 0x19,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33610,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33528:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33614,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce335ec,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce33572
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

LAB_ce33572:
    mov.w @(DAT_ce335ee,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce335a6
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce335ee,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce335f0,pc),r0
    mov.b r3,@(r0,r14)
    add 0xAA,r0
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce3360c,pc),r3
    add 0x1B,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33618,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce335a6:
    lds.l @r15+,PR
    mov.l @(PTR_ce33610,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce335b0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33614,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce335dc
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3361c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce335dc:
    lds.l @r15+,PR
    mov.l @(PTR_ce33610,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce335e6:
    #data 0x01a1
DAT_ce335e8:
    #data 0x01d2
DAT_ce335ea:
    #data 0x01a3
DAT_ce335ec:
    #data 0x0141
DAT_ce335ee:
    #data 0x041c
DAT_ce335f0:
    #data 0x01f9
    #align4

PTR_ce335f4:
    #data loc_8c05218a
PTR_ce335f8:
    #data loc_8c056de4
PTR_ce335fc:
    #data loc_8c2896b0
DAT_ce33600:
    #data 0x41555555
DAT_ce33604:
    #data 0xc1555555
DAT_ce33608:
    #data 0xc1892492
PTR_ce3360c:
    #data loc_8c034e8c
PTR_ce33610:
    #data LAB_ce3171c
PTR_ce33614:
    #data loc_8c034dee
PTR_ce33618:
    #data loc_8c0511b4
PTR_ce3361c:
    #data loc_8c051648

;=============================================

LAB_ce33620:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce33642
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce33754,pc),r3
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x3C,r0
    bra LAB_ce33662
    mov.w r0,@(0x1c,r14)

LAB_ce33642:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce33658
    lds.l @r15+,PR
    mov.l @(PTR_ce33758,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33658:
    lds.l @r15+,PR
    mov.l @(PTR_ce3375c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33662:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33668:
    mov r4,r3
    mov.l @(PTR_ce33760,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3367a:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce33764,pc),r3
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
    mov.w @(DAT_ce33748,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3374a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33768,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3376c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3374c,pc),r0
    mov 0x59,r2
    mov.l @(PTR_ce33770,pc),r3
    mov 0x0B,r6
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x14,r5
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
    mov.l @(PTR_ce33754,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce336f0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce3375c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33710
    mov.l @(PTR_ce33758,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33710:
    mov.w @(DAT_ce3374e,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce33732
    mov 0x00,r2
    mov.l @(PTR_ce3377c,pc),r3
    mov.b r2,@(r0,r14)
    mova @(DAT_ce33774,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33778,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce33732:
    mov.w @(DAT_ce33750,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33790
    mov.w @(DAT_ce33752,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33784
    mova @(DAT_ce33780,pc),r0
    bra LAB_ce33788
    fmov.s @r0,fr4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33748:
    #data 0x01f9
DAT_ce3374a:
    #data 0x041c
DAT_ce3374c:
    #data 0x01a1
DAT_ce3374e:
    #data 0x0141
DAT_ce33750:
    #data 0x0140
DAT_ce33752:
    #data 0x01d2
    #align4

PTR_ce33754:
    #data loc_8c034e8c
PTR_ce33758:
    #data loc_8c051648
PTR_ce3375c:
    #data loc_8c034dee
PTR_ce33760:
    #data PTR_ce34884
PTR_ce33764:
    #data loc_8c035162
PTR_ce33768:
    #data loc_8c05218a
PTR_ce3376c:
    #data loc_8c05115a
PTR_ce33770:
    #data loc_8c2896b0
DAT_ce33774:
    #data 0x42195555
DAT_ce33778:
    #data 0x434b9249
PTR_ce3377c:
    #data loc_8c050ea4
DAT_ce33780:
    #data 0x40555555

;=============================================

LAB_ce33784:
    mova @(DAT_ce33874,pc),r0
    fmov.s @r0,fr4

LAB_ce33788:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce33790:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33798:
    mov.w @(DAT_ce33868,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce337c8
    mov 0x00,r5
    mov.b r5,@(r0,r4)
    add 0x60,r0
    mov 0x53,r3
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce33878,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce337c8:
    rts
    nop

LAB_ce337cc:
    mov r4,r3
    mov.l @(PTR_ce3387c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce337de:
    mov.w @(DAT_ce3386a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce337fa
    mov.w @(DAT_ce3386e,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3386c,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce337fa:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33880,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33884,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33888,pc),r3
    mov 0x03,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33870,pc),r0
    mov 0x53,r3
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov 0x0A,r6
    fmov fr3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce33872,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33878,pc),r3
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
    mov.l @(PTR_ce3388c,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce33850:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3386a,pc),r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33890
    bra LAB_ce33892
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33868:
    #data 0x0141
DAT_ce3386a:
    #data 0x0255
DAT_ce3386c:
    #data 0x00ff
DAT_ce3386e:
    #data 0x03f0
DAT_ce33870:
    #data 0x041c
DAT_ce33872:
    #data 0x01a1
    #align4

DAT_ce33874:
    #data 0xc0555555
PTR_ce33878:
    #data loc_8c2896b0
PTR_ce3387c:
    #data PTR_ce3488c
PTR_ce33880:
    #data loc_8c05218a
PTR_ce33884:
    #data loc_8c05115a
PTR_ce33888:
    #data loc_8c056de4
PTR_ce3388c:
    #data loc_8c034e8c

;=============================================

LAB_ce33890:
    mov 0x00,r3

LAB_ce33892:
    mov.w @(DAT_ce339d4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce339e4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce339d6,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce33908
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x2D,r0
    mov.w r0,@(0x1c,r14)
    mov r13,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce339e8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce339ec,pc),r3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce339f0,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce339d8,pc),r0
    mov r15,r5
    mov.l @(PTR_ce339fc,pc),r3
    mov 0x01,r6
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce339f4,pc),r0
    fmov.s @r15,fr2
    fmov.s @r0,fr3
    mova @(DAT_ce339f8,pc),r0
    fadd fr3,fr2
    fmov.s fr2,@r15
    fmov.s @r0,fr2
    mov 0x04,r0
    fmov.s @(r0,r15),fr1
    mov 0x04,r0
    fadd fr2,fr1
    fmov fr1,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce33908:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33912:
    mov.w @(DAT_ce339da,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x60,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce339dc,pc),r0
    mov.l @(PTR_ce339e4,pc),r3
    mov.b r2,@(r0,r14)
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
    bsr FUN_ce33798
    mov r14,r4
    mov.w @(DAT_ce339de,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33958
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)

LAB_ce33958:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce339ce
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce339a4
    mov.w @(DAT_ce339e0,pc),r0
    mov 0x54,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33a00,pc),r3
    mov 0x0B,r6
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov 0x16,r5
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce33a04,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce339a4:
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce33a04,pc),r3
    mov 0x05,r6
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
    mova @(DAT_ce33a08,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce339ce:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce339d4:
    #data 0x03f1
DAT_ce339d6:
    #data 0x0141
DAT_ce339d8:
    #data 0x03f0
DAT_ce339da:
    #data 0x03f8
DAT_ce339dc:
    #data 0x0328
DAT_ce339de:
    #data 0x019e
DAT_ce339e0:
    #data 0x01a1
    #align4

PTR_ce339e4:
    #data loc_8c034dee
DAT_ce339e8:
    #data 0x41892492
PTR_ce339ec:
    #data loc_8c053082
PTR_ce339f0:
    #data loc_8c0dde08
DAT_ce339f4:
    #data 0x42055555
DAT_ce339f8:
    #data 0x42ab6db6
PTR_ce339fc:
    #data loc_8c050834
PTR_ce33a00:
    #data loc_8c2896b0
PTR_ce33a04:
    #data loc_8c034e8c
DAT_ce33a08:
    #data 0xbf4db6db

;=============================================

LAB_ce33a0c:
    mov.w @(DAT_ce33b2a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33b2c,pc),r0
    mov.l @(PTR_ce33b38,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33a54
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce33b3c,pc),r3
    mov 0x05,r6
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
    mova @(DAT_ce33b40,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce33a54:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33a5a:
    mov.w @(DAT_ce33b2a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov 0x60,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33b2c,pc),r0
    mov.b r2,@(r0,r14)
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
    mov.w @(DAT_ce33b2e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33acc
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    mov.l @(PTR_ce33b3c,pc),r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x07,r6
    mov.w @(DAT_ce33b2e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33b30,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33b44,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33b32,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33b34,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    bra LAB_ce33ad8
    mov.b r13,@(r0,r14)

LAB_ce33acc:
    lds.l @r15+,PR
    mov.l @(PTR_ce33b38,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33ad8:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33ae0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33b38,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33b0c
    mov.w @(DAT_ce33b32,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce33b48,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33b34,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33b0c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33b12:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33b30,pc),r1
    mov.l @(PTR_ce33b4c,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33b2a:
    #data 0x03f8
DAT_ce33b2c:
    #data 0x0328
DAT_ce33b2e:
    #data 0x041c
DAT_ce33b30:
    #data 0x01f9
DAT_ce33b32:
    #data 0x03f9
DAT_ce33b34:
    #data 0x0327
    #align4

PTR_ce33b38:
    #data loc_8c034dee
PTR_ce33b3c:
    #data loc_8c034e8c
DAT_ce33b40:
    #data 0xbf4db6db
PTR_ce33b44:
    #data loc_8c0511b4
PTR_ce33b48:
    #data loc_8c051648
PTR_ce33b4c:
    #data PTR_ce348a4

;=============================================

LAB_ce33b50:
    mov.w @(DAT_ce33c44,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33c46,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33bc0
    mov.w @(DAT_ce33c48,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33b90
    mov.w @(DAT_ce33c4a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33b90
    mov.l @(PTR_ce33c50,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33bc0
    mov r0,r4
    bra LAB_ce33bb2
    mov 0x01,r2

LAB_ce33b90:
    mov.w @(DAT_ce33c48,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33bc0
    mov.w @(DAT_ce33c4a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33bc0
    mov.l @(PTR_ce33c50,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33bc0
    mov r0,r4
    mov 0x00,r2

LAB_ce33bb2:
    mov.w @(DAT_ce33c4c,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33bc0:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33bc8:
    rts
    mov 0x00,r0

LAB_ce33bcc:
    mov.w @(DAT_ce33c44,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33c46,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33c24
    mov.w @(DAT_ce33c48,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33c24
    mov.w @(DAT_ce33c4a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33c24
    mova @(DAT_ce33c54,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce33c24
    mov.l @(PTR_ce33c50,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33c24
    mov r0,r4
    mov.w @(DAT_ce33c4c,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33c24:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33c2c:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33c4c,pc),r1
    mov.l @(PTR_ce33c58,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33c44:
    #data 0x01fa
DAT_ce33c46:
    #data 0x0c00
DAT_ce33c48:
    #data 0x01fe
DAT_ce33c4a:
    #data 0x01a3
DAT_ce33c4c:
    #data 0x01f7
    #align4

PTR_ce33c50:
    #data loc_8c045790
DAT_ce33c54:
    #data 0x43092492
PTR_ce33c58:
    #data PTR_ce348b4

;=============================================

LAB_ce33c5c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33dac,pc),r0
    mov r4,r14
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33dae,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf/s LAB_ce33c92
    mov 0x05,r6
    mov.w @(DAT_ce33dac,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce33dae,pc),r0
    extu.b r2,r2
    mov.w r2,@(r0,r14)

LAB_ce33c92:
    mov.l @(PTR_ce33db4,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33db8,pc),r0
    mov.l @(PTR_ce33dc0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33dbc,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33db0,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33dc4,pc),r3
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
    mov.l @(PTR_ce33dc8,pc),r3
    mov 0x0F,r5
    fmov fr4,@(r0,r14)
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33ce0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33dac,pc),r0
    mov r4,r14
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33dae,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf/s LAB_ce33d16
    mov 0x05,r6
    mov.w @(DAT_ce33dac,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce33dae,pc),r0
    extu.b r2,r2
    mov.w r2,@(r0,r14)

LAB_ce33d16:
    mov.l @(PTR_ce33db4,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33db8,pc),r0
    mov.l @(PTR_ce33dc0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33dbc,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33db0,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33dc4,pc),r3
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
    mov.l @(PTR_ce33dc8,pc),r3
    mov 0x0F,r5
    fmov fr4,@(r0,r14)
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33d64:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33db4,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mova @(DAT_ce33db8,pc),r0
    mov.l @(PTR_ce33dc0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33dbc,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33db0,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33dc4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33dc8,pc),r3
    mov 0x00,r0
    mov 0x0F,r5
    mov.b r0,@(0x6,r14)
    mov 0x04,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33dac:
    #data 0x01d2
DAT_ce33dae:
    #data 0x0130
DAT_ce33db0:
    #data 0x01a0
    #align4

PTR_ce33db4:
    #data loc_8c02fec4
DAT_ce33db8:
    #data 0xc2a6aaaa
DAT_ce33dbc:
    #data 0x431e9249
PTR_ce33dc0:
    #data loc_8c103660
PTR_ce33dc4:
    #data loc_8c056f2a
PTR_ce33dc8:
    #data loc_8c034e8c

;=============================================

LAB_ce33dcc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(DAT_ce33f08,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mova @(DAT_ce33f0c,pc),r0
    mov.l @(PTR_ce33f14,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33f10,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33efe,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33f18,pc),r3
    mov 0x08,r5
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
    mov.l @(PTR_ce33f1c,pc),r3
    mov 0x0F,r5
    fmov fr4,@(r0,r14)
    mov 0x06,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33e24:
    mov.w @(DAT_ce33f00,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33f20,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33e42:
    mov.w @(DAT_ce33f02,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33e80
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce33f04,pc),r0
    mov 0x00,r6
    mov 0x02,r2
    mov r6,r5
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(DAT_ce33f08,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33f06,pc),r0
    mov 0x20,r2
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)

LAB_ce33e80:
    mov.l @(PTR_ce33f24,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33e98
    lds.l @r15+,PR
    mov.l @(PTR_ce33f28,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33e98:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33ea0:
    mov.w @(DAT_ce33f02,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33ede
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce33f04,pc),r0
    mov 0x00,r6
    mov 0x02,r2
    mov r6,r5
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(DAT_ce33f08,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33f06,pc),r0
    mov 0x21,r2
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)

LAB_ce33ede:
    mov.l @(PTR_ce33f24,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33ef6
    lds.l @r15+,PR
    mov.l @(PTR_ce33f28,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33ef6:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33efe:
    #data 0x01a0
DAT_ce33f00:
    #data 0x01ea
DAT_ce33f02:
    #data 0x0141
DAT_ce33f04:
    #data 0x01c8
DAT_ce33f06:
    #data 0x01a1
    #align4

DAT_ce33f08:
    #data 0x8c02fec4
DAT_ce33f0c:
    #data 0xc2a6aaaa
DAT_ce33f10:
    #data 0x431e9249
PTR_ce33f14:
    #data loc_8c103660
PTR_ce33f18:
    #data loc_8c056de4
PTR_ce33f1c:
    #data loc_8c034e8c
PTR_ce33f20:
    #data PTR_ce348c8
PTR_ce33f24:
    #data loc_8c034dee
PTR_ce33f28:
    #data loc_8c051648

;=============================================

LAB_ce33f2c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce33ff0
    mov 0x5C,r1
    mov.l @(PTR_ce34050,pc),r3
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
    mov.w @(DAT_ce34046,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3403c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34046,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s fr3,@r15
    fmov.s @(r0,r14),fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x3C,r0
    fmov.s @(r0,r14),fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce34048,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33fb8
    mova @(DAT_ce34054,pc),r0
    bra LAB_ce33fbc
    fmov.s @r0,fr3

LAB_ce33fb8:
    mova @(DAT_ce34058,pc),r0
    fmov.s @r0,fr3

LAB_ce33fbc:
    mov.w @(DAT_ce3404a,pc),r0
    fmov.s @r15,fr2
    mov.l @(PTR_ce3405c,pc),r3
    fadd fr3,fr2
    fmov.s fr2,@r15
    mov.l @(r0,r14),r5
    mov.b @(0x2,r5),r0
    extu.b r0,r5
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce34060,pc),r4
    mov 0x02,r0
    mov.l @(PTR_ce34064,pc),r3
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3404a,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    mov.l @(PTR_ce34068,pc),r2
    mov 0x0F,r5
    mov 0x05,r6
    jsr @r2
    mov r14,r4
    bra LAB_ce3403c
    nop

LAB_ce33ff0:
    mov.l @(PTR_ce34050,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34006
    mov.l @(PTR_ce3406c,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce3403c
    nop

LAB_ce34006:
    mov.w @(DAT_ce3404c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3403c
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce3404a,pc),r0
    mov 0x00,r6
    mov 0x02,r2
    mov r6,r5
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce34070,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3404e,pc),r0
    mov 0x24,r2
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)

LAB_ce3403c:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34046:
    #data 0x041c
DAT_ce34048:
    #data 0x01d2
DAT_ce3404a:
    #data 0x01c8
DAT_ce3404c:
    #data 0x0141
DAT_ce3404e:
    #data 0x01a1
    #align4

PTR_ce34050:
    #data loc_8c034dee
DAT_ce34054:
    #data 0x41555555
DAT_ce34058:
    #data 0xc1555555
PTR_ce3405c:
    #data loc_8c100672
PTR_ce34060:
    #data loc_8c26a518
PTR_ce34064:
    #data loc_8c0423fc
PTR_ce34068:
    #data loc_8c034e8c
PTR_ce3406c:
    #data loc_8c051648
PTR_ce34070:
    #data loc_8c02fec4

;=============================================

LAB_ce34074:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce340b6
    fldi0 fr15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34192,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3409a
    mova @(DAT_ce341a0,pc),r0
    bra LAB_ce3409e
    fmov.s @r0,fr3

LAB_ce3409a:
    mova @(DAT_ce341a4,pc),r0
    fmov.s @r0,fr3

LAB_ce3409e:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce341a8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce341ac,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce340b6:
    mov.l @(PTR_ce341b0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce340d0
    lds.l @r15+,PR
    mov.l @(PTR_ce341b4,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce340d0:
    mov.w @(DAT_ce34194,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34106
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce34196,pc),r0
    mov 0x00,r6
    mov 0x02,r2
    mov r6,r5
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce341b8,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34198,pc),r0
    mov 0x23,r2
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)

LAB_ce34106:
    mov.w @(DAT_ce3419a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce34162
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
    mov.w @(DAT_ce3419c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce34162
    mov.w @(DAT_ce3419c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)

LAB_ce34162:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3416c:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce3419e,pc),r1
    mov.l @(PTR_ce341bc,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce34184:
    mov.w @(DAT_ce34196,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce341c0,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34192:
    #data 0x01d2
DAT_ce34194:
    #data 0x0141
DAT_ce34196:
    #data 0x01c8
DAT_ce34198:
    #data 0x01a1
DAT_ce3419a:
    #data 0x0140
DAT_ce3419c:
    #data 0x041c
DAT_ce3419e:
    #data 0x01f7
    #align4

DAT_ce341a0:
    #data 0xc0f00000
DAT_ce341a4:
    #data 0x40f00000
DAT_ce341a8:
    #data 0x40892492
DAT_ce341ac:
    #data 0xbe892492
PTR_ce341b0:
    #data loc_8c034dee
PTR_ce341b4:
    #data loc_8c051648
PTR_ce341b8:
    #data loc_8c02fec4
PTR_ce341bc:
    #data PTR_ce348dc
PTR_ce341c0:
    #data loc_8c04cc1c

;=============================================

LAB_ce341c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce341f8
    mov r4,r14
    tst r0,r0
    bf LAB_ce341e8
    bsr FUN_ce34230
    mov r14,r4
    tst r0,r0
    bf LAB_ce341e8
    bsr FUN_ce34266
    mov r14,r4
    tst r0,r0
    bf LAB_ce341e8
    bsr FUN_ce342bc
    mov r14,r4
    tst r0,r0
    bt LAB_ce341f0

LAB_ce341e8:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce341f0:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce341f8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce342a8,pc),r5
    mov.w @(DAT_ce3429c,pc),r6
    mov.l @(PTR_ce342ac,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3421a
    mov.w @(DAT_ce3429e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    mov 0x03,r2
    cmp/ge r2,r3
    bt LAB_ce34222

LAB_ce3421a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce34222:
    mov.w @(DAT_ce342a0,pc),r0
    mov 0x08,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce34230:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce342b0,pc),r5
    mov.w @(DAT_ce342a2,pc),r6
    mov.l @(PTR_ce342b4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce34250
    mov.w @(DAT_ce3429e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce34258

LAB_ce34250:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce34258:
    mov.w @(DAT_ce342a0,pc),r0
    mov 0x0D,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce34266:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce342b8,pc),r5
    mov.w @(DAT_ce342a4,pc),r6
    mov.l @(PTR_ce342b4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce34286
    mov.w @(DAT_ce3429e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3428e

LAB_ce34286:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3428e:
    mov.w @(DAT_ce342a0,pc),r0
    mov 0x0B,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3429c:
    #data 0x03ac
DAT_ce3429e:
    #data 0x040c
DAT_ce342a0:
    #data 0x0258
DAT_ce342a2:
    #data 0x038c
DAT_ce342a4:
    #data 0x03b4
    #align4

PTR_ce342a8:
    #data DAT_ce34660
PTR_ce342ac:
    #data loc_8c0555c8
PTR_ce342b0:
    #data DAT_ce34630
PTR_ce342b4:
    #data loc_8c054e58
PTR_ce342b8:
    #data DAT_ce34640

;=============================================

FUN_ce342bc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce343a4,pc),r5
    mov.w @(DAT_ce34398,pc),r6
    mov.l @(PTR_ce343a8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce342dc
    mov.w @(DAT_ce3439a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce342e4

LAB_ce342dc:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce342e4:
    mov.w @(DAT_ce3439c,pc),r0
    mov 0x11,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce342f2:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3439e,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce34312
    cmp/eq 0x01,r0
    bt LAB_ce3431a
    cmp/eq 0x02,r0
    bt LAB_ce34322
    bra LAB_ce34328
    nop

LAB_ce34312:
    mov.w @(DAT_ce343a0,pc),r0
    mov 0x0D,r3
    bra LAB_ce34328
    mov.b r3,@(r0,r4)

LAB_ce3431a:
    mov.w @(DAT_ce343a0,pc),r0
    mov 0x0B,r1
    bra LAB_ce34328
    mov.b r1,@(r0,r4)

LAB_ce34322:
    mov.w @(DAT_ce343a0,pc),r0
    mov 0x11,r2
    mov.b r2,@(r0,r4)

LAB_ce34328:
    mov.l @(PTR_ce343ac,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce3432e:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3439e,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce3434e
    cmp/eq 0x01,r0
    bt LAB_ce34356
    cmp/eq 0x02,r0
    bt LAB_ce3435e
    bra LAB_ce34364
    nop

LAB_ce3434e:
    mov.w @(DAT_ce343a0,pc),r0
    mov 0x0D,r3
    bra LAB_ce34364
    mov.b r3,@(r0,r4)

LAB_ce34356:
    mov.w @(DAT_ce343a0,pc),r0
    mov 0x0B,r1
    bra LAB_ce34364
    mov.b r1,@(r0,r4)

LAB_ce3435e:
    mov.w @(DAT_ce343a0,pc),r0
    mov 0x11,r2
    mov.b r2,@(r0,r4)

LAB_ce34364:
    mov.l @(PTR_ce343ac,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce3436a:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3439e,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3438c
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce34392
    cmp/eq 0x02,r0
    bt LAB_ce343b0
    bra LAB_ce343ba
    nop

LAB_ce3438c:
    mov.w @(DAT_ce343a0,pc),r0
    bra LAB_ce343b6
    mov.b r5,@(r0,r4)

LAB_ce34392:
    mov.w @(DAT_ce343a0,pc),r0
    bra LAB_ce343b6
    mov.b r6,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34398:
    #data 0x03cc
DAT_ce3439a:
    #data 0x040c
DAT_ce3439c:
    #data 0x0258
DAT_ce3439e:
    #data 0x04c9
DAT_ce343a0:
    #data 0x01e9
    #align4

PTR_ce343a4:
    #data DAT_ce34686
PTR_ce343a8:
    #data loc_8c054e58
PTR_ce343ac:
    #data loc_8c0530d8

;=============================================

LAB_ce343b0:
    mov.w @(DAT_ce344ec,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce343b6:
    mov.w @(DAT_ce344ee,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce343ba:
    mov.l @(PTR_ce344f8,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce343c0:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce344f0,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce343e2
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce343e8
    cmp/eq 0x02,r0
    bt LAB_ce343ee
    bra LAB_ce343f8
    nop

LAB_ce343e2:
    mov.w @(DAT_ce344ec,pc),r0
    bra LAB_ce343f4
    mov.b r5,@(r0,r4)

LAB_ce343e8:
    mov.w @(DAT_ce344ec,pc),r0
    bra LAB_ce343f4
    mov.b r6,@(r0,r4)

LAB_ce343ee:
    mov.w @(DAT_ce344ec,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce343f4:
    mov.w @(DAT_ce344ee,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce343f8:
    mov.l @(PTR_ce344f8,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce343fe:
    mov r4,r3
    mov.l @(PTR_ce344fc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34410:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce34500,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce344f2,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce34504,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce344f4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34440
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce34440:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34508,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x52,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3450c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce344f6,pc),r0
    mov 0x08,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34510,pc),r3
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
    mov.l @(PTR_ce34514,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3448a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34518,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce3451c,pc),r3
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
    bt LAB_ce34520
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34514,pc),r3
    mov 0x09,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce344ec:
    #data 0x01e9
DAT_ce344ee:
    #data 0x01a3
DAT_ce344f0:
    #data 0x04c9
DAT_ce344f2:
    #data 0x01f9
DAT_ce344f4:
    #data 0x01d2
DAT_ce344f6:
    #data 0x01a1
    #align4

PTR_ce344f8:
    #data loc_8c0530d8
PTR_ce344fc:
    #data PTR_ce348f0
PTR_ce34500:
    #data loc_8c035162
DAT_ce34504:
    #data 0x41f00000
DAT_ce34508:
    #data 0x40892492
DAT_ce3450c:
    #data 0xbf4db6db
PTR_ce34510:
    #data loc_8c2896b0
PTR_ce34514:
    #data loc_8c034e8c
PTR_ce34518:
    #data loc_8c034dee
PTR_ce3451c:
    #data loc_8c052ce2

;=============================================

LAB_ce34520:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34526:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3455c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34548
    mov.l @(PTR_ce34560,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34564,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34548:
    mov.w @(DAT_ce3455a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34554
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce34554:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3455a:
    #data 0x0141
    #align4

PTR_ce3455c:
    #data loc_8c034dee
PTR_ce34560:
    #data loc_8c035162
PTR_ce34564:
    #data loc_8c051854
DAT_ce34568:
    #data 0x0201
    #data 0x0201
DAT_ce3456c:
    #data 0x02ff
    #data 0x02ff
DAT_ce34570:
    #data 0xffff
    #data 0xffff
DAT_ce34574:
    #data 0x0201
    #data 0x0201
DAT_ce34578:
    #data 0x02ff
    #data 0x02ff
DAT_ce3457c:
    #data 0xffff
    #data 0xffff
DAT_ce34580:
    #data 0x0201
    #data 0x0201
DAT_ce34584:
    #data 0x02ff
    #data 0x02ff
DAT_ce34588:
    #data 0xffff
    #data 0xffff
DAT_ce3458c:
    #data 0x0201
    #data 0x0201
DAT_ce34590:
    #data 0x02ff
    #data 0x02ff
DAT_ce34594:
    #data 0xffff
    #data 0xffff
DAT_ce34598:
    #data 0x0201
    #data 0x0200
DAT_ce3459c:
    #data 0x02ff
    #data 0x0201
DAT_ce345a0:
    #data 0xffff
    #data 0x02ff
DAT_ce345a4:
    #data 0x0201
    #data 0x0201
DAT_ce345a8:
    #data 0x02ff
    #data 0x02ff
DAT_ce345ac:
    #data 0xffff
    #data 0xffff
DAT_ce345b0:
    #data 0x0003
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce345c0:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce345d0:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce345e0:
    #data 0x0003
    #data 0x2000
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce345f0:
    #data 0x0003
    #data 0x2000
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34600:
    #data 0x0003
    #data 0x1000
    #data 0x0006
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0360
DAT_ce34610:
    #data 0x0003
    #data 0x1000
    #data 0x0007
    #data 0x0000
    #data 0x0400
    #data 0x1000
    #data 0x1400
    #data 0x0360
DAT_ce34620:
    #data 0x0003
    #data 0x2000
    #data 0x000e
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce34630:
    #data 0x0003
    #data 0x9100
    #data 0x000d
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce34640:
    #data 0x0003
    #data 0x9100
    #data 0x000b
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34650:
    #data 0x0003
    #data 0xa100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34660:
    #data 0x0004
    #data 0x1100
    #data 0x0008
    #data 0x0000
    #data 0x0200
    #data 0x0200
    #data 0x0800
    #data 0x0040
    #data 0x0100
DAT_ce34672:
    #data 0x0005
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0020
DAT_ce34686:
    #data 0x0003
    #data 0x9100
    #data 0x0011
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
    #align4

PTR_ce34698:
    #data LAB_ce30796
PTR_ce3469c:
    #data LAB_ce30024
PTR_ce346a0:
    #data LAB_ce3079a
PTR_ce346a4:
    #data LAB_ce30e9c
PTR_ce346a8:
    #data LAB_ce31370
PTR_ce346ac:
    #data LAB_ce314ba
PTR_ce346b0:
    #data LAB_ce315ee
PTR_ce346b4:
    #data LAB_ce31648
PTR_ce346b8:
    #data LAB_ce31708
PTR_ce346bc:
    #data LAB_ce33b12
PTR_ce346c0:
    #data LAB_ce33c2c
PTR_ce346c4:
    #data LAB_ce33e24
PTR_ce346c8:
    #data LAB_ce3416c
PTR_ce346cc:
    #data LAB_ce341c4
PTR_ce346d0:
    #data LAB_ce343fe
PTR_ce346d4:
    #data LAB_ce312a8
PTR_ce346d8:
    #data LAB_ce342f2
PTR_ce346dc:
    #data LAB_ce3432e
PTR_ce346e0:
    #data LAB_ce3436a
PTR_ce346e4:
    #data LAB_ce343c0
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce34708:
    #data LAB_ce307ae
PTR_ce3470c:
    #data LAB_ce30e74
PTR_ce34710:
    #data LAB_ce30ba8
PTR_ce34714:
    #data LAB_ce307ae
PTR_ce34718:
    #data LAB_ce30ebe
PTR_ce3471c:
    #data LAB_ce311fe
PTR_ce34720:
    #data LAB_ce311e8
PTR_ce34724:
    #data LAB_ce30eb0
PTR_ce34728:
    #data LAB_ce3138e
PTR_ce3472c:
    #data LAB_ce31422
PTR_ce34730:
    #data LAB_ce31498
PTR_ce34734:
    #data LAB_ce314d8
PTR_ce34738:
    #data LAB_ce3151c
PTR_ce3473c:
    #data LAB_ce31570
PTR_ce34740:
    #data LAB_ce315cc
PTR_ce34744:
    #data LAB_ce31600
PTR_ce34748:
    #data LAB_ce31614
DAT_ce3474c:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x01
DAT_ce34750:
    #data 0x04
    #data 0x04
    #data 0x03
    #data 0x04
    #data 0x04
    #data 0x00
    #data 0x00
    #data 0x00
    #align4

PTR_ce34758:
    #data LAB_ce31752
PTR_ce3475c:
    #data LAB_ce318e2
PTR_ce34760:
    #data LAB_ce31b50
PTR_ce34764:
    #data LAB_ce31e06
PTR_ce34768:
    #data LAB_ce320b8
PTR_ce3476c:
    #data LAB_ce321d2
PTR_ce34770:
    #data LAB_ce324da
PTR_ce34774:
    #data LAB_ce326fe
PTR_ce34778:
    #data LAB_ce32908
PTR_ce3477c:
    #data LAB_ce31752
PTR_ce34780:
    #data LAB_ce31752
PTR_ce34784:
    #data LAB_ce32df4
PTR_ce34788:
    #data LAB_ce31752
PTR_ce3478c:
    #data LAB_ce331e0
PTR_ce34790:
    #data LAB_ce33468
PTR_ce34794:
    #data LAB_ce33620
PTR_ce34798:
    #data LAB_ce33668
PTR_ce3479c:
    #data LAB_ce337cc
PTR_ce347a0:
    #data LAB_ce31768
PTR_ce347a4:
    #data LAB_ce317ce
DAT_ce347a8:
    #data 0x01
DAT_ce347a9:
    #data 0x01
    #data 0x03
    #data 0x03
    #align4

PTR_ce347ac:
    #data LAB_ce318f8
PTR_ce347b0:
    #data LAB_ce319fe
PTR_ce347b4:
    #data LAB_ce31a3c
PTR_ce347b8:
    #data LAB_ce31aac
PTR_ce347bc:
    #data FUN_ce31af6
PTR_ce347c0:
    #data LAB_ce31b62
PTR_ce347c4:
    #data LAB_ce31c3c
PTR_ce347c8:
    #data LAB_ce31cbe
PTR_ce347cc:
    #data LAB_ce31d30
PTR_ce347d0:
    #data LAB_ce31dac
PTR_ce347d4:
    #data LAB_ce31e18
PTR_ce347d8:
    #data LAB_ce31ef0
PTR_ce347dc:
    #data LAB_ce31fb8
PTR_ce347e0:
    #data FUN_ce32046
PTR_ce347e4:
    #data LAB_ce320ec
PTR_ce347e8:
    #data LAB_ce32172
PTR_ce347ec:
    #data LAB_ce321a4
PTR_ce347f0:
    #data LAB_ce32270
PTR_ce347f4:
    #data LAB_ce322f4
PTR_ce347f8:
    #data LAB_ce323d0
PTR_ce347fc:
    #data LAB_ce32448
PTR_ce34800:
    #data LAB_ce324b6
PTR_ce34804:
    #data LAB_ce32524
PTR_ce34808:
    #data LAB_ce325b6
PTR_ce3480c:
    #data LAB_ce3264c
PTR_ce34810:
    #data LAB_ce326dc
PTR_ce34814:
    #data LAB_ce32710
PTR_ce34818:
    #data LAB_ce327d8
PTR_ce3481c:
    #data LAB_ce3283c
PTR_ce34820:
    #data LAB_ce328c8
PTR_ce34824:
    #data LAB_ce3291a
PTR_ce34828:
    #data LAB_ce32990
PTR_ce3482c:
    #data LAB_ce32a00
PTR_ce34830:
    #data LAB_ce32a58
PTR_ce34834:
    #data LAB_ce32b46
PTR_ce34838:
    #data LAB_ce32bd4
PTR_ce3483c:
    #data LAB_ce32d54
PTR_ce34840:
    #data LAB_ce32e06
PTR_ce34844:
    #data LAB_ce32e7a
PTR_ce34848:
    #data LAB_ce32f5a
PTR_ce3484c:
    #data LAB_ce32fb4
PTR_ce34850:
    #data LAB_ce330c4
PTR_ce34854:
    #data LAB_ce3311a
PTR_ce34858:
    #data LAB_ce33172
PTR_ce3485c:
    #data FUN_ce331be
PTR_ce34860:
    #data LAB_ce33218
PTR_ce34864:
    #data LAB_ce332b4
PTR_ce34868:
    #data LAB_ce33324
PTR_ce3486c:
    #data LAB_ce33374
PTR_ce34870:
    #data LAB_ce333ce
PTR_ce34874:
    #data FUN_ce33446
PTR_ce34878:
    #data LAB_ce334a8
PTR_ce3487c:
    #data LAB_ce33528
PTR_ce34880:
    #data LAB_ce335b0
PTR_ce34884:
    #data LAB_ce3367a
PTR_ce34888:
    #data LAB_ce336f0
PTR_ce3488c:
    #data LAB_ce337de
PTR_ce34890:
    #data LAB_ce33850
PTR_ce34894:
    #data LAB_ce33912
PTR_ce34898:
    #data LAB_ce33a0c
PTR_ce3489c:
    #data LAB_ce33a5a
PTR_ce348a0:
    #data LAB_ce33ae0
PTR_ce348a4:
    #data LAB_ce33b50
PTR_ce348a8:
    #data LAB_ce33bc8
PTR_ce348ac:
    #data LAB_ce33bcc
PTR_ce348b0:
    #data LAB_ce33b50
PTR_ce348b4:
    #data LAB_ce33c5c
PTR_ce348b8:
    #data LAB_ce33ce0
PTR_ce348bc:
    #data LAB_ce33ce0
PTR_ce348c0:
    #data LAB_ce33d64
PTR_ce348c4:
    #data LAB_ce33dcc
PTR_ce348c8:
    #data LAB_ce33e42
PTR_ce348cc:
    #data LAB_ce33ea0
PTR_ce348d0:
    #data LAB_ce33ea0
PTR_ce348d4:
    #data LAB_ce33f2c
PTR_ce348d8:
    #data LAB_ce34074
PTR_ce348dc:
    #data LAB_ce34184
PTR_ce348e0:
    #data LAB_ce34184
PTR_ce348e4:
    #data LAB_ce34184
PTR_ce348e8:
    #data LAB_ce34184
PTR_ce348ec:
    #data LAB_ce34184
PTR_ce348f0:
    #data LAB_ce34410
PTR_ce348f4:
    #data LAB_ce3448a
PTR_ce348f8:
    #data LAB_ce34526
