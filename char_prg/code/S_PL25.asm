;╔══════════════════════════════════════════╗
;║ S_PL25 : Dhalsim Program                 ║
;╚══════════════════════════════════════════╝
    
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
#symbol loc_8c04fea8 0x8C04FEA8
#symbol loc_8c04ff88 0x8C04FF88
#symbol loc_8c050048 0x8C050048
#symbol loc_8c050084 0x8C050084
#symbol loc_8c050552 0x8C050552
#symbol loc_8c050610 0x8C050610
#symbol loc_8c05064e 0x8C05064E
#symbol loc_8c050682 0x8C050682
#symbol loc_8c050834 0x8C050834
#symbol loc_8c050ea4 0x8C050EA4
#symbol loc_8c05115a 0x8C05115A
#symbol loc_8c0511b4 0x8C0511B4
#symbol loc_8c0511e2 0x8C0511E2
#symbol loc_8c05145e 0x8C05145E
#symbol loc_8c051480 0x8C051480
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c051854 0x8C051854
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c0522e0 0x8C0522E0
#symbol loc_8c0523d8 0x8C0523D8
#symbol loc_8c052b4c 0x8C052B4C
#symbol loc_8c052c84 0x8C052C84
#symbol loc_8c052ce2 0x8C052CE2
#symbol loc_8c052dac 0x8C052DAC
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
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c096e08 0x8C096E08
#symbol loc_8c097060 0x8C097060
#symbol loc_8c097378 0x8C097378
#symbol loc_8c097504 0x8C097504
#symbol loc_8c09781c 0x8C09781C
#symbol loc_8c0fd966 0x8C0FD966
#symbol loc_8c103660 0x8C103660
#symbol loc_8c1294c8 0x8C1294C8
#symbol loc_8c129728 0x8C129728
#symbol loc_8c2896b0 0x8C2896B0

#symbol DAT_ce34108  0x0CE34108


;=============================================

BEG_ce30000:
    mov.w @(DAT_ce3001c,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce30020,pc),r7
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3001c:
    #data 0x0428
    #align4

PTR_ce30020:
    #data PTR_ce33e40

;=============================================

