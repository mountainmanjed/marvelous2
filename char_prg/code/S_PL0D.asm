;╔══════════════════════════════════════════╗
;║ S_PL0D : Hulk (Bruce Banner) Program     ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8C02FEC4 0x8C02FEC4
#symbol loc_8C03319E 0x8C03319E
#symbol loc_8C034DEE 0x8C034DEE
#symbol loc_8C034E8C 0x8C034E8C
#symbol loc_8C035162 0x8C035162
#symbol loc_8C03544C 0x8C03544C
#symbol loc_8C042008 0x8C042008
#symbol loc_8C04223A 0x8C04223A
#symbol loc_8C0423FC 0x8C0423FC
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
#symbol loc_8C0522E0 0x8C0522E0
#symbol loc_8C05264C 0x8C05264C
#symbol loc_8C052B4C 0x8C052B4C
#symbol loc_8C052C84 0x8C052C84
#symbol loc_8C052CE2 0x8C052CE2
#symbol loc_8C052DAC 0x8C052DAC
#symbol loc_8C053082 0x8C053082
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
#symbol loc_8C055C3A 0x8C055C3A
#symbol loc_8C056DE4 0x8C056DE4
#symbol loc_8C056F2A 0x8C056F2A
#symbol loc_8C06FCC4 0x8C06FCC4
#symbol loc_8C070448 0x8C070448
#symbol loc_8C070BAC 0x8C070BAC
#symbol loc_8C0C576C 0x8C0C576C
#symbol loc_8C103660 0x8C103660
#symbol loc_8C26A518 0x8C26A518
#symbol loc_8C2896B0 0x8C2896B0

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
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    mov.l @(PTR_ce300e8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    mov.l @(PTR_ce300ec,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    mov.l @(PTR_ce300f0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce30238
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce3027e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce302c4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce300bc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce3013e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce30184
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce301ca
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce30368
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b6
    bsr FUN_ce3030a
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b6
    mov.l @(PTR_ce300f4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300f8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300b6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce300bc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce300fc,pc),r5
    mov.w @(DAT_ce300dc,pc),r6
    mov.l @(PTR_ce30100,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30104
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300da:
    #data 0x0428
DAT_ce300dc:
    #data 0x036c
    #align4

PTR_ce300e0:
    #data PTR_ce33a9c
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
PTR_ce300fc:
    #data DAT_ce33a2c
PTR_ce30100:
    #data loc_8c055066

;=============================================

LAB_ce30104:
    mov.w @(DAT_ce30210,pc),r5
    mov.l @(PTR_ce3021c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov.w @(DAT_ce30212,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30124
    mov r4,r0
    nop
    mov.b r0,@(0x6,r14)

LAB_ce30124:
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.w @(DAT_ce30214,pc),r0
    mov.l @(PTR_ce30220,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3013e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30224,pc),r5
    mov.w @(DAT_ce30216,pc),r6
    mov.l @(PTR_ce30228,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3015c
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3015c:
    mov.w @(DAT_ce30216,pc),r5
    mov.l @(PTR_ce3021c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30214,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30220,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30184:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3022c,pc),r5
    mov.w @(DAT_ce30218,pc),r6
    mov.l @(PTR_ce30230,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301a2
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301a2:
    mov.w @(DAT_ce30218,pc),r5
    mov.l @(PTR_ce3021c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30214,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30220,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301ca:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30234,pc),r5
    mov.w @(DAT_ce3021a,pc),r6
    mov.l @(PTR_ce30230,pc),r3
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
    mov.w @(DAT_ce3021a,pc),r5
    mov.l @(PTR_ce3021c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30214,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30220,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30210:
    #data 0x036c
DAT_ce30212:
    #data 0x0411
DAT_ce30214:
    #data 0x01e9
DAT_ce30216:
    #data 0x0374
DAT_ce30218:
    #data 0x037c
DAT_ce3021a:
    #data 0x0384
    #align4

PTR_ce3021c:
    #data loc_8c055c3a
PTR_ce30220:
    #data loc_8c0530d8
PTR_ce30224:
    #data DAT_ce33a3a
PTR_ce30228:
    #data loc_8c055066
PTR_ce3022c:
    #data DAT_ce33a48
PTR_ce30230:
    #data loc_8c054e58
PTR_ce30234:
    #data DAT_ce33a58

;=============================================

FUN_ce30238:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30350,pc),r5
    mov.w @(DAT_ce30344,pc),r6
    mov.l @(PTR_ce30354,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30258
    mov.w @(DAT_ce30346,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30260

LAB_ce30258:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30260:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30348,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30358,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3027e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3035c,pc),r5
    mov.w @(DAT_ce3034a,pc),r6
    mov.l @(PTR_ce30354,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3029e
    mov.w @(DAT_ce30346,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302a6

LAB_ce3029e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302a6:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30348,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30358,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302c4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30360,pc),r5
    mov.w @(DAT_ce3034c,pc),r6
    mov.l @(PTR_ce30354,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302e4
    mov.w @(DAT_ce30346,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302ec

LAB_ce302e4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302ec:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0A,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30348,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30358,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3030a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30364,pc),r3
    jsr @r3
    mov 0x09,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30324
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30324:
    mov.w @(DAT_ce30348,pc),r0
    mov 0x09,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30358,pc),r3
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

DAT_ce30344:
    #data 0x038c
DAT_ce30346:
    #data 0x040c
DAT_ce30348:
    #data 0x01e9
DAT_ce3034a:
    #data 0x0394
DAT_ce3034c:
    #data 0x039c
    #align4

PTR_ce30350:
    #data DAT_ce33a6c
PTR_ce30354:
    #data loc_8c054e58
PTR_ce30358:
    #data loc_8c0530d8
PTR_ce3035c:
    #data DAT_ce33a7c
PTR_ce30360:
    #data DAT_ce33a8c
PTR_ce30364:
    #data loc_8c054da0

;=============================================

FUN_ce30368:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30474,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30380
    mov.w @(DAT_ce30468,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30388

LAB_ce30380:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30388:
    mov.w @(DAT_ce3046a,pc),r0
    mov 0x0B,r3
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

LAB_ce303a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce303d4
    mov r4,r14
    tst r0,r0
    bf LAB_ce303c4
    bsr FUN_ce3040a
    mov r14,r4
    tst r0,r0
    bf LAB_ce303c4
    bsr FUN_ce30440
    mov r14,r4
    tst r0,r0
    bt LAB_ce303cc

LAB_ce303c4:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce303cc:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303d4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3047c,pc),r5
    mov.w @(DAT_ce3046c,pc),r6
    mov.l @(PTR_ce30480,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303f4
    mov.w @(DAT_ce30468,pc),r0
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
    mov.w @(DAT_ce3046e,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3040a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30484,pc),r5
    mov.w @(DAT_ce30470,pc),r6
    mov.l @(PTR_ce30480,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3042a
    mov.w @(DAT_ce30468,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30432

LAB_ce3042a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30432:
    mov.w @(DAT_ce3046e,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30440:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30488,pc),r5
    mov.w @(DAT_ce30472,pc),r6
    mov.l @(PTR_ce30480,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30460
    mov.w @(DAT_ce30468,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3048c

LAB_ce30460:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30468:
    #data 0x040c
DAT_ce3046a:
    #data 0x01e9
DAT_ce3046c:
    #data 0x038c
DAT_ce3046e:
    #data 0x0258
DAT_ce30470:
    #data 0x0394
DAT_ce30472:
    #data 0x039c
    #align4

PTR_ce30474:
    #data loc_8c054d1c
PTR_ce30478:
    #data loc_8c0530d8
PTR_ce3047c:
    #data DAT_ce33a6c
PTR_ce30480:
    #data loc_8c054e58
PTR_ce30484:
    #data DAT_ce33a7c
PTR_ce30488:
    #data DAT_ce33a8c

;=============================================

LAB_ce3048c:
    mov.w @(DAT_ce30588,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3049a:
    mov.l r14,@-r15
    mov 0x02,r3
    mov.w @(DAT_ce3058a,pc),r0
    mov r4,r14
    sts.l PR,@-r15
    mov.w r3,@(r0,r14)
    bsr FUN_ce304b2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce305a8
    mov.l @r15+,r14

;=============================================

FUN_ce304b2:
    add 0xFC,r15
    mov.w @(DAT_ce3058c,pc),r0
    mov 0x01,r6
    mov.b @(r0,r4),r7
    extu.b r7,r7
    tst r7,r7
    bt/s LAB_ce304ca
    mov 0x00,r5
    mov r7,r0
    nop
    cmp/eq 0x05,r0
    bf LAB_ce30584

LAB_ce304ca:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce30584
    mov.b @(0x7,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt/s LAB_ce304e2
    mov r0,r7
    mov r7,r0
    nop
    cmp/eq 0x02,r0
    bf LAB_ce30584

LAB_ce304e2:
    mov.w @(DAT_ce3058e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30544
    mov.w @(DAT_ce30590,pc),r0
    mov.w @(r0,r4),r0
    extu.w r0,r0
    tst 0x60,r0
    bt LAB_ce3053e
    mov.w @(DAT_ce30590,pc),r0
    mov.w @(r0,r4),r0
    extu.w r0,r0
    tst 0x40,r0
    bt LAB_ce30504
    mov 0x20,r0
    bra LAB_ce30508
    mov.b r5,@(r0,r4)

LAB_ce30504:
    mov 0x20,r0
    mov.b r6,@(r0,r4)

LAB_ce30508:
    mov.w @(DAT_ce30592,pc),r0
    mov 0xF6,r1
    mov.w @(DAT_ce30594,pc),r2
    mov.w @(r0,r4),r3
    mov.w @(DAT_ce3058c,pc),r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    extu.w r3,r7
    mov.w r3,@r15
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30530
    mov.l @(PTR_ce3059c,pc),r0
    mov 0x21,r1
    add r4,r1
    mov.b @(r0,r7),r3
    mov.b r3,@r1
    bra LAB_ce3056e
    nop

LAB_ce30530:
    mov.l @(PTR_ce305a0,pc),r0
    mov 0x21,r1
    add r4,r1
    mov.b @(r0,r7),r3
    mov.b r3,@r1
    bra LAB_ce3056e
    nop

LAB_ce3053e:
    mov 0x23,r0
    bra LAB_ce30572
    mov.b r5,@(r0,r4)

LAB_ce30544:
    mov.w @(DAT_ce30596,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce30572
    mov.w @(DAT_ce30598,pc),r0
    mov 0x21,r1
    mov.l @(PTR_ce305a4,pc),r7
    add r4,r1
    mov.b @(r0,r4),r0
    extu.b r0,r0
    shll r0
    mov.b @(r0,r7),r3
    mov 0x20,r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce30598,pc),r0
    mov.b @(r0,r4),r2
    extu.b r2,r2
    shll r2
    add r2,r7
    mov.b @(0x1,r7),r0
    mov.b r0,@r1

LAB_ce3056e:
    mov 0x23,r0
    mov.b r6,@(r0,r4)

LAB_ce30572:
    mov.w @(DAT_ce3059a,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30584
    mov.b @(r0,r4),r3
    tst r6,r3
    bt LAB_ce30584
    mov 0x23,r0
    mov.b r5,@(r0,r4)

LAB_ce30584:
    rts
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30588:
    #data 0x0258
DAT_ce3058a:
    #data 0x03e4
DAT_ce3058c:
    #data 0x01e9
DAT_ce3058e:
    #data 0x0525
DAT_ce30590:
    #data 0x034e
DAT_ce30592:
    #data 0x034a
DAT_ce30594:
    #data 0x3c00
DAT_ce30596:
    #data 0x0411
DAT_ce30598:
    #data 0x01fe
DAT_ce3059a:
    #data 0x019e
    #align4

PTR_ce3059c:
    #data DAT_ce33b0c
PTR_ce305a0:
    #data DAT_ce33b1c
PTR_ce305a4:
    #data DAT_ce33b2c

;=============================================

LAB_ce305a8:
    mov.w @(DAT_ce30680,pc),r0
    mov.w @(DAT_ce3067e,pc),r5
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce305c8
    add r4,r5
    mov.b @(0x2,r5),r0
    tst r0,r0
    bt LAB_ce305c8
    mov.b @(0x2,r5),r0
    mov 0x02,r3
    add 0xFF,r0
    mov.b r0,@(0x2,r5)
    mov.w @(DAT_ce30682,pc),r0
    mov.b r3,@(r0,r4)

LAB_ce305c8:
    rts
    nop

LAB_ce305cc:
    mov.w @(DAT_ce30684,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30694,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce305e0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30698,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30686,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3060e
    mov.w @(DAT_ce30688,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30606
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30850
    mov.l @r15+,r14

LAB_ce30606:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30784
    mov.l @r15+,r14

LAB_ce3060e:
    mov.w @(DAT_ce30688,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30620
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce306ec
    mov.l @r15+,r14

LAB_ce30620:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30628
    mov.l @r15+,r14

LAB_ce30628:
    mov.w @(DAT_ce3068a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30648
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3065e
    cmp/eq 0x02,r0
    bt LAB_ce306a8
    bra LAB_ce306bc
    nop

LAB_ce30648:
    mov.w @(DAT_ce3068c,pc),r0
    mov.l @(PTR_ce3069c,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3068e,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30690,pc),r0
    mov.b r13,@(r0,r14)
    bra LAB_ce30674
    mov 0x14,r5

LAB_ce3065e:
    mov.w @(DAT_ce3068c,pc),r0
    mov 0x01,r4
    mov.l @(PTR_ce306a0,pc),r3
    mov 0x15,r5
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3068e,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30690,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30674:
    mov.l @(PTR_ce306a4,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce306bc
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3067e:
    #data 0x02a4
DAT_ce30680:
    #data 0x01e9
DAT_ce30682:
    #data 0x01f4
DAT_ce30684:
    #data 0x01ff
DAT_ce30686:
    #data 0x01fe
DAT_ce30688:
    #data 0x01f9
DAT_ce3068a:
    #data 0x01e8
DAT_ce3068c:
    #data 0x0158
DAT_ce3068e:
    #data 0x03f4
DAT_ce30690:
    #data 0x01a7
    #align4

PTR_ce30694:
    #data PTR_ce33b40
PTR_ce30698:
    #data loc_8c052b4c
PTR_ce3069c:
    #data DAT_ce339e4
PTR_ce306a0:
    #data DAT_ce339e8
PTR_ce306a4:
    #data loc_8c04223a

;=============================================

LAB_ce306a8:
    mov.w @(DAT_ce307c2,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce307cc,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce307c4,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307c6,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce306bc:
    mov.w @(DAT_ce307c8,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce307d0,pc),r3
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
    mov.w @(DAT_ce307c2,pc),r0
    mov.l @(PTR_ce307d4,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce306ec:
    mov.w @(DAT_ce307ca,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3070c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3072c
    cmp/eq 0x02,r0
    bt LAB_ce3073e
    bra LAB_ce30754
    nop

LAB_ce3070c:
    mov.w @(DAT_ce307c2,pc),r0
    mov 0x06,r3
    mov.l @(PTR_ce307d8,pc),r2
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce307c4,pc),r0
    mov.l @(PTR_ce307dc,pc),r3
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307c6,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce30754
    nop

LAB_ce3072c:
    mov.w @(DAT_ce307c2,pc),r0
    mov 0x01,r4
    mov.l @(PTR_ce307e0,pc),r2
    mov 0x07,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce3074c
    nop

LAB_ce3073e:
    mov.w @(DAT_ce307c2,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce307cc,pc),r2
    mov 0x08,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce3074c:
    mov.w @(DAT_ce307c4,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307c6,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30754:
    mov.w @(DAT_ce307c8,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce307d0,pc),r3
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
    mov.w @(DAT_ce307c2,pc),r0
    mov.l @(PTR_ce307d4,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30784:
    mov.w @(DAT_ce307ca,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307a4
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307e8
    cmp/eq 0x02,r0
    bt LAB_ce3080a
    bra LAB_ce30820
    nop

LAB_ce307a4:
    mov.w @(DAT_ce307c2,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce307dc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce307c4,pc),r0
    mov.l @(PTR_ce307e4,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307c6,pc),r0
    bra LAB_ce30820
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307c2:
    #data 0x0158
DAT_ce307c4:
    #data 0x03f4
DAT_ce307c6:
    #data 0x01a7
DAT_ce307c8:
    #data 0x01ac
DAT_ce307ca:
    #data 0x01e8
    #align4

PTR_ce307cc:
    #data DAT_ce339ec
PTR_ce307d0:
    #data loc_8c2896b0
PTR_ce307d4:
    #data loc_8c034e8c
PTR_ce307d8:
    #data DAT_ce339e4
PTR_ce307dc:
    #data loc_8c04223a
PTR_ce307e0:
    #data DAT_ce339e8
PTR_ce307e4:
    #data DAT_ce339f0

;=============================================

LAB_ce307e8:
    mov.w @(DAT_ce308e6,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce308f0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce308e8,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce308f4,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308ea,pc),r0
    bra LAB_ce30820
    mov.b r3,@(r0,r14)

LAB_ce3080a:
    mov.w @(DAT_ce308e6,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce308f8,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce308e8,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308ea,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30820:
    mov.w @(DAT_ce308ec,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce308fc,pc),r3
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
    mov.w @(DAT_ce308e6,pc),r0
    mov.l @(PTR_ce30900,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30850:
    mov.w @(DAT_ce308ee,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30870
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3088e
    cmp/eq 0x02,r0
    bt LAB_ce308a0
    bra LAB_ce308b6
    nop

LAB_ce30870:
    mov.w @(DAT_ce308e6,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce308f0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce308e8,pc),r0
    mov.l @(PTR_ce30904,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308ea,pc),r0
    bra LAB_ce308b6
    mov.b r13,@(r0,r14)

LAB_ce3088e:
    mov.w @(DAT_ce308e6,pc),r0
    mov 0x01,r4
    mov.l @(PTR_ce308f4,pc),r2
    mov 0x0A,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce308ae
    nop

LAB_ce308a0:
    mov.w @(DAT_ce308e6,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce308f8,pc),r2
    mov 0x0B,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce308ae:
    mov.w @(DAT_ce308e8,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308ea,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce308b6:
    mov.w @(DAT_ce308ec,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce308fc,pc),r3
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
    mov.w @(DAT_ce308e6,pc),r0
    mov.l @(PTR_ce30900,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308e6:
    #data 0x0158
DAT_ce308e8:
    #data 0x03f4
DAT_ce308ea:
    #data 0x01a7
DAT_ce308ec:
    #data 0x01ac
DAT_ce308ee:
    #data 0x01e8
    #align4

PTR_ce308f0:
    #data loc_8c04223a
PTR_ce308f4:
    #data DAT_ce339f4
PTR_ce308f8:
    #data DAT_ce339f8
PTR_ce308fc:
    #data loc_8c2896b0
PTR_ce30900:
    #data loc_8c034e8c
PTR_ce30904:
    #data DAT_ce339f0

;=============================================

LAB_ce30908:
    mov.w @(DAT_ce309de,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30918
    mov.w @(DAT_ce309e0,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30928

LAB_ce30918:
    mov.w @(DAT_ce309de,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce3092c
    mov.w @(DAT_ce309e0,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce3092c

LAB_ce30928:
    bra LAB_ce30930
    nop

LAB_ce3092c:
    rts
    nop

LAB_ce30930:
    mov.w @(DAT_ce309de,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3093e
    bra LAB_ce30a50
    nop

LAB_ce3093e:
    bra LAB_ce30942
    nop

LAB_ce30942:
    mov.w @(DAT_ce309e2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30962
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30990
    cmp/eq 0x02,r0
    bt LAB_ce309c2
    bra LAB_ce30a0e
    nop

LAB_ce30962:
    mov.w @(DAT_ce309e4,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce309ec,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce309e6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30984
    mov.w @(DAT_ce309e8,pc),r0
    mov.l @(PTR_ce309f0,pc),r3
    bra LAB_ce3098a
    mov.l r3,@(r0,r14)

LAB_ce30984:
    mov.w @(DAT_ce309e8,pc),r0
    mov.l @(PTR_ce309f4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce3098a:
    mov.w @(DAT_ce309ea,pc),r0
    bra LAB_ce30a0e
    mov.b r13,@(r0,r14)

LAB_ce30990:
    mov.w @(DAT_ce309e4,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce309ec,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce309e6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce309b4
    mov.w @(DAT_ce309e8,pc),r0
    mov.l @(PTR_ce309f8,pc),r3
    bra LAB_ce309ba
    mov.l r3,@(r0,r14)

LAB_ce309b4:
    mov.w @(DAT_ce309e8,pc),r0
    mov.l @(PTR_ce309fc,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce309ba:
    mov.w @(DAT_ce309ea,pc),r0
    mov 0x01,r3
    bra LAB_ce30a0e
    mov.b r3,@(r0,r14)

LAB_ce309c2:
    mov.w @(DAT_ce309e4,pc),r0
    mov 0x02,r4
    mov 0x0E,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a04
    mov.w @(DAT_ce309e8,pc),r0
    mov.l @(PTR_ce30a00,pc),r2
    bra LAB_ce30a0a
    mov.l r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309de:
    #data 0x01fe
DAT_ce309e0:
    #data 0x01d6
DAT_ce309e2:
    #data 0x01e8
DAT_ce309e4:
    #data 0x0158
DAT_ce309e6:
    #data 0x01fc
DAT_ce309e8:
    #data 0x03f4
DAT_ce309ea:
    #data 0x01a7
    #align4

PTR_ce309ec:
    #data loc_8c04223a
PTR_ce309f0:
    #data DAT_ce339fc
PTR_ce309f4:
    #data DAT_ce33a14
PTR_ce309f8:
    #data DAT_ce33a00
PTR_ce309fc:
    #data DAT_ce33a18
PTR_ce30a00:
    #data DAT_ce33a04

;=============================================

LAB_ce30a04:
    mov.w @(DAT_ce30aec,pc),r0
    mov.l @(PTR_ce30afc,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a0a:
    mov.w @(DAT_ce30aee,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30a0e:
    mov.w @(DAT_ce30af0,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30b00,pc),r3
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
    mov.w @(DAT_ce30af2,pc),r0
    mov.l @(PTR_ce30b04,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30af4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30a48
    mov.w @(DAT_ce30af4,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30a48:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30a50:
    mov.w @(DAT_ce30af6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a70
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a9e
    cmp/eq 0x02,r0
    bt LAB_ce30ad0
    bra LAB_ce30b2a
    nop

LAB_ce30a70:
    mov.w @(DAT_ce30af2,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30b08,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30af8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a92
    mov.w @(DAT_ce30aec,pc),r0
    mov.l @(PTR_ce30b0c,pc),r3
    bra LAB_ce30a98
    mov.l r3,@(r0,r14)

LAB_ce30a92:
    mov.w @(DAT_ce30aec,pc),r0
    mov.l @(PTR_ce30b10,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a98:
    mov.w @(DAT_ce30aee,pc),r0
    bra LAB_ce30b2a
    mov.b r13,@(r0,r14)

LAB_ce30a9e:
    mov.w @(DAT_ce30af2,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce30b08,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30af8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30ac2
    mov.w @(DAT_ce30aec,pc),r0
    mov.l @(PTR_ce30b14,pc),r3
    bra LAB_ce30ac8
    mov.l r3,@(r0,r14)

LAB_ce30ac2:
    mov.w @(DAT_ce30aec,pc),r0
    mov.l @(PTR_ce30b18,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30ac8:
    mov.w @(DAT_ce30aee,pc),r0
    mov 0x01,r3
    bra LAB_ce30b2a
    mov.b r3,@(r0,r14)

LAB_ce30ad0:
    mov.w @(DAT_ce30af2,pc),r0
    mov 0x02,r4
    mov 0x11,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30b20
    mov.w @(DAT_ce30aec,pc),r0
    mov.l @(PTR_ce30b1c,pc),r2
    bra LAB_ce30b26
    mov.l r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30aec:
    #data 0x03f4
DAT_ce30aee:
    #data 0x01a7
DAT_ce30af0:
    #data 0x01ac
DAT_ce30af2:
    #data 0x0158
DAT_ce30af4:
    #data 0x01d6
DAT_ce30af6:
    #data 0x01e8
DAT_ce30af8:
    #data 0x01fc
    #align4

PTR_ce30afc:
    #data DAT_ce33a1c
PTR_ce30b00:
    #data loc_8c2896b0
PTR_ce30b04:
    #data loc_8c034e8c
PTR_ce30b08:
    #data loc_8c04223a
PTR_ce30b0c:
    #data DAT_ce33a08
PTR_ce30b10:
    #data DAT_ce33a20
PTR_ce30b14:
    #data DAT_ce33a0c
PTR_ce30b18:
    #data DAT_ce33a24
PTR_ce30b1c:
    #data DAT_ce33a10

;=============================================

LAB_ce30b20:
    mov.w @(DAT_ce30c2c,pc),r0
    mov.l @(PTR_ce30c40,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b26:
    mov.w @(DAT_ce30c2e,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30b2a:
    mov.w @(DAT_ce30c30,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30c44,pc),r3
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
    mov.w @(DAT_ce30c32,pc),r0
    mov.l @(PTR_ce30c48,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30c34,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30b64
    mov.w @(DAT_ce30c34,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30b64:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30b6c:
    mov.w @(DAT_ce30c36,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c4c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30b80:
    sts.l PR,@-r15
    mov.l @(PTR_ce30c50,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30b8e:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30c54,pc),r3
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
    mov.w @(DAT_ce30c38,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30bf6
    mov.w @(DAT_ce30c3a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30bee
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d20
    mov.l @r15+,r14

LAB_ce30bee:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30cec
    mov.l @r15+,r14

LAB_ce30bf6:
    mov.w @(DAT_ce30c3a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c08
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c74
    mov.l @r15+,r14

LAB_ce30c08:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c10
    mov.l @r15+,r14

LAB_ce30c10:
    mov.w @(DAT_ce30c3c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30c58
    cmp/eq 0x01,r0
    bt LAB_ce30c58
    cmp/eq 0x02,r0
    bt LAB_ce30c58
    bra LAB_ce30c6e
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c2c:
    #data 0x03f4
DAT_ce30c2e:
    #data 0x01a7
DAT_ce30c30:
    #data 0x01ac
DAT_ce30c32:
    #data 0x0158
DAT_ce30c34:
    #data 0x01d6
DAT_ce30c36:
    #data 0x01ff
DAT_ce30c38:
    #data 0x01fe
DAT_ce30c3a:
    #data 0x01f9
DAT_ce30c3c:
    #data 0x01e8
    #align4

PTR_ce30c40:
    #data DAT_ce33a28
PTR_ce30c44:
    #data loc_8c2896b0
PTR_ce30c48:
    #data loc_8c034e8c
PTR_ce30c4c:
    #data PTR_ce33b50
PTR_ce30c50:
    #data loc_8c0511e2
PTR_ce30c54:
    #data loc_8c052c84

;=============================================

LAB_ce30c58:
    mov.l @(PTR_ce30d40,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c6e
    lds.l @r15+,PR
    mov.l @(PTR_ce30d44,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c6e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30c74:
    mov.w @(DAT_ce30d3c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30c90
    cmp/eq 0x01,r0
    bt LAB_ce30c90
    cmp/eq 0x02,r0
    bt LAB_ce30ca0
    bra LAB_ce30ce6
    nop

LAB_ce30c90:
    mov.l @(PTR_ce30d40,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30cac
    bra LAB_ce30ce6
    nop

LAB_ce30ca0:
    mov.l @(PTR_ce30d40,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cb6

LAB_ce30cac:
    lds.l @r15+,PR
    mov.l @(PTR_ce30d44,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30cb6:
    mov.w @(DAT_ce30d3e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30ce6
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
    mov.l @(PTR_ce30d48,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce30ce6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30cec:
    mov.w @(DAT_ce30d3c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30d04
    cmp/eq 0x01,r0
    bt LAB_ce30d04
    cmp/eq 0x02,r0
    bf LAB_ce30d1a

LAB_ce30d04:
    mov.l @(PTR_ce30d40,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d1a
    lds.l @r15+,PR
    mov.l @(PTR_ce30d44,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d1a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d20:
    mov.w @(DAT_ce30d3c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30d4c
    cmp/eq 0x01,r0
    bt LAB_ce30d4c
    cmp/eq 0x02,r0
    bt LAB_ce30d4c
    bra LAB_ce30d62
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d3c:
    #data 0x01e8
DAT_ce30d3e:
    #data 0x0141
    #align4

PTR_ce30d40:
    #data loc_8c034dee
PTR_ce30d44:
    #data loc_8c051648
PTR_ce30d48:
    #data loc_8c2896b0

;=============================================

LAB_ce30d4c:
    mov.l @(PTR_ce30e38,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d62
    lds.l @r15+,PR
    mov.l @(PTR_ce30e3c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d62:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d68:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e40,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30e44,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30d7e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e48,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30e4c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30e32,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30da0
    bsr FUN_ce30ea4
    mov r14,r4
    bra LAB_ce30da4
    nop

LAB_ce30da0:
    bsr FUN_ce30dc0
    mov r14,r4

LAB_ce30da4:
    mov.l @(PTR_ce30e50,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30dba
    lds.l @r15+,PR
    mov.l @(PTR_ce30e54,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30dba:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30dc0:
    mov.w @(DAT_ce30e34,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30e58,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30dd4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30e38,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30dee
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30e5c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30dee:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30df6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30e38,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e10
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30e5c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30e10:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30e18:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e38,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e60
    lds.l @r15+,PR
    mov.l @(PTR_ce30e5c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e32:
    #data 0x01fe
DAT_ce30e34:
    #data 0x01e8
    #align4

PTR_ce30e38:
    #data loc_8c034dee
PTR_ce30e3c:
    #data loc_8c051648
PTR_ce30e40:
    #data loc_8c050084
PTR_ce30e44:
    #data loc_8c04ff88
PTR_ce30e48:
    #data loc_8c04fea8
PTR_ce30e4c:
    #data loc_8c050048
PTR_ce30e50:
    #data loc_8c052ce2
PTR_ce30e54:
    #data loc_8c052dac
PTR_ce30e58:
    #data PTR_ce33b60
PTR_ce30e5c:
    #data loc_8c05176e

;=============================================

LAB_ce30e60:
    mov.w @(DAT_ce30f92,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e9e
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce30f9c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov r3,r5
    mov r3,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30fa0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov.l @(PTR_ce30fa4,pc),r3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30fa4,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x00,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce30e9e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30ea4:
    mov.w @(DAT_ce30f94,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30fa8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30eb8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30fac,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ed2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30fb0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30ed2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30eda:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30fac,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ef4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30fb0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30ef4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30efc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30fac,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f16
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30fb0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30f16:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30f1e:
    mov r4,r3
    mov.l @(PTR_ce30fb4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30f30:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fb8,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30fbc,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30f96,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce30fc8
    mov 0x00,r13
    mov 0x01,r4
    mov r4,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce30f98,pc),r0
    mov 0x03,r6
    mov.l @(PTR_ce30fc0,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30f9a,pc),r0
    mov 0x1B,r2
    mov.l @(PTR_ce30fc4,pc),r3
    mov r14,r4
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
    bra LAB_ce31008
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f92:
    #data 0x0141
DAT_ce30f94:
    #data 0x01e8
DAT_ce30f96:
    #data 0x01fe
DAT_ce30f98:
    #data 0x01f9
DAT_ce30f9a:
    #data 0x01a1
    #align4

DAT_ce30f9c:
    #data 0x40cdb6db
DAT_ce30fa0:
    #data 0xbf4db6db
PTR_ce30fa4:
    #data loc_8c0c576c
PTR_ce30fa8:
    #data PTR_ce33b6c
PTR_ce30fac:
    #data loc_8c034dee
PTR_ce30fb0:
    #data loc_8c05176e
PTR_ce30fb4:
    #data PTR_ce33b78
PTR_ce30fb8:
    #data loc_8c052b4c
PTR_ce30fbc:
    #data loc_8c056de4
PTR_ce30fc0:
    #data loc_8c034e8c
PTR_ce30fc4:
    #data loc_8c2896b0

;=============================================

LAB_ce30fc8:
    mov 0x02,r0
    mov.l @(PTR_ce31120,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce31118,pc),r0
    mov 0x04,r6
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3111a,pc),r0
    mov 0x1D,r2
    mov.l @(PTR_ce31124,pc),r3
    mov r14,r4
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
    bra LAB_ce310a8
    mov.l @r15+,r14

LAB_ce31008:
    mov.w @(DAT_ce3111c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3101e
    mov.l @(PTR_ce31128,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3101e:
    mov 0x5C,r1
    mov.l @(PTR_ce3112c,pc),r3
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
    mov.l @(PTR_ce31130,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31072
    lds.l @r15+,PR
    mov.l @(PTR_ce31134,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31072:
    mov.w @(DAT_ce3111e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce310a2
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x1C,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31124,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce310a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310a8:
    mov.w @(DAT_ce3111c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce310be
    mov.l @(PTR_ce31128,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce310be:
    mov 0x5C,r1
    mov.l @(PTR_ce3112c,pc),r3
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
    mov.l @(PTR_ce31130,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31112
    lds.l @r15+,PR
    mov.l @(PTR_ce31134,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31112:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31118:
    #data 0x01f9
DAT_ce3111a:
    #data 0x01a1
DAT_ce3111c:
    #data 0x01ff
DAT_ce3111e:
    #data 0x0141
    #align4

PTR_ce31120:
    #data loc_8c034e8c
PTR_ce31124:
    #data loc_8c2896b0
PTR_ce31128:
    #data loc_8c0511e2
PTR_ce3112c:
    #data loc_8c052c84
PTR_ce31130:
    #data loc_8c034dee
PTR_ce31134:
    #data loc_8c051648

;=============================================

LAB_ce31138:
    mov r4,r3
    mov.l @(PTR_ce31288,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3114a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3128c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31280,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3119e
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce31290,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31294,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31282,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31180
    mova @(DAT_ce31298,pc),r0
    bra LAB_ce31184
    fmov.s @r0,fr3

LAB_ce31180:
    mova @(DAT_ce3129c,pc),r0
    fmov.s @r0,fr3

LAB_ce31184:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31282,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31196
    mova @(DAT_ce312a0,pc),r0
    bra LAB_ce3119a
    fmov.s @r0,fr3

LAB_ce31196:
    mova @(DAT_ce312a4,pc),r0
    fmov.s @r0,fr3

LAB_ce3119a:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce3119e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311a4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3128c,pc),r3
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
    mov.w @(DAT_ce31284,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31212
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    mov 0x02,r6
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce312a8,pc),r3
    mov r6,r5
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31212:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31218:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3128c,pc),r3
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
    fcmp/gt fr3,fr2
    bf LAB_ce3127a
    mov.b @(0x6,r14),r0
    fmov fr3,fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce3127a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31280:
    #data 0x0141
DAT_ce31282:
    #data 0x01d2
DAT_ce31284:
    #data 0x041c
    #align4

PTR_ce31288:
    #data PTR_ce33b84
PTR_ce3128c:
    #data loc_8c034dee
DAT_ce31290:
    #data 0x40092492
DAT_ce31294:
    #data 0xbe892492
DAT_ce31298:
    #data 0x41555555
DAT_ce3129c:
    #data 0xc1555555
DAT_ce312a0:
    #data 0xbef00000
DAT_ce312a4:
    #data 0x3ef00000
PTR_ce312a8:
    #data loc_8c034e8c

;=============================================

LAB_ce312ac:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31404,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312c6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31408,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce312c6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce312ce:
    mov r4,r3
    mov.l @(PTR_ce3140c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce312e0:
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
    mov.w @(DAT_ce313fe,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31306
    mova @(DAT_ce31410,pc),r0
    bra LAB_ce3130a
    fmov.s @r0,fr3

LAB_ce31306:
    mova @(DAT_ce31414,pc),r0
    fmov.s @r0,fr3

LAB_ce3130a:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)

LAB_ce3130e:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31404,pc),r3
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
    bt LAB_ce3137a
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    mov 0x03,r2
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31400,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce31418,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3137a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31380:
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
    mov.w @(DAT_ce31402,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce313cc
    fldi0 fr4
    mov 0x5C,r0
    fmov fr4,@(r0,r14)

LAB_ce313cc:
    mov.l @(PTR_ce31404,pc),r3
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313e6
    lds.l @r15+,PR
    mov.l @(PTR_ce31408,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce313e6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313ec:
    mov r4,r3
    mov.l @(PTR_ce3141c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce313fe:
    #data 0x01d2
DAT_ce31400:
    #data 0x0159
DAT_ce31402:
    #data 0x0141
    #align4

PTR_ce31404:
    #data loc_8c034dee
PTR_ce31408:
    #data loc_8c051648
PTR_ce3140c:
    #data PTR_ce33b94
DAT_ce31410:
    #data 0xc1480000
DAT_ce31414:
    #data 0x41480000
PTR_ce31418:
    #data loc_8c034e8c
PTR_ce3141c:
    #data PTR_ce33ba0

;=============================================

LAB_ce31420:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov.l @(DAT_ce3156c,pc),r1
    mov 0x00,r2
    add 0x01,r0
    fldi0 fr4
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31562,pc),r0
    lds r1,FPUL
    mov.b r3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x12,r3
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31570,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31574,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce31564,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.l @(PTR_ce31578,pc),r3
    mov.b r2,@(r0,r14)
    mov r14,r4
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31472:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3157c,pc),r3
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce31566,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce314f0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    mov 0x12,r3
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31580,pc),r4
    mov 0x01,r2
    fmov fr4,@(r0,r14)
    mov 0x03,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31564,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce31578,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31584,pc),r2
    mov 0x02,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31584,pc),r3
    mov 0x02,r5
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce314f0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce314f6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3157c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3150e
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce3150e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31516:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31588,pc),r3
    jsr @r3
    mov r4,r14
    tst 0x01,r0
    bf LAB_ce3152c
    mov.w @(DAT_ce31568,pc),r0
    mov 0x00,r3
    bra LAB_ce31532
    mov.b r3,@(r0,r14)

LAB_ce3152c:
    mov.w @(DAT_ce31568,pc),r0
    mov 0x01,r1
    mov.b r1,@(r0,r14)

LAB_ce31532:
    mov.w @(DAT_ce31568,pc),r0
    mov 0x13,r5
    mov.l @(PTR_ce31578,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3154a:
    mov.l @(PTR_ce3157c,pc),r3
    jmp @r3
    nop

LAB_ce31550:
    mov r4,r3
    mov.l @(PTR_ce3158c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31562:
    #data 0x012c
DAT_ce31564:
    #data 0x0159
DAT_ce31566:
    #data 0x041c
DAT_ce31568:
    #data 0x0158
    #align4

DAT_ce3156c:
    #data 0x43f00000
DAT_ce31570:
    #data 0xc1092492
DAT_ce31574:
    #data 0xbf092492
PTR_ce31578:
    #data loc_8c034e8c
PTR_ce3157c:
    #data loc_8c034dee
PTR_ce31580:
    #data loc_8c26a518
PTR_ce31584:
    #data loc_8c0c576c
PTR_ce31588:
    #data loc_8c03319e
PTR_ce3158c:
    #data PTR_ce33bac

;=============================================

LAB_ce31590:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce315a4
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce31678,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce315a4:
    mov.l @(PTR_ce3167c,pc),r3
    jmp @r3
    nop

LAB_ce315aa:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce315be
    mov.b @(0x6,r4),r0
    mov 0x00,r6
    mov.l @(PTR_ce31678,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce315be:
    mov.l @(PTR_ce3167c,pc),r3
    jmp @r3
    nop

LAB_ce315c4:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce315d8
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce31678,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce315d8:
    mov.l @(PTR_ce3167c,pc),r3
    jmp @r3
    nop

LAB_ce315de:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31680,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce315f6
    lds.l @r15+,PR
    mov.l @(PTR_ce31684,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce315f6:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31688,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3160a:
    mov.b @(0x6,r4),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31672,pc),r0
    mov.b r3,@(r0,r4)
    mova @(DAT_ce3168c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31674,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3162e
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce3162e:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31690,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x3C,r3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31694,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r5
    fmov fr3,@(r0,r4)
    mov r5,r6
    mov.w @(DAT_ce31676,pc),r0
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce31698,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31678,pc),r2
    jmp @r2
    mov 0x14,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31672:
    #data 0x01f9
DAT_ce31674:
    #data 0x01d2
DAT_ce31676:
    #data 0x01a1
    #align4

PTR_ce31678:
    #data loc_8c034e8c
PTR_ce3167c:
    #data loc_8c034dee
PTR_ce31680:
    #data loc_8c046c8a
PTR_ce31684:
    #data loc_8c051648
PTR_ce31688:
    #data PTR_ce33bb4
DAT_ce3168c:
    #data 0xc1f00000
DAT_ce31690:
    #data 0xbe892492
DAT_ce31694:
    #data 0xbf4db6db
PTR_ce31698:
    #data loc_8c2896b0

;=============================================

LAB_ce3169c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31740,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31744,pc),r3
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
    bt LAB_ce31704
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce31748,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3174c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31704:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3170a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31740,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31724
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31750,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31724:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3172c:
    mov r4,r3
    mov.l @(PTR_ce31754,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

#align4

PTR_ce31740:
    #data loc_8c034dee
PTR_ce31744:
    #data loc_8c052ce2
PTR_ce31748:
    #data loc_8c034e8c
PTR_ce3174c:
    #data loc_8c0511b4
PTR_ce31750:
    #data loc_8c051854
PTR_ce31754:
    #data PTR_ce33bc8

;=============================================

LAB_ce31758:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31894,pc),r3
    mov.l r5,@r15
    mov 0x00,r13
    mov.b @(0x7,r14),r0
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x23,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31898,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3189c,pc),r3
    mov r13,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce318a0,pc),r2
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
    mov.w @(DAT_ce3188a,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3188c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3188e,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    shll r3
    add 0x30,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce318a4,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    mov 0x15,r5
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3188e,pc),r0
    mov.l @(PTR_ce318a8,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce317ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce318ac,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31890,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31884
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3188e,pc),r0
    mov.b @(r0,r14),r4
    mov.l @(PTR_ce318b0,pc),r0
    extu.b r4,r4
    shll2 r4
    mov.l @(r0,r4),r4
    mov.w @(DAT_ce31892,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3182a
    lds r4,FPUL
    mova @(DAT_ce318b4,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce318b8,pc),r0
    fmov.s @r0,fr1
    float FPUL,fr3
    fmul fr2,fr3
    bra LAB_ce3183c
    fdiv fr1,fr3

LAB_ce3182a:
    lds r4,FPUL
    mova @(DAT_ce318b4,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce318b8,pc),r0
    fmov.s @r0,fr1
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3
    fneg fr3

LAB_ce3183c:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31892,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3184e
    mova @(DAT_ce318bc,pc),r0
    bra LAB_ce31852
    fmov.s @r0,fr3

LAB_ce3184e:
    mova @(DAT_ce318c0,pc),r0
    fmov.s @r0,fr3

LAB_ce31852:
    mov 0x68,r0
    mov.l @(PTR_ce318c4,pc),r1
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce3188e,pc),r0
    mov.l @(PTR_ce318c8,pc),r3
    mov.b @(r0,r14),r0
    extu.b r0,r0
    mov.b @(r0,r1),r0
    mov.w r0,@(0x1c,r14)
    mov 0x08,r0
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce318c8,pc),r2
    mov 0x20,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce318cc,pc),r3
    mov r14,r4
    mov 0x00,r6
    mov 0x05,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31884:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3188a:
    #data 0x01f9
DAT_ce3188c:
    #data 0x041c
DAT_ce3188e:
    #data 0x01a3
DAT_ce31890:
    #data 0x0141
DAT_ce31892:
    #data 0x01d2
    #align4

PTR_ce31894:
    #data loc_8c056de4
PTR_ce31898:
    #data loc_8c05218a
PTR_ce3189c:
    #data loc_8c035162
PTR_ce318a0:
    #data loc_8c05115a
PTR_ce318a4:
    #data loc_8c2896b0
PTR_ce318a8:
    #data loc_8c034e8c
PTR_ce318ac:
    #data loc_8c034dee
PTR_ce318b0:
    #data DAT_ce33bd4
DAT_ce318b4:
    #data 0x3fd55555
DAT_ce318b8:
    #data 0x47800000
DAT_ce318bc:
    #data 0xbdd55555
DAT_ce318c0:
    #data 0x3dd55555
PTR_ce318c4:
    #data DAT_ce33bdc
PTR_ce318c8:
    #data loc_8c042008
PTR_ce318cc:
    #data loc_8c0c576c

;=============================================

LAB_ce318d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a00,pc),r3
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
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf LAB_ce31914
    mov 0x23,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3191a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31914:
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)

LAB_ce3191a:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31974
    mov.b @(0x7,r14),r0
    mov 0x15,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce319f8,pc),r0
    mov.b r3,@(r0,r14)
    add 0x4A,r0
    mov.b @(r0,r14),r2
    add 0xB5,r0
    mov.l @(PTR_ce31a04,pc),r3
    add 0x02,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce319fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31956
    mova @(DAT_ce31a08,pc),r0
    bra LAB_ce3195a
    fmov.s @r0,fr3

LAB_ce31956:
    mova @(DAT_ce31a0c,pc),r0
    fmov.s @r0,fr3

LAB_ce3195a:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3196c
    mova @(DAT_ce31a10,pc),r0
    bra LAB_ce31970
    fmov.s @r0,fr3

LAB_ce3196c:
    mova @(DAT_ce31a14,pc),r0
    fmov.s @r0,fr3

LAB_ce31970:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce31974:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3197a:
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
    mov.w @(DAT_ce319fc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce319c6
    fldi0 fr4
    mov 0x5C,r0
    fmov fr4,@(r0,r14)

LAB_ce319c6:
    mov.l @(PTR_ce31a00,pc),r3
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319e0
    lds.l @r15+,PR
    mov.l @(PTR_ce31a18,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce319e0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce319e6:
    mov r4,r3
    mov.l @(PTR_ce31a1c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319f8:
    #data 0x0159
DAT_ce319fa:
    #data 0x01d2
DAT_ce319fc:
    #data 0x0141
    #align4

PTR_ce31a00:
    #data loc_8c034dee
PTR_ce31a04:
    #data loc_8c034e8c
DAT_ce31a08:
    #data 0x40d55555
DAT_ce31a0c:
    #data 0xc0d55555
DAT_ce31a10:
    #data 0xbe555555
DAT_ce31a14:
    #data 0x3e555555
PTR_ce31a18:
    #data loc_8c051648
PTR_ce31a1c:
    #data PTR_ce33be0

;=============================================

LAB_ce31a20:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31b50,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x7,r14),r0
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
    mov.l @(PTR_ce31b54,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x20,r0
    mov.b @(r0,r14),r4
    mov 0x21,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31b58,pc),r0
    extu.b r4,r4
    extu.b r3,r3
    shll r3
    add r3,r4
    mov.l @(PTR_ce31b5c,pc),r3
    mov.b @(r0,r4),r4
    mov.w @(DAT_ce31b42,pc),r0
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
    mov 0x15,r2
    mov.w @(DAT_ce31b44,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r1
    mov 0x21,r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31b60,pc),r0
    extu.b r1,r1
    extu.b r2,r2
    shll r2
    add r2,r1
    mov.b @(r0,r1),r2
    mov.w @(DAT_ce31b46,pc),r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce31b64,pc),r2
    mov.b @(r0,r14),r5
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce31abc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b68,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31b48,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31ad2
    bra LAB_ce31bd0
    nop

LAB_ce31ad2:
    mov.b @(0x7,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31b4a,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mov 0x21,r0
    mov.b @(r0,r14),r4
    mov.l @(PTR_ce31b6c,pc),r3
    extu.b r4,r4
    mov.w @(DAT_ce31b4c,pc),r0
    shll2 r4
    shll2 r4
    mov.b @(r0,r14),r2
    add r3,r4
    mov.l @(0x8,r4),r7
    tst r2,r2
    mov.l @r4,r5
    mov.l @(0x4,r4),r6
    bt/s LAB_ce31b12
    mov.l @(0xc,r4),r4
    lds r5,FPUL
    mova @(DAT_ce31b70,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce31b74,pc),r0
    fmov.s @r0,fr1
    float FPUL,fr3
    fmul fr2,fr3
    bra LAB_ce31b24
    fdiv fr1,fr3

LAB_ce31b12:
    lds r5,FPUL
    mova @(DAT_ce31b70,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce31b74,pc),r0
    fmov.s @r0,fr1
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3
    fneg fr3

LAB_ce31b24:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31b4c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31b78
    lds r6,FPUL
    mova @(DAT_ce31b70,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce31b74,pc),r0
    fmov.s @r0,fr1
    float FPUL,fr3
    fmul fr2,fr3
    bra LAB_ce31b8a
    fdiv fr1,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b42:
    #data 0x01a1
DAT_ce31b44:
    #data 0x0159
DAT_ce31b46:
    #data 0x0158
DAT_ce31b48:
    #data 0x0141
DAT_ce31b4a:
    #data 0x01f9
DAT_ce31b4c:
    #data 0x01d2
    #align4

PTR_ce31b50:
    #data loc_8c056de4
PTR_ce31b54:
    #data loc_8c053082
PTR_ce31b58:
    #data DAT_ce33bf0
PTR_ce31b5c:
    #data loc_8c2896b0
PTR_ce31b60:
    #data DAT_ce33bf6
PTR_ce31b64:
    #data loc_8c034e8c
PTR_ce31b68:
    #data loc_8c034dee
PTR_ce31b6c:
    #data DAT_ce33bfc
DAT_ce31b70:
    #data 0x3fd55555
DAT_ce31b74:
    #data 0x47800000

;=============================================

LAB_ce31b78:
    lds r6,FPUL
    mova @(DAT_ce31ca8,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce31cac,pc),r0
    fmov.s @r0,fr1
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3
    fneg fr3

LAB_ce31b8a:
    lds r7,FPUL
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31cb0,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce31cac,pc),r0
    float FPUL,fr3
    fmov.s @r0,fr4
    lds r4,FPUL
    mov 0x60,r0
    mov.l @(PTR_ce31cb4,pc),r3
    mov 0x14,r5
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    float FPUL,fr3
    mov 0x6C,r0
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31cb4,pc),r2
    mov 0x20,r5
    jsr @r2
    mov r14,r4
    mov 0x21,r0
    mov.l @(PTR_ce31cb8,pc),r3
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov r14,r4
    mov 0x05,r5
    add 0x01,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31bd0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31bd6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31cbc,pc),r3
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
    bf LAB_ce31c46
    mov.b @(0x7,r14),r0
    mov 0x15,r3
    mov 0x0A,r2
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31ca4,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce31cc0,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c46:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31c4c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31cbc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31c9e
    mov.b @(0x7,r14),r0
    mov 0x02,r3
    fldi0 fr4
    mov 0x15,r2
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31cc4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ca6,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x0C,r3
    mov.w @(DAT_ce31ca4,pc),r0
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce31cc0,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c9e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ca4:
    #data 0x0159
DAT_ce31ca6:
    #data 0x01fc
    #align4

DAT_ce31ca8:
    #data 0x3fd55555
DAT_ce31cac:
    #data 0x47800000
DAT_ce31cb0:
    #data 0x40092492
PTR_ce31cb4:
    #data loc_8c042008
PTR_ce31cb8:
    #data loc_8c0c576c
PTR_ce31cbc:
    #data loc_8c034dee
PTR_ce31cc0:
    #data loc_8c034e8c
DAT_ce31cc4:
    #data 0xbf4db6db

;=============================================

LAB_ce31cc8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31d8c,pc),r3
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce31d86,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31d3a
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31d86,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31d88,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31d90,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31d8a,pc),r0
    mov 0x15,r2
    mov 0x0D,r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce31d94,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d3a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31d40:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31d8c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d5a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31d98,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31d5a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31d62:
    mov r4,r3
    mov.l @(PTR_ce31d9c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31d74:
    mov r4,r3
    mov.l @(PTR_ce31da0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d86:
    #data 0x041c
DAT_ce31d88:
    #data 0x01f9
DAT_ce31d8a:
    #data 0x0159
    #align4

PTR_ce31d8c:
    #data loc_8c034dee
PTR_ce31d90:
    #data loc_8c0511b4
PTR_ce31d94:
    #data loc_8c034e8c
PTR_ce31d98:
    #data loc_8c051648
PTR_ce31d9c:
    #data PTR_ce33c2c
PTR_ce31da0:
    #data PTR_ce33c44

;=============================================

LAB_ce31da4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31eb0,pc),r3
    mov.l r5,@r15
    mov 0x00,r13
    mov.b @(0x7,r14),r0
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x23,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31eb4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31eb8,pc),r3
    mov r13,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31ebc,pc),r2
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
    mov.w @(DAT_ce31ea4,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31ea6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ea8,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    shll r3
    add 0x43,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31ec0,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    mov 0x15,r5
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31ea8,pc),r0
    mov.l @(PTR_ce31ec4,pc),r2
    mov.b @(r0,r14),r6
    add 0x0E,r6
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31e3a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ec8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31eaa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31f40
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31ecc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31ea8,pc),r0
    mov.l @(PTR_ce31ed0,pc),r5
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    shll2 r0
    mov.l @(r0,r5),r4
    mov.w @(DAT_ce31eac,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31e82
    lds r4,FPUL
    mova @(DAT_ce31ed4,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce31ed8,pc),r0
    fmov.s @r0,fr1
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3
    bra LAB_ce31e92
    fneg fr3

LAB_ce31e82:
    lds r4,FPUL
    mova @(DAT_ce31ed4,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce31ed8,pc),r0
    fmov.s @r0,fr1
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3

LAB_ce31e92:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31eac,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31ee0
    mova @(DAT_ce31edc,pc),r0
    bra LAB_ce31ee4
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ea4:
    #data 0x01f9
DAT_ce31ea6:
    #data 0x041c
DAT_ce31ea8:
    #data 0x01a3
DAT_ce31eaa:
    #data 0x0141
DAT_ce31eac:
    #data 0x01d2
    #align4

PTR_ce31eb0:
    #data loc_8c056de4
PTR_ce31eb4:
    #data loc_8c05218a
PTR_ce31eb8:
    #data loc_8c035162
PTR_ce31ebc:
    #data loc_8c05115a
PTR_ce31ec0:
    #data loc_8c2896b0
PTR_ce31ec4:
    #data loc_8c034e8c
PTR_ce31ec8:
    #data loc_8c034dee
PTR_ce31ecc:
    #data loc_8c053082
PTR_ce31ed0:
    #data DAT_ce33c4c
DAT_ce31ed4:
    #data 0x3fd55555
DAT_ce31ed8:
    #data 0x47800000
DAT_ce31edc:
    #data 0xbe555555

;=============================================

LAB_ce31ee0:
    mova @(DAT_ce31ff4,pc),r0
    fmov.s @r0,fr3

LAB_ce31ee4:
    mov 0x68,r0
    mov.l @(PTR_ce32004,pc),r1
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ff0,pc),r0
    mov.b @(r0,r14),r4
    mova @(DAT_ce31ff8,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce31ffc,pc),r0
    extu.b r4,r4
    fmov.s @r0,fr1
    shll r4
    shll2 r4
    add r5,r4
    mov.l @(0x4,r4),r4
    mov 0x60,r0
    mov 0x14,r5
    lds r4,FPUL
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32000,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ff0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    mov.b @(r0,r1),r0
    mov.w r0,@(0x1c,r14)
    mov 0x04,r0
    mov.w r0,@(0x1e,r14)
    mov.l @(PTR_ce32008,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32008,pc),r2
    mov 0x20,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3200c,pc),r3
    mov r14,r4
    mov 0x01,r6
    mov 0x05,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f40:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f46:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32010,pc),r3
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
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf LAB_ce31fa6
    mov 0x23,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31fac
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31fa6:
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)

LAB_ce31fac:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31fea
    mov.b @(0x7,r14),r0
    mov 0x15,r3
    mov 0x0A,r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31ff2,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce32014,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32018,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce31fea:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ff0:
    #data 0x01a3
DAT_ce31ff2:
    #data 0x0159
    #align4

DAT_ce31ff4:
    #data 0x3e555555
DAT_ce31ff8:
    #data 0x40092492
DAT_ce31ffc:
    #data 0x47800000
DAT_ce32000:
    #data 0xbef00000
PTR_ce32004:
    #data DAT_ce33c5c
PTR_ce32008:
    #data loc_8c042008
PTR_ce3200c:
    #data loc_8c0c576c
PTR_ce32010:
    #data loc_8c034dee
PTR_ce32014:
    #data loc_8c034e8c
DAT_ce32018:
    #data 0x40800000

;=============================================

LAB_ce3201c:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32164,pc),r3
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
    bf LAB_ce320a8
    mov.b @(0x7,r14),r0
    mov 0x02,r3
    fldi0 fr4
    mov 0x15,r2
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32168,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3215a,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x0C,r3
    mov.w @(DAT_ce3215c,pc),r0
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce3216c,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce320a8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce320ae:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32164,pc),r3
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce3215e,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce32120
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3215e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32160,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32170,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3215c,pc),r0
    mov 0x15,r2
    mov 0x0D,r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce3216c,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32120:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32126:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32164,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32140
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32174,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32140:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32148:
    mov r4,r3
    mov.l @(PTR_ce32178,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3215a:
    #data 0x01fc
DAT_ce3215c:
    #data 0x0159
DAT_ce3215e:
    #data 0x041c
DAT_ce32160:
    #data 0x01f9
    #align4

PTR_ce32164:
    #data loc_8c034dee
DAT_ce32168:
    #data 0xbf4db6db
PTR_ce3216c:
    #data loc_8c034e8c
PTR_ce32170:
    #data loc_8c0511b4
PTR_ce32174:
    #data loc_8c051648
PTR_ce32178:
    #data PTR_ce33c60

;=============================================

LAB_ce3217c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce322b4,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x7,r14),r0
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
    mov 0x20,r0
    mov.b @(r0,r14),r4
    mov 0x21,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce322b8,pc),r0
    extu.b r4,r4
    extu.b r3,r3
    shll r3
    add r3,r4
    mov.l @(PTR_ce322bc,pc),r3
    mov.b @(r0,r4),r4
    mov.w @(DAT_ce322aa,pc),r0
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov 0x00,r4
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.l @r3,r2
    mov.b @(0x2,r14),r0
    add 0x7C,r2
    extu.b r0,r0
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x15,r2
    mov.w @(DAT_ce322ac,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r1
    mov 0x21,r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce322c0,pc),r0
    extu.b r1,r1
    extu.b r2,r2
    shll r2
    add r2,r1
    mov.b @(r0,r1),r2
    mov.w @(DAT_ce322ae,pc),r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce322c4,pc),r2
    mov.b @(r0,r14),r5
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce32212:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce322c8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce322b0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32228
    bra LAB_ce32336
    nop

LAB_ce32228:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce322cc,pc),r1
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    mov.b @(r0,r1),r0
    extu.b r0,r0
    mov.w r0,@(0x1c,r14)
    mov 0x21,r0
    mov.b @(r0,r14),r4
    mov 0x20,r0
    mov.b @(r0,r14),r3
    extu.b r4,r4
    mov.w @(DAT_ce322b2,pc),r0
    extu.b r3,r3
    shll2 r4
    mov.b @(r0,r14),r2
    shll2 r3
    shll r4
    add r3,r4
    mov.l @(PTR_ce322d0,pc),r3
    shll2 r4
    add r3,r4
    mov.l @(0x8,r4),r7
    tst r2,r2
    mov.l @r4,r5
    mov.l @(0x4,r4),r6
    bt/s LAB_ce3227a
    mov.l @(0xc,r4),r4
    lds r5,FPUL
    mova @(DAT_ce322d4,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce322d8,pc),r0
    fmov.s @r0,fr1
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3
    bra LAB_ce3228a
    fneg fr3

LAB_ce3227a:
    lds r5,FPUL
    mova @(DAT_ce322d4,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce322d8,pc),r0
    fmov.s @r0,fr1
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3

LAB_ce3228a:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce322b2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce322dc
    lds r6,FPUL
    mova @(DAT_ce322d4,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce322d8,pc),r0
    fmov.s @r0,fr1
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3
    bra LAB_ce322ec
    fneg fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce322aa:
    #data 0x01a1
DAT_ce322ac:
    #data 0x0159
DAT_ce322ae:
    #data 0x0158
DAT_ce322b0:
    #data 0x0141
DAT_ce322b2:
    #data 0x01d2
    #align4

PTR_ce322b4:
    #data loc_8c056de4
PTR_ce322b8:
    #data DAT_ce33c78
PTR_ce322bc:
    #data loc_8c2896b0
PTR_ce322c0:
    #data DAT_ce33c7e
PTR_ce322c4:
    #data loc_8c034e8c
PTR_ce322c8:
    #data loc_8c034dee
PTR_ce322cc:
    #data DAT_ce33ce4
PTR_ce322d0:
    #data DAT_ce33c84
DAT_ce322d4:
    #data 0x3fd55555
DAT_ce322d8:
    #data 0x47800000

;=============================================

LAB_ce322dc:
    lds r6,FPUL
    mova @(DAT_ce32410,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce32414,pc),r0
    fmov.s @r0,fr1
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3

LAB_ce322ec:
    lds r7,FPUL
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32418,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce32414,pc),r0
    float FPUL,fr3
    fmov.s @r0,fr4
    lds r4,FPUL
    mov 0x60,r0
    mov.l @(PTR_ce3241c,pc),r3
    mov 0x14,r5
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    float FPUL,fr3
    mov 0x6C,r0
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3241c,pc),r2
    mov 0x20,r5
    jsr @r2
    mov r14,r4
    mov 0x21,r0
    mov.l @(PTR_ce32424,pc),r3
    mov.b @(r0,r14),r6
    mov 0x05,r5
    mov.l @(PTR_ce32420,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    extu.b r6,r6
    mov.b @(r0,r6),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32336:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3233c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32428,pc),r3
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
    bf LAB_ce323ac
    mov.b @(0x7,r14),r0
    mov 0x15,r3
    mov 0x0A,r2
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3240a,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce3242c,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce323ac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce323b2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32428,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce32404
    mov.b @(0x7,r14),r0
    mov 0x02,r3
    fldi0 fr4
    mov 0x15,r2
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32430,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3240c,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x0C,r3
    mov.w @(DAT_ce3240a,pc),r0
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce3242c,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32404:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3240a:
    #data 0x0159
DAT_ce3240c:
    #data 0x01fc
    #align4

DAT_ce32410:
    #data 0x3fd55555
DAT_ce32414:
    #data 0x47800000
DAT_ce32418:
    #data 0x40092492
PTR_ce3241c:
    #data loc_8c042008
PTR_ce32420:
    #data DAT_ce33ce6
PTR_ce32424:
    #data loc_8c0c576c
PTR_ce32428:
    #data loc_8c034dee
PTR_ce3242c:
    #data loc_8c034e8c
DAT_ce32430:
    #data 0xbf4db6db

;=============================================

LAB_ce32434:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce324f8,pc),r3
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce324f2,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce324a6
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce324f2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce324f4,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce324fc,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce324f6,pc),r0
    mov 0x15,r2
    mov 0x0D,r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce32500,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce324a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce324ac:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce324f8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324c6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32504,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce324c6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce324ce:
    mov r4,r3
    mov.l @(PTR_ce32508,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce324e0:
    mov r4,r3
    mov.l @(PTR_ce3250c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce324f2:
    #data 0x041c
DAT_ce324f4:
    #data 0x01f9
DAT_ce324f6:
    #data 0x0159
    #align4

PTR_ce324f8:
    #data loc_8c034dee
PTR_ce324fc:
    #data loc_8c0511b4
PTR_ce32500:
    #data loc_8c034e8c
PTR_ce32504:
    #data loc_8c051648
PTR_ce32508:
    #data PTR_ce33cec
PTR_ce3250c:
    #data PTR_ce33d04

;=============================================

LAB_ce32510:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32600,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32604,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32608,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3260c,pc),r2
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
    mov.w @(DAT_ce325f4,pc),r0
    mov 0x51,r3
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce325f6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce325f8,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32610,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x15,r2
    mov.w @(DAT_ce325fa,pc),r0
    mov.b r2,@(r0,r14)
    add 0x4A,r0
    mov.b @(r0,r14),r1
    add 0xB5,r0
    mov.l @(PTR_ce32614,pc),r2
    add 0x16,r1
    mov.b r1,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce325a6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32618,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce325c0
    lds.l @r15+,PR
    mov.l @(PTR_ce3261c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce325c0:
    mov.w @(DAT_ce325fc,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce325dc
    mov.w @(DAT_ce325fc,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce32620,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    mov r2,r6
    lds.l @r15+,PR
    mov r2,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce325dc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce325e2:
    mov r4,r3
    mov.l @(PTR_ce32624,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325f4:
    #data 0x01f9
DAT_ce325f6:
    #data 0x041c
DAT_ce325f8:
    #data 0x01a1
DAT_ce325fa:
    #data 0x0159
DAT_ce325fc:
    #data 0x0141
    #align4

PTR_ce32600:
    #data loc_8c056de4
PTR_ce32604:
    #data loc_8c05218a
PTR_ce32608:
    #data loc_8c035162
PTR_ce3260c:
    #data loc_8c05115a
PTR_ce32610:
    #data loc_8c2896b0
PTR_ce32614:
    #data loc_8c034e8c
PTR_ce32618:
    #data loc_8c034dee
PTR_ce3261c:
    #data loc_8c051648
PTR_ce32620:
    #data loc_8c070448
PTR_ce32624:
    #data PTR_ce33d0c

;=============================================

LAB_ce32628:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32768,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3276c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32770,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32774,pc),r2
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
    mov.w @(DAT_ce32758,pc),r0
    mov 0x42,r3
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3275a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3275c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32778,pc),r3
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
    mov.w @(DAT_ce3275e,pc),r0
    mov.l @(PTR_ce3277c,pc),r2
    mov.b @(r0,r14),r6
    add 0x18,r6
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce326b0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32780,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce326d8
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3277c,pc),r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3275e,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    add 0x1A,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce326d8:
    mov.l @(PTR_ce32784,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce3271e
    mov.w @(DAT_ce32760,pc),r0
    mov 0x02,r2
    mov 0x40,r3
    fldi0 fr3
    mov.b r2,@(r0,r14)
    mov r14,r4
    mov.b @(r0,r14),r2
    or r3,r2
    mov.l @(PTR_ce32788,pc),r3
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce32762,pc),r2
    or r2,r1
    mov.b r1,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32764,pc),r0
    mov.l @(r0,r14),r5
    mov 0x6C,r0
    fmov fr3,@(r0,r5)
    mov 0x68,r0
    fmov fr3,@(r0,r5)
    mov 0x60,r0
    fmov fr3,@(r0,r5)
    mov 0x5C,r0
    fmov fr3,@(r0,r5)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3271e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32724:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32780,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3273e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3278c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3273e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32746:
    mov r4,r3
    mov.l @(PTR_ce32790,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32758:
    #data 0x01f9
DAT_ce3275a:
    #data 0x041c
DAT_ce3275c:
    #data 0x01a1
DAT_ce3275e:
    #data 0x01a3
DAT_ce32760:
    #data 0x01f7
DAT_ce32762:
    #data 0x0080
DAT_ce32764:
    #data 0x01b0
    #align4

PTR_ce32768:
    #data loc_8c056de4
PTR_ce3276c:
    #data loc_8c05218a
PTR_ce32770:
    #data loc_8c035162
PTR_ce32774:
    #data loc_8c05115a
PTR_ce32778:
    #data loc_8c2896b0
PTR_ce3277c:
    #data loc_8c034e8c
PTR_ce32780:
    #data loc_8c034dee
PTR_ce32784:
    #data loc_8c05264c
PTR_ce32788:
    #data loc_8c0522e0
PTR_ce3278c:
    #data loc_8c051648
PTR_ce32790:
    #data PTR_ce33d14

;=============================================

LAB_ce32794:
    mov.w @(DAT_ce328ac,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce327b4
    mov r5,r13
    mov.w @(DAT_ce328b0,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce328ae,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce327b4:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce328c0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce328c4,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce328c8,pc),r3
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
    mov.w @(DAT_ce328b2,pc),r0
    mov.b r4,@(r0,r14)
    mov.b r4,@r13
    mov r4,r0
    nop
    mov.b r0,@(0x1,r13)
    mov 0x3D,r3
    mov.b r0,@(0x2,r13)
    mov.w @(DAT_ce328b4,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce328cc,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x16,r2
    mov.w @(DAT_ce328b6,pc),r0
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce328d0,pc),r2
    mov.b @(r0,r14),r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32834:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce328b8,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce328ba,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce328ac,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32858
    bra LAB_ce3285a
    mov 0x02,r3

LAB_ce32858:
    mov 0x00,r3

LAB_ce3285a:
    mov.w @(DAT_ce328bc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce328d4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce328be,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce328a2
    mov 0x00,r13
    mov.l @(PTR_ce328d8,pc),r3
    mov.b r13,@(r0,r14)
    mov 0x07,r6
    mov.b @(0x6,r14),r0
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce328dc,pc),r0
    fldi0 fr4
    mov.l @(PTR_ce328e0,pc),r3
    mov r15,r5
    fmov.s fr4,@r15
    mov 0x01,r6
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    mov.w @(DAT_ce328b0,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce328a2:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328ac:
    #data 0x0255
DAT_ce328ae:
    #data 0x00ff
DAT_ce328b0:
    #data 0x03f0
DAT_ce328b2:
    #data 0x01f9
DAT_ce328b4:
    #data 0x01a1
DAT_ce328b6:
    #data 0x0159
DAT_ce328b8:
    #data 0x03f8
DAT_ce328ba:
    #data 0x0328
DAT_ce328bc:
    #data 0x03f1
DAT_ce328be:
    #data 0x0141
    #align4

PTR_ce328c0:
    #data loc_8c05218a
PTR_ce328c4:
    #data loc_8c035162
PTR_ce328c8:
    #data loc_8c05115a
PTR_ce328cc:
    #data loc_8c2896b0
PTR_ce328d0:
    #data loc_8c034e8c
PTR_ce328d4:
    #data loc_8c034dee
PTR_ce328d8:
    #data loc_8c02fec4
DAT_ce328dc:
    #data 0x43340000
PTR_ce328e0:
    #data loc_8c050834

;=============================================

LAB_ce328e4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32a28,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32a2a,pc),r0
    mov.l @(PTR_ce32a34,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32a2c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3295c
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x02,r3
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32a2e,pc),r0
    mov.b r3,@(r0,r14)
    add 0xD9,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3292e
    mova @(DAT_ce32a38,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32a3c,pc),r0
    bra LAB_ce3293a
    fmov.s @r0,fr3

LAB_ce3292e:
    mova @(DAT_ce32a40,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32a44,pc),r0
    fmov.s @r0,fr3

LAB_ce3293a:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32a48,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32a4c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x46,r0
    mov.l @r15,r3
    mov.b r0,@(0x2,r3)
    mov 0x18,r0
    mov.w r0,@(0x1c,r14)
    mov 0x03,r0
    mov.w r0,@(0x1e,r14)

LAB_ce3295c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32964:
    mov.w @(DAT_ce32a28,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32a2a,pc),r0
    mov.l @(PTR_ce32a34,pc),r3
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
    mov.w @(DAT_ce32a30,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce329c4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)

LAB_ce329c4:
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce329fa
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce329fa
    mov.w @(DAT_ce32a32,pc),r0
    mov 0x3E,r2
    mov.l @(PTR_ce32a50,pc),r3
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

LAB_ce329fa:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32a22
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
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32a22:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a28:
    #data 0x03f8
DAT_ce32a2a:
    #data 0x0328
DAT_ce32a2c:
    #data 0x0141
DAT_ce32a2e:
    #data 0x01f9
DAT_ce32a30:
    #data 0x019e
DAT_ce32a32:
    #data 0x01a1
    #align4

PTR_ce32a34:
    #data loc_8c034dee
DAT_ce32a38:
    #data 0xc0d55555
DAT_ce32a3c:
    #data 0x3e200000
DAT_ce32a40:
    #data 0x40d55555
DAT_ce32a44:
    #data 0xbe200000
DAT_ce32a48:
    #data 0x42092492
DAT_ce32a4c:
    #data 0x3f892492
PTR_ce32a50:
    #data loc_8c2896b0

;=============================================

LAB_ce32a54:
    mov.w @(DAT_ce32b4e,pc),r0
    mov 0x02,r5
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r3
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce32b50,pc),r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce32b52,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt/s LAB_ce32a7e
    mov 0x00,r13
    bra LAB_ce32bca
    nop

LAB_ce32a7e:
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce32b56,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32b54,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bf LAB_ce32aee
    mov.w @(r0,r14),r1
    mov.w @(DAT_ce32b58,pc),r3
    extu.w r1,r1
    tst r3,r1
    bf LAB_ce32ae6
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce32b5a,pc),r1
    extu.w r2,r2
    tst r1,r2
    bf LAB_ce32ac2
    mov 0x34,r0
    fmov.s @(r0,r14),fr4
    fmov.s @(r0,r4),fr5
    mova @(DAT_ce32b64,pc),r0
    fmov.s @r0,fr3
    fmov fr4,fr2
    fadd fr3,fr2
    fcmp/gt fr5,fr2
    bf LAB_ce32ac8
    mova @(DAT_ce32b68,pc),r0
    fmov fr4,fr1
    fmov.s @r0,fr2
    fadd fr2,fr1
    fcmp/gt fr1,fr5
    bf LAB_ce32ac8

LAB_ce32ac2:
    mov 0x20,r0
    bra LAB_ce32af2
    mov.b r5,@(r0,r14)

LAB_ce32ac8:
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fmov.s @(r0,r14),fr3
    fcmp/gt fr2,fr3
    bf LAB_ce32ade
    mov.w @(DAT_ce32b5c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32ae6
    bra LAB_ce32aee
    nop

LAB_ce32ade:
    mov.w @(DAT_ce32b5c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32aee

LAB_ce32ae6:
    mov 0x20,r0
    mov 0x01,r3
    bra LAB_ce32af2
    mov.b r3,@(r0,r14)

LAB_ce32aee:
    mov 0x20,r0
    mov.b r13,@(r0,r14)

LAB_ce32af2:
    mov 0x20,r0
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce32b5e,pc),r0
    add 0x3F,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32b6c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x16,r2
    mov.w @(DAT_ce32b60,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce32b62,pc),r0
    add 0x01,r1
    mov.l @(PTR_ce32b70,pc),r2
    mov.b r1,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jsr @r2
    mov r14,r4
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce32b48
    cmp/eq 0x01,r0
    bt LAB_ce32b78
    bra LAB_ce32b80
    nop

LAB_ce32b48:
    mova @(DAT_ce32b74,pc),r0
    bra LAB_ce32b82
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b4e:
    #data 0x020c
DAT_ce32b50:
    #data 0x03f8
DAT_ce32b52:
    #data 0x0328
DAT_ce32b54:
    #data 0x034a
DAT_ce32b56:
    #data 0x0800
DAT_ce32b58:
    #data 0x0400
DAT_ce32b5a:
    #data 0x1000
DAT_ce32b5c:
    #data 0x01d2
DAT_ce32b5e:
    #data 0x01a1
DAT_ce32b60:
    #data 0x0159
DAT_ce32b62:
    #data 0x0158
    #align4

DAT_ce32b64:
    #data 0x42555555
DAT_ce32b68:
    #data 0xc2555555
PTR_ce32b6c:
    #data loc_8c2896b0
PTR_ce32b70:
    #data loc_8c034e8c
DAT_ce32b74:
    #data 0xc0d55555

;=============================================

LAB_ce32b78:
    mova @(DAT_ce32cb0,pc),r0
    fmov.s @r0,fr3
    bra LAB_ce32b82
    nop

LAB_ce32b80:
    fldi0 fr3

LAB_ce32b82:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32ca6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32b9a
    mov 0x5C,r0
    fldi1 fr3
    fmov.s @(r0,r14),fr2
    fneg fr3
    fmul fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce32b9a:
    mova @(DAT_ce32cb4,pc),r0
    mov.l @(PTR_ce32cbc,pc),r3
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x01,r7
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32cb8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x02,r5
    mov r7,r6
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32cc0,pc),r2
    mov 0x00,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32cc0,pc),r3
    mov 0x02,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4

LAB_ce32bca:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32bd2:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32ca8,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov 0x01,r13
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32caa,pc),r0
    mov.l @(PTR_ce32cc4,pc),r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32cac,pc),r0
    mov.b r13,@(r0,r14)
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
    mova @(DAT_ce32cc8,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32cae,pc),r0
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fcmp/gt fr2,fr1
    bt LAB_ce32c9a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.l @r15,r3
    mov r13,r0
    nop
    mov.l @(PTR_ce32ccc,pc),r4
    mov.b r0,@(0x1,r3)
    mov 0x03,r0
    mov.b r0,@(0x5,r4)
    mov r13,r0
    nop
    mov.l @(PTR_ce32cd0,pc),r3
    mov 0x1F,r5
    mov.b r0,@(0x6,r4)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32cc0,pc),r12
    mov 0x14,r13

LAB_ce32c68:
    mov 0x01,r5
    mov 0x00,r6
    jsr @r12
    mov r14,r4
    dt r13
    bf LAB_ce32c68
    mov.l @(DAT_ce32cd4,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32cd8,pc),r0
    fmov.s @r0,fr4
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fdiv fr4,fr2
    fmov fr2,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr1
    fdiv fr4,fr1
    fmov fr1,@(r0,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32c9a:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ca6:
    #data 0x01d2
DAT_ce32ca8:
    #data 0x03f8
DAT_ce32caa:
    #data 0x0328
DAT_ce32cac:
    #data 0x01f5
DAT_ce32cae:
    #data 0x041c
    #align4

DAT_ce32cb0:
    #data 0x40d55555
DAT_ce32cb4:
    #data 0xc1892492
DAT_ce32cb8:
    #data 0xbf4db6db
PTR_ce32cbc:
    #data loc_8c03544c
PTR_ce32cc0:
    #data loc_8c06fcc4
PTR_ce32cc4:
    #data loc_8c034dee
DAT_ce32cc8:
    #data 0x43092492
PTR_ce32ccc:
    #data loc_8c26a518
PTR_ce32cd0:
    #data loc_8c042008
DAT_ce32cd4:
    #data 0x40800000
DAT_ce32cd8:
    #data 0x41000000

;=============================================

LAB_ce32cdc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32dce,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32dd0,pc),r0
    mov.l @(PTR_ce32ddc,pc),r3
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
    bf LAB_ce32dc6
    mov 0x01,r2
    mov.b @(0x6,r14),r0
    mov 0x00,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x6,r14)
    mov.l @r15,r3
    mov.b r2,@r3
    mov.l @(PTR_ce32de0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32dd2,pc),r0
    mov 0x16,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32dd4,pc),r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    mov.w @(DAT_ce32dd2,pc),r0
    mov.l @(PTR_ce32de4,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce32d7c
    cmp/eq 0x01,r0
    bt LAB_ce32d82
    bra LAB_ce32d8a
    nop

LAB_ce32d7c:
    mova @(DAT_ce32de8,pc),r0
    bra LAB_ce32d8c
    fmov.s @r0,fr3

LAB_ce32d82:
    mova @(DAT_ce32dec,pc),r0
    fmov.s @r0,fr3
    bra LAB_ce32d8c
    nop

LAB_ce32d8a:
    fldi0 fr3

LAB_ce32d8c:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32dd6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32da4
    mov 0x5C,r0
    fldi1 fr3
    fmov.s @(r0,r14),fr2
    fneg fr3
    fmul fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce32da4:
    mova @(DAT_ce32df0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32df4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32dd8,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32dda,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce32dc6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32dce:
    #data 0x03f8
DAT_ce32dd0:
    #data 0x0328
DAT_ce32dd2:
    #data 0x0159
DAT_ce32dd4:
    #data 0x0158
DAT_ce32dd6:
    #data 0x01d2
DAT_ce32dd8:
    #data 0x03f9
DAT_ce32dda:
    #data 0x0327
    #align4

PTR_ce32ddc:
    #data loc_8c034dee
PTR_ce32de0:
    #data loc_8c02fec4
PTR_ce32de4:
    #data loc_8c034e8c
DAT_ce32de8:
    #data 0x40555555
DAT_ce32dec:
    #data 0xc0555555
DAT_ce32df0:
    #data 0x41892492
DAT_ce32df4:
    #data 0xbf892492

;=============================================

LAB_ce32df8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32f10,pc),r3
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
    mov.w @(DAT_ce32f06,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce32e8c
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov 0x00,r3
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32f08,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32f14,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32f0a,pc),r0
    mov 0x16,r2
    mov 0x05,r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce32f18,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e8c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32e92:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32f10,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32eac
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32f1c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32eac:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32eb4:
    mova @(DAT_ce32f24,pc),r0
    mov.l @(PTR_ce32f20,pc),r5
    fmov.s @r0,fr3
    mov.w @(DAT_ce32f0c,pc),r0
    fmov.s @(r0,r5),fr4
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fadd fr3,fr4
    fcmp/gt fr2,fr4
    bf LAB_ce32eca
    fmov fr4,@(r0,r4)

LAB_ce32eca:
    mova @(DAT_ce32f28,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32f0e,pc),r0
    fmov.s @(r0,r5),fr4
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fadd fr3,fr4
    fcmp/gt fr4,fr2
    bf LAB_ce32ede
    fmov fr4,@(r0,r4)

LAB_ce32ede:
    rts
    nop

LAB_ce32ee2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32f2c,pc),r1
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce32eb4
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f06:
    #data 0x041c
DAT_ce32f08:
    #data 0x01f9
DAT_ce32f0a:
    #data 0x0159
DAT_ce32f0c:
    #data 0x0088
DAT_ce32f0e:
    #data 0x008c
    #align4

PTR_ce32f10:
    #data loc_8c034dee
PTR_ce32f14:
    #data loc_8c0511b4
PTR_ce32f18:
    #data loc_8c034e8c
PTR_ce32f1c:
    #data loc_8c051648
PTR_ce32f20:
    #data loc_8c26a518
DAT_ce32f24:
    #data 0x42555555
DAT_ce32f28:
    #data 0xc2555555
PTR_ce32f2c:
    #data PTR_ce33d20

;=============================================

LAB_ce32f30:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33074,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32f50
    mov.w @(DAT_ce33078,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33076,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32f50:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3308c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33090,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33094,pc),r3
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
    mov.w @(DAT_ce3307a,pc),r0
    mov 0x4F,r3
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3307c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3307e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33098,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x16,r5
    mov.l @(PTR_ce3309c,pc),r2
    mov 0x0A,r6
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce32fc2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33080,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33082,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33074,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32fe4
    bra LAB_ce32fe6
    mov 0x02,r3

LAB_ce32fe4:
    mov 0x00,r3

LAB_ce32fe6:
    mov.w @(DAT_ce33084,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce330a0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33086,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce33032
    mov.w @(DAT_ce33086,pc),r0
    mov 0x00,r4
    mov r15,r5
    mov 0x01,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce330ac,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce330a4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce330a8,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce33078,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r2
    mov r14,r4

LAB_ce33032:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3303a:
    mov.w @(DAT_ce33080,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33082,pc),r0
    mov.l @(PTR_ce330a0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce330b4
    mov.w @(DAT_ce33088,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce330b0,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3308a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33074:
    #data 0x0255
DAT_ce33076:
    #data 0x00ff
DAT_ce33078:
    #data 0x03f0
DAT_ce3307a:
    #data 0x01f9
DAT_ce3307c:
    #data 0x041c
DAT_ce3307e:
    #data 0x01a1
DAT_ce33080:
    #data 0x03f8
DAT_ce33082:
    #data 0x0328
DAT_ce33084:
    #data 0x03f1
DAT_ce33086:
    #data 0x0141
DAT_ce33088:
    #data 0x03f9
DAT_ce3308a:
    #data 0x0327
    #align4

PTR_ce3308c:
    #data loc_8c05218a
PTR_ce33090:
    #data loc_8c035162
PTR_ce33094:
    #data loc_8c05115a
PTR_ce33098:
    #data loc_8c2896b0
PTR_ce3309c:
    #data loc_8c034e8c
PTR_ce330a0:
    #data loc_8c034dee
DAT_ce330a4:
    #data 0xc1555555
DAT_ce330a8:
    #data 0x43960000
PTR_ce330ac:
    #data loc_8c050834
PTR_ce330b0:
    #data loc_8c051648

;=============================================

LAB_ce330b4:
    mov.w @(DAT_ce331fe,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce330dc
    mov.w @(DAT_ce331fe,pc),r0
    mov 0x02,r5
    mov.l @(PTR_ce33214,pc),r1
    mov 0x00,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce33218,pc),r4
    mov 0x03,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce330dc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce330e2:
    mov r4,r3
    mov.l @(PTR_ce3321c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce330f4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33200,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33114
    mov.w @(DAT_ce33204,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33202,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33114:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33220,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33224,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33228,pc),r3
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
    mov.w @(DAT_ce33206,pc),r0
    mov 0x54,r3
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33208,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3320a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3322c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x16,r5
    mov.l @(PTR_ce33230,pc),r2
    mov 0x0D,r6
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce33186:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3320c,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3320e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33200,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce331a8
    bra LAB_ce331aa
    mov 0x02,r3

LAB_ce331a8:
    mov 0x00,r3

LAB_ce331aa:
    mov.w @(DAT_ce33210,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33234,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce331fe,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce331f6
    mov.w @(DAT_ce331fe,pc),r0
    mov 0x00,r4
    mov r15,r5
    mov 0x01,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33240,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce33238,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3323c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce33204,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r2
    mov r14,r4

LAB_ce331f6:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331fe:
    #data 0x0141
DAT_ce33200:
    #data 0x0255
DAT_ce33202:
    #data 0x00ff
DAT_ce33204:
    #data 0x03f0
DAT_ce33206:
    #data 0x01f9
DAT_ce33208:
    #data 0x041c
DAT_ce3320a:
    #data 0x01a1
DAT_ce3320c:
    #data 0x03f8
DAT_ce3320e:
    #data 0x0328
DAT_ce33210:
    #data 0x03f1
    #align4

PTR_ce33214:
    #data loc_8c070448
PTR_ce33218:
    #data loc_8c26a518
PTR_ce3321c:
    #data PTR_ce33d44
PTR_ce33220:
    #data loc_8c05218a
PTR_ce33224:
    #data loc_8c035162
PTR_ce33228:
    #data loc_8c05115a
PTR_ce3322c:
    #data loc_8c2896b0
PTR_ce33230:
    #data loc_8c034e8c
PTR_ce33234:
    #data loc_8c034dee
DAT_ce33238:
    #data 0x42be0000
DAT_ce3323c:
    #data 0x4382b6db
PTR_ce33240:
    #data loc_8c050834

;=============================================

LAB_ce33244:
    mov.w @(DAT_ce33344,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33346,pc),r0
    mov.l @(PTR_ce33354,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3327e
    mov.w @(DAT_ce33348,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce33358,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3334a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3327e:
    mov.w @(DAT_ce3334c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce332a6
    mov.w @(DAT_ce3334c,pc),r0
    mov 0x00,r6
    mov.l @(PTR_ce3335c,pc),r1
    mov r6,r5
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce33360,pc),r4
    mov 0x03,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce332a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce332ac:
    mov r4,r3
    mov.l @(PTR_ce33364,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce332be:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce33368,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3336c,pc),r2
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
    mov.w @(DAT_ce3334e,pc),r0
    mov 0x14,r5
    mov 0x02,r6
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33350,pc),r0
    mov.l @(PTR_ce33370,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce33310:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33354,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3332a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33358,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3332a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33332:
    mov r4,r3
    mov.l @(PTR_ce33374,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33344:
    #data 0x03f8
DAT_ce33346:
    #data 0x0328
DAT_ce33348:
    #data 0x03f9
DAT_ce3334a:
    #data 0x0327
DAT_ce3334c:
    #data 0x0141
DAT_ce3334e:
    #data 0x01f9
DAT_ce33350:
    #data 0x041c
    #align4

PTR_ce33354:
    #data loc_8c034dee
PTR_ce33358:
    #data loc_8c051648
PTR_ce3335c:
    #data loc_8c070bac
PTR_ce33360:
    #data loc_8c26a518
PTR_ce33364:
    #data PTR_ce33d50
PTR_ce33368:
    #data loc_8c05218a
PTR_ce3336c:
    #data loc_8c035162
PTR_ce33370:
    #data loc_8c034e8c
PTR_ce33374:
    #data PTR_ce33d5c

;=============================================

LAB_ce33378:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    fldi0 fr4
    mov 0x00,r13
    mov.l @(PTR_ce334d4,pc),r3
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
    mov.w @(DAT_ce334be,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce334c0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce334d8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce334dc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce334c2,pc),r0
    mov 0x58,r2
    mov.l @(PTR_ce334e0,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x1D,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce334e4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce333f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce334e8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33418
    mov.l @(PTR_ce334ec,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33418:
    mov.w @(DAT_ce334c4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33440
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce334f0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce334f4,pc),r0
    mov.l @(PTR_ce334f8,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce33440:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33448:
    mov r4,r3
    mov.l @(PTR_ce334fc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3345a:
    mov.w @(DAT_ce334c8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce33500,pc),r0
    extu.b r3,r3
    mov.w @(DAT_ce334c6,pc),r5
    shll2 r3
    mov.l @(r0,r3),r2
    add r14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33472:
    mov.w @(DAT_ce334ca,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce334cc,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33508
    mov.w @(DAT_ce334ce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33508
    mov.w @(DAT_ce334d0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33508
    mov.l @(PTR_ce33504,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33508
    mov r0,r4
    mov.w @(DAT_ce334d2,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce334be:
    #data 0x01f9
DAT_ce334c0:
    #data 0x041c
DAT_ce334c2:
    #data 0x01a1
DAT_ce334c4:
    #data 0x0141
DAT_ce334c6:
    #data 0x02a4
DAT_ce334c8:
    #data 0x01e9
DAT_ce334ca:
    #data 0x01fa
DAT_ce334cc:
    #data 0x0c00
DAT_ce334ce:
    #data 0x01fe
DAT_ce334d0:
    #data 0x01a3
DAT_ce334d2:
    #data 0x01f7
    #align4

PTR_ce334d4:
    #data loc_8c035162
PTR_ce334d8:
    #data loc_8c05218a
PTR_ce334dc:
    #data loc_8c05115a
PTR_ce334e0:
    #data loc_8c2896b0
PTR_ce334e4:
    #data loc_8c034e8c
PTR_ce334e8:
    #data loc_8c034dee
PTR_ce334ec:
    #data loc_8c051648
DAT_ce334f0:
    #data 0xc2df5555
DAT_ce334f4:
    #data 0x437cdb6d
PTR_ce334f8:
    #data loc_8c050ea4
PTR_ce334fc:
    #data PTR_ce33d64
PTR_ce33500:
    #data PTR_ce33d6c
PTR_ce33504:
    #data loc_8c045790

;=============================================

LAB_ce33508:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33510:
    rts
    mov 0x00,r0

LAB_ce33514:
    mov.w @(DAT_ce33638,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3363a,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33560
    mov.w @(DAT_ce3363c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33560
    mov.w @(DAT_ce3363e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33560
    mov.l @(PTR_ce3364c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33560
    mov r0,r4
    mov.w @(DAT_ce33640,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33560:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33568:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33642,pc),r1
    mov.l @(PTR_ce33650,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce33580:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bt LAB_ce335a4
    mov.w @(DAT_ce33644,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33646,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce335a4:
    mov.w @(DAT_ce33648,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r6
    mov.l @(PTR_ce33654,pc),r3
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
    mova @(DAT_ce33658,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3365c,pc),r0
    mov.l @(PTR_ce33660,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33664,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce335ee:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33654,pc),r3
    mov 0x01,r6
    mov r4,r14
    jsr @r3
    mov 0x0F,r5
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce33668,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3366c,pc),r0
    mov.l @(PTR_ce33660,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33664,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33638:
    #data 0x01fa
DAT_ce3363a:
    #data 0x0c00
DAT_ce3363c:
    #data 0x01fe
DAT_ce3363e:
    #data 0x01a3
DAT_ce33640:
    #data 0x01f7
DAT_ce33642:
    #data 0x01f9
DAT_ce33644:
    #data 0x01d2
DAT_ce33646:
    #data 0x0130
DAT_ce33648:
    #data 0x01a0
    #align4

PTR_ce3364c:
    #data loc_8c045790
PTR_ce33650:
    #data PTR_ce33d9c
PTR_ce33654:
    #data loc_8c034e8c
DAT_ce33658:
    #data 0xc36e5555
DAT_ce3365c:
    #data 0x43294924
PTR_ce33660:
    #data loc_8c103660
PTR_ce33664:
    #data loc_8c056f2a
DAT_ce33668:
    #data 0xc3145555
DAT_ce3366c:
    #data 0x4385edb7

;=============================================

LAB_ce33670:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce337bc,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.w @(DAT_ce337b2,pc),r0
    mov 0x0F,r5
    mov.l @(PTR_ce337c0,pc),r3
    mov.b @(r0,r14),r6
    add 0x02,r6
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
    mova @(DAT_ce337c4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce337c8,pc),r0
    mov.l @(PTR_ce337cc,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce337d0,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce336c8:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce337b4,pc),r1
    mov.l @(PTR_ce337d4,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce336e0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce337d8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33704
    mov.w @(DAT_ce337b6,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce337dc,pc),r1
    mov r14,r4
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r1
    mov.l @r15+,r14

LAB_ce33704:
    mov.w @(DAT_ce337b8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3373e
    mov 0x00,r3
    mov.l @(PTR_ce337e0,pc),r1
    mov.b r3,@(r0,r14)
    mov 0x0B,r3
    mov.w @(DAT_ce337ba,pc),r0
    mov 0x02,r2
    mov 0x20,r5
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
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r1
    mov.l @r15+,r14

LAB_ce3373e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33744:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce337d8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3375e
    lds.l @r15+,PR
    mov.l @(PTR_ce337e4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3375e:
    mov.w @(DAT_ce337b8,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce3377c
    mov.w @(DAT_ce337b8,pc),r0
    mov 0x04,r5
    mov.l @(PTR_ce337e8,pc),r1
    mov 0x00,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce3377c:
    mov.w @(DAT_ce337b8,pc),r0
    mov 0x02,r5
    mov.b @(r0,r14),r3
    tst r5,r3
    bt LAB_ce337ac
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r2
    mov.w @(DAT_ce337ba,pc),r0
    mov.l @(r0,r14),r4
    add 0x2E,r0
    mov.b r2,@(r0,r4)
    add 0x03,r0
    mov.b r5,@(r0,r4)
    add 0xA8,r0
    mov 0x21,r5
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r4)

LAB_ce337ac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce337b2:
    #data 0x01a3
DAT_ce337b4:
    #data 0x01f7
DAT_ce337b6:
    #data 0x0130
DAT_ce337b8:
    #data 0x0141
DAT_ce337ba:
    #data 0x01c8
    #align4

PTR_ce337bc:
    #data loc_8c02fec4
PTR_ce337c0:
    #data loc_8c034e8c
DAT_ce337c4:
    #data 0xc36e5555
DAT_ce337c8:
    #data 0x43294924
PTR_ce337cc:
    #data loc_8c103660
PTR_ce337d0:
    #data loc_8c056f2a
PTR_ce337d4:
    #data PTR_ce33dac
PTR_ce337d8:
    #data loc_8c034dee
PTR_ce337dc:
    #data loc_8c051648
PTR_ce337e0:
    #data loc_8c0423fc
PTR_ce337e4:
    #data loc_8c05176e
PTR_ce337e8:
    #data loc_8c0c576c

;=============================================

LAB_ce337ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33918,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33810
    mov.w @(DAT_ce33908,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce3391c,pc),r1
    mov r14,r4
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r1
    mov.l @r15+,r14

LAB_ce33810:
    mov.w @(DAT_ce3390a,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    and r3,r2
    mov.b r2,@(r0,r14)
    exts.b r2,r2
    tst r2,r2
    bt LAB_ce3385a
    mov.w @(DAT_ce3390a,pc),r1
    mov 0x00,r0
    mov 0x01,r3
    add r14,r1
    mov.b r0,@r1
    mov 0x02,r2
    mov.w @(DAT_ce3390c,pc),r0
    mov.l @(r0,r14),r4
    add 0x2E,r0
    mov.b r3,@(r0,r4)
    add 0x03,r0
    mov.b r2,@(r0,r4)
    add 0xAA,r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x22,r3
    mov.b r3,@(r0,r4)
    add 0x02,r0
    mov.b @(r0,r14),r2
    add 0xFE,r0
    add 0x22,r2
    mov.b r2,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)

LAB_ce3385a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33860:
    mov.w @(DAT_ce3390e,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33920,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3387e:
    mov.w @(DAT_ce3390c,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33924,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce3388c:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33910,pc),r1
    mov.l @(PTR_ce33928,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce338a4:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33912,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce338c4
    cmp/eq 0x01,r0
    bt LAB_ce338cc
    cmp/eq 0x02,r0
    bt LAB_ce338d4
    bra LAB_ce338da
    nop

LAB_ce338c4:
    mov.w @(DAT_ce33914,pc),r0
    mov 0x06,r3
    bra LAB_ce338da
    mov.b r3,@(r0,r4)

LAB_ce338cc:
    mov.w @(DAT_ce33914,pc),r0
    mov 0x03,r1
    bra LAB_ce338da
    mov.b r1,@(r0,r4)

LAB_ce338d4:
    mov.w @(DAT_ce33914,pc),r0
    mov 0x0A,r2
    mov.b r2,@(r0,r4)

LAB_ce338da:
    mov.l @(PTR_ce3392c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce338e0:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33912,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33900
    cmp/eq 0x01,r0
    bt LAB_ce33930
    cmp/eq 0x02,r0
    bt LAB_ce33938
    bra LAB_ce3393e
    nop

LAB_ce33900:
    mov.w @(DAT_ce33914,pc),r0
    mov 0x06,r3
    bra LAB_ce3393e
    mov.b r3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33908:
    #data 0x0130
DAT_ce3390a:
    #data 0x0141
DAT_ce3390c:
    #data 0x01c8
DAT_ce3390e:
    #data 0x01ea
DAT_ce33910:
    #data 0x01f7
DAT_ce33912:
    #data 0x04c9
DAT_ce33914:
    #data 0x01e9
    #align4

PTR_ce33918:
    #data loc_8c034dee
PTR_ce3391c:
    #data loc_8c051648
PTR_ce33920:
    #data PTR_ce33db8
PTR_ce33924:
    #data loc_8c04cc1c
PTR_ce33928:
    #data PTR_ce33dc4
PTR_ce3392c:
    #data loc_8c0530d8

;=============================================

LAB_ce33930:
    mov.w @(DAT_ce339da,pc),r0
    mov 0x03,r1
    bra LAB_ce3393e
    mov.b r1,@(r0,r4)

LAB_ce33938:
    mov.w @(DAT_ce339da,pc),r0
    mov 0x0A,r2
    mov.b r2,@(r0,r4)

LAB_ce3393e:
    mov.l @(PTR_ce339e0,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33944:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce339dc,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33966
    mov 0x02,r7
    cmp/eq 0x01,r0
    bt LAB_ce3396c
    cmp/eq 0x02,r0
    bt LAB_ce33974
    bra LAB_ce33988
    nop

LAB_ce33966:
    mov.w @(DAT_ce339da,pc),r0
    bra LAB_ce33988
    mov.b r7,@(r0,r4)

LAB_ce3396c:
    mov.w @(DAT_ce339da,pc),r0
    mov.b r5,@(r0,r4)
    bra LAB_ce33986
    mov r5,r0

LAB_ce33974:
    mov.w @(DAT_ce339da,pc),r0
    mov 0x01,r6
    mov.b r5,@(r0,r4)
    mov 0x20,r0
    mov.b r6,@(r0,r4)
    mov 0x21,r0
    mov.b r7,@(r0,r4)
    mov r6,r0
    nop

LAB_ce33986:
    mov.b r0,@(0x6,r4)

LAB_ce33988:
    mov.w @(DAT_ce339de,pc),r0
    mov.l @(PTR_ce339e0,pc),r3
    mov.b r5,@(r0,r4)
    jmp @r3
    mov 0x15,r5

LAB_ce33992:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce339dc,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce339b2
    cmp/eq 0x01,r0
    bt LAB_ce339ba
    cmp/eq 0x02,r0
    bt LAB_ce339ca
    bra LAB_ce339d4
    nop

LAB_ce339b2:
    mov.w @(DAT_ce339da,pc),r0
    mov 0x02,r3
    bra LAB_ce339d0
    mov.b r3,@(r0,r4)

LAB_ce339ba:
    mov.w @(DAT_ce339da,pc),r0
    mov.b r5,@(r0,r4)
    add 0xBA,r0
    mov.b r5,@(r0,r4)
    mov r5,r0
    nop
    bra LAB_ce339d4
    mov.b r0,@(0x6,r4)

LAB_ce339ca:
    mov.w @(DAT_ce339da,pc),r0
    mov 0x05,r2
    mov.b r2,@(r0,r4)

LAB_ce339d0:
    mov.w @(DAT_ce339de,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce339d4:
    mov.l @(PTR_ce339e0,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce339da:
    #data 0x01e9
DAT_ce339dc:
    #data 0x04c9
DAT_ce339de:
    #data 0x01a3
    #align4

PTR_ce339e0:
    #data loc_8c0530d8
DAT_ce339e4:
    #data 0x0201
    #data 0x0201
DAT_ce339e8:
    #data 0xffff
    #data 0xffff
DAT_ce339ec:
    #data 0xffff
    #data 0xffff
DAT_ce339f0:
    #data 0x0201
    #data 0x0201
DAT_ce339f4:
    #data 0xffff
    #data 0xffff
DAT_ce339f8:
    #data 0xffff
    #data 0xffff
DAT_ce339fc:
    #data 0x0201
    #data 0x0201
DAT_ce33a00:
    #data 0x02ff
    #data 0x02ff
DAT_ce33a04:
    #data 0xffff
    #data 0xffff
DAT_ce33a08:
    #data 0x0201
    #data 0x0201
DAT_ce33a0c:
    #data 0x02ff
    #data 0x02ff
DAT_ce33a10:
    #data 0xffff
    #data 0xffff
DAT_ce33a14:
    #data 0x0201
    #data 0x0200
DAT_ce33a18:
    #data 0x02ff
    #data 0x0201
DAT_ce33a1c:
    #data 0xffff
    #data 0x02ff
DAT_ce33a20:
    #data 0x0201
    #data 0x0201
DAT_ce33a24:
    #data 0x02ff
    #data 0x02ff
DAT_ce33a28:
    #data 0xffff
    #data 0xffff
DAT_ce33a2c:
    #data 0x0028
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0060
DAT_ce33a3a:
    #data 0x0028
    #data 0x1000
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x2000
    #data 0x0060
DAT_ce33a48:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33a58:
    #data 0x0005
    #data 0x1000
    #data 0x0004
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce33a6c:
    #data 0x0003
    #data 0x9100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce33a7c:
    #data 0x0003
    #data 0x9100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33a8c:
    #data 0x0003
    #data 0x9100
    #data 0x000a
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
    #align4

PTR_ce33a9c:
    #data LAB_ce3049a
PTR_ce33aa0:
    #data LAB_ce3001c
PTR_ce33aa4:
    #data LAB_ce305cc
PTR_ce33aa8:
    #data LAB_ce30b6c
PTR_ce33aac:
    #data LAB_ce31138
PTR_ce33ab0:
    #data LAB_ce312ce
PTR_ce33ab4:
    #data LAB_ce313ec
PTR_ce33ab8:
    #data LAB_ce315de
PTR_ce33abc:
    #data LAB_ce3345a
PTR_ce33ac0:
    #data LAB_ce33568
PTR_ce33ac4:
    #data LAB_ce336c8
PTR_ce33ac8:
    #data LAB_ce33860
PTR_ce33acc:
    #data LAB_ce3388c
PTR_ce33ad0:
    #data LAB_ce303a8
PTR_ce33ad4:
    #data LAB_ce3172c
PTR_ce33ad8:
    #data LAB_ce30f1e
PTR_ce33adc:
    #data LAB_ce338a4
PTR_ce33ae0:
    #data LAB_ce338e0
PTR_ce33ae4:
    #data LAB_ce33944
PTR_ce33ae8:
    #data LAB_ce33992
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
DAT_ce33b0c:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce33b1c:
    #data 0x02
    #data 0x02
    #data 0x00
    #data 0x00
    #data 0x02
    #data 0x02
    #data 0x00
    #data 0x00
    #data 0x02
    #data 0x02
    #data 0x01
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce33b2c:
    #data 0x00
DAT_ce33b2d:
    #data 0x00
    #data 0x01
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x01
    #data 0x01
    #data 0x00
    #data 0x02
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #align4

PTR_ce33b40:
    #data LAB_ce305e0
PTR_ce33b44:
    #data LAB_ce30908
PTR_ce33b48:
    #data LAB_ce30930
PTR_ce33b4c:
    #data LAB_ce305e0
PTR_ce33b50:
    #data LAB_ce30b8e
PTR_ce33b54:
    #data LAB_ce30d7e
PTR_ce33b58:
    #data LAB_ce30d68
PTR_ce33b5c:
    #data LAB_ce30b80
PTR_ce33b60:
    #data LAB_ce30dd4
PTR_ce33b64:
    #data FUN_ce30df6
PTR_ce33b68:
    #data LAB_ce30e18
PTR_ce33b6c:
    #data LAB_ce30eb8
PTR_ce33b70:
    #data FUN_ce30eda
PTR_ce33b74:
    #data FUN_ce30efc
PTR_ce33b78:
    #data LAB_ce30f30
PTR_ce33b7c:
    #data LAB_ce31008
PTR_ce33b80:
    #data LAB_ce310a8
PTR_ce33b84:
    #data LAB_ce3114a
PTR_ce33b88:
    #data LAB_ce311a4
PTR_ce33b8c:
    #data LAB_ce31218
PTR_ce33b90:
    #data LAB_ce312ac
PTR_ce33b94:
    #data LAB_ce312e0
PTR_ce33b98:
    #data LAB_ce3130e
PTR_ce33b9c:
    #data LAB_ce31380
PTR_ce33ba0:
    #data LAB_ce31420
PTR_ce33ba4:
    #data LAB_ce31472
PTR_ce33ba8:
    #data FUN_ce314f6
PTR_ce33bac:
    #data LAB_ce31516
PTR_ce33bb0:
    #data LAB_ce3154a
PTR_ce33bb4:
    #data LAB_ce31550
PTR_ce33bb8:
    #data LAB_ce31590
PTR_ce33bbc:
    #data LAB_ce315aa
PTR_ce33bc0:
    #data LAB_ce31590
PTR_ce33bc4:
    #data LAB_ce315c4
PTR_ce33bc8:
    #data LAB_ce3160a
PTR_ce33bcc:
    #data LAB_ce3169c
PTR_ce33bd0:
    #data FUN_ce3170a
DAT_ce33bd4:
    #data 0x000a0000
    #data 0x000c0000
DAT_ce33bdc:
    #data 0x10
    #data 0x24
    #data 0x00
    #data 0x00
    #align4

PTR_ce33be0:
    #data LAB_ce31758
PTR_ce33be4:
    #data LAB_ce317ec
PTR_ce33be8:
    #data LAB_ce318d0
PTR_ce33bec:
    #data LAB_ce3197a
DAT_ce33bf0:
    #data 0x33
    #data 0x35
    #data 0x36
    #data 0x38
    #data 0x39
    #data 0x3b
DAT_ce33bf6:
    #data 0x04
    #data 0x05
    #data 0x06
    #data 0x07
    #data 0x08
    #data 0x09
    #align4

DAT_ce33bfc:
    #data 0x00000000
DAT_ce33c00:
    #data 0x00000000
DAT_ce33c04:
    #data 0x000c0000
DAT_ce33c08:
    #data 0xffffb800
    #data 0xfff80000
    #data 0x00002000
    #data 0x000c0000
    #data 0xffffb800
    #data 0x00080000
    #data 0xffffe000
    #data 0x000a0000
    #data 0xffffb800
PTR_ce33c2c:
    #data LAB_ce31a20
PTR_ce33c30:
    #data LAB_ce31abc
PTR_ce33c34:
    #data LAB_ce31bd6
PTR_ce33c38:
    #data LAB_ce31c4c
PTR_ce33c3c:
    #data LAB_ce31cc8
PTR_ce33c40:
    #data FUN_ce31d40
PTR_ce33c44:
    #data LAB_ce319e6
PTR_ce33c48:
    #data LAB_ce31d62
DAT_ce33c4c:
    #data 0xfffe0000
DAT_ce33c50:
    #data 0x00080000
    #data 0xfffc0000
    #data 0x000e0000
DAT_ce33c5c:
    #data 0x10
    #data 0x20
    #data 0x00
    #data 0x00
    #align4

PTR_ce33c60:
    #data LAB_ce31da4
PTR_ce33c64:
    #data LAB_ce31e3a
PTR_ce33c68:
    #data LAB_ce31f46
PTR_ce33c6c:
    #data LAB_ce3201c
PTR_ce33c70:
    #data LAB_ce320ae
PTR_ce33c74:
    #data FUN_ce32126
DAT_ce33c78:
    #data 0x46
    #data 0x48
    #data 0x49
    #data 0x4b
    #data 0x4c
    #data 0x4e
DAT_ce33c7e:
    #data 0x10
    #data 0x11
    #data 0x12
    #data 0x13
    #data 0x14
    #data 0x15
    #align4

DAT_ce33c84:
    #data 0xfffa0000
DAT_ce33c88:
    #data 0x00002000
DAT_ce33c8c:
    #data 0x00000000
DAT_ce33c90:
    #data 0x00000000
    #data 0xfff60000
    #data 0x00002000
    #data 0x00000000
    #data 0x00000000
    #data 0xfffa0000
    #data 0x00002000
    #data 0x00080000
    #data 0xffffb800
    #data 0xfff60000
    #data 0x00002000
    #data 0x000e0000
    #data 0xffffb800
    #data 0x00000000
    #data 0x00000000
    #data 0x00080000
    #data 0xffffb800
    #data 0x00000000
    #data 0x00000000
    #data 0x000e0000
    #data 0xffffb800
DAT_ce33ce4:
    #data 0x10
    #data 0x20
DAT_ce33ce6:
    #data 0x00
    #data 0x03
    #data 0x01
    #data 0x00
    #data 0x00
    #data 0x00
    #align4

PTR_ce33cec:
    #data LAB_ce3217c
PTR_ce33cf0:
    #data LAB_ce32212
PTR_ce33cf4:
    #data LAB_ce3233c
PTR_ce33cf8:
    #data LAB_ce323b2
PTR_ce33cfc:
    #data LAB_ce32434
PTR_ce33d00:
    #data FUN_ce324ac
PTR_ce33d04:
    #data LAB_ce32148
PTR_ce33d08:
    #data LAB_ce324ce
PTR_ce33d0c:
    #data LAB_ce32510
PTR_ce33d10:
    #data LAB_ce325a6
PTR_ce33d14:
    #data LAB_ce32628
PTR_ce33d18:
    #data LAB_ce326b0
PTR_ce33d1c:
    #data FUN_ce32724
PTR_ce33d20:
    #data LAB_ce32794
PTR_ce33d24:
    #data LAB_ce32834
PTR_ce33d28:
    #data LAB_ce328e4
PTR_ce33d2c:
    #data LAB_ce32964
PTR_ce33d30:
    #data LAB_ce32a54
PTR_ce33d34:
    #data LAB_ce32bd2
PTR_ce33d38:
    #data LAB_ce32cdc
PTR_ce33d3c:
    #data LAB_ce32df8
PTR_ce33d40:
    #data FUN_ce32e92
PTR_ce33d44:
    #data LAB_ce32f30
PTR_ce33d48:
    #data LAB_ce32fc2
PTR_ce33d4c:
    #data LAB_ce3303a
PTR_ce33d50:
    #data LAB_ce330f4
PTR_ce33d54:
    #data LAB_ce33186
PTR_ce33d58:
    #data LAB_ce33244
PTR_ce33d5c:
    #data LAB_ce332be
PTR_ce33d60:
    #data LAB_ce33310
PTR_ce33d64:
    #data LAB_ce33378
PTR_ce33d68:
    #data LAB_ce333f8
PTR_ce33d6c:
    #data LAB_ce31d74
PTR_ce33d70:
    #data LAB_ce31d74
PTR_ce33d74:
    #data LAB_ce325e2
PTR_ce33d78:
    #data LAB_ce32ee2
PTR_ce33d7c:
    #data LAB_ce32746
PTR_ce33d80:
    #data LAB_ce324e0
PTR_ce33d84:
    #data LAB_ce330e2
PTR_ce33d88:
    #data LAB_ce31d74
PTR_ce33d8c:
    #data LAB_ce31d74
PTR_ce33d90:
    #data LAB_ce33332
PTR_ce33d94:
    #data LAB_ce332ac
PTR_ce33d98:
    #data LAB_ce33448
PTR_ce33d9c:
    #data LAB_ce33472
PTR_ce33da0:
    #data LAB_ce33510
PTR_ce33da4:
    #data LAB_ce33514
PTR_ce33da8:
    #data LAB_ce33472
PTR_ce33dac:
    #data LAB_ce33580
PTR_ce33db0:
    #data LAB_ce335ee
PTR_ce33db4:
    #data LAB_ce33670
PTR_ce33db8:
    #data LAB_ce336e0
PTR_ce33dbc:
    #data LAB_ce33744
PTR_ce33dc0:
    #data LAB_ce337ec
PTR_ce33dc4:
    #data LAB_ce3387e
PTR_ce33dc8:
    #data LAB_ce3387e
PTR_ce33dcc:
    #data LAB_ce3387e
