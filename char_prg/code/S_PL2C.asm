;╔══════════════════════════════════════════╗
;║ S_PL2C : Magneto Program                 ║
;║ (Max Eisenhardt aka Erik Lehnsherr)      ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
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
#symbol loc_8c054184 0x8C054184
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
#symbol loc_8c09cfd0 0x8C09CFD0
#symbol loc_8c09d564 0x8C09D564
#symbol loc_8c09d89c 0x8C09D89C
#symbol loc_8c09d9d0 0x8C09D9D0
#symbol loc_8c09e0c0 0x8C09E0C0
#symbol loc_8c0e4adc 0x8C0E4ADC
#symbol loc_8c0e4b22 0x8C0E4B22
#symbol loc_8c0e4f9c 0x8C0E4F9C
#symbol loc_8c103660 0x8C103660
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300ca,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300cc,pc),r7
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
    mov.l @(PTR_ce300d0,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    mov.l @(PTR_ce300d4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    mov.l @(PTR_ce300d8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    mov.l @(PTR_ce300dc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce3012c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce30188
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce303e4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce30392
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce3022c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce3029c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce30318
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce300ec
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce30456
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300e8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300c4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300ca:
    #data 0x0428
    #align4

PTR_ce300cc:
    #data PTR_ce323d0
PTR_ce300d0:
    #data loc_8c054508
PTR_ce300d4:
    #data loc_8c054b34
PTR_ce300d8:
    #data loc_8c05496c
PTR_ce300dc:
    #data loc_8c054d04
PTR_ce300e0:
    #data loc_8c054184
PTR_ce300e4:
    #data loc_8c053e00
PTR_ce300e8:
    #data loc_8c0542e0

;=============================================

FUN_ce300ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30104
    mov.w @(DAT_ce30204,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3010c

LAB_ce30104:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3010c:
    mov.w @(DAT_ce30206,pc),r0
    mov 0x0C,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30218,pc),r3
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

FUN_ce3012c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3021c,pc),r5
    mov.w @(DAT_ce30208,pc),r6
    mov.l @(PTR_ce30220,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3014e
    mov.w @(DAT_ce30204,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30152

LAB_ce3014e:
    bra LAB_ce30180
    mov 0x00,r0

LAB_ce30152:
    mov.w @(DAT_ce30208,pc),r5
    mov.l @(PTR_ce30224,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r13
    mov r13,r0
    nop
    mov.l @(PTR_ce30218,pc),r3
    mov 0x1D,r5
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x02,r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30206,pc),r0
    mov.b r3,@(r0,r14)
    add 0x16,r0
    mov.b r13,@(r0,r14)
    mov 0x01,r0

LAB_ce30180:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30188:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30228,pc),r5
    mov.w @(DAT_ce3020a,pc),r6
    mov.l @(PTR_ce30220,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301ca
    mov.w @(DAT_ce3020c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce301c0
    mov.w @(DAT_ce3020e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce301c0
    mov.w @(DAT_ce30210,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce301ca
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce301c0:
    mov.w @(DAT_ce30204,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bf LAB_ce301ce

LAB_ce301ca:
    bra LAB_ce301fc
    mov 0x00,r0

LAB_ce301ce:
    mov.w @(DAT_ce3020a,pc),r5
    mov.l @(PTR_ce30224,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r13
    mov r13,r0
    nop
    mov.l @(PTR_ce30218,pc),r3
    mov 0x1D,r5
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x03,r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30206,pc),r0
    mov.b r3,@(r0,r14)
    add 0x16,r0
    mov.b r13,@(r0,r14)
    mov 0x01,r0

LAB_ce301fc:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30204:
    #data 0x040c
DAT_ce30206:
    #data 0x01e9
DAT_ce30208:
    #data 0x0364
DAT_ce3020a:
    #data 0x036c
DAT_ce3020c:
    #data 0x01f9
DAT_ce3020e:
    #data 0x01fc
DAT_ce30210:
    #data 0x01d4
    #align4

PTR_ce30214:
    #data loc_8c054d1c
PTR_ce30218:
    #data loc_8c0530d8
PTR_ce3021c:
    #data DAT_ce3231c
PTR_ce30220:
    #data loc_8c054e58
PTR_ce30224:
    #data loc_8c055c3a
PTR_ce30228:
    #data DAT_ce3232c

;=============================================

FUN_ce3022c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30344,pc),r5
    mov.w @(DAT_ce30334,pc),r6
    mov.l @(PTR_ce30348,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3025e
    mov.w @(DAT_ce30336,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30268
    mov.w @(DAT_ce30338,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30268
    mov.w @(DAT_ce3033a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30262

LAB_ce3025e:
    bra LAB_ce30294
    mov 0x00,r0

LAB_ce30262:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30268:
    mov.w @(DAT_ce30334,pc),r5
    mov.l @(PTR_ce3034c,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r13
    mov r13,r0
    nop
    mov.l @(PTR_ce30350,pc),r3
    mov 0x15,r5
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3033c,pc),r0
    mov.b r13,@(r0,r14)
    add 0x16,r0
    mov.b r13,@(r0,r14)
    mov 0x01,r0

LAB_ce30294:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3029c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30354,pc),r5
    mov.w @(DAT_ce3033e,pc),r6
    mov.l @(PTR_ce30348,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302dc
    mov.w @(DAT_ce30336,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce302d4
    mov.w @(DAT_ce30338,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce302d4
    mov.w @(DAT_ce3033a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce302dc
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce302d4:
    mov.w @(DAT_ce30340,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce302e0

LAB_ce302dc:
    bra LAB_ce30310
    mov 0x00,r0

LAB_ce302e0:
    mov.w @(DAT_ce3033e,pc),r5
    mov.l @(PTR_ce3034c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r13
    mov r13,r0
    nop
    mov.l @(PTR_ce30350,pc),r3
    mov 0x15,r5
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x01,r4
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3033c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x16,r0
    mov.b r13,@(r0,r14)
    mov r4,r0
    nop

LAB_ce30310:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30318:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30358,pc),r5
    mov.w @(DAT_ce30342,pc),r6
    mov.l @(PTR_ce30348,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3035c
    bra LAB_ce3038a
    mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30334:
    #data 0x0374
DAT_ce30336:
    #data 0x01f9
DAT_ce30338:
    #data 0x01fc
DAT_ce3033a:
    #data 0x01d4
DAT_ce3033c:
    #data 0x01e9
DAT_ce3033e:
    #data 0x037c
DAT_ce30340:
    #data 0x02b2
DAT_ce30342:
    #data 0x0384
    #align4

PTR_ce30344:
    #data DAT_ce322f4
PTR_ce30348:
    #data loc_8c054e58
PTR_ce3034c:
    #data loc_8c055c3a
PTR_ce30350:
    #data loc_8c0530d8
PTR_ce30354:
    #data DAT_ce32308
PTR_ce30358:
    #data DAT_ce3233c

;=============================================

LAB_ce3035c:
    mov.w @(DAT_ce3048e,pc),r5
    mov.l @(PTR_ce3049c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r13
    mov r13,r0
    nop
    mov.l @(PTR_ce304a0,pc),r3
    mov 0x15,r5
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x04,r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30490,pc),r0
    mov.b r3,@(r0,r14)
    add 0x16,r0
    mov.b r13,@(r0,r14)
    mov 0x01,r0

LAB_ce3038a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30392:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce304a4,pc),r5
    mov.w @(DAT_ce30492,pc),r6
    mov.l @(PTR_ce304a8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303ae
    bra LAB_ce303dc
    mov 0x00,r0

LAB_ce303ae:
    mov.w @(DAT_ce30492,pc),r5
    mov.l @(PTR_ce3049c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r13
    mov r13,r0
    nop
    mov.l @(PTR_ce304a0,pc),r3
    mov 0x15,r5
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x08,r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30490,pc),r0
    mov.b r3,@(r0,r14)
    add 0x16,r0
    mov.b r13,@(r0,r14)
    mov 0x01,r0

LAB_ce303dc:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303e4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce304ac,pc),r5
    mov.w @(DAT_ce30494,pc),r6
    mov.l @(PTR_ce304a8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30416
    mov.w @(DAT_ce30496,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30420
    mov.w @(DAT_ce30498,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30420
    mov.w @(DAT_ce3049a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3041a

LAB_ce30416:
    bra LAB_ce3044e
    mov 0x00,r0

LAB_ce3041a:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30420:
    mov.w @(DAT_ce30494,pc),r5
    mov.l @(PTR_ce3049c,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r13
    mov r13,r0
    nop
    mov.l @(PTR_ce304a0,pc),r3
    mov 0x15,r5
    mov.b r0,@(0x5,r14)
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x07,r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30490,pc),r0
    mov.b r3,@(r0,r14)
    add 0x16,r0
    mov.b r13,@(r0,r14)
    mov 0x01,r0

LAB_ce3044e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30456:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304b0,pc),r3
    jsr @r3
    mov 0x06,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30470
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30470:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30490,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304a0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3048e:
    #data 0x0384
DAT_ce30490:
    #data 0x01e9
DAT_ce30492:
    #data 0x0394
DAT_ce30494:
    #data 0x038c
DAT_ce30496:
    #data 0x01f9
DAT_ce30498:
    #data 0x01fc
DAT_ce3049a:
    #data 0x01d4
    #align4

PTR_ce3049c:
    #data loc_8c055c3a
PTR_ce304a0:
    #data loc_8c0530d8
PTR_ce304a4:
    #data DAT_ce3234c
PTR_ce304a8:
    #data loc_8c054e58
PTR_ce304ac:
    #data DAT_ce32360
PTR_ce304b0:
    #data loc_8c054da0

;=============================================

LAB_ce304b4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305b8,pc),r5
    mov.w @(DAT_ce305a2,pc),r6
    mov.l @(PTR_ce305bc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304dc
    mov.w @(DAT_ce305a4,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce304dc
    mov.w @(DAT_ce305a6,pc),r0
    mov 0x02,r2
    bra LAB_ce304fe
    mov.b r2,@(r0,r14)

LAB_ce304dc:
    mov.w @(DAT_ce305a8,pc),r6
    mov.l @(PTR_ce305c0,pc),r5
    mov.l @(PTR_ce305bc,pc),r2
    add r14,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30506
    mov.w @(DAT_ce305a4,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce30506
    mov.w @(DAT_ce305a6,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)

LAB_ce304fe:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce30506:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3050e:
    mov.w @(DAT_ce305aa,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3053a
    mov.w @(DAT_ce305ac,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce305ae,pc),r0
    mov.w @(r0,r4),r3
    add 0xFF,r3
    mov.w r3,@(r0,r4)
    exts.w r3,r3
    cmp/pz r3
    bt LAB_ce3053a
    mov.w @(DAT_ce305aa,pc),r0
    mov 0x00,r3
    mov 0x80,r2
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce305ac,pc),r0
    mov.b r3,@(r0,r4)
    add 0xB0,r0
    mov.b r2,@(r0,r4)

LAB_ce3053a:
    mov.w @(DAT_ce305b0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30578
    mov.b @(0x5,r4),r0
    tst r0,r0
    bf LAB_ce30578
    mov.w @(DAT_ce305b2,pc),r0
    mov.w @(r0,r4),r2
    add 0xFF,r2
    mov.w r2,@(r0,r4)
    exts.w r2,r2
    tst r2,r2
    bf LAB_ce30578
    mov.w @(DAT_ce305b4,pc),r0
    mov.b @(r0,r4),r5
    extu.b r5,r0
    cmp/eq 0x15,r0
    bt/s LAB_ce3056a
    mov r0,r5
    mov r5,r0
    nop
    cmp/eq 0x1D,r0
    bf LAB_ce30572

LAB_ce3056a:
    mov.w @(DAT_ce305b2,pc),r0
    mov 0x01,r3
    bra LAB_ce30578
    mov.w r3,@(r0,r4)

LAB_ce30572:
    mov.l @(PTR_ce305c4,pc),r3
    jmp @r3
    nop

LAB_ce30578:
    rts
    nop

LAB_ce3057c:
    extu.w r5,r0
    cmp/eq 0x02,r0
    bf LAB_ce305ea
    mova @(DAT_ce305c8,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce305b0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce305cc
    fldi0 fr5
    mov 0x60,r0
    fmov fr5,@(r0,r4)
    mov 0x68,r0
    fmov fr5,@(r0,r4)
    mov 0x5C,r0
    fmov fr5,@(r0,r4)
    mov 0x6C,r0
    bra LAB_ce305ea
    fmov fr4,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305a2:
    #data 0x0364
DAT_ce305a4:
    #data 0x040c
DAT_ce305a6:
    #data 0x0258
DAT_ce305a8:
    #data 0x036c
DAT_ce305aa:
    #data 0x02b1
DAT_ce305ac:
    #data 0x01ed
DAT_ce305ae:
    #data 0x02a8
DAT_ce305b0:
    #data 0x0201
DAT_ce305b2:
    #data 0x02aa
DAT_ce305b4:
    #data 0x01d0
    #align4

PTR_ce305b8:
    #data DAT_ce3231c
PTR_ce305bc:
    #data loc_8c054e58
PTR_ce305c0:
    #data DAT_ce3232c
PTR_ce305c4:
    #data LAB_ce317da
DAT_ce305c8:
    #data 0xbf4db6db

;=============================================

LAB_ce305cc:
    mov 0x60,r0
    fldi0 fr2
    fmov.s @(r0,r4),fr3
    fcmp/eq fr2,fr3
    bf LAB_ce305e4
    fmov fr5,@(r0,r4)
    mov 0x68,r0
    fmov fr5,@(r0,r4)
    mov 0x5C,r0
    fmov fr5,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)

LAB_ce305e4:
    mov.l @(PTR_ce306fc,pc),r3
    jmp @r3
    nop

LAB_ce305ea:
    mov.l @(PTR_ce30700,pc),r3
    jmp @r3
    nop

LAB_ce305f0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30704,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce306ee,pc),r0
    mov.b @(r0,r14),r2
    add 0xEA,r0
    mov.b @(r0,r14),r1
    extu.b r2,r2
    mov.w @(DAT_ce306f0,pc),r0
    mov r2,r3
    shll r2
    extu.b r1,r1
    add r3,r2
    mov.l @(PTR_ce30708,pc),r3
    shll2 r1
    shll2 r2
    add r1,r2
    add r3,r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce306f2,pc),r0
    mov.b @(r0,r14),r1
    add 0xBF,r0
    mov.b r1,@(r0,r14)
    add 0x52,r0
    mov.b @(r0,r14),r13
    add 0x05,r0
    mov.b @(r0,r14),r1
    mov r13,r2
    shll r13
    shll2 r2
    add r2,r13
    mov r1,r2
    shll r1
    add r2,r1
    add r1,r13
    add 0xEA,r0
    mov.b @(r0,r14),r2
    add 0xB9,r0
    mov 0x00,r4
    add r2,r13
    mov.l @(PTR_ce3070c,pc),r2
    mov.b r13,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r2,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r3
    add 0x01,r3
    mov.w r3,@(r0,r1)
    mov.w @(DAT_ce306f2,pc),r0
    mov.b @(r0,r14),r6
    add 0x11,r0
    mov.b @(r0,r14),r5
    add 0x05,r0
    mov.b @(r0,r14),r3
    extu.b r5,r5
    shll r5
    add r3,r5
    mov.l @(PTR_ce30710,pc),r3
    add 0x07,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30714,pc),r0
    extu.b r13,r13
    mov.b @(r0,r13),r5
    extu.b r5,r3
    tst r3,r3
    bt LAB_ce30698
    lds.l @r15+,PR
    mov.l @(PTR_ce30718,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30698:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce306a0:
    mov.w @(DAT_ce306f4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce306f6,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov.l @(PTR_ce3070c,pc),r5
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce3071c
    mov 0x00,r4
    mov.w @(DAT_ce306f2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3071c
    mov.w @(DAT_ce306ee,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce3071c
    mov.w @(DAT_ce306f8,pc),r0
    mov 0x12,r1
    mov 0x03,r6
    mov.b r1,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r5,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    bra LAB_ce30758
    mov 0x0C,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306ee:
    #data 0x01fe
DAT_ce306f0:
    #data 0x03f4
DAT_ce306f2:
    #data 0x01e8
DAT_ce306f4:
    #data 0x01fa
DAT_ce306f6:
    #data 0x1000
DAT_ce306f8:
    #data 0x01a1
    #align4

PTR_ce306fc:
    #data loc_8c05176e
PTR_ce30700:
    #data loc_8c051648
PTR_ce30704:
    #data loc_8c052b4c
PTR_ce30708:
    #data DAT_ce322c4
PTR_ce3070c:
    #data loc_8c2896b0
PTR_ce30710:
    #data loc_8c034e8c
PTR_ce30714:
    #data DAT_ce32440
PTR_ce30718:
    #data loc_8c04223a

;=============================================

LAB_ce3071c:
    mov.w @(DAT_ce3080a,pc),r0
    mov.b @(r0,r14),r3
    add 0xEA,r0
    mov.b @(r0,r14),r1
    add 0xB9,r0
    mov r3,r2
    shll r3
    add r2,r3
    add r1,r3
    add 0x0C,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r5,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.w @(DAT_ce3080c,pc),r0
    mov.b @(r0,r14),r6
    add 0x16,r0
    mov.b @(r0,r14),r5
    add 0x0B,r5

LAB_ce30758:
    mov.l @(PTR_ce30818,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3080a,pc),r0
    mov.b @(r0,r14),r2
    add 0xEA,r0
    mov.b @(r0,r14),r1
    extu.b r2,r2
    mov.w @(DAT_ce3080e,pc),r0
    mov r2,r3
    shll r2
    extu.b r1,r1
    add r3,r2
    mov.l @(PTR_ce3081c,pc),r3
    shll2 r1
    shll2 r2
    add r1,r2
    add r3,r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3080c,pc),r0
    mov.b @(r0,r14),r1
    add 0xBF,r0
    mov.b r1,@(r0,r14)
    add 0x57,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3079a
    mov.w @(DAT_ce3080c,pc),r0
    mov.l @(PTR_ce30820,pc),r2
    mov.b @(r0,r14),r5
    add 0x14,r5
    jsr @r2
    mov r14,r4

LAB_ce3079a:
    mov.w @(DAT_ce3080a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce307b4
    mov.w @(DAT_ce30810,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce307c4
    mov.w @(DAT_ce30810,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    bra LAB_ce307c4
    mov.b r2,@(r0,r14)

LAB_ce307b4:
    mov.w @(DAT_ce30810,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce307c4
    mov.w @(DAT_ce30810,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce307c4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce307ca:
    mov.w @(DAT_ce30812,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce307ee
    mov.w @(DAT_ce3080a,pc),r0
    mov.b @(r0,r4),r1
    tst r1,r1
    bf LAB_ce307e6
    mov.w @(DAT_ce30810,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bt LAB_ce307f2
    bra LAB_ce307ee
    nop

LAB_ce307e6:
    mov.w @(DAT_ce30810,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce307f2

LAB_ce307ee:
    bra LAB_ce306a0
    nop

LAB_ce307f2:
    rts
    nop

LAB_ce307f6:
    mov.w @(DAT_ce30814,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30824,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3080a:
    #data 0x01fe
DAT_ce3080c:
    #data 0x01e8
DAT_ce3080e:
    #data 0x03f4
DAT_ce30810:
    #data 0x01d6
DAT_ce30812:
    #data 0x0201
DAT_ce30814:
    #data 0x01ff
    #align4

PTR_ce30818:
    #data loc_8c034e8c
PTR_ce3081c:
    #data DAT_ce322dc
PTR_ce30820:
    #data loc_8c04223a
PTR_ce30824:
    #data PTR_ce3244c

;=============================================

LAB_ce30828:
    mov.w @(DAT_ce308ea,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3085c
    mov.l @(PTR_ce308f4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30868
    mov.w @(DAT_ce308ec,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30872
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x01,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce308f8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3085c:
    mov.l @(PTR_ce308f4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30872

LAB_ce30868:
    lds.l @r15+,PR
    mov.l @(PTR_ce308fc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30872:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30878:
    mov.w @(DAT_ce308ea,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce308f4,pc),r12
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30892
    bra LAB_ce309b2
    nop

LAB_ce30892:
    mov.w @(DAT_ce308ee,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf/s LAB_ce30970
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30908
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308ec,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce308b4
    bra LAB_ce309ca
    nop

LAB_ce308b4:
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x04,r0
    mov.w r0,@(0x1e,r14)
    mova @(DAT_ce30900,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30904,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce308f0,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce309ca
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    bra LAB_ce309ca
    fmov fr3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308ea:
    #data 0x01e8
DAT_ce308ec:
    #data 0x0141
DAT_ce308ee:
    #data 0x01f9
DAT_ce308f0:
    #data 0x0130
    #align4

PTR_ce308f4:
    #data loc_8c034dee
PTR_ce308f8:
    #data loc_8c09cfd0
PTR_ce308fc:
    #data loc_8c051648
DAT_ce30900:
    #data 0x41055555
DAT_ce30904:
    #data 0xbe555555

;=============================================

LAB_ce30908:
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce309b2
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce30928
    mov.l @(PTR_ce309fc,pc),r3
    mov 0x06,r0
    mov 0x00,r5
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4

LAB_ce30928:
    jsr @r12
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt LAB_ce309ca
    mov.b @(0x6,r14),r0
    mov 0x03,r6
    mov.l @(PTR_ce30a00,pc),r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0A,r5
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30970:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce309bc
    mov.w @(DAT_ce309f4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce309ca
    mov.l @(PTR_ce30a04,pc),r3
    mov 0x16,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce309f6,pc),r0
    mov 0x19,r2
    mov.l @(PTR_ce30a08,pc),r3
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
    bra LAB_ce309ca
    mov.w r1,@(r0,r2)

LAB_ce309b2:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce309ca

LAB_ce309bc:
    lds.l @r15+,PR
    mov.l @(PTR_ce30a0c,pc),r3
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce309ca:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce309d4:
    mov.w @(DAT_ce309f8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce30a10
    cmp/eq 0x00,r0
    bt LAB_ce30a16
    cmp/eq 0x02,r0
    bt LAB_ce30a6c
    cmp/eq 0x01,r0
    bt LAB_ce30a80
    bra LAB_ce30ab4
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309f4:
    #data 0x0141
DAT_ce309f6:
    #data 0x01a1
DAT_ce309f8:
    #data 0x01ff
    #align4

PTR_ce309fc:
    #data loc_8c0e4adc
PTR_ce30a00:
    #data loc_8c034e8c
PTR_ce30a04:
    #data loc_8c04223a
PTR_ce30a08:
    #data loc_8c2896b0
PTR_ce30a0c:
    #data loc_8c051648

;=============================================

LAB_ce30a10:
    mov.l @(PTR_ce30ac0,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30a16:
    mov 0x5C,r1
    mov.l @(PTR_ce30ac4,pc),r3
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
    mov.w @(DAT_ce30aba,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a64
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30828
    mov.l @r15+,r14

LAB_ce30a64:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30878
    mov.l @r15+,r14

LAB_ce30a6c:
    mov.w @(DAT_ce30abc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a80
    mov.l @(PTR_ce30ac8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30acc,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30a80:
    mov.l @(PTR_ce30ad0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30ad4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30ad8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30a9e
    mov.l @(PTR_ce30adc,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30a9e:
    mov.l @(PTR_ce30ae0,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30ab4
    lds.l @r15+,PR
    mov.l @(PTR_ce30ae4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30ab4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30aba:
    #data 0x01fe
DAT_ce30abc:
    #data 0x0201
    #align4

PTR_ce30ac0:
    #data loc_8c0511e2
PTR_ce30ac4:
    #data loc_8c052c84
PTR_ce30ac8:
    #data loc_8c050084
PTR_ce30acc:
    #data loc_8c04ff88
PTR_ce30ad0:
    #data loc_8c04fea8
PTR_ce30ad4:
    #data loc_8c050048
PTR_ce30ad8:
    #data loc_8c034dee
PTR_ce30adc:
    #data loc_8c05176e
PTR_ce30ae0:
    #data loc_8c052ce2
PTR_ce30ae4:
    #data loc_8c052dac

;=============================================

LAB_ce30ae8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30b44
    mov.l @(PTR_ce30c18,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x41,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x05,r5
    mov.w @(DAT_ce30c0e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30c1c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce30c10,pc),r0
    mov.l @(PTR_ce30c20,pc),r2
    mov.b r4,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30c24,pc),r3
    mov 0x14,r5
    mov 0x07,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30c28,pc),r2
    mov 0x16,r5
    jsr @r2
    mov r14,r4

LAB_ce30b44:
    mov.w @(DAT_ce30c12,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30b54
    mov.l @(PTR_ce30c2c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30b54:
    mov 0x5C,r1
    mov.l @(PTR_ce30c30,pc),r3
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
    mov.l @(PTR_ce30c34,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ba8
    lds.l @r15+,PR
    mov.l @(PTR_ce30c38,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30ba8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30bae:
    mov r4,r3
    mov.l @(PTR_ce30c3c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30bc0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30c34,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30c14,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30c08
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
    mov.w @(DAT_ce30c16,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30bf8
    mova @(DAT_ce30c40,pc),r0
    bra LAB_ce30bfc
    fmov.s @r0,fr3

LAB_ce30bf8:
    mova @(DAT_ce30c44,pc),r0
    fmov.s @r0,fr3

LAB_ce30bfc:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    mov.w r0,@(0x1e,r14)
    mov 0x18,r0
    mov.w r0,@(0x1c,r14)

LAB_ce30c08:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c0e:
    #data 0x01a1
DAT_ce30c10:
    #data 0x01f9
DAT_ce30c12:
    #data 0x01ff
DAT_ce30c14:
    #data 0x0141
DAT_ce30c16:
    #data 0x01d2
    #align4

PTR_ce30c18:
    #data loc_8c052b4c
PTR_ce30c1c:
    #data loc_8c2896b0
PTR_ce30c20:
    #data loc_8c056de4
PTR_ce30c24:
    #data loc_8c034e8c
PTR_ce30c28:
    #data loc_8c04223a
PTR_ce30c2c:
    #data loc_8c0511e2
PTR_ce30c30:
    #data loc_8c052c84
PTR_ce30c34:
    #data loc_8c034dee
PTR_ce30c38:
    #data loc_8c051648
PTR_ce30c3c:
    #data PTR_ce3245c
DAT_ce30c40:
    #data 0x41a00000
DAT_ce30c44:
    #data 0xc1a00000

;=============================================

LAB_ce30c48:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce30c66
    mov.l @(PTR_ce30d50,pc),r3
    mov 0x04,r0
    mov 0x00,r5
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4

LAB_ce30c66:
    mov 0x5C,r1
    mov.l @(PTR_ce30d54,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce30cc4
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    mov.l @(PTR_ce30d58,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30cc4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30cca:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d54,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ce4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d5c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30ce4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30cec:
    mov r4,r3
    mov.l @(PTR_ce30d60,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30cfe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d54,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30d4c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30d46
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
    mov.w @(DAT_ce30d4e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30d36
    mova @(DAT_ce30d64,pc),r0
    bra LAB_ce30d3a
    fmov.s @r0,fr3

LAB_ce30d36:
    mova @(DAT_ce30d68,pc),r0
    fmov.s @r0,fr3

LAB_ce30d3a:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    mov.w r0,@(0x1e,r14)
    mov 0x18,r0
    mov.w r0,@(0x1c,r14)

LAB_ce30d46:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d4c:
    #data 0x0141
DAT_ce30d4e:
    #data 0x01d2
    #align4

PTR_ce30d50:
    #data loc_8c0e4adc
PTR_ce30d54:
    #data loc_8c034dee
PTR_ce30d58:
    #data loc_8c034e8c
PTR_ce30d5c:
    #data loc_8c051648
PTR_ce30d60:
    #data PTR_ce32468
DAT_ce30d64:
    #data 0xc1ad5555
DAT_ce30d68:
    #data 0x41ad5555

;=============================================

LAB_ce30d6c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce30d8a
    mov.l @(PTR_ce30e78,pc),r3
    mov 0x04,r0
    mov 0x01,r5
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4

LAB_ce30d8a:
    mov 0x5C,r1
    mov.l @(PTR_ce30e7c,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce30de8
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce30e80,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30de8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30dee:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30e7c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e08
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30e84,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30e08:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30e10:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30e32
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x00,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30e76,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30e80,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30e32:
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30e56
    mov.l @(PTR_ce30e88,pc),r3
    mov 0x02,r1
    mov.b @r3,r2
    extu.b r2,r2
    cmp/ge r1,r2
    bf LAB_ce30e56
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    mov.l @(PTR_ce30e80,pc),r2
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r2
    mov r14,r4

LAB_ce30e56:
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30e70
    mov.l @(PTR_ce30e7c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e70
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)

LAB_ce30e70:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e76:
    #data 0x012c
    #align4

PTR_ce30e78:
    #data loc_8c0e4adc
PTR_ce30e7c:
    #data loc_8c034dee
PTR_ce30e80:
    #data loc_8c034e8c
PTR_ce30e84:
    #data loc_8c051648
PTR_ce30e88:
    #data loc_8c2895f0

;=============================================

LAB_ce30e8c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30ee0
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30f94,pc),r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30ec0
    cmp/eq 0x01,r0
    bt LAB_ce30ed4
    cmp/eq 0x03,r0
    bt LAB_ce30ed4
    cmp/eq 0x04,r0
    bt LAB_ce30ed4
    cmp/eq 0x02,r0
    bt LAB_ce30ed8
    bra LAB_ce30ee0
    nop

LAB_ce30ec0:
    mov.l @(PTR_ce30f98,pc),r3
    jsr @r3
    nop
    tst 0x01,r0
    mov 0x13,r5
    movt r6
    jsr @r13
    mov r14,r4
    bra LAB_ce30ee0
    nop

LAB_ce30ed4:
    bra LAB_ce30eda
    mov 0x03,r6

LAB_ce30ed8:
    mov 0x02,r6

LAB_ce30eda:
    mov 0x13,r5
    jsr @r13
    mov r14,r4

LAB_ce30ee0:
    mov.l @(PTR_ce30f9c,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce30ef6
    lds.l @r15+,PR
    mov.l @(PTR_ce30fa0,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30ef6:
    lds.l @r15+,PR
    mov.l @(PTR_ce30fa4,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f02:
    mov.w @(DAT_ce30f8c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30fa8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30f16:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3101e
    mov.l @(PTR_ce30fac,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30fb0,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30f8e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce30f4c
    mov 0x00,r13
    mov.l @(PTR_ce30fb4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30f8e,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce30f4c:
    mov.l @(PTR_ce30fb8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30f90,pc),r0
    mov.l @(PTR_ce30fbc,pc),r3
    mov.b @(r0,r14),r2
    add 0xFE,r0
    extu.b r2,r2
    shll r2
    add 0x30,r2
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
    mov.w @(DAT_ce30f90,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce30fc0
    mov 0x15,r5
    bra LAB_ce30fc2
    mov 0x00,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f8c:
    #data 0x01e9
DAT_ce30f8e:
    #data 0x01f9
DAT_ce30f90:
    #data 0x01a3
    #align4

PTR_ce30f94:
    #data loc_8c034e8c
PTR_ce30f98:
    #data loc_8c03319e
PTR_ce30f9c:
    #data loc_8c046c8a
PTR_ce30fa0:
    #data loc_8c051648
PTR_ce30fa4:
    #data loc_8c034dee
PTR_ce30fa8:
    #data PTR_ce32474
PTR_ce30fac:
    #data loc_8c056de4
PTR_ce30fb0:
    #data loc_8c035162
PTR_ce30fb4:
    #data loc_8c05115a
PTR_ce30fb8:
    #data loc_8c05218a
PTR_ce30fbc:
    #data loc_8c2896b0

;=============================================

LAB_ce30fc0:
    mov 0x10,r6

LAB_ce30fc2:
    mov.l @(PTR_ce310b4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce310b8,pc),r3
    mov 0x02,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce310bc,pc),r12
    mov 0x05,r5
    mov 0x00,r6
    jsr @r12
    mov r14,r4
    mov 0x05,r5
    mov 0x01,r6
    jsr @r12
    mov r14,r4
    mov 0x05,r5
    mov 0x02,r6
    jsr @r12
    mov r14,r4
    mova @(DAT_ce310c0,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x10,r3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fdiv fr4,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr2
    fdiv fr4,fr2
    fmov fr2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce310ae,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)

LAB_ce3101e:
    mov.w @(DAT_ce310b0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3106e
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce310b2,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31074
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
    bra LAB_ce31074
    fmov fr2,@(r0,r14)

LAB_ce3106e:
    mov.l @(PTR_ce310c4,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31074:
    mov.l @(PTR_ce310c8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31092
    lds.l @r15+,PR
    mov.w @(DAT_ce310b0,pc),r0
    mov r14,r4
    mov.l @r15+,r12
    mov.b @(r0,r14),r5
    mov.l @r15+,r13
    extu.b r5,r5
    bra LAB_ce3057c
    mov.l @r15+,r14

LAB_ce31092:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3109c:
    mov r4,r3
    mov.l @(PTR_ce310cc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310ae:
    #data 0x027b
DAT_ce310b0:
    #data 0x01f9
DAT_ce310b2:
    #data 0x041c
    #align4

PTR_ce310b4:
    #data loc_8c034e8c
PTR_ce310b8:
    #data loc_8c09cfd0
PTR_ce310bc:
    #data loc_8c0e4b22
DAT_ce310c0:
    #data 0x41000000
PTR_ce310c4:
    #data loc_8c052c84
PTR_ce310c8:
    #data loc_8c034dee
PTR_ce310cc:
    #data PTR_ce324ac

;=============================================

LAB_ce310d0:
    mov.w @(DAT_ce311fe,pc),r0
    mov 0x33,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31208,pc),r3
    mov 0x10,r5
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3120c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31210,pc),r3
    mov r13,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31200,pc),r4
    add r14,r4
    mov r13,r0
    nop
    mov.l @(PTR_ce31214,pc),r3
    mov 0x15,r5
    mov 0x01,r6
    mov.b r0,@(0xe,r4)
    mov.b r0,@(0x8,r4)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31202,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31158
    mova @(DAT_ce31218,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fdiv fr4,fr2
    fldi1 fr4
    fadd fr4,fr4
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr2
    fdiv fr4,fr2
    bra LAB_ce31162
    fmov fr2,@(r0,r14)

LAB_ce31158:
    mov.l @(PTR_ce3121c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31202,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce31162:
    mov.l @(PTR_ce31220,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31176:
    mov.w @(DAT_ce31202,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce311ca
    mov.l @(PTR_ce31224,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce31228,pc),r3
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

LAB_ce311ca:
    mov.l @(PTR_ce3122c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31204,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311f8
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31230,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x3C,r0
    mov.w r0,@(0x1e,r14)
    mov 0x00,r3
    mov.b @(0x6,r14),r0
    mov 0x10,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31206,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)

LAB_ce311f8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311fe:
    #data 0x01a1
DAT_ce31200:
    #data 0x02a4
DAT_ce31202:
    #data 0x01f9
DAT_ce31204:
    #data 0x0141
DAT_ce31206:
    #data 0x027b
    #align4

PTR_ce31208:
    #data loc_8c2896b0
PTR_ce3120c:
    #data loc_8c056de4
PTR_ce31210:
    #data loc_8c035162
PTR_ce31214:
    #data loc_8c034e8c
DAT_ce31218:
    #data 0x41000000
PTR_ce3121c:
    #data loc_8c05115a
PTR_ce31220:
    #data loc_8c05218a
PTR_ce31224:
    #data loc_8c052c84
PTR_ce31228:
    #data loc_8c052ce2
PTR_ce3122c:
    #data loc_8c034dee
PTR_ce31230:
    #data loc_8c09e0c0

;=============================================

LAB_ce31234:
    mov.w @(DAT_ce31366,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31288
    mov.l @(PTR_ce31378,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce3137c,pc),r3
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

LAB_ce31288:
    mov.l @(PTR_ce31380,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31368,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce312a2
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce312b0

LAB_ce312a2:
    mov.w @(DAT_ce31366,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r5
    extu.b r5,r5
    bra LAB_ce3057c
    mov.l @r15+,r14

LAB_ce312b0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312b6:
    mov r4,r3
    mov.l @(PTR_ce31384,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce312c8:
    mov.w @(DAT_ce3136a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce312e6
    mov.w @(DAT_ce3136e,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3136c,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce312e6:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31388,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31366,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce31308
    mov 0x00,r13
    mov.l @(PTR_ce3138c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31366,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce31308:
    mov.l @(PTR_ce31390,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31370,pc),r0
    mov 0x35,r2
    mov.l @(PTR_ce31394,pc),r3
    mov 0x10,r6
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x16,r5
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
    mov.l @(PTR_ce31398,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31344:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31372,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31374,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3136a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3139c
    bra LAB_ce3139e
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31366:
    #data 0x01f9
DAT_ce31368:
    #data 0x02ac
DAT_ce3136a:
    #data 0x0255
DAT_ce3136c:
    #data 0x00ff
DAT_ce3136e:
    #data 0x03f0
DAT_ce31370:
    #data 0x01a1
DAT_ce31372:
    #data 0x03f8
DAT_ce31374:
    #data 0x0328
    #align4

PTR_ce31378:
    #data loc_8c052c84
PTR_ce3137c:
    #data loc_8c052ce2
PTR_ce31380:
    #data loc_8c034dee
PTR_ce31384:
    #data PTR_ce324b8
PTR_ce31388:
    #data loc_8c05218a
PTR_ce3138c:
    #data loc_8c05115a
PTR_ce31390:
    #data loc_8c035162
PTR_ce31394:
    #data loc_8c2896b0
PTR_ce31398:
    #data loc_8c034e8c

;=============================================

LAB_ce3139c:
    mov 0x00,r3

LAB_ce3139e:
    mov.w @(DAT_ce314b6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce314c8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313d2
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce314cc,pc),r3
    mov 0x11,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    mov.w r0,@(0x1e,r14)
    mov 0x02,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce314d0,pc),r2
    mov 0x18,r5
    jsr @r2
    mov r14,r4
    bra LAB_ce31406
    nop

LAB_ce313d2:
    mov.w @(DAT_ce314b8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31406
    mov.w @(DAT_ce314ba,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce314dc,pc),r3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.w @(DAT_ce314b8,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce314d4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce314d8,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31406:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3140e:
    mov.w @(DAT_ce314bc,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce314be,pc),r0
    mov.l @(PTR_ce314c8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31458
    mov.w @(DAT_ce314c0,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce314cc,pc),r3
    mov 0x12,r6
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce314c2,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31458:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3147a
    mov.l @(PTR_ce314e0,pc),r3
    mov 0x02,r0
    jsr @r3
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce314e4,pc),r3
    tst 0x7F,r0
    movt r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3147a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31480:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314c8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3149e
    mov.w @(DAT_ce314c4,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r5
    extu.b r5,r5
    bra LAB_ce3057c
    mov.l @r15+,r14

LAB_ce3149e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce314a4:
    mov r4,r3
    mov.l @(PTR_ce314e8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314b6:
    #data 0x03f1
DAT_ce314b8:
    #data 0x0141
DAT_ce314ba:
    #data 0x03f0
DAT_ce314bc:
    #data 0x03f8
DAT_ce314be:
    #data 0x0328
DAT_ce314c0:
    #data 0x03f9
DAT_ce314c2:
    #data 0x0327
DAT_ce314c4:
    #data 0x01f9
    #align4

PTR_ce314c8:
    #data loc_8c034dee
PTR_ce314cc:
    #data loc_8c034e8c
PTR_ce314d0:
    #data loc_8c042008
DAT_ce314d4:
    #data 0xc0a00000
DAT_ce314d8:
    #data 0x437cdb6d
PTR_ce314dc:
    #data loc_8c050834
PTR_ce314e0:
    #data loc_8c03319e
PTR_ce314e4:
    #data loc_8c09d564
PTR_ce314e8:
    #data PTR_ce324c8

;=============================================

LAB_ce314ec:
    mov.w @(DAT_ce31604,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce3150c
    mov r14,r4
    mov.w @(DAT_ce31608,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31606,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3150c:
    mov.l @(PTR_ce31618,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce3161c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31620,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3160a,pc),r0
    mov 0x34,r2
    mov 0x00,r13
    mov.l @(PTR_ce31624,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x16,r5
    mov.b @(0x2,r14),r0
    mov r13,r6
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3160c,pc),r0
    mov.l @(PTR_ce31628,pc),r2
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3160e,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce3156a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31610,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31612,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31604,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3158e
    bra LAB_ce31590
    mov 0x02,r3

LAB_ce3158e:
    mov 0x00,r3

LAB_ce31590:
    mov.w @(DAT_ce31614,pc),r0
    mov 0x00,r13
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3162c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce315c8
    mov 0x18,r0
    mov.w r0,@(0x1c,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce31628,pc),r3
    mov 0x16,r5
    mov.w r0,@(0x1e,r14)
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31630,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce315fa
    nop

LAB_ce315c8:
    mov.w @(DAT_ce31616,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce315fa
    mov.w @(DAT_ce31608,pc),r0
    mov r15,r5
    mov.l @(PTR_ce3163c,pc),r3
    mov 0x01,r6
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31616,pc),r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce31634,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31638,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce315fa:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31604:
    #data 0x0255
DAT_ce31606:
    #data 0x00ff
DAT_ce31608:
    #data 0x03f0
DAT_ce3160a:
    #data 0x01a1
DAT_ce3160c:
    #data 0x041c
DAT_ce3160e:
    #data 0x01f9
DAT_ce31610:
    #data 0x03f8
DAT_ce31612:
    #data 0x0328
DAT_ce31614:
    #data 0x03f1
DAT_ce31616:
    #data 0x0141
    #align4

PTR_ce31618:
    #data loc_8c05115a
PTR_ce3161c:
    #data loc_8c05218a
PTR_ce31620:
    #data loc_8c035162
PTR_ce31624:
    #data loc_8c2896b0
PTR_ce31628:
    #data loc_8c034e8c
PTR_ce3162c:
    #data loc_8c034dee
PTR_ce31630:
    #data loc_8c09d89c
DAT_ce31634:
    #data 0xc226aaaa
DAT_ce31638:
    #data 0x43586db6
PTR_ce3163c:
    #data loc_8c050834

;=============================================

LAB_ce31640:
    mov.w @(DAT_ce31750,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31752,pc),r0
    mov.l @(PTR_ce31760,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31678
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31764,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31678:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3167e:
    mov.w @(DAT_ce31750,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31752,pc),r0
    mov.l @(PTR_ce31760,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce316c0
    mov.w @(DAT_ce31754,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31768,pc),r3
    mov r4,r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31756,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3176c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce316c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce316c6:
    mov r4,r3
    mov.l @(PTR_ce31770,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce316d8:
    mov.w @(DAT_ce31758,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce316ee
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce317da
    mov.l @r15+,r14

LAB_ce316ee:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3175a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31704
    mov.l @(PTR_ce31774,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31704:
    mov.w @(DAT_ce31758,pc),r0
    mov 0x02,r2
    mov.w @(DAT_ce3175c,pc),r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    add 0xF8,r0
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31778,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.w @(DAT_ce3175e,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3177c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov r3,r0
    nop
    add 0x52,r0
    mov.w r3,@(r0,r14)
    mov 0x10,r0
    mov.l @(PTR_ce31764,pc),r3
    mov 0x1A,r5
    mov.w r0,@(0x1c,r14)
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31780
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31750:
    #data 0x03f8
DAT_ce31752:
    #data 0x0328
DAT_ce31754:
    #data 0x03f9
DAT_ce31756:
    #data 0x0327
DAT_ce31758:
    #data 0x0201
DAT_ce3175a:
    #data 0x01f9
DAT_ce3175c:
    #data 0x00ff
DAT_ce3175e:
    #data 0x0258
    #align4

PTR_ce31760:
    #data loc_8c034dee
PTR_ce31764:
    #data loc_8c034e8c
PTR_ce31768:
    #data loc_8c035162
PTR_ce3176c:
    #data loc_8c051648
PTR_ce31770:
    #data PTR_ce324d8
PTR_ce31774:
    #data loc_8c05115a
DAT_ce31778:
    #data 0x414db6db
DAT_ce3177c:
    #data 0xbe892492

;=============================================

LAB_ce31780:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31898,pc),r3
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
    bt LAB_ce317d4
    lds.l @r15+,PR
    mov.l @(PTR_ce3189c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce317d4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce317da:
    mov.w @(DAT_ce31890,pc),r0
    mov 0x00,r3
    fldi0 fr3
    mov.b r3,@(r0,r4)
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce318a0,pc),r0
    mov.l @(PTR_ce318a4,pc),r3
    fmov.s @r0,fr3
    mov 0x6C,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce317fa:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce3187c
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov 0x02,r5
    mov.l @(PTR_ce318a8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce318ac,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce318b0,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31892,pc),r0
    mov 0x36,r2
    mov.l @(PTR_ce318b4,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x12,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce318b8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31894,pc),r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce318bc,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fdiv fr4,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr2
    fdiv fr4,fr2
    fmov fr2,@(r0,r14)

LAB_ce3187c:
    mov.w @(DAT_ce31896,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce318c4
    mov.l @(PTR_ce318c0,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce31908
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31890:
    #data 0x0201
DAT_ce31892:
    #data 0x01a1
DAT_ce31894:
    #data 0x01d6
DAT_ce31896:
    #data 0x01f9
    #align4

PTR_ce31898:
    #data loc_8c034dee
PTR_ce3189c:
    #data loc_8c051648
DAT_ce318a0:
    #data 0xbf4db6db
PTR_ce318a4:
    #data loc_8c05176e
PTR_ce318a8:
    #data loc_8c056de4
PTR_ce318ac:
    #data loc_8c05218a
PTR_ce318b0:
    #data loc_8c035162
PTR_ce318b4:
    #data loc_8c2896b0
PTR_ce318b8:
    #data loc_8c034e8c
DAT_ce318bc:
    #data 0x41000000
PTR_ce318c0:
    #data loc_8c052c84

;=============================================

LAB_ce318c4:
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce319da,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31908
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

LAB_ce31908:
    mov.l @(PTR_ce319e4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31922
    lds.l @r15+,PR
    mov.l @(PTR_ce319e8,pc),r3
    mov r14,r4
    mov 0x02,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31922:
    mov.w @(DAT_ce319dc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3194a
    mov.b r13,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce319de,pc),r0
    mov 0x00,r5
    mov r14,r4
    mov.b r3,@(r0,r14)
    add 0xCB,r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov 0x10,r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce319ec,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3194a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31952:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce319f0,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    mov.w @(DAT_ce319e0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31998
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce319f4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce319e0,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce31998:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3199e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce319f8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce319fc,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31a00,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce319e2,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce31a04,pc),r3
    mov 0x05,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31a08,pc),r2
    mov r14,r4
    mov 0x13,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319da:
    #data 0x041c
DAT_ce319dc:
    #data 0x0141
DAT_ce319de:
    #data 0x02b0
DAT_ce319e0:
    #data 0x014b
DAT_ce319e2:
    #data 0x01f9
    #align4

PTR_ce319e4:
    #data loc_8c034dee
PTR_ce319e8:
    #data LAB_ce3057c
PTR_ce319ec:
    #data loc_8c09cfd0
PTR_ce319f0:
    #data PTR_ce324e0
PTR_ce319f4:
    #data loc_8c2896b0
PTR_ce319f8:
    #data loc_8c035162
PTR_ce319fc:
    #data loc_8c05218a
PTR_ce31a00:
    #data loc_8c05115a
PTR_ce31a04:
    #data loc_8c056de4
PTR_ce31a08:
    #data loc_8c034e8c

;=============================================

LAB_ce31a0c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b44,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31b36,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31a40
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce31b38,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31b3a,pc),r0
    mov.w r3,@(r0,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31b3c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31a40
    mov.w @(0x1c,r14),r0
    add 0x04,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31a40:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31a46:
    mov.w @(DAT_ce31b3a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(r0,r14),r0
    mov.l @(PTR_ce31b48,pc),r13
    extu.w r0,r0
    tst 0x80,r0
    bt/s LAB_ce31a8a
    mov 0x00,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31a7e
    mov.b @(0x6,r14),r0
    mov 0x15,r6
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31b3a,pc),r0
    mov.w r4,@(r0,r14)
    jsr @r13
    mov r14,r4
    bra LAB_ce31ad4
    nop

LAB_ce31a7e:
    lds.l @r15+,PR
    mov.l @(PTR_ce31b44,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a8a:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31b3a,pc),r0
    mov.w r4,@(r0,r14)
    add 0xF5,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31acc
    mov 0x04,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r3
    mov.w @(DAT_ce31b3e,pc),r0
    mov.b r3,@(r0,r14)
    add 0xC7,r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31aba
    mov 0x0D,r6
    mov.w @(DAT_ce31b40,pc),r0
    mov 0x10,r3
    mov.l @(r0,r14),r2
    add 0xEC,r0
    mov.b r3,@(r0,r2)

LAB_ce31aba:
    mov 0x16,r5
    jsr @r13
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31b4c,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31acc:
    mov 0x15,r5
    mov 0x14,r6
    jsr @r13
    mov r14,r4

LAB_ce31ad4:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31adc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31b44,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31af6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31b50,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31af6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31afe:
    mov.w @(DAT_ce31b3e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31b44,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b30
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31b54,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31b48,pc),r2
    mov r14,r4
    mov 0x0E,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b30:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b36:
    #data 0x0141
DAT_ce31b38:
    #data 0x0080
DAT_ce31b3a:
    #data 0x01ae
DAT_ce31b3c:
    #data 0x01a3
DAT_ce31b3e:
    #data 0x01ed
DAT_ce31b40:
    #data 0x01b4
    #align4

PTR_ce31b44:
    #data loc_8c034dee
PTR_ce31b48:
    #data loc_8c034e8c
PTR_ce31b4c:
    #data loc_8c05115a
PTR_ce31b50:
    #data loc_8c051648
PTR_ce31b54:
    #data loc_8c09d9d0

;=============================================

LAB_ce31b58:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31c80,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b7e
    mov 0x03,r0
    mov.l @(PTR_ce31c84,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x14,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov 0x0F,r6
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b7e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b84:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31bb6
    mov.l @(PTR_ce31c84,pc),r3
    mov 0x13,r5
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    mov 0x3C,r0
    fldi0 fr4
    mov.w r0,@(0x1c,r14)
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

LAB_ce31bb6:
    mov.l @(PTR_ce31c80,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31bd2
    lds.l @r15+,PR
    mov.l @(PTR_ce31c88,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31bd2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31bd8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31c4a
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    fldi0 fr4
    mov 0x40,r3
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
    mov.w @(DAT_ce31c78,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31c7a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31c7c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce31c8c,pc),r3
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.l @r3,r2
    mov.b @(0x2,r14),r0
    add 0x7C,r2
    extu.b r0,r0
    mov r4,r5
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31c90,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31c94,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31c84,pc),r2
    mov r14,r4
    mov 0x17,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c4a:
    mov.l @(PTR_ce31c80,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c60
    lds.l @r15+,PR
    mov.l @(PTR_ce31c88,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c60:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31c66:
    mov r4,r3
    mov.l @(PTR_ce31c98,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c78:
    #data 0x01f9
DAT_ce31c7a:
    #data 0x041c
DAT_ce31c7c:
    #data 0x01a1
    #align4

PTR_ce31c80:
    #data loc_8c034dee
PTR_ce31c84:
    #data loc_8c034e8c
PTR_ce31c88:
    #data loc_8c051648
PTR_ce31c8c:
    #data loc_8c2896b0
PTR_ce31c90:
    #data loc_8c035162
PTR_ce31c94:
    #data loc_8c05218a
PTR_ce31c98:
    #data PTR_ce324f8

;=============================================

LAB_ce31c9c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce31dc4,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31dbe,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31dc8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31dc0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31ccc
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31ccc:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31dcc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x3D,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31dd0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce31dc2,pc),r0
    mov 0x05,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31dd4,pc),r3
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
    mov.l @(PTR_ce31dd8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31d16:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ddc,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31de0,pc),r3
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
    bt LAB_ce31d7e
    mov.l @(PTR_ce31de4,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31dd8,pc),r3
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d7e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d84:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ddc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31da6
    mov.l @(PTR_ce31dc4,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31de8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31da6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31dac:
    mov r4,r3
    mov.l @(PTR_ce31dec,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31dbe:
    #data 0x01f9
DAT_ce31dc0:
    #data 0x01d2
DAT_ce31dc2:
    #data 0x01a1
    #align4

PTR_ce31dc4:
    #data loc_8c035162
DAT_ce31dc8:
    #data 0x41f00000
DAT_ce31dcc:
    #data 0x40892492
DAT_ce31dd0:
    #data 0xbf4db6db
PTR_ce31dd4:
    #data loc_8c2896b0
PTR_ce31dd8:
    #data loc_8c034e8c
PTR_ce31ddc:
    #data loc_8c034dee
PTR_ce31de0:
    #data loc_8c052ce2
PTR_ce31de4:
    #data loc_8c0511b4
PTR_ce31de8:
    #data loc_8c051854
PTR_ce31dec:
    #data PTR_ce32504

;=============================================

LAB_ce31df0:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce31f2c,pc),r3
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
    mov.w @(DAT_ce31f16,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31f18,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f30,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31f34,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f1a,pc),r0
    mov 0x3F,r2
    mov.l @(PTR_ce31f38,pc),r3
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
    mov.l @(PTR_ce31f3c,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e66:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce31f40,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e86
    mov.l @(PTR_ce31f44,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e86:
    mov.w @(DAT_ce31f1c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31ea6
    mov 0x00,r3
    fldi0 fr3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31f48,pc),r0
    fmov.s fr3,@r15
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce31f4c,pc),r3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31ea6:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31eae:
    mov.w @(DAT_ce31f1e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31f0e
    mov.w @(DAT_ce31f16,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce31f0e
    mov.w @(DAT_ce31f20,pc),r0
    mov.w @(DAT_ce31f22,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce31f0e
    mov.w @(DAT_ce31f24,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31f0e
    mov.l @(PTR_ce31f50,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce31f04
    mov r0,r4
    mov.w @(DAT_ce31f26,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31ef6
    mov.w @(DAT_ce31f28,pc),r0
    mov 0x00,r3
    bra LAB_ce31efc
    mov.b r3,@(r0,r14)

LAB_ce31ef6:
    mov.w @(DAT_ce31f28,pc),r0
    mov 0x01,r1
    mov.b r1,@(r0,r14)

LAB_ce31efc:
    mov.w @(DAT_ce31f20,pc),r0
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce31f2a,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce31f04:
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f0e:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f16:
    #data 0x01f9
DAT_ce31f18:
    #data 0x041c
DAT_ce31f1a:
    #data 0x01a1
DAT_ce31f1c:
    #data 0x0141
DAT_ce31f1e:
    #data 0x02b2
DAT_ce31f20:
    #data 0x01fa
DAT_ce31f22:
    #data 0x0c00
DAT_ce31f24:
    #data 0x01a3
DAT_ce31f26:
    #data 0x01fe
DAT_ce31f28:
    #data 0x01f7
DAT_ce31f2a:
    #data 0x02a4
    #align4

PTR_ce31f2c:
    #data loc_8c035162
PTR_ce31f30:
    #data loc_8c05218a
PTR_ce31f34:
    #data loc_8c05115a
PTR_ce31f38:
    #data loc_8c2896b0
PTR_ce31f3c:
    #data loc_8c034e8c
PTR_ce31f40:
    #data loc_8c034dee
PTR_ce31f44:
    #data loc_8c051648
DAT_ce31f48:
    #data 0x432b6db6
PTR_ce31f4c:
    #data loc_8c050ea4
PTR_ce31f50:
    #data loc_8c045790

;=============================================

LAB_ce31f54:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.l @(PTR_ce32010,pc),r3
    mov r4,r14
    mov.l r5,@r15
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32004,pc),r0
    mov 0x05,r6
    mov.l @(PTR_ce32014,pc),r3
    mov 0x0A,r2
    mov r6,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32006,pc),r0
    mov.w @(DAT_ce32008,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce31f96
    mov.w @(DAT_ce3200a,pc),r0
    mov 0x01,r2
    mov.w @(r0,r14),r1
    xor r2,r1
    mov.w r1,@(r0,r14)
    mov.w @(DAT_ce3200c,pc),r0
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)

LAB_ce31f96:
    mov.l @r15,r3
    mov.w @(DAT_ce3200a,pc),r1
    mov.w @(DAT_ce3200c,pc),r0
    mov r3,r2
    add r2,r1
    mov.w @(DAT_ce3200c,pc),r2
    mov.b @(r0,r14),r0
    add r3,r2
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce3200e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31fc4
    mov 0x00,r4
    mov.l @(PTR_ce32018,pc),r3
    mov r4,r13
    jsr @r3
    mov r14,r4
    bra LAB_ce31fd0
    nop

LAB_ce31fc4:
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    mov 0x02,r13
    mov r4,r0
    nop
    mov.b r0,@(0x6,r14)

LAB_ce31fd0:
    mov.l @(PTR_ce3201c,pc),r3
    mov 0x0F,r5
    mov r13,r6
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32020,pc),r0
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce32028,pc),r3
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce32024,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3202c,pc),r2
    jsr @r2
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32004:
    #data 0x01a0
DAT_ce32006:
    #data 0x02a4
DAT_ce32008:
    #data 0x0400
DAT_ce3200a:
    #data 0x0130
DAT_ce3200c:
    #data 0x01d2
DAT_ce3200e:
    #data 0x01f7
    #align4

PTR_ce32010:
    #data loc_8c035162
PTR_ce32014:
    #data loc_8c02fec4
PTR_ce32018:
    #data loc_8c0e4f9c
PTR_ce3201c:
    #data loc_8c034e8c
DAT_ce32020:
    #data 0xc2f00000
DAT_ce32024:
    #data 0x43870000
PTR_ce32028:
    #data loc_8c103660
PTR_ce3202c:
    #data loc_8c056f2a

;=============================================

LAB_ce32030:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32140,pc),r0
    mov 0x01,r3
    mov r4,r14
    mov.l @(PTR_ce32150,pc),r13
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r3
    mov 0x00,r12
    tst r3,r3
    bf/s LAB_ce320ce
    fldi0 fr15
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce32122
    mov.w @(DAT_ce32142,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce32070
    mov.w @(DAT_ce32142,pc),r0
    mov 0x03,r5
    mov.l @(PTR_ce32154,pc),r3
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce32070:
    mov.w @(DAT_ce32142,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bt LAB_ce3207c
    bra LAB_ce321a8
    nop

LAB_ce3207c:
    mov.w @(DAT_ce32142,pc),r0
    mov 0x05,r2
    mov.w @(DAT_ce32148,pc),r1
    mov.b r12,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce32144,pc),r0
    mov.l @(r0,r14),r3
    add 0xEC,r0
    mov.l r14,@(r0,r3)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0x2E,r0
    mov.b r2,@(r0,r3)
    add 0xD2,r0
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce32146,pc),r0
    mov.w @(r0,r14),r2
    mov.l @(PTR_ce32158,pc),r0
    extu.w r2,r2
    and r1,r2
    mov 0xF6,r1
    shad r1,r2
    shll r2
    mov.b @(r0,r2),r2
    mov.w @(DAT_ce3214a,pc),r0
    mov.b r2,@(r0,r3)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3215c,pc),r3
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce320ce:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce32118
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce32110
    mov.b @(0x6,r14),r0
    mov 0xF6,r2
    mov.w @(DAT_ce32148,pc),r3
    mov 0x0F,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32146,pc),r0
    mov.w @(r0,r14),r4
    mov.l @(PTR_ce32160,pc),r0
    extu.w r4,r4
    and r3,r4
    mov.l @(PTR_ce32168,pc),r3
    shad r2,r4
    exts.w r4,r4
    shll r4
    mov.l r4,@r15
    mov.w @(r0,r4),r2
    mov.w @(DAT_ce3214c,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce32164,pc),r0
    mov.l @r15,r1
    mov.w @(r0,r1),r6
    jsr @r3
    mov r14,r4

LAB_ce32110:
    jsr @r13
    mov r14,r4
    bra LAB_ce321a8
    nop

LAB_ce32118:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32170

LAB_ce32122:
    mov.l @(PTR_ce3215c,pc),r2
    jsr @r2
    nop
    mov.w @(DAT_ce3214e,pc),r0
    mov r14,r4
    mov.b @(r0,r14),r5
    extu.b r5,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3216c,pc),r3
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32140:
    #data 0x01ea
DAT_ce32142:
    #data 0x0141
DAT_ce32144:
    #data 0x01c8
DAT_ce32146:
    #data 0x034a
DAT_ce32148:
    #data 0x3c00
DAT_ce3214a:
    #data 0x01a1
DAT_ce3214c:
    #data 0x01a3
DAT_ce3214e:
    #data 0x01f9
    #align4

PTR_ce32150:
    #data loc_8c034dee
PTR_ce32154:
    #data loc_8c0e4adc
PTR_ce32158:
    #data DAT_ce32370
PTR_ce3215c:
    #data loc_8c02fd26
PTR_ce32160:
    #data DAT_ce32390
PTR_ce32164:
    #data DAT_ce323b0
PTR_ce32168:
    #data loc_8c034e8c
PTR_ce3216c:
    #data LAB_ce3057c

;=============================================

LAB_ce32170:
    mov.w @(DAT_ce32266,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce321a8
    mov.b r12,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov 0x01,r2
    mov.w @(DAT_ce32268,pc),r0
    mov.l @(r0,r14),r3
    add 0xEC,r0
    mov.l r14,@(r0,r3)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0x2E,r0
    mov.b r2,@(r0,r3)
    add 0xD2,r0
    mov.l @(r0,r14),r3
    add 0xDB,r0
    mov.b @(r0,r14),r2
    add 0xFE,r0
    mov.b r2,@(r0,r3)

LAB_ce321a8:
    add 0x04,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce321b6:
    mov.w @(DAT_ce32268,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce32270,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce321c4:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3226a,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce321e2
    mov 0x03,r5
    cmp/eq 0x01,r0
    bt LAB_ce321ea
    cmp/eq 0x02,r0
    bt LAB_ce321ea
    bra LAB_ce321ee
    nop

LAB_ce321e2:
    mov.w @(DAT_ce3226c,pc),r0
    mov 0x02,r3
    bra LAB_ce321ee
    mov.b r3,@(r0,r4)

LAB_ce321ea:
    mov.w @(DAT_ce3226c,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce321ee:
    mov.l @(PTR_ce32274,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce321f4:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3226a,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce32212
    mov 0x03,r5
    cmp/eq 0x01,r0
    bt LAB_ce3221a
    cmp/eq 0x02,r0
    bt LAB_ce3221a
    bra LAB_ce3221e
    nop

LAB_ce32212:
    mov.w @(DAT_ce3226c,pc),r0
    mov 0x02,r3
    bra LAB_ce3221e
    mov.b r3,@(r0,r4)

LAB_ce3221a:
    mov.w @(DAT_ce3226c,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3221e:
    mov.l @(PTR_ce32274,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce32224:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3226a,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce32246
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce3224c
    cmp/eq 0x02,r0
    bt LAB_ce32256
    bra LAB_ce32260
    nop

LAB_ce32246:
    mov.w @(DAT_ce3226c,pc),r0
    bra LAB_ce3225c
    mov.b r5,@(r0,r4)

LAB_ce3224c:
    mov.w @(DAT_ce3226c,pc),r0
    mov.b r6,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce32260
    mov.b r5,@(r0,r4)

LAB_ce32256:
    mov.w @(DAT_ce3226c,pc),r0
    mov 0x0D,r2
    mov.b r2,@(r0,r4)

LAB_ce3225c:
    mov.w @(DAT_ce3226e,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce32260:
    mov.l @(PTR_ce32274,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32266:
    #data 0x0141
DAT_ce32268:
    #data 0x01c8
DAT_ce3226a:
    #data 0x04c9
DAT_ce3226c:
    #data 0x01e9
DAT_ce3226e:
    #data 0x01a3
    #align4

PTR_ce32270:
    #data loc_8c04cc1c
PTR_ce32274:
    #data loc_8c0530d8

;=============================================

LAB_ce32278:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce322ba,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3229a
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce322a0
    cmp/eq 0x02,r0
    bt LAB_ce322aa
    bra LAB_ce322b4
    nop

LAB_ce3229a:
    mov.w @(DAT_ce322bc,pc),r0
    bra LAB_ce322b0
    mov.b r5,@(r0,r4)

LAB_ce322a0:
    mov.w @(DAT_ce322bc,pc),r0
    mov.b r6,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce322b4
    mov.b r5,@(r0,r4)

LAB_ce322aa:
    mov.w @(DAT_ce322bc,pc),r0
    mov 0x0D,r2
    mov.b r2,@(r0,r4)

LAB_ce322b0:
    mov.w @(DAT_ce322be,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce322b4:
    mov.l @(PTR_ce322c0,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce322ba:
    #data 0x04c9
DAT_ce322bc:
    #data 0x01e9
DAT_ce322be:
    #data 0x01a3
    #align4

PTR_ce322c0:
    #data loc_8c0530d8
DAT_ce322c4:
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
DAT_ce322dc:
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
DAT_ce322f4:
    #data 0x0005
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0400
    #data 0x1400
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce32308:
    #data 0x0005
    #data 0x0000
    #data 0x0001
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce3231c:
    #data 0x0003
    #data 0x9100
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce3232c:
    #data 0x0003
    #data 0x8100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce3233c:
    #data 0x0003
    #data 0x8000
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce3234c:
    #data 0x0005
    #data 0x1000
    #data 0x0008
    #data 0x0000
    #data 0x0400
    #data 0x1400
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce32360:
    #data 0x0003
    #data 0x2000
    #data 0x0007
    #data 0x0000
    #data 0x2000
    #data 0x2800
    #data 0x0800
    #data 0x0300
DAT_ce32370:
    #data 0x0020
    #data 0x0020
    #data 0x0020
    #data 0x0020
    #data 0x0020
    #data 0x0020
    #data 0x0020
    #data 0x0020
    #data 0x0021
    #data 0x0020
    #data 0x0021
    #data 0x0020
    #data 0x0021
    #data 0x0020
    #data 0x0021
    #data 0x0020
DAT_ce32390:
    #data 0x0023
    #data 0x0023
    #data 0x0023
    #data 0x0023
    #data 0x0024
    #data 0x0024
    #data 0x0024
    #data 0x0024
    #data 0x0022
    #data 0x0023
    #data 0x0022
    #data 0x0023
    #data 0x0022
    #data 0x0023
    #data 0x0022
    #data 0x0023
DAT_ce323b0:
    #data 0x0005
    #data 0x0005
    #data 0x0005
    #data 0x0005
    #data 0x0007
    #data 0x0007
    #data 0x0007
    #data 0x0007
    #data 0x0004
    #data 0x0004
    #data 0x0004
    #data 0x0004
    #data 0x0004
    #data 0x0004
    #data 0x0004
    #data 0x0004
    #align4

PTR_ce323d0:
    #data LAB_ce3050e
PTR_ce323d4:
    #data LAB_ce3001c
PTR_ce323d8:
    #data LAB_ce307f6
PTR_ce323dc:
    #data LAB_ce309d4
PTR_ce323e0:
    #data LAB_ce30bae
PTR_ce323e4:
    #data LAB_ce30cec
PTR_ce323e8:
    #data LAB_ce30e10
PTR_ce323ec:
    #data LAB_ce30e8c
PTR_ce323f0:
    #data LAB_ce30f02
PTR_ce323f4:
    #data LAB_ce31eae
PTR_ce323f8:
    #data LAB_ce31f54
PTR_ce323fc:
    #data LAB_ce32030
PTR_ce32400:
    #data LAB_ce321b6
PTR_ce32404:
    #data LAB_ce304b4
PTR_ce32408:
    #data LAB_ce31c66
PTR_ce3240c:
    #data LAB_ce30ae8
PTR_ce32410:
    #data LAB_ce321c4
PTR_ce32414:
    #data LAB_ce321f4
PTR_ce32418:
    #data LAB_ce32224
PTR_ce3241c:
    #data LAB_ce32278
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
DAT_ce32440:
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x14
    #data 0x15
    #data 0x16
    #data 0x14
    #data 0x00
    #data 0x00
    #data 0x14
    #data 0x15
    #data 0x16
    #align4

PTR_ce3244c:
    #data LAB_ce305f0
PTR_ce32450:
    #data LAB_ce307ca
PTR_ce32454:
    #data LAB_ce306a0
PTR_ce32458:
    #data LAB_ce305f0
PTR_ce3245c:
    #data LAB_ce30bc0
PTR_ce32460:
    #data LAB_ce30c48
PTR_ce32464:
    #data FUN_ce30cca
PTR_ce32468:
    #data LAB_ce30cfe
PTR_ce3246c:
    #data LAB_ce30d6c
PTR_ce32470:
    #data FUN_ce30dee
PTR_ce32474:
    #data LAB_ce30f16
PTR_ce32478:
    #data LAB_ce3109c
PTR_ce3247c:
    #data LAB_ce314a4
PTR_ce32480:
    #data LAB_ce312b6
PTR_ce32484:
    #data LAB_ce316c6
PTR_ce32488:
    #data loc_8c051648
PTR_ce3248c:
    #data LAB_ce31b84
PTR_ce32490:
    #data LAB_ce317fa
PTR_ce32494:
    #data LAB_ce31952
PTR_ce32498:
    #data loc_8c051648
PTR_ce3249c:
    #data loc_8c051648
PTR_ce324a0:
    #data loc_8c051648
PTR_ce324a4:
    #data LAB_ce31dac
PTR_ce324a8:
    #data LAB_ce31bd8
PTR_ce324ac:
    #data LAB_ce310d0
PTR_ce324b0:
    #data LAB_ce31176
PTR_ce324b4:
    #data LAB_ce31234
PTR_ce324b8:
    #data LAB_ce312c8
PTR_ce324bc:
    #data LAB_ce31344
PTR_ce324c0:
    #data LAB_ce3140e
PTR_ce324c4:
    #data LAB_ce31480
PTR_ce324c8:
    #data LAB_ce314ec
PTR_ce324cc:
    #data LAB_ce3156a
PTR_ce324d0:
    #data LAB_ce31640
PTR_ce324d4:
    #data LAB_ce3167e
PTR_ce324d8:
    #data LAB_ce316d8
PTR_ce324dc:
    #data LAB_ce31780
PTR_ce324e0:
    #data LAB_ce3199e
PTR_ce324e4:
    #data LAB_ce31a0c
PTR_ce324e8:
    #data LAB_ce31a46
PTR_ce324ec:
    #data FUN_ce31adc
PTR_ce324f0:
    #data LAB_ce31afe
PTR_ce324f4:
    #data LAB_ce31b58
PTR_ce324f8:
    #data LAB_ce31c9c
PTR_ce324fc:
    #data LAB_ce31d16
PTR_ce32500:
    #data LAB_ce31d84
PTR_ce32504:
    #data LAB_ce31df0
PTR_ce32508:
    #data LAB_ce31e66
