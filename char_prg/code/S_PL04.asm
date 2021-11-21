;╔══════════════════════════════════════════╗
;║ S_PL04 : Anakaris Program                ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
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
#symbol loc_8c050834 0x8C050834
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
#symbol loc_8c052b4c 0x8C052B4C
#symbol loc_8c052c84 0x8C052C84
#symbol loc_8c052ce2 0x8C052CE2
#symbol loc_8c052dac 0x8C052DAC
#symbol loc_8c0530d8 0x8C0530D8
#symbol loc_8c053e00 0x8C053E00
#symbol loc_8c053f6e 0x8C053F6E
#symbol loc_8c054184 0x8C054184
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
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c063f54 0x8C063F54
#symbol loc_8c0642d0 0x8C0642D0
#symbol loc_8c0649c8 0x8C0649C8
#symbol loc_8c0651ec 0x8C0651EC
#symbol loc_8c0be7f4 0x8C0BE7F4
#symbol loc_8c0be836 0x8C0BE836
#symbol loc_8c0beee0 0x8C0BEEE0
#symbol loc_8c103660 0x8C103660
#symbol loc_8c11e860 0x8C11E860
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c26a5a8 0x8C26A5A8
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce30032,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce30034,pc),r7
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
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    mov.l @(PTR_ce30038,pc),r3
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    jmp @r3
    fmov fr4,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30032:
    #data 0x0428
    #align4

PTR_ce30034:
    #data PTR_ce337c0
PTR_ce30038:
    #data loc_8c051648

;=============================================

