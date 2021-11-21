;╔══════════════════════════════════════════╗
;║ S_PL1A : Abyss [3rd Form] Program        ║
;╚══════════════════════════════════════════╝

#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c03340c 0x8C03340C
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c034f54 0x8C034F54
#symbol loc_8c035162 0x8C035162
#symbol loc_8c0355b2 0x8C0355B2
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c04e958 0x8C04E958
#symbol loc_8c04e98a 0x8C04E98A
#symbol loc_8c04fc20 0x8C04FC20
#symbol loc_8c04fd92 0x8C04FD92
#symbol loc_8c050d66 0x8C050D66
#symbol loc_8c0510d8 0x8C0510D8
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c0523d8 0x8C0523D8
#symbol loc_8c0530d8 0x8C0530D8
#symbol loc_8c053cf4 0x8C053CF4
#symbol loc_8c053e00 0x8C053E00
#symbol loc_8c0542e0 0x8C0542E0
#symbol loc_8c054e58 0x8C054E58
#symbol loc_8c0573e8 0x8C0573E8
#symbol loc_8c057694 0x8C057694
#symbol loc_8c058c48 0x8C058C48
#symbol loc_8c059946 0x8C059946
#symbol loc_8c059dda 0x8C059DDA
#symbol loc_8c059e5c 0x8C059E5C
#symbol loc_8c05a2cc 0x8C05A2CC
#symbol loc_8c0891dc 0x8C0891DC
#symbol loc_8c08926c 0x8C08926C
#symbol loc_8c08a3ac 0x8C08A3AC
#symbol loc_8c0d8000 0x8C0D8000
#symbol loc_8c0fe1cc 0x8C0FE1CC
#symbol loc_8c0fe1fc 0x8C0FE1FC
#symbol loc_8c129128 0x8C129128
#symbol loc_8c1292d4 0x8C1292D4
#symbol loc_8c12939c 0x8C12939C
#symbol loc_8c1294c8 0x8C1294C8
#symbol loc_8c1355d4 0x8C1355D4
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c26a524 0x8C26A524
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c2895f1 0x8C2895F1
#symbol loc_8c2896b0 0x8C2896B0
#symbol loc_8c289732 0x8C289732

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300de,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300e8,pc),r7
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
    bsr FUN_ce30096
    mov r4,r14
    tst r0,r0
    bf LAB_ce30090
    bsr FUN_ce30100
    mov r14,r4
    tst r0,r0
    bf LAB_ce30090
    bsr FUN_ce3013c
    mov r14,r4
    tst r0,r0
    bf LAB_ce30090
    bsr FUN_ce30178
    mov r14,r4
    tst r0,r0
    bf LAB_ce30090
    bsr FUN_ce301b4
    mov r14,r4
    tst r0,r0
    bf LAB_ce30090
    bsr FUN_ce301f0
    mov r14,r4
    tst r0,r0
    bf LAB_ce30090
    bsr FUN_ce30254
    mov r14,r4
    tst r0,r0
    bf LAB_ce30090
    bsr FUN_ce30290
    mov r14,r4
    tst r0,r0
    bf LAB_ce30090
    bsr FUN_ce302cc
    mov r14,r4
    tst r0,r0
    bf LAB_ce30090
    bsr FUN_ce30308
    mov r14,r4
    tst r0,r0
    bf LAB_ce30090
    bsr FUN_ce30344
    mov r14,r4
    tst r0,r0
    bf LAB_ce30090
    bsr FUN_ce303a8
    mov r14,r4
    tst r0,r0
    bf LAB_ce30090
    mov.l @(PTR_ce300ec,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300f0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30090:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30096:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce300f4,pc),r5
    mov.w @(DAT_ce300e0,pc),r6
    mov.l @(PTR_ce300f8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce300b6
    mov.w @(DAT_ce300e2,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce300be

LAB_ce300b6:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce300be:
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce300e4,pc),r0
    mov.l @(PTR_ce300fc,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300de:
    #data 0x0428
DAT_ce300e0:
    #data 0x0364
DAT_ce300e2:
    #data 0x040c
DAT_ce300e4:
    #data 0x01e9
    #align4

PTR_ce300e8:
    #data PTR_ce32d08
PTR_ce300ec:
    #data loc_8c053e00
PTR_ce300f0:
    #data loc_8c0542e0
PTR_ce300f4:
    #data DAT_ce32c48
PTR_ce300f8:
    #data loc_8c054e58
PTR_ce300fc:
    #data loc_8c0530d8

;=============================================

FUN_ce30100:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30238,pc),r5
    mov.w @(DAT_ce3022c,pc),r6
    mov.l @(PTR_ce3023c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3011e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3011e:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3022e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30240,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3013c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30244,pc),r5
    mov.w @(DAT_ce30230,pc),r6
    mov.l @(PTR_ce3023c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3015a
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3015a:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3022e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30240,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30178:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30248,pc),r5
    mov.w @(DAT_ce30232,pc),r6
    mov.l @(PTR_ce3023c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30196
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30196:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3022e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30240,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301b4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3024c,pc),r5
    mov.w @(DAT_ce30234,pc),r6
    mov.l @(PTR_ce3023c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301d2
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301d2:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3022e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30240,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301f0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30250,pc),r5
    mov.w @(DAT_ce30236,pc),r6
    mov.l @(PTR_ce3023c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3020e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3020e:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3022e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30240,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3022c:
    #data 0x036c
DAT_ce3022e:
    #data 0x01e9
DAT_ce30230:
    #data 0x0374
DAT_ce30232:
    #data 0x037c
DAT_ce30234:
    #data 0x0384
DAT_ce30236:
    #data 0x038c
    #align4

PTR_ce30238:
    #data DAT_ce32c58
PTR_ce3023c:
    #data loc_8c054e58
PTR_ce30240:
    #data loc_8c0530d8
PTR_ce30244:
    #data DAT_ce32c68
PTR_ce30248:
    #data DAT_ce32c78
PTR_ce3024c:
    #data DAT_ce32c88
PTR_ce30250:
    #data DAT_ce32c98

;=============================================

FUN_ce30254:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3038c,pc),r5
    mov.w @(DAT_ce30380,pc),r6
    mov.l @(PTR_ce30390,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30272
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30272:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30382,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30394,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30290:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30398,pc),r5
    mov.w @(DAT_ce30384,pc),r6
    mov.l @(PTR_ce30390,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302ae
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302ae:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30382,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30394,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302cc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3039c,pc),r5
    mov.w @(DAT_ce30386,pc),r6
    mov.l @(PTR_ce30390,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302ea
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302ea:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30382,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30394,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30308:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce303a0,pc),r5
    mov.w @(DAT_ce30388,pc),r6
    mov.l @(PTR_ce30390,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30326
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30326:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x09,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30382,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30394,pc),r3
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
    mov.l @(PTR_ce303a4,pc),r5
    mov.w @(DAT_ce3038a,pc),r6
    mov.l @(PTR_ce30390,pc),r3
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
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0A,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30382,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30394,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30380:
    #data 0x0394
DAT_ce30382:
    #data 0x01e9
DAT_ce30384:
    #data 0x039c
DAT_ce30386:
    #data 0x03a4
DAT_ce30388:
    #data 0x03ac
DAT_ce3038a:
    #data 0x03b4
    #align4

PTR_ce3038c:
    #data DAT_ce32ca8
PTR_ce30390:
    #data loc_8c054e58
PTR_ce30394:
    #data loc_8c0530d8
PTR_ce30398:
    #data DAT_ce32cb8
PTR_ce3039c:
    #data DAT_ce32cc8
PTR_ce303a0:
    #data DAT_ce32cd8
PTR_ce303a4:
    #data DAT_ce32ce8

;=============================================

FUN_ce303a8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304cc,pc),r5
    mov.w @(DAT_ce304b0,pc),r6
    mov.l @(PTR_ce304d0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303c6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303c6:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0B,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce304b2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304d4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303e4:
    mov.w @(DAT_ce304b6,pc),r0
    mov.w @(DAT_ce304b4,pc),r5
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce303fa
    add r4,r5
    mov.w @(DAT_ce304b8,pc),r0
    mov 0x00,r6
    mov.b r6,@(r0,r4)
    add 0xFF,r0
    mov.b r6,@(r0,r4)

LAB_ce303fa:
    mov.w @(DAT_ce304b6,pc),r0
    mov 0x01,r6
    mov.b @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce30430
    fldi1 fr5
    mov.w @(DAT_ce304ba,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30430
    mova @(DAT_ce304d8,pc),r0
    fmov.s @r0,fr3
    mov 0x74,r0
    fmov fr3,@(r0,r4)
    mov 0x78,r0
    fmov fr5,@(r0,r4)
    mov.w @(DAT_ce304b6,pc),r0
    mov.b @(r0,r4),r3
    tst r6,r3
    bt/s LAB_ce30428
    fldi0 fr4
    mov 0x78,r0
    fmov fr4,@(r0,r4)

LAB_ce30428:
    mov 0x7C,r0
    fmov fr4,@(r0,r4)
    add 0x04,r0
    fmov fr4,@(r0,r4)

LAB_ce30430:
    mov.w @(DAT_ce304b6,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3043c
    mov 0x04,r0
    fmov fr5,@(r0,r5)

LAB_ce3043c:
    mov.w @(DAT_ce304bc,pc),r0
    mov 0x02,r5
    fmov fr5,@(r0,r4)
    add 0x24,r0
    mov.b r6,@(r0,r4)
    mov.w @(DAT_ce304be,pc),r0
    mov.b r5,@(r0,r4)
    add 0xFF,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce304c0,pc),r0
    mov 0xFF,r3
    mov.l @(PTR_ce304dc,pc),r5
    mov.b r3,@(r0,r4)
    add 0x77,r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    mov.b @(r0,r5),r3
    mov.w @(DAT_ce304c2,pc),r0
    mov.w r3,@(r0,r4)
    mov.w @(DAT_ce304ba,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce304e0
    mov 0x00,r6
    mov.w @(DAT_ce304b6,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3048c
    mov.b @(0x5,r4),r0
    tst r0,r0
    bf LAB_ce3048c
    mov.w @(DAT_ce304c4,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce3048c
    mov.w @(DAT_ce304ba,pc),r0
    mov.b @(r0,r4),r3
    add 0x01,r3
    bra LAB_ce304e0
    mov.b r3,@(r0,r4)

LAB_ce3048c:
    mov.w @(DAT_ce304c6,pc),r0
    mov.b @(r0,r4),r1
    tst r1,r1
    bt LAB_ce3054a
    mov.w @(DAT_ce304b6,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce3054a
    mov.w @(DAT_ce304c6,pc),r0
    mov.b @(r0,r4),r3
    add 0xFF,r3
    mov.b r3,@(r0,r4)
    exts.b r3,r3
    tst r3,r3
    bf LAB_ce3054a
    mov.w @(DAT_ce304c8,pc),r0
    rts
    mov.b r6,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce304b0:
    #data 0x03cc
DAT_ce304b2:
    #data 0x01e9
DAT_ce304b4:
    #data 0x02a4
DAT_ce304b6:
    #data 0x01a0
DAT_ce304b8:
    #data 0x02a5
DAT_ce304ba:
    #data 0x0281
DAT_ce304bc:
    #data 0x0108
DAT_ce304be:
    #data 0x01f5
DAT_ce304c0:
    #data 0x012d
DAT_ce304c2:
    #data 0x012e
DAT_ce304c4:
    #data 0x019f
DAT_ce304c6:
    #data 0x0283
DAT_ce304c8:
    #data 0x0280
    #align4

PTR_ce304cc:
    #data DAT_ce32cf8
PTR_ce304d0:
    #data loc_8c054e58
PTR_ce304d4:
    #data loc_8c0530d8
DAT_ce304d8:
    #data 0x3f4ccccd
PTR_ce304dc:
    #data loc_8c1355d4

;=============================================

LAB_ce304e0:
    mov.w @(DAT_ce305b2,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce304f4
    mov.w @(DAT_ce305b4,pc),r0
    fldi0 fr3
    mov.b r6,@(r0,r4)
    mov 0x78,r0
    rts
    fmov fr3,@(r0,r4)

LAB_ce304f4:
    mov.l @(PTR_ce305c4,pc),r3
    mov.w @(DAT_ce305b6,pc),r1
    mov.l @r3,r0
    mov.w @(r0,r1),r0
    and 0x01,r0
    mov r0,r6
    mov.w @(DAT_ce305b8,pc),r0
    shll2 r6
    mov.w @(r0,r4),r2
    shll r6
    neg r6,r6
    tst r2,r2
    bt/s LAB_ce30512
    add 0x04,r6
    neg r6,r6

LAB_ce30512:
    exts.w r6,r6
    mov.l @(DAT_ce305c8,pc),r1
    lds r6,FPUL
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    mov 0x01,r6
    float FPUL,fr3
    lds r1,FPUL
    fsts FPUL,fr0
    fmac fr0,fr3,fr2
    fmov fr2,@(r0,r4)
    mov.w @(DAT_ce305b2,pc),r0
    mov.b @(r0,r4),r3
    tst r6,r3
    bf LAB_ce3054a
    mov.w @(DAT_ce305b4,pc),r0
    mov.b @(r0,r4),r1
    tst r1,r1
    bt LAB_ce3054a
    mov.w @(DAT_ce305ba,pc),r0
    mov.b r6,@(r0,r4)
    add 0x77,r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    mov.b @(r0,r5),r3
    mov.w @(DAT_ce305bc,pc),r0
    add 0x03,r3
    mov.w r3,@(r0,r4)

LAB_ce3054a:
    rts
    nop

LAB_ce3054e:
    mov.l @(PTR_ce305cc,pc),r3
    jmp @r3
    nop

LAB_ce30554:
    mov.l @(PTR_ce305cc,pc),r3
    jmp @r3
    nop

LAB_ce3055a:
    mov r4,r3
    mov.l @(PTR_ce305d0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3056c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce305d4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce305be,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce305ac
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
    mov.w @(DAT_ce305c0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce305a4
    mova @(DAT_ce305d8,pc),r0
    bra LAB_ce305a8
    fmov.s @r0,fr3

LAB_ce305a4:
    mova @(DAT_ce305dc,pc),r0
    fmov.s @r0,fr3

LAB_ce305a8:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce305ac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305b2:
    #data 0x01a0
DAT_ce305b4:
    #data 0x0281
DAT_ce305b6:
    #data 0x0090
DAT_ce305b8:
    #data 0x0130
DAT_ce305ba:
    #data 0x012d
DAT_ce305bc:
    #data 0x012e
DAT_ce305be:
    #data 0x0141
DAT_ce305c0:
    #data 0x01d2
    #align4

PTR_ce305c4:
    #data loc_8c26823c
DAT_ce305c8:
    #data 0x3fd55555
PTR_ce305cc:
    #data FUN_ce32276
PTR_ce305d0:
    #data PTR_ce32d78
PTR_ce305d4:
    #data loc_8c034dee
DAT_ce305d8:
    #data 0x412d5555
DAT_ce305dc:
    #data 0xc12d5555

;=============================================

LAB_ce305e0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30744,pc),r3
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
    mov.w @(DAT_ce30738,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30658
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
    mov.w @(DAT_ce3073a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30650
    mova @(DAT_ce30748,pc),r0
    bra LAB_ce30654
    fmov.s @r0,fr3

LAB_ce30650:
    mova @(DAT_ce3074c,pc),r0
    fmov.s @r0,fr3

LAB_ce30654:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce30658:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3065e:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30744,pc),r3
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
    bt LAB_ce306b2
    lds.l @r15+,PR
    mov.l @(PTR_ce30750,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce306b2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce306b8:
    mov.l @(PTR_ce30750,pc),r3
    jmp @r3
    nop

LAB_ce306be:
    mov.w @(DAT_ce3073c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30754,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce306d8:
    mov.w @(DAT_ce3073e,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce30758,pc),r1
    mov.w @(DAT_ce30740,pc),r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0x1D,r0
    mov.b r2,@(r0,r14)
    mov 0x02,r2
    mov.b @r1,r3
    extu.b r3,r3
    cmp/ge r2,r3
    bf LAB_ce30770
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3073e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3075c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30760,pc),r2
    mov 0x12,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mova @(DAT_ce30764,pc),r0
    fldi0 fr4
    fmov.s @r0,fr3
    mov 0x74,r0
    mov.l @(PTR_ce30768,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x78,r0
    fmov fr4,@(r0,r14)
    mov 0x7C,r0
    fmov fr4,@(r0,r14)
    add 0x04,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3076c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30738:
    #data 0x0141
DAT_ce3073a:
    #data 0x01d2
DAT_ce3073c:
    #data 0x01f4
DAT_ce3073e:
    #data 0x012c
DAT_ce30740:
    #data 0x00ff
    #align4

PTR_ce30744:
    #data loc_8c034dee
DAT_ce30748:
    #data 0x3fd55555
DAT_ce3074c:
    #data 0xbfd55555
PTR_ce30750:
    #data FUN_ce32276
PTR_ce30754:
    #data PTR_ce32d84
PTR_ce30758:
    #data loc_8c2895f0
PTR_ce3075c:
    #data loc_8c05218a
PTR_ce30760:
    #data loc_8c034e8c
DAT_ce30764:
    #data 0x3f59999a
PTR_ce30768:
    #data loc_8c0fe1cc
PTR_ce3076c:
    #data loc_8c08a3ac

;=============================================

LAB_ce30770:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30776:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3086c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3078e
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce3078e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30796:
    mov 0x20,r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307b6
    mov 0x00,r5
    cmp/eq 0x02,r0
    bt LAB_ce307b6
    cmp/eq 0x04,r0
    bt LAB_ce307b6
    cmp/eq 0x01,r0
    bt LAB_ce30848
    cmp/eq 0x03,r0
    bt LAB_ce30848
    bra LAB_ce3085e
    nop

LAB_ce307b6:
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce30862,pc),r0
    mov.l @(r0,r4),r3
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    fmov.s @(r0,r3),fr4
    mov.w @(DAT_ce30864,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce307d6
    fsub fr3,fr4
    fneg fr4

LAB_ce307d6:
    mov 0x50,r0
    mov.l @(DAT_ce30874,pc),r2
    fmov.s @(r0,r4),fr5
    mova @(DAT_ce30870,pc),r0
    fmov.s @r0,fr3
    fmov fr5,fr2
    fmul fr3,fr2
    lds r2,FPUL
    fsub fr2,fr4
    fsts FPUL,fr2
    fcmp/gt fr4,fr2
    bt LAB_ce307f2
    fadd fr2,fr2
    fsub fr2,fr4

LAB_ce307f2:
    ftrc fr4,FPUL
    sts FPUL,r3
    lds r3,FPUL
    cmp/pz r3
    bt/s LAB_ce30806
    float FPUL,fr2
    mov.l @(DAT_ce30878,pc),r1
    lds r1,FPUL
    fsts FPUL,fr1
    fadd fr1,fr2

LAB_ce30806:
    mova @(DAT_ce3087c,pc),r0
    fmov.s @r0,fr1
    fmul fr1,fr5
    fcmp/gt fr5,fr2
    bt LAB_ce30830
    mov.l @(PTR_ce30880,pc),r3
    mov 0x3E,r0
    mov.l @r3,r2
    mov.b @(r0,r2),r1
    mov.b @(0x2,r4),r0
    extu.b r0,r0
    cmp/eq r0,r1
    bf LAB_ce30830
    mov.l @r3,r1
    mov.b @(0x3,r1),r0
    tst r0,r0
    bf LAB_ce30830
    mov.w @(DAT_ce30866,pc),r0
    mov 0x08,r2
    bra LAB_ce30858
    mov.b r2,@(r0,r4)

LAB_ce30830:
    mov.l @(PTR_ce30884,pc),r3
    mov.w @(DAT_ce30868,pc),r1
    mov.l @r3,r0
    mov.l @(r0,r1),r0
    tst 0x01,r0
    bt LAB_ce30840
    bra LAB_ce30842
    mov 0x06,r2

LAB_ce30840:
    mov 0x07,r2

LAB_ce30842:
    mov.w @(DAT_ce30866,pc),r0
    bra LAB_ce30858
    mov.b r2,@(r0,r4)

LAB_ce30848:
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov 0x0A,r3
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce30866,pc),r0
    mov.b r3,@(r0,r4)

LAB_ce30858:
    mov.l @(PTR_ce30888,pc),r3
    jmp @r3
    mov 0x15,r5

LAB_ce3085e:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30862:
    #data 0x020c
DAT_ce30864:
    #data 0x01d2
DAT_ce30866:
    #data 0x01e9
DAT_ce30868:
    #data 0x0090
    #align4

PTR_ce3086c:
    #data loc_8c034dee
DAT_ce30870:
    #data 0x43200000
DAT_ce30874:
    #data 0x4f000000
DAT_ce30878:
    #data 0x4f800000
DAT_ce3087c:
    #data 0x43555555
PTR_ce30880:
    #data loc_8c2896b0
PTR_ce30884:
    #data loc_8c26823c
PTR_ce30888:
    #data loc_8c0530d8

;=============================================

LAB_ce3088c:
    mov.w @(DAT_ce30980,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30988,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce308a0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308c8
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce308f6
    cmp/eq 0x02,r0
    bt LAB_ce3093e
    cmp/eq 0x03,r0
    bf LAB_ce308c4
    bra LAB_ce309ce
    nop

LAB_ce308c4:
    bra LAB_ce309f2
    nop

LAB_ce308c8:
    mov.w @(DAT_ce30982,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce3098c,pc),r3
    mov 0x00,r6
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30990,pc),r2
    mov 0x00,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    mov r13,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov 0x22,r0
    bra LAB_ce309f2
    mov.b r13,@(r0,r14)

LAB_ce308f6:
    mov.l @(PTR_ce30994,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30984,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce309f2
    mov.b @(0x6,r14),r0
    mov r15,r5
    mov.l @(PTR_ce309a0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30984,pc),r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce30998,pc),r0
    fmov.s @r0,fr3
    mov 0x50,r0
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce3099c,pc),r0
    fmul fr3,fr2
    fneg fr2
    fmov.s fr2,@r15
    fmov.s @r0,fr2
    mov 0x54,r0
    fmov.s @(r0,r14),fr1
    mov 0x04,r0
    fmul fr2,fr1
    fmov fr1,@(r0,r15)
    mov 0x3C,r0
    fmov.s @(r0,r14),fr1
    mov 0x08,r0
    fmov fr1,@(r0,r15)
    jsr @r3
    mov r14,r4
    bra LAB_ce309f2
    nop

LAB_ce3093e:
    mov.w @(DAT_ce30986,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce309ce
    mov.l @(PTR_ce309a4,pc),r2
    jsr @r2
    nop
    and 0x07,r0
    mov.w r0,@(0x1e,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    mov 0x22,r1
    add r14,r1
    add 0x01,r0
    and 0x01,r0
    mov.b r0,@r1
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce309a8
    mov.w @(0x1e,r14),r0
    add 0x08,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    bra LAB_ce309ba
    mov r0,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30980:
    #data 0x01e9
DAT_ce30982:
    #data 0x01f9
DAT_ce30984:
    #data 0x0141
DAT_ce30986:
    #data 0x0328
    #align4

PTR_ce30988:
    #data PTR_ce32d8c
PTR_ce3098c:
    #data loc_8c034e8c
PTR_ce30990:
    #data loc_8c0891dc
PTR_ce30994:
    #data loc_8c034dee
DAT_ce30998:
    #data 0x42cb5555
DAT_ce3099c:
    #data 0x43250000
PTR_ce309a0:
    #data loc_8c050d66
PTR_ce309a4:
    #data loc_8c03319e

;=============================================

LAB_ce309a8:
    mov.l @(PTR_ce30ae4,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce30ae8,pc),r3
    mov r0,r1
    jsr @r3
    mov 0x03,r0
    mov.w @(DAT_ce30ad8,pc),r6
    add r0,r6

LAB_ce309ba:
    mov.l @(PTR_ce30aec,pc),r2
    mov 0x06,r5
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bt LAB_ce309ce
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce309ce:
    mov.l @(PTR_ce30af0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce309f2
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce30af4,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce309f2:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce309fc:
    mov r4,r3
    mov.l @(PTR_ce30af8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30a0e:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30ada,pc),r0
    mov 0x15,r5
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b r13,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30afc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x03,r0
    mov.w r0,@(0x1e,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce30b00,pc),r3
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce30a4c
    mov.l @(PTR_ce30b04,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30a4c:
    mov.w @(DAT_ce30adc,pc),r0
    mov 0x32,r2
    mov.l @(PTR_ce30b08,pc),r3
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
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30a78:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30af0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30ade,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30ad2
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce30b0c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce30b10,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30b14,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30b18,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30ae0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30ac6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce30ac6:
    mov 0x20,r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x02,r2
    mov.w @(DAT_ce30ada,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30ad2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ad8:
    #data 0x0080
DAT_ce30ada:
    #data 0x01f9
DAT_ce30adc:
    #data 0x01a1
DAT_ce30ade:
    #data 0x0141
DAT_ce30ae0:
    #data 0x01d2
    #align4

PTR_ce30ae4:
    #data loc_8c03319e
PTR_ce30ae8:
    #data loc_8c12939c
PTR_ce30aec:
    #data loc_8c0891dc
PTR_ce30af0:
    #data loc_8c034dee
PTR_ce30af4:
    #data FUN_ce32276
PTR_ce30af8:
    #data PTR_ce32dbc
PTR_ce30afc:
    #data loc_8c034e8c
PTR_ce30b00:
    #data loc_8c03340c
PTR_ce30b04:
    #data loc_8c05218a
PTR_ce30b08:
    #data loc_8c2896b0
PTR_ce30b0c:
    #data loc_8c0d8000
DAT_ce30b10:
    #data 0xc1d55555
DAT_ce30b14:
    #data 0x41cdb6db
DAT_ce30b18:
    #data 0xbfcdb6db

;=============================================

LAB_ce30b1c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l r13,@-r15
    mov 0x34,r0
    mov.l r12,@-r15
    add r14,r1
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
    mov.l @(PTR_ce30c68,pc),r3
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30c60,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce30b86
    mov 0x01,r12
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce30b86
    mov.w @(0x1c,r14),r0
    mov 0x04,r3
    cmp/ge r3,r0
    bt LAB_ce30b86
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x03,r0
    mov.w r0,@(0x1e,r14)

LAB_ce30b86:
    mov.b @(0x7,r14),r0
    tst r0,r0
    bt/s LAB_ce30bd4
    mov 0x00,r13
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce30bd4
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x04,r3
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/ge r3,r0
    bf/s LAB_ce30bb2
    mov 0x32,r4
    mov 0x33,r4

LAB_ce30bb2:
    mov.w @(DAT_ce30c62,pc),r0
    mov.l @(PTR_ce30c6c,pc),r3
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
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce30bd4:
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30bf6
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce30bf6
    mov.l @(PTR_ce30c70,pc),r3
    mov 0x20,r0
    mov 0x15,r5
    mov.b r12,@(r0,r14)
    mov 0x01,r6
    mov 0x08,r7
    jsr @r3
    mov r14,r4

LAB_ce30bf6:
    mov.w @(DAT_ce30c64,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce30c86
    mov.b @(0x6,r14),r0
    mov 0x02,r5
    mov.l @(PTR_ce30c74,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30c64,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30c74,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce30c2a
    mov r0,r4
    mov 0x21,r0
    mov.b r12,@(r0,r4)

LAB_ce30c2a:
    mova @(DAT_ce30c78,pc),r0
    fmov.s @r0,fr3
    mov 0x50,r0
    fmov.s @(r0,r14),fr4
    mov.w @(DAT_ce30c66,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce30c3e
    fmul fr3,fr4
    fneg fr4

LAB_ce30c3e:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x15,r5
    mov 0x02,r6
    fadd fr4,fr3
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    bra LAB_ce30c7c
    mov r14,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c60:
    #data 0x019e
DAT_ce30c62:
    #data 0x01a1
DAT_ce30c64:
    #data 0x041c
DAT_ce30c66:
    #data 0x0130
    #align4

PTR_ce30c68:
    #data loc_8c034dee
PTR_ce30c6c:
    #data loc_8c2896b0
PTR_ce30c70:
    #data loc_8c034f54
PTR_ce30c74:
    #data loc_8c0d8000
DAT_ce30c78:
    #data 0x43480000

;=============================================

LAB_ce30c7c:
    mov.l @(PTR_ce30da0,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce30d94,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce30c86:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30c90:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30da4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cba
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30da8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30da0,pc),r2
    mov r14,r4
    mov 0x02,r6
    mov 0x03,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce30cba:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30cc0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30da4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cda
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30dac,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30cda:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30ce2:
    mov.w @(DAT_ce30d96,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30db0,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce30cfc:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30d94,pc),r0
    mov 0x15,r5
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b r13,@(r0,r14)
    mov 0x03,r6
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30da0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30d98,pc),r0
    mov 0x34,r2
    mov.l @(PTR_ce30db4,pc),r3
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
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30d46:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30da4,pc),r3
    jsr @r3
    mov r4,r14
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf/s LAB_ce30d72
    mov 0x00,r13
    mov.w @(DAT_ce30d9a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30d68
    bra LAB_ce30e7c
    nop

LAB_ce30d68:
    mov.b r13,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    bra LAB_ce30e7c
    mov.b r0,@(0x7,r14)

LAB_ce30d72:
    mov.w @(DAT_ce30d9a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30db8
    mov.w @(DAT_ce30d9c,pc),r0
    mov.b @(r0,r14),r3
    add 0x12,r0
    mov.l @(r0,r14),r2
    lds r3,FPUL
    mov.b @(0x2,r2),r0
    mov r0,r3
    float FPUL,fr3
    lds r3,FPUL
    mov.w @(DAT_ce30d9e,pc),r0
    float FPUL,fr2
    bra LAB_ce30e7a
    fdiv fr2,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d94:
    #data 0x01f9
DAT_ce30d96:
    #data 0x02a5
DAT_ce30d98:
    #data 0x01a1
DAT_ce30d9a:
    #data 0x0141
DAT_ce30d9c:
    #data 0x0142
DAT_ce30d9e:
    #data 0x0108
    #align4

PTR_ce30da0:
    #data loc_8c034e8c
PTR_ce30da4:
    #data loc_8c034dee
PTR_ce30da8:
    #data loc_8c05218a
PTR_ce30dac:
    #data FUN_ce32276
PTR_ce30db0:
    #data PTR_ce32dd0
PTR_ce30db4:
    #data loc_8c2896b0

;=============================================

LAB_ce30db8:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x06,r0
    mov.w r0,@(0x1e,r14)
    mov 0x22,r0
    mov.b r13,@(r0,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce30e86,pc),r0
    mov.w @(DAT_ce30e88,pc),r3
    mov.b @(r0,r14),r2
    or r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce30e8a,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf/s LAB_ce30dfe
    mov 0x01,r12
    mov.w @(DAT_ce30e8c,pc),r0
    mov.w @(DAT_ce30e8e,pc),r1
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r1,r2
    bf LAB_ce30e22
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce30e90,pc),r2
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce30e28
    bra LAB_ce30e30
    nop

LAB_ce30dfe:
    mov.l @(PTR_ce30e98,pc),r2
    jsr @r2
    mov r14,r4
    mov r0,r4
    extu.b r4,r0
    cmp/eq 0x04,r0
    bt LAB_ce30e18
    cmp/eq 0x03,r0
    bt LAB_ce30e30
    cmp/eq 0x05,r0
    bt LAB_ce30e30
    bra LAB_ce30e36
    nop

LAB_ce30e18:
    mov.l @(PTR_ce30e9c,pc),r3
    jsr @r3
    nop
    tst r12,r0
    bt LAB_ce30e28

LAB_ce30e22:
    mov.w @(DAT_ce30e92,pc),r0
    bra LAB_ce30e3c
    mov.b r13,@(r0,r14)

LAB_ce30e28:
    mov.w @(DAT_ce30e92,pc),r0
    mov 0x02,r2
    bra LAB_ce30e3c
    mov.b r2,@(r0,r14)

LAB_ce30e30:
    mov.w @(DAT_ce30e92,pc),r0
    bra LAB_ce30e3c
    mov.b r12,@(r0,r14)

LAB_ce30e36:
    mov.w @(DAT_ce30e92,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)

LAB_ce30e3c:
    mov.w @(DAT_ce30e92,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30e52
    cmp/eq 0x02,r0
    bt LAB_ce30e52
    cmp/eq 0x01,r0
    bt LAB_ce30e64
    bra LAB_ce30e74
    nop

LAB_ce30e52:
    mov r14,r2
    mov.l @(PTR_ce30ea0,pc),r3
    mov r14,r1
    add 0x34,r2
    add 0x68,r1
    jsr @r3
    mov 0x0C,r0
    bra LAB_ce30e74
    nop

LAB_ce30e64:
    mov.w @(DAT_ce30e94,pc),r0
    mov r14,r1
    mov.l @(PTR_ce30ea0,pc),r3
    add 0x68,r1
    mov.l @(r0,r14),r2
    add 0x34,r2
    jsr @r3
    mov 0x0C,r0

LAB_ce30e74:
    mov.w @(DAT_ce30e96,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x6C,r0

LAB_ce30e7a:
    fmov fr3,@(r0,r14)

LAB_ce30e7c:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e86:
    #data 0x014a
DAT_ce30e88:
    #data 0x0080
DAT_ce30e8a:
    #data 0x0525
DAT_ce30e8c:
    #data 0x034a
DAT_ce30e8e:
    #data 0x0800
DAT_ce30e90:
    #data 0x0400
DAT_ce30e92:
    #data 0x01a3
DAT_ce30e94:
    #data 0x020c
DAT_ce30e96:
    #data 0x041c
    #align4

PTR_ce30e98:
    #data FUN_ce32974
PTR_ce30e9c:
    #data loc_8c03319e
PTR_ce30ea0:
    #data loc_8c1294c8

;=============================================

FUN_ce30ea4:
    mov.w @(DAT_ce30fa6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce30fa4,pc),r5
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30ec4
    cmp/eq 0x01,r0
    bt LAB_ce30edc
    cmp/eq 0x02,r0
    bt LAB_ce30eea
    bra LAB_ce30ef6
    nop

LAB_ce30ec4:
    mov.w @(0x1c,r14),r0
    mov r0,r13
    shll2 r13
    mov r0,r4
    exts.w r4,r0
    shll2 r13
    tst 0x01,r0
    neg r13,r13
    bt/s LAB_ce30ef6
    add r5,r13
    bra LAB_ce30ef6
    neg r13,r13

LAB_ce30edc:
    mov.w @(0x1c,r14),r0
    mov.w @(DAT_ce30fa8,pc),r3
    mov r0,r13
    shll2 r13
    shll2 r13
    bra LAB_ce30ef6
    add r3,r13

LAB_ce30eea:
    mov.w @(0x1c,r14),r0
    mov r0,r13
    shll2 r13
    shll2 r13
    neg r13,r13
    add r5,r13

LAB_ce30ef6:
    mov.l @(PTR_ce30fac,pc),r2
    jsr @r2
    nop
    and 0x3F,r0
    neg r0,r0
    add 0x20,r0
    add r0,r13
    exts.w r13,r13
    lds r13,FPUL
    mov 0x50,r0
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce30fb0,pc),r0
    float FPUL,fr3
    fmul fr2,fr3
    fmov.s @r0,fr2
    mov.w @(DAT_ce30faa,pc),r0
    mov.w @(r0,r14),r3
    fmov fr3,fr4
    tst r3,r3
    bt/s LAB_ce30f22
    fmul fr2,fr4
    fneg fr4

LAB_ce30f22:
    mov 0x68,r0
    mov.l @(PTR_ce30fac,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fsub fr4,fr3
    jsr @r3
    fmov fr3,@(r0,r14)
    mov.l @(PTR_ce30fb4,pc),r2
    mov r0,r1
    jsr @r2
    mov 0x03,r0
    add 0xFF,r0
    mov r0,r4
    shll2 r4
    shll r4
    lds r4,FPUL
    mov 0x6C,r0
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce30fb8,pc),r0
    fmov.s @r0,fr0
    mov 0x60,r0
    float FPUL,fr3
    fmac fr0,fr3,fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30f5a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce30fe2
    mov.l @(PTR_ce30fac,pc),r2
    jsr @r2
    nop
    and 0x07,r0
    mov.l @(PTR_ce30fbc,pc),r3
    mov.w r0,@(0x1e,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r1
    extu.b r1,r1
    add 0x01,r1
    jsr @r3
    mov 0x03,r0
    mov 0x22,r1
    add r14,r1
    mov.b r0,@r1
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30fc0
    mov.w @(0x1e,r14),r0
    mov 0x00,r13
    add 0x08,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    bra LAB_ce30fc8
    mov.w r0,@(0x1c,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fa4:
    #data 0x00a0
DAT_ce30fa6:
    #data 0x01a3
DAT_ce30fa8:
    #data 0xff60
DAT_ce30faa:
    #data 0x0130
    #align4

PTR_ce30fac:
    #data loc_8c03319e
DAT_ce30fb0:
    #data 0x3fd55555
PTR_ce30fb4:
    #data loc_8c12939c
DAT_ce30fb8:
    #data 0x40092492
PTR_ce30fbc:
    #data loc_8c1292d4

;=============================================

LAB_ce30fc0:
    mov.w @(0x1e,r14),r0
    mov 0x01,r13
    add 0x04,r0
    mov.w r0,@(0x1e,r14)

LAB_ce30fc8:
    mov.l @(PTR_ce310ec,pc),r3
    jsr @r3
    nop
    and 0x0F,r0
    mov.b r0,@r15
    bsr FUN_ce30ea4
    mov r14,r4
    mov.l @(PTR_ce310f0,pc),r3
    mov r13,r5
    mov.b @r15,r6
    add 0x01,r5
    jsr @r3
    mov r14,r4

LAB_ce30fe2:
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bt LAB_ce30ff2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)

LAB_ce30ff2:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30ffc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt LAB_ce31022
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3104a
    lds.l @r15+,PR
    mov.l @(PTR_ce310f4,pc),r2
    mov r14,r4
    mov 0x02,r6
    mov 0x03,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31022:
    mov.l @(PTR_ce310f8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3104a
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce310fc,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3104a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31050:
    mov r4,r3
    mov.l @(PTR_ce31100,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31062:
    mov.b @(0x6,r4),r0
    mov 0x00,r5
    mov 0x30,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x04,r6
    mov.w @(DAT_ce310e6,pc),r0
    mov.b r5,@(r0,r4)
    add 0xA8,r0
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce31104,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce310f4,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce3109a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce310f8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310b6
    mov.l @(PTR_ce310fc,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce31136
    nop

LAB_ce310b6:
    mov.w @(DAT_ce310e8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31136
    mov 0x00,r3
    mov r14,r2
    mov.b r3,@(r0,r14)
    add 0x34,r2
    mov.l @(PTR_ce31108,pc),r3
    mov r15,r1
    jsr @r3
    mov 0x0C,r0
    mova @(DAT_ce3110c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce310ea,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31110
    mov 0x50,r0
    fmov.s @r15,fr2
    fmov.s @(r0,r14),fr3
    fmov fr4,fr0
    bra LAB_ce3111a
    fmac fr0,fr3,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310e6:
    #data 0x01f9
DAT_ce310e8:
    #data 0x0141
DAT_ce310ea:
    #data 0x0130
    #align4

PTR_ce310ec:
    #data loc_8c03319e
PTR_ce310f0:
    #data loc_8c0891dc
PTR_ce310f4:
    #data loc_8c034e8c
PTR_ce310f8:
    #data loc_8c034dee
PTR_ce310fc:
    #data FUN_ce32276
PTR_ce31100:
    #data PTR_ce32de0
PTR_ce31104:
    #data loc_8c2896b0
PTR_ce31108:
    #data loc_8c1294c8
DAT_ce3110c:
    #data 0x43a00000

;=============================================

LAB_ce31110:
    mov 0x50,r0
    fmov.s @r15,fr2
    fmov.s @(r0,r14),fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce3111a:
    mova @(DAT_ce31250,pc),r0
    fmov.s fr2,@r15
    fmov.s @r0,fr3
    mov r15,r5
    mov.w @(DAT_ce31248,pc),r0
    mov 0x04,r6
    mov.l @(PTR_ce31254,pc),r3
    mov 0x00,r7
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31136:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3113e:
    mov r4,r3
    mov.l @(PTR_ce31258,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31150:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    mov 0x38,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3124a,pc),r0
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3125c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31260,pc),r2
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

LAB_ce311a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31264,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3124c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce311ea
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.l @(PTR_ce31268,pc),r3
    jsr @r3
    mov.w r0,@(0x1e,r14)
    mov.l @(PTR_ce31268,pc),r3
    mov 0x22,r1
    add r14,r1
    jsr @r3
    mov.b r0,@r1
    mov.l @(PTR_ce3126c,pc),r2
    mov r0,r1
    jsr @r2
    mov 0x03,r0
    mov 0x21,r1
    add r14,r1
    mov.b r0,@r1

LAB_ce311ea:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311f0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31264,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce3129a
    mov.l @(PTR_ce31268,pc),r2
    jsr @r2
    nop
    and 0x04,r0
    mov.w r0,@(0x1e,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    mov 0x22,r1
    add r14,r1
    add 0x01,r0
    and 0x01,r0
    mov.b r0,@r1
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce31274
    mov.w @(0x1e,r14),r0
    mov.l @(PTR_ce31270,pc),r3
    add 0x08,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov 0x21,r0
    mov.b @(r0,r14),r4
    extu.b r4,r1
    mov r4,r6
    add 0x01,r1
    jsr @r3
    mov 0x03,r0
    mov 0x21,r1
    add r14,r1
    bra LAB_ce31286
    mov.b r0,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31248:
    #data 0x041c
DAT_ce3124a:
    #data 0x01f9
DAT_ce3124c:
    #data 0x0141
    #align4

DAT_ce31250:
    #data 0xc2200000
PTR_ce31254:
    #data loc_8c08926c
PTR_ce31258:
    #data PTR_ce32de8
PTR_ce3125c:
    #data loc_8c2896b0
PTR_ce31260:
    #data loc_8c034e8c
PTR_ce31264:
    #data loc_8c034dee
PTR_ce31268:
    #data loc_8c03319e
PTR_ce3126c:
    #data loc_8c12939c
PTR_ce31270:
    #data loc_8c1292d4

;=============================================

LAB_ce31274:
    mov.l @(PTR_ce313b4,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce313b8,pc),r3
    mov r0,r1
    jsr @r3
    mov 0x03,r0
    mov.w @(DAT_ce313ae,pc),r6
    add r0,r6

LAB_ce31286:
    mov.l @(PTR_ce313bc,pc),r2
    mov 0x06,r5
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bt LAB_ce3129a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce3129a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce312a0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce313c0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312ba
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce313c4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce312ba:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce312c2:
    mov r4,r3
    mov.l @(PTR_ce313c8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce312d4:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    mov 0x3B,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce313b0,pc),r0
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce313cc,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce313d0,pc),r2
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

LAB_ce3132c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313c0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce313b2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31358
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r3,r6
    mov 0x08,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce313b2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce313bc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x78,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31358:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3135e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313c0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31388
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce313d0,pc),r3
    mov 0x07,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31388:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3138e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce313c0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313a6
    mov.l @r15,r4
    add 0x04,r15
    bra FUN_ce32276
    lds.l @r15+,PR

LAB_ce313a6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce313ae:
    #data 0x0080
DAT_ce313b0:
    #data 0x01f9
DAT_ce313b2:
    #data 0x0141
    #align4

PTR_ce313b4:
    #data loc_8c03319e
PTR_ce313b8:
    #data loc_8c12939c
PTR_ce313bc:
    #data loc_8c0891dc
PTR_ce313c0:
    #data loc_8c034dee
PTR_ce313c4:
    #data FUN_ce32276
PTR_ce313c8:
    #data PTR_ce32df8
PTR_ce313cc:
    #data loc_8c2896b0
PTR_ce313d0:
    #data loc_8c034e8c

;=============================================

LAB_ce313d4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce313f2
    cmp/eq 0x01,r0
    bt LAB_ce31440
    cmp/eq 0x02,r0
    bt LAB_ce31454
    cmp/eq 0x03,r0
    bt LAB_ce31468
    bra LAB_ce31472
    nop

LAB_ce313f2:
    mov.l @(PTR_ce314b8,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce31402
    mov 0x02,r0
    bra LAB_ce31472
    mov.b r0,@(0x6,r14)

LAB_ce31402:
    mov.l @(PTR_ce314bc,pc),r3
    mov 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce314c0,pc),r0
    fmov.s @r0,fr3
    mov 0x50,r0
    fmov.s @(r0,r14),fr4
    mov.w @(DAT_ce314b2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31420
    fmul fr3,fr4
    fneg fr4

LAB_ce31420:
    mov.l @(PTR_ce314c4,pc),r3
    mov 0x34,r0
    mov.l @(PTR_ce314c8,pc),r2
    mov r14,r4
    fmov.s @r3,fr3
    mov 0x04,r6
    mov 0x00,r5
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce314b4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r2
    mov.l @r15+,r14

LAB_ce31440:
    mov.l @(PTR_ce314cc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31472
    mov.b @(0x6,r14),r0
    add 0x01,r0
    bra LAB_ce31472
    mov.b r0,@(0x6,r14)

LAB_ce31454:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce314c8,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x13,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31468:
    lds.l @r15+,PR
    mov.l @(PTR_ce314cc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31472:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31478:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce314cc,pc),r12
    extu.b r0,r0
    mov.l @(PTR_ce314c8,pc),r13
    cmp/eq 0x00,r0
    bt LAB_ce314a2
    cmp/eq 0x01,r0
    bt LAB_ce3150c
    cmp/eq 0x02,r0
    bt LAB_ce3151e
    cmp/eq 0x03,r0
    bt LAB_ce31530
    cmp/eq 0x04,r0
    bt LAB_ce3154e
    bra LAB_ce3156c
    nop

LAB_ce314a2:
    mov.l @(PTR_ce314b8,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce314d0
    mov 0x02,r0
    bra LAB_ce3156c
    mov.b r0,@(0x6,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314b2:
    #data 0x01d2
DAT_ce314b4:
    #data 0x041c
    #align4

PTR_ce314b8:
    #data loc_8c03340c
PTR_ce314bc:
    #data loc_8c05218a
DAT_ce314c0:
    #data 0x42d55555
PTR_ce314c4:
    #data loc_8c26a524
PTR_ce314c8:
    #data loc_8c034e8c
PTR_ce314cc:
    #data loc_8c034dee

;=============================================

LAB_ce314d0:
    mov.l @(PTR_ce315e8,pc),r3
    mov 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce315ec,pc),r0
    fmov.s @r0,fr3
    mov 0x50,r0
    fmov.s @(r0,r14),fr4
    mov.w @(DAT_ce315dc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce314ee
    fmul fr3,fr4
    fneg fr4

LAB_ce314ee:
    mov.l @(PTR_ce315f0,pc),r3
    mov 0x34,r0
    mov 0x00,r5
    fmov.s @r3,fr3
    mov 0x04,r6
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce315de,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r13
    mov r14,r4
    bra LAB_ce3156c
    nop

LAB_ce3150c:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3156c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    bra LAB_ce3156c
    mov.b r0,@(0x6,r14)

LAB_ce3151e:
    mov.b @(0x6,r14),r0
    mov 0x13,r5
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r13
    mov r14,r4
    bra LAB_ce3156c
    nop

LAB_ce31530:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3156c
    mov.b @(0x6,r14),r0
    mov 0x13,r5
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r13
    mov r14,r4
    mov.w @(DAT_ce315e0,pc),r0
    bra LAB_ce3156c
    mov.w r0,@(0x1c,r14)

LAB_ce3154e:
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bf LAB_ce31568
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31568
    mov.l @(PTR_ce315f4,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4

LAB_ce31568:
    jsr @r12
    mov r14,r4

LAB_ce3156c:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31576:
    mov r4,r3
    mov.l @(PTR_ce315f8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31588:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce315e2,pc),r0
    mov r4,r14
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf/s LAB_ce31604
    mov 0x00,r13
    mov.b @(0x7,r14),r0
    mov 0x3D,r3
    mov 0x13,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x03,r6
    mov.w @(DAT_ce315e4,pc),r0
    mov.b r13,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce315fc,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31600,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce316b8
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315dc:
    #data 0x01d2
DAT_ce315de:
    #data 0x041c
DAT_ce315e0:
    #data 0x0091
DAT_ce315e2:
    #data 0x01ea
DAT_ce315e4:
    #data 0x01f9
    #align4

PTR_ce315e8:
    #data loc_8c05218a
DAT_ce315ec:
    #data 0x42d55555
PTR_ce315f0:
    #data loc_8c26a524
PTR_ce315f4:
    #data loc_8c042008
PTR_ce315f8:
    #data PTR_ce32e08
PTR_ce315fc:
    #data loc_8c2896b0
PTR_ce31600:
    #data loc_8c034e8c

;=============================================

LAB_ce31604:
    mov.l @(PTR_ce316d0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31632
    mov.w @(DAT_ce316c2,pc),r0
    mov.l @(r0,r14),r0
    mov.b @(0x5,r0),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31624
    bsr FUN_ce3227a
    mov r14,r4
    bra LAB_ce316b8
    nop

LAB_ce31624:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    bra LAB_ce31664
    mov.b r0,@(0x7,r14)

LAB_ce31632:
    mov.w @(DAT_ce316c4,pc),r0
    mov.b @(r0,r14),r4
    exts.b r4,r0
    tst 0x08,r0
    bf LAB_ce31664
    exts.b r4,r2
    tst r2,r2
    bt LAB_ce31664
    mov.w @(DAT_ce316c4,pc),r0
    mov 0x08,r3
    mov.b @(r0,r14),r2
    or r3,r2
    mov.b r2,@(r0,r14)
    bsr FUN_ce316e8
    mov r14,r4
    tst r0,r0
    bt LAB_ce31664
    mov.w @(DAT_ce316c8,pc),r0
    mov.w @(DAT_ce316c6,pc),r2
    mov.l @(PTR_ce316d4,pc),r3
    mov.b r2,@(r0,r14)
    add 0x15,r0
    mov.l @(r0,r14),r5
    jsr @r3
    mov r14,r4

LAB_ce31664:
    mov.w @(DAT_ce316ca,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce316b8
    mov r14,r2
    mov.l @(PTR_ce316d8,pc),r3
    mov.b r13,@(r0,r14)
    add 0x34,r2
    mov r15,r1
    jsr @r3
    mov 0x0C,r0
    mova @(DAT_ce316dc,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce316cc,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31692
    mov 0x50,r0
    fmov.s @r15,fr2
    fmov.s @(r0,r14),fr3
    fmov fr4,fr0
    bra LAB_ce3169c
    fmac fr0,fr3,fr2

LAB_ce31692:
    mov 0x50,r0
    fmov.s @r15,fr2
    fmov.s @(r0,r14),fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce3169c:
    mova @(DAT_ce316e0,pc),r0
    fmov.s fr2,@r15
    fmov.s @r0,fr3
    mov r15,r5
    mov.w @(DAT_ce316ce,pc),r0
    mov 0x04,r6
    mov.l @(PTR_ce316e4,pc),r3
    mov 0x01,r7
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce316b8:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce316c2:
    #data 0x020c
DAT_ce316c4:
    #data 0x019e
DAT_ce316c6:
    #data 0x00c0
DAT_ce316c8:
    #data 0x01f7
DAT_ce316ca:
    #data 0x0141
DAT_ce316cc:
    #data 0x0130
DAT_ce316ce:
    #data 0x041c
    #align4

PTR_ce316d0:
    #data loc_8c034dee
PTR_ce316d4:
    #data loc_8c0523d8
PTR_ce316d8:
    #data loc_8c1294c8
DAT_ce316dc:
    #data 0x43a00000
DAT_ce316e0:
    #data 0xc2200000
PTR_ce316e4:
    #data loc_8c08926c

;=============================================

FUN_ce316e8:
    mov.w @(DAT_ce317fa,pc),r0
    mov.b @(r0,r4),r0
    tst 0x80,r0
    bt LAB_ce3173e
    mov.w @(DAT_ce317fc,pc),r0
    mov.l @(r0,r4),r3
    mov.b @(0x3,r3),r0
    tst r0,r0
    bf LAB_ce3173e
    mov.w @(DAT_ce317fa,pc),r0
    mov.b @(r0,r4),r0
    tst 0x11,r0
    bf LAB_ce3173e
    mov.w @(DAT_ce317fc,pc),r0
    mov.l @(r0,r4),r3
    add 0x04,r0
    mov.l @(r0,r3),r2
    cmp/eq r2,r4
    bf LAB_ce3173e
    mov.w @(DAT_ce317fc,pc),r0
    mov.l @(r0,r4),r4
    mov.w @(DAT_ce317fe,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3173e
    mov.w @(DAT_ce31800,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce3173e
    mov.w @(DAT_ce31802,pc),r5
    mov 0x00,r1
    mov.l @(DAT_ce3180c,pc),r3
    add r4,r5
    mov.l @r5,r2
    and r3,r2
    or r1,r2
    tst r2,r2
    bf LAB_ce3173e
    mov.b @(0x5,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce31742

LAB_ce3173e:
    rts
    mov 0x00,r0

LAB_ce31742:
    mov 0x01,r0
    rts
    nop

LAB_ce31748:
    mov.w @(DAT_ce31804,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)
    add 0x22,r0
    mov.l @(r0,r4),r0
    mov.b @(0x5,r0),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3175e
    bra FUN_ce3227a
    nop

LAB_ce3175e:
    mov.w @(DAT_ce31806,pc),r0
    fldi0 fr3
    mov.l @(r0,r4),r3
    mov 0x60,r0
    fmov.s @(r0,r3),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31776
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x00,r0
    mov.b r0,@(0x7,r4)

LAB_ce31776:
    rts
    nop

LAB_ce3177a:
    mov.w @(DAT_ce31804,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31810,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31794:
    mov.b @(0x7,r4),r0
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce31806,pc),r0
    mov.l @(r0,r4),r3
    mov 0x34,r0
    fmov.s @(r0,r3),fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31814,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce31818,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31808,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt LAB_ce317c4
    mova @(DAT_ce3181c,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce317c4:
    mova @(DAT_ce31820,pc),r0
    mov.l @(PTR_ce31828,pc),r3
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x04,r6
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31824,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    mov 0x1C,r0
    mov.w r0,@(0x1c,r4)
    mov 0x04,r0
    mov.w r0,@(0x1e,r4)
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce3180a,pc),r0
    fmov.s @(r0,r4),fr2
    mov 0x38,r0
    fmov fr2,@(r0,r4)
    jmp @r3
    mov 0x13,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce317fa:
    #data 0x019e
DAT_ce317fc:
    #data 0x01b0
DAT_ce317fe:
    #data 0x0411
DAT_ce31800:
    #data 0x01f9
DAT_ce31802:
    #data 0x0414
DAT_ce31804:
    #data 0x01ea
DAT_ce31806:
    #data 0x020c
DAT_ce31808:
    #data 0x0130
DAT_ce3180a:
    #data 0x041c
    #align4

DAT_ce3180c:
    #data 0x07000000
PTR_ce31810:
    #data PTR_ce32e18
DAT_ce31814:
    #data 0x44855555
DAT_ce31818:
    #data 0xc1555555
DAT_ce3181c:
    #data 0xc4855555
DAT_ce31820:
    #data 0x42092492
DAT_ce31824:
    #data 0xc0092492
PTR_ce31828:
    #data loc_8c034e8c

;=============================================

LAB_ce3182c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce31852
    mov.w @(0x1e,r14),r0
    mov 0x03,r5
    mov.l @(PTR_ce31998,pc),r3
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31998,pc),r2
    mov 0x16,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31852:
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
    cmp/pz r0
    bt LAB_ce318b6
    mov.b @(0x7,r14),r0
    mov 0x00,r2
    mov 0x13,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x05,r6
    mov.w @(DAT_ce3198e,pc),r0
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce31990,pc),r0
    mov.b r2,@(r0,r3)
    add 0x1D,r0
    mov.w @(DAT_ce31992,pc),r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3199c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce318b6:
    mov.w @(DAT_ce31994,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce318d2
    mov.w @(DAT_ce31994,pc),r0
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    bra FUN_ce3227a
    mov.l @r15+,r14

LAB_ce318d2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318d8:
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
    mov.w @(DAT_ce31994,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31988
    mov.b @(0x7,r14),r0
    mov 0x02,r5
    mov.l @(PTR_ce319a0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31994,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce319a0,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3194c
    mov r0,r4
    mov 0x21,r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce3194c:
    mova @(DAT_ce319a4,pc),r0
    fmov.s @r0,fr3
    mov 0x50,r0
    fmov.s @(r0,r14),fr4
    mov.w @(DAT_ce31996,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31960
    fmul fr3,fr4
    fneg fr4

LAB_ce31960:
    mov 0x34,r0
    mov.l @(PTR_ce3199c,pc),r3
    fmov.s @(r0,r14),fr3
    mov r14,r4
    mov 0x02,r6
    fadd fr4,fr3
    fldi0 fr4
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31988:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3198e:
    #data 0x01c8
DAT_ce31990:
    #data 0x012c
DAT_ce31992:
    #data 0x00ff
DAT_ce31994:
    #data 0x041c
DAT_ce31996:
    #data 0x0130
    #align4

PTR_ce31998:
    #data loc_8c042008
PTR_ce3199c:
    #data loc_8c034e8c
PTR_ce319a0:
    #data loc_8c0d8000
DAT_ce319a4:
    #data 0x43480000

;=============================================

LAB_ce319a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ac8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319d0
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31acc,pc),r3
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov 0x13,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce319d0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce319d6:
    mov.w @(DAT_ce31aba,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce31ac8,pc),r3
    jmp @r3
    nop

LAB_ce319e2:
    mov.w @(DAT_ce31abc,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31ad0,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce319fc:
    mov.b @(0x6,r4),r0
    mov 0x00,r5
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31abe,pc),r0
    mov.b r5,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce31ac0,pc),r0
    mov.b r5,@(r0,r4)
    add 0xE2,r0
    mov.w r0,@(0x1c,r4)
    mov r5,r0
    nop
    mov.l @(PTR_ce31acc,pc),r3
    mov 0x07,r6
    mov.w r0,@(0x1e,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31a30:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ac8,pc),r3
    jsr @r3
    mov r4,r14
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf/s LAB_ce31a54
    mov 0x00,r4
    mov.w @(DAT_ce31ac2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31a84
    mov.b r4,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    bra LAB_ce31a84
    mov.b r0,@(0x7,r14)

LAB_ce31a54:
    mov.w @(DAT_ce31ac2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31a78
    mov.w @(DAT_ce31ac4,pc),r0
    mov.b @(r0,r14),r3
    add 0x12,r0
    mov.l @(r0,r14),r2
    lds r3,FPUL
    mov.b @(0x2,r2),r0
    mov r0,r3
    float FPUL,fr3
    lds r3,FPUL
    mov.w @(DAT_ce31ac6,pc),r0
    float FPUL,fr2
    fdiv fr2,fr3
    bra LAB_ce31a84
    fmov fr3,@(r0,r14)

LAB_ce31a78:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)

LAB_ce31a84:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31a8a:
    mov.w @(DAT_ce31ac0,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31aa0
    bra FUN_ce32276
    nop

LAB_ce31aa0:
    mov.w @(0x1e,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r4)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31ab6
    mov.l @(PTR_ce31ad4,pc),r3
    mov 0x0C,r0
    mov.w r0,@(0x1e,r4)
    jmp @r3
    mov 0x03,r5

LAB_ce31ab6:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31aba:
    #data 0x01ea
DAT_ce31abc:
    #data 0x02a5
DAT_ce31abe:
    #data 0x01f9
DAT_ce31ac0:
    #data 0x012c
DAT_ce31ac2:
    #data 0x0141
DAT_ce31ac4:
    #data 0x0142
DAT_ce31ac6:
    #data 0x0108
    #align4

PTR_ce31ac8:
    #data loc_8c034dee
PTR_ce31acc:
    #data loc_8c034e8c
PTR_ce31ad0:
    #data PTR_ce32e28
PTR_ce31ad4:
    #data loc_8c0d8000

;=============================================

LAB_ce31ad8:
    mov.w @(DAT_ce31c06,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce31afc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce31b2c
    cmp/eq 0x02,r0
    bt LAB_ce31b7c
    bra LAB_ce31b96
    nop

LAB_ce31afc:
    mov.b @(0x6,r14),r0
    mov r14,r4
    fldi0 fr4
    mov 0x08,r6
    add 0x01,r0
    mov.l @(PTR_ce31c14,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x13,r5
    mov.w @(DAT_ce31c08,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31c0a,pc),r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b2c:
    mov.l @(PTR_ce31c18,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce31b4a
    mov.w @(DAT_ce31c0c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31b96
    mov.b r13,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    bra LAB_ce31b96
    mov.b r0,@(0x7,r14)

LAB_ce31b4a:
    mov.w @(DAT_ce31c0c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31b6e
    mov.w @(DAT_ce31c0e,pc),r0
    mov.b @(r0,r14),r3
    add 0x12,r0
    mov.l @(r0,r14),r2
    lds r3,FPUL
    mov.b @(0x2,r2),r0
    mov r0,r3
    float FPUL,fr3
    lds r3,FPUL
    mov.w @(DAT_ce31c10,pc),r0
    float FPUL,fr2
    fdiv fr2,fr3
    bra LAB_ce31b96
    fmov fr3,@(r0,r14)

LAB_ce31b6e:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    bra LAB_ce31b96
    mov.b r0,@(0x7,r14)

LAB_ce31b7c:
    mov.w @(DAT_ce31c12,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31b96
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra FUN_ce32276
    mov.l @r15+,r14

LAB_ce31b96:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31b9e:
    mov r4,r3
    mov.l @(PTR_ce31c1c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31bb0:
    mov.b @(0x6,r4),r0
    mov 0x00,r5
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31c08,pc),r0
    mov.b r5,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce31c12,pc),r0
    mov.b r5,@(r0,r4)
    add 0xE2,r0
    mov.w r0,@(0x1c,r4)
    mov r5,r0
    nop
    mov.l @(PTR_ce31c20,pc),r3
    jmp @r3
    mov.w r0,@(0x1e,r4)

LAB_ce31be0:
    mov.w @(DAT_ce31c12,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31bf6
    bra FUN_ce32276
    nop

LAB_ce31bf6:
    rts
    nop

LAB_ce31bfa:
    rts
    mov 0x00,r0

LAB_ce31bfe:
    rts
    nop

LAB_ce31c02:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c06:
    #data 0x02a5
DAT_ce31c08:
    #data 0x01f9
DAT_ce31c0a:
    #data 0x010e
DAT_ce31c0c:
    #data 0x0141
DAT_ce31c0e:
    #data 0x0142
DAT_ce31c10:
    #data 0x0108
DAT_ce31c12:
    #data 0x012c
    #align4

PTR_ce31c14:
    #data loc_8c034e8c
PTR_ce31c18:
    #data loc_8c034dee
PTR_ce31c1c:
    #data PTR_ce32e34
PTR_ce31c20:
    #data loc_8c0fe1fc

;=============================================

LAB_ce31c24:
    mov.w @(DAT_ce31cd4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    mov 0x24,r0
    mov.b @(r0,r3),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31c66
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31cd6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31cd8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31ce0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x00,r0
    bra LAB_ce31cce
    mov.w r0,@(0x1e,r14)

LAB_ce31c66:
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31cc0
    mov.l @(PTR_ce31ce4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31ce8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt LAB_ce31c90
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31c90
    mov.l @(PTR_ce31cec,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31c90:
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf LAB_ce31cb0
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31cb0
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce31cb0
    mov.w @(DAT_ce31cda,pc),r0
    mov.l @(PTR_ce31cf0,pc),r3
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4

LAB_ce31cb0:
    mov.w @(DAT_ce31cdc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31cce
    mov.b @(0x6,r14),r0
    add 0x01,r0
    bra LAB_ce31cce
    mov.b r0,@(0x6,r14)

LAB_ce31cc0:
    mov.w @(DAT_ce31cd4,pc),r0
    mov r14,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce31cf4,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31cce:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31cd4:
    #data 0x01c8
DAT_ce31cd6:
    #data 0x0218
DAT_ce31cd8:
    #data 0x021c
DAT_ce31cda:
    #data 0x00ff
DAT_ce31cdc:
    #data 0x012c
    #align4

DAT_ce31ce0:
    #data 0xbfbc9249
PTR_ce31ce4:
    #data loc_8c058c48
PTR_ce31ce8:
    #data loc_8c034dee
PTR_ce31cec:
    #data loc_8c04e958
PTR_ce31cf0:
    #data loc_8c04e98a
PTR_ce31cf4:
    #data loc_8c04cc1c

;=============================================

LAB_ce31cf8:
    mov.w @(DAT_ce31dc8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31d0c
    bsr FUN_ce323d8
    mov r14,r4

LAB_ce31d0c:
    mov.l @(PTR_ce31dd8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31ddc,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31de0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31dca,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31d68
    mov 0x00,r13
    mov.w @(DAT_ce31dcc,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31d58
    mov.w @(r0,r14),r3
    add 0xFF,r3
    mov.w r3,@(r0,r14)
    exts.w r3,r3
    cmp/pl r3
    bt LAB_ce31d52
    mov.w @(DAT_ce31dce,pc),r0
    mov.l @(PTR_ce31de4,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31de8,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    bra LAB_ce31d58
    nop

LAB_ce31d52:
    mov.w @(DAT_ce31dce,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce31d58:
    mov.w @(DAT_ce31dca,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31d68
    mov.w @(DAT_ce31dce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31d6e

LAB_ce31d68:
    mov.l @(PTR_ce31dec,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31d6e:
    mov.l @(PTR_ce31df0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31dd0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31dfc
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31dd2,pc),r0
    mov r0,r3
    add 0xF0,r3
    add r14,r3
    mov.w @(r0,r14),r2
    mov.w @r3,r3
    or r3,r2
    mov.w @(DAT_ce31dd4,pc),r3
    mov.w r2,@(r0,r14)
    add 0x02,r0
    add r14,r3
    mov.w @(r0,r14),r2
    mov.w @r3,r3
    or r3,r2
    mov.l @(PTR_ce31df4,pc),r3
    mov.w r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x5,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce31db4
    mov.l @(PTR_ce31df8,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31db4:
    mov.b @(0x5,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce31dc0
    bra LAB_ce31ec4
    nop

LAB_ce31dc0:
    mov.w @(DAT_ce31dd6,pc),r0
    mov 0x01,r2
    bra LAB_ce31ec4
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31dc8:
    #data 0x0525
DAT_ce31dca:
    #data 0x0202
DAT_ce31dcc:
    #data 0x03e4
DAT_ce31dce:
    #data 0x03f2
DAT_ce31dd0:
    #data 0x01a0
DAT_ce31dd2:
    #data 0x0350
DAT_ce31dd4:
    #data 0x0348
DAT_ce31dd6:
    #data 0x01ea
    #align4

PTR_ce31dd8:
    #data loc_8c04fc20
PTR_ce31ddc:
    #data loc_8c053cf4
PTR_ce31de0:
    #data FUN_ce303e4
PTR_ce31de4:
    #data loc_8c059e5c
PTR_ce31de8:
    #data loc_8c035162
PTR_ce31dec:
    #data loc_8c059dda
PTR_ce31df0:
    #data loc_8c057694
PTR_ce31df4:
    #data loc_8c059946
PTR_ce31df8:
    #data loc_8c0510d8

;=============================================

LAB_ce31dfc:
    mov.w @(DAT_ce31ef6,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce31e0a
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)

LAB_ce31e0a:
    mov.w @(DAT_ce31ef8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e18
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)

LAB_ce31e18:
    mov.w @(DAT_ce31efa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e26
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)

LAB_ce31e26:
    mov.w @(DAT_ce31efc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e34
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)

LAB_ce31e34:
    mov.w @(DAT_ce31efe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e42
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)

LAB_ce31e42:
    mov.w @(DAT_ce31f00,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e50
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)

LAB_ce31e50:
    mov.w @(DAT_ce31f02,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e68
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    exts.b r3,r3
    cmp/pl r3
    bt LAB_ce31e68
    mov.w @(DAT_ce31f04,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce31e68:
    mov.w @(DAT_ce31f06,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31e80
    mov.w @(r0,r14),r3
    add 0xFF,r3
    mov.w r3,@(r0,r14)
    exts.w r3,r3
    tst r3,r3
    bf LAB_ce31e80
    mov.w @(DAT_ce31f08,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce31e80:
    mov.w @(DAT_ce31f0a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31e98
    mov.w @(r0,r14),r3
    add 0xFF,r3
    mov.w r3,@(r0,r14)
    exts.w r3,r3
    tst r3,r3
    bf LAB_ce31e98
    mov.w @(DAT_ce31f0c,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce31e98:
    mov.b @(0x5,r14),r0
    mov.l @(PTR_ce31f18,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f0e,pc),r0
    mov.l @(r0,r14),r3
    add 0x29,r0
    mov.b @(r0,r3),r2
    tst r2,r2
    bt LAB_ce31ec4
    mov.w @(DAT_ce31f0e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @(0x5,r2),r0
    tst r0,r0
    bf LAB_ce31ec4
    mov.w @(DAT_ce31f0e,pc),r0
    mov.l @(r0,r14),r2
    add 0x29,r0
    mov.b r13,@(r0,r2)

LAB_ce31ec4:
    mov.w @(DAT_ce31f10,pc),r3
    mov r3,r0
    nop
    add 0x4A,r0
    mov.b r3,@(r0,r14)
    add 0x53,r0
    mov 0x80,r4
    mov.b r4,@(r0,r14)
    add 0x50,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31ee0
    mov.w @(DAT_ce31f12,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce31ee0:
    mov.w @(DAT_ce31f14,pc),r0
    mov.b r4,@(r0,r14)
    add 0x50,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31f2e
    mov.b @(0x5,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bra LAB_ce31f1c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ef6:
    #data 0x01ed
DAT_ce31ef8:
    #data 0x01eb
DAT_ce31efa:
    #data 0x0237
DAT_ce31efc:
    #data 0x01ec
DAT_ce31efe:
    #data 0x01f2
DAT_ce31f00:
    #data 0x01f3
DAT_ce31f02:
    #data 0x0328
DAT_ce31f04:
    #data 0x0327
DAT_ce31f06:
    #data 0x03e6
DAT_ce31f08:
    #data 0x03ee
DAT_ce31f0a:
    #data 0x03e8
DAT_ce31f0c:
    #data 0x03ef
DAT_ce31f0e:
    #data 0x020c
DAT_ce31f10:
    #data 0x00ff
DAT_ce31f12:
    #data 0x019c
DAT_ce31f14:
    #data 0x019d
    #align4

PTR_ce31f18:
    #data PTR_ce32e3c

;=============================================

LAB_ce31f1c:
    bt LAB_ce31f2e
    mov.b @(0x5,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31f32
    mov.w @(DAT_ce31ffe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31f32

LAB_ce31f2e:
    mov.w @(DAT_ce32000,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce31f32:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31f3a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3200c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32002,pc),r0
    mov 0x00,r2
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0xA8,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32010,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31f5e:
    mov.l @(PTR_ce32014,pc),r2
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @r2,r3
    mov.b @r3,r1
    mov 0x06,r3
    extu.b r1,r1
    cmp/ge r3,r1
    bf/s LAB_ce31f8a
    mov r4,r14
    mov.w @(DAT_ce32004,pc),r0
    mov.b @(r0,r14),r0
    tst r0,r0
    bf LAB_ce31f8a
    mov.w @(DAT_ce32004,pc),r0
    mov 0x01,r2
    mov r14,r4
    mov 0x16,r5
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    bra FUN_ce322d4
    mov.l @r15+,r14

LAB_ce31f8a:
    mov 0x00,r5
    bsr FUN_ce322a8
    mov r14,r4
    tst r0,r0
    bf LAB_ce31fae
    mov.l @(PTR_ce32018,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32006,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31fae
    mov.w @(DAT_ce32006,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce31fae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31fb4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x01,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce31fe4
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce32020
    cmp/eq 0x02,r0
    bt LAB_ce3209a
    cmp/eq 0x03,r0
    bf LAB_ce31fd8
    bra LAB_ce320ea
    nop

LAB_ce31fd8:
    cmp/eq 0x04,r0
    bf LAB_ce31fe0
    bra LAB_ce3216c
    nop

LAB_ce31fe0:
    bra LAB_ce32182
    nop

LAB_ce31fe4:
    mov.w @(DAT_ce32008,pc),r0
    mov 0x02,r6
    mov.l @(PTR_ce3201c,pc),r3
    mov 0x00,r5
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ffe:
    #data 0x01f6
DAT_ce32000:
    #data 0x019d
DAT_ce32002:
    #data 0x0228
DAT_ce32004:
    #data 0x01f8
DAT_ce32006:
    #data 0x041c
DAT_ce32008:
    #data 0x02a5
    #align4

PTR_ce3200c:
    #data loc_8c05a2cc
PTR_ce32010:
    #data PTR_ce32e4c
PTR_ce32014:
    #data loc_8c2896b0
PTR_ce32018:
    #data loc_8c034dee
PTR_ce3201c:
    #data loc_8c034e8c

;=============================================

LAB_ce32020:
    mov.w @(DAT_ce32140,pc),r0
    mov.l @(PTR_ce32150,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce32046
    mov.w @(DAT_ce32142,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3203c
    bra LAB_ce32182
    nop

LAB_ce3203c:
    mov.b r13,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    bra LAB_ce32182
    mov.b r0,@(0x7,r14)

LAB_ce32046:
    mov.w @(DAT_ce32142,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3206a
    mov.w @(DAT_ce32144,pc),r0
    mov.b @(r0,r14),r3
    add 0x12,r0
    mov.l @(r0,r14),r2
    lds r3,FPUL
    mov.b @(0x2,r2),r0
    mov r0,r3
    float FPUL,fr3
    lds r3,FPUL
    mov.w @(DAT_ce32146,pc),r0
    float FPUL,fr2
    fdiv fr2,fr3
    bra LAB_ce32182
    fmov fr3,@(r0,r14)

LAB_ce3206a:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce32154,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32148,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32182
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    bra LAB_ce32182
    fmov fr3,@(r0,r14)

LAB_ce3209a:
    mov.w @(DAT_ce32140,pc),r0
    mov.l @(PTR_ce32158,pc),r3
    mov.b r4,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
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
    mov.w @(0x1c,r14),r0
    mov r0,r3
    lds r3,FPUL
    mova @(DAT_ce3215c,pc),r0
    fmov.s @r0,fr2
    float FPUL,fr3
    mov.w @(DAT_ce3214a,pc),r0
    fdiv fr2,fr3
    fmov fr3,@(r0,r14)
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce32182
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32140,pc),r0
    bra LAB_ce32182
    mov.b r13,@(r0,r14)

LAB_ce320ea:
    mov.l @(PTR_ce32160,pc),r3
    mov.b @r3,r0
    extu.b r0,r0
    tst 0x02,r0
    bf LAB_ce32124
    mov.w @(DAT_ce3214c,pc),r0
    mov.w @(DAT_ce3214e,pc),r2
    mov.w @(r0,r14),r1
    extu.w r1,r1
    tst r2,r1
    bt LAB_ce32124
    mov.l @(PTR_ce32158,pc),r2
    jsr @r2
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
    bra LAB_ce32182
    fmov fr2,@(r0,r14)

LAB_ce32124:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32164,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32168,pc),r2
    mov 0x04,r6
    mov 0x00,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32140:
    #data 0x02a5
DAT_ce32142:
    #data 0x0141
DAT_ce32144:
    #data 0x0142
DAT_ce32146:
    #data 0x0108
DAT_ce32148:
    #data 0x0130
DAT_ce3214a:
    #data 0x02a8
DAT_ce3214c:
    #data 0x0340
DAT_ce3214e:
    #data 0x0c00
    #align4

PTR_ce32150:
    #data loc_8c034dee
DAT_ce32154:
    #data 0xc1555555
PTR_ce32158:
    #data loc_8c04fd92
DAT_ce3215c:
    #data 0x41f00000
PTR_ce32160:
    #data loc_8c2895f1
PTR_ce32164:
    #data loc_8c05218a
PTR_ce32168:
    #data loc_8c034e8c

;=============================================

LAB_ce3216c:
    mov.l @(PTR_ce3228c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32182
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra FUN_ce32276
    mov.l @r15+,r14

LAB_ce32182:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3218a:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3227e,pc),r0
    mov 0x00,r4
    mov 0x10,r3
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32280,pc),r0
    mov.b r3,@(r0,r14)
    add 0xB0,r0
    mov.w @(DAT_ce32282,pc),r3
    mov.b r4,@(r0,r14)
    add 0xAC,r0
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce321b6
    cmp/eq 0x01,r0
    bt LAB_ce321fe
    bra LAB_ce3221e
    nop

LAB_ce321b6:
    mova @(DAT_ce32290,pc),r0
    fmov.s @r0,fr3
    mov 0x50,r0
    fmov.s @(r0,r14),fr4
    mov.w @(DAT_ce32284,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce321ca
    fmul fr3,fr4
    fneg fr4

LAB_ce321ca:
    mov.l @(PTR_ce32294,pc),r3
    mov 0x34,r0
    mov 0x01,r2
    fmov.s @r3,fr3
    fsub fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32286,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce32298,pc),r2
    mov.l @r2,r1
    mov.b @r1,r3
    mov 0x09,r1
    extu.b r3,r3
    cmp/ge r1,r3
    bf LAB_ce3221e
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3229c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32286,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32288,pc),r0
    bra LAB_ce3221e
    mov.w r0,@(0x1c,r14)

LAB_ce321fe:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce3221e
    mov.b @(0x6,r14),r0
    mov 0xFF,r4
    mov.l @(PTR_ce322a0,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3221e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32224:
    mov.w @(DAT_ce3228a,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    fldi1 fr3
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0x04,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3224e
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    bra LAB_ce32268
    fmov fr4,@(r0,r14)

LAB_ce3224e:
    mov.l @(PTR_ce322a4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3228c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32268
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce32276
    mov.l @r15+,r14

LAB_ce32268:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    mov.b @(0x5,r4),r0
    extu.b r0,r0
    rts
    cmp/eq 0x00,r0

;=============================================

FUN_ce32276:
    bra FUN_ce322d4
    mov 0x00,r5

;=============================================

FUN_ce3227a:
    bra FUN_ce32276
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3227e:
    #data 0x012c
DAT_ce32280:
    #data 0x01ed
DAT_ce32282:
    #data 0x00ff
DAT_ce32284:
    #data 0x0130
DAT_ce32286:
    #data 0x02a5
DAT_ce32288:
    #data 0x00dc
DAT_ce3228a:
    #data 0x02a4
    #align4

PTR_ce3228c:
    #data loc_8c034dee
DAT_ce32290:
    #data 0x42200000
PTR_ce32294:
    #data loc_8c26a524
PTR_ce32298:
    #data loc_8c2896b0
PTR_ce3229c:
    #data loc_8c0fe1fc
PTR_ce322a0:
    #data loc_8c0355b2
PTR_ce322a4:
    #data loc_8c0573e8

;=============================================

FUN_ce322a8:
    sts.l PR,@-r15
    tst r5,r5
    bt LAB_ce322b4
    mov.w @(DAT_ce323b6,pc),r0
    bra LAB_ce322b6
    nop

LAB_ce322b4:
    mov.w @(DAT_ce323b8,pc),r0

LAB_ce322b6:
    mov.w @(r0,r4),r5
    mov.w @(DAT_ce323ba,pc),r2
    extu.w r5,r5
    extu.w r5,r5
    tst r2,r5
    bf LAB_ce322c8
    lds.l @r15+,PR
    rts
    mov 0x00,r0

LAB_ce322c8:
    bsr FUN_ce322d4
    mov 0x01,r5
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce322d4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce323bc,pc),r0
    mov 0x01,r13
    mov.b r5,@r15
    mov r4,r14
    mov.l @(PTR_ce323c8,pc),r3
    mov.b r13,@(r0,r14)
    mov.b @r15,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.w @(DAT_ce323be,pc),r2
    mov r14,r1
    mov.b r0,@(0x7,r14)
    add 0x50,r1
    mov.b r0,@(0x6,r14)
    add r14,r2
    mov.b r0,@(0x5,r14)
    mov 0x48,r0
    mov.l @(PTR_ce323cc,pc),r3
    mov.l r4,@(r0,r14)
    jsr @r3
    mov 0x0C,r0
    mov.l @(PTR_ce323d0,pc),r5
    mov r13,r0
    nop
    mov.b r0,@(0x5,r5)
    mov.b @r15,r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt/s LAB_ce3232a
    fldi0 fr4
    cmp/eq 0x16,r0
    bt LAB_ce32340
    cmp/eq 0x00,r0
    bt LAB_ce3236c
    bra LAB_ce3236c
    nop

LAB_ce3232a:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce323c0,pc),r0
    bra LAB_ce32366
    mov.b r4,@(r0,r14)

LAB_ce32340:
    mov 0x3E,r0
    mov.b @(r0,r5),r6
    exts.b r6,r7
    cmp/pz r7
    bt LAB_ce3234e
    bra LAB_ce32362
    mov 0x04,r6

LAB_ce3234e:
    mov.b @(0x2,r14),r0
    extu.b r0,r0
    cmp/eq r0,r7
    bt/s LAB_ce3235a
    mov r4,r6
    add 0x01,r6

LAB_ce3235a:
    mov.b @(0x3,r5),r0
    tst r0,r0
    bt LAB_ce32362
    add 0x02,r6

LAB_ce32362:
    mov 0x20,r0
    mov.b r6,@(r0,r14)

LAB_ce32366:
    mov.w @(DAT_ce323c2,pc),r0
    bra LAB_ce323aa
    mov.b r4,@(r0,r14)

LAB_ce3236c:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0xFF,r3
    mov.w @(DAT_ce323c4,pc),r0
    mov.b r3,@(r0,r14)
    add 0x29,r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    add 0x09,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x80,r0
    bt LAB_ce3239a
    mov.w @(DAT_ce323c6,pc),r0
    bra LAB_ce3239e
    mov.b r13,@(r0,r14)

LAB_ce3239a:
    mov.w @(DAT_ce323c6,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3239e:
    mov.w @(DAT_ce323c6,pc),r0
    mov 0x00,r5
    mov.l @(PTR_ce323d4,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4

LAB_ce323aa:
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce323b6:
    #data 0x0348
DAT_ce323b8:
    #data 0x0340
DAT_ce323ba:
    #data 0x0c00
DAT_ce323bc:
    #data 0x012c
DAT_ce323be:
    #data 0x0284
DAT_ce323c0:
    #data 0x01fc
DAT_ce323c2:
    #data 0x01f9
DAT_ce323c4:
    #data 0x01d3
DAT_ce323c6:
    #data 0x0158
    #align4

PTR_ce323c8:
    #data loc_8c0530d8
PTR_ce323cc:
    #data loc_8c1294c8
PTR_ce323d0:
    #data loc_8c2895f0
PTR_ce323d4:
    #data loc_8c034e8c

;=============================================

FUN_ce323d8:
    mov.l @(PTR_ce324b0,pc),r3
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @r3,r0
    mov.b @r0,r0
    extu.b r0,r0
    cmp/eq 0x04,r0
    bf/s LAB_ce32414
    mov r4,r14
    mov.w @(DAT_ce324a2,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce32414
    mov.w @(DAT_ce324a4,pc),r0
    mov 0x00,r4
    mov.w r4,@(r0,r14)
    add 0x81,r0
    mov.b r4,@(r0,r14)
    bsr FUN_ce32a10
    mov r14,r4
    mov.w @(DAT_ce324a6,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce324b4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32414:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3241a:
    mov.w @(DAT_ce324a8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce32436
    cmp/eq 0x01,r0
    bt LAB_ce32444
    cmp/eq 0x02,r0
    bt LAB_ce3246c
    bra LAB_ce32480
    nop

LAB_ce32436:
    mov.w @(DAT_ce324a8,pc),r0
    mov.l @(PTR_ce324b8,pc),r2
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    add 0x23,r0
    mov.l r2,@(r0,r14)

LAB_ce32444:
    mov.w @(DAT_ce324a8,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    bsr FUN_ce32572
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3245c
    mov.w @(DAT_ce324aa,pc),r0
    mov.l @(PTR_ce324b8,pc),r2
    mov.l r2,@(r0,r14)

LAB_ce3245c:
    mov.w @(DAT_ce324aa,pc),r0
    mov.l @(r0,r14),r5
    bsr FUN_ce32800
    mov r14,r4
    mov.w @(DAT_ce324aa,pc),r1
    add r14,r1
    bra LAB_ce32480
    mov.l r0,@r1

LAB_ce3246c:
    mov.w @(DAT_ce324ac,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce324bc,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32480:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32486:
    mov.w @(DAT_ce324a8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce324c0
    cmp/eq 0x01,r0
    bt LAB_ce324d2
    cmp/eq 0x02,r0
    bt LAB_ce32502
    bra LAB_ce32516
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce324a2:
    #data 0x01a0
DAT_ce324a4:
    #data 0x04dc
DAT_ce324a6:
    #data 0x043c
DAT_ce324a8:
    #data 0x043d
DAT_ce324aa:
    #data 0x0460
DAT_ce324ac:
    #data 0x0440
    #align4

PTR_ce324b0:
    #data loc_8c2896b0
PTR_ce324b4:
    #data PTR_ce32ed4
PTR_ce324b8:
    #data DAT_ce32ef0
PTR_ce324bc:
    #data PTR_ce32ee0

;=============================================

LAB_ce324c0:
    mov.w @(DAT_ce325d2,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    bsr FUN_ce32b78
    mov r14,r4
    mov.w @(DAT_ce325d4,pc),r1
    add r14,r1
    mov.l r0,@r1

LAB_ce324d2:
    mov.w @(DAT_ce325d2,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    bsr FUN_ce32572
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce324ee
    bsr FUN_ce32b78
    mov r14,r4
    mov.w @(DAT_ce325d4,pc),r1
    add r14,r1
    mov.l r0,@r1

LAB_ce324ee:
    bsr FUN_ce32974
    mov r14,r4
    mov.w @(DAT_ce325d4,pc),r0
    mov.l @(r0,r14),r5
    bsr FUN_ce32800
    mov r14,r4
    mov.w @(DAT_ce325d4,pc),r1
    add r14,r1
    bra LAB_ce32516
    mov.l r0,@r1

LAB_ce32502:
    mov.w @(DAT_ce325d6,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce325e4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32516:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3251c:
    mov.w @(DAT_ce325d2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce32538
    cmp/eq 0x01,r0
    bt LAB_ce32540
    cmp/eq 0x02,r0
    bt LAB_ce32558
    bra LAB_ce3256c
    nop

LAB_ce32538:
    mov.w @(DAT_ce325d2,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce32540:
    mov.w @(DAT_ce325d2,pc),r0
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)
    add 0x33,r0
    mov.l @(r0,r14),r5
    bsr FUN_ce32800
    mov r14,r4
    mov.w @(DAT_ce325d8,pc),r1
    add r14,r1
    bra LAB_ce3256c
    mov.l r0,@r1

LAB_ce32558:
    mov.w @(DAT_ce325d6,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce325e4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3256c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32572:
    mov.w @(DAT_ce325da,pc),r0
    sts.l PR,@-r15
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3261a
    mov.l @(PTR_ce325e8,pc),r3
    mov 0x40,r0
    mov 0x0A,r7
    mov.l @r3,r1
    mov.b @(r0,r1),r1
    mov r7,r0
    nop
    mov.l @(PTR_ce325ec,pc),r2
    jsr @r2
    nop
    neg r0,r5
    mov.l @(PTR_ce325f0,pc),r0
    mov.w @(DAT_ce325e0,pc),r1
    mov.b @(r0,r5),r5
    mov.w @(DAT_ce325dc,pc),r0
    mov.l @(r0,r4),r2
    mov.w @(DAT_ce325de,pc),r0
    mov.w @(r0,r4),r6
    mov.w @(r0,r2),r2
    sub r2,r6
    add r1,r6
    exts.w r6,r1
    mov r7,r0
    nop
    mov.l @(PTR_ce325ec,pc),r3
    jsr @r3
    nop
    mov 0x28,r2
    sub r0,r2
    mov.l @(PTR_ce325f4,pc),r0
    extu.b r5,r3
    mov.b @(r0,r2),r6
    extu.b r6,r2
    cmp/ge r2,r3
    bt LAB_ce325c4
    mov r6,r5

LAB_ce325c4:
    mov.w @(DAT_ce325e2,pc),r0
    mov.b @(r0,r4),r6
    extu.b r5,r0
    cmp/pz r0
    bf LAB_ce325f8
    bra LAB_ce32602
    and 0x03,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325d2:
    #data 0x043d
DAT_ce325d4:
    #data 0x0468
DAT_ce325d6:
    #data 0x0440
DAT_ce325d8:
    #data 0x0470
DAT_ce325da:
    #data 0x0482
DAT_ce325dc:
    #data 0x020c
DAT_ce325de:
    #data 0x0420
DAT_ce325e0:
    #data 0x0090
DAT_ce325e2:
    #data 0x045c
    #align4

PTR_ce325e4:
    #data PTR_ce32ee0
PTR_ce325e8:
    #data loc_8c2896b0
PTR_ce325ec:
    #data loc_8c129128
PTR_ce325f0:
    #data DAT_ce32f07
PTR_ce325f4:
    #data DAT_ce32f08

;=============================================

LAB_ce325f8:
    not r0,r0
    add 0x01,r0
    and 0x03,r0
    not r0,r0
    add 0x01,r0

LAB_ce32602:
    mov.w @(DAT_ce326d0,pc),r1
    extu.b r6,r6
    add r4,r1
    mov.b r0,@r1
    mov.w @(DAT_ce326d0,pc),r0
    mov.b @(r0,r4),r3
    extu.b r3,r3
    cmp/eq r6,r3
    bt LAB_ce3261a
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce3261a:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    nop

LAB_ce32622:
    mov.w @(DAT_ce326d2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce3263c
    cmp/eq 0x01,r0
    bt LAB_ce32666
    bra LAB_ce3267a
    nop

LAB_ce3263c:
    mov.w @(DAT_ce326d2,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    add 0x20,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32666
    bsr FUN_ce32948
    nop
    extu.b r0,r0
    mov.l @(PTR_ce326dc,pc),r8
    mov.l @(PTR_ce326e0,pc),r3
    shll2 r0
    shll2 r0
    jsr @r3
    add r0,r8
    and 0x0F,r0
    mov.b @(r0,r8),r3
    mov.w @(DAT_ce326d4,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce32666:
    mov.w @(DAT_ce326d4,pc),r0
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce3267a
    mov.w @(DAT_ce326d6,pc),r0
    mov 0x01,r1
    mov.b r1,@(r0,r14)

LAB_ce3267a:
    lds.l @r15+,PR
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

LAB_ce32682:
    mov.w @(DAT_ce326d2,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce32698
    cmp/eq 0x01,r0
    bt LAB_ce326a8
    cmp/eq 0x02,r0
    bt LAB_ce32714
    bra LAB_ce32724
    nop

LAB_ce32698:
    mov.w @(DAT_ce326d2,pc),r0
    mov.w @(DAT_ce326d8,pc),r2
    mov.b @(r0,r4),r3
    add 0x01,r3
    mov.b r3,@(r0,r4)
    add 0x0E,r0
    bra LAB_ce32724
    mov.l r2,@(r0,r4)

LAB_ce326a8:
    mov.w @(DAT_ce326da,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf/s LAB_ce326e4
    mov 0x02,r5
    mov.b @(0x6,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce326e4
    mov.w @(DAT_ce326d4,pc),r0
    mov.b @(r0,r4),r2
    add 0xFF,r2
    mov.b r2,@(r0,r4)
    extu.b r2,r2
    tst r2,r2
    bf LAB_ce326e4
    mov.w @(DAT_ce326d2,pc),r0
    rts
    mov.b r5,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326d0:
    #data 0x045c
DAT_ce326d2:
    #data 0x043e
DAT_ce326d4:
    #data 0x045e
DAT_ce326d6:
    #data 0x043d
DAT_ce326d8:
    #data 0x01e0
DAT_ce326da:
    #data 0x01d0
    #align4

PTR_ce326dc:
    #data DAT_ce32bdc
PTR_ce326e0:
    #data loc_8c03319e

;=============================================

LAB_ce326e4:
    mov.w @(DAT_ce327d8,pc),r0
    mov.l @(r0,r4),r3
    add 0xFF,r3
    cmp/pz r3
    bt/s LAB_ce326f4
    mov.l r3,@(r0,r4)
    mov.w @(DAT_ce327da,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce326f4:
    mov.w @(DAT_ce327dc,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3270c
    mov.w @(DAT_ce327de,pc),r0
    mov.w @(r0,r4),r1
    tst r1,r1
    bf LAB_ce3270c
    mov.w @(DAT_ce327e2,pc),r0
    mov.w @(DAT_ce327e0,pc),r2
    bra LAB_ce32724
    mov.w r2,@(r0,r4)

LAB_ce3270c:
    mov.w @(DAT_ce327e2,pc),r0
    mov.w @(DAT_ce327e4,pc),r1
    bra LAB_ce32724
    mov.w r1,@(r0,r4)

LAB_ce32714:
    mov.w @(DAT_ce327e6,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce32724
    mov.w @(DAT_ce327e8,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce32724:
    rts
    nop

LAB_ce32728:
    mov.w @(DAT_ce327da,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3273c
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce3274a
    bra LAB_ce32762
    nop

LAB_ce3273c:
    mov.w @(DAT_ce327ea,pc),r0
    mov.b r6,@(r0,r4)
    add 0xE1,r0
    mov.b @(r0,r4),r3
    add 0x01,r3
    bra LAB_ce32762
    mov.b r3,@(r0,r4)

LAB_ce3274a:
    mov.w @(DAT_ce327e6,pc),r0
    mov.b @(r0,r4),r5
    extu.b r5,r0
    cmp/eq 0x15,r0
    bt/s LAB_ce32762
    mov r0,r5
    mov r5,r0
    nop
    cmp/eq 0x1D,r0
    bt LAB_ce32762
    mov.w @(DAT_ce327e8,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce32762:
    rts
    nop

LAB_ce32766:
    mov.w @(DAT_ce327da,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce32780
    cmp/eq 0x01,r0
    bt LAB_ce327bc
    bra LAB_ce327d0
    nop

LAB_ce32780:
    mov.w @(DAT_ce327da,pc),r0
    mov.l @(PTR_ce327f4,pc),r2
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    add 0x20,r0
    mov r0,r8
    jsr @r2
    add r14,r8
    mov.w @(DAT_ce327ec,pc),r3
    mov r0,r1
    mov.l @(PTR_ce327f8,pc),r2
    add r14,r3
    mov.b @r3,r3
    add 0x01,r3
    jsr @r2
    mov r3,r0
    mov.w @(DAT_ce327ee,pc),r3
    mov r0,r1
    mov.l @(PTR_ce327fc,pc),r0
    add r14,r3
    mov.b @r3,r3
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov.b @r8,r3
    add r2,r1
    add 0x01,r1
    add r1,r3
    bra LAB_ce327d0
    mov.b r3,@r8

LAB_ce327bc:
    mov.w @(DAT_ce327f0,pc),r0
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce327d0
    mov.w @(DAT_ce327e8,pc),r0
    mov 0x01,r1
    mov.b r1,@(r0,r14)

LAB_ce327d0:
    lds.l @r15+,PR
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce327d8:
    #data 0x044c
DAT_ce327da:
    #data 0x043e
DAT_ce327dc:
    #data 0x01d3
DAT_ce327de:
    #data 0x0130
DAT_ce327e0:
    #data 0x0800
DAT_ce327e2:
    #data 0x04dc
DAT_ce327e4:
    #data 0x0400
DAT_ce327e6:
    #data 0x01d0
DAT_ce327e8:
    #data 0x043d
DAT_ce327ea:
    #data 0x045d
DAT_ce327ec:
    #data 0x0449
DAT_ce327ee:
    #data 0x045c
DAT_ce327f0:
    #data 0x045e
    #align4

PTR_ce327f4:
    #data loc_8c03319e
PTR_ce327f8:
    #data loc_8c12939c
PTR_ce327fc:
    #data DAT_ce32f32

;=============================================

FUN_ce32800:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    mov.l r12,@-r15
    mov r5,r12
    mov.l r11,@-r15
    mov.l r10,@-r15
    mov.l r9,@-r15
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce328f0,pc),r9

LAB_ce32818:
    mov.b @r12+,r0
    mov r13,r10
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3284c
    mov 0x01,r11
    cmp/eq 0x01,r0
    bt LAB_ce32860
    cmp/eq 0x0A,r0
    bt LAB_ce3286c
    cmp/eq 0x02,r0
    bt LAB_ce32884
    cmp/eq 0x03,r0
    bt LAB_ce3289e
    cmp/eq 0x05,r0
    bt LAB_ce328ae
    cmp/eq 0x04,r0
    bt LAB_ce328c2
    cmp/eq 0x07,r0
    bt LAB_ce328f8
    cmp/eq 0x08,r0
    bt LAB_ce328fe
    cmp/eq 0x09,r0
    bt LAB_ce32904
    bra LAB_ce32910
    nop

LAB_ce3284c:
    mov.w @(DAT_ce328e4,pc),r0
    mov.b @r12+,r3
    mov.b r3,@(r0,r14)
    add 0xE2,r0
    mov.b @(r0,r14),r3
    add 0x01,r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    bra LAB_ce328dc
    mov.b r13,@(r0,r14)

LAB_ce32860:
    mov.w @(DAT_ce328e4,pc),r0
    mov.b @r12+,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce328e6,pc),r0
    bra LAB_ce32876
    mov.b r13,@(r0,r14)

LAB_ce3286c:
    mov.w @(DAT_ce328e4,pc),r0
    mov.b @r12+,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce328e6,pc),r0
    mov.b r11,@(r0,r14)

LAB_ce32876:
    mov.w @(DAT_ce328e8,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    bra LAB_ce328dc
    mov.b r11,@(r0,r14)

LAB_ce32884:
    mov.w @(DAT_ce328ea,pc),r0
    mov 0x02,r4
    mov.b r11,@(r0,r14)
    add 0xEB,r0
    mov.b @r12+,r3
    mov.b r3,@(r0,r14)
    add 0xF8,r0
    mov.b @(r0,r14),r3
    add 0x01,r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    bra LAB_ce328dc
    mov.b r4,@(r0,r14)

LAB_ce3289e:
    mov.l @(PTR_ce328f4,pc),r8
    mov r8,r5
    bsr FUN_ce32b30
    mov r14,r4
    tst r0,r0
    bt LAB_ce3290c
    bra LAB_ce328b8
    nop

LAB_ce328ae:
    mov.l @r9,r5
    bsr FUN_ce32b30
    mov r14,r4
    tst r0,r0
    bt LAB_ce32910

LAB_ce328b8:
    mov.w @(DAT_ce328ec,pc),r0
    mov.b r11,@(r0,r14)
    add 0x01,r0
    bra LAB_ce328dc
    mov.b r13,@(r0,r14)

LAB_ce328c2:
    mov.w @(DAT_ce328e4,pc),r0
    mov 0x03,r4
    mov.b @r12+,r3
    mov.b r3,@(r0,r14)
    add 0xEB,r0
    mov.b @r12+,r3
    mov.b r3,@(r0,r14)
    add 0xF7,r0
    mov.b @(r0,r14),r2
    add 0x01,r0
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)

LAB_ce328dc:
    mov.w @(DAT_ce328ee,pc),r0
    mov.b r13,@(r0,r14)
    bra LAB_ce32926
    add 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328e4:
    #data 0x045e
DAT_ce328e6:
    #data 0x01d3
DAT_ce328e8:
    #data 0x0440
DAT_ce328ea:
    #data 0x045d
DAT_ce328ec:
    #data 0x043c
DAT_ce328ee:
    #data 0x043e
    #align4

PTR_ce328f0:
    #data PTR_ce32f7c
PTR_ce328f4:
    #data DAT_ce32c18

;=============================================

LAB_ce328f8:
    mov.w @(DAT_ce329ea,pc),r0
    bra LAB_ce3290c
    mov.b r11,@(r0,r14)

LAB_ce328fe:
    mov.w @(DAT_ce329ea,pc),r0
    bra LAB_ce3290c
    mov.b r13,@(r0,r14)

LAB_ce32904:
    mov.w @(DAT_ce329ec,pc),r0
    mov.l r13,@(r0,r14)
    add 0xD2,r0
    mov.b r13,@(r0,r14)

LAB_ce3290c:
    bra LAB_ce32928
    mov r11,r10

LAB_ce32910:
    mov.w @(DAT_ce329ee,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    add 0x71,r0
    mov.l r13,@(r0,r14)
    mov.w @(DAT_ce329ea,pc),r0

LAB_ce32926:
    mov.b r13,@(r0,r14)

LAB_ce32928:
    extu.b r10,r10
    tst r10,r10
    bt LAB_ce32932
    bra LAB_ce32818
    nop

LAB_ce32932:
    mov r12,r0
    nop
    lds.l @r15+,PR
    mov.l @r15+,r8
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32948:
    mov.l @(PTR_ce329f4,pc),r3
    sts.l PR,@-r15
    mov.w @r3,r4
    add 0xEC,r4
    exts.w r4,r2
    cmp/pz r2
    bt/s LAB_ce3295a
    mov 0x0B,r5
    mov 0x00,r4

LAB_ce3295a:
    exts.w r4,r3
    cmp/gt r5,r3
    bf LAB_ce32962
    mov r5,r4

LAB_ce32962:
    exts.w r4,r1
    mov.l @(PTR_ce329f8,pc),r2
    shar r1
    shar r1
    jsr @r2
    mov 0x03,r0
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce32974:
    mov.w @(DAT_ce329f0,pc),r0
    mov.l @(r0,r4),r3
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    fmov.s @(r0,r3),fr4
    mov.w @(DAT_ce329f2,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce3298a
    fsub fr3,fr4
    fneg fr4

LAB_ce3298a:
    mova @(DAT_ce329fc,pc),r0
    fmov.s @r0,fr3
    mov 0x50,r0
    fmov.s @(r0,r4),fr2
    fmul fr3,fr2
    fneg fr2
    fcmp/gt fr2,fr4
    bf LAB_ce329ae
    mova @(DAT_ce32a00,pc),r0
    fmov.s @r0,fr2
    mov 0x50,r0
    fmov.s @(r0,r4),fr1
    fmul fr2,fr1
    fcmp/gt fr1,fr4
    bt/s LAB_ce329e4
    mov 0x04,r5
    bra LAB_ce329e6
    nop

LAB_ce329ae:
    mova @(DAT_ce32a04,pc),r0
    fmov.s @r0,fr2
    mov 0x50,r0
    fmov.s @(r0,r4),fr1
    fmul fr2,fr1
    fneg fr1
    fcmp/gt fr4,fr1
    bf/s LAB_ce329c2
    mov 0x00,r5
    add 0x01,r5

LAB_ce329c2:
    mova @(DAT_ce32a08,pc),r0
    fmov.s @r0,fr3
    mov 0x50,r0
    fmov.s @(r0,r4),fr2
    fmul fr3,fr2
    fneg fr2
    fcmp/gt fr4,fr2
    bf LAB_ce329d4
    add 0x01,r5

LAB_ce329d4:
    mova @(DAT_ce32a0c,pc),r0
    fmov.s @r0,fr3
    mov 0x50,r0
    fmov.s @(r0,r4),fr2
    fmul fr3,fr2
    fneg fr2
    fcmp/gt fr4,fr2
    bf LAB_ce329e6

LAB_ce329e4:
    add 0x01,r5

LAB_ce329e6:
    rts
    mov r5,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329ea:
    #data 0x0482
DAT_ce329ec:
    #data 0x04b0
DAT_ce329ee:
    #data 0x043c
DAT_ce329f0:
    #data 0x020c
DAT_ce329f2:
    #data 0x0130
    #align4

PTR_ce329f4:
    #data loc_8c289732
PTR_ce329f8:
    #data loc_8c1292d4
DAT_ce329fc:
    #data 0x43055555
DAT_ce32a00:
    #data 0x43200000
DAT_ce32a04:
    #data 0x4362aaaa
DAT_ce32a08:
    #data 0x43a00000
DAT_ce32a0c:
    #data 0x43c80000

;=============================================

FUN_ce32a10:
    mov.w @(DAT_ce32b0e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32a34
    mov.w @(DAT_ce32b10,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32a34
    bsr FUN_ce32a3a
    mov r14,r4
    tst r0,r0
    bf LAB_ce32a34
    bsr FUN_ce32aa4
    mov r14,r4
    tst r0,r0

LAB_ce32a34:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32a3a:
    mov.w @(DAT_ce32b12,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x01,r13
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    tst r13,r3
    bf LAB_ce32a9a
    bsr FUN_ce32974
    mov r14,r4
    mov 0x04,r2
    extu.b r0,r0
    cmp/ge r2,r0
    bf LAB_ce32a9a
    mov.w @(DAT_ce32b12,pc),r0
    mov.l @(PTR_ce32b1c,pc),r5
    mov.l @(r0,r14),r1
    or r13,r1
    mov.l r1,@(r0,r14)
    bsr FUN_ce32b30
    mov r14,r4
    tst r0,r0
    bt LAB_ce32a9a
    mov.w @(DAT_ce32b14,pc),r0
    mov 0x02,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    add 0x42,r0
    mov.l @(PTR_ce32b20,pc),r3
    mov.b r4,@(r0,r14)
    add 0x01,r0
    jsr @r3
    mov.b r13,@(r0,r14)
    mov.l @(PTR_ce32b24,pc),r1
    and 0x03,r0
    shll2 r0
    mov.l @(r0,r1),r2
    mov.w @(DAT_ce32b16,pc),r0
    mov.l r2,@(r0,r14)
    bra LAB_ce32a9c
    mov 0x01,r0

LAB_ce32a9a:
    mov 0x00,r0

LAB_ce32a9c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32aa4:
    mov.w @(DAT_ce32b12,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(r0,r14),r3
    mov 0x02,r4
    tst r4,r3
    bf LAB_ce32b06
    mov 0x34,r0
    mov.l @(PTR_ce32b28,pc),r5
    fmov.s @(r0,r14),fr4
    add 0x64,r0
    fmov.s @(r0,r5),fr3
    fcmp/gt fr3,fr4
    bf LAB_ce32aca
    mov.w @(DAT_ce32b18,pc),r0
    fmov.s @(r0,r5),fr3
    fcmp/gt fr4,fr3
    bt LAB_ce32b06

LAB_ce32aca:
    mov.w @(DAT_ce32b12,pc),r0
    mov.l @(PTR_ce32b20,pc),r3
    mov.l @(r0,r14),r2
    or r4,r2
    mov.l r2,@(r0,r14)
    add 0x8C,r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    add 0x42,r0
    mov 0x01,r4
    mov.b r4,@(r0,r14)
    add 0x01,r0
    jsr @r3
    mov.b r4,@(r0,r14)
    mov.l @(PTR_ce32b2c,pc),r1
    and 0x03,r0
    shll2 r0
    mov.l @(r0,r1),r2
    mov.w @(DAT_ce32b16,pc),r0
    mov.l r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b06:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b0e:
    #data 0x0482
DAT_ce32b10:
    #data 0x01d0
DAT_ce32b12:
    #data 0x04b0
DAT_ce32b14:
    #data 0x043c
DAT_ce32b16:
    #data 0x0470
DAT_ce32b18:
    #data 0x009c
    #align4

PTR_ce32b1c:
    #data DAT_ce32c0c
PTR_ce32b20:
    #data loc_8c03319e
PTR_ce32b24:
    #data PTR_ce32f4c
PTR_ce32b28:
    #data loc_8c26a518
PTR_ce32b2c:
    #data PTR_ce32f6c

;=============================================

FUN_ce32b30:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32bc8,pc),r3
    mov.l r5,@r15
    mov.w @r3,r14
    add 0xEC,r14
    exts.w r14,r2
    cmp/pz r2
    bt LAB_ce32b46
    mov 0x00,r14

LAB_ce32b46:
    mov.l @(PTR_ce32bcc,pc),r3
    jsr @r3
    nop
    mov 0x1F,r4
    mov.l @(PTR_ce32bd0,pc),r3
    and r0,r4
    exts.w r14,r1
    extu.b r4,r4
    jsr @r3
    mov 0x0C,r0
    mov.l @r15,r2
    mov.b @(r0,r2),r3
    extu.b r3,r3
    cmp/ge r3,r4
    bt LAB_ce32b6e
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b6e:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32b78:
    mov.l r14,@-r15
    mov.l r8,@-r15
    sts.l PR,@-r15
    add 0xF8,r15
    bsr FUN_ce32974
    mov r4,r14
    extu.b r0,r4
    mov.l @(PTR_ce32bd4,pc),r0
    shll2 r4
    mov.l @(PTR_ce32bcc,pc),r2
    mov.l r4,@(0x4,r15)
    mov.l @(r0,r4),r3
    mov.w @(DAT_ce32bc4,pc),r0
    mov.l r3,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll2 r0
    shll2 r0
    add r3,r0
    jsr @r2
    mov r0,r8
    and 0x0F,r0
    mov.b @(r0,r8),r3
    mov.w @(DAT_ce32bc6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32bd8,pc),r0
    mov.l @(0x4,r15),r2
    mov.l @(r0,r2),r4
    mov.w @(DAT_ce32bc6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r4),r0
    add 0x08,r15
    lds.l @r15+,PR
    mov.l @r15+,r8
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32bc4:
    #data 0x045c
DAT_ce32bc6:
    #data 0x046e
    #align4

PTR_ce32bc8:
    #data loc_8c289732
PTR_ce32bcc:
    #data loc_8c03319e
PTR_ce32bd0:
    #data loc_8c1292d4
PTR_ce32bd4:
    #data PTR_ce33270
PTR_ce32bd8:
    #data PTR_ce33288
DAT_ce32bdc:
    #data 0xb4b4
    #data 0xb4b4
    #data 0xb4b4
    #data 0xb4b4
    #data 0xb4b4
    #data 0xb4b4
    #data 0x7878
    #data 0x3c3c
    #data 0xb4b4
    #data 0xb4b4
    #data 0xb4b4
    #data 0xb4b4
    #data 0x7878
    #data 0x7878
    #data 0x3c3c
    #data 0x3c3c
    #data 0x7878
    #data 0x7878
    #data 0x7878
    #data 0x3c3c
    #data 0x3c3c
    #data 0x3c3c
    #data 0x3c3c
    #data 0x3c3c
DAT_ce32c0c:
    #data 0x1211
    #data 0x1413
    #data 0x1615
    #data 0x1817
    #data 0x1a19
    #data 0x1c1b
DAT_ce32c18:
    #data 0x1818
    #data 0x1a18
    #data 0x1a1a
    #data 0x1c1c
    #data 0x1e1c
    #data 0x1e1e
DAT_ce32c24:
    #data 0x1818
    #data 0x1818
    #data 0x1818
    #data 0x1a1a
    #data 0x1c1c
    #data 0x1e1e
DAT_ce32c30:
    #data 0x1818
    #data 0x1818
    #data 0x1a1a
    #data 0x1a1a
    #data 0x1c1c
    #data 0x1c1c
DAT_ce32c3c:
    #data 0x1414
    #data 0x1616
    #data 0x1818
    #data 0x1818
    #data 0x1a1a
    #data 0x1a1a
DAT_ce32c48:
    #data 0x0003
    #data 0x1100
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0200
DAT_ce32c58:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0100
DAT_ce32c68:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0040
DAT_ce32c78:
    #data 0x0003
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0020
DAT_ce32c88:
    #data 0x0003
    #data 0x1000
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0200
DAT_ce32c98:
    #data 0x0003
    #data 0x1000
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0100
DAT_ce32ca8:
    #data 0x0003
    #data 0x1000
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0020
DAT_ce32cb8:
    #data 0x0003
    #data 0x1000
    #data 0x0007
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x0200
DAT_ce32cc8:
    #data 0x0003
    #data 0x1000
    #data 0x0008
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x0100
DAT_ce32cd8:
    #data 0x0003
    #data 0x1000
    #data 0x0009
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x0040
DAT_ce32ce8:
    #data 0x0003
    #data 0x1000
    #data 0x000a
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x0020
DAT_ce32cf8:
    #data 0x0003
    #data 0x1000
    #data 0x000b
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0200
    #align4

PTR_ce32d08:
    #data FUN_ce303e4
PTR_ce32d0c:
    #data LAB_ce3001c
PTR_ce32d10:
    #data LAB_ce3054e
PTR_ce32d14:
    #data LAB_ce30554
PTR_ce32d18:
    #data LAB_ce3055a
PTR_ce32d1c:
    #data LAB_ce306b8
PTR_ce32d20:
    #data LAB_ce306be
PTR_ce32d24:
    #data LAB_ce30796
PTR_ce32d28:
    #data LAB_ce3088c
PTR_ce32d2c:
    #data LAB_ce31bfa
PTR_ce32d30:
    #data LAB_ce31bfe
PTR_ce32d34:
    #data LAB_ce31c02
PTR_ce32d38:
    #data LAB_ce31c24
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce32d68:
    #data LAB_ce31cf8
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce32d78:
    #data LAB_ce3056c
PTR_ce32d7c:
    #data LAB_ce305e0
PTR_ce32d80:
    #data LAB_ce3065e
PTR_ce32d84:
    #data LAB_ce306d8
PTR_ce32d88:
    #data FUN_ce30776
PTR_ce32d8c:
    #data LAB_ce308a0
PTR_ce32d90:
    #data LAB_ce309fc
PTR_ce32d94:
    #data LAB_ce30ce2
PTR_ce32d98:
    #data LAB_ce31050
PTR_ce32d9c:
    #data LAB_ce3113e
PTR_ce32da0:
    #data LAB_ce312c2
PTR_ce32da4:
    #data LAB_ce313d4
PTR_ce32da8:
    #data LAB_ce31478
PTR_ce32dac:
    #data LAB_ce31576
PTR_ce32db0:
    #data LAB_ce319e2
PTR_ce32db4:
    #data LAB_ce31ad8
PTR_ce32db8:
    #data LAB_ce31b9e
PTR_ce32dbc:
    #data LAB_ce30a0e
PTR_ce32dc0:
    #data LAB_ce30a78
PTR_ce32dc4:
    #data LAB_ce30b1c
PTR_ce32dc8:
    #data LAB_ce30c90
PTR_ce32dcc:
    #data FUN_ce30cc0
PTR_ce32dd0:
    #data LAB_ce30cfc
PTR_ce32dd4:
    #data LAB_ce30d46
PTR_ce32dd8:
    #data LAB_ce30f5a
PTR_ce32ddc:
    #data LAB_ce30ffc
PTR_ce32de0:
    #data LAB_ce31062
PTR_ce32de4:
    #data LAB_ce3109a
PTR_ce32de8:
    #data LAB_ce31150
PTR_ce32dec:
    #data LAB_ce311a8
PTR_ce32df0:
    #data LAB_ce311f0
PTR_ce32df4:
    #data FUN_ce312a0
PTR_ce32df8:
    #data LAB_ce312d4
PTR_ce32dfc:
    #data LAB_ce3132c
PTR_ce32e00:
    #data LAB_ce3135e
PTR_ce32e04:
    #data FUN_ce3138e
PTR_ce32e08:
    #data LAB_ce31588
PTR_ce32e0c:
    #data LAB_ce31748
PTR_ce32e10:
    #data LAB_ce3177a
PTR_ce32e14:
    #data LAB_ce319d6
PTR_ce32e18:
    #data LAB_ce31794
PTR_ce32e1c:
    #data LAB_ce3182c
PTR_ce32e20:
    #data LAB_ce318d8
PTR_ce32e24:
    #data LAB_ce319a8
PTR_ce32e28:
    #data LAB_ce319fc
PTR_ce32e2c:
    #data LAB_ce31a30
PTR_ce32e30:
    #data LAB_ce31a8a
PTR_ce32e34:
    #data LAB_ce31bb0
PTR_ce32e38:
    #data LAB_ce31be0
PTR_ce32e3c:
    #data LAB_ce31f3a
PTR_ce32e40:
    #data LAB_ce31f3a
PTR_ce32e44:
    #data LAB_ce31f3a
PTR_ce32e48:
    #data LAB_ce32224
PTR_ce32e4c:
    #data LAB_ce31f5e
PTR_ce32e50:
    #data LAB_ce31fb4
PTR_ce32e54:
    #data LAB_ce31f5e
PTR_ce32e58:
    #data LAB_ce31f5e
PTR_ce32e5c:
    #data LAB_ce31f5e
PTR_ce32e60:
    #data LAB_ce31f5e
PTR_ce32e64:
    #data LAB_ce31f5e
PTR_ce32e68:
    #data LAB_ce31f5e
PTR_ce32e6c:
    #data LAB_ce31f5e
PTR_ce32e70:
    #data LAB_ce31f5e
PTR_ce32e74:
    #data LAB_ce31f5e
PTR_ce32e78:
    #data LAB_ce31f5e
PTR_ce32e7c:
    #data LAB_ce31f5e
PTR_ce32e80:
    #data LAB_ce31f5e
PTR_ce32e84:
    #data LAB_ce31f5e
PTR_ce32e88:
    #data LAB_ce31f5e
PTR_ce32e8c:
    #data LAB_ce31f5e
PTR_ce32e90:
    #data LAB_ce31f5e
PTR_ce32e94:
    #data LAB_ce31f5e
PTR_ce32e98:
    #data LAB_ce31f5e
PTR_ce32e9c:
    #data LAB_ce31f5e
PTR_ce32ea0:
    #data LAB_ce3088c
PTR_ce32ea4:
    #data LAB_ce30796
PTR_ce32ea8:
    #data LAB_ce3218a
PTR_ce32eac:
    #data LAB_ce31f5e
PTR_ce32eb0:
    #data LAB_ce31f5e
PTR_ce32eb4:
    #data LAB_ce31f5e
PTR_ce32eb8:
    #data LAB_ce31f5e
PTR_ce32ebc:
    #data LAB_ce31f5e
PTR_ce32ec0:
    #data LAB_ce3088c
PTR_ce32ec4:
    #data LAB_ce31f5e
PTR_ce32ec8:
    #data LAB_ce31f5e
PTR_ce32ecc:
    #data LAB_ce31f5e
PTR_ce32ed0:
    #data LAB_ce31f5e
PTR_ce32ed4:
    #data LAB_ce3241a
PTR_ce32ed8:
    #data LAB_ce32486
PTR_ce32edc:
    #data LAB_ce3251c
PTR_ce32ee0:
    #data LAB_ce32622
PTR_ce32ee4:
    #data LAB_ce32682
PTR_ce32ee8:
    #data LAB_ce32728
PTR_ce32eec:
    #data LAB_ce32766
DAT_ce32ef0:
    #data 0x0a00
    #data 0x0a01
    #data 0x0a00
    #data 0x0003
    #data 0x030a
    #data 0x0a0a
    #data 0x6303
    #data 0x0000
    #data 0x0100
    #data 0x0201
    #data 0x0202
    #data 0x03
DAT_ce32f07:
    #data 0x03
DAT_ce32f08:
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0101
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0202
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0303
    #data 0x0303
    #data 0x0303
    #data 0x0303
DAT_ce32f32:
    #data 0x0f1e
    #data 0x000a
DAT_ce32f36:
    #data 0x0102
    #data 0x0202
    #data 0x63
DAT_ce32f3b:
    #data 0x02
    #data 0x0202
    #data 0x6301
DAT_ce32f40:
    #data 0x0202
    #data 0x0102
    #data 0x63
DAT_ce32f45:
    #data 0x02
    #data 0x0201
    #data 0x0202
    #data 0x6303
    #align4

PTR_ce32f4c:
    #data DAT_ce32f36
PTR_ce32f50:
    #data DAT_ce32f3b
PTR_ce32f54:
    #data DAT_ce32f40
PTR_ce32f58:
    #data DAT_ce32f45
DAT_ce32f5c:
    #data 0x3201
    #data 0x63
DAT_ce32f5f:
    #data 0x01
    #data 0x6332
DAT_ce32f62:
    #data 0x1401
    #data 0x0102
    #data 0x63
DAT_ce32f67:
    #data 0x01
    #data 0x021e
    #data 0x6301
    #align4

PTR_ce32f6c:
    #data DAT_ce32f5c
PTR_ce32f70:
    #data DAT_ce32f5f
PTR_ce32f74:
    #data DAT_ce32f62
PTR_ce32f78:
    #data DAT_ce32f67
PTR_ce32f7c:
    #data DAT_ce32c24
PTR_ce32f80:
    #data DAT_ce32c24
PTR_ce32f84:
    #data DAT_ce32c30
PTR_ce32f88:
    #data DAT_ce32c30
PTR_ce32f8c:
    #data DAT_ce32c24
PTR_ce32f90:
    #data DAT_ce32c3c
DAT_ce32f94:
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
DAT_ce32fd4:
    #data 0x1e04
    #data 0x0200
    #data 0x0402
    #data 0x001e
    #data 0x0102
    #data 0x6305
DAT_ce32fe0:
    #data 0x1e04
    #data 0x0700
    #data 0x0a04
    #data 0x0200
    #data 0x0403
    #data 0x000a
    #data 0x0202
    #data 0x0508
    #data 0x63
DAT_ce32ff1:
    #data 0x04
    #data 0x001e
    #data 0x0207
    #data 0x0802
    #data 0x6305
DAT_ce32ffa:
    #data 0x1e04
    #data 0x0200
    #data 0x0404
    #data 0x001e
    #data 0x0202
    #data 0x6305
    #align4

PTR_ce33008:
    #data DAT_ce32fd4
PTR_ce3300c:
    #data DAT_ce32fe0
PTR_ce33010:
    #data DAT_ce32ff1
PTR_ce33014:
    #data DAT_ce32ffa
DAT_ce33018:
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
DAT_ce33058:
    #data 0x1404
    #data 0x0200
    #data 0x0404
    #data 0x000a
    #data 0x0302
    #data 0x6305
DAT_ce33064:
    #data 0x0a04
    #data 0x0200
    #data 0x0203
    #data 0x0404
    #data 0x000a
    #data 0x0102
    #data 0x6305
DAT_ce33072:
    #data 0x0a04
    #data 0x0200
    #data 0x0402
    #data 0x000a
    #data 0x0402
    #data 0x6305
DAT_ce3307e:
    #data 0x0a04
    #data 0x0200
    #data 0x0403
    #data 0x000a
    #data 0x0102
    #data 0x6305
    #align4

PTR_ce3308c:
    #data DAT_ce33058
PTR_ce33090:
    #data DAT_ce33064
PTR_ce33094:
    #data DAT_ce33072
PTR_ce33098:
    #data DAT_ce3307e
DAT_ce3309c:
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
DAT_ce330dc:
    #data 0x0a04
    #data 0x0200
    #data 0x0403
    #data 0x000a
    #data 0x0202
    #data 0x0804
    #data 0x0200
    #data 0x0405
    #data 0x000a
    #data 0x0102
    #data 0x6305
DAT_ce330f2:
    #data 0x0a04
    #data 0x0200
    #data 0x0401
    #data 0x000a
    #data 0x0402
    #data 0x0a04
    #data 0x0200
    #data 0x0503
    #data 0x63
DAT_ce33103:
    #data 0x02
    #data 0x0404
    #data 0x000a
    #data 0x0102
    #data 0x6305
DAT_ce3310c:
    #data 0x0a04
    #data 0x0200
    #data 0x0402
    #data 0x000a
    #data 0x0302
    #data 0x0804
    #data 0x0200
    #data 0x0500
    #data 0x0063
    #align4

PTR_ce33120:
    #data DAT_ce330dc
PTR_ce33124:
    #data DAT_ce330f2
PTR_ce33128:
    #data DAT_ce33103
PTR_ce3312c:
    #data DAT_ce3310c
DAT_ce33130:
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
DAT_ce33170:
    #data 0x0a04
    #data 0x0200
    #data 0x0403
    #data 0x000a
    #data 0x0002
    #data 0x0a04
    #data 0x0200
    #data 0x0501
    #data 0x63
DAT_ce33181:
    #data 0x04
    #data 0x000a
    #data 0x0302
    #data 0x0804
    #data 0x0200
    #data 0x0401
    #data 0x000a
    #data 0x0302
    #data 0x6305
DAT_ce33192:
    #data 0x0a04
    #data 0x0200
    #data 0x0402
    #data 0x0008
    #data 0x0402
    #data 0x0a04
    #data 0x0200
    #data 0x0405
    #data 0x0008
    #data 0x0207
    #data 0x0800
    #data 0x6305
DAT_ce331aa:
    #data 0x0a04
    #data 0x0200
    #data 0x0402
    #data 0x000a
    #data 0x0402
    #data 0x0a04
    #data 0x0200
    #data 0x0403
    #data 0x000a
    #data 0x0102
    #data 0x6305
    #align4

PTR_ce331c0:
    #data DAT_ce33170
PTR_ce331c4:
    #data DAT_ce33181
PTR_ce331c8:
    #data DAT_ce33192
PTR_ce331cc:
    #data DAT_ce331aa
DAT_ce331d0:
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
    #data 0x0000
    #data 0x0000
    #data 0x0101
    #data 0x0101
    #data 0x0202
    #data 0x0202
    #data 0x0303
    #data 0x0303
DAT_ce33210:
    #data 0x0407
    #data 0x000a
    #data 0x0202
    #data 0x0a04
    #data 0x0200
    #data 0x0801
    #data 0x6305
DAT_ce3321e:
    #data 0x0407
    #data 0x000a
    #data 0x0202
    #data 0x0a04
    #data 0x0200
    #data 0x0401
    #data 0x000a
    #data 0x0002
    #data 0x0508
    #data 0x63
DAT_ce33231:
    #data 0x07
    #data 0x0a04
    #data 0x0200
    #data 0x0402
    #data 0x000a
    #data 0x0102
    #data 0x0a04
    #data 0x0200
    #data 0x0402
    #data 0x000a
    #data 0x0102
    #data 0x0508
    #data 0x63
DAT_ce33249:
    #data 0x07
    #data 0x0a04
    #data 0x0200
    #data 0x0202
    #data 0x0401
    #data 0x000a
    #data 0x0402
    #data 0x0a04
    #data 0x0200
    #data 0x0801
    #data 0x6305
    #align4

PTR_ce33260:
    #data DAT_ce33210
PTR_ce33264:
    #data DAT_ce3321e
PTR_ce33268:
    #data DAT_ce33231
PTR_ce3326c:
    #data DAT_ce33249
PTR_ce33270:
    #data DAT_ce32f94
PTR_ce33274:
    #data DAT_ce33018
PTR_ce33278:
    #data DAT_ce3309c
PTR_ce3327c:
    #data DAT_ce33130
PTR_ce33280:
    #data DAT_ce331d0
PTR_ce33284:
    #data DAT_ce331d0
PTR_ce33288:
    #data PTR_ce33008
PTR_ce3328c:
    #data PTR_ce3308c
PTR_ce33290:
    #data PTR_ce33120
PTR_ce33294:
    #data PTR_ce331c0
PTR_ce33298:
    #data PTR_ce33260
PTR_ce3329c:
    #data PTR_ce33260
