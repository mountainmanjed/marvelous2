;╔══════════════════════════════════════════╗
;║ S_PL26 : M.Bison (Dictator) Program      ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
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
#symbol loc_8c0542e0 0x8C0542E0
#symbol loc_8c054508 0x8C054508
#symbol loc_8c05496c 0x8C05496C
#symbol loc_8c054b34 0x8C054B34
#symbol loc_8c054d04 0x8C054D04
#symbol loc_8c054d1c 0x8C054D1C
#symbol loc_8c054da0 0x8C054DA0
#symbol loc_8c054e58 0x8C054E58
#symbol loc_8c055066 0x8C055066
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c055d54 0x8C055D54
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c097b30 0x8C097B30
#symbol loc_8c097b64 0x8C097B64
#symbol loc_8c098aa4 0x8C098AA4
#symbol loc_8c099258 0x8C099258
#symbol loc_8c0e1960 0x8C0E1960
#symbol loc_8c0e1994 0x8C0E1994
#symbol loc_8c0e19ec 0x8C0E19EC
#symbol loc_8c103660 0x8C103660
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c26a524 0x8C26A524
#symbol loc_8c289626 0x8C289626
#symbol loc_8c289636 0x8C289636
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300da,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300dc,pc),r7
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
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    mov.l @(PTR_ce300e8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    mov.l @(PTR_ce300ec,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce305fc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce305b6
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce304a2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce300f8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce3052e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce301ce
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce3027e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce3033c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce303dc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce30164
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce3064c
    mov r14,r4
    tst r0,r0
    bf LAB_ce300d4
    bsr FUN_ce3068c
    mov r14,r4
    tst r0,r0
    bf LAB_ce300d4
    mov.l @(PTR_ce300f0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300f4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300d4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300da:
    #data 0x0428
    #align4

PTR_ce300dc:
    #data PTR_ce34d60
PTR_ce300e0:
    #data loc_8c054508
PTR_ce300e4:
    #data loc_8c054b34
PTR_ce300e8:
    #data loc_8c05496c
PTR_ce300ec:
    #data loc_8c054d04
PTR_ce300f0:
    #data loc_8c053e00
PTR_ce300f4:
    #data loc_8c0542e0

;=============================================

FUN_ce300f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30206,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30208,pc),r6
    add r14,r3
    mov.l @(PTR_ce30218,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce3021c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30120
    mov.l @r15,r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce3012a

LAB_ce30120:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3012a:
    mov.w @(DAT_ce30208,pc),r5
    mov.l @(PTR_ce30220,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3020a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30142
    mov.l @(PTR_ce30224,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30142:
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3020c,pc),r0
    mov.l @(PTR_ce30228,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30164:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30206,pc),r3
    mov r4,r14
    mov.w @(DAT_ce3020e,pc),r6
    add r14,r3
    mov.l @(PTR_ce3022c,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce3021c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3018c
    mov.l @r15,r2
    mov.b @(0x1,r2),r0
    tst r0,r0
    bt LAB_ce30196

LAB_ce3018c:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30196:
    mov.w @(DAT_ce3020e,pc),r5
    mov.l @(PTR_ce30220,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3020a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce301ae
    mov.l @(PTR_ce30224,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce301ae:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3020c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30228,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301ce:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30230,pc),r5
    mov.w @(DAT_ce30210,pc),r6
    mov.l @(PTR_ce3021c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301fe
    mov.w @(DAT_ce30212,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3023a
    mov.w @(DAT_ce30214,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3023a
    mov.w @(DAT_ce30216,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30234

LAB_ce301fe:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30206:
    #data 0x02a4
DAT_ce30208:
    #data 0x036c
DAT_ce3020a:
    #data 0x0201
DAT_ce3020c:
    #data 0x01e9
DAT_ce3020e:
    #data 0x0374
DAT_ce30210:
    #data 0x037c
DAT_ce30212:
    #data 0x01f9
DAT_ce30214:
    #data 0x01fc
DAT_ce30216:
    #data 0x01d4
    #align4

PTR_ce30218:
    #data DAT_ce34cb4
PTR_ce3021c:
    #data loc_8c054e58
PTR_ce30220:
    #data loc_8c055c3a
PTR_ce30224:
    #data FUN_ce3429a
PTR_ce30228:
    #data loc_8c0530d8
PTR_ce3022c:
    #data DAT_ce34cc8
PTR_ce30230:
    #data DAT_ce34cdc

;=============================================

LAB_ce30234:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3023a:
    mov.w @(DAT_ce30312,pc),r5
    mov.l @(PTR_ce30328,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30314,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30252
    mov.l @(PTR_ce3032c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30252:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30316,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30330,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30318,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30276
    mov 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce30276:
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3027e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30334,pc),r5
    mov.w @(DAT_ce3031a,pc),r6
    mov.l @(PTR_ce30338,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302ae
    mov.w @(DAT_ce30318,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce302bc
    mov.w @(DAT_ce3031c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce302bc
    mov.w @(DAT_ce3031e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce302b6

LAB_ce302ae:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302b6:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce302bc:
    mov.w @(DAT_ce3031a,pc),r5
    mov.l @(PTR_ce30328,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30314,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce302d4
    mov.l @(PTR_ce3032c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce302d4:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30316,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30330,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30320,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce302fa
    mov.w @(DAT_ce30322,pc),r0
    mov.b @(r0,r14),r0
    bra LAB_ce30308
    shll r0

LAB_ce302fa:
    mov.w @(DAT_ce30324,pc),r3
    mov.w @(DAT_ce30322,pc),r0
    add r14,r3
    mov.b @(r0,r14),r0
    mov.b @r3,r3
    shll r0
    add r3,r0

LAB_ce30308:
    mov.b r0,@(0x7,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30312:
    #data 0x037c
DAT_ce30314:
    #data 0x0201
DAT_ce30316:
    #data 0x01e9
DAT_ce30318:
    #data 0x01f9
DAT_ce3031a:
    #data 0x0384
DAT_ce3031c:
    #data 0x01fc
DAT_ce3031e:
    #data 0x01d4
DAT_ce30320:
    #data 0x0525
DAT_ce30322:
    #data 0x01fe
DAT_ce30324:
    #data 0x01a3
    #align4

PTR_ce30328:
    #data loc_8c055c3a
PTR_ce3032c:
    #data FUN_ce3429a
PTR_ce30330:
    #data loc_8c0530d8
PTR_ce30334:
    #data DAT_ce34cf0
PTR_ce30338:
    #data loc_8c054e58

;=============================================

FUN_ce3033c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30436,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30438,pc),r6
    add r14,r3
    mov.l @(PTR_ce30448,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce3044c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3038c
    mov.w @(DAT_ce3043a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3037c
    mov.w @(DAT_ce3043c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3037c
    mov.w @(DAT_ce3043e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3038c
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce3037c:
    mov.w @(DAT_ce30440,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30396
    mov.w @(DAT_ce30442,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30396

LAB_ce3038c:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30396:
    mov.w @(DAT_ce30438,pc),r5
    mov.l @(PTR_ce30450,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30442,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce303ae
    mov.l @(PTR_ce30454,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce303ae:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30444,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30458,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3043a,pc),r0
    mov.l @r15,r2
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    movt r0
    mov.b r0,@(0x3,r2)
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303dc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30436,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30446,pc),r6
    add r14,r3
    mov.l @(PTR_ce3045c,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce3044c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3042c
    mov.w @(DAT_ce3043a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3041c
    mov.w @(DAT_ce3043c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3041c
    mov.w @(DAT_ce3043e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3042c
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce3041c:
    mov.w @(DAT_ce30440,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30460
    mov.w @(DAT_ce30442,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3046e

LAB_ce3042c:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30436:
    #data 0x02a4
DAT_ce30438:
    #data 0x038c
DAT_ce3043a:
    #data 0x01f9
DAT_ce3043c:
    #data 0x01fc
DAT_ce3043e:
    #data 0x01d4
DAT_ce30440:
    #data 0x0525
DAT_ce30442:
    #data 0x0201
DAT_ce30444:
    #data 0x01e9
DAT_ce30446:
    #data 0x0394
    #align4

PTR_ce30448:
    #data DAT_ce34d00
PTR_ce3044c:
    #data loc_8c055066
PTR_ce30450:
    #data loc_8c055c3a
PTR_ce30454:
    #data FUN_ce3429a
PTR_ce30458:
    #data loc_8c0530d8
PTR_ce3045c:
    #data DAT_ce34d0e

;=============================================

LAB_ce30460:
    mov.w @(DAT_ce30556,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3046e
    mov.l @(PTR_ce30568,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3046e:
    mov.w @(DAT_ce30558,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3055a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3056c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3055c,pc),r0
    mov.l @r15,r2
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    movt r0
    mov.b r0,@(0x3,r2)
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304a2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30570,pc),r5
    mov.w @(DAT_ce3055e,pc),r6
    mov.l @(PTR_ce30574,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304dc
    mov.w @(DAT_ce30560,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce304dc
    mov.w @(DAT_ce3055c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce304ea
    mov.w @(DAT_ce30562,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce304ea
    mov.w @(DAT_ce30564,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce304e4

LAB_ce304dc:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304e4:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce304ea:
    mov.w @(DAT_ce3055e,pc),r5
    mov.l @(PTR_ce30578,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30556,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30502
    mov.l @(PTR_ce30568,pc),,r3
    jsr @r3
    mov r14,r4

LAB_ce30502:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3055a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3056c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3055c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30526
    mov 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce30526:
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3052e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3057c,pc),r5
    mov.w @(DAT_ce30566,pc),r6
    mov.l @(PTR_ce30574,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3054e
    mov.w @(DAT_ce30560,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30580

LAB_ce3054e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30556:
    #data 0x0201
DAT_ce30558:
    #data 0x01a3
DAT_ce3055a:
    #data 0x01e9
DAT_ce3055c:
    #data 0x01f9
DAT_ce3055e:
    #data 0x039c
DAT_ce30560:
    #data 0x040c
DAT_ce30562:
    #data 0x01fc
DAT_ce30564:
    #data 0x01d4
DAT_ce30566:
    #data 0x03a4
    #align4

PTR_ce30568:
    #data FUN_ce3429a
PTR_ce3056c:
    #data loc_8c0530d8
PTR_ce30570:
    #data DAT_ce34d1c
PTR_ce30574:
    #data loc_8c054e58
PTR_ce30578:
    #data loc_8c055c3a
PTR_ce3057c:
    #data DAT_ce34d2c

;=============================================

LAB_ce30580:
    mov.w @(DAT_ce306a6,pc),r5
    mov.l @(PTR_ce306b4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce306a8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30598
    mov.l @(PTR_ce306b8,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30598:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce306aa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce306bc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce305b6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306c0,pc),r5
    mov.w @(DAT_ce306ac,pc),r6
    mov.l @(PTR_ce306c4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce305d4
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce305d4:
    mov.w @(DAT_ce306ac,pc),r5
    mov.l @(PTR_ce306b4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x09,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce306aa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce306bc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce305fc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306c8,pc),r5
    mov.w @(DAT_ce306ae,pc),r6
    mov.l @(PTR_ce306c4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3061c
    mov.w @(DAT_ce306b0,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30624

LAB_ce3061c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30624:
    mov.w @(DAT_ce306ae,pc),r5
    mov.l @(PTR_ce306b4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0F,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce306aa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce306bc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3064c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce306cc,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30664
    mov.w @(DAT_ce306b0,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3066c

LAB_ce30664:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3066c:
    mov.w @(DAT_ce306aa,pc),r0
    mov 0x0E,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce306bc,pc),r3
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

FUN_ce3068c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce306d0,pc),r3
    jsr @r3
    mov 0x0B,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce306d4
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306a6:
    #data 0x03a4
DAT_ce306a8:
    #data 0x0201
DAT_ce306aa:
    #data 0x01e9
DAT_ce306ac:
    #data 0x03ac
DAT_ce306ae:
    #data 0x03b4
DAT_ce306b0:
    #data 0x040c
    #align4

PTR_ce306b4:
    #data loc_8c055c3a
PTR_ce306b8:
    #data FUN_ce3429a
PTR_ce306bc:
    #data loc_8c0530d8
PTR_ce306c0:
    #data DAT_ce34d3c
PTR_ce306c4:
    #data loc_8c054e58
PTR_ce306c8:
    #data DAT_ce34d4c
PTR_ce306cc:
    #data loc_8c054d1c
PTR_ce306d0:
    #data loc_8c054da0

;=============================================

LAB_ce306d4:
    mov.w @(DAT_ce307d4,pc),r0
    mov 0x0B,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce307e4,pc),r3
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

LAB_ce306f4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce3079e
    mov r4,r14
    tst r0,r0
    bf LAB_ce30710
    bsr FUN_ce30720
    mov r14,r4
    tst r0,r0
    bf LAB_ce30710
    bsr FUN_ce30768
    mov r14,r4
    tst r0,r0
    bt LAB_ce30718

LAB_ce30710:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce30718:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30720:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce307e8,pc),r5
    mov.w @(DAT_ce307d6,pc),r6
    mov.l @(PTR_ce307ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30752
    mov.w @(DAT_ce307d8,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce30752
    mov.w @(DAT_ce307da,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce30752
    mov.w @(DAT_ce307dc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3075a

LAB_ce30752:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3075a:
    mov.w @(DAT_ce307de,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30768:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce307f0,pc),r5
    mov.w @(DAT_ce307e0,pc),r6
    mov.l @(PTR_ce307ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30788
    mov.w @(DAT_ce307d8,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30790

LAB_ce30788:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30790:
    mov.w @(DAT_ce307de,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3079e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce307f4,pc),r5
    mov.w @(DAT_ce307e2,pc),r6
    mov.l @(PTR_ce307ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce307be
    mov.w @(DAT_ce307d8,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce307c6

LAB_ce307be:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce307c6:
    mov.w @(DAT_ce307de,pc),r0
    mov 0x0F,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307d4:
    #data 0x01e9
DAT_ce307d6:
    #data 0x039c
DAT_ce307d8:
    #data 0x040c
DAT_ce307da:
    #data 0x01f9
DAT_ce307dc:
    #data 0x0201
DAT_ce307de:
    #data 0x0258
DAT_ce307e0:
    #data 0x03a4
DAT_ce307e2:
    #data 0x03b4
    #align4

PTR_ce307e4:
    #data loc_8c0530d8
PTR_ce307e8:
    #data DAT_ce34d1c
PTR_ce307ec:
    #data loc_8c054e58
PTR_ce307f0:
    #data DAT_ce34d2c
PTR_ce307f4:
    #data DAT_ce34d4c

;=============================================

LAB_ce307f8:
    mov.w @(DAT_ce308e0,pc),r0
    mov.w @(DAT_ce308de,pc),r6
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x39,r0
    bf/s LAB_ce3084a
    add r4,r6
    mov.w @(DAT_ce308e2,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce3084a
    mov.w @(DAT_ce308e4,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3084a
    mov.b @(0x5,r4),r0
    tst r0,r0
    bf LAB_ce3084a
    mov.w @(DAT_ce308e6,pc),r0
    mov.l @(r0,r4),r2
    mov.b @(0x3,r2),r0
    tst r0,r0
    bf LAB_ce3084a
    mov.w @(DAT_ce308e6,pc),r0
    mov.l @(r0,r4),r5
    add 0x20,r0
    mov.b @(r0,r5),r0
    extu.b r0,r0
    cmp/eq 0x12,r0
    bt LAB_ce3083c
    mov.b @(0x5,r5),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3084a

LAB_ce3083c:
    mov.w @(DAT_ce308e2,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce308f4,pc),r3
    mov 0x09,r6
    mov.b r2,@(r0,r4)
    jmp @r3
    mov 0x15,r5

LAB_ce3084a:
    mov.w @(DAT_ce308e8,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce3087e
    mov.b @(0x5,r4),r0
    tst r0,r0
    bf LAB_ce3087e
    mov.w @(0xa,r6),r0
    add 0xFF,r0
    mov.w r0,@(0xa,r6)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce3087e
    mov.w @(DAT_ce308ea,pc),r0
    mov.b @(r0,r4),r5
    extu.b r5,r0
    cmp/eq 0x15,r0
    bt/s LAB_ce3087e
    mov r0,r5
    mov r5,r0
    nop
    cmp/eq 0x1D,r0
    bt LAB_ce3087e
    mov.l @(PTR_ce308f8,pc),r2
    jmp @r2
    nop

LAB_ce3087e:
    rts
    nop

LAB_ce30882:
    mov.w @(DAT_ce308ec,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce308fc,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30896:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30900,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce308ee,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce308c4
    mov.w @(DAT_ce308f0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce308bc
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30b78
    mov.l @r15+,r14

LAB_ce308bc:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30a8e
    mov.l @r15+,r14

LAB_ce308c4:
    mov.w @(DAT_ce308f0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce308d6
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce309a6
    mov.l @r15+,r14

LAB_ce308d6:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30904
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308de:
    #data 0x02a4
DAT_ce308e0:
    #data 0x01a1
DAT_ce308e2:
    #data 0x01a0
DAT_ce308e4:
    #data 0x019e
DAT_ce308e6:
    #data 0x01b0
DAT_ce308e8:
    #data 0x0201
DAT_ce308ea:
    #data 0x01d0
DAT_ce308ec:
    #data 0x01ff
DAT_ce308ee:
    #data 0x01fe
DAT_ce308f0:
    #data 0x01f9
    #align4

PTR_ce308f4:
    #data loc_8c034e8c
PTR_ce308f8:
    #data LAB_ce3427a
PTR_ce308fc:
    #data PTR_ce34dd0
PTR_ce30900:
    #data loc_8c052b4c

;=============================================

LAB_ce30904:
    mov.w @(DAT_ce30a0e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30926
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30942
    cmp/eq 0x02,r0
    bt LAB_ce30960
    bra LAB_ce30974
    nop

LAB_ce30926:
    mov.w @(DAT_ce30a10,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce30a1c,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a12,pc),r0
    mov.l @(PTR_ce30a20,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a14,pc),r0
    bra LAB_ce30974
    mov.b r13,@(r0,r14)

LAB_ce30942:
    mov.w @(DAT_ce30a10,pc),r0
    mov 0x01,r12
    mov.l @(PTR_ce30a1c,pc),r3
    mov 0x15,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30a12,pc),r0
    mov.l @(PTR_ce30a24,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a14,pc),r0
    bra LAB_ce30974
    mov.b r12,@(r0,r14)

LAB_ce30960:
    mov.w @(DAT_ce30a10,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce30a28,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30a12,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30a14,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30974:
    mov.w @(DAT_ce30a16,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce30a2c,pc),r3
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
    mov.w @(DAT_ce30a10,pc),r0
    mov.l @(PTR_ce30a30,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce309a6:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30a0e,pc),r0
    mov r4,r14
    mov.w @(DAT_ce30a18,pc),r3
    mov.l @(PTR_ce30a1c,pc),r12
    add r14,r3
    mov.l r3,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce309d2
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce309ee
    cmp/eq 0x02,r0
    bt LAB_ce30a34
    bra LAB_ce30a5a
    nop

LAB_ce309d2:
    mov.w @(DAT_ce30a10,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a12,pc),r0
    mov.l @(PTR_ce30a20,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30a14,pc),r0
    bra LAB_ce30a5a
    mov.b r13,@(r0,r14)

LAB_ce309ee:
    mov.w @(DAT_ce30a10,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a12,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce30a24,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30a14,pc),r0
    bra LAB_ce30a5a
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a0e:
    #data 0x01e8
DAT_ce30a10:
    #data 0x0158
DAT_ce30a12:
    #data 0x03f4
DAT_ce30a14:
    #data 0x01a7
DAT_ce30a16:
    #data 0x01ac
DAT_ce30a18:
    #data 0x02a4
    #align4

PTR_ce30a1c:
    #data loc_8c04223a
PTR_ce30a20:
    #data DAT_ce34c6c
PTR_ce30a24:
    #data DAT_ce34c70
PTR_ce30a28:
    #data DAT_ce34c74
PTR_ce30a2c:
    #data loc_8c2896b0
PTR_ce30a30:
    #data loc_8c034e8c

;=============================================

LAB_ce30a34:
    mov.w @(DAT_ce30b50,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b52,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30b5c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30b54,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @r15,r3
    mov r13,r0
    nop
    mov.b r0,@(0x2,r3)

LAB_ce30a5a:
    mov.w @(DAT_ce30b56,pc),r0
    mov r14,r4
    mov.l @(PTR_ce30b60,pc),r3
    mov 0x09,r5
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
    mov.w @(DAT_ce30b50,pc),r0
    mov.b @(r0,r14),r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce30b64,pc),r2
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30a8e:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30b5a,pc),r0
    mov r4,r14
    mov.w @(DAT_ce30b58,pc),r3
    mov.l @(PTR_ce30b68,pc),r12
    add r14,r3
    mov.l r3,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30aba
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30ad6
    cmp/eq 0x02,r0
    bt LAB_ce30af6
    bra LAB_ce30b1c
    nop

LAB_ce30aba:
    mov.w @(DAT_ce30b50,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b52,pc),r0
    mov.l @(PTR_ce30b6c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30b54,pc),r0
    bra LAB_ce30b1c
    mov.b r13,@(r0,r14)

LAB_ce30ad6:
    mov.w @(DAT_ce30b50,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b52,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce30b70,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30b54,pc),r0
    bra LAB_ce30b1c
    mov.b r2,@(r0,r14)

LAB_ce30af6:
    mov.w @(DAT_ce30b50,pc),r0
    mov 0x02,r1
    mov 0x05,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b52,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30b74,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30b54,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @r15,r3
    mov r13,r0
    nop
    mov.b r0,@(0x2,r3)

LAB_ce30b1c:
    mov.w @(DAT_ce30b56,pc),r0
    mov r14,r4
    mov.l @(PTR_ce30b60,pc),r3
    mov 0x08,r5
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
    mov.w @(DAT_ce30b50,pc),r0
    mov.b @(r0,r14),r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce30b64,pc),r2
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b50:
    #data 0x0158
DAT_ce30b52:
    #data 0x03f4
DAT_ce30b54:
    #data 0x01a7
DAT_ce30b56:
    #data 0x01ac
DAT_ce30b58:
    #data 0x02a4
DAT_ce30b5a:
    #data 0x01e8
    #align4

PTR_ce30b5c:
    #data DAT_ce34c74
PTR_ce30b60:
    #data loc_8c2896b0
PTR_ce30b64:
    #data loc_8c034e8c
PTR_ce30b68:
    #data loc_8c04223a
PTR_ce30b6c:
    #data DAT_ce34c78
PTR_ce30b70:
    #data DAT_ce34c7c
PTR_ce30b74:
    #data DAT_ce34c80

;=============================================

LAB_ce30b78:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30c72,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x01,r12
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30c84,pc),r11
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30ba0
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30bbc
    cmp/eq 0x02,r0
    bt LAB_ce30bd8
    bra LAB_ce30bfc
    nop

LAB_ce30ba0:
    mov.w @(DAT_ce30c74,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30c76,pc),r0
    mov.l @(PTR_ce30c88,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30c78,pc),r0
    bra LAB_ce30bfc
    mov.b r13,@(r0,r14)

LAB_ce30bbc:
    mov.w @(DAT_ce30c74,pc),r0
    mov 0x0A,r3
    mov 0x15,r5
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce30c76,pc),r0
    mov.l @(PTR_ce30c8c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30c78,pc),r0
    bra LAB_ce30bfc
    mov.b r12,@(r0,r14)

LAB_ce30bd8:
    mov.w @(DAT_ce30c74,pc),r0
    mov 0x02,r2
    mov 0x0B,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x03,r5
    mov.w @(DAT_ce30c76,pc),r0
    mov.l @(PTR_ce30c90,pc),r2
    mov.l @(PTR_ce30c94,pc),r3
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30c78,pc),r0
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x29,r5
    jsr @r11
    mov r14,r4

LAB_ce30bfc:
    mov.w @(DAT_ce30c7a,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30c98,pc),r3
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
    mov.w @(DAT_ce30c74,pc),r0
    mov.l @(PTR_ce30c9c,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30c30:
    mov.w @(DAT_ce30c7c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30c58
    mov.w @(DAT_ce30c7e,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce30c48
    mov.w @(DAT_ce30c80,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30c58

LAB_ce30c48:
    mov.w @(DAT_ce30c7e,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30c5c
    mov.w @(DAT_ce30c80,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30c5c

LAB_ce30c58:
    bra LAB_ce30c60
    nop

LAB_ce30c5c:
    rts
    nop

LAB_ce30c60:
    mov.w @(DAT_ce30c7e,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c6e
    bra LAB_ce30dc0
    nop

LAB_ce30c6e:
    bra LAB_ce30ca0
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c72:
    #data 0x01e8
DAT_ce30c74:
    #data 0x0158
DAT_ce30c76:
    #data 0x03f4
DAT_ce30c78:
    #data 0x01a7
DAT_ce30c7a:
    #data 0x01ac
DAT_ce30c7c:
    #data 0x0201
DAT_ce30c7e:
    #data 0x01fe
DAT_ce30c80:
    #data 0x01d6
    #align4

PTR_ce30c84:
    #data loc_8c04223a
PTR_ce30c88:
    #data DAT_ce34c78
PTR_ce30c8c:
    #data DAT_ce34c7c
PTR_ce30c90:
    #data DAT_ce34c80
PTR_ce30c94:
    #data loc_8c042008
PTR_ce30c98:
    #data loc_8c2896b0
PTR_ce30c9c:
    #data loc_8c034e8c

;=============================================

LAB_ce30ca0:
    mov.w @(DAT_ce30d8e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30d9c,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30cc4
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30cf0
    cmp/eq 0x02,r0
    bt LAB_ce30d1c
    bra LAB_ce30d4a
    nop

LAB_ce30cc4:
    mov.w @(DAT_ce30d90,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30d92,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30ce4
    mov.w @(DAT_ce30d94,pc),r0
    mov.l @(PTR_ce30da0,pc),r3
    bra LAB_ce30cea
    mov.l r3,@(r0,r14)

LAB_ce30ce4:
    mov.w @(DAT_ce30d94,pc),r0
    mov.l @(PTR_ce30da4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30cea:
    mov.w @(DAT_ce30d96,pc),r0
    bra LAB_ce30d4a
    mov.b r13,@(r0,r14)

LAB_ce30cf0:
    mov.w @(DAT_ce30d90,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30d92,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30d12
    mov.w @(DAT_ce30d94,pc),r0
    mov.l @(PTR_ce30da8,pc),r3
    bra LAB_ce30d18
    mov.l r3,@(r0,r14)

LAB_ce30d12:
    mov.w @(DAT_ce30d94,pc),r0
    mov.l @(PTR_ce30dac,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30d18:
    bra LAB_ce30d46
    mov 0x01,r3

LAB_ce30d1c:
    mov.w @(DAT_ce30d90,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30d92,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30d3e
    mov.w @(DAT_ce30d94,pc),r0
    mov.l @(PTR_ce30db0,pc),r3
    bra LAB_ce30d44
    mov.l r3,@(r0,r14)

LAB_ce30d3e:
    mov.w @(DAT_ce30d94,pc),r0
    mov.l @(PTR_ce30db4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30d44:
    mov 0x02,r3

LAB_ce30d46:
    mov.w @(DAT_ce30d96,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30d4a:
    mov.w @(DAT_ce30d98,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30db8,pc),r3
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
    mov.w @(DAT_ce30d90,pc),r0
    mov.l @(PTR_ce30dbc,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30d9a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30d84
    mov.w @(DAT_ce30d9a,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30d84:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d8e:
    #data 0x01e8
DAT_ce30d90:
    #data 0x0158
DAT_ce30d92:
    #data 0x01fc
DAT_ce30d94:
    #data 0x03f4
DAT_ce30d96:
    #data 0x01a7
DAT_ce30d98:
    #data 0x01ac
DAT_ce30d9a:
    #data 0x01d6
    #align4

PTR_ce30d9c:
    #data loc_8c04223a
PTR_ce30da0:
    #data DAT_ce34c84
PTR_ce30da4:
    #data DAT_ce34c9c
PTR_ce30da8:
    #data DAT_ce34c88
PTR_ce30dac:
    #data DAT_ce34ca0
PTR_ce30db0:
    #data DAT_ce34c8c
PTR_ce30db4:
    #data DAT_ce34ca4
PTR_ce30db8:
    #data loc_8c2896b0
PTR_ce30dbc:
    #data loc_8c034e8c

;=============================================

LAB_ce30dc0:
    mov.w @(DAT_ce30ec2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30ed4,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30de4
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30e10
    cmp/eq 0x02,r0
    bt LAB_ce30e3c
    bra LAB_ce30e6a
    nop

LAB_ce30de4:
    mov.w @(DAT_ce30ec4,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30ec6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30e04
    mov.w @(DAT_ce30ec8,pc),r0
    mov.l @(PTR_ce30ed8,pc),r3
    bra LAB_ce30e0a
    mov.l r3,@(r0,r14)

LAB_ce30e04:
    mov.w @(DAT_ce30ec8,pc),r0
    mov.l @(PTR_ce30edc,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30e0a:
    mov.w @(DAT_ce30eca,pc),r0
    bra LAB_ce30e6a
    mov.b r13,@(r0,r14)

LAB_ce30e10:
    mov.w @(DAT_ce30ec4,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30ec6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30e32
    mov.w @(DAT_ce30ec8,pc),r0
    mov.l @(PTR_ce30ee0,pc),r3
    bra LAB_ce30e38
    mov.l r3,@(r0,r14)

LAB_ce30e32:
    mov.w @(DAT_ce30ec8,pc),r0
    mov.l @(PTR_ce30ee4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30e38:
    bra LAB_ce30e66
    mov 0x01,r3

LAB_ce30e3c:
    mov.w @(DAT_ce30ec4,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30ec6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30e5e
    mov.w @(DAT_ce30ec8,pc),r0
    mov.l @(PTR_ce30ee8,pc),r3
    bra LAB_ce30e64
    mov.l r3,@(r0,r14)

LAB_ce30e5e:
    mov.w @(DAT_ce30ec8,pc),r0
    mov.l @(PTR_ce30eec,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30e64:
    mov 0x02,r3

LAB_ce30e66:
    mov.w @(DAT_ce30eca,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30e6a:
    mov.w @(DAT_ce30ecc,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30ef0,pc),r3
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
    mov.w @(DAT_ce30ec4,pc),r0
    mov.l @(PTR_ce30ef4,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30ece,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30ea4
    mov.w @(DAT_ce30ece,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30ea4:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30eae:
    mov.w @(DAT_ce30ed0,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30ef8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ec2:
    #data 0x01e8
DAT_ce30ec4:
    #data 0x0158
DAT_ce30ec6:
    #data 0x01fc
DAT_ce30ec8:
    #data 0x03f4
DAT_ce30eca:
    #data 0x01a7
DAT_ce30ecc:
    #data 0x01ac
DAT_ce30ece:
    #data 0x01d6
DAT_ce30ed0:
    #data 0x01ff
    #align4

PTR_ce30ed4:
    #data loc_8c04223a
PTR_ce30ed8:
    #data DAT_ce34c90
PTR_ce30edc:
    #data DAT_ce34ca8
PTR_ce30ee0:
    #data DAT_ce34c94
PTR_ce30ee4:
    #data DAT_ce34cac
PTR_ce30ee8:
    #data DAT_ce34c98
PTR_ce30eec:
    #data DAT_ce34cb0
PTR_ce30ef0:
    #data loc_8c2896b0
PTR_ce30ef4:
    #data loc_8c034e8c
PTR_ce30ef8:
    #data PTR_ce34de0

;=============================================

LAB_ce30efc:
    sts.l PR,@-r15
    mov.l @(PTR_ce30ff0,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30f0a:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30ff4,pc),r3
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
    mov.w @(DAT_ce30fe8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f72
    mov.w @(DAT_ce30fea,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f6a
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31174
    mov.l @r15+,r14

LAB_ce30f6a:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce310b6
    mov.l @r15+,r14

LAB_ce30f72:
    mov.w @(DAT_ce30fea,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f84
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31004
    mov.l @r15+,r14

LAB_ce30f84:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30f8c
    mov.l @r15+,r14

LAB_ce30f8c:
    mov.w @(DAT_ce30fec,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30fcc
    cmp/eq 0x01,r0
    bt LAB_ce30fa8
    cmp/eq 0x02,r0
    bt LAB_ce30fcc
    bra LAB_ce30fe2
    nop

LAB_ce30fa8:
    mov.l @(PTR_ce30ff8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30fd8
    mov.w @(DAT_ce30fee,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30fe2
    mov 0x00,r3
    mov r14,r4
    mov r3,r5
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce30ffc,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce30fcc:
    mov.l @(PTR_ce30ff8,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fe2

LAB_ce30fd8:
    lds.l @r15+,PR
    mov.l @(PTR_ce31000,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30fe2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fe8:
    #data 0x01fe
DAT_ce30fea:
    #data 0x01f9
DAT_ce30fec:
    #data 0x01e8
DAT_ce30fee:
    #data 0x0141
    #align4

PTR_ce30ff0:
    #data loc_8c0511e2
PTR_ce30ff4:
    #data loc_8c052c84
PTR_ce30ff8:
    #data loc_8c034dee
PTR_ce30ffc:
    #data loc_8c0e1960
PTR_ce31000:
    #data loc_8c051648

;=============================================

LAB_ce31004:
    mov.w @(DAT_ce310ea,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce310e8,pc),r13
    extu.b r0,r0
    mov.l @(PTR_ce310f0,pc),r12
    cmp/eq 0x00,r0
    bt/s LAB_ce3102a
    add r14,r13
    cmp/eq 0x01,r0
    bt LAB_ce31038
    cmp/eq 0x02,r0
    bt LAB_ce3105e
    bra LAB_ce310ac
    nop

LAB_ce3102a:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31068
    bra LAB_ce310ac
    nop

LAB_ce31038:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31068
    mov.w @(DAT_ce310ec,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce310ac
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce310f4,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3105e:
    jsr @r12
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31076

LAB_ce31068:
    lds.l @r15+,PR
    mov.l @(PTR_ce310f8,pc),r2
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31076:
    mov.b @(0x2,r13),r0
    tst r0,r0
    bf LAB_ce31090
    mov.w @(DAT_ce310ee,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31090
    mov.l @(PTR_ce310fc,pc),r3
    mov 0x01,r0
    mov 0x03,r5
    mov.b r0,@(0x2,r13)
    jsr @r3
    mov r14,r4

LAB_ce31090:
    mov.w @(DAT_ce310ec,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce310ac
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x03,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce310f4,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce310ac:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce310b6:
    mov.w @(DAT_ce310ea,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce310e8,pc),r13
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce310d8
    add r14,r13
    cmp/eq 0x01,r0
    bt LAB_ce310d8
    cmp/eq 0x02,r0
    bt LAB_ce31100
    bra LAB_ce3116c
    nop

LAB_ce310d8:
    mov.l @(PTR_ce310f0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce3110c
    bra LAB_ce3116c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310e8:
    #data 0x02a4
DAT_ce310ea:
    #data 0x01e8
DAT_ce310ec:
    #data 0x0141
DAT_ce310ee:
    #data 0x019e
    #align4

PTR_ce310f0:
    #data loc_8c034dee
PTR_ce310f4:
    #data loc_8c0e1960
PTR_ce310f8:
    #data loc_8c051648
PTR_ce310fc:
    #data loc_8c042008

;=============================================

LAB_ce31100:
    mov.l @(PTR_ce311fc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31118

LAB_ce3110c:
    lds.l @r15+,PR
    mov.l @(PTR_ce31200,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31118:
    mov.b @(0x2,r13),r0
    tst r0,r0
    bf LAB_ce31132
    mov.w @(DAT_ce311ee,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31132
    mov.l @(PTR_ce31204,pc),r3
    mov 0x01,r0
    mov 0x03,r5
    mov.b r0,@(0x2,r13)
    jsr @r3
    mov r14,r4

LAB_ce31132:
    mov.w @(DAT_ce311f0,pc),r2
    add r14,r2
    mov.b @(0x1,r2),r0
    tst r0,r0
    bt LAB_ce3116c
    mov.w @(DAT_ce311f0,pc),r3
    mov 0x00,r4
    add r14,r3
    mov r4,r0
    nop
    mov.b r0,@(0x1,r3)
    mov 0x19,r3
    mov.w @(DAT_ce311f2,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce311f4,pc),r0
    mov.l @(PTR_ce31208,pc),r3
    mov.w r4,@(r0,r14)
    mov.w @(DAT_ce311ee,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce311f6,pc),r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce3116c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31174:
    mov.w @(DAT_ce311f8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31190
    cmp/eq 0x01,r0
    bt LAB_ce31190
    cmp/eq 0x02,r0
    bt LAB_ce311a6
    bra LAB_ce311ae
    nop

LAB_ce31190:
    mov.l @(PTR_ce311fc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311ae
    lds.l @r15+,PR
    mov.l @(PTR_ce31200,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce311a6:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce311b4
    mov.l @r15+,r14

LAB_ce311ae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311b4:
    mov r4,r3
    mov.l @(PTR_ce3120c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce311c6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce311fc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce311f0,pc),r2
    add r14,r2
    mov.b @(0x1,r2),r0
    tst r0,r0
    bt LAB_ce31232
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce311fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31214
    mova @(DAT_ce31210,pc),r0
    bra LAB_ce31218
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311ee:
    #data 0x019e
DAT_ce311f0:
    #data 0x0150
DAT_ce311f2:
    #data 0x01a1
DAT_ce311f4:
    #data 0x01ac
DAT_ce311f6:
    #data 0x01c4
DAT_ce311f8:
    #data 0x01e8
DAT_ce311fa:
    #data 0x01d2
    #align4

PTR_ce311fc:
    #data loc_8c034dee
PTR_ce31200:
    #data loc_8c051648
PTR_ce31204:
    #data loc_8c042008
PTR_ce31208:
    #data loc_8c2896b0
PTR_ce3120c:
    #data PTR_ce34df0
DAT_ce31210:
    #data 0x4162aaaa

;=============================================

LAB_ce31214:
    mova @(DAT_ce31314,pc),r0
    fmov.s @r0,fr3

LAB_ce31218:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31308,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3122a
    mova @(DAT_ce31318,pc),r0
    bra LAB_ce3122e
    fmov.s @r0,fr3

LAB_ce3122a:
    mova @(DAT_ce3131c,pc),r0
    fmov.s @r0,fr3

LAB_ce3122e:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce31232:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31238:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31320,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3130a,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x02,r0
    bf/s LAB_ce31260
    mov r14,r4
    mov.w @(DAT_ce3130a,pc),r2
    mov 0x00,r0
    fldi0 fr4
    add r14,r2
    mov.b r0,@(0x1,r2)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce31260:
    mov.l @(PTR_ce31324,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31276
    lds.l @r15+,PR
    mov.l @(PTR_ce31328,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31276:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3127c:
    mov.w @(DAT_ce3130c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31296
    mov.l @(PTR_ce3132c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31330,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce31296:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce3129c:
    mov.w @(DAT_ce3130c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce312b0
    mov.l @(PTR_ce31334,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce312b0:
    mov.l @(PTR_ce31338,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3130e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce312c8
    bsr FUN_ce313ae
    mov r14,r4
    bra LAB_ce312cc
    nop

LAB_ce312c8:
    bsr FUN_ce312e8
    mov r14,r4

LAB_ce312cc:
    mov.l @(PTR_ce3133c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce312e2
    lds.l @r15+,PR
    mov.l @(PTR_ce31340,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce312e2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce312e8:
    mov.w @(DAT_ce31310,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce31324,pc),r13
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31344
    cmp/eq 0x01,r0
    bt LAB_ce31352
    cmp/eq 0x02,r0
    bt LAB_ce31376
    bra LAB_ce313a6
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31308:
    #data 0x01d2
DAT_ce3130a:
    #data 0x0150
DAT_ce3130c:
    #data 0x0201
DAT_ce3130e:
    #data 0x01fe
DAT_ce31310:
    #data 0x01e8
    #align4

DAT_ce31314:
    #data 0xc162aaaa
DAT_ce31318:
    #data 0xbf3aaaaa
DAT_ce3131c:
    #data 0x3f3aaaaa
PTR_ce31320:
    #data loc_8c0511e2
PTR_ce31324:
    #data loc_8c034dee
PTR_ce31328:
    #data loc_8c051648
PTR_ce3132c:
    #data loc_8c050084
PTR_ce31330:
    #data loc_8c04ff88
PTR_ce31334:
    #data loc_8c04fea8
PTR_ce31338:
    #data loc_8c050048
PTR_ce3133c:
    #data loc_8c052ce2
PTR_ce31340:
    #data loc_8c052dac

;=============================================

LAB_ce31344:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31380
    bra LAB_ce313a6
    nop

LAB_ce31352:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31380
    mov.w @(DAT_ce313d0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce313a6
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x04,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce313d4,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31376:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3138c

LAB_ce31380:
    lds.l @r15+,PR
    mov.l @(PTR_ce313d8,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3138c:
    mov.w @(DAT_ce313d0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce313a6
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x05,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce313d4,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce313a6:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce313ae:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce313dc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313c8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce313d8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce313c8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce313d0:
    #data 0x0141
    #align4

PTR_ce313d4:
    #data loc_8c0e1960
PTR_ce313d8:
    #data loc_8c05176e
PTR_ce313dc:
    #data loc_8c034dee

;=============================================

LAB_ce313e0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce3143e
    mov 0x00,r13
    mov.l @(PTR_ce31528,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce3152c,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3151c,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3151e,pc),r0
    mov 0x46,r2
    mov.l @(PTR_ce31530,pc),r3
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
    mov.l @(PTR_ce31534,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31538,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4

LAB_ce3143e:
    mov.w @(DAT_ce31520,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3144e
    mov.l @(PTR_ce3153c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce3144e:
    mov 0x5C,r1
    mov.l @(PTR_ce31540,pc),r3
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
    mov.l @(PTR_ce31544,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce314a4
    lds.l @r15+,PR
    mov.l @(PTR_ce31548,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce314a4:
    mov.w @(DAT_ce31522,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce314bc
    mov.b r13,@(r0,r14)
    mov 0x01,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce3154c,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce314bc:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce314c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3153c,pc),r3
    jsr @r3
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31550,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce314e0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31544,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31522,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31576
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x1C,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31524,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31558
    mova @(DAT_ce31554,pc),r0
    bra LAB_ce3155c
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3151c:
    #data 0x01f9
DAT_ce3151e:
    #data 0x01a1
DAT_ce31520:
    #data 0x01ff
DAT_ce31522:
    #data 0x0141
DAT_ce31524:
    #data 0x01d2
    #align4

PTR_ce31528:
    #data loc_8c052b4c
PTR_ce3152c:
    #data loc_8c034e8c
PTR_ce31530:
    #data loc_8c2896b0
PTR_ce31534:
    #data loc_8c04223a
PTR_ce31538:
    #data loc_8c056de4
PTR_ce3153c:
    #data loc_8c0511e2
PTR_ce31540:
    #data loc_8c052c84
PTR_ce31544:
    #data loc_8c034dee
PTR_ce31548:
    #data loc_8c051648
PTR_ce3154c:
    #data loc_8c0e1960
PTR_ce31550:
    #data PTR_ce34df8
DAT_ce31554:
    #data 0x417d5555

;=============================================

LAB_ce31558:
    mova @(DAT_ce3167c,pc),r0
    fmov.s @r0,fr3

LAB_ce3155c:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31678,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3156e
    mova @(DAT_ce31680,pc),r0
    bra LAB_ce31572
    fmov.s @r0,fr3

LAB_ce3156e:
    mova @(DAT_ce31684,pc),r0
    fmov.s @r0,fr3

LAB_ce31572:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce31576:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3157c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31688,pc),r3
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
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce315ea
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
    mov.w @(DAT_ce31678,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce315d4
    mova @(DAT_ce3168c,pc),r0
    bra LAB_ce315d8
    fmov.s @r0,fr3

LAB_ce315d4:
    mova @(DAT_ce31690,pc),r0
    fmov.s @r0,fr3

LAB_ce315d8:
    mov 0x02,r6
    mov.l @(PTR_ce31694,pc),r3
    mov 0x5C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov r6,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce315ea:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce315f0:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31688,pc),r3
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
    bt LAB_ce31628
    lds.l @r15+,PR
    mov.l @(PTR_ce31698,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31628:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3162e:
    mov r4,r3
    mov.l @(PTR_ce3169c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31640:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31688,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3167a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce316c2
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
    mov.w @(DAT_ce31678,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce316a0
    mova @(DAT_ce3167c,pc),r0
    bra LAB_ce316a4
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31678:
    #data 0x01d2
DAT_ce3167a:
    #data 0x0141
    #align4

DAT_ce3167c:
    #data 0xc17d5555
DAT_ce31680:
    #data 0xbea00000
DAT_ce31684:
    #data 0x3ea00000
PTR_ce31688:
    #data loc_8c034dee
DAT_ce3168c:
    #data 0x3fd55555
DAT_ce31690:
    #data 0xbfd55555
PTR_ce31694:
    #data loc_8c034e8c
PTR_ce31698:
    #data loc_8c051648
PTR_ce3169c:
    #data PTR_ce34e04

;=============================================

LAB_ce316a0:
    mova @(DAT_ce317b8,pc),r0
    fmov.s @r0,fr3

LAB_ce316a4:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce317b0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce316b6
    mova @(DAT_ce317bc,pc),r0
    bra LAB_ce316ba
    fmov.s @r0,fr3

LAB_ce316b6:
    mova @(DAT_ce317c0,pc),r0
    fmov.s @r0,fr3

LAB_ce316ba:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x1C,r0
    mov.w r0,@(0x1c,r14)

LAB_ce316c2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce316c8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce317c4,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce317c8,pc),r3
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
    bt LAB_ce31730
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce317cc,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31730:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31736:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce317c8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31750
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce317d0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31750:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31758:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce317d4,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce317b2,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3176e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce317d8,pc),r3
    mov.l r5,@r15
    mov 0x16,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce317b4,pc),r0
    mov 0x00,r2
    mov 0x12,r5
    mov r14,r4
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    mov.l @r15,r3
    mov r2,r6
    mov.b r0,@(0x4,r3)
    mova @(DAT_ce317dc,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce317b6,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce317cc,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce317b0:
    #data 0x01d2
DAT_ce317b2:
    #data 0x02a4
DAT_ce317b4:
    #data 0x012c
DAT_ce317b6:
    #data 0x041c
    #align4

DAT_ce317b8:
    #data 0x417d5555
DAT_ce317bc:
    #data 0x3ea00000
DAT_ce317c0:
    #data 0xbea00000
PTR_ce317c4:
    #data loc_8c0511e2
PTR_ce317c8:
    #data loc_8c034dee
PTR_ce317cc:
    #data loc_8c034e8c
PTR_ce317d0:
    #data loc_8c051648
PTR_ce317d4:
    #data PTR_ce34e10
PTR_ce317d8:
    #data loc_8c042008
DAT_ce317dc:
    #data 0x432b6db6

;=============================================

LAB_ce317e0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31924,pc),r0
    mov 0x01,r3
    mov r4,r14
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3192c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3182c
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    fldi0 fr4
    mov r14,r4
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
    mova @(DAT_ce31930,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x01,r6
    fmov fr3,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31934,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3182c:
    mov.w @(DAT_ce31926,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3184e
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.l @r15,r3
    mov r4,r0
    nop
    mov r14,r4
    mov r0,r5
    mov.b r0,@(0x4,r3)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31938,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3184e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31856:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r1
    mov.l @(PTR_ce3192c,pc),r3
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
    mova @(DAT_ce3193c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31928,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bt LAB_ce318a2
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31940,pc),r3
    mov 0x0D,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce318a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318a8:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r1
    mov.l @(PTR_ce3192c,pc),r3
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
    mov.w @(DAT_ce31928,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce318fe
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r14,r4
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x12,r5
    mov.w @(DAT_ce31928,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3192a,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31934,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce318fe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31904:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3192c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3191c
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce3191c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31924:
    #data 0x012c
DAT_ce31926:
    #data 0x0141
DAT_ce31928:
    #data 0x041c
DAT_ce3192a:
    #data 0x01f9
    #align4

PTR_ce3192c:
    #data loc_8c034dee
DAT_ce31930:
    #data 0xbff00000
PTR_ce31934:
    #data loc_8c034e8c
PTR_ce31938:
    #data loc_8c035162
DAT_ce3193c:
    #data 0x424db6db
PTR_ce31940:
    #data loc_8c0e1960

;=============================================

LAB_ce31944:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a24,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce3195c
    lds.l @r15+,PR
    mov.l @(PTR_ce31a28,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3195c:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31a2c,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31970:
    mov r4,r3
    mov.l @(PTR_ce31a30,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31982:
    mov.l @(PTR_ce31a38,pc),r1
    mov 0x07,r6
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.b @r1,r2
    mov.l @(PTR_ce31a34,pc),r3
    tst r2,r2
    bt/s LAB_ce3199c
    mov.l @r3,r5
    mov.l @(PTR_ce31a3c,pc),r2
    mov.l @(0x1c,r5),r0
    bra LAB_ce319a2
    and r6,r0

LAB_ce3199c:
    mov.l @(0x1c,r5),r0
    mov.l @(PTR_ce31a40,pc),r2
    and r6,r0

LAB_ce319a2:
    mov.b @(r0,r2),r0
    mov.l @(PTR_ce31a44,pc),r14
    extu.b r0,r0
    mov.w r0,@(0x1c,r4)
    mov.w @(0x1c,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce319bc
    cmp/eq 0x01,r0
    bt LAB_ce319ca
    cmp/eq 0x02,r0
    bt LAB_ce319d4
    bra LAB_ce319e0
    nop

LAB_ce319bc:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x3C,r0
    mov.w r0,@(0x1e,r4)
    bra LAB_ce319d0
    mov 0x00,r6

LAB_ce319ca:
    mov 0x03,r0
    mov 0x01,r6
    mov.b r0,@(0x6,r4)

LAB_ce319d0:
    bra LAB_ce319dc
    mov 0x13,r5

LAB_ce319d4:
    mov 0x04,r0
    mov 0x15,r5
    mov.b r0,@(0x6,r4)
    mov 0x05,r6

LAB_ce319dc:
    jsr @r14
    nop

LAB_ce319e0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce319e6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31a0c
    mov.b @(0x6,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce31a44,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4

LAB_ce31a0c:
    lds.l @r15+,PR
    mov.l @(PTR_ce31a48,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a16:
    mov.l @(PTR_ce31a48,pc),r3
    jmp @r3
    nop

LAB_ce31a1c:
    mov.l @(PTR_ce31a48,pc),r3
    jmp @r3
    nop
    #data 0x0000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

PTR_ce31a24:
    #data loc_8c046c8a
PTR_ce31a28:
    #data loc_8c051648
PTR_ce31a2c:
    #data PTR_ce34e24
PTR_ce31a30:
    #data PTR_ce34e38
PTR_ce31a34:
    #data loc_8c26823c
PTR_ce31a38:
    #data loc_8c289636
PTR_ce31a3c:
    #data DAT_ce34e58
PTR_ce31a40:
    #data DAT_ce34e60
PTR_ce31a44:
    #data loc_8c034e8c
PTR_ce31a48:
    #data loc_8c034dee

;=============================================

LAB_ce31a4c:
    mov.w @(DAT_ce31b50,pc),r3
    mov.w @(DAT_ce31b52,pc),r0
    mov.w @(DAT_ce31b54,pc),r2
    mov.l r14,@-r15
    mov r4,r14
    add r14,r2
    mov.w @(DAT_ce31b4e,pc),r4
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.b @(0x1,r2),r0
    tst r0,r0
    bt/s LAB_ce31a6a
    add r14,r4
    mov 0x01,r0
    mov.b r0,@(0x4,r4)

LAB_ce31a6a:
    mov.w @(DAT_ce31b56,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31a78
    mov r14,r4
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce31a78:
    mov.l @(PTR_ce31b60,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31a9a
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce31b58,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31b5a,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce31a9a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31aa0:
    mov.w @(DAT_ce31b52,pc),r0
    mov 0x00,r2
    mov.w @(DAT_ce31b50,pc),r3
    mov 0x01,r5
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce31b58,pc),r0
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce31b5a,pc),r0
    mov.b r5,@(r0,r4)
    mov.w @(0x1e,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r4)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31ade
    mov.b @(0x6,r4),r0
    mov 0x06,r6
    mov.l @(PTR_ce31b68,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31b58,pc),r0
    mov.b r5,@(r0,r4)
    mova @(DAT_ce31b64,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31b5c,pc),r0
    fmov.s @(r0,r4),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    jmp @r3
    mov 0x15,r5

LAB_ce31ade:
    rts
    nop

LAB_ce31ae2:
    mov.w @(DAT_ce31b50,pc),r3
    mov.w @(DAT_ce31b52,pc),r0
    mov.w @(DAT_ce31b54,pc),r2
    mov.l r14,@-r15
    mov r4,r14
    add r14,r2
    mov.w @(DAT_ce31b4e,pc),r4
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.b @(0x1,r2),r0
    tst r0,r0
    bt/s LAB_ce31b00
    add r14,r4
    mov 0x01,r0
    mov.b r0,@(0x4,r4)

LAB_ce31b00:
    mov.w @(DAT_ce31b56,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31b14
    mov 0x00,r3
    mov r3,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31b6c,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31b14:
    mov.l @(PTR_ce31b60,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b48
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce31b74,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x10,r0
    mov.w r0,@(0x1e,r14)
    mova @(DAT_ce31b70,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31b68,pc),r2
    mov r14,r4
    mov 0x04,r6
    mov 0x13,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b48:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b4e:
    #data 0x02a4
DAT_ce31b50:
    #data 0x00ff
DAT_ce31b52:
    #data 0x0326
DAT_ce31b54:
    #data 0x0150
DAT_ce31b56:
    #data 0x0141
DAT_ce31b58:
    #data 0x012c
DAT_ce31b5a:
    #data 0x01f5
DAT_ce31b5c:
    #data 0x041c
    #align4

PTR_ce31b60:
    #data loc_8c034dee
DAT_ce31b64:
    #data 0x43092492
PTR_ce31b68:
    #data loc_8c034e8c
PTR_ce31b6c:
    #data loc_8c035162
DAT_ce31b70:
    #data 0x40092492
PTR_ce31b74:
    #data loc_8c042008

;=============================================

LAB_ce31b78:
    mov.w @(DAT_ce31c9e,pc),r0
    mov.w @(DAT_ce31c9c,pc),r3
    mov.b r3,@(r0,r4)
    mov.w @(0x1e,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r4)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31b96
    mov 0x10,r0
    mov.w r0,@(0x1e,r4)
    mov 0x60,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce31b96:
    mov 0x60,r1
    add r4,r1
    mov 0x38,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r4),fr2
    fadd fr3,fr2
    rts
    fmov fr2,@(r0,r4)

LAB_ce31ba6:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31bba
    mov.b @(0x6,r4),r0
    mov 0x03,r6
    mov.l @(PTR_ce31cac,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31bba:
    mov.l @(PTR_ce31cb0,pc),r3
    jmp @r3
    nop

LAB_ce31bc0:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31bd4
    mov.b @(0x6,r4),r0
    mov 0x03,r6
    mov.l @(PTR_ce31cac,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31bd4:
    mov.l @(PTR_ce31cb0,pc),r3
    jmp @r3
    nop

LAB_ce31bda:
    mov.w @(DAT_ce31ca0,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31cb4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31bee:
    mov r4,r3
    mov.l @(PTR_ce31cb8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31c00:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31ca2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31c1a
    bra LAB_ce31c1c
    mov 0x38,r3

LAB_ce31c1a:
    mov 0x36,r3

LAB_ce31c1c:
    mov.w @(DAT_ce31ca4,pc),r0
    mov 0x00,r13
    mov 0x05,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31cbc,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31cc0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31cc4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31ca6,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce31cc8,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ca8,pc),r0
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
    mov.l @(PTR_ce31cac,pc),r2
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c82:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31cb0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31cd0
    lds.l @r15+,PR
    mov.l @(PTR_ce31ccc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c9c:
    #data 0x00ff
DAT_ce31c9e:
    #data 0x0326
DAT_ce31ca0:
    #data 0x01e9
DAT_ce31ca2:
    #data 0x01a3
DAT_ce31ca4:
    #data 0x01a1
DAT_ce31ca6:
    #data 0x041c
DAT_ce31ca8:
    #data 0x01f9
    #align4

PTR_ce31cac:
    #data loc_8c034e8c
PTR_ce31cb0:
    #data loc_8c034dee
PTR_ce31cb4:
    #data PTR_ce34e68
PTR_ce31cb8:
    #data PTR_ce34ea8
PTR_ce31cbc:
    #data loc_8c2896b0
PTR_ce31cc0:
    #data loc_8c056de4
PTR_ce31cc4:
    #data loc_8c05218a
PTR_ce31cc8:
    #data loc_8c05115a
PTR_ce31ccc:
    #data loc_8c051648

;=============================================

LAB_ce31cd0:
    mov.w @(DAT_ce31dd4,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    tst 0x01,r0
    bt LAB_ce31cec
    mov.w @(DAT_ce31dd4,pc),r3
    mov 0x06,r5
    add r14,r3
    mov.b @(0x1,r3),r0
    and 0xFE,r0
    mov.b r0,@(0x1,r3)
    mov.l @(PTR_ce31de8,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31cec:
    mov.w @(DAT_ce31dd6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31d04
    mov 0x00,r3
    mov r14,r4
    mov r3,r5
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31dec,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d04:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d0a:
    mov r4,r3
    mov.l @(PTR_ce31df0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31d1c:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31df4,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31dd8,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d32:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31df8,pc),r3
    mov.l r5,@r15
    mov 0x0A,r5
    mov.b @(0x7,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31dfc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31dda,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ddc,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31dde,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce31d90
    mov.w @(DAT_ce31de0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31d88
    bra LAB_ce31d8a
    mov 0x34,r2

LAB_ce31d88:
    mov 0x30,r2

LAB_ce31d8a:
    mov.w @(DAT_ce31de2,pc),r0
    bra LAB_ce31d96
    mov.b r2,@(r0,r14)

LAB_ce31d90:
    mov.w @(DAT_ce31de2,pc),r0
    mov 0x42,r3
    mov.b r3,@(r0,r14)

LAB_ce31d96:
    mov.w @(DAT_ce31de4,pc),r0
    mov.l @(PTR_ce31e00,pc),r3
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce31e04,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov r13,r0
    nop
    mov 0x15,r5
    mov r14,r4
    mov.b r0,@(0x2,r2)
    mov 0x01,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31e08,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31dd4:
    #data 0x0150
DAT_ce31dd6:
    #data 0x0141
DAT_ce31dd8:
    #data 0x02a4
DAT_ce31dda:
    #data 0x041c
DAT_ce31ddc:
    #data 0x01f9
DAT_ce31dde:
    #data 0x0255
DAT_ce31de0:
    #data 0x01a3
DAT_ce31de2:
    #data 0x01a1
DAT_ce31de4:
    #data 0x01ac
    #align4

PTR_ce31de8:
    #data loc_8c0e1960
PTR_ce31dec:
    #data loc_8c097b30
PTR_ce31df0:
    #data PTR_ce34eb0
PTR_ce31df4:
    #data PTR_ce34eb8
PTR_ce31df8:
    #data loc_8c056de4
PTR_ce31dfc:
    #data loc_8c05218a
PTR_ce31e00:
    #data loc_8c2896b0
PTR_ce31e04:
    #data loc_8c05115a
PTR_ce31e08:
    #data loc_8c034e8c

;=============================================

LAB_ce31e0c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31ec8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31ec0,pc),r2
    add r14,r2
    mov.b @(0x1,r2),r0
    tst r0,r0
    bt LAB_ce31eba
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31ecc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31ec0,pc),r2
    mov 0x00,r0
    add r14,r2
    mov.b r0,@(0x1,r2)
    mov.w @(DAT_ce31ec2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31e4e
    mov.w @(DAT_ce31ec4,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31ed0,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31e5e
    nop

LAB_ce31e4e:
    mov.w @(DAT_ce31ec4,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31ed0,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31e5e:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ec2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31e7c
    mov.w @(DAT_ce31ec4,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31ed4,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce31e8c
    nop

LAB_ce31e7c:
    mov.w @(DAT_ce31ec4,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31ed4,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce31e8c:
    mov 0x68,r0
    mov.l @(PTR_ce31ed0,pc),r4
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ec4,pc),r0
    mov.b @(r0,r14),r3
    mov 0x08,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r4,r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ec4,pc),r0
    mov.b @(r0,r14),r3
    mov 0x0C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31eba:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ec0:
    #data 0x0150
DAT_ce31ec2:
    #data 0x01d2
DAT_ce31ec4:
    #data 0x01a3
    #align4

PTR_ce31ec8:
    #data loc_8c034dee
PTR_ce31ecc:
    #data loc_8c053082
PTR_ce31ed0:
    #data DAT_ce34ec8
PTR_ce31ed4:
    #data DAT_ce34ecc

;=============================================

LAB_ce31ed8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r1
    mov r4,r14
    mov 0x34,r0
    mov.l @(PTR_ce32024,pc),r3
    add r14,r1
    mov.l r5,@r15
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
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0x2,r2),r0
    tst r0,r0
    bf LAB_ce31f42
    mov.w @(DAT_ce32012,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f42
    mov.l @r15,r3
    mov 0x01,r0
    mov 0x03,r5
    mov.b r0,@(0x2,r3)
    mov.l @(PTR_ce32028,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31f42:
    mov.w @(DAT_ce32014,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31f8e
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32016,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce31f6a
    mov.w @(DAT_ce32018,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f62
    bra LAB_ce31f64
    mov 0x35,r2

LAB_ce31f62:
    mov 0x31,r2

LAB_ce31f64:
    mov.w @(DAT_ce3201a,pc),r0
    bra LAB_ce31f70
    mov.b r2,@(r0,r14)

LAB_ce31f6a:
    mov.w @(DAT_ce3201a,pc),r0
    mov 0x43,r3
    mov.b r3,@(r0,r14)

LAB_ce31f70:
    mov.w @(DAT_ce3201c,pc),r0
    mov.l @(PTR_ce3202c,pc),r3
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

LAB_ce31f8e:
    mov.w @(DAT_ce3201e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31fd6
    mov.b @(0x7,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce32030,pc),r3
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3201e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32020,pc),r0
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
    mov r14,r4
    mov 0x15,r5
    mov 0x02,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32034,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31fd6:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31fe0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32024,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3200c
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32038,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3200c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32012:
    #data 0x019e
DAT_ce32014:
    #data 0x0141
DAT_ce32016:
    #data 0x0255
DAT_ce32018:
    #data 0x01a3
DAT_ce3201a:
    #data 0x01a1
DAT_ce3201c:
    #data 0x01ac
DAT_ce3201e:
    #data 0x041c
DAT_ce32020:
    #data 0x01f9
    #align4

PTR_ce32024:
    #data loc_8c034dee
PTR_ce32028:
    #data loc_8c042008
PTR_ce3202c:
    #data loc_8c2896b0
PTR_ce32030:
    #data loc_8c0511b4
PTR_ce32034:
    #data loc_8c034e8c
PTR_ce32038:
    #data loc_8c051648

;=============================================

LAB_ce3203c:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce3216c,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32160,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32052:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov 0x30,r3
    mov 0x00,r13
    mov.l r5,@r15
    mov.b @(0x7,r14),r0
    mov 0x0A,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32162,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32170,pc),r3
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
    mov.l @(PTR_ce32178,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov r13,r0
    nop
    mov 0x15,r5
    mov r14,r4
    mov.b r0,@(0x2,r2)
    mov 0x03,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3217c,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce320b2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32180,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32164,pc),r2
    add r14,r2
    mov.b @(0x1,r2),r0
    tst r0,r0
    bt LAB_ce3215a
    mov.b @(0x7,r14),r0
    mov.w @(DAT_ce32164,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x00,r0
    add r14,r3
    mov.b r0,@(0x1,r3)
    mov.w @(DAT_ce32166,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce320ee
    mov.w @(DAT_ce32168,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32184,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce320fe
    nop

LAB_ce320ee:
    mov.w @(DAT_ce32168,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce32184,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce320fe:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32166,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3211c
    mov.w @(DAT_ce32168,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32188,pc),r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    fmov.s @(r0,r3),fr3
    bra LAB_ce3212c
    nop

LAB_ce3211c:
    mov.w @(DAT_ce32168,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce32188,pc),r0
    extu.b r2,r2
    shll2 r2
    shll2 r2
    fmov.s @(r0,r2),fr3
    fneg fr3

LAB_ce3212c:
    mov 0x68,r0
    mov.l @(PTR_ce32184,pc),r4
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32168,pc),r0
    mov.b @(r0,r14),r3
    mov 0x08,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r4,r3
    fmov.s @(r0,r3),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32168,pc),r0
    mov.b @(r0,r14),r3
    mov 0x0C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce3215a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32160:
    #data 0x02a4
DAT_ce32162:
    #data 0x01a1
DAT_ce32164:
    #data 0x0150
DAT_ce32166:
    #data 0x01d2
DAT_ce32168:
    #data 0x01a3
    #align4

PTR_ce3216c:
    #data PTR_ce34ee8
PTR_ce32170:
    #data loc_8c2896b0
PTR_ce32174:
    #data loc_8c056de4
PTR_ce32178:
    #data loc_8c05218a
PTR_ce3217c:
    #data loc_8c034e8c
PTR_ce32180:
    #data loc_8c034dee
PTR_ce32184:
    #data DAT_ce34ef8
PTR_ce32188:
    #data DAT_ce34efc

;=============================================

LAB_ce3218c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov.l @(PTR_ce322e8,pc),r3
    mov 0x34,r0
    mov.l r5,@r15
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
    mov.l @r15,r2
    mov.b @(0x2,r2),r0
    tst r0,r0
    bf LAB_ce321f2
    mov.w @(DAT_ce322dc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce321f2
    mov.l @r15,r3
    mov 0x01,r0
    mov 0x03,r5
    mov.b r0,@(0x2,r3)
    mov.l @(PTR_ce322ec,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce321f2:
    mov.w @(DAT_ce322de,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce3222e
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x62,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3220a
    bra LAB_ce3220c
    mov 0x2B,r3

LAB_ce3220a:
    mov 0x29,r3

LAB_ce3220c:
    mov.w @(DAT_ce322e0,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce322f0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce3222e:
    mov.w @(DAT_ce322e2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32274
    mov.b @(0x7,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce322f4,pc),r3
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce322e2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce322e4,pc),r0
    mov.b r4,@(r0,r14)
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
    mov r14,r4
    mov 0x15,r5
    mov 0x04,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce322f8,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce32274:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3227c:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce322fc,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce322e6,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32292:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x02,r5
    mov.l @(PTR_ce32300,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32304,pc),r2
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
    mov.w @(DAT_ce322e4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce322ce
    mov.l @(PTR_ce32308,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce322ce:
    lds.l @r15+,PR
    mov.l @(PTR_ce322f8,pc),r3
    mov r14,r4
    mov 0x05,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce322dc:
    #data 0x019e
DAT_ce322de:
    #data 0x0141
DAT_ce322e0:
    #data 0x01a1
DAT_ce322e2:
    #data 0x041c
DAT_ce322e4:
    #data 0x01f9
DAT_ce322e6:
    #data 0x02a4
    #align4

PTR_ce322e8:
    #data loc_8c034dee
PTR_ce322ec:
    #data loc_8c042008
PTR_ce322f0:
    #data loc_8c2896b0
PTR_ce322f4:
    #data loc_8c0511b4
PTR_ce322f8:
    #data loc_8c034e8c
PTR_ce322fc:
    #data PTR_ce34f38
PTR_ce32300:
    #data loc_8c056de4
PTR_ce32304:
    #data loc_8c05218a
PTR_ce32308:
    #data loc_8c05115a

;=============================================

LAB_ce3230c:
    mov.w @(DAT_ce32442,pc),r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    add r14,r3
    mov.l r12,@-r15
    mov r5,r12
    sts.l PR,@-r15
    mov.b @(0x1,r3),r0
    tst r0,r0
    bt/s LAB_ce3232a
    mov 0x01,r13
    mov r13,r0
    nop
    mov.b r0,@(0x4,r12)

LAB_ce3232a:
    mov.w @(DAT_ce32444,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3233e
    mov r14,r4
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x4,r12)

LAB_ce3233e:
    mov.l @(PTR_ce32454,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3237a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x4,r12)
    mov 0x00,r3
    mov.w @(DAT_ce32446,pc),r0
    mov 0x1B,r5
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32448,pc),r0
    mov.l @(PTR_ce32458,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3245c,pc),r2
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3237a:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32384:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32446,pc),r0
    mov 0x00,r4
    mov.l r13,@-r15
    mov 0x01,r13
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32448,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce3243a
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32464,pc),r3
    add 0x01,r0
    mov.l @(PTR_ce32460,pc),r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32446,pc),r0
    mov.b r13,@(r0,r14)
    mov.b @(0x7,r14),r0
    fmov.s @r3,fr2
    extu.b r0,r0
    shll2 r0
    shll r0
    fmov.s @(r0,r5),fr3
    mova @(DAT_ce32468,pc),r0
    fadd fr3,fr2
    fmov.s @r0,fr3
    mov 0x34,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce3244a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll2 r0
    shll r0
    add r0,r5
    mov 0x04,r0
    fmov.s @(r0,r5),fr2
    mov 0x38,r0
    fmov.s @(r0,r2),fr1
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov.w @(DAT_ce3244c,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fcmp/gt fr2,fr1
    bf LAB_ce32408
    mov.w @(DAT_ce3244e,pc),r0
    mov 0x02,r1
    mov 0x11,r2
    mov.b r1,@(r0,r14)
    add 0xDB,r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r2,@(r0,r14)
    bra LAB_ce3240a
    add 0x03,r0

LAB_ce32408:
    mov.w @(DAT_ce3244e,pc),r0

LAB_ce3240a:
    mov.l @(PTR_ce32458,pc),r3
    mov 0x1C,r5
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    tst r13,r0
    bt LAB_ce32420
    bra LAB_ce32422
    mov 0x00,r2

LAB_ce32420:
    mov r13,r2

LAB_ce32422:
    mov.w @(DAT_ce32450,pc),r0
    mov r14,r4
    mov.l @(PTR_ce3246c,pc),r3
    mov 0x06,r6
    mov.w r2,@(r0,r14)
    mov 0x15,r5
    mov.w @(DAT_ce32452,pc),r0
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3243a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32442:
    #data 0x0150
DAT_ce32444:
    #data 0x0141
DAT_ce32446:
    #data 0x012c
DAT_ce32448:
    #data 0x01f5
DAT_ce3244a:
    #data 0x020c
DAT_ce3244c:
    #data 0x041c
DAT_ce3244e:
    #data 0x01f9
DAT_ce32450:
    #data 0x0130
DAT_ce32452:
    #data 0x01d2
    #align4

PTR_ce32454:
    #data loc_8c034dee
PTR_ce32458:
    #data loc_8c042008
PTR_ce3245c:
    #data loc_8c0e1994
PTR_ce32460:
    #data DAT_ce34f18
PTR_ce32464:
    #data loc_8c26a524
DAT_ce32468:
    #data 0xc3a00000
PTR_ce3246c:
    #data loc_8c034e8c

;=============================================

LAB_ce32470:
    mov.w @(DAT_ce324f0,pc),r3
    mov.l r14,@-r15
    mov r4,r14
    add r14,r3
    sts.l PR,@-r15
    mov.b @(0x1,r3),r0
    tst r0,r0
    bt LAB_ce32484
    mov 0x01,r0
    mov.b r0,@(0x4,r5)

LAB_ce32484:
    mov.w @(DAT_ce324f2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32498
    mov 0x00,r3
    mov r3,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce324f8,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32498:
    mov.l @(PTR_ce324fc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324d4
    mov.w @(DAT_ce324f4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce324b8
    lds.l @r15+,PR
    mov.l @(PTR_ce32500,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce324b8:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32504,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce324d4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce324da:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32508,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce324f6,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce324f0:
    #data 0x0150
DAT_ce324f2:
    #data 0x0141
DAT_ce324f4:
    #data 0x01f9
DAT_ce324f6:
    #data 0x02a4
    #align4

PTR_ce324f8:
    #data loc_8c035162
PTR_ce324fc:
    #data loc_8c034dee
PTR_ce32500:
    #data loc_8c05176e
PTR_ce32504:
    #data loc_8c051648
PTR_ce32508:
    #data PTR_ce34f48

;=============================================

LAB_ce3250c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32628,pc),r3
    mov.l r5,@r15
    mov 0x0A,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3262c,pc),r2
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
    mov.w @(DAT_ce32622,pc),r0
    mov.l @(r0,r14),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fmov.s @(r0,r3),fr2
    mov 0x5C,r0
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32630,pc),r0
    fmov.s @r0,fr5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr5,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32634,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32638,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x00,r0
    mov.w r0,@(0x1c,r14)
    mov.l @r15,r3
    mov.b @(0x3,r3),r0
    tst r0,r0
    bt LAB_ce32584
    mov 0x05,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce3263c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32584:
    mova @(DAT_ce32640,pc),r0
    mov.w @(DAT_ce32624,pc),r1
    fmov.s @r0,fr4
    mov.w @(DAT_ce32622,pc),r0
    mov.l @(r0,r14),r0
    mov.b @(r0,r1),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3259a
    mova @(DAT_ce32644,pc),r0
    fmov.s @r0,fr4

LAB_ce3259a:
    mov.w @(DAT_ce32622,pc),r0
    mov.w @(DAT_ce32624,pc),r1
    mov.l @(r0,r14),r0
    mov.b @(r0,r1),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce325ac
    mova @(DAT_ce32648,pc),r0
    fmov.s @r0,fr4

LAB_ce325ac:
    mov.w @(DAT_ce32622,pc),r0
    mov.l @(r0,r14),r3
    mov 0x38,r0
    fmov.s @(r0,r3),fr3
    fadd fr3,fr4
    fmov.s @(r0,r14),fr3
    fsub fr3,fr4
    fldi0 fr3
    fcmp/gt fr3,fr4
    bf LAB_ce325cc
    mova @(DAT_ce3264c,pc),r0
    fmov.s @r0,fr2
    fcmp/gt fr4,fr2
    bf LAB_ce325cc
    mova @(DAT_ce3264c,pc),r0
    fmov.s @r0,fr4

LAB_ce325cc:
    fdiv fr5,fr4
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32624,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce325e6
    mov.l @(PTR_ce32650,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce325e6:
    mov.l @(PTR_ce32654,pc),r3
    mov 0x15,r5
    mov 0x07,r6
    jsr @r3
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32658,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce325fc:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce3261e
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32624,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3261e
    mov.l @(PTR_ce3265c,pc),r3
    jmp @r3
    nop

LAB_ce3261e:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32622:
    #data 0x020c
DAT_ce32624:
    #data 0x01f9
    #align4

PTR_ce32628:
    #data loc_8c056de4
PTR_ce3262c:
    #data loc_8c05218a
DAT_ce32630:
    #data 0x42000000
DAT_ce32634:
    #data 0x414db6db
DAT_ce32638:
    #data 0xbf9a4924
DAT_ce3263c:
    #data 0xbf892492
DAT_ce32640:
    #data 0x434db6db
DAT_ce32644:
    #data 0x43892492
DAT_ce32648:
    #data 0x42cdb6db
DAT_ce3264c:
    #data 0x439a4924
PTR_ce32650:
    #data loc_8c05115a
PTR_ce32654:
    #data loc_8c034e8c
PTR_ce32658:
    #data loc_8c034dee
PTR_ce3265c:
    #data loc_8c053082

;=============================================

LAB_ce32660:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32798,pc),r3
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
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce326e8
    mov.b @(0x6,r14),r0
    mov 0x39,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x08,r6
    mov.w @(DAT_ce32790,pc),r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3279c,pc),r3
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
    mov.l @(PTR_ce327a0,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce326e8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce326ee:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32798,pc),r3
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
    mov.w @(DAT_ce32792,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32752
    mov.w @(DAT_ce32794,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3278a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32752:
    mov 0x08,r0
    fldi0 fr4
    mov.b r0,@(0x6,r14)
    mov 0x01,r3
    mov.w @(DAT_ce32792,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32796,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce327a4,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce327a0,pc),r2
    mov r14,r4
    mov 0x0C,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3278a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32790:
    #data 0x01a1
DAT_ce32792:
    #data 0x041c
DAT_ce32794:
    #data 0x019e
DAT_ce32796:
    #data 0x01f9
    #align4

PTR_ce32798:
    #data loc_8c034dee
PTR_ce3279c:
    #data loc_8c2896b0
PTR_ce327a0:
    #data loc_8c034e8c
PTR_ce327a4:
    #data loc_8c0511b4

;=============================================

LAB_ce327a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce328b0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32842
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce328b4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3289c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce327f8
    mov.w @(DAT_ce3289e,pc),r0
    mov.w @(DAT_ce328a0,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce327e6
    mov.w @(DAT_ce328a2,pc),r0
    mov 0x00,r3
    mov r3,r1
    mov.w r3,@(r0,r14)
    mov.w @(DAT_ce328a4,pc),r0
    bra LAB_ce327f8
    mov.b r1,@(r0,r14)

LAB_ce327e6:
    mov.w @(DAT_ce328a6,pc),r1
    tst r1,r3
    bt LAB_ce327f8
    mov.w @(DAT_ce328a2,pc),r0
    mov 0x01,r3
    mov r3,r2
    mov.w r3,@(r0,r14)
    mov.w @(DAT_ce328a4,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce327f8:
    mov.w @(DAT_ce328a4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32806
    mova @(DAT_ce328b8,pc),r0
    bra LAB_ce3280a
    fmov.s @r0,fr3

LAB_ce32806:
    mova @(DAT_ce328bc,pc),r0
    fmov.s @r0,fr3

LAB_ce3280a:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce328a4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3281c
    mova @(DAT_ce328c0,pc),r0
    bra LAB_ce32820
    fmov.s @r0,fr3

LAB_ce3281c:
    mova @(DAT_ce328c4,pc),r0
    fmov.s @r0,fr3

LAB_ce32820:
    mov 0x68,r0
    mov.l @(PTR_ce328d0,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce328c8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov r14,r4
    mov 0x0A,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce328cc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32842:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32848:
    mov.w @(DAT_ce328a8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce328d4,pc),r0
    fsub fr3,fr2
    fmov.s @r0,fr3
    fcmp/gt fr3,fr2
    bf LAB_ce328d8
    mov 0x60,r0
    fldi0 fr2
    fmov.s @(r0,r14),fr1
    fcmp/gt fr1,fr2
    bf LAB_ce328d8
    mov.w @(DAT_ce3289c,pc),r0
    mov.b @(r0,r14),r4
    tst r4,r4
    bt LAB_ce3287a
    mov.w @(DAT_ce328aa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3288c

LAB_ce3287a:
    exts.b r4,r3
    tst r3,r3
    bf LAB_ce328d8
    mov.w @(DAT_ce3289e,pc),r0
    mov.w @(DAT_ce328ac,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce328d8

LAB_ce3288c:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3289c:
    #data 0x0525
DAT_ce3289e:
    #data 0x0340
DAT_ce328a0:
    #data 0x0800
DAT_ce328a2:
    #data 0x0130
DAT_ce328a4:
    #data 0x01d2
DAT_ce328a6:
    #data 0x0400
DAT_ce328a8:
    #data 0x041c
DAT_ce328aa:
    #data 0x01fe
DAT_ce328ac:
    #data 0x0300
    #align4

PTR_ce328b0:
    #data loc_8c034dee
PTR_ce328b4:
    #data loc_8c05218a
DAT_ce328b8:
    #data 0xc0d55555
DAT_ce328bc:
    #data 0x40d55555
DAT_ce328c0:
    #data 0x3e555555
DAT_ce328c4:
    #data 0xbe555555
DAT_ce328c8:
    #data 0x41ab6db6
DAT_ce328cc:
    #data 0xbf4db6db
PTR_ce328d0:
    #data loc_8c034e8c
DAT_ce328d4:
    #data 0x43092492

;=============================================

LAB_ce328d8:
    mov 0x5C,r1
    mov.l @(PTR_ce329e8,pc),r3
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
    mov.w @(DAT_ce329d8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32954
    mov.w @(DAT_ce329da,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3298c
    mov.w @(DAT_ce329dc,pc),r0
    mov.w @(DAT_ce329de,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce32940
    mova @(DAT_ce329ec,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    bra LAB_ce3298c
    fmov fr3,@(r0,r14)

LAB_ce32940:
    mov.w @(r0,r14),r1
    mov.w @(DAT_ce329e0,pc),r3
    extu.w r1,r1
    tst r3,r1
    bt LAB_ce3298c
    mova @(DAT_ce329f0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    bra LAB_ce3298c
    fmov fr3,@(r0,r14)

LAB_ce32954:
    mov 0x08,r0
    fldi0 fr4
    mov.b r0,@(0x6,r14)
    mov 0x01,r3
    mov.w @(DAT_ce329d8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce329e2,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce329f4,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce329f8,pc),r2
    mov r14,r4
    mov 0x0C,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3298c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32992:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce329a4
    mov.l @(PTR_ce329e8,pc),r3
    jmp @r3
    nop

LAB_ce329a4:
    mov.b @(0x6,r4),r0
    mov 0x3A,r3
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x0B,r6
    mov.w @(DAT_ce329e4,pc),r0
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce329fc,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce329f8,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329d8:
    #data 0x041c
DAT_ce329da:
    #data 0x0525
DAT_ce329dc:
    #data 0x0340
DAT_ce329de:
    #data 0x0800
DAT_ce329e0:
    #data 0x0400
DAT_ce329e2:
    #data 0x01f9
DAT_ce329e4:
    #data 0x01a1
    #align4

PTR_ce329e8:
    #data loc_8c034dee
DAT_ce329ec:
    #data 0xc0a00000
DAT_ce329f0:
    #data 0x40a00000
PTR_ce329f4:
    #data loc_8c0511b4
PTR_ce329f8:
    #data loc_8c034e8c
PTR_ce329fc:
    #data loc_8c2896b0

;=============================================

LAB_ce32a00:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32b58,pc),r3
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
    mov.w @(DAT_ce32b4c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32a6e
    mov.w @(DAT_ce32b4e,pc),r2
    add r14,r2
    mov.b @(0x1,r2),r0
    tst r0,r0
    bt LAB_ce32aa8
    mov.w @(DAT_ce32b4e,pc),r3
    mov 0x00,r0
    mov 0x07,r5
    mov r14,r4
    add r14,r3
    mov.b r0,@(0x1,r3)
    lds.l @r15+,PR
    mov.l @(PTR_ce32b5c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a6e:
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32b4c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32b50,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32b60,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32b64,pc),r2
    mov r14,r4
    mov 0x0C,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32aa8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32aae:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32b58,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32ada
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32b68,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ada:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ae0:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32b6c,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32b52,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32af6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32b70,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32b74,pc),r2
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
    mov.w @(DAT_ce32b54,pc),r0
    mov.l @(r0,r14),r3
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fmov.s @(r0,r3),fr2
    mov 0x5C,r0
    mov r0,r1
    add r14,r1
    fsub fr3,fr2
    fmov fr2,@(r0,r14)
    fmov.s @r1,fr3
    fldi0 fr2
    fcmp/gt fr3,fr2
    bf/s LAB_ce32b7c
    fmov.s @(r0,r14),fr2
    mov.l @(DAT_ce32b78,pc),r2
    lds r2,FPUL
    bra LAB_ce32b82
    fsts FPUL,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b4c:
    #data 0x041c
DAT_ce32b4e:
    #data 0x0150
DAT_ce32b50:
    #data 0x01f9
DAT_ce32b52:
    #data 0x02a4
DAT_ce32b54:
    #data 0x020c
    #align4

PTR_ce32b58:
    #data loc_8c034dee
PTR_ce32b5c:
    #data loc_8c0e1960
PTR_ce32b60:
    #data loc_8c0511b4
PTR_ce32b64:
    #data loc_8c034e8c
PTR_ce32b68:
    #data loc_8c051648
PTR_ce32b6c:
    #data PTR_ce34f6c
PTR_ce32b70:
    #data loc_8c056de4
PTR_ce32b74:
    #data loc_8c05218a
DAT_ce32b78:
    #data 0xc1a00000

;=============================================

LAB_ce32b7c:
    mov.l @(DAT_ce32c54,pc),r1
    lds r1,FPUL
    fsts FPUL,fr3

LAB_ce32b82:
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32c58,pc),r0
    fmov.s @r0,fr5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr5,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32c5c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32c60,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.l @r15,r0
    mov.b @(0x3,r0),r0
    tst r0,r0
    bt LAB_ce32bb2
    bra LAB_ce32bb4
    mov 0x05,r0

LAB_ce32bb2:
    mov 0x00,r0

LAB_ce32bb4:
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce32c64,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32c4e,pc),r0
    mov.w @(DAT_ce32c50,pc),r1
    mov.l @(r0,r14),r0
    mov.b @(r0,r1),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32bcc
    mova @(DAT_ce32c68,pc),r0
    fmov.s @r0,fr4

LAB_ce32bcc:
    mov.w @(DAT_ce32c4e,pc),r0
    mov.w @(DAT_ce32c50,pc),r1
    mov.l @(r0,r14),r0
    mov.b @(r0,r1),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32bde
    mova @(DAT_ce32c6c,pc),r0
    fmov.s @r0,fr4

LAB_ce32bde:
    mov.w @(DAT_ce32c4e,pc),r0
    mov.l @(r0,r14),r3
    mov 0x38,r0
    fmov.s @(r0,r3),fr3
    fadd fr3,fr4
    fmov.s @(r0,r14),fr3
    fsub fr3,fr4
    fldi0 fr3
    fcmp/gt fr3,fr4
    bf LAB_ce32bfe
    mova @(DAT_ce32c70,pc),r0
    fmov.s @r0,fr2
    fcmp/gt fr4,fr2
    bf LAB_ce32bfe
    mova @(DAT_ce32c70,pc),r0
    fmov.s @r0,fr4

LAB_ce32bfe:
    fdiv fr5,fr4
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32c50,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32c18
    mov.l @(PTR_ce32c74,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32c18:
    mov r14,r4
    mov 0x15,r5
    mov 0x0D,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32c78,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32c28:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce32c4a
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32c50,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32c4a
    mov.l @(PTR_ce32c7c,pc),r3
    jmp @r3
    nop

LAB_ce32c4a:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c4e:
    #data 0x020c
DAT_ce32c50:
    #data 0x01f9
    #align4

DAT_ce32c54:
    #data 0x41a00000
DAT_ce32c58:
    #data 0x42000000
DAT_ce32c5c:
    #data 0x414db6db
DAT_ce32c60:
    #data 0xbf700000
DAT_ce32c64:
    #data 0x434db6db
DAT_ce32c68:
    #data 0x43892492
DAT_ce32c6c:
    #data 0x42cdb6db
DAT_ce32c70:
    #data 0x439a4924
PTR_ce32c74:
    #data loc_8c05115a
PTR_ce32c78:
    #data loc_8c034e8c
PTR_ce32c7c:
    #data loc_8c053082

;=============================================

LAB_ce32c80:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32d5c,pc),r3
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
    mov.w @(DAT_ce32d4e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce32d60,pc),r0
    fsub fr3,fr2
    fmov.s @r0,fr3
    fcmp/gt fr3,fr2
    bf LAB_ce32d9a
    mov.w @(DAT_ce32d50,pc),r0
    mov.b @(r0,r14),r4
    tst r4,r4
    bt LAB_ce32ce6
    mov.w @(DAT_ce32d52,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32cf8

LAB_ce32ce6:
    exts.b r4,r3
    tst r3,r3
    bf LAB_ce32d9a
    mov.w @(DAT_ce32d54,pc),r0
    mov.w @(DAT_ce32d56,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce32d9a

LAB_ce32cf8:
    mov.b @(0x6,r14),r0
    mov 0x3B,r3
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32d58,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32d64,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32d68,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32d5a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32d38
    mova @(DAT_ce32d6c,pc),r0
    bra LAB_ce32d3c
    fmov.s @r0,fr3

LAB_ce32d38:
    mova @(DAT_ce32d70,pc),r0
    fmov.s @r0,fr3

LAB_ce32d3c:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d5a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32d78
    mova @(DAT_ce32d74,pc),r0
    bra LAB_ce32d7c
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d4e:
    #data 0x041c
DAT_ce32d50:
    #data 0x0525
DAT_ce32d52:
    #data 0x01fe
DAT_ce32d54:
    #data 0x0340
DAT_ce32d56:
    #data 0x0300
DAT_ce32d58:
    #data 0x01a1
DAT_ce32d5a:
    #data 0x01d2
    #align4

PTR_ce32d5c:
    #data loc_8c034dee
DAT_ce32d60:
    #data 0x43092492
PTR_ce32d64:
    #data loc_8c2896b0
PTR_ce32d68:
    #data loc_8c05218a
DAT_ce32d6c:
    #data 0xc1555555
DAT_ce32d70:
    #data 0x41555555
DAT_ce32d74:
    #data 0x3f200000

;=============================================

LAB_ce32d78:
    mova @(DAT_ce32ebc,pc),r0
    fmov.s @r0,fr3

LAB_ce32d7c:
    mov 0x68,r0
    mov.l @(PTR_ce32ec8,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32ec0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32ec4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x0E,r6
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce32d9a:
    mov.w @(DAT_ce32eae,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32dde
    mov 0x04,r0
    fldi0 fr4
    mov.b r0,@(0x6,r14)
    mov 0x01,r3
    mov.w @(DAT_ce32eae,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32eb0,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32ecc,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32ec8,pc),r2
    mov r14,r4
    mov 0x0F,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32dde:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32de4:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32ed0,pc),r3
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
    mov.w @(DAT_ce32eae,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32e80
    mov.w @(DAT_ce32eb2,pc),r2
    add r14,r2
    mov.b @(0x1,r2),r0
    tst r0,r0
    bt LAB_ce32e4e
    mov.w @(DAT_ce32eb2,pc),r3
    mov 0x00,r0
    mov 0x07,r5
    add r14,r3
    mov.b r0,@(0x1,r3)
    mov.l @(PTR_ce32ed4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32e4e:
    mov.w @(DAT_ce32eb4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32ea8
    mov.w @(DAT_ce32eb6,pc),r0
    mov.w @(DAT_ce32eb8,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce32e6c
    mova @(DAT_ce32ed8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    bra LAB_ce32ea8
    fmov fr3,@(r0,r14)

LAB_ce32e6c:
    mov.w @(r0,r14),r1
    mov.w @(DAT_ce32eba,pc),r3
    extu.w r1,r1
    tst r3,r1
    bt LAB_ce32ea8
    mova @(DAT_ce32edc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    bra LAB_ce32ea8
    fmov fr3,@(r0,r14)

LAB_ce32e80:
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32eae,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32eb0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32ecc,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32ec8,pc),r2
    mov r14,r4
    mov 0x0F,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32ea8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32eae:
    #data 0x041c
DAT_ce32eb0:
    #data 0x01f9
DAT_ce32eb2:
    #data 0x0150
DAT_ce32eb4:
    #data 0x0525
DAT_ce32eb6:
    #data 0x0340
DAT_ce32eb8:
    #data 0x0800
DAT_ce32eba:
    #data 0x0400
    #align4

DAT_ce32ebc:
    #data 0xbf200000
DAT_ce32ec0:
    #data 0x414db6db
DAT_ce32ec4:
    #data 0xbf4db6db
PTR_ce32ec8:
    #data loc_8c034e8c
PTR_ce32ecc:
    #data loc_8c0511b4
PTR_ce32ed0:
    #data loc_8c034dee
PTR_ce32ed4:
    #data loc_8c0e1960
DAT_ce32ed8:
    #data 0xc0d55555
DAT_ce32edc:
    #data 0x40d55555

;=============================================

LAB_ce32ee0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33020,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32f0c
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33024,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f0c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f12:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33028,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce33004,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f28:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33006,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32f48
    mov.w @(DAT_ce3300a,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33008,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32f48:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3302c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3300c,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov 0x16,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3300e,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33030,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33034,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r3
    mov 0x00,r0
    mov 0x15,r5
    mov r14,r4
    mov.b r0,@(0xc,r3)
    mov 0x10,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33038,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f98:
    mov.w @(DAT_ce33010,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33012,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33006,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32fb8
    bra LAB_ce32fba
    mov 0x02,r3

LAB_ce32fb8:
    mov 0x00,r3

LAB_ce32fba:
    mov.w @(DAT_ce33016,pc),r2
    mov.w @(DAT_ce33014,pc),r0
    add r14,r2
    mov.b r3,@(r0,r14)
    mov.b @(0x1,r2),r0
    tst r0,r0
    bt LAB_ce32fcc
    mov 0x01,r0
    mov.b r0,@(0x4,r5)

LAB_ce32fcc:
    mov.w @(DAT_ce33018,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf/s LAB_ce32fdc
    mov r14,r4
    mov.w @(DAT_ce33018,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)

LAB_ce32fdc:
    mov.l @(PTR_ce33020,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32ffe
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3301a,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3301c,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce32ffe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33004:
    #data 0x02a4
DAT_ce33006:
    #data 0x0255
DAT_ce33008:
    #data 0x00ff
DAT_ce3300a:
    #data 0x03f0
DAT_ce3300c:
    #data 0x041c
DAT_ce3300e:
    #data 0x01f9
DAT_ce33010:
    #data 0x03f8
DAT_ce33012:
    #data 0x0328
DAT_ce33014:
    #data 0x03f1
DAT_ce33016:
    #data 0x0150
DAT_ce33018:
    #data 0x0141
DAT_ce3301a:
    #data 0x012c
DAT_ce3301c:
    #data 0x01f5
    #align4

PTR_ce33020:
    #data loc_8c034dee
PTR_ce33024:
    #data loc_8c051648
PTR_ce33028:
    #data PTR_ce34f80
PTR_ce3302c:
    #data loc_8c05218a
PTR_ce33030:
    #data loc_8c042008
PTR_ce33034:
    #data loc_8c05115a
PTR_ce33038:
    #data loc_8c034e8c

;=============================================

LAB_ce3303c:
    mov.w @(DAT_ce33138,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3313a,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3313c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3305c
    bra LAB_ce3305e
    mov 0x02,r3

LAB_ce3305c:
    mov 0x00,r3

LAB_ce3305e:
    mov.w @(DAT_ce3313e,pc),r0
    mov 0x00,r2
    mov 0x01,r4
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33140,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33142,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce3309e
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3314c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33140,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33150,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33154,pc),r3
    mov r14,r4
    mov 0x11,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3309e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce330a4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33138,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3313a,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3313c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce330c8
    bra LAB_ce330ca
    mov 0x02,r3

LAB_ce330c8:
    mov 0x00,r3

LAB_ce330ca:
    mov.w @(DAT_ce33144,pc),r2
    mov.w @(DAT_ce3313e,pc),r0
    add r14,r2
    mov.b r3,@(r0,r14)
    mov.b @(0x1,r2),r0
    tst r0,r0
    bt/s LAB_ce330de
    mov 0x00,r13
    mov 0x01,r0
    mov.b r0,@(0x4,r5)

LAB_ce330de:
    mov.w @(DAT_ce33146,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce330f0
    mov.l @(PTR_ce33158,pc),r3
    mov 0x00,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce330f0:
    mov.l @(PTR_ce3315c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3312e
    mov.b @(0x6,r14),r0
    mov r15,r5
    mov.l @(PTR_ce33168,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33148,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce33160,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33164,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3314a,pc),r0
    mov 0x0A,r2
    mov.b r2,@(r0,r14)

LAB_ce3312e:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33138:
    #data 0x03f8
DAT_ce3313a:
    #data 0x0328
DAT_ce3313c:
    #data 0x0255
DAT_ce3313e:
    #data 0x03f1
DAT_ce33140:
    #data 0x012c
DAT_ce33142:
    #data 0x01f5
DAT_ce33144:
    #data 0x0150
DAT_ce33146:
    #data 0x0141
DAT_ce33148:
    #data 0x03f0
DAT_ce3314a:
    #data 0x01ed
    #align4

PTR_ce3314c:
    #data loc_8c098aa4
PTR_ce33150:
    #data loc_8c05218a
PTR_ce33154:
    #data loc_8c034e8c
PTR_ce33158:
    #data loc_8c035162
PTR_ce3315c:
    #data loc_8c034dee
DAT_ce33160:
    #data 0xc2baaaaa
DAT_ce33164:
    #data 0x432b6db6
PTR_ce33168:
    #data loc_8c050834

;=============================================

LAB_ce3316c:
    mov.w @(DAT_ce3325a,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    fldi0 fr4
    mov.b r3,@(r0,r4)
    mov 0x00,r6
    mov.w @(DAT_ce3325c,pc),r0
    mov 0x3D,r3
    mov.b r2,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x04,r0
    mov.w r0,@(0x1c,r4)
    mov.w @(DAT_ce3325e,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce33260,pc),r0
    mov.b r6,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce33262,pc),r0
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r6,@(r0,r4)
    add 0xF2,r0
    mov.l @(PTR_ce33268,pc),r3
    mov.b r6,@(r0,r4)
    add 0x26,r0
    mov.l r6,@(r0,r4)
    mov 0x12,r6
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x01,r0
    mov.l @(PTR_ce3326c,pc),r2
    mov.b r0,@(0xc,r5)
    jmp @r2
    mov 0x15,r5

LAB_ce331d2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3325a,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3325c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce33252
    mov.l @(PTR_ce33270,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33264,pc),r3
    add r14,r3
    mov.b @(0x1,r3),r0
    tst r0,r0
    bt LAB_ce33252
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33260,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @r15,r2
    mov.b r0,@(0x2,r2)
    mov.w @(DAT_ce33266,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33224
    mova @(DAT_ce33274,pc),r0
    bra LAB_ce33228
    fmov.s @r0,fr3

LAB_ce33224:
    mova @(DAT_ce33278,pc),r0
    fmov.s @r0,fr3

LAB_ce33228:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33266,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3323a
    mova @(DAT_ce3327c,pc),r0
    bra LAB_ce3323e
    fmov.s @r0,fr3

LAB_ce3323a:
    mova @(DAT_ce33280,pc),r0
    fmov.s @r0,fr3

LAB_ce3323e:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33284,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33288,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce33252:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3325a:
    #data 0x03f8
DAT_ce3325c:
    #data 0x0328
DAT_ce3325e:
    #data 0x041c
DAT_ce33260:
    #data 0x01f9
DAT_ce33262:
    #data 0x01a1
DAT_ce33264:
    #data 0x0150
DAT_ce33266:
    #data 0x01d2
    #align4

PTR_ce33268:
    #data loc_8c2896b0
PTR_ce3326c:
    #data loc_8c034e8c
PTR_ce33270:
    #data loc_8c034dee
DAT_ce33274:
    #data 0x41555555
DAT_ce33278:
    #data 0xc1555555
DAT_ce3327c:
    #data 0xbea00000
DAT_ce33280:
    #data 0x3ea00000
DAT_ce33284:
    #data 0x40cdb6db
DAT_ce33288:
    #data 0xbf4db6db

;=============================================

LAB_ce3328c:
    mov.w @(DAT_ce333d4,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov 0x5C,r1
    mov r5,r13
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce333d6,pc),r0
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
    mov 0x6C,r1
    mov.l @(PTR_ce333e4,pc),r3
    add r14,r1
    mov 0x60,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce333d8,pc),r0
    mov 0x3D,r5
    mov.l @(PTR_ce333e8,pc),r6
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce33314
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov.b r5,@(r0,r14)
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
    mov 0x02,r0
    mov.b r0,@(0x5,r13)

LAB_ce33314:
    mov.b @(0x5,r13),r0
    add 0xFF,r0
    mov.b r0,@(0x5,r13)
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce33348
    mov.w @(DAT_ce333da,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33348
    mov.w @(DAT_ce333dc,pc),r0
    mov.b r5,@(r0,r14)
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

LAB_ce33348:
    mov.w @(DAT_ce333de,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33408
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce333de,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x2,r13)
    mov.w @(DAT_ce333dc,pc),r0
    mov.b r5,@(r0,r14)
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
    mov.w @(DAT_ce333e0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33396
    mova @(DAT_ce333ec,pc),r0
    bra LAB_ce3339a
    fmov.s @r0,fr3

LAB_ce33396:
    mova @(DAT_ce333f0,pc),r0
    fmov.s @r0,fr3

LAB_ce3339a:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce333e0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce333ac
    mova @(DAT_ce333f4,pc),r0
    bra LAB_ce333b0
    fmov.s @r0,fr3

LAB_ce333ac:
    mova @(DAT_ce333f8,pc),r0
    fmov.s @r0,fr3

LAB_ce333b0:
    mov 0x68,r0
    mov.l @(PTR_ce33404,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce333fc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov r14,r4
    mov 0x13,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33400,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce333d4:
    #data 0x03f8
DAT_ce333d6:
    #data 0x0328
DAT_ce333d8:
    #data 0x0141
DAT_ce333da:
    #data 0x019e
DAT_ce333dc:
    #data 0x01a1
DAT_ce333de:
    #data 0x041c
DAT_ce333e0:
    #data 0x01d2
    #align4

PTR_ce333e4:
    #data loc_8c034dee
PTR_ce333e8:
    #data loc_8c2896b0
DAT_ce333ec:
    #data 0x41ad5555
DAT_ce333f0:
    #data 0xc1ad5555
DAT_ce333f4:
    #data 0xbea00000
DAT_ce333f8:
    #data 0x3ea00000
DAT_ce333fc:
    #data 0x40cdb6db
DAT_ce33400:
    #data 0xbf4db6db
PTR_ce33404:
    #data loc_8c034e8c

;=============================================

LAB_ce33408:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33410:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33506,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33508,pc),r0
    mov 0x5C,r1
    add r14,r1
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
    mov.l @(PTR_ce33514,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3350a,pc),r0
    mov 0x3D,r6
    mov.l @(PTR_ce33518,pc),r5
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce3349a
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x60,r0
    mov.b r6,@(r0,r14)
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
    mov 0x02,r0
    mov.l @r15,r3
    mov.b r0,@(0x5,r3)

LAB_ce3349a:
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0xFF,r0
    mov.b r0,@(0x5,r3)
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce334d0
    mov.w @(DAT_ce3350c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce334d0
    mov.w @(DAT_ce3350e,pc),r0
    mov.b r6,@(r0,r14)
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

LAB_ce334d0:
    mov.w @(DAT_ce33510,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce334fe
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov 0x14,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33510,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33512,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3351c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce334fe:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33506:
    #data 0x03f8
DAT_ce33508:
    #data 0x0328
DAT_ce3350a:
    #data 0x0141
DAT_ce3350c:
    #data 0x019e
DAT_ce3350e:
    #data 0x01a1
DAT_ce33510:
    #data 0x041c
DAT_ce33512:
    #data 0x01f9
    #align4

PTR_ce33514:
    #data loc_8c034dee
PTR_ce33518:
    #data loc_8c2896b0
PTR_ce3351c:
    #data loc_8c034e8c

;=============================================

LAB_ce33520:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce335ce,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce335d0,pc),r0
    mov.l @(PTR_ce335dc,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce335d2,pc),r2
    add r14,r2
    mov.b @(0x1,r2),r0
    tst r0,r0
    bt LAB_ce335c6
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.w @(DAT_ce335d2,pc),r3
    add 0x01,r0
    add r14,r3
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x1,r3)
    mov 0x3D,r3
    mov.w @(DAT_ce335d4,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce335d6,pc),r0
    mov.l @(PTR_ce335e0,pc),r3
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
    mov 0x02,r0
    mov.l @r15,r2
    mov.b r0,@(0x5,r2)
    mov.w @(DAT_ce335d8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33590
    mova @(DAT_ce335e4,pc),r0
    bra LAB_ce33594
    fmov.s @r0,fr3

LAB_ce33590:
    mova @(DAT_ce335e8,pc),r0
    fmov.s @r0,fr3

LAB_ce33594:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce335d8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce335a6
    mova @(DAT_ce335ec,pc),r0
    bra LAB_ce335aa
    fmov.s @r0,fr3

LAB_ce335a6:
    mova @(DAT_ce335f0,pc),r0
    fmov.s @r0,fr3

LAB_ce335aa:
    mov 0x68,r0
    fldi0 fr4
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov r14,r4
    mov 0x29,r5
    fmov fr4,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce335f4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce335c6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce335ce:
    #data 0x03f8
DAT_ce335d0:
    #data 0x0328
DAT_ce335d2:
    #data 0x0150
DAT_ce335d4:
    #data 0x01a1
DAT_ce335d6:
    #data 0x01ac
DAT_ce335d8:
    #data 0x01d2
    #align4

PTR_ce335dc:
    #data loc_8c034dee
PTR_ce335e0:
    #data loc_8c2896b0
DAT_ce335e4:
    #data 0x41baaaaa
DAT_ce335e8:
    #data 0xc1baaaaa
DAT_ce335ec:
    #data 0xbf555555
DAT_ce335f0:
    #data 0x3f555555
PTR_ce335f4:
    #data loc_8c04223a

;=============================================

LAB_ce335f8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3371a,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3371c,pc),r0
    fldi0 fr15
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3371e,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x02,r0
    bf/s LAB_ce33642
    mov 0x00,r13
    mov.w @(DAT_ce33720,pc),r0
    mov.w @(DAT_ce3371e,pc),r3
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    add r14,r3
    mov.w @(DAT_ce33722,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x1,r3)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce33642:
    mov.l @(PTR_ce3372c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce33730,pc),r3
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
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce336ac
    mov 0x5C,r0
    mov r14,r4
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33734,pc),r3
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce336ac:
    mov.l @r15,r2
    mov.b @(0x5,r2),r0
    add 0xFF,r0
    mov.b r0,@(0x5,r2)
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce336e6
    mov.w @(DAT_ce33724,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce336e6
    mov.w @(DAT_ce33726,pc),r0
    mov 0x3E,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33738,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce336e6:
    add 0x04,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce336f2:
    mov r4,r3
    mov.l @(PTR_ce3373c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33704:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33740,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce33728,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3371a:
    #data 0x03f8
DAT_ce3371c:
    #data 0x0328
DAT_ce3371e:
    #data 0x0150
DAT_ce33720:
    #data 0x03f9
DAT_ce33722:
    #data 0x0327
DAT_ce33724:
    #data 0x019e
DAT_ce33726:
    #data 0x01a1
DAT_ce33728:
    #data 0x02a4
    #align4

PTR_ce3372c:
    #data loc_8c0511e2
PTR_ce33730:
    #data loc_8c034dee
PTR_ce33734:
    #data loc_8c051648
PTR_ce33738:
    #data loc_8c2896b0
PTR_ce3373c:
    #data PTR_ce34fa8
PTR_ce33740:
    #data PTR_ce34fb0

;=============================================

LAB_ce33744:
    mov.w @(DAT_ce3387c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce33764
    mov r5,r13
    mov.w @(DAT_ce33880,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3387e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33764:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33890,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33882,pc),r0
    mov 0x00,r4
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33884,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov r4,r0
    nop
    mov.l @(PTR_ce33894,pc),r3
    mov.b r0,@(0x8,r13)
    mov.b r0,@(0x6,r13)
    mov.b r0,@(0x7,r13)
    mov.b r0,@(0x9,r13)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov 0x15,r6
    mov.l @(PTR_ce33898,pc),r2
    mov r6,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce337b2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33886,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33888,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3387c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce337d4
    bra LAB_ce337d6
    mov 0x02,r3

LAB_ce337d4:
    mov 0x00,r3

LAB_ce337d6:
    mov.w @(DAT_ce3388a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3389c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33826
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce338a8,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r6
    mov.w @(DAT_ce33880,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce338a0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce338a4,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33898,pc),r2
    mov 0x15,r5
    mov 0x28,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce338ac,pc),r3
    mov 0x08,r5
    jsr @r3
    mov r14,r4

LAB_ce33826:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3382e:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33886,pc),r0
    mov 0x02,r13
    mov r4,r14
    mov 0x05,r3
    mov.l r5,@r15
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33888,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3389c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33928
    mov.b @(0x7,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33884,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3388c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce338b4
    mova @(DAT_ce338b0,pc),r0
    bra LAB_ce338b8
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3387c:
    #data 0x0255
DAT_ce3387e:
    #data 0x00ff
DAT_ce33880:
    #data 0x03f0
DAT_ce33882:
    #data 0x041c
DAT_ce33884:
    #data 0x01f9
DAT_ce33886:
    #data 0x03f8
DAT_ce33888:
    #data 0x0328
DAT_ce3388a:
    #data 0x03f1
DAT_ce3388c:
    #data 0x01d2
    #align4

PTR_ce33890:
    #data loc_8c05218a
PTR_ce33894:
    #data loc_8c05115a
PTR_ce33898:
    #data loc_8c034e8c
PTR_ce3389c:
    #data loc_8c034dee
DAT_ce338a0:
    #data 0x42855555
DAT_ce338a4:
    #data 0x431a4924
PTR_ce338a8:
    #data loc_8c050834
PTR_ce338ac:
    #data loc_8c0e19ec
DAT_ce338b0:
    #data 0x41700000

;=============================================

LAB_ce338b4:
    mova @(DAT_ce33980,pc),r0
    fmov.s @r0,fr3

LAB_ce338b8:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x41,r3
    mov.w @(DAT_ce33976,pc),r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33984,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @r15,r2
    mov r13,r0
    nop
    mov.b r0,@(0x5,r2)
    mov 0x60,r0
    mov.w r0,@(0x1c,r14)
    mov 0x07,r0
    mov.w r0,@(0x1e,r14)
    mov 0x25,r0
    mov.l @(PTR_ce33988,pc),r2
    mov r4,r5
    mov.l r4,@(0x14,r14)
    mov 0x01,r7
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3398c,pc),r3
    mov 0x09,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33990,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov r14,r4
    mov 0x15,r5
    mov 0x16,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33994,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33928:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33932:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r3
    mov.l r12,@-r15
    mov 0x00,r12
    mov.l r11,@-r15
    mov 0x01,r11
    mov.w @(DAT_ce33978,pc),r0
    mov.l r10,@-r15
    mov 0x02,r10
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.b r10,@(r0,r14)
    mov.w @(DAT_ce3397a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(0x14,r14),r4
    tst r4,r4
    bt/s LAB_ce339ac
    mov r5,r13
    mov.w @(DAT_ce3397c,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce339ac
    mov.w @(DAT_ce3397e,pc),r0
    mov 0x5C,r8
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3399c
    add r14,r8
    mov.l @(DAT_ce33998,pc),r1
    lds r1,FPUL
    bra LAB_ce339a2
    fsts FPUL,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33976:
    #data 0x01a1
DAT_ce33978:
    #data 0x03f8
DAT_ce3397a:
    #data 0x0328
DAT_ce3397c:
    #data 0x019f
DAT_ce3397e:
    #data 0x01d2
    #align4

DAT_ce33980:
    #data 0xc1700000
PTR_ce33984:
    #data loc_8c2896b0
PTR_ce33988:
    #data loc_8c03544c
PTR_ce3398c:
    #data loc_8c0e1960
PTR_ce33990:
    #data loc_8c099258
PTR_ce33994:
    #data loc_8c034e8c
DAT_ce33998:
    #data 0xbfa00000

;=============================================

LAB_ce3399c:
    mov.l @(DAT_ce33a80,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce339a2:
    fmov.s @r8,fr2
    mov 0x06,r0
    fsub fr3,fr2
    fmov.s fr2,@r8
    mov.b r0,@(0x7,r13)

LAB_ce339ac:
    mov.w @(DAT_ce33a72,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce339ba
    mov r11,r0
    nop
    mov.b r0,@(0x4,r13)

LAB_ce339ba:
    mov.w @(DAT_ce33a74,pc),r0
    mov.b r11,@(r0,r14)
    add 0xDD,r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bf LAB_ce339d0
    mov.w @(DAT_ce33a76,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce339e6

LAB_ce339d0:
    extu.b r4,r2
    tst r2,r2
    bf LAB_ce339da
    bra LAB_ce33b26
    nop

LAB_ce339da:
    mov.w @(DAT_ce33a76,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce339e6
    bra LAB_ce33b26
    nop

LAB_ce339e6:
    mov.b @(0x7,r13),r0
    tst r0,r0
    bt LAB_ce33a18
    mov.b @(0x7,r13),r0
    add 0xFF,r0
    mov.b r0,@(0x7,r13)
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce33a50
    mov.w @(DAT_ce33a78,pc),r0
    mov 0x68,r8
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce33a0c
    add r14,r8
    mov.l @(DAT_ce33a84,pc),r1
    lds r1,FPUL
    bra LAB_ce33a12
    fsts FPUL,fr3

LAB_ce33a0c:
    mov.l @(DAT_ce33a88,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce33a12:
    fmov.s @r8,fr2
    fadd fr3,fr2
    fmov.s fr2,@r8

LAB_ce33a18:
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

LAB_ce33a50:
    mov.l @(PTR_ce33a8c,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce33aba
    mov.w @(DAT_ce33a7a,pc),r0
    mov.b r11,@(r0,r14)
    mov.b @(0x9,r13),r0
    add 0x01,r0
    mov.b r0,@(0x9,r13)
    mov.w @(DAT_ce33a7c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce33a90
    mov.b @(0x9,r13),r0
    bra LAB_ce33a92
    mov 0x06,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a72:
    #data 0x0141
DAT_ce33a74:
    #data 0x01f5
DAT_ce33a76:
    #data 0x01fd
DAT_ce33a78:
    #data 0x01d2
DAT_ce33a7a:
    #data 0x0142
DAT_ce33a7c:
    #data 0x0525
    #align4

DAT_ce33a80:
    #data 0x3fa00000
DAT_ce33a84:
    #data 0x3dd55555
DAT_ce33a88:
    #data 0xbdd55555
PTR_ce33a8c:
    #data loc_8c055d54

;=============================================

LAB_ce33a90:
    mov r10,r4

LAB_ce33a92:
    extu.b r4,r4
    extu.b r0,r0
    cmp/ge r4,r0
    bf LAB_ce33aba
    mov r12,r0
    nop
    mov.b r0,@(0x9,r13)
    mov 0x0A,r3
    mov.w @(0x1e,r14),r0
    cmp/ge r3,r0
    bf LAB_ce33aae
    mov r11,r0
    nop
    mov.b r0,@(0x6,r13)

LAB_ce33aae:
    mov.b @(0x6,r13),r0
    tst r0,r0
    bf LAB_ce33aba
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)

LAB_ce33aba:
    mov.l @(PTR_ce33bd0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bf LAB_ce33b26
    mov.w @(DAT_ce33bc4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33b62
    mov.b @(0x5,r13),r0
    add 0xFF,r0
    mov.b r0,@(0x5,r13)
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce33b62
    mov.b @(0x8,r13),r0
    mov 0x0A,r3
    add 0x01,r0
    mov.b r0,@(0x8,r13)
    extu.b r0,r0
    cmp/ge r3,r0
    bt LAB_ce33b62
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce33b62
    mov.w @(DAT_ce33bc6,pc),r0
    mov 0x41,r2
    mov.l @(PTR_ce33bd4,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
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
    mov r10,r0
    nop
    bra LAB_ce33b62
    mov.b r0,@(0x5,r13)

LAB_ce33b26:
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce33bd8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33bc8,pc),r0
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce33bca,pc),r0
    mov.b r12,@(r0,r14)
    add 0x01,r0
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33bdc,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33be0,pc),r3
    mov 0x17,r6
    mov r14,r4
    mov 0x15,r5
    mov.l @r15+,r8
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33b62:
    lds.l @r15+,PR
    mov.l @r15+,r8
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33b72:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33bd0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce33ba2
    mov.w @(DAT_ce33bcc,pc),r3
    add r14,r3
    mov.b @(0x1,r3),r0
    tst r0,r0
    bt LAB_ce33bbe
    mov.w @(DAT_ce33bcc,pc),r3
    mov 0x00,r4
    mov.w @(DAT_ce33bce,pc),r0
    add r14,r3
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x1,r3)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33ba2:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33be4,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33bbe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33bc4:
    #data 0x019e
DAT_ce33bc6:
    #data 0x01a1
DAT_ce33bc8:
    #data 0x03f9
DAT_ce33bca:
    #data 0x0327
DAT_ce33bcc:
    #data 0x0150
DAT_ce33bce:
    #data 0x01f9
    #align4

PTR_ce33bd0:
    #data loc_8c034dee
PTR_ce33bd4:
    #data loc_8c2896b0
PTR_ce33bd8:
    #data loc_8c035162
PTR_ce33bdc:
    #data loc_8c0511b4
PTR_ce33be0:
    #data loc_8c034e8c
PTR_ce33be4:
    #data loc_8c051648

;=============================================

LAB_ce33be8:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33d14,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce33d02,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce33bfe:
    mov.w @(DAT_ce33d04,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33c1a
    mov.w @(DAT_ce33d08,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33d06,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33c1a:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33d18,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x00,r0
    mov.b r0,@(0x8,r5)
    mov.b r0,@(0x6,r5)
    mov.b r0,@(0x7,r5)
    mov.b r0,@(0x9,r5)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33d1c,pc),r2
    mov r14,r4
    mov 0x18,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33c3e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33d0a,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33d0c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33d04,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33c60
    bra LAB_ce33c62
    mov 0x02,r3

LAB_ce33c60:
    mov 0x00,r3

LAB_ce33c62:
    mov.w @(DAT_ce33d0e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33d20,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33cb2
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce33d2c,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r6
    mov.w @(DAT_ce33d08,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33d24,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33d28,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33d1c,pc),r2
    mov 0x15,r5
    mov 0x29,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33d30,pc),r3
    mov 0x0A,r5
    jsr @r3
    mov r14,r4

LAB_ce33cb2:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33cba:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33d0a,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33d0c,pc),r0
    mov.l @(PTR_ce33d20,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33d96
    mov.b @(0x7,r14),r0
    fldi0 fr4
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
    mov.w @(DAT_ce33d10,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33d38
    mova @(DAT_ce33d34,pc),r0
    bra LAB_ce33d3c
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33d02:
    #data 0x02a4
DAT_ce33d04:
    #data 0x0255
DAT_ce33d06:
    #data 0x00ff
DAT_ce33d08:
    #data 0x03f0
DAT_ce33d0a:
    #data 0x03f8
DAT_ce33d0c:
    #data 0x0328
DAT_ce33d0e:
    #data 0x03f1
DAT_ce33d10:
    #data 0x01d2
    #align4

PTR_ce33d14:
    #data PTR_ce34fc4
PTR_ce33d18:
    #data loc_8c05218a
PTR_ce33d1c:
    #data loc_8c034e8c
PTR_ce33d20:
    #data loc_8c034dee
DAT_ce33d24:
    #data 0x41555555
DAT_ce33d28:
    #data 0x435edb6d
PTR_ce33d2c:
    #data loc_8c050834
PTR_ce33d30:
    #data loc_8c0e19ec
DAT_ce33d34:
    #data 0x41700000

;=============================================

LAB_ce33d38:
    mova @(DAT_ce33dec,pc),r0
    fmov.s @r0,fr3

LAB_ce33d3c:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x41,r3
    mov.w @(DAT_ce33de2,pc),r0
    mov 0x00,r4
    mov 0x0B,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33df0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x02,r0
    mov.l @r15,r2
    mov.b r0,@(0x5,r2)
    mov 0x60,r0
    mov.w r0,@(0x1c,r14)
    mov 0x07,r0
    mov.l @(PTR_ce33df4,pc),r2
    mov.w r0,@(0x1e,r14)
    mov.l r4,@(0x14,r14)
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33df8,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x15,r5
    mov 0x19,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33dfc,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce33d96:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33d9e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r3
    mov.l r12,@-r15
    mov 0x00,r12
    mov.l r11,@-r15
    mov 0x01,r11
    mov.w @(DAT_ce33de4,pc),r0
    mov.l r10,@-r15
    mov 0x02,r10
    mov.l r8,@-r15
    sts.l PR,@-r15
    mov.b r10,@(r0,r14)
    mov.w @(DAT_ce33de6,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(0x14,r14),r4
    tst r4,r4
    bt/s LAB_ce33e14
    mov r5,r13
    mov.w @(DAT_ce33de8,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce33e14
    mov.w @(DAT_ce33dea,pc),r0
    mov 0x5C,r8
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce33e04
    add r14,r8
    mov.l @(DAT_ce33e00,pc),r1
    lds r1,FPUL
    bra LAB_ce33e0a
    fsts FPUL,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33de2:
    #data 0x01a1
DAT_ce33de4:
    #data 0x03f8
DAT_ce33de6:
    #data 0x0328
DAT_ce33de8:
    #data 0x019f
DAT_ce33dea:
    #data 0x01d2
    #align4

DAT_ce33dec:
    #data 0xc1700000
PTR_ce33df0:
    #data loc_8c2896b0
PTR_ce33df4:
    #data loc_8c0e1960
PTR_ce33df8:
    #data loc_8c099258
PTR_ce33dfc:
    #data loc_8c034e8c
DAT_ce33e00:
    #data 0xbfa00000

;=============================================

LAB_ce33e04:
    mov.l @(DAT_ce33f08,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce33e0a:
    fmov.s @r8,fr2
    mov 0x06,r0
    fsub fr3,fr2
    fmov.s fr2,@r8
    mov.b r0,@(0x7,r13)

LAB_ce33e14:
    mov.w @(DAT_ce33ef8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33e22
    mov r11,r0
    nop
    mov.b r0,@(0x4,r13)

LAB_ce33e22:
    mov.w @(DAT_ce33efa,pc),r0
    mov.b r11,@(r0,r14)
    add 0x17,r0
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce33efc,pc),r0
    mov.w @(r0,r4),r3
    cmp/pl r3
    bt LAB_ce33e44
    mov.b @(0x2,r4),r0
    mov 0x02,r2
    mov.l @(PTR_ce33f0c,pc),r1
    extu.b r0,r0
    mov.b @(r0,r1),r3
    cmp/gt r2,r3
    bt LAB_ce33e44
    bra LAB_ce33fb2
    nop

LAB_ce33e44:
    mov.w @(DAT_ce33efe,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bf LAB_ce33e56
    mov.w @(DAT_ce33f00,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce33e6c

LAB_ce33e56:
    extu.b r4,r2
    tst r2,r2
    bf LAB_ce33e60
    bra LAB_ce33fb2
    nop

LAB_ce33e60:
    mov.w @(DAT_ce33f00,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce33e6c
    bra LAB_ce33fb2
    nop

LAB_ce33e6c:
    mov.b @(0x7,r13),r0
    tst r0,r0
    bt LAB_ce33e9e
    mov.b @(0x7,r13),r0
    add 0xFF,r0
    mov.b r0,@(0x7,r13)
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce33ed6
    mov.w @(DAT_ce33efe,pc),r0
    mov 0x68,r8
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce33e92
    add r14,r8
    mov.l @(DAT_ce33f10,pc),r1
    lds r1,FPUL
    bra LAB_ce33e98
    fsts FPUL,fr3

LAB_ce33e92:
    mov.l @(DAT_ce33f14,pc),r2
    lds r2,FPUL
    fsts FPUL,fr3

LAB_ce33e98:
    fmov.s @r8,fr2
    fadd fr3,fr2
    fmov.s fr2,@r8

LAB_ce33e9e:
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

LAB_ce33ed6:
    mov.l @(PTR_ce33f18,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce33f46
    mov.w @(DAT_ce33f02,pc),r0
    mov.b r11,@(r0,r14)
    mov.b @(0x9,r13),r0
    add 0x01,r0
    mov.b r0,@(0x9,r13)
    mov.w @(DAT_ce33f04,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce33f1c
    mov.b @(0x9,r13),r0
    bra LAB_ce33f1e
    mov 0x06,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33ef8:
    #data 0x0141
DAT_ce33efa:
    #data 0x01f5
DAT_ce33efc:
    #data 0x0420
DAT_ce33efe:
    #data 0x01d2
DAT_ce33f00:
    #data 0x01fd
DAT_ce33f02:
    #data 0x0142
DAT_ce33f04:
    #data 0x0525
    #align4

DAT_ce33f08:
    #data 0x3fa00000
PTR_ce33f0c:
    #data loc_8c289626
DAT_ce33f10:
    #data 0x3dd55555
DAT_ce33f14:
    #data 0xbdd55555
PTR_ce33f18:
    #data loc_8c055d54

;=============================================

LAB_ce33f1c:
    mov r10,r4

LAB_ce33f1e:
    extu.b r4,r4
    extu.b r0,r0
    cmp/ge r4,r0
    bf LAB_ce33f46
    mov r12,r0
    nop
    mov.b r0,@(0x9,r13)
    mov 0x0A,r3
    mov.w @(0x1e,r14),r0
    cmp/ge r3,r0
    bf LAB_ce33f3a
    mov r11,r0
    nop
    mov.b r0,@(0x6,r13)

LAB_ce33f3a:
    mov.b @(0x6,r13),r0
    tst r0,r0
    bf LAB_ce33f46
    mov.w @(0x1e,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1e,r14)

LAB_ce33f46:
    mov.l @(PTR_ce34008,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bf LAB_ce33fb2
    mov.w @(DAT_ce34000,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33ff0
    mov.b @(0x5,r13),r0
    add 0xFF,r0
    mov.b r0,@(0x5,r13)
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce33ff0
    mov.b @(0x8,r13),r0
    mov 0x0A,r3
    add 0x01,r0
    mov.b r0,@(0x8,r13)
    extu.b r0,r0
    cmp/ge r3,r0
    bt LAB_ce33ff0
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce33ff0
    mov.w @(DAT_ce34002,pc),r0
    mov 0x41,r2
    mov.l @(PTR_ce3400c,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
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
    mov r10,r0
    nop
    bra LAB_ce33ff0
    mov.b r0,@(0x5,r13)

LAB_ce33fb2:
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce34010,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce34004,pc),r0
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce34006,pc),r0
    mov.b r12,@(r0,r14)
    add 0x01,r0
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce34014,pc),r0
    mov.l @(PTR_ce34018,pc),r3
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x30,r6
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    mov.l @r15+,r8
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33ff0:
    lds.l @r15+,PR
    mov.l @r15+,r8
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34000:
    #data 0x019e
DAT_ce34002:
    #data 0x01a1
DAT_ce34004:
    #data 0x03f9
DAT_ce34006:
    #data 0x0327
    #align4

PTR_ce34008:
    #data loc_8c034dee
PTR_ce3400c:
    #data loc_8c2896b0
PTR_ce34010:
    #data loc_8c035162
DAT_ce34014:
    #data 0xbf4db6db
PTR_ce34018:
    #data loc_8c034e8c

;=============================================

LAB_ce3401c:
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
    mov.w @(DAT_ce34166,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce34072
    mov.l @(PTR_ce34170,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3407c

LAB_ce34072:
    lds.l @r15+,PR
    mov.l @(PTR_ce34174,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3407c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34082:
    mov r4,r3
    mov.l @(PTR_ce34178,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34094:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x3C,r3
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x08,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34168,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3417c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce34180,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34184,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34166,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce34188,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3416a,pc),r0
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
    mov.l @(PTR_ce3418c,pc),r2
    mov 0x18,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34190,pc),r3
    mov 0x1A,r6
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce34112:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34170,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3412c
    lds.l @r15+,PR
    mov.l @(PTR_ce34194,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3412c:
    mov.w @(DAT_ce3416c,pc),r2
    add r14,r2
    mov.b @(0x1,r2),r0
    tst r0,r0
    bt LAB_ce3414a
    mov.w @(DAT_ce3416c,pc),r3
    mov 0x00,r0
    mov r0,r5
    mov r14,r4
    add r14,r3
    mov.b r0,@(0x1,r3)
    lds.l @r15+,PR
    mov.l @(PTR_ce34198,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3414a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34150:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3419c,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce3416e,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34166:
    #data 0x041c
DAT_ce34168:
    #data 0x01a1
DAT_ce3416a:
    #data 0x01f9
DAT_ce3416c:
    #data 0x0150
DAT_ce3416e:
    #data 0x02a4
    #align4

PTR_ce34170:
    #data loc_8c034dee
PTR_ce34174:
    #data loc_8c05176e
PTR_ce34178:
    #data PTR_ce34fd8
PTR_ce3417c:
    #data loc_8c2896b0
PTR_ce34180:
    #data loc_8c056de4
PTR_ce34184:
    #data loc_8c05218a
PTR_ce34188:
    #data loc_8c05115a
PTR_ce3418c:
    #data loc_8c042008
PTR_ce34190:
    #data loc_8c034e8c
PTR_ce34194:
    #data loc_8c051648
PTR_ce34198:
    #data loc_8c097b64
PTR_ce3419c:
    #data PTR_ce34fe0

;=============================================

LAB_ce341a0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce342ca,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce341bc
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce3427a
    mov.l @r15+,r14

LAB_ce341bc:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce342cc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce341d8
    mov.l @(PTR_ce342d0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce342d4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce341d8:
    mov.l @(PTR_ce342d8,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce342ca,pc),r0
    mov 0x01,r3
    mov 0x00,r2
    fldi0 fr4
    mov.b r3,@(r0,r14)
    add 0xFB,r0
    mov.b r2,@(r0,r14)
    mov 0x1A,r5
    mov.w @(DAT_ce342ce,pc),r0
    mov r14,r4
    mov.l @r15,r3
    mov r2,r6
    mov.w r0,@(0xa,r3)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce342dc,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce342e0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce342e4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34220:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce342e8,pc),r3
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
    bt LAB_ce34274
    lds.l @r15+,PR
    mov.l @(PTR_ce342ec,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34274:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3427a:
    mov.w @(DAT_ce342ca,pc),r0
    mov 0x00,r3
    fldi0 fr3
    mov.b r3,@(r0,r4)
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce342f0,pc),r0
    mov.l @(PTR_ce342f4,pc),r3
    fmov.s @r0,fr3
    mov 0x6C,r0
    jmp @r3
    fmov fr3,@(r0,r4)

;=============================================

FUN_ce3429a:
    mov.w @(DAT_ce342ca,pc),r0
    mov 0x00,r3
    fldi0 fr3
    mov.b r3,@(r0,r4)
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce342f0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    rts
    fmov fr3,@(r0,r4)

LAB_ce342b8:
    mov r4,r3
    mov.l @(PTR_ce342f8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce342ca:
    #data 0x0201
DAT_ce342cc:
    #data 0x01f9
DAT_ce342ce:
    #data 0x0258
    #align4

PTR_ce342d0:
    #data loc_8c05115a
PTR_ce342d4:
    #data loc_8c053082
PTR_ce342d8:
    #data loc_8c056de4
DAT_ce342dc:
    #data 0x414db6db
DAT_ce342e0:
    #data 0xbe892492
PTR_ce342e4:
    #data loc_8c034e8c
PTR_ce342e8:
    #data loc_8c034dee
PTR_ce342ec:
    #data loc_8c051648
DAT_ce342f0:
    #data 0xbf4db6db
PTR_ce342f4:
    #data loc_8c05176e
PTR_ce342f8:
    #data PTR_ce34fe8

;=============================================

LAB_ce342fc:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce34448,pc),r3
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
    mov.w @(DAT_ce34440,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce34442,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3444c,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce34444,pc),r0
    mov 0x45,r3
    mov 0x2F,r6
    mov r14,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34450,pc),r3
    mov 0x15,r5
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
    mov.l @(PTR_ce34454,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3436c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34458,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3438c
    mov.l @(PTR_ce3445c,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3438c:
    mov.w @(DAT_ce34446,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt/s LAB_ce343ba
    mov 0x00,r4
    mov.w @(DAT_ce34446,pc),r0
    mov r15,r5
    mov.l @(PTR_ce34468,pc),r3
    mov.b r4,@(r0,r14)
    mova @(DAT_ce34460,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34464,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    bra LAB_ce343ce
    nop

LAB_ce343ba:
    mov.w @(DAT_ce34446,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce343ce
    mov.w @(DAT_ce34446,pc),r0
    mov 0x16,r5
    mov.l @(PTR_ce3446c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce343ce:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce343d6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce343fa
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34454,pc),r3
    mov 0x1D,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce343fa:
    mov.l @(PTR_ce34458,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce34428
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3445c,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce34428:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3442e:
    mov r4,r3
    mov.l @(PTR_ce34470,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34440:
    #data 0x01f9
DAT_ce34442:
    #data 0x041c
DAT_ce34444:
    #data 0x01a1
DAT_ce34446:
    #data 0x0141
    #align4

PTR_ce34448:
    #data loc_8c05218a
PTR_ce3444c:
    #data loc_8c035162
PTR_ce34450:
    #data loc_8c2896b0
PTR_ce34454:
    #data loc_8c034e8c
PTR_ce34458:
    #data loc_8c034dee
PTR_ce3445c:
    #data loc_8c051648
DAT_ce34460:
    #data 0x3fd55555
DAT_ce34464:
    #data 0x42452492
PTR_ce34468:
    #data loc_8c050ea4
PTR_ce3446c:
    #data loc_8c04223a
PTR_ce34470:
    #data PTR_ce34ff0

;=============================================

LAB_ce34474:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce34598,pc),r0
    mov r4,r14
    mov.w @(DAT_ce34596,pc),r3
    add r14,r3
    mov.l r3,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3449a
    mov.w @(DAT_ce3459c,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3459a,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3449a:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce345b0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3459e,pc),r0
    mov 0x00,r13
    fldi0 fr4
    mov 0x47,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce345a0,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce345a2,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce345b4,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce345b8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r3
    mov r13,r0
    nop
    mov 0x16,r5
    mov r14,r4
    mov.b r0,@(0xd,r3)
    mov r0,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce345bc,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3450a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce345a4,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce345a6,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce34598,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3452c
    bra LAB_ce3452e
    mov 0x02,r3

LAB_ce3452c:
    mov 0x00,r3

LAB_ce3452e:
    mov.w @(DAT_ce345a8,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce345c0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce345aa,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    tst 0x01,r0
    bt LAB_ce34554
    mov.w @(DAT_ce345aa,pc),r3
    mov 0x06,r5
    add r14,r3
    mov.b @(0x1,r3),r0
    and 0xFE,r0
    mov.b r0,@(0x1,r3)
    mov.l @(PTR_ce345c4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce34554:
    mov.w @(DAT_ce345ac,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3458e
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce345d0,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce345ac,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3459c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce345c8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce345cc,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce3458e:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34596:
    #data 0x02a4
DAT_ce34598:
    #data 0x0255
DAT_ce3459a:
    #data 0x00ff
DAT_ce3459c:
    #data 0x03f0
DAT_ce3459e:
    #data 0x041c
DAT_ce345a0:
    #data 0x01f9
DAT_ce345a2:
    #data 0x01a1
DAT_ce345a4:
    #data 0x03f8
DAT_ce345a6:
    #data 0x0328
DAT_ce345a8:
    #data 0x03f1
DAT_ce345aa:
    #data 0x0150
DAT_ce345ac:
    #data 0x0141
    #align4

PTR_ce345b0:
    #data loc_8c05218a
PTR_ce345b4:
    #data loc_8c2896b0
PTR_ce345b8:
    #data loc_8c05115a
PTR_ce345bc:
    #data loc_8c034e8c
PTR_ce345c0:
    #data loc_8c034dee
PTR_ce345c4:
    #data loc_8c0e1960
DAT_ce345c8:
    #data 0x42a35555
DAT_ce345cc:
    #data 0x4313db6d
PTR_ce345d0:
    #data loc_8c050834

;=============================================

LAB_ce345d4:
    mov.w @(DAT_ce346ca,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce346cc,pc),r0
    mov.l @(PTR_ce346d8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce346ce,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3461c
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce346ce,pc),r0
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    mov.l @(PTR_ce346dc,pc),r3
    mov 0x02,r5
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce3461c
    lds.l @r15+,PR
    mov.l @(PTR_ce346e0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3461c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34622:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce346ca,pc),r0
    mov r4,r14
    mov.w @(DAT_ce346d0,pc),r3
    mov 0x02,r2
    add r14,r3
    mov.l r3,@r15
    mov 0x05,r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce346cc,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce346ce,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3464c
    mov.l @(PTR_ce346d8,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3464c:
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf/s LAB_ce3466e
    mov 0x00,r13
    mov.w @(DAT_ce346d2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3466e
    mov.l @(PTR_ce346e4,pc),r3
    mov 0x16,r5
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce346ce,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce3466e:
    mov.l @r15,r3
    mov.b @(0xd,r3),r0
    tst r0,r0
    bt LAB_ce3468c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce346d4,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce346d6,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)

LAB_ce3468c:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce34696:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce346d8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce346b0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce346e0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce346b0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce346b8:
    mov r4,r3
    mov.l @(PTR_ce346e8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce346ca:
    #data 0x03f8
DAT_ce346cc:
    #data 0x0328
DAT_ce346ce:
    #data 0x0141
DAT_ce346d0:
    #data 0x02a4
DAT_ce346d2:
    #data 0x019e
DAT_ce346d4:
    #data 0x03f9
DAT_ce346d6:
    #data 0x0327
    #align4

PTR_ce346d8:
    #data loc_8c034dee
PTR_ce346dc:
    #data loc_8c097b30
PTR_ce346e0:
    #data loc_8c051648
PTR_ce346e4:
    #data loc_8c034e8c
PTR_ce346e8:
    #data PTR_ce35004

;=============================================

LAB_ce346ec:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce34820,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34818,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce34824,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3481a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3471c
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3471c:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34828,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x40,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3482c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce3481c,pc),r0
    mov 0x04,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34830,pc),r3
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
    mov.l @(PTR_ce34834,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34766:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34838,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce3483c,pc),r3
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
    bt LAB_ce347ce
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce34840,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34834,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce347ce:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce347d4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34838,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce347ee
    lds.l @r15+,PR
    mov.l @(PTR_ce34844,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce347ee:
    mov.w @(DAT_ce3481e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce347fa
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce347fa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34800:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce34818,pc),r1
    mov.l @(PTR_ce34848,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34818:
    #data 0x01f9
DAT_ce3481a:
    #data 0x01d2
DAT_ce3481c:
    #data 0x01a1
DAT_ce3481e:
    #data 0x0141
    #align4

PTR_ce34820:
    #data loc_8c035162
DAT_ce34824:
    #data 0x41f00000
DAT_ce34828:
    #data 0x40892492
DAT_ce3482c:
    #data 0xbf4db6db
PTR_ce34830:
    #data loc_8c2896b0
PTR_ce34834:
    #data loc_8c034e8c
PTR_ce34838:
    #data loc_8c034dee
PTR_ce3483c:
    #data loc_8c052ce2
PTR_ce34840:
    #data loc_8c0511b4
PTR_ce34844:
    #data loc_8c051854
PTR_ce34848:
    #data PTR_ce35010

;=============================================

LAB_ce3484c:
    mov.w @(DAT_ce3493e,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce34940,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce34898
    mov.w @(DAT_ce34942,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34898
    mov.w @(DAT_ce34944,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce34898
    mov.l @(PTR_ce34950,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34898
    mov r0,r4
    mov.w @(DAT_ce34946,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34898:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce348a0:
    rts
    mov 0x00,r0

LAB_ce348a4:
    mov.w @(DAT_ce3493e,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce34940,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce348fc
    mov.w @(DAT_ce34942,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce348fc
    mov.w @(DAT_ce34944,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce348fc
    mova @(DAT_ce34954,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce348fc
    mov.l @(PTR_ce34950,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce348fc
    mov r0,r4
    mov.w @(DAT_ce34946,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce348fc:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34904:
    mov.w @(DAT_ce34948,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3494a,pc),r1
    mov.w @(DAT_ce3494c,pc),r2
    sts.l PR,@-r15
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    add r4,r2
    mov.l @(PTR_ce34958,pc),r3
    extu.b r0,r0
    xor 0x01,r0
    add r4,r1
    mov.w r0,@r1
    mov.b r0,@r2
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34946,pc),r0
    mov r14,r4
    mov.l @(PTR_ce3495c,pc),r1
    mov.b @(r0,r14),r0
    lds.l @r15+,PR
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3493e:
    #data 0x01fa
DAT_ce34940:
    #data 0x0c00
DAT_ce34942:
    #data 0x01fe
DAT_ce34944:
    #data 0x01a3
DAT_ce34946:
    #data 0x01f7
DAT_ce34948:
    #data 0x01c8
DAT_ce3494a:
    #data 0x0130
DAT_ce3494c:
    #data 0x01d2
    #align4

PTR_ce34950:
    #data loc_8c045790
DAT_ce34954:
    #data 0x43092492
PTR_ce34958:
    #data loc_8c056f2a
PTR_ce3495c:
    #data PTR_ce35020

;=============================================

LAB_ce34960:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34a62,pc),r0
    mov 0x0A,r3
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bt LAB_ce349a4
    mov.w @(DAT_ce34a64,pc),r0
    mov.w @(DAT_ce34a66,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34a64,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce34a68,pc),r0
    mov.w @(DAT_ce34a66,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34a64,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce349a4:
    mova @(DAT_ce34a6c,pc),r0
    mov.l @(PTR_ce34a74,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34a70,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34a78,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce349d2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34a62,pc),r0
    mov 0x0A,r3
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce34a16
    mov.w @(DAT_ce34a64,pc),r0
    mov.w @(DAT_ce34a66,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34a64,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(DAT_ce34a68,pc),r0
    mov.w @(DAT_ce34a66,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce34a64,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce34a16:
    mova @(DAT_ce34a7c,pc),r0
    mov.l @(PTR_ce34a74,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce34a80,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34a78,pc),r2
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34a44:
    mov.w @(DAT_ce34a6a,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34a84,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34a62:
    #data 0x01a0
DAT_ce34a64:
    #data 0x01d2
DAT_ce34a66:
    #data 0x0130
DAT_ce34a68:
    #data 0x01c8
DAT_ce34a6a:
    #data 0x01ea
    #align4

DAT_ce34a6c:
    #data 0xc2f00000
DAT_ce34a70:
    #data 0x432b6db6
PTR_ce34a74:
    #data loc_8c103660
PTR_ce34a78:
    #data loc_8c034e8c
DAT_ce34a7c:
    #data 0x42555555
DAT_ce34a80:
    #data 0x43892492
PTR_ce34a84:
    #data PTR_ce35028

;=============================================

LAB_ce34a88:
    mov.w @(DAT_ce34b8e,pc),r3
    mov.l r14,@-r15
    mov r4,r14
    add r14,r3
    sts.l PR,@-r15
    mov.b @(0x1,r3),r0
    tst r0,r0
    bt/s LAB_ce34ab6
    mov r14,r4
    mov.w @(DAT_ce34b8e,pc),r2
    mov 0x00,r0
    mov.w @(DAT_ce34b92,pc),r1
    add r14,r2
    mov.b r0,@(0x1,r2)
    add r14,r1
    mov.w @(DAT_ce34b90,pc),r0
    mov.w @(DAT_ce34b90,pc),r2
    mov.b @(r0,r14),r0
    add r14,r2
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

LAB_ce34ab6:
    mov.l @(PTR_ce34b9c,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce34ae8
    mov.w @(DAT_ce34b94,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34af2
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce34b96,pc),r0
    mov 0x20,r2
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34ae8:
    lds.l @r15+,PR
    mov.l @(PTR_ce34ba0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34af2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34af8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34b9c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34b12
    lds.l @r15+,PR
    mov.l @(PTR_ce34ba4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34b12:
    mov.w @(DAT_ce34b94,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce34b28
    mov.w @(DAT_ce34b94,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce34ba8,pc),r3
    mov 0x05,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce34b28:
    mov.w @(DAT_ce34b94,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce34b4a
    mov.w @(DAT_ce34b94,pc),r0
    mov 0x00,r2
    mov 0x01,r3
    mov.b r2,@(r0,r14)
    mov 0x21,r2
    mov.w @(DAT_ce34b96,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)

LAB_ce34b4a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34b50:
    mov.w @(DAT_ce34b96,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce34bac,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce34b5e:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34b98,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34b7c
    mov 0x06,r5
    cmp/eq 0x01,r0
    bt LAB_ce34b7c
    cmp/eq 0x02,r0
    bt LAB_ce34b82
    bra LAB_ce34b88
    nop

LAB_ce34b7c:
    mov.w @(DAT_ce34b9a,pc),r0
    bra LAB_ce34b88
    mov.b r5,@(r0,r4)

LAB_ce34b82:
    mov.w @(DAT_ce34b9a,pc),r0
    mov 0x05,r2
    mov.b r2,@(r0,r4)

LAB_ce34b88:
    mov.l @(PTR_ce34bb0,pc),r2
    jmp @r2
    mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34b8e:
    #data 0x0150
DAT_ce34b90:
    #data 0x01d2
DAT_ce34b92:
    #data 0x0130
DAT_ce34b94:
    #data 0x0141
DAT_ce34b96:
    #data 0x01c8
DAT_ce34b98:
    #data 0x04c9
DAT_ce34b9a:
    #data 0x01e9
    #align4

PTR_ce34b9c:
    #data loc_8c034dee
PTR_ce34ba0:
    #data loc_8c051648
PTR_ce34ba4:
    #data loc_8c05176e
PTR_ce34ba8:
    #data loc_8c0e1960
PTR_ce34bac:
    #data loc_8c04cc1c
PTR_ce34bb0:
    #data loc_8c0530d8

;=============================================

LAB_ce34bb4:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34c60,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34bd2
    mov 0x06,r5
    cmp/eq 0x01,r0
    bt LAB_ce34bd2
    cmp/eq 0x02,r0
    bt LAB_ce34bd8
    bra LAB_ce34bde
    nop

LAB_ce34bd2:
    mov.w @(DAT_ce34c62,pc),r0
    bra LAB_ce34bde
    mov.b r5,@(r0,r4)

LAB_ce34bd8:
    mov.w @(DAT_ce34c62,pc),r0
    mov 0x05,r2
    mov.b r2,@(r0,r4)

LAB_ce34bde:
    mov.l @(PTR_ce34c68,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce34be4:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34c60,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34c06
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce34c0c
    cmp/eq 0x02,r0
    bt LAB_ce34c14
    bra LAB_ce34c1c
    nop

LAB_ce34c06:
    mov.w @(DAT_ce34c62,pc),r0
    bra LAB_ce34c18
    mov.b r5,@(r0,r4)

LAB_ce34c0c:
    mov.w @(DAT_ce34c62,pc),r0
    mov 0x07,r2
    bra LAB_ce34c18
    mov.b r2,@(r0,r4)

LAB_ce34c14:
    mov.w @(DAT_ce34c62,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce34c18:
    mov.w @(DAT_ce34c64,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce34c1c:
    mov.l @(PTR_ce34c68,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce34c22:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34c60,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34c44
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce34c4a
    cmp/eq 0x02,r0
    bt LAB_ce34c52
    bra LAB_ce34c5a
    nop

LAB_ce34c44:
    mov.w @(DAT_ce34c62,pc),r0
    bra LAB_ce34c56
    mov.b r5,@(r0,r4)

LAB_ce34c4a:
    mov.w @(DAT_ce34c62,pc),r0
    mov 0x07,r2
    bra LAB_ce34c56
    mov.b r2,@(r0,r4)

LAB_ce34c52:
    mov.w @(DAT_ce34c62,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce34c56:
    mov.w @(DAT_ce34c64,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce34c5a:
    mov.l @(PTR_ce34c68,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34c60:
    #data 0x04c9
DAT_ce34c62:
    #data 0x01e9
DAT_ce34c64:
    #data 0x01a3
    #align4

PTR_ce34c68:
    #data loc_8c0530d8
DAT_ce34c6c:
    #data 0x0201
    #data 0x0201
DAT_ce34c70:
    #data 0x02ff
    #data 0x02ff
DAT_ce34c74:
    #data 0xffff
    #data 0xffff
DAT_ce34c78:
    #data 0x0201
    #data 0x0201
DAT_ce34c7c:
    #data 0x02ff
    #data 0x02ff
DAT_ce34c80:
    #data 0xffff
    #data 0xffff
DAT_ce34c84:
    #data 0x0201
    #data 0x0201
DAT_ce34c88:
    #data 0x02ff
    #data 0x02ff
DAT_ce34c8c:
    #data 0xffff
    #data 0xffff
DAT_ce34c90:
    #data 0x0201
    #data 0x0201
DAT_ce34c94:
    #data 0x02ff
    #data 0x02ff
DAT_ce34c98:
    #data 0xffff
    #data 0xffff
DAT_ce34c9c:
    #data 0x0201
    #data 0x0200
DAT_ce34ca0:
    #data 0x02ff
    #data 0x0201
DAT_ce34ca4:
    #data 0xffff
    #data 0x02ff
DAT_ce34ca8:
    #data 0x0201
    #data 0x0201
DAT_ce34cac:
    #data 0x02ff
    #data 0x02ff
DAT_ce34cb0:
    #data 0xffff
    #data 0xffff
DAT_ce34cb4:
    #data 0x0005
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0400
    #data 0x1400
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34cc8:
    #data 0x0005
    #data 0x1000
    #data 0x0007
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce34cdc:
    #data 0x0005
    #data 0x0000
    #data 0x0001
    #data 0x0000
    #data 0x0400
    #data 0x1400
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce34cf0:
    #data 0x0003
    #data 0x0000
    #data 0x0002
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0360
DAT_ce34d00:
    #data 0x0020
    #data 0x0000
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x2000
    #data 0x0060
DAT_ce34d0e:
    #data 0x0020
    #data 0x0000
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x2000
    #data 0x0300
DAT_ce34d1c:
    #data 0x0003
    #data 0x8100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34d2c:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce34d3c:
    #data 0x0003
    #data 0x8000
    #data 0x0009
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce34d4c:
    #data 0x0005
    #data 0x9100
    #data 0x000f
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
    #align4

PTR_ce34d60:
    #data LAB_ce307f8
PTR_ce34d64:
    #data LAB_ce3001c
PTR_ce34d68:
    #data LAB_ce30882
PTR_ce34d6c:
    #data LAB_ce30eae
PTR_ce34d70:
    #data LAB_ce314c4
PTR_ce34d74:
    #data LAB_ce3162e
PTR_ce34d78:
    #data LAB_ce31758
PTR_ce34d7c:
    #data LAB_ce31944
PTR_ce34d80:
    #data LAB_ce31bda
PTR_ce34d84:
    #data LAB_ce34800
PTR_ce34d88:
    #data LAB_ce34904
PTR_ce34d8c:
    #data LAB_ce34a44
PTR_ce34d90:
    #data LAB_ce34b50
PTR_ce34d94:
    #data LAB_ce306f4
PTR_ce34d98:
    #data LAB_ce346b8
PTR_ce34d9c:
    #data LAB_ce313e0
PTR_ce34da0:
    #data LAB_ce34b5e
PTR_ce34da4:
    #data LAB_ce34bb4
PTR_ce34da8:
    #data LAB_ce34be4
PTR_ce34dac:
    #data LAB_ce34c22
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce34dd0:
    #data LAB_ce30896
PTR_ce34dd4:
    #data LAB_ce30c30
PTR_ce34dd8:
    #data LAB_ce30c60
PTR_ce34ddc:
    #data LAB_ce30896
PTR_ce34de0:
    #data LAB_ce30f0a
PTR_ce34de4:
    #data LAB_ce3129c
PTR_ce34de8:
    #data LAB_ce3127c
PTR_ce34dec:
    #data LAB_ce30efc
PTR_ce34df0:
    #data LAB_ce311c6
PTR_ce34df4:
    #data LAB_ce31238
PTR_ce34df8:
    #data LAB_ce314e0
PTR_ce34dfc:
    #data LAB_ce3157c
PTR_ce34e00:
    #data LAB_ce315f0
PTR_ce34e04:
    #data LAB_ce31640
PTR_ce34e08:
    #data LAB_ce316c8
PTR_ce34e0c:
    #data FUN_ce31736
PTR_ce34e10:
    #data LAB_ce3176e
PTR_ce34e14:
    #data LAB_ce317e0
PTR_ce34e18:
    #data LAB_ce31856
PTR_ce34e1c:
    #data LAB_ce318a8
PTR_ce34e20:
    #data FUN_ce31904
PTR_ce34e24:
    #data LAB_ce31970
PTR_ce34e28:
    #data LAB_ce31ba6
PTR_ce34e2c:
    #data LAB_ce31970
PTR_ce34e30:
    #data LAB_ce31ba6
PTR_ce34e34:
    #data LAB_ce31bc0
PTR_ce34e38:
    #data LAB_ce31982
PTR_ce34e3c:
    #data LAB_ce319e6
PTR_ce34e40:
    #data LAB_ce31a16
PTR_ce34e44:
    #data LAB_ce31a1c
PTR_ce34e48:
    #data LAB_ce31a4c
PTR_ce34e4c:
    #data LAB_ce31aa0
PTR_ce34e50:
    #data LAB_ce31ae2
PTR_ce34e54:
    #data LAB_ce31b78
DAT_ce34e58:
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x01
    #data 0x01
    #data 0x02
    #data 0x02
DAT_ce34e60:
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x01
    #data 0x01
    #data 0x01
    #align4

PTR_ce34e68:
    #data LAB_ce31bee
PTR_ce34e6c:
    #data LAB_ce31d0a
PTR_ce34e70:
    #data LAB_ce3227c
PTR_ce34e74:
    #data LAB_ce324da
PTR_ce34e78:
    #data LAB_ce32ae0
PTR_ce34e7c:
    #data LAB_ce32f12
PTR_ce34e80:
    #data LAB_ce336f2
PTR_ce34e84:
    #data LAB_ce34082
PTR_ce34e88:
    #data LAB_ce31bee
PTR_ce34e8c:
    #data LAB_ce34150
PTR_ce34e90:
    #data LAB_ce31bee
PTR_ce34e94:
    #data LAB_ce343d6
PTR_ce34e98:
    #data LAB_ce31bee
PTR_ce34e9c:
    #data LAB_ce31bee
PTR_ce34ea0:
    #data LAB_ce342b8
PTR_ce34ea4:
    #data LAB_ce3442e
PTR_ce34ea8:
    #data LAB_ce31c00
PTR_ce34eac:
    #data LAB_ce31c82
PTR_ce34eb0:
    #data LAB_ce31d1c
PTR_ce34eb4:
    #data LAB_ce3203c
PTR_ce34eb8:
    #data LAB_ce31d32
PTR_ce34ebc:
    #data LAB_ce31e0c
PTR_ce34ec0:
    #data LAB_ce31ed8
PTR_ce34ec4:
    #data LAB_ce31fe0
DAT_ce34ec8:
    #data 0x41480000
DAT_ce34ecc:
    #data 0xbea00000
DAT_ce34ed0:
    #data 0x40892492
DAT_ce34ed4:
    #data 0xbf4db6db
    #data 0x41a00000
    #data 0xbea00000
    #data 0x40cdb6db
    #data 0xbf4db6db
PTR_ce34ee8:
    #data LAB_ce32052
PTR_ce34eec:
    #data LAB_ce320b2
PTR_ce34ef0:
    #data LAB_ce3218c
PTR_ce34ef4:
    #data LAB_ce31fe0
DAT_ce34ef8:
    #data 0x41480000
DAT_ce34efc:
    #data 0xbea00000
DAT_ce34f00:
    #data 0x3f892492
DAT_ce34f04:
    #data 0xbf892492
    #data 0x41a00000
    #data 0xbea00000
    #data 0x3f892492
    #data 0xbf892492
DAT_ce34f18:
    #data 0xc3555555
DAT_ce34f1c:
    #data 0x434db6db
    #data 0x447d5555
    #data 0x434db6db
    #data 0xc3555555
    #data 0x00000000
    #data 0x447d5555
    #data 0x00000000
PTR_ce34f38:
    #data LAB_ce32292
PTR_ce34f3c:
    #data LAB_ce3230c
PTR_ce34f40:
    #data LAB_ce32384
PTR_ce34f44:
    #data LAB_ce32470
PTR_ce34f48:
    #data LAB_ce3250c
PTR_ce34f4c:
    #data LAB_ce325fc
PTR_ce34f50:
    #data LAB_ce32660
PTR_ce34f54:
    #data LAB_ce326ee
PTR_ce34f58:
    #data LAB_ce327a8
PTR_ce34f5c:
    #data LAB_ce32848
PTR_ce34f60:
    #data LAB_ce32992
PTR_ce34f64:
    #data LAB_ce32a00
PTR_ce34f68:
    #data LAB_ce32aae
PTR_ce34f6c:
    #data LAB_ce32af6
PTR_ce34f70:
    #data LAB_ce32c28
PTR_ce34f74:
    #data LAB_ce32c80
PTR_ce34f78:
    #data LAB_ce32de4
PTR_ce34f7c:
    #data LAB_ce32ee0
PTR_ce34f80:
    #data LAB_ce32f28
PTR_ce34f84:
    #data LAB_ce32f98
PTR_ce34f88:
    #data LAB_ce3303c
PTR_ce34f8c:
    #data LAB_ce330a4
PTR_ce34f90:
    #data LAB_ce3316c
PTR_ce34f94:
    #data LAB_ce331d2
PTR_ce34f98:
    #data LAB_ce3328c
PTR_ce34f9c:
    #data LAB_ce33410
PTR_ce34fa0:
    #data LAB_ce33520
PTR_ce34fa4:
    #data LAB_ce335f8
PTR_ce34fa8:
    #data LAB_ce33704
PTR_ce34fac:
    #data LAB_ce33be8
PTR_ce34fb0:
    #data LAB_ce33744
PTR_ce34fb4:
    #data LAB_ce337b2
PTR_ce34fb8:
    #data LAB_ce3382e
PTR_ce34fbc:
    #data LAB_ce33932
PTR_ce34fc0:
    #data LAB_ce33b72
PTR_ce34fc4:
    #data LAB_ce33bfe
PTR_ce34fc8:
    #data LAB_ce33c3e
PTR_ce34fcc:
    #data LAB_ce33cba
PTR_ce34fd0:
    #data LAB_ce33d9e
PTR_ce34fd4:
    #data LAB_ce3401c
PTR_ce34fd8:
    #data LAB_ce34094
PTR_ce34fdc:
    #data LAB_ce34112
PTR_ce34fe0:
    #data LAB_ce341a0
PTR_ce34fe4:
    #data LAB_ce34220
PTR_ce34fe8:
    #data LAB_ce342fc
PTR_ce34fec:
    #data LAB_ce3436c
PTR_ce34ff0:
    #data LAB_ce34474
PTR_ce34ff4:
    #data LAB_ce3450a
PTR_ce34ff8:
    #data LAB_ce345d4
PTR_ce34ffc:
    #data LAB_ce34622
PTR_ce35000:
    #data FUN_ce34696
PTR_ce35004:
    #data LAB_ce346ec
PTR_ce35008:
    #data LAB_ce34766
PTR_ce3500c:
    #data LAB_ce347d4
PTR_ce35010:
    #data LAB_ce3484c
PTR_ce35014:
    #data LAB_ce348a0
PTR_ce35018:
    #data LAB_ce348a4
PTR_ce3501c:
    #data LAB_ce3484c
PTR_ce35020:
    #data LAB_ce34960
PTR_ce35024:
    #data LAB_ce349d2
PTR_ce35028:
    #data LAB_ce34a88
PTR_ce3502c:
    #data LAB_ce34af8
