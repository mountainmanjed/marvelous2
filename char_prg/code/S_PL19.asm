;╔══════════════════════════════════════════╗
;║ S_PL19 : Abyss [2nd Form] Program        ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c034f54 0x8C034F54
#symbol loc_8c035162 0x8C035162
#symbol loc_8c0353ee 0x8C0353EE
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c042008 0x8C042008
#symbol loc_8c046c8a 0x8C046C8A
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
#symbol loc_8c087f74 0x8C087F74
#symbol loc_8c088630 0x8C088630
#symbol loc_8c088874 0x8C088874
#symbol loc_8c088aec 0x8C088AEC
#symbol loc_8c0d7390 0x8C0D7390
#symbol loc_8c0d7a50 0x8C0D7A50
#symbol loc_8c11e860 0x8C11E860
#symbol loc_8c2659dc 0x8C2659DC
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c289636 0x8C289636
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300ea,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300f4,pc),r7
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
    mov.l @(PTR_ce300f8,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30088
    mov.l @(PTR_ce300fc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30088
    mov.l @(PTR_ce30100,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30088
    mov.l @(PTR_ce30104,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30088
    bsr FUN_ce3008e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30088
    bsr FUN_ce300cc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30088
    bsr FUN_ce30148
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30088
    bsr FUN_ce3018e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30088
    mov.l @(PTR_ce30108,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3010c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30088:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3008e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30110,pc),r5
    mov.w @(DAT_ce300ec,pc),r6
    mov.l @(PTR_ce30114,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce300ac:
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce300ee,pc),r0
    mov.l @(PTR_ce30118,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce300cc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3011c,pc),r5
    mov.w @(DAT_ce300f0,pc),r6
    mov.l @(PTR_ce30114,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30120
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300ea:
    #data 0x0428
DAT_ce300ec:
    #data 0x0364
DAT_ce300ee:
    #data 0x01e9
DAT_ce300f0:
    #data 0x036c
#align4
    
PTR_ce300f4:
    #data PTR_ce31760
PTR_ce300f8:
    #data loc_8c054508
PTR_ce300fc:
    #data loc_8c054b34
PTR_ce30100:
    #data loc_8c05496c
PTR_ce30104:
    #data loc_8c054d04
PTR_ce30108:
    #data loc_8c053e00
PTR_ce3010c:
    #data loc_8c0542e0
PTR_ce30110:
    #data DAT_ce31720
PTR_ce30114:
    #data loc_8c054e58
PTR_ce30118:
    #data loc_8c0530d8
PTR_ce3011c:
    #data DAT_ce31730

;=============================================

LAB_ce30120:
    mov.w @(DAT_ce30216,pc),r5
    mov.l @(PTR_ce30224,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30218,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30228,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30148:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3022c,pc),r5
    mov.w @(DAT_ce3021a,pc),r6
    mov.l @(PTR_ce30230,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30166
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30166:
    mov.w @(DAT_ce3021a,pc),r5
    mov.l @(PTR_ce30224,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30218,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30228,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3018e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30234,pc),r5
    mov.w @(DAT_ce3021c,pc),r6
    mov.l @(PTR_ce30230,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301ac
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301ac:
    mov.w @(DAT_ce3021c,pc),r5
    mov.l @(PTR_ce30224,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30218,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30228,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce301d4:
    rts
    mov 0x00,r0

LAB_ce301d8:
    mov.w @(DAT_ce3021e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30220,pc),r5
    mov.l r13,@-r15
    add r14,r5
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov 0x04,r12
    mov.l @(PTR_ce30238,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r4
    mov.b @r5,r0
    mov r4,r3
    shll r4
    add r3,r4
    mov.w @(DAT_ce30222,pc),r6
    shll2 r4
    mov.l @(DAT_ce3023c,pc),r11
    extu.b r0,r0
    shll2 r4
    cmp/eq 0x00,r0
    add r2,r4
    bt/s LAB_ce30240
    mov 0x01,r13
    cmp/eq 0x01,r0
    bt LAB_ce30278
    cmp/eq 0x02,r0
    bt LAB_ce302cc
    bra LAB_ce30318
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30216:
    #data 0x036c
DAT_ce30218:
    #data 0x01e9
DAT_ce3021a:
    #data 0x0374
DAT_ce3021c:
    #data 0x037c
DAT_ce3021e:
    #data 0x012e
DAT_ce30220:
    #data 0x02a4
DAT_ce30222:
    #data 0x1000
#align4
    
PTR_ce30224:
    #data loc_8c055c3a
PTR_ce30228:
    #data loc_8c0530d8
PTR_ce3022c:
    #data DAT_ce31740
PTR_ce30230:
    #data loc_8c054e58
PTR_ce30234:
    #data DAT_ce31750
PTR_ce30238:
    #data loc_8c2659dc
DAT_ce3023c:
    #data 0x0000f000

;=============================================

LAB_ce30240:
    mov 0x24,r0
    mov.l @(DAT_ce30378,pc),r7
    mov.b @r5,r3
    add 0x01,r3
    mov.b r3,@r5
    mov.l r13,@(0x8,r4)
    mov.w @(r0,r4),r1
    or r7,r1
    mov.w r1,@(r0,r4)
    mov 0x26,r0
    mov.w @(r0,r4),r3
    or r7,r3
    mov.w r3,@(r0,r4)
    mov 0x28,r0
    mov.w @(r0,r4),r1
    or r7,r1
    mov.w r1,@(r0,r4)
    mov 0x2A,r0
    mov.w @(r0,r4),r3
    or r7,r3
    mov.w r3,@(r0,r4)
    mov 0x2C,r0
    mov.w @(r0,r4),r1
    or r7,r1
    mov.w r1,@(r0,r4)
    mov r12,r0
    nop
    mov.b r0,@(0x1,r5)

LAB_ce30278:
    mov.b @(0x1,r5),r0
    add 0xFF,r0
    mov.b r0,@(0x1,r5)
    add 0x01,r0
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30318
    mov r12,r0
    nop
    mov.b r0,@(0x1,r5)
    mov 0x24,r0
    mov.l r13,@(0x8,r4)
    mov.w @(r0,r4),r3
    sub r6,r3
    mov.w r3,@(r0,r4)
    mov 0x26,r0
    mov.w @(r0,r4),r2
    sub r6,r2
    mov.w r2,@(r0,r4)
    mov 0x28,r0
    mov.w @(r0,r4),r3
    sub r6,r3
    mov.w r3,@(r0,r4)
    mov 0x2A,r0
    mov.w @(r0,r4),r2
    sub r6,r2
    mov.w r2,@(r0,r4)
    mov 0x2C,r0
    mov.w @(r0,r4),r3
    sub r6,r3
    mov.w r3,@(r0,r4)
    mov 0x24,r0
    mov.w @(r0,r4),r2
    mov.w @(DAT_ce3036c,pc),r3
    extu.w r2,r2
    and r11,r2
    cmp/eq r3,r2
    bf LAB_ce30318
    mov.b @r5,r1
    add 0x01,r1
    bra LAB_ce30318
    mov.b r1,@r5

LAB_ce302cc:
    mov.b @(0x1,r5),r0
    add 0xFF,r0
    mov.b r0,@(0x1,r5)
    add 0x01,r0
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30318
    mov r12,r0
    nop
    mov.b r0,@(0x1,r5)
    mov 0x24,r0
    mov.l r13,@(0x8,r4)
    mov.w @(r0,r4),r3
    add r6,r3
    mov.w r3,@(r0,r4)
    mov 0x26,r0
    mov.w @(r0,r4),r1
    add r6,r1
    mov.w r1,@(r0,r4)
    mov 0x28,r0
    mov.w @(r0,r4),r3
    add r6,r3
    mov.w r3,@(r0,r4)
    mov 0x2A,r0
    mov.w @(r0,r4),r1
    add r6,r1
    mov.w r1,@(r0,r4)
    mov 0x2C,r0
    mov.w @(r0,r4),r3
    add r6,r3
    mov.w r3,@(r0,r4)
    mov 0x24,r0
    mov.w @(r0,r4),r1
    extu.w r1,r1
    and r11,r1
    cmp/eq r11,r1
    bf LAB_ce30318
    mov.b r13,@r5

LAB_ce30318:
    mov.l @(PTR_ce3037c,pc),r3
    mov 0x05,r1
    mov.l @r3,r4
    mov.b @r4,r2
    extu.b r2,r2
    cmp/ge r1,r2
    bf LAB_ce30354
    mov 0x3E,r0
    mov.b @(r0,r4),r0
    cmp/pz r0
    bf LAB_ce3033a
    mov 0x3E,r0
    mov.b @(r0,r4),r2
    mov.b @(0x2,r14),r0
    extu.b r0,r0
    cmp/eq r0,r2
    bt LAB_ce30354

LAB_ce3033a:
    mov.b @(0x5,r14),r0
    tst r0,r0
    bf LAB_ce30354
    mov.w @(DAT_ce3036e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30354
    mov.l @(PTR_ce30380,pc),r2
    mov 0x15,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30370,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce30354:
    mov.w @(DAT_ce30372,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30360
    mov.w @(DAT_ce30374,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce30360:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3036c:
    #data 0x7000
DAT_ce3036e:
    #data 0x01d0
DAT_ce30370:
    #data 0x01e9
DAT_ce30372:
    #data 0x0420
DAT_ce30374:
    #data 0x01f5
#align4
    
DAT_ce30378:
    #data 0x0000c000
PTR_ce3037c:
    #data loc_8c2896b0
PTR_ce30380:
    #data loc_8c0532a8

;=============================================

LAB_ce30384:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce303bc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce303ba,pc),r0
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
    bt LAB_ce30466
    shll r0
    mov r0,r1
    mova @(DAT_ce303c0,pc),r0
    mov.w @(r0,r1),r0

LAB_ce303b6:
    braf r0
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce303ba:
    #data 0x01e8
#align4
    
PTR_ce303bc:
    #data loc_8c052b4c
DAT_ce303c0:
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

LAB_ce303d8:
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r11,@(r0,r14)
    add 0xFF,r0
    mov.b r5,@(r0,r14)
    bra LAB_ce30466
    mov 0x06,r4

LAB_ce303e4:
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r11,@(r0,r14)
    add 0xFF,r0
    mov.b r6,@(r0,r14)
    bra LAB_ce30466
    mov r13,r4

LAB_ce303f0:
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r11,@(r0,r14)
    add 0xFF,r0
    mov.b r7,@(r0,r14)
    bra LAB_ce30466
    mov r12,r4

LAB_ce303fc:
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r5,@(r0,r14)
    bra LAB_ce30466
    mov r11,r4

LAB_ce30408:
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r6,@(r0,r14)
    bra LAB_ce30466
    mov r2,r4

LAB_ce30414:
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r7,@(r0,r14)
    bra LAB_ce30466
    mov 0x0B,r4

LAB_ce30420:
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r5,@(r0,r14)
    bra LAB_ce30466
    mov r5,r4

LAB_ce3042c:
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r6,@(r0,r14)
    bra LAB_ce30466
    mov r6,r4

LAB_ce30438:
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r7,@(r0,r14)
    bra LAB_ce30466
    mov r7,r4

LAB_ce30444:
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r5,@(r0,r14)
    bra LAB_ce30466
    mov 0x03,r4

LAB_ce30450:
    mov.w @(DAT_ce304a0,pc),r0
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r6,@(r0,r14)
    bra LAB_ce30466
    mov 0x04,r4

LAB_ce3045c:
    mov.w @(DAT_ce304a0,pc),r0
    mov 0x05,r4
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r7,@(r0,r14)

LAB_ce30466:
    mov.w @(DAT_ce304a2,pc),r0
    mov.l @(PTR_ce304a8,pc),r3
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
    mov.w @(DAT_ce304a4,pc),r0
    mov.l @(PTR_ce304ac,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @r15+,r12
    mov.b @(r0,r14),r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce304a0:
    #data 0x0159
DAT_ce304a2:
    #data 0x01a1
DAT_ce304a4:
    #data 0x0158
#align4
    
PTR_ce304a8:
    #data loc_8c2896b0
PTR_ce304ac:
    #data loc_8c034e8c

;=============================================

LAB_ce304b0:
    mov.w @(DAT_ce304d6,pc),r0
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
    bt LAB_ce3053a
    shll r0
    mov r0,r1
    mova @(DAT_ce304d8,pc),r0
    mov.w @(r0,r1),r0

LAB_ce304d2:
    braf r0
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce304d6:
    #data 0x01e8
DAT_ce304d8:
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

LAB_ce304f0:
    mov.w @(DAT_ce305f8,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r5,@(r0,r14)
    bra LAB_ce3053a
    mov r6,r4

LAB_ce304fc:
    mov.w @(DAT_ce305f8,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r7,@(r0,r14)
    bra LAB_ce3053a
    mov 0x0D,r4

LAB_ce30508:
    mov.w @(DAT_ce305f8,pc),r0
    mov 0x02,r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce3053a
    mov 0x0E,r4

LAB_ce30516:
    mov.w @(DAT_ce305f8,pc),r0
    mov.b r6,@(r0,r14)
    add 0xFF,r0
    mov.b r5,@(r0,r14)
    bra LAB_ce3053a
    mov 0x0F,r4

LAB_ce30522:
    mov.w @(DAT_ce305f8,pc),r0
    mov.b r6,@(r0,r14)
    add 0xFF,r0
    mov.b r7,@(r0,r14)
    bra LAB_ce3053a
    mov 0x10,r4

LAB_ce3052e:
    mov.w @(DAT_ce305f8,pc),r0
    mov 0x02,r3
    mov 0x11,r4
    mov.b r6,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)

LAB_ce3053a:
    mov.w @(DAT_ce305fa,pc),r0
    mov.l @(PTR_ce30604,pc),r3
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
    mov.w @(DAT_ce305fc,pc),r0
    mov.l @(PTR_ce30608,pc),r2
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce305fe,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30584
    mov.w @(DAT_ce30600,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30594
    mov.w @(DAT_ce30600,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    bra LAB_ce30594
    mov.b r2,@(r0,r14)

LAB_ce30584:
    mov.w @(DAT_ce30600,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30594
    mov.w @(DAT_ce30600,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30594:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3059a:
    mov.w @(DAT_ce305fe,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce305ae
    mov.w @(DAT_ce30600,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce305b6
    bra LAB_ce305ba
    nop

LAB_ce305ae:
    mov.w @(DAT_ce30600,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce305ba

LAB_ce305b6:
    bra LAB_ce304b0
    nop

LAB_ce305ba:
    rts
    nop

LAB_ce305be:
    mov.w @(DAT_ce30602,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce3060c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce305d2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30610,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30614,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30618,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30620
    lds.l @r15+,PR
    mov.l @(PTR_ce3061c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305f8:
    #data 0x0159
DAT_ce305fa:
    #data 0x01a1
DAT_ce305fc:
    #data 0x0158
DAT_ce305fe:
    #data 0x01fe
DAT_ce30600:
    #data 0x01d6
DAT_ce30602:
    #data 0x01ff
#align4
    
PTR_ce30604:
    #data loc_8c2896b0
PTR_ce30608:
    #data loc_8c034e8c
PTR_ce3060c:
    #data PTR_ce317d0
PTR_ce30610:
    #data loc_8c04fea8
PTR_ce30614:
    #data loc_8c050048
PTR_ce30618:
    #data loc_8c034dee
PTR_ce3061c:
    #data loc_8c05176e

;=============================================

LAB_ce30620:
    mov.l @(PTR_ce3077c,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30636
    lds.l @r15+,PR
    mov.l @(PTR_ce30780,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30636:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3063c:
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
    bra LAB_ce305d2
    mov.l @r15+,r14

LAB_ce30654:
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
    bt LAB_ce306ae
    lds.l @r15+,PR
    mov.l @(PTR_ce30794,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce306ae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce306b4:
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

LAB_ce306c8:
    mov.l @(PTR_ce30794,pc),r3
    jmp @r3
    nop

LAB_ce306ce:
    mov.l @(PTR_ce30794,pc),r3
    jmp @r3
    nop
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30790,pc),r3
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
    mov.w @(DAT_ce30778,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30726
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce30726:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3072c:
    mov r4,r3
    mov.l @(PTR_ce3079c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3073e:
    mov.l @(PTR_ce307a0,pc),r1
    mov 0x00,r3
    mov.w @(DAT_ce3077a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x02,r3
    mov.b @r1,r2
    extu.b r2,r2
    cmp/ge r3,r2
    bf LAB_ce307ac
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3077a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce307a4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce307a8,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x12,r5
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30776:
    #data 0x01ff
DAT_ce30778:
    #data 0x0141
DAT_ce3077a:
    #data 0x012c
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
    #data PTR_ce317e0
PTR_ce3079c:
    #data PTR_ce317f0
PTR_ce307a0:
    #data loc_8c2895f0
PTR_ce307a4:
    #data loc_8c05218a
PTR_ce307a8:
    #data loc_8c034e8c

;=============================================

LAB_ce307ac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce307b2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce308ac,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce307ca
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce307ca:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce307d2:
    mov r4,r3
    mov.l @(PTR_ce308b0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce307e4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce307fc
    bsr FUN_ce30abc
    mov r14,r4

LAB_ce307fc:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30802:
    mov 0x20,r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce308b4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30816:
    mov r4,r3
    mov.l @(PTR_ce308b8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30828:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x01,r5
    mov.l @(PTR_ce308bc,pc),r3
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
    mov.w @(DAT_ce308a6,pc),r0
    mov r3,r2
    mov 0x13,r5
    mov r2,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce308a8,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFD,r0
    mov.l @(PTR_ce308c0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30872:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce308c4,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce3088a
    lds.l @r15+,PR
    mov.l @(PTR_ce308c8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3088a:
    lds.l @r15+,PR
    mov.l @(PTR_ce308ac,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30894:
    mov r4,r3
    mov.l @(PTR_ce308cc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308a6:
    #data 0x041c
DAT_ce308a8:
    #data 0x01fc
#align4
    
PTR_ce308ac:
    #data loc_8c034dee
PTR_ce308b0:
    #data PTR_ce317f8
PTR_ce308b4:
    #data PTR_ce31800
PTR_ce308b8:
    #data PTR_ce3182c
PTR_ce308bc:
    #data loc_8c035162
PTR_ce308c0:
    #data loc_8c034e8c
PTR_ce308c4:
    #data loc_8c046c8a
PTR_ce308c8:
    #data loc_8c051648
PTR_ce308cc:
    #data PTR_ce31834

;=============================================

LAB_ce308d0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce30a1c,pc),r3
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
    mov.w @(DAT_ce30a14,pc),r0
    mov 0x13,r5
    mov.l @(PTR_ce30a20,pc),r3
    mov 0x01,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30a16,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30918:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30a24,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30948
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r3,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30a18,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x0A,r0
    mov.l @(PTR_ce30a28,pc),r3
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3094e
    mov.l @r15+,r14

LAB_ce30948:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3094e:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce30964
    mov.b @(0x7,r4),r0
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov 0x1E,r0
    mov.w r0,@(0x1e,r4)

LAB_ce30964:
    rts
    nop

LAB_ce30968:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce30998
    mov.b @(0x7,r14),r0
    mov 0x0E,r5
    mov.l @(PTR_ce30a2c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30a2c,pc),r2
    mov 0x0F,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30998:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3099e:
    mov.w @(0x1e,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r4)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce309d4
    mov.b @(0x7,r4),r0
    mov 0x01,r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce30a18,pc),r0
    mov.b r3,@(r0,r4)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r4)
    mov 0x00,r0
    mov.w r0,@(0x1e,r4)
    mov 0x38,r0
    fmov.s @(r0,r4),fr3
    mov 0x60,r0
    mov.l @(PTR_ce30a20,pc),r3
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce30a1a,pc),r0
    fldi0 fr3
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce309d4:
    rts
    nop

LAB_ce309d8:
    mov.l @(DAT_ce30a30,pc),r2
    mov.w @(DAT_ce30a1a,pc),r1
    lds r2,FPUL
    add r4,r1
    mov.l r8,@-r15
    mov.w @(0x1c,r4),r0
    fsts FPUL,fr2
    mov r0,r3
    lds r3,FPUL
    fmov.s @r1,fr3
    mov.w @(DAT_ce30a1a,pc),r8
    fneg fr3
    float FPUL,fr1
    fadd fr2,fr3
    add r4,r8
    fdiv fr1,fr3
    fmov.s @r8,fr1
    fadd fr3,fr1
    fmov.s fr1,@r8
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce30a10
    mov.b @(0x7,r4),r0
    add 0x01,r0
    mov.b r0,@(0x7,r4)

LAB_ce30a10:
    bra LAB_ce30a42
    mov.l @r15+,r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a14:
    #data 0x041c
DAT_ce30a16:
    #data 0x01fc
DAT_ce30a18:
    #data 0x012c
DAT_ce30a1a:
    #data 0x0108
#align4
    
PTR_ce30a1c:
    #data loc_8c035162
PTR_ce30a20:
    #data loc_8c034e8c
PTR_ce30a24:
    #data loc_8c034dee
PTR_ce30a28:
    #data loc_8c0d7a50
PTR_ce30a2c:
    #data loc_8c0d7390
DAT_ce30a30:
    #data 0x3f400000

;=============================================

LAB_ce30a34:
    sts.l PR,@-r15
    mov.l @(PTR_ce30b24,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30a42:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x60,r0
    mov r4,r14
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce30b2c,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30b28,pc),r0
    fmov.s @r0,fr15
    mov.w @(0x1e,r14),r0
    neg r0,r0
    add 0x48,r0
    and 0x3F,r0
    shll8 r0
    shll2 r0
    mov.w r0,@r15
    jsr @r3
    mov.w @r15,r4
    fmul fr0,fr15
    mova @(DAT_ce30b30,pc),r0
    fmov.s @r0,fr0
    mova @(DAT_ce30b34,pc),r0
    fmul fr0,fr15
    fmov.s @r0,fr0
    mova @(DAT_ce30b38,pc),r0
    fdiv fr0,fr15
    fmov.s @r0,fr0
    mova @(DAT_ce30b3c,pc),r0
    fdiv fr0,fr15
    fmov.s @r0,fr0
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    fmac fr0,fr15,fr3
    fmov fr3,@(r0,r14)
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1e,r14),r0
    and 0x3F,r0
    mov.w r0,@(0x1e,r14)
    add 0x04,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce30aa2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30b40,pc),r3
    jsr @r3
    mov 0x15,r5
    mov.w @(DAT_ce30b1a,pc),r0
    mov 0x04,r2
    mov r14,r4
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce30b86
    mov.l @r15+,r14

;=============================================

FUN_ce30abc:
    mov.w @(DAT_ce30b1c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30b1e,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce30b44
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce30b20,pc),r1
    extu.w r3,r3
    tst r1,r3
    bt LAB_ce30adc
    bra LAB_ce30b52
    mov 0x05,r3

LAB_ce30adc:
    mov.w @(DAT_ce30b22,pc),r2
    tst r2,r3
    bt LAB_ce30ae6
    bra LAB_ce30b52
    mov 0x06,r3

LAB_ce30ae6:
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x80,r0
    bt LAB_ce30af2
    bra LAB_ce30b0c
    mov 0x07,r1

LAB_ce30af2:
    mov.w @(DAT_ce30b1c,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x40,r0
    bt LAB_ce30b00
    bra LAB_ce30b0c
    mov 0x08,r1

LAB_ce30b00:
    mov.w @(DAT_ce30b1c,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x20,r0
    bt LAB_ce30b12
    mov 0x09,r1

LAB_ce30b0c:
    mov 0x20,r0
    bra LAB_ce30b56
    mov.b r1,@(r0,r14)

LAB_ce30b12:
    mov 0x20,r0
    mov 0x0A,r3
    bra LAB_ce30b56
    mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b1a:
    #data 0x01e9
DAT_ce30b1c:
    #data 0x0340
DAT_ce30b1e:
    #data 0x03f0
DAT_ce30b20:
    #data 0x0200
DAT_ce30b22:
    #data 0x0100
#align4
    
PTR_ce30b24:
    #data loc_8c034dee
DAT_ce30b28:
    #data 0x487a0000
PTR_ce30b2c:
    #data loc_8c11e860
DAT_ce30b30:
    #data 0x447a0000
DAT_ce30b34:
    #data 0x47f42400
DAT_ce30b38:
    #data 0x43800000
DAT_ce30b3c:
    #data 0x40092492
PTR_ce30b40:
    #data loc_8c0532a8

;=============================================

LAB_ce30b44:
    mov.l @(PTR_ce30c90,pc),r1
    jsr @r1
    nop
    mov.l @(PTR_ce30c94,pc),r1
    and 0x0F,r0
    shll r0
    mov.b @(r0,r1),r3

LAB_ce30b52:
    mov 0x20,r0
    mov.b r3,@(r0,r14)

LAB_ce30b56:
    mov.l @(PTR_ce30c98,pc),r3
    mov.b @r3,r2
    tst r2,r2
    bf LAB_ce30b80
    mov 0x20,r0
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x08,r0
    bt/s LAB_ce30b7a
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x09,r0
    bt LAB_ce30b7a
    mov r4,r0
    nop
    cmp/eq 0x0A,r0
    bf LAB_ce30b80

LAB_ce30b7a:
    mov 0x20,r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)

LAB_ce30b80:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30b86:
    mov.w @(DAT_ce30c7c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c9c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30b9a:
    mov r4,r3
    mov.l @(PTR_ce30ca0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30bac:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30ca4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30c7e,pc),r0
    mov.l r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30ca8,pc),r2
    mov r13,r5
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
    mov.w @(DAT_ce30c80,pc),r0
    fldi1 fr3
    fmov fr3,@(r0,r14)
    add 0x26,r0
    mov.w @(r0,r14),r5
    mov.l @(PTR_ce30cac,pc),r2
    mov r5,r3
    shll r5
    add r3,r5
    mov.w @(DAT_ce30c82,pc),r3
    shll2 r5
    mov.w @(DAT_ce30c84,pc),r6
    shll2 r5
    mov.l @(DAT_ce30cb0,pc),r7
    add r2,r5
    add r3,r5
    mov r5,r4
    mov 0x01,r2
    add 0x18,r4
    mov.l r2,@(0x8,r5)

LAB_ce30c08:
    mov.w @r4,r3
    mov r5,r2
    add 0x2E,r2
    and r6,r3
    or r7,r3
    mov.w r3,@r4
    add 0x02,r4
    cmp/hi r2,r4
    bf LAB_ce30c08
    mov.w @(DAT_ce30c86,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce30cb4,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30c88,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30cb8,pc),r2
    mov 0x03,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30cbc,pc),r3
    mov 0x0A,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30cc0,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce30c52:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30cc4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c68
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce30c68:
    mov.w @(DAT_ce30c8a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30c76
    mov.w @(DAT_ce30c8c,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30c76:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c7c:
    #data 0x01e9
DAT_ce30c7e:
    #data 0x02e4
DAT_ce30c80:
    #data 0x0108
DAT_ce30c82:
    #data 0x0090
DAT_ce30c84:
    #data 0x0fff
DAT_ce30c86:
    #data 0x041c
DAT_ce30c88:
    #data 0x01fc
DAT_ce30c8a:
    #data 0x0141
DAT_ce30c8c:
    #data 0x01f5
#align4
    
PTR_ce30c90:
    #data loc_8c03319e
PTR_ce30c94:
    #data DAT_ce31850
PTR_ce30c98:
    #data loc_8c289636
PTR_ce30c9c:
    #data PTR_ce31870
PTR_ce30ca0:
    #data PTR_ce31884
PTR_ce30ca4:
    #data loc_8c05218a
PTR_ce30ca8:
    #data loc_8c035162
PTR_ce30cac:
    #data loc_8c2659dc
DAT_ce30cb0:
    #data 0x00008000
PTR_ce30cb4:
    #data loc_8c056de4
PTR_ce30cb8:
    #data loc_8c034e8c
PTR_ce30cbc:
    #data loc_8c042008
PTR_ce30cc0:
    #data loc_8c05115a
PTR_ce30cc4:
    #data loc_8c034dee

;=============================================

LAB_ce30cc8:
    mov.w @(DAT_ce30ddc,pc),r0
    mov 0x01,r2
    mov.l @(DAT_ce30de4,pc),r1
    mov.b r2,@(r0,r4)
    lds r1,FPUL
    mov.w @(DAT_ce30dde,pc),r0
    fldi0 fr1
    fmov.s @(r0,r4),fr2
    fsts FPUL,fr3
    fsub fr3,fr2
    fcmp/gt fr1,fr2
    bt/s LAB_ce30cf8
    fmov fr2,@(r0,r4)
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    fldi1 fr2
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce30de0,pc),r0
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    fmov fr2,@(r0,r4)
    mov 0x14,r0
    mov.w r0,@(0x1c,r4)

LAB_ce30cf8:
    rts
    nop

LAB_ce30cfc:
    mov.w @(DAT_ce30ddc,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce30d20
    mov.b @(0x6,r4),r0
    mov 0x00,r6
    mov.l @(PTR_ce30de8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x14,r0
    mov.w r0,@(0x1c,r4)
    jmp @r3
    mov r6,r5

LAB_ce30d20:
    rts
    nop

LAB_ce30d24:
    mov.w @(DAT_ce30ddc,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce30d48
    mov.b @(0x6,r4),r0
    mov 0x01,r6
    mov.l @(PTR_ce30de8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x14,r0
    mov.w r0,@(0x1c,r4)
    jmp @r3
    mov 0x00,r5

LAB_ce30d48:
    rts
    nop

LAB_ce30d4c:
    mov.w @(DAT_ce30ddc,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce30d70
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce30de8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x14,r0
    mov.w r0,@(0x1c,r4)
    jmp @r3
    mov 0x00,r5

LAB_ce30d70:
    rts
    nop

LAB_ce30d74:
    mov.w @(DAT_ce30ddc,pc),r0
    mov 0x01,r5
    mov.b r5,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce30d98
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce30dec,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce30de0,pc),r0
    mov.b r5,@(r0,r4)
    jmp @r3
    mov 0x03,r5

LAB_ce30d98:
    rts
    nop

LAB_ce30d9c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30df0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30db6
    lds.l @r15+,PR
    mov.l @(PTR_ce30df4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30db6:
    mov.w @(DAT_ce30de2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30dc4
    mov.w @(DAT_ce30ddc,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30dc4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30dca:
    mov r4,r3
    mov.l @(PTR_ce30df8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ddc:
    #data 0x01f5
DAT_ce30dde:
    #data 0x0108
DAT_ce30de0:
    #data 0x012c
DAT_ce30de2:
    #data 0x0141
#align4
    
DAT_ce30de4:
    #data 0x3ccccccd
PTR_ce30de8:
    #data loc_8c087f74
PTR_ce30dec:
    #data loc_8c034e8c
PTR_ce30df0:
    #data loc_8c034dee
PTR_ce30df4:
    #data loc_8c051648
PTR_ce30df8:
    #data PTR_ce318a4

;=============================================

LAB_ce30dfc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30f3c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30f40,pc),r2
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
    mov 0x00,r4
    mov.w @(DAT_ce30f32,pc),r0
    mov 0x31,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30f34,pc),r0
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
    mov.l @(PTR_ce30f44,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    mov 0x15,r5
    mov 0x03,r6
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30f48,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30f4c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30e74:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce30f50,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30eaa
    mov.b @(0x6,r14),r0
    mov r15,r5
    mov.l @(PTR_ce30f5c,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce30f54,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce30f58,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce30eaa:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30eb2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce30f48,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30ece:
    mov.w @(DAT_ce30f36,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30f50,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30f38,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30f2a
    mov.b @(0x6,r14),r0
    mov 0x07,r5
    mov.l @(PTR_ce30f60,pc),r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.w r0,@(0x1c,r14)
    mov 0x01,r0
    mov.w r0,@(0x1e,r14)
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
    mov 0x22,r0
    mov 0x32,r3
    mov.b r3,@(r0,r14)

LAB_ce30f2a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f32:
    #data 0x041c
DAT_ce30f34:
    #data 0x01fc
DAT_ce30f36:
    #data 0x0328
DAT_ce30f38:
    #data 0x0141
#align4
    
PTR_ce30f3c:
    #data loc_8c05218a
PTR_ce30f40:
    #data loc_8c035162
PTR_ce30f44:
    #data loc_8c2896b0
PTR_ce30f48:
    #data loc_8c034e8c
PTR_ce30f4c:
    #data loc_8c05115a
PTR_ce30f50:
    #data loc_8c034dee
DAT_ce30f54:
    #data 0x40d55555
DAT_ce30f58:
    #data 0x436ddb6d
PTR_ce30f5c:
    #data loc_8c050834
PTR_ce30f60:
    #data loc_8c0d7390

;=============================================

LAB_ce30f64:
    mov.w @(DAT_ce31040,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31044,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x22,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30f92
    mov.b @(r0,r14),r3
    add 0xFF,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce30f92
    mov.l @(PTR_ce31048,pc),r3
    mov 0x0A,r5
    jsr @r3
    mov r14,r4

LAB_ce30f92:
    bsr FUN_ce3105c
    mov r14,r4
    cmp/pz r0
    bt LAB_ce30fae
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce3104c,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31042,pc),r0
    mov.b @(r0,r14),r7
    jsr @r3
    mov r14,r4

LAB_ce30fae:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30fc8
    mov.l @(PTR_ce31050,pc),r2
    mov 0x05,r5
    mov 0x01,r7
    mov 0x00,r6
    jsr @r2
    mov r14,r4

LAB_ce30fc8:
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    cmp/eq 0x04,r0
    bf LAB_ce30fe4
    mov 0x05,r6
    mov.l @(PTR_ce31054,pc),r3
    mov 0x00,r0
    mov r14,r4
    mov.b r0,@(0x7,r14)
    mov 0x01,r7
    lds.l @r15+,PR
    mov r6,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce30fe4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fea:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31044,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31004
    lds.l @r15+,PR
    mov.l @(PTR_ce31058,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31004:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3101e
    mov.l @(PTR_ce31050,pc),r2
    mov 0x05,r5
    mov 0x01,r7
    mov 0x00,r6
    jsr @r2
    mov r14,r4

LAB_ce3101e:
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    cmp/eq 0x04,r0
    bf LAB_ce3103a
    mov 0x05,r6
    mov.l @(PTR_ce31054,pc),r3
    mov 0x00,r0
    mov r14,r4
    mov.b r0,@(0x7,r14)
    mov 0x01,r7
    lds.l @r15+,PR
    mov r6,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3103a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31040:
    #data 0x0328
DAT_ce31042:
    #data 0x0140
#align4
    
PTR_ce31044:
    #data loc_8c034dee
PTR_ce31048:
    #data loc_8c042008
PTR_ce3104c:
    #data loc_8c034f54
PTR_ce31050:
    #data loc_8c03544c
PTR_ce31054:
    #data loc_8c0353ee
PTR_ce31058:
    #data loc_8c051648

;=============================================

FUN_ce3105c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf/s LAB_ce310a4
    mov 0x00,r13
    mov.l @(PTR_ce31174,pc),r12
    mov.l @(PTR_ce31170,pc),r11

LAB_ce3107a:
    mov.w @(0x1c,r14),r0
    shll r0
    mov.b @(r0,r12),r13
    exts.b r13,r0
    cmp/eq 0xFF,r0
    bt LAB_ce310a4
    mov 0x00,r5
    mov r13,r6
    jsr @r11
    mov r14,r4
    mov.w @(0x1c,r14),r0
    shll r0
    add r12,r0
    mov.b @(0x1,r0),r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce3107a

LAB_ce310a4:
    lds.l @r15+,PR
    exts.b r13,r0
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce310b2:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31178,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce3115e,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce310c8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce3117c,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31180,pc),r2
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
    mov.w @(DAT_ce31160,pc),r0
    mov.l @(PTR_ce31184,pc),r2
    mov.w @(r0,r14),r5
    mov.w @(DAT_ce31164,pc),r6
    mov r5,r3
    shll r5
    add r3,r5
    mov.w @(DAT_ce31162,pc),r3
    shll2 r5
    mov.l @(DAT_ce31188,pc),r7
    shll2 r5
    add r2,r5
    add r3,r5
    mov r5,r4
    mov 0x01,r2
    add 0x2A,r4
    mov.l r2,@(0x8,r5)

LAB_ce3111c:
    mov.w @r4,r3
    mov r5,r2
    add 0x2E,r2
    and r6,r3
    or r7,r3
    mov.w r3,@r4
    add 0x02,r4
    cmp/hi r2,r4
    bf LAB_ce3111c
    mov.w @(DAT_ce31166,pc),r0
    mov 0x00,r13
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31168,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3116a,pc),r0
    mov.l @r15,r3
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3114e
    bra LAB_ce31150
    mov 0x0C,r0

LAB_ce3114e:
    mov 0x18,r0

LAB_ce31150:
    mov.b r0,@(0x2,r3)
    mov.w @(DAT_ce3116c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3118c
    bra LAB_ce3118e
    mov 0x3C,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3115e:
    #data 0x02a4
DAT_ce31160:
    #data 0x012e
DAT_ce31162:
    #data 0x00f0
DAT_ce31164:
    #data 0x0fff
DAT_ce31166:
    #data 0x041c
DAT_ce31168:
    #data 0x01fc
DAT_ce3116a:
    #data 0x0525
DAT_ce3116c:
    #data 0x01a3
#align4
    
PTR_ce31170:
    #data loc_8c088874
PTR_ce31174:
    #data DAT_ce318bc
PTR_ce31178:
    #data PTR_ce31960
PTR_ce3117c:
    #data loc_8c05218a
PTR_ce31180:
    #data loc_8c035162
PTR_ce31184:
    #data loc_8c2659dc
DAT_ce31188:
    #data 0x00008000

;=============================================

LAB_ce3118c:
    mov 0x5A,r0

LAB_ce3118e:
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31286,pc),r0
    mov.l @(PTR_ce3128c,pc),r3
    mov.b @(r0,r14),r5
    extu.b r5,r5
    add 0x05,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31286,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31290,pc),r3
    mov.b @(r0,r14),r2
    add 0xFE,r0
    add 0x33,r2
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
    mov.w @(DAT_ce31286,pc),r0
    mov.l @(PTR_ce31294,pc),r2
    mov.b @(r0,r14),r6
    add 0x06,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31298,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce311e6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3129c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31288,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31216
    mov.b @(0x6,r14),r0
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31286,pc),r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    cmp/ge r2,r3
    bf LAB_ce31216
    lds.l @r15+,PR
    mov.l @(PTR_ce312a0,pc),r1
    mov 0x03,r5
    mov r14,r4
    jmp @r1
    mov.l @r15+,r14

LAB_ce31216:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3121c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3129c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3128a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3124a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3128a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x62,r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r5
    mov.l @(PTR_ce312a0,pc),r3
    add 0x04,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3124a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31250:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3129c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3128a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31280
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov r3,r5
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce312a4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce312a0,pc),r2
    mov 0x06,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31280:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31286:
    #data 0x01a3
DAT_ce31288:
    #data 0x0140
DAT_ce3128a:
    #data 0x0141
#align4
    
PTR_ce3128c:
    #data loc_8c056de4
PTR_ce31290:
    #data loc_8c2896b0
PTR_ce31294:
    #data loc_8c034e8c
PTR_ce31298:
    #data loc_8c05115a
PTR_ce3129c:
    #data loc_8c034dee
PTR_ce312a0:
    #data loc_8c0d7390
PTR_ce312a4:
    #data loc_8c088aec

;=============================================

LAB_ce312a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3133c,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0x2,r2),r0
    cmp/pz r0
    bf LAB_ce312d8
    mov.l @(PTR_ce31340,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce312d8
    mov.l @r15,r2
    mov.b @(0x2,r2),r0
    add 0xFF,r0
    mov.b r0,@(0x2,r2)
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce312d8:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce312fe
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3133a,pc),r0
    mov.b @(r0,r14),r6
    add 0x08,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31344,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce312fe:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31306:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3133c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31320
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31348,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31320:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31328:
    mov r4,r3
    mov.l @(PTR_ce3134c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3133a:
    #data 0x01a3
#align4
    
PTR_ce3133c:
    #data loc_8c034dee
PTR_ce31340:
    #data loc_8c055d54
PTR_ce31344:
    #data loc_8c034e8c
PTR_ce31348:
    #data loc_8c051648
PTR_ce3134c:
    #data PTR_ce31978

;=============================================

LAB_ce31350:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce314a0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce314a4,pc),r2
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
    mov 0x00,r13
    mov.w @(DAT_ce31494,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce314a8,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31496,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFD,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31498,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce314ac,pc),r3
    mov.b @(r0,r14),r2
    add 0xFE,r0
    add 0x37,r2
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
    mov.w @(DAT_ce31498,pc),r0
    mov.l @(PTR_ce314b4,pc),r2
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce314b0,pc),r0
    extu.b r6,r6
    shll r6
    mov.b @(r0,r6),r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce314b8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce313e2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314bc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3149a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31418
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31498,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31406
    bra LAB_ce31408
    mov 0x12,r0

LAB_ce31406:
    mov 0x1E,r0

LAB_ce31408:
    mov.w r0,@(0x1c,r14)
    mov r14,r4
    mov.w @(DAT_ce31498,pc),r0
    lds.l @r15+,PR
    mov.l @(PTR_ce314c0,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31418:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3141e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314bc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31452
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce314b4,pc),r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31498,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce314c4,pc),r0
    extu.b r6,r6
    shll r6
    mov.b @(r0,r6),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31452:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31458:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce314bc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31472
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce314c8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31472:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3147a:
    mov.w @(DAT_ce3149c,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce314cc,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31494:
    #data 0x041c
DAT_ce31496:
    #data 0x01fc
DAT_ce31498:
    #data 0x01a3
DAT_ce3149a:
    #data 0x0141
DAT_ce3149c:
    #data 0x01f5
#align4
    
PTR_ce314a0:
    #data loc_8c05218a
PTR_ce314a4:
    #data loc_8c035162
PTR_ce314a8:
    #data loc_8c056de4
PTR_ce314ac:
    #data loc_8c2896b0
PTR_ce314b0:
    #data DAT_ce31988
PTR_ce314b4:
    #data loc_8c034e8c
PTR_ce314b8:
    #data loc_8c05115a
PTR_ce314bc:
    #data loc_8c034dee
PTR_ce314c0:
    #data loc_8c088630
PTR_ce314c4:
    #data DAT_ce31989
PTR_ce314c8:
    #data loc_8c051648
PTR_ce314cc:
    #data PTR_ce3198c

;=============================================

LAB_ce314d0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3161c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31620,pc),r2
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
    mov 0x00,r3
    mov.w @(DAT_ce3160e,pc),r0
    mov r3,r2
    fldi1 fr3
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    mov r2,r6
    mov.w @(DAT_ce31610,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31612,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFD,r0
    mov.l @(PTR_ce31624,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31526:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31628,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3153e
    mov.l @r15,r3
    mov.b @(0x6,r3),r0
    add 0x01,r0
    mov.b r0,@(0x6,r3)

LAB_ce3153e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31546:
    mov.l @(DAT_ce3162c,pc),r1
    mov.w @(DAT_ce3160e,pc),r0
    lds r1,FPUL
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr1
    fsts FPUL,fr3
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fsub fr3,fr2
    fcmp/gt fr1,fr2
    bt/s LAB_ce3157c
    fmov fr2,@(r0,r14)
    mov.l @(PTR_ce31630,pc),r2
    mov 0x17,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x03,r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31614,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31616,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3157c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31582:
    mov r4,r3
    mov.l @(PTR_ce31634,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31594:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31614,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31620,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31618,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bf LAB_ce315bc
    mova @(DAT_ce31638,pc),r0
    bra LAB_ce315c0
    fmov.s @r0,fr3

LAB_ce315bc:
    mova @(DAT_ce3163c,pc),r0
    fmov.s @r0,fr3

LAB_ce315c0:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x32,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31640,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31644,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3161a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31648,pc),r3
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
    mov.l @(PTR_ce31624,pc),r2
    mov r4,r6
    mov 0x14,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3160e:
    #data 0x0108
DAT_ce31610:
    #data 0x041c
DAT_ce31612:
    #data 0x01fc
DAT_ce31614:
    #data 0x01f9
DAT_ce31616:
    #data 0x012c
DAT_ce31618:
    #data 0x0130
DAT_ce3161a:
    #data 0x01a1
#align4
    
PTR_ce3161c:
    #data loc_8c05218a
PTR_ce31620:
    #data loc_8c035162
PTR_ce31624:
    #data loc_8c034e8c
PTR_ce31628:
    #data loc_8c034dee
DAT_ce3162c:
    #data 0x3ccccccd
PTR_ce31630:
    #data loc_8c0530d8
PTR_ce31634:
    #data PTR_ce31998
DAT_ce31638:
    #data 0xc1f00000
DAT_ce3163c:
    #data 0x41f00000
DAT_ce31640:
    #data 0x3e892492
DAT_ce31644:
    #data 0xbf4db6db
PTR_ce31648:
    #data loc_8c2896b0

;=============================================

LAB_ce3164c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3170c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31710,pc),r3
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
    bt LAB_ce316ae
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31714,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce316ae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce316b4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3170c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce316ce
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31718,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce316ce:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce316d6:
    rts
    mov 0x00,r0

LAB_ce316da:
    rts
    nop

LAB_ce316de:
    rts
    nop

LAB_ce316e2:
    rts
    nop

LAB_ce316e6:
    rts
    nop

LAB_ce316ea:
    rts
    nop

LAB_ce316ee:
    rts
    nop

LAB_ce316f2:
    rts
    nop

LAB_ce316f6:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov 0x04,r3
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3170a,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce3171c,pc),r3
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3170a:
    #data 0x01e9
#align4
    
PTR_ce3170c:
    #data loc_8c034dee
PTR_ce31710:
    #data loc_8c052ce2
PTR_ce31714:
    #data loc_8c034e8c
PTR_ce31718:
    #data loc_8c051854
PTR_ce3171c:
    #data loc_8c0530d8
DAT_ce31720:
    #data 0x0003
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce31730:
    #data 0x0003
    #data 0x1100
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce31740:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce31750:
    #data 0x0003
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
#align4
    
PTR_ce31760:
    #data LAB_ce301d8
PTR_ce31764:
    #data LAB_ce3001c
PTR_ce31768:
    #data LAB_ce305be
PTR_ce3176c:
    #data LAB_ce306b4
PTR_ce31770:
    #data LAB_ce306c8
PTR_ce31774:
    #data LAB_ce306ce
PTR_ce31778:
    #data LAB_ce3072c
PTR_ce3177c:
    #data LAB_ce307d2
PTR_ce31780:
    #data LAB_ce30b86
PTR_ce31784:
    #data LAB_ce316d6
PTR_ce31788:
    #data LAB_ce316da
PTR_ce3178c:
    #data LAB_ce316de
PTR_ce31790:
    #data LAB_ce316e2
PTR_ce31794:
    #data LAB_ce301d4
PTR_ce31798:
    #data LAB_ce31582
    #data 0x00000000
PTR_ce317a0:
    #data LAB_ce316e6
PTR_ce317a4:
    #data LAB_ce316ea
PTR_ce317a8:
    #data LAB_ce316ee
PTR_ce317ac:
    #data LAB_ce316f2
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce317c0:
    #data LAB_ce316f6
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce317d0:
    #data LAB_ce30384
PTR_ce317d4:
    #data LAB_ce3059a
PTR_ce317d8:
    #data LAB_ce304b0
PTR_ce317dc:
    #data LAB_ce30384
PTR_ce317e0:
    #data LAB_ce30654
PTR_ce317e4:
    #data LAB_ce305d2
PTR_ce317e8:
    #data LAB_ce3063c
PTR_ce317ec:
    #data LAB_ce30654
PTR_ce317f0:
    #data LAB_ce3073e
PTR_ce317f4:
    #data FUN_ce307b2
PTR_ce317f8:
    #data LAB_ce307e4
PTR_ce317fc:
    #data LAB_ce30802
PTR_ce31800:
    #data LAB_ce30816
PTR_ce31804:
    #data LAB_ce30aa2
PTR_ce31808:
    #data LAB_ce30aa2
PTR_ce3180c:
    #data LAB_ce30aa2
PTR_ce31810:
    #data LAB_ce30aa2
PTR_ce31814:
    #data LAB_ce30816
PTR_ce31818:
    #data LAB_ce30816
PTR_ce3181c:
    #data LAB_ce30816
PTR_ce31820:
    #data LAB_ce30894
PTR_ce31824:
    #data LAB_ce30894
PTR_ce31828:
    #data LAB_ce30894
PTR_ce3182c:
    #data LAB_ce30828
PTR_ce31830:
    #data LAB_ce30872
PTR_ce31834:
    #data LAB_ce308d0
PTR_ce31838:
    #data LAB_ce30918
PTR_ce3183c:
    #data LAB_ce3094e
PTR_ce31840:
    #data LAB_ce30968
PTR_ce31844:
    #data LAB_ce3099e
PTR_ce31848:
    #data LAB_ce309d8
PTR_ce3184c:
    #data LAB_ce30a34
DAT_ce31850:
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
    
PTR_ce31870:
    #data LAB_ce30b9a
PTR_ce31874:
    #data LAB_ce30dca
PTR_ce31878:
    #data LAB_ce310b2
PTR_ce3187c:
    #data LAB_ce31328
PTR_ce31880:
    #data LAB_ce3147a
PTR_ce31884:
    #data LAB_ce30bac
PTR_ce31888:
    #data LAB_ce30c52
PTR_ce3188c:
    #data LAB_ce30cc8
PTR_ce31890:
    #data LAB_ce30cfc
PTR_ce31894:
    #data LAB_ce30d24
PTR_ce31898:
    #data LAB_ce30d4c
PTR_ce3189c:
    #data LAB_ce30d74
PTR_ce318a0:
    #data LAB_ce30d9c
PTR_ce318a4:
    #data LAB_ce30dfc
PTR_ce318a8:
    #data LAB_ce30e74
PTR_ce318ac:
    #data LAB_ce30eb2
PTR_ce318b0:
    #data LAB_ce30ece
PTR_ce318b4:
    #data LAB_ce30f64
PTR_ce318b8:
    #data LAB_ce30fea
DAT_ce318bc:
    #data 0x18
DAT_ce318bd:
    #data 0x01
    #data 0x011a
    #data 0x011c
    #data 0x081e
    #data 0x0100
    #data 0x0102
    #data 0x0104
    #data 0x0106
    #data 0x0108
    #data 0x010a
    #data 0x010c
    #data 0x010e
    #data 0x0110
    #data 0x0112
    #data 0x0114
    #data 0x0116
    #data 0x0118
    #data 0x011a
    #data 0x011c
    #data 0x081e
    #data 0x0100
    #data 0x0102
    #data 0x0104
    #data 0x0106
    #data 0x0108
    #data 0x010a
    #data 0x010c
    #data 0x010e
    #data 0x0110
    #data 0x0112
    #data 0x0114
    #data 0x0116
    #data 0x0118
    #data 0x011a
    #data 0x011c
    #data 0x081e
    #data 0x0100
    #data 0x0102
    #data 0x0104
    #data 0x0106
    #data 0x0108
    #data 0x010a
    #data 0x010c
    #data 0x010e
    #data 0x0110
    #data 0x0112
    #data 0x0114
    #data 0x0116
    #data 0x0118
    #data 0x011a
    #data 0x011c
    #data 0x081e
    #data 0x0100
    #data 0x0102
    #data 0x0104
    #data 0x0106
    #data 0x0108
    #data 0x010a
    #data 0x010c
    #data 0x010e
    #data 0x0110
    #data 0x0112
    #data 0x0114
    #data 0x0116
    #data 0x0118
    #data 0x011a
    #data 0x011c
    #data 0x081e
    #data 0x0100
    #data 0x0102
    #data 0x0104
    #data 0x0106
    #data 0x0108
    #data 0x010a
    #data 0x010c
    #data 0x010e
    #data 0x0110
    #data 0x0112
    #data 0x0114
    #data 0x0116
    #data 0x00ff
    #data 0x0000
#align4
    
PTR_ce31960:
    #data LAB_ce310c8
PTR_ce31964:
    #data LAB_ce311e6
PTR_ce31968:
    #data LAB_ce3121c
PTR_ce3196c:
    #data LAB_ce31250
PTR_ce31970:
    #data LAB_ce312a8
PTR_ce31974:
    #data FUN_ce31306
PTR_ce31978:
    #data LAB_ce31350
PTR_ce3197c:
    #data LAB_ce313e2
PTR_ce31980:
    #data LAB_ce3141e
PTR_ce31984:
    #data FUN_ce31458
DAT_ce31988:
    #data 0x01
DAT_ce31989:
    #data 0x02
    #data 0x0b0a
#align4
    
PTR_ce3198c:
    #data LAB_ce314d0
PTR_ce31990:
    #data LAB_ce31526
PTR_ce31994:
    #data LAB_ce31546
PTR_ce31998:
    #data LAB_ce31594
PTR_ce3199c:
    #data LAB_ce3164c
PTR_ce319a0:
    #data FUN_ce316b4
