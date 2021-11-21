;╔══════════════════════════════════════════╗
;║ S_PL12 : Hayato Kanzaki Program          ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c030fec 0x8C030FEC
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c0353ee 0x8C0353EE
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
#symbol loc_8c0514b8 0x8C0514B8
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c0522e0 0x8C0522E0
#symbol loc_8c0523d8 0x8C0523D8
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
#symbol loc_8c0555c8 0x8C0555C8
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c05923c 0x8C05923C
#symbol loc_8c05a49c 0x8C05A49C
#symbol loc_8c079520 0x8C079520
#symbol loc_8c07954e 0x8C07954E
#symbol loc_8c079598 0x8C079598
#symbol loc_8c0cd9ec 0x8C0CD9EC
#symbol loc_8c0fdab6 0x8C0FDAB6
#symbol loc_8c0fdb02 0x8C0FDB02
#symbol loc_8c103660 0x8C103660
#symbol loc_8c1292d4 0x8C1292D4
#symbol loc_8c12939c 0x8C12939C
#symbol loc_8c2659dc 0x8C2659DC
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c26a5a0 0x8C26A5A0
#symbol loc_8c26a5a4 0x8C26A5A4
#symbol loc_8c26a8ec 0x8C26A8EC
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300e4,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300f0,pc),r7
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

;=============================================

