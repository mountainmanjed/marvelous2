;╔═══════════════════════════════════════════════╗
;║ S_PL30 : Omega Red (Arkady Rossovich) Program ║
;╚═══════════════════════════════════════════════╝
    
#symbol loc_8C02FD26 0x8C02FD26
#symbol loc_8C02FEC4 0x8C02FEC4
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
#symbol loc_8C0517BE 0x8C0517BE
#symbol loc_8C051854 0x8C051854
#symbol loc_8C05218A 0x8C05218A
#symbol loc_8C05264C 0x8C05264C
#symbol loc_8C052B4C 0x8C052B4C
#symbol loc_8C052C84 0x8C052C84
#symbol loc_8C052CE2 0x8C052CE2
#symbol loc_8C052DAC 0x8C052DAC
#symbol loc_8C053082 0x8C053082
#symbol loc_8C0530D8 0x8C0530D8
#symbol loc_8C053E00 0x8C053E00
#symbol loc_8C053F6E 0x8C053F6E
#symbol loc_8C0542E0 0x8C0542E0
#symbol loc_8C054508 0x8C054508
#symbol loc_8C05496C 0x8C05496C
#symbol loc_8C054B34 0x8C054B34
#symbol loc_8C054D04 0x8C054D04
#symbol loc_8C054D1C 0x8C054D1C
#symbol loc_8C054DA0 0x8C054DA0
#symbol loc_8C054E58 0x8C054E58
#symbol loc_8C055C3A 0x8C055C3A
#symbol loc_8C056DE4 0x8C056DE4
#symbol loc_8C056F2A 0x8C056F2A
#symbol loc_8C0A3104 0x8C0A3104
#symbol loc_8C0A3374 0x8C0A3374
#symbol loc_8C0A5500 0x8C0A5500
#symbol loc_8C0A61D8 0x8C0A61D8
#symbol loc_8C103660 0x8C103660
#symbol loc_8C1294C8 0x8C1294C8
#symbol loc_8C26823C 0x8C26823C
#symbol loc_8C2896B0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300c6,pc),r0
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
    mov.l @(PTR_ce300dc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce300ec
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce3040c
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce301e4
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30134
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce302ec
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce3025a
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce303a4
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30344
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce3047c
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    mov.w @(DAT_ce300c8,pc),r5
    mov.l @(PTR_ce300e0,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce304bc
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300e8,pc),r2
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
DAT_ce300c8:
    #data 0x0384
    #align4

PTR_ce300cc:
    #data PTR_ce333f0
PTR_ce300d0:
    #data loc_8c054508
PTR_ce300d4:
    #data loc_8c054b34
PTR_ce300d8:
    #data loc_8c05496c
PTR_ce300dc:
    #data loc_8c054d04
PTR_ce300e0:
    #data loc_8c053f6e
PTR_ce300e4:
    #data loc_8c053e00
PTR_ce300e8:
    #data loc_8c0542e0

;=============================================

FUN_ce300ec:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301d0,pc),r5
    mov.w @(DAT_ce301c0,pc),r6
    mov.l @(PTR_ce301d4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3010c
    mov.w @(DAT_ce301c2,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30114

LAB_ce3010c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30114:
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301c4,pc),r0
    mov.l @(PTR_ce301d8,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30134:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301dc,pc),r5
    mov.w @(DAT_ce301c6,pc),r6
    mov.l @(PTR_ce301d4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30164
    mov.w @(DAT_ce301c8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30172
    mov.w @(DAT_ce301ca,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30172
    mov.w @(DAT_ce301cc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3016c

LAB_ce30164:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3016c:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30172:
    mov.w @(DAT_ce301c6,pc),r5
    mov.l @(PTR_ce301e0,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce301ce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf/s LAB_ce3018c
    mov 0x02,r5
    bra LAB_ce3018e
    mov 0x01,r4

LAB_ce3018c:
    mov r5,r4

LAB_ce3018e:
    mov.w @(DAT_ce301c8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce301a0
    mov.w @(DAT_ce301c4,pc),r0
    mov 0x03,r2
    bra LAB_ce301a4
    mov.b r2,@(r0,r14)

LAB_ce301a0:
    mov.w @(DAT_ce301c4,pc),r0
    mov.b r5,@(r0,r14)

LAB_ce301a4:
    mov.w @(DAT_ce301ce,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce301d8,pc),r3
    mov.b r4,@(r0,r14)
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

DAT_ce301c0:
    #data 0x0364
DAT_ce301c2:
    #data 0x040c
DAT_ce301c4:
    #data 0x01e9
DAT_ce301c6:
    #data 0x036c
DAT_ce301c8:
    #data 0x01f9
DAT_ce301ca:
    #data 0x01fc
DAT_ce301cc:
    #data 0x01d4
DAT_ce301ce:
    #data 0x01a3
    #align4

PTR_ce301d0:
    #data DAT_ce33370
PTR_ce301d4:
    #data loc_8c054e58
PTR_ce301d8:
    #data loc_8c0530d8
PTR_ce301dc:
    #data DAT_ce33390
PTR_ce301e0:
    #data loc_8c055c3a

;=============================================

FUN_ce301e4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce302d8,pc),r5
    mov.w @(DAT_ce302ca,pc),r6
    mov.l @(PTR_ce302dc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30214
    mov.w @(DAT_ce302cc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30234
    mov.w @(DAT_ce302ce,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30222
    mov.w @(DAT_ce302d0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3021c

LAB_ce30214:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3021c:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30222:
    mov.w @(DAT_ce302cc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30234
    mov.w @(DAT_ce302d2,pc),r0
    mov 0x03,r2
    bra LAB_ce3023a
    mov.b r2,@(r0,r14)

LAB_ce30234:
    mov.w @(DAT_ce302d2,pc),r0
    mov 0x02,r1
    mov.b r1,@(r0,r14)

LAB_ce3023a:
    mov.w @(DAT_ce302d4,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    mov.l @(PTR_ce302e0,pc),r3
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

FUN_ce3025a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce302e4,pc),r5
    mov.w @(DAT_ce302d6,pc),r6
    mov.l @(PTR_ce302dc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30280
    mov.w @(DAT_ce302ce,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3028e
    mov.w @(DAT_ce302d0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30288

LAB_ce30280:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30288:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3028e:
    mov.w @(DAT_ce302d6,pc),r5
    mov.l @(PTR_ce302e8,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce302d4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf/s LAB_ce302a8
    mov 0x03,r4
    bra LAB_ce302aa
    mov r4,r5

LAB_ce302a8:
    mov 0x02,r5

LAB_ce302aa:
    mov.w @(DAT_ce302d4,pc),r0
    mov.l @(PTR_ce302e0,pc),r3
    mov.b r5,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302d2,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce302ca:
    #data 0x038c
DAT_ce302cc:
    #data 0x01f9
DAT_ce302ce:
    #data 0x01fc
DAT_ce302d0:
    #data 0x01d4
DAT_ce302d2:
    #data 0x01e9
DAT_ce302d4:
    #data 0x01a3
DAT_ce302d6:
    #data 0x0374
    #align4

PTR_ce302d8:
    #data DAT_ce333a0
PTR_ce302dc:
    #data loc_8c054e58
PTR_ce302e0:
    #data loc_8c0530d8
PTR_ce302e4:
    #data DAT_ce333b0
PTR_ce302e8:
    #data loc_8c055c3a

;=============================================

FUN_ce302ec:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce303f4,pc),r5
    mov.w @(DAT_ce303e6,pc),r6
    mov.l @(PTR_ce303f8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30312
    mov.w @(DAT_ce303e8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30320
    mov.w @(DAT_ce303ea,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3031a

LAB_ce30312:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3031a:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30320:
    mov.w @(DAT_ce303ec,pc),r0
    mov 0x04,r2
    mov 0x03,r3
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce303ee,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce303fc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30344:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30400,pc),r5
    mov.w @(DAT_ce303f0,pc),r6
    mov.l @(PTR_ce303f8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30362
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30362:
    mov.w @(DAT_ce303f0,pc),r5
    mov.l @(PTR_ce30404,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce303ec,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf/s LAB_ce30380
    mov 0x00,r4
    mov.w @(DAT_ce303ec,pc),r0
    mov 0x01,r2
    bra LAB_ce30384
    mov.b r2,@(r0,r14)

LAB_ce30380:
    mov.w @(DAT_ce303ec,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30384:
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce303ee,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce303fc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303a4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30408,pc),r5
    mov.w @(DAT_ce303f2,pc),r6
    mov.l @(PTR_ce303f8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303c2
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303c2:
    mov.w @(DAT_ce303ec,pc),r0
    mov 0x02,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce303ee,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce303fc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce303e6:
    #data 0x039c
DAT_ce303e8:
    #data 0x01fc
DAT_ce303ea:
    #data 0x01d4
DAT_ce303ec:
    #data 0x01a3
DAT_ce303ee:
    #data 0x01e9
DAT_ce303f0:
    #data 0x037c
DAT_ce303f2:
    #data 0x03a4
    #align4

PTR_ce303f4:
    #data DAT_ce333c0
PTR_ce303f8:
    #data loc_8c054e58
PTR_ce303fc:
    #data loc_8c0530d8
PTR_ce30400:
    #data DAT_ce333d0
PTR_ce30404:
    #data loc_8c055c3a
PTR_ce30408:
    #data DAT_ce333e0

;=============================================

FUN_ce3040c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3051c,pc),r5
    mov.w @(DAT_ce3050e,pc),r6
    mov.l @(PTR_ce30520,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30446
    mov.w @(DAT_ce30510,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30446
    mov.w @(DAT_ce30512,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30454
    mov.w @(DAT_ce30514,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30454
    mov.w @(DAT_ce30516,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3044e

LAB_ce30446:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3044e:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30454:
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x09,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x0A,r3
    mov.w @(DAT_ce30518,pc),r0
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30524,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3047c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30528,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30494
    mov.w @(DAT_ce30510,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3049c

LAB_ce30494:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3049c:
    mov.w @(DAT_ce30518,pc),r0
    mov 0x07,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30524,pc),r3
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

FUN_ce304bc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3052c,pc),r3
    jsr @r3
    mov 0x06,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce304d6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304d6:
    mov.w @(DAT_ce30518,pc),r0
    mov 0x06,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30524,pc),r3
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

FUN_ce304f6:
    sts.l PR,@-r15
    bsr FUN_ce30530
    nop
    tst r0,r0
    bt LAB_ce30506
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce30506:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3050e:
    #data 0x0394
DAT_ce30510:
    #data 0x040c
DAT_ce30512:
    #data 0x01f9
DAT_ce30514:
    #data 0x01fc
DAT_ce30516:
    #data 0x01d4
DAT_ce30518:
    #data 0x01e9
    #align4

PTR_ce3051c:
    #data DAT_ce33380
PTR_ce30520:
    #data loc_8c054e58
PTR_ce30524:
    #data loc_8c0530d8
PTR_ce30528:
    #data loc_8c054d1c
PTR_ce3052c:
    #data loc_8c054da0

;=============================================

FUN_ce30530:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30638,pc),r5
    mov.w @(DAT_ce30622,pc),r6
    mov.l @(PTR_ce3063c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30550
    mov.w @(DAT_ce30624,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30558

LAB_ce30550:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30558:
    mov.w @(DAT_ce30626,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30566:
    rts
    nop

LAB_ce3056a:
    mov.w @(DAT_ce30628,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30640,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3057e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30644,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3062a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce305ac
    mov.w @(DAT_ce3062c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce305a4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307fc
    mov.l @r15+,r14

LAB_ce305a4:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30730
    mov.l @r15+,r14

LAB_ce305ac:
    mov.w @(DAT_ce3062c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce305be
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3069a
    mov.l @r15+,r14

LAB_ce305be:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce305c6
    mov.l @r15+,r14

LAB_ce305c6:
    mov.w @(DAT_ce3062e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce305e8
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30604
    cmp/eq 0x02,r0
    bt LAB_ce30654
    bra LAB_ce30668
    nop

LAB_ce305e8:
    mov.w @(DAT_ce30630,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce30648,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30632,pc),r0
    mov.l @(PTR_ce3064c,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30634,pc),r0
    bra LAB_ce30668
    mov.b r13,@(r0,r14)

LAB_ce30604:
    mov.w @(DAT_ce30630,pc),r0
    mov 0x01,r12
    mov.l @(PTR_ce30648,pc),r3
    mov 0x15,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30632,pc),r0
    mov.l @(PTR_ce30650,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30634,pc),r0
    bra LAB_ce30668
    mov.b r12,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30622:
    #data 0x0364
DAT_ce30624:
    #data 0x040c
DAT_ce30626:
    #data 0x0258
DAT_ce30628:
    #data 0x01ff
DAT_ce3062a:
    #data 0x01fe
DAT_ce3062c:
    #data 0x01f9
DAT_ce3062e:
    #data 0x01e8
DAT_ce30630:
    #data 0x0158
DAT_ce30632:
    #data 0x03f4
DAT_ce30634:
    #data 0x01a7
    #align4

PTR_ce30638:
    #data DAT_ce33370
PTR_ce3063c:
    #data loc_8c054e58
PTR_ce30640:
    #data PTR_ce33460
PTR_ce30644:
    #data loc_8c052b4c
PTR_ce30648:
    #data loc_8c04223a
PTR_ce3064c:
    #data DAT_ce33328
PTR_ce30650:
    #data DAT_ce3332c

;=============================================

LAB_ce30654:
    mov.w @(DAT_ce3076e,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce30778,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30770,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30772,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30668:
    mov.w @(DAT_ce30774,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce3077c,pc),r3
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
    mov.w @(DAT_ce3076e,pc),r0
    mov.l @(PTR_ce30780,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3069a:
    mov.w @(DAT_ce30776,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce306ba
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce306d8
    cmp/eq 0x02,r0
    bt LAB_ce306ea
    bra LAB_ce30700
    nop

LAB_ce306ba:
    mov.w @(DAT_ce3076e,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30784,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30770,pc),r0
    mov.l @(PTR_ce30788,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30772,pc),r0
    bra LAB_ce30700
    mov.b r13,@(r0,r14)

LAB_ce306d8:
    mov.w @(DAT_ce3076e,pc),r0
    mov 0x01,r4
    mov.l @(PTR_ce3078c,pc),r2
    mov 0x07,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce306f8
    nop

LAB_ce306ea:
    mov.w @(DAT_ce3076e,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce30778,pc),r2
    mov 0x08,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce306f8:
    mov.w @(DAT_ce30770,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30772,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30700:
    mov.w @(DAT_ce30774,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce3077c,pc),r3
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
    mov.w @(DAT_ce3076e,pc),r0
    mov.l @(PTR_ce30780,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30730:
    mov.w @(DAT_ce30776,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30750
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30794
    cmp/eq 0x02,r0
    bt LAB_ce307b6
    bra LAB_ce307cc
    nop

LAB_ce30750:
    mov.w @(DAT_ce3076e,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30784,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30770,pc),r0
    mov.l @(PTR_ce30790,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30772,pc),r0
    bra LAB_ce307cc
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3076e:
    #data 0x0158
DAT_ce30770:
    #data 0x03f4
DAT_ce30772:
    #data 0x01a7
DAT_ce30774:
    #data 0x01ac
DAT_ce30776:
    #data 0x01e8
    #align4

PTR_ce30778:
    #data DAT_ce33330
PTR_ce3077c:
    #data loc_8c2896b0
PTR_ce30780:
    #data loc_8c034e8c
PTR_ce30784:
    #data loc_8c04223a
PTR_ce30788:
    #data DAT_ce33328
PTR_ce3078c:
    #data DAT_ce3332c
PTR_ce30790:
    #data DAT_ce33334

;=============================================

LAB_ce30794:
    mov.w @(DAT_ce3086a,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce30874,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3086c,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce30878,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3086e,pc),r0
    bra LAB_ce307cc
    mov.b r3,@(r0,r14)

LAB_ce307b6:
    mov.w @(DAT_ce3086a,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce3087c,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3086c,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3086e,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce307cc:
    mov.w @(DAT_ce30870,pc),r0
    mov 0x08,r5
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
    mov.w @(DAT_ce3086a,pc),r0
    mov.l @(PTR_ce30884,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce307fc:
    mov.w @(DAT_ce30872,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30874,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30820
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3083c
    cmp/eq 0x02,r0
    bt LAB_ce3088c
    bra LAB_ce308ce
    nop

LAB_ce30820:
    mov.w @(DAT_ce3086a,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3086c,pc),r0
    mov.l @(PTR_ce30888,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3086e,pc),r0
    bra LAB_ce3085a
    mov.b r13,@(r0,r14)

LAB_ce3083c:
    mov.w @(DAT_ce3086a,pc),r0
    mov 0x01,r3
    mov 0x0A,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3086c,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce30878,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3086e,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce3085a:
    mov.w @(DAT_ce3086a,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30884,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    bra LAB_ce308ce
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3086a:
    #data 0x0158
DAT_ce3086c:
    #data 0x03f4
DAT_ce3086e:
    #data 0x01a7
DAT_ce30870:
    #data 0x01ac
DAT_ce30872:
    #data 0x01e8
    #align4

PTR_ce30874:
    #data loc_8c04223a
PTR_ce30878:
    #data DAT_ce33338
PTR_ce3087c:
    #data DAT_ce3333c
PTR_ce30880:
    #data loc_8c2896b0
PTR_ce30884:
    #data loc_8c034e8c
PTR_ce30888:
    #data DAT_ce33334

;=============================================

LAB_ce3088c:
    mov.w @(DAT_ce30976,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.l @(PTR_ce3098c,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce30978,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3097a,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30976,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30990,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3097c,pc),r0
    mov 0xF6,r2
    mov.w @(DAT_ce3097e,pc),r3
    mov 0x00,r5
    mov.w @(r0,r14),r6
    mov.l @(PTR_ce30994,pc),r1
    extu.w r6,r6
    and r3,r6
    shad r2,r6
    jsr @r1
    mov r14,r4
    mov.w @(DAT_ce30980,pc),r0
    mov.w r0,@(0x1c,r14)

LAB_ce308ce:
    mov.w @(DAT_ce30982,pc),r0
    mov.l @(PTR_ce30998,pc),r3
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
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce308f6:
    mov.w @(DAT_ce30984,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30906
    mov.w @(DAT_ce30986,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30916

LAB_ce30906:
    mov.w @(DAT_ce30984,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce3091a
    mov.w @(DAT_ce30986,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce3091a

LAB_ce30916:
    bra LAB_ce3091e
    nop

LAB_ce3091a:
    rts
    nop

LAB_ce3091e:
    mov.w @(DAT_ce30984,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3092c
    bra LAB_ce30a3e
    nop

LAB_ce3092c:
    bra LAB_ce30930
    nop

LAB_ce30930:
    mov.w @(DAT_ce30988,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30950
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce309a4
    cmp/eq 0x02,r0
    bt LAB_ce309d6
    bra LAB_ce309fc
    nop

LAB_ce30950:
    mov.w @(DAT_ce30976,pc),r0
    mov 0x0C,r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3096a
    mov.w @(DAT_ce30978,pc),r0
    mov.l @(PTR_ce3099c,pc),r2
    bra LAB_ce30970
    mov.l r2,@(r0,r14)

LAB_ce3096a:
    mov.w @(DAT_ce30978,pc),r0
    mov.l @(PTR_ce309a0,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30970:
    mov.w @(DAT_ce3097a,pc),r0
    bra LAB_ce309fc
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30976:
    #data 0x0158
DAT_ce30978:
    #data 0x03f4
DAT_ce3097a:
    #data 0x01a7
DAT_ce3097c:
    #data 0x01fa
DAT_ce3097e:
    #data 0x0c00
DAT_ce30980:
    #data 0x0100
DAT_ce30982:
    #data 0x01ac
DAT_ce30984:
    #data 0x01fe
DAT_ce30986:
    #data 0x01d6
DAT_ce30988:
    #data 0x01e8
    #align4

PTR_ce3098c:
    #data DAT_ce3333c
PTR_ce30990:
    #data loc_8c034e8c
PTR_ce30994:
    #data loc_8c0a5500
PTR_ce30998:
    #data loc_8c2896b0
PTR_ce3099c:
    #data DAT_ce33340
PTR_ce309a0:
    #data DAT_ce33358

;=============================================

LAB_ce309a4:
    mov.w @(DAT_ce30a86,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce30a94,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a88,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce309c8
    mov.w @(DAT_ce30a8a,pc),r0
    mov.l @(PTR_ce30a98,pc),r3
    bra LAB_ce309ce
    mov.l r3,@(r0,r14)

LAB_ce309c8:
    mov.w @(DAT_ce30a8a,pc),r0
    mov.l @(PTR_ce30a9c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce309ce:
    mov.w @(DAT_ce30a8c,pc),r0
    mov 0x01,r3
    bra LAB_ce309fc
    mov.b r3,@(r0,r14)

LAB_ce309d6:
    mov.w @(DAT_ce30a86,pc),r0
    mov 0x02,r4
    mov 0x0E,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce309f2
    mov.w @(DAT_ce30a8a,pc),r0
    mov.l @(PTR_ce30aa0,pc),r2
    bra LAB_ce309f8
    mov.l r2,@(r0,r14)

LAB_ce309f2:
    mov.w @(DAT_ce30a8a,pc),r0
    mov.l @(PTR_ce30aa4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce309f8:
    mov.w @(DAT_ce30a8c,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce309fc:
    mov.w @(DAT_ce30a8e,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30aa8,pc),r3
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
    mov.w @(DAT_ce30a86,pc),r0
    mov.l @(PTR_ce30aac,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30a90,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30a36
    mov.w @(DAT_ce30a90,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30a36:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30a3e:
    mov.w @(DAT_ce30a92,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a5e
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30ab8
    cmp/eq 0x02,r0
    bt LAB_ce30ade
    bra LAB_ce30b06
    nop

LAB_ce30a5e:
    mov.w @(DAT_ce30a86,pc),r0
    mov 0x0F,r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce30a7a
    mov 0x14,r5
    mov.w @(DAT_ce30a8a,pc),r0
    mov.l @(PTR_ce30ab0,pc),r3
    bra LAB_ce30a80
    mov.l r3,@(r0,r14)

LAB_ce30a7a:
    mov.w @(DAT_ce30a8a,pc),r0
    mov.l @(PTR_ce30ab4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a80:
    mov.w @(DAT_ce30a8c,pc),r0
    bra LAB_ce30b06
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a86:
    #data 0x0158
DAT_ce30a88:
    #data 0x01fc
DAT_ce30a8a:
    #data 0x03f4
DAT_ce30a8c:
    #data 0x01a7
DAT_ce30a8e:
    #data 0x01ac
DAT_ce30a90:
    #data 0x01d6
DAT_ce30a92:
    #data 0x01e8
    #align4

PTR_ce30a94:
    #data loc_8c04223a
PTR_ce30a98:
    #data DAT_ce33344
PTR_ce30a9c:
    #data DAT_ce3335c
PTR_ce30aa0:
    #data DAT_ce33348
PTR_ce30aa4:
    #data DAT_ce33360
PTR_ce30aa8:
    #data loc_8c2896b0
PTR_ce30aac:
    #data loc_8c034e8c
PTR_ce30ab0:
    #data DAT_ce3334c
PTR_ce30ab4:
    #data DAT_ce33364

;=============================================

LAB_ce30ab8:
    mov.w @(DAT_ce30bd8,pc),r0
    mov 0x01,r4
    mov 0x10,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce30ad6
    mov 0x15,r5
    mov.w @(DAT_ce30bda,pc),r0
    mov.l @(PTR_ce30be8,pc),r3
    bra LAB_ce30b02
    mov.l r3,@(r0,r14)

LAB_ce30ad6:
    mov.w @(DAT_ce30bda,pc),r0
    mov.l @(PTR_ce30bec,pc),r1
    bra LAB_ce30b02
    mov.l r1,@(r0,r14)

LAB_ce30ade:
    mov.w @(DAT_ce30bd8,pc),r0
    mov 0x02,r4
    mov 0x11,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce30afc
    mov 0x16,r5
    mov.w @(DAT_ce30bda,pc),r0
    mov.l @(PTR_ce30bf0,pc),r3
    bra LAB_ce30b02
    mov.l r3,@(r0,r14)

LAB_ce30afc:
    mov.w @(DAT_ce30bda,pc),r0
    mov.l @(PTR_ce30bf4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b02:
    mov.w @(DAT_ce30bdc,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30b06:
    mov.l @(PTR_ce30bf8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30bde,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30bfc,pc),r3
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
    mov.w @(DAT_ce30bd8,pc),r0
    mov.l @(PTR_ce30c00,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30be0,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30b46
    mov.w @(DAT_ce30be0,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30b46:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30b4e:
    mov.w @(DAT_ce30be2,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c04,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30b62:
    sts.l PR,@-r15
    mov.l @(PTR_ce30c08,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30b70:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30c0c,pc),r3
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
    mov.w @(DAT_ce30be4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c10
    mov.w @(DAT_ce30be6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30bd0
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30cfc
    mov.l @r15+,r14

LAB_ce30bd0:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30cc8
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30bd8:
    #data 0x0158
DAT_ce30bda:
    #data 0x03f4
DAT_ce30bdc:
    #data 0x01a7
DAT_ce30bde:
    #data 0x01ac
DAT_ce30be0:
    #data 0x01d6
DAT_ce30be2:
    #data 0x01ff
DAT_ce30be4:
    #data 0x01fe
DAT_ce30be6:
    #data 0x01f9
    #align4

PTR_ce30be8:
    #data DAT_ce33350
PTR_ce30bec:
    #data DAT_ce33368
PTR_ce30bf0:
    #data DAT_ce33354
PTR_ce30bf4:
    #data DAT_ce3336c
PTR_ce30bf8:
    #data loc_8c04223a
PTR_ce30bfc:
    #data loc_8c2896b0
PTR_ce30c00:
    #data loc_8c034e8c
PTR_ce30c04:
    #data PTR_ce33470
PTR_ce30c08:
    #data loc_8c0511e2
PTR_ce30c0c:
    #data loc_8c052c84

;=============================================

LAB_ce30c10:
    mov.w @(DAT_ce30cea,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c22
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c4c
    mov.l @r15+,r14

LAB_ce30c22:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c2a
    mov.l @r15+,r14

LAB_ce30c2a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30cf0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c44
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30cf4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30c44:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30c4c:
    mov.w @(DAT_ce30cec,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30c68
    cmp/eq 0x00,r0
    bt LAB_ce30cac
    cmp/eq 0x01,r0
    bt LAB_ce30cac
    bra LAB_ce30cc2
    nop

LAB_ce30c68:
    mov.l @(PTR_ce30cf0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c7a
    mov.l @(PTR_ce30cf4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30c7a:
    mov.w @(DAT_ce30cee,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30cc2
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x56,r0
    mov 0x08,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30cf8,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    bra LAB_ce30cc2
    mov.w r1,@(r0,r2)

LAB_ce30cac:
    mov.l @(PTR_ce30cf0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cc2
    lds.l @r15+,PR
    mov.l @(PTR_ce30cf4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30cc2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30cc8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30cf0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ce2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30cf4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30ce2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30cea:
    #data 0x01f9
DAT_ce30cec:
    #data 0x01e8
DAT_ce30cee:
    #data 0x014b
    #align4

PTR_ce30cf0:
    #data loc_8c034dee
PTR_ce30cf4:
    #data loc_8c051648
PTR_ce30cf8:
    #data loc_8c2896b0

;=============================================

LAB_ce30cfc:
    mov.w @(DAT_ce30db6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30d42
    cmp/eq 0x01,r0
    bt LAB_ce30d42
    cmp/eq 0x02,r0
    bf LAB_ce30d58
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30d42
    mov.l @(PTR_ce30dbc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce30d3a
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce30dc0,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d3a:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    bra LAB_ce30d58
    mov.w r0,@(0x1c,r14)

LAB_ce30d42:
    mov.l @(PTR_ce30dbc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d58
    lds.l @r15+,PR
    mov.l @(PTR_ce30dc4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30d58:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d5e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30dc8,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30dcc,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30d74:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30dd0,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30dd4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30db8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d96
    bsr FUN_ce30e36
    mov r14,r4
    bra LAB_ce30d9a
    nop

LAB_ce30d96:
    bsr FUN_ce30de0
    mov r14,r4

LAB_ce30d9a:
    mov.l @(PTR_ce30dd8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30db0
    lds.l @r15+,PR
    mov.l @(PTR_ce30ddc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30db0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30db6:
    #data 0x01e8
DAT_ce30db8:
    #data 0x01fe
    #align4

PTR_ce30dbc:
    #data loc_8c034dee
PTR_ce30dc0:
    #data loc_8c034e8c
PTR_ce30dc4:
    #data loc_8c051648
PTR_ce30dc8:
    #data loc_8c050084
PTR_ce30dcc:
    #data loc_8c04ff88
PTR_ce30dd0:
    #data loc_8c04fea8
PTR_ce30dd4:
    #data loc_8c050048
PTR_ce30dd8:
    #data loc_8c052ce2
PTR_ce30ddc:
    #data loc_8c052dac

;=============================================

FUN_ce30de0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30f28,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30df6
    mov.l @(PTR_ce30f2c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30df6:
    mov.w @(DAT_ce30f1c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30e30
    mov.w @(DAT_ce30f1e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e30
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x56,r0
    mov 0x0E,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30f30,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce30e30:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30e36:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30f28,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e50
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30f2c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30e50:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30e58:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30eb6
    mov.l @(PTR_ce30f34,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    mov.l @(PTR_ce30f38,pc),r3
    mov 0x14,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x11,r6
    mov.w @(DAT_ce30f20,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30f22,pc),r0
    mov 0x45,r2
    mov.l @(PTR_ce30f30,pc),r3
    mov 0x05,r5
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
    mov.l @(PTR_ce30f3c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30f40,pc),r3
    mov 0x15,r5
    jsr @r3
    mov r14,r4

LAB_ce30eb6:
    mov.w @(DAT_ce30f24,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30ec6
    mov.l @(PTR_ce30f44,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30ec6:
    mov 0x5C,r1
    mov.l @(PTR_ce30f48,pc),r3
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
    mov.l @(PTR_ce30f28,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f50
    lds.l @r15+,PR
    mov.l @(PTR_ce30f4c,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f1c:
    #data 0x01e8
DAT_ce30f1e:
    #data 0x014b
DAT_ce30f20:
    #data 0x01f9
DAT_ce30f22:
    #data 0x01a1
DAT_ce30f24:
    #data 0x01ff
    #align4

PTR_ce30f28:
    #data loc_8c034dee
PTR_ce30f2c:
    #data loc_8c05176e
PTR_ce30f30:
    #data loc_8c2896b0
PTR_ce30f34:
    #data loc_8c052b4c
PTR_ce30f38:
    #data loc_8c034e8c
PTR_ce30f3c:
    #data loc_8c056de4
PTR_ce30f40:
    #data loc_8c04223a
PTR_ce30f44:
    #data loc_8c0511e2
PTR_ce30f48:
    #data loc_8c052c84
PTR_ce30f4c:
    #data loc_8c051648

;=============================================

LAB_ce30f50:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30f58:
    mov r4,r3
    mov.l @(PTR_ce3109c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30f6a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310a0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31096,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30fb8
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce310a4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce310a8,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31098,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30fb4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30fb4:
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)

LAB_ce30fb8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fbe:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce310a0,pc),r3
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
    bt LAB_ce31014
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31014:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3101a:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce310ac,pc),r3
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
    mov.l @(PTR_ce310a0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3107e
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    mov.l @(PTR_ce310b0,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3107e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31084:
    mov r4,r3
    mov.l @(PTR_ce310b4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31096:
    #data 0x0141
DAT_ce31098:
    #data 0x01d2
    #align4

PTR_ce3109c:
    #data PTR_ce33480
PTR_ce310a0:
    #data loc_8c034dee
DAT_ce310a4:
    #data 0xc1555555
DAT_ce310a8:
    #data 0x3ea00000
PTR_ce310ac:
    #data loc_8c052c84
PTR_ce310b0:
    #data loc_8c051648
PTR_ce310b4:
    #data PTR_ce3348c

;=============================================

LAB_ce310b8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31214,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31208,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31108
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
    mova @(DAT_ce31218,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3121c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3120a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31100
    mova @(DAT_ce31220,pc),r0
    bra LAB_ce31104
    fmov.s @r0,fr3

LAB_ce31100:
    mova @(DAT_ce31224,pc),r0
    fmov.s @r0,fr3

LAB_ce31104:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce31108:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3110e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31214,pc),r3
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
    mov.w @(DAT_ce3120c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31190
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    mov.w @(DAT_ce3120c,pc),r0
    mov 0x02,r5
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
    mov.w @(DAT_ce3120e,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31228,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31190:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31196:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31214,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311b0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3122c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce311b0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce311b8:
    mov r4,r3
    mov.l @(PTR_ce31230,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce311ca:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r3,r7
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31210,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x25,r0
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce31234,pc),r3
    extu.b r6,r6
    shll2 r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31234,pc),r2
    mov 0x01,r7
    mov r7,r5
    mov 0x18,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31228,pc),r3
    mov r14,r4
    mov 0x00,r6
    mov 0x12,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31208:
    #data 0x0141
DAT_ce3120a:
    #data 0x01d2
DAT_ce3120c:
    #data 0x041c
DAT_ce3120e:
    #data 0x01f9
DAT_ce31210:
    #data 0x012c
    #align4

PTR_ce31214:
    #data loc_8c034dee
DAT_ce31218:
    #data 0x41092492
DAT_ce3121c:
    #data 0xbf4db6db
DAT_ce31220:
    #data 0x41200000
DAT_ce31224:
    #data 0xc1200000
PTR_ce31228:
    #data loc_8c034e8c
PTR_ce3122c:
    #data loc_8c051648
PTR_ce31230:
    #data PTR_ce33498
PTR_ce31234:
    #data loc_8c03544c

;=============================================

LAB_ce31238:
    mov.l @(PTR_ce31378,pc),r2
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @r2,r3
    mov.b @r3,r1
    mov 0x02,r3
    extu.b r1,r1
    cmp/ge r3,r1
    bf/s LAB_ce31272
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov r3,r5
    mov.l @(PTR_ce3137c,pc),r1
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce3137c,pc),r3
    mov 0x02,r5
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31380,pc),r2
    mov 0x1F,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31272:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31278:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31384,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31372,pc),r0
    mov.b @(r0,r14),r2
    cmp/pl r2
    bf LAB_ce312a8
    mov.b @(r0,r14),r6
    mov 0x25,r0
    mov.b @(r0,r14),r3
    mov 0x00,r5
    mov 0x01,r7
    extu.b r3,r3
    shll2 r3
    add r3,r6
    mov.l @(PTR_ce31388,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31372,pc),r0
    mov 0x00,r2
    bra LAB_ce312c0
    mov.b r2,@(r0,r14)

LAB_ce312a8:
    mov.b @(r0,r14),r1
    cmp/pz r1
    bt LAB_ce312c0
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3138c,pc),r3
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce312c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce312c6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31384,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312de
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce312de:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce312e6:
    mov r4,r3
    mov.l @(PTR_ce31390,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce312f8:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31394,pc),r0
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31314:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x06,r3
    mov.w @(DAT_ce31374,pc),r0
    mov 0x01,r5
    mov.l @(PTR_ce31398,pc),r2
    mov.b r3,@(r0,r14)
    mov.l @r2,r3
    mov.l @(0x1c,r3),r1
    tst r5,r1
    bt LAB_ce3133c
    mov r5,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31374,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3133c:
    mov.w @(DAT_ce31374,pc),r0
    mov r14,r4
    mov.l @(PTR_ce3139c,pc),r3
    mov 0x13,r5
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce3134a:
    mov.l @(PTR_ce3139c,pc),r3
    mov 0x07,r6
    jmp @r3
    mov 0x13,r5

LAB_ce31352:
    mov.l @(PTR_ce3139c,pc),r3
    mov 0x08,r6
    jmp @r3
    mov 0x13,r5

LAB_ce3135a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313a0,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce313a8
    lds.l @r15+,PR
    mov.l @(PTR_ce313a4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31372:
    #data 0x0141
DAT_ce31374:
    #data 0x0158
    #align4

PTR_ce31378:
    #data loc_8c2896b0
PTR_ce3137c:
    #data loc_8c0a5500
PTR_ce31380:
    #data loc_8c042008
PTR_ce31384:
    #data loc_8c034dee
PTR_ce31388:
    #data loc_8c03544c
PTR_ce3138c:
    #data loc_8c035162
PTR_ce31390:
    #data PTR_ce334a8
PTR_ce31394:
    #data PTR_ce334b0
PTR_ce31398:
    #data loc_8c26823c
PTR_ce3139c:
    #data loc_8c034e8c
PTR_ce313a0:
    #data loc_8c046c8a
PTR_ce313a4:
    #data loc_8c051648

;=============================================

LAB_ce313a8:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce314cc,pc),r0
    extu.b r2,r2
    lds.l @r15+,PR
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce313bc:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce313ce
    mov.l @(PTR_ce314d0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce313ce:
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce314d4,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce313de:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314d0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce314c0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31412
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov r3,r6
    mov.b @(0x7,r14),r0
    mov 0x07,r5
    mov.l @(PTR_ce314d8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce314d8,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x07,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31412:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31418:
    mov.l @(PTR_ce314d0,pc),r3
    jmp @r3
    nop

LAB_ce3141e:
    mov.b @(0x7,r4),r0
    mov 0x01,r6
    mov.l @(PTR_ce314dc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce3142c:
    mov.l @(PTR_ce314d0,pc),r3
    jmp @r3
    nop

LAB_ce31432:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314d0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce314c0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31452
    mov 0x00,r3
    mov r3,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce314d8,pc),r3
    mov 0x09,r5
    jsr @r3
    mov r14,r4

LAB_ce31452:
    mov.w @(DAT_ce314c2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3146c
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x01,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce314d8,pc),r3
    mov 0x09,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3146c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31472:
    mov.w @(DAT_ce314c4,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce314e0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce31486:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov 0x00,r5
    mov.w @(DAT_ce314c6,pc),r0
    mov.l @(PTR_ce314e4,pc),r3
    mov.b r5,@(r0,r4)
    add 0xFD,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce314c8,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce314ae:
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

DAT_ce314c0:
    #data 0x0141
DAT_ce314c2:
    #data 0x014b
DAT_ce314c4:
    #data 0x01e9
DAT_ce314c6:
    #data 0x01fc
DAT_ce314c8:
    #data 0x041c
    #align4

PTR_ce314cc:
    #data PTR_ce334c4
PTR_ce314d0:
    #data loc_8c034dee
PTR_ce314d4:
    #data PTR_ce334d8
PTR_ce314d8:
    #data loc_8c0a5500
PTR_ce314dc:
    #data loc_8c034e8c
PTR_ce314e0:
    #data PTR_ce334e8
PTR_ce314e4:
    #data loc_8c05218a
PTR_ce314e8:
    #data PTR_ce33528

;=============================================

LAB_ce314ec:
    mov.w @(DAT_ce31614,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31616,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3150e
    mov.w @(DAT_ce3161a,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31618,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3150e:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce31486
    mov r14,r4
    mov.l @(PTR_ce3162c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3161c,pc),r0
    mov 0x31,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31630,pc),r3
    mov r4,r6
    mov.l r4,@(r0,r14)
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
    mov.l @(PTR_ce31634,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31552:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31614,pc),r0
    mov r4,r14
    mov 0x05,r4
    mov.b r4,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce3161e,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31614,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31616,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31578
    bra LAB_ce3157a
    mov 0x02,r3

LAB_ce31578:
    mov 0x00,r3

LAB_ce3157a:
    mov.w @(DAT_ce31620,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31638,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31622,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce315bc
    mov.w @(DAT_ce3161a,pc),r0
    mov 0x00,r4
    fldi0 fr4
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31640,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce3163c,pc),r0
    fmov.s fr4,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31644,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce315bc:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce315c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31638,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce315de
    lds.l @r15+,PR
    mov.l @(PTR_ce31648,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce315de:
    mov.w @(DAT_ce31624,pc),r0
    mov.w @(DAT_ce31626,pc),r3
    mov.b @(r0,r14),r0
    extu.b r0,r0
    and 0xE0,r0
    cmp/eq r3,r0
    bt LAB_ce315fe
    mov.w @(DAT_ce31628,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3162a,pc),r0
    mov.b r4,@(r0,r14)
    bra LAB_ce3160c
    add 0x01,r0

LAB_ce315fe:
    mov.w @(DAT_ce31614,pc),r0
    mov 0x05,r4
    mov 0x02,r2
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3161e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31614,pc),r0

LAB_ce3160c:
    mov.b r4,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31614:
    #data 0x0328
DAT_ce31616:
    #data 0x0255
DAT_ce31618:
    #data 0x00ff
DAT_ce3161a:
    #data 0x03f0
DAT_ce3161c:
    #data 0x01a1
DAT_ce3161e:
    #data 0x03f8
DAT_ce31620:
    #data 0x03f1
DAT_ce31622:
    #data 0x0141
DAT_ce31624:
    #data 0x014a
DAT_ce31626:
    #data 0x0080
DAT_ce31628:
    #data 0x03f9
DAT_ce3162a:
    #data 0x0327
    #align4

PTR_ce3162c:
    #data loc_8c05115a
PTR_ce31630:
    #data loc_8c2896b0
PTR_ce31634:
    #data loc_8c034e8c
PTR_ce31638:
    #data loc_8c034dee
DAT_ce3163c:
    #data 0x432b6db6
PTR_ce31640:
    #data loc_8c050834
PTR_ce31644:
    #data loc_8c0a3104
PTR_ce31648:
    #data loc_8c051648

;=============================================

LAB_ce3164c:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3174a,pc),r0
    mov 0x00,r4
    mov 0x03,r3
    mov.l @(PTR_ce3175c,pc),r1
    mov.b r4,@(r0,r14)
    add 0x50,r0
    mov.b r3,@(r0,r14)
    add 0x06,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce3174c,pc),r5
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31674:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce31486
    mov r14,r4
    mov.w @(DAT_ce3174e,pc),r0
    mov 0x00,r13
    mov 0x15,r5
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31750,pc),r0
    mov.l @r15,r3
    mov.b @(r0,r14),r2
    extu.b r2,r2
    mov.w r2,@r3
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce31760,pc),r0
    extu.b r6,r6
    mov.l @(PTR_ce31764,pc),r3
    mov.b @(r0,r6),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31750,pc),r0
    mov 0x05,r5
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31768,pc),r0
    extu.b r2,r2
    mov.b @(r0,r2),r3
    mov.w @(DAT_ce31752,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3176c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31754,pc),r0
    mov.l @(PTR_ce31770,pc),r2
    mov.w r13,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31774,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce316f0:
    mov.w @(DAT_ce31756,pc),r2
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31754,pc),r0
    add r14,r2
    sts.l PR,@-r15
    mov.w @r2,r2
    mov r0,r3
    add 0x0E,r3
    mov.w @(r0,r14),r1
    and r3,r2
    or r2,r1
    mov.l @(PTR_ce31778,pc),r2
    mov.w r1,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31758,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3173e
    mov.l @(PTR_ce3177c,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce3172c
    mov 0x03,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3172c:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31780,pc),r3
    mov 0x20,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3173e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31744:
    mov.l @(PTR_ce31778,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3174a:
    #data 0x019c
DAT_ce3174c:
    #data 0x02a4
DAT_ce3174e:
    #data 0x01d5
DAT_ce31750:
    #data 0x01a3
DAT_ce31752:
    #data 0x01a1
DAT_ce31754:
    #data 0x0352
DAT_ce31756:
    #data 0x034e
DAT_ce31758:
    #data 0x0141
    #align4

PTR_ce3175c:
    #data PTR_ce33534
PTR_ce31760:
    #data DAT_ce33564
PTR_ce31764:
    #data loc_8c034e8c
PTR_ce31768:
    #data DAT_ce33567
PTR_ce3176c:
    #data loc_8c2896b0
PTR_ce31770:
    #data loc_8c056de4
PTR_ce31774:
    #data loc_8c05115a
PTR_ce31778:
    #data loc_8c034dee
PTR_ce3177c:
    #data loc_8c0a3374
PTR_ce31780:
    #data loc_8c042008

;=============================================

LAB_ce31784:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov 0x80,r3
    mov 0x00,r4
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3186e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x50,r0
    mov.b r4,@(r0,r14)
    add 0x05,r0
    mov.b r4,@(r0,r14)
    mov.l @r15,r6
    mov.l @(PTR_ce31878,pc),r0
    mov.w @r6,r6
    mov.l @(PTR_ce3187c,pc),r3
    extu.w r6,r6
    mov.b @(r0,r6),r6
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce317c0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31880,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce317e0
    mov.l @(PTR_ce31884,pc),r3
    jsr @r3
    nop
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31888,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce317e0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce317e8:
    mov.w @(DAT_ce31870,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x08,r0
    bt/s LAB_ce3181a
    mov r5,r13
    mov.w @(DAT_ce31872,pc),r4
    mov r4,r0
    nop
    add 0x4A,r0
    mov.w @(DAT_ce31874,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce31830
    mov 0x60,r5
    mov.w @(DAT_ce31876,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bt LAB_ce3181e

LAB_ce3181a:
    bra LAB_ce31824
    mov 0x00,r6

LAB_ce3181e:
    tst r5,r3
    bt LAB_ce31862
    mov 0x01,r6

LAB_ce31824:
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    bra FUN_ce318ba
    mov.l @r15+,r14

LAB_ce31830:
    mov.w @(DAT_ce31876,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bt LAB_ce31842
    mov 0x09,r0
    mov.b r0,@(0x6,r14)
    bra LAB_ce31850
    mov 0x17,r5

LAB_ce31842:
    mov.w @(r0,r14),r1
    extu.w r1,r1
    tst r5,r1
    bt LAB_ce31862
    mov 0x0A,r0
    mov 0x16,r5
    mov.b r0,@(0x6,r14)

LAB_ce31850:
    mov.l @(PTR_ce3188c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce319fc
    mov.l @r15+,r14

LAB_ce31862:
    lds.l @r15+,PR
    mov.l @(PTR_ce31880,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3186e:
    #data 0x019d
DAT_ce31870:
    #data 0x0255
DAT_ce31872:
    #data 0x0300
DAT_ce31874:
    #data 0x3c00
DAT_ce31876:
    #data 0x034e
    #align4

PTR_ce31878:
    #data DAT_ce3356a
PTR_ce3187c:
    #data loc_8c034e8c
PTR_ce31880:
    #data loc_8c034dee
PTR_ce31884:
    #data loc_8c02fd26
PTR_ce31888:
    #data loc_8c051648
PTR_ce3188c:
    #data loc_8c042008

;=============================================

LAB_ce31890:
    mov.l r14,@-r15
    mov r5,r14
    mov.w @(DAT_ce319ce,pc),r1
    mov 0x11,r3
    mov.w @(0x14,r14),r0
    add r14,r3
    add r4,r1
    mov r14,r5
    mov.w r0,@r1
    mov.w @(DAT_ce319d0,pc),r0
    mov.b @r3,r3
    mov.b @(r0,r4),r2
    xor r3,r2
    mov.b r2,@(r0,r4)
    mov.b @(r0,r4),r1
    mov.w @(DAT_ce319d2,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r4)
    mov.w @(0x16,r14),r0
    mov.l @r15+,r14
    mov r0,r6

;=============================================

FUN_ce318ba:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r6,r12
    mov 0x05,r6
    mov.l @(PTR_ce319dc,pc),r3
    mov r4,r14
    mov.l r5,@r15
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce319ce,pc),r0
    mov 0xF6,r2
    mov.w @(DAT_ce319d4,pc),r3
    mov 0x0F,r13
    mov.w @(r0,r14),r0
    extu.w r0,r0
    and r3,r0
    shad r2,r0
    and r0,r13
    mov.l @(PTR_ce319e0,pc),r0
    mov.b @(r0,r13),r13
    mov.w @(DAT_ce319d6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x08,r0
    bf/s LAB_ce318f8
    extu.b r12,r3
    mov 0x0A,r13

LAB_ce318f8:
    tst r3,r3
    bt LAB_ce31906
    mov 0x0A,r3
    extu.b r13,r2
    cmp/ge r3,r2
    bf LAB_ce31906
    mov 0x00,r12

LAB_ce31906:
    mov 0x20,r0
    mov.b r12,@(r0,r14)
    extu.b r13,r6
    mov.l @r15,r3
    extu.b r13,r2
    mov.l @(PTR_ce319e4,pc),r0
    shlr r6
    mov.w r2,@r3
    mov 0x15,r5
    mov.l @(PTR_ce319e8,pc),r2
    mov.b @(r0,r6),r6
    jsr @r2
    mov r14,r4
    mov 0x06,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce319ec,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31934:
    mov.l @(PTR_ce319ec,pc),r3
    jmp @r3
    nop

LAB_ce3193a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce319d8,pc),r0
    mov 0x80,r3
    mov r4,r14
    mov 0x00,r4
    mov.l r5,@r15
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x50,r0
    mov.b r4,@(r0,r14)
    mov r4,r3
    add 0x05,r0
    mov.b r4,@(r0,r14)
    mov.l @r15,r6
    mov.l @(PTR_ce319f0,pc),r0
    mov.w @r6,r6
    extu.w r6,r6
    cmp/gt r6,r3
    addc r3,r6
    mov.l @(PTR_ce319e8,pc),r3
    shar r6
    mov.b @(r0,r6),r6
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce3197e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce319ec,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319c6
    mov.l @(PTR_ce319f4,pc),r3
    jsr @r3
    nop
    mov.l @r15,r2
    mov.w @r2,r3
    mov 0x0A,r2
    extu.w r3,r3
    cmp/ge r2,r3
    bt/s LAB_ce319bc
    mov r14,r4
    mov.w @(DAT_ce319d0,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)
    mov.w @(DAT_ce319d2,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    extu.b r0,r0
    mov.w r0,@r1

LAB_ce319bc:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce319f8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce319c6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319ce:
    #data 0x034a
DAT_ce319d0:
    #data 0x01d2
DAT_ce319d2:
    #data 0x0130
DAT_ce319d4:
    #data 0x3c00
DAT_ce319d6:
    #data 0x0255
DAT_ce319d8:
    #data 0x019d
    #align4

PTR_ce319dc:
    #data loc_8c02fec4
PTR_ce319e0:
    #data DAT_ce3356d
PTR_ce319e4:
    #data DAT_ce3357d
PTR_ce319e8:
    #data loc_8c034e8c
PTR_ce319ec:
    #data loc_8c034dee
PTR_ce319f0:
    #data DAT_ce33584
PTR_ce319f4:
    #data loc_8c02fd26
PTR_ce319f8:
    #data loc_8c051648

;=============================================

LAB_ce319fc:
    mov.w @(DAT_ce31b06,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31b08,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31a32
    mov.w @(DAT_ce31b0a,pc),r0
    mov.w @(DAT_ce31b0c,pc),r1
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r1,r3
    bt LAB_ce31a24
    mov 0x00,r6
    bsr FUN_ce318ba
    mov r14,r4
    bra LAB_ce31a32
    nop

LAB_ce31a24:
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x60,r0
    bt LAB_ce31a32
    mov 0x01,r6
    bsr FUN_ce318ba
    mov r14,r4

LAB_ce31a32:
    lds.l @r15+,PR
    mov.l @(PTR_ce31b1c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a3c:
    mov.w @(DAT_ce31b0e,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x50,r0
    mov 0x03,r2
    mov.l @(PTR_ce31b20,pc),r1
    mov.b r2,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce31b10,pc),r5
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a60:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov 0x00,r13
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31b12,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.l @(PTR_ce31b24,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31b14,pc),r0
    mov 0x02,r2
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mova @(DAT_ce31b28,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31b2c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov.s @(r0,r14),fr2
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce31b16,pc),r0
    mov.l @r15,r3
    mov.b @(r0,r14),r2
    extu.b r2,r2
    mov.w r2,@r3
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce31b30,pc),r0
    extu.b r6,r6
    mov.l @(PTR_ce31b34,pc),r3
    mov.b @(r0,r6),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31b16,pc),r0
    mov r14,r4
    mov 0x05,r5
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31b38,pc),r0
    extu.b r2,r2
    mov.b @(r0,r2),r3
    mov.w @(DAT_ce31b18,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31b3c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31b1a,pc),r0
    mov.w r13,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31b40,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b06:
    #data 0x034a
DAT_ce31b08:
    #data 0x3c00
DAT_ce31b0a:
    #data 0x034e
DAT_ce31b0c:
    #data 0x0300
DAT_ce31b0e:
    #data 0x019c
DAT_ce31b10:
    #data 0x02a4
DAT_ce31b12:
    #data 0x01d4
DAT_ce31b14:
    #data 0x01f9
DAT_ce31b16:
    #data 0x01a3
DAT_ce31b18:
    #data 0x01a1
DAT_ce31b1a:
    #data 0x0352
    #align4

PTR_ce31b1c:
    #data loc_8c034dee
PTR_ce31b20:
    #data PTR_ce3358c
PTR_ce31b24:
    #data loc_8c05218a
DAT_ce31b28:
    #data 0x41000000
DAT_ce31b2c:
    #data 0x41800000
PTR_ce31b30:
    #data DAT_ce335bc
PTR_ce31b34:
    #data loc_8c034e8c
PTR_ce31b38:
    #data DAT_ce335c1
PTR_ce31b3c:
    #data loc_8c2896b0
PTR_ce31b40:
    #data loc_8c056de4

;=============================================

FUN_ce31b44:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ca0,pc),r3
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
    mov.w @(DAT_ce31c96,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31bac
    mov.w @(DAT_ce31c96,pc),r0
    fldi0 fr4
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

LAB_ce31bac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31bb2:
    mov.w @(DAT_ce31c9a,pc),r2
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31c98,pc),r0
    add r14,r2
    sts.l PR,@-r15
    mov r0,r3
    mov.w @r2,r2
    add 0x0E,r3
    mov.w @(r0,r14),r1
    and r3,r2
    or r2,r1
    mov.w r1,@(r0,r14)
    bsr FUN_ce31b44
    mov r14,r4
    mov.l @(PTR_ce31ca4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31c9c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31c04
    mov.l @(PTR_ce31ca8,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce31bf2
    mov 0x03,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31bf2:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31cac,pc),r3
    mov 0x20,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c04:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31c0a:
    sts.l PR,@-r15
    bsr FUN_ce31b44
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31ca4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31c1a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov 0x80,r3
    mov 0x00,r2
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31c9e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x50,r0
    mov.b r2,@(r0,r14)
    mov.l @r15,r6
    mov.l @(PTR_ce31cb0,pc),r0
    mov.w @r6,r6
    mov.l @(PTR_ce31cb4,pc),r3
    extu.w r6,r6
    mov.b @(r0,r6),r6
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce31c52:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31b44
    mov r4,r14
    mov.l @(PTR_ce31ca4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c90
    mov.l @(PTR_ce31cb8,pc),r2
    jsr @r2
    nop
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31cbc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov.l @(PTR_ce31cc0,pc),r3
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c90:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c96:
    #data 0x041c
DAT_ce31c98:
    #data 0x0352
DAT_ce31c9a:
    #data 0x034e
DAT_ce31c9c:
    #data 0x0141
DAT_ce31c9e:
    #data 0x019d
    #align4

PTR_ce31ca0:
    #data loc_8c052c84
PTR_ce31ca4:
    #data loc_8c034dee
PTR_ce31ca8:
    #data loc_8c0a3374
PTR_ce31cac:
    #data loc_8c042008
PTR_ce31cb0:
    #data DAT_ce335c6
PTR_ce31cb4:
    #data loc_8c034e8c
PTR_ce31cb8:
    #data loc_8c02fd26
DAT_ce31cbc:
    #data 0xbf4db6db
PTR_ce31cc0:
    #data loc_8c05176e

;=============================================

LAB_ce31cc4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.w @(DAT_ce31de2,pc),r4
    mov r4,r0
    nop
    add 0x4A,r0
    mov.w @(DAT_ce31de4,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce31d02
    mov 0x60,r5
    mov.w @(DAT_ce31de6,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bt LAB_ce31cf0
    bra LAB_ce31cf6
    mov 0x00,r6

LAB_ce31cf0:
    tst r5,r3
    bt LAB_ce31d34
    mov 0x01,r6

LAB_ce31cf6:
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    bra FUN_ce31d6a
    mov.l @r15+,r14

LAB_ce31d02:
    mov.w @(DAT_ce31de6,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bt LAB_ce31d14
    mov 0x09,r0
    mov.b r0,@(0x6,r14)
    bra LAB_ce31d22
    mov 0x17,r5

LAB_ce31d14:
    mov.w @(r0,r14),r1
    extu.w r1,r1
    tst r5,r1
    bt LAB_ce31d34
    mov 0x0A,r0
    mov 0x16,r5
    mov.b r0,@(0x6,r14)

LAB_ce31d22:
    mov.l @(PTR_ce31df0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce31ea0
    mov.l @r15+,r14

LAB_ce31d34:
    lds.l @r15+,PR
    mov.l @(PTR_ce31df4,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d40:
    mov.l r14,@-r15
    mov r5,r14
    mov.w @(DAT_ce31de8,pc),r1
    mov 0x11,r3
    mov.w @(0x14,r14),r0
    add r14,r3
    add r4,r1
    mov r14,r5
    mov.w r0,@r1
    mov.w @(DAT_ce31dea,pc),r0
    mov.b @r3,r3
    mov.b @(r0,r4),r2
    xor r3,r2
    mov.b r2,@(r0,r4)
    mov.b @(r0,r4),r1
    mov.w @(DAT_ce31dec,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r4)
    mov.w @(0x16,r14),r0
    mov.l @r15+,r14
    mov r0,r6

;=============================================

FUN_ce31d6a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r6,r12
    mov 0x05,r6
    mov.l @(PTR_ce31df8,pc),r3
    mov r4,r14
    mov.l r5,@r15
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31de8,pc),r0
    mov 0xF6,r2
    mov.w @(DAT_ce31de4,pc),r3
    mov 0x0F,r13
    mov.w @(r0,r14),r0
    extu.w r0,r0
    and r3,r0
    shad r2,r0
    and r0,r13
    mov.l @(PTR_ce31dfc,pc),r0
    extu.b r12,r2
    tst r2,r2
    bt/s LAB_ce31daa
    mov.b @(r0,r13),r13
    mov 0x0A,r2
    extu.b r13,r1
    cmp/ge r2,r1
    bf LAB_ce31daa
    mov 0x00,r12

LAB_ce31daa:
    mov 0x20,r0
    mov.b r12,@(r0,r14)
    extu.b r13,r6
    mov.l @r15,r3
    extu.b r13,r2
    mov.l @(PTR_ce31e00,pc),r0
    shlr r6
    mov.w r2,@r3
    mov 0x15,r5
    mov.l @(PTR_ce31e04,pc),r2
    mov.b @(r0,r6),r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31df4,pc),r3
    mov 0x06,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31ddc:
    mov.l @(PTR_ce31df4,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31de2:
    #data 0x0300
DAT_ce31de4:
    #data 0x3c00
DAT_ce31de6:
    #data 0x034e
DAT_ce31de8:
    #data 0x034a
DAT_ce31dea:
    #data 0x01d2
DAT_ce31dec:
    #data 0x0130
    #align4

PTR_ce31df0:
    #data loc_8c042008
PTR_ce31df4:
    #data loc_8c034dee
PTR_ce31df8:
    #data loc_8c02fec4
PTR_ce31dfc:
    #data DAT_ce335cb
PTR_ce31e00:
    #data DAT_ce335db
PTR_ce31e04:
    #data loc_8c034e8c

;=============================================

LAB_ce31e08:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31ef6,pc),r0
    mov r4,r14
    mov 0x80,r3
    mov.l r5,@r15
    mov 0x00,r2
    mov.b r3,@(r0,r14)
    mov r2,r3
    add 0x50,r0
    mov.b r2,@(r0,r14)
    mov 0x15,r5
    mov.l @r15,r6
    mov.l @(PTR_ce31f08,pc),r0
    mov.w @r6,r6
    extu.w r6,r6
    cmp/gt r6,r3
    addc r3,r6
    mov.l @(PTR_ce31f0c,pc),r3
    shar r6
    mov.b @(r0,r6),r6
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce31e48:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31f10,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e98
    mov.l @(PTR_ce31f14,pc),r3
    jsr @r3
    nop
    mova @(DAT_ce31f18,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.l @r15,r3
    mov.w @r3,r2
    mov 0x0A,r3
    extu.w r2,r2
    cmp/ge r3,r2
    bt/s LAB_ce31e8e
    mov r14,r4
    mov.w @(DAT_ce31ef8,pc),r0
    mov 0x01,r2
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)
    mov.w @(DAT_ce31efa,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    extu.b r0,r0
    mov.w r0,@r1

LAB_ce31e8e:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31f1c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e98:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31ea0:
    mov.w @(DAT_ce31efc,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31efe,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31ed6
    mov.w @(DAT_ce31f00,pc),r0
    mov.w @(DAT_ce31f02,pc),r1
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r1,r3
    bt LAB_ce31ec8
    mov 0x00,r6
    bsr FUN_ce31d6a
    mov r14,r4
    bra LAB_ce31ed6
    nop

LAB_ce31ec8:
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x60,r0
    bt LAB_ce31ed6
    mov 0x01,r6
    bsr FUN_ce31d6a
    mov r14,r4

LAB_ce31ed6:
    lds.l @r15+,PR
    mov.l @(PTR_ce31f10,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ee0:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31f20,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31f04,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ef6:
    #data 0x019d
DAT_ce31ef8:
    #data 0x01d2
DAT_ce31efa:
    #data 0x0130
DAT_ce31efc:
    #data 0x034a
DAT_ce31efe:
    #data 0x3c00
DAT_ce31f00:
    #data 0x034e
DAT_ce31f02:
    #data 0x0300
DAT_ce31f04:
    #data 0x02a4
    #align4

PTR_ce31f08:
    #data DAT_ce335e2
PTR_ce31f0c:
    #data loc_8c034e8c
PTR_ce31f10:
    #data loc_8c034dee
PTR_ce31f14:
    #data loc_8c02fd26
DAT_ce31f18:
    #data 0xbf4db6db
PTR_ce31f1c:
    #data loc_8c05176e
PTR_ce31f20:
    #data PTR_ce335ec

;=============================================

LAB_ce31f24:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce31486
    mov r14,r4
    mov.l @(PTR_ce32040,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32044,pc),r3
    mov 0x10,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32032,pc),r0
    mov 0x00,r12
    mov.b r12,@(r0,r14)
    add 0xD8,r0
    mov.b r12,@(r0,r14)
    add 0x01,r0
    mov.b r12,@(r0,r14)
    mov r12,r0
    nop
    mov r14,r2
    mov r13,r1
    mov.l @(PTR_ce32048,pc),r3
    add 0x34,r2
    mov.w r0,@(0x2,r13)
    add 0x04,r1
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce32034,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce3204c,pc),r11
    mov.b @(r0,r14),r2
    extu.b r2,r2
    mov.w r2,@r13
    mov.w @r13,r6
    mov.l @(PTR_ce32050,pc),r2
    extu.w r6,r6
    mov r6,r3
    shll r6
    add r3,r6
    add r11,r6
    mov.b @r6,r6
    jsr @r2
    mov r14,r4
    mov.w @r13,r3
    mov 0x22,r1
    add r14,r1
    extu.w r3,r3
    mov r3,r2
    shll r3
    add r2,r3
    add r11,r3
    mov.b @(0x1,r3),r0
    mov.b r0,@r1
    mov.w @r13,r4
    extu.w r4,r4
    mov r4,r3
    shll r4
    add r3,r4
    add r11,r4
    mov.b @(0x2,r4),r0
    mov r0,r4
    mov.w @(DAT_ce32036,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31fbc
    mov 0x46,r4

LAB_ce31fbc:
    mov.w @(DAT_ce32038,pc),r0
    mov r13,r5
    mov.l @(PTR_ce32054,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l r12,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31fec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32058,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3203a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3202a
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3203c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @r15,r2
    mov.w @r2,r3
    tst r3,r3
    bt LAB_ce3201e
    mov.l @(PTR_ce3205c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3201e:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32060,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3202a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32032:
    #data 0x01fc
DAT_ce32034:
    #data 0x01a3
DAT_ce32036:
    #data 0x0255
DAT_ce32038:
    #data 0x01a1
DAT_ce3203a:
    #data 0x0141
DAT_ce3203c:
    #data 0x01f5
    #align4

PTR_ce32040:
    #data loc_8c05115a
PTR_ce32044:
    #data loc_8c056de4
PTR_ce32048:
    #data loc_8c1294c8
PTR_ce3204c:
    #data DAT_ce3360c
PTR_ce32050:
    #data loc_8c034e8c
PTR_ce32054:
    #data loc_8c2896b0
PTR_ce32058:
    #data loc_8c034dee
PTR_ce3205c:
    #data loc_8c053082
PTR_ce32060:
    #data loc_8c0a61d8

;=============================================

LAB_ce32064:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32190,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    add 0x08,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3208e
    mov.w @(DAT_ce32194,pc),r3
    mov.w @(DAT_ce32192,pc),r0
    add r14,r3
    mov.b @r3,r3
    mov.b @(r0,r14),r0
    extu.b r3,r3
    and 0x01,r0
    cmp/eq r3,r0
    bt LAB_ce320ce

LAB_ce3208e:
    mov.l @(PTR_ce321a4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce320ce
    mov.w @(DAT_ce32196,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce320e0
    mov.w @(DAT_ce32198,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x60,r0
    bt LAB_ce320e0
    mov.w @(DAT_ce3219a,pc),r0
    mov.w @(DAT_ce3219c,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bf LAB_ce320ce
    mov.w @(r0,r14),r1
    mov.w @(DAT_ce3219e,pc),r3
    extu.w r1,r1
    tst r3,r1
    bt LAB_ce320e0
    mov 0x05,r0
    mov.b r0,@(0x6,r14)
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce320ce:
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce320e8
    mov.l @r15+,r14

LAB_ce320e0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce320e8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce321ac,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @r13,r6
    mov.l @(PTR_ce321a8,pc),r0
    extu.w r6,r6
    mov.b @(r0,r6),r6
    jsr @r3
    mov r14,r4
    mov.w @r13,r2
    tst r2,r2
    bt/s LAB_ce32120
    mov r13,r5
    mova @(DAT_ce321b0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce321b4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32120:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32128:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov.l @(PTR_ce321a4,pc),r3
    mov 0x34,r0
    mov.l r5,@r15
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
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321c8
    mov.l @r15,r3
    mov.w @r3,r2
    tst r2,r2
    bt LAB_ce321bc
    mov.w @(DAT_ce321a0,pc),r0
    mov 0x11,r1
    mov r14,r4
    mov.b r1,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce321b8,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32190:
    #data 0x01f5
DAT_ce32192:
    #data 0x01fd
DAT_ce32194:
    #data 0x01d2
DAT_ce32196:
    #data 0x0411
DAT_ce32198:
    #data 0x034e
DAT_ce3219a:
    #data 0x034a
DAT_ce3219c:
    #data 0x1000
DAT_ce3219e:
    #data 0x0400
DAT_ce321a0:
    #data 0x01d6
    #align4

PTR_ce321a4:
    #data loc_8c034dee
PTR_ce321a8:
    #data DAT_ce33615
PTR_ce321ac:
    #data loc_8c034e8c
DAT_ce321b0:
    #data 0x3e092492
DAT_ce321b4:
    #data 0xbf4db6db
PTR_ce321b8:
    #data loc_8c0517be

;=============================================

LAB_ce321bc:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32310,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce321c8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce321d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32318,pc),r3
    mov.l r5,@r15
    mov 0x15,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.l @r15,r6
    mov.l @(PTR_ce32314,pc),r0
    mov.w @r6,r6
    extu.w r6,r6
    mov.b @(r0,r6),r6
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce321fc:
    mov.w @(DAT_ce322fe,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(0x2,r13),r0
    tst r0,r0
    bf LAB_ce3221e
    lds.l @r15+,PR
    mov.l @(PTR_ce3231c,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3221e:
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce32318,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @r13,r6
    mov.l @(PTR_ce32320,pc),r0
    extu.w r6,r6
    mov.b @(r0,r6),r6
    jsr @r3
    mov r14,r4
    mov r13,r2
    mov.l @(PTR_ce32324,pc),r3
    mov r14,r1
    add 0x04,r2
    add 0x34,r1
    jsr @r3
    mov 0x0C,r0
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce3224e
    mov.l @r15+,r14

LAB_ce3224e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3231c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32276
    mov.w @(DAT_ce32300,pc),r0
    mov 0x00,r3
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32302,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce32310,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32276:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3227c:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32328,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32304,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32292:
    mov.w @(DAT_ce32306,pc),r0
    mov 0x02,r6
    mov 0x05,r3
    mov.b r6,@(r0,r4)
    mov.w @(DAT_ce32308,pc),r0
    mov.b r3,@(r0,r4)
    mov.b @(0x6,r4),r0
    mov.l @(PTR_ce32318,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3230a,pc),r0
    mov.w r6,@r5
    mov.b r6,@(r0,r4)
    mov 0x18,r6
    jmp @r3
    mov 0x15,r5

LAB_ce322b2:
    mov.w @(DAT_ce32306,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32308,pc),r0
    mov.l @(PTR_ce3231c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3230c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce322f8
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3232c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce322ec
    mov 0x03,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce322ec:
    lds.l @r15+,PR
    mov.l @(PTR_ce32330,pc),r3
    mov 0x20,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce322f8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce322fe:
    #data 0x01f5
DAT_ce32300:
    #data 0x041c
DAT_ce32302:
    #data 0x01f9
DAT_ce32304:
    #data 0x02a4
DAT_ce32306:
    #data 0x03f8
DAT_ce32308:
    #data 0x0328
DAT_ce3230a:
    #data 0x01a3
DAT_ce3230c:
    #data 0x0141
    #align4

PTR_ce32310:
    #data loc_8c051648
PTR_ce32314:
    #data DAT_ce33618
PTR_ce32318:
    #data loc_8c034e8c
PTR_ce3231c:
    #data loc_8c034dee
PTR_ce32320:
    #data DAT_ce3361b
PTR_ce32324:
    #data loc_8c1294c8
PTR_ce32328:
    #data PTR_ce33620
PTR_ce3232c:
    #data loc_8c0a3374
PTR_ce32330:
    #data loc_8c042008

;=============================================

LAB_ce32334:
    mov.w @(DAT_ce32432,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce32440,pc),r3
    mov.w @(DAT_ce32434,pc),r0
    jmp @r3
    mov.b r2,@(r0,r4)

LAB_ce32344:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32436,pc),r0
    mov r4,r14
    mov 0x00,r4
    mov.l r5,@r15
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x80,r3
    mov.w @(DAT_ce32438,pc),r0
    mov 0x15,r5
    mov 0x19,r6
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3243a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x50,r0
    mov.l @(PTR_ce32444,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce32384:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32440,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce323be
    mov.l @(PTR_ce32448,pc),r3
    jsr @r3
    nop
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce3244c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov.l @(PTR_ce32450,pc),r3
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce323be:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce323c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32432,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32434,pc),r0
    mov 0x00,r3
    mov 0x01,r6
    mov.b r2,@(r0,r14)
    mov 0x03,r2
    mov.w @(DAT_ce3243c,pc),r0
    mov r6,r5
    mov.b r3,@(r0,r14)
    add 0x50,r0
    mov.l @(PTR_ce32454,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x20,r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov 0x08,r2
    mov.l @r15,r3
    mov 0x16,r5
    mov 0x04,r6
    mov.w r2,@r3
    mov.l @(PTR_ce32444,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x06,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32440,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32416:
    mov.w @(DAT_ce32432,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov 0x00,r3
    mov.w @(DAT_ce32434,pc),r0
    mov.b r2,@(r0,r4)
    mov 0x03,r2
    mov.w @(DAT_ce3243c,pc),r0
    mov.b r3,@(r0,r4)
    add 0x50,r0
    mov.l @(PTR_ce32440,pc),r3
    jmp @r3
    mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32432:
    #data 0x03f8
DAT_ce32434:
    #data 0x0328
DAT_ce32436:
    #data 0x03f9
DAT_ce32438:
    #data 0x0327
DAT_ce3243a:
    #data 0x019d
DAT_ce3243c:
    #data 0x019c
    #align4

PTR_ce32440:
    #data loc_8c034dee
PTR_ce32444:
    #data loc_8c034e8c
PTR_ce32448:
    #data loc_8c02fd26
DAT_ce3244c:
    #data 0xbf4db6db
PTR_ce32450:
    #data loc_8c05176e
PTR_ce32454:
    #data loc_8c02fec4

;=============================================

LAB_ce32458:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce325b2,pc),r0
    mov r4,r14
    mov 0x00,r4
    mov.l r5,@r15
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x03,r3
    mov.w @(DAT_ce325b4,pc),r0
    mov 0x80,r2
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x05,r6
    mov.w @(DAT_ce325b6,pc),r0
    mov.b r4,@(r0,r14)
    add 0x50,r0
    mov.b r3,@(r0,r14)
    add 0xB1,r0
    mov.b r2,@(r0,r14)
    add 0x50,r0
    mov.l @(PTR_ce325c4,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce324a2:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce325b2,pc),r0
    mov 0x00,r4
    mov 0x03,r3
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce325b4,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce325b6,pc),r0
    mov.b r4,@(r0,r14)
    add 0x50,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce325c8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324f2
    mov.l @(PTR_ce325cc,pc),r3
    jsr @r3
    nop
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce325d0,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce324f2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce324f8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce325d4,pc),r3
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
    mov 0x3D,r3
    mov.w @(DAT_ce325b8,pc),r0
    mov 0x00,r4
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce325d8,pc),r3
    mov 0x02,r6
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
    mov.l @(PTR_ce325c4,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce32550:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce325ba,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce325bc,pc),r0
    mov.l @(PTR_ce325c8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce325be,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce325aa
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce325dc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce325c0,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32590
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32590:
    mov 0x10,r0
    fldi0 fr3
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce325e0,pc),r0
    fmov.s fr3,@r15
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce325e4,pc),r3
    mov 0x01,r6
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce325aa:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325b2:
    #data 0x03f9
DAT_ce325b4:
    #data 0x0327
DAT_ce325b6:
    #data 0x019c
DAT_ce325b8:
    #data 0x01a1
DAT_ce325ba:
    #data 0x03f8
DAT_ce325bc:
    #data 0x0328
DAT_ce325be:
    #data 0x0141
DAT_ce325c0:
    #data 0x0130
    #align4

PTR_ce325c4:
    #data loc_8c034e8c
PTR_ce325c8:
    #data loc_8c034dee
PTR_ce325cc:
    #data loc_8c02fd26
PTR_ce325d0:
    #data loc_8c05176e
PTR_ce325d4:
    #data loc_8c05218a
PTR_ce325d8:
    #data loc_8c2896b0
DAT_ce325dc:
    #data 0xc1a00000
DAT_ce325e0:
    #data 0x432b6db6
PTR_ce325e4:
    #data loc_8c050834

;=============================================

LAB_ce325e8:
    mov.w @(DAT_ce326f4,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce326f6,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce326f8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32654
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce32614
    mov 0x0D,r0
    bra LAB_ce3268a
    mov.b r0,@(0x6,r14)

LAB_ce32614:
    mov.l @(PTR_ce32700,pc),r3
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
    bra LAB_ce326ee
    fmov fr2,@(r0,r14)

LAB_ce32654:
    mov.l @(PTR_ce32704,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bf LAB_ce32698
    mov 0x0D,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32708,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3270c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32710,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce326fa,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3268a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3268a:
    lds.l @r15+,PR
    mov.l @(PTR_ce32714,pc),r3
    mov r14,r4
    mov 0x03,r6
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32698:
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce32714,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce326fc,pc),r0
    mov r14,r2
    mov.l @(PTR_ce32718,pc),r3
    add 0x34,r2
    mov.l @(r0,r14),r4
    mov r4,r1
    add 0x34,r1
    jsr @r3
    mov 0x0C,r0
    mov.l @(DAT_ce3271c,pc),r1
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mova @(DAT_ce32720,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce326fa,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce326d8
    mova @(DAT_ce32724,pc),r0
    fmov.s @r0,fr4

LAB_ce326d8:
    mov 0x34,r0
    mov r4,r2
    fmov.s @(r0,r4),fr3
    mov r14,r1
    mov.l @(PTR_ce32718,pc),r3
    add 0x34,r2
    fadd fr4,fr3
    add 0x5C,r1
    fmov fr3,@(r0,r4)
    jsr @r3
    mov 0x0C,r0

LAB_ce326ee:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326f4:
    #data 0x03f8
DAT_ce326f6:
    #data 0x0328
DAT_ce326f8:
    #data 0x019e
DAT_ce326fa:
    #data 0x0130
DAT_ce326fc:
    #data 0x01b0
    #align4

PTR_ce32700:
    #data loc_8c034dee
PTR_ce32704:
    #data loc_8c05264c
DAT_ce32708:
    #data 0x414db6db
DAT_ce3270c:
    #data 0xbf4db6db
DAT_ce32710:
    #data 0x3fd55555
PTR_ce32714:
    #data loc_8c034e8c
PTR_ce32718:
    #data loc_8c1294c8
DAT_ce3271c:
    #data 0x41892492
DAT_ce32720:
    #data 0xc2d55555
DAT_ce32724:
    #data 0x42d55555

;=============================================

LAB_ce32728:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3287c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32758
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32872,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32750
    mov r14,r4
    mov 0x60,r0
    fmov fr4,@(r0,r14)

LAB_ce32750:
    lds.l @r15+,PR
    mov.l @(PTR_ce32880,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32758:
    mov.w @(DAT_ce32872,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32798
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

LAB_ce32798:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3279e:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32874,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov 0x00,r13
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32876,pc),r0
    mov.l @(PTR_ce3287c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce327d8
    mov r13,r0
    nop
    mov r14,r4
    mov.b r0,@(0x6,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce32292
    mov.l @r15+,r14

LAB_ce327d8:
    mov.w @(DAT_ce32878,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32808
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32884,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce32878,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce32808:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32812:
    rts
    nop

LAB_ce32816:
    mov r4,r3
    mov.l @(PTR_ce32888,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32828:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3288c,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce32890,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x42,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x3F,r6
    mov.w @(DAT_ce3287a,pc),r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32884,pc),r3
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
    mov.l @(PTR_ce32894,pc),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32872:
    #data 0x019e
DAT_ce32874:
    #data 0x03f8
DAT_ce32876:
    #data 0x0328
DAT_ce32878:
    #data 0x014b
DAT_ce3287a:
    #data 0x01a1
    #align4

PTR_ce3287c:
    #data loc_8c034dee
PTR_ce32880:
    #data loc_8c05176e
PTR_ce32884:
    #data loc_8c2896b0
PTR_ce32888:
    #data PTR_ce3365c
PTR_ce3288c:
    #data FUN_ce31486
PTR_ce32890:
    #data loc_8c05115a
PTR_ce32894:
    #data loc_8c034e8c

;=============================================

LAB_ce32898:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32980,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce328b8
    mov.l @(PTR_ce32984,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce328b8:
    mov.w @(DAT_ce3297c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce328da
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32988,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3298c,pc),r0
    mov.l @(PTR_ce32990,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce328da:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce328e2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce32932
    mov.b @(0x6,r14),r0
    mov 0x3C,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.w @(DAT_ce3297e,pc),r0
    mov 0x3D,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32994,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32998,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x01,r6
    mov.l @(PTR_ce3299c,pc),r3
    mov 0xFF,r0
    mov r6,r5
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4

LAB_ce32932:
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce32960
    mov.l @(PTR_ce32980,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce32958
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32998,pc),r3
    mov 0x3E,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32958:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    bra LAB_ce32976
    mov.w r0,@(0x1c,r14)

LAB_ce32960:
    mov.l @(PTR_ce32980,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32976
    lds.l @r15+,PR
    mov.l @(PTR_ce32984,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32976:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3297c:
    #data 0x0141
DAT_ce3297e:
    #data 0x01a1
    #align4

PTR_ce32980:
    #data loc_8c034dee
PTR_ce32984:
    #data loc_8c051648
DAT_ce32988:
    #data 0x42be0000
DAT_ce3298c:
    #data 0x42700000
PTR_ce32990:
    #data loc_8c050ea4
PTR_ce32994:
    #data loc_8c2896b0
PTR_ce32998:
    #data loc_8c034e8c
PTR_ce3299c:
    #data loc_8c0a5500

;=============================================

LAB_ce329a0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce329e2
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce32abc,pc),r3
    mov 0x41,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32aba,pc),r0
    mov 0x43,r2
    mov 0x00,r4
    mov.l @(PTR_ce32ac0,pc),r3
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

LAB_ce329e2:
    mov.l @(PTR_ce32ac4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce329f8
    lds.l @r15+,PR
    mov.l @(PTR_ce32ac8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce329f8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce329fe:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce32a40
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce32abc,pc),r3
    mov 0x43,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32aba,pc),r0
    mov 0x44,r2
    mov 0x00,r4
    mov.l @(PTR_ce32ac0,pc),r3
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

LAB_ce32a40:
    mov.l @(PTR_ce32ac4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a56
    lds.l @r15+,PR
    mov.l @(PTR_ce32ac8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a56:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a5c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce32a8c
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce32abc,pc),r3
    mov 0x38,r6
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
    bra LAB_ce32aa2
    fmov fr4,@(r0,r14)

LAB_ce32a8c:
    mov.l @(PTR_ce32ac4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32aa2
    lds.l @r15+,PR
    mov.l @(PTR_ce32ac8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32aa2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32aa8:
    mov r4,r3
    mov.l @(PTR_ce32acc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32aba:
    #data 0x01a1
    #align4

PTR_ce32abc:
    #data loc_8c034e8c
PTR_ce32ac0:
    #data loc_8c2896b0
PTR_ce32ac4:
    #data loc_8c034dee
PTR_ce32ac8:
    #data loc_8c051648
PTR_ce32acc:
    #data PTR_ce33664

;=============================================

LAB_ce32ad0:
    mov.b @(0x6,r4),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32c08,pc),r0
    mov.b r3,@(r0,r4)
    mova @(DAT_ce32c14,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce32c0a,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce32af6
    fldi0 fr4
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce32af6:
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce32c18,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x30,r3
    fmov fr3,@(r0,r4)
    mov 0x00,r5
    mov.w @(DAT_ce32c0c,pc),r0
    mov 0x02,r6
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce32c1c,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32c20,pc),r2
    jmp @r2
    mov 0x14,r5

LAB_ce32b34:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32c24,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce32c28,pc),r3
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
    bt LAB_ce32b9c
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce32c20,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32c2c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32b9c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ba2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32c24,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32bbc
    lds.l @r15+,PR
    mov.l @(PTR_ce32c30,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32bbc:
    mov.w @(DAT_ce32c0e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32bc8
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce32bc8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32bce:
    mov.w @(DAT_ce32c10,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce32c12,pc),r2
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce32bf8
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32c34,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov.l @(PTR_ce32c38,pc),r3
    mov r14,r4
    fmov fr3,@(r0,r14)
    jmp @r3
    mov.l @r15+,r14

LAB_ce32bf8:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32c3c,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c08:
    #data 0x01f9
DAT_ce32c0a:
    #data 0x01d2
DAT_ce32c0c:
    #data 0x01a1
DAT_ce32c0e:
    #data 0x0141
DAT_ce32c10:
    #data 0x034e
DAT_ce32c12:
    #data 0x0400
    #align4

DAT_ce32c14:
    #data 0x42055555
DAT_ce32c18:
    #data 0xbf3c9249
PTR_ce32c1c:
    #data loc_8c2896b0
PTR_ce32c20:
    #data loc_8c034e8c
PTR_ce32c24:
    #data loc_8c034dee
PTR_ce32c28:
    #data loc_8c052ce2
PTR_ce32c2c:
    #data loc_8c0511b4
PTR_ce32c30:
    #data loc_8c051854
DAT_ce32c34:
    #data 0xbf4db6db
PTR_ce32c38:
    #data loc_8c05176e
PTR_ce32c3c:
    #data PTR_ce33670

;=============================================

LAB_ce32c40:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32d8c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32d90,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32d94,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d7c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32c7c
    mov 0x04,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32c7c:
    mov.l @(PTR_ce32d98,pc),r3
    mov 0x02,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce32c8a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32d9c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32d7e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32ca2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce32ca2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ca8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32d9c,pc),r3
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
    mov.w @(DAT_ce32d7e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32d14
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
    mova @(DAT_ce32da0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32d14:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32d1a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32d9c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32d34
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32da4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32d34:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32d3c:
    mov.w @(DAT_ce32d80,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce32d74
    mov.w @(DAT_ce32d82,pc),r0
    mov.w @(DAT_ce32d84,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce32d74
    mov.w @(DAT_ce32d86,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32d74
    mov.w @(DAT_ce32d80,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32da8
    mov.w @(DAT_ce32d88,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32da8

LAB_ce32d74:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d7c:
    #data 0x0130
DAT_ce32d7e:
    #data 0x0141
DAT_ce32d80:
    #data 0x01f9
DAT_ce32d82:
    #data 0x01fa
DAT_ce32d84:
    #data 0x0c00
DAT_ce32d86:
    #data 0x01a3
DAT_ce32d88:
    #data 0x01fe
    #align4

DAT_ce32d8c:
    #data 0x40892492
DAT_ce32d90:
    #data 0xbecdb6db
DAT_ce32d94:
    #data 0x41555555
PTR_ce32d98:
    #data loc_8c034e8c
PTR_ce32d9c:
    #data loc_8c034dee
DAT_ce32da0:
    #data 0xbf4db6db
PTR_ce32da4:
    #data loc_8c05176e

;=============================================

LAB_ce32da8:
    mov.l @(PTR_ce32ef8,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32dea
    mov r0,r4
    mov.w @(DAT_ce32ee2,pc),r0
    mov 0xF6,r1
    mov.w @(DAT_ce32ee4,pc),r2
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32ee6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32dd8
    mov.w @(DAT_ce32ee8,pc),r0
    mov 0x03,r1
    bra LAB_ce32dea
    mov.b r1,@(r0,r14)

LAB_ce32dd8:
    mov.w @(DAT_ce32eea,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32de4
    bra LAB_ce32de6
    mov 0x02,r3

LAB_ce32de4:
    mov 0x01,r3

LAB_ce32de6:
    mov.w @(DAT_ce32ee8,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce32dea:
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32df4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32efc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32eec,pc),r0
    mov 0x0A,r3
    mov.w @(DAT_ce32ef0,pc),r1
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce32eee,pc),r0
    add r4,r1
    mov.b @(r0,r14),r0
    xor 0x01,r0
    mov.b r0,@r1
    extu.b r0,r0
    mov.w @(DAT_ce32eee,pc),r1
    add r4,r1
    mov r14,r4
    mov.w r0,@r1
    mov.w @(DAT_ce32ef2,pc),r0
    mov.l @(PTR_ce32f00,pc),r1
    mov.b r3,@(r0,r14)
    add 0x57,r0
    mov.b @(r0,r14),r0
    lds.l @r15+,PR
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e32:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32f04,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
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
    mov.w @(DAT_ce32ee6,pc),r0
    mov r15,r5
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32ef4,pc),r0
    mov.l @(PTR_ce32f10,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32f08,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32f0c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32f14,pc),r2
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e8a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32f04,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
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
    mov.w @(DAT_ce32ee6,pc),r0
    mov r15,r5
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32ef4,pc),r0
    mov.l @(PTR_ce32f10,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32f08,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32f0c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32f14,pc),r2
    mov 0x0F,r5
    mov 0x02,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ee2:
    #data 0x01fa
DAT_ce32ee4:
    #data 0x3c00
DAT_ce32ee6:
    #data 0x01f9
DAT_ce32ee8:
    #data 0x01f7
DAT_ce32eea:
    #data 0x01fe
DAT_ce32eec:
    #data 0x01c8
DAT_ce32eee:
    #data 0x0130
DAT_ce32ef0:
    #data 0x01d2
DAT_ce32ef2:
    #data 0x01a0
DAT_ce32ef4:
    #data 0x041c
    #align4

PTR_ce32ef8:
    #data loc_8c045790
PTR_ce32efc:
    #data loc_8c056f2a
PTR_ce32f00:
    #data PTR_ce33680
PTR_ce32f04:
    #data loc_8c02fec4
DAT_ce32f08:
    #data 0xc3555555
DAT_ce32f0c:
    #data 0x43092492
PTR_ce32f10:
    #data loc_8c103660
PTR_ce32f14:
    #data loc_8c034e8c

;=============================================

LAB_ce32f18:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33050,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mova @(DAT_ce33054,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33058,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33040,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32f54
    fldi1 fr4
    fadd fr4,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fdiv fr4,fr2
    fmov fr2,@(r0,r14)

LAB_ce32f54:
    mova @(DAT_ce3305c,pc),r0
    mov.l @(PTR_ce33064,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33060,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33068,pc),r2
    mov 0x0F,r5
    mov 0x03,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f7c:
    mov.w @(DAT_ce33042,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3306c,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f9a:
    mov.w @(DAT_ce33044,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32faa
    mov.l @(PTR_ce33070,pc),r3
    jmp @r3
    nop

LAB_ce32faa:
    mov.l @(PTR_ce33074,pc),r2
    jmp @r2
    nop

LAB_ce32fb0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33078,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32fc8
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce32f9a
    mov.l @r15+,r14

LAB_ce32fc8:
    mov.w @(DAT_ce33046,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce33008
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xEF,r0
    mov.w @(r0,r14),r2
    mov 0x01,r3
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33048,pc),r0
    mov.b r1,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst r3,r0
    bt LAB_ce33008
    mov.w @(DAT_ce3304a,pc),r0
    mov.w @(r0,r14),r1
    xor r3,r1
    mov.w r1,@(r0,r14)
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce33048,pc),r0
    mov.b r2,@(r0,r14)
    add 0xF6,r0
    mov.l @(r0,r14),r2
    add 0x0A,r0
    mov.b @(r0,r2),r1
    xor r3,r1
    mov.b r1,@(r0,r2)

LAB_ce33008:
    mov.w @(DAT_ce3304c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3303a
    mov.w @(DAT_ce3304e,pc),r0
    mov 0x01,r2
    mov.l @(r0,r14),r3
    add 0x2E,r0
    mov.b r2,@(r0,r3)
    add 0xD2,r0
    mov.l @(r0,r14),r3
    add 0x83,r0
    mov.b @(r0,r14),r2
    add 0x56,r0
    mov.b r2,@(r0,r3)
    add 0x27,r0
    mov.l @(r0,r14),r3
    add 0xEC,r0
    mov.l r14,@(r0,r3)
    add 0x97,r0
    mov.l @(PTR_ce3307c,pc),r3
    mov.b r4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3303a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33040:
    #data 0x01fc
DAT_ce33042:
    #data 0x01ea
DAT_ce33044:
    #data 0x01f9
DAT_ce33046:
    #data 0x0141
DAT_ce33048:
    #data 0x01d2
DAT_ce3304a:
    #data 0x0130
DAT_ce3304c:
    #data 0x014b
DAT_ce3304e:
    #data 0x01c8
    #align4

PTR_ce33050:
    #data loc_8c02fec4
DAT_ce33054:
    #data 0x41092492
DAT_ce33058:
    #data 0xbf4db6db
DAT_ce3305c:
    #data 0xc2d55555
DAT_ce33060:
    #data 0x432b6db6
PTR_ce33064:
    #data loc_8c103660
PTR_ce33068:
    #data loc_8c034e8c
PTR_ce3306c:
    #data PTR_ce33690
PTR_ce33070:
    #data loc_8c05176e
PTR_ce33074:
    #data loc_8c051648
PTR_ce33078:
    #data loc_8c034dee
PTR_ce3307c:
    #data loc_8c02fd26

;=============================================

LAB_ce33080:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce331b4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33098
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce32f9a
    mov.l @r15+,r14

LAB_ce33098:
    mov.w @(DAT_ce331a4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce330be
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce330be
    mov.w @(DAT_ce331a6,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce331a8,pc),r0
    mov.b r1,@(r0,r14)

LAB_ce330be:
    mov.w @(DAT_ce331aa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce330f8
    mov.w @(DAT_ce331ac,pc),r0
    mov 0x0B,r2
    mov.l @(r0,r14),r3
    add 0x2E,r0
    mov.b r2,@(r0,r3)
    add 0xD2,r0
    mov.l @(r0,r14),r3
    add 0x83,r0
    mov.b @(r0,r14),r2
    add 0x56,r0
    mov.b r2,@(r0,r3)
    add 0x27,r0
    mov.l @(r0,r14),r3
    add 0xEC,r0
    mov.l r14,@(r0,r3)
    add 0x97,r0
    mov.l @(PTR_ce331b8,pc),r3
    jsr @r3
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce331ac,pc),r0
    lds.l @r15+,PR
    mov.l @(PTR_ce331bc,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce330f8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce330fe:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf/s LAB_ce3318e
    mov 0x00,r13
    mov.w @(DAT_ce331a4,pc),r0
    mov.b @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce33128
    mov.b r13,@(r0,r14)
    add 0xEF,r0
    mov.w @(r0,r14),r2
    mov 0x01,r3
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce331a8,pc),r0
    mov.b r1,@(r0,r14)

LAB_ce33128:
    mov.w @(DAT_ce331a4,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bf LAB_ce33136
    mov.l @(PTR_ce331b4,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce33136:
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
    mov.w @(DAT_ce331ae,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce331fc
    mov.w @(DAT_ce331ae,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce331b0,pc),r0
    bra LAB_ce331fc
    mov.b r13,@(r0,r14)

LAB_ce3318e:
    mov.l @(PTR_ce331b4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce331c0
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce32f9a
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331a4:
    #data 0x0141
DAT_ce331a6:
    #data 0x0130
DAT_ce331a8:
    #data 0x01d2
DAT_ce331aa:
    #data 0x014b
DAT_ce331ac:
    #data 0x01c8
DAT_ce331ae:
    #data 0x041c
DAT_ce331b0:
    #data 0x01f9
    #align4

PTR_ce331b4:
    #data loc_8c034dee
PTR_ce331b8:
    #data loc_8c02fd26
PTR_ce331bc:
    #data loc_8c0423fc

;=============================================

LAB_ce331c0:
    mov.w @(DAT_ce332bc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce331fc
    mov.w @(DAT_ce332be,pc),r0
    mov 0x0B,r2
    mov.l @(r0,r14),r3
    add 0x2E,r0
    mov.b r2,@(r0,r3)
    add 0xD2,r0
    mov.l @(r0,r14),r3
    add 0x83,r0
    mov.b @(r0,r14),r2
    add 0x56,r0
    mov.b r2,@(r0,r3)
    add 0x27,r0
    mov.l @(r0,r14),r3
    add 0xEC,r0
    mov.l r14,@(r0,r3)
    add 0x97,r0
    mov.l @(PTR_ce332cc,pc),r3
    jsr @r3
    mov.b r13,@(r0,r14)
    lds.l @r15+,PR
    mov.w @(DAT_ce332be,pc),r0
    mov.l @(PTR_ce332d0,pc),r3
    mov.l @r15+,r13
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce331fc:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33204:
    mov.w @(DAT_ce332c2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r4
    mov.w @(DAT_ce332c0,pc),r5
    extu.b r4,r4
    cmp/eq r5,r4
    bt LAB_ce33224
    cmp/eq r5,r4
    bt LAB_ce33224
    mov.w @(DAT_ce332be,pc),r0
    mov r14,r5
    mov.l @(PTR_ce332d4,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33224:
    rts
    mov.l @r15+,r14

LAB_ce33228:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce332c4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33244
    cmp/eq 0x01,r0
    bt LAB_ce33244
    cmp/eq 0x02,r0
    bf LAB_ce33248

LAB_ce33244:
    mov.w @(DAT_ce332c6,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33248:
    mov.l @(PTR_ce332d8,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce3324e:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce332c4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce3326a
    cmp/eq 0x01,r0
    bt LAB_ce3326a
    cmp/eq 0x02,r0
    bf LAB_ce3326e

LAB_ce3326a:
    mov.w @(DAT_ce332c6,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3326e:
    mov.l @(PTR_ce332d8,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33274:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce332c4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33294
    cmp/eq 0x01,r0
    bt LAB_ce3329e
    cmp/eq 0x02,r0
    bt LAB_ce332ac
    bra LAB_ce332b6
    nop

LAB_ce33294:
    mov.w @(DAT_ce332c6,pc),r0
    mov 0x02,r5
    mov.b r5,@(r0,r4)
    bra LAB_ce332b4
    add 0xBA,r0

LAB_ce3329e:
    mov.w @(DAT_ce332c6,pc),r0
    mov 0x04,r2
    mov 0x01,r3
    mov.b r2,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce332b6
    mov.b r3,@(r0,r4)

LAB_ce332ac:
    mov.w @(DAT_ce332c6,pc),r0
    mov 0x09,r1
    mov.b r1,@(r0,r4)
    mov.w @(DAT_ce332c8,pc),r0

LAB_ce332b4:
    mov.b r5,@(r0,r4)

LAB_ce332b6:
    mov.l @(PTR_ce332d8,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce332bc:
    #data 0x014b
DAT_ce332be:
    #data 0x01c8
DAT_ce332c0:
    #data 0x00c0
DAT_ce332c2:
    #data 0x01f7
DAT_ce332c4:
    #data 0x04c9
DAT_ce332c6:
    #data 0x01e9
DAT_ce332c8:
    #data 0x01a3
    #align4

PTR_ce332cc:
    #data loc_8c02fd26
PTR_ce332d0:
    #data loc_8c0423fc
PTR_ce332d4:
    #data loc_8c04cc1c
PTR_ce332d8:
    #data loc_8c0530d8

;=============================================

LAB_ce332dc:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3331c,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce332fc
    cmp/eq 0x01,r0
    bt LAB_ce33302
    cmp/eq 0x02,r0
    bt LAB_ce33310
    bra LAB_ce33316
    nop

LAB_ce332fc:
    mov.w @(DAT_ce3331e,pc),r0
    bra LAB_ce3330c
    mov 0x0B,r3

LAB_ce33302:
    mov.w @(DAT_ce3331e,pc),r0
    mov 0x04,r1
    mov 0x01,r3
    mov.b r1,@(r0,r4)
    mov.w @(DAT_ce33320,pc),r0

LAB_ce3330c:
    bra LAB_ce33316
    mov.b r3,@(r0,r4)

LAB_ce33310:
    mov.w @(DAT_ce3331e,pc),r0
    mov 0x0C,r1
    mov.b r1,@(r0,r4)

LAB_ce33316:
    mov.l @(PTR_ce33324,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3331c:
    #data 0x04c9
DAT_ce3331e:
    #data 0x01e9
DAT_ce33320:
    #data 0x01a3
    #align4

PTR_ce33324:
    #data loc_8c0530d8
DAT_ce33328:
    #data 0x0201
    #data 0x0201
DAT_ce3332c:
    #data 0x02ff
    #data 0x02ff
DAT_ce33330:
    #data 0xffff
    #data 0xffff
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
    #data 0x0201
    #data 0x0201
DAT_ce33344:
    #data 0x02ff
    #data 0x02ff
DAT_ce33348:
    #data 0xffff
    #data 0xffff
DAT_ce3334c:
    #data 0x0201
    #data 0x0201
DAT_ce33350:
    #data 0x02ff
    #data 0x02ff
DAT_ce33354:
    #data 0xffff
    #data 0xffff
DAT_ce33358:
    #data 0x0201
    #data 0x0200
DAT_ce3335c:
    #data 0x02ff
    #data 0x0201
DAT_ce33360:
    #data 0xffff
    #data 0x02ff
DAT_ce33364:
    #data 0x0201
    #data 0x0201
DAT_ce33368:
    #data 0x02ff
    #data 0x02ff
DAT_ce3336c:
    #data 0xffff
    #data 0xffff
DAT_ce33370:
    #data 0x0003
    #data 0x9100
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce33380:
    #data 0x0003
    #data 0xa100
    #data 0x000a
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce33390:
    #data 0x0003
    #data 0x0000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce333a0:
    #data 0x0003
    #data 0x8000
    #data 0x000d
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce333b0:
    #data 0x0003
    #data 0x2000
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce333c0:
    #data 0x0003
    #data 0xa000
    #data 0x000e
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce333d0:
    #data 0x0003
    #data 0x1000
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce333e0:
    #data 0x0003
    #data 0x9000
    #data 0x000f
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
    #align4

PTR_ce333f0:
    #data LAB_ce30566
PTR_ce333f4:
    #data LAB_ce3001c
PTR_ce333f8:
    #data LAB_ce3056a
PTR_ce333fc:
    #data LAB_ce30b4e
PTR_ce33400:
    #data LAB_ce30f58
PTR_ce33404:
    #data LAB_ce31084
PTR_ce33408:
    #data LAB_ce311b8
PTR_ce3340c:
    #data LAB_ce312e6
PTR_ce33410:
    #data LAB_ce31472
PTR_ce33414:
    #data LAB_ce32d3c
PTR_ce33418:
    #data LAB_ce32df4
PTR_ce3341c:
    #data LAB_ce32f7c
PTR_ce33420:
    #data LAB_ce33204
PTR_ce33424:
    #data FUN_ce304f6
PTR_ce33428:
    #data LAB_ce32aa8
PTR_ce3342c:
    #data LAB_ce30e58
PTR_ce33430:
    #data LAB_ce33228
PTR_ce33434:
    #data LAB_ce3324e
PTR_ce33438:
    #data LAB_ce33274
PTR_ce3343c:
    #data LAB_ce332dc
    #data 0x00000000
PTR_ce33444:
    #data LAB_ce32bce
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce33460:
    #data LAB_ce3057e
PTR_ce33464:
    #data LAB_ce308f6
PTR_ce33468:
    #data LAB_ce3091e
PTR_ce3346c:
    #data LAB_ce3057e
PTR_ce33470:
    #data LAB_ce30b70
PTR_ce33474:
    #data LAB_ce30d74
PTR_ce33478:
    #data LAB_ce30d5e
PTR_ce3347c:
    #data LAB_ce30b62
PTR_ce33480:
    #data LAB_ce30f6a
PTR_ce33484:
    #data LAB_ce30fbe
PTR_ce33488:
    #data LAB_ce3101a
PTR_ce3348c:
    #data LAB_ce310b8
PTR_ce33490:
    #data LAB_ce3110e
PTR_ce33494:
    #data FUN_ce31196
PTR_ce33498:
    #data LAB_ce311ca
PTR_ce3349c:
    #data LAB_ce31238
PTR_ce334a0:
    #data LAB_ce31278
PTR_ce334a4:
    #data FUN_ce312c6
PTR_ce334a8:
    #data LAB_ce312f8
PTR_ce334ac:
    #data LAB_ce3135a
PTR_ce334b0:
    #data LAB_ce31314
PTR_ce334b4:
    #data LAB_ce31352
PTR_ce334b8:
    #data LAB_ce3134a
PTR_ce334bc:
    #data LAB_ce31352
PTR_ce334c0:
    #data LAB_ce31352
PTR_ce334c4:
    #data LAB_ce313bc
PTR_ce334c8:
    #data LAB_ce31432
PTR_ce334cc:
    #data LAB_ce3142c
PTR_ce334d0:
    #data LAB_ce31432
PTR_ce334d4:
    #data LAB_ce31432
PTR_ce334d8:
    #data LAB_ce313de
PTR_ce334dc:
    #data LAB_ce31418
PTR_ce334e0:
    #data LAB_ce3141e
PTR_ce334e4:
    #data LAB_ce31418
PTR_ce334e8:
    #data LAB_ce314ae
PTR_ce334ec:
    #data LAB_ce3164c
PTR_ce334f0:
    #data LAB_ce3164c
PTR_ce334f4:
    #data LAB_ce31a3c
PTR_ce334f8:
    #data LAB_ce31ee0
PTR_ce334fc:
    #data LAB_ce3164c
PTR_ce33500:
    #data LAB_ce32a5c
PTR_ce33504:
    #data LAB_ce32816
PTR_ce33508:
    #data LAB_ce3164c
PTR_ce3350c:
    #data LAB_ce328e2
PTR_ce33510:
    #data LAB_ce3227c
PTR_ce33514:
    #data LAB_ce329a0
PTR_ce33518:
    #data LAB_ce329fe
PTR_ce3351c:
    #data LAB_ce3164c
PTR_ce33520:
    #data LAB_ce31a3c
PTR_ce33524:
    #data LAB_ce31ee0
PTR_ce33528:
    #data LAB_ce314ec
PTR_ce3352c:
    #data LAB_ce31552
PTR_ce33530:
    #data LAB_ce315c4
PTR_ce33534:
    #data LAB_ce31674
PTR_ce33538:
    #data LAB_ce316f0
PTR_ce3353c:
    #data LAB_ce31744
PTR_ce33540:
    #data LAB_ce31784
PTR_ce33544:
    #data LAB_ce317c0
PTR_ce33548:
    #data LAB_ce317e8
PTR_ce3354c:
    #data LAB_ce31934
PTR_ce33550:
    #data LAB_ce3193a
PTR_ce33554:
    #data LAB_ce3197e
PTR_ce33558:
    #data LAB_ce319fc
PTR_ce3355c:
    #data LAB_ce319fc
PTR_ce33560:
    #data LAB_ce31890
DAT_ce33564:
    #data 0x00
    #data 0x02
    #data 0x04
DAT_ce33567:
    #data 0x33
    #data 0x34
    #data 0x35
DAT_ce3356a:
    #data 0x01
    #data 0x03
    #data 0x05
DAT_ce3356d:
    #data 0x04
    #data 0x04
    #data 0x04
    #data 0x04
    #data 0x06
    #data 0x06
    #data 0x0c
    #data 0x04
    #data 0x00
    #data 0x02
    #data 0x0a
    #data 0x04
    #data 0x04
    #data 0x04
    #data 0x04
    #data 0x04
DAT_ce3357d:
    #data 0x08
    #data 0x0a
    #data 0x0c
    #data 0x0e
    #data 0x0e
DAT_ce33582:
    #data 0x10
    #data 0x12
DAT_ce33584:
    #data 0x09
    #data 0x0b
    #data 0x0d
    #data 0x0f
    #data 0x0f
    #data 0x11
    #data 0x13
    #data 0x00
    #align4

PTR_ce3358c:
    #data LAB_ce31a60
PTR_ce33590:
    #data LAB_ce31bb2
PTR_ce33594:
    #data FUN_ce31c0a
PTR_ce33598:
    #data LAB_ce31c1a
PTR_ce3359c:
    #data LAB_ce31c52
PTR_ce335a0:
    #data LAB_ce31cc4
PTR_ce335a4:
    #data LAB_ce31ddc
PTR_ce335a8:
    #data LAB_ce31e08
PTR_ce335ac:
    #data LAB_ce31e48
PTR_ce335b0:
    #data LAB_ce31ea0
PTR_ce335b4:
    #data LAB_ce31ea0
PTR_ce335b8:
    #data LAB_ce31d40
DAT_ce335bc:
    #data 0x14
    #data 0x16
    #data 0x18
    #data 0x1a
    #data 0x1c
DAT_ce335c1:
    #data 0x33
    #data 0x34
    #data 0x35
    #data 0x36
    #data 0x37
DAT_ce335c6:
    #data 0x15
    #data 0x17
    #data 0x19
    #data 0x1b
    #data 0x1d
DAT_ce335cb:
    #data 0x04
    #data 0x04
    #data 0x04
    #data 0x04
    #data 0x08
    #data 0x06
    #data 0x0c
    #data 0x04
    #data 0x00
    #data 0x02
    #data 0x0a
    #data 0x04
    #data 0x04
    #data 0x04
    #data 0x04
    #data 0x04
DAT_ce335db:
    #data 0x1e
    #data 0x20
    #data 0x22
    #data 0x24
    #data 0x36
    #data 0x26
    #data 0x28
DAT_ce335e2:
    #data 0x1f
    #data 0x21
    #data 0x23
    #data 0x25
    #data 0x37
    #data 0x27
    #data 0x29
    #data 0x00
    #data 0x0000
    #align4

PTR_ce335ec:
    #data LAB_ce31f24
PTR_ce335f0:
    #data LAB_ce31fec
PTR_ce335f4:
    #data LAB_ce32064
PTR_ce335f8:
    #data LAB_ce320e8
PTR_ce335fc:
    #data LAB_ce32128
PTR_ce33600:
    #data LAB_ce321d0
PTR_ce33604:
    #data LAB_ce321fc
PTR_ce33608:
    #data LAB_ce3224e
DAT_ce3360c:
    #data 0x2c
DAT_ce3360d:
    #data 0xc0
DAT_ce3360e:
    #data 0x39
    #data 0x2b
    #data 0xe0
    #data 0x3a
    #data 0x2a
    #data 0x00
    #data 0x3b
DAT_ce33615:
    #data 0x2f
    #data 0x2e
    #data 0x2d
DAT_ce33618:
    #data 0x32
    #data 0x31
    #data 0x30
DAT_ce3361b:
    #data 0x35
    #data 0x34
    #data 0x33
    #data 0x0000
    #align4

PTR_ce33620:
    #data LAB_ce32292
PTR_ce33624:
    #data LAB_ce322b2
PTR_ce33628:
    #data LAB_ce32334
PTR_ce3362c:
    #data LAB_ce32344
PTR_ce33630:
    #data LAB_ce32384
PTR_ce33634:
    #data LAB_ce323c4
PTR_ce33638:
    #data LAB_ce32416
PTR_ce3363c:
    #data LAB_ce32458
PTR_ce33640:
    #data LAB_ce324a2
PTR_ce33644:
    #data LAB_ce324f8
PTR_ce33648:
    #data LAB_ce32550
PTR_ce3364c:
    #data LAB_ce325e8
PTR_ce33650:
    #data LAB_ce3279e
PTR_ce33654:
    #data LAB_ce32728
PTR_ce33658:
    #data LAB_ce32812
PTR_ce3365c:
    #data LAB_ce32828
PTR_ce33660:
    #data LAB_ce32898
PTR_ce33664:
    #data LAB_ce32ad0
PTR_ce33668:
    #data LAB_ce32b34
PTR_ce3366c:
    #data LAB_ce32ba2
PTR_ce33670:
    #data LAB_ce32c40
PTR_ce33674:
    #data LAB_ce32c8a
PTR_ce33678:
    #data LAB_ce32ca8
PTR_ce3367c:
    #data FUN_ce32d1a
PTR_ce33680:
    #data LAB_ce32e32
PTR_ce33684:
    #data LAB_ce32e32
PTR_ce33688:
    #data LAB_ce32e8a
PTR_ce3368c:
    #data LAB_ce32f18
PTR_ce33690:
    #data LAB_ce32fb0
PTR_ce33694:
    #data LAB_ce32fb0
PTR_ce33698:
    #data LAB_ce33080
PTR_ce3369c:
    #data LAB_ce330fe
