;╔══════════════════════════════════════════╗
;║ S_PL2A : Storm (Ororo Munroe) Program    ║
;╚══════════════════════════════════════════╝

#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c0335b0 0x8C0335B0
#symbol loc_8c033674 0x8C033674
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c042008 0x8C042008
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
#symbol loc_8c053082 0x8C053082
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
#symbol loc_8c0559da 0x8C0559DA
#symbol loc_8c055afe 0x8C055AFE
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c055cf6 0x8C055CF6
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c09b988 0x8C09B988
#symbol loc_8c09bba4 0x8C09BBA4
#symbol loc_8c09beec 0x8C09BEEC
#symbol loc_8c09c1f4 0x8C09C1F4
#symbol loc_8c09c484 0x8C09C484
#symbol loc_8c0e2f28 0x8C0E2F28
#symbol loc_8c0e3098 0x8C0E3098
#symbol loc_8c0e3698 0x8C0E3698
#symbol loc_8c103660 0x8C103660
#symbol loc_8c1292d4 0x8C1292D4
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c26a5b8 0x8C26A5B8
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300ba,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300bc,pc),r7
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
    mov.l @(PTR_ce300c0,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b4
    mov.l @(PTR_ce300c4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b4
    mov.l @(PTR_ce300c8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b4
    mov.l @(PTR_ce300cc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b4
    bsr FUN_ce300dc
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b4
    bsr FUN_ce30194
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b4
    bsr FUN_ce30406
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b4
    bsr FUN_ce30506
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b4
    bsr FUN_ce3012c
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b4
    bsr FUN_ce3022e
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b4
    bsr FUN_ce302b0
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b4
    bsr FUN_ce3045a
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b4
    bsr FUN_ce30492
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b4
    mov.l @(PTR_ce300d0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b4
    mov.l @(PTR_ce300d4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300d8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300ba:
    #data 0x0428
    #align4

PTR_ce300bc:
    #data PTR_ce327a4
PTR_ce300c0:
    #data loc_8c054508
PTR_ce300c4:
    #data loc_8c054b34
PTR_ce300c8:
    #data loc_8c05496c
PTR_ce300cc:
    #data loc_8c054d04
PTR_ce300d0:
    #data loc_8c054184
PTR_ce300d4:
    #data loc_8c053e00
PTR_ce300d8:
    #data loc_8c0542e0

;=============================================

FUN_ce300dc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301e8,pc),r5
    mov.w @(DAT_ce301d6,pc),r6
    mov.l @(PTR_ce301ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce300fc
    mov.w @(DAT_ce301d8,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30104

LAB_ce300fc:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30104:
    mov.w @(DAT_ce301d6,pc),r5
    mov.l @(PTR_ce301f0,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce301da,pc),r0
    mov 0x05,r2
    mov.l @(PTR_ce301f4,pc),r3
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

FUN_ce3012c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301f8,pc),r5
    mov.w @(DAT_ce301dc,pc),r6
    mov.l @(PTR_ce301ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30166
    mov.w @(DAT_ce301dc,pc),r5
    mov.l @(PTR_ce301f0,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce301de,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30174
    mov.w @(DAT_ce301e0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30174
    mov.w @(DAT_ce301e2,pc),r0
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
    mov.w @(DAT_ce301da,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    mov.l @(PTR_ce301f4,pc),r3
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

FUN_ce30194:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301fc,pc),r5
    mov.w @(DAT_ce301e4,pc),r6
    mov.l @(PTR_ce301ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301ce
    mov.w @(DAT_ce301d8,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce301ce
    mov.w @(DAT_ce301de,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30206
    mov.w @(DAT_ce301e0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30206
    mov.w @(DAT_ce301e2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30200

LAB_ce301ce:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301d6:
    #data 0x0384
DAT_ce301d8:
    #data 0x040c
DAT_ce301da:
    #data 0x01e9
DAT_ce301dc:
    #data 0x0364
DAT_ce301de:
    #data 0x01f9
DAT_ce301e0:
    #data 0x01fc
DAT_ce301e2:
    #data 0x01d4
DAT_ce301e4:
    #data 0x036c
    #align4

PTR_ce301e8:
    #data DAT_ce32784
PTR_ce301ec:
    #data loc_8c054e58
PTR_ce301f0:
    #data loc_8c055c3a
PTR_ce301f4:
    #data loc_8c0530d8
PTR_ce301f8:
    #data DAT_ce3273c
PTR_ce301fc:
    #data DAT_ce32760

;=============================================

LAB_ce30200:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30206:
    mov.w @(DAT_ce30294,pc),r5
    mov.l @(PTR_ce302a0,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30296,pc),r0
    mov 0x01,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce302a4,pc),r3
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

FUN_ce3022e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce302a8,pc),r5
    mov.w @(DAT_ce30298,pc),r6
    mov.l @(PTR_ce302ac,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30268
    mov.w @(DAT_ce30298,pc),r5
    mov.l @(PTR_ce302a0,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3029a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30276
    mov.w @(DAT_ce3029c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30276
    mov.w @(DAT_ce3029e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30270

LAB_ce30268:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30270:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30276:
    mov.w @(DAT_ce30296,pc),r0
    mov 0x06,r2
    mov.l @(PTR_ce302a4,pc),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30294:
    #data 0x036c
DAT_ce30296:
    #data 0x01e9
DAT_ce30298:
    #data 0x038c
DAT_ce3029a:
    #data 0x01f9
DAT_ce3029c:
    #data 0x01fc
DAT_ce3029e:
    #data 0x01d4
    #align4

PTR_ce302a0:
    #data loc_8c055c3a
PTR_ce302a4:
    #data loc_8c0530d8
PTR_ce302a8:
    #data DAT_ce3274c
PTR_ce302ac:
    #data loc_8c054e58

;=============================================

FUN_ce302b0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3035c,pc),r5
    mov r4,r14
    mov.l @(PTR_ce30374,pc),r3
    mov 0x04,r7
    jsr @r3
    mov r15,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30358
    mov.l @(PTR_ce30378,pc),r2
    mov r15,r5
    jsr @r2
    mov r14,r4
    mova @(DAT_ce3037c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce3035e,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bf LAB_ce302f0
    mov.w @(DAT_ce30360,pc),r0
    mov.w @(DAT_ce30362,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bf LAB_ce30358

LAB_ce302f0:
    mov.w @(DAT_ce30364,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x15,r0
    bf/s LAB_ce3033a
    mov 0x00,r13
    mov.w @(DAT_ce30366,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x04,r0
    bf LAB_ce3033a
    mov.w @(DAT_ce30368,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30358
    mov.w @(DAT_ce3036a,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30358
    mov.l @(PTR_ce30380,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30358
    mov.w @(DAT_ce3036c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x11,r0
    bf LAB_ce30358
    mov.w @(DAT_ce3036e,pc),r0
    mov 0x01,r2
    mov.l r2,@(r0,r14)
    add 0xC8,r0
    mov.l @(r0,r14),r3
    add 0xFF,r3
    bra LAB_ce303d0
    mov.l r3,@(r0,r14)

LAB_ce3033a:
    mov.w @(DAT_ce30370,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3034c
    mov.w @(DAT_ce30372,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30358

LAB_ce3034c:
    mov.l @(PTR_ce30384,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30388

LAB_ce30358:
    bra LAB_ce303fc
    mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3035c:
    #data 0x0140
DAT_ce3035e:
    #data 0x041c
DAT_ce30360:
    #data 0x034a
DAT_ce30362:
    #data 0x1000
DAT_ce30364:
    #data 0x01d0
DAT_ce30366:
    #data 0x01e9
DAT_ce30368:
    #data 0x02ac
DAT_ce3036a:
    #data 0x02a8
DAT_ce3036c:
    #data 0x019e
DAT_ce3036e:
    #data 0x02e0
DAT_ce30370:
    #data 0x01f9
DAT_ce30372:
    #data 0x01d4
    #align4

PTR_ce30374:
    #data loc_8c055cf6
PTR_ce30378:
    #data loc_8c055c3a
DAT_ce3037c:
    #data 0x42892492
PTR_ce30380:
    #data loc_8c055afe
PTR_ce30384:
    #data loc_8c0559da

;=============================================

LAB_ce30388:
    mov.w @(DAT_ce304b2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce303bc
    mov.w @(DAT_ce304b4,pc),r0
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce304b6,pc),r0
    extu.w r3,r3
    shlr8 r3
    shlr2 r3
    mov.w r3,@r15
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce303b4
    mov.w @r15,r0
    mov.l @(PTR_ce304cc,pc),r1
    and 0x0F,r0
    mov.w r0,@r15
    extu.w r0,r0
    mov.b @(r0,r1),r3
    extu.b r3,r3
    mov.w r3,@r15

LAB_ce303b4:
    mov.w @r15,r2
    mov.w @(DAT_ce304b8,pc),r0
    extu.w r2,r2
    mov.l r2,@(r0,r14)

LAB_ce303bc:
    mov.w @(DAT_ce304ba,pc),r0
    mov 0x02,r3
    mov 0x01,r2
    mov.l r13,@(r0,r14)
    add 0xC8,r0
    mov.l r3,@(r0,r14)
    add 0x0C,r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce304bc,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce303d0:
    mov.w @(DAT_ce304be,pc),r0
    mov 0x10,r2
    mov.b r13,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    mov 0x04,r3
    mov.w @(DAT_ce304c0,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce304c2,pc),r0
    mov.b r3,@(r0,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce304d0,pc),r3
    mov 0x15,r5
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0

LAB_ce303fc:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30406:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304d4,pc),r5
    mov.w @(DAT_ce304c4,pc),r6
    mov.l @(PTR_ce304d8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30434
    mov.w @(DAT_ce304c4,pc),r5
    mov.l @(PTR_ce304dc,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce304bc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3043c
    mov.w @(DAT_ce304c6,pc),r0
    mov 0x01,r3
    mov.l r3,@(r0,r14)

LAB_ce30434:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3043c:
    mov.w @(DAT_ce304c2,pc),r0
    mov 0x03,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce304d0,pc),r3
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

FUN_ce3045a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304e0,pc),r3
    jsr @r3
    mov 0x08,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30474
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30474:
    mov.w @(DAT_ce304c2,pc),r0
    mov 0x08,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce304d0,pc),r3
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

FUN_ce30492:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce304e4,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce304aa
    mov.w @(DAT_ce304c8,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304e8

LAB_ce304aa:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce304b2:
    #data 0x0525
DAT_ce304b4:
    #data 0x01fa
DAT_ce304b6:
    #data 0x01d2
DAT_ce304b8:
    #data 0x02e8
DAT_ce304ba:
    #data 0x02e0
DAT_ce304bc:
    #data 0x0201
DAT_ce304be:
    #data 0x01a3
DAT_ce304c0:
    #data 0x02ac
DAT_ce304c2:
    #data 0x01e9
DAT_ce304c4:
    #data 0x037c
DAT_ce304c6:
    #data 0x02b4
DAT_ce304c8:
    #data 0x040c
    #align4

PTR_ce304cc:
    #data DAT_ce32814
PTR_ce304d0:
    #data loc_8c0530d8
PTR_ce304d4:
    #data DAT_ce32774
PTR_ce304d8:
    #data loc_8c054e58
PTR_ce304dc:
    #data loc_8c055c3a
PTR_ce304e0:
    #data loc_8c054da0
PTR_ce304e4:
    #data loc_8c054d1c

;=============================================

LAB_ce304e8:
    mov.w @(DAT_ce305d2,pc),r0
    mov 0x0B,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce305e4,pc),r3
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

FUN_ce30506:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305e8,pc),r5
    mov.w @(DAT_ce305d4,pc),r6
    mov.l @(PTR_ce305ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30540
    mov.w @(DAT_ce305d4,pc),r5
    mov.l @(PTR_ce305f0,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce305d6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3054e
    mov.w @(DAT_ce305d8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3054e
    mov.w @(DAT_ce305da,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30548

LAB_ce30540:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30548:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3054e:
    mov.w @(DAT_ce305d2,pc),r0
    mov 0x0C,r2
    mov.l @(PTR_ce305e4,pc),r3
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

FUN_ce3056c:
    sts.l PR,@-r15
    add 0xFC,r15
    bsr FUN_ce30592
    mov.l r4,@r15
    tst r0,r0
    bf LAB_ce30580
    bsr FUN_ce305f8
    mov.l @r15,r4
    tst r0,r0
    bt LAB_ce30588

LAB_ce30580:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce30588:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30592:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305f4,pc),r5
    mov.w @(DAT_ce305dc,pc),r6
    mov.l @(PTR_ce305ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce305b2
    mov.w @(DAT_ce305de,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce305ba

LAB_ce305b2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce305ba:
    mov.w @(DAT_ce305dc,pc),r5
    mov.l @(PTR_ce305f0,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce305e0,pc),r0
    mov 0x05,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305d2:
    #data 0x01e9
DAT_ce305d4:
    #data 0x0374
DAT_ce305d6:
    #data 0x01f9
DAT_ce305d8:
    #data 0x01fc
DAT_ce305da:
    #data 0x01d4
DAT_ce305dc:
    #data 0x0384
DAT_ce305de:
    #data 0x040c
DAT_ce305e0:
    #data 0x0258
    #align4

PTR_ce305e4:
    #data loc_8c0530d8
PTR_ce305e8:
    #data DAT_ce32794
PTR_ce305ec:
    #data loc_8c054e58
PTR_ce305f0:
    #data loc_8c055c3a
PTR_ce305f4:
    #data DAT_ce32784

;=============================================

FUN_ce305f8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306fc,pc),r5
    mov.w @(DAT_ce306de,pc),r6
    mov.l @(PTR_ce30700,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30632
    mov.w @(DAT_ce306e0,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30632
    mov.w @(DAT_ce306e2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30640
    mov.w @(DAT_ce306e4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30640
    mov.w @(DAT_ce306e6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3063a

LAB_ce30632:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3063a:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30640:
    mov.w @(DAT_ce306de,pc),r5
    mov.l @(PTR_ce30704,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce306e8,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov r3,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3065a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce306ea,pc),r3
    mov r4,r14
    mov.w @(DAT_ce306ec,pc),r1
    add r14,r3
    mov.b @(0x1,r3),r0
    add r14,r1
    mov.l r0,@r1
    mov.w @(DAT_ce306ee,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce30682
    mov 0x00,r12
    mov.l @(r0,r14),r3
    add 0xFF,r3
    mov.l r3,@(r0,r14)

LAB_ce30682:
    mov.w @(DAT_ce306f0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3069a
    mov.w @(DAT_ce306f2,pc),r0
    mov.l @(r0,r14),r3
    add 0xFF,r3
    tst r3,r3
    bf/s LAB_ce3069a
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306f0,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce3069a:
    mov.w @(DAT_ce306f4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce306ce
    mov.w @(DAT_ce306f6,pc),r0
    mov.l @(r0,r14),r1
    add 0xFF,r1
    cmp/pz r1
    bt/s LAB_ce306ce
    mov.l r1,@(r0,r14)
    mov.l @(PTR_ce30708,pc),r3
    mov.w @(DAT_ce306f6,pc),r1
    mov.l @r3,r0
    mov.l @(PTR_ce3070c,pc),r2
    add r14,r1
    mov.l @(0x1c,r0),r0
    and 0x1F,r0
    add 0x20,r0
    jsr @r2
    mov.l r0,@r1
    mov.l @(PTR_ce30710,pc),r3
    mov 0x01,r6
    mov 0x00,r5
    and r0,r6
    jsr @r3
    mov r14,r4

LAB_ce306ce:
    mov.w @(DAT_ce306f8,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30714
    mov.l @(r0,r14),r3
    add 0xFF,r3
    bra LAB_ce307ba
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306de:
    #data 0x036c
DAT_ce306e0:
    #data 0x040c
DAT_ce306e2:
    #data 0x01f9
DAT_ce306e4:
    #data 0x01fc
DAT_ce306e6:
    #data 0x01d4
DAT_ce306e8:
    #data 0x0258
DAT_ce306ea:
    #data 0x0150
DAT_ce306ec:
    #data 0x02a4
DAT_ce306ee:
    #data 0x02ac
DAT_ce306f0:
    #data 0x0201
DAT_ce306f2:
    #data 0x02b4
DAT_ce306f4:
    #data 0x01d0
DAT_ce306f6:
    #data 0x02b0
DAT_ce306f8:
    #data 0x02e4
    #align4

PTR_ce306fc:
    #data DAT_ce32760
PTR_ce30700:
    #data loc_8c054e58
PTR_ce30704:
    #data loc_8c055c3a
PTR_ce30708:
    #data loc_8c26823c
PTR_ce3070c:
    #data loc_8c03319e
PTR_ce30710:
    #data loc_8c0e3098

;=============================================

LAB_ce30714:
    mov.w @(DAT_ce307c6,pc),r0
    mov.l @(PTR_ce307d4,pc),r13
    mov.l @(r0,r14),r3
    add 0xFF,r3
    cmp/pz r3
    mov.l r3,@(r0,r14)
    bt LAB_ce30764
    mov 0x01,r2
    mov.w @(DAT_ce307c8,pc),r1
    mov.l r2,@(r0,r14)
    add 0x04,r0
    mov.l @(r0,r14),r3
    add r14,r1
    mov r2,r5
    mov r2,r7
    add 0x01,r3
    mov.l r3,@(r0,r14)
    mov.l @(r0,r14),r0
    and 0x03,r0
    mov.l r0,@r1
    mov.w @(DAT_ce307c8,pc),r0
    mov.l @(r0,r14),r6
    add 0x06,r6
    jsr @r13
    mov r14,r4
    mov.w @(DAT_ce307ca,pc),r0
    mov 0x04,r2
    mov.l @(r0,r14),r3
    add 0x01,r3
    mov.l r3,@(r0,r14)
    mov.l @(r0,r14),r1
    cmp/gt r2,r1
    bf/s LAB_ce3075a
    mov 0x01,r7
    mov.l r12,@(r0,r14)

LAB_ce3075a:
    mov.l @(r0,r14),r6
    mov 0x02,r5
    add 0x0A,r6
    jsr @r13
    mov r14,r4

LAB_ce30764:
    mov.w @(DAT_ce307cc,pc),r0
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce307ba
    mov.w @(DAT_ce307ce,pc),r0
    mov.w @(r0,r14),r1
    mov.w @(DAT_ce307d0,pc),r0
    mov.w @(r0,r14),r3
    cmp/eq r3,r1
    bt LAB_ce3078e
    mov.w @(DAT_ce307cc,pc),r0
    mov r14,r4
    mov 0x01,r5
    mov.l r12,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce307d8,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3078e:
    mov.w @(DAT_ce307cc,pc),r0
    mov.l @(PTR_ce307dc,pc),r3
    mov.l @(r0,r14),r1
    add 0xFF,r1
    mov.l r1,@(r0,r14)
    jsr @r3
    mov 0x06,r0
    shar r0
    mov.l r0,@r15
    mov 0x25,r0
    mov.b @(r0,r14),r6
    mov 0x00,r5
    mov.l @r15,r2
    mov 0x01,r7
    extu.b r6,r6
    mov r6,r3
    shll r6
    add r3,r6
    add 0x10,r6
    add r2,r6
    jsr @r13
    mov r14,r4

LAB_ce307ba:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307c6:
    #data 0x02d0
DAT_ce307c8:
    #data 0x02d4
DAT_ce307ca:
    #data 0x02d8
DAT_ce307cc:
    #data 0x02ec
DAT_ce307ce:
    #data 0x0158
DAT_ce307d0:
    #data 0x02f0
    #align4

PTR_ce307d4:
    #data loc_8c03544c
PTR_ce307d8:
    #data loc_8c035162
PTR_ce307dc:
    #data loc_8c1292d4

;=============================================

LAB_ce307e0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30894,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30882,pc),r0
    mov.b @(r0,r14),r4
    add 0x11,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce307fc
    add 0x06,r4

LAB_ce307fc:
    mov.w @(DAT_ce30884,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30806
    add 0x03,r4

LAB_ce30806:
    mov.l @(PTR_ce30898,pc),r3
    extu.b r4,r1
    jsr @r3
    mov 0x06,r0
    mov.l @(PTR_ce3089c,pc),r1
    shll2 r0
    extu.b r4,r4
    mov.l @(r0,r1),r2
    mov r4,r13
    mov.w @(DAT_ce30886,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30882,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce308a0,pc),r0
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce30888,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce308a4,pc),r0
    mov.w @(DAT_ce3088a,pc),r2
    mov.b @(r0,r4),r3
    mov 0x00,r4
    mov.w @(DAT_ce3088c,pc),r0
    add r14,r2
    mov.b r3,@r2
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce308a8,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce308ac,pc),r0
    mov.l @(PTR_ce308b4,pc),r2
    mov.b @(r0,r13),r6
    mov.l @(PTR_ce308b0,pc),r0
    mov.b @(r0,r13),r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30884,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3087a
    mov.w @(DAT_ce3088e,pc),r0
    mov 0x20,r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30890,pc),r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce30892,pc),r0
    extu.w r2,r2
    mov.l r2,@(r0,r14)

LAB_ce3087a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30882:
    #data 0x01e8
DAT_ce30884:
    #data 0x01fe
DAT_ce30886:
    #data 0x03f4
DAT_ce30888:
    #data 0x01a7
DAT_ce3088a:
    #data 0x01a1
DAT_ce3088c:
    #data 0x01ac
DAT_ce3088e:
    #data 0x02ec
DAT_ce30890:
    #data 0x0158
DAT_ce30892:
    #data 0x02f0
    #align4

PTR_ce30894:
    #data loc_8c052b4c
PTR_ce30898:
    #data loc_8c1292d4
PTR_ce3089c:
    #data PTR_ce326f4
PTR_ce308a0:
    #data DAT_ce32830
PTR_ce308a4:
    #data DAT_ce32824
PTR_ce308a8:
    #data loc_8c2896b0
PTR_ce308ac:
    #data DAT_ce32833
PTR_ce308b0:
    #data DAT_ce3283f
PTR_ce308b4:
    #data loc_8c034e8c

;=============================================

FUN_ce308b8:
    mov.w @(DAT_ce309a6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r13
    add 0x16,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce308d2
    mov 0x00,r4
    add 0x03,r13

LAB_ce308d2:
    mov.w @(DAT_ce309a8,pc),r0
    extu.b r13,r12
    mov.l r4,@(r0,r14)
    mov.w @(DAT_ce309a6,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce309c4,pc),r0
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce309aa,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce309c8,pc),r0
    mov.w @(DAT_ce309ac,pc),r2
    mov.b @(r0,r12),r3
    mov.w @(DAT_ce309ae,pc),r0
    add r14,r2
    mov.b r3,@r2
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce309cc,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce309d0,pc),r0
    mov.b @(r0,r12),r6
    mov.l @(PTR_ce309d4,pc),r0
    mov.l @(PTR_ce309d8,pc),r2
    mov.b @(r0,r12),r5
    jsr @r2
    mov r14,r4
    extu.b r13,r0
    cmp/eq 0x01,r0
    bf LAB_ce3094c
    mov.w @(DAT_ce309a8,pc),r0
    mov 0x01,r4
    mov.w @(DAT_ce309b2,pc),r2
    mov.l r4,@(r0,r14)
    mov.w @(DAT_ce309b0,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce30938
    mov r4,r6
    mov 0x07,r6

LAB_ce30938:
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce309b4,pc),r2
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce30946
    mov 0x0B,r5
    mov 0x06,r6

LAB_ce30946:
    mov.l @(PTR_ce309d8,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3094c:
    mov.w @(DAT_ce309b6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30956
    add 0x06,r13

LAB_ce30956:
    mov.l @(PTR_ce309dc,pc),r0
    extu.b r13,r13
    shll2 r13
    mov.l @(r0,r13),r3
    mov.w @(DAT_ce309b8,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce309ba,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3098c
    mov.w @(DAT_ce309bc,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce3097a
    mov.w @(DAT_ce309bc,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce3097a:
    mov.w @(DAT_ce309be,pc),r0
    mov 0x20,r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce309c0,pc),r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce309c2,pc),r0
    extu.w r2,r2
    bra LAB_ce3099c
    mov.l r2,@(r0,r14)

LAB_ce3098c:
    mov.w @(DAT_ce309bc,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce3099c
    mov.w @(DAT_ce309bc,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce3099c:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309a6:
    #data 0x01e8
DAT_ce309a8:
    #data 0x02c4
DAT_ce309aa:
    #data 0x01a7
DAT_ce309ac:
    #data 0x01a1
DAT_ce309ae:
    #data 0x01ac
DAT_ce309b0:
    #data 0x01fa
DAT_ce309b2:
    #data 0x2000
DAT_ce309b4:
    #data 0x1000
DAT_ce309b6:
    #data 0x01fc
DAT_ce309b8:
    #data 0x03f4
DAT_ce309ba:
    #data 0x01fe
DAT_ce309bc:
    #data 0x01d6
DAT_ce309be:
    #data 0x02ec
DAT_ce309c0:
    #data 0x0158
DAT_ce309c2:
    #data 0x02f0
    #align4

PTR_ce309c4:
    #data DAT_ce32851
PTR_ce309c8:
    #data DAT_ce3284b
PTR_ce309cc:
    #data loc_8c2896b0
PTR_ce309d0:
    #data DAT_ce32854
PTR_ce309d4:
    #data DAT_ce3285a
PTR_ce309d8:
    #data loc_8c034e8c
PTR_ce309dc:
    #data PTR_ce3270c

;=============================================

LAB_ce309e0:
    mov.w @(DAT_ce30af4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce309f2
    bsr FUN_ce308b8
    mov r14,r4

LAB_ce309f2:
    mov.w @(DAT_ce30af6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a06
    mov.w @(DAT_ce30af8,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bf LAB_ce30a0e
    bra LAB_ce30a16
    nop

LAB_ce30a06:
    mov.w @(DAT_ce30af8,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30a16

LAB_ce30a0e:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce308b8
    mov.l @r15+,r14

LAB_ce30a16:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30a1c:
    mov.w @(DAT_ce30afa,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30afc,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30a30:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30b00,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30b04,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30b08,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30b0c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30a5c
    lds.l @r15+,PR
    mov.l @(PTR_ce30b10,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30a5c:
    mov.l @(PTR_ce30b14,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30a72
    lds.l @r15+,PR
    mov.l @(PTR_ce30b18,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30a72:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30a78:
    mov.w @(DAT_ce30af4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a92
    mov.l @(PTR_ce30b1c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30b20,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30a92:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30a30
    mov.l @r15+,r14

LAB_ce30a9a:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30b24,pc),r3
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
    mov.l @(PTR_ce30b0c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30b2c
    lds.l @r15+,PR
    mov.l @(PTR_ce30b28,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30af4:
    #data 0x0201
DAT_ce30af6:
    #data 0x01fe
DAT_ce30af8:
    #data 0x01d6
DAT_ce30afa:
    #data 0x01ff
    #align4

PTR_ce30afc:
    #data PTR_ce32860
PTR_ce30b00:
    #data FUN_ce324d6
PTR_ce30b04:
    #data loc_8c04fea8
PTR_ce30b08:
    #data loc_8c050048
PTR_ce30b0c:
    #data loc_8c034dee
PTR_ce30b10:
    #data loc_8c05176e
PTR_ce30b14:
    #data loc_8c052ce2
PTR_ce30b18:
    #data loc_8c052dac
PTR_ce30b1c:
    #data loc_8c050084
PTR_ce30b20:
    #data loc_8c04ff88
PTR_ce30b24:
    #data loc_8c052c84
PTR_ce30b28:
    #data LAB_ce325b4

;=============================================

LAB_ce30b2c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30b32:
    sts.l PR,@-r15
    mov.l @(PTR_ce30c2c,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    bra LAB_ce30a9a
    lds.l @r15+,PR

LAB_ce30b42:
    mov.w @(DAT_ce30c26,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c30,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30b56:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30baa
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30c34,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30c38,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30c28,pc),r0
    mov 0x00,r4
    mov 0x61,r3
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30c3c,pc),r3
    mov 0x14,r5
    mov.l r4,@(r0,r14)
    mov 0x06,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30c40,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30baa:
    mov.w @(DAT_ce30c26,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30bba
    mov.l @(PTR_ce30c2c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30bba:
    mov 0x5C,r1
    mov.l @(PTR_ce30c44,pc),r3
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
    mov.l @(PTR_ce30c48,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c0e
    lds.l @r15+,PR
    mov.l @(PTR_ce30c4c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30c0e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30c14:
    mov r4,r3
    mov.l @(PTR_ce30c50,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c26:
    #data 0x01ff
DAT_ce30c28:
    #data 0x01f9
    #align4

PTR_ce30c2c:
    #data loc_8c0511e2
PTR_ce30c30:
    #data PTR_ce32870
PTR_ce30c34:
    #data loc_8c052b4c
PTR_ce30c38:
    #data loc_8c056de4
PTR_ce30c3c:
    #data loc_8c2896b0
PTR_ce30c40:
    #data loc_8c034e8c
PTR_ce30c44:
    #data loc_8c052c84
PTR_ce30c48:
    #data loc_8c034dee
PTR_ce30c4c:
    #data LAB_ce325b4
PTR_ce30c50:
    #data PTR_ce32880

;=============================================

LAB_ce30c54:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d9c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30d96,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30cba
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce30da0,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce30da4,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce30d98,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30c88
    mova @(DAT_ce30da8,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce30dac,pc),r0
    fmov.s @r0,fr5

LAB_ce30c88:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce30d9a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x0A,r0
    bt LAB_ce30cae
    mov.l @(PTR_ce30db0,pc),r2
    mov 0x01,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4

LAB_ce30cae:
    lds.l @r15+,PR
    mov.l @(PTR_ce30db4,pc),r3
    mov 0x21,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30cba:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30cc0:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30d9c,pc),r3
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
    cmp/pz r0
    bt LAB_ce30d24
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    mov.l @(PTR_ce30db8,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d24:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d2a:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30d9c,pc),r3
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
    bt LAB_ce30d7e
    lds.l @r15+,PR
    mov.l @(PTR_ce30dbc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d7e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d84:
    mov r4,r3
    mov.l @(PTR_ce30dc0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d96:
    #data 0x0141
DAT_ce30d98:
    #data 0x01d2
DAT_ce30d9a:
    #data 0x01d1
    #align4

PTR_ce30d9c:
    #data loc_8c034dee
DAT_ce30da0:
    #data 0xc1855555
DAT_ce30da4:
    #data 0x3e555555
DAT_ce30da8:
    #data 0x41855555
DAT_ce30dac:
    #data 0xbe555555
PTR_ce30db0:
    #data loc_8c0e3098
PTR_ce30db4:
    #data loc_8c042008
PTR_ce30db8:
    #data loc_8c034e8c
PTR_ce30dbc:
    #data LAB_ce325b4
PTR_ce30dc0:
    #data PTR_ce3288c

;=============================================

LAB_ce30dc4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ec0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30ebc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30e18
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce30ec4,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30ebe,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30df0
    mova @(DAT_ce30ec8,pc),r0
    fmov.s @r0,fr4

LAB_ce30df0:
    mov 0x5C,r0
    mov.l @(PTR_ce30ecc,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fldi0 fr4
    mov 0x01,r6
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov r6,r5
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30ed0,pc),r2
    mov 0x21,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30e18:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e1e:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30ec0,pc),r3
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
    cmp/pz r0
    bt LAB_ce30e82
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce30ed4,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e82:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30e88:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30ec0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ea2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30ed8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30ea2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30eaa:
    mov r4,r3
    mov.l @(PTR_ce30edc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ebc:
    #data 0x0141
DAT_ce30ebe:
    #data 0x01d2
    #align4

PTR_ce30ec0:
    #data loc_8c034dee
DAT_ce30ec4:
    #data 0x418c0000
DAT_ce30ec8:
    #data 0xc18c0000
PTR_ce30ecc:
    #data loc_8c0e3098
PTR_ce30ed0:
    #data loc_8c042008
PTR_ce30ed4:
    #data loc_8c034e8c
PTR_ce30ed8:
    #data LAB_ce325b4
PTR_ce30edc:
    #data PTR_ce32898

;=============================================

LAB_ce30ee0:
    mov.l @(PTR_ce31040,pc),r2
    mov 0x02,r1
    mov.b @r2,r3
    extu.b r3,r3
    cmp/ge r1,r3
    bf LAB_ce30f2c
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31036,pc),r0
    mov.b r3,@(r0,r4)
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    mov 0x64,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31044,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31038,pc),r0
    fmov.s @(r0,r4),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mova @(DAT_ce31048,pc),r0
    fmov.s @r0,fr4
    mov.b @(0x2,r4),r0
    tst r0,r0
    bt LAB_ce30f1c
    mova @(DAT_ce3104c,pc),r0
    fmov.s @r0,fr4

LAB_ce30f1c:
    mov 0x34,r0
    mov.l @(PTR_ce31050,pc),r3
    fmov.s @(r0,r4),fr3
    mov 0x00,r6
    fsub fr4,fr3
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x12,r5

LAB_ce30f2c:
    rts
    nop

LAB_ce30f30:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31054,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f54
    mov.b @(0x6,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce31050,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f54:
    mov.w @(DAT_ce3103a,pc),r0
    mov.l @(PTR_ce31058,pc),r3
    mov.b @(r0,r14),r5
    shll2 r5
    add r3,r5
    mov.w @(0x2,r5),r0
    mov.w @r5,r4
    mov r0,r5
    mov.w @(DAT_ce3103c,pc),r0
    shll8 r4
    mov.w @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce30f72
    shll8 r5
    neg r4,r4

LAB_ce30f72:
    lds r4,FPUL
    mova @(DAT_ce3105c,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce31060,pc),r0
    fmov.s @r0,fr2
    mov 0x5C,r0
    float FPUL,fr3
    lds r5,FPUL
    mov 0x5C,r1
    add r14,r1
    fmul fr2,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    float FPUL,fr3
    mova @(DAT_ce31064,pc),r0
    fmov.s @r0,fr1
    mov 0x60,r0
    fmul fr1,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr0
    fmov.s @r1,fr3
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr0
    fmov fr0,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr0
    fmov.s @r1,fr3
    fadd fr3,fr0
    fmov fr0,@(r0,r14)
    mov 0x60,r1
    add r14,r1
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr0
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr0
    fmov fr0,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr0
    fmov.s @r1,fr3
    fadd fr3,fr0
    fmov fr0,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fd4:
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
    mov.w @(DAT_ce31038,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31032
    mov.b @(0x5,r4),r0
    mov.l @(PTR_ce31068,pc),r3
    add 0x01,r0
    mov.b r0,@(0x5,r4)
    mov 0x64,r0
    fmov.s @(r0,r4),fr3
    mov 0x34,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31038,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce31032:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31036:
    #data 0x012c
DAT_ce31038:
    #data 0x041c
DAT_ce3103a:
    #data 0x0141
DAT_ce3103c:
    #data 0x0130
    #align4

PTR_ce31040:
    #data loc_8c2895f0
DAT_ce31044:
    #data 0xc1ab6db6
DAT_ce31048:
    #data 0x42d55555
DAT_ce3104c:
    #data 0xc2d55555
PTR_ce31050:
    #data loc_8c034e8c
PTR_ce31054:
    #data loc_8c034dee
PTR_ce31058:
    #data DAT_ce328a4
DAT_ce3105c:
    #data 0x47800000
DAT_ce31060:
    #data 0x3fd55555
DAT_ce31064:
    #data 0x40092492
PTR_ce31068:
    #data loc_8c0511b4

;=============================================

LAB_ce3106c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31164,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31084
    lds.l @r15+,PR
    mov.l @(PTR_ce31168,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31084:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce3116c,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31098:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce310ac
    mov.b @(0x6,r4),r0
    mov 0x00,r6
    mov.l @(PTR_ce31170,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce310ac:
    mov.l @(PTR_ce31174,pc),r3
    jmp @r3
    nop

LAB_ce310b2:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce310c6
    mov.b @(0x6,r4),r0
    mov 0x01,r6
    mov.l @(PTR_ce31170,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce310c6:
    mov.l @(PTR_ce31174,pc),r3
    jmp @r3
    nop

LAB_ce310cc:
    mov.w @(DAT_ce3115c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31178,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce310e0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce311ba
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3117c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31180,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3115e,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31170,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31160,pc),r0
    mov 0x30,r2
    mov.l @(PTR_ce31184,pc),r3
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
    mov.w @(DAT_ce31162,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce3118c
    fldi0 fr15
    mov.w @(DAT_ce31162,pc),r0
    mov.l @(PTR_ce31188,pc),r2
    mov.b r13,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    bra LAB_ce311b8
    mov 0x6C,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3115c:
    #data 0x01e9
DAT_ce3115e:
    #data 0x01a3
DAT_ce31160:
    #data 0x01a1
DAT_ce31162:
    #data 0x01f9
    #align4

PTR_ce31164:
    #data loc_8c046c8a
PTR_ce31168:
    #data LAB_ce325b4
PTR_ce3116c:
    #data PTR_ce328f4
PTR_ce31170:
    #data loc_8c034e8c
PTR_ce31174:
    #data loc_8c034dee
PTR_ce31178:
    #data PTR_ce32908
PTR_ce3117c:
    #data loc_8c05218a
PTR_ce31180:
    #data loc_8c056de4
PTR_ce31184:
    #data loc_8c2896b0
PTR_ce31188:
    #data loc_8c05115a

;=============================================

LAB_ce3118c:
    mov.l @(DAT_ce31278,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce3127c,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce31280,pc),r1
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

LAB_ce311b8:
    fmov fr15,@(r0,r14)

LAB_ce311ba:
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
    mov.w @(DAT_ce31270,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce31208
    mov r14,r4
    mov.w @(DAT_ce31270,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce31208:
    mov.l @(PTR_ce31284,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3123a
    mov.w @(DAT_ce31272,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3122c
    lds.l @r15+,PR
    mov.l @(PTR_ce31288,pc),r2
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3122c:
    lds.l @r15+,PR
    mov.l @(PTR_ce3128c,pc),r2
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3123a:
    mov.w @(DAT_ce31274,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31254
    mov.l @(PTR_ce31290,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31276,pc),r0
    mov 0x10,r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)

LAB_ce31254:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3125e:
    mov r4,r3
    mov.l @(PTR_ce31294,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31270:
    #data 0x041c
DAT_ce31272:
    #data 0x01f9
DAT_ce31274:
    #data 0x0141
DAT_ce31276:
    #data 0x027b
    #align4

DAT_ce31278:
    #data 0x41800000
DAT_ce3127c:
    #data 0x41000000
DAT_ce31280:
    #data 0x42800000
PTR_ce31284:
    #data loc_8c034dee
PTR_ce31288:
    #data loc_8c05176e
PTR_ce3128c:
    #data LAB_ce325b4
PTR_ce31290:
    #data loc_8c09b988
PTR_ce31294:
    #data PTR_ce3293c

;=============================================

LAB_ce31298:
    mov.w @(DAT_ce313a0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce312b6
    mov.w @(DAT_ce313a4,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce313a2,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce312b6:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce313b4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce313b8,pc),r2
    mov 0x01,r5
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
    mov.w @(DAT_ce313a6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce312f2
    mov 0x00,r13
    mov.w @(DAT_ce313a6,pc),r0
    mov.l @(PTR_ce313bc,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce312f2:
    mov.w @(DAT_ce313a8,pc),r0
    mov 0x5D,r2
    mov.l @(PTR_ce313c0,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x04,r6
    mov.b @(0x2,r14),r0
    mov 0x15,r5
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x30,r0
    mov.w r0,@(0x1c,r14)
    mov 0x10,r0
    mov.w r0,@(0x1e,r14)
    mov 0x02,r2
    mov.w @(DAT_ce313aa,pc),r0
    mov.l r2,@(r0,r14)
    add 0x04,r0
    mov.l r13,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @(PTR_ce313c4,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31338:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce313ac,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce313ae,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce313a0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3135a
    bra LAB_ce3135c
    mov 0x02,r3

LAB_ce3135a:
    mov 0x00,r3

LAB_ce3135c:
    mov.w @(DAT_ce313b0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce313c8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce313b2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31398
    mov.w @(DAT_ce313a4,pc),r0
    mov 0x00,r4
    fldi0 fr3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce313d0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce313b2,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce313cc,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31398:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce313a0:
    #data 0x0255
DAT_ce313a2:
    #data 0x00ff
DAT_ce313a4:
    #data 0x03f0
DAT_ce313a6:
    #data 0x01f9
DAT_ce313a8:
    #data 0x01a1
DAT_ce313aa:
    #data 0x02c8
DAT_ce313ac:
    #data 0x03f8
DAT_ce313ae:
    #data 0x0328
DAT_ce313b0:
    #data 0x03f1
DAT_ce313b2:
    #data 0x0141
    #align4

PTR_ce313b4:
    #data loc_8c05218a
PTR_ce313b8:
    #data loc_8c035162
PTR_ce313bc:
    #data loc_8c05115a
PTR_ce313c0:
    #data loc_8c2896b0
PTR_ce313c4:
    #data loc_8c034e8c
PTR_ce313c8:
    #data loc_8c034dee
DAT_ce313cc:
    #data 0x43520000
PTR_ce313d0:
    #data loc_8c050834

;=============================================

LAB_ce313d4:
    mov.w @(DAT_ce314f2,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce314f4,pc),r0
    mov.b r2,@(r0,r14)
    bsr FUN_ce314a6
    mov r14,r4
    mov.l @(PTR_ce31508,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31418
    mov.b @(0x6,r14),r0
    mov 0x01,r5
    mov.l @(PTR_ce3150c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31510,pc),r2
    mov r14,r4
    mov 0x1B,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31418:
    mov.w @(DAT_ce314f6,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce3144c
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce314f8,pc),r0
    mov.w @(DAT_ce314fa,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31442
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bf LAB_ce31442
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31442:
    lds.l @r15+,PR
    mov.l @(PTR_ce31514,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3144c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31452:
    mov.w @(DAT_ce314f2,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce314f4,pc),r0
    mov.l @(PTR_ce31508,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce314a0
    mov.w @(DAT_ce314fc,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce314fe,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31500,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31496
    lds.l @r15+,PR
    mov.l @(PTR_ce31518,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31496:
    lds.l @r15+,PR
    mov.l @(PTR_ce3151c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce314a0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce314a6:
    mov.w @(DAT_ce31502,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(r0,r14),r3
    add 0xFF,r3
    tst r3,r3
    bf/s LAB_ce314dc
    mov.l r3,@(r0,r14)
    mov 0x02,r4
    mov.l r4,@(r0,r14)
    add 0x04,r0
    mov.l @(r0,r14),r3
    add 0x01,r3
    cmp/gt r4,r3
    mov.l r3,@(r0,r14)
    bf/s LAB_ce314ce
    mov 0x01,r7
    mov.w @(DAT_ce31504,pc),r0
    mov 0x00,r2
    mov.l r2,@(r0,r14)

LAB_ce314ce:
    mov.w @(DAT_ce31504,pc),r0
    mov r14,r4
    mov.l @(PTR_ce31520,pc),r3
    mov 0x00,r5
    mov.l @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce314dc:
    rts
    mov.l @r15+,r14

LAB_ce314e0:
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

DAT_ce314f2:
    #data 0x03f8
DAT_ce314f4:
    #data 0x0328
DAT_ce314f6:
    #data 0x0141
DAT_ce314f8:
    #data 0x034e
DAT_ce314fa:
    #data 0x0360
DAT_ce314fc:
    #data 0x03f9
DAT_ce314fe:
    #data 0x0327
DAT_ce31500:
    #data 0x01f9
DAT_ce31502:
    #data 0x02c8
DAT_ce31504:
    #data 0x02cc
    #align4

PTR_ce31508:
    #data loc_8c034dee
PTR_ce3150c:
    #data loc_8c035162
PTR_ce31510:
    #data loc_8c034e8c
PTR_ce31514:
    #data loc_8c09beec
PTR_ce31518:
    #data loc_8c05176e
PTR_ce3151c:
    #data LAB_ce325b4
PTR_ce31520:
    #data loc_8c03544c
PTR_ce31524:
    #data PTR_ce3294c

;=============================================

LAB_ce31528:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31646,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31554
    mova @(DAT_ce3165c,pc),r0
    mov.l @(PTR_ce31660,pc),r3
    fmov.s @r0,fr3
    mov.w @(DAT_ce31648,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce31554:
    mov.l @(PTR_ce31664,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31668,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3164a,pc),r0
    mov.w @(r0,r14),r4
    mov.w @(DAT_ce3164c,pc),r0
    extu.w r4,r4
    mov.b @(r0,r14),r2
    shlr8 r4
    tst r2,r2
    bt/s LAB_ce31578
    shlr2 r4
    mov.w @(DAT_ce3164e,pc),r0
    mov.l @(r0,r14),r4

LAB_ce31578:
    mov.w @(DAT_ce31650,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31584
    mov 0x18,r5
    mov 0x08,r5

LAB_ce31584:
    mov 0x0F,r3
    and r3,r4
    tst r4,r4
    bt LAB_ce31592
    mov.l @(PTR_ce3166c,pc),r0
    mov.b @(r0,r4),r5
    extu.b r5,r5

LAB_ce31592:
    mov.w @(DAT_ce31652,pc),r0
    mov 0x00,r4
    mov.l r5,@(r0,r14)
    mov 0x22,r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce31654,pc),r0
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce31656,pc),r0
    add 0x54,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31670,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31658,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce315d0
    mov r4,r13
    mov 0x0A,r13

LAB_ce315d0:
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce31674,pc),r3
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce315e0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31678,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3163e
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    mov 0x00,r0
    mov.w r0,@(0x1e,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    bsr FUN_ce31896
    mov r14,r4
    mov 0x22,r0
    mov.b @(r0,r14),r13
    mov.w @(DAT_ce31650,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31624
    extu.b r13,r13
    mov 0x20,r0
    sub r13,r0
    mov 0x1F,r13
    and r0,r13

LAB_ce31624:
    shlr2 r13
    mov.l @(PTR_ce31674,pc),r2
    mov r13,r6
    mov 0x16,r5
    add 0x01,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3167c,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3163e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31646:
    #data 0x01f9
DAT_ce31648:
    #data 0x041c
DAT_ce3164a:
    #data 0x0340
DAT_ce3164c:
    #data 0x0525
DAT_ce3164e:
    #data 0x02e8
DAT_ce31650:
    #data 0x0130
DAT_ce31652:
    #data 0x02dc
DAT_ce31654:
    #data 0x02a8
DAT_ce31656:
    #data 0x01a1
DAT_ce31658:
    #data 0x02e0
    #align4

DAT_ce3165c:
    #data 0x40092492
PTR_ce31660:
    #data loc_8c05115a
PTR_ce31664:
    #data loc_8c053082
PTR_ce31668:
    #data loc_8c056de4
PTR_ce3166c:
    #data DAT_ce3269c
PTR_ce31670:
    #data loc_8c2896b0
PTR_ce31674:
    #data loc_8c034e8c
PTR_ce31678:
    #data loc_8c034dee
PTR_ce3167c:
    #data loc_8c0e3698

;=============================================

LAB_ce31680:
    mov.w @(DAT_ce3178a,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bt/s LAB_ce316b4
    fldi0 fr4
    mova @(DAT_ce31798,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce3178c,pc),r0
    fmov.s @(r0,r4),fr2
    mov 0x38,r0
    fmov.s @(r0,r4),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bt LAB_ce316d2
    mov.w @(DAT_ce3178c,pc),r0
    mov 0x00,r3
    fmov.s @(r0,r4),fr2
    mov 0x38,r0
    fmov fr2,@(r0,r4)
    mov.w @(DAT_ce3178e,pc),r0
    mov.b r3,@(r0,r4)

LAB_ce316b4:
    mov 0x04,r0
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    mov 0x15,r5
    fmov fr4,@(r0,r4)
    mov 0x14,r6

LAB_ce316cc:
    mov.l @(PTR_ce3179c,pc),r3
    jmp @r3
    nop

LAB_ce316d2:
    mov.w @(DAT_ce31790,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3173a
    mov.b @(r0,r4),r0
    tst 0x11,r0
    bt LAB_ce3171e
    mov.b @(0x6,r4),r0
    mov 0x10,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x20,r0
    mov.w r0,@(0x1c,r4)
    mov.w @(DAT_ce31792,pc),r0
    mov.l r3,@(r0,r4)
    mova @(DAT_ce317a0,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce31794,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31700
    mova @(DAT_ce317a4,pc),r0
    fmov.s @r0,fr5

LAB_ce31700:
    mov 0x5C,r0
    fmov fr5,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce317a8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x0B,r6
    fmov fr3,@(r0,r4)
    mova @(DAT_ce317ac,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    bra LAB_ce316cc
    mov 0x16,r5

LAB_ce3171e:
    mova @(DAT_ce317b0,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    mov 0x68,r0
    fneg fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r4)
    mov 0x60,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fneg fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r4)

LAB_ce3173a:
    mov 0x38,r0
    mov.l @(PTR_ce317b4,pc),r3
    mov 0x5C,r1
    fmov.s @(r0,r4),fr4
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
    fmov.s @r3,fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31784
    fmov fr4,@(r0,r4)

LAB_ce31784:
    mov.l @(PTR_ce317b8,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3178a:
    #data 0x01f5
DAT_ce3178c:
    #data 0x041c
DAT_ce3178e:
    #data 0x01f9
DAT_ce31790:
    #data 0x019e
DAT_ce31792:
    #data 0x02ac
DAT_ce31794:
    #data 0x0130
    #align4

DAT_ce31798:
    #data 0xc2092492
PTR_ce3179c:
    #data loc_8c034e8c
DAT_ce317a0:
    #data 0x3fd55555
DAT_ce317a4:
    #data 0xbfd55555
DAT_ce317a8:
    #data 0x41ab6db6
DAT_ce317ac:
    #data 0xbf892492
DAT_ce317b0:
    #data 0x41c00000
PTR_ce317b4:
    #data loc_8c26a5b8
PTR_ce317b8:
    #data loc_8c034dee

;=============================================

LAB_ce317bc:
    mov.w @(DAT_ce318c4,pc),r0
    mov 0x10,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l r3,@(r0,r14)
    mov.l @(PTR_ce318cc,pc),r3
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
    mova @(DAT_ce318d0,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce318c6,pc),r0
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fcmp/gt fr2,fr1
    bt LAB_ce3182e
    mov.w @(DAT_ce318c6,pc),r0
    mov 0x00,r3
    mov r14,r4
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce318c8,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce325b4
    mov.l @r15+,r14

LAB_ce3182e:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce31844
    lds.l @r15+,PR
    mov.l @(PTR_ce318d4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31844:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3184a:
    mov.w @(DAT_ce318c4,pc),r0
    mov 0x10,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l r3,@(r0,r14)
    mov.l @(PTR_ce318cc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31890
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce318c8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31888
    lds.l @r15+,PR
    mov.l @(PTR_ce318d4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31888:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce325b4
    mov.l @r15+,r14

LAB_ce31890:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31896:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce318d8,pc),r3
    mov.w @(DAT_ce318ca,pc),r5
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x60,r1
    add r14,r1
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce318c4:
    #data 0x02ac
DAT_ce318c6:
    #data 0x041c
DAT_ce318c8:
    #data 0x01f9
DAT_ce318ca:
    #data 0x0578
    #align4

PTR_ce318cc:
    #data loc_8c034dee
DAT_ce318d0:
    #data 0xc2092492
PTR_ce318d4:
    #data loc_8c05176e
PTR_ce318d8:
    #data loc_8c033674

;=============================================

LAB_ce318dc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31958
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce319d0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce319c8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31906
    mov.l @(PTR_ce319d4,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31906:
    mov.w @(DAT_ce319ca,pc),r0
    mov 0x01,r3
    mov 0x00,r13
    fldi0 fr4
    mov.b r3,@(r0,r14)
    add 0xFB,r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r13,@(r0,r14)
    add 0xD8,r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce319ce,pc),r0
    mov.w @(DAT_ce319cc,pc),r3
    mov.l r3,@(r0,r14)
    mov 0x24,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce319d8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce319dc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov r13,r6
    mov.l @(PTR_ce319e0,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x1A,r5
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31958:
    mov 0x5C,r1
    mov.l @(PTR_ce319e4,pc),r3
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
    bt LAB_ce319ae
    lds.l @r15+,PR
    mov.l @(PTR_ce319e8,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce319ae:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce319b6:
    mov r4,r3
    mov.l @(PTR_ce319ec,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319c8:
    #data 0x01f9
DAT_ce319ca:
    #data 0x0201
DAT_ce319cc:
    #data 0x0384
DAT_ce319ce:
    #data 0x02b4
    #align4

PTR_ce319d0:
    #data loc_8c05218a
PTR_ce319d4:
    #data loc_8c05115a
DAT_ce319d8:
    #data 0x414db6db
DAT_ce319dc:
    #data 0xbe892492
PTR_ce319e0:
    #data loc_8c034e8c
PTR_ce319e4:
    #data loc_8c034dee
PTR_ce319e8:
    #data loc_8c05176e
PTR_ce319ec:
    #data PTR_ce32960

;=============================================

LAB_ce319f0:
    mov.w @(DAT_ce31abe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31a0c
    mov.w @(DAT_ce31ac2,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31ac0,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31a0c:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31ad0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x28,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5A,r3
    mov.w @(DAT_ce31ac4,pc),r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31ad4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31ad8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31adc,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce31ae0,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31ac6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31a5e
    mova @(DAT_ce31ae4,pc),r0
    fmov.s @r0,fr4

LAB_ce31a5e:
    mov 0x5C,r0
    mov.l @(PTR_ce31aec,pc),r3
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31ae8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fldi0 fr4
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x17,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31ac8,pc),r0
    mov 0x60,r2
    mov.l @(PTR_ce31af0,pc),r3
    mov 0x01,r5
    mov.l r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31af4,pc),r2
    mov r14,r4
    mov 0x01,r7
    mov 0x12,r6
    mov 0x03,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a9c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31aca,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31acc,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31abe,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31af8
    bra LAB_ce31afa
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31abe:
    #data 0x0255
DAT_ce31ac0:
    #data 0x00ff
DAT_ce31ac2:
    #data 0x03f0
DAT_ce31ac4:
    #data 0x01a1
DAT_ce31ac6:
    #data 0x01d2
DAT_ce31ac8:
    #data 0x02e4
DAT_ce31aca:
    #data 0x03f8
DAT_ce31acc:
    #data 0x0328
    #align4

PTR_ce31ad0:
    #data loc_8c05218a
PTR_ce31ad4:
    #data loc_8c2896b0
PTR_ce31ad8:
    #data loc_8c053082
PTR_ce31adc:
    #data loc_8c05115a
DAT_ce31ae0:
    #data 0x40d55555
DAT_ce31ae4:
    #data 0xc0d55555
DAT_ce31ae8:
    #data 0x40892492
PTR_ce31aec:
    #data loc_8c034e8c
PTR_ce31af0:
    #data loc_8c035162
PTR_ce31af4:
    #data loc_8c03544c

;=============================================

LAB_ce31af8:
    mov 0x00,r3

LAB_ce31afa:
    mov.w @(DAT_ce31c0c,pc),r0
    mov 0x60,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31c0e,pc),r0
    mov.l @(PTR_ce31c1c,pc),r3
    mov.l r2,@(r0,r14)
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
    bf LAB_ce31b7a
    mov.w @(DAT_ce31c10,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31c28,pc),r3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce31c20,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31c24,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31b7a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b82:
    mov.w @(DAT_ce31c12,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov 0x60,r3
    mov.w @(DAT_ce31c14,pc),r0
    mov.b r2,@(r0,r4)
    add 0xBC,r0
    mov.l r3,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31bae
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x20,r0
    mov.w r0,@(0x1c,r4)
    mov 0x10,r0
    mov.w r0,@(0x1e,r4)

LAB_ce31bae:
    mov.l @(PTR_ce31c1c,pc),r3
    jmp @r3
    nop

LAB_ce31bb4:
    mov.w @(DAT_ce31c12,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x60,r3
    mov.w @(DAT_ce31c14,pc),r0
    mov.b r2,@(r0,r14)
    add 0xBC,r0
    mov.l r3,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31bde
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31bde:
    mov.w @(DAT_ce31c16,pc),r0
    mov.w @(DAT_ce31c18,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31bfc
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bf LAB_ce31bfc
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31bfc:
    mov.l @(PTR_ce31c2c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31c1c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c0c:
    #data 0x03f1
DAT_ce31c0e:
    #data 0x02e4
DAT_ce31c10:
    #data 0x03f0
DAT_ce31c12:
    #data 0x03f8
DAT_ce31c14:
    #data 0x0328
DAT_ce31c16:
    #data 0x034e
DAT_ce31c18:
    #data 0x0360
    #align4

PTR_ce31c1c:
    #data loc_8c034dee
DAT_ce31c20:
    #data 0xc2ad5555
DAT_ce31c24:
    #data 0x432b6db6
PTR_ce31c28:
    #data loc_8c050834
PTR_ce31c2c:
    #data loc_8c09c1f4

;=============================================

LAB_ce31c30:
    mov.w @(DAT_ce31d2c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x60,r3
    mov.w @(DAT_ce31d2e,pc),r0
    mov.b r2,@(r0,r14)
    add 0xBC,r0
    mov.l r3,@(r0,r14)
    mov.l @(PTR_ce31d38,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c76
    mov.w @(DAT_ce31d30,pc),r0
    mov 0x00,r4
    mov 0x20,r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31d32,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    add 0xBC,r0
    mov.l r3,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31d3c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c76:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31c7c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce31d60
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31d40,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31d44,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31d34,pc),r0
    mov 0x5B,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31d48,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31d36,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce31cec
    fldi0 fr15
    mov.w @(DAT_ce31d36,pc),r0
    mov.l @(PTR_ce31d4c,pc),r2
    mov.b r13,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    bra LAB_ce31d18
    mov 0x6C,r0

LAB_ce31cec:
    mov.l @(DAT_ce31d50,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce31d54,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce31d58,pc),r1
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

LAB_ce31d18:
    fmov fr15,@(r0,r14)
    mov 0x15,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce31d5c,pc),r3
    mov r6,r5
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d2c:
    #data 0x03f8
DAT_ce31d2e:
    #data 0x0328
DAT_ce31d30:
    #data 0x03f9
DAT_ce31d32:
    #data 0x0327
DAT_ce31d34:
    #data 0x01a1
DAT_ce31d36:
    #data 0x01f9
    #align4

PTR_ce31d38:
    #data loc_8c034dee
PTR_ce31d3c:
    #data loc_8c05176e
PTR_ce31d40:
    #data loc_8c05218a
PTR_ce31d44:
    #data loc_8c056de4
PTR_ce31d48:
    #data loc_8c2896b0
PTR_ce31d4c:
    #data loc_8c05115a
DAT_ce31d50:
    #data 0x41800000
DAT_ce31d54:
    #data 0x41000000
DAT_ce31d58:
    #data 0x42800000
PTR_ce31d5c:
    #data loc_8c034e8c

;=============================================

LAB_ce31d60:
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
    mov.w @(DAT_ce31e5e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce31dae
    mov r14,r4
    mov.w @(DAT_ce31e5e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce31dae:
    mov.l @(PTR_ce31e64,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31dde
    mov.w @(DAT_ce31e60,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31dd2
    lds.l @r15+,PR
    mov.l @(PTR_ce31e68,pc),r2
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31dd2:
    lds.l @r15+,PR
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    bra LAB_ce325b4
    mov.l @r15+,r14

LAB_ce31dde:
    mov.w @(DAT_ce31e62,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31df6
    mov.b r13,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31e6c,pc),r3
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31df6:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31e00:
    rts
    nop

LAB_ce31e04:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31e2a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce31e60,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31e70,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e2a:
    mov.l @(PTR_ce31e64,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e3e
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce325b4
    mov.l @r15+,r14

LAB_ce31e3e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e44:
    rts
    nop

LAB_ce31e48:
    rts
    nop

LAB_ce31e4c:
    mov r4,r3
    mov.l @(PTR_ce31e74,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e5e:
    #data 0x041c
DAT_ce31e60:
    #data 0x01f9
DAT_ce31e62:
    #data 0x0141
    #align4

PTR_ce31e64:
    #data loc_8c034dee
PTR_ce31e68:
    #data loc_8c05176e
PTR_ce31e6c:
    #data loc_8c09bba4
PTR_ce31e70:
    #data loc_8c034e8c
PTR_ce31e74:
    #data PTR_ce32974

;=============================================

LAB_ce31e78:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31f54,pc),r3
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
    mov.w @(DAT_ce31f4a,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31f4c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f58,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31f4e,pc),r0
    mov 0x60,r3
    mov 0x05,r6
    mov r14,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31f5c,pc),r3
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
    mov.l @(PTR_ce31f60,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31ee6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce31f64,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31f50,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31f22
    mov.b @(0x6,r14),r0
    mov 0x02,r5
    mov.l @(PTR_ce31f68,pc),r3
    mov 0x0A,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r7
    jsr @r3
    mov r14,r4
    mova @(DAT_ce31f6c,pc),r0
    mov.l @(PTR_ce31f74,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce31f70,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31f22:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31f2a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31f64,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31f42
    mov.l @r15,r4
    add 0x04,r15
    bra LAB_ce325b4
    lds.l @r15+,PR

LAB_ce31f42:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f4a:
    #data 0x01f9
DAT_ce31f4c:
    #data 0x041c
DAT_ce31f4e:
    #data 0x01a1
DAT_ce31f50:
    #data 0x0141
    #align4

PTR_ce31f54:
    #data loc_8c05218a
PTR_ce31f58:
    #data loc_8c05115a
PTR_ce31f5c:
    #data loc_8c2896b0
PTR_ce31f60:
    #data loc_8c034e8c
PTR_ce31f64:
    #data loc_8c034dee
PTR_ce31f68:
    #data loc_8c03544c
DAT_ce31f6c:
    #data 0x40a00000
DAT_ce31f70:
    #data 0x431e9249
PTR_ce31f74:
    #data loc_8c050ea4

;=============================================

LAB_ce31f78:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce32008
    mov 0x00,r12
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce320b4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce320b8,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce320aa,pc),r0
    mov 0x0D,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce320bc,pc),r3
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
    mov.l @(DAT_ce320c0,pc),r1
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce320c4,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr1
    fsts FPUL,fr2
    fdiv fr2,fr1
    fmov fr1,@(r0,r14)
    mov.l @(DAT_ce320c8,pc),r1
    mov 0x6C,r0
    fmov.s @(r0,r14),fr0
    lds r1,FPUL
    fldi0 fr3
    fsts FPUL,fr1
    fdiv fr1,fr0
    fmov fr0,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce320ac,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce31ffe
    mov 0x08,r13
    mov 0x07,r13

LAB_ce31ffe:
    mov.l @(PTR_ce320cc,pc),r3
    mov 0x14,r5
    mov r13,r6
    jsr @r3
    mov r14,r4

LAB_ce32008:
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
    mov.w @(DAT_ce320ae,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce32056
    mov r14,r4
    mov.w @(DAT_ce320ae,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce32056:
    mov.l @(PTR_ce320d0,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32070
    lds.l @r15+,PR
    mov.l @(PTR_ce320d4,pc),r3
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32070:
    mov.w @(DAT_ce320b0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3208e
    mov.w @(DAT_ce320b2,pc),r3
    mov r3,r0
    nop
    add 0x42,r0
    mov.l @(PTR_ce320d8,pc),r2
    mov.b @(r0,r14),r5
    add r3,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce320b0,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce3208e:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32098:
    mov r4,r3
    mov.l @(PTR_ce320dc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320aa:
    #data 0x01a1
DAT_ce320ac:
    #data 0x01a3
DAT_ce320ae:
    #data 0x041c
DAT_ce320b0:
    #data 0x0141
DAT_ce320b2:
    #data 0x00ff
    #align4

PTR_ce320b4:
    #data loc_8c05218a
PTR_ce320b8:
    #data loc_8c056de4
PTR_ce320bc:
    #data loc_8c2896b0
DAT_ce320c0:
    #data 0x41800000
DAT_ce320c4:
    #data 0x41000000
DAT_ce320c8:
    #data 0x42800000
PTR_ce320cc:
    #data loc_8c034e8c
PTR_ce320d0:
    #data loc_8c034dee
PTR_ce320d4:
    #data loc_8c05176e
PTR_ce320d8:
    #data loc_8c09c484
PTR_ce320dc:
    #data PTR_ce32980

;=============================================

LAB_ce320e0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce321fc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(DAT_ce32200,pc),r1
    mov 0x02,r2
    mov.w @(DAT_ce321f6,pc),r0
    lds r1,FPUL
    mov.b r2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32204,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce321f8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32118
    mova @(DAT_ce32208,pc),r0
    fmov.s @r0,fr4

LAB_ce32118:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce3220c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x5C,r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32210,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce321fa,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32214,pc),r3
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
    mov.l @(PTR_ce32218,pc),r2
    mov r14,r4
    mov 0x18,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32166:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3221c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce32220,pc),r3
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
    bt LAB_ce321ce
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32224,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32218,pc),r2
    mov r14,r4
    mov 0x19,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce321ce:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce321d4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3221c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321ee
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32228,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce321ee:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce321f6:
    #data 0x01f9
DAT_ce321f8:
    #data 0x01d2
DAT_ce321fa:
    #data 0x01a1
    #align4

PTR_ce321fc:
    #data loc_8c035162
DAT_ce32200:
    #data 0x43092492
DAT_ce32204:
    #data 0x41f00000
DAT_ce32208:
    #data 0xc1f00000
DAT_ce3220c:
    #data 0xbe892492
DAT_ce32210:
    #data 0xbf4db6db
PTR_ce32214:
    #data loc_8c2896b0
PTR_ce32218:
    #data loc_8c034e8c
PTR_ce3221c:
    #data loc_8c034dee
PTR_ce32220:
    #data loc_8c052ce2
PTR_ce32224:
    #data loc_8c0511b4
PTR_ce32228:
    #data loc_8c051854

;=============================================

LAB_ce3222c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32322,pc),r0
    mov r4,r14
    mov.w @(DAT_ce32324,pc),r3
    mov 0x00,r4
    mov.b @(r0,r14),r0
    add r14,r3
    mov.l @(PTR_ce32338,pc),r2
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
    bt/s LAB_ce3228e
    mov.l r1,@r15
    mov.w @(DAT_ce32326,pc),r0
    mov.w @(DAT_ce32328,pc),r3
    mov.w @(r0,r14),r5
    extu.w r5,r5
    and r3,r5
    tst r5,r5
    bt LAB_ce3228e
    shlr8 r5
    mov 0x22,r0
    shlr2 r5
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce3232a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3228e
    mov.l @(PTR_ce3233c,pc),r1
    jsr @r1
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3228e
    mov r0,r4
    mov.w @(DAT_ce3232c,pc),r3
    mov.l @r15,r2
    mov.w @(DAT_ce3232e,pc),r0
    add r3,r2
    mov.b r2,@(r0,r14)

LAB_ce3228e:
    mov r4,r0
    nop
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3229a:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x22,r0
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce322be
    mov.w @(DAT_ce32330,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.w @(DAT_ce32332,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)

LAB_ce322be:
    mov.w @(DAT_ce3232e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x3F,r0
    bf LAB_ce322d0
    mov.l @(PTR_ce32340,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4

LAB_ce322d0:
    mov.w @(DAT_ce3232e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x3F,r0
    bt/s LAB_ce322e2
    mov 0x00,r13
    mov 0x40,r0
    mov.w r0,@(0x1c,r14)
    mov 0x01,r13

LAB_ce322e2:
    mov r13,r5
    shll r5
    mov r13,r3
    mov.l @(PTR_ce32344,pc),r2
    add r3,r5
    mov.l @(PTR_ce32348,pc),r3
    shll2 r5
    add r2,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32334,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce3234c,pc),r3
    mov 0x00,r5
    mov.b r2,@(r0,r14)
    mov 0x05,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3232e,pc),r0
    mov 0x0F,r5
    mov.l @(PTR_ce32350,pc),r2
    mov.b @(r0,r14),r0
    and 0x3F,r0
    mov r0,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32354,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32322:
    #data 0x01f9
DAT_ce32324:
    #data 0x01fe
DAT_ce32326:
    #data 0x01fa
DAT_ce32328:
    #data 0x0c00
DAT_ce3232a:
    #data 0x01a3
DAT_ce3232c:
    #data 0x00ff
DAT_ce3232e:
    #data 0x01f7
DAT_ce32330:
    #data 0x0130
DAT_ce32332:
    #data 0x01d2
DAT_ce32334:
    #data 0x01a0
    #align4

PTR_ce32338:
    #data DAT_ce3298c
PTR_ce3233c:
    #data loc_8c045790
PTR_ce32340:
    #data loc_8c0e2f28
PTR_ce32344:
    #data DAT_ce329ac
PTR_ce32348:
    #data loc_8c103660
PTR_ce3234c:
    #data loc_8c02fec4
PTR_ce32350:
    #data loc_8c034e8c
PTR_ce32354:
    #data loc_8c056f2a

;=============================================

LAB_ce32358:
    mov.w @(DAT_ce32462,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce32474,pc),r12
    extu.b r0,r0
    tst 0x3F,r0
    bf/s LAB_ce323d6
    mov 0x00,r13
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32392
    mov.w @(DAT_ce32464,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3238e
    bra LAB_ce324b2
    nop

LAB_ce3238e:
    bra LAB_ce324c0
    nop

LAB_ce32392:
    mov.w @(DAT_ce32466,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3239e
    bra LAB_ce324cc
    nop

LAB_ce3239e:
    mov.b r13,@(r0,r14)
    mov 0x10,r3
    mov.w @(DAT_ce32468,pc),r0
    mov 0x20,r2
    mov.w @(DAT_ce3246a,pc),r1
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
    add r4,r1
    mov.b r2,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce32478,pc),r3
    xor 0x01,r0
    mov.b r0,@r1
    extu.b r0,r0
    mov.w @(DAT_ce3246c,pc),r1
    add r4,r1
    mov.w r0,@r1
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce323d6:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce32488
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce32468,pc),r0
    mov.l @(r0,r14),r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce32432
    mov.b @(0x6,r14),r0
    mov 0x10,r3
    mov 0x21,r2
    mov.w @(DAT_ce3246a,pc),r1
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    add r4,r1
    mov.w @(DAT_ce3246e,pc),r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
    mov.b r2,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce32478,pc),r3
    xor 0x01,r0
    mov.b r0,@r1
    extu.b r0,r0
    mov.w @(DAT_ce3246c,pc),r1
    add r4,r1
    jsr @r3
    mov.w r0,@r1
    lds.l @r15+,PR
    mov.l @(PTR_ce3247c,pc),r2
    mov 0x0F,r5
    mov r14,r4
    mov 0x02,r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32432:
    mov.w @(DAT_ce32466,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32448
    mov.b r13,@(r0,r14)
    add 0x60,r0
    mov 0x22,r3
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce32480,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32448:
    mov.w @(DAT_ce32470,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce324cc
    mov.b r13,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32484,pc),r3
    mov 0x02,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32462:
    #data 0x01ea
DAT_ce32464:
    #data 0x01f9
DAT_ce32466:
    #data 0x0141
DAT_ce32468:
    #data 0x01c8
DAT_ce3246a:
    #data 0x01d2
DAT_ce3246c:
    #data 0x0130
DAT_ce3246e:
    #data 0x01b4
DAT_ce32470:
    #data 0x0140
    #align4

PTR_ce32474:
    #data loc_8c034dee
PTR_ce32478:
    #data loc_8c02fd26
PTR_ce3247c:
    #data loc_8c034e8c
PTR_ce32480:
    #data loc_8c05933c
PTR_ce32484:
    #data loc_8c0e2f28

;=============================================

LAB_ce32488:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324cc
    mov.w @(DAT_ce32586,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce324c0
    mov 0x60,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32598,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce324b2:
    lds.l @r15+,PR
    mov.l @(PTR_ce3259c,pc),r3
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce324c0:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra LAB_ce325b4
    mov.l @r15+,r14

LAB_ce324cc:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce324d6:
    mov.w @(DAT_ce32588,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce3258a,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r13
    extu.w r13,r3
    tst r2,r3
    bt LAB_ce3250c
    mova @(DAT_ce325a0,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce3258c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce324fa
    mova @(DAT_ce325a4,pc),r0
    fmov.s @r0,fr4

LAB_ce324fa:
    mov.w @(DAT_ce3258e,pc),r2
    extu.w r13,r3
    tst r2,r3
    bt/s LAB_ce32506
    mov 0x34,r0
    fneg fr4

LAB_ce32506:
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce3250c:
    mov 0x60,r0
    fldi0 fr2
    fmov.s @(r0,r14),fr3
    fcmp/gt fr2,fr3
    bt LAB_ce3257e
    mov.w @(DAT_ce32590,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3257e
    mov.l @(PTR_ce325a8,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce3256e
    mov.w @(DAT_ce32592,pc),r4
    extu.w r13,r13
    tst r4,r13
    bt LAB_ce3255a
    mov.w @(DAT_ce32594,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0xE0,r0
    bf LAB_ce3254c
    mov.w @(DAT_ce32596,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)
    exts.b r2,r2
    cmp/pl r2
    bt LAB_ce3254c
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce3254c:
    mova @(DAT_ce325ac,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)

LAB_ce3255a:
    mov.w @(DAT_ce32588,pc),r0
    mov.w @(r0,r14),r3
    add 0x02,r0
    mov.w @(r0,r14),r2
    extu.w r3,r3
    extu.w r2,r2
    not r3,r3
    and r2,r3
    tst r4,r3
    bt LAB_ce3257e

LAB_ce3256e:
    mova @(DAT_ce325b0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32598,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce3257e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32586:
    #data 0x01f9
DAT_ce32588:
    #data 0x0340
DAT_ce3258a:
    #data 0x0c00
DAT_ce3258c:
    #data 0x01fc
DAT_ce3258e:
    #data 0x0800
DAT_ce32590:
    #data 0x0201
DAT_ce32592:
    #data 0x2000
DAT_ce32594:
    #data 0x014a
DAT_ce32596:
    #data 0x0142
    #align4

DAT_ce32598:
    #data 0xbf4db6db
PTR_ce3259c:
    #data loc_8c05176e
DAT_ce325a0:
    #data 0x40555555
DAT_ce325a4:
    #data 0x3f555555
PTR_ce325a8:
    #data loc_8c0335b0
DAT_ce325ac:
    #data 0xc0892492
DAT_ce325b0:
    #data 0xc1092492

;=============================================

LAB_ce325b4:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    mov.l @(PTR_ce32670,pc),r3
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    jmp @r3
    fmov fr4,@(r0,r4)

LAB_ce325ca:
    mov.w @(DAT_ce32668,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce32674,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce325d8:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3266a,pc),r0
    mov.b @(r0,r4),r3
    mov.l @(PTR_ce32678,pc),r0
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce3266c,pc),r0
    mov.l @(PTR_ce3267c,pc),r3
    mov.b r2,@(r0,r4)
    jmp @r3
    mov 0x1D,r5

LAB_ce325f2:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3266a,pc),r0
    mov.b @(r0,r4),r3
    mov.l @(PTR_ce32680,pc),r0
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce3266c,pc),r0
    mov.l @(PTR_ce3267c,pc),r3
    mov.b r2,@(r0,r4)
    jmp @r3
    mov 0x1D,r5

LAB_ce3260c:
    mov 0x00,r0
    mov.l @(PTR_ce32684,pc),r5
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3266a,pc),r0
    mov.w @(DAT_ce3266e,pc),r1
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce3266c,pc),r0
    add r4,r1
    shll r3
    add r5,r3
    mov.b @r3,r2
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce3266a,pc),r0
    mov.b @(r0,r4),r3
    shll r3
    add r3,r5
    mov.l @(PTR_ce3267c,pc),r3
    mov.b @(0x1,r5),r0
    mov.b r0,@r1
    jmp @r3
    mov 0x15,r5

LAB_ce3263a:
    mov 0x00,r0
    mov.l @(PTR_ce32688,pc),r5
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3266a,pc),r0
    mov.w @(DAT_ce3266e,pc),r1
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce3266c,pc),r0
    add r4,r1
    shll r3
    add r5,r3
    mov.b @r3,r2
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce3266a,pc),r0
    mov.b @(r0,r4),r3
    shll r3
    add r3,r5
    mov.l @(PTR_ce3267c,pc),r3
    mov.b @(0x1,r5),r0
    mov.b r0,@r1
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32668:
    #data 0x01c8
DAT_ce3266a:
    #data 0x04c9
DAT_ce3266c:
    #data 0x01e9
DAT_ce3266e:
    #data 0x01a3
    #align4

PTR_ce32670:
    #data loc_8c051648
PTR_ce32674:
    #data loc_8c04cc1c
PTR_ce32678:
    #data DAT_ce329c4
PTR_ce3267c:
    #data loc_8c0530d8
PTR_ce32680:
    #data DAT_ce329c7
PTR_ce32684:
    #data DAT_ce329ca
PTR_ce32688:
    #data DAT_ce329d0
    #data 0x0200
    #data 0x0006
    #data 0x0304
    #data 0x0005
    #data 0x0100
    #data 0x0007
    #data 0x0000
    #data 0x0000
DAT_ce3269c:
    #data 0x0800
    #data 0x0018
    #data 0x0c10
    #data 0x0014
    #data 0x0400
    #data 0x001c
    #data 0x0000
    #data 0x0000
DAT_ce326ac:
    #data 0x0201
    #data 0x0200
DAT_ce326b0:
    #data 0x02ff
    #data 0x0201
DAT_ce326b4:
    #data 0xffff
    #data 0x02ff
DAT_ce326b8:
    #data 0x0201
    #data 0x0201
DAT_ce326bc:
    #data 0x02ff
    #data 0x02ff
DAT_ce326c0:
    #data 0xffff
    #data 0xffff
DAT_ce326c4:
    #data 0x0201
    #data 0x0200
DAT_ce326c8:
    #data 0x02ff
    #data 0x0201
DAT_ce326cc:
    #data 0xffff
    #data 0x02ff
DAT_ce326d0:
    #data 0x0201
    #data 0x0201
DAT_ce326d4:
    #data 0x02ff
    #data 0x02ff
DAT_ce326d8:
    #data 0xffff
    #data 0xffff
DAT_ce326dc:
    #data 0x0201
    #data 0x0200
DAT_ce326e0:
    #data 0x02ff
    #data 0x0201
DAT_ce326e4:
    #data 0xffff
    #data 0x02ff
DAT_ce326e8:
    #data 0x0201
    #data 0x0201
DAT_ce326ec:
    #data 0x02ff
    #data 0x02ff
DAT_ce326f0:
    #data 0xffff
    #data 0xffff
    #align4

PTR_ce326f4:
    #data DAT_ce326ac
PTR_ce326f8:
    #data DAT_ce326b0
PTR_ce326fc:
    #data DAT_ce326b4
PTR_ce32700:
    #data DAT_ce326b8
PTR_ce32704:
    #data DAT_ce326bc
PTR_ce32708:
    #data DAT_ce326c0
PTR_ce3270c:
    #data DAT_ce326c4
PTR_ce32710:
    #data DAT_ce326c8
PTR_ce32714:
    #data DAT_ce326cc
PTR_ce32718:
    #data DAT_ce326d0
PTR_ce3271c:
    #data DAT_ce326d4
PTR_ce32720:
    #data DAT_ce326d8
PTR_ce32724:
    #data DAT_ce326dc
PTR_ce32728:
    #data DAT_ce326e0
PTR_ce3272c:
    #data DAT_ce326e4
PTR_ce32730:
    #data DAT_ce326e8
PTR_ce32734:
    #data DAT_ce326ec
PTR_ce32738:
    #data DAT_ce326f0
DAT_ce3273c:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce3274c:
    #data 0x0005
    #data 0x0000
    #data 0x0006
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce32760:
    #data 0x0005
    #data 0x8100
    #data 0x0001
    #data 0x0000
    #data 0x0400
    #data 0x1400
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce32774:
    #data 0x0003
    #data 0x8000
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce32784:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce32794:
    #data 0x0003
    #data 0x2000
    #data 0x000c
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
    #align4

PTR_ce327a4:
    #data LAB_ce3065a
PTR_ce327a8:
    #data LAB_ce3001c
PTR_ce327ac:
    #data LAB_ce30a1c
PTR_ce327b0:
    #data LAB_ce30b42
PTR_ce327b4:
    #data LAB_ce30c14
PTR_ce327b8:
    #data LAB_ce30d84
PTR_ce327bc:
    #data LAB_ce30eaa
PTR_ce327c0:
    #data LAB_ce3106c
PTR_ce327c4:
    #data LAB_ce310cc
PTR_ce327c8:
    #data LAB_ce3222c
PTR_ce327cc:
    #data LAB_ce3229a
PTR_ce327d0:
    #data LAB_ce32358
PTR_ce327d4:
    #data LAB_ce325ca
PTR_ce327d8:
    #data FUN_ce3056c
PTR_ce327dc:
    #data LAB_ce32098
PTR_ce327e0:
    #data LAB_ce30b56
PTR_ce327e4:
    #data LAB_ce325d8
PTR_ce327e8:
    #data LAB_ce325f2
PTR_ce327ec:
    #data LAB_ce3260c
PTR_ce327f0:
    #data LAB_ce3263a
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce32804:
    #data FUN_ce324d6
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
DAT_ce32814:
    #data 0x0200
    #data 0x0301
    #data 0x0604
    #data 0x0705
    #data 0x0a08
    #data 0x0b09
    #data 0x0e0c
    #data 0x0f0d
    #align4

DAT_ce32824:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x03
    #data 0x04
    #data 0x05
    #data 0x06
    #data 0x07
    #data 0x08
DAT_ce3282d:
    #data 0x09
    #data 0x0a
    #data 0x0b
DAT_ce32830:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce32833:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce3283c:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce3283f:
    #data 0x07
    #data 0x07
    #data 0x07
    #data 0x08
    #data 0x08
    #data 0x08
    #data 0x09
    #data 0x09
    #data 0x09
DAT_ce32848:
    #data 0x0a
    #data 0x0a
    #data 0x0a
DAT_ce3284b:
    #data 0x0c
    #data 0x0d
    #data 0x0e
DAT_ce3284e:
    #data 0x0f
    #data 0x10
    #data 0x11
DAT_ce32851:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce32854:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce32857:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce3285a:
    #data 0x0b
    #data 0x0b
    #data 0x0b
DAT_ce3285d:
    #data 0x0c
    #data 0x0c
    #data 0x0c
    #align4

PTR_ce32860:
    #data LAB_ce307e0
PTR_ce32864:
    #data LAB_ce309e0
PTR_ce32868:
    #data FUN_ce308b8
PTR_ce3286c:
    #data LAB_ce307e0
PTR_ce32870:
    #data LAB_ce30a9a
PTR_ce32874:
    #data LAB_ce30a30
PTR_ce32878:
    #data LAB_ce30a78
PTR_ce3287c:
    #data FUN_ce30b32
PTR_ce32880:
    #data LAB_ce30c54
PTR_ce32884:
    #data LAB_ce30cc0
PTR_ce32888:
    #data LAB_ce30d2a
PTR_ce3288c:
    #data LAB_ce30dc4
PTR_ce32890:
    #data LAB_ce30e1e
PTR_ce32894:
    #data FUN_ce30e88
PTR_ce32898:
    #data LAB_ce30ee0
PTR_ce3289c:
    #data LAB_ce30f30
PTR_ce328a0:
    #data LAB_ce30fd4
DAT_ce328a4:
    #data 0x0400
DAT_ce328a6:
    #data 0x0000
    #data 0x0600
    #data 0x0000
    #data 0x0800
    #data 0x0000
    #data 0x0800
    #data 0x0000
    #data 0x0400
    #data 0x0000
    #data 0x0200
    #data 0x0100
    #data 0x0000
    #data 0x0200
    #data 0xfe00
    #data 0x0400
    #data 0xfe00
    #data 0x0500
    #data 0xfe00
    #data 0x0100
    #data 0xff00
    #data 0x0000
    #data 0xff00
    #data 0xff80
    #data 0x0060
    #data 0xfe80
    #data 0x0060
    #data 0xff00
    #data 0x0060
    #data 0xff80
    #data 0x0060
    #data 0xfec0
    #data 0x0040
    #data 0xff00
    #data 0x0040
    #data 0xff40
    #data 0x0000
    #data 0xff80
    #data 0x0000
    #data 0x0000
    #align4

PTR_ce328f4:
    #data LAB_ce31098
PTR_ce328f8:
    #data LAB_ce310b2
PTR_ce328fc:
    #data LAB_ce31098
PTR_ce32900:
    #data LAB_ce310b2
PTR_ce32904:
    #data LAB_ce310b2
PTR_ce32908:
    #data LAB_ce310e0
PTR_ce3290c:
    #data LAB_ce3125e
PTR_ce32910:
    #data LAB_ce314e0
PTR_ce32914:
    #data LAB_ce318dc
PTR_ce32918:
    #data LAB_ce314e0
PTR_ce3291c:
    #data LAB_ce319b6
PTR_ce32920:
    #data LAB_ce31c7c
PTR_ce32924:
    #data LAB_ce31e00
PTR_ce32928:
    #data LAB_ce31e04
PTR_ce3292c:
    #data LAB_ce31e44
PTR_ce32930:
    #data LAB_ce31e48
PTR_ce32934:
    #data LAB_ce31e4c
PTR_ce32938:
    #data LAB_ce31f78
PTR_ce3293c:
    #data LAB_ce31298
PTR_ce32940:
    #data LAB_ce31338
PTR_ce32944:
    #data LAB_ce313d4
PTR_ce32948:
    #data LAB_ce31452
PTR_ce3294c:
    #data LAB_ce31528
PTR_ce32950:
    #data LAB_ce315e0
PTR_ce32954:
    #data LAB_ce31680
PTR_ce32958:
    #data LAB_ce317bc
PTR_ce3295c:
    #data LAB_ce3184a
PTR_ce32960:
    #data LAB_ce319f0
PTR_ce32964:
    #data LAB_ce31a9c
PTR_ce32968:
    #data LAB_ce31b82
PTR_ce3296c:
    #data LAB_ce31bb4
PTR_ce32970:
    #data LAB_ce31c30
PTR_ce32974:
    #data LAB_ce31e78
PTR_ce32978:
    #data LAB_ce31ee6
PTR_ce3297c:
    #data FUN_ce31f2a
PTR_ce32980:
    #data LAB_ce320e0
PTR_ce32984:
    #data LAB_ce32166
PTR_ce32988:
    #data FUN_ce321d4
DAT_ce3298c:
    #data 0x0002
    #data 0x0000
    #data 0x0001
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0002
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
DAT_ce329ac:
    #data 0x0000
    #data 0xc2a0
    #data 0x9249
    #data 0x433c
    #data 0x0000
    #data 0x0000
DAT_ce329b8:
    #data 0x0000
    #data 0x0000
    #data 0x9249
    #data 0x433c
    #data 0x0000
    #data 0x0000
DAT_ce329c4:
    #data 0x0101
    #data 0x05
DAT_ce329c7:
    #data 0x01
    #align4

    #data 0x01
    #data 0x05
DAT_ce329ca:
    #data 0x00
DAT_ce329cb:
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x06
    #data 0x01
DAT_ce329d0:
    #data 0x00
DAT_ce329d1:
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x06
    #data 0x01
