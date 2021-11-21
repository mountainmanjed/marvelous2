;╔══════════════════════════════════════════╗
;║ S_PL2F : Silver Samurai Program          ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c0423fc 0x8C0423FC
#symbol loc_8c045790 0x8C045790
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c04ce54 0x8C04CE54
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
#symbol loc_8c05211c 0x8C05211C
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c052a72 0x8C052A72
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
#symbol loc_8c055244 0x8C055244
#symbol loc_8c0559da 0x8C0559DA
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c055d54 0x8C055D54
#symbol loc_8c055d7a 0x8C055D7A
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c059a44 0x8C059A44
#symbol loc_8c0a1d8c 0x8C0A1D8C
#symbol loc_8c0a23b8 0x8C0A23B8
#symbol loc_8c0a2554 0x8C0A2554
#symbol loc_8c0a2888 0x8C0A2888
#symbol loc_8c0a2a50 0x8C0A2A50
#symbol loc_8c0a2dbc 0x8C0A2DBC
#symbol loc_8c0e6c28 0x8C0E6C28
#symbol loc_8c0e6de4 0x8C0E6DE4
#symbol loc_8c0e6f5c 0x8C0E6F5C
#symbol loc_8c0e7250 0x8C0E7250
#symbol loc_8c0e73dc 0x8C0E73DC
#symbol loc_8c0f047c 0x8C0F047C
#symbol loc_8c0fd966 0x8C0FD966
#symbol loc_8c100672 0x8C100672
#symbol loc_8c103660 0x8C103660
#symbol loc_8c1292d4 0x8C1292D4
#symbol loc_8c1294c8 0x8C1294C8
#symbol loc_8c129728 0x8C129728
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c287ae8 0x8C287AE8
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300b6,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300b8,pc),r7
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
    mov.l @(PTR_ce300bc,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    mov.l @(PTR_ce300c0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    mov.l @(PTR_ce300c4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    mov.l @(PTR_ce300c8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce300d4
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce30156
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce301ac
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce30220
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce3029e
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce30314
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce30364
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce303c8
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce30460
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b0
    bsr FUN_ce30498
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b0
    mov.l @(PTR_ce300cc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300d0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300b0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300b6:
    #data 0x0428
    #align4

PTR_ce300b8:
    #data PTR_ce335e0
PTR_ce300bc:
    #data loc_8c054508
PTR_ce300c0:
    #data loc_8c054b34
PTR_ce300c4:
    #data loc_8c05496c
PTR_ce300c8:
    #data loc_8c054d04
PTR_ce300cc:
    #data loc_8c053e00
PTR_ce300d0:
    #data loc_8c0542e0

;=============================================

FUN_ce300d4:
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
    bt LAB_ce30126
    mov.w @(DAT_ce301cc,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce30126
    mov.w @(DAT_ce301ce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3012e
    mov.w @(DAT_ce301d0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30114
    mov.w @(DAT_ce301d2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30126
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce30114:
    mov.w @(DAT_ce301ce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3012e
    mov.w @(DAT_ce301d4,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x01,r0
    bt LAB_ce3012e

LAB_ce30126:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3012e:
    mov.w @(DAT_ce301ca,pc),r5
    mov.l @(PTR_ce301e4,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce301d6,pc),r0
    mov 0x08,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce301e8,pc),r3
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

FUN_ce30156:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301ec,pc),r5
    mov.w @(DAT_ce301d8,pc),r6
    mov.l @(PTR_ce301e0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30176
    mov.w @(DAT_ce301cc,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3017e

LAB_ce30176:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3017e:
    mov.w @(DAT_ce301d8,pc),r5
    mov.l @(PTR_ce301e4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce301d4,pc),r0
    mov 0x1D,r5
    mov.l @(r0,r14),r2
    mov.l @(PTR_ce301f0,pc),r0
    mov.b @(r0,r2),r3
    mov.w @(DAT_ce301d6,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce301e8,pc),r3
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

FUN_ce301ac:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301f4,pc),r5
    mov.w @(DAT_ce301da,pc),r6
    mov.l @(PTR_ce301e0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301f8
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301ca:
    #data 0x039c
DAT_ce301cc:
    #data 0x040c
DAT_ce301ce:
    #data 0x01f9
DAT_ce301d0:
    #data 0x01fc
DAT_ce301d2:
    #data 0x01d4
DAT_ce301d4:
    #data 0x02c0
DAT_ce301d6:
    #data 0x01e9
DAT_ce301d8:
    #data 0x036c
DAT_ce301da:
    #data 0x03ac
    #align4

PTR_ce301dc:
    #data DAT_ce335be
PTR_ce301e0:
    #data loc_8c054e58
PTR_ce301e4:
    #data loc_8c055c3a
PTR_ce301e8:
    #data loc_8c0530d8
PTR_ce301ec:
    #data DAT_ce33564
PTR_ce301f0:
    #data DAT_ce33650
PTR_ce301f4:
    #data DAT_ce335ce

;=============================================

LAB_ce301f8:
    mov.w @(DAT_ce302ee,pc),r5
    mov.l @(PTR_ce30300,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce302f0,pc),r0
    mov 0x03,r2
    mov.l @(PTR_ce30304,pc),r3
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

FUN_ce30220:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30308,pc),r5
    mov.w @(DAT_ce302f2,pc),r6
    mov.l @(PTR_ce3030c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30258
    mov.w @(DAT_ce302f4,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30258
    mov.w @(DAT_ce302f6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30266
    mov.w @(DAT_ce302f8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30266
    mov.w @(DAT_ce302fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30260

LAB_ce30258:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30260:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30266:
    mov.w @(DAT_ce302f2,pc),r5
    mov.l @(PTR_ce30300,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce302f6,pc),r0
    mov 0x01,r4
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce30280
    mov 0x00,r5
    mov r5,r4

LAB_ce30280:
    mov.w @(DAT_ce302f0,pc),r0
    mov.b r4,@(r0,r14)
    mov r5,r0
    nop
    mov.l @(PTR_ce30304,pc),r3
    mov 0x15,r5
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

FUN_ce3029e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30310,pc),r5
    mov.w @(DAT_ce302fc,pc),r6
    mov.l @(PTR_ce3030c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302be
    mov.w @(DAT_ce302fe,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302c6

LAB_ce302be:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302c6:
    mov.w @(DAT_ce302fc,pc),r5
    mov.l @(PTR_ce30300,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce302f0,pc),r0
    mov 0x0B,r2
    mov.l @(PTR_ce30304,pc),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce302ee:
    #data 0x03ac
DAT_ce302f0:
    #data 0x01e9
DAT_ce302f2:
    #data 0x0364
DAT_ce302f4:
    #data 0x02f0
DAT_ce302f6:
    #data 0x01f9
DAT_ce302f8:
    #data 0x01fc
DAT_ce302fa:
    #data 0x01d4
DAT_ce302fc:
    #data 0x03a4
DAT_ce302fe:
    #data 0x040c
    #align4

PTR_ce30300:
    #data loc_8c055c3a
PTR_ce30304:
    #data loc_8c0530d8
PTR_ce30308:
    #data DAT_ce33554
PTR_ce3030c:
    #data loc_8c054e58
PTR_ce30310:
    #data DAT_ce335ae

;=============================================

FUN_ce30314:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30418,pc),r5
    mov.w @(DAT_ce30406,pc),r6
    mov.l @(PTR_ce3041c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30334
    mov.w @(DAT_ce30408,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3033c

LAB_ce30334:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3033c:
    mov.w @(DAT_ce30406,pc),r5
    mov.l @(PTR_ce30420,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3040a,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce30424,pc),r3
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

FUN_ce30364:
    mov.w @(DAT_ce3040c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x15,r0
    bf LAB_ce30398
    mov.w @(DAT_ce3040a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30398
    mov.w @(DAT_ce3040e,pc),r0
    mov.l @(r0,r14),r2
    cmp/pl r2
    bf LAB_ce30398
    mov.w @(DAT_ce30410,pc),r6
    mov.l @(PTR_ce30428,pc),r5
    mov.l @(PTR_ce3041c,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303a0

LAB_ce30398:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303a0:
    mov.w @(DAT_ce30410,pc),r5
    mov.l @(PTR_ce30420,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3040a,pc),r0
    mov 0x06,r2
    mov.l @(PTR_ce30424,pc),r3
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

FUN_ce303c8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3042c,pc),r5
    mov.w @(DAT_ce30412,pc),r6
    mov.l @(PTR_ce30430,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303fe
    mov.w @(DAT_ce30414,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce303fe
    mov.w @(DAT_ce30414,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce303fe
    mov.l @(PTR_ce30434,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30438

LAB_ce303fe:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30406:
    #data 0x03bc
DAT_ce30408:
    #data 0x040c
DAT_ce3040a:
    #data 0x01e9
DAT_ce3040c:
    #data 0x01d0
DAT_ce3040e:
    #data 0x02f4
DAT_ce30410:
    #data 0x037c
DAT_ce30412:
    #data 0x0374
DAT_ce30414:
    #data 0x01f9
    #align4

PTR_ce30418:
    #data DAT_ce3359e
PTR_ce3041c:
    #data loc_8c054e58
PTR_ce30420:
    #data loc_8c055c3a
PTR_ce30424:
    #data loc_8c0530d8
PTR_ce30428:
    #data DAT_ce3357e
PTR_ce3042c:
    #data DAT_ce33574
PTR_ce30430:
    #data loc_8c055244
PTR_ce30434:
    #data loc_8c0559da

;=============================================

LAB_ce30438:
    mov.w @(DAT_ce3053e,pc),r5
    mov.l @(PTR_ce3054c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30540,pc),r0
    mov 0x03,r2
    mov.l @(PTR_ce30550,pc),r3
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

FUN_ce30460:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30554,pc),r3
    jsr @r3
    mov 0x0D,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3047a
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3047a:
    mov.w @(DAT_ce30540,pc),r0
    mov 0x0D,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30550,pc),r3
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

FUN_ce30498:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30558,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce304b0
    mov.w @(DAT_ce30542,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304b8

LAB_ce304b0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304b8:
    mov.w @(DAT_ce30540,pc),r0
    mov 0x0E,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30550,pc),r3
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

FUN_ce304d6:
    sts.l PR,@-r15
    add 0xFC,r15
    bsr FUN_ce304fc
    mov.l r4,@r15
    tst r0,r0
    bf LAB_ce304ea
    bsr FUN_ce30582
    mov.l @r15,r4
    tst r0,r0
    bt LAB_ce304f2

LAB_ce304ea:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce304f2:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce304fc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3055c,pc),r5
    mov.w @(DAT_ce30544,pc),r6
    mov.l @(PTR_ce30560,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30536
    mov.w @(DAT_ce30542,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30536
    mov.w @(DAT_ce30546,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3056a
    mov.w @(DAT_ce30548,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3056a
    mov.w @(DAT_ce3054a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30564

LAB_ce30536:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3053e:
    #data 0x0374
DAT_ce30540:
    #data 0x01e9
DAT_ce30542:
    #data 0x040c
DAT_ce30544:
    #data 0x039c
DAT_ce30546:
    #data 0x01f9
DAT_ce30548:
    #data 0x01fc
DAT_ce3054a:
    #data 0x01d4
    #align4

PTR_ce3054c:
    #data loc_8c055c3a
PTR_ce30550:
    #data loc_8c0530d8
PTR_ce30554:
    #data loc_8c054da0
PTR_ce30558:
    #data loc_8c054d1c
PTR_ce3055c:
    #data DAT_ce335be
PTR_ce30560:
    #data loc_8c054e58

;=============================================

LAB_ce30564:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3056a:
    mov.w @(DAT_ce3065a,pc),r5
    mov.l @(PTR_ce30678,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3065c,pc),r0
    mov 0x08,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30582:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3067c,pc),r5
    mov.w @(DAT_ce3065e,pc),r6
    mov.l @(PTR_ce30680,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce305a2
    mov.w @(DAT_ce30660,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce305aa

LAB_ce305a2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce305aa:
    mov.w @(DAT_ce3065e,pc),r5
    mov.l @(PTR_ce30678,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30662,pc),r0
    mov.l @(r0,r14),r2
    mov.l @(PTR_ce30684,pc),r0
    mov.b @(r0,r2),r3
    mov.w @(DAT_ce3065c,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce305c8:
    mov.w @(DAT_ce30664,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    tst r3,r3
    bt LAB_ce305da
    bsr FUN_ce305fe
    mov r14,r4

LAB_ce305da:
    mov.w @(DAT_ce30666,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt LAB_ce305e8
    mov.l @(r0,r14),r3
    add 0xFF,r3
    mov.l r3,@(r0,r14)

LAB_ce305e8:
    mov.w @(DAT_ce30668,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce305f8
    mov r14,r4
    mov.l @(r0,r14),r2
    add 0xFF,r2
    mov.l r2,@(r0,r14)

LAB_ce305f8:
    lds.l @r15+,PR
    bra LAB_ce30688
    mov.l @r15+,r14

;=============================================

FUN_ce305fe:
    mov.w @(DAT_ce3066a,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3060e
    mov.w @(DAT_ce3066c,pc),r0
    mov.l @(r0,r4),r3
    add 0x01,r3
    mov.l r3,@(r0,r4)

LAB_ce3060e:
    mov.w @(DAT_ce3066c,pc),r0
    mov.l @(r0,r4),r2
    add 0xFF,r2
    cmp/pl r2
    bt/s LAB_ce30636
    mov.l r2,@(r0,r4)
    mov.w @(DAT_ce30664,pc),r0
    mov 0x00,r5
    mov.l r5,@(r0,r4)
    add 0x08,r0
    mov.l r5,@(r0,r4)
    add 0xFC,r0
    mov.l r5,@(r0,r4)
    mov.w @(DAT_ce3066e,pc),r0
    mov.b r5,@(r0,r4)
    add 0x01,r0
    mov.b r5,@(r0,r4)
    add 0xFC,r0
    bra LAB_ce30656
    mov.b r5,@(r0,r4)

LAB_ce30636:
    mov.w @(DAT_ce30662,pc),r0
    mov.l @(r0,r4),r0
    cmp/eq 0x02,r0
    bf LAB_ce30656
    mov.w @(DAT_ce30670,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce30656
    mov.w @(DAT_ce30672,pc),r0
    mov 0x02,r3
    mov.l @(r0,r4),r2
    cmp/ge r3,r2
    bt LAB_ce30656
    mov.w @(DAT_ce30674,pc),r0
    mov 0x03,r3
    mov.w r3,@(r0,r4)

LAB_ce30656:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3065a:
    #data 0x039c
DAT_ce3065c:
    #data 0x0258
DAT_ce3065e:
    #data 0x036c
DAT_ce30660:
    #data 0x040c
DAT_ce30662:
    #data 0x02c0
DAT_ce30664:
    #data 0x02b8
DAT_ce30666:
    #data 0x02f4
DAT_ce30668:
    #data 0x02f0
DAT_ce3066a:
    #data 0x01a0
DAT_ce3066c:
    #data 0x02bc
DAT_ce3066e:
    #data 0x0205
DAT_ce30670:
    #data 0x0202
DAT_ce30672:
    #data 0x02f8
DAT_ce30674:
    #data 0x03e4
    #align4

PTR_ce30678:
    #data loc_8c055c3a
PTR_ce3067c:
    #data DAT_ce33564
PTR_ce30680:
    #data loc_8c054e58
PTR_ce30684:
    #data DAT_ce33654

;=============================================

LAB_ce30688:
    mov.w @(DAT_ce30762,pc),r0
    mov 0x02,r6
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    cmp/ge r6,r3
    bt/s LAB_ce306f6
    mov 0x01,r4
    mov.l @(r0,r14),r1
    tst r1,r1
    bf LAB_ce306b6
    mov.l @(r0,r14),r2
    add 0x01,r2
    mov.l r2,@(r0,r14)
    add 0x48,r0
    mov.l r13,@(r0,r14)
    add 0xF8,r0
    mov.l r4,@(r0,r14)
    add 0x04,r0
    mov.l r13,@(r0,r14)

LAB_ce306b6:
    mov.w @(DAT_ce30764,pc),r0
    mov.l @(r0,r14),r3
    add 0xFF,r3
    cmp/pz r3
    mov.l r3,@(r0,r14)
    bt LAB_ce3072a
    mov.l r4,@(r0,r14)
    add 0x04,r0
    mov.l @(r0,r14),r3
    cmp/gt r4,r3
    bf LAB_ce306ea
    mov.l @(PTR_ce30768,pc),r3
    mov.w @(DAT_ce30766,pc),r0
    jsr @r3
    mov.l r13,@(r0,r14)
    tst 0x0F,r0
    bf LAB_ce306ea
    mov.w @(DAT_ce30762,pc),r0
    mov 0x04,r2
    mov.l @(r0,r14),r3
    add 0x01,r3
    mov.l r3,@(r0,r14)
    add 0x40,r0
    mov.l r2,@(r0,r14)
    add 0x04,r0
    mov.l r13,@(r0,r14)

LAB_ce306ea:
    lds.l @r15+,PR
    mov 0x00,r5
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce30732
    mov.l @r15+,r14

LAB_ce306f6:
    mov.w @(DAT_ce30764,pc),r0
    mov.l @(r0,r14),r3
    add 0xFF,r3
    cmp/pz r3
    mov.l r3,@(r0,r14)
    bt LAB_ce3072a
    mov.l r4,@(r0,r14)
    add 0x04,r0
    mov.l @(r0,r14),r2
    mov 0x04,r3
    cmp/gt r3,r2
    bf LAB_ce3071e
    mov.w @(DAT_ce30762,pc),r0
    mov.l r4,@(r0,r14)
    add 0x40,r0
    mov.l r4,@(r0,r14)
    add 0x04,r0
    mov.l r13,@(r0,r14)
    bra LAB_ce30720
    mov 0x00,r5

LAB_ce3071e:
    mov r6,r5

LAB_ce30720:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce30732
    mov.l @r15+,r14

LAB_ce3072a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30732:
    mov.l r14,@-r15
    add 0xFC,r15
    mov 0x25,r0
    mov r4,r14
    mov r5,r3
    mov.l r5,@r15
    mov.b @(r0,r14),r6
    mov 0x00,r5
    mov.w @(DAT_ce30766,pc),r0
    mov r14,r4
    extu.b r6,r6
    mov.l @(r0,r14),r2
    shll2 r6
    shll r6
    add 0x01,r2
    mov.l r2,@(r0,r14)
    add 0xFF,r2
    add r3,r6
    mov 0x01,r7
    add r2,r6
    add 0x04,r15
    mov.l @(PTR_ce3076c,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30762:
    #data 0x02a4
DAT_ce30764:
    #data 0x02e4
DAT_ce30766:
    #data 0x02e8
    #align4

PTR_ce30768:
    #data loc_8c03319e
PTR_ce3076c:
    #data loc_8c03544c

;=============================================

LAB_ce30770:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30830,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3081e,pc),r0
    mov.b @(r0,r14),r4
    add 0x11,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30796
    add 0x06,r4

LAB_ce30796:
    mov.w @(DAT_ce30820,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce307a0
    add 0x03,r4

LAB_ce307a0:
    mov.l @(PTR_ce30834,pc),r0
    extu.b r4,r13
    mov.w @(DAT_ce30822,pc),r2
    extu.b r4,r1
    mov.b @(r0,r13),r3
    add r14,r2
    extu.b r3,r3
    mov.l r3,@r2
    mov.l @(PTR_ce30838,pc),r3
    jsr @r3
    mov 0x06,r0
    mov.l @(PTR_ce3083c,pc),r3
    shll2 r0
    mov r0,r6
    mov.l @(r0,r3),r4
    mov.w @(DAT_ce30824,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce307ca
    mov.l @(PTR_ce30840,pc),r0
    mov.l @(r0,r6),r4

LAB_ce307ca:
    mov.w @(DAT_ce30826,pc),r0
    mov.l r4,@(r0,r14)
    mov.w @(DAT_ce3081e,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce30844,pc),r0
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce30828,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce30848,pc),r0
    mov.w @(DAT_ce3082a,pc),r2
    mov.b @(r0,r13),r3
    mov.w @(DAT_ce3082c,pc),r0
    add r14,r2
    mov.b r3,@r2
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3084c,pc),r3
    mov.l r5,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30850,pc),r0
    mov.b @(r0,r13),r6
    mov.l @(PTR_ce30854,pc),r0
    mov.l @(PTR_ce30858,pc),r2
    mov.b @(r0,r13),r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3085c,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3081e:
    #data 0x01e8
DAT_ce30820:
    #data 0x01fe
DAT_ce30822:
    #data 0x0320
DAT_ce30824:
    #data 0x02c0
DAT_ce30826:
    #data 0x03f4
DAT_ce30828:
    #data 0x01a7
DAT_ce3082a:
    #data 0x01a1
DAT_ce3082c:
    #data 0x01ac
    #align4

PTR_ce30830:
    #data loc_8c052b4c
PTR_ce30834:
    #data DAT_ce3367f
PTR_ce30838:
    #data loc_8c1292d4
PTR_ce3083c:
    #data PTR_ce3350c
PTR_ce30840:
    #data PTR_ce3353c
PTR_ce30844:
    #data DAT_ce33664
PTR_ce30848:
    #data DAT_ce33658
PTR_ce3084c:
    #data loc_8c2896b0
PTR_ce30850:
    #data DAT_ce33667
PTR_ce30854:
    #data DAT_ce33673
PTR_ce30858:
    #data loc_8c034e8c
PTR_ce3085c:
    #data FUN_ce33336

;=============================================

LAB_ce30860:
    mov.w @(DAT_ce3095e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r13
    add 0x16,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30878
    add 0x03,r13

LAB_ce30878:
    mov.w @(DAT_ce3095e,pc),r0
    extu.b r13,r12
    mov 0x00,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce30970,pc),r0
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce30960,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce30974,pc),r0
    mov.w @(DAT_ce30962,pc),r2
    mov.b @(r0,r12),r3
    mov.w @(DAT_ce30964,pc),r0
    add r14,r2
    mov.b r3,@r2
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30978,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3097c,pc),r0
    mov.b @(r0,r12),r6
    mov.l @(PTR_ce30980,pc),r0
    mov.l @(PTR_ce30984,pc),r2
    mov.b @(r0,r12),r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30966,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce308ca
    add 0x06,r13

LAB_ce308ca:
    mov.l @(PTR_ce30988,pc),r5
    extu.b r13,r0
    shll2 r0
    mov.l @(r0,r5),r4
    mov.w @(DAT_ce30968,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x01,r0
    bf/s LAB_ce308ec
    extu.b r13,r12
    mov.l @(PTR_ce3098c,pc),r2
    mov r12,r1
    jsr @r2
    mov 0x06,r0
    mov r0,r4
    shll2 r4
    add r5,r4
    mov.l @(0x18,r4),r4

LAB_ce308ec:
    mov.w @(DAT_ce3096a,pc),r0
    mov.l r4,@(r0,r14)
    mov r12,r0
    nop
    cmp/eq 0x03,r0
    bt LAB_ce30906
    mov r12,r0
    nop
    cmp/eq 0x09,r0
    bt LAB_ce30906
    mov.l @(PTR_ce30990,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30906:
    mov.w @(DAT_ce3096c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30920
    mov.w @(DAT_ce3096e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30930
    mov.w @(DAT_ce3096e,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    bra LAB_ce30930
    mov.b r2,@(r0,r14)

LAB_ce30920:
    mov.w @(DAT_ce3096e,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30930
    mov.w @(DAT_ce3096e,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30930:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3093a:
    mov.w @(DAT_ce3096c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3094e
    mov.w @(DAT_ce3096e,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30956
    bra LAB_ce3095a
    nop

LAB_ce3094e:
    mov.w @(DAT_ce3096e,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce3095a

LAB_ce30956:
    bra LAB_ce30860
    nop

LAB_ce3095a:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3095e:
    #data 0x01e8
DAT_ce30960:
    #data 0x01a7
DAT_ce30962:
    #data 0x01a1
DAT_ce30964:
    #data 0x01ac
DAT_ce30966:
    #data 0x01fc
DAT_ce30968:
    #data 0x02c0
DAT_ce3096a:
    #data 0x03f4
DAT_ce3096c:
    #data 0x01fe
DAT_ce3096e:
    #data 0x01d6
    #align4

PTR_ce30970:
    #data DAT_ce33691
PTR_ce30974:
    #data DAT_ce3368b
PTR_ce30978:
    #data loc_8c2896b0
PTR_ce3097c:
    #data DAT_ce33694
PTR_ce30980:
    #data DAT_ce3369a
PTR_ce30984:
    #data loc_8c034e8c
PTR_ce30988:
    #data PTR_ce33524
PTR_ce3098c:
    #data loc_8c1292d4
PTR_ce30990:
    #data FUN_ce33336

;=============================================

LAB_ce30994:
    mov.w @(DAT_ce30a94,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30a98,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce309a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30a9c,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30aa0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30aa4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce309ce
    lds.l @r15+,PR
    mov.l @(PTR_ce30aa8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce309ce:
    mov.l @(PTR_ce30aac,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce309e4
    lds.l @r15+,PR
    mov.l @(PTR_ce30ab0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce309e4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce309ea:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ab4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30ab8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce309a8
    mov.l @r15+,r14

LAB_ce30a02:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30abc,pc),r3
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
    mov.w @(DAT_ce30a96,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(r0,r14),r2
    mov.l @(PTR_ce30ac0,pc),r0
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce30a58:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30aa4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30a72
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30ac4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30a72:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30a7a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30aa4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ac8
    lds.l @r15+,PR
    mov.l @(PTR_ce30ac4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a94:
    #data 0x01ff
DAT_ce30a96:
    #data 0x0320
    #align4

PTR_ce30a98:
    #data PTR_ce336a0
PTR_ce30a9c:
    #data loc_8c04fea8
PTR_ce30aa0:
    #data loc_8c050048
PTR_ce30aa4:
    #data loc_8c034dee
PTR_ce30aa8:
    #data loc_8c05176e
PTR_ce30aac:
    #data loc_8c052ce2
PTR_ce30ab0:
    #data loc_8c052dac
PTR_ce30ab4:
    #data loc_8c050084
PTR_ce30ab8:
    #data loc_8c04ff88
PTR_ce30abc:
    #data loc_8c052c84
PTR_ce30ac0:
    #data PTR_ce336b0
PTR_ce30ac4:
    #data FUN_ce3336c

;=============================================

LAB_ce30ac8:
    mov.w @(DAT_ce30bc4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30b26
    mov.w @(DAT_ce30bc6,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30bc8,pc),r0
    mov.w @(r0,r14),r3
    add 0x04,r0
    mov.w @(r0,r14),r2
    extu.w r3,r3
    extu.w r2,r2
    or r2,r3
    mov.w @(DAT_ce30bca,pc),r2
    tst r2,r3
    bt LAB_ce30b26
    mov.w @(DAT_ce30bcc,pc),r0
    mov 0x1C,r3
    mov 0x09,r5
    mov.w r4,@(r0,r14)
    mov 0x03,r6
    mov.w @(DAT_ce30bce,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30bd0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r2
    add 0x01,r2
    mov.w r2,@(r0,r1)
    mov.l @(PTR_ce30bd4,pc),r1
    jsr @r1
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30bd8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30b26:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30b2c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30bdc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30b4a
    lds.l @r15+,PR
    mov.l @(PTR_ce30be0,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30b4a:
    mov.w @(DAT_ce30bc4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30bbc
    mov.w @(DAT_ce30bc6,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30bc8,pc),r0
    mov.w @(r0,r14),r3
    add 0x04,r0
    mov.w @(r0,r14),r2
    extu.w r3,r3
    extu.w r2,r2
    or r2,r3
    mov.w @(DAT_ce30bca,pc),r2
    tst r2,r3
    bt LAB_ce30bbc
    mov.w @(DAT_ce30bcc,pc),r0
    mov r4,r5
    mov.w r4,@(r0,r14)
    mov.b @(0x7,r14),r0
    xor 0x01,r0
    mov.b r0,@(0x7,r14)
    extu.b r0,r0
    tst r0,r0
    bt/s LAB_ce30b84
    mov r4,r13
    mov 0x03,r13
    mov 0x19,r5

LAB_ce30b84:
    mov.w @(DAT_ce30bce,pc),r0
    mov r13,r6
    mov.l @(PTR_ce30bd0,pc),r3
    mov.b r5,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x07,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30bd4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30bd8,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30bbc:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30bc4:
    #data 0x0141
DAT_ce30bc6:
    #data 0x019e
DAT_ce30bc8:
    #data 0x034e
DAT_ce30bca:
    #data 0x0200
DAT_ce30bcc:
    #data 0x0352
DAT_ce30bce:
    #data 0x01a1
    #align4

PTR_ce30bd0:
    #data loc_8c2896b0
PTR_ce30bd4:
    #data loc_8c034e8c
PTR_ce30bd8:
    #data FUN_ce33336
PTR_ce30bdc:
    #data loc_8c034dee
PTR_ce30be0:
    #data FUN_ce3336c

;=============================================

LAB_ce30be4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ce8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30cda,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30c2a
    mov.w @(DAT_ce30cdc,pc),r0
    mov 0x00,r4
    mov 0x1A,r3
    mov.l r4,@(r0,r14)
    mov.w @(DAT_ce30cde,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30cec,pc),r3
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
    mov.l @(PTR_ce30cf0,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce30c2a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30c30:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ce8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c4a
    lds.l @r15+,PR
    mov.l @(PTR_ce30cf4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c4a:
    mov.w @(DAT_ce30cda,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30cd4
    mov.l @(PTR_ce30cf8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30cd4
    mov.l @(PTR_ce30cfc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30cd4
    mov.w @(DAT_ce30ce0,pc),r0
    mov.w @(r0,r14),r3
    add 0x04,r0
    mov.w @(r0,r14),r2
    extu.w r3,r3
    extu.w r2,r2
    or r2,r3
    mov.w @(DAT_ce30ce2,pc),r2
    tst r2,r3
    bt LAB_ce30cd4
    mov.w @(DAT_ce30ce4,pc),r0
    mov 0x00,r4
    mov.w r4,@(r0,r14)
    mova @(DAT_ce30d00,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30ce6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c94
    mova @(DAT_ce30d04,pc),r0
    fmov.s @r0,fr4

LAB_ce30c94:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x1B,r3
    mov 0x07,r5
    fadd fr4,fr3
    mov 0x04,r6
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30cde,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30cec,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30d08,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30cf0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30cd4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30cda:
    #data 0x0141
DAT_ce30cdc:
    #data 0x0320
DAT_ce30cde:
    #data 0x01a1
DAT_ce30ce0:
    #data 0x034e
DAT_ce30ce2:
    #data 0x0100
DAT_ce30ce4:
    #data 0x0352
DAT_ce30ce6:
    #data 0x01d2
    #align4

PTR_ce30ce8:
    #data loc_8c034dee
PTR_ce30cec:
    #data loc_8c2896b0
PTR_ce30cf0:
    #data FUN_ce33336
PTR_ce30cf4:
    #data FUN_ce3336c
PTR_ce30cf8:
    #data loc_8c05211c
PTR_ce30cfc:
    #data loc_8c052a72
DAT_ce30d00:
    #data 0x43200000
DAT_ce30d04:
    #data 0xc3200000
PTR_ce30d08:
    #data loc_8c034e8c

;=============================================

LAB_ce30d0c:
    mov.w @(DAT_ce30dd4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce30d6a
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce30dd6,pc),r0
    mov.b r3,@(r0,r14)
    add 0xDB,r0
    mov.b r4,@(r0,r14)
    add 0x02,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce30de0,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce30de4,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce30dd8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30d44
    mova @(DAT_ce30de8,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce30dec,pc),r0
    fmov.s @r0,fr5

LAB_ce30d44:
    mov 0x5C,r0
    mov.l @(DAT_ce30df0,pc),r1
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    lds r1,FPUL
    fmov fr5,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    mov.l @(DAT_ce30df4,pc),r1
    lds r1,FPUL
    fmov fr2,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr1
    fsts FPUL,fr2
    fadd fr2,fr1
    bra LAB_ce30d94
    fmov fr1,@(r0,r14)

LAB_ce30d6a:
    mov.w @(DAT_ce30dda,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce30d94
    mov.w @(DAT_ce30dda,pc),r0
    mov 0x34,r5
    mov.l @(PTR_ce30df8,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30dd6,pc),r0
    fldi0 fr3
    mov.b r4,@(r0,r14)
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce30d94:
    mov.l @(PTR_ce30dfc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30daa
    lds.l @r15+,PR
    mov.l @(PTR_ce30e00,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30daa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30db0:
    sts.l PR,@-r15
    mov.l @(PTR_ce30e04,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    bra LAB_ce30a02
    lds.l @r15+,PR

LAB_ce30dc0:
    mov.w @(DAT_ce30ddc,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30e08,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30dd4:
    #data 0x0141
DAT_ce30dd6:
    #data 0x01f9
DAT_ce30dd8:
    #data 0x01d2
DAT_ce30dda:
    #data 0x041c
DAT_ce30ddc:
    #data 0x01ff
    #align4

DAT_ce30de0:
    #data 0xc0d55555
DAT_ce30de4:
    #data 0x3dd55555
DAT_ce30de8:
    #data 0x40d55555
DAT_ce30dec:
    #data 0xbdd55555
DAT_ce30df0:
    #data 0x412b6db6
DAT_ce30df4:
    #data 0xbf4db6db
PTR_ce30df8:
    #data loc_8c04223a
PTR_ce30dfc:
    #data loc_8c034dee
PTR_ce30e00:
    #data FUN_ce3336c
PTR_ce30e04:
    #data loc_8c0511e2
PTR_ce30e08:
    #data PTR_ce336c8

;=============================================

LAB_ce30e0c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30e72
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30f40,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30f44,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30f32,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30f34,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x03,r0
    bf/s LAB_ce30e3e
    mov 0x3D,r4
    mov 0x5D,r4

LAB_ce30e3e:
    mov.w @(DAT_ce30f36,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce30f48,pc),r3
    mov 0x08,r6
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
    mov.l @(PTR_ce30f4c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30f50,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30e72:
    mov.w @(DAT_ce30f38,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30e82
    mov.l @(PTR_ce30f54,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30e82:
    mov 0x5C,r1
    mov.l @(PTR_ce30f58,pc),r3
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
    mov.l @(PTR_ce30f5c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ed6
    lds.l @r15+,PR
    mov.l @(PTR_ce30f60,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30ed6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30edc:
    mov r4,r3
    mov.l @(PTR_ce30f64,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30eee:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30f5c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30f3a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30f2c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce30f68,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30f3c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f1a
    mova @(DAT_ce30f6c,pc),r0
    fmov.s @r0,fr4

LAB_ce30f1a:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce30f2c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f32:
    #data 0x01f9
DAT_ce30f34:
    #data 0x02c0
DAT_ce30f36:
    #data 0x01a1
DAT_ce30f38:
    #data 0x01ff
DAT_ce30f3a:
    #data 0x0141
DAT_ce30f3c:
    #data 0x01d2
    #align4

PTR_ce30f40:
    #data loc_8c052b4c
PTR_ce30f44:
    #data loc_8c056de4
PTR_ce30f48:
    #data loc_8c2896b0
PTR_ce30f4c:
    #data loc_8c034e8c
PTR_ce30f50:
    #data FUN_ce33336
PTR_ce30f54:
    #data loc_8c0511e2
PTR_ce30f58:
    #data loc_8c052c84
PTR_ce30f5c:
    #data loc_8c034dee
PTR_ce30f60:
    #data FUN_ce3336c
PTR_ce30f64:
    #data PTR_ce336d8
DAT_ce30f68:
    #data 0xc1200000
DAT_ce30f6c:
    #data 0x41200000

;=============================================

LAB_ce30f70:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310b8,pc),r3
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
    bf LAB_ce30fc4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce30fc4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fca:
    mov.l @(PTR_ce310bc,pc),r3
    jmp @r3
    nop

LAB_ce30fd0:
    mov r4,r3
    mov.l @(PTR_ce310c0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30fe2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310b8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce310b2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31024
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce310c4,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce310b4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3100a
    mova @(DAT_ce310c8,pc),r0
    fmov.s @r0,fr4

LAB_ce3100a:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce310cc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce310d0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31024:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3102a:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce310b8,pc),r3
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
    mov.w @(DAT_ce310b6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce310ac
    mov.b @(0x6,r14),r0
    mov 0x02,r5
    mov.l @(PTR_ce310d8,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce310b6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce310d4,pc),r0
    fmov.s @r0,fr2
    mov 0x68,r0
    fneg fr3
    fdiv fr2,fr3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce310dc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce310ac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310b2:
    #data 0x0141
DAT_ce310b4:
    #data 0x01d2
DAT_ce310b6:
    #data 0x041c
    #align4

PTR_ce310b8:
    #data loc_8c034dee
PTR_ce310bc:
    #data FUN_ce3336c
PTR_ce310c0:
    #data PTR_ce336e4
DAT_ce310c4:
    #data 0x41555555
DAT_ce310c8:
    #data 0xc1555555
DAT_ce310cc:
    #data 0x41092492
DAT_ce310d0:
    #data 0xbf4db6db
DAT_ce310d4:
    #data 0x41000000
PTR_ce310d8:
    #data loc_8c034e8c
PTR_ce310dc:
    #data loc_8c0511b4

;=============================================

LAB_ce310e0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce311bc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310fa
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce311c0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce310fa:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31102:
    mov r4,r3
    mov.l @(PTR_ce311c4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31114:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce311b6,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce311c8,pc),r3
    jmp @r3
    mov 0x12,r5

LAB_ce31128:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce311bc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31140
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce31140:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31148:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3117e
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce311d0,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce311cc,pc),r0
    extu.b r3,r3
    jsr @r2
    mov.b @(r0,r3),r8
    lds.l @r15+,PR
    mov r8,r6
    and 0x01,r0
    mov.l @(PTR_ce311c8,pc),r3
    add r0,r6
    mov.l @r15+,r8
    mov 0x13,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3117e:
    mov.l @(PTR_ce311bc,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce311d4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce3119a
    lds.l @r15+,PR
    mov.l @(PTR_ce311c0,pc),r2
    mov r14,r4
    mov.l @r15+,r8
    jmp @r2
    mov.l @r15+,r14

LAB_ce3119a:
    lds.l @r15+,PR
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

LAB_ce311a2:
    mov.w @(DAT_ce311b8,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce311d8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311b6:
    #data 0x012c
DAT_ce311b8:
    #data 0x01e9
    #align4

PTR_ce311bc:
    #data loc_8c034dee
PTR_ce311c0:
    #data FUN_ce3336c
PTR_ce311c4:
    #data PTR_ce336f0
PTR_ce311c8:
    #data loc_8c034e8c
PTR_ce311cc:
    #data DAT_ce336f8
PTR_ce311d0:
    #data loc_8c03319e
PTR_ce311d4:
    #data loc_8c046c8a
PTR_ce311d8:
    #data PTR_ce33700

;=============================================

LAB_ce311dc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce31244
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3129c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce312a0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31290,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce312a4,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31292,pc),r0
    mov 0x30,r2
    mov.l @(PTR_ce312a8,pc),r3
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
    mov.w @(DAT_ce31294,pc),r0
    mov.l @(PTR_ce312ac,pc),r2
    mov.b @(r0,r14),r6
    add 0x38,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce312b0,pc),r3
    mov 0x04,r5
    jsr @r3
    mov r14,r4

LAB_ce31244:
    mov.l @(PTR_ce312b4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3125c
    lds.l @r15+,PR
    mov.l @(PTR_ce312b8,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3125c:
    mov.w @(DAT_ce31296,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31288
    mov.l @(PTR_ce312b0,pc),r3
    mov 0x20,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce312bc,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce312c0,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31298,pc),r0
    mov 0x10,r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)

LAB_ce31288:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31290:
    #data 0x01f9
DAT_ce31292:
    #data 0x01a1
DAT_ce31294:
    #data 0x02c0
DAT_ce31296:
    #data 0x0141
DAT_ce31298:
    #data 0x027b
    #align4

PTR_ce3129c:
    #data loc_8c05218a
PTR_ce312a0:
    #data loc_8c05115a
PTR_ce312a4:
    #data loc_8c056de4
PTR_ce312a8:
    #data loc_8c2896b0
PTR_ce312ac:
    #data loc_8c034e8c
PTR_ce312b0:
    #data loc_8c042008
PTR_ce312b4:
    #data loc_8c034dee
PTR_ce312b8:
    #data FUN_ce3336c
PTR_ce312bc:
    #data loc_8c0a1d8c
PTR_ce312c0:
    #data loc_8c0e6c28

;=============================================

LAB_ce312c4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce31358
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31418,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3140a,pc),r0
    mov 0x32,r2
    mov.l @(PTR_ce3141c,pc),r3
    mov 0x0A,r5
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
    mov 0x02,r2
    mov.w @(DAT_ce3140c,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce31420,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3140e,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31424,pc),r3
    mov.b @(r0,r14),r6
    add 0x3C,r6
    jsr @r3
    mov r14,r4
    mov.l @(DAT_ce31428,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r5
    lds r1,FPUL
    mov.l @(DAT_ce3142c,pc),r1
    mov.l @(PTR_ce31434,pc),r3
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce31430,pc),r1
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
    jsr @r3
    mov r14,r4

LAB_ce31358:
    mova @(DAT_ce31438,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31410,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bt/s LAB_ce313a4
    mov r14,r4
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr2
    fmov.s @(r0,r14),fr1
    mov 0x68,r1
    add r14,r1
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr1
    fmov.s @r1,fr2
    mov 0x60,r1
    add r14,r1
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fmov.s @r1,fr2
    mov 0x6C,r1
    add r14,r1
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr1
    fmov.s @r1,fr2
    fadd fr2,fr1
    fmov fr1,@(r0,r14)

LAB_ce313a4:
    mov.l @(PTR_ce3143c,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313c4
    mova @(DAT_ce31440,pc),r0
    mov.l @(PTR_ce31444,pc),r3
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce313c4:
    mov.w @(DAT_ce31412,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce313f0
    mov.l @(PTR_ce31434,pc),r3
    mov 0x20,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31448,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3144c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31414,pc),r0
    mov 0x10,r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)

LAB_ce313f0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce313f8:
    mov r4,r3
    mov.l @(PTR_ce31450,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3140a:
    #data 0x01a1
DAT_ce3140c:
    #data 0x01f9
DAT_ce3140e:
    #data 0x02c0
DAT_ce31410:
    #data 0x041c
DAT_ce31412:
    #data 0x0141
DAT_ce31414:
    #data 0x027b
    #align4

PTR_ce31418:
    #data loc_8c05218a
PTR_ce3141c:
    #data loc_8c2896b0
PTR_ce31420:
    #data loc_8c056de4
PTR_ce31424:
    #data loc_8c034e8c
DAT_ce31428:
    #data 0x41800000
DAT_ce3142c:
    #data 0x41000000
DAT_ce31430:
    #data 0x42800000
PTR_ce31434:
    #data loc_8c042008
DAT_ce31438:
    #data 0xc2092492
PTR_ce3143c:
    #data loc_8c034dee
DAT_ce31440:
    #data 0xbf4db6db
PTR_ce31444:
    #data loc_8c05176e
PTR_ce31448:
    #data loc_8c0a1d8c
PTR_ce3144c:
    #data loc_8c0e6c28
PTR_ce31450:
    #data PTR_ce33744

;=============================================

LAB_ce31454:
    mov.w @(DAT_ce31556,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31470
    mov.w @(DAT_ce3155a,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31558,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31470:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31570,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31574,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3155c,pc),r0
    mov 0x36,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31578,pc),r3
    mov 0x15,r5
    mov.l r4,@(r0,r14)
    mov 0x04,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3155e,pc),r0
    mov.l @(PTR_ce3157c,pc),r2
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31560,pc),r0
    mov.w r0,@(0x1c,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce31562,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31580,pc),r3
    mov 0x14,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31598
    mov.l @r15+,r14

LAB_ce314d6:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31564,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31566,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31556,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce314fa
    bra LAB_ce314fc
    mov 0x02,r3

LAB_ce314fa:
    mov 0x00,r3

LAB_ce314fc:
    mov.w @(DAT_ce31568,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31584,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3156a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3154c
    mov.w @(DAT_ce3155a,pc),r0
    mov 0x00,r13
    mov.l @(PTR_ce31588,pc),r3
    mov 0x01,r5
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3156a,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3156c,pc),r0
    mov r15,r5
    mov.l @(PTR_ce31594,pc),r3
    mov 0x01,r6
    mov.l r13,@(r0,r14)
    mova @(DAT_ce3158c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31590,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce3154c:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31556:
    #data 0x0255
DAT_ce31558:
    #data 0x00ff
DAT_ce3155a:
    #data 0x03f0
DAT_ce3155c:
    #data 0x01a1
DAT_ce3155e:
    #data 0x01f9
DAT_ce31560:
    #data 0x0080
DAT_ce31562:
    #data 0x041c
DAT_ce31564:
    #data 0x03f8
DAT_ce31566:
    #data 0x0328
DAT_ce31568:
    #data 0x03f1
DAT_ce3156a:
    #data 0x0141
DAT_ce3156c:
    #data 0x02a4
    #align4

PTR_ce31570:
    #data loc_8c05218a
PTR_ce31574:
    #data loc_8c05115a
PTR_ce31578:
    #data loc_8c2896b0
PTR_ce3157c:
    #data loc_8c034e8c
PTR_ce31580:
    #data loc_8c042008
PTR_ce31584:
    #data loc_8c034dee
PTR_ce31588:
    #data loc_8c035162
DAT_ce3158c:
    #data 0x4226aaaa
DAT_ce31590:
    #data 0x433a6db6
PTR_ce31594:
    #data loc_8c050834

;=============================================

LAB_ce31598:
    mov.w @(DAT_ce31674,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31676,pc),r0
    mov.l @(PTR_ce31680,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt/s LAB_ce315e6
    mov 0x00,r13
    mov.w @(DAT_ce31678,pc),r0
    mov r14,r4
    mov.l @(PTR_ce31684,pc),r3
    mov 0x05,r6
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov 0x15,r5
    mov.w @(DAT_ce3167a,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce315e6:
    mov.l @(PTR_ce31688,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce31602
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bf LAB_ce31602
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31602:
    mov.w @(DAT_ce3167c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3161c
    mov.l @(PTR_ce3168c,pc),r3
    mov 0x1F,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31690,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4

LAB_ce3161c:
    mov.w @(DAT_ce3167e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31632
    mov.b r13,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31694,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31632:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3163a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31680,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3165c
    mov.l @(PTR_ce3168c,pc),r3
    mov 0x2B,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31698,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3165c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31662:
    mov r4,r3
    mov.l @(PTR_ce3169c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31674:
    #data 0x03f8
DAT_ce31676:
    #data 0x0328
DAT_ce31678:
    #data 0x03f9
DAT_ce3167a:
    #data 0x0327
DAT_ce3167c:
    #data 0x0141
DAT_ce3167e:
    #data 0x0140
    #align4

PTR_ce31680:
    #data loc_8c034dee
PTR_ce31684:
    #data loc_8c034e8c
PTR_ce31688:
    #data loc_8c055d7a
PTR_ce3168c:
    #data loc_8c042008
PTR_ce31690:
    #data loc_8c0e6c28
PTR_ce31694:
    #data loc_8c0a2554
PTR_ce31698:
    #data FUN_ce3336c
PTR_ce3169c:
    #data PTR_ce33754

;=============================================

LAB_ce316a0:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x04,r3
    mov.l r13,@-r15
    mov 0x35,r2
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3174c,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3174e,pc),r0
    mov.l @(PTR_ce31764,pc),r3
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
    mov.l @(PTR_ce31768,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3176c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31750,pc),r0
    mov 0x60,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31752,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x20,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31754,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce31756,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3170e
    mov 0x78,r4
    mov.w @(DAT_ce31758,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31710

LAB_ce3170e:
    mov 0x1E,r4

LAB_ce31710:
    mov r4,r0
    nop
    mov.l @(PTR_ce31770,pc),r3
    mov 0x0A,r5
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3175c,pc),r6
    mov 0x15,r5
    mov.w @(DAT_ce3175a,pc),r0
    add r14,r6
    mov.l @(PTR_ce31774,pc),r3
    mov.l @(r0,r14),r0
    mov.b @r6,r6
    shll r0
    mov.l @(PTR_ce31778,pc),r2
    add r0,r3
    extu.b r6,r6
    add r3,r6
    mov.b @r6,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3175e,pc),r0
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce31760,pc),r0
    mov.l r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3174c:
    #data 0x02f4
DAT_ce3174e:
    #data 0x01a1
DAT_ce31750:
    #data 0x041c
DAT_ce31752:
    #data 0x01f9
DAT_ce31754:
    #data 0x02cc
DAT_ce31756:
    #data 0x0525
DAT_ce31758:
    #data 0x0411
DAT_ce3175a:
    #data 0x02c0
DAT_ce3175c:
    #data 0x01a3
DAT_ce3175e:
    #data 0x0142
DAT_ce31760:
    #data 0x02d8
    #align4

PTR_ce31764:
    #data loc_8c2896b0
PTR_ce31768:
    #data loc_8c05218a
PTR_ce3176c:
    #data loc_8c05115a
PTR_ce31770:
    #data loc_8c056de4
PTR_ce31774:
    #data DAT_ce33760
PTR_ce31778:
    #data loc_8c034e8c

;=============================================

LAB_ce3177c:
    mov.w @(DAT_ce31866,pc),r0
    mov 0x04,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l r3,@(r0,r14)
    add 0xE4,r0
    mov.l @(r0,r14),r2
    add 0xFF,r2
    cmp/pz r2
    bt/s LAB_ce317a2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce31868,pc),r0
    mov 0x10,r2
    mov.l @(PTR_ce31874,pc),r3
    mov 0x03,r5
    mov.l r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce317a2:
    mov.l @(PTR_ce31878,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3186a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce317e2
    mov 0x00,r4
    mov.w @(DAT_ce3186c,pc),r0
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce3186a,pc),r0
    mov.b @(r0,r14),r2
    add 0x56,r0
    add r3,r2
    mov.l @(PTR_ce3187c,pc),r3
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
    mov.w @(DAT_ce3186a,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce317e2:
    mov.w @(DAT_ce3186e,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce317f2
    mov.l @(PTR_ce31880,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce317f2:
    mov.l @(PTR_ce31884,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce31804
    mov.w @(DAT_ce31870,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31828

LAB_ce31804:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3182c
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31888,pc),r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31872,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    add 0x01,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31828:
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)

LAB_ce3182c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31832:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31878,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3184c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3188c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3184c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31854:
    mov r4,r3
    mov.l @(PTR_ce31890,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31866:
    #data 0x02f4
DAT_ce31868:
    #data 0x02d8
DAT_ce3186a:
    #data 0x014b
DAT_ce3186c:
    #data 0x02c0
DAT_ce3186e:
    #data 0x0141
DAT_ce31870:
    #data 0x0525
DAT_ce31872:
    #data 0x0158
    #align4

PTR_ce31874:
    #data loc_8c042008
PTR_ce31878:
    #data loc_8c034dee
PTR_ce3187c:
    #data loc_8c2896b0
PTR_ce31880:
    #data loc_8c0a23b8
PTR_ce31884:
    #data loc_8c055d54
PTR_ce31888:
    #data loc_8c034e8c
PTR_ce3188c:
    #data FUN_ce3336c
PTR_ce31890:
    #data PTR_ce33768

;=============================================

LAB_ce31894:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3198e,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x03,r3
    mov.w @(DAT_ce31990,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov 0x2C,r0
    mov.w r0,@(0x1e,r14)
    mov 0x20,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31994,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31998,pc),r2
    mov 0x15,r5
    mov 0x0F,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3199c,pc),r2
    mov 0x02,r1
    mov.w @r2,r3
    cmp/ge r1,r3
    bt LAB_ce318e0
    lds.l @r15+,PR
    mov.l @(PTR_ce319a0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce318e0:
    mov.l @(PTR_ce319a4,pc),r3
    mov 0x1E,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce319a8,pc),r2
    mov r14,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce319a4,pc),r3
    mov 0x15,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31900
    mov.l @r15+,r14

LAB_ce31900:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31922
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce31998,pc),r3
    mov 0x10,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce31922:
    mov.l @(PTR_ce319ac,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x20,r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    cmp/pz r3
    bf LAB_ce31954
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31954
    mov.l @(PTR_ce3199c,pc),r2
    mov 0x02,r1
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov.w @r2,r3
    cmp/ge r1,r3
    bf LAB_ce31954
    mov 0x20,r0
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)

LAB_ce31954:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3195a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce319ac,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31974
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce319a0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31974:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3197c:
    mov r4,r3
    mov.l @(PTR_ce319b0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3198e:
    #data 0x01f9
DAT_ce31990:
    #data 0x041c
    #align4

PTR_ce31994:
    #data loc_8c05115a
PTR_ce31998:
    #data loc_8c034e8c
PTR_ce3199c:
    #data loc_8c287ae8
PTR_ce319a0:
    #data FUN_ce3336c
PTR_ce319a4:
    #data loc_8c042008
PTR_ce319a8:
    #data loc_8c0a2888
PTR_ce319ac:
    #data loc_8c034dee
PTR_ce319b0:
    #data PTR_ce33774

;=============================================

LAB_ce319b4:
    mov.w @(DAT_ce31a9c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce319d0
    mov.w @(DAT_ce31aa0,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31a9e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce319d0:
    mov.w @(DAT_ce31aa2,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce31ab0,pc),r3
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31aa4,pc),r0
    mov 0x02,r2
    mov 0x40,r3
    mov.b r2,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce31aa6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31aa8,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31ab4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31ab8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31abc,pc),r3
    mov 0x01,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31aaa,pc),r0
    mov 0x03,r5
    mov.l @(PTR_ce31ac0,pc),r4
    mov.l @(PTR_ce31ad0,pc),r3
    fmov.s @(r0,r4),fr3
    add 0xFC,r0
    fmov.s @(r0,r4),fr2
    mov 0x34,r0
    fmov.s @(r0,r14),fr1
    mova @(DAT_ce31ac4,pc),r0
    fadd fr3,fr2
    fldi1 fr3
    fadd fr3,fr3
    fdiv fr3,fr2
    fsub fr1,fr2
    fmov.s @r0,fr1
    mov 0x5C,r0
    fdiv fr1,fr2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fldi0 fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31ac8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31acc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31ad4,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a78:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31aac,pc),r0
    mov r4,r14
    mov 0x02,r4
    mov.b r4,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce31aae,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31a9c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31ad8
    bra LAB_ce31ada
    mov 0x02,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a9c:
    #data 0x0255
DAT_ce31a9e:
    #data 0x00ff
DAT_ce31aa0:
    #data 0x03f0
DAT_ce31aa2:
    #data 0x01f5
DAT_ce31aa4:
    #data 0x01f9
DAT_ce31aa6:
    #data 0x041c
DAT_ce31aa8:
    #data 0x01a1
DAT_ce31aaa:
    #data 0x008c
DAT_ce31aac:
    #data 0x03f8
DAT_ce31aae:
    #data 0x0328
    #align4

PTR_ce31ab0:
    #data loc_8c05218a
PTR_ce31ab4:
    #data loc_8c2896b0
PTR_ce31ab8:
    #data loc_8c05115a
PTR_ce31abc:
    #data loc_8c02fec4
PTR_ce31ac0:
    #data loc_8c26a518
DAT_ce31ac4:
    #data 0x41800000
DAT_ce31ac8:
    #data 0x41092492
DAT_ce31acc:
    #data 0xbf4db6db
PTR_ce31ad0:
    #data loc_8c042008
PTR_ce31ad4:
    #data loc_8c034e8c

;=============================================

LAB_ce31ad8:
    mov 0x00,r2

LAB_ce31ada:
    mov.w @(DAT_ce31b72,pc),r0
    mov 0x5C,r1
    add r14,r1
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31b74,pc),r0
    mov.b r4,@(r0,r14)
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31b68
    mov.w @(DAT_ce31b76,pc),r0
    mov 0x00,r13
    mov.l @(PTR_ce31b7c,pc),r3
    mov 0x01,r5
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31b78,pc),r0
    mov r15,r5
    fldi0 fr3
    mov 0x01,r6
    mov.l r13,@(r0,r14)
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31b80,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31b84,pc),r0
    mov.l @(PTR_ce31b88,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31b68:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b72:
    #data 0x03f1
DAT_ce31b74:
    #data 0x01f5
DAT_ce31b76:
    #data 0x03f0
DAT_ce31b78:
    #data 0x02a4
    #align4

PTR_ce31b7c:
    #data loc_8c035162
DAT_ce31b80:
    #data 0xc1555555
DAT_ce31b84:
    #data 0x435edb6d
PTR_ce31b88:
    #data loc_8c050834

;=============================================

LAB_ce31b8c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31cbe,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31cc0,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31cc2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31bae
    mov.l @(PTR_ce31cd0,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31bae:
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
    mov.w @(DAT_ce31cc4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31c60
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31cc4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31cc6,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31cd4,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31cc8,pc),r0
    fmov.s fr3,@r15
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31c1a
    fmov.s @r15,fr3
    fneg fr3
    fmov.s fr3,@r15

LAB_ce31c1a:
    mov 0x34,r0
    fmov.s @r15,fr2
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce31cd8,pc),r0
    mov.l @(PTR_ce31cdc,pc),r3
    mov 0x00,r7
    fadd fr3,fr2
    mov 0x0F,r6
    fmov.s fr2,@r15
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce31cca,pc),r0
    mov.b @(r0,r14),r5
    extu.b r5,r5
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce31ce0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31ce4,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31ce8,pc),r2
    mov 0x31,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31cec,pc),r4
    mov 0x03,r0
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce31c60:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31c68:
    mov.w @(DAT_ce31cbe,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31cc0,pc),r0
    mov.l @(PTR_ce31cd0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31ca6
    mov.w @(DAT_ce31ccc,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31cf0,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31cce,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    jsr @r3
    mov.b r4,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31cf4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31ca6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31cac:
    mov r4,r3
    mov.l @(PTR_ce31cf8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31cbe:
    #data 0x03f8
DAT_ce31cc0:
    #data 0x0328
DAT_ce31cc2:
    #data 0x0141
DAT_ce31cc4:
    #data 0x041c
DAT_ce31cc6:
    #data 0x01f9
DAT_ce31cc8:
    #data 0x0130
DAT_ce31cca:
    #data 0x01d2
DAT_ce31ccc:
    #data 0x03f9
DAT_ce31cce:
    #data 0x0327
    #align4

PTR_ce31cd0:
    #data loc_8c034dee
DAT_ce31cd4:
    #data 0xc1555555
DAT_ce31cd8:
    #data 0x42892492
PTR_ce31cdc:
    #data loc_8c0fd966
PTR_ce31ce0:
    #data loc_8c0511b4
PTR_ce31ce4:
    #data loc_8c0a2a50
PTR_ce31ce8:
    #data loc_8c04223a
PTR_ce31cec:
    #data loc_8c26a518
PTR_ce31cf0:
    #data loc_8c02fd26
PTR_ce31cf4:
    #data FUN_ce3336c
PTR_ce31cf8:
    #data PTR_ce33784

;=============================================

LAB_ce31cfc:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x35,r3
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31e54,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31e68,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31e6c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31e56,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x20,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31e58,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31e70,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31e5a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31d56
    mova @(DAT_ce31e74,pc),r0
    fmov.s @r0,fr4

LAB_ce31d56:
    mov 0x5C,r0
    mov.l @(PTR_ce31e78,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    mov 0x0B,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31e5c,pc),r0
    mov.l @(PTR_ce31e7c,pc),r3
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce31e5e,pc),r0
    mov.l r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31e80,pc),r2
    mov 0x0A,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31d88:
    mov.w @(DAT_ce31e5e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    add 0xFF,r3
    cmp/pz r3
    mov.l r3,@(r0,r14)
    bt LAB_ce31da8
    mov.l @(PTR_ce31e84,pc),r3
    mov 0x08,r2
    mov 0x1A,r5
    mov.l r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce31da8:
    mov 0x5C,r1
    mov.l @(PTR_ce31e88,pc),r3
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    mov 0x00,r13
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
    bt LAB_ce31e26
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce31e70,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce31e8c,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce31e60,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31df0
    mova @(DAT_ce31e74,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce31e90,pc),r0
    fmov.s @r0,fr5

LAB_ce31df0:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)
    mov 0x35,r3
    mov.w @(DAT_ce31e54,pc),r0
    mov 0x15,r5
    mov 0x40,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31e68,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31e78,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31e26:
    mov.w @(DAT_ce31e62,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bt LAB_ce31ea0
    mov.w @(DAT_ce31e64,pc),r0
    mov.l @(PTR_ce31e68,pc),r3
    mov.l @(r0,r14),r2
    mov.w @(DAT_ce31e54,pc),r0
    add r2,r4
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
    add 0x7C,r2
    bra LAB_ce31e94
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e54:
    #data 0x01a1
DAT_ce31e56:
    #data 0x01f9
DAT_ce31e58:
    #data 0x041c
DAT_ce31e5a:
    #data 0x01d2
DAT_ce31e5c:
    #data 0x0142
DAT_ce31e5e:
    #data 0x02d8
DAT_ce31e60:
    #data 0x0130
DAT_ce31e62:
    #data 0x014b
DAT_ce31e64:
    #data 0x02c0
    #align4

PTR_ce31e68:
    #data loc_8c2896b0
PTR_ce31e6c:
    #data loc_8c05115a
DAT_ce31e70:
    #data 0xc0d55555
DAT_ce31e74:
    #data 0x40d55555
PTR_ce31e78:
    #data loc_8c034e8c
PTR_ce31e7c:
    #data loc_8c0a23b8
PTR_ce31e80:
    #data loc_8c056de4
PTR_ce31e84:
    #data loc_8c04223a
PTR_ce31e88:
    #data loc_8c034dee
DAT_ce31e8c:
    #data 0x3e555555
DAT_ce31e90:
    #data 0xbe555555

;=============================================

LAB_ce31e94:
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31fcc,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce31ea0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31ea8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31fdc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31ec2
    lds.l @r15+,PR
    mov.l @(PTR_ce31fe0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ec2:
    mov.w @(DAT_ce31fce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31efe
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
    bt LAB_ce31efe
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce31efe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f04:
    mov r4,r3
    mov.l @(PTR_ce31fe4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31f16:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31fe8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31fec,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31fd0,pc),r0
    mov 0x35,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31ff0,pc),r3
    mov 0x05,r6
    mov.l r4,@(r0,r14)
    mov 0x14,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31fd2,pc),r0
    mov.l @(PTR_ce31ff4,pc),r2
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.w @(DAT_ce31fd4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r2
    mov.l @r15+,r14

LAB_ce31f6e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31fd6,pc),r0
    mov r4,r14
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31fdc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31fce,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31fc4
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31fce,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31ff8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31ffc,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31fd8,pc),r0
    mov 0x00,r3
    mov r15,r5
    mov 0x01,r6
    mov.l r3,@(r0,r14)
    mova @(DAT_ce32000,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32004,pc),r0
    mov.l @(PTR_ce32008,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31fc4:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31fcc:
    #data 0x014b
DAT_ce31fce:
    #data 0x0141
DAT_ce31fd0:
    #data 0x01a1
DAT_ce31fd2:
    #data 0x01f9
DAT_ce31fd4:
    #data 0x041c
DAT_ce31fd6:
    #data 0x0328
DAT_ce31fd8:
    #data 0x02a4
    #align4

PTR_ce31fdc:
    #data loc_8c034dee
PTR_ce31fe0:
    #data FUN_ce3336c
PTR_ce31fe4:
    #data PTR_ce33790
PTR_ce31fe8:
    #data loc_8c05218a
PTR_ce31fec:
    #data loc_8c05115a
PTR_ce31ff0:
    #data loc_8c2896b0
PTR_ce31ff4:
    #data loc_8c034e8c
PTR_ce31ff8:
    #data loc_8c042008
PTR_ce31ffc:
    #data loc_8c035162
DAT_ce32000:
    #data 0x41ad5555
DAT_ce32004:
    #data 0x4320b6db
PTR_ce32008:
    #data loc_8c050834

;=============================================

LAB_ce3200c:
    mov.w @(DAT_ce320f4,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce320fc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32038
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32100,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32038:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3203e:
    mov.w @(DAT_ce320f4,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce320fc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce320f6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32090
    mov.b @(0x6,r14),r0
    mov 0x08,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5A,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce320f8,pc),r0
    mov.l r3,@(r0,r14)
    mova @(DAT_ce32104,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce320fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32078
    mova @(DAT_ce32108,pc),r0
    fmov.s @r0,fr4

LAB_ce32078:
    mov 0x5C,r0
    mov.l @(PTR_ce3210c,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce32096
    mov.l @r15+,r14

LAB_ce32090:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32096:
    mov.w @(DAT_ce320f4,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0xB0,r0
    mov.l @(r0,r14),r2
    add 0xFF,r2
    cmp/pz r2
    bt/s LAB_ce320be
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce320f8,pc),r0
    mov 0x08,r2
    mov.l @(PTR_ce32110,pc),r3
    mov 0x1A,r5
    mov.l r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce320be:
    mov 0x5C,r1
    mov.l @(PTR_ce320fc,pc),r3
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    mov 0x00,r13
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
    bt LAB_ce32118
    mov.l @(PTR_ce32114,pc),r3
    mov 0x03,r5
    jsr @r3
    mov r14,r4
    bra LAB_ce32180
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320f4:
    #data 0x0328
DAT_ce320f6:
    #data 0x0141
DAT_ce320f8:
    #data 0x02d8
DAT_ce320fa:
    #data 0x01d2
    #align4

PTR_ce320fc:
    #data loc_8c034dee
PTR_ce32100:
    #data loc_8c034e8c
DAT_ce32104:
    #data 0xc1200000
DAT_ce32108:
    #data 0x41200000
PTR_ce3210c:
    #data loc_8c0a23b8
PTR_ce32110:
    #data loc_8c04223a
PTR_ce32114:
    #data loc_8c042008

;=============================================

LAB_ce32118:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce32180
    mov.w @(DAT_ce3221c,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32228,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce3222c,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce3221e,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3214a
    mova @(DAT_ce32230,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce32234,pc),r0
    fmov.s @r0,fr5

LAB_ce3214a:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)
    mov 0x3C,r3
    mov.w @(DAT_ce32220,pc),r0
    mov 0x16,r5
    mov 0x07,r6
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
    mov.l @(PTR_ce3223c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32180:
    mov.w @(DAT_ce32222,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce321b8
    mov.w @(DAT_ce32224,pc),r0
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce32222,pc),r0
    mov.b @(r0,r14),r2
    add 0x56,r0
    add r3,r2
    mov.l @(PTR_ce32238,pc),r3
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
    mov.w @(DAT_ce32222,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce321b8:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce321c0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32240,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321da
    lds.l @r15+,PR
    mov.l @(PTR_ce32244,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce321da:
    mov.w @(DAT_ce32226,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32216
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
    bt LAB_ce32216
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce32216:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3221c:
    #data 0x0327
DAT_ce3221e:
    #data 0x0130
DAT_ce32220:
    #data 0x01a1
DAT_ce32222:
    #data 0x014b
DAT_ce32224:
    #data 0x02c0
DAT_ce32226:
    #data 0x0141
    #align4

DAT_ce32228:
    #data 0xc0d55555
DAT_ce3222c:
    #data 0x3e200000
DAT_ce32230:
    #data 0x40d55555
DAT_ce32234:
    #data 0xbe200000
PTR_ce32238:
    #data loc_8c2896b0
PTR_ce3223c:
    #data loc_8c034e8c
PTR_ce32240:
    #data loc_8c034dee
PTR_ce32244:
    #data FUN_ce3336c

;=============================================

LAB_ce32248:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce32318
    mov 0x00,r13
    mov.w @(DAT_ce32332,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32274
    mov.w @(DAT_ce32336,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32334,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32274:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32344,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32338,pc),r0
    mov 0x34,r2
    mov.l @(PTR_ce32348,pc),r3
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
    mov.w @(DAT_ce3233a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce322d6
    fldi0 fr15
    mov.w @(DAT_ce3233a,pc),r0
    mov.l @(PTR_ce3234c,pc),r2
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3233c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    bra LAB_ce32306
    mov r13,r12

LAB_ce322d6:
    mov.l @(DAT_ce32350,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    mov 0x0E,r12
    lds r1,FPUL
    mov.l @(DAT_ce32354,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce32358,pc),r1
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
    fmov fr15,@(r0,r14)

LAB_ce32306:
    mov.l @(PTR_ce3235c,pc),r3
    mov 0x15,r5
    mov r12,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32360,pc),r2
    mov 0x04,r5
    jsr @r2
    mov r14,r4

LAB_ce32318:
    mov.w @(DAT_ce3233e,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32340,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32332,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32364
    bra LAB_ce32366
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32332:
    #data 0x0255
DAT_ce32334:
    #data 0x00ff
DAT_ce32336:
    #data 0x03f0
DAT_ce32338:
    #data 0x01a1
DAT_ce3233a:
    #data 0x01f9
DAT_ce3233c:
    #data 0x041c
DAT_ce3233e:
    #data 0x03f8
DAT_ce32340:
    #data 0x0328
    #align4

PTR_ce32344:
    #data loc_8c05218a
PTR_ce32348:
    #data loc_8c2896b0
PTR_ce3234c:
    #data loc_8c05115a
DAT_ce32350:
    #data 0x41800000
DAT_ce32354:
    #data 0x41000000
DAT_ce32358:
    #data 0x42800000
PTR_ce3235c:
    #data loc_8c034e8c
PTR_ce32360:
    #data loc_8c042008

;=============================================

LAB_ce32364:
    mov 0x00,r3

LAB_ce32366:
    mov.w @(DAT_ce3247a,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce3248c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce3247c,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bt/s LAB_ce323b6
    mov r14,r4
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr2
    fmov.s @(r0,r14),fr1
    mov 0x68,r1
    add r14,r1
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr1
    fmov.s @r1,fr2
    mov 0x60,r1
    add r14,r1
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fmov.s @r1,fr2
    mov 0x6C,r1
    add r14,r1
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr1
    fmov.s @r1,fr2
    fadd fr2,fr1
    fmov fr1,@(r0,r14)

LAB_ce323b6:
    mov.l @(PTR_ce32490,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce323ee
    mov.w @(DAT_ce3247e,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32480,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32482,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce323e6
    mov.l @(PTR_ce32494,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce3246c
    nop

LAB_ce323e6:
    bsr FUN_ce3336c
    mov r14,r4
    bra LAB_ce3246c
    nop

LAB_ce323ee:
    mov.w @(DAT_ce32484,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3241c
    mov.l @(PTR_ce32498,pc),r12
    mov 0x01,r5
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov 0x02,r5
    jsr @r12
    mov r14,r4
    mov 0x03,r5
    jsr @r12
    mov r14,r4
    mov.l @(PTR_ce3249c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce324a0,pc),r2
    mov 0x20,r5
    jsr @r2
    mov r14,r4

LAB_ce3241c:
    mov.w @(DAT_ce32486,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3246c
    mov.w @(DAT_ce32488,pc),r0
    mov 0x01,r5
    mov.l @(PTR_ce324a4,pc),r3
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32486,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3248a,pc),r0
    mov.l r13,@(r0,r14)
    mova @(DAT_ce324a8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce324ac,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce32482,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce32464
    mov 0x01,r6
    mova @(DAT_ce324b0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce324b4,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)

LAB_ce32464:
    mov.l @(PTR_ce324b8,pc),r3
    mov r15,r5
    jsr @r3
    mov r14,r4

LAB_ce3246c:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3247a:
    #data 0x03f1
DAT_ce3247c:
    #data 0x041c
DAT_ce3247e:
    #data 0x03f9
DAT_ce32480:
    #data 0x0327
DAT_ce32482:
    #data 0x01f9
DAT_ce32484:
    #data 0x0141
DAT_ce32486:
    #data 0x0140
DAT_ce32488:
    #data 0x03f0
DAT_ce3248a:
    #data 0x02a4
    #align4

DAT_ce3248c:
    #data 0xc2cdb6db
PTR_ce32490:
    #data loc_8c034dee
PTR_ce32494:
    #data loc_8c05176e
PTR_ce32498:
    #data loc_8c0a1d8c
PTR_ce3249c:
    #data loc_8c0e6c28
PTR_ce324a0:
    #data loc_8c042008
PTR_ce324a4:
    #data loc_8c035162
DAT_ce324a8:
    #data 0x4226aaaa
DAT_ce324ac:
    #data 0x433a6db6
DAT_ce324b0:
    #data 0xc0d55555
DAT_ce324b4:
    #data 0x4382b6db
PTR_ce324b8:
    #data loc_8c050834

;=============================================

LAB_ce324bc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce324f6
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32536,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce324e4
    mov.w @(DAT_ce32536,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce32538,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce324e4:
    mov.l @(PTR_ce3253c,pc),r2
    mov 0x15,r5
    mov 0x13,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32540,pc),r3
    mov 0x1E,r5
    jsr @r3
    mov r14,r4

LAB_ce324f6:
    mov.l @(PTR_ce32544,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3251e
    mov.w @(DAT_ce32536,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32516
    lds.l @r15+,PR
    mov.l @(PTR_ce32548,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32516:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce3336c
    mov.l @r15+,r14

LAB_ce3251e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32524:
    mov r4,r3
    mov.l @(PTR_ce3254c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32536:
    #data 0x01f9
    #align4

PTR_ce32538:
    #data loc_8c05115a
PTR_ce3253c:
    #data loc_8c034e8c
PTR_ce32540:
    #data loc_8c042008
PTR_ce32544:
    #data loc_8c034dee
PTR_ce32548:
    #data loc_8c05176e
PTR_ce3254c:
    #data PTR_ce337a8

;=============================================

LAB_ce32550:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov 0x28,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce325f8,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce325fa,pc),r0
    mov.l @(PTR_ce32608,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3260c,pc),r2
    mov 0x15,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32610,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3258c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.l @(PTR_ce32614,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce325fc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce325b2
    bra LAB_ce32778
    nop

LAB_ce325b2:
    mov.w @(DAT_ce325fe,pc),r0
    mov 0x05,r3
    mov 0x00,r13
    mov.b r3,@(r0,r14)
    mov r13,r12
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce325fc,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32600,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce325d2
    mov 0x02,r10
    mov r10,r12

LAB_ce325d2:
    mov.w @(DAT_ce32602,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce325de
    mov 0x01,r11
    add 0x01,r12

LAB_ce325de:
    tst r12,r12
    bf LAB_ce325e4
    mov r11,r12

LAB_ce325e4:
    mov.w @(DAT_ce32604,pc),r0
    mov.l @(r0,r14),r2
    cmp/eq r12,r2
    bt LAB_ce3261c
    mov.l @(PTR_ce32618,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32606,pc),r0
    bra LAB_ce3262c
    mov.l r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325f8:
    #data 0x01f9
DAT_ce325fa:
    #data 0x041c
DAT_ce325fc:
    #data 0x0141
DAT_ce325fe:
    #data 0x0328
DAT_ce32600:
    #data 0x01fe
DAT_ce32602:
    #data 0x01a3
DAT_ce32604:
    #data 0x02c0
DAT_ce32606:
    #data 0x02f8
    #align4

PTR_ce32608:
    #data loc_8c034e8c
PTR_ce3260c:
    #data loc_8c042008
PTR_ce32610:
    #data loc_8c05115a
PTR_ce32614:
    #data loc_8c034dee
PTR_ce32618:
    #data loc_8c0e73dc

;=============================================

LAB_ce3261c:
    mov.w @(DAT_ce326ca,pc),r0
    mov.l @(r0,r14),r2
    add 0x01,r2
    mov.l r2,@(r0,r14)
    mov.l @(r0,r14),r3
    cmp/gt r10,r3
    bf LAB_ce3262c
    mov.l r10,@(r0,r14)

LAB_ce3262c:
    mov.w @(DAT_ce326cc,pc),r0
    mov.w @(DAT_ce326ce,pc),r3
    mov.l r12,@(r0,r14)
    add 0xF8,r0
    mov.l r3,@(r0,r14)
    add 0x0C,r0
    mov.w @(DAT_ce326d0,pc),r4
    mov.l r13,@(r0,r14)
    mov 0x54,r0
    add r14,r4
    mov.l @(PTR_ce326dc,pc),r2
    mov.l @(r0,r4),r0
    mov.l @(0x1c,r4),r3
    shll2 r0
    mov.w @(DAT_ce326d0,pc),r4
    add r0,r2
    mov.w @(DAT_ce326d2,pc),r0
    add r3,r2
    mov.b @r2,r1
    add r14,r4
    mov.l @(PTR_ce326e0,pc),r2
    mov.b r1,@(r0,r14)
    mov 0x54,r0
    mov.l @(r0,r4),r0
    mov.l @(0x1c,r4),r3
    shll2 r0
    add r0,r2
    mov.w @(DAT_ce326d4,pc),r0
    add r3,r2
    mov.b @r2,r1
    mov.b r1,@(r0,r14)
    add 0xFC,r0
    mov.w @(DAT_ce326d0,pc),r4
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce326cc,pc),r0
    add r14,r4
    mov.w @(DAT_ce326d6,pc),r3
    add 0x18,r4
    mov.l @r4,r12
    mov.l r3,@r4
    mov.l @(r0,r14),r0
    cmp/eq 0x01,r0
    bt LAB_ce32692
    cmp/eq 0x02,r0
    bt LAB_ce3269c
    cmp/eq 0x03,r0
    bt LAB_ce326c0
    cmp/eq 0x00,r0
    bt LAB_ce326f4
    bra LAB_ce326f8
    nop

LAB_ce32692:
    mov.l @(PTR_ce326e4,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce326f8
    nop

LAB_ce3269c:
    mov.l @(PTR_ce326e8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce326ca,pc),r0
    mov.l @(r0,r14),r2
    cmp/ge r10,r2
    bt LAB_ce326ba
    mov.w @(DAT_ce326d6,pc),r5
    mov 0x00,r7
    mov.l @(PTR_ce326ec,pc),r2
    mov r7,r6
    jsr @r2
    mov r14,r4
    bra LAB_ce326f8
    nop

LAB_ce326ba:
    mov.w @(DAT_ce326d8,pc),r0
    bra LAB_ce326f8
    mov.b r11,@(r0,r14)

LAB_ce326c0:
    mov.l @(PTR_ce326f0,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce326f8
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326ca:
    #data 0x02f8
DAT_ce326cc:
    #data 0x02c0
DAT_ce326ce:
    #data 0x00ff
DAT_ce326d0:
    #data 0x02a4
DAT_ce326d2:
    #data 0x0205
DAT_ce326d4:
    #data 0x0206
DAT_ce326d6:
    #data 0x0480
DAT_ce326d8:
    #data 0x0202
    #align4

PTR_ce326dc:
    #data DAT_ce337b8
PTR_ce326e0:
    #data DAT_ce337c4
PTR_ce326e4:
    #data loc_8c0e7250
PTR_ce326e8:
    #data loc_8c0e6f5c
PTR_ce326ec:
    #data loc_8c059a44
PTR_ce326f0:
    #data loc_8c0e6de4

;=============================================

LAB_ce326f4:
    mov.w @(DAT_ce3281a,pc),r0
    mov.l r13,@(r0,r14)

LAB_ce326f8:
    mov.w @(DAT_ce3281c,pc),r6
    mov.l @(PTR_ce3282c,pc),r3
    add r14,r6
    mov.l r6,@r15
    add 0x54,r6
    mov.l @r15,r5
    mov.l @r6,r6
    add 0x18,r5
    add 0x0A,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3281e,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32722
    mov.w @(DAT_ce32820,pc),r4
    cmp/ge r4,r12
    bt LAB_ce3271e
    mov r4,r12

LAB_ce3271e:
    mov.w @(DAT_ce3281a,pc),r0
    mov.l r12,@(r0,r14)

LAB_ce32722:
    mov.l @(PTR_ce32830,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3281c,pc),r0
    mov r15,r5
    mov.l @(PTR_ce3283c,pc),r3
    add 0x04,r5
    mov.l r13,@(r0,r14)
    mova @(DAT_ce32834,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    mov 0x01,r6
    fmov fr3,@(r0,r15)
    mova @(DAT_ce32838,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32822,pc),r0
    mov 0x76,r1
    mov.l @(PTR_ce32840,pc),r2
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32824,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r11,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r2,r3
    extu.b r0,r0
    shll2 r0
    shll2 r0
    add r3,r1
    or 0x01,r0
    mov.b r0,@r1
    mov 0x10,r3
    mov.w @(DAT_ce32826,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce32778:
    add 0x10,r15
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32788:
    mov.w @(DAT_ce32826,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32844,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce327ba
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32848,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce327ba:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce327c0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32844,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce327e2
    mov.w @(DAT_ce32824,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    bra FUN_ce3336c
    mov.l @r15+,r14

LAB_ce327e2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce327e8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce32850
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x25,r6
    mov.w @(DAT_ce32828,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x3C,r0
    mov.l @(PTR_ce32848,pc),r3
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3284c,pc),r2
    mov 0x15,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3281a:
    #data 0x02bc
DAT_ce3281c:
    #data 0x02a4
DAT_ce3281e:
    #data 0x02f8
DAT_ce32820:
    #data 0x0240
DAT_ce32822:
    #data 0x03f9
DAT_ce32824:
    #data 0x0327
DAT_ce32826:
    #data 0x0328
DAT_ce32828:
    #data 0x01f9
    #align4

PTR_ce3282c:
    #data loc_8c0f047c
PTR_ce32830:
    #data loc_8c035162
DAT_ce32834:
    #data 0x41ad5555
DAT_ce32838:
    #data 0x43b84924
PTR_ce3283c:
    #data loc_8c050834
PTR_ce32840:
    #data loc_8c2896b0
PTR_ce32844:
    #data loc_8c034dee
PTR_ce32848:
    #data loc_8c034e8c
PTR_ce3284c:
    #data loc_8c042008

;=============================================

LAB_ce32850:
    mov.l @(PTR_ce32990,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32994,pc),r3
    mov.b @r3,r0
    extu.b r0,r0
    cmp/eq 0x04,r0
    bf LAB_ce32880
    mov.w @(DAT_ce32980,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce32880
    mov.w @(DAT_ce32982,pc),r0
    mov.l @(DAT_ce32998,pc),r1
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r1,r2
    bt LAB_ce32880
    mov.w @(0x1c,r14),r0
    mov 0x01,r3
    cmp/gt r3,r0
    bt LAB_ce32880
    mov 0x02,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32880:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32894
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce3336c
    mov.l @r15+,r14

LAB_ce32894:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3289a:
    mov r4,r3
    mov.l @(PTR_ce3299c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce328ac:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce329a0,pc),r3
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
    mov.w @(DAT_ce32984,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32986,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce329a4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32988,pc),r0
    mov 0x3A,r3
    mov 0x06,r6
    mov r14,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce329a8,pc),r3
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
    mov.l @(PTR_ce329ac,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3291a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32990,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3298a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32958
    mov.b @(0x6,r14),r0
    mov 0x01,r5
    mov.l @(PTR_ce329b0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3298c,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce329bc,pc),r3
    mov r15,r5
    mov.l r2,@(r0,r14)
    mova @(DAT_ce329b4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce329b8,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32958:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32960:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32990,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32978
    mov.l @r15,r4
    add 0x04,r15
    bra FUN_ce3336c
    lds.l @r15+,PR

LAB_ce32978:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32980:
    #data 0x0525
DAT_ce32982:
    #data 0x034a
DAT_ce32984:
    #data 0x01f9
DAT_ce32986:
    #data 0x041c
DAT_ce32988:
    #data 0x01a1
DAT_ce3298a:
    #data 0x0141
DAT_ce3298c:
    #data 0x02a4
    #align4

PTR_ce32990:
    #data loc_8c034dee
PTR_ce32994:
    #data loc_8c2895f0
DAT_ce32998:
    #data 0x00008000
PTR_ce3299c:
    #data PTR_ce337d0
PTR_ce329a0:
    #data loc_8c05218a
PTR_ce329a4:
    #data loc_8c05115a
PTR_ce329a8:
    #data loc_8c2896b0
PTR_ce329ac:
    #data loc_8c034e8c
PTR_ce329b0:
    #data loc_8c035162
DAT_ce329b4:
    #data 0x423aaaaa
DAT_ce329b8:
    #data 0x4322db6d
PTR_ce329bc:
    #data loc_8c050ea4

;=============================================

LAB_ce329c0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce32a24
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32b08,pc),r3
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
    mov.w @(DAT_ce32af4,pc),r0
    mov 0x08,r2
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0xA8,r0
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32b0c,pc),r3
    mov 0x07,r6
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
    mov.l @(PTR_ce32b10,pc),r2
    mov 0x14,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32a24:
    mov.l @(PTR_ce32b14,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a38
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce3336c
    mov.l @r15+,r14

LAB_ce32a38:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a3e:
    mov r4,r3
    mov.l @(PTR_ce32b18,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32a50:
    mov.w @(DAT_ce32af6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32a6c
    mov.w @(DAT_ce32afa,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32af8,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32a6c:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32b08,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32b1c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32afc,pc),r0
    mov 0x41,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32b0c,pc),r3
    mov 0x15,r5
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce32af4,pc),r0
    mov.l @(PTR_ce32b20,pc),r2
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32afe,pc),r0
    mov.w r0,@(0x1c,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce32b00,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32b10,pc),r3
    mov 0x15,r5
    mov 0x04,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce32ad0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32b02,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32b04,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32af6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32b24
    bra LAB_ce32b26
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32af4:
    #data 0x01f9
DAT_ce32af6:
    #data 0x0255
DAT_ce32af8:
    #data 0x00ff
DAT_ce32afa:
    #data 0x03f0
DAT_ce32afc:
    #data 0x01a1
DAT_ce32afe:
    #data 0x0080
DAT_ce32b00:
    #data 0x041c
DAT_ce32b02:
    #data 0x03f8
DAT_ce32b04:
    #data 0x0328
    #align4

PTR_ce32b08:
    #data loc_8c05218a
PTR_ce32b0c:
    #data loc_8c2896b0
PTR_ce32b10:
    #data loc_8c034e8c
PTR_ce32b14:
    #data loc_8c034dee
PTR_ce32b18:
    #data PTR_ce337dc
PTR_ce32b1c:
    #data loc_8c05115a
PTR_ce32b20:
    #data loc_8c042008

;=============================================

LAB_ce32b24:
    mov 0x00,r3

LAB_ce32b26:
    mov.w @(DAT_ce32c1e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32c30,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32c20,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32b7c
    mov.w @(DAT_ce32c22,pc),r0
    mov 0x00,r13
    mov.l @(PTR_ce32c34,pc),r3
    mov 0x01,r5
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32c20,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32c24,pc),r0
    mov r15,r5
    mov.l @(PTR_ce32c40,pc),r3
    mov 0x01,r6
    mov.l r13,@(r0,r14)
    mova @(DAT_ce32c38,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32c3c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32c44,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32b7c:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32b86:
    mov.w @(DAT_ce32c26,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32c28,pc),r0
    mov.l @(PTR_ce32c30,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt/s LAB_ce32bd0
    mov 0x00,r4
    mov.w @(DAT_ce32c2a,pc),r0
    mov 0x05,r6
    mov.l @(PTR_ce32c48,pc),r3
    mov 0x15,r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32c2c,pc),r0
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

LAB_ce32bd0:
    mov.w @(DAT_ce32c20,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32be6
    mov.l @(PTR_ce32c4c,pc),r3
    mov 0x4C,r5
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32be6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32bec:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32c30,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32c04
    mov.l @r15,r4
    add 0x04,r15
    bra FUN_ce3336c
    lds.l @r15+,PR

LAB_ce32c04:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32c0c:
    mov r4,r3
    mov.l @(PTR_ce32c50,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c1e:
    #data 0x03f1
DAT_ce32c20:
    #data 0x0141
DAT_ce32c22:
    #data 0x03f0
DAT_ce32c24:
    #data 0x02a4
DAT_ce32c26:
    #data 0x03f8
DAT_ce32c28:
    #data 0x0328
DAT_ce32c2a:
    #data 0x03f9
DAT_ce32c2c:
    #data 0x0327
    #align4

PTR_ce32c30:
    #data loc_8c034dee
PTR_ce32c34:
    #data loc_8c035162
DAT_ce32c38:
    #data 0x4226aaaa
DAT_ce32c3c:
    #data 0x433a6db6
PTR_ce32c40:
    #data loc_8c050834
PTR_ce32c44:
    #data loc_8c0a2dbc
PTR_ce32c48:
    #data loc_8c034e8c
PTR_ce32c4c:
    #data loc_8c04223a
PTR_ce32c50:
    #data PTR_ce337ec

;=============================================

LAB_ce32c54:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce32d78,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(DAT_ce32d7c,pc),r1
    mov 0x02,r2
    mov.w @(DAT_ce32d72,pc),r0
    lds r1,FPUL
    mov.b r2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32d80,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32d74,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32c8c
    mova @(DAT_ce32d84,pc),r0
    fmov.s @r0,fr4

LAB_ce32c8c:
    mov 0x5C,r0
    fldi0 fr3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32d88,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x3B,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32d8c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d76,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32d90,pc),r3
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
    mov.l @(PTR_ce32d94,pc),r2
    mov r14,r4
    mov 0x26,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32cda:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32d98,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce32d9c,pc),r3
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
    bt LAB_ce32d46
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32da0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x28,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32d94,pc),r2
    mov r14,r4
    mov 0x27,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32d46:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32d4c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32d98,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32d6c
    lds.l @r15+,PR
    mov.l @(PTR_ce32da4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32d6c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d72:
    #data 0x01f9
DAT_ce32d74:
    #data 0x01d2
DAT_ce32d76:
    #data 0x01a1
    #align4

PTR_ce32d78:
    #data loc_8c035162
DAT_ce32d7c:
    #data 0x43092492
DAT_ce32d80:
    #data 0xc1f00000
DAT_ce32d84:
    #data 0x41f00000
DAT_ce32d88:
    #data 0xbe892492
DAT_ce32d8c:
    #data 0xbf4db6db
PTR_ce32d90:
    #data loc_8c2896b0
PTR_ce32d94:
    #data loc_8c034e8c
PTR_ce32d98:
    #data loc_8c034dee
PTR_ce32d9c:
    #data loc_8c052ce2
PTR_ce32da0:
    #data loc_8c0511b4
PTR_ce32da4:
    #data loc_8c051854

;=============================================

LAB_ce32da8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32eba,pc),r0
    mov r4,r14
    mov.w @(DAT_ce32ebc,pc),r3
    mov 0x00,r4
    mov.b @(r0,r14),r0
    add r14,r3
    mov.l @(PTR_ce32ed0,pc),r2
    extu.b r0,r0
    mov.b @r3,r3
    shll2 r0
    extu.b r3,r3
    shll r0
    add r0,r2
    shll2 r3
    add r2,r3
    mov.l @r3,r1
    tst r1,r1
    bt/s LAB_ce32e0a
    mov.l r1,@r15
    mov.w @(DAT_ce32ebe,pc),r0
    mov.w @(DAT_ce32ec0,pc),r3
    mov.w @(r0,r14),r5
    extu.w r5,r5
    and r3,r5
    tst r5,r5
    bt LAB_ce32e0a
    shlr8 r5
    mov 0x22,r0
    shlr2 r5
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce32ec2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32e0a
    mov.l @(PTR_ce32ed4,pc),r1
    jsr @r1
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32e0a
    mov r0,r4
    mov.w @(DAT_ce32ec4,pc),r3
    mov.l @r15,r2
    mov.w @(DAT_ce32ec6,pc),r0
    add r3,r2
    mov.b r2,@(r0,r14)

LAB_ce32e0a:
    mov r4,r0
    nop
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e16:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32ec6,pc),r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x3F,r0
    bf LAB_ce32e32
    mov.w @(DAT_ce32ec8,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)

LAB_ce32e32:
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bf LAB_ce32e4e
    mov.w @(DAT_ce32eca,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.w @(DAT_ce32ec8,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)

LAB_ce32e4e:
    mova @(DAT_ce32ed8,pc),r0
    mov.l @(PTR_ce32ee0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32edc,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ee4,pc),r2
    mov 0x05,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32ec6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x3F,r0
    bt LAB_ce32e7e
    mov.w @(DAT_ce32ecc,pc),r0
    mov 0x0A,r2
    mov.b r2,@(r0,r14)

LAB_ce32e7e:
    mov.w @(DAT_ce32ec6,pc),r0
    mov 0x0F,r5
    mov.l @(PTR_ce32ee8,pc),r3
    mov.b @(r0,r14),r0
    and 0x3F,r0
    mov r0,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32eec,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e9c:
    mov.w @(DAT_ce32ece,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32ef0,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32eba:
    #data 0x01f9
DAT_ce32ebc:
    #data 0x01fe
DAT_ce32ebe:
    #data 0x01fa
DAT_ce32ec0:
    #data 0x0c00
DAT_ce32ec2:
    #data 0x01a3
DAT_ce32ec4:
    #data 0x00ff
DAT_ce32ec6:
    #data 0x01f7
DAT_ce32ec8:
    #data 0x01d2
DAT_ce32eca:
    #data 0x0130
DAT_ce32ecc:
    #data 0x01a0
DAT_ce32ece:
    #data 0x01ea
    #align4

PTR_ce32ed0:
    #data DAT_ce337f8
PTR_ce32ed4:
    #data loc_8c045790
DAT_ce32ed8:
    #data 0xc262aaaa
DAT_ce32edc:
    #data 0x43362492
PTR_ce32ee0:
    #data loc_8c103660
PTR_ce32ee4:
    #data loc_8c02fec4
PTR_ce32ee8:
    #data loc_8c034e8c
PTR_ce32eec:
    #data loc_8c056f2a
PTR_ce32ef0:
    #data PTR_ce33818

;=============================================

LAB_ce32ef4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    mov.l @(PTR_ce32fa8,pc),r10
    extu.b r0,r0
    cmp/ge r3,r0
    bf LAB_ce32f18
    bra LAB_ce33148
    nop

LAB_ce32f18:
    mov.b @(0x6,r14),r0
    mov 0x00,r11
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt/s LAB_ce32fc8
    fldi0 fr15
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce32fa0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32f62
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32fa0,pc),r0
    mov.b r11,@(r0,r14)
    mova @(DAT_ce32fac,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32fa2,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32f4a
    mova @(DAT_ce32fb0,pc),r0
    fmov.s @r0,fr4

LAB_ce32f4a:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce32fb4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32fb8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32f62:
    mov.w @(DAT_ce32fa4,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bf LAB_ce32f6e
    bra LAB_ce331a2
    nop

LAB_ce32f6e:
    mov 0x34,r0
    mov.l @(PTR_ce32fbc,pc),r3
    fmov.s @(r0,r14),fr14
    mov 0x38,r0
    fmov.s @(r0,r14),fr15
    mov.w @(DAT_ce32fa6,pc),r0
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32fc0,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce32fc4,pc),r0
    fmov.s @r0,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fmov fr5,fr0
    fmac fr0,fr14,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    fmac fr0,fr15,fr3
    fdiv fr4,fr3
    bra LAB_ce331a2
    fmov fr3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32fa0:
    #data 0x0140
DAT_ce32fa2:
    #data 0x0130
DAT_ce32fa4:
    #data 0x0141
DAT_ce32fa6:
    #data 0x01c8
    #align4

PTR_ce32fa8:
    #data loc_8c034dee
DAT_ce32fac:
    #data 0x40d55555
DAT_ce32fb0:
    #data 0xc0d55555
DAT_ce32fb4:
    #data 0x42092492
DAT_ce32fb8:
    #data 0xbfcdb6db
PTR_ce32fbc:
    #data loc_8c04ce54
DAT_ce32fc0:
    #data 0x40400000
DAT_ce32fc4:
    #data 0x40800000

;=============================================

LAB_ce32fc8:
    mov.w @(DAT_ce33102,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bf LAB_ce32fd4
    jsr @r10
    mov r14,r4

LAB_ce32fd4:
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
    mov.w @(DAT_ce33104,pc),r0
    mov.l @(r0,r14),r13
    mov.w @(DAT_ce33106,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce33080
    mov 0x01,r12
    mov.w @(DAT_ce33106,pc),r0
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
    mov.w @(DAT_ce33102,pc),r0
    mov.b r11,@(r0,r14)
    add 0x02,r0
    mov.b r12,@(r0,r14)
    jsr @r10
    mov r14,r4
    mov.l @(PTR_ce33114,pc),r3
    mov r13,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33118,pc),r3
    mov r13,r2
    mov r15,r1
    add 0x34,r2
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce33106,pc),r0
    mov.l @(PTR_ce3311c,pc),r3
    fmov.s @(r0,r13),fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov.b @(0x2,r13),r0
    extu.b r0,r5
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce33120,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33124,pc),r4
    mov 0x03,r0
    mov.b r0,@(0x5,r4)
    mov r12,r0
    nop
    mov.l @(PTR_ce33128,pc),r3
    mov.b r0,@(0x6,r4)
    jsr @r3
    mov r14,r4

LAB_ce33080:
    mov.w @(DAT_ce33108,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bf LAB_ce3308c
    bra LAB_ce331a2
    nop

LAB_ce3308c:
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce3310e,pc),r1
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    add r13,r1
    mov.w @(DAT_ce33108,pc),r0
    mov.b r11,@(r0,r14)
    mov.w @(DAT_ce3310a,pc),r0
    mov.l @(r0,r14),r3
    mov.l @(PTR_ce3312c,pc),r0
    shll r3
    mov.w @(r0,r3),r2
    mov 0x21,r3
    mov.w @(DAT_ce3310c,pc),r0
    mov.w r2,@(r0,r14)
    add 0x08,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r12,@(r0,r13)
    add 0xDC,r0
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce33130,pc),r2
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce33110,pc),r0
    jsr @r2
    mov.b r3,@(r0,r13)
    mov.w @(DAT_ce33112,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    mova @(DAT_ce33134,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce33112,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce330dc
    mova @(DAT_ce33138,pc),r0
    fmov.s @r0,fr4

LAB_ce330dc:
    mov 0x5C,r0
    mov.l @(PTR_ce33144,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce3313c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x01,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33140,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x0B,r6
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce331a2
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33102:
    #data 0x0140
DAT_ce33104:
    #data 0x01c8
DAT_ce33106:
    #data 0x041c
DAT_ce33108:
    #data 0x0141
DAT_ce3310a:
    #data 0x02c0
DAT_ce3310c:
    #data 0x01ac
DAT_ce3310e:
    #data 0x01d2
DAT_ce33110:
    #data 0x01a1
DAT_ce33112:
    #data 0x0130
    #align4

PTR_ce33114:
    #data loc_8c04cc1c
PTR_ce33118:
    #data loc_8c1294c8
PTR_ce3311c:
    #data loc_8c100672
PTR_ce33120:
    #data loc_8c0423fc
PTR_ce33124:
    #data loc_8c26a518
PTR_ce33128:
    #data loc_8c0511b4
PTR_ce3312c:
    #data DAT_ce334bc
PTR_ce33130:
    #data loc_8c02fd26
DAT_ce33134:
    #data 0x40200000
DAT_ce33138:
    #data 0xc0200000
DAT_ce3313c:
    #data 0x41892492
DAT_ce33140:
    #data 0xbf4db6db
PTR_ce33144:
    #data loc_8c034e8c

;=============================================

LAB_ce33148:
    jsr @r10
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
    mov.w @(DAT_ce3328e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce331a2
    mov.w @(DAT_ce3328e,pc),r0
    mov.l @(PTR_ce3329c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce3336c
    mov r14,r4

LAB_ce331a2:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce331b6:
    mov.l r14,@-r15
    mov r4,r14
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce331ec
    fldi0 fr15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce332a0,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce33290,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce331e4
    mova @(DAT_ce332a4,pc),r0
    fmov.s @r0,fr4

LAB_ce331e4:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce331ec:
    mov.w @(DAT_ce33292,pc),r0
    mov.b @(r0,r14),r3
    cmp/pl r3
    bf/s LAB_ce3322e
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

LAB_ce3322e:
    mov.l @(PTR_ce332a8,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33244
    lds.l @r15+,PR
    mov r14,r4
    fmov.s @r15+,fr15
    bra FUN_ce3336c
    mov.l @r15+,r14

LAB_ce33244:
    mov.w @(DAT_ce33294,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce33286
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce33296,pc),r0
    mov.l @(r0,r14),r3
    mov.l @(PTR_ce332ac,pc),r0
    shll r3
    mov.w @(r0,r3),r2
    mov 0x01,r3
    mov.w @(DAT_ce33298,pc),r0
    mov.w r2,@(r0,r14)
    add 0x1C,r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov 0x20,r3
    mov.b r2,@(r0,r4)
    add 0xCF,r0
    mov.l @(PTR_ce332b0,pc),r2
    mov.b r3,@(r0,r4)
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    jmp @r2
    mov.l @r15+,r14

LAB_ce33286:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3328e:
    #data 0x041c
DAT_ce33290:
    #data 0x01d2
DAT_ce33292:
    #data 0x0140
DAT_ce33294:
    #data 0x0141
DAT_ce33296:
    #data 0x02c0
DAT_ce33298:
    #data 0x01ac
    #align4

PTR_ce3329c:
    #data loc_8c0511b4
DAT_ce332a0:
    #data 0x40d55555
DAT_ce332a4:
    #data 0xc0d55555
PTR_ce332a8:
    #data loc_8c034dee
PTR_ce332ac:
    #data DAT_ce334bc
PTR_ce332b0:
    #data loc_8c02fd26

;=============================================

LAB_ce332b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce333ec,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce332ce
    lds.l @r15+,PR
    mov.l @(PTR_ce333f0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce332ce:
    mov.w @(DAT_ce333d6,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce33310
    mov 0x00,r2
    fldi0 fr3
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce333d8,pc),r0
    mov.l @(r0,r14),r3
    mov.l @(PTR_ce333f4,pc),r0
    shll r3
    mov.w @(r0,r3),r2
    mov 0x01,r3
    mov.w @(DAT_ce333da,pc),r0
    mov.w r2,@(r0,r14)
    add 0x1C,r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov 0x22,r3
    mov.b r2,@(r0,r4)
    add 0xCF,r0
    mov.l @(PTR_ce333f8,pc),r2
    mov.b r3,@(r0,r4)
    lds.l @r15+,PR
    jmp @r2
    mov.l @r15+,r14

LAB_ce33310:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33316:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce333dc,pc),r0
    mov 0x00,r4
    mov r4,r5
    mov.l @(PTR_ce333fc,pc),r3
    mov.b r4,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce333e0,pc),r4
    mov.w @(DAT_ce333de,pc),r6
    add r14,r4
    jmp @r3
    mov.l @r15+,r14

;=============================================

FUN_ce33336:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce333d8,pc),r0
    mov r4,r14
    mov.l @(r0,r14),r3
    mov.l @(PTR_ce33400,pc),r0
    mov.b @(r0,r3),r2
    extu.b r2,r2
    tst r2,r2
    bt/s LAB_ce33356
    mov.l r2,@r15
    mov.l @(PTR_ce33404,pc),r1
    mov r2,r5
    jsr @r1
    mov r14,r4

LAB_ce33356:
    mov.w @(DAT_ce333d8,pc),r0
    mov.l @(r0,r14),r3
    mov.l @(PTR_ce33408,pc),r0
    shll r3
    mov.w @(r0,r3),r2
    mov.w @(DAT_ce333da,pc),r0
    mov.w r2,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3336c:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    mov.l @(PTR_ce3340c,pc),r3
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    jmp @r3
    fmov fr4,@(r0,r4)

LAB_ce33382:
    mov.w @(DAT_ce333e2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x3F,r0
    bf LAB_ce3339c
    mov.w @(DAT_ce333e4,pc),r0
    mov.l @(r0,r14),r2
    mov.w @(DAT_ce333d6,pc),r0
    mov.b @(r0,r2),r3
    cmp/pl r3
    bf LAB_ce333a8

LAB_ce3339c:
    mov.w @(DAT_ce333e4,pc),r0
    mov r14,r5
    mov.l @(PTR_ce33410,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce333a8:
    rts
    mov.l @r15+,r14

LAB_ce333ac:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce333e6,pc),r0
    mov.b @(r0,r4),r5
    extu.b r5,r0
    cmp/eq 0x02,r0
    bf LAB_ce333c4
    mov.w @(DAT_ce333d8,pc),r0
    mov.l @(r0,r4),r2
    add r2,r5

LAB_ce333c4:
    mov.l @(PTR_ce33414,pc),r0
    extu.b r5,r5
    mov.w @(DAT_ce333e8,pc),r2
    mov.b @(r0,r5),r3
    add r4,r2
    mov.b r3,@r2
    mov.l @(PTR_ce33418,pc),r3
    jmp @r3
    mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce333d6:
    #data 0x0141
DAT_ce333d8:
    #data 0x02c0
DAT_ce333da:
    #data 0x01ac
DAT_ce333dc:
    #data 0x0202
DAT_ce333de:
    #data 0x0080
DAT_ce333e0:
    #data 0x02a4
DAT_ce333e2:
    #data 0x01f7
DAT_ce333e4:
    #data 0x01c8
DAT_ce333e6:
    #data 0x04c9
DAT_ce333e8:
    #data 0x01e9
    #align4

PTR_ce333ec:
    #data loc_8c034dee
PTR_ce333f0:
    #data loc_8c05176e
PTR_ce333f4:
    #data DAT_ce334bc
PTR_ce333f8:
    #data loc_8c02fd26
PTR_ce333fc:
    #data loc_8c129728
PTR_ce33400:
    #data DAT_ce33824
PTR_ce33404:
    #data loc_8c04223a
PTR_ce33408:
    #data DAT_ce33828
PTR_ce3340c:
    #data loc_8c051648
PTR_ce33410:
    #data loc_8c04cc1c
PTR_ce33414:
    #data DAT_ce33830
PTR_ce33418:
    #data loc_8c0530d8

;=============================================

LAB_ce3341c:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce334a2,pc),r0
    mov.b @(r0,r4),r5
    extu.b r5,r0
    cmp/eq 0x02,r0
    bf LAB_ce33434
    mov.w @(DAT_ce334a4,pc),r0
    mov.l @(r0,r4),r2
    add r2,r5

LAB_ce33434:
    mov.l @(PTR_ce334ac,pc),r0
    extu.b r5,r5
    mov.w @(DAT_ce334a6,pc),r2
    mov.b @(r0,r5),r3
    add r4,r2
    mov.b r3,@r2
    mov.l @(PTR_ce334b0,pc),r3
    jmp @r3
    mov 0x1D,r5

LAB_ce33446:
    mov 0x00,r0
    mov.l @(PTR_ce334b4,pc),r5
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce334a2,pc),r0
    mov.w @(DAT_ce334a8,pc),r1
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce334a6,pc),r0
    add r4,r1
    shll r3
    add r5,r3
    mov.b @r3,r2
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce334a2,pc),r0
    mov.b @(r0,r4),r3
    shll r3
    add r3,r5
    mov.l @(PTR_ce334b0,pc),r3
    mov.b @(0x1,r5),r0
    mov.b r0,@r1
    jmp @r3
    mov 0x15,r5

LAB_ce33474:
    mov 0x00,r0
    mov.l @(PTR_ce334b8,pc),r5
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce334a2,pc),r0
    mov.w @(DAT_ce334a8,pc),r1
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce334a6,pc),r0
    add r4,r1
    shll r3
    add r5,r3
    mov.b @r3,r2
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce334a2,pc),r0
    mov.b @(r0,r4),r3
    shll r3
    add r3,r5
    mov.l @(PTR_ce334b0,pc),r3
    mov.b @(0x1,r5),r0
    mov.b r0,@r1
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce334a2:
    #data 0x04c9
DAT_ce334a4:
    #data 0x02c0
DAT_ce334a6:
    #data 0x01e9
DAT_ce334a8:
    #data 0x01a3
    #align4

PTR_ce334ac:
    #data DAT_ce33836
PTR_ce334b0:
    #data loc_8c0530d8
PTR_ce334b4:
    #data DAT_ce3383c
PTR_ce334b8:
    #data DAT_ce33842
DAT_ce334bc:
    #data 0x0000
    #data 0x0003
    #data 0x0001
    #data 0x0002
DAT_ce334c4:
    #data 0x0201
    #data 0x0201
DAT_ce334c8:
    #data 0xffff
    #data 0xffff
DAT_ce334cc:
    #data 0xffff
    #data 0xffff
DAT_ce334d0:
    #data 0x0201
    #data 0x0201
DAT_ce334d4:
    #data 0xffff
    #data 0xffff
DAT_ce334d8:
    #data 0xffff
    #data 0xffff
DAT_ce334dc:
    #data 0x0201
    #data 0x0201
DAT_ce334e0:
    #data 0xffff
    #data 0xffff
DAT_ce334e4:
    #data 0xffff
    #data 0xffff
DAT_ce334e8:
    #data 0x0201
    #data 0x0201
DAT_ce334ec:
    #data 0xffff
    #data 0xffff
DAT_ce334f0:
    #data 0xffff
    #data 0xffff
DAT_ce334f4:
    #data 0x0201
    #data 0x0200
DAT_ce334f8:
    #data 0x02ff
    #data 0x0201
DAT_ce334fc:
    #data 0xffff
    #data 0x02ff
DAT_ce33500:
    #data 0x0201
    #data 0x0201
DAT_ce33504:
    #data 0x02ff
    #data 0x02ff
DAT_ce33508:
    #data 0xffff
    #data 0xffff
    #align4

PTR_ce3350c:
    #data DAT_ce334c4
PTR_ce33510:
    #data DAT_ce334c8
PTR_ce33514:
    #data DAT_ce334cc
PTR_ce33518:
    #data DAT_ce334d0
PTR_ce3351c:
    #data DAT_ce334d4
PTR_ce33520:
    #data DAT_ce334d8
PTR_ce33524:
    #data DAT_ce334dc
PTR_ce33528:
    #data DAT_ce334e0
PTR_ce3352c:
    #data DAT_ce334e4
PTR_ce33530:
    #data DAT_ce334e8
PTR_ce33534:
    #data DAT_ce334ec
PTR_ce33538:
    #data DAT_ce334f0
PTR_ce3353c:
    #data DAT_ce334f4
PTR_ce33540:
    #data DAT_ce334f8
PTR_ce33544:
    #data DAT_ce334fc
PTR_ce33548:
    #data DAT_ce33500
PTR_ce3354c:
    #data DAT_ce33504
PTR_ce33550:
    #data DAT_ce33508
DAT_ce33554:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33564:
    #data 0x0003
    #data 0x9100
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce33574:
    #data 0x0004
    #data 0x000a
    #data 0x0003
    #data 0x0000
    #data 0x0300
DAT_ce3357e:
    #data 0x0003
    #data 0x5080
    #data 0x0006
    #data 0x0000
    #data 0x0800
    #data 0x0000
    #data 0x0800
    #data 0x0300
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce3359e:
    #data 0x0003
    #data 0x1100
    #data 0x000a
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce335ae:
    #data 0x0003
    #data 0x1100
    #data 0x000b
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce335be:
    #data 0x0003
    #data 0x8100
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce335ce:
    #data 0x0003
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
    #align4

PTR_ce335e0:
    #data LAB_ce305c8
PTR_ce335e4:
    #data LAB_ce3001c
PTR_ce335e8:
    #data LAB_ce30994
PTR_ce335ec:
    #data LAB_ce30dc0
PTR_ce335f0:
    #data LAB_ce30edc
PTR_ce335f4:
    #data LAB_ce30fd0
PTR_ce335f8:
    #data LAB_ce31102
PTR_ce335fc:
    #data LAB_ce31148
PTR_ce33600:
    #data LAB_ce311a2
PTR_ce33604:
    #data LAB_ce32da8
PTR_ce33608:
    #data LAB_ce32e16
PTR_ce3360c:
    #data LAB_ce32e9c
PTR_ce33610:
    #data LAB_ce33382
PTR_ce33614:
    #data FUN_ce304d6
PTR_ce33618:
    #data LAB_ce32c0c
PTR_ce3361c:
    #data LAB_ce30e0c
PTR_ce33620:
    #data LAB_ce333ac
PTR_ce33624:
    #data LAB_ce3341c
PTR_ce33628:
    #data LAB_ce33446
PTR_ce3362c:
    #data LAB_ce33474
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce3363c:
    #data LAB_ce33316
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
DAT_ce33650:
    #data 0x02
    #data 0x02
    #data 0x05
    #data 0x10
DAT_ce33654:
    #data 0x02
    #data 0x02
    #data 0x05
    #data 0x10
DAT_ce33658:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x03
    #data 0x04
    #data 0x05
    #data 0x06
    #data 0x07
    #data 0x08
DAT_ce33661:
    #data 0x09
    #data 0x0a
    #data 0x0b
DAT_ce33664:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce33667:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce33670:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce33673:
    #data 0x07
    #data 0x07
    #data 0x07
    #data 0x08
    #data 0x08
    #data 0x08
    #data 0x09
    #data 0x09
    #data 0x09
DAT_ce3367c:
    #data 0x0a
    #data 0x0a
    #data 0x0a
DAT_ce3367f:
    #data 0x02
    #data 0x03
    #data 0x04
    #data 0x00
    #data 0x00
    #data 0x05
DAT_ce33685:
    #data 0x01
    #data 0x00
    #data 0x00
DAT_ce33688:
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce3368b:
    #data 0x0c
    #data 0x0d
    #data 0x0e
DAT_ce3368e:
    #data 0x0f
    #data 0x10
    #data 0x11
DAT_ce33691:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce33694:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce33697:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce3369a:
    #data 0x0b
    #data 0x0b
    #data 0x0b
DAT_ce3369d:
    #data 0x0c
    #data 0x0c
    #data 0x0c
    #align4

PTR_ce336a0:
    #data LAB_ce30770
PTR_ce336a4:
    #data LAB_ce3093a
PTR_ce336a8:
    #data LAB_ce30860
PTR_ce336ac:
    #data LAB_ce30770
PTR_ce336b0:
    #data LAB_ce30a58
PTR_ce336b4:
    #data LAB_ce30a7a
PTR_ce336b8:
    #data LAB_ce30b2c
PTR_ce336bc:
    #data LAB_ce30be4
PTR_ce336c0:
    #data LAB_ce30c30
PTR_ce336c4:
    #data LAB_ce30d0c
PTR_ce336c8:
    #data LAB_ce30a02
PTR_ce336cc:
    #data LAB_ce309a8
PTR_ce336d0:
    #data LAB_ce309ea
PTR_ce336d4:
    #data FUN_ce30db0
PTR_ce336d8:
    #data LAB_ce30eee
PTR_ce336dc:
    #data LAB_ce30f70
PTR_ce336e0:
    #data LAB_ce30fca
PTR_ce336e4:
    #data LAB_ce30fe2
PTR_ce336e8:
    #data LAB_ce3102a
PTR_ce336ec:
    #data LAB_ce310e0
PTR_ce336f0:
    #data LAB_ce31114
PTR_ce336f4:
    #data LAB_ce31128
DAT_ce336f8:
    #data 0x0200
    #data 0x0400
    #data 0x0004
    #align4

PTR_ce33700:
    #data LAB_ce311dc
PTR_ce33704:
    #data LAB_ce312c4
PTR_ce33708:
    #data LAB_ce313f8
PTR_ce3370c:
    #data LAB_ce31662
PTR_ce33710:
    #data LAB_ce31854
PTR_ce33714:
    #data LAB_ce3197c
PTR_ce33718:
    #data LAB_ce31cac
PTR_ce3371c:
    #data LAB_ce31f04
PTR_ce33720:
    #data LAB_ce32248
PTR_ce33724:
    #data LAB_ce324bc
PTR_ce33728:
    #data LAB_ce32524
PTR_ce3372c:
    #data LAB_ce32524
PTR_ce33730:
    #data LAB_ce32524
PTR_ce33734:
    #data LAB_ce327e8
PTR_ce33738:
    #data LAB_ce3289a
PTR_ce3373c:
    #data LAB_ce329c0
PTR_ce33740:
    #data LAB_ce32a3e
PTR_ce33744:
    #data LAB_ce31454
PTR_ce33748:
    #data LAB_ce314d6
PTR_ce3374c:
    #data LAB_ce31598
PTR_ce33750:
    #data LAB_ce3163a
PTR_ce33754:
    #data LAB_ce316a0
PTR_ce33758:
    #data LAB_ce3177c
PTR_ce3375c:
    #data FUN_ce31832
DAT_ce33760:
    #data 0x2b29
    #data 0x2b29
    #data 0x2f2d
    #data 0x3331
    #align4

PTR_ce33768:
    #data LAB_ce31894
PTR_ce3376c:
    #data LAB_ce31900
PTR_ce33770:
    #data FUN_ce3195a
PTR_ce33774:
    #data LAB_ce319b4
PTR_ce33778:
    #data LAB_ce31a78
PTR_ce3377c:
    #data LAB_ce31b8c
PTR_ce33780:
    #data LAB_ce31c68
PTR_ce33784:
    #data LAB_ce31cfc
PTR_ce33788:
    #data LAB_ce31d88
PTR_ce3378c:
    #data LAB_ce31ea8
PTR_ce33790:
    #data LAB_ce31f16
PTR_ce33794:
    #data LAB_ce31f6e
PTR_ce33798:
    #data LAB_ce3200c
PTR_ce3379c:
    #data LAB_ce3203e
PTR_ce337a0:
    #data LAB_ce32096
PTR_ce337a4:
    #data LAB_ce321c0
PTR_ce337a8:
    #data LAB_ce32550
PTR_ce337ac:
    #data LAB_ce3258c
PTR_ce337b0:
    #data LAB_ce32788
PTR_ce337b4:
    #data LAB_ce327c0
DAT_ce337b8:
    #data 0x1000
    #data 0x2810
    #data 0x1800
    #data 0x2818
    #data 0x1800
    #data 0x3020
DAT_ce337c4:
    #data 0x2800
    #data 0x3010
    #data 0x2800
    #data 0x2810
    #data 0x2000
    #data 0x2010
    #align4

PTR_ce337d0:
    #data LAB_ce328ac
PTR_ce337d4:
    #data LAB_ce3291a
PTR_ce337d8:
    #data FUN_ce32960
PTR_ce337dc:
    #data LAB_ce32a50
PTR_ce337e0:
    #data LAB_ce32ad0
PTR_ce337e4:
    #data LAB_ce32b86
PTR_ce337e8:
    #data FUN_ce32bec
PTR_ce337ec:
    #data LAB_ce32c54
PTR_ce337f0:
    #data LAB_ce32cda
PTR_ce337f4:
    #data LAB_ce32d4c
DAT_ce337f8:
    #data 0x00000001
    #data 0x00000002
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000003
    #data 0x00000000
    #data 0x00000000
PTR_ce33818:
    #data LAB_ce32ef4
PTR_ce3381c:
    #data LAB_ce331b6
PTR_ce33820:
    #data LAB_ce332b4
DAT_ce33824:
    #data 0x00
    #data 0x4f
    #data 0x00
    #data 0x4b
DAT_ce33828:
    #data 0x00
    #data 0x00
    #data 0x03
    #data 0x00
    #data 0x01
    #data 0x00
    #data 0x02
    #data 0x01
DAT_ce33830:
    #data 0x07
    #data 0x08
    #data 0x02
    #data 0x02
    #data 0x05
    #data 0x10
DAT_ce33836:
    #data 0x07
    #data 0x08
    #data 0x02
    #data 0x02
    #data 0x05
    #data 0x10
DAT_ce3383c:
    #data 0x03
DAT_ce3383d:
    #data 0x01
    #data 0x00
    #data 0x01
    #data 0x0f
    #data 0x01
DAT_ce33842:
    #data 0x03
DAT_ce33843:
    #data 0x01
    #data 0x00
    #data 0x01
    #data 0x0f
    #data 0x01
