;╔══════════════════════════════════════════╗
;║ S_PL11 : Jill Valentine Program          ║
;╚══════════════════════════════════════════╝

#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c045790 0x8C045790
#symbol loc_8c04598c 0x8C04598C
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c04ce3a 0x8C04CE3A
#symbol loc_8c04ce54 0x8C04CE54
#symbol loc_8c04fea8 0x8C04FEA8
#symbol loc_8c04ff88 0x8C04FF88
#symbol loc_8c050048 0x8C050048
#symbol loc_8c050084 0x8C050084
#symbol loc_8c050834 0x8C050834
#symbol loc_8c050962 0x8C050962
#symbol loc_8c050ea4 0x8C050EA4
#symbol loc_8c05115a 0x8C05115A
#symbol loc_8c0511b4 0x8C0511B4
#symbol loc_8c0511e2 0x8C0511E2
#symbol loc_8c0514b8 0x8C0514B8
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
#symbol loc_8c0559da 0x8C0559DA
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c055d54 0x8C055D54
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c059150 0x8C059150
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c05a49c 0x8C05A49C
#symbol loc_8c07574c 0x8C07574C
#symbol loc_8c076220 0x8C076220
#symbol loc_8c0778a4 0x8C0778A4
#symbol loc_8c0783e4 0x8C0783E4
#symbol loc_8c0cbdfc 0x8C0CBDFC
#symbol loc_8c0fdab6 0x8C0FDAB6
#symbol loc_8c103660 0x8C103660
#symbol loc_8c104df8 0x8C104DF8
#symbol loc_8c11e730 0x8C11E730
#symbol loc_8c1294c8 0x8C1294C8
#symbol loc_8c129728 0x8C129728
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c287ae8 0x8C287AE8
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c289608 0x8C289608
#symbol loc_8c289636 0x8C289636
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300d0,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300d4,pc),r7
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
    mov.l @(PTR_ce300d8,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    mov.l @(PTR_ce300dc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce30228
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce3031a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce3038c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce3042a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce304ac
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce3026e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce301aa
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce300f0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce3014e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce30512
    mov r14,r4
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce30552
    mov r14,r4
    tst r0,r0
    bf LAB_ce300ca
    mov.l @(PTR_ce300e8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300ec,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300ca:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300d0:
    #data 0x0428
    #align4

PTR_ce300d4:
    #data PTR_ce34c0c
PTR_ce300d8:
    #data loc_8c054508
PTR_ce300dc:
    #data loc_8c054b34
PTR_ce300e0:
    #data loc_8c05496c
PTR_ce300e4:
    #data loc_8c054d04
PTR_ce300e8:
    #data loc_8c053e00
PTR_ce300ec:
    #data loc_8c0542e0

;=============================================

FUN_ce300f0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30206,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30208,pc),r6
    add r14,r3
    mov.l @(PTR_ce30210,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30118
    mov.l @r15,r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce30122

LAB_ce30118:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30122:
    mov.w @(DAT_ce30208,pc),r5
    mov.l @(PTR_ce30218,pc),r3
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
    mov.w @(DAT_ce3020a,pc),r0
    mov.l @(PTR_ce3021c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3014e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30206,pc),r3
    mov r4,r14
    mov.w @(DAT_ce3020c,pc),r6
    add r14,r3
    mov.l @(PTR_ce30220,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30176
    mov.l @r15,r2
    mov.b @(0x1,r2),r0
    tst r0,r0
    bt LAB_ce30180

LAB_ce30176:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30180:
    mov.w @(DAT_ce3020c,pc),r5
    mov.l @(PTR_ce30218,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3020a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3021c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301aa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30206,pc),r3
    mov r4,r14
    mov.w @(DAT_ce3020e,pc),r6
    add r14,r3
    mov.l @(PTR_ce30224,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301d2
    mov.l @r15,r2
    mov.b @(0x2,r2),r0
    tst r0,r0
    bt LAB_ce301dc

LAB_ce301d2:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce301dc:
    mov.w @(DAT_ce3020e,pc),r5
    mov.l @(PTR_ce30218,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3020a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3021c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30206:
    #data 0x02a4
DAT_ce30208:
    #data 0x036c
DAT_ce3020a:
    #data 0x01e9
DAT_ce3020c:
    #data 0x0374
DAT_ce3020e:
    #data 0x037c
    #align4

PTR_ce30210:
    #data DAT_ce34b68
PTR_ce30214:
    #data loc_8c054e58
PTR_ce30218:
    #data loc_8c055c3a
PTR_ce3021c:
    #data loc_8c0530d8
PTR_ce30220:
    #data DAT_ce34b78
PTR_ce30224:
    #data DAT_ce34b88

;=============================================

FUN_ce30228:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30348,pc),r5
    mov.w @(DAT_ce30338,pc),r6
    mov.l @(PTR_ce3034c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30246
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30246:
    mov.w @(DAT_ce30338,pc),r5
    mov.l @(PTR_ce30350,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3033a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30354,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3026e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce3033c,pc),r13
    sts.l PR,@-r15
    mov.l @(PTR_ce30358,pc),r5
    add r14,r13
    mov.l @(PTR_ce3034c,pc),r3
    mov.w @(DAT_ce3033e,pc),r6
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3030e
    mov.w @(DAT_ce30340,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce302a4
    mov.w @(DAT_ce30342,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3030e
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce302a4:
    mov.w @(DAT_ce3033e,pc),r5
    mov.l @(PTR_ce30350,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30344,pc),r0
    mov 0x01,r4
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce302f0
    mov 0x00,r12
    mov r12,r0
    nop
    mov.b r0,@(0x5,r13)
    mov.b r0,@(0xe,r13)
    mov.b r0,@(0x5,r14)
    mov.w @(DAT_ce30340,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce302d2
    bra LAB_ce302d6
    mov r4,r0

LAB_ce302d2:
    mov r12,r0
    nop

LAB_ce302d6:
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x04,r3
    mov.w @(DAT_ce3033a,pc),r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30354,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce30310
    mov 0x01,r0

LAB_ce302f0:
    mov.b @(0x5,r13),r0
    tst r0,r0
    bf LAB_ce3030e
    mov r4,r0
    nop
    mov.b r0,@(0x5,r13)
    mov r12,r0
    nop
    mov.l @(PTR_ce3035c,pc),r3
    mov 0x0D,r5
    mov 0x00,r6
    mov.b r0,@(0xe,r13)
    mov.b r0,@(0x6,r13)
    jsr @r3
    mov r14,r4

LAB_ce3030e:
    mov 0x00,r0

LAB_ce30310:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3031a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30360,pc),r5
    mov.w @(DAT_ce30346,pc),r6
    mov.l @(PTR_ce3034c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30364
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30338:
    #data 0x0384
DAT_ce3033a:
    #data 0x01e9
DAT_ce3033c:
    #data 0x02a4
DAT_ce3033e:
    #data 0x038c
DAT_ce30340:
    #data 0x01f9
DAT_ce30342:
    #data 0x01d4
DAT_ce30344:
    #data 0x01a3
DAT_ce30346:
    #data 0x0394
    #align4

PTR_ce30348:
    #data DAT_ce34bb8
PTR_ce3034c:
    #data loc_8c054e58
PTR_ce30350:
    #data loc_8c055c3a
PTR_ce30354:
    #data loc_8c0530d8
PTR_ce30358:
    #data DAT_ce34b98
PTR_ce3035c:
    #data loc_8c0cbdfc
PTR_ce30360:
    #data DAT_ce34ba8

;=============================================

LAB_ce30364:
    mov.w @(DAT_ce3045a,pc),r5
    mov.l @(PTR_ce3046c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3045c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30470,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3038c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3045e,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30460,pc),r6
    add r14,r3
    mov.l @(PTR_ce30474,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce30478,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303d0
    mov.w @(DAT_ce30462,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce303d0
    mov.w @(DAT_ce30464,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce303e2
    mov.w @(DAT_ce30466,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce303da
    mov.w @(DAT_ce30468,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce303da

LAB_ce303d0:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce303da:
    mov.w @(DAT_ce30466,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce303e2:
    mov.w @(DAT_ce30460,pc),r5
    mov.l @(PTR_ce3046c,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.l @r15,r3
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r3)
    mov.b r0,@(0x5,r14)
    mov.w @(DAT_ce30464,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30406
    bra LAB_ce3040a
    mov 0x01,r0

LAB_ce30406:
    mov r4,r0
    nop

LAB_ce3040a:
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x06,r3
    mov.w @(DAT_ce3045c,pc),r0
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30470,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3042a:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce3045e,pc),r13
    sts.l PR,@-r15
    mov.w @(DAT_ce3046a,pc),r6
    add r14,r13
    mov.l @(PTR_ce3047c,pc),r5
    mov.l @(PTR_ce30478,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30456
    mov.w @(DAT_ce30462,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30456
    mov.b @(0x9,r13),r0
    tst r0,r0
    bt LAB_ce30480

LAB_ce30456:
    bra LAB_ce304a4
    mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3045a:
    #data 0x0394
DAT_ce3045c:
    #data 0x01e9
DAT_ce3045e:
    #data 0x02a4
DAT_ce30460:
    #data 0x039c
DAT_ce30462:
    #data 0x040c
DAT_ce30464:
    #data 0x01f9
DAT_ce30466:
    #data 0x01d4
DAT_ce30468:
    #data 0x01fc
DAT_ce3046a:
    #data 0x03a4
    #align4

PTR_ce3046c:
    #data loc_8c055c3a
PTR_ce30470:
    #data loc_8c0530d8
PTR_ce30474:
    #data DAT_ce34bcc
PTR_ce30478:
    #data loc_8c054e58
PTR_ce3047c:
    #data DAT_ce34bdc

;=============================================

LAB_ce30480:
    mov.w @(DAT_ce3058c,pc),r5
    mov.l @(PTR_ce30598,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r13)
    mov 0x07,r3
    mov.b r0,@(0x5,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3058e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3059c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0

LAB_ce304a4:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304ac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30590,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30592,pc),r6
    add r14,r3
    mov.l @(PTR_ce305a0,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce305a4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304d6
    mov.w @(DAT_ce30594,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304e0

LAB_ce304d6:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce304e0:
    mov.w @(DAT_ce30592,pc),r5
    mov.l @(PTR_ce30598,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r2)
    mov 0x08,r3
    mov.b r0,@(0x5,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3058e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3059c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30512:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce305a8,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce3052a
    mov.w @(DAT_ce30594,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30532

LAB_ce3052a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30532:
    mov.w @(DAT_ce3058e,pc),r0
    mov 0x0B,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce3059c,pc),r3
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

FUN_ce30552:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305ac,pc),r3
    jsr @r3
    mov 0x0A,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3056c
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3056c:
    mov.w @(DAT_ce3058e,pc),r0
    mov 0x0A,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce3059c,pc),r3
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

DAT_ce3058c:
    #data 0x03a4
DAT_ce3058e:
    #data 0x01e9
DAT_ce30590:
    #data 0x02a4
DAT_ce30592:
    #data 0x03ac
DAT_ce30594:
    #data 0x040c
    #align4

PTR_ce30598:
    #data loc_8c055c3a
PTR_ce3059c:
    #data loc_8c0530d8
PTR_ce305a0:
    #data DAT_ce34bfc
PTR_ce305a4:
    #data loc_8c054e58
PTR_ce305a8:
    #data loc_8c054d1c
PTR_ce305ac:
    #data loc_8c054da0

;=============================================

LAB_ce305b0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce305dc
    mov r4,r14
    tst r0,r0
    bf LAB_ce305cc
    bsr FUN_ce3061c
    mov r14,r4
    tst r0,r0
    bf LAB_ce305cc
    bsr FUN_ce30652
    mov r14,r4
    tst r0,r0
    bt LAB_ce305d4

LAB_ce305cc:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce305d4:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce305dc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30694,pc),r5
    mov.w @(DAT_ce30688,pc),r6
    mov.l @(PTR_ce30698,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30606
    mov.w @(DAT_ce3068a,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30606
    mov.w @(DAT_ce3068c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3060e

LAB_ce30606:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3060e:
    mov.w @(DAT_ce3068e,pc),r0
    mov 0x06,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3061c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3069c,pc),r5
    mov.w @(DAT_ce30690,pc),r6
    mov.l @(PTR_ce30698,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3063c
    mov.w @(DAT_ce3068a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30644

LAB_ce3063c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30644:
    mov.w @(DAT_ce3068e,pc),r0
    mov 0x07,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30652:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306a0,pc),r5
    mov.w @(DAT_ce30692,pc),r6
    mov.l @(PTR_ce30698,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30672
    mov.w @(DAT_ce3068a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3067a

LAB_ce30672:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3067a:
    mov.w @(DAT_ce3068e,pc),r0
    mov 0x08,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30688:
    #data 0x039c
DAT_ce3068a:
    #data 0x040c
DAT_ce3068c:
    #data 0x01f9
DAT_ce3068e:
    #data 0x0258
DAT_ce30690:
    #data 0x03a4
DAT_ce30692:
    #data 0x03ac
    #align4

PTR_ce30694:
    #data DAT_ce34bcc
PTR_ce30698:
    #data loc_8c054e58
PTR_ce3069c:
    #data DAT_ce34bdc
PTR_ce306a0:
    #data DAT_ce34bfc

;=============================================

LAB_ce306a4:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3079a,pc),r4
    mov.l r13,@-r15
    add r14,r4
    sts.l PR,@-r15
    mov.b @(0x5,r4),r0
    tst r0,r0
    bt LAB_ce30736
    mov.w @(DAT_ce3079c,pc),r0
    mov.w @(DAT_ce3079e,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce306ea
    mov 0x00,r13
    mov.b @(0x6,r4),r0
    mov 0x64,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    add 0xFF,r0
    extu.b r0,r0
    cmp/ge r3,r0
    bf LAB_ce30736
    mov r13,r0
    nop
    mov.b r0,@(0x6,r4)
    mov 0x30,r1
    mov.b @(0xe,r4),r0
    cmp/ge r1,r0
    bt LAB_ce30736
    mov.b @(0xe,r4),r0
    add 0x01,r0
    bra LAB_ce30736
    mov.b r0,@(0xe,r4)

LAB_ce306ea:
    mov r13,r0
    nop
    mov.l @(PTR_ce307a8,pc),r3
    mov.b r0,@(0x5,r4)
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30736
    mov r13,r0
    nop
    mov.b r0,@(0x5,r14)
    mov.w @(DAT_ce307a0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce30712
    mov 0x01,r4
    bra LAB_ce30716
    mov r4,r0

LAB_ce30712:
    mov r13,r0
    nop

LAB_ce30716:
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x04,r3
    mov.w @(DAT_ce307a2,pc),r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0xBA,r0
    mov.l @(PTR_ce307ac,pc),r3
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30736:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3073e:
    mov.w @(DAT_ce307a4,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce307b0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30752:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce307b4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce307a6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30780
    mov.w @(DAT_ce307a0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30778
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce309dc
    mov.l @r15+,r14

LAB_ce30778:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30930
    mov.l @r15+,r14

LAB_ce30780:
    mov.w @(DAT_ce307a0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30792
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30860
    mov.l @r15+,r14

LAB_ce30792:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307b8
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3079a:
    #data 0x02a4
DAT_ce3079c:
    #data 0x0340
DAT_ce3079e:
    #data 0x0100
DAT_ce307a0:
    #data 0x01f9
DAT_ce307a2:
    #data 0x01e9
DAT_ce307a4:
    #data 0x01ff
DAT_ce307a6:
    #data 0x01fe
    #align4

PTR_ce307a8:
    #data loc_8c0559da
PTR_ce307ac:
    #data loc_8c0530d8
PTR_ce307b0:
    #data PTR_ce34c7c
PTR_ce307b4:
    #data loc_8c052b4c

;=============================================

LAB_ce307b8:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce308bc,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce308c8,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307de
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307f8
    cmp/eq 0x02,r0
    bt LAB_ce30812
    bra LAB_ce3082c
    nop

LAB_ce307de:
    mov.w @(DAT_ce308be,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308c0,pc),r0
    mov.l @(PTR_ce308cc,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308c2,pc),r0
    bra LAB_ce3082c
    mov.b r13,@(r0,r14)

LAB_ce307f8:
    mov.w @(DAT_ce308be,pc),r0
    mov 0x01,r11
    mov 0x15,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308c0,pc),r0
    mov.l @(PTR_ce308d0,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30828
    nop

LAB_ce30812:
    mov.w @(DAT_ce308be,pc),r0
    mov 0x02,r11
    mov 0x16,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308c0,pc),r0
    mov.l @(PTR_ce308d4,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30828:
    mov.w @(DAT_ce308c2,pc),r0
    mov.b r11,@(r0,r14)

LAB_ce3082c:
    mov.w @(DAT_ce308c4,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce308d8,pc),r3
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
    mov.w @(DAT_ce308be,pc),r0
    mov.l @(PTR_ce308dc,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30860:
    mov.w @(DAT_ce308bc,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce308c8,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30884
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce308a0
    cmp/eq 0x02,r0
    bt LAB_ce308e0
    bra LAB_ce308fe
    nop

LAB_ce30884:
    mov.w @(DAT_ce308be,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308c0,pc),r0
    mov.l @(PTR_ce308cc,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308c2,pc),r0
    bra LAB_ce308fe
    mov.b r13,@(r0,r14)

LAB_ce308a0:
    mov.w @(DAT_ce308be,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308c0,pc),r0
    mov.l @(PTR_ce308d0,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce308fa
    mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308bc:
    #data 0x01e8
DAT_ce308be:
    #data 0x0158
DAT_ce308c0:
    #data 0x03f4
DAT_ce308c2:
    #data 0x01a7
DAT_ce308c4:
    #data 0x01ac
    #align4

PTR_ce308c8:
    #data loc_8c04223a
PTR_ce308cc:
    #data DAT_ce34b20
PTR_ce308d0:
    #data DAT_ce34b24
PTR_ce308d4:
    #data DAT_ce34b28
PTR_ce308d8:
    #data loc_8c2896b0
PTR_ce308dc:
    #data loc_8c034e8c

;=============================================

LAB_ce308e0:
    mov.w @(DAT_ce30a00,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a02,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30a0c,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce308fa:
    mov.w @(DAT_ce30a04,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce308fe:
    mov.w @(DAT_ce30a06,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30a10,pc),r3
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
    mov.w @(DAT_ce30a00,pc),r0
    mov.l @(PTR_ce30a14,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30930:
    mov.w @(DAT_ce30a08,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30a18,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30954
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30970
    cmp/eq 0x02,r0
    bt LAB_ce3098c
    bra LAB_ce309aa
    nop

LAB_ce30954:
    mov.w @(DAT_ce30a00,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a02,pc),r0
    mov.l @(PTR_ce30a1c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30a04,pc),r0
    bra LAB_ce309aa
    mov.b r13,@(r0,r14)

LAB_ce30970:
    mov.w @(DAT_ce30a00,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a02,pc),r0
    mov.l @(PTR_ce30a20,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce309a6
    mov 0x01,r2

LAB_ce3098c:
    mov.w @(DAT_ce30a00,pc),r0
    mov 0x02,r1
    mov 0x05,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a02,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30a24,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce309a6:
    mov.w @(DAT_ce30a04,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce309aa:
    mov.w @(DAT_ce30a06,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce30a10,pc),r3
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
    mov.w @(DAT_ce30a00,pc),r0
    mov.l @(PTR_ce30a14,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce309dc:
    mov.w @(DAT_ce30a08,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30a18,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a28
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a44
    cmp/eq 0x02,r0
    bt LAB_ce30a60
    bra LAB_ce30a7e
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a00:
    #data 0x0158
DAT_ce30a02:
    #data 0x03f4
DAT_ce30a04:
    #data 0x01a7
DAT_ce30a06:
    #data 0x01ac
DAT_ce30a08:
    #data 0x01e8
    #align4

PTR_ce30a0c:
    #data DAT_ce34b28
PTR_ce30a10:
    #data loc_8c2896b0
PTR_ce30a14:
    #data loc_8c034e8c
PTR_ce30a18:
    #data loc_8c04223a
PTR_ce30a1c:
    #data DAT_ce34b2c
PTR_ce30a20:
    #data DAT_ce34b30
PTR_ce30a24:
    #data DAT_ce34b34

;=============================================

LAB_ce30a28:
    mov.w @(DAT_ce30b2e,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b30,pc),r0
    mov.l @(PTR_ce30b40,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30b32,pc),r0
    bra LAB_ce30a7e
    mov.b r13,@(r0,r14)

LAB_ce30a44:
    mov.w @(DAT_ce30b2e,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b30,pc),r0
    mov.l @(PTR_ce30b44,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30a7a
    mov 0x01,r2

LAB_ce30a60:
    mov.w @(DAT_ce30b2e,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b30,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30b48,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30a7a:
    mov.w @(DAT_ce30b32,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30a7e:
    mov.w @(DAT_ce30b34,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30b4c,pc),r3
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
    mov.w @(DAT_ce30b2e,pc),r0
    mov.l @(PTR_ce30b50,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30ab0:
    mov.w @(DAT_ce30b36,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30ac0
    mov.w @(DAT_ce30b38,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30ad0

LAB_ce30ac0:
    mov.w @(DAT_ce30b36,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30ad4
    mov.w @(DAT_ce30b38,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30ad4

LAB_ce30ad0:
    bra LAB_ce30ad8
    nop

LAB_ce30ad4:
    rts
    nop

LAB_ce30ad8:
    mov.w @(DAT_ce30b36,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30ae6
    bra LAB_ce30c06
    nop

LAB_ce30ae6:
    bra LAB_ce30aea
    nop

LAB_ce30aea:
    mov.w @(DAT_ce30b3a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b54,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30b0e
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30b68
    cmp/eq 0x02,r0
    bt LAB_ce30b94
    bra LAB_ce30bc2
    nop

LAB_ce30b0e:
    mov.w @(DAT_ce30b2e,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b3c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b5c
    mov.w @(DAT_ce30b30,pc),r0
    mov.l @(PTR_ce30b58,pc),r3
    bra LAB_ce30b62
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b2e:
    #data 0x0158
DAT_ce30b30:
    #data 0x03f4
DAT_ce30b32:
    #data 0x01a7
DAT_ce30b34:
    #data 0x01ac
DAT_ce30b36:
    #data 0x01fe
DAT_ce30b38:
    #data 0x01d6
DAT_ce30b3a:
    #data 0x01e8
DAT_ce30b3c:
    #data 0x01fc
    #align4

PTR_ce30b40:
    #data DAT_ce34b2c
PTR_ce30b44:
    #data DAT_ce34b30
PTR_ce30b48:
    #data DAT_ce34b34
PTR_ce30b4c:
    #data loc_8c2896b0
PTR_ce30b50:
    #data loc_8c034e8c
PTR_ce30b54:
    #data loc_8c04223a
PTR_ce30b58:
    #data DAT_ce34b38

;=============================================

LAB_ce30b5c:
    mov.w @(DAT_ce30c56,pc),r0
    mov.l @(PTR_ce30c64,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b62:
    mov.w @(DAT_ce30c58,pc),r0
    bra LAB_ce30bc2
    mov.b r13,@(r0,r14)

LAB_ce30b68:
    mov.w @(DAT_ce30c5a,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c5c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b8a
    mov.w @(DAT_ce30c56,pc),r0
    mov.l @(PTR_ce30c68,pc),r3
    bra LAB_ce30b90
    mov.l r3,@(r0,r14)

LAB_ce30b8a:
    mov.w @(DAT_ce30c56,pc),r0
    mov.l @(PTR_ce30c6c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b90:
    bra LAB_ce30bbe
    mov 0x01,r3

LAB_ce30b94:
    mov.w @(DAT_ce30c5a,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c5c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30bb6
    mov.w @(DAT_ce30c56,pc),r0
    mov.l @(PTR_ce30c70,pc),r3
    bra LAB_ce30bbc
    mov.l r3,@(r0,r14)

LAB_ce30bb6:
    mov.w @(DAT_ce30c56,pc),r0
    mov.l @(PTR_ce30c74,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30bbc:
    mov 0x02,r3

LAB_ce30bbe:
    mov.w @(DAT_ce30c58,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30bc2:
    mov.w @(DAT_ce30c5e,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30c78,pc),r3
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
    mov.w @(DAT_ce30c5a,pc),r0
    mov.l @(PTR_ce30c7c,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30c60,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30bfc
    mov.w @(DAT_ce30c60,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30bfc:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30c06:
    mov.w @(DAT_ce30c62,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30c80,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30c2a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30c8c
    cmp/eq 0x02,r0
    bt LAB_ce30cb8
    bra LAB_ce30ce6
    nop

LAB_ce30c2a:
    mov.w @(DAT_ce30c5a,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c5c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c4a
    mov.w @(DAT_ce30c56,pc),r0
    mov.l @(PTR_ce30c84,pc),r3
    bra LAB_ce30c50
    mov.l r3,@(r0,r14)

LAB_ce30c4a:
    mov.w @(DAT_ce30c56,pc),r0
    mov.l @(PTR_ce30c88,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c50:
    mov.w @(DAT_ce30c58,pc),r0
    bra LAB_ce30ce6
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c56:
    #data 0x03f4
DAT_ce30c58:
    #data 0x01a7
DAT_ce30c5a:
    #data 0x0158
DAT_ce30c5c:
    #data 0x01fc
DAT_ce30c5e:
    #data 0x01ac
DAT_ce30c60:
    #data 0x01d6
DAT_ce30c62:
    #data 0x01e8
    #align4

PTR_ce30c64:
    #data DAT_ce34b50
PTR_ce30c68:
    #data DAT_ce34b3c
PTR_ce30c6c:
    #data DAT_ce34b54
PTR_ce30c70:
    #data DAT_ce34b40
PTR_ce30c74:
    #data DAT_ce34b58
PTR_ce30c78:
    #data loc_8c2896b0
PTR_ce30c7c:
    #data loc_8c034e8c
PTR_ce30c80:
    #data loc_8c04223a
PTR_ce30c84:
    #data DAT_ce34b44
PTR_ce30c88:
    #data DAT_ce34b5c

;=============================================

LAB_ce30c8c:
    mov.w @(DAT_ce30db4,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30db6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30cae
    mov.w @(DAT_ce30db8,pc),r0
    mov.l @(PTR_ce30dc8,pc),r3
    bra LAB_ce30cb4
    mov.l r3,@(r0,r14)

LAB_ce30cae:
    mov.w @(DAT_ce30db8,pc),r0
    mov.l @(PTR_ce30dcc,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30cb4:
    bra LAB_ce30ce2
    mov 0x01,r3

LAB_ce30cb8:
    mov.w @(DAT_ce30db4,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30db6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30cda
    mov.w @(DAT_ce30db8,pc),r0
    mov.l @(PTR_ce30dd0,pc),r3
    bra LAB_ce30ce0
    mov.l r3,@(r0,r14)

LAB_ce30cda:
    mov.w @(DAT_ce30db8,pc),r0
    mov.l @(PTR_ce30dd4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30ce0:
    mov 0x02,r3

LAB_ce30ce2:
    mov.w @(DAT_ce30dba,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30ce6:
    mov.w @(DAT_ce30dbc,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30dd8,pc),r3
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
    mov.w @(DAT_ce30db4,pc),r0
    mov.l @(PTR_ce30ddc,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30dbe,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30d20
    mov.w @(DAT_ce30dbe,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30d20:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30d2a:
    mov.w @(DAT_ce30dc0,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30de0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30d3e:
    sts.l PR,@-r15
    mov.l @(PTR_ce30de4,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30d4c:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30de8,pc),r3
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
    mov.w @(DAT_ce30dc2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30dec
    mov.w @(DAT_ce30dc4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30dac
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30f04
    mov.l @r15+,r14

LAB_ce30dac:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30ecc
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30db4:
    #data 0x0158
DAT_ce30db6:
    #data 0x01fc
DAT_ce30db8:
    #data 0x03f4
DAT_ce30dba:
    #data 0x01a7
DAT_ce30dbc:
    #data 0x01ac
DAT_ce30dbe:
    #data 0x01d6
DAT_ce30dc0:
    #data 0x01ff
DAT_ce30dc2:
    #data 0x01fe
DAT_ce30dc4:
    #data 0x01f9
    #align4

PTR_ce30dc8:
    #data DAT_ce34b48
PTR_ce30dcc:
    #data DAT_ce34b60
PTR_ce30dd0:
    #data DAT_ce34b4c
PTR_ce30dd4:
    #data DAT_ce34b64
PTR_ce30dd8:
    #data loc_8c2896b0
PTR_ce30ddc:
    #data loc_8c034e8c
PTR_ce30de0:
    #data PTR_ce34c8c
PTR_ce30de4:
    #data loc_8c0511e2
PTR_ce30de8:
    #data loc_8c052c84

;=============================================

LAB_ce30dec:
    mov.w @(DAT_ce30eb2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30dfe
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e3e
    mov.l @r15+,r14

LAB_ce30dfe:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e06
    mov.l @r15+,r14

LAB_ce30e06:
    mov.w @(DAT_ce30eb4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30e22
    cmp/eq 0x01,r0
    bt LAB_ce30e22
    cmp/eq 0x02,r0
    bt LAB_ce30e22
    bra LAB_ce30e38
    nop

LAB_ce30e22:
    mov.l @(PTR_ce30ebc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e38
    lds.l @r15+,PR
    mov.l @(PTR_ce30ec0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e38:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e3e:
    mov.w @(DAT_ce30eb4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30e5a
    cmp/eq 0x00,r0
    bt LAB_ce30e96
    cmp/eq 0x01,r0
    bt LAB_ce30e96
    bra LAB_ce30eac
    nop

LAB_ce30e5a:
    mov.l @(PTR_ce30ebc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30ea2
    mov.w @(DAT_ce30eb6,pc),r0
    fldi0 fr3
    mov.b @(r0,r14),r3
    lds r3,FPUL
    float FPUL,fr4
    fcmp/eq fr3,fr4
    bt LAB_ce30eac
    mov 0x00,r1
    mov.b r1,@(r0,r14)
    mov.w @(DAT_ce30eb8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30e86
    mova @(DAT_ce30ec4,pc),r0
    bra LAB_ce30e8a
    fmov.s @r0,fr3

LAB_ce30e86:
    mova @(DAT_ce30ec8,pc),r0
    fmov.s @r0,fr3

LAB_ce30e8a:
    fmul fr3,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    bra LAB_ce30eac
    fmov fr3,@(r0,r14)

LAB_ce30e96:
    mov.l @(PTR_ce30ebc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30eac

LAB_ce30ea2:
    lds.l @r15+,PR
    mov.l @(PTR_ce30ec0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30eac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30eb2:
    #data 0x01f9
DAT_ce30eb4:
    #data 0x01e8
DAT_ce30eb6:
    #data 0x0141
DAT_ce30eb8:
    #data 0x01d2
    #align4

PTR_ce30ebc:
    #data loc_8c034dee
PTR_ce30ec0:
    #data loc_8c051648
DAT_ce30ec4:
    #data 0x3fd55555
DAT_ce30ec8:
    #data 0xbfd55555

;=============================================

LAB_ce30ecc:
    mov.w @(DAT_ce30f92,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30ee8
    cmp/eq 0x01,r0
    bt LAB_ce30ee8
    cmp/eq 0x02,r0
    bt LAB_ce30ee8
    bra LAB_ce30efe
    nop

LAB_ce30ee8:
    mov.l @(PTR_ce30f98,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30efe
    lds.l @r15+,PR
    mov.l @(PTR_ce30f9c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30efe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f04:
    mov.w @(DAT_ce30f92,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30f20
    cmp/eq 0x00,r0
    bt LAB_ce30f28
    cmp/eq 0x01,r0
    bt LAB_ce30f28
    bra LAB_ce30f3e
    nop

LAB_ce30f20:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30f44
    mov.l @r15+,r14

LAB_ce30f28:
    mov.l @(PTR_ce30f98,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f3e
    lds.l @r15+,PR
    mov.l @(PTR_ce30f9c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f3e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f44:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30fb0
    mov.l @(PTR_ce30f98,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30f94,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31002
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30f96,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f72
    mova @(DAT_ce30fa0,pc),r0
    bra LAB_ce30f76
    fmov.s @r0,fr3

LAB_ce30f72:
    mova @(DAT_ce30fa4,pc),r0
    fmov.s @r0,fr3

LAB_ce30f76:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30f96,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f88
    mova @(DAT_ce30fa8,pc),r0
    bra LAB_ce30f8c
    fmov.s @r0,fr3

LAB_ce30f88:
    mova @(DAT_ce30fac,pc),r0
    fmov.s @r0,fr3

LAB_ce30f8c:
    mov 0x68,r0
    bra LAB_ce31002
    fmov fr3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f92:
    #data 0x01e8
DAT_ce30f94:
    #data 0x0141
DAT_ce30f96:
    #data 0x01d2
    #align4

PTR_ce30f98:
    #data loc_8c034dee
PTR_ce30f9c:
    #data loc_8c051648
DAT_ce30fa0:
    #data 0x4162aaaa
DAT_ce30fa4:
    #data 0xc162aaaa
DAT_ce30fa8:
    #data 0xbf3aaaaa
DAT_ce30fac:
    #data 0x3f3aaaaa

;=============================================

LAB_ce30fb0:
    mov.l @(PTR_ce310a8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce310a4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30fcc
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce30fcc:
    mov 0x68,r1
    mov.l @(PTR_ce310ac,pc),r3
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
    bt LAB_ce31002
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce310b0,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31002:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31008:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310b4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce310b8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3101e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310bc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce310c0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce310a6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31040
    bsr FUN_ce31082
    mov r14,r4
    bra LAB_ce31044
    nop

LAB_ce31040:
    bsr FUN_ce31060
    mov r14,r4

LAB_ce31044:
    mov.l @(PTR_ce310c4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3105a
    lds.l @r15+,PR
    mov.l @(PTR_ce310c8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3105a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31060:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce310ac,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3107a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce310cc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3107a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce31082:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce310ac,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3109c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce310cc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3109c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310a4:
    #data 0x0141
DAT_ce310a6:
    #data 0x01fe
    #align4

PTR_ce310a8:
    #data loc_8c0511e2
PTR_ce310ac:
    #data loc_8c034dee
PTR_ce310b0:
    #data loc_8c051648
PTR_ce310b4:
    #data loc_8c050084
PTR_ce310b8:
    #data loc_8c04ff88
PTR_ce310bc:
    #data loc_8c04fea8
PTR_ce310c0:
    #data loc_8c050048
PTR_ce310c4:
    #data loc_8c052ce2
PTR_ce310c8:
    #data loc_8c052dac
PTR_ce310cc:
    #data loc_8c05176e

;=============================================

LAB_ce310d0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce31130
    mov 0x00,r13
    mov.l @(PTR_ce311e8,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x14,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    mov.w @(DAT_ce311dc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce311ec,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce311de,pc),r0
    mov 0x35,r2
    mov.l @(PTR_ce311f0,pc),r3
    mov 0x16,r5
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
    mov.l @(PTR_ce311f4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce311f8,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4

LAB_ce31130:
    mov.w @(DAT_ce311e0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31140
    mov.l @(PTR_ce311fc,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31140:
    mov 0x5C,r1
    mov.l @(PTR_ce31200,pc),r3
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
    mov.l @(PTR_ce31204,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31196
    lds.l @r15+,PR
    mov.l @(PTR_ce31208,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31196:
    mov.w @(DAT_ce311e2,pc),r0
    fldi0 fr3
    mov.b @(r0,r14),r3
    lds r3,FPUL
    float FPUL,fr4
    fcmp/eq fr3,fr4
    bt LAB_ce311c2
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce311e4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311b4
    mova @(DAT_ce3120c,pc),r0
    bra LAB_ce311b8
    fmov.s @r0,fr3

LAB_ce311b4:
    mova @(DAT_ce31210,pc),r0
    fmov.s @r0,fr3

LAB_ce311b8:
    fmul fr3,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce311c2:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce311ca:
    mov r4,r3
    mov.l @(PTR_ce31214,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311dc:
    #data 0x01f9
DAT_ce311de:
    #data 0x01a1
DAT_ce311e0:
    #data 0x01ff
DAT_ce311e2:
    #data 0x0141
DAT_ce311e4:
    #data 0x01d2
    #align4

PTR_ce311e8:
    #data loc_8c052b4c
PTR_ce311ec:
    #data loc_8c034e8c
PTR_ce311f0:
    #data loc_8c2896b0
PTR_ce311f4:
    #data loc_8c04223a
PTR_ce311f8:
    #data loc_8c056de4
PTR_ce311fc:
    #data loc_8c0511e2
PTR_ce31200:
    #data loc_8c052c84
PTR_ce31204:
    #data loc_8c034dee
PTR_ce31208:
    #data loc_8c051648
DAT_ce3120c:
    #data 0x3fd55555
DAT_ce31210:
    #data 0xbfd55555
PTR_ce31214:
    #data PTR_ce34c9c

;=============================================

LAB_ce31218:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31354,pc),r3
    jsr @r3
    mov r4,r14
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
    mov.w @(DAT_ce31350,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31248
    mova @(DAT_ce31358,pc),r0
    bra LAB_ce3124c
    fmov.s @r0,fr3

LAB_ce31248:
    mova @(DAT_ce3135c,pc),r0
    fmov.s @r0,fr3

LAB_ce3124c:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31350,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3125e
    mova @(DAT_ce31360,pc),r0
    bra LAB_ce31262
    fmov.s @r0,fr3

LAB_ce3125e:
    mova @(DAT_ce31364,pc),r0
    fmov.s @r0,fr3

LAB_ce31262:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x0E,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31270:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31354,pc),r3
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
    bf LAB_ce312c4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce312c4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312ca:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31354,pc),r3
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
    bt LAB_ce31396
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
    mov.w @(DAT_ce31350,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3133a
    mova @(DAT_ce31368,pc),r0
    bra LAB_ce3133e
    fmov.s @r0,fr3

LAB_ce3133a:
    mova @(DAT_ce3136c,pc),r0
    fmov.s @r0,fr3

LAB_ce3133e:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31350,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31374
    mova @(DAT_ce31370,pc),r0
    bra LAB_ce31378
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31350:
    #data 0x01d2
    #align4

PTR_ce31354:
    #data loc_8c034dee
DAT_ce31358:
    #data 0x417d5555
DAT_ce3135c:
    #data 0xc17d5555
DAT_ce31360:
    #data 0xbea00000
DAT_ce31364:
    #data 0x3ea00000
DAT_ce31368:
    #data 0x40d55555
DAT_ce3136c:
    #data 0xc0d55555
DAT_ce31370:
    #data 0xbe555555

;=============================================

LAB_ce31374:
    mova @(DAT_ce31474,pc),r0
    fmov.s @r0,fr3

LAB_ce31378:
    mov 0x68,r0
    mov.l @(PTR_ce31478,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x02,r4
    mov.w @(DAT_ce3146c,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31396:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3139c:
    mov.w @(DAT_ce3146e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce313e4
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

LAB_ce313e4:
    mov.l @(PTR_ce3147c,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313fa
    lds.l @r15+,PR
    mov.l @(PTR_ce31480,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce313fa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31400:
    mov r4,r3
    mov.l @(PTR_ce31484,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31412:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3147c,pc),r3
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
    mov.w @(DAT_ce31470,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31444
    mova @(DAT_ce31488,pc),r0
    bra LAB_ce31448
    fmov.s @r0,fr3

LAB_ce31444:
    mova @(DAT_ce3148c,pc),r0
    fmov.s @r0,fr3

LAB_ce31448:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31470,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3145a
    mova @(DAT_ce31490,pc),r0
    bra LAB_ce3145e
    fmov.s @r0,fr3

LAB_ce3145a:
    mova @(DAT_ce31494,pc),r0
    fmov.s @r0,fr3

LAB_ce3145e:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3146c:
    #data 0x0159
DAT_ce3146e:
    #data 0x0141
DAT_ce31470:
    #data 0x01d2
    #align4

DAT_ce31474:
    #data 0x3e555555
PTR_ce31478:
    #data loc_8c034e8c
PTR_ce3147c:
    #data loc_8c034dee
PTR_ce31480:
    #data loc_8c051648
PTR_ce31484:
    #data PTR_ce34cac
DAT_ce31488:
    #data 0xc1ad5555
DAT_ce3148c:
    #data 0x41ad5555
DAT_ce31490:
    #data 0x3dd55555
DAT_ce31494:
    #data 0xbdd55555

;=============================================

LAB_ce31498:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce315d4,pc),r3
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
    bf LAB_ce31528
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce315ce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce314fc
    mova @(DAT_ce315d8,pc),r0
    bra LAB_ce31500
    fmov.s @r0,fr3

LAB_ce314fc:
    mova @(DAT_ce315dc,pc),r0
    fmov.s @r0,fr3

LAB_ce31500:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce315ce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31512
    mova @(DAT_ce315e0,pc),r0
    bra LAB_ce31516
    fmov.s @r0,fr3

LAB_ce31512:
    mova @(DAT_ce315e4,pc),r0
    fmov.s @r0,fr3

LAB_ce31516:
    mov.l @(PTR_ce315e8,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x03,r6
    mov 0x02,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31528:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3152e:
    mov.w @(DAT_ce315d0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31576
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

LAB_ce31576:
    mov.l @(PTR_ce315d4,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3158c
    lds.l @r15+,PR
    mov.l @(PTR_ce315ec,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3158c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31592:
    mov r4,r3
    mov.l @(PTR_ce315f0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce315a4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov.l @(PTR_ce315f4,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce315d2,pc),r0
    jsr @r2
    mov.b r3,@(r0,r14)
    and 0x01,r0
    mov.l @(PTR_ce315e8,pc),r3
    mov.w r0,@(0x1e,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.w @(0x1e,r14),r0
    mov 0x12,r5
    mov r0,r6
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315ce:
    #data 0x01d2
DAT_ce315d0:
    #data 0x0141
DAT_ce315d2:
    #data 0x012c
    #align4

PTR_ce315d4:
    #data loc_8c034dee
DAT_ce315d8:
    #data 0xc1555555
DAT_ce315dc:
    #data 0x41555555
DAT_ce315e0:
    #data 0x3ed55555
DAT_ce315e4:
    #data 0xbed55555
PTR_ce315e8:
    #data loc_8c034e8c
PTR_ce315ec:
    #data loc_8c051648
PTR_ce315f0:
    #data PTR_ce34cb8
PTR_ce315f4:
    #data loc_8c11e730

;=============================================

LAB_ce315f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce316f8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31614
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31614:
    mov.w @(DAT_ce316f4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31638
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf/s LAB_ce3162c
    mov 0x09,r5
    bra LAB_ce3162e
    mov 0x00,r6

LAB_ce3162c:
    mov 0x01,r6

LAB_ce3162e:
    lds.l @r15+,PR
    mov.l @(PTR_ce316fc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31638:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3163e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31700,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31656
    lds.l @r15+,PR
    mov.l @(PTR_ce31704,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31656:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31708,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3166a:
    mov r4,r3
    mov.l @(PTR_ce3170c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3167c:
    mov.l @(PTR_ce31714,pc),r1
    mov 0x03,r5
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @r1,r2
    mov.l @(PTR_ce31710,pc),r3
    tst r2,r2
    bt/s LAB_ce3169a
    mov.l @r3,r4
    mov.l @(PTR_ce31718,pc),r2
    mov.l @(0x1c,r4),r0
    bra LAB_ce316a0
    and r5,r0

LAB_ce3169a:
    mov.l @(0x1c,r4),r0
    mov.l @(PTR_ce3171c,pc),r2
    and r5,r0

LAB_ce316a0:
    mov.b @(r0,r2),r0
    mov 0x02,r13
    mov.l @(PTR_ce31720,pc),r3
    extu.b r0,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    cmp/ge r13,r0
    bf LAB_ce316b8
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)

LAB_ce316b8:
    mov.w @(0x1c,r14),r0
    cmp/eq 0x00,r0
    bt LAB_ce316ca
    cmp/eq 0x01,r0
    bt LAB_ce316d8
    cmp/eq 0x02,r0
    bt LAB_ce31728
    bra LAB_ce31732
    nop

LAB_ce316ca:
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce316f6,pc),r0
    bra LAB_ce31732
    mov.b r3,@(r0,r14)

LAB_ce316d8:
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov r3,r7
    mov 0x05,r5
    add 0x02,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r6
    mov.w @(DAT_ce316f6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31724,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce31732
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce316f4:
    #data 0x0141
DAT_ce316f6:
    #data 0x0158
    #align4

PTR_ce316f8:
    #data loc_8c034dee
PTR_ce316fc:
    #data loc_8c0cbdfc
PTR_ce31700:
    #data loc_8c046c8a
PTR_ce31704:
    #data loc_8c051648
PTR_ce31708:
    #data PTR_ce34cc0
PTR_ce3170c:
    #data PTR_ce34cd4
PTR_ce31710:
    #data loc_8c26823c
PTR_ce31714:
    #data loc_8c289636
PTR_ce31718:
    #data DAT_ce34ce4
PTR_ce3171c:
    #data DAT_ce34ce8
PTR_ce31720:
    #data loc_8c0514b8
PTR_ce31724:
    #data loc_8c03544c

;=============================================

LAB_ce31728:
    mov.b @(0x6,r14),r0
    add 0x03,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31860,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce31732:
    lds.l @r15+,PR
    mov.w @(DAT_ce31860,pc),r0
    mov 0x13,r5
    mov.l @(PTR_ce31874,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31744:
    mov.l @(PTR_ce31878,pc),r3
    jmp @r3
    nop

LAB_ce3174a:
    mov.w @(DAT_ce31862,pc),r3
    mov.w @(DAT_ce31864,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31878,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31866,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bt/s LAB_ce3176e
    mov 0x00,r4
    cmp/eq 0x02,r0
    bt LAB_ce31788
    bra LAB_ce3179a
    nop

LAB_ce3176e:
    mov.w @(DAT_ce31866,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce3187c,pc),r3
    mov 0x00,r6
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31880,pc),r2
    mov 0x49,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31788:
    mov.w @(DAT_ce31866,pc),r0
    mov 0x00,r6
    mov.l @(PTR_ce3187c,pc),r3
    mov 0x0B,r5
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3179a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce317a0:
    mov.l @(PTR_ce31878,pc),r3
    jmp @r3
    nop

LAB_ce317a6:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce317ba
    mov.b @(0x6,r4),r0
    mov 0x03,r6
    mov.l @(PTR_ce31874,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce317ba:
    mov.l @(PTR_ce31878,pc),r3
    jmp @r3
    nop

LAB_ce317c0:
    mov.w @(DAT_ce31868,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31884,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce317d4:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31888,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce3186a,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce317ea:
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
    mov.w @(DAT_ce3186c,pc),r0
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
    mov.l @(PTR_ce31890,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31894,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3186e,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce31898,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31870,pc),r0
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
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce31874,pc),r2
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31860:
    #data 0x0158
DAT_ce31862:
    #data 0x00ff
DAT_ce31864:
    #data 0x0326
DAT_ce31866:
    #data 0x0141
DAT_ce31868:
    #data 0x01e9
DAT_ce3186a:
    #data 0x02a4
DAT_ce3186c:
    #data 0x01a1
DAT_ce3186e:
    #data 0x041c
DAT_ce31870:
    #data 0x01f9
    #align4

PTR_ce31874:
    #data loc_8c034e8c
PTR_ce31878:
    #data loc_8c034dee
PTR_ce3187c:
    #data loc_8c0cbdfc
PTR_ce31880:
    #data loc_8c04223a
PTR_ce31884:
    #data PTR_ce34cec
PTR_ce31888:
    #data PTR_ce34d1c
PTR_ce3188c:
    #data loc_8c2896b0
PTR_ce31890:
    #data loc_8c056de4
PTR_ce31894:
    #data loc_8c05218a
PTR_ce31898:
    #data loc_8c05115a

;=============================================

LAB_ce3189c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31978,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31972,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce318e4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.l @r15,r3
    mov r0,r5
    mov.b r0,@(0x3,r3)
    mov.l @(PTR_ce3197c,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce318d8
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31980,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce318d8:
    mov.w @(DAT_ce31974,pc),r0
    mov 0x00,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)

LAB_ce318e4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31978,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce31910
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31980,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31910:
    mov.l @r15,r2
    mov.b @(0x3,r2),r0
    tst r0,r0
    bt LAB_ce3193e
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov r14,r4
    mov 0x02,r6
    add 0x02,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce31984,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31988,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3198c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3193e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31946:
    mov.w @(DAT_ce31972,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3195a
    mov.l @(PTR_ce31978,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3195a:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3196c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce3196c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31972:
    #data 0x0141
DAT_ce31974:
    #data 0x027b
    #align4

PTR_ce31978:
    #data loc_8c034dee
PTR_ce3197c:
    #data loc_8c07574c
PTR_ce31980:
    #data loc_8c051648
DAT_ce31984:
    #data 0x41200000
DAT_ce31988:
    #data 0xbf4db6db
PTR_ce3198c:
    #data loc_8c034e8c

;=============================================

LAB_ce31990:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a98,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31a8c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce319e0
    mov.w @(DAT_ce31a8e,pc),r0
    mov 0x02,r3
    mov 0x5C,r1
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

LAB_ce319e0:
    mov.w @(DAT_ce31a8c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31a1c
    mov.w @(DAT_ce31a90,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31a1c
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31a90,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31a8e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31a9c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31aa0,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a1c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31a22:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a98,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31a4e
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31aa4,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a4e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31a54:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31aa8,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31a92,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a6a:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31a94,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce31aac
    mov 0x00,r13
    mov.w @(DAT_ce31a96,pc),r0
    mov 0x4F,r2
    bra LAB_ce31ab2
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a8c:
    #data 0x0141
DAT_ce31a8e:
    #data 0x01f9
DAT_ce31a90:
    #data 0x041c
DAT_ce31a92:
    #data 0x02a4
DAT_ce31a94:
    #data 0x0255
DAT_ce31a96:
    #data 0x01a1
    #align4

PTR_ce31a98:
    #data loc_8c034dee
PTR_ce31a9c:
    #data loc_8c0511b4
PTR_ce31aa0:
    #data loc_8c034e8c
PTR_ce31aa4:
    #data loc_8c051648
PTR_ce31aa8:
    #data PTR_ce34d34

;=============================================

LAB_ce31aac:
    mov.w @(DAT_ce31bdc,pc),r0
    mov 0x31,r3
    mov.b r3,@(r0,r14)

LAB_ce31ab2:
    mov.w @(DAT_ce31bde,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce31be8,pc),r3
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce31bec,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31bf0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31be0,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce31bf4,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31be2,pc),r0
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
    lds.l @r15+,PR
    mov.l @(PTR_ce31bf8,pc),r2
    mov 0x04,r6
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b12:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31bfc,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31be4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31b5a
    mov.b @(0x6,r14),r0
    mov 0x01,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.l @r15,r3
    mov.b r0,@(0x4,r3)
    mov.l @(PTR_ce31c00,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce31b4e
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31c04,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b4e:
    mov.w @(DAT_ce31be6,pc),r0
    mov 0x00,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)

LAB_ce31b5a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b62:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31bfc,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0x1,r2),r0
    tst r0,r0
    bf LAB_ce31b86
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31c04,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b86:
    mov.l @r15,r2
    mov.b @(0x4,r2),r0
    tst r0,r0
    bt LAB_ce31ba8
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov r14,r4
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31bf8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ba8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31bb0:
    mov.w @(DAT_ce31be4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31bc4
    mov.l @(PTR_ce31bfc,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31bc4:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31bd6
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31bd6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31bdc:
    #data 0x01a1
DAT_ce31bde:
    #data 0x01ac
DAT_ce31be0:
    #data 0x041c
DAT_ce31be2:
    #data 0x01f9
DAT_ce31be4:
    #data 0x0141
DAT_ce31be6:
    #data 0x027b
    #align4

PTR_ce31be8:
    #data loc_8c2896b0
PTR_ce31bec:
    #data loc_8c056de4
PTR_ce31bf0:
    #data loc_8c05218a
PTR_ce31bf4:
    #data loc_8c05115a
PTR_ce31bf8:
    #data loc_8c034e8c
PTR_ce31bfc:
    #data loc_8c034dee
PTR_ce31c00:
    #data loc_8c07574c
PTR_ce31c04:
    #data loc_8c051648

;=============================================

LAB_ce31c08:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31d58,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c22
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31d5c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31c22:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31c2a:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31d60,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31d46,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c40:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31d48,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31c60
    mov 0x00,r13
    mov.w @(DAT_ce31d4a,pc),r0
    mov 0x46,r3
    bra LAB_ce31c66
    mov.b r3,@(r0,r14)

LAB_ce31c60:
    mov.w @(DAT_ce31d4a,pc),r0
    mov 0x32,r2
    mov.b r2,@(r0,r14)

LAB_ce31c66:
    mov.w @(DAT_ce31d4c,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce31d64,pc),r3
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce31d68,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31d6c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31d4e,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce31d70,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31d50,pc),r0
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
    mov.l @(PTR_ce31d74,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31d78,pc),r3
    mov 0x05,r6
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31cce:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31d58,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31d12
    mov.w @(DAT_ce31d52,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31d2e
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    add 0x62,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31cf8
    mov r14,r4
    bra LAB_ce31cfa
    mov 0x02,r5

LAB_ce31cf8:
    mov 0x00,r5

LAB_ce31cfa:
    mov.l @(PTR_ce31d7c,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce31d54,pc),r0
    mov 0x00,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d12:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31d5c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d2e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d34:
    mov r4,r3
    mov.l @(PTR_ce31d80,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d46:
    #data 0x02a4
DAT_ce31d48:
    #data 0x01a3
DAT_ce31d4a:
    #data 0x01a1
DAT_ce31d4c:
    #data 0x01ac
DAT_ce31d4e:
    #data 0x041c
DAT_ce31d50:
    #data 0x01f9
DAT_ce31d52:
    #data 0x0141
DAT_ce31d54:
    #data 0x027b
    #align4

PTR_ce31d58:
    #data loc_8c034dee
PTR_ce31d5c:
    #data loc_8c051648
PTR_ce31d60:
    #data PTR_ce34d48
PTR_ce31d64:
    #data loc_8c2896b0
PTR_ce31d68:
    #data loc_8c056de4
PTR_ce31d6c:
    #data loc_8c05218a
PTR_ce31d70:
    #data loc_8c05115a
PTR_ce31d74:
    #data loc_8c035162
PTR_ce31d78:
    #data loc_8c034e8c
PTR_ce31d7c:
    #data loc_8c076220
PTR_ce31d80:
    #data PTR_ce34d50

;=============================================

LAB_ce31d84:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce31ec0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31ec4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31eb4,pc),r0
    mov 0x00,r3
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31eb6,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31ec8,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31ecc,pc),r2
    mov r14,r4
    mov 0x1A,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31dd2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ed0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31eb8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31df0
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce31eba,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31ebc,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce31df0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31df6:
    mov.l @(PTR_ce31ed8,pc),r3
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.l @r3,r0
    mov.l @(PTR_ce31ed4,pc),r12
    mov.l @(0x1c,r0),r0
    tst 0x02,r0
    bt/s LAB_ce31e10
    mov r4,r14
    bra LAB_ce31e12
    mov 0x08,r5

LAB_ce31e10:
    mov 0x00,r5

LAB_ce31e12:
    jsr @r12
    mov r14,r4
    mov.l @(PTR_ce31ed0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31eb8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31e3e
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31ebc,pc),r0
    mov.w r13,@(r0,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    jsr @r12
    mov r14,r4
    bra LAB_ce31e90
    nop

LAB_ce31e3e:
    mov.w @(DAT_ce31ebc,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x80,r0
    bf LAB_ce31e90
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce31ebe,pc),r0
    mov 0x48,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31edc,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov r13,r0
    nop
    mov.l @(PTR_ce31ecc,pc),r2
    mov 0x06,r6
    mov.w r0,@(0x1c,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov 0x15,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e90:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31e9a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ed0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31ee4
    lds.l @r15+,PR
    mov.l @(PTR_ce31ee0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31eb4:
    #data 0x041c
DAT_ce31eb6:
    #data 0x01f9
DAT_ce31eb8:
    #data 0x0141
DAT_ce31eba:
    #data 0x0080
DAT_ce31ebc:
    #data 0x01ae
DAT_ce31ebe:
    #data 0x01a1
    #align4

PTR_ce31ec0:
    #data loc_8c056de4
PTR_ce31ec4:
    #data loc_8c05218a
PTR_ce31ec8:
    #data loc_8c05115a
PTR_ce31ecc:
    #data loc_8c034e8c
PTR_ce31ed0:
    #data loc_8c034dee
PTR_ce31ed4:
    #data loc_8c035162
PTR_ce31ed8:
    #data loc_8c26823c
PTR_ce31edc:
    #data loc_8c2896b0
PTR_ce31ee0:
    #data loc_8c051648

;=============================================

LAB_ce31ee4:
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce31f18
    mov.w @(DAT_ce3200a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f18
    mov.l @(PTR_ce3201c,pc),r3
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce31f18
    mov 0x00,r0
    mov.w @(DAT_ce3200c,pc),r3
    mov.b r0,@(0x6,r14)
    mov r14,r4
    mov.w @(DAT_ce3200e,pc),r0
    mov.b r3,@(r0,r14)
    add 0xB9,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce32020,pc),r3
    mov.l @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f18:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f1e:
    mov r4,r3
    mov.l @(PTR_ce32024,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31f30:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32028,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32010,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f46:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    bsr FUN_ce321dc
    mov r14,r4
    mov.l @(PTR_ce3202c,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32030,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32012,pc),r0
    mov 0x00,r3
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32014,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32034,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32016,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov 0x15,r5
    mov.l @(PTR_ce32038,pc),r3
    add 0x07,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f9e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3203c,pc),r3
    jsr @r3
    mov r5,r13
    mov.w @(DAT_ce32018,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3204c
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32016,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31fc6
    bra LAB_ce31fc8
    mov 0x1E,r0

LAB_ce31fc6:
    mov 0x0F,r0

LAB_ce31fc8:
    mov.w r0,@(0x1c,r14)
    mov 0x01,r3
    mov.b @(0xe,r13),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)
    mov 0x22,r0
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r13)
    mov.w @(DAT_ce3201a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31fe8
    mova @(DAT_ce32040,pc),r0
    bra LAB_ce31fec
    fmov.s @r0,fr3

LAB_ce31fe8:
    mova @(DAT_ce32044,pc),r0
    fmov.s @r0,fr3

LAB_ce31fec:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.b @(0xe,r13),r0
    tst r0,r0
    bt/s LAB_ce31ffc
    mov 0x03,r5
    bra LAB_ce31ffe
    mov 0x01,r6

LAB_ce31ffc:
    mov 0x00,r6

LAB_ce31ffe:
    lds.l @r15+,PR
    mov.l @(PTR_ce32048,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3200a:
    #data 0x019e
DAT_ce3200c:
    #data 0x00c2
DAT_ce3200e:
    #data 0x01f7
DAT_ce32010:
    #data 0x02a4
DAT_ce32012:
    #data 0x041c
DAT_ce32014:
    #data 0x01f9
DAT_ce32016:
    #data 0x01a3
DAT_ce32018:
    #data 0x0141
DAT_ce3201a:
    #data 0x01d2
    #align4

PTR_ce3201c:
    #data loc_8c05264c
PTR_ce32020:
    #data loc_8c0522e0
PTR_ce32024:
    #data PTR_ce34d60
PTR_ce32028:
    #data PTR_ce34d68
PTR_ce3202c:
    #data loc_8c056de4
PTR_ce32030:
    #data loc_8c05218a
PTR_ce32034:
    #data loc_8c05115a
PTR_ce32038:
    #data loc_8c034e8c
PTR_ce3203c:
    #data loc_8c034dee
DAT_ce32040:
    #data 0x41555555
DAT_ce32044:
    #data 0xc1555555
PTR_ce32048:
    #data loc_8c0cbdfc

;=============================================

LAB_ce3204c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32054:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32158,pc),r3
    mov r4,r14
    mov.l r5,@r15
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce320f4
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32152,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce320bc
    mova @(DAT_ce3215c,pc),r0
    bra LAB_ce320c0
    fmov.s @r0,fr3

LAB_ce320bc:
    mova @(DAT_ce32160,pc),r0
    fmov.s @r0,fr3

LAB_ce320c0:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32152,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce320d2
    mova @(DAT_ce32164,pc),r0
    bra LAB_ce320d6
    fmov.s @r0,fr3

LAB_ce320d2:
    mova @(DAT_ce32168,pc),r0
    fmov.s @r0,fr3

LAB_ce320d6:
    mov 0x68,r0
    mov 0x01,r5
    fmov fr3,@(r0,r14)
    bsr FUN_ce321dc
    mov r14,r4
    mov.w @(DAT_ce32154,pc),r0
    mov r14,r4
    mov 0x15,r5
    mov.b @(r0,r14),r6
    add 0x09,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3216c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce320f4:
    mov.w @(DAT_ce32156,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3214a
    mov 0x22,r0
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce3214a
    mov 0x01,r4
    mov.b r4,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov.l @r15,r3
    mov.b @(0x7,r3),r0
    add 0x01,r0
    mov.b r0,@(0x7,r3)
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32130
    mov r4,r0
    nop
    bra LAB_ce3214a
    mov.w r0,@(0x1c,r14)

LAB_ce32130:
    mov.l @r15,r2
    mov.b @(0x7,r2),r0
    extu.b r0,r0
    cmp/gt r4,r0
    bf/s LAB_ce32140
    mov r14,r4
    bra LAB_ce32142
    mov 0x02,r5

LAB_ce32140:
    mov 0x00,r5

LAB_ce32142:
    add 0x04,r15
    lds.l @r15+,PR
    bra FUN_ce321dc
    mov.l @r15+,r14

LAB_ce3214a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32152:
    #data 0x01d2
DAT_ce32154:
    #data 0x01a3
DAT_ce32156:
    #data 0x019e
    #align4

PTR_ce32158:
    #data loc_8c034dee
DAT_ce3215c:
    #data 0x40a00000
DAT_ce32160:
    #data 0xc0a00000
DAT_ce32164:
    #data 0xbdd55555
DAT_ce32168:
    #data 0x3dd55555
PTR_ce3216c:
    #data loc_8c034e8c

;=============================================

LAB_ce32170:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce322cc,pc),r3
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
    bt LAB_ce321d6
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce322d0,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce321d6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce321dc:
    mov.w @(DAT_ce322be,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce321ea
    bra LAB_ce321ec
    mov 0x03,r3

LAB_ce321ea:
    mov 0x00,r3

LAB_ce321ec:
    mov.l @(PTR_ce322d4,pc),r0
    add r3,r5
    extu.b r5,r5
    mov.w @(DAT_ce322c0,pc),r2
    mov.b @(r0,r5),r3
    mov 0x00,r5
    mov.w @(DAT_ce322c2,pc),r0
    add r4,r2
    mov.b r3,@r2
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce322d8,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    rts
    mov.w r1,@(r0,r2)

LAB_ce3221c:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce322dc,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce322c4,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32232:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x3A,r3
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce322c0,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce322d8,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce322e0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce322e4,pc),r3
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
    mov.w @(DAT_ce322c6,pc),r0
    mov 0x15,r5
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce322e8,pc),r3
    add 0x0B,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32296:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce322cc,pc),r3
    jsr @r3
    mov r5,r13
    mov.w @(DAT_ce322c8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32332
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce322c6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce322ec
    bra LAB_ce322ee
    mov 0x1E,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce322be:
    #data 0x0255
DAT_ce322c0:
    #data 0x01a1
DAT_ce322c2:
    #data 0x01ac
DAT_ce322c4:
    #data 0x02a4
DAT_ce322c6:
    #data 0x01a3
DAT_ce322c8:
    #data 0x0141
    #align4

PTR_ce322cc:
    #data loc_8c034dee
PTR_ce322d0:
    #data loc_8c051648
PTR_ce322d4:
    #data DAT_ce34d78
PTR_ce322d8:
    #data loc_8c2896b0
PTR_ce322dc:
    #data PTR_ce34d80
PTR_ce322e0:
    #data loc_8c056de4
PTR_ce322e4:
    #data loc_8c05218a
PTR_ce322e8:
    #data loc_8c034e8c

;=============================================

LAB_ce322ec:
    mov 0x0F,r0

LAB_ce322ee:
    mov.w r0,@(0x1c,r14)
    mov 0x01,r3
    mov.b @(0xe,r13),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)
    mov 0x22,r0
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r13)
    mov.w @(DAT_ce3240a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3230e
    mova @(DAT_ce32410,pc),r0
    bra LAB_ce32312
    fmov.s @r0,fr3

LAB_ce3230e:
    mova @(DAT_ce32414,pc),r0
    fmov.s @r0,fr3

LAB_ce32312:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.b @(0xe,r13),r0
    tst r0,r0
    bt LAB_ce32320
    bra LAB_ce32322
    mov 0x01,r6

LAB_ce32320:
    mov 0x00,r6

LAB_ce32322:
    lds.l @r15+,PR
    mov.l @(PTR_ce32418,pc),r2
    add 0x02,r6
    mov 0x03,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32332:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3233a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3241c,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce32420,pc),r6
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
    bf/s LAB_ce32440
    mov 0x00,r4
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3240a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce323a6
    mova @(DAT_ce32424,pc),r0
    bra LAB_ce323aa
    fmov.s @r0,fr3

LAB_ce323a6:
    mova @(DAT_ce32428,pc),r0
    fmov.s @r0,fr3

LAB_ce323aa:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3240a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce323bc
    mova @(DAT_ce3242c,pc),r0
    bra LAB_ce323c0
    fmov.s @r0,fr3

LAB_ce323bc:
    mova @(DAT_ce32430,pc),r0
    fmov.s @r0,fr3

LAB_ce323c0:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32434,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x3B,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32438,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3240c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r6,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.w @(DAT_ce3240e,pc),r0
    mov.b @(r0,r14),r6
    add 0x0D,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3243c,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3240a:
    #data 0x01d2
DAT_ce3240c:
    #data 0x01a1
DAT_ce3240e:
    #data 0x01a3
    #align4

DAT_ce32410:
    #data 0x41555555
DAT_ce32414:
    #data 0xc1555555
PTR_ce32418:
    #data loc_8c0cbdfc
PTR_ce3241c:
    #data loc_8c034dee
PTR_ce32420:
    #data loc_8c2896b0
DAT_ce32424:
    #data 0x40a00000
DAT_ce32428:
    #data 0xc0a00000
DAT_ce3242c:
    #data 0xbd555555
DAT_ce32430:
    #data 0x3d555555
DAT_ce32434:
    #data 0xc0cdb6db
DAT_ce32438:
    #data 0xbf4db6db
PTR_ce3243c:
    #data loc_8c034e8c

;=============================================

LAB_ce32440:
    mov.w @(DAT_ce32578,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce324b0
    mov 0x22,r0
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce324b0
    mov 0x01,r5
    mov.b r5,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov.l @r15,r3
    mov.b @(0x7,r3),r0
    add 0x01,r0
    mov.b r0,@(0x7,r3)
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3247c
    mov r5,r0
    nop
    bra LAB_ce324b0
    mov.w r0,@(0x1c,r14)

LAB_ce3247c:
    mov.l @r15,r2
    mov.b @(0x7,r2),r0
    extu.b r0,r0
    cmp/gt r5,r0
    bf LAB_ce3248e
    mov.w @(DAT_ce3257a,pc),r0
    mov 0x4D,r2
    bra LAB_ce32494
    mov.b r2,@(r0,r14)

LAB_ce3248e:
    mov.w @(DAT_ce3257a,pc),r0
    mov 0x3A,r3
    mov.b r3,@(r0,r14)

LAB_ce32494:
    mov.w @(DAT_ce3257c,pc),r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r6,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)

LAB_ce324b0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce324b8:
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
    mov.w @(DAT_ce3257e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3252a
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov 0x01,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x03,r6
    mov.w @(DAT_ce3257e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32580,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32584,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32588,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3252a:
    mov.l @(PTR_ce3258c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32540
    lds.l @r15+,PR
    mov.l @(PTR_ce32590,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32540:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32546:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3258c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32572
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32594,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32572:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32578:
    #data 0x019e
DAT_ce3257a:
    #data 0x01a1
DAT_ce3257c:
    #data 0x01ac
DAT_ce3257e:
    #data 0x041c
DAT_ce32580:
    #data 0x01f9
    #align4

PTR_ce32584:
    #data loc_8c034e8c
PTR_ce32588:
    #data loc_8c0511b4
PTR_ce3258c:
    #data loc_8c034dee
PTR_ce32590:
    #data loc_8c05176e
PTR_ce32594:
    #data loc_8c051648

;=============================================

LAB_ce32598:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce326dc,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce326cc,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce325ae:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce326ce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce325d4
    mov 0x00,r13
    mov.w @(DAT_ce326d0,pc),r0
    mov 0x53,r2
    bra LAB_ce325da
    mov.b r2,@(r0,r14)

LAB_ce325d4:
    mov.w @(DAT_ce326d0,pc),r0
    mov 0x36,r3
    mov.b r3,@(r0,r14)

LAB_ce325da:
    mov.w @(DAT_ce326d2,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce326e0,pc),r3
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce326e4,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce326e8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce326d4,pc),r0
    mov 0x00,r6
    fldi0 fr4
    mov r6,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce326ec,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce326d6,pc),r0
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
    tst r0,r0
    bt/s LAB_ce32640
    mov r14,r4
    mov.l @r15,r3
    mov r13,r0
    nop
    mov.b r0,@(0x8,r3)
    bra LAB_ce32646
    nop

LAB_ce32640:
    mov.l @r15,r2
    mov 0x01,r0
    mov.b r0,@(0x8,r2)

LAB_ce32646:
    mov.l @(PTR_ce326f0,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce326d8,pc),r0
    mov r14,r4
    mov 0x15,r5
    mov.b @(r0,r14),r6
    add 0x0F,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce326f4,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32662:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce326f8,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3268a
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce32692
    mov.l @r15+,r14

LAB_ce3268a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32692:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce326f8,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0x8,r2),r0
    tst r0,r0
    bt LAB_ce326c4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce326d8,pc),r0
    mov.b @(r0,r14),r6
    add 0x11,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce326f4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce326c4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326cc:
    #data 0x02a4
DAT_ce326ce:
    #data 0x0255
DAT_ce326d0:
    #data 0x01a1
DAT_ce326d2:
    #data 0x01ac
DAT_ce326d4:
    #data 0x041c
DAT_ce326d6:
    #data 0x01f9
DAT_ce326d8:
    #data 0x01a3
    #align4

PTR_ce326dc:
    #data PTR_ce34d94
PTR_ce326e0:
    #data loc_8c2896b0
PTR_ce326e4:
    #data loc_8c056de4
PTR_ce326e8:
    #data loc_8c05218a
PTR_ce326ec:
    #data loc_8c0778a4
PTR_ce326f0:
    #data loc_8c05115a
PTR_ce326f4:
    #data loc_8c034e8c
PTR_ce326f8:
    #data loc_8c034dee

;=============================================

LAB_ce326fc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32838,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32728
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3283c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32728:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3272e:
    mov r4,r3
    mov.l @(PTR_ce32840,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32740:
    mov r4,r3
    mov.l @(PTR_ce32844,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32752:
    mov.w @(DAT_ce32826,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3276e
    mov.w @(DAT_ce3282a,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32828,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3276e:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32848,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3282c,pc),r0
    mov 0x00,r3
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3282e,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3284c,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32850,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce327ae:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32830,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32832,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32826,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce327d0
    bra LAB_ce327d2
    mov 0x02,r3

LAB_ce327d0:
    mov 0x00,r3

LAB_ce327d2:
    mov.w @(DAT_ce32834,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32838,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32836,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3281e
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32854,pc),r3
    mov 0x18,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32836,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3282a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32858,pc),r0
    mov.l @(PTR_ce32860,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce3285c,pc),r0
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

LAB_ce3281e:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32826:
    #data 0x0255
DAT_ce32828:
    #data 0x00ff
DAT_ce3282a:
    #data 0x03f0
DAT_ce3282c:
    #data 0x041c
DAT_ce3282e:
    #data 0x01f9
DAT_ce32830:
    #data 0x03f8
DAT_ce32832:
    #data 0x0328
DAT_ce32834:
    #data 0x03f1
DAT_ce32836:
    #data 0x0141
    #align4

PTR_ce32838:
    #data loc_8c034dee
PTR_ce3283c:
    #data loc_8c051648
PTR_ce32840:
    #data PTR_ce34da4
PTR_ce32844:
    #data PTR_ce34dac
PTR_ce32848:
    #data loc_8c05218a
PTR_ce3284c:
    #data loc_8c05115a
PTR_ce32850:
    #data loc_8c034e8c
PTR_ce32854:
    #data loc_8c042008
DAT_ce32858:
    #data 0x4262aaaa
DAT_ce3285c:
    #data 0x430d6db7
PTR_ce32860:
    #data loc_8c050834

;=============================================

LAB_ce32864:
    mov.w @(DAT_ce32982,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32984,pc),r0
    mov.l @(PTR_ce32990,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32986,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce328e2
    mov.b @(0x7,r14),r0
    mov 0x3C,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mov 0x09,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce32988,pc),r0
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
    mov 0x22,r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3298a,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce328cc
    mova @(DAT_ce32998,pc),r0
    bra LAB_ce328d0
    fmov.s @r0,fr3

LAB_ce328cc:
    mova @(DAT_ce3299c,pc),r0
    fmov.s @r0,fr3

LAB_ce328d0:
    mov.l @(PTR_ce329a0,pc),r3
    mov 0x5C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x00,r6
    mov 0x05,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce328e2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce328e8:
    mov.w @(DAT_ce32982,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32984,pc),r0
    mov.l @(PTR_ce32990,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce32994,pc),r6
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
    bf/s LAB_ce329e8
    mov 0x00,r4
    mov.w @(DAT_ce3298c,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3298e,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3298a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3296c
    mova @(DAT_ce329a4,pc),r0
    bra LAB_ce32970
    fmov.s @r0,fr3

LAB_ce3296c:
    mova @(DAT_ce329a8,pc),r0
    fmov.s @r0,fr3

LAB_ce32970:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3298a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce329b0
    mova @(DAT_ce329ac,pc),r0
    bra LAB_ce329b4
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32982:
    #data 0x03f8
DAT_ce32984:
    #data 0x0328
DAT_ce32986:
    #data 0x0141
DAT_ce32988:
    #data 0x01a1
DAT_ce3298a:
    #data 0x01d2
DAT_ce3298c:
    #data 0x03f9
DAT_ce3298e:
    #data 0x0327
    #align4

PTR_ce32990:
    #data loc_8c034dee
PTR_ce32994:
    #data loc_8c2896b0
DAT_ce32998:
    #data 0x413aaaaa
DAT_ce3299c:
    #data 0xc13aaaaa
PTR_ce329a0:
    #data loc_8c0cbdfc
DAT_ce329a4:
    #data 0x40a00000
DAT_ce329a8:
    #data 0xc0a00000
DAT_ce329ac:
    #data 0xbdd55555

;=============================================

LAB_ce329b0:
    mova @(DAT_ce32b10,pc),r0
    fmov.s @r0,fr3

LAB_ce329b4:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x3D,r3
    mov.w @(DAT_ce32b04,pc),r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r6,r3
    mov 0x01,r6
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    lds.l @r15+,PR
    mov.l @(PTR_ce32b14,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce329e8:
    mov.w @(DAT_ce32b06,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32a38
    mov 0x22,r0
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce32a38
    mov 0x01,r5
    mov.b r5,@(r0,r14)
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32a16
    mov r5,r0
    nop
    bra LAB_ce32a38
    mov.w r0,@(0x1c,r14)

LAB_ce32a16:
    mov.w @(DAT_ce32b04,pc),r0
    mov 0x3C,r2
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r6,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)

LAB_ce32a38:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a3e:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32b18,pc),r3
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
    bt LAB_ce32aa4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32b1c,pc),r3
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
    mov.l @(PTR_ce32b20,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32abc:
    mov.w @(DAT_ce32b08,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32ad8
    mov.w @(DAT_ce32b0c,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32b0a,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32ad8:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32b24,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
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
    mov.l @(PTR_ce32b14,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    mov 0x02,r6
    lds.l @r15+,PR
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b04:
    #data 0x01a1
DAT_ce32b06:
    #data 0x019e
DAT_ce32b08:
    #data 0x0255
DAT_ce32b0a:
    #data 0x00ff
DAT_ce32b0c:
    #data 0x03f0
    #align4

DAT_ce32b10:
    #data 0x3dd55555
PTR_ce32b14:
    #data loc_8c034e8c
PTR_ce32b18:
    #data loc_8c034dee
PTR_ce32b1c:
    #data loc_8c051648
PTR_ce32b20:
    #data PTR_ce34dc0
PTR_ce32b24:
    #data loc_8c05218a

;=============================================

LAB_ce32b28:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32c24,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32c26,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32c28,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32b4a
    bra LAB_ce32b4c
    mov 0x02,r3

LAB_ce32b4a:
    mov 0x00,r3

LAB_ce32b4c:
    mov.w @(DAT_ce32c2a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32c34,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32c2c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32b98
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32c38,pc),r3
    mov 0x18,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32c2c,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32c2e,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32c3c,pc),r0
    mov.l @(PTR_ce32c44,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32c40,pc),r0
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

LAB_ce32b98:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ba0:
    mov.w @(DAT_ce32c24,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32c26,pc),r0
    mov.l @(PTR_ce32c34,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32c2c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32c1e
    mov.b @(0x7,r14),r0
    mov 0x3E,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mov 0x09,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce32c30,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32c48,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x22,r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32c32,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce32c08
    mova @(DAT_ce32c4c,pc),r0
    bra LAB_ce32c0c
    fmov.s @r0,fr3

LAB_ce32c08:
    mova @(DAT_ce32c50,pc),r0
    fmov.s @r0,fr3

LAB_ce32c0c:
    mov.l @(PTR_ce32c54,pc),r3
    mov 0x5C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x01,r6
    mov 0x05,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32c1e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c24:
    #data 0x03f8
DAT_ce32c26:
    #data 0x0328
DAT_ce32c28:
    #data 0x0255
DAT_ce32c2a:
    #data 0x03f1
DAT_ce32c2c:
    #data 0x0141
DAT_ce32c2e:
    #data 0x03f0
DAT_ce32c30:
    #data 0x01a1
DAT_ce32c32:
    #data 0x01d2
    #align4

PTR_ce32c34:
    #data loc_8c034dee
PTR_ce32c38:
    #data loc_8c042008
DAT_ce32c3c:
    #data 0x422d5555
DAT_ce32c40:
    #data 0x4322db6d
PTR_ce32c44:
    #data loc_8c050834
PTR_ce32c48:
    #data loc_8c2896b0
DAT_ce32c4c:
    #data 0x413aaaaa
DAT_ce32c50:
    #data 0xc13aaaaa
PTR_ce32c54:
    #data loc_8c0cbdfc

;=============================================

LAB_ce32c58:
    mov.w @(DAT_ce32d90,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32d92,pc),r0
    mov.l @(PTR_ce32da0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce32da4,pc),r6
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
    bf/s LAB_ce32d3a
    mov 0x00,r4
    mov.w @(DAT_ce32d94,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32d96,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32d98,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32cdc
    mova @(DAT_ce32da8,pc),r0
    bra LAB_ce32ce0
    fmov.s @r0,fr3

LAB_ce32cdc:
    mova @(DAT_ce32dac,pc),r0
    fmov.s @r0,fr3

LAB_ce32ce0:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d98,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32cf2
    mova @(DAT_ce32db0,pc),r0
    bra LAB_ce32cf6
    fmov.s @r0,fr3

LAB_ce32cf2:
    mova @(DAT_ce32db4,pc),r0
    fmov.s @r0,fr3

LAB_ce32cf6:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32db8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x3F,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32dbc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d9a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r6,r3
    mov 0x03,r6
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    lds.l @r15+,PR
    mov.l @(PTR_ce32dc0,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32d3a:
    mov.w @(DAT_ce32d9c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32d8a
    mov 0x22,r0
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce32d8a
    mov 0x01,r5
    mov.b r5,@(r0,r14)
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32d68
    mov r5,r0
    nop
    bra LAB_ce32d8a
    mov.w r0,@(0x1c,r14)

LAB_ce32d68:
    mov.w @(DAT_ce32d9a,pc),r0
    mov 0x3E,r2
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r6,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)

LAB_ce32d8a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d90:
    #data 0x03f8
DAT_ce32d92:
    #data 0x0328
DAT_ce32d94:
    #data 0x03f9
DAT_ce32d96:
    #data 0x0327
DAT_ce32d98:
    #data 0x01d2
DAT_ce32d9a:
    #data 0x01a1
DAT_ce32d9c:
    #data 0x019e
    #align4

PTR_ce32da0:
    #data loc_8c034dee
PTR_ce32da4:
    #data loc_8c2896b0
DAT_ce32da8:
    #data 0x40a00000
DAT_ce32dac:
    #data 0xc0a00000
DAT_ce32db0:
    #data 0xbd555555
DAT_ce32db4:
    #data 0x3d555555
DAT_ce32db8:
    #data 0xc0cdb6db
DAT_ce32dbc:
    #data 0xbf4db6db
PTR_ce32dc0:
    #data loc_8c034e8c

;=============================================

LAB_ce32dc4:
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
    mov.w @(DAT_ce32f1a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32e36
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov 0x01,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x03,r6
    mov.w @(DAT_ce32f1a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32f1c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32f28,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32f2c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32e36:
    mov.l @(PTR_ce32f30,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32e4c
    lds.l @r15+,PR
    mov.l @(PTR_ce32f34,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e4c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e52:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32f30,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32e7e
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32f38,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e7e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e84:
    mov r4,r3
    mov.l @(PTR_ce32f3c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32e96:
    mov.w @(DAT_ce32f1e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32eb4
    mov.w @(DAT_ce32f22,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32f20,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32eb4:
    mov.b @(0x6,r14),r0
    mov 0x4B,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32f24,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32f40,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32f44,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32f1a,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce32f48,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32f1c,pc),r0
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
    lds.l @r15+,PR
    mov.l @(PTR_ce32f28,pc),r2
    mov 0x04,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f1a:
    #data 0x041c
DAT_ce32f1c:
    #data 0x01f9
DAT_ce32f1e:
    #data 0x0255
DAT_ce32f20:
    #data 0x00ff
DAT_ce32f22:
    #data 0x03f0
DAT_ce32f24:
    #data 0x01a1
    #align4

PTR_ce32f28:
    #data loc_8c034e8c
PTR_ce32f2c:
    #data loc_8c0511b4
PTR_ce32f30:
    #data loc_8c034dee
PTR_ce32f34:
    #data loc_8c05176e
PTR_ce32f38:
    #data loc_8c051648
PTR_ce32f3c:
    #data PTR_ce34dd8
PTR_ce32f40:
    #data loc_8c2896b0
PTR_ce32f44:
    #data loc_8c05218a
PTR_ce32f48:
    #data loc_8c05115a

;=============================================

LAB_ce32f4c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33074,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33076,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33078,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32f70
    bra LAB_ce32f72
    mov 0x02,r3

LAB_ce32f70:
    mov 0x00,r3

LAB_ce32f72:
    mov.w @(DAT_ce3307a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33080,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3307c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32fc0
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    mov.l @(PTR_ce3308c,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce3307c,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3307e,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce33084,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33088,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov 0x07,r0
    mov.w r0,@(0x1c,r14)
    mov r13,r0
    nop
    mov.w r0,@(0x1e,r14)

LAB_ce32fc0:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32fca:
    mov.w @(DAT_ce33074,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33076,pc),r0
    mov.l @(PTR_ce33080,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3307c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33030
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x03,r6
    mov.w @(0x1e,r14),r0
    mov 0x01,r5
    mov.l @(PTR_ce33090,pc),r3
    and r0,r6
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    mov 0x03,r6
    mov.l @(PTR_ce33094,pc),r3
    mov 0x06,r5
    and r0,r6
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    mov 0x03,r6
    mov.l @(PTR_ce33094,pc),r3
    mov 0x0F,r5
    and r0,r6
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33030
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce33030:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33036:
    mov.w @(DAT_ce33074,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33076,pc),r0
    mov.l @(PTR_ce33080,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33080,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3306e
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33098,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3306e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33074:
    #data 0x03f8
DAT_ce33076:
    #data 0x0328
DAT_ce33078:
    #data 0x0255
DAT_ce3307a:
    #data 0x03f1
DAT_ce3307c:
    #data 0x0141
DAT_ce3307e:
    #data 0x03f0
    #align4

PTR_ce33080:
    #data loc_8c034dee
DAT_ce33084:
    #data 0xc2ceaaaa
DAT_ce33088:
    #data 0x43272492
PTR_ce3308c:
    #data loc_8c050834
PTR_ce33090:
    #data loc_8c0778a4
PTR_ce33094:
    #data loc_8c0cbdfc
PTR_ce33098:
    #data loc_8c034e8c

;=============================================

LAB_ce3309c:
    mov.w @(DAT_ce3317c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3317e,pc),r0
    mov.l @(PTR_ce3318c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33180,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce330ee
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x03,r6
    mov.l @(PTR_ce33190,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r5
    mov.w @(DAT_ce33180,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(0x1e,r14),r0
    mov.w @(DAT_ce33182,pc),r3
    and r0,r6
    add r3,r6
    jsr @r2
    mov r14,r4
    mov.w @(0x1e,r14),r0
    mov 0x03,r6
    mov.l @(PTR_ce33194,pc),r3
    mov 0x06,r5
    and r0,r6
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)

LAB_ce330ee:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce330f4:
    mov.w @(DAT_ce3317c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3317e,pc),r0
    mov.l @(PTR_ce3318c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33180,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33174
    mov.w @(DAT_ce33184,pc),r0
    mov 0x00,r13
    mov 0x02,r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33186,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33180,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33188,pc),r0
    mov.b r3,@(r0,r14)
    add 0xD9,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33146
    mova @(DAT_ce33198,pc),r0
    bra LAB_ce3314a
    fmov.s @r0,fr3

LAB_ce33146:
    mova @(DAT_ce3319c,pc),r0
    fmov.s @r0,fr3

LAB_ce3314a:
    mov 0x5C,r0
    mov.l @(PTR_ce33194,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce331a0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x00,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce331a4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x0E,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33174:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3317c:
    #data 0x03f8
DAT_ce3317e:
    #data 0x0328
DAT_ce33180:
    #data 0x0141
DAT_ce33182:
    #data 0x0080
DAT_ce33184:
    #data 0x03f9
DAT_ce33186:
    #data 0x0327
DAT_ce33188:
    #data 0x01f9
    #align4

PTR_ce3318c:
    #data loc_8c034dee
PTR_ce33190:
    #data loc_8c0778a4
PTR_ce33194:
    #data loc_8c0cbdfc
DAT_ce33198:
    #data 0xc1200000
DAT_ce3319c:
    #data 0x41200000
DAT_ce331a0:
    #data 0x411a4924
DAT_ce331a4:
    #data 0xbf4db6db

;=============================================

LAB_ce331a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33304,pc),r3
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
    mov.w @(DAT_ce332fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33200
    mov 0x00,r3
    mov r3,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33308,pc),r3
    mov 0x13,r5
    jsr @r3
    mov r14,r4

LAB_ce33200:
    mov.w @(DAT_ce332fc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3322e
    mov.b @(0x6,r14),r0
    mov 0x03,r3
    mov r14,r4
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    mov.w @(DAT_ce332fc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce332fe,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce3330c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3322e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33234:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33304,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33284
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33300,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33258
    mova @(DAT_ce33310,pc),r0
    bra LAB_ce3325c
    fmov.s @r0,fr3

LAB_ce33258:
    mova @(DAT_ce33314,pc),r0
    fmov.s @r0,fr3

LAB_ce3325c:
    mov 0x5C,r0
    mov.l @(PTR_ce3330c,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33318,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x07,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3331c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33284:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3328a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33304,pc),r3
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
    mov.w @(DAT_ce332fc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce332f4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3330c,pc),r3
    mov 0x08,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    mov.w @(DAT_ce332fc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce332f4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce332fa:
    #data 0x0141
DAT_ce332fc:
    #data 0x041c
DAT_ce332fe:
    #data 0x01f9
DAT_ce33300:
    #data 0x01d2
    #align4

PTR_ce33304:
    #data loc_8c034dee
PTR_ce33308:
    #data loc_8c0cbdfc
PTR_ce3330c:
    #data loc_8c034e8c
DAT_ce33310:
    #data 0xc0555555
DAT_ce33314:
    #data 0x40555555
DAT_ce33318:
    #data 0x40cdb6db
DAT_ce3331c:
    #data 0xbf4db6db

;=============================================

LAB_ce33320:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33474,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33352
    mov.w @(DAT_ce33460,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33478,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33352:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33358:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3347c,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce33462,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3336e:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33464,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce33392
    mov r5,r12
    mov.w @(DAT_ce33468,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33466,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33392:
    mov.b @(0x6,r14),r0
    mov 0x42,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3346a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33480,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33484,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3346c,pc),r0
    fldi0 fr15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33460,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce33488,pc),r3
    mov.b r0,@(0xa,r12)
    mov.b r0,@(0xb,r12)
    mov.b r0,@(0xc,r12)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3348c,pc),r3
    mov 0x02,r1
    mov.w @r3,r2
    cmp/ge r1,r2
    bt LAB_ce3341c
    mov 0x5C,r0
    mov.l @(PTR_ce33478,pc),r2
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
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3341c:
    mov.l @(PTR_ce33490,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33494,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33498,pc),r3
    mov r14,r4
    mov 0x09,r6
    fmov.s @r15+,fr15
    mov 0x16,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3343e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3346e,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33470,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33464,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3349c
    bra LAB_ce3349e
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33460:
    #data 0x01f9
DAT_ce33462:
    #data 0x02a4
DAT_ce33464:
    #data 0x0255
DAT_ce33466:
    #data 0x00ff
DAT_ce33468:
    #data 0x03f0
DAT_ce3346a:
    #data 0x01a1
DAT_ce3346c:
    #data 0x041c
DAT_ce3346e:
    #data 0x03f8
DAT_ce33470:
    #data 0x0328
    
    #align4

PTR_ce33474:
    #data loc_8c034dee
PTR_ce33478:
    #data loc_8c051648
PTR_ce3347c:
    #data PTR_ce34e00
PTR_ce33480:
    #data loc_8c2896b0
PTR_ce33484:
    #data loc_8c05218a
PTR_ce33488:
    #data loc_8c05115a
PTR_ce3348c:
    #data loc_8c287ae8
PTR_ce33490:
    #data loc_8c0783e4
PTR_ce33494:
    #data loc_8c035162
PTR_ce33498:
    #data loc_8c034e8c

;=============================================

LAB_ce3349c:
    mov 0x00,r3

LAB_ce3349e:
    mov.w @(DAT_ce335dc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce335e8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce335de,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce334de
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    fldi0 fr4
    mov r15,r5
    add 0x01,r0
    mov.l @(PTR_ce335f0,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce335de,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce335e0,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce335ec,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov.s fr3,@r15
    fmov fr4,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce334de:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce334e6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce335e2,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce335e4,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce335de,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3350a
    mov.l @(PTR_ce335e8,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3350a:
    mov.l @r15,r2
    mov.b @(0xa,r2),r0
    cmp/pz r0
    bt LAB_ce3351e
    mov 0x0F,r0
    mov.b r0,@(0x6,r14)
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3351e:
    mov.l @r15,r3
    mov.b @(0xa,r3),r0
    tst r0,r0
    bt LAB_ce3354a
    mov.b @(0x6,r14),r0
    mov 0x01,r6
    mov.l @(PTR_ce335f4,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x16,r5
    mov 0x0A,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce335f8,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3354a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33552:
    mov.w @(DAT_ce335e2,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce335e4,pc),r0
    mov.b r2,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33598
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
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce335e6,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce33590
    mova @(DAT_ce335fc,pc),r0
    bra LAB_ce33594
    fmov.s @r0,fr3

LAB_ce33590:
    mova @(DAT_ce33600,pc),r0
    fmov.s @r0,fr3

LAB_ce33594:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)

LAB_ce33598:
    rts
    nop

LAB_ce3359c:
    mov.w @(DAT_ce335e2,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce335e4,pc),r0
    mov.l @(PTR_ce335e8,pc),r3
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
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce335dc:
    #data 0x03f1
DAT_ce335de:
    #data 0x0141
DAT_ce335e0:
    #data 0x03f0
DAT_ce335e2:
    #data 0x03f8
DAT_ce335e4:
    #data 0x0328
DAT_ce335e6:
    #data 0x01d2
    #align4

PTR_ce335e8:
    #data loc_8c034dee
DAT_ce335ec:
    #data 0xc2820000
PTR_ce335f0:
    #data loc_8c050834
PTR_ce335f4:
    #data loc_8c02fec4
PTR_ce335f8:
    #data loc_8c034e8c
DAT_ce335fc:
    #data 0xc0855555
DAT_ce33600:
    #data 0x40855555

;=============================================

LAB_ce33604:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33708,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3370a,pc),r0
    mov.l @(PTR_ce33710,pc),r3
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
    mov.l @r15,r3
    mov.b @(0xb,r3),r0
    tst r0,r0
    bt LAB_ce3365a
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov r14,r4
    mov 0x0B,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33714,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3365a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33662:
    mov.w @(DAT_ce33708,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3370a,pc),r0
    mov.l @(PTR_ce33710,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33686
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce33686:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3368c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33708,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3370a,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @r15,r3
    mov.b @(0xb,r3),r0
    cmp/pz r0
    bt LAB_ce336b8
    mov.l @(PTR_ce33714,pc),r3
    mov 0x0F,r0
    mov 0x16,r5
    mov.b r0,@(0x6,r14)
    mov 0x0D,r6
    jsr @r3
    mov r14,r4

LAB_ce336b8:
    mov.l @r15,r2
    mov 0x02,r3
    mov.b @(0xb,r2),r0
    cmp/ge r3,r0
    bf LAB_ce336da
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3370c,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3370e,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce336da:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce336e2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r5,r3
    mov.l r5,@r15
    mov.b @(0xb,r3),r0
    cmp/pz r0
    bt/s LAB_ce33718
    mov r4,r14
    mov 0x0F,r0
    mov r14,r4
    mov 0x16,r5
    mov.b r0,@(0x6,r14)
    mov 0x0D,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33714,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33708:
    #data 0x03f8
DAT_ce3370a:
    #data 0x0328
DAT_ce3370c:
    #data 0x03f9
DAT_ce3370e:
    #data 0x0327
    #align4

PTR_ce33710:
    #data loc_8c034dee
PTR_ce33714:
    #data loc_8c034e8c

;=============================================

LAB_ce33718:
    mov.w @(DAT_ce3384c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33728
    mov.w @(DAT_ce3384e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3373a

LAB_ce33728:
    mov.w @(DAT_ce33850,pc),r6
    mov.l @(PTR_ce3385c,pc),r5
    mov.l @(PTR_ce33860,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3378c

LAB_ce3373a:
    mov.w @(DAT_ce33852,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce3378c
    mov.b @(0x6,r14),r0
    mov 0x40,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r5
    mov.w @(DAT_ce33854,pc),r0
    mov 0x0C,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33864,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x01,r0
    mov.l @r15,r2
    mov.b r0,@(0xc,r2)
    mov.l @(PTR_ce33868,pc),r2
    jsr @r2
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3386c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3378c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33794:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33870,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33856,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33808
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r15,r5
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33856,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33874,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33878,pc),r0
    mov.l @(PTR_ce3387c,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33864,pc),r4
    mov 0x02,r5
    mov.b @(0x2,r14),r0
    add r14,r5
    mov.l @r4,r3
    extu.b r0,r0
    add 0x74,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce33858,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @r4,r3
    mov.b @r5,r5
    mov r3,r1
    add 0x74,r1
    extu.b r5,r2
    extu.b r5,r0
    add r1,r2
    mov.b @r2,r2
    shll2 r0
    mov 0x76,r1
    shll2 r0
    add r3,r1
    or r2,r0
    mov.b r0,@r1
    mov 0x10,r3
    mov.w @(DAT_ce3385a,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce33808:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33810:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33870,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33856,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33846
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r3,r6
    mov 0x02,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33856,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33880,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33884,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x06,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33846:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3384c:
    #data 0x0525
DAT_ce3384e:
    #data 0x01fe
DAT_ce33850:
    #data 0x03b4
DAT_ce33852:
    #data 0x040c
DAT_ce33854:
    #data 0x01a1
DAT_ce33856:
    #data 0x0141
DAT_ce33858:
    #data 0x0327
DAT_ce3385a:
    #data 0x0328
    #align4

PTR_ce3385c:
    #data DAT_ce34bec
PTR_ce33860:
    #data loc_8c054e58
PTR_ce33864:
    #data loc_8c2896b0
PTR_ce33868:
    #data loc_8c034e8c
PTR_ce3386c:
    #data loc_8c05115a
PTR_ce33870:
    #data loc_8c034dee
DAT_ce33874:
    #data 0xc1855555
DAT_ce33878:
    #data 0x42ebb6db
PTR_ce3387c:
    #data loc_8c050962
PTR_ce33880:
    #data loc_8c0778a4
PTR_ce33884:
    #data loc_8c0cbdfc

;=============================================

LAB_ce33888:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce339bc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce339b4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce338d2
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce339b6,pc),r0
    mov.b r3,@(r0,r14)
    add 0xD9,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce338b4
    mova @(DAT_ce339c0,pc),r0
    bra LAB_ce338b8
    fmov.s @r0,fr3

LAB_ce338b4:
    mova @(DAT_ce339c4,pc),r0
    fmov.s @r0,fr3

LAB_ce338b8:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce339c8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce339cc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce338d2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce338d8:
    bra LAB_ce331a8
    nop

LAB_ce338dc:
    bra LAB_ce33234
    nop

LAB_ce338e0:
    bra LAB_ce3328a
    nop

LAB_ce338e4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce339bc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33920
    mov.w @(DAT_ce339b6,pc),r0
    mov 0x00,r3
    mov r3,r5
    mov r3,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce339d0,pc),r3
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
    mov.l @(PTR_ce339d4,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33920:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33926:
    mov r4,r3
    mov.l @(PTR_ce339d8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33938:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce339dc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce339b8,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov 0x01,r7
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov 0x04,r5
    mov r7,r6
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce339b6,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce339e0,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce339e4,pc),r3
    mov r14,r4
    mov.l @(PTR_ce339e8,pc),r2
    mov 0x15,r5
    mov.l @r3,r0
    mov.w @(0x1c,r0),r0
    and 0x01,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1e,r14),r0
    lds.l @r15+,PR
    mov r0,r6
    add 0x13,r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce33992:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce339bc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce339b4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce339ae
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x78,r0
    mov.w r0,@(0x1c,r14)

LAB_ce339ae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce339b4:
    #data 0x0141
DAT_ce339b6:
    #data 0x01f9
DAT_ce339b8:
    #data 0x041c
    #align4

PTR_ce339bc:
    #data loc_8c034dee
DAT_ce339c0:
    #data 0xc1200000
DAT_ce339c4:
    #data 0x41200000
DAT_ce339c8:
    #data 0x411a4924
DAT_ce339cc:
    #data 0xbf4db6db
PTR_ce339d0:
    #data loc_8c02fec4
PTR_ce339d4:
    #data loc_8c051648
PTR_ce339d8:
    #data PTR_ce34e40
PTR_ce339dc:
    #data loc_8c05218a
PTR_ce339e0:
    #data loc_8c03544c
PTR_ce339e4:
    #data loc_8c26823c
PTR_ce339e8:
    #data loc_8c034e8c

;=============================================

LAB_ce339ec:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x2,r14),r0
    mov.l @(PTR_ce33aec,pc),r1
    extu.b r0,r0
    mov r0,r3
    shll r0
    add r3,r0
    shll2 r0
    bsr FUN_ce33b08
    mov.l @(r0,r1),r13
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce33a56
    mov.w @(DAT_ce33ae8,pc),r0
    mov.w @(r0,r13),r3
    tst r3,r3
    bf LAB_ce33a1c
    mov.w @(DAT_ce33aea,pc),r0
    mov.b @(r0,r13),r3
    tst r3,r3
    bf LAB_ce33a52

LAB_ce33a1c:
    mov.b @(0x6,r14),r0
    mov 0x08,r5
    mov.l @(PTR_ce33af0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(0x1e,r14),r0
    mov r0,r6
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt/s LAB_ce33a3a
    mov r13,r4
    bra LAB_ce33a3c
    mov 0x14,r5

LAB_ce33a3a:
    mov 0x0A,r5

LAB_ce33a3c:
    mov.l @(PTR_ce33af4,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce33af8,pc),r3
    mov 0x04,r5
    jsr @r3
    mov r13,r4
    mov.w @(0x1e,r14),r0
    mov r0,r6
    bra LAB_ce33a6e
    add 0x15,r6

LAB_ce33a52:
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce33a56:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33a7c
    mov.b @(0x6,r14),r0
    add 0x02,r0
    mov.b r0,@(0x6,r14)
    mov.w @(0x1e,r14),r0
    mov r0,r6
    add 0x17,r6

LAB_ce33a6e:
    lds.l @r15+,PR
    mov.l @(PTR_ce33afc,pc),r3
    mov r14,r4
    mov 0x15,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33a7c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33a84:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33b00,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33ab0
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33b04,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33ab0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33ab6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33b00,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33ae2
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33b04,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33ae2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33ae8:
    #data 0x0420
DAT_ce33aea:
    #data 0x0411
    #align4

PTR_ce33aec:
    #data loc_8c289608
PTR_ce33af0:
    #data loc_8c0cbdfc
PTR_ce33af4:
    #data loc_8c059150
PTR_ce33af8:
    #data loc_8c104df8
PTR_ce33afc:
    #data loc_8c034e8c
PTR_ce33b00:
    #data loc_8c034dee
PTR_ce33b04:
    #data loc_8c051648

;=============================================

FUN_ce33b08:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce33bf8,pc),r1
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b @(0x2,r14),r0
    mov.l @(PTR_ce33bfc,pc),r10
    extu.b r0,r0
    mov r0,r3
    shll r0
    add r3,r0
    shll2 r0
    mov.l @(r0,r1),r13
    mov.w @(DAT_ce33bf6,pc),r0
    mov.l @(r0,r13),r12
    mov.l @(r0,r14),r11
    mov.w @(0x4,r12),r0
    mov r0,r7
    mov.w @(0x2,r11),r0
    extu.b r0,r6
    jsr @r10
    mov r13,r5
    tst r0,r0
    bf LAB_ce33b7a
    mov.w @(0x6,r12),r0
    mov r13,r5
    mov r0,r7
    mov.w @(0x2,r11),r0
    extu.b r0,r6
    jsr @r10
    mov r14,r4
    tst r0,r0
    bf LAB_ce33b7a
    mov.w @(0x8,r12),r0
    mov r13,r5
    mov r0,r7
    mov.w @(0x2,r11),r0
    extu.b r0,r6
    jsr @r10
    mov r14,r4
    tst r0,r0
    bf LAB_ce33b7a
    mov.w @(0xa,r12),r0
    tst r0,r0
    bt LAB_ce33b7e
    mov.w @(0xa,r12),r0
    mov r13,r5
    mov r0,r7
    mov.w @(0x2,r11),r0
    extu.b r0,r6
    jsr @r10
    mov r14,r4
    tst r0,r0
    bt LAB_ce33b7e

LAB_ce33b7a:
    bra LAB_ce33b80
    mov 0x01,r0

LAB_ce33b7e:
    mov 0x00,r0

LAB_ce33b80:
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33b8e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce33bae
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33c00,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33bae:
    mov.l @(PTR_ce33c04,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33bde
    mov.l @(PTR_ce33c08,pc),r3
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
    mov.l @(PTR_ce33c0c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33bde:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33be4:
    mov r4,r3
    mov.l @(PTR_ce33c10,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33bf6:
    #data 0x01c0
    #align4

PTR_ce33bf8:
    #data loc_8c289608
PTR_ce33bfc:
    #data loc_8c04598c
PTR_ce33c00:
    #data loc_8c034e8c
PTR_ce33c04:
    #data loc_8c034dee
PTR_ce33c08:
    #data loc_8c035162
PTR_ce33c0c:
    #data loc_8c051648
PTR_ce33c10:
    #data PTR_ce34e54

;=============================================

LAB_ce33c14:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce33d0c,pc),r3
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
    mov.w @(DAT_ce33d02,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33d04,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33d10,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33d14,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33d06,pc),r0
    mov 0x34,r2
    mov.l @(PTR_ce33d18,pc),r3
    mov 0x19,r6
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
    mov.l @(PTR_ce33d1c,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33c8a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33d20,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33caa
    mov.l @(PTR_ce33d24,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33caa:
    mov.w @(DAT_ce33d08,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt/s LAB_ce33cd4
    mov 0x00,r4
    mov.w @(DAT_ce33d08,pc),r0
    mov r15,r5
    mov.l @(PTR_ce33d2c,pc),r3
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33d28,pc),r0
    fldi0 fr4
    fmov.s fr4,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    bra LAB_ce33ce8
    nop

LAB_ce33cd4:
    mov.w @(DAT_ce33d08,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce33ce8
    mov.w @(DAT_ce33d08,pc),r0
    mov 0x16,r5
    mov.l @(PTR_ce33d30,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce33ce8:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33cf0:
    mov r4,r3
    mov.l @(PTR_ce33d34,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33d02:
    #data 0x01f9
DAT_ce33d04:
    #data 0x041c
DAT_ce33d06:
    #data 0x01a1
DAT_ce33d08:
    #data 0x0141
    #align4

PTR_ce33d0c:
    #data loc_8c035162
PTR_ce33d10:
    #data loc_8c05218a
PTR_ce33d14:
    #data loc_8c05115a
PTR_ce33d18:
    #data loc_8c2896b0
PTR_ce33d1c:
    #data loc_8c034e8c
PTR_ce33d20:
    #data loc_8c034dee
PTR_ce33d24:
    #data loc_8c051648
DAT_ce33d28:
    #data 0x42564924
PTR_ce33d2c:
    #data loc_8c050ea4
PTR_ce33d30:
    #data loc_8c04223a
PTR_ce33d34:
    #data PTR_ce34e5c

;=============================================

LAB_ce33d38:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce33e6c,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33e64,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33e70,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33e66,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33d68
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33d68:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33e74,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x33,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33e78,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce33e68,pc),r0
    mov r4,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33e7c,pc),r3
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
    mov.l @(PTR_ce33e80,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33db2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33e84,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce33e88,pc),r3
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
    bt LAB_ce33e1a
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33e8c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33e80,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33e1a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33e20:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33e84,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33e3a
    lds.l @r15+,PR
    mov.l @(PTR_ce33e90,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33e3a:
    mov.w @(DAT_ce33e6a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33e46
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce33e46:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33e4c:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33e64,pc),r1
    mov.l @(PTR_ce33e94,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33e64:
    #data 0x01f9
DAT_ce33e66:
    #data 0x01d2
DAT_ce33e68:
    #data 0x01a1
DAT_ce33e6a:
    #data 0x0141
    #align4

PTR_ce33e6c:
    #data loc_8c035162
DAT_ce33e70:
    #data 0x41f00000
DAT_ce33e74:
    #data 0x40892492
DAT_ce33e78:
    #data 0xbf4db6db
PTR_ce33e7c:
    #data loc_8c2896b0
PTR_ce33e80:
    #data loc_8c034e8c
PTR_ce33e84:
    #data loc_8c034dee
PTR_ce33e88:
    #data loc_8c052ce2
PTR_ce33e8c:
    #data loc_8c0511b4
PTR_ce33e90:
    #data loc_8c051854
PTR_ce33e94:
    #data PTR_ce34e68

;=============================================

LAB_ce33e98:
    mov.w @(DAT_ce33f68,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33f6a,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33ee4
    mov.w @(DAT_ce33f6c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33ee4
    mov.w @(DAT_ce33f6e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33ee4
    mov.l @(PTR_ce33f74,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33ee4
    mov r0,r4
    mov.w @(DAT_ce33f70,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33ee4:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33eec:
    rts
    mov 0x00,r0

LAB_ce33ef0:
    mov.w @(DAT_ce33f68,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33f6a,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33f48
    mov.w @(DAT_ce33f6c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33f48
    mov.w @(DAT_ce33f6e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33f48
    mova @(DAT_ce33f78,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce33f48
    mov.l @(PTR_ce33f74,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33f48
    mov r0,r4
    mov.w @(DAT_ce33f70,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33f48:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33f50:
    #data 0x2f46
    #data 0x6043
    #data 0x0009
    #data 0x910b
    #data 0xd208
    #data 0x001c
    #data 0x600c
    #data 0xc93f
    #data 0x4008
    #data 0x032e
    #data 0x432b
    #data 0x7f04
DAT_ce33f68:
    #data 0x01fa
DAT_ce33f6a:
    #data 0x0c00
DAT_ce33f6c:
    #data 0x01fe
DAT_ce33f6e:
    #data 0x01a3
DAT_ce33f70:
    #data 0x01f7
    #align4

PTR_ce33f74:
    #data loc_8c045790
DAT_ce33f78:
    #data 0x43092492
PTR_ce33f7c:
    #data PTR_ce34e78

;=============================================

LAB_ce33f80:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xEC,r15
    mov.l @(PTR_ce340bc,pc),r3
    mov 0x06,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.l @(PTR_ce340c0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce340b4,pc),r0
    mov 0x0A,r3
    mov r15,r5
    add 0x08,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce340c4,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    mov.l @(PTR_ce340cc,pc),r3
    fmov fr3,@(r0,r15)
    mova @(DAT_ce340c8,pc),r0
    fmov.s @r0,fr3
    mov 0x0C,r0
    fmov fr3,@(r0,r15)
    mov 0x10,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce340b6,pc),r0
    mov.w @(DAT_ce340b8,pc),r3
    mov.l @(r0,r14),r4
    mov 0x00,r0
    mov.l @(DAT_ce340d0,pc),r2
    mov.l r4,@(0x4,r15)
    add r3,r4
    mov.l @(0x4,r4),r1
    and r2,r1
    or r0,r1
    tst r1,r1
    bt LAB_ce33fea
    mov.w @(DAT_ce340b6,pc),r0
    mov.l @(r0,r14),r3
    mova @(DAT_ce340d4,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce340ba,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r3)
    bra LAB_ce34010
    nop

LAB_ce33fea:
    mov.w @(DAT_ce340b6,pc),r0
    mov.w @(DAT_ce340b8,pc),r3
    mov.l @(r0,r14),r4
    mov.l @(DAT_ce340d8,pc),r1
    mov.l r4,@r15
    add r3,r4
    mov.l @r4,r0
    and r1,r0
    tst r0,r0
    bt LAB_ce34010
    mov.w @(DAT_ce340b6,pc),r0
    mov.l @(r0,r14),r2
    mova @(DAT_ce340dc,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce340ba,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r2)

LAB_ce34010:
    mov.l @(PTR_ce340e0,pc),r3
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov r14,r2
    mov.l @(PTR_ce340e4,pc),r3
    mov r15,r1
    add 0x34,r2
    add 0x08,r1
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce340b6,pc),r0
    mov.l @(PTR_ce340e8,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov r15,r2
    mov.l @(PTR_ce340e4,pc),r3
    mov r14,r1
    add 0x08,r2
    add 0x34,r1
    jsr @r3
    mov 0x0C,r0
    add 0x14,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34048:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce340bc,pc),r3
    mov 0x06,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.l @(PTR_ce340c0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce340b4,pc),r0
    mov 0x0A,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce340c4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce340c8,pc),r0
    mov.l @(PTR_ce340cc,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce340e0,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce340e4,pc),r3
    mov r14,r2
    mov r15,r1
    add 0x34,r2
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce340b6,pc),r0
    mov.l @(PTR_ce340e8,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce340e4,pc),r3
    mov r14,r1
    mov r15,r2
    add 0x34,r1
    jsr @r3
    mov 0x0C,r0
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce340b4:
    #data 0x01a0
DAT_ce340b6:
    #data 0x01c8
DAT_ce340b8:
    #data 0x0414
DAT_ce340ba:
    #data 0x041c
    #align4

PTR_ce340bc:
    #data loc_8c02fec4
PTR_ce340c0:
    #data loc_8c056f2a
DAT_ce340c4:
    #data 0xc2b40000
DAT_ce340c8:
    #data 0x431a4924
PTR_ce340cc:
    #data loc_8c103660
DAT_ce340d0:
    #data 0x04000000
DAT_ce340d4:
    #data 0x43009249
DAT_ce340d8:
    #data 0x20000000
DAT_ce340dc:
    #data 0x422b6db6
PTR_ce340e0:
    #data loc_8c034e8c
PTR_ce340e4:
    #data loc_8c1294c8
PTR_ce340e8:
    #data loc_8c04ce54

;=============================================

LAB_ce340ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xD4,r15
    mov.l @(PTR_ce341b8,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.l @(PTR_ce341bc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce341b2,pc),r0
    mov 0x0A,r3
    mov r15,r5
    add 0x20,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce341c0,pc),r0
    fmov.s @r0,fr3
    mov 0x20,r0
    mov.l @(PTR_ce341c8,pc),r3
    fmov fr3,@(r0,r15)
    mova @(DAT_ce341c4,pc),r0
    fmov.s @r0,fr3
    mov 0x24,r0
    fmov fr3,@(r0,r15)
    mov 0x28,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce341cc,pc),r2
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    mov r15,r4
    add 0x08,r4
    mov r14,r2
    mov.l @(PTR_ce341d0,pc),r3
    mov r4,r1
    add 0x34,r2
    mov.l r1,@(0x4,r15)
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce341b4,pc),r0
    mov r4,r1
    mov.l @(PTR_ce341d0,pc),r3
    add 0x0C,r1
    mov.l r1,@r15
    mov.l @(r0,r14),r2
    add 0x34,r2
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce341b4,pc),r0
    mov.l @(PTR_ce341d4,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce341d0,pc),r3
    mov r14,r1
    mov.l @(0x4,r15),r2
    add 0x34,r1
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce341b4,pc),r0
    mov.l @(PTR_ce341d0,pc),r3
    mov.l @(r0,r14),r1
    mov.l @r15,r2
    add 0x34,r1
    jsr @r3
    mov 0x0C,r0
    add 0x2C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34182:
    mov.w @(DAT_ce341b6,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce341d8,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce341a0:
    mov r4,r3
    mov.l @(PTR_ce341dc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce341b2:
    #data 0x01a0
DAT_ce341b4:
    #data 0x01c8
DAT_ce341b6:
    #data 0x01ea
    #align4

PTR_ce341b8:
    #data loc_8c02fec4
PTR_ce341bc:
    #data loc_8c056f2a
DAT_ce341c0:
    #data 0xc2fd5555
DAT_ce341c4:
    #data 0x4304db6d
PTR_ce341c8:
    #data loc_8c103660
PTR_ce341cc:
    #data loc_8c034e8c
PTR_ce341d0:
    #data loc_8c1294c8
PTR_ce341d4:
    #data loc_8c04cc1c
PTR_ce341d8:
    #data PTR_ce34e8c
PTR_ce341dc:
    #data PTR_ce34ea0

;=============================================

LAB_ce341e0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xE4,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov r15,r4
    mov r14,r2
    mov.l @(PTR_ce34344,pc),r3
    add 0x04,r4
    add 0x01,r0
    mov r4,r13
    add 0x34,r2
    mov.b r0,@(0x6,r14)
    mov r4,r1
    jsr @r3
    mov 0x0C,r0
    mov r13,r1
    mov r14,r2
    mov.l @(PTR_ce34344,pc),r3
    add 0x0C,r1
    add 0x34,r2
    mov.l r1,@r15
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce3433c,pc),r0
    mov.l @(PTR_ce34348,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov 0x34,r0
    fmov.s @r13,fr3
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    mov r14,r1
    mov.l @(PTR_ce34344,pc),r3
    fsub fr3,fr2
    add 0x34,r1
    fmov.s fr2,@r13
    fmov.s @(r0,r13),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fsub fr3,fr2
    fmov fr2,@(r0,r13)
    mov.l @r15,r2
    jsr @r3
    mov 0x0C,r0
    mova @(DAT_ce3434c,pc),r0
    fmov.s @r0,fr4
    mov 0x04,r0
    fmov.s @(r0,r13),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r13)
    mov.w @(DAT_ce3433e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    and 0x3F,r0
    cmp/eq 0x01,r0
    bt/s LAB_ce34266
    fldi0 fr5
    mov 0x04,r0
    fldi0 fr3
    fmov.s @(r0,r13),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce34266
    fmov fr5,@(r0,r13)

LAB_ce34266:
    fmov.s @r13,fr3
    mov 0x5C,r0
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)
    mova @(DAT_ce34350,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov.s @(r0,r13),fr2
    mov 0x60,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce34354,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    add 0x1C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34292:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34358,pc),r3
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
    mov.w @(DAT_ce34340,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce342e8
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34340,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce342e8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce342ee:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34358,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34340,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce343b2
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x00,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x6,r14)
    mov 0x02,r2
    mov.w @(DAT_ce34340,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce3433c,pc),r0
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce3435c,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3433e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce34360
    bra LAB_ce34362
    mov 0x21,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3433c:
    #data 0x01c8
DAT_ce3433e:
    #data 0x01f7
DAT_ce34340:
    #data 0x0141
    #align4

PTR_ce34344:
    #data loc_8c1294c8
PTR_ce34348:
    #data loc_8c04ce54
DAT_ce3434c:
    #data 0x41000000
DAT_ce34350:
    #data 0x40092492
DAT_ce34354:
    #data 0xbf092492
PTR_ce34358:
    #data loc_8c034dee
PTR_ce3435c:
    #data loc_8c02fec4

;=============================================

LAB_ce34360:
    mov 0x20,r2

LAB_ce34362:
    mov.w @(DAT_ce34482,pc),r0
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34374
    mova @(DAT_ce34488,pc),r0
    bra LAB_ce34378
    fmov.s @r0,fr3

LAB_ce34374:
    mova @(DAT_ce3448c,pc),r0
    fmov.s @r0,fr3

LAB_ce34378:
    mov 0x5C,r0
    mov.l @(PTR_ce344a0,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34490,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov r15,r5
    mov 0x0C,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34494,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34498,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3449c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce344a4,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4

LAB_ce343b2:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce343bc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce344a8,pc),r3
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
    bt/s LAB_ce34438
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce34484,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce34438
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34484,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34486,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce344ac,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce344b0,pc),r2
    mov r14,r4
    mov 0x05,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce34438:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3443e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce344a8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3446a
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce344b4,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3446a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34470:
    mov r4,r3
    mov.l @(PTR_ce344b8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34482:
    #data 0x01a1
DAT_ce34484:
    #data 0x041c
DAT_ce34486:
    #data 0x01f9
    #align4

DAT_ce34488:
    #data 0xc0a00000
DAT_ce3448c:
    #data 0x40a00000
DAT_ce34490:
    #data 0x414db6db
DAT_ce34494:
    #data 0xbf4db6db
DAT_ce34498:
    #data 0xc2fa0000
DAT_ce3449c:
    #data 0x430d6db7
PTR_ce344a0:
    #data loc_8c0fdab6
PTR_ce344a4:
    #data loc_8c04223a
PTR_ce344a8:
    #data loc_8c034dee
PTR_ce344ac:
    #data loc_8c0511b4
PTR_ce344b0:
    #data loc_8c034e8c
PTR_ce344b4:
    #data loc_8c051648
PTR_ce344b8:
    #data PTR_ce34eb4

;=============================================

LAB_ce344bc:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xEC,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov r15,r4
    add 0x08,r4
    add 0x01,r0
    mov r4,r3
    mov.b r0,@(0x6,r14)
    mov 0x34,r0
    mov.l r3,@(0x4,r15)
    mov r4,r13
    fmov.s @(r0,r14),fr3
    add 0x08,r13
    mov.w @(DAT_ce34614,pc),r0
    fmov.s fr3,@r3
    add 0x04,r3
    mov.l r3,@r15
    mov.l @(r0,r14),r2
    mov 0x34,r0
    fmov.s @(r0,r2),fr3
    mov.w @(DAT_ce34614,pc),r0
    fmov.s fr3,@r3
    mov.l @(r0,r14),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fmov.s @(r0,r3),fr2
    mov.w @(DAT_ce34614,pc),r0
    fsub fr3,fr2
    mov.l @(PTR_ce34618,pc),r3
    fmov.s fr2,@r13
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34614,pc),r0
    fldi0 fr4
    mov.l @(r0,r14),r2
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fmov.s @(r0,r2),fr2
    mova @(DAT_ce3461c,pc),r0
    fsub fr3,fr2
    fmov.s @r13,fr3
    fsub fr3,fr2
    fmov.s fr2,@r13
    fmov.s @r0,fr3
    mov 0x34,r0
    fdiv fr3,fr2
    fmov.s fr2,@r13
    mov.l @(0x4,r15),r3
    fmov.s @r3,fr2
    fmov fr2,@(r0,r14)
    mov.l @r15,r2
    mov.w @(DAT_ce34614,pc),r0
    fmov.s @r2,fr2
    mov.l @(r0,r14),r3
    mov 0x34,r0
    fmov fr2,@(r0,r3)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce34614,pc),r0
    mov.l @(r0,r14),r3
    mov 0x5C,r0
    fmov fr4,@(r0,r3)
    mov.w @(DAT_ce34614,pc),r0
    mov.l @(r0,r14),r3
    mov 0x60,r0
    fmov fr4,@(r0,r3)
    mov.w @(DAT_ce34614,pc),r0
    mov.l @(r0,r14),r3
    mov 0x68,r0
    fmov fr4,@(r0,r3)
    mov.w @(DAT_ce34614,pc),r0
    mov.l @(r0,r14),r3
    mov 0x6C,r0
    fmov fr4,@(r0,r3)
    mov.w @(DAT_ce34614,pc),r0
    fmov.s @r13,fr2
    mov.l @(r0,r14),r3
    mov 0x5C,r0
    fmov fr2,@(r0,r3)
    fmov.s @r13,fr2
    fneg fr2
    fmov fr2,@(r0,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    add 0x14,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34582:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34620,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34614,pc),r0
    mov.l @(r0,r14),r2
    add 0x35,r0
    mov.b @(r0,r2),r3
    tst r3,r3
    bt LAB_ce345b6
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
    bra LAB_ce345da
    fmov fr2,@(r0,r14)

LAB_ce345b6:
    mov.w @(DAT_ce34614,pc),r0
    mov 0x5C,r1
    mov.l @(r0,r14),r4
    mov 0x34,r0
    add r4,r1
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov.w @(DAT_ce34614,pc),r0
    mov.l @(r0,r14),r4
    mov 0x5C,r0
    add r4,r1
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)

LAB_ce345da:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3460e
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r0
    mov.w r0,@(0x1c,r14)
    mov 0x22,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce34614,pc),r0
    mov.l @(PTR_ce34618,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34624,pc),r2
    mov r14,r4
    mov 0x02,r6
    mov 0x0F,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3460e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34614:
    #data 0x01c8
    #align4

PTR_ce34618:
    #data loc_8c04cc1c
DAT_ce3461c:
    #data 0x41800000
PTR_ce34620:
    #data loc_8c034dee
PTR_ce34624:
    #data loc_8c034e8c

;=============================================

LAB_ce34628:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3470e,pc),r0
    mov r4,r14
    mov.l @(r0,r14),r3
    mov.l r3,@r15
    mov.l @(PTR_ce3471c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34710,pc),r0
    mov.l @r15,r2
    mov.w @(r0,r2),r3
    tst r3,r3
    bt LAB_ce34652
    mov.l @(PTR_ce34720,pc),r1
    mov 0x05,r2
    mov.b @r1,r3
    extu.b r3,r3
    cmp/ge r2,r3
    bf LAB_ce3465c

LAB_ce34652:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce34950
    mov.l @r15+,r14

LAB_ce3465c:
    mov.w @(DAT_ce34712,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34696
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    bsr FUN_ce348a4
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce34696
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov r14,r4
    mov 0x0B,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x07,r0
    mov.w r0,@(0x1c,r14)
    mov 0x0C,r0
    mov.w r0,@(0x1e,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce34724,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34696:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3469e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3470e,pc),r0
    mov r4,r14
    mov.l @(r0,r14),r3
    mov.l r3,@r15
    mov.l @(PTR_ce3471c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce346d4
    mov.w @(DAT_ce34710,pc),r0
    mov.l @r15,r2
    mov.w @(r0,r2),r3
    tst r3,r3
    bt LAB_ce346d4
    mov.l @(PTR_ce34720,pc),r1
    mov 0x05,r2
    mov.b @r1,r3
    extu.b r3,r3
    cmp/ge r2,r3
    bf LAB_ce346de

LAB_ce346d4:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce34950
    mov.l @r15+,r14

LAB_ce346de:
    mov.w @(DAT_ce34714,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce346f4
    mov.l @(PTR_ce34728,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce34706
    bra LAB_ce34700
    nop

LAB_ce346f4:
    mov.w @(DAT_ce34716,pc),r0
    mov.w @(DAT_ce34718,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce34706

LAB_ce34700:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce34706:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3470e:
    #data 0x01c8
DAT_ce34710:
    #data 0x0420
DAT_ce34712:
    #data 0x0141
DAT_ce34714:
    #data 0x0525
DAT_ce34716:
    #data 0x034e
DAT_ce34718:
    #data 0x0300
    #align4

PTR_ce3471c:
    #data loc_8c034dee
PTR_ce34720:
    #data loc_8c2895f0
PTR_ce34724:
    #data loc_8c034e8c
PTR_ce34728:
    #data loc_8c055d54

;=============================================

LAB_ce3472c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3484c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34764
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt/s LAB_ce34754
    mov 0x0F,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bra LAB_ce3475a
    mov 0x03,r6

LAB_ce34754:
    mov 0x06,r0
    mov 0x05,r6
    mov.b r0,@(0x6,r14)

LAB_ce3475a:
    lds.l @r15+,PR
    mov.l @(PTR_ce34850,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34764:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3476a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3484c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34844,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3478c
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    bsr FUN_ce348a4
    mov r14,r4
    mov 0x03,r0
    mov.b r0,@(0x6,r14)
    mov 0x0C,r0
    mov.w r0,@(0x1e,r14)

LAB_ce3478c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34792:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce3484c,pc),r3
    mov r4,r14
    jsr @r3
    fldi0 fr15
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce34882
    mov.w @(DAT_ce34844,pc),r0
    mov.l @(PTR_ce34854,pc),r13
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bt LAB_ce347bc
    cmp/eq 0x02,r0
    bt LAB_ce34870
    bra LAB_ce34898
    nop

LAB_ce347bc:
    mov.w @(DAT_ce34844,pc),r0
    mov 0x00,r3
    mov r3,r5
    mov r3,r6
    mov.b r3,@(r0,r14)
    jsr @r13
    mov r14,r4
    mov 0x02,r5
    mov 0x00,r6
    jsr @r13
    mov r14,r4
    mov.l @(PTR_ce34858,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34846,pc),r0
    mov 0x01,r3
    mov 0x24,r2
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0xAB,r0
    mov.b r2,@(r0,r13)
    mov 0x34,r0
    fmov.s @(r0,r13),fr2
    fmov.s @(r0,r14),fr3
    fsub fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf/s LAB_ce34806
    fmov.s fr2,@r15
    fmov.s @r15,fr2
    fneg fr2
    fmov.s fr2,@r15

LAB_ce34806:
    mov.w @(DAT_ce34848,pc),r0
    mov r15,r5
    mov 0x01,r6
    mov.b @(r0,r13),r3
    mova @(DAT_ce3485c,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce34860,pc),r0
    extu.b r3,r3
    fmov.s @r0,fr1
    lds r3,FPUL
    mov 0x04,r0
    mov.l @(PTR_ce34864,pc),r3
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr15,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34868,pc),r2
    mov r14,r5
    mov 0x01,r6
    jsr @r2
    mov r13,r4
    mov.l @(PTR_ce3486c,pc),r3
    mov 0x07,r5
    jsr @r3
    mov r14,r4
    bra LAB_ce34898
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34844:
    #data 0x0141
DAT_ce34846:
    #data 0x01c8
DAT_ce34848:
    #data 0x013c
    #align4

PTR_ce3484c:
    #data loc_8c034dee
PTR_ce34850:
    #data loc_8c034e8c
PTR_ce34854:
    #data loc_8c0cbdfc
PTR_ce34858:
    #data loc_8c02fec4
DAT_ce3485c:
    #data 0x40092492
DAT_ce34860:
    #data 0x3fe66666
PTR_ce34864:
    #data loc_8c0fdab6
PTR_ce34868:
    #data loc_8c05a49c
PTR_ce3486c:
    #data loc_8c04223a

;=============================================

LAB_ce34870:
    mov.w @(DAT_ce349c8,pc),r0
    mov 0x00,r3
    mov 0x01,r5
    mov r3,r6
    mov.b r3,@(r0,r14)
    jsr @r13
    mov r14,r4
    bra LAB_ce34898
    nop

LAB_ce34882:
    mov 0x5C,r0
    mov.l @(PTR_ce349d4,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce34898:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce348a4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce349ca,pc),r0
    mov r4,r14
    mov 0x00,r6
    mov.l @(PTR_ce349d8,pc),r2
    mov.l @(r0,r14),r13
    mov 0x22,r0
    mov.b @(r0,r14),r3
    mov r6,r5
    add 0x01,r3
    mov.b r3,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce349d8,pc),r3
    mov 0x02,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce349cc,pc),r0
    mov 0x22,r2
    mov.l @(PTR_ce349dc,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov 0x34,r0
    fmov.s @(r0,r13),fr2
    fmov.s @(r0,r14),fr3
    fsub fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf/s LAB_ce348f0
    fmov.s fr2,@r15
    fmov.s @r15,fr2
    fneg fr2
    fmov.s fr2,@r15

LAB_ce348f0:
    mov.w @(DAT_ce349ce,pc),r0
    mov r15,r5
    mov 0x01,r6
    mov.b @(r0,r13),r3
    mova @(DAT_ce349e0,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce349e4,pc),r0
    extu.b r3,r3
    fmov.s @r0,fr1
    lds r3,FPUL
    mov 0x04,r0
    mov.l @(PTR_ce349e8,pc),r3
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce349ec,pc),r2
    mov r14,r5
    mov 0x01,r6
    jsr @r2
    mov r13,r4
    mov.l @(PTR_ce349f0,pc),r3
    mov 0x07,r5
    jsr @r3
    mov r14,r4
    mov 0x22,r0
    mov.b @(r0,r14),r0
    mov 0x01,r6
    extu.b r0,r0
    tst r0,r6
    bt/s LAB_ce3493e
    mov 0x0D,r5
    bra LAB_ce34940
    mov 0x03,r6

LAB_ce3493e:
    mov 0x00,r6

LAB_ce34940:
    mov.l @(PTR_ce349f4,pc),r3
    jsr @r3
    mov r13,r4
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34950:
    mov.w @(DAT_ce349ca,pc),r0
    mov 0x00,r6
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r6,r5
    sts.l PR,@-r15
    mov.l @(r0,r14),r13
    mov 0x06,r0
    mov.l @(PTR_ce349f8,pc),r3
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce349d0,pc),r0
    mov 0x01,r3
    mov 0x23,r2
    mov r14,r4
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0xAB,r0
    mov.b r2,@(r0,r13)
    mov 0x04,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce349f4,pc),r3
    mov 0x0F,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3498a:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce349d2,pc),r1
    mov.l @(PTR_ce349fc,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce349a2:
    mov.w @(DAT_ce349ca,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(r0,r14),r3
    mov.b @(0x6,r3),r0
    mov 0x02,r3
    extu.b r0,r0
    cmp/ge r3,r0
    bf LAB_ce349c0
    mov.w @(DAT_ce349ca,pc),r0
    mov r14,r5
    mov.l @(PTR_ce34a00,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce349c0:
    rts
    mov.l @r15+,r14

LAB_ce349c4:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce349c8:
    #data 0x0141
DAT_ce349ca:
    #data 0x01c8
DAT_ce349cc:
    #data 0x01a1
DAT_ce349ce:
    #data 0x013c
DAT_ce349d0:
    #data 0x01b4
DAT_ce349d2:
    #data 0x01f7
    #align4

PTR_ce349d4:
    #data loc_8c051648
PTR_ce349d8:
    #data loc_8c0cbdfc
PTR_ce349dc:
    #data loc_8c05933c
DAT_ce349e0:
    #data 0x40092492
DAT_ce349e4:
    #data 0x3fe66666
PTR_ce349e8:
    #data loc_8c0fdab6
PTR_ce349ec:
    #data loc_8c05a49c
PTR_ce349f0:
    #data loc_8c04223a
PTR_ce349f4:
    #data loc_8c034e8c
PTR_ce349f8:
    #data loc_8c02fec4
PTR_ce349fc:
    #data PTR_ce34ed0
PTR_ce34a00:
    #data loc_8c04ce3a

;=============================================

LAB_ce34a04:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34ad2,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34a2a
    mov 0x08,r5
    cmp/eq 0x01,r0
    bt LAB_ce34a22
    cmp/eq 0x02,r0
    bt LAB_ce34a2a
    bra LAB_ce34a2e
    nop

LAB_ce34a22:
    mov.w @(DAT_ce34ad4,pc),r0
    mov 0x06,r2
    bra LAB_ce34a2e
    mov.b r2,@(r0,r4)

LAB_ce34a2a:
    mov.w @(DAT_ce34ad4,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce34a2e:
    mov.l @(PTR_ce34ad8,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce34a34:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34ad2,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34a5a
    mov 0x08,r5
    cmp/eq 0x01,r0
    bt LAB_ce34a52
    cmp/eq 0x02,r0
    bt LAB_ce34a5a
    bra LAB_ce34a5e
    nop

LAB_ce34a52:
    mov.w @(DAT_ce34ad4,pc),r0
    mov 0x06,r2
    bra LAB_ce34a5e
    mov.b r2,@(r0,r4)

LAB_ce34a5a:
    mov.w @(DAT_ce34ad4,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce34a5e:
    mov.l @(PTR_ce34ad8,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce34a64:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34ad2,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce34a84
    cmp/eq 0x01,r0
    bt LAB_ce34a8c
    cmp/eq 0x02,r0
    bt LAB_ce34a94
    bra LAB_ce34aa0
    nop

LAB_ce34a84:
    mov.w @(DAT_ce34ad4,pc),r0
    mov 0x09,r3
    bra LAB_ce34a9a
    mov.b r3,@(r0,r4)

LAB_ce34a8c:
    mov.w @(DAT_ce34ad4,pc),r0
    mov 0x04,r1
    bra LAB_ce34a9a
    mov.b r1,@(r0,r4)

LAB_ce34a94:
    mov.w @(DAT_ce34ad4,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r4)

LAB_ce34a9a:
    mov.w @(DAT_ce34ad6,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce34aa0:
    mov.l @(PTR_ce34ad8,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce34aa6:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34ad2,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34ac4
    mov 0x01,r5
    cmp/eq 0x01,r0
    bt LAB_ce34aca
    cmp/eq 0x02,r0
    bt LAB_ce34adc
    bra LAB_ce34ae6
    nop

LAB_ce34ac4:
    mov.w @(DAT_ce34ad4,pc),r0
    bra LAB_ce34ae2
    mov.b r5,@(r0,r4)

LAB_ce34aca:
    mov.w @(DAT_ce34ad4,pc),r0
    mov 0x04,r2
    bra LAB_ce34ae2
    mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34ad2:
    #data 0x04c9
DAT_ce34ad4:
    #data 0x01e9
DAT_ce34ad6:
    #data 0x01a3
    #align4

PTR_ce34ad8:
    #data loc_8c0530d8

;=============================================

LAB_ce34adc:
    mov.w @(DAT_ce34b10,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r4)

LAB_ce34ae2:
    mov.w @(DAT_ce34b12,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce34ae6:
    mov.l @(PTR_ce34b18,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce34aec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce34b14,pc),r14
    mov 0x00,r5
    mov.w @(DAT_ce34b16,pc),r6
    add r4,r14
    mov.l @(PTR_ce34b1c,pc),r3
    mov.b @(0x2,r14),r0
    mov.b r0,@r15
    jsr @r3
    mov r14,r4
    mov.b @r15,r0
    mov.b r0,@(0x2,r14)
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34b10:
    #data 0x01e9
DAT_ce34b12:
    #data 0x01a3
DAT_ce34b14:
    #data 0x02a4
DAT_ce34b16:
    #data 0x0080
    #align4

PTR_ce34b18:
    #data loc_8c0530d8
PTR_ce34b1c:
    #data loc_8c129728
DAT_ce34b20:
    #data 0x0201
    #data 0x0201
DAT_ce34b24:
    #data 0x02ff
    #data 0x02ff
DAT_ce34b28:
    #data 0xffff
    #data 0xffff
DAT_ce34b2c:
    #data 0x0201
    #data 0x0201
DAT_ce34b30:
    #data 0x02ff
    #data 0x02ff
DAT_ce34b34:
    #data 0xffff
    #data 0xffff
DAT_ce34b38:
    #data 0x0201
    #data 0x0201
DAT_ce34b3c:
    #data 0x02ff
    #data 0x02ff
DAT_ce34b40:
    #data 0xffff
    #data 0xffff
DAT_ce34b44:
    #data 0x0201
    #data 0x0201
DAT_ce34b48:
    #data 0x02ff
    #data 0x02ff
DAT_ce34b4c:
    #data 0xffff
    #data 0xffff
DAT_ce34b50:
    #data 0x0201
    #data 0x0200
DAT_ce34b54:
    #data 0x02ff
    #data 0x0201
DAT_ce34b58:
    #data 0xffff
    #data 0x02ff
DAT_ce34b5c:
    #data 0x0201
    #data 0x0201
DAT_ce34b60:
    #data 0x02ff
    #data 0x02ff
DAT_ce34b64:
    #data 0xffff
    #data 0xffff
DAT_ce34b68:
    #data 0x0003
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0040
DAT_ce34b78:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0020
DAT_ce34b88:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce34b98:
    #data 0x0003
    #data 0x0000
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34ba8:
    #data 0x0003
    #data 0x1000
    #data 0x0005
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce34bb8:
    #data 0x0005
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce34bcc:
    #data 0x0003
    #data 0x8100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34bdc:
    #data 0x0003
    #data 0x9100
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce34bec:
    #data 0x0003
    #data 0x4000
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce34bfc:
    #data 0x0003
    #data 0x9100
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
    #align4

PTR_ce34c0c:
    #data LAB_ce306a4
PTR_ce34c10:
    #data LAB_ce3001c
PTR_ce34c14:
    #data LAB_ce3073e
PTR_ce34c18:
    #data LAB_ce30d2a
PTR_ce34c1c:
    #data LAB_ce311ca
PTR_ce34c20:
    #data LAB_ce31400
PTR_ce34c24:
    #data LAB_ce31592
PTR_ce34c28:
    #data LAB_ce3163e
PTR_ce34c2c:
    #data LAB_ce317c0
PTR_ce34c30:
    #data LAB_ce33e4c
PTR_ce34c34:
    #data DAT_ce33f50
PTR_ce34c38:
    #data LAB_ce34182
PTR_ce34c3c:
    #data LAB_ce3498a
PTR_ce34c40:
    #data LAB_ce305b0
PTR_ce34c44:
    #data LAB_ce33cf0
PTR_ce34c48:
    #data LAB_ce310d0
PTR_ce34c4c:
    #data LAB_ce34a04
PTR_ce34c50:
    #data LAB_ce34a34
PTR_ce34c54:
    #data LAB_ce34a64
PTR_ce34c58:
    #data LAB_ce34aa6
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce34c68:
    #data LAB_ce34aec
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce34c7c:
    #data LAB_ce30752
PTR_ce34c80:
    #data LAB_ce30ab0
PTR_ce34c84:
    #data LAB_ce30ad8
PTR_ce34c88:
    #data LAB_ce30752
PTR_ce34c8c:
    #data LAB_ce30d4c
PTR_ce34c90:
    #data LAB_ce3101e
PTR_ce34c94:
    #data LAB_ce31008
PTR_ce34c98:
    #data LAB_ce30d3e
PTR_ce34c9c:
    #data LAB_ce31218
PTR_ce34ca0:
    #data LAB_ce31270
PTR_ce34ca4:
    #data LAB_ce312ca
PTR_ce34ca8:
    #data LAB_ce3139c
PTR_ce34cac:
    #data LAB_ce31412
PTR_ce34cb0:
    #data LAB_ce31498
PTR_ce34cb4:
    #data LAB_ce3152e
PTR_ce34cb8:
    #data LAB_ce315a4
PTR_ce34cbc:
    #data LAB_ce315f8
PTR_ce34cc0:
    #data LAB_ce3166a
PTR_ce34cc4:
    #data LAB_ce317a6
PTR_ce34cc8:
    #data LAB_ce3166a
PTR_ce34ccc:
    #data LAB_ce317a6
PTR_ce34cd0:
    #data LAB_ce317a6
PTR_ce34cd4:
    #data LAB_ce3167c
PTR_ce34cd8:
    #data LAB_ce31744
PTR_ce34cdc:
    #data LAB_ce3174a
PTR_ce34ce0:
    #data LAB_ce317a0
DAT_ce34ce4:
    #data 0x0100
    #data 0x0002
DAT_ce34ce8:
    #data 0x0200
    #data 0x0200
    #align4

PTR_ce34cec:
    #data LAB_ce317d4
PTR_ce34cf0:
    #data LAB_ce31a54
PTR_ce34cf4:
    #data LAB_ce31c2a
PTR_ce34cf8:
    #data LAB_ce31d34
PTR_ce34cfc:
    #data LAB_ce31f1e
PTR_ce34d00:
    #data LAB_ce32598
PTR_ce34d04:
    #data LAB_ce3272e
PTR_ce34d08:
    #data LAB_ce33358
PTR_ce34d0c:
    #data LAB_ce32e84
PTR_ce34d10:
    #data LAB_ce33926
PTR_ce34d14:
    #data LAB_ce33b8e
PTR_ce34d18:
    #data LAB_ce33be4
PTR_ce34d1c:
    #data LAB_ce317ea
PTR_ce34d20:
    #data LAB_ce3189c
PTR_ce34d24:
    #data LAB_ce318ec
PTR_ce34d28:
    #data LAB_ce31946
PTR_ce34d2c:
    #data LAB_ce31990
PTR_ce34d30:
    #data LAB_ce31a22
PTR_ce34d34:
    #data LAB_ce31a6a
PTR_ce34d38:
    #data LAB_ce31b12
PTR_ce34d3c:
    #data LAB_ce31b62
PTR_ce34d40:
    #data LAB_ce31bb0
PTR_ce34d44:
    #data LAB_ce31c08
PTR_ce34d48:
    #data LAB_ce31c40
PTR_ce34d4c:
    #data LAB_ce31cce
PTR_ce34d50:
    #data LAB_ce31d84
PTR_ce34d54:
    #data LAB_ce31dd2
PTR_ce34d58:
    #data LAB_ce31df6
PTR_ce34d5c:
    #data LAB_ce31e9a
PTR_ce34d60:
    #data LAB_ce31f30
PTR_ce34d64:
    #data LAB_ce3221c
PTR_ce34d68:
    #data LAB_ce31f46
PTR_ce34d6c:
    #data LAB_ce31f9e
PTR_ce34d70:
    #data LAB_ce32054
PTR_ce34d74:
    #data LAB_ce32170
DAT_ce34d78:
    #data 0x3938
    #data 0x4c
DAT_ce34d7b:
    #data 0x50
    #data 0x5251
    #align4

PTR_ce34d80:
    #data LAB_ce32232
PTR_ce34d84:
    #data LAB_ce32296
PTR_ce34d88:
    #data LAB_ce3233a
PTR_ce34d8c:
    #data LAB_ce324b8
PTR_ce34d90:
    #data LAB_ce32546
PTR_ce34d94:
    #data LAB_ce325ae
PTR_ce34d98:
    #data LAB_ce32662
PTR_ce34d9c:
    #data LAB_ce32692
PTR_ce34da0:
    #data LAB_ce326fc
PTR_ce34da4:
    #data LAB_ce32740
PTR_ce34da8:
    #data LAB_ce32aaa
PTR_ce34dac:
    #data LAB_ce32752
PTR_ce34db0:
    #data LAB_ce327ae
PTR_ce34db4:
    #data LAB_ce32864
PTR_ce34db8:
    #data LAB_ce328e8
PTR_ce34dbc:
    #data LAB_ce32a3e
PTR_ce34dc0:
    #data LAB_ce32abc
PTR_ce34dc4:
    #data LAB_ce32b28
PTR_ce34dc8:
    #data LAB_ce32ba0
PTR_ce34dcc:
    #data LAB_ce32c58
PTR_ce34dd0:
    #data LAB_ce32dc4
PTR_ce34dd4:
    #data LAB_ce32e52
PTR_ce34dd8:
    #data LAB_ce32e96
PTR_ce34ddc:
    #data LAB_ce32f4c
PTR_ce34de0:
    #data LAB_ce32fca
PTR_ce34de4:
    #data LAB_ce33036
PTR_ce34de8:
    #data LAB_ce3309c
PTR_ce34dec:
    #data LAB_ce330f4
PTR_ce34df0:
    #data LAB_ce331a8
PTR_ce34df4:
    #data LAB_ce33234
PTR_ce34df8:
    #data LAB_ce3328a
PTR_ce34dfc:
    #data LAB_ce33320
PTR_ce34e00:
    #data LAB_ce3336e
PTR_ce34e04:
    #data LAB_ce3343e
PTR_ce34e08:
    #data LAB_ce334e6
PTR_ce34e0c:
    #data LAB_ce33552
PTR_ce34e10:
    #data LAB_ce3359c
PTR_ce34e14:
    #data LAB_ce33604
PTR_ce34e18:
    #data LAB_ce33662
PTR_ce34e1c:
    #data LAB_ce3368c
PTR_ce34e20:
    #data LAB_ce336e2
PTR_ce34e24:
    #data LAB_ce33794
PTR_ce34e28:
    #data LAB_ce33810
PTR_ce34e2c:
    #data LAB_ce33888
PTR_ce34e30:
    #data LAB_ce338d8
PTR_ce34e34:
    #data LAB_ce338dc
PTR_ce34e38:
    #data LAB_ce338e0
PTR_ce34e3c:
    #data LAB_ce338e4
PTR_ce34e40:
    #data LAB_ce33938
PTR_ce34e44:
    #data LAB_ce33992
PTR_ce34e48:
    #data LAB_ce339ec
PTR_ce34e4c:
    #data LAB_ce33a84
PTR_ce34e50:
    #data LAB_ce33ab6
PTR_ce34e54:
    #data LAB_ce33c14
PTR_ce34e58:
    #data LAB_ce33c8a
PTR_ce34e5c:
    #data LAB_ce33d38
PTR_ce34e60:
    #data LAB_ce33db2
PTR_ce34e64:
    #data LAB_ce33e20
PTR_ce34e68:
    #data LAB_ce33e98
PTR_ce34e6c:
    #data LAB_ce33eec
PTR_ce34e70:
    #data LAB_ce33ef0
PTR_ce34e74:
    #data LAB_ce33e98
PTR_ce34e78:
    #data LAB_ce33f80
PTR_ce34e7c:
    #data LAB_ce34048
PTR_ce34e80:
    #data LAB_ce340ec
PTR_ce34e84:
    #data LAB_ce340ec
PTR_ce34e88:
    #data LAB_ce340ec
PTR_ce34e8c:
    #data LAB_ce341a0
PTR_ce34e90:
    #data LAB_ce341a0
PTR_ce34e94:
    #data LAB_ce34470
PTR_ce34e98:
    #data LAB_ce34470
PTR_ce34e9c:
    #data LAB_ce34470
PTR_ce34ea0:
    #data LAB_ce341e0
PTR_ce34ea4:
    #data LAB_ce34292
PTR_ce34ea8:
    #data LAB_ce342ee
PTR_ce34eac:
    #data LAB_ce343bc
PTR_ce34eb0:
    #data LAB_ce3443e
PTR_ce34eb4:
    #data LAB_ce344bc
PTR_ce34eb8:
    #data LAB_ce34582
PTR_ce34ebc:
    #data LAB_ce34628
PTR_ce34ec0:
    #data LAB_ce3469e
PTR_ce34ec4:
    #data LAB_ce3472c
PTR_ce34ec8:
    #data LAB_ce3476a
PTR_ce34ecc:
    #data LAB_ce34792
PTR_ce34ed0:
    #data LAB_ce349a2
PTR_ce34ed4:
    #data LAB_ce349a2
PTR_ce34ed8:
    #data LAB_ce349c4
PTR_ce34edc:
    #data LAB_ce349c4
PTR_ce34ee0:
    #data LAB_ce349c4
