;╔═══════════════════════════════╗
;║ S_PL35 : Blackheart Program   ║
;╚═══════════════════════════════╝

#symbol loc_8C02FEC4 0x8C02FEC4
#symbol loc_8C03319E 0x8C03319E
#symbol loc_8C034DEE 0x8C034DEE
#symbol loc_8C034E8C 0x8C034E8C
#symbol loc_8C035162 0x8C035162
#symbol loc_8C03544C 0x8C03544C
#symbol loc_8C04223A 0x8C04223A
#symbol loc_8C045790 0x8C045790
#symbol loc_8C046C8A 0x8C046C8A
#symbol loc_8C04CC1C 0x8C04CC1C
#symbol loc_8C04FEA8 0x8C04FEA8
#symbol loc_8C04FF88 0x8C04FF88
#symbol loc_8C050048 0x8C050048
#symbol loc_8C050084 0x8C050084
#symbol loc_8C050834 0x8C050834
#symbol loc_8C050EA4 0x8C050EA4
#symbol loc_8C05115A 0x8C05115A
#symbol loc_8C0511B4 0x8C0511B4
#symbol loc_8C0511E2 0x8C0511E2
#symbol loc_8C051648 0x8C051648
#symbol loc_8C05176E 0x8C05176E
#symbol loc_8C051854 0x8C051854
#symbol loc_8C05218A 0x8C05218A
#symbol loc_8C052B4C 0x8C052B4C
#symbol loc_8C052C84 0x8C052C84
#symbol loc_8C052CE2 0x8C052CE2
#symbol loc_8C052DAC 0x8C052DAC
#symbol loc_8C053082 0x8C053082
#symbol loc_8C0530D8 0x8C0530D8
#symbol loc_8C053E00 0x8C053E00
#symbol loc_8C053F6E 0x8C053F6E
#symbol loc_8C054184 0x8C054184
#symbol loc_8C0542E0 0x8C0542E0
#symbol loc_8C054508 0x8C054508
#symbol loc_8C05496C 0x8C05496C
#symbol loc_8C054B34 0x8C054B34
#symbol loc_8C054D04 0x8C054D04
#symbol loc_8C054D1C 0x8C054D1C
#symbol loc_8C054DA0 0x8C054DA0
#symbol loc_8C054E58 0x8C054E58
#symbol loc_8C055C3A 0x8C055C3A
#symbol loc_8C056DE4 0x8C056DE4
#symbol loc_8C056F2A 0x8C056F2A
#symbol loc_8C0ABC94 0x8C0ABC94
#symbol loc_8C0ABF44 0x8C0ABF44
#symbol loc_8C0AC374 0x8C0AC374
#symbol loc_8C0ACFA8 0x8C0ACFA8
#symbol loc_8C0AD878 0x8C0AD878
#symbol loc_8C0E97CC 0x8C0E97CC
#symbol loc_8C0E9A78 0x8C0E9A78
#symbol loc_8C0E9D20 0x8C0E9D20
#symbol loc_8C0EE570 0x8C0EE570
#symbol loc_8C103660 0x8C103660
#symbol loc_8C26823C 0x8C26823C
#symbol loc_8C2896B0 0x8C2896B0