LAB_ce30024:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce300f8,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    mov.l @(PTR_ce300fc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    mov.l @(PTR_ce30100,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    mov.l @(PTR_ce30104,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    bsr FUN_ce30248
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    bsr FUN_ce302c4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    bsr FUN_ce30364
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    bsr FUN_ce303de
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    bsr FUN_ce3047c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    bsr FUN_ce30502
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    bsr FUN_ce305c0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    bsr FUN_ce30552
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    bsr FUN_ce30114
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    bsr FUN_ce30192
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    bsr FUN_ce301d8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    bsr FUN_ce3063e
    mov r14,r4
    tst r0,r0
    bf LAB_ce300f2
    bsr FUN_ce30604
    mov r14,r4
    tst r0,r0
    bf LAB_ce300f2
    mov.l @(PTR_ce30108,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300f2
    mov.l @(PTR_ce3010c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30110,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300f2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

PTR_ce300f8:
    #data loc_8c054508
PTR_ce300fc:
    #data loc_8c054b34
PTR_ce30100:
    #data loc_8c05496c
PTR_ce30104:
    #data loc_8c054d04
PTR_ce30108:
    #data loc_8c054184
PTR_ce3010c:
    #data loc_8c053e00
PTR_ce30110:
    #data loc_8c0542e0

;=============================================

FUN_ce30114:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3021e,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30220,pc),r6
    add r14,r3
    mov.l @(PTR_ce30230,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce30234,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3015c
    mov.w @(DAT_ce30222,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30154
    mov.w @(DAT_ce30224,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30154
    mov.w @(DAT_ce30226,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3015c
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce30154:
    mov.l @r15,r3
    mov.b @(0x6,r3),r0
    tst r0,r0
    bt LAB_ce30166

LAB_ce3015c:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30166:
    mov.w @(DAT_ce30220,pc),r5
    mov.l @(PTR_ce30238,pc),r3
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
    mov.w @(DAT_ce30228,pc),r0
    mov.l @(PTR_ce3023c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30192:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30240,pc),r5
    mov.w @(DAT_ce3022a,pc),r6
    mov.l @(PTR_ce30234,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301b0
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301b0:
    mov.w @(DAT_ce3022a,pc),r5
    mov.l @(PTR_ce30238,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30228,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3023c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301d8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30244,pc),r5
    mov.w @(DAT_ce3022c,pc),r6
    mov.l @(PTR_ce30234,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301f6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301f6:
    mov.w @(DAT_ce3022c,pc),r5
    mov.l @(PTR_ce30238,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30228,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3023c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3021e:
    #data 0x02a4
DAT_ce30220:
    #data 0x036c
DAT_ce30222:
    #data 0x01f9
DAT_ce30224:
    #data 0x01fc
DAT_ce30226:
    #data 0x01d4
DAT_ce30228:
    #data 0x01e9
DAT_ce3022a:
    #data 0x0374
DAT_ce3022c:
    #data 0x037c
    #align4

PTR_ce30230:
    #data DAT_ce33d84
PTR_ce30234:
    #data loc_8c054e58
PTR_ce30238:
    #data loc_8c055c3a
PTR_ce3023c:
    #data loc_8c0530d8
PTR_ce30240:
    #data DAT_ce33d94
PTR_ce30244:
    #data DAT_ce33da8

;=============================================

FUN_ce30248:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30350,pc),r5
    mov.w @(DAT_ce3033e,pc),r6
    mov.l @(PTR_ce30354,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30278
    mov.w @(DAT_ce30340,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30286
    mov.w @(DAT_ce30342,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30286
    mov.w @(DAT_ce30344,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30280

LAB_ce30278:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30280:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30286:
    mov.w @(DAT_ce30346,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30348,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30358,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3034a,pc),r4
    mov 0x08,r6
    mov.l @(PTR_ce3035c,pc),r2
    mov 0x00,r5
    jsr @r2
    add r14,r4
    mov.w @(DAT_ce3034c,pc),r4
    mov 0x08,r6
    mov.l @(PTR_ce3035c,pc),r3
    mov 0x00,r5
    jsr @r3
    add r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302c4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30360,pc),r5
    mov.w @(DAT_ce3034e,pc),r6
    mov.l @(PTR_ce30354,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302f4
    mov.w @(DAT_ce30340,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30302
    mov.w @(DAT_ce30342,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30302
    mov.w @(DAT_ce30344,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce302fc

LAB_ce302f4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302fc:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30302:
    mov.w @(DAT_ce30346,pc),r0
    mov 0x01,r2
    mov 0x03,r3
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30348,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30358,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3034a,pc),r4
    mov 0x08,r6
    mov.l @(PTR_ce3035c,pc),r2
    mov 0x00,r5
    jsr @r2
    add r14,r4
    mov.w @(DAT_ce3034c,pc),r4
    mov 0x08,r6
    mov.l @(PTR_ce3035c,pc),r3
    mov 0x00,r5
    jsr @r3
    add r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3033e:
    #data 0x0384
DAT_ce30340:
    #data 0x01f9
DAT_ce30342:
    #data 0x01fc
DAT_ce30344:
    #data 0x01d4
DAT_ce30346:
    #data 0x01a3
DAT_ce30348:
    #data 0x01e9
DAT_ce3034a:
    #data 0x03a4
DAT_ce3034c:
    #data 0x03ac
DAT_ce3034e:
    #data 0x038c
    #align4

PTR_ce30350:
    #data DAT_ce33dbc
PTR_ce30354:
    #data loc_8c054e58
PTR_ce30358:
    #data loc_8c0530d8
PTR_ce3035c:
    #data loc_8c129728
PTR_ce30360:
    #data DAT_ce33dcc

;=============================================

FUN_ce30364:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30468,pc),r5
    mov.w @(DAT_ce30456,pc),r6
    mov.l @(PTR_ce3046c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30394
    mov.w @(DAT_ce30458,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce303a2
    mov.w @(DAT_ce3045a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce303a2
    mov.w @(DAT_ce3045c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3039c

LAB_ce30394:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3039c:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce303a2:
    mov.w @(DAT_ce3045e,pc),r0
    mov 0x02,r2
    mov 0x03,r3
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30460,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30470,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30462,pc),r4
    mov 0x08,r6
    mov.l @(PTR_ce30474,pc),r2
    mov 0x00,r5
    jsr @r2
    add r14,r4
    mov.w @(DAT_ce30464,pc),r4
    mov 0x08,r6
    mov.l @(PTR_ce30474,pc),r3
    mov 0x00,r5
    jsr @r3
    add r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303de:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30478,pc),r5
    mov.w @(DAT_ce30466,pc),r6
    mov.l @(PTR_ce3046c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3040e
    mov.w @(DAT_ce30458,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3041c
    mov.w @(DAT_ce3045a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3041c
    mov.w @(DAT_ce3045c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30416

LAB_ce3040e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30416:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3041c:
    mov.w @(DAT_ce3045e,pc),r0
    mov 0x03,r5
    mov.l @(PTR_ce30470,pc),r3
    mov.b r5,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30460,pc),r0
    mov.b r5,@(r0,r14)
    mov 0x1D,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30462,pc),r4
    mov 0x08,r6
    mov.l @(PTR_ce30474,pc),r2
    mov 0x00,r5
    jsr @r2
    add r14,r4
    mov.w @(DAT_ce30464,pc),r4
    mov 0x08,r6
    mov.l @(PTR_ce30474,pc),r3
    mov 0x00,r5
    jsr @r3
    add r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30456:
    #data 0x0394
DAT_ce30458:
    #data 0x01f9
DAT_ce3045a:
    #data 0x01fc
DAT_ce3045c:
    #data 0x01d4
DAT_ce3045e:
    #data 0x01a3
DAT_ce30460:
    #data 0x01e9
DAT_ce30462:
    #data 0x03a4
DAT_ce30464:
    #data 0x03ac
DAT_ce30466:
    #data 0x039c
    #align4

PTR_ce30468:
    #data DAT_ce33ddc
PTR_ce3046c:
    #data loc_8c054e58
PTR_ce30470:
    #data loc_8c0530d8
PTR_ce30474:
    #data loc_8c129728
PTR_ce30478:
    #data DAT_ce33dec

;=============================================

FUN_ce3047c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30580,pc),r5
    mov.w @(DAT_ce30570,pc),r6
    mov.l @(PTR_ce30584,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304b6
    mov.w @(DAT_ce30572,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce304b6
    mov.w @(DAT_ce30574,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce304c4
    mov.w @(DAT_ce30576,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce304c4
    mov.w @(DAT_ce30578,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce304be

LAB_ce304b6:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304be:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce304c4:
    mov.w @(DAT_ce30570,pc),r5
    mov.l @(PTR_ce30588,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30574,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce304ee
    mov 0x1D,r5
    mov.w @(DAT_ce3057a,pc),r0
    mov 0x0C,r2
    bra LAB_ce304f4
    mov.b r2,@(r0,r14)

LAB_ce304ee:
    mov.w @(DAT_ce3057a,pc),r0
    mov 0x05,r1
    mov.b r1,@(r0,r14)

LAB_ce304f4:
    mov.l @(PTR_ce3058c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30502:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30590,pc),r5
    mov.w @(DAT_ce3057c,pc),r6
    mov.l @(PTR_ce30584,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30522
    mov.w @(DAT_ce30572,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3052a

LAB_ce30522:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3052a:
    mov.w @(DAT_ce3057c,pc),r5
    mov.l @(PTR_ce30588,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3057a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3058c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30552:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30594,pc),r5
    mov.w @(DAT_ce3057e,pc),r6
    mov.l @(PTR_ce30584,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30598
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30570:
    #data 0x03a4
DAT_ce30572:
    #data 0x040c
DAT_ce30574:
    #data 0x01f9
DAT_ce30576:
    #data 0x01fc
DAT_ce30578:
    #data 0x01d4
DAT_ce3057a:
    #data 0x01e9
DAT_ce3057c:
    #data 0x03ac
DAT_ce3057e:
    #data 0x03b4
    #align4

PTR_ce30580:
    #data DAT_ce33dfc
PTR_ce30584:
    #data loc_8c054e58
PTR_ce30588:
    #data loc_8c055c3a
PTR_ce3058c:
    #data loc_8c0530d8
PTR_ce30590:
    #data DAT_ce33e0c
PTR_ce30594:
    #data DAT_ce33e1c

;=============================================

LAB_ce30598:
    mov.w @(DAT_ce306a4,pc),r5
    mov.l @(PTR_ce306b0,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce306a6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce306b4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce305c0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce306b8,pc),r5
    mov r4,r14
    mov.l @(PTR_ce306bc,pc),r3
    mov.w @(DAT_ce306a8,pc),r6
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce305e4
    mov.l @(PTR_ce306c0,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bf/s LAB_ce305ee
    mov r0,r5

LAB_ce305e4:
    mov 0x00,r0
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce305ee:
    mov.w @(DAT_ce306ac,pc),r0
    mov.w @(DAT_ce306aa,pc),r2
    mov.l @(PTR_ce306c4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30604:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306c8,pc),r3
    jsr @r3
    mov 0x09,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3061e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3061e:
    mov.w @(DAT_ce306a6,pc),r0
    mov 0x09,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce306b4,pc),r3
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

FUN_ce3063e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce306cc,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30656
    mov.w @(DAT_ce306ae,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3065e

LAB_ce30656:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3065e:
    mov.w @(DAT_ce306a6,pc),r0
    mov 0x0D,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce306b4,pc),r3
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

FUN_ce3067e:
    sts.l PR,@-r15
    add 0xFC,r15
    bsr FUN_ce306d0
    mov.l r4,@r15
    tst r0,r0
    bf LAB_ce30692
    bsr FUN_ce30706
    mov.l @r15,r4
    tst r0,r0
    bt LAB_ce3069a

LAB_ce30692:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce3069a:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306a4:
    #data 0x03b4
DAT_ce306a6:
    #data 0x01e9
DAT_ce306a8:
    #data 0x03bc
DAT_ce306aa:
    #data 0x00c3
DAT_ce306ac:
    #data 0x01f7
DAT_ce306ae:
    #data 0x040c
    #align4

PTR_ce306b0:
    #data loc_8c055c3a
PTR_ce306b4:
    #data loc_8c0530d8
PTR_ce306b8:
    #data DAT_ce33e2c
PTR_ce306bc:
    #data loc_8c054e58
PTR_ce306c0:
    #data loc_8c045790
PTR_ce306c4:
    #data loc_8c0522e0
PTR_ce306c8:
    #data loc_8c054da0
PTR_ce306cc:
    #data loc_8c054d1c

;=============================================

FUN_ce306d0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce307e8,pc),r5
    mov.w @(DAT_ce307d4,pc),r6
    mov.l @(PTR_ce307ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce306f0
    mov.w @(DAT_ce307d6,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce306f8

LAB_ce306f0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce306f8:
    mov.w @(DAT_ce307d8,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30706:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce307f0,pc),r5
    mov.w @(DAT_ce307da,pc),r6
    mov.l @(PTR_ce307ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30726
    mov.w @(DAT_ce307d6,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3072e

LAB_ce30726:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3072e:
    mov.w @(DAT_ce307d8,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3073c:
    mov.w @(DAT_ce307de,pc),r0
    mov.w @(DAT_ce307dc,pc),r5
    mov.b @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce30774
    add r4,r5
    mov.b @(0x5,r4),r0
    tst r0,r0
    bf LAB_ce30774
    mov.w @(0x8,r5),r0
    add 0xFF,r0
    mov.w r0,@(0x8,r5)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce30774
    mov.w @(DAT_ce307e0,pc),r0
    mov.b @(r0,r4),r5
    extu.b r5,r0
    cmp/eq 0x1D,r0
    bt/s LAB_ce30774
    mov r0,r5
    mov r5,r0
    nop
    cmp/eq 0x15,r0
    bt LAB_ce30774
    mov.l @(PTR_ce307f4,pc),r2
    jmp @r2
    nop

LAB_ce30774:
    rts
    nop

LAB_ce30778:
    mov.w @(DAT_ce307e2,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce307f8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3078c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce307fc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce307e4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce307ba
    mov.w @(DAT_ce307e6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce307b2
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30b7c
    mov.l @r15+,r14

LAB_ce307b2:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30a58
    mov.l @r15+,r14

LAB_ce307ba:
    mov.w @(DAT_ce307e6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce307cc
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30934
    mov.l @r15+,r14

LAB_ce307cc:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30800
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307d4:
    #data 0x03a4
DAT_ce307d6:
    #data 0x040c
DAT_ce307d8:
    #data 0x0258
DAT_ce307da:
    #data 0x03ac
DAT_ce307dc:
    #data 0x02a4
DAT_ce307de:
    #data 0x0201
DAT_ce307e0:
    #data 0x01d0
DAT_ce307e2:
    #data 0x01ff
DAT_ce307e4:
    #data 0x01fe
DAT_ce307e6:
    #data 0x01f9
    #align4

PTR_ce307e8:
    #data DAT_ce33dfc
PTR_ce307ec:
    #data loc_8c054e58
PTR_ce307f0:
    #data DAT_ce33e0c
PTR_ce307f4:
    #data LAB_ce3319a
PTR_ce307f8:
    #data PTR_ce33f00
PTR_ce307fc:
    #data loc_8c052b4c

;=============================================

LAB_ce30800:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce30906,pc),r0
    mov.l r11,@-r15
    mov 0x01,r11
    mov.l r10,@-r15
    mov.l r9,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3091c,pc),r12
    mov.l @(PTR_ce30914,pc),r9
    extu.b r0,r0
    mov.l @(PTR_ce30918,pc),r10
    cmp/eq 0x00,r0
    bt/s LAB_ce30830
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30866
    cmp/eq 0x02,r0
    bt LAB_ce3089a
    bra LAB_ce308ce
    nop

LAB_ce30830:
    fmov.s @r12,fr4
    jsr @r10
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3084a
    mov 0x14,r5
    mov.w @(DAT_ce30908,pc),r0
    mov 0x03,r2
    mov 0x30,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30852
    mov.b r3,@(r0,r14)

LAB_ce3084a:
    mov.w @(DAT_ce30908,pc),r0
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)

LAB_ce30852:
    jsr @r9
    mov r14,r4
    mov.w @(DAT_ce3090a,pc),r0
    mov.l @(PTR_ce30920,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3090c,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3090e,pc),r0
    bra LAB_ce308cc
    nop

LAB_ce30866:
    mov 0x04,r0
    fmov.s @(r0,r12),fr4
    jsr @r10
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce30882
    mov 0x15,r5
    mov.w @(DAT_ce30908,pc),r0
    mov 0x04,r2
    mov 0x31,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    bra LAB_ce3088a
    mov.b r3,@(r0,r14)

LAB_ce30882:
    mov.w @(DAT_ce30908,pc),r0
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)

LAB_ce3088a:
    jsr @r9
    mov r14,r4
    mov.w @(DAT_ce3090a,pc),r0
    mov.l @(PTR_ce30924,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3090c,pc),r0
    bra LAB_ce308cc
    nop

LAB_ce3089a:
    mov 0x08,r0
    fmov.s @(r0,r12),fr4
    mov 0x02,r11
    jsr @r10
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce308b8
    mov 0x16,r5
    mov.w @(DAT_ce30908,pc),r0
    mov 0x05,r2
    mov 0x32,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    bra LAB_ce308c0
    mov.b r3,@(r0,r14)

LAB_ce308b8:
    mov.w @(DAT_ce30908,pc),r0
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)

LAB_ce308c0:
    jsr @r9
    mov r14,r4
    mov.w @(DAT_ce3090a,pc),r0
    mov.l @(PTR_ce30928,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3090c,pc),r0

LAB_ce308cc:
    mov.b r11,@(r0,r14)

LAB_ce308ce:
    mov.w @(DAT_ce30910,pc),r0
    mov r14,r4
    mov.l @(PTR_ce3092c,pc),r3
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
    mov.w @(DAT_ce30908,pc),r0
    mov.l @(PTR_ce30930,pc),r2
    mov.l @r15+,r9
    mov.b @(r0,r14),r6
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30906:
    #data 0x01e8
DAT_ce30908:
    #data 0x0158
DAT_ce3090a:
    #data 0x03f4
DAT_ce3090c:
    #data 0x01a7
DAT_ce3090e:
    #data 0x02a2
DAT_ce30910:
    #data 0x01ac
    #align4

PTR_ce30914:
    #data loc_8c04223a
PTR_ce30918:
    #data loc_8c05145e
PTR_ce3091c:
    #data DAT_ce33eb0
PTR_ce30920:
    #data DAT_ce33d3c
PTR_ce30924:
    #data DAT_ce33d40
PTR_ce30928:
    #data DAT_ce33d44
PTR_ce3092c:
    #data loc_8c2896b0
PTR_ce30930:
    #data loc_8c034e8c

;=============================================

LAB_ce30934:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce30a2e,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30a38,pc),r10
    extu.b r0,r0
    mov.l @(PTR_ce30a3c,pc),r11
    mov.l @(PTR_ce30a40,pc),r13
    cmp/eq 0x00,r0
    bt/s LAB_ce30960
    mov 0x00,r12
    cmp/eq 0x01,r0
    bt LAB_ce30992
    cmp/eq 0x02,r0
    bt LAB_ce309c4
    bra LAB_ce309f8
    nop

LAB_ce30960:
    mov 0x0C,r0
    fmov.s @(r0,r13),fr4
    jsr @r10
    mov r14,r4
    tst r0,r0
    bt LAB_ce30976
    mov.w @(DAT_ce30a30,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r14)
    bra LAB_ce3097c
    mov 0x36,r3

LAB_ce30976:
    mov.w @(DAT_ce30a30,pc),r0
    mov 0x06,r3
    mov.b r12,@(r0,r14)

LAB_ce3097c:
    add 0x49,r0
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30a32,pc),r0
    mov.l @(PTR_ce30a44,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30a34,pc),r0
    bra LAB_ce309f8
    mov.b r12,@(r0,r14)

LAB_ce30992:
    mov 0x10,r0
    fmov.s @(r0,r13),fr4
    jsr @r10
    mov r14,r4
    tst r0,r0
    bt LAB_ce309a8
    mov.w @(DAT_ce30a30,pc),r0
    mov 0x04,r2
    mov.b r2,@(r0,r14)
    bra LAB_ce309b0
    mov 0x37,r3

LAB_ce309a8:
    mov.w @(DAT_ce30a30,pc),r0
    mov 0x01,r1
    mov 0x07,r3
    mov.b r1,@(r0,r14)

LAB_ce309b0:
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30a32,pc),r0
    mov.l @(PTR_ce30a48,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce309f4
    mov 0x01,r2

LAB_ce309c4:
    mov 0x14,r0
    fmov.s @(r0,r13),fr4
    jsr @r10
    mov r14,r4
    tst r0,r0
    bt LAB_ce309da
    mov.w @(DAT_ce30a30,pc),r0
    mov 0x05,r2
    mov.b r2,@(r0,r14)
    bra LAB_ce309e2
    mov 0x38,r3

LAB_ce309da:
    mov.w @(DAT_ce30a30,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)

LAB_ce309e2:
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30a32,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30a4c,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce309f4:
    mov.w @(DAT_ce30a34,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce309f8:
    mov.w @(DAT_ce30a36,pc),r0
    mov r14,r4
    mov.l @(PTR_ce30a50,pc),r3
    mov 0x09,r5
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.w @(DAT_ce30a30,pc),r0
    mov.l @(PTR_ce30a54,pc),r2
    mov.l @r15+,r10
    mov.b @(r0,r14),r6
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a2e:
    #data 0x01e8
DAT_ce30a30:
    #data 0x0158
DAT_ce30a32:
    #data 0x03f4
DAT_ce30a34:
    #data 0x01a7
DAT_ce30a36:
    #data 0x01ac
    #align4

PTR_ce30a38:
    #data loc_8c05145e
PTR_ce30a3c:
    #data loc_8c04223a
PTR_ce30a40:
    #data DAT_ce33eb0
PTR_ce30a44:
    #data DAT_ce33d3c
PTR_ce30a48:
    #data DAT_ce33d40
PTR_ce30a4c:
    #data DAT_ce33d44
PTR_ce30a50:
    #data loc_8c2896b0
PTR_ce30a54:
    #data loc_8c034e8c

;=============================================

LAB_ce30a58:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce30b52,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b5c,pc),r10
    extu.b r0,r0
    mov.l @(PTR_ce30b60,pc),r11
    mov.l @(PTR_ce30b64,pc),r13
    cmp/eq 0x00,r0
    bt/s LAB_ce30a84
    mov 0x00,r12
    cmp/eq 0x01,r0
    bt LAB_ce30ab6
    cmp/eq 0x02,r0
    bt LAB_ce30ae8
    bra LAB_ce30b1c
    nop

LAB_ce30a84:
    mov 0x18,r0
    fmov.s @(r0,r13),fr4
    jsr @r10
    mov r14,r4
    tst r0,r0
    bt LAB_ce30a9a
    mov.w @(DAT_ce30b54,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r14)
    bra LAB_ce30aa0
    mov 0x33,r3

LAB_ce30a9a:
    mov.w @(DAT_ce30b54,pc),r0
    mov 0x03,r3
    mov.b r12,@(r0,r14)

LAB_ce30aa0:
    add 0x49,r0
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30b56,pc),r0
    mov.l @(PTR_ce30b68,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30b58,pc),r0
    bra LAB_ce30b1c
    mov.b r12,@(r0,r14)

LAB_ce30ab6:
    mov 0x1C,r0
    fmov.s @(r0,r13),fr4
    jsr @r10
    mov r14,r4
    tst r0,r0
    bt LAB_ce30acc
    mov.w @(DAT_ce30b54,pc),r0
    mov 0x04,r2
    mov.b r2,@(r0,r14)
    bra LAB_ce30ad4
    mov 0x34,r3

LAB_ce30acc:
    mov.w @(DAT_ce30b54,pc),r0
    mov 0x01,r1
    mov 0x04,r3
    mov.b r1,@(r0,r14)

LAB_ce30ad4:
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30b56,pc),r0
    mov.l @(PTR_ce30b6c,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30b18
    mov 0x01,r2

LAB_ce30ae8:
    mov 0x20,r0
    fmov.s @(r0,r13),fr4
    jsr @r10
    mov r14,r4
    tst r0,r0
    bt LAB_ce30afe
    mov.w @(DAT_ce30b54,pc),r0
    mov 0x05,r2
    mov.b r2,@(r0,r14)
    bra LAB_ce30b06
    mov 0x35,r3

LAB_ce30afe:
    mov.w @(DAT_ce30b54,pc),r0
    mov 0x02,r1
    mov 0x05,r3
    mov.b r1,@(r0,r14)

LAB_ce30b06:
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30b56,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30b70,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30b18:
    mov.w @(DAT_ce30b58,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30b1c:
    mov.w @(DAT_ce30b5a,pc),r0
    mov r14,r4
    mov.l @(PTR_ce30b74,pc),r3
    mov 0x08,r5
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.w @(DAT_ce30b54,pc),r0
    mov.l @(PTR_ce30b78,pc),r2
    mov.l @r15+,r10
    mov.b @(r0,r14),r6
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b52:
    #data 0x01e8
DAT_ce30b54:
    #data 0x0158
DAT_ce30b56:
    #data 0x03f4
DAT_ce30b58:
    #data 0x01a7
DAT_ce30b5a:
    #data 0x01ac
    #align4

PTR_ce30b5c:
    #data loc_8c05145e
PTR_ce30b60:
    #data loc_8c04223a
PTR_ce30b64:
    #data DAT_ce33eb0
PTR_ce30b68:
    #data DAT_ce33d48
PTR_ce30b6c:
    #data DAT_ce33d4c
PTR_ce30b70:
    #data DAT_ce33d50
PTR_ce30b74:
    #data loc_8c2896b0
PTR_ce30b78:
    #data loc_8c034e8c

;=============================================

LAB_ce30b7c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce30c94,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30ca0,pc),r10
    extu.b r0,r0
    mov.l @(PTR_ce30ca4,pc),r11
    mov.l @(PTR_ce30ca8,pc),r13
    cmp/eq 0x00,r0
    bt/s LAB_ce30ba8
    mov 0x00,r12
    cmp/eq 0x01,r0
    bt LAB_ce30be4
    cmp/eq 0x02,r0
    bt LAB_ce30c20
    bra LAB_ce30c5e
    nop

LAB_ce30ba8:
    mov 0x24,r0
    fmov.s @(r0,r13),fr4
    jsr @r10
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce30bca
    mov 0x14,r5
    mov.b @(0x6,r14),r0
    mov 0x03,r3
    mov 0x39,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30c96,pc),r0
    mov.b r3,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30bd4
    mov.b r2,@(r0,r14)

LAB_ce30bca:
    mov.w @(DAT_ce30c96,pc),r0
    mov 0x09,r3
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30bd4:
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30c98,pc),r0
    mov.l @(PTR_ce30cac,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30c9a,pc),r0
    bra LAB_ce30c5e
    mov.b r12,@(r0,r14)

LAB_ce30be4:
    mov 0x28,r0
    fmov.s @(r0,r13),fr4
    jsr @r10
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce30c06
    mov 0x15,r5
    mov.b @(0x6,r14),r0
    mov 0x04,r3
    mov 0x3A,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30c96,pc),r0
    mov.b r3,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30c12
    mov.b r2,@(r0,r14)

LAB_ce30c06:
    mov.w @(DAT_ce30c96,pc),r0
    mov 0x01,r1
    mov 0x0A,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30c12:
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30c98,pc),r0
    mov.l @(PTR_ce30cb0,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30c5a
    mov 0x01,r2

LAB_ce30c20:
    mov 0x2C,r0
    fmov.s @(r0,r13),fr4
    jsr @r10
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce30c42
    mov 0x16,r5
    mov.b @(0x6,r14),r0
    mov 0x05,r3
    mov 0x3B,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30c96,pc),r0
    mov.b r3,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30c4e
    mov.b r2,@(r0,r14)

LAB_ce30c42:
    mov.w @(DAT_ce30c96,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30c4e:
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30c98,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30cb4,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30c5a:
    mov.w @(DAT_ce30c9a,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30c5e:
    mov.w @(DAT_ce30c9c,pc),r0
    mov r14,r4
    mov.l @(PTR_ce30cb8,pc),r3
    mov 0x0A,r5
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.w @(DAT_ce30c96,pc),r0
    mov.l @(PTR_ce30cbc,pc),r2
    mov.l @r15+,r10
    mov.b @(r0,r14),r6
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c94:
    #data 0x01e8
DAT_ce30c96:
    #data 0x0158
DAT_ce30c98:
    #data 0x03f4
DAT_ce30c9a:
    #data 0x01a7
DAT_ce30c9c:
    #data 0x01ac
    #align4

PTR_ce30ca0:
    #data loc_8c05145e
PTR_ce30ca4:
    #data loc_8c04223a
PTR_ce30ca8:
    #data DAT_ce33eb0
PTR_ce30cac:
    #data DAT_ce33d48
PTR_ce30cb0:
    #data DAT_ce33d4c
PTR_ce30cb4:
    #data DAT_ce33d50
PTR_ce30cb8:
    #data loc_8c2896b0
PTR_ce30cbc:
    #data loc_8c034e8c

;=============================================

LAB_ce30cc0:
    mov.w @(DAT_ce30da4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30cd2
    bsr FUN_ce30d00
    mov r14,r4

LAB_ce30cd2:
    mov.w @(DAT_ce30da6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30ce2
    mov.w @(DAT_ce30da8,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bf LAB_ce30cf2

LAB_ce30ce2:
    mov.w @(DAT_ce30da6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30cfa
    mov.w @(DAT_ce30da8,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30cfa

LAB_ce30cf2:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30d00
    mov.l @r15+,r14

LAB_ce30cfa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30d00:
    mov.w @(DAT_ce30da6,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d0e
    bra LAB_ce30ed4
    nop

LAB_ce30d0e:
    bra LAB_ce30d12
    nop

LAB_ce30d12:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30daa,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30db4,pc),r11
    extu.b r0,r0
    mov.l @(PTR_ce30db8,pc),r13
    cmp/eq 0x00,r0
    bt/s LAB_ce30d3a
    mov 0x00,r12
    cmp/eq 0x01,r0
    bt LAB_ce30d86
    cmp/eq 0x02,r0
    bt LAB_ce30df6
    bra LAB_ce30e5e
    nop

LAB_ce30d3a:
    mov 0x48,r0
    mov.l @(PTR_ce30dbc,pc),r3
    fmov.s @(r0,r13),fr5
    mov 0x30,r0
    fmov.s @(r0,r13),fr4
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce30d5c
    mov 0x14,r5
    mov.w @(DAT_ce30dac,pc),r0
    mov 0x06,r3
    mov 0x3C,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30d66
    mov.b r2,@(r0,r14)

LAB_ce30d5c:
    mov.w @(DAT_ce30dac,pc),r0
    mov 0x0C,r3
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30d66:
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30dae,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30d7a
    mov.w @(DAT_ce30db0,pc),r0
    mov.l @(PTR_ce30dc0,pc),r3
    bra LAB_ce30d80
    mov.l r3,@(r0,r14)

LAB_ce30d7a:
    mov.w @(DAT_ce30db0,pc),r0
    mov.l @(PTR_ce30dc4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30d80:
    mov.w @(DAT_ce30db2,pc),r0
    bra LAB_ce30e5e
    mov.b r12,@(r0,r14)

LAB_ce30d86:
    mov 0x34,r0
    mov.l @(PTR_ce30dc8,pc),r3
    fmov.s @(r0,r13),fr4
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce30dcc
    mov 0x15,r5
    mov.w @(DAT_ce30dac,pc),r0
    mov 0x07,r3
    mov 0x3D,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30dd8
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30da4:
    #data 0x0201
DAT_ce30da6:
    #data 0x01fe
DAT_ce30da8:
    #data 0x01d6
DAT_ce30daa:
    #data 0x01e8
DAT_ce30dac:
    #data 0x0158
DAT_ce30dae:
    #data 0x01fc
DAT_ce30db0:
    #data 0x03f4
DAT_ce30db2:
    #data 0x01a7
    #align4

PTR_ce30db4:
    #data loc_8c04223a
PTR_ce30db8:
    #data DAT_ce33eb0
PTR_ce30dbc:
    #data loc_8c051480
PTR_ce30dc0:
    #data DAT_ce33d54
PTR_ce30dc4:
    #data DAT_ce33d6c
PTR_ce30dc8:
    #data loc_8c05145e

;=============================================

LAB_ce30dcc:
    mov.w @(DAT_ce30ea4,pc),r0
    mov 0x01,r1
    mov 0x0D,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30dd8:
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30ea6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30dec
    mov.w @(DAT_ce30ea8,pc),r0
    mov.l @(PTR_ce30eb8,pc),r3
    bra LAB_ce30df2
    mov.l r3,@(r0,r14)

LAB_ce30dec:
    mov.w @(DAT_ce30ea8,pc),r0
    mov.l @(PTR_ce30ebc,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30df2:
    bra LAB_ce30e5a
    mov 0x01,r3

LAB_ce30df6:
    mov 0x4C,r0
    mov.l @(PTR_ce30ec0,pc),r3
    fmov.s @(r0,r13),fr5
    mov 0x38,r0
    fmov.s @(r0,r13),fr4
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce30e12
    mov.w @(DAT_ce30ea4,pc),r0
    mov 0x08,r3
    mov.b r3,@(r0,r14)
    bra LAB_ce30e1a
    mov 0x3E,r2

LAB_ce30e12:
    mov.w @(DAT_ce30ea4,pc),r0
    mov 0x02,r3
    mov 0x0E,r2
    mov.b r3,@(r0,r14)

LAB_ce30e1a:
    add 0x49,r0
    mov 0x16,r5
    mov.b r2,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30eaa,pc),r0
    mov.w @(DAT_ce30eac,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce30e42
    mov.w @(DAT_ce30ea4,pc),r0
    mov 0x09,r3
    mov 0x60,r1
    mov.b r3,@(r0,r14)
    mov 0x12,r3
    mov.w @(DAT_ce30eae,pc),r0
    mov.b r1,@(r0,r14)
    add 0xB9,r0
    mov.b r3,@(r0,r14)

LAB_ce30e42:
    mov.w @(DAT_ce30ea6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30e52
    mov.w @(DAT_ce30ea8,pc),r0
    mov.l @(PTR_ce30ec4,pc),r2
    bra LAB_ce30e58
    mov.l r2,@(r0,r14)

LAB_ce30e52:
    mov.w @(DAT_ce30ea8,pc),r0
    mov.l @(PTR_ce30ec8,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30e58:
    mov 0x02,r3

LAB_ce30e5a:
    mov.w @(DAT_ce30eb0,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30e5e:
    mov.w @(DAT_ce30eb2,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30ecc,pc),r3
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
    mov.w @(DAT_ce30ea4,pc),r0
    mov.l @(PTR_ce30ed0,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30eb4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30e98
    mov.w @(DAT_ce30eb4,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30e98:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ea4:
    #data 0x0158
DAT_ce30ea6:
    #data 0x01fc
DAT_ce30ea8:
    #data 0x03f4
DAT_ce30eaa:
    #data 0x01fa
DAT_ce30eac:
    #data 0x1000
DAT_ce30eae:
    #data 0x01e8
DAT_ce30eb0:
    #data 0x01a7
DAT_ce30eb2:
    #data 0x01ac
DAT_ce30eb4:
    #data 0x01d6
    #align4

PTR_ce30eb8:
    #data DAT_ce33d58
PTR_ce30ebc:
    #data DAT_ce33d70
PTR_ce30ec0:
    #data loc_8c051480
PTR_ce30ec4:
    #data DAT_ce33d5c
PTR_ce30ec8:
    #data DAT_ce33d74
PTR_ce30ecc:
    #data loc_8c2896b0
PTR_ce30ed0:
    #data loc_8c034e8c

;=============================================

LAB_ce30ed4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce30fc2,pc),r0
    mov.l r11,@-r15
    mov.l r10,@-r15
    mov.l r9,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30fd8,pc),r13
    extu.b r0,r0
    mov.w @(DAT_ce30fc0,pc),r11
    mov.l @(PTR_ce30fd0,pc),r9
    cmp/eq 0x00,r0
    mov.l @(PTR_ce30fd4,pc),r10
    bt/s LAB_ce30f04
    mov 0x00,r12
    cmp/eq 0x01,r0
    bt LAB_ce30f62
    cmp/eq 0x02,r0
    bt LAB_ce30fec
    bra LAB_ce3104c
    nop

LAB_ce30f04:
    mov 0x3C,r0
    fmov.s @(r0,r13),fr4
    jsr @r9
    mov r14,r4
    tst r0,r0
    bt LAB_ce30f1a
    mov.w @(DAT_ce30fc4,pc),r0
    mov 0x06,r2
    mov.b r2,@(r0,r14)
    bra LAB_ce30f20
    mov 0x3F,r3

LAB_ce30f1a:
    mov.w @(DAT_ce30fc4,pc),r0
    mov 0x0F,r3
    mov.b r12,@(r0,r14)

LAB_ce30f20:
    add 0x49,r0
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce30fc6,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r11,r3
    bt LAB_ce30f46
    mov.w @(DAT_ce30fc4,pc),r0
    mov 0x09,r1
    mov 0x61,r3
    mov.b r1,@(r0,r14)
    mov 0x13,r2
    mov.w @(DAT_ce30fc2,pc),r0
    mov.b r3,@(r0,r14)
    add 0xB9,r0
    mov.b r2,@(r0,r14)

LAB_ce30f46:
    mov.w @(DAT_ce30fc8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30f56
    mov.w @(DAT_ce30fca,pc),r0
    mov.l @(PTR_ce30fdc,pc),r3
    bra LAB_ce30f5c
    mov.l r3,@(r0,r14)

LAB_ce30f56:
    mov.w @(DAT_ce30fca,pc),r0
    mov.l @(PTR_ce30fe0,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30f5c:
    mov.w @(DAT_ce30fcc,pc),r0
    bra LAB_ce3104c
    mov.b r12,@(r0,r14)

LAB_ce30f62:
    add 0x40,r13
    fmov.s @r13,fr4
    jsr @r9
    mov r14,r4
    tst r0,r0
    bt LAB_ce30f78
    mov.w @(DAT_ce30fc4,pc),r0
    mov 0x07,r3
    mov.b r3,@(r0,r14)
    bra LAB_ce30f80
    mov 0x40,r2

LAB_ce30f78:
    mov.w @(DAT_ce30fc4,pc),r0
    mov 0x01,r3
    mov 0x10,r2
    mov.b r3,@(r0,r14)

LAB_ce30f80:
    add 0x49,r0
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce30fc6,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r11,r3
    bt LAB_ce30fa6
    mov.w @(DAT_ce30fc4,pc),r0
    mov 0x0A,r1
    mov 0x62,r3
    mov.b r1,@(r0,r14)
    mov 0x14,r2
    mov.w @(DAT_ce30fc2,pc),r0
    mov.b r3,@(r0,r14)
    add 0xB9,r0
    mov.b r2,@(r0,r14)

LAB_ce30fa6:
    mov.w @(DAT_ce30fc8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30fb6
    mov.w @(DAT_ce30fca,pc),r0
    mov.l @(PTR_ce30fe4,pc),r3
    bra LAB_ce30fbc
    mov.l r3,@(r0,r14)

LAB_ce30fb6:
    mov.w @(DAT_ce30fca,pc),r0
    mov.l @(PTR_ce30fe8,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30fbc:
    bra LAB_ce31048
    mov 0x01,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fc0:
    #data 0x1000
DAT_ce30fc2:
    #data 0x01e8
DAT_ce30fc4:
    #data 0x0158
DAT_ce30fc6:
    #data 0x01fa
DAT_ce30fc8:
    #data 0x01fc
DAT_ce30fca:
    #data 0x03f4
DAT_ce30fcc:
    #data 0x01a7
    #align4

PTR_ce30fd0:
    #data loc_8c05145e
PTR_ce30fd4:
    #data loc_8c04223a
PTR_ce30fd8:
    #data DAT_ce33eb0
PTR_ce30fdc:
    #data DAT_ce33d60
PTR_ce30fe0:
    #data DAT_ce33d78
PTR_ce30fe4:
    #data DAT_ce33d64
PTR_ce30fe8:
    #data DAT_ce33d7c

;=============================================

LAB_ce30fec:
    add 0x44,r13
    fmov.s @r13,fr4
    jsr @r9
    mov r14,r4
    tst r0,r0
    bt LAB_ce31002
    mov.w @(DAT_ce31120,pc),r0
    mov 0x08,r2
    mov.b r2,@(r0,r14)
    bra LAB_ce3100a
    mov 0x41,r3

LAB_ce31002:
    mov.w @(DAT_ce31120,pc),r0
    mov 0x02,r2
    mov 0x11,r3
    mov.b r2,@(r0,r14)

LAB_ce3100a:
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce31122,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r11,r3
    bt LAB_ce31030
    mov.w @(DAT_ce31120,pc),r0
    mov 0x0B,r1
    mov 0x63,r3
    mov.b r1,@(r0,r14)
    mov 0x15,r2
    mov.w @(DAT_ce31124,pc),r0
    mov.b r3,@(r0,r14)
    add 0xB9,r0
    mov.b r2,@(r0,r14)

LAB_ce31030:
    mov.w @(DAT_ce31126,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31040
    mov.w @(DAT_ce31128,pc),r0
    mov.l @(PTR_ce31138,pc),r3
    bra LAB_ce31046
    mov.l r3,@(r0,r14)

LAB_ce31040:
    mov.w @(DAT_ce31128,pc),r0
    mov.l @(PTR_ce3113c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce31046:
    mov 0x02,r3

LAB_ce31048:
    mov.w @(DAT_ce3112a,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce3104c:
    mov.w @(DAT_ce3112c,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce31140,pc),r3
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
    mov.w @(DAT_ce31120,pc),r0
    mov.l @(PTR_ce31144,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3112e,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce31086
    mov.w @(DAT_ce3112e,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce31086:
    lds.l @r15+,PR
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31096:
    mov.w @(DAT_ce31130,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31148,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce310aa:
    sts.l PR,@-r15
    mov.l @(PTR_ce3114c,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce310b8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31150,pc),r3
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
    mov.w @(DAT_ce31132,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31154
    mov.w @(DAT_ce31134,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31118
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce311d4
    mov.l @r15+,r14

LAB_ce31118:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce311b2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31120:
    #data 0x0158
DAT_ce31122:
    #data 0x01fa
DAT_ce31124:
    #data 0x01e8
DAT_ce31126:
    #data 0x01fc
DAT_ce31128:
    #data 0x03f4
DAT_ce3112a:
    #data 0x01a7
DAT_ce3112c:
    #data 0x01ac
DAT_ce3112e:
    #data 0x01d6
DAT_ce31130:
    #data 0x01ff
DAT_ce31132:
    #data 0x01fe
DAT_ce31134:
    #data 0x01f9
    #align4

PTR_ce31138:
    #data DAT_ce33d68
PTR_ce3113c:
    #data DAT_ce33d80
PTR_ce31140:
    #data loc_8c2896b0
PTR_ce31144:
    #data loc_8c034e8c
PTR_ce31148:
    #data PTR_ce33f10
PTR_ce3114c:
    #data loc_8c0511e2
PTR_ce31150:
    #data loc_8c052c84

;=============================================

LAB_ce31154:
    mov.w @(DAT_ce31280,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31166
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce31190
    mov.l @r15+,r14

LAB_ce31166:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3116e
    mov.l @r15+,r14

LAB_ce3116e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31288,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31188
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3128c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31188:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce31190:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31288,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311aa
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3128c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce311aa:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce311b2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31288,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311cc
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3128c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce311cc:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce311d4:
    mov.w @(DAT_ce31282,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31290,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce311e8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3120a
    mov.l @(PTR_ce31288,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3121c
    lds.l @r15+,PR
    mov.l @(PTR_ce3128c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3120a:
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31294,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3121c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31222:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31288,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31284,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3127a
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31298,pc),r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31282,pc),r0
    mov.b @(r0,r14),r3
    mov 0x5C,r0
    extu.b r3,r3
    shll2 r3
    shll r3
    add r4,r3
    fmov.s @r3,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31282,pc),r0
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    shll2 r3
    shll r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31286,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3127a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3127a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31280:
    #data 0x01f9
DAT_ce31282:
    #data 0x01a3
DAT_ce31284:
    #data 0x0141
DAT_ce31286:
    #data 0x01d2
    #align4

PTR_ce31288:
    #data loc_8c034dee
PTR_ce3128c:
    #data loc_8c051648
PTR_ce31290:
    #data PTR_ce33f20
PTR_ce31294:
    #data PTR_ce33f2c
PTR_ce31298:
    #data DAT_ce33f38

;=============================================

LAB_ce3129c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3139c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r0
    fldi0 fr2
    fmov.s @(r0,r14),fr3
    fcmp/eq fr2,fr3
    bf LAB_ce312d2
    mov.b @(0x7,r14),r0
    mov r14,r4
    fldi0 fr4
    mov 0x0A,r5
    add 0x01,r0
    mov.l @(PTR_ce313a0,pc),r3
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31392,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    add 0x06,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce312d2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce312d8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3139c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312f2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce313a4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce312f2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce312fa:
    mov.w @(DAT_ce31394,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31314
    mov.l @(PTR_ce313a8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce313ac,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31314:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3131a:
    mov.w @(DAT_ce31394,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3132e
    mov.l @(PTR_ce313b0,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3132e:
    mov.l @(PTR_ce313b4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31396,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x60,r0
    bf LAB_ce31342
    bra LAB_ce31356
    mov 0x00,r0

LAB_ce31342:
    mov.w @(DAT_ce31396,pc),r0
    mov 0x61,r3
    mov.b @(r0,r14),r4
    extu.b r4,r4
    cmp/ge r3,r4
    bf LAB_ce31360
    mov 0x63,r1
    cmp/gt r1,r4
    bt LAB_ce31360
    mov 0x01,r0

LAB_ce31356:
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    bra LAB_ce31404
    mov.l @r15+,r14

LAB_ce31360:
    mov.w @(DAT_ce31398,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31372
    bsr FUN_ce313e2
    mov r14,r4
    bra LAB_ce31376
    nop

LAB_ce31372:
    bsr FUN_ce313c0
    mov r14,r4

LAB_ce31376:
    mov.l @(PTR_ce313b8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3138c
    lds.l @r15+,PR
    mov.l @(PTR_ce313bc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3138c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31392:
    #data 0x01a3
DAT_ce31394:
    #data 0x0201
DAT_ce31396:
    #data 0x01e8
DAT_ce31398:
    #data 0x01fe
    #align4

PTR_ce3139c:
    #data loc_8c034dee
PTR_ce313a0:
    #data loc_8c034e8c
PTR_ce313a4:
    #data loc_8c051648
PTR_ce313a8:
    #data loc_8c050084
PTR_ce313ac:
    #data loc_8c04ff88
PTR_ce313b0:
    #data loc_8c04fea8
PTR_ce313b4:
    #data loc_8c050048
PTR_ce313b8:
    #data loc_8c052ce2
PTR_ce313bc:
    #data loc_8c052dac

;=============================================

FUN_ce313c0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce314dc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313da
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce314e0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce313da:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce313e2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce314dc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313fc
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce314e0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce313fc:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31404:
    mov r4,r3
    mov.l @(PTR_ce314e4,pc),r1
    mov.l r4,@-r15
    mov.w @(0x1c,r3),r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31414:
    mov r4,r3
    mov.l @(PTR_ce314e8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31426:
    mov.w @(DAT_ce314d2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce31466
    fldi0 fr15
    mov.w @(DAT_ce314d2,pc),r0
    mov.l @(PTR_ce314ec,pc),r3
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
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce314f0,pc),r2
    mov r14,r4
    fmov.s @r15+,fr15
    jmp @r2
    mov.l @r15+,r14

LAB_ce31466:
    mov.w @(DAT_ce314d4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31474
    mov.l @(PTR_ce314f4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31474:
    mov.l @(PTR_ce314dc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce314d6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce314ca
    mov.b @(0x6,r14),r0
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
    mova @(DAT_ce314f8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce314d8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce314b0
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce314b0:
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce314fc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x00,r3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce314da,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x28,r0
    mov.w r0,@(0x1e,r14)

LAB_ce314ca:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314d2:
    #data 0x041c
DAT_ce314d4:
    #data 0x0201
DAT_ce314d6:
    #data 0x0141
DAT_ce314d8:
    #data 0x01d2
DAT_ce314da:
    #data 0x01fc
    #align4

PTR_ce314dc:
    #data loc_8c034dee
PTR_ce314e0:
    #data loc_8c05176e
PTR_ce314e4:
    #data PTR_ce33f50
PTR_ce314e8:
    #data PTR_ce33f58
PTR_ce314ec:
    #data loc_8c0511b4
PTR_ce314f0:
    #data loc_8c051648
PTR_ce314f4:
    #data FUN_ce331ba
DAT_ce314f8:
    #data 0x413aaaaa
DAT_ce314fc:
    #data 0xc0cdb6db

;=============================================

LAB_ce31500:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31634,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31628,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3151e
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.l @(PTR_ce31638,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3151e:
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pl r0
    bf LAB_ce31536
    mov.w @(DAT_ce3162a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3155c

LAB_ce31536:
    mov.b @(0x6,r14),r0
    mov r14,r4
    fldi0 fr4
    mov 0x0A,r6
    add 0x01,r0
    mov.l @(PTR_ce3163c,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x0B,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3155c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31562:
    mov.w @(DAT_ce3162c,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31572
    mov.l @(PTR_ce31640,pc),r3
    jmp @r3
    nop

LAB_ce31572:
    mov.l @(PTR_ce31644,pc),r2
    jmp @r2
    nop

LAB_ce31578:
    mov r4,r3
    mov.l @(PTR_ce31648,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3158a:
    mov.w @(DAT_ce3162a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce315ca
    fldi0 fr15
    mov.w @(DAT_ce3162a,pc),r0
    mov.l @(PTR_ce31644,pc),r3
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
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3164c,pc),r2
    mov r14,r4
    fmov.s @r15+,fr15
    jmp @r2
    mov.l @r15+,r14

LAB_ce315ca:
    mov.w @(DAT_ce3162e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce315d8
    mov.l @(PTR_ce31650,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce315d8:
    mov.l @(PTR_ce31634,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31630,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce316ac
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31654,pc),r4
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
    mov.w @(DAT_ce31632,pc),r0
    mov.b r5,@(r0,r14)
    add 0xEC,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x61,r0
    bf LAB_ce31660
    mova @(DAT_ce31658,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3165c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    fmov.s @r4,fr3
    ftrc fr3,FPUL
    sts FPUL,r0
    bra LAB_ce31698
    mov.w r0,@(0x1e,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31628:
    #data 0x0140
DAT_ce3162a:
    #data 0x041c
DAT_ce3162c:
    #data 0x01f9
DAT_ce3162e:
    #data 0x0201
DAT_ce31630:
    #data 0x0141
DAT_ce31632:
    #data 0x01fc
    #align4

PTR_ce31634:
    #data loc_8c034dee
PTR_ce31638:
    #data loc_8c04223a
PTR_ce3163c:
    #data loc_8c034e8c
PTR_ce31640:
    #data loc_8c05176e
PTR_ce31644:
    #data loc_8c051648
PTR_ce31648:
    #data PTR_ce33f64
PTR_ce3164c:
    #data loc_8c0511b4
PTR_ce31650:
    #data FUN_ce331ba
PTR_ce31654:
    #data DAT_ce33f70
DAT_ce31658:
    #data 0x412d5555
DAT_ce3165c:
    #data 0xc0cdb6db

;=============================================

LAB_ce31660:
    mov.w @(DAT_ce31760,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x62,r0
    bf LAB_ce3167e
    mova @(DAT_ce3176c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31770,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    bra LAB_ce31690
    mov 0x04,r0

LAB_ce3167e:
    mova @(DAT_ce31774,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31778,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x08,r0

LAB_ce31690:
    fmov.s @(r0,r4),fr3
    ftrc fr3,FPUL
    sts FPUL,r0
    mov.w r0,@(0x1e,r14)

LAB_ce31698:
    mov.w @(DAT_ce31762,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce316a8
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce316a8:
    mov.w @(DAT_ce31764,pc),r0
    mov.b r5,@(r0,r14)

LAB_ce316ac:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce316b4:
    mov.w @(DAT_ce31766,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce316f4
    mov 0x00,r3
    mov.l @(PTR_ce3177c,pc),r13
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31760,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x61,r0
    bf LAB_ce316de
    mov 0x14,r5
    jsr @r13
    mov r14,r4
    bra LAB_ce316f4
    nop

LAB_ce316de:
    mov.w @(DAT_ce31760,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x62,r0
    bf/s LAB_ce316ee
    mov r14,r4
    bra LAB_ce316f0
    mov 0x15,r5

LAB_ce316ee:
    mov 0x16,r5

LAB_ce316f0:
    jsr @r13
    nop

LAB_ce316f4:
    mov.l @(PTR_ce31780,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce31712
    mov.w @(DAT_ce31768,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce317b4

LAB_ce31712:
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce31784,pc),r13
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3176a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31788
    mov.w @(DAT_ce31760,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x61,r0
    bf LAB_ce31746
    mov 0x0F,r6
    bra LAB_ce31796
    mov 0x0C,r5

LAB_ce31746:
    mov.w @(DAT_ce31760,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x62,r0
    bf/s LAB_ce31756
    mov 0x0C,r5
    bra LAB_ce31758
    mov 0x10,r6

LAB_ce31756:
    mov 0x11,r6

LAB_ce31758:
    jsr @r13
    mov r14,r4
    bra LAB_ce317b4
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31760:
    #data 0x01e8
DAT_ce31762:
    #data 0x01d2
DAT_ce31764:
    #data 0x01fc
DAT_ce31766:
    #data 0x0140
DAT_ce31768:
    #data 0x041c
DAT_ce3176a:
    #data 0x01f9
    #align4

DAT_ce3176c:
    #data 0x40d55555
DAT_ce31770:
    #data 0xc1092492
DAT_ce31774:
    #data 0x40200000
DAT_ce31778:
    #data 0xc13c9249
PTR_ce3177c:
    #data loc_8c04223a
PTR_ce31780:
    #data loc_8c034dee
PTR_ce31784:
    #data loc_8c034e8c

;=============================================

LAB_ce31788:
    mov.w @(DAT_ce317f0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x61,r0
    bf LAB_ce3179e
    mov 0x0C,r6
    mov r6,r5

LAB_ce31796:
    jsr @r13
    mov r14,r4
    bra LAB_ce317b4
    nop

LAB_ce3179e:
    mov.w @(DAT_ce317f0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x62,r0
    bf/s LAB_ce317ae
    mov 0x0C,r5
    bra LAB_ce317b0
    mov 0x0D,r6

LAB_ce317ae:
    mov 0x0E,r6

LAB_ce317b0:
    jsr @r13
    mov r14,r4

LAB_ce317b4:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce317bc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce317f4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce317ea
    mov.w @(DAT_ce317f2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce317e0
    lds.l @r15+,PR
    mov.l @(PTR_ce317f8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce317e0:
    lds.l @r15+,PR
    mov.l @(PTR_ce317fc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce317ea:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce317f0:
    #data 0x01e8
DAT_ce317f2:
    #data 0x01f9
    #align4

PTR_ce317f4:
    #data loc_8c034dee
PTR_ce317f8:
    #data loc_8c05176e
PTR_ce317fc:
    #data loc_8c051648

;=============================================

LAB_ce31800:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31866
    mov.l @(PTR_ce3192c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31930,pc),r2
    mov 0x14,r5
    jsr @r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x16,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce31922,pc),r0
    mov 0x10,r6
    mov.b r3,@(r0,r14)
    add 0x58,r0
    mov.l @(PTR_ce31934,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31938,pc),r2
    mov 0x15,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31924,pc),r0
    mov 0x05,r5
    mov.l @(PTR_ce3193c,pc),r3
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
    mov.l @(PTR_ce31940,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31866:
    mov.w @(DAT_ce31926,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31876
    mov.l @(PTR_ce31944,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31876:
    mov 0x5C,r1
    mov.l @(PTR_ce31948,pc),r3
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
    mov.l @(PTR_ce3194c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce318cc
    lds.l @r15+,PR
    mov.l @(PTR_ce31950,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce318cc:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce318d4:
    mov r4,r3
    mov.l @(PTR_ce31954,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce318e6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3194c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31928,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3197a
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3192a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3195c
    mova @(DAT_ce31958,pc),r0
    bra LAB_ce31960
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31922:
    #data 0x01a1
DAT_ce31924:
    #data 0x01ac
DAT_ce31926:
    #data 0x01ff
DAT_ce31928:
    #data 0x0141
DAT_ce3192a:
    #data 0x01d2
    #align4

PTR_ce3192c:
    #data loc_8c052b4c
PTR_ce31930:
    #data loc_8c042008
PTR_ce31934:
    #data loc_8c034e8c
PTR_ce31938:
    #data loc_8c04223a
PTR_ce3193c:
    #data loc_8c2896b0
PTR_ce31940:
    #data loc_8c056de4
PTR_ce31944:
    #data loc_8c0511e2
PTR_ce31948:
    #data loc_8c052c84
PTR_ce3194c:
    #data loc_8c034dee
PTR_ce31950:
    #data loc_8c051648
PTR_ce31954:
    #data PTR_ce33f7c
DAT_ce31958:
    #data 0x417d5555

;=============================================

LAB_ce3195c:
    mova @(DAT_ce31a90,pc),r0
    fmov.s @r0,fr3

LAB_ce31960:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31a8a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31972
    mova @(DAT_ce31a94,pc),r0
    bra LAB_ce31976
    fmov.s @r0,fr3

LAB_ce31972:
    mova @(DAT_ce31a98,pc),r0
    fmov.s @r0,fr3

LAB_ce31976:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce3197a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31980:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a9c,pc),r3
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
    bf LAB_ce319e2
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    mov.l @(PTR_ce31aa0,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce319e2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce319e8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a9c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31a10
    mov.l @(PTR_ce31aa4,pc),r3
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

LAB_ce31a10:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31a16:
    mov r4,r3
    mov.l @(PTR_ce31aa8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31a28:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a9c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31a8c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31ab0
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31a8a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31a64
    mova @(DAT_ce31a90,pc),r0
    bra LAB_ce31a68
    fmov.s @r0,fr3

LAB_ce31a64:
    mova @(DAT_ce31aac,pc),r0
    fmov.s @r0,fr3

LAB_ce31a68:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31a8a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31a7a
    mova @(DAT_ce31a98,pc),r0
    bra LAB_ce31a7e
    fmov.s @r0,fr3

LAB_ce31a7a:
    mova @(DAT_ce31a94,pc),r0
    fmov.s @r0,fr3

LAB_ce31a7e:
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce31ab6
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a8a:
    #data 0x01d2
DAT_ce31a8c:
    #data 0x0141
    #align4

DAT_ce31a90:
    #data 0xc17d5555
DAT_ce31a94:
    #data 0xbea00000
DAT_ce31a98:
    #data 0x3ea00000
PTR_ce31a9c:
    #data loc_8c034dee
PTR_ce31aa0:
    #data loc_8c034e8c
PTR_ce31aa4:
    #data loc_8c051648
PTR_ce31aa8:
    #data PTR_ce33f88
DAT_ce31aac:
    #data 0x417d5555

;=============================================

LAB_ce31ab0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31ab6:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31bfc,pc),r3
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
    bf LAB_ce31b1a
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31c00,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b1a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b20:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31bfc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b48
    mov.l @(PTR_ce31c04,pc),r3
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

LAB_ce31b48:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b4e:
    mov r4,r3
    mov.l @(PTR_ce31c08,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31b60:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31bf4,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce31c00,pc),r3
    jmp @r3
    mov 0x12,r5

LAB_ce31b74:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31bfc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b90
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b90:
    mov.w @(DAT_ce31bf6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31ba6
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31c0c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ba6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31bac:
    mov.w @(DAT_ce31bf8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce31c10,pc),r3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce31bce
    lds.l @r15+,PR
    mov.l @(PTR_ce31c04,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31bce:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31c14,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31be2:
    mov r4,r3
    mov.l @(PTR_ce31c18,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31bf4:
    #data 0x012c
DAT_ce31bf6:
    #data 0x0141
DAT_ce31bf8:
    #data 0x041c
    #align4

PTR_ce31bfc:
    #data loc_8c034dee
PTR_ce31c00:
    #data loc_8c034e8c
PTR_ce31c04:
    #data loc_8c051648
PTR_ce31c08:
    #data PTR_ce33f94
PTR_ce31c0c:
    #data loc_8c097378
PTR_ce31c10:
    #data loc_8c046c8a
PTR_ce31c14:
    #data PTR_ce33f9c
PTR_ce31c18:
    #data PTR_ce33fb0

;=============================================

LAB_ce31c1c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31d24,pc),r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31c42
    mov 0x13,r5
    mov 0x03,r6
    jsr @r13
    mov r14,r4
    bra LAB_ce31c76
    nop

LAB_ce31c42:
    mov.l @(PTR_ce31d28,pc),r2
    jsr @r2
    nop
    and 0x03,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/eq 0x00,r0
    bt LAB_ce31c62
    cmp/eq 0x01,r0
    bt LAB_ce31c66
    cmp/eq 0x02,r0
    bt LAB_ce31c6a
    cmp/eq 0x03,r0
    bt LAB_ce31c6e
    bra LAB_ce31c76
    nop

LAB_ce31c62:
    bra LAB_ce31c70
    mov 0x00,r6

LAB_ce31c66:
    bra LAB_ce31c70
    mov 0x01,r6

LAB_ce31c6a:
    bra LAB_ce31c70
    mov 0x01,r6

LAB_ce31c6e:
    mov 0x02,r6

LAB_ce31c70:
    mov 0x13,r5
    jsr @r13
    mov r14,r4

LAB_ce31c76:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31c7e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31d2c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31d20,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31ce6
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31cac
    mov 0x06,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x21,r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce31cac:
    mova @(DAT_ce31d30,pc),r0
    fmov.s @r0,fr4
    mov 0x21,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31cc0
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce31cc6
    fadd fr4,fr3

LAB_ce31cc0:
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    fsub fr4,fr3

LAB_ce31cc6:
    fmov fr3,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31ce6
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x21,r0
    mov.b @(r0,r14),r0
    mov 0x21,r1
    add r14,r1
    xor 0x01,r0
    mov.b r0,@r1

LAB_ce31ce6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31cec:
    mov.l @(PTR_ce31d2c,pc),r3
    jmp @r3
    nop

LAB_ce31cf2:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31d06
    mov.b @(0x6,r4),r0
    mov 0x04,r6
    mov.l @(PTR_ce31d24,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31d06:
    mov.l @(PTR_ce31d2c,pc),r3
    jmp @r3
    nop

LAB_ce31d0c:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31d34
    mov.b @(0x6,r4),r0
    mov 0x05,r6
    mov.l @(PTR_ce31d24,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d20:
    #data 0x0141
    #align4

PTR_ce31d24:
    #data loc_8c034e8c
PTR_ce31d28:
    #data loc_8c03319e
PTR_ce31d2c:
    #data loc_8c034dee
DAT_ce31d30:
    #data 0x40092492

;=============================================

LAB_ce31d34:
    mov.l @(PTR_ce31e80,pc),r3
    jmp @r3
    nop

LAB_ce31d3a:
    mov.w @(DAT_ce31e72,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31e70,pc),r3
    mov r14,r4
    mov.l @(PTR_ce31e84,pc),r2
    add r14,r3
    mov.l r3,@r2
    mov.b @(r0,r14),r1
    mov.l @(PTR_ce31e88,pc),r0
    extu.b r1,r1
    shll2 r1
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;=============================================

FUN_ce31d58:
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
    mov.w @(DAT_ce31e74,pc),r0
    mov.l @(PTR_ce31e8c,pc),r3
    mov.b r5,@(r0,r4)
    add 0xFD,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce31e76,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce31d80:
    mov.w @(DAT_ce31e78,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31df0
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
    mov.w @(DAT_ce31e76,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31df0
    mov.w @(DAT_ce31e76,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x21,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31df0
    mov.l @(PTR_ce31e90,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x21,r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce31df0:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31e94,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e02:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x42,r3
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31e7a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31e98,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31e9c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31e8c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31e78,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31ea4
    bsr FUN_ce31d58
    mov r14,r4
    mov.l @(PTR_ce31ea0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31e72,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x07,r0
    bf LAB_ce31e6a
    mov.w @(DAT_ce31e7c,pc),r0
    mov 0x0B,r2
    bra LAB_ce31eda
    mov.b r2,@(r0,r14)

LAB_ce31e6a:
    mov.w @(DAT_ce31e7c,pc),r0
    bra LAB_ce31eda
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e70:
    #data 0x02a4
DAT_ce31e72:
    #data 0x01e9
DAT_ce31e74:
    #data 0x01fc
DAT_ce31e76:
    #data 0x041c
DAT_ce31e78:
    #data 0x01f9
DAT_ce31e7a:
    #data 0x01a1
DAT_ce31e7c:
    #data 0x0158
    #align4

PTR_ce31e80:
    #data loc_8c034dee
PTR_ce31e84:
    #data DAT_ce34108
PTR_ce31e88:
    #data PTR_ce33fbc
PTR_ce31e8c:
    #data loc_8c05218a
PTR_ce31e90:
    #data loc_8c0511b4
PTR_ce31e94:
    #data PTR_ce33ff4
PTR_ce31e98:
    #data loc_8c2896b0
PTR_ce31e9c:
    #data loc_8c056de4
PTR_ce31ea0:
    #data loc_8c05115a

;=============================================

LAB_ce31ea4:
    mov.l @(DAT_ce31fe4,pc),r1
    mov 0x07,r2
    mov.w @(DAT_ce31fd6,pc),r0
    lds r1,FPUL
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fdiv fr3,fr2
    mov.l @(DAT_ce31fe8,pc),r1
    lds r1,FPUL
    mov.l @(DAT_ce31fec,pc),r1
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr1
    fsts FPUL,fr2
    fdiv fr2,fr1
    lds r1,FPUL
    fsts FPUL,fr3
    fmov fr1,@(r0,r14)
    mov 0x68,r0
    fldi0 fr1
    fmov fr1,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr1
    fdiv fr3,fr1
    fmov fr1,@(r0,r14)

LAB_ce31eda:
    lds.l @r15+,PR
    mov.w @(DAT_ce31fd6,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31ff0,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31eec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ff4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31f24
    mov.w @(DAT_ce31fd8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31f10
    lds.l @r15+,PR
    mov.l @(PTR_ce31ff8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31f10:
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31ffc,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f24:
    mov.w @(DAT_ce31fda,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f44
    mov.l @(PTR_ce32000,pc),r2
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.l @r2,r3
    mov r4,r0
    nop
    mov.b r0,@(0x3,r3)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32004,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f44:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f4a:
    mov r4,r3
    mov.l @(PTR_ce32008,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31f5c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3200c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce31d58
    mov r14,r4
    mov.l @(PTR_ce32010,pc),r3
    mov 0x16,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31fdc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce31f8c
    mov 0x00,r4
    mov.w @(DAT_ce31fde,pc),r0
    mov 0x45,r3
    bra LAB_ce31f92
    mov.b r3,@(r0,r14)

LAB_ce31f8c:
    mov.w @(DAT_ce31fde,pc),r0
    mov 0x4F,r2
    mov.b r2,@(r0,r14)

LAB_ce31f92:
    mov.w @(DAT_ce31fe0,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce32014,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce32018,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3201c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31fdc,pc),r0
    mov 0x15,r5
    mov r14,r4
    mov.b @(r0,r14),r3
    add 0xB5,r0
    add 0x01,r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31ff0,pc),r3
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31fd6:
    #data 0x0158
DAT_ce31fd8:
    #data 0x01f9
DAT_ce31fda:
    #data 0x0141
DAT_ce31fdc:
    #data 0x01a3
DAT_ce31fde:
    #data 0x01a1
DAT_ce31fe0:
    #data 0x01ac
    #align4

DAT_ce31fe4:
    #data 0x41800000
DAT_ce31fe8:
    #data 0x41000000
DAT_ce31fec:
    #data 0x42800000
PTR_ce31ff0:
    #data loc_8c034e8c
PTR_ce31ff4:
    #data loc_8c034dee
PTR_ce31ff8:
    #data loc_8c051648
PTR_ce31ffc:
    #data loc_8c05176e
PTR_ce32000:
    #data DAT_ce34108
PTR_ce32004:
    #data loc_8c096e08
PTR_ce32008:
    #data PTR_ce33ffc
PTR_ce3200c:
    #data loc_8c05115a
PTR_ce32010:
    #data loc_8c042008
PTR_ce32014:
    #data loc_8c2896b0
PTR_ce32018:
    #data loc_8c056de4
PTR_ce3201c:
    #data loc_8c05218a

;=============================================

LAB_ce32020:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32148,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3213e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3203e
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3213e,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce3203e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32044:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32148,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3213e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32076
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce3214c,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3213e,pc),r0
    mov.b r4,@(r0,r14)
    mov.l @r2,r3
    mov r4,r0
    nop
    mov.b r0,@(0x2,r3)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32150,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32076:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3207c:
    mov.l @(PTR_ce3214c,pc),r2
    mov.l @r2,r3
    mov.b @(0x2,r3),r0
    tst r0,r0
    bt LAB_ce3208c
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce3208c:
    rts
    nop

;=============================================

FUN_ce32090:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32148,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce320aa
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32154,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce320aa:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce320b2:
    mov r4,r3
    mov.l @(PTR_ce32158,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce320c4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3215c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce31d58
    mov r14,r4
    mov.l @(PTR_ce32160,pc),r3
    mov 0x17,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32140,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce320f4
    mov 0x00,r4
    mov.w @(DAT_ce32142,pc),r0
    mov 0x46,r3
    bra LAB_ce320fa
    mov.b r3,@(r0,r14)

LAB_ce320f4:
    mov.w @(DAT_ce32142,pc),r0
    mov 0x50,r2
    mov.b r2,@(r0,r14)

LAB_ce320fa:
    mov.w @(DAT_ce32144,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce32164,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce32168,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3216c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32140,pc),r0
    mov 0x15,r5
    mov r14,r4
    mov.b @(r0,r14),r3
    add 0xB5,r0
    add 0x03,r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce32170,pc),r3
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3213e:
    #data 0x0141
DAT_ce32140:
    #data 0x01a3
DAT_ce32142:
    #data 0x01a1
DAT_ce32144:
    #data 0x01ac
    #align4

PTR_ce32148:
    #data loc_8c034dee
PTR_ce3214c:
    #data DAT_ce34108
PTR_ce32150:
    #data loc_8c097060
PTR_ce32154:
    #data loc_8c051648
PTR_ce32158:
    #data PTR_ce34010
PTR_ce3215c:
    #data loc_8c05115a
PTR_ce32160:
    #data loc_8c042008
PTR_ce32164:
    #data loc_8c2896b0
PTR_ce32168:
    #data loc_8c056de4
PTR_ce3216c:
    #data loc_8c05218a
PTR_ce32170:
    #data loc_8c034e8c

;=============================================

LAB_ce32174:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3225c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32254,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce321a6
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32260,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32254,pc),r0
    mov.b r4,@(r0,r14)
    mov.l @r2,r3
    mov r4,r0
    nop
    mov.b r0,@(0x2,r3)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32264,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce321a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce321ac:
    mov.l @(PTR_ce32260,pc),r2
    mov.l @r2,r3
    mov.b @(0x2,r3),r0
    tst r0,r0
    bt LAB_ce321bc
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce321bc:
    rts
    nop

;=============================================

FUN_ce321c0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3225c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321da
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32268,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce321da:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce321e2:
    mov.w @(DAT_ce32256,pc),r0
    mov 0x03,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3226c,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce321fc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32258,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32214
    bsr FUN_ce331ba
    mov r14,r4

LAB_ce32214:
    mov.w @(DAT_ce3225a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3222c
    mov.l @(PTR_ce32270,pc),r2
    jsr @r2
    mov r14,r4
    bsr FUN_ce31d58
    mov r14,r4
    bra LAB_ce32246
    nop

LAB_ce3222c:
    mov.w @(DAT_ce3225a,pc),r0
    mov 0x02,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0xDB,r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov 0x11,r3
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)

LAB_ce32246:
    lds.l @r15+,PR
    mov.l @(PTR_ce32274,pc),r3
    mov r14,r4
    mov 0x05,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32254:
    #data 0x0141
DAT_ce32256:
    #data 0x0324
DAT_ce32258:
    #data 0x0201
DAT_ce3225a:
    #data 0x01f9
    #align4

PTR_ce3225c:
    #data loc_8c034dee
PTR_ce32260:
    #data DAT_ce34108
PTR_ce32264:
    #data loc_8c097504
PTR_ce32268:
    #data loc_8c051648
PTR_ce3226c:
    #data PTR_ce34020
PTR_ce32270:
    #data loc_8c05115a
PTR_ce32274:
    #data loc_8c034e8c

;=============================================

LAB_ce32278:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce323a4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3230a
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x00,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32398,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3239a,pc),r0
    mov.w @(DAT_ce3239c,pc),r3
    mov.b r2,@(r0,r14)
    add 0x1D,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3239e,pc),r0
    mov.l @(r0,r14),r4
    add 0x97,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce322b4
    mova @(DAT_ce323a8,pc),r0
    fmov.s @r0,fr4

LAB_ce322b4:
    mov.w @(DAT_ce323a0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce322c2
    mova @(DAT_ce323ac,pc),r0
    fmov.s @r0,fr4

LAB_ce322c2:
    mov.w @(DAT_ce323a0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce322d0
    mova @(DAT_ce323b0,pc),r0
    fmov.s @r0,fr4

LAB_ce322d0:
    mov.w @(DAT_ce323a0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce322de
    mova @(DAT_ce323b4,pc),r0
    fmov.s @r0,fr4

LAB_ce322de:
    mov.w @(DAT_ce323a2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce322ea
    mov 0x34,r0
    fneg fr4

LAB_ce322ea:
    fmov.s @(r0,r4),fr3
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce323b8,pc),r0
    fadd fr4,fr3
    fldi0 fr4
    fsub fr2,fr3
    fmov.s @r0,fr2
    mov 0x5C,r0
    fdiv fr2,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce3230a:
    lds.l @r15+,PR
    mov.l @(PTR_ce323bc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32314:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    mov 0x01,r4
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
    mov.w @(DAT_ce32398,pc),r0
    mov.w @(DAT_ce3239c,pc),r3
    mov.b r4,@(r0,r14)
    mov r3,r0
    nop
    add 0x4A,r0
    mov.b r3,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32392
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    fldi0 fr3
    mov 0x06,r6
    add 0x01,r0
    mov.l @(PTR_ce323c0,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3239a,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce323c4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32392:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32398:
    #data 0x01f5
DAT_ce3239a:
    #data 0x012c
DAT_ce3239c:
    #data 0x00ff
DAT_ce3239e:
    #data 0x020c
DAT_ce323a0:
    #data 0x01a3
DAT_ce323a2:
    #data 0x01d2
    #align4

PTR_ce323a4:
    #data loc_8c034dee
DAT_ce323a8:
    #data 0x43200000
DAT_ce323ac:
    #data 0xc3200000
DAT_ce323b0:
    #data 0x43d55555
DAT_ce323b4:
    #data 0xc3d55555
DAT_ce323b8:
    #data 0x41800000
PTR_ce323bc:
    #data LAB_ce33cc4
PTR_ce323c0:
    #data loc_8c034e8c
PTR_ce323c4:
    #data loc_8c05218a

;=============================================

LAB_ce323c8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce324b0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3240a
    mov.w @(DAT_ce324a2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32404
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
    mov.w @(DAT_ce324a4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce324b4,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce3240a
    nop

LAB_ce32404:
    mov.l @(PTR_ce324b8,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3240a:
    lds.l @r15+,PR
    mov.l @(PTR_ce324bc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32414:
    mov r4,r3
    mov.l @(PTR_ce324c0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32426:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce324a6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce3244c
    mov r14,r4
    mov.w @(DAT_ce324aa,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce324a8,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3244c:
    mov.l @(PTR_ce324c4,pc),r3
    jsr @r3
    nop
    bsr FUN_ce31d58
    mov r14,r4
    mov.w @(DAT_ce324ac,pc),r0
    mov 0x42,r3
    mov 0x00,r13
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce324c8,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce324cc,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x03,r0
    mov.w r0,@(0x1c,r14)
    mov r13,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov 0x20,r0
    mov 0x60,r3
    mov r13,r6
    mov.b r3,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce324d0,pc),r3
    mov 0x16,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce324a2:
    #data 0x01f9
DAT_ce324a4:
    #data 0x0324
DAT_ce324a6:
    #data 0x0255
DAT_ce324a8:
    #data 0x00ff
DAT_ce324aa:
    #data 0x03f0
DAT_ce324ac:
    #data 0x01a1
    #align4

PTR_ce324b0:
    #data loc_8c034dee
PTR_ce324b4:
    #data loc_8c051648
PTR_ce324b8:
    #data loc_8c05176e
PTR_ce324bc:
    #data LAB_ce33cc4
PTR_ce324c0:
    #data PTR_ce34030
PTR_ce324c4:
    #data loc_8c05115a
PTR_ce324c8:
    #data loc_8c2896b0
PTR_ce324cc:
    #data loc_8c05218a
PTR_ce324d0:
    #data loc_8c034e8c

;=============================================

LAB_ce324d4:
    mov.w @(DAT_ce325c8,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce325ca,pc),r0
    mov.l @(PTR_ce325d8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce325cc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3253a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov.l @(PTR_ce325dc,pc),r4
    mov 0x02,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce325cc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @r4,r3
    mov.w @(DAT_ce325ce,pc),r0
    mov.b r2,@r3
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32524
    mov.w @(DAT_ce325d0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x04,r0
    bt LAB_ce32524
    mov.w @(DAT_ce325d0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bf LAB_ce32534

LAB_ce32524:
    mov 0x22,r0
    mov 0x07,r2
    mov.b r2,@(r0,r14)
    mov 0xFF,r0
    mov.l @r4,r3
    mov.b r0,@(0x1,r3)
    bra LAB_ce3253a
    nop

LAB_ce32534:
    mov 0x22,r0
    mov 0x05,r2
    mov.b r2,@(r0,r14)

LAB_ce3253a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32540:
    mov.w @(DAT_ce325c8,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.l @(PTR_ce325dc,pc),r5
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce325ca,pc),r0
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce325ce,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce3256c
    mov.l @r5,r6
    mov.w @(DAT_ce325d0,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x04,r0
    bt LAB_ce3256c
    mov.w @(DAT_ce325d0,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x05,r0
    bf LAB_ce325a6

LAB_ce3256c:
    mov.b @r6,r2
    add 0xFF,r2
    mov.b r2,@r6
    exts.b r2,r2
    tst r2,r2
    bf LAB_ce325c4
    mov.l @r5,r6
    mov.b @(0x1,r6),r0
    mov r0,r6
    mov 0x22,r0
    mov.b @(r0,r4),r3
    add r6,r3
    mov.b r3,@(r0,r4)
    mov 0x07,r3
    mov.b @(r0,r4),r6
    extu.b r6,r6
    cmp/gt r3,r6
    bt LAB_ce32596
    mov 0x03,r1
    cmp/ge r1,r6
    bt LAB_ce3260e

LAB_ce32596:
    mov.l @r5,r2
    mov 0xFF,r3
    mov.b @(0x1,r2),r0
    muls.w r3,r0
    sts MACL,r0
    mov.b r0,@(0x1,r2)
    bra LAB_ce3260e
    nop

LAB_ce325a6:
    mov.w @(DAT_ce325d2,pc),r0
    mov.w @(r0,r4),r3
    add 0xFE,r0
    mov.w @(r0,r4),r5
    and r3,r5
    mov.w @(DAT_ce325d4,pc),r3
    extu.w r5,r5
    tst r3,r5
    bt LAB_ce3260e
    mov.b @r6,r1
    add 0xFF,r1
    mov.b r1,@r6
    exts.b r1,r1
    tst r1,r1
    bt LAB_ce325e0

LAB_ce325c4:
    bra LAB_ce3261a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325c8:
    #data 0x03f8
DAT_ce325ca:
    #data 0x0328
DAT_ce325cc:
    #data 0x0141
DAT_ce325ce:
    #data 0x0525
DAT_ce325d0:
    #data 0x0255
DAT_ce325d2:
    #data 0x034c
DAT_ce325d4:
    #data 0x3000
    #align4

PTR_ce325d8:
    #data loc_8c034dee
PTR_ce325dc:
    #data DAT_ce34108

;=============================================

LAB_ce325e0:
    mov.w @(DAT_ce326f4,pc),r0
    mov.w @(DAT_ce326f6,pc),r2
    mov.w @(r0,r4),r1
    extu.w r1,r1
    tst r2,r1
    bt LAB_ce325fc
    mov 0x22,r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3260e
    mov.b @(r0,r4),r3
    add 0xFF,r3
    bra LAB_ce3260e
    mov.b r3,@(r0,r4)

LAB_ce325fc:
    mov 0x22,r0
    mov.b @(r0,r4),r1
    mov 0x09,r3
    extu.b r1,r1
    cmp/ge r3,r1
    bt LAB_ce3260e
    mov.b @(r0,r4),r1
    add 0x01,r1
    mov.b r1,@(r0,r4)

LAB_ce3260e:
    bra LAB_ce32612
    nop

LAB_ce32612:
    mov.l @(PTR_ce32700,pc),r2
    mov 0x02,r1
    mov.l @r2,r3
    mov.b r1,@r3

LAB_ce3261a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l @(PTR_ce32700,pc),r13
    sts.l PR,@-r15
    mov.l @r13,r3
    mov r3,r0
    nop
    mov 0x04,r1
    mov.b @(r0,r1),r2
    add r0,r1
    add 0x01,r2
    extu.b r2,r0
    mov.b r2,@r1
    add 0x04,r0
    cmp/pz r0
    bf/s LAB_ce32640
    mov r4,r14
    bra LAB_ce3264a
    and 0x03,r0

LAB_ce32640:
    not r0,r0
    add 0x01,r0
    and 0x03,r0
    not r0,r0
    add 0x01,r0

LAB_ce3264a:
    mov.b r0,@(0x4,r3)
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce32682
    mov 0x22,r0
    mov.l @r13,r6
    mov.b @(r0,r14),r5
    mov.l @(PTR_ce32704,pc),r0
    extu.b r5,r5
    mov.l @(PTR_ce32708,pc),r3
    mov.b @(r0,r5),r5
    mov.b @(0x5,r6),r0
    mov r0,r6
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce32682
    mov.l @r13,r3
    mov r3,r0
    nop
    mov 0x05,r1
    mov.b @(r0,r1),r2
    add r0,r1
    mov 0x03,r0
    add 0x01,r2
    and r2,r0
    mov.b r2,@r1
    mov.b r0,@(0x5,r3)

LAB_ce32682:
    mov.l @(PTR_ce3270c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x20,r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)
    extu.b r2,r2
    tst r2,r2
    bf LAB_ce326ba
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce326f8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce326ac
    mov 0x16,r5
    bra LAB_ce326ae
    mov 0x02,r6

LAB_ce326ac:
    mov 0x05,r6

LAB_ce326ae:
    lds.l @r15+,PR
    mov.l @(PTR_ce32710,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce326ba:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce326c2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3270c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce326ee
    mov.w @(DAT_ce326fa,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32714,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce326fc,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce326ee:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326f4:
    #data 0x034a
DAT_ce326f6:
    #data 0x2000
DAT_ce326f8:
    #data 0x01f9
DAT_ce326fa:
    #data 0x03f9
DAT_ce326fc:
    #data 0x0327
    #align4

PTR_ce32700:
    #data DAT_ce34108
PTR_ce32704:
    #data DAT_ce34044
PTR_ce32708:
    #data loc_8c09781c
PTR_ce3270c:
    #data loc_8c034dee
PTR_ce32710:
    #data loc_8c034e8c
PTR_ce32714:
    #data loc_8c051648

;=============================================

LAB_ce32718:
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
    mov.w @(DAT_ce32852,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3277e
    mov.w @(DAT_ce32852,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x21,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3277e
    mov.l @(PTR_ce32860,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x21,r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce3277e:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32864,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32790:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32854,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce327b2
    mov.w @(DAT_ce32858,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32856,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce327b2:
    mov.w @(DAT_ce3285a,pc),r0
    mov 0x42,r2
    mov 0x00,r4
    mov.l @(PTR_ce32868,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x0A,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3286c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32870,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x03,r0
    mov.l @(DAT_ce32874,pc),r1
    mov.w r0,@(0x1c,r14)
    mov 0x20,r0
    mov 0x60,r3
    lds r1,FPUL
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mov r3,r0
    nop
    mov.l @(DAT_ce32878,pc),r1
    mov r14,r4
    fmov.s @(r0,r14),fr1
    mov 0x04,r6
    lds r1,FPUL
    mov 0x16,r5
    mov.l @(DAT_ce3287c,pc),r1
    mov.l @(PTR_ce32880,pc),r3
    fsts FPUL,fr2
    fdiv fr2,fr1
    lds r1,FPUL
    fsts FPUL,fr3
    fmov fr1,@(r0,r14)
    mov 0x68,r0
    fldi0 fr1
    fmov fr1,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr1
    fdiv fr3,fr1
    fmov fr1,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32830:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3285c,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3285e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32854,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32884
    bra LAB_ce32886
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32852:
    #data 0x041c
DAT_ce32854:
    #data 0x0255
DAT_ce32856:
    #data 0x00ff
DAT_ce32858:
    #data 0x03f0
DAT_ce3285a:
    #data 0x01a1
DAT_ce3285c:
    #data 0x03f8
DAT_ce3285e:
    #data 0x0328
    #align4

PTR_ce32860:
    #data loc_8c0511b4
PTR_ce32864:
    #data PTR_ce34054
PTR_ce32868:
    #data loc_8c2896b0
PTR_ce3286c:
    #data loc_8c056de4
PTR_ce32870:
    #data loc_8c05218a
DAT_ce32874:
    #data 0x41800000
DAT_ce32878:
    #data 0x41000000
DAT_ce3287c:
    #data 0x42800000
PTR_ce32880:
    #data loc_8c034e8c

;=============================================

LAB_ce32884:
    mov 0x00,r3

LAB_ce32886:
    mov.w @(DAT_ce32982,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32998,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32984,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce328ce
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov r14,r2
    mov.l @(PTR_ce3299c,pc),r3
    add 0x01,r0
    mov r15,r1
    mov.b r0,@(0x6,r14)
    add 0x34,r2
    mov.w @(DAT_ce32984,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32986,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov 0x0C,r0
    fldi0 fr3
    mova @(DAT_ce329a0,pc),r0
    fmov.s fr3,@r15
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce329a4,pc),r3
    mov 0x01,r6
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce328ce:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce328d6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32998,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32902
    mov.w @(DAT_ce32988,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce329a8,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3298a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32902:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32908:
    mov r4,r3
    mov.l @(PTR_ce329ac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3291a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3298c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce3293e
    mov r14,r4
    mov.w @(DAT_ce32986,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3298e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3293e:
    mov.l @(PTR_ce329b0,pc),r3
    jsr @r3
    nop
    bsr FUN_ce31d58
    mov r14,r4
    mov.w @(DAT_ce32990,pc),r0
    mov r14,r4
    mov.l @(PTR_ce329b4,pc),r2
    mov 0x01,r6
    mov.b @(r0,r14),r1
    mov 0x16,r5
    mov.l @r2,r3
    mov.b r1,@r3
    lds.l @r15+,PR
    mov.l @(PTR_ce329b8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32960:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32992,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32994,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3298c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce329bc
    bra LAB_ce329be
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32982:
    #data 0x03f1
DAT_ce32984:
    #data 0x0141
DAT_ce32986:
    #data 0x03f0
DAT_ce32988:
    #data 0x03f9
DAT_ce3298a:
    #data 0x0327
DAT_ce3298c:
    #data 0x0255
DAT_ce3298e:
    #data 0x00ff
DAT_ce32990:
    #data 0x01a3
DAT_ce32992:
    #data 0x03f8
DAT_ce32994:
    #data 0x0328
    #align4

PTR_ce32998:
    #data loc_8c034dee
PTR_ce3299c:
    #data loc_8c1294c8
DAT_ce329a0:
    #data 0x4340db6d
PTR_ce329a4:
    #data loc_8c050834
PTR_ce329a8:
    #data loc_8c05176e
PTR_ce329ac:
    #data PTR_ce34068
PTR_ce329b0:
    #data loc_8c05115a
PTR_ce329b4:
    #data DAT_ce34108
PTR_ce329b8:
    #data loc_8c034e8c

;=============================================

LAB_ce329bc:
    mov 0x00,r3

LAB_ce329be:
    mov.w @(DAT_ce32a76,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32a84,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32a78,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32a08
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov r14,r2
    mov.l @(PTR_ce32a88,pc),r3
    add 0x01,r0
    mov r15,r1
    mov.b r0,@(0x6,r14)
    add 0x34,r2
    mov.w @(DAT_ce32a78,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32a7a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov 0x0C,r0
    mova @(DAT_ce32a8c,pc),r0
    mov.l @(PTR_ce32a94,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32a90,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32a08:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a10:
    mov.w @(DAT_ce32a7c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32a7e,pc),r0
    mov.l @(PTR_ce32a84,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32a78,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32a70
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x02,r3
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32a80,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32a98,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32a9c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32a82,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32a68
    mova @(DAT_ce32aa0,pc),r0
    bra LAB_ce32a6c
    fmov.s @r0,fr3

LAB_ce32a68:
    mova @(DAT_ce32aa4,pc),r0
    fmov.s @r0,fr3

LAB_ce32a6c:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce32a70:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a76:
    #data 0x03f1
DAT_ce32a78:
    #data 0x0141
DAT_ce32a7a:
    #data 0x03f0
DAT_ce32a7c:
    #data 0x03f8
DAT_ce32a7e:
    #data 0x0328
DAT_ce32a80:
    #data 0x01f9
DAT_ce32a82:
    #data 0x01d2
    #align4

PTR_ce32a84:
    #data loc_8c034dee
PTR_ce32a88:
    #data loc_8c1294c8
DAT_ce32a8c:
    #data 0x40555555
DAT_ce32a90:
    #data 0x43160000
PTR_ce32a94:
    #data loc_8c050834
DAT_ce32a98:
    #data 0x41200000
DAT_ce32a9c:
    #data 0xbea00000
DAT_ce32aa0:
    #data 0x3fa00000
DAT_ce32aa4:
    #data 0xbfa00000

;=============================================

LAB_ce32aa8:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32be4,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32be6,pc),r0
    mov.l @(PTR_ce32bf4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce32bf8,pc),r3
    add r14,r1
    fldi0 fr15
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
    bt LAB_ce32b40
    mov 0x5C,r0
    mov.l @(PTR_ce32bfc,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce32be8,pc),r0
    mov 0x16,r5
    mov 0x03,r6
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32bea,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce32bb8
    nop

LAB_ce32b40:
    mov.w @(DAT_ce32bec,pc),r0
    mov.b @(r0,r14),r3
    add 0xF6,r0
    tst r3,r3
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32bb8
    mov.l @(PTR_ce32c00,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32bb8
    mov r0,r5
    mov.w @(DAT_ce32bf0,pc),r0
    mov.w @(DAT_ce32bee,pc),r3
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32c04,pc),r3
    add 0x02,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32c08,pc),r0
    mov.l @(PTR_ce32c10,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32c0c,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32bf2,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce32c14,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    mov.l @(PTR_ce32bfc,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov 0x02,r0
    mov.w r0,@(0x1c,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce32c18,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x0F,r5
    fmov fr3,@(r0,r14)
    mov 0x02,r6
    jsr @r3
    mov r14,r4

LAB_ce32bb8:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32bc2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32bf4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32bdc
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32c1c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32bdc:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32be4:
    #data 0x03f8
DAT_ce32be6:
    #data 0x0328
DAT_ce32be8:
    #data 0x03f9
DAT_ce32bea:
    #data 0x0327
DAT_ce32bec:
    #data 0x014b
DAT_ce32bee:
    #data 0x00c4
DAT_ce32bf0:
    #data 0x01f7
DAT_ce32bf2:
    #data 0x01a0
    #align4

PTR_ce32bf4:
    #data loc_8c034dee
PTR_ce32bf8:
    #data loc_8c052ce2
PTR_ce32bfc:
    #data loc_8c034e8c
PTR_ce32c00:
    #data loc_8c045790
PTR_ce32c04:
    #data loc_8c0523d8
DAT_ce32c08:
    #data 0xc2a00000
DAT_ce32c0c:
    #data 0x431a4924
PTR_ce32c10:
    #data loc_8c103660
PTR_ce32c14:
    #data loc_8c056f2a
DAT_ce32c18:
    #data 0xbf892492
PTR_ce32c1c:
    #data loc_8c051648

;=============================================

LAB_ce32c20:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32d70,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov 0x01,r2
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32d72,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32d74,pc),r0
    mov.l @(PTR_ce32d7c,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
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
    mov.w @(DAT_ce32d76,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32ce4
    mov.w @(DAT_ce32d76,pc),r0
    mov 0x00,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d78,pc),r0
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32d80,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32d84,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d7a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32cbc
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32cbc:
    mova @(DAT_ce32d88,pc),r0
    mov.l @(PTR_ce32d90,pc),r3
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x05,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32d8c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov r6,r5
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32d94,pc),r2
    mov r14,r4
    mov 0x08,r6
    mov 0x0F,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32ce4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32cea:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32d70,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov 0x01,r2
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32d72,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32d74,pc),r0
    mov.l @(PTR_ce32d7c,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
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
    mova @(DAT_ce32d98,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32d6a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x10,r0
    mov.w r0,@(0x1e,r14)
    mova @(DAT_ce32d9c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32da0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32d6a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d70:
    #data 0x03f8
DAT_ce32d72:
    #data 0x0328
DAT_ce32d74:
    #data 0x01ea
DAT_ce32d76:
    #data 0x041c
DAT_ce32d78:
    #data 0x01f9
DAT_ce32d7a:
    #data 0x01d2
    #align4

PTR_ce32d7c:
    #data loc_8c034dee
PTR_ce32d80:
    #data loc_8c0511b4
DAT_ce32d84:
    #data 0x40555555
DAT_ce32d88:
    #data 0x42092492
DAT_ce32d8c:
    #data 0xbf892492
PTR_ce32d90:
    #data loc_8c02fec4
PTR_ce32d94:
    #data loc_8c034e8c
DAT_ce32d98:
    #data 0x3f092492
DAT_ce32d9c:
    #data 0x40092492
DAT_ce32da0:
    #data 0xbe092492

;=============================================

LAB_ce32da4:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32ea6,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov 0x01,r2
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32ea8,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32eaa,pc),r0
    mov.l @(PTR_ce32eac,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
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
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32e1c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32eb0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32e1c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e22:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32ea6,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov 0x01,r2
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32ea8,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32eaa,pc),r0
    mov.l @(PTR_ce32eac,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce32eb4,pc),r3
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
    bt LAB_ce32ea0
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32eb8,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ea0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ea6:
    #data 0x03f8
DAT_ce32ea8:
    #data 0x0328
DAT_ce32eaa:
    #data 0x01ea
    #align4

PTR_ce32eac:
    #data loc_8c034dee
DAT_ce32eb0:
    #data 0xc04db6db
PTR_ce32eb4:
    #data loc_8c052ce2
PTR_ce32eb8:
    #data loc_8c034e8c

;=============================================

LAB_ce32ebc:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32fc0,pc),r0
    mov r4,r14
    mov 0x02,r4
    mov.b r4,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce32fc2,pc),r0
    mov 0x01,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32fc4,pc),r0
    mov.l @(PTR_ce32fd4,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32fc6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32fb4
    mov.b @(r0,r14),r2
    cmp/pl r2
    bf/s LAB_ce32f68
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x00,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32fc8,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32fca,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32fc6,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32fcc,pc),r0
    mov.l @(r0,r14),r12
    add 0xEC,r0
    mov.l r14,@(r0,r12)
    add 0x42,r0
    mov.b r3,@(r0,r12)
    add 0x03,r0
    mov.l @(PTR_ce32fd8,pc),r3
    mov.b r13,@(r0,r12)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32fce,pc),r0
    mov 0x22,r2
    fldi0 fr4
    mov.b r2,@(r0,r12)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32fdc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32fe0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32fe4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32fd0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32fb4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    bra LAB_ce32fb4
    fmov fr3,@(r0,r14)

LAB_ce32f68:
    mov.b r13,@(r0,r14)
    mov 0x27,r3
    mov.w @(DAT_ce32fcc,pc),r0
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    mova @(DAT_ce32fe8,pc),r0
    fmov.s @r0,fr3
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    mov.w @(DAT_ce32fd0,pc),r0
    fadd fr3,fr2
    fmov.s fr2,@r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32f98
    mova @(DAT_ce32fec,pc),r0
    fmov.s @r0,fr2
    mov 0x34,r0
    fmov.s @(r0,r14),fr1
    fadd fr2,fr1
    fmov.s fr1,@r15

LAB_ce32f98:
    mov 0x38,r0
    mov.l @(PTR_ce32ff0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x04,r0
    mov 0x10,r7
    fmov fr3,@(r0,r15)
    mov 0x01,r6
    mov.w @(DAT_ce32fd2,pc),r0
    mov.w @(r0,r13),r5
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce32ff4,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32fb4:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32fc0:
    #data 0x03f8
DAT_ce32fc2:
    #data 0x0328
DAT_ce32fc4:
    #data 0x01ea
DAT_ce32fc6:
    #data 0x0141
DAT_ce32fc8:
    #data 0x03f9
DAT_ce32fca:
    #data 0x0327
DAT_ce32fcc:
    #data 0x01c8
DAT_ce32fce:
    #data 0x01a1
DAT_ce32fd0:
    #data 0x01d2
DAT_ce32fd2:
    #data 0x0130
    #align4

PTR_ce32fd4:
    #data loc_8c034dee
PTR_ce32fd8:
    #data loc_8c02fec4
DAT_ce32fdc:
    #data 0x41892492
DAT_ce32fe0:
    #data 0xbecdb6db
DAT_ce32fe4:
    #data 0x3fa00000
DAT_ce32fe8:
    #data 0xc3055555
DAT_ce32fec:
    #data 0x43055555
PTR_ce32ff0:
    #data loc_8c0fd966
PTR_ce32ff4:
    #data loc_8c0423fc

;=============================================

LAB_ce32ff8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33118,pc),r3
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
    mov.w @(DAT_ce3310c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33050
    lds.l @r15+,PR
    mov.l @(PTR_ce3311c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33050:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33056:
    mov r4,r3
    mov.l @(PTR_ce33120,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33068:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.w @(DAT_ce3310e,pc),r3
    add r14,r3
    mov.l r3,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33110,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3308e
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce3319a
    mov.l @r15+,r14

LAB_ce3308e:
    mov.w @(DAT_ce33112,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3309a
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce3309a:
    mov.w @(DAT_ce33114,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce330b0
    mov.l @(PTR_ce33124,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33128,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce330b0:
    mov.w @(DAT_ce33116,pc),r0
    mov 0x04,r5
    mov.l @r15,r2
    mov.l @(PTR_ce3312c,pc),r3
    mov.w r0,@(0x8,r2)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33110,pc),r0
    mov 0x01,r2
    mov 0x02,r3
    fldi0 fr4
    mov.b r2,@(r0,r14)
    add 0xF8,r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce33130,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce33138,pc),r3
    mov 0x0A,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33134,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x1A,r5
    mov 0x00,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3313c,pc),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3310c:
    #data 0x041c
DAT_ce3310e:
    #data 0x02a4
DAT_ce33110:
    #data 0x0201
DAT_ce33112:
    #data 0x01fc
DAT_ce33114:
    #data 0x01f9
DAT_ce33116:
    #data 0x0258
    #align4

PTR_ce33118:
    #data loc_8c034dee
PTR_ce3311c:
    #data loc_8c051648
PTR_ce33120:
    #data PTR_ce34094
PTR_ce33124:
    #data loc_8c05115a
PTR_ce33128:
    #data FUN_ce31d58
PTR_ce3312c:
    #data loc_8c042008
DAT_ce33130:
    #data 0x414db6db
DAT_ce33134:
    #data 0x3e892492
PTR_ce33138:
    #data loc_8c056de4
PTR_ce3313c:
    #data loc_8c034e8c

;=============================================

LAB_ce33140:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce33290,pc),r3
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
    bt LAB_ce33194
    lds.l @r15+,PR
    mov.l @(PTR_ce33294,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33194:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3319a:
    mov.w @(DAT_ce33286,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce33298,pc),r0
    mov.l @(PTR_ce3329c,pc),r3
    fmov.s @r0,fr3
    mov 0x6C,r0
    jmp @r3
    fmov fr3,@(r0,r4)

;=============================================

FUN_ce331ba:
    mov.w @(DAT_ce33286,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce33298,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    rts
    fmov fr3,@(r0,r4)

LAB_ce331d8:
    mov r4,r3
    mov.l @(PTR_ce332a0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce331ea:
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    mov 0x0F,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33288,pc),r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce3328a,pc),r0
    mov.l @(PTR_ce332a4,pc),r3
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x14,r5

LAB_ce33206:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33290,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33220
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33294,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33220:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33228:
    mov r4,r3
    mov.l @(PTR_ce332a8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3323a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce332ac,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce332b0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3328c,pc),r0
    mov 0x4E,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce332b4,pc),r3
    mov 0x0D,r6
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov 0x15,r5
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce332a4,pc),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33286:
    #data 0x0201
DAT_ce33288:
    #data 0x01f9
DAT_ce3328a:
    #data 0x041c
DAT_ce3328c:
    #data 0x01a1
    #align4

PTR_ce33290:
    #data loc_8c034dee
PTR_ce33294:
    #data loc_8c051648
DAT_ce33298:
    #data 0xbf4db6db
PTR_ce3329c:
    #data loc_8c05176e
PTR_ce332a0:
    #data PTR_ce3409c
PTR_ce332a4:
    #data loc_8c034e8c
PTR_ce332a8:
    #data PTR_ce340a4
PTR_ce332ac:
    #data FUN_ce31d58
PTR_ce332b0:
    #data loc_8c05115a
PTR_ce332b4:
    #data loc_8c2896b0

;=============================================

LAB_ce332b8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33404,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce332d8
    mov.l @(PTR_ce33408,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce332d8:
    mov.w @(DAT_ce333fc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce332fa
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce3340c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33410,pc),r0
    mov.l @(PTR_ce33414,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce332fa:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33302:
    mov r4,r3
    mov.l @(PTR_ce33418,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33314:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3341c,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce333fe,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33420,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33400,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33344
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33344:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33424,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x49,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33428,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce33402,pc),r0
    mov 0x0D,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3342c,pc),r3
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
    mov.l @(PTR_ce33430,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3338e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33404,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce33434,pc),r3
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
    bt LAB_ce333f6
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce33430,pc),r3
    mov 0x0E,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33438,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce333f6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce333fc:
    #data 0x0141
DAT_ce333fe:
    #data 0x01f9
DAT_ce33400:
    #data 0x01d2
DAT_ce33402:
    #data 0x01a1
    #align4

PTR_ce33404:
    #data loc_8c034dee
PTR_ce33408:
    #data loc_8c051648
DAT_ce3340c:
    #data 0xc0d55555
DAT_ce33410:
    #data 0x424db6db
PTR_ce33414:
    #data loc_8c050ea4
PTR_ce33418:
    #data PTR_ce340ac
PTR_ce3341c:
    #data loc_8c035162
DAT_ce33420:
    #data 0x41f00000
DAT_ce33424:
    #data 0x40892492
DAT_ce33428:
    #data 0xbf4db6db
PTR_ce3342c:
    #data loc_8c2896b0
PTR_ce33430:
    #data loc_8c034e8c
PTR_ce33434:
    #data loc_8c052ce2
PTR_ce33438:
    #data loc_8c0511b4

;=============================================

LAB_ce3343c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33514,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3345e
    mov.l @(PTR_ce33518,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3351c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3345e:
    mov.w @(DAT_ce33504,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3346a
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce3346a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33470:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33506,pc),r1
    mov.l @(PTR_ce33520,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce33488:
    mov.w @(DAT_ce33508,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3350a,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce334f8
    mov.w @(DAT_ce3350c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce334c8
    mov.w @(DAT_ce3350e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce334c8
    mov.l @(PTR_ce33524,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce334f8
    mov r0,r4
    bra LAB_ce334ea
    mov 0x00,r2

LAB_ce334c8:
    mov.w @(DAT_ce3350c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce334f8
    mov.w @(DAT_ce3350e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce334f8
    mov.l @(PTR_ce33524,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce334f8
    mov r0,r4
    mov 0x01,r2

LAB_ce334ea:
    mov.w @(DAT_ce33510,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce334f8:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33500:
    rts
    mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33504:
    #data 0x0141
DAT_ce33506:
    #data 0x01f9
DAT_ce33508:
    #data 0x01fa
DAT_ce3350a:
    #data 0x0c00
DAT_ce3350c:
    #data 0x01fe
DAT_ce3350e:
    #data 0x01a3
DAT_ce33510:
    #data 0x01f7
    #align4

PTR_ce33514:
    #data loc_8c034dee
PTR_ce33518:
    #data loc_8c035162
PTR_ce3351c:
    #data loc_8c051854
PTR_ce33520:
    #data PTR_ce340b8
PTR_ce33524:
    #data loc_8c045790

;=============================================

LAB_ce33528:
    mov.w @(DAT_ce33664,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33666,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33580
    mov.w @(DAT_ce33668,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33580
    mov.w @(DAT_ce3366a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33580
    mova @(DAT_ce33674,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce33580
    mov.l @(PTR_ce33678,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33580
    mov r0,r4
    mov.w @(DAT_ce3366c,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33580:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33588:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce3366c,pc),r1
    mov.l @(PTR_ce3367c,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce335a0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bf/s LAB_ce335c6
    mov 0x05,r6
    mov.w @(DAT_ce3366e,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33670,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce335c6:
    mov.l @(PTR_ce33680,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33684,pc),r0
    mov.l @(PTR_ce3368c,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33688,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33672,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33690,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33694,pc),r2
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33602:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf/s LAB_ce33628
    mov 0x05,r6
    mov.w @(DAT_ce3366e,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33670,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce33628:
    mov.l @(PTR_ce33680,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33684,pc),r0
    mov.l @(PTR_ce3368c,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33688,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33672,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33690,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33694,pc),r2
    mov 0x0F,r5
    mov 0x06,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33664:
    #data 0x01fa
DAT_ce33666:
    #data 0x1c00
DAT_ce33668:
    #data 0x01fe
DAT_ce3366a:
    #data 0x01a3
DAT_ce3366c:
    #data 0x01f7
DAT_ce3366e:
    #data 0x01d2
DAT_ce33670:
    #data 0x0130
DAT_ce33672:
    #data 0x01a0
    #align4

DAT_ce33674:
    #data 0x43092492
PTR_ce33678:
    #data loc_8c045790
PTR_ce3367c:
    #data PTR_ce340c8
PTR_ce33680:
    #data loc_8c02fec4
DAT_ce33684:
    #data 0xc2b40000
DAT_ce33688:
    #data 0x4322db6d
PTR_ce3368c:
    #data loc_8c103660
PTR_ce33690:
    #data loc_8c056f2a
PTR_ce33694:
    #data loc_8c034e8c

;=============================================

LAB_ce33698:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf/s LAB_ce336be
    mov 0x05,r6
    mov.w @(DAT_ce337d6,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce337d8,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce336be:
    mov.l @(PTR_ce337e8,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce337ec,pc),r0
    mov.l @(PTR_ce337f4,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce337f0,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce337da,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce337f8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce337fc,pc),r2
    mov 0x0F,r5
    mov 0x05,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce336fa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce337e8,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.l @(PTR_ce337f8,pc),r2
    jsr @r2
    mov r14,r4
    mova @(DAT_ce33800,pc),r0
    mov.l @(PTR_ce337f4,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33804,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce337da,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33808,pc),r3
    mov 0x14,r5
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce337dc,pc),r0
    mov.w r0,@(0x1c,r14)
    mov 0x00,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce337de,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    mov.l @(PTR_ce3380c,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce337fc,pc),r3
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33758:
    mov.w @(DAT_ce337e0,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33810,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33776:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33814,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33798
    mov.w @(DAT_ce337d6,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce33818,pc),r1
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce33798:
    mov.w @(DAT_ce337e2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce337ce
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce337de,pc),r0
    mov 0x00,r2
    mov r2,r5
    mov r2,r6
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce337e8,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce337e4,pc),r0
    mov 0x21,r2
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)

LAB_ce337ce:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce337d6:
    #data 0x01d2
DAT_ce337d8:
    #data 0x0130
DAT_ce337da:
    #data 0x01a0
DAT_ce337dc:
    #data 0x0088
DAT_ce337de:
    #data 0x01c8
DAT_ce337e0:
    #data 0x01ea
DAT_ce337e2:
    #data 0x0141
DAT_ce337e4:
    #data 0x01a1
    #align4

PTR_ce337e8:
    #data loc_8c02fec4
DAT_ce337ec:
    #data 0xc2d55555
DAT_ce337f0:
    #data 0x433c9249
PTR_ce337f4:
    #data loc_8c103660
PTR_ce337f8:
    #data loc_8c056f2a
PTR_ce337fc:
    #data loc_8c034e8c
DAT_ce33800:
    #data 0xc2b40000
DAT_ce33804:
    #data 0x4322db6d
PTR_ce33808:
    #data loc_8c050552
PTR_ce3380c:
    #data loc_8c05064e
PTR_ce33810:
    #data PTR_ce340d8
PTR_ce33814:
    #data loc_8c034dee
PTR_ce33818:
    #data loc_8c051648

;=============================================

LAB_ce3381c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33938,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33838
    mov.l @(PTR_ce3393c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce33838:
    mov.w @(DAT_ce3392e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce338c6
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt/s LAB_ce338a2
    mov 0x00,r12
    mov.b r12,@(r0,r14)
    mov 0x4A,r3
    mov.w @(DAT_ce33930,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0xED,r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce33940,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33944,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce33932,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3387a
    mova @(DAT_ce33948,pc),r0
    bra LAB_ce3387e
    fmov.s @r0,fr2

LAB_ce3387a:
    mova @(DAT_ce3394c,pc),r0
    fmov.s @r0,fr2

LAB_ce3387e:
    mov 0x34,r0
    fmov.s fr2,@r15
    fmov.s @(r0,r14),fr3
    mov 0x3C,r0
    mov.l @(PTR_ce33950,pc),r3
    mov 0x00,r7
    fadd fr3,fr2
    mov 0x01,r6
    fmov.s fr2,@r15
    fmov.s @(r0,r14),fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce33932,pc),r0
    mov.w @(r0,r14),r5
    jsr @r3
    mov r15,r4
    bra LAB_ce338c6
    nop

LAB_ce338a2:
    mov.b r12,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce33930,pc),r0
    mov 0x00,r6
    mov r6,r5
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce33954,pc),r3
    mov.b r12,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33934,pc),r0
    mov 0x24,r2
    mov.b r2,@(r0,r13)

LAB_ce338c6:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce338d2:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33938,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce338ec
    mov.l @(PTR_ce3393c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce338ec:
    mov.w @(DAT_ce3392e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce339a8
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce33980
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov 0x4B,r3
    mov.w @(DAT_ce33930,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0xED,r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce33940,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33944,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce33932,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33958
    mova @(DAT_ce33948,pc),r0
    bra LAB_ce3395c
    fmov.s @r0,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3392e:
    #data 0x0141
DAT_ce33930:
    #data 0x01c8
DAT_ce33932:
    #data 0x0130
DAT_ce33934:
    #data 0x01a1
    #align4

PTR_ce33938:
    #data loc_8c034dee
PTR_ce3393c:
    #data loc_8c051648
PTR_ce33940:
    #data loc_8c05933c
DAT_ce33944:
    #data 0x42f44924
DAT_ce33948:
    #data 0x42be0000
DAT_ce3394c:
    #data 0xc2be0000
PTR_ce33950:
    #data loc_8c0fd966
PTR_ce33954:
    #data loc_8c02fec4

;=============================================

LAB_ce33958:
    mova @(DAT_ce33a78,pc),r0
    fmov.s @r0,fr2

LAB_ce3395c:
    mov 0x34,r0
    fmov.s fr2,@r15
    fmov.s @(r0,r14),fr3
    mov 0x3C,r0
    mov.l @(PTR_ce33a7c,pc),r3
    mov 0x00,r7
    fadd fr3,fr2
    mov 0x01,r6
    fmov.s fr2,@r15
    fmov.s @(r0,r14),fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce33a66,pc),r0
    mov.w @(r0,r14),r5
    jsr @r3
    mov r15,r4
    bra LAB_ce339a8
    nop

LAB_ce33980:
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce33a68,pc),r0
    mov 0x00,r6
    mov 0x02,r2
    mov r6,r5
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce33a80,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33a6a,pc),r0
    mov 0x23,r2
    mov.b r2,@(r0,r13)

LAB_ce339a8:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce339b2:
    mov.w @(DAT_ce33a6c,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33a84,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce339cc:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33a88,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce33a8c,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce339ea
    mov.w @(DAT_ce33a6e,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce339ea:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce33a70,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33a32
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf LAB_ce33a0a
    mov.l @(PTR_ce33a90,pc),r3
    mov.w @(DAT_ce33a68,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
    tst r0,r0
    bf LAB_ce33a1a

LAB_ce33a0a:
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bf LAB_ce33a14
    bra LAB_ce33b06
    nop

LAB_ce33a14:
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bf LAB_ce33b06

LAB_ce33a1a:
    mov 0x01,r0
    mov.l @(PTR_ce33a94,pc),r3
    mov.w r0,@(0x1e,r14)
    mov 0x0F,r5
    mov.b @(0x6,r14),r0
    mov 0x07,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce33b06
    nop

LAB_ce33a32:
    mov.w @(DAT_ce33a72,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33b06
    mov.b @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce33b06
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov 0x26,r3
    mov.w @(DAT_ce33a68,pc),r0
    mov.l @(r0,r14),r13
    add 0xD9,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce33a98,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33a74,pc),r0
    mov.b @(r0,r13),r2
    tst r2,r2
    bf LAB_ce33aa0
    mov.l @(DAT_ce33a9c,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    bra LAB_ce33aa8
    fsts FPUL,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a66:
    #data 0x0130
DAT_ce33a68:
    #data 0x01c8
DAT_ce33a6a:
    #data 0x01a1
DAT_ce33a6c:
    #data 0x01ea
DAT_ce33a6e:
    #data 0x0142
DAT_ce33a70:
    #data 0x014b
DAT_ce33a72:
    #data 0x0141
DAT_ce33a74:
    #data 0x01d2
    #align4

DAT_ce33a78:
    #data 0xc2be0000
PTR_ce33a7c:
    #data loc_8c0fd966
PTR_ce33a80:
    #data loc_8c02fec4
PTR_ce33a84:
    #data PTR_ce340e8
PTR_ce33a88:
    #data loc_8c034dee
PTR_ce33a8c:
    #data loc_8c050682
PTR_ce33a90:
    #data loc_8c050610
PTR_ce33a94:
    #data loc_8c034e8c
PTR_ce33a98:
    #data loc_8c05933c
DAT_ce33a9c:
    #data 0xc2555555

;=============================================

LAB_ce33aa0:
    mov.l @(DAT_ce33bc0,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    fsts FPUL,fr3

LAB_ce33aa8:
    fmov.s @(r0,r13),fr2
    mov.l @(DAT_ce33bc4,pc),r1
    fadd fr3,fr2
    lds r1,FPUL
    fmov fr2,@(r0,r13)
    mov 0x38,r0
    fmov.s @(r0,r13),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r13)
    mova @(DAT_ce33bc8,pc),r0
    fmov.s @r0,fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    mov 0x04,r0
    fadd fr2,fr1
    fmov fr1,@(r0,r15)
    mov.w @(DAT_ce33bb6,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33ad8
    mova @(DAT_ce33bcc,pc),r0
    bra LAB_ce33adc
    fmov.s @r0,fr1

LAB_ce33ad8:
    mova @(DAT_ce33bd0,pc),r0
    fmov.s @r0,fr1

LAB_ce33adc:
    mov 0x34,r0
    fmov fr1,fr2
    mov.l @(PTR_ce33bd4,pc),r3
    mov 0x01,r6
    fmov.s fr1,@r15
    mov 0x00,r7
    fmov.s @(r0,r14),fr3
    mov 0x3C,r0
    fadd fr3,fr2
    fmov.s fr2,@r15
    fmov.s @(r0,r14),fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce33bb6,pc),r0
    mov.w @(r0,r14),r5
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce33bd8,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4

LAB_ce33b06:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33b10:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33bdc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33bb8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33b58
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce33bba,pc),r0
    mov 0x00,r2
    mov r2,r5
    mov r2,r6
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce33be0,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33bbc,pc),r0
    mov 0x20,r2
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce33b58:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33b60:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33bdc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33b7a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33be4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33b7a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33b82:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33bbe,pc),r1
    mov.l @(PTR_ce33be8,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce33b9a:
    mov.w @(DAT_ce33bba,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33bec,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce33ba8:
    mov.w @(DAT_ce33bba,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33bec,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33bb6:
    #data 0x0130
DAT_ce33bb8:
    #data 0x0141
DAT_ce33bba:
    #data 0x01c8
DAT_ce33bbc:
    #data 0x01a1
DAT_ce33bbe:
    #data 0x01f7
    #align4

DAT_ce33bc0:
    #data 0x42555555
DAT_ce33bc4:
    #data 0xc32b6db6
DAT_ce33bc8:
    #data 0x42f44924
DAT_ce33bcc:
    #data 0x42be0000
DAT_ce33bd0:
    #data 0xc2be0000
PTR_ce33bd4:
    #data loc_8c0fd966
PTR_ce33bd8:
    #data loc_8c04223a
PTR_ce33bdc:
    #data loc_8c034dee
PTR_ce33be0:
    #data loc_8c02fec4
PTR_ce33be4:
    #data loc_8c051648
PTR_ce33be8:
    #data PTR_ce340f4
PTR_ce33bec:
    #data loc_8c04cc1c

;=============================================

LAB_ce33bf0:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33cb8,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33c0a
    mov 0x05,r5
    cmp/eq 0x01,r0
    bt LAB_ce33c0a
    cmp/eq 0x02,r0
    bf LAB_ce33c0e

LAB_ce33c0a:
    mov.w @(DAT_ce33cba,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33c0e:
    mov.l @(PTR_ce33cc0,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33c14:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33cb8,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33c2e
    mov 0x05,r5
    cmp/eq 0x01,r0
    bt LAB_ce33c2e
    cmp/eq 0x02,r0
    bf LAB_ce33c32

LAB_ce33c2e:
    mov.w @(DAT_ce33cba,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33c32:
    mov.l @(PTR_ce33cc0,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33c38:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33cb8,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33c5a
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce33c64
    cmp/eq 0x02,r0
    bt LAB_ce33c6a
    bra LAB_ce33c74
    nop

LAB_ce33c5a:
    mov.w @(DAT_ce33cba,pc),r0
    mov.b r5,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce33c74
    mov.b r6,@(r0,r4)

LAB_ce33c64:
    mov.w @(DAT_ce33cba,pc),r0
    bra LAB_ce33c70
    mov.b r6,@(r0,r4)

LAB_ce33c6a:
    mov.w @(DAT_ce33cba,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce33c70:
    mov.w @(DAT_ce33cbc,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33c74:
    mov.l @(PTR_ce33cc0,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce33c7a:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33cb8,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33c9c
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce33ca2
    cmp/eq 0x02,r0
    bt LAB_ce33ca8
    bra LAB_ce33cb2
    nop

LAB_ce33c9c:
    mov.w @(DAT_ce33cba,pc),r0
    bra LAB_ce33cae
    mov.b r5,@(r0,r4)

LAB_ce33ca2:
    mov.w @(DAT_ce33cba,pc),r0
    bra LAB_ce33cae
    mov.b r6,@(r0,r4)

LAB_ce33ca8:
    mov.w @(DAT_ce33cba,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)

LAB_ce33cae:
    mov.w @(DAT_ce33cbc,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce33cb2:
    mov.l @(PTR_ce33cc0,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33cb8:
    #data 0x04c9
DAT_ce33cba:
    #data 0x01e9
DAT_ce33cbc:
    #data 0x01a3
    #align4

PTR_ce33cc0:
    #data loc_8c0530d8

;=============================================

LAB_ce33cc4:
    mov.l r14,@-r15
    mov 0x04,r6
    sts.l PR,@-r15
    mov.l @(PTR_ce33d34,pc),r3
    mov r4,r14
    mov 0x01,r7
    jsr @r3
    mov 0x03,r5
    mov.w @(DAT_ce33d32,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33d2c
    mov.b @(r0,r14),r3
    cmp/pl r3
    bf/s LAB_ce33d1e
    mov 0x00,r4
    mov.b @(r0,r14),r0
    mov 0x00,r3
    mov 0x01,r7
    extu.b r0,r0
    mov.w r0,@(0x1c,r14)
    mov 0x00,r5
    mov.w @(0x1c,r14),r0
    add 0xFE,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/gt r0,r3
    addc r3,r0
    shar r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce33d32,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x25,r0
    mov.b @(r0,r14),r6
    mov r14,r4
    mov.w @(0x1c,r14),r0
    extu.b r6,r6
    mov r6,r3
    shll2 r6
    lds.l @r15+,PR
    add r3,r6
    mov.l @(PTR_ce33d34,pc),r3
    add r0,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce33d1e:
    mov.l @(PTR_ce33d38,pc),r3
    mov 0x00,r5
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33d2c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33d32:
    #data 0x014b
    #align4

PTR_ce33d34:
    #data loc_8c03544c
PTR_ce33d38:
    #data loc_8c035162
DAT_ce33d3c:
    #data 0x0201
    #data 0x0201
DAT_ce33d40:
    #data 0x02ff
    #data 0x02ff
DAT_ce33d44:
    #data 0xffff
    #data 0xffff
DAT_ce33d48:
    #data 0x0201
    #data 0x0201
DAT_ce33d4c:
    #data 0x02ff
    #data 0x02ff
DAT_ce33d50:
    #data 0xffff
    #data 0xffff
DAT_ce33d54:
    #data 0x0201
    #data 0x0201
DAT_ce33d58:
    #data 0x02ff
    #data 0x02ff
DAT_ce33d5c:
    #data 0xffff
    #data 0xffff
DAT_ce33d60:
    #data 0x0201
    #data 0x0201
DAT_ce33d64:
    #data 0x02ff
    #data 0x02ff
DAT_ce33d68:
    #data 0xffff
    #data 0xffff
DAT_ce33d6c:
    #data 0x0201
    #data 0x0200
DAT_ce33d70:
    #data 0x02ff
    #data 0x0201
DAT_ce33d74:
    #data 0xffff
    #data 0x02ff
DAT_ce33d78:
    #data 0x0201
    #data 0x0201
DAT_ce33d7c:
    #data 0x02ff
    #data 0x02ff
DAT_ce33d80:
    #data 0xffff
    #data 0xffff
DAT_ce33d84:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33d94:
    #data 0x0005
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce33da8:
    #data 0x0005
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce33dbc:
    #data 0x0003
    #data 0x8000
    #data 0x0003
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce33dcc:
    #data 0x0003
    #data 0x8000
    #data 0x0003
    #data 0x0000
    #data 0x0400
    #data 0x1000
    #data 0x1400
    #data 0x0300
DAT_ce33ddc:
    #data 0x0003
    #data 0x8000
    #data 0x0003
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0060
DAT_ce33dec:
    #data 0x0003
    #data 0x8000
    #data 0x0003
    #data 0x0000
    #data 0x0400
    #data 0x1000
    #data 0x1400
    #data 0x0060
DAT_ce33dfc:
    #data 0x0003
    #data 0x8100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33e0c:
    #data 0x0003
    #data 0x9100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce33e1c:
    #data 0x0003
    #data 0x8000
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce33e2c:
    #data 0x0005
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0100
    #align4

PTR_ce33e40:
    #data LAB_ce3073c
PTR_ce33e44:
    #data LAB_ce30024
PTR_ce33e48:
    #data LAB_ce30778
PTR_ce33e4c:
    #data LAB_ce31096
PTR_ce33e50:
    #data LAB_ce318d4
PTR_ce33e54:
    #data LAB_ce31a16
PTR_ce33e58:
    #data LAB_ce31b4e
PTR_ce33e5c:
    #data LAB_ce31bac
PTR_ce33e60:
    #data LAB_ce31d3a
PTR_ce33e64:
    #data LAB_ce33470
PTR_ce33e68:
    #data LAB_ce33588
PTR_ce33e6c:
    #data LAB_ce33758
PTR_ce33e70:
    #data LAB_ce33b82
PTR_ce33e74:
    #data FUN_ce3067e
PTR_ce33e78:
    #data LAB_ce33302
PTR_ce33e7c:
    #data LAB_ce31800
PTR_ce33e80:
    #data LAB_ce33bf0
PTR_ce33e84:
    #data LAB_ce33c14
PTR_ce33e88:
    #data LAB_ce33c38
PTR_ce33e8c:
    #data LAB_ce33c7a
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce33ea0:
    #data LAB_ce33cc4
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
DAT_ce33eb0:
    #data 0x433aaaaa
DAT_ce33eb4:
    #data 0x433aaaaa
DAT_ce33eb8:
    #data 0x433aaaaa
DAT_ce33ebc:
    #data 0x433aaaaa
DAT_ce33ec0:
    #data 0x433aaaaa
DAT_ce33ec4:
    #data 0x433aaaaa
DAT_ce33ec8:
    #data 0x433aaaaa
DAT_ce33ecc:
    #data 0x433aaaaa
DAT_ce33ed0:
    #data 0x433aaaaa
DAT_ce33ed4:
    #data 0x433aaaaa
DAT_ce33ed8:
    #data 0x433aaaaa
DAT_ce33edc:
    #data 0x433aaaaa
DAT_ce33ee0:
    #data 0x433aaaaa
DAT_ce33ee4:
    #data 0x433aaaaa
DAT_ce33ee8:
    #data 0x433aaaaa
DAT_ce33eec:
    #data 0x433aaaaa
DAT_ce33ef0:
    #data 0x433aaaaa
DAT_ce33ef4:
    #data 0x433aaaaa
DAT_ce33ef8:
    #data 0x432b6db6
DAT_ce33efc:
    #data 0x434db6db
PTR_ce33f00:
    #data LAB_ce3078c
PTR_ce33f04:
    #data LAB_ce30cc0
PTR_ce33f08:
    #data FUN_ce30d00
PTR_ce33f0c:
    #data LAB_ce3078c
PTR_ce33f10:
    #data LAB_ce310b8
PTR_ce33f14:
    #data LAB_ce3131a
PTR_ce33f18:
    #data LAB_ce312fa
PTR_ce33f1c:
    #data LAB_ce310aa
PTR_ce33f20:
    #data LAB_ce311e8
PTR_ce33f24:
    #data LAB_ce311e8
PTR_ce33f28:
    #data LAB_ce311e8
PTR_ce33f2c:
    #data LAB_ce31222
PTR_ce33f30:
    #data LAB_ce3129c
PTR_ce33f34:
    #data FUN_ce312d8
DAT_ce33f38:
    #data 0x0000
    #data 0xc120
DAT_ce33f3c:
    #data 0x5555
    #data 0x3f55
    #data 0x5555
    #data 0xc155
    #data 0x5555
    #data 0x3f55
    #data 0x5555
    #data 0xc185
    #data 0x5555
    #data 0x3f55
    #align4

PTR_ce33f50:
    #data LAB_ce31414
PTR_ce33f54:
    #data LAB_ce31578
PTR_ce33f58:
    #data LAB_ce31426
PTR_ce33f5c:
    #data LAB_ce31500
PTR_ce33f60:
    #data LAB_ce31562
PTR_ce33f64:
    #data LAB_ce3158a
PTR_ce33f68:
    #data LAB_ce316b4
PTR_ce33f6c:
    #data LAB_ce317bc
DAT_ce33f70:
    #data 0x42b00000
DAT_ce33f74:
    #data 0x42c00000
DAT_ce33f78:
    #data 0x43000000
PTR_ce33f7c:
    #data LAB_ce318e6
PTR_ce33f80:
    #data LAB_ce31980
PTR_ce33f84:
    #data LAB_ce319e8
PTR_ce33f88:
    #data LAB_ce31a28
PTR_ce33f8c:
    #data LAB_ce31ab6
PTR_ce33f90:
    #data LAB_ce31b20
PTR_ce33f94:
    #data LAB_ce31b60
PTR_ce33f98:
    #data LAB_ce31b74
PTR_ce33f9c:
    #data LAB_ce31be2
PTR_ce33fa0:
    #data LAB_ce31cf2
PTR_ce33fa4:
    #data LAB_ce31be2
PTR_ce33fa8:
    #data LAB_ce31cf2
PTR_ce33fac:
    #data LAB_ce31d0c
PTR_ce33fb0:
    #data LAB_ce31c1c
PTR_ce33fb4:
    #data LAB_ce31c7e
PTR_ce33fb8:
    #data LAB_ce31cec
PTR_ce33fbc:
    #data LAB_ce31d80
PTR_ce33fc0:
    #data LAB_ce31f4a
PTR_ce33fc4:
    #data LAB_ce320b2
PTR_ce33fc8:
    #data LAB_ce321e2
PTR_ce33fcc:
    #data LAB_ce33056
PTR_ce33fd0:
    #data LAB_ce32414
PTR_ce33fd4:
    #data LAB_ce32908
PTR_ce33fd8:
    #data LAB_ce31d80
PTR_ce33fdc:
    #data LAB_ce31d80
PTR_ce33fe0:
    #data LAB_ce331d8
PTR_ce33fe4:
    #data LAB_ce31d80
PTR_ce33fe8:
    #data LAB_ce31d80
PTR_ce33fec:
    #data LAB_ce32718
PTR_ce33ff0:
    #data LAB_ce33228
PTR_ce33ff4:
    #data LAB_ce31e02
PTR_ce33ff8:
    #data LAB_ce31eec
PTR_ce33ffc:
    #data LAB_ce31f5c
PTR_ce34000:
    #data LAB_ce32020
PTR_ce34004:
    #data LAB_ce32044
PTR_ce34008:
    #data LAB_ce3207c
PTR_ce3400c:
    #data FUN_ce32090
PTR_ce34010:
    #data LAB_ce320c4
PTR_ce34014:
    #data LAB_ce32174
PTR_ce34018:
    #data LAB_ce321ac
PTR_ce3401c:
    #data FUN_ce321c0
PTR_ce34020:
    #data LAB_ce321fc
PTR_ce34024:
    #data LAB_ce32278
PTR_ce34028:
    #data LAB_ce32314
PTR_ce3402c:
    #data LAB_ce323c8
PTR_ce34030:
    #data LAB_ce32426
PTR_ce34034:
    #data LAB_ce32960
PTR_ce34038:
    #data LAB_ce324d4
PTR_ce3403c:
    #data LAB_ce32540
PTR_ce34040:
    #data LAB_ce326c2
DAT_ce34044:
    #data 0x1012
    #data 0x0c0e
    #data 0x080a
    #data 0x0406
    #data 0x0002
    #data 0x0c12
    #data 0x0208
    #data 0x0000
    #align4

PTR_ce34054:
    #data LAB_ce32790
PTR_ce34058:
    #data LAB_ce32830
PTR_ce3405c:
    #data LAB_ce324d4
PTR_ce34060:
    #data LAB_ce32540
PTR_ce34064:
    #data LAB_ce328d6
PTR_ce34068:
    #data LAB_ce3291a
PTR_ce3406c:
    #data LAB_ce32960
PTR_ce34070:
    #data LAB_ce32a10
PTR_ce34074:
    #data LAB_ce32aa8
PTR_ce34078:
    #data FUN_ce32bc2
PTR_ce3407c:
    #data LAB_ce32c20
PTR_ce34080:
    #data LAB_ce32cea
PTR_ce34084:
    #data LAB_ce32da4
PTR_ce34088:
    #data LAB_ce32e22
PTR_ce3408c:
    #data LAB_ce32ebc
PTR_ce34090:
    #data LAB_ce32ff8
PTR_ce34094:
    #data LAB_ce33068
PTR_ce34098:
    #data LAB_ce33140
PTR_ce3409c:
    #data LAB_ce331ea
PTR_ce340a0:
    #data LAB_ce33206
PTR_ce340a4:
    #data LAB_ce3323a
PTR_ce340a8:
    #data LAB_ce332b8
PTR_ce340ac:
    #data LAB_ce33314
PTR_ce340b0:
    #data LAB_ce3338e
PTR_ce340b4:
    #data LAB_ce3343c
PTR_ce340b8:
    #data LAB_ce33488
PTR_ce340bc:
    #data LAB_ce33500
PTR_ce340c0:
    #data LAB_ce33528
PTR_ce340c4:
    #data LAB_ce33488
PTR_ce340c8:
    #data LAB_ce335a0
PTR_ce340cc:
    #data LAB_ce33602
PTR_ce340d0:
    #data LAB_ce33698
PTR_ce340d4:
    #data LAB_ce336fa
PTR_ce340d8:
    #data LAB_ce33776
PTR_ce340dc:
    #data LAB_ce3381c
PTR_ce340e0:
    #data LAB_ce338d2
PTR_ce340e4:
    #data LAB_ce339b2
PTR_ce340e8:
    #data LAB_ce339cc
PTR_ce340ec:
    #data LAB_ce33b10
PTR_ce340f0:
    #data FUN_ce33b60
PTR_ce340f4:
    #data LAB_ce33b9a
PTR_ce340f8:
    #data LAB_ce33b9a
PTR_ce340fc:
    #data LAB_ce33b9a
PTR_ce34100:
    #data LAB_ce33b9a
PTR_ce34104:
    #data LAB_ce33ba8