LAB_ce3003c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30118,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    mov.l @(PTR_ce3011c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    mov.l @(PTR_ce30120,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    mov.l @(PTR_ce30124,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    bsr FUN_ce30328
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    bsr FUN_ce3038e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    bsr FUN_ce303f4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    bsr FUN_ce30462
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    bsr FUN_ce30138
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    bsr FUN_ce301b2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    bsr FUN_ce302a2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    bsr FUN_ce3023c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    mov.w @(DAT_ce30112,pc),r0
    mov.w @(DAT_ce30114,pc),r2
    mov.b @(r0,r14),r3
    extu.b r3,r3
    cmp/eq r2,r3
    bt LAB_ce300d8
    mov.l @(PTR_ce30128,pc),r1
    jsr @r1
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c

LAB_ce300d8:
    mov.w @(DAT_ce30116,pc),r5
    mov.l @(PTR_ce3012c,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    bsr FUN_ce304c8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    bsr FUN_ce30508
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010c
    mov.l @(PTR_ce30130,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30134,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3010c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30112:
    #data 0x014a
DAT_ce30114:
    #data 0x0080
DAT_ce30116:
    #data 0x03cc
    #align4

PTR_ce30118:
    #data loc_8c054508
PTR_ce3011c:
    #data loc_8c054b34
PTR_ce30120:
    #data loc_8c05496c
PTR_ce30124:
    #data loc_8c054d04
PTR_ce30128:
    #data loc_8c054184
PTR_ce3012c:
    #data loc_8c053f6e
PTR_ce30130:
    #data loc_8c053e00
PTR_ce30134:
    #data loc_8c0542e0

;=============================================

FUN_ce30138:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30228,pc),r5
    mov.w @(DAT_ce30218,pc),r6
    mov.l @(PTR_ce3022c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30168
    mov.w @(DAT_ce3021a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30176
    mov.w @(DAT_ce3021c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30176
    mov.w @(DAT_ce3021e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30170

LAB_ce30168:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30170:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30176:
    mov.w @(DAT_ce30218,pc),r5
    mov.l @(PTR_ce30230,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30220,pc),r0
    mov 0x00,r4
    mov r0,r3
    add 0x5B,r3
    add r14,r3
    mov.b @(r0,r14),r2
    mov.b @r3,r3
    shll r3
    add r3,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30222,pc),r0
    mov.l @(PTR_ce30234,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301b2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30238,pc),r5
    mov.w @(DAT_ce30224,pc),r6
    mov.l @(PTR_ce3022c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301e2
    mov.w @(DAT_ce3021a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce301f0
    mov.w @(DAT_ce3021c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce301f0
    mov.w @(DAT_ce3021e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce301ea

LAB_ce301e2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301ea:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce301f0:
    mov.w @(DAT_ce30224,pc),r5
    mov.l @(PTR_ce30230,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30222,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30234,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30218:
    #data 0x036c
DAT_ce3021a:
    #data 0x01f9
DAT_ce3021c:
    #data 0x01fc
DAT_ce3021e:
    #data 0x01d4
DAT_ce30220:
    #data 0x01a3
DAT_ce30222:
    #data 0x01e9
DAT_ce30224:
    #data 0x0374
    #align4

PTR_ce30228:
    #data DAT_ce336f8
PTR_ce3022c:
    #data loc_8c054e58
PTR_ce30230:
    #data loc_8c055c3a
PTR_ce30234:
    #data loc_8c0530d8
PTR_ce30238:
    #data DAT_ce33708

;=============================================

FUN_ce3023c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30314,pc),r5
    mov.w @(DAT_ce30308,pc),r6
    mov.l @(PTR_ce30318,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3026c
    mov.w @(DAT_ce3030a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3027a
    mov.w @(DAT_ce3030c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3027a
    mov.w @(DAT_ce3030e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30274

LAB_ce3026c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30274:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3027a:
    mov.w @(DAT_ce30308,pc),r5
    mov.l @(PTR_ce3031c,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30310,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30320,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302a2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30324,pc),r5
    mov.w @(DAT_ce30312,pc),r6
    mov.l @(PTR_ce30318,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302d2
    mov.w @(DAT_ce3030a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce302e0
    mov.w @(DAT_ce3030c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce302e0
    mov.w @(DAT_ce3030e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce302da

LAB_ce302d2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302da:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce302e0:
    mov.w @(DAT_ce30312,pc),r5
    mov.l @(PTR_ce3031c,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30310,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30320,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30308:
    #data 0x037c
DAT_ce3030a:
    #data 0x01f9
DAT_ce3030c:
    #data 0x01fc
DAT_ce3030e:
    #data 0x01d4
DAT_ce30310:
    #data 0x01e9
DAT_ce30312:
    #data 0x0384
    #align4

PTR_ce30314:
    #data DAT_ce33718
PTR_ce30318:
    #data loc_8c054e58
PTR_ce3031c:
    #data loc_8c055c3a
PTR_ce30320:
    #data loc_8c0530d8
PTR_ce30324:
    #data DAT_ce33726

;=============================================

FUN_ce30328:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3042c,pc),r5
    mov.w @(DAT_ce3041c,pc),r6
    mov.l @(PTR_ce30430,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30362
    mov.w @(DAT_ce3041e,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30362
    mov.w @(DAT_ce30420,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30370
    mov.w @(DAT_ce30422,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30370
    mov.w @(DAT_ce30424,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3036a

LAB_ce30362:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3036a:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30370:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30426,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30434,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3038e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30438,pc),r5
    mov.w @(DAT_ce30428,pc),r6
    mov.l @(PTR_ce3043c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303c8
    mov.w @(DAT_ce3041e,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce303c8
    mov.w @(DAT_ce30420,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce303d6
    mov.w @(DAT_ce30422,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce303d6
    mov.w @(DAT_ce30424,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce303d0

LAB_ce303c8:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303d0:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce303d6:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30426,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30434,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303f4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30440,pc),r5
    mov.w @(DAT_ce3042a,pc),r6
    mov.l @(PTR_ce30430,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30414
    mov.w @(DAT_ce3041e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30444

LAB_ce30414:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3041c:
    #data 0x038c
DAT_ce3041e:
    #data 0x040c
DAT_ce30420:
    #data 0x01f9
DAT_ce30422:
    #data 0x01fc
DAT_ce30424:
    #data 0x01d4
DAT_ce30426:
    #data 0x01e9
DAT_ce30428:
    #data 0x0394
DAT_ce3042a:
    #data 0x039c
    #align4

PTR_ce3042c:
    #data DAT_ce33736
PTR_ce30430:
    #data loc_8c0555c8
PTR_ce30434:
    #data loc_8c0530d8
PTR_ce30438:
    #data DAT_ce33748
PTR_ce3043c:
    #data loc_8c054e58
PTR_ce30440:
    #data DAT_ce33756

;=============================================

LAB_ce30444:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30542,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30550,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30462:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30554,pc),r5
    mov.w @(DAT_ce30544,pc),r6
    mov.l @(PTR_ce30558,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3049c
    mov.w @(DAT_ce30546,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce3049c
    mov.w @(DAT_ce30548,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce304aa
    mov.w @(DAT_ce3054a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce304aa
    mov.w @(DAT_ce3054c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce304a4

LAB_ce3049c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304a4:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce304aa:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30542,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30550,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304c8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3055c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce304e0
    mov.w @(DAT_ce30546,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304e8

LAB_ce304e0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304e8:
    mov.w @(DAT_ce30542,pc),r0
    mov 0x08,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30550,pc),r3
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

FUN_ce30508:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30560,pc),r3
    jsr @r3
    mov 0x09,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30522
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30522:
    mov.w @(DAT_ce30542,pc),r0
    mov 0x09,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30550,pc),r3
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

DAT_ce30542:
    #data 0x01e9
DAT_ce30544:
    #data 0x03a4
DAT_ce30546:
    #data 0x040c
DAT_ce30548:
    #data 0x01f9
DAT_ce3054a:
    #data 0x01fc
DAT_ce3054c:
    #data 0x01d4
    #align4

PTR_ce30550:
    #data loc_8c0530d8
PTR_ce30554:
    #data DAT_ce33768
PTR_ce30558:
    #data loc_8c054e58
PTR_ce3055c:
    #data loc_8c054d1c
PTR_ce30560:
    #data loc_8c054da0

;=============================================

LAB_ce30564:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce30598
    mov r4,r14
    tst r0,r0
    bf LAB_ce30588
    bsr FUN_ce305ce
    mov r14,r4
    tst r0,r0
    bf LAB_ce30588
    bsr FUN_ce30604
    mov r14,r4
    tst r0,r0
    bf LAB_ce30588
    bsr FUN_ce30658
    mov r14,r4
    tst r0,r0
    bt LAB_ce30590

LAB_ce30588:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce30590:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30598:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30644,pc),r5
    mov.w @(DAT_ce3063a,pc),r6
    mov.l @(PTR_ce30648,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce305b8
    mov.w @(DAT_ce3063c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce305c0

LAB_ce305b8:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce305c0:
    mov.w @(DAT_ce3063e,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce305ce:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3064c,pc),r5
    mov.w @(DAT_ce30640,pc),r6
    mov.l @(PTR_ce30650,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce305ee
    mov.w @(DAT_ce3063c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce305f6

LAB_ce305ee:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce305f6:
    mov.w @(DAT_ce3063e,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30604:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30654,pc),r5
    mov.w @(DAT_ce30642,pc),r6
    mov.l @(PTR_ce30648,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30624
    mov.w @(DAT_ce3063c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3062c

LAB_ce30624:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3062c:
    mov.w @(DAT_ce3063e,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3063a:
    #data 0x038c
DAT_ce3063c:
    #data 0x040c
DAT_ce3063e:
    #data 0x0258
DAT_ce30640:
    #data 0x0394
DAT_ce30642:
    #data 0x039c
    #align4

PTR_ce30644:
    #data DAT_ce33736
PTR_ce30648:
    #data loc_8c0555c8
PTR_ce3064c:
    #data DAT_ce33748
PTR_ce30650:
    #data loc_8c054e58
PTR_ce30654:
    #data DAT_ce33756

;=============================================

FUN_ce30658:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30764,pc),r5
    mov.w @(DAT_ce3074e,pc),r6
    mov.l @(PTR_ce30768,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30678
    mov.w @(DAT_ce30750,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30680

LAB_ce30678:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30680:
    mov.w @(DAT_ce30752,pc),r0
    mov 0x07,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3068e:
    rts
    nop

LAB_ce30692:
    mov.w @(DAT_ce30754,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce3076c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce306a6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30770,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30756,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce306d4
    mov.w @(DAT_ce30758,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce306cc
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30a24
    mov.l @r15+,r14

LAB_ce306cc:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3087a
    mov.l @r15+,r14

LAB_ce306d4:
    mov.w @(DAT_ce30758,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce306e6
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307ce
    mov.l @r15+,r14

LAB_ce306e6:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce306ee
    mov.l @r15+,r14

LAB_ce306ee:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3075a,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x01,r12
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30774,pc),r11
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30716
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30734
    cmp/eq 0x02,r0
    bt LAB_ce30780
    bra LAB_ce3079a
    nop

LAB_ce30716:
    mov.w @(DAT_ce3075c,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce3075e,pc),r0
    mov.l @(PTR_ce30778,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30760,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce30762,pc),r0
    bra LAB_ce30798
    nop

LAB_ce30734:
    mov.w @(DAT_ce3075c,pc),r0
    mov 0x15,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r12,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce3075e,pc),r0
    mov.l @(PTR_ce3077c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30760,pc),r0
    bra LAB_ce30798
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3074e:
    #data 0x03a4
DAT_ce30750:
    #data 0x040c
DAT_ce30752:
    #data 0x0258
DAT_ce30754:
    #data 0x01ff
DAT_ce30756:
    #data 0x01fe
DAT_ce30758:
    #data 0x01f9
DAT_ce3075a:
    #data 0x01e8
DAT_ce3075c:
    #data 0x0158
DAT_ce3075e:
    #data 0x03f4
DAT_ce30760:
    #data 0x01a7
DAT_ce30762:
    #data 0x02a2
    #align4

PTR_ce30764:
    #data DAT_ce33768
PTR_ce30768:
    #data loc_8c0555c8
PTR_ce3076c:
    #data PTR_ce33830
PTR_ce30770:
    #data loc_8c052b4c
PTR_ce30774:
    #data loc_8c04223a
PTR_ce30778:
    #data DAT_ce33778
PTR_ce3077c:
    #data DAT_ce3377c

;=============================================

LAB_ce30780:
    mov.w @(DAT_ce308a4,pc),r0
    mov 0x02,r12
    mov 0x16,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r12,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce308a6,pc),r0
    mov.l @(PTR_ce308b0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308a8,pc),r0

LAB_ce30798:
    mov.b r12,@(r0,r14)

LAB_ce3079a:
    mov.w @(DAT_ce308aa,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce308b4,pc),r3
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
    mov.w @(DAT_ce308a4,pc),r0
    mov.l @(PTR_ce308b8,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce307ce:
    mov.w @(DAT_ce308ac,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce308bc,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307f2
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3080e
    cmp/eq 0x02,r0
    bt LAB_ce3082a
    bra LAB_ce30848
    nop

LAB_ce307f2:
    mov.w @(DAT_ce308a4,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308a6,pc),r0
    mov.l @(PTR_ce308c0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308a8,pc),r0
    bra LAB_ce30848
    mov.b r13,@(r0,r14)

LAB_ce3080e:
    mov.w @(DAT_ce308a4,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308a6,pc),r0
    mov.l @(PTR_ce308c4,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30844
    mov 0x01,r2

LAB_ce3082a:
    mov.w @(DAT_ce308a4,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308a6,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce308b0,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30844:
    mov.w @(DAT_ce308a8,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30848:
    mov.w @(DAT_ce308aa,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce308b4,pc),r3
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
    mov.w @(DAT_ce308a4,pc),r0
    mov.l @(PTR_ce308b8,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3087a:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce308ac,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov 0x01,r11
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce308ae,pc),r4
    extu.b r0,r0
    mov.l @(PTR_ce308bc,pc),r12
    cmp/eq 0x00,r0
    bt/s LAB_ce308c8
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30930
    cmp/eq 0x02,r0
    bt LAB_ce3094c
    bra LAB_ce309c2
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308a4:
    #data 0x0158
DAT_ce308a6:
    #data 0x03f4
DAT_ce308a8:
    #data 0x01a7
DAT_ce308aa:
    #data 0x01ac
DAT_ce308ac:
    #data 0x01e8
DAT_ce308ae:
    #data 0x0400
    #align4

PTR_ce308b0:
    #data DAT_ce33780
PTR_ce308b4:
    #data loc_8c2896b0
PTR_ce308b8:
    #data loc_8c034e8c
PTR_ce308bc:
    #data loc_8c04223a
PTR_ce308c0:
    #data DAT_ce33778
PTR_ce308c4:
    #data DAT_ce3377c

;=============================================

LAB_ce308c8:
    mov.w @(DAT_ce309f6,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bt LAB_ce30914
    mov.w @(DAT_ce309f8,pc),r0
    mov 0x0B,r1
    mov 0x12,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309fa,pc),r0
    mov.l @(PTR_ce30a08,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce309fc,pc),r0
    mov.l @(PTR_ce30a0c,pc),r3
    mov.b r11,@(r0,r14)
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
    mov.w @(DAT_ce309f8,pc),r0
    mov.b @(r0,r14),r6
    bra LAB_ce309e6
    mov 0x14,r5

LAB_ce30914:
    mov.w @(DAT_ce309f8,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309fa,pc),r0
    mov.l @(PTR_ce30a10,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce309fc,pc),r0
    bra LAB_ce309c2
    mov.b r13,@(r0,r14)

LAB_ce30930:
    mov.w @(DAT_ce309f8,pc),r0
    mov 0x04,r3
    mov 0x15,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309fa,pc),r0
    mov.l @(PTR_ce30a08,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce309fc,pc),r0
    bra LAB_ce309c2
    mov.b r11,@(r0,r14)

LAB_ce3094c:
    mov.w @(DAT_ce309f6,pc),r0
    mov.w @(DAT_ce309fe,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce3099a
    mova @(DAT_ce30a14,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30a18,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce309f6,pc),r0
    mov.w @(r0,r14),r5
    extu.w r5,r5
    tst r5,r4
    bt LAB_ce3097a
    mov.w @(DAT_ce30a00,pc),r0
    mov.w @(r0,r14),r1
    tst r1,r1
    bt LAB_ce30988

LAB_ce3097a:
    mov.w @(DAT_ce30a02,pc),r3
    tst r5,r3
    bt LAB_ce309a4
    mov.w @(DAT_ce30a00,pc),r0
    mov.w @(r0,r14),r1
    tst r1,r1
    bt LAB_ce309a4

LAB_ce30988:
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    bra LAB_ce309a4
    fmov fr3,@(r0,r14)

LAB_ce3099a:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce309a4:
    mov.w @(DAT_ce309f8,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r2,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309fa,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30a1c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce309fc,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce309c2:
    mov.w @(DAT_ce30a04,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce30a0c,pc),r3
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
    mov.w @(DAT_ce309f8,pc),r0
    mov.b @(r0,r14),r6

LAB_ce309e6:
    lds.l @r15+,PR
    mov.l @(PTR_ce30a20,pc),r2
    mov r14,r4
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309f6:
    #data 0x01fa
DAT_ce309f8:
    #data 0x0158
DAT_ce309fa:
    #data 0x03f4
DAT_ce309fc:
    #data 0x01a7
DAT_ce309fe:
    #data 0x0c00
DAT_ce30a00:
    #data 0x0130
DAT_ce30a02:
    #data 0x0800
DAT_ce30a04:
    #data 0x01ac
    #align4

PTR_ce30a08:
    #data DAT_ce33788
PTR_ce30a0c:
    #data loc_8c2896b0
PTR_ce30a10:
    #data DAT_ce33784
DAT_ce30a14:
    #data 0xbfd55555
DAT_ce30a18:
    #data 0x3ca00000
PTR_ce30a1c:
    #data DAT_ce3378c
PTR_ce30a20:
    #data loc_8c034e8c

;=============================================

LAB_ce30a24:
    mov.w @(DAT_ce30b0a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b18,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a48
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a64
    cmp/eq 0x02,r0
    bt LAB_ce30a80
    bra LAB_ce30a9e
    nop

LAB_ce30a48:
    mov.w @(DAT_ce30b0c,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b0e,pc),r0
    mov.l @(PTR_ce30b1c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30b10,pc),r0
    bra LAB_ce30a9e
    mov.b r13,@(r0,r14)

LAB_ce30a64:
    mov.w @(DAT_ce30b0c,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b0e,pc),r0
    mov.l @(PTR_ce30b20,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30a9a
    mov 0x01,r2

LAB_ce30a80:
    mov.w @(DAT_ce30b0c,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b0e,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30b24,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30a9a:
    mov.w @(DAT_ce30b10,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30a9e:
    mov.w @(DAT_ce30b12,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30b28,pc),r3
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
    mov.w @(DAT_ce30b0c,pc),r0
    mov.l @(PTR_ce30b2c,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30ad0:
    mov.w @(DAT_ce30b14,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30ae0
    mov.w @(DAT_ce30b16,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30af0

LAB_ce30ae0:
    mov.w @(DAT_ce30b14,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30af4
    mov.w @(DAT_ce30b16,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30af4

LAB_ce30af0:
    bra LAB_ce30af8
    nop

LAB_ce30af4:
    rts
    nop

LAB_ce30af8:
    mov.w @(DAT_ce30b14,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30b06
    bra LAB_ce30c50
    nop

LAB_ce30b06:
    bra LAB_ce30b30
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b0a:
    #data 0x01e8
DAT_ce30b0c:
    #data 0x0158
DAT_ce30b0e:
    #data 0x03f4
DAT_ce30b10:
    #data 0x01a7
DAT_ce30b12:
    #data 0x01ac
DAT_ce30b14:
    #data 0x01fe
DAT_ce30b16:
    #data 0x01d6
    #align4

PTR_ce30b18:
    #data loc_8c04223a
PTR_ce30b1c:
    #data DAT_ce33784
PTR_ce30b20:
    #data DAT_ce33788
PTR_ce30b24:
    #data DAT_ce3378c
PTR_ce30b28:
    #data loc_8c2896b0
PTR_ce30b2c:
    #data loc_8c034e8c

;=============================================

LAB_ce30b30:
    mov.w @(DAT_ce30c1e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30c2c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30b54
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30b80
    cmp/eq 0x02,r0
    bt LAB_ce30bac
    bra LAB_ce30bda
    nop

LAB_ce30b54:
    mov.w @(DAT_ce30c20,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c22,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b74
    mov.w @(DAT_ce30c24,pc),r0
    mov.l @(PTR_ce30c30,pc),r3
    bra LAB_ce30b7a
    mov.l r3,@(r0,r14)

LAB_ce30b74:
    mov.w @(DAT_ce30c24,pc),r0
    mov.l @(PTR_ce30c34,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b7a:
    mov.w @(DAT_ce30c26,pc),r0
    bra LAB_ce30bda
    mov.b r13,@(r0,r14)

LAB_ce30b80:
    mov.w @(DAT_ce30c20,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c22,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30ba2
    mov.w @(DAT_ce30c24,pc),r0
    mov.l @(PTR_ce30c38,pc),r3
    bra LAB_ce30ba8
    mov.l r3,@(r0,r14)

LAB_ce30ba2:
    mov.w @(DAT_ce30c24,pc),r0
    mov.l @(PTR_ce30c3c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30ba8:
    bra LAB_ce30bd6
    mov 0x01,r3

LAB_ce30bac:
    mov.w @(DAT_ce30c20,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c22,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30bce
    mov.w @(DAT_ce30c24,pc),r0
    mov.l @(PTR_ce30c40,pc),r3
    bra LAB_ce30bd4
    mov.l r3,@(r0,r14)

LAB_ce30bce:
    mov.w @(DAT_ce30c24,pc),r0
    mov.l @(PTR_ce30c44,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30bd4:
    mov 0x02,r3

LAB_ce30bd6:
    mov.w @(DAT_ce30c26,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30bda:
    mov.w @(DAT_ce30c28,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30c48,pc),r3
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
    mov.w @(DAT_ce30c20,pc),r0
    mov.l @(PTR_ce30c4c,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30c2a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30c14
    mov.w @(DAT_ce30c2a,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30c14:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c1e:
    #data 0x01e8
DAT_ce30c20:
    #data 0x0158
DAT_ce30c22:
    #data 0x01fc
DAT_ce30c24:
    #data 0x03f4
DAT_ce30c26:
    #data 0x01a7
DAT_ce30c28:
    #data 0x01ac
DAT_ce30c2a:
    #data 0x01d6
    #align4

PTR_ce30c2c:
    #data loc_8c04223a
PTR_ce30c30:
    #data DAT_ce33790
PTR_ce30c34:
    #data DAT_ce337a8
PTR_ce30c38:
    #data DAT_ce33794
PTR_ce30c3c:
    #data DAT_ce337ac
PTR_ce30c40:
    #data DAT_ce33798
PTR_ce30c44:
    #data DAT_ce337b0
PTR_ce30c48:
    #data loc_8c2896b0
PTR_ce30c4c:
    #data loc_8c034e8c

;=============================================

LAB_ce30c50:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.w @(DAT_ce30d7a,pc),r0
    mov.l r10,@-r15
    mov.l r9,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce30d7c,pc),r2
    extu.w r3,r3
    mov.l @(PTR_ce30d9c,pc),r4
    mov.l @(PTR_ce30d98,pc),r12
    tst r2,r3
    mov.l @(PTR_ce30d94,pc),r10
    fldi0 fr15
    bt/s LAB_ce30ce6
    mov 0x01,r9
    mov r9,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x0F,r3
    mov.w @(DAT_ce30d7e,pc),r0
    mov.b @(r0,r14),r1
    and r3,r1
    mov.b r1,@(r0,r14)
    add 0x26,r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce30d7a,pc),r0
    mov.w @(DAT_ce30d80,pc),r1
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r1,r2
    bt LAB_ce30cb4
    mov.w @(DAT_ce30d82,pc),r0
    mov 0x0D,r3
    mov.b r3,@(r0,r14)
    bra LAB_ce30cbc
    mov 0x15,r2

LAB_ce30cb4:
    mov.w @(DAT_ce30d82,pc),r0
    mov 0x0C,r3
    mov 0x14,r2
    mov.b r3,@(r0,r14)

LAB_ce30cbc:
    add 0x49,r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce30d84,pc),r0
    mov.l r4,@(r0,r14)
    mov.w @(DAT_ce30d86,pc),r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r10,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.w @(DAT_ce30d82,pc),r0
    bra LAB_ce30d40
    mov.b @(r0,r14),r6

LAB_ce30ce6:
    mov.w @(DAT_ce30d88,pc),r2
    mov.w @(DAT_ce30d8a,pc),r1
    and r2,r3
    cmp/eq r1,r3
    bf LAB_ce30d4a
    mov 0x03,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r3
    mov.w @(DAT_ce30d7e,pc),r0
    mov.b @(r0,r14),r2
    and r3,r2
    mov.b r2,@(r0,r14)
    add 0x26,r0
    mov.b r13,@(r0,r14)
    add 0xEC,r0
    mov.b @(r0,r14),r2
    mov 0x19,r3
    mov.w @(DAT_ce30d84,pc),r0
    tst r2,r2
    mov.l r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce30d8c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.l @r10,r3
    mov.b @(0x2,r14),r0
    add 0x7C,r3
    mov 0x0E,r6
    extu.b r0,r0
    shll r0
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)

LAB_ce30d40:
    mov 0x14,r5
    jsr @r12
    mov r14,r4
    bra LAB_ce30e82
    nop

LAB_ce30d4a:
    mov.w @(DAT_ce30d8e,pc),r0
    mov.l @(PTR_ce30da0,pc),r11
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30d62
    cmp/eq 0x01,r0
    bt LAB_ce30dc6
    cmp/eq 0x02,r0
    bt LAB_ce30dfc
    bra LAB_ce30e34
    nop

LAB_ce30d62:
    mov.w @(DAT_ce30d90,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30da8
    mov.w @(DAT_ce30d82,pc),r0
    mov 0x0F,r3
    mov.l @(PTR_ce30da4,pc),r2
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce30db6
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d7a:
    #data 0x01fa
DAT_ce30d7c:
    #data 0x1000
DAT_ce30d7e:
    #data 0x01d6
DAT_ce30d80:
    #data 0x0c00
DAT_ce30d82:
    #data 0x0158
DAT_ce30d84:
    #data 0x03f4
DAT_ce30d86:
    #data 0x01ac
DAT_ce30d88:
    #data 0x3c00
DAT_ce30d8a:
    #data 0x0800
DAT_ce30d8c:
    #data 0x01a1
DAT_ce30d8e:
    #data 0x01e8
DAT_ce30d90:
    #data 0x01fc
    #align4

PTR_ce30d94:
    #data loc_8c2896b0
PTR_ce30d98:
    #data loc_8c034e8c
PTR_ce30d9c:
    #data DAT_ce337a4
PTR_ce30da0:
    #data loc_8c04223a
PTR_ce30da4:
    #data DAT_ce3379c

;=============================================

LAB_ce30da8:
    mov.w @(DAT_ce30ea8,pc),r0
    mov 0x08,r1
    mov.l @(PTR_ce30eb8,pc),r2
    mov 0x16,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30db6:
    mov.w @(DAT_ce30eaa,pc),r0
    mov 0x14,r5
    mov.l r2,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30eac,pc),r0
    bra LAB_ce30e34
    mov.b r13,@(r0,r14)

LAB_ce30dc6:
    mov.w @(DAT_ce30eae,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30dde
    mov.w @(DAT_ce30ea8,pc),r0
    mov 0x10,r3
    mov.l @(PTR_ce30ebc,pc),r2
    mov.b r9,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce30dec
    nop

LAB_ce30dde:
    mov.w @(DAT_ce30ea8,pc),r0
    mov 0x09,r1
    mov.l @(PTR_ce30ec0,pc),r2
    mov 0x17,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30dec:
    mov.w @(DAT_ce30eaa,pc),r0
    mov 0x15,r5
    mov.l r2,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30eac,pc),r0
    bra LAB_ce30e34
    mov.b r9,@(r0,r14)

LAB_ce30dfc:
    mov.w @(DAT_ce30eae,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce30e18
    mov 0x16,r5
    mov.w @(DAT_ce30ea8,pc),r0
    mov 0x02,r3
    mov 0x11,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce30eaa,pc),r0
    bra LAB_ce30e2a
    mov.l r4,@(r0,r14)

LAB_ce30e18:
    mov.w @(DAT_ce30ea8,pc),r0
    mov 0x0A,r2
    mov 0x18,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30eaa,pc),r0
    mov.l @(PTR_ce30ec4,pc),r2
    mov.l r2,@(r0,r14)

LAB_ce30e2a:
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30eac,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)

LAB_ce30e34:
    mov.w @(DAT_ce30eb0,pc),r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r10,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.w @(DAT_ce30eae,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30e60
    mov.w @(DAT_ce30eb2,pc),r0
    mov 0x0C,r3
    bra LAB_ce30e66
    mov.b r3,@(r0,r14)

LAB_ce30e60:
    mov.w @(DAT_ce30eb2,pc),r0
    mov 0x14,r1
    mov.b r1,@(r0,r14)

LAB_ce30e66:
    mov.w @(DAT_ce30ea8,pc),r0
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30eb4,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30e82
    mov.w @(DAT_ce30eb4,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30e82:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30e94:
    mov.w @(DAT_ce30eb6,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30ec8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ea8:
    #data 0x0158
DAT_ce30eaa:
    #data 0x03f4
DAT_ce30eac:
    #data 0x01a7
DAT_ce30eae:
    #data 0x01fc
DAT_ce30eb0:
    #data 0x01ac
DAT_ce30eb2:
    #data 0x0159
DAT_ce30eb4:
    #data 0x01d6
DAT_ce30eb6:
    #data 0x01ff
    #align4

PTR_ce30eb8:
    #data DAT_ce337b4
PTR_ce30ebc:
    #data DAT_ce337a0
PTR_ce30ec0:
    #data DAT_ce337b8
PTR_ce30ec4:
    #data DAT_ce337bc
PTR_ce30ec8:
    #data PTR_ce33840

;=============================================

LAB_ce30ecc:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30fe4,pc),r3
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
    mov.w @(DAT_ce30fde,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f34
    mov.w @(DAT_ce30fe0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f2c
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30ff4
    mov.l @r15+,r14

LAB_ce30f2c:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30fbc
    mov.l @r15+,r14

LAB_ce30f34:
    mov.w @(DAT_ce30fe0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f46
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30f70
    mov.l @r15+,r14

LAB_ce30f46:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30f4e
    mov.l @r15+,r14

LAB_ce30f4e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30fe8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f68
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30fec,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30f68:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30f70:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fe8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f86
    mov.l @(PTR_ce30fec,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30f86:
    mov.w @(DAT_ce30fe2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30fb6
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov 0x07,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30ff0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce30fb6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30fbc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30fe8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fd6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30fec,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30fd6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fde:
    #data 0x01fe
DAT_ce30fe0:
    #data 0x01f9
DAT_ce30fe2:
    #data 0x0141
    #align4

PTR_ce30fe4:
    #data loc_8c052c84
PTR_ce30fe8:
    #data loc_8c034dee
PTR_ce30fec:
    #data loc_8c051648
PTR_ce30ff0:
    #data loc_8c2896b0

;=============================================

LAB_ce30ff4:
    mov.w @(DAT_ce310f0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31010
    cmp/eq 0x01,r0
    bt LAB_ce31010
    cmp/eq 0x02,r0
    bt LAB_ce31010
    bra LAB_ce31026
    nop

LAB_ce31010:
    mov.l @(PTR_ce310f4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31026
    lds.l @r15+,PR
    mov.l @(PTR_ce310f8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31026:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3102c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce310fc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31100,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31042:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31104,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce31108,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce310f2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31064
    bsr FUN_ce31238
    mov r14,r4
    bra LAB_ce31068
    nop

LAB_ce31064:
    bsr FUN_ce31084
    mov r14,r4

LAB_ce31068:
    mov.l @(PTR_ce3110c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3107e
    lds.l @r15+,PR
    mov.l @(PTR_ce31110,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3107e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31084:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x6C,r0
    fldi0 fr3
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fcmp/eq fr3,fr2
    bf/s LAB_ce3109e
    mov r14,r4
    mova @(DAT_ce31114,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)

LAB_ce3109e:
    mov.l @(PTR_ce310f4,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310b4
    lds.l @r15+,PR
    mov.l @(PTR_ce31118,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce310b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310ba:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x6C,r0
    fldi0 fr3
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fcmp/eq fr3,fr2
    bf/s LAB_ce310d4
    mov r14,r4
    mova @(DAT_ce31114,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)

LAB_ce310d4:
    mov.l @(PTR_ce310f4,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310ea
    lds.l @r15+,PR
    mov.l @(PTR_ce31118,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce310ea:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310f0:
    #data 0x01e8
DAT_ce310f2:
    #data 0x01fe
    #align4

PTR_ce310f4:
    #data loc_8c034dee
PTR_ce310f8:
    #data loc_8c051648
PTR_ce310fc:
    #data loc_8c050084
PTR_ce31100:
    #data loc_8c04ff88
PTR_ce31104:
    #data loc_8c04fea8
PTR_ce31108:
    #data loc_8c050048
PTR_ce3110c:
    #data loc_8c052ce2
PTR_ce31110:
    #data loc_8c052dac
DAT_ce31114:
    #data 0xbf4db6db
PTR_ce31118:
    #data loc_8c05176e

;=============================================

LAB_ce3111c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31250,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3124a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31168
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3124c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x0D,r0
    bf LAB_ce31160
    mova @(DAT_ce31254,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31258,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3124e,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31168
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    bra LAB_ce31168
    fmov fr3,@(r0,r14)

LAB_ce31160:
    mova @(DAT_ce3125c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)

LAB_ce31168:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3116e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31250,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311a6
    mov 0x05,r0
    fldi0 fr3
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31260,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov.l @(PTR_ce31264,pc),r3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x09,r6
    lds.l @r15+,PR
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce311a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311ac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31250,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3124a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce311ec
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce31268,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3126c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3124e,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311ec
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce311ec:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311f2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31250,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3122c
    mov.b @(0x6,r14),r0
    mov r14,r4
    fldi0 fr3
    mov 0x09,r6
    add 0x01,r0
    mov.l @(PTR_ce31264,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31260,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x01,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3122c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31232:
    mov.l @(PTR_ce31250,pc),r3
    jmp @r3
    nop

;=============================================

FUN_ce31238:
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

DAT_ce3124a:
    #data 0x0141
DAT_ce3124c:
    #data 0x0158
DAT_ce3124e:
    #data 0x0130
    #align4

PTR_ce31250:
    #data loc_8c034dee
DAT_ce31254:
    #data 0xc0baaaaa
DAT_ce31258:
    #data 0xc0f00000
DAT_ce3125c:
    #data 0xc1092492
DAT_ce31260:
    #data 0xbf4db6db
PTR_ce31264:
    #data loc_8c034e8c
DAT_ce31268:
    #data 0xc1200000
DAT_ce3126c:
    #data 0x3f200000
PTR_ce31270:
    #data PTR_ce33850

;=============================================

LAB_ce31274:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce312d2
    mov.l @(PTR_ce31398,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce3139c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce313a0,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3138e,pc),r0
    mov 0x56,r3
    mov 0x01,r2
    mov.b r3,@(r0,r14)
    add 0x58,r0
    mov.l @(PTR_ce313a4,pc),r3
    mov 0x14,r5
    mov.b r2,@(r0,r14)
    mov 0x07,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31390,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce313a8,pc),r3
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

LAB_ce312d2:
    mov.w @(DAT_ce31392,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce312e2
    mov.l @(PTR_ce313ac,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce312e2:
    mov 0x5C,r1
    mov.l @(PTR_ce313b0,pc),r3
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
    mov.l @(PTR_ce313b4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31336
    lds.l @r15+,PR
    mov.l @(PTR_ce313b8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31336:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3133c:
    mov r4,r3
    mov.l @(PTR_ce313bc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3134e:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x04,r0
    mov.w r0,@(0x1c,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce31394,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31378
    mova @(DAT_ce313c0,pc),r0
    bra LAB_ce3137c
    fmov.s @r0,fr3

LAB_ce31378:
    mova @(DAT_ce313c4,pc),r0
    fmov.s @r0,fr3

LAB_ce3137c:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31394,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce313cc
    mova @(DAT_ce313c8,pc),r0
    bra LAB_ce313d0
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3138e:
    #data 0x01a1
DAT_ce31390:
    #data 0x01ac
DAT_ce31392:
    #data 0x01ff
DAT_ce31394:
    #data 0x01d2
    #align4

PTR_ce31398:
    #data loc_8c052b4c
PTR_ce3139c:
    #data loc_8c04223a
PTR_ce313a0:
    #data loc_8c056de4
PTR_ce313a4:
    #data loc_8c034e8c
PTR_ce313a8:
    #data loc_8c2896b0
PTR_ce313ac:
    #data loc_8c0511e2
PTR_ce313b0:
    #data loc_8c052c84
PTR_ce313b4:
    #data loc_8c034dee
PTR_ce313b8:
    #data loc_8c051648
PTR_ce313bc:
    #data PTR_ce33868
DAT_ce313c0:
    #data 0x41480000
DAT_ce313c4:
    #data 0xc1480000
DAT_ce313c8:
    #data 0xbda00000

;=============================================

LAB_ce313cc:
    mova @(DAT_ce3151c,pc),r0
    fmov.s @r0,fr3

LAB_ce313d0:
    mov 0x68,r0
    mov 0x5C,r1
    fmov fr3,@(r0,r4)
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

LAB_ce3140e:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31520,pc),r3
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
    bf LAB_ce31464
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31464:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3146a:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31520,pc),r3
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
    bf LAB_ce314c8
    mov.w @(DAT_ce31516,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce314dc
    mov.w @(DAT_ce31518,pc),r0
    mov.w @(DAT_ce3151a,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce314dc

LAB_ce314c8:
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    mov.l @(PTR_ce31524,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce314dc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce314e2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31520,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce314fc
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31528,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce314fc:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31504:
    mov r4,r3
    mov.l @(PTR_ce3152c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31516:
    #data 0x0525
DAT_ce31518:
    #data 0x034a
DAT_ce3151a:
    #data 0x0400
    #align4

DAT_ce3151c:
    #data 0x3da00000
PTR_ce31520:
    #data loc_8c034dee
PTR_ce31524:
    #data loc_8c034e8c
PTR_ce31528:
    #data loc_8c051648
PTR_ce3152c:
    #data PTR_ce33878

;=============================================

LAB_ce31530:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x04,r0
    mov.w r0,@(0x1c,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce31686,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3155a
    mova @(DAT_ce31690,pc),r0
    bra LAB_ce3155e
    fmov.s @r0,fr3

LAB_ce3155a:
    mova @(DAT_ce31694,pc),r0
    fmov.s @r0,fr3

LAB_ce3155e:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31686,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31570
    mova @(DAT_ce31698,pc),r0
    bra LAB_ce31574
    fmov.s @r0,fr3

LAB_ce31570:
    mova @(DAT_ce3169c,pc),r0
    fmov.s @r0,fr3

LAB_ce31574:
    mov 0x68,r0
    mov 0x5C,r1
    fmov fr3,@(r0,r4)
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

LAB_ce315b2:
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31608
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31608:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3160e:
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
    bf LAB_ce3166c
    mov.w @(DAT_ce31688,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31680
    mov.w @(DAT_ce3168a,pc),r0
    mov.w @(DAT_ce3168c,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31680

LAB_ce3166c:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce316a4,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31680:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31686:
    #data 0x01d2
DAT_ce31688:
    #data 0x0525
DAT_ce3168a:
    #data 0x034a
DAT_ce3168c:
    #data 0x0800
    #align4

DAT_ce31690:
    #data 0xc1055555
DAT_ce31694:
    #data 0x41055555
DAT_ce31698:
    #data 0x3d855555
DAT_ce3169c:
    #data 0xbd855555
PTR_ce316a0:
    #data loc_8c034dee
PTR_ce316a4:
    #data loc_8c034e8c

;=============================================

LAB_ce316a8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31808,pc),r3
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
    bt LAB_ce316fc
    lds.l @r15+,PR
    mov.l @(PTR_ce3180c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce316fc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31702:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce317fe,pc),r0
    mov 0x03,r4
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    add 0xF9,r0
    mov.b r4,@(r0,r14)
    add 0x06,r0
    mov.b r4,@(r0,r14)
    mov 0x34,r0
    fmov.s @r1,fr3
    mov 0x68,r1
    fmov.s @(r0,r14),fr2
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    mov 0x6C,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    mov.l @(PTR_ce31808,pc),r3
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
    bf LAB_ce3176a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x04,r0
    mov.w r0,@(0x1c,r14)

LAB_ce3176a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31770:
    mov.w @(DAT_ce317fe,pc),r0
    mov 0x03,r5
    mov.b r5,@(r0,r4)
    add 0xF9,r0
    mov.b r5,@(r0,r4)
    add 0x06,r0
    mov.b r5,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce317c8
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov r5,r0
    nop
    mov.w r0,@(0x1c,r4)
    mov 0x01,r3
    mov.w @(DAT_ce31800,pc),r0
    mov.l @(PTR_ce31810,pc),r5
    mov.w @(r0,r4),r2
    xor r3,r2
    mov.w r2,@(r0,r4)
    exts.w r2,r2
    tst r2,r2
    bt LAB_ce317b2
    mova @(DAT_ce31814,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31802,pc),r0
    bra LAB_ce317b8
    nop

LAB_ce317b2:
    mova @(DAT_ce31818,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31804,pc),r0

LAB_ce317b8:
    fmov.s @(r0,r5),fr2
    mov 0x34,r0
    mov.l @(PTR_ce3181c,pc),r3
    mov 0x05,r6
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    jmp @r3
    mov 0x14,r5

LAB_ce317c8:
    rts
    nop

LAB_ce317cc:
    mov.w @(DAT_ce317fe,pc),r0
    mov 0x03,r5
    mov.b r5,@(r0,r4)
    add 0xF9,r0
    mov.b r5,@(r0,r4)
    add 0x06,r0
    mov.b r5,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce317fa
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    mov.l @(PTR_ce31820,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x14,r0
    mov.w r0,@(0x1c,r4)
    mov.w @(DAT_ce31806,pc),r0
    jmp @r2
    mov.b r3,@(r0,r4)

LAB_ce317fa:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce317fe:
    #data 0x01f4
DAT_ce31800:
    #data 0x0130
DAT_ce31802:
    #data 0x0088
DAT_ce31804:
    #data 0x008c
DAT_ce31806:
    #data 0x01ed
    #align4

PTR_ce31808:
    #data loc_8c034dee
PTR_ce3180c:
    #data loc_8c051648
PTR_ce31810:
    #data loc_8c26a518
DAT_ce31814:
    #data 0xc3055555
DAT_ce31818:
    #data 0x43055555
PTR_ce3181c:
    #data loc_8c034e8c
PTR_ce31820:
    #data loc_8c02fd26

;=============================================

LAB_ce31824:
    mov.w @(DAT_ce31970,pc),r0
    mov 0x03,r3
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
    mov.l @(PTR_ce31978,pc),r3
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3189c
    mov.w @(DAT_ce31970,pc),r0
    mov 0x00,r2
    fldi0 fr4
    mov r14,r4
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3197c,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3189c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318a2:
    mov r4,r3
    mov.l @(PTR_ce31980,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce318b4:
    mov.l @(PTR_ce31984,pc),r2
    mov 0x02,r5
    mov.b @r2,r3
    extu.b r3,r3
    cmp/ge r5,r3
    bt LAB_ce318c8
    mov.w @(DAT_ce31972,pc),r0
    mov 0x00,r1
    rts
    mov.b r1,@(r0,r4)

LAB_ce318c8:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    mov.l @(DAT_ce31988,pc),r1
    mov 0x00,r6
    add 0x01,r0
    fldi0 fr4
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31972,pc),r0
    lds r1,FPUL
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce31974,pc),r0
    fsts FPUL,fr3
    mov.b r5,@(r0,r4)
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    mov.l @(PTR_ce31990,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce3198c,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    jmp @r3
    mov 0x12,r5
    rts
    nop

LAB_ce31908:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31994,pc),r3
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
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3196a
    mov.b @(0x6,r14),r0
    mov 0x2F,r5
    mov.l @(PTR_ce31998,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31978,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3196a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31970:
    #data 0x01f3
DAT_ce31972:
    #data 0x012c
DAT_ce31974:
    #data 0x01f9
    #align4

PTR_ce31978:
    #data loc_8c034dee
PTR_ce3197c:
    #data loc_8c051648
PTR_ce31980:
    #data PTR_ce33898
PTR_ce31984:
    #data loc_8c2895f0
DAT_ce31988:
    #data 0x4404db6d
DAT_ce3198c:
    #data 0xc0cdb6db
PTR_ce31990:
    #data loc_8c034e8c
PTR_ce31994:
    #data loc_8c052ce2
PTR_ce31998:
    #data loc_8c04223a

;=============================================

LAB_ce3199c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31aac,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319c0
    mov.b @(0x5,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce31ab0,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x5,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce319c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce319c6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ab4,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce319de
    lds.l @r15+,PR
    mov.l @(PTR_ce31ab8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce319de:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31abc,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce319f2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31a3c
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31ac0,pc),r3
    add 0x01,r0
    mov.w @(DAT_ce31aa8,pc),r1
    mov.b r0,@(0x6,r14)
    mov.l @r3,r0
    mov.b @(r0,r1),r0
    tst 0x01,r0
    bt LAB_ce31a2e
    mov.l @(PTR_ce31ac4,pc),r2
    jsr @r2
    mov r14,r4
    cmp/eq 0x01,r0
    bf LAB_ce31a2e
    mov.l @(PTR_ce31ab0,pc),r2
    mov 0x13,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31ac8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a2e:
    lds.l @r15+,PR
    mov.l @(PTR_ce31ab0,pc),r3
    mov r14,r4
    mov 0x01,r6
    mov 0x13,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a3c:
    lds.l @r15+,PR
    mov.l @(PTR_ce31aac,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a46:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31a5a
    mov.b @(0x6,r4),r0
    mov 0x05,r6
    mov.l @(PTR_ce31ab0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31a5a:
    mov.l @(PTR_ce31aac,pc),r3
    jmp @r3
    nop

LAB_ce31a60:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31a74
    mov.b @(0x6,r4),r0
    mov 0x04,r6
    mov.l @(PTR_ce31ab0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31a74:
    mov.l @(PTR_ce31aac,pc),r3
    jmp @r3
    nop

LAB_ce31a7a:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31a8e
    mov.b @(0x6,r4),r0
    mov 0x06,r6
    mov.l @(PTR_ce31ab0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31a8e:
    mov.l @(PTR_ce31aac,pc),r3
    jmp @r3
    nop

LAB_ce31a94:
    mov.w @(DAT_ce31aaa,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31acc,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31aa8:
    #data 0x0080
DAT_ce31aaa:
    #data 0x01e9
    #align4

PTR_ce31aac:
    #data loc_8c034dee
PTR_ce31ab0:
    #data loc_8c034e8c
PTR_ce31ab4:
    #data loc_8c046c8a
PTR_ce31ab8:
    #data loc_8c051648
PTR_ce31abc:
    #data PTR_ce338a4
PTR_ce31ac0:
    #data loc_8c26823c
PTR_ce31ac4:
    #data loc_8c0514b8
PTR_ce31ac8:
    #data loc_8c0beee0
PTR_ce31acc:
    #data PTR_ce338b8

;=============================================

LAB_ce31ad0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce31b84
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31c04,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31c08,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31bfa,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31b30
    mov.w @(DAT_ce31bfa,pc),r0
    mov.l @(PTR_ce31c0c,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31bfc,pc),r0
    mov 0x30,r2
    mov.l @(PTR_ce31c10,pc),r3
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
    bra LAB_ce31b76
    mov 0x00,r6

LAB_ce31b30:
    mov.w @(DAT_ce31bfa,pc),r0
    mov 0x02,r2
    fldi0 fr4
    mov 0x31,r3
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31c14,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31bfc,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31c10,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov 0x01,r6
    mov.w r1,@(r0,r2)

LAB_ce31b76:
    lds.l @r15+,PR
    mov.l @(PTR_ce31c18,pc),r2
    mov r14,r4
    mov 0x15,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b84:
    mov.w @(DAT_ce31bfe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31bd8
    mov.l @(PTR_ce31c1c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce31bd8
    mov r0,r4
    mov.w @(DAT_ce31bfe,pc),r0
    mov.b r13,@(r0,r14)
    add 0x62,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31c20,pc),r0
    extu.b r3,r3
    shll r3
    mov.w @(r0,r3),r3
    mova @(DAT_ce31c24,pc),r0
    fmov.s @r0,fr2
    mov 0x34,r0
    extu.w r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr2,fr3
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31c00,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31bca
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce31bca:
    mov 0x34,r0
    mov r0,r1
    add r14,r1
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)

LAB_ce31bd8:
    mov.w @(DAT_ce31bfa,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31c30
    mov.l @(PTR_ce31c28,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c48
    lds.l @r15+,PR
    mov.l @(PTR_ce31c2c,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31bfa:
    #data 0x01f9
DAT_ce31bfc:
    #data 0x01a1
DAT_ce31bfe:
    #data 0x0141
DAT_ce31c00:
    #data 0x0130
    #align4

PTR_ce31c04:
    #data loc_8c05218a
PTR_ce31c08:
    #data loc_8c056de4
PTR_ce31c0c:
    #data loc_8c05115a
PTR_ce31c10:
    #data loc_8c2896b0
DAT_ce31c14:
    #data 0xbf4db6db
PTR_ce31c18:
    #data loc_8c034e8c
PTR_ce31c1c:
    #data loc_8c063f54
PTR_ce31c20:
    #data DAT_ce336e0
DAT_ce31c24:
    #data 0x3fd55555
PTR_ce31c28:
    #data loc_8c034dee
PTR_ce31c2c:
    #data loc_8c051648

;=============================================

LAB_ce31c30:
    mov.l @(PTR_ce31d50,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c48
    lds.l @r15+,PR
    mov.l @(PTR_ce31d54,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c48:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31c50:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce31cdc
    mov 0x00,r11
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31d58,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31d5c,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31d4a,pc),r0
    mov 0x02,r3
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
    mova @(DAT_ce31d60,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31d4c,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x32,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r11,@(r0,r14)
    add 0xF2,r0
    mov.b r11,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31d64,pc),r3
    mov.l r11,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov r14,r4
    mov.w @(r0,r2),r1
    mov 0x15,r5
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.w @(DAT_ce31d4c,pc),r0
    mov.l @(PTR_ce31d68,pc),r2
    mov.l @r15+,r10
    mov.b @(r0,r14),r6
    mov.l @r15+,r11
    add 0x02,r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31cdc:
    mov.w @(DAT_ce31d4e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31d1e
    mov.l @(PTR_ce31d6c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce31d1e
    mov r0,r12
    mov.w @(DAT_ce31d4e,pc),r0
    mov r11,r13
    mov.l @(PTR_ce31d70,pc),r10
    mov.b r11,@(r0,r14)
    mov 0x04,r11

LAB_ce31cfc:
    mov 0x00,r6
    mov r6,r5
    jsr @r10
    mov r12,r4
    tst r0,r0
    bt/s LAB_ce31d18
    mov r0,r4
    mov r13,r0
    nop
    shll2 r0
    mov r13,r3
    shll r0
    sub r3,r0
    mov.w r0,@(0x1c,r4)

LAB_ce31d18:
    add 0x01,r13
    cmp/ge r11,r13
    bf LAB_ce31cfc

LAB_ce31d1e:
    mov.l @(PTR_ce31d50,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d3c
    lds.l @r15+,PR
    mov.l @(PTR_ce31d54,pc),r3
    mov r14,r4
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d3c:
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d4a:
    #data 0x01f9
DAT_ce31d4c:
    #data 0x01a3
DAT_ce31d4e:
    #data 0x0141
    #align4

PTR_ce31d50:
    #data loc_8c034dee
PTR_ce31d54:
    #data loc_8c05176e
PTR_ce31d58:
    #data loc_8c05218a
PTR_ce31d5c:
    #data loc_8c056de4
DAT_ce31d60:
    #data 0xbf4db6db
PTR_ce31d64:
    #data loc_8c2896b0
PTR_ce31d68:
    #data loc_8c034e8c
PTR_ce31d6c:
    #data loc_8c0642d0
PTR_ce31d70:
    #data loc_8c0be836

;=============================================

LAB_ce31d74:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31e56
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31ebc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31ec0,pc),r2
    mov 0x10,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31eb0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce31dfa
    mov 0x00,r13
    mov.w @(DAT_ce31eb0,pc),r0
    mov.l @(PTR_ce31ec4,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31eb2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31dbe
    mov.w @(DAT_ce31eb4,pc),r0
    mov 0x3C,r2
    bra LAB_ce31dc8
    mov.b r2,@(r0,r14)

LAB_ce31dbe:
    mov.w @(DAT_ce31eb6,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x34,r3
    mov.b r3,@(r0,r14)

LAB_ce31dc8:
    mov.w @(DAT_ce31eb8,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31ec8,pc),r3
    mov r14,r4
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce31ecc,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.w @(DAT_ce31eb6,pc),r0
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    add 0x04,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31dfa:
    mov.w @(DAT_ce31eb0,pc),r0
    mov 0x02,r3
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
    mova @(DAT_ce31ed0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31eb6,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x36,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31ec8,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov r14,r4
    mov.w @(r0,r2),r1
    mov 0x15,r5
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.w @(DAT_ce31eb6,pc),r0
    mov.l @(PTR_ce31ecc,pc),r2
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    add 0x06,r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e56:
    mov.w @(DAT_ce31eba,pc),r0
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce31eb0,pc),r0
    tst r2,r2
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31e7e
    mov.l @(PTR_ce31ed4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e96
    lds.l @r15+,PR
    mov.l @(PTR_ce31ed8,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e7e:
    mov.l @(PTR_ce31ed4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e96
    lds.l @r15+,PR
    mov.l @(PTR_ce31edc,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e96:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31e9e:
    mov r4,r3
    mov.l @(PTR_ce31ee0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31eb0:
    #data 0x01f9
DAT_ce31eb2:
    #data 0x0255
DAT_ce31eb4:
    #data 0x01a1
DAT_ce31eb6:
    #data 0x01a3
DAT_ce31eb8:
    #data 0x01ac
DAT_ce31eba:
    #data 0x0141
    #align4

PTR_ce31ebc:
    #data loc_8c05218a
PTR_ce31ec0:
    #data loc_8c056de4
PTR_ce31ec4:
    #data loc_8c05115a
PTR_ce31ec8:
    #data loc_8c2896b0
PTR_ce31ecc:
    #data loc_8c034e8c
DAT_ce31ed0:
    #data 0xbf4db6db
PTR_ce31ed4:
    #data loc_8c034dee
PTR_ce31ed8:
    #data loc_8c051648
PTR_ce31edc:
    #data loc_8c05176e
PTR_ce31ee0:
    #data PTR_ce338e0

;=============================================

LAB_ce31ee4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32004,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32008,pc),r2
    mov 0x10,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31ff6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31f1c
    mov.w @(DAT_ce31ff6,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce3200c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31ff8,pc),r0
    mov.b @(r0,r14),r6
    bra LAB_ce31f42
    add 0x09,r6

LAB_ce31f1c:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32010,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x02,r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ff6,pc),r0
    mov.b r3,@(r0,r14)
    add 0xAA,r0
    mov.b @(r0,r14),r6
    add 0x0E,r6

LAB_ce31f42:
    mov.l @(PTR_ce32014,pc),r3
    mov 0x15,r5
    jsr @r3
    mov r14,r4
    mov 0x22,r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce32018,pc),r0
    fmov.s @r0,fr3
    mov 0x64,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ff8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f68
    mova @(DAT_ce3201c,pc),r0
    fmov.s @r0,fr3
    mov 0x64,r0
    fmov fr3,@(r0,r14)

LAB_ce31f68:
    mov.w @(DAT_ce31ffa,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31f78
    mov 0x64,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31f78:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f7e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32020,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31ffc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31fae
    mov.b @(0x6,r14),r0
    mov 0x01,r5
    mov.l @(PTR_ce32024,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32024,pc),r2
    mov 0x01,r6
    mov r6,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31fae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31fb4:
    mov.w @(DAT_ce31ffe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31ff6,pc),r1
    sts.l PR,@-r15
    mov.l @(r0,r14),r0
    mov.b @(r0,r1),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce32030
    mov.w @(DAT_ce31ffc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32030
    mov.l @(PTR_ce32028,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32030
    mov r0,r5
    mov 0x00,r0
    mov.w @(DAT_ce32000,pc),r2
    mov.b r0,@(0x6,r14)
    mov 0x22,r0
    mov 0x01,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32002,pc),r0
    mov.l @(PTR_ce3202c,pc),r3
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ff6:
    #data 0x01f9
DAT_ce31ff8:
    #data 0x01a3
DAT_ce31ffa:
    #data 0x0130
DAT_ce31ffc:
    #data 0x0141
DAT_ce31ffe:
    #data 0x020c
DAT_ce32000:
    #data 0x00c0
DAT_ce32002:
    #data 0x01f7
    #align4

PTR_ce32004:
    #data loc_8c05218a
PTR_ce32008:
    #data loc_8c056de4
PTR_ce3200c:
    #data loc_8c05115a
DAT_ce32010:
    #data 0xbf4db6db
PTR_ce32014:
    #data loc_8c034e8c
DAT_ce32018:
    #data 0x43200000
DAT_ce3201c:
    #data 0x43ad5555
PTR_ce32020:
    #data loc_8c034dee
PTR_ce32024:
    #data loc_8c0be7f4
PTR_ce32028:
    #data loc_8c045790
PTR_ce3202c:
    #data loc_8c0522e0

;=============================================

LAB_ce32030:
    mov.w @(DAT_ce32166,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32050
    mov.l @(PTR_ce32174,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32066
    lds.l @r15+,PR
    mov.l @(PTR_ce32178,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32050:
    mov.l @(PTR_ce32174,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32066
    lds.l @r15+,PR
    mov.l @(PTR_ce3217c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32066:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3206c:
    mov r4,r3
    mov.l @(PTR_ce32180,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3207e:
    mov.w @(DAT_ce32168,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3209c
    mov.w @(DAT_ce3216c,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3216a,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3209c:
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce32184,pc),r3
    mov.w r0,@(0x1c,r14)
    mov.w r0,@(0x1e,r14)
    mov.l r0,@(0x14,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32166,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32106
    mov.w @(DAT_ce32166,pc),r0
    mov 0x02,r2
    fldi0 fr4
    mov 0x40,r3
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32188,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3216e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3218c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    bra LAB_ce32136
    mov 0x03,r6

LAB_ce32106:
    mov.w @(DAT_ce32166,pc),r0
    mov.l @(PTR_ce32190,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3216e,pc),r0
    mov 0x40,r2
    mov.l @(PTR_ce3218c,pc),r3
    mov 0x00,r6
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

LAB_ce32136:
    lds.l @r15+,PR
    mov.l @(PTR_ce32194,pc),r2
    mov r14,r4
    mov 0x16,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32144:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32170,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r4
    mov.w @(DAT_ce32172,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32168,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32198
    bra LAB_ce3219a
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32166:
    #data 0x01f9
DAT_ce32168:
    #data 0x0255
DAT_ce3216a:
    #data 0x00ff
DAT_ce3216c:
    #data 0x03f0
DAT_ce3216e:
    #data 0x01a1
DAT_ce32170:
    #data 0x03f8
DAT_ce32172:
    #data 0x0328
    #align4

PTR_ce32174:
    #data loc_8c034dee
PTR_ce32178:
    #data loc_8c051648
PTR_ce3217c:
    #data loc_8c05176e
PTR_ce32180:
    #data PTR_ce338ec
PTR_ce32184:
    #data loc_8c05218a
DAT_ce32188:
    #data 0xbf4db6db
PTR_ce3218c:
    #data loc_8c2896b0
PTR_ce32190:
    #data loc_8c05115a
PTR_ce32194:
    #data loc_8c034e8c

;=============================================

LAB_ce32198:
    mov 0x00,r3

LAB_ce3219a:
    mov.w @(DAT_ce32292,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32294,pc),r0
    mov.l @(PTR_ce322a8,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32296,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce321e2
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce322b4,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce32298,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3229a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce322ac,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce322b0,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce321e2:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce321ea:
    mov.w @(DAT_ce3229c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r4
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32294,pc),r0
    mov.b r4,@(r0,r14)
    mov.b r4,@(r0,r14)
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce322ec
    mov.l @(PTR_ce322a8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32296,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce322ec
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    mov 0x04,r12
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32296,pc),r0
    mov.b r13,@(r0,r14)
    add 0x5D,r0
    mov.b r13,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/ge r12,r0
    bf LAB_ce322c0
    mov.w @(DAT_ce3229e,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce322a0,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce322b8,pc),r3
    mov 0x02,r5
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce322ec
    mov r0,r4
    mov.l @(0x14,r14),r5
    tst r5,r5
    bf LAB_ce3226a
    mov.w @(DAT_ce322a2,pc),r0
    mov.l @(r0,r14),r5

LAB_ce3226a:
    mov 0x34,r0
    fmov.s @(r0,r5),fr3
    fmov fr3,@(r0,r4)
    mov 0x22,r0
    mov.b r13,@(r0,r4)
    mov.w @(DAT_ce322a4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce322ec
    mov.w @(DAT_ce322a6,pc),r0
    mov.l @(DAT_ce322bc,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce322ec
    mov 0x22,r1
    add r4,r1
    mov 0x01,r0
    bra LAB_ce322ec
    mov.b r0,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32292:
    #data 0x03f1
DAT_ce32294:
    #data 0x0328
DAT_ce32296:
    #data 0x0141
DAT_ce32298:
    #data 0x019e
DAT_ce3229a:
    #data 0x03f0
DAT_ce3229c:
    #data 0x03f8
DAT_ce3229e:
    #data 0x03f9
DAT_ce322a0:
    #data 0x0327
DAT_ce322a2:
    #data 0x020c
DAT_ce322a4:
    #data 0x0525
DAT_ce322a6:
    #data 0x0340
    #align4

PTR_ce322a8:
    #data loc_8c034dee
DAT_ce322ac:
    #data 0xc1d55555
DAT_ce322b0:
    #data 0x43892492
PTR_ce322b4:
    #data loc_8c050834
PTR_ce322b8:
    #data loc_8c063f54
DAT_ce322bc:
    #data 0x00008000

;=============================================

LAB_ce322c0:
    mov 0x60,r0
    mov.l @(PTR_ce32398,pc),r3
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1c,r14),r0
    mov r0,r5
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce322ec
    mov r0,r11
    mov r13,r14
    mov.l @(PTR_ce3239c,pc),r13

LAB_ce322d8:
    mov r14,r6
    shll2 r6
    shll2 r6
    mov 0x02,r5
    shll r6
    jsr @r13
    mov r11,r4
    add 0x01,r14
    cmp/ge r12,r14
    bf LAB_ce322d8

LAB_ce322ec:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce322f8:
    mov.w @(DAT_ce32390,pc),r0
    mov 0x02,r3
    mov 0x05,r5
    mov.b r3,@(r0,r4)
    mov 0x01,r3
    mov.w @(DAT_ce32392,pc),r0
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r4)
    mov.w @(0x1e,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r4)
    exts.w r0,r0
    cmp/ge r3,r0
    bt LAB_ce32334
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32394,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3232c
    mov.l @(PTR_ce323a0,pc),r1
    mov 0x02,r6
    jmp @r1
    mov 0x16,r5

LAB_ce3232c:
    mov.l @(PTR_ce323a0,pc),r2
    mov 0x05,r6
    jmp @r2
    mov 0x16,r5

LAB_ce32334:
    mov.w @(DAT_ce32396,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32346
    mov.b @(0x6,r4),r0
    add 0xFF,r0
    mov.b r0,@(0x6,r4)
    mov 0x2B,r0
    mov.w r0,@(0x1e,r4)

LAB_ce32346:
    rts
    nop

LAB_ce3234a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce323a4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32378
    mov.w @(DAT_ce32394,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3236e
    lds.l @r15+,PR
    mov.l @(PTR_ce323a8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3236e:
    lds.l @r15+,PR
    mov.l @(PTR_ce323ac,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32378:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3237e:
    mov r4,r3
    mov.l @(PTR_ce323b0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32390:
    #data 0x03f8
DAT_ce32392:
    #data 0x0328
DAT_ce32394:
    #data 0x01f9
DAT_ce32396:
    #data 0x019e
    #align4

PTR_ce32398:
    #data loc_8c0642d0
PTR_ce3239c:
    #data loc_8c0be836
PTR_ce323a0:
    #data loc_8c034e8c
PTR_ce323a4:
    #data loc_8c034dee
PTR_ce323a8:
    #data loc_8c05176e
PTR_ce323ac:
    #data loc_8c051648
PTR_ce323b0:
    #data PTR_ce33900

;=============================================

LAB_ce323b4:
    mov.w @(DAT_ce324ce,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce323d2
    mov.w @(DAT_ce324d2,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce324d0,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce323d2:
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce324e0,pc),r3
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce324d4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32412
    mov.w @(DAT_ce324d4,pc),r0
    mov 0x02,r2
    fldi0 fr4
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce324e4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    bra LAB_ce3241c
    fmov fr3,@(r0,r14)

LAB_ce32412:
    mov.w @(DAT_ce324d4,pc),r0
    mov.l @(PTR_ce324e8,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce3241c:
    mov.w @(DAT_ce324d6,pc),r0
    mov 0x44,r2
    mov.l @(PTR_ce324ec,pc),r3
    mov 0x10,r6
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x16,r5
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
    mov.l @(PTR_ce324f0,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32450:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce324d8,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r4
    mov.w @(DAT_ce324da,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce324ce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32472
    bra LAB_ce32474
    mov 0x02,r3

LAB_ce32472:
    mov 0x00,r3

LAB_ce32474:
    mov.w @(DAT_ce324dc,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce324da,pc),r0
    mov.l @(PTR_ce324f4,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce324de,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce324c6
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce324de,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x22,r0
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1e,r14)
    mov r15,r5
    mov.w @(DAT_ce324d2,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce32500,pc),r3
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce324f8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce324fc,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce324c6:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce324ce:
    #data 0x0255
DAT_ce324d0:
    #data 0x00ff
DAT_ce324d2:
    #data 0x03f0
DAT_ce324d4:
    #data 0x01f9
DAT_ce324d6:
    #data 0x01a1
DAT_ce324d8:
    #data 0x03f8
DAT_ce324da:
    #data 0x0328
DAT_ce324dc:
    #data 0x03f1
DAT_ce324de:
    #data 0x0141
    #align4

PTR_ce324e0:
    #data loc_8c05218a
DAT_ce324e4:
    #data 0xbf4db6db
PTR_ce324e8:
    #data loc_8c05115a
PTR_ce324ec:
    #data loc_8c2896b0
PTR_ce324f0:
    #data loc_8c034e8c
PTR_ce324f4:
    #data loc_8c034dee
DAT_ce324f8:
    #data 0xc2555555
DAT_ce324fc:
    #data 0x43700000
PTR_ce32500:
    #data loc_8c050834

;=============================================

LAB_ce32504:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r4
    mov.l r12,@-r15
    mov.w @(DAT_ce325fc,pc),r0
    mov.l r11,@-r15
    mov 0x02,r11
    sts.l PR,@-r15
    mov.b r11,@(r0,r14)
    mov.w @(DAT_ce325fe,pc),r0
    mov.l @(PTR_ce3260c,pc),r3
    mov.b r4,@(r0,r14)
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32600,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32538
    mov 0x00,r13
    mov.l @(PTR_ce32610,pc),r3
    mov 0x30,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce32538:
    mov.w @(DAT_ce32602,pc),r0
    mov.b @(r0,r14),r4
    tst r4,r4
    bf LAB_ce32544
    bra LAB_ce3269c
    nop

LAB_ce32544:
    exts.b r4,r0
    cmp/eq 0xFF,r0
    bf LAB_ce32562
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32604,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32606,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    bra LAB_ce3269c
    mov.b r13,@(r0,r14)

LAB_ce32562:
    mov.w @(DAT_ce32608,pc),r0
    mov.l @(PTR_ce32614,pc),r13
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x05,r0
    bt/s LAB_ce32580
    mov r0,r4
    mov.w @(DAT_ce3260a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32580
    mov r4,r0
    nop
    cmp/eq 0x04,r0
    bf LAB_ce32620

LAB_ce32580:
    mov.l @(PTR_ce32618,pc),r3
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x07,r0
    bt LAB_ce3258e
    bra LAB_ce3269c
    nop

LAB_ce3258e:
    mov.l @(PTR_ce3261c,pc),r3
    jsr @r3
    nop
    mov 0x0F,r4
    and r0,r4
    extu.b r4,r12
    mov r12,r2
    mov 0x01,r5
    tst r5,r2
    bt LAB_ce325b6
    mov.w @(0x1e,r14),r0
    tst r5,r0
    bf LAB_ce325b6
    mov.w @(0x1e,r14),r0
    mov 0x00,r6
    mov r6,r5
    or 0x01,r0
    mov.w r0,@(0x1e,r14)
    jsr @r13
    mov r14,r4

LAB_ce325b6:
    mov r12,r3
    tst r11,r3
    bt LAB_ce325d0
    mov.w @(0x1e,r14),r0
    tst r11,r0
    bf LAB_ce325d0
    mov.w @(0x1e,r14),r0
    mov 0x00,r5
    mov 0x01,r6
    or 0x02,r0
    mov.w r0,@(0x1e,r14)
    jsr @r13
    mov r14,r4

LAB_ce325d0:
    mov r12,r3
    mov 0x04,r4
    tst r4,r3
    bt LAB_ce325ec
    mov.w @(0x1e,r14),r0
    tst r4,r0
    bf LAB_ce325ec
    mov.w @(0x1e,r14),r0
    mov 0x00,r5
    mov 0x02,r6
    or 0x04,r0
    mov.w r0,@(0x1e,r14)
    jsr @r13
    mov r14,r4

LAB_ce325ec:
    mov 0x08,r4
    tst r4,r12
    bt LAB_ce3269c
    mov.w @(0x1e,r14),r0
    tst r4,r0
    bt LAB_ce3268e
    bra LAB_ce3269c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325fc:
    #data 0x03f8
DAT_ce325fe:
    #data 0x0328
DAT_ce32600:
    #data 0x0140
DAT_ce32602:
    #data 0x0141
DAT_ce32604:
    #data 0x03f9
DAT_ce32606:
    #data 0x0327
DAT_ce32608:
    #data 0x0255
DAT_ce3260a:
    #data 0x0525
    #align4

PTR_ce3260c:
    #data loc_8c034dee
PTR_ce32610:
    #data loc_8c04223a
PTR_ce32614:
    #data loc_8c0649c8
PTR_ce32618:
    #data loc_8c26823c
PTR_ce3261c:
    #data loc_8c03319e

;=============================================

LAB_ce32620:
    mov.w @(DAT_ce326dc,pc),r0
    mov.w @(DAT_ce326de,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32640
    mov.w @(0x1e,r14),r0
    tst 0x01,r0
    bf LAB_ce32640
    mov.w @(0x1e,r14),r0
    mov 0x00,r6
    mov r6,r5
    or 0x01,r0
    mov.w r0,@(0x1e,r14)
    jsr @r13
    mov r14,r4

LAB_ce32640:
    mov.w @(DAT_ce326dc,pc),r0
    mov.w @(DAT_ce326e0,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce32660
    mov.w @(0x1e,r14),r0
    tst 0x02,r0
    bf LAB_ce32660
    mov.w @(0x1e,r14),r0
    mov 0x00,r5
    mov 0x01,r6
    or 0x02,r0
    mov.w r0,@(0x1e,r14)
    jsr @r13
    mov r14,r4

LAB_ce32660:
    mov.w @(DAT_ce326dc,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x40,r0
    bt LAB_ce3267e
    mov.w @(0x1e,r14),r0
    tst 0x04,r0
    bf LAB_ce3267e
    mov.w @(0x1e,r14),r0
    mov 0x00,r5
    mov 0x02,r6
    or 0x04,r0
    mov.w r0,@(0x1e,r14)
    jsr @r13
    mov r14,r4

LAB_ce3267e:
    mov.w @(DAT_ce326dc,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x20,r0
    bt LAB_ce3269c
    mov.w @(0x1e,r14),r0
    tst 0x08,r0
    bf LAB_ce3269c

LAB_ce3268e:
    mov.w @(0x1e,r14),r0
    mov 0x00,r5
    mov 0x03,r6
    or 0x08,r0
    mov.w r0,@(0x1e,r14)
    jsr @r13
    mov r14,r4

LAB_ce3269c:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce326a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce326e4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce326d6
    mov.w @(DAT_ce326e2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce326cc
    lds.l @r15+,PR
    mov.l @(PTR_ce326e8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce326cc:
    lds.l @r15+,PR
    mov.l @(PTR_ce326ec,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce326d6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326dc:
    #data 0x0348
DAT_ce326de:
    #data 0x0200
DAT_ce326e0:
    #data 0x0100
DAT_ce326e2:
    #data 0x01f9
    #align4

PTR_ce326e4:
    #data loc_8c034dee
PTR_ce326e8:
    #data loc_8c05176e
PTR_ce326ec:
    #data loc_8c051648

;=============================================

FUN_ce326f0:
    mova @(DAT_ce32760,pc),r0
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov r4,r14
    fmov.s fr15,@-r15
    fmov.s fr12,@-r15
    mov.w @(DAT_ce32758,pc),r2
    sts.l PR,@-r15
    fmov.s @r0,fr4
    mov.w @(DAT_ce32756,pc),r0
    mov.l @(PTR_ce32764,pc),r13
    mov.w @(r0,r14),r3
    fldi1 fr6
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce32770
    fadd fr6,fr6
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce3275a,pc),r1
    extu.w r3,r3
    tst r1,r3
    bt LAB_ce32732
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32768,pc),r0
    fmov.s @r0,fr5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fcmp/gt fr5,fr3
    bf LAB_ce32732
    fmov fr5,@(r0,r14)

LAB_ce32732:
    mov.w @(DAT_ce32756,pc),r0
    mov.w @(DAT_ce3275c,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce3279e
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fsub fr4,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3276c,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fcmp/gt fr3,fr4
    bf LAB_ce3279e
    bra LAB_ce3279e
    fmov fr4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32756:
    #data 0x0340
DAT_ce32758:
    #data 0x3c00
DAT_ce3275a:
    #data 0x0400
DAT_ce3275c:
    #data 0x0800
    #align4

DAT_ce32760:
    #data 0x3fd55555
PTR_ce32764:
    #data loc_8c26a518
DAT_ce32768:
    #data 0x41d55555
DAT_ce3276c:
    #data 0xc1d55555

;=============================================

LAB_ce32770:
    mov.w @(DAT_ce3284c,pc),r0
    fmov.s @(r0,r13),fr3
    add 0xFC,r0
    fmov.s @(r0,r13),fr2
    mov 0x34,r0
    fmov.s @(r0,r14),fr5
    fadd fr3,fr2
    fldi0 fr3
    fdiv fr6,fr2
    fsub fr2,fr5
    fcmp/gt fr3,fr5
    bf/s LAB_ce32792
    fldi0 fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fsub fr4,fr2
    fmov fr2,@(r0,r14)

LAB_ce32792:
    fcmp/gt fr5,fr3
    bf LAB_ce3279e
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fadd fr4,fr2
    fmov fr2,@(r0,r14)

LAB_ce3279e:
    mov.w @(DAT_ce3284c,pc),r0
    fmov.s @(r0,r13),fr3
    add 0xFC,r0
    fmov.s @(r0,r13),fr2
    mov 0x5C,r0
    fadd fr3,fr2
    fmov.s @(r0,r14),fr3
    mov 0x34,r0
    fdiv fr6,fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    add 0x60,r0
    fmov.s @(r0,r13),fr15
    add 0xFC,r0
    fmov.s @(r0,r13),fr3
    mova @(DAT_ce32850,pc),r0
    fmov.s @r0,fr2
    mov 0x38,r0
    fsub fr15,fr3
    fmov.s @(r0,r14),fr0
    mov.w @(0x1e,r14),r0
    fmov fr15,fr1
    mov r0,r3
    lds r3,FPUL
    fdiv fr2,fr3
    mova @(DAT_ce32854,pc),r0
    fadd fr3,fr1
    float FPUL,fr3
    fsub fr0,fr1
    fmov.s @r0,fr0
    fmul fr0,fr3
    fmov fr1,fr12
    mova @(DAT_ce32858,pc),r0
    mov.l @(PTR_ce32864,pc),r2
    fmov.s @r0,fr2
    mova @(DAT_ce3285c,pc),r0
    mov.l @(DAT_ce32860,pc),r3
    fdiv fr2,fr3
    fmov.s @r0,fr2
    fadd fr2,fr3
    ftrc fr3,FPUL
    sts FPUL,r4
    jsr @r2
    and r3,r4
    mova @(DAT_ce32868,pc),r0
    fmov fr0,fr3
    fmov.s @r0,fr0
    mova @(DAT_ce3286c,pc),r0
    fmov.s @r0,fr5
    fmac fr0,fr3,fr12
    fmov fr12,fr4
    fcmp/gt fr5,fr4
    bf LAB_ce3280a
    fmov fr5,fr4

LAB_ce3280a:
    mova @(DAT_ce32870,pc),r0
    fmov.s @r0,fr5
    fcmp/gt fr4,fr5
    bf/s LAB_ce32816
    mov 0x38,r0
    fmov fr5,fr4

LAB_ce32816:
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce3284e,pc),r3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(0x1e,r14),r0
    add 0x06,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/ge r3,r0
    bf LAB_ce3282e
    mov 0x00,r0
    mov.w r0,@(0x1e,r14)

LAB_ce3282e:
    lds.l @r15+,PR
    fmov.s @r15+,fr12
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3283a:
    mov r4,r3
    mov.l @(PTR_ce32874,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3284c:
    #data 0x008c
DAT_ce3284e:
    #data 0x0168
    #align4

DAT_ce32850:
    #data 0x41000000
DAT_ce32854:
    #data 0x47800000
DAT_ce32858:
    #data 0x43b40000
DAT_ce3285c:
    #data 0x3f000000
DAT_ce32860:
    #data 0x0000ffff
PTR_ce32864:
    #data loc_8c11e860
DAT_ce32868:
    #data 0x41200000
DAT_ce3286c:
    #data 0x41092492
DAT_ce32870:
    #data 0xc1092492
PTR_ce32874:
    #data PTR_ce33910

;=============================================

LAB_ce32878:
    mov.w @(DAT_ce32968,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32896
    mov.w @(DAT_ce3296c,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3296a,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32896:
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x22,r0
    mov.b r13,@(r0,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce3297c,pc),r3
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3296e,pc),r0
    mov.l @(PTR_ce32980,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32970,pc),r0
    mov 0x4D,r2
    mov.l @(PTR_ce32984,pc),r3
    mov 0x14,r6
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x16,r5
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
    mov.l @(PTR_ce32988,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce328ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32972,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r4
    mov.w @(DAT_ce32974,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32968,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3290e
    bra LAB_ce32910
    mov 0x02,r3

LAB_ce3290e:
    mov 0x00,r3

LAB_ce32910:
    mov.w @(DAT_ce32976,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32974,pc),r0
    mov.l @(PTR_ce3298c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32978,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32960
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce3299c,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce32978,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32990,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3296c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32994,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32998,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32960:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32968:
    #data 0x0255
DAT_ce3296a:
    #data 0x00ff
DAT_ce3296c:
    #data 0x03f0
DAT_ce3296e:
    #data 0x01f9
DAT_ce32970:
    #data 0x01a1
DAT_ce32972:
    #data 0x03f8
DAT_ce32974:
    #data 0x0328
DAT_ce32976:
    #data 0x03f1
DAT_ce32978:
    #data 0x0141
    #align4

PTR_ce3297c:
    #data loc_8c05218a
PTR_ce32980:
    #data loc_8c05115a
PTR_ce32984:
    #data loc_8c2896b0
PTR_ce32988:
    #data loc_8c034e8c
PTR_ce3298c:
    #data loc_8c034dee
DAT_ce32990:
    #data 0x42892492
DAT_ce32994:
    #data 0xc2a00000
DAT_ce32998:
    #data 0x42ab6db6
PTR_ce3299c:
    #data loc_8c050834

;=============================================

LAB_ce329a0:
    mov.w @(DAT_ce32ad4,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r4
    mov.w @(DAT_ce32ad6,pc),r0
    mov.l @(PTR_ce32ae8,pc),r3
    mov.b r4,@(r0,r14)
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32ad8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce329ce
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x32,r5
    mov.l @(PTR_ce32aec,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce329ce:
    mov.w @(DAT_ce32ada,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32adc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32a64
    mov.l @(PTR_ce32af0,pc),r3
    mov 0x07,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov 0x60,r1
    mov.l @(PTR_ce32af4,pc),r3
    add r14,r1
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    fmov.s @r3,fr3
    fcmp/gt fr3,fr2
    bf LAB_ce32a64
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce32ade,pc),r2
    add 0x01,r0
    fldi0 fr4
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    mov 0x22,r0
    mov.b r2,@(r0,r14)
    mov 0x00,r2
    mov.w @(DAT_ce32ae0,pc),r0
    mov r2,r6
    mov r2,r5
    fmov fr4,@(r0,r14)
    mov 0x50,r0
    fmov fr4,@(r0,r14)
    mov 0x54,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32ae2,pc),r0
    mov.w r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32af0,pc),r2
    fmov fr4,@(r0,r14)
    jsr @r2
    mov r14,r4
    bsr FUN_ce326f0
    mov r14,r4
    mov.l @(PTR_ce32af8,pc),r2
    mov 0x16,r5
    mov 0x15,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32afc,pc),r3
    mov 0x10,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32b00,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32b00,pc),r3
    mov 0x01,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a64:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32a6a:
    mov.w @(DAT_ce32ad4,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r4
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x03,r3
    mov.w @(DAT_ce32ad6,pc),r0
    mov.b r4,@(r0,r14)
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32ada,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32b04,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32ae0,pc),r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x50,r0
    fmov.s @(r0,r14),fr2
    fadd fr4,fr2
    fmov fr2,@(r0,r14)
    mov 0x54,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf/s LAB_ce32ac6
    mov r14,r4
    mov.b @(0x6,r14),r0
    fldi1 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32ae4,pc),r0
    mov.w r0,@(0x1c,r14)
    add 0x54,r0
    fmov fr4,@(r0,r14)
    mov 0x50,r0
    fmov fr4,@(r0,r14)
    mov 0x54,r0
    fmov fr4,@(r0,r14)

LAB_ce32ac6:
    mov.l @(PTR_ce32ae8,pc),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce326f0
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ad4:
    #data 0x03f8
DAT_ce32ad6:
    #data 0x0328
DAT_ce32ad8:
    #data 0x0140
DAT_ce32ada:
    #data 0x01f5
DAT_ce32adc:
    #data 0x0141
DAT_ce32ade:
    #data 0x00ff
DAT_ce32ae0:
    #data 0x0108
DAT_ce32ae2:
    #data 0x0130
DAT_ce32ae4:
    #data 0x00b4
    #align4

PTR_ce32ae8:
    #data loc_8c034dee
PTR_ce32aec:
    #data loc_8c04223a
PTR_ce32af0:
    #data loc_8c02fec4
PTR_ce32af4:
    #data loc_8c26a5a8
PTR_ce32af8:
    #data loc_8c034e8c
PTR_ce32afc:
    #data loc_8c042008
PTR_ce32b00:
    #data loc_8c0651ec
DAT_ce32b04:
    #data 0x3d000000

;=============================================

LAB_ce32b08:
    mov.w @(DAT_ce32b7c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r4
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32b7e,pc),r0
    mov.l @(PTR_ce32b88,pc),r3
    mov.b r4,@(r0,r14)
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce326f0
    mov r14,r4
    mov 0x22,r0
    mov 0x00,r13
    mov.b r13,@(r0,r14)
    mov 0x03,r5
    mov.w @(DAT_ce32b80,pc),r0
    mov.b r5,@(r0,r14)
    add 0x60,r0
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x05,r0
    bt/s LAB_ce32b50
    mov r0,r4
    mov.w @(DAT_ce32b82,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32b50
    mov r4,r0
    nop
    cmp/eq 0x04,r0
    bf LAB_ce32b98

LAB_ce32b50:
    mov.l @(PTR_ce32b8c,pc),r3
    mov.w @(DAT_ce32b84,pc),r1
    mov.l @r3,r0
    mov.b @(r0,r1),r0
    tst 0x07,r0
    bf LAB_ce32bf6
    mov.l @(PTR_ce32b90,pc),r2
    jsr @r2
    nop
    mov 0x22,r1
    mov.l @(PTR_ce32b90,pc),r3
    and 0x03,r0
    add r14,r1
    add 0x01,r0
    jsr @r3
    mov.b r0,@r1
    mov.l @(PTR_ce32b94,pc),r1
    and 0x0F,r0
    mov.b @(r0,r1),r2
    mov 0x21,r0
    bra LAB_ce32bf6
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b7c:
    #data 0x03f8
DAT_ce32b7e:
    #data 0x0328
DAT_ce32b80:
    #data 0x01f5
DAT_ce32b82:
    #data 0x0525
DAT_ce32b84:
    #data 0x0080
    #align4

PTR_ce32b88:
    #data loc_8c034dee
PTR_ce32b8c:
    #data loc_8c26823c
PTR_ce32b90:
    #data loc_8c03319e
PTR_ce32b94:
    #data DAT_ce33930

;=============================================

LAB_ce32b98:
    mov.w @(DAT_ce32cd8,pc),r0
    mov.w @(DAT_ce32cda,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce32bf6
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce32cdc,pc),r1
    extu.w r3,r3
    tst r1,r3
    bt LAB_ce32bb4
    mov 0x22,r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce32bb4:
    mov.w @(DAT_ce32cd8,pc),r0
    mov.w @(DAT_ce32cde,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32bc6
    mov 0x22,r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)

LAB_ce32bc6:
    mov.w @(DAT_ce32cd8,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x40,r0
    bt LAB_ce32bd4
    mov 0x22,r0
    mov.b r5,@(r0,r14)

LAB_ce32bd4:
    mov.w @(DAT_ce32cd8,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x20,r0
    bt LAB_ce32be4
    mov 0x22,r0
    mov 0x04,r2
    mov.b r2,@(r0,r14)

LAB_ce32be4:
    mov.w @(DAT_ce32ce0,pc),r0
    mov 0xF6,r1
    mov.w @(DAT_ce32ce2,pc),r2
    mov.w @(r0,r14),r3
    mov 0x21,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)

LAB_ce32bf6:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce32c0e
    mov.l @(PTR_ce32cec,pc),r3
    mov 0x05,r1
    mov.b @r3,r2
    extu.b r2,r2
    cmp/ge r1,r2
    bf LAB_ce32c50

LAB_ce32c0e:
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce32cf4,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32cf0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32ce4,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32ce6,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov 0x16,r6
    mov.l @(PTR_ce32cf8,pc),r2
    mov r6,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32c50:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32c58:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    rts
    mov.b r0,@(0x6,r4)

LAB_ce32c60:
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
    mov.w @(DAT_ce32ce8,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32cd4
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce32cfc,pc),r5
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32ce8,pc),r0
    mov.l @(PTR_ce32d00,pc),r3
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov 0x03,r0
    mov.b r0,@(0x5,r5)
    mov 0x01,r0
    mov.b r0,@(0x6,r5)
    jmp @r3
    mov 0x2F,r5

LAB_ce32cd4:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32cd8:
    #data 0x0348
DAT_ce32cda:
    #data 0x0360
DAT_ce32cdc:
    #data 0x0200
DAT_ce32cde:
    #data 0x0100
DAT_ce32ce0:
    #data 0x0340
DAT_ce32ce2:
    #data 0x3c00
DAT_ce32ce4:
    #data 0x03f9
DAT_ce32ce6:
    #data 0x0327
DAT_ce32ce8:
    #data 0x041c
    #align4

PTR_ce32cec:
    #data loc_8c2895f0
DAT_ce32cf0:
    #data 0xbf4db6db
PTR_ce32cf4:
    #data loc_8c05218a
PTR_ce32cf8:
    #data loc_8c034e8c
PTR_ce32cfc:
    #data loc_8c26a518
PTR_ce32d00:
    #data loc_8c04223a

;=============================================

LAB_ce32d04:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32e2c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32d1e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32e30,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32d1e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32d26:
    mov r4,r3
    mov.l @(PTR_ce32e34,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32d38:
    mov.w @(DAT_ce32e1c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32d56
    mov.w @(DAT_ce32e20,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32e1e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32d56:
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce32e38,pc),r3
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32e22,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32dbc
    mov.w @(DAT_ce32e22,pc),r0
    mov 0x02,r2
    fldi0 fr4
    mov 0x50,r3
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32e3c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32e24,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32e40,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    bra LAB_ce32dec
    mov 0x08,r6

LAB_ce32dbc:
    mov.w @(DAT_ce32e22,pc),r0
    mov.l @(PTR_ce32e44,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32e24,pc),r0
    mov 0x50,r2
    mov.l @(PTR_ce32e40,pc),r3
    mov 0x06,r6
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

LAB_ce32dec:
    lds.l @r15+,PR
    mov.l @(PTR_ce32e48,pc),r2
    mov r14,r4
    mov 0x16,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32dfa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32e26,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r4
    mov.w @(DAT_ce32e28,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32e1c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32e4c
    bra LAB_ce32e4e
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e1c:
    #data 0x0255
DAT_ce32e1e:
    #data 0x00ff
DAT_ce32e20:
    #data 0x03f0
DAT_ce32e22:
    #data 0x01f9
DAT_ce32e24:
    #data 0x01a1
DAT_ce32e26:
    #data 0x03f8
DAT_ce32e28:
    #data 0x0328
    #align4

PTR_ce32e2c:
    #data loc_8c034dee
PTR_ce32e30:
    #data loc_8c051648
PTR_ce32e34:
    #data PTR_ce33940
PTR_ce32e38:
    #data loc_8c05218a
DAT_ce32e3c:
    #data 0xbf4db6db
PTR_ce32e40:
    #data loc_8c2896b0
PTR_ce32e44:
    #data loc_8c05115a
PTR_ce32e48:
    #data loc_8c034e8c

;=============================================

LAB_ce32e4c:
    mov 0x00,r3

LAB_ce32e4e:
    mov.w @(DAT_ce32f6c,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32f6e,pc),r0
    mov.l @(PTR_ce32f80,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32f70,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32e92
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32f8c,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce32f72,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32f84,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32f88,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32e92:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e9a:
    mov.w @(DAT_ce32f74,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r4
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32f6e,pc),r0
    mov.l @(PTR_ce32f80,pc),r3
    mov.b r4,@(r0,r14)
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32f76,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32eca
    mov 0x00,r13
    mov.l @(PTR_ce32f90,pc),r3
    mov 0x30,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce32eca:
    mov.w @(DAT_ce32f70,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32f64
    mov.w @(0x1c,r14),r0
    mov 0x08,r3
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/ge r3,r0
    bf LAB_ce32f20
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32f78,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32f7a,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32f7c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32f10
    lds.l @r15+,PR
    mov.l @(PTR_ce32f94,pc),r1
    mov 0x07,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r1
    mov.l @r15+,r14

LAB_ce32f10:
    lds.l @r15+,PR
    mov.l @(PTR_ce32f94,pc),r2
    mov 0x09,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32f20:
    mov.l @(PTR_ce32f98,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32f64
    mov r0,r4
    mov.w @(0x1c,r14),r0
    mov.l @(PTR_ce32f9c,pc),r1
    shll r0
    mov.w @(r0,r1),r3
    mova @(DAT_ce32fa0,pc),r0
    fmov.s @r0,fr2
    mov 0x34,r0
    extu.w r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr2,fr3
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce32f7e,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32f56
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce32f56:
    mov 0x34,r0
    mov r0,r1
    add r14,r1
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)

LAB_ce32f64:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f6c:
    #data 0x03f1
DAT_ce32f6e:
    #data 0x0328
DAT_ce32f70:
    #data 0x0141
DAT_ce32f72:
    #data 0x03f0
DAT_ce32f74:
    #data 0x03f8
DAT_ce32f76:
    #data 0x0140
DAT_ce32f78:
    #data 0x03f9
DAT_ce32f7a:
    #data 0x0327
DAT_ce32f7c:
    #data 0x01f9
DAT_ce32f7e:
    #data 0x0130
    #align4

PTR_ce32f80:
    #data loc_8c034dee
DAT_ce32f84:
    #data 0xc2555555
DAT_ce32f88:
    #data 0x43bc9249
PTR_ce32f8c:
    #data loc_8c050834
PTR_ce32f90:
    #data loc_8c04223a
PTR_ce32f94:
    #data loc_8c034e8c
PTR_ce32f98:
    #data loc_8c063f54
PTR_ce32f9c:
    #data DAT_ce336e8
DAT_ce32fa0:
    #data 0x3fd55555

;=============================================

LAB_ce32fa4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce330c8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32fd2
    mov.w @(DAT_ce330bc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32fc8
    lds.l @r15+,PR
    mov.l @(PTR_ce330cc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32fc8:
    lds.l @r15+,PR
    mov.l @(PTR_ce330d0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32fd2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fd8:
    mov r4,r3
    mov.l @(PTR_ce330d4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32fea:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce330d8,pc),r3
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
    mov.w @(DAT_ce330bc,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce330be,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce330dc,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce330e0,pc),r3
    mov 0x16,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce330c0,pc),r0
    mov 0x55,r2
    mov.l @(PTR_ce330e4,pc),r3
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
    mov.l @(PTR_ce330e8,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33060:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce330c8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33080
    mov.l @(PTR_ce330d0,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33080:
    mov.w @(DAT_ce330c2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce330a0
    mov 0x00,r3
    fldi0 fr3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce330ec,pc),r0
    fmov.s fr3,@r15
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce330f0,pc),r3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce330a0:
    mov.w @(DAT_ce330c4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce330b4
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.l @(PTR_ce330e0,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce330b4:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce330bc:
    #data 0x01f9
DAT_ce330be:
    #data 0x041c
DAT_ce330c0:
    #data 0x01a1
DAT_ce330c2:
    #data 0x0141
DAT_ce330c4:
    #data 0x0140
    #align4

PTR_ce330c8:
    #data loc_8c034dee
PTR_ce330cc:
    #data loc_8c05176e
PTR_ce330d0:
    #data loc_8c051648
PTR_ce330d4:
    #data PTR_ce33950
PTR_ce330d8:
    #data loc_8c05218a
PTR_ce330dc:
    #data loc_8c05115a
PTR_ce330e0:
    #data loc_8c04223a
PTR_ce330e4:
    #data loc_8c2896b0
PTR_ce330e8:
    #data loc_8c034e8c
DAT_ce330ec:
    #data 0x43092492
PTR_ce330f0:
    #data loc_8c050ea4

;=============================================

LAB_ce330f4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce3312c
    mov 0x00,r4
    mov.b @(0x6,r14),r0
    mov 0x03,r6
    fldi0 fr4
    mov 0x14,r5
    add 0x01,r0
    mov.l @(PTR_ce331f0,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce331e6,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3312c:
    mov.w @(DAT_ce331e8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3313e
    mov.l @(PTR_ce331f4,pc),r3
    mov 0x30,r5
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce3313e:
    mov.l @(PTR_ce331f8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33154
    lds.l @r15+,PR
    mov.l @(PTR_ce331fc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33154:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3315a:
    mov r4,r3
    mov.l @(PTR_ce33200,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3316c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce33204,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce331e6,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33208,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce331ea,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3319c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3319c:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3320c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x54,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33210,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce331ec,pc),r0
    mov r4,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33214,pc),r3
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
    mov.l @(PTR_ce331f0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331e6:
    #data 0x01f9
DAT_ce331e8:
    #data 0x0140
DAT_ce331ea:
    #data 0x01d2
DAT_ce331ec:
    #data 0x01a1
    #align4

PTR_ce331f0:
    #data loc_8c034e8c
PTR_ce331f4:
    #data loc_8c04223a
PTR_ce331f8:
    #data loc_8c034dee
PTR_ce331fc:
    #data loc_8c051648
PTR_ce33200:
    #data PTR_ce33958
PTR_ce33204:
    #data loc_8c035162
DAT_ce33208:
    #data 0x41f00000
DAT_ce3320c:
    #data 0x40892492
DAT_ce33210:
    #data 0xbf4db6db
PTR_ce33214:
    #data loc_8c2896b0

;=============================================

LAB_ce33218:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3335c,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce33360,pc),r3
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
    bt LAB_ce33280
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33364,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33368,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33280:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33286:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3335c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce332a8
    mov.l @(PTR_ce3336c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33370,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce332a8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce332ae:
    rts
    mov 0x00,r0

LAB_ce332b2:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33356,pc),r0
    mov r4,r14
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x08,r0
    bt/s LAB_ce332da
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x03,r0
    bt LAB_ce332da
    mov.l @(PTR_ce33374,pc),r3
    mov 0x01,r6
    mov r6,r5
    jsr @r3
    mov r14,r4

LAB_ce332da:
    mov.l @(PTR_ce33378,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x0C,r0
    mov r15,r5
    mov.w r0,@(0x1c,r14)
    mov 0x01,r3
    mov.w @(DAT_ce33358,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x64,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce3337c,pc),r0
    mov.l @(PTR_ce33380,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3335a,pc),r0
    mov.l @(PTR_ce33368,pc),r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3332a
    mov.w @(DAT_ce33356,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x08,r0
    bt/s LAB_ce3331e
    mov r14,r4
    mov 0x0B,r6
    bra LAB_ce33322
    mov 0x15,r5

LAB_ce3331e:
    mov 0x15,r6
    mov r6,r5

LAB_ce33322:
    jsr @r13
    nop
    bra LAB_ce33332
    nop

LAB_ce3332a:
    mov 0x15,r5
    mov 0x10,r6
    jsr @r13
    mov r14,r4

LAB_ce33332:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3333c:
    mov.w @(DAT_ce33358,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33384,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33356:
    #data 0x0255
DAT_ce33358:
    #data 0x01ea
DAT_ce3335a:
    #data 0x01f9
    #align4

PTR_ce3335c:
    #data loc_8c034dee
PTR_ce33360:
    #data loc_8c052ce2
PTR_ce33364:
    #data loc_8c0511b4
PTR_ce33368:
    #data loc_8c034e8c
PTR_ce3336c:
    #data loc_8c035162
PTR_ce33370:
    #data loc_8c051854
PTR_ce33374:
    #data loc_8c02fec4
PTR_ce33378:
    #data loc_8c056f2a
DAT_ce3337c:
    #data 0x3f1c6db7
PTR_ce33380:
    #data loc_8c103660
PTR_ce33384:
    #data PTR_ce33964

;=============================================

LAB_ce33388:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce333ae
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x06,r0
    mov.w r0,@(0x1c,r4)
    mov 0x64,r0
    fmov.s @(r0,r4),fr3
    mova @(DAT_ce334a0,pc),r0
    fmov.s @r0,fr2
    mov 0x70,r0
    fneg fr3
    fdiv fr2,fr3
    fmov fr3,@(r0,r4)

LAB_ce333ae:
    rts
    nop

LAB_ce333b2:
    mov 0x70,r1
    add r4,r1
    mov 0x64,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r4),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce333d6
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x04,r0
    mov.w r0,@(0x1c,r4)

LAB_ce333d6:
    rts
    nop

LAB_ce333da:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce334a4,pc),r3
    mov r4,r14
    mov.w @(DAT_ce33492,pc),r0
    jsr @r3
    mov.l @(r0,r14),r13
    mov.w @(DAT_ce33494,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33400
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x17,r5
    mov.l @(PTR_ce334a8,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce33400:
    mov.w @(DAT_ce33496,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce33488
    mov.b r2,@r15
    mov.w @(DAT_ce33498,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce3341e
    mov r14,r4
    mov.w @(DAT_ce3349a,pc),r0
    mov 0x38,r2
    bra LAB_ce33424
    mov.b r2,@(r0,r13)

LAB_ce3341e:
    mov.w @(DAT_ce3349a,pc),r0
    mov 0x39,r1
    mov.b r1,@(r0,r13)

LAB_ce33424:
    mov.l @(PTR_ce334ac,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce33496,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33488
    mov.b @(0x6,r14),r0
    mov 0x04,r5
    mov.l @(PTR_ce334b0,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.b @r15,r2
    cmp/pz r2
    bt LAB_ce3345c
    mov.w @(DAT_ce3349c,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)

LAB_ce3345c:
    mov.w @(DAT_ce33498,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3346e
    mov.w @(DAT_ce3349e,pc),r0
    mov 0x0C,r2
    bra LAB_ce33474
    mov.b r2,@(r0,r14)

LAB_ce3346e:
    mov.w @(DAT_ce3349e,pc),r0
    mov 0x11,r1
    mov.b r1,@(r0,r14)

LAB_ce33474:
    mov.w @(DAT_ce3349e,pc),r0
    mov r14,r4
    mov 0x15,r5
    mov.b @(r0,r14),r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce334b4,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33488:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33492:
    #data 0x01c8
DAT_ce33494:
    #data 0x0140
DAT_ce33496:
    #data 0x0141
DAT_ce33498:
    #data 0x01f9
DAT_ce3349a:
    #data 0x01a1
DAT_ce3349c:
    #data 0x0130
DAT_ce3349e:
    #data 0x0158
    #align4

DAT_ce334a0:
    #data 0x41000000
PTR_ce334a4:
    #data loc_8c034dee
PTR_ce334a8:
    #data loc_8c04223a
PTR_ce334ac:
    #data loc_8c05933c
PTR_ce334b0:
    #data loc_8c0be7f4
PTR_ce334b4:
    #data loc_8c034e8c

;=============================================

LAB_ce334b8:
    mov.w @(DAT_ce335d0,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(r0,r14),r13
    add 0x31,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce334e6
    mov.l @(PTR_ce335e4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce334fe
    lds.l @r15+,PR
    mov.l @(PTR_ce335e8,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce334e6:
    mov.l @(PTR_ce335e4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce334fe
    lds.l @r15+,PR
    mov.l @(PTR_ce335ec,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce334fe:
    mov.w @(DAT_ce335d2,pc),r0
    mov.b @(r0,r14),r0
    and 0x3F,r0
    cmp/eq 0x02,r0
    bf LAB_ce33560
    mov.w @(DAT_ce335d2,pc),r0
    mov 0x00,r6
    mov.w @(DAT_ce335d4,pc),r3
    mov r6,r5
    mov.b @(r0,r14),r2
    and r3,r2
    mov.b r2,@(r0,r14)
    add 0x73,r0
    mov.l @(PTR_ce335f0,pc),r2
    mov.l r14,@(r0,r13)
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce335d6,pc),r0
    mov.w @(DAT_ce335d6,pc),r1
    mov.b @(r0,r14),r0
    add r13,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce335d8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce33544
    mov 0x02,r4
    mov.w @(DAT_ce335da,pc),r0
    mov 0x3A,r3
    mov.b r4,@(r0,r13)
    add 0xAB,r0
    bra LAB_ce33554
    mov.b r3,@(r0,r13)

LAB_ce33544:
    mov.w @(DAT_ce335da,pc),r0
    mov 0x01,r1
    mov 0x3B,r3
    mov.b r1,@(r0,r13)
    add 0xAB,r0
    mov.b r3,@(r0,r13)
    add 0x58,r0
    mov.b r4,@(r0,r13)

LAB_ce33554:
    lds.l @r15+,PR
    mov.l @(PTR_ce335f4,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33560:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33568:
    mov.w @(DAT_ce335d0,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(r0,r14),r13
    mov.w @(DAT_ce335dc,pc),r0
    mov.b r3,@(r0,r14)
    add 0x24,r0
    mov.b @(r0,r13),r0
    cmp/eq 0x02,r0
    bf/s LAB_ce3358a
    mov r14,r5
    mov.w @(DAT_ce335dc,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)

LAB_ce3358a:
    mov.l @(PTR_ce335f8,pc),r3
    jsr @r3
    mov r13,r4
    mov.w @(DAT_ce335de,pc),r0
    add r13,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x24,r0
    bf LAB_ce335a8
    mov 0x64,r1
    add r13,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce335a8:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce335b0:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce335e0,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce335fc
    cmp/eq 0x01,r0
    bt LAB_ce33604
    cmp/eq 0x02,r0
    bt LAB_ce3360c
    bra LAB_ce33612
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce335d0:
    #data 0x01c8
DAT_ce335d2:
    #data 0x0141
DAT_ce335d4:
    #data 0x00c0
DAT_ce335d6:
    #data 0x01d2
DAT_ce335d8:
    #data 0x01f9
DAT_ce335da:
    #data 0x01f6
DAT_ce335dc:
    #data 0x012c
DAT_ce335de:
    #data 0x0150
DAT_ce335e0:
    #data 0x04c9
    #align4

PTR_ce335e4:
    #data loc_8c034dee
PTR_ce335e8:
    #data LAB_ce3001c
PTR_ce335ec:
    #data loc_8c05176e
PTR_ce335f0:
    #data loc_8c02fec4
PTR_ce335f4:
    #data loc_8c0423fc
PTR_ce335f8:
    #data loc_8c04cc1c

;=============================================

LAB_ce335fc:
    mov.w @(DAT_ce336d4,pc),r0
    mov 0x05,r3
    bra LAB_ce33612
    mov.b r3,@(r0,r4)

LAB_ce33604:
    mov.w @(DAT_ce336d4,pc),r0
    mov 0x06,r1
    bra LAB_ce33612
    mov.b r1,@(r0,r4)

LAB_ce3360c:
    mov.w @(DAT_ce336d4,pc),r0
    mov 0x07,r2
    mov.b r2,@(r0,r4)

LAB_ce33612:
    mov.l @(PTR_ce336dc,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33618:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce336d6,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33638
    cmp/eq 0x01,r0
    bt LAB_ce33640
    cmp/eq 0x02,r0
    bt LAB_ce33648
    bra LAB_ce3364e
    nop

LAB_ce33638:
    mov.w @(DAT_ce336d4,pc),r0
    mov 0x05,r3
    bra LAB_ce3364e
    mov.b r3,@(r0,r4)

LAB_ce33640:
    mov.w @(DAT_ce336d4,pc),r0
    mov 0x06,r1
    bra LAB_ce3364e
    mov.b r1,@(r0,r4)

LAB_ce33648:
    mov.w @(DAT_ce336d4,pc),r0
    mov 0x07,r2
    mov.b r2,@(r0,r4)

LAB_ce3364e:
    mov.l @(PTR_ce336dc,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33654:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce336d6,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33674
    cmp/eq 0x01,r0
    bt LAB_ce3367c
    cmp/eq 0x02,r0
    bt LAB_ce33684
    bra LAB_ce3368e
    nop

LAB_ce33674:
    mov.w @(DAT_ce336d4,pc),r0
    mov 0x02,r3
    bra LAB_ce33688
    mov.b r3,@(r0,r4)

LAB_ce3367c:
    mov.w @(DAT_ce336d4,pc),r0
    mov 0x03,r1
    bra LAB_ce33688
    mov.b r1,@(r0,r4)

LAB_ce33684:
    mov.w @(DAT_ce336d4,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33688:
    mov.w @(DAT_ce336d8,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)

LAB_ce3368e:
    mov.l @(PTR_ce336dc,pc),r3
    jmp @r3
    mov 0x15,r5

LAB_ce33694:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce336d6,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce336b4
    cmp/eq 0x01,r0
    bt LAB_ce336bc
    cmp/eq 0x02,r0
    bt LAB_ce336c4
    bra LAB_ce336ce
    nop

LAB_ce336b4:
    mov.w @(DAT_ce336d4,pc),r0
    mov 0x02,r3
    bra LAB_ce336c8
    mov.b r3,@(r0,r4)

LAB_ce336bc:
    mov.w @(DAT_ce336d4,pc),r0
    mov 0x03,r1
    bra LAB_ce336c8
    mov.b r1,@(r0,r4)

LAB_ce336c4:
    mov.w @(DAT_ce336d4,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce336c8:
    mov.w @(DAT_ce336d8,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)

LAB_ce336ce:
    mov.l @(PTR_ce336dc,pc),r3
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce336d4:
    #data 0x01e9
DAT_ce336d6:
    #data 0x04c9
DAT_ce336d8:
    #data 0x01a3
    #align4

PTR_ce336dc:
    #data loc_8c0530d8
DAT_ce336e0:
    #data 0x0060
    #data 0x00a0
    #data 0x00e0
    #data 0x0120
DAT_ce336e8:
    #data 0x00a0
    #data 0x0100
    #data 0x0070
    #data 0x00c0
    #data 0x0060
    #data 0x0100
    #data 0x0090
    #data 0x00e0
DAT_ce336f8:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x0000
    #data 0x1000
    #data 0x0360
DAT_ce33708:
    #data 0x0003
    #data 0x2000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce33718:
    #data 0x0002
    #data 0x0000
    #data 0x0002
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0300
DAT_ce33726:
    #data 0x0003
    #data 0x0000
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33736:
    #data 0x0004
    #data 0x0100
    #data 0x0004
    #data 0x0000
    #data 0x0020
    #data 0x0200
    #data 0x1000
    #data 0x0040
    #data 0x0100
DAT_ce33748:
    #data 0x0002
    #data 0x8100
    #data 0x0005
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0300
DAT_ce33756:
    #data 0x0004
    #data 0x1100
    #data 0x0006
    #data 0x0000
    #data 0x0200
    #data 0x0200
    #data 0x0800
    #data 0x0040
    #data 0x0100
DAT_ce33768:
    #data 0x0003
    #data 0x8100
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x0000
    #data 0x1000
    #data 0x0300
DAT_ce33778:
    #data 0x0201
    #data 0x0200
DAT_ce3377c:
    #data 0x02ff
    #data 0x0201
DAT_ce33780:
    #data 0xffff
    #data 0xffff
DAT_ce33784:
    #data 0x0201
    #data 0x0201
DAT_ce33788:
    #data 0x02ff
    #data 0x02ff
DAT_ce3378c:
    #data 0xffff
    #data 0xffff
DAT_ce33790:
    #data 0x0201
    #data 0x0201
DAT_ce33794:
    #data 0x02ff
    #data 0x02ff
DAT_ce33798:
    #data 0xffff
    #data 0xffff
DAT_ce3379c:
    #data 0x0201
    #data 0x0201
DAT_ce337a0:
    #data 0x02ff
    #data 0x02ff
DAT_ce337a4:
    #data 0xffff
    #data 0xffff
DAT_ce337a8:
    #data 0x0201
    #data 0x0200
DAT_ce337ac:
    #data 0x02ff
    #data 0x0201
DAT_ce337b0:
    #data 0xffff
    #data 0x02ff
DAT_ce337b4:
    #data 0x0201
    #data 0x0201
DAT_ce337b8:
    #data 0x02ff
    #data 0x02ff
DAT_ce337bc:
    #data 0xffff
    #data 0xffff
    #align4

PTR_ce337c0:
    #data LAB_ce3068e
PTR_ce337c4:
    #data LAB_ce3003c
PTR_ce337c8:
    #data LAB_ce30692
PTR_ce337cc:
    #data LAB_ce30e94
PTR_ce337d0:
    #data LAB_ce3133c
PTR_ce337d4:
    #data LAB_ce31504
PTR_ce337d8:
    #data LAB_ce318a2
PTR_ce337dc:
    #data LAB_ce319c6
PTR_ce337e0:
    #data LAB_ce31a94
PTR_ce337e4:
    #data LAB_ce332ae
PTR_ce337e8:
    #data LAB_ce332b2
PTR_ce337ec:
    #data LAB_ce3333c
PTR_ce337f0:
    #data LAB_ce33568
PTR_ce337f4:
    #data LAB_ce30564
PTR_ce337f8:
    #data LAB_ce3315a
PTR_ce337fc:
    #data LAB_ce31274
PTR_ce33800:
    #data LAB_ce335b0
PTR_ce33804:
    #data LAB_ce33618
PTR_ce33808:
    #data LAB_ce33654
PTR_ce3380c:
    #data LAB_ce33694
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce33830:
    #data LAB_ce306a6
PTR_ce33834:
    #data LAB_ce30ad0
PTR_ce33838:
    #data LAB_ce30af8
PTR_ce3383c:
    #data LAB_ce306a6
PTR_ce33840:
    #data LAB_ce30ecc
PTR_ce33844:
    #data LAB_ce31042
PTR_ce33848:
    #data LAB_ce3102c
PTR_ce3384c:
    #data LAB_ce30ecc
PTR_ce33850:
    #data LAB_ce310ba
PTR_ce33854:
    #data LAB_ce3111c
PTR_ce33858:
    #data LAB_ce3116e
PTR_ce3385c:
    #data LAB_ce311ac
PTR_ce33860:
    #data LAB_ce311f2
PTR_ce33864:
    #data LAB_ce31232
PTR_ce33868:
    #data LAB_ce3134e
PTR_ce3386c:
    #data LAB_ce3140e
PTR_ce33870:
    #data LAB_ce3146a
PTR_ce33874:
    #data FUN_ce314e2
PTR_ce33878:
    #data LAB_ce31530
PTR_ce3387c:
    #data LAB_ce315b2
PTR_ce33880:
    #data LAB_ce3160e
PTR_ce33884:
    #data LAB_ce316a8
PTR_ce33888:
    #data LAB_ce31702
PTR_ce3388c:
    #data LAB_ce31770
PTR_ce33890:
    #data LAB_ce317cc
PTR_ce33894:
    #data LAB_ce31824
PTR_ce33898:
    #data LAB_ce318b4
PTR_ce3389c:
    #data LAB_ce31908
PTR_ce338a0:
    #data LAB_ce3199c
PTR_ce338a4:
    #data LAB_ce319f2
PTR_ce338a8:
    #data LAB_ce31a46
PTR_ce338ac:
    #data LAB_ce31a60
PTR_ce338b0:
    #data LAB_ce31a46
PTR_ce338b4:
    #data LAB_ce31a7a
PTR_ce338b8:
    #data LAB_ce31ad0
PTR_ce338bc:
    #data LAB_ce31c50
PTR_ce338c0:
    #data LAB_ce31d74
PTR_ce338c4:
    #data LAB_ce31e9e
PTR_ce338c8:
    #data LAB_ce3206c
PTR_ce338cc:
    #data LAB_ce3237e
PTR_ce338d0:
    #data LAB_ce3283a
PTR_ce338d4:
    #data LAB_ce32d26
PTR_ce338d8:
    #data LAB_ce32fd8
PTR_ce338dc:
    #data LAB_ce330f4
PTR_ce338e0:
    #data LAB_ce31ee4
PTR_ce338e4:
    #data LAB_ce31f7e
PTR_ce338e8:
    #data LAB_ce31fb4
PTR_ce338ec:
    #data LAB_ce3207e
PTR_ce338f0:
    #data LAB_ce32144
PTR_ce338f4:
    #data LAB_ce321ea
PTR_ce338f8:
    #data LAB_ce322f8
PTR_ce338fc:
    #data LAB_ce3234a
PTR_ce33900:
    #data LAB_ce323b4
PTR_ce33904:
    #data LAB_ce32450
PTR_ce33908:
    #data LAB_ce32504
PTR_ce3390c:
    #data LAB_ce326a8
PTR_ce33910:
    #data LAB_ce32878
PTR_ce33914:
    #data LAB_ce328ec
PTR_ce33918:
    #data LAB_ce329a0
PTR_ce3391c:
    #data LAB_ce32a6a
PTR_ce33920:
    #data LAB_ce32b08
PTR_ce33924:
    #data LAB_ce32c58
PTR_ce33928:
    #data LAB_ce32c60
PTR_ce3392c:
    #data LAB_ce32d04
DAT_ce33930:
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x04
    #data 0x08
    #data 0x05
    #data 0x06
    #data 0x09
    #data 0x0a
PTR_ce33940:
    #data LAB_ce32d38
PTR_ce33944:
    #data LAB_ce32dfa
PTR_ce33948:
    #data LAB_ce32e9a
PTR_ce3394c:
    #data LAB_ce32fa4
PTR_ce33950:
    #data LAB_ce32fea
PTR_ce33954:
    #data LAB_ce33060
PTR_ce33958:
    #data LAB_ce3316c
PTR_ce3395c:
    #data LAB_ce33218
PTR_ce33960:
    #data LAB_ce33286
PTR_ce33964:
    #data LAB_ce33388
PTR_ce33968:
    #data LAB_ce333b2
PTR_ce3396c:
    #data LAB_ce333da
PTR_ce33970:
    #data LAB_ce334b8
