;╔══════════════════════════════════════════╗
;║ S_PL07 : Wolverine Program               ║
;║ (Adamantium Claws, James Howlett)        ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8C02FD26 0x8C02FD26
#symbol loc_8C02FEC4 0x8C02FEC4
#symbol loc_8C034DEE 0x8C034DEE
#symbol loc_8C034E8C 0x8C034E8C
#symbol loc_8C034F54 0x8C034F54
#symbol loc_8C035162 0x8C035162
#symbol loc_8C03544C 0x8C03544C
#symbol loc_8C042008 0x8C042008
#symbol loc_8C04223A 0x8C04223A
#symbol loc_8C0423FC 0x8C0423FC
#symbol loc_8C045790 0x8C045790
#symbol loc_8C046C8A 0x8C046C8A
#symbol loc_8C04CC1C 0x8C04CC1C
#symbol loc_8C04CE54 0x8C04CE54
#symbol loc_8C04FEA8 0x8C04FEA8
#symbol loc_8C04FF88 0x8C04FF88
#symbol loc_8C050048 0x8C050048
#symbol loc_8C050084 0x8C050084
#symbol loc_8C050552 0x8C050552
#symbol loc_8C050610 0x8C050610
#symbol loc_8C05064E 0x8C05064E
#symbol loc_8C050682 0x8C050682
#symbol loc_8C050834 0x8C050834
#symbol loc_8C050962 0x8C050962
#symbol loc_8C050EA4 0x8C050EA4
#symbol loc_8C05115A 0x8C05115A
#symbol loc_8C0511B4 0x8C0511B4
#symbol loc_8C0511E2 0x8C0511E2
#symbol loc_8C051648 0x8C051648
#symbol loc_8C05176E 0x8C05176E
#symbol loc_8C051854 0x8C051854
#symbol loc_8C05211C 0x8C05211C
#symbol loc_8C05218A 0x8C05218A
#symbol loc_8C05225E 0x8C05225E
#symbol loc_8C05264C 0x8C05264C
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
#symbol loc_8C0559DA 0x8C0559DA
#symbol loc_8C055C3A 0x8C055C3A
#symbol loc_8C055CF6 0x8C055CF6
#symbol loc_8C056DE4 0x8C056DE4
#symbol loc_8C056F2A 0x8C056F2A
#symbol loc_8C05933C 0x8C05933C
#symbol loc_8C06A2EC 0x8C06A2EC
#symbol loc_8C06A51C 0x8C06A51C
#symbol loc_8C06A714 0x8C06A714
#symbol loc_8C0C04D0 0x8C0C04D0
#symbol loc_8C0EE1E0 0x8C0EE1E0
#symbol loc_8C0F047C 0x8C0F047C
#symbol loc_8C0FDAB6 0x8C0FDAB6
#symbol loc_8C103660 0x8C103660
#symbol loc_8C11E2E0 0x8C11E2E0
#symbol loc_8C11E860 0x8C11E860
#symbol loc_8C1294C8 0x8C1294C8
#symbol loc_8C26823C 0x8C26823C
#symbol loc_8C2895F0 0x8C2895F0
#symbol loc_8C2896B0 0x8C2896B0

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
    bsr FUN_ce302de
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce30354
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce303a4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce300e8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce30252
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce30130
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce3040e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce30298
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce304ce
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    bsr FUN_ce30490
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c4
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300e4,pc),r2
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
    #data PTR_ce350f4
PTR_ce300d0:
    #data loc_8c054508
PTR_ce300d4:
    #data loc_8c054b34
PTR_ce300d8:
    #data loc_8c05496c
PTR_ce300dc:
    #data loc_8c054d04
PTR_ce300e0:
    #data loc_8c053e00
PTR_ce300e4:
    #data loc_8c0542e0

;=============================================

