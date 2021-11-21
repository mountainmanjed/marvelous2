;╔══════════════════════════════════════════╗
;║ S_PL36 : Thanos, The Mad Titan Program   ║
;╚══════════════════════════════════════════╝

#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c0353ee 0x8C0353EE
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
#symbol loc_8c0afc7c 0x8C0AFC7C
#symbol loc_8c0b0504 0x8C0B0504
#symbol loc_8c0b1010 0x8C0B1010
#symbol loc_8c0b14bc 0x8C0B14BC
#symbol loc_8c0ea77c 0x8C0EA77C
#symbol loc_8c0eafb0 0x8C0EAFB0
#symbol loc_8c0eec0c 0x8C0EEC0C
#symbol loc_8c0fdab6 0x8C0FDAB6
#symbol loc_8c103660 0x8C103660
#symbol loc_8c1292d4 0x8C1292D4
#symbol loc_8c12939c 0x8C12939C
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300a6,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300a8,pc),r7
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
    mov.l @(PTR_ce300ac,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a0
    mov.l @(PTR_ce300b0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a0
    mov.l @(PTR_ce300b4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a0
    mov.l @(PTR_ce300b8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a0
    bsr FUN_ce301f4
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a0
    bsr FUN_ce30184
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a0
    bsr FUN_ce3023a
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a0
    bsr FUN_ce30280
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a0
    bsr FUN_ce300c4
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a0
    bsr FUN_ce3013e
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a0
    bsr FUN_ce302c6
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a0
    bsr FUN_ce30320
    mov r14,r4
    tst r0,r0
    bf LAB_ce300a0
    mov.l @(PTR_ce300bc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300c0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300a0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300a6:
    #data 0x0428
    #align4

PTR_ce300a8:
    #data PTR_ce323fc
PTR_ce300ac:
    #data loc_8c054508
PTR_ce300b0:
    #data loc_8c054b34
PTR_ce300b4:
    #data loc_8c05496c
PTR_ce300b8:
    #data loc_8c054d04
PTR_ce300bc:
    #data loc_8c053e00
PTR_ce300c0:
    #data loc_8c0542e0

;=============================================

FUN_ce300c4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301dc,pc),r5
    mov.w @(DAT_ce301ca,pc),r6
    mov.l @(PTR_ce301e0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3010c
    mov.w @(DAT_ce301cc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30114
    mov.w @(DAT_ce301ce,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce300fa
    mov.w @(DAT_ce301d0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3010c
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce300fa:
    mov.w @(DAT_ce301cc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30114
    mov.w @(DAT_ce301d2,pc),r0
    mov.l @(r0,r14),r2
    cmp/pl r2
    bf LAB_ce30114

LAB_ce3010c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30114:
    mov.w @(DAT_ce301ca,pc),r5
    mov.l @(PTR_ce301e4,pc),r2
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
    mov.w @(DAT_ce301d4,pc),r0
    mov.l @(PTR_ce301e8,pc),r3
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
    mov.l @(PTR_ce301ec,pc),r5
    mov.w @(DAT_ce301d6,pc),r6
    mov.l @(PTR_ce301e0,pc),r3
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
    mov.w @(DAT_ce301d6,pc),r5
    mov.l @(PTR_ce301e4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301d4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301e8,pc),r3
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
    mov.l @(PTR_ce301f0,pc),r5
    mov.w @(DAT_ce301d8,pc),r6
    mov.l @(PTR_ce301e0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301a4
    mov.w @(DAT_ce301da,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce301ac

LAB_ce301a4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301ac:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301d4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301e8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301ca:
    #data 0x0364
DAT_ce301cc:
    #data 0x01f9
DAT_ce301ce:
    #data 0x01fc
DAT_ce301d0:
    #data 0x01d4
DAT_ce301d2:
    #data 0x02ac
DAT_ce301d4:
    #data 0x01e9
DAT_ce301d6:
    #data 0x036c
DAT_ce301d8:
    #data 0x0374
DAT_ce301da:
    #data 0x040c
    #align4

PTR_ce301dc:
    #data DAT_ce3239c
PTR_ce301e0:
    #data loc_8c054e58
PTR_ce301e4:
    #data loc_8c055c3a
PTR_ce301e8:
    #data loc_8c0530d8
PTR_ce301ec:
    #data DAT_ce323ac
PTR_ce301f0:
    #data DAT_ce323bc

;=============================================

FUN_ce301f4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30308,pc),r5
    mov.w @(DAT_ce302fe,pc),r6
    mov.l @(PTR_ce3030c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30214
    mov.w @(DAT_ce30300,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3021c

LAB_ce30214:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3021c:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30302,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30310,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3023a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30314,pc),r5
    mov.w @(DAT_ce30304,pc),r6
    mov.l @(PTR_ce3030c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3025a
    mov.w @(DAT_ce30300,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30262

LAB_ce3025a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30262:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30302,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30310,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30280:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30318,pc),r5
    mov.w @(DAT_ce30306,pc),r6
    mov.l @(PTR_ce3030c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302a0
    mov.w @(DAT_ce30300,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302a8

LAB_ce302a0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302a8:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30302,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30310,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302c6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3031c,pc),r3
    jsr @r3
    mov 0x08,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302e0
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302e0:
    mov.w @(DAT_ce30302,pc),r0
    mov 0x08,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30310,pc),r3
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

DAT_ce302fe:
    #data 0x038c
DAT_ce30300:
    #data 0x040c
DAT_ce30302:
    #data 0x01e9
DAT_ce30304:
    #data 0x037c
DAT_ce30306:
    #data 0x0384
    #align4

PTR_ce30308:
    #data DAT_ce323cc
PTR_ce3030c:
    #data loc_8c054e58
PTR_ce30310:
    #data loc_8c0530d8
PTR_ce30314:
    #data DAT_ce323dc
PTR_ce30318:
    #data DAT_ce323ec
PTR_ce3031c:
    #data loc_8c054da0

;=============================================

FUN_ce30320:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30408,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30338
    mov.w @(DAT_ce303fe,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30340

LAB_ce30338:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30340:
    mov.w @(DAT_ce30400,pc),r0
    mov 0x0A,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce3040c,pc),r3
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3035e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce30452
    mov r4,r14
    tst r0,r0
    bf LAB_ce30382
    bsr FUN_ce30392
    mov r14,r4
    tst r0,r0
    bf LAB_ce30382
    bsr FUN_ce303c8
    mov r14,r4
    tst r0,r0
    bf LAB_ce30382
    bsr FUN_ce3041c
    mov r14,r4
    tst r0,r0
    bt LAB_ce3038a

LAB_ce30382:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce3038a:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30392:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30410,pc),r5
    mov.w @(DAT_ce30402,pc),r6
    mov.l @(PTR_ce30414,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303b2
    mov.w @(DAT_ce303fe,pc),r0
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
    mov.w @(DAT_ce30404,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303c8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30418,pc),r5
    mov.w @(DAT_ce30406,pc),r6
    mov.l @(PTR_ce30414,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303e8
    mov.w @(DAT_ce303fe,pc),r0
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
    mov.w @(DAT_ce30404,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce303fe:
    #data 0x040c
DAT_ce30400:
    #data 0x01e9
DAT_ce30402:
    #data 0x0374
DAT_ce30404:
    #data 0x0258
DAT_ce30406:
    #data 0x037c
    #align4

PTR_ce30408:
    #data loc_8c054d1c
PTR_ce3040c:
    #data loc_8c0530d8
PTR_ce30410:
    #data DAT_ce323bc
PTR_ce30414:
    #data loc_8c054e58
PTR_ce30418:
    #data DAT_ce323dc

;=============================================

FUN_ce3041c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30510,pc),r5
    mov.w @(DAT_ce304fc,pc),r6
    mov.l @(PTR_ce30514,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3043c
    mov.w @(DAT_ce304fe,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30444

LAB_ce3043c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30444:
    mov.w @(DAT_ce30500,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30452:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30518,pc),r5
    mov.w @(DAT_ce30502,pc),r6
    mov.l @(PTR_ce30514,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30472
    mov.w @(DAT_ce304fe,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3047a

LAB_ce30472:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3047a:
    mov.w @(DAT_ce30500,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30488:
    mov.w @(DAT_ce30504,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x11,r0
    bf LAB_ce304cc
    mov.w @(DAT_ce30506,pc),r0
    mov.b @(r0,r14),r5
    tst r5,r5
    bt LAB_ce304c0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov r5,r0
    nop
    cmp/eq 0x01,r0
    bf/s LAB_ce304b2
    mov 0x01,r7
    bra LAB_ce304b4
    mov r4,r5

LAB_ce304b2:
    mov 0x01,r5

LAB_ce304b4:
    mov.l @(PTR_ce3051c,pc),r3
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    bra LAB_ce304cc
    nop

LAB_ce304c0:
    mov.l @(PTR_ce30520,pc),r3
    mov 0x00,r6
    mov 0x02,r7
    mov r6,r5
    jsr @r3
    mov r14,r4

LAB_ce304cc:
    mov.w @(DAT_ce30508,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt LAB_ce304da
    mov.l @(r0,r14),r3
    add 0xFF,r3
    mov.l r3,@(r0,r14)

LAB_ce304da:
    mov.w @(DAT_ce3050a,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt LAB_ce304e8
    mov.l @(r0,r14),r2
    add 0xFF,r2
    mov.l r2,@(r0,r14)

LAB_ce304e8:
    mov.w @(DAT_ce3050c,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bt LAB_ce304f6
    mov.l @(r0,r14),r3
    add 0xFF,r3
    mov.l r3,@(r0,r14)

LAB_ce304f6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce304fc:
    #data 0x0384
DAT_ce304fe:
    #data 0x040c
DAT_ce30500:
    #data 0x0258
DAT_ce30502:
    #data 0x038c
DAT_ce30504:
    #data 0x0159
DAT_ce30506:
    #data 0x0140
DAT_ce30508:
    #data 0x02ac
DAT_ce3050a:
    #data 0x02b8
DAT_ce3050c:
    #data 0x02c0
    #align4

PTR_ce30510:
    #data DAT_ce323ec
PTR_ce30514:
    #data loc_8c054e58
PTR_ce30518:
    #data DAT_ce323cc
PTR_ce3051c:
    #data loc_8c03544c
PTR_ce30520:
    #data loc_8c0353ee

;=============================================

LAB_ce30524:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3064c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x00,r13
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3063a,pc),r0
    mov.b @(r0,r14),r4
    add 0x11,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3054e
    add 0x06,r4

LAB_ce3054e:
    mov.w @(DAT_ce3063c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30558
    add 0x03,r4

LAB_ce30558:
    mov.l @(PTR_ce30650,pc),r0
    extu.b r4,r12
    mov.w @(DAT_ce3063e,pc),r2
    extu.b r4,r11
    mov.b @(r0,r12),r3
    mov r11,r1
    add r14,r2
    extu.b r3,r3
    mov.l r3,@r2
    mov.l @(PTR_ce30654,pc),r3
    jsr @r3
    mov 0x06,r0
    mov.l @(PTR_ce30658,pc),r1
    shll2 r0
    mov.l @(r0,r1),r2
    mov.w @(DAT_ce30640,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3063a,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce3065c,pc),r0
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce30642,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce30660,pc),r0
    mov.w @(DAT_ce30644,pc),r2
    mov.b @(r0,r12),r3
    mov.w @(DAT_ce30646,pc),r0
    add r14,r2
    mov.b r3,@r2
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30664,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30668,pc),r0
    mov.l @(PTR_ce30670,pc),r2
    mov.b @(r0,r12),r6
    mov.l @(PTR_ce3066c,pc),r0
    mov.b @(r0,r12),r5
    jsr @r2
    mov r14,r4
    mov r11,r0
    nop
    cmp/eq 0x05,r0
    bf LAB_ce30600
    mov.w @(DAT_ce30648,pc),r0
    mov.w @(DAT_ce3064a,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce30600
    mov.w @(DAT_ce30644,pc),r0
    mov 0x13,r2
    mov 0x08,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30664,pc),r2
    mov 0x03,r6
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r2,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r3
    add 0x01,r3
    mov.w r3,@(r0,r1)
    mov.l @(PTR_ce30670,pc),r1
    jsr @r1
    mov r14,r4

LAB_ce30600:
    mov r11,r0
    nop
    cmp/eq 0x02,r0
    bf LAB_ce30614
    mov.l @(PTR_ce30674,pc),r2
    mov 0x01,r7
    mov r7,r5
    mov 0x0B,r6
    jsr @r2
    mov r14,r4

LAB_ce30614:
    mov r11,r0
    nop
    cmp/eq 0x07,r0
    bf LAB_ce3062e
    lds.l @r15+,PR
    mov.l @(PTR_ce30678,pc),r2
    mov 0x02,r5
    mov r14,r4
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3062e:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3063a:
    #data 0x01e8
DAT_ce3063c:
    #data 0x01fe
DAT_ce3063e:
    #data 0x0320
DAT_ce30640:
    #data 0x03f4
DAT_ce30642:
    #data 0x01a7
DAT_ce30644:
    #data 0x01a1
DAT_ce30646:
    #data 0x01ac
DAT_ce30648:
    #data 0x01fa
DAT_ce3064a:
    #data 0x0400
    #align4

PTR_ce3064c:
    #data loc_8c052b4c
PTR_ce30650:
    #data DAT_ce32493
PTR_ce30654:
    #data loc_8c1292d4
PTR_ce30658:
    #data PTR_ce32354
PTR_ce3065c:
    #data DAT_ce32478
PTR_ce30660:
    #data DAT_ce3246c
PTR_ce30664:
    #data loc_8c2896b0
PTR_ce30668:
    #data DAT_ce3247b
PTR_ce3066c:
    #data DAT_ce32487
PTR_ce30670:
    #data loc_8c034e8c
PTR_ce30674:
    #data loc_8c03544c
PTR_ce30678:
    #data loc_8c0eafb0

;=============================================

LAB_ce3067c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x00,r12
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce307b4,pc),r0
    mov.b @(r0,r14),r13
    add 0x16,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce306a0
    add 0x03,r13

LAB_ce306a0:
    mov.w @(DAT_ce307b6,pc),r0
    extu.b r13,r11
    mov.l r12,@(r0,r14)
    mov.w @(DAT_ce307b4,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce307cc,pc),r0
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce307b8,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce307d0,pc),r0
    mov.w @(DAT_ce307ba,pc),r2
    mov.b @(r0,r11),r3
    mov.w @(DAT_ce307bc,pc),r0
    add r14,r2
    mov.b r3,@r2
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce307d4,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce307d8,pc),r0
    mov.b @(r0,r11),r6
    mov.l @(PTR_ce307dc,pc),r0
    mov.l @(PTR_ce307e0,pc),r2
    mov.b @(r0,r11),r5
    jsr @r2
    mov r14,r4
    extu.b r13,r11
    mov r11,r0
    nop
    cmp/eq 0x05,r0
    bf LAB_ce30770
    mov.w @(DAT_ce307be,pc),r0
    mov.w @(DAT_ce307c0,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce30770
    mova @(DAT_ce307e4,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce307c2,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bf LAB_ce30770
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x01,r2
    mov.w @(DAT_ce307b6,pc),r0
    mov.l @(PTR_ce307d4,pc),r3
    mov.l r2,@(r0,r14)
    mov 0x0F,r2
    mov.w @(DAT_ce307c4,pc),r0
    mov.b @(r0,r14),r1
    and r2,r1
    mov.b r1,@(r0,r14)
    mov 0x12,r0
    mov.w @(DAT_ce307ba,pc),r1
    add r14,r1
    mov.b r0,@r1
    mov.w @(DAT_ce307bc,pc),r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r1
    extu.b r0,r0
    add 0x7C,r1
    shll r0
    mov.w @(r0,r1),r2
    mov 0x0C,r5
    mov 0x05,r6
    add 0x01,r2
    mov.w r2,@(r0,r1)
    mov.l @(PTR_ce307e0,pc),r1
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce307e8,pc),r3
    mov 0x01,r7
    mov r7,r5
    mov 0x0E,r6
    jsr @r3
    mov r14,r4

LAB_ce30770:
    mov r11,r0
    nop
    cmp/eq 0x02,r0
    bf LAB_ce30784
    mov.l @(PTR_ce307e8,pc),r3
    mov 0x01,r7
    mov r7,r5
    mov 0x0F,r6
    jsr @r3
    mov r14,r4

LAB_ce30784:
    mov.w @(DAT_ce307c6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3078e
    add 0x06,r13

LAB_ce3078e:
    mov.l @(PTR_ce307ec,pc),r0
    extu.b r13,r13
    shll2 r13
    mov.l @(r0,r13),r3
    mov.w @(DAT_ce307c8,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307ca,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce307f0
    mov.w @(DAT_ce307c4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30800
    mov.w @(DAT_ce307c4,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    bra LAB_ce30800
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307b4:
    #data 0x01e8
DAT_ce307b6:
    #data 0x0320
DAT_ce307b8:
    #data 0x01a7
DAT_ce307ba:
    #data 0x01a1
DAT_ce307bc:
    #data 0x01ac
DAT_ce307be:
    #data 0x01fa
DAT_ce307c0:
    #data 0x1000
DAT_ce307c2:
    #data 0x041c
DAT_ce307c4:
    #data 0x01d6
DAT_ce307c6:
    #data 0x01fc
DAT_ce307c8:
    #data 0x03f4
DAT_ce307ca:
    #data 0x01fe
    #align4

PTR_ce307cc:
    #data DAT_ce324a5
PTR_ce307d0:
    #data DAT_ce3249f
PTR_ce307d4:
    #data loc_8c2896b0
PTR_ce307d8:
    #data DAT_ce324a8
PTR_ce307dc:
    #data DAT_ce324ae
PTR_ce307e0:
    #data loc_8c034e8c
DAT_ce307e4:
    #data 0x432b6db6
PTR_ce307e8:
    #data loc_8c03544c
PTR_ce307ec:
    #data PTR_ce3236c

;=============================================

LAB_ce307f0:
    mov.w @(DAT_ce308a4,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30800
    mov.w @(DAT_ce308a4,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30800:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3080c:
    mov.w @(DAT_ce308a6,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30820
    mov.w @(DAT_ce308a4,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30828
    bra LAB_ce3082c
    nop

LAB_ce30820:
    mov.w @(DAT_ce308a4,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce3082c

LAB_ce30828:
    bra LAB_ce3067c
    nop

LAB_ce3082c:
    rts
    nop

LAB_ce30830:
    mov.w @(DAT_ce308a8,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce308ac,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30844:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce308b0,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce308b4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce308aa,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30872
    mov.l @(PTR_ce308b8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30876
    lds.l @r15+,PR
    mov.l @(PTR_ce308bc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30872:
    bsr FUN_ce30892
    mov r14,r4

LAB_ce30876:
    mov.l @(PTR_ce308c0,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3088c
    lds.l @r15+,PR
    mov.l @(PTR_ce308c4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3088c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30892:
    mov r4,r3
    mov.l @(PTR_ce308c8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308a4:
    #data 0x01d6
DAT_ce308a6:
    #data 0x01fe
DAT_ce308a8:
    #data 0x01ff
DAT_ce308aa:
    #data 0x0320
    #align4

PTR_ce308ac:
    #data PTR_ce324b4
PTR_ce308b0:
    #data loc_8c04fea8
PTR_ce308b4:
    #data loc_8c050048
PTR_ce308b8:
    #data loc_8c034dee
PTR_ce308bc:
    #data loc_8c05176e
PTR_ce308c0:
    #data loc_8c052ce2
PTR_ce308c4:
    #data loc_8c052dac
PTR_ce308c8:
    #data PTR_ce324c4

;=============================================

LAB_ce308cc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce309b4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce309a8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3092c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce309aa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30900
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce309b8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce309bc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)

LAB_ce30900:
    mov.l @(DAT_ce309c0,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce309c4,pc),r1
    fsts FPUL,fr3
    fadd fr3,fr2
    lds r1,FPUL
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr1
    fsts FPUL,fr2
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov.w @(DAT_ce309ac,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3092c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr1
    fneg fr1
    fmov fr1,@(r0,r14)

LAB_ce3092c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30932:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce309b4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce309ae,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30984
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce309d8,pc),r3
    mov 0x0C,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce309c8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce309cc,pc),r0
    fmov.s @r0,fr1
    mov 0x5C,r0
    fmul fr3,fr2
    fneg fr2
    fdiv fr1,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce309d0,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce309d4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce309b0,pc),r0
    mov.b @(r0,r14),r6
    add 0x01,r6
    mov.b r6,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30984:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3098a:
    mov.l @(PTR_ce309b4,pc),r3
    jmp @r3
    nop

LAB_ce30990:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce309dc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce309e0,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30844
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309a8:
    #data 0x0141
DAT_ce309aa:
    #data 0x01fc
DAT_ce309ac:
    #data 0x01d2
DAT_ce309ae:
    #data 0x019e
DAT_ce309b0:
    #data 0x0158
    #align4

PTR_ce309b4:
    #data loc_8c034dee
DAT_ce309b8:
    #data 0x3fd55555
DAT_ce309bc:
    #data 0xc0892492
DAT_ce309c0:
    #data 0x40d55555
DAT_ce309c4:
    #data 0xc1892492
DAT_ce309c8:
    #data 0x40400000
DAT_ce309cc:
    #data 0x40800000
DAT_ce309d0:
    #data 0x41892492
DAT_ce309d4:
    #data 0xbf4db6db
PTR_ce309d8:
    #data loc_8c034e8c
PTR_ce309dc:
    #data loc_8c050084
PTR_ce309e0:
    #data loc_8c04ff88

;=============================================

LAB_ce309e4:
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
    mov.w @(DAT_ce30aca,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a46
    mov.l @(PTR_ce30ad8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30a4e
    lds.l @r15+,PR
    mov.l @(PTR_ce30adc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30a46:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30a54
    mov.l @r15+,r14

LAB_ce30a4e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30a54:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ad8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30a6e
    lds.l @r15+,PR
    mov.l @(PTR_ce30adc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30a6e:
    mov.w @(DAT_ce30acc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30aa0
    mov.w @(DAT_ce30aca,pc),r0
    mov 0x00,r4
    mov 0x19,r3
    mov.l r4,@(r0,r14)
    mov.w @(DAT_ce30ace,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30ae0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce30aa0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30aa6:
    sts.l PR,@-r15
    mov.l @(PTR_ce30ae4,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    bra LAB_ce309e4
    lds.l @r15+,PR

LAB_ce30ab6:
    mov.w @(DAT_ce30ad0,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30ae8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30aca:
    #data 0x0320
DAT_ce30acc:
    #data 0x0141
DAT_ce30ace:
    #data 0x01a1
DAT_ce30ad0:
    #data 0x01ff
    #align4

PTR_ce30ad4:
    #data loc_8c052c84
PTR_ce30ad8:
    #data loc_8c034dee
PTR_ce30adc:
    #data FUN_ce32204
PTR_ce30ae0:
    #data loc_8c2896b0
PTR_ce30ae4:
    #data loc_8c0511e2
PTR_ce30ae8:
    #data PTR_ce324d0

;=============================================

LAB_ce30aec:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30b4a
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30bcc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30bd0,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30bc6,pc),r0
    mov 0x01,r3
    mov 0x47,r2
    mov.b r3,@(r0,r14)
    add 0xA8,r0
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov 0x00,r4
    mov.l @(PTR_ce30bd4,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x14,r5
    mov.b @(0x2,r14),r0
    mov 0x06,r6
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30bd8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30bdc,pc),r3
    mov 0x02,r5
    jsr @r3
    mov r14,r4

LAB_ce30b4a:
    mov.w @(DAT_ce30bc8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30b5a
    mov.l @(PTR_ce30be0,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30b5a:
    mov 0x5C,r1
    mov.l @(PTR_ce30be4,pc),r3
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
    mov.l @(PTR_ce30be8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30bae
    lds.l @r15+,PR
    mov.l @(PTR_ce30bec,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30bae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30bb4:
    mov r4,r3
    mov.l @(PTR_ce30bf0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30bc6:
    #data 0x01f9
DAT_ce30bc8:
    #data 0x01ff
    #align4

PTR_ce30bcc:
    #data loc_8c052b4c
PTR_ce30bd0:
    #data loc_8c056de4
PTR_ce30bd4:
    #data loc_8c2896b0
PTR_ce30bd8:
    #data loc_8c034e8c
PTR_ce30bdc:
    #data loc_8c0eafb0
PTR_ce30be0:
    #data loc_8c0511e2
PTR_ce30be4:
    #data loc_8c052c84
PTR_ce30be8:
    #data loc_8c034dee
PTR_ce30bec:
    #data FUN_ce32204
PTR_ce30bf0:
    #data PTR_ce324e0

;=============================================

LAB_ce30bf4:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mova @(DAT_ce30d34,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30d2a,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30c0a
    mova @(DAT_ce30d38,pc),r0
    fmov.s @r0,fr4

LAB_ce30c0a:
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov 0x05,r0
    mov.w r0,@(0x1c,r4)

LAB_ce30c20:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30d3c,pc),r3
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
    bt LAB_ce30cb8
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bf LAB_ce30c8a
    mov.w @(DAT_ce30d2c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30cb8
    mov.w @(DAT_ce30d2e,pc),r0
    mov.w @(DAT_ce30d30,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bf LAB_ce30cb8

LAB_ce30c8a:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce30d40,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30d2a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30ca0
    mova @(DAT_ce30d44,pc),r0
    fmov.s @r0,fr4

LAB_ce30ca0:
    mov 0x5C,r0
    mov.l @(PTR_ce30d48,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x02,r6
    fldi0 fr3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov r6,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce30cb8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30cbe:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30d3c,pc),r3
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
    bt LAB_ce30d12
    lds.l @r15+,PR
    mov.l @(PTR_ce30d4c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d12:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d18:
    mov r4,r3
    mov.l @(PTR_ce30d50,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d2a:
    #data 0x01d2
DAT_ce30d2c:
    #data 0x0525
DAT_ce30d2e:
    #data 0x034a
DAT_ce30d30:
    #data 0x0800
    #align4

DAT_ce30d34:
    #data 0x41200000
DAT_ce30d38:
    #data 0xc1200000
PTR_ce30d3c:
    #data loc_8c034dee
DAT_ce30d40:
    #data 0x3f555555
DAT_ce30d44:
    #data 0xbf555555
PTR_ce30d48:
    #data loc_8c034e8c
PTR_ce30d4c:
    #data FUN_ce32204
PTR_ce30d50:
    #data PTR_ce324ec

;=============================================

LAB_ce30d54:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x10,r0
    mov.w r0,@(0x1c,r4)
    mova @(DAT_ce30e98,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce30e9c,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce30e92,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30d76
    mova @(DAT_ce30ea0,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce30ea4,pc),r0
    fmov.s @r0,fr5

LAB_ce30d76:
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr5,@(r0,r4)
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)

LAB_ce30d88:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ea8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30e94,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bf LAB_ce30e0c
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
    cmp/pz r0
    bt LAB_ce30e0c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce30eac,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30e92,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30df4
    mova @(DAT_ce30eb0,pc),r0
    fmov.s @r0,fr4

LAB_ce30df4:
    mov 0x5C,r0
    mov.l @(PTR_ce30eb4,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x03,r6
    lds.l @r15+,PR
    mov 0x02,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e0c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e12:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30ea8,pc),r3
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
    bt LAB_ce30e66
    lds.l @r15+,PR
    mov.l @(PTR_ce30eb8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e66:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e6c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30eda
    mov.l @(PTR_ce30ebc,pc),r2
    mov 0x02,r1
    mov.b @r2,r3
    extu.b r3,r3
    cmp/ge r1,r3
    bt LAB_ce30ec0
    mov.w @(DAT_ce30e96,pc),r3
    mov 0x00,r0
    add r14,r3
    mov.b r0,@r3
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e92:
    #data 0x01d2
DAT_ce30e94:
    #data 0x0141
DAT_ce30e96:
    #data 0x012c
    #align4

DAT_ce30e98:
    #data 0xc1555555
DAT_ce30e9c:
    #data 0x3ed55555
DAT_ce30ea0:
    #data 0x41555555
DAT_ce30ea4:
    #data 0xbed55555
PTR_ce30ea8:
    #data loc_8c034dee
DAT_ce30eac:
    #data 0xbfd55555
DAT_ce30eb0:
    #data 0x3fd55555
PTR_ce30eb4:
    #data loc_8c034e8c
PTR_ce30eb8:
    #data FUN_ce32204
PTR_ce30ebc:
    #data loc_8c2895f0

;=============================================

LAB_ce30ec0:
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov r14,r4
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x12,r5
    mov.w @(DAT_ce30fae,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce30fb4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce30eda:
    mov.l @(PTR_ce30fb8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30eec
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)

LAB_ce30eec:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30ef2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fbc,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30f0a
    lds.l @r15+,PR
    mov.l @(PTR_ce30fc0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f0a:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce30fc4,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce30f1e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30f64
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30fc8,pc),r3
    add 0x01,r0
    jsr @r3
    mov.b r0,@(0x6,r14)
    mov.l @(PTR_ce30fb4,pc),r2
    mov 0x01,r6
    mov 0x13,r5
    and r0,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30fcc,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30fc8,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce30fd0,pc),r3
    mov r0,r1
    jsr @r3
    mov 0x03,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce30fd4,pc),r2
    mov r0,r5
    add 0x0F,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30f64:
    lds.l @r15+,PR
    mov.l @(PTR_ce30fb8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30f6e:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce30f82
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce30fb4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce30f82:
    mov.l @(PTR_ce30fb8,pc),r3
    jmp @r3
    nop

LAB_ce30f88:
    mov.w @(DAT_ce30fb0,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30fd8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30f9c:
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

DAT_ce30fae:
    #data 0x012c
DAT_ce30fb0:
    #data 0x01e9
    #align4

PTR_ce30fb4:
    #data loc_8c034e8c
PTR_ce30fb8:
    #data loc_8c034dee
PTR_ce30fbc:
    #data loc_8c046c8a
PTR_ce30fc0:
    #data FUN_ce32204
PTR_ce30fc4:
    #data PTR_ce324f8
PTR_ce30fc8:
    #data loc_8c03319e
PTR_ce30fcc:
    #data loc_8c0eafb0
PTR_ce30fd0:
    #data loc_8c12939c
PTR_ce30fd4:
    #data loc_8c042008
PTR_ce30fd8:
    #data PTR_ce3250c
PTR_ce30fdc:
    #data PTR_ce32538

;=============================================

LAB_ce30fe0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31134,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31138,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31128,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce31012
    mov 0x00,r13
    mov.w @(DAT_ce31128,pc),r0
    mov.l @(PTR_ce3113c,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce31012:
    mov.w @(DAT_ce3112a,pc),r0
    mov.l @(PTR_ce31140,pc),r3
    mov.b @(r0,r14),r4
    add 0x2F,r0
    mov.b @(r0,r14),r2
    extu.b r4,r4
    shll r4
    shll2 r4
    add r3,r4
    fmov.s @r4+,fr4
    tst r2,r2
    bt/s LAB_ce31030
    fmov.s @r4,fr5
    fneg fr5
    fneg fr4

LAB_ce31030:
    mov 0x5C,r0
    mov.l @(PTR_ce31144,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)
    mov 0x60,r0
    fldi0 fr4
    mov 0x01,r7
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov r7,r5
    fmov fr4,@(r0,r14)
    mov 0x14,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3112a,pc),r0
    mov 0x15,r5
    mov r14,r4
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31148,pc),r0
    extu.b r2,r2
    shll r2
    mov.b @(r0,r2),r3
    mov.w @(DAT_ce3112c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3114c,pc),r3
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
    mov.w @(DAT_ce3112a,pc),r0
    mov.l @(PTR_ce31150,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce3108e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31154,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3112e,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bf LAB_ce31122
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
    bt LAB_ce31122
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31128,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3110a
    mov.w @(DAT_ce31130,pc),r0
    mov 0x0C,r2
    mov.l @(PTR_ce31158,pc),r3
    mov r14,r4
    mov.l r2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3110a:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31150,pc),r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3112a,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    add 0x03,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31122:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31128:
    #data 0x01f9
DAT_ce3112a:
    #data 0x01a3
DAT_ce3112c:
    #data 0x01a1
DAT_ce3112e:
    #data 0x0141
DAT_ce31130:
    #data 0x02ac
    #align4

PTR_ce31134:
    #data loc_8c05218a
PTR_ce31138:
    #data loc_8c056de4
PTR_ce3113c:
    #data loc_8c05115a
PTR_ce31140:
    #data DAT_ce32544
PTR_ce31144:
    #data loc_8c03544c
PTR_ce31148:
    #data DAT_ce3255c
PTR_ce3114c:
    #data loc_8c2896b0
PTR_ce31150:
    #data loc_8c034e8c
PTR_ce31154:
    #data loc_8c034dee
PTR_ce31158:
    #data loc_8c05176e

;=============================================

LAB_ce3115c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31290,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31176
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31294,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31176:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3117e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce311e2
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31298,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x11,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3127e,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3129c,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce312a0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31280,pc),r0
    mov 0x33,r2
    mov.l @(PTR_ce312a4,pc),r3
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
    mov.w @(DAT_ce31282,pc),r0
    mov.l @(PTR_ce312a8,pc),r2
    mov.b @(r0,r14),r6
    add 0x06,r6
    jsr @r2
    mov r14,r4

LAB_ce311e2:
    mov.l @(PTR_ce31290,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311fa
    lds.l @r15+,PR
    mov.l @(PTR_ce31294,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce311fa:
    mov.w @(DAT_ce31284,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce31228
    mov.l @(PTR_ce312ac,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31286,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31216
    mov.l @(PTR_ce312b0,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31216:
    mov.l @(PTR_ce312b4,pc),r2
    mov 0x22,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31288,pc),r0
    mov 0x10,r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)

LAB_ce31228:
    mov.w @(DAT_ce31284,pc),r0
    mov 0xFE,r3
    mov.b @(r0,r14),r2
    and r3,r2
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce3125c
    mov.w @(0x1c,r14),r0
    xor 0x07,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3128a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce3125c
    lds.l @r15+,PR
    mov.w @(0x1c,r14),r0
    mov 0x01,r7
    mov.l @(PTR_ce312b8,pc),r3
    mov r7,r5
    mov.l @r15+,r13
    mov r0,r6
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3125c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31264:
    mov.w @(DAT_ce3128c,pc),r0
    mov 0x04,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce312bc,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3127e:
    #data 0x01f9
DAT_ce31280:
    #data 0x01a1
DAT_ce31282:
    #data 0x01a3
DAT_ce31284:
    #data 0x0141
DAT_ce31286:
    #data 0x02b8
DAT_ce31288:
    #data 0x027b
DAT_ce3128a:
    #data 0x0140
DAT_ce3128c:
    #data 0x02c0
    #align4

PTR_ce31290:
    #data loc_8c034dee
PTR_ce31294:
    #data FUN_ce32204
PTR_ce31298:
    #data loc_8c05218a
PTR_ce3129c:
    #data loc_8c056de4
PTR_ce312a0:
    #data loc_8c05115a
PTR_ce312a4:
    #data loc_8c2896b0
PTR_ce312a8:
    #data loc_8c034e8c
PTR_ce312ac:
    #data loc_8c0b1010
PTR_ce312b0:
    #data loc_8c0eec0c
PTR_ce312b4:
    #data loc_8c042008
PTR_ce312b8:
    #data loc_8c03544c
PTR_ce312bc:
    #data PTR_ce32564

;=============================================

LAB_ce312c0:
    mov.w @(DAT_ce313c8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce312de
    mov.w @(DAT_ce313cc,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce313ca,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce312de:
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    mov.l @(PTR_ce313dc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce313ce,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce313e0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce313d0,pc),r0
    mov 0x3D,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce313e4,pc),r3
    mov 0x09,r6
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce313e8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce313ec,pc),r3
    mov 0x04,r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce31336
    mov r0,r4
    mov 0x22,r0
    mov.b r13,@(r0,r4)

LAB_ce31336:
    mov.l @(PTR_ce313ec,pc),r3
    mov 0x04,r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3134a
    mov r0,r4
    mov 0x22,r0
    mov 0x10,r3
    mov.b r3,@(r0,r4)

LAB_ce3134a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31352:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce313d2,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce313d4,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce313c8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31374
    bra LAB_ce31376
    mov 0x02,r3

LAB_ce31374:
    mov 0x00,r3

LAB_ce31376:
    mov.w @(DAT_ce313d6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce313f0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce313d8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce313c0
    mov.w @(DAT_ce313cc,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce313f4,pc),r3
    mov 0x15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce313d8,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce313da,pc),r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce313f8,pc),r0
    mov.l @(PTR_ce31400,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce313fc,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce313c0:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce313c8:
    #data 0x0255
DAT_ce313ca:
    #data 0x00ff
DAT_ce313cc:
    #data 0x03f0
DAT_ce313ce:
    #data 0x01f9
DAT_ce313d0:
    #data 0x01a1
DAT_ce313d2:
    #data 0x03f8
DAT_ce313d4:
    #data 0x0328
DAT_ce313d6:
    #data 0x03f1
DAT_ce313d8:
    #data 0x0141
DAT_ce313da:
    #data 0x00b4
    #align4

PTR_ce313dc:
    #data loc_8c05115a
PTR_ce313e0:
    #data loc_8c05218a
PTR_ce313e4:
    #data loc_8c2896b0
PTR_ce313e8:
    #data loc_8c034e8c
PTR_ce313ec:
    #data loc_8c0eafb0
PTR_ce313f0:
    #data loc_8c034dee
PTR_ce313f4:
    #data loc_8c042008
DAT_ce313f8:
    #data 0x42200000
DAT_ce313fc:
    #data 0x43ab6db6
PTR_ce31400:
    #data loc_8c050834

;=============================================

LAB_ce31404:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce314ec,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce314f0,pc),r2
    mov 0x02,r5
    mov 0x01,r7
    mov 0x09,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce314f4,pc),r3
    mov 0x4D,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce314f8,pc),r4
    mov 0x03,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce3143a:
    mov.w @(DAT_ce314de,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x11,r5
    mov.w @(DAT_ce314e0,pc),r0
    mov.w @(DAT_ce314e2,pc),r3
    mov.b r2,@(r0,r14)
    add 0x9C,r0
    mov.l r3,@(r0,r14)
    bsr FUN_ce3149e
    mov r14,r4
    mov.l @(PTR_ce314fc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31498
    mov.w @(DAT_ce314e4,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31500,pc),r3
    mov r4,r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov r4,r6
    mov.w @(DAT_ce314e6,pc),r0
    mov 0x01,r7
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce314f4,pc),r2
    mov 0x3B,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32204
    mov.l @r15+,r14

LAB_ce31498:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3149e:
    add 0xFC,r15
    mov.l @(PTR_ce31504,pc),r3
    mov.l r5,@r15
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x01,r0
    bt LAB_ce314b8
    mov.l @(PTR_ce31500,pc),r1
    mov 0x00,r6
    mov 0x01,r7
    mov r6,r5
    jmp @r1
    add 0x04,r15

LAB_ce314b8:
    mov.l @(PTR_ce314f0,pc),r2
    mov 0x01,r7
    mov.l @r15,r6
    mov 0x00,r5
    jmp @r2
    add 0x04,r15

LAB_ce314c4:
    mov.w @(DAT_ce314e8,pc),r0
    mov 0x04,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31508,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314de:
    #data 0x03f8
DAT_ce314e0:
    #data 0x0328
DAT_ce314e2:
    #data 0x00ff
DAT_ce314e4:
    #data 0x03f9
DAT_ce314e6:
    #data 0x0327
DAT_ce314e8:
    #data 0x02c0
    #align4

PTR_ce314ec:
    #data loc_8c0b0504
PTR_ce314f0:
    #data loc_8c03544c
PTR_ce314f4:
    #data loc_8c04223a
PTR_ce314f8:
    #data loc_8c26a518
PTR_ce314fc:
    #data loc_8c034dee
PTR_ce31500:
    #data loc_8c0353ee
PTR_ce31504:
    #data loc_8c26823c
PTR_ce31508:
    #data PTR_ce32574

;=============================================

LAB_ce3150c:
    mov.w @(DAT_ce31622,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3152a
    mov.w @(DAT_ce31626,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31624,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3152a:
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    mov.l @(PTR_ce31638,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31628,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3163c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3162a,pc),r0
    mov 0x3E,r3
    mov r13,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31640,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31644,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31648,pc),r3
    mov 0x15,r5
    mov 0x0A,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3164c,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3158a
    mov r0,r4
    mov 0x22,r0
    mov.b r13,@(r0,r4)

LAB_ce3158a:
    mov.l @(PTR_ce3164c,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3159e
    mov r0,r4
    mov 0x22,r0
    mov 0x10,r3
    mov.b r3,@(r0,r4)

LAB_ce3159e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce315a6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3162c,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3162e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31622,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce315c8
    bra LAB_ce315ca
    mov 0x02,r3

LAB_ce315c8:
    mov 0x00,r3

LAB_ce315ca:
    mov.w @(DAT_ce31630,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31650,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31632,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3161a
    mov.w @(DAT_ce31626,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31632,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31634,pc),r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.l @(PTR_ce31654,pc),r3
    mov 0x17,r5
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce31658,pc),r0
    mov.l @(PTR_ce31660,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce3165c,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce3161a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31622:
    #data 0x0255
DAT_ce31624:
    #data 0x00ff
DAT_ce31626:
    #data 0x03f0
DAT_ce31628:
    #data 0x01f9
DAT_ce3162a:
    #data 0x01a1
DAT_ce3162c:
    #data 0x03f8
DAT_ce3162e:
    #data 0x0328
DAT_ce31630:
    #data 0x03f1
DAT_ce31632:
    #data 0x0141
DAT_ce31634:
    #data 0x00b9
    #align4

PTR_ce31638:
    #data loc_8c05115a
PTR_ce3163c:
    #data loc_8c05218a
PTR_ce31640:
    #data loc_8c2896b0
PTR_ce31644:
    #data loc_8c0ea77c
PTR_ce31648:
    #data loc_8c034e8c
PTR_ce3164c:
    #data loc_8c0eafb0
PTR_ce31650:
    #data loc_8c034dee
PTR_ce31654:
    #data loc_8c042008
DAT_ce31658:
    #data 0x42200000
DAT_ce3165c:
    #data 0x43ab6db6
PTR_ce31660:
    #data loc_8c050834

;=============================================

LAB_ce31664:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x25,r5
    mov.l @(PTR_ce3172c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31730,pc),r2
    mov 0x4D,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31686:
    mov.w @(DAT_ce3171c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.w @(DAT_ce3171e,pc),r0
    mov.w @(DAT_ce31720,pc),r3
    mov.b r2,@(r0,r14)
    add 0x9C,r0
    mov.l r3,@(r0,r14)
    bsr FUN_ce3149e
    mov r14,r4
    mov.w @(0x1e,r14),r0
    mov.w @(DAT_ce31722,pc),r3
    add r3,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce316bc
    mov.l @(PTR_ce31734,pc),r4
    mov 0x02,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce316bc:
    mov.l @(PTR_ce31738,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce316fc
    mov.w @(DAT_ce31724,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31730,pc),r3
    mov 0x3B,r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31726,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3173c,pc),r2
    mov 0x00,r6
    mov 0x01,r7
    mov r6,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32204
    mov.l @r15+,r14

LAB_ce316fc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31702:
    mov.w @(DAT_ce31728,pc),r0
    mov 0x04,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31740,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3171c:
    #data 0x03f8
DAT_ce3171e:
    #data 0x0328
DAT_ce31720:
    #data 0x00ff
DAT_ce31722:
    #data 0x2000
DAT_ce31724:
    #data 0x03f9
DAT_ce31726:
    #data 0x0327
DAT_ce31728:
    #data 0x02c0
    #align4

PTR_ce3172c:
    #data loc_8c042008
PTR_ce31730:
    #data loc_8c04223a
PTR_ce31734:
    #data loc_8c26a518
PTR_ce31738:
    #data loc_8c034dee
PTR_ce3173c:
    #data loc_8c0353ee
PTR_ce31740:
    #data PTR_ce32584

;=============================================

LAB_ce31744:
    mov.w @(DAT_ce3184c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31762
    mov.w @(DAT_ce31850,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3184e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31762:
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    mov.l @(PTR_ce31860,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31852,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31864,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31854,pc),r0
    mov 0x42,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31868,pc),r3
    mov 0x0B,r6
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3186c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31870,pc),r3
    mov 0x08,r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce317ba
    mov r0,r4
    mov 0x22,r0
    mov.b r13,@(r0,r4)

LAB_ce317ba:
    mov.l @(PTR_ce31870,pc),r3
    mov 0x08,r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce317ce
    mov r0,r4
    mov 0x22,r0
    mov 0x10,r3
    mov.b r3,@(r0,r4)

LAB_ce317ce:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce317d6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31856,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31858,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3184c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce317f8
    bra LAB_ce317fa
    mov 0x02,r3

LAB_ce317f8:
    mov 0x00,r3

LAB_ce317fa:
    mov.w @(DAT_ce3185a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31874,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3185c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31844
    mov.w @(DAT_ce31850,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31878,pc),r3
    mov 0x14,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3185c,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce3187c,pc),r0
    mov.l @(PTR_ce31884,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce31880,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31844:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3184c:
    #data 0x0255
DAT_ce3184e:
    #data 0x00ff
DAT_ce31850:
    #data 0x03f0
DAT_ce31852:
    #data 0x01f9
DAT_ce31854:
    #data 0x01a1
DAT_ce31856:
    #data 0x03f8
DAT_ce31858:
    #data 0x0328
DAT_ce3185a:
    #data 0x03f1
DAT_ce3185c:
    #data 0x0141
    #align4

PTR_ce31860:
    #data loc_8c05115a
PTR_ce31864:
    #data loc_8c05218a
PTR_ce31868:
    #data loc_8c2896b0
PTR_ce3186c:
    #data loc_8c034e8c
PTR_ce31870:
    #data loc_8c0eafb0
PTR_ce31874:
    #data loc_8c034dee
PTR_ce31878:
    #data loc_8c042008
DAT_ce3187c:
    #data 0x42200000
DAT_ce31880:
    #data 0x43ab6db6
PTR_ce31884:
    #data loc_8c050834

;=============================================

LAB_ce31888:
    mov.w @(DAT_ce3199e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce319a0,pc),r0
    mov.w @(DAT_ce319a2,pc),r3
    mov.b r2,@(r0,r14)
    add 0x9C,r0
    mov.l r3,@(r0,r14)
    bsr FUN_ce3149e
    mov r14,r4
    mov.l @(PTR_ce319b0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce318ec
    mov.l @(PTR_ce319b4,pc),r4
    mov 0x02,r0
    mov.l @(PTR_ce319b8,pc),r3
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce319bc,pc),r2
    mov 0x03,r5
    mov 0x01,r7
    mov 0x08,r6
    jsr @r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce319c0,pc),r3
    mov 0x0C,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x11,r0
    mov.w r0,@(0x1c,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce318ec:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318f2:
    mov.w @(DAT_ce3199e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce319a0,pc),r0
    mov 0x14,r5
    mov.b r2,@(r0,r14)
    bsr FUN_ce3149e
    mov r14,r4
    mov.w @(DAT_ce319a4,pc),r0
    mov.w @(DAT_ce319a2,pc),r2
    mov.l @(PTR_ce319b0,pc),r3
    mov.l r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31930
    mov.l @(PTR_ce319c4,pc),r3
    mov 0x00,r6
    mov 0x01,r7
    mov r6,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32204
    mov.l @r15+,r14

LAB_ce31930:
    mov.w @(DAT_ce319a6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3197e
    mov.w @(0x1c,r14),r0
    xor 0x07,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce319a6,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce31954
    mov.w @(0x1c,r14),r0
    mov 0x01,r7
    mov.l @(PTR_ce319bc,pc),r3
    mov r7,r5
    mov r0,r6
    jsr @r3
    mov r14,r4

LAB_ce31954:
    mov.w @(DAT_ce319a6,pc),r0
    mov.b @(r0,r14),r0
    tst 0x04,r0
    bt LAB_ce3197e
    mov.w @(DAT_ce319a8,pc),r0
    mov 0x00,r4
    mov r4,r5
    mov.l @(PTR_ce319c4,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov r4,r6
    mov.w @(DAT_ce319aa,pc),r0
    mov 0x01,r7
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3197e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31984:
    mov.w @(DAT_ce319ac,pc),r0
    mov 0x04,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce319c8,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3199e:
    #data 0x03f8
DAT_ce319a0:
    #data 0x0328
DAT_ce319a2:
    #data 0x00ff
DAT_ce319a4:
    #data 0x02c4
DAT_ce319a6:
    #data 0x0140
DAT_ce319a8:
    #data 0x03f9
DAT_ce319aa:
    #data 0x0327
DAT_ce319ac:
    #data 0x02c0
    #align4

PTR_ce319b0:
    #data loc_8c034dee
PTR_ce319b4:
    #data loc_8c26a518
PTR_ce319b8:
    #data loc_8c0afc7c
PTR_ce319bc:
    #data loc_8c03544c
PTR_ce319c0:
    #data loc_8c034e8c
PTR_ce319c4:
    #data loc_8c0353ee
PTR_ce319c8:
    #data PTR_ce32594

;=============================================

LAB_ce319cc:
    mov.w @(DAT_ce31ad4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce319ea
    mov.w @(DAT_ce31ad8,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31ad6,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce319ea:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31ae8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31ada,pc),r0
    mov 0x00,r13
    mov.l @(PTR_ce31aec,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31adc,pc),r0
    mov 0x44,r2
    mov.l @(PTR_ce31af0,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x0D,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31af4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31af8,pc),r3
    mov 0x06,r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce31a42
    mov r0,r4
    mov 0x22,r0
    mov.b r13,@(r0,r4)

LAB_ce31a42:
    mov.l @(PTR_ce31af8,pc),r3
    mov 0x06,r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce31a56
    mov r0,r4
    mov 0x22,r0
    mov 0x10,r3
    mov.b r3,@(r0,r4)

LAB_ce31a56:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31a5e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31ade,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31ae0,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31ad4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31a80
    bra LAB_ce31a82
    mov 0x02,r3

LAB_ce31a80:
    mov 0x00,r3

LAB_ce31a82:
    mov.w @(DAT_ce31ae2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31afc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31ae4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31acc
    mov.w @(DAT_ce31ad8,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31b00,pc),r3
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31ae4,pc),r0
    mov.b r4,@(r0,r14)
    add 0x63,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce31b04,pc),r0
    mov.l @(PTR_ce31b0c,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce31b08,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31acc:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ad4:
    #data 0x0255
DAT_ce31ad6:
    #data 0x00ff
DAT_ce31ad8:
    #data 0x03f0
DAT_ce31ada:
    #data 0x01f9
DAT_ce31adc:
    #data 0x01a1
DAT_ce31ade:
    #data 0x03f8
DAT_ce31ae0:
    #data 0x0328
DAT_ce31ae2:
    #data 0x03f1
DAT_ce31ae4:
    #data 0x0141
    #align4

PTR_ce31ae8:
    #data loc_8c05218a
PTR_ce31aec:
    #data loc_8c05115a
PTR_ce31af0:
    #data loc_8c2896b0
PTR_ce31af4:
    #data loc_8c034e8c
PTR_ce31af8:
    #data loc_8c0eafb0
PTR_ce31afc:
    #data loc_8c034dee
PTR_ce31b00:
    #data loc_8c042008
DAT_ce31b04:
    #data 0x42200000
DAT_ce31b08:
    #data 0x43ab6db6
PTR_ce31b0c:
    #data loc_8c050834

;=============================================

LAB_ce31b10:
    mov.w @(DAT_ce31c0c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31c0e,pc),r0
    mov.l @(PTR_ce31c1c,pc),r3
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31c10,pc),r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31c20,pc),r2
    mov 0x4F,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31c24,pc),r4
    mov 0x02,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce31b4a:
    mov.w @(DAT_ce31c0c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x12,r5
    mov.w @(DAT_ce31c0e,pc),r0
    mov.w @(DAT_ce31c12,pc),r3
    mov.b r2,@(r0,r14)
    add 0x9C,r0
    mov.l r3,@(r0,r14)
    bsr FUN_ce3149e
    mov r14,r4
    mov.l @(PTR_ce31c28,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31ba0
    mov.w @(DAT_ce31c14,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31c2c,pc),r3
    mov r4,r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov r4,r6
    mov.w @(DAT_ce31c16,pc),r0
    mov 0x01,r7
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32204
    mov.l @r15+,r14

LAB_ce31ba0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31ba6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31be0
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r3,r6
    mov 0x13,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31c18,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce31c1a,pc),r0
    mov.l @(PTR_ce31c30,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31c34,pc),r2
    mov 0x10,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31be0:
    mov.l @(PTR_ce31c28,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce31c06
    mov.l @(PTR_ce31c2c,pc),r2
    mov 0x00,r6
    mov 0x01,r7
    mov r6,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32204
    mov.l @r15+,r14

LAB_ce31c06:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c0c:
    #data 0x03f8
DAT_ce31c0e:
    #data 0x0328
DAT_ce31c10:
    #data 0x01a4
DAT_ce31c12:
    #data 0x00ff
DAT_ce31c14:
    #data 0x03f9
DAT_ce31c16:
    #data 0x0327
DAT_ce31c18:
    #data 0x01f9
DAT_ce31c1a:
    #data 0x041c
    #align4

PTR_ce31c1c:
    #data loc_8c0b14bc
PTR_ce31c20:
    #data loc_8c04223a
PTR_ce31c24:
    #data loc_8c26a518
PTR_ce31c28:
    #data loc_8c034dee
PTR_ce31c2c:
    #data loc_8c0353ee
PTR_ce31c30:
    #data loc_8c034e8c
PTR_ce31c34:
    #data loc_8c042008

;=============================================

LAB_ce31c38:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31ca4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31d84,pc),r3
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
    mov 0x01,r3
    mov.w @(DAT_ce31d7c,pc),r0
    mov 0x48,r2
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0xA8,r0
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31d88,pc),r3
    mov 0x05,r6
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31d8c,pc),r2
    mov 0x14,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31d90,pc),r3
    mov 0x02,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ca4:
    mov.l @(PTR_ce31d94,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31cb8
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32204
    mov.l @r15+,r14

LAB_ce31cb8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31cbe:
    mov r4,r3
    mov.l @(PTR_ce31d98,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31cd0:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31d84,pc),r3
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
    mov.w @(DAT_ce31d7c,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31d7e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31d9c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31d80,pc),r0
    mov 0x45,r3
    mov 0x04,r6
    mov r14,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31d88,pc),r3
    mov 0x14,r5
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
    mov.l @(PTR_ce31d8c,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31d3e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce31d94,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31d82,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31d74
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31d82,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31da0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31da4,pc),r0
    mov.l @(PTR_ce31da8,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31d74:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d7c:
    #data 0x01f9
DAT_ce31d7e:
    #data 0x041c
DAT_ce31d80:
    #data 0x01a1
DAT_ce31d82:
    #data 0x0141
    #align4

PTR_ce31d84:
    #data loc_8c05218a
PTR_ce31d88:
    #data loc_8c2896b0
PTR_ce31d8c:
    #data loc_8c034e8c
PTR_ce31d90:
    #data loc_8c0eafb0
PTR_ce31d94:
    #data loc_8c034dee
PTR_ce31d98:
    #data PTR_ce325a4
PTR_ce31d9c:
    #data loc_8c05115a
DAT_ce31da0:
    #data 0x423aaaaa
DAT_ce31da4:
    #data 0x4211b6db
PTR_ce31da8:
    #data loc_8c050ea4

;=============================================

LAB_ce31dac:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31efc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31dc4
    mov.l @r15,r4
    add 0x04,r15
    bra FUN_ce32204
    lds.l @r15+,PR

LAB_ce31dc4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31dcc:
    mov r4,r3
    mov.l @(PTR_ce31f00,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31dde:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x01,r5
    mov.l @(PTR_ce31f04,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(DAT_ce31f08,pc),r1
    mov 0x02,r2
    mov.w @(DAT_ce31ef4,pc),r0
    lds r1,FPUL
    mov.b r2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31f0c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31ef6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31e16
    mova @(DAT_ce31f10,pc),r0
    fmov.s @r0,fr4

LAB_ce31e16:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31f14,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x46,r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31f18,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ef8,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31f1c,pc),r3
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
    mov.l @(PTR_ce31f20,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e64:
    mov.w @(DAT_ce31efa,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31e78
    mov.l @(PTR_ce31efc,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31e78:
    mov 0x5C,r1
    mov.l @(PTR_ce31f24,pc),r3
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
    bt LAB_ce31ecc
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31f28,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ecc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31ed2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31efc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31eec
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31f2c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31eec:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ef4:
    #data 0x01f9
DAT_ce31ef6:
    #data 0x01d2
DAT_ce31ef8:
    #data 0x01a1
DAT_ce31efa:
    #data 0x0141
    #align4

PTR_ce31efc:
    #data loc_8c034dee
PTR_ce31f00:
    #data PTR_ce325b0
PTR_ce31f04:
    #data loc_8c035162
DAT_ce31f08:
    #data 0x43092492
DAT_ce31f0c:
    #data 0x41f00000
DAT_ce31f10:
    #data 0xc1f00000
DAT_ce31f14:
    #data 0xbe892492
DAT_ce31f18:
    #data 0xbf4db6db
PTR_ce31f1c:
    #data loc_8c2896b0
PTR_ce31f20:
    #data loc_8c034e8c
PTR_ce31f24:
    #data loc_8c052ce2
PTR_ce31f28:
    #data loc_8c0511b4
PTR_ce31f2c:
    #data loc_8c051854

;=============================================

LAB_ce31f30:
    mov.w @(DAT_ce32050,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31f7e
    mov 0x00,r4
    mov.w @(DAT_ce32052,pc),r0
    mov.w @(DAT_ce32054,pc),r3
    mov.w @(r0,r14),r5
    extu.w r5,r5
    and r3,r5
    tst r5,r5
    bt LAB_ce31f7e
    shlr8 r5
    mov 0x22,r0
    shlr2 r5
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce32056,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31f7e
    mov.l @(PTR_ce32064,pc),r1
    jsr @r1
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce31f7e
    mov r0,r4
    mov.w @(DAT_ce32058,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf/s LAB_ce31f7a
    mov 0x00,r5
    mov 0x01,r5

LAB_ce31f7a:
    mov.w @(DAT_ce3205a,pc),r0
    mov.b r5,@(r0,r14)

LAB_ce31f7e:
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f88:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3205c,pc),r0
    mov 0x0A,r3
    mov r4,r14
    mov 0x05,r6
    mov.b r3,@(r0,r14)
    mov r6,r5
    mov.l @(PTR_ce32068,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3206c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3205a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x3F,r0
    bf/s LAB_ce31fea
    mov 0x01,r13
    mov 0x22,r0
    mov.b @(r0,r14),r2
    extu.b r2,r2
    tst r13,r2
    bt/s LAB_ce31fd2
    mov 0x01,r7
    mov.w @(DAT_ce3205e,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32060,pc),r0
    mov.w @(r0,r14),r1
    xor r3,r1
    mov.w r1,@(r0,r14)

LAB_ce31fd2:
    mov.l @(PTR_ce32070,pc),r3
    mov r7,r5
    mov 0x0B,r6
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32074,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32078,pc),r0
    mov 0x00,r13
    fmov.s fr3,@r15
    bra LAB_ce3201c
    fmov.s @r0,fr3

LAB_ce31fea:
    mov 0x22,r0
    mov.b @(r0,r14),r2
    extu.b r2,r2
    tst r13,r2
    bt/s LAB_ce32008
    mov 0x01,r7
    mov.w @(DAT_ce3205e,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32060,pc),r0
    mov.w @(r0,r14),r1
    xor r3,r1
    mov.w r1,@(r0,r14)

LAB_ce32008:
    mov.l @(PTR_ce32070,pc),r3
    mov r7,r5
    mov 0x09,r6
    jsr @r3
    mov r14,r4
    mova @(DAT_ce3207c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32080,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3

LAB_ce3201c:
    mov.l @(PTR_ce32084,pc),r3
    mov 0x04,r0
    mov r15,r5
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32088,pc),r2
    mov 0x0F,r5
    mov r13,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3203c:
    mov.w @(DAT_ce32062,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)
    add 0x0D,r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    tst 0x3F,r0
    bt LAB_ce3208c
    bra LAB_ce3213c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32050:
    #data 0x01f9
DAT_ce32052:
    #data 0x01fa
DAT_ce32054:
    #data 0x0c00
DAT_ce32056:
    #data 0x01a3
DAT_ce32058:
    #data 0x01fe
DAT_ce3205a:
    #data 0x01f7
DAT_ce3205c:
    #data 0x01a0
DAT_ce3205e:
    #data 0x01d2
DAT_ce32060:
    #data 0x0130
DAT_ce32062:
    #data 0x01ea
    #align4

PTR_ce32064:
    #data loc_8c045790
PTR_ce32068:
    #data loc_8c02fec4
PTR_ce3206c:
    #data loc_8c056f2a
PTR_ce32070:
    #data loc_8c03544c
DAT_ce32074:
    #data 0xc2d55555
DAT_ce32078:
    #data 0x432b6db6
DAT_ce3207c:
    #data 0xc3200000
DAT_ce32080:
    #data 0x433c9249
PTR_ce32084:
    #data loc_8c103660
PTR_ce32088:
    #data loc_8c034e8c

;=============================================

LAB_ce3208c:
    mov.l @(PTR_ce32188,pc),r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x01,r0
    bt/s LAB_ce320a4
    mov 0x0B,r6
    mov 0x0C,r6

LAB_ce320a4:
    mov.l @(PTR_ce3218c,pc),r3
    mov 0x01,r7
    mov r7,r5
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32190,pc),r12
    tst r0,r0
    bf LAB_ce320da
    mov.b @(0x6,r14),r0
    mov 0x4F,r5
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
    jsr @r12
    mov r14,r4
    mov 0x09,r5
    jsr @r12
    mov r14,r4

LAB_ce320da:
    mov.l @(PTR_ce32194,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce320f2
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra FUN_ce32204
    mov.l @r15+,r14

LAB_ce320f2:
    mov.w @(DAT_ce32180,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32132
    mov 0x00,r3
    mov.w @(DAT_ce32184,pc),r1
    mov.b r3,@(r0,r14)
    mov 0x02,r4
    mov.w @(DAT_ce32182,pc),r0
    mov 0x20,r3
    mov.l @(PTR_ce32198,pc),r2
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r4,@(r0,r13)
    add 0x03,r0
    mov.b r4,@(r0,r13)
    add 0xD9,r0
    mov.b @(r0,r14),r0
    add r13,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce32186,pc),r0
    jsr @r2
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce3219c,pc),r3
    jsr @r3
    mov r13,r4
    mov 0x3A,r5
    jsr @r12
    mov r14,r4

LAB_ce32132:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3213c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce32164
    mov r14,r4
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

LAB_ce32164:
    mov.l @(PTR_ce32194,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321a4
    mov.l @(PTR_ce321a0,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    bsr FUN_ce32204
    mov r14,r4
    bra LAB_ce321fc
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32180:
    #data 0x0141
DAT_ce32182:
    #data 0x01c8
DAT_ce32184:
    #data 0x01d2
DAT_ce32186:
    #data 0x01a1
    #align4

PTR_ce32188:
    #data loc_8c26823c
PTR_ce3218c:
    #data loc_8c03544c
PTR_ce32190:
    #data loc_8c04223a
PTR_ce32194:
    #data loc_8c034dee
PTR_ce32198:
    #data loc_8c02fd26
PTR_ce3219c:
    #data loc_8c0423fc
PTR_ce321a0:
    #data loc_8c0eafb0

;=============================================

LAB_ce321a4:
    mov.w @(DAT_ce322cc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce321fc
    mov 0x00,r3
    mov.w @(DAT_ce322d0,pc),r1
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce322ce,pc),r0
    mov 0x02,r2
    mov r15,r5
    mov r2,r6
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r0
    add r4,r1
    mov 0x21,r3
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce322d2,pc),r0
    mov.b r3,@(r0,r4)
    add 0x58,r0
    mov.b r2,@(r0,r4)
    mova @(DAT_ce322dc,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce322e0,pc),r0
    mov.l @(PTR_ce322e4,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce322e8,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce322ec,pc),r3
    jsr @r3
    nop

LAB_ce321fc:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32204:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    mov.l @(PTR_ce322f0,pc),r3
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    jmp @r3
    fmov fr4,@(r0,r4)

LAB_ce3221a:
    mov.w @(DAT_ce322d4,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    and 0x3F,r0
    cmp/ge r3,r0
    bt LAB_ce32238
    mov.w @(DAT_ce322ce,pc),r0
    mov r14,r5
    mov.l @(PTR_ce322f4,pc),r2
    mov.l @(r0,r14),r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32238:
    rts
    mov.l @r15+,r14

LAB_ce3223c:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce322d6,pc),r0
    mov.b @(r0,r4),r3
    mov.l @(PTR_ce322f8,pc),r0
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce322d8,pc),r0
    mov.l @(PTR_ce322fc,pc),r3
    mov.b r2,@(r0,r4)
    jmp @r3
    mov 0x1D,r5

LAB_ce32256:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce322d6,pc),r0
    mov.b @(r0,r4),r3
    mov.l @(PTR_ce32300,pc),r0
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce322d8,pc),r0
    mov.l @(PTR_ce322fc,pc),r3
    mov.b r2,@(r0,r4)
    jmp @r3
    mov 0x1D,r5

LAB_ce32270:
    mov 0x00,r0
    mov.l @(PTR_ce32304,pc),r5
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce322d6,pc),r0
    mov.w @(DAT_ce322da,pc),r1
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce322d8,pc),r0
    add r4,r1
    shll r3
    add r5,r3
    mov.b @r3,r2
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce322d6,pc),r0
    mov.b @(r0,r4),r3
    shll r3
    add r3,r5
    mov.l @(PTR_ce322fc,pc),r3
    mov.b @(0x1,r5),r0
    mov.b r0,@r1
    jmp @r3
    mov 0x15,r5

LAB_ce3229e:
    mov 0x00,r0
    mov.l @(PTR_ce32308,pc),r5
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce322d6,pc),r0
    mov.w @(DAT_ce322da,pc),r1
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce322d8,pc),r0
    add r4,r1
    shll r3
    add r5,r3
    mov.b @r3,r2
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce322d6,pc),r0
    mov.b @(r0,r4),r3
    shll r3
    add r3,r5
    mov.l @(PTR_ce322fc,pc),r3
    mov.b @(0x1,r5),r0
    mov.b r0,@r1
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce322cc:
    #data 0x0141
DAT_ce322ce:
    #data 0x01c8
DAT_ce322d0:
    #data 0x01d2
DAT_ce322d2:
    #data 0x01a1
DAT_ce322d4:
    #data 0x01f7
DAT_ce322d6:
    #data 0x04c9
DAT_ce322d8:
    #data 0x01e9
DAT_ce322da:
    #data 0x01a3
    #align4

DAT_ce322dc:
    #data 0xc3055555
DAT_ce322e0:
    #data 0x43809249
PTR_ce322e4:
    #data loc_8c0fdab6
PTR_ce322e8:
    #data loc_8c04223a
PTR_ce322ec:
    #data loc_8c02fd26
PTR_ce322f0:
    #data loc_8c051648
PTR_ce322f4:
    #data loc_8c04cc1c
PTR_ce322f8:
    #data DAT_ce325bc
PTR_ce322fc:
    #data loc_8c0530d8
PTR_ce32300:
    #data DAT_ce325bf
PTR_ce32304:
    #data DAT_ce325c2
PTR_ce32308:
    #data DAT_ce325c8
DAT_ce3230c:
    #data 0x0201
    #data 0x0200
DAT_ce32310:
    #data 0x02ff
    #data 0x0201
DAT_ce32314:
    #data 0xffff
    #data 0x02ff
DAT_ce32318:
    #data 0x0201
    #data 0x0201
DAT_ce3231c:
    #data 0x02ff
    #data 0x02ff
DAT_ce32320:
    #data 0xffff
    #data 0xffff
DAT_ce32324:
    #data 0x0201
    #data 0x0200
DAT_ce32328:
    #data 0x02ff
    #data 0x0201
DAT_ce3232c:
    #data 0xffff
    #data 0x02ff
DAT_ce32330:
    #data 0x0201
    #data 0x0201
DAT_ce32334:
    #data 0x02ff
    #data 0x02ff
DAT_ce32338:
    #data 0xffff
    #data 0xffff
DAT_ce3233c:
    #data 0x0201
    #data 0x0200
DAT_ce32340:
    #data 0x02ff
    #data 0x0201
DAT_ce32344:
    #data 0xffff
    #data 0x02ff
DAT_ce32348:
    #data 0x0201
    #data 0x0201
DAT_ce3234c:
    #data 0x02ff
    #data 0x02ff
DAT_ce32350:
    #data 0xffff
    #data 0xffff
    #align4

PTR_ce32354:
    #data DAT_ce3230c
PTR_ce32358:
    #data DAT_ce32310
PTR_ce3235c:
    #data DAT_ce32314
PTR_ce32360:
    #data DAT_ce32318
PTR_ce32364:
    #data DAT_ce3231c
PTR_ce32368:
    #data DAT_ce32320
PTR_ce3236c:
    #data DAT_ce32324
PTR_ce32370:
    #data DAT_ce32328
PTR_ce32374:
    #data DAT_ce3232c
PTR_ce32378:
    #data DAT_ce32330
PTR_ce3237c:
    #data DAT_ce32334
PTR_ce32380:
    #data DAT_ce32338
PTR_ce32384:
    #data DAT_ce3233c
PTR_ce32388:
    #data DAT_ce32340
PTR_ce3238c:
    #data DAT_ce32344
PTR_ce32390:
    #data DAT_ce32348
PTR_ce32394:
    #data DAT_ce3234c
PTR_ce32398:
    #data DAT_ce32350
DAT_ce3239c:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce323ac:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce323bc:
    #data 0x0003
    #data 0x9100
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce323cc:
    #data 0x0003
    #data 0x9100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce323dc:
    #data 0x0003
    #data 0x9100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce323ec:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
    #align4

PTR_ce323fc:
    #data LAB_ce30488
PTR_ce32400:
    #data LAB_ce3001c
PTR_ce32404:
    #data LAB_ce30830
PTR_ce32408:
    #data LAB_ce30ab6
PTR_ce3240c:
    #data LAB_ce30bb4
PTR_ce32410:
    #data LAB_ce30d18
PTR_ce32414:
    #data LAB_ce30e6c
PTR_ce32418:
    #data LAB_ce30ef2
PTR_ce3241c:
    #data LAB_ce30f88
PTR_ce32420:
    #data LAB_ce31f30
PTR_ce32424:
    #data LAB_ce31f88
PTR_ce32428:
    #data LAB_ce3203c
PTR_ce3242c:
    #data LAB_ce3221a
PTR_ce32430:
    #data LAB_ce3035e
PTR_ce32434:
    #data LAB_ce31dcc
PTR_ce32438:
    #data LAB_ce30aec
PTR_ce3243c:
    #data LAB_ce3223c
PTR_ce32440:
    #data LAB_ce32256
PTR_ce32444:
    #data LAB_ce32270
PTR_ce32448:
    #data LAB_ce3229e
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
DAT_ce3246c:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x03
    #data 0x04
    #data 0x05
    #data 0x06
    #data 0x07
    #data 0x08
DAT_ce32475:
    #data 0x09
    #data 0x0a
    #data 0x0b
DAT_ce32478:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce3247b:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce32484:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce32487:
    #data 0x07
    #data 0x07
    #data 0x07
    #data 0x08
    #data 0x08
    #data 0x08
    #data 0x09
    #data 0x09
    #data 0x09
DAT_ce32490:
    #data 0x0a
    #data 0x0a
    #data 0x0a
DAT_ce32493:
    #data 0x00
    #data 0x01
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce32499:
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce3249c:
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce3249f:
    #data 0x0c
    #data 0x0d
    #data 0x0e
DAT_ce324a2:
    #data 0x0f
    #data 0x10
    #data 0x11
DAT_ce324a5:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce324a8:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce324ab:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce324ae:
    #data 0x0b
    #data 0x0b
    #data 0x0b
DAT_ce324b1:
    #data 0x0c
    #data 0x0c
    #data 0x0c
PTR_ce324b4:
    #data LAB_ce30524
PTR_ce324b8:
    #data LAB_ce3080c
PTR_ce324bc:
    #data LAB_ce3067c
PTR_ce324c0:
    #data LAB_ce30524
PTR_ce324c4:
    #data LAB_ce308cc
PTR_ce324c8:
    #data LAB_ce30932
PTR_ce324cc:
    #data LAB_ce3098a
PTR_ce324d0:
    #data LAB_ce309e4
PTR_ce324d4:
    #data LAB_ce30844
PTR_ce324d8:
    #data LAB_ce30990
PTR_ce324dc:
    #data FUN_ce30aa6
PTR_ce324e0:
    #data LAB_ce30bf4
PTR_ce324e4:
    #data LAB_ce30c20
PTR_ce324e8:
    #data LAB_ce30cbe
PTR_ce324ec:
    #data LAB_ce30d54
PTR_ce324f0:
    #data LAB_ce30d88
PTR_ce324f4:
    #data LAB_ce30e12
PTR_ce324f8:
    #data LAB_ce30f1e
PTR_ce324fc:
    #data LAB_ce30f6e
PTR_ce32500:
    #data LAB_ce30f1e
PTR_ce32504:
    #data LAB_ce30f6e
PTR_ce32508:
    #data LAB_ce30f6e
PTR_ce3250c:
    #data LAB_ce30f9c
PTR_ce32510:
    #data LAB_ce3117e
PTR_ce32514:
    #data LAB_ce31264
PTR_ce32518:
    #data LAB_ce314c4
PTR_ce3251c:
    #data LAB_ce31702
PTR_ce32520:
    #data LAB_ce31702
PTR_ce32524:
    #data LAB_ce31984
PTR_ce32528:
    #data LAB_ce31702
PTR_ce3252c:
    #data LAB_ce31ba6
PTR_ce32530:
    #data LAB_ce31c38
PTR_ce32534:
    #data LAB_ce31cbe
PTR_ce32538:
    #data LAB_ce30fe0
PTR_ce3253c:
    #data LAB_ce3108e
PTR_ce32540:
    #data LAB_ce3115c
DAT_ce32544:
    #data 0x5555
    #data 0xc185
DAT_ce32548:
    #data 0x0000
    #data 0x3ef0
    #data 0x5555
    #data 0xc199
    #data 0x0000
    #data 0x3ef0
    #data 0x5555
    #data 0xc1ad
    #data 0x0000
    #data 0x3ef0
DAT_ce3255c:
    #data 0x0030
    #data 0x0031
    #data 0x0032
    #data 0x0000
    #align4

PTR_ce32564:
    #data LAB_ce312c0
PTR_ce32568:
    #data LAB_ce31352
PTR_ce3256c:
    #data LAB_ce31404
PTR_ce32570:
    #data LAB_ce3143a
PTR_ce32574:
    #data LAB_ce3150c
PTR_ce32578:
    #data LAB_ce315a6
PTR_ce3257c:
    #data LAB_ce31664
PTR_ce32580:
    #data LAB_ce31686
PTR_ce32584:
    #data LAB_ce31744
PTR_ce32588:
    #data LAB_ce317d6
PTR_ce3258c:
    #data LAB_ce31888
PTR_ce32590:
    #data LAB_ce318f2
PTR_ce32594:
    #data LAB_ce319cc
PTR_ce32598:
    #data LAB_ce31a5e
PTR_ce3259c:
    #data LAB_ce31b10
PTR_ce325a0:
    #data LAB_ce31b4a
PTR_ce325a4:
    #data LAB_ce31cd0
PTR_ce325a8:
    #data LAB_ce31d3e
PTR_ce325ac:
    #data LAB_ce31dac
PTR_ce325b0:
    #data LAB_ce31dde
PTR_ce325b4:
    #data LAB_ce31e64
PTR_ce325b8:
    #data FUN_ce31ed2
DAT_ce325bc:
    #data 0x04
    #data 0x02
    #data 0x03
DAT_ce325bf:
    #data 0x04
    #data 0x02
    #data 0x03
DAT_ce325c2:
    #data 0x01
DAT_ce325c3:
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x09
    #data 0x01
DAT_ce325c8:
    #data 0x01
DAT_ce325c9:
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x09
    #data 0x01
