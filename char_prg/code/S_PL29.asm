;╔══════════════════════════════════════════╗
;║ S_PL29 : Juggernaut Program              ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c034f54 0x8C034F54
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c0423fc 0x8C0423FC
#symbol loc_8c0424a6 0x8C0424A6
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
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c09b674 0x8C09B674
#symbol loc_8c0e29bc 0x8C0E29BC
#symbol loc_8c0fd966 0x8C0FD966
#symbol loc_8c103660 0x8C103660
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c28963c 0x8C28963C
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300fa,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce30100,pc),r7
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
    mov.l @(PTR_ce30104,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a4
    mov.l @(PTR_ce30108,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a4
    mov.l @(PTR_ce3010c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a4
    mov.l @(PTR_ce30110,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a4
    bsr FUN_ce30180
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a4
    bsr FUN_ce30130
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a4
    bsr FUN_ce300aa
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a4
    bsr FUN_ce30214
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a4
    bsr FUN_ce301c6
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a4
    bsr FUN_ce302c8
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a4
    bsr FUN_ce30290
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a4
    mov.l @(PTR_ce30114,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30118,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300a4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce300aa:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3011c,pc),r5
    mov.w @(DAT_ce300fc,pc),r6
    mov.l @(PTR_ce30120,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c8
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce300c8:
    mov.w @(DAT_ce300fc,pc),r5
    mov.l @(PTR_ce30124,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30128,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce300fe,pc),r0
    mov.l @(PTR_ce3012c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300fa:
    #data 0x0428
DAT_ce300fc:
    #data 0x036c
DAT_ce300fe:
    #data 0x01e9
    #align4

PTR_ce30100:
    #data PTR_ce321e4
PTR_ce30104:
    #data loc_8c054508
PTR_ce30108:
    #data loc_8c054b34
PTR_ce3010c:
    #data loc_8c05496c
PTR_ce30110:
    #data loc_8c054d04
PTR_ce30114:
    #data loc_8c053e00
PTR_ce30118:
    #data loc_8c0542e0
PTR_ce3011c:
    #data DAT_ce3217c
PTR_ce30120:
    #data loc_8c054e58
PTR_ce30124:
    #data loc_8c055c3a
PTR_ce30128:
    #data loc_8c056de4
PTR_ce3012c:
    #data loc_8c0530d8

;=============================================

FUN_ce30130:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30240,pc),r5
    mov.w @(DAT_ce30232,pc),r6
    mov.l @(PTR_ce30244,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30150
    mov.w @(DAT_ce30234,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30158

LAB_ce30150:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30158:
    mov.w @(DAT_ce30232,pc),r5
    mov.l @(PTR_ce30248,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30236,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3024c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30180:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30250,pc),r5
    mov.w @(DAT_ce30238,pc),r6
    mov.l @(PTR_ce30244,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3019e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3019e:
    mov.w @(DAT_ce30238,pc),r5
    mov.l @(PTR_ce30248,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30236,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3024c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301c6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30254,pc),r5
    mov.w @(DAT_ce3023a,pc),r6
    mov.l @(PTR_ce30244,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301e4
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301e4:
    mov.w @(DAT_ce3023a,pc),r5
    mov.l @(PTR_ce30248,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30258,pc),r2
    mov 0x0A,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30236,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3024c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30214:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3025c,pc),r5
    mov.w @(DAT_ce3023c,pc),r6
    mov.l @(PTR_ce30244,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30260
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30232:
    #data 0x0374
DAT_ce30234:
    #data 0x040c
DAT_ce30236:
    #data 0x01e9
DAT_ce30238:
    #data 0x037c
DAT_ce3023a:
    #data 0x0384
DAT_ce3023c:
    #data 0x038c
    #align4

PTR_ce30240:
    #data DAT_ce3218c
PTR_ce30244:
    #data loc_8c054e58
PTR_ce30248:
    #data loc_8c055c3a
PTR_ce3024c:
    #data loc_8c0530d8
PTR_ce30250:
    #data DAT_ce3219c
PTR_ce30254:
    #data DAT_ce321ac
PTR_ce30258:
    #data loc_8c056de4
PTR_ce3025c:
    #data DAT_ce321c0

;=============================================

LAB_ce30260:
    mov.w @(DAT_ce30340,pc),r5
    mov.l @(PTR_ce3034c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30350,pc),r2
    mov 0x0A,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
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

FUN_ce30290:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30358,pc),r3
    jsr @r3
    mov 0x04,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302aa
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302aa:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
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

FUN_ce302c8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3035c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce302e0
    mov.w @(DAT_ce30344,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302e8

LAB_ce302e0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302e8:
    mov.w @(DAT_ce30342,pc),r0
    mov 0x09,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30354,pc),r3
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

LAB_ce30308:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30360,pc),r5
    mov.w @(DAT_ce30346,pc),r6
    mov.l @(PTR_ce30364,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30328
    mov.w @(DAT_ce30344,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30330

LAB_ce30328:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30330:
    mov.w @(DAT_ce30348,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov r3,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30340:
    #data 0x038c
DAT_ce30342:
    #data 0x01e9
DAT_ce30344:
    #data 0x040c
DAT_ce30346:
    #data 0x0374
DAT_ce30348:
    #data 0x0258
    #align4

PTR_ce3034c:
    #data loc_8c055c3a
PTR_ce30350:
    #data loc_8c056de4
PTR_ce30354:
    #data loc_8c0530d8
PTR_ce30358:
    #data loc_8c054da0
PTR_ce3035c:
    #data loc_8c054d1c
PTR_ce30360:
    #data DAT_ce3218c
PTR_ce30364:
    #data loc_8c054e58

;=============================================

LAB_ce30368:
    mov.w @(DAT_ce30456,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce30392
    mov 0x00,r13
    mov.w @(DAT_ce30458,pc),r0
    mov.w @(DAT_ce3045a,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    cmp/eq r2,r3
    bt LAB_ce30392
    mov.w @(DAT_ce30456,pc),r0
    mov 0x00,r5
    mov.l @(PTR_ce30470,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce30392:
    mov.w @(DAT_ce3045c,pc),r0
    mov 0x02,r2
    mov.w r2,@(r0,r14)
    mov.w @(DAT_ce3045e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce303c0
    mov.w @(DAT_ce30460,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3044e
    mov.w @(DAT_ce3045e,pc),r0
    mov.w @(DAT_ce30456,pc),r4
    mov.b @(r0,r14),r3
    add r14,r4
    add 0x01,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30462,pc),r0
    mov.b r13,@(r0,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)

LAB_ce303c0:
    mov.w @(DAT_ce3045e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3044e
    mov.w @(DAT_ce30464,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce303ea
    mov.w @(DAT_ce30460,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30408
    mov.w @(DAT_ce30466,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce303ea
    mov.w @(DAT_ce30468,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0xE0,r0
    bf LAB_ce30408

LAB_ce303ea:
    mov.w @(DAT_ce30456,pc),r4
    add r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x5,r4)
    mov 0x00,r5
    mov.b r0,@(0x4,r4)
    mov r14,r4
    mov.w @(DAT_ce3046a,pc),r0
    mov.l @(PTR_ce30470,pc),r3
    mov.b r13,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30408:
    mov.w @(DAT_ce30462,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3041a
    mov.w @(DAT_ce3046a,pc),r0
    mov 0xFF,r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce30466,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce3041a:
    mov.w @(DAT_ce3046c,pc),r0
    mov 0x01,r7
    mov 0x00,r5
    mov r14,r4
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    mov 0x07,r3
    mov.b @(r0,r14),r2
    and r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    mov 0x25,r0
    mov.b @(r0,r14),r2
    lds.l @r15+,PR
    extu.b r2,r2
    mov r2,r1
    shll2 r2
    add r1,r2
    mov.l @r15+,r13
    shll r2
    add r2,r6
    mov.l @(PTR_ce30474,pc),r2
    add 0x02,r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce3044e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30456:
    #data 0x02a4
DAT_ce30458:
    #data 0x0158
DAT_ce3045a:
    #data 0x1600
DAT_ce3045c:
    #data 0x03e4
DAT_ce3045e:
    #data 0x02a8
DAT_ce30460:
    #data 0x02a9
DAT_ce30462:
    #data 0x019e
DAT_ce30464:
    #data 0x0420
DAT_ce30466:
    #data 0x02aa
DAT_ce30468:
    #data 0x014a
DAT_ce3046a:
    #data 0x0205
DAT_ce3046c:
    #data 0x02ab
    #align4

PTR_ce30470:
    #data loc_8c035162
PTR_ce30474:
    #data loc_8c03544c

;=============================================

LAB_ce30478:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce305b4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce305a8,pc),r0
    mov.b @(r0,r14),r2
    add 0xEA,r0
    mov.b @(r0,r14),r1
    extu.b r2,r2
    mov.w @(DAT_ce305aa,pc),r0
    mov r2,r3
    shll r2
    extu.b r1,r1
    add r3,r2
    mov.l @(PTR_ce305b8,pc),r3
    shll2 r1
    shll2 r2
    add r1,r2
    add r3,r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce305ac,pc),r0
    mov.b @(r0,r14),r1
    add 0xBF,r0
    mov.b r1,@(r0,r14)
    add 0x52,r0
    mov.b @(r0,r14),r6
    add 0x05,r0
    mov.b @(r0,r14),r5
    mov r6,r2
    mov r6,r7
    shll r7
    mov r5,r1
    shll2 r2
    add r2,r7
    mov r5,r2
    shll r2
    add r1,r2
    mov.w @(DAT_ce305b0,pc),r1
    add 0xEA,r0
    add r2,r7
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce305ae,pc),r0
    add r2,r7
    mov.b r2,@r15
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r1,r2
    bt/s LAB_ce3052c
    mov 0x00,r4
    extu.b r5,r5
    tst r5,r5
    bf LAB_ce3052c
    mov.b @r15,r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3052c
    extu.b r6,r6
    tst r6,r6
    bf LAB_ce3052c
    mov.w @(DAT_ce305b2,pc),r0
    mov 0x12,r3
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce305bc,pc),r3
    mov 0x03,r6
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce305c0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce305c4,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4
    bra LAB_ce30568
    nop

LAB_ce3052c:
    mov.w @(DAT_ce305b2,pc),r0
    mov.l @(PTR_ce305bc,pc),r3
    mov.b r7,@(r0,r14)
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
    mov.w @(DAT_ce305ac,pc),r0
    mov.b @(r0,r14),r6
    add 0x11,r0
    mov.b @(r0,r14),r5
    add 0x05,r0
    mov.b @(r0,r14),r2
    extu.b r5,r5
    shll r5
    add r2,r5
    mov.l @(PTR_ce305c0,pc),r2
    add 0x07,r5
    jsr @r2
    mov r14,r4

LAB_ce30568:
    mov.w @(DAT_ce305ac,pc),r0
    mov r14,r4
    mov.b @(r0,r14),r5
    add 0x14,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce305c8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3057a:
    mov.w @(DAT_ce305a8,pc),r0
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
    bf/s LAB_ce305d0
    exts.w r4,r5
    mov.l @(PTR_ce305cc,pc),r4
    bra LAB_ce305d2
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305a8:
    #data 0x01fe
DAT_ce305aa:
    #data 0x03f4
DAT_ce305ac:
    #data 0x01e8
DAT_ce305ae:
    #data 0x01fa
DAT_ce305b0:
    #data 0x0800
DAT_ce305b2:
    #data 0x01a1
    #align4

PTR_ce305b4:
    #data loc_8c052b4c
PTR_ce305b8:
    #data DAT_ce32134
PTR_ce305bc:
    #data loc_8c2896b0
PTR_ce305c0:
    #data loc_8c034e8c
PTR_ce305c4:
    #data loc_8c0e29bc
PTR_ce305c8:
    #data loc_8c04223a
PTR_ce305cc:
    #data DAT_ce3214c

;=============================================

LAB_ce305d0:
    mov.l @(PTR_ce30708,pc),r4

LAB_ce305d2:
    mov.w @(DAT_ce306f6,pc),r0
    add r5,r4
    mov.l r4,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce306f8,pc),r0
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
    mov.l @(PTR_ce3070c,pc),r3
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
    mov.w @(DAT_ce306f8,pc),r0
    mov.l @(PTR_ce30710,pc),r2
    mov.b @(r0,r14),r6
    add 0x16,r0
    mov.b @(r0,r14),r5
    add 0x0B,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce306f8,pc),r0
    mov.l @(PTR_ce30714,pc),r3
    mov.b @(r0,r14),r5
    add 0x14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce306fa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3064c
    mov.w @(DAT_ce306fc,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce3065c
    mov.w @(DAT_ce306fc,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    bra LAB_ce3065c
    mov.b r2,@(r0,r14)

LAB_ce3064c:
    mov.w @(DAT_ce306fc,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce3065c
    mov.w @(DAT_ce306fc,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce3065c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30662:
    mov.w @(DAT_ce306fa,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30676
    mov.w @(DAT_ce306fc,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce3067e
    bra LAB_ce30682
    nop

LAB_ce30676:
    mov.w @(DAT_ce306fc,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30682

LAB_ce3067e:
    bra LAB_ce3057a
    nop

LAB_ce30682:
    rts
    nop

LAB_ce30686:
    mov.w @(DAT_ce306fe,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.w @(DAT_ce30700,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce30718,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce306a2:
    mov.w @(DAT_ce30702,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce306f2
    mov.w @(DAT_ce306f8,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce306f2
    mov.w @(DAT_ce30704,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce306f2
    mov 0x00,r5
    mov.b r5,@(r0,r4)
    add 0x60,r0
    mov 0x19,r3
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce3070c,pc),r3
    mov.l r5,@(r0,r4)
    mov 0x01,r5
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce3071c,pc),r4
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)

LAB_ce306f2:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306f6:
    #data 0x03f4
DAT_ce306f8:
    #data 0x01e8
DAT_ce306fa:
    #data 0x01fe
DAT_ce306fc:
    #data 0x01d6
DAT_ce306fe:
    #data 0x02a9
DAT_ce30700:
    #data 0x01ff
DAT_ce30702:
    #data 0x01f9
DAT_ce30704:
    #data 0x0141
    #align4

PTR_ce30708:
    #data DAT_ce32164
PTR_ce3070c:
    #data loc_8c2896b0
PTR_ce30710:
    #data loc_8c034e8c
PTR_ce30714:
    #data loc_8c04223a
PTR_ce30718:
    #data PTR_ce32264
PTR_ce3071c:
    #data loc_8c26a518

;=============================================

LAB_ce30720:
    mov.w @(DAT_ce307f0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce30740
    cmp/eq 0x00,r0
    bt LAB_ce30746
    cmp/eq 0x02,r0
    bt LAB_ce307aa
    cmp/eq 0x01,r0
    bt LAB_ce307b6
    bra LAB_ce307ea
    nop

LAB_ce30740:
    mov.l @(PTR_ce307f4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30746:
    mov 0x5C,r1
    mov.l @(PTR_ce307f8,pc),r3
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
    mov.l @(PTR_ce307fc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3079a
    lds.l @r15+,PR
    mov.l @(PTR_ce30800,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3079a:
    mov.w @(DAT_ce307f2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce307ea
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce306a2
    mov.l @r15+,r14

LAB_ce307aa:
    mov.l @(PTR_ce30804,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30808,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce307b6:
    mov.l @(PTR_ce3080c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30810,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce307fc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce307d4
    mov.l @(PTR_ce30814,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce307d4:
    mov.l @(PTR_ce30818,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce307ea
    lds.l @r15+,PR
    mov.l @(PTR_ce3081c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce307ea:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307f0:
    #data 0x01ff
DAT_ce307f2:
    #data 0x01fe
    #align4

PTR_ce307f4:
    #data loc_8c0511e2
PTR_ce307f8:
    #data loc_8c052c84
PTR_ce307fc:
    #data loc_8c034dee
PTR_ce30800:
    #data loc_8c051648
PTR_ce30804:
    #data loc_8c050084
PTR_ce30808:
    #data loc_8c04ff88
PTR_ce3080c:
    #data loc_8c04fea8
PTR_ce30810:
    #data loc_8c050048
PTR_ce30814:
    #data loc_8c05176e
PTR_ce30818:
    #data loc_8c052ce2
PTR_ce3081c:
    #data loc_8c052dac

;=============================================

LAB_ce30820:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3087c
    mov.l @(PTR_ce30948,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x41,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x05,r5
    mov.w @(DAT_ce3093e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3094c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce30940,pc),r0
    mov.l @(PTR_ce30950,pc),r2
    mov.b r4,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30954,pc),r3
    mov 0x14,r5
    mov 0x06,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30958,pc),r2
    mov 0x16,r5
    jsr @r2
    mov r14,r4

LAB_ce3087c:
    mov.w @(DAT_ce30942,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3088c
    mov.l @(PTR_ce3095c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3088c:
    mov 0x5C,r1
    mov.l @(PTR_ce30960,pc),r3
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
    mov.l @(PTR_ce30964,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce308e0
    lds.l @r15+,PR
    mov.l @(PTR_ce30968,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce308e0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce308e6:
    mov r4,r3
    mov.l @(PTR_ce3096c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce308f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30964,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30944,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30938
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
    mov.w @(DAT_ce30946,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30930
    mova @(DAT_ce30970,pc),r0
    bra LAB_ce30934
    fmov.s @r0,fr3

LAB_ce30930:
    mova @(DAT_ce30974,pc),r0
    fmov.s @r0,fr3

LAB_ce30934:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce30938:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3093e:
    #data 0x01a1
DAT_ce30940:
    #data 0x01f9
DAT_ce30942:
    #data 0x01ff
DAT_ce30944:
    #data 0x0141
DAT_ce30946:
    #data 0x01d2
    #align4

PTR_ce30948:
    #data loc_8c052b4c
PTR_ce3094c:
    #data loc_8c2896b0
PTR_ce30950:
    #data loc_8c056de4
PTR_ce30954:
    #data loc_8c034e8c
PTR_ce30958:
    #data loc_8c04223a
PTR_ce3095c:
    #data loc_8c0511e2
PTR_ce30960:
    #data loc_8c052c84
PTR_ce30964:
    #data loc_8c034dee
PTR_ce30968:
    #data loc_8c051648
PTR_ce3096c:
    #data PTR_ce32274
DAT_ce30970:
    #data 0x41200000
DAT_ce30974:
    #data 0xc1200000

;=============================================

LAB_ce30978:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30ad4,pc),r3
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
    bt LAB_ce309fe
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
    mov.w @(DAT_ce30ace,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce309e8
    mova @(DAT_ce30ad8,pc),r0
    bra LAB_ce309ec
    fmov.s @r0,fr3

LAB_ce309e8:
    mova @(DAT_ce30adc,pc),r0
    fmov.s @r0,fr3

LAB_ce309ec:
    mov 0x02,r6
    mov.l @(PTR_ce30ae0,pc),r3
    mov 0x5C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov r6,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce309fe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30a04:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30ad4,pc),r3
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
    mov.w @(DAT_ce30ad0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a5c
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30ad0,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30a5c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30a62:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30ad4,pc),r3
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
    bt LAB_ce30ab6
    lds.l @r15+,PR
    mov.l @(PTR_ce30ae4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30ab6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30abc:
    mov r4,r3
    mov.l @(PTR_ce30ae8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ace:
    #data 0x01d2
DAT_ce30ad0:
    #data 0x0141
    #align4

PTR_ce30ad4:
    #data loc_8c034dee
DAT_ce30ad8:
    #data 0x40d55555
DAT_ce30adc:
    #data 0xc0d55555
PTR_ce30ae0:
    #data loc_8c034e8c
PTR_ce30ae4:
    #data loc_8c051648
PTR_ce30ae8:
    #data PTR_ce32284

;=============================================

LAB_ce30aec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30c00,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30bfa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30b5a
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce30c04,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30c08,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30bfc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30b34
    mova @(DAT_ce30c0c,pc),r0
    bra LAB_ce30b38
    fmov.s @r0,fr3

LAB_ce30b34:
    mova @(DAT_ce30c10,pc),r0
    fmov.s @r0,fr3

LAB_ce30b38:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30bfc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30b4a
    mova @(DAT_ce30c14,pc),r0
    bra LAB_ce30b4e
    fmov.s @r0,fr3

LAB_ce30b4a:
    mova @(DAT_ce30c18,pc),r0
    fmov.s @r0,fr3

LAB_ce30b4e:
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce30b60
    mov.l @r15+,r14

LAB_ce30b5a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30b60:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30c00,pc),r3
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce30bfe,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce30bf4
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
    mov.w @(DAT_ce30bfe,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30bfc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30bde
    mova @(DAT_ce30c1c,pc),r0
    bra LAB_ce30be2
    fmov.s @r0,fr3

LAB_ce30bde:
    mova @(DAT_ce30c20,pc),r0
    fmov.s @r0,fr3

LAB_ce30be2:
    mov.l @(PTR_ce30c24,pc),r3
    mov 0x5C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x03,r6
    mov 0x02,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce30bf4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30bfa:
    #data 0x0141
DAT_ce30bfc:
    #data 0x01d2
DAT_ce30bfe:
    #data 0x041c
    #align4

PTR_ce30c00:
    #data loc_8c034dee
DAT_ce30c04:
    #data 0x3f555555
DAT_ce30c08:
    #data 0xbe200000
DAT_ce30c0c:
    #data 0xc13aaaaa
DAT_ce30c10:
    #data 0x413aaaaa
DAT_ce30c14:
    #data 0x3dd55555
DAT_ce30c18:
    #data 0xbdd55555
DAT_ce30c1c:
    #data 0xc0d55555
DAT_ce30c20:
    #data 0x40d55555
PTR_ce30c24:
    #data loc_8c034e8c

;=============================================

LAB_ce30c28:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30d54,pc),r3
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
    bt LAB_ce30c7c
    lds.l @r15+,PR
    mov.l @(PTR_ce30d58,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c7c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30c82:
    mov r4,r3
    mov.l @(PTR_ce30d5c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30c94:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce30d50,pc),r0
    mov.b r3,@(r0,r4)
    mov 0x3C,r0
    mov.l @(PTR_ce30d60,pc),r3
    mov.w r0,@(0x1c,r4)
    jmp @r3
    mov 0x12,r5

LAB_ce30cac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d54,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce30cc4
    mov.b @(0x5,r14),r0
    add 0x01,r0
    bra LAB_ce30cca
    mov.b r0,@(0x5,r14)

LAB_ce30cc4:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)

LAB_ce30cca:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30cd0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d64,pc),r3
    jsr @r3
    mov.l r4,@r15
    tst r0,r0
    bt LAB_ce30ce8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d58,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30ce8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30cf0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce30d54,pc),r11
    extu.b r0,r0
    mov.l @(PTR_ce30d60,pc),r13
    cmp/eq 0x00,r0
    bt/s LAB_ce30d1a
    mov 0x00,r12
    cmp/eq 0x01,r0
    bt LAB_ce30d6c
    cmp/eq 0x02,r0
    bt LAB_ce30dca
    cmp/eq 0x03,r0
    bt LAB_ce30dfe
    bra LAB_ce30e02
    nop

LAB_ce30d1a:
    mov.b @(0x7,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce30d68,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30d52,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce30d4c
    mov 0x02,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30d4c:
    bra LAB_ce30dde
    mov 0x00,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d50:
    #data 0x012c
DAT_ce30d52:
    #data 0x0130
    #align4

PTR_ce30d54:
    #data loc_8c034dee
PTR_ce30d58:
    #data loc_8c051648
PTR_ce30d5c:
    #data PTR_ce32290
PTR_ce30d60:
    #data loc_8c034e8c
PTR_ce30d64:
    #data loc_8c046c8a
DAT_ce30d68:
    #data 0xc0555555

;=============================================

LAB_ce30d6c:
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
    jsr @r11
    mov r14,r4
    mov.l @(PTR_ce30e9c,pc),r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce30e02
    mov.w @(DAT_ce30e98,pc),r0
    mov 0x04,r3
    mov 0x08,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30ea0,pc),r3
    mov 0x01,r6
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r2
    add 0x01,r2
    mov.w r2,@(r0,r1)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r13
    mov r14,r4
    bra LAB_ce30e02
    nop

LAB_ce30dca:
    jsr @r11
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30de6
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce30dde:
    jsr @r13
    mov r14,r4
    bra LAB_ce30e02
    nop

LAB_ce30de6:
    mov.w @(DAT_ce30e9a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e02
    mov.l @(PTR_ce30ea4,pc),r5
    mov 0x01,r4
    mov.b r12,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x5,r5)
    bra LAB_ce30e02
    mov.b r0,@(0x6,r5)

LAB_ce30dfe:
    jsr @r11
    mov r14,r4

LAB_ce30e02:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra FUN_ce30cd0
    mov.l @r15+,r14

LAB_ce30e10:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce30e34
    mov 0x3C,r0
    mov.l @(PTR_ce30ea8,pc),r3
    mov.w r0,@(0x1c,r14)
    mov 0x13,r5
    mov.b @(0x7,r14),r0
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce30e3a
    nop

LAB_ce30e34:
    mov.l @(PTR_ce30eac,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30e3a:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30cd0
    mov.l @r15+,r14

LAB_ce30e42:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce30e66
    mov 0x3C,r0
    mov.l @(PTR_ce30ea8,pc),r3
    mov.w r0,@(0x1c,r14)
    mov 0x13,r5
    mov.b @(0x7,r14),r0
    mov 0x07,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce30e80
    nop

LAB_ce30e66:
    mov.l @(PTR_ce30eac,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30e9a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e80
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x07,r5
    mov.l @(PTR_ce30eb0,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30e80:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30cd0
    mov.l @r15+,r14

LAB_ce30e88:
    sts.l PR,@-r15
    mov.l @(PTR_ce30eac,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    bra FUN_ce30cd0
    lds.l @r15+,PR

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e98:
    #data 0x01a1
DAT_ce30e9a:
    #data 0x0141
    #align4

PTR_ce30e9c:
    #data loc_8c28963c
PTR_ce30ea0:
    #data loc_8c2896b0
PTR_ce30ea4:
    #data loc_8c26a518
PTR_ce30ea8:
    #data loc_8c034e8c
PTR_ce30eac:
    #data loc_8c034dee
PTR_ce30eb0:
    #data loc_8c0e29bc

;=============================================

LAB_ce30eb4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30f72
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30fbc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov r0,r5
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov 0x20,r0
    mov.l @(PTR_ce30fc0,pc),r5
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30ef6
    mov 0x03,r4
    cmp/eq 0x01,r0
    bt LAB_ce30f38
    cmp/eq 0x02,r0
    bt LAB_ce30f42
    cmp/eq 0x03,r0
    bt LAB_ce30f42
    cmp/eq 0x04,r0
    bt LAB_ce30f5e
    bra LAB_ce30f88
    nop

LAB_ce30ef6:
    mov.w @(DAT_ce30fb6,pc),r0
    mov.w @(DAT_ce30fb8,pc),r3
    mov.l @(r0,r14),r6
    mov 0x00,r0
    mov.l @(DAT_ce30fc4,pc),r2
    mov.l r6,@r15
    add r3,r6
    mov.l @r6,r1
    and r2,r1
    or r0,r1
    tst r1,r1
    bt LAB_ce30f16
    mov 0x20,r0
    mov 0x06,r3
    bra LAB_ce30f88
    mov.b r3,@(r0,r14)

LAB_ce30f16:
    mov 0x46,r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bf LAB_ce30f22
    bra LAB_ce30f24
    mov 0x00,r5

LAB_ce30f22:
    mov 0x04,r5

LAB_ce30f24:
    mov.l @(PTR_ce30fcc,pc),r3
    mov.l @(PTR_ce30fc8,pc),r0
    mov.l @r3,r2
    mov.l @(0x1c,r2),r1
    and r1,r4
    add r5,r4
    mov.b @(r0,r4),r2
    mov 0x20,r0
    bra LAB_ce30f88
    mov.b r2,@(r0,r14)

LAB_ce30f38:
    mov 0x20,r0
    mov 0x02,r1
    mov.b r1,@(r0,r14)
    bra LAB_ce30f64
    mov r1,r6

LAB_ce30f42:
    mov 0x3E,r0
    mov.b @(r0,r5),r3
    mov.b @(0x2,r14),r0
    extu.b r0,r0
    cmp/eq r0,r3
    bf LAB_ce30f56
    mov 0x20,r0
    mov 0x07,r2
    bra LAB_ce30f88
    mov.b r2,@(r0,r14)

LAB_ce30f56:
    mov 0x20,r0
    mov 0x05,r1
    bra LAB_ce30f62
    mov.b r1,@(r0,r14)

LAB_ce30f5e:
    mov 0x20,r0
    mov.b r4,@(r0,r14)

LAB_ce30f62:
    mov 0x05,r6

LAB_ce30f64:
    mov r14,r4
    mov 0x13,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce30fd0,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f72:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce30fd4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    add 0x04,r15
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f88:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f90:
    mov.w @(DAT_ce30fba,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30fd8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30fa4:
    mov r4,r3
    mov.l @(PTR_ce30fdc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fb6:
    #data 0x020c
DAT_ce30fb8:
    #data 0x0414
DAT_ce30fba:
    #data 0x01e9
    #align4

PTR_ce30fbc:
    #data loc_8c035162
PTR_ce30fc0:
    #data loc_8c2895f0
DAT_ce30fc4:
    #data 0x04000000
PTR_ce30fc8:
    #data DAT_ce32298
PTR_ce30fcc:
    #data loc_8c26823c
PTR_ce30fd0:
    #data loc_8c034e8c
PTR_ce30fd4:
    #data PTR_ce322a0
PTR_ce30fd8:
    #data PTR_ce322c0
PTR_ce30fdc:
    #data PTR_ce322e8

;=============================================

LAB_ce30fe0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3110c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce310fe,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31100,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31102,pc),r0
    mov 0x38,r2
    mov.l @(PTR_ce31110,pc),r3
    mov r13,r5
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
    mov.l @(PTR_ce31114,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31118,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31104,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce3111c,pc),r3
    mov r14,r4
    mov.b r13,@(r0,r14)
    add 0xAA,r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    extu.b r6,r6
    shll r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce3104e:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31120,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31106,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce310c2
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31124,pc),r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31108,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31082
    bra LAB_ce31084
    mov 0x38,r0

LAB_ce31082:
    mov 0x2E,r0

LAB_ce31084:
    mov 0x00,r6
    mov.l @(PTR_ce31128,pc),r12
    mov r6,r5
    mov.w r0,@(0x1c,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce31108,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce3109e
    mov 0x00,r13
    bra LAB_ce310a0
    mov 0x05,r4

LAB_ce3109e:
    mov 0x03,r4

LAB_ce310a0:
    exts.b r4,r11
    cmp/pl r11
    bf LAB_ce310b6

LAB_ce310a6:
    mov 0x01,r5
    mov r13,r6
    jsr @r12
    mov r14,r4
    add 0x01,r13
    exts.b r13,r3
    cmp/ge r11,r3
    bf LAB_ce310a6

LAB_ce310b6:
    mov.w @(DAT_ce3110a,pc),r0
    mov 0x00,r3
    mov 0x10,r2
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)

LAB_ce310c2:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce310ce:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31120,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce310f8
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3111c,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce310f8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310fe:
    #data 0x02a9
DAT_ce31100:
    #data 0x041c
DAT_ce31102:
    #data 0x01a1
DAT_ce31104:
    #data 0x01f9
DAT_ce31106:
    #data 0x0141
DAT_ce31108:
    #data 0x01a3
DAT_ce3110a:
    #data 0x027b
    #align4

PTR_ce3110c:
    #data loc_8c05218a
PTR_ce31110:
    #data loc_8c2896b0
PTR_ce31114:
    #data loc_8c035162
PTR_ce31118:
    #data loc_8c05115a
PTR_ce3111c:
    #data loc_8c034e8c
PTR_ce31120:
    #data loc_8c034dee
PTR_ce31124:
    #data loc_8c26a518
PTR_ce31128:
    #data loc_8c09b674

;=============================================

LAB_ce3112c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31274,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31146
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31278,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31146:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3114e:
    mov r4,r3
    mov.l @(PTR_ce3127c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31160:
    mov.w @(DAT_ce3125e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3117e
    mov.w @(DAT_ce31262,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31260,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3117e:
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31264,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31266,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFB,r0
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    add 0x09,r0
    mov 0x50,r3
    mov.w r3,@(r0,r14)
    add 0x02,r0
    mov.b r13,@(r0,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce31280,pc),r3
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31284,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31288,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31268,pc),r0
    mov 0x33,r3
    mov r13,r6
    mov r14,r4
    mov.b r13,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3128c,pc),r3
    mov 0x16,r5
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
    mov.l @(PTR_ce31290,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce311f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3126a,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3126c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3125e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3121a
    bra LAB_ce3121c
    mov 0x02,r3

LAB_ce3121a:
    mov 0x00,r3

LAB_ce3121c:
    mov.w @(DAT_ce3126e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31274,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31270,pc),r0
    fldi0 fr4
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt/s LAB_ce3129c
    mov 0x00,r4
    mov.w @(DAT_ce31270,pc),r0
    mov r15,r5
    mov.l @(PTR_ce31298,pc),r3
    mov 0x01,r6
    mov.b r4,@(r0,r14)
    mova @(DAT_ce31294,pc),r0
    fmov.s fr4,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce31262,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3125e:
    #data 0x0255
DAT_ce31260:
    #data 0x00ff
DAT_ce31262:
    #data 0x03f0
DAT_ce31264:
    #data 0x041c
DAT_ce31266:
    #data 0x02a9
DAT_ce31268:
    #data 0x01f9
DAT_ce3126a:
    #data 0x03f8
DAT_ce3126c:
    #data 0x0328
DAT_ce3126e:
    #data 0x03f1
DAT_ce31270:
    #data 0x0141
    #align4

PTR_ce31274:
    #data loc_8c034dee
PTR_ce31278:
    #data loc_8c051648
PTR_ce3127c:
    #data PTR_ce322f8
PTR_ce31280:
    #data loc_8c05218a
PTR_ce31284:
    #data loc_8c035162
PTR_ce31288:
    #data loc_8c05115a
PTR_ce3128c:
    #data loc_8c2896b0
PTR_ce31290:
    #data loc_8c034e8c
DAT_ce31294:
    #data 0x434db6db
PTR_ce31298:
    #data loc_8c050834

;=============================================

LAB_ce3129c:
    mov.w @(DAT_ce3139a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce312f0
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3139a,pc),r0
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3139c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce312ca
    mova @(DAT_ce313a8,pc),r0
    bra LAB_ce312ce
    fmov.s @r0,fr3

LAB_ce312ca:
    mova @(DAT_ce313ac,pc),r0
    fmov.s @r0,fr3

LAB_ce312ce:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3139c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce312e0
    mova @(DAT_ce313b0,pc),r0
    bra LAB_ce312e4
    fmov.s @r0,fr3

LAB_ce312e0:
    mova @(DAT_ce313b4,pc),r0
    fmov.s @r0,fr3

LAB_ce312e4:
    mov.l @(PTR_ce313b8,pc),r3
    mov 0x68,r0
    mov 0x00,r5
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce312f0:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312f8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3139e,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce313a0,pc),r0
    mov.l @(PTR_ce313bc,pc),r3
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
    mov.w @(DAT_ce313a2,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    mov 0x03,r3
    mov.b @(r0,r14),r2
    and r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.l @(PTR_ce313c0,pc),r0
    mov.b @(r0,r1),r2
    mov.b r2,@r15
    extu.b r2,r2
    tst r2,r2
    bt LAB_ce31370
    mov 0x25,r0
    mov.b @r15,r6
    mov.b @(r0,r14),r2
    mov 0x00,r5
    extu.b r6,r6
    extu.b r2,r2
    mov r2,r1
    shll2 r2
    add r1,r2
    shll r2
    add r2,r6
    mov.l @(PTR_ce313c4,pc),r2
    mov 0x01,r7
    jsr @r2
    mov r14,r4
    bra LAB_ce31378
    nop

LAB_ce31370:
    mov.l @(PTR_ce313c8,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4

LAB_ce31378:
    mov.w @(DAT_ce313a4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce313d2
    mov 0x00,r13
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce313cc
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce313a4,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce313a6,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    bra LAB_ce313d2
    mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3139a:
    #data 0x0141
DAT_ce3139c:
    #data 0x01d2
DAT_ce3139e:
    #data 0x03f8
DAT_ce313a0:
    #data 0x0328
DAT_ce313a2:
    #data 0x02a5
DAT_ce313a4:
    #data 0x019e
DAT_ce313a6:
    #data 0x02b0
    #align4

DAT_ce313a8:
    #data 0x41555555
DAT_ce313ac:
    #data 0xc1555555
DAT_ce313b0:
    #data 0x3ed55555
DAT_ce313b4:
    #data 0xbed55555
PTR_ce313b8:
    #data loc_8c0e29bc
PTR_ce313bc:
    #data loc_8c034dee
PTR_ce313c0:
    #data DAT_ce3230d
PTR_ce313c4:
    #data loc_8c03544c
PTR_ce313c8:
    #data loc_8c035162

;=============================================

LAB_ce313cc:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)

LAB_ce313d2:
    mov.w @(DAT_ce314d0,pc),r0
    mov.w @(DAT_ce314d2,pc),r2
    mov.b @(r0,r14),r3
    cmp/eq r2,r3
    bt LAB_ce31468
    mov.w @(DAT_ce314d4,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce31404
    mov.w @(DAT_ce314d6,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bt LAB_ce313fe
    mov.w @(DAT_ce314d8,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce313fa
    bra LAB_ce313fc
    mov 0x01,r5

LAB_ce313fa:
    mov 0x02,r5

LAB_ce313fc:
    and r5,r4

LAB_ce313fe:
    extu.b r4,r4
    tst r4,r4
    bf LAB_ce31468

LAB_ce31404:
    mov.l @(PTR_ce314e8,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce31422
    mov.w @(0x1e,r14),r0
    mov.w @(DAT_ce314da,pc),r3
    add 0x01,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r3,r0
    bt LAB_ce31422
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)

LAB_ce31422:
    mov.l @(PTR_ce314ec,pc),r6
    mov 0x03,r5
    mov 0x04,r4

LAB_ce31428:
    extu.b r4,r0
    mov 0x1E,r3
    mov.b @(r0,r6),r2
    add r14,r3
    mov.w @r3,r3
    extu.b r2,r2
    cmp/ge r2,r3
    bf LAB_ce3143c
    bra LAB_ce31444
    add r4,r5

LAB_ce3143c:
    add 0xFF,r4
    extu.b r4,r3
    cmp/pz r3
    bt LAB_ce31428

LAB_ce31444:
    mov.w @(DAT_ce314dc,pc),r4
    extu.b r5,r5
    add r14,r4
    mov.b @(0xc,r4),r0
    cmp/ge r5,r0
    bt LAB_ce31468
    mov.w @(DAT_ce314de,pc),r0
    mov.l @(r0,r14),r2
    mov.w @(DAT_ce314e0,pc),r0
    mov.w @(r0,r2),r3
    tst r3,r3
    bt LAB_ce31468
    mov.w @(0xa,r4),r0
    add 0xFF,r0
    mov.w r0,@(0xa,r4)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce314c6

LAB_ce31468:
    mov.w @(DAT_ce314e2,pc),r0
    mov 0x34,r3
    mov.l @(PTR_ce314f4,pc),r4
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce314e4,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce314e6,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce314f0,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x03,r0
    mov.b r0,@(0x5,r4)
    mov.l @(PTR_ce314f8,pc),r2
    mov 0x01,r0
    mov 0x00,r5
    mov.b r0,@(0x6,r4)
    jsr @r2
    mov r14,r4
    mov r14,r4
    mov 0x16,r5
    mov 0x01,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce314fc,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce314c6:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314d0:
    #data 0x019e
DAT_ce314d2:
    #data 0x0081
DAT_ce314d4:
    #data 0x02b0
DAT_ce314d6:
    #data 0x01fd
DAT_ce314d8:
    #data 0x01d2
DAT_ce314da:
    #data 0x0100
DAT_ce314dc:
    #data 0x02a4
DAT_ce314de:
    #data 0x020c
DAT_ce314e0:
    #data 0x0420
DAT_ce314e2:
    #data 0x03f9
DAT_ce314e4:
    #data 0x0327
DAT_ce314e6:
    #data 0x01a1
    #align4

PTR_ce314e8:
    #data loc_8c055d54
PTR_ce314ec:
    #data DAT_ce32308
PTR_ce314f0:
    #data loc_8c2896b0
PTR_ce314f4:
    #data loc_8c26a518
PTR_ce314f8:
    #data loc_8c035162
PTR_ce314fc:
    #data loc_8c034e8c

;=============================================

LAB_ce31500:
    mov.w @(DAT_ce31648,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt/s LAB_ce31514
    fldi0 fr4
    mov 0x5C,r0
    fmov fr4,@(r0,r14)

LAB_ce31514:
    mov 0x60,r0
    mov.l @(PTR_ce31658,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov 0x5C,r1
    fmov fr4,@(r0,r14)
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
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31558
    mov.w @(DAT_ce3164a,pc),r0
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce3165c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31558:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3155e:
    mov r4,r3
    mov.l @(PTR_ce31660,pc),r1
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
    mov 0x32,r3
    mov 0x01,r2
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3164c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3164e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r2,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce31650,pc),r0
    mov 0x30,r2
    mov.b r3,@(r0,r14)
    add 0x0C,r0
    mov.l @(PTR_ce31664,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31668,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3166c,pc),r3
    mov r14,r4
    mov 0x04,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce315b6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31658,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3164e,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)
    exts.b r2,r2
    tst r2,r2
    bf LAB_ce315d8
    lds.l @r15+,PR
    mov.l @(PTR_ce3165c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce315d8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce315de:
    mov r4,r3
    mov.l @(PTR_ce31670,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce315f0:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31652,pc),r0
    mov.l r13,@-r15
    mov 0x00,r13
    fldi0 fr4
    sts.l PR,@-r15
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31664,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3164c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31650,pc),r0
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
    mov.l @(PTR_ce31674,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31668,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31654,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31678
    mov.w @(DAT_ce31656,pc),r0
    mov 0x3F,r2
    bra LAB_ce31686
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31648:
    #data 0x019e
DAT_ce3164a:
    #data 0x02a4
DAT_ce3164c:
    #data 0x041c
DAT_ce3164e:
    #data 0x02a6
DAT_ce31650:
    #data 0x01f9
DAT_ce31652:
    #data 0x02a9
DAT_ce31654:
    #data 0x0255
DAT_ce31656:
    #data 0x01a1
    #align4

PTR_ce31658:
    #data loc_8c034dee
PTR_ce3165c:
    #data loc_8c051648
PTR_ce31660:
    #data PTR_ce32314
PTR_ce31664:
    #data loc_8c05218a
PTR_ce31668:
    #data loc_8c05115a
PTR_ce3166c:
    #data loc_8c034e8c
PTR_ce31670:
    #data PTR_ce3231c
PTR_ce31674:
    #data loc_8c035162

;=============================================

LAB_ce31678:
    mov.w @(DAT_ce317b4,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    extu.b r3,r3
    shll r3
    add 0x30,r3
    mov.b r3,@(r0,r14)

LAB_ce31686:
    mov.w @(DAT_ce317b6,pc),r0
    mov r14,r4
    mov.l @(PTR_ce317c0,pc),r3
    mov 0x15,r5
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce317c4,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce317b4,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    extu.b r6,r6
    mov.l @r15+,r13
    shll r6
    add 0x05,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce316bc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce317c8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce317b8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce316fa
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce317b4,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce317cc,pc),r0
    extu.b r3,r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce317ba,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce316f4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce316f4:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)

LAB_ce316fa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31700:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce317c8,pc),r3
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
    bt LAB_ce31764
    mov.b @(0x6,r14),r0
    mov 0x02,r5
    mov.l @(PTR_ce317d0,pc),r3
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
    mov r14,r4
    mov.w @(DAT_ce317b4,pc),r0
    mov 0x15,r5
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce317c4,pc),r3
    extu.b r6,r6
    shll r6
    add 0x08,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31764:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3176a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce317c8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31784
    lds.l @r15+,PR
    mov.l @(PTR_ce317d4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31784:
    mov.w @(DAT_ce317bc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3179c
    mov.l @(PTR_ce317d8,pc),r5
    mov 0x00,r3
    mov 0x01,r4
    mov.b r3,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x5,r5)
    mov.b r0,@(0x6,r5)

LAB_ce3179c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce317a2:
    mov r4,r3
    mov.l @(PTR_ce317dc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce317b4:
    #data 0x01a3
DAT_ce317b6:
    #data 0x01ac
DAT_ce317b8:
    #data 0x0141
DAT_ce317ba:
    #data 0x01d2
DAT_ce317bc:
    #data 0x0140
    #align4

PTR_ce317c0:
    #data loc_8c2896b0
PTR_ce317c4:
    #data loc_8c034e8c
PTR_ce317c8:
    #data loc_8c034dee
PTR_ce317cc:
    #data DAT_ce3232c
PTR_ce317d0:
    #data loc_8c0e29bc
PTR_ce317d4:
    #data loc_8c051648
PTR_ce317d8:
    #data loc_8c26a518
PTR_ce317dc:
    #data PTR_ce32334

;=============================================

LAB_ce317e0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce318ec,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce318e0,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce318e2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31820
    mov.l @(PTR_ce318f0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce318e4,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce318f4,pc),r3
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x12,r6
    jsr @r3
    mov r14,r4
    bra LAB_ce31834
    nop

LAB_ce31820:
    mov.w @(DAT_ce318e4,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce318f8,pc),r3
    mov 0x01,r7
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x12,r6
    jsr @r3
    mov r14,r4

LAB_ce31834:
    mov.w @(DAT_ce318e4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31840
    bra LAB_ce31842
    mov 0x3D,r4

LAB_ce31840:
    mov 0x3B,r4

LAB_ce31842:
    mov.w @(DAT_ce318e6,pc),r0
    mov.l @(PTR_ce318fc,pc),r3
    mov.b r4,@(r0,r14)
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

LAB_ce3186c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31900,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce318e8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce318da
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31904,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce318e4,pc),r0
    mov.l @(PTR_ce31908,pc),r4
    mov.b @(r0,r14),r2
    mov 0x04,r0
    extu.b r2,r2
    shll2 r2
    shll r2
    add r4,r2
    fmov.s @(r0,r2),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3190c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce318e4,pc),r0
    mov.b @(r0,r14),r3
    mov 0x5C,r0
    extu.b r3,r3
    shll2 r3
    shll r3
    add r3,r4
    fmov.s @r4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31910,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce318ea,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce318da
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce318da:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce318e0:
    #data 0x02a9
DAT_ce318e2:
    #data 0x01f9
DAT_ce318e4:
    #data 0x01a3
DAT_ce318e6:
    #data 0x01a1
DAT_ce318e8:
    #data 0x0141
DAT_ce318ea:
    #data 0x01d2
    #align4

PTR_ce318ec:
    #data loc_8c05218a
PTR_ce318f0:
    #data loc_8c05115a
PTR_ce318f4:
    #data loc_8c034e8c
PTR_ce318f8:
    #data loc_8c034f54
PTR_ce318fc:
    #data loc_8c2896b0
PTR_ce31900:
    #data loc_8c034dee
PTR_ce31904:
    #data loc_8c053082
PTR_ce31908:
    #data DAT_ce32344
DAT_ce3190c:
    #data 0xc0092492
DAT_ce31910:
    #data 0xbc092492

;=============================================

LAB_ce31914:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a50,pc),r3
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
    fldi0 fr3
    fcmp/gt fr3,fr2
    bt/s LAB_ce319da
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31a54,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov.w @(DAT_ce31a48,pc),r0
    fadd fr3,fr2
    fmov.s @(r0,r14),fr1
    fcmp/gt fr1,fr2
    bt LAB_ce319da
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce31a58,pc),r4
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31a48,pc),r0
    mov.l @(PTR_ce31a5c,pc),r3
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
    mov 0x03,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31a4a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce319ba
    mov.w @(DAT_ce31a4c,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    add 0xAA,r0
    mov.b @(r0,r14),r13
    extu.b r13,r13
    shll r13
    bra LAB_ce319ca
    add 0x15,r13

LAB_ce319ba:
    mov.w @(DAT_ce31a4c,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r14)
    add 0xAA,r0
    mov.b @(r0,r14),r13
    extu.b r13,r13
    shll r13
    add 0x18,r13

LAB_ce319ca:
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce31a60,pc),r3
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce319da:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce319e2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31a50,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319fc
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31a64,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce319fc:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31a04:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31a6c
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce31a68,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31a48,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31a60,pc),r2
    mov r14,r4
    mov 0x11,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a48:
    #data 0x041c
DAT_ce31a4a:
    #data 0x019e
DAT_ce31a4c:
    #data 0x01f9
    #align4

PTR_ce31a50:
    #data loc_8c034dee
DAT_ce31a54:
    #data 0x42892492
PTR_ce31a58:
    #data loc_8c26a518
PTR_ce31a5c:
    #data loc_8c0511b4
PTR_ce31a60:
    #data loc_8c034e8c
PTR_ce31a64:
    #data loc_8c051648
PTR_ce31a68:
    #data loc_8c05218a

;=============================================

LAB_ce31a6c:
    mov.l @(PTR_ce31b6c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce31a96
    mov.w @(DAT_ce31b64,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31aa0
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x07,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce31b70,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a96:
    lds.l @r15+,PR
    mov.l @(PTR_ce31b74,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31aa0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31aa6:
    mov.b @(0x6,r4),r0
    mov 0x03,r6
    mov.l @(PTR_ce31b78,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x14,r5

LAB_ce31ab4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31b6c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31ace
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31b74,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31ace:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31ad6:
    mov r4,r3
    mov.l @(PTR_ce31b7c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31ae8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31b80,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31b66,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce31b84,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31b68,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31b1a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31b1a:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31b88,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x3E,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31b8c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce31b6a,pc),r0
    mov r4,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31b90,pc),r3
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
    mov.l @(PTR_ce31b78,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b64:
    #data 0x0141
DAT_ce31b66:
    #data 0x01f9
DAT_ce31b68:
    #data 0x01d2
DAT_ce31b6a:
    #data 0x01a1
    #align4

PTR_ce31b6c:
    #data loc_8c034dee
PTR_ce31b70:
    #data loc_8c0e29bc
PTR_ce31b74:
    #data loc_8c051648
PTR_ce31b78:
    #data loc_8c034e8c
PTR_ce31b7c:
    #data PTR_ce32364
PTR_ce31b80:
    #data loc_8c035162
DAT_ce31b84:
    #data 0x41f00000
DAT_ce31b88:
    #data 0x40892492
DAT_ce31b8c:
    #data 0xbf4db6db
PTR_ce31b90:
    #data loc_8c2896b0

;=============================================

LAB_ce31b94:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ccc,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31cd0,pc),r3
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
    bt LAB_ce31bfc
    mov.l @(PTR_ce31cd4,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31cd8,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31bfc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31c02:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ccc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c24
    mov.l @(PTR_ce31cdc,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31ce0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c24:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31c2a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce31cae
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce31cdc,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31cc4,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31cc6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31ce4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31ce8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31cc8,pc),r0
    mov 0x40,r2
    mov.l @(PTR_ce31cec,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x20,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31cd8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31cf0,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4
    bra LAB_ce31d28
    nop

LAB_ce31cae:
    mov.l @(PTR_ce31ccc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31cf8
    mov.l @(PTR_ce31cf4,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce31d28
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31cc4:
    #data 0x01f9
DAT_ce31cc6:
    #data 0x041c
DAT_ce31cc8:
    #data 0x01a1
    #align4

PTR_ce31ccc:
    #data loc_8c034dee
PTR_ce31cd0:
    #data loc_8c052ce2
PTR_ce31cd4:
    #data loc_8c0511b4
PTR_ce31cd8:
    #data loc_8c034e8c
PTR_ce31cdc:
    #data loc_8c035162
PTR_ce31ce0:
    #data loc_8c051854
PTR_ce31ce4:
    #data loc_8c05218a
PTR_ce31ce8:
    #data loc_8c05115a
PTR_ce31cec:
    #data loc_8c2896b0
PTR_ce31cf0:
    #data loc_8c0e29bc
PTR_ce31cf4:
    #data loc_8c051648

;=============================================

LAB_ce31cf8:
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31d28
    mov.w @(DAT_ce31dfe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31d28
    mov.b @(0x6,r14),r0
    mov r15,r5
    mov.l @(PTR_ce31e20,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31dfe,pc),r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce31e18,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31e1c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31d28:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31d32:
    mov.w @(DAT_ce31e00,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31e02,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce31d96
    mov 0x00,r4
    mov.w @(DAT_ce31e04,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31d96
    mov.w @(DAT_ce31e06,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31d74
    mov.w @(DAT_ce31e08,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31d96
    mov.l @(PTR_ce31e24,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce31d96
    mov r0,r4
    mov.w @(DAT_ce31e0a,pc),r0
    mov 0x02,r3
    bra LAB_ce31d96
    mov.b r3,@(r0,r14)

LAB_ce31d74:
    mov.l @(PTR_ce31e24,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce31d96
    mov r0,r4
    mov.w @(DAT_ce31e08,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31d90
    mov.w @(DAT_ce31e0a,pc),r0
    mov 0x01,r3
    bra LAB_ce31d96
    mov.b r3,@(r0,r14)

LAB_ce31d90:
    mov.w @(DAT_ce31e0a,pc),r0
    mov 0x00,r1
    mov.b r1,@(r0,r14)

LAB_ce31d96:
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31da0:
    mov.l r14,@-r15
    mov 0x05,r6
    sts.l PR,@-r15
    mov.l @(PTR_ce31e28,pc),r3
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.w @(DAT_ce31e00,pc),r0
    mov.w @(DAT_ce31e0c,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bf LAB_ce31dcc
    mov.w @(DAT_ce31e0e,pc),r0
    mov 0x01,r2
    mov.w @(r0,r14),r1
    xor r2,r1
    mov.w r1,@(r0,r14)
    mov.w @(DAT_ce31e10,pc),r0
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)

LAB_ce31dcc:
    mov.w @(DAT_ce31e12,pc),r0
    mov 0xFF,r3
    mov.w @(DAT_ce31e0e,pc),r1
    mov 0x0F,r5
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce31e10,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    mov r14,r4
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov 0x00,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31e14,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31e0a,pc),r0
    lds.l @r15+,PR
    mov.l @(PTR_ce31e2c,pc),r3
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31dfe:
    #data 0x0141
DAT_ce31e00:
    #data 0x01fa
DAT_ce31e02:
    #data 0x0c00
DAT_ce31e04:
    #data 0x01a3
DAT_ce31e06:
    #data 0x01f9
DAT_ce31e08:
    #data 0x01fe
DAT_ce31e0a:
    #data 0x01f7
DAT_ce31e0c:
    #data 0x0800
DAT_ce31e0e:
    #data 0x0130
DAT_ce31e10:
    #data 0x01d2
DAT_ce31e12:
    #data 0x01c8
DAT_ce31e14:
    #data 0x02aa
    #align4

DAT_ce31e18:
    #data 0x42b40000
DAT_ce31e1c:
    #data 0x43340000
PTR_ce31e20:
    #data loc_8c050ea4
PTR_ce31e24:
    #data loc_8c045790
PTR_ce31e28:
    #data loc_8c02fec4
PTR_ce31e2c:
    #data loc_8c034e8c

;=============================================

LAB_ce31e30:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    mov.l r9,@-r15
    mov.l r8,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31f32,pc),r0
    mov r4,r14
    mov 0x01,r11
    mov.l @(r0,r14),r13
    add 0x22,r0
    mov.b r11,@(r0,r14)
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce31e98
    mov 0x00,r12
    mov.w @(DAT_ce31f34,pc),r0
    mov r15,r5
    mov.l @(PTR_ce31f44,pc),r4
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    shll2 r0
    fmov.s @(r0,r4),fr3
    mov.w @(DAT_ce31f34,pc),r0
    fmov.s fr3,@r15
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    shll r3
    shll2 r3
    add r3,r4
    mov.l @(PTR_ce31f48,pc),r3
    fmov.s @(r0,r4),fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f4c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31f36,pc),r0
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31f38,pc),r0
    mov.b r12,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31e98:
    mov.w @(DAT_ce31f34,pc),r0
    mov.l @(PTR_ce31f54,pc),r9
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce31f50,pc),r8
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce31eb8
    mov 0x02,r10
    cmp/eq 0x01,r0
    bt LAB_ce31efc
    cmp/eq 0x02,r0
    bf LAB_ce31eb4
    bra LAB_ce31fd2
    nop

LAB_ce31eb4:
    bra LAB_ce3200e
    nop

LAB_ce31eb8:
    jsr @r8
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31f06
    mov.w @(DAT_ce31f3a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31ece
    bra LAB_ce3200e
    nop

LAB_ce31ece:
    mov.b r12,@(r0,r14)
    add 0x73,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r10,@(r0,r13)
    add 0x03,r0
    jsr @r9
    mov.b r10,@(r0,r13)
    mov.w @(DAT_ce31f3c,pc),r0
    mov 0x20,r3
    mov.w @(DAT_ce31f3e,pc),r1
    mov.b r3,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r0
    add r13,r1
    mov.l @(PTR_ce31f58,pc),r3
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce31f32,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    bra LAB_ce3200e
    nop

LAB_ce31efc:
    jsr @r8
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31f10

LAB_ce31f06:
    mov.l @(PTR_ce31f5c,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce3200e
    nop

LAB_ce31f10:
    mov.w @(DAT_ce31f3a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3200e
    mov.b @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce31f64
    mov.w @(DAT_ce31f40,pc),r0
    mov 0x21,r3
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce31f60,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce31f84
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f32:
    #data 0x01c8
DAT_ce31f34:
    #data 0x01f7
DAT_ce31f36:
    #data 0x01a0
DAT_ce31f38:
    #data 0x02a9
DAT_ce31f3a:
    #data 0x0141
DAT_ce31f3c:
    #data 0x01a1
DAT_ce31f3e:
    #data 0x01d2
DAT_ce31f40:
    #data 0x01b4
    #align4

PTR_ce31f44:
    #data DAT_ce32370
PTR_ce31f48:
    #data loc_8c103660
PTR_ce31f4c:
    #data loc_8c056f2a
PTR_ce31f50:
    #data loc_8c034dee
PTR_ce31f54:
    #data loc_8c02fd26
PTR_ce31f58:
    #data loc_8c0423fc
PTR_ce31f5c:
    #data loc_8c051648
PTR_ce31f60:
    #data loc_8c05933c

;=============================================

LAB_ce31f64:
    mov.w @(DAT_ce32078,pc),r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r11,@(r0,r13)
    add 0x03,r0
    jsr @r9
    mov.b r10,@(r0,r13)
    mov.w @(DAT_ce3207a,pc),r0
    mov 0x22,r3
    mov.w @(DAT_ce3207c,pc),r1
    mov.b r3,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r0
    add r13,r1
    xor 0x01,r0
    mov.b r0,@r1

LAB_ce31f84:
    mov.l @(PTR_ce32088,pc),r3
    mov 0x02,r5
    jsr @r3
    mov r13,r4
    mov.w @(DAT_ce3207e,pc),r0
    mov.b r12,@(r0,r14)
    mova @(DAT_ce3208c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32080,pc),r0
    fmov.s fr3,@r15
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31fa4
    fmov.s @r15,fr3
    fneg fr3
    fmov.s fr3,@r15

LAB_ce31fa4:
    mov 0x34,r0
    fmov.s @r15,fr2
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce32090,pc),r0
    mov.l @(PTR_ce32094,pc),r3
    mov 0x00,r7
    fadd fr3,fr2
    mov 0x02,r6
    fmov.s fr2,@r15
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce3207c,pc),r0
    mov.b @(r0,r14),r5
    extu.b r5,r5
    jsr @r3
    mov r15,r4
    mov.w @(DAT_ce3207e,pc),r0
    bra LAB_ce3200e
    mov.b r12,@(r0,r14)

LAB_ce31fd2:
    jsr @r8
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31fe6
    mov.l @(PTR_ce32098,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce3200e
    nop

LAB_ce31fe6:
    mov.w @(DAT_ce3207e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3200e
    mov.w @(DAT_ce32078,pc),r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r11,@(r0,r13)
    add 0x03,r0
    jsr @r9
    mov.b r10,@(r0,r13)
    mov.w @(DAT_ce3207a,pc),r0
    mov 0x23,r3
    mov.w @(DAT_ce3207c,pc),r1
    mov.b r3,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r0
    add r13,r1
    xor 0x01,r0
    mov.b r0,@r1

LAB_ce3200e:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r8
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32022:
    mov.w @(DAT_ce32082,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce3209c,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce32030:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32084,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3204a
    mov 0x01,r5
    cmp/eq 0x01,r0
    bt LAB_ce3204a
    cmp/eq 0x02,r0
    bf LAB_ce3204e

LAB_ce3204a:
    mov.w @(DAT_ce32086,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3204e:
    mov.l @(PTR_ce320a0,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce32054:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32084,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3206e
    mov 0x01,r5
    cmp/eq 0x01,r0
    bt LAB_ce3206e
    cmp/eq 0x02,r0
    bf LAB_ce32072

LAB_ce3206e:
    mov.w @(DAT_ce32086,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce32072:
    mov.l @(PTR_ce320a0,pc),r2
    jmp @r2
    mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32078:
    #data 0x01b4
DAT_ce3207a:
    #data 0x01a1
DAT_ce3207c:
    #data 0x01d2
DAT_ce3207e:
    #data 0x0141
DAT_ce32080:
    #data 0x0130
DAT_ce32082:
    #data 0x01c8
DAT_ce32084:
    #data 0x04c9
DAT_ce32086:
    #data 0x01e9
    #align4

PTR_ce32088:
    #data loc_8c0424a6
DAT_ce3208c:
    #data 0xc32baaaa
DAT_ce32090:
    #data 0x43362492
PTR_ce32094:
    #data loc_8c0fd966
PTR_ce32098:
    #data loc_8c05176e
PTR_ce3209c:
    #data loc_8c04cc1c
PTR_ce320a0:
    #data loc_8c0530d8

;=============================================

LAB_ce320a4:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32128,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce320c4
    cmp/eq 0x01,r0
    bt LAB_ce320ce
    cmp/eq 0x02,r0
    bt LAB_ce320d6
    bra LAB_ce320e2
    nop

LAB_ce320c4:
    mov.w @(DAT_ce3212a,pc),r0
    mov.b r5,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce320e2
    mov.b r5,@(r0,r4)

LAB_ce320ce:
    mov.w @(DAT_ce3212a,pc),r0
    mov 0x03,r2
    bra LAB_ce320dc
    mov.b r2,@(r0,r4)

LAB_ce320d6:
    mov.w @(DAT_ce3212a,pc),r0
    mov 0x07,r3
    mov.b r3,@(r0,r4)

LAB_ce320dc:
    mov.w @(DAT_ce3212c,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce320e2:
    mov.l @(PTR_ce32130,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce320e8:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32128,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce32108
    cmp/eq 0x01,r0
    bt LAB_ce3210e
    cmp/eq 0x02,r0
    bt LAB_ce32116
    bra LAB_ce32122
    nop

LAB_ce32108:
    mov.w @(DAT_ce3212a,pc),r0
    bra LAB_ce3211c
    mov.b r5,@(r0,r4)

LAB_ce3210e:
    mov.w @(DAT_ce3212a,pc),r0
    mov 0x03,r2
    bra LAB_ce3211c
    mov.b r2,@(r0,r4)

LAB_ce32116:
    mov.w @(DAT_ce3212a,pc),r0
    mov 0x07,r3
    mov.b r3,@(r0,r4)

LAB_ce3211c:
    mov.w @(DAT_ce3212c,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce32122:
    mov.l @(PTR_ce32130,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32128:
    #data 0x04c9
DAT_ce3212a:
    #data 0x01e9
DAT_ce3212c:
    #data 0x01a3
    #align4

PTR_ce32130:
    #data loc_8c0530d8
DAT_ce32134:
    #data 0x0201
    #data 0x0201
    #data 0xffff
    #data 0xffff
    #data 0xffff
    #data 0xffff
    #data 0x0201
    #data 0x0201
    #data 0xffff
    #data 0xffff
    #data 0xffff
    #data 0xffff
DAT_ce3214c:
    #data 0x0201
    #data 0x0201
    #data 0xffff
    #data 0xffff
    #data 0xffff
    #data 0xffff
    #data 0x0201
    #data 0x0201
    #data 0xffff
    #data 0xffff
    #data 0xffff
    #data 0xffff
DAT_ce32164:
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
DAT_ce3217c:
    #data 0x0003
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x0300
DAT_ce3218c:
    #data 0x0003
    #data 0x9100
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce3219c:
    #data 0x0003
    #data 0x9000
    #data 0x0002
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce321ac:
    #data 0x0005
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x0400
    #data 0x1400
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce321c0:
    #data 0x0005
    #data 0x0000
    #data 0x0007
    #data 0x0000
    #data 0x0400
    #data 0x1400
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
    #data 0x0003
    #data 0x9000
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
    #align4

PTR_ce321e4:
    #data LAB_ce30368
PTR_ce321e8:
    #data LAB_ce3001c
PTR_ce321ec:
    #data LAB_ce30686
PTR_ce321f0:
    #data LAB_ce30720
PTR_ce321f4:
    #data LAB_ce308e6
PTR_ce321f8:
    #data LAB_ce30abc
PTR_ce321fc:
    #data LAB_ce30c82
PTR_ce32200:
    #data LAB_ce30eb4
PTR_ce32204:
    #data LAB_ce30f90
PTR_ce32208:
    #data LAB_ce31d32
PTR_ce3220c:
    #data LAB_ce31da0
PTR_ce32210:
    #data LAB_ce31e30
PTR_ce32214:
    #data LAB_ce32022
PTR_ce32218:
    #data LAB_ce30308
PTR_ce3221c:
    #data LAB_ce31ad6
PTR_ce32220:
    #data LAB_ce30820
PTR_ce32224:
    #data LAB_ce32030
PTR_ce32228:
    #data LAB_ce32054
PTR_ce3222c:
    #data LAB_ce320a4
PTR_ce32230:
    #data LAB_ce320e8
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x40d55555
    #data 0xc0d55555
    #data 0x40d55555
    #data 0xc0d55555
PTR_ce32264:
    #data LAB_ce30478
PTR_ce32268:
    #data LAB_ce30662
PTR_ce3226c:
    #data LAB_ce3057a
PTR_ce32270:
    #data LAB_ce30478
PTR_ce32274:
    #data LAB_ce308f8
PTR_ce32278:
    #data LAB_ce30978
PTR_ce3227c:
    #data LAB_ce30a04
PTR_ce32280:
    #data LAB_ce30a62
PTR_ce32284:
    #data LAB_ce30aec
PTR_ce32288:
    #data LAB_ce30b60
PTR_ce3228c:
    #data LAB_ce30c28
PTR_ce32290:
    #data LAB_ce30c94
PTR_ce32294:
    #data LAB_ce30cac
DAT_ce32298:
    #data 0x0706
    #data 0x0706
DAT_ce3229c:
    #data 0x0100
    #data 0x0706
    #align4

PTR_ce322a0:
    #data LAB_ce30cf0
PTR_ce322a4:
    #data LAB_ce30cf0
PTR_ce322a8:
    #data LAB_ce30e88
PTR_ce322ac:
    #data LAB_ce30e88
PTR_ce322b0:
    #data LAB_ce30e88
PTR_ce322b4:
    #data LAB_ce30e88
PTR_ce322b8:
    #data LAB_ce30e10
PTR_ce322bc:
    #data LAB_ce30e42
PTR_ce322c0:
    #data LAB_ce30fa4
PTR_ce322c4:
    #data LAB_ce3114e
PTR_ce322c8:
    #data LAB_ce3155e
PTR_ce322cc:
    #data LAB_ce315de
PTR_ce322d0:
    #data LAB_ce31a04
PTR_ce322d4:
    #data loc_8c051648
PTR_ce322d8:
    #data loc_8c051648
PTR_ce322dc:
    #data LAB_ce317a2
PTR_ce322e0:
    #data loc_8c051648
PTR_ce322e4:
    #data LAB_ce31c2a
PTR_ce322e8:
    #data LAB_ce30fe0
PTR_ce322ec:
    #data LAB_ce3104e
PTR_ce322f0:
    #data LAB_ce310ce
PTR_ce322f4:
    #data LAB_ce3112c
PTR_ce322f8:
    #data LAB_ce31160
PTR_ce322fc:
    #data LAB_ce311f8
PTR_ce32300:
    #data LAB_ce312f8
PTR_ce32304:
    #data LAB_ce31500
DAT_ce32308:
    #data 0x00
    #data 0x0a
    #data 0x0e
DAT_ce3230b:
    #data 0x12
DAT_ce3230c:
    #data 0x18
DAT_ce3230d:
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x00
    #data 0x00
    #data 0x00
PTR_ce32314:
    #data LAB_ce31570
PTR_ce32318:
    #data LAB_ce315b6
PTR_ce3231c:
    #data LAB_ce315f0
PTR_ce32320:
    #data LAB_ce316bc
PTR_ce32324:
    #data LAB_ce31700
PTR_ce32328:
    #data LAB_ce3176a
DAT_ce3232c:
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x41a0
    #align4

PTR_ce32334:
    #data LAB_ce317e0
PTR_ce32338:
    #data LAB_ce3186c
PTR_ce3233c:
    #data LAB_ce31914
PTR_ce32340:
    #data FUN_ce319e2
DAT_ce32344:
    #data 0x5555
    #data 0x4055
DAT_ce32348:
    #data 0x0000
    #data 0x41f0
    #data 0x5555
    #data 0x4105
    #data 0x4924
    #data 0x421a
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #align4
    
PTR_ce3235c:
    #data LAB_ce31aa6
PTR_ce32360:
    #data LAB_ce31ab4
PTR_ce32364:
    #data LAB_ce31ae8
PTR_ce32368:
    #data LAB_ce31b94
PTR_ce3236c:
    #data LAB_ce31c02
DAT_ce32370:
    #data 0x5555
    #data 0xc305
DAT_ce32374:
    #data 0x4924
    #data 0x439a
    #data 0x5555
    #data 0xc305
    #data 0x4924
    #data 0x439a
    #data 0xaaaa
    #data 0x4212
    #data 0x9249
    #data 0x43bc
