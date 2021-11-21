;╔══════════════════════════════════════════╗
;║ S_PL18 : Abyss [1st Form] Program        ║
;╚══════════════════════════════════════════╝

#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c042008 0x8C042008
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c04fea8 0x8C04FEA8
#symbol loc_8c04ff88 0x8C04FF88
#symbol loc_8c050048 0x8C050048
#symbol loc_8c050084 0x8C050084
#symbol loc_8c050834 0x8C050834
#symbol loc_8c05115a 0x8C05115A
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c051854 0x8C051854
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c052b4c 0x8C052B4C
#symbol loc_8c052c84 0x8C052C84
#symbol loc_8c052ce2 0x8C052CE2
#symbol loc_8c052dac 0x8C052DAC
#symbol loc_8c0530d8 0x8C0530D8
#symbol loc_8c0532a8 0x8C0532A8
#symbol loc_8c053e00 0x8C053E00
#symbol loc_8c0542e0 0x8C0542E0
#symbol loc_8c054508 0x8C054508
#symbol loc_8c05496c 0x8C05496C
#symbol loc_8c054b34 0x8C054B34
#symbol loc_8c054d04 0x8C054D04
#symbol loc_8c054e58 0x8C054E58
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c055d54 0x8C055D54
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c08691c 0x8C08691C
#symbol loc_8c086bd4 0x8C086BD4
#symbol loc_8c086fbc 0x8C086FBC
#symbol loc_8c0873b0 0x8C0873B0
#symbol loc_8c087f32 0x8C087F32
#symbol loc_8c0d5e24 0x8C0D5E24
#symbol loc_8c0d5e52 0x8C0D5E52
#symbol loc_8c0d6e04 0x8C0D6E04
#symbol loc_8c0fd966 0x8C0FD966
#symbol loc_8c105474 0x8C105474
#symbol loc_8c113cda 0x8C113CDA
#symbol loc_8c1355d4 0x8C1355D4
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c289638 0x8C289638
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300fc,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce30104,pc),r7
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
    mov.l @(PTR_ce30108,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3009c
    mov.l @(PTR_ce3010c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3009c
    mov.l @(PTR_ce30110,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3009c
    mov.l @(PTR_ce30114,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3009c
    bsr FUN_ce3015a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3009c
    bsr FUN_ce301dc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3009c
    bsr FUN_ce300de
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3009c
    bsr FUN_ce300a2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3009c
    bsr FUN_ce30218
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3009c
    bsr FUN_ce30196
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3009c
    mov.l @(PTR_ce30118,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3011c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3009c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce300a2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30120,pc),r5
    mov.w @(DAT_ce300fe,pc),r6
    mov.l @(PTR_ce30124,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce300c0:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30100,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30128,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce300de:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3012c,pc),r5
    mov.w @(DAT_ce30102,pc),r6
    mov.l @(PTR_ce30124,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30130
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300fc:
    #data 0x0428
DAT_ce300fe:
    #data 0x0364
DAT_ce30100:
    #data 0x01e9
DAT_ce30102:
    #data 0x036c
    #align4

PTR_ce30104:
    #data PTR_ce31bf0
PTR_ce30108:
    #data loc_8c054508
PTR_ce3010c:
    #data loc_8c054b34
PTR_ce30110:
    #data loc_8c05496c
PTR_ce30114:
    #data loc_8c054d04
PTR_ce30118:
    #data loc_8c053e00
PTR_ce3011c:
    #data loc_8c0542e0
PTR_ce30120:
    #data DAT_ce31b90
PTR_ce30124:
    #data loc_8c054e58
PTR_ce30128:
    #data loc_8c0530d8
PTR_ce3012c:
    #data DAT_ce31ba0

;=============================================

LAB_ce30130:
    mov.w @(DAT_ce30262,pc),r5
    mov.l @(PTR_ce30270,pc),r3
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
    mov.w @(DAT_ce30264,pc),r0
    mov.l @(PTR_ce30274,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3015a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30278,pc),r5
    mov.w @(DAT_ce30266,pc),r6
    mov.l @(PTR_ce3027c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30178
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30178:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30264,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30274,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30196:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30280,pc),r5
    mov.w @(DAT_ce30268,pc),r6
    mov.l @(PTR_ce3027c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301b4
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301b4:
    mov.w @(DAT_ce30268,pc),r5
    mov.l @(PTR_ce30270,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30264,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30274,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301dc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30284,pc),r5
    mov.w @(DAT_ce3026a,pc),r6
    mov.l @(PTR_ce3027c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301fa
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301fa:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30264,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30274,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30218:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30288,pc),r5
    mov.w @(DAT_ce3026c,pc),r6
    mov.l @(PTR_ce3027c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30236
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30236:
    mov.w @(DAT_ce3026c,pc),r5
    mov.l @(PTR_ce30270,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30264,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30274,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3025e:
    rts
    mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30262:
    #data 0x036c
DAT_ce30264:
    #data 0x01e9
DAT_ce30266:
    #data 0x0374
DAT_ce30268:
    #data 0x037c
DAT_ce3026a:
    #data 0x0384
DAT_ce3026c:
    #data 0x038c
    #align4

PTR_ce30270:
    #data loc_8c055c3a
PTR_ce30274:
    #data loc_8c0530d8
PTR_ce30278:
    #data DAT_ce31bb0
PTR_ce3027c:
    #data loc_8c054e58
PTR_ce30280:
    #data DAT_ce31bc0
PTR_ce30284:
    #data DAT_ce31be0
PTR_ce30288:
    #data DAT_ce31bd0

;=============================================

LAB_ce3028c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce302e8
    mov r4,r14
    mov.l @(PTR_ce30370,pc),r4
    mov.l @r4,r2
    mov.b @r2,r3
    mov 0x05,r2
    extu.b r3,r3
    cmp/ge r2,r3
    bf LAB_ce302d4
    mov.l @r4,r1
    mov 0x3E,r0
    mov.b @(r0,r1),r3
    cmp/pz r3
    bf LAB_ce302b8
    mov.l @r4,r1
    mov.b @(r0,r1),r3
    mov.b @(0x2,r14),r0
    extu.b r0,r0
    cmp/eq r0,r3
    bt LAB_ce302d4

LAB_ce302b8:
    mov.b @(0x5,r14),r0
    tst r0,r0
    bf LAB_ce302d4
    mov.w @(DAT_ce30358,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce302d4
    mov.l @(PTR_ce30374,pc),r2
    mov 0x15,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3035a,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)

LAB_ce302d4:
    mov.w @(DAT_ce3035c,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bf LAB_ce302e2
    mov.w @(DAT_ce3035e,pc),r0
    mov 0x01,r1
    mov.b r1,@(r0,r14)

LAB_ce302e2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302e8:
    mov.w @(DAT_ce30360,pc),r0
    mov 0xFF,r3
    mov.l @(PTR_ce30378,pc),r5
    mov.b r3,@(r0,r4)
    add 0x77,r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    mov.b @(r0,r5),r3
    mov.w @(DAT_ce30362,pc),r0
    mov.w r3,@(r0,r4)
    mov.w @(DAT_ce30364,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce3034a
    mov 0x00,r6
    mov.w @(DAT_ce30366,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30326
    mov.b @(0x5,r4),r0
    tst r0,r0
    bf LAB_ce30326
    mov.w @(DAT_ce30368,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30326
    mov.w @(DAT_ce30364,pc),r0
    mov.b @(r0,r4),r3
    add 0x01,r3
    bra LAB_ce3034a
    mov.b r3,@(r0,r4)

LAB_ce30326:
    mov.w @(DAT_ce3036a,pc),r0
    mov.b @(r0,r4),r1
    tst r1,r1
    bt LAB_ce303c4
    mov.w @(DAT_ce30366,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce303c4
    mov.w @(DAT_ce3036a,pc),r0
    mov.b @(r0,r4),r3
    add 0xFF,r3
    mov.b r3,@(r0,r4)
    exts.b r3,r3
    tst r3,r3
    bf LAB_ce303c4
    mov.w @(DAT_ce3036c,pc),r0
    rts
    mov.b r6,@(r0,r4)

LAB_ce3034a:
    mov.w @(DAT_ce30366,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3037c
    mov.w @(DAT_ce30364,pc),r0
    rts
    mov.b r6,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30358:
    #data 0x01d0
DAT_ce3035a:
    #data 0x01e9
DAT_ce3035c:
    #data 0x0420
DAT_ce3035e:
    #data 0x01f5
DAT_ce30360:
    #data 0x012d
DAT_ce30362:
    #data 0x012e
DAT_ce30364:
    #data 0x0281
DAT_ce30366:
    #data 0x01a0
DAT_ce30368:
    #data 0x019f
DAT_ce3036a:
    #data 0x0283
DAT_ce3036c:
    #data 0x0280
    #align4

PTR_ce30370:
    #data loc_8c2896b0
PTR_ce30374:
    #data loc_8c0532a8
PTR_ce30378:
    #data loc_8c1355d4

;=============================================

LAB_ce3037c:
    mov.b @(r0,r4),r0
    mov 0x01,r6
    and r0,r6
    mov.w @(DAT_ce303c8,pc),r0
    shll2 r6
    mov.w @(r0,r4),r3
    shll r6
    neg r6,r6
    tst r3,r3
    bt/s LAB_ce30394
    add 0x04,r6
    neg r6,r6

LAB_ce30394:
    exts.w r6,r6
    mov.l @(DAT_ce303d0,pc),r1
    lds r6,FPUL
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    mov 0x01,r6
    float FPUL,fr3
    lds r1,FPUL
    fsts FPUL,fr0
    fmac fr0,fr3,fr2
    fmov fr2,@(r0,r4)
    mov.w @(DAT_ce303ca,pc),r0
    mov.b @(r0,r4),r3
    tst r6,r3
    bf LAB_ce303c4
    mov.w @(DAT_ce303cc,pc),r0
    mov.b r6,@(r0,r4)
    add 0x77,r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    mov.b @(r0,r5),r3
    mov.w @(DAT_ce303ce,pc),r0
    add 0x04,r3
    mov.w r3,@(r0,r4)

LAB_ce303c4:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce303c8:
    #data 0x0130
DAT_ce303ca:
    #data 0x01a0
DAT_ce303cc:
    #data 0x012d
DAT_ce303ce:
    #data 0x012e
    #align4

DAT_ce303d0:
    #data 0x3fd55555

;=============================================

LAB_ce303d4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3040c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3040a,pc),r0
    mov 0x01,r6
    mov 0x00,r5
    mov.b @(r0,r14),r0
    mov 0x09,r11
    mov 0x0A,r2
    extu.b r0,r0
    mov 0x08,r12
    mov 0x02,r7
    mov 0x07,r13
    mov 0x0C,r1
    cmp/hs r1,r0
    bt LAB_ce304b6
    shll r0
    mov r0,r1
    mova @(DAT_ce30410,pc),r0
    mov.w @(r0,r1),r0

LAB_ce30406:
    braf r0
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3040a:
    #data 0x01e8
    #align4

PTR_ce3040c:
    #data loc_8c052b4c
DAT_ce30410:
    #data 0x001e
    #data 0x002a
    #data 0x0036
    #data 0x0042
    #data 0x004e
    #data 0x005a
    #data 0x0066
    #data 0x0072
    #data 0x007e
    #data 0x008a
    #data 0x0096
    #data 0x00a2

;=============================================

LAB_ce30428:
    mov.w @(DAT_ce304f0,pc),r0
    mov.b r11,@(r0,r14)
    add 0xFF,r0
    mov.b r5,@(r0,r14)
    bra LAB_ce304b6
    mov 0x06,r4

LAB_ce30434:
    mov.w @(DAT_ce304f0,pc),r0
    mov.b r11,@(r0,r14)
    add 0xFF,r0
    mov.b r6,@(r0,r14)
    bra LAB_ce304b6
    mov r13,r4

LAB_ce30440:
    mov.w @(DAT_ce304f0,pc),r0
    mov.b r11,@(r0,r14)
    add 0xFF,r0
    mov.b r7,@(r0,r14)
    bra LAB_ce304b6
    mov r12,r4

LAB_ce3044c:
    mov.w @(DAT_ce304f0,pc),r0
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r5,@(r0,r14)
    bra LAB_ce304b6
    mov r11,r4

LAB_ce30458:
    mov.w @(DAT_ce304f0,pc),r0
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r6,@(r0,r14)
    bra LAB_ce304b6
    mov r2,r4

LAB_ce30464:
    mov.w @(DAT_ce304f0,pc),r0
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r7,@(r0,r14)
    bra LAB_ce304b6
    mov 0x0B,r4

LAB_ce30470:
    mov.w @(DAT_ce304f0,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r5,@(r0,r14)
    bra LAB_ce304b6
    mov r5,r4

LAB_ce3047c:
    mov.w @(DAT_ce304f0,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r6,@(r0,r14)
    bra LAB_ce304b6
    mov r6,r4

LAB_ce30488:
    mov.w @(DAT_ce304f0,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r7,@(r0,r14)
    bra LAB_ce304b6
    mov r7,r4

LAB_ce30494:
    mov.w @(DAT_ce304f0,pc),r0
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r5,@(r0,r14)
    bra LAB_ce304b6
    mov 0x03,r4

LAB_ce304a0:
    mov.w @(DAT_ce304f0,pc),r0
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r6,@(r0,r14)
    bra LAB_ce304b6
    mov 0x04,r4

LAB_ce304ac:
    mov.w @(DAT_ce304f0,pc),r0
    mov 0x05,r4
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r7,@(r0,r14)

LAB_ce304b6:
    mov.w @(DAT_ce304f2,pc),r0
    mov.l @(PTR_ce304f8,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l r5,@(r0,r14)
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
    mov.w @(DAT_ce304f4,pc),r0
    mov.l @(PTR_ce304fc,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @r15+,r12
    mov.b @(r0,r14),r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce304f0:
    #data 0x0159
DAT_ce304f2:
    #data 0x01a1
DAT_ce304f4:
    #data 0x0158
    #align4

PTR_ce304f8:
    #data loc_8c2896b0
PTR_ce304fc:
    #data loc_8c034e8c

;=============================================

LAB_ce30500:
    mov.w @(DAT_ce30526,pc),r0
    mov 0x00,r5
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov 0x01,r7
    mov 0x0B,r4
    extu.b r0,r0
    mov 0x0C,r6
    mov 0x0C,r1
    cmp/hs r1,r0
    bt LAB_ce3058a
    shll r0
    mov r0,r1
    mova @(DAT_ce30528,pc),r0
    mov.w @(r0,r1),r0

LAB_ce30522:
    braf r0
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30526:
    #data 0x01e8
DAT_ce30528:
    #data 0x001a
    #data 0x0026
    #data 0x0032
    #data 0x0040
    #data 0x004c
    #data 0x0058
    #data 0x001a
    #data 0x0026
    #data 0x0032
    #data 0x0040
    #data 0x004c
    #data 0x0058

;=============================================

LAB_ce30540:
    mov.w @(DAT_ce30648,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r5,@(r0,r14)
    bra LAB_ce3058a
    mov r6,r4

LAB_ce3054c:
    mov.w @(DAT_ce30648,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r7,@(r0,r14)
    bra LAB_ce3058a
    mov 0x0D,r4

LAB_ce30558:
    mov.w @(DAT_ce30648,pc),r0
    mov 0x02,r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce3058a
    mov 0x0E,r4

LAB_ce30566:
    mov.w @(DAT_ce30648,pc),r0
    mov.b r6,@(r0,r14)
    add 0xFF,r0
    mov.b r5,@(r0,r14)
    bra LAB_ce3058a
    mov 0x0F,r4

LAB_ce30572:
    mov.w @(DAT_ce30648,pc),r0
    mov.b r6,@(r0,r14)
    add 0xFF,r0
    mov.b r7,@(r0,r14)
    bra LAB_ce3058a
    mov 0x10,r4

LAB_ce3057e:
    mov.w @(DAT_ce30648,pc),r0
    mov 0x02,r3
    mov 0x11,r4
    mov.b r6,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)

LAB_ce3058a:
    mov.w @(DAT_ce3064a,pc),r0
    mov.l @(PTR_ce30654,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
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
    mov.w @(DAT_ce3064c,pc),r0
    mov.l @(PTR_ce30658,pc),r2
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3064e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce305d4
    mov.w @(DAT_ce30650,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce305e4
    mov.w @(DAT_ce30650,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    bra LAB_ce305e4
    mov.b r2,@(r0,r14)

LAB_ce305d4:
    mov.w @(DAT_ce30650,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce305e4
    mov.w @(DAT_ce30650,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce305e4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce305ea:
    mov.w @(DAT_ce3064e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce305fe
    mov.w @(DAT_ce30650,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30606
    bra LAB_ce3060a
    nop

LAB_ce305fe:
    mov.w @(DAT_ce30650,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce3060a

LAB_ce30606:
    bra LAB_ce30500
    nop

LAB_ce3060a:
    rts
    nop

LAB_ce3060e:
    mov.w @(DAT_ce30652,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce3065c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30622:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30660,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30664,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30668,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30670
    lds.l @r15+,PR
    mov.l @(PTR_ce3066c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30648:
    #data 0x0159
DAT_ce3064a:
    #data 0x01a1
DAT_ce3064c:
    #data 0x0158
DAT_ce3064e:
    #data 0x01fe
DAT_ce30650:
    #data 0x01d6
DAT_ce30652:
    #data 0x01ff
    #align4

PTR_ce30654:
    #data loc_8c2896b0
PTR_ce30658:
    #data loc_8c034e8c
PTR_ce3065c:
    #data PTR_ce31c60
PTR_ce30660:
    #data loc_8c04fea8
PTR_ce30664:
    #data loc_8c050048
PTR_ce30668:
    #data loc_8c034dee
PTR_ce3066c:
    #data loc_8c05176e

;=============================================

LAB_ce30670:
    mov.l @(PTR_ce3077c,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30686
    lds.l @r15+,PR
    mov.l @(PTR_ce30780,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30686:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3068c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30784,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30788,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30622
    mov.l @r15+,r14

LAB_ce306a4:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce3078c,pc),r3
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
    mov.l @(PTR_ce30790,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce306fe
    lds.l @r15+,PR
    mov.l @(PTR_ce30794,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce306fe:
    mov.w @(DAT_ce30774,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r0
    extu.b r0,r0
    rts
    mov.l @r15+,r14

LAB_ce3070a:
    mov.w @(DAT_ce30776,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30798,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3071e:
    mov.l @(PTR_ce30794,pc),r3
    jmp @r3
    nop
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30790,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30778,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30756
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x78,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3077a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3074e
    mova @(DAT_ce3079c,pc),r0
    bra LAB_ce30752
    fmov.s @r0,fr3

LAB_ce3074e:
    mova @(DAT_ce307a0,pc),r0
    fmov.s @r0,fr3

LAB_ce30752:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce30756:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3075c:
    mov.l @(PTR_ce30794,pc),r3
    jmp @r3
    nop

LAB_ce30762:
    mov r4,r3
    mov.l @(PTR_ce307a4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30774:
    #data 0x01e8
DAT_ce30776:
    #data 0x01ff
DAT_ce30778:
    #data 0x0141
DAT_ce3077a:
    #data 0x01d2
    #align4

PTR_ce3077c:
    #data loc_8c052ce2
PTR_ce30780:
    #data loc_8c052dac
PTR_ce30784:
    #data loc_8c050084
PTR_ce30788:
    #data loc_8c04ff88
PTR_ce3078c:
    #data loc_8c052c84
PTR_ce30790:
    #data loc_8c034dee
PTR_ce30794:
    #data loc_8c051648
PTR_ce30798:
    #data PTR_ce31c70
DAT_ce3079c:
    #data 0xc1555555
DAT_ce307a0:
    #data 0x41555555
PTR_ce307a4:
    #data PTR_ce31c80

;=============================================

LAB_ce307a8:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r3
    fldi0 fr3
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30906,pc),r0
    mov.b r3,@(r0,r14)
    add 0xDC,r0
    fmov fr3,@(r0,r14)
    add 0x84,r0
    mov.l @(PTR_ce3090c,pc),r3
    mov.w r0,@(0x1c,r14)
    mov.b @r3,r0
    extu.b r0,r0
    cmp/eq 0x08,r0
    bf LAB_ce307d6
    mov.l @(PTR_ce30910,pc),r1
    jsr @r1
    mov r14,r4

LAB_ce307d6:
    mov.l @(PTR_ce30914,pc),r13
    mov 0x00,r5
    jsr @r13
    mov r14,r4
    mov 0x01,r5
    jsr @r13
    mov r14,r4
    mov 0x02,r5
    jsr @r13
    mov r14,r4
    mov 0x03,r5
    jsr @r13
    mov r14,r4
    mov 0x04,r5
    jsr @r13
    mov r14,r4
    mov 0x05,r5
    jsr @r13
    mov r14,r4
    mov 0x06,r5
    jsr @r13
    mov r14,r4
    mov 0x07,r5
    jsr @r13
    mov r14,r4
    mov 0x08,r5
    jsr @r13
    mov r14,r4
    mov 0x09,r5
    jsr @r13
    mov r14,r4
    mov 0x0A,r5
    jsr @r13
    mov r14,r4
    mov 0x0B,r5
    jsr @r13
    mov r14,r4
    mov 0x0C,r5
    jsr @r13
    mov r14,r4
    mov 0x0D,r5
    jsr @r13
    mov r14,r4
    mov 0x0E,r5
    jsr @r13
    mov r14,r4
    mov 0x0F,r5
    jsr @r13
    mov r14,r4
    mov 0x10,r5
    jsr @r13
    mov r14,r4
    mov 0x11,r5
    jsr @r13
    mov r14,r4
    mov 0x12,r5
    jsr @r13
    mov r14,r4
    mov 0x13,r5
    jsr @r13
    mov r14,r4
    mov 0x14,r5
    jsr @r13
    mov r14,r4
    mov 0x15,r5
    jsr @r13
    mov r14,r4
    mov 0x16,r5
    jsr @r13
    mov r14,r4
    mov 0x17,r5
    jsr @r13
    mov r14,r4
    mov 0x18,r5
    jsr @r13
    mov r14,r4
    mov 0x19,r5
    jsr @r13
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30918,pc),r3
    mov 0x00,r6
    mov 0x12,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30884:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce308a2
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce30906,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce3091c,pc),r3
    jmp @r3
    mov 0x04,r5

LAB_ce308a2:
    rts
    nop

LAB_ce308a6:
    mov.l @(DAT_ce30920,pc),r1
    mov.w @(DAT_ce30908,pc),r0
    lds r1,FPUL
    fmov.s @(r0,r4),fr2
    fldi1 fr4
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    fmov.s @(r0,r4),fr2
    fcmp/gt fr2,fr4
    bt LAB_ce308c4
    fmov fr4,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce308c4:
    rts
    nop

LAB_ce308c8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30924,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3090a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce308e0
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce308e0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce308e6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30924,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce308fe
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce308fe:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30906:
    #data 0x012c
DAT_ce30908:
    #data 0x0108
DAT_ce3090a:
    #data 0x0141
    #align4

PTR_ce3090c:
    #data loc_8c289638
PTR_ce30910:
    #data loc_8c105474
PTR_ce30914:
    #data loc_8c0d6e04
PTR_ce30918:
    #data loc_8c034e8c
PTR_ce3091c:
    #data loc_8c042008
DAT_ce30920:
    #data 0x3d4ccccd
PTR_ce30924:
    #data loc_8c034dee

;=============================================

LAB_ce30928:
    mov r4,r3
    mov.l @(PTR_ce30a58,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3093a:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce30940:
    mov 0x20,r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30a5c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30954:
    mov r4,r3
    mov.l @(PTR_ce30a60,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30966:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce30a64,pc),r3
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
    mov.w @(DAT_ce30a50,pc),r0
    mov r3,r2
    mov 0x13,r5
    mov r2,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30a52,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFD,r0
    mov.l @(PTR_ce30a68,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce309b0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30a6c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce309c8
    lds.l @r15+,PR
    mov.l @(PTR_ce30a70,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce309c8:
    mov.l @(PTR_ce30a74,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30a54,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce309e8
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce30a78,pc),r3
    mov 0x03,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce309e8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce309ee:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30a6c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30a06
    lds.l @r15+,PR
    mov.l @(PTR_ce30a70,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30a06:
    mov.l @(PTR_ce30a74,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30a56,pc),r0
    mov 0x01,r2
    mov.b @(r0,r14),r3
    cmp/ge r2,r3
    bf LAB_ce30a28
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce30a78,pc),r3
    mov 0x10,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30a28:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30a2e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30a6c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30a46
    lds.l @r15+,PR
    mov.l @(PTR_ce30a70,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30a46:
    lds.l @r15+,PR
    mov.l @(PTR_ce30a74,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a50:
    #data 0x041c
DAT_ce30a52:
    #data 0x01fc
DAT_ce30a54:
    #data 0x0141
DAT_ce30a56:
    #data 0x0140
    #align4

PTR_ce30a58:
    #data PTR_ce31c94
PTR_ce30a5c:
    #data PTR_ce31c9c
PTR_ce30a60:
    #data PTR_ce31cb0
PTR_ce30a64:
    #data loc_8c035162
PTR_ce30a68:
    #data loc_8c034e8c
PTR_ce30a6c:
    #data loc_8c046c8a
PTR_ce30a70:
    #data loc_8c051648
PTR_ce30a74:
    #data loc_8c034dee
PTR_ce30a78:
    #data loc_8c0d5e24

;=============================================

LAB_ce30a7c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30bbc,pc),r3
    jsr @r3
    mov 0x15,r5
    mov.w @(DAT_ce30baa,pc),r0
    mov 0x04,r2
    mov r14,r4
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce30a94:
    mov.w @(DAT_ce30baa,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30bc0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30aa8:
    mov r4,r3
    mov.l @(PTR_ce30bc4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30aba:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30bc8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30bcc,pc),r2
    mov 0x00,r5
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
    mov 0x00,r13
    mov.w @(DAT_ce30bac,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce30bd0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30bae,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30bb0,pc),r0
    mov 0x3B,r2
    mov.l @(PTR_ce30bd4,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov r13,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30bd8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30bdc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce30b3e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30be0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30bb2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30b62
    mov.b @(0x6,r14),r0
    mov r14,r5
    mov.l @(PTR_ce30be4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30bb4,pc),r0
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4

LAB_ce30b62:
    mov.w @(DAT_ce30bb6,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30ba4
    mova @(DAT_ce30be8,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30bb8,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b8a
    mov.w @(DAT_ce30bb6,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce30b9c
    fmac fr0,fr3,fr2

LAB_ce30b8a:
    mov.w @(DAT_ce30bb6,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce30b9c:
    fmov fr2,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce30bb6,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce30ba4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30baa:
    #data 0x01e9
DAT_ce30bac:
    #data 0x041c
DAT_ce30bae:
    #data 0x01fc
DAT_ce30bb0:
    #data 0x01a1
DAT_ce30bb2:
    #data 0x0141
DAT_ce30bb4:
    #data 0x01a3
DAT_ce30bb6:
    #data 0x0150
DAT_ce30bb8:
    #data 0x0130
    #align4

PTR_ce30bbc:
    #data loc_8c0532a8
PTR_ce30bc0:
    #data PTR_ce31cc0
PTR_ce30bc4:
    #data PTR_ce31cdc
PTR_ce30bc8:
    #data loc_8c05218a
PTR_ce30bcc:
    #data loc_8c035162
PTR_ce30bd0:
    #data loc_8c056de4
PTR_ce30bd4:
    #data loc_8c2896b0
PTR_ce30bd8:
    #data loc_8c034e8c
PTR_ce30bdc:
    #data loc_8c05115a
PTR_ce30be0:
    #data loc_8c034dee
PTR_ce30be4:
    #data loc_8c086fbc
DAT_ce30be8:
    #data 0x3fd55555

;=============================================

LAB_ce30bec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d34,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c02
    mov.l @(PTR_ce30d38,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30c02:
    mov.w @(DAT_ce30d26,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30c44
    mova @(DAT_ce30d3c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30d28,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c2a
    mov.w @(DAT_ce30d26,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce30c3c
    fmac fr0,fr3,fr2

LAB_ce30c2a:
    mov.w @(DAT_ce30d26,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce30c3c:
    fmov fr2,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce30d26,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce30c44:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30c4a:
    mov r4,r3
    mov.l @(PTR_ce30d40,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30c5c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30d44,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30d48,pc),r2
    mov 0x00,r5
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
    mov 0x00,r13
    mov.w @(DAT_ce30d2a,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce30d4c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30d2c,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30d2e,pc),r0
    mov 0x31,r2
    mov.l @(PTR_ce30d50,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30d54,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30d58,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce30ce0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce30d34,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30d30,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d1e
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r15,r5
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30d30,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce30d5c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce30d60,pc),r0
    mov.l @(PTR_ce30d64,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce30d1e:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d26:
    #data 0x0150
DAT_ce30d28:
    #data 0x0130
DAT_ce30d2a:
    #data 0x041c
DAT_ce30d2c:
    #data 0x01fc
DAT_ce30d2e:
    #data 0x01a1
DAT_ce30d30:
    #data 0x0141
    #align4

PTR_ce30d34:
    #data loc_8c034dee
PTR_ce30d38:
    #data loc_8c051648
DAT_ce30d3c:
    #data 0x3fd55555
PTR_ce30d40:
    #data PTR_ce31ce8
PTR_ce30d44:
    #data loc_8c05218a
PTR_ce30d48:
    #data loc_8c035162
PTR_ce30d4c:
    #data loc_8c056de4
PTR_ce30d50:
    #data loc_8c2896b0
PTR_ce30d54:
    #data loc_8c034e8c
PTR_ce30d58:
    #data loc_8c05115a
DAT_ce30d5c:
    #data 0xc2ceaaaa
DAT_ce30d60:
    #data 0x43d86db6
PTR_ce30d64:
    #data loc_8c050834

;=============================================

LAB_ce30d68:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ea8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d82
    lds.l @r15+,PR
    mov.l @(PTR_ce30eac,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d82:
    mov.w @(DAT_ce30e98,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30da6
    mov.w @(DAT_ce30e9a,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30e9c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce30da6
    lds.l @r15+,PR
    mov.l @(PTR_ce30eb0,pc),r2
    mov 0x00,r6
    mov r6,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30da6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30dac:
    mov r4,r3
    mov.l @(PTR_ce30eb4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30dbe:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30eb8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30ebc,pc),r2
    mov 0x00,r5
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
    mov 0x00,r13
    mov.w @(DAT_ce30e9e,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce30ec0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30ea0,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30ea2,pc),r0
    mov 0x32,r2
    mov.l @(PTR_ce30ec4,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x02,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30ec8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30ecc,pc),r3
    mov r13,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30ed0,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce30e4a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ea8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30e98,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e70
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r3,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30e98,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30ed4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30e70:
    mov.w @(DAT_ce30ea4,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30ef6
    mova @(DAT_ce30ed8,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30ea6,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30edc
    mov.w @(DAT_ce30ea4,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce30eee
    fmac fr0,fr3,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e98:
    #data 0x0141
DAT_ce30e9a:
    #data 0x0328
DAT_ce30e9c:
    #data 0x0142
DAT_ce30e9e:
    #data 0x041c
DAT_ce30ea0:
    #data 0x01fc
DAT_ce30ea2:
    #data 0x01a1
DAT_ce30ea4:
    #data 0x0150
DAT_ce30ea6:
    #data 0x0130
    #align4

PTR_ce30ea8:
    #data loc_8c034dee
PTR_ce30eac:
    #data loc_8c051648
PTR_ce30eb0:
    #data loc_8c08691c
PTR_ce30eb4:
    #data PTR_ce31cf4
PTR_ce30eb8:
    #data loc_8c05218a
PTR_ce30ebc:
    #data loc_8c035162
PTR_ce30ec0:
    #data loc_8c056de4
PTR_ce30ec4:
    #data loc_8c2896b0
PTR_ce30ec8:
    #data loc_8c034e8c
PTR_ce30ecc:
    #data loc_8c0d5e24
PTR_ce30ed0:
    #data loc_8c05115a
PTR_ce30ed4:
    #data loc_8c086bd4
DAT_ce30ed8:
    #data 0x3fd55555

;=============================================

LAB_ce30edc:
    mov.w @(DAT_ce30ff2,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce30eee:
    fmov fr2,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce30ff2,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce30ef6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30efc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ff8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30ff4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30f22
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x01,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30ff4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30ffc,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30f22:
    mov.w @(DAT_ce30ff2,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30f64
    mova @(DAT_ce31000,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30ff6,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30f4a
    mov.w @(DAT_ce30ff2,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce30f5c
    fmac fr0,fr3,fr2

LAB_ce30f4a:
    mov.w @(DAT_ce30ff2,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce30f5c:
    fmov fr2,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce30ff2,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce30f64:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f6a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ff8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30ff4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30f90
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x02,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30ff4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30ffc,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30f90:
    mov.w @(DAT_ce30ff2,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30fd2
    mova @(DAT_ce31000,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30ff6,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30fb8
    mov.w @(DAT_ce30ff2,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce30fca
    fmac fr0,fr3,fr2

LAB_ce30fb8:
    mov.w @(DAT_ce30ff2,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce30fca:
    fmov fr2,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce30ff2,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce30fd2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fd8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ff8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31008
    lds.l @r15+,PR
    mov.l @(PTR_ce31004,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ff2:
    #data 0x0150
DAT_ce30ff4:
    #data 0x0141
DAT_ce30ff6:
    #data 0x0130
    #align4

PTR_ce30ff8:
    #data loc_8c034dee
PTR_ce30ffc:
    #data loc_8c086bd4
DAT_ce31000:
    #data 0x3fd55555
PTR_ce31004:
    #data loc_8c051648

;=============================================

LAB_ce31008:
    mov.w @(DAT_ce31144,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3104a
    mova @(DAT_ce31154,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31146,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31030
    mov.w @(DAT_ce31144,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce31042
    fmac fr0,fr3,fr2

LAB_ce31030:
    mov.w @(DAT_ce31144,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce31042:
    fmov fr2,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce31144,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce3104a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31050:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31158,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31148,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31066:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce3115c,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31160,pc),r2
    mov 0x00,r5
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
    mov 0x00,r13
    mov.w @(DAT_ce3114a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3114c,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3114e,pc),r0
    mov.l @r15,r3
    mov.b @(r0,r14),r1
    tst r1,r1
    bt LAB_ce310b8
    bra LAB_ce310ba
    mov 0x0C,r2

LAB_ce310b8:
    mov 0x18,r2

LAB_ce310ba:
    mov.b r2,@r3
    mov 0x40,r0
    mov.l @(PTR_ce31164,pc),r3
    mov 0x05,r5
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31150,pc),r0
    mov 0x35,r2
    mov.l @(PTR_ce31168,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x03,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3116c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31170,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31108:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31174,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31152,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3113c
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov.l @(PTR_ce31178,pc),r13
    mov 0x0A,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31152,pc),r0
    mov.b r3,@(r0,r14)
    jsr @r13
    mov r14,r4
    mov 0x0B,r5
    jsr @r13
    mov r14,r4
    mov 0x0C,r5
    jsr @r13
    mov r14,r4

LAB_ce3113c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31144:
    #data 0x0150
DAT_ce31146:
    #data 0x0130
DAT_ce31148:
    #data 0x02a4
DAT_ce3114a:
    #data 0x041c
DAT_ce3114c:
    #data 0x01fc
DAT_ce3114e:
    #data 0x0525
DAT_ce31150:
    #data 0x01a1
DAT_ce31152:
    #data 0x0140
    #align4

DAT_ce31154:
    #data 0x3fd55555
PTR_ce31158:
    #data PTR_ce31d08
PTR_ce3115c:
    #data loc_8c05218a
PTR_ce31160:
    #data loc_8c035162
PTR_ce31164:
    #data loc_8c056de4
PTR_ce31168:
    #data loc_8c2896b0
PTR_ce3116c:
    #data loc_8c034e8c
PTR_ce31170:
    #data loc_8c05115a
PTR_ce31174:
    #data loc_8c034dee
PTR_ce31178:
    #data loc_8c0d5e52

;=============================================

LAB_ce3117c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce312b4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce312ac,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce311ba
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r15,r5
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce312ac,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce312b8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce312bc,pc),r0
    mov.l @(PTR_ce312c0,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce311ba:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311c2:
    mov.w @(DAT_ce312ae,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce312b4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce312ac,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3120a
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov r3,r5
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce312cc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce312c4,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce312c8,pc),r0
    fmov.s @r0,fr5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce312d0,pc),r2
    mov 0x0D,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce312d0,pc),r3
    mov 0x15,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3120a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31210:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce312ae,pc),r0
    mov 0x05,r3
    mov r4,r14
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce312b4,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @r2,r3
    cmp/pz r3
    bf LAB_ce31246
    mov.l @(PTR_ce312d4,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce31246
    mov.l @r15,r3
    mov.b @r3,r2
    add 0xFF,r2
    mov.b r2,@r3
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31246:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce31268
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov r14,r4
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce312d8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31268:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31270:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce312b4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3128a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce312dc,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3128a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31292:
    mov.w @(DAT_ce312b0,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce312e0,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce312ac:
    #data 0x0141
DAT_ce312ae:
    #data 0x0328
DAT_ce312b0:
    #data 0x01f5
    #align4

PTR_ce312b4:
    #data loc_8c034dee
DAT_ce312b8:
    #data 0xc2555555
DAT_ce312bc:
    #data 0x43564924
PTR_ce312c0:
    #data loc_8c050834
DAT_ce312c4:
    #data 0x42baaaaa
DAT_ce312c8:
    #data 0x43632492
PTR_ce312cc:
    #data loc_8c0873b0
PTR_ce312d0:
    #data loc_8c0d5e24
PTR_ce312d4:
    #data loc_8c055d54
PTR_ce312d8:
    #data loc_8c034e8c
PTR_ce312dc:
    #data loc_8c051648
PTR_ce312e0:
    #data PTR_ce31d20

;=============================================

LAB_ce312e4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3139c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce313a0,pc),r2
    mov 0x00,r5
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
    mov 0x00,r4
    mov.w @(DAT_ce31394,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce313a4,pc),r3
    mov 0x05,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31396,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31332:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce313a8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31356
    mov.l @(PTR_ce313ac,pc),r3
    mov 0x06,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce313b0,pc),r2
    mov 0x17,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31356:
    mov.w @(DAT_ce31398,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3137c
    mov 0x00,r3
    mov.l @(PTR_ce313b4,pc),r4
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31372
    mov 0x01,r5
    bra LAB_ce31374
    mov r5,r0

LAB_ce31372:
    mov 0x03,r0

LAB_ce31374:
    mov.b r0,@(0x5,r4)
    mov r5,r0
    nop
    mov.b r0,@(0x6,r4)

LAB_ce3137c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31382:
    mov r4,r3
    mov.l @(PTR_ce313b8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31394:
    #data 0x041c
DAT_ce31396:
    #data 0x01fc
DAT_ce31398:
    #data 0x0141
    #align4

PTR_ce3139c:
    #data loc_8c05218a
PTR_ce313a0:
    #data loc_8c035162
PTR_ce313a4:
    #data loc_8c034e8c
PTR_ce313a8:
    #data loc_8c034dee
PTR_ce313ac:
    #data loc_8c0d5e24
PTR_ce313b0:
    #data loc_8c0532a8
PTR_ce313b4:
    #data loc_8c26a518
PTR_ce313b8:
    #data PTR_ce31d28

;=============================================

LAB_ce313bc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce314e8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce314ec,pc),r2
    mov 0x00,r5
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
    mov 0x00,r4
    mov.w @(DAT_ce314dc,pc),r0
    mov 0x33,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce314de,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce314f0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    mov 0x15,r5
    mov 0x06,r6
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce314f4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3142e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314f8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce314e0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3144e
    mov.b @(0x6,r14),r0
    mov 0x02,r5
    mov.l @(PTR_ce314fc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce3144e:
    mov.w @(DAT_ce314e2,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31490
    mova @(DAT_ce31500,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce314e4,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31476
    mov.w @(DAT_ce314e2,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce31488
    fmac fr0,fr3,fr2

LAB_ce31476:
    mov.w @(DAT_ce314e2,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce31488:
    fmov fr2,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce314e2,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce31490:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31496:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    mov.l r9,@-r15
    mov.l r8,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    fmov.s fr13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce314f8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce314e0,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bt LAB_ce3159c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce314e4,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3150c
    mov 0x34,r0
    fmov.s @(r0,r14),fr4
    mova @(DAT_ce31504,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31508,pc),r0
    fmov fr4,fr14
    fadd fr3,fr14
    bra LAB_ce3151c
    fmov.s @r0,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314dc:
    #data 0x041c
DAT_ce314de:
    #data 0x01fc
DAT_ce314e0:
    #data 0x0141
DAT_ce314e2:
    #data 0x0150
DAT_ce314e4:
    #data 0x0130
    #align4

PTR_ce314e8:
    #data loc_8c05218a
PTR_ce314ec:
    #data loc_8c035162
PTR_ce314f0:
    #data loc_8c2896b0
PTR_ce314f4:
    #data loc_8c034e8c
PTR_ce314f8:
    #data loc_8c034dee
PTR_ce314fc:
    #data loc_8c0d5e24
DAT_ce31500:
    #data 0x3fd55555
DAT_ce31504:
    #data 0xc3200000
DAT_ce31508:
    #data 0xc33aaaaa

;=============================================

LAB_ce3150c:
    mov 0x34,r0
    fmov.s @(r0,r14),fr4
    mova @(DAT_ce31618,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3161c,pc),r0
    fmov fr4,fr14
    fadd fr3,fr14
    fmov.s @r0,fr2

LAB_ce3151c:
    fmov fr4,fr13
    fadd fr2,fr13
    mova @(DAT_ce31624,pc),r0
    mov.l @(PTR_ce31620,pc),r8
    fmov.s @r0,fr15
    mov 0x00,r13
    mov 0x01,r9
    mov 0x04,r10

LAB_ce3152c:
    mov.w @(DAT_ce31612,pc),r0
    extu.b r13,r12
    mov r9,r11
    shad r12,r11
    mov.b @(r0,r14),r3
    extu.b r11,r2
    extu.b r3,r3
    tst r2,r3
    bf LAB_ce31594
    mov.l @(PTR_ce31628,pc),r3
    mov r15,r5
    mov r12,r6
    add 0x04,r5
    jsr @r3
    mov r15,r4
    mov r12,r0
    nop
    cmp/eq 0x01,r0
    bt LAB_ce3155a
    mov r12,r0
    nop
    cmp/eq 0x02,r0
    bf LAB_ce3155e

LAB_ce3155a:
    bra LAB_ce31560
    fmov fr14,fr4

LAB_ce3155e:
    fmov fr13,fr4

LAB_ce31560:
    fmov fr4,fr3
    fadd fr15,fr3
    fmov.s @r15,fr5
    fcmp/gt fr5,fr3
    bt LAB_ce31594
    mova @(DAT_ce3162c,pc),r0
    fmov fr4,fr2
    fmov.s @r0,fr3
    fadd fr3,fr2
    fcmp/gt fr2,fr5
    bt LAB_ce31594
    mov.w @(DAT_ce31612,pc),r0
    mov 0x00,r7
    mov 0x03,r6
    mov.b @(r0,r14),r2
    or r11,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31614,pc),r0
    mov.w @(r0,r14),r5
    jsr @r8
    mov r15,r4
    mov.l @(PTR_ce31630,pc),r3
    mov r15,r5
    mov r13,r6
    jsr @r3
    mov r14,r4

LAB_ce31594:
    add 0x01,r13
    extu.b r13,r2
    cmp/ge r10,r2
    bf LAB_ce3152c

LAB_ce3159c:
    mov.w @(DAT_ce31616,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce315de
    mova @(DAT_ce31634,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31614,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce315c4
    mov.w @(DAT_ce31616,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce315d6
    fmac fr0,fr3,fr2

LAB_ce315c4:
    mov.w @(DAT_ce31616,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce315d6:
    fmov fr2,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce31616,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce315de:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr13
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    mov.l @r15+,r8
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce315f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31638,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31640
    lds.l @r15+,PR
    mov.l @(PTR_ce3163c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31612:
    #data 0x02a5
DAT_ce31614:
    #data 0x0130
DAT_ce31616:
    #data 0x0150
    #align4

DAT_ce31618:
    #data 0x43200000
DAT_ce3161c:
    #data 0x433aaaaa
PTR_ce31620:
    #data loc_8c0fd966
DAT_ce31624:
    #data 0xc2200000
PTR_ce31628:
    #data loc_8c113cda
DAT_ce3162c:
    #data 0x42200000
PTR_ce31630:
    #data loc_8c087f32
DAT_ce31634:
    #data 0x3fd55555
PTR_ce31638:
    #data loc_8c034dee
PTR_ce3163c:
    #data loc_8c051648

;=============================================

LAB_ce31640:
    mov.w @(DAT_ce3174a,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31682
    mova @(DAT_ce31758,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce3174c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31668
    mov.w @(DAT_ce3174a,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    fmov fr4,fr0
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    bra LAB_ce3167a
    fmac fr0,fr3,fr2

LAB_ce31668:
    mov.w @(DAT_ce3174a,pc),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    add r14,r3
    mov.w @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fsub fr3,fr2

LAB_ce3167a:
    fmov fr2,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce3174a,pc),r0
    mov.w r3,@(r0,r14)

LAB_ce31682:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31688:
    mov r4,r3
    mov.l @(PTR_ce3175c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3169a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31760,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31764,pc),r2
    mov 0x00,r5
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
    mov 0x00,r4
    fmov fr4,@(r0,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov 0x34,r3
    mov.w @(DAT_ce3174e,pc),r0
    mov 0x15,r5
    mov 0x07,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31750,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31768,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3176c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31712:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31770,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31752,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31744
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31754,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3173c
    mova @(DAT_ce31774,pc),r0
    bra LAB_ce31740
    fmov.s @r0,fr3

LAB_ce3173c:
    mova @(DAT_ce31778,pc),r0
    fmov.s @r0,fr3

LAB_ce31740:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce31744:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3174a:
    #data 0x0150
DAT_ce3174c:
    #data 0x0130
DAT_ce3174e:
    #data 0x041c
DAT_ce31750:
    #data 0x01fc
DAT_ce31752:
    #data 0x0141
DAT_ce31754:
    #data 0x01d2
    #align4

DAT_ce31758:
    #data 0x3fd55555
PTR_ce3175c:
    #data PTR_ce31d38
PTR_ce31760:
    #data loc_8c05218a
PTR_ce31764:
    #data loc_8c035162
PTR_ce31768:
    #data loc_8c2896b0
PTR_ce3176c:
    #data loc_8c034e8c
PTR_ce31770:
    #data loc_8c034dee
DAT_ce31774:
    #data 0xc1555555
DAT_ce31778:
    #data 0x41555555

;=============================================

LAB_ce3177c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31870,pc),r3
    add r14,r1
    mov 0x34,r0
    sts.l PR,@-r15
    fmov.s @r1,fr3
    mov 0x68,r1
    fmov.s @(r0,r14),fr2
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
    mov.w @(DAT_ce31868,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce317e8
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst 0x01,r0
    bt LAB_ce317c4
    mov.w @(DAT_ce3186a,pc),r0
    mov 0x34,r2
    bra LAB_ce317ca
    mov.b r2,@(r0,r14)

LAB_ce317c4:
    mov.w @(DAT_ce3186a,pc),r0
    mov 0x3D,r3
    mov.b r3,@(r0,r14)

LAB_ce317ca:
    mov.w @(DAT_ce3186c,pc),r0
    mov.l @(PTR_ce31874,pc),r3
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

LAB_ce317e8:
    mov.w @(DAT_ce3186e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3180a
    mov.b @(0x6,r14),r0
    mov 0x04,r5
    mov.l @(PTR_ce31878,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31878,pc),r2
    mov 0x05,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3180a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31810:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31870,pc),r3
    add r14,r1
    mov 0x34,r0
    sts.l PR,@-r15
    fmov.s @r1,fr3
    mov 0x68,r1
    fmov.s @(r0,r14),fr2
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
    mov.w @(DAT_ce31868,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce318a0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov 0x06,r3
    mov.w @(0x1c,r14),r0
    cmp/ge r3,r0
    bf LAB_ce3187c
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst 0x01,r0
    bt LAB_ce31860
    mov.w @(DAT_ce3186a,pc),r0
    mov 0x34,r1
    bra LAB_ce31882
    mov.b r1,@(r0,r14)

LAB_ce31860:
    mov.w @(DAT_ce3186a,pc),r0
    mov 0x3D,r2
    bra LAB_ce31882
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31868:
    #data 0x0141
DAT_ce3186a:
    #data 0x01a1
DAT_ce3186c:
    #data 0x01ac
DAT_ce3186e:
    #data 0x0140
    #align4

PTR_ce31870:
    #data loc_8c034dee
PTR_ce31874:
    #data loc_8c2896b0
PTR_ce31878:
    #data loc_8c0d5e24

;=============================================

LAB_ce3187c:
    mov.w @(DAT_ce319bc,pc),r0
    mov 0x3A,r2
    mov.b r2,@(r0,r14)

LAB_ce31882:
    mov.w @(DAT_ce319be,pc),r0
    mov.l @(PTR_ce319c8,pc),r3
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

LAB_ce318a0:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce318d6
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce319c0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce318c0
    mova @(DAT_ce319cc,pc),r0
    bra LAB_ce318c4
    fmov.s @r0,fr3

LAB_ce318c0:
    mova @(DAT_ce319d0,pc),r0
    fmov.s @r0,fr3

LAB_ce318c4:
    mov.l @(PTR_ce319d4,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x08,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce318d6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318dc:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce319d8,pc),r3
    add r14,r1
    mov 0x34,r0
    sts.l PR,@-r15
    fmov.s @r1,fr3
    mov 0x68,r1
    fmov.s @(r0,r14),fr2
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
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31914
    lds.l @r15+,PR
    mov.l @(PTR_ce319dc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31914:
    mov.w @(DAT_ce319c2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3192a
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce3192a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31930:
    mov r4,r3
    mov.l @(PTR_ce319e0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31942:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce319c4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce319e4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce319c6,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3196a
    mova @(DAT_ce319e8,pc),r0
    bra LAB_ce3196e
    fmov.s @r0,fr3

LAB_ce3196a:
    mova @(DAT_ce319ec,pc),r0
    fmov.s @r0,fr3

LAB_ce3196e:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x30,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce319f0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce319f4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319bc,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce319c8,pc),r3
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
    mov.l @(PTR_ce319d4,pc),r2
    mov r4,r6
    mov 0x14,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319bc:
    #data 0x01a1
DAT_ce319be:
    #data 0x01ac
DAT_ce319c0:
    #data 0x01d2
DAT_ce319c2:
    #data 0x0141
DAT_ce319c4:
    #data 0x01f9
DAT_ce319c6:
    #data 0x0130
    #align4

PTR_ce319c8:
    #data loc_8c2896b0
DAT_ce319cc:
    #data 0x3e855555
DAT_ce319d0:
    #data 0xbe855555
PTR_ce319d4:
    #data loc_8c034e8c
PTR_ce319d8:
    #data loc_8c034dee
PTR_ce319dc:
    #data loc_8c051648
PTR_ce319e0:
    #data PTR_ce31d4c
PTR_ce319e4:
    #data loc_8c035162
DAT_ce319e8:
    #data 0xc1f00000
DAT_ce319ec:
    #data 0x41f00000
DAT_ce319f0:
    #data 0x3e892492
DAT_ce319f4:
    #data 0xbf4db6db

;=============================================

LAB_ce319f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b14,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31b18,pc),r3
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
    bt LAB_ce31a5a
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31b1c,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a5a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31a60:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31b14,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31a7a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31b20,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31a7a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31a82:
    rts
    mov 0x00,r0

LAB_ce31a86:
    rts
    nop

LAB_ce31a8a:
    rts
    nop

LAB_ce31a8e:
    mov.w @(DAT_ce31b0e,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce31b24,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce31a9c:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31b10,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce31ab8
    cmp/eq 0x01,r0
    bt LAB_ce31ab8
    cmp/eq 0x02,r0
    bf LAB_ce31abc

LAB_ce31ab8:
    mov.w @(DAT_ce31b12,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce31abc:
    mov.l @(PTR_ce31b28,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce31ac2:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31b10,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce31ade
    cmp/eq 0x01,r0
    bt LAB_ce31ade
    cmp/eq 0x02,r0
    bf LAB_ce31ae2

LAB_ce31ade:
    mov.w @(DAT_ce31b12,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce31ae2:
    mov.l @(PTR_ce31b28,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce31ae8:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31b10,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce31b08
    cmp/eq 0x01,r0
    bt LAB_ce31b08
    cmp/eq 0x02,r0
    bt LAB_ce31b2c
    bra LAB_ce31b36
    nop

LAB_ce31b08:
    mov.w @(DAT_ce31b12,pc),r0
    bra LAB_ce31b30
    mov.b r5,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b0e:
    #data 0x01c8
DAT_ce31b10:
    #data 0x04c9
DAT_ce31b12:
    #data 0x01e9
    #align4

PTR_ce31b14:
    #data loc_8c034dee
PTR_ce31b18:
    #data loc_8c052ce2
PTR_ce31b1c:
    #data loc_8c034e8c
PTR_ce31b20:
    #data loc_8c051854
PTR_ce31b24:
    #data loc_8c04cc1c
PTR_ce31b28:
    #data loc_8c0530d8

;=============================================

LAB_ce31b2c:
    mov.w @(DAT_ce31b86,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce31b30:
    mov.w @(DAT_ce31b88,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)

LAB_ce31b36:
    mov.l @(PTR_ce31b8c,pc),r3
    jmp @r3
    mov 0x15,r5

LAB_ce31b3c:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31b8a,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce31b5c
    cmp/eq 0x01,r0
    bt LAB_ce31b5c
    cmp/eq 0x02,r0
    bt LAB_ce31b62
    bra LAB_ce31b6c
    nop

LAB_ce31b5c:
    mov.w @(DAT_ce31b86,pc),r0
    bra LAB_ce31b66
    mov.b r5,@(r0,r4)

LAB_ce31b62:
    mov.w @(DAT_ce31b86,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce31b66:
    mov.w @(DAT_ce31b88,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)

LAB_ce31b6c:
    mov.l @(PTR_ce31b8c,pc),r3
    jmp @r3
    mov 0x15,r5

LAB_ce31b72:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov 0x04,r3
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31b86,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce31b8c,pc),r3
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b86:
    #data 0x01e9
DAT_ce31b88:
    #data 0x01a3
DAT_ce31b8a:
    #data 0x04c9
    #align4

PTR_ce31b8c:
    #data loc_8c0530d8
DAT_ce31b90:
    #data 0x10000003
    #data 0x00000005
    #data 0x14001000
    #data 0x03000400
DAT_ce31ba0:
    #data 0x10000003
    #data 0x00000000
    #data 0x18001000
    #data 0x03000800
DAT_ce31bb0:
    #data 0x91000003
    #data 0x00000001
    #data 0x18001000
    #data 0x03000800
DAT_ce31bc0:
    #data 0x10000003
    #data 0x00000002
    #data 0x14001000
    #data 0x00600400
DAT_ce31bd0:
    #data 0x10000003
    #data 0x00000006
    #data 0x18001000
    #data 0x00600800
DAT_ce31be0:
    #data 0x91000003
    #data 0x00000003
    #data 0x18001000
    #data 0x00600800
PTR_ce31bf0:
    #data LAB_ce3028c
PTR_ce31bf4:
    #data LAB_ce3001c
PTR_ce31bf8:
    #data LAB_ce3060e
PTR_ce31bfc:
    #data LAB_ce3070a
PTR_ce31c00:
    #data LAB_ce3071e
PTR_ce31c04:
    #data LAB_ce3075c
PTR_ce31c08:
    #data LAB_ce30762
PTR_ce31c0c:
    #data LAB_ce30928
PTR_ce31c10:
    #data LAB_ce30a94
PTR_ce31c14:
    #data LAB_ce31a82
PTR_ce31c18:
    #data LAB_ce31a86
PTR_ce31c1c:
    #data LAB_ce31a8a
PTR_ce31c20:
    #data LAB_ce31a8e
PTR_ce31c24:
    #data LAB_ce3025e
PTR_ce31c28:
    #data LAB_ce31930
    #data 0x00000000
PTR_ce31c30:
    #data LAB_ce31a9c
PTR_ce31c34:
    #data LAB_ce31ac2
PTR_ce31c38:
    #data LAB_ce31ae8
PTR_ce31c3c:
    #data LAB_ce31b3c
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce31c50:
    #data LAB_ce31b72
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce31c60:
    #data LAB_ce303d4
PTR_ce31c64:
    #data LAB_ce305ea
PTR_ce31c68:
    #data LAB_ce30500
PTR_ce31c6c:
    #data LAB_ce303d4
PTR_ce31c70:
    #data LAB_ce306a4
PTR_ce31c74:
    #data LAB_ce30622
PTR_ce31c78:
    #data LAB_ce3068c
PTR_ce31c7c:
    #data LAB_ce306a4
PTR_ce31c80:
    #data LAB_ce307a8
PTR_ce31c84:
    #data LAB_ce30884
PTR_ce31c88:
    #data LAB_ce308a6
PTR_ce31c8c:
    #data LAB_ce308c8
PTR_ce31c90:
    #data FUN_ce308e6
PTR_ce31c94:
    #data LAB_ce3093a
PTR_ce31c98:
    #data LAB_ce30940
PTR_ce31c9c:
    #data LAB_ce30954
PTR_ce31ca0:
    #data LAB_ce30a7c
PTR_ce31ca4:
    #data LAB_ce30954
PTR_ce31ca8:
    #data LAB_ce30a7c
PTR_ce31cac:
    #data LAB_ce30a7c
PTR_ce31cb0:
    #data LAB_ce30966
PTR_ce31cb4:
    #data LAB_ce309b0
PTR_ce31cb8:
    #data LAB_ce309ee
PTR_ce31cbc:
    #data LAB_ce30a2e
PTR_ce31cc0:
    #data LAB_ce30aa8
PTR_ce31cc4:
    #data LAB_ce30c4a
PTR_ce31cc8:
    #data LAB_ce30dac
PTR_ce31ccc:
    #data LAB_ce31050
PTR_ce31cd0:
    #data LAB_ce31292
PTR_ce31cd4:
    #data LAB_ce31382
PTR_ce31cd8:
    #data LAB_ce31688
PTR_ce31cdc:
    #data LAB_ce30aba
PTR_ce31ce0:
    #data LAB_ce30b3e
PTR_ce31ce4:
    #data LAB_ce30bec
PTR_ce31ce8:
    #data LAB_ce30c5c
PTR_ce31cec:
    #data LAB_ce30ce0
PTR_ce31cf0:
    #data LAB_ce30d68
PTR_ce31cf4:
    #data LAB_ce30dbe
PTR_ce31cf8:
    #data LAB_ce30e4a
PTR_ce31cfc:
    #data LAB_ce30efc
PTR_ce31d00:
    #data LAB_ce30f6a
PTR_ce31d04:
    #data LAB_ce30fd8
PTR_ce31d08:
    #data LAB_ce31066
PTR_ce31d0c:
    #data LAB_ce31108
PTR_ce31d10:
    #data LAB_ce3117c
PTR_ce31d14:
    #data LAB_ce311c2
PTR_ce31d18:
    #data LAB_ce31210
PTR_ce31d1c:
    #data FUN_ce31270
PTR_ce31d20:
    #data LAB_ce312e4
PTR_ce31d24:
    #data LAB_ce31332
PTR_ce31d28:
    #data LAB_ce313bc
PTR_ce31d2c:
    #data LAB_ce3142e
PTR_ce31d30:
    #data LAB_ce31496
PTR_ce31d34:
    #data LAB_ce315f8
PTR_ce31d38:
    #data LAB_ce3169a
PTR_ce31d3c:
    #data LAB_ce31712
PTR_ce31d40:
    #data LAB_ce3177c
PTR_ce31d44:
    #data LAB_ce31810
PTR_ce31d48:
    #data LAB_ce318dc
PTR_ce31d4c:
    #data LAB_ce31942
PTR_ce31d50:
    #data LAB_ce319f8
PTR_ce31d54:
    #data FUN_ce31a60
