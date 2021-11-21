;╔══════════════════════════════════════════╗
;║ S_PL23 : Dan Hibiki Program              ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
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
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c051854 0x8C051854
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c0523d8 0x8C0523D8
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
#symbol loc_8c059384 0x8C059384
#symbol loc_8c096588 0x8C096588
#symbol loc_8c0e1150 0x8C0E1150
#symbol loc_8c0fdb4e 0x8C0FDB4E
#symbol loc_8c10235c 0x8C10235C
#symbol loc_8c103660 0x8C103660
#symbol loc_8c11e730 0x8C11E730
#symbol loc_8c2681dc 0x8C2681DC
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c2896b0 0x8C2896B0

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
    #data PTR_ce34134

;=============================================

LAB_ce30024:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30108,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30038
    bra LAB_ce30136
    nop

LAB_ce30038:
    mov.l @(PTR_ce3010c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30048
    bra LAB_ce30136
    nop

LAB_ce30048:
    mov.l @(PTR_ce30110,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30058
    bra LAB_ce30136
    nop

LAB_ce30058:
    mov.l @(PTR_ce30114,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30136
    bsr FUN_ce3013c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30136
    bsr FUN_ce3018e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30136
    bsr FUN_ce301d4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30136
    bsr FUN_ce30248
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30136
    bsr FUN_ce3028e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30136
    bsr FUN_ce303e0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30136
    bsr FUN_ce30430
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30136
    bsr FUN_ce30476
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30136
    bsr FUN_ce302d4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30136
    bsr FUN_ce3031c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30136
    bsr FUN_ce3038c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30136
    bsr FUN_ce304e8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30136
    bsr FUN_ce306a6
    mov r14,r4
    tst r0,r0
    bf LAB_ce30136
    mov.l @(PTR_ce30118,pc),r3
    mov 0x08,r5
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30126
    mov.w @(DAT_ce30106,pc),r0
    mov 0x08,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    bra LAB_ce3011c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30106:
    #data 0x01e9
    #align4

PTR_ce30108:
    #data loc_8c054508
PTR_ce3010c:
    #data loc_8c054b34
PTR_ce30110:
    #data loc_8c05496c
PTR_ce30114:
    #data loc_8c054d04
PTR_ce30118:
    #data loc_8c054da0

;=============================================

LAB_ce3011c:
    lds.l @r15+,PR
    mov.l @(PTR_ce30224,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30126:
    mov.l @(PTR_ce30228,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3022c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30136:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3013c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30230,pc),r5
    mov.w @(DAT_ce3021a,pc),r6
    mov.l @(PTR_ce30234,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3015e
    mov.w @(DAT_ce3021c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    mov 0x03,r2
    cmp/ge r2,r3
    bt LAB_ce30166

LAB_ce3015e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30166:
    mov.w @(DAT_ce3021a,pc),r5
    mov.l @(PTR_ce30238,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x10,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3021e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30224,pc),r3
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
    mov.l @(PTR_ce3023c,pc),r5
    mov.w @(DAT_ce30220,pc),r6
    mov.l @(PTR_ce30240,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301ae
    mov.w @(DAT_ce3021c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce301b6

LAB_ce301ae:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301b6:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3021e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30224,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301d4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30244,pc),r5
    mov.w @(DAT_ce30222,pc),r6
    mov.l @(PTR_ce30240,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301f4
    mov.w @(DAT_ce3021c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce301fc

LAB_ce301f4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301fc:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3021e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30224,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3021a:
    #data 0x03ac
DAT_ce3021c:
    #data 0x040c
DAT_ce3021e:
    #data 0x01e9
DAT_ce30220:
    #data 0x037c
DAT_ce30222:
    #data 0x0384
    #align4

PTR_ce30224:
    #data loc_8c0530d8
PTR_ce30228:
    #data loc_8c053e00
PTR_ce3022c:
    #data loc_8c0542e0
PTR_ce30230:
    #data DAT_ce34122
PTR_ce30234:
    #data loc_8c0555c8
PTR_ce30238:
    #data loc_8c055c3a
PTR_ce3023c:
    #data DAT_ce3409c
PTR_ce30240:
    #data loc_8c054e58
PTR_ce30244:
    #data DAT_ce340ac

;=============================================

FUN_ce30248:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30370,pc),r5
    mov.w @(DAT_ce30362,pc),r6
    mov.l @(PTR_ce30374,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30268
    mov.w @(DAT_ce30364,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30270

LAB_ce30268:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30270:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30366,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30378,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3028e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3037c,pc),r5
    mov.w @(DAT_ce30368,pc),r6
    mov.l @(PTR_ce30374,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302ac
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302ac:
    mov.w @(DAT_ce30368,pc),r5
    mov.l @(PTR_ce30380,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30366,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30378,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302d4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30384,pc),r5
    mov.w @(DAT_ce3036a,pc),r6
    mov.l @(PTR_ce30374,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302f2
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302f2:
    mov.w @(DAT_ce3036a,pc),r5
    mov.l @(PTR_ce30380,pc),r3
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
    mov.w @(DAT_ce30366,pc),r0
    mov.l @(PTR_ce30378,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3031c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30388,pc),r5
    mov.w @(DAT_ce3036c,pc),r6
    mov.l @(PTR_ce30374,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3033a
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3033a:
    mov.w @(DAT_ce3036c,pc),r5
    mov.l @(PTR_ce30380,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30366,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30378,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30362:
    #data 0x038c
DAT_ce30364:
    #data 0x040c
DAT_ce30366:
    #data 0x01e9
DAT_ce30368:
    #data 0x036c
DAT_ce3036a:
    #data 0x0364
DAT_ce3036c:
    #data 0x0374
    #align4

PTR_ce30370:
    #data DAT_ce340bc
PTR_ce30374:
    #data loc_8c054e58
PTR_ce30378:
    #data loc_8c0530d8
PTR_ce3037c:
    #data DAT_ce3406c
PTR_ce30380:
    #data loc_8c055c3a
PTR_ce30384:
    #data DAT_ce3405c
PTR_ce30388:
    #data DAT_ce3407c

;=============================================

FUN_ce3038c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304a4,pc),r5
    mov.w @(DAT_ce30494,pc),r6
    mov.l @(PTR_ce304a8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303aa
    mov.w @(DAT_ce30496,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce303b2

LAB_ce303aa:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303b2:
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce30494,pc),r5
    mov.l @(PTR_ce304ac,pc),r2
    add 0x01,r3
    add r14,r5
    mov.b r3,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0D,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30498,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304b0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303e0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304b4,pc),r5
    mov.w @(DAT_ce3049a,pc),r6
    mov.l @(PTR_ce304a8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30400
    mov.w @(DAT_ce3049c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30408

LAB_ce30400:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30408:
    mov.w @(DAT_ce3049a,pc),r5
    mov.l @(PTR_ce304ac,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0B,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30498,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304b0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30430:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304b8,pc),r5
    mov.w @(DAT_ce3049e,pc),r6
    mov.l @(PTR_ce304a8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3044e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3044e:
    mov.w @(DAT_ce3049e,pc),r5
    mov.l @(PTR_ce304ac,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x09,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30498,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304b0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30476:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304bc,pc),r5
    mov.w @(DAT_ce304a0,pc),r6
    mov.l @(PTR_ce304a8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce304c0
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30494:
    #data 0x03bc
DAT_ce30496:
    #data 0x01d4
DAT_ce30498:
    #data 0x01e9
DAT_ce3049a:
    #data 0x03a4
DAT_ce3049c:
    #data 0x040c
DAT_ce3049e:
    #data 0x0394
DAT_ce304a0:
    #data 0x039c
    #align4

PTR_ce304a4:
    #data DAT_ce3408c
PTR_ce304a8:
    #data loc_8c054e58
PTR_ce304ac:
    #data loc_8c055c3a
PTR_ce304b0:
    #data loc_8c0530d8
PTR_ce304b4:
    #data DAT_ce340ec
PTR_ce304b8:
    #data DAT_ce340cc
PTR_ce304bc:
    #data DAT_ce340dc

;=============================================

LAB_ce304c0:
    mov.w @(DAT_ce305aa,pc),r5
    mov.l @(PTR_ce305b8,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0A,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce305ac,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce305bc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304e8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305c0,pc),r5
    mov.w @(DAT_ce305ae,pc),r6
    mov.l @(PTR_ce305c4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30506
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30506:
    mov.w @(DAT_ce305ae,pc),r5
    mov.l @(PTR_ce305b8,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0E,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce305ac,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce305bc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3052e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce30574
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30564
    bsr FUN_ce305cc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30564
    bsr FUN_ce30602
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30564
    bsr FUN_ce30638
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30564
    bsr FUN_ce30670
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3056c

LAB_ce30564:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce3056c:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30574:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305c8,pc),r5
    mov.w @(DAT_ce305b0,pc),r6
    mov.l @(PTR_ce305c4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30594
    mov.w @(DAT_ce305b2,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3059c

LAB_ce30594:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3059c:
    mov.w @(DAT_ce305b4,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305aa:
    #data 0x039c
DAT_ce305ac:
    #data 0x01e9
DAT_ce305ae:
    #data 0x03b4
DAT_ce305b0:
    #data 0x037c
DAT_ce305b2:
    #data 0x040c
DAT_ce305b4:
    #data 0x0258
    #align4

PTR_ce305b8:
    #data loc_8c055c3a
PTR_ce305bc:
    #data loc_8c0530d8
PTR_ce305c0:
    #data DAT_ce34112
PTR_ce305c4:
    #data loc_8c054e58
PTR_ce305c8:
    #data DAT_ce3409c

;=============================================

FUN_ce305cc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306d4,pc),r5
    mov.w @(DAT_ce306c6,pc),r6
    mov.l @(PTR_ce306d8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce305ec
    mov.w @(DAT_ce306c8,pc),r0
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
    mov.w @(DAT_ce306ca,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30602:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306dc,pc),r5
    mov.w @(DAT_ce306cc,pc),r6
    mov.l @(PTR_ce306d8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30622
    mov.w @(DAT_ce306c8,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3062a

LAB_ce30622:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3062a:
    mov.w @(DAT_ce306ca,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30638:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306e0,pc),r5
    mov.w @(DAT_ce306ce,pc),r6
    mov.l @(PTR_ce306e4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3065a
    mov.w @(DAT_ce306c8,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    mov 0x03,r2
    cmp/ge r2,r3
    bt LAB_ce30662

LAB_ce3065a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30662:
    mov.w @(DAT_ce306ca,pc),r0
    mov 0x10,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30670:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306e8,pc),r5
    mov.w @(DAT_ce306d0,pc),r6
    mov.l @(PTR_ce306d8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30690
    mov.w @(DAT_ce306c8,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30698

LAB_ce30690:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30698:
    mov.w @(DAT_ce306ca,pc),r0
    mov 0x0B,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce306a6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce306ec,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce306be
    mov.w @(DAT_ce306c8,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce306f0

LAB_ce306be:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306c6:
    #data 0x0384
DAT_ce306c8:
    #data 0x040c
DAT_ce306ca:
    #data 0x0258
DAT_ce306cc:
    #data 0x038c
DAT_ce306ce:
    #data 0x03ac
DAT_ce306d0:
    #data 0x03a4
    #align4

PTR_ce306d4:
    #data DAT_ce340ac
PTR_ce306d8:
    #data loc_8c054e58
PTR_ce306dc:
    #data DAT_ce340bc
PTR_ce306e0:
    #data DAT_ce34122
PTR_ce306e4:
    #data loc_8c0555c8
PTR_ce306e8:
    #data DAT_ce340ec
PTR_ce306ec:
    #data loc_8c054d1c

;=============================================

LAB_ce306f0:
    mov.w @(DAT_ce307cc,pc),r0
    mov 0x11,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce307dc,pc),r3
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

LAB_ce30710:
    rts
    nop

LAB_ce30714:
    mov.w @(DAT_ce307ce,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce307e0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30728:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce307e4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce307d0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30756
    mov.w @(DAT_ce307d2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3074e
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce309c2
    mov.l @r15+,r14

LAB_ce3074e:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce308f0
    mov.l @r15+,r14

LAB_ce30756:
    mov.w @(DAT_ce307d2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30768
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30842
    mov.l @r15+,r14

LAB_ce30768:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30770
    mov.l @r15+,r14

LAB_ce30770:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce307d4,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce307e8,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30796
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307b0
    cmp/eq 0x02,r0
    bt LAB_ce307f4
    bra LAB_ce3080e
    nop

LAB_ce30796:
    mov.w @(DAT_ce307d6,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307d8,pc),r0
    mov.l @(PTR_ce307ec,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307da,pc),r0
    bra LAB_ce3080e
    mov.b r13,@(r0,r14)

LAB_ce307b0:
    mov.w @(DAT_ce307d6,pc),r0
    mov 0x01,r11
    mov 0x15,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307d8,pc),r0
    mov.l @(PTR_ce307f0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307da,pc),r0
    bra LAB_ce3080e
    mov.b r11,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307cc:
    #data 0x01e9
DAT_ce307ce:
    #data 0x01ff
DAT_ce307d0:
    #data 0x01fe
DAT_ce307d2:
    #data 0x01f9
DAT_ce307d4:
    #data 0x01e8
DAT_ce307d6:
    #data 0x0158
DAT_ce307d8:
    #data 0x03f4
DAT_ce307da:
    #data 0x01a7
    #align4

PTR_ce307dc:
    #data loc_8c0530d8
PTR_ce307e0:
    #data PTR_ce341a4
PTR_ce307e4:
    #data loc_8c052b4c
PTR_ce307e8:
    #data loc_8c04223a
PTR_ce307ec:
    #data DAT_ce34014
PTR_ce307f0:
    #data DAT_ce34018

;=============================================

LAB_ce307f4:
    mov.w @(DAT_ce30914,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce30920,pc),r3
    mov 0x16,r5
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30916,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30918,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r12
    mov r14,r4

LAB_ce3080e:
    mov.w @(DAT_ce3091a,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce30924,pc),r3
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
    mov.w @(DAT_ce30914,pc),r0
    mov.l @(PTR_ce30928,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30842:
    mov.w @(DAT_ce3091c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3092c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30866
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30882
    cmp/eq 0x02,r0
    bt LAB_ce308a2
    bra LAB_ce308be
    nop

LAB_ce30866:
    mov.w @(DAT_ce30914,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30916,pc),r0
    mov.l @(PTR_ce30930,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30918,pc),r0
    bra LAB_ce308be
    mov.b r13,@(r0,r14)

LAB_ce30882:
    mov.w @(DAT_ce30914,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30916,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce30934,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30918,pc),r0
    bra LAB_ce308be
    mov.b r2,@(r0,r14)

LAB_ce308a2:
    mov.w @(DAT_ce30914,pc),r0
    mov 0x02,r4
    mov 0x08,r3
    mov.l @(PTR_ce30920,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce30916,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30918,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r12
    mov r14,r4

LAB_ce308be:
    mov.w @(DAT_ce3091a,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce30924,pc),r3
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
    mov.w @(DAT_ce30914,pc),r0
    mov.l @(PTR_ce30928,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce308f0:
    mov.w @(DAT_ce3091c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce3092c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30938
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30954
    cmp/eq 0x02,r0
    bt LAB_ce30974
    bra LAB_ce30990
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30914:
    #data 0x0158
DAT_ce30916:
    #data 0x03f4
DAT_ce30918:
    #data 0x01a7
DAT_ce3091a:
    #data 0x01ac
DAT_ce3091c:
    #data 0x01e8
    #align4

PTR_ce30920:
    #data DAT_ce3401c
PTR_ce30924:
    #data loc_8c2896b0
PTR_ce30928:
    #data loc_8c034e8c
PTR_ce3092c:
    #data loc_8c04223a
PTR_ce30930:
    #data DAT_ce34014
PTR_ce30934:
    #data DAT_ce34018

;=============================================

LAB_ce30938:
    mov.w @(DAT_ce30a70,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a72,pc),r0
    mov.l @(PTR_ce30a7c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30a74,pc),r0
    bra LAB_ce30990
    mov.b r13,@(r0,r14)

LAB_ce30954:
    mov.w @(DAT_ce30a70,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a72,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce30a80,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30a74,pc),r0
    bra LAB_ce30990
    mov.b r2,@(r0,r14)

LAB_ce30974:
    mov.w @(DAT_ce30a70,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce30a84,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce30a72,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a74,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r12
    mov r14,r4

LAB_ce30990:
    mov.w @(DAT_ce30a76,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce30a88,pc),r3
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
    mov.w @(DAT_ce30a70,pc),r0
    mov.l @(PTR_ce30a8c,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce309c2:
    mov.w @(DAT_ce30a78,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30a90,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce309e6
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a02
    cmp/eq 0x02,r0
    bt LAB_ce30a22
    bra LAB_ce30a3e
    nop

LAB_ce309e6:
    mov.w @(DAT_ce30a70,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a72,pc),r0
    mov.l @(PTR_ce30a7c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30a74,pc),r0
    bra LAB_ce30a3e
    mov.b r13,@(r0,r14)

LAB_ce30a02:
    mov.w @(DAT_ce30a70,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a72,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce30a80,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30a74,pc),r0
    bra LAB_ce30a3e
    mov.b r2,@(r0,r14)

LAB_ce30a22:
    mov.w @(DAT_ce30a70,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.l @(PTR_ce30a84,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce30a72,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a74,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r12
    mov r14,r4

LAB_ce30a3e:
    mov.w @(DAT_ce30a76,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30a88,pc),r3
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
    mov.w @(DAT_ce30a70,pc),r0
    mov.l @(PTR_ce30a8c,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a70:
    #data 0x0158
DAT_ce30a72:
    #data 0x03f4
DAT_ce30a74:
    #data 0x01a7
DAT_ce30a76:
    #data 0x01ac
DAT_ce30a78:
    #data 0x01e8
    #align4

PTR_ce30a7c:
    #data DAT_ce34020
PTR_ce30a80:
    #data DAT_ce34024
PTR_ce30a84:
    #data DAT_ce34028
PTR_ce30a88:
    #data loc_8c2896b0
PTR_ce30a8c:
    #data loc_8c034e8c
PTR_ce30a90:
    #data loc_8c04223a

;=============================================

LAB_ce30a94:
    mov.w @(DAT_ce30b6c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30aa4
    mov.w @(DAT_ce30b6e,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30ab4

LAB_ce30aa4:
    mov.w @(DAT_ce30b6c,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30ab8
    mov.w @(DAT_ce30b6e,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30ab8

LAB_ce30ab4:
    bra LAB_ce30abc
    nop

LAB_ce30ab8:
    rts
    nop

LAB_ce30abc:
    mov.w @(DAT_ce30b6c,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30aca
    bra LAB_ce30be4
    nop

LAB_ce30aca:
    bra LAB_ce30ace
    nop

LAB_ce30ace:
    mov.w @(DAT_ce30b70,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b7c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30af2
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30b1e
    cmp/eq 0x02,r0
    bt LAB_ce30b4a
    bra LAB_ce30ba0
    nop

LAB_ce30af2:
    mov.w @(DAT_ce30b72,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b74,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b12
    mov.w @(DAT_ce30b76,pc),r0
    mov.l @(PTR_ce30b80,pc),r3
    bra LAB_ce30b18
    mov.l r3,@(r0,r14)

LAB_ce30b12:
    mov.w @(DAT_ce30b76,pc),r0
    mov.l @(PTR_ce30b84,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b18:
    mov.w @(DAT_ce30b78,pc),r0
    bra LAB_ce30ba0
    mov.b r13,@(r0,r14)

LAB_ce30b1e:
    mov.w @(DAT_ce30b72,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b74,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b40
    mov.w @(DAT_ce30b76,pc),r0
    mov.l @(PTR_ce30b88,pc),r3
    bra LAB_ce30b46
    mov.l r3,@(r0,r14)

LAB_ce30b40:
    mov.w @(DAT_ce30b76,pc),r0
    mov.l @(PTR_ce30b8c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b46:
    bra LAB_ce30b9c
    mov 0x01,r3

LAB_ce30b4a:
    mov.w @(DAT_ce30b72,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b74,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b94
    mov.w @(DAT_ce30b76,pc),r0
    mov.l @(PTR_ce30b90,pc),r3
    bra LAB_ce30b9a
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b6c:
    #data 0x01fe
DAT_ce30b6e:
    #data 0x01d6
DAT_ce30b70:
    #data 0x01e8
DAT_ce30b72:
    #data 0x0158
DAT_ce30b74:
    #data 0x01fc
DAT_ce30b76:
    #data 0x03f4
DAT_ce30b78:
    #data 0x01a7
    #align4

PTR_ce30b7c:
    #data loc_8c04223a
PTR_ce30b80:
    #data DAT_ce3402c
PTR_ce30b84:
    #data DAT_ce34044
PTR_ce30b88:
    #data DAT_ce34030
PTR_ce30b8c:
    #data DAT_ce34048
PTR_ce30b90:
    #data DAT_ce34034

;=============================================

LAB_ce30b94:
    mov.w @(DAT_ce30c82,pc),r0
    mov.l @(PTR_ce30c90,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b9a:
    mov 0x02,r3

LAB_ce30b9c:
    mov.w @(DAT_ce30c84,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30ba0:
    mov.w @(DAT_ce30c86,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30c94,pc),r3
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
    mov.w @(DAT_ce30c88,pc),r0
    mov.l @(PTR_ce30c98,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30c8a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30bda
    mov.w @(DAT_ce30c8a,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30bda:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30be4:
    mov.w @(DAT_ce30c8c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30c9c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30c08
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30c34
    cmp/eq 0x02,r0
    bt LAB_ce30c60
    bra LAB_ce30cc0
    nop

LAB_ce30c08:
    mov.w @(DAT_ce30c88,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c8e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c28
    mov.w @(DAT_ce30c82,pc),r0
    mov.l @(PTR_ce30ca0,pc),r3
    bra LAB_ce30c2e
    mov.l r3,@(r0,r14)

LAB_ce30c28:
    mov.w @(DAT_ce30c82,pc),r0
    mov.l @(PTR_ce30ca4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c2e:
    mov.w @(DAT_ce30c84,pc),r0
    bra LAB_ce30cc0
    mov.b r13,@(r0,r14)

LAB_ce30c34:
    mov.w @(DAT_ce30c88,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c8e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c56
    mov.w @(DAT_ce30c82,pc),r0
    mov.l @(PTR_ce30ca8,pc),r3
    bra LAB_ce30c5c
    mov.l r3,@(r0,r14)

LAB_ce30c56:
    mov.w @(DAT_ce30c82,pc),r0
    mov.l @(PTR_ce30cac,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c5c:
    bra LAB_ce30cbc
    mov 0x01,r3

LAB_ce30c60:
    mov.w @(DAT_ce30c88,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c8e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30cb4
    mov.w @(DAT_ce30c82,pc),r0
    mov.l @(PTR_ce30cb0,pc),r3
    bra LAB_ce30cba
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c82:
    #data 0x03f4
DAT_ce30c84:
    #data 0x01a7
DAT_ce30c86:
    #data 0x01ac
DAT_ce30c88:
    #data 0x0158
DAT_ce30c8a:
    #data 0x01d6
DAT_ce30c8c:
    #data 0x01e8
DAT_ce30c8e:
    #data 0x01fc
    #align4

PTR_ce30c90:
    #data DAT_ce3404c
PTR_ce30c94:
    #data loc_8c2896b0
PTR_ce30c98:
    #data loc_8c034e8c
PTR_ce30c9c:
    #data loc_8c04223a
PTR_ce30ca0:
    #data DAT_ce34038
PTR_ce30ca4:
    #data DAT_ce34050
PTR_ce30ca8:
    #data DAT_ce3403c
PTR_ce30cac:
    #data DAT_ce34054
PTR_ce30cb0:
    #data DAT_ce34040

;=============================================

LAB_ce30cb4:
    mov.w @(DAT_ce30dc4,pc),r0
    mov.l @(PTR_ce30dd8,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30cba:
    mov 0x02,r3

LAB_ce30cbc:
    mov.w @(DAT_ce30dc6,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30cc0:
    mov.w @(DAT_ce30dc8,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30ddc,pc),r3
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
    mov.w @(DAT_ce30dca,pc),r0
    mov.l @(PTR_ce30de0,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30dcc,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30cfa
    mov.w @(DAT_ce30dcc,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30cfa:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30d04:
    mov.w @(DAT_ce30dce,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30de4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30d18:
    sts.l PR,@-r15
    mov.l @(PTR_ce30de8,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30d26:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30dec,pc),r3
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
    mov.w @(DAT_ce30dd0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d8e
    mov.w @(DAT_ce30dd2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d86
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30ed0
    mov.l @r15+,r14

LAB_ce30d86:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e44
    mov.l @r15+,r14

LAB_ce30d8e:
    mov.w @(DAT_ce30dd2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30da0
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e0c
    mov.l @r15+,r14

LAB_ce30da0:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30da8
    mov.l @r15+,r14

LAB_ce30da8:
    mov.w @(DAT_ce30dd4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30df0
    cmp/eq 0x00,r0
    bt LAB_ce30df0
    cmp/eq 0x01,r0
    bt LAB_ce30df0
    bra LAB_ce30e06
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30dc4:
    #data 0x03f4
DAT_ce30dc6:
    #data 0x01a7
DAT_ce30dc8:
    #data 0x01ac
DAT_ce30dca:
    #data 0x0158
DAT_ce30dcc:
    #data 0x01d6
DAT_ce30dce:
    #data 0x01ff
DAT_ce30dd0:
    #data 0x01fe
DAT_ce30dd2:
    #data 0x01f9
DAT_ce30dd4:
    #data 0x01e8
    #align4

PTR_ce30dd8:
    #data DAT_ce34058
PTR_ce30ddc:
    #data loc_8c2896b0
PTR_ce30de0:
    #data loc_8c034e8c
PTR_ce30de4:
    #data PTR_ce341b4
PTR_ce30de8:
    #data loc_8c0511e2
PTR_ce30dec:
    #data loc_8c052c84

;=============================================

LAB_ce30df0:
    mov.l @(PTR_ce30ec4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e06
    lds.l @r15+,PR
    mov.l @(PTR_ce30ec8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e06:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e0c:
    mov.w @(DAT_ce30ebe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30e28
    cmp/eq 0x00,r0
    bt LAB_ce30e28
    cmp/eq 0x01,r0
    bt LAB_ce30e28
    bra LAB_ce30e3e
    nop

LAB_ce30e28:
    mov.l @(PTR_ce30ec4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e3e
    lds.l @r15+,PR
    mov.l @(PTR_ce30ec8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e3e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e44:
    mov.w @(DAT_ce30ebe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30e60
    cmp/eq 0x00,r0
    bt LAB_ce30e70
    cmp/eq 0x01,r0
    bt LAB_ce30e70
    bra LAB_ce30eb8
    nop

LAB_ce30e60:
    mov.l @(PTR_ce30ec4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30e7c
    bra LAB_ce30eb8
    nop

LAB_ce30e70:
    mov.l @(PTR_ce30ec4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e86

LAB_ce30e7c:
    lds.l @r15+,PR
    mov.l @(PTR_ce30ec8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e86:
    mov.w @(DAT_ce30ec0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30eb8
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30ecc,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce30ec0,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30eb8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ebe:
    #data 0x01e8
DAT_ce30ec0:
    #data 0x014b
    #align4

PTR_ce30ec4:
    #data loc_8c034dee
PTR_ce30ec8:
    #data loc_8c051648
PTR_ce30ecc:
    #data loc_8c2896b0

;=============================================

LAB_ce30ed0:
    mov.w @(DAT_ce30fa4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30eec
    cmp/eq 0x01,r0
    bt LAB_ce30eec
    cmp/eq 0x02,r0
    bt LAB_ce30eec
    bra LAB_ce30f02
    nop

LAB_ce30eec:
    mov.l @(PTR_ce30fa8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f02
    lds.l @r15+,PR
    mov.l @(PTR_ce30fac,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f02:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f08:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fb0,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30fb4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30f1e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fb8,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30fbc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30fa6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f40
    bsr FUN_ce30f82
    mov r14,r4
    bra LAB_ce30f44
    nop

LAB_ce30f40:
    bsr FUN_ce30f60
    mov r14,r4

LAB_ce30f44:
    mov.l @(PTR_ce30fc0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30f5a
    lds.l @r15+,PR
    mov.l @(PTR_ce30fc4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f5a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30f60:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30fa8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f7a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30fc8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30f7a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30f82:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30fa8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f9c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30fc8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30f9c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fa4:
    #data 0x01e8
DAT_ce30fa6:
    #data 0x01fe
    #align4

PTR_ce30fa8:
    #data loc_8c034dee
PTR_ce30fac:
    #data loc_8c051648
PTR_ce30fb0:
    #data loc_8c050084
PTR_ce30fb4:
    #data loc_8c04ff88
PTR_ce30fb8:
    #data loc_8c04fea8
PTR_ce30fbc:
    #data loc_8c050048
PTR_ce30fc0:
    #data loc_8c052ce2
PTR_ce30fc4:
    #data loc_8c052dac
PTR_ce30fc8:
    #data loc_8c05176e

;=============================================

LAB_ce30fcc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce3102a
    mov.l @(PTR_ce31104,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov 0x14,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r6
    mov.w @(DAT_ce310f8,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31108,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce310fa,pc),r0
    mov 0x55,r2
    mov 0x00,r4
    mov.l @(PTR_ce3110c,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x05,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31110,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31114,pc),r3
    mov 0x16,r5
    jsr @r3
    mov r14,r4

LAB_ce3102a:
    mov.w @(DAT_ce310fc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3103a
    mov.l @(PTR_ce31118,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3103a:
    mov 0x5C,r1
    mov.l @(PTR_ce3111c,pc),r3
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
    mov.l @(PTR_ce31120,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3108e
    lds.l @r15+,PR
    mov.l @(PTR_ce31124,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3108e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31094:
    mov r4,r3
    mov.l @(PTR_ce31128,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce310a6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31120,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce310fe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce310f2
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31100,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce310e2
    mova @(DAT_ce3112c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31130,pc),r0
    bra LAB_ce310ee
    fmov.s @r0,fr3

LAB_ce310e2:
    mova @(DAT_ce31134,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31138,pc),r0
    fmov.s @r0,fr3

LAB_ce310ee:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce310f2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310f8:
    #data 0x01f9
DAT_ce310fa:
    #data 0x01a1
DAT_ce310fc:
    #data 0x01ff
DAT_ce310fe:
    #data 0x0141
DAT_ce31100:
    #data 0x01d2
    #align4

PTR_ce31104:
    #data loc_8c052b4c
PTR_ce31108:
    #data loc_8c034e8c
PTR_ce3110c:
    #data loc_8c2896b0
PTR_ce31110:
    #data loc_8c056de4
PTR_ce31114:
    #data loc_8c04223a
PTR_ce31118:
    #data loc_8c0511e2
PTR_ce3111c:
    #data loc_8c052c84
PTR_ce31120:
    #data loc_8c034dee
PTR_ce31124:
    #data loc_8c051648
PTR_ce31128:
    #data PTR_ce341c4
DAT_ce3112c:
    #data 0x412d5555
DAT_ce31130:
    #data 0xbe555555
DAT_ce31134:
    #data 0xc12d5555
DAT_ce31138:
    #data 0x3e555555

;=============================================

LAB_ce3113c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31254,pc),r3
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bt LAB_ce31174
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31174:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3117a:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31254,pc),r3
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
    bt LAB_ce311e8
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31250,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311bc
    mova @(DAT_ce31258,pc),r0
    bra LAB_ce311c0
    fmov.s @r0,fr3

LAB_ce311bc:
    mova @(DAT_ce3125c,pc),r0
    fmov.s @r0,fr3

LAB_ce311c0:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31250,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311d2
    mova @(DAT_ce31260,pc),r0
    bra LAB_ce311d6
    fmov.s @r0,fr3

LAB_ce311d2:
    mova @(DAT_ce31264,pc),r0
    fmov.s @r0,fr3

LAB_ce311d6:
    mov 0x02,r6
    mov.l @(PTR_ce31268,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov r6,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce311e8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311ee:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31254,pc),r3
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
    bt LAB_ce31238
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3126c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31238:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3123e:
    mov r4,r3
    mov.l @(PTR_ce31270,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31250:
    #data 0x01d2
    #align4

PTR_ce31254:
    #data loc_8c034dee
DAT_ce31258:
    #data 0x40200000
DAT_ce3125c:
    #data 0xc0200000
DAT_ce31260:
    #data 0xbe555555
DAT_ce31264:
    #data 0x3e555555
PTR_ce31268:
    #data loc_8c034e8c
PTR_ce3126c:
    #data loc_8c051648
PTR_ce31270:
    #data PTR_ce341d4

;=============================================

LAB_ce31274:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3138c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31388,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce312ce
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3138a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce312a8
    mova @(DAT_ce31390,pc),r0
    bra LAB_ce312ac
    fmov.s @r0,fr3

LAB_ce312a8:
    mova @(DAT_ce31394,pc),r0
    fmov.s @r0,fr3

LAB_ce312ac:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3138a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce312be
    mova @(DAT_ce31398,pc),r0
    bra LAB_ce312c2
    fmov.s @r0,fr3

LAB_ce312be:
    mova @(DAT_ce3139c,pc),r0
    fmov.s @r0,fr3

LAB_ce312c2:
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce312d4
    mov.l @r15+,r14

LAB_ce312ce:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312d4:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce3138c,pc),r3
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
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bt LAB_ce3132a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce3132a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31330:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce3138c,pc),r3
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
    bt LAB_ce313c2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3138a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31372
    mova @(DAT_ce313a0,pc),r0
    bra LAB_ce31376
    fmov.s @r0,fr3

LAB_ce31372:
    mova @(DAT_ce313a4,pc),r0
    fmov.s @r0,fr3

LAB_ce31376:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3138a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce313ac
    mova @(DAT_ce313a8,pc),r0
    bra LAB_ce313b0
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31388:
    #data 0x0141
DAT_ce3138a:
    #data 0x01d2
    #align4

PTR_ce3138c:
    #data loc_8c034dee
DAT_ce31390:
    #data 0xc1480000
DAT_ce31394:
    #data 0x41480000
DAT_ce31398:
    #data 0x3ea00000
DAT_ce3139c:
    #data 0xbea00000
DAT_ce313a0:
    #data 0xc0200000
DAT_ce313a4:
    #data 0x40200000
DAT_ce313a8:
    #data 0x3e555555

;=============================================

LAB_ce313ac:
    mova @(DAT_ce314d0,pc),r0
    fmov.s @r0,fr3

LAB_ce313b0:
    mov.l @(PTR_ce314d4,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x03,r6
    mov 0x02,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce313c2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313c8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314d8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313f4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce314dc,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce313f4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313fa:
    mov r4,r3
    mov.l @(PTR_ce314e0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3140c:
    mov.b @(0x7,r4),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov 0x21,r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce314c8,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce3143e
    mov.b @(0x2,r4),r0
    mov.l @(PTR_ce314e4,pc),r1
    extu.b r0,r0
    mov r0,r3
    shll2 r0
    add r3,r0
    mov.w @(DAT_ce314ca,pc),r3
    shll2 r0
    mov.w @(r0,r1),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce3143e
    mov 0x21,r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce3143e:
    rts
    nop

LAB_ce31442:
    mov 0x21,r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3144e
    bra LAB_ce31592
    nop

LAB_ce3144e:
    bra LAB_ce31452
    nop

LAB_ce31452:
    mov r4,r3
    mov.l @(PTR_ce314e8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31464:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r3
    fldi0 fr4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce314cc,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce314d4,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce314ce,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce314ac
    mov.l @(DAT_ce314f0,pc),r1
    mova @(DAT_ce314ec,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    lds r1,FPUL
    fmov fr3,@(r0,r14)
    mov 0x34,r0
    bra LAB_ce314bc
    fsts FPUL,fr3

LAB_ce314ac:
    mov.l @(DAT_ce314f8,pc),r1
    mova @(DAT_ce314f4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    lds r1,FPUL
    fmov fr3,@(r0,r14)
    mov 0x34,r0
    fsts FPUL,fr3

LAB_ce314bc:
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314c8:
    #data 0x0525
DAT_ce314ca:
    #data 0x0200
DAT_ce314cc:
    #data 0x012c
DAT_ce314ce:
    #data 0x0130
    #align4

DAT_ce314d0:
    #data 0xbe555555
PTR_ce314d4:
    #data loc_8c034e8c
PTR_ce314d8:
    #data loc_8c034dee
PTR_ce314dc:
    #data loc_8c051648
PTR_ce314e0:
    #data PTR_ce341e4
PTR_ce314e4:
    #data loc_8c2681dc
PTR_ce314e8:
    #data PTR_ce341ec
DAT_ce314ec:
    #data 0x40555555
DAT_ce314f0:
    #data 0xc2d55555
DAT_ce314f4:
    #data 0xc0555555
DAT_ce314f8:
    #data 0x42d55555

;=============================================

LAB_ce314fc:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce3161c,pc),r3
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
    mov.w @(DAT_ce31616,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31538
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31616,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce31538:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3153e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3161c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31566
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31620,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    mov 0x12,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31566:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3156c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3161c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bt LAB_ce3158c
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    mov 0x00,r0
    mov.b r0,@(0x6,r14)

LAB_ce3158c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31592:
    mov r4,r3
    mov.l @(PTR_ce31624,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce315a4:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31618,pc),r0
    mov.b r3,@(r0,r4)
    add 0x04,r0
    mov.w @(r0,r4),r2
    tst r2,r2
    bt LAB_ce315d2
    mova @(DAT_ce31628,pc),r0
    mov.l @(DAT_ce31630,pc),r1
    fmov.s @r0,fr3
    mov 0x5C,r0
    lds r1,FPUL
    fmov fr3,@(r0,r4)
    mova @(DAT_ce3162c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mov 0x34,r0
    bra LAB_ce315ea
    fsts FPUL,fr3

LAB_ce315d2:
    mova @(DAT_ce31634,pc),r0
    mov.l @(DAT_ce3163c,pc),r1
    fmov.s @r0,fr3
    mov 0x5C,r0
    lds r1,FPUL
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31638,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mov 0x34,r0
    fsts FPUL,fr3

LAB_ce315ea:
    fmov.s @(r0,r4),fr2
    mov 0x02,r6
    mov.l @(DAT_ce31648,pc),r1
    fadd fr3,fr2
    mov.l @(PTR_ce31620,pc),r3
    lds r1,FPUL
    fmov fr2,@(r0,r4)
    mova @(DAT_ce31640,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31644,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    jmp @r3
    mov 0x17,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31616:
    #data 0x0141
DAT_ce31618:
    #data 0x012c
    #align4

PTR_ce3161c:
    #data loc_8c034dee
PTR_ce31620:
    #data loc_8c034e8c
PTR_ce31624:
    #data PTR_ce341fc
DAT_ce31628:
    #data 0x41200000
DAT_ce3162c:
    #data 0xbdd55555
DAT_ce31630:
    #data 0xc2fd5555
DAT_ce31634:
    #data 0xc1200000
DAT_ce31638:
    #data 0x3dd55555
DAT_ce3163c:
    #data 0x42fd5555
DAT_ce31640:
    #data 0xc1092492
DAT_ce31644:
    #data 0xbf4db6db
DAT_ce31648:
    #data 0x44009249

;=============================================

LAB_ce3164c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3177c,pc),r3
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce31778,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31710
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31778,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3177a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce316be
    mov.l @(DAT_ce31780,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    bra LAB_ce316c6
    fsts FPUL,fr3

LAB_ce316be:
    mov.l @(DAT_ce31784,pc),r1
    mov 0x34,r0
    lds r1,FPUL
    fsts FPUL,fr3

LAB_ce316c6:
    fmov.s @(r0,r14),fr2
    mov 0x01,r12
    mov.l @(PTR_ce31788,pc),r13
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov r12,r0
    nop
    mov.l @(PTR_ce3178c,pc),r3
    mov 0x49,r5
    mov.b r0,@(0x5,r13)
    mov.b r0,@(0x6,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31790,pc),r2
    mov r12,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31790,pc),r3
    mov r12,r5
    mov r12,r6
    jsr @r3
    mov r14,r4
    mov 0x03,r0
    mov.b r0,@(0x5,r13)
    mov r12,r0
    nop
    mov.b r0,@(0x6,r13)
    mov 0x22,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce31794,pc),r3
    mov 0x0D,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31710:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3171a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3177c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31742
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31794,pc),r3
    mov 0x1F,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x78,r0
    mov.w r0,@(0x1c,r14)
    mov 0x0D,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31742:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31748:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3177c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bt LAB_ce31772
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31794,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x11,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31772:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31778:
    #data 0x041c
DAT_ce3177a:
    #data 0x0130
    #align4

PTR_ce3177c:
    #data loc_8c034dee
DAT_ce31780:
    #data 0xc2d55555
DAT_ce31784:
    #data 0x42d55555
PTR_ce31788:
    #data loc_8c26a518
PTR_ce3178c:
    #data loc_8c04223a
PTR_ce31790:
    #data loc_8c0e1150
PTR_ce31794:
    #data loc_8c034e8c

;=============================================

LAB_ce31798:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3188c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce317c4
    mov.b @(0x5,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    mov 0x00,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce317c4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce317ca:
    mov r4,r3
    mov.l @(PTR_ce31890,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce317dc:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31894,pc),r0
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce317f8:
    sts.l PR,@-r15
    mov.l @(PTR_ce31898,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    mov 0x01,r2
    mov r0,r6
    mov 0x13,r5
    and r2,r6
    add 0x04,r15
    mov.l @(PTR_ce3189c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31812:
    mov.l @(PTR_ce3189c,pc),r3
    mov 0x02,r6
    jmp @r3
    mov 0x13,r5

LAB_ce3181a:
    mov.l @(PTR_ce3189c,pc),r3
    mov 0x03,r6
    jmp @r3
    mov 0x13,r5

LAB_ce31822:
    mov.l @(PTR_ce3189c,pc),r3
    mov 0x03,r6
    jmp @r3
    mov 0x13,r5

LAB_ce3182a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce318a0,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31842
    lds.l @r15+,PR
    mov.l @(PTR_ce318a4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31842:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce318a8,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31856:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3188c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3188a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3186c
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce3186c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31872:
    mov.l @(PTR_ce3188c,pc),r3
    jmp @r3
    nop

LAB_ce31878:
    mov r4,r3
    mov.l @(PTR_ce318ac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3188a:
    #data 0x0141
    #align4

PTR_ce3188c:
    #data loc_8c034dee
PTR_ce31890:
    #data PTR_ce34210
PTR_ce31894:
    #data PTR_ce34218
PTR_ce31898:
    #data loc_8c11e730
PTR_ce3189c:
    #data loc_8c034e8c
PTR_ce318a0:
    #data loc_8c046c8a
PTR_ce318a4:
    #data loc_8c051648
PTR_ce318a8:
    #data PTR_ce3422c
PTR_ce318ac:
    #data PTR_ce34240

;=============================================

LAB_ce318b0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce319fc,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce319f2,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31a00,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319f4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce318e0
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce318e0:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31a04,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x4C,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31a08,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce319f6,pc),r0
    mov r4,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31a0c,pc),r3
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
    mov.l @(PTR_ce31a10,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3192a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a14,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31a18,pc),r3
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
    bt LAB_ce31992
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce31a10,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31a1c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31992:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31998:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a14,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319ba
    mov.l @(PTR_ce319fc,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31a20,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce319ba:
    mov.w @(DAT_ce319f8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce319c6
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce319c6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce319cc:
    mov.w @(DAT_ce319fa,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31a24,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce319e0:
    mov r4,r3
    mov.l @(PTR_ce31a28,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319f2:
    #data 0x01f9
DAT_ce319f4:
    #data 0x01d2
DAT_ce319f6:
    #data 0x01a1
DAT_ce319f8:
    #data 0x0141
DAT_ce319fa:
    #data 0x01e9
    #align4

PTR_ce319fc:
    #data loc_8c035162
DAT_ce31a00:
    #data 0x41f00000
DAT_ce31a04:
    #data 0x40892492
DAT_ce31a08:
    #data 0xbf4db6db
PTR_ce31a0c:
    #data loc_8c2896b0
PTR_ce31a10:
    #data loc_8c034e8c
PTR_ce31a14:
    #data loc_8c034dee
PTR_ce31a18:
    #data loc_8c052ce2
PTR_ce31a1c:
    #data loc_8c0511b4
PTR_ce31a20:
    #data loc_8c051854
PTR_ce31a24:
    #data PTR_ce3424c
PTR_ce31a28:
    #data PTR_ce34294

;=============================================

LAB_ce31a2c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31b10,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31b02,pc),r0
    mov 0x00,r13
    mov.l @(PTR_ce31b14,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31b18,pc),r2
    mov 0x08,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31b04,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31a66
    mov.w @(DAT_ce31b06,pc),r0
    mov 0x32,r2
    bra LAB_ce31a70
    mov.b r2,@(r0,r14)

LAB_ce31a66:
    mov.w @(DAT_ce31b08,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x30,r3
    mov.b r3,@(r0,r14)

LAB_ce31a70:
    mov.w @(DAT_ce31b0a,pc),r0
    mov r14,r4
    mov.l @(PTR_ce31b1c,pc),r3
    mov 0x00,r6
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x15,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce31b20,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a9e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b24,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31b0c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31ac8
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r3,r5
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31b0c,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31b28,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ac8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31ace:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31b24,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31ae8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31b2c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31ae8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31af0:
    mov r4,r3
    mov.l @(PTR_ce31b30,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b02:
    #data 0x01f9
DAT_ce31b04:
    #data 0x0255
DAT_ce31b06:
    #data 0x01a1
DAT_ce31b08:
    #data 0x01a3
DAT_ce31b0a:
    #data 0x01ac
DAT_ce31b0c:
    #data 0x0141
    #align4

PTR_ce31b10:
    #data loc_8c05218a
PTR_ce31b14:
    #data loc_8c05115a
PTR_ce31b18:
    #data loc_8c056de4
PTR_ce31b1c:
    #data loc_8c2896b0
PTR_ce31b20:
    #data loc_8c034e8c
PTR_ce31b24:
    #data loc_8c034dee
PTR_ce31b28:
    #data loc_8c096588
PTR_ce31b2c:
    #data loc_8c051648
PTR_ce31b30:
    #data PTR_ce342a0

;=============================================

LAB_ce31b34:
    mov.l r14,@-r15
    mova @(DAT_ce31c78,pc),r0
    mov.l r13,@-r15
    mov r4,r14
    mov.l r12,@-r15
    mov.l r11,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    fmov.s @r0,fr15
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce31c6a,pc),r13
    mov.l @(PTR_ce31c7c,pc),r3
    add 0x01,r0
    add r14,r13
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31c80,pc),r2
    mov 0x0D,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31c84,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31c6c,pc),r0
    mov.l @(PTR_ce31c88,pc),r5
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce31ba4
    mov 0x00,r4
    mov.w @(DAT_ce31c6e,pc),r0
    mov 0x33,r1
    mov.b r1,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r5,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mova @(DAT_ce31c8c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce31c90,pc),r0
    bra LAB_ce31be8
    fmov.s @r0,fr3

LAB_ce31ba4:
    mov.w @(DAT_ce31c70,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31bb6
    mov.w @(DAT_ce31c6e,pc),r0
    mov 0x57,r2
    bra LAB_ce31bbc
    mov.b r2,@(r0,r14)

LAB_ce31bb6:
    mov.w @(DAT_ce31c6e,pc),r0
    mov 0x37,r3
    mov.b r3,@(r0,r14)

LAB_ce31bbc:
    mov.w @(DAT_ce31c72,pc),r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r5,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mova @(DAT_ce31c94,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce31c98,pc),r0
    fmov.s @r0,fr3

LAB_ce31be8:
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31c9c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31c74,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31c0c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31c0c:
    mov.w @(DAT_ce31c6c,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31ca0,pc),r11
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce31ca4,pc),r0
    extu.b r6,r6
    mov.b @(r0,r6),r6
    jsr @r11
    mov r14,r4
    mov.b @(0x1,r13),r0
    mov.l @(PTR_ce31ca8,pc),r12
    add 0x01,r0
    mov.b r0,@(0x1,r13)
    mov.b @(0x1,r13),r0
    and 0x03,r0
    mov.b r0,@(0x1,r13)
    mov.b @(0x1,r13),r0
    tst r0,r0
    bt LAB_ce31c44
    mov.w @(DAT_ce31c6c,pc),r0
    mov 0x15,r5
    mov.b @(r0,r14),r0
    extu.b r0,r0
    mov.b @(r0,r12),r6
    jsr @r11
    mov r14,r4
    bra LAB_ce31cb0
    nop

LAB_ce31c44:
    mov.w @(DAT_ce31c6c,pc),r0
    mov 0x15,r5
    mov.b @(r0,r14),r6
    extu.b r6,r6
    add r12,r6
    mov.b @(0x2,r6),r0
    mov r0,r6
    jsr @r11
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31cac,pc),r3
    mov r14,r4
    mov 0x08,r5
    fmov.s @r15+,fr15
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c6a:
    #data 0x02a4
DAT_ce31c6c:
    #data 0x01a3
DAT_ce31c6e:
    #data 0x01a1
DAT_ce31c70:
    #data 0x0255
DAT_ce31c72:
    #data 0x01ac
DAT_ce31c74:
    #data 0x0130
    #align4

DAT_ce31c78:
    #data 0x3f055555
PTR_ce31c7c:
    #data loc_8c05218a
PTR_ce31c80:
    #data loc_8c056de4
PTR_ce31c84:
    #data loc_8c05115a
PTR_ce31c88:
    #data loc_8c2896b0
DAT_ce31c8c:
    #data 0xc0555555
DAT_ce31c90:
    #data 0x41892492
DAT_ce31c94:
    #data 0xc1200000
DAT_ce31c98:
    #data 0x42092492
DAT_ce31c9c:
    #data 0xbf892492
PTR_ce31ca0:
    #data loc_8c034e8c
PTR_ce31ca4:
    #data DAT_ce33fea
PTR_ce31ca8:
    #data DAT_ce33fe8
PTR_ce31cac:
    #data loc_8c035162

;=============================================

LAB_ce31cb0:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31cbe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31e00,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31df8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31ce8
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31e04,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31e08,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31ce8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31cee:
    mov 0x60,r1
    add r4,r1
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r4),fr2
    mov 0x6C,r1
    add r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x60,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x6C,r0
    fmov.s @(r0,r4),fr3
    mov 0x60,r0
    fmov.s @(r0,r4),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf LAB_ce31d22
    mova @(DAT_ce31e0c,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r4)

LAB_ce31d22:
    rts
    nop

LAB_ce31d26:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31cee
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf/s LAB_ce31d62
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31d62:
    lds.l @r15+,PR
    mov.l @(PTR_ce31e00,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d6a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31cee
    mov r4,r14
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce31dfa,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31d9c
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31dfa,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31dfc,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31e10,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d9c:
    mov.w @(DAT_ce31df8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31dae
    lds.l @r15+,PR
    mov.l @(PTR_ce31e00,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31dae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31db4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31e00,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31de0
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31e14,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31de0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31de6:
    mov r4,r3
    mov.l @(PTR_ce31e18,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31df8:
    #data 0x0141
DAT_ce31dfa:
    #data 0x041c
DAT_ce31dfc:
    #data 0x01f9
    #align4

PTR_ce31e00:
    #data loc_8c034dee
PTR_ce31e04:
    #data loc_8c035162
PTR_ce31e08:
    #data loc_8c053082
DAT_ce31e0c:
    #data 0xbfcdb6db
PTR_ce31e10:
    #data loc_8c0511b4
PTR_ce31e14:
    #data loc_8c051648
PTR_ce31e18:
    #data PTR_ce342b4

;=============================================

LAB_ce31e1c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31f28,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f2c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31f30,pc),r3
    mov 0x0D,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f1e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce31e4a
    mov 0x15,r5
    bra LAB_ce31e4c
    mov 0x06,r6

LAB_ce31e4a:
    mov 0x08,r6

LAB_ce31e4c:
    lds.l @r15+,PR
    mov.l @(PTR_ce31f34,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e56:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31f38,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31f20,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bf LAB_ce31eb2
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31f3c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f1e,pc),r0
    mov.l @(PTR_ce31f40,pc),r3
    mov.b @(r0,r14),r4
    mov 0x5C,r0
    extu.b r4,r4
    shll2 r4
    shll2 r4
    add r3,r4
    fmov.s @r4+,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @r4+,fr3
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov.s @r4+,fr3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov.s @r4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f22,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31eb2
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31eb2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31eb8:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l r13,@-r15
    mov 0x34,r0
    add r14,r1
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    mov 0x00,r13
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
    mov.l @(PTR_ce31f38,pc),r3
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31f24,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31f6e
    mov.w @(DAT_ce31f26,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31f44
    mov.w @(DAT_ce31f24,pc),r0
    mov.b @(r0,r14),r2
    add 0x56,r0
    add 0x1C,r2
    bra LAB_ce31f4c
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f1e:
    #data 0x01a3
DAT_ce31f20:
    #data 0x0141
DAT_ce31f22:
    #data 0x0130
DAT_ce31f24:
    #data 0x014b
DAT_ce31f26:
    #data 0x0255
    #align4

PTR_ce31f28:
    #data loc_8c05218a
PTR_ce31f2c:
    #data loc_8c05115a
PTR_ce31f30:
    #data loc_8c056de4
PTR_ce31f34:
    #data loc_8c034e8c
PTR_ce31f38:
    #data loc_8c034dee
PTR_ce31f3c:
    #data loc_8c053082
PTR_ce31f40:
    #data DAT_ce33fec

;=============================================

LAB_ce31f44:
    mov.w @(DAT_ce32072,pc),r0
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)

LAB_ce31f4c:
    mov.w @(DAT_ce32074,pc),r0
    mov.l @(PTR_ce32080,pc),r3
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
    mov.w @(DAT_ce32072,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce31f6e:
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce32076,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31fb0
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32076,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32078,pc),r0
    mov.b r3,@(r0,r14)
    add 0xAA,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce31f9c
    mov 0x15,r5
    bra LAB_ce31f9e
    mov 0x28,r6

LAB_ce31f9c:
    mov 0x2A,r6

LAB_ce31f9e:
    mov.l @(PTR_ce32084,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32088,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31fb0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31fb8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3208c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31fe4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32090,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31fe4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31fea:
    mov r4,r3
    mov.l @(PTR_ce32094,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31ffc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32098,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3209c,pc),r2
    mov 0x0D,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3207a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32024
    mov 0x15,r5
    bra LAB_ce32026
    mov 0x2C,r6

LAB_ce32024:
    mov 0x2D,r6

LAB_ce32026:
    mov.l @(PTR_ce32084,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32078,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32038:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3208c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3207c,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bf LAB_ce320e2
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce320a0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3207a,pc),r0
    mov.b @(r0,r14),r4
    add 0x30,r0
    mov.b @(r0,r14),r2
    extu.b r4,r4
    shll2 r4
    cmp/pz r2
    shll2 r4
    bt/s LAB_ce320a4
    add r3,r4
    mov.w @(DAT_ce3207e,pc),r0
    mov.w @(r0,r14),r1
    tst r1,r1
    bf LAB_ce320ae
    bra LAB_ce320b2
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32072:
    #data 0x014b
DAT_ce32074:
    #data 0x01ac
DAT_ce32076:
    #data 0x041c
DAT_ce32078:
    #data 0x01f9
DAT_ce3207a:
    #data 0x01a3
DAT_ce3207c:
    #data 0x0141
DAT_ce3207e:
    #data 0x0130
    #align4

PTR_ce32080:
    #data loc_8c2896b0
PTR_ce32084:
    #data loc_8c034e8c
PTR_ce32088:
    #data loc_8c0511b4
PTR_ce3208c:
    #data loc_8c034dee
PTR_ce32090:
    #data loc_8c051648
PTR_ce32094:
    #data PTR_ce342c4
PTR_ce32098:
    #data loc_8c05218a
PTR_ce3209c:
    #data loc_8c056de4
PTR_ce320a0:
    #data DAT_ce33fec

;=============================================

LAB_ce320a4:
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce320b2

LAB_ce320ae:
    bra LAB_ce320b4
    mov 0x01,r5

LAB_ce320b2:
    mov 0x00,r5

LAB_ce320b4:
    fmov.s @r4+,fr3
    mov 0x5C,r0
    exts.b r5,r5
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @r4+,fr3
    tst r5,r5
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov.s @r4+,fr3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov.s @r4,fr3
    bt/s LAB_ce320e2
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce320e2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce320e8:
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce321e6,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32166
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce321e6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce321e8,pc),r0
    mov.b r3,@(r0,r14)
    add 0xAA,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce32154
    mov 0x15,r5
    bra LAB_ce32156
    mov 0x28,r6

LAB_ce32154:
    mov 0x2A,r6

LAB_ce32156:
    mov.l @(PTR_ce321ec,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce321f0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32166:
    mov.l @(PTR_ce321f4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3217c
    lds.l @r15+,PR
    mov.l @(PTR_ce321f8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3217c:
    mov.w @(DAT_ce321ea,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce321ae
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce321fc,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce321ea,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce321ae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce321b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce321f4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321e0
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32200,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce321e0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce321e6:
    #data 0x041c
DAT_ce321e8:
    #data 0x01f9
DAT_ce321ea:
    #data 0x014b
    #align4

PTR_ce321ec:
    #data loc_8c034e8c
PTR_ce321f0:
    #data loc_8c0511b4
PTR_ce321f4:
    #data loc_8c034dee
PTR_ce321f8:
    #data loc_8c05176e
PTR_ce321fc:
    #data loc_8c2896b0
PTR_ce32200:
    #data loc_8c051648

;=============================================

LAB_ce32204:
    mov r4,r3
    mov.l @(PTR_ce32354,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32216:
    mov.w @(DAT_ce3233e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32234
    mov.w @(DAT_ce32342,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32340,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32234:
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce32358,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32344,pc),r0
    mov 0x00,r13
    mov.l @(PTR_ce3235c,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32360,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32346,pc),r0
    mov 0x3F,r3
    mov 0x16,r5
    mov r13,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32364,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32368,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32348,pc),r0
    mov.b @(r0,r14),r3
    add 0x08,r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32292:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3234a,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3234c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3233e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce322b4
    bra LAB_ce322b6
    mov 0x02,r3

LAB_ce322b4:
    mov 0x00,r3

LAB_ce322b6:
    mov.w @(DAT_ce3234e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3236c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32350,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce322fa
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32378,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce32342,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32350,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32370,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32374,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce322fa:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32302:
    mov.w @(DAT_ce3234a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3234c,pc),r0
    mov.l @(PTR_ce3236c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32350,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32338
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x01,r5
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3237c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32338:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3233e:
    #data 0x0255
DAT_ce32340:
    #data 0x00ff
DAT_ce32342:
    #data 0x03f0
DAT_ce32344:
    #data 0x01f9
DAT_ce32346:
    #data 0x01a1
DAT_ce32348:
    #data 0x0142
DAT_ce3234a:
    #data 0x03f8
DAT_ce3234c:
    #data 0x0328
DAT_ce3234e:
    #data 0x03f1
DAT_ce32350:
    #data 0x0141
    #align4

PTR_ce32354:
    #data PTR_ce342d4
PTR_ce32358:
    #data loc_8c035162
PTR_ce3235c:
    #data loc_8c05218a
PTR_ce32360:
    #data loc_8c05115a
PTR_ce32364:
    #data loc_8c2896b0
PTR_ce32368:
    #data loc_8c034e8c
PTR_ce3236c:
    #data loc_8c034dee
DAT_ce32370:
    #data 0x42555555
DAT_ce32374:
    #data 0x433c9249
PTR_ce32378:
    #data loc_8c050834
PTR_ce3237c:
    #data loc_8c096588

;=============================================

LAB_ce32380:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3248c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce323ac
    mov.w @(DAT_ce32478,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32490,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3247a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce323ac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce323b2:
    mov r4,r3
    mov.l @(PTR_ce32494,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce323c4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3247c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce323e8
    mov 0x00,r5
    mov.w @(DAT_ce32480,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3247e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce323e8:
    mov.l @(PTR_ce32498,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3249c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce324a0,pc),r3
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
    mov.w @(DAT_ce32482,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3241a
    mova @(DAT_ce324a4,pc),r0
    bra LAB_ce3241e
    fmov.s @r0,fr3

LAB_ce3241a:
    mova @(DAT_ce324a8,pc),r0
    fmov.s @r0,fr3

LAB_ce3241e:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x40,r3
    mov.w @(DAT_ce32484,pc),r0
    mov 0x00,r4
    mov 0x01,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce324ac,pc),r3
    mov 0x16,r5
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
    mov.l @(PTR_ce324b0,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce32456:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32486,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32488,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3247c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce324b4
    bra LAB_ce324b6
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32478:
    #data 0x03f9
DAT_ce3247a:
    #data 0x0327
DAT_ce3247c:
    #data 0x0255
DAT_ce3247e:
    #data 0x00ff
DAT_ce32480:
    #data 0x03f0
DAT_ce32482:
    #data 0x0130
DAT_ce32484:
    #data 0x01a1
DAT_ce32486:
    #data 0x03f8
DAT_ce32488:
    #data 0x0328
    #align4

PTR_ce3248c:
    #data loc_8c034dee
PTR_ce32490:
    #data loc_8c051648
PTR_ce32494:
    #data PTR_ce342e4
PTR_ce32498:
    #data loc_8c035162
PTR_ce3249c:
    #data loc_8c05218a
PTR_ce324a0:
    #data loc_8c05115a
DAT_ce324a4:
    #data 0x3fd55555
DAT_ce324a8:
    #data 0xbfd55555
PTR_ce324ac:
    #data loc_8c2896b0
PTR_ce324b0:
    #data loc_8c034e8c

;=============================================

LAB_ce324b4:
    mov 0x00,r3

LAB_ce324b6:
    mov.w @(DAT_ce3260a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32614,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3260c,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce324fa
    mov.w @(DAT_ce3260e,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32620,pc),r3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3260c,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32618,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3261c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce324fa:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32502:
    mov.w @(DAT_ce32610,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32612,pc),r0
    mov.l @(PTR_ce32614,pc),r3
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
    mov.w @(DAT_ce3260c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3256e
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov 0x41,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3260c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32624,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce3256e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32574:
    mov.w @(DAT_ce32610,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32612,pc),r0
    mov.l @(PTR_ce32614,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3260c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce325c4
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3260c,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32628,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce32630,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3262c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce325c4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce325ca:
    mov 0x60,r1
    add r4,r1
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r4),fr2
    mov 0x6C,r1
    add r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x60,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x6C,r0
    fmov.s @(r0,r4),fr3
    mov 0x60,r0
    fmov.s @(r0,r4),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf LAB_ce32604
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mova @(DAT_ce32634,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r4)

LAB_ce32604:
    mov.l @(PTR_ce32614,pc),r3
    jmp @r3
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3260a:
    #data 0x03f1
DAT_ce3260c:
    #data 0x0141
DAT_ce3260e:
    #data 0x03f0
DAT_ce32610:
    #data 0x03f8
DAT_ce32612:
    #data 0x0328
    #align4

PTR_ce32614:
    #data loc_8c034dee
DAT_ce32618:
    #data 0xc1d55555
DAT_ce3261c:
    #data 0x42cdb6db
PTR_ce32620:
    #data loc_8c050834
PTR_ce32624:
    #data loc_8c2896b0
DAT_ce32628:
    #data 0x42092492
DAT_ce3262c:
    #data 0xbf892492
PTR_ce32630:
    #data loc_8c053082
DAT_ce32634:
    #data 0xc0092492

;=============================================

LAB_ce32638:
    mov 0x60,r1
    add r4,r1
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r4),fr2
    mov 0x6C,r1
    add r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x60,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x38,r0
    fmov.s @(r0,r4),fr3
    mov.w @(DAT_ce3276c,pc),r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32672
    mov.b @(0x6,r4),r0
    mov.l @(PTR_ce32780,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3276c,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce32672:
    mov.w @(DAT_ce3276e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce32680
    mov.l @(PTR_ce32784,pc),r3
    jmp @r3
    nop

LAB_ce32680:
    rts
    nop

LAB_ce32684:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32784,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce326b0
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32788,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce326b0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce326b6:
    mov r4,r3
    mov.l @(PTR_ce3278c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce326c8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.w @(DAT_ce32770,pc),r3
    add r14,r3
    mov.l r3,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32772,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce326f4
    mov 0x00,r5
    mov.w @(DAT_ce32776,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32774,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce326f4:
    mov.l @(PTR_ce32790,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32794,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32798,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32778,pc),r0
    mov 0x42,r3
    mov 0x00,r4
    mov.l @r15,r2
    mov 0x16,r5
    mov.b r4,@r2
    mov 0x02,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3279c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce327a0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3277a,pc),r0
    mov.b @(r0,r14),r3
    add 0x08,r3
    mov.b r3,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3274a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3277c,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3277e,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32772,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce327a4
    bra LAB_ce327a6
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3276c:
    #data 0x041c
DAT_ce3276e:
    #data 0x0141
DAT_ce32770:
    #data 0x02a4
DAT_ce32772:
    #data 0x0255
DAT_ce32774:
    #data 0x00ff
DAT_ce32776:
    #data 0x03f0
DAT_ce32778:
    #data 0x01a1
DAT_ce3277a:
    #data 0x0142
DAT_ce3277c:
    #data 0x03f8
DAT_ce3277e:
    #data 0x0328
    #align4

PTR_ce32780:
    #data loc_8c0511b4
PTR_ce32784:
    #data loc_8c034dee
PTR_ce32788:
    #data loc_8c051648
PTR_ce3278c:
    #data PTR_ce34300
PTR_ce32790:
    #data loc_8c035162
PTR_ce32794:
    #data loc_8c05218a
PTR_ce32798:
    #data loc_8c05115a
PTR_ce3279c:
    #data loc_8c2896b0
PTR_ce327a0:
    #data loc_8c034e8c

;=============================================

LAB_ce327a4:
    mov 0x00,r3

LAB_ce327a6:
    mov.w @(DAT_ce328ce,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce328ec,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce328d0,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce327ea
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce328f8,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce328d0,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce328d2,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce328f0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce328f4,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce327ea:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce327f2:
    mov.w @(DAT_ce328d4,pc),r5
    mov 0x02,r3
    mov.w @(DAT_ce328d6,pc),r0
    mov 0x05,r2
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    add r14,r5
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce328d8,pc),r0
    mov.b r2,@(r0,r14)
    mov.b @r5,r3
    tst r3,r3
    bf/s LAB_ce32890
    mov 0x00,r13
    mov.w @(DAT_ce328da,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32890
    mov.w @(DAT_ce328dc,pc),r0
    mov.l @(r0,r14),r4
    mov.b @(0x3,r4),r0
    tst r0,r0
    bf LAB_ce32890
    mov.w @(DAT_ce328de,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce32890
    mov.w @(DAT_ce328e0,pc),r6
    mov 0x00,r1
    mov.l @(DAT_ce328fc,pc),r3
    add r4,r6
    mov.l @r6,r2
    and r3,r2
    or r1,r2
    tst r2,r2
    bf LAB_ce32890
    mov.w @(DAT_ce328e2,pc),r0
    mov 0x01,r3
    mov.b r3,@r5
    mov.l @(r0,r14),r2
    add 0xED,r0
    mov.b r13,@(r0,r2)
    add 0x13,r0
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce328e4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r3)
    mov.w @(DAT_ce328e2,pc),r0
    mov.l @(r0,r14),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fmov fr3,@(r0,r3)
    mov.w @(DAT_ce328e6,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3287e
    mov.l @(DAT_ce32900,pc),r1
    mov.w @(DAT_ce328e2,pc),r0
    lds r1,FPUL
    mov.l @(r0,r14),r3
    mov 0x34,r0
    fmov.s @(r0,r3),fr2
    fsts FPUL,fr3
    fsub fr3,fr2
    fmov fr2,@(r0,r3)
    bra LAB_ce32890
    nop

LAB_ce3287e:
    mov.l @(DAT_ce32904,pc),r1
    mov.w @(DAT_ce328e2,pc),r0
    lds r1,FPUL
    mov.l @(r0,r14),r2
    mov 0x34,r0
    fmov.s @(r0,r2),fr2
    fsts FPUL,fr3
    fsub fr3,fr2
    fmov fr2,@(r0,r2)

LAB_ce32890:
    mov.l @(PTR_ce328ec,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce3290c
    mov.w @(DAT_ce328e8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3297e
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32908,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce328e8,pc),r0
    bra LAB_ce3297e
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328ce:
    #data 0x03f1
DAT_ce328d0:
    #data 0x0141
DAT_ce328d2:
    #data 0x03f0
DAT_ce328d4:
    #data 0x02a4
DAT_ce328d6:
    #data 0x03f8
DAT_ce328d8:
    #data 0x0328
DAT_ce328da:
    #data 0x019e
DAT_ce328dc:
    #data 0x01b0
DAT_ce328de:
    #data 0x0411
DAT_ce328e0:
    #data 0x0414
DAT_ce328e2:
    #data 0x020c
DAT_ce328e4:
    #data 0x041c
DAT_ce328e6:
    #data 0x0130
DAT_ce328e8:
    #data 0x014b
    #align4

PTR_ce328ec:
    #data loc_8c034dee
DAT_ce328f0:
    #data 0xc1555555
DAT_ce328f4:
    #data 0x431e9249
PTR_ce328f8:
    #data loc_8c050834
DAT_ce328fc:
    #data 0x07000000
DAT_ce32900:
    #data 0xc2d55555
DAT_ce32904:
    #data 0x42d55555
PTR_ce32908:
    #data loc_8c2896b0

;=============================================

LAB_ce3290c:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32a70,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32a74,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32a78,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32a7c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32a5e,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3294a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3294a:
    mov.w @(DAT_ce32a60,pc),r0
    mov 0x4B,r3
    mov 0x03,r6
    mov r14,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32a80,pc),r3
    mov 0x16,r5
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
    mov.l @(PTR_ce32a84,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3297e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32986:
    mov.w @(DAT_ce32a62,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32a64,pc),r0
    mov.l @(PTR_ce32a88,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32a66,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce329b6
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32a8c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce329b6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce329bc:
    mov.w @(DAT_ce32a62,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32a64,pc),r0
    mov.b r2,@(r0,r14)
    bsr FUN_ce31cee
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf/s LAB_ce32a06
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce32a06:
    lds.l @r15+,PR
    mov.l @(PTR_ce32a88,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a0e:
    mov.w @(DAT_ce32a62,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32a64,pc),r0
    mov.b r2,@(r0,r14)
    bsr FUN_ce31cee
    mov r14,r4
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce32a68,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32a94
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32a90,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32a6a,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32a6c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32a68,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32a6e,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a5e:
    #data 0x0130
DAT_ce32a60:
    #data 0x01a1
DAT_ce32a62:
    #data 0x03f8
DAT_ce32a64:
    #data 0x0328
DAT_ce32a66:
    #data 0x0141
DAT_ce32a68:
    #data 0x041c
DAT_ce32a6a:
    #data 0x03f9
DAT_ce32a6c:
    #data 0x0327
DAT_ce32a6e:
    #data 0x01f9
    #align4

DAT_ce32a70:
    #data 0xc1855555
DAT_ce32a74:
    #data 0x3f3aaaaa
DAT_ce32a78:
    #data 0x42092492
DAT_ce32a7c:
    #data 0xbf892492
PTR_ce32a80:
    #data loc_8c2896b0
PTR_ce32a84:
    #data loc_8c034e8c
PTR_ce32a88:
    #data loc_8c034dee
PTR_ce32a8c:
    #data loc_8c053082
PTR_ce32a90:
    #data loc_8c0511b4

;=============================================

LAB_ce32a94:
    mov.w @(DAT_ce32b7e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32aa6
    lds.l @r15+,PR
    mov.l @(PTR_ce32b84,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32aa6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32aac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32b84,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32ad8
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32b88,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ad8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ade:
    mov r4,r3
    mov.l @(PTR_ce32b8c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32af0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32b90,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x48,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32b80,pc),r0
    mov.l @(PTR_ce32b98,pc),r3
    mov.b @(r0,r14),r5
    mov.l @(PTR_ce32b94,pc),r0
    extu.b r5,r5
    shll r5
    mov.b @(r0,r5),r5
    extu.b r5,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32b80,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce32ba0,pc),r3
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce32b9c,pc),r0
    extu.b r6,r6
    shll r6
    mov.b @(r0,r6),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32b80,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32b40
    mov.b @(0x6,r14),r0
    add 0x01,r0
    bra LAB_ce32b52
    mov.b r0,@(0x6,r14)

LAB_ce32b40:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce32b52:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b58:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32b84,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bt LAB_ce32b78
    lds.l @r15+,PR
    mov.l @(PTR_ce32b88,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32b78:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b7e:
    #data 0x0141
DAT_ce32b80:
    #data 0x01f9
    #align4

PTR_ce32b84:
    #data loc_8c034dee
PTR_ce32b88:
    #data loc_8c051648
PTR_ce32b8c:
    #data PTR_ce3431c
PTR_ce32b90:
    #data loc_8c05218a
PTR_ce32b94:
    #data DAT_ce3400d
PTR_ce32b98:
    #data loc_8c056de4
PTR_ce32b9c:
    #data DAT_ce3400c
PTR_ce32ba0:
    #data loc_8c034e8c

;=============================================

LAB_ce32ba4:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32ce8,pc),r3
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
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bf LAB_ce32c00
    mov.l @(PTR_ce32cec,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce32c0a

LAB_ce32c00:
    lds.l @r15+,PR
    mov.l @(PTR_ce32cf0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32c0a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c10:
    mov r4,r3
    mov.l @(PTR_ce32cf4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32c22:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32cf8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32cfc,pc),r2
    mov 0x20,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32ce2,pc),r0
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
    mov.w @(DAT_ce32ce4,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32c62
    mova @(DAT_ce32d00,pc),r0
    bra LAB_ce32c66
    fmov.s @r0,fr3

LAB_ce32c62:
    mova @(DAT_ce32d04,pc),r0
    fmov.s @r0,fr3

LAB_ce32c66:
    mov.l @(PTR_ce32d08,pc),r3
    mov 0x5C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x11,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32c78:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32ce8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32ce6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32c96
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32ce6,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce32c96:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c9c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce32ce8,pc),r3
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
    mov.w @(DAT_ce32ce6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32cdc
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32ce6,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32cdc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ce2:
    #data 0x01f9
DAT_ce32ce4:
    #data 0x0130
DAT_ce32ce6:
    #data 0x0141
    #align4

PTR_ce32ce8:
    #data loc_8c034dee
PTR_ce32cec:
    #data loc_8c052ce2
PTR_ce32cf0:
    #data loc_8c05176e
PTR_ce32cf4:
    #data PTR_ce34328
PTR_ce32cf8:
    #data loc_8c05218a
PTR_ce32cfc:
    #data loc_8c056de4
DAT_ce32d00:
    #data 0x40555555
DAT_ce32d04:
    #data 0xc0555555
PTR_ce32d08:
    #data loc_8c034e8c

;=============================================

LAB_ce32d0c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32e34,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bt LAB_ce32d3e
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32e38,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32d3e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32d44:
    mov r4,r3
    mov.l @(PTR_ce32e3c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32d56:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32e40,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32e44,pc),r2
    mov 0x20,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32e2a,pc),r0
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
    mov.w @(DAT_ce32e2c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32d96
    mova @(DAT_ce32e48,pc),r0
    bra LAB_ce32d9a
    fmov.s @r0,fr3

LAB_ce32d96:
    mova @(DAT_ce32e4c,pc),r0
    fmov.s @r0,fr3

LAB_ce32d9a:
    mov.l @(PTR_ce32e50,pc),r3
    mov 0x5C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x12,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32dac:
    mov r4,r3
    mov.l @(PTR_ce32e54,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32dbe:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32e2e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32de0
    mov.w @(DAT_ce32e32,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32e30,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32de0:
    mov.w @(DAT_ce32e2a,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce32e58,pc),r3
    mov r2,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32e40,pc),r2
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
    mov.w @(DAT_ce32e2c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32e14
    mova @(DAT_ce32e4c,pc),r0
    bra LAB_ce32e18
    fmov.s @r0,fr3

LAB_ce32e14:
    mova @(DAT_ce32e48,pc),r0
    fmov.s @r0,fr3

LAB_ce32e18:
    mov.l @(PTR_ce32e50,pc),r3
    mov 0x5C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x13,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e2a:
    #data 0x01f9
DAT_ce32e2c:
    #data 0x0130
DAT_ce32e2e:
    #data 0x0255
DAT_ce32e30:
    #data 0x00ff
DAT_ce32e32:
    #data 0x03f0
    #align4

PTR_ce32e34:
    #data loc_8c034dee
PTR_ce32e38:
    #data loc_8c051648
PTR_ce32e3c:
    #data PTR_ce34338
PTR_ce32e40:
    #data loc_8c05218a
PTR_ce32e44:
    #data loc_8c056de4
DAT_ce32e48:
    #data 0xc0555555
DAT_ce32e4c:
    #data 0x40555555
PTR_ce32e50:
    #data loc_8c034e8c
PTR_ce32e54:
    #data PTR_ce34348
PTR_ce32e58:
    #data loc_8c035162

;=============================================

LAB_ce32e5c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32f8a,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32f8c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32f8e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32e7e
    bra LAB_ce32e80
    mov 0x02,r3

LAB_ce32e7e:
    mov 0x00,r3

LAB_ce32e80:
    mov.w @(DAT_ce32f90,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32f98,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32f92,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32ec4
    mov.w @(DAT_ce32f94,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32fa4,pc),r3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32f92,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32f9c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32fa0,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32ec4:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ecc:
    mov.b @(0x6,r4),r0
    mov 0x02,r3
    mov 0x05,r2
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x14,r6
    mov.w @(DAT_ce32f8a,pc),r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce32f8c,pc),r0
    mov.l @(PTR_ce32fa8,pc),r3
    mov.b r2,@(r0,r4)
    jmp @r3
    mov 0x15,r5

LAB_ce32ee6:
    mov.w @(DAT_ce32f8a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32f8c,pc),r0
    mov.l @(PTR_ce32f98,pc),r3
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
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32f26
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce32f26:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f2c:
    mov.w @(DAT_ce32f8a,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov 0x15,r6
    mov.w @(DAT_ce32f8c,pc),r0
    mov.l @(PTR_ce32fa8,pc),r3
    mov.b r2,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov r6,r5

LAB_ce32f46:
    mov.w @(DAT_ce32f8a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32f8c,pc),r0
    mov.l @(PTR_ce32f98,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32f6a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce32f6a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f70:
    mov.w @(DAT_ce32f8a,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov 0x18,r6
    mov.w @(DAT_ce32f8c,pc),r0
    mov.l @(PTR_ce32fa8,pc),r3
    mov.b r2,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f8a:
    #data 0x03f8
DAT_ce32f8c:
    #data 0x0328
DAT_ce32f8e:
    #data 0x0255
DAT_ce32f90:
    #data 0x03f1
DAT_ce32f92:
    #data 0x0141
DAT_ce32f94:
    #data 0x03f0
    #align4

PTR_ce32f98:
    #data loc_8c034dee
DAT_ce32f9c:
    #data 0xc1d55555
DAT_ce32fa0:
    #data 0x433a6db6
PTR_ce32fa4:
    #data loc_8c050834
PTR_ce32fa8:
    #data loc_8c034e8c

;=============================================

LAB_ce32fac:
    mov.w @(DAT_ce330ce,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce330d0,pc),r0
    mov.l @(PTR_ce330d8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32fd0
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce32fd0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fd6:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r2
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x22,r6
    mov.w @(DAT_ce330ce,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce330d0,pc),r0
    mov.l @(PTR_ce330dc,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33002:
    mov.w @(DAT_ce330ce,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce330d0,pc),r0
    mov.l @(PTR_ce330d8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bt LAB_ce33046
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce330d2,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3303a
    mov 0x15,r5
    bra LAB_ce3303c
    mov 0x24,r6

LAB_ce3303a:
    mov 0x23,r6

LAB_ce3303c:
    lds.l @r15+,PR
    mov.l @(PTR_ce330dc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33046:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3304c:
    mov.w @(DAT_ce330ce,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce330d0,pc),r0
    mov.l @(PTR_ce330d8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33070
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce33070:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33076:
    mov.b @(0x6,r4),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce330d4,pc),r0
    mov.b r5,@(r0,r4)
    add 0xFF,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce330d6,pc),r0
    mov.b r5,@(r0,r4)
    add 0x01,r0
    mov.b r5,@(r0,r4)
    mova @(DAT_ce330e0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce330e4,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce330e8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce330ec,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce330d2,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce330c8
    mov 0x16,r6
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce330c8:
    mov.l @(PTR_ce330dc,pc),r3
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce330ce:
    #data 0x03f8
DAT_ce330d0:
    #data 0x0328
DAT_ce330d2:
    #data 0x0130
DAT_ce330d4:
    #data 0x03f9
DAT_ce330d6:
    #data 0x0327
    #align4

PTR_ce330d8:
    #data loc_8c034dee
PTR_ce330dc:
    #data loc_8c034e8c
DAT_ce330e0:
    #data 0xc0c80000
DAT_ce330e4:
    #data 0x3d200000
DAT_ce330e8:
    #data 0x41a50000
DAT_ce330ec:
    #data 0xbf676db6

;=============================================

LAB_ce330f0:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce33254,pc),r3
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
    mov.l @(PTR_ce33258,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce33154
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3325c,pc),r3
    mov 0x17,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33154:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3315a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33254,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33186
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33260,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33186:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3318c:
    mov r4,r3
    mov.l @(PTR_ce33264,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3319e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33268,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3326c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3324e,pc),r0
    mov 0x4D,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33270,pc),r3
    mov 0x16,r5
    mov.l r4,@(r0,r14)
    mov 0x04,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce3325c,pc),r2
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

LAB_ce331fe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33254,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33250,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33246
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33250,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33274,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33278,pc),r0
    mov.l @(PTR_ce33280,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce3327c,pc),r0
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
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)

LAB_ce33246:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3324e:
    #data 0x01a1
DAT_ce33250:
    #data 0x0141
    #align4

PTR_ce33254:
    #data loc_8c034dee
PTR_ce33258:
    #data loc_8c052ce2
PTR_ce3325c:
    #data loc_8c034e8c
PTR_ce33260:
    #data loc_8c051648
PTR_ce33264:
    #data PTR_ce34390
PTR_ce33268:
    #data loc_8c05218a
PTR_ce3326c:
    #data loc_8c05115a
PTR_ce33270:
    #data loc_8c2896b0
PTR_ce33274:
    #data loc_8c053082
DAT_ce33278:
    #data 0xc1d55555
DAT_ce3327c:
    #data 0x42cdb6db
PTR_ce33280:
    #data loc_8c050834

;=============================================

LAB_ce33284:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce333bc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce333b2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33302
    mov.b @(r0,r14),r3
    add 0x61,r0
    mov 0x00,r4
    mov.l @(PTR_ce333c0,pc),r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r5,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.w @(DAT_ce333b2,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bt LAB_ce33302
    mov.b @(0x6,r14),r0
    mov 0x4E,r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce333b4,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r5,r3
    mov 0x16,r5
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    lds.l @r15+,PR
    mov.l @(PTR_ce333c4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33302:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33308:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce333bc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3332a
    mova @(DAT_ce333c8,pc),r0
    mov.l @(PTR_ce333cc,pc),r3
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3332a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33330:
    mov r4,r3
    mov.l @(PTR_ce333d0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33342:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce333d4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce333b6,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce333b4,pc),r0
    mov 0x52,r2
    mov.l @(PTR_ce333c0,pc),r3
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
    mov.l @(PTR_ce333d8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce333b8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3339c
    mov.l @(PTR_ce333c4,pc),r3
    mov 0x15,r5
    mov 0x19,r6
    jsr @r3
    mov r14,r4
    bra LAB_ce333a8
    mov 0x0A,r0

LAB_ce3339c:
    mov.l @(PTR_ce333c4,pc),r2
    mov 0x15,r5
    mov 0x1B,r6
    jsr @r2
    mov r14,r4
    mov 0x3C,r0

LAB_ce333a8:
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce333b2:
    #data 0x0140
DAT_ce333b4:
    #data 0x01a1
DAT_ce333b6:
    #data 0x01f9
DAT_ce333b8:
    #data 0x01a3
    #align4

PTR_ce333bc:
    #data loc_8c034dee
PTR_ce333c0:
    #data loc_8c2896b0
PTR_ce333c4:
    #data loc_8c034e8c
DAT_ce333c8:
    #data 0xbf4db6db
PTR_ce333cc:
    #data loc_8c05176e
PTR_ce333d0:
    #data PTR_ce343a0
PTR_ce333d4:
    #data loc_8c05218a
PTR_ce333d8:
    #data loc_8c05115a

;=============================================

LAB_ce333dc:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33508,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/pl r0
    bt LAB_ce33430
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3350c,pc),r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce334f6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3341c
    mov.w @(DAT_ce334f8,pc),r0
    mov.w @(r0,r14),r1
    tst r1,r1
    bt/s LAB_ce33412
    mov 0x15,r5
    bra LAB_ce33414
    mov 0x1F,r6

LAB_ce33412:
    mov 0x1C,r6

LAB_ce33414:
    jsr @r13
    mov r14,r4
    bra LAB_ce33430
    nop

LAB_ce3341c:
    mov.w @(DAT_ce334f8,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3342a
    mov 0x15,r5
    bra LAB_ce3342c
    mov 0x21,r6

LAB_ce3342a:
    mov 0x1E,r6

LAB_ce3342c:
    jsr @r13
    mov r14,r4

LAB_ce33430:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33438:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33508,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33452
    lds.l @r15+,PR
    mov.l @(PTR_ce33510,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33452:
    mov.w @(DAT_ce334fa,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce33494
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x62,r0
    mov.b @(r0,r14),r3
    mov 0x4F,r1
    mov.w @(DAT_ce334fc,pc),r0
    mov 0x02,r5
    tst r3,r3
    mov.l @(PTR_ce33514,pc),r3
    mov.b r1,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce33518,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33494:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3349a:
    mov r4,r3
    mov.l @(PTR_ce3351c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce334ac:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce334fe,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce334d0
    mov 0x00,r5
    mov.w @(DAT_ce33502,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33500,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce334d0:
    mov.l @(PTR_ce33520,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33504,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce33524,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33528,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3350c,pc),r3
    mov r14,r4
    mov 0x06,r6
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce334f6:
    #data 0x01a3
DAT_ce334f8:
    #data 0x0130
DAT_ce334fa:
    #data 0x0141
DAT_ce334fc:
    #data 0x01a1
DAT_ce334fe:
    #data 0x0255
DAT_ce33500:
    #data 0x00ff
DAT_ce33502:
    #data 0x03f0
DAT_ce33504:
    #data 0x01f9
    #align4

PTR_ce33508:
    #data loc_8c034dee
PTR_ce3350c:
    #data loc_8c034e8c
PTR_ce33510:
    #data loc_8c051648
PTR_ce33514:
    #data loc_8c2896b0
PTR_ce33518:
    #data loc_8c096588
PTR_ce3351c:
    #data PTR_ce343ac
PTR_ce33520:
    #data loc_8c035162
PTR_ce33524:
    #data loc_8c05218a
PTR_ce33528:
    #data loc_8c05115a

;=============================================

LAB_ce3352c:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33638,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3363a,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3363c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33550
    bra LAB_ce33552
    mov 0x02,r3

LAB_ce33550:
    mov 0x00,r3

LAB_ce33552:
    mov.w @(DAT_ce3363e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3364c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33640,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce335c2
    mov.w @(DAT_ce33642,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov r15,r5
    mov.w @(DAT_ce33640,pc),r0
    mov 0x03,r6
    mov.l @(PTR_ce33658,pc),r3
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33650,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33654,pc),r0
    fldi0 fr15
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr15,@(r0,r15)
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
    mov.w @(DAT_ce33644,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce335ba
    mova @(DAT_ce3365c,pc),r0
    bra LAB_ce335be
    fmov.s @r0,fr3

LAB_ce335ba:
    mova @(DAT_ce33660,pc),r0
    fmov.s @r0,fr3

LAB_ce335be:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce335c2:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce335cc:
    mov r4,r3
    mov.l @(PTR_ce33664,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce335de:
    mov.w @(DAT_ce33638,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3363a,pc),r0
    mov.l @(PTR_ce3364c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33674
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33646,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33648,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33644,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33622
    mova @(DAT_ce33668,pc),r0
    bra LAB_ce33626
    fmov.s @r0,fr3

LAB_ce33622:
    mova @(DAT_ce3366c,pc),r0
    fmov.s @r0,fr3

LAB_ce33626:
    mov.l @(PTR_ce33670,pc),r3
    mov 0x5C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x07,r6
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33638:
    #data 0x03f8
DAT_ce3363a:
    #data 0x0328
DAT_ce3363c:
    #data 0x0255
DAT_ce3363e:
    #data 0x03f1
DAT_ce33640:
    #data 0x0141
DAT_ce33642:
    #data 0x03f0
DAT_ce33644:
    #data 0x0130
DAT_ce33646:
    #data 0x03f9
DAT_ce33648:
    #data 0x0327
    #align4

PTR_ce3364c:
    #data loc_8c034dee
DAT_ce33650:
    #data 0xc0a00000
DAT_ce33654:
    #data 0x4313db6d
PTR_ce33658:
    #data loc_8c050834
DAT_ce3365c:
    #data 0x40555555
DAT_ce33660:
    #data 0xc0555555
PTR_ce33664:
    #data PTR_ce343bc
DAT_ce33668:
    #data 0xbdd55555
DAT_ce3366c:
    #data 0x3dd55555
PTR_ce33670:
    #data loc_8c034e8c

;=============================================

LAB_ce33674:
    mov.w @(DAT_ce337ae,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce336d2
    mov 0x5C,r1
    mov.l @(PTR_ce337c0,pc),r3
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
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce336d2
    mov r0,r5
    mov.w @(DAT_ce337b0,pc),r0
    mov.w @(DAT_ce337b2,pc),r1
    mov.l @(r0,r14),r0
    mov.b @(r0,r1),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce336d2
    mov.b @(0x7,r14),r0
    mov.w @(DAT_ce337b4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce337b6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce337c4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce337c8,pc),r2
    mov r14,r4
    mov 0x03,r6
    mov 0x0F,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce336d2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce336d8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r3
    mov.w @(DAT_ce337b8,pc),r0
    mov 0x01,r13
    mov.l r12,@-r15
    mov 0x02,r12
    sts.l PR,@-r15
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce337ba,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce337bc,pc),r0
    mov.b r13,@(r0,r14)
    add 0x0B,r0
    mov.b r12,@(r0,r14)
    add 0xF8,r0
    mov.b r12,@(r0,r14)
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce33748
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce337cc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce337ae,pc),r0
    mov.b @(r0,r14),r2
    tst r13,r2
    bt LAB_ce33728
    mov.b @(r0,r14),r2
    mov 0x01,r3
    mov.l @(PTR_ce337d0,pc),r1
    mov 0x02,r5
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov 0x00,r6
    jsr @r1
    mov r14,r4

LAB_ce33728:
    mov.w @(DAT_ce337ae,pc),r0
    mov.b @(r0,r14),r3
    tst r12,r3
    bt LAB_ce3380a
    mov.b @(r0,r14),r2
    mov 0x02,r3
    mov.l @(PTR_ce337d4,pc),r1
    mov 0x08,r5
    xor r3,r2
    mov r14,r4
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r1
    mov.l @r15+,r14

LAB_ce33748:
    mov.l @(PTR_ce337cc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce337e0
    mov.w @(DAT_ce337b0,pc),r0
    mov.l @(r0,r14),r2
    add 0xA8,r0
    mov.l r14,@(r0,r2)
    add 0x58,r0
    mov.l @(r0,r14),r3
    add 0xEA,r0
    mov.b r13,@(r0,r3)
    add 0x16,r0
    mov.l @(r0,r14),r3
    add 0xC6,r0
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r3)
    add 0x3A,r0
    mov.l @(r0,r14),r3
    add 0x95,r0
    mov 0x23,r2
    mov.b r2,@(r0,r3)
    mov.l @(PTR_ce337d8,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce337b0,pc),r0
    mov 0x01,r2
    mov.l @(r0,r14),r3
    add 0xC6,r0
    mov.b @(r0,r3),r1
    xor r2,r1
    mov.b r1,@(r0,r3)
    add 0xCF,r0
    mov 0x24,r3
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.l @(PTR_ce337dc,pc),r3
    mov 0x00,r1
    mov.b r1,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce337d4,pc),r2
    mov 0x00,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce337ae:
    #data 0x0141
DAT_ce337b0:
    #data 0x020c
DAT_ce337b2:
    #data 0x01f9
DAT_ce337b4:
    #data 0x00c3
DAT_ce337b6:
    #data 0x01f7
DAT_ce337b8:
    #data 0x03f8
DAT_ce337ba:
    #data 0x0328
DAT_ce337bc:
    #data 0x01ea
    #align4

PTR_ce337c0:
    #data loc_8c045790
PTR_ce337c4:
    #data loc_8c0523d8
PTR_ce337c8:
    #data loc_8c034e8c
PTR_ce337cc:
    #data loc_8c034dee
PTR_ce337d0:
    #data loc_8c0e1150
PTR_ce337d4:
    #data loc_8c035162
PTR_ce337d8:
    #data loc_8c02fd26
PTR_ce337dc:
    #data loc_8c059384

;=============================================

LAB_ce337e0:
    mov.w @(DAT_ce33946,pc),r0
    mov.b @(r0,r14),r2
    tst r12,r2
    bt LAB_ce3380a
    mov.b @(r0,r14),r2
    mov 0x02,r3
    mov r14,r5
    mov.l @(PTR_ce33958,pc),r1
    mov.w @(DAT_ce33948,pc),r7
    xor r3,r2
    add 0x34,r5
    mov.b r2,@(r0,r14)
    mov 0x01,r6
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce3395c,pc),r4
    mov 0x03,r0
    mov.b r0,@(0x5,r4)
    mov r13,r0
    nop
    mov.b r0,@(0x6,r4)

LAB_ce3380a:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33814:
    mov.w @(DAT_ce3394a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3394c,pc),r0
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
    mov.l @(PTR_ce33960,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33898
    mov.w @(DAT_ce3394e,pc),r0
    mov 0x00,r4
    fldi0 fr4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33950,pc),r0
    mov.l @(PTR_ce33964,pc),r3
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
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

LAB_ce33898:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3389e:
    mov r4,r3
    mov.l @(PTR_ce33968,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce338b0:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce3396c,pc),r3
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
    mov.w @(DAT_ce33952,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33954,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33970,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33974,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33956,pc),r0
    mov 0x54,r2
    mov.l @(PTR_ce33978,pc),r3
    mov 0x2B,r6
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
    mov.l @(PTR_ce3397c,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33926:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33960,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33980
    mov.l @(PTR_ce33964,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33946:
    #data 0x0141
DAT_ce33948:
    #data 0x0108
DAT_ce3394a:
    #data 0x03f8
DAT_ce3394c:
    #data 0x0328
DAT_ce3394e:
    #data 0x03f9
DAT_ce33950:
    #data 0x0327
DAT_ce33952:
    #data 0x01f9
DAT_ce33954:
    #data 0x041c
DAT_ce33956:
    #data 0x01a1
    #align4

PTR_ce33958:
    #data loc_8c10235c
PTR_ce3395c:
    #data loc_8c26a518
PTR_ce33960:
    #data loc_8c034dee
PTR_ce33964:
    #data loc_8c051648
PTR_ce33968:
    #data PTR_ce343c4
PTR_ce3396c:
    #data loc_8c035162
PTR_ce33970:
    #data loc_8c05218a
PTR_ce33974:
    #data loc_8c05115a
PTR_ce33978:
    #data loc_8c2896b0
PTR_ce3397c:
    #data loc_8c034e8c

;=============================================

LAB_ce33980:
    mov.w @(DAT_ce33a96,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce339a2
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33aa4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33aa8,pc),r0
    mov.l @(PTR_ce33aac,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce339a2:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce339aa:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33a98,pc),r1
    mov.l @(PTR_ce33ab0,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce339c2:
    mov.w @(DAT_ce33a9a,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33a9c,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33a32
    mov.w @(DAT_ce33a9e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33a02
    mov.w @(DAT_ce33aa0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33a02
    mov.l @(PTR_ce33ab4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33a32
    mov r0,r4
    bra LAB_ce33a24
    mov 0x00,r2

LAB_ce33a02:
    mov.w @(DAT_ce33a9e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33a32
    mov.w @(DAT_ce33aa0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33a32
    mov.l @(PTR_ce33ab4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33a32
    mov r0,r4
    mov 0x02,r2

LAB_ce33a24:
    mov.w @(DAT_ce33aa2,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33a32:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33a3a:
    rts
    mov 0x00,r0

LAB_ce33a3e:
    mov.w @(DAT_ce33a9a,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33a9c,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33abc
    mov.w @(DAT_ce33a9e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33abc
    mov.w @(DAT_ce33aa0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33abc
    mova @(DAT_ce33ab8,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce33abc
    mov.l @(PTR_ce33ab4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33abc
    mov r0,r4
    mov.w @(DAT_ce33aa2,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a96:
    #data 0x0141
DAT_ce33a98:
    #data 0x01f9
DAT_ce33a9a:
    #data 0x01fa
DAT_ce33a9c:
    #data 0x0c00
DAT_ce33a9e:
    #data 0x01fe
DAT_ce33aa0:
    #data 0x01a3
DAT_ce33aa2:
    #data 0x01f7
    #align4

DAT_ce33aa4:
    #data 0xc2d55555
DAT_ce33aa8:
    #data 0x431a4924
PTR_ce33aac:
    #data loc_8c050ea4
PTR_ce33ab0:
    #data PTR_ce343cc
PTR_ce33ab4:
    #data loc_8c045790
DAT_ce33ab8:
    #data 0x43092492

;=============================================

LAB_ce33abc:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33ac4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33bd8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33bcc,pc),r0
    mov r14,r4
    mov.l @(PTR_ce33bdc,pc),r1
    mov.b @(r0,r14),r0
    lds.l @r15+,PR
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33ae4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33bce,pc),r0
    mov r4,r14
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce33bd0,pc),r3
    extu.b r2,r2
    shll8 r2
    shll2 r2
    tst r3,r2
    bt LAB_ce33b14
    mov.w @(DAT_ce33bd2,pc),r0
    mov 0x01,r2
    mov.w @(r0,r14),r1
    xor r2,r1
    mov.w r1,@(r0,r14)
    mov.w @(DAT_ce33bd4,pc),r0
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)

LAB_ce33b14:
    mova @(DAT_ce33be0,pc),r0
    mov.l @(PTR_ce33be8,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33be4,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33bd8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33bec,pc),r3
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33b42:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33bce,pc),r0
    mov r4,r14
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce33bd0,pc),r3
    extu.b r2,r2
    shll8 r2
    shll2 r2
    tst r3,r2
    bt LAB_ce33b72
    mov.w @(DAT_ce33bd2,pc),r0
    mov 0x01,r2
    mov.w @(r0,r14),r1
    xor r2,r1
    mov.w r1,@(r0,r14)
    mov.w @(DAT_ce33bd4,pc),r0
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)

LAB_ce33b72:
    mova @(DAT_ce33bf0,pc),r0
    mov.l @(PTR_ce33be8,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33be4,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33bd8,pc),r2
    jsr @r2
    mov r14,r4
    mova @(DAT_ce33bf4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33bf8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33bd6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce33bbc
    mov 0x01,r6
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

LAB_ce33bbc:
    mov.l @(PTR_ce33bec,pc),r3
    mov 0x0F,r5
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33bcc:
    #data 0x01f7
DAT_ce33bce:
    #data 0x01a0
DAT_ce33bd0:
    #data 0x0800
DAT_ce33bd2:
    #data 0x0130
DAT_ce33bd4:
    #data 0x01d2
DAT_ce33bd6:
    #data 0x01fc
    #align4

PTR_ce33bd8:
    #data loc_8c056f2a
PTR_ce33bdc:
    #data PTR_ce343dc
DAT_ce33be0:
    #data 0xc2555555
DAT_ce33be4:
    #data 0x432b6db6
PTR_ce33be8:
    #data loc_8c103660
PTR_ce33bec:
    #data loc_8c034e8c
DAT_ce33bf0:
    #data 0x42555555
DAT_ce33bf4:
    #data 0x41092492
DAT_ce33bf8:
    #data 0xbf4db6db

;=============================================

LAB_ce33bfc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33cda,pc),r0
    mov r4,r14
    mov 0x0A,r3
    mov.b r3,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce33cdc,pc),r3
    extu.b r2,r2
    shll8 r2
    shll2 r2
    tst r3,r2
    bf LAB_ce33c2c
    mov.w @(DAT_ce33cde,pc),r0
    mov 0x01,r2
    mov.w @(r0,r14),r1
    xor r2,r1
    mov.w r1,@(r0,r14)
    mov.w @(DAT_ce33ce0,pc),r0
    mov.b @(r0,r14),r1
    xor r2,r1
    mov.b r1,@(r0,r14)

LAB_ce33c2c:
    mova @(DAT_ce33ce8,pc),r0
    mov.l @(PTR_ce33cf0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33cec,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33cf4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33cf8,pc),r3
    mov 0x0F,r5
    mov 0x02,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33c5a:
    mov.l @(PTR_ce33cf8,pc),r3
    mov 0x03,r6
    jmp @r3
    mov 0x0F,r5

LAB_ce33c62:
    mov.w @(DAT_ce33ce2,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33cfc,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33c80:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33d00,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33c9a
    lds.l @r15+,PR
    mov.l @(PTR_ce33d04,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33c9a:
    mov.w @(DAT_ce33ce4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33cd4
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33ce6,pc),r0
    mov.l @(r0,r14),r2
    add 0xA8,r0
    mov.l r14,@(r0,r2)
    add 0x58,r0
    mov.l @(r0,r14),r3
    add 0xEA,r0
    mov 0x01,r2
    mov.b r2,@(r0,r3)
    add 0x16,r0
    mov.l @(r0,r14),r3
    add 0xC6,r0
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r3)
    add 0x3A,r0
    mov.l @(r0,r14),r3
    add 0x95,r0
    mov 0x20,r2
    mov.b r2,@(r0,r3)
    lds.l @r15+,PR
    mov.l @(PTR_ce33d08,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33cd4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33cda:
    #data 0x01a0
DAT_ce33cdc:
    #data 0x0800
DAT_ce33cde:
    #data 0x0130
DAT_ce33ce0:
    #data 0x01d2
DAT_ce33ce2:
    #data 0x01ea
DAT_ce33ce4:
    #data 0x0141
DAT_ce33ce6:
    #data 0x020c
    #align4

DAT_ce33ce8:
    #data 0xc2a00000
DAT_ce33cec:
    #data 0x432b6db6
PTR_ce33cf0:
    #data loc_8c103660
PTR_ce33cf4:
    #data loc_8c056f2a
PTR_ce33cf8:
    #data loc_8c034e8c
PTR_ce33cfc:
    #data PTR_ce343ec
PTR_ce33d00:
    #data loc_8c034dee
PTR_ce33d04:
    #data loc_8c051648
PTR_ce33d08:
    #data loc_8c02fd26

;=============================================

LAB_ce33d0c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce33d88
    mov.w @(DAT_ce33e14,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bf LAB_ce33d26
    mov.l @(PTR_ce33e1c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce33d26:
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
    mov.w @(DAT_ce33e16,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce33df2
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33e16,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33e14,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce33e20,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33d88:
    mov.l @(PTR_ce33e1c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33db0
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33e24,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33db0:
    mov.w @(DAT_ce33e14,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33df2
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33e18,pc),r0
    mov.l @(r0,r14),r2
    add 0xA8,r0
    mov.l r14,@(r0,r2)
    add 0x58,r0
    mov.l @(r0,r14),r3
    add 0xEA,r0
    mov 0x0B,r2
    mov.b r2,@(r0,r3)
    add 0x16,r0
    mov.l @(r0,r14),r3
    add 0xC6,r0
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r3)
    add 0x3A,r0
    mov.l @(r0,r14),r3
    add 0x95,r0
    mov 0x21,r2
    mov.b r2,@(r0,r3)
    mov.l @(PTR_ce33e28,pc),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce33e2c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33df2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33df8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33e1c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33e30
    mov.l @(PTR_ce33e24,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce33e9a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33e14:
    #data 0x0141
DAT_ce33e16:
    #data 0x041c
DAT_ce33e18:
    #data 0x020c
    #align4

PTR_ce33e1c:
    #data loc_8c034dee
PTR_ce33e20:
    #data loc_8c0511b4
PTR_ce33e24:
    #data loc_8c051648
PTR_ce33e28:
    #data loc_8c02fd26
PTR_ce33e2c:
    #data loc_8c0423fc

;=============================================

LAB_ce33e30:
    mov.w @(DAT_ce33f38,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33e9a
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33f3a,pc),r0
    mov.l @(r0,r14),r2
    add 0xA8,r0
    mov.l r14,@(r0,r2)
    add 0x58,r0
    mov.l @(r0,r14),r3
    add 0xEA,r0
    mov 0x01,r2
    mov.b r2,@(r0,r3)
    add 0x16,r0
    mov.l @(r0,r14),r3
    add 0x95,r0
    mov 0x22,r2
    mov.b r2,@(r0,r3)
    mov.l @(PTR_ce33f44,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce33f3a,pc),r0
    mov 0x01,r2
    mov r15,r5
    mov.l @(r0,r14),r1
    add 0xC6,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r1)
    add 0x3A,r0
    mov.l @(r0,r14),r3
    add 0xC6,r0
    mov.b @(r0,r3),r1
    xor r2,r1
    mov.b r1,@(r0,r3)
    mova @(DAT_ce33f48,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33f4c,pc),r0
    mov.l @(PTR_ce33f50,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33f54,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4

LAB_ce33e9a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33ea2:
    rts
    nop

LAB_ce33ea6:
    mov.w @(DAT_ce33f3c,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33f58,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce33eb4:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33f3e,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33ed4
    cmp/eq 0x01,r0
    bt LAB_ce33edc
    cmp/eq 0x02,r0
    bt LAB_ce33ee4
    bra LAB_ce33eea
    nop

LAB_ce33ed4:
    mov.w @(DAT_ce33f40,pc),r0
    mov 0x03,r3
    bra LAB_ce33eea
    mov.b r3,@(r0,r4)

LAB_ce33edc:
    mov.w @(DAT_ce33f40,pc),r0
    mov 0x04,r1
    bra LAB_ce33eea
    mov.b r1,@(r0,r4)

LAB_ce33ee4:
    mov.w @(DAT_ce33f40,pc),r0
    mov 0x05,r2
    mov.b r2,@(r0,r4)

LAB_ce33eea:
    mov.w @(DAT_ce33f42,pc),r0
    mov 0x01,r1
    mov.l @(PTR_ce33f5c,pc),r3
    mov.b r1,@(r0,r4)
    jmp @r3
    mov 0x1D,r5

LAB_ce33ef6:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33f3e,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33f16
    cmp/eq 0x01,r0
    bt LAB_ce33f1e
    cmp/eq 0x02,r0
    bt LAB_ce33f26
    bra LAB_ce33f2c
    nop

LAB_ce33f16:
    mov.w @(DAT_ce33f40,pc),r0
    mov 0x03,r3
    bra LAB_ce33f2c
    mov.b r3,@(r0,r4)

LAB_ce33f1e:
    mov.w @(DAT_ce33f40,pc),r0
    mov 0x04,r1
    bra LAB_ce33f2c
    mov.b r1,@(r0,r4)

LAB_ce33f26:
    mov.w @(DAT_ce33f40,pc),r0
    mov 0x05,r2
    mov.b r2,@(r0,r4)

LAB_ce33f2c:
    mov.w @(DAT_ce33f42,pc),r0
    mov 0x01,r1
    mov.l @(PTR_ce33f5c,pc),r3
    mov.b r1,@(r0,r4)
    jmp @r3
    mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33f38:
    #data 0x0141
DAT_ce33f3a:
    #data 0x020c
DAT_ce33f3c:
    #data 0x01c8
DAT_ce33f3e:
    #data 0x04c9
DAT_ce33f40:
    #data 0x01e9
DAT_ce33f42:
    #data 0x01a3
    #align4

PTR_ce33f44:
    #data loc_8c02fd26
DAT_ce33f48:
    #data 0xc2960000
DAT_ce33f4c:
    #data 0x43340000
PTR_ce33f50:
    #data loc_8c0fdb4e
PTR_ce33f54:
    #data loc_8c04223a
PTR_ce33f58:
    #data loc_8c04cc1c
PTR_ce33f5c:
    #data loc_8c0530d8

;=============================================

LAB_ce33f60:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33fdc,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33f82
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce33f88
    cmp/eq 0x02,r0
    bt LAB_ce33f8e
    bra LAB_ce33f94
    nop

LAB_ce33f82:
    mov.w @(DAT_ce33fde,pc),r0
    bra LAB_ce33f94
    mov.b r5,@(r0,r4)

LAB_ce33f88:
    mov.w @(DAT_ce33fde,pc),r0
    bra LAB_ce33f94
    mov.b r6,@(r0,r4)

LAB_ce33f8e:
    mov.w @(DAT_ce33fde,pc),r0
    mov 0x0E,r2
    mov.b r2,@(r0,r4)

LAB_ce33f94:
    mov.w @(DAT_ce33fe0,pc),r0
    mov.l @(PTR_ce33fe4,pc),r3
    mov.b r6,@(r0,r4)
    jmp @r3
    mov 0x15,r5

LAB_ce33f9e:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33fdc,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33fc0
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce33fc6
    cmp/eq 0x02,r0
    bt LAB_ce33fcc
    bra LAB_ce33fd2
    nop

LAB_ce33fc0:
    mov.w @(DAT_ce33fde,pc),r0
    bra LAB_ce33fd2
    mov.b r5,@(r0,r4)

LAB_ce33fc6:
    mov.w @(DAT_ce33fde,pc),r0
    bra LAB_ce33fd2
    mov.b r6,@(r0,r4)

LAB_ce33fcc:
    mov.w @(DAT_ce33fde,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r4)

LAB_ce33fd2:
    mov.w @(DAT_ce33fe0,pc),r0
    mov.l @(PTR_ce33fe4,pc),r3
    mov.b r6,@(r0,r4)
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33fdc:
    #data 0x04c9
DAT_ce33fde:
    #data 0x01e9
DAT_ce33fe0:
    #data 0x01a3
    #align4

PTR_ce33fe4:
    #data loc_8c0530d8
DAT_ce33fe8:
    #data 0x03
    #data 0x05
DAT_ce33fea:
    #data 0x25
    #data 0x27
DAT_ce33fec:
    #data 0x55
    #data 0x55
    #data 0xd5
    #data 0xc0
DAT_ce33ff0:
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce33ff4:
    #data 0xdb
    #data 0xb6
    #data 0x4d
    #data 0x41
DAT_ce33ff8:
    #data 0x92
    #data 0x24
    #data 0x89
    #data 0xbf
    #data 0x55
    #data 0x55
    #data 0x05
    #data 0xc1
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0xf0
    #data 0x40
    #data 0xb6
    #data 0x6d
    #data 0xab
    #data 0xbe
DAT_ce3400c:
    #data 0x0e
DAT_ce3400d:
    #data 0x18
    #data 0x0f
    #data 0x18
    #data 0x10
    #data 0x08
    #data 0x0000
DAT_ce34014:
    #data 0x0201
    #data 0x0201
DAT_ce34018:
    #data 0x02ff
    #data 0x02ff
DAT_ce3401c:
    #data 0xffff
    #data 0xffff
DAT_ce34020:
    #data 0x0201
    #data 0x0201
DAT_ce34024:
    #data 0x02ff
    #data 0x02ff
DAT_ce34028:
    #data 0xffff
    #data 0xffff
DAT_ce3402c:
    #data 0x0201
    #data 0x0201
DAT_ce34030:
    #data 0x02ff
    #data 0x02ff
DAT_ce34034:
    #data 0xffff
    #data 0xffff
DAT_ce34038:
    #data 0x0201
    #data 0x0201
DAT_ce3403c:
    #data 0x02ff
    #data 0x02ff
DAT_ce34040:
    #data 0xffff
    #data 0xffff
DAT_ce34044:
    #data 0x0201
    #data 0x0200
DAT_ce34048:
    #data 0x02ff
    #data 0x0201
DAT_ce3404c:
    #data 0xffff
    #data 0x02ff
DAT_ce34050:
    #data 0x0201
    #data 0x0201
DAT_ce34054:
    #data 0x02ff
    #data 0x02ff
DAT_ce34058:
    #data 0xffff
    #data 0xffff
DAT_ce3405c:
    #data 0x0003
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce3406c:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce3407c:
    #data 0x0003
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce3408c:
    #data 0x0003
    #data 0x2000
    #data 0x000d
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce3409c:
    #data 0x0003
    #data 0x9100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce340ac:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce340bc:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce340cc:
    #data 0x0003
    #data 0x1040
    #data 0x0009
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x8000
DAT_ce340dc:
    #data 0x0003
    #data 0x1040
    #data 0x000a
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x8000
DAT_ce340ec:
    #data 0x0006
    #data 0x1140
    #data 0x000b
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x8000
    #data 0x0003
    #data 0xa100
    #data 0x000c
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce34112:
    #data 0x0003
    #data 0x1000
    #data 0x000e
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce34122:
    #data 0x0004
    #data 0x1100
    #data 0x0010
    #data 0x0000
    #data 0x0100
    #data 0x0040
    #data 0x0400
    #data 0x0200
    #data 0x0200
    #align4

PTR_ce34134:
    #data LAB_ce30710
PTR_ce34138:
    #data LAB_ce30024
PTR_ce3413c:
    #data LAB_ce30714
PTR_ce34140:
    #data LAB_ce30d04
PTR_ce34144:
    #data LAB_ce31094
PTR_ce34148:
    #data LAB_ce3123e
PTR_ce3414c:
    #data LAB_ce313fa
PTR_ce34150:
    #data LAB_ce317ca
PTR_ce34154:
    #data LAB_ce319cc
PTR_ce34158:
    #data LAB_ce339aa
PTR_ce3415c:
    #data LAB_ce33ac4
PTR_ce34160:
    #data LAB_ce33c62
PTR_ce34164:
    #data LAB_ce33ea6
PTR_ce34168:
    #data LAB_ce3052e
PTR_ce3416c:
    #data LAB_ce31878
PTR_ce34170:
    #data LAB_ce30fcc
PTR_ce34174:
    #data LAB_ce33eb4
PTR_ce34178:
    #data LAB_ce33ef6
PTR_ce3417c:
    #data LAB_ce33f60
PTR_ce34180:
    #data LAB_ce33f9e
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce341a4:
    #data LAB_ce30728
PTR_ce341a8:
    #data LAB_ce30a94
PTR_ce341ac:
    #data LAB_ce30abc
PTR_ce341b0:
    #data LAB_ce30728
PTR_ce341b4:
    #data LAB_ce30d26
PTR_ce341b8:
    #data LAB_ce30f1e
PTR_ce341bc:
    #data LAB_ce30f08
PTR_ce341c0:
    #data LAB_ce30d18
PTR_ce341c4:
    #data LAB_ce310a6
PTR_ce341c8:
    #data LAB_ce3113c
PTR_ce341cc:
    #data LAB_ce3117a
PTR_ce341d0:
    #data LAB_ce311ee
PTR_ce341d4:
    #data LAB_ce31274
PTR_ce341d8:
    #data LAB_ce312d4
PTR_ce341dc:
    #data LAB_ce31330
PTR_ce341e0:
    #data LAB_ce313c8
PTR_ce341e4:
    #data LAB_ce3140c
PTR_ce341e8:
    #data LAB_ce31442
PTR_ce341ec:
    #data LAB_ce31464
PTR_ce341f0:
    #data LAB_ce314fc
PTR_ce341f4:
    #data LAB_ce3153e
PTR_ce341f8:
    #data LAB_ce3156c
PTR_ce341fc:
    #data LAB_ce315a4
PTR_ce34200:
    #data LAB_ce3164c
PTR_ce34204:
    #data LAB_ce3171a
PTR_ce34208:
    #data LAB_ce31748
PTR_ce3420c:
    #data LAB_ce31798
PTR_ce34210:
    #data LAB_ce317dc
PTR_ce34214:
    #data LAB_ce3182a
PTR_ce34218:
    #data LAB_ce317f8
PTR_ce3421c:
    #data LAB_ce31822
PTR_ce34220:
    #data LAB_ce31812
PTR_ce34224:
    #data LAB_ce3181a
PTR_ce34228:
    #data LAB_ce31822
PTR_ce3422c:
    #data LAB_ce31856
PTR_ce34230:
    #data LAB_ce31872
PTR_ce34234:
    #data LAB_ce31872
PTR_ce34238:
    #data LAB_ce31872
PTR_ce3423c:
    #data LAB_ce31872
PTR_ce34240:
    #data LAB_ce318b0
PTR_ce34244:
    #data LAB_ce3192a
PTR_ce34248:
    #data LAB_ce31998
PTR_ce3424c:
    #data LAB_ce319e0
PTR_ce34250:
    #data LAB_ce31af0
PTR_ce34254:
    #data LAB_ce31de6
PTR_ce34258:
    #data LAB_ce32204
PTR_ce3425c:
    #data LAB_ce323b2
PTR_ce34260:
    #data LAB_ce326b6
PTR_ce34264:
    #data LAB_ce319e0
PTR_ce34268:
    #data LAB_ce319e0
PTR_ce3426c:
    #data LAB_ce32ade
PTR_ce34270:
    #data LAB_ce32c10
PTR_ce34274:
    #data LAB_ce32d44
PTR_ce34278:
    #data LAB_ce32dac
PTR_ce3427c:
    #data LAB_ce3318c
PTR_ce34280:
    #data LAB_ce31fea
PTR_ce34284:
    #data LAB_ce33330
PTR_ce34288:
    #data LAB_ce319e0
PTR_ce3428c:
    #data LAB_ce3349a
PTR_ce34290:
    #data LAB_ce3389e
PTR_ce34294:
    #data LAB_ce31a2c
PTR_ce34298:
    #data LAB_ce31a9e
PTR_ce3429c:
    #data FUN_ce31ace
PTR_ce342a0:
    #data LAB_ce31b34
PTR_ce342a4:
    #data LAB_ce31cbe
PTR_ce342a8:
    #data LAB_ce31d26
PTR_ce342ac:
    #data LAB_ce31d6a
PTR_ce342b0:
    #data LAB_ce31db4
PTR_ce342b4:
    #data LAB_ce31e1c
PTR_ce342b8:
    #data LAB_ce31e56
PTR_ce342bc:
    #data LAB_ce31eb8
PTR_ce342c0:
    #data LAB_ce31fb8
PTR_ce342c4:
    #data LAB_ce31ffc
PTR_ce342c8:
    #data LAB_ce32038
PTR_ce342cc:
    #data LAB_ce320e8
PTR_ce342d0:
    #data LAB_ce321b4
PTR_ce342d4:
    #data LAB_ce32216
PTR_ce342d8:
    #data LAB_ce32292
PTR_ce342dc:
    #data LAB_ce32302
PTR_ce342e0:
    #data LAB_ce32380
PTR_ce342e4:
    #data LAB_ce323c4
PTR_ce342e8:
    #data LAB_ce32456
PTR_ce342ec:
    #data LAB_ce32502
PTR_ce342f0:
    #data LAB_ce32574
PTR_ce342f4:
    #data LAB_ce325ca
PTR_ce342f8:
    #data LAB_ce32638
PTR_ce342fc:
    #data LAB_ce32684
PTR_ce34300:
    #data LAB_ce326c8
PTR_ce34304:
    #data LAB_ce3274a
PTR_ce34308:
    #data LAB_ce327f2
PTR_ce3430c:
    #data LAB_ce32986
PTR_ce34310:
    #data LAB_ce329bc
PTR_ce34314:
    #data LAB_ce32a0e
PTR_ce34318:
    #data LAB_ce32aac
PTR_ce3431c:
    #data LAB_ce32af0
PTR_ce34320:
    #data LAB_ce32b58
PTR_ce34324:
    #data LAB_ce32ba4
PTR_ce34328:
    #data LAB_ce32c22
PTR_ce3432c:
    #data LAB_ce32c78
PTR_ce34330:
    #data LAB_ce32c9c
PTR_ce34334:
    #data LAB_ce32d0c
PTR_ce34338:
    #data LAB_ce32d56
PTR_ce3433c:
    #data LAB_ce32c78
PTR_ce34340:
    #data LAB_ce32c9c
PTR_ce34344:
    #data LAB_ce32d0c
PTR_ce34348:
    #data LAB_ce32dbe
PTR_ce3434c:
    #data LAB_ce32e5c
PTR_ce34350:
    #data LAB_ce32ecc
PTR_ce34354:
    #data LAB_ce32ee6
PTR_ce34358:
    #data LAB_ce32f2c
PTR_ce3435c:
    #data LAB_ce32f46
PTR_ce34360:
    #data LAB_ce32ecc
PTR_ce34364:
    #data LAB_ce32ee6
PTR_ce34368:
    #data LAB_ce32f70
PTR_ce3436c:
    #data LAB_ce32fac
PTR_ce34370:
    #data LAB_ce32ecc
PTR_ce34374:
    #data LAB_ce32ee6
PTR_ce34378:
    #data LAB_ce32fd6
PTR_ce3437c:
    #data LAB_ce33002
PTR_ce34380:
    #data LAB_ce3304c
PTR_ce34384:
    #data LAB_ce33076
PTR_ce34388:
    #data LAB_ce330f0
PTR_ce3438c:
    #data LAB_ce3315a
PTR_ce34390:
    #data LAB_ce3319e
PTR_ce34394:
    #data LAB_ce331fe
PTR_ce34398:
    #data LAB_ce33284
PTR_ce3439c:
    #data LAB_ce33308
PTR_ce343a0:
    #data LAB_ce33342
PTR_ce343a4:
    #data LAB_ce333dc
PTR_ce343a8:
    #data LAB_ce33438
PTR_ce343ac:
    #data LAB_ce334ac
PTR_ce343b0:
    #data LAB_ce3352c
PTR_ce343b4:
    #data LAB_ce335cc
PTR_ce343b8:
    #data LAB_ce33814
PTR_ce343bc:
    #data LAB_ce335de
PTR_ce343c0:
    #data LAB_ce336d8
PTR_ce343c4:
    #data LAB_ce338b0
PTR_ce343c8:
    #data LAB_ce33926
PTR_ce343cc:
    #data LAB_ce339c2
PTR_ce343d0:
    #data LAB_ce33a3a
PTR_ce343d4:
    #data LAB_ce33a3e
PTR_ce343d8:
    #data LAB_ce339c2
PTR_ce343dc:
    #data LAB_ce33ae4
PTR_ce343e0:
    #data LAB_ce33b42
PTR_ce343e4:
    #data LAB_ce33bfc
PTR_ce343e8:
    #data LAB_ce33c5a
PTR_ce343ec:
    #data LAB_ce33c80
PTR_ce343f0:
    #data LAB_ce33d0c
PTR_ce343f4:
    #data LAB_ce33df8
PTR_ce343f8:
    #data LAB_ce33ea2
