;╔══════════════════════════════════════════╗
;║ S_PL21 : Charlie Nash Program            ║
;╚══════════════════════════════════════════╝

#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
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
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c051854 0x8C051854
#symbol loc_8c05218a 0x8C05218A
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
#symbol loc_8c055066 0x8C055066
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c055d54 0x8C055D54
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c094680 0x8C094680
#symbol loc_8c0fdab6 0x8C0FDAB6
#symbol loc_8c103660 0x8C103660
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300e4,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300ec,pc),r7
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
    mov.l @(PTR_ce300f0,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce300f4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce300f8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce300fc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac  
    bsr FUN_ce302ac
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce3025c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce300b2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce3013c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce30182
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce301e0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce302fc
    mov r14,r4
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce3033c
    mov r14,r4
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce30100,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30104,pc),r2
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
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce300e6,pc),r3
    mov r4,r14
    mov.w @(DAT_ce300e8,pc),r6
    add r14,r3
    mov.l @(PTR_ce30108,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce3010c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce300da
    mov.l @r15,r2
    mov.b @(0x2,r2),r0
    tst r0,r0
    bt LAB_ce30110

LAB_ce300da:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300e4:
    #data 0x0428
DAT_ce300e6:
    #data 0x02a4
DAT_ce300e8:
    #data 0x036c
    #align4

PTR_ce300ec:
    #data PTR_ce33304
PTR_ce300f0:
    #data loc_8c054508
PTR_ce300f4:
    #data loc_8c054b34
PTR_ce300f8:
    #data loc_8c05496c
PTR_ce300fc:
    #data loc_8c054d04
PTR_ce30100:
    #data loc_8c053e00
PTR_ce30104:
    #data loc_8c0542e0
PTR_ce30108:
    #data DAT_ce332a8
PTR_ce3010c:
    #data loc_8c055066

;=============================================

LAB_ce30110:
    mov.w @(DAT_ce30230,pc),r5
    mov.l @(PTR_ce30240,pc),r3
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
    mov.w @(DAT_ce30232,pc),r0
    mov.l @(PTR_ce30244,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3013c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30248,pc),r5
    mov.w @(DAT_ce30234,pc),r6
    mov.l @(PTR_ce3024c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3015a
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3015a:
    mov.w @(DAT_ce30234,pc),r5
    mov.l @(PTR_ce30240,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30232,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30244,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30182:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30250,pc),r5
    mov.w @(DAT_ce30236,pc),r6
    mov.l @(PTR_ce30254,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301b2
    mov.w @(DAT_ce30236,pc),r5
    mov.l @(PTR_ce30240,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30238,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce301ba
    mov.w @(DAT_ce3023a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce301ba

LAB_ce301b2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301ba:
    mov.w @(DAT_ce30238,pc),r0
    mov 0x15,r5
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30232,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30244,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301e0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30258,pc),r5
    mov.w @(DAT_ce3023c,pc),r6
    mov.l @(PTR_ce30254,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30200
    mov.w @(DAT_ce3023e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30208

LAB_ce30200:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30208:
    mov.w @(DAT_ce3023c,pc),r5
    mov.l @(PTR_ce30240,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30232,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30244,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30230:
    #data 0x036c
DAT_ce30232:
    #data 0x01e9
DAT_ce30234:
    #data 0x0374
DAT_ce30236:
    #data 0x037c
DAT_ce30238:
    #data 0x01d4
DAT_ce3023a:
    #data 0x01fc
DAT_ce3023c:
    #data 0x0384
DAT_ce3023e:
    #data 0x040c
    #align4

PTR_ce30240:
    #data loc_8c055c3a
PTR_ce30244:
    #data loc_8c0530d8
PTR_ce30248:
    #data DAT_ce332b6
PTR_ce3024c:
    #data loc_8c055066
PTR_ce30250:
    #data DAT_ce332c4
PTR_ce30254:
    #data loc_8c054e58
PTR_ce30258:
    #data DAT_ce332d4

;=============================================

FUN_ce3025c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30380,pc),r5
    mov.w @(DAT_ce30376,pc),r6
    mov.l @(PTR_ce30384,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3027c
    mov.w @(DAT_ce30378,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30284

LAB_ce3027c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30284:
    mov.w @(DAT_ce30376,pc),r5
    mov.l @(PTR_ce30388,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3037a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3038c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302ac:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30390,pc),r5
    mov.w @(DAT_ce3037c,pc),r6
    mov.l @(PTR_ce30384,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302cc
    mov.w @(DAT_ce30378,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302d4

LAB_ce302cc:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302d4:
    mov.w @(DAT_ce3037c,pc),r5
    mov.l @(PTR_ce30388,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3037a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3038c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302fc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30394,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30314
    mov.w @(DAT_ce30378,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3031c

LAB_ce30314:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3031c:
    mov.w @(DAT_ce3037a,pc),r0
    mov 0x0B,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce3038c,pc),r3
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

FUN_ce3033c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30398,pc),r3
    jsr @r3
    mov 0x07,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30356
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30356:
    mov.w @(DAT_ce3037a,pc),r0
    mov 0x07,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce3038c,pc),r3
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

DAT_ce30376:
    #data 0x038c
DAT_ce30378:
    #data 0x040c
DAT_ce3037a:
    #data 0x01e9
DAT_ce3037c:
    #data 0x0394
    #align4

PTR_ce30380:
    #data DAT_ce332e4
PTR_ce30384:
    #data loc_8c054e58
PTR_ce30388:
    #data loc_8c055c3a
PTR_ce3038c:
    #data loc_8c0530d8
PTR_ce30390:
    #data DAT_ce332f4
PTR_ce30394:
    #data loc_8c054d1c
PTR_ce30398:
    #data loc_8c054da0

;=============================================

LAB_ce3039c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce303c8
    mov r4,r14
    tst r0,r0
    bf LAB_ce303b8
    bsr FUN_ce303fe
    mov r14,r4
    tst r0,r0
    bf LAB_ce303b8
    bsr FUN_ce30434
    mov r14,r4
    tst r0,r0
    bt LAB_ce303c0

LAB_ce303b8:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce303c0:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303c8:
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
    bt LAB_ce303e8
    mov.w @(DAT_ce30484,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303f0

LAB_ce303e8:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303f0:
    mov.w @(DAT_ce30486,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303fe:
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
    bt LAB_ce3041e
    mov.w @(DAT_ce30484,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30426

LAB_ce3041e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30426:
    mov.w @(DAT_ce30486,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30434:
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
    bt LAB_ce30454
    mov.w @(DAT_ce30484,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3045c

LAB_ce30454:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3045c:
    mov.w @(DAT_ce30486,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3046a:
    rts
    nop

LAB_ce3046e:
    mov.w @(DAT_ce3048c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce304a0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30482:
    #data 0x0394
DAT_ce30484:
    #data 0x040c
DAT_ce30486:
    #data 0x0258
DAT_ce30488:
    #data 0x038c
DAT_ce3048a:
    #data 0x0384
DAT_ce3048c:
    #data 0x01ff
    #align4

PTR_ce30490:
    #data DAT_ce332f4
PTR_ce30494:
    #data loc_8c054e58
PTR_ce30498:
    #data DAT_ce332e4
PTR_ce3049c:
    #data DAT_ce332d4
PTR_ce304a0:
    #data PTR_ce33374

;=============================================

LAB_ce304a4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce305bc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce305ac,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce304d2
    mov.w @(DAT_ce305ae,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce304ca
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307b0
    mov.l @r15+,r14

LAB_ce304ca:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30684
    mov.l @r15+,r14

LAB_ce304d2:
    mov.w @(DAT_ce305ae,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce304e4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce305d8
    mov.l @r15+,r14

LAB_ce304e4:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce304ec
    mov.l @r15+,r14

LAB_ce304ec:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce305b0,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce305c0,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30512
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3052c
    cmp/eq 0x02,r0
    bt LAB_ce30546
    bra LAB_ce30578
    nop

LAB_ce30512:
    mov.w @(DAT_ce305b2,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce305b4,pc),r0
    mov.l @(PTR_ce305c4,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce305b6,pc),r0
    bra LAB_ce30578
    mov.b r13,@(r0,r14)

LAB_ce3052c:
    mov.w @(DAT_ce305b2,pc),r0
    mov 0x01,r11
    mov 0x15,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce305b4,pc),r0
    mov.l @(PTR_ce305c8,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30574
    nop

LAB_ce30546:
    mov.w @(DAT_ce305b2,pc),r0
    mov 0x02,r11
    mov.w @(DAT_ce305b8,pc),r2
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce3056a
    mov 0x16,r5
    mov.w @(DAT_ce305b2,pc),r0
    mov 0x03,r3
    mov 0x12,r1
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r1,@(r0,r14)

LAB_ce3056a:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce305b4,pc),r0
    mov.l @(PTR_ce305cc,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30574:
    mov.w @(DAT_ce305b6,pc),r0
    mov.b r11,@(r0,r14)

LAB_ce30578:
    mov.w @(DAT_ce305ba,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce305d0,pc),r3
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
    mov.w @(DAT_ce305b2,pc),r0
    mov.l @(PTR_ce305d4,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305ac:
    #data 0x01fe
DAT_ce305ae:
    #data 0x01f9
DAT_ce305b0:
    #data 0x01e8
DAT_ce305b2:
    #data 0x0158
DAT_ce305b4:
    #data 0x03f4
DAT_ce305b6:
    #data 0x01a7
DAT_ce305b8:
    #data 0x0800
DAT_ce305ba:
    #data 0x01ac
    #align4

PTR_ce305bc:
    #data loc_8c052b4c
PTR_ce305c0:
    #data loc_8c04223a
PTR_ce305c4:
    #data DAT_ce33260
PTR_ce305c8:
    #data DAT_ce33264
PTR_ce305cc:
    #data DAT_ce33268
PTR_ce305d0:
    #data loc_8c2896b0
PTR_ce305d4:
    #data loc_8c034e8c

;=============================================

LAB_ce305d8:
    mov.w @(DAT_ce306e6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce306f0,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce305fc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30618
    cmp/eq 0x02,r0
    bt LAB_ce30634
    bra LAB_ce30652
    nop

LAB_ce305fc:
    mov.w @(DAT_ce306e8,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306ea,pc),r0
    mov.l @(PTR_ce306f4,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306ec,pc),r0
    bra LAB_ce30652
    mov.b r13,@(r0,r14)

LAB_ce30618:
    mov.w @(DAT_ce306e8,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306ea,pc),r0
    mov.l @(PTR_ce306f8,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce3064e
    mov 0x01,r2

LAB_ce30634:
    mov.w @(DAT_ce306e8,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306ea,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce306fc,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce3064e:
    mov.w @(DAT_ce306ec,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30652:
    mov.w @(DAT_ce306ee,pc),r0
    mov 0x09,r5
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
    mov.w @(DAT_ce306e8,pc),r0
    mov.l @(PTR_ce30704,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30684:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x04,r5
    mov.w @(DAT_ce306e6,pc),r0
    mov 0x03,r4
    mov.l r12,@-r15
    mov 0x01,r12
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce306f0,pc),r11
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce306b2
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce306cc
    cmp/eq 0x02,r0
    bt LAB_ce30710
    bra LAB_ce3077a
    nop

LAB_ce306b2:
    mov.w @(DAT_ce306e8,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce306ea,pc),r0
    mov.l @(PTR_ce30708,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306ec,pc),r0
    bra LAB_ce3077a
    mov.b r13,@(r0,r14)

LAB_ce306cc:
    mov.w @(DAT_ce306e8,pc),r0
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r5,@(r0,r14)
    mov 0x15,r5
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce306ea,pc),r0
    mov.l @(PTR_ce3070c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306ec,pc),r0
    bra LAB_ce3077a
    mov.b r12,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306e6:
    #data 0x01e8
DAT_ce306e8:
    #data 0x0158
DAT_ce306ea:
    #data 0x03f4
DAT_ce306ec:
    #data 0x01a7
DAT_ce306ee:
    #data 0x01ac
    #align4

PTR_ce306f0:
    #data loc_8c04223a
PTR_ce306f4:
    #data DAT_ce33260
PTR_ce306f8:
    #data DAT_ce33264
PTR_ce306fc:
    #data DAT_ce33268
PTR_ce30700:
    #data loc_8c2896b0
PTR_ce30704:
    #data loc_8c034e8c
PTR_ce30708:
    #data DAT_ce3326c
PTR_ce3070c:
    #data DAT_ce33270

;=============================================

LAB_ce30710:
    mov.w @(DAT_ce3080c,pc),r0
    mov.w @(DAT_ce3080e,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt/s LAB_ce3074c
    mov 0x02,r10
    mov r10,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x14,r2
    mov.w @(DAT_ce30810,pc),r0
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce3073c
    mova @(DAT_ce3081c,pc),r0
    bra LAB_ce30740
    fmov.s @r0,fr3

LAB_ce3073c:
    mova @(DAT_ce30820,pc),r0
    fmov.s @r0,fr3

LAB_ce30740:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    bra LAB_ce3076a
    fmov fr3,@(r0,r14)

LAB_ce3074c:
    mov.w @(DAT_ce30812,pc),r1
    tst r1,r2
    bt LAB_ce30760
    mov r12,r0
    nop
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30810,pc),r0
    mov.b r4,@(r0,r14)
    bra LAB_ce30766
    mov 0x13,r3

LAB_ce30760:
    mov.w @(DAT_ce30810,pc),r0
    mov 0x05,r3
    mov.b r10,@(r0,r14)

LAB_ce30766:
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce3076a:
    mov 0x16,r5
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30814,pc),r0
    mov.l @(PTR_ce30824,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30816,pc),r0
    mov.b r10,@(r0,r14)

LAB_ce3077a:
    mov.w @(DAT_ce30818,pc),r0
    mov r14,r4
    mov.l @(PTR_ce30828,pc),r3
    mov 0x08,r5
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.w @(DAT_ce30810,pc),r0
    mov.l @(PTR_ce3082c,pc),r2
    mov.l @r15+,r10
    mov.b @(r0,r14),r6
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce307b0:
    mov.w @(DAT_ce3081a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30830,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307d4
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307f0
    cmp/eq 0x02,r0
    bt LAB_ce3083c
    bra LAB_ce3085a
    nop

LAB_ce307d4:
    mov.w @(DAT_ce30810,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30814,pc),r0
    mov.l @(PTR_ce30834,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30816,pc),r0
    bra LAB_ce3085a
    mov.b r13,@(r0,r14)

LAB_ce307f0:
    mov.w @(DAT_ce30810,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30814,pc),r0
    mov.l @(PTR_ce30838,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30856
    mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3080c:
    #data 0x01fa
DAT_ce3080e:
    #data 0x0800
DAT_ce30810:
    #data 0x0158
DAT_ce30812:
    #data 0x0400
DAT_ce30814:
    #data 0x03f4
DAT_ce30816:
    #data 0x01a7
DAT_ce30818:
    #data 0x01ac
DAT_ce3081a:
    #data 0x01e8
    #align4

DAT_ce3081c:
    #data 0x40d55555
DAT_ce30820:
    #data 0xc0d55555
PTR_ce30824:
    #data DAT_ce33274
PTR_ce30828:
    #data loc_8c2896b0
PTR_ce3082c:
    #data loc_8c034e8c
PTR_ce30830:
    #data loc_8c04223a
PTR_ce30834:
    #data DAT_ce3326c
PTR_ce30838:
    #data DAT_ce33270

;=============================================

LAB_ce3083c:
    mov.w @(DAT_ce30938,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3093a,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30948,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30856:
    mov.w @(DAT_ce3093c,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce3085a:
    mov.w @(DAT_ce3093e,pc),r0
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
    mov.w @(DAT_ce30938,pc),r0
    mov.l @(PTR_ce30950,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3088c:
    mov.w @(DAT_ce30940,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3089c
    mov.w @(DAT_ce30942,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce308ac

LAB_ce3089c:
    mov.w @(DAT_ce30940,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce308b0
    mov.w @(DAT_ce30942,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce308b0

LAB_ce308ac:
    bra LAB_ce308b4
    nop

LAB_ce308b0:
    rts
    nop

LAB_ce308b4:
    mov.w @(DAT_ce30940,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce308c2
    bra LAB_ce309e0
    nop

LAB_ce308c2:
    bra LAB_ce308c6
    nop

LAB_ce308c6:
    mov.w @(DAT_ce30944,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30954,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308ea
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30916
    cmp/eq 0x02,r0
    bt LAB_ce3096e
    bra LAB_ce3099c
    nop

LAB_ce308ea:
    mov.w @(DAT_ce30938,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30946,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3090a
    mov.w @(DAT_ce3093a,pc),r0
    mov.l @(PTR_ce30958,pc),r3
    bra LAB_ce30910
    mov.l r3,@(r0,r14)

LAB_ce3090a:
    mov.w @(DAT_ce3093a,pc),r0
    mov.l @(PTR_ce3095c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30910:
    mov.w @(DAT_ce3093c,pc),r0
    bra LAB_ce3099c
    mov.b r13,@(r0,r14)

LAB_ce30916:
    mov.w @(DAT_ce30938,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30946,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30964
    mov.w @(DAT_ce3093a,pc),r0
    mov.l @(PTR_ce30960,pc),r3
    bra LAB_ce3096a
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30938:
    #data 0x0158
DAT_ce3093a:
    #data 0x03f4
DAT_ce3093c:
    #data 0x01a7
DAT_ce3093e:
    #data 0x01ac
DAT_ce30940:
    #data 0x01fe
DAT_ce30942:
    #data 0x01d6
DAT_ce30944:
    #data 0x01e8
DAT_ce30946:
    #data 0x01fc
    #align4

PTR_ce30948:
    #data DAT_ce33274
PTR_ce3094c:
    #data loc_8c2896b0
PTR_ce30950:
    #data loc_8c034e8c
PTR_ce30954:
    #data loc_8c04223a
PTR_ce30958:
    #data DAT_ce33278
PTR_ce3095c:
    #data DAT_ce33290
PTR_ce30960:
    #data DAT_ce3327c

;=============================================

LAB_ce30964:
    mov.w @(DAT_ce30a4a,pc),r0
    mov.l @(PTR_ce30a5c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce3096a:
    bra LAB_ce30998
    mov 0x01,r3

LAB_ce3096e:
    mov.w @(DAT_ce30a4c,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a4e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30990
    mov.w @(DAT_ce30a4a,pc),r0
    mov.l @(PTR_ce30a60,pc),r3
    bra LAB_ce30996
    mov.l r3,@(r0,r14)

LAB_ce30990:
    mov.w @(DAT_ce30a4a,pc),r0
    mov.l @(PTR_ce30a64,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30996:
    mov 0x02,r3

LAB_ce30998:
    mov.w @(DAT_ce30a50,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce3099c:
    mov.w @(DAT_ce30a52,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30a68,pc),r3
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
    mov.w @(DAT_ce30a4c,pc),r0
    mov.l @(PTR_ce30a6c,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30a54,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce309d6
    mov.w @(DAT_ce30a54,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce309d6:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce309e0:
    mov.w @(DAT_ce30a56,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30a70,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a04
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a7c
    cmp/eq 0x02,r0
    bt LAB_ce30aa8
    bra LAB_ce30ad6
    nop

LAB_ce30a04:
    mov.w @(DAT_ce30a58,pc),r0
    mov.w @(DAT_ce30a5a,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce30a1e
    mov 0x14,r5
    mov.w @(DAT_ce30a4c,pc),r0
    mov 0x15,r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30a2a
    mov.b r3,@(r0,r14)

LAB_ce30a1e:
    mov.w @(DAT_ce30a4c,pc),r0
    mov 0x03,r3
    mov 0x0F,r1
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r1,@(r0,r14)

LAB_ce30a2a:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a4e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a3e
    mov.w @(DAT_ce30a4a,pc),r0
    mov.l @(PTR_ce30a74,pc),r3
    bra LAB_ce30a44
    mov.l r3,@(r0,r14)

LAB_ce30a3e:
    mov.w @(DAT_ce30a4a,pc),r0
    mov.l @(PTR_ce30a78,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a44:
    mov.w @(DAT_ce30a50,pc),r0
    bra LAB_ce30ad6
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a4a:
    #data 0x03f4
DAT_ce30a4c:
    #data 0x0158
DAT_ce30a4e:
    #data 0x01fc
DAT_ce30a50:
    #data 0x01a7
DAT_ce30a52:
    #data 0x01ac
DAT_ce30a54:
    #data 0x01d6
DAT_ce30a56:
    #data 0x01e8
DAT_ce30a58:
    #data 0x01fa
DAT_ce30a5a:
    #data 0x1000
    #align4

PTR_ce30a5c:
    #data DAT_ce33294
PTR_ce30a60:
    #data DAT_ce33280
PTR_ce30a64:
    #data DAT_ce33298
PTR_ce30a68:
    #data loc_8c2896b0
PTR_ce30a6c:
    #data loc_8c034e8c
PTR_ce30a70:
    #data loc_8c04223a
PTR_ce30a74:
    #data DAT_ce33284
PTR_ce30a78:
    #data DAT_ce3329c

;=============================================

LAB_ce30a7c:
    mov.w @(DAT_ce30ba4,pc),r0
    mov 0x04,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30ba6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a9e
    mov.w @(DAT_ce30ba8,pc),r0
    mov.l @(PTR_ce30bb8,pc),r3
    bra LAB_ce30aa4
    mov.l r3,@(r0,r14)

LAB_ce30a9e:
    mov.w @(DAT_ce30ba8,pc),r0
    mov.l @(PTR_ce30bbc,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30aa4:
    bra LAB_ce30ad2
    mov 0x01,r3

LAB_ce30aa8:
    mov.w @(DAT_ce30ba4,pc),r0
    mov 0x05,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30ba6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30aca
    mov.w @(DAT_ce30ba8,pc),r0
    mov.l @(PTR_ce30bc0,pc),r3
    bra LAB_ce30ad0
    mov.l r3,@(r0,r14)

LAB_ce30aca:
    mov.w @(DAT_ce30ba8,pc),r0
    mov.l @(PTR_ce30bc4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30ad0:
    mov 0x02,r3

LAB_ce30ad2:
    mov.w @(DAT_ce30baa,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30ad6:
    mov.w @(DAT_ce30bac,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30bc8,pc),r3
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
    mov.w @(DAT_ce30ba4,pc),r0
    mov.l @(PTR_ce30bcc,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30bae,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30b10
    mov.w @(DAT_ce30bae,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30b10:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30b1a:
    mov.w @(DAT_ce30bb0,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30bd0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30b2e:
    sts.l PR,@-r15
    mov.l @(PTR_ce30bd4,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30b3c:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30bd8,pc),r3
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
    mov.w @(DAT_ce30bb2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30bdc
    mov.w @(DAT_ce30bb4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30b9c
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30de8
    mov.l @r15+,r14

LAB_ce30b9c:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c66
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ba4:
    #data 0x0158
DAT_ce30ba6:
    #data 0x01fc
DAT_ce30ba8:
    #data 0x03f4
DAT_ce30baa:
    #data 0x01a7
DAT_ce30bac:
    #data 0x01ac
DAT_ce30bae:
    #data 0x01d6
DAT_ce30bb0:
    #data 0x01ff
DAT_ce30bb2:
    #data 0x01fe
DAT_ce30bb4:
    #data 0x01f9
    #align4

PTR_ce30bb8:
    #data DAT_ce33288
PTR_ce30bbc:
    #data DAT_ce332a0
PTR_ce30bc0:
    #data DAT_ce3328c
PTR_ce30bc4:
    #data DAT_ce332a4
PTR_ce30bc8:
    #data loc_8c2896b0
PTR_ce30bcc:
    #data loc_8c034e8c
PTR_ce30bd0:
    #data PTR_ce33384
PTR_ce30bd4:
    #data loc_8c0511e2
PTR_ce30bd8:
    #data loc_8c052c84

;=============================================

LAB_ce30bdc:
    mov.w @(DAT_ce30cae,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30bee
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c2e
    mov.l @r15+,r14

LAB_ce30bee:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30bf6
    mov.l @r15+,r14

LAB_ce30bf6:
    mov.w @(DAT_ce30cb0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30c12
    cmp/eq 0x01,r0
    bt LAB_ce30c12
    cmp/eq 0x02,r0
    bt LAB_ce30c12
    bra LAB_ce30c28
    nop

LAB_ce30c12:
    mov.l @(PTR_ce30cb4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c28
    lds.l @r15+,PR
    mov.l @(PTR_ce30cb8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c28:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30c2e:
    mov.w @(DAT_ce30cb0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30c4a
    cmp/eq 0x01,r0
    bt LAB_ce30c4a
    cmp/eq 0x02,r0
    bt LAB_ce30c4a
    bra LAB_ce30c60
    nop

LAB_ce30c4a:
    mov.l @(PTR_ce30cb4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c60
    lds.l @r15+,PR
    mov.l @(PTR_ce30cb8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c60:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30c66:
    mov.w @(DAT_ce30cb0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30c82
    cmp/eq 0x00,r0
    bt LAB_ce30cbc
    cmp/eq 0x01,r0
    bt LAB_ce30cbc
    bra LAB_ce30cd2
    nop

LAB_ce30c82:
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c92
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30cd8
    mov.l @r15+,r14

LAB_ce30c92:
    mov.l @(PTR_ce30cb4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30cc8
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30cd2
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30dac
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30cae:
    #data 0x01f9
DAT_ce30cb0:
    #data 0x01e8
    #align4

PTR_ce30cb4:
    #data loc_8c034dee
PTR_ce30cb8:
    #data loc_8c051648

;=============================================

LAB_ce30cbc:
    mov.l @(PTR_ce30dcc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cd2

LAB_ce30cc8:
    lds.l @r15+,PR
    mov.l @(PTR_ce30dd0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30cd2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30cd8:
    mov r4,r3
    mov.l @(PTR_ce30dd4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30cea:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30dcc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30dc2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d34
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30dc2,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30dc4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d16
    mova @(DAT_ce30dd8,pc),r0
    bra LAB_ce30d1a
    fmov.s @r0,fr3

LAB_ce30d16:
    mova @(DAT_ce30ddc,pc),r0
    fmov.s @r0,fr3

LAB_ce30d1a:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30de0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30de4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce30d34:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d3a:
    mov.w @(DAT_ce30dc2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30d4e
    mov.l @(PTR_ce30dcc,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30d4e:
    mov.w @(DAT_ce30dc6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce30d84
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30dc6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30dc8,pc),r0
    mov.b r4,@(r0,r14)
    add 0x14,r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce30d84:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30d8a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30dcc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30da4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30dd0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30da4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30dac:
    mov.w @(DAT_ce30dc2,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30dbe
    mov 0x00,r0
    fldi0 fr3
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr3,@(r0,r4)

LAB_ce30dbe:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30dc2:
    #data 0x0141
DAT_ce30dc4:
    #data 0x01d2
DAT_ce30dc6:
    #data 0x041c
DAT_ce30dc8:
    #data 0x01fc
    #align4

PTR_ce30dcc:
    #data loc_8c034dee
PTR_ce30dd0:
    #data loc_8c051648
PTR_ce30dd4:
    #data PTR_ce33394
DAT_ce30dd8:
    #data 0x40a00000
DAT_ce30ddc:
    #data 0xc0a00000
DAT_ce30de0:
    #data 0x41092492
DAT_ce30de4:
    #data 0xbf809249

;=============================================

LAB_ce30de8:
    mov.w @(DAT_ce30ebc,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30e04
    cmp/eq 0x01,r0
    bt LAB_ce30e04
    cmp/eq 0x02,r0
    bt LAB_ce30e04
    bra LAB_ce30e1a
    nop

LAB_ce30e04:
    mov.l @(PTR_ce30ec0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e1a
    lds.l @r15+,PR
    mov.l @(PTR_ce30ec4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e1a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e20:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ec8,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30ecc,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30e36:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ed0,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30ed4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30ebe,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30e58
    bsr FUN_ce30e9a
    mov r14,r4
    bra LAB_ce30e5c
    nop

LAB_ce30e58:
    bsr FUN_ce30e78
    mov r14,r4

LAB_ce30e5c:
    mov.l @(PTR_ce30ed8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30e72
    lds.l @r15+,PR
    mov.l @(PTR_ce30edc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e72:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30e78:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30ec0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e92
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30ee0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30e92:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30e9a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30ec0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30eb4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30ee0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30eb4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ebc:
    #data 0x01e8
DAT_ce30ebe:
    #data 0x01fe
    #align4

PTR_ce30ec0:
    #data loc_8c034dee
PTR_ce30ec4:
    #data loc_8c051648
PTR_ce30ec8:
    #data loc_8c050084
PTR_ce30ecc:
    #data loc_8c04ff88
PTR_ce30ed0:
    #data loc_8c04fea8
PTR_ce30ed4:
    #data loc_8c050048
PTR_ce30ed8:
    #data loc_8c052ce2
PTR_ce30edc:
    #data loc_8c052dac
PTR_ce30ee0:
    #data loc_8c05176e

;=============================================

LAB_ce30ee4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30f42
    mov.l @(PTR_ce31018,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x14,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x08,r6
    mov.w @(DAT_ce3100c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3101c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3100e,pc),r0
    mov 0x55,r2
    mov 0x00,r4
    mov.l @(PTR_ce31020,pc),r3
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
    mov.l @(PTR_ce31024,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31028,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4

LAB_ce30f42:
    mov.w @(DAT_ce31010,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30f52
    mov.l @(PTR_ce3102c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30f52:
    mov 0x5C,r1
    mov.l @(PTR_ce31030,pc),r3
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
    mov.l @(PTR_ce31034,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fa6
    lds.l @r15+,PR
    mov.l @(PTR_ce31038,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30fa6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fac:
    mov r4,r3
    mov.l @(PTR_ce3103c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30fbe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31034,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31012,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31054
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
    mov.w @(DAT_ce31014,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30ff6
    mova @(DAT_ce31040,pc),r0
    bra LAB_ce30ffa
    fmov.s @r0,fr3

LAB_ce30ff6:
    mova @(DAT_ce31044,pc),r0
    fmov.s @r0,fr3

LAB_ce30ffa:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31014,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3104c
    mova @(DAT_ce31048,pc),r0
    bra LAB_ce31050
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3100c:
    #data 0x01f9
DAT_ce3100e:
    #data 0x01a1
DAT_ce31010:
    #data 0x01ff
DAT_ce31012:
    #data 0x0141
DAT_ce31014:
    #data 0x01d2
    #align4

PTR_ce31018:
    #data loc_8c052b4c
PTR_ce3101c:
    #data loc_8c034e8c
PTR_ce31020:
    #data loc_8c2896b0
PTR_ce31024:
    #data loc_8c04223a
PTR_ce31028:
    #data loc_8c056de4
PTR_ce3102c:
    #data loc_8c0511e2
PTR_ce31030:
    #data loc_8c052c84
PTR_ce31034:
    #data loc_8c034dee
PTR_ce31038:
    #data loc_8c051648
PTR_ce3103c:
    #data PTR_ce333a0
DAT_ce31040:
    #data 0x417d5555
DAT_ce31044:
    #data 0xc17d5555
DAT_ce31048:
    #data 0xbed55555

;=============================================

LAB_ce3104c:
    mova @(DAT_ce31178,pc),r0
    fmov.s @r0,fr3

LAB_ce31050:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce31054:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3105a:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce3117c,pc),r3
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
    bf LAB_ce310ae
    lds.l @r15+,PR
    mov.l @(PTR_ce31180,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce310ae:
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    fldi0 fr4
    mov r6,r5
    add 0x01,r0
    mov.l @(PTR_ce31184,pc),r3
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

LAB_ce310d4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3117c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31100
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31188,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31100:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31106:
    mov r4,r3
    mov.l @(PTR_ce3118c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31118:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3117c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31172,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3116c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31174,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3113e
    mova @(DAT_ce31190,pc),r0
    bra LAB_ce31142
    fmov.s @r0,fr3

LAB_ce3113e:
    mova @(DAT_ce31194,pc),r0
    fmov.s @r0,fr3

LAB_ce31142:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31174,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31154
    mova @(DAT_ce31198,pc),r0
    bra LAB_ce31158
    fmov.s @r0,fr3

LAB_ce31154:
    mova @(DAT_ce3119c,pc),r0
    fmov.s @r0,fr3

LAB_ce31158:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce311a0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce311a4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce3116c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31172:
    #data 0x0141
DAT_ce31174:
    #data 0x01d2
    #align4

DAT_ce31178:
    #data 0x3ed55555
PTR_ce3117c:
    #data loc_8c034dee
PTR_ce31180:
    #data loc_8c0511e2
PTR_ce31184:
    #data loc_8c034e8c
PTR_ce31188:
    #data loc_8c051648
PTR_ce3118c:
    #data PTR_ce333ac
DAT_ce31190:
    #data 0xc17d5555
DAT_ce31194:
    #data 0x417d5555
DAT_ce31198:
    #data 0x3f200000
DAT_ce3119c:
    #data 0xbf200000
DAT_ce311a0:
    #data 0x40a00000
DAT_ce311a4:
    #data 0xbf555555

;=============================================

LAB_ce311a8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31308,pc),r3
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
    mov.w @(DAT_ce31300,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31224
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    mov.w @(DAT_ce31300,pc),r0
    mov 0x02,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31302,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3130c,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31224:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3122a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31308,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31256
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31310,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31256:
    mov.w @(DAT_ce31304,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3129c
    mov.l @(PTR_ce31314,pc),r3
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

LAB_ce3129c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312a2:
    mov r4,r3
    mov.l @(PTR_ce31318,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce312b4:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31306,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce3130c,pc),r3
    jmp @r3
    mov 0x12,r5

LAB_ce312c8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31308,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312e0
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce312e0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce312e8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3131c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31320
    lds.l @r15+,PR
    mov.l @(PTR_ce31310,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31300:
    #data 0x041c
DAT_ce31302:
    #data 0x01f9
DAT_ce31304:
    #data 0x0141
DAT_ce31306:
    #data 0x012c
    #align4

PTR_ce31308:
    #data loc_8c034dee
PTR_ce3130c:
    #data loc_8c034e8c
PTR_ce31310:
    #data loc_8c051648
PTR_ce31314:
    #data loc_8c0511e2
PTR_ce31318:
    #data PTR_ce333b8
PTR_ce3131c:
    #data loc_8c046c8a

;=============================================

LAB_ce31320:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce3140c,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31334:
    mov r4,r3
    mov.l @(PTR_ce31410,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31346:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31414,pc),r3
    add 0x01,r0
    jsr @r3
    mov.b r0,@(0x6,r14)
    and 0x03,r0
    mov.l @(PTR_ce31418,pc),r13
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/eq 0x00,r0
    bt LAB_ce31374
    cmp/eq 0x01,r0
    bt LAB_ce31378
    cmp/eq 0x02,r0
    bt LAB_ce3137c
    cmp/eq 0x03,r0
    bt LAB_ce31380
    bra LAB_ce31388
    nop

LAB_ce31374:
    bra LAB_ce31382
    mov 0x00,r6

LAB_ce31378:
    bra LAB_ce31382
    mov 0x01,r6

LAB_ce3137c:
    bra LAB_ce31382
    mov 0x02,r6

LAB_ce31380:
    mov 0x03,r6

LAB_ce31382:
    mov 0x13,r5
    jsr @r13
    mov r14,r4

LAB_ce31388:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31390:
    mov.l @(PTR_ce3141c,pc),r3
    jmp @r3
    nop

LAB_ce31396:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce313aa
    mov.b @(0x6,r4),r0
    mov 0x03,r6
    mov.l @(PTR_ce31418,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce313aa:
    mov.l @(PTR_ce3141c,pc),r3
    jmp @r3
    nop

LAB_ce313b0:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce313c4
    mov.b @(0x6,r4),r0
    mov 0x04,r6
    mov.l @(PTR_ce31418,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce313c4:
    mov.l @(PTR_ce3141c,pc),r3
    jmp @r3
    nop

LAB_ce313ca:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce313de
    mov.b @(0x6,r4),r0
    mov 0x05,r6
    mov.l @(PTR_ce31418,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce313de:
    mov.l @(PTR_ce3141c,pc),r3
    jmp @r3
    nop

LAB_ce313e4:
    mov.w @(DAT_ce3140a,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31420,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce313f8:
    mov r4,r3
    mov.l @(PTR_ce31424,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3140a:
    #data 0x01e9
    #align4

PTR_ce3140c:
    #data PTR_ce333c0
PTR_ce31410:
    #data PTR_ce333d4
PTR_ce31414:
    #data loc_8c03319e
PTR_ce31418:
    #data loc_8c034e8c
PTR_ce3141c:
    #data loc_8c034dee
PTR_ce31420:
    #data PTR_ce333dc
PTR_ce31424:
    #data PTR_ce3340c

;=============================================

LAB_ce31428:
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
    mov.w @(DAT_ce3157a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31584,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31588,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3158c,pc),r3
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
    mov 0x15,r5
    mov.w @(DAT_ce3157c,pc),r0
    mov.l @(PTR_ce31590,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3157e,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31594,pc),r2
    mov 0x01,r5
    mov r13,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31598,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce3159c,pc),r2
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce314b0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce315a0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce314ea
    mov.w @(DAT_ce31580,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    tst 0x01,r0
    bt LAB_ce314fe
    mov.w @(DAT_ce31580,pc),r3
    mov 0x1E,r5
    add r14,r3
    mov.b @(0x1,r3),r0
    and 0xFE,r0
    mov.b r0,@(0x1,r3)
    mov.l @(PTR_ce31590,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31594,pc),r2
    mov 0x00,r6
    mov r6,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce314ea:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3159c,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce314fe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31504:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce315a0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3151e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce315a4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3151e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31526:
    mov r4,r3
    mov.l @(PTR_ce315a8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31538:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31584,pc),r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31582,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce315ac
    mov 0x00,r13
    mov.w @(DAT_ce3157a,pc),r0
    mov 0x51,r2
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
    bra LAB_ce315e2
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3157a:
    #data 0x01a1
DAT_ce3157c:
    #data 0x041c
DAT_ce3157e:
    #data 0x01f9
DAT_ce31580:
    #data 0x0150
DAT_ce31582:
    #data 0x0255
    #align4

PTR_ce31584:
    #data loc_8c2896b0
PTR_ce31588:
    #data loc_8c056de4
PTR_ce3158c:
    #data loc_8c05218a
PTR_ce31590:
    #data loc_8c042008
PTR_ce31594:
    #data loc_8c094680
PTR_ce31598:
    #data loc_8c05115a
PTR_ce3159c:
    #data loc_8c034e8c
PTR_ce315a0:
    #data loc_8c034dee
PTR_ce315a4:
    #data loc_8c051648
PTR_ce315a8:
    #data PTR_ce33418

;=============================================

LAB_ce315ac:
    mov.w @(DAT_ce316c8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce315b8
    bra LAB_ce315ba
    mov 0x35,r1

LAB_ce315b8:
    mov 0x33,r1

LAB_ce315ba:
    mov.w @(DAT_ce316ca,pc),r0
    mov 0x0A,r5
    mov.b r1,@(r0,r14)
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
    mov.l @(PTR_ce316d4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce315e2:
    mov.l @(PTR_ce316d8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce316cc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce316ce,pc),r0
    mov.b r13,@(r0,r14)
    add 0xD9,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31612
    mov.w @(DAT_ce316c8,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce316dc,pc),r0
    extu.b r3,r3
    mov r3,r2
    shll r3
    add r2,r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31626
    nop

LAB_ce31612:
    mov.w @(DAT_ce316c8,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce316dc,pc),r0
    extu.b r2,r2
    mov r2,r3
    shll r2
    add r3,r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31626:
    mov 0x5C,r0
    mov.l @(PTR_ce316dc,pc),r4
    fmov fr3,@(r0,r14)
    mov 0x02,r5
    mov.w @(DAT_ce316c8,pc),r0
    mov 0x00,r6
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    mov r3,r2
    shll r3
    add r2,r3
    shll2 r3
    add r4,r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce316c8,pc),r0
    mov.b @(r0,r14),r3
    mov 0x08,r0
    extu.b r3,r3
    mov r3,r2
    shll r3
    add r2,r3
    shll2 r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov.l @(PTR_ce316e0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce316e4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce316c8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3167e
    bra LAB_ce31680
    mov 0x04,r3

LAB_ce3167e:
    mov 0x02,r3

LAB_ce31680:
    mov.w @(DAT_ce316d0,pc),r0
    mov 0x15,r5
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce316e8,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31694:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce316ec,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce316d2,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    tst 0x01,r0
    bt LAB_ce316c2
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce316f0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce316e0,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x07,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce316c2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce316c8:
    #data 0x01a3
DAT_ce316ca:
    #data 0x01a1
DAT_ce316cc:
    #data 0x041c
DAT_ce316ce:
    #data 0x01f9
DAT_ce316d0:
    #data 0x0158
DAT_ce316d2:
    #data 0x0150
    #align4

PTR_ce316d4:
    #data loc_8c056de4
PTR_ce316d8:
    #data loc_8c05218a
PTR_ce316dc:
    #data DAT_ce3342c
PTR_ce316e0:
    #data loc_8c094680
PTR_ce316e4:
    #data loc_8c05115a
PTR_ce316e8:
    #data loc_8c034e8c
PTR_ce316ec:
    #data loc_8c034dee
PTR_ce316f0:
    #data loc_8c053082

;=============================================

LAB_ce316f4:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.w @(DAT_ce31830,pc),r3
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
    add r14,r3
    mov.b @(0x1,r3),r0
    cmp/pz r0
    bf LAB_ce31784
    mov.l @(PTR_ce31840,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31832,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31784
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31834,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31760
    mov.w @(DAT_ce31836,pc),r0
    mov 0x52,r2
    bra LAB_ce31766
    mov.b r2,@(r0,r14)

LAB_ce31760:
    mov.w @(DAT_ce31836,pc),r0
    mov 0x36,r3
    mov.b r3,@(r0,r14)

LAB_ce31766:
    mov.w @(DAT_ce31838,pc),r0
    mov.l @(PTR_ce31844,pc),r3
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

LAB_ce31784:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce317a2
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31848,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce317a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce317a8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.w @(DAT_ce31830,pc),r3
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
    add r14,r3
    mov.b @(0x1,r3),r0
    cmp/pz r0
    bf LAB_ce317f6
    mov.l @(PTR_ce31840,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce317f6:
    mov.w @(DAT_ce3183a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3182a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3183a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3183c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3184c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31848,pc),r2
    mov r14,r4
    mov 0x06,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3182a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31830:
    #data 0x0150
DAT_ce31832:
    #data 0x0141
DAT_ce31834:
    #data 0x0255
DAT_ce31836:
    #data 0x01a1
DAT_ce31838:
    #data 0x01ac
DAT_ce3183a:
    #data 0x041c
DAT_ce3183c:
    #data 0x01f9
    #align4

PTR_ce31840:
    #data loc_8c034dee
PTR_ce31844:
    #data loc_8c2896b0
PTR_ce31848:
    #data loc_8c034e8c
PTR_ce3184c:
    #data loc_8c0511b4

;=============================================

LAB_ce31850:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce319a8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3186a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce319ac,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3186a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31872:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce319b0,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31992,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31888:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31994,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce318aa
    mov.w @(DAT_ce31998,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31996,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce318aa:
    mov.b @(0x6,r14),r0
    mov 0x56,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3199a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce319b4,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce319b8,pc),r2
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
    mov.w @(DAT_ce3199c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3199e,pc),r0
    mov.b r13,@(r0,r14)
    mov r13,r0
    nop
    mov 0x0E,r2
    mov.w r0,@(0x1c,r14)
    mov 0x02,r0
    mov.w r0,@(0x1e,r14)
    mov.l @r15,r3
    mov.b r2,@r3
    mov.l @(PTR_ce319bc,pc),r3
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x15,r5
    mov 0x19,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce319c0,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31922:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce319a0,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce319a2,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31994,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31944
    bra LAB_ce31946
    mov 0x02,r3

LAB_ce31944:
    mov 0x00,r3

LAB_ce31946:
    mov.w @(DAT_ce319a4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce319a8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce319a6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3198a
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce319cc,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce319a6,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31998,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce319c4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce319c8,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce3198a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31992:
    #data 0x02a4
DAT_ce31994:
    #data 0x0255
DAT_ce31996:
    #data 0x00ff
DAT_ce31998:
    #data 0x03f0
DAT_ce3199a:
    #data 0x01a1
DAT_ce3199c:
    #data 0x041c
DAT_ce3199e:
    #data 0x01f9
DAT_ce319a0:
    #data 0x03f8
DAT_ce319a2:
    #data 0x0328
DAT_ce319a4:
    #data 0x03f1
DAT_ce319a6:
    #data 0x0141
    #align4

PTR_ce319a8:
    #data loc_8c034dee
PTR_ce319ac:
    #data loc_8c051648
PTR_ce319b0:
    #data PTR_ce33444
PTR_ce319b4:
    #data loc_8c2896b0
PTR_ce319b8:
    #data loc_8c05218a
PTR_ce319bc:
    #data loc_8c05115a
PTR_ce319c0:
    #data loc_8c034e8c
DAT_ce319c4:
    #data 0x42b0aaaa
DAT_ce319c8:
    #data 0x4322db6d
PTR_ce319cc:
    #data loc_8c050834

;=============================================

LAB_ce319d0:
    mov.w @(DAT_ce31ae0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31ae2,pc),r0
    mov.b r2,@(r0,r14)
    mov.b @r13,r3
    tst r3,r3
    bt LAB_ce31a1e
    mov.l @(PTR_ce31af4,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce31a0a
    mov.w @(DAT_ce31ae4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bt LAB_ce31a0a
    mov.w @(DAT_ce31ae4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x04,r0
    bf LAB_ce31a1e

LAB_ce31a0a:
    mov.b @r13,r2
    add 0xFF,r2
    mov.b r2,@r13
    mov.b @r13,r0
    extu.b r0,r0
    tst 0x07,r0
    bf LAB_ce31a1e
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)

LAB_ce31a1e:
    mov.l @(PTR_ce31af8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31a4e
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov 0x01,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31ae6,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31ae8,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce31b26
    mov.l @r15+,r14

LAB_ce31a4e:
    mov.w @(DAT_ce31aea,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    tst 0x01,r0
    bt LAB_ce31a84
    mov.w @(DAT_ce31aea,pc),r3
    mov 0x1E,r5
    add r14,r3
    mov.b @(0x1,r3),r0
    and 0xFE,r0
    mov.b r0,@(0x1,r3)
    mov.l @(PTR_ce31afc,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31b00,pc),r13
    mov 0x0B,r5
    mov 0x00,r6
    jsr @r13
    mov r14,r4
    mov 0x0B,r5
    mov 0x01,r6
    jsr @r13
    mov r14,r4
    mov 0x0B,r5
    mov 0x02,r6
    jsr @r13
    mov r14,r4

LAB_ce31a84:
    mov.w @(DAT_ce31aea,pc),r2
    mov.w @(DAT_ce31aec,pc),r3
    add r14,r2
    mov.b @(0x1,r2),r0
    extu.b r0,r0
    cmp/eq r3,r0
    bf LAB_ce31ab0
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce31aa8
    mov.w @(DAT_ce31aea,pc),r2
    mov 0xFC,r0
    add r14,r2
    mov.b r0,@(0x1,r2)
    mov 0x20,r2
    mov.w @(DAT_ce31aee,pc),r0
    bra LAB_ce31ab0
    mov.b r2,@(r0,r14)

LAB_ce31aa8:
    mov.w @(DAT_ce31aea,pc),r2
    mov 0xFA,r0
    add r14,r2
    mov.b r0,@(0x1,r2)

LAB_ce31ab0:
    mov.w @(DAT_ce31aea,pc),r3
    add r14,r3
    mov.b @(0x1,r3),r0
    mov.w @(DAT_ce31af0,pc),r3
    extu.b r0,r0
    cmp/eq r3,r0
    bf LAB_ce31ad8
    mov.w @(0x1e,r14),r0
    mov 0x00,r5
    mov r14,r4
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    and 0x03,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce31b26
    mov.l @r15+,r14

LAB_ce31ad8:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ae0:
    #data 0x03f8
DAT_ce31ae2:
    #data 0x0328
DAT_ce31ae4:
    #data 0x0255
DAT_ce31ae6:
    #data 0x03f9
DAT_ce31ae8:
    #data 0x0327
DAT_ce31aea:
    #data 0x0150
DAT_ce31aec:
    #data 0x00fe
DAT_ce31aee:
    #data 0x0142
DAT_ce31af0:
    #data 0x00fc
    #align4

PTR_ce31af4:
    #data loc_8c055d54
PTR_ce31af8:
    #data loc_8c034dee
PTR_ce31afc:
    #data loc_8c042008
PTR_ce31b00:
    #data loc_8c094680

;=============================================

LAB_ce31b04:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31c54,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b1e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31c58,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31b1e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31b26:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.b r5,@r15
    mov.w @(0x1c,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce31c5c,pc),r3
    mov r0,r5
    add 0x03,r5
    jsr @r3
    mov r14,r4
    mov.b @r15,r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    mov 0x15,r5
    extu.b r3,r3
    mov.l @(PTR_ce31c60,pc),r1
    shll r0
    add r3,r0
    shll2 r0
    mov.l @(r0,r1),r3
    mov.w @(DAT_ce31c40,pc),r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31c64,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b62:
    mov r4,r3
    mov.l @(PTR_ce31c68,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31b74:
    mov.w @(DAT_ce31c42,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31b92
    mov.w @(DAT_ce31c46,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31c44,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31b92:
    mov.b @(0x6,r14),r0
    mov 0x37,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31c48,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31c6c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31c70,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31c4a,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31c4c,pc),r0
    mov.b r13,@(r0,r14)
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
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31c4e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31bf6
    mova @(DAT_ce31c74,pc),r0
    bra LAB_ce31bfa
    fmov.s @r0,fr3

LAB_ce31bf6:
    mova @(DAT_ce31c78,pc),r0
    fmov.s @r0,fr3

LAB_ce31bfa:
    mov.l @(PTR_ce31c7c,pc),r3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31c5c,pc),r2
    mov 0x02,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31c64,pc),r3
    mov 0x12,r6
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c1e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31c50,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31c52,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31c42,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31c80
    bra LAB_ce31c82
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c40:
    #data 0x0158
DAT_ce31c42:
    #data 0x0255
DAT_ce31c44:
    #data 0x00ff
DAT_ce31c46:
    #data 0x03f0
DAT_ce31c48:
    #data 0x01a1
DAT_ce31c4a:
    #data 0x041c
DAT_ce31c4c:
    #data 0x01f9
DAT_ce31c4e:
    #data 0x01d2
DAT_ce31c50:
    #data 0x03f8
DAT_ce31c52:
    #data 0x0328
    #align4

PTR_ce31c54:
    #data loc_8c034dee
PTR_ce31c58:
    #data loc_8c051648
PTR_ce31c5c:
    #data loc_8c094680
PTR_ce31c60:
    #data DAT_ce33454
PTR_ce31c64:
    #data loc_8c034e8c
PTR_ce31c68:
    #data PTR_ce33474
PTR_ce31c6c:
    #data loc_8c2896b0
PTR_ce31c70:
    #data loc_8c05218a
DAT_ce31c74:
    #data 0x41055555
DAT_ce31c78:
    #data 0xc1055555
PTR_ce31c7c:
    #data loc_8c05115a

;=============================================

LAB_ce31c80:
    mov 0x00,r3

LAB_ce31c82:
    mov.w @(DAT_ce31dae,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31dc0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31db0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31cc6
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce31dcc,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce31db0,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31db2,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce31dc4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31dc8,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31cc6:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31cce:
    mov.w @(DAT_ce31db4,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31db6,pc),r0
    mov.l @(PTR_ce31dd0,pc),r12
    mov.l @(PTR_ce31dc0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31d54
    bsr FUN_ce32084
    mov r14,r4
    mov.w @(DAT_ce31db8,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    tst 0x01,r0
    bt LAB_ce31d10
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce31d10:
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
    mov.w @(DAT_ce31dba,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31d46
    bra LAB_ce31e64
    nop

LAB_ce31d46:
    mov 0x08,r5
    mov.b r13,@(r0,r14)
    mov 0x00,r6
    jsr @r12
    mov r14,r4
    bra LAB_ce31e64
    nop

LAB_ce31d54:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31dd4,pc),r4
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31de0
    mov.b @(0x6,r14),r0
    mov 0x37,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31dbc,pc),r0
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
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31dbe,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31d9a
    mova @(DAT_ce31dd8,pc),r0
    bra LAB_ce31d9e
    fmov.s @r0,fr3

LAB_ce31d9a:
    mova @(DAT_ce31ddc,pc),r0
    fmov.s @r0,fr3

LAB_ce31d9e:
    mov 0x5C,r0
    mov 0x02,r5
    fmov fr3,@(r0,r14)
    mov 0x00,r6
    jsr @r12
    mov r14,r4
    bra LAB_ce31e54
    mov 0x13,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31dae:
    #data 0x03f1
DAT_ce31db0:
    #data 0x0141
DAT_ce31db2:
    #data 0x03f0
DAT_ce31db4:
    #data 0x03f8
DAT_ce31db6:
    #data 0x0328
DAT_ce31db8:
    #data 0x0150
DAT_ce31dba:
    #data 0x014b
DAT_ce31dbc:
    #data 0x01a1
DAT_ce31dbe:
    #data 0x01d2
    #align4

PTR_ce31dc0:
    #data loc_8c034dee
DAT_ce31dc4:
    #data 0xc0d55555
DAT_ce31dc8:
    #data 0x42fcdb6d
PTR_ce31dcc:
    #data loc_8c050834
PTR_ce31dd0:
    #data loc_8c094680
PTR_ce31dd4:
    #data loc_8c2896b0
DAT_ce31dd8:
    #data 0x41055555
DAT_ce31ddc:
    #data 0xc1055555

;=============================================

LAB_ce31de0:
    mov.b @(0x6,r14),r0
    mov 0x38,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31eb4,pc),r0
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
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31eb6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31e1c
    mova @(DAT_ce31ec0,pc),r0
    bra LAB_ce31e20
    fmov.s @r0,fr3

LAB_ce31e1c:
    mova @(DAT_ce31ec4,pc),r0
    fmov.s @r0,fr3

LAB_ce31e20:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31eb6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31e32
    mova @(DAT_ce31ec8,pc),r0
    bra LAB_ce31e36
    fmov.s @r0,fr3

LAB_ce31e32:
    mova @(DAT_ce31ecc,pc),r0
    fmov.s @r0,fr3

LAB_ce31e36:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31ed0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x08,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31ed4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r6
    fmov fr3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov 0x14,r6

LAB_ce31e54:
    lds.l @r15+,PR
    mov.l @(PTR_ce31ed8,pc),r3
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e64:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31e6e:
    mov.w @(DAT_ce31eb8,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31eba,pc),r0
    mov.l @(PTR_ce31edc,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce32084
    mov r14,r4
    mov.w @(DAT_ce31ebc,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    tst 0x01,r0
    bt LAB_ce31eae
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    mov r14,r4
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x08,r5
    mov.w @(DAT_ce31ebe,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31ee0,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31eae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31eb4:
    #data 0x01a1
DAT_ce31eb6:
    #data 0x01d2
DAT_ce31eb8:
    #data 0x03f8
DAT_ce31eba:
    #data 0x0328
DAT_ce31ebc:
    #data 0x0150
DAT_ce31ebe:
    #data 0x01f9
    #align4

DAT_ce31ec0:
    #data 0x41d55555
DAT_ce31ec4:
    #data 0xc1d55555
DAT_ce31ec8:
    #data 0xbfa00000
DAT_ce31ecc:
    #data 0x3fa00000
DAT_ce31ed0:
    #data 0x42092492
DAT_ce31ed4:
    #data 0xbf892492
PTR_ce31ed8:
    #data loc_8c034e8c
PTR_ce31edc:
    #data loc_8c034dee
PTR_ce31ee0:
    #data loc_8c094680

;=============================================

LAB_ce31ee4:
    mov.w @(DAT_ce31fb4,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    fmov.s fr15,@-r15
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31fb6,pc),r0
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
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce31fb8,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bt/s LAB_ce31f46
    fldi0 fr15
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31f56

LAB_ce31f46:
    extu.b r4,r2
    tst r2,r2
    bf LAB_ce31f5e
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31f5e

LAB_ce31f56:
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce31f5e:
    mov.w @(DAT_ce31fba,pc),r3
    add r14,r3
    mov.b @(0x1,r3),r0
    cmp/pz r0
    bf LAB_ce31f72
    mov.l @(PTR_ce31fc0,pc),r2
    jsr @r2
    mov r14,r4
    bsr FUN_ce32084
    mov r14,r4

LAB_ce31f72:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31fac
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce31fc4,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.w @(DAT_ce31fbc,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31fbe,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce31fac:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31fb4:
    #data 0x03f8
DAT_ce31fb6:
    #data 0x0328
DAT_ce31fb8:
    #data 0x01d2
DAT_ce31fba:
    #data 0x0150
DAT_ce31fbc:
    #data 0x03f9
DAT_ce31fbe:
    #data 0x0327
    #align4

PTR_ce31fc0:
    #data loc_8c034dee
PTR_ce31fc4:
    #data loc_8c034e8c

;=============================================

LAB_ce31fc8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.w @(DAT_ce320ea,pc),r3
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
    add r14,r3
    mov.b @(0x1,r3),r0
    cmp/pz r0
    bf LAB_ce32016
    mov.l @(PTR_ce320f8,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32016:
    mov.w @(DAT_ce320ec,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3205c
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce320ec,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce320ee,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce320fc,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32100,pc),r2
    mov r14,r4
    mov 0x06,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3205c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32062:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce320f8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3207c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32104,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3207c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce32084:
    mov.w @(DAT_ce320f0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce320d0
    mov.w @(DAT_ce320f2,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3209a
    mov.w @(0x1c,r4),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r4)

LAB_ce3209a:
    mov.w @(0x1c,r4),r0
    mov 0x03,r3
    cmp/ge r3,r0
    bt LAB_ce320d0
    mov.w @(DAT_ce320f0,pc),r0
    mov 0x00,r5
    mov.l @(PTR_ce3210c,pc),r3
    mov.b @(r0,r4),r1
    mov.l @(PTR_ce32108,pc),r0
    shar r1
    mov.b @(r0,r1),r2
    mov.w @(DAT_ce320f4,pc),r0
    mov.b r2,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce320d0:
    rts
    nop

LAB_ce320d4:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32110,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce320f6,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320ea:
    #data 0x0150
DAT_ce320ec:
    #data 0x041c
DAT_ce320ee:
    #data 0x01f9
DAT_ce320f0:
    #data 0x0141
DAT_ce320f2:
    #data 0x019e
DAT_ce320f4:
    #data 0x01a1
DAT_ce320f6:
    #data 0x02a4
    #align4

PTR_ce320f8:
    #data loc_8c034dee
PTR_ce320fc:
    #data loc_8c0511b4
PTR_ce32100:
    #data loc_8c034e8c
PTR_ce32104:
    #data loc_8c051648
PTR_ce32108:
    #data DAT_ce33494
PTR_ce3210c:
    #data loc_8c2896b0
PTR_ce32110:
    #data PTR_ce3349c

;=============================================

LAB_ce32114:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3223c,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32136
    mov.w @(DAT_ce32240,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3223e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32136:
    mov.b @(0x6,r14),r0
    mov 0x39,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32242,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32254,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32258,pc),r2
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
    mov.w @(DAT_ce32244,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32246,pc),r0
    mov.b r13,@(r0,r14)
    add 0x13,r0
    mov.l @(r0,r14),r4
    mov.l @r15,r3
    mov.b @(0x1,r4),r0
    mov.b r0,@(0x1,r3)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32248,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce321a2
    mova @(DAT_ce3225c,pc),r0
    bra LAB_ce321a6
    fmov.s @r0,fr3

LAB_ce321a2:
    mova @(DAT_ce32260,pc),r0
    fmov.s @r0,fr3

LAB_ce321a6:
    mov.l @(PTR_ce32264,pc),r3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32268,pc),r2
    mov 0x06,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov r14,r4
    mov 0x16,r5
    mov 0x00,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3226c,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce321cc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3224a,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3224c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3223c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce321ee
    bra LAB_ce321f0
    mov 0x02,r3

LAB_ce321ee:
    mov 0x00,r3

LAB_ce321f0:
    mov.w @(DAT_ce3224e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32270,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32250,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32234
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce3227c,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce32250,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32240,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32274,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32278,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32234:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3223c:
    #data 0x0255
DAT_ce3223e:
    #data 0x00ff
DAT_ce32240:
    #data 0x03f0
DAT_ce32242:
    #data 0x01a1
DAT_ce32244:
    #data 0x041c
DAT_ce32246:
    #data 0x01f9
DAT_ce32248:
    #data 0x01d2
DAT_ce3224a:
    #data 0x03f8
DAT_ce3224c:
    #data 0x0328
DAT_ce3224e:
    #data 0x03f1
DAT_ce32250:
    #data 0x0141
    #align4

PTR_ce32254:
    #data loc_8c2896b0
PTR_ce32258:
    #data loc_8c05218a
DAT_ce3225c:
    #data 0x41a00000
DAT_ce32260:
    #data 0xc1a00000
PTR_ce32264:
    #data loc_8c05115a
PTR_ce32268:
    #data loc_8c094680
PTR_ce3226c:
    #data loc_8c034e8c
PTR_ce32270:
    #data loc_8c034dee
DAT_ce32274:
    #data 0x41fd5555
DAT_ce32278:
    #data 0x4322db6d
PTR_ce3227c:
    #data loc_8c050834

;=============================================

LAB_ce32280:
    mov.w @(DAT_ce3239c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    fmov.s fr15,@-r15
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3239e,pc),r0
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
    mov.l @(PTR_ce323a8,pc),r3
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce323ac,pc),r0
    fmov.s @r0,fr15
    mov.w @(DAT_ce323a0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32328
    mov.l @(PTR_ce323b0,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce32324
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce323a2,pc),r0
    mov.l @(r0,r14),r4
    add 0x22,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32300
    mova @(DAT_ce323b4,pc),r0
    bra LAB_ce32304
    fmov.s @r0,fr3

LAB_ce32300:
    mova @(DAT_ce323b8,pc),r0
    fmov.s @r0,fr3

LAB_ce32304:
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    mov 0x00,r3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce323a4,pc),r0
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr15,fr3
    fmov fr3,@(r0,r14)
    bra LAB_ce32342
    mov 0x03,r6

LAB_ce32324:
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32328:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32350
    mov 0x04,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x01,r6
    fdiv fr15,fr3
    fmov fr3,@(r0,r14)

LAB_ce32342:
    lds.l @r15+,PR
    mov.l @(PTR_ce323bc,pc),r3
    mov r14,r4
    mov 0x16,r5
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce32350:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce32358:
    mov.w @(DAT_ce3239c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3239e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce323a6,pc),r0
    mov.l @(r0,r14),r4
    mov.b @(0x1,r4),r0
    mov r0,r3
    mov.b @(0x1,r5),r0
    cmp/eq r0,r3
    bt/s LAB_ce323c4
    fldi0 fr15
    mov 0x5C,r0
    mov.l @(PTR_ce323c0,pc),r3
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
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3239c:
    #data 0x03f8
DAT_ce3239e:
    #data 0x0328
DAT_ce323a0:
    #data 0x019e
DAT_ce323a2:
    #data 0x01b0
DAT_ce323a4:
    #data 0x01f9
DAT_ce323a6:
    #data 0x020c
    #align4

PTR_ce323a8:
    #data loc_8c034dee
DAT_ce323ac:
    #data 0x41000000
PTR_ce323b0:
    #data loc_8c05264c
DAT_ce323b4:
    #data 0x42c80000
DAT_ce323b8:
    #data 0xc2c80000
PTR_ce323bc:
    #data loc_8c034e8c
PTR_ce323c0:
    #data loc_8c051648

;=============================================

LAB_ce323c4:
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf/s LAB_ce32488
    mov 0x00,r13
    mov 0x5C,r1
    mov.l @(PTR_ce32474,pc),r3
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
    mov.w @(DAT_ce32470,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3243a
    mov.b @(0x7,r14),r0
    mov.l @(DAT_ce32478,pc),r1
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32470,pc),r0
    lds r1,FPUL
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce3247c,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32480,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)

LAB_ce3243a:
    mov.w @(DAT_ce32472,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32446
    bra LAB_ce32554
    nop

LAB_ce32446:
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32484,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce32472,pc),r0
    bra LAB_ce32554
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32470:
    #data 0x0141
DAT_ce32472:
    #data 0x014b
    #align4

PTR_ce32474:
    #data loc_8c034dee
DAT_ce32478:
    #data 0x40800000
DAT_ce3247c:
    #data 0x41892492
DAT_ce32480:
    #data 0xc0092492
PTR_ce32484:
    #data loc_8c2896b0

;=============================================

LAB_ce32488:
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
    mov.w @(DAT_ce325dc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce324ce
    mov.l @(PTR_ce325e8,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce324ce:
    mov.w @(DAT_ce325de,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce324fe
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce325ec,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce325de,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce324fe:
    mov.w @(DAT_ce325e0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32554
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce325f0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce325e0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce325e2,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce325e4,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce325e6,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
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
    mov.l @(PTR_ce325f4,pc),r2
    mov 0x01,r5
    mov r14,r4
    mov 0x03,r6
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32554:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3255e:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce325e8,pc),r3
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
    bt LAB_ce325c4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce325f8,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce325c4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce325ca:
    mov r4,r3
    mov.l @(PTR_ce325fc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325dc:
    #data 0x0141
DAT_ce325de:
    #data 0x014b
DAT_ce325e0:
    #data 0x041c
DAT_ce325e2:
    #data 0x01f9
DAT_ce325e4:
    #data 0x03f9
DAT_ce325e6:
    #data 0x0327
    #align4

PTR_ce325e8:
    #data loc_8c034dee
PTR_ce325ec:
    #data loc_8c2896b0
PTR_ce325f0:
    #data loc_8c0511b4
PTR_ce325f4:
    #data loc_8c034e8c
PTR_ce325f8:
    #data loc_8c051648
PTR_ce325fc:
    #data PTR_ce334b0

;=============================================

LAB_ce32600:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32702,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32618
    bra LAB_ce3261a
    mov 0x48,r3

LAB_ce32618:
    mov 0x46,r3

LAB_ce3261a:
    mov.w @(DAT_ce32704,pc),r0
    mov 0x00,r4
    mov 0x05,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3270c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32710,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32714,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32706,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    add 0xD9,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3266c
    mov.w @(DAT_ce32702,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32718,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce3267c
    nop

LAB_ce3266c:
    mov.w @(DAT_ce32702,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce32718,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce3267c:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32708,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3269a
    mov.w @(DAT_ce32702,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce3271c,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce326aa
    nop

LAB_ce3269a:
    mov.w @(DAT_ce32702,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce3271c,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce326aa:
    mov 0x68,r0
    mov.l @(PTR_ce32718,pc),r4
    fmov fr3,@(r0,r14)
    mov 0x09,r5
    mov.w @(DAT_ce32702,pc),r0
    mov 0x00,r6
    mov.b @(r0,r14),r3
    mov 0x08,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r4,r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32702,pc),r0
    mov.b @(r0,r14),r3
    mov 0x0C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    mov.l @(PTR_ce32720,pc),r3
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32702,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce326ee
    bra LAB_ce326f0
    mov 0x17,r2

LAB_ce326ee:
    mov 0x15,r2

LAB_ce326f0:
    mov.w @(DAT_ce3270a,pc),r0
    mov r14,r4
    mov.l @(PTR_ce32724,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32702:
    #data 0x01a3
DAT_ce32704:
    #data 0x01a1
DAT_ce32706:
    #data 0x01f9
DAT_ce32708:
    #data 0x01d2
DAT_ce3270a:
    #data 0x0158
    #align4

PTR_ce3270c:
    #data loc_8c2896b0
PTR_ce32710:
    #data loc_8c056de4
PTR_ce32714:
    #data loc_8c05218a
PTR_ce32718:
    #data DAT_ce334b8
PTR_ce3271c:
    #data DAT_ce334bc
PTR_ce32720:
    #data loc_8c094680
PTR_ce32724:
    #data loc_8c034e8c

;=============================================

LAB_ce32728:
    mov.w @(DAT_ce3281c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce327b2
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
    mov.w @(DAT_ce3281e,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bt LAB_ce32786
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce32796

LAB_ce32786:
    extu.b r4,r2
    tst r2,r2
    bf LAB_ce3279e
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce3279e

LAB_ce32796:
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce3279e:
    mov.w @(DAT_ce32820,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce327b2
    mov.w @(DAT_ce32820,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce327b2:
    mov.l @(PTR_ce32824,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce327d2
    mov 0x5C,r0
    mov.l @(PTR_ce32828,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce327d2:
    mov.w @(DAT_ce32822,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32802
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x56,r0
    mov 0x49,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3282c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce32802:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce3280a:
    mov r4,r3
    mov.l @(PTR_ce32830,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3281c:
    #data 0x0141
DAT_ce3281e:
    #data 0x01d2
DAT_ce32820:
    #data 0x041c
DAT_ce32822:
    #data 0x014b
    #align4

PTR_ce32824:
    #data loc_8c034dee
PTR_ce32828:
    #data loc_8c05176e
PTR_ce3282c:
    #data loc_8c2896b0
PTR_ce32830:
    #data PTR_ce334d8

;=============================================

LAB_ce32834:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce32964,pc),r3
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
    mov.w @(DAT_ce32958,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3295a,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32968,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3296c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3295c,pc),r0
    mov 0x54,r2
    mov.l @(PTR_ce32970,pc),r3
    mov 0x18,r6
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
    mov.l @(PTR_ce32974,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce328aa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32978,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce328ca
    mov.l @(PTR_ce3297c,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce328ca:
    mov.w @(DAT_ce3295e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce328f4
    mov.w @(DAT_ce3295e,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce32988,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mova @(DAT_ce32980,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32984,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce328f4:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce328fc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32978,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3295e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32952
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3295e,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32960,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32928
    mova @(DAT_ce3298c,pc),r0
    bra LAB_ce3292c
    fmov.s @r0,fr3

LAB_ce32928:
    mova @(DAT_ce32990,pc),r0
    fmov.s @r0,fr3

LAB_ce3292c:
    mov 0x5C,r0
    mov.l @(PTR_ce3299c,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32994,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32998,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32952:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32958:
    #data 0x041c
DAT_ce3295a:
    #data 0x01f9
DAT_ce3295c:
    #data 0x01a1
DAT_ce3295e:
    #data 0x0141
DAT_ce32960:
    #data 0x01d2
    #align4

PTR_ce32964:
    #data loc_8c035162
PTR_ce32968:
    #data loc_8c05218a
PTR_ce3296c:
    #data loc_8c05115a
PTR_ce32970:
    #data loc_8c2896b0
PTR_ce32974:
    #data loc_8c034e8c
PTR_ce32978:
    #data loc_8c034dee
PTR_ce3297c:
    #data loc_8c051648
DAT_ce32980:
    #data 0x41c80000
DAT_ce32984:
    #data 0x433c9249
PTR_ce32988:
    #data loc_8c050ea4
DAT_ce3298c:
    #data 0x40a00000
DAT_ce32990:
    #data 0xc0a00000
DAT_ce32994:
    #data 0x41092492
DAT_ce32998:
    #data 0xbf809249
PTR_ce3299c:
    #data loc_8c04223a

;=============================================

LAB_ce329a0:
    mov.w @(DAT_ce32abc,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce329b4
    mov.l @(PTR_ce32ac4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce329b4:
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
    mov.w @(DAT_ce32abe,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32a1e
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32abe,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32ac0,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce32a1e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32a24:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32ac4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a3e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32ac8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32a3e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32a46:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce32a74
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce32ac0,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32abe,pc),r0
    mov.l @(PTR_ce32acc,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a74:
    mov.l @(PTR_ce32ac4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32aa4
    mov.l @(PTR_ce32ad0,pc),r3
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
    mov.l @(PTR_ce32ac8,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32aa4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32aaa:
    mov r4,r3
    mov.l @(PTR_ce32ad4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32abc:
    #data 0x0141
DAT_ce32abe:
    #data 0x041c
DAT_ce32ac0:
    #data 0x01f9
    #align4

PTR_ce32ac4:
    #data loc_8c034dee
PTR_ce32ac8:
    #data loc_8c051648
PTR_ce32acc:
    #data loc_8c034e8c
PTR_ce32ad0:
    #data loc_8c035162
PTR_ce32ad4:
    #data PTR_ce334ec

;=============================================

LAB_ce32ad8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce32c18,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    mov.l @(DAT_ce32c1c,pc),r1
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32c0e,pc),r0
    lds r1,FPUL
    mov.b r3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32c20,pc),r0
    fmov.s @r0,fr2
    mov 0x5C,r0
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce32c10,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32b18
    fldi0 fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fneg fr2
    fmov fr2,@(r0,r14)

LAB_ce32b18:
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32c24,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x41,r3
    fmov fr3,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce32c12,pc),r0
    mov 0x03,r6
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32c28,pc),r3
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
    mov.l @(PTR_ce32c2c,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce32b5c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32c30,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce32c34,pc),r3
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
    bt LAB_ce32bc4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32c38,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32c2c,pc),r2
    mov r14,r4
    mov 0x04,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32bc4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32bca:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32c30,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32be4
    lds.l @r15+,PR
    mov.l @(PTR_ce32c3c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32be4:
    mov.w @(DAT_ce32c14,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32bf0
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce32bf0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32bf6:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32c0e,pc),r1
    mov.l @(PTR_ce32c40,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c0e:
    #data 0x01f9
DAT_ce32c10:
    #data 0x01d2
DAT_ce32c12:
    #data 0x01a1
DAT_ce32c14:
    #data 0x0141
    #align4

PTR_ce32c18:
    #data loc_8c035162
DAT_ce32c1c:
    #data 0x42cdb6db
DAT_ce32c20:
    #data 0x41d55555
DAT_ce32c24:
    #data 0xbf092492
PTR_ce32c28:
    #data loc_8c2896b0
PTR_ce32c2c:
    #data loc_8c034e8c
PTR_ce32c30:
    #data loc_8c034dee
PTR_ce32c34:
    #data loc_8c052ce2
PTR_ce32c38:
    #data loc_8c0511b4
PTR_ce32c3c:
    #data loc_8c051854
PTR_ce32c40:
    #data PTR_ce334f8

;=============================================

LAB_ce32c44:
    mov.w @(DAT_ce32d40,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32d42,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32cb4
    mov.w @(DAT_ce32d44,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32c84
    mov.w @(DAT_ce32d46,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32c84
    mov.l @(PTR_ce32d4c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32cb4
    mov r0,r4
    bra LAB_ce32ca6
    mov 0x00,r2

LAB_ce32c84:
    mov.w @(DAT_ce32d44,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32cb4
    mov.w @(DAT_ce32d46,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32cb4
    mov.l @(PTR_ce32d4c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32cb4
    mov r0,r4
    mov 0x01,r2

LAB_ce32ca6:
    mov.w @(DAT_ce32d48,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32cb4:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32cbc:
    rts
    mov 0x00,r0

LAB_ce32cc0:
    mov.w @(DAT_ce32d40,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32d42,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32d18
    mov.w @(DAT_ce32d44,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32d18
    mov.w @(DAT_ce32d46,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32d18
    mova @(DAT_ce32d50,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32d18
    mov.l @(PTR_ce32d4c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32d18
    mov r0,r4
    mov.w @(DAT_ce32d48,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32d18:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32d20:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32d54,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32d48,pc),r0
    mov r14,r4
    mov.l @(PTR_ce32d58,pc),r1
    mov.b @(r0,r14),r0
    lds.l @r15+,PR
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d40:
    #data 0x01fa
DAT_ce32d42:
    #data 0x0c00
DAT_ce32d44:
    #data 0x01fe
DAT_ce32d46:
    #data 0x01a3
DAT_ce32d48:
    #data 0x01f7
    #align4

PTR_ce32d4c:
    #data loc_8c045790
DAT_ce32d50:
    #data 0x43092492
PTR_ce32d54:
    #data loc_8c056f2a
PTR_ce32d58:
    #data PTR_ce33508

;=============================================

LAB_ce32d5c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32eac,pc),r0
    mov r4,r14
    mov.w @(DAT_ce32eae,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce32eb0,pc),r2
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
    bt LAB_ce32db2
    mov.w @(DAT_ce32eb0,pc),r0
    mov.w @(DAT_ce32eae,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce32eb0,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce32eac,pc),r0
    mov.w @(DAT_ce32eae,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce32eb0,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce32db2:
    mova @(DAT_ce32eb4,pc),r0
    mov.l @(PTR_ce32ebc,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32eb8,pc),r0
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
    mov.w @(DAT_ce32eb2,pc),r0
    mov 0x05,r6
    mov.l @(PTR_ce32ec0,pc),r3
    mov 0x0A,r2
    mov r6,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ec4,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32df0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32eac,pc),r0
    mov r4,r14
    mov.w @(DAT_ce32eae,pc),r1
    mov r15,r5
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce32eb0,pc),r2
    add r4,r1
    extu.b r0,r0
    mov.l @(PTR_ce32ebc,pc),r3
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mova @(DAT_ce32ec8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32ecc,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32eb2,pc),r0
    mov 0x05,r6
    mov.l @(PTR_ce32ec0,pc),r3
    mov 0x0A,r2
    mov r6,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ec4,pc),r2
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e4e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32eac,pc),r0
    mov r4,r14
    mov.w @(DAT_ce32eae,pc),r1
    mov r15,r5
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce32eb0,pc),r2
    add r4,r1
    extu.b r0,r0
    mov.l @(PTR_ce32ebc,pc),r3
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mova @(DAT_ce32ed0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32ed4,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32eb2,pc),r0
    mov 0x05,r6
    mov.l @(PTR_ce32ec0,pc),r3
    mov 0x0A,r2
    mov r6,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ec4,pc),r2
    mov 0x0F,r5
    mov 0x02,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32eac:
    #data 0x01c8
DAT_ce32eae:
    #data 0x0130
DAT_ce32eb0:
    #data 0x01d2
DAT_ce32eb2:
    #data 0x01a0
    #align4

DAT_ce32eb4:
    #data 0x42055555
DAT_ce32eb8:
    #data 0x43430000
PTR_ce32ebc:
    #data loc_8c103660
PTR_ce32ec0:
    #data loc_8c02fec4
PTR_ce32ec4:
    #data loc_8c034e8c
DAT_ce32ec8:
    #data 0xc2a00000
DAT_ce32ecc:
    #data 0x43384924
DAT_ce32ed0:
    #data 0xc1baaaaa
DAT_ce32ed4:
    #data 0x43654924

;=============================================

LAB_ce32ed8:
    mov.w @(DAT_ce32fec,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32ff4,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ef6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32ff8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce32f3a
    mov.w @(DAT_ce32fee,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32f44
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x0B,r3
    mov.w @(DAT_ce32ff0,pc),r0
    mov 0x00,r6
    mov 0x20,r2
    mov r6,r5
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.l @(PTR_ce32ffc,pc),r3
    mov.b r2,@(r0,r4)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33000,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32f3a:
    lds.l @r15+,PR
    mov.l @(PTR_ce33004,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f44:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f4a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32ff8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce32fde
    mov.w @(DAT_ce32fee,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce32fae
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov 0x23,r3
    mov.w @(DAT_ce32ff0,pc),r0
    mov.l @(r0,r14),r4
    add 0xD9,r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce33008,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce3300c,pc),r0
    mov.l @(PTR_ce33014,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33010,pc),r0
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
    mov.l @(PTR_ce33018,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3301c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fae:
    mov.b @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce32fe4
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce32ff0,pc),r0
    mov 0x00,r6
    mov 0x21,r2
    mov r6,r5
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.l @(PTR_ce32ffc,pc),r3
    mov.b r2,@(r0,r4)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fde:
    mov.l @(PTR_ce33004,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32fe4:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32fec:
    #data 0x01ea
DAT_ce32fee:
    #data 0x0141
DAT_ce32ff0:
    #data 0x01c8
    #align4

PTR_ce32ff4:
    #data PTR_ce33514
PTR_ce32ff8:
    #data loc_8c034dee
PTR_ce32ffc:
    #data loc_8c02fec4
PTR_ce33000:
    #data loc_8c0423fc
PTR_ce33004:
    #data loc_8c051648
PTR_ce33008:
    #data loc_8c05933c
DAT_ce3300c:
    #data 0xc2555555
DAT_ce33010:
    #data 0x42892492
PTR_ce33014:
    #data loc_8c0fdab6
PTR_ce33018:
    #data loc_8c042008
PTR_ce3301c:
    #data loc_8c04223a

;=============================================

LAB_ce33020:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce330ba
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
    mov.w @(DAT_ce33148,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33074
    mov.l @(PTR_ce33150,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce33074:
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce33094
    mova @(DAT_ce33154,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33094
    mov.b @(0x7,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce33158,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce33094:
    mov.w @(DAT_ce3314a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33132
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce3315c,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33160,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce33132
    nop

LAB_ce330ba:
    mov.l @(PTR_ce33150,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce3312c
    mov.w @(DAT_ce33148,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt/s LAB_ce33108
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov 0x24,r3
    mov.w @(DAT_ce3314c,pc),r0
    mov.l @(r0,r14),r4
    add 0xD9,r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce33164,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33168,pc),r0
    mov.l @(PTR_ce33170,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce3316c,pc),r0
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
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33108:
    mov.b @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce33132
    mov.b r4,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce3314c,pc),r0
    mov 0x22,r2
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3312c:
    mov.l @(PTR_ce33174,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce33132:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3313a:
    mov.w @(DAT_ce3314c,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33178,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33148:
    #data 0x0141
DAT_ce3314a:
    #data 0x041c
DAT_ce3314c:
    #data 0x01c8
    #align4

PTR_ce33150:
    #data loc_8c034dee
DAT_ce33154:
    #data 0x43ab6db6
PTR_ce33158:
    #data loc_8c042008
PTR_ce3315c:
    #data loc_8c034e8c
PTR_ce33160:
    #data loc_8c0423fc
PTR_ce33164:
    #data loc_8c05933c
DAT_ce33168:
    #data 0xc2555555
DAT_ce3316c:
    #data 0x42892492
PTR_ce33170:
    #data loc_8c0fdab6
PTR_ce33174:
    #data loc_8c051648
PTR_ce33178:
    #data loc_8c04cc1c

;=============================================

LAB_ce3317c:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33254,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce331a2
    mov 0x02,r5
    cmp/eq 0x01,r0
    bt LAB_ce3319a
    cmp/eq 0x02,r0
    bt LAB_ce331a2
    bra LAB_ce331a6
    nop

LAB_ce3319a:
    mov.w @(DAT_ce33256,pc),r0
    mov 0x03,r2
    bra LAB_ce331a6
    mov.b r2,@(r0,r4)

LAB_ce331a2:
    mov.w @(DAT_ce33256,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce331a6:
    mov.l @(PTR_ce3325c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce331ac:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33254,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce331d2
    mov 0x02,r5
    cmp/eq 0x01,r0
    bt LAB_ce331ca
    cmp/eq 0x02,r0
    bt LAB_ce331d2
    bra LAB_ce331d6
    nop

LAB_ce331ca:
    mov.w @(DAT_ce33256,pc),r0
    mov 0x03,r2
    bra LAB_ce331d6
    mov.b r2,@(r0,r4)

LAB_ce331d2:
    mov.w @(DAT_ce33256,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce331d6:
    mov.l @(PTR_ce3325c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce331dc:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33254,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce331fe
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce33204
    cmp/eq 0x02,r0
    bt LAB_ce3320a
    bra LAB_ce33212
    nop

LAB_ce331fe:
    mov.w @(DAT_ce33256,pc),r0
    bra LAB_ce3320e
    mov.b r5,@(r0,r4)

LAB_ce33204:
    mov.w @(DAT_ce33256,pc),r0
    bra LAB_ce3320e
    mov.b r6,@(r0,r4)

LAB_ce3320a:
    mov.w @(DAT_ce33256,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3320e:
    mov.w @(DAT_ce33258,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce33212:
    mov.l @(PTR_ce3325c,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce33218:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33254,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3323a
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce33240
    cmp/eq 0x02,r0
    bt LAB_ce33246
    bra LAB_ce3324e
    nop

LAB_ce3323a:
    mov.w @(DAT_ce33256,pc),r0
    bra LAB_ce3324a
    mov.b r5,@(r0,r4)

LAB_ce33240:
    mov.w @(DAT_ce33256,pc),r0
    bra LAB_ce3324a
    mov.b r6,@(r0,r4)

LAB_ce33246:
    mov.w @(DAT_ce33256,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce3324a:
    mov.w @(DAT_ce33258,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce3324e:
    mov.l @(PTR_ce3325c,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33254:
    #data 0x04c9
DAT_ce33256:
    #data 0x01e9
DAT_ce33258:
    #data 0x01a3
    #align4

PTR_ce3325c:
    #data loc_8c0530d8
DAT_ce33260:
    #data 0x0201
    #data 0x0201
DAT_ce33264:
    #data 0x02ff
    #data 0x02ff
DAT_ce33268:
    #data 0xffff
    #data 0xffff
DAT_ce3326c:
    #data 0x0201
    #data 0x0201
DAT_ce33270:
    #data 0x02ff
    #data 0x02ff
DAT_ce33274:
    #data 0xffff
    #data 0xffff
DAT_ce33278:
    #data 0x0201
    #data 0x0201
DAT_ce3327c:
    #data 0x02ff
    #data 0x02ff
DAT_ce33280:
    #data 0xffff
    #data 0xffff
DAT_ce33284:
    #data 0x0201
    #data 0x0201
DAT_ce33288:
    #data 0x02ff
    #data 0x02ff
DAT_ce3328c:
    #data 0xffff
    #data 0xffff
DAT_ce33290:
    #data 0x0201
    #data 0x0200
DAT_ce33294:
    #data 0x02ff
    #data 0x0201
DAT_ce33298:
    #data 0xffff
    #data 0x02ff
DAT_ce3329c:
    #data 0x0201
    #data 0x0201
DAT_ce332a0:
    #data 0x02ff
    #data 0x02ff
DAT_ce332a4:
    #data 0xffff
    #data 0xffff
DAT_ce332a8:
    #data 0x0028
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0300
DAT_ce332b6:
    #data 0x0028
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x2000
    #data 0x0060
DAT_ce332c4:
    #data 0x0003
    #data 0x2000
    #data 0x0006
    #data 0x0000
    #data 0x2000
    #data 0x2800
    #data 0x0800
    #data 0x0060
DAT_ce332d4:
    #data 0x0003
    #data 0x9100
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce332e4:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce332f4:
    #data 0x0003
    #data 0x9100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
    #align4

PTR_ce33304:
    #data LAB_ce3046a
PTR_ce33308:
    #data LAB_ce3001c
PTR_ce3330c:
    #data LAB_ce3046e
PTR_ce33310:
    #data LAB_ce30b1a
PTR_ce33314:
    #data LAB_ce30fac
PTR_ce33318:
    #data LAB_ce31106
PTR_ce3331c:
    #data LAB_ce312a2
PTR_ce33320:
    #data LAB_ce312e8
PTR_ce33324:
    #data LAB_ce313e4
PTR_ce33328:
    #data LAB_ce32bf6
PTR_ce3332c:
    #data LAB_ce32d20
PTR_ce33330:
    #data LAB_ce32ed8
PTR_ce33334:
    #data LAB_ce3313a
PTR_ce33338:
    #data LAB_ce3039c
PTR_ce3333c:
    #data LAB_ce32aaa
PTR_ce33340:
    #data LAB_ce30ee4
PTR_ce33344:
    #data LAB_ce3317c
PTR_ce33348:
    #data LAB_ce331ac
PTR_ce3334c:
    #data LAB_ce331dc
PTR_ce33350:
    #data LAB_ce33218
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce33374:
    #data LAB_ce304a4
PTR_ce33378:
    #data LAB_ce3088c
PTR_ce3337c:
    #data LAB_ce308b4
PTR_ce33380:
    #data LAB_ce304a4
PTR_ce33384:
    #data LAB_ce30b3c
PTR_ce33388:
    #data LAB_ce30e36
PTR_ce3338c:
    #data LAB_ce30e20
PTR_ce33390:
    #data LAB_ce30b2e
PTR_ce33394:
    #data LAB_ce30cea
PTR_ce33398:
    #data LAB_ce30d3a
PTR_ce3339c:
    #data FUN_ce30d8a
PTR_ce333a0:
    #data LAB_ce30fbe
PTR_ce333a4:
    #data LAB_ce3105a
PTR_ce333a8:
    #data LAB_ce310d4
PTR_ce333ac:
    #data LAB_ce31118
PTR_ce333b0:
    #data LAB_ce311a8
PTR_ce333b4:
    #data LAB_ce3122a
PTR_ce333b8:
    #data LAB_ce312b4
PTR_ce333bc:
    #data LAB_ce312c8
PTR_ce333c0:
    #data LAB_ce31334
PTR_ce333c4:
    #data LAB_ce313b0
PTR_ce333c8:
    #data LAB_ce31396
PTR_ce333cc:
    #data LAB_ce313b0
PTR_ce333d0:
    #data LAB_ce313ca
PTR_ce333d4:
    #data LAB_ce31346
PTR_ce333d8:
    #data LAB_ce31390
PTR_ce333dc:
    #data LAB_ce313f8
PTR_ce333e0:
    #data LAB_ce31526
PTR_ce333e4:
    #data LAB_ce31872
PTR_ce333e8:
    #data LAB_ce31b62
PTR_ce333ec:
    #data LAB_ce320d4
PTR_ce333f0:
    #data LAB_ce313f8
PTR_ce333f4:
    #data LAB_ce325ca
PTR_ce333f8:
    #data LAB_ce32a46
PTR_ce333fc:
    #data LAB_ce313f8
PTR_ce33400:
    #data LAB_ce313f8
PTR_ce33404:
    #data LAB_ce313f8
PTR_ce33408:
    #data LAB_ce3280a
PTR_ce3340c:
    #data LAB_ce31428
PTR_ce33410:
    #data LAB_ce314b0
PTR_ce33414:
    #data FUN_ce31504
PTR_ce33418:
    #data LAB_ce31538
PTR_ce3341c:
    #data LAB_ce31694
PTR_ce33420:
    #data LAB_ce316f4
PTR_ce33424:
    #data LAB_ce317a8
PTR_ce33428:
    #data LAB_ce31850
DAT_ce3342c:
    #data 0x5555
    #data 0x4085
DAT_ce33430:
    #data 0x4924
    #data 0x419a
DAT_ce33434:
    #data 0x2492
    #data 0xbf89
    #data 0x0000
    #data 0x40a0
    #data 0xdb6d
    #data 0x41de
    #data 0x2492
    #data 0xbf89
    #align4

PTR_ce33444:
    #data LAB_ce31888
PTR_ce33448:
    #data LAB_ce31922
PTR_ce3344c:
    #data LAB_ce319d0
PTR_ce33450:
    #data LAB_ce31b04
DAT_ce33454:
    #data 0x0007
    #data 0x0000
    #data 0x0008
    #data 0x0000
    #data 0x0009
    #data 0x0000
    #data 0x000a
    #data 0x0000
    #data 0x000b
    #data 0x0000
    #data 0x000c
    #data 0x0000
    #data 0x000d
    #data 0x0000
    #data 0x000e
    #data 0x0000
    #align4

PTR_ce33474:
    #data LAB_ce31b74
PTR_ce33478:
    #data LAB_ce31c1e
PTR_ce3347c:
    #data LAB_ce31cce
PTR_ce33480:
    #data LAB_ce31cce
PTR_ce33484:
    #data LAB_ce31e6e
PTR_ce33488:
    #data LAB_ce31ee4
PTR_ce3348c:
    #data LAB_ce31fc8
PTR_ce33490:
    #data FUN_ce32062
DAT_ce33494:
    #data 0x3737
    #data 0x3737
    #data 0x3838
    #data 0x0038
    #align4

PTR_ce3349c:
    #data LAB_ce32114
PTR_ce334a0:
    #data LAB_ce321cc
PTR_ce334a4:
    #data LAB_ce32280
PTR_ce334a8:
    #data LAB_ce32358
PTR_ce334ac:
    #data LAB_ce3255e
PTR_ce334b0:
    #data LAB_ce32600
PTR_ce334b4:
    #data LAB_ce32728
DAT_ce334b8:
    #data 0x5555
    #data 0x40d5
DAT_ce334bc:
    #data 0x0000
    #data 0x8000
DAT_ce334c0:
    #data 0x0000
    #data 0x0000
DAT_ce334c4:
    #data 0x2492
    #data 0xc009
    #data 0x5555
    #data 0x4155
    #data 0x0000
    #data 0x8000
    #data 0x0000
    #data 0x0000
    #data 0x2492
    #data 0xc009
    #align4

PTR_ce334d8:
    #data LAB_ce32834
PTR_ce334dc:
    #data LAB_ce328aa
PTR_ce334e0:
    #data LAB_ce328fc
PTR_ce334e4:
    #data LAB_ce329a0
PTR_ce334e8:
    #data FUN_ce32a24
PTR_ce334ec:
    #data LAB_ce32ad8
PTR_ce334f0:
    #data LAB_ce32b5c
PTR_ce334f4:
    #data LAB_ce32bca
PTR_ce334f8:
    #data LAB_ce32c44
PTR_ce334fc:
    #data LAB_ce32cbc
PTR_ce33500:
    #data LAB_ce32cc0
PTR_ce33504:
    #data LAB_ce32c44
PTR_ce33508:
    #data LAB_ce32d5c
PTR_ce3350c:
    #data LAB_ce32df0
PTR_ce33510:
    #data LAB_ce32e4e
PTR_ce33514:
    #data LAB_ce32ef6
PTR_ce33518:
    #data LAB_ce32f4a
PTR_ce3351c:
    #data LAB_ce33020
