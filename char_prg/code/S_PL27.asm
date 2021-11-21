;╔══════════════════════════════════════════╗
;║ S_PL27 : Ken Masters Program             ║
;╚══════════════════════════════════════════╝
       
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c04242a 0x8C04242A
#symbol loc_8c045790 0x8C045790
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c04fea8 0x8C04FEA8
#symbol loc_8c04ff88 0x8C04FF88
#symbol loc_8c050048 0x8C050048
#symbol loc_8c050084 0x8C050084
#symbol loc_8c050552 0x8C050552
#symbol loc_8c050610 0x8C050610
#symbol loc_8c05064e 0x8C05064E
#symbol loc_8c050682 0x8C050682
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
#symbol loc_8c099590 0x8C099590
#symbol loc_8c0e22f0 0x8C0E22F0
#symbol loc_8c0e2534 0x8C0E2534
#symbol loc_8c0fd6b0 0x8C0FD6B0
#symbol loc_8c0fd966 0x8C0FD966
#symbol loc_8c103660 0x8C103660
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300c6,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300c8,pc),r7
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
    mov.l @(PTR_ce300cc,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    mov.l @(PTR_ce300d0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    mov.l @(PTR_ce300d4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    mov.l @(PTR_ce300d8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30304
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce3037a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce303c0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30168
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce300e4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce301d2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce302bc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30242
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30406
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30446
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    mov.l @(PTR_ce300dc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300e0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300c6:
    #data 0x0428
    #align4

PTR_ce300c8:
    #data PTR_ce33cdc
PTR_ce300cc:
    #data loc_8c054508
PTR_ce300d0:
    #data loc_8c054b34
PTR_ce300d4:
    #data loc_8c05496c
PTR_ce300d8:
    #data loc_8c054d04
PTR_ce300dc:
    #data loc_8c053e00
PTR_ce300e0:
    #data loc_8c0542e0

;=============================================

FUN_ce300e4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce301f0,pc),r3
    mov r4,r14
    mov.w @(DAT_ce301f2,pc),r6
    add r14,r3
    mov.l @(PTR_ce30200,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce30204,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3012e
    mov.l @r15,r3
    mov.b @(0x2,r3),r0
    tst r0,r0
    bf LAB_ce3012e
    mov.w @(DAT_ce301f4,pc),r0
    mov 0x00,r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce3013a
    mov r13,r12
    mov.w @(DAT_ce301f6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30138
    mov.w @(DAT_ce301f8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30132

LAB_ce3012e:
    bra LAB_ce3015c
    mov 0x00,r0

LAB_ce30132:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30138:
    mov 0x04,r12

LAB_ce3013a:
    mov.w @(DAT_ce301f2,pc),r5
    mov.l @(PTR_ce30208,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301fa,pc),r0
    mov.l @(PTR_ce3020c,pc),r3
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0

LAB_ce3015c:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30168:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30210,pc),r5
    mov.w @(DAT_ce301fc,pc),r6
    mov.l @(PTR_ce30204,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3019c
    mov.w @(DAT_ce301f4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce301a8
    mov 0x01,r13
    mov.w @(DAT_ce301f6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce301a6
    mov.w @(DAT_ce301f8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce301a0

LAB_ce3019c:
    bra LAB_ce301ca
    mov 0x00,r0

LAB_ce301a0:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce301a6:
    mov 0x0B,r13

LAB_ce301a8:
    mov.w @(DAT_ce301fc,pc),r5
    mov.l @(PTR_ce30208,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.l @(PTR_ce3020c,pc),r3
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.w @(DAT_ce301fa,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov 0x01,r0

LAB_ce301ca:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301d2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30214,pc),r5
    mov.w @(DAT_ce301fe,pc),r6
    mov.l @(PTR_ce30204,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30218
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301f0:
    #data 0x02a4
DAT_ce301f2:
    #data 0x0364
DAT_ce301f4:
    #data 0x01f9
DAT_ce301f6:
    #data 0x01fc
DAT_ce301f8:
    #data 0x01d4
DAT_ce301fa:
    #data 0x01e9
DAT_ce301fc:
    #data 0x036c
DAT_ce301fe:
    #data 0x0374
    #align4

PTR_ce30200:
    #data DAT_ce33c5c
PTR_ce30204:
    #data loc_8c054e58
PTR_ce30208:
    #data loc_8c055c3a
PTR_ce3020c:
    #data loc_8c0530d8
PTR_ce30210:
    #data DAT_ce33c6c
PTR_ce30214:
    #data DAT_ce33c7c

;=============================================

LAB_ce30218:
    mov.w @(DAT_ce3032c,pc),r5
    mov.l @(PTR_ce30340,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3032e,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30344,pc),r3
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

FUN_ce30242:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30348,pc),r5
    mov.w @(DAT_ce30330,pc),r6
    mov.l @(PTR_ce3034c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30284
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce30274
    mov.w @(DAT_ce30332,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    mova @(DAT_ce30350,pc),r0
    fsub fr2,fr1
    fmov.s @r0,fr2
    fcmp/gt fr1,fr2
    bt LAB_ce302b4

LAB_ce30274:
    mov.w @(DAT_ce30334,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30292
    mov.w @(DAT_ce30336,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3028c

LAB_ce30284:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3028c:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30292:
    mov.w @(DAT_ce30330,pc),r5
    mov.l @(PTR_ce30340,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3032e,pc),r0
    mov 0x03,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30344,pc),r3
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)

LAB_ce302b4:
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302bc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30354,pc),r5
    mov.w @(DAT_ce30338,pc),r6
    mov.l @(PTR_ce3034c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302da
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302da:
    mov.w @(DAT_ce30338,pc),r5
    mov.l @(PTR_ce30340,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3032e,pc),r0
    mov 0x05,r2
    mov.l @(PTR_ce30344,pc),r3
    mov 0x1D,r5
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

FUN_ce30304:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30358,pc),r5
    mov.w @(DAT_ce3033a,pc),r6
    mov.l @(PTR_ce3034c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30324
    mov.w @(DAT_ce3033c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3035c

LAB_ce30324:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3032c:
    #data 0x0374
DAT_ce3032e:
    #data 0x01e9
DAT_ce30330:
    #data 0x037c
DAT_ce30332:
    #data 0x041c
DAT_ce30334:
    #data 0x01fc
DAT_ce30336:
    #data 0x01d4
DAT_ce30338:
    #data 0x03a4
DAT_ce3033a:
    #data 0x0394
DAT_ce3033c:
    #data 0x040c
    #align4

PTR_ce30340:
    #data loc_8c055c3a
PTR_ce30344:
    #data loc_8c0530d8
PTR_ce30348:
    #data DAT_ce33c8c
PTR_ce3034c:
    #data loc_8c054e58
DAT_ce30350:
    #data 0x42cdb6db
PTR_ce30354:
    #data DAT_ce33ccc
PTR_ce30358:
    #data DAT_ce33c9c

;=============================================

LAB_ce3035c:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30484,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3048c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3037a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30490,pc),r5
    mov.w @(DAT_ce30486,pc),r6
    mov.l @(PTR_ce30494,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3039a
    mov.w @(DAT_ce30488,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303a2

LAB_ce3039a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303a2:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30484,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3048c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303c0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30498,pc),r5
    mov.w @(DAT_ce3048a,pc),r6
    mov.l @(PTR_ce30494,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303e0
    mov.w @(DAT_ce30488,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303e8

LAB_ce303e0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303e8:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0E,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30484,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3048c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30406:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3049c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce3041e
    mov.w @(DAT_ce30488,pc),r0
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
    mov.w @(DAT_ce30484,pc),r0
    mov 0x10,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce3048c,pc),r3
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

FUN_ce30446:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304a0,pc),r3
    jsr @r3
    mov 0x09,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30460
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30460:
    mov.w @(DAT_ce30484,pc),r0
    mov 0x09,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce3048c,pc),r3
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

LAB_ce30480:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30484:
    #data 0x01e9
DAT_ce30486:
    #data 0x039c
DAT_ce30488:
    #data 0x040c
DAT_ce3048a:
    #data 0x03ac
    #align4

PTR_ce3048c:
    #data loc_8c0530d8
PTR_ce30490:
    #data DAT_ce33cac
PTR_ce30494:
    #data loc_8c054e58
PTR_ce30498:
    #data DAT_ce33cbc
PTR_ce3049c:
    #data loc_8c054d1c
PTR_ce304a0:
    #data loc_8c054da0

;=============================================

LAB_ce304a4:
    mov.w @(DAT_ce305a8,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce305b8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce304b8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce305bc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce305aa,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce304e6
    mov.w @(DAT_ce305ac,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce304de
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30794
    mov.l @r15+,r14

LAB_ce304de:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30684
    mov.l @r15+,r14

LAB_ce304e6:
    mov.w @(DAT_ce305ac,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce304f8
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce305d8
    mov.l @r15+,r14

LAB_ce304f8:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30500
    mov.l @r15+,r14

LAB_ce30500:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce305ae,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce305c0,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30526
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30540
    cmp/eq 0x02,r0
    bt LAB_ce3055a
    bra LAB_ce30574
    nop

LAB_ce30526:
    mov.w @(DAT_ce305b0,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce305b2,pc),r0
    mov.l @(PTR_ce305c4,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce305b4,pc),r0
    bra LAB_ce30574
    mov.b r13,@(r0,r14)

LAB_ce30540:
    mov.w @(DAT_ce305b0,pc),r0
    mov 0x01,r11
    mov 0x15,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce305b2,pc),r0
    mov.l @(PTR_ce305c8,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30570
    nop

LAB_ce3055a:
    mov.w @(DAT_ce305b0,pc),r0
    mov 0x02,r11
    mov 0x16,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce305b2,pc),r0
    mov.l @(PTR_ce305cc,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30570:
    mov.w @(DAT_ce305b4,pc),r0
    mov.b r11,@(r0,r14)

LAB_ce30574:
    mov.w @(DAT_ce305b6,pc),r0
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
    mov.w @(DAT_ce305b0,pc),r0
    mov.l @(PTR_ce305d4,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305a8:
    #data 0x01ff
DAT_ce305aa:
    #data 0x01fe
DAT_ce305ac:
    #data 0x01f9
DAT_ce305ae:
    #data 0x01e8
DAT_ce305b0:
    #data 0x0158
DAT_ce305b2:
    #data 0x03f4
DAT_ce305b4:
    #data 0x01a7
DAT_ce305b6:
    #data 0x01ac
    #align4

PTR_ce305b8:
    #data PTR_ce33d4c
PTR_ce305bc:
    #data loc_8c052b4c
PTR_ce305c0:
    #data loc_8c04223a
PTR_ce305c4:
    #data DAT_ce33c14
PTR_ce305c8:
    #data DAT_ce33c18
PTR_ce305cc:
    #data DAT_ce33c1c
PTR_ce305d0:
    #data loc_8c2896b0
PTR_ce305d4:
    #data loc_8c034e8c

;=============================================

LAB_ce305d8:
    mov.w @(DAT_ce306ea,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce306f8,pc),r12
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
    mov.w @(DAT_ce306ec,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306ee,pc),r0
    mov.l @(PTR_ce306fc,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306f0,pc),r0
    bra LAB_ce30652
    mov.b r13,@(r0,r14)

LAB_ce30618:
    mov.w @(DAT_ce306ec,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306ee,pc),r0
    mov.l @(PTR_ce30700,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce3064e
    mov 0x01,r2

LAB_ce30634:
    mov.w @(DAT_ce306ec,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306ee,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30704,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce3064e:
    mov.w @(DAT_ce306f0,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30652:
    mov.w @(DAT_ce306f2,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30708,pc),r3
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
    mov.w @(DAT_ce306ec,pc),r0
    mov.l @(PTR_ce3070c,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30684:
    mov.w @(DAT_ce306f4,pc),r0
    mov 0x08,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x01,r12
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce306ea,pc),r0
    mov.l @(PTR_ce306f8,pc),r11
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce306b2
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce306ce
    cmp/eq 0x02,r0
    bt LAB_ce30718
    bra LAB_ce3075e
    nop

LAB_ce306b2:
    mov.w @(DAT_ce306ec,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce306ee,pc),r0
    mov.l @(PTR_ce30710,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306f0,pc),r0
    bra LAB_ce3075e
    mov.b r13,@(r0,r14)

LAB_ce306ce:
    mov.w @(DAT_ce306ec,pc),r0
    mov 0x04,r3
    mov 0x15,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce306ee,pc),r0
    mov.l @(PTR_ce30714,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306f0,pc),r0
    bra LAB_ce3075e
    mov.b r12,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306ea:
    #data 0x01e8
DAT_ce306ec:
    #data 0x0158
DAT_ce306ee:
    #data 0x03f4
DAT_ce306f0:
    #data 0x01a7
DAT_ce306f2:
    #data 0x01ac
DAT_ce306f4:
    #data 0x0159
    #align4

PTR_ce306f8:
    #data loc_8c04223a
PTR_ce306fc:
    #data DAT_ce33c14
PTR_ce30700:
    #data DAT_ce33c18
PTR_ce30704:
    #data DAT_ce33c1c
PTR_ce30708:
    #data loc_8c2896b0
PTR_ce3070c:
    #data loc_8c034e8c
PTR_ce30710:
    #data DAT_ce33c20
PTR_ce30714:
    #data DAT_ce33c24

;=============================================

LAB_ce30718:
    mov.w @(DAT_ce30852,pc),r0
    mov 0x02,r2
    mov 0x05,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30854,pc),r0
    mov.w @(DAT_ce30856,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce3074e
    mov 0x16,r5
    mov r12,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x14,r3
    mov.w @(DAT_ce30858,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov 0x12,r3
    mov.b r3,@(r0,r14)

LAB_ce3074e:
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce3085a,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30864,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3085c,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce3075e:
    mov.w @(DAT_ce3085e,pc),r0
    mov r14,r4
    mov.l @(PTR_ce30868,pc),r3
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
    mov.w @(DAT_ce30852,pc),r0
    mov.l @(PTR_ce3086c,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @r15+,r12
    mov.b @(r0,r14),r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30794:
    mov.w @(DAT_ce30860,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30870,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307b8
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307d4
    cmp/eq 0x02,r0
    bt LAB_ce307f0
    bra LAB_ce3080e
    nop

LAB_ce307b8:
    mov.w @(DAT_ce30852,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3085a,pc),r0
    mov.l @(PTR_ce30874,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3085c,pc),r0
    bra LAB_ce3080e
    mov.b r13,@(r0,r14)

LAB_ce307d4:
    mov.w @(DAT_ce30852,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3085a,pc),r0
    mov.l @(PTR_ce30878,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce3080a
    mov 0x01,r2

LAB_ce307f0:
    mov.w @(DAT_ce30852,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3085a,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30864,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce3080a:
    mov.w @(DAT_ce3085c,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce3080e:
    mov.w @(DAT_ce3085e,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30868,pc),r3
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
    mov.w @(DAT_ce30852,pc),r0
    mov.l @(PTR_ce3086c,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30840:
    mov.w @(DAT_ce30862,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3084e
    bra LAB_ce3099c
    nop

LAB_ce3084e:
    bra LAB_ce3087c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30852:
    #data 0x0158
DAT_ce30854:
    #data 0x01fa
DAT_ce30856:
    #data 0x0800
DAT_ce30858:
    #data 0x0159
DAT_ce3085a:
    #data 0x03f4
DAT_ce3085c:
    #data 0x01a7
DAT_ce3085e:
    #data 0x01ac
DAT_ce30860:
    #data 0x01e8
DAT_ce30862:
    #data 0x01fe
    #align4

PTR_ce30864:
    #data DAT_ce33c28
PTR_ce30868:
    #data loc_8c2896b0
PTR_ce3086c:
    #data loc_8c034e8c
PTR_ce30870:
    #data loc_8c04223a
PTR_ce30874:
    #data DAT_ce33c20
PTR_ce30878:
    #data DAT_ce33c24

;=============================================

LAB_ce3087c:
    mov.w @(DAT_ce3096a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30978,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308a0
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce308cc
    cmp/eq 0x02,r0
    bt LAB_ce308f8
    bra LAB_ce30926
    nop

LAB_ce308a0:
    mov.w @(DAT_ce3096c,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3096e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce308c0
    mov.w @(DAT_ce30970,pc),r0
    mov.l @(PTR_ce3097c,pc),r3
    bra LAB_ce308c6
    mov.l r3,@(r0,r14)

LAB_ce308c0:
    mov.w @(DAT_ce30970,pc),r0
    mov.l @(PTR_ce30980,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce308c6:
    mov.w @(DAT_ce30972,pc),r0
    bra LAB_ce30926
    mov.b r13,@(r0,r14)

LAB_ce308cc:
    mov.w @(DAT_ce3096c,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3096e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce308ee
    mov.w @(DAT_ce30970,pc),r0
    mov.l @(PTR_ce30984,pc),r3
    bra LAB_ce308f4
    mov.l r3,@(r0,r14)

LAB_ce308ee:
    mov.w @(DAT_ce30970,pc),r0
    mov.l @(PTR_ce30988,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce308f4:
    bra LAB_ce30922
    mov 0x01,r3

LAB_ce308f8:
    mov.w @(DAT_ce3096c,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3096e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3091a
    mov.w @(DAT_ce30970,pc),r0
    mov.l @(PTR_ce3098c,pc),r3
    bra LAB_ce30920
    mov.l r3,@(r0,r14)

LAB_ce3091a:
    mov.w @(DAT_ce30970,pc),r0
    mov.l @(PTR_ce30990,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30920:
    mov 0x02,r3

LAB_ce30922:
    mov.w @(DAT_ce30972,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30926:
    mov.w @(DAT_ce30974,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30994,pc),r3
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
    mov.w @(DAT_ce3096c,pc),r0
    mov.l @(PTR_ce30998,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30976,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30960
    mov.w @(DAT_ce30976,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30960:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3096a:
    #data 0x01e8
DAT_ce3096c:
    #data 0x0158
DAT_ce3096e:
    #data 0x01fc
DAT_ce30970:
    #data 0x03f4
DAT_ce30972:
    #data 0x01a7
DAT_ce30974:
    #data 0x01ac
DAT_ce30976:
    #data 0x01d6
    #align4

PTR_ce30978:
    #data loc_8c04223a
PTR_ce3097c:
    #data DAT_ce33c2c
PTR_ce30980:
    #data DAT_ce33c44
PTR_ce30984:
    #data DAT_ce33c30
PTR_ce30988:
    #data DAT_ce33c48
PTR_ce3098c:
    #data DAT_ce33c34
PTR_ce30990:
    #data DAT_ce33c4c
PTR_ce30994:
    #data loc_8c2896b0
PTR_ce30998:
    #data loc_8c034e8c

;=============================================

LAB_ce3099c:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30a86,pc),r0
    mov 0x0C,r4
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x00,r12
    mov.l r11,@-r15
    mov 0x01,r11
    mov.l r10,@-r15
    mov.l r9,@-r15
    mov 0x02,r9
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30a8a,pc),r0
    mov.l @(PTR_ce30a94,pc),r10
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce30a88,pc),r5
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce309d4
    mov 0x14,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a02
    cmp/eq 0x02,r0
    bt LAB_ce30a4a
    bra LAB_ce30ab6
    nop

LAB_ce309d4:
    mov.w @(DAT_ce30a8c,pc),r0
    mov 0x14,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    add 0xB8,r0
    mov.b r13,@(r0,r14)
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce30a8e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce309f6
    mov.w @(DAT_ce30a90,pc),r0
    mov.l @(PTR_ce30a98,pc),r3
    bra LAB_ce309fc
    mov.l r3,@(r0,r14)

LAB_ce309f6:
    mov.w @(DAT_ce30a90,pc),r0
    mov.l @(PTR_ce30a9c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce309fc:
    mov.w @(DAT_ce30a92,pc),r0
    bra LAB_ce30ab6
    mov.b r12,@(r0,r14)

LAB_ce30a02:
    mov.w @(DAT_ce30a86,pc),r0
    mov 0x15,r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r9,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r5,r2
    bt/s LAB_ce30a2a
    mov 0x15,r5
    mov.w @(DAT_ce30a86,pc),r0
    mov 0x10,r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30a2a:
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce30a8e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a3e
    mov.w @(DAT_ce30a90,pc),r0
    mov.l @(PTR_ce30aa0,pc),r3
    bra LAB_ce30a44
    mov.l r3,@(r0,r14)

LAB_ce30a3e:
    mov.w @(DAT_ce30a90,pc),r0
    mov.l @(PTR_ce30aa4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a44:
    mov.w @(DAT_ce30a92,pc),r0
    bra LAB_ce30ab6
    mov.b r11,@(r0,r14)

LAB_ce30a4a:
    mov.w @(DAT_ce30a8c,pc),r0
    mov 0x03,r2
    mov 0x16,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r5,r2
    bt/s LAB_ce30a6e
    mov 0x16,r5
    mov.w @(DAT_ce30a8c,pc),r0
    mov 0x11,r3
    mov.b r9,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30a72
    mov.b r3,@(r0,r14)

LAB_ce30a6e:
    mov.w @(DAT_ce30a86,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce30a72:
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce30a8e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30aac
    mov.w @(DAT_ce30a90,pc),r0
    mov.l @(PTR_ce30aa8,pc),r3
    bra LAB_ce30ab2
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a86:
    #data 0x0159
DAT_ce30a88:
    #data 0x2000
DAT_ce30a8a:
    #data 0x01e8
DAT_ce30a8c:
    #data 0x0158
DAT_ce30a8e:
    #data 0x01fc
DAT_ce30a90:
    #data 0x03f4
DAT_ce30a92:
    #data 0x01a7
    #align4

PTR_ce30a94:
    #data loc_8c04223a
PTR_ce30a98:
    #data DAT_ce33c38
PTR_ce30a9c:
    #data DAT_ce33c50
PTR_ce30aa0:
    #data DAT_ce33c3c
PTR_ce30aa4:
    #data DAT_ce33c54
PTR_ce30aa8:
    #data DAT_ce33c40

;=============================================

LAB_ce30aac:
    mov.w @(DAT_ce30bce,pc),r0
    mov.l @(PTR_ce30be0,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30ab2:
    mov.w @(DAT_ce30bd0,pc),r0
    mov.b r9,@(r0,r14)

LAB_ce30ab6:
    mov.w @(DAT_ce30bd2,pc),r0
    mov.l @(PTR_ce30be4,pc),r3
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
    mov.w @(DAT_ce30bd4,pc),r0
    mov.l @(PTR_ce30be8,pc),r2
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30bd6,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30af2
    mov.w @(DAT_ce30bd6,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30af2:
    lds.l @r15+,PR
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30b02:
    mov.w @(DAT_ce30bd8,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30b12
    mov.w @(DAT_ce30bd6,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30b22

LAB_ce30b12:
    mov.w @(DAT_ce30bd8,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30b26
    mov.w @(DAT_ce30bd6,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30b26

LAB_ce30b22:
    bra LAB_ce30840
    nop

LAB_ce30b26:
    rts
    nop

LAB_ce30b2a:
    mov.w @(DAT_ce30bda,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30bec,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30b3e:
    sts.l PR,@-r15
    mov.l @(PTR_ce30bf0,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30b4c:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30bf4,pc),r3
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
    mov.w @(DAT_ce30bd8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30bb4
    mov.w @(DAT_ce30bdc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30bac
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30d42
    mov.l @r15+,r14

LAB_ce30bac:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c52
    mov.l @r15+,r14

LAB_ce30bb4:
    mov.w @(DAT_ce30bdc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30bc6
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30c30
    mov.l @r15+,r14

LAB_ce30bc6:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30bf8
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30bce:
    #data 0x03f4
DAT_ce30bd0:
    #data 0x01a7
DAT_ce30bd2:
    #data 0x01ac
DAT_ce30bd4:
    #data 0x0158
DAT_ce30bd6:
    #data 0x01d6
DAT_ce30bd8:
    #data 0x01fe
DAT_ce30bda:
    #data 0x01ff
DAT_ce30bdc:
    #data 0x01f9
    #align4

PTR_ce30be0:
    #data DAT_ce33c58
PTR_ce30be4:
    #data loc_8c2896b0
PTR_ce30be8:
    #data loc_8c034e8c
PTR_ce30bec:
    #data PTR_ce33d5c
PTR_ce30bf0:
    #data loc_8c0511e2
PTR_ce30bf4:
    #data loc_8c052c84

;=============================================

LAB_ce30bf8:
    mov.w @(DAT_ce30cca,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30c14
    cmp/eq 0x01,r0
    bt LAB_ce30c14
    cmp/eq 0x02,r0
    bt LAB_ce30c14
    bra LAB_ce30c2a
    nop

LAB_ce30c14:
    mov.l @(PTR_ce30cd0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c2a
    lds.l @r15+,PR
    mov.l @(PTR_ce30cd4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c2a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30c30:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30cd0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c4a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30cd4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30c4a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30c52:
    mov.w @(DAT_ce30cca,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30c74
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30c74
    cmp/eq 0x02,r0
    bt LAB_ce30cb0
    bra LAB_ce30d38
    nop

LAB_ce30c74:
    mov.l @(PTR_ce30cd0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30cbc
    mov.w @(DAT_ce30ccc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d38
    mov.b r13,@(r0,r14)
    add 0x60,r0
    mov 0x19,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30cd8,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    bra LAB_ce30d38
    mov.w r1,@(r0,r2)

LAB_ce30cb0:
    mov.l @(PTR_ce30cd0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cdc

LAB_ce30cbc:
    lds.l @r15+,PR
    mov.l @(PTR_ce30cd4,pc),r2
    mov r14,r4
    mov.l @r15+,r8
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30cca:
    #data 0x01e8
DAT_ce30ccc:
    #data 0x0141
    #align4

PTR_ce30cd0:
    #data loc_8c034dee
PTR_ce30cd4:
    #data loc_8c051648
PTR_ce30cd8:
    #data loc_8c2896b0

;=============================================

LAB_ce30cdc:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt LAB_ce30d38
    mov.w @(DAT_ce30dde,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30d10
    mov.b r13,@(r0,r14)
    add 0x60,r0
    mov 0x13,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30de8,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce30d10:
    mov.w @(DAT_ce30de0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30d38
    mov.w @(DAT_ce30de2,pc),r0
    mov 0x34,r8
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce30d2c
    add r14,r8
    mov.l @(DAT_ce30dec,pc),r1
    lds r1,FPUL
    bra LAB_ce30d32
    fsts FPUL,fr3

LAB_ce30d2c:
    mov.l @(DAT_ce30df0,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce30d32:
    fmov.s @r8,fr2
    fadd fr3,fr2
    fmov.s fr2,@r8

LAB_ce30d38:
    lds.l @r15+,PR
    mov.l @r15+,r8
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30d42:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30df4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d5c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30df8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30d5c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30d64:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30dfc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30e00,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30d7a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e04,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30e08,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30de4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d9c
    bsr FUN_ce30e18
    mov r14,r4
    bra LAB_ce30da0
    nop

LAB_ce30d9c:
    bsr FUN_ce30dbc
    mov r14,r4

LAB_ce30da0:
    mov.l @(PTR_ce30e0c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30db6
    lds.l @r15+,PR
    mov.l @(PTR_ce30e10,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30db6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30dbc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30df4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30dd6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30e14,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30dd6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30dde:
    #data 0x0141
DAT_ce30de0:
    #data 0x0140
DAT_ce30de2:
    #data 0x01d2
DAT_ce30de4:
    #data 0x01fe
    #align4

PTR_ce30de8:
    #data loc_8c2896b0
DAT_ce30dec:
    #data 0x40555555
DAT_ce30df0:
    #data 0xc0555555
PTR_ce30df4:
    #data loc_8c034dee
PTR_ce30df8:
    #data loc_8c051648
PTR_ce30dfc:
    #data loc_8c050084
PTR_ce30e00:
    #data loc_8c04ff88
PTR_ce30e04:
    #data loc_8c04fea8
PTR_ce30e08:
    #data loc_8c050048
PTR_ce30e0c:
    #data loc_8c052ce2
PTR_ce30e10:
    #data loc_8c052dac
PTR_ce30e14:
    #data loc_8c05176e

;=============================================

FUN_ce30e18:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30f4c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e32
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30f50,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30e32:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30e3a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30e98
    mov.l @(PTR_ce30f54,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x17,r3
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce30f40,pc),r0
    mov 0x08,r6
    mov.b r3,@(r0,r14)
    add 0x58,r0
    mov.l @(PTR_ce30f58,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30f42,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce30f5c,pc),r3
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
    mov.l @(PTR_ce30f60,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30f64,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4

LAB_ce30e98:
    mov.w @(DAT_ce30f44,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30ea8
    mov.l @(PTR_ce30f68,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30ea8:
    mov 0x5C,r1
    mov.l @(PTR_ce30f6c,pc),r3
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
    mov.l @(PTR_ce30f4c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30efc
    lds.l @r15+,PR
    mov.l @(PTR_ce30f70,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30efc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f02:
    mov r4,r3
    mov.l @(PTR_ce30f74,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30f14:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30f4c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30f46,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30faa
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30f46,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30f48,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30f7c
    mova @(DAT_ce30f78,pc),r0
    bra LAB_ce30f80
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f40:
    #data 0x01a1
DAT_ce30f42:
    #data 0x01ac
DAT_ce30f44:
    #data 0x01ff
DAT_ce30f46:
    #data 0x0141
DAT_ce30f48:
    #data 0x01d2
    #align4

PTR_ce30f4c:
    #data loc_8c034dee
PTR_ce30f50:
    #data loc_8c05176e
PTR_ce30f54:
    #data loc_8c052b4c
PTR_ce30f58:
    #data loc_8c034e8c
PTR_ce30f5c:
    #data loc_8c2896b0
PTR_ce30f60:
    #data loc_8c04223a
PTR_ce30f64:
    #data loc_8c056de4
PTR_ce30f68:
    #data loc_8c0511e2
PTR_ce30f6c:
    #data loc_8c052c84
PTR_ce30f70:
    #data loc_8c051648
PTR_ce30f74:
    #data PTR_ce33d6c
DAT_ce30f78:
    #data 0x417d5555

;=============================================

LAB_ce30f7c:
    mova @(DAT_ce310bc,pc),r0
    fmov.s @r0,fr3

LAB_ce30f80:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce310b6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f92
    mova @(DAT_ce310c0,pc),r0
    bra LAB_ce30f96
    fmov.s @r0,fr3

LAB_ce30f92:
    mova @(DAT_ce310c4,pc),r0
    fmov.s @r0,fr3

LAB_ce30f96:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce310c8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce310cc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce30faa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fb0:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce310d0,pc),r3
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
    mov.w @(DAT_ce310b8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31018
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce310b8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce31018:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3101e:
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
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf LAB_ce31076
    lds.l @r15+,PR
    mov.l @(PTR_ce310d4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31076:
    mov.l @(PTR_ce310d8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce310d0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31086:
    mov r4,r3
    mov.l @(PTR_ce310dc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31098:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce310b6,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce310e4
    mova @(DAT_ce310e0,pc),r0
    bra LAB_ce310e8
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310b6:
    #data 0x01d2
DAT_ce310b8:
    #data 0x041c
    #align4

DAT_ce310bc:
    #data 0xc17d5555
DAT_ce310c0:
    #data 0xbec80000
DAT_ce310c4:
    #data 0x3ec80000
DAT_ce310c8:
    #data 0x40892492
DAT_ce310cc:
    #data 0xbf092492
PTR_ce310d0:
    #data loc_8c034dee
PTR_ce310d4:
    #data loc_8c051648
PTR_ce310d8:
    #data loc_8c0511e2
PTR_ce310dc:
    #data PTR_ce33d78
DAT_ce310e0:
    #data 0xc192aaaa

;=============================================

LAB_ce310e4:
    mova @(DAT_ce3121c,pc),r0
    fmov.s @r0,fr3

LAB_ce310e8:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31218,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce310fa
    mova @(DAT_ce31220,pc),r0
    bra LAB_ce310fe
    fmov.s @r0,fr3

LAB_ce310fa:
    mova @(DAT_ce31224,pc),r0
    fmov.s @r0,fr3

LAB_ce310fe:
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mov 0x14,r0
    rts
    mov.w r0,@(0x1c,r4)

LAB_ce31108:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31228,pc),r3
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
    cmp/pl r0
    bt LAB_ce31198
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31218,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3116c
    mova @(DAT_ce3122c,pc),r0
    bra LAB_ce31170
    fmov.s @r0,fr3

LAB_ce3116c:
    mova @(DAT_ce31230,pc),r0
    fmov.s @r0,fr3

LAB_ce31170:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31218,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31182
    mova @(DAT_ce31220,pc),r0
    bra LAB_ce31186
    fmov.s @r0,fr3

LAB_ce31182:
    mova @(DAT_ce31224,pc),r0
    fmov.s @r0,fr3

LAB_ce31186:
    mov.l @(PTR_ce31234,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x03,r6
    mov 0x02,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31198:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3119e:
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
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf LAB_ce311f6
    lds.l @r15+,PR
    mov.l @(PTR_ce31238,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce311f6:
    mov.l @(PTR_ce3123c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31228,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31206:
    mov r4,r3
    mov.l @(PTR_ce31240,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31218:
    #data 0x01d2
    #align4

DAT_ce3121c:
    #data 0x4192aaaa
DAT_ce31220:
    #data 0x3ead5555
DAT_ce31224:
    #data 0xbead5555
PTR_ce31228:
    #data loc_8c034dee
DAT_ce3122c:
    #data 0xc0855555
DAT_ce31230:
    #data 0x40855555
PTR_ce31234:
    #data loc_8c034e8c
PTR_ce31238:
    #data loc_8c051648
PTR_ce3123c:
    #data loc_8c0511e2
PTR_ce31240:
    #data PTR_ce33d84

;=============================================

LAB_ce31244:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31380,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce3138c,pc),r3
    jmp @r3
    mov 0x12,r5

LAB_ce31258:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31390,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31270
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce31270:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31278:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bt LAB_ce31282
    bra LAB_ce312ce
    nop

LAB_ce31282:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r4
    mov.l @(PTR_ce31394,pc),r0
    extu.b r4,r13
    extu.b r4,r4
    tst r4,r4
    bf/s LAB_ce312be
    mov.b @(r0,r13),r13
    mov.l @(PTR_ce31398,pc),r2
    jsr @r2
    nop
    mov 0x07,r13
    mov.l @(PTR_ce31398,pc),r3
    and r0,r13
    mov.l @(PTR_ce3139c,pc),r0
    jsr @r3
    mov.b @(r0,r13),r13
    and 0x01,r0
    mov.l @(PTR_ce313a0,pc),r2
    mov r0,r5
    add 0x0F,r5
    jsr @r2
    mov r14,r4

LAB_ce312be:
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce3138c,pc),r3
    mov 0x13,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce312ce:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313a4,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce312e6
    lds.l @r15+,PR
    mov.l @(PTR_ce313a8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce312e6:
    lds.l @r15+,PR
    mov.l @(PTR_ce31390,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce312f0:
    mov.w @(DAT_ce31382,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce313ac,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31304:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce313b0,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31384,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3131a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce313b4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce313b8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce313bc,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31386,pc),r0
    mov 0x00,r4
    mov 0x15,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31388,pc),r0
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
    mov.l @(PTR_ce313c0,pc),r3
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
    mov.w @(DAT_ce3138a,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce3138c,pc),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31380:
    #data 0x012c
DAT_ce31382:
    #data 0x01e9
DAT_ce31384:
    #data 0x02a4
DAT_ce31386:
    #data 0x041c
DAT_ce31388:
    #data 0x01f9
DAT_ce3138a:
    #data 0x01a3
    #align4

PTR_ce3138c:
    #data loc_8c034e8c
PTR_ce31390:
    #data loc_8c034dee
PTR_ce31394:
    #data DAT_ce33d94
PTR_ce31398:
    #data loc_8c03319e
PTR_ce3139c:
    #data DAT_ce33d8c
PTR_ce313a0:
    #data loc_8c042008
PTR_ce313a4:
    #data loc_8c046c8a
PTR_ce313a8:
    #data loc_8c051648
PTR_ce313ac:
    #data PTR_ce33d9c
PTR_ce313b0:
    #data PTR_ce33de0
PTR_ce313b4:
    #data loc_8c05218a
PTR_ce313b8:
    #data loc_8c05115a
PTR_ce313bc:
    #data loc_8c056de4
PTR_ce313c0:
    #data loc_8c2896b0

;=============================================

LAB_ce313c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314c0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313de
    lds.l @r15+,PR
    mov.l @(PTR_ce314c4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce313de:
    mov.w @(DAT_ce314b4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce313f6
    mov 0x00,r3
    mov r14,r4
    mov r3,r5
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce314c8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce313f6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce313fc:
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
    bf/s LAB_ce3142a
    fmov fr2,fr4
    fcmp/gt fr4,fr3
    bf LAB_ce3142a
    mova @(DAT_ce314cc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)

LAB_ce3142a:
    rts
    nop

;=============================================

FUN_ce3142e:
    mov.b @r5,r3
    extu.b r3,r3
    cmp/pl r3
    bf LAB_ce3149a
    mov.b @(0x1,r5),r0
    extu.b r0,r0
    cmp/pl r0
    bf LAB_ce3149a
    mov.w @(DAT_ce314b6,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce3149a
    mov 0x00,r6
    mov.b @(r0,r4),r7
    mov.b r6,@(r0,r4)
    add 0x5E,r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31478
    mov.w @(DAT_ce314b8,pc),r0
    mov.b @(r0,r4),r0
    tst 0x01,r0
    bt LAB_ce3146c
    mov.b @(0x1,r5),r0
    add 0xFF,r0
    mov.b r0,@(0x1,r5)
    extu.b r0,r0
    cmp/pl r0
    bf LAB_ce3149a
    bra LAB_ce31478
    nop

LAB_ce3146c:
    mov.b @r5,r3
    add 0xFF,r3
    mov.b r3,@r5
    extu.b r3,r3
    cmp/pl r3
    bf LAB_ce3149a

LAB_ce31478:
    mov.w @(DAT_ce314ba,pc),r0
    mov.l @(PTR_ce314d0,pc),r3
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

LAB_ce3149a:
    rts
    nop

LAB_ce3149e:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce314d4,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce314bc,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314b4:
    #data 0x0141
DAT_ce314b6:
    #data 0x0140
DAT_ce314b8:
    #data 0x019e
DAT_ce314ba:
    #data 0x01a1
DAT_ce314bc:
    #data 0x02a4
    #align4

PTR_ce314c0:
    #data loc_8c034dee
PTR_ce314c4:
    #data loc_8c051648
PTR_ce314c8:
    #data loc_8c099590
DAT_ce314cc:
    #data 0xbfcdb6db
PTR_ce314d0:
    #data loc_8c2896b0
PTR_ce314d4:
    #data PTR_ce33dec

;=============================================

LAB_ce314d8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce315fc,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce315f0,pc),r0
    mov 0x00,r13
    mov.l @(PTR_ce31600,pc),r3
    mov 0x0A,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce315f2,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce315f4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3151c
    mova @(DAT_ce31604,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce31608,pc),r0
    bra LAB_ce31524
    fmov.s @r0,fr3

LAB_ce3151c:
    mova @(DAT_ce3160c,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce31610,pc),r0
    fmov.s @r0,fr3

LAB_ce31524:
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce315f6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31534
    mov 0x5C,r0
    fneg fr4

LAB_ce31534:
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce315f6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31544
    mova @(DAT_ce31614,pc),r0
    bra LAB_ce31548
    fmov.s @r0,fr3

LAB_ce31544:
    mova @(DAT_ce31618,pc),r0
    fmov.s @r0,fr3

LAB_ce31548:
    mov 0x68,r0
    mov.l @(PTR_ce31624,pc),r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3161c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce315f4,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x33,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31620,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce315f4,pc),r0
    mov.l @r15,r2
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    mov.b @(r0,r4),r1
    mov 0x15,r5
    mov.w @(DAT_ce315f4,pc),r0
    mov.b r1,@r2
    mov.b @(r0,r14),r0
    mov.l @r15,r2
    extu.b r0,r0
    shll r0
    add r4,r0
    mov r14,r4
    mov.b @(0x1,r0),r0
    mov.b r0,@(0x1,r2)
    mov.w @(DAT_ce315f4,pc),r0
    mov.b @(r0,r14),r6
    add 0x02,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31628,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce315b2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3162c,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    bsr FUN_ce3142e
    mov r14,r4
    mov.w @(DAT_ce315f8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce315e8
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31630,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31634,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce315e8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315f0:
    #data 0x041c
DAT_ce315f2:
    #data 0x01fc
DAT_ce315f4:
    #data 0x01a3
DAT_ce315f6:
    #data 0x01d2
DAT_ce315f8:
    #data 0x0141
    #align4

PTR_ce315fc:
    #data loc_8c05218a
PTR_ce31600:
    #data loc_8c056de4
DAT_ce31604:
    #data 0x41555555
DAT_ce31608:
    #data 0x41892492
DAT_ce3160c:
    #data 0x41a00000
DAT_ce31610:
    #data 0x42092492
DAT_ce31614:
    #data 0xbf3aaaaa
DAT_ce31618:
    #data 0x3f3aaaaa
DAT_ce3161c:
    #data 0xbf892492
PTR_ce31620:
    #data loc_8c2896b0
PTR_ce31624:
    #data DAT_ce33de8
PTR_ce31628:
    #data loc_8c034e8c
PTR_ce3162c:
    #data loc_8c034dee
PTR_ce31630:
    #data loc_8c053082
PTR_ce31634:
    #data loc_8c05115a

;=============================================

LAB_ce31638:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce313fc
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
    bf/s LAB_ce3166a
    fmov fr2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce3166a:
    lds.l @r15+,PR
    mov.l @(PTR_ce31730,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31674:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce313fc
    mov r4,r14
    mov.w @(DAT_ce3172a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce3169a
    mov.w @(DAT_ce3172c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce316b8
    lds.l @r15+,PR
    mov.l @(PTR_ce31730,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3169a:
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3172e,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3172a,pc),r0
    mov.l @(PTR_ce31734,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce316b8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce316be:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31730,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce316d8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31738,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce316d8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce316e0:
    mov.w @(DAT_ce3172c,pc),r0
    mov.b @(r0,r4),r3
    cmp/pl r3
    bf LAB_ce31714
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
    mov.l @(PTR_ce3173c,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31714:
    rts
    nop

LAB_ce31718:
    mov r4,r3
    mov.l @(PTR_ce31740,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3172a:
    #data 0x041c
DAT_ce3172c:
    #data 0x0141
DAT_ce3172e:
    #data 0x01f9
    #align4

PTR_ce31730:
    #data loc_8c034dee
PTR_ce31734:
    #data loc_8c0511b4
PTR_ce31738:
    #data loc_8c051648
PTR_ce3173c:
    #data loc_8c2896b0
PTR_ce31740:
    #data PTR_ce33e00

;=============================================

LAB_ce31744:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31864,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31868,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3186c,pc),r3
    mov 0x0A,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3185c,pc),r0
    mov 0x00,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3185e,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x3A,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31870,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31874,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x68,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3185e,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bt/s LAB_ce317b8
    extu.b r4,r4
    mova @(DAT_ce31878,pc),r0
    bra LAB_ce317bc
    fmov.s @r0,fr4

LAB_ce317b8:
    mova @(DAT_ce3187c,pc),r0
    fmov.s @r0,fr4

LAB_ce317bc:
    tst r4,r4
    bt LAB_ce317c6
    mova @(DAT_ce31880,pc),r0
    bra LAB_ce317ca
    fmov.s @r0,fr3

LAB_ce317c6:
    mova @(DAT_ce31884,pc),r0
    fmov.s @r0,fr3

LAB_ce317ca:
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31860,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce317dc
    mov 0x5C,r0
    bra LAB_ce317e0
    fmov fr4,fr3

LAB_ce317dc:
    fmov fr4,fr3
    fneg fr3

LAB_ce317e0:
    mov.l @(PTR_ce31888,pc),r3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x04,r6
    lds.l @r15+,PR
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce317f0:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce3188c,pc),r3
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
    bt LAB_ce31856
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce31888,pc),r3
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce316e0
    mov.l @r15+,r14

LAB_ce31856:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3185c:
    #data 0x041c
DAT_ce3185e:
    #data 0x01a3
DAT_ce31860:
    #data 0x01d2
    #align4

PTR_ce31864:
    #data loc_8c05218a
PTR_ce31868:
    #data loc_8c05115a
PTR_ce3186c:
    #data loc_8c056de4
PTR_ce31870:
    #data loc_8c2896b0
PTR_ce31874:
    #data loc_8c053082
DAT_ce31878:
    #data 0x41555555
DAT_ce3187c:
    #data 0x41055555
DAT_ce31880:
    #data 0x41092492
DAT_ce31884:
    #data 0x402b6db6
PTR_ce31888:
    #data loc_8c034e8c
PTR_ce3188c:
    #data loc_8c034dee

;=============================================

LAB_ce31890:
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
    mov.w @(DAT_ce319ea,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31926
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce31926
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce319ec,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31926
    mov.w @(DAT_ce319ee,pc),r0
    mov 0x57,r3
    mov 0x19,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce319f4,pc),r3
    mov 0x15,r5
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
    mov.l @(PTR_ce319f8,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31926:
    mov.l @(PTR_ce319fc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce316e0
    mov.l @r15+,r14

LAB_ce31934:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce319fc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31972
    mov.b @(0x6,r14),r0
    mov r14,r4
    fldi0 fr4
    mov 0x05,r6
    add 0x01,r0
    mov.l @(PTR_ce319f8,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31a00,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31a04,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31972:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31978:
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
    mov.w @(DAT_ce319f0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31a0c
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x07,r6
    mov.w @(DAT_ce319f0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319f2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce319f8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31a08,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319ea:
    #data 0x0140
DAT_ce319ec:
    #data 0x019e
DAT_ce319ee:
    #data 0x01a1
DAT_ce319f0:
    #data 0x041c
DAT_ce319f2:
    #data 0x01f9
    #align4

PTR_ce319f4:
    #data loc_8c2896b0
PTR_ce319f8:
    #data loc_8c034e8c
PTR_ce319fc:
    #data loc_8c034dee
DAT_ce31a00:
    #data 0xc0092492
DAT_ce31a04:
    #data 0xbf4db6db
PTR_ce31a08:
    #data loc_8c0511b4

;=============================================

LAB_ce31a0c:
    lds.l @r15+,PR
    mov.l @(PTR_ce31b2c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a16:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31b2c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31a30
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31b30,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31a30:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31a38:
    mov.w @(DAT_ce31b24,pc),r0
    mov.b @(r0,r4),r3
    cmp/pl r3
    bf LAB_ce31a6c
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
    mov.l @(PTR_ce31b34,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31a6c:
    rts
    nop

LAB_ce31a70:
    mov r4,r3
    mov.l @(PTR_ce31b38,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31a82:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31b3c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31b40,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31b26,pc),r0
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
    mov.l @(PTR_ce31b34,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31b26,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31ad4
    mova @(DAT_ce31b44,pc),r0
    bra LAB_ce31ad8
    fmov.s @r0,fr4

LAB_ce31ad4:
    mova @(DAT_ce31b48,pc),r0
    fmov.s @r0,fr4

LAB_ce31ad8:
    mov.w @(DAT_ce31b28,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31aee
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31afa
    bra LAB_ce31afc
    nop

LAB_ce31aee:
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf/s LAB_ce31afc
    fneg fr4

LAB_ce31afa:
    fneg fr4

LAB_ce31afc:
    mov 0x5C,r0
    fldi0 fr2
    fmov.s @(r0,r14),fr3
    mov r14,r4
    mov.l @(PTR_ce31b4c,pc),r3
    mov 0x08,r6
    fadd fr4,fr3
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce31b26,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b24:
    #data 0x0141
DAT_ce31b26:
    #data 0x01a3
DAT_ce31b28:
    #data 0x01d2
    #align4

PTR_ce31b2c:
    #data loc_8c034dee
PTR_ce31b30:
    #data loc_8c051648
PTR_ce31b34:
    #data loc_8c2896b0
PTR_ce31b38:
    #data PTR_ce33e18
PTR_ce31b3c:
    #data loc_8c05218a
PTR_ce31b40:
    #data loc_8c056de4
DAT_ce31b44:
    #data 0x40855555
DAT_ce31b48:
    #data 0x40200000
PTR_ce31b4c:
    #data loc_8c034e8c

;=============================================

LAB_ce31b50:
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
    mov.w @(DAT_ce31ca0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt/s LAB_ce31bc0
    mov 0x00,r4
    mov 0x03,r0
    mov.l @(PTR_ce31ca8,pc),r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31ca0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ca2,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31cac,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31bc0:
    mov.w @(DAT_ce31ca4,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce31bea
    mov.b r4,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31bea
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31cac,pc),r3
    mov 0x0A,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31bea:
    mov.l @(PTR_ce31cb0,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31a38
    mov.l @r15+,r14

LAB_ce31bf8:
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
    mov.w @(DAT_ce31ca0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31c6a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31ca0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ca2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31ca8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31cac,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c6a:
    mov.l @(PTR_ce31cb0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c80
    lds.l @r15+,PR
    mov.l @(PTR_ce31cb4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c80:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31c86:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31cb0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31cbc
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31cb8,pc),r3
    jmp @r3
    lds.l @r15+,PR

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ca0:
    #data 0x041c
DAT_ce31ca2:
    #data 0x01f9
DAT_ce31ca4:
    #data 0x0141
    #align4

PTR_ce31ca8:
    #data loc_8c0511b4
PTR_ce31cac:
    #data loc_8c034e8c
PTR_ce31cb0:
    #data loc_8c034dee
PTR_ce31cb4:
    #data loc_8c05176e
PTR_ce31cb8:
    #data loc_8c051648

;=============================================

LAB_ce31cbc:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce31cc4:
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
    mov.w @(DAT_ce31e10,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31d10
    mov.w @(DAT_ce31e10,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)

LAB_ce31d10:
    rts
    nop

LAB_ce31d14:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31e18,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31e12,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d2a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31e1c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31e20,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31e14,pc),r0
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
    mov.l @(PTR_ce31e24,pc),r3
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
    mov.l @(DAT_ce31e28,pc),r1
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce31e2c,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fsts FPUL,fr2
    fmov.s @(r0,r14),fr1
    mov r14,r4
    mov.l @(DAT_ce31e30,pc),r1
    mov 0x15,r5
    fdiv fr2,fr1
    fldi0 fr3
    lds r1,FPUL
    mov.l @(PTR_ce31e34,pc),r2
    fmov fr1,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr0
    fsts FPUL,fr1
    fdiv fr1,fr0
    fmov fr0,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31e14,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    add 0x0E,r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce31db0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31cc4
    mov r4,r14
    mov.l @(PTR_ce31e38,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31e16,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31ddc
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x01,r5
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31e3c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ddc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31de2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31cc4
    mov r4,r14
    mov.l @(PTR_ce31e38,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e0a
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31e40,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e0a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e10:
    #data 0x041c
DAT_ce31e12:
    #data 0x02a4
DAT_ce31e14:
    #data 0x01a3
DAT_ce31e16:
    #data 0x0141
    #align4

PTR_ce31e18:
    #data PTR_ce33e28
PTR_ce31e1c:
    #data loc_8c05218a
PTR_ce31e20:
    #data loc_8c056de4
PTR_ce31e24:
    #data loc_8c2896b0
DAT_ce31e28:
    #data 0x41800000
DAT_ce31e2c:
    #data 0x41000000
DAT_ce31e30:
    #data 0x42800000
PTR_ce31e34:
    #data loc_8c034e8c
PTR_ce31e38:
    #data loc_8c034dee
PTR_ce31e3c:
    #data loc_8c099590
PTR_ce31e40:
    #data loc_8c05176e

;=============================================

LAB_ce31e44:
    mov r4,r3
    mov.l @(PTR_ce31f34,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31e56:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31f38,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f2a,pc),r0
    mov 0x00,r2
    fldi0 fr4
    mov 0x02,r5
    mov.b r2,@(r0,r14)
    mov r2,r6
    mov.w @(DAT_ce31f2c,pc),r0
    mov.l @(PTR_ce31f3c,pc),r3
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
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31e98:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31f40,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31f2e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31f24
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31f2e,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31f44,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31f48,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f30,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31ef8
    mov.w @(DAT_ce31f32,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31edc
    mova @(DAT_ce31f4c,pc),r0
    bra LAB_ce31ee0
    fmov.s @r0,fr3

LAB_ce31edc:
    mova @(DAT_ce31f50,pc),r0
    fmov.s @r0,fr3

LAB_ce31ee0:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f32,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31ef2
    mova @(DAT_ce31f54,pc),r0
    bra LAB_ce31f20
    fmov.s @r0,fr3

LAB_ce31ef2:
    mova @(DAT_ce31f58,pc),r0
    bra LAB_ce31f20
    fmov.s @r0,fr3

LAB_ce31ef8:
    mov.w @(DAT_ce31f32,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f06
    mova @(DAT_ce31f4c,pc),r0
    bra LAB_ce31f0a
    fmov.s @r0,fr3

LAB_ce31f06:
    mova @(DAT_ce31f50,pc),r0
    fmov.s @r0,fr3

LAB_ce31f0a:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f32,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f1c
    mova @(DAT_ce31f5c,pc),r0
    bra LAB_ce31f20
    fmov.s @r0,fr3

LAB_ce31f1c:
    mova @(DAT_ce31f60,pc),r0
    fmov.s @r0,fr3

LAB_ce31f20:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce31f24:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f2a:
    #data 0x01f9
DAT_ce31f2c:
    #data 0x041c
DAT_ce31f2e:
    #data 0x0141
DAT_ce31f30:
    #data 0x01a3
DAT_ce31f32:
    #data 0x01d2
    #align4

PTR_ce31f34:
    #data PTR_ce33e34
PTR_ce31f38:
    #data loc_8c05218a
PTR_ce31f3c:
    #data loc_8c034e8c
PTR_ce31f40:
    #data loc_8c034dee
DAT_ce31f44:
    #data 0x40892492
DAT_ce31f48:
    #data 0xbf092492
DAT_ce31f4c:
    #data 0x417d5555
DAT_ce31f50:
    #data 0xc17d5555
DAT_ce31f54:
    #data 0xbec80000
DAT_ce31f58:
    #data 0x3ec80000
DAT_ce31f5c:
    #data 0xbf055555
DAT_ce31f60:
    #data 0x3f055555

;=============================================

LAB_ce31f64:
    mov.w @(DAT_ce320be,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
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
    mov.l @(PTR_ce320c8,pc),r3
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce320c0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31fe8
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce320c0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce320c2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31fe0
    mova @(DAT_ce320cc,pc),r0
    bra LAB_ce31fe4
    fmov.s @r0,fr3

LAB_ce31fe0:
    mova @(DAT_ce320d0,pc),r0
    fmov.s @r0,fr3

LAB_ce31fe4:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce31fe8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31fee:
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
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf LAB_ce32046
    lds.l @r15+,PR
    mov.l @(PTR_ce320d4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32046:
    mov.l @(PTR_ce320d8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce320c8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;=============================================

FUN_ce32056:
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
    bf LAB_ce32084
    mova @(DAT_ce320dc,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r4)

LAB_ce32084:
    rts
    nop

;=============================================

FUN_ce32088:
    mov.w @(DAT_ce320c4,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce320ba
    mov.b @(r0,r4),r3
    add 0x61,r0
    mov 0x00,r5
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce320e0,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce320c4,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce320ba:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320be:
    #data 0x01f5
DAT_ce320c0:
    #data 0x041c
DAT_ce320c2:
    #data 0x01d2
DAT_ce320c4:
    #data 0x0140
    #align4

PTR_ce320c8:
    #data loc_8c034dee
DAT_ce320cc:
    #data 0xbf555555
DAT_ce320d0:
    #data 0x3f555555
PTR_ce320d4:
    #data loc_8c051648
PTR_ce320d8:
    #data loc_8c0511e2
DAT_ce320dc:
    #data 0xbf9a4924
PTR_ce320e0:
    #data loc_8c2896b0

;=============================================

LAB_ce320e4:
    mov r4,r3
    mov.l @(PTR_ce3222c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce320f6:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32216,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce3211c
    mov r14,r4
    mov.w @(DAT_ce3221a,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32218,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3211c:
    mov.l @(PTR_ce32230,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce32234,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3221c,pc),r0
    mov 0x00,r13
    mov 0x49,r3
    mov r13,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov 0x16,r5
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3221e,pc),r0
    mov.b r13,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32238,pc),r3
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
    mov.l @(PTR_ce3223c,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3216a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32220,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32222,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32216,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3218c
    bra LAB_ce3218e
    mov 0x02,r3

LAB_ce3218c:
    mov 0x00,r3

LAB_ce3218e:
    mov.w @(DAT_ce32224,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32240,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32226,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3220e
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32226,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32228,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce321cc
    mova @(DAT_ce32244,pc),r0
    bra LAB_ce321d0
    fmov.s @r0,fr3

LAB_ce321cc:
    mova @(DAT_ce32248,pc),r0
    fmov.s @r0,fr3

LAB_ce321d0:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32228,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce321e2
    mova @(DAT_ce3224c,pc),r0
    bra LAB_ce321e6
    fmov.s @r0,fr3

LAB_ce321e2:
    mova @(DAT_ce32250,pc),r0
    fmov.s @r0,fr3

LAB_ce321e6:
    mov 0x68,r0
    mov.l @(PTR_ce3225c,pc),r3
    fmov fr3,@(r0,r14)
    mov r15,r5
    mov.w @(DAT_ce3221a,pc),r0
    mov 0x01,r6
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32254,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32258,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce3220e:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32216:
    #data 0x0255
DAT_ce32218:
    #data 0x00ff
DAT_ce3221a:
    #data 0x03f0
DAT_ce3221c:
    #data 0x041c
DAT_ce3221e:
    #data 0x01f9
DAT_ce32220:
    #data 0x03f8
DAT_ce32222:
    #data 0x0328
DAT_ce32224:
    #data 0x03f1
DAT_ce32226:
    #data 0x0141
DAT_ce32228:
    #data 0x01d2
    #align4

PTR_ce3222c:
    #data PTR_ce33e44
PTR_ce32230:
    #data loc_8c05218a
PTR_ce32234:
    #data loc_8c05115a
PTR_ce32238:
    #data loc_8c2896b0
PTR_ce3223c:
    #data loc_8c034e8c
PTR_ce32240:
    #data loc_8c034dee
DAT_ce32244:
    #data 0x41855555
DAT_ce32248:
    #data 0xc1855555
DAT_ce3224c:
    #data 0xbf200000
DAT_ce32250:
    #data 0x3f200000
DAT_ce32254:
    #data 0xc2200000
DAT_ce32258:
    #data 0x424db6db
PTR_ce3225c:
    #data loc_8c050834

;=============================================

LAB_ce32260:
    mov.w @(DAT_ce32332,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x68,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32334,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr0
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr0,fr3
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,fr3
    fmul fr0,fr3
    fmov fr2,@(r0,r14)
    fldi0 fr2
    fcmp/gt fr3,fr2
    bf/s LAB_ce3229a
    fldi0 fr4
    fmov fr4,@(r0,r14)

LAB_ce3229a:
    mov.l @(PTR_ce3233c,pc),r3
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce32088
    mov r14,r4
    mov.w @(DAT_ce32336,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce322e2
    mov.w @(DAT_ce32336,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32338,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce322c4
    mova @(DAT_ce32340,pc),r0
    bra LAB_ce322c8
    fmov.s @r0,fr3

LAB_ce322c4:
    mova @(DAT_ce32344,pc),r0
    fmov.s @r0,fr3

LAB_ce322c8:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32338,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce322da
    mova @(DAT_ce32348,pc),r0
    bra LAB_ce322de
    fmov.s @r0,fr3

LAB_ce322da:
    mova @(DAT_ce3234c,pc),r0
    fmov.s @r0,fr3

LAB_ce322de:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce322e2:
    mov.w @(DAT_ce32336,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3232c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32338,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce322fe
    mova @(DAT_ce32350,pc),r0
    bra LAB_ce32302
    fmov.s @r0,fr3

LAB_ce322fe:
    mova @(DAT_ce32354,pc),r0
    fmov.s @r0,fr3

LAB_ce32302:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32338,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32314
    mova @(DAT_ce32348,pc),r0
    bra LAB_ce32318
    fmov.s @r0,fr3

LAB_ce32314:
    mova @(DAT_ce3234c,pc),r0
    fmov.s @r0,fr3

LAB_ce32318:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32358,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3235c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce3232c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32332:
    #data 0x03f8
DAT_ce32334:
    #data 0x0328
DAT_ce32336:
    #data 0x0141
DAT_ce32338:
    #data 0x01d2
    #align4

PTR_ce3233c:
    #data loc_8c034dee
DAT_ce32340:
    #data 0x41855555
DAT_ce32344:
    #data 0xc1855555
DAT_ce32348:
    #data 0xbf200000
DAT_ce3234c:
    #data 0x3f200000
DAT_ce32350:
    #data 0x41a00000
DAT_ce32354:
    #data 0xc1a00000
DAT_ce32358:
    #data 0x42092492
DAT_ce3235c:
    #data 0xbf892492

;=============================================

LAB_ce32360:
    mov.w @(DAT_ce3247c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3247e,pc),r0
    mov.l @(PTR_ce32488,pc),r3
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
    bsr FUN_ce32088
    mov r14,r4
    mov.w @(DAT_ce32480,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce323b0
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3248c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce323b0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce323b6:
    mov.w @(DAT_ce3247c,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov 0x5C,r1
    mov.w @(DAT_ce3247e,pc),r0
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
    bf LAB_ce3240e
    mov.b @(0x6,r4),r0
    mov 0x00,r5
    fmov fr3,fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce32482,pc),r0
    mov.b r5,@(r0,r4)
    add 0xFF,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce32484,pc),r0
    mov.b r5,@(r0,r4)
    add 0x01,r0
    mov.b r5,@(r0,r4)

LAB_ce3240e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce32088
    mov r4,r14
    bsr FUN_ce32056
    mov r14,r4
    mov.w @(DAT_ce32486,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32442
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32490,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32486,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce3245a
    mov.l @r15+,r14

LAB_ce32442:
    mov.w @(DAT_ce32480,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32454
    lds.l @r15+,PR
    mov.l @(PTR_ce32488,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32454:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3245a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32488,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32474
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32494,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32474:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3247c:
    #data 0x03f8
DAT_ce3247e:
    #data 0x0328
DAT_ce32480:
    #data 0x0141
DAT_ce32482:
    #data 0x03f9
DAT_ce32484:
    #data 0x0327
DAT_ce32486:
    #data 0x041c
    #align4

PTR_ce32488:
    #data loc_8c034dee
PTR_ce3248c:
    #data loc_8c053082
PTR_ce32490:
    #data loc_8c0511b4
PTR_ce32494:
    #data loc_8c051648

;=============================================

FUN_ce32498:
    mov.w @(DAT_ce325b6,pc),r0
    mov.b @(r0,r4),r3
    extu.b r3,r3
    cmp/pl r3
    bf LAB_ce3250e
    mova @(DAT_ce325d0,pc),r0
    mov.l @(PTR_ce325cc,pc),r6
    fmov.s @r0,fr3
    mov.w @(DAT_ce325b8,pc),r0
    fmov.s @(r0,r4),fr2
    mov 0x38,r0
    fmov.s @(r0,r4),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bt/s LAB_ce324e0
    mov 0x00,r5
    mov.w @(DAT_ce325ba,pc),r0
    mov 0x4E,r2
    mov.b r2,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r6,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.w @(DAT_ce325bc,pc),r0
    bra LAB_ce3250a
    mov.w r5,@(r0,r4)

LAB_ce324e0:
    mov.w @(DAT_ce325b6,pc),r0
    mov.b @(r0,r4),r2
    add 0x56,r0
    mov.b r2,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r6,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov 0x10,r3
    mov.w @(DAT_ce325bc,pc),r0
    mov.w r3,@(r0,r4)

LAB_ce3250a:
    mov.w @(DAT_ce325b6,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3250e:
    rts
    nop

LAB_ce32512:
    mov r4,r3
    mov.l @(PTR_ce325d4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32524:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce325be,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce32548
    mov r14,r4
    mov.w @(DAT_ce325c2,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce325c0,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32548:
    mov.l @(PTR_ce325d8,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce325dc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce325b8,pc),r0
    mov 0x00,r4
    mov 0x4C,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov 0x01,r6
    fmov fr3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce325c4,pc),r0
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce325cc,pc),r3
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
    mov.l @(PTR_ce325e0,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce32594:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce325c6,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce325c8,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce325be,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce325e4
    bra LAB_ce325e6
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325b6:
    #data 0x014b
DAT_ce325b8:
    #data 0x041c
DAT_ce325ba:
    #data 0x01a1
DAT_ce325bc:
    #data 0x01ac
DAT_ce325be:
    #data 0x0255
DAT_ce325c0:
    #data 0x00ff
DAT_ce325c2:
    #data 0x03f0
DAT_ce325c4:
    #data 0x01f9
DAT_ce325c6:
    #data 0x03f8
DAT_ce325c8:
    #data 0x0328
    #align4

PTR_ce325cc:
    #data loc_8c2896b0
DAT_ce325d0:
    #data 0x44340000
PTR_ce325d4:
    #data PTR_ce33e60
PTR_ce325d8:
    #data loc_8c05218a
PTR_ce325dc:
    #data loc_8c05115a
PTR_ce325e0:
    #data loc_8c034e8c

;=============================================

LAB_ce325e4:
    mov 0x00,r3

LAB_ce325e6:
    mov.w @(DAT_ce32704,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32714,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32706,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32652
    mov.b @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce32618
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce32718,pc),r0
    shll2 r2
    fmov.s @(r0,r2),fr3
    mov.w @(DAT_ce32708,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32618:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32708,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    bsr FUN_ce32498
    mov r14,r4
    mov.w @(DAT_ce3270a,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32724,pc),r3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce3271c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32720,pc),r0
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

LAB_ce32652:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3265a:
    mov.w @(DAT_ce3270c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3270e,pc),r0
    mov.l @(PTR_ce32714,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce32498
    mov r14,r4
    mov.w @(DAT_ce32706,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce326a0
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32728,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3272c,pc),r2
    jsr @r2
    mov r14,r4
    mova @(DAT_ce32730,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32734,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce326a0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce326a6:
    mov.w @(DAT_ce3270c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x6C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3270e,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr0
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    fadd fr0,fr3
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,fr3
    fmov fr2,@(r0,r14)
    fmov fr0,fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf LAB_ce3273c
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32738,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    mov.w @(DAT_ce32710,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32712,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32704:
    #data 0x03f1
DAT_ce32706:
    #data 0x0141
DAT_ce32708:
    #data 0x041c
DAT_ce3270a:
    #data 0x03f0
DAT_ce3270c:
    #data 0x03f8
DAT_ce3270e:
    #data 0x0328
DAT_ce32710:
    #data 0x03f9
DAT_ce32712:
    #data 0x0327
    #align4

PTR_ce32714:
    #data loc_8c034dee
PTR_ce32718:
    #data DAT_ce33e78
DAT_ce3271c:
    #data 0xc2200000
DAT_ce32720:
    #data 0x424db6db
PTR_ce32724:
    #data loc_8c050834
PTR_ce32728:
    #data loc_8c053082
PTR_ce3272c:
    #data loc_8c0e22f0
DAT_ce32730:
    #data 0x42092492
DAT_ce32734:
    #data 0xbf4db6db
PTR_ce32738:
    #data loc_8c034e8c

;=============================================

LAB_ce3273c:
    mov.l @(PTR_ce3285c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3274e
    mov r14,r4
    mov.w @(DAT_ce32852,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce3274e:
    mov.l @(PTR_ce32860,pc),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32498
    mov.l @r15+,r14

LAB_ce3275c:
    mov 0x60,r1
    add r4,r1
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r4),fr2
    mov 0x6C,r1
    add r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x60,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov.w @(DAT_ce32854,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32796
    mov.b @(0x6,r4),r0
    mov.l @(PTR_ce32864,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32854,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce32796:
    mov.w @(DAT_ce32856,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce327a4
    mov.l @(PTR_ce32860,pc),r3
    jmp @r3
    nop

LAB_ce327a4:
    rts
    nop

;=============================================

FUN_ce327a8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32860,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce327c2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32868,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce327c2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce327ca:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce327ea
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3286c,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce327ea:
    mov.l @(PTR_ce32860,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32800
    lds.l @r15+,PR
    mov.l @(PTR_ce32868,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32800:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32806:
    mov r4,r3
    mov.l @(PTR_ce32870,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32818:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32874,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32878,pc),r2
    mov 0x0A,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32858,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32840
    mova @(DAT_ce3287c,pc),r0
    bra LAB_ce32844
    fmov.s @r0,fr4

LAB_ce32840:
    mova @(DAT_ce32880,pc),r0
    fmov.s @r0,fr4

LAB_ce32844:
    mov.w @(DAT_ce3285a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32884
    mov 0x5C,r0
    bra LAB_ce32888
    fmov fr4,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32852:
    #data 0x0142
DAT_ce32854:
    #data 0x041c
DAT_ce32856:
    #data 0x0141
DAT_ce32858:
    #data 0x01a3
DAT_ce3285a:
    #data 0x01d2
    #align4

PTR_ce3285c:
    #data loc_8c055d54
PTR_ce32860:
    #data loc_8c034dee
PTR_ce32864:
    #data loc_8c0511b4
PTR_ce32868:
    #data loc_8c051648
PTR_ce3286c:
    #data loc_8c034e8c
PTR_ce32870:
    #data PTR_ce33e8c
PTR_ce32874:
    #data loc_8c05218a
PTR_ce32878:
    #data loc_8c056de4
DAT_ce3287c:
    #data 0x41855555
DAT_ce32880:
    #data 0x41555555

;=============================================

LAB_ce32884:
    fmov fr4,fr3
    fneg fr3

LAB_ce32888:
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce329c4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32898
    mova @(DAT_ce329d0,pc),r0
    bra LAB_ce3289c
    fmov.s @r0,fr3

LAB_ce32898:
    mova @(DAT_ce329d4,pc),r0
    fmov.s @r0,fr3

LAB_ce3289c:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce329c6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce328ae
    mova @(DAT_ce329d8,pc),r0
    bra LAB_ce328b2
    fmov.s @r0,fr3

LAB_ce328ae:
    mova @(DAT_ce329dc,pc),r0
    fmov.s @r0,fr3

LAB_ce328b2:
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce329e0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x50,r3
    fmov fr3,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce329c8,pc),r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce329e4,pc),r3
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
    mov.w @(DAT_ce329c6,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce329e8,pc),r2
    add 0x15,r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce328f6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce329ec,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce329ca,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32912
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce32912:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32918:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce329ec,pc),r3
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
    mov.w @(DAT_ce329cc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32990
    fldi0 fr3
    mov.b @(r0,r14),r3
    add 0x61,r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce329e4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce329cc,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce32990:
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce329be
    mov.b @(0x6,r14),r0
    mov r14,r4
    fmov fr3,fr4
    mov 0x1B,r6
    add 0x01,r0
    mov.l @(PTR_ce329e8,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce329f0,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    mov 0x15,r5
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce329be:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329c4:
    #data 0x01d2
DAT_ce329c6:
    #data 0x01a3
DAT_ce329c8:
    #data 0x01a1
DAT_ce329ca:
    #data 0x0141
DAT_ce329cc:
    #data 0x0140
    #align4

DAT_ce329d0:
    #data 0xbf200000
DAT_ce329d4:
    #data 0x3f200000
DAT_ce329d8:
    #data 0x42092492
DAT_ce329dc:
    #data 0x41ab6db6
DAT_ce329e0:
    #data 0xbf892492
PTR_ce329e4:
    #data loc_8c2896b0
PTR_ce329e8:
    #data loc_8c034e8c
PTR_ce329ec:
    #data loc_8c034dee
DAT_ce329f0:
    #data 0xbfcdb6db

;=============================================

LAB_ce329f4:
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
    mov.w @(DAT_ce32b1a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32a4e
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32b1a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32b1c,pc),r0
    mov.b r3,@(r0,r14)
    add 0xAA,r0
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce32b28,pc),r3
    add 0x17,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32b2c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32a4e:
    lds.l @r15+,PR
    mov.l @(PTR_ce32b30,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32a58:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32b30,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a72
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32b34,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32a72:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce32a7a:
    mov.w @(DAT_ce32b1e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32aac
    mov.b @(r0,r4),r3
    add 0x56,r0
    mov 0x00,r5
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce32b38,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce32b1e,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce32aac:
    rts
    nop

LAB_ce32ab0:
    mov r4,r3
    mov.l @(PTR_ce32b3c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32ac2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32b20,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce32ae8
    mov 0x00,r13
    mov.w @(DAT_ce32b24,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32b22,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32ae8:
    mov r13,r0
    nop
    mov.l @(PTR_ce32b40,pc),r3
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32b44,pc),r2
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
    mov.w @(DAT_ce32b26,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32b4c
    mova @(DAT_ce32b48,pc),r0
    bra LAB_ce32b50
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b1a:
    #data 0x041c
DAT_ce32b1c:
    #data 0x01f9
DAT_ce32b1e:
    #data 0x014b
DAT_ce32b20:
    #data 0x0255
DAT_ce32b22:
    #data 0x00ff
DAT_ce32b24:
    #data 0x03f0
DAT_ce32b26:
    #data 0x01d2
    #align4

PTR_ce32b28:
    #data loc_8c034e8c
PTR_ce32b2c:
    #data loc_8c0511b4
PTR_ce32b30:
    #data loc_8c034dee
PTR_ce32b34:
    #data loc_8c051648
PTR_ce32b38:
    #data loc_8c2896b0
PTR_ce32b3c:
    #data PTR_ce33ea0
PTR_ce32b40:
    #data loc_8c05218a
PTR_ce32b44:
    #data loc_8c05115a
DAT_ce32b48:
    #data 0x40f00000

;=============================================

LAB_ce32b4c:
    mova @(DAT_ce32c7c,pc),r0
    fmov.s @r0,fr3

LAB_ce32b50:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x58,r3
    mov.w @(DAT_ce32c66,pc),r0
    mov 0x16,r5
    mov 0x05,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32c68,pc),r0
    mov.b r13,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32c80,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32c84,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra FUN_ce32a7a
    mov.l @r15+,r14

LAB_ce32b98:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32c6a,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32c6c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32c6e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32bba
    bra LAB_ce32bbc
    mov 0x02,r3

LAB_ce32bba:
    mov 0x00,r3

LAB_ce32bbc:
    mov.w @(DAT_ce32c70,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32c88,pc),r3
    jsr @r3
    mov r14,r4
    bsr FUN_ce32a7a
    mov r14,r4
    mov.w @(DAT_ce32c72,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32c04
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32c94,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce32c72,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32c74,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32c8c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32c90,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32c04:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c0c:
    mov.w @(DAT_ce32c6a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32c6c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32c76,pc),r0
    mov.b @(r0,r14),r4
    tst r4,r4
    bt LAB_ce32c32
    exts.b r4,r0
    tst 0x01,r0
    bf LAB_ce32c32
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32c32:
    mov.l @(PTR_ce32c88,pc),r3
    mov 0x00,r13
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32ce0
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce32c98
    mov.l @(PTR_ce32c84,pc),r3
    mov 0x07,r0
    mov 0x16,r5
    mov.b r0,@(0x6,r14)
    mov 0x06,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32c78,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32c7a,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    bra LAB_ce32d2a
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c66:
    #data 0x041c
DAT_ce32c68:
    #data 0x01f9
DAT_ce32c6a:
    #data 0x03f8
DAT_ce32c6c:
    #data 0x0328
DAT_ce32c6e:
    #data 0x0255
DAT_ce32c70:
    #data 0x03f1
DAT_ce32c72:
    #data 0x0141
DAT_ce32c74:
    #data 0x03f0
DAT_ce32c76:
    #data 0x019e
DAT_ce32c78:
    #data 0x03f9
DAT_ce32c7a:
    #data 0x0327
    #align4

DAT_ce32c7c:
    #data 0xc0f00000
PTR_ce32c80:
    #data loc_8c2896b0
PTR_ce32c84:
    #data loc_8c034e8c
PTR_ce32c88:
    #data loc_8c034dee
DAT_ce32c8c:
    #data 0xc2200000
DAT_ce32c90:
    #data 0x424db6db
PTR_ce32c94:
    #data loc_8c050834

;=============================================

LAB_ce32c98:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x20,r0
    mov.b r13,@(r0,r14)
    mov 0x04,r0
    mov.l @(PTR_ce32dec,pc),r3
    mov 0x16,r5
    mov.w r0,@(0x1e,r14)
    mov 0x07,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32de0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32cc4
    mova @(DAT_ce32df0,pc),r0
    bra LAB_ce32cc8
    fmov.s @r0,fr3

LAB_ce32cc4:
    mova @(DAT_ce32df4,pc),r0
    fmov.s @r0,fr3

LAB_ce32cc8:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32df8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    bra LAB_ce32d2a
    fmov fr4,@(r0,r14)

LAB_ce32ce0:
    mov.w @(DAT_ce32de2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32cfe
    mov.w @(DAT_ce32de4,pc),r3
    mov r3,r0
    nop
    add 0x41,r0
    mov.l @(PTR_ce32dfc,pc),r2
    mov.b @(r0,r14),r5
    add r3,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32de2,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce32cfe:
    mov.w @(DAT_ce32de6,pc),r0
    mov 0x01,r3
    mov 0x5C,r1
    mov r14,r4
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra FUN_ce32a7a
    mov.l @r15+,r14

LAB_ce32d2a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32d32:
    mov.w @(DAT_ce32de8,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32dea,pc),r0
    mov.l @(PTR_ce32e00,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32de6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32e04
    mov 0x00,r13
    mov.b r13,@(r0,r14)
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce32e04
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt/s LAB_ce32dcc
    mov.w r0,@(0x1e,r14)
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
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x60,r0
    fldi0 fr4
    mov r14,r4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    mov.l @(PTR_ce32dec,pc),r3
    mov 0x0C,r6
    fmov fr4,@(r0,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32dcc:
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce32dec,pc),r3
    mov 0x08,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce32e64
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32de0:
    #data 0x01d2
DAT_ce32de2:
    #data 0x0140
DAT_ce32de4:
    #data 0x00ff
DAT_ce32de6:
    #data 0x0141
DAT_ce32de8:
    #data 0x03f8
DAT_ce32dea:
    #data 0x0328
    #align4

PTR_ce32dec:
    #data loc_8c034e8c
DAT_ce32df0:
    #data 0x40d55555
DAT_ce32df4:
    #data 0xc0d55555
DAT_ce32df8:
    #data 0x41092492
PTR_ce32dfc:
    #data loc_8c0e2534
PTR_ce32e00:
    #data loc_8c034dee

;=============================================

LAB_ce32e04:
    mov.w @(DAT_ce32f48,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32e28
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce32e28
    mov.w @(DAT_ce32f4a,pc),r3
    mov r3,r0
    nop
    add 0x41,r0
    mov.l @(PTR_ce32f58,pc),r2
    mov.b @(r0,r14),r5
    add r3,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32f48,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce32e28:
    bsr FUN_ce32fac
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

LAB_ce32e64:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra FUN_ce32a7a
    mov.l @r15+,r14

LAB_ce32e6e:
    mov.w @(DAT_ce32f4c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32f4e,pc),r0
    mov.l @(PTR_ce32f5c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32eb6
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32f64,pc),r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x05,r6
    mov.w @(DAT_ce32f50,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32f52,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32f60,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce32eb6:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32a7a
    mov.l @r15+,r14

LAB_ce32ebe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32f5c,pc),r3
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
    mov.w @(DAT_ce32f54,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32f14
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x01,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    mov.w @(DAT_ce32f54,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32f56,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32f64,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32f68,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32f14:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32a7a
    mov.l @r15+,r14

LAB_ce32f1c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32f5c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32f70
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32f6c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f48:
    #data 0x0140
DAT_ce32f4a:
    #data 0x00ff
DAT_ce32f4c:
    #data 0x03f8
DAT_ce32f4e:
    #data 0x0328
DAT_ce32f50:
    #data 0x03f9
DAT_ce32f52:
    #data 0x0327
DAT_ce32f54:
    #data 0x041c
DAT_ce32f56:
    #data 0x01f9
    #align4

PTR_ce32f58:
    #data loc_8c0e2534
PTR_ce32f5c:
    #data loc_8c034dee
DAT_ce32f60:
    #data 0xc1892492
PTR_ce32f64:
    #data loc_8c034e8c
PTR_ce32f68:
    #data loc_8c0511b4
PTR_ce32f6c:
    #data loc_8c051648

;=============================================

LAB_ce32f70:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32a7a
    mov.l @r15+,r14

LAB_ce32f78:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce330a0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32fa4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce330a4,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32fa4:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32a7a
    mov.l @r15+,r14

;=============================================

FUN_ce32fac:
    mov 0x60,r0
    fldi0 fr2
    fmov.s @(r0,r4),fr3
    fcmp/eq fr2,fr3
    bt LAB_ce32fea
    mov.w @(DAT_ce33096,pc),r0
    mov.w @(r0,r4),r0
    extu.w r0,r0
    tst 0x60,r0
    bt LAB_ce32fea
    mov 0x20,r0
    mov.b @(r0,r4),r2
    add 0x01,r2
    mov.b r2,@(r0,r4)
    mov 0x02,r2
    mov.b @(r0,r4),r3
    extu.b r3,r3
    cmp/gt r2,r3
    bf LAB_ce32fea
    mov 0x00,r1
    mov.b r1,@(r0,r4)
    mov 0x06,r5
    mov.w @(0x1c,r4),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    cmp/gt r5,r0
    bf LAB_ce32fea
    mov r5,r0
    nop
    mov.w r0,@(0x1c,r4)

LAB_ce32fea:
    rts
    nop

LAB_ce32fee:
    mov r4,r3
    mov.l @(PTR_ce330a8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33000:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce330ac,pc),r3
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
    mov.w @(DAT_ce33098,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3309a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce330b0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce330b4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3309c,pc),r0
    mov 0x5B,r2
    mov.l @(PTR_ce330b8,pc),r3
    mov 0x1C,r6
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
    mov.l @(PTR_ce330bc,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33076:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce330a0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce330c0
    mov.l @(PTR_ce330a4,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33096:
    #data 0x04e0
DAT_ce33098:
    #data 0x01f9
DAT_ce3309a:
    #data 0x041c
DAT_ce3309c:
    #data 0x01a1
    #align4

PTR_ce330a0:
    #data loc_8c034dee
PTR_ce330a4:
    #data loc_8c051648
PTR_ce330a8:
    #data PTR_ce33ec0
PTR_ce330ac:
    #data loc_8c035162
PTR_ce330b0:
    #data loc_8c05218a
PTR_ce330b4:
    #data loc_8c05115a
PTR_ce330b8:
    #data loc_8c2896b0
PTR_ce330bc:
    #data loc_8c034e8c

;=============================================

LAB_ce330c0:
    mov.w @(DAT_ce331a0,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce330e2
    mov 0x00,r2
    mov.l @(PTR_ce331bc,pc),r3
    mov.b r2,@(r0,r14)
    mova @(DAT_ce331b4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce331b8,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce330e2:
    mov.w @(DAT_ce331a2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33104
    mov.w @(DAT_ce331a4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce330f8
    mova @(DAT_ce331c0,pc),r0
    bra LAB_ce330fc
    fmov.s @r0,fr4

LAB_ce330f8:
    mova @(DAT_ce331c4,pc),r0
    fmov.s @r0,fr4

LAB_ce330fc:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce33104:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3310c:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce331a6,pc),r1
    mov.l @(PTR_ce331c8,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce33124:
    mov.w @(DAT_ce331a8,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce331aa,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33194
    mov.w @(DAT_ce331ac,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33164
    mov.w @(DAT_ce331ae,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33164
    mov.l @(PTR_ce331cc,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33194
    mov r0,r4
    bra LAB_ce33186
    mov 0x00,r2

LAB_ce33164:
    mov.w @(DAT_ce331ac,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33194
    mov.w @(DAT_ce331ae,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33194
    mov.l @(PTR_ce331cc,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33194
    mov r0,r4
    mov 0x01,r2

LAB_ce33186:
    mov.w @(DAT_ce331b0,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33194:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3319c:
    rts
    mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331a0:
    #data 0x0141
DAT_ce331a2:
    #data 0x0140
DAT_ce331a4:
    #data 0x01d2
DAT_ce331a6:
    #data 0x01f9
DAT_ce331a8:
    #data 0x01fa
DAT_ce331aa:
    #data 0x0c00
DAT_ce331ac:
    #data 0x01fe
DAT_ce331ae:
    #data 0x01a3
DAT_ce331b0:
    #data 0x01f7
    #align4

DAT_ce331b4:
    #data 0xc2c15555
DAT_ce331b8:
    #data 0x43009249
PTR_ce331bc:
    #data loc_8c050ea4
DAT_ce331c0:
    #data 0x40555555
DAT_ce331c4:
    #data 0xc0555555
PTR_ce331c8:
    #data PTR_ce33ec8
PTR_ce331cc:
    #data loc_8c045790

;=============================================

LAB_ce331d0:
    mov.w @(DAT_ce332ba,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce332bc,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33228
    mov.w @(DAT_ce332be,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33228
    mov.w @(DAT_ce332c0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33228
    mova @(DAT_ce332cc,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce33228
    mov.l @(PTR_ce332d0,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33228
    mov r0,r4
    mov.w @(DAT_ce332c2,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33228:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33230:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce332c2,pc),r1
    mov.l @(PTR_ce332d4,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce33248:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce332c4,pc),r0
    mov r4,r14
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce332c6,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf/s LAB_ce3327e
    mov 0x05,r6
    mov.w @(DAT_ce332c4,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce332c6,pc),r0
    extu.b r2,r2
    mov.w r2,@(r0,r14)

LAB_ce3327e:
    mov.l @(PTR_ce332d8,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce332dc,pc),r0
    mov.l @(PTR_ce332e4,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce332e0,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce332c8,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce332e8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce332ec,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce332ba:
    #data 0x01fa
DAT_ce332bc:
    #data 0x0c00
DAT_ce332be:
    #data 0x01fe
DAT_ce332c0:
    #data 0x01a3
DAT_ce332c2:
    #data 0x01f7
DAT_ce332c4:
    #data 0x01d2
DAT_ce332c6:
    #data 0x0130
DAT_ce332c8:
    #data 0x01a0
    #align4

DAT_ce332cc:
    #data 0x43092492
PTR_ce332d0:
    #data loc_8c045790
PTR_ce332d4:
    #data PTR_ce33ed8
PTR_ce332d8:
    #data loc_8c02fec4
DAT_ce332dc:
    #data 0xc2a6aaaa
DAT_ce332e0:
    #data 0x431e9249
PTR_ce332e4:
    #data loc_8c103660
PTR_ce332e8:
    #data loc_8c056f2a
PTR_ce332ec:
    #data loc_8c034e8c

;=============================================

LAB_ce332f0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf/s LAB_ce33316
    mov 0x05,r6
    mov.w @(DAT_ce33408,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3340a,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce33316:
    mov.l @(PTR_ce33410,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33414,pc),r0
    mov.l @(PTR_ce3341c,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33418,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3340c,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33420,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33424,pc),r2
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33352:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33408,pc),r0
    mov r4,r14
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3340a,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf/s LAB_ce33388
    mov 0x05,r6
    mov.w @(DAT_ce33408,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce3340a,pc),r0
    extu.b r2,r2
    mov.w r2,@(r0,r14)

LAB_ce33388:
    mov.l @(PTR_ce33410,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33414,pc),r0
    mov.l @(PTR_ce3341c,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33418,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3340c,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33420,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33424,pc),r2
    mov 0x0F,r5
    mov 0x03,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce333c4:
    mov.w @(DAT_ce3340e,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33428,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce333e2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce3344c
    fldi0 fr15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33408,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33430
    mova @(DAT_ce3342c,pc),r0
    bra LAB_ce33434
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33408:
    #data 0x01d2
DAT_ce3340a:
    #data 0x0130
DAT_ce3340c:
    #data 0x01a0
DAT_ce3340e:
    #data 0x01ea
    #align4

PTR_ce33410:
    #data loc_8c02fec4
DAT_ce33414:
    #data 0xc2a6aaaa
DAT_ce33418:
    #data 0x431e9249
PTR_ce3341c:
    #data loc_8c103660
PTR_ce33420:
    #data loc_8c056f2a
PTR_ce33424:
    #data loc_8c034e8c
PTR_ce33428:
    #data PTR_ce33ee4
DAT_ce3342c:
    #data 0xc0f00000

;=============================================

LAB_ce33430:
    mova @(DAT_ce33590,pc),r0
    fmov.s @r0,fr3

LAB_ce33434:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce33594,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33598,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce3344c:
    mov.l @(PTR_ce3359c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33466
    lds.l @r15+,PR
    mov.l @(PTR_ce335a0,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33466:
    mov.w @(DAT_ce33584,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3349c
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce33586,pc),r0
    mov 0x00,r6
    mov 0x02,r2
    mov r6,r5
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce335a4,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33588,pc),r0
    mov 0x20,r2
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)

LAB_ce3349c:
    mov.w @(DAT_ce3358a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce334f8
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
    mov.w @(DAT_ce3358c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce334f8
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce3358c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce334f8:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33502:
    mov r4,r3
    mov.l @(PTR_ce335a8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce33514:
    mov.l r14,@-r15
    mov 0x01,r3
    mov.w @(DAT_ce33586,pc),r0
    mov 0x00,r6
    mov.l r13,@-r15
    mov r4,r13
    sts.l PR,@-r15
    mov.l @(r0,r13),r14
    add 0xEC,r0
    mov 0x02,r2
    mov r6,r5
    mov.l r4,@(r0,r14)
    add 0x42,r0
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.l @(PTR_ce335a4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r13,r4
    mov.w @(DAT_ce33588,pc),r0
    mov 0x22,r2
    mov.w @(DAT_ce3358e,pc),r1
    mov r13,r4
    mov.b r2,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r13),r0
    add r14,r1
    mov.l @(PTR_ce335ac,pc),r3
    mov 0x0F,r5
    xor 0x01,r0
    mov.b r0,@r1
    mov 0x02,r6
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3355c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x1E,r5
    mov.l @(PTR_ce335b0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33586,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    mov.l @(PTR_ce335b4,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4
    mov 0x40,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33584:
    #data 0x0141
DAT_ce33586:
    #data 0x01c8
DAT_ce33588:
    #data 0x01a1
DAT_ce3358a:
    #data 0x0140
DAT_ce3358c:
    #data 0x041c
DAT_ce3358e:
    #data 0x01d2
    #align4

DAT_ce33590:
    #data 0x40f00000
DAT_ce33594:
    #data 0x40892492
DAT_ce33598:
    #data 0xbe892492
PTR_ce3359c:
    #data loc_8c034dee
PTR_ce335a0:
    #data loc_8c051648
PTR_ce335a4:
    #data loc_8c02fec4
PTR_ce335a8:
    #data PTR_ce33ef0
PTR_ce335ac:
    #data loc_8c034e8c
PTR_ce335b0:
    #data loc_8c050552
PTR_ce335b4:
    #data loc_8c05064e

;=============================================

LAB_ce335b8:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    fmov.s fr13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce336cc,pc),r3
    jsr @r3
    mov r4,r14
    mova @(DAT_ce336d0,pc),r0
    fmov.s @r0,fr13
    mova @(DAT_ce336d4,pc),r0
    fmov.s @r0,fr14
    mova @(DAT_ce336d8,pc),r0
    fmov.s @r0,fr15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce33606
    bsr FUN_ce33514
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov 0x04,r0
    fadd fr13,fr3
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce336c2,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33602
    bra LAB_ce3366a
    fmov.s fr15,@r15

LAB_ce33602:
    bra LAB_ce3366a
    fmov.s fr14,@r15

LAB_ce33606:
    mov.l @(PTR_ce336dc,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce33616
    mov.w @(DAT_ce336c4,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce33616:
    mov.l @(PTR_ce336e0,pc),r3
    mov.w @(DAT_ce336c6,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    tst r0,r0
    bt LAB_ce3362e
    bsr FUN_ce33514
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    bra LAB_ce33692
    mov.b r0,@(0x6,r14)

LAB_ce3362e:
    mov.w @(DAT_ce336c8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33692
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce336c6,pc),r0
    mov.l @(r0,r14),r2
    add 0xEC,r0
    mov.l r14,@(r0,r2)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov 0x21,r2
    mov.b r2,@(r0,r3)
    mov.l @(PTR_ce336e4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov 0x04,r0
    fadd fr13,fr3
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce336c2,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33668
    bra LAB_ce3366a
    fmov.s fr15,@r15

LAB_ce33668:
    fmov.s fr14,@r15

LAB_ce3366a:
    mov 0x34,r0
    fmov.s @r15,fr2
    fmov.s @(r0,r14),fr3
    mov 0x3C,r0
    mov.l @(PTR_ce336e8,pc),r3
    mov 0x00,r7
    fadd fr3,fr2
    mov 0x01,r6
    fmov.s fr2,@r15
    fmov.s @(r0,r14),fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce336c2,pc),r0
    mov.w @(r0,r14),r5
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce336ec,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4

LAB_ce33692:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr13
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce336a0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce336cc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce336ba
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce336f0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce336ba:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce336c2:
    #data 0x0130
DAT_ce336c4:
    #data 0x0142
DAT_ce336c6:
    #data 0x01c8
DAT_ce336c8:
    #data 0x0141
    #align4

PTR_ce336cc:
    #data loc_8c034dee
DAT_ce336d0:
    #data 0x42f44924
DAT_ce336d4:
    #data 0xc2be0000
DAT_ce336d8:
    #data 0x42be0000
PTR_ce336dc:
    #data loc_8c050682
PTR_ce336e0:
    #data loc_8c050610
PTR_ce336e4:
    #data loc_8c05933c
PTR_ce336e8:
    #data loc_8c0fd966
PTR_ce336ec:
    #data loc_8c04223a
PTR_ce336f0:
    #data loc_8c051648

;=============================================

LAB_ce336f4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce33798
    mov 0x5C,r1
    mov.l @(PTR_ce33820,pc),r3
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
    mov.w @(DAT_ce33812,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3380a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33812,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33814,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33768
    mova @(DAT_ce33824,pc),r0
    bra LAB_ce3376c
    fmov.s @r0,fr3

LAB_ce33768:
    mova @(DAT_ce33828,pc),r0
    fmov.s @r0,fr3

LAB_ce3376c:
    mov 0x5C,r0
    mov.l @(PTR_ce3382c,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fldi0 fr3
    mov 0x0F,r5
    fmov fr3,@(r0,r14)
    mov 0x04,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33816,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce33830,pc),r3
    mov 0x30,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce3383c
    mov.l @r15+,r14

LAB_ce33798:
    mov.w @(DAT_ce33818,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce337ae
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce337ae:
    mov 0x68,r1
    mov.l @(PTR_ce33820,pc),r3
    add r14,r1
    mov 0x5C,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce337d4
    lds.l @r15+,PR
    mov.l @(PTR_ce33834,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce337d4:
    mov.w @(DAT_ce3381a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3380a
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce3381c,pc),r0
    mov 0x00,r6
    mov 0x02,r2
    mov r6,r5
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce33838,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3381e,pc),r0
    mov 0x20,r2
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)

LAB_ce3380a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33812:
    #data 0x041c
DAT_ce33814:
    #data 0x01d2
DAT_ce33816:
    #data 0x01f9
DAT_ce33818:
    #data 0x0140
DAT_ce3381a:
    #data 0x0141
DAT_ce3381c:
    #data 0x01c8
DAT_ce3381e:
    #data 0x01a1
    #align4

PTR_ce33820:
    #data loc_8c034dee
DAT_ce33824:
    #data 0xc1200000
DAT_ce33828:
    #data 0x41200000
PTR_ce3382c:
    #data loc_8c034e8c
PTR_ce33830:
    #data loc_8c04223a
PTR_ce33834:
    #data loc_8c051648
PTR_ce33838:
    #data loc_8c02fec4

;=============================================

LAB_ce3383c:
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    mova @(DAT_ce33930,pc),r0
    fmov.s fr3,@r15
    fmov.s @r15,fr2
    fmov.s @r0,fr3
    mov.w @(DAT_ce33924,pc),r0
    fadd fr3,fr2
    fmov.s fr2,@r15
    mov.w @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3385e
    mova @(DAT_ce33934,pc),r0
    bra LAB_ce33862
    fmov.s @r0,fr2

LAB_ce3385e:
    mova @(DAT_ce33938,pc),r0
    fmov.s @r0,fr2

LAB_ce33862:
    fmov.s @r15,fr3
    mov.w @(DAT_ce33926,pc),r0
    fadd fr2,fr3
    mov.l @(PTR_ce3393c,pc),r3
    fmov.s fr3,@r15
    fmov.s @(r0,r4),fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x3C,r0
    fmov.s @(r0,r4),fr3
    mov 0x08,r0
    jsr @r3
    fmov fr3,@(r0,r15)
    mov.l @(PTR_ce33940,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r15,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3388c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce338b8
    mov r4,r14
    tst r0,r0
    bf LAB_ce338a8
    bsr FUN_ce338ee
    mov r14,r4
    tst r0,r0
    bf LAB_ce338a8
    bsr FUN_ce33950
    mov r14,r4
    tst r0,r0
    bt LAB_ce338b0

LAB_ce338a8:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce338b0:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce338b8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce33944,pc),r5
    mov.w @(DAT_ce33928,pc),r6
    mov.l @(PTR_ce33948,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce338d8
    mov.w @(DAT_ce3392a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce338e0

LAB_ce338d8:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce338e0:
    mov.w @(DAT_ce3392c,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce338ee:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3394c,pc),r5
    mov.w @(DAT_ce3392e,pc),r6
    mov.l @(PTR_ce33948,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3390e
    mov.w @(DAT_ce3392a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce33916

LAB_ce3390e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce33916:
    mov.w @(DAT_ce3392c,pc),r0
    mov 0x07,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33924:
    #data 0x0130
DAT_ce33926:
    #data 0x041c
DAT_ce33928:
    #data 0x0394
DAT_ce3392a:
    #data 0x040c
DAT_ce3392c:
    #data 0x0258
DAT_ce3392e:
    #data 0x039c
    #align4

DAT_ce33930:
    #data 0x3fd55555
DAT_ce33934:
    #data 0xc2f00000
DAT_ce33938:
    #data 0x42f00000
PTR_ce3393c:
    #data loc_8c04242a
PTR_ce33940:
    #data loc_8c0fd6b0
PTR_ce33944:
    #data DAT_ce33c9c
PTR_ce33948:
    #data loc_8c054e58
PTR_ce3394c:
    #data DAT_ce33cac

;=============================================

FUN_ce33950:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce33a48,pc),r5
    mov.w @(DAT_ce33a3a,pc),r6
    mov.l @(PTR_ce33a4c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce33970
    mov.w @(DAT_ce33a3c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce33978

LAB_ce33970:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce33978:
    mov.w @(DAT_ce33a3e,pc),r0
    mov 0x0E,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33986:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33a40,pc),r1
    mov.l @(PTR_ce33a50,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3399e:
    mov.w @(DAT_ce33a42,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33a54,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce339ac:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33a44,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce339ca
    mov 0x06,r5
    cmp/eq 0x01,r0
    bt LAB_ce339d2
    cmp/eq 0x02,r0
    bt LAB_ce339d2
    bra LAB_ce339d6
    nop

LAB_ce339ca:
    mov.w @(DAT_ce33a46,pc),r0
    mov 0x07,r3
    bra LAB_ce339d6
    mov.b r3,@(r0,r4)

LAB_ce339d2:
    mov.w @(DAT_ce33a46,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce339d6:
    mov.l @(PTR_ce33a58,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce339dc:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33a44,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce339fa
    mov 0x06,r5
    cmp/eq 0x01,r0
    bt LAB_ce33a02
    cmp/eq 0x02,r0
    bt LAB_ce33a02
    bra LAB_ce33a06
    nop

LAB_ce339fa:
    mov.w @(DAT_ce33a46,pc),r0
    mov 0x07,r3
    bra LAB_ce33a06
    mov.b r3,@(r0,r4)

LAB_ce33a02:
    mov.w @(DAT_ce33a46,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33a06:
    mov.l @(PTR_ce33a58,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33a0c:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33a44,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33a2e
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce33a34
    cmp/eq 0x02,r0
    bt LAB_ce33a5c
    bra LAB_ce33a66
    nop

LAB_ce33a2e:
    mov.w @(DAT_ce33a46,pc),r0
    bra LAB_ce33a62
    mov.b r6,@(r0,r4)

LAB_ce33a34:
    mov.w @(DAT_ce33a46,pc),r0
    bra LAB_ce33a62
    mov.b r5,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a3a:
    #data 0x03ac
DAT_ce33a3c:
    #data 0x040c
DAT_ce33a3e:
    #data 0x0258
DAT_ce33a40:
    #data 0x01f7
DAT_ce33a42:
    #data 0x01c8
DAT_ce33a44:
    #data 0x04c9
DAT_ce33a46:
    #data 0x01e9
    #align4

PTR_ce33a48:
    #data DAT_ce33cbc
PTR_ce33a4c:
    #data loc_8c054e58
PTR_ce33a50:
    #data PTR_ce33efc
PTR_ce33a54:
    #data loc_8c04cc1c
PTR_ce33a58:
    #data loc_8c0530d8

;=============================================

LAB_ce33a5c:
    mov.w @(DAT_ce33b98,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce33a62:
    mov.w @(DAT_ce33b9a,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce33a66:
    mov.l @(PTR_ce33ba4,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce33a6c:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33b9c,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33a8e
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce33a94
    cmp/eq 0x02,r0
    bt LAB_ce33a9a
    bra LAB_ce33aa4
    nop

LAB_ce33a8e:
    mov.w @(DAT_ce33b98,pc),r0
    bra LAB_ce33aa0
    mov.b r6,@(r0,r4)

LAB_ce33a94:
    mov.w @(DAT_ce33b98,pc),r0
    bra LAB_ce33aa0
    mov.b r5,@(r0,r4)

LAB_ce33a9a:
    mov.w @(DAT_ce33b98,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce33aa0:
    mov.w @(DAT_ce33b9a,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce33aa4:
    mov.l @(PTR_ce33ba4,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce33aaa:
    mov r4,r3
    mov.l @(PTR_ce33ba8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33abc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce33bac,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33b9e,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33bb0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33ba0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33aec
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33aec:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33bb4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x51,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33bb8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce33ba2,pc),r0
    mov 0x06,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33bbc,pc),r3
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
    mov.l @(PTR_ce33bc0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33b36:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33bc4,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce33bc8,pc),r3
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
    bt LAB_ce33bcc
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33bc0,pc),r3
    mov 0x07,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33b98:
    #data 0x01e9
DAT_ce33b9a:
    #data 0x01a3
DAT_ce33b9c:
    #data 0x04c9
DAT_ce33b9e:
    #data 0x01f9
DAT_ce33ba0:
    #data 0x01d2
DAT_ce33ba2:
    #data 0x01a1
    #align4

PTR_ce33ba4:
    #data loc_8c0530d8
PTR_ce33ba8:
    #data PTR_ce33f08
PTR_ce33bac:
    #data loc_8c035162
DAT_ce33bb0:
    #data 0x41f00000
DAT_ce33bb4:
    #data 0x40892492
DAT_ce33bb8:
    #data 0xbf4db6db
PTR_ce33bbc:
    #data loc_8c2896b0
PTR_ce33bc0:
    #data loc_8c034e8c
PTR_ce33bc4:
    #data loc_8c034dee
PTR_ce33bc8:
    #data loc_8c052ce2

;=============================================

LAB_ce33bcc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33bd2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33c08,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33bf4
    mov.l @(PTR_ce33c0c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33c10,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33bf4:
    mov.w @(DAT_ce33c06,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33c00
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce33c00:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33c06:
    #data 0x0141
    #align4

PTR_ce33c08:
    #data loc_8c034dee
PTR_ce33c0c:
    #data loc_8c035162
PTR_ce33c10:
    #data loc_8c051854
DAT_ce33c14:
    #data 0x0201
    #data 0x0200
DAT_ce33c18:
    #data 0x02ff
    #data 0x0201
DAT_ce33c1c:
    #data 0xffff
    #data 0x02ff
DAT_ce33c20:
    #data 0x0201
    #data 0x0201
DAT_ce33c24:
    #data 0x02ff
    #data 0x02ff
DAT_ce33c28:
    #data 0xffff
    #data 0xffff
DAT_ce33c2c:
    #data 0x0201
    #data 0x0200
DAT_ce33c30:
    #data 0x02ff
    #data 0x0201
DAT_ce33c34:
    #data 0xffff
    #data 0x02ff
DAT_ce33c38:
    #data 0x0201
    #data 0x0201
DAT_ce33c3c:
    #data 0x02ff
    #data 0x02ff
DAT_ce33c40:
    #data 0xffff
    #data 0xffff
DAT_ce33c44:
    #data 0x0201
    #data 0x0200
DAT_ce33c48:
    #data 0x02ff
    #data 0x0201
DAT_ce33c4c:
    #data 0xffff
    #data 0x02ff
DAT_ce33c50:
    #data 0x0201
    #data 0x0201
DAT_ce33c54:
    #data 0x02ff
    #data 0x02ff
DAT_ce33c58:
    #data 0xffff
    #data 0xffff
DAT_ce33c5c:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33c6c:
    #data 0x0003
    #data 0x0000
    #data 0x0001
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce33c7c:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce33c8c:
    #data 0x0003
    #data 0x2000
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce33c9c:
    #data 0x0003
    #data 0x9100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33cac:
    #data 0x0003
    #data 0x9100
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce33cbc:
    #data 0x0003
    #data 0x9100
    #data 0x000e
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce33ccc:
    #data 0x0003
    #data 0x1000
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
    #align4

PTR_ce33cdc:
    #data LAB_ce30480
PTR_ce33ce0:
    #data LAB_ce3001c
PTR_ce33ce4:
    #data LAB_ce304a4
PTR_ce33ce8:
    #data LAB_ce30b2a
PTR_ce33cec:
    #data LAB_ce30f02
PTR_ce33cf0:
    #data LAB_ce31086
PTR_ce33cf4:
    #data LAB_ce31206
PTR_ce33cf8:
    #data LAB_ce31278
PTR_ce33cfc:
    #data LAB_ce312f0
PTR_ce33d00:
    #data LAB_ce3310c
PTR_ce33d04:
    #data LAB_ce33230
PTR_ce33d08:
    #data LAB_ce333c4
PTR_ce33d0c:
    #data LAB_ce33986
PTR_ce33d10:
    #data LAB_ce3388c
PTR_ce33d14:
    #data LAB_ce33aaa
PTR_ce33d18:
    #data LAB_ce30e3a
PTR_ce33d1c:
    #data LAB_ce339ac
PTR_ce33d20:
    #data LAB_ce339dc
PTR_ce33d24:
    #data LAB_ce33a0c
PTR_ce33d28:
    #data LAB_ce33a6c
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce33d4c:
    #data LAB_ce304b8
PTR_ce33d50:
    #data LAB_ce30b02
PTR_ce33d54:
    #data LAB_ce30840
PTR_ce33d58:
    #data LAB_ce304b8
PTR_ce33d5c:
    #data LAB_ce30b4c
PTR_ce33d60:
    #data LAB_ce30d7a
PTR_ce33d64:
    #data LAB_ce30d64
PTR_ce33d68:
    #data LAB_ce30b3e
PTR_ce33d6c:
    #data LAB_ce30f14
PTR_ce33d70:
    #data LAB_ce30fb0
PTR_ce33d74:
    #data LAB_ce3101e
PTR_ce33d78:
    #data LAB_ce31098
PTR_ce33d7c:
    #data LAB_ce31108
PTR_ce33d80:
    #data LAB_ce3119e
PTR_ce33d84:
    #data LAB_ce31244
PTR_ce33d88:
    #data LAB_ce31258
DAT_ce33d8c:
    #data 0x0100
    #data 0x0102
    #data 0x0105
    #data 0x0502
DAT_ce33d94:
    #data 0x0303
    #data 0x0300
    #data 0x0003
    #data 0x0000
    #align4
    
PTR_ce33d9c:
    #data LAB_ce31304
PTR_ce33da0:
    #data LAB_ce3149e
PTR_ce33da4:
    #data LAB_ce31718
PTR_ce33da8:
    #data LAB_ce31a70
PTR_ce33dac:
    #data LAB_ce31d14
PTR_ce33db0:
    #data LAB_ce31e44
PTR_ce33db4:
    #data LAB_ce320e4
PTR_ce33db8:
    #data LAB_ce32512
PTR_ce33dbc:
    #data LAB_ce31304
PTR_ce33dc0:
    #data LAB_ce327ca
PTR_ce33dc4:
    #data LAB_ce31304
PTR_ce33dc8:
    #data LAB_ce32806
PTR_ce33dcc:
    #data LAB_ce31304
PTR_ce33dd0:
    #data LAB_ce31304
PTR_ce33dd4:
    #data LAB_ce32ab0
PTR_ce33dd8:
    #data LAB_ce31304
PTR_ce33ddc:
    #data LAB_ce32fee
PTR_ce33de0:
    #data LAB_ce3131a
PTR_ce33de4:
    #data LAB_ce313c4
DAT_ce33de8:
    #data 0x01
DAT_ce33de9:
    #data 0x01
    #data 0x03
    #data 0x03
PTR_ce33dec:
    #data LAB_ce314d8
PTR_ce33df0:
    #data LAB_ce315b2
PTR_ce33df4:
    #data LAB_ce31638
PTR_ce33df8:
    #data LAB_ce31674
PTR_ce33dfc:
    #data FUN_ce316be
PTR_ce33e00:
    #data LAB_ce31744
PTR_ce33e04:
    #data LAB_ce317f0
PTR_ce33e08:
    #data LAB_ce31890
PTR_ce33e0c:
    #data LAB_ce31934
PTR_ce33e10:
    #data LAB_ce31978
PTR_ce33e14:
    #data LAB_ce31a16
PTR_ce33e18:
    #data LAB_ce31a82
PTR_ce33e1c:
    #data LAB_ce31b50
PTR_ce33e20:
    #data LAB_ce31bf8
PTR_ce33e24:
    #data FUN_ce31c86
PTR_ce33e28:
    #data LAB_ce31d2a
PTR_ce33e2c:
    #data LAB_ce31db0
PTR_ce33e30:
    #data LAB_ce31de2
PTR_ce33e34:
    #data LAB_ce31e56
PTR_ce33e38:
    #data LAB_ce31e98
PTR_ce33e3c:
    #data LAB_ce31f64
PTR_ce33e40:
    #data LAB_ce31fee
PTR_ce33e44:
    #data LAB_ce320f6
PTR_ce33e48:
    #data LAB_ce3216a
PTR_ce33e4c:
    #data LAB_ce32260
PTR_ce33e50:
    #data LAB_ce32360
PTR_ce33e54:
    #data LAB_ce323b6
PTR_ce33e58:
    #data LAB_ce3240e
PTR_ce33e5c:
    #data FUN_ce3245a
PTR_ce33e60:
    #data LAB_ce32524
PTR_ce33e64:
    #data LAB_ce32594
PTR_ce33e68:
    #data LAB_ce3265a
PTR_ce33e6c:
    #data LAB_ce326a6
PTR_ce33e70:
    #data LAB_ce3275c
PTR_ce33e74:
    #data FUN_ce327a8
DAT_ce33e78:
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x4234
    #data 0x2492
    #data 0x42c5
    #data 0x0000
    #data 0x4296
    #data 0x0000
    #data 0x0000
    #align4
    
PTR_ce33e8c:
    #data LAB_ce32818
PTR_ce33e90:
    #data LAB_ce328f6
PTR_ce33e94:
    #data LAB_ce32918
PTR_ce33e98:
    #data LAB_ce329f4
PTR_ce33e9c:
    #data LAB_ce32a58
PTR_ce33ea0:
    #data LAB_ce32ac2
PTR_ce33ea4:
    #data LAB_ce32b98
PTR_ce33ea8:
    #data LAB_ce32c0c
PTR_ce33eac:
    #data LAB_ce32d32
PTR_ce33eb0:
    #data LAB_ce32e6e
PTR_ce33eb4:
    #data LAB_ce32ebe
PTR_ce33eb8:
    #data LAB_ce32f1c
PTR_ce33ebc:
    #data LAB_ce32f78
PTR_ce33ec0:
    #data LAB_ce33000
PTR_ce33ec4:
    #data LAB_ce33076
PTR_ce33ec8:
    #data LAB_ce33124
PTR_ce33ecc:
    #data LAB_ce3319c
PTR_ce33ed0:
    #data LAB_ce331d0
PTR_ce33ed4:
    #data LAB_ce33124
PTR_ce33ed8:
    #data LAB_ce33248
PTR_ce33edc:
    #data LAB_ce332f0
PTR_ce33ee0:
    #data LAB_ce33352
PTR_ce33ee4:
    #data LAB_ce333e2
PTR_ce33ee8:
    #data LAB_ce33502
PTR_ce33eec:
    #data LAB_ce336f4
PTR_ce33ef0:
    #data LAB_ce3355c
PTR_ce33ef4:
    #data LAB_ce335b8
PTR_ce33ef8:
    #data FUN_ce336a0
PTR_ce33efc:
    #data LAB_ce3399e
PTR_ce33f00:
    #data LAB_ce3399e
PTR_ce33f04:
    #data LAB_ce3399e
PTR_ce33f08:
    #data LAB_ce33abc
PTR_ce33f0c:
    #data LAB_ce33b36
PTR_ce33f10:
    #data LAB_ce33bd2
