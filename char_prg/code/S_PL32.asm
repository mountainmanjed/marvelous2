;╔════════════════════════════════════════════╗
;║ S_PL32 : Colossus (Piotr Rasputin) Program ║
;╚════════════════════════════════════════════╝
    
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c034f54 0x8C034F54
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c0423fc 0x8C0423FC
#symbol loc_8c045790 0x8C045790
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c04cbcc 0x8C04CBCC
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c04fea8 0x8C04FEA8
#symbol loc_8c04ff88 0x8C04FF88
#symbol loc_8c050048 0x8C050048
#symbol loc_8c050084 0x8C050084
#symbol loc_8c0500ac 0x8C0500AC
#symbol loc_8c050834 0x8C050834
#symbol loc_8c050962 0x8C050962
#symbol loc_8c050ea4 0x8C050EA4
#symbol loc_8c05115a 0x8C05115A
#symbol loc_8c0511b4 0x8C0511B4
#symbol loc_8c0511e2 0x8C0511E2
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c051854 0x8C051854
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c0522e0 0x8C0522E0
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
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c0e8514 0x8C0E8514
#symbol loc_8c0f047c 0x8C0F047C
#symbol loc_8c103660 0x8C103660
#symbol loc_8c1292d4 0x8C1292D4
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce3009e,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300a0,pc),r7
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
    mov.l @(PTR_ce300a4,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30098
    mov.l @(PTR_ce300a8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30098
    mov.l @(PTR_ce300ac,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30098
    mov.l @(PTR_ce300b0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30098
    bsr FUN_ce30220
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30098
    bsr FUN_ce301c4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30098
    bsr FUN_ce300bc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30098
    bsr FUN_ce30136
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30098
    bsr FUN_ce30286
    mov r14,r4
    tst r0,r0
    bf LAB_ce30098
    bsr FUN_ce302e4
    mov r14,r4
    tst r0,r0
    bf LAB_ce30098
    mov.l @(PTR_ce300b4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300b8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30098:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3009e:
    #data 0x0428
    #align4

PTR_ce300a0:
    #data PTR_ce33380
PTR_ce300a4:
    #data loc_8c054508
PTR_ce300a8:
    #data loc_8c054b34
PTR_ce300ac:
    #data loc_8c05496c
PTR_ce300b0:
    #data loc_8c054d04
PTR_ce300b4:
    #data loc_8c053e00
PTR_ce300b8:
    #data loc_8c0542e0

;=============================================

FUN_ce300bc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301ac,pc),r5
    mov.w @(DAT_ce3019c,pc),r6
    mov.l @(PTR_ce301b0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce300fe
    mov.w @(DAT_ce3019e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3010c
    mov.w @(DAT_ce301a0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3010c
    mova @(DAT_ce301b4,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce301a2,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bf LAB_ce300fe
    mov.w @(DAT_ce301a4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30106

LAB_ce300fe:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30106:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3010c:
    mov.w @(DAT_ce3019c,pc),r5
    mov.l @(PTR_ce301b8,pc),r2
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
    mov.w @(DAT_ce301a6,pc),r0
    mov.l @(PTR_ce301bc,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30136:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301c0,pc),r5
    mov.w @(DAT_ce301a8,pc),r6
    mov.l @(PTR_ce301b0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30166
    mov.w @(DAT_ce3019e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30174
    mov.w @(DAT_ce301a0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30174
    mov.w @(DAT_ce301a4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3016e

LAB_ce30166:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3016e:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30174:
    mov.w @(DAT_ce301a8,pc),r5
    mov.l @(PTR_ce301b8,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301a6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301bc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3019c:
    #data 0x036c
DAT_ce3019e:
    #data 0x01f9
DAT_ce301a0:
    #data 0x01fc
DAT_ce301a2:
    #data 0x041c
DAT_ce301a4:
    #data 0x01d4
DAT_ce301a6:
    #data 0x01e9
DAT_ce301a8:
    #data 0x0374
    #align4

PTR_ce301ac:
    #data DAT_ce33340
PTR_ce301b0:
    #data loc_8c054e58
DAT_ce301b4:
    #data 0x42cdb6db
PTR_ce301b8:
    #data loc_8c055c3a
PTR_ce301bc:
    #data loc_8c0530d8
PTR_ce301c0:
    #data DAT_ce33350

;=============================================

FUN_ce301c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce302c0,pc),r3
    mov r4,r14
    mov.w @(DAT_ce302c2,pc),r6
    add r14,r3
    mov.l @(PTR_ce302d0,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce302d4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301f6
    mov.w @(DAT_ce302c4,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce301f6
    mov.l @r15,r3
    mov.w @(0x4,r3),r0
    tst r0,r0
    bt LAB_ce30200

LAB_ce301f6:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30200:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302c6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce302d8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30220:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce302dc,pc),r5
    mov.w @(DAT_ce302c8,pc),r6
    mov.l @(PTR_ce302d4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30260
    mov.w @(DAT_ce302ca,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30256
    mov.w @(DAT_ce302cc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30256
    mov.w @(DAT_ce302ce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30260
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce30256:
    mov.w @(DAT_ce302c4,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bf LAB_ce30268

LAB_ce30260:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30268:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302c6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce302d8,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30286:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce302e0,pc),r3
    jsr @r3
    mov 0x04,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302a0
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302a0:
    mov.w @(DAT_ce302c6,pc),r0
    mov 0x04,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce302d8,pc),r3
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

DAT_ce302c0:
    #data 0x02a4
DAT_ce302c2:
    #data 0x037c
DAT_ce302c4:
    #data 0x040c
DAT_ce302c6:
    #data 0x01e9
DAT_ce302c8:
    #data 0x0384
DAT_ce302ca:
    #data 0x01f9
DAT_ce302cc:
    #data 0x01fc
DAT_ce302ce:
    #data 0x01d4
    #align4

PTR_ce302d0:
    #data DAT_ce33360
PTR_ce302d4:
    #data loc_8c054e58
PTR_ce302d8:
    #data loc_8c0530d8
PTR_ce302dc:
    #data DAT_ce33370
PTR_ce302e0:
    #data loc_8c054da0

;=============================================

FUN_ce302e4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce303f0,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce302fc
    mov.w @(DAT_ce303e2,pc),r0
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
    mov.w @(DAT_ce303e4,pc),r0
    mov 0x05,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce303f4,pc),r3
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

FUN_ce30324:
    sts.l PR,@-r15
    bsr FUN_ce3033c
    nop
    tst r0,r0
    bt LAB_ce30334
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce30334:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce3033c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce303f8,pc),r5
    mov.w @(DAT_ce303e6,pc),r6
    mov.l @(PTR_ce303fc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3035c
    mov.w @(DAT_ce303e2,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30364

LAB_ce3035c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30364:
    mov.w @(DAT_ce303e8,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30372:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce303ea,pc),r13
    sts.l PR,@-r15
    add r14,r13
    bsr FUN_ce30550
    mov r13,r5
    mov r13,r5
    bsr FUN_ce303a6
    mov r14,r4
    mov r13,r5
    bsr FUN_ce30408
    mov r14,r4
    mov r13,r5
    bsr FUN_ce3058e
    mov r14,r4
    mov r13,r5
    bsr FUN_ce3069c
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce306c2
    mov.l @r15+,r14

;=============================================

FUN_ce303a6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce303ec,pc),r0
    mov r4,r3
    mov.l r4,@r15
    mov.b @(r0,r3),r2
    tst r2,r2
    bf LAB_ce303da
    mov.b @(0x6,r5),r0
    add 0x01,r0
    mov.b r0,@(0x6,r5)
    extu.b r0,r0
    tst 0x0F,r0
    bf LAB_ce303da
    mov.l @(PTR_ce30400,pc),r2
    jsr @r2
    nop
    tst 0x07,r0
    bf LAB_ce303da
    mov.l @r15,r4
    mov 0x00,r6
    mov r6,r5
    add 0x04,r15
    mov.l @(PTR_ce30404,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce303da:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce303e2:
    #data 0x040c
DAT_ce303e4:
    #data 0x01e9
DAT_ce303e6:
    #data 0x0384
DAT_ce303e8:
    #data 0x0258
DAT_ce303ea:
    #data 0x02a4
DAT_ce303ec:
    #data 0x0159
    #align4

PTR_ce303f0:
    #data loc_8c054d1c
PTR_ce303f4:
    #data loc_8c0530d8
PTR_ce303f8:
    #data DAT_ce33370
PTR_ce303fc:
    #data loc_8c054e58
PTR_ce30400:
    #data loc_8c03319e
PTR_ce30404:
    #data loc_8c0e8514

;=============================================

FUN_ce30408:
    mov.l r14,@-r15
    mov.w @(DAT_ce30514,pc),r0
    mov.l r13,@-r15
    mov r4,r13
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r13),r3
    tst r3,r3
    bt/s LAB_ce30476
    mov r5,r14
    mov.w @(DAT_ce30516,pc),r0
    mov.w @(r0,r13),r3
    tst r3,r3
    bf/s LAB_ce3042c
    mov 0x00,r12
    mov r12,r0
    nop
    mov.w r0,@(0x4,r14)

LAB_ce3042c:
    mov.w @(0x4,r14),r0
    tst r0,r0
    bt LAB_ce3046a
    mov 0x25,r6
    mov.w @(0x4,r14),r0
    add r13,r6
    mov.l @(PTR_ce3051c,pc),r3
    add 0xFF,r0
    mov.w r0,@(0x4,r14)
    mov 0x01,r7
    mov.b @r6,r6
    mov 0x00,r5
    mov.b @(0x3,r14),r0
    extu.b r6,r6
    shll2 r6
    shll2 r6
    shll r6
    add r0,r6
    jsr @r3
    mov r13,r4
    mov.b @(0x3,r14),r0
    mov 0x07,r3
    cmp/ge r3,r0
    bt LAB_ce30462
    mov.b @(0x3,r14),r0
    bra LAB_ce30466
    add 0x01,r0

LAB_ce30462:
    mov r12,r0
    nop

LAB_ce30466:
    bra LAB_ce30476
    mov.b r0,@(0x3,r14)

LAB_ce3046a:
    mov.l @(PTR_ce30520,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r13,r4
    mov.w @(DAT_ce30514,pc),r0
    mov.b r12,@(r0,r13)

LAB_ce30476:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30480:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r5,r14
    mov.l r4,@r15
    mov.b @(0x1,r14),r0
    extu.b r0,r0
    tst 0x03,r0
    bf LAB_ce304ce
    mov.l @(PTR_ce30524,pc),r2
    jsr @r2
    nop
    tst 0x3F,r0
    bf LAB_ce304ce
    mov.l @r15,r2
    mov.b @(0x5,r2),r0
    tst r0,r0
    bf LAB_ce304ce
    mov.w @(DAT_ce30518,pc),r1
    mov.l @r15,r0
    mov.b @(r0,r1),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce304c4
    cmp/eq 0x01,r0
    bt LAB_ce304c4
    cmp/eq 0x02,r0
    bt LAB_ce304c4
    cmp/eq 0x06,r0
    bt LAB_ce304c4
    cmp/eq 0x0A,r0
    bt LAB_ce304c4
    cmp/eq 0x0B,r0
    bf LAB_ce304ce

LAB_ce304c4:
    mov.b @(0x2,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x2,r14)
    mov.b r3,@r14

LAB_ce304ce:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce304d6:
    mov.l r14,@-r15
    mov r5,r14
    mov.l r13,@-r15
    mov.l @(PTR_ce30528,pc),r13
    mov.l r12,@-r15
    mov.w @(DAT_ce3051a,pc),r2
    sts.l PR,@-r15
    mov.b @r14,r0
    mov.b @(r0,r13),r3
    extu.b r3,r3
    cmp/eq r2,r3
    bt/s LAB_ce3052c
    mov r4,r12
    mov 0x25,r0
    mov.l @(PTR_ce3051c,pc),r1
    mov.b @(r0,r12),r6
    mov 0x01,r7
    mov.b @r14,r0
    mov 0x00,r5
    extu.b r6,r6
    mov.b @(r0,r13),r3
    shll2 r6
    shll2 r6
    extu.b r3,r3
    shll r6
    add r3,r6
    add 0x07,r6
    jsr @r1
    mov r12,r4
    bra LAB_ce30538
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30514:
    #data 0x0202
DAT_ce30516:
    #data 0x0420
DAT_ce30518:
    #data 0x01d0
DAT_ce3051a:
    #data 0x00ff
    #align4

PTR_ce3051c:
    #data loc_8c03544c
PTR_ce30520:
    #data loc_8c035162
PTR_ce30524:
    #data loc_8c03319e
PTR_ce30528:
    #data DAT_ce333f0

;=============================================

LAB_ce3052c:
    mov.l @(PTR_ce30648,pc),r1
    mov 0x00,r5
    jsr @r1
    mov r12,r4
    mov 0x00,r0
    mov.b r0,@(0x2,r14)

LAB_ce30538:
    mov.b @(0x1,r14),r0
    extu.b r0,r0
    tst 0x03,r0
    bf LAB_ce30546
    mov.b @r14,r2
    add 0x01,r2
    mov.b r2,@r14

LAB_ce30546:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30550:
    mov.w @(DAT_ce3063e,pc),r0
    mov.l @(DAT_ce3064c,pc),r2
    mov.l r14,@-r15
    mov.w @(r0,r4),r3
    extu.w r3,r3
    cmp/eq r2,r3
    bt/s LAB_ce3058a
    mov r5,r14
    mov.w @(DAT_ce30640,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x15,r0
    bt LAB_ce3058a
    mov.w @(DAT_ce30640,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x1D,r0
    bt LAB_ce3058a
    mov.b @(0x1,r14),r0
    mov r14,r5
    mov.l @(PTR_ce30650,pc),r1
    add 0x01,r0
    mov.b r0,@(0x1,r14)
    mov.b @(0x2,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3058a:
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3058e:
    mov.l r14,@-r15
    mov r5,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bt/s LAB_ce30600
    mov r4,r13
    mov.w @(DAT_ce30640,pc),r0
    mov.b @(r0,r13),r0
    extu.b r0,r0
    cmp/eq 0x1D,r0
    bt LAB_ce305ba
    mov r13,r4
    mov.l @(PTR_ce30648,pc),r3
    mov 0x00,r0
    mov r0,r5
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce305ba:
    mov.b @(0x8,r14),r0
    add 0xFF,r0
    mov.b r0,@(0x8,r14)
    add 0x01,r0
    exts.b r0,r0
    tst r0,r0
    bf LAB_ce30600
    mov 0x25,r6
    mov.l @(PTR_ce30654,pc),r3
    add r13,r6
    mov 0x02,r0
    mov.b r0,@(0x8,r14)
    mov 0x01,r7
    mov.b @r6,r6
    mov 0x00,r5
    mov.b @(0x9,r14),r0
    extu.b r6,r6
    shll2 r6
    shll2 r6
    shll r6
    extu.b r0,r0
    add r0,r6
    add 0x0F,r6
    jsr @r3
    mov r13,r4
    mov.b @(0x9,r14),r0
    mov 0x07,r3
    extu.b r0,r0
    cmp/ge r3,r0
    bt LAB_ce305fc
    mov.b @(0x9,r14),r0
    bra LAB_ce305fe
    add 0x01,r0

LAB_ce305fc:
    mov 0x00,r0

LAB_ce305fe:
    mov.b r0,@(0x9,r14)

LAB_ce30600:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30608:
    mov.b @(0x1,r4),r0
    mov.w @(DAT_ce30642,pc),r6
    extu.b r0,r0
    cmp/eq 0x32,r0
    bf/s LAB_ce30636
    add r4,r6
    mov.w @(DAT_ce30644,pc),r0
    mov.b @(r0,r5),r0
    tst 0x06,r0
    bt LAB_ce30636
    mov.b @(0xa,r6),r0
    tst r0,r0
    bt LAB_ce30636
    mov.b @(0xa,r6),r0
    extu.b r0,r0
    cmp/pl r0
    bf LAB_ce30658
    mov.w @(DAT_ce30646,pc),r0
    mov.l @(r0,r5),r0
    mov.b @(0x2,r0),r0
    extu.b r0,r0
    tst 0x20,r0
    bt LAB_ce3063a

LAB_ce30636:
    rts
    mov 0x00,r0

LAB_ce3063a:
    bra LAB_ce3065a
    mov 0x02,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3063e:
    #data 0x0158
DAT_ce30640:
    #data 0x01d0
DAT_ce30642:
    #data 0x02a4
DAT_ce30644:
    #data 0x019c
DAT_ce30646:
    #data 0x01bc
    #align4

PTR_ce30648:
    #data loc_8c035162
DAT_ce3064c:
    #data 0x0001c000
PTR_ce30650:
    #data PTR_ce333f8
PTR_ce30654:
    #data loc_8c03544c

;=============================================

LAB_ce30658:
    mov 0x04,r5

LAB_ce3065a:
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r4),fr4
    fcmp/gt fr4,fr3
    bf LAB_ce30666
    fneg fr4

LAB_ce30666:
    mova @(DAT_ce3075c,pc),r0
    fmov.s @r0,fr3
    fcmp/gt fr3,fr4
    bf LAB_ce3067c
    lds r5,FPUL
    mov 0x5C,r0
    fmov.s @(r0,r4),fr1
    float FPUL,fr2
    fdiv fr2,fr1
    bra LAB_ce30696
    fmov fr1,@(r0,r4)

LAB_ce3067c:
    mov.w @(DAT_ce3074c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30688
    bra LAB_ce3068c
    fmov fr3,fr2

LAB_ce30688:
    mova @(DAT_ce30760,pc),r0
    fmov.s @r0,fr2

LAB_ce3068c:
    mov 0x5C,r0
    fldi0 fr3
    fmov fr2,@(r0,r4)
    mov 0x68,r0
    fmov fr3,@(r0,r4)

LAB_ce30696:
    mov 0x01,r0
    rts
    nop

;=============================================

FUN_ce3069c:
    mov.b @(0xa,r5),r0
    tst r0,r0
    bt LAB_ce306be
    mov.b @(0x5,r4),r0
    tst r0,r0
    bf LAB_ce306ba
    mov.w @(DAT_ce3074e,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x15,r0
    bf LAB_ce306ba
    mov.w @(DAT_ce30750,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce306be

LAB_ce306ba:
    mov 0x00,r0
    mov.b r0,@(0xa,r5)

LAB_ce306be:
    rts
    nop

LAB_ce306c2:
    mov.w @(DAT_ce30752,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce306ec
    mov.w @(DAT_ce30754,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce306ec
    mov.w @(DAT_ce30752,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r4)
    add 0x65,r0
    mov.l @(r0,r4),r4
    mov.b @(0x3,r4),r0
    tst r0,r0
    bf LAB_ce306ec
    mov.l @(PTR_ce30764,pc),r4
    mov 0x03,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce306ec:
    rts
    nop

LAB_ce306f0:
    mov.w @(DAT_ce30756,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0xFA,r0
    mov.b @(r0,r14),r2
    mov r14,r4
    mov.l @(PTR_ce30768,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3070c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3076c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30758,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3073a
    mov.w @(DAT_ce3075a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30732
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30974
    mov.l @r15+,r14

LAB_ce30732:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce308ce
    mov.l @r15+,r14

LAB_ce3073a:
    mov.w @(DAT_ce3075a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30770
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30812
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3074c:
    #data 0x01d2
DAT_ce3074e:
    #data 0x01d0
DAT_ce30750:
    #data 0x01e9
DAT_ce30752:
    #data 0x014b
DAT_ce30754:
    #data 0x019e
DAT_ce30756:
    #data 0x0205
DAT_ce30758:
    #data 0x01fe
DAT_ce3075a:
    #data 0x01f9
    #align4

DAT_ce3075c:
    #data 0x40555555
DAT_ce30760:
    #data 0xc0555555
PTR_ce30764:
    #data loc_8c26a518
PTR_ce30768:
    #data PTR_ce33400
PTR_ce3076c:
    #data loc_8c052b4c

;=============================================

LAB_ce30770:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30778
    mov.l @r15+,r14

LAB_ce30778:
    mov.w @(DAT_ce30864,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30798
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307ae
    cmp/eq 0x02,r0
    bt LAB_ce307ce
    bra LAB_ce307e2
    nop

LAB_ce30798:
    mov.w @(DAT_ce30866,pc),r0
    mov.l @(PTR_ce30870,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce30868,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3086a,pc),r0
    mov.b r13,@(r0,r14)
    bra LAB_ce307c4
    mov 0x14,r5

LAB_ce307ae:
    mov.w @(DAT_ce30866,pc),r0
    mov 0x01,r4
    mov.l @(PTR_ce30874,pc),r3
    mov 0x15,r5
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30868,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3086a,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce307c4:
    mov.l @(PTR_ce30878,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce307e2
    nop

LAB_ce307ce:
    mov.w @(DAT_ce30866,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce3087c,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30868,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3086a,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce307e2:
    mov.w @(DAT_ce3086c,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce30880,pc),r3
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
    mov.w @(DAT_ce30866,pc),r0
    mov.l @(PTR_ce30884,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30812:
    mov.w @(DAT_ce30864,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30832
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30852
    cmp/eq 0x02,r0
    bt LAB_ce30888
    bra LAB_ce3089e
    nop

LAB_ce30832:
    mov.w @(DAT_ce30866,pc),r0
    mov 0x06,r3
    mov.l @(PTR_ce30870,pc),r2
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30868,pc),r0
    mov.l @(PTR_ce30878,pc),r3
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3086a,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce3089e
    nop

LAB_ce30852:
    mov.w @(DAT_ce30866,pc),r0
    mov 0x01,r4
    mov.l @(PTR_ce30874,pc),r2
    mov 0x07,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce30896
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30864:
    #data 0x01e8
DAT_ce30866:
    #data 0x0158
DAT_ce30868:
    #data 0x03f4
DAT_ce3086a:
    #data 0x01a7
DAT_ce3086c:
    #data 0x01ac
    #align4

PTR_ce30870:
    #data DAT_ce332f8
PTR_ce30874:
    #data DAT_ce332fc
PTR_ce30878:
    #data loc_8c04223a
PTR_ce3087c:
    #data DAT_ce33300
PTR_ce30880:
    #data loc_8c2896b0
PTR_ce30884:
    #data loc_8c034e8c

;=============================================

LAB_ce30888:
    mov.w @(DAT_ce30994,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce309a0,pc),r2
    mov 0x08,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30896:
    mov.w @(DAT_ce30996,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30998,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3089e:
    mov.w @(DAT_ce3099a,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce309a4,pc),r3
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
    mov.w @(DAT_ce30994,pc),r0
    mov.l @(PTR_ce309a8,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce308ce:
    mov.w @(DAT_ce3099c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308ee
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3090c
    cmp/eq 0x02,r0
    bt LAB_ce3092e
    bra LAB_ce30944
    nop

LAB_ce308ee:
    mov.w @(DAT_ce30994,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce309ac,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30996,pc),r0
    mov.l @(PTR_ce309b0,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30998,pc),r0
    bra LAB_ce30944
    mov.b r13,@(r0,r14)

LAB_ce3090c:
    mov.w @(DAT_ce30994,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce309ac,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30996,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce309b4,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30998,pc),r0
    bra LAB_ce30944
    mov.b r3,@(r0,r14)

LAB_ce3092e:
    mov.w @(DAT_ce30994,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce309b8,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30996,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30998,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30944:
    mov.w @(DAT_ce3099a,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce309a4,pc),r3
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
    mov.w @(DAT_ce30994,pc),r0
    mov.l @(PTR_ce309a8,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30974:
    mov.w @(DAT_ce3099c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce309bc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce309da
    cmp/eq 0x02,r0
    bt LAB_ce309fc
    bra LAB_ce30a12
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30994:
    #data 0x0158
DAT_ce30996:
    #data 0x03f4
DAT_ce30998:
    #data 0x01a7
DAT_ce3099a:
    #data 0x01ac
DAT_ce3099c:
    #data 0x01e8
    #align4

PTR_ce309a0:
    #data DAT_ce33300
PTR_ce309a4:
    #data loc_8c2896b0
PTR_ce309a8:
    #data loc_8c034e8c
PTR_ce309ac:
    #data loc_8c04223a
PTR_ce309b0:
    #data DAT_ce33304
PTR_ce309b4:
    #data DAT_ce33308
PTR_ce309b8:
    #data DAT_ce3330c

;=============================================

LAB_ce309bc:
    mov.w @(DAT_ce30abe,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30ad0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30ac0,pc),r0
    mov.l @(PTR_ce30ad4,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30ac2,pc),r0
    bra LAB_ce30a12
    mov.b r13,@(r0,r14)

LAB_ce309da:
    mov.w @(DAT_ce30abe,pc),r0
    mov 0x01,r4
    mov 0x0A,r3
    mov.l @(PTR_ce30ad8,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.w @(DAT_ce30ac0,pc),r0
    mov.l @(PTR_ce30ad0,pc),r3
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30ac2,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce30a12
    nop

LAB_ce309fc:
    mov.w @(DAT_ce30abe,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.l @(PTR_ce30adc,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30ac0,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30ac2,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30a12:
    mov.w @(DAT_ce30ac4,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30ae0,pc),r3
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
    mov.w @(DAT_ce30abe,pc),r0
    mov.l @(PTR_ce30ae4,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30a42:
    mov.w @(DAT_ce30ac6,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30a52
    mov.w @(DAT_ce30ac8,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30a62

LAB_ce30a52:
    mov.w @(DAT_ce30ac6,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30a66
    mov.w @(DAT_ce30ac8,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30a66

LAB_ce30a62:
    bra LAB_ce30a6a
    nop

LAB_ce30a66:
    rts
    nop

LAB_ce30a6a:
    mov.w @(DAT_ce30ac6,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30a78
    bra LAB_ce30ba0
    nop

LAB_ce30a78:
    bra LAB_ce30a7c
    nop

LAB_ce30a7c:
    mov.w @(DAT_ce30aca,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a9c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30af8
    cmp/eq 0x02,r0
    bt LAB_ce30b20
    bra LAB_ce30b5e
    nop

LAB_ce30a9c:
    mov.w @(DAT_ce30abe,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30ad0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30acc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30aec
    mov.w @(DAT_ce30ac0,pc),r0
    mov.l @(PTR_ce30ae8,pc),r3
    bra LAB_ce30af2
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30abe:
    #data 0x0158
DAT_ce30ac0:
    #data 0x03f4
DAT_ce30ac2:
    #data 0x01a7
DAT_ce30ac4:
    #data 0x01ac
DAT_ce30ac6:
    #data 0x01fe
DAT_ce30ac8:
    #data 0x01d6
DAT_ce30aca:
    #data 0x01e8
DAT_ce30acc:
    #data 0x01fc
    #align4

PTR_ce30ad0:
    #data loc_8c04223a
PTR_ce30ad4:
    #data DAT_ce33304
PTR_ce30ad8:
    #data DAT_ce33308
PTR_ce30adc:
    #data DAT_ce3330c
PTR_ce30ae0:
    #data loc_8c2896b0
PTR_ce30ae4:
    #data loc_8c034e8c
PTR_ce30ae8:
    #data DAT_ce33310

;=============================================

LAB_ce30aec:
    mov.w @(DAT_ce30be2,pc),r0
    mov.l @(PTR_ce30bf4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30af2:
    mov.w @(DAT_ce30be4,pc),r0
    bra LAB_ce30b5e
    mov.b r13,@(r0,r14)

LAB_ce30af8:
    mov.w @(DAT_ce30be6,pc),r0
    mov 0x01,r4
    mov 0x0D,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30b14
    mov.w @(DAT_ce30be2,pc),r0
    mov.l @(PTR_ce30bf8,pc),r2
    bra LAB_ce30b1a
    mov.l r2,@(r0,r14)

LAB_ce30b14:
    mov.w @(DAT_ce30be2,pc),r0
    mov.l @(PTR_ce30bfc,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b1a:
    mov.w @(DAT_ce30be4,pc),r0
    bra LAB_ce30b5e
    mov.b r4,@(r0,r14)

LAB_ce30b20:
    mov.w @(DAT_ce30be6,pc),r0
    mov 0x02,r4
    mov 0x0E,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30b3c
    mov.w @(DAT_ce30be2,pc),r0
    mov.l @(PTR_ce30c00,pc),r2
    bra LAB_ce30b42
    mov.l r2,@(r0,r14)

LAB_ce30b3c:
    mov.w @(DAT_ce30be2,pc),r0
    mov.l @(PTR_ce30c04,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b42:
    mov.w @(DAT_ce30be4,pc),r0
    mov.w @(DAT_ce30be8,pc),r2
    mov.b r4,@(r0,r14)
    add 0x53,r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce30b5e
    mov.w @(DAT_ce30be6,pc),r0
    mov 0x05,r3
    mov 0x12,r1
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r1,@(r0,r14)

LAB_ce30b5e:
    mov.w @(DAT_ce30bea,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30c08,pc),r3
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
    mov.w @(DAT_ce30be6,pc),r0
    mov.l @(PTR_ce30c0c,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30bec,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30b98
    mov.w @(DAT_ce30bec,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30b98:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30ba0:
    mov.w @(DAT_ce30bee,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30bc0
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30c24
    cmp/eq 0x02,r0
    bt LAB_ce30c48
    bra LAB_ce30c6e
    nop

LAB_ce30bc0:
    mov.w @(DAT_ce30be6,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30c10,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30bf0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30c18
    mov.w @(DAT_ce30be2,pc),r0
    mov.l @(PTR_ce30c14,pc),r3
    bra LAB_ce30c1e
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30be2:
    #data 0x03f4
DAT_ce30be4:
    #data 0x01a7
DAT_ce30be6:
    #data 0x0158
DAT_ce30be8:
    #data 0x0800
DAT_ce30bea:
    #data 0x01ac
DAT_ce30bec:
    #data 0x01d6
DAT_ce30bee:
    #data 0x01e8
DAT_ce30bf0:
    #data 0x01fc
    #align4

PTR_ce30bf4:
    #data DAT_ce33328
PTR_ce30bf8:
    #data DAT_ce33314
PTR_ce30bfc:
    #data DAT_ce3332c
PTR_ce30c00:
    #data DAT_ce33318
PTR_ce30c04:
    #data DAT_ce33330
PTR_ce30c08:
    #data loc_8c2896b0
PTR_ce30c0c:
    #data loc_8c034e8c
PTR_ce30c10:
    #data loc_8c04223a
PTR_ce30c14:
    #data DAT_ce3331c

;=============================================

LAB_ce30c18:
    mov.w @(DAT_ce30d3a,pc),r0
    mov.l @(PTR_ce30d4c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c1e:
    mov.w @(DAT_ce30d3c,pc),r0
    bra LAB_ce30c6e
    mov.b r13,@(r0,r14)

LAB_ce30c24:
    mov.w @(DAT_ce30d3e,pc),r0
    mov 0x01,r4
    mov 0x10,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30c40
    mov.w @(DAT_ce30d3a,pc),r0
    mov.l @(PTR_ce30d50,pc),r2
    bra LAB_ce30c6a
    mov.l r2,@(r0,r14)

LAB_ce30c40:
    mov.w @(DAT_ce30d3a,pc),r0
    mov.l @(PTR_ce30d54,pc),r1
    bra LAB_ce30c6a
    mov.l r1,@(r0,r14)

LAB_ce30c48:
    mov.w @(DAT_ce30d3e,pc),r0
    mov 0x02,r4
    mov 0x11,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30c64
    mov.w @(DAT_ce30d3a,pc),r0
    mov.l @(PTR_ce30d58,pc),r2
    bra LAB_ce30c6a
    mov.l r2,@(r0,r14)

LAB_ce30c64:
    mov.w @(DAT_ce30d3a,pc),r0
    mov.l @(PTR_ce30d5c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c6a:
    mov.w @(DAT_ce30d3c,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30c6e:
    mov.w @(DAT_ce30d40,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30d60,pc),r3
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
    mov.w @(DAT_ce30d3e,pc),r0
    mov.l @(PTR_ce30d64,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30d42,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30ca8
    mov.w @(DAT_ce30d42,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30ca8:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30cb0:
    mov.w @(DAT_ce30d44,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30d68,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30cc4:
    sts.l PR,@-r15
    mov.l @(PTR_ce30d6c,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30cd2:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30d70,pc),r3
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
    mov.w @(DAT_ce30d46,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d74
    mov.w @(DAT_ce30d48,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d32
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30eac
    mov.l @r15+,r14

LAB_ce30d32:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e74
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d3a:
    #data 0x03f4
DAT_ce30d3c:
    #data 0x01a7
DAT_ce30d3e:
    #data 0x0158
DAT_ce30d40:
    #data 0x01ac
DAT_ce30d42:
    #data 0x01d6
DAT_ce30d44:
    #data 0x01ff
DAT_ce30d46:
    #data 0x01fe
DAT_ce30d48:
    #data 0x01f9
    #align4

PTR_ce30d4c:
    #data DAT_ce33334
PTR_ce30d50:
    #data DAT_ce33320
PTR_ce30d54:
    #data DAT_ce33338
PTR_ce30d58:
    #data DAT_ce33324
PTR_ce30d5c:
    #data DAT_ce3333c
PTR_ce30d60:
    #data loc_8c2896b0
PTR_ce30d64:
    #data loc_8c034e8c
PTR_ce30d68:
    #data PTR_ce33410
PTR_ce30d6c:
    #data loc_8c0511e2
PTR_ce30d70:
    #data loc_8c052c84

;=============================================

LAB_ce30d74:
    mov.w @(DAT_ce30e58,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d86
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e20
    mov.l @r15+,r14

LAB_ce30d86:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d8e
    mov.l @r15+,r14

LAB_ce30d8e:
    mov.w @(DAT_ce30e5a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30daa
    cmp/eq 0x01,r0
    bt LAB_ce30daa
    cmp/eq 0x02,r0
    bt LAB_ce30dba
    bra LAB_ce30e1a
    nop

LAB_ce30daa:
    mov.l @(PTR_ce30e60,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30dc6
    bra LAB_ce30e1a
    nop

LAB_ce30dba:
    mov.l @(PTR_ce30e60,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30dd0

LAB_ce30dc6:
    lds.l @r15+,PR
    mov.l @(PTR_ce30e64,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30dd0:
    mov.w @(DAT_ce30e5c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30df8
    mov.b @(r0,r14),r6
    mov 0x25,r0
    mov.b @(r0,r14),r3
    mov 0x00,r5
    mov 0x01,r7
    extu.b r3,r3
    shll2 r3
    shll2 r3
    shll r3
    add r3,r6
    mov.l @(PTR_ce30e68,pc),r3
    add 0x16,r6
    jsr @r3
    mov r14,r4
    bra LAB_ce30e00
    nop

LAB_ce30df8:
    mov.l @(PTR_ce30e6c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4

LAB_ce30e00:
    mov.w @(DAT_ce30e5e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e1a
    mov 0x00,r3
    mov r14,r4
    mov r3,r6
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce30e70,pc),r3
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e1a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e20:
    mov.w @(DAT_ce30e5a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30e3c
    cmp/eq 0x01,r0
    bt LAB_ce30e3c
    cmp/eq 0x02,r0
    bt LAB_ce30e3c
    bra LAB_ce30e52
    nop

LAB_ce30e3c:
    mov.l @(PTR_ce30e60,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e52
    lds.l @r15+,PR
    mov.l @(PTR_ce30e64,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e52:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e58:
    #data 0x01f9
DAT_ce30e5a:
    #data 0x01e8
DAT_ce30e5c:
    #data 0x0140
DAT_ce30e5e:
    #data 0x0141
    #align4

PTR_ce30e60:
    #data loc_8c034dee
PTR_ce30e64:
    #data loc_8c051648
PTR_ce30e68:
    #data loc_8c03544c
PTR_ce30e6c:
    #data loc_8c035162
PTR_ce30e70:
    #data loc_8c0e8514

;=============================================

LAB_ce30e74:
    mov.w @(DAT_ce30f5e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30e90
    cmp/eq 0x01,r0
    bt LAB_ce30e90
    cmp/eq 0x02,r0
    bt LAB_ce30e90
    bra LAB_ce30ea6
    nop

LAB_ce30e90:
    mov.l @(PTR_ce30f64,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ea6
    lds.l @r15+,PR
    mov.l @(PTR_ce30f68,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30ea6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30eac:
    mov.w @(DAT_ce30f5e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30ec8
    cmp/eq 0x01,r0
    bt LAB_ce30ec8
    cmp/eq 0x02,r0
    bt LAB_ce30ec8
    bra LAB_ce30ede
    nop

LAB_ce30ec8:
    mov.l @(PTR_ce30f64,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ede
    lds.l @r15+,PR
    mov.l @(PTR_ce30f68,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30ede:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30ee4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30f6c,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30f70,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30efa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30f74,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30f78,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30f60,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f1c
    bsr FUN_ce30f88
    mov r14,r4
    bra LAB_ce30f20
    nop

LAB_ce30f1c:
    bsr FUN_ce30f3c
    mov r14,r4

LAB_ce30f20:
    mov.l @(PTR_ce30f7c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30f36
    lds.l @r15+,PR
    mov.l @(PTR_ce30f80,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f36:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30f3c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30f64,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f56
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30f84,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30f56:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f5e:
    #data 0x01e8
DAT_ce30f60:
    #data 0x01fe
    #align4

PTR_ce30f64:
    #data loc_8c034dee
PTR_ce30f68:
    #data loc_8c051648
PTR_ce30f6c:
    #data loc_8c050084
PTR_ce30f70:
    #data loc_8c04ff88
PTR_ce30f74:
    #data loc_8c04fea8
PTR_ce30f78:
    #data loc_8c050048
PTR_ce30f7c:
    #data loc_8c052ce2
PTR_ce30f80:
    #data loc_8c052dac
PTR_ce30f84:
    #data loc_8c05176e

;=============================================

FUN_ce30f88:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce310c4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fa2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce310c8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30fa2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30faa:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31000
    mov.l @(PTR_ce310cc,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce310d0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce310b8,pc),r0
    mov 0x00,r13
    mov.l @(PTR_ce310d4,pc),r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    mov 0x03,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce310ba,pc),r0
    mov 0x19,r2
    mov.l @(PTR_ce310d8,pc),r3
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

LAB_ce31000:
    mov.w @(DAT_ce310bc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31010
    mov.l @(PTR_ce310dc,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31010:
    mov 0x5C,r1
    mov.l @(PTR_ce310e0,pc),r3
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
    mov.l @(PTR_ce310c4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31066
    lds.l @r15+,PR
    mov.l @(PTR_ce310e4,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31066:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3106e:
    mov r4,r3
    mov.l @(PTR_ce310e8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31080:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310c4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce310be,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce310fc
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
    mov.w @(DAT_ce310c0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce310f0
    mova @(DAT_ce310ec,pc),r0
    bra LAB_ce310f4
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310b8:
    #data 0x01f9
DAT_ce310ba:
    #data 0x01a1
DAT_ce310bc:
    #data 0x01ff
DAT_ce310be:
    #data 0x0141
DAT_ce310c0:
    #data 0x01d2
    #align4

PTR_ce310c4:
    #data loc_8c034dee
PTR_ce310c8:
    #data loc_8c05176e
PTR_ce310cc:
    #data loc_8c052b4c
PTR_ce310d0:
    #data loc_8c056de4
PTR_ce310d4:
    #data loc_8c034e8c
PTR_ce310d8:
    #data loc_8c2896b0
PTR_ce310dc:
    #data loc_8c0511e2
PTR_ce310e0:
    #data loc_8c052c84
PTR_ce310e4:
    #data loc_8c051648
PTR_ce310e8:
    #data PTR_ce33420
DAT_ce310ec:
    #data 0x41555555

;=============================================

LAB_ce310f0:
    mova @(DAT_ce311ec,pc),r0
    fmov.s @r0,fr3

LAB_ce310f4:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x18,r0
    mov.w r0,@(0x1c,r14)

LAB_ce310fc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31102:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce311f0,pc),r3
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
    bf LAB_ce3116c
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce311f4,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3116c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31172:
    mov r4,r3
    mov.l @(PTR_ce311f8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31184:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce311f0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce311e6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce311e0
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce311e8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311aa
    mova @(DAT_ce311ec,pc),r0
    bra LAB_ce311ae
    fmov.s @r0,fr3

LAB_ce311aa:
    mova @(DAT_ce311fc,pc),r0
    fmov.s @r0,fr3

LAB_ce311ae:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31200,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31204,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31208,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce311ea,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311e0
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce311e0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311e6:
    #data 0x0141
DAT_ce311e8:
    #data 0x01d2
DAT_ce311ea:
    #data 0x0130
    #align4

DAT_ce311ec:
    #data 0xc1555555
PTR_ce311f0:
    #data loc_8c034dee
PTR_ce311f4:
    #data loc_8c051648
PTR_ce311f8:
    #data PTR_ce33428
DAT_ce311fc:
    #data 0x41555555
DAT_ce31200:
    #data 0x41855555
DAT_ce31204:
    #data 0x40cdb6db
DAT_ce31208:
    #data 0xbf1a4924

;=============================================

LAB_ce3120c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31370,pc),r3
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
    mov.w @(DAT_ce3136c,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31282
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    mov 0x02,r5
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31374,pc),r3
    mov 0x03,r6
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31282:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31288:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31370,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312a2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31378,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce312a2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce312aa:
    mov r4,r3
    mov.l @(PTR_ce3137c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce312bc:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    mov.l @(DAT_ce31380,pc),r1
    mov 0x00,r6
    add 0x01,r0
    fldi0 fr4
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3136e,pc),r0
    lds r1,FPUL
    mov.b r3,@(r0,r4)
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    mov.l @(PTR_ce31374,pc),r3
    fmov fr2,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce31384,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r4)
    mova @(DAT_ce31388,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r4)
    jmp @r3
    mov 0x12,r5

LAB_ce312f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31370,pc),r3
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
    mov.w @(DAT_ce3136c,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31366
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3138c,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31390,pc),r2
    mov 0x35,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31394,pc),r4
    mov 0x03,r0
    mov.l @(PTR_ce31374,pc),r3
    mov 0x12,r5
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    mov r0,r6
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31366:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3136c:
    #data 0x041c
DAT_ce3136e:
    #data 0x012c
    #align4

PTR_ce31370:
    #data loc_8c034dee
PTR_ce31374:
    #data loc_8c034e8c
PTR_ce31378:
    #data loc_8c051648
PTR_ce3137c:
    #data PTR_ce33434
DAT_ce31380:
    #data 0x43f00000
DAT_ce31384:
    #data 0xc1092492
DAT_ce31388:
    #data 0xbf092492
PTR_ce3138c:
    #data loc_8c0511b4
PTR_ce31390:
    #data loc_8c04223a
PTR_ce31394:
    #data loc_8c26a518

;=============================================

LAB_ce31398:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314d4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce313b4
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)

LAB_ce313b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313ba:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce314cc,pc),r3
    mov r4,r14
    mov.l @(PTR_ce314d8,pc),r2
    add r14,r3
    mov.l r3,@r15
    jsr @r2
    mov 0x00,r13
    tst 0x01,r0
    bf LAB_ce313da
    mov.w @(DAT_ce314ce,pc),r0
    bra LAB_ce313e0
    mov.b r13,@(r0,r14)

LAB_ce313da:
    mov.w @(DAT_ce314ce,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce313e0:
    mov.w @(DAT_ce314ce,pc),r0
    mov 0x13,r5
    mov.l @(PTR_ce314dc,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce314d0,pc),r0
    mov.b r13,@(r0,r14)
    mov.l @r15,r3
    mov r13,r0
    nop
    mov.w r0,@(0x4,r3)
    mov 0x00,r5
    mov.l @(PTR_ce314e0,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31410:
    mov.l @(PTR_ce314d4,pc),r3
    jmp @r3
    nop

LAB_ce31416:
    mov r4,r3
    mov.l @(PTR_ce314e4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31428:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce314cc,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31480
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce314d8,pc),r3
    add 0x01,r0
    jsr @r3
    mov.b r0,@(0x6,r14)
    tst 0x01,r0
    bf LAB_ce31452
    mov.w @(DAT_ce314ce,pc),r0
    mov 0x02,r3
    bra LAB_ce31458
    mov.b r3,@(r0,r14)

LAB_ce31452:
    mov.w @(DAT_ce314ce,pc),r0
    mov 0x03,r1
    mov.b r1,@(r0,r14)

LAB_ce31458:
    mov.w @(DAT_ce314ce,pc),r0
    mov 0x13,r5
    mov.l @(PTR_ce314dc,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce314d0,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.l @r15,r3
    mov r4,r0
    nop
    mov r14,r4
    mov r0,r5
    mov.w r0,@(0x4,r3)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce314e0,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31480:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce314d4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3148c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce314cc,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce314e8
    mov.b @(0x6,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce314dc,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce314d0,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov.l @r15,r3
    mov r2,r0
    nop
    mov r14,r4
    mov r0,r5
    mov.w r0,@(0x4,r3)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce314e0,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314cc:
    #data 0x02a4
DAT_ce314ce:
    #data 0x0158
DAT_ce314d0:
    #data 0x0202
    #align4

PTR_ce314d4:
    #data loc_8c034dee
PTR_ce314d8:
    #data loc_8c03319e
PTR_ce314dc:
    #data loc_8c034e8c
PTR_ce314e0:
    #data loc_8c035162
PTR_ce314e4:
    #data PTR_ce33440

;=============================================

LAB_ce314e8:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce315f0,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce314f4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce315e6,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31534
    mov.b @(0x6,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce315f4,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce315e8,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.l @r15,r3
    mov r4,r0
    nop
    mov r14,r4
    mov r0,r5
    mov.w r0,@(0x4,r3)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce315f8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31534:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce315f0,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31540:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce315fc,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31558
    lds.l @r15+,PR
    mov.l @(PTR_ce31600,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31558:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31604,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3156c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce315f8,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce315ea,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31608,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce315ec,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3159c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3159c:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3160c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x35,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31610,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce315ee,pc),r0
    mov r4,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31614,pc),r3
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
    mov.l @(PTR_ce315f4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315e6:
    #data 0x02a4
DAT_ce315e8:
    #data 0x0202
DAT_ce315ea:
    #data 0x01f9
DAT_ce315ec:
    #data 0x01d2
DAT_ce315ee:
    #data 0x01a1
    #align4

PTR_ce315f0:
    #data loc_8c034dee
PTR_ce315f4:
    #data loc_8c034e8c
PTR_ce315f8:
    #data loc_8c035162
PTR_ce315fc:
    #data loc_8c046c8a
PTR_ce31600:
    #data loc_8c051648
PTR_ce31604:
    #data PTR_ce33448
DAT_ce31608:
    #data 0xc1f00000
DAT_ce3160c:
    #data 0xbe892492
DAT_ce31610:
    #data 0xbf4db6db
PTR_ce31614:
    #data loc_8c2896b0

;=============================================

LAB_ce31618:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31738,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce3173c,pc),r3
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
    bt LAB_ce31680
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce31740,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31744,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x28,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31680:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31686:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31738,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce316ae
    mov.l @(PTR_ce31748,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3174c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce316ae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce316b4:
    mov r4,r3
    mov.l @(PTR_ce31750,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce316c6:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31754,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31758,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31748,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31732,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce31722
    mov 0x00,r13
    mov.w @(DAT_ce31732,pc),r0
    mov.l @(PTR_ce3175c,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31734,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31736,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3171a
    mov 0x21,r0
    bra LAB_ce31766
    mov.b r13,@(r0,r14)

LAB_ce3171a:
    mov 0x21,r0
    mov 0x01,r2
    bra LAB_ce31766
    mov.b r2,@(r0,r14)

LAB_ce31722:
    mov.w @(DAT_ce31736,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce31760
    mov 0x21,r0
    mov 0x02,r3
    bra LAB_ce31766
    mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31732:
    #data 0x01f9
DAT_ce31734:
    #data 0x041c
DAT_ce31736:
    #data 0x01a3
    #align4

PTR_ce31738:
    #data loc_8c034dee
PTR_ce3173c:
    #data loc_8c052ce2
PTR_ce31740:
    #data loc_8c034e8c
PTR_ce31744:
    #data loc_8c0511b4
PTR_ce31748:
    #data loc_8c035162
PTR_ce3174c:
    #data loc_8c051854
PTR_ce31750:
    #data PTR_ce3345c
PTR_ce31754:
    #data loc_8c056de4
PTR_ce31758:
    #data loc_8c05218a
PTR_ce3175c:
    #data loc_8c05115a

;=============================================

LAB_ce31760:
    mov 0x21,r0
    mov 0x03,r1
    mov.b r1,@(r0,r14)

LAB_ce31766:
    mov.w @(DAT_ce31886,pc),r0
    mov 0x15,r5
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x30,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3188c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31886,pc),r0
    mov.l @(PTR_ce31890,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mova @(DAT_ce31894,pc),r0
    mov.l @(PTR_ce3189c,pc),r4
    fmov.s @r0,fr5
    mova @(DAT_ce31898,pc),r0
    fmov.s @r0,fr4
    mov 0x21,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll2 r0
    shll2 r0
    mov.l @(r0,r4),r3
    mov 0x5C,r0
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x21,r0
    mov.b @(r0,r14),r3
    mov 0x68,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r4,r3
    mov.l @(0x4,r3),r2
    lds r2,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce318a0,pc),r0
    fmov.s @r0,fr5
    mov 0x21,r0
    mov.b @(r0,r14),r3
    mov 0x60,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r4,r3
    mov.l @(0x8,r3),r2
    lds r2,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x21,r0
    mov.b @(r0,r14),r3
    mov 0x6C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    mov.l @(0xc,r4),r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31888,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31826
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31826:
    mov.l @r15,r3
    mov r13,r0
    nop
    mov r14,r4
    mov.b r0,@(0xa,r3)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce3183a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce318a4,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3188a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3187e
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    mov.l @r15,r3
    mov.b r0,@(0xa,r3)
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov 0x21,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3187e
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce318a8,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3187e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31886:
    #data 0x01a3
DAT_ce31888:
    #data 0x01d2
DAT_ce3188a:
    #data 0x0141
    #align4

PTR_ce3188c:
    #data loc_8c2896b0
PTR_ce31890:
    #data loc_8c034e8c
DAT_ce31894:
    #data 0x3fd55555
DAT_ce31898:
    #data 0x47800000
PTR_ce3189c:
    #data DAT_ce33468
DAT_ce318a0:
    #data 0x40092492
PTR_ce318a4:
    #data loc_8c034dee
PTR_ce318a8:
    #data loc_8c053082

;=============================================

LAB_ce318ac:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r1
    mov r4,r14
    mov 0x34,r0
    mov.l r5,@r15
    add r14,r1
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    mov 0x00,r13
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf/s LAB_ce3190c
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce3190c:
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce319c0,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt/s LAB_ce3192c
    mov r13,r12
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319c2,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce3192c:
    mov.w @(DAT_ce319c4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31940
    mov.w @(DAT_ce319c6,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bt LAB_ce31948
    bra LAB_ce3194a
    nop

LAB_ce31940:
    mov.w @(DAT_ce319c6,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce3194a

LAB_ce31948:
    mov 0x01,r12

LAB_ce3194a:
    mov.l @(PTR_ce319cc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce3195e
    mov r12,r0
    nop
    cmp/eq 0x01,r0
    bf LAB_ce319b4

LAB_ce3195e:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce319d0,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319c2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3198a
    mov.w @(DAT_ce319c8,pc),r0
    mov 0x02,r2
    bra LAB_ce319a0
    mov.b r2,@(r0,r14)

LAB_ce3198a:
    mov.w @(DAT_ce319c8,pc),r0
    mov 0x03,r1
    mov.b r1,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce319d4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce319a0:
    mov.w @(DAT_ce319c8,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce319d8,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov r13,r0
    nop
    mov.b r0,@(0xa,r2)

LAB_ce319b4:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319c0:
    #data 0x041c
DAT_ce319c2:
    #data 0x01f9
DAT_ce319c4:
    #data 0x01d2
DAT_ce319c6:
    #data 0x01fd
DAT_ce319c8:
    #data 0x0158
    #align4

PTR_ce319cc:
    #data loc_8c034dee
DAT_ce319d0:
    #data 0x40800000
DAT_ce319d4:
    #data 0xbf4db6db
PTR_ce319d8:
    #data loc_8c034e8c

;=============================================

LAB_ce319dc:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    fmov.s fr15,@-r15
    sts.l PR,@-r15
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf/s LAB_ce31a34
    fldi0 fr15
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce31a34:
    mov.w @(DAT_ce31a9a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31a68
    mov.l @(PTR_ce31aa0,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce31a9c,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31a80
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce31a9a,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31a9c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    bra LAB_ce31a74
    fmov fr3,@(r0,r14)

LAB_ce31a68:
    mov.l @(PTR_ce31aa0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31a80

LAB_ce31a74:
    lds.l @r15+,PR
    mov.l @(PTR_ce31aa4,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a80:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce31a88:
    mov r4,r3
    mov.l @(PTR_ce31aa8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a9a:
    #data 0x01f9
DAT_ce31a9c:
    #data 0x041c
    #align4

PTR_ce31aa0:
    #data loc_8c034dee
PTR_ce31aa4:
    #data loc_8c051648
PTR_ce31aa8:
    #data PTR_ce334a8

;=============================================

LAB_ce31aac:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31bc4,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31bc8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31bcc,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31bb4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce31af2
    mov 0x00,r13
    mov.l @(PTR_ce31bd0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31bb4,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31bb6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce31af2:
    mov.w @(DAT_ce31bb8,pc),r0
    mov 0x32,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31bd4,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31bd8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31bdc,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31bba,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31b48
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31b48:
    mov.w @(DAT_ce31bbc,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31be0,pc),r3
    mov.b @(r0,r14),r6
    add 0x04,r6
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31b62:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31be4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31bbe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31b8a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31bbc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31b86
    bra LAB_ce31b88
    mov 0x0A,r0

LAB_ce31b86:
    mov 0x14,r0

LAB_ce31b88:
    mov.w r0,@(0x1c,r14)

LAB_ce31b8a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b90:
    mov.l r14,@-r15
    mov r4,r14
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31be8,pc),r3
    jsr @r3
    fldi0 fr15
    tst r0,r0
    bt LAB_ce31c2c
    mov.w @(DAT_ce31bb4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce31bec
    mov 0x00,r4
    mov.w @(DAT_ce31bc0,pc),r0
    bra LAB_ce31bf2
    mov.b r4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31bb4:
    #data 0x01f9
DAT_ce31bb6:
    #data 0x041c
DAT_ce31bb8:
    #data 0x01a1
DAT_ce31bba:
    #data 0x01d2
DAT_ce31bbc:
    #data 0x01a3
DAT_ce31bbe:
    #data 0x0141
DAT_ce31bc0:
    #data 0x01f7
    #align4

PTR_ce31bc4:
    #data loc_8c056de4
PTR_ce31bc8:
    #data loc_8c05218a
PTR_ce31bcc:
    #data loc_8c035162
PTR_ce31bd0:
    #data loc_8c05115a
PTR_ce31bd4:
    #data loc_8c2896b0
DAT_ce31bd8:
    #data 0xc1555555
DAT_ce31bdc:
    #data 0x3ef00000
PTR_ce31be0:
    #data loc_8c034e8c
PTR_ce31be4:
    #data loc_8c034dee
PTR_ce31be8:
    #data loc_8c05264c

;=============================================

LAB_ce31bec:
    mov.w @(DAT_ce31cc2,pc),r0
    mov 0x04,r2
    mov.b r2,@(r0,r14)

LAB_ce31bf2:
    mov.w @(DAT_ce31cc2,pc),r0
    mov 0x40,r3
    mov.b @(r0,r14),r2
    or r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce31cc4,pc),r2
    or r2,r1
    mov.b r1,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov r14,r4
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31cc6,pc),r0
    mov.l @(PTR_ce31cd0,pc),r3
    mov.l @(r0,r14),r5
    mov 0x6C,r0
    fmov fr15,@(r0,r5)
    mov 0x68,r0
    fmov fr15,@(r0,r5)
    mov 0x60,r0
    fmov fr15,@(r0,r5)
    mov 0x5C,r0
    fmov fr15,@(r0,r5)
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c2c:
    mov 0x5C,r1
    mov.l @(PTR_ce31cd4,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31cba
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31cc8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31c76
    mov.w @(DAT_ce31cca,pc),r0
    mov.b @(r0,r14),r2
    add 0xB5,r0
    add 0x06,r2
    bra LAB_ce31c80
    mov.b r2,@(r0,r14)

LAB_ce31c76:
    mov.w @(DAT_ce31cca,pc),r0
    mov.b @(r0,r14),r1
    add 0xB5,r0
    add 0x09,r1
    mov.b r1,@(r0,r14)

LAB_ce31c80:
    mov.w @(DAT_ce31ccc,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31cd8,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    fldi1 fr3
    fadd fr3,fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31cdc,pc),r0
    fmov.s @r0,fr2
    mov 0x68,r0
    fmov.s @(r0,r14),fr1
    fdiv fr2,fr1
    fmov fr1,@(r0,r14)
    mov.w @(DAT_ce31cc8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31cba
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce31ce0,pc),r0
    fmov.s @r0,fr1
    mov 0x6C,r0
    fmov fr1,@(r0,r14)

LAB_ce31cba:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31cc2:
    #data 0x01f7
DAT_ce31cc4:
    #data 0x0080
DAT_ce31cc6:
    #data 0x01b0
DAT_ce31cc8:
    #data 0x01f9
DAT_ce31cca:
    #data 0x01a3
DAT_ce31ccc:
    #data 0x0158
    #align4

PTR_ce31cd0:
    #data loc_8c0522e0
PTR_ce31cd4:
    #data loc_8c034dee
PTR_ce31cd8:
    #data loc_8c034e8c
DAT_ce31cdc:
    #data 0x41000000
DAT_ce31ce0:
    #data 0xbf4db6db

;=============================================

LAB_ce31ce4:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    fmov.s fr15,@-r15
    sts.l PR,@-r15
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf/s LAB_ce31d3c
    fldi0 fr15
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce31d3c:
    mov.w @(DAT_ce31da2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31d70
    mov.l @(PTR_ce31da8,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce31da4,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31d88
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce31da2,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31da4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    bra LAB_ce31d7c
    fmov fr3,@(r0,r14)

LAB_ce31d70:
    mov.l @(PTR_ce31da8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d88

LAB_ce31d7c:
    lds.l @r15+,PR
    mov.l @(PTR_ce31dac,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d88:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce31d90:
    mov r4,r3
    mov.l @(PTR_ce31db0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31da2:
    #data 0x01f9
DAT_ce31da4:
    #data 0x041c
    #align4

PTR_ce31da8:
    #data loc_8c034dee
PTR_ce31dac:
    #data loc_8c051648
PTR_ce31db0:
    #data PTR_ce334b8

;=============================================

LAB_ce31db4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31eb0,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31eb4,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31eb8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31ea8,pc),r0
    mov 0x00,r2
    fldi0 fr4
    mov 0x16,r5
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x03,r6
    mov.w @(DAT_ce31eaa,pc),r0
    mov.l @(PTR_ce31ebc,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x3C,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce31e10:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce31ec0,pc),r3
    mov r4,r14
    jsr @r3
    mov r5,r13
    mov.w @(DAT_ce31eac,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e66
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov r13,r5
    add 0x04,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x07,r6
    mov.w @(DAT_ce31eae,pc),r0
    mov.b r3,@(r0,r14)
    add 0x56,r0
    mov.w r0,@(0x4,r13)
    mov 0x00,r0
    mov.l @(PTR_ce31ec4,pc),r3
    mov.b r0,@(0x3,r13)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce31ec8,pc),r0
    mov.l @(PTR_ce31ed0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce31ecc,pc),r0
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

LAB_ce31e66:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31e70:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ec0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31e90
    lds.l @r15+,PR
    mov.l @(PTR_ce31ed4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e90:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e96:
    mov r4,r3
    mov.l @(PTR_ce31ed8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ea8:
    #data 0x01f9
DAT_ce31eaa:
    #data 0x041c
DAT_ce31eac:
    #data 0x0141
DAT_ce31eae:
    #data 0x0202
    #align4

PTR_ce31eb0:
    #data loc_8c05218a
PTR_ce31eb4:
    #data loc_8c035162
PTR_ce31eb8:
    #data loc_8c05115a
PTR_ce31ebc:
    #data loc_8c034e8c
PTR_ce31ec0:
    #data loc_8c034dee
PTR_ce31ec4:
    #data loc_8c0f047c
DAT_ce31ec8:
    #data 0xc1ad5555
DAT_ce31ecc:
    #data 0x43520000
PTR_ce31ed0:
    #data loc_8c050962
PTR_ce31ed4:
    #data loc_8c051648
PTR_ce31ed8:
    #data PTR_ce334c8

;=============================================

LAB_ce31edc:
    mov.w @(DAT_ce32000,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce31efe
    mov r5,r13
    mov.w @(DAT_ce32004,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32002,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31efe:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32014,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32018,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32006,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31f2a
    mov.w @(DAT_ce32008,pc),r0
    mov.l @(PTR_ce3201c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce31f2a:
    mov 0x00,r12
    mov r12,r0
    nop
    mov.b r0,@(0x7,r13)
    mov 0x01,r0
    mov.b r0,@(0x8,r13)
    mov r12,r0
    nop
    mov.b r0,@(0x9,r13)
    mov 0x33,r3
    mov.w @(DAT_ce3200a,pc),r0
    fldi0 fr4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32020,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32024,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.l @(PTR_ce32028,pc),r2
    mov 0x16,r5
    mov r12,r6
    jsr @r2
    mov r14,r4
    mov r13,r5
    mov 0x32,r0
    mov.w r0,@(0x1c,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31f94:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3200c,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3200e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32000,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31fb6
    bra LAB_ce31fb8
    mov 0x02,r3

LAB_ce31fb6:
    mov 0x00,r3

LAB_ce31fb8:
    mov.w @(DAT_ce32010,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3202c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32012,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31ff8
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32038,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32030,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32034,pc),r0
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce32004,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce31ff8:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32000:
    #data 0x0255
DAT_ce32002:
    #data 0x00ff
DAT_ce32004:
    #data 0x03f0
DAT_ce32006:
    #data 0x01f9
DAT_ce32008:
    #data 0x041c
DAT_ce3200a:
    #data 0x01a1
DAT_ce3200c:
    #data 0x03f8
DAT_ce3200e:
    #data 0x0328
DAT_ce32010:
    #data 0x03f1
DAT_ce32012:
    #data 0x0141
    #align4

PTR_ce32014:
    #data loc_8c05218a
PTR_ce32018:
    #data loc_8c035162
PTR_ce3201c:
    #data loc_8c05115a
PTR_ce32020:
    #data loc_8c2896b0
DAT_ce32024:
    #data 0x41cdb6db
PTR_ce32028:
    #data loc_8c034e8c
PTR_ce3202c:
    #data loc_8c034dee
DAT_ce32030:
    #data 0xc1ad5555
DAT_ce32034:
    #data 0x435edb6d
PTR_ce32038:
    #data loc_8c050834

;=============================================

LAB_ce3203c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32140,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov 0x60,r1
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    add r14,r1
    mov.w @(DAT_ce32142,pc),r0
    mov.l @(PTR_ce32154,pc),r3
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
    mov.w @(0x1c,r14),r0
    mov.l @(PTR_ce32158,pc),r13
    cmp/eq 0x32,r0
    bf LAB_ce32086
    mov 0x1F,r5
    jsr @r13
    mov r14,r4

LAB_ce32086:
    mova @(DAT_ce3215c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32144,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bt/s LAB_ce320b8
    mov 0x00,r12
    mov.w @(DAT_ce32146,pc),r0
    mov.w @(DAT_ce32148,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce320b8
    mov.w @(DAT_ce3214a,pc),r0
    mov.w @(DAT_ce3214c,pc),r1
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r1,r2
    bt LAB_ce320b8
    mov r12,r0
    nop
    mov.w r0,@(0x1c,r14)

LAB_ce320b8:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32134
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    mov.l @r15,r3
    mov r0,r6
    mov.b r0,@(0x7,r3)
    mov.l @(PTR_ce32160,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3214e,pc),r0
    mov 0x34,r2
    mov.l @(PTR_ce32164,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
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
    mova @(DAT_ce32168,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3216c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32170,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32150,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce3212a
    mov 0x2B,r5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3212a:
    jsr @r13
    mov r14,r4
    mov 0x04,r5
    jsr @r13
    mov r14,r4

LAB_ce32134:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32140:
    #data 0x03f8
DAT_ce32142:
    #data 0x0328
DAT_ce32144:
    #data 0x041c
DAT_ce32146:
    #data 0x034a
DAT_ce32148:
    #data 0x1000
DAT_ce3214a:
    #data 0x034e
DAT_ce3214c:
    #data 0x0360
DAT_ce3214e:
    #data 0x01a1
DAT_ce32150:
    #data 0x0130
    #align4

PTR_ce32154:
    #data loc_8c034dee
PTR_ce32158:
    #data loc_8c042008
DAT_ce3215c:
    #data 0x43cdb6db
PTR_ce32160:
    #data loc_8c034e8c
PTR_ce32164:
    #data loc_8c2896b0
DAT_ce32168:
    #data 0xc1555555
DAT_ce3216c:
    #data 0xc1cdb6db
DAT_ce32170:
    #data 0xbf092492

;=============================================

LAB_ce32174:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32282,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32284,pc),r0
    mov 0x5C,r1
    add r14,r1
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
    mov.l @(PTR_ce32290,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32294,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32286,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bf LAB_ce32244
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32288,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32286,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov fr2,@(r0,r14)
    mov.l @r15,r3
    mov r13,r0
    nop
    mov.b r0,@(0x7,r3)
    mov r0,r5
    mov.l @(PTR_ce32298,pc),r3
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
    mov.l @(PTR_ce3229c,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce322a0,pc),r2
    mov 0x16,r5
    mov 0x02,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce322a4,pc),r4
    mov 0x03,r0
    mov.l @(PTR_ce322a8,pc),r3
    mov 0x31,r5
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3228a,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3228c,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)

LAB_ce32244:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3224e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32290,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32268
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce322ac,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32268:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32270:
    mov r4,r3
    mov.l @(PTR_ce322b0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32282:
    #data 0x03f8
DAT_ce32284:
    #data 0x0328
DAT_ce32286:
    #data 0x041c
DAT_ce32288:
    #data 0x01f9
DAT_ce3228a:
    #data 0x03f9
DAT_ce3228c:
    #data 0x0327
    #align4

PTR_ce32290:
    #data loc_8c034dee
DAT_ce32294:
    #data 0xc2892492
PTR_ce32298:
    #data loc_8c035162
PTR_ce3229c:
    #data loc_8c0511b4
PTR_ce322a0:
    #data loc_8c034e8c
PTR_ce322a4:
    #data loc_8c26a518
PTR_ce322a8:
    #data loc_8c04223a
PTR_ce322ac:
    #data loc_8c051648
PTR_ce322b0:
    #data PTR_ce334d4

;=============================================

LAB_ce322b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce3240c,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32410,pc),r2
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
    mov.w @(DAT_ce32404,pc),r0
    mov 0x14,r5
    mov 0x02,r6
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32406,pc),r0
    mov.l @(PTR_ce32414,pc),r3
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

LAB_ce32306:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32418,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32320
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3241c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32320:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32328:
    mov r4,r3
    mov.l @(PTR_ce32420,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3233a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    fldi0 fr4
    mov 0x00,r13
    mov.l @(PTR_ce32410,pc),r3
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
    mov.w @(DAT_ce32404,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32406,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3240c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32424,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32408,pc),r0
    mov 0x36,r2
    mov.l @(PTR_ce32428,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x08,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32414,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce323ba:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32418,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce323da
    mov.l @(PTR_ce3241c,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce323da:
    mov.w @(DAT_ce3240a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce323fc
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce3242c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32430,pc),r0
    mov.l @(PTR_ce32434,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce323fc:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32404:
    #data 0x01f9
DAT_ce32406:
    #data 0x041c
DAT_ce32408:
    #data 0x01a1
DAT_ce3240a:
    #data 0x0141
    #align4

PTR_ce3240c:
    #data loc_8c05218a
PTR_ce32410:
    #data loc_8c035162
PTR_ce32414:
    #data loc_8c034e8c
PTR_ce32418:
    #data loc_8c034dee
PTR_ce3241c:
    #data loc_8c051648
PTR_ce32420:
    #data PTR_ce334e8
PTR_ce32424:
    #data loc_8c05115a
PTR_ce32428:
    #data loc_8c2896b0
DAT_ce3242c:
    #data 0xc0a00000
DAT_ce32430:
    #data 0x431e9249
PTR_ce32434:
    #data loc_8c050ea4

;=============================================

LAB_ce32438:
    mov r4,r3
    mov.l @(PTR_ce3257c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3244a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32580,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32584,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32588,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3256c,pc),r0
    mov 0x05,r2
    mov 0x00,r4
    mov.l @(PTR_ce3258c,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x08,r5
    mov.b @(0x2,r14),r0
    mov 0x02,r6
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32590,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce324a8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32594,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324c2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32598,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce324c2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce324ca:
    mov r4,r3
    mov.l @(PTR_ce3259c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce324dc:
    mov.w @(DAT_ce32570,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0xE4,r0
    mov.b @(r0,r14),r2
    mov r14,r4
    mov.l @(PTR_ce325a0,pc),r0
    extu.b r2,r2
    mov.w @(DAT_ce3256e,pc),r5
    shll2 r2
    mov.l @(r0,r2),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce324fc:
    mov.w @(DAT_ce32572,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32574,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce325a8
    mov.w @(DAT_ce32576,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3253c
    mov.w @(DAT_ce32578,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3253c
    mov.l @(PTR_ce325a4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce325a8
    mov r0,r4
    bra LAB_ce3255e
    mov 0x02,r2

LAB_ce3253c:
    mov.w @(DAT_ce32576,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce325a8
    mov.w @(DAT_ce32578,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce325a8
    mov.l @(PTR_ce325a4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce325a8
    mov r0,r4
    mov 0x01,r2

LAB_ce3255e:
    mov.w @(DAT_ce3257a,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3256c:
    #data 0x01a1
DAT_ce3256e:
    #data 0x02a4
DAT_ce32570:
    #data 0x0205
DAT_ce32572:
    #data 0x01fa
DAT_ce32574:
    #data 0x0c00
DAT_ce32576:
    #data 0x01fe
DAT_ce32578:
    #data 0x01a3
DAT_ce3257a:
    #data 0x01f7
    #align4

PTR_ce3257c:
    #data PTR_ce334f0
PTR_ce32580:
    #data loc_8c05218a
PTR_ce32584:
    #data loc_8c035162
PTR_ce32588:
    #data loc_8c05115a
PTR_ce3258c:
    #data loc_8c2896b0
PTR_ce32590:
    #data loc_8c034e8c
PTR_ce32594:
    #data loc_8c034dee
PTR_ce32598:
    #data loc_8c051648
PTR_ce3259c:
    #data PTR_ce334f8
PTR_ce325a0:
    #data PTR_ce33500
PTR_ce325a4:
    #data loc_8c045790

;=============================================

LAB_ce325a8:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce325b0:
    mov.w @(DAT_ce326b2,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce326b4,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce325fc
    mov.w @(DAT_ce326b6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce325fc
    mov.w @(DAT_ce326b8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce325fc
    mov.l @(PTR_ce326c4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce325fc
    mov r0,r4
    mov.w @(DAT_ce326ba,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce325fc:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32604:
    rts
    mov 0x00,r0

LAB_ce32608:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce326bc,pc),r1
    mov.l @(PTR_ce326c8,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce32620:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce326be,pc),r3
    mov r4,r14
    mov 0x05,r6
    mov.l @(PTR_ce326cc,pc),r2
    add r14,r3
    mov r6,r5
    mov.l r3,@r15
    jsr @r2
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr15
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov 0x0A,r3
    mov.w @(DAT_ce326c0,pc),r0
    mov 0x0F,r5
    mov 0x00,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce326d0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    bsr FUN_ce32b86
    mov r14,r4
    mova @(DAT_ce326d4,pc),r0
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce326dc,pc),r3
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce326d8,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov 0x0C,r0
    fmov fr15,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce326e0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce326e4,pc),r3
    mov 0x3C,r0
    mov 0x02,r5
    mov.w r0,@(0x1c,r14)
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce326e4,pc),r2
    mov 0x02,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce326c2,pc),r0
    mov 0x01,r2
    mov.l @(r0,r14),r3
    mov 0x21,r0
    mov.b r2,@(r0,r3)
    add 0x10,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326b2:
    #data 0x01fa
DAT_ce326b4:
    #data 0x0c00
DAT_ce326b6:
    #data 0x01fe
DAT_ce326b8:
    #data 0x01a3
DAT_ce326ba:
    #data 0x01f7
DAT_ce326bc:
    #data 0x01f9
DAT_ce326be:
    #data 0x02a4
DAT_ce326c0:
    #data 0x01a0
DAT_ce326c2:
    #data 0x020c
    #align4

PTR_ce326c4:
    #data loc_8c045790
PTR_ce326c8:
    #data PTR_ce3351c
PTR_ce326cc:
    #data loc_8c02fec4
PTR_ce326d0:
    #data loc_8c034e8c
DAT_ce326d4:
    #data 0xc2aa0000
DAT_ce326d8:
    #data 0x4331db6d
PTR_ce326dc:
    #data loc_8c103660
PTR_ce326e0:
    #data loc_8c056f2a
PTR_ce326e4:
    #data loc_8c0e8514

;=============================================

LAB_ce326e8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce3270c
    mov.w @(DAT_ce32820,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce32822,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce3270c:
    mov.w @(DAT_ce32824,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x03,r6
    mov.l @(PTR_ce32828,pc),r3
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
    mova @(DAT_ce3282c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32830,pc),r0
    mov.l @(PTR_ce32834,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32838,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3283c,pc),r3
    mov 0x04,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32760:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bt LAB_ce32784
    mov.w @(DAT_ce32820,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce32822,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce32784:
    mov.w @(DAT_ce32824,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x06,r6
    mov.l @(PTR_ce32828,pc),r3
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
    mova @(DAT_ce3282c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32830,pc),r0
    mov.l @(PTR_ce32834,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32838,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce327ce:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32824,pc),r0
    mov 0x0A,r3
    mov r4,r14
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x07,r6
    mov.l @(PTR_ce32828,pc),r3
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
    mova @(DAT_ce32840,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32844,pc),r0
    mov.l @(PTR_ce32834,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32838,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32820:
    #data 0x01d2
DAT_ce32822:
    #data 0x0130
DAT_ce32824:
    #data 0x01a0
    #align4

PTR_ce32828:
    #data loc_8c034e8c
DAT_ce3282c:
    #data 0xc326aaaa
DAT_ce32830:
    #data 0x42009249
PTR_ce32834:
    #data loc_8c103660
PTR_ce32838:
    #data loc_8c056f2a
PTR_ce3283c:
    #data loc_8c0e8514
DAT_ce32840:
    #data 0xc1c80000
DAT_ce32844:
    #data 0x433c9249

;=============================================

LAB_ce32848:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce32990,pc),r3
    mov r4,r14
    mov 0x05,r6
    mov.l @(PTR_ce32998,pc),r2
    add r14,r3
    mov r6,r5
    mov.l r3,@r15
    jsr @r2
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr15
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov 0x0A,r3
    mov.w @(DAT_ce32992,pc),r0
    mov 0x0F,r5
    mov 0x01,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3299c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    bsr FUN_ce32b86
    mov r14,r4
    mova @(DAT_ce329a0,pc),r0
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce329a8,pc),r3
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce329a4,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov 0x0C,r0
    fmov fr15,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce329ac,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x3C,r0
    mov.l @(PTR_ce329b4,pc),r3
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce329b0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x03,r5
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce329b4,pc),r2
    mov 0x03,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce328dc:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32994,pc),r1
    mov.l @(PTR_ce329b8,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce328f4:
    mov.w @(DAT_ce32996,pc),r0
    mov 0x01,r2
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    mov 0x21,r0
    mov r13,r5
    mov.b r2,@(r0,r3)
    bsr FUN_ce32ba0
    mov r14,r4
    tst r0,r0
    bt LAB_ce32920
    mov.b @(0xb,r13),r0
    mov 0x0F,r5
    mov.l @(PTR_ce329bc,pc),r3
    mov 0x00,r6
    extu.b r0,r7
    jsr @r3
    mov r14,r4

LAB_ce32920:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32988
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce3299c,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32996,pc),r0
    mov 0x00,r3
    mov.l @(PTR_ce329c0,pc),r1
    mov 0x03,r5
    mov.l @(r0,r14),r2
    mov 0x21,r0
    mov 0x00,r6
    mov.b r3,@(r0,r2)
    mov.b @(0xd,r13),r0
    mov.b @(r0,r1),r3
    mova @(DAT_ce329c4,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce329c8,pc),r0
    extu.b r3,r3
    fmov.s @r0,fr1
    shll16 r3
    lds r3,FPUL
    mov 0x60,r0
    mov.l @(PTR_ce329b4,pc),r3
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce329cc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce329b4,pc),r2
    mov 0x01,r6
    mov 0x03,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32988:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32990:
    #data 0x02a4
DAT_ce32992:
    #data 0x01a0
DAT_ce32994:
    #data 0x01f7
DAT_ce32996:
    #data 0x020c
    #align4

PTR_ce32998:
    #data loc_8c02fec4
PTR_ce3299c:
    #data loc_8c034e8c
DAT_ce329a0:
    #data 0xc2aa0000
DAT_ce329a4:
    #data 0x4331db6d
PTR_ce329a8:
    #data loc_8c103660
PTR_ce329ac:
    #data loc_8c056f2a
DAT_ce329b0:
    #data 0x3f892492
PTR_ce329b4:
    #data loc_8c0e8514
PTR_ce329b8:
    #data PTR_ce3352c
PTR_ce329bc:
    #data loc_8c034f54
PTR_ce329c0:
    #data DAT_ce33540
DAT_ce329c4:
    #data 0x40092492
DAT_ce329c8:
    #data 0x47800000
DAT_ce329cc:
    #data 0xbf4db6db

;=============================================

LAB_ce329d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32aee,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov 0x00,r2
    mov.l @(r0,r14),r3
    mov 0x21,r0
    mov.b r2,@(r0,r3)
    mov.l @r15,r5
    bsr FUN_ce32ba0
    mov r14,r4
    tst r0,r0
    bt LAB_ce329fe
    mov.l @r15,r7
    mov 0x0F,r5
    mov.l @(PTR_ce32af8,pc),r3
    mov 0x01,r6
    mov.b @(0xb,r7),r0
    extu.b r0,r7
    jsr @r3
    mov r14,r4

LAB_ce329fe:
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
    mov 0x6C,r0
    fmov.s @(r0,r14),fr3
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt LAB_ce32a48
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce32afc,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32b00,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)

LAB_ce32a48:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a50:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x60,r1
    mov r4,r14
    add r14,r1
    mov.l @(PTR_ce32b04,pc),r3
    mov 0x38,r0
    mov.l r5,@r15
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
    mov.w @(DAT_ce32af0,pc),r0
    mov 0x02,r5
    mov.b @(r0,r14),r2
    tst r5,r2
    bt LAB_ce32aa6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32b08,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32aa6:
    mov.b @(r0,r14),r3
    mov 0x01,r6
    tst r6,r3
    bt LAB_ce32ae6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    mov.l @(PTR_ce32b0c,pc),r1
    and r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32af2,pc),r0
    mov.l @(r0,r14),r4
    add 0x2E,r0
    mov.b r6,@(r0,r4)
    add 0x03,r0
    mov.b r5,@(r0,r4)
    mov 0x20,r5
    mov.l @r15,r2
    mov.b @(0xd,r2),r0
    mov.b @(r0,r1),r2
    mov.w @(DAT_ce32af4,pc),r0
    mov.b r2,@(r0,r14)
    add 0x9C,r0
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    mov 0x01,r3
    mov.b @(r0,r4),r2
    xor r3,r2
    mov.b r2,@(r0,r4)

LAB_ce32ae6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32aee:
    #data 0x020c
DAT_ce32af0:
    #data 0x0141
DAT_ce32af2:
    #data 0x01c8
DAT_ce32af4:
    #data 0x0205
    #align4

PTR_ce32af8:
    #data loc_8c034f54
PTR_ce32afc:
    #data loc_8c034e8c
DAT_ce32b00:
    #data 0x40092492
PTR_ce32b04:
    #data loc_8c034dee
DAT_ce32b08:
    #data 0xbf4db6db
PTR_ce32b0c:
    #data DAT_ce33548

;=============================================

LAB_ce32b10:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r1
    mov.l @(PTR_ce32c34,pc),r3
    add r14,r1
    mov 0x38,r0
    sts.l PR,@-r15
    fmov.s @r1,fr3
    mov 0x6C,r1
    fmov.s @(r0,r14),fr2
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
    mov.w @(DAT_ce32c24,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce32b6a
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32c38,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32c3c,pc),r2
    jsr @r2
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce32c40,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32b6a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b70:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32c44,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32c26,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;=============================================

FUN_ce32b86:
    mov 0x08,r0
    mov.b r0,@(0xc,r5)
    mov 0x01,r0
    mov 0x00,r4
    mov.b r0,@(0xd,r5)
    mov r4,r0
    nop
    mov.b r0,@(0xb,r5)
    mov.b r0,@(0xe,r5)
    mov.b r0,@(0xf,r5)
    mov 0x10,r0
    rts
    mov.b r4,@(r0,r5)

;=============================================

FUN_ce32ba0:
    mov.w @(DAT_ce32c28,pc),r0
    mov.w @(DAT_ce32c2a,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r4),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce32bb6
    mov 0x01,r6
    mov r6,r0
    nop
    mov.b r0,@(0xe,r5)

LAB_ce32bb6:
    mov.w @(DAT_ce32c2c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32bde
    mov.b @(0xf,r5),r0
    add 0xFF,r0
    mov.b r0,@(0xf,r5)
    add 0x01,r0
    exts.b r0,r0
    tst r0,r0
    bf LAB_ce32bde
    mov.w @(DAT_ce32c2e,pc),r0
    mov.l @(PTR_ce32c48,pc),r1
    mov.b @(r0,r4),r0
    extu.b r0,r0
    mov.b @(r0,r1),r0
    mov.b r0,@(0xf,r5)
    mov r6,r0
    nop
    mov.b r0,@(0xe,r5)

LAB_ce32bde:
    mov.w @(DAT_ce32c30,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32c00
    mov 0x10,r0
    mov.b @(r0,r5),r3
    add 0xFF,r3
    mov.b r3,@(r0,r5)
    add 0x01,r3
    exts.b r3,r3
    tst r3,r3
    bf LAB_ce32c00
    mov 0x06,r1
    mov.b r1,@(r0,r5)
    mov r6,r0
    nop
    mov.b r0,@(0xe,r5)

LAB_ce32c00:
    mov.b @(0xc,r5),r0
    add 0xFF,r0
    mov.b r0,@(0xc,r5)
    add 0x01,r0
    exts.b r0,r0
    tst r0,r0
    bf LAB_ce32c8a
    mov.b @(0xe,r5),r0
    tst r0,r0
    bt LAB_ce32c4c
    mov.b @(0xd,r5),r0
    mov 0x07,r3
    cmp/ge r3,r0
    bt LAB_ce32c58
    mov.b @(0xd,r5),r0
    add 0x01,r0
    bra LAB_ce32c58
    mov.b r0,@(0xd,r5)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c24:
    #data 0x041c
DAT_ce32c26:
    #data 0x02a4
DAT_ce32c28:
    #data 0x034e
DAT_ce32c2a:
    #data 0x3c00
DAT_ce32c2c:
    #data 0x0525
DAT_ce32c2e:
    #data 0x01fe
DAT_ce32c30:
    #data 0x0411
    #align4

PTR_ce32c34:
    #data loc_8c034dee
PTR_ce32c38:
    #data loc_8c0511b4
PTR_ce32c3c:
    #data loc_8c02fd26
PTR_ce32c40:
    #data loc_8c051648
PTR_ce32c44:
    #data PTR_ce33550
PTR_ce32c48:
    #data DAT_ce33568

;=============================================

LAB_ce32c4c:
    mov.b @(0xd,r5),r0
    cmp/pl r0
    bf LAB_ce32c58
    mov.b @(0xd,r5),r0
    add 0xFF,r0
    mov.b r0,@(0xd,r5)

LAB_ce32c58:
    mov.l @(PTR_ce32d90,pc),r1
    mov r5,r3
    mov.b @(0xd,r5),r0
    add 0x14,r3
    mov.b @(r0,r1),r0
    mov.b r0,@(0xc,r5)
    mov 0x00,r0
    mov.b r0,@(0xe,r5)
    mov.b @(0xb,r5),r0
    add 0x01,r0
    mov.b r0,@(0xb,r5)
    mov.b @(0xb,r5),r0
    and 0x01,r0
    mov.b r0,@(0xb,r5)
    mov.b @(0xd,r5),r0
    mov.b r0,@r3
    mov.b @(0xb,r5),r0
    tst r0,r0
    bt LAB_ce32c84
    mov.l @(PTR_ce32d94,pc),r3
    jsr @r3
    mov 0x1E,r5

LAB_ce32c84:
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce32c8a:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    nop

LAB_ce32c92:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32d98,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32d88,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32cd2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32d9c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32da0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32da4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d8a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32cd2
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32cd2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32cd8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32d98,pc),r3
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
    mov.w @(DAT_ce32d8c,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce32d82
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32da8,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce32dac,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32d8e,pc),r0
    mov 0x02,r5
    mov.l @(PTR_ce32db0,pc),r1
    mov.l @(r0,r14),r4
    add 0x2E,r0
    mov.b r5,@(r0,r4)
    add 0x03,r0
    mov.b r5,@(r0,r4)
    add 0xA8,r0
    mov 0x21,r5
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    mov 0x01,r3
    mov.b @(r0,r4),r2
    xor r3,r2
    mov.b r2,@(r0,r4)
    lds.l @r15+,PR
    jmp @r1
    mov.l @r15+,r14

LAB_ce32d82:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d88:
    #data 0x0141
DAT_ce32d8a:
    #data 0x0130
DAT_ce32d8c:
    #data 0x041c
DAT_ce32d8e:
    #data 0x01c8
    #align4

PTR_ce32d90:
    #data DAT_ce33560
PTR_ce32d94:
    #data loc_8c042008
PTR_ce32d98:
    #data loc_8c034dee
DAT_ce32d9c:
    #data 0xc0a00000
DAT_ce32da0:
    #data 0x42092492
DAT_ce32da4:
    #data 0xbff00000
PTR_ce32da8:
    #data loc_8c0511b4
PTR_ce32dac:
    #data loc_8c034e8c
PTR_ce32db0:
    #data loc_8c0423fc

;=============================================

LAB_ce32db4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32f08,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32dce
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32f0c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32dce:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32dd6:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32f10,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32efe,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32dec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32f08,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32e06
    lds.l @r15+,PR
    mov.l @(PTR_ce32f0c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e06:
    mov.w @(DAT_ce32f00,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32e30
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x10,r3
    mov.w @(DAT_ce32f02,pc),r0
    mov 0x02,r2
    mov 0x22,r5
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

LAB_ce32e30:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e36:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32f14,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32efe,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e4c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32f08,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32f00,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32e72
    mov.b @(0x6,r14),r0
    fldi0 fr3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32f18,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32e72:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e78:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r1
    add r14,r1
    mov 0x38,r0
    sts.l PR,@-r15
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
    mov.w @(DAT_ce32f04,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce32ef8
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32f1c,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce32f20,pc),r3
    mov 0x08,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32f02,pc),r0
    mov 0x02,r5
    mov.l @(PTR_ce32f24,pc),r1
    mov.l @(r0,r14),r4
    add 0x2E,r0
    mov.b r5,@(r0,r4)
    add 0x03,r0
    mov.b r5,@(r0,r4)
    add 0xA8,r0
    mov 0x23,r5
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    mov 0x01,r3
    mov.b @(r0,r4),r2
    xor r3,r2
    mov.b r2,@(r0,r4)
    lds.l @r15+,PR
    jmp @r1
    mov.l @r15+,r14

LAB_ce32ef8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32efe:
    #data 0x02a4
DAT_ce32f00:
    #data 0x0141
DAT_ce32f02:
    #data 0x01c8
DAT_ce32f04:
    #data 0x041c
    #align4

PTR_ce32f08:
    #data loc_8c034dee
PTR_ce32f0c:
    #data loc_8c051648
PTR_ce32f10:
    #data PTR_ce3356c
PTR_ce32f14:
    #data PTR_ce33578
DAT_ce32f18:
    #data 0xbf4db6db
PTR_ce32f1c:
    #data loc_8c0511b4
PTR_ce32f20:
    #data loc_8c034e8c
PTR_ce32f24:
    #data loc_8c0423fc

;=============================================

LAB_ce32f28:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33078,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32f42
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3307c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32f42:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32f4a:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33080,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce33070,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f60:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l r5,@r15
    mov r4,r14
    bsr FUN_ce32ba0
    mov r14,r4
    tst r0,r0
    bt LAB_ce32f82
    mov.l @r15,r7
    mov 0x0F,r5
    mov.l @(PTR_ce33084,pc),r3
    mov 0x01,r6
    mov.b @(0xb,r7),r0
    extu.b r0,r7
    jsr @r3
    mov r14,r4

LAB_ce32f82:
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32fca
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce33088,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce3308c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)

LAB_ce32fca:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fd2:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33090,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce33070,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32fe8:
    mov.w @(DAT_ce33072,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33094,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33006:
    mov.w @(DAT_ce33074,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33098,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce33014:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x21,r0
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3302a
    bra LAB_ce331d6
    nop

LAB_ce3302a:
    mov.b @(0x1,r14),r0
    mov.l @(PTR_ce3309c,pc),r13
    extu.b r0,r0
    mov r0,r3
    shll r0
    add r3,r0
    mov.l @(PTR_ce330a0,pc),r3
    shll2 r0
    shll r0
    add r0,r13
    mov.w @(DAT_ce33074,pc),r0
    mov.l @(r0,r14),r4
    add 0x88,r0
    mov.b @(r0,r4),r1
    jsr @r3
    mov 0x03,r0
    shll2 r0
    shll r0
    add r0,r13
    mova @(DAT_ce330a4,pc),r0
    fmov.s @r0,fr15
    mov.w @(DAT_ce33076,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt LAB_ce330a8
    mov.w @r13,r2
    mov.w @(DAT_ce33074,pc),r0
    lds r2,FPUL
    mov.l @(r0,r14),r3
    mov 0x34,r0
    float FPUL,fr3
    fmov.s @(r0,r3),fr2
    fmul fr15,fr3
    bra LAB_ce330ba
    fsub fr3,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33070:
    #data 0x02a4
DAT_ce33072:
    #data 0x01ea
DAT_ce33074:
    #data 0x01c8
DAT_ce33076:
    #data 0x0130
    #align4

PTR_ce33078:
    #data loc_8c034dee
PTR_ce3307c:
    #data loc_8c051648
PTR_ce33080:
    #data PTR_ce3357c
PTR_ce33084:
    #data loc_8c034f54
PTR_ce33088:
    #data loc_8c034e8c
DAT_ce3308c:
    #data 0x40092492
PTR_ce33090:
    #data PTR_ce33588
PTR_ce33094:
    #data PTR_ce33594
PTR_ce33098:
    #data loc_8c04cc1c
PTR_ce3309c:
    #data DAT_ce335a8
PTR_ce330a0:
    #data loc_8c1292d4
DAT_ce330a4:
    #data 0x3fd55555

;=============================================

LAB_ce330a8:
    mov.w @r13,r3
    mov.w @(DAT_ce331e8,pc),r0
    lds r3,FPUL
    mov.l @(r0,r14),r2
    mov 0x34,r0
    fmov fr15,fr0
    float FPUL,fr3
    fmov.s @(r0,r2),fr2
    fmac fr0,fr3,fr2

LAB_ce330ba:
    mov.l @(PTR_ce331f0,pc),r3
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce331ea,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3310a
    mov.w @(DAT_ce331e8,pc),r0
    mov.l @(r0,r14),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fmov fr3,@(r0,r3)
    mov.w @(DAT_ce331e8,pc),r0
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce331ec,pc),r0
    mov.w @(r0,r3),r2
    tst r2,r2
    bt LAB_ce330f6
    mov.w @r13,r3
    mov.w @(DAT_ce331e8,pc),r0
    lds r3,FPUL
    mov.l @(r0,r14),r2
    mov 0x34,r0
    fmov fr15,fr0
    float FPUL,fr3
    fmov.s @(r0,r2),fr2
    fmac fr0,fr3,fr2
    bra LAB_ce3310a
    fmov fr2,@(r0,r2)

LAB_ce330f6:
    mov.w @r13,r3
    mov.w @(DAT_ce331e8,pc),r0
    lds r3,FPUL
    mov.l @(r0,r14),r1
    mov 0x34,r0
    float FPUL,fr3
    fmov.s @(r0,r1),fr2
    fmul fr15,fr3
    fsub fr3,fr2
    fmov fr2,@(r0,r1)

LAB_ce3310a:
    mov.w @(0x2,r13),r0
    mov.w @(DAT_ce331ee,pc),r1
    mov r0,r3
    mov.w @(DAT_ce331e8,pc),r0
    lds r3,FPUL
    add r14,r1
    mov.l @(r0,r14),r2
    mov 0x38,r0
    float FPUL,fr3
    fmov.s @(r0,r2),fr2
    mova @(DAT_ce331f4,pc),r0
    mov.w @(DAT_ce331ec,pc),r2
    fmov.s @r0,fr0
    mov 0x38,r0
    add r14,r2
    fmac fr0,fr3,fr2
    fmov fr2,@(r0,r14)
    mov.b @(0x4,r13),r0
    mov.b r0,@r1
    mov.w @(DAT_ce331e8,pc),r0
    mov.w @(DAT_ce331ec,pc),r1
    mov.l @(r0,r14),r3
    mov.b @(0x5,r13),r0
    add r3,r1
    mov.w @r1,r3
    extu.b r0,r0
    and 0x01,r0
    xor r3,r0
    mov.w r0,@r2
    mov.b @(0x6,r13),r0
    cmp/pl r0
    bf LAB_ce3315c
    mov.w @(DAT_ce331e8,pc),r0
    mov.l @(r0,r14),r2
    mov 0x24,r0
    mov.b @(r0,r2),r3
    mov.b @(r0,r14),r2
    cmp/gt r2,r3
    bt LAB_ce3316a
    bra LAB_ce33180
    nop

LAB_ce3315c:
    mov.w @(DAT_ce331e8,pc),r0
    mov.l @(r0,r14),r2
    mov 0x24,r0
    mov.b @(r0,r2),r3
    mov.b @(r0,r14),r2
    cmp/ge r2,r3
    bt LAB_ce33180

LAB_ce3316a:
    mov 0x24,r0
    mov.b @(r0,r14),r4
    mov.w @(DAT_ce331e8,pc),r0
    mov.l @(r0,r14),r3
    mov 0x24,r0
    mov.b @(r0,r3),r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce331e8,pc),r0
    mov.l @(r0,r14),r3
    mov 0x24,r0
    mov.b r4,@(r0,r3)

LAB_ce33180:
    mov.w @(DAT_ce331e8,pc),r0
    mov.l @(r0,r14),r3
    mov 0x48,r0
    mov.l @(r0,r3),r2
    mov.b @(0x7,r13),r0
    lds r2,FPUL
    extu.b r0,r0
    shll8 r0
    float FPUL,fr3
    lds r0,FPUL
    mov 0x48,r0
    float FPUL,fr2
    fadd fr2,fr3
    ftrc fr3,FPUL
    sts FPUL,r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce331e8,pc),r0
    mov.l @(r0,r14),r2
    add 0x88,r0
    mov.b @(r0,r2),r3
    add 0x0A,r0
    mov.b @(r0,r14),r2
    cmp/eq r2,r3
    bt LAB_ce331c8
    mov.w @(DAT_ce331ee,pc),r0
    mov 0x10,r5
    mov.l @(PTR_ce331f8,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce331e8,pc),r0
    mov.l @(r0,r14),r2
    add 0x88,r0
    mov.b @(r0,r2),r3
    add 0x0A,r0
    mov.b r3,@(r0,r14)

LAB_ce331c8:
    lds.l @r15+,PR
    mov.l @(PTR_ce331fc,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce331d6:
    lds.l @r15+,PR
    mov.w @(DAT_ce331e8,pc),r0
    mov r14,r5
    mov.l @(PTR_ce33200,pc),r3
    fmov.s @r15+,fr15
    mov.l @(r0,r14),r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331e8:
    #data 0x01c8
DAT_ce331ea:
    #data 0x01fd
DAT_ce331ec:
    #data 0x0130
DAT_ce331ee:
    #data 0x0158
    #align4

PTR_ce331f0:
    #data loc_8c0500ac
DAT_ce331f4:
    #data 0x40092492
PTR_ce331f8:
    #data loc_8c034e8c
PTR_ce331fc:
    #data loc_8c04cbcc
PTR_ce33200:
    #data loc_8c04cc1c

;=============================================

LAB_ce33204:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce332e8,pc),r1
    mov.l @(PTR_ce332f0,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3321c:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce332ea,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33236
    mov 0x03,r5
    cmp/eq 0x01,r0
    bt LAB_ce33236
    cmp/eq 0x02,r0
    bf LAB_ce3323a

LAB_ce33236:
    mov.w @(DAT_ce332ec,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3323a:
    mov.l @(PTR_ce332f4,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33240:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce332ea,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3325a
    mov 0x03,r5
    cmp/eq 0x01,r0
    bt LAB_ce3325a
    cmp/eq 0x02,r0
    bf LAB_ce3325e

LAB_ce3325a:
    mov.w @(DAT_ce332ec,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3325e:
    mov.l @(PTR_ce332f4,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33264:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce332ea,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33284
    cmp/eq 0x01,r0
    bt LAB_ce3328e
    cmp/eq 0x02,r0
    bt LAB_ce33294
    bra LAB_ce332a0
    nop

LAB_ce33284:
    mov.w @(DAT_ce332ec,pc),r0
    mov.b r5,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce332a0
    mov.b r5,@(r0,r4)

LAB_ce3328e:
    mov.w @(DAT_ce332ec,pc),r0
    bra LAB_ce3329a
    mov.b r5,@(r0,r4)

LAB_ce33294:
    mov.w @(DAT_ce332ec,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r4)

LAB_ce3329a:
    mov.w @(DAT_ce332ee,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce332a0:
    mov.l @(PTR_ce332f4,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce332a6:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce332ea,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce332c6
    cmp/eq 0x01,r0
    bt LAB_ce332d0
    cmp/eq 0x02,r0
    bt LAB_ce332d6
    bra LAB_ce332e2
    nop

LAB_ce332c6:
    mov.w @(DAT_ce332ec,pc),r0
    mov.b r5,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce332e2
    mov.b r5,@(r0,r4)

LAB_ce332d0:
    mov.w @(DAT_ce332ec,pc),r0
    bra LAB_ce332dc
    mov.b r5,@(r0,r4)

LAB_ce332d6:
    mov.w @(DAT_ce332ec,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r4)

LAB_ce332dc:
    mov.w @(DAT_ce332ee,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce332e2:
    mov.l @(PTR_ce332f4,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce332e8:
    #data 0x01f7
DAT_ce332ea:
    #data 0x04c9
DAT_ce332ec:
    #data 0x01e9
DAT_ce332ee:
    #data 0x01a3
    #align4

PTR_ce332f0:
    #data PTR_ce33b30
PTR_ce332f4:
    #data loc_8c0530d8
DAT_ce332f8:
    #data 0x0201
    #data 0x0201
DAT_ce332fc:
    #data 0xffff
    #data 0xffff
DAT_ce33300:
    #data 0xffff
    #data 0xffff
DAT_ce33304:
    #data 0x0201
    #data 0x0201
DAT_ce33308:
    #data 0xffff
    #data 0xffff
DAT_ce3330c:
    #data 0xffff
    #data 0xffff
DAT_ce33310:
    #data 0x0201
    #data 0x0201
DAT_ce33314:
    #data 0xffff
    #data 0xffff
DAT_ce33318:
    #data 0xffff
    #data 0xffff
DAT_ce3331c:
    #data 0x0201
    #data 0x0201
DAT_ce33320:
    #data 0xffff
    #data 0xffff
DAT_ce33324:
    #data 0xffff
    #data 0xffff
DAT_ce33328:
    #data 0x0201
    #data 0x0200
DAT_ce3332c:
    #data 0x02ff
    #data 0x0201
DAT_ce33330:
    #data 0xffff
    #data 0x02ff
DAT_ce33334:
    #data 0x0201
    #data 0x0201
DAT_ce33338:
    #data 0x02ff
    #data 0x02ff
DAT_ce3333c:
    #data 0xffff
    #data 0xffff
DAT_ce33340:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce33350:
    #data 0x0003
    #data 0x0000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33360:
    #data 0x0003
    #data 0x9100
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce33370:
    #data 0x0003
    #data 0x8100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
    #align4

PTR_ce33380:
    #data LAB_ce30372
PTR_ce33384:
    #data LAB_ce3001c
PTR_ce33388:
    #data LAB_ce306f0
PTR_ce3338c:
    #data LAB_ce30cb0
PTR_ce33390:
    #data LAB_ce3106e
PTR_ce33394:
    #data LAB_ce31172
PTR_ce33398:
    #data LAB_ce312aa
PTR_ce3339c:
    #data LAB_ce31540
PTR_ce333a0:
    #data LAB_ce324dc
PTR_ce333a4:
    #data LAB_ce32608
PTR_ce333a8:
    #data LAB_ce328dc
PTR_ce333ac:
    #data LAB_ce32fe8
PTR_ce333b0:
    #data LAB_ce33204
PTR_ce333b4:
    #data FUN_ce30324
PTR_ce333b8:
    #data LAB_ce316b4
PTR_ce333bc:
    #data LAB_ce30faa
PTR_ce333c0:
    #data LAB_ce3321c
PTR_ce333c4:
    #data LAB_ce33240
PTR_ce333c8:
    #data LAB_ce33264
PTR_ce333cc:
    #data LAB_ce332a6
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce333e0:
    #data LAB_ce30608
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
DAT_ce333f0:
    #data 0x0003
    #data 0x0201
    #data 0xff03
    #data 0x0000
    #align4

PTR_ce333f8:
    #data LAB_ce30480
PTR_ce333fc:
    #data LAB_ce304d6
PTR_ce33400:
    #data LAB_ce3070c
PTR_ce33404:
    #data LAB_ce30a42
PTR_ce33408:
    #data LAB_ce30a6a
PTR_ce3340c:
    #data LAB_ce3070c
PTR_ce33410:
    #data LAB_ce30cd2
PTR_ce33414:
    #data LAB_ce30efa
PTR_ce33418:
    #data LAB_ce30ee4
PTR_ce3341c:
    #data LAB_ce30cc4
PTR_ce33420:
    #data LAB_ce31080
PTR_ce33424:
    #data LAB_ce31102
PTR_ce33428:
    #data LAB_ce31184
PTR_ce3342c:
    #data LAB_ce3120c
PTR_ce33430:
    #data FUN_ce31288
PTR_ce33434:
    #data LAB_ce312bc
PTR_ce33438:
    #data LAB_ce312f8
PTR_ce3343c:
    #data LAB_ce31398
PTR_ce33440:
    #data LAB_ce313ba
PTR_ce33444:
    #data LAB_ce31410
PTR_ce33448:
    #data LAB_ce31416
PTR_ce3344c:
    #data LAB_ce31428
PTR_ce33450:
    #data LAB_ce3148c
PTR_ce33454:
    #data LAB_ce31428
PTR_ce33458:
    #data LAB_ce314f4
PTR_ce3345c:
    #data LAB_ce3156c
PTR_ce33460:
    #data LAB_ce31618
PTR_ce33464:
    #data LAB_ce31686
DAT_ce33468:
    #data 0x0000
    #data 0xfff6
DAT_ce3346c:
    #data 0x1000
    #data 0x0000
DAT_ce33470:
    #data 0x0000
    #data 0x0000
DAT_ce33474:
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0xfff8
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x000a
    #data 0xf000
    #data 0xffff
    #data 0x0000
    #data 0xfff6
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0xfff8
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0xfff8
    #data 0xf000
    #data 0xffff
    #align4

PTR_ce334a8:
    #data LAB_ce316c6
PTR_ce334ac:
    #data LAB_ce3183a
PTR_ce334b0:
    #data LAB_ce318ac
PTR_ce334b4:
    #data LAB_ce319dc
PTR_ce334b8:
    #data LAB_ce31aac
PTR_ce334bc:
    #data LAB_ce31b62
PTR_ce334c0:
    #data LAB_ce31b90
PTR_ce334c4:
    #data LAB_ce31ce4
PTR_ce334c8:
    #data LAB_ce31db4
PTR_ce334cc:
    #data LAB_ce31e10
PTR_ce334d0:
    #data LAB_ce31e70
PTR_ce334d4:
    #data LAB_ce31edc
PTR_ce334d8:
    #data LAB_ce31f94
PTR_ce334dc:
    #data LAB_ce3203c
PTR_ce334e0:
    #data LAB_ce32174
PTR_ce334e4:
    #data FUN_ce3224e
PTR_ce334e8:
    #data LAB_ce322b4
PTR_ce334ec:
    #data LAB_ce32306
PTR_ce334f0:
    #data LAB_ce3233a
PTR_ce334f4:
    #data LAB_ce323ba
PTR_ce334f8:
    #data LAB_ce3244a
PTR_ce334fc:
    #data LAB_ce324a8
PTR_ce33500:
    #data LAB_ce31a88
PTR_ce33504:
    #data LAB_ce31d90
PTR_ce33508:
    #data LAB_ce31e96
PTR_ce3350c:
    #data LAB_ce32270
PTR_ce33510:
    #data LAB_ce32328
PTR_ce33514:
    #data LAB_ce32438
PTR_ce33518:
    #data LAB_ce324ca
PTR_ce3351c:
    #data LAB_ce324fc
PTR_ce33520:
    #data LAB_ce32604
PTR_ce33524:
    #data LAB_ce325b0
PTR_ce33528:
    #data LAB_ce32604
PTR_ce3352c:
    #data LAB_ce32620
PTR_ce33530:
    #data LAB_ce326e8
PTR_ce33534:
    #data LAB_ce32760
PTR_ce33538:
    #data LAB_ce327ce
PTR_ce3353c:
    #data LAB_ce32848
DAT_ce33540:
    #data 0x07
    #data 0x08
    #data 0x09
    #data 0x0a
    #data 0x0b
    #data 0x0c
    #data 0x0d
    #data 0x0e
DAT_ce33548:
    #data 0x20
    #data 0x20
    #data 0x20
    #data 0x28
    #data 0x28
    #data 0x28
    #data 0x30
    #data 0x30
PTR_ce33550:
    #data LAB_ce328f4
PTR_ce33554:
    #data LAB_ce329d0
PTR_ce33558:
    #data LAB_ce32a50
PTR_ce3355c:
    #data LAB_ce32b10
DAT_ce33560:
    #data 0x08
    #data 0x07
    #data 0x06
    #data 0x05
    #data 0x04
    #data 0x03
    #data 0x02
    #data 0x01
DAT_ce33568:
    #data 0x08
    #data 0x06
    #data 0x04
    #data 0x02
PTR_ce3356c:
    #data LAB_ce32c92
PTR_ce33570:
    #data LAB_ce32cd8
PTR_ce33574:
    #data LAB_ce32db4
PTR_ce33578:
    #data LAB_ce32dec
PTR_ce3357c:
    #data LAB_ce32e4c
PTR_ce33580:
    #data LAB_ce32e78
PTR_ce33584:
    #data LAB_ce32f28
PTR_ce33588:
    #data LAB_ce32f60
PTR_ce3358c:
    #data LAB_ce32a50
PTR_ce33590:
    #data LAB_ce32b10
PTR_ce33594:
    #data LAB_ce32b70
PTR_ce33598:
    #data LAB_ce32dd6
PTR_ce3359c:
    #data LAB_ce32e36
PTR_ce335a0:
    #data LAB_ce32f4a
PTR_ce335a4:
    #data LAB_ce32fd2
DAT_ce335a8:
    #data 0x00000000
    #data 0x00000000
    #data 0x00160056
    #data 0xc201000d
    #data 0x000cff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x000d0050
    #data 0xc201000d
    #data 0x000cff94
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x001e005e
    #data 0xc201000d
    #data 0x0020ff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x003a0067
    #data 0xc201000d
    #data 0x0036ff9b
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x0009006d
    #data 0xc201000d
    #data 0x0014ff8f
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00250060
    #data 0xc201000d
    #data 0x001bffac
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00180065
    #data 0xc201000d
    #data 0x0022ff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x002e0050
    #data 0xc201000d
    #data 0x0024ffa2
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00120069
    #data 0xc201000d
    #data 0x0012ff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x002a0055
    #data 0xc201000d
    #data 0x0026ff9b
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x002e006e
    #data 0xc201000d
    #data 0x001affa2
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x0018005c
    #data 0xc201000d
    #data 0x001eff9a
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00320068
    #data 0xc201000d
    #data 0x0012ff98
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0xfffb0070
    #data 0xc201000d
    #data 0x0000ff9a
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x0000007b
    #data 0xc201000d
    #data 0xfff6ff9b
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00050077
    #data 0xc201000d
    #data 0x0006ff98
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x002a0072
    #data 0xc201000d
    #data 0x002aff94
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00280061
    #data 0xc201000d
    #data 0x0024ff96
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x001d0062
    #data 0xc201000d
    #data 0x0011ff9a
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00220068
    #data 0xc201000d
    #data 0x001cff99
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x0026005c
    #data 0xc201000d
    #data 0x001cff9f
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00230068
    #data 0xc201000d
    #data 0x0010ff9d
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x0018005c
    #data 0xc201000d
    #data 0x0014ff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00100060
    #data 0xc201000d
    #data 0x0007ff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00160056
    #data 0xc201000d
    #data 0x000cff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00160056
    #data 0xc201000d
    #data 0x000cff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00160056
    #data 0xc201000d
    #data 0x000cff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00310065
    #data 0xc201000d
    #data 0x003aff9f
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x001c0061
    #data 0xc201000d
    #data 0x0022ffa4
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00370053
    #data 0xc201000d
    #data 0x0030ffa4
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00160056
    #data 0xc201000d
    #data 0x000cff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x0024005b
    #data 0xc201000d
    #data 0x0032ffa0
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00300064
    #data 0xc201000d
    #data 0x0034ffaa
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x0023004a
    #data 0xc201000d
    #data 0x000dffa6
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00300060
    #data 0xc201000d
    #data 0x002cffa4
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00160056
    #data 0xc201000d
    #data 0x000cff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x0028005c
    #data 0xc201000d
    #data 0x0027ff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00240050
    #data 0xc201000d
    #data 0x0020ffa4
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00160063
    #data 0xc201000d
    #data 0x0005ff9d
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00160056
    #data 0xc201000d
    #data 0x000cff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00160070
    #data 0xc201000d
    #data 0x0015ff93
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x0008006c
    #data 0xc201000d
    #data 0x0009ff93
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x001b0068
    #data 0xc201000d
    #data 0x0013ff9d
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0xfff8007e
    #data 0xc201000d
    #data 0xffe0ff63
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x000c006c
    #data 0xc201000d
    #data 0x001cff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00160056
    #data 0xc201000d
    #data 0x000cff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x001c0057
    #data 0xc201000d
    #data 0x0022ff9e
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x000e006b
    #data 0xc201000d
    #data 0x000dff9d
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x001a005d
    #data 0xc201000d
    #data 0x0018ff98
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00250068
    #data 0xc201000d
    #data 0x0022ff9e
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x0013006b
    #data 0xc201000d
    #data 0x001aff9c
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x001c0057
    #data 0xc201000d
    #data 0x0022ff9e
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x0018007e
    #data 0xc201000d
    #data 0x0005ff89
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x0001007c
    #data 0xc201000d
    #data 0xffeeff88
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x0004007a
    #data 0xc201000d
    #data 0xffedff8e
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00220070
    #data 0xc201000d
    #data 0x0024ff9f
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x00310064
    #data 0xc201000d
    #data 0x002affa0
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x002e0050
    #data 0xc201000d
    #data 0x0024ffa2
    #data 0xe401010e
    #data 0x00000000
    #data 0x00000000
    #data 0x0042004b
    #data 0xc201000d
    #data 0x0040ffb8
    #data 0xe401010e
PTR_ce33b30:
    #data LAB_ce33014
PTR_ce33b34:
    #data LAB_ce33006
PTR_ce33b38:
    #data LAB_ce33006
PTR_ce33b3c:
    #data LAB_ce33006
PTR_ce33b40:
    #data LAB_ce33006
