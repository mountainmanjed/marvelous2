;╔══════════════════════════════════════════╗
;║ S_PL37 : Jin Saotome Program             ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8C02FEC4 0x8C02FEC4
#symbol loc_8C03319E 0x8C03319E
#symbol loc_8C034DEE 0x8C034DEE
#symbol loc_8C034E8C 0x8C034E8C
#symbol loc_8C035162 0x8C035162
#symbol loc_8C03544C 0x8C03544C
#symbol loc_8C042008 0x8C042008
#symbol loc_8C04223A 0x8C04223A
#symbol loc_8C0424A6 0x8C0424A6
#symbol loc_8C045790 0x8C045790
#symbol loc_8C046C8A 0x8C046C8A
#symbol loc_8C04CC1C 0x8C04CC1C
#symbol loc_8C04CE54 0x8C04CE54
#symbol loc_8C04FEA8 0x8C04FEA8
#symbol loc_8C04FF88 0x8C04FF88
#symbol loc_8C050048 0x8C050048
#symbol loc_8C050084 0x8C050084
#symbol loc_8C050552 0x8C050552
#symbol loc_8C050610 0x8C050610
#symbol loc_8C05064E 0x8C05064E
#symbol loc_8C050682 0x8C050682
#symbol loc_8C050834 0x8C050834
#symbol loc_8C050962 0x8C050962
#symbol loc_8C050EA4 0x8C050EA4
#symbol loc_8C05115A 0x8C05115A
#symbol loc_8C0511B4 0x8C0511B4
#symbol loc_8C0511E2 0x8C0511E2
#symbol loc_8C051648 0x8C051648
#symbol loc_8C05176E 0x8C05176E
#symbol loc_8C051854 0x8C051854
#symbol loc_8C05218A 0x8C05218A
#symbol loc_8C0522E0 0x8C0522E0
#symbol loc_8C0523D8 0x8C0523D8
#symbol loc_8C05264C 0x8C05264C
#symbol loc_8C052B4C 0x8C052B4C
#symbol loc_8C052C84 0x8C052C84
#symbol loc_8C052CE2 0x8C052CE2
#symbol loc_8C052DAC 0x8C052DAC
#symbol loc_8C0530D8 0x8C0530D8
#symbol loc_8C053E00 0x8C053E00
#symbol loc_8C0542E0 0x8C0542E0
#symbol loc_8C054508 0x8C054508
#symbol loc_8C05496C 0x8C05496C
#symbol loc_8C054B34 0x8C054B34
#symbol loc_8C054D04 0x8C054D04
#symbol loc_8C054D1C 0x8C054D1C
#symbol loc_8C054DA0 0x8C054DA0
#symbol loc_8C054E58 0x8C054E58
#symbol loc_8C055066 0x8C055066
#symbol loc_8C0559DA 0x8C0559DA
#symbol loc_8C055C3A 0x8C055C3A
#symbol loc_8C056DE4 0x8C056DE4
#symbol loc_8C056F2A 0x8C056F2A
#symbol loc_8C05933C 0x8C05933C
#symbol loc_8C0B1F58 0x8C0B1F58
#symbol loc_8C0B2314 0x8C0B2314
#symbol loc_8C0B2362 0x8C0B2362
#symbol loc_8C0B3970 0x8C0B3970
#symbol loc_8C0B3E30 0x8C0B3E30
#symbol loc_8C0EB290 0x8C0EB290
#symbol loc_8C0EB2E4 0x8C0EB2E4
#symbol loc_8C0FDB4E 0x8C0FDB4E
#symbol loc_8C103660 0x8C103660
#symbol loc_8C104A5A 0x8C104A5A
#symbol loc_8C129728 0x8C129728
#symbol loc_8C2681DC 0x8C2681DC
#symbol loc_8C26A518 0x8C26A518
#symbol loc_8C2895F0 0x8C2895F0
#symbol loc_8C289626 0x8C289626
#symbol loc_8C2896B0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300d0,pc),r0
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
    bf LAB_ce300ac
    mov.l @(PTR_ce300dc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce30168
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce301ae
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce301f4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce300b2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce30122
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce3026a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce302b0
    mov r14,r4
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce302ea
    mov r14,r4
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce300e8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300ec,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300ac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce300b2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce300f0,pc),r5
    mov.w @(DAT_ce300d2,pc),r6
    mov.l @(PTR_ce300f4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f8
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300d0:
    #data 0x0428
DAT_ce300d2:
    #data 0x0364
    #align4

PTR_ce300d4:
    #data PTR_ce35450
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
PTR_ce300f0:
    #data DAT_ce353f0
PTR_ce300f4:
    #data loc_8c055066

;=============================================

LAB_ce300f8:
    mov.w @(DAT_ce3021c,pc),r5
    mov.l @(PTR_ce3022c,pc),r3
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
    mov.w @(DAT_ce3021e,pc),r0
    mov.l @(PTR_ce30230,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30122:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30234,pc),r5
    mov.w @(DAT_ce30220,pc),r6
    mov.l @(PTR_ce30238,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30140
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30140:
    mov.w @(DAT_ce30220,pc),r5
    mov.l @(PTR_ce3022c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3021e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30230,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30168:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3023c,pc),r5
    mov.w @(DAT_ce30222,pc),r6
    mov.l @(PTR_ce30240,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30188
    mov.w @(DAT_ce30224,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30190

LAB_ce30188:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30190:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3021e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30230,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301ae:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30244,pc),r5
    mov.w @(DAT_ce30226,pc),r6
    mov.l @(PTR_ce30240,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301ce
    mov.w @(DAT_ce30224,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce301d6

LAB_ce301ce:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301d6:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3021e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30230,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301f4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30248,pc),r5
    mov.w @(DAT_ce30228,pc),r6
    mov.l @(PTR_ce30240,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30214
    mov.w @(DAT_ce30224,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3024c

LAB_ce30214:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3021c:
    #data 0x0364
DAT_ce3021e:
    #data 0x01e9
DAT_ce30220:
    #data 0x036c
DAT_ce30222:
    #data 0x0374
DAT_ce30224:
    #data 0x040c
DAT_ce30226:
    #data 0x037c
DAT_ce30228:
    #data 0x0384
    #align4

PTR_ce3022c:
    #data loc_8c055c3a
PTR_ce30230:
    #data loc_8c0530d8
PTR_ce30234:
    #data DAT_ce353fe
PTR_ce30238:
    #data loc_8c055066
PTR_ce3023c:
    #data DAT_ce3540c
PTR_ce30240:
    #data loc_8c054e58
PTR_ce30244:
    #data DAT_ce3541c
PTR_ce30248:
    #data DAT_ce3542c

;=============================================

LAB_ce3024c:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3035c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30364,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3026a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30368,pc),r5
    mov.w @(DAT_ce3035e,pc),r6
    mov.l @(PTR_ce3036c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30288
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30288:
    mov.w @(DAT_ce3035e,pc),r5
    mov.l @(PTR_ce30370,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3035c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30364,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302b0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30374,pc),r3
    jsr @r3
    mov 0x08,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302ca
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302ca:
    mov.w @(DAT_ce3035c,pc),r0
    mov 0x08,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30364,pc),r3
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

FUN_ce302ea:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30378,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30302
    mov.w @(DAT_ce30360,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3030a

LAB_ce30302:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3030a:
    mov.w @(DAT_ce3035c,pc),r0
    mov 0x09,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30364,pc),r3
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

LAB_ce3032a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce3037c
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3034c
    bsr FUN_ce303b2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3034c
    bsr FUN_ce303e8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30354

LAB_ce3034c:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce30354:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3035c:
    #data 0x01e9
DAT_ce3035e:
    #data 0x038c
DAT_ce30360:
    #data 0x040c
    #align4

PTR_ce30364:
    #data loc_8c0530d8
PTR_ce30368:
    #data DAT_ce3543c
PTR_ce3036c:
    #data loc_8c054e58
PTR_ce30370:
    #data loc_8c055c3a
PTR_ce30374:
    #data loc_8c054da0
PTR_ce30378:
    #data loc_8c054d1c

;=============================================

FUN_ce3037c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30428,pc),r5
    mov.w @(DAT_ce3041e,pc),r6
    mov.l @(PTR_ce3042c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3039c
    mov.w @(DAT_ce30420,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303a4

LAB_ce3039c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303a4:
    mov.w @(DAT_ce30422,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303b2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30430,pc),r5
    mov.w @(DAT_ce30424,pc),r6
    mov.l @(PTR_ce3042c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303d2
    mov.w @(DAT_ce30420,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303da

LAB_ce303d2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303da:
    mov.w @(DAT_ce30422,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303e8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30434,pc),r5
    mov.w @(DAT_ce30426,pc),r6
    mov.l @(PTR_ce3042c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30408
    mov.w @(DAT_ce30420,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30410

LAB_ce30408:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30410:
    mov.w @(DAT_ce30422,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3041e:
    #data 0x0374
DAT_ce30420:
    #data 0x040c
DAT_ce30422:
    #data 0x0258
DAT_ce30424:
    #data 0x037c
DAT_ce30426:
    #data 0x0384
    #align4

PTR_ce30428:
    #data DAT_ce3540c
PTR_ce3042c:
    #data loc_8c054e58
PTR_ce30430:
    #data DAT_ce3541c
PTR_ce30434:
    #data DAT_ce3542c

;=============================================

LAB_ce30438:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x23,r0
    mov.w @(DAT_ce30542,pc),r13
    mov.l r12,@-r15
    add r14,r13
    sts.l PR,@-r15
    mov.b @(r0,r13),r3
    tst r3,r3
    bf LAB_ce304dc
    mov.b @(0x8,r13),r0
    tst r0,r0
    bf LAB_ce304dc
    mov.w @(DAT_ce30544,pc),r0
    mov 0x32,r2
    mov.w @(r0,r14),r3
    cmp/gt r2,r3
    bt LAB_ce304dc
    mov.b @(0x2,r14),r0
    mov 0x02,r2
    mov.l @(PTR_ce30550,pc),r1
    extu.b r0,r0
    mov.b @(r0,r1),r3
    cmp/ge r2,r3
    bf LAB_ce304dc
    mov.l @(PTR_ce30554,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304dc
    mov.w @(DAT_ce30546,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce304dc
    mov.w @(DAT_ce30546,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce304dc
    mov.l @(PTR_ce30558,pc),r2
    mov.b @r2,r4
    extu.b r4,r0
    cmp/eq 0x05,r0
    bt/s LAB_ce304dc
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x06,r0
    bt LAB_ce304dc
    mov.w @(DAT_ce30548,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce304dc
    mov 0x01,r0
    mov.b r0,@(0x8,r13)
    mov 0x21,r0
    mov 0x00,r12
    mov.b r12,@(r0,r13)
    mov r12,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3054a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3055c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce30560,pc),r2
    mov 0x10,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce304dc:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce304e6:
    mov.w @(DAT_ce3054c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30564,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce304fa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30568,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3054e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30528
    mov.w @(DAT_ce30546,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30520
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307ec
    mov.l @r15+,r14

LAB_ce30520:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce306d2
    mov.l @r15+,r14

LAB_ce30528:
    mov.w @(DAT_ce30546,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3053a
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3060a
    mov.l @r15+,r14

LAB_ce3053a:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3056c
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30542:
    #data 0x02a4
DAT_ce30544:
    #data 0x0420
DAT_ce30546:
    #data 0x01f9
DAT_ce30548:
    #data 0x0411
DAT_ce3054a:
    #data 0x01e9
DAT_ce3054c:
    #data 0x01ff
DAT_ce3054e:
    #data 0x01fe
    #align4

PTR_ce30550:
    #data loc_8c289626
PTR_ce30554:
    #data loc_8c0559da
PTR_ce30558:
    #data loc_8c2895f0
PTR_ce3055c:
    #data loc_8c0530d8
PTR_ce30560:
    #data loc_8c0eb2e4
PTR_ce30564:
    #data PTR_ce354c0
PTR_ce30568:
    #data loc_8c052b4c

;=============================================

LAB_ce3056c:
    mov.w @(DAT_ce30660,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3066c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30590
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce305a6
    cmp/eq 0x02,r0
    bt LAB_ce305be
    bra LAB_ce305d8
    nop

LAB_ce30590:
    mov.w @(DAT_ce30662,pc),r0
    mov.l @(PTR_ce30670,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce30664,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30666,pc),r0
    mov.b r13,@(r0,r14)
    bra LAB_ce305d4
    mov 0x14,r5

LAB_ce305a6:
    mov.w @(DAT_ce30662,pc),r0
    mov 0x01,r4
    mov.l @(PTR_ce30674,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30664,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30666,pc),r0
    mov.b r4,@(r0,r14)
    bra LAB_ce305d4
    mov 0x15,r5

LAB_ce305be:
    mov.w @(DAT_ce30662,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce30678,pc),r3
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30664,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30666,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce305d4:
    jsr @r12
    mov r14,r4

LAB_ce305d8:
    mov.w @(DAT_ce30668,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce3067c,pc),r3
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
    mov.w @(DAT_ce30662,pc),r0
    mov.l @(PTR_ce30680,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3060a:
    mov.w @(DAT_ce30660,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3066c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3062e
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30646
    cmp/eq 0x02,r0
    bt LAB_ce30684
    bra LAB_ce306a0
    nop

LAB_ce3062e:
    mov.w @(DAT_ce30662,pc),r0
    mov 0x06,r3
    mov.l @(PTR_ce30670,pc),r2
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30664,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30666,pc),r0
    mov.b r13,@(r0,r14)
    bra LAB_ce3069c
    mov 0x14,r5

LAB_ce30646:
    mov.w @(DAT_ce30662,pc),r0
    mov 0x01,r4
    mov 0x07,r3
    mov.l @(PTR_ce30674,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30664,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30666,pc),r0
    mov.b r4,@(r0,r14)
    bra LAB_ce3069c
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30660:
    #data 0x01e8
DAT_ce30662:
    #data 0x0158
DAT_ce30664:
    #data 0x03f4
DAT_ce30666:
    #data 0x01a7
DAT_ce30668:
    #data 0x01ac
    #align4

PTR_ce3066c:
    #data loc_8c04223a
PTR_ce30670:
    #data DAT_ce353a8
PTR_ce30674:
    #data DAT_ce353ac
PTR_ce30678:
    #data DAT_ce353b0
PTR_ce3067c:
    #data loc_8c2896b0
PTR_ce30680:
    #data loc_8c034e8c

;=============================================

LAB_ce30684:
    mov.w @(DAT_ce307b4,pc),r0
    mov 0x02,r4
    mov 0x08,r3
    mov.l @(PTR_ce307c0,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce307b6,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307b8,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3069c:
    jsr @r12
    mov r14,r4

LAB_ce306a0:
    mov.w @(DAT_ce307ba,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce307c4,pc),r3
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
    mov.w @(DAT_ce307b4,pc),r0
    mov.l @(PTR_ce307c8,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce306d2:
    mov.w @(DAT_ce307bc,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce306f2
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30710
    cmp/eq 0x02,r0
    bt LAB_ce30728
    bra LAB_ce30784
    nop

LAB_ce306f2:
    mov.w @(DAT_ce307b4,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce307cc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce307b6,pc),r0
    mov.l @(PTR_ce307d0,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307b8,pc),r0
    bra LAB_ce30784
    mov.b r13,@(r0,r14)

LAB_ce30710:
    mov.w @(DAT_ce307b4,pc),r0
    mov 0x01,r4
    mov 0x04,r3
    mov.l @(PTR_ce307d4,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce307b6,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307b8,pc),r0
    bra LAB_ce3077e
    mov.b r4,@(r0,r14)

LAB_ce30728:
    mov.w @(DAT_ce307b4,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce307d8,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce307b6,pc),r0
    mov.l @(PTR_ce307cc,pc),r3
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307b8,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce307dc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce307e0,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce307e4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce307e8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce307be,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3077e
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3077e:
    mov r13,r0
    nop
    mov.b r0,@(0x6,r14)

LAB_ce30784:
    mov.w @(DAT_ce307ba,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce307c4,pc),r3
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
    mov.w @(DAT_ce307b4,pc),r0
    mov.l @(PTR_ce307c8,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307b4:
    #data 0x0158
DAT_ce307b6:
    #data 0x03f4
DAT_ce307b8:
    #data 0x01a7
DAT_ce307ba:
    #data 0x01ac
DAT_ce307bc:
    #data 0x01e8
DAT_ce307be:
    #data 0x0130
    #align4

PTR_ce307c0:
    #data DAT_ce353b0
PTR_ce307c4:
    #data loc_8c2896b0
PTR_ce307c8:
    #data loc_8c034e8c
PTR_ce307cc:
    #data loc_8c04223a
PTR_ce307d0:
    #data DAT_ce353b4
PTR_ce307d4:
    #data DAT_ce353b8
PTR_ce307d8:
    #data DAT_ce353bc
DAT_ce307dc:
    #data 0xc0c80000
DAT_ce307e0:
    #data 0x3dd55555
DAT_ce307e4:
    #data 0x41a2db6d
DAT_ce307e8:
    #data 0xbf84db6d

;=============================================

LAB_ce307ec:
    mov.w @(DAT_ce308de,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3080c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3082a
    cmp/eq 0x02,r0
    bt LAB_ce30848
    bra LAB_ce30874
    nop

LAB_ce3080c:
    mov.w @(DAT_ce308e0,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce308ec,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce308e2,pc),r0
    mov.l @(PTR_ce308f0,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308e4,pc),r0
    bra LAB_ce30874
    mov.b r13,@(r0,r14)

LAB_ce3082a:
    mov.w @(DAT_ce308e0,pc),r0
    mov 0x01,r4
    mov 0x0A,r3
    mov.l @(PTR_ce308f4,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce308e2,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308e4,pc),r0
    mov.b r4,@(r0,r14)
    mov r13,r0
    nop
    bra LAB_ce30874
    mov.b r0,@(0x6,r14)

LAB_ce30848:
    mov.w @(DAT_ce308e0,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.l @(PTR_ce308f8,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce308e2,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308e4,pc),r0
    mov.b r4,@(r0,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce308fc,pc),r3
    mov 0x1C,r5
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce308ec,pc),r2
    mov 0x16,r5
    jsr @r2
    mov r14,r4

LAB_ce30874:
    mov.w @(DAT_ce308e6,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30900,pc),r3
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
    mov.w @(DAT_ce308e0,pc),r0
    mov.l @(PTR_ce30904,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce308a4:
    mov.w @(DAT_ce308e8,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce308b4
    mov.w @(DAT_ce308ea,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce308c4

LAB_ce308b4:
    mov.w @(DAT_ce308e8,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce308c8
    mov.w @(DAT_ce308ea,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce308c8

LAB_ce308c4:
    bra LAB_ce308cc
    nop

LAB_ce308c8:
    rts
    nop

LAB_ce308cc:
    mov.w @(DAT_ce308e8,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce308da
    bra LAB_ce30a28
    nop

LAB_ce308da:
    bra LAB_ce30908
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308de:
    #data 0x01e8
DAT_ce308e0:
    #data 0x0158
DAT_ce308e2:
    #data 0x03f4
DAT_ce308e4:
    #data 0x01a7
DAT_ce308e6:
    #data 0x01ac
DAT_ce308e8:
    #data 0x01fe
DAT_ce308ea:
    #data 0x01d6
    #align4

PTR_ce308ec:
    #data loc_8c04223a
PTR_ce308f0:
    #data DAT_ce353b4
PTR_ce308f4:
    #data DAT_ce353b8
PTR_ce308f8:
    #data DAT_ce353bc
PTR_ce308fc:
    #data loc_8c042008
PTR_ce30900:
    #data loc_8c2896b0
PTR_ce30904:
    #data loc_8c034e8c

;=============================================

LAB_ce30908:
    mov.w @(DAT_ce309f6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30a04,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3092c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30958
    cmp/eq 0x02,r0
    bt LAB_ce30984
    bra LAB_ce309b2
    nop

LAB_ce3092c:
    mov.w @(DAT_ce309f8,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3094c
    mov.w @(DAT_ce309fc,pc),r0
    mov.l @(PTR_ce30a08,pc),r3
    bra LAB_ce30952
    mov.l r3,@(r0,r14)

LAB_ce3094c:
    mov.w @(DAT_ce309fc,pc),r0
    mov.l @(PTR_ce30a0c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30952:
    mov.w @(DAT_ce309fe,pc),r0
    bra LAB_ce309b2
    mov.b r13,@(r0,r14)

LAB_ce30958:
    mov.w @(DAT_ce309f8,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3097a
    mov.w @(DAT_ce309fc,pc),r0
    mov.l @(PTR_ce30a10,pc),r3
    bra LAB_ce30980
    mov.l r3,@(r0,r14)

LAB_ce3097a:
    mov.w @(DAT_ce309fc,pc),r0
    mov.l @(PTR_ce30a14,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30980:
    bra LAB_ce309ae
    mov 0x01,r3

LAB_ce30984:
    mov.w @(DAT_ce309f8,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce309a6
    mov.w @(DAT_ce309fc,pc),r0
    mov.l @(PTR_ce30a18,pc),r3
    bra LAB_ce309ac
    mov.l r3,@(r0,r14)

LAB_ce309a6:
    mov.w @(DAT_ce309fc,pc),r0
    mov.l @(PTR_ce30a1c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce309ac:
    mov 0x02,r3

LAB_ce309ae:
    mov.w @(DAT_ce309fe,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce309b2:
    mov.w @(DAT_ce30a00,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30a20,pc),r3
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
    mov.w @(DAT_ce309f8,pc),r0
    mov.l @(PTR_ce30a24,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30a02,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce309ec
    mov.w @(DAT_ce30a02,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce309ec:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309f6:
    #data 0x01e8
DAT_ce309f8:
    #data 0x0158
DAT_ce309fa:
    #data 0x01fc
DAT_ce309fc:
    #data 0x03f4
DAT_ce309fe:
    #data 0x01a7
DAT_ce30a00:
    #data 0x01ac
DAT_ce30a02:
    #data 0x01d6
    #align4

PTR_ce30a04:
    #data loc_8c04223a
PTR_ce30a08:
    #data DAT_ce353c0
PTR_ce30a0c:
    #data DAT_ce353d8
PTR_ce30a10:
    #data DAT_ce353c4
PTR_ce30a14:
    #data DAT_ce353dc
PTR_ce30a18:
    #data DAT_ce353c8
PTR_ce30a1c:
    #data DAT_ce353e0
PTR_ce30a20:
    #data loc_8c2896b0
PTR_ce30a24:
    #data loc_8c034e8c

;=============================================

LAB_ce30a28:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30b18,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b28,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a4e
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a80
    cmp/eq 0x02,r0
    bt LAB_ce30ab4
    bra LAB_ce30b60
    nop

LAB_ce30a4e:
    mov 0x0C,r5
    mov 0x00,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b1a,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30b2c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30b1c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a74
    mov.w @(DAT_ce30b1e,pc),r0
    mov.l @(PTR_ce30b30,pc),r3
    bra LAB_ce30a7a
    mov.l r3,@(r0,r14)

LAB_ce30a74:
    mov.w @(DAT_ce30b1e,pc),r0
    mov.l @(PTR_ce30b34,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a7a:
    mov.w @(DAT_ce30b20,pc),r0
    bra LAB_ce30b60
    mov.b r13,@(r0,r14)

LAB_ce30a80:
    mov 0x0C,r5
    mov 0x01,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b1a,pc),r0
    mov 0x10,r2
    mov.l @(PTR_ce30b2c,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30b1c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30aa6
    mov.w @(DAT_ce30b1e,pc),r0
    mov.l @(PTR_ce30b38,pc),r3
    bra LAB_ce30aac
    mov.l r3,@(r0,r14)

LAB_ce30aa6:
    mov.w @(DAT_ce30b1e,pc),r0
    mov.l @(PTR_ce30b3c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30aac:
    mov.w @(DAT_ce30b20,pc),r0
    mov 0x01,r3
    bra LAB_ce30b60
    mov.b r3,@(r0,r14)

LAB_ce30ab4:
    mov.w @(DAT_ce30b1c,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf/s LAB_ce30ac6
    mov 0x02,r11
    mov.w @(DAT_ce30b1e,pc),r0
    mov.l @(PTR_ce30b40,pc),r2
    bra LAB_ce30acc
    mov.l r2,@(r0,r14)

LAB_ce30ac6:
    mov.w @(DAT_ce30b1e,pc),r0
    mov.l @(PTR_ce30b44,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30acc:
    mov.w @(DAT_ce30b20,pc),r0
    mov 0x0F,r3
    mov.b r11,@(r0,r14)
    add 0x55,r0
    mov.b r13,@(r0,r14)
    add 0xDA,r0
    mov.b @(r0,r14),r2
    and r3,r2
    mov.b r2,@(r0,r14)
    add 0x24,r0
    mov.w @(r0,r14),r1
    mov.w @(DAT_ce30b22,pc),r2
    extu.w r1,r1
    tst r2,r1
    bt LAB_ce30b4c
    mova @(DAT_ce30b48,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce30b24,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bf LAB_ce30b4c
    mov 0x14,r5
    mov 0x02,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b1a,pc),r0
    mov 0x12,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r11,r0
    nop
    mov.w r0,@(0x1c,r14)
    bra LAB_ce30b60
    mov.w r0,@(0x1e,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b18:
    #data 0x01e8
DAT_ce30b1a:
    #data 0x01a1
DAT_ce30b1c:
    #data 0x01fc
DAT_ce30b1e:
    #data 0x03f4
DAT_ce30b20:
    #data 0x01a7
DAT_ce30b22:
    #data 0x1000
DAT_ce30b24:
    #data 0x041c
    #align4

PTR_ce30b28:
    #data loc_8c034e8c
PTR_ce30b2c:
    #data loc_8c04223a
PTR_ce30b30:
    #data DAT_ce353cc
PTR_ce30b34:
    #data DAT_ce353e4
PTR_ce30b38:
    #data DAT_ce353d0
PTR_ce30b3c:
    #data DAT_ce353e8
PTR_ce30b40:
    #data DAT_ce353d4
PTR_ce30b44:
    #data DAT_ce353ec
DAT_ce30b48:
    #data 0x43092492

;=============================================

LAB_ce30b4c:
    mov 0x0C,r5
    mov 0x02,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c6a,pc),r0
    mov 0x11,r2
    mov.b r2,@(r0,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x6,r14)

LAB_ce30b60:
    mov.w @(DAT_ce30c6c,pc),r0
    mov.l @(PTR_ce30c78,pc),r3
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
    mov.w @(DAT_ce30c6e,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30b8e
    mov.w @(DAT_ce30c6e,pc),r0
    mov.b @(r0,r14),r1
    add 0xF0,r1
    mov.b r1,@(r0,r14)

LAB_ce30b8e:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30b9a:
    mov.w @(DAT_ce30c70,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c7c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30bae:
    sts.l PR,@-r15
    mov.l @(PTR_ce30c80,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30bbc:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30c84,pc),r3
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
    mov.w @(DAT_ce30c72,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c24
    mov.w @(DAT_ce30c74,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c1c
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3107a
    mov.l @r15+,r14

LAB_ce30c1c:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d78
    mov.l @r15+,r14

LAB_ce30c24:
    mov.w @(DAT_ce30c74,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c36
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d40
    mov.l @r15+,r14

LAB_ce30c36:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c3e
    mov.l @r15+,r14

LAB_ce30c3e:
    mov.w @(DAT_ce30c76,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30c5a
    cmp/eq 0x01,r0
    bt LAB_ce30c5a
    cmp/eq 0x02,r0
    bt LAB_ce30c8c
    bra LAB_ce30d3a
    nop

LAB_ce30c5a:
    mov.l @(PTR_ce30c88,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30cbe
    bra LAB_ce30d3a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c6a:
    #data 0x01a1
DAT_ce30c6c:
    #data 0x01ac
DAT_ce30c6e:
    #data 0x01d6
DAT_ce30c70:
    #data 0x01ff
DAT_ce30c72:
    #data 0x01fe
DAT_ce30c74:
    #data 0x01f9
DAT_ce30c76:
    #data 0x01e8
    #align4

PTR_ce30c78:
    #data loc_8c2896b0
PTR_ce30c7c:
    #data PTR_ce354d0
PTR_ce30c80:
    #data loc_8c0511e2
PTR_ce30c84:
    #data loc_8c052c84
PTR_ce30c88:
    #data loc_8c034dee

;=============================================

LAB_ce30c8c:
    mov.l @(PTR_ce30d94,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30d98,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cc8
    mov.w @(DAT_ce30d8c,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30cb0
    mov.l @(DAT_ce30d9c,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    bra LAB_ce30cb8
    fsts FPUL,fr3

LAB_ce30cb0:
    mov.l @(DAT_ce30da0,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    fsts FPUL,fr3

LAB_ce30cb8:
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce30cbe:
    lds.l @r15+,PR
    mov.l @(PTR_ce30da4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30cc8:
    mov.w @(DAT_ce30d8e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce30d04
    mov.w @(DAT_ce30d8e,pc),r0
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce30da8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30dac,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30d8c,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d04
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30d04:
    mov.w @(DAT_ce30d8e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce30d22
    mov.w @(DAT_ce30d8e,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30db0,pc),r1
    mov 0x02,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce30d22:
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf LAB_ce30d3a
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce30d3a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d40:
    mov.w @(DAT_ce30d90,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30d5c
    cmp/eq 0x01,r0
    bt LAB_ce30d5c
    cmp/eq 0x02,r0
    bt LAB_ce30d5c
    bra LAB_ce30d72
    nop

LAB_ce30d5c:
    mov.l @(PTR_ce30d98,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d72
    lds.l @r15+,PR
    mov.l @(PTR_ce30da4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d72:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d78:
    mov.w @(DAT_ce30d90,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30db4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d8c:
    #data 0x0130
DAT_ce30d8e:
    #data 0x0141
DAT_ce30d90:
    #data 0x01e8
    #align4

PTR_ce30d94:
    #data loc_8c0511e2
PTR_ce30d98:
    #data loc_8c034dee
DAT_ce30d9c:
    #data 0xc2855555
DAT_ce30da0:
    #data 0x42855555
PTR_ce30da4:
    #data loc_8c051648
DAT_ce30da8:
    #data 0xc1855555
DAT_ce30dac:
    #data 0x3f555700
PTR_ce30db0:
    #data loc_8c0eb290
PTR_ce30db4:
    #data PTR_ce354e0

;=============================================

LAB_ce30db8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e68,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30dd2
    lds.l @r15+,PR
    mov.l @(PTR_ce30e6c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30dd2:
    mov.w @(DAT_ce30e64,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e02
    mov.w @(DAT_ce30e66,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30dea
    mov.w @(DAT_ce30e64,pc),r0
    mov.b @(r0,r14),r3
    neg r3,r3
    mov.b r3,@(r0,r14)

LAB_ce30dea:
    mov.w @(DAT_ce30e64,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.b @r3,r3
    lds r3,FPUL
    mov 0x00,r3
    float FPUL,fr3
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce30e64,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30e02:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e08:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e68,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30e64,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e5e
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30e64,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce30e70,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30e74,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30e78,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30e7c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30e66,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30e5e
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30e5e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e64:
    #data 0x0141
DAT_ce30e66:
    #data 0x0130
    #align4

PTR_ce30e68:
    #data loc_8c034dee
PTR_ce30e6c:
    #data loc_8c051648
DAT_ce30e70:
    #data 0xc1195555
DAT_ce30e74:
    #data 0x3dd55555
DAT_ce30e78:
    #data 0x413c9249
DAT_ce30e7c:
    #data 0xbf22db6d

;=============================================

LAB_ce30e80:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fa4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30f9c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce30ea8
    mov.w @(DAT_ce30f9c,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30fa8,pc),r1
    mov 0x08,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce30ea8:
    mov.w @(DAT_ce30f9c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x04,r0
    bt LAB_ce30ec6
    mov.w @(DAT_ce30f9c,pc),r0
    mov 0x09,r6
    mov.l @(PTR_ce30fa8,pc),r1
    mov r6,r5
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBA,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce30ec6:
    mov.w @(DAT_ce30f9c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x08,r0
    bt LAB_ce30f00
    mov.w @(DAT_ce30f9c,pc),r0
    mov 0x19,r1
    mov 0x00,r4
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xB6,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    add 0x60,r0
    mov.b r1,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30fac,pc),r2
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r2,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r3
    add 0x01,r3
    mov.w r3,@(r0,r1)

LAB_ce30f00:
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce30f9e,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce30f2e
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce30fb0,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f2e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f34:
    mov r4,r3
    mov.l @(PTR_ce30fb4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30f46:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fa4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30f9c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30f96
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce30fb8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30fbc,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30fc0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30fc4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30fa0,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f96
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30f96:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f9c:
    #data 0x0141
DAT_ce30f9e:
    #data 0x041c
DAT_ce30fa0:
    #data 0x0130
    #align4

PTR_ce30fa4:
    #data loc_8c034dee
PTR_ce30fa8:
    #data loc_8c0eb290
PTR_ce30fac:
    #data loc_8c2896b0
PTR_ce30fb0:
    #data loc_8c051648
PTR_ce30fb4:
    #data PTR_ce354ec
DAT_ce30fb8:
    #data 0xc1700000
DAT_ce30fbc:
    #data 0x3dd55555
DAT_ce30fc0:
    #data 0xc11a4924
DAT_ce30fc4:
    #data 0xbe092492

;=============================================

LAB_ce30fc8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31110,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce31106,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce3102a
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce31114,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31118,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31108,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3101e
    mov 0x03,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3101e:
    lds.l @r15+,PR
    mov.l @(PTR_ce3111c,pc),r3
    mov 0x08,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3102a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31030:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31120,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31110,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31062
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31124,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31062:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31068:
    mov r4,r3
    mov.l @(PTR_ce31128,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3107a:
    mov.w @(DAT_ce3110a,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce3112c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3108e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31110,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310a8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31124,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce310a8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce310b0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31110,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3110c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31100
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce31130,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31134,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31138,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3113c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31108,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31100
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31100:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31106:
    #data 0x041c
DAT_ce31108:
    #data 0x0130
DAT_ce3110a:
    #data 0x01e8
DAT_ce3110c:
    #data 0x0141
    #align4

PTR_ce31110:
    #data loc_8c034dee
DAT_ce31114:
    #data 0xc112aaaa
DAT_ce31118:
    #data 0x3e8c0000
PTR_ce3111c:
    #data loc_8c034e8c
PTR_ce31120:
    #data loc_8c0511e2
PTR_ce31124:
    #data loc_8c051648
PTR_ce31128:
    #data PTR_ce354f4
PTR_ce3112c:
    #data PTR_ce35500
DAT_ce31130:
    #data 0xc0c80000
DAT_ce31134:
    #data 0x3dd55555
DAT_ce31138:
    #data 0x41809249
DAT_ce3113c:
    #data 0xbf676db6

;=============================================

LAB_ce31140:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31288,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31282,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce31168
    mov.w @(DAT_ce31282,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce3128c,pc),r1
    mov 0x00,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce31168:
    mov.w @(DAT_ce31282,pc),r0
    mov.b @(r0,r14),r0
    tst 0x04,r0
    bt LAB_ce31186
    mov.w @(DAT_ce31282,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce3128c,pc),r1
    mov 0x01,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBA,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce31186:
    mov.w @(DAT_ce31282,pc),r0
    mov.b @(r0,r14),r0
    tst 0x08,r0
    bt LAB_ce311c0
    mov.w @(DAT_ce31282,pc),r0
    mov 0x1A,r1
    mov 0x00,r4
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xB6,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    add 0x60,r0
    mov.b r1,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31290,pc),r2
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r2,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r3
    add 0x01,r3
    mov.w r3,@(r0,r1)

LAB_ce311c0:
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce31284,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce311ee
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31294,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce311ee:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311f4:
    mov r4,r3
    mov.l @(PTR_ce31298,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31206:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31288,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31282,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3124a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce3129c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce312a0,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31286,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31246
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31246:
    mov 0x18,r0
    mov.w r0,@(0x1c,r14)

LAB_ce3124a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31250:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce312a4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31288,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce312ac
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce312a8,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0A,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31282:
    #data 0x0141
DAT_ce31284:
    #data 0x041c
DAT_ce31286:
    #data 0x0130
    #align4

PTR_ce31288:
    #data loc_8c034dee
PTR_ce3128c:
    #data loc_8c0eb290
PTR_ce31290:
    #data loc_8c2896b0
PTR_ce31294:
    #data loc_8c051648
PTR_ce31298:
    #data PTR_ce3550c
DAT_ce3129c:
    #data 0xc1700000
DAT_ce312a0:
    #data 0x3ee2aaaa
PTR_ce312a4:
    #data loc_8c0511e2
PTR_ce312a8:
    #data loc_8c034e8c

;=============================================

LAB_ce312ac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312b2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313cc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce313d0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312e4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce313d4,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce312e4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312ea:
    mov r4,r3
    mov.l @(PTR_ce313d8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce312fc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313dc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce313e0,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31312:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313e4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce313e8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce313c6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31334
    bsr FUN_ce31376
    mov r14,r4
    bra LAB_ce31338
    nop

LAB_ce31334:
    bsr FUN_ce31354
    mov r14,r4

LAB_ce31338:
    mov.l @(PTR_ce313ec,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3134e
    lds.l @r15+,PR
    mov.l @(PTR_ce313f0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3134e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31354:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce313d0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3136e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce313f4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3136e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce31376:
    mov.w @(DAT_ce313c8,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce313f8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3138a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce313d0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313a4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce313f4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce313a4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce313ac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313d0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313fc
    lds.l @r15+,PR
    mov.l @(PTR_ce313f4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce313c6:
    #data 0x01fe
DAT_ce313c8:
    #data 0x01e8
    #align4

PTR_ce313cc:
    #data loc_8c0511e2
PTR_ce313d0:
    #data loc_8c034dee
PTR_ce313d4:
    #data loc_8c051648
PTR_ce313d8:
    #data PTR_ce35514
PTR_ce313dc:
    #data loc_8c050084
PTR_ce313e0:
    #data loc_8c04ff88
PTR_ce313e4:
    #data loc_8c04fea8
PTR_ce313e8:
    #data loc_8c050048
PTR_ce313ec:
    #data loc_8c052ce2
PTR_ce313f0:
    #data loc_8c052dac
PTR_ce313f4:
    #data loc_8c05176e
PTR_ce313f8:
    #data PTR_ce35520

;=============================================

LAB_ce313fc:
    mov.w @(DAT_ce314ba,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce3141e
    mov.w @(DAT_ce314ba,pc),r0
    mov r14,r4
    mov.l @(PTR_ce314bc,pc),r1
    mov 0x05,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov 0x09,r5
    lds.l @r15+,PR
    jmp @r1
    mov.l @r15+,r14

LAB_ce3141e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31424:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314c0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3143e
    lds.l @r15+,PR
    mov.l @(PTR_ce314c4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3143e:
    mov.w @(DAT_ce314ba,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce3145c
    mov.w @(DAT_ce314ba,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce314bc,pc),r1
    mov 0x06,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce3145c:
    mov.w @(DAT_ce314ba,pc),r0
    mov.b @(r0,r14),r0
    tst 0x04,r0
    bt LAB_ce3147a
    mov.w @(DAT_ce314ba,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce314bc,pc),r1
    mov 0x07,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBA,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce3147a:
    mov.w @(DAT_ce314ba,pc),r0
    mov.b @(r0,r14),r0
    tst 0x08,r0
    bt LAB_ce314b4
    mov.w @(DAT_ce314ba,pc),r0
    mov 0x1B,r1
    mov 0x00,r4
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xB6,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    add 0x60,r0
    mov.b r1,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce314c8,pc),r2
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r2,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r3
    add 0x01,r3
    mov.w r3,@(r0,r1)

LAB_ce314b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314ba:
    #data 0x0141
    #align4

PTR_ce314bc:
    #data loc_8c0eb290
PTR_ce314c0:
    #data loc_8c034dee
PTR_ce314c4:
    #data loc_8c05176e
PTR_ce314c8:
    #data loc_8c2896b0

;=============================================

LAB_ce314cc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce315f4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce315e6,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce3151c
    mov.w @(DAT_ce315e6,pc),r0
    fldi0 fr4
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce315f8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce315fc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce315e8,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3151c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3151c:
    mov.w @(DAT_ce315ea,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31568
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31568
    mov 0x02,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt LAB_ce31568
    mov.w @(0x1c,r14),r0
    mov 0x12,r3
    mov 0x00,r4
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce315ec,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31600,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31568:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3156e:
    mov r4,r3
    mov.l @(PTR_ce31604,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31580:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31608,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce3160c,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce315ee,pc),r0
    mov 0x01,r4
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31618
    mov 0x00,r13
    mov r4,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce315f0,pc),r0
    mov 0x09,r6
    mov.l @(PTR_ce31610,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce315ec,pc),r0
    mov 0x15,r2
    mov.l @(PTR_ce31600,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
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
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce31614,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315e6:
    #data 0x0141
DAT_ce315e8:
    #data 0x0130
DAT_ce315ea:
    #data 0x019e
DAT_ce315ec:
    #data 0x01a1
DAT_ce315ee:
    #data 0x01fe
DAT_ce315f0:
    #data 0x01f9
    #align4

PTR_ce315f4:
    #data loc_8c034dee
DAT_ce315f8:
    #data 0xc13aaaaa
DAT_ce315fc:
    #data 0xc14db6db
PTR_ce31600:
    #data loc_8c2896b0
PTR_ce31604:
    #data PTR_ce3552c
PTR_ce31608:
    #data loc_8c052b4c
PTR_ce3160c:
    #data loc_8c056de4
PTR_ce31610:
    #data loc_8c034e8c
PTR_ce31614:
    #data loc_8c04223a

;=============================================

LAB_ce31618:
    mov 0x02,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x14,r5
    mov.w @(DAT_ce31722,pc),r0
    mov 0x0A,r6
    mov.l @(PTR_ce3172c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31724,pc),r0
    mov 0x16,r2
    mov.l @(PTR_ce31730,pc),r3
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
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3165c:
    mov.w @(DAT_ce31726,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31672
    mov.l @(PTR_ce31734,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31672:
    mov 0x5C,r1
    mov.l @(PTR_ce31738,pc),r3
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
    mov.l @(PTR_ce3173c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce316c6
    lds.l @r15+,PR
    mov.l @(PTR_ce31740,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce316c6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce316cc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3173c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31728,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3171c
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce31744,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31748,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3174c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31750,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3172a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3171c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3171c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31722:
    #data 0x01f9
DAT_ce31724:
    #data 0x01a1
DAT_ce31726:
    #data 0x01ff
DAT_ce31728:
    #data 0x0141
DAT_ce3172a:
    #data 0x0130
    #align4

PTR_ce3172c:
    #data loc_8c034e8c
PTR_ce31730:
    #data loc_8c2896b0
PTR_ce31734:
    #data loc_8c0511e2
PTR_ce31738:
    #data loc_8c052c84
PTR_ce3173c:
    #data loc_8c034dee
PTR_ce31740:
    #data loc_8c051648
DAT_ce31744:
    #data 0xc0c80000
DAT_ce31748:
    #data 0x3dd55555
DAT_ce3174c:
    #data 0x41809249
DAT_ce31750:
    #data 0xbf676db6

;=============================================

LAB_ce31754:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31898,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31892,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce3177c
    mov.w @(DAT_ce31892,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce3189c,pc),r1
    mov 0x00,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce3177c:
    mov.w @(DAT_ce31892,pc),r0
    mov.b @(r0,r14),r0
    tst 0x04,r0
    bt LAB_ce3179a
    mov.w @(DAT_ce31892,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce3189c,pc),r1
    mov 0x01,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBA,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce3179a:
    mov.w @(DAT_ce31892,pc),r0
    mov.b @(r0,r14),r0
    tst 0x08,r0
    bt LAB_ce317d4
    mov.w @(DAT_ce31892,pc),r0
    mov 0x17,r1
    mov 0x00,r4
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xB6,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    add 0x60,r0
    mov.b r1,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce318a0,pc),r2
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r2,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r3
    add 0x01,r3
    mov.w r3,@(r0,r1)

LAB_ce317d4:
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce31894,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31802
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce318a4,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31802:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31808:
    mov.w @(DAT_ce31896,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3181e
    mov.l @(PTR_ce318a8,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3181e:
    mov 0x5C,r1
    mov.l @(PTR_ce318ac,pc),r3
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
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce318b0,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3186e:
    mov r4,r3
    mov.l @(PTR_ce318b4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31880:
    mov r4,r3
    mov.l @(PTR_ce318b8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31892:
    #data 0x0141
DAT_ce31894:
    #data 0x041c
DAT_ce31896:
    #data 0x01ff
    #align4

PTR_ce31898:
    #data loc_8c034dee
PTR_ce3189c:
    #data loc_8c0eb290
PTR_ce318a0:
    #data loc_8c2896b0
PTR_ce318a4:
    #data loc_8c051648
PTR_ce318a8:
    #data loc_8c0511e2
PTR_ce318ac:
    #data loc_8c052c84
PTR_ce318b0:
    #data PTR_ce35534
PTR_ce318b4:
    #data PTR_ce3553c
PTR_ce318b8:
    #data PTR_ce35548

;=============================================

LAB_ce318bc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce319e4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce319e0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31916
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce319e8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce319ec,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319e2,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31906
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31906:
    mov.l @(PTR_ce319f0,pc),r3
    mov 0x0E,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov 0x03,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31916:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3191c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce319e4,pc),r3
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
    bf LAB_ce3198a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce319f4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce319f8,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319e2,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3197e
    mov 0x02,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3197e:
    lds.l @r15+,PR
    mov.l @(PTR_ce319fc,pc),r3
    mov r6,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3198a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31990:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce319e4,pc),r3
    add r14,r1
    mov 0x34,r0
    sts.l PR,@-r15
    fmov.s @r1,fr3
    mov 0x68,r1
    fmov.s @(r0,r14),fr2
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
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319c8
    lds.l @r15+,PR
    mov.l @(PTR_ce31a00,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce319c8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce319ce:
    mov r4,r3
    mov.l @(PTR_ce31a04,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319e0:
    #data 0x0141
DAT_ce319e2:
    #data 0x0130
    #align4

PTR_ce319e4:
    #data loc_8c034dee
DAT_ce319e8:
    #data 0xc1855555
DAT_ce319ec:
    #data 0x3ead5555
PTR_ce319f0:
    #data loc_8c042008
DAT_ce319f4:
    #data 0xc112aaaa
DAT_ce319f8:
    #data 0x3e8c0000
PTR_ce319fc:
    #data loc_8c034e8c
PTR_ce31a00:
    #data loc_8c051648
PTR_ce31a04:
    #data PTR_ce35554

;=============================================

LAB_ce31a08:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b14,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31b0c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31a64
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce31b18,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31b1c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31b20,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31b24,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31b0e,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31a58
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31a58:
    mov 0x10,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    bra LAB_ce31a6a
    mov.l @r15+,r14

LAB_ce31a64:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31a6a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b14,pc),r3
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
    mov.w @(DAT_ce31b10,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31b06
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31b10,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31b28,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31b2c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31b0e,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31afa
    mov 0x03,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31afa:
    lds.l @r15+,PR
    mov.l @(PTR_ce31b30,pc),r3
    mov 0x02,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b06:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b0c:
    #data 0x0141
DAT_ce31b0e:
    #data 0x0130
DAT_ce31b10:
    #data 0x041c
    #align4

PTR_ce31b14:
    #data loc_8c034dee
DAT_ce31b18:
    #data 0x417d5555
DAT_ce31b1c:
    #data 0xbea00000
DAT_ce31b20:
    #data 0x40cdb6db
DAT_ce31b24:
    #data 0xbf092492
DAT_ce31b28:
    #data 0x40855555
DAT_ce31b2c:
    #data 0xbea6aaaa
PTR_ce31b30:
    #data loc_8c034e8c

;=============================================

LAB_ce31b34:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ca0,pc),r3
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt LAB_ce31b90
    lds.l @r15+,PR
    mov.l @(PTR_ce31ca4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b90:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b96:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x01,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    ftrc fr3,FPUL
    sts FPUL,r0
    mov.w r0,@(0x4,r5)
    mov r4,r0
    nop
    mov.b r0,@(0x6,r5)
    mov.w @(DAT_ce31c9a,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce31ca8,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31c9c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31bcc
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce31bd2
    fadd fr4,fr3

LAB_ce31bcc:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fsub fr4,fr3

LAB_ce31bd2:
    mov.l @(DAT_ce31cac,pc),r1
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    lds r1,FPUL
    fmov.s @(r0,r14),fr2
    fldi0 fr4
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31cb0,pc),r0
    fmov.s @r0,fr2
    mov 0x5C,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31cb4,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce31c9c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31c16
    mov 0x00,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fneg fr2
    fmov fr2,@(r0,r14)

LAB_ce31c16:
    mov.l @(PTR_ce31cb8,pc),r3
    mov 0x12,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31cbc,pc),r2
    mov 0x00,r6
    mov r6,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c2c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ca0,pc),r3
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
    mova @(DAT_ce31cc0,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31c9e,pc),r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31c94
    mov.w @(DAT_ce31c9e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x40,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31c94:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c9a:
    #data 0x012c
DAT_ce31c9c:
    #data 0x0130
DAT_ce31c9e:
    #data 0x041c
    #align4

PTR_ce31ca0:
    #data loc_8c034dee
PTR_ce31ca4:
    #data loc_8c051648
DAT_ce31ca8:
    #data 0x432d5555
DAT_ce31cac:
    #data 0x43f00000
DAT_ce31cb0:
    #data 0xc08f5555
DAT_ce31cb4:
    #data 0xc0ab6db6
PTR_ce31cb8:
    #data loc_8c034e8c
PTR_ce31cbc:
    #data loc_8c0eb290
DAT_ce31cc0:
    #data 0x434db6db

;=============================================

LAB_ce31cc4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31e20,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31d26
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce31e24,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31e28,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31e2c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31e30,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31e1a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31d1a
    mov 0x01,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31d1a:
    lds.l @r15+,PR
    mov.l @(PTR_ce31e34,pc),r3
    mov 0x12,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d26:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d2c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31e20,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31e1c,pc),r0
    mov 0x01,r4
    mov.b @(r0,r14),r2
    tst r4,r2
    bf LAB_ce31de8
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce31d60
    mov.w @(DAT_ce31e1c,pc),r0
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov.l @r15,r1
    mov r4,r0
    nop
    mov.b r0,@(0x7,r1)

LAB_ce31d60:
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
    mov.w @(DAT_ce31e1e,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31de8
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31e1e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.l @r15,r3
    mov.w @(0x4,r3),r0
    mov r0,r3
    lds r3,FPUL
    mov 0x34,r0
    mov.l @(PTR_ce31e38,pc),r3
    float FPUL,fr3
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
    mov r14,r4
    mov 0x01,r5
    mov 0x05,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31e34,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31de8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31df0:
    sts.l PR,@-r15
    add 0xF8,r15
    mov.l @(PTR_ce31e20,pc),r3
    mov.l r4,@r15
    mov.l r5,@(0x4,r15)
    jsr @r3
    mov.l @r15,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e12
    mov.l @(0x4,r15),r3
    mov 0x00,r0
    mov.b r0,@(0x6,r3)
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce31e12:
    add 0x08,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e1a:
    #data 0x0130
DAT_ce31e1c:
    #data 0x0141
DAT_ce31e1e:
    #data 0x041c
    #align4

PTR_ce31e20:
    #data loc_8c034dee
DAT_ce31e24:
    #data 0x3f12ed55
DAT_ce31e28:
    #data 0x3d200000
DAT_ce31e2c:
    #data 0x4182b6db
DAT_ce31e30:
    #data 0xbf676db6
PTR_ce31e34:
    #data loc_8c034e8c
PTR_ce31e38:
    #data loc_8c0511b4

;=============================================

LAB_ce31e3c:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31f20,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31f14,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e52:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31f24,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x03,r4
    and r0,r4
    mov.w @(DAT_ce31f16,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31eb8
    mov.b @(0x2,r14),r0
    mov.l @(PTR_ce31f28,pc),r5
    extu.b r0,r0
    mov r0,r3
    shll2 r0
    add r3,r0
    mov.w @(DAT_ce31f18,pc),r3
    shll2 r0
    add r5,r0
    mov.w @r0,r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce31e88
    bra LAB_ce31eb8
    mov 0x00,r4

LAB_ce31e88:
    mov.b @(0x2,r14),r0
    extu.b r0,r0
    mov r0,r2
    shll2 r0
    add r2,r0
    mov.w @(DAT_ce31f1a,pc),r2
    shll2 r0
    mov.w @(r0,r5),r1
    extu.w r1,r1
    tst r2,r1
    bt LAB_ce31ea2
    bra LAB_ce31eb8
    mov 0x01,r4

LAB_ce31ea2:
    mov.b @(0x2,r14),r0
    extu.b r0,r0
    mov r0,r1
    shll2 r0
    add r1,r0
    shll2 r0
    mov.w @(r0,r5),r0
    extu.w r0,r0
    tst 0x80,r0
    bt LAB_ce31eb8
    mov 0x02,r4

LAB_ce31eb8:
    mov.w @(DAT_ce31f1c,pc),r0
    mov.l @(r0,r14),r6
    mov.b @(0x1,r6),r0
    extu.b r0,r0
    cmp/eq 0x18,r0
    bt/s LAB_ce31ed6
    mov r0,r5
    mov r5,r0
    nop
    cmp/eq 0x19,r0
    bt LAB_ce31ed6
    mov r5,r0
    nop
    cmp/eq 0x1A,r0
    bf LAB_ce31ee0

LAB_ce31ed6:
    mov.l @(PTR_ce31f24,pc),r2
    jsr @r2
    nop
    mov 0x01,r4
    and r0,r4

LAB_ce31ee0:
    extu.b r4,r0
    mov.l @(PTR_ce31f2c,pc),r13
    cmp/eq 0x00,r0
    bt LAB_ce31ef0
    cmp/eq 0x01,r0
    bt LAB_ce31f04
    bra LAB_ce31f30
    nop

LAB_ce31ef0:
    mov 0x13,r5
    mov 0x00,r6
    jsr @r13
    mov r14,r4
    mov 0x21,r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x3C,r0
    bra LAB_ce31f68
    mov.w r0,@(0x1c,r14)

LAB_ce31f04:
    mov 0x13,r5
    mov 0x03,r6
    jsr @r13
    mov r14,r4
    mov 0x21,r0
    mov 0x01,r2
    bra LAB_ce31f68
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f14:
    #data 0x02a4
DAT_ce31f16:
    #data 0x0525
DAT_ce31f18:
    #data 0x0200
DAT_ce31f1a:
    #data 0x0100
DAT_ce31f1c:
    #data 0x020c
    #align4

PTR_ce31f20:
    #data PTR_ce35560
PTR_ce31f24:
    #data loc_8c03319e
PTR_ce31f28:
    #data loc_8c2681dc
PTR_ce31f2c:
    #data loc_8c034e8c

;=============================================

LAB_ce31f30:
    mov 0x00,r5
    mov 0x02,r6
    jsr @r13
    mov r14,r4
    mov 0x21,r0
    fldi0 fr4
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32080,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32078,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f68
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31f68:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31f7a:
    mov.w @(0x1c,r4),r0
    mov.l @(PTR_ce32084,pc),r2
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    add 0x01,r0
    exts.w r0,r0
    jmp @r2
    tst r0,r0

LAB_ce31f8a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32084,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3207a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32000
    mov.b @(0x7,r14),r0
    mov 0x02,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3207c,pc),r0
    mov.b r3,@(r0,r14)
    add 0xDF,r0
    mov.b r4,@(r0,r14)
    add 0x24,r0
    mov.b r4,@(r0,r14)
    add 0xD8,r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov 0x11,r3
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32088,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3208c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32090,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32094,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32078,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32000
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32000:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32006:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32084,pc),r3
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
    bf LAB_ce3205c
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce3205c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32062:
    rts
    nop

LAB_ce32066:
    mov r4,r3
    mov.l @(PTR_ce32098,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32078:
    #data 0x0130
DAT_ce3207a:
    #data 0x0141
DAT_ce3207c:
    #data 0x01f9
    #align4

DAT_ce32080:
    #data 0xc0a00000
PTR_ce32084:
    #data loc_8c034dee
DAT_ce32088:
    #data 0xc1200000
DAT_ce3208c:
    #data 0x3e555555
DAT_ce32090:
    #data 0x41092492
DAT_ce32094:
    #data 0xbe892492
PTR_ce32098:
    #data PTR_ce35574

;=============================================

LAB_ce3209c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce321a8,pc),r3
    jsr @r3
    mov r4,r14
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce320e8
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
    mova @(DAT_ce321ac,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce321a2,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce320e8
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce321b0,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x13,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce320e8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce320ee:
    mov 0x21,r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce321b4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce32102:
    mov r4,r3
    mov.l @(PTR_ce321b8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32114:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce32128
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce321b0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce32128:
    mov.l @(PTR_ce321a8,pc),r3
    jmp @r3
    nop

LAB_ce3212e:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce32142
    mov.b @(0x6,r4),r0
    mov 0x00,r6
    mov.l @(PTR_ce321b0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce32142:
    mov.l @(PTR_ce321a8,pc),r3
    jmp @r3
    nop

LAB_ce32148:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce3215c
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce321b0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce3215c:
    mov.l @(PTR_ce321a8,pc),r3
    jmp @r3
    nop

LAB_ce32162:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce321bc,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce3218e
    mov.w @(DAT_ce321a4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32184
    lds.l @r15+,PR
    mov.l @(PTR_ce321c0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32184:
    lds.l @r15+,PR
    mov.l @(PTR_ce321c4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3218e:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce321c8,pc),r0
    extu.b r2,r2
    lds.l @r15+,PR
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce321a2:
    #data 0x0298
DAT_ce321a4:
    #data 0x01f9
    
    #align4

PTR_ce321a8:
    #data loc_8c034dee
DAT_ce321ac:
    #data 0x42555555
PTR_ce321b0:
    #data loc_8c034e8c
PTR_ce321b4:
    #data PTR_ce35580
PTR_ce321b8:
    #data PTR_ce3558c
PTR_ce321bc:
    #data loc_8c046c8a
PTR_ce321c0:
    #data loc_8c05176e
PTR_ce321c4:
    #data loc_8c051648
PTR_ce321c8:
    #data PTR_ce35594

;=============================================

LAB_ce321cc:
    mov.b @(0x6,r4),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce322f8,pc),r0
    mov.b r3,@(r0,r4)
    mova @(DAT_ce32304,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce322fa,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce321f0
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce321f0:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce32308,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x3A,r3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce3230c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r5
    fmov fr3,@(r0,r4)
    mov r5,r6
    mov.w @(DAT_ce322fc,pc),r0
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce32310,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32314,pc),r2
    jmp @r2
    mov 0x14,r5

LAB_ce32234:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32318,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce3231c,pc),r3
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
    bt LAB_ce322a6
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce32314,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32320,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32324,pc),r3
    mov r14,r4
    mov 0x00,r6
    mov 0x05,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce322a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce322ac:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32318,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce322c6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32328,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce322c6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce322ce:
    mov r4,r3
    mov.l @(PTR_ce3232c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce322e0:
    mov.w @(DAT_ce32300,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32330,pc),r0
    extu.b r3,r3
    mov.w @(DAT_ce322fe,pc),r5
    shll2 r3
    mov.l @(r0,r3),r2
    add r14,r5
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce322f8:
    #data 0x01f9
DAT_ce322fa:
    #data 0x01d2
DAT_ce322fc:
    #data 0x01a1
DAT_ce322fe:
    #data 0x02a4
DAT_ce32300:
    #data 0x01e9
    #align4

DAT_ce32304:
    #data 0xc1f00000
DAT_ce32308:
    #data 0x3e892492
DAT_ce3230c:
    #data 0xbf4db6db
PTR_ce32310:
    #data loc_8c2896b0
PTR_ce32314:
    #data loc_8c034e8c
PTR_ce32318:
    #data loc_8c034dee
PTR_ce3231c:
    #data loc_8c052ce2
PTR_ce32320:
    #data loc_8c0511b4
PTR_ce32324:
    #data loc_8c0eb290
PTR_ce32328:
    #data loc_8c051854
PTR_ce3232c:
    #data PTR_ce355a8
PTR_ce32330:
    #data PTR_ce355b4

;=============================================

LAB_ce32334:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce32468,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3246c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32470,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32474,pc),r2
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
    mov.w @(DAT_ce3245c,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3245e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x1,r13)
    mov 0x15,r5
    mov.b r0,@r13
    mov.b r0,@(0x2,r13)
    mov.b r0,@(0x3,r13)
    mov.w @(DAT_ce32460,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    shll r3
    add 0x30,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32478,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce32460,pc),r0
    mov.l @(PTR_ce3247c,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32462,pc),r0
    mov r13,r5
    mov r14,r4
    mov.b @(r0,r14),r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce323d2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32480,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32456
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce3247c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32460,pc),r0
    mov.b @(r0,r14),r6
    add 0x02,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32462,pc),r0
    mov.l @(PTR_ce32488,pc),r4
    mov.b @(r0,r14),r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce32484,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce3248c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32460,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    shll2 r0
    mov.l @(r0,r4),r3
    mov 0x5C,r0
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32460,pc),r0
    mov.b @(r0,r14),r3
    mov 0x68,r0
    extu.b r3,r3
    shll r3
    shll2 r3
    add r3,r4
    mov.l @(0x4,r4),r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32464,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32456
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32456:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3245c:
    #data 0x01f9
DAT_ce3245e:
    #data 0x041c
DAT_ce32460:
    #data 0x01a3
DAT_ce32462:
    #data 0x0141
DAT_ce32464:
    #data 0x01d2
    #align4

PTR_ce32468:
    #data loc_8c056de4
PTR_ce3246c:
    #data loc_8c05218a
PTR_ce32470:
    #data loc_8c035162
PTR_ce32474:
    #data loc_8c05115a
PTR_ce32478:
    #data loc_8c2896b0
PTR_ce3247c:
    #data loc_8c034e8c
PTR_ce32480:
    #data loc_8c034dee
DAT_ce32484:
    #data 0x3fd55555
PTR_ce32488:
    #data DAT_ce355e0
DAT_ce3248c:
    #data 0x47800000

;=============================================

LAB_ce32490:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x00,r12
    sts.l PR,@-r15
    mov.l @(PTR_ce325c0,pc),r3
    jsr @r3
    mov r5,r13
    mov.w @(DAT_ce325b2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce324ae
    bra LAB_ce325d0
    nop

LAB_ce324ae:
    mov.w @(DAT_ce325b4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce324c6
    mov.b r12,@(r0,r14)
    mov 0x01,r0
    mov.l @(PTR_ce325c4,pc),r3
    mov 0x07,r5
    mov.b r0,@(0x2,r13)
    mov 0x00,r6
    jsr @r3
    mov r14,r4

LAB_ce324c6:
    mov.b @r13,r2
    tst r2,r2
    bt LAB_ce32524
    mov.b @r13,r3
    add 0xFF,r3
    mov.b r3,@r13
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce32524
    mov r12,r0
    nop
    mov.b r0,@(0x1,r13)
    mov.b r0,@r13
    mov.b @(0x3,r13),r0
    xor 0x01,r0
    mov.b r0,@(0x3,r13)
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce324fa
    mov.w @(DAT_ce325b6,pc),r0
    mov.b @(r0,r14),r2
    add 0xFE,r0
    shll r2
    add 0x30,r2
    bra LAB_ce32506
    mov.b r2,@(r0,r14)

LAB_ce324fa:
    mov.w @(DAT_ce325b6,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    shll r3
    add 0x4E,r3
    mov.b r3,@(r0,r14)

LAB_ce32506:
    mov.w @(DAT_ce325b8,pc),r0
    mov.l @(PTR_ce325c8,pc),r3
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce32524:
    mov.w @(DAT_ce325ba,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3253a
    mov.b @(0x1,r13),r0
    tst r0,r0
    bf LAB_ce3253a
    mov 0x08,r3
    mov 0x01,r0
    mov.b r0,@(0x1,r13)
    mov.b r3,@r13

LAB_ce3253a:
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
    mov.w @(DAT_ce325bc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3256a
    mov.w @(DAT_ce325be,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bt LAB_ce32572
    bra LAB_ce32578
    nop

LAB_ce3256a:
    mov.w @(DAT_ce325be,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce32578

LAB_ce32572:
    mov r12,r0
    nop
    mov.w r0,@(0x1c,r14)

LAB_ce32578:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce325d0
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x2,r13)
    mov 0x15,r5
    mov.w @(DAT_ce325b6,pc),r0
    mov.l @(PTR_ce325cc,pc),r3
    mov.b @(r0,r14),r6
    add 0x04,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce325c4,pc),r2
    mov 0x01,r5
    mov r14,r4
    mov 0x00,r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325b2:
    #data 0x0141
DAT_ce325b4:
    #data 0x0140
DAT_ce325b6:
    #data 0x01a3
DAT_ce325b8:
    #data 0x01ac
DAT_ce325ba:
    #data 0x019e
DAT_ce325bc:
    #data 0x01d2
DAT_ce325be:
    #data 0x01fd
    #align4

PTR_ce325c0:
    #data loc_8c034dee
PTR_ce325c4:
    #data loc_8c0eb290
PTR_ce325c8:
    #data loc_8c2896b0
PTR_ce325cc:
    #data loc_8c034e8c

;=============================================

LAB_ce325d0:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce325da:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32620,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32606
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32624,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32606:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3260c:
    mov r4,r3
    mov.l @(PTR_ce32628,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    #data 0x0000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

PTR_ce32620:
    #data loc_8c034dee
PTR_ce32624:
    #data loc_8c051648
PTR_ce32628:
    #data PTR_ce355f0

;=============================================

LAB_ce3262c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce327a4,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce327a8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce327ac,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce327b0,pc),r2
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
    mov 0x01,r3
    mov.w @(DAT_ce3279c,pc),r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3279e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce327a0,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    shll r3
    add 0x33,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.l @(PTR_ce327b4,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.l @r3,r2
    add 0x7C,r2
    mov.b @(0x2,r14),r0
    mov 0x15,r5
    extu.b r0,r0
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce327a0,pc),r0
    mov.l @(PTR_ce327b8,pc),r2
    mov.b @(r0,r14),r6
    add 0x06,r6
    jsr @r2
    mov r14,r4
    mov 0x10,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce326c0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce327bc,pc),r3
    jsr @r3
    mov r5,r12
    mov.w @(DAT_ce327a2,pc),r0
    mov.l @(PTR_ce327c0,pc),r11
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce326f6
    mov.w @(DAT_ce327a2,pc),r0
    mov r12,r5
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    bsr FUN_ce328ae
    mov r14,r4
    mov 0x02,r5
    mov 0x00,r6
    jsr @r11
    mov r14,r4

LAB_ce326f6:
    mov.w @(DAT_ce327a2,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce3271a
    mov.w @(DAT_ce327a2,pc),r0
    mov 0x00,r5
    mov.l @(PTR_ce327ac,pc),r1
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    mov 0x03,r5
    mov 0x00,r6
    jsr @r11
    mov r14,r4

LAB_ce3271a:
    mov.w @(DAT_ce327a2,pc),r0
    mov.b @(r0,r14),r0
    tst 0x10,r0
    bt LAB_ce32780
    mov.w @(DAT_ce327a2,pc),r0
    mov 0x00,r6
    mov.l @(PTR_ce327c4,pc),r13
    mov r6,r5
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xAE,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r13
    mov r14,r4
    mov 0x00,r5
    mov 0x01,r6
    jsr @r13
    mov r14,r4
    mov 0x00,r5
    mov 0x02,r6
    jsr @r13
    mov r14,r4
    mov 0x00,r5
    mov 0x03,r6
    jsr @r13
    mov r14,r4
    mov 0x00,r5
    mov 0x04,r6
    jsr @r13
    mov r14,r4
    mov 0x00,r5
    mov 0x05,r6
    jsr @r13
    mov r14,r4
    mov 0x00,r5
    mov 0x06,r6
    jsr @r13
    mov r14,r4
    mov 0x00,r5
    mov 0x07,r6
    jsr @r13
    mov r14,r4
    mov 0x00,r5
    mov 0x08,r6
    jsr @r13
    mov r14,r4
    mov 0x00,r5
    mov 0x09,r6
    jsr @r13
    mov r14,r4

LAB_ce32780:
    mov.w @(DAT_ce327a2,pc),r0
    mov.b @(r0,r14),r0
    tst 0x08,r0
    bt LAB_ce327d2
    mov.w @(DAT_ce327a2,pc),r0
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xB6,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x9,r12)
    bra LAB_ce327c8
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3279c:
    #data 0x01f9
DAT_ce3279e:
    #data 0x041c
DAT_ce327a0:
    #data 0x01a3
DAT_ce327a2:
    #data 0x0141
    #align4

PTR_ce327a4:
    #data loc_8c056de4
PTR_ce327a8:
    #data loc_8c05218a
PTR_ce327ac:
    #data loc_8c035162
PTR_ce327b0:
    #data loc_8c05115a
PTR_ce327b4:
    #data loc_8c2896b0
PTR_ce327b8:
    #data loc_8c034e8c
PTR_ce327bc:
    #data loc_8c034dee
PTR_ce327c0:
    #data loc_8c0eb290
PTR_ce327c4:
    #data loc_8c0b1f58

;=============================================

LAB_ce327c8:
    mov 0x06,r5
    mov r0,r6
    mov.b r0,@(0xa,r12)
    jsr @r11
    mov r14,r4

LAB_ce327d2:
    mov.w @(DAT_ce328da,pc),r0
    mov.b @(r0,r14),r0
    tst 0x04,r0
    bt LAB_ce32812
    mov r12,r5
    bsr FUN_ce32852
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32812
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce328e0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.w @(DAT_ce328dc,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce328e4,pc),r3
    mov r14,r4
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    add 0x08,r6
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32812:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3281e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce328e8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32838
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce328ec,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32838:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32840:
    mov r4,r3
    mov.l @(PTR_ce328f0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce32852:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r5,r14
    mov.l r4,@r15
    mov.b @(0x8,r14),r0
    tst r0,r0
    bf LAB_ce328a6
    mov.b @(0xa,r14),r0
    add 0xFF,r0
    mov.b r0,@(0xa,r14)
    add 0x01,r0
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce328a6
    mov 0x04,r0
    mov.b r0,@(0xa,r14)
    mov 0x25,r0
    mov.l @r15,r6
    mov 0x01,r7
    mov 0x00,r5
    mov.b @(r0,r6),r6
    mov.b @(0x9,r14),r0
    extu.b r6,r6
    mov r6,r3
    shll2 r3
    shll r6
    extu.b r0,r0
    add r3,r6
    mov.l @(PTR_ce328f4,pc),r3
    add r0,r6
    add 0x24,r6
    jsr @r3
    mov.l @r15,r4
    mov.b @(0x9,r14),r0
    mov 0x04,r3
    extu.b r0,r0
    cmp/ge r3,r0
    bt LAB_ce328a6
    mov.b @(0x9,r14),r0
    add 0x01,r0
    mov.b r0,@(0x9,r14)

LAB_ce328a6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce328ae:
    add 0xFC,r15
    mov.l r4,@r15
    mov.b @(0x8,r5),r0
    tst r0,r0
    bf LAB_ce328d6
    mov.l @r15,r6
    mov 0x25,r0
    mov.l @r15,r4
    mov 0x00,r5
    mov.b @(r0,r6),r6
    mov 0x01,r7
    extu.b r6,r6
    mov r6,r3
    shll2 r3
    shll r6
    add r3,r6
    mov.l @(PTR_ce328f4,pc),r3
    add 0x29,r6
    jmp @r3
    add 0x04,r15

LAB_ce328d6:
    rts
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328da:
    #data 0x0141
DAT_ce328dc:
    #data 0x01a3
    #align4

PTR_ce328e0:
    #data loc_8c035162
PTR_ce328e4:
    #data loc_8c034e8c
PTR_ce328e8:
    #data loc_8c034dee
PTR_ce328ec:
    #data loc_8c051648
PTR_ce328f0:
    #data PTR_ce35600
PTR_ce328f4:
    #data loc_8c03544c

;=============================================

LAB_ce328f8:
    mov.w @(DAT_ce329c6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce3291a
    mov r5,r13
    mov.w @(DAT_ce329ca,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce329c8,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3291a:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce329d8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce329dc,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce329e0,pc),r3
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
    mov 0x00,r12
    mov.w @(DAT_ce329cc,pc),r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce329ce,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov r12,r0
    nop
    mov.b r0,@(0xc,r13)
    mov 0x36,r3
    mov.b r0,@(0xd,r13)
    mov 0x16,r5
    mov.b r0,@r13
    mov r12,r6
    mov.b r0,@(0x1,r13)
    mov.b r0,@(0xe,r13)
    mov.b r0,@(0xf,r13)
    mov 0x1E,r0
    mov.b r12,@(r0,r13)
    mov.w @(DAT_ce329d0,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce329e4,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce329e8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce329a2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce329d2,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce329d4,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce329c6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce329ec
    bra LAB_ce329ee
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329c6:
    #data 0x0255
DAT_ce329c8:
    #data 0x00ff
DAT_ce329ca:
    #data 0x03f0
DAT_ce329cc:
    #data 0x01f9
DAT_ce329ce:
    #data 0x041c
DAT_ce329d0:
    #data 0x01a1
DAT_ce329d2:
    #data 0x03f8
DAT_ce329d4:
    #data 0x0328
    #align4

PTR_ce329d8:
    #data loc_8c05218a
PTR_ce329dc:
    #data loc_8c035162
PTR_ce329e0:
    #data loc_8c05115a
PTR_ce329e4:
    #data loc_8c2896b0
PTR_ce329e8:
    #data loc_8c034e8c

;=============================================

LAB_ce329ec:
    mov 0x00,r3

LAB_ce329ee:
    mov.w @(DAT_ce32b0a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32b14,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32b0c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce32a16
    mov.w @(DAT_ce32b0c,pc),r0
    mov 0x0D,r5
    mov.l @(PTR_ce32b18,pc),r1
    mov 0x00,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce32a16:
    mov.w @(DAT_ce32b0c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32a80
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r3,r2
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32b1c,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce32b20,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    mov 0x01,r6
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce32b0e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.l @(PTR_ce32b24,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32b28,pc),r2
    mov 0x00,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mov r0,r3
    tst r3,r3
    bf/s LAB_ce32a6c
    mov.l r0,@(0x14,r14)
    mov.l @(PTR_ce32b2c,pc),r3
    jsr @r3
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a6c:
    mov.l @r15,r2
    mov 0x01,r0
    mov.l @(PTR_ce32b30,pc),r3
    mov r0,r5
    mov.b r0,@(0xc,r2)
    mov r0,r6
    jsr @r3
    mov r14,r4
    mov 0x50,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32a80:
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a88:
    mov.w @(DAT_ce32b10,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov r5,r13
    mov.w @(DAT_ce32b12,pc),r0
    mov r13,r5
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    bsr FUN_ce3300c
    mov r14,r4
    mov r13,r5
    bsr FUN_ce32f9c
    mov r14,r4
    mov.b @(0xf,r13),r0
    tst r0,r0
    bf LAB_ce32ac0
    mov r13,r5
    bsr FUN_ce3303a
    mov r14,r4
    bra LAB_ce32ac6
    nop

LAB_ce32ac0:
    mov r13,r5
    bsr FUN_ce3304c
    mov r14,r4

LAB_ce32ac6:
    mov.l @(PTR_ce32b14,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32b02
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32b3c,pc),r3
    mov 0x15,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x16,r5
    ftrc fr3,FPUL
    sts FPUL,r0
    mov.w r0,@(0x10,r13)
    mova @(DAT_ce32b34,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32b38,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32b02:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b0a:
    #data 0x03f1
DAT_ce32b0c:
    #data 0x0141
DAT_ce32b0e:
    #data 0x03f0
DAT_ce32b10:
    #data 0x03f8
DAT_ce32b12:
    #data 0x0328
    #align4

PTR_ce32b14:
    #data loc_8c034dee
PTR_ce32b18:
    #data loc_8c0eb2e4
DAT_ce32b1c:
    #data 0xc0a00000
DAT_ce32b20:
    #data 0x433a6db6
PTR_ce32b24:
    #data loc_8c050834
PTR_ce32b28:
    #data loc_8c0b2314
PTR_ce32b2c:
    #data loc_8c051648
PTR_ce32b30:
    #data loc_8c02fec4
DAT_ce32b34:
    #data 0x41892492
DAT_ce32b38:
    #data 0xbe892492
PTR_ce32b3c:
    #data loc_8c034e8c

;=============================================

LAB_ce32b40:
    mov.w @(DAT_ce32c46,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov r5,r13
    mov.w @(DAT_ce32c48,pc),r0
    mov r13,r5
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    bsr FUN_ce3300c
    mov r14,r4
    mov r13,r5
    bsr FUN_ce32f9c
    mov r14,r4
    mov.b @(0xf,r13),r0
    tst r0,r0
    bf LAB_ce32b78
    mov r13,r5
    bsr FUN_ce3303a
    mov r14,r4
    bra LAB_ce32b7e
    nop

LAB_ce32b78:
    mov r13,r5
    bsr FUN_ce3304c
    mov r14,r4

LAB_ce32b7e:
    mov.w @(DAT_ce32c4a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce32ba4
    mov r14,r4
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

LAB_ce32ba4:
    mov.l @(PTR_ce32c50,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32bd2
    mov.b @(0x7,r14),r0
    mov 0x16,r6
    mov.l @(PTR_ce32c54,pc),r3
    mov r6,r5
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

LAB_ce32bd2:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32bda:
    mov.w @(DAT_ce32c46,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov r5,r13
    mov.w @(DAT_ce32c48,pc),r0
    mov r13,r5
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    bsr FUN_ce3300c
    mov r14,r4
    mov r13,r5
    bsr FUN_ce32f9c
    mov r14,r4
    mov.b @(0xf,r13),r0
    tst r0,r0
    bf LAB_ce32c12
    mov r13,r5
    bsr FUN_ce3303a
    mov r14,r4
    bra LAB_ce32c18
    nop

LAB_ce32c12:
    mov r13,r5
    bsr FUN_ce3304c
    mov r14,r4

LAB_ce32c18:
    mov.l @(0x14,r14),r4
    mov 0x34,r0
    mov.l @(PTR_ce32c50,pc),r3
    fmov.s @(r0,r4),fr3
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r4),fr3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32c3e
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32c4c,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce32c3e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c46:
    #data 0x03f8
DAT_ce32c48:
    #data 0x0328
DAT_ce32c4a:
    #data 0x0141
DAT_ce32c4c:
    #data 0x012c
    #align4

PTR_ce32c50:
    #data loc_8c034dee
PTR_ce32c54:
    #data loc_8c034e8c

;=============================================

LAB_ce32c58:
    mov.w @(DAT_ce32d58,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov r5,r13
    mov.w @(DAT_ce32d5a,pc),r0
    mov r13,r5
    mov.b r2,@(r0,r14)
    bsr FUN_ce3300c
    mov r14,r4
    mov r13,r5
    bsr FUN_ce3303a
    mov r14,r4
    mov r13,r5
    bsr FUN_ce32f3e
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32cac
    mov.b @(0x7,r14),r0
    mov 0x01,r3
    mov 0x19,r6
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x16,r5
    mov.w @(DAT_ce32d5c,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0xc,r13)
    lds.l @r15+,PR
    mov.l @(PTR_ce32d68,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32cac:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32cb4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32d58,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32d5a,pc),r0
    mov.l @(PTR_ce32d6c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32d0e
    mov.b @(0x7,r14),r0
    mov 0x16,r5
    mov 0x1A,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.l @r15,r3
    mov.w @(0x10,r3),r0
    mov r0,r3
    lds r3,FPUL
    mov 0x34,r0
    mov.l @(PTR_ce32d68,pc),r3
    float FPUL,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d5e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32d60,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32d62,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce32d0e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32d16:
    mov.w @(DAT_ce32d64,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32d2a
    mov r14,r4
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce32d2a:
    mov.l @(PTR_ce32d6c,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32d40
    lds.l @r15+,PR
    mov.l @(PTR_ce32d70,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32d40:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32d46:
    mov r4,r3
    mov.l @(PTR_ce32d74,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d58:
    #data 0x03f8
DAT_ce32d5a:
    #data 0x0328
DAT_ce32d5c:
    #data 0x012c
DAT_ce32d5e:
    #data 0x041c
DAT_ce32d60:
    #data 0x03f9
DAT_ce32d62:
    #data 0x0327
DAT_ce32d64:
    #data 0x0141
    #align4

PTR_ce32d68:
    #data loc_8c034e8c
PTR_ce32d6c:
    #data loc_8c034dee
PTR_ce32d70:
    #data loc_8c051648
PTR_ce32d74:
    #data PTR_ce3560c

;=============================================

LAB_ce32d78:
    mov.w @(DAT_ce32eb8,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce32eba,pc),r0
    mov r3,r6
    mov.l @(PTR_ce32ec4,pc),r13
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32ebc,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    mov.b r0,@(0xe,r5)
    mov 0x04,r5
    jsr @r13
    mov r14,r4
    mov 0x05,r5
    mov 0x00,r6
    jsr @r13
    mov r14,r4
    mov 0x06,r5
    mov 0x00,r6
    jsr @r13
    mov r14,r4
    mov 0x06,r5
    mov 0x01,r6
    jsr @r13
    mov r14,r4
    mov 0x08,r5
    mov 0x00,r6
    jsr @r13
    mov r14,r4
    mov 0x08,r5
    mov 0x01,r6
    jsr @r13
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce32ec8,pc),r2
    mov.b @(r0,r14),r6
    mov 0x03,r7
    mov 0x00,r5
    extu.b r6,r6
    mov r6,r3
    shll r6
    add r3,r6
    add 0x48,r6
    jsr @r2
    mov r14,r4
    mov 0x60,r0
    mov.w r0,@(0x1c,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32df2:
    mov.w @(DAT_ce32eb8,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov r5,r13
    mov.w @(DAT_ce32eba,pc),r0
    mov r13,r5
    mov.b r2,@(r0,r14)
    bsr FUN_ce3300c
    mov r14,r4
    mov r13,r5
    bsr FUN_ce3304c
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32e4e
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov r4,r0
    nop
    mov.b r0,@(0xc,r13)
    mov 0x01,r3
    mov.b r0,@(0xe,r13)
    mov r4,r5
    mov.w @(DAT_ce32ebc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32ecc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32ed0,pc),r2
    mov 0x19,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32e4e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32e56:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32eb8,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32eba,pc),r0
    mov.l @(PTR_ce32ed4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32eb0
    mov.b @(0x7,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce32ed0,pc),r3
    mov 0x1D,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov 0x00,r4
    mov.w @(0x10,r2),r0
    mov r0,r3
    lds r3,FPUL
    mov 0x34,r0
    float FPUL,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32ebe,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32ec0,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32ec2,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce32eb0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32eb8:
    #data 0x03f8
DAT_ce32eba:
    #data 0x0328
DAT_ce32ebc:
    #data 0x012c
DAT_ce32ebe:
    #data 0x041c
DAT_ce32ec0:
    #data 0x03f9
DAT_ce32ec2:
    #data 0x0327
    #align4

PTR_ce32ec4:
    #data loc_8c0b2362
PTR_ce32ec8:
    #data loc_8c03544c
PTR_ce32ecc:
    #data loc_8c035162
PTR_ce32ed0:
    #data loc_8c034e8c
PTR_ce32ed4:
    #data loc_8c034dee

;=============================================

LAB_ce32ed8:
    mov.w @(DAT_ce32fe8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32eec
    mov r14,r4
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce32eec:
    mov.l @(PTR_ce32ff4,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32f02
    lds.l @r15+,PR
    mov.l @(PTR_ce32ff8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f02:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f08:
    mov r4,r3
    mov.l @(PTR_ce32ffc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32f1a:
    mov r5,r3
    mov.l @(PTR_ce33000,pc),r1
    mov.l r5,@-r15
    mov.b @(0xd,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32f2c:
    mov r4,r3
    mov.l @(PTR_ce33004,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce32f3e:
    add 0xFC,r15
    mov.w @(DAT_ce32fea,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32f98
    mov.b @(r0,r4),r3
    mov 0x01,r7
    tst r7,r3
    bf LAB_ce32f98
    mov.b @(r0,r4),r0
    tst 0x10,r0
    bf LAB_ce32f98
    mov.w @(DAT_ce32fec,pc),r0
    mov.l @(r0,r4),r6
    mov.b @(0x3,r6),r0
    tst r0,r0
    bf LAB_ce32f98
    mov.w @(DAT_ce32fee,pc),r0
    mov.b @(r0,r6),r2
    tst r2,r2
    bf LAB_ce32f98
    mov.w @(DAT_ce32ff0,pc),r3
    mov.l @(DAT_ce33008,pc),r2
    add r6,r3
    mov.l r3,@r15
    mov.l @r3,r1
    mov 0x00,r3
    and r2,r1
    or r3,r1
    tst r1,r1
    bf LAB_ce32f98
    mov.b @(0x5,r6),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce32f98
    mov r7,r0
    nop
    mov.b r0,@(0xd,r5)
    mov 0x00,r0
    mov.b r0,@(0x7,r4)
    mov r7,r0
    nop
    mov.b r0,@(0xf,r5)
    mov 0x64,r0
    mov.w r0,@(0x1c,r4)

LAB_ce32f98:
    rts
    add 0x04,r15

;=============================================

FUN_ce32f9c:
    mov.w @(DAT_ce32fea,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32fe4
    mov.b @(r0,r4),r3
    mov 0x01,r7
    tst r7,r3
    bf LAB_ce32fe4
    mov.b @(r0,r4),r0
    tst 0x10,r0
    bf LAB_ce32fe4
    mov.w @(DAT_ce32fec,pc),r0
    mov.l @(r0,r4),r4
    mov.b @(0x3,r4),r0
    tst r0,r0
    bf LAB_ce32fe4
    mov.w @(DAT_ce32fee,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce32fe4
    mov.w @(DAT_ce32ff0,pc),r6
    mov 0x00,r1
    mov.l @(DAT_ce33008,pc),r3
    add r4,r6
    mov.l @r6,r2
    and r3,r2
    or r1,r2
    tst r2,r2
    bf LAB_ce32fe4
    mov.b @(0x5,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce32fe4
    mov r7,r0
    nop
    mov.b r0,@(0xf,r5)

LAB_ce32fe4:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32fe8:
    #data 0x0141
DAT_ce32fea:
    #data 0x019e
DAT_ce32fec:
    #data 0x01b0
DAT_ce32fee:
    #data 0x0411
DAT_ce32ff0:
    #data 0x0414
    #align4

PTR_ce32ff4:
    #data loc_8c034dee
PTR_ce32ff8:
    #data loc_8c051648
PTR_ce32ffc:
    #data PTR_ce35624
PTR_ce33000:
    #data PTR_ce35634
PTR_ce33004:
    #data PTR_ce3563c
DAT_ce33008:
    #data 0x07000000

;=============================================

FUN_ce3300c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    tst 0x01,r0
    bf LAB_ce33022
    mov.l @(PTR_ce33144,pc),r2
    mov 0x02,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4

LAB_ce33022:
    mov.w @(0x1c,r14),r0
    tst 0x0F,r0
    bf LAB_ce33034
    lds.l @r15+,PR
    mov.l @(PTR_ce33148,pc),r2
    mov 0x1F,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33034:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3303a:
    mov.w @(0x1c,r4),r0
    tst 0x03,r0
    bf LAB_ce33048
    mov.l @(PTR_ce33144,pc),r2
    mov 0x00,r6
    jmp @r2
    mov 0x03,r5

LAB_ce33048:
    rts
    nop

;=============================================

FUN_ce3304c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l r5,@r15
    mov.w @(0x1c,r4),r0
    tst 0x07,r0
    bf LAB_ce33070
    mov.l @r15,r6
    mov 0x1E,r0
    mov.l @(PTR_ce33144,pc),r3
    mov.b @(r0,r6),r6
    jsr @r3
    mov 0x07,r5
    mov.l @r15,r3
    mov 0x1E,r0
    mov 0x01,r2
    mov.b @(r0,r3),r1
    xor r2,r1
    mov.b r1,@(r0,r3)

LAB_ce33070:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33078:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33132,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33098
    mov.w @(DAT_ce33136,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33134,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33098:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3314c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33150,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33154,pc),r3
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
    mov.w @(DAT_ce33138,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3313a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x12,r0
    mov.l @r15,r3
    mov.b r4,@(r0,r3)
    mov 0x46,r3
    mov.w @(DAT_ce3313c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce33158,pc),r3
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.l @r3,r2
    mov.b @(0x2,r14),r0
    add 0x7C,r2
    extu.b r0,r0
    shll r0
    mov.w @(r0,r2),r1
    mov 0x16,r5
    mov 0x08,r6
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3315c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce33110:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3313e,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33140,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33132,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33160
    bra LAB_ce33162
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33132:
    #data 0x0255
DAT_ce33134:
    #data 0x00ff
DAT_ce33136:
    #data 0x03f0
DAT_ce33138:
    #data 0x01f9
DAT_ce3313a:
    #data 0x041c
DAT_ce3313c:
    #data 0x01a1
DAT_ce3313e:
    #data 0x03f8
DAT_ce33140:
    #data 0x0328
    #align4

PTR_ce33144:
    #data loc_8c0b2362
PTR_ce33148:
    #data loc_8c042008
PTR_ce3314c:
    #data loc_8c05218a
PTR_ce33150:
    #data loc_8c035162
PTR_ce33154:
    #data loc_8c05115a
PTR_ce33158:
    #data loc_8c2896b0
PTR_ce3315c:
    #data loc_8c034e8c

;=============================================

LAB_ce33160:
    mov 0x00,r3

LAB_ce33162:
    mov.w @(DAT_ce3323a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33244,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3323c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce33180
    mov.w @(DAT_ce3323c,pc),r0
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)

LAB_ce33180:
    mov.w @(DAT_ce3323c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce331f2
    mov.w @(DAT_ce3323c,pc),r0
    mov r15,r5
    mov 0x01,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce33248,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3324c,pc),r0
    mov 0x00,r2
    fmov.s fr3,@r15
    mov r2,r1
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce3323e,pc),r0
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.l @(PTR_ce33250,pc),r2
    mov.b r1,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33254,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce331de
    mov.l @(PTR_ce33258,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3325c,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce331de:
    mov.l @(PTR_ce33258,pc),r3
    mov 0x01,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov 0x04,r0
    mov.w r0,@(0x1c,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce331f2:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce331fa:
    mov.w @(DAT_ce33240,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33242,pc),r0
    mov.l @(PTR_ce33244,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce33234
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33260,pc),r3
    mov 0x09,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33234:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3323a:
    #data 0x03f1
DAT_ce3323c:
    #data 0x0141
DAT_ce3323e:
    #data 0x03f0
DAT_ce33240:
    #data 0x03f8
DAT_ce33242:
    #data 0x0328
    #align4

PTR_ce33244:
    #data loc_8c034dee
DAT_ce33248:
    #data 0x413aaaaa
DAT_ce3324c:
    #data 0x43250000
PTR_ce33250:
    #data loc_8c050834
PTR_ce33254:
    #data loc_8c0b3970
PTR_ce33258:
    #data loc_8c02fec4
PTR_ce3325c:
    #data loc_8c051648
PTR_ce33260:
    #data loc_8c034e8c

;=============================================

LAB_ce33264:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33386,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33388,pc),r0
    mov.l @(PTR_ce33394,pc),r3
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
    mov.w @(DAT_ce3338a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce332b0
    mov.w @(DAT_ce3338a,pc),r0
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)

LAB_ce332b0:
    mov.w @(DAT_ce3338a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce332c4
    mov.w @(DAT_ce3338a,pc),r0
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)

LAB_ce332c4:
    mov.l @r15,r1
    mov 0x12,r0
    mov.b @(r0,r1),r3
    tst r3,r3
    bt LAB_ce332d8
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0C,r0
    mov.w r0,@(0x1c,r14)

LAB_ce332d8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce332e0:
    mov.w @(DAT_ce33386,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33388,pc),r0
    mov.l @(PTR_ce33394,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce33328
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce33398,pc),r3
    mov 0x12,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3338c,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3338e,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce33328:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3332e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33394,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3336e
    mova @(DAT_ce3339c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce33390,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33352
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce33358
    fsub fr4,fr3

LAB_ce33352:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3

LAB_ce33358:
    mov.l @(PTR_ce333a0,pc),r3
    mov 0x00,r6
    fmov fr3,@(r0,r14)
    mov r6,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce333a4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3336e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33374:
    mov r4,r3
    mov.l @(PTR_ce333a8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33386:
    #data 0x03f8
DAT_ce33388:
    #data 0x0328
DAT_ce3338a:
    #data 0x0141
DAT_ce3338c:
    #data 0x03f9
DAT_ce3338e:
    #data 0x0327
DAT_ce33390:
    #data 0x0130
    #align4

PTR_ce33394:
    #data loc_8c034dee
PTR_ce33398:
    #data loc_8c034e8c
DAT_ce3339c:
    #data 0x42855555
PTR_ce333a0:
    #data loc_8c02fec4
PTR_ce333a4:
    #data loc_8c051648
PTR_ce333a8:
    #data PTR_ce35648

;=============================================

LAB_ce333ac:
    mov.w @(DAT_ce334ea,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce333cc
    mov r5,r13
    mov.w @(DAT_ce334ee,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce334ec,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce333cc:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33500,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33504,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33508,pc),r3
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
    mov.w @(DAT_ce334f0,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce334f2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x13,r0
    mov.b r4,@(r0,r13)
    mov r4,r0
    nop
    mov.b r0,@(0x2,r13)
    mov 0x39,r3
    mov.w @(DAT_ce334f4,pc),r0
    mov 0x16,r5
    mov 0x0B,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3350c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33510,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce33448:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce334f6,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce334f8,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce334ea,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3346a
    bra LAB_ce3346c
    mov 0x02,r3

LAB_ce3346a:
    mov 0x00,r3

LAB_ce3346c:
    mov.w @(DAT_ce334fa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33514,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce334fc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce334a8
    mov 0x00,r4
    mov.l @(PTR_ce33520,pc),r3
    mov.b r4,@(r0,r14)
    mov r15,r5
    mov.b @(0x7,r14),r0
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce334ee,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33518,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3351c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce334a8:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce334b0:
    mov.w @(DAT_ce334f6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce334f8,pc),r0
    mov.l @(PTR_ce33514,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce334e4
    mov.b @(0x7,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce33510,pc),r3
    mov 0x0C,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce334fc,pc),r0
    mov.b @(r0,r14),r0
    mov.w r0,@(0x1c,r14)

LAB_ce334e4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce334ea:
    #data 0x0255
DAT_ce334ec:
    #data 0x00ff
DAT_ce334ee:
    #data 0x03f0
DAT_ce334f0:
    #data 0x01f9
DAT_ce334f2:
    #data 0x041c
DAT_ce334f4:
    #data 0x01a1
DAT_ce334f6:
    #data 0x03f8
DAT_ce334f8:
    #data 0x0328
DAT_ce334fa:
    #data 0x03f1
DAT_ce334fc:
    #data 0x0141
    #align4

PTR_ce33500:
    #data loc_8c05218a
PTR_ce33504:
    #data loc_8c035162
PTR_ce33508:
    #data loc_8c05115a
PTR_ce3350c:
    #data loc_8c2896b0
PTR_ce33510:
    #data loc_8c034e8c
PTR_ce33514:
    #data loc_8c034dee
DAT_ce33518:
    #data 0x42a00000
DAT_ce3351c:
    #data 0x42f00000
PTR_ce33520:
    #data loc_8c050834

;=============================================

LAB_ce33524:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33652,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33654,pc),r0
    mov.l @(PTR_ce33660,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33656,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3359e
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(PTR_ce33664,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33658,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3356c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3356c:
    mov 0x00,r6
    mov.l @(PTR_ce33668,pc),r13
    mov r6,r5
    jsr @r13
    mov r14,r4
    mov 0x00,r5
    mov 0x01,r6
    jsr @r13
    mov r14,r4
    mov 0x00,r5
    mov 0x02,r6
    jsr @r13
    mov r14,r4
    mov 0x01,r5
    mov 0x00,r6
    jsr @r13
    mov r14,r4
    mov.l @r15,r3
    mov 0x01,r0
    mov.b r0,@(0x2,r3)
    mov 0x10,r0
    mov.w r0,@(0x1e,r14)
    mov 0x00,r0
    mov.l @r15,r3
    mov.b r0,@(0xb,r3)

LAB_ce3359e:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce335a8:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33652,pc),r0
    mov 0x02,r3
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov r5,r11
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33654,pc),r0
    mov.l @(PTR_ce33660,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov r11,r5
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
    bsr FUN_ce3385a
    mov r14,r4
    mov.w @(0x1c,r14),r0
    tst 0x0F,r0
    bf/s LAB_ce33616
    mov 0x00,r13
    mov.w @(DAT_ce3365a,pc),r0
    mov 0x39,r2
    mov.l @(PTR_ce3366c,pc),r3
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

LAB_ce33616:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33674
    mov.b @(0x7,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce33670,pc),r3
    mov 0x0D,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov 0x13,r0
    mov 0x01,r2
    mov.b r2,@(r0,r11)
    mov r13,r0
    nop
    mov.b r0,@(0x2,r11)
    mov.w @(DAT_ce3365c,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3365e,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    bra LAB_ce336cc
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33652:
    #data 0x03f8
DAT_ce33654:
    #data 0x0328
DAT_ce33656:
    #data 0x0141
DAT_ce33658:
    #data 0x0130
DAT_ce3365a:
    #data 0x01a1
DAT_ce3365c:
    #data 0x03f9
DAT_ce3365e:
    #data 0x0327
    #align4

PTR_ce33660:
    #data loc_8c034dee
PTR_ce33664:
    #data 0xbfd55555
PTR_ce33668:
    #data loc_8c0b3e30
PTR_ce3366c:
    #data loc_8c2896b0
PTR_ce33670:
    #data loc_8c034e8c

;=============================================

LAB_ce33674:
    mov.l @(PTR_ce33720,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce336cc
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x04,r3
    mov.w @(DAT_ce3371c,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x40,r3
    mov.b @(r0,r14),r2
    or r3,r2
    mov.l @(PTR_ce33724,pc),r3
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3371e,pc),r2
    or r2,r1
    mov.b r1,@(r0,r14)
    add 0xB9,r0
    mov.l @(r0,r14),r12
    mov r12,r5
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x6,r12)
    mov 0x6C,r0
    fldi0 fr3
    fmov fr3,@(r0,r12)
    mov 0x68,r0
    fmov fr3,@(r0,r12)
    mov 0x60,r0
    fmov fr3,@(r0,r12)
    mov 0x5C,r0
    fmov fr3,@(r0,r12)
    mov 0x15,r0
    mov.b r13,@(r0,r11)
    mov 0x50,r0
    mov.w r0,@(0x1c,r14)

LAB_ce336cc:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce336d8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33728,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33704
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3372c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33704:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3370a:
    mov r4,r3
    mov.l @(PTR_ce33730,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3371c:
    #data 0x01f7
DAT_ce3371e:
    #data 0x0080
    #align4

PTR_ce33720:
    #data loc_8c05264c
PTR_ce33724:
    #data loc_8c0523d8
PTR_ce33728:
    #data loc_8c034dee
PTR_ce3372c:
    #data loc_8c051648
PTR_ce33730:
    #data PTR_ce35660

;=============================================

LAB_ce33734:
    mov.w @(DAT_ce3387e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    mov r5,r12
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33880,pc),r0
    mov.l @(PTR_ce3388c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov r12,r5
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
    bsr FUN_ce3385a
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce337f8
    mov.b @(0x7,r14),r0
    mov 0x24,r5
    mov 0x0F,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x00,r13
    mov.w @(DAT_ce33882,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0xED,r0
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r14)
    add 0x55,r0
    mov.b r3,@(r0,r4)
    mov r13,r0
    nop
    mov.b r0,@(0x6,r4)
    mov 0x15,r0
    mov.b @(r0,r12),r3
    extu.b r3,r3
    cmp/pz r3
    bt LAB_ce337b2
    add 0x03,r3

LAB_ce337b2:
    shar r3
    mov.w @(DAT_ce33884,pc),r0
    shar r3
    add 0x20,r3
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.l @(PTR_ce33890,pc),r3
    mov 0x1E,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33894,pc),r2
    mov 0x01,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov 0x13,r0
    fldi0 fr4
    mov 0x01,r3
    mov.b r3,@(r0,r12)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce33886,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33888,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)

LAB_ce337f8:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33802:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3388c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3381c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33898,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3381c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33824:
    mov.w @(DAT_ce3388a,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov 0x02,r4
    mov.l @(PTR_ce3389c,pc),r1
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33848:
    mov r4,r3
    mov.l @(PTR_ce338a0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce3385a:
    mov.w @(0x1e,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r4)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce338b0
    mov 0x10,r0
    mov.w r0,@(0x1e,r4)
    mov.b @(0xb,r5),r0
    xor 0x01,r0
    mov.b r0,@(0xb,r5)
    mov.b @(0xb,r5),r0
    tst r0,r0
    bf LAB_ce338a8
    mova @(DAT_ce338a4,pc),r0
    bra LAB_ce338ac
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3387e:
    #data 0x03f8
DAT_ce33880:
    #data 0x0328
DAT_ce33882:
    #data 0x01c8
DAT_ce33884:
    #data 0x0205
DAT_ce33886:
    #data 0x03f9
DAT_ce33888:
    #data 0x0327
DAT_ce3388a:
    #data 0x01ea
    #align4

PTR_ce3388c:
    #data loc_8c034dee
PTR_ce33890:
    #data loc_8c034e8c
PTR_ce33894:
    #data loc_8c0eb290
PTR_ce33898:
    #data loc_8c051648
PTR_ce3389c:
    #data PTR_ce35678
PTR_ce338a0:
    #data PTR_ce35680
DAT_ce338a4:
    #data 0xbdd55555

;=============================================

LAB_ce338a8:
    mova @(DAT_ce33a10,pc),r0
    fmov.s @r0,fr3

LAB_ce338ac:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)

LAB_ce338b0:
    rts
    nop

LAB_ce338b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce33a14,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33a18,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33a1c,pc),r3
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
    mov.l @(PTR_ce33a20,pc),r3
    mov 0x05,r5
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33a00,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33a02,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33a24,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33a28,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33a04,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33928
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33928:
    mov.w @(DAT_ce33a06,pc),r0
    mov 0x4D,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33a2c,pc),r3
    mov 0x11,r6
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33a30,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce33960:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33a34,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33a08,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt/s LAB_ce33992
    fldi0 fr15
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

LAB_ce33992:
    mov.w @(DAT_ce33a08,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce339b2
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    bra LAB_ce339f8
    mov.b r0,@(0x6,r14)

LAB_ce339b2:
    mov.l @(PTR_ce33a38,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce339f8
    mov.w @(DAT_ce33a0a,pc),r0
    mov 0x02,r3
    mov r14,r4
    mov.l @(r0,r14),r5
    add 0x47,r0
    mov.b r3,@(r0,r14)
    mov 0x40,r3
    mov.b @(r0,r14),r2
    or r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33a0c,pc),r2
    or r2,r1
    mov.b r1,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r5)
    mov 0x68,r0
    fmov fr15,@(r0,r5)
    mov 0x60,r0
    fmov fr15,@(r0,r5)
    mov 0x5C,r0
    fmov fr15,@(r0,r5)
    lds.l @r15+,PR
    mov.l @(PTR_ce33a3c,pc),r1
    fmov.s @r15+,fr15
    jmp @r1
    mov.l @r15+,r14

LAB_ce339f8:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a00:
    #data 0x01f9
DAT_ce33a02:
    #data 0x041c
DAT_ce33a04:
    #data 0x0130
DAT_ce33a06:
    #data 0x01a1
DAT_ce33a08:
    #data 0x0141
DAT_ce33a0a:
    #data 0x01b0
DAT_ce33a0c:
    #data 0x0080
    #align4

DAT_ce33a10:
    #data 0x3dd55555
PTR_ce33a14:
    #data loc_8c05218a
PTR_ce33a18:
    #data loc_8c035162
PTR_ce33a1c:
    #data loc_8c05115a
PTR_ce33a20:
    #data loc_8c056de4
DAT_ce33a24:
    #data 0xc1555555
DAT_ce33a28:
    #data 0x3f200000
PTR_ce33a2c:
    #data loc_8c2896b0
PTR_ce33a30:
    #data loc_8c034e8c
PTR_ce33a34:
    #data loc_8c034dee
PTR_ce33a38:
    #data loc_8c05264c
PTR_ce33a3c:
    #data loc_8c0522e0

;=============================================

LAB_ce33a40:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33b9c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33a5a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33ba0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33a5a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33a62:
    mov r4,r3
    mov.l @(PTR_ce33ba4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33a74:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce33ba8,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33bac,pc),r2
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
    mov.w @(DAT_ce33b90,pc),r0
    mov 0x28,r5
    mov 0x3B,r3
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33b92,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33b94,pc),r0
    mov.b r5,@(r0,r14)
    add 0x01,r0
    mov.b r5,@(r0,r14)
    add 0x9B,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce33bb0,pc),r3
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.l @r3,r2
    mov.b @(0x2,r14),r0
    add 0x7C,r2
    mov 0x14,r5
    extu.b r0,r0
    shll r0
    mov.w @(r0,r2),r1
    mov 0x03,r6
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33bb4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce33af4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33b96,pc),r0
    mov r4,r14
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33b9c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33b98,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33b46
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mov r3,r6
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33bc0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce33bb8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33bbc,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33bc4,pc),r3
    mov 0x10,r0
    mov 0x1D,r5
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33bc8,pc),r2
    mov 0x50,r5
    jsr @r2
    mov r14,r4

LAB_ce33b46:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33b4e:
    mov.w @(DAT_ce33b96,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33b9c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33b78
    lds.l @r15+,PR
    mov.l @(PTR_ce33ba0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33b78:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33b7e:
    mov r4,r3
    mov.l @(PTR_ce33bcc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33b90:
    #data 0x01f9
DAT_ce33b92:
    #data 0x041c
DAT_ce33b94:
    #data 0x0205
DAT_ce33b96:
    #data 0x0328
DAT_ce33b98:
    #data 0x0141
    #align4

PTR_ce33b9c:
    #data loc_8c034dee
PTR_ce33ba0:
    #data loc_8c051648
PTR_ce33ba4:
    #data PTR_ce35688
PTR_ce33ba8:
    #data loc_8c05218a
PTR_ce33bac:
    #data loc_8c035162
PTR_ce33bb0:
    #data loc_8c2896b0
PTR_ce33bb4:
    #data loc_8c034e8c
DAT_ce33bb8:
    #data 0x41055555
DAT_ce33bbc:
    #data 0x43474924
PTR_ce33bc0:
    #data loc_8c050962
PTR_ce33bc4:
    #data loc_8c042008
PTR_ce33bc8:
    #data loc_8c04223a
PTR_ce33bcc:
    #data PTR_ce35694

;=============================================

LAB_ce33bd0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33c68,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33c6c,pc),r2
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
    mov.w @(DAT_ce33c62,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33c64,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x1F,r0
    mov.b r4,@(r0,r13)
    mov 0x20,r0
    mov.b r4,@(r0,r13)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov 0x4C,r3
    mov.w @(DAT_ce33c66,pc),r0
    mov 0x14,r5
    mov 0x04,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33c70,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33c74,pc),r2
    jsr @r2
    mov r14,r4
    mov r13,r5
    bsr FUN_ce33c7c
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33c78,pc),r2
    mov r14,r4
    mov 0x2D,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33c62:
    #data 0x01f9
DAT_ce33c64:
    #data 0x041c
DAT_ce33c66:
    #data 0x01a1
    #align4

PTR_ce33c68:
    #data loc_8c05218a
PTR_ce33c6c:
    #data loc_8c035162
PTR_ce33c70:
    #data loc_8c2896b0
PTR_ce33c74:
    #data loc_8c034e8c
PTR_ce33c78:
    #data loc_8c042008

;=============================================

FUN_ce33c7c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33d4c,pc),r3
    mov r4,r14
    jsr @r3
    mov r5,r13
    mov.l @(PTR_ce33d50,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33d44,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce33cc4
    mov 0x00,r12
    mov.b r12,@(r0,r14)
    add 0x60,r0
    mov 0x4C,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33d54,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce33cc4:
    mov r13,r5
    bsr FUN_ce33e34
    mov r14,r4
    mov.w @(DAT_ce33d46,pc),r0
    mov.w @(DAT_ce33d48,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce33cde
    mov 0x20,r0
    mov.b @(r0,r13),r2
    add 0x01,r2
    mov.b r2,@(r0,r13)

LAB_ce33cde:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33d66
    mov 0x20,r0
    mov.b @(r0,r13),r2
    mov 0x08,r3
    cmp/ge r3,r2
    bf LAB_ce33d60
    mov 0x1F,r0
    mov.b @(r0,r13),r1
    mov 0x03,r2
    extu.b r1,r1
    cmp/ge r2,r1
    bt LAB_ce33d3a
    mov.b @(r0,r13),r1
    mov 0x14,r5
    mov.l @(PTR_ce33d58,pc),r3
    add 0x01,r1
    mov.b r1,@(r0,r13)
    mov.b @(r0,r13),r6
    add 0x04,r6
    jsr @r3
    mov r14,r4
    mov 0x1F,r0
    mov.b @(r0,r13),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce33d2a
    cmp/eq 0x02,r0
    bt LAB_ce33d2e
    cmp/eq 0x03,r0
    bt LAB_ce33d32
    bra LAB_ce33d34
    nop

LAB_ce33d2a:
    bra LAB_ce33d34
    mov 0x04,r5

LAB_ce33d2e:
    bra LAB_ce33d34
    mov 0x06,r5

LAB_ce33d32:
    mov 0x14,r5

LAB_ce33d34:
    mov.l @(PTR_ce33d5c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce33d3a:
    mov 0x20,r0
    mov.b r12,@(r0,r13)
    mov 0x3C,r0
    bra LAB_ce33d66
    mov.w r0,@(0x1c,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33d44:
    #data 0x0141
DAT_ce33d46:
    #data 0x034e
DAT_ce33d48:
    #data 0x0360
    #align4

PTR_ce33d4c:
    #data loc_8c05218a
PTR_ce33d50:
    #data loc_8c034dee
PTR_ce33d54:
    #data loc_8c2896b0
PTR_ce33d58:
    #data loc_8c034e8c
PTR_ce33d5c:
    #data loc_8c042008

;=============================================

LAB_ce33d60:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce33d66:
    mov 0x1F,r0
    mov.b @(r0,r13),r3
    mov 0x03,r2
    extu.b r3,r3
    cmp/ge r2,r3
    bf LAB_ce33dc0
    mova @(DAT_ce33ea4,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce33e9e,pc),r0
    fmov.s fr3,@r15
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33d86
    fmov.s @r15,fr3
    fneg fr3
    fmov.s fr3,@r15

LAB_ce33d86:
    mov 0x34,r0
    fmov.s @r15,fr2
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce33ea8,pc),r0
    fadd fr3,fr2
    fmov.s fr2,@r15
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    mov 0x08,r0
    fldi0 fr2
    fmov fr2,@(r0,r15)
    mov.w @(0x1c,r14),r0
    tst 0x0F,r0
    bf LAB_ce33dc0
    mov.w @(DAT_ce33ea0,pc),r0
    mov.l @(PTR_ce33eac,pc),r2
    mov.b @(r0,r14),r0
    xor 0x01,r0
    mov r0,r5
    jsr @r2
    mov r15,r4
    mov.l @(PTR_ce33eb0,pc),r3
    mov 0x4B,r5
    jsr @r3
    mov r14,r4

LAB_ce33dc0:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33dcc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    bsr FUN_ce33e34
    mov r5,r13
    mov.l @(PTR_ce33eb4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33dfe
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce33eb8,pc),r3
    mov 0x08,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x9,r13)
    mov.b r0,@(0xa,r13)

LAB_ce33dfe:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33e06:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33ebc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce33eb4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33e2e
    mov.l @(PTR_ce33ec0,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33ec4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33e2e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33e34:
    mov.l r14,@-r15
    add 0xFC,r15
    mov.b @(0x8,r5),r0
    tst r0,r0
    bf/s LAB_ce33e86
    mov r4,r14
    mov 0x1F,r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bt LAB_ce33e86
    mov.w @(0x1e,r14),r0
    mov r14,r4
    mov 0x01,r7
    add 0x01,r0
    mov.w r0,@(0x1e,r14)
    mov 0x1F,r0
    mov.b @(r0,r5),r3
    mov 0x00,r5
    mov.w @(0x1e,r14),r0
    extu.b r3,r3
    and 0x03,r0
    shll2 r3
    add r0,r3
    mov.l @(PTR_ce33ec8,pc),r0
    mov.b @(r0,r3),r2
    mov 0x25,r0
    mov.b r2,@r15
    mov.b @(r0,r14),r6
    mov.b @r15,r2
    extu.b r6,r6
    mov r6,r3
    shll2 r3
    shll r6
    extu.b r2,r2
    add r3,r6
    add r2,r6
    add 0x5A,r6
    add 0x04,r15
    mov.l @(PTR_ce33ecc,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33e86:
    add 0x04,r15
    rts
    mov.l @r15+,r14

LAB_ce33e8c:
    mov r4,r3
    mov.l @(PTR_ce33ed0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33e9e:
    #data 0x0130
DAT_ce33ea0:
    #data 0x01d2
    #align4

DAT_ce33ea4:
    #data 0x42555555
DAT_ce33ea8:
    #data 0x432b6db6
PTR_ce33eac:
    #data loc_8c104a5a
PTR_ce33eb0:
    #data loc_8c04223a
PTR_ce33eb4:
    #data loc_8c034dee
PTR_ce33eb8:
    #data loc_8c034e8c
PTR_ce33ebc:
    #data FUN_ce32852
PTR_ce33ec0:
    #data loc_8c035162
PTR_ce33ec4:
    #data loc_8c051648
PTR_ce33ec8:
    #data DAT_ce356a0
PTR_ce33ecc:
    #data loc_8c03544c
PTR_ce33ed0:
    #data PTR_ce356b0

;=============================================

LAB_ce33ed4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    fldi0 fr4
    mov 0x00,r13
    mov.l @(PTR_ce33fc0,pc),r3
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
    mov.w @(DAT_ce33fb8,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33fba,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33fc4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33fc8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33fbc,pc),r0
    mov 0x51,r2
    mov.l @(PTR_ce33fcc,pc),r3
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
    mov.l @(PTR_ce33fd0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce33f54:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33fd4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33f74
    mov.l @(PTR_ce33fd8,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33f74:
    mov.w @(DAT_ce33fbe,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce33f9e
    mov.w @(DAT_ce33fbe,pc),r0
    mov r15,r5
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce33fdc,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33fe0,pc),r0
    mov.l @(PTR_ce33fe4,pc),r2
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4

LAB_ce33f9e:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33fa6:
    mov r4,r3
    mov.l @(PTR_ce33fe8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33fb8:
    #data 0x01f9
DAT_ce33fba:
    #data 0x041c
DAT_ce33fbc:
    #data 0x01a1
DAT_ce33fbe:
    #data 0x0141
    #align4

PTR_ce33fc0:
    #data loc_8c035162
PTR_ce33fc4:
    #data loc_8c05218a
PTR_ce33fc8:
    #data loc_8c05115a
PTR_ce33fcc:
    #data loc_8c2896b0
PTR_ce33fd0:
    #data loc_8c034e8c
PTR_ce33fd4:
    #data loc_8c034dee
PTR_ce33fd8:
    #data loc_8c051648
DAT_ce33fdc:
    #data 0x4276aaaa
DAT_ce33fe0:
    #data 0x42ebb6db
PTR_ce33fe4:
    #data loc_8c050ea4
PTR_ce33fe8:
    #data PTR_ce356c0

;=============================================

LAB_ce33fec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce3410c,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34110,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34114,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce340fe,pc),r0
    mov 0x01,r2
    mov 0x00,r4
    mov.l @(PTR_ce34118,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x07,r5
    mov.b @(0x2,r14),r0
    mov 0x01,r6
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
    mov 0x15,r5
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce34052:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34124,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3406c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce34128,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3406c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce34074:
    mov r4,r3
    mov.l @(PTR_ce3412c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34086:
    mov.w @(DAT_ce34100,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce34102,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce340f6
    mov.w @(DAT_ce34104,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce340c6
    mov.w @(DAT_ce34106,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce340c6
    mov.l @(PTR_ce34130,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce340f6
    mov r0,r4
    bra LAB_ce340e8
    mov 0x01,r2

LAB_ce340c6:
    mov.w @(DAT_ce34104,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce340f6
    mov.w @(DAT_ce34106,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce340f6
    mov.l @(PTR_ce34130,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce340f6
    mov r0,r4
    mov 0x00,r2

LAB_ce340e8:
    mov.w @(DAT_ce34108,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce340f6:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce340fe:
    #data 0x01a1
DAT_ce34100:
    #data 0x01fa
DAT_ce34102:
    #data 0x0c00
DAT_ce34104:
    #data 0x01fe
DAT_ce34106:
    #data 0x01a3
DAT_ce34108:
    #data 0x01f7
    #align4

PTR_ce3410c:
    #data loc_8c05218a
PTR_ce34110:
    #data loc_8c035162
PTR_ce34114:
    #data loc_8c05115a
PTR_ce34118:
    #data loc_8c2896b0
PTR_ce3411c:
    #data loc_8c034e8c
PTR_ce34120:
    #data loc_8c04223a
PTR_ce34124:
    #data loc_8c034dee
PTR_ce34128:
    #data loc_8c051648
PTR_ce3412c:
    #data PTR_ce356c8
PTR_ce34130:
    #data loc_8c045790

;=============================================

LAB_ce34134:
    mov.w @(DAT_ce3423a,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3423c,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce34180
    mov.w @(DAT_ce3423e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34180
    mov.w @(DAT_ce34240,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34180
    mov.l @(PTR_ce34250,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34180
    mov r0,r4
    mov.w @(DAT_ce34242,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34180:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34188:
    rts
    mov 0x00,r0

LAB_ce3418c:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce34244,pc),r1
    mov.l @(PTR_ce34254,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce341a4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce341c8
    mov.w @(DAT_ce34246,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce34248,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce341c8:
    mov.w @(DAT_ce3424a,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34258,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3425c,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
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
    mova @(DAT_ce34260,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34264,pc),r0
    mov.l @(PTR_ce34268,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3426c,pc),r3
    mov 0x10,r5
    mov.w @(DAT_ce3424c,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    mov.l @(PTR_ce34270,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34274,pc),r3
    mov 0x30,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3424c,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce3424e,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3423a:
    #data 0x01fa
DAT_ce3423c:
    #data 0x0c00
DAT_ce3423e:
    #data 0x01fe
DAT_ce34240:
    #data 0x01a3
DAT_ce34242:
    #data 0x01f7
DAT_ce34244:
    #data 0x01f9
DAT_ce34246:
    #data 0x01d2
DAT_ce34248:
    #data 0x0130
DAT_ce3424a:
    #data 0x01a0
DAT_ce3424c:
    #data 0x01c8
DAT_ce3424e:
    #data 0x041c
    #align4

PTR_ce34250:
    #data loc_8c045790
PTR_ce34254:
    #data PTR_ce356d0
PTR_ce34258:
    #data loc_8c056f2a
PTR_ce3425c:
    #data loc_8c034e8c
DAT_ce34260:
    #data 0xc2aa0000
DAT_ce34264:
    #data 0x42564924
PTR_ce34268:
    #data loc_8c103660
PTR_ce3426c:
    #data loc_8c050552
PTR_ce34270:
    #data loc_8c05064e
PTR_ce34274:
    #data loc_8c034dee

;=============================================

LAB_ce34278:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov 0x22,r0
    mov r4,r14
    mov.w @(DAT_ce3437c,pc),r3
    add r14,r3
    mov.l r3,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce342a2
    mov.w @(DAT_ce3437e,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce34380,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce342a2:
    mov.w @(DAT_ce34382,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34384,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34388,pc),r2
    mov 0x0F,r5
    mov 0x03,r6
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
    mov 0x14,r0
    mov.l @r15,r3
    mov 0x00,r2
    mov.b r2,@(r0,r3)
    mova @(DAT_ce3438c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34390,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34380,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce342fa
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce342fa:
    mova @(DAT_ce34394,pc),r0
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce3439c,pc),r3
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce34398,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov 0x0C,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34320:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34382,pc),r0
    mov r4,r14
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34384,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34388,pc),r2
    mov 0x0F,r5
    mov 0x06,r6
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
    mova @(DAT_ce343a0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce343a4,pc),r0
    mov.l @(PTR_ce3439c,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce343a8,pc),r2
    mov 0x01,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3437c:
    #data 0x02a4
DAT_ce3437e:
    #data 0x01d2
DAT_ce34380:
    #data 0x0130
DAT_ce34382:
    #data 0x01a0
    #align4

PTR_ce34384:
    #data loc_8c056f2a
PTR_ce34388:
    #data loc_8c034e8c
DAT_ce3438c:
    #data 0xc1700000
DAT_ce34390:
    #data 0xbe555555
DAT_ce34394:
    #data 0xc1a00000
DAT_ce34398:
    #data 0x43340000
PTR_ce3439c:
    #data loc_8c103660
DAT_ce343a0:
    #data 0xc2d55555
DAT_ce343a4:
    #data 0x42cdb6db
PTR_ce343a8:
    #data loc_8c02fec4

;=============================================

LAB_ce343ac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov 0x22,r0
    mov r4,r14
    mov.w @(DAT_ce34468,pc),r3
    add r14,r3
    mov.l r3,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce343d6
    mov.w @(DAT_ce3446a,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3446c,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce343d6:
    mov.w @(DAT_ce3446e,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34474,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34478,pc),r2
    mov 0x0F,r5
    mov 0x12,r6
    jsr @r2
    mov r14,r4
    mov.l @r15,r3
    mov 0x14,r0
    mov 0x00,r2
    fldi0 fr4
    mov.b r2,@(r0,r3)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce3447c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34480,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3446c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34426
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce34426:
    mova @(DAT_ce34484,pc),r0
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce3448c,pc),r3
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce34488,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov 0x0C,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3444c:
    rts
    nop

LAB_ce34450:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce34470,pc),r1
    mov.l @(PTR_ce34490,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34468:
    #data 0x02a4
DAT_ce3446a:
    #data 0x01d2
DAT_ce3446c:
    #data 0x0130
DAT_ce3446e:
    #data 0x01a0
DAT_ce34470:
    #data 0x01f7
    #align4

PTR_ce34474:
    #data loc_8c056f2a
PTR_ce34478:
    #data loc_8c034e8c
DAT_ce3447c:
    #data 0xc1700000
DAT_ce34480:
    #data 0xbe555555
DAT_ce34484:
    #data 0xc1a00000
DAT_ce34488:
    #data 0x43384924
PTR_ce3448c:
    #data loc_8c103660
PTR_ce34490:
    #data PTR_ce356e0

;=============================================

LAB_ce34494:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34598,pc),r3
    mov r4,r14
    mov.w @(DAT_ce3458a,pc),r0
    jsr @r3
    mov.l @(r0,r14),r13
    mov.l @(PTR_ce3459c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce344b8
    mov.w @(DAT_ce3458c,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce344b8:
    mov.l @(PTR_ce345a0,pc),r3
    mov.w @(DAT_ce3458a,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    tst r0,r0
    bt/s LAB_ce344ca
    mov 0x20,r12
    mov 0x00,r0
    mov.w r0,@(0x1c,r14)

LAB_ce344ca:
    mov.w @(DAT_ce3458e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34518
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce345a4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce345a8,pc),r0
    mov.l @(PTR_ce345ac,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce345b0,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r13,r4
    mov.w @(DAT_ce34590,pc),r0
    mov.l @(PTR_ce345b4,pc),r1
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
    mov.w @(DAT_ce34592,pc),r0
    mov 0x08,r3
    mov.b r3,@(r0,r14)

LAB_ce34518:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3457e
    mov.w @(DAT_ce34590,pc),r0
    mov 0x03,r3
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r12,@(r0,r13)
    mov.b r12,@(r0,r14)
    add 0x55,r0
    mov.b r3,@(r0,r13)
    mova @(DAT_ce345b8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce345bc,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce345c0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce345c4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34594,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce34570
    mov 0x01,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce34570:
    mov.l @(PTR_ce345c8,pc),r3
    mov 0x0F,r5
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce3457e:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3458a:
    #data 0x01c8
DAT_ce3458c:
    #data 0x0142
DAT_ce3458e:
    #data 0x0141
DAT_ce34590:
    #data 0x01b4
DAT_ce34592:
    #data 0x01a0
DAT_ce34594:
    #data 0x0130
    #align4

PTR_ce34598:
    #data loc_8c034dee
PTR_ce3459c:
    #data loc_8c050682
PTR_ce345a0:
    #data loc_8c050610
DAT_ce345a4:
    #data 0xc22d5555
DAT_ce345a8:
    #data 0x41dedb6d
PTR_ce345ac:
    #data loc_8c0fdb4e
PTR_ce345b0:
    #data loc_8c0424a6
PTR_ce345b4:
    #data loc_8c05933c
DAT_ce345b8:
    #data 0x40fd5555
DAT_ce345bc:
    #data 0xbd555555
DAT_ce345c0:
    #data 0x413c9249
DAT_ce345c4:
    #data 0xbf22db6d
PTR_ce345c8:
    #data loc_8c034e8c

;=============================================

LAB_ce345cc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3470c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34702,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce34650
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
    mov.w @(DAT_ce34704,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce34650
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    mov 0x0F,r5
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce34710,pc),r3
    mov 0x02,r6
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34714,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce34650:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce34656:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3470c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34670
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce34718,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34670:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce34678:
    mov r4,r3
    mov.l @(PTR_ce3471c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3468a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3470c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34702,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce346b0
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34720,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce346b0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce346b6:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x01,r12
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.w @(DAT_ce34706,pc),r11
    mov.l @(PTR_ce34724,pc),r13
    mov.l @(PTR_ce3470c,pc),r3
    jsr @r3
    add r14,r11
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
    mov.w @(DAT_ce34708,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34728
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    add 0x64,r0
    fmov.s @(r0,r13),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce34734
    bra LAB_ce34738
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34702:
    #data 0x0141
DAT_ce34704:
    #data 0x041c
DAT_ce34706:
    #data 0x02a4
DAT_ce34708:
    #data 0x0130
    #align4

PTR_ce3470c:
    #data loc_8c034dee
PTR_ce34710:
    #data loc_8c034e8c
PTR_ce34714:
    #data loc_8c0511b4
PTR_ce34718:
    #data loc_8c051648
PTR_ce3471c:
    #data PTR_ce356f4
PTR_ce34720:
    #data loc_8c0eb290
PTR_ce34724:
    #data loc_8c26a518

;=============================================

LAB_ce34728:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    add 0x68,r0
    fmov.s @(r0,r13),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce34738

LAB_ce34734:
    mov 0x14,r0
    mov.b r12,@(r0,r11)

LAB_ce34738:
    mov 0x14,r0
    mov.b @(r0,r11),r3
    tst r3,r3
    bt LAB_ce34780
    mov.w @(DAT_ce3486a,pc),r0
    mov 0x21,r5
    mov 0x08,r1
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0xED,r0
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r14)
    add 0x55,r0
    mov.b r12,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    mov 0x01,r3
    mov.b @(r0,r4),r2
    xor r3,r2
    mov.b r2,@(r0,r4)
    add 0xCE,r0
    mov.b r1,@(r0,r14)
    mov 0x03,r0
    mov.b r0,@(0x5,r13)
    mov r12,r0
    nop
    mov.l @(PTR_ce34874,pc),r2
    mov 0x1E,r5
    mov.b r0,@(0x6,r13)
    jsr @r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce34780:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3478c:
    mova @(DAT_ce34878,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3487c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34880,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34884,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3486c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce347cc
    mov 0x04,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce347cc:
    mov.l @(PTR_ce34888,pc),r3
    mov 0x0F,r5
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce347e0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3488c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3486e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce34864
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
    mov.w @(DAT_ce34870,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce34864
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    mov 0x0F,r5
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce34888,pc),r3
    mov 0x05,r6
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34890,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce34864:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3486a:
    #data 0x01c8
DAT_ce3486c:
    #data 0x0130
DAT_ce3486e:
    #data 0x0141
DAT_ce34870:
    #data 0x041c
    #align4

PTR_ce34874:
    #data loc_8c042008
DAT_ce34878:
    #data 0x41195555
DAT_ce3487c:
    #data 0xbd555555
DAT_ce34880:
    #data 0x413c9249
DAT_ce34884:
    #data 0xbf22db6d
PTR_ce34888:
    #data loc_8c034e8c
PTR_ce3488c:
    #data loc_8c034dee
PTR_ce34890:
    #data loc_8c0511b4

;=============================================

LAB_ce34894:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce349ac,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce348ae
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce349b0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce348ae:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce348b6:
    mov r4,r3
    mov.l @(PTR_ce349b4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce348c8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce349ac,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce349a4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34918
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce349b8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce349a6,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce348f8
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce348f8:
    mov.l @(PTR_ce349bc,pc),r4
    mov 0x03,r0
    mov.l @(PTR_ce349c0,pc),r3
    mov 0x08,r5
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce349c4,pc),r2
    mov 0x29,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34918:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3491e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce349ac,pc),r3
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
    mov.w @(DAT_ce349a6,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34958
    mov.w @(DAT_ce349a8,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce3499e
    bra LAB_ce34960
    nop

LAB_ce34958:
    mov.w @(DAT_ce349a8,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce3499e

LAB_ce34960:
    mov.b @(0x6,r14),r0
    mov 0x03,r3
    mov 0x0F,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x09,r6
    mov.w @(DAT_ce349aa,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce349c8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce349cc,pc),r3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce349bc,pc),r4
    mov 0x03,r0
    mov.l @(PTR_ce349c4,pc),r3
    mov 0x2F,r5
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce349c0,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x08,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3499e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce349a4:
    #data 0x0141
DAT_ce349a6:
    #data 0x0130
DAT_ce349a8:
    #data 0x01fd
DAT_ce349aa:
    #data 0x01f4
    #align4

PTR_ce349ac:
    #data loc_8c034dee
PTR_ce349b0:
    #data loc_8c051648
PTR_ce349b4:
    #data PTR_ce35700
DAT_ce349b8:
    #data 0xc1d55555
PTR_ce349bc:
    #data loc_8c26a518
PTR_ce349c0:
    #data loc_8c0eb290
PTR_ce349c4:
    #data loc_8c04223a
DAT_ce349c8:
    #data 0x41f00000
PTR_ce349cc:
    #data loc_8c034e8c

;=============================================

LAB_ce349d0:
    mov.w @(DAT_ce34af2,pc),r0
    mov 0x03,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34afc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x60,r1
    mov.l @(PTR_ce34b00,pc),r13
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    add 0x58,r0
    fmov.s @(r0,r13),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce34a64
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce34b08,pc),r3
    mov 0x0B,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce34b04,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce34af4,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce34b0c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34af6,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34a44
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce34a44:
    mov 0x03,r0
    mov.l @(PTR_ce34b10,pc),r3
    mov.b r0,@(0x5,r13)
    mov 0x01,r0
    mov 0x2F,r5
    mov.b r0,@(0x6,r13)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34b14,pc),r2
    mov 0x02,r6
    mov 0x08,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce34a64:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34a6c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34afc,pc),r3
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
    mov.w @(DAT_ce34af6,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34aa6
    mov.w @(DAT_ce34af8,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce34aec
    bra LAB_ce34aae
    nop

LAB_ce34aa6:
    mov.w @(DAT_ce34af8,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce34aec

LAB_ce34aae:
    mov.b @(0x6,r14),r0
    mov 0x03,r3
    mov 0x0F,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0D,r6
    mov.w @(DAT_ce34af2,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce34b18,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce34b08,pc),r3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34b00,pc),r4
    mov 0x03,r0
    mov.l @(PTR_ce34b10,pc),r3
    mov 0x2F,r5
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34b14,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x08,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce34aec:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34af2:
    #data 0x01f4
DAT_ce34af4:
    #data 0x041c
DAT_ce34af6:
    #data 0x0130
DAT_ce34af8:
    #data 0x01fd
    #align4

PTR_ce34afc:
    #data loc_8c034dee
PTR_ce34b00:
    #data loc_8c26a518
DAT_ce34b04:
    #data 0x43f00000
PTR_ce34b08:
    #data loc_8c034e8c
DAT_ce34b0c:
    #data 0x41d55555
PTR_ce34b10:
    #data loc_8c04223a
PTR_ce34b14:
    #data loc_8c0eb290
DAT_ce34b18:
    #data 0xc1f00000

;=============================================

LAB_ce34b1c:
    mov.w @(DAT_ce34c10,pc),r0
    mov 0x03,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34c18,pc),r3
    jsr @r3
    mov r14,r4
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce34c12,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce34ba6
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce34c1c,pc),r3
    mov 0x07,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34c12,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce34c20,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34c14,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34b86
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce34b86:
    mov.l @(PTR_ce34c24,pc),r4
    mov 0x03,r0
    mov.l @(PTR_ce34c28,pc),r3
    mov 0x2F,r5
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34c2c,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x08,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce34ba6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34bac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34c18,pc),r3
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
    mov.w @(DAT_ce34c14,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34be6
    mov.w @(DAT_ce34c16,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce34c0a
    bra LAB_ce34bee
    nop

LAB_ce34be6:
    mov.w @(DAT_ce34c16,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce34c0a

LAB_ce34bee:
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce34c1c,pc),r3
    mov 0x08,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34c28,pc),r2
    mov 0x2F,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34c0a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34c10:
    #data 0x01f4
DAT_ce34c12:
    #data 0x041c
DAT_ce34c14:
    #data 0x0130
DAT_ce34c16:
    #data 0x01fd
    #align4

PTR_ce34c18:
    #data loc_8c034dee
PTR_ce34c1c:
    #data loc_8c034e8c
DAT_ce34c20:
    #data 0xc1d55555
PTR_ce34c24:
    #data loc_8c26a518
PTR_ce34c28:
    #data loc_8c04223a
PTR_ce34c2c:
    #data loc_8c0eb290

;=============================================

LAB_ce34c30:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34d84,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34cc0
    mov.w @(DAT_ce34d7a,pc),r0
    mov 0x22,r5
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0xED,r0
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r14)
    add 0x55,r0
    mov 0x01,r5
    mov.b r5,@(r0,r4)
    mov 0x03,r0
    mov.l @(PTR_ce34d88,pc),r4
    mov.b r0,@(0x5,r4)
    mov r5,r0
    nop
    mov.l @(PTR_ce34d8c,pc),r3
    mov 0x30,r5
    mov.b r0,@(0x6,r4)
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x0F,r6
    mov.l @(PTR_ce34d90,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce34d94,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34d98,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34d9c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34da0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34d7c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce34cb4
    mov 0x00,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce34cb4:
    lds.l @r15+,PR
    mov.l @(PTR_ce34da4,pc),r3
    mov r6,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34cc0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34cc6:
    mov.w @(DAT_ce34d7e,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34d84,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34d80,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce34d52
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
    mov.w @(DAT_ce34d82,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce34d52
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    mov 0x0F,r5
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce34d90,pc),r3
    mov 0x10,r6
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34da8,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce34d52:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce34d58:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34d84,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34d72
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce34dac,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34d72:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34d7a:
    #data 0x01c8
DAT_ce34d7c:
    #data 0x0130
DAT_ce34d7e:
    #data 0x01f5
DAT_ce34d80:
    #data 0x0141
DAT_ce34d82:
    #data 0x041c
    #align4

PTR_ce34d84:
    #data loc_8c034dee
PTR_ce34d88:
    #data loc_8c26a518
PTR_ce34d8c:
    #data loc_8c04223a
PTR_ce34d90:
    #data loc_8c034e8c
DAT_ce34d94:
    #data 0x41195555
DAT_ce34d98:
    #data 0xbd555555
DAT_ce34d9c:
    #data 0x413c9249
DAT_ce34da0:
    #data 0xbf22db6d
PTR_ce34da4:
    #data loc_8c02fec4
PTR_ce34da8:
    #data loc_8c0511b4
PTR_ce34dac:
    #data loc_8c051648

;=============================================

LAB_ce34db0:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce34f04,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce34efa,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce34dc6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34f08,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34efc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce34dec
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34f0c,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce34dec:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34df2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x01,r12
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.w @(DAT_ce34efa,pc),r11
    mov.l @(PTR_ce34f10,pc),r13
    mov.l @(PTR_ce34f08,pc),r3
    jsr @r3
    add r14,r11
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
    mov.w @(DAT_ce34efe,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34e3e
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    add 0x64,r0
    fmov.s @(r0,r13),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce34e4a
    bra LAB_ce34e4e
    nop

LAB_ce34e3e:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    add 0x68,r0
    fmov.s @(r0,r13),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce34e4e

LAB_ce34e4a:
    mov 0x14,r0
    mov.b r12,@(r0,r11)

LAB_ce34e4e:
    mov 0x14,r0
    mov.b @(r0,r11),r3
    tst r3,r3
    bt LAB_ce34e96
    mov.w @(DAT_ce34f00,pc),r0
    mov 0x23,r5
    mov 0x08,r1
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0xED,r0
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r14)
    add 0x55,r0
    mov.b r12,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    mov 0x01,r3
    mov.b @(r0,r4),r2
    xor r3,r2
    mov.b r2,@(r0,r4)
    add 0xCE,r0
    mov.b r1,@(r0,r14)
    mov 0x03,r0
    mov.b r0,@(0x5,r13)
    mov r12,r0
    nop
    mov.l @(PTR_ce34f14,pc),r2
    mov 0x1E,r5
    mov.b r0,@(0x6,r13)
    jsr @r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce34e96:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34ea2:
    mova @(DAT_ce34f18,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34f1c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34f20,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34f24,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34efe,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce34ee2
    mov 0x13,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce34ee2:
    mov.l @(PTR_ce34f28,pc),r3
    mov 0x0F,r5
    jsr @r3
    mov r14,r4
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34efa:
    #data 0x02a4
DAT_ce34efc:
    #data 0x0141
DAT_ce34efe:
    #data 0x0130
DAT_ce34f00:
    #data 0x01c8
    #align4

PTR_ce34f04:
    #data PTR_ce35714
PTR_ce34f08:
    #data loc_8c034dee
PTR_ce34f0c:
    #data loc_8c0eb290
PTR_ce34f10:
    #data loc_8c26a518
PTR_ce34f14:
    #data loc_8c042008
DAT_ce34f18:
    #data 0x41195555
DAT_ce34f1c:
    #data 0xbd555555
DAT_ce34f20:
    #data 0x413c9249
DAT_ce34f24:
    #data 0xbf22db6d
PTR_ce34f28:
    #data loc_8c034e8c

;=============================================

LAB_ce34f2c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3501c,pc),r3
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
    bf LAB_ce34f86
    lds.l @r15+,PR
    mov.l @(PTR_ce35020,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34f86:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34f8c:
    mov r4,r3
    mov.l @(PTR_ce35024,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34f9e:
    rts
    nop

LAB_ce34fa2:
    mov.w @(DAT_ce3501a,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce35028,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34fc0:
    mova @(DAT_ce3502c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r3
    sts.l PR,@-r15
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce35030,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce35034,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce35038,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x16,r0
    mov.b r3,@(r0,r5)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x20,r3
    ftrc fr3,FPUL
    sts FPUL,r0
    mov.w r0,@(0x1c,r5)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x18,r0
    fmov fr3,@(r0,r5)
    mov 0x17,r0
    mov.b r3,@(r0,r5)
    mov 0x0D,r5
    mov.l @(PTR_ce3503c,pc),r3
    mov 0x1C,r6
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3501a:
    #data 0x01ea
    #align4

PTR_ce3501c:
    #data loc_8c034dee
PTR_ce35020:
    #data loc_8c05176e
PTR_ce35024:
    #data PTR_ce35738
PTR_ce35028:
    #data PTR_ce35748
DAT_ce3502c:
    #data 0xc2200000
DAT_ce35030:
    #data 0x41555555
DAT_ce35034:
    #data 0x40892492
DAT_ce35038:
    #data 0x3c092492
PTR_ce3503c:
    #data loc_8c034e8c

;=============================================

LAB_ce35040:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce351ac,pc),r0
    mov r4,r14
    mov 0x01,r2
    mov r5,r13
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce351ae,pc),r0
    mov.l r3,@r15
    mov.l @(PTR_ce351b4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov r13,r5
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
    bsr FUN_ce3518c
    mov r14,r4
    mov r13,r5
    bsr FUN_ce351c4
    mov r14,r4
    mov 0x17,r0
    mov.b @(r0,r13),r3
    add 0xFF,r3
    mov.b r3,@(r0,r13)
    add 0x01,r3
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce350c6
    mov 0x20,r1
    mov.b r1,@(r0,r13)
    mov 0x24,r0
    mov.l @r15,r3
    mov.b @(r0,r3),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce350c6:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce350d0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce351ac,pc),r0
    mov r4,r14
    mov 0x01,r3
    mov.l r5,@r15
    mov.l @(r0,r14),r13
    mov.w @(DAT_ce351ae,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce351b4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x34,r0
    fmov.s @(r0,r13),fr3
    mov 0x60,r1
    add r14,r1
    fmov fr3,@(r0,r14)
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
    mov.l @r15,r5
    bsr FUN_ce3518c
    mov r14,r4
    mov.l @r15,r2
    mov 0x17,r0
    mov.b @(r0,r2),r3
    add 0xFF,r3
    mov.b r3,@(r0,r2)
    add 0x01,r3
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce3515a
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(DAT_ce351bc,pc),r1
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce351b8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    lds r1,FPUL
    fmov fr3,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r13),fr3
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fsub fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce3515a:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce35164:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF8,r15
    mov.w @(DAT_ce351ac,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.l @(r0,r14),r3
    mov.l r3,@(0x4,r15)
    mov.l @(PTR_ce351b4,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(0x4,r15),r2
    mov 0x34,r0
    mov r14,r4
    fmov.s @(r0,r2),fr3
    fmov fr3,@(r0,r14)
    mov.l @r15,r5
    add 0x08,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

;=============================================

FUN_ce3518c:
    mova @(DAT_ce351c0,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce351b0,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fadd fr4,fr3
    fcmp/gt fr3,fr2
    bf LAB_ce351a8
    mov.w @(DAT_ce351b0,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fadd fr4,fr3
    fmov fr3,@(r0,r4)

LAB_ce351a8:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce351ac:
    #data 0x01c8
DAT_ce351ae:
    #data 0x0142
DAT_ce351b0:
    #data 0x041c
    #align4

PTR_ce351b4:
    #data loc_8c034dee
DAT_ce351b8:
    #data 0x41892492
DAT_ce351bc:
    #data 0x42092492
DAT_ce351c0:
    #data 0x44092492

;=============================================

FUN_ce351c4:
    mov 0x16,r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bf LAB_ce351f6
    mov.w @(0x1c,r5),r0
    mov r0,r3
    lds r3,FPUL
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    float FPUL,fr3
    fcmp/gt fr3,fr2
    bf LAB_ce3521c
    mov 0x18,r0
    fmov.s @(r0,r5),fr3
    mov 0x5C,r0
    mov 0x01,r3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x16,r0
    bra LAB_ce3521c
    mov.b r3,@(r0,r5)

LAB_ce351f6:
    mov.w @(0x1c,r5),r0
    mov r0,r3
    lds r3,FPUL
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    float FPUL,fr3
    fcmp/gt fr2,fr3
    bf LAB_ce3521c
    mov 0x18,r0
    fmov.s @(r0,r5),fr3
    mov 0x5C,r0
    mov 0x00,r3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x16,r0
    mov.b r3,@(r0,r5)

LAB_ce3521c:
    rts
    nop

LAB_ce35220:
    mov.w @(DAT_ce352d0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(r0,r14),r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce352dc,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce352d2,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r4,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3523c:
    mov.w @(DAT_ce352d0,pc),r0
    mov.l r4,@-r15
    mov.l @(PTR_ce352e0,pc),r3
    mov.l @r15,r5
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce3524a:
    mov.w @(DAT_ce352d0,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce352e4,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce35258:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce352d4,pc),r1
    mov.l @(PTR_ce352e8,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce35270:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce352d6,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3528e
    mov 0x03,r5
    cmp/eq 0x01,r0
    bt LAB_ce35296
    cmp/eq 0x02,r0
    bt LAB_ce35296
    bra LAB_ce3529a
    nop

LAB_ce3528e:
    mov.w @(DAT_ce352d8,pc),r0
    mov 0x04,r3
    bra LAB_ce3529a
    mov.b r3,@(r0,r4)

LAB_ce35296:
    mov.w @(DAT_ce352d8,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3529a:
    mov.l @(PTR_ce352ec,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce352a0:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce352d6,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce352be
    mov 0x03,r5
    cmp/eq 0x01,r0
    bt LAB_ce352c6
    cmp/eq 0x02,r0
    bt LAB_ce352c6
    bra LAB_ce352ca
    nop

LAB_ce352be:
    mov.w @(DAT_ce352d8,pc),r0
    mov 0x04,r3
    bra LAB_ce352ca
    mov.b r3,@(r0,r4)

LAB_ce352c6:
    mov.w @(DAT_ce352d8,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce352ca:
    mov.l @(PTR_ce352ec,pc),r2
    jmp @r2
    mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce352d0:
    #data 0x01c8
DAT_ce352d2:
    #data 0x02a4
DAT_ce352d4:
    #data 0x01f7
DAT_ce352d6:
    #data 0x04c9
DAT_ce352d8:
    #data 0x01e9
    #align4

PTR_ce352dc:
    #data PTR_ce3575c
PTR_ce352e0:
    #data loc_8c04ce54
PTR_ce352e4:
    #data loc_8c04cc1c
PTR_ce352e8:
    #data PTR_ce3576c
PTR_ce352ec:
    #data loc_8c0530d8

;=============================================

LAB_ce352f0:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce35394,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce35312
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce3531c
    cmp/eq 0x02,r0
    bt LAB_ce35322
    bra LAB_ce3532c
    nop

LAB_ce35312:
    mov.w @(DAT_ce35396,pc),r0
    mov.b r5,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce3532c
    mov.b r5,@(r0,r4)

LAB_ce3531c:
    mov.w @(DAT_ce35396,pc),r0
    bra LAB_ce35328
    mov.b r6,@(r0,r4)

LAB_ce35322:
    mov.w @(DAT_ce35396,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r4)

LAB_ce35328:
    mov.w @(DAT_ce35398,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce3532c:
    mov.l @(PTR_ce353a0,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce35332:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce35394,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce35354
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce3535a
    cmp/eq 0x02,r0
    bt LAB_ce35360
    bra LAB_ce3536a
    nop

LAB_ce35354:
    mov.w @(DAT_ce35396,pc),r0
    bra LAB_ce35366
    mov.b r5,@(r0,r4)

LAB_ce3535a:
    mov.w @(DAT_ce35396,pc),r0
    bra LAB_ce35366
    mov.b r6,@(r0,r4)

LAB_ce35360:
    mov.w @(DAT_ce35396,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r4)

LAB_ce35366:
    mov.w @(DAT_ce35398,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce3536a:
    mov.l @(PTR_ce353a0,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce35370:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3539a,pc),r14
    mov 0x00,r5
    mov.w @(DAT_ce3539c,pc),r6
    add r4,r14
    mov.l @(PTR_ce353a4,pc),r3
    mov.b @(0x8,r14),r0
    mov.b r0,@r15
    jsr @r3
    mov r14,r4
    mov.b @r15,r0
    mov.b r0,@(0x8,r14)
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce35394:
    #data 0x04c9
DAT_ce35396:
    #data 0x01e9
DAT_ce35398:
    #data 0x01a3
DAT_ce3539a:
    #data 0x02a4
DAT_ce3539c:
    #data 0x0080
    #align4

PTR_ce353a0:
    #data loc_8c0530d8
PTR_ce353a4:
    #data loc_8c129728
DAT_ce353a8:
    #data 0x0201
    #data 0x0201
DAT_ce353ac:
    #data 0xffff
    #data 0xffff
DAT_ce353b0:
    #data 0xffff
    #data 0xffff
DAT_ce353b4:
    #data 0x0201
    #data 0x0201
DAT_ce353b8:
    #data 0xffff
    #data 0xffff
DAT_ce353bc:
    #data 0xffff
    #data 0xffff
DAT_ce353c0:
    #data 0x0201
    #data 0x0201
DAT_ce353c4:
    #data 0xffff
    #data 0xffff
DAT_ce353c8:
    #data 0xffff
    #data 0xffff
DAT_ce353cc:
    #data 0x0201
    #data 0x0201
DAT_ce353d0:
    #data 0xffff
    #data 0xffff
DAT_ce353d4:
    #data 0xffff
    #data 0xffff
DAT_ce353d8:
    #data 0x0201
    #data 0x0200
DAT_ce353dc:
    #data 0x02ff
    #data 0x0201
DAT_ce353e0:
    #data 0xffff
    #data 0x02ff
DAT_ce353e4:
    #data 0x0201
    #data 0x0201
DAT_ce353e8:
    #data 0x02ff
    #data 0x02ff
DAT_ce353ec:
    #data 0xffff
    #data 0xffff
DAT_ce353f0:
    #data 0x0028
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0300
DAT_ce353fe:
    #data 0x0028
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x2000
    #data 0x0300
DAT_ce3540c:
    #data 0x0003
    #data 0x9100
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce3541c:
    #data 0x0003
    #data 0x9100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce3542c:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce3543c:
    #data 0x0005
    #data 0x1000
    #data 0x0005
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
    #align4

PTR_ce35450:
    #data LAB_ce30438
PTR_ce35454:
    #data LAB_ce3001c
PTR_ce35458:
    #data LAB_ce304e6
PTR_ce3545c:
    #data LAB_ce30b9a
PTR_ce35460:
    #data LAB_ce31880
PTR_ce35464:
    #data LAB_ce319ce
PTR_ce35468:
    #data LAB_ce31e3c
PTR_ce3546c:
    #data LAB_ce32162
PTR_ce35470:
    #data LAB_ce322e0
PTR_ce35474:
    #data LAB_ce3418c
PTR_ce35478:
    #data LAB_ce34450
PTR_ce3547c:
    #data LAB_ce34fa2
PTR_ce35480:
    #data LAB_ce35258
PTR_ce35484:
    #data LAB_ce3032a
PTR_ce35488:
    #data LAB_ce322ce
PTR_ce3548c:
    #data LAB_ce3186e
PTR_ce35490:
    #data LAB_ce35270
PTR_ce35494:
    #data LAB_ce352a0
PTR_ce35498:
    #data LAB_ce352f0
PTR_ce3549c:
    #data LAB_ce35332
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce354ac:
    #data LAB_ce35370
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce354c0:
    #data LAB_ce304fa
PTR_ce354c4:
    #data LAB_ce308a4
PTR_ce354c8:
    #data LAB_ce308cc
PTR_ce354cc:
    #data LAB_ce304fa
PTR_ce354d0:
    #data LAB_ce30bbc
PTR_ce354d4:
    #data LAB_ce31312
PTR_ce354d8:
    #data LAB_ce312fc
PTR_ce354dc:
    #data LAB_ce30bae
PTR_ce354e0:
    #data LAB_ce30db8
PTR_ce354e4:
    #data LAB_ce30f34
PTR_ce354e8:
    #data LAB_ce31068
PTR_ce354ec:
    #data LAB_ce30e08
PTR_ce354f0:
    #data LAB_ce30e80
PTR_ce354f4:
    #data LAB_ce30f46
PTR_ce354f8:
    #data LAB_ce30fc8
PTR_ce354fc:
    #data LAB_ce31030
PTR_ce35500:
    #data LAB_ce3108e
PTR_ce35504:
    #data LAB_ce311f4
PTR_ce35508:
    #data LAB_ce312ea
PTR_ce3550c:
    #data LAB_ce310b0
PTR_ce35510:
    #data LAB_ce31140
PTR_ce35514:
    #data LAB_ce31206
PTR_ce35518:
    #data LAB_ce31250
PTR_ce3551c:
    #data LAB_ce312b2
PTR_ce35520:
    #data LAB_ce3138a
PTR_ce35524:
    #data LAB_ce313ac
PTR_ce35528:
    #data LAB_ce3156e
PTR_ce3552c:
    #data LAB_ce31424
PTR_ce35530:
    #data LAB_ce314cc
PTR_ce35534:
    #data LAB_ce316cc
PTR_ce35538:
    #data LAB_ce31754
PTR_ce3553c:
    #data LAB_ce31580
PTR_ce35540:
    #data LAB_ce3165c
PTR_ce35544:
    #data LAB_ce31808
PTR_ce35548:
    #data LAB_ce318bc
PTR_ce3554c:
    #data LAB_ce3191c
PTR_ce35550:
    #data LAB_ce31990
PTR_ce35554:
    #data LAB_ce31a08
PTR_ce35558:
    #data LAB_ce31a6a
PTR_ce3555c:
    #data LAB_ce31b34
PTR_ce35560:
    #data LAB_ce31b96
PTR_ce35564:
    #data LAB_ce31c2c
PTR_ce35568:
    #data LAB_ce31cc4
PTR_ce3556c:
    #data LAB_ce31d2c
PTR_ce35570:
    #data FUN_ce31df0
PTR_ce35574:
    #data LAB_ce31f8a
PTR_ce35578:
    #data LAB_ce32006
PTR_ce3557c:
    #data LAB_ce32062
PTR_ce35580:
    #data LAB_ce31f7a
PTR_ce35584:
    #data LAB_ce32066
PTR_ce35588:
    #data LAB_ce3209c
PTR_ce3558c:
    #data LAB_ce31e52
PTR_ce35590:
    #data LAB_ce320ee
PTR_ce35594:
    #data LAB_ce32102
PTR_ce35598:
    #data LAB_ce32114
PTR_ce3559c:
    #data LAB_ce3212e
PTR_ce355a0:
    #data LAB_ce32114
PTR_ce355a4:
    #data LAB_ce32148
PTR_ce355a8:
    #data LAB_ce321cc
PTR_ce355ac:
    #data LAB_ce32234
PTR_ce355b0:
    #data FUN_ce322ac
PTR_ce355b4:
    #data LAB_ce3260c
PTR_ce355b8:
    #data LAB_ce32840
PTR_ce355bc:
    #data LAB_ce32f2c
PTR_ce355c0:
    #data LAB_ce33374
PTR_ce355c4:
    #data LAB_ce33848
PTR_ce355c8:
    #data LAB_ce33a62
PTR_ce355cc:
    #data LAB_ce3260c
PTR_ce355d0:
    #data LAB_ce33b7e
PTR_ce355d4:
    #data LAB_ce33e8c
PTR_ce355d8:
    #data LAB_ce33fa6
PTR_ce355dc:
    #data LAB_ce34074
DAT_ce355e0:
    #data 0xfffb0000
DAT_ce355e4:
    #data 0x00001800
    #data 0xfff50000
    #data 0x00003000
PTR_ce355f0:
    #data LAB_ce32334
PTR_ce355f4:
    #data LAB_ce323d2
PTR_ce355f8:
    #data LAB_ce32490
PTR_ce355fc:
    #data LAB_ce325da
PTR_ce35600:
    #data LAB_ce3262c
PTR_ce35604:
    #data LAB_ce326c0
PTR_ce35608:
    #data FUN_ce3281e
PTR_ce3560c:
    #data LAB_ce32a88
PTR_ce35610:
    #data LAB_ce32b40
PTR_ce35614:
    #data LAB_ce32bda
PTR_ce35618:
    #data LAB_ce32c58
PTR_ce3561c:
    #data LAB_ce32cb4
PTR_ce35620:
    #data LAB_ce32d16
PTR_ce35624:
    #data LAB_ce32d78
PTR_ce35628:
    #data LAB_ce32df2
PTR_ce3562c:
    #data LAB_ce32e56
PTR_ce35630:
    #data LAB_ce32ed8
PTR_ce35634:
    #data LAB_ce32d46
PTR_ce35638:
    #data LAB_ce32f08
PTR_ce3563c:
    #data LAB_ce328f8
PTR_ce35640:
    #data LAB_ce329a2
PTR_ce35644:
    #data LAB_ce32f1a
PTR_ce35648:
    #data LAB_ce33078
PTR_ce3564c:
    #data LAB_ce33110
PTR_ce35650:
    #data LAB_ce331fa
PTR_ce35654:
    #data LAB_ce33264
PTR_ce35658:
    #data LAB_ce332e0
PTR_ce3565c:
    #data LAB_ce3332e
PTR_ce35660:
    #data LAB_ce333ac
PTR_ce35664:
    #data LAB_ce33448
PTR_ce35668:
    #data LAB_ce334b0
PTR_ce3566c:
    #data LAB_ce33524
PTR_ce35670:
    #data LAB_ce335a8
PTR_ce35674:
    #data LAB_ce336d8
PTR_ce35678:
    #data LAB_ce33734
PTR_ce3567c:
    #data FUN_ce33802
PTR_ce35680:
    #data LAB_ce3370a
PTR_ce35684:
    #data LAB_ce33824
PTR_ce35688:
    #data LAB_ce338b4
PTR_ce3568c:
    #data LAB_ce33960
PTR_ce35690:
    #data LAB_ce33a40
PTR_ce35694:
    #data LAB_ce33a74
PTR_ce35698:
    #data LAB_ce33af4
PTR_ce3569c:
    #data LAB_ce33b4e
DAT_ce356a0:
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x01
    #data 0x02
    #data 0x03
    #data 0x04
    #data 0x03
    #data 0x04
    #data 0x05
    #data 0x05
    #data 0x05
    #data 0x05
    #align4

PTR_ce356b0:
    #data LAB_ce33bd0
PTR_ce356b4:
    #data FUN_ce33c7c
PTR_ce356b8:
    #data LAB_ce33dcc
PTR_ce356bc:
    #data LAB_ce33e06
PTR_ce356c0:
    #data LAB_ce33ed4
PTR_ce356c4:
    #data LAB_ce33f54
PTR_ce356c8:
    #data LAB_ce33fec
PTR_ce356cc:
    #data LAB_ce34052
PTR_ce356d0:
    #data LAB_ce34086
PTR_ce356d4:
    #data LAB_ce34188
PTR_ce356d8:
    #data LAB_ce34134
PTR_ce356dc:
    #data LAB_ce34188
PTR_ce356e0:
    #data LAB_ce341a4
PTR_ce356e4:
    #data LAB_ce34278
PTR_ce356e8:
    #data LAB_ce34320
PTR_ce356ec:
    #data LAB_ce343ac
PTR_ce356f0:
    #data LAB_ce3444c
PTR_ce356f4:
    #data LAB_ce34494
PTR_ce356f8:
    #data LAB_ce345cc
PTR_ce356fc:
    #data FUN_ce34656
PTR_ce35700:
    #data LAB_ce3468a
PTR_ce35704:
    #data LAB_ce346b6
PTR_ce35708:
    #data LAB_ce3478c
PTR_ce3570c:
    #data LAB_ce347e0
PTR_ce35710:
    #data LAB_ce34894
PTR_ce35714:
    #data LAB_ce348c8
PTR_ce35718:
    #data LAB_ce3491e
PTR_ce3571c:
    #data LAB_ce349d0
PTR_ce35720:
    #data LAB_ce34a6c
PTR_ce35724:
    #data LAB_ce34b1c
PTR_ce35728:
    #data LAB_ce34bac
PTR_ce3572c:
    #data LAB_ce34c30
PTR_ce35730:
    #data LAB_ce34cc6
PTR_ce35734:
    #data FUN_ce34d58
PTR_ce35738:
    #data LAB_ce34dc6
PTR_ce3573c:
    #data LAB_ce34df2
PTR_ce35740:
    #data LAB_ce34ea2
PTR_ce35744:
    #data LAB_ce34f2c
PTR_ce35748:
    #data LAB_ce34678
PTR_ce3574c:
    #data LAB_ce348b6
PTR_ce35750:
    #data LAB_ce34db0
PTR_ce35754:
    #data LAB_ce34f8c
PTR_ce35758:
    #data LAB_ce34f9e
PTR_ce3575c:
    #data LAB_ce34fc0
PTR_ce35760:
    #data LAB_ce35040
PTR_ce35764:
    #data LAB_ce350d0
PTR_ce35768:
    #data LAB_ce35164
PTR_ce3576c:
    #data LAB_ce3523c
PTR_ce35770:
    #data LAB_ce3524a
PTR_ce35774:
    #data LAB_ce3524a
PTR_ce35778:
    #data LAB_ce3524a
PTR_ce3577c:
    #data LAB_ce35220
