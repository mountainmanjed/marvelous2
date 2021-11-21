;╔══════════════════════════════════════════╗
;║ S_PL28 : Gambit (Remy LeBeau) Program    ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8C02FD26 0x8C02FD26
#symbol loc_8C02FD62 0x8C02FD62
#symbol loc_8C02FDB0 0x8C02FDB0
#symbol loc_8C02FEC4 0x8C02FEC4
#symbol loc_8C033718 0x8C033718
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
#symbol loc_8C04CE3A 0x8C04CE3A
#symbol loc_8C04FEA8 0x8C04FEA8
#symbol loc_8C04FF88 0x8C04FF88
#symbol loc_8C050048 0x8C050048
#symbol loc_8C050084 0x8C050084
#symbol loc_8C050552 0x8C050552
#symbol loc_8C050610 0x8C050610
#symbol loc_8C05064E 0x8C05064E
#symbol loc_8C050682 0x8C050682
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
#symbol loc_8C05933C 0x8C05933C
#symbol loc_8C05C6C8 0x8C05C6C8
#symbol loc_8C099BD4 0x8C099BD4
#symbol loc_8C09AF40 0x8C09AF40
#symbol loc_8C0FD966 0x8C0FD966
#symbol loc_8C0FDAB6 0x8C0FDAB6
#symbol loc_8C103660 0x8C103660
#symbol loc_8C11E730 0x8C11E730
#symbol loc_8C26A524 0x8C26A524
#symbol loc_8C2895F0 0x8C2895F0
#symbol loc_8C2896B0 0x8C2896B0

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
    #data PTR_ce33938

;=============================================