FUN_ce3001c:
    mov.w @(DAT_ce300e6,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30040
    mov.w @(DAT_ce300e8,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30040
    mov.w @(DAT_ce300ea,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3003a
    rts
    mov 0x00,r0

LAB_ce3003a:
    mov.b @(r0,r4),r3
    add 0x01,r3
    mov.b r3,@(r0,r4)

LAB_ce30040:
    mov 0x01,r0
    rts
    nop

LAB_ce30046:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce300ec,pc),r4
    sts.l PR,@-r15
    add r14,r4
    mov.w @r4,r3
    tst r3,r3
    bf LAB_ce30104
    mov.l @(PTR_ce300f4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30066
    bra LAB_ce30186
    nop

LAB_ce30066:
    mov.l @(PTR_ce300f8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30076
    bra LAB_ce30186
    nop

LAB_ce30076:
    mov.l @(PTR_ce300fc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30086
    bra LAB_ce30186
    nop

LAB_ce30086:
    mov.l @(PTR_ce30100,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30096
    bra LAB_ce30186
    nop

LAB_ce30096:
    bsr FUN_ce303c2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce300a4
    bra LAB_ce30186
    nop

LAB_ce300a4:
    bsr FUN_ce3035c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30186
    bsr FUN_ce30292
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30186
    bsr FUN_ce302e2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30186
    bsr FUN_ce301fc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30186
    bsr FUN_ce3018c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30186
    bsr FUN_ce3024c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30186
    bra LAB_ce30158
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300e4:
    #data 0x0428
DAT_ce300e6:
    #data 0x01f9
DAT_ce300e8:
    #data 0x01fc
DAT_ce300ea:
    #data 0x01d4
DAT_ce300ec:
    #data 0x02a4
    #align4

PTR_ce300f0:
    #data PTR_ce35698
PTR_ce300f4:
    #data loc_8c054508
PTR_ce300f8:
    #data loc_8c054b34
PTR_ce300fc:
    #data loc_8c05496c
PTR_ce30100:
    #data loc_8c054d04

;=============================================

LAB_ce30104:
    mov.l @(PTR_ce301d8,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30186
    mov.l @(PTR_ce301dc,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30186
    bsr FUN_ce304ca
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30186
    bsr FUN_ce30414
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30186
    bsr FUN_ce30484
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30186
    bsr FUN_ce301fc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30186
    bsr FUN_ce3018c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30186
    bsr FUN_ce3024c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30186

LAB_ce30158:
    bsr FUN_ce3054a
    mov r14,r4
    tst r0,r0
    bf LAB_ce30186
    mov.l @(PTR_ce301e0,pc),r2
    mov 0x09,r5
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30176
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30510
    mov.l @r15+,r14

LAB_ce30176:
    mov.l @(PTR_ce301e4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce301e8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30186:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3018c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301ec,pc),r5
    mov.w @(DAT_ce301d4,pc),r6
    mov.l @(PTR_ce301f0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301aa
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301aa:
    mov.w @(DAT_ce301d4,pc),r5
    mov.l @(PTR_ce301f4,pc),r3
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
    mov.w @(DAT_ce301d6,pc),r0
    mov.l @(PTR_ce301f8,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301d4:
    #data 0x0364
DAT_ce301d6:
    #data 0x01e9
    #align4

PTR_ce301d8:
    #data loc_8c054b34
PTR_ce301dc:
    #data loc_8c054d04
PTR_ce301e0:
    #data loc_8c054da0
PTR_ce301e4:
    #data loc_8c053e00
PTR_ce301e8:
    #data loc_8c0542e0
PTR_ce301ec:
    #data DAT_ce355b0
PTR_ce301f0:
    #data loc_8c054e58
PTR_ce301f4:
    #data loc_8c055c3a
PTR_ce301f8:
    #data loc_8c0530d8

;=============================================

FUN_ce301fc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30318,pc),r5
    mov.w @(DAT_ce3030a,pc),r6
    mov.l @(PTR_ce3031c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3021c
    bsr FUN_ce3001c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30224

LAB_ce3021c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30224:
    mov.w @(DAT_ce3030a,pc),r5
    mov.l @(PTR_ce30320,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3030c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30324,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3024c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30328,pc),r5
    mov.w @(DAT_ce3030e,pc),r6
    mov.l @(PTR_ce3031c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3026a
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3026a:
    mov.w @(DAT_ce3030e,pc),r5
    mov.l @(PTR_ce30320,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3030c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30324,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30292:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3032c,pc),r5
    mov.w @(DAT_ce30310,pc),r6
    mov.l @(PTR_ce3031c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302b2
    mov.w @(DAT_ce30312,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302ba

LAB_ce302b2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302ba:
    mov.w @(DAT_ce30310,pc),r5
    mov.l @(PTR_ce30320,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3030c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30324,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302e2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30330,pc),r5
    mov.w @(DAT_ce30314,pc),r6
    mov.l @(PTR_ce3031c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30302
    mov.w @(DAT_ce30312,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30334

LAB_ce30302:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3030a:
    #data 0x036c
DAT_ce3030c:
    #data 0x01e9
DAT_ce3030e:
    #data 0x0374
DAT_ce30310:
    #data 0x037c
DAT_ce30312:
    #data 0x040c
DAT_ce30314:
    #data 0x0384
    #align4

PTR_ce30318:
    #data DAT_ce355c0
PTR_ce3031c:
    #data loc_8c054e58
PTR_ce30320:
    #data loc_8c055c3a
PTR_ce30324:
    #data loc_8c0530d8
PTR_ce30328:
    #data DAT_ce355d0
PTR_ce3032c:
    #data DAT_ce355de
PTR_ce30330:
    #data DAT_ce355ee

;=============================================

LAB_ce30334:
    mov.w @(DAT_ce3045a,pc),r5
    mov.l @(PTR_ce30468,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3045c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3046c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3035c:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3045e,pc),r4
    sts.l PR,@-r15
    add r14,r4
    mov.w @r4,r3
    cmp/pl r3
    bt LAB_ce30392
    mov.w @(DAT_ce30460,pc),r6
    mov.l @(PTR_ce30470,pc),r5
    mov.l @(PTR_ce30474,pc),r2
    add r14,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30392
    bsr FUN_ce3001c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30392
    mov.w @(DAT_ce30462,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bf LAB_ce3039a

LAB_ce30392:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3039a:
    mov.w @(DAT_ce30460,pc),r5
    mov.l @(PTR_ce30468,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3045c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3046c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303c2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30478,pc),r5
    mov.w @(DAT_ce30464,pc),r6
    mov.l @(PTR_ce3047c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303ee
    mov.w @(DAT_ce30464,pc),r5
    mov.l @(PTR_ce30468,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30462,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    mov 0x03,r3
    cmp/ge r3,r2
    bt LAB_ce303f6

LAB_ce303ee:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303f6:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3045c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3046c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30414:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30480,pc),r5
    mov.w @(DAT_ce30466,pc),r6
    mov.l @(PTR_ce30474,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30432
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30432:
    mov.w @(DAT_ce30466,pc),r5
    mov.l @(PTR_ce30468,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3045c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3046c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3045a:
    #data 0x0384
DAT_ce3045c:
    #data 0x01e9
DAT_ce3045e:
    #data 0x02a4
DAT_ce30460:
    #data 0x038c
DAT_ce30462:
    #data 0x040c
DAT_ce30464:
    #data 0x0394
DAT_ce30466:
    #data 0x037c
    #align4

PTR_ce30468:
    #data loc_8c055c3a
PTR_ce3046c:
    #data loc_8c0530d8
PTR_ce30470:
    #data DAT_ce355fe
PTR_ce30474:
    #data loc_8c054e58
PTR_ce30478:
    #data DAT_ce3560e
PTR_ce3047c:
    #data loc_8c0555c8
PTR_ce30480:
    #data DAT_ce355de

;=============================================

FUN_ce30484:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30594,pc),r5
    mov.w @(DAT_ce3058a,pc),r6
    mov.l @(PTR_ce30598,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce304a2
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304a2:
    mov.w @(DAT_ce3058a,pc),r5
    mov.l @(PTR_ce3059c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3058c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce305a0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304ca:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305a4,pc),r5
    mov.w @(DAT_ce3058e,pc),r6
    mov.l @(PTR_ce305a8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce304e8
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304e8:
    mov.w @(DAT_ce3058e,pc),r5
    mov.l @(PTR_ce3059c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3058c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce305a0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30510:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305ac,pc),r3
    jsr @r3
    mov 0x09,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3052a
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3052a:
    mov.w @(DAT_ce3058c,pc),r0
    mov 0x09,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce305a0,pc),r3
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

FUN_ce3054a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce305b0,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30562
    mov.w @(DAT_ce30590,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3056a

LAB_ce30562:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3056a:
    mov.w @(DAT_ce3058c,pc),r0
    mov 0x06,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce305a0,pc),r3
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

DAT_ce3058a:
    #data 0x0384
DAT_ce3058c:
    #data 0x01e9
DAT_ce3058e:
    #data 0x0394
DAT_ce30590:
    #data 0x040c
    #align4

PTR_ce30594:
    #data DAT_ce355ee
PTR_ce30598:
    #data loc_8c054e58
PTR_ce3059c:
    #data loc_8c055c3a
PTR_ce305a0:
    #data loc_8c0530d8
PTR_ce305a4:
    #data DAT_ce3560e
PTR_ce305a8:
    #data loc_8c0555c8
PTR_ce305ac:
    #data loc_8c054da0
PTR_ce305b0:
    #data loc_8c054d1c

;=============================================

LAB_ce305b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce305e8
    mov r4,r14
    tst r0,r0
    bf LAB_ce305d8
    bsr FUN_ce3061e
    mov r14,r4
    tst r0,r0
    bf LAB_ce305d8
    bsr FUN_ce30654
    mov r14,r4
    tst r0,r0
    bf LAB_ce305d8
    bsr FUN_ce306b4
    mov r14,r4
    tst r0,r0
    bt LAB_ce305e0

LAB_ce305d8:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce305e0:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce305e8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306a4,pc),r5
    mov.w @(DAT_ce30696,pc),r6
    mov.l @(PTR_ce306a8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30608
    mov.w @(DAT_ce30698,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30610

LAB_ce30608:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30610:
    mov.w @(DAT_ce3069a,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3061e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306ac,pc),r5
    mov.w @(DAT_ce3069c,pc),r6
    mov.l @(PTR_ce306a8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3063e
    mov.w @(DAT_ce30698,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30646

LAB_ce3063e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30646:
    mov.w @(DAT_ce3069a,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30654:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3069e,pc),r4
    sts.l PR,@-r15
    add r14,r4
    mov.w @r4,r3
    cmp/pl r3
    bt LAB_ce30680
    mov.w @(DAT_ce306a0,pc),r6
    mov.l @(PTR_ce306b0,pc),r5
    mov.l @(PTR_ce306a8,pc),r3
    add r14,r6
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30680
    mov.w @(DAT_ce30698,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30688

LAB_ce30680:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30688:
    mov.w @(DAT_ce3069a,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30696:
    #data 0x037c
DAT_ce30698:
    #data 0x040c
DAT_ce3069a:
    #data 0x0258
DAT_ce3069c:
    #data 0x0384
DAT_ce3069e:
    #data 0x02a4
DAT_ce306a0:
    #data 0x038c
    #align4

PTR_ce306a4:
    #data DAT_ce355de
PTR_ce306a8:
    #data loc_8c054e58
PTR_ce306ac:
    #data DAT_ce355ee
PTR_ce306b0:
    #data DAT_ce355fe

;=============================================

FUN_ce306b4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3071c,pc),r5
    mov.w @(DAT_ce30716,pc),r6
    mov.l @(PTR_ce30720,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce306d6
    mov.w @(DAT_ce30718,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    mov 0x03,r2
    cmp/ge r2,r3
    bt LAB_ce306de

LAB_ce306d6:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce306de:
    mov.w @(DAT_ce3071a,pc),r0
    mov 0x08,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce306ec:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x5,r14),r0
    tst r0,r0
    bf LAB_ce306fc
    bsr FUN_ce30ab2
    mov r14,r4

LAB_ce306fc:
    mov.l @(PTR_ce30724,pc),r3
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x01,r0
    bf LAB_ce3070a
    bsr FUN_ce30728
    mov r14,r4

LAB_ce3070a:
    bsr FUN_ce30b12
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c1a
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30716:
    #data 0x0394
DAT_ce30718:
    #data 0x040c
DAT_ce3071a:
    #data 0x0258
    #align4

PTR_ce3071c:
    #data DAT_ce3560e
PTR_ce30720:
    #data loc_8c0555c8
PTR_ce30724:
    #data loc_8c26823c

;=============================================

FUN_ce30728:
    mov.w @(DAT_ce30844,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(r0,r14),r4
    add 0x22,r0
    add r14,r0
    mov.l @(PTR_ce30848,pc),r2
    mov r4,r3
    shll r4
    add r3,r4
    mov.b @(0x1,r0),r0
    shll2 r4
    shll2 r4
    cmp/eq 0x01,r0
    add r2,r4
    bf/s LAB_ce3077a
    add 0x30,r4
    mov 0x22,r0
    mov.l @(DAT_ce3084c,pc),r5
    mov 0x01,r1
    mov.l r1,@(0x8,r4)
    mov.w @(r0,r4),r3
    or r5,r3
    mov.w r3,@(r0,r4)
    mov 0x24,r0
    mov.w @(r0,r4),r1
    or r5,r1
    mov.w r1,@(r0,r4)
    mov 0x26,r0
    mov.w @(r0,r4),r3
    or r5,r3
    mov.w r3,@(r0,r4)
    mov 0x28,r0
    mov.w @(r0,r4),r1
    or r5,r1
    mov.w r1,@(r0,r4)
    mov 0x2C,r0
    mov.w @(r0,r4),r3
    or r5,r3
    mov.w r3,@(r0,r4)

LAB_ce3077a:
    mov.w @(DAT_ce30846,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x02,r0
    bf LAB_ce3078a
    mov 0x0A,r5
    bsr FUN_ce309be
    mov r14,r4

LAB_ce3078a:
    mov.w @(DAT_ce30846,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x03,r0
    bf LAB_ce3079a
    mov 0x0B,r5
    bsr FUN_ce309be
    mov r14,r4

LAB_ce3079a:
    mov.w @(DAT_ce30846,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x04,r0
    bf LAB_ce307aa
    mov 0x0C,r5
    bsr FUN_ce309be
    mov r14,r4

LAB_ce307aa:
    mov.w @(DAT_ce30846,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x05,r0
    bf LAB_ce307ba
    mov 0x0A,r5
    bsr FUN_ce309be
    mov r14,r4

LAB_ce307ba:
    mov.w @(DAT_ce30846,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x06,r0
    bf LAB_ce307d0
    mov 0x0A,r5
    bsr FUN_ce309be
    mov r14,r4
    mov 0x0C,r5
    bsr FUN_ce309be
    mov r14,r4

LAB_ce307d0:
    mov.w @(DAT_ce30846,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x07,r0
    bf LAB_ce307e0
    mov 0x0C,r5
    bsr FUN_ce309be
    mov r14,r4

LAB_ce307e0:
    mov.w @(DAT_ce30846,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x08,r0
    bf LAB_ce307f6
    mov 0x0A,r5
    bsr FUN_ce309be
    mov r14,r4
    mov 0x0C,r5
    bsr FUN_ce309be
    mov r14,r4

LAB_ce307f6:
    mov.w @(DAT_ce30846,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x09,r0
    bf LAB_ce3080c
    mov 0x09,r5
    bsr FUN_ce309be
    mov r14,r4
    mov 0x0A,r5
    bsr FUN_ce309be
    mov r14,r4

LAB_ce3080c:
    mov.w @(DAT_ce30846,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x0A,r0
    bf LAB_ce30822
    mov 0x09,r5
    bsr FUN_ce309be
    mov r14,r4
    mov 0x0A,r5
    bsr FUN_ce30a52
    mov r14,r4

LAB_ce30822:
    mov.w @(DAT_ce30846,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x0B,r0
    bf LAB_ce30838
    mov 0x09,r5
    bsr FUN_ce309be
    mov r14,r4
    mov 0x0A,r5
    bsr FUN_ce309be
    mov r14,r4

LAB_ce30838:
    mov.w @(DAT_ce30846,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x0C,r0
    bra LAB_ce30850
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30844:
    #data 0x012e
DAT_ce30846:
    #data 0x0150
    #align4

PTR_ce30848:
    #data loc_8c2659dc
DAT_ce3084c:
    #data 0x0000f000

;=============================================

LAB_ce30850:
    bf LAB_ce3085e
    mov 0x0C,r5
    bsr FUN_ce309be
    mov r14,r4
    mov 0x0E,r5
    bsr FUN_ce309be
    mov r14,r4

LAB_ce3085e:
    mov.w @(DAT_ce30950,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x0D,r0
    bf LAB_ce3086e
    mov 0x09,r5
    bsr FUN_ce309be
    mov r14,r4

LAB_ce3086e:
    mov.w @(DAT_ce30950,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x0E,r0
    bf LAB_ce3088a
    mov 0x0A,r5
    bsr FUN_ce309be
    mov r14,r4
    mov 0x0C,r5
    bsr FUN_ce309be
    mov r14,r4
    mov 0x0E,r5
    bsr FUN_ce309be
    mov r14,r4

LAB_ce3088a:
    mov.w @(DAT_ce30950,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x0F,r0
    bf LAB_ce308a0
    mov 0x09,r5
    bsr FUN_ce309be
    mov r14,r4
    mov 0x0C,r5
    bsr FUN_ce309be
    mov r14,r4

LAB_ce308a0:
    mov.w @(DAT_ce30950,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x10,r0
    bf LAB_ce308b6
    mov 0x0A,r5
    bsr FUN_ce30a0e
    mov r14,r4
    mov 0x0C,r5
    bsr FUN_ce30a0e
    mov r14,r4

LAB_ce308b6:
    mov.w @(DAT_ce30950,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x32,r0
    bf LAB_ce308c6
    mov 0x0A,r5
    bsr FUN_ce30a52
    mov r14,r4

LAB_ce308c6:
    mov.w @(DAT_ce30950,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x33,r0
    mov.w @(DAT_ce30950,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x34,r0
    bf LAB_ce308de
    mov 0x0C,r5
    bsr FUN_ce30a52
    mov r14,r4

LAB_ce308de:
    mov.w @(DAT_ce30950,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x35,r0
    bf LAB_ce308ee
    mov 0x0A,r5
    bsr FUN_ce30a52
    mov r14,r4

LAB_ce308ee:
    mov.w @(DAT_ce30950,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x36,r0
    bf LAB_ce30904
    mov 0x0A,r5
    bsr FUN_ce30a52
    mov r14,r4
    mov 0x0C,r5
    bsr FUN_ce30a52
    mov r14,r4

LAB_ce30904:
    mov.w @(DAT_ce30950,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x37,r0
    bf LAB_ce30914
    mov 0x0C,r5
    bsr FUN_ce30a52
    mov r14,r4

LAB_ce30914:
    mov.w @(DAT_ce30950,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x38,r0
    bf LAB_ce3092a
    mov 0x0A,r5
    bsr FUN_ce30a52
    mov r14,r4
    mov 0x0C,r5
    bsr FUN_ce30a52
    mov r14,r4

LAB_ce3092a:
    mov.w @(DAT_ce30950,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x39,r0
    bf LAB_ce30940
    mov 0x09,r5
    bsr FUN_ce30a52
    mov r14,r4
    mov 0x0A,r5
    bsr FUN_ce30a52
    mov r14,r4

LAB_ce30940:
    mov.w @(DAT_ce30950,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x3B,r0
    bf LAB_ce3095c
    mov 0x09,r5
    bra LAB_ce30952
    mov r14,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30950:
    #data 0x0150

;=============================================

LAB_ce30952:
    bsr FUN_ce30a52
    nop
    mov 0x0A,r5
    bsr FUN_ce30a52
    mov r14,r4

LAB_ce3095c:
    mov.w @(DAT_ce30a8e,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x3C,r0
    bf LAB_ce30972
    mov 0x0C,r5
    bsr FUN_ce30a52
    mov r14,r4
    mov 0x0E,r5
    bsr FUN_ce30a52
    mov r14,r4

LAB_ce30972:
    mov.w @(DAT_ce30a8e,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x3D,r0
    bf LAB_ce30982
    mov 0x09,r5
    bsr FUN_ce30a52
    mov r14,r4

LAB_ce30982:
    mov.w @(DAT_ce30a8e,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x3E,r0
    bf LAB_ce3099e
    mov 0x0A,r5
    bsr FUN_ce30a52
    mov r14,r4
    mov 0x0C,r5
    bsr FUN_ce30a52
    mov r14,r4
    mov 0x0E,r5
    bsr FUN_ce30a52
    mov r14,r4

LAB_ce3099e:
    mov.w @(DAT_ce30a8e,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x3F,r0
    bf LAB_ce309b8
    mov 0x09,r5
    bsr FUN_ce30a52
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov 0x0C,r5
    bra FUN_ce30a52
    mov.l @r15+,r14

LAB_ce309b8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce309be:
    mov.w @(DAT_ce30a90,pc),r0
    extu.b r5,r6
    mov.l @(PTR_ce30a98,pc),r1
    mov.w @(r0,r4),r3
    mov r3,r2
    shll r3
    add r2,r3
    shll2 r3
    shll2 r3
    add r1,r3
    mov r3,r4
    mov 0x01,r3
    add 0x30,r4
    mov.l r3,@(0x8,r4)
    mov r4,r3
    add 0x10,r3
    shll r6
    add r6,r3
    mov.w @r3,r2
    mov.w @(DAT_ce30a92,pc),r3
    extu.w r2,r2
    cmp/gt r3,r2
    bt LAB_ce309fc
    mov r4,r2
    add 0x10,r2
    add r6,r2
    mov.w @(DAT_ce30a94,pc),r1
    mov.w @r2,r0
    or r1,r0
    rts
    mov.w r0,@r2

LAB_ce309fc:
    mov r4,r3
    add 0x10,r3
    add r3,r6
    mov.w @(DAT_ce30a96,pc),r3
    mov.w @r6,r2
    sub r3,r2
    mov.w r2,@r6
    rts
    nop

;=============================================

FUN_ce30a0e:
    mov.w @(DAT_ce30a90,pc),r0
    mov.l @(PTR_ce30a98,pc),r2
    mov.w @(r0,r4),r1
    extu.b r5,r0
    mov r1,r3
    shll r1
    add r3,r1
    shll2 r1
    shll2 r1
    add r2,r1
    mov r1,r4
    mov 0x01,r3
    add 0x30,r4
    mov.l r3,@(0x8,r4)
    mov r4,r3
    add 0x10,r3
    shll r0
    mov.w @(r0,r3),r1
    tst r1,r1
    bt LAB_ce30a4e
    mov r4,r2
    add 0x10,r2
    add r0,r2
    mov.w @(DAT_ce30a96,pc),r5
    mov.w @r2,r3
    sub r5,r3
    mov.w r3,@r2
    mov r4,r2
    add 0x10,r2
    mov.w @(r0,r2),r3
    extu.w r3,r3
    cmp/gt r5,r3

LAB_ce30a4e:
    rts
    nop

;=============================================

FUN_ce30a52:
    mov.w @(DAT_ce30a90,pc),r0
    extu.b r5,r6
    mov.l @(PTR_ce30a98,pc),r1
    mov.w @(r0,r4),r3
    mov.l @(DAT_ce30a9c,pc),r7
    mov r3,r2
    shll r3
    add r2,r3
    shll2 r3
    shll2 r3
    add r1,r3
    mov r3,r4
    mov 0x01,r3
    add 0x30,r4
    mov.l r3,@(0x8,r4)
    mov r4,r3
    add 0x10,r3
    shll r6
    add r6,r3
    mov.w @r3,r2
    extu.w r2,r2
    cmp/ge r7,r2
    bf LAB_ce30aa0
    mov r4,r3
    add 0x10,r3
    add r6,r3
    mov.w @r3,r2
    or r7,r2
    rts
    mov.w r2,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a8e:
    #data 0x0150
DAT_ce30a90:
    #data 0x012e
DAT_ce30a92:
    #data 0x7000
DAT_ce30a94:
    #data 0x6000
DAT_ce30a96:
    #data 0x1000
    #align4

PTR_ce30a98:
    #data loc_8c2659dc
DAT_ce30a9c:
    #data 0x0000f000

;=============================================

LAB_ce30aa0:
    mov r4,r3
    add 0x10,r3
    add r3,r6
    mov.w @(DAT_ce30b78,pc),r3
    mov.w @r6,r2
    add r3,r2
    mov.w r2,@r6
    rts
    nop

;=============================================

FUN_ce30ab2:
    mov.w @(DAT_ce30b7c,pc),r0
    mov.w @(DAT_ce30b7a,pc),r5
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x14,r0
    bt/s LAB_ce30ac4
    add r4,r5
    mov 0x00,r0
    mov.w r0,@(0x2,r5)

LAB_ce30ac4:
    mov.w @(DAT_ce30b7c,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x14,r0
    bf LAB_ce30b04
    mov.w @(0x4,r5),r0
    tst r0,r0
    bt LAB_ce30b04
    mov.l @(PTR_ce30b84,pc),r3
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    cmp/pz r0
    bf LAB_ce30ae2
    bra LAB_ce30aec
    and 0x03,r0

LAB_ce30ae2:
    not r0,r0
    add 0x01,r0
    and 0x03,r0
    not r0,r0
    add 0x01,r0

LAB_ce30aec:
    mov r0,r7
    mov 0x02,r1
    extu.b r7,r6
    cmp/ge r1,r6
    bf LAB_ce30b00
    mov.l @(PTR_ce30b88,pc),r2
    mov 0x06,r6
    mov 0x01,r7
    jmp @r2
    mov 0x00,r5

LAB_ce30b00:
    cmp/pz r6
    bt LAB_ce30b08

LAB_ce30b04:
    mov 0x00,r0
    mov.w r0,@(0x4,r5)

LAB_ce30b08:
    mov.l @(PTR_ce30b88,pc),r3
    mov 0x00,r6
    mov 0x01,r7
    jmp @r3
    mov r6,r5

;=============================================

FUN_ce30b12:
    mov.w @(DAT_ce30b7a,pc),r5
    mov.l r14,@-r15
    add r4,r5
    mov.l @(PTR_ce30b88,pc),r14
    sts.l PR,@-r15
    mov.w @r5,r3
    tst r3,r3
    bt/s LAB_ce30b30
    mov 0x00,r6
    mov.l @(PTR_ce30b8c,pc),r2
    mov 0x05,r7
    mov.b @r2,r3
    extu.b r3,r3
    cmp/ge r7,r3
    bf LAB_ce30b3c

LAB_ce30b30:
    mov.w r6,@r5
    mov.w @(0x4,r5),r0
    tst r0,r0
    bf LAB_ce30bc0
    bra LAB_ce30bb6
    nop

LAB_ce30b3c:
    mov.w @(DAT_ce30b7e,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce30b4c
    mov.w @(DAT_ce30b80,pc),r0
    mov.w @(r0,r4),r3
    cmp/pl r3
    bt LAB_ce30b5a

LAB_ce30b4c:
    mov.w r6,@r5
    mov.w @(0x4,r5),r0
    tst r0,r0
    bt LAB_ce30bb6
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30b5a:
    mov.w @(DAT_ce30b82,pc),r0
    mov.w @r5,r2
    add 0xFF,r2
    mov.w r2,@r5
    mov.b r7,@(r0,r4)
    mov.w @(0x4,r5),r0
    tst r0,r0
    bf LAB_ce30bc0
    mov.l @(PTR_ce30b84,pc),r3
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    cmp/pz r0
    bf LAB_ce30b90
    bra LAB_ce30b9a
    and 0x03,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b78:
    #data 0x1000
DAT_ce30b7a:
    #data 0x02a4
DAT_ce30b7c:
    #data 0x01d0
DAT_ce30b7e:
    #data 0x0411
DAT_ce30b80:
    #data 0x0420
DAT_ce30b82:
    #data 0x0328
    #align4

PTR_ce30b84:
    #data loc_8c26823c
PTR_ce30b88:
    #data loc_8c0353ee
PTR_ce30b8c:
    #data loc_8c2895f0

;=============================================

LAB_ce30b90:
    not r0,r0
    add 0x01,r0
    and 0x03,r0
    not r0,r0
    add 0x01,r0

LAB_ce30b9a:
    mov r0,r6
    mov 0x02,r1
    extu.b r6,r5
    cmp/ge r1,r5
    bf LAB_ce30baa
    mov 0x01,r7
    bra LAB_ce30bb2
    mov 0x06,r6

LAB_ce30baa:
    cmp/pz r5
    bf LAB_ce30bb6
    mov 0x07,r6
    mov 0x01,r7

LAB_ce30bb2:
    bra LAB_ce30bbc
    mov 0x00,r5

LAB_ce30bb6:
    mov 0x00,r6
    mov r6,r5
    mov 0x01,r7

LAB_ce30bbc:
    jsr @r14
    nop

LAB_ce30bc0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30bc6:
    mov.w @(DAT_ce30c84,pc),r5
    add r4,r5
    mov.w @r5,r3
    cmp/pl r3
    bf LAB_ce30bdc
    mov.w @(DAT_ce30c86,pc),r0
    mov 0x00,r5
    mov.b r5,@(r0,r4)
    add 0xFF,r0
    bra LAB_ce30be2
    mov.b r5,@(r0,r4)

LAB_ce30bdc:
    mov.w @(DAT_ce30c88,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce30be2:
    mov.w @(DAT_ce30c8a,pc),r0
    mov 0x05,r2
    rts
    mov.b r2,@(r0,r4)

;=============================================

FUN_ce30bea:
    mov.w @(DAT_ce30c84,pc),r6
    add r4,r6
    mov.w @r6,r3
    cmp/pl r3
    bf/s LAB_ce30c06
    mov 0x00,r5
    mov.w @(DAT_ce30c86,pc),r0
    mov 0x05,r3
    mov.b r5,@(r0,r4)
    add 0xFF,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce30c8a,pc),r0
    bra LAB_ce30c16
    mov.b r3,@(r0,r4)

LAB_ce30c06:
    mov.w @(DAT_ce30c86,pc),r0
    mov.b r5,@(r0,r4)
    add 0xFF,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce30c8c,pc),r0
    mov.b r5,@(r0,r4)
    add 0x01,r0
    mov.b r5,@(r0,r4)

LAB_ce30c16:
    rts
    nop

LAB_ce30c1a:
    mov.w @(DAT_ce30c84,pc),r3
    add r3,r4
    mov.w @r4,r2
    cmp/pl r2
    movt r0
    rts
    nop

LAB_ce30c28:
    mov.w @(DAT_ce30c8e,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c94,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30c3c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30c98,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30c90,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c6a
    mov.w @(DAT_ce30c92,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c62
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31434
    mov.l @r15+,r14

LAB_ce30c62:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce312da
    mov.l @r15+,r14

LAB_ce30c6a:
    mov.w @(DAT_ce30c92,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c7c
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce310d0
    mov.l @r15+,r14

LAB_ce30c7c:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c9c
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c84:
    #data 0x02a4
DAT_ce30c86:
    #data 0x03f9
DAT_ce30c88:
    #data 0x03f8
DAT_ce30c8a:
    #data 0x0328
DAT_ce30c8c:
    #data 0x0327
DAT_ce30c8e:
    #data 0x01ff
DAT_ce30c90:
    #data 0x01fe
DAT_ce30c92:
    #data 0x01f9
    #align4

PTR_ce30c94:
    #data PTR_ce35708
PTR_ce30c98:
    #data loc_8c052b4c

;=============================================

LAB_ce30c9c:
    mov.w @(DAT_ce30da2,pc),r0
    mov 0x01,r5
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce30da0,pc),r6
    extu.b r0,r0
    mov.l @(PTR_ce30db0,pc),r7
    cmp/eq 0x00,r0
    add r14,r6
    bt/s LAB_ce30cc0
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce30cda
    cmp/eq 0x02,r0
    bt LAB_ce30cf2
    bra LAB_ce30d76
    nop

LAB_ce30cc0:
    mov r5,r0
    nop
    mov.w r0,@(0x2,r6)
    mov.w @(DAT_ce30da4,pc),r0
    mov.l @(PTR_ce30db4,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30da6,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30da8,pc),r0
    bra LAB_ce30d76
    mov.b r4,@(r0,r14)

LAB_ce30cda:
    mov r5,r0
    nop
    mov.w r0,@(0x2,r6)
    mov.w @(DAT_ce30da4,pc),r0
    mov.l @(PTR_ce30db8,pc),r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce30da6,pc),r0
    mov.l r3,@(r0,r14)
    bra LAB_ce30d0a
    nop

LAB_ce30cf2:
    mov.w @(DAT_ce30daa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce30d10
    mov 0x02,r5
    mov.w @(DAT_ce30da4,pc),r0
    mov.l @(PTR_ce30dbc,pc),r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce30da6,pc),r0
    mov.l r3,@(r0,r14)

LAB_ce30d0a:
    mov.w @(DAT_ce30da8,pc),r0
    bra LAB_ce30d76
    mov.b r5,@(r0,r14)

LAB_ce30d10:
    mov.w @(DAT_ce30dac,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30d1e
    mova @(DAT_ce30dc0,pc),r0
    bra LAB_ce30d22
    fmov.s @r0,fr3

LAB_ce30d1e:
    mova @(DAT_ce30dc4,pc),r0
    fmov.s @r0,fr3

LAB_ce30d22:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30dac,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30d34
    mova @(DAT_ce30dc8,pc),r0
    bra LAB_ce30d38
    fmov.s @r0,fr3

LAB_ce30d34:
    mova @(DAT_ce30dcc,pc),r0
    fmov.s @r0,fr3

LAB_ce30d38:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x03,r3
    mov.w @(DAT_ce30da4,pc),r0
    mov 0x15,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce30da6,pc),r0
    mov.l @(PTR_ce30dd0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30da8,pc),r0
    mov.b r5,@(r0,r14)
    add 0x05,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r7,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.w @(DAT_ce30da4,pc),r0
    mov.b @(r0,r14),r6
    bra LAB_ce30d98
    mov 0x14,r5

LAB_ce30d76:
    mov.w @(DAT_ce30dae,pc),r0
    mov 0x07,r5
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r7,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.w @(DAT_ce30da4,pc),r0
    mov.b @(r0,r14),r6

LAB_ce30d98:
    mov.l @(PTR_ce30dd4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30da0:
    #data 0x02a4
DAT_ce30da2:
    #data 0x01e8
DAT_ce30da4:
    #data 0x0158
DAT_ce30da6:
    #data 0x03f4
DAT_ce30da8:
    #data 0x01a7
DAT_ce30daa:
    #data 0x01d3
DAT_ce30dac:
    #data 0x01d2
DAT_ce30dae:
    #data 0x01ac
    #align4

PTR_ce30db0:
    #data loc_8c2896b0
PTR_ce30db4:
    #data DAT_ce35528
PTR_ce30db8:
    #data DAT_ce3552c
PTR_ce30dbc:
    #data DAT_ce35530
DAT_ce30dc0:
    #data 0x417d5555
DAT_ce30dc4:
    #data 0xc17d5555
DAT_ce30dc8:
    #data 0xbdd55555
DAT_ce30dcc:
    #data 0x3dd55555
PTR_ce30dd0:
    #data DAT_ce35574
PTR_ce30dd4:
    #data loc_8c034e8c

;=============================================

LAB_ce30dd8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e24,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30e20,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30e06
    mov.w @(DAT_ce30e22,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30dfe
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31434
    mov.l @r15+,r14

LAB_ce30dfe:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce312da
    mov.l @r15+,r14

LAB_ce30e06:
    mov.w @(DAT_ce30e22,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30e18
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce310d0
    mov.l @r15+,r14

LAB_ce30e18:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e28
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e20:
    #data 0x01fe
DAT_ce30e22:
    #data 0x01f9
    #align4

PTR_ce30e24:
    #data loc_8c052b4c

;=============================================

LAB_ce30e28:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    mov.w @(DAT_ce30e6e,pc),r4
    sts.l PR,@-r15
    add r14,r4
    mov r13,r0
    nop
    mov.w r0,@(0x4,r4)
    mov 0x03,r2
    mov.w @(DAT_ce30e70,pc),r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    cmp/ge r2,r3
    bf/s LAB_ce30e50
    mov 0x01,r5
    mov r5,r0
    nop
    mov.w r0,@(0x4,r4)

LAB_ce30e50:
    mov.w @(DAT_ce30e70,pc),r0
    mov.w @(DAT_ce30e72,pc),r7
    mov.b @(r0,r14),r0
    extu.b r0,r0
    mov 0x0D,r1
    cmp/hs r1,r0
    bf LAB_ce30e62
    bra LAB_ce3106e
    nop

LAB_ce30e62:
    shll r0
    mov r0,r1
    mova @(DAT_ce30e74,pc),r0
    mov.w @(r0,r1),r0

LAB_ce30e6a:
    braf r0
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e6e:
    #data 0x02a4
DAT_ce30e70:
    #data 0x01e8
DAT_ce30e72:
    #data 0x0400
DAT_ce30e74:
    #data 0x0020
    #data 0x005e
    #data 0x0078
    #data 0x00d8
    #data 0x00ec
    #data 0x0100
    #data 0x0114
    #data 0x015a
    #data 0x016e
    #data 0x0182
    #data 0x0196
    #data 0x01aa
    #data 0x01be

;=============================================

LAB_ce30e8e:
    mov r5,r0
    nop
    mov.w r0,@(0x2,r4)
    mov.w @(DAT_ce30f96,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r7,r3
    bt LAB_ce30eb8
    mov r5,r0
    nop
    mov.w r0,@(0x4,r4)
    mov 0x05,r3
    mov.w @(DAT_ce30f98,pc),r0
    mov 0x44,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.l @(PTR_ce30fa0,pc),r3
    mov.b r2,@(r0,r14)

LAB_ce30eb2:
    mov.w @(DAT_ce30f9a,pc),r0
    bra LAB_ce3103e
    mov.l r3,@(r0,r14)

LAB_ce30eb8:
    mov.w @(DAT_ce30f98,pc),r0
    mov.l @(PTR_ce30fa4,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce30f9a,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30f9c,pc),r0
    bra LAB_ce3106e
    mov.b r13,@(r0,r14)

LAB_ce30ecc:
    mov r5,r0
    nop
    mov.w r0,@(0x2,r4)
    mov.w @(DAT_ce30f98,pc),r0
    mov.l @(PTR_ce30fa8,pc),r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce30f9a,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30f9c,pc),r0
    bra LAB_ce3106e
    mov.b r5,@(r0,r14)

LAB_ce30ee6:
    mov.w @(DAT_ce30f98,pc),r0
    mov 0x02,r6
    mov.l @(PTR_ce30fac,pc),r3
    mov.b r6,@(r0,r14)
    add 0x49,r0
    mov.b r6,@(r0,r14)
    mov.w @(DAT_ce30f9a,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(0x2,r4),r0
    tst r0,r0
    bf LAB_ce30f1e
    mov.w @(DAT_ce30f96,pc),r0
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r7,r2
    bt LAB_ce30f1e
    mov r5,r0
    nop
    mov.w r0,@(0x4,r4)
    mov 0x0D,r3
    mov.w @(DAT_ce30f98,pc),r0
    mov 0x4C,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.l @(PTR_ce30fb0,pc),r3
    mov.b r2,@(r0,r14)
    bra LAB_ce30eb2
    nop

LAB_ce30f1e:
    mov.w @(DAT_ce30f9c,pc),r0
    mov.w @(DAT_ce30f9e,pc),r2
    mov.b r6,@(r0,r14)
    add 0x53,r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce30f40
    mov.w @(DAT_ce30f98,pc),r0
    mov 0x03,r3
    mov 0x13,r1
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r1,@(r0,r14)
    mov.w @(DAT_ce30f9a,pc),r0
    mov.l @(PTR_ce30fb4,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30f40:
    mov.w @(DAT_ce30f9c,pc),r0
    bra LAB_ce3106e
    mov.b r6,@(r0,r14)

LAB_ce30f46:
    mov.w @(DAT_ce30f98,pc),r0
    mov 0x06,r2
    mov 0x45,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30f9a,pc),r0
    mov.l @(PTR_ce30fb8,pc),r2
    bra LAB_ce3103e
    mov.l r2,@(r0,r14)

LAB_ce30f5a:
    mov.w @(DAT_ce30f98,pc),r0
    mov 0x07,r1
    mov 0x46,r3
    mov.l @(PTR_ce30fbc,pc),r2
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30f9a,pc),r0
    bra LAB_ce3103e
    mov.l r2,@(r0,r14)

LAB_ce30f6e:
    mov.w @(DAT_ce30f98,pc),r0
    mov 0x08,r3
    mov 0x47,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce30f9a,pc),r0
    mov.l @(PTR_ce30fc0,pc),r3
    bra LAB_ce3103e
    mov.l r3,@(r0,r14)

LAB_ce30f82:
    mov.w @(DAT_ce30f98,pc),r0
    mov 0x09,r1
    mov 0x48,r3
    mov.l @(PTR_ce30fc4,pc),r2
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30f9a,pc),r0
    bra LAB_ce3103e
    mov.l r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f96:
    #data 0x01fa
DAT_ce30f98:
    #data 0x0158
DAT_ce30f9a:
    #data 0x03f4
DAT_ce30f9c:
    #data 0x01a7
DAT_ce30f9e:
    #data 0x0800
    #align4

PTR_ce30fa0:
    #data DAT_ce35578
PTR_ce30fa4:
    #data DAT_ce35528
PTR_ce30fa8:
    #data DAT_ce3552c
PTR_ce30fac:
    #data DAT_ce35530
PTR_ce30fb0:
    #data DAT_ce35598
PTR_ce30fb4:
    #data DAT_ce35570
PTR_ce30fb8:
    #data DAT_ce3557c
PTR_ce30fbc:
    #data DAT_ce35580
PTR_ce30fc0:
    #data DAT_ce35584
PTR_ce30fc4:
    #data DAT_ce35588

;=============================================

LAB_ce30fc8:
    mov.w @(DAT_ce310a6,pc),r0
    mov 0x0B,r3
    mov 0x4A,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce310a8,pc),r0
    mov.l @(PTR_ce310b0,pc),r3
    bra LAB_ce3103e
    mov.l r3,@(r0,r14)

LAB_ce30fdc:
    mov.w @(DAT_ce310a6,pc),r0
    mov 0x0C,r1
    mov 0x4B,r3
    mov.l @(PTR_ce310b4,pc),r2
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce310a8,pc),r0
    bra LAB_ce3103e
    mov.l r2,@(r0,r14)

LAB_ce30ff0:
    mov.w @(DAT_ce310a6,pc),r0
    mov 0x0E,r3
    mov 0x4D,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce310a8,pc),r0
    mov.l @(PTR_ce310b8,pc),r3
    bra LAB_ce3103e
    mov.l r3,@(r0,r14)

LAB_ce31004:
    mov.w @(DAT_ce310a6,pc),r0
    mov 0x0F,r1
    mov 0x4E,r3
    mov.l @(PTR_ce310bc,pc),r2
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce310a8,pc),r0
    bra LAB_ce3103e
    mov.l r2,@(r0,r14)

LAB_ce31018:
    mov.w @(DAT_ce310a6,pc),r0
    mov 0x10,r3
    mov 0x4F,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce310a8,pc),r0
    mov.l @(PTR_ce310c0,pc),r3
    bra LAB_ce3103e
    mov.l r3,@(r0,r14)

LAB_ce3102c:
    mov.w @(DAT_ce310a6,pc),r0
    mov 0x12,r1
    mov 0x51,r3
    mov.l @(PTR_ce310c4,pc),r2
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce310a8,pc),r0
    mov.l r2,@(r0,r14)

LAB_ce3103e:
    mov.w @(DAT_ce310aa,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce310c8,pc),r3
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
    mov.w @(DAT_ce310a6,pc),r0
    mov.l @(PTR_ce310cc,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce310ac,pc),r0
    bra LAB_ce3109e
    mov.b r13,@(r0,r14)

LAB_ce3106e:
    mov.w @(DAT_ce310aa,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce310c8,pc),r3
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
    mov.w @(DAT_ce310a6,pc),r0
    mov.l @(PTR_ce310cc,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce3109e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310a6:
    #data 0x0158
DAT_ce310a8:
    #data 0x03f4
DAT_ce310aa:
    #data 0x01ac
DAT_ce310ac:
    #data 0x01a7
    #align4

PTR_ce310b0:
    #data DAT_ce35590
PTR_ce310b4:
    #data DAT_ce35594
PTR_ce310b8:
    #data DAT_ce3559c
PTR_ce310bc:
    #data DAT_ce355a0
PTR_ce310c0:
    #data DAT_ce355a4
PTR_ce310c4:
    #data DAT_ce355ac
PTR_ce310c8:
    #data loc_8c2896b0
PTR_ce310cc:
    #data loc_8c034e8c

;=============================================

LAB_ce310d0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    mov.w @(DAT_ce31118,pc),r4
    sts.l PR,@-r15
    add r14,r4
    mov r13,r0
    nop
    mov.w r0,@(0x4,r4)
    mov 0x03,r2
    mov.w @(DAT_ce3111a,pc),r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    cmp/ge r2,r3
    bf/s LAB_ce310f8
    mov 0x01,r5
    mov r5,r0
    nop
    mov.w r0,@(0x4,r4)

LAB_ce310f8:
    mov.w @(DAT_ce3111a,pc),r0
    mov 0x08,r6
    mov.l @(PTR_ce3111c,pc),r7
    mov.b @(r0,r14),r0
    extu.b r0,r0
    mov 0x0D,r1
    cmp/hs r1,r0
    bf LAB_ce3110c
    bra LAB_ce312a4
    nop

LAB_ce3110c:
    shll r0
    mov r0,r1
    mova @(DAT_ce31120,pc),r0
    mov.w @(r0,r1),r0

LAB_ce31114:
    braf r0
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31118:
    #data 0x02a4
DAT_ce3111a:
    #data 0x01e8
    #align4

PTR_ce3111c:
    #data loc_8c2896b0
DAT_ce31120:
    #data 0x0022
    #data 0x003e
    #data 0x005a
    #data 0x0070
    #data 0x0084
    #data 0x0096
    #data 0x00a6
    #data 0x00b8
    #data 0x00cc
    #data 0x00de
    #data 0x00f0
    #data 0x0102
    #data 0x014c

;=============================================

LAB_ce3113a:
    mov r5,r0
    nop
    mov.w r0,@(0x2,r4)
    mov 0x06,r3
    mov.w @(DAT_ce3122e,pc),r0
    mov.l @(PTR_ce31234,pc),r2
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31230,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce31232,pc),r0
    bra LAB_ce312a4
    mov.b r13,@(r0,r14)

LAB_ce31156:
    mov r5,r0
    nop
    mov.w r0,@(0x2,r4)
    mov 0x07,r3
    mov.w @(DAT_ce3122e,pc),r0
    mov.l @(PTR_ce31238,pc),r2
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31230,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce31232,pc),r0
    bra LAB_ce312a4
    mov.b r5,@(r0,r14)

LAB_ce31172:
    mov.w @(DAT_ce3122e,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce3123c,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r6,@(r0,r14)
    mov.w @(DAT_ce31230,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce31232,pc),r0
    bra LAB_ce312a4
    mov.b r4,@(r0,r14)

LAB_ce31188:
    mov.w @(DAT_ce3122e,pc),r0
    mov 0x06,r2
    mov 0x45,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.l @(PTR_ce31240,pc),r2
    mov.b r3,@(r0,r14)

LAB_ce31196:
    mov.w @(DAT_ce31230,pc),r0
    bra LAB_ce31276
    mov.l r2,@(r0,r14)

LAB_ce3119c:
    mov.w @(DAT_ce3122e,pc),r0
    mov 0x07,r1
    mov.l @(PTR_ce31244,pc),r2
    mov 0x46,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce31196
    nop

LAB_ce311ae:
    mov.w @(DAT_ce3122e,pc),r0
    mov 0x47,r3
    mov.l @(PTR_ce31248,pc),r2
    mov.b r6,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce31196
    nop

LAB_ce311be:
    mov.w @(DAT_ce3122e,pc),r0
    mov 0x09,r1
    mov.l @(PTR_ce3124c,pc),r2
    mov 0x48,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce31196
    nop

LAB_ce311d0:
    mov.w @(DAT_ce3122e,pc),r0
    mov 0x0B,r3
    mov 0x4A,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.l @(PTR_ce31250,pc),r3
    mov.b r2,@(r0,r14)

LAB_ce311de:
    mov.w @(DAT_ce31230,pc),r0
    bra LAB_ce31276
    mov.l r3,@(r0,r14)

LAB_ce311e4:
    mov.w @(DAT_ce3122e,pc),r0
    mov 0x0C,r1
    mov.l @(PTR_ce31254,pc),r2
    mov 0x4B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce31196
    nop

LAB_ce311f6:
    mov.w @(DAT_ce3122e,pc),r0
    mov 0x0E,r3
    mov 0x4D,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.l @(PTR_ce31258,pc),r3
    mov.b r2,@(r0,r14)
    bra LAB_ce311de
    nop

LAB_ce31208:
    mov.w @(DAT_ce3122e,pc),r0
    mov 0x0F,r1
    mov.l @(PTR_ce3125c,pc),r2
    mov 0x4E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce31196
    nop

LAB_ce3121a:
    mov.w @(DAT_ce3122e,pc),r0
    mov 0x10,r3
    mov 0x4F,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31230,pc),r0
    mov.l @(PTR_ce31260,pc),r3
    bra LAB_ce31276
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3122e:
    #data 0x0158
DAT_ce31230:
    #data 0x03f4
DAT_ce31232:
    #data 0x01a7
    #align4

PTR_ce31234:
    #data DAT_ce35528
PTR_ce31238:
    #data DAT_ce3552c
PTR_ce3123c:
    #data DAT_ce35530
PTR_ce31240:
    #data DAT_ce3557c
PTR_ce31244:
    #data DAT_ce35580
PTR_ce31248:
    #data DAT_ce35584
PTR_ce3124c:
    #data DAT_ce35588
PTR_ce31250:
    #data DAT_ce35590
PTR_ce31254:
    #data DAT_ce35594
PTR_ce31258:
    #data DAT_ce3559c
PTR_ce3125c:
    #data DAT_ce355a0
PTR_ce31260:
    #data DAT_ce355a4

;=============================================

LAB_ce31264:
    mov.w @(DAT_ce31380,pc),r0
    mov 0x12,r1
    mov 0x51,r3
    mov.l @(PTR_ce3138c,pc),r2
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31382,pc),r0
    mov.l r2,@(r0,r14)

LAB_ce31276:
    mov.w @(DAT_ce31384,pc),r0
    mov 0x14,r5
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r7,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.w @(DAT_ce31380,pc),r0
    mov.l @(PTR_ce31390,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31386,pc),r0
    bra LAB_ce312d2
    mov.b r13,@(r0,r14)

LAB_ce312a4:
    mov.w @(DAT_ce31384,pc),r0
    mov 0x09,r5
    mov r14,r4
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r7,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    lds.l @r15+,PR
    mov.w @(DAT_ce31380,pc),r0
    mov.l @(PTR_ce31390,pc),r3
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce312d2:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce312da:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    mov.l r12,@-r15
    mov.w @(DAT_ce31388,pc),r4
    sts.l PR,@-r15
    add r14,r4
    mov r13,r0
    nop
    mov.w r0,@(0x4,r4)
    mov 0x03,r5
    mov.w @(DAT_ce3138a,pc),r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    cmp/ge r5,r3
    bf/s LAB_ce31304
    mov 0x01,r12
    mov r12,r0
    nop
    mov.w r0,@(0x4,r4)

LAB_ce31304:
    mov.w @(DAT_ce3138a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31322
    cmp/eq 0x01,r0
    bt LAB_ce31344
    cmp/eq 0x02,r0
    bt LAB_ce31368
    cmp/eq 0x03,r0
    bt LAB_ce313a4
    cmp/eq 0x04,r0
    bt LAB_ce313b6
    bra LAB_ce313f8
    nop

LAB_ce31322:
    mov r12,r0
    nop
    mov.w r0,@(0x2,r4)
    mov.w @(DAT_ce31380,pc),r0
    mov.l @(PTR_ce31394,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r5,@(r0,r14)
    mov 0x14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31382,pc),r0
    mov.l @(PTR_ce31398,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce31386,pc),r0
    bra LAB_ce313f8
    mov.b r13,@(r0,r14)

LAB_ce31344:
    mov r12,r0
    nop
    mov.w r0,@(0x2,r4)
    mov 0x04,r3
    mov.w @(DAT_ce31380,pc),r0
    mov 0x15,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31394,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31382,pc),r0
    mov.l @(PTR_ce3139c,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce31386,pc),r0
    bra LAB_ce313f8
    mov.b r12,@(r0,r14)

LAB_ce31368:
    mov.w @(DAT_ce31380,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce313a0,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31382,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce31386,pc),r0
    bra LAB_ce313f8
    mov.b r4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31380:
    #data 0x0158
DAT_ce31382:
    #data 0x03f4
DAT_ce31384:
    #data 0x01ac
DAT_ce31386:
    #data 0x01a7
DAT_ce31388:
    #data 0x02a4
DAT_ce3138a:
    #data 0x01e8
    #align4

PTR_ce3138c:
    #data DAT_ce355ac
PTR_ce31390:
    #data loc_8c034e8c
PTR_ce31394:
    #data loc_8c04223a
PTR_ce31398:
    #data DAT_ce35534
PTR_ce3139c:
    #data DAT_ce35538
PTR_ce313a0:
    #data DAT_ce3553c

;=============================================

LAB_ce313a4:
    mov.w @(DAT_ce314c4,pc),r0
    mov 0x0A,r2
    mov 0x49,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.l @(PTR_ce314d0,pc),r2
    mov.b r3,@(r0,r14)
    bra LAB_ce313c4
    nop

LAB_ce313b6:
    mov.w @(DAT_ce314c4,pc),r0
    mov 0x11,r1
    mov.l @(PTR_ce314d4,pc),r2
    mov 0x50,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce313c4:
    mov.w @(DAT_ce314c6,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce314d8,pc),r3
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce314c8,pc),r0
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
    mov.w @(DAT_ce314c4,pc),r0
    mov.l @(PTR_ce314dc,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce314ca,pc),r0
    bra LAB_ce3142a
    mov.b r13,@(r0,r14)

LAB_ce313f8:
    mov.w @(DAT_ce314c8,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce314d8,pc),r3
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
    mov.w @(DAT_ce314c4,pc),r0
    mov.l @(PTR_ce314dc,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3142a:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31434:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    mov.l r12,@-r15
    mov.w @(DAT_ce314cc,pc),r4
    sts.l PR,@-r15
    add r14,r4
    mov r13,r0
    nop
    mov.w r0,@(0x4,r4)
    mov 0x03,r2
    mov.w @(DAT_ce314ce,pc),r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    cmp/ge r2,r3
    bf/s LAB_ce3145e
    mov 0x01,r12
    mov r12,r0
    nop
    mov.w r0,@(0x4,r4)

LAB_ce3145e:
    mov.w @(DAT_ce314ce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3147e
    mov 0x0A,r5
    cmp/eq 0x01,r0
    bt LAB_ce314a2
    cmp/eq 0x02,r0
    bt LAB_ce314ec
    cmp/eq 0x03,r0
    bt LAB_ce31504
    cmp/eq 0x04,r0
    bt LAB_ce31514
    bra LAB_ce31556
    nop

LAB_ce3147e:
    mov r12,r0
    nop
    mov.w r0,@(0x2,r4)
    mov 0x09,r3
    mov.w @(DAT_ce314c4,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce314e0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce314c6,pc),r0
    mov.l @(PTR_ce314e4,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce314ca,pc),r0
    bra LAB_ce31556
    mov.b r13,@(r0,r14)

LAB_ce314a2:
    mov r12,r0
    nop
    mov.w r0,@(0x2,r4)
    mov.w @(DAT_ce314c4,pc),r0
    mov.l @(PTR_ce314e0,pc),r3
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r5,@(r0,r14)
    mov 0x15,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce314c6,pc),r0
    mov.l @(PTR_ce314e8,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce314ca,pc),r0
    bra LAB_ce31556
    mov.b r12,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314c4:
    #data 0x0158
DAT_ce314c6:
    #data 0x03f4
DAT_ce314c8:
    #data 0x01ac
DAT_ce314ca:
    #data 0x01a7
DAT_ce314cc:
    #data 0x02a4
DAT_ce314ce:
    #data 0x01e8
    #align4

PTR_ce314d0:
    #data DAT_ce3558c
PTR_ce314d4:
    #data DAT_ce355a8
PTR_ce314d8:
    #data loc_8c2896b0
PTR_ce314dc:
    #data loc_8c034e8c
PTR_ce314e0:
    #data loc_8c04223a
PTR_ce314e4:
    #data DAT_ce35534
PTR_ce314e8:
    #data DAT_ce35538

;=============================================

LAB_ce314ec:
    mov.w @(DAT_ce315e6,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.l @(PTR_ce315f4,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce315e8,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce315ea,pc),r0
    bra LAB_ce31556
    mov.b r4,@(r0,r14)

LAB_ce31504:
    mov.w @(DAT_ce315e6,pc),r0
    mov 0x49,r3
    mov.l @(PTR_ce315f8,pc),r2
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce31522
    nop

LAB_ce31514:
    mov.w @(DAT_ce315e6,pc),r0
    mov 0x11,r1
    mov.l @(PTR_ce315fc,pc),r2
    mov 0x50,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce31522:
    mov.w @(DAT_ce315e8,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce31600,pc),r3
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce315ec,pc),r0
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
    mov.w @(DAT_ce315e6,pc),r0
    mov.l @(PTR_ce31604,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce315ea,pc),r0
    bra LAB_ce31588
    mov.b r13,@(r0,r14)

LAB_ce31556:
    mov.w @(DAT_ce315ec,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce31600,pc),r3
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
    mov.w @(DAT_ce315e6,pc),r0
    mov.l @(PTR_ce31604,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31588:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31592:
    mov.w @(DAT_ce315ee,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce315a2
    mov.w @(DAT_ce315f0,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce315b2

LAB_ce315a2:
    mov.w @(DAT_ce315ee,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce315b6
    mov.w @(DAT_ce315f0,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce315b6

LAB_ce315b2:
    bra LAB_ce315ba
    nop

LAB_ce315b6:
    rts
    nop

LAB_ce315ba:
    mov.w @(DAT_ce315ee,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce316ba
    bra LAB_ce315c8
    nop

LAB_ce315c8:
    mov.w @(DAT_ce315f2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce31608
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce3162e
    cmp/eq 0x02,r0
    bt LAB_ce31656
    bra LAB_ce3167a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315e6:
    #data 0x0158
DAT_ce315e8:
    #data 0x03f4
DAT_ce315ea:
    #data 0x01a7
DAT_ce315ec:
    #data 0x01ac
DAT_ce315ee:
    #data 0x01fe
DAT_ce315f0:
    #data 0x01d6
DAT_ce315f2:
    #data 0x01e8
    #align4

PTR_ce315f4:
    #data DAT_ce3553c
PTR_ce315f8:
    #data DAT_ce3558c
PTR_ce315fc:
    #data DAT_ce355a8
PTR_ce31600:
    #data loc_8c2896b0
PTR_ce31604:
    #data loc_8c034e8c

;=============================================

LAB_ce31608:
    mov.w @(DAT_ce316fc,pc),r0
    mov 0x0C,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31622
    mov.w @(DAT_ce316fe,pc),r0
    mov.l @(PTR_ce3170c,pc),r2
    bra LAB_ce31628
    mov.l r2,@(r0,r14)

LAB_ce31622:
    mov.w @(DAT_ce316fe,pc),r0
    mov.l @(PTR_ce31710,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce31628:
    mov.w @(DAT_ce31700,pc),r0
    bra LAB_ce3167a
    mov.b r4,@(r0,r14)

LAB_ce3162e:
    mov.w @(DAT_ce316fc,pc),r0
    mov 0x01,r5
    mov 0x0D,r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3164a
    mov.w @(DAT_ce316fe,pc),r0
    mov.l @(PTR_ce31714,pc),r2
    bra LAB_ce31650
    mov.l r2,@(r0,r14)

LAB_ce3164a:
    mov.w @(DAT_ce316fe,pc),r0
    mov.l @(PTR_ce31718,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce31650:
    mov.w @(DAT_ce31700,pc),r0
    bra LAB_ce3167a
    mov.b r5,@(r0,r14)

LAB_ce31656:
    mov.w @(DAT_ce316fc,pc),r0
    mov 0x02,r5
    mov 0x0E,r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31672
    mov.w @(DAT_ce316fe,pc),r0
    mov.l @(PTR_ce3171c,pc),r2
    bra LAB_ce31650
    mov.l r2,@(r0,r14)

LAB_ce31672:
    mov.w @(DAT_ce316fe,pc),r0
    mov.l @(PTR_ce31720,pc),r1
    bra LAB_ce31650
    mov.l r1,@(r0,r14)

LAB_ce3167a:
    mov.w @(DAT_ce31702,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce31724,pc),r3
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
    mov.w @(DAT_ce316fc,pc),r0
    mov.l @(PTR_ce31728,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31704,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce316b4
    mov.w @(DAT_ce31704,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce316b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce316ba:
    mov.w @(DAT_ce31706,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce316da
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce31740
    cmp/eq 0x02,r0
    bt LAB_ce31772
    bra LAB_ce317ec
    nop

LAB_ce316da:
    mov.w @(DAT_ce316fc,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3172c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31708,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31734
    mov.w @(DAT_ce316fe,pc),r0
    mov.l @(PTR_ce31730,pc),r3
    bra LAB_ce3173a
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce316fc:
    #data 0x0158
DAT_ce316fe:
    #data 0x03f4
DAT_ce31700:
    #data 0x01a7
DAT_ce31702:
    #data 0x01ac
DAT_ce31704:
    #data 0x01d6
DAT_ce31706:
    #data 0x01e8
DAT_ce31708:
    #data 0x01fc
    #align4

PTR_ce3170c:
    #data DAT_ce35540
PTR_ce31710:
    #data DAT_ce35558
PTR_ce31714:
    #data DAT_ce35544
PTR_ce31718:
    #data DAT_ce3555c
PTR_ce3171c:
    #data DAT_ce35548
PTR_ce31720:
    #data DAT_ce35560
PTR_ce31724:
    #data loc_8c2896b0
PTR_ce31728:
    #data loc_8c034e8c
PTR_ce3172c:
    #data loc_8c04223a
PTR_ce31730:
    #data DAT_ce3554c

;=============================================

LAB_ce31734:
    mov.w @(DAT_ce31842,pc),r0
    mov.l @(PTR_ce31854,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce3173a:
    mov.w @(DAT_ce31844,pc),r0
    bra LAB_ce317ec
    mov.b r13,@(r0,r14)

LAB_ce31740:
    mov.w @(DAT_ce31846,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce31858,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31848,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31764
    mov.w @(DAT_ce31842,pc),r0
    mov.l @(PTR_ce3185c,pc),r3
    bra LAB_ce3176a
    mov.l r3,@(r0,r14)

LAB_ce31764:
    mov.w @(DAT_ce31842,pc),r0
    mov.l @(PTR_ce31860,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce3176a:
    mov.w @(DAT_ce31844,pc),r0
    mov 0x01,r3
    bra LAB_ce317ec
    mov.b r3,@(r0,r14)

LAB_ce31772:
    mov.w @(DAT_ce31846,pc),r0
    mov 0x02,r4
    mov 0x11,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce3184a,pc),r3
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce31796
    mov.w @(DAT_ce31846,pc),r0
    mov 0x06,r2
    mov 0x14,r1
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r1,@(r0,r14)

LAB_ce31796:
    mov.w @(DAT_ce31848,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce317a6
    mov.w @(DAT_ce31842,pc),r0
    mov.l @(PTR_ce31864,pc),r3
    bra LAB_ce317ac
    mov.l r3,@(r0,r14)

LAB_ce317a6:
    mov.w @(DAT_ce31842,pc),r0
    mov.l @(PTR_ce31868,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce317ac:
    mov.w @(DAT_ce31844,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce3186c,pc),r3
    mov.b r4,@(r0,r14)
    add 0x05,r0
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
    mov.w @(DAT_ce31846,pc),r0
    mov.l @(PTR_ce31870,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3184c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce31826
    mov.w @(DAT_ce3184c,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    bra LAB_ce31826
    mov.b r2,@(r0,r14)

LAB_ce317ec:
    mov.w @(DAT_ce3184e,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce3186c,pc),r3
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
    mov.w @(DAT_ce31846,pc),r0
    mov.l @(PTR_ce31870,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3184c,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce31826
    mov.w @(DAT_ce3184c,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce31826:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3182e:
    mov.w @(DAT_ce31850,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31874,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31842:
    #data 0x03f4
DAT_ce31844:
    #data 0x01a7
DAT_ce31846:
    #data 0x0158
DAT_ce31848:
    #data 0x01fc
DAT_ce3184a:
    #data 0x1000
DAT_ce3184c:
    #data 0x01d6
DAT_ce3184e:
    #data 0x01ac
DAT_ce31850:
    #data 0x01ff
    #align4

PTR_ce31854:
    #data DAT_ce35564
PTR_ce31858:
    #data loc_8c04223a
PTR_ce3185c:
    #data DAT_ce35550
PTR_ce31860:
    #data DAT_ce35568
PTR_ce31864:
    #data DAT_ce35554
PTR_ce31868:
    #data DAT_ce3556c
PTR_ce3186c:
    #data loc_8c2896b0
PTR_ce31870:
    #data loc_8c034e8c
PTR_ce31874:
    #data PTR_ce35718

;=============================================

LAB_ce31878:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31994,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31998,pc),r3
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
    mov.w @(DAT_ce3198c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce318e4
    mov.w @(DAT_ce3198e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce318dc
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31b68
    mov.l @r15+,r14

LAB_ce318dc:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31b04
    mov.l @r15+,r14

LAB_ce318e4:
    mov.w @(DAT_ce3198e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce318f6
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31a60
    mov.l @r15+,r14

LAB_ce318f6:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31bb8
    mov.l @r15+,r14

LAB_ce318fe:
    mov.w @(DAT_ce31990,pc),r0
    mov 0x03,r2
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    extu.b r3,r3
    cmp/ge r2,r3
    bt LAB_ce3194e
    mov 0x5C,r1
    mov.l @(PTR_ce31998,pc),r3
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

LAB_ce3194e:
    mov.w @(DAT_ce3198c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31972
    mov.w @(DAT_ce3198e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3196a
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31b68
    mov.l @r15+,r14

LAB_ce3196a:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31b04
    mov.l @r15+,r14

LAB_ce31972:
    mov.w @(DAT_ce3198e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31984
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31a60
    mov.l @r15+,r14

LAB_ce31984:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3199c
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3198c:
    #data 0x01fe
DAT_ce3198e:
    #data 0x01f9
DAT_ce31990:
    #data 0x01e8
    #align4

PTR_ce31994:
    #data loc_8c0511e2
PTR_ce31998:
    #data loc_8c052c84

;=============================================

LAB_ce3199c:
    mov.w @(DAT_ce319ba,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    mov 0x0D,r1
    cmp/hs r1,r0
    bt LAB_ce31a4e
    shll r0
    mov r0,r1
    mova @(DAT_ce319bc,pc),r0
    mov.w @(r0,r1),r0

LAB_ce319b6:
    braf r0
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319ba:
    #data 0x01e8
DAT_ce319bc:
    #data 0x007e
    #data 0x007e
    #data 0x006a
    #data 0x001c
    #data 0x0020
    #data 0x0024
    #data 0x0028
    #data 0x002c
    #data 0x0046
    #data 0x004e
    #data 0x0052
    #data 0x005a
    #data 0x0062

;=============================================

LAB_ce319d6:
    bra LAB_ce31a14
    nop

LAB_ce319da:
    bra LAB_ce31a0c
    nop

LAB_ce319de:
    bra LAB_ce31a14
    nop

LAB_ce319e2:
    bra LAB_ce31a0c
    nop

LAB_ce319e6:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce32270
    mov.l @r15+,r14

LAB_ce31a00:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce32306
    mov.l @r15+,r14

LAB_ce31a08:
    bra LAB_ce31a14
    nop

LAB_ce31a0c:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3220c
    mov.l @r15+,r14

LAB_ce31a14:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3220c
    mov.l @r15+,r14

LAB_ce31a1c:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce32476
    mov.l @r15+,r14

LAB_ce31a4:
    mov.w @(DAT_ce31a54,pc),r0
    mov.w @(DAT_ce31a56,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31a38
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31d4c
    mov.l @r15+,r14

LAB_ce31a38:
    mov.l @(PTR_ce31a58,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31a4e
    lds.l @r15+,PR
    mov.l @(PTR_ce31a5c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a4e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a54:
    #data 0x01fa
DAT_ce31a56:
    #data 0x0800
    #align4

PTR_ce31a58:
    #data loc_8c034dee
PTR_ce31a5c:
    #data loc_8c051648

;=============================================

LAB_ce31a60:
    mov.w @(DAT_ce31a7e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    mov 0x0D,r1
    cmp/hs r1,r0
    bt LAB_ce31afe
    shll r0
    mov r0,r1
    mova @(DAT_ce31a80,pc),r0
    mov.w @(r0,r1),r0

LAB_ce31a7a:
    braf r0
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a7e:
    #data 0x01e8
DAT_ce31a80:
    #data 0x006a
    #data 0x006a
    #data 0x006a
    #data 0x001c
    #data 0x0020
    #data 0x0024
    #data 0x0028
    #data 0x002c
    #data 0x0046
    #data 0x004e
    #data 0x0052
    #data 0x005a
    #data 0x0062

;=============================================

LAB_ce31a9a:
    bra LAB_ce31ad8
    nop

LAB_ce31a9e:
    bra LAB_ce31ad0
    nop

LAB_ce31aa2:
    bra LAB_ce31ad8
    nop

LAB_ce31aa6:
    bra LAB_ce31ad0
    nop

LAB_ce31aaa:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce32270
    mov.l @r15+,r14

LAB_ce31ac4:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce32306
    mov.l @r15+,r14

LAB_ce31acc:
    bra LAB_ce31ad8
    nop

LAB_ce31ad0:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3220c
    mov.l @r15+,r14

LAB_ce31ad8:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3220c
    mov.l @r15+,r14

LAB_ce31ae0:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce32476
    mov.l @r15+,r14

LAB_ce31ae8:
    mov.l @(PTR_ce31b60,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31afe
    lds.l @r15+,PR
    mov.l @(PTR_ce31b64,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31afe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b04:
    mov.w @(DAT_ce31b5c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce31b28
    cmp/eq 0x04,r0
    bt LAB_ce31b30
    cmp/eq 0x02,r0
    bt LAB_ce31b38
    cmp/eq 0x00,r0
    bt LAB_ce31b40
    cmp/eq 0x01,r0
    bt LAB_ce31b40
    bra LAB_ce31b56
    nop

LAB_ce31b28:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3220c
    mov.l @r15+,r14

LAB_ce31b30:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3220c
    mov.l @r15+,r14

LAB_ce31b38:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31cfe
    mov.l @r15+,r14

LAB_ce31b40:
    mov.l @(PTR_ce31b60,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b56
    lds.l @r15+,PR
    mov.l @(PTR_ce31b64,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b56:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b5c:
    #data 0x01e8
    #align4

PTR_ce31b60:
    #data loc_8c034dee
PTR_ce31b64:
    #data loc_8c051648

;=============================================

LAB_ce31b68:
    mov.w @(DAT_ce31c42,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce31b8c
    cmp/eq 0x04,r0
    bt LAB_ce31b94
    cmp/eq 0x00,r0
    bt LAB_ce31b9c
    cmp/eq 0x01,r0
    bt LAB_ce31b9c
    cmp/eq 0x02,r0
    bt LAB_ce31b9c
    bra LAB_ce31bb2
    nop

LAB_ce31b8c:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3220c
    mov.l @r15+,r14

LAB_ce31b94:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3220c
    mov.l @r15+,r14

LAB_ce31b9c:
    mov.l @(PTR_ce31c48,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31bb2
    lds.l @r15+,PR
    mov.l @(PTR_ce31c4c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31bb2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31bb8:
    mov.w @(DAT_ce31c42,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31bd4
    cmp/eq 0x00,r0
    bt LAB_ce31bdc
    cmp/eq 0x01,r0
    bt LAB_ce31bdc
    bra LAB_ce31bf2
    nop

LAB_ce31bd4:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3201c
    mov.l @r15+,r14

LAB_ce31bdc:
    mov.l @(PTR_ce31c48,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31bf2
    lds.l @r15+,PR
    mov.l @(PTR_ce31c4c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31bf2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31bf8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31c50,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31c54,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31c0e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31c58,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31c5c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31c44,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31c70
    bsr FUN_ce31cb2
    mov r14,r4
    mov.w @(DAT_ce31c42,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31c60
    cmp/eq 0x00,r0
    bt LAB_ce31c74
    cmp/eq 0x01,r0
    bt LAB_ce31c74
    bra LAB_ce31c74
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c42:
    #data 0x01e8
DAT_ce31c44:
    #data 0x01fe
    #align4

PTR_ce31c48:
    #data loc_8c034dee
PTR_ce31c4c:
    #data loc_8c051648
PTR_ce31c50:
    #data loc_8c050084
PTR_ce31c54:
    #data loc_8c04ff88
PTR_ce31c58:
    #data loc_8c04fea8
PTR_ce31c5c:
    #data loc_8c050048

;=============================================

LAB_ce31c60:
    mov.w @(DAT_ce31d5e,pc),r0
    mov.w @(DAT_ce31d60,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bf LAB_ce31c8a
    bra LAB_ce31c74
    nop

LAB_ce31c70:
    bsr FUN_ce31c90
    mov r14,r4

LAB_ce31c74:
    mov.l @(PTR_ce31d68,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce31c8a
    lds.l @r15+,PR
    mov.l @(PTR_ce31d6c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c8a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31c90:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31d70,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31caa
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31d74,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31caa:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce31cb2:
    mov.w @(DAT_ce31d62,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31cce
    cmp/eq 0x00,r0
    bt LAB_ce31ce2
    cmp/eq 0x01,r0
    bt LAB_ce31ce2
    bra LAB_ce31ce2
    nop

LAB_ce31cce:
    mov.w @(DAT_ce31d5e,pc),r0
    mov.w @(DAT_ce31d60,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31ce2
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31e12
    mov.l @r15+,r14

LAB_ce31ce2:
    mov.l @(PTR_ce31d70,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31cf8
    lds.l @r15+,PR
    mov.l @(PTR_ce31d74,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31cf8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31cfe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31d70,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d14
    mov.l @(PTR_ce31d78,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31d14:
    mov.w @(DAT_ce31d64,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce31d46
    mov.w @(DAT_ce31d64,pc),r0
    mov 0x00,r4
    mov 0x17,r3
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31d7c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31d46:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d4c:
    mov r4,r3
    mov.l @(PTR_ce31d80,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d5e:
    #data 0x01fa
DAT_ce31d60:
    #data 0x1000
DAT_ce31d62:
    #data 0x01e8
DAT_ce31d64:
    #data 0x0141
    #align4

PTR_ce31d68:
    #data loc_8c052ce2
PTR_ce31d6c:
    #data loc_8c052dac
PTR_ce31d70:
    #data loc_8c034dee
PTR_ce31d74:
    #data loc_8c05176e
PTR_ce31d78:
    #data loc_8c051648
PTR_ce31d7c:
    #data loc_8c2896b0
PTR_ce31d80:
    #data PTR_ce35728

;=============================================

LAB_ce31d84:
    mov.b @(0x7,r4),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce31e76,pc),r0
    mov.b r3,@(r0,r4)
    add 0xD9,r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce31d9e
    mova @(DAT_ce31e80,pc),r0
    bra LAB_ce31da2
    fmov.s @r0,fr3

LAB_ce31d9e:
    mova @(DAT_ce31e84,pc),r0
    fmov.s @r0,fr3

LAB_ce31da2:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31e88,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31e8c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    rts
    fmov fr3,@(r0,r4)

LAB_ce31dbe:
    mov.w @(DAT_ce31e78,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31df6
    mov.l @(PTR_ce31e90,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31e76,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31e78,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce31df6:
    mov.l @(PTR_ce31e94,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e0c
    lds.l @r15+,PR
    mov.l @(PTR_ce31e98,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e0c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e12:
    mov r4,r3
    mov.l @(PTR_ce31e9c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31e24:
    mov.w @(DAT_ce31e7a,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31e94,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31e7c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31e56
    fldi0 fr4
    mov 0x5C,r0
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

LAB_ce31e56:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31ea0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e76:
    #data 0x01f9
DAT_ce31e78:
    #data 0x041c
DAT_ce31e7a:
    #data 0x01fc
DAT_ce31e7c:
    #data 0x0141
    #align4

DAT_ce31e80:
    #data 0x40892492
DAT_ce31e84:
    #data 0xc0892492
DAT_ce31e88:
    #data 0x41092492
DAT_ce31e8c:
    #data 0xbf892492
PTR_ce31e90:
    #data loc_8c0511b4
PTR_ce31e94:
    #data loc_8c034dee
PTR_ce31e98:
    #data loc_8c051648
PTR_ce31e9c:
    #data PTR_ce35730
DAT_ce31ea0:
    #data 0xbf4db6db

;=============================================

LAB_ce31ea4:
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
    mov.w @(DAT_ce31ff6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31f32
    fldi0 fr4
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce32000,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ff8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f0a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31f0a:
    mov 0x68,r0
    mov r14,r4
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32004,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x01,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32008,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x14,r6
    fmov fr3,@(r0,r14)
    mov r6,r5
    mov.w @(DAT_ce31ffa,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce3200c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f32:
    mov.w @(DAT_ce31ffc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31f74
    mov 0x03,r0
    mov.b r0,@(0x7,r14)
    mov 0x00,r3
    mov.w @(DAT_ce31ffe,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31ffc,pc),r0
    mov.l @(PTR_ce32010,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3200c,pc),r2
    mov r14,r4
    mov 0x15,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31f74:
    lds.l @r15+,PR
    mov.l @(PTR_ce32014,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f7e:
    mov.w @(DAT_ce31ffc,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31fca
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31ffe,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31ffc,pc),r0
    mov.l @(PTR_ce32010,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3200c,pc),r2
    mov r14,r4
    mov 0x15,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31fca:
    lds.l @r15+,PR
    mov.l @(PTR_ce32014,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31fd4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32014,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31fee
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32018,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31fee:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ff6:
    #data 0x019e
DAT_ce31ff8:
    #data 0x01d2
DAT_ce31ffa:
    #data 0x01d3
DAT_ce31ffc:
    #data 0x041c
DAT_ce31ffe:
    #data 0x01f9
    #align4

DAT_ce32000:
    #data 0x40855555
DAT_ce32004:
    #data 0x41700000
DAT_ce32008:
    #data 0xbf892492
PTR_ce3200c:
    #data loc_8c034e8c
PTR_ce32010:
    #data loc_8c0511b4
PTR_ce32014:
    #data loc_8c034dee
PTR_ce32018:
    #data loc_8c051648

;=============================================

LAB_ce3201c:
    mov r4,r3
    mov.l @(PTR_ce3215c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3202e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32160,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32044
    mov.l @(PTR_ce32164,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32044:
    mov.w @(DAT_ce3214a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bf LAB_ce32070
    mov.w @(DAT_ce3214a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32070
    mov.w @(DAT_ce3214c,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce3214e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce32070
    mov.b @(0x7,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32150,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32070:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32076:
    mova @(DAT_ce32168,pc),r0
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @r0,fr4
    mov.w @(DAT_ce32152,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf/s LAB_ce32098
    mov 0x00,r13
    mov.w @(DAT_ce32152,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fmul fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce32098:
    mov.w @(DAT_ce32152,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce320ac
    mov.w @(DAT_ce32152,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fmul fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce320ac:
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf/s LAB_ce320ce
    mov 0x02,r4
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce320ce:
    mov.w @(DAT_ce32150,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce3212a
    mov.w @(DAT_ce32154,pc),r0
    mov.w @(DAT_ce32156,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce3212a
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce3216c,pc),r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32150,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32158,pc),r0
    mov 0x16,r3
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32170,pc),r3
    mov 0x04,r6
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32174,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3212a:
    mov.l @(PTR_ce32160,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32142
    lds.l @r15+,PR
    mov.l @(PTR_ce32164,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32142:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3214a:
    #data 0x019e
DAT_ce3214c:
    #data 0x01b0
DAT_ce3214e:
    #data 0x0411
DAT_ce32150:
    #data 0x01f5
DAT_ce32152:
    #data 0x0141
DAT_ce32154:
    #data 0x0348
DAT_ce32156:
    #data 0x0100
DAT_ce32158:
    #data 0x01a1
    #align4

PTR_ce3215c:
    #data PTR_ce35740
PTR_ce32160:
    #data loc_8c034dee
PTR_ce32164:
    #data loc_8c051648
DAT_ce32168:
    #data 0x40800000
PTR_ce3216c:
    #data loc_8c05218a
PTR_ce32170:
    #data loc_8c2896b0
PTR_ce32174:
    #data loc_8c034e8c

;=============================================

LAB_ce32178:
    mov.w @(DAT_ce32282,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf/s LAB_ce32198
    fldi0 fr4
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce32198:
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf LAB_ce321b6
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce321b6:
    mov.w @(DAT_ce32282,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce321f0
    mov.w @(DAT_ce32282,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32284,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce321d2
    mova @(DAT_ce32288,pc),r0
    bra LAB_ce321d6
    fmov.s @r0,fr3

LAB_ce321d2:
    mova @(DAT_ce3228c,pc),r0
    fmov.s @r0,fr3

LAB_ce321d6:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32284,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce321e8
    mova @(DAT_ce32290,pc),r0
    bra LAB_ce321ec
    fmov.s @r0,fr3

LAB_ce321e8:
    mova @(DAT_ce32294,pc),r0
    fmov.s @r0,fr3

LAB_ce321ec:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce321f0:
    mov.l @(PTR_ce32298,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32206
    lds.l @r15+,PR
    mov.l @(PTR_ce3229c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32206:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3220c:
    mov.w @(DAT_ce32282,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32254
    mov.w @(DAT_ce32284,pc),r0
    mov 0x34,r2
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3223a
    add r14,r2
    mov.w @(DAT_ce32282,pc),r3
    mov.l @(DAT_ce322a0,pc),r1
    add r14,r3
    mov.b @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    lds r1,FPUL
    fsts FPUL,fr2
    bra LAB_ce3224e
    fmul fr2,fr3

LAB_ce3223a:
    mov.w @(DAT_ce32282,pc),r3
    mov.l @(DAT_ce322a0,pc),r1
    add r14,r3
    mov.b @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    lds r1,FPUL
    fsts FPUL,fr2
    fmul fr2,fr3
    fneg fr3

LAB_ce3224e:
    fmov.s @r2,fr2
    fadd fr3,fr2
    fmov.s fr2,@r2

LAB_ce32254:
    mov.l @(PTR_ce32298,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3226a
    lds.l @r15+,PR
    mov.l @(PTR_ce3229c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3226a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32270:
    mov r4,r3
    mov.l @(PTR_ce322a4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32282:
    #data 0x0141
DAT_ce32284:
    #data 0x01d2
    #align4

DAT_ce32288:
    #data 0x417d5555
DAT_ce3228c:
    #data 0xc17d5555
DAT_ce32290:
    #data 0xbf200000
DAT_ce32294:
    #data 0x3f200000
PTR_ce32298:
    #data loc_8c034dee
PTR_ce3229c:
    #data loc_8c051648
DAT_ce322a0:
    #data 0x3fd55555
PTR_ce322a4:
    #data PTR_ce3574c

;=============================================

LAB_ce322a8:
    mov.w @(DAT_ce32354,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce322c8
    mov.b @(0x7,r14),r0
    mov 0x00,r7
    mov.l @(PTR_ce32360,pc),r3
    mov 0x03,r5
    add 0x01,r0
    mov r7,r6
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce322c8:
    mov.l @(PTR_ce32364,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce322de
    lds.l @r15+,PR
    mov.l @(PTR_ce32368,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce322de:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce322e4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32364,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce322fe
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32368,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce322fe:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32306:
    mov.w @(DAT_ce32356,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l @(PTR_ce3236c,pc),r1
    sts.l PR,@-r15
    mov.l @(r0,r14),r13
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    mov.w @(DAT_ce32358,pc),r0
    mov.b @(r0,r13),r0
    extu.b r0,r0
    cmp/eq 0x0A,r0
    bf LAB_ce32338
    mov.w @(DAT_ce3235a,pc),r0
    mov.l @(r0,r13),r2
    cmp/eq r14,r2
    bf LAB_ce32338
    mov.w @(DAT_ce3235c,pc),r0
    mov 0x00,r1
    mov.b r1,@(r0,r13)

LAB_ce32338:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32340:
    mov.b @(0x7,r4),r0
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce3235e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32374
    mova @(DAT_ce32370,pc),r0
    bra LAB_ce32378
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32354:
    #data 0x019e
DAT_ce32356:
    #data 0x020c
DAT_ce32358:
    #data 0x0233
DAT_ce3235a:
    #data 0x01b4
DAT_ce3235c:
    #data 0x0236
DAT_ce3235e:
    #data 0x01d2
    #align4

PTR_ce32360:
    #data loc_8c07954e
PTR_ce32364:
    #data loc_8c034dee
PTR_ce32368:
    #data loc_8c051648
PTR_ce3236c:
    #data PTR_ce35754
DAT_ce32370:
    #data 0x40555555

;=============================================

LAB_ce32374:
    mova @(DAT_ce324c0,pc),r0
    fmov.s @r0,fr3

LAB_ce32378:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fldi0 fr3
    mov 0x02,r3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce324c4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce324c8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce324b8,pc),r0
    mov.b r3,@(r0,r4)

LAB_ce32398:
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
    mov.w @(DAT_ce324ba,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3240e
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce324b8,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce324ba,pc),r0
    mov.l @(PTR_ce324cc,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce3240e:
    lds.l @r15+,PR
    mov.l @(PTR_ce324d0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32418:
    mov.w @(DAT_ce324bc,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32438
    mov.b @(0x7,r14),r0
    mov 0x00,r7
    mov.l @(PTR_ce324d4,pc),r3
    mov 0x05,r5
    add 0x01,r0
    mov r7,r6
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce32438:
    mov.l @(PTR_ce324d0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3244e
    lds.l @r15+,PR
    mov.l @(PTR_ce324d8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3244e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32454:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce324d0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3246e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce324d8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3246e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32476:
    mov r4,r3
    mov.l @(PTR_ce324dc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32488:
    mov.b @(0x7,r4),r0
    mov 0x12,r6
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce324e8,pc),r3
    mov.b r0,@(0x7,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce324e0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce324e4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x14,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce324b8:
    #data 0x01f9
DAT_ce324ba:
    #data 0x041c
DAT_ce324bc:
    #data 0x019e
    #align4

DAT_ce324c0:
    #data 0xc0555555
DAT_ce324c4:
    #data 0x42092492
DAT_ce324c8:
    #data 0xbfcdb6db
PTR_ce324cc:
    #data loc_8c0511b4
PTR_ce324d0:
    #data loc_8c034dee
PTR_ce324d4:
    #data loc_8c07954e
PTR_ce324d8:
    #data loc_8c051648
PTR_ce324dc:
    #data PTR_ce35764
DAT_ce324e0:
    #data 0x41892492
DAT_ce324e4:
    #data 0xbf892492
PTR_ce324e8:
    #data loc_8c034e8c

;=============================================

LAB_ce324ec:
    mov.w @(DAT_ce32612,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    mov 0x01,r4
    cmp/gt r4,r3
    bf LAB_ce32536
    mov.w @(DAT_ce32614,pc),r0
    mov 0x34,r2
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3251c
    add r14,r2
    mov.w @(DAT_ce32612,pc),r3
    mov.l @(DAT_ce3261c,pc),r1
    add r14,r3
    mov.b @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    lds r1,FPUL
    fsts FPUL,fr2
    bra LAB_ce32530
    fmul fr2,fr3

LAB_ce3251c:
    mov.w @(DAT_ce32612,pc),r3
    mov.l @(DAT_ce3261c,pc),r1
    add r14,r3
    mov.b @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    lds r1,FPUL
    fsts FPUL,fr2
    fmul fr2,fr3
    fneg fr3

LAB_ce32530:
    fmov.s @r2,fr2
    fadd fr3,fr2
    fmov.s fr2,@r2

LAB_ce32536:
    mov.w @(DAT_ce32612,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce3255a
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov r4,r0
    nop
    mov.l @(PTR_ce32620,pc),r3
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce3255a:
    lds.l @r15+,PR
    mov.l @(PTR_ce32624,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32564:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r0
    fldi0 fr3
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3257c
    mov.b @(0x7,r14),r0
    add 0x01,r0
    bra LAB_ce325c0
    mov.b r0,@(0x7,r14)

LAB_ce3257c:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3259c
    mov.l @(PTR_ce32628,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32628,pc),r3
    mov 0x02,r5
    jsr @r3
    mov r14,r4
    mov 0x06,r0
    mov.w r0,@(0x1c,r14)

LAB_ce3259c:
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
    mov.w @(DAT_ce32612,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce325ca

LAB_ce325c0:
    lds.l @r15+,PR
    mov.l @(PTR_ce32624,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce325ca:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce325d0:
    mov.w @(DAT_ce32616,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32630
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32618,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32616,pc),r0
    mov.l @(PTR_ce3262c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce32652
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32612:
    #data 0x0141
DAT_ce32614:
    #data 0x01d2
DAT_ce32616:
    #data 0x041c
DAT_ce32618:
    #data 0x01f9
    #align4

DAT_ce3261c:
    #data 0x3fd55555
PTR_ce32620:
    #data loc_8c053082
PTR_ce32624:
    #data loc_8c034dee
PTR_ce32628:
    #data loc_8c079520
PTR_ce3262c:
    #data loc_8c0511b4

;=============================================

LAB_ce32630:
    mov 0x60,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
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
    mov.w @(DAT_ce3275e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3265c

LAB_ce32652:
    lds.l @r15+,PR
    mov.l @(PTR_ce32768,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3265c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32662:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32768,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3267c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3276c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3267c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32684:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce326e2
    mov.l @(PTR_ce32770,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32760,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce326e2
    mov.l @(PTR_ce32774,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32762,pc),r0
    mov 0x12,r2
    mov 0x00,r4
    mov.l @(PTR_ce32778,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x14,r5
    mov.b @(0x2,r14),r0
    mov 0x13,r6
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x01,r2
    mov.w @(DAT_ce32764,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce3277c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce326e2:
    mov.w @(DAT_ce32766,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce326f2
    mov.l @(PTR_ce32780,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce326f2:
    mov 0x5C,r1
    mov.l @(PTR_ce32784,pc),r3
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
    mov.l @(PTR_ce32768,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32746
    lds.l @r15+,PR
    mov.l @(PTR_ce3276c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32746:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3274c:
    mov r4,r3
    mov.l @(PTR_ce32788,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3275e:
    #data 0x0141
DAT_ce32760:
    #data 0x01fe
DAT_ce32762:
    #data 0x01a1
DAT_ce32764:
    #data 0x01f9
DAT_ce32766:
    #data 0x01ff
    #align4

PTR_ce32768:
    #data loc_8c034dee
PTR_ce3276c:
    #data loc_8c051648
PTR_ce32770:
    #data loc_8c052b4c
PTR_ce32774:
    #data loc_8c056de4
PTR_ce32778:
    #data loc_8c2896b0
PTR_ce3277c:
    #data loc_8c034e8c
PTR_ce32780:
    #data loc_8c0511e2
PTR_ce32784:
    #data loc_8c052c84
PTR_ce32788:
    #data PTR_ce35778

;=============================================

LAB_ce3278c:
    mov.w @(DAT_ce328b2,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce327de
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce328b2,pc),r0
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce328b4,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce327c0
    mova @(DAT_ce328b8,pc),r0
    bra LAB_ce327c4
    fmov.s @r0,fr3

LAB_ce327c0:
    mova @(DAT_ce328bc,pc),r0
    fmov.s @r0,fr3

LAB_ce327c4:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce328b4,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce327d6
    mova @(DAT_ce328c0,pc),r0
    bra LAB_ce327da
    fmov.s @r0,fr3

LAB_ce327d6:
    mova @(DAT_ce328c4,pc),r0
    fmov.s @r0,fr3

LAB_ce327da:
    mov 0x68,r0
    fmov fr3,@(r0,r4)

LAB_ce327de:
    mov.l @(PTR_ce328c8,pc),r3
    jmp @r3
    nop

LAB_ce327e4:
    mov.w @(DAT_ce328b2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32804
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce328cc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce328b2,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)

LAB_ce32804:
    mov 0x5C,r1
    mov.l @(PTR_ce328c8,pc),r3
    add r14,r1
    mov r14,r4
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
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32846:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce328c8,pc),r3
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
    bt LAB_ce3289a
    lds.l @r15+,PR
    mov.l @(PTR_ce328d0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3289a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce328a0:
    mov r4,r3
    mov.l @(PTR_ce328d4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328b2:
    #data 0x0141
DAT_ce328b4:
    #data 0x01d2
    #align4

DAT_ce328b8:
    #data 0x417d5555
DAT_ce328bc:
    #data 0xc17d5555
DAT_ce328c0:
    #data 0xbed55555
DAT_ce328c4:
    #data 0x3ed55555
PTR_ce328c8:
    #data loc_8c034dee
PTR_ce328cc:
    #data loc_8c0511b4
PTR_ce328d0:
    #data loc_8c051648
PTR_ce328d4:
    #data PTR_ce35784

;=============================================

LAB_ce328d8:
    mov.w @(DAT_ce32a28,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32914
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32a28,pc),r0
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce32a2a,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3290c
    mova @(DAT_ce32a2c,pc),r0
    bra LAB_ce32910
    fmov.s @r0,fr3

LAB_ce3290c:
    mova @(DAT_ce32a30,pc),r0
    fmov.s @r0,fr3

LAB_ce32910:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)

LAB_ce32914:
    mov.l @(PTR_ce32a34,pc),r3
    jmp @r3
    nop

LAB_ce3291a:
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
    mov.w @(DAT_ce32a28,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3297c
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32a28,pc),r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce32a2a,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce32974
    mova @(DAT_ce32a38,pc),r0
    bra LAB_ce32978
    fmov.s @r0,fr3

LAB_ce32974:
    mova @(DAT_ce32a3c,pc),r0
    fmov.s @r0,fr3

LAB_ce32978:
    mov 0x68,r0
    fmov fr3,@(r0,r4)

LAB_ce3297c:
    mov.l @(PTR_ce32a34,pc),r3
    jmp @r3
    nop

LAB_ce32982:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32a34,pc),r3
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
    bt LAB_ce329d6
    lds.l @r15+,PR
    mov.l @(PTR_ce32a40,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce329d6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce329dc:
    mov r4,r3
    mov.l @(PTR_ce32a44,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce329ee:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32a48,pc),r3
    add 0x01,r0
    jsr @r3
    mov.b r0,@(0x6,r14)
    mov 0x21,r1
    mov r14,r4
    add r14,r1
    mov.b r0,@r1
    mov 0x21,r0
    mov.b @(r0,r14),r2
    mov 0x01,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce32a14:
    mov 0x21,r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce32a4c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a28:
    #data 0x0141
DAT_ce32a2a:
    #data 0x01d2
    #align4

DAT_ce32a2c:
    #data 0xc17d5555
DAT_ce32a30:
    #data 0x417d5555
PTR_ce32a34:
    #data loc_8c034dee
DAT_ce32a38:
    #data 0x3ed55555
DAT_ce32a3c:
    #data 0xbed55555
PTR_ce32a40:
    #data loc_8c051648
PTR_ce32a44:
    #data PTR_ce35790
PTR_ce32a48:
    #data loc_8c03319e
PTR_ce32a4c:
    #data PTR_ce35798

;=============================================

LAB_ce32a50:
    mov r4,r3
    mov.l @(PTR_ce32b74,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32a62:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x34,r1
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32b6c,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32a8a
    add r14,r1
    mov.w @(DAT_ce32b6e,pc),r3
    bra LAB_ce32a8c
    nop

LAB_ce32a8a:
    mov.w @(DAT_ce32b70,pc),r3

LAB_ce32a8c:
    lds r3,FPUL
    mov 0x12,r0
    fmov.s @r1,fr2
    mov 0x02,r5
    mov.l @(PTR_ce32b7c,pc),r13
    float FPUL,fr3
    fadd fr3,fr2
    fmov.s fr2,@r1
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce32b78,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r13
    mov r14,r4
    mov 0x03,r5
    jsr @r13
    mov r14,r4
    mov 0x04,r5
    jsr @r13
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32b80,pc),r3
    mov 0x00,r6
    mov 0x12,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ac6:
    mov.w @(DAT_ce32b6c,pc),r0
    mov 0x34,r1
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32adc
    add r14,r1
    bra LAB_ce32ade
    mov 0x12,r3

LAB_ce32adc:
    mov 0xEE,r3

LAB_ce32ade:
    lds r3,FPUL
    fmov.s @r1,fr2
    mov.l @(PTR_ce32b84,pc),r3
    float FPUL,fr3
    fadd fr3,fr2
    fmov.s fr2,@r1
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32b24
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32b80,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce32b88,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x12,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32b8c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32b24:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b2a:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r1
    mov.l @(PTR_ce32b84,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32b66
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce32b66:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b6c:
    #data 0x0130
DAT_ce32b6e:
    #data 0xfebc
DAT_ce32b70:
    #data 0x0144
    #align4

PTR_ce32b74:
    #data PTR_ce357a0
DAT_ce32b78:
    #data 0x42900000
PTR_ce32b7c:
    #data loc_8c0cd9ec
PTR_ce32b80:
    #data loc_8c034e8c
PTR_ce32b84:
    #data loc_8c034dee
DAT_ce32b88:
    #data 0x414db6db
DAT_ce32b8c:
    #data 0xbf4db6db

;=============================================

LAB_ce32b90:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r1
    mov.l @(PTR_ce32cd0,pc),r3
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
    mov.w @(DAT_ce32cca,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32bf4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32cd4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32ccc,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce32cd8,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x34,r0
    mov 0x02,r6
    fmov fr3,@(r0,r14)
    mov 0x12,r5
    mov.w @(DAT_ce32cca,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32bf4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32bfa:
    mov.w @(DAT_ce32cce,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce32c16
    mov.w @(DAT_ce32cce,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce32cdc,pc),r3
    mov 0x05,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce32c16:
    mov.l @(PTR_ce32cd0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32c28
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)

LAB_ce32c28:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c2e:
    mov r4,r3
    mov.l @(PTR_ce32ce0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32c40:
    mov.b @(0x7,r4),r0
    mov 0x03,r6
    mov.l @(PTR_ce32cd8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    jmp @r3
    mov 0x12,r5

LAB_ce32c4e:
    mov.w @(DAT_ce32cce,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce32c6a
    mov.w @(DAT_ce32cce,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce32cdc,pc),r3
    mov 0x05,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce32c6a:
    mov.l @(PTR_ce32cd0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32c7c
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)

LAB_ce32c7c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c82:
    mov r4,r3
    mov.l @(PTR_ce32ce4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32c94:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32cac
    bsr FUN_ce33176
    mov r14,r4

LAB_ce32cac:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce32cb2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32ce8,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce32cf0
    lds.l @r15+,PR
    mov.l @(PTR_ce32cec,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32cca:
    #data 0x041c
DAT_ce32ccc:
    #data 0x01f9
DAT_ce32cce:
    #data 0x0141
    #align4

PTR_ce32cd0:
    #data loc_8c034dee
PTR_ce32cd4:
    #data loc_8c0511b4
PTR_ce32cd8:
    #data loc_8c034e8c
PTR_ce32cdc:
    #data loc_8c0cd9ec
PTR_ce32ce0:
    #data PTR_ce357b4
PTR_ce32ce4:
    #data PTR_ce357bc
PTR_ce32ce8:
    #data loc_8c046c8a
PTR_ce32cec:
    #data loc_8c051648

;=============================================

LAB_ce32cf0:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32e5c,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce32d04:
    mov r4,r3
    mov.l @(PTR_ce32e60,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32d16:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce32e64,pc),r3
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
    fmov fr4,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce32e56,pc),r0
    mov 0x06,r6
    mov.l @(PTR_ce32e68,pc),r3
    mov 0x13,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32e58,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32d5c:
    mov.l @(PTR_ce32e6c,pc),r3
    jmp @r3
    nop

LAB_ce32d62:
    mov r4,r3
    mov.l @(PTR_ce32e70,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32d74:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce32e64,pc),r3
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
    fmov fr4,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce32e56,pc),r0
    mov 0x04,r6
    mov.l @(PTR_ce32e68,pc),r3
    mov 0x13,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32e58,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32dba:
    mov.l @(PTR_ce32e6c,pc),r3
    jmp @r3
    nop

LAB_ce32dc0:
    mov r4,r3
    mov.l @(PTR_ce32e74,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32dd2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce32e64,pc),r3
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
    fmov fr4,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce32e56,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce32e78,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32e58,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32e78,pc),r2
    mov 0x06,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32e68,pc),r3
    mov r14,r4
    mov 0x04,r6
    mov 0x13,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e28:
    mov.w @(DAT_ce32e5a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce32e46
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce32e68,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce32e46:
    lds.l @r15+,PR
    mov.l @(PTR_ce32e6c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32e50:
    mov.l @(PTR_ce32e6c,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e56:
    #data 0x041c
DAT_ce32e58:
    #data 0x01fc
DAT_ce32e5a:
    #data 0x0143
    #align4

PTR_ce32e5c:
    #data PTR_ce357c4
PTR_ce32e60:
    #data PTR_ce357f0
PTR_ce32e64:
    #data loc_8c035162
PTR_ce32e68:
    #data loc_8c034e8c
PTR_ce32e6c:
    #data loc_8c034dee
PTR_ce32e70:
    #data PTR_ce357f8
PTR_ce32e74:
    #data PTR_ce35800
PTR_ce32e78:
    #data loc_8c0cd9ec

;=============================================

LAB_ce32e7c:
    mov r4,r3
    mov.l @(PTR_ce32fb0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32e8e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce32fb4,pc),r3
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
    fmov fr4,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce32fa8,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce32fb8,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32faa,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32fb8,pc),r2
    mov 0x07,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32fbc,pc),r3
    mov r14,r4
    mov 0x04,r6
    mov 0x13,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ee4:
    mov.w @(DAT_ce32fac,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce32f02
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce32fbc,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce32f02:
    lds.l @r15+,PR
    mov.l @(PTR_ce32fc0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32f0c:
    mov.l @(PTR_ce32fc0,pc),r3
    jmp @r3
    nop

LAB_ce32f12:
    mov r4,r3
    mov.l @(PTR_ce32fc4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32f24:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce32fb4,pc),r3
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
    fmov fr4,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce32fa8,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce32fb8,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32faa,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32fb8,pc),r2
    mov 0x08,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32fbc,pc),r3
    mov r14,r4
    mov 0x04,r6
    mov 0x13,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f7a:
    mov.w @(DAT_ce32fac,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce32f98
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce32fbc,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce32f98:
    lds.l @r15+,PR
    mov.l @(PTR_ce32fc0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32fa2:
    mov.l @(PTR_ce32fc0,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32fa8:
    #data 0x041c
DAT_ce32faa:
    #data 0x01fc
DAT_ce32fac:
    #data 0x0143
    #align4

PTR_ce32fb0:
    #data PTR_ce3580c
PTR_ce32fb4:
    #data loc_8c035162
PTR_ce32fb8:
    #data loc_8c0cd9ec
PTR_ce32fbc:
    #data loc_8c034e8c
PTR_ce32fc0:
    #data loc_8c034dee
PTR_ce32fc4:
    #data PTR_ce35818

;=============================================

LAB_ce32fc8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce3311c,pc),r3
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
    fmov fr4,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce33116,pc),r0
    mov r3,r2
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33118,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFD,r0
    mov.b r2,@(r0,r14)
    add 0xD9,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33010
    mova @(DAT_ce33120,pc),r0
    bra LAB_ce33014
    fmov.s @r0,fr3

LAB_ce33010:
    mova @(DAT_ce33124,pc),r0
    fmov.s @r0,fr3

LAB_ce33014:
    mov 0x5C,r0
    mov.l @(PTR_ce33130,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33128,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov r14,r4
    mov 0x00,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3312c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x13,r5
    fmov fr3,@(r0,r14)
    mov 0x5A,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3303a:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce330c2
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3311a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33068
    mov.l @(PTR_ce33138,pc),r3
    mova @(DAT_ce33134,pc),r0
    fmov.s @r3,fr3
    bra LAB_ce33070
    fmov.s @r0,fr2

LAB_ce33068:
    mov.l @(PTR_ce33140,pc),r2
    mova @(DAT_ce3313c,pc),r0
    fmov.s @r0,fr2
    fmov.s @r2,fr3

LAB_ce33070:
    fadd fr2,fr3
    mov.l @(PTR_ce33144,pc),r13
    mov 0x34,r0
    mov 0x02,r5
    fmov fr3,@(r0,r14)
    jsr @r13
    mov r14,r4
    mov 0x03,r5
    jsr @r13
    mov r14,r4
    mov 0x04,r5
    jsr @r13
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
    mov 0x00,r4
    mov.w @(DAT_ce33116,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce33130,pc),r3
    mov 0x13,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33118,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    mov 0x78,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce330c2:
    mov 0x5C,r1
    mov.l @(PTR_ce33148,pc),r3
    add r14,r1
    mov r14,r4
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
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33106:
    mov.w @(DAT_ce3311a,pc),r0
    mov 0x34,r1
    mov.w @(r0,r4),r2
    tst r2,r2
    bt/s LAB_ce3314c
    add r4,r1
    bra LAB_ce3314e
    mov 0x12,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33116:
    #data 0x041c
DAT_ce33118:
    #data 0x01fc
DAT_ce3311a:
    #data 0x0130
    #align4

PTR_ce3311c:
    #data loc_8c035162
DAT_ce33120:
    #data 0xc1d55555
DAT_ce33124:
    #data 0x41d55555
DAT_ce33128:
    #data 0x41092492
DAT_ce3312c:
    #data 0x3c892492
PTR_ce33130:
    #data loc_8c034e8c
DAT_ce33134:
    #data 0xc2c00000
PTR_ce33138:
    #data loc_8c26a5a0
DAT_ce3313c:
    #data 0x42c00000
PTR_ce33140:
    #data loc_8c26a5a4
PTR_ce33144:
    #data loc_8c0cd9ec
PTR_ce33148:
    #data loc_8c034dee

;=============================================

LAB_ce3314c:
    mov 0xEE,r3

LAB_ce3314e:
    lds r3,FPUL
    fmov.s @r1,fr2
    float FPUL,fr3
    fadd fr3,fr2
    fmov.s fr2,@r1
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3316c
    mov.b @(0x7,r4),r0
    add 0x01,r0
    mov.b r0,@(0x7,r4)

LAB_ce3316c:
    rts
    nop

LAB_ce33170:
    mov.l @(PTR_ce33254,pc),r3
    jmp @r3
    nop

;=============================================

FUN_ce33176:
    mov.w @(DAT_ce33246,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33248,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce331d4
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce3324a,pc),r1
    extu.w r3,r3
    tst r1,r3
    bt LAB_ce33196
    bra LAB_ce331e2
    mov 0x05,r3

LAB_ce33196:
    mov.w @(DAT_ce3324c,pc),r2
    tst r2,r3
    bt LAB_ce331a0
    bra LAB_ce331e2
    mov 0x06,r3

LAB_ce331a0:
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x80,r0
    bt LAB_ce331ac
    bra LAB_ce331c6
    mov 0x07,r1

LAB_ce331ac:
    mov.w @(DAT_ce33246,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x40,r0
    bt LAB_ce331ba
    bra LAB_ce331c6
    mov 0x08,r1

LAB_ce331ba:
    mov.w @(DAT_ce33246,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x20,r0
    bt LAB_ce331cc
    mov 0x09,r1

LAB_ce331c6:
    mov 0x20,r0
    bra LAB_ce331e6
    mov.b r1,@(r0,r14)

LAB_ce331cc:
    mov 0x20,r0
    mov 0x0A,r3
    bra LAB_ce331e6
    mov.b r3,@(r0,r14)

LAB_ce331d4:
    mov.l @(PTR_ce33258,pc),r1
    jsr @r1
    nop
    mov.l @(PTR_ce3325c,pc),r1
    and 0x0F,r0
    shll r0
    mov.b @(r0,r1),r3

LAB_ce331e2:
    mov 0x20,r0
    mov.b r3,@(r0,r14)

LAB_ce331e6:
    mov.l @(PTR_ce33260,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r2
    cmp/gt r2,r0
    bf LAB_ce331f8
    mov 0x20,r0
    mov 0x05,r1
    mov.b r1,@(r0,r14)

LAB_ce331f8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce331fe:
    mov.w @(DAT_ce3324e,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce33264,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce33212:
    mov r4,r3
    mov.l @(PTR_ce33268,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33224:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33250,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce3326c
    mov 0x00,r13
    mov.w @(DAT_ce33252,pc),r0
    mov 0x54,r2
    bra LAB_ce33276
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33246:
    #data 0x0340
DAT_ce33248:
    #data 0x03f0
DAT_ce3324a:
    #data 0x0200
DAT_ce3324c:
    #data 0x0100
DAT_ce3324e:
    #data 0x01e9
DAT_ce33250:
    #data 0x0255
DAT_ce33252:
    #data 0x01a1
    #align4

PTR_ce33254:
    #data loc_8c034dee
PTR_ce33258:
    #data loc_8c03319e
PTR_ce3325c:
    #data DAT_ce35834
PTR_ce33260:
    #data loc_8c0514b8
PTR_ce33264:
    #data PTR_ce35854
PTR_ce33268:
    #data PTR_ce3587c

;=============================================

LAB_ce3326c:
    mov.w @(DAT_ce333a2,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x30,r3
    mov.b r3,@(r0,r14)

LAB_ce33276:
    mov.w @(DAT_ce333a4,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce333b0,pc),r3
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce333b4,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce333b8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce333a6,pc),r0
    mov.l @(PTR_ce333bc,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.w @(DAT_ce333a2,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce333c0,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce332be:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce333c4,pc),r5
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce333a2,pc),r0
    mov.b @(r0,r4),r3
    add 0x2F,r0
    extu.b r3,r3
    shll r3
    shll2 r3
    add r3,r5
    mov.b @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce332f4
    mov 0x5C,r0
    fmov.s @r5,fr3
    bra LAB_ce332f6
    fneg fr3

LAB_ce332f4:
    fmov.s @r5,fr3

LAB_ce332f6:
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce333a8,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce33308
    mov 0x04,r0
    fmov.s @(r0,r5),fr3
    bra LAB_ce3330c
    fneg fr3

LAB_ce33308:
    mov 0x04,r0
    fmov.s @(r0,r5),fr3

LAB_ce3330c:
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mov 0x00,r0
    mov.w r0,@(0x1c,r4)

LAB_ce33314:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15

LAB_ce3331a:
    mov.l @(PTR_ce333c8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce333aa,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce33330
    mov.b @(0x6,r14),r0
    add 0x01,r0
    bra LAB_ce3331a
    mov.b r0,@(0x6,r14)

LAB_ce33330:
    mov.w @(DAT_ce333ac,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce33354
    mov.w @(DAT_ce333aa,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce33354
    mov.l @(PTR_ce333cc,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce333aa,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce33354:
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf LAB_ce3339c
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

LAB_ce3339c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce333a2:
    #data 0x01a3
DAT_ce333a4:
    #data 0x01ac
DAT_ce333a6:
    #data 0x01f9
DAT_ce333a8:
    #data 0x01d2
DAT_ce333aa:
    #data 0x0141
DAT_ce333ac:
    #data 0x0411
    #align4

PTR_ce333b0:
    #data loc_8c2896b0
PTR_ce333b4:
    #data loc_8c056de4
PTR_ce333b8:
    #data loc_8c05218a
PTR_ce333bc:
    #data loc_8c05115a
PTR_ce333c0:
    #data loc_8c034e8c
PTR_ce333c4:
    #data DAT_ce35620
PTR_ce333c8:
    #data loc_8c034dee
PTR_ce333cc:
    #data loc_8c0cd9ec

;=============================================

LAB_ce333d0:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33502,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce333ea
    mov 0x00,r5
    mov.w @(DAT_ce33504,pc),r0
    mov 0x55,r2
    bra LAB_ce333f4
    mov.b r2,@(r0,r4)

LAB_ce333ea:
    mov.w @(DAT_ce33506,pc),r0
    mov.b @(r0,r4),r3
    add 0xFE,r0
    add 0x32,r3
    mov.b r3,@(r0,r4)

LAB_ce333f4:
    mov.w @(DAT_ce33508,pc),r0
    mov.l @(PTR_ce33510,pc),r3
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce33514,pc),r5
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce33506,pc),r0
    mov.b @(r0,r4),r3
    add 0x2F,r0
    extu.b r3,r3
    shll r3
    shll2 r3
    add r3,r5
    mov.b @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce33430
    mov 0x5C,r0
    fmov.s @r5,fr3
    bra LAB_ce33432
    fneg fr3

LAB_ce33430:
    fmov.s @r5,fr3

LAB_ce33432:
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce3350a,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce33444
    mov 0x04,r0
    fmov.s @(r0,r5),fr3
    bra LAB_ce33448
    fneg fr3

LAB_ce33444:
    mov 0x04,r0
    fmov.s @(r0,r5),fr3

LAB_ce33448:
    mov.l @(PTR_ce33518,pc),r3
    mov 0x68,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce33450:
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
    mov.w @(DAT_ce3350c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce334b2
    mov.w @(DAT_ce3350e,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce334b2
    mov.l @(PTR_ce3351c,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3350e,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce334b2:
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf/s LAB_ce334d4
    mov r14,r4
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce334d4:
    mov.l @(PTR_ce33520,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce334ea
    lds.l @r15+,PR
    mov.l @(PTR_ce33524,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce334ea:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce334f0:
    mov r4,r3
    mov.l @(PTR_ce33528,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33502:
    #data 0x0255
DAT_ce33504:
    #data 0x01a1
DAT_ce33506:
    #data 0x01a3
DAT_ce33508:
    #data 0x01ac
DAT_ce3350a:
    #data 0x01d2
DAT_ce3350c:
    #data 0x0411
DAT_ce3350e:
    #data 0x0141
    #align4

PTR_ce33510:
    #data loc_8c2896b0
PTR_ce33514:
    #data DAT_ce35630
PTR_ce33518:
    #data loc_8c05115a
PTR_ce3351c:
    #data loc_8c0cd9ec
PTR_ce33520:
    #data loc_8c034dee
PTR_ce33524:
    #data loc_8c051648
PTR_ce33528:
    #data PTR_ce35890

;=============================================

LAB_ce3352c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33650,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x34,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33658,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3365c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33660,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33650,pc),r0
    mov.l @(PTR_ce33664,pc),r4
    mov.b @(r0,r14),r2
    add 0x2F,r0
    mov.b @(r0,r14),r3
    extu.b r2,r2
    shll2 r2
    tst r3,r3
    shll2 r2
    bt/s LAB_ce3358e
    add r2,r4
    fmov.s @r4,fr3
    bra LAB_ce33590
    fneg fr3

LAB_ce3358e:
    fmov.s @r4,fr3

LAB_ce33590:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33652,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce335a4
    mov 0x04,r0
    fmov.s @(r0,r4),fr3
    bra LAB_ce335a8
    fneg fr3

LAB_ce335a4:
    mov 0x04,r0
    fmov.s @(r0,r4),fr3

LAB_ce335a8:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    fmov.s @(r0,r4),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x0C,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33654,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce335d0
    mov.w @(DAT_ce33654,pc),r0
    mov.l @(PTR_ce33668,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce335d0:
    mov 0x23,r0
    mov.l @(PTR_ce3366c,pc),r3
    mov.b r13,@(r0,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    mov.w @(DAT_ce33650,pc),r0
    mov r14,r4
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    add 0x02,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce335e8:
    mov.w @(DAT_ce33656,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33612
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33670,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    bra LAB_ce3362e
    fmov fr4,@(r0,r14)

LAB_ce33612:
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

LAB_ce3362e:
    lds.l @r15+,PR
    mov.l @(PTR_ce33674,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33638:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r0
    fldi0 fr3
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33678
    mov.b @(0x6,r14),r0
    add 0x01,r0
    bra LAB_ce33716
    mov.b r0,@(0x6,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33650:
    #data 0x01a3
DAT_ce33652:
    #data 0x01d2
DAT_ce33654:
    #data 0x01f9
DAT_ce33656:
    #data 0x0141
    #align4

PTR_ce33658:
    #data loc_8c2896b0
PTR_ce3365c:
    #data loc_8c056de4
PTR_ce33660:
    #data loc_8c05218a
PTR_ce33664:
    #data DAT_ce35640
PTR_ce33668:
    #data loc_8c05115a
PTR_ce3366c:
    #data loc_8c034e8c
PTR_ce33670:
    #data loc_8c053082
PTR_ce33674:
    #data loc_8c034dee

;=============================================

LAB_ce33678:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce336f2
    mov.w @(DAT_ce3379a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33694
    mov 0x23,r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce33694:
    mov 0x23,r0
    mov.b @(r0,r14),r2
    mov 0x03,r3
    extu.b r2,r2
    cmp/ge r3,r2
    bt LAB_ce336de
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce336b6
    mov 0x00,r4
    mov.w @(DAT_ce3379c,pc),r0
    mov.b @(r0,r14),r1
    add 0xFE,r0
    add 0x52,r1
    bra LAB_ce336c0
    mov.b r1,@(r0,r14)

LAB_ce336b6:
    mov.w @(DAT_ce3379c,pc),r0
    mov.b @(r0,r14),r2
    add 0xFE,r0
    add 0x34,r2
    mov.b r2,@(r0,r14)

LAB_ce336c0:
    mov.w @(DAT_ce3379e,pc),r0
    mov.l @(PTR_ce337a8,pc),r3
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

LAB_ce336de:
    mov.l @(PTR_ce337ac,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce337ac,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov 0x06,r0
    mov.w r0,@(0x1c,r14)

LAB_ce336f2:
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
    mov.w @(DAT_ce337a0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33720

LAB_ce33716:
    lds.l @r15+,PR
    mov.l @(PTR_ce337b0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33720:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33726:
    mov.w @(DAT_ce337a2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33768
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce337a4,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce337a2,pc),r0
    mov.l @(PTR_ce337b4,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce3378a
    nop

LAB_ce33768:
    mov 0x60,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
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
    mov.w @(DAT_ce337a0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33794

LAB_ce3378a:
    lds.l @r15+,PR
    mov.l @(PTR_ce337b0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33794:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3379a:
    #data 0x019e
DAT_ce3379c:
    #data 0x01a3
DAT_ce3379e:
    #data 0x01ac
DAT_ce337a0:
    #data 0x0141
DAT_ce337a2:
    #data 0x041c
DAT_ce337a4:
    #data 0x01f9
    #align4

PTR_ce337a8:
    #data loc_8c2896b0
PTR_ce337ac:
    #data loc_8c079520
PTR_ce337b0:
    #data loc_8c034dee
PTR_ce337b4:
    #data loc_8c0511b4

;=============================================

LAB_ce337b8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce338f0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce337d2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce338f4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce337d2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce337da:
    mov r4,r3
    mov.l @(PTR_ce338f8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce337ec:
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
    mov.w @(DAT_ce338e2,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce338fc,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33900,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33904,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce338e4,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce33908,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce338e6,pc),r0
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
    mov.l @(PTR_ce3390c,pc),r2
    mov 0x04,r6
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33862:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce338f0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce338e8,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce33884
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce3390c,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce33884:
    mov.w @(DAT_ce338ea,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce338a8
    mov.l @(PTR_ce33910,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce338a8
    mov r0,r5
    mov.w @(DAT_ce338ee,pc),r0
    mov r14,r4
    mov.w @(DAT_ce338ec,pc),r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce33914,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce338a8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce338ae:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce338f0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce338c8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce338f4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce338c8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce338d0:
    mov r4,r3
    mov.l @(PTR_ce33918,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce338e2:
    #data 0x01a1
DAT_ce338e4:
    #data 0x041c
DAT_ce338e6:
    #data 0x01f9
DAT_ce338e8:
    #data 0x0143
DAT_ce338ea:
    #data 0x0141
DAT_ce338ec:
    #data 0x00c3
DAT_ce338ee:
    #data 0x01f7
    #align4

PTR_ce338f0:
    #data loc_8c034dee
PTR_ce338f4:
    #data loc_8c051648
PTR_ce338f8:
    #data PTR_ce358a4
PTR_ce338fc:
    #data loc_8c2896b0
PTR_ce33900:
    #data loc_8c056de4
PTR_ce33904:
    #data loc_8c05218a
PTR_ce33908:
    #data loc_8c05115a
PTR_ce3390c:
    #data loc_8c034e8c
PTR_ce33910:
    #data loc_8c045790
PTR_ce33914:
    #data loc_8c0522e0
PTR_ce33918:
    #data PTR_ce358b0

;=============================================

LAB_ce3391c:
    mov.w @(DAT_ce33a56,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3393a
    mov.w @(DAT_ce33a5a,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33a58,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3393a:
    mov.b @(0x6,r14),r0
    mov 0x3F,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33a5c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33a64,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33a68,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33a5e,pc),r0
    mov.l @(PTR_ce33a6c,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x23,r0
    mov r13,r6
    mov.b r13,@(r0,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce33a70,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3398a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce33a60,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.l @(PTR_ce33a74,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33a62,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce339cc
    mov.w @(DAT_ce33a62,pc),r0
    mov 0x00,r2
    fldi0 fr3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mova @(DAT_ce33a78,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mov.l @r15,r3
    mov.w @r3,r2
    mov.l @(PTR_ce33a7c,pc),r3
    tst r2,r2
    movt r6
    jsr @r3
    mov r14,r4

LAB_ce339cc:
    mov.w @(DAT_ce33a62,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce339e8
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x07,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33a62,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33a80,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce339e8:
    mov.l @(PTR_ce33a84,pc),r2
    jsr @r2
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce339f6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33a74,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33a62,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x03,r0
    bf/s LAB_ce33a16
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33a62,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce33a16:
    lds.l @r15+,PR
    mov.l @(PTR_ce33a84,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33a1e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33a88,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce33a84,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33a3e
    lds.l @r15+,PR
    mov.l @(PTR_ce33a8c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33a3e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33a44:
    mov r4,r3
    mov.l @(PTR_ce33a90,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a56:
    #data 0x0255
DAT_ce33a58:
    #data 0x00ff
DAT_ce33a5a:
    #data 0x03f0
DAT_ce33a5c:
    #data 0x01a1
DAT_ce33a5e:
    #data 0x01f9
DAT_ce33a60:
    #data 0x02a4
DAT_ce33a62:
    #data 0x0141
    #align4

PTR_ce33a64:
    #data loc_8c2896b0
PTR_ce33a68:
    #data loc_8c05218a
PTR_ce33a6c:
    #data loc_8c05115a
PTR_ce33a70:
    #data loc_8c034e8c
PTR_ce33a74:
    #data FUN_ce30bc6
DAT_ce33a78:
    #data 0x432b6db6
PTR_ce33a7c:
    #data loc_8c050834
PTR_ce33a80:
    #data loc_8c079598
PTR_ce33a84:
    #data loc_8c034dee
PTR_ce33a88:
    #data FUN_ce30bea
PTR_ce33a8c:
    #data loc_8c051648
PTR_ce33a90:
    #data PTR_ce358c0

;=============================================

LAB_ce33a94:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33bc0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33ab8
    mov.w @(DAT_ce33bc4,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33bc2,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33ab8:
    mov.w @(DAT_ce33bc6,pc),r0
    mov 0x37,r2
    mov 0x00,r13
    mov.l @(PTR_ce33bd0,pc),r3
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
    mov.l @(PTR_ce33bd4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33bc8,pc),r0
    mov.l @(PTR_ce33bd8,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33bdc,pc),r2
    mov 0x01,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33afe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce33bca,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.l @(PTR_ce33be0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33bcc,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce33b42
    mov.w @(DAT_ce33bcc,pc),r0
    mov 0x00,r2
    mov r15,r5
    add 0x04,r5
    mov.b r2,@(r0,r14)
    mova @(DAT_ce33be4,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mova @(DAT_ce33be8,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov.l @r15,r3
    mov.w @r3,r2
    mov.l @(PTR_ce33bec,pc),r3
    tst r2,r2
    movt r6
    jsr @r3
    mov r14,r4

LAB_ce33b42:
    mov.w @(DAT_ce33bcc,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce33bb2
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce33bf0,pc),r4
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33bcc,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x02,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov.s @r4,fr3
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r4),fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33bce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33b8c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce33b90
    fneg fr3

LAB_ce33b8c:
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3

LAB_ce33b90:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33bce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33ba4
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce33ba8
    fneg fr3

LAB_ce33ba4:
    mov 0x68,r0
    fmov.s @(r0,r14),fr3

LAB_ce33ba8:
    mov.l @(PTR_ce33bd8,pc),r3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce33bb2:
    mov.l @(PTR_ce33bf4,pc),r2
    jsr @r2
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33bc0:
    #data 0x0255
DAT_ce33bc2:
    #data 0x00ff
DAT_ce33bc4:
    #data 0x03f0
DAT_ce33bc6:
    #data 0x01a1
DAT_ce33bc8:
    #data 0x01f9
DAT_ce33bca:
    #data 0x02a4
DAT_ce33bcc:
    #data 0x0141
DAT_ce33bce:
    #data 0x01d2
    #align4

PTR_ce33bd0:
    #data loc_8c2896b0
PTR_ce33bd4:
    #data loc_8c05218a
PTR_ce33bd8:
    #data loc_8c05115a
PTR_ce33bdc:
    #data loc_8c034e8c
PTR_ce33be0:
    #data FUN_ce30bc6
DAT_ce33be4:
    #data 0xc2200000
DAT_ce33be8:
    #data 0x43092492
PTR_ce33bec:
    #data loc_8c050834
PTR_ce33bf0:
    #data DAT_ce35660
PTR_ce33bf4:
    #data loc_8c034dee

;=============================================

LAB_ce33bf8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33d10,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33d08,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x03,r0
    bf LAB_ce33c14
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce33d24
    mov r14,r4

LAB_ce33c14:
    mov.w @(DAT_ce33d08,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce33ca4
    mov.w @(DAT_ce33d08,pc),r0
    mov 0x00,r5
    mov.l @(PTR_ce33d14,pc),r4
    mov.b r5,@(r0,r14)
    mov.w @(0x1c,r14),r0
    shll2 r0
    add r0,r4
    fmov.s @r4,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r4),fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33d0a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33c48
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce33c4c
    fneg fr3

LAB_ce33c48:
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3

LAB_ce33c4c:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33d0a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33c60
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce33c64
    fneg fr3

LAB_ce33c60:
    mov 0x68,r0
    fmov.s @(r0,r14),fr3

LAB_ce33c64:
    mov 0x68,r0
    mov.w @(DAT_ce33d0c,pc),r1
    fmov fr3,@(r0,r14)
    mov 0x00,r3
    mov.w @(0x1c,r14),r0
    add r14,r1
    cmp/gt r0,r3
    addc r3,r0
    mov.l @(PTR_ce33d18,pc),r3
    shar r0
    add 0x37,r0
    mov.b r0,@r1
    mov.w @(DAT_ce33d0e,pc),r0
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l r5,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(0x1c,r14),r0
    mov.l @(PTR_ce33d1c,pc),r2
    add 0x02,r0
    mov.w r0,@(0x1c,r14)
    jsr @r2
    mov r14,r4

LAB_ce33ca4:
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce33cf0
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
    bra LAB_ce33d00
    fmov fr1,@(r0,r14)

LAB_ce33cf0:
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce33d00:
    lds.l @r15+,PR
    mov.l @(PTR_ce33d20,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33d08:
    #data 0x0141
DAT_ce33d0a:
    #data 0x01d2
DAT_ce33d0c:
    #data 0x01a1
DAT_ce33d0e:
    #data 0x01ac
    #align4

PTR_ce33d10:
    #data FUN_ce30bc6
PTR_ce33d14:
    #data DAT_ce35660
PTR_ce33d18:
    #data loc_8c2896b0
PTR_ce33d1c:
    #data loc_8c05115a
PTR_ce33d20:
    #data loc_8c034dee

;=============================================

FUN_ce33d24:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33e50,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33e44,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x04,r0
    bf LAB_ce33d48
    mov.w @(DAT_ce33e44,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce33e54,pc),r3
    mov 0x05,r5
    mov r2,r6
    mov.b r2,@(r0,r14)
    mov 0x01,r7
    jsr @r3
    mov r14,r4

LAB_ce33d48:
    mov.l @(PTR_ce33e58,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33d5e
    lds.l @r15+,PR
    mov.l @(PTR_ce33e5c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33d5e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33d64:
    mov r4,r3
    mov.l @(PTR_ce33e60,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33d76:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x36,r3
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33e46,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33e64,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce33e68,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33e48,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce33dc4
    mov.w @(DAT_ce33e48,pc),r0
    mov.l @(PTR_ce33e6c,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce33dc4:
    mov.l @(PTR_ce33e70,pc),r2
    mov 0x16,r5
    mov 0x02,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce33dd6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33e4a,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33e4c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33e44,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce33e1a
    mov.w @(DAT_ce33e4e,pc),r4
    mov 0x00,r2
    mov.w @(DAT_ce33e44,pc),r0
    add r14,r4
    mov.b r2,@(r0,r14)
    mov.w @r4,r3
    tst r3,r3
    bf LAB_ce33e1a
    mova @(DAT_ce33e74,pc),r0
    mov.l @(PTR_ce33e7c,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33e78,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce33e1a:
    mov.w @(DAT_ce33e44,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce33e36
    mov.w @(DAT_ce33e44,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce33e80,pc),r3
    mov r2,r5
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce33e36:
    mov.l @(PTR_ce33e58,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33e44:
    #data 0x0141
DAT_ce33e46:
    #data 0x01a1
DAT_ce33e48:
    #data 0x01f9
DAT_ce33e4a:
    #data 0x03f8
DAT_ce33e4c:
    #data 0x0328
DAT_ce33e4e:
    #data 0x02a4
    #align4

PTR_ce33e50:
    #data FUN_ce30bea
PTR_ce33e54:
    #data loc_8c07954e
PTR_ce33e58:
    #data loc_8c034dee
PTR_ce33e5c:
    #data loc_8c051648
PTR_ce33e60:
    #data PTR_ce358d0
PTR_ce33e64:
    #data loc_8c2896b0
PTR_ce33e68:
    #data loc_8c05218a
PTR_ce33e6c:
    #data loc_8c05115a
PTR_ce33e70:
    #data loc_8c034e8c
DAT_ce33e74:
    #data 0xc1555555
DAT_ce33e78:
    #data 0x432b6db6
PTR_ce33e7c:
    #data loc_8c050834
PTR_ce33e80:
    #data loc_8c079520

;=============================================

LAB_ce33e84:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33fd0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33fc8,pc),r0
    mov.l @(PTR_ce33fd4,pc),r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce33eb2
    mov.w @(DAT_ce33fca,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce33ef0
    mov 0x04,r0
    mov 0x00,r5
    mov.b r0,@(0x6,r14)
    jsr @r13
    mov r14,r4
    bra LAB_ce33ee2
    mov 0x03,r6

LAB_ce33eb2:
    mov.w @(DAT_ce33fca,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce33ef0
    mov.b @(0x6,r14),r0
    mov 0x00,r5
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
    mova @(DAT_ce33fd8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r13
    mov r14,r4
    mov 0x04,r6

LAB_ce33ee2:
    lds.l @r15+,PR
    mov.l @(PTR_ce33fdc,pc),r3
    mov r14,r4
    mov 0x16,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33ef0:
    mov.l @(PTR_ce33fe0,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x00,r5
    jsr @r13
    mov r14,r4
    mov.w @(DAT_ce33fcc,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x03,r0
    bf LAB_ce33f0a
    mov 0x04,r5
    jsr @r13
    mov r14,r4

LAB_ce33f0a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33f12:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33fe4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33fce,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33f5e
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33fc8,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce33fce,pc),r0
    mov.l @(PTR_ce33fe8,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33fdc,pc),r2
    mov 0x16,r5
    mov 0x05,r6
    jsr @r2
    mov r14,r4

LAB_ce33f5e:
    mov.l @(PTR_ce33fe0,pc),r3
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
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33fa2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33fe4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce33fe0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33fc2
    lds.l @r15+,PR
    mov.l @(PTR_ce33fec,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33fc2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33fc8:
    #data 0x01f9
DAT_ce33fca:
    #data 0x0143
DAT_ce33fcc:
    #data 0x0141
DAT_ce33fce:
    #data 0x041c
    #align4

PTR_ce33fd0:
    #data FUN_ce30bc6
PTR_ce33fd4:
    #data loc_8c035162
DAT_ce33fd8:
    #data 0xbf4db6db
PTR_ce33fdc:
    #data loc_8c034e8c
PTR_ce33fe0:
    #data loc_8c034dee
PTR_ce33fe4:
    #data FUN_ce30bea
PTR_ce33fe8:
    #data loc_8c0511b4
PTR_ce33fec:
    #data loc_8c051648

;=============================================

LAB_ce33ff0:
    mov r4,r3
    mov.l @(PTR_ce34118,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34002:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x43,r3
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3410e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3411c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce34120,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34124,pc),r3
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
    mov.l @(PTR_ce34128,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3412c,pc),r2
    mov r14,r4
    mov 0x06,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce34068:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce34110,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.l @(PTR_ce34130,pc),r3
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
    mov.w @(DAT_ce34112,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce34154
    mov.w @(DAT_ce34112,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce34134,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mova @(DAT_ce34138,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov.l @r15,r3
    mov.w @r3,r2
    tst r2,r2
    bf LAB_ce340de
    bra LAB_ce340e0
    mov 0x03,r6

LAB_ce340de:
    mov 0x00,r6

LAB_ce340e0:
    mov.l @(PTR_ce3413c,pc),r3
    mov r15,r5
    add 0x04,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34114,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce340f8
    mova @(DAT_ce34140,pc),r0
    bra LAB_ce340fc
    fmov.s @r0,fr3

LAB_ce340f8:
    mova @(DAT_ce34144,pc),r0
    fmov.s @r0,fr3

LAB_ce340fc:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34114,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3414c
    mova @(DAT_ce34148,pc),r0
    bra LAB_ce34150
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3410e:
    #data 0x01a1
DAT_ce34110:
    #data 0x02a4
DAT_ce34112:
    #data 0x0141
DAT_ce34114:
    #data 0x01d2
    #align4

PTR_ce34118:
    #data PTR_ce358e4
PTR_ce3411c:
    #data loc_8c2896b0
PTR_ce34120:
    #data loc_8c056de4
PTR_ce34124:
    #data loc_8c05218a
PTR_ce34128:
    #data loc_8c05115a
PTR_ce3412c:
    #data loc_8c034e8c
PTR_ce34130:
    #data FUN_ce30bc6
DAT_ce34134:
    #data 0x41555555
DAT_ce34138:
    #data 0x42f00000
PTR_ce3413c:
    #data loc_8c050834
DAT_ce34140:
    #data 0x41a00000
DAT_ce34144:
    #data 0xc1a00000
DAT_ce34148:
    #data 0xbf200000

;=============================================

LAB_ce3414c:
    mova @(DAT_ce34254,pc),r0
    fmov.s @r0,fr3

LAB_ce34150:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce34154:
    mov.w @(DAT_ce34246,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce341a2
    mov.l @(PTR_ce34258,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce341a2
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce34248,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3424a,pc),r0
    mov.b r3,@(r0,r14)
    add 0xB9,r0
    mov.l @(PTR_ce3425c,pc),r3
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3424c,pc),r0
    mov 0x01,r2
    mov 0x02,r4
    mov.l @(PTR_ce34260,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    mov 0x07,r6
    jsr @r3
    mov r14,r4
    bsr FUN_ce341c6
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce341a2:
    mov.w @(DAT_ce3424e,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce341b8
    mov.l @(PTR_ce34260,pc),r3
    mov 0x07,r0
    mov 0x16,r5
    mov.b r0,@(0x6,r14)
    mov 0x0A,r6
    jsr @r3
    mov r14,r4

LAB_ce341b8:
    mov.l @(PTR_ce34264,pc),r2
    jsr @r2
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce341c6:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3424c,pc),r0
    mov r4,r14
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov 0x02,r4
    mov.l @(PTR_ce34268,pc),r3
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34250,pc),r0
    mov.l @(r0,r14),r13
    mov.w @(DAT_ce34252,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3421c
    mov 0x00,r3
    fldi0 fr3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce3426c,pc),r0
    fmov.s fr3,@r15
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce34270,pc),r3
    mov 0x0D,r6
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r13,r4
    mov.l @(PTR_ce34274,pc),r2
    mov 0x06,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34278,pc),r3
    mov 0xFF,r5
    jsr @r3
    mov r13,r4

LAB_ce3421c:
    mov.w @(DAT_ce3424e,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce34236
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3427c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x64,r0
    jsr @r3
    mov.w r0,@(0x1c,r14)
    bra LAB_ce3423c
    nop

LAB_ce34236:
    mov.l @(PTR_ce34264,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3423c:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34246:
    #data 0x019e
DAT_ce34248:
    #data 0x00c4
DAT_ce3424a:
    #data 0x01f7
DAT_ce3424c:
    #data 0x01ea
DAT_ce3424e:
    #data 0x0143
DAT_ce34250:
    #data 0x01c8
DAT_ce34252:
    #data 0x0141
    #align4

DAT_ce34254:
    #data 0x3f200000
PTR_ce34258:
    #data loc_8c05264c
PTR_ce3425c:
    #data loc_8c0523d8
PTR_ce34260:
    #data loc_8c034e8c
PTR_ce34264:
    #data loc_8c034dee
PTR_ce34268:
    #data FUN_ce30bc6
DAT_ce3426c:
    #data 0x42f00000
PTR_ce34270:
    #data loc_8c0fdab6
PTR_ce34274:
    #data loc_8c04223a
PTR_ce34278:
    #data loc_8c05923c
PTR_ce3427c:
    #data loc_8c030fec

;=============================================

LAB_ce34280:
    mov.l r14,@-r15
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce342f4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce342ee,pc),r0
    mov 0x01,r2
    mov 0x02,r4
    mov r2,r5
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    mov 0x0D,r6
    mov.l @(PTR_ce342f8,pc),r3
    mov.l @(PTR_ce342fc,pc),r2
    mov.l r4,@r3
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce342f0,pc),r0
    mov.l @(PTR_ce34300,pc),r4
    fmov.s @(r0,r4),fr3
    add 0xFC,r0
    fmov.s @(r0,r4),fr2
    mov 0x34,r0
    mov r0,r8
    fadd fr3,fr2
    fldi1 fr3
    fadd fr3,fr3
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce342f2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce342da
    add r14,r8
    mov.l @(DAT_ce34304,pc),r1
    lds r1,FPUL
    bra LAB_ce342e0
    fsts FPUL,fr2

LAB_ce342da:
    mov.l @(DAT_ce34308,pc),r2
    lds r2,FPUL
    fsts FPUL,fr2

LAB_ce342e0:
    fmov.s @r8,fr3
    fadd fr2,fr3
    fmov.s fr3,@r8
    lds.l @r15+,PR
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce342ee:
    #data 0x01ea
DAT_ce342f0:
    #data 0x008c
DAT_ce342f2:
    #data 0x01d2
    #align4

PTR_ce342f4:
    #data FUN_ce30bc6
PTR_ce342f8:
    #data loc_8c26a8ec
PTR_ce342fc:
    #data loc_8c02fec4
PTR_ce34300:
    #data loc_8c26a518
DAT_ce34304:
    #data 0xc3055555
DAT_ce34308:
    #data 0x43055555

;=============================================

LAB_ce3430c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.l @(PTR_ce343f0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce343ea,pc),r0
    mov 0x01,r2
    mov 0x02,r4
    mov.l @(PTR_ce343f4,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    mov.l r4,@r3
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce34352
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce343f8,pc),r2
    mov 0x08,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x50,r0
    mov.w r0,@(0x1c,r14)
    jsr @r2
    mov r14,r4

LAB_ce34352:
    mov.w @(0x1c,r14),r0
    mov.l @(PTR_ce343fc,pc),r3
    mov r0,r1
    jsr @r3
    mov 0x09,r0
    cmp/eq 0x01,r0
    bf LAB_ce343de
    mov.l @(PTR_ce34400,pc),r12
    mov.w @(DAT_ce343ec,pc),r0
    jsr @r12
    mov.l @(r0,r14),r13
    and 0x3F,r0
    lds r0,FPUL
    cmp/pz r0
    bt/s LAB_ce3437a
    float FPUL,fr3
    mov.l @(DAT_ce34404,pc),r3
    lds r3,FPUL
    fsts FPUL,fr2
    fadd fr2,fr3

LAB_ce3437a:
    mova @(DAT_ce34408,pc),r0
    fmov.s @r0,fr2
    mov 0x04,r0
    fmul fr2,fr3
    jsr @r12
    fmov fr3,@(r0,r15)
    and 0x5F,r0
    lds r0,FPUL
    cmp/pz r0
    bt/s LAB_ce34398
    float FPUL,fr3
    mov.l @(DAT_ce34404,pc),r3
    lds r3,FPUL
    fsts FPUL,fr2
    fadd fr2,fr3

LAB_ce34398:
    mova @(DAT_ce3440c,pc),r0
    fmov.s @r0,fr2
    mov 0x08,r0
    fmul fr2,fr3
    jsr @r12
    fmov fr3,@(r0,r15)
    and 0x07,r0
    mov r15,r5
    mov.l @(PTR_ce34410,pc),r3
    add 0x09,r0
    add 0x04,r5
    mov.b r0,@r15
    extu.b r0,r6
    jsr @r3
    mov r13,r4
    jsr @r12
    nop
    mov.l @(PTR_ce34414,pc),r2
    mov r0,r1
    jsr @r2
    mov 0x03,r0
    mov.l @(PTR_ce34418,pc),r3
    mov r0,r5
    add 0x04,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3441c,pc),r2
    mov r14,r5
    mov 0x01,r6
    jsr @r2
    mov r13,r4
    mov.l @(PTR_ce34420,pc),r3
    mov 0xFE,r5
    jsr @r3
    mov r13,r4

LAB_ce343de:
    add 0x10,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce343ea:
    #data 0x01ea
DAT_ce343ec:
    #data 0x01c8
    #align4

PTR_ce343f0:
    #data FUN_ce30bc6
PTR_ce343f4:
    #data loc_8c26a8ec
PTR_ce343f8:
    #data loc_8c034e8c
PTR_ce343fc:
    #data loc_8c1292d4
PTR_ce34400:
    #data loc_8c03319e
DAT_ce34404:
    #data 0x4f800000
DAT_ce34408:
    #data 0x3fd55555
DAT_ce3440c:
    #data 0x40092492
PTR_ce34410:
    #data loc_8c0fdb02
PTR_ce34414:
    #data loc_8c12939c
PTR_ce34418:
    #data loc_8c04223a
PTR_ce3441c:
    #data loc_8c05a49c
PTR_ce34420:
    #data loc_8c05923c

;=============================================

LAB_ce34424:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34530,pc),r0
    mov r4,r14
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov 0x02,r4
    mov.l @(PTR_ce34538,pc),r3
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34532,pc),r0
    mov.l @(r0,r14),r13
    mova @(DAT_ce3453c,pc),r0
    fmov.s @r0,fr14
    mov.w @(0x1c,r14),r0
    cmp/eq 0x0A,r0
    bf/s LAB_ce34482
    fldi0 fr15
    mov 0x04,r0
    mov.l @(PTR_ce34540,pc),r3
    mov r15,r5
    mov 0x0A,r6
    fmov.s fr15,@r15
    fmov fr14,@(r0,r15)
    jsr @r3
    mov r13,r4
    mov.l @(PTR_ce34544,pc),r2
    mov 0x06,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34548,pc),r3
    mov 0xFF,r5
    jsr @r3
    mov r13,r4
    mov.l @(PTR_ce3454c,pc),r2
    mov r14,r5
    mov 0x01,r6
    jsr @r2
    mov r13,r4

LAB_ce34482:
    mov.w @(0x1c,r14),r0
    cmp/eq 0x05,r0
    bf LAB_ce344b2
    mov 0x04,r0
    mov.l @(PTR_ce34540,pc),r3
    mov r15,r5
    mov 0x10,r6
    fmov.s fr15,@r15
    fmov fr14,@(r0,r15)
    jsr @r3
    mov r13,r4
    mov.l @(PTR_ce34544,pc),r2
    mov 0x06,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34548,pc),r3
    mov 0xFF,r5
    jsr @r3
    mov r13,r4
    mov.l @(PTR_ce3454c,pc),r2
    mov r14,r5
    mov 0x01,r6
    jsr @r2
    mov r13,r4

LAB_ce344b2:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3451c
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce34550,pc),r3
    mov 0x0D,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34534,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce344de
    mova @(DAT_ce34554,pc),r0
    bra LAB_ce344e2
    fmov.s @r0,fr3

LAB_ce344de:
    mova @(DAT_ce34558,pc),r0
    fmov.s @r0,fr3

LAB_ce344e2:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34534,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce344f4
    mova @(DAT_ce3455c,pc),r0
    bra LAB_ce344f8
    fmov.s @r0,fr3

LAB_ce344f4:
    mova @(DAT_ce34560,pc),r0
    fmov.s @r0,fr3

LAB_ce344f8:
    mov 0x00,r6
    mov.l @(PTR_ce34550,pc),r3
    mov 0x68,r0
    mov r6,r5
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34536,pc),r0
    mov 0x00,r2
    mov 0x01,r3
    mov.b r2,@(r0,r14)
    add 0x73,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0xAB,r0
    mov 0x24,r2
    mov.b r2,@(r0,r13)

LAB_ce3451c:
    mov.l @(PTR_ce34564,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34530:
    #data 0x01ea
DAT_ce34532:
    #data 0x01c8
DAT_ce34534:
    #data 0x01d2
DAT_ce34536:
    #data 0x0141
    #align4

PTR_ce34538:
    #data FUN_ce30bc6
DAT_ce3453c:
    #data 0x432b6db6
PTR_ce34540:
    #data loc_8c0fdab6
PTR_ce34544:
    #data loc_8c04223a
PTR_ce34548:
    #data loc_8c05923c
PTR_ce3454c:
    #data loc_8c05a49c
PTR_ce34550:
    #data loc_8c02fec4
DAT_ce34554:
    #data 0xc1a00000
DAT_ce34558:
    #data 0x41a00000
DAT_ce3455c:
    #data 0x3f555555
DAT_ce34560:
    #data 0xbf555555
PTR_ce34564:
    #data loc_8c034dee

;=============================================

LAB_ce34568:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce346b0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce346a6,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce34594
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov.l @(PTR_ce346b4,pc),r1
    mov 0x16,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0A,r6
    mov.w @(DAT_ce346a8,pc),r0
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce34594:
    lds.l @r15+,PR
    mov.l @(PTR_ce346b8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3459e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce346bc,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce345f4
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
    bra LAB_ce34604
    fmov fr1,@(r0,r14)

LAB_ce345f4:
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce34604:
    mov.l @(PTR_ce346b8,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3461a
    lds.l @r15+,PR
    mov.l @(PTR_ce346c0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3461a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34620:
    mov r4,r3
    mov.l @(PTR_ce346c4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34632:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov 0x00,r3
    sts.l PR,@-r15
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
    mov.w @(DAT_ce346aa,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce346ac,pc),r0
    mov.l @(PTR_ce346c8,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce346b4,pc),r2
    mov r14,r4
    mov 0x07,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce34672:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce346b8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3468c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce346c0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3468c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce34694:
    mov r4,r3
    mov.l @(PTR_ce346cc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce346a6:
    #data 0x0143
DAT_ce346a8:
    #data 0x0130
DAT_ce346aa:
    #data 0x01f9
DAT_ce346ac:
    #data 0x041c
    #align4

PTR_ce346b0:
    #data FUN_ce30bc6
PTR_ce346b4:
    #data loc_8c034e8c
PTR_ce346b8:
    #data loc_8c034dee
PTR_ce346bc:
    #data FUN_ce30bea
PTR_ce346c0:
    #data loc_8c051648
PTR_ce346c4:
    #data PTR_ce35904
PTR_ce346c8:
    #data loc_8c05218a
PTR_ce346cc:
    #data PTR_ce3590c

;=============================================

LAB_ce346d0:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce34814,pc),r3
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
    mov.w @(DAT_ce3480a,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3480c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34818,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3481c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3480e,pc),r0
    mov 0x42,r2
    mov.l @(PTR_ce34820,pc),r3
    mov 0x02,r6
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x14,r5
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
    mov.l @(PTR_ce34824,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce34746:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34828,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34766
    mov.l @(PTR_ce3482c,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34766:
    mov.w @(DAT_ce34810,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34788
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce34830,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34834,pc),r0
    mov.l @(PTR_ce34838,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce34788:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34790:
    mov r4,r3
    mov.l @(PTR_ce3483c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce347a2:
    mov.b @(0x6,r4),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3480a,pc),r0
    mov.b r3,@(r0,r4)
    mova @(DAT_ce34840,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce34812,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce347c6
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce347c6:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce34844,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x41,r3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce34848,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r5
    fmov fr3,@(r0,r4)
    mov r5,r6
    mov.w @(DAT_ce3480e,pc),r0
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce34820,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce34824,pc),r2
    jmp @r2
    mov 0x14,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3480a:
    #data 0x01f9
DAT_ce3480c:
    #data 0x041c
DAT_ce3480e:
    #data 0x01a1
DAT_ce34810:
    #data 0x0141
DAT_ce34812:
    #data 0x01d2
    #align4

PTR_ce34814:
    #data loc_8c035162
PTR_ce34818:
    #data loc_8c05218a
PTR_ce3481c:
    #data loc_8c05115a
PTR_ce34820:
    #data loc_8c2896b0
PTR_ce34824:
    #data loc_8c034e8c
PTR_ce34828:
    #data loc_8c034dee
PTR_ce3482c:
    #data loc_8c051648
DAT_ce34830:
    #data 0x41555555
DAT_ce34834:
    #data 0x435edb6d
PTR_ce34838:
    #data loc_8c050ea4
PTR_ce3483c:
    #data PTR_ce35914
DAT_ce34840:
    #data 0x41f00000
DAT_ce34844:
    #data 0x40892492
DAT_ce34848:
    #data 0xbf4db6db

;=============================================

LAB_ce3484c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce349a4,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce349a8,pc),r3
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
    bt LAB_ce348c6
    mov.l @(PTR_ce349ac,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    fldi0 fr4
    mov 0x01,r6
    add 0x01,r0
    mov.l @(PTR_ce349b0,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce348c6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce348cc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce349a4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce348e6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce349b4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce348e6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce348ee:
    mov r4,r3
    mov.l @(PTR_ce349b8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34900:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x56,r3
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3499e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce349bc,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce349c0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce349c4,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce349c8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce349a0,pc),r0
    mov.l @(PTR_ce349cc,pc),r4
    mov.b @(r0,r14),r3
    add 0x2F,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce34964
    mov 0x5C,r0
    fmov.s @r4,fr3
    bra LAB_ce34966
    fneg fr3

LAB_ce34964:
    fmov.s @r4,fr3

LAB_ce34966:
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce349a2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34978
    mov 0x04,r0
    fmov.s @(r0,r4),fr3
    bra LAB_ce3497c
    fneg fr3

LAB_ce34978:
    mov 0x04,r0
    fmov.s @(r0,r4),fr3

LAB_ce3497c:
    mov 0x68,r0
    mov.l @(PTR_ce349b0,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    fmov.s @(r0,r4),fr3
    mov 0x60,r0
    mov 0x06,r6
    fmov fr3,@(r0,r14)
    mov 0x0C,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    mov r14,r4
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3499e:
    #data 0x01a1
DAT_ce349a0:
    #data 0x01a3
DAT_ce349a2:
    #data 0x01d2
    #align4

PTR_ce349a4:
    #data loc_8c034dee
PTR_ce349a8:
    #data loc_8c052ce2
PTR_ce349ac:
    #data loc_8c0511b4
PTR_ce349b0:
    #data loc_8c034e8c
PTR_ce349b4:
    #data loc_8c051648
PTR_ce349b8:
    #data PTR_ce35920
PTR_ce349bc:
    #data loc_8c2896b0
PTR_ce349c0:
    #data loc_8c056de4
PTR_ce349c4:
    #data loc_8c05218a
PTR_ce349c8:
    #data loc_8c05115a
PTR_ce349cc:
    #data DAT_ce35640

;=============================================

LAB_ce349d0:
    mov.w @(DAT_ce34b10,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce349ee
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x01,r0
    mov.w r0,@(0x1c,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    bra LAB_ce34a10
    fmov fr4,@(r0,r4)

LAB_ce349ee:
    mov.w @(DAT_ce34b12,pc),r0
    mov 0x02,r2
    mov 0x5C,r1
    mov.b r2,@(r0,r4)
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
    fadd fr3,fr2
    fmov fr2,@(r0,r4)

LAB_ce34a10:
    mov.l @(PTR_ce34b18,pc),r3
    jmp @r3
    nop

LAB_ce34a16:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r0
    fldi0 fr3
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce34a2e
    mov.b @(0x6,r14),r0
    add 0x01,r0
    bra LAB_ce34a72
    mov.b r0,@(0x6,r14)

LAB_ce34a2e:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce34a4e
    mov.l @(PTR_ce34b1c,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34b1c,pc),r3
    mov 0x02,r5
    jsr @r3
    mov r14,r4
    mov 0x06,r0
    mov.w r0,@(0x1c,r14)

LAB_ce34a4e:
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
    mov.w @(DAT_ce34b10,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34a7c

LAB_ce34a72:
    lds.l @r15+,PR
    mov.l @(PTR_ce34b18,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34a7c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34a82:
    mov.w @(DAT_ce34b14,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce34ac4
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34b12,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce34b14,pc),r0
    mov.l @(PTR_ce34b20,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce34ae6
    nop

LAB_ce34ac4:
    mov 0x60,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
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
    mov.w @(DAT_ce34b10,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34af0

LAB_ce34ae6:
    lds.l @r15+,PR
    mov.l @(PTR_ce34b18,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34af0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce34af6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34b18,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34b28
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce34b24,pc),r3
    jmp @r3
    lds.l @r15+,PR

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34b10:
    #data 0x0141
DAT_ce34b12:
    #data 0x01f9
DAT_ce34b14:
    #data 0x041c
    #align4

PTR_ce34b18:
    #data loc_8c034dee
PTR_ce34b1c:
    #data loc_8c079520
PTR_ce34b20:
    #data loc_8c0511b4
PTR_ce34b24:
    #data loc_8c051648

;=============================================

LAB_ce34b28:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce34b30:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce34c0e,pc),r1
    mov.l @(PTR_ce34c1c,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce34b48:
    mov.w @(DAT_ce34c10,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce34c12,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce34b94
    mov.w @(DAT_ce34c14,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34b94
    mov.w @(DAT_ce34c16,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34b94
    mov.l @(PTR_ce34c20,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34b94
    mov r0,r4
    mov.w @(DAT_ce34c18,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34b94:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34b9c:
    rts
    mov 0x00,r0

LAB_ce34ba0:
    mov.w @(DAT_ce34c10,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce34c12,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce34bee
    mov.w @(DAT_ce34c14,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34bee
    mov.w @(DAT_ce34c16,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34bee
    mov.l @(PTR_ce34c20,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34bee
    mov r0,r4
    mov.w @(DAT_ce34c18,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34bee:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34bf6:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce34c18,pc),r1
    mov.l @(PTR_ce34c24,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34c0e:
    #data 0x01f9
DAT_ce34c10:
    #data 0x01fa
DAT_ce34c12:
    #data 0x0c00
DAT_ce34c14:
    #data 0x01fe
DAT_ce34c16:
    #data 0x01a3
DAT_ce34c18:
    #data 0x01f7
    #align4

PTR_ce34c1c:
    #data PTR_ce35934
PTR_ce34c20:
    #data loc_8c045790
PTR_ce34c24:
    #data PTR_ce35944

;=============================================

LAB_ce34c28:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34d10,pc),r0
    mov r4,r14
    mov.w @(DAT_ce34d12,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce34c54
    mov.w @(DAT_ce34d14,pc),r0
    mov.w @(DAT_ce34d14,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce34d16,pc),r0
    mov.w @(DAT_ce34d16,pc),r1
    mov.w @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.w r0,@r1

LAB_ce34c54:
    mova @(DAT_ce34d1c,pc),r0
    mov.l @(PTR_ce34d24,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34d20,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34d18,pc),r0
    mov 0x05,r6
    mov.l @(PTR_ce34d28,pc),r3
    mov 0x0A,r2
    mov r6,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34d2c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34d30,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34d1a,pc),r0
    mov 0x05,r6
    mov.l @(PTR_ce34d34,pc),r3
    mov.l @(r0,r14),r4
    jsr @r3
    mov 0x0D,r5
    mov.l @(PTR_ce34d34,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34ca6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34d10,pc),r0
    mov r4,r14
    mov.w @(DAT_ce34d12,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce34cd2
    mov.w @(DAT_ce34d14,pc),r0
    mov.w @(DAT_ce34d14,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce34d16,pc),r0
    mov.w @(DAT_ce34d16,pc),r1
    mov.w @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.w r0,@r1

LAB_ce34cd2:
    mova @(DAT_ce34d1c,pc),r0
    mov.l @(PTR_ce34d24,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34d20,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34d18,pc),r0
    mov 0x05,r6
    mov.l @(PTR_ce34d28,pc),r3
    mov 0x0A,r2
    mov r6,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34d2c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34d34,pc),r3
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34d10:
    #data 0x01fa
DAT_ce34d12:
    #data 0x0400
DAT_ce34d14:
    #data 0x01d2
DAT_ce34d16:
    #data 0x0130
DAT_ce34d18:
    #data 0x01a0
DAT_ce34d1a:
    #data 0x01c8
    #align4

DAT_ce34d1c:
    #data 0xc2a6aaaa
DAT_ce34d20:
    #data 0x431e9249
PTR_ce34d24:
    #data loc_8c103660
PTR_ce34d28:
    #data loc_8c02fec4
PTR_ce34d2c:
    #data loc_8c056f2a
PTR_ce34d30:
    #data loc_8c0cd9ec
PTR_ce34d34:
    #data loc_8c034e8c

;=============================================

LAB_ce34d38:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34e06,pc),r0
    mov r4,r14
    mov.w @(DAT_ce34e08,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce34d64
    mov.w @(DAT_ce34e0a,pc),r0
    mov.w @(DAT_ce34e0a,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce34e0c,pc),r0
    mov.w @(DAT_ce34e0c,pc),r1
    mov.w @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.w r0,@r1

LAB_ce34d64:
    mova @(DAT_ce34e14,pc),r0
    mov.l @(PTR_ce34e1c,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34e18,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34e0e,pc),r0
    mov 0x05,r6
    mov.l @(PTR_ce34e20,pc),r3
    mov 0x0A,r2
    mov r6,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34e24,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34e28,pc),r3
    mov 0x0F,r5
    mov 0x02,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34da2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mova @(DAT_ce34e14,pc),r0
    mov.l @(PTR_ce34e1c,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34e18,pc),r0
    mov r4,r14
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34e0e,pc),r0
    mov 0x05,r6
    mov.l @(PTR_ce34e20,pc),r3
    mov 0x0A,r2
    mov r6,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34e24,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34e28,pc),r3
    mov 0x0F,r5
    mov 0x03,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34de8:
    mov.w @(DAT_ce34e10,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34e2c,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34e06:
    #data 0x01fa
DAT_ce34e08:
    #data 0x0400
DAT_ce34e0a:
    #data 0x01d2
DAT_ce34e0c:
    #data 0x0130
DAT_ce34e0e:
    #data 0x01a0
DAT_ce34e10:
    #data 0x01ea
    #align4

DAT_ce34e14:
    #data 0xc2a6aaaa
DAT_ce34e18:
    #data 0x431e9249
PTR_ce34e1c:
    #data loc_8c103660
PTR_ce34e20:
    #data loc_8c02fec4
PTR_ce34e24:
    #data loc_8c056f2a
PTR_ce34e28:
    #data loc_8c034e8c
PTR_ce34e2c:
    #data PTR_ce35954

;=============================================

LAB_ce34e30:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34f54,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce34eac
    mov.w @(DAT_ce34f46,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x06,r0
    bf LAB_ce34eb2
    mov.l @(PTR_ce34f58,pc),r2
    mov 0x00,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce34f5c,pc),r0
    mov.l @(PTR_ce34f64,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34f60,pc),r0
    mov r15,r5
    mov 0x0F,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34f68,pc),r2
    mov 0x06,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce34f48,pc),r0
    mov 0x20,r2
    mov.w @(DAT_ce34f4a,pc),r1
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add r4,r1
    mov.w @(DAT_ce34f4a,pc),r0
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce34f4c,pc),r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r0
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.w @(DAT_ce34f4a,pc),r0
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce34f4c,pc),r0
    mov.b r3,@(r0,r4)
    add 0xCF,r0
    mov.b r2,@(r0,r4)
    add 0x55,r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34eac:
    mov.l @(PTR_ce34f6c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce34eb2:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34eba:
    mov.w @(DAT_ce34f4e,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce34f70,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34ed4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34f54,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34f46,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bt LAB_ce34f40
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34f50,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce34f4c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34f12
    mova @(DAT_ce34f74,pc),r0
    bra LAB_ce34f16
    fmov.s @r0,fr3

LAB_ce34f12:
    mova @(DAT_ce34f78,pc),r0
    fmov.s @r0,fr3

LAB_ce34f16:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34f4c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34f28
    mova @(DAT_ce34f7c,pc),r0
    bra LAB_ce34f2c
    fmov.s @r0,fr3

LAB_ce34f28:
    mova @(DAT_ce34f80,pc),r0
    fmov.s @r0,fr3

LAB_ce34f2c:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34f84,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34f88,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce34f40:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34f46:
    #data 0x0141
DAT_ce34f48:
    #data 0x01c8
DAT_ce34f4a:
    #data 0x0130
DAT_ce34f4c:
    #data 0x01d2
DAT_ce34f4e:
    #data 0x01ea
DAT_ce34f50:
    #data 0x01f9
    #align4

PTR_ce34f54:
    #data loc_8c034dee
PTR_ce34f58:
    #data loc_8c02fec4
DAT_ce34f5c:
    #data 0xc3055555
DAT_ce34f60:
    #data 0x43092492
PTR_ce34f64:
    #data loc_8c0fdab6
PTR_ce34f68:
    #data loc_8c04223a
PTR_ce34f6c:
    #data loc_8c051648
PTR_ce34f70:
    #data PTR_ce35964
DAT_ce34f74:
    #data 0x414db6db
DAT_ce34f78:
    #data 0xc14db6db
DAT_ce34f7c:
    #data 0xbe892492
DAT_ce34f80:
    #data 0x3e892492
DAT_ce34f84:
    #data 0x41dedb6d
DAT_ce34f88:
    #data 0xbf892492

;=============================================

LAB_ce34f8c:
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
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce34ff0
    fmov fr2,@(r0,r4)
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    fmov fr3,fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce35086,pc),r0
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce35090,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r4)

LAB_ce34ff0:
    mov.w @(DAT_ce35086,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x01,r0
    bt LAB_ce34ffe
    mov.l @(PTR_ce35094,pc),r3
    jmp @r3
    nop

LAB_ce34ffe:
    rts
    nop

LAB_ce35002:
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
    mov.w @(DAT_ce35088,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce35082
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3508a,pc),r0
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce3508c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce35072
    mova @(DAT_ce35098,pc),r0
    bra LAB_ce35076
    fmov.s @r0,fr3

LAB_ce35072:
    mova @(DAT_ce3509c,pc),r0
    fmov.s @r0,fr3

LAB_ce35076:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce35088,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)

LAB_ce35082:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce35086:
    #data 0x0141
DAT_ce35088:
    #data 0x041c
DAT_ce3508a:
    #data 0x01f9
DAT_ce3508c:
    #data 0x01d2
    #align4

DAT_ce35090:
    #data 0xbfcdb6db
PTR_ce35094:
    #data loc_8c034dee
DAT_ce35098:
    #data 0xc14db6db
DAT_ce3509c:
    #data 0x414db6db

;=============================================

LAB_ce350a0:
    mov.w @(DAT_ce351a0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce350e6
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

LAB_ce350e6:
    mov.w @(DAT_ce351a0,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce3512c
    mov.l @(PTR_ce351a8,pc),r2
    mov 0x00,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce351a0,pc),r0
    mov 0x00,r3
    mov 0x21,r2
    mov.l @(PTR_ce351ac,pc),r6
    mov.b r3,@(r0,r14)
    mov 0x01,r5
    mov.w @(DAT_ce351a2,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x1E,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    add 0xCF,r0
    mov.b r2,@(r0,r4)
    add 0x55,r0
    mov.b r5,@(r0,r4)
    mov 0x02,r0
    mov.b r0,@(0x5,r6)
    mov r5,r0
    nop
    mov.l @(PTR_ce351b0,pc),r3
    mov.b r0,@(0x6,r6)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3512c:
    mov.l @(PTR_ce351b4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce35142
    lds.l @r15+,PR
    mov.l @(PTR_ce351b8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce35142:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce35148:
    mov.w @(DAT_ce351a4,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce351bc,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce35162:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce351b4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce351a0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3519a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce351a0,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce351c0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce3519a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce351a0:
    #data 0x0141
DAT_ce351a2:
    #data 0x01c8
DAT_ce351a4:
    #data 0x01ea
    #align4

PTR_ce351a8:
    #data loc_8c02fec4
PTR_ce351ac:
    #data loc_8c26a518
PTR_ce351b0:
    #data loc_8c0423fc
PTR_ce351b4:
    #data loc_8c034dee
PTR_ce351b8:
    #data loc_8c051648
PTR_ce351bc:
    #data PTR_ce35974
DAT_ce351c0:
    #data 0xbfcdb6db

;=============================================

LAB_ce351c4:
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
    mov.w @(DAT_ce3531a,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce35244
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3531c,pc),r0
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce3531e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce35234
    mova @(DAT_ce35324,pc),r0
    bra LAB_ce35238
    fmov.s @r0,fr3

LAB_ce35234:
    mova @(DAT_ce35328,pc),r0
    fmov.s @r0,fr3

LAB_ce35238:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce3531a,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)

LAB_ce35244:
    rts
    nop

LAB_ce35248:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce35320,pc),r0
    mov r4,r14
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bt/s LAB_ce35294
    fldi0 fr15
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

LAB_ce35294:
    mov.w @(DAT_ce35320,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce352e8
    mov.l @(PTR_ce3532c,pc),r2
    mov 0x00,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mov 0x04,r0
    mov.l @(PTR_ce35330,pc),r3
    mov r15,r5
    mov 0x02,r6
    fmov.s fr15,@r15
    fmov fr15,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce35320,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce35334,pc),r5
    mov.b r2,@(r0,r14)
    mov 0x22,r2
    mov.w @(DAT_ce35322,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x1E,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    add 0xCF,r0
    mov.b r2,@(r0,r4)
    add 0x55,r0
    mov 0x03,r3
    mov.b r3,@(r0,r4)
    mov 0x02,r0
    mov.l @(PTR_ce35338,pc),r3
    mov.b r0,@(0x5,r5)
    mov 0x01,r0
    jsr @r3
    mov.b r0,@(0x6,r5)
    bra LAB_ce35310
    nop

LAB_ce352e8:
    mov.l @(PTR_ce3533c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce35310
    mov.w @(DAT_ce3531c,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce35340,pc),r3
    mov.b r2,@(r0,r14)
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

LAB_ce35310:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3531a:
    #data 0x041c
DAT_ce3531c:
    #data 0x01f9
DAT_ce3531e:
    #data 0x01d2
DAT_ce35320:
    #data 0x0141
DAT_ce35322:
    #data 0x01c8
    #align4

DAT_ce35324:
    #data 0xc14db6db
DAT_ce35328:
    #data 0x414db6db
PTR_ce3532c:
    #data loc_8c02fec4
PTR_ce35330:
    #data loc_8c0fdb02
PTR_ce35334:
    #data loc_8c26a518
PTR_ce35338:
    #data loc_8c0423fc
PTR_ce3533c:
    #data loc_8c034dee
PTR_ce35340:
    #data loc_8c051648

;=============================================

LAB_ce35344:
    mov.l r14,@-r15
    mov.l r8,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce35444,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce353ac
    mov.w @(DAT_ce35432,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce353d2
    mova @(DAT_ce35448,pc),r0
    mov.l @(PTR_ce35450,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce3544c,pc),r0
    mov r15,r5
    mov 0x02,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce35454,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce35458,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce35432,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov 0x23,r2
    mov.w @(DAT_ce35434,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce35436,pc),r0
    mov.l r14,@(r0,r4)
    mov.w @(DAT_ce35438,pc),r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    add 0xCF,r0
    mov.b r2,@(r0,r4)
    add 0x55,r0
    mov 0x01,r3
    bra LAB_ce353d2
    mov.b r3,@(r0,r4)

LAB_ce353ac:
    mov.w @(DAT_ce3543a,pc),r0
    mov 0x34,r8
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce353c0
    add r14,r8
    mov.l @(DAT_ce3545c,pc),r1
    lds r1,FPUL
    bra LAB_ce353c6
    fsts FPUL,fr3

LAB_ce353c0:
    mov.l @(DAT_ce35460,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce353c6:
    fmov.s @r8,fr2
    mov.l @(PTR_ce35464,pc),r3
    fadd fr3,fr2
    fmov.s fr2,@r8
    jsr @r3
    mov r14,r4

LAB_ce353d2:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

LAB_ce353dc:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce3543c,pc),r1
    mov.l @(PTR_ce35468,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce353f4:
    mov.w @(DAT_ce35434,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce3546c,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce35402:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3543e,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce35420
    mov 0x03,r5
    cmp/eq 0x01,r0
    bt LAB_ce35428
    cmp/eq 0x02,r0
    bt LAB_ce35428
    bra LAB_ce3542c
    nop

LAB_ce35420:
    mov.w @(DAT_ce35440,pc),r0
    mov 0x04,r3
    bra LAB_ce3542c
    mov.b r3,@(r0,r4)

LAB_ce35428:
    mov.w @(DAT_ce35440,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3542c:
    mov.l @(PTR_ce35470,pc),r2
    jmp @r2
    mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce35432:
    #data 0x0141
DAT_ce35434:
    #data 0x01c8
DAT_ce35436:
    #data 0x01b4
DAT_ce35438:
    #data 0x01d2
DAT_ce3543a:
    #data 0x0130
DAT_ce3543c:
    #data 0x01f7
DAT_ce3543e:
    #data 0x04c9
DAT_ce35440:
    #data 0x01e9
    #align4

PTR_ce35444:
    #data loc_8c034dee
DAT_ce35448:
    #data 0xc3555555
DAT_ce3544c:
    #data 0x433c9249
PTR_ce35450:
    #data loc_8c0fdab6
PTR_ce35454:
    #data loc_8c04223a
PTR_ce35458:
    #data loc_8c02fec4
DAT_ce3545c:
    #data 0x42d55555
DAT_ce35460:
    #data 0xc2d55555
PTR_ce35464:
    #data loc_8c051648
PTR_ce35468:
    #data PTR_ce35980
PTR_ce3546c:
    #data loc_8c04cc1c
PTR_ce35470:
    #data loc_8c0530d8

;=============================================

LAB_ce35474:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3551e,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce35492
    mov 0x03,r5
    cmp/eq 0x01,r0
    bt LAB_ce3549a
    cmp/eq 0x02,r0
    bt LAB_ce3549a
    bra LAB_ce3549e
    nop

LAB_ce35492:
    mov.w @(DAT_ce35520,pc),r0
    mov 0x04,r3
    bra LAB_ce3549e
    mov.b r3,@(r0,r4)

LAB_ce3549a:
    mov.w @(DAT_ce35520,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3549e:
    mov.l @(PTR_ce35524,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce354a4:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3551e,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce354c6
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce354cc
    cmp/eq 0x02,r0
    bt LAB_ce354d2
    bra LAB_ce354da
    nop

LAB_ce354c6:
    mov.w @(DAT_ce35520,pc),r0
    bra LAB_ce354d6
    mov.b r5,@(r0,r4)

LAB_ce354cc:
    mov.w @(DAT_ce35520,pc),r0
    bra LAB_ce354d6
    mov.b r6,@(r0,r4)

LAB_ce354d2:
    mov.w @(DAT_ce35520,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce354d6:
    mov.w @(DAT_ce35522,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce354da:
    mov.l @(PTR_ce35524,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce354e0:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3551e,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce35502
    mov 0x07,r6
    cmp/eq 0x01,r0
    bt LAB_ce35508
    cmp/eq 0x02,r0
    bt LAB_ce3550e
    bra LAB_ce35518
    nop

LAB_ce35502:
    mov.w @(DAT_ce35520,pc),r0
    bra LAB_ce35512
    mov.b r5,@(r0,r4)

LAB_ce35508:
    mov.w @(DAT_ce35520,pc),r0
    bra LAB_ce35512
    mov.b r6,@(r0,r4)

LAB_ce3550e:
    mov.w @(DAT_ce35520,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce35512:
    mov.w @(DAT_ce35522,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)

LAB_ce35518:
    mov.l @(PTR_ce35524,pc),r3
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3551e:
    #data 0x04c9
DAT_ce35520:
    #data 0x01e9
DAT_ce35522:
    #data 0x01a3
    #align4

PTR_ce35524:
    #data loc_8c0530d8
DAT_ce35528:
    #data 0x0201
    #data 0x0201
DAT_ce3552c:
    #data 0x02ff
    #data 0x02ff
DAT_ce35530:
    #data 0xffff
    #data 0xffff
DAT_ce35534:
    #data 0x0201
    #data 0x0201
DAT_ce35538:
    #data 0x02ff
    #data 0x02ff
DAT_ce3553c:
    #data 0xffff
    #data 0xffff
DAT_ce35540:
    #data 0x0201
    #data 0x0201
DAT_ce35544:
    #data 0x02ff
    #data 0x02ff
DAT_ce35548:
    #data 0xffff
    #data 0xffff
DAT_ce3554c:
    #data 0x0201
    #data 0x0201
DAT_ce35550:
    #data 0x02ff
    #data 0x02ff
DAT_ce35554:
    #data 0xffff
    #data 0xffff
DAT_ce35558:
    #data 0x0201
    #data 0x0200
DAT_ce3555c:
    #data 0x02ff
    #data 0x0201
DAT_ce35560:
    #data 0xffff
    #data 0x02ff
DAT_ce35564:
    #data 0x0201
    #data 0x0201
DAT_ce35568:
    #data 0x02ff
    #data 0x02ff
DAT_ce3556c:
    #data 0xffff
    #data 0xffff
DAT_ce35570:
    #data 0xffff
    #data 0xffff
DAT_ce35574:
    #data 0xffff
    #data 0xffff
DAT_ce35578:
    #data 0xff03
    #data 0xffff
DAT_ce3557c:
    #data 0x0604
    #data 0xffff
DAT_ce35580:
    #data 0xff05
    #data 0x03ff
DAT_ce35584:
    #data 0xffff
    #data 0xffff
DAT_ce35588:
    #data 0xffff
    #data 0x03ff
DAT_ce3558c:
    #data 0xff07
    #data 0xffff
DAT_ce35590:
    #data 0xff08
    #data 0xffff
DAT_ce35594:
    #data 0xffff
    #data 0xffff
DAT_ce35598:
    #data 0xff09
    #data 0xffff
DAT_ce3559c:
    #data 0x0aff
    #data 0xffff
DAT_ce355a0:
    #data 0x0bff
    #data 0xff04
DAT_ce355a4:
    #data 0x0cff
    #data 0xffff
DAT_ce355a8:
    #data 0x0cff
    #data 0xffff
DAT_ce355ac:
    #data 0xffff
    #data 0xffff
DAT_ce355b0:
    #data 0x0003
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce355c0:
    #data 0x0003
    #data 0x0000
    #data 0x0001
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce355d0:
    #data 0x0002
    #data 0x9000
    #data 0x0000
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0300
DAT_ce355de:
    #data 0x0003
    #data 0x9100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce355ee:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce355fe:
    #data 0x0003
    #data 0x8100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce3560e:
    #data 0x0004
    #data 0x1100
    #data 0x0008
    #data 0x0000
    #data 0x0200
    #data 0x0100
    #data 0x0400
    #data 0x0040
    #data 0x0020
    #align4

DAT_ce35620:
    #data 0xc1a00000
DAT_ce35624:
    #data 0x3fa00000
    #data 0xc1a00000
    #data 0x3f555555
DAT_ce35630:
    #data 0xc1855555
DAT_ce35634:
    #data 0x3fa00000
    #data 0xc1a00000
    #data 0x3fa00000
DAT_ce35640:
    #data 0x00000000
DAT_ce35644:
    #data 0x00000000
DAT_ce35648:
    #data 0x41892492
DAT_ce3564c:
    #data 0xbf892492
    #data 0xc1a00000
    #data 0x3f555555
    #data 0x42092492
    #data 0xbf892492
DAT_ce35660:
    #data 0xc1a00000
DAT_ce35664:
    #data 0x3fc80000
    #data 0xc1855555
    #data 0x3fa00000
    #data 0xc1855555
    #data 0x3fa00000
    #data 0xc1855555
    #data 0x3fa00000
    #data 0xc1855555
    #data 0x3fa00000
    #data 0xc1855555
    #data 0x3fa00000
    #data 0xc1a00000
    #data 0x3f855555
PTR_ce35698:
    #data LAB_ce306ec
PTR_ce3569c:
    #data LAB_ce30046
PTR_ce356a0:
    #data LAB_ce30c28
PTR_ce356a4:
    #data LAB_ce3182e
PTR_ce356a8:
    #data LAB_ce3274c
PTR_ce356ac:
    #data LAB_ce328a0
PTR_ce356b0:
    #data LAB_ce329dc
PTR_ce356b4:
    #data LAB_ce32c82
PTR_ce356b8:
    #data LAB_ce331fe
PTR_ce356bc:
    #data LAB_ce34b30
PTR_ce356c0:
    #data LAB_ce34bf6
PTR_ce356c4:
    #data LAB_ce34de8
PTR_ce356c8:
    #data LAB_ce353dc
PTR_ce356cc:
    #data LAB_ce305b4
PTR_ce356d0:
    #data LAB_ce34790
PTR_ce356d4:
    #data LAB_ce32684
PTR_ce356d8:
    #data LAB_ce35402
PTR_ce356dc:
    #data LAB_ce35474
PTR_ce356e0:
    #data LAB_ce354a4
PTR_ce356e4:
    #data LAB_ce354e0
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000

PTR_ce356f8:
    #data LAB_ce30c1a
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    
PTR_ce35708:
    #data LAB_ce30dd8
PTR_ce3570c:
    #data LAB_ce31592
PTR_ce35710:
    #data LAB_ce315ba
PTR_ce35714:
    #data LAB_ce30c3c
PTR_ce35718:
    #data LAB_ce318fe
PTR_ce3571c:
    #data LAB_ce31c0e
PTR_ce35720:
    #data LAB_ce31bf8
PTR_ce35724:
    #data LAB_ce31878
PTR_ce35728:
    #data LAB_ce31d84
PTR_ce3572c:
    #data LAB_ce31dbe
PTR_ce35730:
    #data LAB_ce31e24
PTR_ce35734:
    #data LAB_ce31ea4
PTR_ce35738:
    #data LAB_ce31f7e
PTR_ce3573c:
    #data LAB_ce31fd4
PTR_ce35740:
    #data LAB_ce3202e
PTR_ce35744:
    #data LAB_ce32076
PTR_ce35748:
    #data LAB_ce32178
PTR_ce3574c:
    #data LAB_ce322a8
PTR_ce35750:
    #data FUN_ce322e4
PTR_ce35754:
    #data LAB_ce32340
PTR_ce35758:
    #data LAB_ce32398
PTR_ce3575c:
    #data LAB_ce32418
PTR_ce35760:
    #data FUN_ce32454
PTR_ce35764:
    #data LAB_ce32488
PTR_ce35768:
    #data LAB_ce324ec
PTR_ce3576c:
    #data LAB_ce32564
PTR_ce35770:
    #data LAB_ce325d0
PTR_ce35774:
    #data FUN_ce32662
PTR_ce35778:
    #data LAB_ce3278c
PTR_ce3577c:
    #data LAB_ce327e4
PTR_ce35780:
    #data LAB_ce32846
PTR_ce35784:
    #data LAB_ce328d8
PTR_ce35788:
    #data LAB_ce3291a
PTR_ce3578c:
    #data LAB_ce32982
PTR_ce35790:
    #data LAB_ce329ee
PTR_ce35794:
    #data LAB_ce32a14
PTR_ce35798:
    #data LAB_ce32a50
PTR_ce3579c:
    #data LAB_ce32c2e
PTR_ce357a0:
    #data LAB_ce32a62
PTR_ce357a4:
    #data LAB_ce32ac6
PTR_ce357a8:
    #data LAB_ce32b2a
PTR_ce357ac:
    #data LAB_ce32b90
PTR_ce357b0:
    #data LAB_ce32bfa
PTR_ce357b4:
    #data LAB_ce32c40
PTR_ce357b8:
    #data LAB_ce32c4e
PTR_ce357bc:
    #data LAB_ce32c94
PTR_ce357c0:
    #data LAB_ce32cb2
PTR_ce357c4:
    #data LAB_ce32d62
PTR_ce357c8:
    #data LAB_ce32d04
PTR_ce357cc:
    #data LAB_ce32d62
PTR_ce357d0:
    #data LAB_ce32d04
PTR_ce357d4:
    #data LAB_ce32d04
PTR_ce357d8:
    #data LAB_ce32d62
PTR_ce357dc:
    #data LAB_ce32dc0
PTR_ce357e0:
    #data LAB_ce32e7c
PTR_ce357e4:
    #data LAB_ce32f12
PTR_ce357e8:
    #data LAB_ce32d62
PTR_ce357ec:
    #data LAB_ce32d62
PTR_ce357f0:
    #data LAB_ce32d16
PTR_ce357f4:
    #data LAB_ce32d5c
PTR_ce357f8:
    #data LAB_ce32d74
PTR_ce357fc:
    #data LAB_ce32dba
PTR_ce35800:
    #data LAB_ce32dd2
PTR_ce35804:
    #data LAB_ce32e28
PTR_ce35808:
    #data LAB_ce32e50
PTR_ce3580c:
    #data LAB_ce32e8e
PTR_ce35810:
    #data LAB_ce32ee4
PTR_ce35814:
    #data LAB_ce32f0c
PTR_ce35818:
    #data LAB_ce32f24
PTR_ce3581c:
    #data LAB_ce32f7a
PTR_ce35820:
    #data LAB_ce32fa2
PTR_ce35824:
    #data LAB_ce32fc8
PTR_ce35828:
    #data LAB_ce3303a
PTR_ce3582c:
    #data LAB_ce33106
PTR_ce35830:
    #data LAB_ce33170
DAT_ce35834:
    #data 0x0005
    #data 0x0005
    #data 0x0005
    #data 0x0006
    #data 0x0006
    #data 0x0007
    #data 0x0007
    #data 0x0007
    #data 0x0008
    #data 0x0008
    #data 0x0008
    #data 0x0008
    #data 0x0009
    #data 0x000a
    #data 0x000a
    #data 0x000a
    #align4

PTR_ce35854:
    #data LAB_ce33212
PTR_ce35858:
    #data LAB_ce334f0
PTR_ce3585c:
    #data LAB_ce337da
PTR_ce35860:
    #data LAB_ce338d0
PTR_ce35864:
    #data LAB_ce33a44
PTR_ce35868:
    #data LAB_ce33d64
PTR_ce3586c:
    #data LAB_ce34694
PTR_ce35870:
    #data LAB_ce348ee
PTR_ce35874:
    #data LAB_ce33ff0
PTR_ce35878:
    #data LAB_ce34620
PTR_ce3587c:
    #data LAB_ce33224
PTR_ce35880:
    #data LAB_ce332be
PTR_ce35884:
    #data LAB_ce33314
PTR_ce35888:
    #data LAB_ce333d0
PTR_ce3588c:
    #data LAB_ce33450
PTR_ce35890:
    #data LAB_ce3352c
PTR_ce35894:
    #data LAB_ce335e8
PTR_ce35898:
    #data LAB_ce33638
PTR_ce3589c:
    #data LAB_ce33726
PTR_ce358a0:
    #data LAB_ce337b8
PTR_ce358a4:
    #data LAB_ce337ec
PTR_ce358a8:
    #data LAB_ce33862
PTR_ce358ac:
    #data FUN_ce338ae
PTR_ce358b0:
    #data LAB_ce3391c
PTR_ce358b4:
    #data LAB_ce3398a
PTR_ce358b8:
    #data LAB_ce339f6
PTR_ce358bc:
    #data LAB_ce33a1e
PTR_ce358c0:
    #data LAB_ce33a94
PTR_ce358c4:
    #data LAB_ce33afe
PTR_ce358c8:
    #data LAB_ce33bf8
PTR_ce358cc:
    #data FUN_ce33d24
PTR_ce358d0:
    #data LAB_ce33d76
PTR_ce358d4:
    #data LAB_ce33dd6
PTR_ce358d8:
    #data LAB_ce33e84
PTR_ce358dc:
    #data LAB_ce33f12
PTR_ce358e0:
    #data LAB_ce33fa2
PTR_ce358e4:
    #data LAB_ce34002
PTR_ce358e8:
    #data LAB_ce34068
PTR_ce358ec:
    #data FUN_ce341c6
PTR_ce358f0:
    #data LAB_ce34280
PTR_ce358f4:
    #data LAB_ce3430c
PTR_ce358f8:
    #data LAB_ce34424
PTR_ce358fc:
    #data LAB_ce34568
PTR_ce35900:
    #data LAB_ce3459e
PTR_ce35904:
    #data LAB_ce34632
PTR_ce35908:
    #data LAB_ce34672
PTR_ce3590c:
    #data LAB_ce346d0
PTR_ce35910:
    #data LAB_ce34746
PTR_ce35914:
    #data LAB_ce347a2
PTR_ce35918:
    #data LAB_ce3484c
PTR_ce3591c:
    #data FUN_ce348cc
PTR_ce35920:
    #data LAB_ce34900
PTR_ce35924:
    #data LAB_ce349d0
PTR_ce35928:
    #data LAB_ce34a16
PTR_ce3592c:
    #data LAB_ce34a82
PTR_ce35930:
    #data FUN_ce34af6
PTR_ce35934:
    #data LAB_ce34b48
PTR_ce35938:
    #data LAB_ce34b9c
PTR_ce3593c:
    #data LAB_ce34ba0
PTR_ce35940:
    #data LAB_ce34b48
PTR_ce35944:
    #data LAB_ce34c28
PTR_ce35948:
    #data LAB_ce34ca6
PTR_ce3594c:
    #data LAB_ce34d38
PTR_ce35950:
    #data LAB_ce34da2
PTR_ce35954:
    #data LAB_ce34e30
PTR_ce35958:
    #data LAB_ce34eba
PTR_ce3595c:
    #data LAB_ce35148
PTR_ce35960:
    #data LAB_ce35344
PTR_ce35964:
    #data LAB_ce34ed4
PTR_ce35968:
    #data LAB_ce34f8c
PTR_ce3596c:
    #data LAB_ce35002
PTR_ce35970:
    #data LAB_ce350a0
PTR_ce35974:
    #data LAB_ce35162
PTR_ce35978:
    #data LAB_ce351c4
PTR_ce3597c:
    #data LAB_ce35248
PTR_ce35980:
    #data LAB_ce353f4
PTR_ce35984:
    #data LAB_ce353f4
PTR_ce35988:
    #data LAB_ce353f4
PTR_ce3598c:
    #data LAB_ce353f4
PTR_ce35990:
    #data LAB_ce353f4
