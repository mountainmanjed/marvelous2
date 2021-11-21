;╔═══════════════════════════════════════════╗
;║ S_PL39 : Bonerine (James Howlett) Program ║
;╚═══════════════════════════════════════════╝
    
#symbol loc_8c054508 0x8C054508
#symbol loc_8c054b34 0x8C054B34
#symbol loc_8c05496c 0x8C05496C
#symbol loc_8c054d04 0x8C054D04
#symbol loc_8c053e00 0x8C053E00
#symbol loc_8c0542e0 0x8C0542E0
#symbol loc_8c054e58 0x8C054E58
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c0530d8 0x8C0530D8
#symbol loc_8c055cf6 0x8C055CF6
#symbol loc_8c0559da 0x8C0559DA
#symbol loc_8c054d1c 0x8C054D1C
#symbol loc_8c054da0 0x8C054DA0
#symbol loc_8c052b4c 0x8C052B4C
#symbol loc_8c2896b0 0x8C2896B0
#symbol loc_8c042008 0x8C042008
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c0511e2 0x8C0511E2
#symbol loc_8c052c84 0x8C052C84
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c05211c 0x8C05211C
#symbol loc_8c05225e 0x8C05225E
#symbol loc_8c051648 0x8C051648
#symbol loc_8c0c04d0 0x8C0C04D0
#symbol loc_8c050084 0x8C050084
#symbol loc_8c04ff88 0x8C04FF88
#symbol loc_8c04fea8 0x8C04FEA8
#symbol loc_8c050048 0x8C050048
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c052ce2 0x8C052CE2
#symbol loc_8c052dac 0x8C052DAC
#symbol loc_8c0511b4 0x8C0511B4
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c05115a 0x8C05115A
#symbol loc_8c053082 0x8C053082
#symbol loc_8c0ee1e0 0x8C0EE1E0
#symbol loc_8c11e2e0 0x8C11E2E0
#symbol loc_8c11e860 0x8C11E860
#symbol loc_8c06a2ec 0x8C06A2EC
#symbol loc_8c050834 0x8C050834
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c1294c8 0x8C1294C8
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c06a51c 0x8C06A51C
#symbol loc_8c034f54 0x8C034F54
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c06a714 0x8C06A714
#symbol loc_8c035162 0x8C035162
#symbol loc_8c0f047c 0x8C0F047C
#symbol loc_8c050ea4 0x8C050EA4
#symbol loc_8c051854 0x8C051854
#symbol loc_8c045790 0x8C045790
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c050552 0x8C050552
#symbol loc_8c05064e 0x8C05064E
#symbol loc_8c050682 0x8C050682
#symbol loc_8c050610 0x8C050610
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c04ce54 0x8C04CE54
#symbol loc_8c103660 0x8C103660
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c0fdab6 0x8C0FDAB6
#symbol loc_8c0423fc 0x8C0423FC

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300f4,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300fc,pc),r7
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
    mov.l @(PTR_ce30100,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a6
    mov.l @(PTR_ce30104,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a6
    mov.l @(PTR_ce30108,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a6
    mov.l @(PTR_ce3010c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a6
    bsr FUN_ce3028c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a6
    bsr FUN_ce302dc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a6
    bsr FUN_ce300ac
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a6
    bsr FUN_ce30216
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a6
    bsr FUN_ce30128
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a6
    bsr FUN_ce3036a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a6
    bsr FUN_ce3032c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300a6
    mov.l @(PTR_ce30110,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30114,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce300ac:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30118,pc),r5
    mov.w @(DAT_ce300f6,pc),r6
    mov.l @(PTR_ce3011c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce300ca:
    mov.w @(DAT_ce300f6,pc),r5
    mov.l @(PTR_ce30120,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce300f8,pc),r0
    mov.l @(PTR_ce30124,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300f4:
    #data 0x0428
DAT_ce300f6:
    #data 0x036c
DAT_ce300f8:
    #data 0x01e9
    #align4

PTR_ce300fc:
    #data PTR_ce352cc
PTR_ce30100:
    #data loc_8c054508
PTR_ce30104:
    #data loc_8c054b34
PTR_ce30108:
    #data loc_8c05496c
PTR_ce3010c:
    #data loc_8c054d04
PTR_ce30110:
    #data loc_8c053e00
PTR_ce30114:
    #data loc_8c0542e0
PTR_ce30118:
    #data DAT_ce35184
PTR_ce3011c:
    #data loc_8c054e58
PTR_ce30120:
    #data loc_8c055c3a
PTR_ce30124:
    #data loc_8c0530d8

;=============================================

FUN_ce30128:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.w @(DAT_ce30234,pc),r4
    add r14,r4
    mov.b @r4,r3
    tst r3,r3
    bf LAB_ce301e4
    mov.w @(DAT_ce30236,pc),r5
    mov 0x01,r7
    mov.l @(PTR_ce3024c,pc),r3
    mov r15,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301e4
    mov.l @(PTR_ce30250,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301e4
    mov.w @(DAT_ce30238,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30182
    mov.w @(DAT_ce3023a,pc),r0
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce3023c,pc),r0
    mov.w r3,@r15
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30188
    mov.w @r15,r3
    mov.w @(DAT_ce3023e,pc),r4
    extu.w r3,r3
    tst r4,r3
    bt LAB_ce30188
    mov.w @r15,r1
    xor r4,r1
    bra LAB_ce30188
    mov.w r1,@r15

LAB_ce30182:
    mov.w @(DAT_ce30240,pc),r0
    mov.w @(r0,r14),r2
    mov.w r2,@r15

LAB_ce30188:
    mov.w @r15,r3
    mov 0xF6,r1
    mov.w @(DAT_ce30242,pc),r2
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.w r3,@r15
    extu.w r3,r3
    tst r3,r3
    bf LAB_ce301a8
    mov.w @(DAT_ce3023c,pc),r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    neg r3,r3
    add 0x02,r3
    mov.w r3,@r15

LAB_ce301a8:
    mov.w @(DAT_ce30244,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce301b8
    mov.w @r15,r2
    add 0x10,r2
    mov.w r2,@r15

LAB_ce301b8:
    mov.w @r15,r4
    mov.l @(PTR_ce30254,pc),r0
    extu.w r4,r4
    mov.b @(r0,r4),r4
    extu.b r4,r4
    tst r4,r4
    bt LAB_ce301e4
    mov.w @(DAT_ce30244,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce301e8
    mov 0x01,r13
    mov.w @(DAT_ce3023c,pc),r0
    mov r13,r1
    mov.w @r15,r2
    mov.b @(r0,r14),r3
    extu.w r2,r2
    extu.b r3,r3
    shad r3,r1
    tst r1,r2
    bt LAB_ce301e8

LAB_ce301e4:
    bra LAB_ce3020c
    mov 0x00,r0

LAB_ce301e8:
    mov.w @(DAT_ce30246,pc),r2
    mov 0x22,r0
    mov.l @(PTR_ce30258,pc),r3
    mov 0x15,r5
    add r2,r4
    mov.b r4,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30248,pc),r0
    mov.b r13,@(r0,r14)
    add 0x46,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop

LAB_ce3020c:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30216:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3025c,pc),r5
    mov.w @(DAT_ce3024a,pc),r6
    mov.l @(PTR_ce30260,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30264
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30234:
    #data 0x02a4
DAT_ce30236:
    #data 0x0140
DAT_ce30238:
    #data 0x0525
DAT_ce3023a:
    #data 0x01fa
DAT_ce3023c:
    #data 0x01d2
DAT_ce3023e:
    #data 0x0c00
DAT_ce30240:
    #data 0x0340
DAT_ce30242:
    #data 0x3c00
DAT_ce30244:
    #data 0x01f9
DAT_ce30246:
    #data 0x00ff
DAT_ce30248:
    #data 0x01a3
DAT_ce3024a:
    #data 0x037c
    #align4

PTR_ce3024c:
    #data loc_8c055cf6
PTR_ce30250:
    #data loc_8c0559da
PTR_ce30254:
    #data DAT_ce35254
PTR_ce30258:
    #data loc_8c0530d8
PTR_ce3025c:
    #data DAT_ce35194
PTR_ce30260:
    #data loc_8c054e58

;=============================================

LAB_ce30264:
    mov.w @(DAT_ce30384,pc),r5
    mov.l @(PTR_ce30390,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30386,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30394,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3028c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30398,pc),r5
    mov.w @(DAT_ce30388,pc),r6
    mov.l @(PTR_ce3039c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302ac
    mov.w @(DAT_ce3038a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302b4

LAB_ce302ac:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302b4:
    mov.w @(DAT_ce30388,pc),r5
    mov.l @(PTR_ce30390,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30386,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30394,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302dc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce303a0,pc),r5
    mov.w @(DAT_ce3038c,pc),r6
    mov.l @(PTR_ce3039c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302fc
    mov.w @(DAT_ce3038a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30304

LAB_ce302fc:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30304:
    mov.w @(DAT_ce3038c,pc),r5
    mov.l @(PTR_ce30390,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30386,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30394,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3032c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce303a4,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30344
    mov.w @(DAT_ce3038a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3034c

LAB_ce30344:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3034c:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30386,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30394,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3036a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce303a8,pc),r3
    jsr @r3
    mov 0x09,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303ac
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30384:
    #data 0x037c
DAT_ce30386:
    #data 0x01e9
DAT_ce30388:
    #data 0x038c
DAT_ce3038a:
    #data 0x040c
DAT_ce3038c:
    #data 0x0394
    #align4

PTR_ce30390:
    #data loc_8c055c3a
PTR_ce30394:
    #data loc_8c0530d8
PTR_ce30398:
    #data DAT_ce351b4
PTR_ce3039c:
    #data loc_8c054e58
PTR_ce303a0:
    #data DAT_ce351c4
PTR_ce303a4:
    #data loc_8c054d1c
PTR_ce303a8:
    #data loc_8c054da0

;=============================================

LAB_ce303ac:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x09,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304b4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303ca:
    sts.l PR,@-r15
    add 0xFC,r15
    bsr FUN_ce303f0
    mov.l r4,@r15
    tst r0,r0
    bf LAB_ce303de
    bsr FUN_ce30426
    mov.l @r15,r4
    tst r0,r0
    bt LAB_ce303e6

LAB_ce303de:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce303e6:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce303f0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304b8,pc),r5
    mov.w @(DAT_ce304a2,pc),r6
    mov.l @(PTR_ce304bc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30410
    mov.w @(DAT_ce304a4,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30418

LAB_ce30410:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30418:
    mov.w @(DAT_ce304a6,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30426:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304c0,pc),r5
    mov.w @(DAT_ce304a8,pc),r6
    mov.l @(PTR_ce304bc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30446
    mov.w @(DAT_ce304a4,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3044e

LAB_ce30446:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3044e:
    mov.w @(DAT_ce304a6,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3045c:
    mov.w @(DAT_ce304ac,pc),r0
    mov.w @(DAT_ce304aa,pc),r5
    mov.b @(r0,r4),r3
    add r4,r5
    tst r3,r3
    bt/s LAB_ce30472
    mov 0x00,r6
    mov.w @(DAT_ce304ae,pc),r0
    mov 0x18,r3
    bra LAB_ce30476
    mov.b r3,@(r0,r4)

LAB_ce30472:
    mov.w @(DAT_ce304ae,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce30476:
    mov.b @r5,r3
    tst r3,r3
    bt LAB_ce30488
    mov.w @(DAT_ce304b0,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30488
    mov.b r6,@r5

LAB_ce30488:
    rts
    nop

LAB_ce3048c:
    mov.w @(DAT_ce304b2,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce304c4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce304a0:
    #data 0x01e9
DAT_ce304a2:
    #data 0x038c
DAT_ce304a4:
    #data 0x040c
DAT_ce304a6:
    #data 0x0258
DAT_ce304a8:
    #data 0x0394
DAT_ce304aa:
    #data 0x02a4
DAT_ce304ac:
    #data 0x0200
DAT_ce304ae:
    #data 0x0205
DAT_ce304b0:
    #data 0x01f9
DAT_ce304b2:
    #data 0x01ff
    #align4

PTR_ce304b4:
    #data loc_8c0530d8
PTR_ce304b8:
    #data DAT_ce351b4
PTR_ce304bc:
    #data loc_8c054e58
PTR_ce304c0:
    #data DAT_ce351c4
PTR_ce304c4:
    #data PTR_ce3533c

;=============================================

LAB_ce304c8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce305b0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce305a4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce304f2
    mov.w @(DAT_ce305a6,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce304ea
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3050a
    mov.l @r15+,r14

LAB_ce304ea:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce305cc
    mov.l @r15+,r14

LAB_ce304f2:
    mov.w @(DAT_ce305a6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30502
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce306c4
    mov.l @r15+,r14

LAB_ce30502:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30784
    mov.l @r15+,r14

LAB_ce3050a:
    mov.w @(DAT_ce305a8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3052c
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce3053e
    cmp/eq 0x02,r0
    bt LAB_ce30556
    bra LAB_ce30568
    nop

LAB_ce3052c:
    mov.l @(PTR_ce305b4,pc),r3
    mov r4,r5
    mov.w @(DAT_ce305aa,pc),r0
    mov 0x1E,r12
    mov r4,r13
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce305ac,pc),r0
    bra LAB_ce30568
    mov.b r13,@(r0,r14)

LAB_ce3053e:
    mov 0x20,r0
    mov.l @(PTR_ce305b8,pc),r3
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.w @(DAT_ce305aa,pc),r0
    mov r6,r13
    mov 0x1F,r12
    mov r6,r5
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce305ac,pc),r0
    bra LAB_ce30568
    mov.b r13,@(r0,r14)

LAB_ce30556:
    mov.l @(PTR_ce305bc,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce305aa,pc),r0
    mov r6,r13
    mov r6,r5
    mov 0x20,r12
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce305ac,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce30568:
    mov.w @(DAT_ce305ae,pc),r0
    mov.l @(PTR_ce305c0,pc),r3
    mov.b r5,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r12,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce305c4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce305c8,pc),r3
    mov r14,r4
    mov 0x07,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305a4:
    #data 0x01fe
DAT_ce305a6:
    #data 0x01f9
DAT_ce305a8:
    #data 0x01e8
DAT_ce305aa:
    #data 0x03f4
DAT_ce305ac:
    #data 0x01a7
DAT_ce305ae:
    #data 0x01a1
    #align4

PTR_ce305b0:
    #data loc_8c052b4c
PTR_ce305b4:
    #data DAT_ce351f4
PTR_ce305b8:
    #data DAT_ce351f8
PTR_ce305bc:
    #data DAT_ce351fc
PTR_ce305c0:
    #data loc_8c2896b0
PTR_ce305c4:
    #data loc_8c042008
PTR_ce305c8:
    #data loc_8c034e8c

;=============================================

LAB_ce305cc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r4
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov r4,r0
    nop
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce306e6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce305f6
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce30608
    cmp/eq 0x02,r0
    bt LAB_ce3061a
    bra LAB_ce30678
    nop

LAB_ce305f6:
    mov.l @(PTR_ce306f4,pc),r3
    mov 0x06,r5
    mov.w @(DAT_ce306e8,pc),r0
    mov 0x1E,r12
    mov r4,r13
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306ea,pc),r0
    bra LAB_ce30678
    mov.b r13,@(r0,r14)

LAB_ce30608:
    mov.l @(PTR_ce306f8,pc),r2
    mov 0x07,r5
    mov.w @(DAT_ce306e8,pc),r0
    mov 0x1F,r12
    mov r6,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce306ea,pc),r0
    bra LAB_ce30678
    mov.b r13,@(r0,r14)

LAB_ce3061a:
    mov.w @(DAT_ce306e8,pc),r0
    mov 0x02,r7
    mov.l @(PTR_ce306fc,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce306ea,pc),r0
    mov.w @(DAT_ce306ec,pc),r2
    mov.b r7,@(r0,r14)
    add 0x53,r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce30650
    fldi0 fr4
    mov r6,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov 0x05,r13
    mov 0x12,r5
    bra LAB_ce30678
    fmov fr4,@(r0,r14)

LAB_ce30650:
    mov r7,r13
    mov 0x08,r5
    mov r4,r0
    nop
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce30700,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce306ee,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce30678
    mov 0x20,r12
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30678:
    mov.w @(DAT_ce306f0,pc),r0
    mov r13,r6
    mov.l @(PTR_ce30704,pc),r3
    mov.b r5,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x09,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30708,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce306ba
    lds.l @r15+,PR
    mov r12,r5
    mov.l @(PTR_ce3070c,pc),r3
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce306ba:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce306c4:
    mov.w @(DAT_ce306e6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30710
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce30722
    cmp/eq 0x02,r0
    bt LAB_ce30736
    bra LAB_ce30748
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306e6:
    #data 0x01e8
DAT_ce306e8:
    #data 0x03f4
DAT_ce306ea:
    #data 0x01a7
DAT_ce306ec:
    #data 0x0800
DAT_ce306ee:
    #data 0x01d2
DAT_ce306f0:
    #data 0x01a1
    #align4

PTR_ce306f4:
    #data DAT_ce351f4
PTR_ce306f8:
    #data DAT_ce351f8
PTR_ce306fc:
    #data DAT_ce351fc
DAT_ce30700:
    #data 0xc0a00000
PTR_ce30704:
    #data loc_8c2896b0
PTR_ce30708:
    #data loc_8c034e8c
PTR_ce3070c:
    #data loc_8c042008

;=============================================

LAB_ce30710:
    mov.l @(PTR_ce30824,pc),r3
    mov 0x03,r4
    mov.w @(DAT_ce3081a,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3081c,pc),r0
    bra LAB_ce30748
    mov.b r12,@(r0,r14)

LAB_ce30722:
    mov.w @(DAT_ce3081a,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30828,pc),r2
    mov 0x04,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3081c,pc),r0
    bra LAB_ce30748
    mov.b r12,@(r0,r14)

LAB_ce30736:
    mov.l @(PTR_ce3082c,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce3081a,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x05,r4
    mov.w @(DAT_ce3081c,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce30748:
    mov.w @(DAT_ce3081e,pc),r0
    mov.l @(PTR_ce30830,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l r5,@(r0,r14)
    mov r13,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30834,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce30838,pc),r3
    mov 0x08,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30784:
    mov.w @(DAT_ce30820,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307a6
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce307b8
    cmp/eq 0x02,r0
    bt LAB_ce307cc
    bra LAB_ce307de
    nop

LAB_ce307a6:
    mov.l @(PTR_ce30824,pc),r3
    mov 0x09,r4
    mov.w @(DAT_ce3081a,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3081c,pc),r0
    bra LAB_ce307de
    mov.b r12,@(r0,r14)

LAB_ce307b8:
    mov.w @(DAT_ce3081a,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30828,pc),r2
    mov 0x0A,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3081c,pc),r0
    bra LAB_ce307de
    mov.b r12,@(r0,r14)

LAB_ce307cc:
    mov.l @(PTR_ce3082c,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce3081a,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x0B,r4
    mov.w @(DAT_ce3081c,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce307de:
    mov.w @(DAT_ce3081e,pc),r0
    mov.l @(PTR_ce30830,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l r5,@(r0,r14)
    mov r13,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30834,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce30838,pc),r3
    mov 0x0A,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3081a:
    #data 0x03f4
DAT_ce3081c:
    #data 0x01a7
DAT_ce3081e:
    #data 0x01a1
DAT_ce30820:
    #data 0x01e8
    #align4

PTR_ce30824:
    #data DAT_ce35200
PTR_ce30828:
    #data DAT_ce35204
PTR_ce3082c:
    #data DAT_ce35208
PTR_ce30830:
    #data loc_8c2896b0
PTR_ce30834:
    #data loc_8c04223a
PTR_ce30838:
    #data loc_8c034e8c

;=============================================

LAB_ce3083c:
    mov.w @(DAT_ce30918,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3084c
    mov.w @(DAT_ce3091a,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce3085c

LAB_ce3084c:
    mov.w @(DAT_ce30918,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30860
    mov.w @(DAT_ce3091a,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30860

LAB_ce3085c:
    bra LAB_ce30864
    nop

LAB_ce30860:
    rts
    nop

LAB_ce30864:
    mov.w @(DAT_ce30918,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30870
    bra LAB_ce3093c
    nop

LAB_ce30870:
    mov.w @(DAT_ce3091c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30892
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce308a4
    cmp/eq 0x02,r0
    bt LAB_ce308b8
    bra LAB_ce308ca
    nop

LAB_ce30892:
    mov.l @(PTR_ce30924,pc),r3
    mov 0x0C,r4
    mov.w @(DAT_ce3091e,pc),r0
    mov 0x1E,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30920,pc),r0
    bra LAB_ce308ca
    mov.b r12,@(r0,r14)

LAB_ce308a4:
    mov.w @(DAT_ce3091e,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30928,pc),r2
    mov 0x0D,r4
    mov r6,r12
    mov 0x1F,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30920,pc),r0
    bra LAB_ce308ca
    mov.b r12,@(r0,r14)

LAB_ce308b8:
    mov.l @(PTR_ce3092c,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce3091e,pc),r0
    mov r6,r12
    mov 0x20,r13
    mov.l r2,@(r0,r14)
    mov 0x0E,r4
    mov.w @(DAT_ce30920,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce308ca:
    mov.w @(DAT_ce30922,pc),r0
    mov.l @(PTR_ce30930,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l r5,@(r0,r14)
    mov r13,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30934,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30938,pc),r3
    mov 0x0B,r5
    mov r12,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3091a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce3090e
    mov.w @(DAT_ce3091a,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce3090e:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30918:
    #data 0x01fe
DAT_ce3091a:
    #data 0x01d6
DAT_ce3091c:
    #data 0x01e8
DAT_ce3091e:
    #data 0x03f4
DAT_ce30920:
    #data 0x01a7
DAT_ce30922:
    #data 0x01a1
    #align4

PTR_ce30924:
    #data DAT_ce351f4
PTR_ce30928:
    #data DAT_ce351f8
PTR_ce3092c:
    #data DAT_ce351fc
PTR_ce30930:
    #data loc_8c2896b0
PTR_ce30934:
    #data loc_8c042008
PTR_ce30938:
    #data loc_8c034e8c

;=============================================

LAB_ce3093c:
    mov.w @(DAT_ce30a4e,pc),r0
    mov 0x01,r6
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30960
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce30972
    cmp/eq 0x02,r0
    bt LAB_ce30984
    bra LAB_ce309ec
    nop

LAB_ce30960:
    mov.l @(PTR_ce30a60,pc),r3
    mov 0x0F,r5
    mov.w @(DAT_ce30a50,pc),r0
    mov 0x14,r12
    mov r4,r13
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30a52,pc),r0
    bra LAB_ce309ec
    mov.b r13,@(r0,r14)

LAB_ce30972:
    mov.l @(PTR_ce30a64,pc),r2
    mov 0x10,r5
    mov.w @(DAT_ce30a50,pc),r0
    mov 0x15,r12
    mov r6,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a52,pc),r0
    bra LAB_ce309ec
    mov.b r13,@(r0,r14)

LAB_ce30984:
    mov.w @(DAT_ce30a54,pc),r0
    mov.w @(DAT_ce30a56,pc),r3
    mov.w @(r0,r14),r2
    mov.l @(PTR_ce30a68,pc),r7
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce309d6
    mov.w @(DAT_ce30a58,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce30a6c,pc),r0
    fsub fr3,fr2
    fmov.s @r0,fr3
    fcmp/gt fr3,fr2
    bf LAB_ce309d6
    mov 0x16,r12
    mov 0x05,r13
    mov 0x13,r5
    mov r6,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x0F,r2
    mov.w @(DAT_ce30a5a,pc),r0
    fldi0 fr4
    mov.b @(r0,r14),r1
    and r2,r1
    mov.b r1,@(r0,r14)
    add 0x26,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30a50,pc),r0
    mov.l r7,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    bra LAB_ce309ec
    fmov fr4,@(r0,r14)

LAB_ce309d6:
    mov 0x02,r6
    mov 0x16,r12
    mov r6,r13
    mov 0x11,r5
    mov r4,r0
    nop
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30a50,pc),r0
    mov.l r7,@(r0,r14)
    mov.w @(DAT_ce30a52,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce309ec:
    mov.w @(DAT_ce30a5c,pc),r0
    mov.l @(PTR_ce30a70,pc),r3
    mov.b r5,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r12,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30a74,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30a78,pc),r3
    mov 0x0C,r5
    mov r13,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a5a,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30a30
    mov.w @(DAT_ce30a5a,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30a30:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30a3a:
    mov.w @(DAT_ce30a5e,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30a7c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a4e:
    #data 0x01e8
DAT_ce30a50:
    #data 0x03f4
DAT_ce30a52:
    #data 0x01a7
DAT_ce30a54:
    #data 0x01fa
DAT_ce30a56:
    #data 0x1000
DAT_ce30a58:
    #data 0x041c
DAT_ce30a5a:
    #data 0x01d6
DAT_ce30a5c:
    #data 0x01a1
DAT_ce30a5e:
    #data 0x01ff
    #align4

PTR_ce30a60:
    #data DAT_ce35200
PTR_ce30a64:
    #data DAT_ce35204
PTR_ce30a68:
    #data DAT_ce35208
DAT_ce30a6c:
    #data 0x43700000
PTR_ce30a70:
    #data loc_8c2896b0
PTR_ce30a74:
    #data loc_8c04223a
PTR_ce30a78:
    #data loc_8c034e8c
PTR_ce30a7c:
    #data PTR_ce3534c

;=============================================

LAB_ce30a80:
    sts.l PR,@-r15
    mov.l @(PTR_ce30b44,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30a8e:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30b48,pc),r3
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
    mov.w @(DAT_ce30b3c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30af2
    mov.w @(DAT_ce30b3e,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce30aea
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30b0a
    mov.l @r15+,r14

LAB_ce30aea:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c3c
    mov.l @r15+,r14

LAB_ce30af2:
    mov.w @(DAT_ce30b3e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30b02
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30de6
    mov.l @r15+,r14

LAB_ce30b02:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30ec0
    mov.l @r15+,r14

LAB_ce30b0a:
    mov.w @(DAT_ce30b40,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b4c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30b2e
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30b50
    cmp/eq 0x02,r0
    bt LAB_ce30c00
    bra LAB_ce30c32
    nop

LAB_ce30b2e:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30c0a
    bra LAB_ce30c32
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b3c:
    #data 0x01fe
DAT_ce30b3e:
    #data 0x01f9
DAT_ce30b40:
    #data 0x01e8
    #align4

PTR_ce30b44:
    #data loc_8c0511e2
PTR_ce30b48:
    #data loc_8c052c84
PTR_ce30b4c:
    #data loc_8c034dee

;=============================================

LAB_ce30b50:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30c0a
    mov.w @(DAT_ce30c5e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30c32
    mov.l @(PTR_ce30c6c,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30c32
    mov.w @(DAT_ce30c60,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30c32
    mov.w @(DAT_ce30c62,pc),r0
    mov.w @(r0,r14),r2
    add 0x04,r0
    mov.w @(r0,r14),r3
    extu.w r2,r2
    extu.w r3,r3
    or r3,r2
    mov.w @(DAT_ce30c64,pc),r3
    tst r3,r2
    bt LAB_ce30c32
    mov.w @(DAT_ce30c66,pc),r0
    mov.l @(PTR_ce30c70,pc),r2
    mov.w r13,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30c74,pc),r3
    mov 0x1F,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30c5e,pc),r0
    mov.l @(PTR_ce30c78,pc),r4
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf/s LAB_ce30bce
    mov 0x07,r5
    mov.w @(DAT_ce30c68,pc),r0
    mov 0x1C,r2
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
    bra LAB_ce30bf2
    mov 0x04,r6

LAB_ce30bce:
    mov.w @(DAT_ce30c68,pc),r0
    mov 0x01,r3
    mov 0x01,r6
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

LAB_ce30bf2:
    lds.l @r15+,PR
    mov.l @(PTR_ce30c7c,pc),r3
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c00:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c18

LAB_ce30c0a:
    lds.l @r15+,PR
    mov.l @(PTR_ce30c80,pc),r2
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30c18:
    mov.w @(DAT_ce30c5e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30c32
    mov.b r13,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30c84,pc),r3
    mov 0x01,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c32:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30c3c:
    mov.w @(DAT_ce30c6a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30c88,pc),r13
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30c8c
    cmp/eq 0x01,r0
    bt LAB_ce30c9a
    cmp/eq 0x02,r0
    bt LAB_ce30cc4
    bra LAB_ce30ddc
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c5e:
    #data 0x0141
DAT_ce30c60:
    #data 0x019e
DAT_ce30c62:
    #data 0x034e
DAT_ce30c64:
    #data 0x0200
DAT_ce30c66:
    #data 0x0352
DAT_ce30c68:
    #data 0x01a1
DAT_ce30c6a:
    #data 0x01e8
    #align4

PTR_ce30c6c:
    #data loc_8c05211c
PTR_ce30c70:
    #data loc_8c05225e
PTR_ce30c74:
    #data loc_8c042008
PTR_ce30c78:
    #data loc_8c2896b0
PTR_ce30c7c:
    #data loc_8c034e8c
PTR_ce30c80:
    #data loc_8c051648
PTR_ce30c84:
    #data loc_8c0c04d0
PTR_ce30c88:
    #data loc_8c034dee

;=============================================

LAB_ce30c8c:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30d2e
    bra LAB_ce30ddc
    nop

LAB_ce30c9a:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30d2e
    mov.w @(DAT_ce30d3c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30cb0
    bra LAB_ce30ddc
    nop

LAB_ce30cb0:
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce30d40,pc),r3
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30cc4:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce30d24
    fldi0 fr15
    mov.w @(DAT_ce30d3c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bf/s LAB_ce30cf2
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

LAB_ce30cf2:
    jsr @r13
    nop
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30d2e
    mov.w @(DAT_ce30d3c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce30ddc
    mov 0x5C,r0
    mov.l @(PTR_ce30d44,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    mov 0x20,r5
    fmov fr15,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30d40,pc),r2
    mov 0x03,r5
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30d24:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d4c

LAB_ce30d2e:
    lds.l @r15+,PR
    mov.l @(PTR_ce30d48,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d3c:
    #data 0x0141
    #align4

PTR_ce30d40:
    #data loc_8c0c04d0
PTR_ce30d44:
    #data loc_8c042008
PTR_ce30d48:
    #data loc_8c051648

;=============================================

LAB_ce30d4c:
    mov.w @(DAT_ce30e28,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce30d8e
    mov.w @(DAT_ce30e28,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce30e30,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30e34,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30e2a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce30d88
    mov 0x29,r5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30d88:
    mov.l @(PTR_ce30e38,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30d8e:
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
    mov.w @(DAT_ce30e28,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce30ddc
    mov.w @(DAT_ce30e28,pc),r0
    mov 0x02,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce30e3c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30e2a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30dd4
    mova @(DAT_ce30e40,pc),r0
    fmov.s @r0,fr4

LAB_ce30dd4:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce30ddc:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30de6:
    mov.w @(DAT_ce30e2c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30e02
    cmp/eq 0x02,r0
    bt LAB_ce30e02
    cmp/eq 0x01,r0
    bt LAB_ce30e12
    bra LAB_ce30eba
    nop

LAB_ce30e02:
    mov.l @(PTR_ce30e44,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30e1e
    bra LAB_ce30eba
    nop

LAB_ce30e12:
    mov.l @(PTR_ce30e44,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e4c

LAB_ce30e1e:
    lds.l @r15+,PR
    mov.l @(PTR_ce30e48,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e28:
    #data 0x0141
DAT_ce30e2a:
    #data 0x01d2
DAT_ce30e2c:
    #data 0x01e8
    #align4

DAT_ce30e30:
    #data 0xc0fd5555
DAT_ce30e34:
    #data 0x3e200000
PTR_ce30e38:
    #data loc_8c04223a
DAT_ce30e3c:
    #data 0xc2555555
DAT_ce30e40:
    #data 0x42555555
PTR_ce30e44:
    #data loc_8c034dee
PTR_ce30e48:
    #data loc_8c051648

;=============================================

LAB_ce30e4c:
    mov.w @(DAT_ce30f2a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30eba
    mov.l @(PTR_ce30f38,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30eba
    mov.w @(DAT_ce30f2e,pc),r3
    mov.w @(DAT_ce30f2c,pc),r0
    add r14,r3
    mov.w @r3,r3
    mov.w @(r0,r14),r0
    extu.w r3,r3
    extu.w r0,r0
    or r3,r0
    tst 0x40,r0
    bt LAB_ce30eba
    mov.w @(DAT_ce30f2e,pc),r0
    mov 0x00,r4
    mov 0x1B,r3
    mov.w r4,@(r0,r14)
    mov.w @(DAT_ce30f30,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30f3c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30f40,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30f44,pc),r3
    mov 0x15,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30f48,pc),r2
    mov r14,r4
    mov 0x04,r6
    mov 0x08,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce30eba:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30ec0:
    mov.w @(DAT_ce30f32,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30edc
    cmp/eq 0x01,r0
    bt LAB_ce30edc
    cmp/eq 0x02,r0
    bt LAB_ce30eec
    bra LAB_ce30f24
    nop

LAB_ce30edc:
    mov.l @(PTR_ce30f4c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30ef8
    bra LAB_ce30f24
    nop

LAB_ce30eec:
    mov.l @(PTR_ce30f4c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f02

LAB_ce30ef8:
    lds.l @r15+,PR
    mov.l @(PTR_ce30f50,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f02:
    mov.w @(DAT_ce30f34,pc),r0
    mov.b @(r0,r14),r3
    mova @(DAT_ce30f54,pc),r0
    fmov.s @r0,fr2
    lds r3,FPUL
    mov.w @(DAT_ce30f36,pc),r0
    float FPUL,fr3
    mov.b @(r0,r14),r3
    tst r3,r3
    fmov fr3,fr4
    bf/s LAB_ce30f1c
    fmul fr2,fr4
    fneg fr4

LAB_ce30f1c:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce30f24:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f2a:
    #data 0x0141
DAT_ce30f2c:
    #data 0x034e
DAT_ce30f2e:
    #data 0x0352
DAT_ce30f30:
    #data 0x01a1
DAT_ce30f32:
    #data 0x01e8
DAT_ce30f34:
    #data 0x0140
DAT_ce30f36:
    #data 0x01d2
    #align4

PTR_ce30f38:
    #data loc_8c05211c
PTR_ce30f3c:
    #data loc_8c2896b0
PTR_ce30f40:
    #data loc_8c05225e
PTR_ce30f44:
    #data loc_8c04223a
PTR_ce30f48:
    #data loc_8c034e8c
PTR_ce30f4c:
    #data loc_8c034dee
PTR_ce30f50:
    #data loc_8c051648
DAT_ce30f54:
    #data 0x3fd55555

;=============================================

LAB_ce30f58:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ff4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30ff8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30f6e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ffc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31000,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30fee,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30f8e
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30f96
    mov.l @r15+,r14

LAB_ce30f8e:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce310ca
    mov.l @r15+,r14

LAB_ce30f96:
    mov.w @(DAT_ce30ff0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30fb6
    mov 0x00,r13
    cmp/eq 0x02,r0
    bt LAB_ce30fb6
    cmp/eq 0x01,r0
    bt LAB_ce30fd8
    bra LAB_ce310aa
    nop

LAB_ce30fb6:
    mov.l @(PTR_ce31004,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30fe4
    mov.w @(DAT_ce30ff2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce310aa
    mov.l @(PTR_ce31008,pc),r3
    mov 0x04,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce310aa
    nop

LAB_ce30fd8:
    mov.l @(PTR_ce31004,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31010

LAB_ce30fe4:
    mov.l @(PTR_ce3100c,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce310aa
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fee:
    #data 0x01fe
DAT_ce30ff0:
    #data 0x01e8
DAT_ce30ff2:
    #data 0x0141
    #align4

PTR_ce30ff4:
    #data loc_8c050084
PTR_ce30ff8:
    #data loc_8c04ff88
PTR_ce30ffc:
    #data loc_8c04fea8
PTR_ce31000:
    #data loc_8c050048
PTR_ce31004:
    #data loc_8c034dee
PTR_ce31008:
    #data loc_8c0c04d0
PTR_ce3100c:
    #data loc_8c05176e

;=============================================

LAB_ce31010:
    mov.w @(DAT_ce31112,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce310aa
    mov.w @(DAT_ce31114,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce310aa
    mov.w @(DAT_ce31116,pc),r0
    mov.w @(r0,r14),r2
    add 0x04,r0
    mov.w @(r0,r14),r3
    extu.w r2,r2
    extu.w r3,r3
    or r3,r2
    mov.w @(DAT_ce31118,pc),r3
    tst r3,r2
    bt LAB_ce310aa
    mov.w @(DAT_ce3111a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce310aa
    mov.w @(DAT_ce3111c,pc),r0
    mov.l @(PTR_ce31124,pc),r3
    mov.w r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31128,pc),r2
    mov 0x1F,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31112,pc),r0
    mov.l @(PTR_ce3112c,pc),r4
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf/s LAB_ce31080
    mov 0x0B,r5
    mov.w @(DAT_ce3111e,pc),r0
    mov 0x1D,r2
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
    bra LAB_ce310a4
    mov 0x04,r6

LAB_ce31080:
    mov.w @(DAT_ce3111e,pc),r0
    mov 0x0D,r3
    mov 0x01,r6
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

LAB_ce310a4:
    mov.l @(PTR_ce31130,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce310aa:
    mov.l @(PTR_ce31134,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce310c2
    lds.l @r15+,PR
    mov.l @(PTR_ce31138,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce310c2:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce310ca:
    mov.w @(DAT_ce31120,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce310e6
    cmp/eq 0x01,r0
    bt LAB_ce310e6
    cmp/eq 0x02,r0
    bt LAB_ce31144
    bra LAB_ce31156
    nop

LAB_ce310e6:
    mov.l @(PTR_ce3113c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310fc
    lds.l @r15+,PR
    mov.l @(PTR_ce31140,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce310fc:
    mov.l @(PTR_ce31134,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce31156
    lds.l @r15+,PR
    mov.l @(PTR_ce31138,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31112:
    #data 0x0141
DAT_ce31114:
    #data 0x019e
DAT_ce31116:
    #data 0x034e
DAT_ce31118:
    #data 0x0200
DAT_ce3111a:
    #data 0x01fc
DAT_ce3111c:
    #data 0x0352
DAT_ce3111e:
    #data 0x01a1
DAT_ce31120:
    #data 0x01e8
    #align4

PTR_ce31124:
    #data loc_8c05225e
PTR_ce31128:
    #data loc_8c042008
PTR_ce3112c:
    #data loc_8c2896b0
PTR_ce31130:
    #data loc_8c034e8c
PTR_ce31134:
    #data loc_8c052ce2
PTR_ce31138:
    #data loc_8c052dac
PTR_ce3113c:
    #data loc_8c034dee
PTR_ce31140:
    #data loc_8c05176e

;=============================================

LAB_ce31144:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31214,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31156:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3115c:
    mov.w @(DAT_ce3120c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31176
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.l @(PTR_ce31218,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31176:
    mov.l @(PTR_ce3121c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3118c
    lds.l @r15+,PR
    mov.l @(PTR_ce31220,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3118c:
    mov.l @(PTR_ce31224,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce311a2
    lds.l @r15+,PR
    mov.l @(PTR_ce31228,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce311a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3121c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3120c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31206
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3120c,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3120e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce311dc
    mova @(DAT_ce3122c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31230,pc),r0
    bra LAB_ce311e8
    fmov.s @r0,fr3

LAB_ce311dc:
    mova @(DAT_ce31234,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31238,pc),r0
    fmov.s @r0,fr3

LAB_ce311e8:
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31210,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce311fe
    fldi0 fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce311fe:
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce31206:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3120c:
    #data 0x0141
DAT_ce3120e:
    #data 0x01fc
DAT_ce31210:
    #data 0x01d2
    #align4

PTR_ce31214:
    #data PTR_ce3535c
PTR_ce31218:
    #data loc_8c04223a
PTR_ce3121c:
    #data loc_8c034dee
PTR_ce31220:
    #data loc_8c05176e
PTR_ce31224:
    #data loc_8c052ce2
PTR_ce31228:
    #data loc_8c052dac
DAT_ce3122c:
    #data 0xc1700000
DAT_ce31230:
    #data 0xc1cdb6db
DAT_ce31234:
    #data 0xc13c9249
DAT_ce31238:
    #data 0xc1ab6db6

;=============================================

LAB_ce3123c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31318,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3130a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce3129a
    fldi0 fr4
    mova @(DAT_ce3131c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31320,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31324,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3130c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3127e
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3127e:
    mov.w @(DAT_ce3130e,pc),r0
    mov 0xFF,r3
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.l @(PTR_ce31328,pc),r3
    mov.b @(r0,r14),r13
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3130c,pc),r0
    mov.b r13,@(r0,r14)
    extu.b r13,r13
    mov.w @(DAT_ce31310,pc),r0
    bra LAB_ce312e0
    mov.w r13,@(r0,r14)

LAB_ce3129a:
    mov.w @(DAT_ce31312,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce312e0
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31312,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31314,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3132c,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31330,pc),r2
    mov 0x03,r6
    mov 0x01,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce312e0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce312e8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31318,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31302
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31334,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31302:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3130a:
    #data 0x019e
DAT_ce3130c:
    #data 0x01d2
DAT_ce3130e:
    #data 0x01d3
DAT_ce31310:
    #data 0x0130
DAT_ce31312:
    #data 0x041c
DAT_ce31314:
    #data 0x01f9
    #align4

PTR_ce31318:
    #data loc_8c034dee
DAT_ce3131c:
    #data 0x40baaaaa
DAT_ce31320:
    #data 0x41700000
DAT_ce31324:
    #data 0xbf892492
PTR_ce31328:
    #data loc_8c05176e
PTR_ce3132c:
    #data loc_8c0511b4
PTR_ce31330:
    #data loc_8c034e8c
PTR_ce31334:
    #data loc_8c051648

;=============================================

LAB_ce31338:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31394
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov 0x14,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31410,pc),r0
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31414,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31418,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3141c,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31420,pc),r2
    mov 0x14,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31424,pc),r3
    mov 0x16,r5
    jsr @r3
    mov r14,r4

LAB_ce31394:
    mov.w @(DAT_ce31412,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce313a4
    mov.l @(PTR_ce31428,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce313a4:
    mov 0x5C,r1
    mov.l @(PTR_ce3142c,pc),r3
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
    mov.l @(PTR_ce31430,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313f8
    lds.l @r15+,PR
    mov.l @(PTR_ce31434,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce313f8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313fe:
    mov r4,r3
    mov.l @(PTR_ce31438,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31410:
    #data 0x01f9
DAT_ce31412:
    #data 0x01ff
    #align4

PTR_ce31414:
    #data loc_8c2896b0
PTR_ce31418:
    #data loc_8c052b4c
PTR_ce3141c:
    #data loc_8c056de4
PTR_ce31420:
    #data loc_8c034e8c
PTR_ce31424:
    #data loc_8c04223a
PTR_ce31428:
    #data loc_8c0511e2
PTR_ce3142c:
    #data loc_8c052c84
PTR_ce31430:
    #data loc_8c034dee
PTR_ce31434:
    #data loc_8c051648
PTR_ce31438:
    #data PTR_ce3536c

;=============================================

LAB_ce3143c:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3156c,pc),r0
    mov.b @(r0,r4),r3
    mov 0x20,r0
    mov.b r3,@(r0,r4)
    mov 0x18,r0
    mov.w r0,@(0x1c,r4)
    mova @(DAT_ce31574,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov 0x20,r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31474
    mova @(DAT_ce31578,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)

LAB_ce31474:
    mov.w @(DAT_ce3156e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31484
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce31484:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3157c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31570,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31512
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce314c4
    mov.w @(DAT_ce3156c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce314c4
    mov 0x20,r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31574,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3156e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce314c4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce314c4:
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
    cmp/pl r0
    bt LAB_ce31512
    lds.l @r15+,PR
    mov.l @(PTR_ce31580,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31512:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31518:
    mov r4,r3
    mov.l @(PTR_ce31584,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3152a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3157c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31570,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce315c8
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce31588,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce3156c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31598
    mova @(DAT_ce3158c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31590,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31594,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    bra LAB_ce315b0
    fmov fr3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3156c:
    #data 0x0200
DAT_ce3156e:
    #data 0x01d2
DAT_ce31570:
    #data 0x0141
    #align4

DAT_ce31574:
    #data 0xc1855555
DAT_ce31578:
    #data 0xc1d55555
PTR_ce3157c:
    #data loc_8c034dee
PTR_ce31580:
    #data loc_8c051648
PTR_ce31584:
    #data PTR_ce35374
DAT_ce31588:
    #data 0xbf4db6db
DAT_ce3158c:
    #data 0x41a00000
DAT_ce31590:
    #data 0x40a00000
DAT_ce31594:
    #data 0xbf092492

;=============================================

LAB_ce31598:
    mova @(DAT_ce316bc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce316c0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce315b0:
    mov.w @(DAT_ce316b2,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce315c8
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce315c8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce315ce:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce316c4,pc),r3
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
    mov.w @(DAT_ce316b4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3163a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce316b4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce316b6,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    bra FUN_ce31640
    mov.l @r15+,r14

LAB_ce3163a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31640:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce316c4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3165a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce316c8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3165a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31662:
    mov r4,r3
    mov.l @(PTR_ce316cc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31674:
    mov.l @(PTR_ce316d0,pc),r2
    mov 0x02,r1
    mov.b @r2,r3
    extu.b r3,r3
    cmp/ge r1,r3
    bt LAB_ce3168c
    mov.w @(DAT_ce316b8,pc),r3
    mov 0x00,r0
    add r4,r3
    mov.b r0,@r3
    bra LAB_ce3169c
    nop

LAB_ce3168c:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce316b8,pc),r0
    mov.b r3,@(r0,r4)
    bra LAB_ce316a0
    nop

LAB_ce3169c:
    rts
    nop

LAB_ce316a0:
    mov r4,r3
    mov.l @(PTR_ce316d4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce316b2:
    #data 0x0130
DAT_ce316b4:
    #data 0x041c
DAT_ce316b6:
    #data 0x01f9
DAT_ce316b8:
    #data 0x012c
    #align4

DAT_ce316bc:
    #data 0x41c80000
DAT_ce316c0:
    #data 0x40d55555
PTR_ce316c4:
    #data loc_8c034dee
PTR_ce316c8:
    #data loc_8c051648
PTR_ce316cc:
    #data PTR_ce35380
PTR_ce316d0:
    #data loc_8c2895f0
PTR_ce316d4:
    #data PTR_ce3538c

;=============================================

LAB_ce316d8:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce317da,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce317dc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce317e0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce317e4,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce317e8,pc),r0
    fmov.s @r0,fr5
    mov.b @(0x2,r14),r0
    tst r0,r0
    bt LAB_ce31714
    mova @(DAT_ce317ec,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce317f0,pc),r0
    fmov.s @r0,fr5

LAB_ce31714:
    mov 0x34,r0
    mov.l @(PTR_ce317f4,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x12,r5
    mov 0x00,r6
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr5,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31736:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce317f8,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce317c0
    mov.l @(PTR_ce317fc,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce317d4
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov 0x5C,r1
    mov.b r0,@(0x7,r14)
    add r14,r1
    mov.l @(PTR_ce317f4,pc),r3
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x02,r6
    mov 0x12,r5
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce317da,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce317c0:
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce317f4,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x12,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce317d4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce317da:
    #data 0x01f9
    #align4

DAT_ce317dc:
    #data 0x41ab6db6
DAT_ce317e0:
    #data 0xbf2b6db6
DAT_ce317e4:
    #data 0xc3555555
DAT_ce317e8:
    #data 0x40555555
DAT_ce317ec:
    #data 0x43555555
DAT_ce317f0:
    #data 0xc0555555
PTR_ce317f4:
    #data loc_8c034e8c
PTR_ce317f8:
    #data loc_8c034dee
PTR_ce317fc:
    #data loc_8c052ce2

;=============================================

LAB_ce31800:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce3192c,pc),r3
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
    mov.l @(PTR_ce31930,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3187e
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov 0x5C,r1
    mov.b r0,@(0x7,r14)
    add r14,r1
    mov.l @(PTR_ce31934,pc),r3
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x02,r6
    mov 0x12,r5
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce31928,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3187e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31884:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3192c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce318a8
    mov.b @(0x5,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce31934,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x5,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce318a8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318ae:
    mov r4,r3
    mov.l @(PTR_ce31938,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce318c0:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce318e8
    cmp/eq 0x02,r0
    bt LAB_ce318e8
    cmp/eq 0x01,r0
    bt LAB_ce318fc
    cmp/eq 0x03,r0
    bt LAB_ce318fc
    cmp/eq 0x04,r0
    bt LAB_ce318fc
    bra LAB_ce31908
    nop

LAB_ce318e8:
    mov.l @(PTR_ce3193c,pc),r3
    mov 0x21,r1
    add r14,r1
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    and 0x01,r0
    mov.b r0,@r1
    mov 0x21,r0
    bra LAB_ce318fe
    mov.b @(r0,r14),r6

LAB_ce318fc:
    mov 0x02,r6

LAB_ce318fe:
    mov.l @(PTR_ce31934,pc),r2
    mov r14,r4
    mov 0x13,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31908:
    rts
    mov.l @r15+,r14

LAB_ce3190c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31940,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31948
    lds.l @r15+,PR
    mov.l @(PTR_ce31944,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31928:
    #data 0x01f9
    #align4

PTR_ce3192c:
    #data loc_8c034dee
PTR_ce31930:
    #data loc_8c052ce2
PTR_ce31934:
    #data loc_8c034e8c
PTR_ce31938:
    #data PTR_ce35398
PTR_ce3193c:
    #data loc_8c26823c
PTR_ce31940:
    #data loc_8c046c8a
PTR_ce31944:
    #data loc_8c051648

;=============================================

LAB_ce31948:
    mov 0x20,r0
    mov.l @(PTR_ce31a10,pc),r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31968
    cmp/eq 0x02,r0
    bt LAB_ce31968
    cmp/eq 0x04,r0
    bt LAB_ce31968
    cmp/eq 0x01,r0
    bt LAB_ce319d6
    cmp/eq 0x03,r0
    bt LAB_ce319d6
    bra LAB_ce319da
    nop

LAB_ce31968:
    mov 0x21,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3199c
    jsr @r13
    mov r14,r4
    mov.w @(DAT_ce31a08,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce319da
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce31a0a,pc),r0
    lds r3,FPUL
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31992
    float FPUL,fr4
    fneg fr4

LAB_ce31992:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    bra LAB_ce319da
    fmov fr3,@(r0,r14)

LAB_ce3199c:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce319c0
    mov.w @(DAT_ce31a08,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce319da
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x06,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce31a14,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce319c0:
    mov 0x20,r0
    mov r14,r4
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x00,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce31a18,pc),r3
    mov r6,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce319d6:
    jsr @r13
    mov r14,r4

LAB_ce319da:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce319e2:
    mov.w @(DAT_ce31a0c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31a1c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce319f6:
    mov r4,r3
    mov.l @(PTR_ce31a20,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a08:
    #data 0x0141
DAT_ce31a0a:
    #data 0x01d2
DAT_ce31a0c:
    #data 0x01e9
    #align4

PTR_ce31a10:
    #data loc_8c034dee
PTR_ce31a14:
    #data loc_8c0c04d0
PTR_ce31a18:
    #data loc_8c034e8c
PTR_ce31a1c:
    #data PTR_ce353a0
PTR_ce31a20:
    #data PTR_ce353d4

;=============================================

LAB_ce31a24:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r3
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31b66,pc),r0
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    add 0x18,r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31b68,pc),r0
    mov.l @(PTR_ce31b74,pc),r3
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    add 0x03,r0
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31b78,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31b6a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31a84
    mov.w @(DAT_ce31b6a,pc),r0
    mov.l @(PTR_ce31b7c,pc),r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31b6c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31b6e,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce31a84:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x00,r6
    mov.w @(DAT_ce31b68,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    extu.b r3,r3
    shll r3
    add 0x4C,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31b80,pc),r3
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
    mov.l @(PTR_ce31b84,pc),r2
    mov r14,r4
    mov 0x15,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31ad2:
    mov r4,r3
    mov.l @(PTR_ce31b88,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31ae4:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31b8c,pc),r3
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
    mov.w @(DAT_ce31b70,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31b5a
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31b70,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31b6a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31b4c
    mov.l @(PTR_ce31b90,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31b4c:
    mov 0x00,r5
    bsr FUN_ce31ebc
    mov r14,r4
    mov.l @(PTR_ce31b94,pc),r2
    mov 0x1F,r5
    jsr @r2
    mov r14,r4

LAB_ce31b5a:
    bsr FUN_ce31f2e
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31f72
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b66:
    #data 0x01d4
DAT_ce31b68:
    #data 0x01a3
DAT_ce31b6a:
    #data 0x01f9
DAT_ce31b6c:
    #data 0x041c
DAT_ce31b6e:
    #data 0x01fc
DAT_ce31b70:
    #data 0x0141
    #align4

PTR_ce31b74:
    #data loc_8c05218a
PTR_ce31b78:
    #data loc_8c056de4
PTR_ce31b7c:
    #data loc_8c05115a
PTR_ce31b80:
    #data loc_8c2896b0
PTR_ce31b84:
    #data loc_8c034e8c
PTR_ce31b88:
    #data PTR_ce353e0
PTR_ce31b8c:
    #data loc_8c034dee
PTR_ce31b90:
    #data loc_8c053082
PTR_ce31b94:
    #data loc_8c042008

;=============================================

LAB_ce31b98:
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt/s LAB_ce31bf0
    mov r14,r4
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce31bf0:
    mov.l @(PTR_ce31c7c,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c6e
    mov.b @(0x7,r14),r0
    mov 0x01,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    bsr FUN_ce31ebc
    mov r14,r4
    mov.l @(PTR_ce31c80,pc),r2
    mov 0x1F,r5
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf/s LAB_ce31c4e
    mov 0x00,r4
    mov 0x03,r0
    mov.b r0,@(0x7,r14)
    mov 0x4B,r3
    mov.w @(DAT_ce31c7a,pc),r0
    mov 0x03,r6
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31c84,pc),r3
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
    mov.l @(PTR_ce31c88,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c4e:
    mov 0x20,r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov r3,r6
    mov.w @(0x1e,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31c88,pc),r3
    mov 0x15,r5
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c6e:
    bsr FUN_ce31f2e
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31f72
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c7a:
    #data 0x01a1
    #align4

PTR_ce31c7c:
    #data loc_8c034dee
PTR_ce31c80:
    #data loc_8c042008
PTR_ce31c84:
    #data loc_8c2896b0
PTR_ce31c88:
    #data loc_8c034e8c

;=============================================

LAB_ce31c8c:
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt/s LAB_ce31ce4
    mov r14,r4
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce31ce4:
    mov.l @(PTR_ce31d74,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d64
    mov.l @(PTR_ce31d78,pc),r3
    mov 0x1F,r5
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt/s LAB_ce31d2e
    mov 0x00,r4
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bf LAB_ce31d2e
    mov.l @(DAT_ce31d7c,pc),r1
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    mov 0x01,r3
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r6
    xor r3,r6
    mov.b r6,@(r0,r14)
    bra LAB_ce31d58
    add 0x01,r6

LAB_ce31d2e:
    mov 0x03,r0
    mov.b r0,@(0x7,r14)
    mov 0x4B,r3
    mov.w @(DAT_ce31d70,pc),r0
    mov 0x03,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31d80,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31d58:
    lds.l @r15+,PR
    mov.l @(PTR_ce31d84,pc),r2
    mov 0x15,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31d64:
    bsr FUN_ce31f2e
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31f72
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d70:
    #data 0x01a1
    #align4

PTR_ce31d74:
    #data loc_8c034dee
PTR_ce31d78:
    #data loc_8c042008
DAT_ce31d7c:
    #data 0x412b6db6
PTR_ce31d80:
    #data loc_8c2896b0
PTR_ce31d84:
    #data loc_8c034e8c

;=============================================

LAB_ce31d88:
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt/s LAB_ce31de0
    mov r14,r4
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce31de0:
    mov.l @(PTR_ce31ea8,pc),r3
    jsr @r3
    nop
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31e16
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov r14,r4
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.w @(DAT_ce31e9e,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31eac,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    mov.l @(PTR_ce31eb0,pc),r3
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e16:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e1c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce31e82
    mov 0x60,r1
    mov.l @(PTR_ce31ea8,pc),r3
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
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31ea0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31e98
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31ea2,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31ea0,pc),r0
    mov.l @(PTR_ce31eb0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ea4,pc),r0
    mov.b @(r0,r14),r6
    add 0x05,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31eb4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e82:
    mov.l @(PTR_ce31ea8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e98
    lds.l @r15+,PR
    mov.l @(PTR_ce31eb8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e98:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e9e:
    #data 0x019e
DAT_ce31ea0:
    #data 0x041c
DAT_ce31ea2:
    #data 0x01f9
DAT_ce31ea4:
    #data 0x01a3
    #align4

PTR_ce31ea8:
    #data loc_8c034dee
DAT_ce31eac:
    #data 0xbf9a4924
PTR_ce31eb0:
    #data loc_8c034e8c
PTR_ce31eb4:
    #data loc_8c0511b4
PTR_ce31eb8:
    #data loc_8c051648

;=============================================

FUN_ce31ebc:
    mov.l @(PTR_ce31fd8,pc),r0
    shll2 r5
    mov.l @(r0,r5),r5
    mov.w @(DAT_ce31fc8,pc),r0
    mov.b @(r0,r4),r3
    mova @(DAT_ce31fdc,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce31fe0,pc),r0
    extu.b r3,r3
    fmov.s @r0,fr4
    shll2 r3
    shll2 r3
    add r3,r5
    mov.l @r5+,r3
    mov 0x5C,r0
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    mov.l @r5+,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31fe4,pc),r0
    mov.l @r5+,r3
    fmov.s @r0,fr5
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    mov 0x60,r0
    fdiv fr4,fr3
    fmov fr3,@(r0,r4)
    mov 0x6C,r0
    mov.l @r5,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31fca,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31f2a
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce31f2a:
    rts
    nop

;=============================================

FUN_ce31f2e:
    mov.w @(DAT_ce31fcc,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31f6e
    mov.w @(DAT_ce31fc8,pc),r0
    mov 0x00,r5
    mov.b @(r0,r4),r3
    add 0xA8,r0
    mov.b @(r0,r4),r2
    add 0x56,r0
    extu.b r3,r3
    shll r3
    add r2,r3
    add 0x4B,r3
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce31fe8,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31fcc,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce31f6e:
    rts
    nop

LAB_ce31f72:
    mov.w @(DAT_ce31fce,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31fb2
    mov.w @(DAT_ce31fd0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce31fa4
    mov 0x01,r6
    mov.w @(DAT_ce31fd2,pc),r0
    mov.w @(r0,r4),r3
    add 0xF6,r0
    mov.w @(r0,r4),r5
    or r3,r5
    mov.w @(DAT_ce31fd4,pc),r3
    extu.w r5,r5
    tst r3,r5
    bt LAB_ce31fb2
    mov r6,r0
    nop
    mov.w r0,@(0x1c,r4)
    mov 0x00,r2
    mov.w @(DAT_ce31fd2,pc),r0
    bra LAB_ce31fb2
    mov.w r2,@(r0,r4)

LAB_ce31fa4:
    mov.w @(DAT_ce31fd6,pc),r0
    mov.b @(r0,r4),r1
    tst r1,r1
    bf LAB_ce31fb2
    mov r6,r0
    nop
    mov.w r0,@(0x1c,r4)

LAB_ce31fb2:
    rts
    nop

LAB_ce31fb6:
    mov r4,r3
    mov.l @(PTR_ce31fec,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31fc8:
    #data 0x01a3
DAT_ce31fca:
    #data 0x01d2
DAT_ce31fcc:
    #data 0x014b
DAT_ce31fce:
    #data 0x0140
DAT_ce31fd0:
    #data 0x0525
DAT_ce31fd2:
    #data 0x0352
DAT_ce31fd4:
    #data 0x0300
DAT_ce31fd6:
    #data 0x0411
    #align4

PTR_ce31fd8:
    #data PTR_ce3524c
DAT_ce31fdc:
    #data 0x3fd55555
DAT_ce31fe0:
    #data 0x47800000
DAT_ce31fe4:
    #data 0x40092492
PTR_ce31fe8:
    #data loc_8c2896b0
PTR_ce31fec:
    #data PTR_ce353f0

;=============================================

LAB_ce31ff0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce320ac,pc),r13
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add r14,r13
    tst r0,r0
    bf/s LAB_ce32054
    mov 0x00,r12
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov r12,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x01,r3
    mov.w @(DAT_ce320ae,pc),r0
    mov 0x05,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce320b4,pc),r3
    mov.b r12,@r13
    jsr @r3
    mov r14,r4
    bsr FUN_ce325b6
    mov r14,r4
    mov.w @(DAT_ce320b0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce32042
    mov 0x09,r13
    mov.w @(DAT_ce320b2,pc),r0
    mov 0x08,r13
    mov.l @(PTR_ce320b8,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce32042:
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce320bc,pc),r2
    mov r14,r4
    mov 0x15,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32054:
    mov.l @(PTR_ce320c0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32090
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.l @(PTR_ce320c4,pc),r2
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov.b r3,@r13
    jsr @r2
    mov r14,r4
    bsr FUN_ce325b6
    mov r14,r4
    bsr FUN_ce325ec
    mov r14,r4
    bsr FUN_ce32700
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce320c8,pc),r2
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32090:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3209a:
    mov r4,r3
    mov.l @(PTR_ce320cc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320ac:
    #data 0x02a4
DAT_ce320ae:
    #data 0x01a3
DAT_ce320b0:
    #data 0x01f9
DAT_ce320b2:
    #data 0x041c
    #align4

PTR_ce320b4:
    #data loc_8c056de4
PTR_ce320b8:
    #data loc_8c05115a
PTR_ce320bc:
    #data loc_8c034e8c
PTR_ce320c0:
    #data loc_8c034dee
PTR_ce320c4:
    #data loc_8c053082
PTR_ce320c8:
    #data loc_8c0ee1e0
PTR_ce320cc:
    #data PTR_ce35400

;=============================================

LAB_ce320d0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r1
    mov r4,r14
    mov 0x34,r0
    mov.w @(DAT_ce321d8,pc),r3
    add r14,r1
    add r14,r3
    mov.l r3,@r15
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
    mova @(DAT_ce321e4,pc),r0
    mov.l @(PTR_ce321e8,pc),r12
    fmov.s @r0,fr15
    mov 0x02,r11
    mov.w @(DAT_ce321da,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32178
    mov 0x01,r13
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce321ec,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce321f0,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce321da,pc),r0
    mov.b @(r0,r14),r3
    tst r13,r3
    bt LAB_ce32162
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce32162:
    mov 0x5C,r0
    mov.l @(PTR_ce321f4,pc),r3
    fmov.s @(r0,r14),fr2
    fneg fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce321dc,pc),r0
    mov.b r11,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce321ce
    mov 0x13,r6

LAB_ce32178:
    mov.w @(DAT_ce321de,pc),r0
    mov.b @(r0,r14),r4
    tst r4,r4
    bt LAB_ce321a8
    mov.w @(DAT_ce321e0,pc),r0
    mov r13,r3
    mov.b @(r0,r14),r2
    extu.b r2,r2
    shad r2,r3
    tst r3,r4
    bf LAB_ce321a8
    mov 0x22,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce321a8
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x04,r0
    bt LAB_ce321a8
    mov r11,r0
    nop
    mov.b r0,@(0x7,r14)
    bra LAB_ce321ce
    mov 0x14,r6

LAB_ce321a8:
    mov.w @(DAT_ce321e2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce321f8
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce321e2,pc),r0
    mov.l @(PTR_ce321f4,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce321dc,pc),r0
    mov 0x15,r6
    mov.b r13,@(r0,r14)

LAB_ce321ce:
    mov 0x15,r5
    jsr @r12
    mov r14,r4
    bra LAB_ce3222c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce321d8:
    #data 0x02a4
DAT_ce321da:
    #data 0x019e
DAT_ce321dc:
    #data 0x01f9
DAT_ce321de:
    #data 0x01fd
DAT_ce321e0:
    #data 0x01d2
DAT_ce321e2:
    #data 0x041c
    #align4

DAT_ce321e4:
    #data 0xbf4db6db
PTR_ce321e8:
    #data loc_8c034e8c
DAT_ce321ec:
    #data 0x4191b6db
DAT_ce321f0:
    #data 0x41000000
PTR_ce321f4:
    #data loc_8c05218a

;=============================================

LAB_ce321f8:
    mov.l @(PTR_ce3232c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3222c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce3231a,pc),r0
    mov.b r11,@(r0,r14)
    mov.l @r15,r3
    mov.b r13,@r3
    mov.l @(PTR_ce32330,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3231c,pc),r0
    mov 0x15,r5
    mov.b @(r0,r14),r6
    add 0x01,r6
    jsr @r12
    mov r14,r4

LAB_ce3222c:
    add 0x04,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3223c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3231e,pc),r13
    mov r4,r14
    mov.l @(PTR_ce3232c,pc),r3
    add r14,r13
    jsr @r3
    mov 0x01,r12
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce322f4
    mov.b @(0x1,r13),r0
    tst r0,r0
    bt/s LAB_ce322ca
    mov 0x00,r4
    mov.w @(DAT_ce32322,pc),r0
    mov.w @(DAT_ce32320,pc),r3
    mov.w @(r0,r14),r2
    and r3,r2
    mov.w r2,@r15
    extu.w r2,r2
    tst r2,r2
    bt LAB_ce322ca
    mov.w @r15,r3
    mov.l @(PTR_ce32334,pc),r0
    extu.w r3,r3
    shlr8 r3
    shlr2 r3
    extu.w r3,r5
    mov.w r3,@r15
    mov.b @(r0,r5),r5
    extu.b r5,r5
    tst r5,r5
    bt LAB_ce322ca
    mov.w @(DAT_ce32324,pc),r0
    mov r12,r2
    extu.w r3,r3
    mov.b @(r0,r14),r1
    extu.b r1,r1
    shad r1,r2
    tst r2,r3
    bf LAB_ce322ca
    mov.w @(DAT_ce32326,pc),r2
    mov 0x22,r0
    mov 0x02,r3
    add r2,r5
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce3231a,pc),r0
    mov.b r3,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.b r12,@r13
    mov.b r0,@(0x1,r13)
    bsr FUN_ce325b6
    mov r14,r4
    bsr FUN_ce325ec
    mov r14,r4
    bsr FUN_ce32700
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32338,pc),r2
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce322ca:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32328,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3233c,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce322f4:
    mov.w @(DAT_ce3232a,pc),r3
    mov r3,r0
    nop
    add 0xE0,r0
    mov.w @(r0,r14),r2
    and r3,r2
    mov.w r2,@r15
    extu.w r2,r2
    tst r2,r2
    bt LAB_ce3230e
    mov r12,r0
    nop
    mov.b r0,@(0x1,r13)

LAB_ce3230e:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3231a:
    #data 0x01f9
DAT_ce3231c:
    #data 0x0158
DAT_ce3231e:
    #data 0x02a4
DAT_ce32320:
    #data 0x3c00
DAT_ce32322:
    #data 0x0340
DAT_ce32324:
    #data 0x01d2
DAT_ce32326:
    #data 0x00ff
DAT_ce32328:
    #data 0x01fc
DAT_ce3232a:
    #data 0x0360
    #align4

PTR_ce3232c:
    #data loc_8c034dee
PTR_ce32330:
    #data loc_8c04fea8
PTR_ce32334:
    #data DAT_ce35274
PTR_ce32338:
    #data loc_8c05115a
PTR_ce3233c:
    #data loc_8c051648

;=============================================

LAB_ce32340:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32416,pc),r13
    mov r4,r14
    mov.l @(PTR_ce32428,pc),r3
    add r14,r13
    jsr @r3
    mov 0x01,r12
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce323f0
    mov.b @(0x1,r13),r0
    tst r0,r0
    bt LAB_ce323c4
    mov.w @(DAT_ce3241a,pc),r0
    mov.w @(DAT_ce32418,pc),r3
    mov.w @(r0,r14),r2
    and r3,r2
    mov.w r2,@r15
    extu.w r2,r2
    tst r2,r2
    bt LAB_ce323c4
    mov.w @r15,r3
    mov.w @(DAT_ce3241c,pc),r0
    extu.w r3,r3
    shlr8 r3
    shlr2 r3
    mov.w r3,@r15
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce3238a
    mov.w @r15,r1
    add 0x10,r1
    mov.w r1,@r15

LAB_ce3238a:
    mov.w @r15,r4
    mov.l @(PTR_ce3242c,pc),r0
    extu.w r4,r4
    mov.b @(r0,r4),r4
    extu.b r4,r4
    tst r4,r4
    bt LAB_ce323c4
    mov.w @(DAT_ce3241e,pc),r2
    mov 0x22,r0
    mov 0x02,r3
    add r2,r4
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32420,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r12,@r13
    mov.b r0,@(0x1,r13)
    bsr FUN_ce325b6
    mov r14,r4
    bsr FUN_ce325ec
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra FUN_ce32700
    mov.l @r15+,r14

LAB_ce323c4:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0xFF,r3
    mov.w @(DAT_ce32422,pc),r0
    mov r14,r4
    mov.b r12,@(r0,r14)
    add 0xFE,r0
    mov.b r3,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32430,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce323f0:
    mov.w @(DAT_ce32424,pc),r3
    mov r3,r0
    nop
    add 0xE0,r0
    mov.w @(r0,r14),r2
    and r3,r2
    mov.w r2,@r15
    extu.w r2,r2
    tst r2,r2
    bt LAB_ce3240a
    mov r12,r0
    nop
    mov.b r0,@(0x1,r13)

LAB_ce3240a:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32416:
    #data 0x02a4
DAT_ce32418:
    #data 0x3c00
DAT_ce3241a:
    #data 0x0340
DAT_ce3241c:
    #data 0x01d2
DAT_ce3241e:
    #data 0x00ff
DAT_ce32420:
    #data 0x01f9
DAT_ce32422:
    #data 0x01d5
DAT_ce32424:
    #data 0x0360
    #align4

PTR_ce32428:
    #data loc_8c034dee
PTR_ce3242c:
    #data DAT_ce35284
PTR_ce32430:
    #data loc_8c05176e

;=============================================

LAB_ce32434:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r1
    mov r4,r14
    mov 0x34,r0
    mov.w @(DAT_ce32530,pc),r3
    add r14,r1
    add r14,r3
    mov.l r3,@r15
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
    mov.w @(DAT_ce32532,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce324b6
    mov 0x00,r13
    mov.w @(DAT_ce32532,pc),r0
    mov r14,r4
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32534,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3253c,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce324b6:
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce32518
    mov.l @(PTR_ce32540,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32526
    mov.w @(DAT_ce32534,pc),r0
    mov 0x02,r3
    mov 0x01,r4
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32536,pc),r0
    mov.l @r15,r3
    mov.b r4,@r3
    mov.b @(r0,r14),r5
    tst r5,r5
    bt LAB_ce32500
    exts.b r5,r0
    tst 0x01,r0
    bf LAB_ce32500
    mov.w @(DAT_ce32538,pc),r0
    mov 0x11,r3
    mov 0xFF,r2
    mov r14,r4
    mov.b r13,@(r0,r14)
    add 0x02,r0
    mov.b r3,@(r0,r14)
    add 0xFD,r0
    mov.b r2,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32544,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32500:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32538,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    add 0x27,r0
    mov.b r13,@(r0,r14)
    add 0xDA,r0
    bra LAB_ce32526
    mov.b r13,@(r0,r14)

LAB_ce32518:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32540,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32526:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32530:
    #data 0x02a4
DAT_ce32532:
    #data 0x041c
DAT_ce32534:
    #data 0x01f9
DAT_ce32536:
    #data 0x019e
DAT_ce32538:
    #data 0x01d4
    #align4

PTR_ce3253c:
    #data loc_8c052dac
PTR_ce32540:
    #data loc_8c034dee
PTR_ce32544:
    #data loc_8c05176e

;=============================================

LAB_ce32548:
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
    mov.w @(DAT_ce326c2,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce325b0
    mov.w @(DAT_ce326c2,pc),r0
    mov 0x00,r3
    fldi0 fr4
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce326c4,pc),r0
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    mov.l @(PTR_ce326cc,pc),r3
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    jmp @r3
    fmov fr4,@(r0,r4)

LAB_ce325b0:
    mov.l @(PTR_ce326d0,pc),r3
    jmp @r3
    nop

;=============================================

FUN_ce325b6:
    mov 0x22,r0
    mov.w @(DAT_ce326c6,pc),r5
    mov.b @(r0,r4),r3
    mov 0x00,r6
    mov.w @(DAT_ce326c8,pc),r0
    add r4,r5
    add 0x52,r3
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r6,@(r0,r4)
    add 0xF2,r0
    mov.b r6,@(r0,r4)
    add 0x26,r0
    mov.l r6,@(r0,r4)
    mov.l @(PTR_ce326d4,pc),r3
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce326ca,pc),r0
    mov.b @(r0,r4),r0
    rts
    mov.b r0,@(0x2,r5)

;=============================================

FUN_ce325ec:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    fmov.s fr13,@-r15
    fmov.s fr12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r0
    fldi0 fr4
    mov r4,r14
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    mov.l @(PTR_ce326e4,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce326d8,pc),r0
    fmov.s @r0,fr13
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll2 r0
    neg r0,r0
    add 0x28,r0
    and 0x1F,r0
    shll8 r0
    shll2 r0
    shll r0
    mov.w r0,@r15
    mova @(DAT_ce326dc,pc),r0
    fmov.s @r0,fr14
    mova @(DAT_ce326e0,pc),r0
    mov.w @r15,r13
    fmov.s @r0,fr15
    jsr @r3
    mov r13,r4
    fmov fr13,fr3
    fmul fr0,fr3
    mova @(DAT_ce326e8,pc),r0
    mov.l @(PTR_ce326f4,pc),r3
    fmov.s @r0,fr2
    mova @(DAT_ce326ec,pc),r0
    fmov.s @r0,fr1
    mov 0x5C,r0
    fmul fr14,fr3
    fdiv fr2,fr3
    fdiv fr15,fr3
    fmul fr1,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce326f0,pc),r0
    fmov.s @r0,fr12
    jsr @r3
    mov r13,r4
    fmul fr0,fr13
    mova @(DAT_ce326f8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce326e4,pc),r3
    fmul fr14,fr13
    fdiv fr12,fr13
    fdiv fr15,fr13
    fmul fr3,fr13
    fmov fr13,@(r0,r14)
    mova @(DAT_ce326fc,pc),r0
    fmov.s @r0,fr13
    jsr @r3
    mov r13,r4
    fmov fr13,fr3
    fmul fr0,fr3
    mova @(DAT_ce326e8,pc),r0
    mov.l @(PTR_ce326f4,pc),r3
    fmov.s @r0,fr2
    mova @(DAT_ce326ec,pc),r0
    fmov.s @r0,fr1
    mov 0x68,r0
    fmul fr14,fr3
    fdiv fr2,fr3
    fdiv fr15,fr3
    fmul fr1,fr3
    fneg fr3
    fdiv fr15,fr3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r13,r4
    fmul fr0,fr13
    mova @(DAT_ce326f8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmul fr14,fr13
    fdiv fr12,fr13
    fdiv fr15,fr13
    fmul fr3,fr13
    fneg fr13
    fdiv fr15,fr13
    fmov fr13,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr12
    fmov.s @r15+,fr13
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326c2:
    #data 0x041c
DAT_ce326c4:
    #data 0x01f9
DAT_ce326c6:
    #data 0x02a4
DAT_ce326c8:
    #data 0x01a1
DAT_ce326ca:
    #data 0x0272
    #align4

PTR_ce326cc:
    #data loc_8c052dac
PTR_ce326d0:
    #data loc_8c034dee
PTR_ce326d4:
    #data loc_8c2896b0
DAT_ce326d8:
    #data 0x48228000
DAT_ce326dc:
    #data 0x447a0000
DAT_ce326e0:
    #data 0x43800000
PTR_ce326e4:
    #data loc_8c11e2e0
DAT_ce326e8:
    #data 0x47c35000
DAT_ce326ec:
    #data 0x3fd55555
DAT_ce326f0:
    #data 0x47f42400
PTR_ce326f4:
    #data loc_8c11e860
DAT_ce326f8:
    #data 0x40092492
DAT_ce326fc:
    #data 0x48960000

;=============================================

FUN_ce32700:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x22,r0
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce327f4,pc),r0
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce327e6,pc),r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce327e8,pc),r0
    extu.b r3,r3
    mov.w r3,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r13
    mov 0x05,r3
    extu.b r13,r13
    cmp/ge r3,r13
    bf LAB_ce32730
    mov 0x08,r1
    sub r13,r1
    mov r1,r13

LAB_ce32730:
    mov r13,r6
    mov.l @(PTR_ce327f8,pc),r3
    shll r6
    mov 0x15,r5
    add 0x0A,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce327fc,pc),r2
    mov r14,r4
    mov 0x20,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3274c:
    mov r4,r3
    mov.l @(PTR_ce32800,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3275e:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce327ea,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce327ec,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce327ee,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll2 r0
    add 0x04,r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov 0x20,r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fldi0 fr4
    mov 0x3B,r3
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce327f0,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32804,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32808,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3280c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32810,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce327f8,pc),r3
    mov r14,r4
    mov 0x16,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce327e6:
    #data 0x01d2
DAT_ce327e8:
    #data 0x0130
DAT_ce327ea:
    #data 0x01f9
DAT_ce327ec:
    #data 0x041c
DAT_ce327ee:
    #data 0x01a3
DAT_ce327f0:
    #data 0x01a1
    #align4

PTR_ce327f4:
    #data DAT_ce352a4
PTR_ce327f8:
    #data loc_8c034e8c
PTR_ce327fc:
    #data loc_8c042008
PTR_ce32800:
    #data PTR_ce3540c
PTR_ce32804:
    #data loc_8c2896b0
PTR_ce32808:
    #data loc_8c05218a
PTR_ce3280c:
    #data loc_8c05115a
PTR_ce32810:
    #data loc_8c056de4

;=============================================

LAB_ce32814:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce328b8,pc),r3
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
    bt LAB_ce3288a
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce328bc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce328c0,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce328b0,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce328c4,pc),r3
    mov.b @(r0,r14),r6
    add 0x19,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce328c8,pc),r2
    mov 0x1F,r5
    jsr @r2
    mov r14,r4

LAB_ce3288a:
    mov.w @(DAT_ce328b2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce328aa
    mova @(DAT_ce328cc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce328b4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce328aa
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce328aa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328b0:
    #data 0x01a3
DAT_ce328b2:
    #data 0x0141
DAT_ce328b4:
    #data 0x01d2
    #align4

PTR_ce328b8:
    #data loc_8c034dee
PTR_ce328bc:
    #data loc_8c0c04d0
PTR_ce328c0:
    #data loc_8c06a2ec
PTR_ce328c4:
    #data loc_8c034e8c
PTR_ce328c8:
    #data loc_8c042008
DAT_ce328cc:
    #data 0xc12d5555

;=============================================

LAB_ce328d0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    mov 0x01,r12
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
    mov.w @(DAT_ce329a4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32930
    mov 0x00,r13
    mov.b @(r0,r14),r3
    add 0xD5,r0
    mov.b @(r0,r14),r2
    mov r12,r1
    extu.b r2,r2
    shad r2,r1
    cmp/eq r1,r3
    bf LAB_ce32a02

LAB_ce32930:
    mov.l @(PTR_ce329b0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce32980
    mov 0x20,r0
    mov.b @(r0,r14),r3
    cmp/pl r3
    bt LAB_ce32a2c
    mov.w @(0x1c,r14),r0
    mov 0x01,r3
    cmp/gt r3,r0
    bf LAB_ce32a2c
    mov.w @(DAT_ce329a8,pc),r0
    mov.w @(DAT_ce329a6,pc),r5
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32972
    mov.w @(DAT_ce329aa,pc),r0
    mov.w @(r0,r14),r3
    add 0xF6,r0
    mov.w @(r0,r14),r4
    or r3,r4
    mov.w @(DAT_ce329ac,pc),r3
    extu.w r4,r4
    tst r3,r4
    bt LAB_ce32a2c
    mov 0x20,r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce329aa,pc),r0
    bra LAB_ce32a2c
    mov.w r13,@(r0,r14)

LAB_ce32972:
    mov.w @(DAT_ce329ae,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32a2c
    mov 0x20,r0
    bra LAB_ce32a2c
    mov.b r5,@(r0,r14)

LAB_ce32980:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce32a02
    mov.w @(0x1e,r14),r0
    xor 0x01,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce329c6
    mov 0x20,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce329b4
    bra LAB_ce329bc
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329a4:
    #data 0x01fd
DAT_ce329a6:
    #data 0x00ff
DAT_ce329a8:
    #data 0x0525
DAT_ce329aa:
    #data 0x0352
DAT_ce329ac:
    #data 0x0300
DAT_ce329ae:
    #data 0x0411
    #align4

PTR_ce329b0:
    #data loc_8c034dee

;=============================================

LAB_ce329b4:
    mov.b r12,@(r0,r14)
    mov r12,r0
    nop
    mov.w r0,@(0x1c,r14)

LAB_ce329bc:
    mov.w @(0x1c,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce329c6
    mov 0x20,r0
    mov.b r12,@(r0,r14)

LAB_ce329c6:
    mov.w @(0x1e,r14),r0
    mov.l @(PTR_ce32af4,pc),r3
    mov r0,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32aec,pc),r2
    mov 0x15,r5
    mov.w @(0x1e,r14),r0
    add r14,r2
    mov.b @r2,r2
    mov r0,r3
    shll r0
    extu.b r2,r2
    add r3,r0
    mov.l @(PTR_ce32af8,pc),r3
    add r2,r0
    add 0x19,r0
    mov.l r0,@r15
    mov r0,r6
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x1F,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32afc,pc),r2
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32a02:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fldi0 fr4
    mov 0x15,r5
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    mov r14,r4
    fmov fr4,@(r0,r14)
    mov 0x1F,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32af8,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a2c:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32a38:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32b00,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a52
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32b04,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32a52:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32a5a:
    mov r4,r3
    mov.l @(PTR_ce32b08,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32a6c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    fldi0 fr4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32aee,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32af0,pc),r0
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
    mov.w @(DAT_ce32aec,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x5A,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32b0c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32b10,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32b14,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32af8,pc),r2
    mov r14,r4
    mov 0x24,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32ada:
    mov r4,r3
    mov.l @(PTR_ce32b18,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32aec:
    #data 0x01a3
DAT_ce32aee:
    #data 0x01f9
DAT_ce32af0:
    #data 0x041c
    #align4

PTR_ce32af4:
    #data loc_8c06a2ec
PTR_ce32af8:
    #data loc_8c034e8c
PTR_ce32afc:
    #data loc_8c042008
PTR_ce32b00:
    #data loc_8c034dee
PTR_ce32b04:
    #data loc_8c051648
PTR_ce32b08:
    #data PTR_ce3541c
PTR_ce32b0c:
    #data loc_8c2896b0
PTR_ce32b10:
    #data loc_8c05218a
PTR_ce32b14:
    #data loc_8c05115a
PTR_ce32b18:
    #data PTR_ce35428

;=============================================

LAB_ce32b1c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32c24,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32b7a
    mov.b @(0x7,r14),r0
    mov 0x03,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32c1c,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x04,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32c1e,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32c28,pc),r0
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    mova @(DAT_ce32c2c,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce32c30,pc),r0
    lds r2,FPUL
    fmov.s @r0,fr1
    mov 0x5C,r0
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32c20,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32b6e
    mov 0x27,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32b6e:
    lds.l @r15+,PR
    mov.l @(PTR_ce32c34,pc),r3
    mov 0x15,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32b7a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b80:
    mov.w @(DAT_ce32c1e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32b9e
    mov.l @(PTR_ce32c38,pc),r3
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x01,r0
    bt LAB_ce32b9e
    mov.l @(PTR_ce32c3c,pc),r1
    jsr @r1
    mov r14,r4

LAB_ce32b9e:
    mov.w @(DAT_ce32c22,pc),r0
    mov 0x02,r3
    mov 0x03,r2
    mov.b r3,@(r0,r14)
    add 0xFD,r0
    mov 0x5C,r1
    mov.b r2,@(r0,r14)
    add r14,r1
    mov.l @(PTR_ce32c24,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32c16
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x28,r6
    mov.w @(DAT_ce32c22,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce32c40,pc),r0
    fmov.s @r0,fr2
    mov 0x68,r0
    fneg fr3
    fdiv fr2,fr3
    mov.l @(PTR_ce32c34,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fldi1 fr3
    fadd fr3,fr3
    fmov.s @(r0,r14),fr1
    fdiv fr3,fr1
    fmov fr1,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32c44,pc),r2
    mov 0x20,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32c16:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c1c:
    #data 0x01f2
DAT_ce32c1e:
    #data 0x01a3
DAT_ce32c20:
    #data 0x01d2
DAT_ce32c22:
    #data 0x01f5
    #align4

PTR_ce32c24:
    #data loc_8c034dee
PTR_ce32c28:
    #data DAT_ce352ac
DAT_ce32c2c:
    #data 0x3fd55555
DAT_ce32c30:
    #data 0x47800000
PTR_ce32c34:
    #data loc_8c034e8c
PTR_ce32c38:
    #data loc_8c26823c
PTR_ce32c3c:
    #data loc_8c0511e2
DAT_ce32c40:
    #data 0x41000000
PTR_ce32c44:
    #data loc_8c042008

;=============================================

LAB_ce32c48:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r0
    mov.l r13,@-r15
    fldi0 fr3
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fcmp/eq fr3,fr2
    bt LAB_ce32c72
    mov.l @(PTR_ce32d34,pc),r3
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x01,r0
    bt LAB_ce32c6c
    mov.l @(PTR_ce32d38,pc),r1
    jsr @r1
    mov r14,r4

LAB_ce32c6c:
    mov.w @(DAT_ce32d2c,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)

LAB_ce32c72:
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    mov 0x00,r13
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt/s LAB_ce32c92
    fldi0 fr15
    mov.w @(DAT_ce32d2c,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce32c92:
    mov.l @(PTR_ce32d3c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32cdc
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.w @(DAT_ce32d2e,pc),r0
    mov r14,r4
    mov.l @(PTR_ce32d40,pc),r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32d30,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    lds.l @r15+,PR
    mov.w @(DAT_ce32d32,pc),r0
    fmov.s @r15+,fr15
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    add 0x29,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32cdc:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32ce6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32d3c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32d00
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32d44,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32d00:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32d08:
    mov r4,r3
    mov.l @(PTR_ce32d48,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32d1a:
    mov r4,r3
    mov.l @(PTR_ce32d4c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d2c:
    #data 0x01f2
DAT_ce32d2e:
    #data 0x01f9
DAT_ce32d30:
    #data 0x041c
DAT_ce32d32:
    #data 0x01a3
    #align4

PTR_ce32d34:
    #data loc_8c26823c
PTR_ce32d38:
    #data loc_8c0511e2
PTR_ce32d3c:
    #data loc_8c034dee
PTR_ce32d40:
    #data loc_8c034e8c
PTR_ce32d44:
    #data loc_8c051648
PTR_ce32d48:
    #data PTR_ce35434
PTR_ce32d4c:
    #data PTR_ce35440

;=============================================

LAB_ce32d50:
    mov.w @(DAT_ce32e92,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32d6e
    mov.w @(DAT_ce32e96,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32e94,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32d6e:
    mov.b @(0x7,r14),r0
    mov 0x00,r13
    fldi0 fr4
    mov 0x30,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32e98,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32e9a,pc),r0
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
    mov.w @(DAT_ce32e9c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce32ea8,pc),r3
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.l @r3,r2
    mov.b @(0x2,r14),r0
    add 0x7C,r2
    extu.b r0,r0
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32eac,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32eb0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce32eb4,pc),r2
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32dd4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32e9e,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32ea0,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32e92,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32df6
    bra LAB_ce32df8
    mov 0x02,r3

LAB_ce32df6:
    mov 0x00,r3

LAB_ce32df8:
    mov.w @(DAT_ce32ea2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32eb8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32ea4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce32e36
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32ec4,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r6
    mov.w @(DAT_ce32ea4,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32e96,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32ebc,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32ec0,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32e36:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e3e:
    mov.w @(DAT_ce32e9e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32ea0,pc),r0
    mov.l @(PTR_ce32eb8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32ea4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32e8c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce32ec8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32ea6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32e82
    mov 0x05,r5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32e82:
    lds.l @r15+,PR
    mov.l @(PTR_ce32ecc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e8c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e92:
    #data 0x0255
DAT_ce32e94:
    #data 0x00ff
DAT_ce32e96:
    #data 0x03f0
DAT_ce32e98:
    #data 0x01f9
DAT_ce32e9a:
    #data 0x041c
DAT_ce32e9c:
    #data 0x01a1
DAT_ce32e9e:
    #data 0x03f8
DAT_ce32ea0:
    #data 0x0328
DAT_ce32ea2:
    #data 0x03f1
DAT_ce32ea4:
    #data 0x0141
DAT_ce32ea6:
    #data 0x01d2
    #align4

PTR_ce32ea8:
    #data loc_8c2896b0
PTR_ce32eac:
    #data loc_8c05218a
PTR_ce32eb0:
    #data loc_8c05115a
PTR_ce32eb4:
    #data loc_8c034e8c
PTR_ce32eb8:
    #data loc_8c034dee
DAT_ce32ebc:
    #data 0x40555555
DAT_ce32ec0:
    #data 0x42cdb6db
PTR_ce32ec4:
    #data loc_8c050834
DAT_ce32ec8:
    #data 0xc2200000
PTR_ce32ecc:
    #data loc_8c0c04d0

;=============================================

LAB_ce32ed0:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33000,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32fea,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ee6:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32fec,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    add r14,r1
    mov.w @(DAT_ce32fee,pc),r0
    mov.l @(PTR_ce33004,pc),r3
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
    mov.w @(DAT_ce32ff0,pc),r0
    mov.l @(PTR_ce33008,pc),r11
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32f6a
    mov 0x00,r13
    mov.b @(r0,r14),r3
    add 0xD5,r0
    mov.b @(r0,r14),r2
    mov 0x01,r1
    extu.b r2,r2
    shad r2,r1
    cmp/eq r1,r3
    bt LAB_ce32f6a
    mov.w @(DAT_ce32ff2,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32ff4,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov 0x16,r5
    mov.b r0,@(0x7,r14)
    mov 0x03,r6
    jsr @r11
    mov r14,r4
    bra LAB_ce33050
    nop

LAB_ce32f6a:
    mov.w @(DAT_ce32ff6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33050
    mov.w @(DAT_ce32ff8,pc),r0
    mov.l @(r0,r14),r12
    mov.b @(0x3,r12),r0
    tst r0,r0
    bf/s LAB_ce3301c
    fldi0 fr15
    mov.w @(DAT_ce32ff6,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bf LAB_ce3301c
    mov.w @(DAT_ce32ffa,pc),r0
    mov.b @(r0,r12),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce3301c
    mov.b @(0x5,r12),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3301c
    mov.b @(0x7,r14),r0
    mov 0x08,r6
    mov.l @(PTR_ce3300c,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32ffa,pc),r0
    mov.b r13,@(r0,r12)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.l r12,@(0x4,r2)
    mov.l @r15,r3
    mov r13,r0
    nop
    mov.w r0,@(0x8,r3)
    mov r14,r2
    mov.l @(PTR_ce33010,pc),r3
    mov r12,r1
    add 0x34,r2
    add 0x34,r1
    jsr @r3
    mov 0x0C,r0
    mova @(DAT_ce33014,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32ffc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32fd6
    mova @(DAT_ce33018,pc),r0
    fmov.s @r0,fr4

LAB_ce32fd6:
    mov 0x34,r0
    fmov.s @(r0,r12),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r12)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    bra LAB_ce3304a
    mov 0x01,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32fea:
    #data 0x02a4
DAT_ce32fec:
    #data 0x03f8
DAT_ce32fee:
    #data 0x0328
DAT_ce32ff0:
    #data 0x01fd
DAT_ce32ff2:
    #data 0x03f9
DAT_ce32ff4:
    #data 0x0327
DAT_ce32ff6:
    #data 0x019e
DAT_ce32ff8:
    #data 0x01b0
DAT_ce32ffa:
    #data 0x01f9
DAT_ce32ffc:
    #data 0x01d2
    #align4

PTR_ce33000:
    #data PTR_ce3544c
PTR_ce33004:
    #data loc_8c034dee
PTR_ce33008:
    #data loc_8c034e8c
PTR_ce3300c:
    #data loc_8c02fec4
PTR_ce33010:
    #data loc_8c1294c8
DAT_ce33014:
    #data 0xc2c80000
DAT_ce33018:
    #data 0x42c80000

;=============================================

LAB_ce3301c:
    mov.w @(DAT_ce3315e,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33160,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    mov 0x04,r6
    fmov fr15,@(r0,r14)

LAB_ce3304a:
    mov 0x16,r5
    jsr @r11
    mov r14,r4

LAB_ce33050:
    add 0x04,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33060:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33162,pc),r0
    mov r4,r14
    mov 0x02,r4
    mov.l r5,@r15
    mov.b r4,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce33164,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @r15,r2
    mov.w @(0x8,r2),r0
    add 0x01,r0
    mov.w r0,@(0x8,r2)
    mov.w @(DAT_ce33166,pc),r0
    mov.b r4,@(r0,r14)
    add 0xA9,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3309a
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33170,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3309a:
    mov.l @(PTR_ce33174,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce3310c
    mov.w @(DAT_ce33168,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33154
    mov.b @(r0,r14),r3
    add 0x60,r0
    mov 0x00,r13
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33178,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce33168,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce330f0
    mov.w @(DAT_ce3316a,pc),r0
    mov.l @(PTR_ce3317c,pc),r2
    mov.b @(r0,r14),r5
    add 0x1D,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3316a,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce330f0:
    mov.l @r15,r4
    mov.w @(DAT_ce3316c,pc),r0
    mov.l @(0x4,r4),r4
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce33154
    mov.l @(DAT_ce33180,pc),r1
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    bra LAB_ce33154
    fmov fr2,@(r0,r4)

LAB_ce3310c:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33184,pc),r3
    add 0x01,r0
    jsr @r3
    mov.b r0,@(0x7,r14)
    mov.l @(PTR_ce33188,pc),r2
    jsr @r2
    mov r14,r4
    mova @(DAT_ce3318c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce3316e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3312c
    mova @(DAT_ce33190,pc),r0
    fmov.s @r0,fr4

LAB_ce3312c:
    mov 0x34,r0
    mov.l @(DAT_ce33194,pc),r1
    fmov.s @(r0,r14),fr3
    mov 0x16,r5
    lds r1,FPUL
    mov r14,r4
    fadd fr4,fr3
    mov 0x02,r6
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33198,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33154:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3315e:
    #data 0x03f9
DAT_ce33160:
    #data 0x0327
DAT_ce33162:
    #data 0x03f8
DAT_ce33164:
    #data 0x0328
DAT_ce33166:
    #data 0x01f5
DAT_ce33168:
    #data 0x0141
DAT_ce3316a:
    #data 0x0140
DAT_ce3316c:
    #data 0x0202
DAT_ce3316e:
    #data 0x01d2
    #align4

PTR_ce33170:
    #data loc_8c051648
PTR_ce33174:
    #data loc_8c034dee
PTR_ce33178:
    #data loc_8c2896b0
PTR_ce3317c:
    #data loc_8c042008
DAT_ce33180:
    #data 0x40892492
PTR_ce33184:
    #data loc_8c02fd26
PTR_ce33188:
    #data loc_8c06a51c
DAT_ce3318c:
    #data 0xc2a00000
DAT_ce33190:
    #data 0x42a00000
DAT_ce33194:
    #data 0x42892492
PTR_ce33198:
    #data loc_8c034e8c

;=============================================

LAB_ce3319c:
    mov.w @(DAT_ce3329a,pc),r0
    mov 0x00,r6
    mov.b r6,@(r0,r4)
    add 0xFF,r0
    mov.b r6,@(r0,r4)
    mov.w @(DAT_ce3329c,pc),r0
    mov.b r6,@(r0,r4)
    add 0x01,r0
    mov.b r6,@(r0,r4)
    mov.b @(0x7,r4),r0
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce3329e,pc),r0
    mov.l @(0x4,r5),r7
    mov.b r6,@(r0,r7)
    mov 0x32,r0
    mov.w r0,@(0x1c,r4)
    mova @(DAT_ce332a4,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce332a8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce332a0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce331de
    mova @(DAT_ce332ac,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce331de:
    mov 0x34,r0
    mov.l @(DAT_ce332b0,pc),r1
    fmov.s @(r0,r4),fr3
    lds r1,FPUL
    fadd fr4,fr3
    fldi0 fr4
    fmov fr3,@(r0,r4)
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mova @(DAT_ce332b4,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)

LAB_ce33206:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce332b8,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33294
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce332bc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce332a0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33274
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33274:
    mova @(DAT_ce332c0,pc),r0
    mov.l @(PTR_ce332c8,pc),r3
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x01,r6
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce332c4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x04,r7
    mov r6,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33294:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3329a:
    #data 0x03f9
DAT_ce3329c:
    #data 0x0327
DAT_ce3329e:
    #data 0x0236
DAT_ce332a0:
    #data 0x01d2
    #align4

DAT_ce332a4:
    #data 0xc2a00000
DAT_ce332a8:
    #data 0xbf555555
DAT_ce332ac:
    #data 0x42a00000
DAT_ce332b0:
    #data 0x424db6db
DAT_ce332b4:
    #data 0x3f892492
PTR_ce332b8:
    #data loc_8c034dee
DAT_ce332bc:
    #data 0xc0555555
DAT_ce332c0:
    #data 0x414db6db
DAT_ce332c4:
    #data 0xbf892492
PTR_ce332c8:
    #data loc_8c034f54

;=============================================

LAB_ce332cc:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce3339c,pc),r3
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
    mov.w @(DAT_ce33396,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3334a
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33396,pc),r0
    mov.l @(PTR_ce333a0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33398,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce333a4,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3334a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33350:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3339c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3336a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce333a8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3336a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33372:
    mov r4,r3
    mov.l @(PTR_ce333ac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33384:
    mov r4,r3
    mov.l @(PTR_ce333b0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33396:
    #data 0x041c
DAT_ce33398:
    #data 0x01f9
    #align4

PTR_ce3339c:
    #data loc_8c034dee
PTR_ce333a0:
    #data loc_8c0511b4
PTR_ce333a4:
    #data loc_8c034e8c
PTR_ce333a8:
    #data loc_8c051648
PTR_ce333ac:
    #data PTR_ce35460
PTR_ce333b0:
    #data PTR_ce3546c

;=============================================

LAB_ce333b4:
    mov.w @(DAT_ce334c4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce333d2
    mov.w @(DAT_ce334c8,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce334c6,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce333d2:
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    fldi0 fr4
    mov 0x41,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce334ca,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce334cc,pc),r0
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
    mov.w @(DAT_ce334ce,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce334d8,pc),r3
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
    mov.l @(PTR_ce334dc,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce334e0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce334c4,pc),r0
    mov 0x05,r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x04,r0
    bf/s LAB_ce33438
    mov 0x06,r4
    mov r4,r13

LAB_ce33438:
    mov.w @(DAT_ce334c4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bf LAB_ce33444
    mov r4,r13

LAB_ce33444:
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce334e4,pc),r2
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33454:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce334d0,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce334d2,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce334c4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33476
    bra LAB_ce33478
    mov 0x02,r3

LAB_ce33476:
    mov 0x00,r3

LAB_ce33478:
    mov.w @(DAT_ce334d4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce334e8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce334d6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce334bc
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce334c4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bt LAB_ce334bc
    mov.w @(DAT_ce334c8,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce334f4,pc),r3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce334ec,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce334f0,pc),r0
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce334bc:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce334c4:
    #data 0x0255
DAT_ce334c6:
    #data 0x00ff
DAT_ce334c8:
    #data 0x03f0
DAT_ce334ca:
    #data 0x01f9
DAT_ce334cc:
    #data 0x041c
DAT_ce334ce:
    #data 0x01a1
DAT_ce334d0:
    #data 0x03f8
DAT_ce334d2:
    #data 0x0328
DAT_ce334d4:
    #data 0x03f1
DAT_ce334d6:
    #data 0x0141
    #align4

PTR_ce334d8:
    #data loc_8c2896b0
PTR_ce334dc:
    #data loc_8c05218a
PTR_ce334e0:
    #data loc_8c05115a
PTR_ce334e4:
    #data loc_8c034e8c
PTR_ce334e8:
    #data loc_8c034dee
DAT_ce334ec:
    #data 0xc2a00000
DAT_ce334f0:
    #data 0x42092492
PTR_ce334f4:
    #data loc_8c050834

;=============================================

LAB_ce334f8:
    mov.w @(DAT_ce3362a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce3362c,pc),r0
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x11,r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce3362e,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33638,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33630,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce33540
    mov 0x05,r5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33540:
    mov.l @(PTR_ce3363c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33640,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33644,pc),r3
    mov 0x1F,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33648,pc),r2
    mov r14,r4
    mov 0x07,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33564:
    mov.w @(DAT_ce3362a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3362c,pc),r0
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
    mov.w @(DAT_ce33632,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce33654
    mov 0x00,r13
    mov.l @(PTR_ce3364c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce335ca
    bra LAB_ce336dc
    nop

LAB_ce335ca:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce33664
    mov.w @(0x1e,r14),r0
    mov.l @(PTR_ce33640,pc),r3
    xor 0x01,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1e,r14),r0
    mov r0,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33644,pc),r2
    mov 0x1F,r5
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    mov r14,r4
    mov 0x16,r5
    mov r0,r3
    mov.w @(DAT_ce33634,pc),r0
    add 0x41,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33650,pc),r3
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
    mov.w @(0x1e,r14),r0
    mov.l @(PTR_ce33648,pc),r2
    mov.l @r15+,r13
    mov r0,r6
    add 0x07,r6
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3362a:
    #data 0x03f8
DAT_ce3362c:
    #data 0x0328
DAT_ce3362e:
    #data 0x01a3
DAT_ce33630:
    #data 0x01d2
DAT_ce33632:
    #data 0x01fd
DAT_ce33634:
    #data 0x01a1
    #align4

DAT_ce33638:
    #data 0xc1055555
PTR_ce3363c:
    #data loc_8c0c04d0
PTR_ce33640:
    #data loc_8c06a2ec
PTR_ce33644:
    #data loc_8c042008
PTR_ce33648:
    #data loc_8c034e8c
PTR_ce3364c:
    #data loc_8c034dee
PTR_ce33650:
    #data loc_8c2896b0

;=============================================

LAB_ce33654:
    mov.b @(r0,r14),r2
    add 0xD5,r0
    mov.b @(r0,r14),r3
    mov 0x01,r1
    extu.b r3,r3
    shad r3,r1
    cmp/eq r1,r2
    bt LAB_ce336dc

LAB_ce33664:
    mov.w @(DAT_ce3372a,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3372c,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fldi0 fr4
    mov 0x43,r4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3372e,pc),r0
    mov.b @(r0,r14),r5
    extu.b r5,r0
    cmp/eq 0x04,r0
    bt/s LAB_ce336a8
    mov r0,r5
    mov r5,r0
    nop
    cmp/eq 0x05,r0
    bf LAB_ce336aa

LAB_ce336a8:
    mov 0x62,r4

LAB_ce336aa:
    mov.w @(DAT_ce33730,pc),r0
    mov 0x0A,r6
    mov.l @(PTR_ce33734,pc),r3
    mov 0x16,r5
    mov.b r4,@(r0,r14)
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
    mov.l @(PTR_ce33738,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce336dc:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce336e4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3373c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce336fe
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33740,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce336fe:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33706:
    mov r4,r3
    mov.l @(PTR_ce33744,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33718:
    mov r4,r3
    mov.l @(PTR_ce33748,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3372a:
    #data 0x03f9
DAT_ce3372c:
    #data 0x0327
DAT_ce3372e:
    #data 0x0255
DAT_ce33730:
    #data 0x01a1
    #align4

PTR_ce33734:
    #data loc_8c2896b0
PTR_ce33738:
    #data loc_8c034e8c
PTR_ce3373c:
    #data loc_8c034dee
PTR_ce33740:
    #data loc_8c051648
PTR_ce33744:
    #data PTR_ce35478
PTR_ce33748:
    #data PTR_ce35484

;=============================================

LAB_ce3374c:
    mov.w @(DAT_ce33814,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3376a
    mov.w @(DAT_ce33818,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33816,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3376a:
    mov.b @(0x7,r14),r0
    mov 0x44,r3
    fldi0 fr4
    mov 0x00,r4
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
    mov.w @(DAT_ce3381a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33824,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3381c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce337c8
    mov 0x0B,r13
    mova @(DAT_ce33828,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3382c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    bra LAB_ce337ce
    add 0x01,r13

LAB_ce337c8:
    mov.l @(PTR_ce33830,pc),r1
    jsr @r1
    mov r14,r4

LAB_ce337ce:
    mov.l @(PTR_ce33834,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33838,pc),r2
    mov 0x02,r5
    mov 0x01,r7
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce3383c,pc),r3
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce337f0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3381e,pc),r0
    mov r4,r14
    mov 0x02,r13
    mov.b r13,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce33820,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33814,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33840
    bra LAB_ce33842
    mov 0x02,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33814:
    #data 0x0255
DAT_ce33816:
    #data 0x00ff
DAT_ce33818:
    #data 0x03f0
DAT_ce3381a:
    #data 0x01a1
DAT_ce3381c:
    #data 0x01f9
DAT_ce3381e:
    #data 0x03f8
DAT_ce33820:
    #data 0x0328
    #align4

PTR_ce33824:
    #data loc_8c2896b0
DAT_ce33828:
    #data 0x41092492
DAT_ce3382c:
    #data 0xbf2b6db6
PTR_ce33830:
    #data loc_8c05115a
PTR_ce33834:
    #data loc_8c05218a
PTR_ce33838:
    #data loc_8c03544c
PTR_ce3383c:
    #data loc_8c034e8c

;=============================================

LAB_ce33840:
    mov 0x00,r2

LAB_ce33842:
    mov.w @(DAT_ce33964,pc),r0
    mov 0x5C,r1
    add r14,r1
    mov.l @(PTR_ce33970,pc),r3
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
    mov.w @(DAT_ce33966,pc),r0
    mov.b @(r0,r14),r2
    tst r13,r2
    bt/s LAB_ce338fa
    mov 0x00,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x02,r3
    mov.w @(DAT_ce33966,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce33968,pc),r0
    mov.l @(PTR_ce33974,pc),r4
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce338bc
    add 0x08,r4

LAB_ce338bc:
    mov.l @r4+,r3
    mova @(DAT_ce33978,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce3397c,pc),r0
    lds r3,FPUL
    fmov.s @r0,fr2
    mov 0x5C,r0
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33980,pc),r0
    mov.l @r4,r3
    fmov.s @r0,fr1
    mov 0x60,r0
    lds r3,FPUL
    float FPUL,fr3
    fmul fr1,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3396a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce338f4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce338f4:
    mov.w @(DAT_ce33968,pc),r0
    bra LAB_ce33940
    mov.b r13,@(r0,r14)

LAB_ce338fa:
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce33940
    mov.w @(DAT_ce3396c,pc),r0
    mov 0x01,r3
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33966,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33968,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce33928
    mova @(DAT_ce33984,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33988,pc),r0
    fmov.s fr3,@r15
    bra LAB_ce33932
    fmov.s @r0,fr3

LAB_ce33928:
    mova @(DAT_ce3398c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33990,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3

LAB_ce33932:
    mov.l @(PTR_ce33994,pc),r3
    mov 0x04,r0
    mov r15,r5
    fmov fr3,@(r0,r15)
    mov 0x01,r6
    jsr @r3
    mov r14,r4

LAB_ce33940:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3394a:
    mov.w @(DAT_ce3396e,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33998,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33964:
    #data 0x03f1
DAT_ce33966:
    #data 0x0141
DAT_ce33968:
    #data 0x01f9
DAT_ce3396a:
    #data 0x01d2
DAT_ce3396c:
    #data 0x03f0
DAT_ce3396e:
    #data 0x01f5
    #align4

PTR_ce33970:
    #data loc_8c034dee
PTR_ce33974:
    #data DAT_ce352b4
DAT_ce33978:
    #data 0x47800000
DAT_ce3397c:
    #data 0x3fd55555
DAT_ce33980:
    #data 0x40092492
DAT_ce33984:
    #data 0xc1d55555
DAT_ce33988:
    #data 0x432b6db6
DAT_ce3398c:
    #data 0xc2f00000
DAT_ce33990:
    #data 0x42dedb6d
PTR_ce33994:
    #data loc_8c050834
PTR_ce33998:
    #data PTR_ce3548c

;=============================================

LAB_ce3399c:
    mov.w @(DAT_ce33a46,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33a48,pc),r0
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
    mov.l @(PTR_ce33a4c,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33a4a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce339fe
    fldi0 fr4
    mov 0x60,r0
    fmov fr4,@(r0,r14)

LAB_ce339fe:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33a40
    mov.b @(0x7,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce33a54,pc),r3
    mov 0x0D,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce33a50,pc),r0
    fmov.s @r0,fr5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr5,fr3
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fdiv fr5,fr2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33a58,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33a40:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a46:
    #data 0x03f8
DAT_ce33a48:
    #data 0x0328
DAT_ce33a4a:
    #data 0x041c
    #align4

PTR_ce33a4c:
    #data loc_8c034dee
DAT_ce33a50:
    #data 0x41800000
PTR_ce33a54:
    #data loc_8c034e8c
PTR_ce33a58:
    #data loc_8c06a714

;=============================================

LAB_ce33a5c:
    mov.w @(DAT_ce33ba2,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33ba4,pc),r0
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
    mov.l @(PTR_ce33bb0,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33ba6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce33abe
    fldi0 fr4
    mov 0x60,r0
    fmov fr4,@(r0,r14)

LAB_ce33abe:
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce33b18
    mov.w @(DAT_ce33ba8,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33baa,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce33bb4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33bac,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33af4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33af4:
    mov 0x68,r0
    mov.l @(PTR_ce33bc0,pc),r3
    fmov fr4,@(r0,r14)
    mova @(DAT_ce33bb8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x01,r6
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33bbc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x08,r7
    mov r6,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33b18:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33b1e:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce33bb0,pc),r3
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
    mov.w @(DAT_ce33ba6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33b9c
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33bae,pc),r0
    mov.l @(PTR_ce33bc4,pc),r3
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33ba6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33bc8,pc),r2
    mov r14,r4
    mov 0x04,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33b9c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33ba2:
    #data 0x03f8
DAT_ce33ba4:
    #data 0x0328
DAT_ce33ba6:
    #data 0x041c
DAT_ce33ba8:
    #data 0x03f9
DAT_ce33baa:
    #data 0x0327
DAT_ce33bac:
    #data 0x01d2
DAT_ce33bae:
    #data 0x01f9
    #align4

PTR_ce33bb0:
    #data loc_8c034dee
DAT_ce33bb4:
    #data 0xc0855555
DAT_ce33bb8:
    #data 0x40ab6db6
DAT_ce33bbc:
    #data 0xbf700000
PTR_ce33bc0:
    #data loc_8c034f54
PTR_ce33bc4:
    #data loc_8c0511b4
PTR_ce33bc8:
    #data loc_8c034e8c

;=============================================

LAB_ce33bcc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33cb8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33bee
    mov.l @(PTR_ce33cbc,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33cc0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33bee:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33bf4:
    mov r4,r3
    mov.l @(PTR_ce33cc4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33c06:
    mov.w @(DAT_ce33ca8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33c22
    mov.w @(DAT_ce33cac,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33caa,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33c22:
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    fldi0 fr4
    mov 0x60,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33cae,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33cb0,pc),r0
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
    mov.w @(DAT_ce33cb2,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce33cc8,pc),r3
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
    mov.l @(PTR_ce33ccc,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33cd0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33cd4,pc),r2
    mov r14,r4
    mov 0x0E,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33c86:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33cb4,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33cb6,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33ca8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33cd8
    bra LAB_ce33cda
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33ca8:
    #data 0x0255
DAT_ce33caa:
    #data 0x00ff
DAT_ce33cac:
    #data 0x03f0
DAT_ce33cae:
    #data 0x01f9
DAT_ce33cb0:
    #data 0x041c
DAT_ce33cb2:
    #data 0x01a1
DAT_ce33cb4:
    #data 0x03f8
DAT_ce33cb6:
    #data 0x0328
    #align4

PTR_ce33cb8:
    #data loc_8c034dee
PTR_ce33cbc:
    #data loc_8c035162
PTR_ce33cc0:
    #data loc_8c051648
PTR_ce33cc4:
    #data PTR_ce35498
PTR_ce33cc8:
    #data loc_8c2896b0
PTR_ce33ccc:
    #data loc_8c05218a
PTR_ce33cd0:
    #data loc_8c05115a
PTR_ce33cd4:
    #data loc_8c034e8c

;=============================================

LAB_ce33cd8:
    mov 0x00,r3

LAB_ce33cda:
    mov.w @(DAT_ce33e20,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33e3c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33e22,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce33d18
    mov.w @(DAT_ce33e24,pc),r0
    mov 0x00,r4
    mov 0x01,r3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r3,r6
    mov.w @(DAT_ce33e22,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce33e40,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33e44,pc),r0
    mov.l @(PTR_ce33e48,pc),r2
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4

LAB_ce33d18:
    mov.w @(DAT_ce33e22,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce33d46
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33e22,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33e26,pc),r0
    mov.w @(DAT_ce33e28,pc),r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33e2a,pc),r0
    mov.l @(PTR_ce33e4c,pc),r3
    mov r0,r5
    add r14,r5
    mov.w r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce33d46:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33d4e:
    mov.w @(DAT_ce33e2c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33e2e,pc),r0
    mov.l @(PTR_ce33e3c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce33d80
    mov.w @(DAT_ce33e22,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce33d9c
    lds.l @r15+,PR
    mov.l @(PTR_ce33e50,pc),r2
    mov 0x07,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33d80:
    mov.w @(DAT_ce33e30,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce33e54,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33e32,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33d9c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33da2:
    mov r4,r3
    mov.l @(PTR_ce33e58,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33db4:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r3
    fldi0 fr4
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33e34,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x63,r3
    mov.w @(DAT_ce33e36,pc),r0
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
    mov.w @(DAT_ce33e38,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.l @(PTR_ce33e5c,pc),r3
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33e60,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33e64,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33e68,pc),r2
    mov r14,r4
    mov 0x2C,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33e20:
    #data 0x03f1
DAT_ce33e22:
    #data 0x0141
DAT_ce33e24:
    #data 0x03f0
DAT_ce33e26:
    #data 0x0200
DAT_ce33e28:
    #data 0x01e0
DAT_ce33e2a:
    #data 0x03ea
DAT_ce33e2c:
    #data 0x03f8
DAT_ce33e2e:
    #data 0x0328
DAT_ce33e30:
    #data 0x03f9
DAT_ce33e32:
    #data 0x0327
DAT_ce33e34:
    #data 0x01f9
DAT_ce33e36:
    #data 0x041c
DAT_ce33e38:
    #data 0x01a1
    #align4

PTR_ce33e3c:
    #data loc_8c034dee
DAT_ce33e40:
    #data 0x41200000
DAT_ce33e44:
    #data 0x4311b6db
PTR_ce33e48:
    #data loc_8c050834
PTR_ce33e4c:
    #data loc_8c0f047c
PTR_ce33e50:
    #data loc_8c0c04d0
PTR_ce33e54:
    #data loc_8c051648
PTR_ce33e58:
    #data PTR_ce354a4
PTR_ce33e5c:
    #data loc_8c2896b0
PTR_ce33e60:
    #data loc_8c05218a
PTR_ce33e64:
    #data loc_8c05115a
PTR_ce33e68:
    #data loc_8c034e8c

;=============================================

LAB_ce33e6c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33f7c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33e88
    mov.l @(PTR_ce33f80,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce33ed2
    nop

LAB_ce33e88:
    mov.w @(DAT_ce33f76,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce33eaa
    mov.w @(DAT_ce33f76,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce33f84,pc),r1
    mov 0x20,r5
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce33f88,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4

LAB_ce33eaa:
    mov.w @(DAT_ce33f76,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce33ed2
    mov.w @(DAT_ce33f76,pc),r0
    mov 0x02,r3
    mov r15,r5
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce33f8c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33f90,pc),r0
    mov.l @(PTR_ce33f94,pc),r2
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4

LAB_ce33ed2:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33eda:
    mov r4,r3
    mov.l @(PTR_ce33f98,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33eec:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r3
    fldi0 fr4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33f78,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33f7a,pc),r0
    mov.l @(PTR_ce33f9c,pc),r3
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
    mov.l @(PTR_ce33fa0,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33f2c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33f7c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33f46
    lds.l @r15+,PR
    mov.l @(PTR_ce33f80,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33f46:
    mov.w @(DAT_ce33f76,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33f5e
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x06,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce33f88,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33f5e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33f64:
    mov r4,r3
    mov.l @(PTR_ce33fa4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33f76:
    #data 0x0141
DAT_ce33f78:
    #data 0x01f9
DAT_ce33f7a:
    #data 0x041c
    #align4

PTR_ce33f7c:
    #data loc_8c034dee
PTR_ce33f80:
    #data loc_8c051648
PTR_ce33f84:
    #data loc_8c042008
PTR_ce33f88:
    #data loc_8c0c04d0
DAT_ce33f8c:
    #data 0xc2d55555
DAT_ce33f90:
    #data 0x42cdb6db
PTR_ce33f94:
    #data loc_8c050ea4
PTR_ce33f98:
    #data PTR_ce354ac
PTR_ce33f9c:
    #data loc_8c05218a
PTR_ce33fa0:
    #data loc_8c034e8c
PTR_ce33fa4:
    #data PTR_ce354b4

;=============================================

LAB_ce33fa8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x64,r3
    mov.w @(DAT_ce34104,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34106,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce34108,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3410c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce34110,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34114,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34118,pc),r2
    mov 0x20,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3411c,pc),r3
    mov r14,r4
    mov 0x02,r6
    mov 0x14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce34020:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34120,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3403a
    lds.l @r15+,PR
    mov.l @(PTR_ce34124,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3403a:
    mov.w @(DAT_ce3410a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34052
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x01,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce34128,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34052:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34058:
    mov r4,r3
    mov.l @(PTR_ce3412c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3406a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x65,r3
    mov.w @(DAT_ce34104,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34106,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce34108,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3410c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce34110,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34114,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34130,pc),r2
    mov 0x16,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3411c,pc),r3
    mov r14,r4
    mov 0x03,r6
    mov 0x14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce340e2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34120,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce340fc
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce34124,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce340fc:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34104:
    #data 0x041c
DAT_ce34106:
    #data 0x01f9
DAT_ce34108:
    #data 0x01a1
DAT_ce3410a:
    #data 0x0141
    #align4

PTR_ce3410c:
    #data loc_8c2896b0
PTR_ce34110:
    #data loc_8c05218a
PTR_ce34114:
    #data loc_8c05115a
PTR_ce34118:
    #data loc_8c042008
PTR_ce3411c:
    #data loc_8c034e8c
PTR_ce34120:
    #data loc_8c034dee
PTR_ce34124:
    #data loc_8c051648
PTR_ce34128:
    #data loc_8c0c04d0
PTR_ce3412c:
    #data PTR_ce354bc
PTR_ce34130:
    #data loc_8c04223a

;=============================================

LAB_ce34134:
    mov r4,r3
    mov.l @(PTR_ce34274,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34146:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x66,r3
    mov.w @(DAT_ce34268,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3426a,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3426c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34278,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3427c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34280,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34284,pc),r2
    mov r14,r4
    mov 0x04,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce341b6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34288,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce341d0
    lds.l @r15+,PR
    mov.l @(PTR_ce3428c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce341d0:
    mov.w @(DAT_ce3426e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce34212
    mov.w @(DAT_ce3426e,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce34290,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34294,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34270,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce3420c
    mov 0x29,r5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3420c:
    mov.l @(PTR_ce34298,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce34212:
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
    mov.w @(DAT_ce3426e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce34262
    mov.w @(DAT_ce3426e,pc),r0
    mov 0x02,r3
    fldi0 fr4
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce3429c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce34270,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3425a
    mova @(DAT_ce342a0,pc),r0
    fmov.s @r0,fr4

LAB_ce3425a:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce34262:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34268:
    #data 0x041c
DAT_ce3426a:
    #data 0x01f9
DAT_ce3426c:
    #data 0x01a1
DAT_ce3426e:
    #data 0x0141
DAT_ce34270:
    #data 0x01d2
    #align4

PTR_ce34274:
    #data PTR_ce354c4
PTR_ce34278:
    #data loc_8c2896b0
PTR_ce3427c:
    #data loc_8c05218a
PTR_ce34280:
    #data loc_8c05115a
PTR_ce34284:
    #data loc_8c034e8c
PTR_ce34288:
    #data loc_8c034dee
PTR_ce3428c:
    #data loc_8c051648
DAT_ce34290:
    #data 0xc0fd5555
DAT_ce34294:
    #data 0x3e200000
PTR_ce34298:
    #data loc_8c04223a
DAT_ce3429c:
    #data 0xc2555555
DAT_ce342a0:
    #data 0x42555555

;=============================================

LAB_ce342a4:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce34384,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce342be
    mov 0x05,r5
    cmp/eq 0x01,r0
    bt LAB_ce342be
    cmp/eq 0x02,r0
    bf LAB_ce342c2

LAB_ce342be:
    mov.w @(DAT_ce34386,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce342c2:
    mov.l @(PTR_ce3438c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce342c8:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce34384,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce342e2
    mov 0x05,r5
    cmp/eq 0x01,r0
    bt LAB_ce342e2
    cmp/eq 0x02,r0
    bf LAB_ce342e6

LAB_ce342e2:
    mov.w @(DAT_ce34386,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce342e6:
    mov.l @(PTR_ce3438c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce342ec:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce34384,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3430a
    mov 0x01,r5
    cmp/eq 0x01,r0
    bt LAB_ce34312
    cmp/eq 0x02,r0
    bt LAB_ce3431e
    bra LAB_ce3433c
    nop

LAB_ce3430a:
    mov.w @(DAT_ce34386,pc),r0
    mov 0x0A,r3
    bra LAB_ce34318
    mov.b r3,@(r0,r4)

LAB_ce34312:
    mov.w @(DAT_ce34386,pc),r0
    mov 0x0B,r2
    mov.b r2,@(r0,r4)

LAB_ce34318:
    mov.w @(DAT_ce34388,pc),r0
    bra LAB_ce3433c
    mov.b r5,@(r0,r4)

LAB_ce3431e:
    mov.w @(DAT_ce34386,pc),r0
    mov 0x0C,r2
    mov 0x02,r3
    mov.b r2,@(r0,r4)
    add 0xBA,r0
    mov.b r5,@(r0,r4)
    mov 0x22,r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce3438a,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce3433c
    mov 0x22,r0
    mov 0x06,r2
    mov.b r2,@(r0,r4)

LAB_ce3433c:
    mov.l @(PTR_ce3438c,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce34342:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce34384,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce34362
    cmp/eq 0x01,r0
    bt LAB_ce3436a
    cmp/eq 0x02,r0
    bt LAB_ce34372
    bra LAB_ce3437e
    nop

LAB_ce34362:
    mov.w @(DAT_ce34386,pc),r0
    mov 0x0A,r3
    bra LAB_ce34378
    mov.b r3,@(r0,r4)

LAB_ce3436a:
    mov.w @(DAT_ce34386,pc),r0
    mov 0x0B,r1
    bra LAB_ce34378
    mov.b r1,@(r0,r4)

LAB_ce34372:
    mov.w @(DAT_ce34386,pc),r0
    mov 0x0C,r3
    mov.b r3,@(r0,r4)

LAB_ce34378:
    mov.w @(DAT_ce34388,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce3437e:
    mov.l @(PTR_ce3438c,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34384:
    #data 0x04c9
DAT_ce34386:
    #data 0x01e9
DAT_ce34388:
    #data 0x01a3
DAT_ce3438a:
    #data 0x01d2
    #align4

PTR_ce3438c:
    #data loc_8c0530d8

;=============================================

LAB_ce34390:
    mov r4,r3
    mov.l @(PTR_ce344a0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce343a2:
    mov.b @(0x6,r4),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3449a,pc),r0
    mov.b r3,@(r0,r4)
    mova @(DAT_ce344a4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce3449c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce343c6
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce343c6:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce344a8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x4A,r3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce344ac,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r5
    fmov fr3,@(r0,r4)
    mov 0x22,r6
    mov.w @(DAT_ce3449e,pc),r0
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce344b0,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce344b4,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce3440a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce344b8,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce344bc,pc),r3
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
    bt LAB_ce3446c
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce344b4,pc),r3
    mov 0x23,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3446c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34472:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce344b8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34494
    mov.l @(PTR_ce344c0,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce344c4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34494:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3449a:
    #data 0x01f9
DAT_ce3449c:
    #data 0x01d2
DAT_ce3449e:
    #data 0x01a1
    #align4

PTR_ce344a0:
    #data PTR_ce354cc
DAT_ce344a4:
    #data 0x41f00000
DAT_ce344a8:
    #data 0x40892492
DAT_ce344ac:
    #data 0xbf4db6db
PTR_ce344b0:
    #data loc_8c2896b0
PTR_ce344b4:
    #data loc_8c034e8c
PTR_ce344b8:
    #data loc_8c034dee
PTR_ce344bc:
    #data loc_8c052ce2
PTR_ce344c0:
    #data loc_8c035162
PTR_ce344c4:
    #data loc_8c051854

;=============================================

LAB_ce344c8:
    mov.w @(DAT_ce345e0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3450a
    mov.w @(DAT_ce345e2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce3450a
    mov.w @(DAT_ce345e4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3450a
    mov.w @(DAT_ce345e6,pc),r0
    mov.w @(DAT_ce345e8,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce3450a
    mov.w @(DAT_ce345ea,pc),r0
    mov.l @(PTR_ce345f8,pc),r13
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34520
    mov.w @(DAT_ce345e2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3450e

LAB_ce3450a:
    bra LAB_ce34550
    mov 0x00,r0

LAB_ce3450e:
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3454c
    mov r0,r4
    mov.w @(DAT_ce345ec,pc),r0
    mov 0x01,r3
    bra LAB_ce3454c
    mov.b r3,@(r0,r14)

LAB_ce34520:
    mov.w @(DAT_ce345e2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3453c
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3454c
    mov r0,r4
    mov.w @(DAT_ce345ec,pc),r0
    mov 0x02,r3
    bra LAB_ce3454c
    mov.b r3,@(r0,r14)

LAB_ce3453c:
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3454c
    mov r0,r4
    mov.w @(DAT_ce345ec,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)

LAB_ce3454c:
    mov r4,r0
    nop

LAB_ce34550:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34558:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce345ee,pc),r3
    mov r4,r14
    mov.w @(DAT_ce345f0,pc),r0
    add r14,r3
    mov.l r3,@r15
    mov.l @(PTR_ce345fc,pc),r3
    mov.l @(r0,r14),r13
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce345f2,pc),r0
    mov 0x03,r2
    mov r14,r4
    mov r13,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.l @r15,r3
    mov.b r0,@(0xc,r3)
    mov.w @(DAT_ce345f4,pc),r0
    mov.w @(r0,r14),r3
    mov.w r3,@(r0,r13)
    mov 0x01,r3
    mov.w @(r0,r13),r2
    xor r3,r2
    mov.w r2,@(r0,r13)
    mov.b @(r0,r13),r1
    mov.w @(DAT_ce345f6,pc),r0
    mov.b r1,@(r0,r13)
    add 0x25,r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce34600,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r1
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r1
    mov.l @r15+,r14

LAB_ce345ac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34604,pc),r3
    mov r4,r14
    mov.l r5,@r15
    mov 0x38,r5
    jsr @r3
    mov.l @r15,r4
    mov.l @(PTR_ce34608,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3460c,pc),r3
    mov 0x06,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x0F,r5
    mov 0x00,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce34610,pc),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce345e0:
    #data 0x0200
DAT_ce345e2:
    #data 0x01f9
DAT_ce345e4:
    #data 0x01a3
DAT_ce345e6:
    #data 0x01fa
DAT_ce345e8:
    #data 0x0c00
DAT_ce345ea:
    #data 0x01fe
DAT_ce345ec:
    #data 0x01f7
DAT_ce345ee:
    #data 0x02a4
DAT_ce345f0:
    #data 0x01c8
DAT_ce345f2:
    #data 0x01ed
DAT_ce345f4:
    #data 0x0130
DAT_ce345f6:
    #data 0x01d2
    #align4

PTR_ce345f8:
    #data loc_8c045790
PTR_ce345fc:
    #data loc_8c056f2a
PTR_ce34600:
    #data PTR_ce354d8
PTR_ce34604:
    #data loc_8c050552
PTR_ce34608:
    #data loc_8c05064e
PTR_ce3460c:
    #data loc_8c02fec4
PTR_ce34610:
    #data loc_8c034e8c

;=============================================

LAB_ce34614:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34760,pc),r3
    mov r4,r14
    mov.l r5,@r15
    mov 0x38,r5
    jsr @r3
    mov.l @r15,r4
    mov.l @(PTR_ce34764,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.l @r15,r3
    mov 0x00,r0
    mov 0x05,r6
    mov.w r0,@(0x1c,r3)
    mov r6,r5
    mov.l @(PTR_ce34768,pc),r3
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x0F,r5
    mov 0x02,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3476c,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3464e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34760,pc),r3
    mov r4,r14
    mov.l r5,@r15
    mov 0x38,r5
    jsr @r3
    mov.l @r15,r4
    mov.l @(PTR_ce34764,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34768,pc),r3
    mov 0x05,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x0F,r5
    mov 0x04,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3476c,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce34682:
    mov.w @(DAT_ce3474e,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov 0x03,r2
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0x0A,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce34770,pc),r0
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce346a4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce34750,pc),r13
    sts.l PR,@-r15
    mov.w @(DAT_ce34752,pc),r0
    add r14,r13
    mov.l @(PTR_ce34774,pc),r3
    jsr @r3
    mov.l @(r0,r14),r12
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce346f2
    mov.b @(0xc,r13),r0
    cmp/pl r0
    bt LAB_ce346f2
    mov.w @(DAT_ce34754,pc),r0
    mov 0x01,r3
    mov r14,r4
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov 0x80,r2
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce34756,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    add 0x6D,r0
    mov.b r2,@(r0,r14)
    mov 0x00,r1
    add 0x50,r0
    mov.l @(PTR_ce34778,pc),r2
    mov.b r1,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce346f2:
    mov.b @(0xc,r13),r0
    cmp/pl r0
    bf LAB_ce34728
    mov.l @(PTR_ce3477c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce34708
    mov.w @(DAT_ce34758,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce34708:
    mov.w @(DAT_ce3475a,pc),r0
    mov.l @(PTR_ce34780,pc),r2
    mov.w @(r0,r12),r3
    add 0xFF,r3
    mov.w r3,@(r0,r12)
    jsr @r2
    mov r12,r4
    tst r0,r0
    bt LAB_ce34728
    mov.l @(PTR_ce3476c,pc),r3
    mov 0xFF,r0
    mov 0x0F,r5
    mov.b r0,@(0xc,r13)
    mov 0x01,r6
    jsr @r3
    mov r14,r4

LAB_ce34728:
    mov.w @(DAT_ce3475c,pc),r0
    mov r12,r5
    lds.l @r15+,PR
    mov.b @(r0,r14),r2
    mov r14,r4
    mov.l @(PTR_ce34784,pc),r0
    mov.l @r15+,r12
    shar r2
    shll2 r2
    mov.l @r15+,r13
    mov.l @(r0,r2),r1
    jmp @r1
    mov.l @r15+,r14

LAB_ce34742:
    mov.l @(PTR_ce34788,pc),r3
    jmp @r3
    nop

LAB_ce34748:
    mov.l @(PTR_ce3478c,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3474e:
    #data 0x01ea
DAT_ce34750:
    #data 0x02a4
DAT_ce34752:
    #data 0x01c8
DAT_ce34754:
    #data 0x01d2
DAT_ce34756:
    #data 0x0130
DAT_ce34758:
    #data 0x0142
DAT_ce3475a:
    #data 0x025c
DAT_ce3475c:
    #data 0x0141
    #align4

PTR_ce34760:
    #data loc_8c050552
PTR_ce34764:
    #data loc_8c05064e
PTR_ce34768:
    #data loc_8c02fec4
PTR_ce3476c:
    #data loc_8c034e8c
PTR_ce34770:
    #data PTR_ce354e4
PTR_ce34774:
    #data loc_8c034dee
PTR_ce34778:
    #data loc_8c051648
PTR_ce3477c:
    #data loc_8c050682
PTR_ce34780:
    #data loc_8c050610
PTR_ce34784:
    #data PTR_ce354f0
PTR_ce34788:
    #data loc_8c04cc1c
PTR_ce3478c:
    #data loc_8c04ce54

;=============================================

LAB_ce34790:
    mov.w @(DAT_ce348e0,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r4)
    add 0x73,r0
    mov.l r4,@(r0,r5)
    add 0x42,r0
    mov 0x01,r3
    mov.b r3,@(r0,r5)
    add 0xDC,r0
    mov.b @(r0,r4),r2
    mov 0x20,r3
    mov.b r2,@(r0,r5)
    add 0xCF,r0
    mov.b r3,@(r0,r5)
    add 0x58,r0
    mov.l @(PTR_ce348e8,pc),r3
    mov 0x02,r2
    jmp @r3
    mov.b r2,@(r0,r5)

LAB_ce347b6:
    rts
    nop

LAB_ce347ba:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce348ec,pc),r3
    mov 0x06,r6
    mov r4,r14
    mov r5,r12
    jsr @r3
    mov r6,r5
    mov r14,r2
    mov.l @(PTR_ce348f0,pc),r3
    mov r15,r13
    add 0x34,r2
    mov r13,r1
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce348e2,pc),r0
    mov r12,r5
    mov.l @(PTR_ce348f4,pc),r3
    fmov.s @(r0,r12),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r12)
    jsr @r3
    mov r14,r4
    mov 0x34,r0
    fmov.s @r13,fr6
    fmov.s @(r0,r14),fr3
    mov 0x04,r0
    fldi1 fr5
    fadd fr5,fr5
    fsub fr6,fr3
    mov.l @(DAT_ce348f8,pc),r2
    fldi1 fr7
    lds r2,FPUL
    fmov fr3,fr4
    fdiv fr5,fr4
    fmov.s @(r0,r13),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsub fr3,fr2
    fmov fr5,fr3
    fmov fr2,fr5
    fdiv fr3,fr5
    fsts FPUL,fr3
    fmov fr4,fr2
    fadd fr7,fr2
    fcmp/gt fr2,fr3
    bt/s LAB_ce34824
    mov 0x02,r4
    fadd fr3,fr3
    fsub fr3,fr2

LAB_ce34824:
    ftrc fr2,FPUL
    sts FPUL,r3
    cmp/hi r4,r3
    bt LAB_ce34846
    mov.l @(DAT_ce348f8,pc),r2
    fmov fr5,fr3
    fadd fr7,fr3
    lds r2,FPUL
    fsts FPUL,fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3483e
    fadd fr2,fr2
    fsub fr2,fr3

LAB_ce3483e:
    ftrc fr3,FPUL
    sts FPUL,r3
    cmp/hi r4,r3
    bf LAB_ce3485c

LAB_ce34846:
    fadd fr4,fr6
    mov 0x34,r0
    mov 0x08,r3
    fmov fr6,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r13),fr3
    mov 0x38,r0
    fadd fr5,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce348e4,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce3485c:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34868:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce348e0,pc),r0
    mov r15,r13
    mov r4,r14
    add 0x04,r13
    mov 0x0C,r3
    mov r14,r2
    mov r13,r1
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov r3,r0
    nop
    mov.l @(PTR_ce348f0,pc),r3
    jsr @r3
    add 0x34,r2
    mov.l @(PTR_ce348f4,pc),r3
    mov.l @r15,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce348fc,pc),r0
    fmov.s @r13,fr3
    fmov.s @r0,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    mov 0x5C,r0
    mov r14,r1
    mov.l @(PTR_ce348f0,pc),r3
    fsub fr3,fr2
    mov r13,r2
    add 0x34,r1
    fdiv fr4,fr2
    fmov fr2,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r13),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x60,r0
    fsub fr3,fr2
    fdiv fr4,fr2
    fldi0 fr4
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov 0x0C,r0
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov.l @r15,r5
    bsr FUN_ce34900
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce348e0:
    #data 0x0141
DAT_ce348e2:
    #data 0x041c
DAT_ce348e4:
    #data 0x0142
    #align4

PTR_ce348e8:
    #data loc_8c02fd26
PTR_ce348ec:
    #data loc_8c02fec4
PTR_ce348f0:
    #data loc_8c1294c8
PTR_ce348f4:
    #data loc_8c04ce54
DAT_ce348f8:
    #data 0x4f000000
DAT_ce348fc:
    #data 0x41800000

;=============================================

FUN_ce34900:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x5C,r1
    mov r4,r14
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
    bt LAB_ce34978
    mov.w @(DAT_ce34a06,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce34a1c,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mova @(DAT_ce34a14,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34a18,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34a08,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce34a20,pc),r3
    mov 0x0A,r2
    mov r6,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce34978:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34980:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x05,r6
    mov.l @(PTR_ce34a20,pc),r3
    mov.l r5,@r15
    mov r4,r14
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34a0a,pc),r0
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce34a24,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce349aa:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34a0e,pc),r0
    mov r4,r14
    mov 0x00,r3
    mov.w @(DAT_ce34a0c,pc),r4
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    mov.l @(PTR_ce34a24,pc),r3
    mov r5,r13
    add r14,r4
    mov r13,r5
    mov.b r0,@(0xc,r4)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34a10,pc),r0
    mov 0x21,r3
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce34a28,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce34a2c,pc),r0
    mov.l @(PTR_ce34a34,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34a30,pc),r0
    mov r15,r5
    mov 0x02,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34a38,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34a06:
    #data 0x0142
DAT_ce34a08:
    #data 0x01a0
DAT_ce34a0a:
    #data 0x041c
DAT_ce34a0c:
    #data 0x02a4
DAT_ce34a0e:
    #data 0x0141
DAT_ce34a10:
    #data 0x01b4
    #align4

DAT_ce34a14:
    #data 0x41d55555
DAT_ce34a18:
    #data 0x42892492
PTR_ce34a1c:
    #data loc_8c103660
PTR_ce34a20:
    #data loc_8c02fec4
PTR_ce34a24:
    #data loc_8c04cc1c
PTR_ce34a28:
    #data loc_8c05933c
DAT_ce34a2c:
    #data 0x42a00000
DAT_ce34a30:
    #data 0x42092492
PTR_ce34a34:
    #data loc_8c0fdab6
PTR_ce34a38:
    #data loc_8c04223a

;=============================================

LAB_ce34a3c:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce34b02,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.l @(r0,r14),r12
    mov.w @(DAT_ce34b04,pc),r0
    mov.w @(DAT_ce34b00,pc),r13
    mov.b @(r0,r14),r0
    cmp/eq 0x08,r0
    bf/s LAB_ce34a5e
    add r14,r13
    mov.w @(DAT_ce34b06,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce34a70

LAB_ce34a5e:
    mov.b @(0xd,r13),r0
    tst r0,r0
    bt LAB_ce34a70
    mov.w @(DAT_ce34b04,pc),r0
    mov 0x08,r3
    mov 0x04,r2
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r2,@(r0,r14)

LAB_ce34a70:
    mov.l @(PTR_ce34b0c,pc),r3
    mov 0x00,r0
    mov.b r0,@(0xd,r13)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34aa0
    mov.b @(0xc,r13),r0
    cmp/pz r0
    bt LAB_ce34aa0
    mov.w @(DAT_ce34b08,pc),r0
    mov 0x80,r2
    mov 0x00,r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0x50,r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce34b10,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce34aa0:
    mov.b @(0xc,r13),r0
    cmp/pl r0
    bf LAB_ce34ad6
    mov.l @(PTR_ce34b14,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce34ab6
    mov.w @(DAT_ce34b06,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce34ab6:
    mov.w @(DAT_ce34b0a,pc),r0
    mov.l @(PTR_ce34b18,pc),r2
    mov.w @(r0,r12),r3
    add 0xFF,r3
    mov.w r3,@(r0,r12)
    jsr @r2
    mov r12,r4
    tst r0,r0
    bt LAB_ce34ad6
    mov.l @(PTR_ce34b1c,pc),r3
    mov 0xFF,r0
    mov 0x0F,r5
    mov.b r0,@(0xc,r13)
    mov 0x03,r6
    jsr @r3
    mov r14,r4

LAB_ce34ad6:
    mov.w @(DAT_ce34b04,pc),r0
    mov r12,r5
    lds.l @r15+,PR
    mov.b @(r0,r14),r2
    mov r14,r4
    mov.l @(PTR_ce34b20,pc),r0
    mov.l @r15+,r12
    shar r2
    shll2 r2
    mov.l @r15+,r13
    mov.l @(r0,r2),r1
    jmp @r1
    mov.l @r15+,r14

LAB_ce34af0:
    mov.l @(PTR_ce34b24,pc),r3
    jmp @r3
    nop

LAB_ce34af6:
    mov.w @(0x1c,r5),r0
    mov.l @(PTR_ce34b28,pc),r3
    xor 0x01,r0
    jmp @r3
    mov.w r0,@(0x1c,r5)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34b00:
    #data 0x02a4
DAT_ce34b02:
    #data 0x01c8
DAT_ce34b04:
    #data 0x0141
DAT_ce34b06:
    #data 0x0142
DAT_ce34b08:
    #data 0x019d
DAT_ce34b0a:
    #data 0x025c
    #align4

PTR_ce34b0c:
    #data loc_8c034dee
PTR_ce34b10:
    #data loc_8c052dac
PTR_ce34b14:
    #data loc_8c050682
PTR_ce34b18:
    #data loc_8c050610
PTR_ce34b1c:
    #data loc_8c034e8c
PTR_ce34b20:
    #data PTR_ce35514
PTR_ce34b24:
    #data loc_8c04cc1c
PTR_ce34b28:
    #data loc_8c04ce54

;=============================================

LAB_ce34b2c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34c70,pc),r3
    mov r4,r14
    jsr @r3
    mov r5,r13
    mov.w @(DAT_ce34c62,pc),r0
    mov 0x10,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce34c74,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34c78,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34c7c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34c64,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34b70
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce34b70:
    mov.w @(DAT_ce34c66,pc),r0
    mov 0x02,r3
    mov.w @(DAT_ce34c64,pc),r1
    mov 0x02,r5
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0xDC,r0
    mov.b @(r0,r14),r0
    add r13,r1
    mov 0x22,r3
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce34c68,pc),r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce34c80,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34c84,pc),r2
    mov 0x04,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce34c88,pc),r0
    mov.l @(PTR_ce34c90,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34c8c,pc),r0
    mov r15,r5
    mov 0x02,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34c94,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34bc4:
    rts
    nop

LAB_ce34bc8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34c98,pc),r3
    mov 0x06,r6
    mov r4,r13
    mov r5,r14
    jsr @r3
    mov r6,r5
    mov.w @(DAT_ce34c62,pc),r0
    mov 0x06,r2
    mov.l @(PTR_ce34c9c,pc),r3
    mov 0x0D,r5
    mov.b r2,@(r0,r13)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov 0x09,r6
    mov.w @(DAT_ce34c6a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34c6c,pc),r4
    mov.l @(DAT_ce34ca0,pc),r3
    add r14,r4
    mov.l @(0x4,r4),r0
    mov.l @r4,r2
    and 0x01,r0
    and r3,r2
    or r0,r2
    tst r2,r2
    bt LAB_ce34c20
    mov.w @(DAT_ce34c64,pc),r0
    mov 0x01,r2
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)
    mov.w @(DAT_ce34c6e,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    extu.b r0,r0
    mov.w r0,@r1

LAB_ce34c20:
    mov.w @(DAT_ce34c66,pc),r0
    mov 0x23,r3
    mov.l r13,@(r0,r14)
    add 0xED,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34ca4,pc),r3
    jsr @r3
    mov r13,r4
    mov.l @(PTR_ce34c80,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r13,r4
    mov.l @(PTR_ce34c84,pc),r3
    mov 0x03,r5
    jsr @r3
    mov r13,r4
    mova @(DAT_ce34ca8,pc),r0
    mov.l @(PTR_ce34c90,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34c8c,pc),r0
    mov r15,r5
    mov 0x02,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r13,r4
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34c62:
    #data 0x0141
DAT_ce34c64:
    #data 0x01d2
DAT_ce34c66:
    #data 0x01b4
DAT_ce34c68:
    #data 0x01a1
DAT_ce34c6a:
    #data 0x041c
DAT_ce34c6c:
    #data 0x0414
DAT_ce34c6e:
    #data 0x0130
    #align4

PTR_ce34c70:
    #data loc_8c02fd26
DAT_ce34c74:
    #data 0x41555555
DAT_ce34c78:
    #data 0x41092492
DAT_ce34c7c:
    #data 0xbf092492
PTR_ce34c80:
    #data loc_8c04223a
PTR_ce34c84:
    #data loc_8c042008
DAT_ce34c88:
    #data 0xc2d55555
DAT_ce34c8c:
    #data 0x42092492
PTR_ce34c90:
    #data loc_8c0fdab6
PTR_ce34c94:
    #data loc_8c0423fc
PTR_ce34c98:
    #data loc_8c02fec4
PTR_ce34c9c:
    #data loc_8c034e8c
DAT_ce34ca0:
    #data 0x90001010
PTR_ce34ca4:
    #data loc_8c05933c
DAT_ce34ca8:
    #data 0xc3200000

;=============================================

LAB_ce34cac:
    mov.w @(DAT_ce34dfc,pc),r0
    mov 0x0C,r3
    mov.l @(DAT_ce34e14,pc),r1
    mov.b r3,@(r0,r4)
    mov 0x34,r0
    fmov.s @(r0,r5),fr2
    fmov.s @(r0,r4),fr3
    mova @(DAT_ce34e08,pc),r0
    lds r1,FPUL
    mov 0x5C,r1
    fsub fr3,fr2
    fmov.s @r0,fr3
    mov 0x5C,r0
    add r4,r1
    fdiv fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x68,r0
    fldi0 fr2
    fmov fr2,@(r0,r4)
    mova @(DAT_ce34e0c,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r4)
    mova @(DAT_ce34e10,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r4)
    mov 0x34,r0
    fmov.s @r1,fr1
    fsts FPUL,fr2
    fmul fr2,fr1
    fmov.s @(r0,r4),fr0
    fsub fr1,fr0
    fmov fr0,@(r0,r4)

LAB_ce34cf0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x24,r0
    mov r4,r14
    mov.b @(r0,r5),r3
    mov 0x5C,r1
    add r14,r1
    add 0xFF,r3
    mov.b r3,@(r0,r14)
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
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce34dfe,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce34d90
    mov.w @(DAT_ce34dfe,pc),r0
    mov 0x5C,r1
    add r14,r1
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov 0x01,r3
    fmov fr3,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce34e00,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b @(r0,r14),r0
    cmp/eq 0x0C,r0
    bf LAB_ce34d90
    mov.l @(PTR_ce34e18,pc),r2
    mov 0x01,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mov 0x04,r0
    mov.l @(PTR_ce34e1c,pc),r3
    fldi0 fr4
    mov r15,r5
    fmov.s fr4,@r15
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34e02,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce34e20,pc),r3
    mov 0x03,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce34d90:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34d98:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34dfc,pc),r0
    mov r4,r14
    mov 0x00,r3
    mov.w @(DAT_ce34e04,pc),r4
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    mov.l @(PTR_ce34e24,pc),r3
    mov r5,r13
    add r14,r4
    mov r13,r5
    mov.b r0,@(0xc,r4)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34e06,pc),r0
    mov 0x24,r3
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce34e28,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34e20,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34e2c,pc),r3
    mov 0x02,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce34e30,pc),r0
    mov.l @(PTR_ce34e38,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34e34,pc),r0
    mov r15,r5
    mov 0x02,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34dfc:
    #data 0x0141
DAT_ce34dfe:
    #data 0x041c
DAT_ce34e00:
    #data 0x0142
DAT_ce34e02:
    #data 0x01a0
DAT_ce34e04:
    #data 0x02a4
DAT_ce34e06:
    #data 0x01b4
    #align4

DAT_ce34e08:
    #data 0x42000000
DAT_ce34e0c:
    #data 0x41092492
DAT_ce34e10:
    #data 0xbf092492
DAT_ce34e14:
    #data 0x40800000
PTR_ce34e18:
    #data loc_8c02fec4
PTR_ce34e1c:
    #data loc_8c103660
PTR_ce34e20:
    #data loc_8c042008
PTR_ce34e24:
    #data loc_8c04cc1c
PTR_ce34e28:
    #data loc_8c05933c
PTR_ce34e2c:
    #data loc_8c04223a
DAT_ce34e30:
    #data 0xc2a00000
DAT_ce34e34:
    #data 0x41892492
PTR_ce34e38:
    #data loc_8c0fdab6

;=============================================

LAB_ce34e3c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce34f50,pc),r13
    sts.l PR,@-r15
    mov.w @(DAT_ce34f52,pc),r0
    add r14,r13
    mov.l @(PTR_ce34f64,pc),r3
    jsr @r3
    mov.l @(r0,r14),r12
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34e78
    mov.b @(0xc,r13),r0
    cmp/pl r0
    bt LAB_ce34e78
    mov.w @(DAT_ce34f54,pc),r0
    mov 0x80,r2
    mov 0x00,r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0x50,r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce34f68,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce34e78:
    mov.b @(0xc,r13),r0
    cmp/pl r0
    bf LAB_ce34eae
    mov.l @(PTR_ce34f6c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce34e8e
    mov.w @(DAT_ce34f56,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce34e8e:
    mov.w @(DAT_ce34f58,pc),r0
    mov.l @(PTR_ce34f70,pc),r2
    mov.w @(r0,r12),r3
    add 0xFF,r3
    mov.w r3,@(r0,r12)
    jsr @r2
    mov r12,r4
    tst r0,r0
    bt LAB_ce34eae
    mov.l @(PTR_ce34f74,pc),r3
    mov 0xFF,r0
    mov 0x0F,r5
    mov.b r0,@(0xc,r13)
    mov 0x05,r6
    jsr @r3
    mov r14,r4

LAB_ce34eae:
    mov.w @(DAT_ce34f5a,pc),r0
    mov r12,r5
    lds.l @r15+,PR
    mov.b @(r0,r14),r2
    mov r14,r4
    mov.l @(PTR_ce34f78,pc),r0
    mov.l @r15+,r12
    shar r2
    shll2 r2
    mov.l @r15+,r13
    mov.l @(r0,r2),r1
    jmp @r1
    mov.l @r15+,r14

LAB_ce34ec8:
    sts.l PR,@-r15
    add 0xF8,r15
    mov 0x01,r6
    mov.l @(PTR_ce34f7c,pc),r3
    mov.l r4,@r15
    mov.l r5,@(0x4,r15)
    mov r6,r5
    jsr @r3
    mov.l @r15,r4
    mov.l @r15,r4
    mov.l @(0x4,r15),r5
    add 0x08,r15
    mov.l @(PTR_ce34f80,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34ee6:
    mov.l @(PTR_ce34f84,pc),r3
    jmp @r3
    nop

LAB_ce34eec:
    mov.w @(DAT_ce34f5a,pc),r0
    mov 0x0E,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mova @(DAT_ce34f88,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    mov.l @(PTR_ce34f94,pc),r3
    mov 0x00,r5
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34f8c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34f90,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34f5c,pc),r0
    mov 0x01,r3
    mov.w @(DAT_ce34f5e,pc),r1
    mov 0x02,r2
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0xDC,r0
    mov.b @(r0,r14),r0
    add r13,r1
    mov 0x25,r3
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce34f60,pc),r0
    mov.b r3,@(r0,r13)
    add 0x58,r0
    mov.b r2,@(r0,r13)
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34f4c:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34f50:
    #data 0x02a4
DAT_ce34f52:
    #data 0x01c8
DAT_ce34f54:
    #data 0x019d
DAT_ce34f56:
    #data 0x0142
DAT_ce34f58:
    #data 0x025c
DAT_ce34f5a:
    #data 0x0141
DAT_ce34f5c:
    #data 0x01b4
DAT_ce34f5e:
    #data 0x01d2
DAT_ce34f60:
    #data 0x01a1
    #align4

PTR_ce34f64:
    #data loc_8c034dee
PTR_ce34f68:
    #data loc_8c05176e
PTR_ce34f6c:
    #data loc_8c050682
PTR_ce34f70:
    #data loc_8c050610
PTR_ce34f74:
    #data loc_8c034e8c
PTR_ce34f78:
    #data PTR_ce3553c
PTR_ce34f7c:
    #data loc_8c02fec4
PTR_ce34f80:
    #data loc_8c04cc1c
PTR_ce34f84:
    #data loc_8c04ce54
DAT_ce34f88:
    #data 0x40a00000
DAT_ce34f8c:
    #data 0x412b6db6
DAT_ce34f90:
    #data 0xbf2b6db6
PTR_ce34f94:
    #data loc_8c0c04d0

;=============================================

LAB_ce34f98:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov 0x06,r6
    mov.l @(PTR_ce350e8,pc),r3
    mov.l r5,@r15
    mov r4,r14
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov r15,r13
    mov r14,r2
    mov.l @(PTR_ce350ec,pc),r3
    add 0x04,r13
    add 0x34,r2
    mov r13,r1
    jsr @r3
    mov 0x0C,r0
    mov.l @(PTR_ce350f0,pc),r3
    mov.l @r15,r5
    jsr @r3
    mov r14,r4
    mov 0x34,r0
    fmov.s @r13,fr0
    fmov.s @(r0,r14),fr3
    ftrc fr3,FPUL
    sts FPUL,r3
    ftrc fr0,FPUL
    sts FPUL,r2
    cmp/eq r2,r3
    bf LAB_ce34fec
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov 0x04,r0
    ftrc fr3,FPUL
    fmov.s @(r0,r13),fr3
    sts FPUL,r3
    ftrc fr3,FPUL
    sts FPUL,r2
    cmp/eq r2,r3
    bt LAB_ce35016

LAB_ce34fec:
    mov 0x34,r0
    fldi1 fr4
    fmov.s @(r0,r14),fr3
    fadd fr4,fr4
    fmov fr0,fr2
    mov 0x08,r3
    fsub fr0,fr3
    fdiv fr4,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r13),fr5
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    fmov fr5,fr2
    fsub fr5,fr3
    fdiv fr4,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce350e0,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce35016:
    add 0x10,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce35020:
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
    rts
    fmov fr2,@(r0,r4)

LAB_ce3505a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce350e4,pc),r0
    mov r4,r14
    mov 0x00,r3
    mov.w @(DAT_ce350e2,pc),r4
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    mov.l @(PTR_ce350f4,pc),r3
    mov r5,r13
    add r14,r4
    mov r13,r5
    mov.b r0,@(0xc,r4)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce350e6,pc),r0
    mov 0x26,r3
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce350f8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce350fc,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce35100,pc),r0
    mov.l @(PTR_ce35108,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce35104,pc),r0
    mov r15,r5
    mov 0x02,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce350b6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce350e4,pc),r0
    mov r4,r14
    mov 0x0A,r3
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov 0x05,r5
    mov.l @(PTR_ce350fc,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3510c,pc),r2
    jsr @r2
    nop
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce35020
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce350e0:
    #data 0x0142
DAT_ce350e2:
    #data 0x02a4
DAT_ce350e4:
    #data 0x0141
DAT_ce350e6:
    #data 0x01b4
    #align4

PTR_ce350e8:
    #data loc_8c02fec4
PTR_ce350ec:
    #data loc_8c1294c8
PTR_ce350f0:
    #data loc_8c04ce54
PTR_ce350f4:
    #data loc_8c04cc1c
PTR_ce350f8:
    #data loc_8c05933c
PTR_ce350fc:
    #data loc_8c04223a
DAT_ce35100:
    #data 0xc2a00000
DAT_ce35104:
    #data 0x41892492
PTR_ce35108:
    #data loc_8c0fdab6
PTR_ce3510c:
    #data loc_8c02fd26

;=============================================

LAB_ce35110:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce3516a,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mova @(DAT_ce35170,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    mov r15,r5
    mov.l @(PTR_ce35178,pc),r3
    fmov fr3,@(r0,r15)
    mova @(DAT_ce35174,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    add 0x04,r5
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3516c,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce3517c,pc),r3
    mov.b r2,@(r0,r14)
    mov.l @r15,r5
    jsr @r3
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce35150:
    mov.w @(DAT_ce3516e,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce35166
    mov.w @(0x1c,r4),r0
    tst r0,r0
    bt LAB_ce35166
    mov.l @(PTR_ce35180,pc),r0
    jmp @r0
    nop

LAB_ce35166:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3516a:
    #data 0x0141
DAT_ce3516c:
    #data 0x01a0
DAT_ce3516e:
    #data 0x01f7
    #align4

DAT_ce35170:
    #data 0xc1d55555
DAT_ce35174:
    #data 0x42892492
PTR_ce35178:
    #data loc_8c103660
PTR_ce3517c:
    #data loc_8c04ce54
PTR_ce35180:
    #data loc_8c034dee
DAT_ce35184:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce35194:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
    #data 0x0003
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce351b4:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce351c4:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
    #data 0x0003
    #data 0x8100
    #data 0x0006
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0060
    #data 0x0003
    #data 0x9100
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce351f4:
    #data 0x0201
    #data 0x0200
DAT_ce351f8:
    #data 0x02ff
    #data 0x0201
DAT_ce351fc:
    #data 0xffff
    #data 0xffff
DAT_ce35200:
    #data 0x0201
    #data 0x0201
DAT_ce35204:
    #data 0x02ff
    #data 0x02ff
DAT_ce35208:
    #data 0xffff
    #data 0xffff
DAT_ce3520c:
    #data 0x0000
    #data 0xfffc
    #data 0x4000
    #data 0x0000
    #data 0x0000
    #data 0x0008
    #data 0x3000
    #data 0x0000
    #data 0x0000
    #data 0xfff4
    #data 0x4000
    #data 0x0000
    #data 0x0000
    #data 0x0008
    #data 0x3000
    #data 0x0000
DAT_ce3522c:
    #data 0x0000
    #data 0x0000
    #data 0x8000
    #data 0x0000
    #data 0x8000
    #data 0x0005
    #data 0x8000
    #data 0xffff
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0002
    #data 0x8000
    #data 0x000d
    #data 0x0000
    #data 0xffff
    #align4

PTR_ce3524c:
    #data DAT_ce3520c
PTR_ce35250:
    #data DAT_ce3522c
DAT_ce35254:
    #data 0x0300
    #data 0x0007
    #data 0x0000
    #data 0x0000
    #data 0x0201
    #data 0x0008
    #data 0x0000
    #data 0x0000
    #data 0x0300
    #data 0x0007
    #data 0x0405
    #data 0x0006
    #data 0x0201
    #data 0x0008
    #data 0x0000
    #data 0x0000
DAT_ce35274:
    #data 0x0300
    #data 0x0007
    #data 0x0000
    #data 0x0000
    #data 0x0201
    #data 0x0008
    #data 0x0000
    #data 0x0000
DAT_ce35284:
    #data 0x0300
    #data 0x0000
    #data 0x0405
    #data 0x0000
    #data 0x0201
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0007
    #data 0x0005
    #data 0x0006
    #data 0x0001
    #data 0x0008
    #data 0x0000
    #data 0x0000
DAT_ce352a4:
    #data 0x0100
    #data 0x0101
    #data 0x0000
    #data 0x0000
DAT_ce352ac:
    #data 0x0000
    #data 0xffec
    #data 0x0000
    #data 0xffcc
DAT_ce352b4:
    #data 0x0000
    #data 0xfff7
DAT_ce352b8:
    #data 0x0000
    #data 0x000a
DAT_ce352bc:
    #data 0x0000
    #data 0xfffd
DAT_ce352c0:
    #data 0x0000
    #data 0x0003
    #data 0xffb8
    #data 0xffcc
    #data 0xffb0
    #data 0xfff0
    #align4

PTR_ce352cc:
    #data LAB_ce3045c
PTR_ce352d0:
    #data LAB_ce3001c
PTR_ce352d4:
    #data LAB_ce3048c
PTR_ce352d8:
    #data LAB_ce30a3a
PTR_ce352dc:
    #data LAB_ce313fe
PTR_ce352e0:
    #data LAB_ce31518
PTR_ce352e4:
    #data LAB_ce31662
PTR_ce352e8:
    #data LAB_ce318ae
PTR_ce352ec:
    #data LAB_ce319e2
PTR_ce352f0:
    #data LAB_ce344c8
PTR_ce352f4:
    #data LAB_ce34558
PTR_ce352f8:
    #data LAB_ce34682
PTR_ce352fc:
    #data LAB_ce35150
PTR_ce35300:
    #data FUN_ce303ca
PTR_ce35304:
    #data LAB_ce34390
PTR_ce35308:
    #data LAB_ce31338
PTR_ce3530c:
    #data LAB_ce342a4
PTR_ce35310:
    #data LAB_ce342c8
PTR_ce35314:
    #data LAB_ce342ec
PTR_ce35318:
    #data LAB_ce34342
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce3533c:
    #data LAB_ce304c8
PTR_ce35340:
    #data LAB_ce3083c
PTR_ce35344:
    #data LAB_ce30864
PTR_ce35348:
    #data LAB_ce304c8
PTR_ce3534c:
    #data LAB_ce30a8e
PTR_ce35350:
    #data LAB_ce30f6e
PTR_ce35354:
    #data LAB_ce30f58
PTR_ce35358:
    #data LAB_ce30a80
PTR_ce3535c:
    #data LAB_ce3115c
PTR_ce35360:
    #data LAB_ce311a8
PTR_ce35364:
    #data LAB_ce3123c
PTR_ce35368:
    #data FUN_ce312e8
PTR_ce3536c:
    #data LAB_ce3143c
PTR_ce35370:
    #data LAB_ce31484
PTR_ce35374:
    #data LAB_ce3152a
PTR_ce35378:
    #data LAB_ce315ce
PTR_ce3537c:
    #data FUN_ce31640
PTR_ce35380:
    #data LAB_ce31674
PTR_ce35384:
    #data LAB_ce316a0
PTR_ce35388:
    #data LAB_ce31884
PTR_ce3538c:
    #data LAB_ce316d8
PTR_ce35390:
    #data LAB_ce31736
PTR_ce35394:
    #data LAB_ce31800
PTR_ce35398:
    #data LAB_ce318c0
PTR_ce3539c:
    #data LAB_ce3190c
PTR_ce353a0:
    #data LAB_ce319f6
PTR_ce353a4:
    #data LAB_ce31fb6
PTR_ce353a8:
    #data LAB_ce3274c
PTR_ce353ac:
    #data LAB_ce32a5a
PTR_ce353b0:
    #data LAB_ce32d08
PTR_ce353b4:
    #data LAB_ce33372
PTR_ce353b8:
    #data LAB_ce33706
PTR_ce353bc:
    #data LAB_ce33bf4
PTR_ce353c0:
    #data LAB_ce33da2
PTR_ce353c4:
    #data LAB_ce33eda
PTR_ce353c8:
    #data LAB_ce33f64
PTR_ce353cc:
    #data LAB_ce34058
PTR_ce353d0:
    #data LAB_ce34134
PTR_ce353d4:
    #data LAB_ce31a24
PTR_ce353d8:
    #data LAB_ce31ad2
PTR_ce353dc:
    #data LAB_ce31e1c
PTR_ce353e0:
    #data LAB_ce31ae4
PTR_ce353e4:
    #data LAB_ce31b98
PTR_ce353e8:
    #data LAB_ce31c8c
PTR_ce353ec:
    #data LAB_ce31d88
PTR_ce353f0:
    #data LAB_ce31ff0
PTR_ce353f4:
    #data LAB_ce3209a
PTR_ce353f8:
    #data LAB_ce32434
PTR_ce353fc:
    #data LAB_ce32548
PTR_ce35400:
    #data LAB_ce320d0
PTR_ce35404:
    #data LAB_ce3223c
PTR_ce35408:
    #data LAB_ce32340
PTR_ce3540c:
    #data LAB_ce3275e
PTR_ce35410:
    #data LAB_ce32814
PTR_ce35414:
    #data LAB_ce328d0
PTR_ce35418:
    #data FUN_ce32a38
PTR_ce3541c:
    #data LAB_ce32a6c
PTR_ce35420:
    #data LAB_ce32ada
PTR_ce35424:
    #data FUN_ce32ce6
PTR_ce35428:
    #data LAB_ce32b1c
PTR_ce3542c:
    #data LAB_ce32b80
PTR_ce35430:
    #data LAB_ce32c48
PTR_ce35434:
    #data LAB_ce32d1a
PTR_ce35438:
    #data LAB_ce32ed0
PTR_ce3543c:
    #data FUN_ce33350
PTR_ce35440:
    #data LAB_ce32d50
PTR_ce35444:
    #data LAB_ce32dd4
PTR_ce35448:
    #data LAB_ce32e3e
PTR_ce3544c:
    #data LAB_ce32ee6
PTR_ce35450:
    #data LAB_ce33060
PTR_ce35454:
    #data LAB_ce3319c
PTR_ce35458:
    #data LAB_ce33206
PTR_ce3545c:
    #data LAB_ce332cc
PTR_ce35460:
    #data LAB_ce33384
PTR_ce35464:
    #data LAB_ce33564
PTR_ce35468:
    #data FUN_ce336e4
PTR_ce3546c:
    #data LAB_ce333b4
PTR_ce35470:
    #data LAB_ce33454
PTR_ce35474:
    #data LAB_ce334f8
PTR_ce35478:
    #data LAB_ce33718
PTR_ce3547c:
    #data LAB_ce3394a
PTR_ce35480:
    #data LAB_ce33bcc
PTR_ce35484:
    #data LAB_ce3374c
PTR_ce35488:
    #data LAB_ce337f0
PTR_ce3548c:
    #data LAB_ce3399c
PTR_ce35490:
    #data LAB_ce33a5c
PTR_ce35494:
    #data LAB_ce33b1e
PTR_ce35498:
    #data LAB_ce33c06
PTR_ce3549c:
    #data LAB_ce33c86
PTR_ce354a0:
    #data LAB_ce33d4e
PTR_ce354a4:
    #data LAB_ce33db4
PTR_ce354a8:
    #data LAB_ce33e6c
PTR_ce354ac:
    #data LAB_ce33eec
PTR_ce354b0:
    #data LAB_ce33f2c
PTR_ce354b4:
    #data LAB_ce33fa8
PTR_ce354b8:
    #data LAB_ce34020
PTR_ce354bc:
    #data LAB_ce3406a
PTR_ce354c0:
    #data LAB_ce340e2
PTR_ce354c4:
    #data LAB_ce34146
PTR_ce354c8:
    #data LAB_ce341b6
PTR_ce354cc:
    #data LAB_ce343a2
PTR_ce354d0:
    #data LAB_ce3440a
PTR_ce354d4:
    #data LAB_ce34472
PTR_ce354d8:
    #data LAB_ce345ac
PTR_ce354dc:
    #data LAB_ce34614
PTR_ce354e0:
    #data LAB_ce3464e
PTR_ce354e4:
    #data LAB_ce346a4
PTR_ce354e8:
    #data LAB_ce34a3c
PTR_ce354ec:
    #data LAB_ce34e3c
PTR_ce354f0:
    #data LAB_ce34742
PTR_ce354f4:
    #data LAB_ce34748
PTR_ce354f8:
    #data LAB_ce34790
PTR_ce354fc:
    #data LAB_ce347b6
PTR_ce35500:
    #data LAB_ce347ba
PTR_ce35504:
    #data LAB_ce34868
PTR_ce35508:
    #data FUN_ce34900
PTR_ce3550c:
    #data LAB_ce34980
PTR_ce35510:
    #data LAB_ce349aa
PTR_ce35514:
    #data LAB_ce34af0
PTR_ce35518:
    #data LAB_ce34af6
PTR_ce3551c:
    #data LAB_ce34b2c
PTR_ce35520:
    #data LAB_ce34bc4
PTR_ce35524:
    #data LAB_ce34bc8
PTR_ce35528:
    #data LAB_ce34cac
PTR_ce3552c:
    #data LAB_ce34cf0
PTR_ce35530:
    #data LAB_ce34b2c
PTR_ce35534:
    #data LAB_ce34cf0
PTR_ce35538:
    #data LAB_ce34d98
PTR_ce3553c:
    #data LAB_ce34ec8
PTR_ce35540:
    #data LAB_ce34ee6
PTR_ce35544:
    #data LAB_ce34eec
PTR_ce35548:
    #data LAB_ce34f4c
PTR_ce3554c:
    #data LAB_ce34f98
PTR_ce35550:
    #data LAB_ce35020
PTR_ce35554:
    #data LAB_ce3505a
PTR_ce35558:
    #data LAB_ce350b6
PTR_ce3555c:
    #data LAB_ce35110