LAB_ce30024:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30104,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    mov.l @(PTR_ce30108,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    mov.l @(PTR_ce3010c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    mov.l @(PTR_ce30110,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    bsr FUN_ce30124
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    bsr FUN_ce3016a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    bsr FUN_ce301f6
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    bsr FUN_ce301b0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    bsr FUN_ce30264
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    bsr FUN_ce302b4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    bsr FUN_ce30304
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    bsr FUN_ce30378
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    bsr FUN_ce303de
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    bsr FUN_ce3042e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300fc
    bsr FUN_ce30574
    mov r14,r4
    tst r0,r0
    bf LAB_ce300fc
    mov.l @(PTR_ce30114,pc),r3
    mov 0x06,r5
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce300ec
    mov.w @(DAT_ce30102,pc),r0
    mov 0x06,r3
    mov r14,r4
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30118,pc),r3
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce300ec:
    mov.l @(PTR_ce3011c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30120,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce300fc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30102:
    #data 0x01e9
    #align4

PTR_ce30104:
    #data loc_8c054508
PTR_ce30108:
    #data loc_8c054b34
PTR_ce3010c:
    #data loc_8c05496c
PTR_ce30110:
    #data loc_8c054d04
PTR_ce30114:
    #data loc_8c054da0
PTR_ce30118:
    #data loc_8c0530d8
PTR_ce3011c:
    #data loc_8c053e00
PTR_ce30120:
    #data loc_8c0542e0

;=============================================

FUN_ce30124:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30248,pc),r5
    mov.w @(DAT_ce3023c,pc),r6
    mov.l @(PTR_ce3024c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30144
    mov.w @(DAT_ce3023e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3014c

LAB_ce30144:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3014c:
    mov.w @(DAT_ce30240,pc),r0
    mov 0x0A,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30250,pc),r3
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3016a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30254,pc),r5
    mov.w @(DAT_ce30242,pc),r6
    mov.l @(PTR_ce3024c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3018a
    mov.w @(DAT_ce3023e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30192

LAB_ce3018a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30192:
    mov.w @(DAT_ce30240,pc),r0
    mov 0x0E,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30250,pc),r3
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301b0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30258,pc),r5
    mov.w @(DAT_ce30244,pc),r6
    mov.l @(PTR_ce3024c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301ce
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301ce:
    mov.w @(DAT_ce30244,pc),r5
    mov.l @(PTR_ce3025c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30240,pc),r0
    mov 0x03,r2
    mov.l @(PTR_ce30250,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301f6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30260,pc),r5
    mov.w @(DAT_ce30246,pc),r6
    mov.l @(PTR_ce3024c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30214
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30214:
    mov.w @(DAT_ce30246,pc),r5
    mov.l @(PTR_ce3025c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30240,pc),r0
    mov 0x08,r2
    mov.l @(PTR_ce30250,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3023c:
    #data 0x03a4
DAT_ce3023e:
    #data 0x040c
DAT_ce30240:
    #data 0x01e9
DAT_ce30242:
    #data 0x03ac
DAT_ce30244:
    #data 0x0374
DAT_ce30246:
    #data 0x03b4
    #align4

PTR_ce30248:
    #data DAT_ce338d0
PTR_ce3024c:
    #data loc_8c054e58
PTR_ce30250:
    #data loc_8c0530d8
PTR_ce30254:
    #data DAT_ce338e0
PTR_ce30258:
    #data DAT_ce33884
PTR_ce3025c:
    #data loc_8c055c3a
PTR_ce30260:
    #data DAT_ce33894

;=============================================

FUN_ce30264:
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
    bt LAB_ce30284
    mov.w @(DAT_ce30356,pc),r4
    add r14,r4
    mov.b @r4,r2
    tst r2,r2
    bt LAB_ce3028c

LAB_ce30284:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3028c:
    mov.w @(DAT_ce30354,pc),r5
    mov.l @(PTR_ce30368,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30358,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce3036c,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302b4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30370,pc),r5
    mov.w @(DAT_ce3035a,pc),r6
    mov.l @(PTR_ce30364,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302d4
    mov.w @(DAT_ce3035c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302dc

LAB_ce302d4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302dc:
    mov.w @(DAT_ce3035a,pc),r5
    mov.l @(PTR_ce30368,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30358,pc),r0
    mov 0x05,r2
    mov.l @(PTR_ce3036c,pc),r3
    mov 0x1D,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30304:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30374,pc),r5
    mov.w @(DAT_ce3035e,pc),r6
    mov.l @(PTR_ce30364,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30324
    mov.w @(DAT_ce30356,pc),r4
    add r14,r4
    mov.b @r4,r2
    tst r2,r2
    bt LAB_ce3032c

LAB_ce30324:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3032c:
    mov.w @(DAT_ce3035e,pc),r5
    mov.l @(PTR_ce30368,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30358,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce3036c,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30354:
    #data 0x036c
DAT_ce30356:
    #data 0x02a4
DAT_ce30358:
    #data 0x01e9
DAT_ce3035a:
    #data 0x0384
DAT_ce3035c:
    #data 0x040c
DAT_ce3035e:
    #data 0x0364
    #align4

PTR_ce30360:
    #data DAT_ce33874
PTR_ce30364:
    #data loc_8c054e58
PTR_ce30368:
    #data loc_8c055c3a
PTR_ce3036c:
    #data loc_8c0530d8
PTR_ce30370:
    #data DAT_ce338c0
PTR_ce30374:
    #data DAT_ce33854

;=============================================

FUN_ce30378:
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
    bt LAB_ce303a8
    mov.w @(DAT_ce30476,pc),r4
    add r14,r4
    mov.b @r4,r3
    tst r3,r3
    bf LAB_ce303a8
    mov.w @(DAT_ce30478,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce303b6
    mov.w @(DAT_ce3047a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce303b0

LAB_ce303a8:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303b0:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce303b6:
    mov.w @(DAT_ce30474,pc),r5
    mov.l @(PTR_ce3048c,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3047c,pc),r0
    mov 0x09,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30490,pc),r3
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303de:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30494,pc),r5
    mov.w @(DAT_ce3047e,pc),r6
    mov.l @(PTR_ce30498,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303fc
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303fc:
    mov.w @(DAT_ce30480,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x08,r0
    bf LAB_ce30410
    mov.w @(DAT_ce3047e,pc),r5
    mov.l @(PTR_ce3048c,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4

LAB_ce30410:
    mov.w @(DAT_ce3047c,pc),r0
    mov 0x04,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30490,pc),r3
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3042e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3049c,pc),r5
    mov.w @(DAT_ce30482,pc),r6
    mov.l @(PTR_ce30498,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3044c
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
    mov.w @(DAT_ce3047c,pc),r0
    mov 0x07,r2
    mov.l @(PTR_ce30490,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30474:
    #data 0x039c
DAT_ce30476:
    #data 0x02a4
DAT_ce30478:
    #data 0x01fc
DAT_ce3047a:
    #data 0x01d4
DAT_ce3047c:
    #data 0x01e9
DAT_ce3047e:
    #data 0x037c
DAT_ce30480:
    #data 0x01a1
DAT_ce30482:
    #data 0x038c
    #align4

PTR_ce30484:
    #data DAT_ce33864
PTR_ce30488:
    #data loc_8c054e58
PTR_ce3048c:
    #data loc_8c055c3a
PTR_ce30490:
    #data loc_8c0530d8
PTR_ce30494:
    #data DAT_ce338a4
PTR_ce30498:
    #data loc_8c055066
PTR_ce3049c:
    #data DAT_ce338b2

;=============================================

LAB_ce304a0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce304d2
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce304c2
    bsr FUN_ce30508
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce304c2
    bsr FUN_ce3053e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304ca

LAB_ce304c2:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce304ca:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304d2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305a0,pc),r5
    mov.w @(DAT_ce30594,pc),r6
    mov.l @(PTR_ce305a4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304f2
    mov.w @(DAT_ce30596,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304fa

LAB_ce304f2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304fa:
    mov.w @(DAT_ce30598,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30508:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305a8,pc),r5
    mov.w @(DAT_ce3059a,pc),r6
    mov.l @(PTR_ce305a4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30528
    mov.w @(DAT_ce30596,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30530

LAB_ce30528:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30530:
    mov.w @(DAT_ce30598,pc),r0
    mov 0x0E,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3053e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305ac,pc),r5
    mov.w @(DAT_ce3059c,pc),r6
    mov.l @(PTR_ce305a4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3055e
    mov.w @(DAT_ce30596,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30566

LAB_ce3055e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30566:
    mov.w @(DAT_ce30598,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30574:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce305b0,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce3058c
    mov.w @(DAT_ce30596,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce305b4

LAB_ce3058c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30594:
    #data 0x03a4
DAT_ce30596:
    #data 0x040c
DAT_ce30598:
    #data 0x0258
DAT_ce3059a:
    #data 0x03ac
DAT_ce3059c:
    #data 0x0384
    #align4

PTR_ce305a0:
    #data DAT_ce338d0
PTR_ce305a4:
    #data loc_8c054e58
PTR_ce305a8:
    #data DAT_ce338e0
PTR_ce305ac:
    #data DAT_ce338c0
PTR_ce305b0:
    #data loc_8c054d1c

;=============================================

LAB_ce305b4:
    mov.w @(DAT_ce30690,pc),r0
    mov 0x10,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce306a0,pc),r3
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

LAB_ce305d4:
    rts
    nop

LAB_ce305d8:
    mov.w @(DAT_ce30692,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce306a4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce305ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce306a8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30694,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3061a
    mov.w @(DAT_ce30696,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30612
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30886
    mov.l @r15+,r14

LAB_ce30612:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307b4
    mov.l @r15+,r14

LAB_ce3061a:
    mov.w @(DAT_ce30696,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3062c
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30706
    mov.l @r15+,r14

LAB_ce3062c:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30634
    mov.l @r15+,r14

LAB_ce30634:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30698,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce306ac,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3065a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30674
    cmp/eq 0x02,r0
    bt LAB_ce306b8
    bra LAB_ce306d2
    nop

LAB_ce3065a:
    mov.w @(DAT_ce3069a,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3069c,pc),r0
    mov.l @(PTR_ce306b0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3069e,pc),r0
    bra LAB_ce306d2
    mov.b r13,@(r0,r14)

LAB_ce30674:
    mov.w @(DAT_ce3069a,pc),r0
    mov 0x01,r11
    mov 0x15,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3069c,pc),r0
    mov.l @(PTR_ce306b4,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3069e,pc),r0
    bra LAB_ce306d2
    mov.b r11,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30690:
    #data 0x01e9
DAT_ce30692:
    #data 0x01ff
DAT_ce30694:
    #data 0x01fe
DAT_ce30696:
    #data 0x01f9
DAT_ce30698:
    #data 0x01e8
DAT_ce3069a:
    #data 0x0158
DAT_ce3069c:
    #data 0x03f4
DAT_ce3069e:
    #data 0x01a7
    #align4

PTR_ce306a0:
    #data loc_8c0530d8
PTR_ce306a4:
    #data PTR_ce339a8
PTR_ce306a8:
    #data loc_8c052b4c
PTR_ce306ac:
    #data loc_8c04223a
PTR_ce306b0:
    #data DAT_ce338f0
PTR_ce306b4:
    #data DAT_ce338f4

;=============================================

LAB_ce306b8:
    mov.w @(DAT_ce307d8,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce307e4,pc),r3
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce307da,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307dc,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r12
    mov r14,r4

LAB_ce306d2:
    mov.w @(DAT_ce307de,pc),r0
    mov 0x07,r5
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
    mov.w @(DAT_ce307d8,pc),r0
    mov.l @(PTR_ce307ec,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30706:
    mov.w @(DAT_ce307e0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce307f0,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3072a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30746
    cmp/eq 0x02,r0
    bt LAB_ce30766
    bra LAB_ce30782
    nop

LAB_ce3072a:
    mov.w @(DAT_ce307d8,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307da,pc),r0
    mov.l @(PTR_ce307f4,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307dc,pc),r0
    bra LAB_ce30782
    mov.b r13,@(r0,r14)

LAB_ce30746:
    mov.w @(DAT_ce307d8,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307da,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce307f8,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307dc,pc),r0
    bra LAB_ce30782
    mov.b r2,@(r0,r14)

LAB_ce30766:
    mov.w @(DAT_ce307d8,pc),r0
    mov 0x02,r4
    mov 0x08,r3
    mov.l @(PTR_ce307e4,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce307da,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307dc,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r12
    mov r14,r4

LAB_ce30782:
    mov.w @(DAT_ce307de,pc),r0
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
    mov.w @(DAT_ce307d8,pc),r0
    mov.l @(PTR_ce307ec,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce307b4:
    mov.w @(DAT_ce307e0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce307f0,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307fc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30818
    cmp/eq 0x02,r0
    bt LAB_ce30838
    bra LAB_ce30854
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307d8:
    #data 0x0158
DAT_ce307da:
    #data 0x03f4
DAT_ce307dc:
    #data 0x01a7
DAT_ce307de:
    #data 0x01ac
DAT_ce307e0:
    #data 0x01e8
    #align4

PTR_ce307e4:
    #data DAT_ce338f8
PTR_ce307e8:
    #data loc_8c2896b0
PTR_ce307ec:
    #data loc_8c034e8c
PTR_ce307f0:
    #data loc_8c04223a
PTR_ce307f4:
    #data DAT_ce338f0
PTR_ce307f8:
    #data DAT_ce338f4

;=============================================

LAB_ce307fc:
    mov.w @(DAT_ce30934,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30936,pc),r0
    mov.l @(PTR_ce30940,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30938,pc),r0
    bra LAB_ce30854
    mov.b r13,@(r0,r14)

LAB_ce30818:
    mov.w @(DAT_ce30934,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30936,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce30944,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30938,pc),r0
    bra LAB_ce30854
    mov.b r2,@(r0,r14)

LAB_ce30838:
    mov.w @(DAT_ce30934,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce30948,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce30936,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30938,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r12
    mov r14,r4

LAB_ce30854:
    mov.w @(DAT_ce3093a,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce3094c,pc),r3
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
    mov.l @(PTR_ce30950,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30886:
    mov.w @(DAT_ce3093c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30954,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308aa
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce308c6
    cmp/eq 0x02,r0
    bt LAB_ce308e6
    bra LAB_ce30902
    nop

LAB_ce308aa:
    mov.w @(DAT_ce30934,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30936,pc),r0
    mov.l @(PTR_ce30940,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30938,pc),r0
    bra LAB_ce30902
    mov.b r13,@(r0,r14)

LAB_ce308c6:
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
    mov 0x01,r2
    mov.l @(PTR_ce30944,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30938,pc),r0
    bra LAB_ce30902
    mov.b r2,@(r0,r14)

LAB_ce308e6:
    mov.w @(DAT_ce30934,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.l @(PTR_ce30948,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce30936,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30938,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r12
    mov r14,r4

LAB_ce30902:
    mov.w @(DAT_ce3093a,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce3094c,pc),r3
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
    mov.l @(PTR_ce30950,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30934:
    #data 0x0158
DAT_ce30936:
    #data 0x03f4
DAT_ce30938:
    #data 0x01a7
DAT_ce3093a:
    #data 0x01ac
DAT_ce3093c:
    #data 0x01e8
    #align4

PTR_ce30940:
    #data DAT_ce338fc
PTR_ce30944:
    #data DAT_ce33900
PTR_ce30948:
    #data DAT_ce33904
PTR_ce3094c:
    #data loc_8c2896b0
PTR_ce30950:
    #data loc_8c034e8c
PTR_ce30954:
    #data loc_8c04223a

;=============================================

LAB_ce30958:
    mov.w @(DAT_ce30a30,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30968
    mov.w @(DAT_ce30a32,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30978

LAB_ce30968:
    mov.w @(DAT_ce30a30,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce3097c
    mov.w @(DAT_ce30a32,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce3097c

LAB_ce30978:
    bra LAB_ce30980
    nop

LAB_ce3097c:
    rts
    nop

LAB_ce30980:
    mov.w @(DAT_ce30a30,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3098e
    bra LAB_ce30aa8
    nop

LAB_ce3098e:
    bra LAB_ce30992
    nop

LAB_ce30992:
    mov.w @(DAT_ce30a34,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30a40,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce309b6
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce309e2
    cmp/eq 0x02,r0
    bt LAB_ce30a0e
    bra LAB_ce30a64
    nop

LAB_ce309b6:
    mov.w @(DAT_ce30a36,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a38,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce309d6
    mov.w @(DAT_ce30a3a,pc),r0
    mov.l @(PTR_ce30a44,pc),r3
    bra LAB_ce309dc
    mov.l r3,@(r0,r14)

LAB_ce309d6:
    mov.w @(DAT_ce30a3a,pc),r0
    mov.l @(PTR_ce30a48,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce309dc:
    mov.w @(DAT_ce30a3c,pc),r0
    bra LAB_ce30a64
    mov.b r13,@(r0,r14)

LAB_ce309e2:
    mov.w @(DAT_ce30a36,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a38,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a04
    mov.w @(DAT_ce30a3a,pc),r0
    mov.l @(PTR_ce30a4c,pc),r3
    bra LAB_ce30a0a
    mov.l r3,@(r0,r14)

LAB_ce30a04:
    mov.w @(DAT_ce30a3a,pc),r0
    mov.l @(PTR_ce30a50,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a0a:
    bra LAB_ce30a60
    mov 0x01,r3

LAB_ce30a0e:
    mov.w @(DAT_ce30a36,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a38,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a58
    mov.w @(DAT_ce30a3a,pc),r0
    mov.l @(PTR_ce30a54,pc),r3
    bra LAB_ce30a5e
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a30:
    #data 0x01fe
DAT_ce30a32:
    #data 0x01d6
DAT_ce30a34:
    #data 0x01e8
DAT_ce30a36:
    #data 0x0158
DAT_ce30a38:
    #data 0x01fc
DAT_ce30a3a:
    #data 0x03f4
DAT_ce30a3c:
    #data 0x01a7
    #align4

PTR_ce30a40:
    #data loc_8c04223a
PTR_ce30a44:
    #data DAT_ce33908
PTR_ce30a48:
    #data DAT_ce33920
PTR_ce30a4c:
    #data DAT_ce3390c
PTR_ce30a50:
    #data DAT_ce33924
PTR_ce30a54:
    #data DAT_ce33910

;=============================================

LAB_ce30a58:
    mov.w @(DAT_ce30b46,pc),r0
    mov.l @(PTR_ce30b54,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a5e:
    mov 0x02,r3

LAB_ce30a60:
    mov.w @(DAT_ce30b48,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30a64:
    mov.w @(DAT_ce30b4a,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30b58,pc),r3
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
    mov.w @(DAT_ce30b4c,pc),r0
    mov.l @(PTR_ce30b5c,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30b4e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30a9e
    mov.w @(DAT_ce30b4e,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30a9e:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30aa8:
    mov.w @(DAT_ce30b50,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b60,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30acc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30af8
    cmp/eq 0x02,r0
    bt LAB_ce30b24
    bra LAB_ce30b84
    nop

LAB_ce30acc:
    mov.w @(DAT_ce30b4c,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b52,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30aec
    mov.w @(DAT_ce30b46,pc),r0
    mov.l @(PTR_ce30b64,pc),r3
    bra LAB_ce30af2
    mov.l r3,@(r0,r14)

LAB_ce30aec:
    mov.w @(DAT_ce30b46,pc),r0
    mov.l @(PTR_ce30b68,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30af2:
    mov.w @(DAT_ce30b48,pc),r0
    bra LAB_ce30b84
    mov.b r13,@(r0,r14)

LAB_ce30af8:
    mov.w @(DAT_ce30b4c,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b52,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b1a
    mov.w @(DAT_ce30b46,pc),r0
    mov.l @(PTR_ce30b6c,pc),r3
    bra LAB_ce30b20
    mov.l r3,@(r0,r14)

LAB_ce30b1a:
    mov.w @(DAT_ce30b46,pc),r0
    mov.l @(PTR_ce30b70,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b20:
    bra LAB_ce30b80
    mov 0x01,r3

LAB_ce30b24:
    mov.w @(DAT_ce30b4c,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b52,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b78
    mov.w @(DAT_ce30b46,pc),r0
    mov.l @(PTR_ce30b74,pc),r3
    bra LAB_ce30b7e
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b46:
    #data 0x03f4
DAT_ce30b48:
    #data 0x01a7
DAT_ce30b4a:
    #data 0x01ac
DAT_ce30b4c:
    #data 0x0158
DAT_ce30b4e:
    #data 0x01d6
DAT_ce30b50:
    #data 0x01e8
DAT_ce30b52:
    #data 0x01fc
    #align4

PTR_ce30b54:
    #data DAT_ce33928
PTR_ce30b58:
    #data loc_8c2896b0
PTR_ce30b5c:
    #data loc_8c034e8c
PTR_ce30b60:
    #data loc_8c04223a
PTR_ce30b64:
    #data DAT_ce33914
PTR_ce30b68:
    #data DAT_ce3392c
PTR_ce30b6c:
    #data DAT_ce33918
PTR_ce30b70:
    #data DAT_ce33930
PTR_ce30b74:
    #data DAT_ce3391c

;=============================================

LAB_ce30b78:
    mov.w @(DAT_ce30c6c,pc),r0
    mov.l @(PTR_ce30c7c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b7e:
    mov 0x02,r3

LAB_ce30b80:
    mov.w @(DAT_ce30c6e,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30b84:
    mov.w @(DAT_ce30c70,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30c80,pc),r3
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
    mov.w @(DAT_ce30c72,pc),r0
    mov.l @(PTR_ce30c84,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30c74,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30bbe
    mov.w @(DAT_ce30c74,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30bbe:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30bc8:
    mov.w @(DAT_ce30c76,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c88,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30bdc:
    sts.l PR,@-r15
    mov.l @(PTR_ce30c8c,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30bea:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30c90,pc),r3
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
    mov.w @(DAT_ce30c78,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c52
    mov.w @(DAT_ce30c7a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c4a
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30d44
    mov.l @r15+,r14

LAB_ce30c4a:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30d22
    mov.l @r15+,r14

LAB_ce30c52:
    mov.w @(DAT_ce30c7a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c64
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30d00
    mov.l @r15+,r14

LAB_ce30c64:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c94
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c6c:
    #data 0x03f4
DAT_ce30c6e:
    #data 0x01a7
DAT_ce30c70:
    #data 0x01ac
DAT_ce30c72:
    #data 0x0158
DAT_ce30c74:
    #data 0x01d6
DAT_ce30c76:
    #data 0x01ff
DAT_ce30c78:
    #data 0x01fe
DAT_ce30c7a:
    #data 0x01f9
    #align4

PTR_ce30c7c:
    #data DAT_ce33934
PTR_ce30c80:
    #data loc_8c2896b0
PTR_ce30c84:
    #data loc_8c034e8c
PTR_ce30c88:
    #data PTR_ce339b8
PTR_ce30c8c:
    #data loc_8c0511e2
PTR_ce30c90:
    #data loc_8c052c84

;=============================================

LAB_ce30c94:
    mov.w @(DAT_ce30d9e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30ce4
    mov.l @(PTR_ce30da8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30cf0
    mov.w @(DAT_ce30da0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30cfa
    mov.w @(DAT_ce30da2,pc),r0
    mov 0x19,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30dac,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce30da0,pc),r0
    bra LAB_ce30cfa
    mov.b r4,@(r0,r14)

LAB_ce30ce4:
    mov.l @(PTR_ce30da8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cfa

LAB_ce30cf0:
    lds.l @r15+,PR
    mov.l @(PTR_ce30db0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30cfa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30d00:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30da8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d1a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30db0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30d1a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30d22:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30da8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d3c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30db0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30d3c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30d44:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30da8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d5e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30db0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30d5e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30d66:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30db4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30db8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30d7c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30dbc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30dc0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30da4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30dc4
    bsr FUN_ce30e06
    mov r14,r4
    bra LAB_ce30dc8
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d9e:
    #data 0x01e8
DAT_ce30da0:
    #data 0x0141
DAT_ce30da2:
    #data 0x01a1
DAT_ce30da4:
    #data 0x01fe
    #align4

PTR_ce30da8:
    #data loc_8c034dee
PTR_ce30dac:
    #data loc_8c2896b0
PTR_ce30db0:
    #data loc_8c051648
PTR_ce30db4:
    #data loc_8c050084
PTR_ce30db8:
    #data loc_8c04ff88
PTR_ce30dbc:
    #data loc_8c04fea8
PTR_ce30dc0:
    #data loc_8c050048

;=============================================

LAB_ce30dc4:
    bsr FUN_ce30de4
    mov r14,r4

LAB_ce30dc8:
    mov.l @(PTR_ce30efc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30dde
    lds.l @r15+,PR
    mov.l @(PTR_ce30f00,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30dde:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30de4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30f04,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30dfe
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30f08,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30dfe:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30e06:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30f04,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e20
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30f08,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30e20:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30e28:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30e86
    mov.l @(PTR_ce30f0c,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    mov.l @(PTR_ce30f10,pc),r3
    mov 0x14,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x05,r6
    mov.w @(DAT_ce30ef4,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30f14,pc),r2
    mov 0x16,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30ef6,pc),r0
    mov 0x4B,r3
    mov 0x05,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30f18,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30f1c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30e86:
    mov.w @(DAT_ce30ef8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30e96
    mov.l @(PTR_ce30f20,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30e96:
    mov 0x5C,r1
    mov.l @(PTR_ce30f24,pc),r3
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
    mov.l @(PTR_ce30f04,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30eec
    lds.l @r15+,PR
    mov.l @(PTR_ce30f28,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30eec:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ef4:
    #data 0x01f9
DAT_ce30ef6:
    #data 0x01a1
DAT_ce30ef8:
    #data 0x01ff
    #align4

PTR_ce30efc:
    #data loc_8c052ce2
PTR_ce30f00:
    #data loc_8c052dac
PTR_ce30f04:
    #data loc_8c034dee
PTR_ce30f08:
    #data loc_8c05176e
PTR_ce30f0c:
    #data loc_8c052b4c
PTR_ce30f10:
    #data loc_8c034e8c
PTR_ce30f14:
    #data loc_8c04223a
PTR_ce30f18:
    #data loc_8c2896b0
PTR_ce30f1c:
    #data loc_8c056de4
PTR_ce30f20:
    #data loc_8c0511e2
PTR_ce30f24:
    #data loc_8c052c84
PTR_ce30f28:
    #data loc_8c051648

;=============================================

LAB_ce30f2c:
    mov r4,r3
    mov.l @(PTR_ce31058,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30f3e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3105c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31052,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30f8e
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce31060,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31064,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31068,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3106c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31054,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f8e
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30f8e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f94:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce3105c,pc),r3
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
    mov.w @(DAT_ce31056,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31008
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    mov.l @(PTR_ce31070,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31056,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31074,pc),r2
    mov 0x34,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31008:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3100e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3105c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3103a
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31078,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3103a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31040:
    mov r4,r3
    mov.l @(PTR_ce3107c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31052:
    #data 0x0141
DAT_ce31054:
    #data 0x01d2
DAT_ce31056:
    #data 0x041c
    #align4

PTR_ce31058:
    #data PTR_ce339c8
PTR_ce3105c:
    #data loc_8c034dee
DAT_ce31060:
    #data 0x40cdb6db
DAT_ce31064:
    #data 0xbf092492
DAT_ce31068:
    #data 0xc17d5555
DAT_ce3106c:
    #data 0x3ea00000
PTR_ce31070:
    #data loc_8c034e8c
PTR_ce31074:
    #data loc_8c04223a
PTR_ce31078:
    #data loc_8c051648
PTR_ce3107c:
    #data PTR_ce339d4

;=============================================

LAB_ce31080:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3119c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31194,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce310d0
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce311a0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce311a4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce311a8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce311ac,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31196,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce310d0
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce310d0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310d6:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce3119c,pc),r3
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
    mov.w @(DAT_ce31198,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3114a
    mov.b @(0x6,r14),r0
    mov 0x02,r5
    mov.l @(PTR_ce311b0,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31198,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce311b4,pc),r2
    mov 0x34,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3114a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31150:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3119c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3117c
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce311b8,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3117c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31182:
    mov r4,r3
    mov.l @(PTR_ce311bc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31194:
    #data 0x0141
DAT_ce31196:
    #data 0x01d2
DAT_ce31198:
    #data 0x041c
    #align4

PTR_ce3119c:
    #data loc_8c034dee
DAT_ce311a0:
    #data 0x40cdb6db
DAT_ce311a4:
    #data 0xbf092492
DAT_ce311a8:
    #data 0x417d5555
DAT_ce311ac:
    #data 0xbea00000
PTR_ce311b0:
    #data loc_8c034e8c
PTR_ce311b4:
    #data loc_8c04223a
PTR_ce311b8:
    #data loc_8c051648
PTR_ce311bc:
    #data PTR_ce339e0

;=============================================

LAB_ce311c0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce312f8,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce312ee,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce312fc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce312f0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce311f0
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce311f0:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31300,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x33,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31304,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce312f2,pc),r0
    mov 0x02,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31308,pc),r3
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
    mov.l @(PTR_ce3130c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3123a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31310,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31314,pc),r3
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
    bt LAB_ce312a2
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce3130c,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31318,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce312a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31310,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312ca
    mov.l @(PTR_ce312f8,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3131c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce312ca:
    mov.w @(DAT_ce312f4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce312d6
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce312d6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312dc:
    mov r4,r3
    mov.l @(PTR_ce31320,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce312ee:
    #data 0x01f9
DAT_ce312f0:
    #data 0x01d2
DAT_ce312f2:
    #data 0x01a1
DAT_ce312f4:
    #data 0x0141
    #align4

PTR_ce312f8:
    #data loc_8c035162
DAT_ce312fc:
    #data 0x41f00000
DAT_ce31300:
    #data 0x40892492
DAT_ce31304:
    #data 0xbf4db6db
PTR_ce31308:
    #data loc_8c2896b0
PTR_ce3130c:
    #data loc_8c034e8c
PTR_ce31310:
    #data loc_8c034dee
PTR_ce31314:
    #data loc_8c052ce2
PTR_ce31318:
    #data loc_8c0511b4
PTR_ce3131c:
    #data loc_8c051854
PTR_ce31320:
    #data PTR_ce339ec

;=============================================

LAB_ce31324:
    mov.l @(PTR_ce31440,pc),r1
    mov 0x00,r3
    mov.w @(DAT_ce3143c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x02,r3
    mov.b @r1,r2
    extu.b r2,r2
    cmp/ge r3,r2
    bf LAB_ce313a6
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mov 0x18,r0
    mov.w r0,@(0x1e,r14)
    mova @(DAT_ce31444,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31448,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3144c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31450,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce3143e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3137a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31454,pc),r0
    fmov.s @r0,fr4

LAB_ce3137a:
    mov 0x34,r0
    mov.l @(PTR_ce31458,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x64,r0
    fldi0 fr2
    mov 0x12,r5
    fmov fr3,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x00,r6
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3145c,pc),r2
    mov 0x03,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce313a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313ac:
    mov.w @(DAT_ce3143c,pc),r0
    mov 0x00,r5
    mov.b r5,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce313d0
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov r5,r0
    nop
    mov.b r0,@(0x7,r4)
    mov 0x01,r3
    mov.w @(DAT_ce3143c,pc),r0
    mov.b r3,@(r0,r4)

LAB_ce313d0:
    rts
    nop

LAB_ce313d4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31460,pc),r3
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
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce31464
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce314ae
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31458,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x12,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3143c:
    #data 0x012c
DAT_ce3143e:
    #data 0x01d2
    #align4

PTR_ce31440:
    #data loc_8c2895f0
DAT_ce31444:
    #data 0x419a4924
DAT_ce31448:
    #data 0xbf4db6db
DAT_ce3144c:
    #data 0x40a00000
DAT_ce31450:
    #data 0xc3750000
DAT_ce31454:
    #data 0x43750000
PTR_ce31458:
    #data loc_8c034e8c
PTR_ce3145c:
    #data loc_8c099bd4
PTR_ce31460:
    #data loc_8c034dee

;=============================================

LAB_ce31464:
    mov.w @(DAT_ce31578,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce314ae
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    fldi0 fr4
    mov 0x03,r6
    add 0x01,r0
    mov.l @(PTR_ce3157c,pc),r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31578,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x64,r0
    fmov.s @(r0,r14),fr3
    mov 0x34,r0
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
    mov.l @(PTR_ce31580,pc),r2
    mov 0x34,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce314ae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce314b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31584,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce314de
    mov.b @(0x5,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3157c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    mov 0x00,r0
    mov r0,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov r0,r6
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce314de:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce314e4:
    mov r4,r3
    mov.l @(PTR_ce31588,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce314f6:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce3158c,pc),r0
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31512:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31590,pc),r3
    add 0x01,r0
    jsr @r3
    mov.b r0,@(0x7,r14)
    mov 0x01,r2
    mov r0,r4
    tst r2,r4
    bt/s LAB_ce31530
    mov 0x13,r5
    bra LAB_ce31532
    mov 0x00,r6

LAB_ce31530:
    mov r2,r6

LAB_ce31532:
    lds.l @r15+,PR
    mov.l @(PTR_ce3157c,pc),r1
    mov r14,r4
    jmp @r1
    mov.l @r15+,r14

LAB_ce3153c:
    mov.l @(PTR_ce3157c,pc),r3
    mov 0x03,r6
    jmp @r3
    mov 0x13,r5

LAB_ce31544:
    mov.l @(PTR_ce3157c,pc),r3
    mov 0x02,r6
    jmp @r3
    mov 0x13,r5

LAB_ce3154c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31594,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31564
    lds.l @r15+,PR
    mov.l @(PTR_ce31598,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31564:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce3159c,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31578:
    #data 0x041c
    #align4

PTR_ce3157c:
    #data loc_8c034e8c
PTR_ce31580:
    #data loc_8c04223a
PTR_ce31584:
    #data loc_8c034dee
PTR_ce31588:
    #data PTR_ce339fc
PTR_ce3158c:
    #data PTR_ce33a04
PTR_ce31590:
    #data loc_8c11e730
PTR_ce31594:
    #data loc_8c046c8a
PTR_ce31598:
    #data loc_8c051648
PTR_ce3159c:
    #data PTR_ce33a18

;=============================================

LAB_ce315a0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bt LAB_ce315d8
    mov.w @(DAT_ce31698,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce315d8
    mov.b @(r0,r14),r6
    mov 0x25,r0
    mov.b @(r0,r14),r3
    mov 0x02,r5
    extu.b r6,r6
    extu.b r3,r3
    mov r3,r2
    shll2 r3
    add r2,r3
    add r3,r6
    mov.l @(PTR_ce316a4,pc),r3
    mov 0x01,r7
    add 0xFF,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31698,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)

LAB_ce315d8:
    lds.l @r15+,PR
    mov.l @(PTR_ce316a8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce315e2:
    mov.l @(PTR_ce316a8,pc),r3
    jmp @r3
    nop

LAB_ce315e8:
    mov.w @(DAT_ce3169a,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce316ac,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce315fc:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov 0x00,r3
    mov.w @(DAT_ce3169c,pc),r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce3169e,pc),r0
    mov.l @(PTR_ce316b0,pc),r3
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce31620:
    mov r4,r3
    mov.l @(PTR_ce316b4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31632:
    mov.b @(0x6,r4),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3169c,pc),r0
    mov.b r3,@(r0,r4)
    add 0xD9,r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce3164c
    mova @(DAT_ce316b8,pc),r0
    bra LAB_ce31650
    fmov.s @r0,fr3

LAB_ce3164c:
    mova @(DAT_ce316bc,pc),r0
    fmov.s @r0,fr3

LAB_ce31650:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fldi0 fr3
    mov 0x33,r3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce316c0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x00,r5
    fmov fr3,@(r0,r4)
    mova @(DAT_ce316c4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce316a0,pc),r0
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce316c8,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce316cc,pc),r2
    mov 0x02,r6
    jmp @r2
    mov 0x14,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31698:
    #data 0x014b
DAT_ce3169a:
    #data 0x01e9
DAT_ce3169c:
    #data 0x01f9
DAT_ce3169e:
    #data 0x041c
DAT_ce316a0:
    #data 0x01a1
    #align4

PTR_ce316a4:
    #data loc_8c03544c
PTR_ce316a8:
    #data loc_8c034dee
PTR_ce316ac:
    #data PTR_ce33a2c
PTR_ce316b0:
    #data loc_8c05218a
PTR_ce316b4:
    #data PTR_ce33a70
DAT_ce316b8:
    #data 0x41f00000
DAT_ce316bc:
    #data 0xc1f00000
DAT_ce316c0:
    #data 0x3e892492
DAT_ce316c4:
    #data 0xbf4db6db
PTR_ce316c8:
    #data loc_8c2896b0
PTR_ce316cc:
    #data loc_8c034e8c

;=============================================

LAB_ce316d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce317e8,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce317ec,pc),r3
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
    bt LAB_ce31738
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce317f0,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce317f4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31738:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3173e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce317e8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31758
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce317f8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31758:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31760:
    mov.w @(DAT_ce317da,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3178a
    mov.l @(PTR_ce317fc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce317dc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3178a
    mov.w @(DAT_ce317dc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce3178a:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31800,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3179c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce317de,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x09,r0
    bt/s LAB_ce317bc
    mov 0x00,r13
    bsr FUN_ce315fc
    mov r14,r4

LAB_ce317bc:
    mov.w @(DAT_ce317e0,pc),r4
    add r14,r4
    mov.b r13,@r4
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce317e2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31804
    mov.w @(DAT_ce317e4,pc),r0
    mov 0x31,r2
    bra LAB_ce3180a
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce317da:
    #data 0x01f9
DAT_ce317dc:
    #data 0x041c
DAT_ce317de:
    #data 0x01e9
DAT_ce317e0:
    #data 0x02a4
DAT_ce317e2:
    #data 0x0255
DAT_ce317e4:
    #data 0x01a1
    #align4

PTR_ce317e8:
    #data loc_8c034dee
PTR_ce317ec:
    #data loc_8c052ce2
PTR_ce317f0:
    #data loc_8c034e8c
PTR_ce317f4:
    #data loc_8c0511b4
PTR_ce317f8:
    #data loc_8c051854
PTR_ce317fc:
    #data loc_8c04fea8
PTR_ce31800:
    #data PTR_ce33a7c

;=============================================

LAB_ce31804:
    mov.w @(DAT_ce3191e,pc),r0
    mov 0x30,r3
    mov.b r3,@(r0,r14)

LAB_ce3180a:
    mov.w @(DAT_ce31920,pc),r0
    mov.l @(PTR_ce31928,pc),r3
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce3192c,pc),r12
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31922,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3187c
    mov.l @(DAT_ce31930,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce31934,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce31938,pc),r1
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
    mov.w @(DAT_ce31924,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31872
    mov 0x15,r5
    bra LAB_ce31874
    mov 0x03,r6

LAB_ce31872:
    mov 0x05,r6

LAB_ce31874:
    jsr @r12
    mov r14,r4
    bra LAB_ce31890
    nop

LAB_ce3187c:
    mov.w @(DAT_ce31924,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce3188a
    mov 0x15,r5
    bra LAB_ce3188c
    mov 0x00,r6

LAB_ce3188a:
    mov 0x02,r6

LAB_ce3188c:
    jsr @r12
    mov r14,r4

LAB_ce31890:
    mov.l @(PTR_ce3193c,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov r0,r4
    tst r4,r4
    bt LAB_ce318dc
    mov.w @(DAT_ce31922,pc),r0
    mov.w @(DAT_ce31926,pc),r2
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce318c0
    add r2,r4
    mov 0x01,r0
    mov.l @(PTR_ce31940,pc),r3
    mov.b r0,@(0xd,r4)
    mov 0x05,r5
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce318c0:
    mov r13,r0
    nop
    mov.l @(PTR_ce31940,pc),r3
    mov 0x05,r5
    mov.b r0,@(0xd,r4)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31944,pc),r2
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce318dc:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce318e6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31948,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31954
    mov.w @(DAT_ce31922,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31914
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3194c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31914:
    lds.l @r15+,PR
    mov.l @(PTR_ce31950,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3191e:
    #data 0x01a1
DAT_ce31920:
    #data 0x01ac
DAT_ce31922:
    #data 0x01f9
DAT_ce31924:
    #data 0x01a3
DAT_ce31926:
    #data 0x0088
    #align4

PTR_ce31928:
    #data loc_8c2896b0
PTR_ce3192c:
    #data loc_8c034e8c
DAT_ce31930:
    #data 0x41d55555
DAT_ce31934:
    #data 0x41892492
DAT_ce31938:
    #data 0x43092492
PTR_ce3193c:
    #data loc_8c099bd4
PTR_ce31940:
    #data loc_8c056de4
PTR_ce31944:
    #data loc_8c05115a
PTR_ce31948:
    #data loc_8c034dee
PTR_ce3194c:
    #data loc_8c05176e
PTR_ce31950:
    #data loc_8c051648

;=============================================

LAB_ce31954:
    mov.w @(DAT_ce31a76,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31992
    mov.l @(PTR_ce31a88,pc),r3
    mov 0x04,r5
    jsr @r3
    mov r14,r4
    mov r0,r4
    tst r4,r4
    bt LAB_ce3198c
    mov.w @(DAT_ce31a7a,pc),r0
    mov.w @(DAT_ce31a78,pc),r3
    mov.b @(r0,r14),r0
    add r3,r4
    extu.b r0,r0
    cmp/eq 0x02,r0
    movt r0
    mov.w r0,@(0x10,r4)
    mov.w @(DAT_ce31a7a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3198c
    mov.l @(PTR_ce31a88,pc),r2
    mov 0x0A,r5
    jsr @r2
    mov r14,r4

LAB_ce3198c:
    mov.w @(DAT_ce31a76,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce31992:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31998:
    mov r4,r3
    mov.l @(PTR_ce31a8c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce319aa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31a7c,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31a90,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov 0x00,r4
    mov.b r4,@r2
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x30,r3
    mov.w @(DAT_ce31a7e,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31a80,pc),r0
    mov.l @(PTR_ce31a94,pc),r3
    mov.w r4,@(r0,r14)
    mov.w @(DAT_ce31a82,pc),r0
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
    mov.w @(DAT_ce31a84,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce31a02
    mov 0x15,r5
    bra LAB_ce31a04
    mov 0x06,r6

LAB_ce31a02:
    mov 0x08,r6

LAB_ce31a04:
    mov.l @(PTR_ce31a98,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31a88,pc),r3
    mov 0x02,r5
    jsr @r3
    mov r14,r4
    mov r0,r4
    tst r4,r4
    bt/s LAB_ce31a22
    mov 0x05,r5
    mov.w @(DAT_ce31a78,pc),r3
    mov 0x02,r0
    add r3,r4
    mov.b r0,@(0xd,r4)

LAB_ce31a22:
    mov.l @(PTR_ce31a9c,pc),r3
    jsr @r3
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31aa0,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a34:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31aa4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31a4e
    lds.l @r15+,PR
    mov.l @(PTR_ce31aa8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a4e:
    mov.w @(DAT_ce31a76,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31a70
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x04,r5
    mov.l @(PTR_ce31a88,pc),r3
    jsr @r3
    mov r14,r4
    mov r0,r4
    tst r4,r4
    bt LAB_ce31a70
    mov.w @(DAT_ce31a78,pc),r3
    mov 0x02,r0
    add r3,r4
    mov.w r0,@(0x10,r4)

LAB_ce31a70:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a76:
    #data 0x0141
DAT_ce31a78:
    #data 0x0088
DAT_ce31a7a:
    #data 0x01f9
DAT_ce31a7c:
    #data 0x02a4
DAT_ce31a7e:
    #data 0x01a1
DAT_ce31a80:
    #data 0x01ac
DAT_ce31a82:
    #data 0x019e
DAT_ce31a84:
    #data 0x01a3
    #align4

PTR_ce31a88:
    #data loc_8c099bd4
PTR_ce31a8c:
    #data PTR_ce33a84
PTR_ce31a90:
    #data loc_8c05218a
PTR_ce31a94:
    #data loc_8c2896b0
PTR_ce31a98:
    #data loc_8c034e8c
PTR_ce31a9c:
    #data loc_8c056de4
PTR_ce31aa0:
    #data loc_8c05115a
PTR_ce31aa4:
    #data loc_8c034dee
PTR_ce31aa8:
    #data loc_8c051648

;=============================================

LAB_ce31aac:
    mov r4,r3
    mov.l @(PTR_ce31bd4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31abe:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    mov.l r12,@-r15
    mov.w @(DAT_ce31bc4,pc),r4
    sts.l PR,@-r15
    mov.l @(PTR_ce31bd8,pc),r12
    add r14,r4
    mov r13,r0
    nop
    mov.l @(PTR_ce31bdc,pc),r3
    mov 0x16,r5
    mov.w r0,@(0x2,r4)
    jsr @r3
    mov r14,r4
    bsr FUN_ce315fc
    mov r14,r4
    mov.l @(PTR_ce31be0,pc),r3
    mov 0x08,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31be4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31bc6,pc),r0
    mov.l @(PTR_ce31bec,pc),r4
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce31be8,pc),r5
    extu.b r0,r0
    cmp/eq 0x08,r0
    bf LAB_ce31b34
    mov.w @(DAT_ce31bc8,pc),r1
    mov 0x0E,r6
    mov.b @(0x2,r4),r0
    add r14,r1
    mov.b r0,@r1
    mov.w @(DAT_ce31bca,pc),r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r5,r3
    mov 0x15,r5
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.b @(0x6,r14),r0
    add 0x03,r0
    mov.b r0,@(0x6,r14)
    jsr @r12
    mov r14,r4
    bra LAB_ce31b8e
    nop

LAB_ce31b34:
    mov.w @(DAT_ce31bcc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31b46
    mov.w @(DAT_ce31bc8,pc),r0
    mov 0x34,r2
    bra LAB_ce31b52
    mov.b r2,@(r0,r14)

LAB_ce31b46:
    mov.w @(DAT_ce31bce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce31bc8,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce31b52:
    mov.w @(DAT_ce31bca,pc),r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r5,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.w @(DAT_ce31bce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31b82
    mov 0x15,r5
    mov.b @(0x6,r14),r0
    add 0x03,r0
    mov.b r0,@(0x6,r14)
    bra LAB_ce31b8a
    mov 0x0C,r6

LAB_ce31b82:
    mov.b @(0x6,r14),r0
    mov 0x0A,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31b8a:
    jsr @r12
    mov r14,r4

LAB_ce31b8e:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31b98:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31bf0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31bd0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31c1a
    mov.b @(0x6,r14),r0
    fldi0 fr3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31bd2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31bf8
    mova @(DAT_ce31bf4,pc),r0
    bra LAB_ce31bfc
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31bc4:
    #data 0x02a4
DAT_ce31bc6:
    #data 0x01e9
DAT_ce31bc8:
    #data 0x01a1
DAT_ce31bca:
    #data 0x01ac
DAT_ce31bcc:
    #data 0x0255
DAT_ce31bce:
    #data 0x01a3
DAT_ce31bd0:
    #data 0x0141
DAT_ce31bd2:
    #data 0x01d2
    #align4

PTR_ce31bd4:
    #data PTR_ce33a8c
PTR_ce31bd8:
    #data loc_8c034e8c
PTR_ce31bdc:
    #data loc_8c042008
PTR_ce31be0:
    #data loc_8c056de4
PTR_ce31be4:
    #data loc_8c05115a
PTR_ce31be8:
    #data loc_8c2896b0
PTR_ce31bec:
    #data DAT_ce33844
PTR_ce31bf0:
    #data loc_8c034dee
DAT_ce31bf4:
    #data 0x40a00000

;=============================================

LAB_ce31bf8:
    mova @(DAT_ce31ce0,pc),r0
    fmov.s @r0,fr3

LAB_ce31bfc:
    mov 0x5C,r0
    mov.l @(PTR_ce31cec,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31ce4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31ce8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c1a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31c20:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31cf0,pc),r3
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
    mov.w @(DAT_ce31cda,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31ca0
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31cda,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31cdc,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31cf4,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31cf8,pc),r2
    mov r14,r4
    mov 0x0D,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31ca0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31ca6:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31df4
    mov r4,r14
    mov.l @(PTR_ce31cf0,pc),r2
    fldi0 fr15
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d00
    mov 0x5C,r0
    mov.l @(PTR_ce31cfc,pc),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31cda:
    #data 0x041c
DAT_ce31cdc:
    #data 0x01f9
    #align4

DAT_ce31ce0:
    #data 0xc0a00000
DAT_ce31ce4:
    #data 0x414db6db
DAT_ce31ce8:
    #data 0xbf700000
PTR_ce31cec:
    #data loc_8c053082
PTR_ce31cf0:
    #data loc_8c034dee
PTR_ce31cf4:
    #data loc_8c0511b4
PTR_ce31cf8:
    #data loc_8c034e8c
PTR_ce31cfc:
    #data loc_8c051648

;=============================================

LAB_ce31d00:
    mov.w @(DAT_ce31e38,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31d38
    mov.b @(r0,r14),r3
    mov 0x00,r4
    mov.l @(PTR_ce31e44,pc),r0
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce31e3a,pc),r0
    mov.l @(PTR_ce31e48,pc),r3
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
    mov.w @(DAT_ce31e38,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce31d38:
    mov.w @(DAT_ce31e3c,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31e4c,pc),r0
    shll2 r3
    mov.l @(r0,r3),r2
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf LAB_ce31d94
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce31d94:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce31d9c:
    rts
    nop

LAB_ce31da0:
    mov.w @(DAT_ce31e3c,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce31e3e,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce31db4
    mova @(DAT_ce31e50,pc),r0
    bra LAB_ce31db8
    fmov.s @r0,fr3

LAB_ce31db4:
    mova @(DAT_ce31e54,pc),r0
    fmov.s @r0,fr3

LAB_ce31db8:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fldi0 fr3
    rts
    fmov fr3,@(r0,r4)

LAB_ce31dc4:
    mov.w @(DAT_ce31e3c,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce31e3e,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce31dd8
    mova @(DAT_ce31e58,pc),r0
    bra LAB_ce31ddc
    fmov.s @r0,fr3

LAB_ce31dd8:
    mova @(DAT_ce31e5c,pc),r0
    fmov.s @r0,fr3

LAB_ce31ddc:
    mov 0x68,r0
    rts
    fmov fr3,@(r0,r4)

LAB_ce31de2:
    mov.w @(DAT_ce31e3c,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    rts
    fmov fr4,@(r0,r4)

;=============================================

FUN_ce31df4:
    rts
    nop

LAB_ce31df8:
    mov r4,r3
    mov.l @(PTR_ce31e60,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31e0a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31e64,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce315fc
    mov r14,r4
    mov.l @(PTR_ce31e68,pc),r3
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31e40,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e6c
    mov.w @(DAT_ce31e42,pc),r0
    bra LAB_ce31e6e
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e38:
    #data 0x014b
DAT_ce31e3a:
    #data 0x01a1
DAT_ce31e3c:
    #data 0x0141
DAT_ce31e3e:
    #data 0x01d2
DAT_ce31e40:
    #data 0x0525
DAT_ce31e42:
    #data 0x01fa
    #align4

PTR_ce31e44:
    #data DAT_ce33847
PTR_ce31e48:
    #data loc_8c2896b0
PTR_ce31e4c:
    #data PTR_ce33a9c
DAT_ce31e50:
    #data 0x41555555
DAT_ce31e54:
    #data 0xc1555555
DAT_ce31e58:
    #data 0xc0555555
DAT_ce31e5c:
    #data 0x40555555
PTR_ce31e60:
    #data PTR_ce33aac
PTR_ce31e64:
    #data loc_8c056de4
PTR_ce31e68:
    #data loc_8c05115a

;=============================================

LAB_ce31e6c:
    mov.w @(DAT_ce31f8c,pc),r0

LAB_ce31e6e:
    mov.w @(r0,r14),r4
    mov.w @(DAT_ce31f8e,pc),r3
    extu.w r4,r4
    tst r3,r4
    bt LAB_ce31e8a
    mov.w @(DAT_ce31f90,pc),r0
    mov 0x01,r2
    mov.w @(DAT_ce31f92,pc),r3
    mov.w @(r0,r14),r1
    add r14,r3
    xor r2,r1
    mov.w r1,@(r0,r14)
    mov.b @(r0,r14),r0
    mov.b r0,@r3

LAB_ce31e8a:
    mova @(DAT_ce31f9c,pc),r0
    mov.l @(PTR_ce31fa4,pc),r4
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31fa0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f92,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31eac
    fmov.s @r4,fr4
    mova @(DAT_ce31fa8,pc),r0
    bra LAB_ce31eb0
    fmov.s @r0,fr3

LAB_ce31eac:
    mova @(DAT_ce31fac,pc),r0
    fmov.s @r0,fr3

LAB_ce31eb0:
    fadd fr3,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce31fb0,pc),r0
    fldi0 fr2
    mov r14,r4
    mov.l @(PTR_ce31fb4,pc),r3
    mov 0x0F,r6
    fsub fr3,fr4
    fmov.s @r0,fr3
    mov 0x5C,r0
    mov 0x15,r5
    fdiv fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr2,@(r0,r14)
    mov 0x14,r0
    mov.w r0,@(0x1e,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31eda:
    mov.w @(DAT_ce31f94,pc),r0
    mov 0x3E,r3
    mov 0x00,r5
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce31fb8,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    bra LAB_ce31e0a
    nop

LAB_ce31f04:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31fbc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31f96,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31f26
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31fc0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f26:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f2c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31fbc,pc),r3
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
    mov.w @(DAT_ce31f98,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31fc4
    mov 0x05,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    mov 0x00,r3
    mov.w @(DAT_ce31f9a,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce321a0
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f8c:
    #data 0x034a
DAT_ce31f8e:
    #data 0x0400
DAT_ce31f90:
    #data 0x0130
DAT_ce31f92:
    #data 0x01d2
DAT_ce31f94:
    #data 0x01a1
DAT_ce31f96:
    #data 0x0141
DAT_ce31f98:
    #data 0x041c
DAT_ce31f9a:
    #data 0x01f9
    #align4

DAT_ce31f9c:
    #data 0x41892492
DAT_ce31fa0:
    #data 0xbf092492
PTR_ce31fa4:
    #data loc_8c26a524
DAT_ce31fa8:
    #data 0x44200000
DAT_ce31fac:
    #data 0xc43aaaab
DAT_ce31fb0:
    #data 0x41a00000
PTR_ce31fb4:
    #data loc_8c034e8c
PTR_ce31fb8:
    #data loc_8c2896b0
PTR_ce31fbc:
    #data loc_8c034dee
PTR_ce31fc0:
    #data loc_8c053082

;=============================================

LAB_ce31fc4:
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1e,r14),r0
    cmp/pz r0
    bt LAB_ce32024
    mov.w @(DAT_ce320ba,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31fe4
    mov.w @(DAT_ce320bc,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32024
    bra LAB_ce31fec
    nop

LAB_ce31fe4:
    mov.w @(DAT_ce320bc,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce32024

LAB_ce31fec:
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    fldi0 fr4
    mov 0x11,r6
    add 0x01,r0
    mov.l @(PTR_ce320c8,pc),r3
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
    mov.l @(PTR_ce320cc,pc),r2
    mov 0x01,r5
    mov 0x0D,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce320d0,pc),r3
    mov 0x34,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32024:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3202a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce320d4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce3203e
    bra LAB_ce32136
    nop

LAB_ce3203e:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce320d8,pc),r3
    add 0x01,r0
    jsr @r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce320ba,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce320be,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt/s LAB_ce320ec
    fldi0 fr4
    mov.w @(DAT_ce320c0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32076
    mov.w @(DAT_ce320c2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32082
    bra LAB_ce320ec
    nop

LAB_ce32076:
    mov.w @(DAT_ce320c4,pc),r0
    mov.w @(DAT_ce320c6,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce320ec

LAB_ce32082:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov 0x02,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce320dc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce320e0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce320ba,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce320aa
    mova @(DAT_ce320e4,pc),r0
    bra LAB_ce320ae
    fmov.s @r0,fr3

LAB_ce320aa:
    mova @(DAT_ce320e8,pc),r0
    fmov.s @r0,fr3

LAB_ce320ae:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    bra LAB_ce3212a
    mov 0x12,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320ba:
    #data 0x01d2
DAT_ce320bc:
    #data 0x01fd
DAT_ce320be:
    #data 0x0130
DAT_ce320c0:
    #data 0x0525
DAT_ce320c2:
    #data 0x01fe
DAT_ce320c4:
    #data 0x034a
DAT_ce320c6:
    #data 0x0400
    #align4

PTR_ce320c8:
    #data loc_8c034e8c
PTR_ce320cc:
    #data loc_8c02fec4
PTR_ce320d0:
    #data loc_8c04223a
PTR_ce320d4:
    #data loc_8c034dee
PTR_ce320d8:
    #data loc_8c02fd62
DAT_ce320dc:
    #data 0x41ab6db6
DAT_ce320e0:
    #data 0xbf092492
DAT_ce320e4:
    #data 0x41fcd000
DAT_ce320e8:
    #data 0xc1fcd000

;=============================================

LAB_ce320ec:
    mov 0x00,r0
    mov.l @(PTR_ce321f8,pc),r4
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce321ee,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3211c
    mov.w @(DAT_ce321f0,pc),r0
    mov 0x22,r1
    add r14,r1
    mov.b @(r0,r14),r3
    extu.b r3,r3
    add r3,r4
    mov.b @(0x2,r4),r0
    bra LAB_ce32128
    mov.b r0,@r1

LAB_ce3211c:
    mov.w @(DAT_ce321f0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    mov.b @(r0,r4),r3
    mov 0x22,r0
    mov.b r3,@(r0,r14)

LAB_ce32128:
    mov 0x13,r6

LAB_ce3212a:
    lds.l @r15+,PR
    mov.l @(PTR_ce321fc,pc),r3
    mov 0x15,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32136:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3213c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32200,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce32204,pc),r2
    mov.w @(DAT_ce321f2,pc),r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32208,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce32168
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    bra LAB_ce321a0
    mov.l @r15+,r14

LAB_ce32168:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3216e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32200,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3219a
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3220c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3219a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce321a0:
    mov.l r14,@-r15
    mov 0x5C,r0
    fldi0 fr4
    mov r4,r14
    sts.l PR,@-r15
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce321fc,pc),r3
    mov 0x01,r5
    fmov fr4,@(r0,r14)
    mov 0x04,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32210,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce321f4,pc),r0
    mov r14,r4
    mov.l @(PTR_ce32214,pc),r3
    mov 0x34,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce321dc:
    mov r4,r3
    mov.l @(PTR_ce32218,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce321ee:
    #data 0x0130
DAT_ce321f0:
    #data 0x01a3
DAT_ce321f2:
    #data 0x07d0
DAT_ce321f4:
    #data 0x041c
    #align4

PTR_ce321f8:
    #data DAT_ce3384e
PTR_ce321fc:
    #data loc_8c034e8c
PTR_ce32200:
    #data loc_8c034dee
PTR_ce32204:
    #data loc_8c033718
PTR_ce32208:
    #data loc_8c052ce2
PTR_ce3220c:
    #data loc_8c051648
PTR_ce32210:
    #data loc_8c0511b4
PTR_ce32214:
    #data loc_8c04223a
PTR_ce32218:
    #data PTR_ce33ac4

;=============================================

LAB_ce3221c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3234a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce32242
    mov r14,r4
    mov.w @(DAT_ce3234e,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3234c,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32242:
    bsr FUN_ce315fc
    nop
    mov.w @(DAT_ce32350,pc),r0
    mov 0x40,r2
    mov 0x00,r13
    mov.l @(PTR_ce32364,pc),r3
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
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x22,r0
    mov.b r13,@(r0,r14)
    mov 0x21,r0
    mov.b r13,@(r0,r14)
    mov 0x01,r2
    mov.w @(DAT_ce32352,pc),r0
    mov 0x16,r5
    mov r13,r6
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce32368,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3236c,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32296:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32354,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32356,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3234a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce322ba
    bra LAB_ce322bc
    mov 0x02,r3

LAB_ce322ba:
    mov 0x00,r3

LAB_ce322bc:
    mov.w @(DAT_ce32358,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32370,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3235a,pc),r0
    mov.b @(r0,r14),r2
    cmp/pl r2
    bf/s LAB_ce322ee
    mov 0x00,r13
    mov.l @(PTR_ce32374,pc),r3
    mov 0x09,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3235c,pc),r4
    mov r0,r5
    tst r5,r5
    bf/s LAB_ce322e8
    add r14,r4
    bra LAB_ce322ec
    mov 0x01,r0

LAB_ce322e8:
    mov r13,r0
    nop

LAB_ce322ec:
    mov.b r0,@(0x8,r4)

LAB_ce322ee:
    mov.w @(DAT_ce3235e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32340
    mov.w @(DAT_ce3234e,pc),r0
    mov 0x02,r5
    mov.l @(PTR_ce32374,pc),r3
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3235e,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov r0,r4
    tst r4,r4
    bt LAB_ce32322
    mov.w @(DAT_ce32360,pc),r3
    mov 0x04,r0
    add r3,r4
    mov.b r0,@(0xd,r4)
    mov 0x03,r0
    mov.w r0,@(0x1e,r14)

LAB_ce32322:
    mova @(DAT_ce32378,pc),r0
    mov.l @(PTR_ce32380,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce3237c,pc),r0
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

LAB_ce32340:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3234a:
    #data 0x0255
DAT_ce3234c:
    #data 0x00ff
DAT_ce3234e:
    #data 0x03f0
DAT_ce32350:
    #data 0x01a1
DAT_ce32352:
    #data 0x01a3
DAT_ce32354:
    #data 0x03f8
DAT_ce32356:
    #data 0x0328
DAT_ce32358:
    #data 0x03f1
DAT_ce3235a:
    #data 0x014b
DAT_ce3235c:
    #data 0x02a4
DAT_ce3235e:
    #data 0x0141
DAT_ce32360:
    #data 0x0088
    #align4

PTR_ce32364:
    #data loc_8c2896b0
PTR_ce32368:
    #data loc_8c034e8c
PTR_ce3236c:
    #data loc_8c05115a
PTR_ce32370:
    #data loc_8c034dee
PTR_ce32374:
    #data loc_8c099bd4
DAT_ce32378:
    #data 0x41555555
DAT_ce3237c:
    #data 0x42892492
PTR_ce32380:
    #data loc_8c050834

;=============================================

LAB_ce32384:
    mov.w @(DAT_ce3248e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32490,pc),r0
    mov.l @(PTR_ce3249c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce323d2
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1e,r14),r0
    cmp/pl r0
    bt LAB_ce323d2
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce324a0,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32492,pc),r4
    add r14,r4
    mov.b @(0x8,r4),r0
    tst r0,r0
    bt LAB_ce3244a
    mov.w @(DAT_ce32494,pc),r0
    mov 0x08,r3
    bra LAB_ce3244a
    mov.b r3,@(r0,r14)

LAB_ce323d2:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/pz r0
    bt LAB_ce3244a
    mov 0x01,r0
    mov.l @(PTR_ce324a4,pc),r13
    mov.w r0,@(0x1c,r14)
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce32418
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r13
    mov r14,r4
    mov r0,r4
    tst r4,r4
    bt/s LAB_ce32406
    mov 0x00,r5
    mov.w @(DAT_ce32496,pc),r2
    mov 0x00,r0
    add r2,r4
    mov.b r0,@(0xd,r4)

LAB_ce32406:
    jsr @r13
    mov r14,r4
    mov r0,r4
    tst r4,r4
    bt LAB_ce32418
    mov.w @(DAT_ce32496,pc),r2
    mov 0x01,r0
    add r2,r4
    mov.b r0,@(0xd,r4)

LAB_ce32418:
    mov 0x08,r5
    jsr @r13
    mov r14,r4
    mov r0,r4
    tst r4,r4
    bt LAB_ce3244a
    mov 0x22,r0
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r4)
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    mov 0x07,r3
    mov.b @(r0,r14),r2
    and r3,r2
    mov.b r2,@(r0,r14)
    mov 0x21,r0
    mov.b @(r0,r14),r1
    mov.b r1,@(r0,r4)
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    and r3,r1
    mov.b r1,@(r0,r14)

LAB_ce3244a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32452:
    mov.w @(DAT_ce3248e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32490,pc),r0
    mov.l @(PTR_ce3249c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32488
    mov.l @(PTR_ce324a8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32498,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3249a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce32488:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3248e:
    #data 0x03f8
DAT_ce32490:
    #data 0x0328
DAT_ce32492:
    #data 0x02a4
DAT_ce32494:
    #data 0x0142
DAT_ce32496:
    #data 0x0088
DAT_ce32498:
    #data 0x03f9
DAT_ce3249a:
    #data 0x0327
    #align4

PTR_ce3249c:
    #data loc_8c034dee
PTR_ce324a0:
    #data loc_8c034e8c
PTR_ce324a4:
    #data loc_8c099bd4
PTR_ce324a8:
    #data loc_8c051648

;=============================================

LAB_ce324ac:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt LAB_ce324ce
    mov.l @(PTR_ce325d4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324fe
    lds.l @r15+,PR
    mov.l @(PTR_ce325d8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce324ce:
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x14,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x04,r6
    mov.w @(DAT_ce325ce,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce325d0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce325dc,pc),r3
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

LAB_ce324fe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32504:
    mov r4,r3
    mov.l @(PTR_ce325e0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32516:
    mov.w @(DAT_ce325d2,pc),r0
    mov 0x3D,r3
    mov 0x00,r5
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce325e4,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    bra LAB_ce31e0a
    nop

LAB_ce32540:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce325d4,pc),r3
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
    mov.w @(DAT_ce325ce,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf/s LAB_ce325f0
    fldi0 fr4
    mov 0x05,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r3
    mov.w @(DAT_ce325ce,pc),r0
    mov 0x01,r5
    mov 0x04,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce325d0,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce325dc,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce325e8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce325ec,pc),r3
    mov 0x34,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325ce:
    #data 0x041c
DAT_ce325d0:
    #data 0x01f9
DAT_ce325d2:
    #data 0x01a1
    #align4

PTR_ce325d4:
    #data loc_8c034dee
PTR_ce325d8:
    #data loc_8c051648
PTR_ce325dc:
    #data loc_8c034e8c
PTR_ce325e0:
    #data PTR_ce33ad4
PTR_ce325e4:
    #data loc_8c2896b0
PTR_ce325e8:
    #data loc_8c0511b4
PTR_ce325ec:
    #data loc_8c04223a

;=============================================

LAB_ce325f0:
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1e,r14),r0
    cmp/pz r0
    bt LAB_ce32656
    mov.w @(DAT_ce326f2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32648
    mov.w @(DAT_ce326f4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32618
    mov.w @(DAT_ce326f2,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32656
    bra LAB_ce32620
    nop

LAB_ce32618:
    mov.w @(DAT_ce326f2,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce32656

LAB_ce32620:
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce32700,pc),r3
    mov 0x11,r6
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
    mov.l @(PTR_ce32704,pc),r2
    mov 0x34,r5
    jsr @r2
    mov r14,r4

LAB_ce32648:
    lds.l @r15+,PR
    mov.l @(PTR_ce32708,pc),r3
    mov r14,r4
    mov 0x0D,r6
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32656:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3265c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3270c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3275a
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32710,pc),r3
    add 0x01,r0
    jsr @r3
    mov.b r0,@(0x6,r14)
    mov.l @(PTR_ce32700,pc),r2
    mov 0x15,r5
    mov 0x12,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce326f6,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce326f4,pc),r0
    mov.b r1,@(r0,r14)
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt LAB_ce32724
    mov.w @(DAT_ce326f8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce326aa
    mov.w @(DAT_ce326fa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce326b6
    bra LAB_ce32724
    nop

LAB_ce326aa:
    mov.w @(DAT_ce326fc,pc),r0
    mov.w @(DAT_ce326fe,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce32724

LAB_ce326b6:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov 0x02,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32714,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32718,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce326f4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce326de
    mova @(DAT_ce3271c,pc),r0
    bra LAB_ce326e2
    fmov.s @r0,fr3

LAB_ce326de:
    mova @(DAT_ce32720,pc),r0
    fmov.s @r0,fr3

LAB_ce326e2:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326f2:
    #data 0x01fd
DAT_ce326f4:
    #data 0x01d2
DAT_ce326f6:
    #data 0x0130
DAT_ce326f8:
    #data 0x0525
DAT_ce326fa:
    #data 0x01fe
DAT_ce326fc:
    #data 0x034a
DAT_ce326fe:
    #data 0x0400
    #align4

PTR_ce32700:
    #data loc_8c034e8c
PTR_ce32704:
    #data loc_8c04223a
PTR_ce32708:
    #data loc_8c02fec4
PTR_ce3270c:
    #data loc_8c034dee
PTR_ce32710:
    #data loc_8c02fd62
DAT_ce32714:
    #data 0x41ab6db6
DAT_ce32718:
    #data 0xbf092492
DAT_ce3271c:
    #data 0x41fcd000
DAT_ce32720:
    #data 0xc1fcd000

;=============================================

LAB_ce32724:
    mov.w @(DAT_ce32824,pc),r0
    mov.l @(r0,r14),r2
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fmov.s @(r0,r2),fr4
    mova @(DAT_ce32830,pc),r0
    fsub fr3,fr4
    fmov.s @r0,fr3
    mov 0x5C,r0
    fdiv fr3,fr4
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32834,pc),r0
    fmov.s @r0,fr2
    mov 0x68,r0
    fdiv fr2,fr4
    fneg fr4
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32838,pc),r0
    fmov.s @r0,fr1
    mov 0x60,r0
    fmov fr1,@(r0,r14)
    mova @(DAT_ce3283c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x00,r0
    mov.w r0,@(0x1c,r14)

LAB_ce3275a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32760:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32840,pc),r3
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
    bf/s LAB_ce327bc
    fldi0 fr15
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce327bc:
    mov.w @(DAT_ce32826,pc),r0
    mov.w @(DAT_ce32828,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce327ea
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce3282a,pc),r1
    extu.w r3,r3
    tst r1,r3
    bt LAB_ce327dc
    mov.l @(DAT_ce32844,pc),r2
    mov 0x34,r0
    lds r2,FPUL
    bra LAB_ce327e4
    fsts FPUL,fr3

LAB_ce327dc:
    mov.l @(DAT_ce32848,pc),r2
    mov 0x34,r0
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce327e4:
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce327ea:
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce3286a
    mov.w @(DAT_ce3282c,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce32850
    mov.w @(DAT_ce32824,pc),r0
    mov.w @(DAT_ce3282e,pc),r1
    mov.l @(r0,r14),r0
    mov.b @(r0,r1),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32810
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce3286a

LAB_ce32810:
    mov.w @(DAT_ce32824,pc),r0
    mov 0x3D,r6
    mov.l @(PTR_ce3284c,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce3285c
    bra LAB_ce3286a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32824:
    #data 0x020c
DAT_ce32826:
    #data 0x0340
DAT_ce32828:
    #data 0x0c00
DAT_ce3282a:
    #data 0x0400
DAT_ce3282c:
    #data 0x0525
DAT_ce3282e:
    #data 0x01f9
    #align4

DAT_ce32830:
    #data 0x41d55555
DAT_ce32834:
    #data 0x42555555
DAT_ce32838:
    #data 0x41892492
DAT_ce3283c:
    #data 0xbf892492
PTR_ce32840:
    #data loc_8c034dee
DAT_ce32844:
    #data 0x40d55555
DAT_ce32848:
    #data 0xc0d55555
PTR_ce3284c:
    #data loc_8c05c6c8

;=============================================

LAB_ce32850:
    mov.w @(DAT_ce32962,pc),r0
    mov.w @(DAT_ce32964,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce3286a

LAB_ce3285c:
    mov.l @(PTR_ce32974,pc),r3
    mov 0x01,r0
    mov 0x15,r5
    mov.w r0,@(0x1c,r14)
    mov 0x10,r6
    jsr @r3
    mov r14,r4

LAB_ce3286a:
    mov.l @(PTR_ce32978,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce328aa
    mov.b @(0x6,r14),r0
    mov 0x01,r5
    mov.l @(PTR_ce32974,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
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
    mov.l @(PTR_ce3297c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32980,pc),r3
    mov r14,r4
    mov 0x34,r5
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce328aa:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce328b2:
    mov r4,r3
    mov.l @(PTR_ce32984,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce328c4:
    mov.w @(DAT_ce32966,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce328e0
    mov.w @(DAT_ce3296a,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32968,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce328e0:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32988,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3298c,pc),r2
    mov 0x01,r5
    mov 0x0D,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32990,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3296c,pc),r0
    mov 0x48,r2
    mov 0x00,r4
    mov.l @(PTR_ce32994,pc),r3
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
    mov.w @(DAT_ce3296e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x0E,r0
    bt LAB_ce32936
    mov.w @(DAT_ce32970,pc),r0
    mov 0x01,r2
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)

LAB_ce32936:
    mov.w @(DAT_ce32970,pc),r0
    mov.l @(PTR_ce329a0,pc),r4
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce32972,pc),r0
    extu.b r3,r3
    mov.w r3,@(r0,r14)
    mova @(DAT_ce32998,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3299c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32970,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce329a8
    fmov.s @r4,fr4
    mova @(DAT_ce329a4,pc),r0
    bra LAB_ce329ac
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32962:
    #data 0x0348
DAT_ce32964:
    #data 0x0300
DAT_ce32966:
    #data 0x0255
DAT_ce32968:
    #data 0x00ff
DAT_ce3296a:
    #data 0x03f0
DAT_ce3296c:
    #data 0x01a1
DAT_ce3296e:
    #data 0x01e9
DAT_ce32970:
    #data 0x01d2
DAT_ce32972:
    #data 0x0130
    #align4

PTR_ce32974:
    #data loc_8c034e8c
PTR_ce32978:
    #data loc_8c052ce2
PTR_ce3297c:
    #data loc_8c0511b4
PTR_ce32980:
    #data loc_8c04223a
PTR_ce32984:
    #data PTR_ce33aec
PTR_ce32988:
    #data loc_8c05115a
PTR_ce3298c:
    #data loc_8c02fec4
PTR_ce32990:
    #data FUN_ce315fc
PTR_ce32994:
    #data loc_8c2896b0
DAT_ce32998:
    #data 0x41092492
DAT_ce3299c:
    #data 0xbe892492
PTR_ce329a0:
    #data loc_8c26a524
DAT_ce329a4:
    #data 0x443aaaab

;=============================================

LAB_ce329a8:
    mova @(DAT_ce32aec,pc),r0
    fmov.s @r0,fr3

LAB_ce329ac:
    fadd fr3,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce32af0,pc),r0
    fldi0 fr2
    fsub fr3,fr4
    fmov.s @r0,fr3
    mov 0x5C,r0
    fdiv fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr2,@(r0,r14)
    mov 0x21,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32ad8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x0E,r0
    bf/s LAB_ce329d8
    mov 0x16,r5
    bra LAB_ce329da
    mov 0x06,r6

LAB_ce329d8:
    mov 0x0F,r6

LAB_ce329da:
    lds.l @r15+,PR
    mov.l @(PTR_ce32af4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce329e4:
    mov.w @(DAT_ce32ada,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32adc,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32ade,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32a04
    bra LAB_ce32a06
    mov 0x02,r3

LAB_ce32a04:
    mov 0x00,r3

LAB_ce32a06:
    mov.w @(DAT_ce32ae0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32af8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32ae2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32a2e
    mov.w @(DAT_ce32ae4,pc),r0
    mov 0x23,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32afc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a2e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a34:
    mov.w @(DAT_ce32ada,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32adc,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32ade,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32a56
    bra LAB_ce32a58
    mov 0x02,r3

LAB_ce32a56:
    mov 0x00,r3

LAB_ce32a58:
    mov.w @(DAT_ce32ae0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32af8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce32af4,pc),r13
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
    mov.w @(DAT_ce32ae6,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf/s LAB_ce32b00
    fldi0 fr4
    mov 0x05,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r3
    mov.w @(DAT_ce32ae6,pc),r0
    mov 0x01,r5
    mov 0x04,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32ae8,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    jsr @r13
    mov r14,r4
    bra LAB_ce32b84
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ad8:
    #data 0x01e9
DAT_ce32ada:
    #data 0x03f8
DAT_ce32adc:
    #data 0x0328
DAT_ce32ade:
    #data 0x0255
DAT_ce32ae0:
    #data 0x03f1
DAT_ce32ae2:
    #data 0x0141
DAT_ce32ae4:
    #data 0x01f5
DAT_ce32ae6:
    #data 0x041c
DAT_ce32ae8:
    #data 0x01f9
    #align4

DAT_ce32aec:
    #data 0xc43aaaab
DAT_ce32af0:
    #data 0x42555555
PTR_ce32af4:
    #data loc_8c034e8c
PTR_ce32af8:
    #data loc_8c034dee
PTR_ce32afc:
    #data loc_8c053082

;=============================================

LAB_ce32b00:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/pz r0
    bt LAB_ce32b84
    mov.w @(DAT_ce32c02,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32b84
    mov.w @(DAT_ce32c04,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32b28
    mov.w @(DAT_ce32c02,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32b84
    bra LAB_ce32b30
    nop

LAB_ce32b28:
    mov.w @(DAT_ce32c02,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce32b84

LAB_ce32b30:
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32c04,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce32c06,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32c08,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x0E,r0
    bf/s LAB_ce32b68
    mov 0x16,r5
    bra LAB_ce32b6a
    mov 0x0E,r6

LAB_ce32b68:
    mov 0x07,r6

LAB_ce32b6a:
    jsr @r13
    mov r14,r4
    mov.l @(PTR_ce32c18,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov r0,r4
    tst r4,r4
    bt LAB_ce32b84
    mov.w @(DAT_ce32c0a,pc),r2
    mov 0x01,r0
    add r2,r4
    mov.b r0,@(0xd,r4)

LAB_ce32b84:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32b8c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32c0c,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32c0e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32c10,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32bae
    bra LAB_ce32bb0
    mov 0x02,r3

LAB_ce32bae:
    mov 0x00,r3

LAB_ce32bb0:
    mov.w @(DAT_ce32c12,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32c1c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32c14,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32bfa
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov 0x01,r3
    mov r15,r5
    add 0x01,r0
    mov r3,r6
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32c16,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32c14,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce32c20,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32c24,pc),r0
    mov.l @(PTR_ce32c28,pc),r2
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4

LAB_ce32bfa:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c02:
    #data 0x01fd
DAT_ce32c04:
    #data 0x01d2
DAT_ce32c06:
    #data 0x0130
DAT_ce32c08:
    #data 0x01e9
DAT_ce32c0a:
    #data 0x0088
DAT_ce32c0c:
    #data 0x03f8
DAT_ce32c0e:
    #data 0x0328
DAT_ce32c10:
    #data 0x0255
DAT_ce32c12:
    #data 0x03f1
DAT_ce32c14:
    #data 0x0141
DAT_ce32c16:
    #data 0x03f0
    #align4

PTR_ce32c18:
    #data loc_8c099bd4
PTR_ce32c1c:
    #data loc_8c034dee
DAT_ce32c20:
    #data 0xc23aaaaa
DAT_ce32c24:
    #data 0x434db6db
PTR_ce32c28:
    #data loc_8c050834

;=============================================

LAB_ce32c2c:
    mov.w @(DAT_ce32d6c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x00,r13
    mov.w @(DAT_ce32d6e,pc),r0
    mov.l @(PTR_ce32d80,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32c72
    mov.w @(DAT_ce32d70,pc),r0
    mov r14,r4
    mov.l @(PTR_ce32d84,pc),r2
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32d72,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32d74,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32c72:
    mov.w @(DAT_ce32d76,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32c98
    mov.w @(DAT_ce32d76,pc),r0
    mov 0x03,r5
    mov.l @(PTR_ce32d88,pc),r1
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    mov r0,r4
    tst r4,r4
    bt LAB_ce32c98
    mov 0x21,r0
    mov.b r13,@(r0,r4)

LAB_ce32c98:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32ca0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32d80,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32cde
    mov.w @(DAT_ce32d70,pc),r0
    mov 0x00,r4
    fldi0 fr4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32d72,pc),r0
    mov.l @(PTR_ce32d8c,pc),r3
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
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

LAB_ce32cde:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ce4:
    mov r4,r3
    mov.l @(PTR_ce32d90,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32cf6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x15,r6
    mov.l @(PTR_ce32d94,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32d78,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce32d20
    mov 0x00,r4
    mov.w @(DAT_ce32d7a,pc),r0
    mov 0x4C,r2
    bra LAB_ce32d26
    mov.b r2,@(r0,r14)

LAB_ce32d20:
    mov.w @(DAT_ce32d7a,pc),r0
    mov 0x08,r3
    mov.b r3,@(r0,r14)

LAB_ce32d26:
    mov.w @(DAT_ce32d7c,pc),r0
    mov.l @(PTR_ce32d98,pc),r3
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
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32d4a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32d80,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32d64
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32d8c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32d64:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d6c:
    #data 0x03f8
DAT_ce32d6e:
    #data 0x0328
DAT_ce32d70:
    #data 0x03f9
DAT_ce32d72:
    #data 0x0327
DAT_ce32d74:
    #data 0x01d4
DAT_ce32d76:
    #data 0x0141
DAT_ce32d78:
    #data 0x0255
DAT_ce32d7a:
    #data 0x01a1
DAT_ce32d7c:
    #data 0x01ac
    #align4

PTR_ce32d80:
    #data loc_8c034dee
PTR_ce32d84:
    #data loc_8c05176e
PTR_ce32d88:
    #data loc_8c09af40
PTR_ce32d8c:
    #data loc_8c051648
PTR_ce32d90:
    #data PTR_ce33b04
PTR_ce32d94:
    #data loc_8c034e8c
PTR_ce32d98:
    #data loc_8c2896b0

;=============================================

LAB_ce32d9c:
    mov r4,r3
    mov.l @(PTR_ce32ed8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32dae:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce32edc,pc),r3
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
    mov.w @(DAT_ce32ec6,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32ec8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ee0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32ee4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32eca,pc),r0
    mov 0x4A,r2
    mov.l @(PTR_ce32ee8,pc),r3
    mov 0x16,r6
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
    mov.l @(PTR_ce32eec,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32e24:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32ef0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32e44
    mov.l @(PTR_ce32ef4,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e44:
    mov.w @(DAT_ce32ecc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32e66
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32ef8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32efc,pc),r0
    mov.l @(PTR_ce32f00,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32e66:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e6e:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32ec6,pc),r1
    mov.l @(PTR_ce32f04,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce32e86:
    mov.w @(DAT_ce32ece,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32ed0,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32f3c
    mov.w @(DAT_ce32ed2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32f0c
    mov.w @(DAT_ce32ed4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32f0c
    mov.l @(PTR_ce32f08,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32f3c
    mov r0,r4
    bra LAB_ce32f2e
    mov 0x00,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ec6:
    #data 0x01f9
DAT_ce32ec8:
    #data 0x041c
DAT_ce32eca:
    #data 0x01a1
DAT_ce32ecc:
    #data 0x0141
DAT_ce32ece:
    #data 0x01fa
DAT_ce32ed0:
    #data 0x0c00
DAT_ce32ed2:
    #data 0x01fe
DAT_ce32ed4:
    #data 0x01a3
    #align4

PTR_ce32ed8:
    #data PTR_ce33b0c
PTR_ce32edc:
    #data loc_8c035162
PTR_ce32ee0:
    #data loc_8c05218a
PTR_ce32ee4:
    #data loc_8c05115a
PTR_ce32ee8:
    #data loc_8c2896b0
PTR_ce32eec:
    #data loc_8c034e8c
PTR_ce32ef0:
    #data loc_8c034dee
PTR_ce32ef4:
    #data loc_8c051648
DAT_ce32ef8:
    #data 0xc1d55555
DAT_ce32efc:
    #data 0x432b6db6
PTR_ce32f00:
    #data loc_8c050ea4
PTR_ce32f04:
    #data PTR_ce33b14
PTR_ce32f08:
    #data loc_8c045790

;=============================================

LAB_ce32f0c:
    mov.w @(DAT_ce32fe8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32f3c
    mov.w @(DAT_ce32fea,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32f3c
    mov.l @(PTR_ce32ff8,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32f3c
    mov r0,r4
    mov 0x01,r2

LAB_ce32f2e:
    mov.w @(DAT_ce32fec,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f3c:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f44:
    rts
    mov 0x00,r0

LAB_ce32f48:
    mov.w @(DAT_ce32fee,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32ff0,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32fa2
    mov.w @(DAT_ce32fe8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32fa2
    mov.w @(DAT_ce32fea,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32fa2
    mova @(DAT_ce32ffc,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32fa2
    mov.l @(PTR_ce32ff8,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32fa2
    mov r0,r4
    mov.w @(DAT_ce32fec,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fa2:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32faa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33000,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32fec,pc),r0
    mov r14,r4
    mov.l @(PTR_ce33004,pc),r1
    mov.b @(r0,r14),r0
    lds.l @r15+,PR
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;=============================================

FUN_ce32fca:
    mov.w @(DAT_ce32ff2,pc),r0
    mov.w @(DAT_ce32ff4,pc),r1
    mov.l @(r0,r4),r3
    mov.w @(DAT_ce32ff4,pc),r0
    add r3,r1
    mov.w @(r0,r4),r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.w @(DAT_ce32ff2,pc),r0
    mov.l @(r0,r4),r5
    mov.w @(DAT_ce32ff4,pc),r0
    mov.b @(r0,r5),r3
    mov.w @(DAT_ce32ff6,pc),r0
    rts
    mov.b r3,@(r0,r5)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32fe8:
    #data 0x01fe
DAT_ce32fea:
    #data 0x01a3
DAT_ce32fec:
    #data 0x01f7
DAT_ce32fee:
    #data 0x01fa
DAT_ce32ff0:
    #data 0x0c00
DAT_ce32ff2:
    #data 0x01c8
DAT_ce32ff4:
    #data 0x0130
DAT_ce32ff6:
    #data 0x01d2
    #align4

PTR_ce32ff8:
    #data loc_8c045790
DAT_ce32ffc:
    #data 0x43092492
PTR_ce33000:
    #data loc_8c056f2a
PTR_ce33004:
    #data PTR_ce33b24

;=============================================

LAB_ce33008:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    bsr FUN_ce32fca
    mov r4,r14
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce33044
    mov.w @(DAT_ce33104,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33106,pc),r0
    mov.b r1,@(r0,r14)
    add 0xF6,r0
    mov.l @(r0,r14),r2
    mov.w @(DAT_ce33104,pc),r0
    mov.w @(r0,r2),r1
    xor r3,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce33108,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce33104,pc),r0
    mov.b @(r0,r4),r2
    mov.w @(DAT_ce33106,pc),r0
    mov.b r2,@(r0,r4)

LAB_ce33044:
    mova @(DAT_ce33110,pc),r0
    mov.l @(PTR_ce33118,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33114,pc),r0
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
    mov.w @(DAT_ce3310a,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce3311c,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33120,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov r0,r4
    tst r4,r4
    bt LAB_ce33086
    mov.w @(DAT_ce3310c,pc),r2
    mov 0x03,r0
    add r2,r4
    mov.b r0,@(0xd,r4)

LAB_ce33086:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3308e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    bsr FUN_ce32fca
    mov r4,r14
    mov 0x22,r0
    mov.b @(r0,r14),r2
    mov 0x01,r5
    extu.b r2,r2
    tst r5,r2
    bt LAB_ce330cc
    mov.w @(DAT_ce33104,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33106,pc),r0
    mov.b r1,@(r0,r14)
    add 0xF6,r0
    mov.l @(r0,r14),r2
    mov.w @(DAT_ce33104,pc),r0
    mov.w @(r0,r2),r1
    xor r3,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce33108,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce33104,pc),r0
    mov.b @(r0,r4),r2
    mov.w @(DAT_ce33106,pc),r0
    mov.b r2,@(r0,r4)

LAB_ce330cc:
    mov.w @(DAT_ce3310a,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    add 0x34,r0
    mov.b r5,@(r0,r14)
    mova @(DAT_ce33124,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33128,pc),r0
    mov.l @(PTR_ce33118,pc),r3
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
    mov.l @(PTR_ce3311c,pc),r2
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33104:
    #data 0x0130
DAT_ce33106:
    #data 0x01d2
DAT_ce33108:
    #data 0x01c8
DAT_ce3310a:
    #data 0x01a0
DAT_ce3310c:
    #data 0x0088
    #align4

DAT_ce33110:
    #data 0xc2dc0000
DAT_ce33114:
    #data 0x432b6db6
PTR_ce33118:
    #data loc_8c103660
PTR_ce3311c:
    #data loc_8c034e8c
PTR_ce33120:
    #data loc_8c099bd4
DAT_ce33124:
    #data 0xc2baaaaa
DAT_ce33128:
    #data 0x43092492

;=============================================

LAB_ce3312c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    bsr FUN_ce32fca
    mov r4,r14
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce33168
    mov.w @(DAT_ce3322e,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33230,pc),r0
    mov.b r1,@(r0,r14)
    add 0xF6,r0
    mov.l @(r0,r14),r2
    mov.w @(DAT_ce3322e,pc),r0
    mov.w @(r0,r2),r1
    xor r3,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce33232,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce3322e,pc),r0
    mov.b @(r0,r4),r2
    mov.w @(DAT_ce33230,pc),r0
    mov.b r2,@(r0,r4)

LAB_ce33168:
    mov.w @(DAT_ce33234,pc),r0
    mov 0x0A,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33240,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33244,pc),r0
    mov.l @(PTR_ce33248,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3324c,pc),r2
    mov 0x0F,r5
    mov 0x04,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3319c:
    mov.w @(DAT_ce33236,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33250,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce331ba:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33254,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce331d8
    mov.l @(PTR_ce33258,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce3328e
    nop

LAB_ce331d8:
    mov.w @(DAT_ce33238,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce331ea
    mov.l @(PTR_ce3325c,pc),r3
    mov 0x06,r5
    mov.w @(DAT_ce33232,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4

LAB_ce331ea:
    mov.w @(DAT_ce3323a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce331fe
    mov 0x00,r13
    mov.l @(PTR_ce33260,pc),r3
    mov 0x4F,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce331fe:
    mov.w @(DAT_ce3323c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3328e
    mov.b @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce33264
    mov.b r13,@(r0,r14)
    mov 0x0E,r2
    mov.w @(DAT_ce33232,pc),r0
    mov.l @(r0,r14),r3
    add 0xEC,r0
    mov.l r14,@(r0,r3)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0x2E,r0
    mov.b r2,@(r0,r3)
    add 0xD2,r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov 0x20,r2
    mov.b r2,@(r0,r3)
    bra LAB_ce3328e
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3322e:
    #data 0x0130
DAT_ce33230:
    #data 0x01d2
DAT_ce33232:
    #data 0x01c8
DAT_ce33234:
    #data 0x01a0
DAT_ce33236:
    #data 0x01ea
DAT_ce33238:
    #data 0x014b
DAT_ce3323a:
    #data 0x0140
DAT_ce3323c:
    #data 0x0141
    #align4

DAT_ce33240:
    #data 0xc2aa0000
DAT_ce33244:
    #data 0x42b84924
PTR_ce33248:
    #data loc_8c103660
PTR_ce3324c:
    #data loc_8c034e8c
PTR_ce33250:
    #data PTR_ce33b30
PTR_ce33254:
    #data loc_8c034dee
PTR_ce33258:
    #data loc_8c051648
PTR_ce3325c:
    #data loc_8c035162
PTR_ce33260:
    #data loc_8c04223a

;=============================================

LAB_ce33264:
    mov.b r13,@(r0,r14)
    mova @(DAT_ce33390,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33394,pc),r0
    mov.l @(PTR_ce33398,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    mov 0x00,r6
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3339c,pc),r3
    mov 0x00,r5
    mov.w @(DAT_ce33388,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4

LAB_ce3328e:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33298:
    mov r4,r3
    mov.l @(PTR_ce333a0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce332aa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce333a4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3338a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce332ee
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce333a8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce333ac,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3338c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce332e0
    mova @(DAT_ce333b0,pc),r0
    bra LAB_ce332e4
    fmov.s @r0,fr3

LAB_ce332e0:
    mova @(DAT_ce333b4,pc),r0
    fmov.s @r0,fr3

LAB_ce332e4:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)

LAB_ce332ee:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce332f4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce333a4,pc),r3
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
    mov.w @(DAT_ce3338e,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce33382
    mov.b @(0x6,r14),r0
    mov 0x0D,r5
    mov.l @(PTR_ce333b8,pc),r3
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33388,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce3338e,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce333bc,pc),r3
    mov 0x1E,r5
    mov.w @(DAT_ce33388,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    mov.l @(PTR_ce333c0,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce333c4,pc),r3
    mov r14,r4
    mov 0x02,r6
    mov 0x0F,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce33382:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33388:
    #data 0x01c8
DAT_ce3338a:
    #data 0x0141
DAT_ce3338c:
    #data 0x01d2
DAT_ce3338e:
    #data 0x041c
    #align4

DAT_ce33390:
    #data 0xc321aaaa
DAT_ce33394:
    #data 0x42d64924
PTR_ce33398:
    #data loc_8c0fdab6
PTR_ce3339c:
    #data loc_8c0424a6
PTR_ce333a0:
    #data PTR_ce33b3c
PTR_ce333a4:
    #data loc_8c034dee
DAT_ce333a8:
    #data 0x41092492
DAT_ce333ac:
    #data 0xbf892492
DAT_ce333b0:
    #data 0x40d55555
DAT_ce333b4:
    #data 0xc0d55555
PTR_ce333b8:
    #data loc_8c02fec4
PTR_ce333bc:
    #data loc_8c050552
PTR_ce333c0:
    #data loc_8c05064e
PTR_ce333c4:
    #data loc_8c034e8c

;=============================================

LAB_ce333c8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33488,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bf LAB_ce334b0
    mov.l @(PTR_ce3348c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce333f0
    mov.w @(DAT_ce33480,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce333f0:
    mov.l @(PTR_ce33490,pc),r3
    mov.w @(DAT_ce33482,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    tst r0,r0
    bf LAB_ce334b0
    mov.w @(DAT_ce33484,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce33408
    bra LAB_ce33510
    nop

LAB_ce33408:
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce334c4
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov 0x23,r2
    mov.w @(DAT_ce33482,pc),r0
    mov.l @(r0,r14),r3
    add 0xEC,r0
    mov.l r14,@(r0,r3)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov.b r2,@(r0,r3)
    mov.l @(PTR_ce33494,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33498,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce33486,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33446
    mova @(DAT_ce3349c,pc),r0
    bra LAB_ce3344a
    fmov.s @r0,fr2

LAB_ce33446:
    mova @(DAT_ce334a0,pc),r0
    fmov.s @r0,fr2

LAB_ce3344a:
    mov 0x34,r0
    fmov.s fr2,@r15
    fmov.s @(r0,r14),fr3
    mov 0x3C,r0
    mov.l @(PTR_ce334a4,pc),r3
    mov 0x00,r7
    fadd fr3,fr2
    mov 0x01,r6
    fmov.s fr2,@r15
    fmov.s @(r0,r14),fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce33486,pc),r0
    mov.w @(r0,r14),r5
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce334a8,pc),r3
    mov 0x00,r5
    mov.w @(DAT_ce33482,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    mov.l @(PTR_ce334ac,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4
    bra LAB_ce33510
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33480:
    #data 0x0142
DAT_ce33482:
    #data 0x01c8
DAT_ce33484:
    #data 0x0141
DAT_ce33486:
    #data 0x0130
    #align4

PTR_ce33488:
    #data loc_8c034dee
PTR_ce3348c:
    #data loc_8c050682
PTR_ce33490:
    #data loc_8c050610
PTR_ce33494:
    #data loc_8c05933c
DAT_ce33498:
    #data 0x41892492
DAT_ce3349c:
    #data 0x41d55555
DAT_ce334a0:
    #data 0xc1d55555
PTR_ce334a4:
    #data loc_8c0fd966
PTR_ce334a8:
    #data loc_8c0424a6
PTR_ce334ac:
    #data loc_8c042008

;=============================================

LAB_ce334b0:
    mov.w @(DAT_ce335b6,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce335c4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce335b8,pc),r0
    mov.b @(r0,r14),r2
    cmp/pl r2
    bf LAB_ce334b0

LAB_ce334c4:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce335c8,pc),r3
    add 0x01,r0
    jsr @r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce335b8,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov 0x03,r2
    mov.w @(DAT_ce335ba,pc),r0
    mov.l @(r0,r14),r3
    add 0xEC,r0
    mov.l r14,@(r0,r3)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0x2E,r0
    mov.b r2,@(r0,r3)
    add 0xD2,r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov 0x21,r2
    mov.b r2,@(r0,r3)
    mov.b @(0x1,r14),r0
    extu.b r0,r0
    cmp/eq 0x1C,r0
    bt/s LAB_ce33502
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x31,r0
    bf LAB_ce33510

LAB_ce33502:
    mov.w @(DAT_ce335ba,pc),r0
    mov 0x01,r2
    mov.l @(r0,r14),r3
    add 0x0A,r0
    mov.b @(r0,r3),r1
    xor r2,r1
    mov.b r1,@(r0,r3)

LAB_ce33510:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33518:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce335cc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce335d0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce335bc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33542
    mova @(DAT_ce335d4,pc),r0
    bra LAB_ce33546
    fmov.s @r0,fr3

LAB_ce33542:
    mova @(DAT_ce335d8,pc),r0
    fmov.s @r0,fr3

LAB_ce33546:
    mov 0x5C,r0
    mov.l @(PTR_ce335dc,pc),r2
    fmov fr3,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce335be,pc),r0
    jsr @r2
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce335e0,pc),r3
    mov r14,r4
    mov 0x03,r6
    mov 0x0F,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce33562:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce335e4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce335c4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33588
    mov.w @(DAT_ce335c0,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce335e8,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33588:
    mov.l @(PTR_ce335ec,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3359e
    lds.l @r15+,PR
    mov.l @(PTR_ce335f0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3359e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce335a4:
    mov r4,r3
    mov.l @(PTR_ce335f4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce335b6:
    #data 0x0142
DAT_ce335b8:
    #data 0x0141
DAT_ce335ba:
    #data 0x01c8
DAT_ce335bc:
    #data 0x01d2
DAT_ce335be:
    #data 0x01f9
DAT_ce335c0:
    #data 0x01d3
    #align4

PTR_ce335c4:
    #data loc_8c034dee
PTR_ce335c8:
    #data loc_8c02fdb0
DAT_ce335cc:
    #data 0x41bc9249
DAT_ce335d0:
    #data 0xbf700000
DAT_ce335d4:
    #data 0xc0855555
DAT_ce335d8:
    #data 0x40855555
PTR_ce335dc:
    #data loc_8c02fd26
PTR_ce335e0:
    #data loc_8c034e8c
PTR_ce335e4:
    #data loc_8c04fea8
PTR_ce335e8:
    #data loc_8c05176e
PTR_ce335ec:
    #data loc_8c052ce2
PTR_ce335f0:
    #data loc_8c052dac
PTR_ce335f4:
    #data PTR_ce33b50

;=============================================

LAB_ce335f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33718,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3370a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3369a
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce3371c,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce3370c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33632
    mova @(DAT_ce33720,pc),r0
    bra LAB_ce33636
    fmov.s @r0,fr2

LAB_ce33632:
    mova @(DAT_ce33724,pc),r0
    fmov.s @r0,fr2

LAB_ce33636:
    mov 0x34,r0
    fmov.s fr2,@r15
    fmov.s @(r0,r14),fr3
    mov 0x00,r7
    mov.w @(DAT_ce3370e,pc),r0
    mov 0x01,r6
    fadd fr3,fr2
    mov.l @(PTR_ce33728,pc),r3
    fmov.s fr2,@r15
    mov.w @(r0,r14),r5
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce3372c,pc),r3
    mov 0x00,r5
    mov.w @(DAT_ce33710,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce33710,pc),r0
    mov.l @(r0,r14),r2
    add 0xEC,r0
    mov.l r14,@(r0,r2)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0x2E,r0
    mov 0x01,r2
    mov.b r2,@(r0,r3)
    add 0xD2,r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov 0x22,r2
    mov.b r2,@(r0,r3)
    mova @(DAT_ce33730,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33734,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3370c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33692
    mova @(DAT_ce33738,pc),r0
    bra LAB_ce33696
    fmov.s @r0,fr3

LAB_ce33692:
    mova @(DAT_ce3373c,pc),r0
    fmov.s @r0,fr3

LAB_ce33696:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce3369a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce336a2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33740,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce33744,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce336c2
    lds.l @r15+,PR
    mov.l @(PTR_ce33748,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce336c2:
    mov.l @(PTR_ce33718,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce336de
    mov.w @(DAT_ce33712,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce3374c,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce336de:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce336e4:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33714,pc),r1
    mov.l @(PTR_ce33750,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce336fc:
    mov.w @(DAT_ce33710,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33754,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3370a:
    #data 0x0141
DAT_ce3370c:
    #data 0x01d2
DAT_ce3370e:
    #data 0x0130
DAT_ce33710:
    #data 0x01c8
DAT_ce33712:
    #data 0x01d3
DAT_ce33714:
    #data 0x01f7
    #align4

PTR_ce33718:
    #data loc_8c034dee
DAT_ce3371c:
    #data 0x432b6db6
DAT_ce33720:
    #data 0x42555555
DAT_ce33724:
    #data 0xc2555555
PTR_ce33728:
    #data loc_8c0fd966
PTR_ce3372c:
    #data loc_8c0424a6
DAT_ce33730:
    #data 0x41bc9249
DAT_ce33734:
    #data 0xbf700000
DAT_ce33738:
    #data 0xc0855555
DAT_ce3373c:
    #data 0x40855555
PTR_ce33740:
    #data loc_8c04fea8
PTR_ce33744:
    #data loc_8c052ce2
PTR_ce33748:
    #data loc_8c052dac
PTR_ce3374c:
    #data loc_8c05176e
PTR_ce33750:
    #data PTR_ce33b58
PTR_ce33754:
    #data loc_8c04cc1c

;=============================================

LAB_ce33758:
    mov.w @(DAT_ce33830,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(r0,r14),r3
    add 0x83,r0
    mov.b @(r0,r3),r2
    tst r2,r2
    bt LAB_ce33774
    mov.w @(DAT_ce33830,pc),r0
    mov r14,r5
    mov.l @(PTR_ce33838,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33774:
    mov.w @(DAT_ce33830,pc),r0
    mov r14,r5
    mov.l @(PTR_ce3383c,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33780:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov 0x05,r3
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33832,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce33840,pc),r3
    jmp @r3
    mov 0x1D,r5

LAB_ce33794:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov 0x05,r3
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33832,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce33840,pc),r3
    jmp @r3
    mov 0x1D,r5

LAB_ce337a8:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov 0x01,r6
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33834,pc),r0
    mov.b r6,@(r0,r4)
    mov.w @(DAT_ce33836,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce337ce
    cmp/eq 0x01,r0
    bt LAB_ce337d4
    cmp/eq 0x02,r0
    bt LAB_ce337e0
    bra LAB_ce337e6
    nop

LAB_ce337ce:
    mov.w @(DAT_ce33832,pc),r0
    bra LAB_ce337e6
    mov.b r6,@(r0,r4)

LAB_ce337d4:
    mov.w @(DAT_ce33832,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce337e6
    mov.b r5,@(r0,r4)

LAB_ce337e0:
    mov.w @(DAT_ce33832,pc),r0
    mov 0x0F,r2
    mov.b r2,@(r0,r4)

LAB_ce337e6:
    mov.l @(PTR_ce33840,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce337ec:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov 0x01,r6
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33834,pc),r0
    mov.b r6,@(r0,r4)
    mov.w @(DAT_ce33836,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33812
    cmp/eq 0x01,r0
    bt LAB_ce33818
    cmp/eq 0x02,r0
    bt LAB_ce33824
    bra LAB_ce3382a
    nop

LAB_ce33812:
    mov.w @(DAT_ce33832,pc),r0
    bra LAB_ce3382a
    mov.b r6,@(r0,r4)

LAB_ce33818:
    mov.w @(DAT_ce33832,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce3382a
    mov.b r5,@(r0,r4)

LAB_ce33824:
    mov.w @(DAT_ce33832,pc),r0
    mov 0x0F,r2
    mov.b r2,@(r0,r4)

LAB_ce3382a:
    mov.l @(PTR_ce33840,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33830:
    #data 0x01c8
DAT_ce33832:
    #data 0x01e9
DAT_ce33834:
    #data 0x01a3
DAT_ce33836:
    #data 0x04c9
    #align4

PTR_ce33838:
    #data loc_8c04ce3a
PTR_ce3383c:
    #data loc_8c04cc1c
PTR_ce33840:
    #data loc_8c0530d8
DAT_ce33844:
    #data 0x35
    #data 0x36
DAT_ce33846:
    #data 0x3a
DAT_ce33847:
    #data 0x35
    #data 0x35
    #data 0x37
    #data 0x38
    #data 0x3a
    #data 0x3b
    #data 0x3c
DAT_ce3384e:
    #data 0x12
    #data 0x14
DAT_ce33850:
    #data 0x0e
    #data 0x0c
    #data 0x00
    #data 0x00
    #align4

DAT_ce33854:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33864:
    #data 0x0003
    #data 0x2000
    #data 0x0009
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33874:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce33884:
    #data 0x0003
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce33894:
    #data 0x0003
    #data 0x9000
    #data 0x0008
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0140
DAT_ce338a4:
    #data 0x0028
    #data 0x1000
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x2000
    #data 0x0060
DAT_ce338b2:
    #data 0x0028
    #data 0x1000
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x2000
    #data 0x0300
DAT_ce338c0:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce338d0:
    #data 0x0003
    #data 0x9100
    #data 0x000a
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce338e0:
    #data 0x0003
    #data 0x9100
    #data 0x000e
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce338f0:
    #data 0x0201
    #data 0x0200
DAT_ce338f4:
    #data 0x02ff
    #data 0x0201
DAT_ce338f8:
    #data 0xffff
    #data 0x02ff
DAT_ce338fc:
    #data 0x0201
    #data 0x0201
DAT_ce33900:
    #data 0x02ff
    #data 0x02ff
DAT_ce33904:
    #data 0xffff
    #data 0xffff
DAT_ce33908:
    #data 0x0201
    #data 0x0200
DAT_ce3390c:
    #data 0x02ff
    #data 0x0201
DAT_ce33910:
    #data 0xffff
    #data 0x02ff
DAT_ce33914:
    #data 0x0201
    #data 0x0201
DAT_ce33918:
    #data 0x02ff
    #data 0x02ff
DAT_ce3391c:
    #data 0xffff
    #data 0xffff
DAT_ce33920:
    #data 0x0201
    #data 0x0200
DAT_ce33924:
    #data 0x02ff
    #data 0x0201
DAT_ce33928:
    #data 0xffff
    #data 0x02ff
DAT_ce3392c:
    #data 0x0201
    #data 0x0201
DAT_ce33930:
    #data 0x02ff
    #data 0x02ff
DAT_ce33934:
    #data 0xffff
    #data 0xffff
    #align4

PTR_ce33938:
    #data LAB_ce305d4
PTR_ce3393c:
    #data LAB_ce30024
PTR_ce33940:
    #data LAB_ce305d8
PTR_ce33944:
    #data LAB_ce30bc8
PTR_ce33948:
    #data LAB_ce30f2c
PTR_ce3394c:
    #data LAB_ce31040
PTR_ce33950:
    #data LAB_ce312dc
PTR_ce33954:
    #data LAB_ce314e4
PTR_ce33958:
    #data LAB_ce315e8
PTR_ce3395c:
    #data LAB_ce32e6e
PTR_ce33960:
    #data LAB_ce32faa
PTR_ce33964:
    #data LAB_ce3319c
PTR_ce33968:
    #data LAB_ce336e4
PTR_ce3396c:
    #data LAB_ce304a0
PTR_ce33970:
    #data LAB_ce31182
PTR_ce33974:
    #data LAB_ce30e28
PTR_ce33978:
    #data LAB_ce33780
PTR_ce3397c:
    #data LAB_ce33794
PTR_ce33980:
    #data LAB_ce337a8
PTR_ce33984:
    #data LAB_ce337ec
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce339a8:
    #data LAB_ce305ec
PTR_ce339ac:
    #data LAB_ce30958
PTR_ce339b0:
    #data LAB_ce30980
PTR_ce339b4:
    #data LAB_ce305ec
PTR_ce339b8:
    #data LAB_ce30bea
PTR_ce339bc:
    #data LAB_ce30d7c
PTR_ce339c0:
    #data LAB_ce30d66
PTR_ce339c4:
    #data LAB_ce30bdc
PTR_ce339c8:
    #data LAB_ce30f3e
PTR_ce339cc:
    #data LAB_ce30f94
PTR_ce339d0:
    #data LAB_ce3100e
PTR_ce339d4:
    #data LAB_ce31080
PTR_ce339d8:
    #data LAB_ce310d6
PTR_ce339dc:
    #data LAB_ce31150
PTR_ce339e0:
    #data LAB_ce311c0
PTR_ce339e4:
    #data LAB_ce3123a
PTR_ce339e8:
    #data LAB_ce312a8
PTR_ce339ec:
    #data LAB_ce31324
PTR_ce339f0:
    #data LAB_ce313ac
PTR_ce339f4:
    #data LAB_ce313d4
PTR_ce339f8:
    #data LAB_ce314b4
PTR_ce339fc:
    #data LAB_ce314f6
PTR_ce33a00:
    #data LAB_ce3154c
PTR_ce33a04:
    #data LAB_ce31512
PTR_ce33a08:
    #data LAB_ce3153c
PTR_ce33a0c:
    #data LAB_ce31544
PTR_ce33a10:
    #data LAB_ce3153c
PTR_ce33a14:
    #data LAB_ce3153c
PTR_ce33a18:
    #data LAB_ce315a0
PTR_ce33a1c:
    #data LAB_ce315e2
PTR_ce33a20:
    #data LAB_ce315e2
PTR_ce33a24:
    #data LAB_ce315e2
PTR_ce33a28:
    #data LAB_ce315e2
PTR_ce33a2c:
    #data LAB_ce31620
PTR_ce33a30:
    #data LAB_ce31760
PTR_ce33a34:
    #data LAB_ce31998
PTR_ce33a38:
    #data LAB_ce31aac
PTR_ce33a3c:
    #data LAB_ce31df8
PTR_ce33a40:
    #data LAB_ce321dc
PTR_ce33a44:
    #data LAB_ce324ac
PTR_ce33a48:
    #data LAB_ce32504
PTR_ce33a4c:
    #data LAB_ce31aac
PTR_ce33a50:
    #data LAB_ce31760
PTR_ce33a54:
    #data LAB_ce328b2
PTR_ce33a58:
    #data LAB_ce32504
PTR_ce33a5c:
    #data LAB_ce32504
PTR_ce33a60:
    #data LAB_ce32504
PTR_ce33a64:
    #data LAB_ce328b2
PTR_ce33a68:
    #data LAB_ce32ce4
PTR_ce33a6c:
    #data LAB_ce32d9c
PTR_ce33a70:
    #data LAB_ce31632
PTR_ce33a74:
    #data LAB_ce316d0
PTR_ce33a78:
    #data FUN_ce3173e
PTR_ce33a7c:
    #data LAB_ce3179c
PTR_ce33a80:
    #data LAB_ce318e6
PTR_ce33a84:
    #data LAB_ce319aa
PTR_ce33a88:
    #data LAB_ce31a34
PTR_ce33a8c:
    #data LAB_ce31abe
PTR_ce33a90:
    #data LAB_ce31b98
PTR_ce33a94:
    #data LAB_ce31c20
PTR_ce33a98:
    #data LAB_ce31ca6
PTR_ce33a9c:
    #data LAB_ce31d9c
PTR_ce33aa0:
    #data LAB_ce31da0
PTR_ce33aa4:
    #data LAB_ce31dc4
PTR_ce33aa8:
    #data LAB_ce31de2
PTR_ce33aac:
    #data LAB_ce31eda
PTR_ce33ab0:
    #data LAB_ce31f04
PTR_ce33ab4:
    #data LAB_ce31f2c
PTR_ce33ab8:
    #data LAB_ce3202a
PTR_ce33abc:
    #data LAB_ce3213c
PTR_ce33ac0:
    #data LAB_ce3216e
PTR_ce33ac4:
    #data LAB_ce3221c
PTR_ce33ac8:
    #data LAB_ce32296
PTR_ce33acc:
    #data LAB_ce32384
PTR_ce33ad0:
    #data LAB_ce32452
PTR_ce33ad4:
    #data LAB_ce32516
PTR_ce33ad8:
    #data LAB_ce31f04
PTR_ce33adc:
    #data LAB_ce32540
PTR_ce33ae0:
    #data LAB_ce3265c
PTR_ce33ae4:
    #data LAB_ce32760
PTR_ce33ae8:
    #data LAB_ce3216e
PTR_ce33aec:
    #data LAB_ce328c4
PTR_ce33af0:
    #data LAB_ce329e4
PTR_ce33af4:
    #data LAB_ce32a34
PTR_ce33af8:
    #data LAB_ce32b8c
PTR_ce33afc:
    #data LAB_ce32c2c
PTR_ce33b00:
    #data LAB_ce32ca0
PTR_ce33b04:
    #data LAB_ce32cf6
PTR_ce33b08:
    #data FUN_ce32d4a
PTR_ce33b0c:
    #data LAB_ce32dae
PTR_ce33b10:
    #data LAB_ce32e24
PTR_ce33b14:
    #data LAB_ce32e86
PTR_ce33b18:
    #data LAB_ce32f44
PTR_ce33b1c:
    #data LAB_ce32f48
PTR_ce33b20:
    #data LAB_ce32e86
PTR_ce33b24:
    #data LAB_ce33008
PTR_ce33b28:
    #data LAB_ce3308e
PTR_ce33b2c:
    #data LAB_ce3312c
PTR_ce33b30:
    #data LAB_ce331ba
PTR_ce33b34:
    #data LAB_ce33298
PTR_ce33b38:
    #data LAB_ce335a4
PTR_ce33b3c:
    #data LAB_ce332aa
PTR_ce33b40:
    #data LAB_ce332f4
PTR_ce33b44:
    #data LAB_ce333c8
PTR_ce33b48:
    #data LAB_ce33518
PTR_ce33b4c:
    #data LAB_ce33562
PTR_ce33b50:
    #data LAB_ce335f8
PTR_ce33b54:
    #data LAB_ce336a2
PTR_ce33b58:
    #data LAB_ce336fc
PTR_ce33b5c:
    #data LAB_ce33758
PTR_ce33b60:
    #data LAB_ce336fc