FUN_ce300e8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30208,pc),r5
    mov.w @(DAT_ce301f0,pc),r6
    mov.l @(PTR_ce3020c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30106
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30106:
    mov.w @(DAT_ce301f0,pc),r5
    mov.l @(PTR_ce30210,pc),r3
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
    mov.w @(DAT_ce301f2,pc),r0
    mov.l @(PTR_ce30214,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30130:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.w @(DAT_ce301f4,pc),r4
    add r14,r4
    mov.b @r4,r3
    tst r3,r3
    bf LAB_ce301ec
    mov.w @(DAT_ce301f6,pc),r5
    mov 0x01,r7
    mov.l @(PTR_ce30218,pc),r3
    mov r15,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301ec
    mov.l @(PTR_ce3021c,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301ec
    mov.w @(DAT_ce301f8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3018a
    mov.w @(DAT_ce301fa,pc),r0
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce301fc,pc),r0
    mov.w r3,@r15
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30190
    mov.w @r15,r3
    mov.w @(DAT_ce301fe,pc),r4
    extu.w r3,r3
    tst r4,r3
    bt LAB_ce30190
    mov.w @r15,r1
    xor r4,r1
    bra LAB_ce30190
    mov.w r1,@r15

LAB_ce3018a:
    mov.w @(DAT_ce30200,pc),r0
    mov.w @(r0,r14),r2
    mov.w r2,@r15

LAB_ce30190:
    mov.w @r15,r3
    mov 0xF6,r1
    mov.w @(DAT_ce30202,pc),r2
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.w r3,@r15
    extu.w r3,r3
    tst r3,r3
    bf LAB_ce301b0
    mov.w @(DAT_ce301fc,pc),r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    neg r3,r3
    add 0x02,r3
    mov.w r3,@r15

LAB_ce301b0:
    mov.w @(DAT_ce30204,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce301c0
    mov.w @r15,r2
    add 0x10,r2
    mov.w r2,@r15

LAB_ce301c0:
    mov.w @r15,r4
    mov.l @(PTR_ce30220,pc),r0
    extu.w r4,r4
    mov.b @(r0,r4),r4
    extu.b r4,r4
    tst r4,r4
    bt LAB_ce301ec
    mov.w @(DAT_ce30204,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce30224
    mov 0x01,r13
    mov.w @(DAT_ce301fc,pc),r0
    mov r13,r1
    mov.w @r15,r2
    mov.b @(r0,r14),r3
    extu.w r2,r2
    extu.b r3,r3
    shad r3,r1
    tst r1,r2
    bt LAB_ce30224

LAB_ce301ec:
    bra LAB_ce30248
    mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301f0:
    #data 0x036c
DAT_ce301f2:
    #data 0x01e9
DAT_ce301f4:
    #data 0x02a4
DAT_ce301f6:
    #data 0x0140
DAT_ce301f8:
    #data 0x0525
DAT_ce301fa:
    #data 0x01fa
DAT_ce301fc:
    #data 0x01d2
DAT_ce301fe:
    #data 0x0c00
DAT_ce30200:
    #data 0x0340
DAT_ce30202:
    #data 0x3c00
DAT_ce30204:
    #data 0x01f9
    #align4

PTR_ce30208:
    #data DAT_ce34fac
PTR_ce3020c:
    #data loc_8c054e58
PTR_ce30210:
    #data loc_8c055c3a
PTR_ce30214:
    #data loc_8c0530d8
PTR_ce30218:
    #data loc_8c055cf6
PTR_ce3021c:
    #data loc_8c0559da
PTR_ce30220:
    #data DAT_ce3507c

;=============================================

LAB_ce30224:
    mov.w @(DAT_ce3032e,pc),r2
    mov 0x22,r0
    mov.l @(PTR_ce3033c,pc),r3
    mov 0x15,r5
    add r2,r4
    mov.b r4,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30330,pc),r0
    mov.b r13,@(r0,r14)
    add 0x46,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop

LAB_ce30248:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30252:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30340,pc),r5
    mov.w @(DAT_ce30332,pc),r6
    mov.l @(PTR_ce30344,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30270
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30270:
    mov.w @(DAT_ce30332,pc),r5
    mov.l @(PTR_ce30348,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30334,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3033c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30298:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3034c,pc),r5
    mov.w @(DAT_ce30336,pc),r6
    mov.l @(PTR_ce30344,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302b6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302b6:
    mov.w @(DAT_ce30336,pc),r5
    mov.l @(PTR_ce30348,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30334,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3033c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302de:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30350,pc),r5
    mov.w @(DAT_ce30338,pc),r6
    mov.l @(PTR_ce30344,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302fe
    mov.w @(DAT_ce3033a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30306

LAB_ce302fe:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30306:
    mov.w @(DAT_ce30338,pc),r5
    mov.l @(PTR_ce30348,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30334,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3033c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3032e:
    #data 0x00ff
DAT_ce30330:
    #data 0x01a3
DAT_ce30332:
    #data 0x037c
DAT_ce30334:
    #data 0x01e9
DAT_ce30336:
    #data 0x0384
DAT_ce30338:
    #data 0x038c
DAT_ce3033a:
    #data 0x040c
    #align4

PTR_ce3033c:
    #data loc_8c0530d8
PTR_ce30340:
    #data DAT_ce34fbc
PTR_ce30344:
    #data loc_8c054e58
PTR_ce30348:
    #data loc_8c055c3a
PTR_ce3034c:
    #data DAT_ce34fcc
PTR_ce30350:
    #data DAT_ce34fdc

;=============================================

FUN_ce30354:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30478,pc),r5
    mov.w @(DAT_ce30466,pc),r6
    mov.l @(PTR_ce3047c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30374
    mov.w @(DAT_ce30468,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3037c

LAB_ce30374:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3037c:
    mov.w @(DAT_ce30466,pc),r5
    mov.l @(PTR_ce30480,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3046a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30484,pc),r3
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
    mov.l @(PTR_ce30488,pc),r5
    mov.w @(DAT_ce3046c,pc),r6
    mov.l @(PTR_ce3047c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303de
    mov.w @(DAT_ce30468,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce303de
    mov.w @(DAT_ce3046e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce303e6
    mov.w @(DAT_ce30470,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce303e6
    mov.w @(DAT_ce30472,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce303e6

LAB_ce303de:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303e6:
    mov.w @(DAT_ce3046c,pc),r5
    mov.l @(PTR_ce30480,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3046a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30484,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3040e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3048c,pc),r5
    mov.w @(DAT_ce30474,pc),r6
    mov.l @(PTR_ce3047c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30436
    mov.w @(DAT_ce30468,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30436
    mov.w @(DAT_ce30476,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3043e

LAB_ce30436:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3043e:
    mov.w @(DAT_ce30474,pc),r5
    mov.l @(PTR_ce30480,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3046a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30484,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30466:
    #data 0x0394
DAT_ce30468:
    #data 0x040c
DAT_ce3046a:
    #data 0x01e9
DAT_ce3046c:
    #data 0x039c
DAT_ce3046e:
    #data 0x01f9
DAT_ce30470:
    #data 0x01fc
DAT_ce30472:
    #data 0x01d4
DAT_ce30474:
    #data 0x03a4
DAT_ce30476:
    #data 0x0200
    #align4

PTR_ce30478:
    #data DAT_ce34fec
PTR_ce3047c:
    #data loc_8c054e58
PTR_ce30480:
    #data loc_8c055c3a
PTR_ce30484:
    #data loc_8c0530d8
PTR_ce30488:
    #data DAT_ce34ffc
PTR_ce3048c:
    #data DAT_ce3500c

;=============================================

FUN_ce30490:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce305a8,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce304a8
    mov.w @(DAT_ce3059e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304b0

LAB_ce304a8:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304b0:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce305a0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce305ac,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304ce:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305b0,pc),r3
    jsr @r3
    mov 0x09,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce304e8
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304e8:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x09,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce305a0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce305ac,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30506:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce30532
    mov r4,r14
    tst r0,r0
    bf LAB_ce30522
    bsr FUN_ce30568
    mov r14,r4
    tst r0,r0
    bf LAB_ce30522
    bsr FUN_ce305c0
    mov r14,r4
    tst r0,r0
    bt LAB_ce3052a

LAB_ce30522:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce3052a:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30532:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305b4,pc),r5
    mov.w @(DAT_ce305a2,pc),r6
    mov.l @(PTR_ce305b8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30552
    mov.w @(DAT_ce3059e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3055a

LAB_ce30552:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3055a:
    mov.w @(DAT_ce305a4,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30568:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305bc,pc),r5
    mov.w @(DAT_ce305a6,pc),r6
    mov.l @(PTR_ce305b8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30588
    mov.w @(DAT_ce3059e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30590

LAB_ce30588:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30590:
    mov.w @(DAT_ce305a4,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3059e:
    #data 0x040c
DAT_ce305a0:
    #data 0x01e9
DAT_ce305a2:
    #data 0x038c
DAT_ce305a4:
    #data 0x0258
DAT_ce305a6:
    #data 0x0394
    #align4

PTR_ce305a8:
    #data loc_8c054d1c
PTR_ce305ac:
    #data loc_8c0530d8
PTR_ce305b0:
    #data loc_8c054da0
PTR_ce305b4:
    #data DAT_ce34fdc
PTR_ce305b8:
    #data loc_8c054e58
PTR_ce305bc:
    #data DAT_ce34fec

;=============================================

FUN_ce305c0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306c8,pc),r5
    mov.w @(DAT_ce306b0,pc),r6
    mov.l @(PTR_ce306cc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce305e0
    mov.w @(DAT_ce306b2,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce305e8

LAB_ce305e0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce305e8:
    mov.w @(DAT_ce306b4,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce305f6:
    mov.w @(DAT_ce306b8,pc),r0
    mov.w @(DAT_ce306b6,pc),r5
    mov.b @(r0,r4),r3
    add r4,r5
    tst r3,r3
    bt/s LAB_ce3060c
    mov 0x00,r6
    mov.w @(DAT_ce306ba,pc),r0
    mov 0x18,r3
    bra LAB_ce30610
    mov.b r3,@(r0,r4)

LAB_ce3060c:
    mov.w @(DAT_ce306ba,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce30610:
    mov.b @r5,r3
    tst r3,r3
    bt LAB_ce30622
    mov.w @(DAT_ce306bc,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30622
    mov.b r6,@r5

LAB_ce30622:
    rts
    nop

LAB_ce30626:
    mov.w @(DAT_ce306be,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce306d0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3063a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce306d4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce306c0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30664
    mov.w @(DAT_ce306bc,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce3065c
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3067c
    mov.l @r15+,r14

LAB_ce3065c:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30742
    mov.l @r15+,r14

LAB_ce30664:
    mov.w @(DAT_ce306bc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30674
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30856
    mov.l @r15+,r14

LAB_ce30674:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30918
    mov.l @r15+,r14

LAB_ce3067c:
    mov.w @(DAT_ce306c2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3069e
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce306dc
    cmp/eq 0x02,r0
    bt LAB_ce306f4
    bra LAB_ce30706
    nop

LAB_ce3069e:
    mov.l @(PTR_ce306d8,pc),r3
    mov r4,r5
    mov.w @(DAT_ce306c4,pc),r0
    mov 0x1E,r12
    mov r4,r13
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306c6,pc),r0
    bra LAB_ce30706
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306b0:
    #data 0x039c
DAT_ce306b2:
    #data 0x040c
DAT_ce306b4:
    #data 0x0258
DAT_ce306b6:
    #data 0x02a4
DAT_ce306b8:
    #data 0x0200
DAT_ce306ba:
    #data 0x0205
DAT_ce306bc:
    #data 0x01f9
DAT_ce306be:
    #data 0x01ff
DAT_ce306c0:
    #data 0x01fe
DAT_ce306c2:
    #data 0x01e8
DAT_ce306c4:
    #data 0x03f4
DAT_ce306c6:
    #data 0x01a7
    #align4

PTR_ce306c8:
    #data DAT_ce34ffc
PTR_ce306cc:
    #data loc_8c054e58
PTR_ce306d0:
    #data PTR_ce35164
PTR_ce306d4:
    #data loc_8c052b4c
PTR_ce306d8:
    #data DAT_ce3501c

;=============================================

LAB_ce306dc:
    mov 0x20,r0
    mov.l @(PTR_ce307d0,pc),r3
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.w @(DAT_ce307c6,pc),r0
    mov r6,r13
    mov 0x1F,r12
    mov r6,r5
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307c8,pc),r0
    bra LAB_ce30706
    mov.b r13,@(r0,r14)

LAB_ce306f4:
    mov.l @(PTR_ce307d4,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce307c6,pc),r0
    mov r6,r13
    mov r6,r5
    mov 0x20,r12
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307c8,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce30706:
    mov.w @(DAT_ce307ca,pc),r0
    mov.l @(PTR_ce307d8,pc),r3
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
    mov.l @(PTR_ce307dc,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce307e0,pc),r3
    mov r14,r4
    mov 0x07,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30742:
    mov.l r14,@-r15
    mov 0x00,r5
    mov.l r13,@-r15
    mov r4,r14
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov r5,r0
    nop
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce307cc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3076c
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce3077e
    cmp/eq 0x02,r0
    bt LAB_ce30790
    bra LAB_ce3080a
    nop

LAB_ce3076c:
    mov.l @(PTR_ce307e4,pc),r3
    mov 0x06,r4
    mov.w @(DAT_ce307c6,pc),r0
    mov 0x1E,r12
    mov r5,r13
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307c8,pc),r0
    bra LAB_ce3080a
    mov.b r13,@(r0,r14)

LAB_ce3077e:
    mov.l @(PTR_ce307d0,pc),r2
    mov 0x07,r4
    mov.w @(DAT_ce307c6,pc),r0
    mov 0x1F,r12
    mov r6,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307c8,pc),r0
    bra LAB_ce3080a
    mov.b r13,@(r0,r14)

LAB_ce30790:
    mov.w @(DAT_ce307c6,pc),r0
    mov 0x02,r7
    mov.l @(PTR_ce307d4,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307c8,pc),r0
    mov.w @(DAT_ce307ce,pc),r2
    mov.b r7,@(r0,r14)
    add 0x53,r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce307e8
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
    mov 0x12,r4
    bra LAB_ce3080a
    fmov fr4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307c6:
    #data 0x03f4
DAT_ce307c8:
    #data 0x01a7
DAT_ce307ca:
    #data 0x01a1
DAT_ce307cc:
    #data 0x01e8
DAT_ce307ce:
    #data 0x0800
    #align4

PTR_ce307d0:
    #data DAT_ce35020
PTR_ce307d4:
    #data DAT_ce35024
PTR_ce307d8:
    #data loc_8c2896b0
PTR_ce307dc:
    #data loc_8c042008
PTR_ce307e0:
    #data loc_8c034e8c
PTR_ce307e4:
    #data DAT_ce3501c

;=============================================

LAB_ce307e8:
    mova @(DAT_ce308f8,pc),r0
    mov r7,r13
    fmov.s @r0,fr3
    mov 0x5C,r0
    mov 0x08,r4
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce308ec,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3080a
    mov 0x20,r12
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3080a:
    mov.w @(DAT_ce308ee,pc),r0
    mov r13,r6
    mov.l @(PTR_ce308fc,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l r5,@(r0,r14)
    mov 0x09,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30900,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3084c
    lds.l @r15+,PR
    mov r12,r5
    mov.l @(PTR_ce30904,pc),r3
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3084c:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30856:
    mov.w @(DAT_ce308f0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30878
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce3088a
    cmp/eq 0x02,r0
    bt LAB_ce3089e
    bra LAB_ce308b0
    nop

LAB_ce30878:
    mov.l @(PTR_ce30908,pc),r3
    mov 0x03,r4
    mov.w @(DAT_ce308f2,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308f4,pc),r0
    bra LAB_ce308b0
    mov.b r12,@(r0,r14)

LAB_ce3088a:
    mov.w @(DAT_ce308f2,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce3090c,pc),r2
    mov 0x04,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308f4,pc),r0
    bra LAB_ce308b0
    mov.b r12,@(r0,r14)

LAB_ce3089e:
    mov.l @(PTR_ce30910,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce308f2,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x05,r4
    mov.w @(DAT_ce308f4,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce308b0:
    mov.w @(DAT_ce308ee,pc),r0
    mov.l @(PTR_ce308fc,pc),r3
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
    mov.l @(PTR_ce30914,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce30900,pc),r3
    mov 0x08,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308ec:
    #data 0x01d2
DAT_ce308ee:
    #data 0x01a1
DAT_ce308f0:
    #data 0x01e8
DAT_ce308f2:
    #data 0x03f4
DAT_ce308f4:
    #data 0x01a7
    #align4

DAT_ce308f8:
    #data 0xc0a00000
PTR_ce308fc:
    #data loc_8c2896b0
PTR_ce30900:
    #data loc_8c034e8c
PTR_ce30904:
    #data loc_8c042008
PTR_ce30908:
    #data DAT_ce35028
PTR_ce3090c:
    #data DAT_ce3502c
PTR_ce30910:
    #data DAT_ce35030
PTR_ce30914:
    #data loc_8c04223a

;=============================================

LAB_ce30918:
    mov.w @(DAT_ce30a04,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3093a
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce3094c
    cmp/eq 0x02,r0
    bt LAB_ce30960
    bra LAB_ce30972
    nop

LAB_ce3093a:
    mov.l @(PTR_ce30a10,pc),r3
    mov 0x09,r4
    mov.w @(DAT_ce30a06,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30a08,pc),r0
    bra LAB_ce30972
    mov.b r12,@(r0,r14)

LAB_ce3094c:
    mov.w @(DAT_ce30a06,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30a14,pc),r2
    mov 0x0A,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a08,pc),r0
    bra LAB_ce30972
    mov.b r12,@(r0,r14)

LAB_ce30960:
    mov.l @(PTR_ce30a18,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce30a06,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x0B,r4
    mov.w @(DAT_ce30a08,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce30972:
    mov.w @(DAT_ce30a0a,pc),r0
    mov.l @(PTR_ce30a1c,pc),r3
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
    mov.l @(PTR_ce30a20,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce30a24,pc),r3
    mov 0x0A,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce309ae:
    mov.w @(DAT_ce30a0c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce309be
    mov.w @(DAT_ce30a0e,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce309ce

LAB_ce309be:
    mov.w @(DAT_ce30a0c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce309d2
    mov.w @(DAT_ce30a0e,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce309d2

LAB_ce309ce:
    bra LAB_ce309d6
    nop

LAB_ce309d2:
    rts
    nop

LAB_ce309d6:
    mov.w @(DAT_ce30a0c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce309e2
    bra LAB_ce30aae
    nop

LAB_ce309e2:
    mov.w @(DAT_ce30a04,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a28
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce30a3a
    cmp/eq 0x02,r0
    bt LAB_ce30a4e
    bra LAB_ce30a60
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a04:
    #data 0x01e8
DAT_ce30a06:
    #data 0x03f4
DAT_ce30a08:
    #data 0x01a7
DAT_ce30a0a:
    #data 0x01a1
DAT_ce30a0c:
    #data 0x01fe
DAT_ce30a0e:
    #data 0x01d6
    #align4

PTR_ce30a10:
    #data DAT_ce35028
PTR_ce30a14:
    #data DAT_ce3502c
PTR_ce30a18:
    #data DAT_ce35030
PTR_ce30a1c:
    #data loc_8c2896b0
PTR_ce30a20:
    #data loc_8c04223a
PTR_ce30a24:
    #data loc_8c034e8c

;=============================================

LAB_ce30a28:
    mov.l @(PTR_ce30b00,pc),r3
    mov 0x0C,r4
    mov.w @(DAT_ce30af6,pc),r0
    mov 0x1E,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30af8,pc),r0
    bra LAB_ce30a60
    mov.b r12,@(r0,r14)

LAB_ce30a3a:
    mov.w @(DAT_ce30af6,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30b04,pc),r2
    mov 0x0D,r4
    mov r6,r12
    mov 0x1F,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30af8,pc),r0
    bra LAB_ce30a60
    mov.b r12,@(r0,r14)

LAB_ce30a4e:
    mov.l @(PTR_ce30b08,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce30af6,pc),r0
    mov r6,r12
    mov 0x20,r13
    mov.l r2,@(r0,r14)
    mov 0x0E,r4
    mov.w @(DAT_ce30af8,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce30a60:
    mov.w @(DAT_ce30afa,pc),r0
    mov.l @(PTR_ce30b0c,pc),r3
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
    mov.l @(PTR_ce30b10,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30b14,pc),r3
    mov 0x0B,r5
    mov r12,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30afc,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30aa4
    mov.w @(DAT_ce30afc,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30aa4:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30aae:
    mov.w @(DAT_ce30afe,pc),r0
    mov 0x01,r6
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30ad2
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce30ae4
    cmp/eq 0x02,r0
    bt LAB_ce30b20
    bra LAB_ce30b88
    nop

LAB_ce30ad2:
    mov.l @(PTR_ce30b18,pc),r3
    mov 0x0F,r5
    mov.w @(DAT_ce30af6,pc),r0
    mov 0x14,r12
    mov r4,r13
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30af8,pc),r0
    bra LAB_ce30b88
    mov.b r13,@(r0,r14)

LAB_ce30ae4:
    mov.l @(PTR_ce30b1c,pc),r2
    mov 0x10,r5
    mov.w @(DAT_ce30af6,pc),r0
    mov 0x15,r12
    mov r6,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30af8,pc),r0
    bra LAB_ce30b88
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30af6:
    #data 0x03f4
DAT_ce30af8:
    #data 0x01a7
DAT_ce30afa:
    #data 0x01a1
DAT_ce30afc:
    #data 0x01d6
DAT_ce30afe:
    #data 0x01e8
    #align4

PTR_ce30b00:
    #data DAT_ce3501c
PTR_ce30b04:
    #data DAT_ce35020
PTR_ce30b08:
    #data DAT_ce35024
PTR_ce30b0c:
    #data loc_8c2896b0
PTR_ce30b10:
    #data loc_8c042008
PTR_ce30b14:
    #data loc_8c034e8c
PTR_ce30b18:
    #data DAT_ce35028
PTR_ce30b1c:
    #data DAT_ce3502c

;=============================================

LAB_ce30b20:
    mov.w @(DAT_ce30c5c,pc),r0
    mov.w @(DAT_ce30c5e,pc),r3
    mov.w @(r0,r14),r2
    mov.l @(PTR_ce30c70,pc),r7
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce30b72
    mov.w @(DAT_ce30c60,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce30c74,pc),r0
    fsub fr3,fr2
    fmov.s @r0,fr3
    fcmp/gt fr3,fr2
    bf LAB_ce30b72
    mov 0x16,r12
    mov 0x05,r13
    mov 0x13,r5
    mov r6,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x0F,r2
    mov.w @(DAT_ce30c62,pc),r0
    fldi0 fr4
    mov.b @(r0,r14),r1
    and r2,r1
    mov.b r1,@(r0,r14)
    add 0x26,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30c64,pc),r0
    mov.l r7,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    bra LAB_ce30b88
    fmov fr4,@(r0,r14)

LAB_ce30b72:
    mov 0x02,r6
    mov 0x16,r12
    mov r6,r13
    mov 0x11,r5
    mov r4,r0
    nop
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30c64,pc),r0
    mov.l r7,@(r0,r14)
    mov.w @(DAT_ce30c66,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce30b88:
    mov.w @(DAT_ce30c68,pc),r0
    mov.l @(PTR_ce30c78,pc),r3
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
    mov.l @(PTR_ce30c7c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30c80,pc),r3
    mov 0x0C,r5
    mov r13,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30c62,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30bcc
    mov.w @(DAT_ce30c62,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30bcc:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30bd6:
    mov.w @(DAT_ce30c6a,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c84,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30bea:
    sts.l PR,@-r15
    mov.l @(PTR_ce30c88,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30bf8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30c8c,pc),r3
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
    mov.w @(DAT_ce30c6c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30c90
    mov.w @(DAT_ce30c6e,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce30c54
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30ca8
    mov.l @r15+,r14

LAB_ce30c54:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30dc0
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c5c:
    #data 0x01fa
DAT_ce30c5e:
    #data 0x1000
DAT_ce30c60:
    #data 0x041c
DAT_ce30c62:
    #data 0x01d6
DAT_ce30c64:
    #data 0x03f4
DAT_ce30c66:
    #data 0x01a7
DAT_ce30c68:
    #data 0x01a1
DAT_ce30c6a:
    #data 0x01ff
DAT_ce30c6c:
    #data 0x01fe
DAT_ce30c6e:
    #data 0x01f9
    #align4

PTR_ce30c70:
    #data DAT_ce35030
DAT_ce30c74:
    #data 0x43700000
PTR_ce30c78:
    #data loc_8c2896b0
PTR_ce30c7c:
    #data loc_8c04223a
PTR_ce30c80:
    #data loc_8c034e8c
PTR_ce30c84:
    #data PTR_ce35174
PTR_ce30c88:
    #data loc_8c0511e2
PTR_ce30c8c:
    #data loc_8c052c84

;=============================================

LAB_ce30c90:
    mov.w @(DAT_ce30d90,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30ca0
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30f42
    mov.l @r15+,r14

LAB_ce30ca0:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3101c
    mov.l @r15+,r14

LAB_ce30ca8:
    mov.w @(DAT_ce30d92,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30da0,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30ccc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30cda
    cmp/eq 0x02,r0
    bt LAB_ce30d54
    bra LAB_ce30d86
    nop

LAB_ce30ccc:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30d5e
    bra LAB_ce30d86
    nop

LAB_ce30cda:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30d5e
    mov.w @(DAT_ce30d94,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d86
    mov.l @(PTR_ce30da4,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30d86
    mov.w @(DAT_ce30d96,pc),r0
    mov.w @(r0,r14),r3
    add 0x04,r0
    mov.w @(r0,r14),r2
    extu.w r3,r3
    extu.w r2,r2
    or r2,r3
    mov.w @(DAT_ce30d98,pc),r2
    tst r2,r3
    bt LAB_ce30d86
    mov.w @(DAT_ce30d9a,pc),r0
    mov 0x1C,r3
    mov 0x1F,r5
    mov.w r13,@(r0,r14)
    mov.w @(DAT_ce30d9c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30da8,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r2
    add 0x01,r2
    mov.w r2,@(r0,r1)
    mov.l @(PTR_ce30dac,pc),r1
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce30db0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30db4,pc),r2
    mov 0x07,r5
    mov r14,r4
    mov 0x04,r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30d54:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d6c

LAB_ce30d5e:
    lds.l @r15+,PR
    mov.l @(PTR_ce30db8,pc),r3
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d6c:
    mov.w @(DAT_ce30d94,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30d86
    mov.b r13,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30dbc,pc),r3
    mov 0x01,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d86:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d90:
    #data 0x01f9
DAT_ce30d92:
    #data 0x01e8
DAT_ce30d94:
    #data 0x0141
DAT_ce30d96:
    #data 0x034e
DAT_ce30d98:
    #data 0x0200
DAT_ce30d9a:
    #data 0x0352
DAT_ce30d9c:
    #data 0x01a1
    #align4

PTR_ce30da0:
    #data loc_8c034dee
PTR_ce30da4:
    #data loc_8c05211c
PTR_ce30da8:
    #data loc_8c2896b0
PTR_ce30dac:
    #data loc_8c042008
PTR_ce30db0:
    #data loc_8c05225e
PTR_ce30db4:
    #data loc_8c034e8c
PTR_ce30db8:
    #data loc_8c051648
PTR_ce30dbc:
    #data loc_8c0c04d0

;=============================================

LAB_ce30dc0:
    mov.w @(DAT_ce30e92,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30e98,pc),r13
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30de2
    cmp/eq 0x01,r0
    bt LAB_ce30df0
    cmp/eq 0x02,r0
    bt LAB_ce30e1a
    bra LAB_ce30f38
    nop

LAB_ce30de2:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30e84
    bra LAB_ce30f38
    nop

LAB_ce30df0:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30e84
    mov.w @(DAT_ce30e94,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30e06
    bra LAB_ce30f38
    nop

LAB_ce30e06:
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce30e9c,pc),r3
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e1a:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce30e7a
    fldi0 fr15
    mov.w @(DAT_ce30e94,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bf/s LAB_ce30e48
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

LAB_ce30e48:
    jsr @r13
    nop
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30e84
    mov.w @(DAT_ce30e94,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce30f38
    mov 0x5C,r0
    mov.l @(PTR_ce30ea0,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    mov 0x20,r5
    fmov fr15,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30e9c,pc),r2
    mov 0x03,r5
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30e7a:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ea8

LAB_ce30e84:
    lds.l @r15+,PR
    mov.l @(PTR_ce30ea4,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e92:
    #data 0x01e8
DAT_ce30e94:
    #data 0x0141
    #align4

PTR_ce30e98:
    #data loc_8c034dee
PTR_ce30e9c:
    #data loc_8c0c04d0
PTR_ce30ea0:
    #data loc_8c042008
PTR_ce30ea4:
    #data loc_8c051648

;=============================================

LAB_ce30ea8:
    mov.w @(DAT_ce30f84,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce30eea
    mov.w @(DAT_ce30f84,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce30f8c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30f90,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30f86,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce30ee4
    mov 0x29,r5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30ee4:
    mov.l @(PTR_ce30f94,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30eea:
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
    mov.w @(DAT_ce30f84,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce30f38
    mov.w @(DAT_ce30f84,pc),r0
    mov 0x02,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce30f98,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30f86,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30f30
    mova @(DAT_ce30f9c,pc),r0
    fmov.s @r0,fr4

LAB_ce30f30:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce30f38:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30f42:
    mov.w @(DAT_ce30f88,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30f5e
    cmp/eq 0x02,r0
    bt LAB_ce30f5e
    cmp/eq 0x01,r0
    bt LAB_ce30f6e
    bra LAB_ce31016
    nop

LAB_ce30f5e:
    mov.l @(PTR_ce30fa0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30f7a
    bra LAB_ce31016
    nop

LAB_ce30f6e:
    mov.l @(PTR_ce30fa0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fa8

LAB_ce30f7a:
    lds.l @r15+,PR
    mov.l @(PTR_ce30fa4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f84:
    #data 0x0141
DAT_ce30f86:
    #data 0x01d2
DAT_ce30f88:
    #data 0x01e8
    #align4

DAT_ce30f8c:
    #data 0xc0fd5555
DAT_ce30f90:
    #data 0x3e200000
PTR_ce30f94:
    #data loc_8c04223a
DAT_ce30f98:
    #data 0xc2555555
DAT_ce30f9c:
    #data 0x42555555
PTR_ce30fa0:
    #data loc_8c034dee
PTR_ce30fa4:
    #data loc_8c051648

;=============================================

LAB_ce30fa8:
    mov.w @(DAT_ce31086,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31016
    mov.l @(PTR_ce31094,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce31016
    mov.w @(DAT_ce3108a,pc),r3
    mov.w @(DAT_ce31088,pc),r0
    add r14,r3
    mov.w @r3,r3
    mov.w @(r0,r14),r0
    extu.w r3,r3
    extu.w r0,r0
    or r3,r0
    tst 0x40,r0
    bt LAB_ce31016
    mov.w @(DAT_ce3108a,pc),r0
    mov 0x00,r4
    mov 0x1B,r3
    mov.w r4,@(r0,r14)
    mov.w @(DAT_ce3108c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31098,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3109c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce310a0,pc),r3
    mov 0x15,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce310a4,pc),r2
    mov r14,r4
    mov 0x04,r6
    mov 0x08,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31016:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3101c:
    mov.w @(DAT_ce3108e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31038
    cmp/eq 0x01,r0
    bt LAB_ce31038
    cmp/eq 0x02,r0
    bt LAB_ce31048
    bra LAB_ce31080
    nop

LAB_ce31038:
    mov.l @(PTR_ce310a8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31054
    bra LAB_ce31080
    nop

LAB_ce31048:
    mov.l @(PTR_ce310a8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3105e

LAB_ce31054:
    lds.l @r15+,PR
    mov.l @(PTR_ce310ac,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3105e:
    mov.w @(DAT_ce31090,pc),r0
    mov.b @(r0,r14),r3
    mova @(DAT_ce310b0,pc),r0
    fmov.s @r0,fr2
    lds r3,FPUL
    mov.w @(DAT_ce31092,pc),r0
    float FPUL,fr3
    mov.b @(r0,r14),r3
    tst r3,r3
    fmov fr3,fr4
    bf/s LAB_ce31078
    fmul fr2,fr4
    fneg fr4

LAB_ce31078:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce31080:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31086:
    #data 0x0141
DAT_ce31088:
    #data 0x034e
DAT_ce3108a:
    #data 0x0352
DAT_ce3108c:
    #data 0x01a1
DAT_ce3108e:
    #data 0x01e8
DAT_ce31090:
    #data 0x0140
DAT_ce31092:
    #data 0x01d2
    #align4

PTR_ce31094:
    #data loc_8c05211c
PTR_ce31098:
    #data loc_8c2896b0
PTR_ce3109c:
    #data loc_8c05225e
PTR_ce310a0:
    #data loc_8c04223a
PTR_ce310a4:
    #data loc_8c034e8c
PTR_ce310a8:
    #data loc_8c034dee
PTR_ce310ac:
    #data loc_8c051648
DAT_ce310b0:
    #data 0x3fd55555

;=============================================

LAB_ce310b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31150,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31154,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce310ca:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31158,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce3115c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3114a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce310ea
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce310f2
    mov.l @r15+,r14

LAB_ce310ea:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce311f0
    mov.l @r15+,r14

LAB_ce310f2:
    mov.w @(DAT_ce3114c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce31112
    mov 0x00,r13
    cmp/eq 0x02,r0
    bt LAB_ce31112
    cmp/eq 0x01,r0
    bt LAB_ce31134
    bra LAB_ce311d0
    nop

LAB_ce31112:
    mov.l @(PTR_ce31160,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31140
    mov.w @(DAT_ce3114e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311d0
    mov.l @(PTR_ce31164,pc),r3
    mov 0x04,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce311d0
    nop

LAB_ce31134:
    mov.l @(PTR_ce31160,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3116c

LAB_ce31140:
    mov.l @(PTR_ce31168,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce311d0
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3114a:
    #data 0x01fe
DAT_ce3114c:
    #data 0x01e8
DAT_ce3114e:
    #data 0x0141
    #align4

PTR_ce31150:
    #data loc_8c050084
PTR_ce31154:
    #data loc_8c04ff88
PTR_ce31158:
    #data loc_8c04fea8
PTR_ce3115c:
    #data loc_8c050048
PTR_ce31160:
    #data loc_8c034dee
PTR_ce31164:
    #data loc_8c0c04d0
PTR_ce31168:
    #data loc_8c05176e

;=============================================

LAB_ce3116c:
    mov.w @(DAT_ce31250,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311d0
    mov.w @(DAT_ce31252,pc),r0
    mov.w @(r0,r14),r2
    add 0x04,r0
    mov.w @(r0,r14),r3
    extu.w r2,r2
    extu.w r3,r3
    or r3,r2
    mov.w @(DAT_ce31254,pc),r3
    tst r3,r2
    bt LAB_ce311d0
    mov.w @(DAT_ce31256,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce311d0
    mov.w @(DAT_ce31258,pc),r0
    mov 0x1D,r3
    mov.w r13,@(r0,r14)
    mov.w @(DAT_ce3125a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31260,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31264,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31268,pc),r3
    mov 0x1F,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3126c,pc),r2
    mov 0x0B,r5
    mov 0x04,r6
    jsr @r2
    mov r14,r4

LAB_ce311d0:
    mov.l @(PTR_ce31270,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce311e8
    lds.l @r15+,PR
    mov.l @(PTR_ce31274,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce311e8:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce311f0:
    mov.w @(DAT_ce3125c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce3120c
    cmp/eq 0x01,r0
    bt LAB_ce3120c
    cmp/eq 0x02,r0
    bt LAB_ce31238
    bra LAB_ce3124a
    nop

LAB_ce3120c:
    mov.l @(PTR_ce31278,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31222
    lds.l @r15+,PR
    mov.l @(PTR_ce3127c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31222:
    mov.l @(PTR_ce31270,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3124a
    lds.l @r15+,PR
    mov.l @(PTR_ce31274,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31238:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31280,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3124a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31250:
    #data 0x0141
DAT_ce31252:
    #data 0x034e
DAT_ce31254:
    #data 0x0200
DAT_ce31256:
    #data 0x01fc
DAT_ce31258:
    #data 0x0352
DAT_ce3125a:
    #data 0x01a1
DAT_ce3125c:
    #data 0x01e8
    #align4

PTR_ce31260:
    #data loc_8c2896b0
PTR_ce31264:
    #data loc_8c05225e
PTR_ce31268:
    #data loc_8c042008
PTR_ce3126c:
    #data loc_8c034e8c
PTR_ce31270:
    #data loc_8c052ce2
PTR_ce31274:
    #data loc_8c052dac
PTR_ce31278:
    #data loc_8c034dee
PTR_ce3127c:
    #data loc_8c05176e
PTR_ce31280:
    #data PTR_ce35184

;=============================================

LAB_ce31284:
    mov.w @(DAT_ce31378,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3129e
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.l @(PTR_ce31384,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3129e:
    mov.l @(PTR_ce31388,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312b4
    lds.l @r15+,PR
    mov.l @(PTR_ce3138c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce312b4:
    mov.l @(PTR_ce31390,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce312ca
    lds.l @r15+,PR
    mov.l @(PTR_ce31394,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce312ca:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31388,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31378,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31314
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31378,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31398,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3137a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3130c
    mova @(DAT_ce3139c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)

LAB_ce3130c:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce31314:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3131a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31388,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3137c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce313ac
    fldi0 fr4
    mova @(DAT_ce313a0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce313a4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce313a8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3137e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3135c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3135c:
    mov.w @(DAT_ce31380,pc),r0
    mov 0xFF,r3
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.l @(PTR_ce3138c,pc),r3
    mov.b @(r0,r14),r13
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3137e,pc),r0
    mov.b r13,@(r0,r14)
    extu.b r13,r13
    mov.w @(DAT_ce31382,pc),r0
    bra LAB_ce313f2
    mov.w r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31378:
    #data 0x0141
DAT_ce3137a:
    #data 0x01fc
DAT_ce3137c:
    #data 0x019e
DAT_ce3137e:
    #data 0x01d2
DAT_ce31380:
    #data 0x01d3
DAT_ce31382:
    #data 0x0130
    #align4

PTR_ce31384:
    #data loc_8c04223a
PTR_ce31388:
    #data loc_8c034dee
PTR_ce3138c:
    #data loc_8c05176e
PTR_ce31390:
    #data loc_8c052ce2
PTR_ce31394:
    #data loc_8c052dac
DAT_ce31398:
    #data 0xc1ab6db6
DAT_ce3139c:
    #data 0xc1dedb6d
DAT_ce313a0:
    #data 0x40baaaaa
DAT_ce313a4:
    #data 0x41700000
DAT_ce313a8:
    #data 0xbf892492

;=============================================

LAB_ce313ac:
    mov.w @(DAT_ce314f4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce313f2
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce314f4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce314f6,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce314fc,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31500,pc),r2
    mov 0x03,r6
    mov 0x01,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce313f2:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce313fa:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31504,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31414
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31508,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31414:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3141c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31478
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov 0x14,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce314f6,pc),r0
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3150c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31510,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31514,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31500,pc),r2
    mov 0x14,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31518,pc),r3
    mov 0x16,r5
    jsr @r3
    mov r14,r4

LAB_ce31478:
    mov.w @(DAT_ce314f8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31488
    mov.l @(PTR_ce3151c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31488:
    mov 0x5C,r1
    mov.l @(PTR_ce31520,pc),r3
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
    mov.l @(PTR_ce31504,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce314dc
    lds.l @r15+,PR
    mov.l @(PTR_ce31508,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce314dc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce314e2:
    mov r4,r3
    mov.l @(PTR_ce31524,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314f4:
    #data 0x041c
DAT_ce314f6:
    #data 0x01f9
DAT_ce314f8:
    #data 0x01ff
    #align4

PTR_ce314fc:
    #data loc_8c0511b4
PTR_ce31500:
    #data loc_8c034e8c
PTR_ce31504:
    #data loc_8c034dee
PTR_ce31508:
    #data loc_8c051648
PTR_ce3150c:
    #data loc_8c2896b0
PTR_ce31510:
    #data loc_8c052b4c
PTR_ce31514:
    #data loc_8c056de4
PTR_ce31518:
    #data loc_8c04223a
PTR_ce3151c:
    #data loc_8c0511e2
PTR_ce31520:
    #data loc_8c052c84
PTR_ce31524:
    #data PTR_ce35194

;=============================================

LAB_ce31528:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31658,pc),r0
    mov.b @(r0,r4),r3
    mov 0x20,r0
    mov.b r3,@(r0,r4)
    mov 0x18,r0
    mov.w r0,@(0x1c,r4)
    mova @(DAT_ce31660,pc),r0
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
    bt LAB_ce31560
    mova @(DAT_ce31664,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)

LAB_ce31560:
    mov.w @(DAT_ce3165a,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31570
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce31570:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31668,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3165c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce315fe
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce315b0
    mov.w @(DAT_ce31658,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce315b0
    mov 0x20,r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31660,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3165a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce315b0
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce315b0:
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
    bt LAB_ce315fe
    lds.l @r15+,PR
    mov.l @(PTR_ce3166c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce315fe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31604:
    mov r4,r3
    mov.l @(PTR_ce31670,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31616:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31668,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3165c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce316b4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce31674,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31658,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31684
    mova @(DAT_ce31678,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce3167c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31680,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    bra LAB_ce3169c
    fmov fr3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31658:
    #data 0x0200
DAT_ce3165a:
    #data 0x01d2
DAT_ce3165c:
    #data 0x0141
    #align4

DAT_ce31660:
    #data 0xc1855555
DAT_ce31664:
    #data 0xc1d55555
PTR_ce31668:
    #data loc_8c034dee
PTR_ce3166c:
    #data loc_8c051648
PTR_ce31670:
    #data PTR_ce3519c
DAT_ce31674:
    #data 0xbf4db6db
DAT_ce31678:
    #data 0x41a00000
DAT_ce3167c:
    #data 0x40a00000
DAT_ce31680:
    #data 0xbf092492

;=============================================

LAB_ce31684:
    mova @(DAT_ce317a8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce317ac,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce3169c:
    mov.w @(DAT_ce3179e,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce316b4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce316b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce316ba:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce317b0,pc),r3
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
    mov.w @(DAT_ce317a0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31726
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce317a0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce317a2,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    bra FUN_ce3172c
    mov.l @r15+,r14

LAB_ce31726:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3172c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce317b0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31746
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce317b4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31746:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3174e:
    mov r4,r3
    mov.l @(PTR_ce317b8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31760:
    mov.l @(PTR_ce317bc,pc),r2
    mov 0x02,r1
    mov.b @r2,r3
    extu.b r3,r3
    cmp/ge r1,r3
    bt LAB_ce31778
    mov.w @(DAT_ce317a4,pc),r3
    mov 0x00,r0
    add r4,r3
    mov.b r0,@r3
    bra LAB_ce31788
    nop

LAB_ce31778:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce317a4,pc),r0
    mov.b r3,@(r0,r4)
    bra LAB_ce3178c
    nop

LAB_ce31788:
    rts
    nop

LAB_ce3178c:
    mov r4,r3
    mov.l @(PTR_ce317c0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3179e:
    #data 0x0130
DAT_ce317a0:
    #data 0x041c
DAT_ce317a2:
    #data 0x01f9
DAT_ce317a4:
    #data 0x012c
    #align4

DAT_ce317a8:
    #data 0x41c80000
DAT_ce317ac:
    #data 0x40d55555
PTR_ce317b0:
    #data loc_8c034dee
PTR_ce317b4:
    #data loc_8c051648
PTR_ce317b8:
    #data PTR_ce351a8
PTR_ce317bc:
    #data loc_8c2895f0
PTR_ce317c0:
    #data PTR_ce351b4

;=============================================

LAB_ce317c4:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce318cc,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce318d0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce318d4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce318d8,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce318dc,pc),r0
    fmov.s @r0,fr5
    mov.b @(0x2,r14),r0
    tst r0,r0
    bt LAB_ce31800
    mova @(DAT_ce318e0,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce318e4,pc),r0
    fmov.s @r0,fr5

LAB_ce31800:
    mov 0x34,r0
    mov.l @(PTR_ce318e8,pc),r3
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

LAB_ce31822:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce318ec,pc),r3
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
    bf LAB_ce318b2
    mov.l @(PTR_ce318f0,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce318c6
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov 0x5C,r1
    mov.b r0,@(0x7,r14)
    add r14,r1
    mov.l @(PTR_ce318e8,pc),r3
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x12,r5
    mov 0x02,r6
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce318cc,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce318f4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce318b2:
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce318e8,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x12,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce318c6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce318cc:
    #data 0x01f9
    #align4

DAT_ce318d0:
    #data 0x41ab6db6
DAT_ce318d4:
    #data 0xbf2b6db6
DAT_ce318d8:
    #data 0xc3555555
DAT_ce318dc:
    #data 0x40555555
DAT_ce318e0:
    #data 0x43555555
DAT_ce318e4:
    #data 0xc0555555
PTR_ce318e8:
    #data loc_8c034e8c
PTR_ce318ec:
    #data loc_8c034dee
PTR_ce318f0:
    #data loc_8c052ce2
PTR_ce318f4:
    #data loc_8c0511b4

;=============================================

LAB_ce318f8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31a08,pc),r3
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
    mov.l @(PTR_ce31a0c,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce31976
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov 0x5C,r1
    mov.b r0,@(0x7,r14)
    add r14,r1
    mov.l @(PTR_ce31a10,pc),r3
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x02,r6
    mov 0x12,r5
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce31a04,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31976:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3197c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a08,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319a0
    mov.b @(0x5,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce31a10,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x5,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce319a0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce319a6:
    mov r4,r3
    mov.l @(PTR_ce31a14,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce319b8:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce319e0
    cmp/eq 0x02,r0
    bt LAB_ce319e0
    cmp/eq 0x01,r0
    bt LAB_ce319f4
    cmp/eq 0x03,r0
    bt LAB_ce319f4
    cmp/eq 0x04,r0
    bt LAB_ce319f4
    bra LAB_ce31a00
    nop

LAB_ce319e0:
    mov.l @(PTR_ce31a18,pc),r3
    mov 0x21,r1
    add r14,r1
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    and 0x01,r0
    mov.b r0,@r1
    mov 0x21,r0
    bra LAB_ce319f6
    mov.b @(r0,r14),r6

LAB_ce319f4:
    mov 0x02,r6

LAB_ce319f6:
    mov.l @(PTR_ce31a10,pc),r2
    mov r14,r4
    mov 0x13,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a00:
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a04:
    #data 0x01f9
    #align4

PTR_ce31a08:
    #data loc_8c034dee
PTR_ce31a0c:
    #data loc_8c052ce2
PTR_ce31a10:
    #data loc_8c034e8c
PTR_ce31a14:
    #data PTR_ce351c0
PTR_ce31a18:
    #data loc_8c26823c

;=============================================

LAB_ce31a1c:
    mov.w @(DAT_ce31b04,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x16,r0
    bf LAB_ce31a44
    mov.l @(PTR_ce31b0c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce31a44
    lds.l @r15+,PR
    mov.l @(PTR_ce31b10,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a44:
    mov 0x20,r0
    mov.l @(PTR_ce31b14,pc),r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31a64
    cmp/eq 0x02,r0
    bt LAB_ce31a64
    cmp/eq 0x04,r0
    bt LAB_ce31a64
    cmp/eq 0x01,r0
    bt LAB_ce31ad2
    cmp/eq 0x03,r0
    bt LAB_ce31ad2
    bra LAB_ce31ad6
    nop

LAB_ce31a64:
    mov 0x21,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31a98
    jsr @r13
    mov r14,r4
    mov.w @(DAT_ce31b06,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31ad6
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce31b08,pc),r0
    lds r3,FPUL
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31a8e
    float FPUL,fr4
    fneg fr4

LAB_ce31a8e:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    bra LAB_ce31ad6
    fmov fr3,@(r0,r14)

LAB_ce31a98:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31abc
    mov.w @(DAT_ce31b06,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31ad6
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x06,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce31b18,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31abc:
    mov 0x20,r0
    mov r14,r4
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x00,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce31b1c,pc),r3
    mov r6,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ad2:
    jsr @r13
    mov r14,r4

LAB_ce31ad6:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31ade:
    mov.w @(DAT_ce31b0a,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31b20,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31af2:
    mov r4,r3
    mov.l @(PTR_ce31b24,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b04:
    #data 0x01d0
DAT_ce31b06:
    #data 0x0141
DAT_ce31b08:
    #data 0x01d2
DAT_ce31b0a:
    #data 0x01e9
    #align4

PTR_ce31b0c:
    #data loc_8c046c8a
PTR_ce31b10:
    #data loc_8c051648
PTR_ce31b14:
    #data loc_8c034dee
PTR_ce31b18:
    #data loc_8c0c04d0
PTR_ce31b1c:
    #data loc_8c034e8c
PTR_ce31b20:
    #data PTR_ce351c8
PTR_ce31b24:
    #data PTR_ce351f0

;=============================================

LAB_ce31b28:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    mov 0x01,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31c56,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31c58,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31c5a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x28,r0
    mov.b r13,@(r0,r14)
    add 0xD9,r0
    mov.b r13,@(r0,r14)
    add 0x18,r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31c5c,pc),r0
    fldi0 fr4
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    add 0x03,r0
    mov.w r0,@(0x1e,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31c5c,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    extu.b r3,r3
    shll r3
    add 0x4C,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.l @(PTR_ce31c60,pc),r3
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.l @r3,r2
    add 0x7C,r2
    mov.b @(0x2,r14),r0
    extu.b r0,r0
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31c64,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31c68,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31c6c,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce31c70,pc),r3
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31bcc:
    mov r4,r3
    mov.l @(PTR_ce31c74,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31bde:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31c78,pc),r3
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
    mov.w @(DAT_ce31c5e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31c4a
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31c5e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31c7c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x00,r5
    bsr FUN_ce31fa8
    mov r14,r4
    mov.l @(PTR_ce31c80,pc),r3
    mov 0x1F,r5
    jsr @r3
    mov r14,r4

LAB_ce31c4a:
    bsr FUN_ce3201a
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3205e
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c56:
    #data 0x01f9
DAT_ce31c58:
    #data 0x041c
DAT_ce31c5a:
    #data 0x01d4
DAT_ce31c5c:
    #data 0x01a3
DAT_ce31c5e:
    #data 0x0141
    #align4

PTR_ce31c60:
    #data loc_8c2896b0
PTR_ce31c64:
    #data loc_8c05218a
PTR_ce31c68:
    #data loc_8c05115a
PTR_ce31c6c:
    #data loc_8c056de4
PTR_ce31c70:
    #data loc_8c034e8c
PTR_ce31c74:
    #data PTR_ce351fc
PTR_ce31c78:
    #data loc_8c034dee
PTR_ce31c7c:
    #data loc_8c053082
PTR_ce31c80:
    #data loc_8c042008

;=============================================

LAB_ce31c84:
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
    bt/s LAB_ce31cdc
    mov r14,r4
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce31cdc:
    mov.l @(PTR_ce31d68,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d5a
    mov.b @(0x7,r14),r0
    mov 0x01,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    bsr FUN_ce31fa8
    mov r14,r4
    mov.l @(PTR_ce31d6c,pc),r2
    mov 0x1F,r5
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf/s LAB_ce31d3a
    mov 0x00,r4
    mov 0x03,r0
    mov.b r0,@(0x7,r14)
    mov 0x4B,r3
    mov.w @(DAT_ce31d66,pc),r0
    mov 0x03,r6
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31d70,pc),r3
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
    mov.l @(PTR_ce31d74,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31d3a:
    mov 0x20,r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov r3,r6
    mov.w @(0x1e,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31d74,pc),r3
    mov 0x15,r5
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d5a:
    bsr FUN_ce3201a
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3205e
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d66:
    #data 0x01a1
    #align4

PTR_ce31d68:
    #data loc_8c034dee
PTR_ce31d6c:
    #data loc_8c042008
PTR_ce31d70:
    #data loc_8c2896b0
PTR_ce31d74:
    #data loc_8c034e8c

;=============================================

LAB_ce31d78:
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
    bt/s LAB_ce31dd0
    mov r14,r4
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce31dd0:
    mov.l @(PTR_ce31e60,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e50
    mov.l @(PTR_ce31e64,pc),r3
    mov 0x1F,r5
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt/s LAB_ce31e1a
    mov 0x00,r4
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bf LAB_ce31e1a
    mov.l @(DAT_ce31e68,pc),r1
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
    bra LAB_ce31e44
    add 0x01,r6

LAB_ce31e1a:
    mov 0x03,r0
    mov.b r0,@(0x7,r14)
    mov 0x4B,r3
    mov.w @(DAT_ce31e5c,pc),r0
    mov 0x03,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31e6c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31e44:
    lds.l @r15+,PR
    mov.l @(PTR_ce31e70,pc),r2
    mov 0x15,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e50:
    bsr FUN_ce3201a
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3205e
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e5c:
    #data 0x01a1
    #align4

PTR_ce31e60:
    #data loc_8c034dee
PTR_ce31e64:
    #data loc_8c042008
DAT_ce31e68:
    #data 0x412b6db6
PTR_ce31e6c:
    #data loc_8c2896b0
PTR_ce31e70:
    #data loc_8c034e8c

;=============================================

LAB_ce31e74:
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
    bt/s LAB_ce31ecc
    mov r14,r4
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce31ecc:
    mov.l @(PTR_ce31f94,pc),r3
    jsr @r3
    nop
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31f02
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov r14,r4
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.w @(DAT_ce31f8a,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31f98,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    mov.l @(PTR_ce31f9c,pc),r3
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f02:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f08:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce31f6e
    mov 0x60,r1
    mov.l @(PTR_ce31f94,pc),r3
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
    mov.w @(DAT_ce31f8c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31f84
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31f8e,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31f8c,pc),r0
    mov.l @(PTR_ce31f9c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f90,pc),r0
    mov.b @(r0,r14),r6
    add 0x05,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31fa0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31f6e:
    mov.l @(PTR_ce31f94,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31f84
    lds.l @r15+,PR
    mov.l @(PTR_ce31fa4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31f84:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f8a:
    #data 0x019e
DAT_ce31f8c:
    #data 0x041c
DAT_ce31f8e:
    #data 0x01f9
DAT_ce31f90:
    #data 0x01a3
    #align4

PTR_ce31f94:
    #data loc_8c034dee
DAT_ce31f98:
    #data 0xbf9a4924
PTR_ce31f9c:
    #data loc_8c034e8c
PTR_ce31fa0:
    #data loc_8c0511b4
PTR_ce31fa4:
    #data loc_8c051648

;=============================================

FUN_ce31fa8:
    mov.l @(PTR_ce320c4,pc),r0
    shll2 r5
    mov.l @(r0,r5),r5
    mov.w @(DAT_ce320b4,pc),r0
    mov.b @(r0,r4),r3
    mova @(DAT_ce320c8,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce320cc,pc),r0
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
    mova @(DAT_ce320d0,pc),r0
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
    mov.w @(DAT_ce320b6,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32016
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce32016:
    rts
    nop

;=============================================

FUN_ce3201a:
    mov.w @(DAT_ce320b8,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3205a
    mov.w @(DAT_ce320b4,pc),r0
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
    mov.l @(PTR_ce320d4,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce320b8,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3205a:
    rts
    nop

LAB_ce3205e:
    mov.w @(DAT_ce320ba,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3209e
    mov.w @(DAT_ce320bc,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce32090
    mov 0x01,r6
    mov.w @(DAT_ce320be,pc),r0
    mov.w @(r0,r4),r3
    add 0xF6,r0
    mov.w @(r0,r4),r5
    or r3,r5
    mov.w @(DAT_ce320c0,pc),r3
    extu.w r5,r5
    tst r3,r5
    bt LAB_ce3209e
    mov r6,r0
    nop
    mov.w r0,@(0x1c,r4)
    mov 0x00,r2
    mov.w @(DAT_ce320be,pc),r0
    bra LAB_ce3209e
    mov.w r2,@(r0,r4)

LAB_ce32090:
    mov.w @(DAT_ce320c2,pc),r0
    mov.b @(r0,r4),r1
    tst r1,r1
    bf LAB_ce3209e
    mov r6,r0
    nop
    mov.w r0,@(0x1c,r4)

LAB_ce3209e:
    rts
    nop

LAB_ce320a2:
    mov r4,r3
    mov.l @(PTR_ce320d8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320b4:
    #data 0x01a3
DAT_ce320b6:
    #data 0x01d2
DAT_ce320b8:
    #data 0x014b
DAT_ce320ba:
    #data 0x0140
DAT_ce320bc:
    #data 0x0525
DAT_ce320be:
    #data 0x0352
DAT_ce320c0:
    #data 0x0300
DAT_ce320c2:
    #data 0x0411
    #align4

PTR_ce320c4:
    #data PTR_ce35074
DAT_ce320c8:
    #data 0x3fd55555
DAT_ce320cc:
    #data 0x47800000
DAT_ce320d0:
    #data 0x40092492
PTR_ce320d4:
    #data loc_8c2896b0
PTR_ce320d8:
    #data PTR_ce3520c

;=============================================

LAB_ce320dc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce32198,pc),r13
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add r14,r13
    tst r0,r0
    bf/s LAB_ce32140
    mov 0x00,r12
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov r12,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x01,r3
    mov.w @(DAT_ce3219a,pc),r0
    mov 0x05,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce321a0,pc),r3
    mov.b r12,@r13
    jsr @r3
    mov r14,r4
    bsr FUN_ce326c2
    mov r14,r4
    mov.w @(DAT_ce3219c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce3212e
    mov 0x09,r13
    mov.w @(DAT_ce3219e,pc),r0
    mov 0x08,r13
    mov.l @(PTR_ce321a4,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce3212e:
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce321a8,pc),r2
    mov r14,r4
    mov 0x15,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32140:
    mov.l @(PTR_ce321ac,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3217c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.l @(PTR_ce321b0,pc),r2
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov.b r3,@r13
    jsr @r2
    mov r14,r4
    bsr FUN_ce326c2
    mov r14,r4
    bsr FUN_ce326f8
    mov r14,r4
    bsr FUN_ce3280c
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce321b4,pc),r2
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3217c:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32186:
    mov r4,r3
    mov.l @(PTR_ce321b8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32198:
    #data 0x02a4
DAT_ce3219a:
    #data 0x01a3
DAT_ce3219c:
    #data 0x01f9
DAT_ce3219e:
    #data 0x041c
    #align4

PTR_ce321a0:
    #data loc_8c056de4
PTR_ce321a4:
    #data loc_8c05115a
PTR_ce321a8:
    #data loc_8c034e8c
PTR_ce321ac:
    #data loc_8c034dee
PTR_ce321b0:
    #data loc_8c053082
PTR_ce321b4:
    #data loc_8c0ee1e0
PTR_ce321b8:
    #data PTR_ce3521c

;=============================================

LAB_ce321bc:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    fmov.s fr15,@-r15
    mov.w @(DAT_ce322e2,pc),r11
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    add r14,r11
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
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    mov 0x6C,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    mov.l @(PTR_ce322f4,pc),r12
    fmov.s @r1,fr3
    mov 0x02,r10
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce322f0,pc),r0
    fmov.s @r0,fr15
    mov.w @(DAT_ce322e4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32282
    mov 0x01,r13
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce322f8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce322fc,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce322e4,pc),r0
    mov.b @(r0,r14),r3
    tst r13,r3
    bt LAB_ce3224c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce3224c:
    mov 0x5C,r0
    mov.l @(PTR_ce32300,pc),r3
    fmov.s @(r0,r14),fr2
    fneg fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce322e6,pc),r0
    mov.b r10,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce322e8,pc),r0
    mov.b @(r0,r14),r2
    mov.b @(0x2,r11),r0
    cmp/eq r0,r2
    bt/s LAB_ce32276
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x09,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bra LAB_ce3227a
    mov 0x01,r5

LAB_ce32276:
    mov 0x15,r5
    mov 0x13,r6

LAB_ce3227a:
    jsr @r12
    nop
    bra LAB_ce32336
    nop

LAB_ce32282:
    mov.w @(DAT_ce322ea,pc),r0
    mov.b @(r0,r14),r4
    tst r4,r4
    bt LAB_ce322b2
    mov.w @(DAT_ce322ec,pc),r0
    mov r13,r3
    mov.b @(r0,r14),r2
    extu.b r2,r2
    shad r2,r3
    tst r3,r4
    bf LAB_ce322b2
    mov 0x22,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce322b2
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x04,r0
    bt LAB_ce322b2
    mov r10,r0
    nop
    mov.b r0,@(0x7,r14)
    bra LAB_ce322d8
    mov 0x14,r6

LAB_ce322b2:
    mov.w @(DAT_ce322ee,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32304
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce322ee,pc),r0
    mov.l @(PTR_ce32300,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce322e6,pc),r0
    mov 0x15,r6
    mov.b r13,@(r0,r14)

LAB_ce322d8:
    mov 0x15,r5
    jsr @r12
    mov r14,r4
    bra LAB_ce32336
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce322e2:
    #data 0x02a4
DAT_ce322e4:
    #data 0x019e
DAT_ce322e6:
    #data 0x01f9
DAT_ce322e8:
    #data 0x0272
DAT_ce322ea:
    #data 0x01fd
DAT_ce322ec:
    #data 0x01d2
DAT_ce322ee:
    #data 0x041c
    #align4

DAT_ce322f0:
    #data 0xbf4db6db
PTR_ce322f4:
    #data loc_8c034e8c
DAT_ce322f8:
    #data 0x4191b6db
DAT_ce322fc:
    #data 0x41000000
PTR_ce32300:
    #data loc_8c05218a

;=============================================

LAB_ce32304:
    mov.l @(PTR_ce32438,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32336
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3243c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce32424,pc),r0
    mov.b r10,@(r0,r14)
    mov.b r13,@r11
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32426,pc),r0
    mov 0x15,r5
    mov.b @(r0,r14),r6
    add 0x01,r6
    jsr @r12
    mov r14,r4

LAB_ce32336:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32346:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32428,pc),r13
    mov r4,r14
    mov.l @(PTR_ce32438,pc),r3
    add r14,r13
    jsr @r3
    mov 0x01,r12
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce323fe
    mov.b @(0x1,r13),r0
    tst r0,r0
    bt/s LAB_ce323d4
    mov 0x00,r4
    mov.w @(DAT_ce3242c,pc),r0
    mov.w @(DAT_ce3242a,pc),r3
    mov.w @(r0,r14),r2
    and r3,r2
    mov.w r2,@r15
    extu.w r2,r2
    tst r2,r2
    bt LAB_ce323d4
    mov.w @r15,r3
    mov.l @(PTR_ce32440,pc),r0
    extu.w r3,r3
    shlr8 r3
    shlr2 r3
    extu.w r3,r5
    mov.w r3,@r15
    mov.b @(r0,r5),r5
    extu.b r5,r5
    tst r5,r5
    bt LAB_ce323d4
    mov.w @(DAT_ce3242e,pc),r0
    mov r12,r2
    extu.w r3,r3
    mov.b @(r0,r14),r1
    extu.b r1,r1
    shad r1,r2
    tst r2,r3
    bf LAB_ce323d4
    mov.w @(DAT_ce32430,pc),r2
    mov 0x22,r0
    mov 0x02,r3
    add r2,r5
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce32424,pc),r0
    mov.b r3,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.b r12,@r13
    mov.b r0,@(0x1,r13)
    bsr FUN_ce326c2
    mov r14,r4
    bsr FUN_ce326f8
    mov r14,r4
    bsr FUN_ce3280c
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32444,pc),r2
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce323d4:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32432,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32448,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce323fe:
    mov.w @(DAT_ce32434,pc),r3
    mov r3,r0
    nop
    add 0xE0,r0
    mov.w @(r0,r14),r2
    and r3,r2
    mov.w r2,@r15
    extu.w r2,r2
    tst r2,r2
    bt LAB_ce32418
    mov r12,r0
    nop
    mov.b r0,@(0x1,r13)

LAB_ce32418:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32424:
    #data 0x01f9
DAT_ce32426:
    #data 0x0158
DAT_ce32428:
    #data 0x02a4
DAT_ce3242a:
    #data 0x3c00
DAT_ce3242c:
    #data 0x0340
DAT_ce3242e:
    #data 0x01d2
DAT_ce32430:
    #data 0x00ff
DAT_ce32432:
    #data 0x01fc
DAT_ce32434:
    #data 0x0360
    #align4

PTR_ce32438:
    #data loc_8c034dee
PTR_ce3243c:
    #data loc_8c04fea8
PTR_ce32440:
    #data DAT_ce3509c
PTR_ce32444:
    #data loc_8c05115a
PTR_ce32448:
    #data loc_8c051648

;=============================================

LAB_ce3244c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32522,pc),r13
    mov r4,r14
    mov.l @(PTR_ce32534,pc),r3
    add r14,r13
    jsr @r3
    mov 0x01,r12
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324fc
    mov.b @(0x1,r13),r0
    tst r0,r0
    bt LAB_ce324d0
    mov.w @(DAT_ce32526,pc),r0
    mov.w @(DAT_ce32524,pc),r3
    mov.w @(r0,r14),r2
    and r3,r2
    mov.w r2,@r15
    extu.w r2,r2
    tst r2,r2
    bt LAB_ce324d0
    mov.w @r15,r3
    mov.w @(DAT_ce32528,pc),r0
    extu.w r3,r3
    shlr8 r3
    shlr2 r3
    mov.w r3,@r15
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce32496
    mov.w @r15,r1
    add 0x10,r1
    mov.w r1,@r15

LAB_ce32496:
    mov.w @r15,r4
    mov.l @(PTR_ce32538,pc),r0
    extu.w r4,r4
    mov.b @(r0,r4),r4
    extu.b r4,r4
    tst r4,r4
    bt LAB_ce324d0
    mov.w @(DAT_ce3252a,pc),r2
    mov 0x22,r0
    mov 0x02,r3
    add r2,r4
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3252c,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.b r12,@r13
    mov.b r0,@(0x1,r13)
    bsr FUN_ce326c2
    mov r14,r4
    bsr FUN_ce326f8
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra FUN_ce3280c
    mov.l @r15+,r14

LAB_ce324d0:
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
    mov.w @(DAT_ce3252e,pc),r0
    mov r14,r4
    mov.b r12,@(r0,r14)
    add 0xFE,r0
    mov.b r3,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3253c,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce324fc:
    mov.w @(DAT_ce32530,pc),r3
    mov r3,r0
    nop
    add 0xE0,r0
    mov.w @(r0,r14),r2
    and r3,r2
    mov.w r2,@r15
    extu.w r2,r2
    tst r2,r2
    bt LAB_ce32516
    mov r12,r0
    nop
    mov.b r0,@(0x1,r13)

LAB_ce32516:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32522:
    #data 0x02a4
DAT_ce32524:
    #data 0x3c00
DAT_ce32526:
    #data 0x0340
DAT_ce32528:
    #data 0x01d2
DAT_ce3252a:
    #data 0x00ff
DAT_ce3252c:
    #data 0x01f9
DAT_ce3252e:
    #data 0x01d5
DAT_ce32530:
    #data 0x0360
    #align4

PTR_ce32534:
    #data loc_8c034dee
PTR_ce32538:
    #data DAT_ce350ac
PTR_ce3253c:
    #data loc_8c05176e

;=============================================

LAB_ce32540:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r1
    mov r4,r14
    mov 0x34,r0
    mov.w @(DAT_ce3263c,pc),r3
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
    mov.w @(DAT_ce3263e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce325c2
    mov 0x00,r13
    mov.w @(DAT_ce3263e,pc),r0
    mov r14,r4
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32640,pc),r0
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
    mov.l @(PTR_ce32648,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce325c2:
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce32624
    mov.l @(PTR_ce3264c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32632
    mov.w @(DAT_ce32640,pc),r0
    mov 0x02,r3
    mov 0x01,r4
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32642,pc),r0
    mov.l @r15,r3
    mov.b r4,@r3
    mov.b @(r0,r14),r5
    tst r5,r5
    bt LAB_ce3260c
    exts.b r5,r0
    tst 0x01,r0
    bf LAB_ce3260c
    mov.w @(DAT_ce32644,pc),r0
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
    mov.l @(PTR_ce32650,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3260c:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32644,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    add 0x27,r0
    mov.b r13,@(r0,r14)
    add 0xDA,r0
    bra LAB_ce32632
    mov.b r13,@(r0,r14)

LAB_ce32624:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3264c,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32632:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3263c:
    #data 0x02a4
DAT_ce3263e:
    #data 0x041c
DAT_ce32640:
    #data 0x01f9
DAT_ce32642:
    #data 0x019e
DAT_ce32644:
    #data 0x01d4
    #align4

PTR_ce32648:
    #data loc_8c052dac
PTR_ce3264c:
    #data loc_8c034dee
PTR_ce32650:
    #data loc_8c05176e

;=============================================

LAB_ce32654:
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
    mov.w @(DAT_ce327ce,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce326bc
    mov.w @(DAT_ce327ce,pc),r0
    mov 0x00,r3
    fldi0 fr4
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce327d0,pc),r0
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    mov.l @(PTR_ce327d8,pc),r3
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    jmp @r3
    fmov fr4,@(r0,r4)

LAB_ce326bc:
    mov.l @(PTR_ce327dc,pc),r3
    jmp @r3
    nop

;=============================================

FUN_ce326c2:
    mov 0x22,r0
    mov.w @(DAT_ce327d2,pc),r5
    mov.b @(r0,r4),r3
    mov 0x00,r6
    mov.w @(DAT_ce327d4,pc),r0
    add r4,r5
    add 0x52,r3
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r6,@(r0,r4)
    add 0xF2,r0
    mov.b r6,@(r0,r4)
    add 0x26,r0
    mov.l r6,@(r0,r4)
    mov.l @(PTR_ce327e0,pc),r3
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce327d6,pc),r0
    mov.b @(r0,r4),r0
    rts
    mov.b r0,@(0x2,r5)

;=============================================

FUN_ce326f8:
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
    mov.l @(PTR_ce327f0,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce327e4,pc),r0
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
    mova @(DAT_ce327e8,pc),r0
    fmov.s @r0,fr14
    mova @(DAT_ce327ec,pc),r0
    mov.w @r15,r13
    fmov.s @r0,fr15
    jsr @r3
    mov r13,r4
    fmov fr13,fr3
    fmul fr0,fr3
    mova @(DAT_ce327f4,pc),r0
    mov.l @(PTR_ce32800,pc),r3
    fmov.s @r0,fr2
    mova @(DAT_ce327f8,pc),r0
    fmov.s @r0,fr1
    mov 0x5C,r0
    fmul fr14,fr3
    fdiv fr2,fr3
    fdiv fr15,fr3
    fmul fr1,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce327fc,pc),r0
    fmov.s @r0,fr12
    jsr @r3
    mov r13,r4
    fmul fr0,fr13
    mova @(DAT_ce32804,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce327f0,pc),r3
    fmul fr14,fr13
    fdiv fr12,fr13
    fdiv fr15,fr13
    fmul fr3,fr13
    fmov fr13,@(r0,r14)
    mova @(DAT_ce32808,pc),r0
    fmov.s @r0,fr13
    jsr @r3
    mov r13,r4
    fmov fr13,fr3
    fmul fr0,fr3
    mova @(DAT_ce327f4,pc),r0
    mov.l @(PTR_ce32800,pc),r3
    fmov.s @r0,fr2
    mova @(DAT_ce327f8,pc),r0
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
    mova @(DAT_ce32804,pc),r0
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

DAT_ce327ce:
    #data 0x041c
DAT_ce327d0:
    #data 0x01f9
DAT_ce327d2:
    #data 0x02a4
DAT_ce327d4:
    #data 0x01a1
DAT_ce327d6:
    #data 0x0272
    #align4

PTR_ce327d8:
    #data loc_8c052dac
PTR_ce327dc:
    #data loc_8c034dee
PTR_ce327e0:
    #data loc_8c2896b0
DAT_ce327e4:
    #data 0x48228000
DAT_ce327e8:
    #data 0x447a0000
DAT_ce327ec:
    #data 0x43800000
PTR_ce327f0:
    #data loc_8c11e2e0
DAT_ce327f4:
    #data 0x47c35000
DAT_ce327f8:
    #data 0x3fd55555
DAT_ce327fc:
    #data 0x47f42400
PTR_ce32800:
    #data loc_8c11e860
DAT_ce32804:
    #data 0x40092492
DAT_ce32808:
    #data 0x48960000

;=============================================

FUN_ce3280c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x22,r0
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32904,pc),r0
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce328f6,pc),r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce328f8,pc),r0
    extu.b r3,r3
    mov.w r3,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r13
    mov 0x05,r3
    extu.b r13,r13
    cmp/ge r3,r13
    bf LAB_ce3283c
    mov 0x08,r1
    sub r13,r1
    mov r1,r13

LAB_ce3283c:
    mov r13,r6
    mov.l @(PTR_ce32908,pc),r3
    shll r6
    mov 0x15,r5
    add 0x0A,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3290c,pc),r2
    mov r14,r4
    mov 0x20,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32858:
    mov r4,r3
    mov.l @(PTR_ce32910,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3286a:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce328fa,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce328fc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce328fe,pc),r0
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
    mov.w @(DAT_ce32900,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32914,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32918,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3291c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32920,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce328fe,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov 0x15,r5
    mov.l @(PTR_ce32908,pc),r3
    add 0x16,r6
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328f6:
    #data 0x01d2
DAT_ce328f8:
    #data 0x0130
DAT_ce328fa:
    #data 0x01f9
DAT_ce328fc:
    #data 0x041c
DAT_ce328fe:
    #data 0x01a3
DAT_ce32900:
    #data 0x01a1
    #align4

PTR_ce32904:
    #data DAT_ce350cc
PTR_ce32908:
    #data loc_8c034e8c
PTR_ce3290c:
    #data loc_8c042008
PTR_ce32910:
    #data PTR_ce35228
PTR_ce32914:
    #data loc_8c2896b0
PTR_ce32918:
    #data loc_8c05218a
PTR_ce3291c:
    #data loc_8c05115a
PTR_ce32920:
    #data loc_8c056de4

;=============================================

LAB_ce32924:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce329c8,pc),r3
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
    bt LAB_ce3299a
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce329cc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce329d0,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce329c0,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce329d4,pc),r3
    mov.b @(r0,r14),r6
    add 0x19,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce329d8,pc),r2
    mov 0x1F,r5
    jsr @r2
    mov r14,r4

LAB_ce3299a:
    mov.w @(DAT_ce329c2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce329ba
    mova @(DAT_ce329dc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce329c4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce329ba
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce329ba:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329c0:
    #data 0x01a3
DAT_ce329c2:
    #data 0x0141
DAT_ce329c4:
    #data 0x01d2
    #align4

PTR_ce329c8:
    #data loc_8c034dee
PTR_ce329cc:
    #data loc_8c0c04d0
PTR_ce329d0:
    #data loc_8c06a2ec
PTR_ce329d4:
    #data loc_8c034e8c
PTR_ce329d8:
    #data loc_8c042008
DAT_ce329dc:
    #data 0xc12d5555

;=============================================

LAB_ce329e0:
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
    mov.w @(DAT_ce32ab4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32a40
    mov 0x00,r13
    mov.b @(r0,r14),r3
    add 0xD5,r0
    mov.b @(r0,r14),r2
    mov r12,r1
    extu.b r2,r2
    shad r2,r1
    cmp/eq r1,r3
    bf LAB_ce32b12

LAB_ce32a40:
    mov.l @(PTR_ce32ac0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce32a90
    mov 0x20,r0
    mov.b @(r0,r14),r3
    cmp/pl r3
    bt LAB_ce32b40
    mov.w @(0x1c,r14),r0
    mov 0x01,r3
    cmp/gt r3,r0
    bf LAB_ce32b40
    mov.w @(DAT_ce32ab8,pc),r0
    mov.w @(DAT_ce32ab6,pc),r5
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32a82
    mov.w @(DAT_ce32aba,pc),r0
    mov.w @(r0,r14),r3
    add 0xF6,r0
    mov.w @(r0,r14),r4
    or r3,r4
    mov.w @(DAT_ce32abc,pc),r3
    extu.w r4,r4
    tst r3,r4
    bt LAB_ce32b40
    mov 0x20,r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce32aba,pc),r0
    bra LAB_ce32b40
    mov.w r13,@(r0,r14)

LAB_ce32a82:
    mov.w @(DAT_ce32abe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32b40
    mov 0x20,r0
    bra LAB_ce32b40
    mov.b r5,@(r0,r14)

LAB_ce32a90:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce32b12
    mov.w @(0x1e,r14),r0
    xor 0x01,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce32ad6
    mov 0x20,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32ac4
    bra LAB_ce32acc
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ab4:
    #data 0x01fd
DAT_ce32ab6:
    #data 0x00ff
DAT_ce32ab8:
    #data 0x0525
DAT_ce32aba:
    #data 0x0352
DAT_ce32abc:
    #data 0x0300
DAT_ce32abe:
    #data 0x0411
    #align4

PTR_ce32ac0:
    #data loc_8c034dee

;=============================================

LAB_ce32ac4:
    mov.b r12,@(r0,r14)
    mov r12,r0
    nop
    mov.w r0,@(0x1c,r14)

LAB_ce32acc:
    mov.w @(0x1c,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce32ad6
    mov 0x20,r0
    mov.b r12,@(r0,r14)

LAB_ce32ad6:
    mov.w @(0x1e,r14),r0
    mov.l @(PTR_ce32c0c,pc),r3
    mov r0,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32c04,pc),r2
    mov 0x15,r5
    mov.w @(0x1e,r14),r0
    add r14,r2
    mov.b @r2,r2
    mov r0,r3
    shll r0
    extu.b r2,r2
    add r3,r0
    mov.l @(PTR_ce32c10,pc),r3
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
    mov.l @(PTR_ce32c14,pc),r2
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32b12:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fldi0 fr4
    mov r14,r4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x15,r5
    mov.w @(DAT_ce32c04,pc),r0
    mov.b @(r0,r14),r6
    add 0x1F,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32c10,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32b40:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32b4c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32c18,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32b66
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32c1c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32b66:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32b6e:
    mov r4,r3
    mov.l @(PTR_ce32c20,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32b80:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    fldi0 fr4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32c06,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32c08,pc),r0
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
    mov.w @(DAT_ce32c04,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x5A,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32c24,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32c28,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32c2c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32c04,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov 0x15,r5
    mov.l @(PTR_ce32c10,pc),r3
    add 0x24,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32bf2:
    mov r4,r3
    mov.l @(PTR_ce32c30,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c04:
    #data 0x01a3
DAT_ce32c06:
    #data 0x01f9
DAT_ce32c08:
    #data 0x041c
    #align4

PTR_ce32c0c:
    #data loc_8c06a2ec
PTR_ce32c10:
    #data loc_8c034e8c
PTR_ce32c14:
    #data loc_8c042008
PTR_ce32c18:
    #data loc_8c034dee
PTR_ce32c1c:
    #data loc_8c051648
PTR_ce32c20:
    #data PTR_ce35238
PTR_ce32c24:
    #data loc_8c2896b0
PTR_ce32c28:
    #data loc_8c05218a
PTR_ce32c2c:
    #data loc_8c05115a
PTR_ce32c30:
    #data PTR_ce35244

;=============================================

LAB_ce32c34:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32d3c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32c92
    mov.b @(0x7,r14),r0
    mov 0x03,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x04,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32d34,pc),r0
    mov.b r3,@(r0,r14)
    add 0xB1,r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce32d40,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    mova @(DAT_ce32d44,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce32d48,pc),r0
    lds r3,FPUL
    fmov.s @r0,fr1
    mov 0x5C,r0
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr1,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d36,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32c86
    mov 0x27,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32c86:
    lds.l @r15+,PR
    mov.l @(PTR_ce32d4c,pc),r3
    mov 0x15,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32c92:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c98:
    mov.w @(DAT_ce32d38,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32cb6
    mov.l @(PTR_ce32d50,pc),r3
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x01,r0
    bt LAB_ce32cb6
    mov.l @(PTR_ce32d54,pc),r1
    jsr @r1
    mov r14,r4

LAB_ce32cb6:
    mov.w @(DAT_ce32d34,pc),r0
    mov 0x03,r3
    mov 0x02,r2
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov 0x5C,r1
    mov.b r2,@(r0,r14)
    add r14,r1
    mov.l @(PTR_ce32d3c,pc),r3
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
    bf LAB_ce32d2e
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x28,r6
    mov.w @(DAT_ce32d3a,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce32d58,pc),r0
    fmov.s @r0,fr2
    mov 0x68,r0
    fneg fr3
    fdiv fr2,fr3
    mov.l @(PTR_ce32d4c,pc),r3
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
    mov.l @(PTR_ce32d5c,pc),r2
    mov 0x20,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32d2e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d34:
    #data 0x01f2
DAT_ce32d36:
    #data 0x01d2
DAT_ce32d38:
    #data 0x01a3
DAT_ce32d3a:
    #data 0x01f5
    #align4

PTR_ce32d3c:
    #data loc_8c034dee
PTR_ce32d40:
    #data DAT_ce350d4
DAT_ce32d44:
    #data 0x3fd55555
DAT_ce32d48:
    #data 0x47800000
PTR_ce32d4c:
    #data loc_8c034e8c
PTR_ce32d50:
    #data loc_8c26823c
PTR_ce32d54:
    #data loc_8c0511e2
DAT_ce32d58:
    #data 0x41000000
PTR_ce32d5c:
    #data loc_8c042008

;=============================================

LAB_ce32d60:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r0
    mov.l r13,@-r15
    fldi0 fr3
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fcmp/eq fr3,fr2
    bt LAB_ce32d8a
    mov.l @(PTR_ce32e4c,pc),r3
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x01,r0
    bt LAB_ce32d84
    mov.l @(PTR_ce32e50,pc),r1
    jsr @r1
    mov r14,r4

LAB_ce32d84:
    mov.w @(DAT_ce32e44,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)

LAB_ce32d8a:
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    mov 0x00,r13
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt/s LAB_ce32daa
    fldi0 fr15
    mov.w @(DAT_ce32e44,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce32daa:
    mov.l @(PTR_ce32e54,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32df4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.w @(DAT_ce32e46,pc),r0
    mov r14,r4
    mov.l @(PTR_ce32e58,pc),r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32e48,pc),r0
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
    mov.w @(DAT_ce32e4a,pc),r0
    fmov.s @r15+,fr15
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    add 0x29,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32df4:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32dfe:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32e54,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32e18
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32e5c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32e18:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32e20:
    mov r4,r3
    mov.l @(PTR_ce32e60,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32e32:
    mov r4,r3
    mov.l @(PTR_ce32e64,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e44:
    #data 0x01f2
DAT_ce32e46:
    #data 0x01f9
DAT_ce32e48:
    #data 0x041c
DAT_ce32e4a:
    #data 0x01a3
    #align4

PTR_ce32e4c:
    #data loc_8c26823c
PTR_ce32e50:
    #data loc_8c0511e2
PTR_ce32e54:
    #data loc_8c034dee
PTR_ce32e58:
    #data loc_8c034e8c
PTR_ce32e5c:
    #data loc_8c051648
PTR_ce32e60:
    #data PTR_ce35250
PTR_ce32e64:
    #data PTR_ce3525c

;=============================================

LAB_ce32e68:
    mov.w @(DAT_ce32faa,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32e86
    mov.w @(DAT_ce32fae,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32fac,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32e86:
    mov.b @(0x7,r14),r0
    mov 0x00,r13
    fldi0 fr4
    mov 0x30,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32fb0,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32fb2,pc),r0
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
    mov.w @(DAT_ce32fb4,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce32fc0,pc),r3
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
    mov.l @(PTR_ce32fc4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32fc8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce32fcc,pc),r2
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32eec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32fb6,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32fb8,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32faa,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32f0e
    bra LAB_ce32f10
    mov 0x02,r3

LAB_ce32f0e:
    mov 0x00,r3

LAB_ce32f10:
    mov.w @(DAT_ce32fba,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32fd0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32fbc,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce32f4e
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32fdc,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r6
    mov.w @(DAT_ce32fbc,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32fae,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32fd4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32fd8,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32f4e:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f56:
    mov.w @(DAT_ce32fb6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32fb8,pc),r0
    mov.l @(PTR_ce32fd0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32fbc,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32fa4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce32fe0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32fbe,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32f9a
    mov 0x05,r5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32f9a:
    lds.l @r15+,PR
    mov.l @(PTR_ce32fe4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32fa4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32faa:
    #data 0x0255
DAT_ce32fac:
    #data 0x00ff
DAT_ce32fae:
    #data 0x03f0
DAT_ce32fb0:
    #data 0x01f9
DAT_ce32fb2:
    #data 0x041c
DAT_ce32fb4:
    #data 0x01a1
DAT_ce32fb6:
    #data 0x03f8
DAT_ce32fb8:
    #data 0x0328
DAT_ce32fba:
    #data 0x03f1
DAT_ce32fbc:
    #data 0x0141
DAT_ce32fbe:
    #data 0x01d2
    #align4

PTR_ce32fc0:
    #data loc_8c2896b0
PTR_ce32fc4:
    #data loc_8c05218a
PTR_ce32fc8:
    #data loc_8c05115a
PTR_ce32fcc:
    #data loc_8c034e8c
PTR_ce32fd0:
    #data loc_8c034dee
DAT_ce32fd4:
    #data 0x40555555
DAT_ce32fd8:
    #data 0x42cdb6db
PTR_ce32fdc:
    #data loc_8c050834
DAT_ce32fe0:
    #data 0xc2200000
PTR_ce32fe4:
    #data loc_8c0c04d0

;=============================================

LAB_ce32fe8:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33138,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce33124,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ffe:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33126,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    add r14,r1
    mov.w @(DAT_ce33128,pc),r0
    mov.l @(PTR_ce3313c,pc),r3
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
    mov.w @(DAT_ce3312a,pc),r0
    mov.l @(PTR_ce33140,pc),r12
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce33080
    mov 0x00,r13
    mov.b @(r0,r14),r3
    add 0xD5,r0
    mov.b @(r0,r14),r2
    mov 0x01,r1
    extu.b r2,r2
    shad r2,r1
    cmp/eq r1,r3
    bt LAB_ce33080
    mov.w @(DAT_ce3312c,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3312e,pc),r0
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
    jsr @r12
    mov r14,r4
    bra LAB_ce33116
    nop

LAB_ce33080:
    mov.w @(DAT_ce33130,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33116
    mov.l @(PTR_ce33144,pc),r3
    fldi0 fr15
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce330e2
    mov.w @(DAT_ce33132,pc),r0
    mov.l @(r0,r14),r4
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.l @r15,r3
    mov.l r4,@(0x4,r3)
    mov.l @r15,r3
    mov r13,r0
    nop
    mov.w r0,@(0x8,r3)
    mova @(DAT_ce33148,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce33134,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce330ba
    mova @(DAT_ce3314c,pc),r0
    fmov.s @r0,fr4

LAB_ce330ba:
    mov 0x34,r0
    mov.l @(PTR_ce33150,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x08,r6
    mov r6,r5
    fadd fr4,fr3
    fmov fr3,@(r0,r4)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce33136,pc),r0
    mov.b r13,@(r0,r4)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce33110
    mov 0x01,r6

LAB_ce330e2:
    mov.w @(DAT_ce3312c,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3312e,pc),r0
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

LAB_ce33110:
    mov 0x16,r5
    jsr @r12
    mov r14,r4

LAB_ce33116:
    add 0x04,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33124:
    #data 0x02a4
DAT_ce33126:
    #data 0x03f8
DAT_ce33128:
    #data 0x0328
DAT_ce3312a:
    #data 0x01fd
DAT_ce3312c:
    #data 0x03f9
DAT_ce3312e:
    #data 0x0327
DAT_ce33130:
    #data 0x019e
DAT_ce33132:
    #data 0x01b0
DAT_ce33134:
    #data 0x01d2
DAT_ce33136:
    #data 0x01f9
    #align4

PTR_ce33138:
    #data PTR_ce35268
PTR_ce3313c:
    #data loc_8c034dee
PTR_ce33140:
    #data loc_8c034e8c
PTR_ce33144:
    #data loc_8c05264c
DAT_ce33148:
    #data 0xc2c80000
DAT_ce3314c:
    #data 0x42c80000
PTR_ce33150:
    #data loc_8c02fec4

;=============================================

LAB_ce33154:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33266,pc),r0
    mov r4,r14
    mov 0x02,r4
    mov.l r5,@r15
    mov.b r4,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce33268,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @r15,r2
    mov.w @(0x8,r2),r0
    add 0x01,r0
    mov.w r0,@(0x8,r2)
    mov.w @(DAT_ce3326a,pc),r0
    mov.b r4,@(r0,r14)
    add 0xA9,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3318e
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33278,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3318e:
    mov.l @(PTR_ce3327c,pc),r2
    mov 0x00,r13
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce33200
    mov.w @(DAT_ce3326c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3325c
    mov.b @(r0,r14),r3
    add 0x60,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33280,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3326c,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce331e4
    mov.w @(DAT_ce3326e,pc),r0
    mov.l @(PTR_ce33284,pc),r2
    mov.b @(r0,r14),r5
    add 0x1D,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3326e,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce331e4:
    mov.l @r15,r4
    mov.w @(DAT_ce33270,pc),r0
    mov.l @(0x4,r4),r4
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3325c
    mov.l @(DAT_ce33288,pc),r1
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    bra LAB_ce3325c
    fmov fr2,@(r0,r4)

LAB_ce33200:
    mov.b @(0x7,r14),r0
    mov 0x05,r3
    mov 0x00,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33272,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33268,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3328c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33290,pc),r2
    jsr @r2
    mov r14,r4
    mova @(DAT_ce33294,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce33274,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33234
    mova @(DAT_ce33298,pc),r0
    fmov.s @r0,fr4

LAB_ce33234:
    mov 0x34,r0
    mov.l @(DAT_ce3329c,pc),r1
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
    mov.l @(PTR_ce332a0,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3325c:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33266:
    #data 0x03f8
DAT_ce33268:
    #data 0x0328
DAT_ce3326a:
    #data 0x01f5
DAT_ce3326c:
    #data 0x0141
DAT_ce3326e:
    #data 0x0140
DAT_ce33270:
    #data 0x0202
DAT_ce33272:
    #data 0x03f9
DAT_ce33274:
    #data 0x01d2
    #align4

PTR_ce33278:
    #data loc_8c051648
PTR_ce3327c:
    #data loc_8c034dee
PTR_ce33280:
    #data loc_8c2896b0
PTR_ce33284:
    #data loc_8c042008
DAT_ce33288:
    #data 0x40892492
PTR_ce3328c:
    #data loc_8c02fec4
PTR_ce33290:
    #data loc_8c06a51c
DAT_ce33294:
    #data 0xc2a00000
DAT_ce33298:
    #data 0x42a00000
DAT_ce3329c:
    #data 0x42892492
PTR_ce332a0:
    #data loc_8c034e8c

;=============================================

LAB_ce332a4:
    mov.w @(DAT_ce333a8,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r4)
    mov 0x00,r3
    mov.b @(0x7,r4),r0
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce333aa,pc),r0
    mov.l @(0x4,r5),r6
    mov.b r3,@(r0,r6)
    mov 0x32,r0
    mov.w r0,@(0x1c,r4)
    mova @(DAT_ce333b0,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce333b4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce333ac,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce332dc
    mova @(DAT_ce333b8,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce332dc:
    mov 0x34,r0
    mov.l @(DAT_ce333bc,pc),r1
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
    mova @(DAT_ce333c0,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)

LAB_ce33304:
    mov.w @(DAT_ce333a8,pc),r0
    mov 0x05,r3
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
    mov.l @(PTR_ce333c4,pc),r3
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce333a2
    mov.w @(DAT_ce333ae,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce333c8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce333ac,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33382
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33382:
    mova @(DAT_ce333cc,pc),r0
    mov.l @(PTR_ce333d4,pc),r3
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x01,r6
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce333d0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x04,r7
    mov r6,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce333a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce333a8:
    #data 0x0328
DAT_ce333aa:
    #data 0x0236
DAT_ce333ac:
    #data 0x01d2
DAT_ce333ae:
    #data 0x0327
    #align4

DAT_ce333b0:
    #data 0xc2a00000
DAT_ce333b4:
    #data 0xbf555555
DAT_ce333b8:
    #data 0x42a00000
DAT_ce333bc:
    #data 0x424db6db
DAT_ce333c0:
    #data 0x3f892492
PTR_ce333c4:
    #data loc_8c034dee
DAT_ce333c8:
    #data 0xc0555555
DAT_ce333cc:
    #data 0x414db6db
DAT_ce333d0:
    #data 0xbf892492
PTR_ce333d4:
    #data loc_8c034f54

;=============================================

LAB_ce333d8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce334a8,pc),r3
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
    mov.w @(DAT_ce334a2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33456
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce334a2,pc),r0
    mov.l @(PTR_ce334ac,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce334a4,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce334b0,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33456:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3345c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce334a8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33476
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce334b4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33476:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3347e:
    mov r4,r3
    mov.l @(PTR_ce334b8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33490:
    mov r4,r3
    mov.l @(PTR_ce334bc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce334a2:
    #data 0x041c
DAT_ce334a4:
    #data 0x01f9
    #align4

PTR_ce334a8:
    #data loc_8c034dee
PTR_ce334ac:
    #data loc_8c0511b4
PTR_ce334b0:
    #data loc_8c034e8c
PTR_ce334b4:
    #data loc_8c051648
PTR_ce334b8:
    #data PTR_ce3527c
PTR_ce334bc:
    #data PTR_ce35288

;=============================================

LAB_ce334c0:
    mov.w @(DAT_ce335d0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce334de
    mov.w @(DAT_ce335d4,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce335d2,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce334de:
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    fldi0 fr4
    mov 0x41,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce335d6,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce335d8,pc),r0
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
    mov.w @(DAT_ce335da,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce335e4,pc),r3
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
    mov.l @(PTR_ce335e8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce335ec,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce335d0,pc),r0
    mov 0x05,r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x04,r0
    bf/s LAB_ce33544
    mov 0x06,r4
    mov r4,r13

LAB_ce33544:
    mov.w @(DAT_ce335d0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bf LAB_ce33550
    mov r4,r13

LAB_ce33550:
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce335f0,pc),r2
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33560:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce335dc,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce335de,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce335d0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33582
    bra LAB_ce33584
    mov 0x02,r3

LAB_ce33582:
    mov 0x00,r3

LAB_ce33584:
    mov.w @(DAT_ce335e0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce335f4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce335e2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce335c8
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce335d0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bt LAB_ce335c8
    mov.w @(DAT_ce335d4,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce33600,pc),r3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce335f8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce335fc,pc),r0
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce335c8:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce335d0:
    #data 0x0255
DAT_ce335d2:
    #data 0x00ff
DAT_ce335d4:
    #data 0x03f0
DAT_ce335d6:
    #data 0x01f9
DAT_ce335d8:
    #data 0x041c
DAT_ce335da:
    #data 0x01a1
DAT_ce335dc:
    #data 0x03f8
DAT_ce335de:
    #data 0x0328
DAT_ce335e0:
    #data 0x03f1
DAT_ce335e2:
    #data 0x0141
    #align4

PTR_ce335e4:
    #data loc_8c2896b0
PTR_ce335e8:
    #data loc_8c05218a
PTR_ce335ec:
    #data loc_8c05115a
PTR_ce335f0:
    #data loc_8c034e8c
PTR_ce335f4:
    #data loc_8c034dee
DAT_ce335f8:
    #data 0xc2a00000
DAT_ce335fc:
    #data 0x42092492
PTR_ce33600:
    #data loc_8c050834

;=============================================

LAB_ce33604:
    mov.w @(DAT_ce33736,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce33738,pc),r0
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
    mov.w @(DAT_ce3373a,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33744,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3373c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3364c
    mov 0x05,r5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3364c:
    mov.l @(PTR_ce33748,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3374c,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33750,pc),r3
    mov 0x1F,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33754,pc),r2
    mov r14,r4
    mov 0x07,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33670:
    mov.w @(DAT_ce33736,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33738,pc),r0
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
    mov.w @(DAT_ce3373e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce33760
    mov 0x00,r13
    mov.l @(PTR_ce33758,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce336d6
    bra LAB_ce337e8
    nop

LAB_ce336d6:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce33770
    mov.w @(0x1e,r14),r0
    mov.l @(PTR_ce3374c,pc),r3
    xor 0x01,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1e,r14),r0
    mov r0,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33750,pc),r2
    mov 0x1F,r5
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    mov r14,r4
    mov 0x16,r5
    mov r0,r3
    mov.w @(DAT_ce33740,pc),r0
    add 0x41,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3375c,pc),r3
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
    mov.l @(PTR_ce33754,pc),r2
    mov.l @r15+,r13
    mov r0,r6
    add 0x07,r6
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33736:
    #data 0x03f8
DAT_ce33738:
    #data 0x0328
DAT_ce3373a:
    #data 0x01a3
DAT_ce3373c:
    #data 0x01d2
DAT_ce3373e:
    #data 0x01fd
DAT_ce33740:
    #data 0x01a1
    #align4

DAT_ce33744:
    #data 0xc1055555
PTR_ce33748:
    #data loc_8c0c04d0
PTR_ce3374c:
    #data loc_8c06a2ec
PTR_ce33750:
    #data loc_8c042008
PTR_ce33754:
    #data loc_8c034e8c
PTR_ce33758:
    #data loc_8c034dee
PTR_ce3375c:
    #data loc_8c2896b0

;=============================================

LAB_ce33760:
    mov.b @(r0,r14),r2
    add 0xD5,r0
    mov.b @(r0,r14),r3
    mov 0x01,r1
    extu.b r3,r3
    shad r3,r1
    cmp/eq r1,r2
    bt LAB_ce337e8

LAB_ce33770:
    mov.w @(DAT_ce33836,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33838,pc),r0
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
    mov.w @(DAT_ce3383a,pc),r0
    mov.b @(r0,r14),r5
    extu.b r5,r0
    cmp/eq 0x04,r0
    bt/s LAB_ce337b4
    mov r0,r5
    mov r5,r0
    nop
    cmp/eq 0x05,r0
    bf LAB_ce337b6

LAB_ce337b4:
    mov 0x62,r4

LAB_ce337b6:
    mov.w @(DAT_ce3383c,pc),r0
    mov 0x0A,r6
    mov.l @(PTR_ce33840,pc),r3
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
    mov.l @(PTR_ce33844,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce337e8:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce337f0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33848,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3380a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3384c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3380a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33812:
    mov r4,r3
    mov.l @(PTR_ce33850,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33824:
    mov r4,r3
    mov.l @(PTR_ce33854,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33836:
    #data 0x03f9
DAT_ce33838:
    #data 0x0327
DAT_ce3383a:
    #data 0x0255
DAT_ce3383c:
    #data 0x01a1
    #align4

PTR_ce33840:
    #data loc_8c2896b0
PTR_ce33844:
    #data loc_8c034e8c
PTR_ce33848:
    #data loc_8c034dee
PTR_ce3384c:
    #data loc_8c051648
PTR_ce33850:
    #data PTR_ce35294
PTR_ce33854:
    #data PTR_ce352a0

;=============================================

LAB_ce33858:
    mov.w @(DAT_ce33914,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33876
    mov.w @(DAT_ce33918,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33916,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33876:
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
    mov.w @(DAT_ce3391a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33924,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3391c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce338d4
    mov 0x0B,r13
    mova @(DAT_ce33928,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3392c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    bra LAB_ce338da
    add 0x01,r13

LAB_ce338d4:
    mov.l @(PTR_ce33930,pc),r1
    jsr @r1
    mov r14,r4

LAB_ce338da:
    mov.l @(PTR_ce33934,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce33938,pc),r2
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce338f0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3391e,pc),r0
    mov r4,r14
    mov 0x02,r13
    mov.b r13,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce33920,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33914,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3393c
    bra LAB_ce3393e
    mov 0x02,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33914:
    #data 0x0255
DAT_ce33916:
    #data 0x00ff
DAT_ce33918:
    #data 0x03f0
DAT_ce3391a:
    #data 0x01a1
DAT_ce3391c:
    #data 0x01f9
DAT_ce3391e:
    #data 0x03f8
DAT_ce33920:
    #data 0x0328
    #align4

PTR_ce33924:
    #data loc_8c2896b0
DAT_ce33928:
    #data 0x41092492
DAT_ce3392c:
    #data 0xbf2b6db6
PTR_ce33930:
    #data loc_8c05115a
PTR_ce33934:
    #data loc_8c05218a
PTR_ce33938:
    #data loc_8c034e8c

;=============================================

LAB_ce3393c:
    mov 0x00,r2

LAB_ce3393e:
    mov.w @(DAT_ce33a60,pc),r0
    mov 0x5C,r1
    add r14,r1
    mov.l @(PTR_ce33a6c,pc),r3
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
    mov.w @(DAT_ce33a62,pc),r0
    mov.b @(r0,r14),r2
    tst r13,r2
    bt/s LAB_ce339f6
    mov 0x00,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x02,r3
    mov.w @(DAT_ce33a62,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce33a64,pc),r0
    mov.l @(PTR_ce33a70,pc),r4
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce339b8
    add 0x08,r4

LAB_ce339b8:
    mov.l @r4+,r3
    mova @(DAT_ce33a74,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce33a78,pc),r0
    lds r3,FPUL
    fmov.s @r0,fr2
    mov 0x5C,r0
    float FPUL,fr3
    fmul fr2,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33a7c,pc),r0
    mov.l @r4,r3
    fmov.s @r0,fr1
    mov 0x60,r0
    lds r3,FPUL
    float FPUL,fr3
    fmul fr1,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33a66,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce339f0
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce339f0:
    mov.w @(DAT_ce33a64,pc),r0
    bra LAB_ce33a3c
    mov.b r13,@(r0,r14)

LAB_ce339f6:
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce33a3c
    mov.w @(DAT_ce33a68,pc),r0
    mov 0x01,r3
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33a62,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33a64,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce33a24
    mova @(DAT_ce33a80,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33a84,pc),r0
    fmov.s fr3,@r15
    bra LAB_ce33a2e
    fmov.s @r0,fr3

LAB_ce33a24:
    mova @(DAT_ce33a88,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33a8c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3

LAB_ce33a2e:
    mov.l @(PTR_ce33a90,pc),r3
    mov 0x04,r0
    mov r15,r5
    fmov fr3,@(r0,r15)
    mov 0x01,r6
    jsr @r3
    mov r14,r4

LAB_ce33a3c:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33a46:
    mov.w @(DAT_ce33a6a,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33a94,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a60:
    #data 0x03f1
DAT_ce33a62:
    #data 0x0141
DAT_ce33a64:
    #data 0x01f9
DAT_ce33a66:
    #data 0x01d2
DAT_ce33a68:
    #data 0x03f0
DAT_ce33a6a:
    #data 0x01f5
    #align4

PTR_ce33a6c:
    #data loc_8c034dee
PTR_ce33a70:
    #data DAT_ce350dc
DAT_ce33a74:
    #data 0x47800000
DAT_ce33a78:
    #data 0x3fd55555
DAT_ce33a7c:
    #data 0x40092492
DAT_ce33a80:
    #data 0xc1d55555
DAT_ce33a84:
    #data 0x432b6db6
DAT_ce33a88:
    #data 0xc2f00000
DAT_ce33a8c:
    #data 0x42dedb6d
PTR_ce33a90:
    #data loc_8c050834
PTR_ce33a94:
    #data PTR_ce352a8

;=============================================

LAB_ce33a98:
    mov.w @(DAT_ce33b4e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33b50,pc),r0
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
    mov.l @(PTR_ce33b54,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33b52,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce33afa
    fldi0 fr4
    mov 0x60,r0
    fmov fr4,@(r0,r14)

LAB_ce33afa:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33b48
    mov.b @(0x7,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce33b5c,pc),r3
    mov 0x0D,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce33b58,pc),r0
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
    mov.l @(PTR_ce33b60,pc),r2
    mov 0x02,r5
    mov 0x01,r7
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33b64,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33b48:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33b4e:
    #data 0x03f8
DAT_ce33b50:
    #data 0x0328
DAT_ce33b52:
    #data 0x041c
    #align4

PTR_ce33b54:
    #data loc_8c034dee
DAT_ce33b58:
    #data 0x41800000
PTR_ce33b5c:
    #data loc_8c034e8c
PTR_ce33b60:
    #data loc_8c03544c
PTR_ce33b64:
    #data loc_8c06a714

;=============================================

LAB_ce33b68:
    mov.w @(DAT_ce33cae,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33cb0,pc),r0
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
    mov.l @(PTR_ce33cbc,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33cb2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce33bca
    fldi0 fr4
    mov 0x60,r0
    fmov fr4,@(r0,r14)

LAB_ce33bca:
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce33c24
    mov.w @(DAT_ce33cb4,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33cb6,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce33cc0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33cb8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33c00
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33c00:
    mov 0x68,r0
    mov.l @(PTR_ce33ccc,pc),r3
    fmov fr4,@(r0,r14)
    mova @(DAT_ce33cc4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x01,r6
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33cc8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x08,r7
    mov r6,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33c24:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33c2a:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce33cbc,pc),r3
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
    mov.w @(DAT_ce33cb2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33ca8
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33cba,pc),r0
    mov.l @(PTR_ce33cd0,pc),r3
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33cb2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33cd4,pc),r2
    mov r14,r4
    mov 0x04,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33ca8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33cae:
    #data 0x03f8
DAT_ce33cb0:
    #data 0x0328
DAT_ce33cb2:
    #data 0x041c
DAT_ce33cb4:
    #data 0x03f9
DAT_ce33cb6:
    #data 0x0327
DAT_ce33cb8:
    #data 0x01d2
DAT_ce33cba:
    #data 0x01f9
    #align4

PTR_ce33cbc:
    #data loc_8c034dee
DAT_ce33cc0:
    #data 0xc0855555
DAT_ce33cc4:
    #data 0x40ab6db6
DAT_ce33cc8:
    #data 0xbf700000
PTR_ce33ccc:
    #data loc_8c034f54
PTR_ce33cd0:
    #data loc_8c0511b4
PTR_ce33cd4:
    #data loc_8c034e8c

;=============================================

LAB_ce33cd8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33dc4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33cfa
    mov.l @(PTR_ce33dc8,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33dcc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33cfa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33d00:
    mov r4,r3
    mov.l @(PTR_ce33dd0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33d12:
    mov.w @(DAT_ce33db4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33d2e
    mov.w @(DAT_ce33db8,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33db6,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33d2e:
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    fldi0 fr4
    mov 0x60,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33dba,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33dbc,pc),r0
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
    mov.w @(DAT_ce33dbe,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce33dd4,pc),r3
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
    mov.l @(PTR_ce33dd8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33ddc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33de0,pc),r2
    mov r14,r4
    mov 0x0E,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33d92:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33dc0,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33dc2,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33db4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33de4
    bra LAB_ce33de6
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33db4:
    #data 0x0255
DAT_ce33db6:
    #data 0x00ff
DAT_ce33db8:
    #data 0x03f0
DAT_ce33dba:
    #data 0x01f9
DAT_ce33dbc:
    #data 0x041c
DAT_ce33dbe:
    #data 0x01a1
DAT_ce33dc0:
    #data 0x03f8
DAT_ce33dc2:
    #data 0x0328
    #align4

PTR_ce33dc4:
    #data loc_8c034dee
PTR_ce33dc8:
    #data loc_8c035162
PTR_ce33dcc:
    #data loc_8c051648
PTR_ce33dd0:
    #data PTR_ce352b4
PTR_ce33dd4:
    #data loc_8c2896b0
PTR_ce33dd8:
    #data loc_8c05218a
PTR_ce33ddc:
    #data loc_8c05115a
PTR_ce33de0:
    #data loc_8c034e8c

;=============================================

LAB_ce33de4:
    mov 0x00,r3

LAB_ce33de6:
    mov.w @(DAT_ce33f2c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33f48,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33f2e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce33e24
    mov.w @(DAT_ce33f30,pc),r0
    mov 0x00,r4
    mov 0x01,r3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r3,r6
    mov.w @(DAT_ce33f2e,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce33f4c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33f50,pc),r0
    mov.l @(PTR_ce33f54,pc),r2
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4

LAB_ce33e24:
    mov.w @(DAT_ce33f2e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce33e52
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33f2e,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33f32,pc),r0
    mov.w @(DAT_ce33f34,pc),r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33f36,pc),r0
    mov.l @(PTR_ce33f58,pc),r3
    mov r0,r5
    add r14,r5
    mov.w r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce33e52:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33e5a:
    mov.w @(DAT_ce33f38,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33f3a,pc),r0
    mov.l @(PTR_ce33f48,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce33e8c
    mov.w @(DAT_ce33f2e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce33ea8
    lds.l @r15+,PR
    mov.l @(PTR_ce33f5c,pc),r2
    mov 0x07,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33e8c:
    mov.w @(DAT_ce33f3c,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce33f60,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33f3e,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33ea8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33eae:
    mov r4,r3
    mov.l @(PTR_ce33f64,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33ec0:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r3
    fldi0 fr4
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33f40,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x63,r3
    mov.w @(DAT_ce33f42,pc),r0
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
    mov.w @(DAT_ce33f44,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.l @(PTR_ce33f68,pc),r3
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33f6c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33f70,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33f74,pc),r2
    mov r14,r4
    mov 0x2C,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33f2c:
    #data 0x03f1
DAT_ce33f2e:
    #data 0x0141
DAT_ce33f30:
    #data 0x03f0
DAT_ce33f32:
    #data 0x0200
DAT_ce33f34:
    #data 0x01e0
DAT_ce33f36:
    #data 0x03ea
DAT_ce33f38:
    #data 0x03f8
DAT_ce33f3a:
    #data 0x0328
DAT_ce33f3c:
    #data 0x03f9
DAT_ce33f3e:
    #data 0x0327
DAT_ce33f40:
    #data 0x01f9
DAT_ce33f42:
    #data 0x041c
DAT_ce33f44:
    #data 0x01a1
    #align4

PTR_ce33f48:
    #data loc_8c034dee
DAT_ce33f4c:
    #data 0x41200000
DAT_ce33f50:
    #data 0x4311b6db
PTR_ce33f54:
    #data loc_8c050962
PTR_ce33f58:
    #data loc_8c0f047c
PTR_ce33f5c:
    #data loc_8c0c04d0
PTR_ce33f60:
    #data loc_8c051648
PTR_ce33f64:
    #data PTR_ce352c0
PTR_ce33f68:
    #data loc_8c2896b0
PTR_ce33f6c:
    #data loc_8c05218a
PTR_ce33f70:
    #data loc_8c05115a
PTR_ce33f74:
    #data loc_8c034e8c

;=============================================

LAB_ce33f78:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce340a0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33f94
    mov.l @(PTR_ce340a4,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce33fde
    nop

LAB_ce33f94:
    mov.w @(DAT_ce34096,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce33fb6
    mov.w @(DAT_ce34096,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce340a8,pc),r1
    mov 0x20,r5
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce340ac,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4

LAB_ce33fb6:
    mov.w @(DAT_ce34096,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce33fde
    mov.w @(DAT_ce34096,pc),r0
    mov 0x02,r3
    mov r15,r5
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce340b0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce340b4,pc),r0
    mov.l @(PTR_ce340b8,pc),r2
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4

LAB_ce33fde:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33fe6:
    mov r4,r3
    mov.l @(PTR_ce340bc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33ff8:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r3
    fldi0 fr4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34098,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3409a,pc),r0
    mov.l @(PTR_ce340c0,pc),r3
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
    mov.l @(PTR_ce340c4,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce34038:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce340a0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34052
    lds.l @r15+,PR
    mov.l @(PTR_ce340a4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34052:
    mov.w @(DAT_ce34096,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3406a
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x06,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce340ac,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3406a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34070:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce3409c,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3408e
    mov 0x06,r5
    cmp/eq 0x01,r0
    bt LAB_ce340c8
    cmp/eq 0x02,r0
    bt LAB_ce340c8
    bra LAB_ce340cc
    nop

LAB_ce3408e:
    mov.w @(DAT_ce3409e,pc),r0
    mov 0x05,r3
    bra LAB_ce340cc
    mov.b r3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34096:
    #data 0x0141
DAT_ce34098:
    #data 0x01f9
DAT_ce3409a:
    #data 0x041c
DAT_ce3409c:
    #data 0x04c9
DAT_ce3409e:
    #data 0x01e9
    #align4

PTR_ce340a0:
    #data loc_8c034dee
PTR_ce340a4:
    #data loc_8c051648
PTR_ce340a8:
    #data loc_8c042008
PTR_ce340ac:
    #data loc_8c0c04d0
DAT_ce340b0:
    #data 0xc2d55555
DAT_ce340b4:
    #data 0x42cdb6db
PTR_ce340b8:
    #data loc_8c050ea4
PTR_ce340bc:
    #data PTR_ce352c8
PTR_ce340c0:
    #data loc_8c05218a
PTR_ce340c4:
    #data loc_8c034e8c

;=============================================

LAB_ce340c8:
    mov.w @(DAT_ce341aa,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce340cc:
    mov.l @(PTR_ce341b4,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce340d2:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce341ac,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce340f0
    mov 0x06,r5
    cmp/eq 0x01,r0
    bt LAB_ce340f8
    cmp/eq 0x02,r0
    bt LAB_ce340f8
    bra LAB_ce340fc
    nop

LAB_ce340f0:
    mov.w @(DAT_ce341aa,pc),r0
    mov 0x05,r3
    bra LAB_ce340fc
    mov.b r3,@(r0,r4)

LAB_ce340f8:
    mov.w @(DAT_ce341aa,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce340fc:
    mov.l @(PTR_ce341b4,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce34102:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov 0x02,r7
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce341ac,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34126
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce3412c
    cmp/eq 0x02,r0
    bt LAB_ce34136
    bra LAB_ce34150
    nop

LAB_ce34126:
    mov.w @(DAT_ce341aa,pc),r0
    bra LAB_ce34130
    mov.b r7,@(r0,r4)

LAB_ce3412c:
    mov.w @(DAT_ce341aa,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce34130:
    mov.w @(DAT_ce341ae,pc),r0
    bra LAB_ce34150
    mov.b r6,@(r0,r4)

LAB_ce34136:
    mov.w @(DAT_ce341aa,pc),r0
    mov.b r6,@(r0,r4)
    add 0xBA,r0
    mov.b r6,@(r0,r4)
    mov 0x22,r0
    mov.b r7,@(r0,r4)
    mov.w @(DAT_ce341b0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce34150
    mov 0x22,r0
    mov 0x06,r3
    mov.b r3,@(r0,r4)

LAB_ce34150:
    mov.l @(PTR_ce341b4,pc),r3
    jmp @r3
    mov 0x15,r5

LAB_ce34156:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov 0x02,r7
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce341ac,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3417a
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce34180
    cmp/eq 0x02,r0
    bt LAB_ce3418a
    bra LAB_ce341a4
    nop

LAB_ce3417a:
    mov.w @(DAT_ce341aa,pc),r0
    bra LAB_ce34184
    mov.b r7,@(r0,r4)

LAB_ce34180:
    mov.w @(DAT_ce341aa,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce34184:
    mov.w @(DAT_ce341ae,pc),r0
    bra LAB_ce341a4
    mov.b r6,@(r0,r4)

LAB_ce3418a:
    mov.w @(DAT_ce341aa,pc),r0
    mov.b r6,@(r0,r4)
    add 0xBA,r0
    mov.b r6,@(r0,r4)
    mov 0x22,r0
    mov.b r7,@(r0,r4)
    mov.w @(DAT_ce341b0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce341a4
    mov 0x22,r0
    mov 0x06,r3
    mov.b r3,@(r0,r4)

LAB_ce341a4:
    mov.l @(PTR_ce341b4,pc),r3
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce341aa:
    #data 0x01e9
DAT_ce341ac:
    #data 0x04c9
DAT_ce341ae:
    #data 0x01a3
DAT_ce341b0:
    #data 0x01d2
    #align4

PTR_ce341b4:
    #data loc_8c0530d8

;=============================================

LAB_ce341b8:
    mov r4,r3
    mov.l @(PTR_ce342c8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce341ca:
    mov.b @(0x6,r4),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce342c2,pc),r0
    mov.b r3,@(r0,r4)
    mova @(DAT_ce342cc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce342c4,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce341ee
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce341ee:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce342d0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x4A,r3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce342d4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r5
    fmov fr3,@(r0,r4)
    mov 0x22,r6
    mov.w @(DAT_ce342c6,pc),r0
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce342d8,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce342dc,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce34232:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce342e0,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce342e4,pc),r3
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
    bt LAB_ce34294
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce342dc,pc),r3
    mov 0x23,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce34294:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3429a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce342e0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce342bc
    mov.l @(PTR_ce342e8,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce342ec,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce342bc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce342c2:
    #data 0x01f9
DAT_ce342c4:
    #data 0x01d2
DAT_ce342c6:
    #data 0x01a1
    #align4

PTR_ce342c8:
    #data PTR_ce352d0
DAT_ce342cc:
    #data 0x41f00000
DAT_ce342d0:
    #data 0x40892492
DAT_ce342d4:
    #data 0xbf4db6db
PTR_ce342d8:
    #data loc_8c2896b0
PTR_ce342dc:
    #data loc_8c034e8c
PTR_ce342e0:
    #data loc_8c034dee
PTR_ce342e4:
    #data loc_8c052ce2
PTR_ce342e8:
    #data loc_8c035162
PTR_ce342ec:
    #data loc_8c051854

;=============================================

LAB_ce342f0:
    mov.w @(DAT_ce34408,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34332
    mov.w @(DAT_ce3440a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce34332
    mov.w @(DAT_ce3440c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34332
    mov.w @(DAT_ce3440e,pc),r0
    mov.w @(DAT_ce34410,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce34332
    mov.w @(DAT_ce34412,pc),r0
    mov.l @(PTR_ce34420,pc),r13
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34348
    mov.w @(DAT_ce3440a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce34336

LAB_ce34332:
    bra LAB_ce34378
    mov 0x00,r0

LAB_ce34336:
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34374
    mov r0,r4
    mov.w @(DAT_ce34414,pc),r0
    mov 0x01,r3
    bra LAB_ce34374
    mov.b r3,@(r0,r14)

LAB_ce34348:
    mov.w @(DAT_ce3440a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce34364
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34374
    mov r0,r4
    mov.w @(DAT_ce34414,pc),r0
    mov 0x02,r3
    bra LAB_ce34374
    mov.b r3,@(r0,r14)

LAB_ce34364:
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34374
    mov r0,r4
    mov.w @(DAT_ce34414,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)

LAB_ce34374:
    mov r4,r0
    nop

LAB_ce34378:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34380:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce34416,pc),r3
    mov r4,r14
    mov.w @(DAT_ce34418,pc),r0
    add r14,r3
    mov.l r3,@r15
    mov.l @(PTR_ce34424,pc),r3
    mov.l @(r0,r14),r13
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3441a,pc),r0
    mov 0x03,r2
    mov r14,r4
    mov r13,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.l @r15,r3
    mov.b r0,@(0xc,r3)
    mov.w @(DAT_ce3441c,pc),r0
    mov.w @(r0,r14),r3
    mov.w r3,@(r0,r13)
    mov 0x01,r3
    mov.w @(r0,r13),r2
    xor r3,r2
    mov.w r2,@(r0,r13)
    mov.b @(r0,r13),r1
    mov.w @(DAT_ce3441e,pc),r0
    mov.b r1,@(r0,r13)
    add 0x25,r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce34428,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r1
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r1
    mov.l @r15+,r14

LAB_ce343d4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3442c,pc),r3
    mov r4,r14
    mov.l r5,@r15
    mov 0x38,r5
    jsr @r3
    mov.l @r15,r4
    mov.l @(PTR_ce34430,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34434,pc),r3
    mov 0x06,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x0F,r5
    mov 0x00,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce34438,pc),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34408:
    #data 0x0200
DAT_ce3440a:
    #data 0x01f9
DAT_ce3440c:
    #data 0x01a3
DAT_ce3440e:
    #data 0x01fa
DAT_ce34410:
    #data 0x0c00
DAT_ce34412:
    #data 0x01fe
DAT_ce34414:
    #data 0x01f7
DAT_ce34416:
    #data 0x02a4
DAT_ce34418:
    #data 0x01c8
DAT_ce3441a:
    #data 0x01ed
DAT_ce3441c:
    #data 0x0130
DAT_ce3441e:
    #data 0x01d2
    #align4

PTR_ce34420:
    #data loc_8c045790
PTR_ce34424:
    #data loc_8c056f2a
PTR_ce34428:
    #data PTR_ce352dc
PTR_ce3442c:
    #data loc_8c050552
PTR_ce34430:
    #data loc_8c05064e
PTR_ce34434:
    #data loc_8c02fec4
PTR_ce34438:
    #data loc_8c034e8c

;=============================================

LAB_ce3443c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34588,pc),r3
    mov r4,r14
    mov.l r5,@r15
    mov 0x38,r5
    jsr @r3
    mov.l @r15,r4
    mov.l @(PTR_ce3458c,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.l @r15,r3
    mov 0x00,r0
    mov 0x05,r6
    mov.w r0,@(0x1c,r3)
    mov r6,r5
    mov.l @(PTR_ce34590,pc),r3
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x0F,r5
    mov 0x02,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce34594,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce34476:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34588,pc),r3
    mov r4,r14
    mov.l r5,@r15
    mov 0x38,r5
    jsr @r3
    mov.l @r15,r4
    mov.l @(PTR_ce3458c,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34590,pc),r3
    mov 0x05,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x0F,r5
    mov 0x04,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce34594,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce344aa:
    mov.w @(DAT_ce34576,pc),r0
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
    mov.l @(PTR_ce34598,pc),r0
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce344cc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce34578,pc),r13
    sts.l PR,@-r15
    mov.w @(DAT_ce3457a,pc),r0
    add r14,r13
    mov.l @(PTR_ce3459c,pc),r3
    jsr @r3
    mov.l @(r0,r14),r12
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3451a
    mov.b @(0xc,r13),r0
    cmp/pl r0
    bt LAB_ce3451a
    mov.w @(DAT_ce3457c,pc),r0
    mov 0x01,r3
    mov r14,r4
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov 0x80,r2
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3457e,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    add 0x6D,r0
    mov.b r2,@(r0,r14)
    mov 0x00,r1
    add 0x50,r0
    mov.l @(PTR_ce345a0,pc),r2
    mov.b r1,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3451a:
    mov.b @(0xc,r13),r0
    cmp/pl r0
    bf LAB_ce34550
    mov.l @(PTR_ce345a4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce34530
    mov.w @(DAT_ce34580,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce34530:
    mov.w @(DAT_ce34582,pc),r0
    mov.l @(PTR_ce345a8,pc),r2
    mov.w @(r0,r12),r3
    add 0xFF,r3
    mov.w r3,@(r0,r12)
    jsr @r2
    mov r12,r4
    tst r0,r0
    bt LAB_ce34550
    mov.l @(PTR_ce34594,pc),r3
    mov 0xFF,r0
    mov 0x0F,r5
    mov.b r0,@(0xc,r13)
    mov 0x01,r6
    jsr @r3
    mov r14,r4

LAB_ce34550:
    mov.w @(DAT_ce34584,pc),r0
    mov r12,r5
    lds.l @r15+,PR
    mov.b @(r0,r14),r2
    mov r14,r4
    mov.l @(PTR_ce345ac,pc),r0
    mov.l @r15+,r12
    shar r2
    shll2 r2
    mov.l @r15+,r13
    mov.l @(r0,r2),r1
    jmp @r1
    mov.l @r15+,r14

LAB_ce3456a:
    mov.l @(PTR_ce345b0,pc),r3
    jmp @r3
    nop

LAB_ce34570:
    mov.l @(PTR_ce345b4,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34576:
    #data 0x01ea
DAT_ce34578:
    #data 0x02a4
DAT_ce3457a:
    #data 0x01c8
DAT_ce3457c:
    #data 0x01d2
DAT_ce3457e:
    #data 0x0130
DAT_ce34580:
    #data 0x0142
DAT_ce34582:
    #data 0x025c
DAT_ce34584:
    #data 0x0141
    #align4

PTR_ce34588:
    #data loc_8c050552
PTR_ce3458c:
    #data loc_8c05064e
PTR_ce34590:
    #data loc_8c02fec4
PTR_ce34594:
    #data loc_8c034e8c
PTR_ce34598:
    #data PTR_ce352e8
PTR_ce3459c:
    #data loc_8c034dee
PTR_ce345a0:
    #data loc_8c051648
PTR_ce345a4:
    #data loc_8c050682
PTR_ce345a8:
    #data loc_8c050610
PTR_ce345ac:
    #data PTR_ce352f4
PTR_ce345b0:
    #data loc_8c04cc1c
PTR_ce345b4:
    #data loc_8c04ce54

;=============================================

LAB_ce345b8:
    mov.w @(DAT_ce34708,pc),r0
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
    mov.l @(PTR_ce34710,pc),r3
    mov 0x02,r2
    jmp @r3
    mov.b r2,@(r0,r5)

LAB_ce345de:
    rts
    nop

LAB_ce345e2:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34714,pc),r3
    mov 0x06,r6
    mov r4,r14
    mov r5,r12
    jsr @r3
    mov r6,r5
    mov r14,r2
    mov.l @(PTR_ce34718,pc),r3
    mov r15,r13
    add 0x34,r2
    mov r13,r1
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce3470a,pc),r0
    mov r12,r5
    mov.l @(PTR_ce3471c,pc),r3
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
    mov.l @(DAT_ce34720,pc),r2
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
    bt/s LAB_ce3464c
    mov 0x02,r4
    fadd fr3,fr3
    fsub fr3,fr2

LAB_ce3464c:
    ftrc fr2,FPUL
    sts FPUL,r3
    cmp/hi r4,r3
    bt LAB_ce3466e
    mov.l @(DAT_ce34720,pc),r2
    fmov fr5,fr3
    fadd fr7,fr3
    lds r2,FPUL
    fsts FPUL,fr2
    fcmp/gt fr3,fr2
    bt LAB_ce34666
    fadd fr2,fr2
    fsub fr2,fr3

LAB_ce34666:
    ftrc fr3,FPUL
    sts FPUL,r3
    cmp/hi r4,r3
    bf LAB_ce34684

LAB_ce3466e:
    fadd fr4,fr6
    mov 0x34,r0
    mov 0x08,r3
    fmov fr6,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r13),fr3
    mov 0x38,r0
    fadd fr5,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3470c,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce34684:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34690:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce34708,pc),r0
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
    mov.l @(PTR_ce34718,pc),r3
    jsr @r3
    add 0x34,r2
    mov.l @(PTR_ce3471c,pc),r3
    mov.l @r15,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce34724,pc),r0
    fmov.s @r13,fr3
    fmov.s @r0,fr4
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    mov 0x5C,r0
    mov r14,r1
    mov.l @(PTR_ce34718,pc),r3
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
    bsr FUN_ce34728
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34708:
    #data 0x0141
DAT_ce3470a:
    #data 0x041c
DAT_ce3470c:
    #data 0x0142
    #align4

PTR_ce34710:
    #data loc_8c02fd26
PTR_ce34714:
    #data loc_8c02fec4
PTR_ce34718:
    #data loc_8c1294c8
PTR_ce3471c:
    #data loc_8c04ce54
DAT_ce34720:
    #data 0x4f000000
DAT_ce34724:
    #data 0x41800000

;=============================================

FUN_ce34728:
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
    bt LAB_ce347a0
    mov.w @(DAT_ce3482e,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce34844,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mova @(DAT_ce3483c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34840,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34830,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce34848,pc),r3
    mov 0x0A,r2
    mov r6,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce347a0:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce347a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x05,r6
    mov.l @(PTR_ce34848,pc),r3
    mov.l r5,@r15
    mov r4,r14
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34832,pc),r0
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3484c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce347d2:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34836,pc),r0
    mov r4,r14
    mov 0x00,r3
    mov.w @(DAT_ce34834,pc),r4
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    mov.l @(PTR_ce3484c,pc),r3
    mov r5,r13
    add r14,r4
    mov r13,r5
    mov.b r0,@(0xc,r4)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34838,pc),r0
    mov 0x21,r3
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce34850,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce34854,pc),r0
    mov.l @(PTR_ce3485c,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34858,pc),r0
    mov r15,r5
    mov 0x02,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34860,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3482e:
    #data 0x0142
DAT_ce34830:
    #data 0x01a0
DAT_ce34832:
    #data 0x041c
DAT_ce34834:
    #data 0x02a4
DAT_ce34836:
    #data 0x0141
DAT_ce34838:
    #data 0x01b4
    #align4

DAT_ce3483c:
    #data 0x41d55555
DAT_ce34840:
    #data 0x42892492
PTR_ce34844:
    #data loc_8c103660
PTR_ce34848:
    #data loc_8c02fec4
PTR_ce3484c:
    #data loc_8c04cc1c
PTR_ce34850:
    #data loc_8c05933c
DAT_ce34854:
    #data 0x42a00000
DAT_ce34858:
    #data 0x42092492
PTR_ce3485c:
    #data loc_8c0fdab6
PTR_ce34860:
    #data loc_8c04223a

;=============================================

LAB_ce34864:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3492a,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.l @(r0,r14),r12
    mov.w @(DAT_ce3492c,pc),r0
    mov.w @(DAT_ce34928,pc),r13
    mov.b @(r0,r14),r0
    cmp/eq 0x08,r0
    bf/s LAB_ce34886
    add r14,r13
    mov.w @(DAT_ce3492e,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce34898

LAB_ce34886:
    mov.b @(0xd,r13),r0
    tst r0,r0
    bt LAB_ce34898
    mov.w @(DAT_ce3492c,pc),r0
    mov 0x08,r3
    mov 0x04,r2
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r2,@(r0,r14)

LAB_ce34898:
    mov.l @(PTR_ce34934,pc),r3
    mov 0x00,r0
    mov.b r0,@(0xd,r13)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce348c8
    mov.b @(0xc,r13),r0
    cmp/pz r0
    bt LAB_ce348c8
    mov.w @(DAT_ce34930,pc),r0
    mov 0x80,r2
    mov 0x00,r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0x50,r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce34938,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce348c8:
    mov.b @(0xc,r13),r0
    cmp/pl r0
    bf LAB_ce348fe
    mov.l @(PTR_ce3493c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce348de
    mov.w @(DAT_ce3492e,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce348de:
    mov.w @(DAT_ce34932,pc),r0
    mov.l @(PTR_ce34940,pc),r2
    mov.w @(r0,r12),r3
    add 0xFF,r3
    mov.w r3,@(r0,r12)
    jsr @r2
    mov r12,r4
    tst r0,r0
    bt LAB_ce348fe
    mov.l @(PTR_ce34944,pc),r3
    mov 0xFF,r0
    mov 0x0F,r5
    mov.b r0,@(0xc,r13)
    mov 0x03,r6
    jsr @r3
    mov r14,r4

LAB_ce348fe:
    mov.w @(DAT_ce3492c,pc),r0
    mov r12,r5
    lds.l @r15+,PR
    mov.b @(r0,r14),r2
    mov r14,r4
    mov.l @(PTR_ce34948,pc),r0
    mov.l @r15+,r12
    shar r2
    shll2 r2
    mov.l @r15+,r13
    mov.l @(r0,r2),r1
    jmp @r1
    mov.l @r15+,r14

LAB_ce34918:
    mov.l @(PTR_ce3494c,pc),r3
    jmp @r3
    nop

LAB_ce3491e:
    mov.w @(0x1c,r5),r0
    mov.l @(PTR_ce34950,pc),r3
    xor 0x01,r0
    jmp @r3
    mov.w r0,@(0x1c,r5)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34928:
    #data 0x02a4
DAT_ce3492a:
    #data 0x01c8
DAT_ce3492c:
    #data 0x0141
DAT_ce3492e:
    #data 0x0142
DAT_ce34930:
    #data 0x019d
DAT_ce34932:
    #data 0x025c
    #align4

PTR_ce34934:
    #data loc_8c034dee
PTR_ce34938:
    #data loc_8c052dac
PTR_ce3493c:
    #data loc_8c050682
PTR_ce34940:
    #data loc_8c050610
PTR_ce34944:
    #data loc_8c034e8c
PTR_ce34948:
    #data PTR_ce35318
PTR_ce3494c:
    #data loc_8c04cc1c
PTR_ce34950:
    #data loc_8c04ce54

;=============================================

LAB_ce34954:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34a98,pc),r3
    mov r4,r14
    jsr @r3
    mov r5,r13
    mov.w @(DAT_ce34a8a,pc),r0
    mov 0x10,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce34a9c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34aa0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34aa4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34a8c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34998
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce34998:
    mov.w @(DAT_ce34a8e,pc),r0
    mov 0x02,r3
    mov.w @(DAT_ce34a8c,pc),r1
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
    mov.w @(DAT_ce34a90,pc),r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce34aa8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34aac,pc),r2
    mov 0x04,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce34ab0,pc),r0
    mov.l @(PTR_ce34ab8,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34ab4,pc),r0
    mov r15,r5
    mov 0x02,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34abc,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce349ec:
    rts
    nop

LAB_ce349f0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34ac0,pc),r3
    mov 0x06,r6
    mov r4,r13
    mov r5,r14
    jsr @r3
    mov r6,r5
    mov.w @(DAT_ce34a8a,pc),r0
    mov 0x06,r2
    mov.l @(PTR_ce34ac4,pc),r3
    mov 0x0D,r5
    mov.b r2,@(r0,r13)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov 0x09,r6
    mov.w @(DAT_ce34a92,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34a94,pc),r4
    mov.l @(DAT_ce34ac8,pc),r3
    add r14,r4
    mov.l @(0x4,r4),r0
    mov.l @r4,r2
    and 0x01,r0
    and r3,r2
    or r0,r2
    tst r2,r2
    bt LAB_ce34a48
    mov.w @(DAT_ce34a8c,pc),r0
    mov 0x01,r2
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)
    mov.w @(DAT_ce34a96,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    extu.b r0,r0
    mov.w r0,@r1

LAB_ce34a48:
    mov.w @(DAT_ce34a8e,pc),r0
    mov 0x23,r3
    mov.l r13,@(r0,r14)
    add 0xED,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce34acc,pc),r3
    jsr @r3
    mov r13,r4
    mov.l @(PTR_ce34aa8,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r13,r4
    mov.l @(PTR_ce34aac,pc),r3
    mov 0x03,r5
    jsr @r3
    mov r13,r4
    mova @(DAT_ce34ad0,pc),r0
    mov.l @(PTR_ce34ab8,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34ab4,pc),r0
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

DAT_ce34a8a:
    #data 0x0141
DAT_ce34a8c:
    #data 0x01d2
DAT_ce34a8e:
    #data 0x01b4
DAT_ce34a90:
    #data 0x01a1
DAT_ce34a92:
    #data 0x041c
DAT_ce34a94:
    #data 0x0414
DAT_ce34a96:
    #data 0x0130
    #align4

PTR_ce34a98:
    #data loc_8c02fd26
DAT_ce34a9c:
    #data 0x41555555
DAT_ce34aa0:
    #data 0x41092492
DAT_ce34aa4:
    #data 0xbf092492
PTR_ce34aa8:
    #data loc_8c04223a
PTR_ce34aac:
    #data loc_8c042008
DAT_ce34ab0:
    #data 0xc2d55555
DAT_ce34ab4:
    #data 0x42092492
PTR_ce34ab8:
    #data loc_8c0fdab6
PTR_ce34abc:
    #data loc_8c0423fc
PTR_ce34ac0:
    #data loc_8c02fec4
PTR_ce34ac4:
    #data loc_8c034e8c
DAT_ce34ac8:
    #data 0x90001010
PTR_ce34acc:
    #data loc_8c05933c
DAT_ce34ad0:
    #data 0xc3200000

;=============================================

LAB_ce34ad4:
    mov.w @(DAT_ce34c24,pc),r0
    mov 0x0C,r3
    mov.l @(DAT_ce34c3c,pc),r1
    mov.b r3,@(r0,r4)
    mov 0x34,r0
    fmov.s @(r0,r5),fr2
    fmov.s @(r0,r4),fr3
    mova @(DAT_ce34c30,pc),r0
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
    mova @(DAT_ce34c34,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r4)
    mova @(DAT_ce34c38,pc),r0
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

LAB_ce34b18:
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
    mov.w @(DAT_ce34c26,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce34bb8
    mov.w @(DAT_ce34c26,pc),r0
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
    mov.w @(DAT_ce34c28,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b @(r0,r14),r0
    cmp/eq 0x0C,r0
    bf LAB_ce34bb8
    mov.l @(PTR_ce34c40,pc),r2
    mov 0x01,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mov 0x04,r0
    mov.l @(PTR_ce34c44,pc),r3
    fldi0 fr4
    mov r15,r5
    fmov.s fr4,@r15
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34c2a,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce34c48,pc),r3
    mov 0x03,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce34bb8:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34bc0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34c24,pc),r0
    mov r4,r14
    mov 0x00,r3
    mov.w @(DAT_ce34c2c,pc),r4
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    mov.l @(PTR_ce34c4c,pc),r3
    mov r5,r13
    add r14,r4
    mov r13,r5
    mov.b r0,@(0xc,r4)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34c2e,pc),r0
    mov 0x24,r3
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce34c50,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34c48,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34c54,pc),r3
    mov 0x02,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce34c58,pc),r0
    mov.l @(PTR_ce34c60,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34c5c,pc),r0
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

DAT_ce34c24:
    #data 0x0141
DAT_ce34c26:
    #data 0x041c
DAT_ce34c28:
    #data 0x0142
DAT_ce34c2a:
    #data 0x01a0
DAT_ce34c2c:
    #data 0x02a4
DAT_ce34c2e:
    #data 0x01b4
    #align4

DAT_ce34c30:
    #data 0x42000000
DAT_ce34c34:
    #data 0x41092492
DAT_ce34c38:
    #data 0xbf092492
DAT_ce34c3c:
    #data 0x40800000
PTR_ce34c40:
    #data loc_8c02fec4
PTR_ce34c44:
    #data loc_8c103660
PTR_ce34c48:
    #data loc_8c042008
PTR_ce34c4c:
    #data loc_8c04cc1c
PTR_ce34c50:
    #data loc_8c05933c
PTR_ce34c54:
    #data loc_8c04223a
DAT_ce34c58:
    #data 0xc2a00000
DAT_ce34c5c:
    #data 0x41892492
PTR_ce34c60:
    #data loc_8c0fdab6

;=============================================

LAB_ce34c64:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce34d78,pc),r13
    sts.l PR,@-r15
    mov.w @(DAT_ce34d7a,pc),r0
    add r14,r13
    mov.l @(PTR_ce34d8c,pc),r3
    jsr @r3
    mov.l @(r0,r14),r12
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34ca0
    mov.b @(0xc,r13),r0
    cmp/pl r0
    bt LAB_ce34ca0
    mov.w @(DAT_ce34d7c,pc),r0
    mov 0x80,r2
    mov 0x00,r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0x50,r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce34d90,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce34ca0:
    mov.b @(0xc,r13),r0
    cmp/pl r0
    bf LAB_ce34cd6
    mov.l @(PTR_ce34d94,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce34cb6
    mov.w @(DAT_ce34d7e,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce34cb6:
    mov.w @(DAT_ce34d80,pc),r0
    mov.l @(PTR_ce34d98,pc),r2
    mov.w @(r0,r12),r3
    add 0xFF,r3
    mov.w r3,@(r0,r12)
    jsr @r2
    mov r12,r4
    tst r0,r0
    bt LAB_ce34cd6
    mov.l @(PTR_ce34d9c,pc),r3
    mov 0xFF,r0
    mov 0x0F,r5
    mov.b r0,@(0xc,r13)
    mov 0x05,r6
    jsr @r3
    mov r14,r4

LAB_ce34cd6:
    mov.w @(DAT_ce34d82,pc),r0
    mov r12,r5
    lds.l @r15+,PR
    mov.b @(r0,r14),r2
    mov r14,r4
    mov.l @(PTR_ce34da0,pc),r0
    mov.l @r15+,r12
    shar r2
    shll2 r2
    mov.l @r15+,r13
    mov.l @(r0,r2),r1
    jmp @r1
    mov.l @r15+,r14

LAB_ce34cf0:
    sts.l PR,@-r15
    add 0xF8,r15
    mov 0x01,r6
    mov.l @(PTR_ce34da4,pc),r3
    mov.l r4,@r15
    mov.l r5,@(0x4,r15)
    mov r6,r5
    jsr @r3
    mov.l @r15,r4
    mov.l @r15,r4
    mov.l @(0x4,r15),r5
    add 0x08,r15
    mov.l @(PTR_ce34da8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34d0e:
    mov.l @(PTR_ce34dac,pc),r3
    jmp @r3
    nop

LAB_ce34d14:
    mov.w @(DAT_ce34d82,pc),r0
    mov 0x0E,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mova @(DAT_ce34db0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    mov.l @(PTR_ce34dbc,pc),r3
    mov 0x00,r5
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34db4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34db8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34d84,pc),r0
    mov 0x01,r3
    mov.w @(DAT_ce34d86,pc),r1
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
    mov.w @(DAT_ce34d88,pc),r0
    mov.b r3,@(r0,r13)
    add 0x58,r0
    mov.b r2,@(r0,r13)
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34d74:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34d78:
    #data 0x02a4
DAT_ce34d7a:
    #data 0x01c8
DAT_ce34d7c:
    #data 0x019d
DAT_ce34d7e:
    #data 0x0142
DAT_ce34d80:
    #data 0x025c
DAT_ce34d82:
    #data 0x0141
DAT_ce34d84:
    #data 0x01b4
DAT_ce34d86:
    #data 0x01d2
DAT_ce34d88:
    #data 0x01a1
    #align4

PTR_ce34d8c:
    #data loc_8c034dee
PTR_ce34d90:
    #data loc_8c05176e
PTR_ce34d94:
    #data loc_8c050682
PTR_ce34d98:
    #data loc_8c050610
PTR_ce34d9c:
    #data loc_8c034e8c
PTR_ce34da0:
    #data PTR_ce35340
PTR_ce34da4:
    #data loc_8c02fec4
PTR_ce34da8:
    #data loc_8c04cc1c
PTR_ce34dac:
    #data loc_8c04ce54
DAT_ce34db0:
    #data 0x40a00000
DAT_ce34db4:
    #data 0x412b6db6
DAT_ce34db8:
    #data 0xbf2b6db6
PTR_ce34dbc:
    #data loc_8c0c04d0

;=============================================

LAB_ce34dc0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov 0x06,r6
    mov.l @(PTR_ce34f10,pc),r3
    mov.l r5,@r15
    mov r4,r14
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov r15,r13
    mov r14,r2
    mov.l @(PTR_ce34f14,pc),r3
    add 0x04,r13
    add 0x34,r2
    mov r13,r1
    jsr @r3
    mov 0x0C,r0
    mov.l @(PTR_ce34f18,pc),r3
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
    bf LAB_ce34e14
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov 0x04,r0
    ftrc fr3,FPUL
    fmov.s @(r0,r13),fr3
    sts FPUL,r3
    ftrc fr3,FPUL
    sts FPUL,r2
    cmp/eq r2,r3
    bt LAB_ce34e3e

LAB_ce34e14:
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
    mov.w @(DAT_ce34f08,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce34e3e:
    add 0x10,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34e48:
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

LAB_ce34e82:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34f0c,pc),r0
    mov r4,r14
    mov 0x00,r3
    mov.w @(DAT_ce34f0a,pc),r4
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    mov.l @(PTR_ce34f1c,pc),r3
    mov r5,r13
    add r14,r4
    mov r13,r5
    mov.b r0,@(0xc,r4)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34f0e,pc),r0
    mov 0x26,r3
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce34f20,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34f24,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce34f28,pc),r0
    mov.l @(PTR_ce34f30,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34f2c,pc),r0
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

LAB_ce34ede:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce34f0c,pc),r0
    mov r4,r14
    mov 0x0A,r3
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov 0x05,r5
    mov.l @(PTR_ce34f24,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34f34,pc),r2
    jsr @r2
    nop
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce34e48
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34f08:
    #data 0x0142
DAT_ce34f0a:
    #data 0x02a4
DAT_ce34f0c:
    #data 0x0141
DAT_ce34f0e:
    #data 0x01b4
    #align4

PTR_ce34f10:
    #data loc_8c02fec4
PTR_ce34f14:
    #data loc_8c1294c8
PTR_ce34f18:
    #data loc_8c04ce54
PTR_ce34f1c:
    #data loc_8c04cc1c
PTR_ce34f20:
    #data loc_8c05933c
PTR_ce34f24:
    #data loc_8c04223a
DAT_ce34f28:
    #data 0xc2a00000
DAT_ce34f2c:
    #data 0x41892492
PTR_ce34f30:
    #data loc_8c0fdab6
PTR_ce34f34:
    #data loc_8c02fd26

;=============================================

LAB_ce34f38:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce34f92,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mova @(DAT_ce34f98,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    mov r15,r5
    mov.l @(PTR_ce34fa0,pc),r3
    fmov fr3,@(r0,r15)
    mova @(DAT_ce34f9c,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    add 0x04,r5
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34f94,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce34fa4,pc),r3
    mov.b r2,@(r0,r14)
    mov.l @r15,r5
    jsr @r3
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34f78:
    mov.w @(DAT_ce34f96,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34f8e
    mov.w @(0x1c,r4),r0
    tst r0,r0
    bt LAB_ce34f8e
    mov.l @(PTR_ce34fa8,pc),r0
    jmp @r0
    nop

LAB_ce34f8e:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34f92:
    #data 0x0141
DAT_ce34f94:
    #data 0x01a0
DAT_ce34f96:
    #data 0x01f7
    #align4

DAT_ce34f98:
    #data 0xc1d55555
DAT_ce34f9c:
    #data 0x42892492
PTR_ce34fa0:
    #data loc_8c103660
PTR_ce34fa4:
    #data loc_8c04ce54
PTR_ce34fa8:
    #data loc_8c034dee
DAT_ce34fac:
    #data 0x0003
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce34fbc:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34fcc:
    #data 0x0003
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce34fdc:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce34fec:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34ffc:
    #data 0x0003
    #data 0x8100
    #data 0x0006
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0060
DAT_ce3500c:
    #data 0x0003
    #data 0x9100
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce3501c:
    #data 0x0201
    #data 0x0200
DAT_ce35020:
    #data 0x02ff
    #data 0x0201
DAT_ce35024:
    #data 0xffff
    #data 0xffff
DAT_ce35028:
    #data 0x0201
    #data 0x0201
DAT_ce3502c:
    #data 0x02ff
    #data 0x02ff
DAT_ce35030:
    #data 0xffff
    #data 0xffff
DAT_ce35034:
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
DAT_ce35054:
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

PTR_ce35074:
    #data DAT_ce35034
PTR_ce35078:
    #data DAT_ce35054
DAT_ce3507c:
    #data 0x00
    #data 0x03
    #data 0x07
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x08
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x03
    #data 0x07
    #data 0x00
    #data 0x05
    #data 0x04
    #data 0x06
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x08
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce3509c:
    #data 0x00
    #data 0x03
    #data 0x07
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x08
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce350ac:
    #data 0x00
    #data 0x03
    #data 0x00
    #data 0x00
    #data 0x05
    #data 0x04
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x07
    #data 0x00
    #data 0x05
    #data 0x00
    #data 0x06
    #data 0x00
    #data 0x01
    #data 0x00
    #data 0x08
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce350cc:
    #data 0x00
    #data 0x01
    #data 0x01
    #data 0x01
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #align4

DAT_ce350d4:
    #data 0xffec0000
    #data 0xffcc0000
DAT_ce350dc:
    #data 0xfff70000
DAT_ce350e0:
    #data 0x000a0000
DAT_ce350e4:
    #data 0xfffd0000
DAT_ce350e8:
    #data 0x00030000
    #data 0xffccffb8
    #data 0xfff0ffb0
PTR_ce350f4:
    #data LAB_ce305f6
PTR_ce350f8:
    #data LAB_ce3001c
PTR_ce350fc:
    #data LAB_ce30626
PTR_ce35100:
    #data LAB_ce30bd6
PTR_ce35104:
    #data LAB_ce314e2
PTR_ce35108:
    #data LAB_ce31604
PTR_ce3510c:
    #data LAB_ce3174e
PTR_ce35110:
    #data LAB_ce319a6
PTR_ce35114:
    #data LAB_ce31ade
PTR_ce35118:
    #data LAB_ce342f0
PTR_ce3511c:
    #data LAB_ce34380
PTR_ce35120:
    #data LAB_ce344aa
PTR_ce35124:
    #data LAB_ce34f78
PTR_ce35128:
    #data LAB_ce30506
PTR_ce3512c:
    #data LAB_ce341b8
PTR_ce35130:
    #data LAB_ce3141c
PTR_ce35134:
    #data LAB_ce34070
PTR_ce35138:
    #data LAB_ce340d2
PTR_ce3513c:
    #data LAB_ce34102
PTR_ce35140:
    #data LAB_ce34156
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce35164:
    #data LAB_ce3063a
PTR_ce35168:
    #data LAB_ce309ae
PTR_ce3516c:
    #data LAB_ce309d6
PTR_ce35170:
    #data LAB_ce3063a
PTR_ce35174:
    #data LAB_ce30bf8
PTR_ce35178:
    #data LAB_ce310ca
PTR_ce3517c:
    #data LAB_ce310b4
PTR_ce35180:
    #data LAB_ce30bea
PTR_ce35184:
    #data LAB_ce31284
PTR_ce35188:
    #data LAB_ce312d0
PTR_ce3518c:
    #data LAB_ce3131a
PTR_ce35190:
    #data FUN_ce313fa
PTR_ce35194:
    #data LAB_ce31528
PTR_ce35198:
    #data LAB_ce31570
PTR_ce3519c:
    #data LAB_ce31616
PTR_ce351a0:
    #data LAB_ce316ba
PTR_ce351a4:
    #data FUN_ce3172c
PTR_ce351a8:
    #data LAB_ce31760
PTR_ce351ac:
    #data LAB_ce3178c
PTR_ce351b0:
    #data LAB_ce3197c
PTR_ce351b4:
    #data LAB_ce317c4
PTR_ce351b8:
    #data LAB_ce31822
PTR_ce351bc:
    #data LAB_ce318f8
PTR_ce351c0:
    #data LAB_ce319b8
PTR_ce351c4:
    #data LAB_ce31a1c
PTR_ce351c8:
    #data LAB_ce31af2
PTR_ce351cc:
    #data LAB_ce320a2
PTR_ce351d0:
    #data LAB_ce32858
PTR_ce351d4:
    #data LAB_ce32b6e
PTR_ce351d8:
    #data LAB_ce32e20
PTR_ce351dc:
    #data LAB_ce3347e
PTR_ce351e0:
    #data LAB_ce33812
PTR_ce351e4:
    #data LAB_ce33d00
PTR_ce351e8:
    #data LAB_ce33eae
PTR_ce351ec:
    #data LAB_ce33fe6
PTR_ce351f0:
    #data LAB_ce31b28
PTR_ce351f4:
    #data LAB_ce31bcc
PTR_ce351f8:
    #data LAB_ce31f08
PTR_ce351fc:
    #data LAB_ce31bde
PTR_ce35200:
    #data LAB_ce31c84
PTR_ce35204:
    #data LAB_ce31d78
PTR_ce35208:
    #data LAB_ce31e74
PTR_ce3520c:
    #data LAB_ce320dc
PTR_ce35210:
    #data LAB_ce32186
PTR_ce35214:
    #data LAB_ce32540
PTR_ce35218:
    #data LAB_ce32654
PTR_ce3521c:
    #data LAB_ce321bc
PTR_ce35220:
    #data LAB_ce32346
PTR_ce35224:
    #data LAB_ce3244c
PTR_ce35228:
    #data LAB_ce3286a
PTR_ce3522c:
    #data LAB_ce32924
PTR_ce35230:
    #data LAB_ce329e0
PTR_ce35234:
    #data FUN_ce32b4c
PTR_ce35238:
    #data LAB_ce32b80
PTR_ce3523c:
    #data LAB_ce32bf2
PTR_ce35240:
    #data FUN_ce32dfe
PTR_ce35244:
    #data LAB_ce32c34
PTR_ce35248:
    #data LAB_ce32c98
PTR_ce3524c:
    #data LAB_ce32d60
PTR_ce35250:
    #data LAB_ce32e32
PTR_ce35254:
    #data LAB_ce32fe8
PTR_ce35258:
    #data FUN_ce3345c
PTR_ce3525c:
    #data LAB_ce32e68
PTR_ce35260:
    #data LAB_ce32eec
PTR_ce35264:
    #data LAB_ce32f56
PTR_ce35268:
    #data LAB_ce32ffe
PTR_ce3526c:
    #data LAB_ce33154
PTR_ce35270:
    #data LAB_ce332a4
PTR_ce35274:
    #data LAB_ce33304
PTR_ce35278:
    #data LAB_ce333d8
PTR_ce3527c:
    #data LAB_ce33490
PTR_ce35280:
    #data LAB_ce33670
PTR_ce35284:
    #data FUN_ce337f0
PTR_ce35288:
    #data LAB_ce334c0
PTR_ce3528c:
    #data LAB_ce33560
PTR_ce35290:
    #data LAB_ce33604
PTR_ce35294:
    #data LAB_ce33824
PTR_ce35298:
    #data LAB_ce33a46
PTR_ce3529c:
    #data LAB_ce33cd8
PTR_ce352a0:
    #data LAB_ce33858
PTR_ce352a4:
    #data LAB_ce338f0
PTR_ce352a8:
    #data LAB_ce33a98
PTR_ce352ac:
    #data LAB_ce33b68
PTR_ce352b0:
    #data LAB_ce33c2a
PTR_ce352b4:
    #data LAB_ce33d12
PTR_ce352b8:
    #data LAB_ce33d92
PTR_ce352bc:
    #data LAB_ce33e5a
PTR_ce352c0:
    #data LAB_ce33ec0
PTR_ce352c4:
    #data LAB_ce33f78
PTR_ce352c8:
    #data LAB_ce33ff8
PTR_ce352cc:
    #data LAB_ce34038
PTR_ce352d0:
    #data LAB_ce341ca
PTR_ce352d4:
    #data LAB_ce34232
PTR_ce352d8:
    #data LAB_ce3429a
PTR_ce352dc:
    #data LAB_ce343d4
PTR_ce352e0:
    #data LAB_ce3443c
PTR_ce352e4:
    #data LAB_ce34476
PTR_ce352e8:
    #data LAB_ce344cc
PTR_ce352ec:
    #data LAB_ce34864
PTR_ce352f0:
    #data LAB_ce34c64
PTR_ce352f4:
    #data LAB_ce3456a
PTR_ce352f8:
    #data LAB_ce34570
PTR_ce352fc:
    #data LAB_ce345b8
PTR_ce35300:
    #data LAB_ce345de
PTR_ce35304:
    #data LAB_ce345e2
PTR_ce35308:
    #data LAB_ce34690
PTR_ce3530c:
    #data FUN_ce34728
PTR_ce35310:
    #data LAB_ce347a8
PTR_ce35314:
    #data LAB_ce347d2
PTR_ce35318:
    #data LAB_ce34918
PTR_ce3531c:
    #data LAB_ce3491e
PTR_ce35320:
    #data LAB_ce34954
PTR_ce35324:
    #data LAB_ce349ec
PTR_ce35328:
    #data LAB_ce349f0
PTR_ce3532c:
    #data LAB_ce34ad4
PTR_ce35330:
    #data LAB_ce34b18
PTR_ce35334:
    #data LAB_ce34954
PTR_ce35338:
    #data LAB_ce34b18
PTR_ce3533c:
    #data LAB_ce34bc0
PTR_ce35340:
    #data LAB_ce34cf0
PTR_ce35344:
    #data LAB_ce34d0e
PTR_ce35348:
    #data LAB_ce34d14
PTR_ce3534c:
    #data LAB_ce34d74
PTR_ce35350:
    #data LAB_ce34dc0
PTR_ce35354:
    #data LAB_ce34e48
PTR_ce35358:
    #data LAB_ce34e82
PTR_ce3535c:
    #data LAB_ce34ede
PTR_ce35360:
    #data LAB_ce34f38