#symbol DAT_ce32b00  0x0CE32B00

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300da,pc),r0
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
    sts.l PR,@-r15
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x0A,r0
    bt/s LAB_ce300d4
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x0B,r0
    bt LAB_ce300d4
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
    mov.l @(PTR_ce300f0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce30104
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce3014c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce30248
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce30192
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce301d8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce302ae
    mov r14,r4
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce302ee
    mov r14,r4
    tst r0,r0
    bf LAB_ce300d4
    mov.l @(PTR_ce300f4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    mov.w @(DAT_ce300de,pc),r5
    mov.l @(PTR_ce300f8,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    mov.l @(PTR_ce300fc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30100,pc),r2
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
DAT_ce300dc:
    #data 0x01d0
DAT_ce300de:
    #data 0x03cc
    #align4

PTR_ce300e0:
    #data PTR_ce32910
PTR_ce300e4:
    #data loc_8c054508
PTR_ce300e8:
    #data loc_8c054b34
PTR_ce300ec:
    #data loc_8c05496c
PTR_ce300f0:
    #data loc_8c054d04
PTR_ce300f4:
    #data loc_8c054184
PTR_ce300f8:
    #data loc_8c053f6e
PTR_ce300fc:
    #data loc_8c053e00
PTR_ce30100:
    #data loc_8c0542e0

;=============================================

FUN_ce30104:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3022c,pc),r5
    mov.w @(DAT_ce3021e,pc),r6
    mov.l @(PTR_ce30230,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30124
    mov.w @(DAT_ce30220,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3012c

LAB_ce30124:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3012c:
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30222,pc),r0
    mov.l @(PTR_ce30234,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3014c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30238,pc),r5
    mov.w @(DAT_ce30224,pc),r6
    mov.l @(PTR_ce30230,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3016c
    mov.w @(DAT_ce30220,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30174

LAB_ce3016c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30174:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30222,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30234,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30192:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3023c,pc),r5
    mov.w @(DAT_ce30226,pc),r6
    mov.l @(PTR_ce30230,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301b0
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301b0:
    mov.w @(DAT_ce30226,pc),r5
    mov.l @(PTR_ce30240,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30222,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30234,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301d8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30244,pc),r5
    mov.w @(DAT_ce30228,pc),r6
    mov.l @(PTR_ce30230,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301f6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301f6:
    mov.w @(DAT_ce30228,pc),r5
    mov.l @(PTR_ce30240,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30222,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30234,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3021e:
    #data 0x0364
DAT_ce30220:
    #data 0x040c
DAT_ce30222:
    #data 0x01e9
DAT_ce30224:
    #data 0x036c
DAT_ce30226:
    #data 0x0374
DAT_ce30228:
    #data 0x037c
    #align4

PTR_ce3022c:
    #data DAT_ce328b8
PTR_ce30230:
    #data loc_8c054e58
PTR_ce30234:
    #data loc_8c0530d8
PTR_ce30238:
    #data DAT_ce328c8
PTR_ce3023c:
    #data DAT_ce328e8
PTR_ce30240:
    #data loc_8c055c3a
PTR_ce30244:
    #data DAT_ce328fc

;=============================================

FUN_ce30248:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30360,pc),r5
    mov.w @(DAT_ce30354,pc),r6
    mov.l @(PTR_ce30364,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30282
    mov.w @(DAT_ce30356,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30282
    mov.w @(DAT_ce30358,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30290
    mov.w @(DAT_ce3035a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30290
    mov.w @(DAT_ce3035c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3028a

LAB_ce30282:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3028a:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30290:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3035e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30368,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302ae:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3036c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce302c6
    mov.w @(DAT_ce30356,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302ce

LAB_ce302c6:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302ce:
    mov.w @(DAT_ce3035e,pc),r0
    mov 0x09,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30368,pc),r3
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

FUN_ce302ee:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30370,pc),r3
    jsr @r3
    mov 0x05,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30308
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30308:
    mov.w @(DAT_ce3035e,pc),r0
    mov 0x05,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30368,pc),r3
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

LAB_ce30328:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce30374
    mov r4,r14
    tst r0,r0
    bf LAB_ce30344
    bsr FUN_ce303aa
    mov r14,r4
    tst r0,r0
    bf LAB_ce30344
    bsr FUN_ce303e2
    mov r14,r4
    tst r0,r0
    bt LAB_ce3034c

LAB_ce30344:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce3034c:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30354:
    #data 0x0384
DAT_ce30356:
    #data 0x040c
DAT_ce30358:
    #data 0x01f9
DAT_ce3035a:
    #data 0x01fc
DAT_ce3035c:
    #data 0x01d4
DAT_ce3035e:
    #data 0x01e9
    #align4

PTR_ce30360:
    #data DAT_ce328d8
PTR_ce30364:
    #data loc_8c054e58
PTR_ce30368:
    #data loc_8c0530d8
PTR_ce3036c:
    #data loc_8c054d1c
PTR_ce30370:
    #data loc_8c054da0

;=============================================

FUN_ce30374:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30490,pc),r5
    mov.w @(DAT_ce30482,pc),r6
    mov.l @(PTR_ce30494,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30394
    mov.w @(DAT_ce30484,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3039c

LAB_ce30394:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3039c:
    mov.w @(DAT_ce30486,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303aa:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30498,pc),r5
    mov.w @(DAT_ce30488,pc),r6
    mov.l @(PTR_ce30494,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303ca
    mov.w @(DAT_ce30484,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303d2

LAB_ce303ca:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303d2:
    mov.w @(DAT_ce30486,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov r3,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303e2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3049c,pc),r5
    mov.w @(DAT_ce3048a,pc),r6
    mov.l @(PTR_ce30494,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30402
    mov.w @(DAT_ce30484,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3040a

LAB_ce30402:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3040a:
    mov.w @(DAT_ce30486,pc),r0
    mov 0x08,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30418:
    mov 0x25,r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    tst 0x01,r0
    bf/s LAB_ce3042a
    mov 0x03,r5
    mov 0x01,r7
    bra LAB_ce3042e
    mov 0x04,r6

LAB_ce3042a:
    mov 0x10,r6
    mov 0x01,r7

LAB_ce3042e:
    mov.l @(PTR_ce304a0,pc),r2
    jmp @r2
    nop

LAB_ce30434:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce304a4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3044e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce304a8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3044e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30456:
    mov.w @(DAT_ce3048c,pc),r5
    add r4,r5
    mov.b @(0x3,r5),r0
    tst r0,r0
    bt LAB_ce30466
    mov.b @(0x3,r5),r0
    add 0xFF,r0
    mov.b r0,@(0x3,r5)

LAB_ce30466:
    mov.b @(0x9,r5),r0
    tst r0,r0
    bt LAB_ce3047e
    mov.b @(0x9,r5),r0
    add 0xFF,r0
    mov.b r0,@(0x9,r5)
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3047e
    mov.l @(PTR_ce304ac,pc),r2
    jmp @r2
    mov 0x3B,r5

LAB_ce3047e:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30482:
    #data 0x0364
DAT_ce30484:
    #data 0x040c
DAT_ce30486:
    #data 0x0258
DAT_ce30488:
    #data 0x036c
DAT_ce3048a:
    #data 0x0384
DAT_ce3048c:
    #data 0x02a4
    #align4

PTR_ce30490:
    #data DAT_ce328b8
PTR_ce30494:
    #data loc_8c054e58
PTR_ce30498:
    #data DAT_ce328c8
PTR_ce3049c:
    #data DAT_ce328d8
PTR_ce304a0:
    #data loc_8c03544c
PTR_ce304a4:
    #data loc_8c034dee
PTR_ce304a8:
    #data loc_8c051648
PTR_ce304ac:
    #data loc_8c04223a

;=============================================

LAB_ce304b0:
    mov.w @(DAT_ce30576,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30584,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce304c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30588,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30578,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce304f2
    mov.w @(DAT_ce3057a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce304ea
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30778
    mov.l @r15+,r14

LAB_ce304ea:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce306c4
    mov.l @r15+,r14

LAB_ce304f2:
    mov.w @(DAT_ce3057a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30504
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce305ee
    mov.l @r15+,r14

LAB_ce30504:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3050c
    mov.l @r15+,r14

LAB_ce3050c:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3057c,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3058c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30532
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3054c
    cmp/eq 0x02,r0
    bt LAB_ce3059c
    bra LAB_ce305ba
    nop

LAB_ce30532:
    mov.w @(DAT_ce3057e,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30580,pc),r0
    mov.l @(PTR_ce30590,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30582,pc),r0
    bra LAB_ce305ba
    mov.b r13,@(r0,r14)

LAB_ce3054c:
    mov.w @(DAT_ce3057e,pc),r0
    mov 0x01,r11
    mov 0x15,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30580,pc),r0
    mov r11,r5
    mov.l @(PTR_ce30594,pc),r3
    mov 0x12,r6
    mov r11,r7
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30582,pc),r0
    mov.l @(PTR_ce30598,pc),r3
    mov.b r11,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce305ba
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30576:
    #data 0x01ff
DAT_ce30578:
    #data 0x01fe
DAT_ce3057a:
    #data 0x01f9
DAT_ce3057c:
    #data 0x01e8
DAT_ce3057e:
    #data 0x0158
DAT_ce30580:
    #data 0x03f4
DAT_ce30582:
    #data 0x01a7
    #align4

PTR_ce30584:
    #data PTR_ce32980
PTR_ce30588:
    #data loc_8c052b4c
PTR_ce3058c:
    #data loc_8c04223a
PTR_ce30590:
    #data DAT_ce32870
PTR_ce30594:
    #data DAT_ce32874
PTR_ce30598:
    #data loc_8c03544c

;=============================================

LAB_ce3059c:
    mov.w @(DAT_ce306a2,pc),r0
    mov 0x02,r11
    mov 0x16,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306a4,pc),r0
    mov.l @(PTR_ce306ac,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306a6,pc),r0
    mov.b r11,@(r0,r14)
    bsr FUN_ce30418
    mov r14,r4

LAB_ce305ba:
    mov.w @(DAT_ce306a8,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce306b0,pc),r3
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
    mov.w @(DAT_ce306a2,pc),r0
    mov.l @(PTR_ce306b4,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce305ee:
    mov.w @(DAT_ce306aa,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce306b8,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30612
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3062e
    cmp/eq 0x02,r0
    bt LAB_ce3064e
    bra LAB_ce30670
    nop

LAB_ce30612:
    mov.w @(DAT_ce306a2,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306a4,pc),r0
    mov.l @(PTR_ce306bc,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306a6,pc),r0
    bra LAB_ce30670
    mov.b r13,@(r0,r14)

LAB_ce3062e:
    mov.w @(DAT_ce306a2,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306a4,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce306c0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306a6,pc),r0
    bra LAB_ce30670
    mov.b r2,@(r0,r14)

LAB_ce3064e:
    mov.w @(DAT_ce306a2,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306a4,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce306ac,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306a6,pc),r0
    mov.b r2,@(r0,r14)
    bsr FUN_ce30418
    mov r14,r4

LAB_ce30670:
    mov.w @(DAT_ce306a8,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce306b0,pc),r3
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
    mov.w @(DAT_ce306a2,pc),r0
    mov.l @(PTR_ce306b4,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306a2:
    #data 0x0158
DAT_ce306a4:
    #data 0x03f4
DAT_ce306a6:
    #data 0x01a7
DAT_ce306a8:
    #data 0x01ac
DAT_ce306aa:
    #data 0x01e8
    #align4

PTR_ce306ac:
    #data DAT_ce32878
PTR_ce306b0:
    #data loc_8c2896b0
PTR_ce306b4:
    #data loc_8c034e8c
PTR_ce306b8:
    #data loc_8c04223a
PTR_ce306bc:
    #data DAT_ce32870
PTR_ce306c0:
    #data DAT_ce32874

;=============================================

LAB_ce306c4:
    mov.w @(DAT_ce307d8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce307e4,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce306e8
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30704
    cmp/eq 0x02,r0
    bt LAB_ce30724
    bra LAB_ce30746
    nop

LAB_ce306e8:
    mov.w @(DAT_ce307da,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307dc,pc),r0
    mov.l @(PTR_ce307e8,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307de,pc),r0
    bra LAB_ce30746
    mov.b r13,@(r0,r14)

LAB_ce30704:
    mov.w @(DAT_ce307da,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307dc,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce307ec,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307de,pc),r0
    bra LAB_ce30746
    mov.b r2,@(r0,r14)

LAB_ce30724:
    mov.w @(DAT_ce307da,pc),r0
    mov 0x02,r1
    mov 0x05,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307dc,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce307f0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307de,pc),r0
    mov.b r2,@(r0,r14)
    bsr FUN_ce30418
    mov r14,r4

LAB_ce30746:
    mov.w @(DAT_ce307e0,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce307f4,pc),r3
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
    mov.w @(DAT_ce307da,pc),r0
    mov.l @(PTR_ce307f8,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30778:
    mov.w @(DAT_ce307d8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce307e4,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3079c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307b8
    cmp/eq 0x02,r0
    bt LAB_ce307fc
    bra LAB_ce3081e
    nop

LAB_ce3079c:
    mov.w @(DAT_ce307da,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307dc,pc),r0
    mov.l @(PTR_ce307e8,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307de,pc),r0
    bra LAB_ce3081e
    mov.b r13,@(r0,r14)

LAB_ce307b8:
    mov.w @(DAT_ce307da,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307dc,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce307ec,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307de,pc),r0
    bra LAB_ce3081e
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307d8:
    #data 0x01e8
DAT_ce307da:
    #data 0x0158
DAT_ce307dc:
    #data 0x03f4
DAT_ce307de:
    #data 0x01a7
DAT_ce307e0:
    #data 0x01ac
    #align4

PTR_ce307e4:
    #data loc_8c04223a
PTR_ce307e8:
    #data DAT_ce3287c
PTR_ce307ec:
    #data DAT_ce32880
PTR_ce307f0:
    #data DAT_ce32884
PTR_ce307f4:
    #data loc_8c2896b0
PTR_ce307f8:
    #data loc_8c034e8c

;=============================================

LAB_ce307fc:
    mov.w @(DAT_ce308da,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308dc,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce308ec,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308de,pc),r0
    mov.b r2,@(r0,r14)
    bsr FUN_ce30418
    mov r14,r4

LAB_ce3081e:
    mov.w @(DAT_ce308e0,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce308f0,pc),r3
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
    mov.w @(DAT_ce308da,pc),r0
    mov.l @(PTR_ce308f4,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30850:
    mov.w @(DAT_ce308e2,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30860
    mov.w @(DAT_ce308e4,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30870

LAB_ce30860:
    mov.w @(DAT_ce308e2,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30874
    mov.w @(DAT_ce308e4,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30874

LAB_ce30870:
    bra LAB_ce30878
    nop

LAB_ce30874:
    rts
    nop

LAB_ce30878:
    mov.w @(DAT_ce308e2,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30886
    bra LAB_ce309b8
    nop

LAB_ce30886:
    bra LAB_ce3088a
    nop

LAB_ce3088a:
    mov.w @(DAT_ce308e6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce308f8,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308ae
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30904
    cmp/eq 0x02,r0
    bt LAB_ce30942
    bra LAB_ce30974
    nop

LAB_ce308ae:
    mov.w @(DAT_ce308da,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308e8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce308ce
    mov.w @(DAT_ce308dc,pc),r0
    mov.l @(PTR_ce308fc,pc),r3
    bra LAB_ce308d4
    mov.l r3,@(r0,r14)

LAB_ce308ce:
    mov.w @(DAT_ce308dc,pc),r0
    mov.l @(PTR_ce30900,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce308d4:
    mov.w @(DAT_ce308de,pc),r0
    bra LAB_ce30974
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308da:
    #data 0x0158
DAT_ce308dc:
    #data 0x03f4
DAT_ce308de:
    #data 0x01a7
DAT_ce308e0:
    #data 0x01ac
DAT_ce308e2:
    #data 0x01fe
DAT_ce308e4:
    #data 0x01d6
DAT_ce308e6:
    #data 0x01e8
DAT_ce308e8:
    #data 0x01fc
    #align4

PTR_ce308ec:
    #data DAT_ce32884
PTR_ce308f0:
    #data loc_8c2896b0
PTR_ce308f4:
    #data loc_8c034e8c
PTR_ce308f8:
    #data loc_8c04223a
PTR_ce308fc:
    #data DAT_ce32888
PTR_ce30900:
    #data DAT_ce328a0

;=============================================

LAB_ce30904:
    mov.w @(DAT_ce30a08,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a0a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30926
    mov.w @(DAT_ce30a0c,pc),r0
    mov.l @(PTR_ce30a18,pc),r3
    bra LAB_ce3092c
    mov.l r3,@(r0,r14)

LAB_ce30926:
    mov.w @(DAT_ce30a0c,pc),r0
    mov.l @(PTR_ce30a1c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce3092c:
    mov.w @(DAT_ce30a0e,pc),r0
    mov 0x01,r3
    mov r3,r5
    mov r3,r7
    mov.b r3,@(r0,r14)
    mov 0x12,r6
    mov.l @(PTR_ce30a20,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce30974
    nop

LAB_ce30942:
    mov.w @(DAT_ce30a08,pc),r0
    mov 0x02,r3
    mov 0x0E,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r2,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a0a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30964
    mov.w @(DAT_ce30a0c,pc),r0
    mov.l @(PTR_ce30a24,pc),r3
    bra LAB_ce3096a
    mov.l r3,@(r0,r14)

LAB_ce30964:
    mov.w @(DAT_ce30a0c,pc),r0
    mov.l @(PTR_ce30a28,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce3096a:
    mov.w @(DAT_ce30a0e,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    bsr FUN_ce30418
    mov r14,r4

LAB_ce30974:
    mov.w @(DAT_ce30a10,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30a2c,pc),r3
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
    mov.w @(DAT_ce30a08,pc),r0
    mov.l @(PTR_ce30a30,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30a12,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce309ae
    mov.w @(DAT_ce30a12,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce309ae:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce309b8:
    mov.w @(DAT_ce30a14,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30a34,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce309dc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a40
    cmp/eq 0x02,r0
    bt LAB_ce30a70
    bra LAB_ce30aa2
    nop

LAB_ce309dc:
    mov.w @(DAT_ce30a08,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a0a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce309fc
    mov.w @(DAT_ce30a0c,pc),r0
    mov.l @(PTR_ce30a38,pc),r3
    bra LAB_ce30a02
    mov.l r3,@(r0,r14)

LAB_ce309fc:
    mov.w @(DAT_ce30a0c,pc),r0
    mov.l @(PTR_ce30a3c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a02:
    mov.w @(DAT_ce30a0e,pc),r0
    bra LAB_ce30aa2
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a08:
    #data 0x0158
DAT_ce30a0a:
    #data 0x01fc
DAT_ce30a0c:
    #data 0x03f4
DAT_ce30a0e:
    #data 0x01a7
DAT_ce30a10:
    #data 0x01ac
DAT_ce30a12:
    #data 0x01d6
DAT_ce30a14:
    #data 0x01e8
    #align4

PTR_ce30a18:
    #data DAT_ce3288c
PTR_ce30a1c:
    #data DAT_ce328a4
PTR_ce30a20:
    #data loc_8c03544c
PTR_ce30a24:
    #data DAT_ce32890
PTR_ce30a28:
    #data DAT_ce328a8
PTR_ce30a2c:
    #data loc_8c2896b0
PTR_ce30a30:
    #data loc_8c034e8c
PTR_ce30a34:
    #data loc_8c04223a
PTR_ce30a38:
    #data DAT_ce32894
PTR_ce30a3c:
    #data DAT_ce328ac

;=============================================

LAB_ce30a40:
    mov.w @(DAT_ce30b62,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b64,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a62
    mov.w @(DAT_ce30b66,pc),r0
    mov.l @(PTR_ce30b74,pc),r3
    bra LAB_ce30a68
    mov.l r3,@(r0,r14)

LAB_ce30a62:
    mov.w @(DAT_ce30b66,pc),r0
    mov.l @(PTR_ce30b78,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a68:
    mov.w @(DAT_ce30b68,pc),r0
    mov 0x01,r3
    bra LAB_ce30aa2
    mov.b r3,@(r0,r14)

LAB_ce30a70:
    mov.w @(DAT_ce30b62,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b64,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a92
    mov.w @(DAT_ce30b66,pc),r0
    mov.l @(PTR_ce30b7c,pc),r3
    bra LAB_ce30a98
    mov.l r3,@(r0,r14)

LAB_ce30a92:
    mov.w @(DAT_ce30b66,pc),r0
    mov.l @(PTR_ce30b80,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a98:
    mov.w @(DAT_ce30b68,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    bsr FUN_ce30418
    mov r14,r4

LAB_ce30aa2:
    mov.w @(DAT_ce30b6a,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30b84,pc),r3
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
    mov.w @(DAT_ce30b62,pc),r0
    mov.l @(PTR_ce30b88,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30b6c,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30adc
    mov.w @(DAT_ce30b6c,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30adc:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30ae6:
    mov.w @(DAT_ce30b6e,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30b8c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30afa:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30b90,pc),r3
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
    mov.w @(DAT_ce30b70,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30b94
    mov.w @(DAT_ce30b72,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30b5a
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30cf2
    mov.l @r15+,r14

LAB_ce30b5a:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30ca6
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b62:
    #data 0x0158
DAT_ce30b64:
    #data 0x01fc
DAT_ce30b66:
    #data 0x03f4
DAT_ce30b68:
    #data 0x01a7
DAT_ce30b6a:
    #data 0x01ac
DAT_ce30b6c:
    #data 0x01d6
DAT_ce30b6e:
    #data 0x01ff
DAT_ce30b70:
    #data 0x01fe
DAT_ce30b72:
    #data 0x01f9
    #align4

PTR_ce30b74:
    #data DAT_ce32898
PTR_ce30b78:
    #data DAT_ce328b0
PTR_ce30b7c:
    #data DAT_ce3289c
PTR_ce30b80:
    #data DAT_ce328b4
PTR_ce30b84:
    #data loc_8c2896b0
PTR_ce30b88:
    #data loc_8c034e8c
PTR_ce30b8c:
    #data PTR_ce32990
PTR_ce30b90:
    #data loc_8c052c84

;=============================================

LAB_ce30b94:
    mov.w @(DAT_ce30c74,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30ba6
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c1c
    mov.l @r15+,r14

LAB_ce30ba6:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30bae
    mov.l @r15+,r14

LAB_ce30bae:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce30c76,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30c7c,pc),r11
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce30bd2
    mov 0x00,r10
    cmp/eq 0x01,r0
    bt LAB_ce30bfa
    bra LAB_ce30c0c
    nop

LAB_ce30bd2:
    mov.w @(DAT_ce30c78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30c0c
    mov.l @(PTR_ce30c80,pc),r3
    mov.b r10,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov r10,r13
    mov 0x05,r12

LAB_ce30be6:
    mov 0x00,r5
    mov r13,r6
    jsr @r11
    mov r14,r4
    add 0x01,r13
    extu.b r13,r2
    cmp/ge r12,r2
    bf LAB_ce30be6
    bra LAB_ce30c0c
    nop

LAB_ce30bfa:
    mov.w @(DAT_ce30c78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30c0c
    mov 0x06,r5
    mov.b r10,@(r0,r14)
    mov 0x00,r6
    jsr @r11
    mov r14,r4

LAB_ce30c0c:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra LAB_ce30434
    mov.l @r15+,r14

LAB_ce30c1c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce30c76,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30c7c,pc),r12
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce30c40
    mov 0x00,r10
    cmp/eq 0x01,r0
    bt LAB_ce30c84
    bra LAB_ce30c96
    nop

LAB_ce30c40:
    mov.w @(DAT_ce30c78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30c96
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce30c7a,pc),r2
    extu.b r3,r3
    cmp/eq r2,r3
    bt LAB_ce30c58
    mov.l @(PTR_ce30c80,pc),r1
    jsr @r1
    mov r14,r4

LAB_ce30c58:
    mov.w @(DAT_ce30c78,pc),r0
    mov r10,r13
    mov 0x03,r11
    mov.b r10,@(r0,r14)

LAB_ce30c60:
    mov 0x01,r5
    mov r13,r6
    jsr @r12
    mov r14,r4
    add 0x01,r13
    extu.b r13,r3
    cmp/ge r11,r3
    bf LAB_ce30c60
    bra LAB_ce30c96
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c74:
    #data 0x01f9
DAT_ce30c76:
    #data 0x01e8
DAT_ce30c78:
    #data 0x0141
DAT_ce30c7a:
    #data 0x0081
    #align4

PTR_ce30c7c:
    #data loc_8c0ad878
PTR_ce30c80:
    #data FUN_ce3270e

;=============================================

LAB_ce30c84:
    mov.w @(DAT_ce30d7e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30c96
    mov 0x07,r5
    mov.b r10,@(r0,r14)
    mov 0x00,r6
    jsr @r12
    mov r14,r4

LAB_ce30c96:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra LAB_ce30434
    mov.l @r15+,r14

LAB_ce30ca6:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30d80,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30ce4
    mov.w @(DAT_ce30d7e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30ce4
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30d84,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30d88,pc),r11
    mov 0x00,r13
    mov 0x06,r12

LAB_ce30cd4:
    mov 0x03,r5
    mov r13,r6
    jsr @r11
    mov r14,r4
    add 0x01,r13
    extu.b r13,r2
    cmp/ge r12,r2
    bf LAB_ce30cd4

LAB_ce30ce4:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra LAB_ce30434
    mov.l @r15+,r14

LAB_ce30cf2:
    mov.w @(DAT_ce30d80,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30d1e
    mov.w @(DAT_ce30d7e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d1e
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30d84,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30d88,pc),r2
    mov 0x04,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4

LAB_ce30d1e:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30434
    mov.l @r15+,r14

LAB_ce30d26:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d8c,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30d90,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30d3c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d94,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30d98,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30d82,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d5e
    bsr FUN_ce30e2e
    mov r14,r4
    bra LAB_ce30d62
    nop

LAB_ce30d5e:
    bsr FUN_ce30da4
    mov r14,r4

LAB_ce30d62:
    mov.l @(PTR_ce30d9c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30d78
    lds.l @r15+,PR
    mov.l @(PTR_ce30da0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d78:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d7e:
    #data 0x0141
DAT_ce30d80:
    #data 0x01e8
DAT_ce30d82:
    #data 0x01fe
    #align4

PTR_ce30d84:
    #data FUN_ce3270e
PTR_ce30d88:
    #data loc_8c0ad878
PTR_ce30d8c:
    #data loc_8c050084
PTR_ce30d90:
    #data loc_8c04ff88
PTR_ce30d94:
    #data loc_8c04fea8
PTR_ce30d98:
    #data loc_8c050048
PTR_ce30d9c:
    #data loc_8c052ce2
PTR_ce30da0:
    #data loc_8c052dac

;=============================================

FUN_ce30da4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce30e94,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30e9c,pc),r12
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce30dc8
    mov 0x00,r10
    cmp/eq 0x01,r0
    bt LAB_ce30df0
    bra LAB_ce30e02
    nop

LAB_ce30dc8:
    mov.w @(DAT_ce30e96,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30e02
    mov.l @(PTR_ce30ea0,pc),r3
    mov.b r10,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov r10,r13
    mov 0x03,r11

LAB_ce30ddc:
    mov 0x02,r5
    mov r13,r6
    jsr @r12
    mov r14,r4
    add 0x01,r13
    extu.b r13,r2
    cmp/ge r11,r2
    bf LAB_ce30ddc
    bra LAB_ce30e02
    nop

LAB_ce30df0:
    mov.w @(DAT_ce30e98,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30e02
    mov 0x08,r5
    mov.b r10,@(r0,r14)
    mov 0x00,r6
    jsr @r12
    mov r14,r4

LAB_ce30e02:
    mov.l @(PTR_ce30ea4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e20
    lds.l @r15+,PR
    mov.l @(PTR_ce30ea8,pc),r3
    mov r14,r4
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e20:
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30e2e:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30e94,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30e6c
    mov.w @(DAT_ce30e96,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e6c
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30ea0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30e9c,pc),r11
    mov 0x00,r13
    mov 0x05,r12

LAB_ce30e5c:
    mov 0x05,r5
    mov r13,r6
    jsr @r11
    mov r14,r4
    add 0x01,r13
    extu.b r13,r2
    cmp/ge r12,r2
    bf LAB_ce30e5c

LAB_ce30e6c:
    mov.l @(PTR_ce30ea4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e88
    lds.l @r15+,PR
    mov.l @(PTR_ce30ea8,pc),r2
    mov r14,r4
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30e88:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e94:
    #data 0x01e8
DAT_ce30e96:
    #data 0x0141
DAT_ce30e98:
    #data 0x0140
    #align4

PTR_ce30e9c:
    #data loc_8c0ad878
PTR_ce30ea0:
    #data FUN_ce3270e
PTR_ce30ea4:
    #data loc_8c034dee
PTR_ce30ea8:
    #data loc_8c05176e

;=============================================

LAB_ce30eac:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce30f0a
    mov 0x00,r13
    mov.l @(PTR_ce30fdc,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce30fe0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30fe4,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30fd2,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce30fe8,pc),r3
    mov 0x05,r6
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30fd4,pc),r0
    mov 0x43,r2
    mov.l @(PTR_ce30fec,pc),r3
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

LAB_ce30f0a:
    mov.w @(DAT_ce30fd6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f1e
    mov.l @(PTR_ce30ff0,pc),r3
    mov 0x06,r5
    mov.b r13,@(r0,r14)
    mov 0x00,r6
    jsr @r3
    mov r14,r4

LAB_ce30f1e:
    mov.w @(DAT_ce30fd8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30f2e
    mov.l @(PTR_ce30ff4,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30f2e:
    mov 0x5C,r1
    mov.l @(PTR_ce30ff8,pc),r3
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
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce30434
    mov.l @r15+,r14

LAB_ce30f76:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30fda,pc),r3
    mov r14,r4
    mov.l @(PTR_ce30ffc,pc),r2
    add r14,r3
    mov.l @(PTR_ce31000,pc),r1
    mov.l r3,@r2
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f92:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31004,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30fd6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30fcc
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce30ffc,pc),r2
    add 0x01,r0
    fldi0 fr4
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.l @r2,r3
    mov.b r0,@(0x8,r3)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce31008
    mov.l @r15+,r14

LAB_ce30fcc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fd2:
    #data 0x01f9
DAT_ce30fd4:
    #data 0x01a1
DAT_ce30fd6:
    #data 0x0141
DAT_ce30fd8:
    #data 0x01ff
DAT_ce30fda:
    #data 0x02a4
    #align4

PTR_ce30fdc:
    #data loc_8c052b4c
PTR_ce30fe0:
    #data loc_8c04223a
PTR_ce30fe4:
    #data loc_8c056de4
PTR_ce30fe8:
    #data loc_8c034e8c
PTR_ce30fec:
    #data loc_8c2896b0
PTR_ce30ff0:
    #data loc_8c0ad878
PTR_ce30ff4:
    #data loc_8c0511e2
PTR_ce30ff8:
    #data loc_8c052c84
PTR_ce30ffc:
    #data DAT_ce32b00
PTR_ce31000:
    #data PTR_ce329a0
PTR_ce31004:
    #data loc_8c034dee

;=============================================

LAB_ce31008:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce310b8
    mov r4,r14
    mov.l @(PTR_ce31120,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3103a
    mov.l @(PTR_ce31124,pc),r2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.l @r2,r3
    mov.b @(0x8,r3),r0
    tst r0,r0
    bt/s LAB_ce31032
    mov 0x02,r5
    bra LAB_ce31034
    mov 0x04,r6

LAB_ce31032:
    mov 0x05,r6

LAB_ce31034:
    mov.l @(PTR_ce31128,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3103a:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce31078
    mov.l @r15+,r14

LAB_ce31042:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31120,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31062
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    mov.l @(PTR_ce31128,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce31062:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce31078
    mov.l @r15+,r14

LAB_ce3106a:
    sts.l PR,@-r15
    bsr FUN_ce31078
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    bra LAB_ce30434
    lds.l @r15+,PR

;=============================================

FUN_ce31078:
    mov.w @(DAT_ce31110,pc),r0
    mov.b @(r0,r4),r3
    cmp/pz r3
    bt LAB_ce310b4
    mov.w @(DAT_ce31112,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce31110,pc),r0
    mov.b @(r0,r4),r0
    and 0x7F,r0
    mov r0,r5
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce310b4
    mov.w @(DAT_ce31110,pc),r0
    mov 0x80,r2
    extu.b r5,r5
    mov.b r2,@(r0,r4)
    shll2 r5
    mov.l @(PTR_ce3112c,pc),r0
    fmov.s @(r0,r5),fr4
    mov.w @(DAT_ce31114,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce310ae
    mov 0x34,r0
    fneg fr4

LAB_ce310ae:
    fmov.s @(r0,r4),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r4)

LAB_ce310b4:
    rts
    nop

;=============================================

FUN_ce310b8:
    mov.w @(DAT_ce31116,pc),r0
    mov.w @(r0,r4),r3
    add 0xFE,r0
    mov.w @(r0,r4),r4
    and r3,r4
    mov.w @(DAT_ce31118,pc),r3
    exts.w r4,r4
    cmp/eq r3,r4
    bt LAB_ce310d2
    mov.l @(PTR_ce31124,pc),r2
    mov 0x01,r0
    mov.l @r2,r1
    mov.b r0,@(0x8,r1)

LAB_ce310d2:
    rts
    nop

;=============================================

FUN_ce310d6:
    mov.w @(DAT_ce31116,pc),r0
    mov.w @(r0,r4),r3
    add 0xFE,r0
    mov.w @(r0,r4),r4
    and r3,r4
    mov.w @(DAT_ce3111a,pc),r3
    exts.w r4,r4
    cmp/eq r3,r4
    bt LAB_ce310f0
    mov.l @(PTR_ce31124,pc),r2
    mov 0x01,r0
    mov.l @r2,r1
    mov.b r0,@(0x8,r1)

LAB_ce310f0:
    rts
    nop

LAB_ce310f4:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3111c,pc),r3
    mov r14,r4
    mov.l @(PTR_ce31124,pc),r2
    add r14,r3
    mov.l @(PTR_ce31130,pc),r1
    mov.l r3,@r2
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31110:
    #data 0x0141
DAT_ce31112:
    #data 0x01f5
DAT_ce31114:
    #data 0x01d2
DAT_ce31116:
    #data 0x034c
DAT_ce31118:
    #data 0x0800
DAT_ce3111a:
    #data 0x0400
DAT_ce3111c:
    #data 0x02a4
    #align4

PTR_ce31120:
    #data loc_8c034dee
PTR_ce31124:
    #data DAT_ce32b00
PTR_ce31128:
    #data loc_8c034e8c
PTR_ce3112c:
    #data DAT_ce329b0
PTR_ce31130:
    #data PTR_ce329dc

;=============================================

LAB_ce31134:
    mov.b @(0x6,r4),r0
    mov.l @(PTR_ce31278,pc),r2
    add 0x01,r0
    fldi0 fr4
    mov.b r0,@(0x6,r4)
    mov 0x00,r0
    mov.l @r2,r3
    mov.b r0,@(0x8,r3)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)

LAB_ce31154:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce310d6
    mov r4,r14
    mov.l @(PTR_ce3127c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31186
    mov.l @(PTR_ce31278,pc),r2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.l @r2,r3
    mov.b @(0x8,r3),r0
    tst r0,r0
    bt/s LAB_ce3117e
    mov 0x02,r5
    bra LAB_ce31180
    mov 0x06,r6

LAB_ce3117e:
    mov 0x07,r6

LAB_ce31180:
    mov.l @(PTR_ce31280,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31186:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce31078
    mov.l @r15+,r14

LAB_ce3118e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3127c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311ae
    mov.b @(0x6,r14),r0
    mov 0x02,r5
    mov.l @(PTR_ce31280,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce311ae:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce31078
    mov.l @r15+,r14

LAB_ce311b6:
    sts.l PR,@-r15
    bsr FUN_ce31078
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    bra LAB_ce30434
    lds.l @r15+,PR

LAB_ce311c4:
    mov r4,r3
    mov.l @(PTR_ce31284,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce311d6:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r4
    fldi0 fr4
    mov.l r13,@-r15
    mov.w @(DAT_ce31270,pc),r3
    sts.l PR,@-r15
    mov.l @(PTR_ce31278,pc),r2
    add r14,r3
    mov.l r3,@r2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31272,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce31288,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31274,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
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
    mova @(DAT_ce3128c,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    mov.l @(PTR_ce31290,pc),r13
    fmov fr2,@(r0,r14)
    mov 0x00,r0
    mov.w r0,@(0x1c,r14)
    mov 0x04,r0
    mov.w r0,@(0x1e,r14)
    mov 0x25,r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    tst r4,r3
    bt LAB_ce3123e
    mov 0x01,r7
    mov r7,r5
    mov 0x20,r6
    jsr @r13
    mov r14,r4
    mov 0x01,r7
    bra LAB_ce3124c
    mov 0x21,r6

LAB_ce3123e:
    mov 0x01,r7
    mov r7,r5
    mov 0x23,r6
    jsr @r13
    mov r14,r4
    mov 0x24,r6
    mov 0x01,r7

LAB_ce3124c:
    mov 0x02,r5
    jsr @r13
    mov r14,r4
    mov.l @(PTR_ce31278,pc),r3
    mov 0x00,r0
    mov.l @r3,r2
    mov.b r0,@(0x7,r2)
    mov.l @(PTR_ce31294,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31280,pc),r3
    mov 0x00,r6
    mov 0x12,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31270:
    #data 0x02a4
DAT_ce31272:
    #data 0x012c
DAT_ce31274:
    #data 0x041c
    #align4

PTR_ce31278:
    #data DAT_ce32b00
PTR_ce3127c:
    #data loc_8c034dee
PTR_ce31280:
    #data loc_8c034e8c
PTR_ce31284:
    #data PTR_ce329ec
DAT_ce31288:
    #data 0xc3beb6db
DAT_ce3128c:
    #data 0x41092492
PTR_ce31290:
    #data loc_8c03544c
PTR_ce31294:
    #data loc_8c0e9a78

;=============================================

LAB_ce31298:
    mov.w @(DAT_ce313b4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce313b2,pc),r3
    sts.l PR,@-r15
    mov.l @(PTR_ce313bc,pc),r2
    add r14,r3
    mov.l r3,@r2
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce3133c
    mov.w @(DAT_ce313b6,pc),r0
    mov 0x01,r1
    mov.b r1,@(r0,r14)
    mov.w @(0x1c,r14),r0
    tst 0x0F,r0
    bf LAB_ce312c0
    mov.l @(PTR_ce313c0,pc),r1
    jsr @r1
    mov r14,r4

LAB_ce312c0:
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
    mov.w @(DAT_ce313b8,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31308
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce313bc,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    mov.l @r2,r3
    mov.b r0,@(0x7,r3)
    mov 0x00,r3
    mov.w @(DAT_ce313b8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce313ba,pc),r0
    mov.b r3,@(r0,r14)
    bra LAB_ce31330
    mov 0x0B,r6

LAB_ce31308:
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31342
    mov 0x04,r0
    mov.w r0,@(0x1e,r14)
    mov 0x0B,r4
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/ge r4,r0
    bf LAB_ce3132c
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)

LAB_ce3132c:
    mov.w @(0x1c,r14),r0
    mov r0,r6

LAB_ce31330:
    lds.l @r15+,PR
    mov.l @(PTR_ce313c4,pc),r3
    mov 0x12,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3133c:
    mov.w @(DAT_ce313b6,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce31342:
    lds.l @r15+,PR
    mov.l @(PTR_ce313c8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3134c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce313c8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31364
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce31364:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3136c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313cc,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31384
    lds.l @r15+,PR
    mov.l @(PTR_ce313d0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31384:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce313d4,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31396:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce313d8,pc),r0
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce313b2:
    #data 0x02a4
DAT_ce313b4:
    #data 0x0141
DAT_ce313b6:
    #data 0x012c
DAT_ce313b8:
    #data 0x041c
DAT_ce313ba:
    #data 0x01f9
    #align4

PTR_ce313bc:
    #data DAT_ce32b00
PTR_ce313c0:
    #data loc_8c0e9d20
PTR_ce313c4:
    #data loc_8c034e8c
PTR_ce313c8:
    #data loc_8c034dee
PTR_ce313cc:
    #data loc_8c046c8a
PTR_ce313d0:
    #data loc_8c051648
PTR_ce313d4:
    #data PTR_ce329f8
PTR_ce313d8:
    #data PTR_ce32a00

;=============================================

LAB_ce313dc:
    sts.l PR,@-r15
    mov.l @(PTR_ce314fc,pc),r3
    mov 0x11,r6
    mov 0x01,r7
    mov.l r4,@-r15
    jsr @r3
    mov 0x02,r5
    mov.l @(PTR_ce31500,pc),r2
    jsr @r2
    nop
    mov.l @r15,r4
    mov 0x01,r6
    mov 0x13,r5
    and r0,r6
    add 0x04,r15
    mov.l @(PTR_ce31504,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31400:
    mov.l @(PTR_ce31504,pc),r3
    mov 0x02,r6
    jmp @r3
    mov 0x13,r5

LAB_ce31408:
    mov.l @(PTR_ce31504,pc),r3
    mov 0x03,r6
    jmp @r3
    mov 0x13,r5

LAB_ce31410:
    mov.l @(PTR_ce31508,pc),r3
    jmp @r3
    nop

LAB_ce31416:
    mov.w @(DAT_ce314e8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce314e6,pc),r3
    mov r14,r4
    mov.l @(PTR_ce3150c,pc),r2
    add r14,r3
    mov.l r3,@r2
    mov.b @(r0,r14),r1
    mov.l @(PTR_ce31510,pc),r0
    extu.b r1,r1
    shll2 r1
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31434:
    mov r4,r3
    mov.l @(PTR_ce31514,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31446:
    mov.w @(DAT_ce314ea,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31464
    mov.w @(DAT_ce314ee,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce314ec,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31464:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31518,pc),r3
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
    mov.w @(DAT_ce314f0,pc),r0
    mov.l @(PTR_ce3151c,pc),r3
    mov.b r13,@(r0,r14)
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
    mov.w @(DAT_ce314f2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce314f4,pc),r0
    mov.l @(PTR_ce31520,pc),r2
    mov.b r13,@(r0,r14)
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce31504,pc),r3
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce314c8:
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce314f6,pc),r0
    mov 0x02,r3
    mov 0x05,r5
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce314f8,pc),r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce314ea,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31524
    bra LAB_ce31526
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314e6:
    #data 0x02a4
DAT_ce314e8:
    #data 0x01e9
DAT_ce314ea:
    #data 0x0255
DAT_ce314ec:
    #data 0x00ff
DAT_ce314ee:
    #data 0x03f0
DAT_ce314f0:
    #data 0x01a1
DAT_ce314f2:
    #data 0x041c
DAT_ce314f4:
    #data 0x01f9
DAT_ce314f6:
    #data 0x03f8
DAT_ce314f8:
    #data 0x0328
    #align4

PTR_ce314fc:
    #data loc_8c03544c
PTR_ce31500:
    #data loc_8c03319e
PTR_ce31504:
    #data loc_8c034e8c
PTR_ce31508:
    #data loc_8c034dee
PTR_ce3150c:
    #data DAT_ce32b00
PTR_ce31510:
    #data PTR_ce32a14
PTR_ce31514:
    #data PTR_ce32a40
PTR_ce31518:
    #data loc_8c05218a
PTR_ce3151c:
    #data loc_8c2896b0
PTR_ce31520:
    #data loc_8c05115a

;=============================================

LAB_ce31524:
    mov 0x00,r3

LAB_ce31526:
    mov.w @(DAT_ce3163c,pc),r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce3163e,pc),r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce31640,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3156a
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31642,pc),r0
    mov.w r0,@(0x1c,r4)
    mov 0x06,r0
    mov.w r0,@(0x1e,r4)
    mov.w @(DAT_ce31640,pc),r0
    mov.b r3,@(r0,r4)
    mova @(DAT_ce3164c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31650,pc),r0
    mov.l @(PTR_ce31654,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r15,r5
    bra LAB_ce31570
    nop

LAB_ce3156a:
    mov.l @(PTR_ce31658,pc),r3
    jsr @r3
    nop

LAB_ce31570:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31578:
    mov.w @(DAT_ce31644,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r4
    mov r3,r5
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x0A,r6
    mov.w @(DAT_ce3163e,pc),r0
    mov 0x01,r7
    mov.l @(PTR_ce3165c,pc),r3
    mov.b r4,@(r0,r14)
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31660,pc),r2
    mov 0x4D,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce315ac:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31646,pc),r4
    mov 0x04,r0
    mov 0x02,r3
    mov.l r13,@-r15
    add r14,r4
    sts.l PR,@-r15
    mov.b r0,@(0x9,r4)
    mov 0x05,r13
    mov.w @(DAT_ce31644,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3163e,pc),r0
    mov.l @(PTR_ce31658,pc),r3
    mov.b r13,@(r0,r14)
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31604
    mov.w @(DAT_ce31648,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31664,pc),r3
    mov 0x01,r6
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce3164a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31604:
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31622
    mov r13,r0
    nop
    mov.l @(PTR_ce31668,pc),r3
    mov r14,r4
    mov.w r0,@(0x1e,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31622:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3162a:
    mov r4,r3
    mov.l @(PTR_ce3166c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3163c:
    #data 0x03f1
DAT_ce3163e:
    #data 0x0328
DAT_ce31640:
    #data 0x0141
DAT_ce31642:
    #data 0x0080
DAT_ce31644:
    #data 0x03f8
DAT_ce31646:
    #data 0x02a4
DAT_ce31648:
    #data 0x03f9
DAT_ce3164a:
    #data 0x0327
    #align4

DAT_ce3164c:
    #data 0xc13aaaaa
DAT_ce31650:
    #data 0x43452492
PTR_ce31654:
    #data loc_8c050834
PTR_ce31658:
    #data loc_8c034dee
PTR_ce3165c:
    #data loc_8c03544c
PTR_ce31660:
    #data loc_8c04223a
PTR_ce31664:
    #data loc_8c034e8c
PTR_ce31668:
    #data loc_8c0abc94
PTR_ce3166c:
    #data PTR_ce32a54

;=============================================

LAB_ce31670:
    mov.w @(DAT_ce31782,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3168e
    mov.w @(DAT_ce31786,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31784,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3168e:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31794,pc),r3
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
    mov 0x00,r4
    mov.w @(DAT_ce31788,pc),r0
    mov.l @(PTR_ce31798,pc),r3
    mov.b r4,@(r0,r14)
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
    mov 0x70,r0
    mov.l @(PTR_ce3179c,pc),r1
    mov.w r0,@(0x1c,r14)
    mov.l @r1,r2
    mov.b r4,@r2
    mova @(DAT_ce317a0,pc),r0
    mov.l @(PTR_ce317a4,pc),r2
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov 0x25,r0
    mov.l @(PTR_ce317a8,pc),r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce31704
    mov 0x01,r7
    mov r7,r5
    mov 0x20,r6
    jsr @r13
    mov r14,r4
    mov 0x01,r7
    bra LAB_ce31712
    mov 0x21,r6

LAB_ce31704:
    mov 0x01,r7
    mov r7,r5
    mov 0x23,r6
    jsr @r13
    mov r14,r4
    mov 0x24,r6
    mov 0x01,r7

LAB_ce31712:
    mov 0x02,r5
    jsr @r13
    mov r14,r4
    mov.l @(PTR_ce317ac,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce317b0,pc),r2
    mov 0x04,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3172e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3178a,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r4
    mov.w @(DAT_ce3178c,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31782,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31750
    bra LAB_ce31752
    mov 0x02,r3

LAB_ce31750:
    mov 0x00,r3

LAB_ce31752:
    mov.w @(DAT_ce3178e,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3178c,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31790,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce317de
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31790,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce317b4,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce317bc
    mov.l @(PTR_ce317b8,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce317e4
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31782:
    #data 0x0255
DAT_ce31784:
    #data 0x00ff
DAT_ce31786:
    #data 0x03f0
DAT_ce31788:
    #data 0x01a1
DAT_ce3178a:
    #data 0x03f8
DAT_ce3178c:
    #data 0x0328
DAT_ce3178e:
    #data 0x03f1
DAT_ce31790:
    #data 0x0141
    #align4

PTR_ce31794:
    #data loc_8c05218a
PTR_ce31798:
    #data loc_8c2896b0
PTR_ce3179c:
    #data DAT_ce32b00
DAT_ce317a0:
    #data 0x404db6db
PTR_ce317a4:
    #data loc_8c053082
PTR_ce317a8:
    #data loc_8c03544c
PTR_ce317ac:
    #data loc_8c05115a
PTR_ce317b0:
    #data loc_8c034e8c
PTR_ce317b4:
    #data loc_8c0ac374
PTR_ce317b8:
    #data loc_8c051648

;=============================================

LAB_ce317bc:
    mova @(DAT_ce318dc,pc),r0
    mov.l @(PTR_ce318e4,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce318e0,pc),r0
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
    bra LAB_ce317e4
    nop

LAB_ce317de:
    mov.l @(PTR_ce318e8,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce317e4:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce317ec:
    mov.w @(DAT_ce318d0,pc),r0
    mov 0x02,r3
    mov 0x05,r5
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce318d2,pc),r0
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce31800:
    mov.w @(DAT_ce318d0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r4
    mov.w @(DAT_ce318d2,pc),r0
    mov.l @(PTR_ce318e8,pc),r3
    mov.b r4,@(r0,r14)
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce318b2
    mov.w @(DAT_ce318d4,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce318ec,pc),r2
    mov 0x02,r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x13,r6
    mov.w @(DAT_ce318d6,pc),r0
    mov 0x01,r7
    mov.w @(DAT_ce318d8,pc),r1
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.l @r2,r3
    mov.b r1,@r3
    mov.l @(PTR_ce318f0,pc),r3
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
    mova @(DAT_ce318f4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov.l @(PTR_ce318f8,pc),r3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x09,r6
    lds.l @r15+,PR
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce318b2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318b8:
    mov.l @(PTR_ce318fc,pc),r3
    jmp @r3
    nop

LAB_ce318be:
    mov r4,r3
    mov.l @(PTR_ce31900,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce318d0:
    #data 0x03f8
DAT_ce318d2:
    #data 0x0328
DAT_ce318d4:
    #data 0x03f9
DAT_ce318d6:
    #data 0x0327
DAT_ce318d8:
    #data 0x00ff
    #align4

DAT_ce318dc:
    #data 0xc13aaaaa
DAT_ce318e0:
    #data 0x43452492
PTR_ce318e4:
    #data loc_8c050834
PTR_ce318e8:
    #data loc_8c034dee
PTR_ce318ec:
    #data DAT_ce32b00
PTR_ce318f0:
    #data loc_8c03544c
DAT_ce318f4:
    #data 0xbef00000
PTR_ce318f8:
    #data loc_8c034e8c
PTR_ce318fc:
    #data loc_8c05176e
PTR_ce31900:
    #data PTR_ce32a6c

;=============================================

LAB_ce31904:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce319ec,pc),r3
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
    mov 0x00,r4
    mov.w @(DAT_ce319e2,pc),r0
    mov.l @(PTR_ce319f0,pc),r3
    mov.b r4,@(r0,r14)
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
    mov.w @(DAT_ce319e4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319e6,pc),r0
    mov.l @(PTR_ce319f4,pc),r2
    mov 0x0A,r5
    mov.b r4,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce319f8,pc),r3
    mov 0x50,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce319e8,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce319fc,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    mov r2,r6
    lds.l @r15+,PR
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3197e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a00,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce319b6
    mov.w @(DAT_ce319ea,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce319ca
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r7
    mov.l @(PTR_ce31a04,pc),r3
    mov r7,r5
    mov 0x05,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31a08,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce319b6:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce319fc,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce319ca:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce319d0:
    mov r4,r3
    mov.l @(PTR_ce31a0c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319e2:
    #data 0x01a1
DAT_ce319e4:
    #data 0x041c
DAT_ce319e6:
    #data 0x01f9
DAT_ce319e8:
    #data 0x0158
DAT_ce319ea:
    #data 0x0141
    #align4

PTR_ce319ec:
    #data loc_8c05218a
PTR_ce319f0:
    #data loc_8c2896b0
PTR_ce319f4:
    #data loc_8c056de4
PTR_ce319f8:
    #data loc_8c05115a
PTR_ce319fc:
    #data loc_8c034e8c
PTR_ce31a00:
    #data loc_8c034dee
PTR_ce31a04:
    #data loc_8c03544c
PTR_ce31a08:
    #data loc_8c0abf44
PTR_ce31a0c:
    #data PTR_ce32a78

;=============================================

LAB_ce31a10:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31b38,pc),r3
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
    mov.w @(DAT_ce31b2c,pc),r0
    mov.l @(PTR_ce31b3c,pc),r3
    mov.b r13,@(r0,r14)
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
    mov.w @(DAT_ce31b2e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x70,r0
    mov.w r0,@(0x1c,r14)
    mov 0x01,r7
    mov.w @(DAT_ce31b30,pc),r0
    mov r7,r5
    mov.l @(PTR_ce31b40,pc),r2
    mov 0x07,r6
    mov.b r13,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31b40,pc),r3
    mov 0x04,r5
    mov 0x01,r7
    mov 0x07,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31b44,pc),r2
    mov 0x0A,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31b48,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce31b4c,pc),r2
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31aa0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b50,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce31ad8
    mov.w @(DAT_ce31b32,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31ae2
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x01,r2
    mov.w @(DAT_ce31b34,pc),r0
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31b54,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ad8:
    lds.l @r15+,PR
    mov.l @(PTR_ce31b58,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ae2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31ae8:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bt LAB_ce31af4
    mov.l @(PTR_ce31b5c,pc),r0
    jmp @r0
    nop

LAB_ce31af4:
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    fldi0 fr4
    mov 0x04,r6
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
    mov.w @(DAT_ce31b30,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce31b4c,pc),r3
    jmp @r3
    mov 0x14,r5

LAB_ce31b1a:
    mov r4,r3
    mov.l @(PTR_ce31b60,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b2c:
    #data 0x01a1
DAT_ce31b2e:
    #data 0x041c
DAT_ce31b30:
    #data 0x01f9
DAT_ce31b32:
    #data 0x0141
DAT_ce31b34:
    #data 0x027b
    #align4

PTR_ce31b38:
    #data loc_8c05218a
PTR_ce31b3c:
    #data loc_8c2896b0
PTR_ce31b40:
    #data loc_8c03544c
PTR_ce31b44:
    #data loc_8c056de4
PTR_ce31b48:
    #data loc_8c05115a
PTR_ce31b4c:
    #data loc_8c034e8c
PTR_ce31b50:
    #data loc_8c034dee
PTR_ce31b54:
    #data loc_8c0acfa8
PTR_ce31b58:
    #data loc_8c051648
PTR_ce31b5c:
    #data LAB_ce30434
PTR_ce31b60:
    #data PTR_ce32a80

;=============================================

LAB_ce31b64:
    mov.w @(DAT_ce31c72,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31b80
    mov.w @(DAT_ce31c76,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31c74,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31b80:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31c84,pc),r3
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
    mov 0x3E,r3
    mov.w @(DAT_ce31c78,pc),r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31c88,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x60,r0
    mov.w r0,@(0x1c,r14)
    mov 0x02,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce31c7a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31be4
    lds.l @r15+,PR
    mov.l @(PTR_ce31c8c,pc),r1
    mov r14,r4
    mov 0x0F,r6
    mov 0x16,r5
    jmp @r1
    mov.l @r15+,r14

LAB_ce31be4:
    mov.w @(DAT_ce31c7a,pc),r0
    mov 0x16,r5
    mov.l @(PTR_ce31c8c,pc),r2
    mov 0x0D,r6
    mov.b r4,@(r0,r14)
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31c90,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31bfc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31c7c,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r4
    mov.w @(DAT_ce31c7e,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31c72,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31c1e
    bra LAB_ce31c20
    mov 0x02,r3

LAB_ce31c1e:
    mov 0x00,r3

LAB_ce31c20:
    mov.w @(DAT_ce31c80,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31c7e,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31c82,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31c64
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31c82,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31c94,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce31c98,pc),r0
    mov.l @(PTR_ce31ca0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce31c9c,pc),r0
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
    bra LAB_ce31c6a
    nop

LAB_ce31c64:
    mov.l @(PTR_ce31ca4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31c6a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c72:
    #data 0x0255
DAT_ce31c74:
    #data 0x00ff
DAT_ce31c76:
    #data 0x03f0
DAT_ce31c78:
    #data 0x01a1
DAT_ce31c7a:
    #data 0x01f9
DAT_ce31c7c:
    #data 0x03f8
DAT_ce31c7e:
    #data 0x0328
DAT_ce31c80:
    #data 0x03f1
DAT_ce31c82:
    #data 0x0141
    #align4

PTR_ce31c84:
    #data loc_8c05218a
PTR_ce31c88:
    #data loc_8c2896b0
PTR_ce31c8c:
    #data loc_8c034e8c
PTR_ce31c90:
    #data loc_8c05115a
PTR_ce31c94:
    #data FUN_ce30418
DAT_ce31c98:
    #data 0xc13aaaaa
DAT_ce31c9c:
    #data 0x43452492
PTR_ce31ca0:
    #data loc_8c050834
PTR_ce31ca4:
    #data loc_8c034dee

;=============================================

LAB_ce31ca8:
    mov.w @(DAT_ce31dca,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r4
    mov.w @(DAT_ce31dcc,pc),r0
    mov.l @(PTR_ce31dd8,pc),r3
    mov.b r4,@(r0,r14)
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce31cfc
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31d30
    mov 0x04,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce31dce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce31cf0
    mov r14,r4
    mov 0x00,r6
    bra LAB_ce31cf4
    mov 0x0A,r5

LAB_ce31cf0:
    mov 0x0B,r5
    mov 0x00,r6

LAB_ce31cf4:
    lds.l @r15+,PR
    mov.l @(PTR_ce31ddc,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31cfc:
    mov.w @(DAT_ce31dd0,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31dd2,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31dce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce31d24
    mov 0x16,r5
    bra LAB_ce31d26
    mov 0x10,r6

LAB_ce31d24:
    mov 0x0E,r6

LAB_ce31d26:
    lds.l @r15+,PR
    mov.l @(PTR_ce31de0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31d30:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d36:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31dd8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d64
    mov.w @(DAT_ce31dce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31d5a
    lds.l @r15+,PR
    mov.l @(PTR_ce31de4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31d5a:
    lds.l @r15+,PR
    mov.l @(PTR_ce31de8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31d64:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d6a:
    mov r4,r3
    mov.l @(PTR_ce31dec,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31d7c:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov 0x00,r3
    mov r3,r5
    sts.l PR,@-r15
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
    mov.w @(DAT_ce31dce,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31dd4,pc),r0
    mov.l @(PTR_ce31df0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31df4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31df8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31de0,pc),r2
    mov r14,r4
    mov 0x1A,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31dca:
    #data 0x03f8
DAT_ce31dcc:
    #data 0x0328
DAT_ce31dce:
    #data 0x01f9
DAT_ce31dd0:
    #data 0x03f9
DAT_ce31dd2:
    #data 0x0327
DAT_ce31dd4:
    #data 0x041c
    #align4

PTR_ce31dd8:
    #data loc_8c034dee
PTR_ce31ddc:
    #data loc_8c0ad878
PTR_ce31de0:
    #data loc_8c034e8c
PTR_ce31de4:
    #data loc_8c05176e
PTR_ce31de8:
    #data loc_8c051648
PTR_ce31dec:
    #data PTR_ce32a90
PTR_ce31df0:
    #data loc_8c035162
PTR_ce31df4:
    #data loc_8c05218a
PTR_ce31df8:
    #data loc_8c05115a

;=============================================

LAB_ce31dfc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce31f28,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e1c
    mov.l @(PTR_ce31f2c,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e1c:
    mov.w @(DAT_ce31f18,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e3e
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31f30,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31f34,pc),r0
    mov.l @(PTR_ce31f38,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31e3e:
    mov.w @(DAT_ce31f1a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e5c
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x07,r5
    mov.l @(PTR_ce31f3c,pc),r3
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f40,pc),r2
    mov 0x16,r5
    jsr @r2
    mov r14,r4

LAB_ce31e5c:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e64:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce31ee8
    mov 0x00,r4
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
    mov.w @(DAT_ce31f1c,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31f1e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f20,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31ea8
    mov.w @(DAT_ce31f22,pc),r0
    mov 0x40,r2
    bra LAB_ce31eae
    mov.b r2,@(r0,r14)

LAB_ce31ea8:
    mov.w @(DAT_ce31f22,pc),r0
    mov 0x42,r3
    mov.b r3,@(r0,r14)

LAB_ce31eae:
    mov.w @(DAT_ce31f24,pc),r0
    mov 0x00,r5
    mov.l @(PTR_ce31f44,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce31f48,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f4c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31f50,pc),r3
    mov r14,r4
    mov 0x1B,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ee8:
    mov.w @(DAT_ce31f18,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31efc
    mov.l @(PTR_ce31f3c,pc),r3
    mov 0x06,r5
    mov.b r4,@(r0,r14)
    mov 0x00,r6
    jsr @r3
    mov r14,r4

LAB_ce31efc:
    lds.l @r15+,PR
    mov.l @(PTR_ce31f54,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31f06:
    mov r4,r3
    mov.l @(PTR_ce31f58,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f18:
    #data 0x0141
DAT_ce31f1a:
    #data 0x0140
DAT_ce31f1c:
    #data 0x01f9
DAT_ce31f1e:
    #data 0x041c
DAT_ce31f20:
    #data 0x0255
DAT_ce31f22:
    #data 0x01a1
DAT_ce31f24:
    #data 0x01ac
    #align4

PTR_ce31f28:
    #data loc_8c034dee
PTR_ce31f2c:
    #data loc_8c051648
DAT_ce31f30:
    #data 0x43055555
DAT_ce31f34:
    #data 0x42ab6db6
PTR_ce31f38:
    #data loc_8c050ea4
PTR_ce31f3c:
    #data loc_8c0ad878
PTR_ce31f40:
    #data loc_8c04223a
PTR_ce31f44:
    #data loc_8c2896b0
PTR_ce31f48:
    #data loc_8c035162
PTR_ce31f4c:
    #data loc_8c05218a
PTR_ce31f50:
    #data loc_8c034e8c
PTR_ce31f54:
    #data LAB_ce30434
PTR_ce31f58:
    #data PTR_ce32a98

;=============================================

LAB_ce31f5c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce32098,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32090,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce3209c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32092,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31f8c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31f8c:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce320a0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x3F,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce320a4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce32094,pc),r0
    mov r4,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce320a8,pc),r3
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
    mov.l @(PTR_ce320ac,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31fd6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce320b0,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce320b4,pc),r3
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
    bt LAB_ce3203e
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce320b8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce320ac,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3203e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32044:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce320b0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32066
    mov.l @(PTR_ce32098,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce320bc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32066:
    mov.w @(DAT_ce32096,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32072
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce32072:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32078:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32090,pc),r1
    mov.l @(PTR_ce320c0,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32090:
    #data 0x01f9
DAT_ce32092:
    #data 0x01d2
DAT_ce32094:
    #data 0x01a1
DAT_ce32096:
    #data 0x0141
    #align4

PTR_ce32098:
    #data loc_8c035162
DAT_ce3209c:
    #data 0x41f00000
DAT_ce320a0:
    #data 0x40892492
DAT_ce320a4:
    #data 0xbf4db6db
PTR_ce320a8:
    #data loc_8c2896b0
PTR_ce320ac:
    #data loc_8c034e8c
PTR_ce320b0:
    #data loc_8c034dee
PTR_ce320b4:
    #data loc_8c052ce2
PTR_ce320b8:
    #data loc_8c0511b4
PTR_ce320bc:
    #data loc_8c051854
PTR_ce320c0:
    #data PTR_ce32aa4

;=============================================

LAB_ce320c4:
    mov.w @(DAT_ce321d0,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce321d2,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32134
    mov.w @(DAT_ce321d4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32104
    mov.w @(DAT_ce321d6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32104
    mov.l @(PTR_ce321e4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32134
    mov r0,r4
    bra LAB_ce32126
    mov 0x00,r2

LAB_ce32104:
    mov.w @(DAT_ce321d4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32134
    mov.w @(DAT_ce321d6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32134
    mov.l @(PTR_ce321e4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32134
    mov r0,r4
    mov 0x01,r2

LAB_ce32126:
    mov.w @(DAT_ce321d8,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32134:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3213c:
    rts
    mov 0x00,r0

LAB_ce32140:
    mov.w @(DAT_ce321d0,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce321da,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32190
    mov.w @(DAT_ce321d6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32190
    mova @(DAT_ce321e8,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32190
    mov.l @(PTR_ce321e4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32190
    mov r0,r4
    mov.w @(DAT_ce321d8,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32190:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32198:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce321ec,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce321dc,pc),r0
    mov.w @(DAT_ce321de,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce321e0,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    mov r14,r4
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce321d8,pc),r0
    mov.l @(PTR_ce321f0,pc),r1
    mov.b @(r0,r14),r0
    lds.l @r15+,PR
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce321d0:
    #data 0x01fa
DAT_ce321d2:
    #data 0x0c00
DAT_ce321d4:
    #data 0x01fe
DAT_ce321d6:
    #data 0x01a3
DAT_ce321d8:
    #data 0x01f7
DAT_ce321da:
    #data 0x1c00
DAT_ce321dc:
    #data 0x01c8
DAT_ce321de:
    #data 0x0130
DAT_ce321e0:
    #data 0x01d2
    #align4

PTR_ce321e4:
    #data loc_8c045790
DAT_ce321e8:
    #data 0x43092492
PTR_ce321ec:
    #data loc_8c056f2a
PTR_ce321f0:
    #data PTR_ce32ab4

;=============================================

LAB_ce321f4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce32232
    mov.w @(DAT_ce32306,pc),r0
    mov.w @(DAT_ce32308,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce32306,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce3230a,pc),r0
    mov.w @(DAT_ce32308,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.w @(DAT_ce32306,pc),r2
    mov.b @(r0,r4),r0
    add r4,r1
    add r4,r2
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce32232:
    mova @(DAT_ce32310,pc),r0
    mov.l @(PTR_ce32318,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32314,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3230c,pc),r0
    mov 0x01,r7
    mov.l @(PTR_ce3231c,pc),r3
    mov 0x0A,r2
    mov r7,r5
    mov.b r2,@(r0,r14)
    mov 0x0B,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32320,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3226c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce322aa
    mov.w @(DAT_ce32306,pc),r0
    mov.w @(DAT_ce32308,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce32306,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce3230a,pc),r0
    mov.w @(DAT_ce32308,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.w @(DAT_ce32306,pc),r2
    mov.b @(r0,r4),r0
    add r4,r1
    add r4,r2
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce322aa:
    mova @(DAT_ce32310,pc),r0
    mov.l @(PTR_ce32318,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32314,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3230c,pc),r0
    mov 0x01,r7
    mov.l @(PTR_ce3231c,pc),r3
    mov 0x0A,r2
    mov r7,r5
    mov.b r2,@(r0,r14)
    mov 0x05,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3230a,pc),r0
    mov 0x03,r4
    mov.l @(r0,r14),r2
    add 0x62,r0
    mov.b r4,@(r0,r2)
    add 0x9E,r0
    mov.l @(r0,r14),r3
    add 0x60,r0
    mov.b r4,@(r0,r3)
    add 0xA0,r0
    mov.l @(PTR_ce32324,pc),r3
    jsr @r3
    mov.l @(r0,r14),r4
    mov.l @(PTR_ce32328,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32320,pc),r3
    mov 0x0F,r5
    mov 0x02,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32306:
    #data 0x01d2
DAT_ce32308:
    #data 0x0130
DAT_ce3230a:
    #data 0x01c8
DAT_ce3230c:
    #data 0x01a0
    #align4

DAT_ce32310:
    #data 0xc2d55555
DAT_ce32314:
    #data 0x434db6db
PTR_ce32318:
    #data loc_8c103660
PTR_ce3231c:
    #data loc_8c03544c
PTR_ce32320:
    #data loc_8c034e8c
PTR_ce32324:
    #data loc_8c0ee570
PTR_ce32328:
    #data loc_8c0e97cc

;=============================================

LAB_ce3232c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x68,r0
    fldi0 fr4
    mov r4,r14
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce32378
    mov.w @(DAT_ce3245a,pc),r0
    mov.w @(DAT_ce3245c,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce3245a,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce3245e,pc),r0
    mov.w @(DAT_ce3245c,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.w @(DAT_ce3245a,pc),r2
    mov.b @(r0,r4),r0
    add r4,r1
    add r4,r2
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce32378:
    mova @(DAT_ce32468,pc),r0
    mov.l @(PTR_ce32470,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce3246c,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32474,pc),r2
    mov 0x01,r7
    mov r7,r5
    mov 0x05,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3245e,pc),r0
    mov 0x03,r4
    mov.l @(r0,r14),r3
    add 0x62,r0
    mov.b r4,@(r0,r3)
    add 0x9E,r0
    mov.l @(r0,r14),r3
    add 0x60,r0
    mov.b r4,@(r0,r3)
    add 0xA0,r0
    mov.l @(PTR_ce32478,pc),r3
    jsr @r3
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce32460,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce3247c,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x04,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce323cc:
    mov.w @(DAT_ce32462,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32480,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce323ea:
    mov r4,r3
    mov.l @(PTR_ce32484,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce323fc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32488,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32464,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32426
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r3,r5
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32464,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce3248c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32426:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3242c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce324f4
    mov r4,r14
    mov.l @(PTR_ce32488,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32454
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3247c,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32454:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3245a:
    #data 0x01d2
DAT_ce3245c:
    #data 0x0130
DAT_ce3245e:
    #data 0x01c8
DAT_ce32460:
    #data 0x01a0
DAT_ce32462:
    #data 0x01ea
DAT_ce32464:
    #data 0x0141
    #align4

DAT_ce32468:
    #data 0xc2855555
DAT_ce3246c:
    #data 0x43809249
PTR_ce32470:
    #data loc_8c103660
PTR_ce32474:
    #data loc_8c03544c
PTR_ce32478:
    #data loc_8c0ee570
PTR_ce3247c:
    #data loc_8c034e8c
PTR_ce32480:
    #data PTR_ce32ac0
PTR_ce32484:
    #data PTR_ce32acc
PTR_ce32488:
    #data loc_8c034dee
PTR_ce3248c:
    #data loc_8c0e97cc

;=============================================

LAB_ce32490:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    bsr FUN_ce324f4
    mov r4,r14
    mov.l @(PTR_ce325d4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce325ca,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce324ec
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov.w @(DAT_ce325ce,pc),r1
    mov 0x00,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x6,r14)
    mov 0x01,r2
    mov.w @(DAT_ce325ca,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x20,r3
    mov.w @(DAT_ce325cc,pc),r0
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x1E,r0
    mov.b @(r0,r14),r0
    add r13,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce325d0,pc),r0
    mov.b r3,@(r0,r13)
    add 0x55,r0
    mov.l @(PTR_ce325d8,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r4
    mov.l @(PTR_ce325dc,pc),r2
    mov 0x00,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce324ec:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce324f4:
    mov.w @(DAT_ce325cc,pc),r0
    mov.l @(PTR_ce325e0,pc),r3
    mov.l @(r0,r4),r4
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x01,r0
    bt LAB_ce32508
    mov.l @(PTR_ce325dc,pc),r1
    jmp @r1
    mov 0x01,r5

LAB_ce32508:
    mov.l @(PTR_ce325dc,pc),r2
    jmp @r2
    mov 0x08,r5

LAB_ce3250e:
    mov r4,r3
    mov.l @(PTR_ce325e4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32520:
    mov.w @(DAT_ce325cc,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov 0x03,r4
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    add 0x62,r0
    mov.b r4,@(r0,r3)
    add 0x9E,r0
    mov.l @(r0,r14),r3
    add 0x60,r0
    mov.b r4,@(r0,r3)
    bsr FUN_ce325f0
    mov r14,r4
    mov.l @(PTR_ce325d4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce325ca,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce32598
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov.w @(DAT_ce325ce,pc),r1
    mov 0x00,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x6,r14)
    mov 0x0A,r2
    mov.w @(DAT_ce325ca,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x21,r3
    mov.w @(DAT_ce325cc,pc),r0
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x1E,r0
    mov.b @(r0,r14),r0
    add r13,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce325d0,pc),r0
    mov.b r3,@(r0,r13)
    add 0x55,r0
    mov.l @(PTR_ce325d8,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce325dc,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r13,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce325e8,pc),r3
    mov r14,r4
    mov 0x02,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32598:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce325a0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce325d4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce325c4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce325ec,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce325c4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325ca:
    #data 0x0141
DAT_ce325cc:
    #data 0x01c8
DAT_ce325ce:
    #data 0x01d2
DAT_ce325d0:
    #data 0x01a1
    #align4

PTR_ce325d4:
    #data loc_8c034dee
PTR_ce325d8:
    #data loc_8c02fec4
PTR_ce325dc:
    #data loc_8c035162
PTR_ce325e0:
    #data loc_8c26823c
PTR_ce325e4:
    #data PTR_ce32adc
PTR_ce325e8:
    #data loc_8c0e97cc
PTR_ce325ec:
    #data loc_8c034e8c

;=============================================

FUN_ce325f0:
    mov.w @(DAT_ce32726,pc),r0
    mov.l @(PTR_ce32734,pc),r3
    mov.l @(r0,r4),r4
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x01,r0
    bt LAB_ce32604
    mov.l @(PTR_ce32738,pc),r1
    jmp @r1
    mov 0x05,r5

LAB_ce32604:
    mov.l @(PTR_ce32738,pc),r2
    jmp @r2
    mov 0x04,r5

LAB_ce3260a:
    mov r4,r3
    mov.l @(PTR_ce3273c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3261c:
    mov.w @(DAT_ce32726,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov 0x03,r4
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    add 0x62,r0
    mov.b r4,@(r0,r3)
    add 0x9E,r0
    mov.l @(r0,r14),r3
    add 0x60,r0
    mov.b r4,@(r0,r3)
    bsr FUN_ce325f0
    mov r14,r4
    mov.l @(PTR_ce32740,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32728,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32694
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov.w @(DAT_ce3272a,pc),r1
    mov 0x00,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x6,r14)
    mov 0x0A,r2
    mov.w @(DAT_ce32728,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x22,r3
    mov.w @(DAT_ce32726,pc),r0
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x1E,r0
    mov.b @(r0,r14),r0
    add r13,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce3272c,pc),r0
    mov.b r3,@(r0,r13)
    add 0x55,r0
    mov.l @(PTR_ce32744,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32738,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r13,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32748,pc),r3
    mov r14,r4
    mov 0x03,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32694:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3269c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32740,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce326c0
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3274c,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce326c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce326c6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32740,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce326e0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32750,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce326e0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce326e8:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce3272e,pc),r1
    mov.l @(PTR_ce32754,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce32700:
    mov.w @(DAT_ce32726,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce32758,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce3270e:
    mov.w @(DAT_ce32730,pc),r3
    mov 0xFF,r0
    add r3,r4
    mov.b r0,@(0x6,r4)
    mov.b @(0x4,r4),r0
    add 0x01,r0
    mov.b r0,@(0x4,r4)
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x2,r4)
    rts
    mov.b r0,@(0x3,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32726:
    #data 0x01c8
DAT_ce32728:
    #data 0x0141
DAT_ce3272a:
    #data 0x01d2
DAT_ce3272c:
    #data 0x01a1
DAT_ce3272e:
    #data 0x01f7
DAT_ce32730:
    #data 0x02a4
    #align4

PTR_ce32734:
    #data loc_8c26823c
PTR_ce32738:
    #data loc_8c035162
PTR_ce3273c:
    #data PTR_ce32ae8
PTR_ce32740:
    #data loc_8c034dee
PTR_ce32744:
    #data loc_8c02fec4
PTR_ce32748:
    #data loc_8c0e97cc
PTR_ce3274c:
    #data loc_8c034e8c
PTR_ce32750:
    #data loc_8c05176e
PTR_ce32754:
    #data PTR_ce32af4
PTR_ce32758:
    #data loc_8c04cc1c

;=============================================

LAB_ce3275c:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32836,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce3277c
    cmp/eq 0x01,r0
    bt LAB_ce32784
    cmp/eq 0x02,r0
    bt LAB_ce3278c
    bra LAB_ce32790
    nop

LAB_ce3277c:
    mov.w @(DAT_ce32838,pc),r0
    mov 0x08,r3
    bra LAB_ce32790
    mov.b r3,@(r0,r4)

LAB_ce32784:
    mov.w @(DAT_ce32838,pc),r0
    mov 0x01,r1
    bra LAB_ce32790
    mov.b r1,@(r0,r4)

LAB_ce3278c:
    mov.w @(DAT_ce32838,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce32790:
    mov.l @(PTR_ce3283c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce32796:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32836,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce327b6
    cmp/eq 0x01,r0
    bt LAB_ce327be
    cmp/eq 0x02,r0
    bt LAB_ce327c6
    bra LAB_ce327ca
    nop

LAB_ce327b6:
    mov.w @(DAT_ce32838,pc),r0
    mov 0x08,r3
    bra LAB_ce327ca
    mov.b r3,@(r0,r4)

LAB_ce327be:
    mov.w @(DAT_ce32838,pc),r0
    mov 0x01,r1
    bra LAB_ce327ca
    mov.b r1,@(r0,r4)

LAB_ce327c6:
    mov.w @(DAT_ce32838,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce327ca:
    mov.l @(PTR_ce3283c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce327d0:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32836,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce327f0
    cmp/eq 0x01,r0
    bt LAB_ce327fc
    cmp/eq 0x02,r0
    bt LAB_ce32804
    bra LAB_ce32810
    nop

LAB_ce327f0:
    mov.w @(DAT_ce32838,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce32810
    mov.b r5,@(r0,r4)

LAB_ce327fc:
    mov.w @(DAT_ce32838,pc),r0
    mov 0x03,r2
    bra LAB_ce3280a
    mov.b r2,@(r0,r4)

LAB_ce32804:
    mov.w @(DAT_ce32838,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r4)

LAB_ce3280a:
    mov.w @(DAT_ce3283a,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce32810:
    mov.l @(PTR_ce3283c,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce32816:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32836,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce32840
    cmp/eq 0x01,r0
    bt LAB_ce3284c
    cmp/eq 0x02,r0
    bt LAB_ce32854
    bra LAB_ce32860
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32836:
    #data 0x04c9
DAT_ce32838:
    #data 0x01e9
DAT_ce3283a:
    #data 0x01a3
    #align4

PTR_ce3283c:
    #data loc_8c0530d8

;=============================================

LAB_ce32840:
    mov.w @(DAT_ce32866,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce32860
    mov.b r5,@(r0,r4)

LAB_ce3284c:
    mov.w @(DAT_ce32866,pc),r0
    mov 0x03,r2
    bra LAB_ce3285a
    mov.b r2,@(r0,r4)

LAB_ce32854:
    mov.w @(DAT_ce32866,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r4)

LAB_ce3285a:
    mov.w @(DAT_ce32868,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce32860:
    mov.l @(PTR_ce3286c,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32866:
    #data 0x01e9
DAT_ce32868:
    #data 0x01a3
    #align4

PTR_ce3286c:
    #data loc_8c0530d8
DAT_ce32870:
    #data 0x0201
    #data 0x0201
DAT_ce32874:
    #data 0xffff
    #data 0xffff
DAT_ce32878:
    #data 0xffff
    #data 0xffff
DAT_ce3287c:
    #data 0x0201
    #data 0x0201
DAT_ce32880:
    #data 0xffff
    #data 0xffff
DAT_ce32884:
    #data 0xffff
    #data 0xffff
DAT_ce32888:
    #data 0x0201
    #data 0x0201
DAT_ce3288c:
    #data 0xffff
    #data 0xffff
DAT_ce32890:
    #data 0xffff
    #data 0xffff
DAT_ce32894:
    #data 0x0201
    #data 0x0201
DAT_ce32898:
    #data 0xffff
    #data 0xffff
DAT_ce3289c:
    #data 0xffff
    #data 0xffff
DAT_ce328a0:
    #data 0x0201
    #data 0x0200
DAT_ce328a4:
    #data 0x02ff
    #data 0x0201
DAT_ce328a8:
    #data 0xffff
    #data 0xffff
DAT_ce328ac:
    #data 0x0201
    #data 0x0201
DAT_ce328b0:
    #data 0x02ff
    #data 0x02ff
DAT_ce328b4:
    #data 0xffff
    #data 0xffff
DAT_ce328b8:
    #data 0x0003
    #data 0x9100
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce328c8:
    #data 0x0003
    #data 0x9100
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce328d8:
    #data 0x0003
    #data 0x8100
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce328e8:
    #data 0x0005
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x0400
    #data 0x1400
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce328fc:
    #data 0x0005
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
    #align4

PTR_ce32910:
    #data LAB_ce30456
PTR_ce32914:
    #data LAB_ce3001c
PTR_ce32918:
    #data LAB_ce304b0
PTR_ce3291c:
    #data LAB_ce30ae6
PTR_ce32920:
    #data LAB_ce30f76
PTR_ce32924:
    #data LAB_ce310f4
PTR_ce32928:
    #data LAB_ce311c4
PTR_ce3292c:
    #data LAB_ce3136c
PTR_ce32930:
    #data LAB_ce31416
PTR_ce32934:
    #data LAB_ce32078
PTR_ce32938:
    #data LAB_ce32198
PTR_ce3293c:
    #data LAB_ce323cc
PTR_ce32940:
    #data LAB_ce326e8
PTR_ce32944:
    #data LAB_ce30328
PTR_ce32948:
    #data LAB_ce31f06
PTR_ce3294c:
    #data LAB_ce30eac
PTR_ce32950:
    #data LAB_ce3275c
PTR_ce32954:
    #data LAB_ce32796
PTR_ce32958:
    #data LAB_ce327d0
PTR_ce3295c:
    #data LAB_ce32816
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce32980:
    #data LAB_ce304c4
PTR_ce32984:
    #data LAB_ce30850
PTR_ce32988:
    #data LAB_ce30878
PTR_ce3298c:
    #data LAB_ce304c4
PTR_ce32990:
    #data LAB_ce30afa
PTR_ce32994:
    #data LAB_ce30d3c
PTR_ce32998:
    #data LAB_ce30d26
PTR_ce3299c:
    #data LAB_ce30afa
PTR_ce329a0:
    #data LAB_ce30f92
PTR_ce329a4:
    #data LAB_ce31008
PTR_ce329a8:
    #data LAB_ce31042
PTR_ce329ac:
    #data LAB_ce3106a
DAT_ce329b0:
    #data 0x00000000
    #data 0x43700000
    #data 0x42555555
    #data 0x433aaaaa
    #data 0x41d55555
    #data 0xc34d0000
    #data 0xc2555555
    #data 0xc34d0000
    #data 0xc1d55555
    #data 0xc3700000
    #data 0x434d0000
PTR_ce329dc:
    #data LAB_ce31134
PTR_ce329e0:
    #data LAB_ce31154
PTR_ce329e4:
    #data LAB_ce3118e
PTR_ce329e8:
    #data LAB_ce311b6
PTR_ce329ec:
    #data LAB_ce311d6
PTR_ce329f0:
    #data LAB_ce31298
PTR_ce329f4:
    #data LAB_ce3134c
PTR_ce329f8:
    #data LAB_ce31396
PTR_ce329fc:
    #data LAB_ce31410
PTR_ce32a00:
    #data LAB_ce313dc
PTR_ce32a04:
    #data LAB_ce31408
PTR_ce32a08:
    #data LAB_ce31400
PTR_ce32a0c:
    #data LAB_ce31408
PTR_ce32a10:
    #data LAB_ce31408
PTR_ce32a14:
    #data LAB_ce31434
PTR_ce32a18:
    #data LAB_ce3162a
PTR_ce32a1c:
    #data LAB_ce318be
PTR_ce32a20:
    #data LAB_ce319d0
PTR_ce32a24:
    #data LAB_ce31434
PTR_ce32a28:
    #data LAB_ce31ae8
PTR_ce32a2c:
    #data LAB_ce31434
PTR_ce32a30:
    #data LAB_ce31434
PTR_ce32a34:
    #data LAB_ce31b1a
PTR_ce32a38:
    #data LAB_ce31d6a
PTR_ce32a3c:
    #data LAB_ce31e64
PTR_ce32a40:
    #data LAB_ce31446
PTR_ce32a44:
    #data LAB_ce314c8
PTR_ce32a48:
    #data LAB_ce31578
PTR_ce32a4c:
    #data LAB_ce315ac
PTR_ce32a50:
    #data LAB_ce30434
PTR_ce32a54:
    #data LAB_ce31670
PTR_ce32a58:
    #data LAB_ce3172e
PTR_ce32a5c:
    #data LAB_ce317ec
PTR_ce32a60:
    #data LAB_ce31800
PTR_ce32a64:
    #data LAB_ce318b8
PTR_ce32a68:
    #data LAB_ce30434
PTR_ce32a6c:
    #data LAB_ce31904
PTR_ce32a70:
    #data LAB_ce3197e
PTR_ce32a74:
    #data LAB_ce30434
PTR_ce32a78:
    #data LAB_ce31a10
PTR_ce32a7c:
    #data LAB_ce31aa0
PTR_ce32a80:
    #data LAB_ce31b64
PTR_ce32a84:
    #data LAB_ce31bfc
PTR_ce32a88:
    #data LAB_ce31ca8
PTR_ce32a8c:
    #data LAB_ce31d36
PTR_ce32a90:
    #data LAB_ce31d7c
PTR_ce32a94:
    #data LAB_ce31dfc
PTR_ce32a98:
    #data LAB_ce31f5c
PTR_ce32a9c:
    #data LAB_ce31fd6
PTR_ce32aa0:
    #data LAB_ce32044
PTR_ce32aa4:
    #data LAB_ce320c4
PTR_ce32aa8:
    #data LAB_ce3213c
PTR_ce32aac:
    #data LAB_ce32140
PTR_ce32ab0:
    #data LAB_ce320c4
PTR_ce32ab4:
    #data LAB_ce321f4
PTR_ce32ab8:
    #data LAB_ce3226c
PTR_ce32abc:
    #data LAB_ce3232c
PTR_ce32ac0:
    #data LAB_ce323ea
PTR_ce32ac4:
    #data LAB_ce3250e
PTR_ce32ac8:
    #data LAB_ce3260a
PTR_ce32acc:
    #data LAB_ce323fc
PTR_ce32ad0:
    #data LAB_ce3242c
PTR_ce32ad4:
    #data LAB_ce32490
PTR_ce32ad8:
    #data LAB_ce30434
PTR_ce32adc:
    #data LAB_ce32520
PTR_ce32ae0:
    #data LAB_ce325a0
PTR_ce32ae4:
    #data LAB_ce30434
PTR_ce32ae8:
    #data LAB_ce3261c
PTR_ce32aec:
    #data LAB_ce3269c
PTR_ce32af0:
    #data FUN_ce326c6
PTR_ce32af4:
    #data LAB_ce32700
PTR_ce32af8:
    #data LAB_ce32700
PTR_ce32afc:
    #data LAB_ce32700
