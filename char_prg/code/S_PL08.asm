;╔════════════════════════════════════════════════╗
;║ S_PL08 : Psylocke (Elizabeth Braddock) Program ║
;╚════════════════════════════════════════════════╝
    
#symbol loc_8C02FD26 0x8C02FD26
#symbol loc_8C02FEC4 0x8C02FEC4
#symbol loc_8C034DEE 0x8C034DEE
#symbol loc_8C034E8C 0x8C034E8C
#symbol loc_8C034F54 0x8C034F54
#symbol loc_8C035162 0x8C035162
#symbol loc_8C042008 0x8C042008
#symbol loc_8C04223A 0x8C04223A
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
#symbol loc_8C0555C8 0x8C0555C8
#symbol loc_8C055C3A 0x8C055C3A
#symbol loc_8C056DE4 0x8C056DE4
#symbol loc_8C056F2A 0x8C056F2A
#symbol loc_8C06AB44 0x8C06AB44
#symbol loc_8C06B00C 0x8C06B00C
#symbol loc_8C0C0850 0x8C0C0850
#symbol loc_8C0C0A5C 0x8C0C0A5C
#symbol loc_8C103660 0x8C103660
#symbol loc_8C11E2E0 0x8C11E2E0
#symbol loc_8C11E730 0x8C11E730
#symbol loc_8C11E860 0x8C11E860
#symbol loc_8C2659DC 0x8C2659DC
#symbol loc_8C26A524 0x8C26A524
#symbol loc_8C2895F0 0x8C2895F0
#symbol loc_8C2896B0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300d6,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300dc,pc),r7
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
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    mov.l @(PTR_ce300e8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    mov.l @(PTR_ce300ec,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30068
    mov.w @(DAT_ce300d8,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bt LAB_ce300d0
    mov.w @(DAT_ce300da,pc),r4
    mov 0x22,r0
    mov 0x01,r2
    add r14,r4
    mov.w r2,@(r0,r4)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30068:
    bsr FUN_ce300f8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    bsr FUN_ce303e8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    bsr FUN_ce30278
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    bsr FUN_ce30164
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    bsr FUN_ce30208
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    bsr FUN_ce30318
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    bsr FUN_ce30460
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    bsr FUN_ce303ae
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d0
    bsr FUN_ce305d4
    mov r14,r4
    tst r0,r0
    bf LAB_ce300d0
    mov.l @(PTR_ce300f0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300f4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300d0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300d6:
    #data 0x0428
DAT_ce300d8:
    #data 0x04c9
DAT_ce300da:
    #data 0x02a4
    #align4

PTR_ce300dc:
    #data PTR_ce346b0
PTR_ce300e0:
    #data loc_8c054508
PTR_ce300e4:
    #data loc_8c054b34
PTR_ce300e8:
    #data loc_8c05496c
PTR_ce300ec:
    #data loc_8c054d04
PTR_ce300f0:
    #data loc_8c053e00
PTR_ce300f4:
    #data loc_8c0542e0

;=============================================

FUN_ce300f8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301f4,pc),r5
    mov.w @(DAT_ce301e2,pc),r6
    mov.l @(PTR_ce301f8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30132
    mov.w @(DAT_ce301e4,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30132
    mov.w @(DAT_ce301e6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30140
    mov.w @(DAT_ce301e8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30140
    mov.w @(DAT_ce301ea,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3013a

LAB_ce30132:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3013a:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30140:
    mov.w @(DAT_ce301ec,pc),r0
    mov 0x01,r2
    mov 0x02,r3
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301ee,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301fc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30164:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce301f0,pc),r3
    mov r4,r14
    mov.w @(DAT_ce301f2,pc),r6
    add r14,r3
    mov.l @(PTR_ce30200,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce301f8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301a6
    mov.l @r15,r3
    mov.b @(0xa,r3),r0
    tst r0,r0
    bf LAB_ce301a6
    mov.w @(DAT_ce301e6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce301b6
    mov.w @(DAT_ce301e8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce301b6
    mov.w @(DAT_ce301ea,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce301b0

LAB_ce301a6:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce301b0:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce301b6:
    mov.w @(DAT_ce301f2,pc),r5
    mov.l @(PTR_ce30204,pc),r2
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
    mov.w @(DAT_ce301ee,pc),r0
    mov.l @(PTR_ce301fc,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301e2:
    #data 0x037c
DAT_ce301e4:
    #data 0x040c
DAT_ce301e6:
    #data 0x01f9
DAT_ce301e8:
    #data 0x01fc
DAT_ce301ea:
    #data 0x01d4
DAT_ce301ec:
    #data 0x01a3
DAT_ce301ee:
    #data 0x01e9
DAT_ce301f0:
    #data 0x02a4
DAT_ce301f2:
    #data 0x036c
    #align4

PTR_ce301f4:
    #data DAT_ce345d4
PTR_ce301f8:
    #data loc_8c054e58
PTR_ce301fc:
    #data loc_8c0530d8
PTR_ce30200:
    #data DAT_ce345e4
PTR_ce30204:
    #data loc_8c055c3a

;=============================================

FUN_ce30208:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30304,pc),r5
    mov.w @(DAT_ce302f2,pc),r6
    mov.l @(PTR_ce30308,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3023a
    mov.w @(DAT_ce302f4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30244
    mov.w @(DAT_ce302f6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30244
    mov.w @(DAT_ce302f8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3023e

LAB_ce3023a:
    bra LAB_ce30270
    mov 0x00,r0

LAB_ce3023e:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30244:
    mov.w @(DAT_ce302f2,pc),r5
    mov.l @(PTR_ce3030c,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.l @(PTR_ce30310,pc),r3
    mov.b r0,@(0x5,r14)
    mov 0x01,r13
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302fa,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce302fc,pc),r4
    mov 0x22,r0
    add r14,r4
    mov.w r13,@(r0,r4)
    mov r13,r0
    nop

LAB_ce30270:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30278:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30314,pc),r5
    mov.w @(DAT_ce302fe,pc),r6
    mov.l @(PTR_ce30308,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302aa
    mov.w @(DAT_ce30300,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce302aa
    mov.w @(DAT_ce302f4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce302c2
    mov.w @(DAT_ce302f8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce302b2

LAB_ce302aa:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302b2:
    mov.w @(DAT_ce302f6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce302c2
    mov.w @(DAT_ce302f8,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce302c2:
    mov.w @(DAT_ce30302,pc),r0
    mov 0x01,r2
    mov 0x03,r3
    mov.w @(DAT_ce302fc,pc),r4
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    add r14,r4
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302fa,pc),r0
    mov.b r3,@(r0,r14)
    add 0x11,r0
    mov.w @(r0,r14),r3
    mov 0x2A,r0
    mov.w r3,@(r0,r4)
    mov.l @(PTR_ce30310,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce302f2:
    #data 0x0374
DAT_ce302f4:
    #data 0x01f9
DAT_ce302f6:
    #data 0x01fc
DAT_ce302f8:
    #data 0x01d4
DAT_ce302fa:
    #data 0x01e9
DAT_ce302fc:
    #data 0x02a4
DAT_ce302fe:
    #data 0x0384
DAT_ce30300:
    #data 0x040c
DAT_ce30302:
    #data 0x01a3
    #align4

PTR_ce30304:
    #data DAT_ce345f4
PTR_ce30308:
    #data loc_8c054e58
PTR_ce3030c:
    #data loc_8c055c3a
PTR_ce30310:
    #data loc_8c0530d8
PTR_ce30314:
    #data DAT_ce34604

;=============================================

FUN_ce30318:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30448,pc),r5
    mov r4,r14
    mov.l @(PTR_ce3044c,pc),r3
    mov.w @(DAT_ce30434,pc),r6
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30342
    mov.w @(DAT_ce30436,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3035c
    mov.w @(DAT_ce30438,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3034c

LAB_ce30342:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3034c:
    mov.w @(DAT_ce3043a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3035c
    mov.w @(DAT_ce30438,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3035c:
    mov.w @(DAT_ce30434,pc),r5
    mov.l @(PTR_ce30450,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3043c,pc),r0
    mov 0x1D,r5
    mov.w @(DAT_ce30440,pc),r4
    mov r0,r3
    add 0x5B,r3
    add r14,r3
    mov.b @(r0,r14),r2
    mov.b @r3,r3
    add r14,r4
    shll r3
    add r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r3
    mov 0x00,r0
    mov.b r3,@r15
    mov 0x04,r3
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3043e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x11,r0
    mov.w @(r0,r14),r3
    mov 0x2A,r0
    mov.w r3,@(r0,r4)
    mov.l @(PTR_ce30454,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3043c,pc),r0
    mov.b @r15,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303ae:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30458,pc),r3
    jsr @r3
    mov 0x05,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303c8
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303c8:
    mov.w @(DAT_ce3043e,pc),r0
    mov 0x05,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30454,pc),r3
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

FUN_ce303e8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3045c,pc),r5
    mov.w @(DAT_ce30442,pc),r6
    mov.l @(PTR_ce3044c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30408
    mov.w @(DAT_ce30444,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30410

LAB_ce30408:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30410:
    mov.w @(DAT_ce3043c,pc),r0
    mov 0x01,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3043e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30454,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30434:
    #data 0x038c
DAT_ce30436:
    #data 0x01f9
DAT_ce30438:
    #data 0x01d4
DAT_ce3043a:
    #data 0x01fc
DAT_ce3043c:
    #data 0x01a3
DAT_ce3043e:
    #data 0x01e9
DAT_ce30440:
    #data 0x02a4
DAT_ce30442:
    #data 0x0394
DAT_ce30444:
    #data 0x040c
    #align4

PTR_ce30448:
    #data DAT_ce34614
PTR_ce3044c:
    #data loc_8c054e58
PTR_ce30450:
    #data loc_8c055c3a
PTR_ce30454:
    #data loc_8c0530d8
PTR_ce30458:
    #data loc_8c054da0
PTR_ce3045c:
    #data DAT_ce34638

;=============================================

FUN_ce30460:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30574,pc),r5
    mov.w @(DAT_ce3055e,pc),r6
    mov.l @(PTR_ce30578,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3047e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3047e:
    mov.w @(DAT_ce3055e,pc),r5
    mov.l @(PTR_ce3057c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30560,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30562,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30580,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce304ac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce304de
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce304ce
    bsr FUN_ce30536
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce304ce
    bsr FUN_ce3059e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304d6

LAB_ce304ce:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce304d6:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304de:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30584,pc),r5
    mov.w @(DAT_ce30564,pc),r6
    mov.l @(PTR_ce30588,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30510
    mov.w @(DAT_ce30566,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30510
    mov.w @(DAT_ce30568,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30528
    mov.w @(DAT_ce3056a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30518

LAB_ce30510:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30518:
    mov.w @(DAT_ce3056c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30528
    mov.w @(DAT_ce3056a,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30528:
    mov.w @(DAT_ce3056e,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30536:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3058c,pc),r5
    mov.w @(DAT_ce30570,pc),r6
    mov.l @(PTR_ce30588,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30556
    mov.w @(DAT_ce30566,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30590

LAB_ce30556:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3055e:
    #data 0x039c
DAT_ce30560:
    #data 0x01a3
DAT_ce30562:
    #data 0x01e9
DAT_ce30564:
    #data 0x0384
DAT_ce30566:
    #data 0x040c
DAT_ce30568:
    #data 0x01f9
DAT_ce3056a:
    #data 0x01d4
DAT_ce3056c:
    #data 0x01fc
DAT_ce3056e:
    #data 0x0258
DAT_ce30570:
    #data 0x0394
    #align4

PTR_ce30574:
    #data DAT_ce34648
PTR_ce30578:
    #data loc_8c0555c8
PTR_ce3057c:
    #data loc_8c055c3a
PTR_ce30580:
    #data loc_8c0530d8
PTR_ce30584:
    #data DAT_ce34604
PTR_ce30588:
    #data loc_8c054e58
PTR_ce3058c:
    #data DAT_ce34638

;=============================================

LAB_ce30590:
    mov.w @(DAT_ce3069e,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3059e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306ac,pc),r5
    mov.w @(DAT_ce306a0,pc),r6
    mov.l @(PTR_ce306b0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce305be
    mov.w @(DAT_ce306a2,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce305c6

LAB_ce305be:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce305c6:
    mov.w @(DAT_ce3069e,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce305d4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce306b4,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce305ec
    mov.w @(DAT_ce306a2,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce305f4

LAB_ce305ec:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce305f4:
    mov.w @(DAT_ce306a4,pc),r0
    mov 0x08,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce306b8,pc),r3
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

FUN_ce30614:
    mov.w @(DAT_ce306a8,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    mov.l r9,@-r15
    mov.l r8,@-r15
    mov.w @(r0,r4),r6
    mov.l @(PTR_ce306bc,pc),r8
    mov r6,r3
    shll r6
    add r3,r6
    mov.l @(DAT_ce306c4,pc),r3
    shll2 r6
    mov.l @(DAT_ce306c0,pc),r13
    shll2 r6
    mov.w @(DAT_ce306a6,pc),r5
    add r8,r6
    add 0x30,r6
    mov.w @(0x12,r6),r0
    extu.w r0,r0
    and r3,r0
    cmp/eq r13,r0
    bt/s LAB_ce30690
    add r4,r5
    mov 0x01,r12
    mov r12,r0
    nop
    mov.w @(DAT_ce306aa,pc),r10
    mov 0x10,r11
    mov 0x00,r1
    mov.b r0,@(0xe,r5)
    mov 0x02,r9

LAB_ce30656:
    mov.w @(DAT_ce306a8,pc),r0
    exts.w r1,r3
    mov 0x01,r2
    mov r12,r7
    mov.w @(r0,r4),r6
    add r3,r6
    add 0x01,r6
    mov r6,r3
    shll r6
    add r3,r6
    shll2 r6
    shll2 r6
    add r8,r6
    mov r6,r5
    add 0x12,r5
    mov.l r2,@(0x8,r6)

LAB_ce30676:
    mov.w @r5,r6
    add 0x01,r7
    exts.w r7,r3
    and r10,r6
    cmp/ge r11,r3
    or r13,r6
    mov.w r6,@r5
    bf/s LAB_ce30676
    add 0x02,r5
    add 0x01,r1
    exts.w r1,r3
    cmp/ge r9,r3
    bf LAB_ce30656

LAB_ce30690:
    mov.l @r15+,r8
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    rts
    mov.l @r15+,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3069e:
    #data 0x0258
DAT_ce306a0:
    #data 0x037c
DAT_ce306a2:
    #data 0x040c
DAT_ce306a4:
    #data 0x01e9
DAT_ce306a6:
    #data 0x02a4
DAT_ce306a8:
    #data 0x012e
DAT_ce306aa:
    #data 0x0fff
    #align4

PTR_ce306ac:
    #data DAT_ce345d4
PTR_ce306b0:
    #data loc_8c054e58
PTR_ce306b4:
    #data loc_8c054d1c
PTR_ce306b8:
    #data loc_8c0530d8
PTR_ce306bc:
    #data loc_8c2659dc
DAT_ce306c0:
    #data 0x0000c000
DAT_ce306c4:
    #data 0x0000f000

;=============================================

LAB_ce306c8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    bsr FUN_ce30614
    mov r4,r14
    mov.w @(DAT_ce307a0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x15,r0
    bf LAB_ce3073c
    mov.w @(DAT_ce307a2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3073c
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3073c
    mov.b @(0x5,r14),r0
    tst r0,r0
    bf LAB_ce3073c
    mov.w @(DAT_ce307a4,pc),r13
    mov 0x22,r0
    add r14,r13
    mov.w @(r0,r13),r2
    tst r2,r2
    bt LAB_ce3073c
    mov.w @(DAT_ce307a6,pc),r0
    mov.w @(DAT_ce307a8,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce3073c
    mov.w @(DAT_ce307aa,pc),r5
    mov.l @(PTR_ce307b4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce307ac,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3073c
    mov 0x00,r0
    fldi0 fr4
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x22,r0
    mov.w @(r0,r13),r3
    add 0xFF,r3
    mov.w r3,@(r0,r13)

LAB_ce3073c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30744:
    mov.w @(DAT_ce307ae,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce307b8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30758:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce307bc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce307b0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30786
    mov.w @(DAT_ce307b2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3077e
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30b4e
    mov.l @r15+,r14

LAB_ce3077e:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3096a
    mov.l @r15+,r14

LAB_ce30786:
    mov.w @(DAT_ce307b2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30798
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30880
    mov.l @r15+,r14

LAB_ce30798:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307c0
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307a0:
    #data 0x01d0
DAT_ce307a2:
    #data 0x01e9
DAT_ce307a4:
    #data 0x02a4
DAT_ce307a6:
    #data 0x034a
DAT_ce307a8:
    #data 0x0360
DAT_ce307aa:
    #data 0x0374
DAT_ce307ac:
    #data 0x01a3
DAT_ce307ae:
    #data 0x01ff
DAT_ce307b0:
    #data 0x01fe
DAT_ce307b2:
    #data 0x01f9
    #align4

PTR_ce307b4:
    #data loc_8c055c3a
PTR_ce307b8:
    #data PTR_ce34720
PTR_ce307bc:
    #data loc_8c052b4c

;=============================================

LAB_ce307c0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce308ca,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce308d4,pc),r11
    extu.b r0,r0
    mov.l @(PTR_ce308d8,pc),r12
    cmp/eq 0x00,r0
    bt/s LAB_ce307ea
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3080a
    cmp/eq 0x02,r0
    bt LAB_ce3082a
    bra LAB_ce3084a
    nop

LAB_ce307ea:
    mov.w @(DAT_ce308cc,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov 0x03,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308ce,pc),r0
    mov.l @(PTR_ce308dc,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308d0,pc),r0
    bra LAB_ce3084a
    mov.b r13,@(r0,r14)

LAB_ce3080a:
    mov.w @(DAT_ce308cc,pc),r0
    mov 0x01,r10
    mov 0x15,r5
    mov.b r10,@(r0,r14)
    add 0x49,r0
    mov.b r10,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov 0x04,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308ce,pc),r0
    mov.l @(PTR_ce308e0,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30846
    nop

LAB_ce3082a:
    mov.w @(DAT_ce308cc,pc),r0
    mov 0x02,r10
    mov 0x20,r5
    mov.b r10,@(r0,r14)
    add 0x49,r0
    mov.b r10,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov 0x16,r5
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce308ce,pc),r0
    mov.l @(PTR_ce308e4,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30846:
    mov.w @(DAT_ce308d0,pc),r0
    mov.b r10,@(r0,r14)

LAB_ce3084a:
    mov.w @(DAT_ce308d2,pc),r0
    mov r14,r4
    mov.l @(PTR_ce308e8,pc),r3
    mov 0x07,r5
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
    mov.w @(DAT_ce308cc,pc),r0
    mov.l @(PTR_ce308ec,pc),r2
    mov.l @r15+,r10
    mov.b @(r0,r14),r6
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30880:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce308ca,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce308d4,pc),r11
    extu.b r0,r0
    mov.l @(PTR_ce308d8,pc),r12
    cmp/eq 0x00,r0
    bt/s LAB_ce308a8
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce308f0
    cmp/eq 0x02,r0
    bt LAB_ce30912
    bra LAB_ce30936
    nop

LAB_ce308a8:
    mov.w @(DAT_ce308cc,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov 0x03,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308ce,pc),r0
    mov.l @(PTR_ce308dc,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308d0,pc),r0
    bra LAB_ce30936
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308ca:
    #data 0x01e8
DAT_ce308cc:
    #data 0x0158
DAT_ce308ce:
    #data 0x03f4
DAT_ce308d0:
    #data 0x01a7
DAT_ce308d2:
    #data 0x01ac
    #align4

PTR_ce308d4:
    #data loc_8c04223a
PTR_ce308d8:
    #data loc_8c042008
PTR_ce308dc:
    #data DAT_ce34668
PTR_ce308e0:
    #data DAT_ce3466c
PTR_ce308e4:
    #data DAT_ce34670
PTR_ce308e8:
    #data loc_8c2896b0
PTR_ce308ec:
    #data loc_8c034e8c

;=============================================

LAB_ce308f0:
    mov.w @(DAT_ce30a12,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov 0x04,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a14,pc),r0
    mov.l @(PTR_ce30a24,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30932
    mov 0x01,r2

LAB_ce30912:
    mov.w @(DAT_ce30a12,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x20,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov 0x16,r5
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30a14,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30a28,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30932:
    mov.w @(DAT_ce30a16,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30936:
    mov.w @(DAT_ce30a18,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30a2c,pc),r3
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
    mov.w @(DAT_ce30a12,pc),r0
    mov.l @(PTR_ce30a30,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3096a:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    mov.w @(DAT_ce30a1a,pc),r0
    mov 0x04,r4
    mov.l r12,@-r15
    mov 0x02,r12
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30a34,pc),r11
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30998
    mov 0x01,r10
    cmp/eq 0x01,r0
    bt LAB_ce309b4
    cmp/eq 0x02,r0
    bt LAB_ce309dc
    bra LAB_ce30b18
    nop

LAB_ce30998:
    mov.w @(DAT_ce30a12,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30a14,pc),r0
    mov.l @(PTR_ce30a38,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30a16,pc),r0
    bra LAB_ce30b18
    mov.b r13,@(r0,r14)

LAB_ce309b4:
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.w @(DAT_ce30a12,pc),r0
    mov.b r10,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.l @(PTR_ce30a3c,pc),r3
    mov 0x03,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a14,pc),r0
    mov.l @(PTR_ce30a40,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a16,pc),r0
    bra LAB_ce30b18
    mov.b r10,@(r0,r14)

LAB_ce309dc:
    mov.w @(DAT_ce30a1c,pc),r0
    mov.w @(DAT_ce30a1e,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt/s LAB_ce30a98
    mov 0x05,r5
    mov r10,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30a20,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30a50
    mova @(DAT_ce30a44,pc),r0
    mov.l @(DAT_ce30a4c,pc),r1
    fmov.s @r0,fr3
    mov 0x5C,r0
    lds r1,FPUL
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30a48,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x34,r0
    bra LAB_ce30a68
    fsts FPUL,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a12:
    #data 0x0158
DAT_ce30a14:
    #data 0x03f4
DAT_ce30a16:
    #data 0x01a7
DAT_ce30a18:
    #data 0x01ac
DAT_ce30a1a:
    #data 0x01e8
DAT_ce30a1c:
    #data 0x01fa
DAT_ce30a1e:
    #data 0x0400
DAT_ce30a20:
    #data 0x01d2
    #align4

PTR_ce30a24:
    #data DAT_ce3466c
PTR_ce30a28:
    #data DAT_ce34670
PTR_ce30a2c:
    #data loc_8c2896b0
PTR_ce30a30:
    #data loc_8c034e8c
PTR_ce30a34:
    #data loc_8c04223a
PTR_ce30a38:
    #data DAT_ce34674
PTR_ce30a3c:
    #data loc_8c042008
PTR_ce30a40:
    #data DAT_ce34678
DAT_ce30a44:
    #data 0xc0a00000
DAT_ce30a48:
    #data 0x3dd55555
DAT_ce30a4c:
    #data 0xc2200000

;=============================================

LAB_ce30a50:
    mova @(DAT_ce30b84,pc),r0
    mov.l @(DAT_ce30b8c,pc),r1
    fmov.s @r0,fr3
    mov 0x5C,r0
    lds r1,FPUL
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30b88,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x34,r0
    fsts FPUL,fr3

LAB_ce30a68:
    fmov.s @(r0,r14),fr2
    mov 0x13,r3
    mov.l @(DAT_ce30b90,pc),r1
    fadd fr3,fr2
    lds r1,FPUL
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce30b94,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce30b98,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce30b72,pc),r0
    mov.b r3,@(r0,r14)
    add 0xB7,r0
    bra LAB_ce30b00
    mov.b r5,@(r0,r14)

LAB_ce30a98:
    mov.w @(DAT_ce30b74,pc),r1
    tst r1,r2
    bt LAB_ce30af2
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x14,r3
    mov.w @(DAT_ce30b76,pc),r0
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce30b9c,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce30ba0,pc),r0
    fmov.s @r0,fr5
    mov 0x68,r0
    fmov fr5,@(r0,r14)
    mov.w @(DAT_ce30b78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30ad8
    mova @(DAT_ce30ba4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30ba8,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    bra LAB_ce30ae0
    fmov fr3,@(r0,r14)

LAB_ce30ad8:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)

LAB_ce30ae0:
    mova @(DAT_ce30bac,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30bb0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    bra LAB_ce30b00
    fmov fr3,@(r0,r14)

LAB_ce30af2:
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30b76,pc),r0
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r5,@(r0,r14)

LAB_ce30b00:
    mov.l @(PTR_ce30bb4,pc),r3
    mov 0x04,r5
    jsr @r3
    mov r14,r4
    mov 0x16,r5
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30b7a,pc),r0
    mov.l @(PTR_ce30bb8,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30b7c,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce30b18:
    mov.w @(DAT_ce30b7e,pc),r0
    mov r14,r4
    mov.l @(PTR_ce30bbc,pc),r3
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
    mov.w @(DAT_ce30b76,pc),r0
    mov.l @(PTR_ce30bc0,pc),r2
    mov.l @r15+,r10
    mov.b @(r0,r14),r6
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30b4e:
    mov.w @(DAT_ce30b80,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30bc4,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30bc8
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30be4
    cmp/eq 0x02,r0
    bt LAB_ce30c04
    bra LAB_ce30c20
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b72:
    #data 0x01a1
DAT_ce30b74:
    #data 0x0800
DAT_ce30b76:
    #data 0x0158
DAT_ce30b78:
    #data 0x01d2
DAT_ce30b7a:
    #data 0x03f4
DAT_ce30b7c:
    #data 0x01a7
DAT_ce30b7e:
    #data 0x01ac
DAT_ce30b80:
    #data 0x01e8
    #align4

DAT_ce30b84:
    #data 0x40a00000
DAT_ce30b88:
    #data 0xbdd55555
DAT_ce30b8c:
    #data 0x42200000
DAT_ce30b90:
    #data 0x4284db6d
DAT_ce30b94:
    #data 0x41700000
DAT_ce30b98:
    #data 0xbfdedb6d
DAT_ce30b9c:
    #data 0xc0baaaaa
DAT_ce30ba0:
    #data 0x3d555555
DAT_ce30ba4:
    #data 0x40baaaaa
DAT_ce30ba8:
    #data 0xbd555555
DAT_ce30bac:
    #data 0x412b6db6
DAT_ce30bb0:
    #data 0xbf4db6db
PTR_ce30bb4:
    #data loc_8c042008
PTR_ce30bb8:
    #data DAT_ce3467c
PTR_ce30bbc:
    #data loc_8c2896b0
PTR_ce30bc0:
    #data loc_8c034e8c
PTR_ce30bc4:
    #data loc_8c04223a

;=============================================

LAB_ce30bc8:
    mov.w @(DAT_ce30cb4,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30cb6,pc),r0
    mov.l @(PTR_ce30cc4,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30cb8,pc),r0
    bra LAB_ce30c20
    mov.b r13,@(r0,r14)

LAB_ce30be4:
    mov.w @(DAT_ce30cb4,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30cb6,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce30cc8,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30cb8,pc),r0
    bra LAB_ce30c20
    mov.b r2,@(r0,r14)

LAB_ce30c04:
    mov.w @(DAT_ce30cb4,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.l @(PTR_ce30ccc,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce30cb6,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30cb8,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r12
    mov r14,r4

LAB_ce30c20:
    mov.w @(DAT_ce30cba,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30cd0,pc),r3
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
    mov.w @(DAT_ce30cb4,pc),r0
    mov.l @(PTR_ce30cd4,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30c52:
    mov.w @(DAT_ce30cbc,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30c62
    mov.w @(DAT_ce30cbe,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30c72

LAB_ce30c62:
    mov.w @(DAT_ce30cbc,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30c76
    mov.w @(DAT_ce30cbe,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30c76

LAB_ce30c72:
    bra LAB_ce30c7a
    nop

LAB_ce30c76:
    rts
    nop

LAB_ce30c7a:
    mov.w @(DAT_ce30cbc,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c88
    bra LAB_ce30dbe
    nop

LAB_ce30c88:
    bra LAB_ce30c8c
    nop

LAB_ce30c8c:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30cc0,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30cd8,pc),r11
    extu.b r0,r0
    mov.l @(PTR_ce30cdc,pc),r12
    cmp/eq 0x00,r0
    bt/s LAB_ce30ce0
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30d0c
    cmp/eq 0x02,r0
    bt LAB_ce30d3e
    bra LAB_ce30d78
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30cb4:
    #data 0x0158
DAT_ce30cb6:
    #data 0x03f4
DAT_ce30cb8:
    #data 0x01a7
DAT_ce30cba:
    #data 0x01ac
DAT_ce30cbc:
    #data 0x01fe
DAT_ce30cbe:
    #data 0x01d6
DAT_ce30cc0:
    #data 0x01e8
    #align4

PTR_ce30cc4:
    #data DAT_ce34674
PTR_ce30cc8:
    #data DAT_ce34678
PTR_ce30ccc:
    #data DAT_ce3467c
PTR_ce30cd0:
    #data loc_8c2896b0
PTR_ce30cd4:
    #data loc_8c034e8c
PTR_ce30cd8:
    #data loc_8c04223a
PTR_ce30cdc:
    #data loc_8c042008

;=============================================

LAB_ce30ce0:
    mov.w @(DAT_ce30de6,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30de8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30d00
    mov.w @(DAT_ce30dea,pc),r0
    mov.l @(PTR_ce30df4,pc),r3
    bra LAB_ce30d06
    mov.l r3,@(r0,r14)

LAB_ce30d00:
    mov.w @(DAT_ce30dea,pc),r0
    mov.l @(PTR_ce30df8,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30d06:
    mov.w @(DAT_ce30dec,pc),r0
    bra LAB_ce30d78
    mov.b r13,@(r0,r14)

LAB_ce30d0c:
    mov.w @(DAT_ce30de6,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov 0x03,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30de8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30d34
    mov.w @(DAT_ce30dea,pc),r0
    mov.l @(PTR_ce30dfc,pc),r3
    bra LAB_ce30d3a
    mov.l r3,@(r0,r14)

LAB_ce30d34:
    mov.w @(DAT_ce30dea,pc),r0
    mov.l @(PTR_ce30e00,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30d3a:
    bra LAB_ce30d74
    mov 0x01,r3

LAB_ce30d3e:
    mov.w @(DAT_ce30de6,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov 0x04,r5
    jsr @r12
    mov r14,r4
    mov 0x20,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30de8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30d6c
    mov.w @(DAT_ce30dea,pc),r0
    mov.l @(PTR_ce30e04,pc),r3
    bra LAB_ce30d72
    mov.l r3,@(r0,r14)

LAB_ce30d6c:
    mov.w @(DAT_ce30dea,pc),r0
    mov.l @(PTR_ce30e08,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30d72:
    mov 0x02,r3

LAB_ce30d74:
    mov.w @(DAT_ce30dec,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30d78:
    mov.w @(DAT_ce30dee,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30e0c,pc),r3
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
    mov.w @(DAT_ce30de6,pc),r0
    mov.l @(PTR_ce30e10,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30df0,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30db2
    mov.w @(DAT_ce30df0,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30db2:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30dbe:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30df2,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30e14,pc),r11
    extu.b r0,r0
    mov.l @(PTR_ce30e18,pc),r12
    cmp/eq 0x00,r0
    bt/s LAB_ce30e1c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30e4e
    cmp/eq 0x02,r0
    bt LAB_ce30e80
    bra LAB_ce30ecc
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30de6:
    #data 0x0158
DAT_ce30de8:
    #data 0x01fc
DAT_ce30dea:
    #data 0x03f4
DAT_ce30dec:
    #data 0x01a7
DAT_ce30dee:
    #data 0x01ac
DAT_ce30df0:
    #data 0x01d6
DAT_ce30df2:
    #data 0x01e8
    #align4

PTR_ce30df4:
    #data DAT_ce34680
PTR_ce30df8:
    #data DAT_ce34698
PTR_ce30dfc:
    #data DAT_ce34684
PTR_ce30e00:
    #data DAT_ce3469c
PTR_ce30e04:
    #data DAT_ce34688
PTR_ce30e08:
    #data DAT_ce346a0
PTR_ce30e0c:
    #data loc_8c2896b0
PTR_ce30e10:
    #data loc_8c034e8c
PTR_ce30e14:
    #data loc_8c042008
PTR_ce30e18:
    #data loc_8c04223a

;=============================================

LAB_ce30e1c:
    mov.w @(DAT_ce30f26,pc),r0
    mov 0x0F,r3
    mov 0x03,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov 0x14,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30f28,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30e42
    mov.w @(DAT_ce30f2a,pc),r0
    mov.l @(PTR_ce30f3c,pc),r3
    bra LAB_ce30e48
    mov.l r3,@(r0,r14)

LAB_ce30e42:
    mov.w @(DAT_ce30f2a,pc),r0
    mov.l @(PTR_ce30f40,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30e48:
    mov.w @(DAT_ce30f2c,pc),r0
    bra LAB_ce30ecc
    mov.b r13,@(r0,r14)

LAB_ce30e4e:
    mov.w @(DAT_ce30f26,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x04,r5
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov 0x15,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30f28,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30e76
    mov.w @(DAT_ce30f2a,pc),r0
    mov.l @(PTR_ce30f44,pc),r3
    bra LAB_ce30e7c
    mov.l r3,@(r0,r14)

LAB_ce30e76:
    mov.w @(DAT_ce30f2a,pc),r0
    mov.l @(PTR_ce30f48,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30e7c:
    bra LAB_ce30ec8
    mov 0x01,r3

LAB_ce30e80:
    mov.w @(DAT_ce30f2e,pc),r0
    mov.w @(DAT_ce30f30,pc),r3
    mov.w @(r0,r14),r1
    extu.w r1,r1
    tst r3,r1
    bt LAB_ce30e98
    mov.w @(DAT_ce30f32,pc),r0
    mov 0x12,r2
    mov 0x05,r1
    mov.b r2,@(r0,r14)
    bra LAB_ce30ea2
    add 0xB7,r0

LAB_ce30e98:
    mov.w @(DAT_ce30f26,pc),r0
    mov 0x02,r2
    mov 0x11,r1
    mov.b r2,@(r0,r14)
    add 0x49,r0

LAB_ce30ea2:
    mov 0x04,r5
    mov.b r1,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov 0x16,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30f28,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30ec0
    mov.w @(DAT_ce30f2a,pc),r0
    mov.l @(PTR_ce30f4c,pc),r3
    bra LAB_ce30ec6
    mov.l r3,@(r0,r14)

LAB_ce30ec0:
    mov.w @(DAT_ce30f2a,pc),r0
    mov.l @(PTR_ce30f50,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30ec6:
    mov 0x02,r3

LAB_ce30ec8:
    mov.w @(DAT_ce30f2c,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30ecc:
    mov.w @(DAT_ce30f34,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30f54,pc),r3
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
    mov.w @(DAT_ce30f26,pc),r0
    mov.l @(PTR_ce30f58,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30f36,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30f06
    mov.w @(DAT_ce30f36,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30f06:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30f12:
    mov.w @(DAT_ce30f38,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30f5c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f26:
    #data 0x0158
DAT_ce30f28:
    #data 0x01fc
DAT_ce30f2a:
    #data 0x03f4
DAT_ce30f2c:
    #data 0x01a7
DAT_ce30f2e:
    #data 0x01fa
DAT_ce30f30:
    #data 0x2000
DAT_ce30f32:
    #data 0x01a1
DAT_ce30f34:
    #data 0x01ac
DAT_ce30f36:
    #data 0x01d6
DAT_ce30f38:
    #data 0x01ff
    #align4

PTR_ce30f3c:
    #data DAT_ce3468c
PTR_ce30f40:
    #data DAT_ce346a4
PTR_ce30f44:
    #data DAT_ce34690
PTR_ce30f48:
    #data DAT_ce346a8
PTR_ce30f4c:
    #data DAT_ce34694
PTR_ce30f50:
    #data DAT_ce346ac
PTR_ce30f54:
    #data loc_8c2896b0
PTR_ce30f58:
    #data loc_8c034e8c
PTR_ce30f5c:
    #data PTR_ce34730

;=============================================

LAB_ce30f60:
    sts.l PR,@-r15
    mov.l @(PTR_ce3106c,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30f6e:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31070,pc),r3
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
    mov.w @(DAT_ce31064,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30fd6
    mov.w @(DAT_ce31066,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30fce
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31248
    mov.l @r15+,r14

LAB_ce30fce:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3107c
    mov.l @r15+,r14

LAB_ce30fd6:
    mov.w @(DAT_ce31066,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30fe8
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3102a
    mov.l @r15+,r14

LAB_ce30fe8:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30ff0
    mov.l @r15+,r14

LAB_ce30ff0:
    mov.w @(DAT_ce31068,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3100e
    cmp/eq 0x01,r0
    bt LAB_ce3100e
    cmp/eq 0x00,r0
    bt LAB_ce3100e
    mov.w @(DAT_ce3106a,pc),r1
    cmp/eq r1,r0
    bf LAB_ce31024

LAB_ce3100e:
    mov.l @(PTR_ce31074,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31024
    lds.l @r15+,PR
    mov.l @(PTR_ce31078,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31024:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3102a:
    mov.w @(DAT_ce31068,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31048
    cmp/eq 0x01,r0
    bt LAB_ce31048
    cmp/eq 0x00,r0
    bt LAB_ce31048
    mov.w @(DAT_ce3106a,pc),r1
    cmp/eq r1,r0
    bf LAB_ce3105e

LAB_ce31048:
    mov.l @(PTR_ce31074,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3105e
    lds.l @r15+,PR
    mov.l @(PTR_ce31078,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3105e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31064:
    #data 0x01fe
DAT_ce31066:
    #data 0x01f9
DAT_ce31068:
    #data 0x01e8
DAT_ce3106a:
    #data 0x00ff
    #align4

PTR_ce3106c:
    #data loc_8c0511e2
PTR_ce31070:
    #data loc_8c052c84
PTR_ce31074:
    #data loc_8c034dee
PTR_ce31078:
    #data loc_8c051648

;=============================================

LAB_ce3107c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce31168,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce31170,pc),r11
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce310aa
    cmp/eq 0x01,r0
    bf LAB_ce3109e
    bra LAB_ce3121e
    nop

LAB_ce3109e:
    cmp/eq 0x00,r0
    bf LAB_ce310a6
    bra LAB_ce3121e
    nop

LAB_ce310a6:
    bra LAB_ce3123a
    nop

LAB_ce310aa:
    mov.b @(0x7,r14),r0
    mov 0x01,r12
    mov.l @(PTR_ce31174,pc),r13
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce310c8
    fldi0 fr15
    cmp/eq 0x01,r0
    bt LAB_ce310d6
    cmp/eq 0x02,r0
    bt LAB_ce3112e
    cmp/eq 0x03,r0
    bt LAB_ce31180
    bra LAB_ce3123a
    nop

LAB_ce310c8:
    jsr @r11
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce3118a
    bra LAB_ce3123a
    nop

LAB_ce310d6:
    jsr @r11
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31110
    mov 0x03,r0
    mov.l @(PTR_ce31178,pc),r3
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    mov 0x08,r5
    fmov fr15,@(r0,r14)
    mov 0x03,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3117c,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4
    mov 0x16,r5
    jsr @r13
    mov r14,r4
    bra LAB_ce3123a
    nop

LAB_ce31110:
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce3116a,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31120
    bra LAB_ce3123a
    nop

LAB_ce31120:
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3116c,pc),r0
    mov.b r12,@(r0,r14)
    bra LAB_ce31158
    mov 0x60,r0

LAB_ce3112e:
    jsr @r11
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31228
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce3116a,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce3123a
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3116c,pc),r0
    mov.b r12,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0

LAB_ce31158:
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    mov 0x34,r5
    fmov fr15,@(r0,r14)
    jsr @r13
    mov r14,r4
    bra LAB_ce3123a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31168:
    #data 0x01e8
DAT_ce3116a:
    #data 0x041c
DAT_ce3116c:
    #data 0x0142
    #align4

PTR_ce31170:
    #data loc_8c034dee
PTR_ce31174:
    #data loc_8c04223a
PTR_ce31178:
    #data loc_8c034e8c
PTR_ce3117c:
    #data loc_8c042008

;=============================================

LAB_ce31180:
    jsr @r11
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3119c

LAB_ce3118a:
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    bra LAB_ce31228
    fmov fr15,@(r0,r14)

LAB_ce3119c:
    mov.w @(DAT_ce3127c,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce3120c
    mov.w @(DAT_ce3127e,pc),r0
    mov.w @(DAT_ce31280,pc),r3
    mov.w @(r0,r14),r4
    extu.w r4,r4
    tst r3,r4
    bt LAB_ce3120c
    mov.w @(DAT_ce31282,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce311d2
    mova @(DAT_ce3128c,pc),r0
    mov.l @(DAT_ce31294,pc),r1
    fmov.s @r0,fr3
    mov 0x5C,r0
    lds r1,FPUL
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31290,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x34,r0
    bra LAB_ce311ea
    fsts FPUL,fr3

LAB_ce311d2:
    mova @(DAT_ce31298,pc),r0
    mov.l @(DAT_ce312a0,pc),r1
    fmov.s @r0,fr3
    mov 0x5C,r0
    lds r1,FPUL
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3129c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x34,r0
    fsts FPUL,fr3

LAB_ce311ea:
    fmov.s @(r0,r14),fr2
    mov 0x16,r5
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r13
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce312a4,pc),r3
    mov 0x08,r5
    mov 0x06,r6
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3120c:
    mov.w @(DAT_ce31284,pc),r0
    mov.w @(DAT_ce31286,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    cmp/eq r3,r2
    bf LAB_ce3123a
    mov.w @(DAT_ce31288,pc),r0
    bra LAB_ce3123a
    mov.b r12,@(r0,r14)

LAB_ce3121e:
    jsr @r11
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3123a

LAB_ce31228:
    lds.l @r15+,PR
    mov.l @(PTR_ce312a8,pc),r2
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3123a:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31248:
    mov.w @(DAT_ce3128a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31260
    cmp/eq 0x01,r0
    bt LAB_ce31260
    cmp/eq 0x02,r0
    bf LAB_ce31276

LAB_ce31260:
    mov.l @(PTR_ce312ac,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31276
    lds.l @r15+,PR
    mov.l @(PTR_ce312a8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31276:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3127c:
    #data 0x0141
DAT_ce3127e:
    #data 0x034a
DAT_ce31280:
    #data 0x0800
DAT_ce31282:
    #data 0x01d2
DAT_ce31284:
    #data 0x0158
DAT_ce31286:
    #data 0x0806
DAT_ce31288:
    #data 0x01f5
DAT_ce3128a:
    #data 0x01e8
    #align4

DAT_ce3128c:
    #data 0x4192aaaa
DAT_ce31290:
    #data 0xbf055555
DAT_ce31294:
    #data 0xc2f00000
DAT_ce31298:
    #data 0xc192aaaa
DAT_ce3129c:
    #data 0x3f055555
DAT_ce312a0:
    #data 0x42f00000
PTR_ce312a4:
    #data loc_8c034e8c
PTR_ce312a8:
    #data loc_8c051648
PTR_ce312ac:
    #data loc_8c034dee

;=============================================

LAB_ce312b0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313b0,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce313b4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce312c6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313b8,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce313bc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce313aa,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce312e8
    bsr FUN_ce3132a
    mov r14,r4
    bra LAB_ce312ec
    nop

LAB_ce312e8:
    bsr FUN_ce31308
    mov r14,r4

LAB_ce312ec:
    mov.l @(PTR_ce313c0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce31302
    lds.l @r15+,PR
    mov.l @(PTR_ce313c4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31302:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31308:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce313c8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31322
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce313cc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31322:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce3132a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce313ac,pc),r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3134c
    mov.l @(PTR_ce313c8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31364
    bra LAB_ce313a2
    nop

LAB_ce3134c:
    mov.w @(DAT_ce313ae,pc),r0
    mov.l @(PTR_ce313c8,pc),r3
    mov.b @(r0,r14),r2
    mov.b r2,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31370
    mov.b @r15,r3
    cmp/pz r3
    bt LAB_ce31370

LAB_ce31364:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce313cc,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31370:
    mov.w @(DAT_ce313ae,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce313a2
    mov.w @(DAT_ce313ae,pc),r0
    mov 0x00,r4
    mov 0x15,r3
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce313d0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce313a2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce313aa:
    #data 0x01fe
DAT_ce313ac:
    #data 0x01e8
DAT_ce313ae:
    #data 0x0141
    #align4

PTR_ce313b0:
    #data loc_8c050084
PTR_ce313b4:
    #data loc_8c04ff88
PTR_ce313b8:
    #data loc_8c04fea8
PTR_ce313bc:
    #data loc_8c050048
PTR_ce313c0:
    #data loc_8c052ce2
PTR_ce313c4:
    #data loc_8c052dac
PTR_ce313c8:
    #data loc_8c034dee
PTR_ce313cc:
    #data loc_8c05176e
PTR_ce313d0:
    #data loc_8c2896b0

;=============================================

LAB_ce313d4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31442
    mov.l @(PTR_ce31510,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31504,pc),r0
    mov.b r3,@(r0,r14)
    add 0x05,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3142a
    mov.l @(PTR_ce31514,pc),r2
    mov 0x14,r5
    mov 0x08,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31506,pc),r0
    mov 0x53,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31518,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce3142a:
    mov.l @(PTR_ce3151c,pc),r3
    mov 0x15,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31520,pc),r2
    mov 0x20,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31524,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4

LAB_ce31442:
    mov.w @(DAT_ce31508,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31452
    mov.l @(PTR_ce31528,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31452:
    mov 0x5C,r1
    mov.l @(PTR_ce3152c,pc),r3
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
    mov.l @(PTR_ce31530,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce314a6
    lds.l @r15+,PR
    mov.l @(PTR_ce31534,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce314a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce314ac:
    mov r4,r3
    mov.l @(PTR_ce31538,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce314be:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31530,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3150a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce314fe
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
    mov.w @(DAT_ce3150c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce314f6
    mova @(DAT_ce3153c,pc),r0
    bra LAB_ce314fa
    fmov.s @r0,fr3

LAB_ce314f6:
    mova @(DAT_ce31540,pc),r0
    fmov.s @r0,fr3

LAB_ce314fa:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce314fe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31504:
    #data 0x01f9
DAT_ce31506:
    #data 0x01a1
DAT_ce31508:
    #data 0x01ff
DAT_ce3150a:
    #data 0x0141
DAT_ce3150c:
    #data 0x01d2
    #align4

PTR_ce31510:
    #data loc_8c052b4c
PTR_ce31514:
    #data loc_8c034e8c
PTR_ce31518:
    #data loc_8c2896b0
PTR_ce3151c:
    #data loc_8c04223a
PTR_ce31520:
    #data loc_8c042008
PTR_ce31524:
    #data loc_8c056de4
PTR_ce31528:
    #data loc_8c0511e2
PTR_ce3152c:
    #data loc_8c052c84
PTR_ce31530:
    #data loc_8c034dee
PTR_ce31534:
    #data loc_8c051648
PTR_ce31538:
    #data PTR_ce34740
DAT_ce3153c:
    #data 0x41855555
DAT_ce31540:
    #data 0xc1855555

;=============================================

LAB_ce31544:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce316a0,pc),r3
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
    bt LAB_ce315b0
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    mov.l @(PTR_ce316a4,pc),r3
    mov r6,r5
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

LAB_ce315b0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce315b6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce316a0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce315d0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce316a8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce315d0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce315d8:
    mov r4,r3
    mov.l @(PTR_ce316ac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce315ea:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce316a0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3169c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31620
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3169e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31610
    mova @(DAT_ce316b0,pc),r0
    bra LAB_ce31614
    fmov.s @r0,fr3

LAB_ce31610:
    mova @(DAT_ce316b4,pc),r0
    fmov.s @r0,fr3

LAB_ce31614:
    mov 0x5C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce31626
    mov.l @r15+,r14

LAB_ce31620:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31626:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce316a0,pc),r3
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
    bt LAB_ce31696
    mov.b @(0x6,r14),r0
    mov r14,r4
    fldi0 fr4
    mov 0x03,r6
    add 0x01,r0
    mov.l @(PTR_ce316a4,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31696:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3169c:
    #data 0x0141
DAT_ce3169e:
    #data 0x01d2
    #align4

PTR_ce316a0:
    #data loc_8c034dee
PTR_ce316a4:
    #data loc_8c034e8c
PTR_ce316a8:
    #data loc_8c051648
PTR_ce316ac:
    #data PTR_ce3474c
DAT_ce316b0:
    #data 0xc1a00000
DAT_ce316b4:
    #data 0x41a00000

;=============================================

LAB_ce316b8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31814,pc),r3
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
    bt LAB_ce3170c
    lds.l @r15+,PR
    mov.l @(PTR_ce31818,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3170c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31712:
    mov r4,r3
    mov.l @(PTR_ce3181c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31724:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce31820,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3180c,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31824,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3180e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31754
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31754:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31828,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x51,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3182c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce31810,pc),r0
    mov 0x03,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31830,pc),r3
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
    mov.l @(PTR_ce31834,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3179e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31814,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31838,pc),r3
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
    bt LAB_ce31806
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce31834,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3183c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31806:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3180c:
    #data 0x01f9
DAT_ce3180e:
    #data 0x01d2
DAT_ce31810:
    #data 0x01a1
    #align4

PTR_ce31814:
    #data loc_8c034dee
PTR_ce31818:
    #data loc_8c051648
PTR_ce3181c:
    #data PTR_ce34758
PTR_ce31820:
    #data loc_8c035162
DAT_ce31824:
    #data 0x41f00000
DAT_ce31828:
    #data 0x40892492
DAT_ce3182c:
    #data 0xbf4db6db
PTR_ce31830:
    #data loc_8c2896b0
PTR_ce31834:
    #data loc_8c034e8c
PTR_ce31838:
    #data loc_8c052ce2
PTR_ce3183c:
    #data loc_8c0511b4

;=============================================

LAB_ce31840:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31920,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31862
    mov.l @(PTR_ce31924,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31928,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31862:
    mov.w @(DAT_ce3191a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3186e
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce3186e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31874:
    mov r4,r3
    mov.l @(PTR_ce3192c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31886:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31930,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31934,pc),r3
    mov 0x02,r1
    mov.b @r3,r2
    extu.b r2,r2
    cmp/ge r1,r2
    bt LAB_ce318a8
    mov.w @(DAT_ce3191c,pc),r2
    mov 0x00,r0
    add r14,r2
    mov.b r0,@r2
    bra LAB_ce318b4
    nop

LAB_ce318a8:
    mov.b @(0x6,r14),r0
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3191c,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce318b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318ba:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    ftrc fr3,FPUL
    sts FPUL,r0
    mov.w r0,@(0x1c,r4)
    mova @(DAT_ce31938,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov.b @(0x2,r4),r0
    tst r0,r0
    bt LAB_ce318ec
    mov.l @(DAT_ce3193c,pc),r1
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mova @(DAT_ce31940,pc),r0
    bra LAB_ce318fe
    fmov.s @r0,fr2

LAB_ce318ec:
    mov.l @(DAT_ce31944,pc),r1
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mova @(DAT_ce31948,pc),r0
    fmov.s @r0,fr2

LAB_ce318fe:
    mov 0x5C,r0
    mov.l @(PTR_ce31954,pc),r3
    fmov fr2,@(r0,r4)
    mova @(DAT_ce3194c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x00,r6
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31950,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x12,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3191a:
    #data 0x0141
DAT_ce3191c:
    #data 0x012c
    #align4

PTR_ce31920:
    #data loc_8c034dee
PTR_ce31924:
    #data loc_8c035162
PTR_ce31928:
    #data loc_8c051854
PTR_ce3192c:
    #data PTR_ce34764
PTR_ce31930:
    #data FUN_ce30614
PTR_ce31934:
    #data loc_8c2895f0
DAT_ce31938:
    #data 0x43000000
DAT_ce3193c:
    #data 0x43555555
DAT_ce31940:
    #data 0xc1055555
DAT_ce31944:
    #data 0xc3555555
DAT_ce31948:
    #data 0x41055555
DAT_ce3194c:
    #data 0xc0cdb6db
DAT_ce31950:
    #data 0xbe892492
PTR_ce31954:
    #data loc_8c034e8c

;=============================================

LAB_ce31958:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31aa8,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31aac,pc),r3
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
    bt LAB_ce319ce
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(0x1c,r14),r0
    mov r0,r3
    lds r3,FPUL
    mov.l @(PTR_ce31ab0,pc),r3
    mov 0x34,r0
    mov r0,r5
    float FPUL,fr3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31ab4,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x12,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce319ce:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce319d4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31aa8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319ec
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce319ec:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce319f4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    tst r0,r0
    bt LAB_ce31a30
    mov.l @(PTR_ce31ab8,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce31a20
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31abc,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a20:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31aa8,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a30:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31ab4,pc),r12
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31a56
    cmp/eq 0x01,r0
    bt LAB_ce31a8a
    cmp/eq 0x02,r0
    bt LAB_ce31a8e
    cmp/eq 0x03,r0
    bt LAB_ce31a92
    cmp/eq 0x04,r0
    bt LAB_ce31a92
    bra LAB_ce31a9a
    nop

LAB_ce31a56:
    mov.l @(PTR_ce31ac0,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce31ac4,pc),r3
    mov r0,r13
    mova @(DAT_ce31ac8,pc),r0
    mov 0x03,r2
    mov.l r3,@r15
    fmov.s @r3,fr4
    fmov.s @r0,fr3
    mov 0x34,r0
    fmov fr4,fr2
    fadd fr3,fr2
    fmov.s @(r0,r14),fr5
    fcmp/gt fr5,fr2
    bt/s LAB_ce31a84
    and r2,r13
    mova @(DAT_ce31acc,pc),r0
    fmov fr4,fr1
    fmov.s @r0,fr2
    fadd fr2,fr1
    fcmp/gt fr1,fr5
    bf LAB_ce31a86

LAB_ce31a84:
    mov 0x01,r13

LAB_ce31a86:
    bra LAB_ce31a94
    mov r13,r6

LAB_ce31a8a:
    bra LAB_ce31a94
    mov 0x04,r6

LAB_ce31a8e:
    bra LAB_ce31a94
    mov 0x03,r6

LAB_ce31a92:
    mov 0x05,r6

LAB_ce31a94:
    mov 0x13,r5
    jsr @r12
    mov r14,r4

LAB_ce31a9a:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
    #data 0x0000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

PTR_ce31aa8:
    #data loc_8c034dee
PTR_ce31aac:
    #data loc_8c052ce2
PTR_ce31ab0:
    #data loc_8c04223a
PTR_ce31ab4:
    #data loc_8c034e8c
PTR_ce31ab8:
    #data loc_8c046c8a
PTR_ce31abc:
    #data loc_8c051648
PTR_ce31ac0:
    #data loc_8c11e730
PTR_ce31ac4:
    #data loc_8c26a524
DAT_ce31ac8:
    #data 0xc33aaaaa
DAT_ce31acc:
    #data 0x433aaaaa

;=============================================

LAB_ce31ad0:
    mov.w @(DAT_ce31bb0,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31bc0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31ae4:
    mov r4,r3
    mov.l @(PTR_ce31bc4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31af6:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce31bc8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31bc8,pc),r2
    mov 0x1F,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31bcc,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31bb2,pc),r0
    mov.l @(PTR_ce31bd0,pc),r4
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce31ba0
    mov 0x55,r5
    mov.w @(DAT_ce31bb4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31b3c
    mov.w @(DAT_ce31bb6,pc),r0
    bra LAB_ce31b52
    mov.b r5,@(r0,r14)

LAB_ce31b3c:
    mov.w @(DAT_ce31bb8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31b4c
    mov.w @(DAT_ce31bb6,pc),r0
    mov 0x3F,r3
    bra LAB_ce31b52
    mov.b r3,@(r0,r14)

LAB_ce31b4c:
    mov.w @(DAT_ce31bb6,pc),r0
    mov 0x3D,r2
    mov.b r2,@(r0,r14)

LAB_ce31b52:
    mov.w @(DAT_ce31bba,pc),r0
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
    mov 0x02,r3
    mov.w @(DAT_ce31bb2,pc),r0
    mov 0x01,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31bbc,pc),r0
    mov.b r2,@(r0,r14)
    mova @(DAT_ce31bd4,pc),r0
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
    bra LAB_ce31c2c
    fmov fr2,@(r0,r14)

LAB_ce31ba0:
    mov.w @(DAT_ce31bb4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31bd8
    mov.w @(DAT_ce31bb6,pc),r0
    bra LAB_ce31be2
    mov.b r5,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31bb0:
    #data 0x01e9
DAT_ce31bb2:
    #data 0x01f9
DAT_ce31bb4:
    #data 0x0255
DAT_ce31bb6:
    #data 0x01a1
DAT_ce31bb8:
    #data 0x01a3
DAT_ce31bba:
    #data 0x01ac
DAT_ce31bbc:
    #data 0x0158
    #align4

PTR_ce31bc0:
    #data PTR_ce34774
PTR_ce31bc4:
    #data PTR_ce34798
PTR_ce31bc8:
    #data loc_8c042008
PTR_ce31bcc:
    #data loc_8c056de4
PTR_ce31bd0:
    #data loc_8c2896b0
DAT_ce31bd4:
    #data 0x41000000

;=============================================

LAB_ce31bd8:
    mov.w @(DAT_ce31d1a,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x3B,r3
    mov.b r3,@(r0,r14)

LAB_ce31be2:
    mov.w @(DAT_ce31d1c,pc),r0
    fldi0 fr4
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
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31d28,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31d1e,pc),r0
    mov.l @(PTR_ce31d2c,pc),r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31d20,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31d22,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce31c2c:
    mov.w @(DAT_ce31d22,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31d30,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31c40:
    mov.w @(DAT_ce31d20,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31c90
    mov.l @(PTR_ce31d34,pc),r3
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

LAB_ce31c90:
    mov.l @(PTR_ce31d38,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31cea
    mov.w @(DAT_ce31d1e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce31cd0
    fldi0 fr4
    mov 0x5C,r0
    mov.l @(DAT_ce31d3c,pc),r1
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    lds r1,FPUL
    mov r14,r4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    mov.l @(PTR_ce31d44,pc),r3
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31d40,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31cd0:
    mov 0x5C,r0
    mov.l @(PTR_ce31d48,pc),r3
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

LAB_ce31cea:
    mov.w @(DAT_ce31d24,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31d14
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31d1e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce31d0a
    mov r14,r4
    mov.w @(DAT_ce31d1a,pc),r0
    mov.b @(r0,r14),r5
    bra LAB_ce31d0e
    add 0x03,r5

LAB_ce31d0a:
    mov.w @(DAT_ce31d1a,pc),r0
    mov.b @(r0,r14),r5

LAB_ce31d0e:
    mov.l @(PTR_ce31d4c,pc),r3
    jsr @r3
    nop

LAB_ce31d14:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d1a:
    #data 0x01a3
DAT_ce31d1c:
    #data 0x01ac
DAT_ce31d1e:
    #data 0x01f9
DAT_ce31d20:
    #data 0x041c
DAT_ce31d22:
    #data 0x0158
DAT_ce31d24:
    #data 0x0141
    #align4

PTR_ce31d28:
    #data loc_8c05218a
PTR_ce31d2c:
    #data loc_8c05115a
PTR_ce31d30:
    #data loc_8c034e8c
PTR_ce31d34:
    #data loc_8c052c84
PTR_ce31d38:
    #data loc_8c034dee
DAT_ce31d3c:
    #data 0x40092492
DAT_ce31d40:
    #data 0xbf092492
PTR_ce31d44:
    #data loc_8c05176e
PTR_ce31d48:
    #data loc_8c051648
PTR_ce31d4c:
    #data loc_8c06ab44

;=============================================

LAB_ce31d50:
    mov.l r14,@-r15
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
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    mov.l @(PTR_ce31e90,pc),r1
    shll2 r0
    mov r14,r4
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d9c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce31e7e,pc),r12
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31e80,pc),r0
    mov.w r13,@(r0,r14)
    mov.w @(DAT_ce31e82,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce31dcc
    add r14,r12
    mov.l @(PTR_ce31e94,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31e98,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31dcc:
    mov.w @(DAT_ce31e84,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31dda
    bra LAB_ce31de6
    mov 0x56,r2

LAB_ce31dda:
    mov.w @(DAT_ce31e86,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31e9c,pc),r0
    extu.b r3,r3
    shll r3
    mov.b @(r0,r3),r2

LAB_ce31de6:
    mov.w @(DAT_ce31e88,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce31ea0,pc),r3
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
    mov.l @(PTR_ce31ea4,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0xc,r12)
    mov 0x0A,r0
    mov.b r0,@(0xb,r12)
    mov 0x15,r5
    mov.w @(DAT_ce31e86,pc),r0
    mov.b @(r0,r14),r3
    add 0xB5,r0
    add 0x0B,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31ea8,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31e8a,pc),r0
    mov.l @(PTR_ce31eac,pc),r3
    mov.b @(r0,r14),r0
    mov.b r0,@(0x9,r12)
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
    mov.w @(DAT_ce31e8c,pc),r0
    mov.l @(PTR_ce31eb0,pc),r4
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31eb4
    mov r4,r5
    mov.w @(DAT_ce31e86,pc),r0
    mov.b @(r0,r14),r3
    mov 0x5C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r5
    fmov.s @r5,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31e86,pc),r0
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r4,r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31eda
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e7e:
    #data 0x02a4
DAT_ce31e80:
    #data 0x0352
DAT_ce31e82:
    #data 0x01f9
DAT_ce31e84:
    #data 0x0255
DAT_ce31e86:
    #data 0x01a3
DAT_ce31e88:
    #data 0x01a1
DAT_ce31e8a:
    #data 0x0141
DAT_ce31e8c:
    #data 0x01d2
    #align4

PTR_ce31e90:
    #data PTR_ce347a0
PTR_ce31e94:
    #data loc_8c05218a
PTR_ce31e98:
    #data loc_8c05115a
PTR_ce31e9c:
    #data DAT_ce344cc
PTR_ce31ea0:
    #data loc_8c2896b0
PTR_ce31ea4:
    #data loc_8c056de4
PTR_ce31ea8:
    #data loc_8c034e8c
PTR_ce31eac:
    #data loc_8c053082
PTR_ce31eb0:
    #data DAT_ce344d4

;=============================================

LAB_ce31eb4:
    mov.w @(DAT_ce31fca,pc),r0
    mov.b @(r0,r14),r2
    mov 0x5C,r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    add r2,r5
    fmov.s @r5,fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31fca,pc),r0
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r4,r3
    fmov.s @(r0,r3),fr3
    fneg fr3

LAB_ce31eda:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31fca,pc),r0
    mov.b @(r0,r14),r3
    mov 0x08,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r4,r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31fca,pc),r0
    mov.b @(r0,r14),r3
    mov 0x0C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31f10:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31fcc,pc),r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x22,r0
    mov.w @(r0,r4),r0
    extu.w r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31f32
    mov.l @(PTR_ce31fd4,pc),r2
    mov 0x15,r5
    jsr @r2
    mov r14,r4

LAB_ce31f32:
    lds.l @r15+,PR
    mov.l @(PTR_ce31fd4,pc),r3
    mov 0x21,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;=============================================

FUN_ce31f3e:
    mov.l @(PTR_ce31fd8,pc),r3
    mov 0x05,r5
    mov.w @(DAT_ce31fce,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @r3,r2
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31fdc,pc),r2
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r2,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r3
    add 0x01,r3
    mov.w r3,@(r0,r1)
    mov.l @(PTR_ce31fe0,pc),r1
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce31fe4,pc),r3
    mov 0x15,r5
    mov 0x0D,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31fd0,pc),r0
    mov.l @(PTR_ce31fe8,pc),r5
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31f9a
    mov r5,r4
    mov r4,r6
    add 0x10,r6
    fmov.s @r6,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    bra LAB_ce31fac
    fmov.s @(r0,r6),fr3

LAB_ce31f9a:
    mov r4,r6
    add 0x10,r6
    fmov.s @r6,fr3
    mov 0x5C,r0
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r6),fr3
    fneg fr3

LAB_ce31fac:
    mov 0x68,r0
    mov r5,r4
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    add 0x10,r4
    fmov.s @(r0,r4),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x0C,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31fca:
    #data 0x01a3
DAT_ce31fcc:
    #data 0x02a4
DAT_ce31fce:
    #data 0x01a1
DAT_ce31fd0:
    #data 0x01d2
    #align4

PTR_ce31fd4:
    #data loc_8c042008
PTR_ce31fd8:
    #data DAT_ce344ce
PTR_ce31fdc:
    #data loc_8c2896b0
PTR_ce31fe0:
    #data loc_8c056de4
PTR_ce31fe4:
    #data loc_8c034e8c
PTR_ce31fe8:
    #data DAT_ce344d4

;=============================================

FUN_ce31fec:
    mov.l @(PTR_ce32104,pc),r3
    mov 0x05,r5
    mov.w @(DAT_ce320fe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @r3,r2
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32108,pc),r2
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r2,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r3
    add 0x01,r3
    mov.w r3,@(r0,r1)
    mov.l @(PTR_ce3210c,pc),r1
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce32110,pc),r3
    mov 0x15,r5
    mov 0x0C,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32100,pc),r0
    mov.l @(PTR_ce32114,pc),r5
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32048
    mov r5,r4
    mov r4,r6
    add 0x20,r6
    fmov.s @r6,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    bra LAB_ce3205a
    fmov.s @(r0,r6),fr3

LAB_ce32048:
    mov r4,r6
    add 0x20,r6
    fmov.s @r6,fr3
    mov 0x5C,r0
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r6),fr3
    fneg fr3

LAB_ce3205a:
    mov 0x68,r0
    mov r5,r4
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    add 0x20,r4
    fmov.s @(r0,r4),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x0C,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32078:
    mov.l @(PTR_ce32118,pc),r3
    mov 0x05,r5
    mov.w @(DAT_ce320fe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @r3,r2
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32108,pc),r2
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r2,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r3
    add 0x01,r3
    mov.w r3,@(r0,r1)
    mov.l @(PTR_ce3210c,pc),r1
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce32110,pc),r3
    mov 0x15,r5
    mov 0x0B,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32100,pc),r0
    mov.l @(PTR_ce32114,pc),r5
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce320d2
    mov r5,r4
    mov r4,r6
    fmov.s @r6,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    bra LAB_ce320e2
    fmov.s @(r0,r6),fr3

LAB_ce320d2:
    mov r4,r6
    fmov.s @r6,fr3
    mov 0x5C,r0
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r6),fr3
    fneg fr3

LAB_ce320e2:
    mov 0x68,r0
    mov r5,r4
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    fmov.s @(r0,r4),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x0C,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320fe:
    #data 0x01a1
DAT_ce32100:
    #data 0x01d2
    #align4

PTR_ce32104:
    #data DAT_ce344d0
PTR_ce32108:
    #data loc_8c2896b0
PTR_ce3210c:
    #data loc_8c056de4
PTR_ce32110:
    #data loc_8c034e8c
PTR_ce32114:
    #data DAT_ce344d4
PTR_ce32118:
    #data DAT_ce344cc

;=============================================

LAB_ce3211c:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32216,pc),r0
    mov.l r13,@-r15
    mov.w @(DAT_ce32214,pc),r13
    mov.l r12,@-r15
    mov 0x00,r12
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    add r14,r13
    mov.l @(PTR_ce32228,pc),r3
    mov.b r0,@(0x9,r13)
    jsr @r3
    mov r14,r4
    mov.b @(0xb,r13),r0
    tst r0,r0
    bf LAB_ce32142
    bra LAB_ce32278
    nop

LAB_ce32142:
    mov.w @(DAT_ce32216,pc),r3
    mov.b @(0x9,r13),r0
    add r14,r3
    mov.b @r3,r3
    extu.b r0,r0
    cmp/eq r3,r0
    bt LAB_ce32192
    mov.w @(DAT_ce32218,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3215e
    bra LAB_ce32170
    mov 0x57,r2

LAB_ce3215e:
    mov.w @(DAT_ce3221a,pc),r0
    mov.b @(r0,r14),r3
    add 0x9E,r0
    mov.b @(r0,r14),r2
    extu.b r3,r3
    mov.l @(PTR_ce3222c,pc),r0
    shll r3
    add r2,r3
    mov.b @(r0,r3),r2

LAB_ce32170:
    mov.w @(DAT_ce3221c,pc),r0
    mov.l @(PTR_ce32230,pc),r3
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

LAB_ce32192:
    mov.w @(DAT_ce3221e,pc),r0
    mov.w @(DAT_ce32220,pc),r3
    mov.b @(r0,r14),r0
    and 0x81,r0
    cmp/eq r3,r0
    bf LAB_ce321a4
    mov.b @(0xb,r13),r0
    add 0xFF,r0
    mov.b r0,@(0xb,r13)

LAB_ce321a4:
    mov.b @(0xc,r13),r0
    mov 0x02,r3
    extu.b r0,r0
    cmp/ge r3,r0
    bt LAB_ce32278
    mov.w @(DAT_ce3221a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32204
    mov 0x40,r4
    mov.b @(0xc,r13),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce321c8
    cmp/eq 0x01,r0
    bt LAB_ce321de
    bra LAB_ce32278
    nop

LAB_ce321c8:
    mov.w @(DAT_ce32222,pc),r0
    mov.w @(r0,r14),r3
    add 0x04,r0
    mov.w @(r0,r14),r2
    extu.w r3,r3
    extu.w r2,r2
    or r2,r3
    tst r4,r3
    bf LAB_ce32246
    bra LAB_ce32278
    nop

LAB_ce321de:
    mov.w @(DAT_ce32224,pc),r3
    mov.w @(DAT_ce32222,pc),r0
    add r14,r3
    mov.w @r3,r3
    mov.w @(r0,r14),r0
    extu.w r3,r3
    extu.w r0,r0
    or r3,r0
    tst 0x20,r0
    bt LAB_ce32278
    mov.w @(DAT_ce32224,pc),r0
    mov.w r12,@(r0,r14)
    mov.b @(0xc,r13),r0
    add 0x01,r0
    mov.b r0,@(0xc,r13)
    bsr FUN_ce31f3e
    mov r14,r4
    bra LAB_ce32278
    nop

LAB_ce32204:
    mov.b @(0xc,r13),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce32234
    cmp/eq 0x01,r0
    bt LAB_ce32258
    bra LAB_ce32278
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32214:
    #data 0x02a4
DAT_ce32216:
    #data 0x0141
DAT_ce32218:
    #data 0x0255
DAT_ce3221a:
    #data 0x01a3
DAT_ce3221c:
    #data 0x01a1
DAT_ce3221e:
    #data 0x019e
DAT_ce32220:
    #data 0x0080
DAT_ce32222:
    #data 0x034e
DAT_ce32224:
    #data 0x0352
    #align4

PTR_ce32228:
    #data loc_8c034dee
PTR_ce3222c:
    #data DAT_ce344cc
PTR_ce32230:
    #data loc_8c2896b0

;=============================================

LAB_ce32234:
    mov.w @(DAT_ce3234e,pc),r0
    mov.w @(r0,r14),r3
    add 0x04,r0
    mov.w @(r0,r14),r2
    extu.w r3,r3
    extu.w r2,r2
    or r2,r3
    tst r4,r3
    bt LAB_ce32278

LAB_ce32246:
    mov.w @(DAT_ce32350,pc),r0
    mov.w r12,@(r0,r14)
    mov.b @(0xc,r13),r0
    add 0x01,r0
    mov.b r0,@(0xc,r13)
    bsr FUN_ce31fec
    mov r14,r4
    bra LAB_ce32278
    nop

LAB_ce32258:
    mov.w @(DAT_ce3234e,pc),r0
    mov.w @(r0,r14),r3
    add 0x04,r0
    mov.w @(r0,r14),r2
    extu.w r3,r3
    extu.w r2,r2
    or r2,r3
    tst r4,r3
    bt LAB_ce32278
    mov.w @(DAT_ce32350,pc),r0
    mov.w r12,@(r0,r14)
    mov.b @(0xc,r13),r0
    add 0x01,r0
    mov.b r0,@(0xc,r13)
    bsr FUN_ce32078
    mov r14,r4

LAB_ce32278:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce322ac
    mov.b @(0x6,r14),r0
    mov 0x09,r6
    fmov fr3,fr4
    mov r14,r4
    add 0x01,r0
    mov.l @(PTR_ce3235c,pc),r3
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32358,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    mov 0x01,r5
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce322ac:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce322b6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32360,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce32352,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32314
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x34,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32352,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32354,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32364,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32356,pc),r0
    mov 0x00,r2
    fldi0 fr4
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3235c,pc),r3
    mov 0x0E,r6
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32368,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32314:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3231a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32360,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32334
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3236c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32334:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3233c:
    mov r4,r3
    mov.l @(PTR_ce32370,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3234e:
    #data 0x034e
DAT_ce32350:
    #data 0x0352
DAT_ce32352:
    #data 0x041c
DAT_ce32354:
    #data 0x01fc
DAT_ce32356:
    #data 0x01f9
    #align4

DAT_ce32358:
    #data 0xbf4db6db
PTR_ce3235c:
    #data loc_8c034e8c
PTR_ce32360:
    #data loc_8c034dee
PTR_ce32364:
    #data loc_8c04223a
PTR_ce32368:
    #data loc_8c0511b4
PTR_ce3236c:
    #data loc_8c051648
PTR_ce32370:
    #data PTR_ce347b4

;=============================================

LAB_ce32374:
    mov.w @(DAT_ce32484,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32390
    mov.w @(DAT_ce32488,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32486,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32390:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32498,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3249c,pc),r2
    mov 0x15,r5
    mov 0x0F,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3248a,pc),r0
    mov 0x30,r3
    mov 0x00,r4
    fldi0 fr4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce324a0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.w @(DAT_ce3248c,pc),r5
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add r14,r5
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
    mov 0x14,r0
    mov.b r4,@(r0,r5)
    mov 0x28,r0
    mov.b r4,@(r0,r5)
    mov 0x50,r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce3248e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32406
    lds.l @r15+,PR
    mov.l @(PTR_ce324a4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32406:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3240c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32490,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32492,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32484,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3242e
    bra LAB_ce32430
    mov 0x02,r3

LAB_ce3242e:
    mov 0x00,r3

LAB_ce32430:
    mov.w @(DAT_ce32494,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32496,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32476
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce324a8,pc),r3
    mov 0x17,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32488,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32496,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce324ac,pc),r0
    mov.l @(PTR_ce324b4,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce324b0,pc),r0
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

LAB_ce32476:
    mov.l @(PTR_ce324b8,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32484:
    #data 0x0255
DAT_ce32486:
    #data 0x00ff
DAT_ce32488:
    #data 0x03f0
DAT_ce3248a:
    #data 0x01a1
DAT_ce3248c:
    #data 0x02a4
DAT_ce3248e:
    #data 0x01f9
DAT_ce32490:
    #data 0x03f8
DAT_ce32492:
    #data 0x0328
DAT_ce32494:
    #data 0x03f1
DAT_ce32496:
    #data 0x0141
    #align4

PTR_ce32498:
    #data loc_8c05218a
PTR_ce3249c:
    #data loc_8c034e8c
PTR_ce324a0:
    #data loc_8c2896b0
PTR_ce324a4:
    #data loc_8c05115a
PTR_ce324a8:
    #data loc_8c042008
DAT_ce324ac:
    #data 0xc1555555
DAT_ce324b0:
    #data 0x435edb6d
PTR_ce324b4:
    #data loc_8c050834
PTR_ce324b8:
    #data loc_8c034dee

;=============================================

LAB_ce324bc:
    mov.w @(DAT_ce325d4,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    mov.l r9,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce325d6,pc),r0
    mov.w @(DAT_ce325d2,pc),r13
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bt/s LAB_ce32512
    add r14,r13
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce325dc,pc),r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x38,r0
    mov.w r0,@(0x1c,r14)
    mov 0x10,r6
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32512:
    mov.l @(PTR_ce325e0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x14,r0
    mov.b @(r0,r13),r2
    add 0xFF,r2
    mov.b r2,@(r0,r13)
    mov.b @(r0,r13),r3
    cmp/pl r3
    bt LAB_ce325be
    mov 0x0C,r2
    mov.b r2,@(r0,r13)
    mova @(DAT_ce325e4,pc),r0
    fmov.s @r0,fr15
    mova @(DAT_ce325e8,pc),r0
    fmov.s @r0,fr14
    mov.w @(DAT_ce325d8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3253e
    mova @(DAT_ce325ec,pc),r0
    fmov.s @r0,fr15

LAB_ce3253e:
    mov 0x28,r0
    mov.b @(r0,r13),r3
    mov 0x00,r4
    add 0x01,r3
    mov.b r3,@(r0,r13)
    mov.b @(r0,r13),r0
    tst 0x01,r0
    bt/s LAB_ce32554
    mov 0x04,r12
    bra LAB_ce32556
    mov r12,r10

LAB_ce32554:
    mov r4,r10

LAB_ce32556:
    mov.l @(PTR_ce325f0,pc),r9
    mov r4,r11
    mov r4,r13

LAB_ce3255c:
    mov.w @(0x1e,r14),r0
    mov 0x00,r3
    cmp/gt r0,r3
    addc r3,r0
    shar r0
    mov r0,r5
    jsr @r9
    mov r14,r4
    mov r0,r4
    tst r4,r4
    bt LAB_ce325a4
    mov 0x34,r0
    fmov fr15,fr2
    fmov.s @(r0,r14),fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    fmov fr14,fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov r10,r0
    nop
    mov.w r0,@(0x1e,r4)
    exts.w r13,r3
    mov.w @(0x1e,r14),r0
    mov 0x22,r1
    add 0x01,r11
    add r3,r0
    exts.w r11,r3
    and 0x1F,r0
    cmp/ge r12,r3
    add r4,r1
    mov.b r0,@r1
    bf/s LAB_ce3255c
    add 0x08,r13

LAB_ce325a4:
    mov.w @(DAT_ce325d8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce325b2
    mov.w @(0x1e,r14),r0
    bra LAB_ce325b6
    add 0xFE,r0

LAB_ce325b2:
    mov.w @(0x1e,r14),r0
    add 0x02,r0

LAB_ce325b6:
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1e,r14),r0
    and 0x1F,r0
    mov.w r0,@(0x1e,r14)

LAB_ce325be:
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325d2:
    #data 0x02a4
DAT_ce325d4:
    #data 0x03f8
DAT_ce325d6:
    #data 0x0328
DAT_ce325d8:
    #data 0x01d2
    #align4

PTR_ce325dc:
    #data loc_8c034e8c
PTR_ce325e0:
    #data loc_8c034dee
DAT_ce325e4:
    #data 0xc1555555
DAT_ce325e8:
    #data 0x43632492
DAT_ce325ec:
    #data 0x41555555
PTR_ce325f0:
    #data loc_8c06b00c

;=============================================

LAB_ce325f4:
    mov.w @(DAT_ce3272a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3272c,pc),r0
    mov.l @(PTR_ce32744,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/pz r0
    bt LAB_ce32652
    mov.w @(DAT_ce3272e,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32730,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32732,pc),r0
    mov.b r4,@(r0,r14)
    add 0x24,r0
    mov.b r4,@(r0,r14)
    add 0xD8,r0
    mov.b @(r0,r14),r3
    mov r14,r4
    add 0x01,r3
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b @(r0,r14),r2
    mov 0x7F,r3
    add 0x01,r2
    mov.b r2,@(r0,r14)
    add 0x04,r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce32748,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32652:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32658:
    mov.w @(DAT_ce32734,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3274c,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32672:
    mov.w @(DAT_ce32736,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3268e
    mov.w @(DAT_ce3273a,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32738,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3268e:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32750,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32754,pc),r2
    mov 0x22,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3273c,pc),r5
    mov 0x00,r4
    add r14,r5
    mov r4,r0
    nop
    mov.b r0,@(0xf,r5)
    mov 0x02,r0
    mov.b r0,@(0x8,r5)
    mov 0x26,r0
    mov 0x0F,r3
    fldi0 fr4
    mov.w r3,@(r0,r5)
    mov 0x08,r0
    mov.w r0,@(0x1c,r5)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x36,r3
    mov.w @(DAT_ce3273e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32758,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3275c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32740,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32712
    mov.l @(PTR_ce32760,pc),r2
    mov 0x15,r5
    mov 0x1F,r6
    jsr @r2
    mov r14,r4
    bra LAB_ce32722
    nop

LAB_ce32712:
    mov.l @(PTR_ce32760,pc),r2
    mov 0x15,r5
    mov 0x20,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32764,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32722:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce32794
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3272a:
    #data 0x03f8
DAT_ce3272c:
    #data 0x0328
DAT_ce3272e:
    #data 0x03f9
DAT_ce32730:
    #data 0x0327
DAT_ce32732:
    #data 0x01d8
DAT_ce32734:
    #data 0x01f5
DAT_ce32736:
    #data 0x0255
DAT_ce32738:
    #data 0x00ff
DAT_ce3273a:
    #data 0x03f0
DAT_ce3273c:
    #data 0x02a4
DAT_ce3273e:
    #data 0x01a1
DAT_ce32740:
    #data 0x041c
    #align4

PTR_ce32744:
    #data loc_8c034dee
PTR_ce32748:
    #data loc_8c05176e
PTR_ce3274c:
    #data PTR_ce347c4
PTR_ce32750:
    #data loc_8c05218a
PTR_ce32754:
    #data loc_8c042008
PTR_ce32758:
    #data loc_8c2896b0
PTR_ce3275c:
    #data loc_8c053082
PTR_ce32760:
    #data loc_8c034e8c
PTR_ce32764:
    #data loc_8c05115a

;=============================================

FUN_ce32768:
    mov.w @(DAT_ce3284a,pc),r3
    mov.w @(DAT_ce3284c,pc),r4
    and r3,r5
    extu.w r5,r6
    and r6,r4
    cmp/pz r4
    bt LAB_ce3277a
    mov.w @(DAT_ce3284e,pc),r2
    add r2,r4

LAB_ce3277a:
    mov.w @(DAT_ce32850,pc),r1
    mov 0xF4,r2
    shad r2,r4
    and r1,r6
    cmp/pz r6
    bt LAB_ce3278a
    mov.w @(DAT_ce32852,pc),r2
    add r2,r6

LAB_ce3278a:
    mov 0xF8,r2
    shad r2,r6
    or r6,r4
    rts
    mov r4,r0

LAB_ce32794:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32854,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32856,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32858,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce327ba
    bra LAB_ce327bc
    mov 0x02,r3

LAB_ce327ba:
    mov 0x00,r3

LAB_ce327bc:
    mov.w @(DAT_ce3285a,pc),r0
    mov 0x00,r12
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32864,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce3281a
    mov.w @(DAT_ce3285c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce328aa
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce3285e,pc),r0
    mov.b r12,@(r0,r14)
    add 0x01,r0
    mov.b r12,@(r0,r14)
    add 0x2B,r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce327f8
    mova @(DAT_ce32868,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3286c,pc),r0
    fmov.s fr3,@r15
    bra LAB_ce32802
    fmov.s @r0,fr3

LAB_ce327f8:
    mova @(DAT_ce32870,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32874,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3

LAB_ce32802:
    mov 0x04,r0
    mov.l @(PTR_ce32878,pc),r3
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    mov r15,r5
    fmov fr3,@(r0,r15)
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    bra LAB_ce328aa
    nop

LAB_ce3281a:
    mov.l @(PTR_ce3287c,pc),r2
    mov 0x16,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3287c,pc),r3
    mov 0x22,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32860,pc),r13
    mov 0x26,r0
    add r14,r13
    mov.w @(r0,r13),r2
    mov 0x24,r0
    add 0x1E,r2
    mov.w r2,@(r0,r13)
    mov 0x26,r0
    mov.w r12,@(r0,r13)
    mov.w @(DAT_ce32862,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32880
    mov 0x2A,r0
    bra LAB_ce32884
    mov.w @(r0,r13),r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3284a:
    #data 0x3c00
DAT_ce3284c:
    #data 0x3000
DAT_ce3284e:
    #data 0x0fff
DAT_ce32850:
    #data 0x0c00
DAT_ce32852:
    #data 0x00ff
DAT_ce32854:
    #data 0x03f8
DAT_ce32856:
    #data 0x0328
DAT_ce32858:
    #data 0x0255
DAT_ce3285a:
    #data 0x03f1
DAT_ce3285c:
    #data 0x0141
DAT_ce3285e:
    #data 0x03f0
DAT_ce32860:
    #data 0x02a4
DAT_ce32862:
    #data 0x0525
    #align4

PTR_ce32864:
    #data loc_8c034dee
DAT_ce32868:
    #data 0xc0555555
DAT_ce3286c:
    #data 0x43632492
DAT_ce32870:
    #data 0xc23aaaaa
DAT_ce32874:
    #data 0x43610000
PTR_ce32878:
    #data loc_8c050834
PTR_ce3287c:
    #data loc_8c042008

;=============================================

LAB_ce32880:
    mov.w @(DAT_ce3294e,pc),r0
    mov.w @(r0,r14),r5

LAB_ce32884:
    mov.w @(DAT_ce32950,pc),r3
    and r3,r5
    extu.w r5,r2
    tst r2,r2
    bt LAB_ce3289a
    bsr FUN_ce32768
    mov r14,r4
    mov.w r0,@(0x1c,r13)
    mov.w @(0x1c,r13),r0
    and 0x0F,r0
    mov.w r0,@(0x1c,r13)

LAB_ce3289a:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    bsr FUN_ce32a70
    mov r14,r4

LAB_ce328aa:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce328b6:
    mov.w @(DAT_ce32952,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce32954,pc),r0
    mov.b r2,@(r0,r4)
    mova @(DAT_ce32960,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32956,pc),r0
    fmov.s @(r0,r4),fr4
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fadd fr3,fr4
    fcmp/gt fr4,fr2
    bf LAB_ce328d6
    fmov fr4,@(r0,r4)

LAB_ce328d6:
    mov.w @(DAT_ce32958,pc),r0
    mov.b @(r0,r4),r0
    tst 0x01,r0
    bt LAB_ce328f4
    mov.w @(DAT_ce3295a,pc),r5
    add r4,r5
    mov.b @(0xf,r5),r0
    add 0x01,r0
    mov.b r0,@(0xf,r5)
    mov.b @(0x8,r5),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce328f4
    bra LAB_ce32b14
    nop

LAB_ce328f4:
    bra LAB_ce32bb0
    nop

LAB_ce328f8:
    mov.w @(DAT_ce32952,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32954,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3295c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32932
    mova @(DAT_ce32964,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0xFF,r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3295e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32968,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3296c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32932:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32970,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3294e:
    #data 0x034a
DAT_ce32950:
    #data 0x3c00
DAT_ce32952:
    #data 0x03f8
DAT_ce32954:
    #data 0x0328
DAT_ce32956:
    #data 0x041c
DAT_ce32958:
    #data 0x019e
DAT_ce3295a:
    #data 0x02a4
DAT_ce3295c:
    #data 0x01f9
DAT_ce3295e:
    #data 0x01d3
    #align4

DAT_ce32960:
    #data 0x44600000
DAT_ce32964:
    #data 0xbf4db6db
PTR_ce32968:
    #data loc_8c0517be
PTR_ce3296c:
    #data loc_8c0511b4
PTR_ce32970:
    #data loc_8c051648

;=============================================

LAB_ce32974:
    mov.w @(DAT_ce32a4e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    fmov.s fr15,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32a50,pc),r0
    mov.l @(PTR_ce32a58,pc),r3
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
    fcmp/gt fr2,fr3
    bf/s LAB_ce32a24
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce32a52,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32a5c,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32a54,pc),r0
    fmov fr3,fr15
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce32a24
    mov.l @(PTR_ce32a60,pc),r3
    mov 0x34,r5
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce32a64,pc),r3
    mov 0x0E,r6
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
    lds.l @r15+,PR
    mov.l @(PTR_ce32a68,pc),r2
    mov r14,r4
    fmov.s @r15+,fr15
    jmp @r2
    mov.l @r15+,r14

LAB_ce32a24:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32a2c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32a58,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a46
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32a6c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32a46:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a4e:
    #data 0x03f8
DAT_ce32a50:
    #data 0x0328
DAT_ce32a52:
    #data 0x03f9
DAT_ce32a54:
    #data 0x0327
    #align4

PTR_ce32a58:
    #data loc_8c034dee
PTR_ce32a5c:
    #data loc_8c052ce2
PTR_ce32a60:
    #data loc_8c04223a
PTR_ce32a64:
    #data loc_8c034e8c
PTR_ce32a68:
    #data loc_8c0511b4
PTR_ce32a6c:
    #data loc_8c051648

;=============================================

FUN_ce32a70:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32b6c,pc),r13
    mov r4,r14
    mov.l @(PTR_ce32b74,pc),r1
    mov 0x00,r4
    add r14,r13
    mov.w @(0x1c,r13),r0
    mov 0x15,r5
    extu.w r0,r0
    mov.b @(r0,r1),r3
    mov.w @(DAT_ce32b6e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32b78,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(0x1c,r13),r0
    mov.l @(PTR_ce32b80,pc),r2
    extu.w r0,r6
    mov.l @(PTR_ce32b7c,pc),r0
    shll2 r6
    mov.l @(r0,r6),r6
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r13),r0
    mov r15,r7
    mov.l @(PTR_ce32b84,pc),r1
    add 0x04,r7
    extu.w r0,r0
    mov.l @(PTR_ce32b88,pc),r2
    mov.b @(r0,r1),r3
    mov 0x22,r0
    mov.w @(DAT_ce32b70,pc),r5
    mov r15,r6
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r0
    mov.b r0,@(0x8,r15)
    mov.w @(0x1c,r13),r0
    extu.w r0,r0
    mov.b @(r0,r2),r3
    mov 0x22,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32b8c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x22,r1
    mov.b @(0x8,r15),r0
    add r14,r1
    mov.b r0,@r1
    mov.w @(DAT_ce32b72,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32afc
    fmov.s @r15,fr3
    fneg fr3
    fmov.s fr3,@r15

LAB_ce32afc:
    fmov.s @r15,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r15),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32b14:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32b90,pc),r3
    add 0x02,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32b72,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32b3c
    mova @(DAT_ce32b94,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32b98,pc),r0
    bra LAB_ce32b48
    fmov.s @r0,fr3

LAB_ce32b3c:
    mova @(DAT_ce32b9c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32ba0,pc),r0
    fmov.s @r0,fr3

LAB_ce32b48:
    mov 0x68,r0
    mov.l @(PTR_ce32bac,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32ba4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x01,r7
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32ba8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x02,r6
    mov r7,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b6c:
    #data 0x02a4
DAT_ce32b6e:
    #data 0x01a1
DAT_ce32b70:
    #data 0x03e8
DAT_ce32b72:
    #data 0x01d2
    #align4

PTR_ce32b74:
    #data DAT_ce34504
PTR_ce32b78:
    #data loc_8c2896b0
PTR_ce32b7c:
    #data DAT_ce34514
PTR_ce32b80:
    #data loc_8c034e8c
PTR_ce32b84:
    #data DAT_ce34554
PTR_ce32b88:
    #data DAT_ce34564
PTR_ce32b8c:
    #data FUN_ce342aa
PTR_ce32b90:
    #data loc_8c05218a
DAT_ce32b94:
    #data 0xc0200000
DAT_ce32b98:
    #data 0x3cd55555
DAT_ce32b9c:
    #data 0x40200000
DAT_ce32ba0:
    #data 0xbcd55555
DAT_ce32ba4:
    #data 0x41892492
DAT_ce32ba8:
    #data 0xbf4db6db
PTR_ce32bac:
    #data loc_8c034f54

;=============================================

LAB_ce32bb0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x24,r0
    mov.w @(DAT_ce32cc0,pc),r13
    mov.l r12,@-r15
    add r14,r13
    sts.l PR,@-r15
    mov.w @(r0,r13),r3
    add 0xFF,r3
    mov.w r3,@(r0,r13)
    mov.w @(r0,r13),r2
    extu.w r2,r2
    cmp/pl r2
    bt/s LAB_ce32bd4
    mov 0x00,r12
    bra LAB_ce32ce8
    nop

LAB_ce32bd4:
    mov.w @(r0,r13),r2
    mov 0x0A,r3
    extu.w r2,r2
    cmp/ge r3,r2
    bt LAB_ce32bee
    mov.w @(DAT_ce32cc2,pc),r0
    mov.w @(DAT_ce32cc4,pc),r2
    mov.w @(r0,r14),r1
    extu.w r1,r1
    tst r2,r1
    bt LAB_ce32bee
    mov 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce32bee:
    mov.l @(PTR_ce32cd4,pc),r3
    jsr @r3
    nop
    mov 0x03,r2
    mov r0,r4
    and r2,r4
    tst r4,r4
    bf LAB_ce32c06
    mov.l @(PTR_ce32cd8,pc),r1
    mov.w @(DAT_ce32cc6,pc),r5
    jsr @r1
    mov r14,r4

LAB_ce32c06:
    mov.l @(PTR_ce32cdc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32cc8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32c40
    mov.b r12,@(r0,r14)
    mov.w @(0x1c,r13),r0
    mov.l @(PTR_ce32ce0,pc),r1
    extu.w r0,r0
    mov.b @(r0,r1),r3
    mov.w @(DAT_ce32cca,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32ce4,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce32c40:
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
    mov.w @(DAT_ce32ccc,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce32d4c
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32cce,pc),r0
    mov.b r12,@(r0,r14)
    mov.w @(0x1c,r13),r0
    extu.w r0,r0
    cmp/eq 0x09,r0
    bt LAB_ce32ca2
    cmp/eq 0x01,r0
    bt LAB_ce32ca2
    cmp/eq 0x05,r0
    bt LAB_ce32cac
    bra LAB_ce32d4c
    nop

LAB_ce32ca2:
    mov.w @(DAT_ce32cd0,pc),r5
    bsr FUN_ce32768
    mov r14,r4
    bra LAB_ce32cb2
    nop

LAB_ce32cac:
    mov.w @(DAT_ce32cd2,pc),r5
    bsr FUN_ce32768
    mov r14,r4

LAB_ce32cb2:
    mov.w r0,@(0x1c,r13)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra FUN_ce32a70
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32cc0:
    #data 0x02a4
DAT_ce32cc2:
    #data 0x034a
DAT_ce32cc4:
    #data 0x0360
DAT_ce32cc6:
    #data 0x00ff
DAT_ce32cc8:
    #data 0x0141
DAT_ce32cca:
    #data 0x01a1
DAT_ce32ccc:
    #data 0x041c
DAT_ce32cce:
    #data 0x01f9
DAT_ce32cd0:
    #data 0x0800
DAT_ce32cd2:
    #data 0x0400
    #align4

PTR_ce32cd4:
    #data loc_8c11e730
PTR_ce32cd8:
    #data loc_8c0c0a5c
PTR_ce32cdc:
    #data loc_8c034dee
PTR_ce32ce0:
    #data DAT_ce34504
PTR_ce32ce4:
    #data loc_8c2896b0

;=============================================

LAB_ce32ce8:
    mov.b @(0x7,r14),r0
    tst r0,r0
    bt LAB_ce32cfa
    mov.b @(0x8,r13),r0
    add 0xFF,r0
    mov.b r0,@(0x8,r13)
    mov.b @(0x8,r13),r0
    tst r0,r0
    bf LAB_ce32d06

LAB_ce32cfa:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra LAB_ce32b14
    mov.l @r15+,r14

LAB_ce32d06:
    mov.l @(PTR_ce32e24,pc),r3
    mov 0x15,r5
    mov 0x21,r6
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r13),r0
    mov r14,r4
    mov.l @(PTR_ce32e28,pc),r1
    extu.w r0,r0
    mov.b @(r0,r1),r3
    mov.w @(DAT_ce32e1a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32e2c,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.b @(0x6,r14),r0
    add 0xFF,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra LAB_ce32794
    mov.l @r15+,r14

LAB_ce32d4c:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32d56:
    mov r4,r3
    mov.l @(PTR_ce32e30,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32d68:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32e1c,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32e34,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32e1e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32d92
    mov.l @(PTR_ce32e38,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32d92:
    mov.l @(PTR_ce32e3c,pc),r3
    mov 0x1E,r5
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov 0x00,r0
    fldi0 fr4
    mov.b r0,@(0xd,r2)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32e20,pc),r0
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce32e22,pc),r0
    mov.w @(r0,r3),r2
    tst r2,r2
    bt LAB_ce32de2
    mov.w @(DAT_ce32e20,pc),r3
    mov 0x68,r0
    mov.l @(DAT_ce32e40,pc),r1
    add r14,r3
    lds r1,FPUL
    mov 0x34,r1
    mov.l @r3,r3
    add r3,r1
    bra LAB_ce32df4
    fsts FPUL,fr3

LAB_ce32de2:
    mov.l @(DAT_ce32e44,pc),r1
    mov 0x68,r0
    mov.w @(DAT_ce32e20,pc),r2
    lds r1,FPUL
    mov 0x34,r1
    add r14,r2
    mov.l @r2,r2
    fsts FPUL,fr3
    add r2,r1

LAB_ce32df4:
    fmov.s @r1,fr2
    mov 0x15,r5
    fmov.s @(r0,r14),fr1
    mov r14,r4
    fadd fr3,fr2
    mov 0x2B,r6
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov.w @(DAT_ce32e20,pc),r0
    mov.l @(r0,r14),r3
    mov 0x38,r0
    fmov.s @(r0,r3),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32e24,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e1a:
    #data 0x01a1
DAT_ce32e1c:
    #data 0x02a4
DAT_ce32e1e:
    #data 0x01f9
DAT_ce32e20:
    #data 0x020c
DAT_ce32e22:
    #data 0x0130
    #align4

PTR_ce32e24:
    #data loc_8c034e8c
PTR_ce32e28:
    #data DAT_ce34504
PTR_ce32e2c:
    #data loc_8c2896b0
PTR_ce32e30:
    #data PTR_ce347dc
PTR_ce32e34:
    #data loc_8c05218a
PTR_ce32e38:
    #data loc_8c05115a
PTR_ce32e3c:
    #data loc_8c042008
DAT_ce32e40:
    #data 0xc3200000
DAT_ce32e44:
    #data 0x43200000

;=============================================

LAB_ce32e48:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32f90,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32e82
    mov.b @(0x6,r14),r0
    mov 0x03,r4
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x05,r5
    mov.w @(DAT_ce32f82,pc),r0
    mov.b r4,@(r0,r14)
    add 0xF6,r0
    mov.b r4,@(r0,r14)
    add 0x02,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov r14,r4
    mov.w @(DAT_ce32f84,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce32f94,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e82:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e88:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32f82,pc),r0
    mov 0x02,r4
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    add 0xF6,r0
    mov.b r4,@(r0,r14)
    add 0x02,r0
    mov.b r4,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bt LAB_ce32f0a
    mov.b @(0x6,r14),r0
    mov 0x01,r5
    mov.l @(PTR_ce32f98,pc),r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32f0a
    mov r0,r4
    mov.w @(DAT_ce32f86,pc),r0
    mov 0x00,r5
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r4)
    mov.b @(r0,r14),r12
    mov.l @(PTR_ce32f9c,pc),r2
    extu.b r12,r12
    mov r12,r3
    shll r12
    add r3,r12
    add r2,r12
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32ee6
    mov r0,r4
    mov.w @(DAT_ce32f86,pc),r0
    mov.b @r12+,r3
    mov.b r3,@(r0,r4)

LAB_ce32ee6:
    mov 0x00,r5
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32ef8
    mov r0,r4
    mov.w @(DAT_ce32f86,pc),r0
    mov.b @r12+,r3
    mov.b r3,@(r0,r4)

LAB_ce32ef8:
    mov 0x00,r5
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32f0a
    mov r0,r4
    mov.w @(DAT_ce32f86,pc),r0
    mov.b @r12,r2
    mov.b r2,@(r0,r4)

LAB_ce32f0a:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32f14:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32f88,pc),r4
    sts.l PR,@-r15
    add r14,r4
    mov.b @(0xd,r4),r0
    tst r0,r0
    bt LAB_ce32f4a
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov 0x2C,r6
    mov.w @(DAT_ce32f84,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32fa0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32fa4,pc),r2
    mov 0x23,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32f4a:
    mov.w @(DAT_ce32f82,pc),r0
    mov 0x02,r4
    mov.b r4,@(r0,r14)
    add 0xF6,r0
    mov.b r4,@(r0,r14)
    add 0x02,r0
    mov.b r4,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f5e:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32f90,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce32fa8
    mov.w @(DAT_ce32f8a,pc),r0
    mov.w @(DAT_ce32f8c,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce3300e
    mov 0x01,r0
    bra LAB_ce3300e
    mov.b r0,@(0x7,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f82:
    #data 0x01f5
DAT_ce32f84:
    #data 0x012c
DAT_ce32f86:
    #data 0x01a3
DAT_ce32f88:
    #data 0x02a4
DAT_ce32f8a:
    #data 0x034e
DAT_ce32f8c:
    #data 0x0360
    #align4

PTR_ce32f90:
    #data loc_8c034dee
PTR_ce32f94:
    #data loc_8c056de4
PTR_ce32f98:
    #data loc_8c0c0850
PTR_ce32f9c:
    #data DAT_ce34574
PTR_ce32fa0:
    #data loc_8c034e8c
PTR_ce32fa4:
    #data loc_8c042008

;=============================================

LAB_ce32fa8:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce330da,pc),r0
    mov.w @(DAT_ce330d8,pc),r13
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32fd2
    add r14,r13
    mov.b @(0x7,r14),r0
    tst r0,r0
    bt LAB_ce33004
    mov.w @(DAT_ce330dc,pc),r0
    bra LAB_ce32fd6
    mov.w @(r0,r14),r5

LAB_ce32fd2:
    mov 0x2A,r0
    mov.w @(r0,r13),r5

LAB_ce32fd6:
    mov.w @(DAT_ce330de,pc),r3
    and r3,r5
    extu.w r5,r2
    tst r2,r2
    bt LAB_ce33004
    mov.b @(0x6,r14),r0
    mov 0x10,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x24,r0
    mov.w r2,@(r0,r13)
    bsr FUN_ce32768
    mov r14,r4
    mov.w r0,@(0x1c,r13)
    bsr FUN_ce33016
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce330e8,pc),r2
    mov r14,r4
    mov 0x22,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33004:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce330ba
    mov.l @r15+,r14

LAB_ce3300e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33016:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce330d8,pc),r13
    mov r4,r14
    mov.l @(PTR_ce330ec,pc),r1
    mov 0x00,r4
    add r14,r13
    mov.w @(0x1c,r13),r0
    mov 0x15,r5
    extu.w r0,r0
    mov.b @(r0,r1),r3
    mov.w @(DAT_ce330e0,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce330f0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(0x1c,r13),r0
    mov.l @(PTR_ce330f8,pc),r2
    extu.w r0,r6
    mov.l @(PTR_ce330f4,pc),r0
    shll2 r6
    mov.l @(r0,r6),r6
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r13),r0
    mov r15,r7
    mov.l @(PTR_ce330fc,pc),r1
    add 0x04,r7
    extu.w r0,r0
    mov.l @(PTR_ce33100,pc),r2
    mov.b @(r0,r1),r3
    mov 0x22,r0
    mov.w @(DAT_ce330e2,pc),r5
    mov r15,r6
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r0
    mov.b r0,@(0x8,r15)
    mov.w @(0x1c,r13),r0
    extu.w r0,r0
    mov.b @(r0,r2),r3
    mov 0x22,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33104,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x22,r1
    mov.b @(0x8,r15),r0
    add r14,r1
    mov.b r0,@r1
    mov.w @(DAT_ce330e4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce330a2
    fmov.s @r15,fr3
    fneg fr3
    fmov.s fr3,@r15

LAB_ce330a2:
    fmov.s @r15,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r15),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce330ba:
    mov.w @(DAT_ce330e6,pc),r0
    mov 0x00,r5
    mov.b r5,@(r0,r4)
    add 0x24,r0
    mov.b r5,@(r0,r4)
    add 0xD8,r0
    mov.b @(r0,r4),r3
    add 0x01,r3
    mov.b r3,@(r0,r4)
    add 0x01,r0
    mov.l @(PTR_ce33108,pc),r3
    mov.b r5,@(r0,r4)
    add 0x04,r0
    jmp @r3
    mov.b r5,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce330d8:
    #data 0x02a4
DAT_ce330da:
    #data 0x0525
DAT_ce330dc:
    #data 0x034a
DAT_ce330de:
    #data 0x3c00
DAT_ce330e0:
    #data 0x01a1
DAT_ce330e2:
    #data 0x03e8
DAT_ce330e4:
    #data 0x01d2
DAT_ce330e6:
    #data 0x01d8
    #align4

PTR_ce330e8:
    #data loc_8c042008
PTR_ce330ec:
    #data DAT_ce345c4
PTR_ce330f0:
    #data loc_8c2896b0
PTR_ce330f4:
    #data DAT_ce34584
PTR_ce330f8:
    #data loc_8c034e8c
PTR_ce330fc:
    #data DAT_ce34554
PTR_ce33100:
    #data DAT_ce34564
PTR_ce33104:
    #data FUN_ce342aa
PTR_ce33108:
    #data loc_8c05176e

;=============================================

LAB_ce3310c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce331e0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce331d6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3312c
    mova @(DAT_ce331e4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce331e8,pc),r0
    bra LAB_ce33138
    fmov.s @r0,fr3

LAB_ce3312c:
    mova @(DAT_ce331ec,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce331f0,pc),r0
    fmov.s @r0,fr3

LAB_ce33138:
    mov 0x68,r0
    mov.l @(PTR_ce331fc,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce331f4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x01,r7
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce331f8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x02,r6
    mov r7,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3315c:
    mova @(DAT_ce33200,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    fmov.s @r0,fr3
    mov.w @(DAT_ce331da,pc),r0
    mov.w @(DAT_ce331d8,pc),r4
    fmov.s @(r0,r14),fr4
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fadd fr3,fr4
    fcmp/gt fr4,fr2
    bf/s LAB_ce3317c
    add r14,r4
    fmov fr4,@(r0,r14)

LAB_ce3317c:
    mov.w @(DAT_ce331dc,pc),r0
    mov 0x01,r5
    mov.b @(r0,r14),r3
    tst r5,r3
    bf LAB_ce331a0
    mov 0x24,r0
    mov.w @(r0,r4),r3
    add 0xFF,r3
    mov.w r3,@(r0,r4)
    mov.w @(r0,r4),r2
    extu.w r2,r2
    cmp/pl r2
    bt/s LAB_ce33208
    mov 0x00,r13
    mov.w @(DAT_ce331dc,pc),r0
    mov.b @(r0,r14),r0
    tst 0x80,r0
    bt LAB_ce331b0

LAB_ce331a0:
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce3310c
    mov.l @r15+,r14

LAB_ce331b0:
    mov.w @(DAT_ce331de,pc),r0
    mov r14,r4
    mov.b r13,@(r0,r14)
    add 0x24,r0
    mov.b r13,@(r0,r14)
    add 0xD8,r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r5,@(r0,r14)
    add 0x04,r0
    mov 0x7F,r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce33204,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331d6:
    #data 0x01d2
DAT_ce331d8:
    #data 0x02a4
DAT_ce331da:
    #data 0x041c
DAT_ce331dc:
    #data 0x019e
DAT_ce331de:
    #data 0x01d8
    #align4

PTR_ce331e0:
    #data loc_8c05218a
DAT_ce331e4:
    #data 0xbf555555
DAT_ce331e8:
    #data 0x3b555555
DAT_ce331ec:
    #data 0x3f555555
DAT_ce331f0:
    #data 0xbb555555
DAT_ce331f4:
    #data 0x415edb6d
DAT_ce331f8:
    #data 0xbf4db6db
PTR_ce331fc:
    #data loc_8c034f54
DAT_ce33200:
    #data 0x44600000
PTR_ce33204:
    #data loc_8c05176e

;=============================================

LAB_ce33208:
    mov.l @(PTR_ce33350,pc),r3
    jsr @r3
    nop
    tst 0x03,r0
    bf LAB_ce3321a
    mov.l @(PTR_ce33354,pc),r3
    mov.w @(DAT_ce3334a,pc),r5
    jsr @r3
    mov r14,r4

LAB_ce3321a:
    mov.l @(PTR_ce33358,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce3335c,pc),r3
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
    mov.w @(DAT_ce3334c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33296
    mov 0x07,r0
    mov.l @(PTR_ce33360,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.w @(DAT_ce3334c,pc),r0
    mov 0x0E,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3334e,pc),r0
    mov.b r13,@(r0,r14)
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

LAB_ce33296:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3329e:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33358,pc),r3
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
    fcmp/gt fr2,fr3
    bf/s LAB_ce33320
    fmov fr2,@(r0,r14)
    mov.l @(PTR_ce33364,pc),r3
    mov 0x5C,r0
    fmov fr3,fr15
    fmov fr15,@(r0,r14)
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce33320
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0E,r6
    mov.w @(DAT_ce3334e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33360,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)

LAB_ce33320:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33328:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33358,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33342
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33368,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33342:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3334a:
    #data 0x00ff
DAT_ce3334c:
    #data 0x041c
DAT_ce3334e:
    #data 0x01f9
    #align4

PTR_ce33350:
    #data loc_8c11e730
PTR_ce33354:
    #data loc_8c0c0a5c
PTR_ce33358:
    #data loc_8c034dee
PTR_ce3335c:
    #data loc_8c053082
PTR_ce33360:
    #data loc_8c034e8c
PTR_ce33364:
    #data loc_8c052ce2
PTR_ce33368:
    #data loc_8c051648

;=============================================

LAB_ce3336c:
    mov.l r14,@-r15
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
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    mov.l @(PTR_ce334a8,pc),r1
    shll2 r0
    mov r14,r4
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce333b8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33498,pc),r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce333d6
    mov.w @(DAT_ce3349c,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3349a,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce333d6:
    mov.w @(DAT_ce3349e,pc),r2
    mov.l @(PTR_ce334ac,pc),r3
    add r14,r2
    mov.l r2,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov 0x64,r0
    mov.l @(PTR_ce334b0,pc),r3
    mov 0x15,r5
    mov.b r0,@(0xb,r2)
    mov 0x2E,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce334b4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce334a0,pc),r0
    mov 0x4E,r3
    fldi0 fr4
    mov 0x00,r4
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
    mov.w @(DAT_ce334a2,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce334b8,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

;=============================================

FUN_ce33446:
    mov.w @(DAT_ce334a4,pc),r0
    mov 0xF8,r5
    mov.l @(r0,r4),r3
    add 0xC6,r0
    mov.b @(r0,r3),r2
    tst r2,r2
    bf/s LAB_ce33468
    mov 0xFC,r6
    mov.w @(DAT_ce334a4,pc),r0
    mov.l @(r0,r4),r2
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fmov.s @(r0,r2),fr3
    fcmp/gt fr2,fr3
    bf LAB_ce33476
    bra LAB_ce3347a
    nop

LAB_ce33468:
    mov.w @(DAT_ce334a4,pc),r0
    mov.l @(r0,r4),r3
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fmov.s @(r0,r3),fr3
    fcmp/gt fr3,fr2
    bt LAB_ce3347a

LAB_ce33476:
    mov 0x04,r6
    mov 0x08,r5

LAB_ce3347a:
    mov.w @(DAT_ce334a4,pc),r0
    mov.l @(r0,r4),r2
    mova @(DAT_ce334bc,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fmov.s @(r0,r2),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bt/s LAB_ce33492
    add 0x10,r5
    add r6,r5

LAB_ce33492:
    mov 0x22,r0
    rts
    mov.b r5,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33498:
    #data 0x0255
DAT_ce3349a:
    #data 0x00ff
DAT_ce3349c:
    #data 0x03f0
DAT_ce3349e:
    #data 0x02a4
DAT_ce334a0:
    #data 0x041c
DAT_ce334a2:
    #data 0x01a1
DAT_ce334a4:
    #data 0x020c
    #align4

PTR_ce334a8:
    #data PTR_ce347fc
PTR_ce334ac:
    #data loc_8c05115a
PTR_ce334b0:
    #data loc_8c034e8c
PTR_ce334b4:
    #data loc_8c053082
PTR_ce334b8:
    #data loc_8c2896b0
DAT_ce334bc:
    #data 0x42cdb6db

;=============================================

LAB_ce334c0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    bsr FUN_ce33446
    mov r4,r14
    mov.l @(PTR_ce3356c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33560,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33562,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33564,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce334ea
    bra LAB_ce334ec
    mov 0x02,r3

LAB_ce334ea:
    mov 0x00,r3

LAB_ce334ec:
    mov.w @(DAT_ce33566,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33568,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33540
    mov 0x00,r4
    fldi0 fr4
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce33570,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33574,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33578,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3357c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    mov.w @(DAT_ce3356a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.l @(PTR_ce33580,pc),r3
    mov r15,r5
    jsr @r3
    mov r14,r4

LAB_ce33540:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33548:
    mov.b @(0x6,r4),r0
    mov 0x02,r3
    mov 0x05,r2
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33560,pc),r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce33562,pc),r0
    mov.l @(PTR_ce33584,pc),r3
    mov.b r2,@(r0,r4)
    jmp @r3
    mov 0x18,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33560:
    #data 0x03f8
DAT_ce33562:
    #data 0x0328
DAT_ce33564:
    #data 0x0255
DAT_ce33566:
    #data 0x03f1
DAT_ce33568:
    #data 0x0141
DAT_ce3356a:
    #data 0x03f0
    #align4

PTR_ce3356c:
    #data loc_8c034dee
DAT_ce33570:
    #data 0x41cdb6db
DAT_ce33574:
    #data 0xbef00000
DAT_ce33578:
    #data 0xc0d55555
DAT_ce3357c:
    #data 0x43520000
PTR_ce33580:
    #data loc_8c050834
PTR_ce33584:
    #data loc_8c042008

;=============================================

LAB_ce33588:
    mov.w @(DAT_ce33684,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce33686,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33688,pc),r0
    mov.b r3,@(r0,r14)
    bsr FUN_ce33446
    mov r14,r4
    mov.w @(DAT_ce3368a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce335d2
    mov 0x00,r13
    mov.w @(DAT_ce3368c,pc),r0
    mov.w @(DAT_ce3368e,pc),r2
    mov.w @(r0,r14),r3
    add 0xFC,r0
    mov.w @(r0,r14),r4
    or r3,r4
    and r2,r4
    extu.w r4,r4
    tst r4,r4
    bt LAB_ce335d2
    mov.w @(DAT_ce33690,pc),r0
    mov 0x01,r3
    mov.w r13,@(r0,r14)
    add 0x02,r0
    mov.w r13,@(r0,r14)
    mov.w @(DAT_ce33692,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce335d2:
    mov.l @(PTR_ce336a0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33694,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3363c
    mov.b r13,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce336a8,pc),r0
    fmov.s @r0,fr2
    mov.l @(PTR_ce336a4,pc),r4
    fcmp/gt fr2,fr3
    bt LAB_ce3361a
    mov.w @(DAT_ce33696,pc),r0
    mov 0x4F,r2
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
    mov.b @(0x6,r14),r0
    add 0x01,r0
    bra LAB_ce33620
    mov.b r0,@(0x6,r14)

LAB_ce3361a:
    mov.w @(DAT_ce33696,pc),r0
    mov 0x4E,r2
    mov.b r2,@(r0,r14)

LAB_ce33620:
    mov.w @(DAT_ce33698,pc),r0
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

LAB_ce3363c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33644:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33680
    mov.b @(0x6,r4),r0
    mov 0x00,r5
    fmov fr3,fr4
    mov 0x09,r6
    add 0x01,r0
    mov.l @(PTR_ce336b0,pc),r3
    mov.b r0,@(0x6,r4)
    mova @(DAT_ce336ac,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce3369a,pc),r0
    mov.b r5,@(r0,r4)
    add 0xFF,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce3369c,pc),r0
    mov.b r5,@(r0,r4)
    add 0x01,r0
    mov.b r5,@(r0,r4)
    jmp @r3
    mov 0x01,r5

LAB_ce33680:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33684:
    #data 0x03f8
DAT_ce33686:
    #data 0x0328
DAT_ce33688:
    #data 0x01f5
DAT_ce3368a:
    #data 0x019e
DAT_ce3368c:
    #data 0x0352
DAT_ce3368e:
    #data 0x0360
DAT_ce33690:
    #data 0x0350
DAT_ce33692:
    #data 0x0142
DAT_ce33694:
    #data 0x0141
DAT_ce33696:
    #data 0x01a1
DAT_ce33698:
    #data 0x01ac
DAT_ce3369a:
    #data 0x03f9
DAT_ce3369c:
    #data 0x0327
    #align4

PTR_ce336a0:
    #data loc_8c034dee
PTR_ce336a4:
    #data loc_8c2896b0
DAT_ce336a8:
    #data 0x40892492
DAT_ce336ac:
    #data 0xbf4db6db
PTR_ce336b0:
    #data loc_8c034e8c

;=============================================

LAB_ce336b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3378c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce33786,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce33712
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x34,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33786,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33788,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33790,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33794,pc),r2
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
    mov.w @(DAT_ce3378a,pc),r0
    mov r14,r4
    mov 0x0E,r6
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce33798,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33712:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33718:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3378c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33732
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3379c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33732:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3373a:
    mov.l r14,@-r15
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
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    mov.l @(PTR_ce337a0,pc),r1
    shll2 r0
    mov r14,r4
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33786:
    #data 0x041c
DAT_ce33788:
    #data 0x01fc
DAT_ce3378a:
    #data 0x01f9
    #align4

PTR_ce3378c:
    #data loc_8c034dee
PTR_ce33790:
    #data loc_8c04223a
PTR_ce33794:
    #data loc_8c0511b4
PTR_ce33798:
    #data loc_8c034e8c
PTR_ce3379c:
    #data loc_8c051648
PTR_ce337a0:
    #data PTR_ce34818

;=============================================

LAB_ce337a4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce338e0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce338e4,pc),r2
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
    mov 0x50,r3
    mov.w @(DAT_ce338d8,pc),r0
    mov 0x00,r4
    mov 0x05,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce338e8,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce338ec,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce338f0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce338f4,pc),r2
    mov 0x15,r5
    mov 0x2F,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce338da,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33830
    mov.l @(DAT_ce338f8,pc),r1
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce338fc,pc),r0
    fmov.s @r0,fr2
    mov 0x5C,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce33900,pc),r0
    bra LAB_ce3384a
    fmov.s @r0,fr2

LAB_ce33830:
    mov.l @(DAT_ce33904,pc),r1
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce33908,pc),r0
    fmov.s @r0,fr2
    mov 0x5C,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce3390c,pc),r0
    fmov.s @r0,fr2

LAB_ce3384a:
    mov 0x68,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce33910,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33914,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33864:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce338dc,pc),r0
    mov r4,r14
    mov.b @(r0,r14),r3
    mov.b r3,@r15
    mov.l @(PTR_ce33918,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce338a0
    mov.b @r15,r3
    cmp/pz r3
    bt LAB_ce338a0
    mov.b @(0x6,r14),r0
    mov 0x01,r5
    fldi0 fr3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x09,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce338f4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce338a0:
    mov.w @(DAT_ce338dc,pc),r0
    mov.b @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce338d0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x50,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce338e8,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce338d0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce338d8:
    #data 0x01a1
DAT_ce338da:
    #data 0x01d2
DAT_ce338dc:
    #data 0x0141
    #align4

PTR_ce338e0:
    #data loc_8c05218a
PTR_ce338e4:
    #data loc_8c053082
PTR_ce338e8:
    #data loc_8c2896b0
PTR_ce338ec:
    #data loc_8c056de4
PTR_ce338f0:
    #data loc_8c05115a
PTR_ce338f4:
    #data loc_8c034e8c
DAT_ce338f8:
    #data 0x42a00000
DAT_ce338fc:
    #data 0x40d55555
DAT_ce33900:
    #data 0xbdf00000
DAT_ce33904:
    #data 0xc2a00000
DAT_ce33908:
    #data 0xc0d55555
DAT_ce3390c:
    #data 0x3df00000
DAT_ce33910:
    #data 0x419a4924
DAT_ce33914:
    #data 0xbf4db6db
PTR_ce33918:
    #data loc_8c034dee

;=============================================

LAB_ce3391c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33a4c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce33a44,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce3397a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x34,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33a44,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33a46,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33a50,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33a48,pc),r0
    mov 0x00,r2
    fldi0 fr4
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33a54,pc),r3
    mov 0x0E,r6
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33a58,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3397a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33980:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33a4c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3399a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33a5c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3399a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce339a2:
    mov r4,r3
    mov.l @(PTR_ce33a60,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce339b4:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x31,r3
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33a44,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33a4a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33a64,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33a54,pc),r2
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
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33a10:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33a4c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33a2a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33a5c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33a2a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33a32:
    mov r4,r3
    mov.l @(PTR_ce33a68,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a44:
    #data 0x041c
DAT_ce33a46:
    #data 0x01fc
DAT_ce33a48:
    #data 0x01f9
DAT_ce33a4a:
    #data 0x01a1
    #align4

PTR_ce33a4c:
    #data loc_8c034dee
PTR_ce33a50:
    #data loc_8c04223a
PTR_ce33a54:
    #data loc_8c034e8c
PTR_ce33a58:
    #data loc_8c0511b4
PTR_ce33a5c:
    #data loc_8c051648
PTR_ce33a60:
    #data PTR_ce34828
PTR_ce33a64:
    #data loc_8c2896b0
PTR_ce33a68:
    #data PTR_ce34830

;=============================================

LAB_ce33a6c:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce33bb4,pc),r3
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
    mov.w @(DAT_ce33ba0,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33ba2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33bb8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33bbc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33ba4,pc),r0
    mov 0x52,r2
    mov.l @(PTR_ce33bc0,pc),r3
    mov 0x33,r6
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
    mov.l @(PTR_ce33bc4,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33ae2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33bc8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33b02
    mov.l @(PTR_ce33bcc,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33b02:
    mov.w @(DAT_ce33ba6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33b22
    mov 0x00,r3
    fldi0 fr3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33bd0,pc),r0
    fmov.s fr3,@r15
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce33bd4,pc),r3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce33b22:
    mov.w @(DAT_ce33ba8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33b3e
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.l @(PTR_ce33bd8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33bdc,pc),r2
    mov 0x20,r5
    jsr @r2
    mov r14,r4

LAB_ce33b3e:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33b46:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33ba0,pc),r1
    mov.l @(PTR_ce33be0,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce33b5e:
    mov.w @(DAT_ce33baa,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33bac,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33c16
    mov.w @(DAT_ce33bae,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33be8
    mov.w @(DAT_ce33bb0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33be8
    mov.l @(PTR_ce33be4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33c16
    mov r0,r4
    bra LAB_ce33c08
    mov 0x00,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33ba0:
    #data 0x01f9
DAT_ce33ba2:
    #data 0x041c
DAT_ce33ba4:
    #data 0x01a1
DAT_ce33ba6:
    #data 0x0141
DAT_ce33ba8:
    #data 0x0140
DAT_ce33baa:
    #data 0x01fa
DAT_ce33bac:
    #data 0x0c00
DAT_ce33bae:
    #data 0x01fe
DAT_ce33bb0:
    #data 0x01a3
    #align4

PTR_ce33bb4:
    #data loc_8c035162
PTR_ce33bb8:
    #data loc_8c05218a
PTR_ce33bbc:
    #data loc_8c05115a
PTR_ce33bc0:
    #data loc_8c2896b0
PTR_ce33bc4:
    #data loc_8c034e8c
PTR_ce33bc8:
    #data loc_8c034dee
PTR_ce33bcc:
    #data loc_8c051648
DAT_ce33bd0:
    #data 0x432b6db6
PTR_ce33bd4:
    #data loc_8c050ea4
PTR_ce33bd8:
    #data loc_8c04223a
PTR_ce33bdc:
    #data loc_8c042008
PTR_ce33be0:
    #data PTR_ce34838
PTR_ce33be4:
    #data loc_8c045790

;=============================================

LAB_ce33be8:
    mov.w @(DAT_ce33d16,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33c16
    mov.w @(DAT_ce33d18,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33c16
    mov.l @(PTR_ce33d28,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33c16
    mov r0,r4
    mov 0x01,r2

LAB_ce33c08:
    mov.w @(DAT_ce33d1a,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33c16:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33c1e:
    rts
    mov 0x00,r0

LAB_ce33c22:
    mov.w @(DAT_ce33d1c,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33d1e,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33c7c
    mov.w @(DAT_ce33d16,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33c7c
    mov.w @(DAT_ce33d18,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33c7c
    mova @(DAT_ce33d2c,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce33c7c
    mov.l @(PTR_ce33d28,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33c7c
    mov r0,r4
    mov.w @(DAT_ce33d1a,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33c7c:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33c84:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33d1a,pc),r1
    mov.l @(PTR_ce33d30,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce33c9c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33d20,pc),r0
    mov 0x0A,r3
    mov r4,r14
    mov 0x05,r6
    mov.b r3,@(r0,r14)
    mov r6,r5
    mov.l @(PTR_ce33d34,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33d22,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.w @(DAT_ce33d24,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)
    add 0x28,r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce33d26,pc),r1
    extu.w r2,r2
    tst r1,r2
    bt LAB_ce33ce4
    mov.w @(DAT_ce33d22,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.w @(DAT_ce33d24,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)

LAB_ce33ce4:
    mova @(DAT_ce33d38,pc),r0
    mov.l @(PTR_ce33d40,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33d3c,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33d44,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33d48,pc),r3
    mov 0x00,r0
    mov 0x0F,r5
    mov.b r0,@(0x6,r14)
    mov 0x02,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33d16:
    #data 0x01fe
DAT_ce33d18:
    #data 0x01a3
DAT_ce33d1a:
    #data 0x01f7
DAT_ce33d1c:
    #data 0x01fa
DAT_ce33d1e:
    #data 0x0c00
DAT_ce33d20:
    #data 0x01a0
DAT_ce33d22:
    #data 0x0130
DAT_ce33d24:
    #data 0x01d2
DAT_ce33d26:
    #data 0x0400
    #align4

PTR_ce33d28:
    #data loc_8c045790
DAT_ce33d2c:
    #data 0x43092492
PTR_ce33d30:
    #data PTR_ce34848
PTR_ce33d34:
    #data loc_8c02fec4
DAT_ce33d38:
    #data 0xc2a00000
DAT_ce33d3c:
    #data 0x431e9249
PTR_ce33d40:
    #data loc_8c103660
PTR_ce33d44:
    #data loc_8c056f2a
PTR_ce33d48:
    #data loc_8c034e8c

;=============================================

LAB_ce33d4c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33e7c,pc),r0
    mov 0x0A,r3
    mov r4,r14
    mov 0x05,r6
    mov.b r3,@(r0,r14)
    mov r6,r5
    mov.l @(PTR_ce33e8c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33e7e,pc),r0
    mov.w @(DAT_ce33e80,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce33d82
    mov.w @(DAT_ce33e82,pc),r0
    mov 0x01,r2
    mov.w @(r0,r14),r1
    xor r2,r1
    mov.w r1,@(r0,r14)
    mov.w @(DAT_ce33e84,pc),r0
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)

LAB_ce33d82:
    mova @(DAT_ce33e90,pc),r0
    mov.l @(PTR_ce33e98,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33e94,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33e9c,pc),r3
    mov 0x00,r0
    mov 0x0F,r5
    mov.b r0,@(0x6,r14)
    mov r0,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33ea0,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33db4:
    mov 0x00,r0
    mov.b r0,@(0x6,r4)
    mov 0x0A,r3
    mov.w @(DAT_ce33e7c,pc),r0
    mov 0x05,r6
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce33e8c,pc),r3
    jmp @r3
    mov r6,r5

LAB_ce33dc6:
    mov.w @(DAT_ce33e86,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33ea4,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33de4:
    mov r4,r3
    mov.l @(PTR_ce33ea8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33df6:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    rts
    fmov fr4,@(r0,r4)

LAB_ce33e10:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33eac,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33e2a
    lds.l @r15+,PR
    mov.l @(PTR_ce33eb0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33e2a:
    mov.w @(DAT_ce33e88,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33e76
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33e88,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33e8a,pc),r0
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
    add 0x0A,r0
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r3)
    add 0xF6,r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov 0x21,r2
    mov.b r2,@(r0,r3)
    add 0x27,r0
    mov.l @(r0,r14),r3
    add 0x31,r0
    mov 0x02,r2
    mov.b r2,@(r0,r3)
    lds.l @r15+,PR
    mov.l @(PTR_ce33eb4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33e76:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33e7c:
    #data 0x01a0
DAT_ce33e7e:
    #data 0x01fa
DAT_ce33e80:
    #data 0x0400
DAT_ce33e82:
    #data 0x0130
DAT_ce33e84:
    #data 0x01d2
DAT_ce33e86:
    #data 0x01ea
DAT_ce33e88:
    #data 0x0141
DAT_ce33e8a:
    #data 0x01c8
    #align4

PTR_ce33e8c:
    #data loc_8c02fec4
DAT_ce33e90:
    #data 0xc1d55555
DAT_ce33e94:
    #data 0x42cdb6db
PTR_ce33e98:
    #data loc_8c103660
PTR_ce33e9c:
    #data loc_8c034e8c
PTR_ce33ea0:
    #data loc_8c056f2a
PTR_ce33ea4:
    #data PTR_ce34858
PTR_ce33ea8:
    #data PTR_ce34868
PTR_ce33eac:
    #data loc_8c034dee
PTR_ce33eb0:
    #data loc_8c051648
PTR_ce33eb4:
    #data loc_8c02fd26

;=============================================

LAB_ce33eb8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33fb8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33fb2,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce33eda
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33fb4,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)

LAB_ce33eda:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33ee0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33fb8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33efa
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33fbc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33efa:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33f02:
    mov r4,r3
    mov.l @(PTR_ce33fc0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33f14:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33fb4,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce33f28
    mova @(DAT_ce33fc4,pc),r0
    bra LAB_ce33f2c
    fmov.s @r0,fr3

LAB_ce33f28:
    mova @(DAT_ce33fc8,pc),r0
    fmov.s @r0,fr3

LAB_ce33f2c:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fldi0 fr3
    mov 0x02,r3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce33fcc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce33fd0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce33fb6,pc),r0
    rts
    mov.b r3,@(r0,r4)

LAB_ce33f4e:
    mov.w @(DAT_ce33fb2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    cmp/pl r3
    bt LAB_ce33f6a
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce33f6a:
    mov 0x68,r1
    mov.l @(PTR_ce33fb8,pc),r3
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
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33fd8
    mova @(DAT_ce33fd0,pc),r0
    mov.l @(PTR_ce33fd4,pc),r3
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33fb2:
    #data 0x0141
DAT_ce33fb4:
    #data 0x01d2
DAT_ce33fb6:
    #data 0x01f9
    #align4

PTR_ce33fb8:
    #data loc_8c034dee
PTR_ce33fbc:
    #data loc_8c051648
PTR_ce33fc0:
    #data PTR_ce34878
DAT_ce33fc4:
    #data 0x40d55555
DAT_ce33fc8:
    #data 0xc0d55555
DAT_ce33fcc:
    #data 0x41cdb6db
DAT_ce33fd0:
    #data 0xbf4db6db
PTR_ce33fd4:
    #data loc_8c05176e

;=============================================

LAB_ce33fd8:
    mov.w @(DAT_ce3409e,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce34028
    mov 0x00,r2
    mov.w @(DAT_ce340a2,pc),r1
    mov.b r2,@(r0,r14)
    mov 0x01,r2
    mov.w @(DAT_ce340a0,pc),r0
    fldi0 fr3
    mov.l @(r0,r14),r3
    add 0xEC,r0
    mov.l r14,@(r0,r3)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0x2E,r0
    mov.b r2,@(r0,r3)
    add 0xD2,r0
    mov.l @(r0,r14),r3
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov 0x20,r2
    add r3,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce340a0,pc),r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov.b r2,@(r0,r3)
    add 0x27,r0
    mov.l @(r0,r14),r3
    add 0x31,r0
    mov 0x02,r2
    mov.b r2,@(r0,r3)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce340a4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34028:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3402e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce340a8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34048
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce340ac,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34048:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce34050:
    mov r4,r3
    mov.l @(PTR_ce340b0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34062:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce340a2,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce34076
    mova @(DAT_ce340b4,pc),r0
    bra LAB_ce3407a
    fmov.s @r0,fr3

LAB_ce34076:
    mova @(DAT_ce340b8,pc),r0
    fmov.s @r0,fr3

LAB_ce3407a:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r4)
    mov 0x6C,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce3409a
    mov.l @(DAT_ce340bc,pc),r1
    fmov.s @(r0,r4),fr1
    lds r1,FPUL
    fsts FPUL,fr2
    fdiv fr2,fr1
    fneg fr1
    fmov fr1,@(r0,r4)

LAB_ce3409a:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3409e:
    #data 0x0141
DAT_ce340a0:
    #data 0x01c8
DAT_ce340a2:
    #data 0x01d2
    #align4

PTR_ce340a4:
    #data loc_8c02fd26
PTR_ce340a8:
    #data loc_8c034dee
PTR_ce340ac:
    #data loc_8c051648
PTR_ce340b0:
    #data PTR_ce34884
DAT_ce340b4:
    #data 0x41055555
DAT_ce340b8:
    #data 0xc1055555
DAT_ce340bc:
    #data 0x40892492

;=============================================

LAB_ce340c0:
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
    mov.w @(DAT_ce341f2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce34128
    fldi0 fr15
    mov.l @(PTR_ce341fc,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce34128
    mov 0x60,r0
    mov.l @(PTR_ce34200,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    mov 0x34,r5
    fmov fr15,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce34128:
    mov.l @(PTR_ce34204,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce341f4,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce34158
    mov.w @(DAT_ce341f2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3414c
    lds.l @r15+,PR
    mov.l @(PTR_ce34208,pc),r2
    mov r14,r4
    fmov.s @r15+,fr15
    jmp @r2
    mov.l @r15+,r14

LAB_ce3414c:
    lds.l @r15+,PR
    mov.l @(PTR_ce3420c,pc),r2
    mov r14,r4
    fmov.s @r15+,fr15
    jmp @r2
    mov.l @r15+,r14

LAB_ce34158:
    mov.w @(DAT_ce341f4,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce341a4
    mov 0x00,r2
    mov.w @(DAT_ce341f8,pc),r1
    mov.b r2,@(r0,r14)
    mov 0x01,r2
    mov.w @(DAT_ce341f6,pc),r0
    mov.l @(r0,r14),r3
    add 0xEC,r0
    mov.l r14,@(r0,r3)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0x2E,r0
    mov.b r2,@(r0,r3)
    add 0xD2,r0
    mov.l @(r0,r14),r3
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov 0x20,r2
    add r3,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce341f6,pc),r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov.b r2,@(r0,r3)
    add 0x58,r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce34210,pc),r3
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce341a4:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce341ac:
    mov r4,r3
    mov.l @(PTR_ce34214,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce341be:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    rts
    fmov fr4,@(r0,r4)

LAB_ce341d8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34204,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34218
    lds.l @r15+,PR
    mov.l @(PTR_ce3420c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce341f2:
    #data 0x01f9
DAT_ce341f4:
    #data 0x0141
DAT_ce341f6:
    #data 0x01c8
DAT_ce341f8:
    #data 0x01d2
    #align4

PTR_ce341fc:
    #data loc_8c052ce2
PTR_ce34200:
    #data loc_8c04223a
PTR_ce34204:
    #data loc_8c034dee
PTR_ce34208:
    #data loc_8c05176e
PTR_ce3420c:
    #data loc_8c051648
PTR_ce34210:
    #data loc_8c02fd26
PTR_ce34214:
    #data PTR_ce3488c

;=============================================

LAB_ce34218:
    mov.w @(DAT_ce34360,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce342a4
    mov 0x00,r3
    mov.w @(DAT_ce34364,pc),r1
    mov.b r3,@(r0,r14)
    mov 0x01,r2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34362,pc),r0
    mov.l @(r0,r14),r3
    add 0xA8,r0
    mov.l r14,@(r0,r3)
    add 0x58,r0
    mov.l @(r0,r14),r3
    add 0xEA,r0
    mov.b r2,@(r0,r3)
    add 0x16,r0
    mov.l @(r0,r14),r3
    add 0xC6,r0
    mov.b @(r0,r14),r0
    mov 0x22,r2
    add r3,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce34362,pc),r0
    mov.l @(r0,r14),r3
    add 0x95,r0
    mov.b r2,@(r0,r3)
    mov.l @(PTR_ce3436c,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce34362,pc),r0
    mov 0x08,r3
    mov.l @(r0,r14),r1
    add 0x94,r0
    mov.b r3,@(r0,r1)
    mov.b r3,@(r0,r14)
    add 0x32,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3427e
    mova @(DAT_ce34370,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34374,pc),r0
    bra LAB_ce3428a
    fmov.s @r0,fr3

LAB_ce3427e:
    mova @(DAT_ce34378,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3437c,pc),r0
    fmov.s @r0,fr3

LAB_ce3428a:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34380,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x02,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34384,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34366,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce342a4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce342aa:
    mov.l r14,@-r15
    mov.l r8,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    fmov.s fr13,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mova @(DAT_ce34388,pc),r0
    mov r4,r14
    exts.w r5,r5
    mov.l @(PTR_ce34390,pc),r3
    lds r5,FPUL
    mov.l r6,@r15
    mov.l r7,@(0x4,r15)
    fmov.s @r0,fr15
    mov 0x22,r0
    mov.b @(r0,r14),r0
    float FPUL,fr3
    extu.b r0,r0
    neg r0,r0
    add 0x28,r0
    and 0x1F,r0
    fmov fr3,fr14
    shll8 r0
    fmul fr15,fr14
    shll2 r0
    shll r0
    mov.w r0,@(0x8,r15)
    mova @(DAT_ce3438c,pc),r0
    fmov.s @r0,fr13
    mov.w @(0x8,r15),r0
    mov.l @r15,r8
    mov.l r0,@(0xc,r15)
    jsr @r3
    mov r0,r4
    fmov fr14,fr3
    fmul fr0,fr3
    mova @(DAT_ce34394,pc),r0
    mov.l @(PTR_ce3439c,pc),r3
    fmov.s @r0,fr0
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce34398,pc),r0
    fmul fr13,fr3
    fdiv fr0,fr3
    fmov.s @r0,fr0
    fdiv fr15,fr3
    fmac fr0,fr3,fr2
    fmov.s fr2,@r8
    mov.l @(0x4,r15),r8
    jsr @r3
    mov.l @(0xc,r15),r4
    fmul fr0,fr14
    mova @(DAT_ce343a0,pc),r0
    fmov.s @r0,fr0
    mov 0x6C,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce343a4,pc),r0
    fmul fr13,fr14
    fdiv fr0,fr14
    fmov.s @r0,fr0
    fdiv fr15,fr14
    fmac fr0,fr14,fr3
    fmov.s fr3,@r8
    add 0x10,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr13
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

LAB_ce3433a:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce34368,pc),r1
    mov.l @(PTR_ce343a8,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce34352:
    mov.w @(DAT_ce3436a,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce343ac,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34360:
    #data 0x0141
DAT_ce34362:
    #data 0x020c
DAT_ce34364:
    #data 0x01d2
DAT_ce34366:
    #data 0x01f9
DAT_ce34368:
    #data 0x01f7
DAT_ce3436a:
    #data 0x01c8
    #align4

PTR_ce3436c:
    #data loc_8c02fd26
DAT_ce34370:
    #data 0x40a00000
DAT_ce34374:
    #data 0x3dd55555
DAT_ce34378:
    #data 0xc0a00000
DAT_ce3437c:
    #data 0xbdd55555
DAT_ce34380:
    #data 0x412b6db6
DAT_ce34384:
    #data 0xbf009249
DAT_ce34388:
    #data 0x43800000
DAT_ce3438c:
    #data 0x447a0000
PTR_ce34390:
    #data loc_8c11e2e0
DAT_ce34394:
    #data 0x47c35000
DAT_ce34398:
    #data 0x3fd55555
PTR_ce3439c:
    #data loc_8c11e860
DAT_ce343a0:
    #data 0x47f42400
DAT_ce343a4:
    #data 0x40092492
PTR_ce343a8:
    #data PTR_ce34894
PTR_ce343ac:
    #data loc_8c04cc1c

;=============================================

LAB_ce343b0:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34472,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce343d0
    cmp/eq 0x01,r0
    bt LAB_ce343d8
    cmp/eq 0x02,r0
    bt LAB_ce343e0
    bra LAB_ce343e6
    nop

LAB_ce343d0:
    mov.w @(DAT_ce34474,pc),r0
    mov 0x06,r3
    bra LAB_ce343e6
    mov.b r3,@(r0,r4)

LAB_ce343d8:
    mov.w @(DAT_ce34474,pc),r0
    mov 0x02,r1
    bra LAB_ce343e6
    mov.b r1,@(r0,r4)

LAB_ce343e0:
    mov.w @(DAT_ce34474,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r4)

LAB_ce343e6:
    mov.w @(DAT_ce34476,pc),r0
    mov 0x01,r1
    mov.l @(PTR_ce3447c,pc),r3
    mov.b r1,@(r0,r4)
    jmp @r3
    mov 0x1D,r5

LAB_ce343f2:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34472,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce34412
    cmp/eq 0x01,r0
    bt LAB_ce3441a
    cmp/eq 0x02,r0
    bt LAB_ce34422
    bra LAB_ce34428
    nop

LAB_ce34412:
    mov.w @(DAT_ce34474,pc),r0
    mov 0x06,r3
    bra LAB_ce34428
    mov.b r3,@(r0,r4)

LAB_ce3441a:
    mov.w @(DAT_ce34474,pc),r0
    mov 0x02,r1
    bra LAB_ce34428
    mov.b r1,@(r0,r4)

LAB_ce34422:
    mov.w @(DAT_ce34474,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r4)

LAB_ce34428:
    mov.w @(DAT_ce34476,pc),r0
    mov 0x01,r1
    mov.l @(PTR_ce3447c,pc),r3
    mov.b r1,@(r0,r4)
    jmp @r3
    mov 0x1D,r5

LAB_ce34434:
    mov 0x00,r6
    mov r6,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34472,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34456
    mov 0x01,r5
    cmp/eq 0x01,r0
    bt LAB_ce34464
    cmp/eq 0x02,r0
    bt LAB_ce34464
    bra LAB_ce34468
    nop

LAB_ce34456:
    mov.w @(DAT_ce34474,pc),r0
    mov.w @(DAT_ce34478,pc),r6
    mov.b r5,@(r0,r4)
    mov 0x22,r0
    add r4,r6
    bra LAB_ce34468
    mov.w r5,@(r0,r6)

LAB_ce34464:
    mov.w @(DAT_ce34474,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce34468:
    mov.w @(DAT_ce34476,pc),r0
    mov.l @(PTR_ce3447c,pc),r3
    mov.b r5,@(r0,r4)
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34472:
    #data 0x04c9
DAT_ce34474:
    #data 0x01e9
DAT_ce34476:
    #data 0x01a3
DAT_ce34478:
    #data 0x02a4
    #align4

PTR_ce3447c:
    #data loc_8c0530d8

;=============================================

LAB_ce34480:
    mov 0x00,r6
    mov r6,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce344be,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x01,r0
    bt/s LAB_ce344a2
    mov 0x01,r5
    cmp/eq 0x00,r0
    bt LAB_ce344a8
    cmp/eq 0x02,r0
    bt LAB_ce344a8
    bra LAB_ce344b4
    nop

LAB_ce344a2:
    mov.w @(DAT_ce344c0,pc),r0
    bra LAB_ce344b4
    mov.b r6,@(r0,r4)

LAB_ce344a8:
    mov.w @(DAT_ce344c0,pc),r0
    mov.w @(DAT_ce344c2,pc),r6
    mov.b r5,@(r0,r4)
    mov 0x22,r0
    add r4,r6
    mov.w r5,@(r0,r6)

LAB_ce344b4:
    mov.w @(DAT_ce344c4,pc),r0
    mov.l @(PTR_ce344c8,pc),r3
    mov.b r5,@(r0,r4)
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce344be:
    #data 0x04c9
DAT_ce344c0:
    #data 0x01e9
DAT_ce344c2:
    #data 0x02a4
DAT_ce344c4:
    #data 0x01a3
    #align4

PTR_ce344c8:
    #data loc_8c0530d8
DAT_ce344cc:
    #data 0x40
    #data 0x41
DAT_ce344ce:
    #data 0x44
    #data 0x45
DAT_ce344d0:
    #data 0x42
    #data 0x43
    #data 0x00
    #data 0x00
    #align4

DAT_ce344d4:
    #data 0x40f00000
DAT_ce344d8:
    #data 0x3e555555
DAT_ce344dc:
    #data 0x3f892492
DAT_ce344e0:
    #data 0xbd892492
DAT_ce344e4:
    #data 0xbf555555
DAT_ce344e8:
    #data 0xb9d55555
DAT_ce344ec:
    #data 0x419a4924
DAT_ce344f0:
    #data 0xbf892492
DAT_ce344f4:
    #data 0x40555555
DAT_ce344f8:
    #data 0x3dd55555
DAT_ce344fc:
    #data 0x414db6db
DAT_ce34500:
    #data 0xbf4db6db
DAT_ce34504:
    #data 0x38
    #data 0x38
    #data 0x34
    #data 0x38
    #data 0x36
    #data 0x37
    #data 0x35
    #data 0x38
    #data 0x32
    #data 0x39
    #data 0x33
    #data 0x38
    #data 0x38
    #data 0x38
    #data 0x38
    #data 0x38
    #align4

DAT_ce34514:
    #data 0x0000001d
    #data 0x0000001b
    #data 0x00000017
    #data 0x00000017
    #data 0x0000001d
    #data 0x0000001c
    #data 0x0000001e
    #data 0x00000017
    #data 0x00000019
    #data 0x0000001a
    #data 0x00000018
    #data 0x00000017
    #data 0x00000017
    #data 0x00000017
    #data 0x00000017
    #data 0x00000017
DAT_ce34554:
    #data 0x1d
    #data 0x10
    #data 0x00
    #data 0x00
    #data 0x1d
    #data 0x1a
    #data 0x1e
    #data 0x00
    #data 0x1d
    #data 0x1a
    #data 0x1e
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce34564:
    #data 0x00
    #data 0x10
    #data 0x00
    #data 0x00
    #data 0x08
    #data 0x0c
    #data 0x04
    #data 0x00
    #data 0x18
    #data 0x14
    #data 0x1c
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce34574:
    #data 0x01
DAT_ce34575:
    #data 0x02
DAT_ce34576:
    #data 0x03
    #data 0x00
    #data 0x02
    #data 0x03
    #data 0x00
    #data 0x01
    #data 0x03
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x06
    #data 0x06
    #data 0x0e
    #data 0x0a
    #align4

DAT_ce34584:
    #data 0x00000028
    #data 0x00000026
    #data 0x00000022
    #data 0x00000028
    #data 0x00000028
    #data 0x00000027
    #data 0x00000029
    #data 0x00000028
    #data 0x00000024
    #data 0x00000025
    #data 0x00000023
    #data 0x00000026
    #data 0x00000026
    #data 0x00000026
    #data 0x00000026
    #data 0x00000026
DAT_ce345c4:
    #data 0x46
    #data 0x46
    #data 0x48
    #data 0x46
    #data 0x4a
    #data 0x4b
    #data 0x49
    #data 0x46
    #data 0x46
    #data 0x4d
    #data 0x47
    #data 0x46
    #data 0x46
    #data 0x46
    #data 0x46
    #data 0x46
    #align4

DAT_ce345d4:
    #data 0x0003
    #data 0x8100
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce345e4:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce345f4:
    #data 0x0003
    #data 0x0000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce34604:
    #data 0x0003
    #data 0x8100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34614:
    #data 0x0005
    #data 0x0000
    #data 0x0004
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0360
    #data 0x0003
    #data 0x1000
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x0000
    #data 0x1000
    #data 0x0060
DAT_ce34638:
    #data 0x0003
    #data 0x9100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce34648:
    #data 0x0002
    #data 0x1000
    #data 0x0007
    #data 0x0000
    #data 0x0200
    #data 0x0400
    #data 0x0020
    #data 0x0004
    #data 0x1000
    #data 0x0007
    #data 0x0000
    #data 0x0200
    #data 0x0200
    #data 0x0100
    #data 0x0400
    #data 0x0020
DAT_ce34668:
    #data 0x0201
    #data 0x0200
DAT_ce3466c:
    #data 0x02ff
    #data 0x0201
DAT_ce34670:
    #data 0xffff
    #data 0x02ff
DAT_ce34674:
    #data 0x0201
    #data 0x0201
DAT_ce34678:
    #data 0x02ff
    #data 0x02ff
DAT_ce3467c:
    #data 0xffff
    #data 0xffff
DAT_ce34680:
    #data 0x0201
    #data 0x0200
DAT_ce34684:
    #data 0x02ff
    #data 0x0201
DAT_ce34688:
    #data 0xffff
    #data 0x02ff
DAT_ce3468c:
    #data 0x0201
    #data 0x0201
DAT_ce34690:
    #data 0x02ff
    #data 0x02ff
DAT_ce34694:
    #data 0xffff
    #data 0xffff
DAT_ce34698:
    #data 0x0201
    #data 0x0200
DAT_ce3469c:
    #data 0x02ff
    #data 0x0201
DAT_ce346a0:
    #data 0xffff
    #data 0x02ff
DAT_ce346a4:
    #data 0x0201
    #data 0x0201
DAT_ce346a8:
    #data 0x02ff
    #data 0x02ff
DAT_ce346ac:
    #data 0xffff
    #data 0xffff
    #align4

PTR_ce346b0:
    #data LAB_ce306c8
PTR_ce346b4:
    #data LAB_ce3001c
PTR_ce346b8:
    #data LAB_ce30744
PTR_ce346bc:
    #data LAB_ce30f12
PTR_ce346c0:
    #data LAB_ce314ac
PTR_ce346c4:
    #data LAB_ce315d8
PTR_ce346c8:
    #data LAB_ce31874
PTR_ce346cc:
    #data LAB_ce319f4
PTR_ce346d0:
    #data LAB_ce31ad0
PTR_ce346d4:
    #data LAB_ce33b46
PTR_ce346d8:
    #data LAB_ce33c84
PTR_ce346dc:
    #data LAB_ce33dc6
PTR_ce346e0:
    #data LAB_ce3433a
PTR_ce346e4:
    #data LAB_ce304ac
PTR_ce346e8:
    #data LAB_ce31712
PTR_ce346ec:
    #data LAB_ce313d4
PTR_ce346f0:
    #data LAB_ce343b0
PTR_ce346f4:
    #data LAB_ce343f2
PTR_ce346f8:
    #data LAB_ce34434
PTR_ce346fc:
    #data LAB_ce34480
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce34720:
    #data LAB_ce30758
PTR_ce34724:
    #data LAB_ce30c52
PTR_ce34728:
    #data LAB_ce30c7a
PTR_ce3472c:
    #data LAB_ce30758
PTR_ce34730:
    #data LAB_ce30f6e
PTR_ce34734:
    #data LAB_ce312c6
PTR_ce34738:
    #data LAB_ce312b0
PTR_ce3473c:
    #data LAB_ce30f60
PTR_ce34740:
    #data LAB_ce314be
PTR_ce34744:
    #data LAB_ce31544
PTR_ce34748:
    #data FUN_ce315b6
PTR_ce3474c:
    #data LAB_ce315ea
PTR_ce34750:
    #data LAB_ce31626
PTR_ce34754:
    #data LAB_ce316b8
PTR_ce34758:
    #data LAB_ce31724
PTR_ce3475c:
    #data LAB_ce3179e
PTR_ce34760:
    #data LAB_ce31840
PTR_ce34764:
    #data LAB_ce31886
PTR_ce34768:
    #data LAB_ce318ba
PTR_ce3476c:
    #data LAB_ce31958
PTR_ce34770:
    #data FUN_ce319d4
PTR_ce34774:
    #data LAB_ce31ae4
PTR_ce34778:
    #data LAB_ce31d50
PTR_ce3477c:
    #data LAB_ce3233c
PTR_ce34780:
    #data LAB_ce32658
PTR_ce34784:
    #data LAB_ce32d56
PTR_ce34788:
    #data LAB_ce339a2
PTR_ce3478c:
    #data LAB_ce3336c
PTR_ce34790:
    #data LAB_ce3373a
PTR_ce34794:
    #data LAB_ce33a32
PTR_ce34798:
    #data LAB_ce31af6
PTR_ce3479c:
    #data LAB_ce31c40
PTR_ce347a0:
    #data LAB_ce31d9c
PTR_ce347a4:
    #data LAB_ce31f10
PTR_ce347a8:
    #data LAB_ce3211c
PTR_ce347ac:
    #data LAB_ce322b6
PTR_ce347b0:
    #data FUN_ce3231a
PTR_ce347b4:
    #data LAB_ce32374
PTR_ce347b8:
    #data LAB_ce3240c
PTR_ce347bc:
    #data LAB_ce324bc
PTR_ce347c0:
    #data LAB_ce325f4
PTR_ce347c4:
    #data LAB_ce32672
PTR_ce347c8:
    #data LAB_ce32794
PTR_ce347cc:
    #data LAB_ce328b6
PTR_ce347d0:
    #data LAB_ce328f8
PTR_ce347d4:
    #data LAB_ce32974
PTR_ce347d8:
    #data FUN_ce32a2c
PTR_ce347dc:
    #data LAB_ce32d68
PTR_ce347e0:
    #data LAB_ce32e48
PTR_ce347e4:
    #data LAB_ce32e88
PTR_ce347e8:
    #data LAB_ce32f14
PTR_ce347ec:
    #data LAB_ce32f5e
PTR_ce347f0:
    #data LAB_ce3315c
PTR_ce347f4:
    #data LAB_ce3329e
PTR_ce347f8:
    #data FUN_ce33328
PTR_ce347fc:
    #data LAB_ce333b8
PTR_ce34800:
    #data LAB_ce334c0
PTR_ce34804:
    #data LAB_ce33548
PTR_ce34808:
    #data LAB_ce33588
PTR_ce3480c:
    #data LAB_ce33644
PTR_ce34810:
    #data LAB_ce336b4
PTR_ce34814:
    #data FUN_ce33718
PTR_ce34818:
    #data LAB_ce337a4
PTR_ce3481c:
    #data LAB_ce33864
PTR_ce34820:
    #data LAB_ce3391c
PTR_ce34824:
    #data FUN_ce33980
PTR_ce34828:
    #data LAB_ce339b4
PTR_ce3482c:
    #data FUN_ce33a10
PTR_ce34830:
    #data LAB_ce33a6c
PTR_ce34834:
    #data LAB_ce33ae2
PTR_ce34838:
    #data LAB_ce33b5e
PTR_ce3483c:
    #data LAB_ce33c1e
PTR_ce34840:
    #data LAB_ce33c22
PTR_ce34844:
    #data LAB_ce33b5e
PTR_ce34848:
    #data LAB_ce33c9c
PTR_ce3484c:
    #data LAB_ce33d4c
PTR_ce34850:
    #data LAB_ce33d4c
PTR_ce34854:
    #data LAB_ce33db4
PTR_ce34858:
    #data LAB_ce33de4
PTR_ce3485c:
    #data LAB_ce33f02
PTR_ce34860:
    #data LAB_ce34050
PTR_ce34864:
    #data LAB_ce341ac
PTR_ce34868:
    #data LAB_ce33df6
PTR_ce3486c:
    #data LAB_ce33e10
PTR_ce34870:
    #data LAB_ce33eb8
PTR_ce34874:
    #data FUN_ce33ee0
PTR_ce34878:
    #data LAB_ce33f14
PTR_ce3487c:
    #data LAB_ce33f4e
PTR_ce34880:
    #data FUN_ce3402e
PTR_ce34884:
    #data LAB_ce34062
PTR_ce34888:
    #data LAB_ce340c0
PTR_ce3488c:
    #data LAB_ce341be
PTR_ce34890:
    #data LAB_ce341d8
PTR_ce34894:
    #data LAB_ce34352
PTR_ce34898:
    #data LAB_ce34352
PTR_ce3489c:
    #data LAB_ce34352
PTR_ce348a0:
    #data LAB_ce34352
