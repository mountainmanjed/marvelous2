;╔═════════════════════════════╗
;║ S_PL0C : Spider-Man Program ║
;╚═════════════════════════════╝
    
#symbol loc_8c02fd26 0x8C02FD26
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c03362c 0x8C03362C
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c034f54 0x8C034F54
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
#symbol loc_8c051648 0x8C051648
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c052618 0x8C052618
#symbol loc_8c052b4c 0x8C052B4C
#symbol loc_8c052c84 0x8C052C84
#symbol loc_8c052ce2 0x8C052CE2
#symbol loc_8c052dac 0x8C052DAC
#symbol loc_8c053082 0x8C053082
#symbol loc_8c0530d8 0x8C0530D8
#symbol loc_8c053e00 0x8C053E00
#symbol loc_8c053f6e 0x8C053F6E
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
#symbol loc_8c05929c 0x8C05929C
#symbol loc_8c06eed4 0x8C06EED4
#symbol loc_8c06f5ec 0x8C06F5EC
#symbol loc_8c06fa54 0x8C06FA54
#symbol loc_8c0c3ed4 0x8C0C3ED4
#symbol loc_8c0c447c 0x8C0C447C
#symbol loc_8c0c4c20 0x8C0C4C20
#symbol loc_8c0c5088 0x8C0C5088
#symbol loc_8c0ee6c8 0x8C0EE6C8
#symbol loc_8c103660 0x8C103660
#symbol loc_8c11e2e0 0x8C11E2E0
#symbol loc_8c11e860 0x8C11E860
#symbol loc_8c1292d4 0x8C1292D4
#symbol loc_8c12939c 0x8C12939C
#symbol loc_8c1294c8 0x8C1294C8
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c268340 0x8C268340
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c2895f3 0x8C2895F3
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300d0,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300d4,pc),r7
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
    mov.l @(PTR_ce300d8,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    mov.l @(PTR_ce300dc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce303d2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce30262
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce302a8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce30378
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce300f4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce3013c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce301b0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce30422
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    bsr FUN_ce3045a
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    mov.w @(DAT_ce300d2,pc),r5
    mov.l @(PTR_ce300e8,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ca
    mov.l @(PTR_ce300ec,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300f0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300ca:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300d0:
    #data 0x0428
DAT_ce300d2:
    #data 0x03c4
    #align4

PTR_ce300d4:
    #data PTR_ce34eb4
PTR_ce300d8:
    #data loc_8c054508
PTR_ce300dc:
    #data loc_8c054b34
PTR_ce300e0:
    #data loc_8c05496c
PTR_ce300e4:
    #data loc_8c054d04
PTR_ce300e8:
    #data loc_8c053f6e
PTR_ce300ec:
    #data loc_8c053e00
PTR_ce300f0:
    #data loc_8c0542e0

;=============================================

FUN_ce300f4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30210,pc),r5
    mov.w @(DAT_ce301fe,pc),r6
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30112
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30112:
    mov.w @(DAT_ce301fe,pc),r5
    mov.l @(PTR_ce30218,pc),r3
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
    mov.w @(DAT_ce30200,pc),r0
    mov.l @(PTR_ce3021c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3013c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30202,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30204,pc),r6
    add r14,r3
    mov.l @(PTR_ce30220,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce30214,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3017c
    mov.w @(DAT_ce30206,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30174
    mov.w @(DAT_ce30208,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3017c
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce30174:
    mov.l @r15,r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30186

LAB_ce3017c:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30186:
    mov.w @(DAT_ce30204,pc),r5
    mov.l @(PTR_ce30218,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30200,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3021c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301b0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce30202,pc),r12
    sts.l PR,@-r15
    mov.l @(PTR_ce30224,pc),r5
    add r14,r12
    mov.l @(PTR_ce30214,pc),r3
    mov.w @(DAT_ce3020a,pc),r6
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301fa
    mov.w @(DAT_ce3020c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x19,r0
    bt LAB_ce301fa
    mov 0x00,r13
    mov r13,r0
    nop
    mov.b r0,@(0x6,r12)
    mov.w @(DAT_ce30206,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30234
    mov.w @(DAT_ce3020e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30230
    mov.w @(DAT_ce30208,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30228

LAB_ce301fa:
    bra LAB_ce30258
    mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301fe:
    #data 0x036c
DAT_ce30200:
    #data 0x01e9
DAT_ce30202:
    #data 0x02a4
DAT_ce30204:
    #data 0x0374
DAT_ce30206:
    #data 0x01f9
DAT_ce30208:
    #data 0x01d4
DAT_ce3020a:
    #data 0x037c
DAT_ce3020c:
    #data 0x01d0
DAT_ce3020e:
    #data 0x01fc
    #align4

PTR_ce30210:
    #data DAT_ce34e3e
PTR_ce30214:
    #data loc_8c054e58
PTR_ce30218:
    #data loc_8c055c3a
PTR_ce3021c:
    #data loc_8c0530d8
PTR_ce30220:
    #data DAT_ce34e4e
PTR_ce30224:
    #data DAT_ce34e5e

;=============================================

LAB_ce30228:
    mov.b @(r0,r14),r3
    add 0x01,r3
    bra LAB_ce30234
    mov.b r3,@(r0,r14)

LAB_ce30230:
    mov 0x03,r0
    mov.b r0,@(0x6,r12)

LAB_ce30234:
    mov.w @(DAT_ce30346,pc),r5
    mov.l @(PTR_ce3035c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30348,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30360,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0

LAB_ce30258:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30262:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30364,pc),r5
    mov.w @(DAT_ce3034a,pc),r6
    mov.l @(PTR_ce30368,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30280
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30280:
    mov.w @(DAT_ce3034a,pc),r5
    mov.l @(PTR_ce3035c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30348,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30360,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302a8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3036c,pc),r5
    mov.w @(DAT_ce3034c,pc),r6
    mov.l @(PTR_ce30368,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30316
    mov.w @(DAT_ce3034e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce30316
    mov.w @(DAT_ce30350,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3031e
    mov.w @(DAT_ce30352,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce302e2
    mov.w @(DAT_ce30354,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30316

LAB_ce302e2:
    mov.w @(DAT_ce30356,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x0A,r0
    bt/s LAB_ce3031e
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x0B,r0
    bt LAB_ce3031e
    mov 0x38,r0
    fmov.s @(r0,r14),fr5
    mov.w @(DAT_ce30358,pc),r0
    fmov.s @(r0,r14),fr4
    mova @(DAT_ce30370,pc),r0
    fmov.s @r0,fr3
    fmov fr4,fr2
    fadd fr3,fr2
    fcmp/gt fr5,fr2
    bt LAB_ce30316
    mova @(DAT_ce30374,pc),r0
    fmov fr4,fr1
    fmov.s @r0,fr2
    fadd fr2,fr1
    fcmp/gt fr1,fr5
    bf LAB_ce3031e

LAB_ce30316:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3031e:
    mov.w @(DAT_ce3034c,pc),r5
    mov.l @(PTR_ce3035c,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30348,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30360,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30346:
    #data 0x037c
DAT_ce30348:
    #data 0x01e9
DAT_ce3034a:
    #data 0x0384
DAT_ce3034c:
    #data 0x038c
DAT_ce3034e:
    #data 0x040c
DAT_ce30350:
    #data 0x01f9
DAT_ce30352:
    #data 0x01fc
DAT_ce30354:
    #data 0x01d4
DAT_ce30356:
    #data 0x01d0
DAT_ce30358:
    #data 0x041c
    #align4

PTR_ce3035c:
    #data loc_8c055c3a
PTR_ce30360:
    #data loc_8c0530d8
PTR_ce30364:
    #data DAT_ce34e6e
PTR_ce30368:
    #data loc_8c054e58
PTR_ce3036c:
    #data DAT_ce34e82
DAT_ce30370:
    #data 0x41cdb6db
DAT_ce30374:
    #data 0x44676db6

;=============================================

FUN_ce30378:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304a4,pc),r5
    mov.w @(DAT_ce30498,pc),r6
    mov.l @(PTR_ce304a8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303a2
    mov.w @(DAT_ce3049a,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce303a2
    mov.w @(DAT_ce3049c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce303aa

LAB_ce303a2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303aa:
    mov.w @(DAT_ce30498,pc),r5
    mov.l @(PTR_ce304ac,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3049e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304b0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303d2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304b4,pc),r5
    mov.w @(DAT_ce304a0,pc),r6
    mov.l @(PTR_ce304a8,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303f2
    mov.w @(DAT_ce3049a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303fa

LAB_ce303f2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303fa:
    mov.w @(DAT_ce304a0,pc),r5
    mov.l @(PTR_ce304ac,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3049e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304b0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30422:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304b8,pc),r3
    jsr @r3
    mov 0x07,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3043c
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3043c:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3049e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304b0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3045a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce304bc,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30472
    mov.w @(DAT_ce3049a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3047a

LAB_ce30472:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3047a:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x6,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3049e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce304b0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30498:
    #data 0x0394
DAT_ce3049a:
    #data 0x040c
DAT_ce3049c:
    #data 0x01f9
DAT_ce3049e:
    #data 0x01e9
DAT_ce304a0:
    #data 0x039c
    #align4

PTR_ce304a4:
    #data DAT_ce34e92
PTR_ce304a8:
    #data loc_8c054e58
PTR_ce304ac:
    #data loc_8c055c3a
PTR_ce304b0:
    #data loc_8c0530d8
PTR_ce304b4:
    #data DAT_ce34ea2
PTR_ce304b8:
    #data loc_8c054da0
PTR_ce304bc:
    #data loc_8c054d1c

;=============================================

LAB_ce304c0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce304ec
    mov r4,r14
    tst r0,r0
    bf LAB_ce304dc
    bsr FUN_ce30522
    mov r14,r4
    tst r0,r0
    bf LAB_ce304dc
    bsr FUN_ce30558
    mov r14,r4
    tst r0,r0
    bt LAB_ce304e4

LAB_ce304dc:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce304e4:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304ec:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30598,pc),r5
    mov.w @(DAT_ce3058e,pc),r6
    mov.l @(PTR_ce3059c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3050c
    mov.w @(DAT_ce30590,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30514

LAB_ce3050c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30514:
    mov.w @(DAT_ce30592,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30522:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305a0,pc),r5
    mov.w @(DAT_ce30594,pc),r6
    mov.l @(PTR_ce3059c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30542
    mov.w @(DAT_ce30590,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3054a

LAB_ce30542:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3054a:
    mov.w @(DAT_ce30592,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30558:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305a4,pc),r5
    mov.w @(DAT_ce30596,pc),r6
    mov.l @(PTR_ce3059c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30578
    mov.w @(DAT_ce30590,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30580

LAB_ce30578:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30580:
    mov.w @(DAT_ce30592,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3058e:
    #data 0x038c
DAT_ce30590:
    #data 0x040c
DAT_ce30592:
    #data 0x0258
DAT_ce30594:
    #data 0x0394
DAT_ce30596:
    #data 0x039c
    #align4

PTR_ce30598:
    #data DAT_ce34e82
PTR_ce3059c:
    #data loc_8c054e58
PTR_ce305a0:
    #data DAT_ce34e92
PTR_ce305a4:
    #data DAT_ce34ea2

;=============================================

LAB_ce305a8:
    add 0xFC,r15
    mov.w @(DAT_ce306a6,pc),r3
    add r4,r3
    mov r3,r5
    mov.l r3,@r15
    add 0x04,r15
    mov 0x01,r6
    mov.w @(DAT_ce306a8,pc),r3
    mov.l r13,@-r15
    mov 0x02,r13
    mov.l r12,@-r15
    mov 0x03,r12
    mov.b @(0x2,r4),r0
    mov r12,r1
    mov.l @(PTR_ce306b8,pc),r2
    mov 0x00,r4
    extu.b r0,r0
    mov.w @(DAT_ce306aa,pc),r7
    neg r0,r0
    shad r0,r6
    mul.l r3,r6
    add 0x7D,r1
    sts MACL,r6
    add r2,r6

LAB_ce305d8:
    mov r5,r3
    add 0x01,r3
    add r4,r3
    mov.b @r3,r2
    extu.b r2,r2
    tst r1,r2
    bt LAB_ce305fa
    mov.b @(0x5,r6),r0
    extu.b r0,r0
    cmp/ge r13,r0
    bt LAB_ce305fa
    mov r5,r3
    add 0x01,r3
    add r4,r3
    mov.b @r3,r0
    xor 0x80,r0
    mov.b r0,@r3

LAB_ce305fa:
    add 0x01,r4
    cmp/ge r12,r4
    bf/s LAB_ce305d8
    add r7,r6
    mov.l @r15+,r12
    rts
    mov.l @r15+,r13

LAB_ce30608:
    mov.w @(DAT_ce306ac,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce306bc,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3061c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce306c0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce306ae,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30646
    mov.w @(DAT_ce306b0,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce3063e
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3065e
    mov.l @r15+,r14

LAB_ce3063e:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3071a
    mov.l @r15+,r14

LAB_ce30646:
    mov.w @(DAT_ce306b0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30656
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307b0
    mov.l @r15+,r14

LAB_ce30656:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3086a
    mov.l @r15+,r14

LAB_ce3065e:
    mov.w @(DAT_ce306b2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30680
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce30692
    cmp/eq 0x02,r0
    bt LAB_ce306cc
    bra LAB_ce306de
    nop

LAB_ce30680:
    mov.l @(PTR_ce306c4,pc),r3
    mov r4,r5
    mov.w @(DAT_ce306b4,pc),r0
    mov 0x14,r12
    mov r4,r13
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306b6,pc),r0
    bra LAB_ce306de
    mov.b r13,@(r0,r14)

LAB_ce30692:
    mov.w @(DAT_ce306b4,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce306c8,pc),r2
    mov r6,r5
    mov r6,r13
    mov 0x15,r12
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce306b6,pc),r0
    bra LAB_ce306de
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306a6:
    #data 0x02a4
DAT_ce306a8:
    #data 0x05a4
DAT_ce306aa:
    #data 0x0b48
DAT_ce306ac:
    #data 0x01ff
DAT_ce306ae:
    #data 0x01fe
DAT_ce306b0:
    #data 0x01f9
DAT_ce306b2:
    #data 0x01e8
DAT_ce306b4:
    #data 0x03f4
DAT_ce306b6:
    #data 0x01a7
    #align4

PTR_ce306b8:
    #data loc_8c268340
PTR_ce306bc:
    #data PTR_ce34f24
PTR_ce306c0:
    #data loc_8c052b4c
PTR_ce306c4:
    #data DAT_ce34d58
PTR_ce306c8:
    #data DAT_ce34d5c

;=============================================

LAB_ce306cc:
    mov.l @(PTR_ce307ec,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce307e4,pc),r0
    mov r6,r13
    mov r6,r5
    mov 0x16,r12
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307e6,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce306de:
    mov.w @(DAT_ce307e8,pc),r0
    mov.l @(PTR_ce307f0,pc),r3
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
    mov.l @(PTR_ce307f4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce307f8,pc),r3
    mov r14,r4
    mov 0x07,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3071a:
    mov.w @(DAT_ce307ea,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3073c
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce3074e
    cmp/eq 0x02,r0
    bt LAB_ce30762
    bra LAB_ce30774
    nop

LAB_ce3073c:
    mov.l @(PTR_ce307fc,pc),r3
    mov 0x06,r4
    mov.w @(DAT_ce307e4,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307e6,pc),r0
    bra LAB_ce30774
    mov.b r12,@(r0,r14)

LAB_ce3074e:
    mov.w @(DAT_ce307e4,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30800,pc),r2
    mov 0x07,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307e6,pc),r0
    bra LAB_ce30774
    mov.b r12,@(r0,r14)

LAB_ce30762:
    mov.l @(PTR_ce307ec,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce307e4,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x08,r4
    mov.w @(DAT_ce307e6,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce30774:
    mov.w @(DAT_ce307e8,pc),r0
    mov.l @(PTR_ce307f0,pc),r3
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
    mov.l @(PTR_ce307f4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce307f8,pc),r3
    mov 0x09,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce307b0:
    mov.w @(DAT_ce307ea,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307d2
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce30808
    cmp/eq 0x02,r0
    bt LAB_ce3081c
    bra LAB_ce3082e
    nop

LAB_ce307d2:
    mov.l @(PTR_ce30804,pc),r3
    mov 0x03,r4
    mov.w @(DAT_ce307e4,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307e6,pc),r0
    bra LAB_ce3082e
    mov.b r12,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307e4:
    #data 0x03f4
DAT_ce307e6:
    #data 0x01a7
DAT_ce307e8:
    #data 0x01a1
DAT_ce307ea:
    #data 0x01e8
    #align4

PTR_ce307ec:
    #data DAT_ce34d60
PTR_ce307f0:
    #data loc_8c2896b0
PTR_ce307f4:
    #data loc_8c04223a
PTR_ce307f8:
    #data loc_8c034e8c
PTR_ce307fc:
    #data DAT_ce34d58
PTR_ce30800:
    #data DAT_ce34d5c
PTR_ce30804:
    #data DAT_ce34d64

;=============================================

LAB_ce30808:
    mov.w @(DAT_ce30900,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30908,pc),r2
    mov 0x04,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30902,pc),r0
    bra LAB_ce3082e
    mov.b r12,@(r0,r14)

LAB_ce3081c:
    mov.l @(PTR_ce3090c,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce30900,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x05,r4
    mov.w @(DAT_ce30902,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce3082e:
    mov.w @(DAT_ce30904,pc),r0
    mov.l @(PTR_ce30910,pc),r3
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
    mov.l @(PTR_ce30918,pc),r3
    mov 0x08,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3086a:
    mov.w @(DAT_ce30906,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3088c
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce3089e
    cmp/eq 0x02,r0
    bt LAB_ce308b2
    bra LAB_ce308c4
    nop

LAB_ce3088c:
    mov.l @(PTR_ce3091c,pc),r3
    mov 0x09,r4
    mov.w @(DAT_ce30900,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30902,pc),r0
    bra LAB_ce308c4
    mov.b r12,@(r0,r14)

LAB_ce3089e:
    mov.w @(DAT_ce30900,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30908,pc),r2
    mov 0x0A,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30902,pc),r0
    bra LAB_ce308c4
    mov.b r12,@(r0,r14)

LAB_ce308b2:
    mov.l @(PTR_ce3090c,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce30900,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x0B,r4
    mov.w @(DAT_ce30902,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce308c4:
    mov.w @(DAT_ce30904,pc),r0
    mov.l @(PTR_ce30910,pc),r3
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
    mov.l @(PTR_ce30918,pc),r3
    mov 0x0A,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30900:
    #data 0x03f4
DAT_ce30902:
    #data 0x01a7
DAT_ce30904:
    #data 0x01a1
DAT_ce30906:
    #data 0x01e8
    #align4

PTR_ce30908:
    #data DAT_ce34d68
PTR_ce3090c:
    #data DAT_ce34d6c
PTR_ce30910:
    #data loc_8c2896b0
PTR_ce30914:
    #data loc_8c04223a
PTR_ce30918:
    #data loc_8c034e8c
PTR_ce3091c:
    #data DAT_ce34d64

;=============================================

LAB_ce30920:
    mov.w @(DAT_ce309fc,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30930
    mov.w @(DAT_ce309fe,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30940

LAB_ce30930:
    mov.w @(DAT_ce309fc,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30944
    mov.w @(DAT_ce309fe,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30944

LAB_ce30940:
    bra LAB_ce30948
    nop

LAB_ce30944:
    rts
    nop

LAB_ce30948:
    mov.w @(DAT_ce309fc,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30954
    bra LAB_ce30a20
    nop

LAB_ce30954:
    mov.w @(DAT_ce30a00,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30976
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce30988
    cmp/eq 0x02,r0
    bt LAB_ce3099c
    bra LAB_ce309ae
    nop

LAB_ce30976:
    mov.l @(PTR_ce30a08,pc),r3
    mov 0x0C,r4
    mov.w @(DAT_ce30a02,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30a04,pc),r0
    bra LAB_ce309ae
    mov.b r12,@(r0,r14)

LAB_ce30988:
    mov.w @(DAT_ce30a02,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30a0c,pc),r2
    mov 0x0D,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30a04,pc),r0
    bra LAB_ce309ae
    mov.b r12,@(r0,r14)

LAB_ce3099c:
    mov.l @(PTR_ce30a10,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce30a02,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x0E,r4
    mov.w @(DAT_ce30a04,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce309ae:
    mov.w @(DAT_ce30a06,pc),r0
    mov.l @(PTR_ce30a14,pc),r3
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
    mov.l @(PTR_ce30a18,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30a1c,pc),r3
    mov 0x0B,r5
    mov r12,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce309fe,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce309f2
    mov.w @(DAT_ce309fe,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce309f2:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309fc:
    #data 0x01fe
DAT_ce309fe:
    #data 0x01d6
DAT_ce30a00:
    #data 0x01e8
DAT_ce30a02:
    #data 0x03f4
DAT_ce30a04:
    #data 0x01a7
DAT_ce30a06:
    #data 0x01a1
    #align4

PTR_ce30a08:
    #data DAT_ce34d70
PTR_ce30a0c:
    #data DAT_ce34d74
PTR_ce30a10:
    #data DAT_ce34d78
PTR_ce30a14:
    #data loc_8c2896b0
PTR_ce30a18:
    #data loc_8c04223a
PTR_ce30a1c:
    #data loc_8c034e8c

;=============================================

LAB_ce30a20:
    mov.w @(DAT_ce30b3c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a42
    mov 0x00,r5
    cmp/eq 0x01,r0
    bt LAB_ce30a54
    cmp/eq 0x02,r0
    bt LAB_ce30a68
    bra LAB_ce30a7a
    nop

LAB_ce30a42:
    mov.l @(PTR_ce30b4c,pc),r3
    mov 0x0F,r4
    mov.w @(DAT_ce30b3e,pc),r0
    mov 0x14,r13
    mov r5,r12
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30b40,pc),r0
    bra LAB_ce30a7a
    mov.b r12,@(r0,r14)

LAB_ce30a54:
    mov.w @(DAT_ce30b3e,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30b50,pc),r2
    mov 0x10,r4
    mov r6,r12
    mov 0x15,r13
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30b40,pc),r0
    bra LAB_ce30a7a
    mov.b r12,@(r0,r14)

LAB_ce30a68:
    mov.l @(PTR_ce30b54,pc),r2
    mov 0x02,r6
    mov.w @(DAT_ce30b3e,pc),r0
    mov r6,r12
    mov 0x16,r13
    mov.l r2,@(r0,r14)
    mov 0x11,r4
    mov.w @(DAT_ce30b40,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce30a7a:
    mov.w @(DAT_ce30b42,pc),r0
    mov.l @(PTR_ce30b58,pc),r3
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
    mov.l @(PTR_ce30b5c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r12,r6
    mov.l @(PTR_ce30b60,pc),r3
    mov 0x0C,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce30ab6:
    mov.w @(DAT_ce30b44,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30b64,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30aca:
    sts.l PR,@-r15
    mov.l @(PTR_ce30b68,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30ad8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30b6c,pc),r3
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
    mov.w @(DAT_ce30b46,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30b70
    mov.w @(DAT_ce30b48,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce30b34
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30b88
    mov.l @r15+,r14

LAB_ce30b34:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30baa
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b3c:
    #data 0x01e8
DAT_ce30b3e:
    #data 0x03f4
DAT_ce30b40:
    #data 0x01a7
DAT_ce30b42:
    #data 0x01a1
DAT_ce30b44:
    #data 0x01ff
DAT_ce30b46:
    #data 0x01fe
DAT_ce30b48:
    #data 0x01f9
    #align4

PTR_ce30b4c:
    #data DAT_ce34d7c
PTR_ce30b50:
    #data DAT_ce34d80
PTR_ce30b54:
    #data DAT_ce34d84
PTR_ce30b58:
    #data loc_8c2896b0
PTR_ce30b5c:
    #data loc_8c04223a
PTR_ce30b60:
    #data loc_8c034e8c
PTR_ce30b64:
    #data PTR_ce34f34
PTR_ce30b68:
    #data loc_8c0511e2
PTR_ce30b6c:
    #data loc_8c052c84

;=============================================

LAB_ce30b70:
    mov.w @(DAT_ce30c7e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30b80
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30bcc
    mov.l @r15+,r14

LAB_ce30b80:
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30bee
    mov.l @r15+,r14

LAB_ce30b88:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30c84,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ba2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30c88,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30ba2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30baa:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30c84,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30bc4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30c88,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30bc4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30bcc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30c84,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30be6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30c88,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30be6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30bee:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30c84,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c08
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30c88,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30c08:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30c10:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30c8c,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30c90,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30c26:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30c94,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30c98,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30c80,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30c46
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c4e
    mov.l @r15+,r14

LAB_ce30c46:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30cae
    mov.l @r15+,r14

LAB_ce30c4e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30c84,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c68
    lds.l @r15+,PR
    mov.l @(PTR_ce30c9c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30c68:
    mov.l @(PTR_ce30ca0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30ca8
    lds.l @r15+,PR
    mov.l @(PTR_ce30ca4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c7e:
    #data 0x01f9
DAT_ce30c80:
    #data 0x01fe
    #align4

PTR_ce30c84:
    #data loc_8c034dee
PTR_ce30c88:
    #data loc_8c051648
PTR_ce30c8c:
    #data loc_8c050084
PTR_ce30c90:
    #data loc_8c04ff88
PTR_ce30c94:
    #data loc_8c04fea8
PTR_ce30c98:
    #data loc_8c050048
PTR_ce30c9c:
    #data loc_8c05176e
PTR_ce30ca0:
    #data loc_8c052ce2
PTR_ce30ca4:
    #data loc_8c052dac

;=============================================

LAB_ce30ca8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30cae:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30de8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cc8
    lds.l @r15+,PR
    mov.l @(PTR_ce30dec,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30cc8:
    mov.l @(PTR_ce30df0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30cde
    lds.l @r15+,PR
    mov.l @(PTR_ce30df4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30cde:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30ce4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30d5e
    mov.b @(0x6,r14),r0
    mov 0x01,r7
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30de2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce30d10
    mov 0x00,r6
    mov 0x15,r13
    mov r7,r12
    mov 0x2B,r5
    bra LAB_ce30d18
    mov r6,r4

LAB_ce30d10:
    mov 0x14,r13
    mov r7,r4
    mov 0x2A,r5
    mov 0x02,r12

LAB_ce30d18:
    mov.w @(DAT_ce30de4,pc),r0
    mov.l @(PTR_ce30df8,pc),r3
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r5,@(r0,r14)
    add 0x0B,r0
    mov.w r6,@(r0,r14)
    add 0xF2,r0
    mov.b r6,@(r0,r14)
    add 0x26,r0
    mov.l r6,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30dfc,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30e00,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30e04,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30e08,pc),r3
    mov 0x14,r5
    mov r12,r6
    jsr @r3
    mov r14,r4

LAB_ce30d5e:
    mov.w @(DAT_ce30de6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30d6e
    mov.l @(PTR_ce30e0c,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30d6e:
    mov 0x5C,r1
    mov.l @(PTR_ce30e10,pc),r3
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
    mov.l @(PTR_ce30de8,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30dc6
    lds.l @r15+,PR
    mov.l @(PTR_ce30e14,pc),r2
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30dc6:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30dd0:
    mov r4,r3
    mov.l @(PTR_ce30e18,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30de2:
    #data 0x01fe
DAT_ce30de4:
    #data 0x01f9
DAT_ce30de6:
    #data 0x01ff
    #align4

PTR_ce30de8:
    #data loc_8c034dee
PTR_ce30dec:
    #data loc_8c05176e
PTR_ce30df0:
    #data loc_8c052ce2
PTR_ce30df4:
    #data loc_8c052dac
PTR_ce30df8:
    #data loc_8c2896b0
PTR_ce30dfc:
    #data loc_8c052b4c
PTR_ce30e00:
    #data loc_8c056de4
PTR_ce30e04:
    #data loc_8c04223a
PTR_ce30e08:
    #data loc_8c034e8c
PTR_ce30e0c:
    #data loc_8c0511e2
PTR_ce30e10:
    #data loc_8c052c84
PTR_ce30e14:
    #data loc_8c051648
PTR_ce30e18:
    #data PTR_ce34f44

;=============================================

LAB_ce30e1c:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mova @(DAT_ce30f68,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce30f6c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce30f70,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce30f74,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce30f5e,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30e5a
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce30e5a:
    rts
    nop

LAB_ce30e5e:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30f78,pc),r3
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
    mov.w @(DAT_ce30f60,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce30eda
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov 0x02,r6
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    mov r6,r5
    mov.w @(DAT_ce30f60,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30f62,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce30f7c,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30eda:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30ee0:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30f78,pc),r3
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
    bt LAB_ce30f34
    lds.l @r15+,PR
    mov.l @(PTR_ce30f80,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f34:
    mov.w @(DAT_ce30f64,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f46
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce30f46:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f4c:
    mov r4,r3
    mov.l @(PTR_ce30f84,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30f5e:
    #data 0x0130
DAT_ce30f60:
    #data 0x041c
DAT_ce30f62:
    #data 0x01f9
DAT_ce30f64:
    #data 0x0141
    #align4

DAT_ce30f68:
    #data 0xc17d5555
DAT_ce30f6c:
    #data 0x3ea00000
DAT_ce30f70:
    #data 0x40cdb6db
DAT_ce30f74:
    #data 0xbf092492
PTR_ce30f78:
    #data loc_8c034dee
PTR_ce30f7c:
    #data loc_8c034e8c
PTR_ce30f80:
    #data loc_8c051648
PTR_ce30f84:
    #data PTR_ce34f50

;=============================================

LAB_ce30f88:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mova @(DAT_ce310d0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce310d4,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce310d8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce310dc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce310c2,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30fc6
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce30fc6:
    rts
    nop

LAB_ce30fca:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce310e0,pc),r3
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
    mov.w @(DAT_ce310c4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3104e
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x03,r6
    mov.w @(DAT_ce310c4,pc),r0
    mov 0x02,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce310c6,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce310e4,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3104e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31054:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce310e0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3106e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce310e8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3106e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31076:
    mov 0x20,r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce310ec,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3108a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce310f0,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.l @(PTR_ce310f4,pc),r6
    mov 0x02,r5
    mov.w @(DAT_ce310c8,pc),r0
    mov.l @r6,r2
    mov.b @(r0,r2),r3
    tst r3,r3
    bt/s LAB_ce310f8
    mov 0x01,r4
    mov 0x20,r0
    mov r4,r1
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce310ca,pc),r0
    mov.l @r6,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce310cc,pc),r0
    mov.b @(r0,r14),r3
    and r4,r3
    shad r3,r1
    tst r1,r2
    bf LAB_ce31104
    bra LAB_ce31108
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310c2:
    #data 0x0130
DAT_ce310c4:
    #data 0x041c
DAT_ce310c6:
    #data 0x01f9
DAT_ce310c8:
    #data 0x008b
DAT_ce310ca:
    #data 0x00a5
DAT_ce310cc:
    #data 0x0524
    #align4

DAT_ce310d0:
    #data 0x417d5555
DAT_ce310d4:
    #data 0xbea00000
DAT_ce310d8:
    #data 0x40cdb6db
DAT_ce310dc:
    #data 0xbf092492
PTR_ce310e0:
    #data loc_8c034dee
PTR_ce310e4:
    #data loc_8c034e8c
PTR_ce310e8:
    #data loc_8c051648
PTR_ce310ec:
    #data PTR_ce34f5c
PTR_ce310f0:
    #data loc_8c035162
PTR_ce310f4:
    #data loc_8c26823c

;=============================================

LAB_ce310f8:
    mov 0x20,r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce311f6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31108

LAB_ce31104:
    mov 0x20,r0
    mov.b r4,@(r0,r14)

LAB_ce31108:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3110e:
    mov r4,r3
    mov.l @(PTR_ce311fc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31120:
    mov.w @(DAT_ce311f8,pc),r0
    mov 0x00,r5
    mov.l @(PTR_ce31200,pc),r3
    mov.b r5,@(r0,r4)
    mov.b @r3,r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3117c
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov r5,r0
    nop
    mov.b r0,@(0x7,r4)
    mov 0x01,r3
    mov.w @(DAT_ce311f8,pc),r0
    mov.b r3,@(r0,r4)
    mov r5,r0
    nop
    mov.w r0,@(0x1c,r4)
    mov 0x03,r0
    mov.w r0,@(0x1e,r4)
    mova @(DAT_ce31204,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce311fa,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3115c
    mova @(DAT_ce31208,pc),r0
    fmov.s @r0,fr4

LAB_ce3115c:
    mov 0x34,r0
    mov.l @(PTR_ce31214,pc),r3
    fmov.s @(r0,r4),fr3
    mov 0x00,r6
    fadd fr4,fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce3120c,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r4)
    mova @(DAT_ce31210,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x12,r5

LAB_ce3117c:
    rts
    nop

LAB_ce31180:
    mov r4,r3
    mov.l @(PTR_ce31218,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31192:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3121c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31230
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce311be
    mov.l @(PTR_ce31220,pc),r3
    mov 0x03,r0
    mov 0x01,r5
    mov.w r0,@(0x1e,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce311d8
    nop

LAB_ce311be:
    mov 0x25,r0
    mov.l @(PTR_ce31224,pc),r3
    mov.b @(r0,r14),r6
    mov 0x01,r7
    mov.w @(0x1c,r14),r0
    mov r7,r5
    extu.b r6,r6
    shll2 r6
    shll2 r6
    add 0x08,r0
    add r0,r6
    jsr @r3
    mov r14,r4

LAB_ce311d8:
    mov.w @(0x1c,r14),r0
    mov.l @(PTR_ce31228,pc),r3
    mov r0,r1
    add 0x01,r1
    jsr @r3
    mov 0x03,r0
    mov.l @(PTR_ce3122c,pc),r3
    mov.w r0,@(0x1c,r14)
    mov.l @r3,r0
    mov.w @(DAT_ce311f8,pc),r1
    mov.l @(0x1c,r0),r0
    add r14,r1
    and 0x01,r0
    bra LAB_ce3126e
    mov.b r0,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce311f6:
    #data 0x0525
DAT_ce311f8:
    #data 0x012c
DAT_ce311fa:
    #data 0x01d2
    #align4

PTR_ce311fc:
    #data PTR_ce34f68
PTR_ce31200:
    #data loc_8c2895f0
DAT_ce31204:
    #data 0x428f5555
DAT_ce31208:
    #data 0xc28f5555
DAT_ce3120c:
    #data 0xc1452492
DAT_ce31210:
    #data 0x3e892492
PTR_ce31214:
    #data loc_8c034e8c
PTR_ce31218:
    #data PTR_ce34f74
PTR_ce3121c:
    #data loc_8c034dee
PTR_ce31220:
    #data loc_8c035162
PTR_ce31224:
    #data loc_8c03544c
PTR_ce31228:
    #data loc_8c1292d4
PTR_ce3122c:
    #data loc_8c26823c

;=============================================

LAB_ce31230:
    mov.b @(0x7,r14),r0
    mov 0x01,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31318,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x00,r0
    mov.w r0,@(0x1c,r14)
    mov r4,r0
    nop
    mov.l @(DAT_ce31320,pc),r1
    mov 0x00,r5
    mov.w r0,@(0x1e,r14)
    mov 0x38,r0
    lds r1,FPUL
    fmov.s @(r0,r14),fr2
    mov.l @(PTR_ce31324,pc),r3
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce313fc
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31328,pc),r3
    mov r14,r4
    mov 0x01,r6
    mov 0x12,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3126e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31274:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3132c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3131a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3128a
    bsr FUN_ce313fc
    mov r14,r4

LAB_ce3128a:
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
    mov 0x6C,r0
    fmov.s @(r0,r14),fr3
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt LAB_ce31312
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce31330,pc),r0
    fmov.s @r0,fr2
    mov 0x5C,r0
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31334,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31338,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3131c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31306
    mov 0x02,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31306:
    lds.l @r15+,PR
    mov.l @(PTR_ce31328,pc),r3
    mov 0x12,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31312:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31318:
    #data 0x012c
DAT_ce3131a:
    #data 0x0141
DAT_ce3131c:
    #data 0x01d2
    #align4

DAT_ce31320:
    #data 0x439a4924
PTR_ce31324:
    #data loc_8c0c3ed4
PTR_ce31328:
    #data loc_8c034e8c
PTR_ce3132c:
    #data loc_8c034dee
DAT_ce31330:
    #data 0xbfd55555
DAT_ce31334:
    #data 0x412b6db6
DAT_ce31338:
    #data 0xbf092492

;=============================================

LAB_ce3133c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31478,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31472,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce313ba
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
    mov.w @(DAT_ce31474,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce313ba
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x03,r6
    mov.w @(DAT_ce31474,pc),r0
    mov 0x12,r5
    mov.l @(PTR_ce3147c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31476,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce313ba:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313c0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31478,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce313f6
    mov.b @(0x5,r14),r0
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    mov 0x00,r0
    mov r0,r3
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31480,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3147c,pc),r2
    mov 0x00,r6
    mov r6,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce313f6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce313fc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3144a
    mov 0x03,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1c,r14),r0
    cmp/eq 0x08,r0
    bf LAB_ce31428
    mov r14,r4
    mov 0x01,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31480,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31428:
    mov 0x25,r0
    mov.l @(PTR_ce31484,pc),r3
    mov.b @(r0,r14),r2
    mov 0x00,r5
    mov 0x01,r7
    extu.b r2,r2
    shll2 r2
    shll2 r2
    mov r2,r6
    mov.l r2,@r15
    mov.w @(0x1c,r14),r0
    add r0,r6
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce3144a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31452:
    mov r4,r3
    mov.l @(PTR_ce31488,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31464:
    mov.b @(0x6,r4),r0
    mov 0x04,r6
    mov.l @(PTR_ce3147c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x12,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31472:
    #data 0x0141
DAT_ce31474:
    #data 0x041c
DAT_ce31476:
    #data 0x01f9
    #align4

PTR_ce31478:
    #data loc_8c034dee
PTR_ce3147c:
    #data loc_8c034e8c
PTR_ce31480:
    #data loc_8c035162
PTR_ce31484:
    #data loc_8c03544c
PTR_ce31488:
    #data PTR_ce34f80

;=============================================

LAB_ce3148c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce315a4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce314ca
    mov.b @(0x5,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x01,r5
    mov.b r0,@(0x7,r14)
    mov 0x20,r0
    mov.l @(PTR_ce315a8,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r13,r6
    mov.l @(PTR_ce315ac,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce314ca:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce314d2:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce315b0,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce315a2,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce314e8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce315ac,pc),r13
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce3151a
    cmp/eq 0x02,r0
    bt LAB_ce31554
    cmp/eq 0x01,r0
    bt LAB_ce3155a
    cmp/eq 0x03,r0
    bt LAB_ce3155a
    cmp/eq 0x04,r0
    bt LAB_ce3155a
    bra LAB_ce31562
    nop

LAB_ce3151a:
    mov.l @(PTR_ce315b4,pc),r3
    jsr @r3
    nop
    mov 0x21,r1
    add r14,r1
    and 0x01,r0
    mov.b r0,@r1
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce31532
    bra LAB_ce3155c
    mov 0x00,r6

LAB_ce31532:
    mov.l @r15,r3
    mov 0x39,r0
    mov 0x00,r2
    mov 0x13,r5
    mov.b r2,@(r0,r3)
    mov 0x01,r6
    jsr @r13
    mov r14,r4
    mov r14,r4
    mov 0x01,r5
    mov 0x0D,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce315b8,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31554:
    mov 0x02,r6
    bra LAB_ce3155c
    nop

LAB_ce3155a:
    mov 0x03,r6

LAB_ce3155c:
    mov 0x13,r5
    jsr @r13
    mov r14,r4

LAB_ce31562:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3156c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce315bc,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce315c8
    mov 0x21,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31596
    mov.l @(PTR_ce315c0,pc),r3
    jsr @r3
    nop
    mov.l @r15,r2
    mov 0x39,r0
    mov 0x01,r3
    mov.b r3,@(r0,r2)

LAB_ce31596:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce315c4,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315a2:
    #data 0x02a4
    #align4

PTR_ce315a4:
    #data loc_8c034dee
PTR_ce315a8:
    #data loc_8c035162
PTR_ce315ac:
    #data loc_8c034e8c
PTR_ce315b0:
    #data PTR_ce34f88
PTR_ce315b4:
    #data loc_8c03319e
PTR_ce315b8:
    #data loc_8c02fec4
PTR_ce315bc:
    #data loc_8c046c8a
PTR_ce315c0:
    #data loc_8c02fd26
PTR_ce315c4:
    #data loc_8c051648

;=============================================

LAB_ce315c8:
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce315e6
    cmp/eq 0x02,r0
    bt LAB_ce31604
    cmp/eq 0x04,r0
    bt LAB_ce31604
    cmp/eq 0x01,r0
    bt LAB_ce31604
    cmp/eq 0x03,r0
    bt LAB_ce31604
    bra LAB_ce31604
    nop

LAB_ce315e6:
    mov 0x21,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31604
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3167c,pc),r1
    extu.b r0,r0
    mov.l @r15,r5
    shll2 r0
    mov.l @(r0,r1),r3
    add 0x04,r15
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31604:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31680,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31610:
    mov.w @(DAT_ce31676,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31680,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31678,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce3164c
    mov.w @(DAT_ce31678,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce31684,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce3167a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31644
    mova @(DAT_ce31688,pc),r0
    fmov.s @r0,fr4

LAB_ce31644:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce3164c:
    mov.w @(DAT_ce31678,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce31670
    mov.b @(0x7,r14),r0
    mov 0x02,r3
    mov.l @(PTR_ce3168c,pc),r1
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x01,r5
    mov.w @(DAT_ce31678,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r1
    mov.l @r15+,r14

LAB_ce31670:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31676:
    #data 0x01f5
DAT_ce31678:
    #data 0x0141
DAT_ce3167a:
    #data 0x01d2
    #align4

PTR_ce3167c:
    #data PTR_ce34f90
PTR_ce31680:
    #data loc_8c034dee
DAT_ce31684:
    #data 0x42555555
DAT_ce31688:
    #data 0xc2555555
PTR_ce3168c:
    #data loc_8c0c3ed4

;=============================================

LAB_ce31690:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x02,r13
    mov.w @(DAT_ce317ce,pc),r0
    sts.l PR,@-r15
    mov.l @(PTR_ce317dc,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce317d0,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce316ce
    mov.w @(DAT_ce317d0,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce317e0,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce317d2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce316c6
    mova @(DAT_ce317e4,pc),r0
    fmov.s @r0,fr4

LAB_ce316c6:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce316ce:
    mov.w @(DAT_ce317d0,pc),r0
    mov.b @(r0,r14),r3
    tst r13,r3
    bt LAB_ce31718
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce317d4,pc),r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce317e8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce317ec,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce317f0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce317f4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce317d2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31718
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31718:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31720:
    mov.w @(DAT_ce317ce,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce317dc,pc),r3
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
    mov.w @(DAT_ce317d6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3179c
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce317d6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce317d4,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce3179c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce317a2:
    mov.l @(PTR_ce317dc,pc),r3
    jmp @r3
    nop

LAB_ce317a8:
    mov.w @(DAT_ce317d8,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce317f8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce317bc:
    mov r4,r3
    mov.l @(PTR_ce317fc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce317ce:
    #data 0x01f5
DAT_ce317d0:
    #data 0x0141
DAT_ce317d2:
    #data 0x01d2
DAT_ce317d4:
    #data 0x01f9
DAT_ce317d6:
    #data 0x041c
DAT_ce317d8:
    #data 0x01e9
    #align4

PTR_ce317dc:
    #data loc_8c034dee
DAT_ce317e0:
    #data 0xc2555555
DAT_ce317e4:
    #data 0x42555555
DAT_ce317e8:
    #data 0xc1855555
DAT_ce317ec:
    #data 0x3f055555
DAT_ce317f0:
    #data 0x40ab6db6
DAT_ce317f4:
    #data 0xbf092492
PTR_ce317f8:
    #data PTR_ce34fa0
PTR_ce317fc:
    #data PTR_ce34fc4

;=============================================

LAB_ce31800:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    mov.w @(DAT_ce31962,pc),r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31964,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31966,pc),r0
    mov.b r13,@(r0,r14)
    add 0x03,r0
    mov.b r13,@(r0,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce31970,pc),r3
    mov.b r0,@(0x4,r4)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31974,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31978,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31968,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce3197c,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r2
    add 0xFE,r0
    add 0x30,r2
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
    mov.w @(DAT_ce31968,pc),r0
    mov.l @(PTR_ce31980,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce3187e:
    mov r4,r3
    mov.l @(PTR_ce31984,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31890:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31988,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3196a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce318f2
    mov.b @(0x7,r14),r0
    mov 0x00,r13
    mov.l @(PTR_ce3198c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3196a,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3196c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce318e8
    mov 0x00,r5
    mov.w @(DAT_ce31968,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x64,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3197c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce318e8:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce31c7a
    mov.l @r15+,r14

LAB_ce318f2:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce318fa:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31988,pc),r3
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
    mov.w @(DAT_ce3196a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce3195c
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r14,r4
    mov 0x01,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3196a,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    bra LAB_ce31c7a
    mov.l @r15+,r14

LAB_ce3195c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31962:
    #data 0x02a4
DAT_ce31964:
    #data 0x041c
DAT_ce31966:
    #data 0x01f9
DAT_ce31968:
    #data 0x01a3
DAT_ce3196a:
    #data 0x0141
DAT_ce3196c:
    #data 0x019e
    #align4

PTR_ce31970:
    #data loc_8c05218a
PTR_ce31974:
    #data loc_8c05115a
PTR_ce31978:
    #data loc_8c056de4
PTR_ce3197c:
    #data loc_8c2896b0
PTR_ce31980:
    #data loc_8c034e8c
PTR_ce31984:
    #data PTR_ce34fd0
PTR_ce31988:
    #data loc_8c034dee
PTR_ce3198c:
    #data loc_8c053082

;=============================================

LAB_ce31990:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l r13,@-r15
    add r14,r1
    mov.l r12,@-r15
    mov 0x34,r0
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    fmov.s @r1,fr3
    mov 0x68,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    mov.w @(DAT_ce31aaa,pc),r12
    mov 0x00,r13
    fadd fr3,fr2
    fldi0 fr15
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @r1,fr3
    mov 0x6C,r1
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    add r14,r1
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
    bt/s LAB_ce319ee
    add r14,r12
    fmov fr15,@(r0,r14)

LAB_ce319ee:
    mov.l @(PTR_ce31ab8,pc),r3
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31aac,pc),r0
    mov 0x01,r6
    mov.b @(r0,r14),r2
    tst r6,r2
    bt LAB_ce31a2e
    mov.w @(DAT_ce31aae,pc),r0
    mov.b @(r0,r14),r5
    tst r5,r5
    bt/s LAB_ce31a28
    mov r13,r4
    exts.b r5,r0
    tst 0x01,r0
    bf LAB_ce31a28
    mov.w @(DAT_ce31ab0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31a26
    mov.w @(DAT_ce31ab2,pc),r0
    mov.w @(DAT_ce31ab4,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31a28

LAB_ce31a26:
    mov r6,r4

LAB_ce31a28:
    mov.b @(0x4,r12),r0
    or r4,r0
    mov.b r0,@(0x4,r12)

LAB_ce31a2e:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31af0
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov.b @(0x4,r12),r0
    tst r0,r0
    bt LAB_ce31a96
    mov.l @(DAT_ce31abc,pc),r1
    mov 0x60,r0
    fmov.s @(r0,r14),fr1
    mov r14,r4
    lds r1,FPUL
    mov 0x02,r6
    mov 0x15,r5
    fsts FPUL,fr2
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov.w @(DAT_ce31ab6,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x33,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31ac0,pc),r3
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
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @(PTR_ce31ac4,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31a96:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31ab6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31acc
    mova @(DAT_ce31ac8,pc),r0
    bra LAB_ce31ad0
    fmov.s @r0,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31aaa:
    #data 0x02a4
DAT_ce31aac:
    #data 0x0141
DAT_ce31aae:
    #data 0x019e
DAT_ce31ab0:
    #data 0x0525
DAT_ce31ab2:
    #data 0x034e
DAT_ce31ab4:
    #data 0x0300
DAT_ce31ab6:
    #data 0x01a3
    #align4

PTR_ce31ab8:
    #data loc_8c034dee
DAT_ce31abc:
    #data 0x412b6db6
PTR_ce31ac0:
    #data loc_8c2896b0
PTR_ce31ac4:
    #data loc_8c034e8c
DAT_ce31ac8:
    #data 0x40092492

;=============================================

LAB_ce31acc:
    mova @(DAT_ce31c24,pc),r0
    fmov.s @r0,fr2

LAB_ce31ad0:
    mov 0x60,r0
    mov.l @(PTR_ce31c2c,pc),r3
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31c28,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x03,r6
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31af0:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31afc:
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
    bt/s LAB_ce31b4e
    fldi0 fr4
    fmov fr4,@(r0,r14)

LAB_ce31b4e:
    mov.l @(PTR_ce31c30,pc),r3
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b82
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31c2c,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce31c34,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31c28,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b82:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b88:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l r13,@-r15
    sts.l PR,@-r15
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
    mov.l @(PTR_ce31c30,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31c1c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31c50
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31c1c,pc),r0
    fldi0 fr4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31c1e,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31c20,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bf LAB_ce31c18
    mov.w @(DAT_ce31c22,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31c38

LAB_ce31c18:
    bra LAB_ce31c3a
    mov 0x06,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c1c:
    #data 0x041c
DAT_ce31c1e:
    #data 0x01f9
DAT_ce31c20:
    #data 0x019e
DAT_ce31c22:
    #data 0x01a3
    #align4

DAT_ce31c24:
    #data 0x40892492
DAT_ce31c28:
    #data 0xbfcdb6db
PTR_ce31c2c:
    #data loc_8c034e8c
PTR_ce31c30:
    #data loc_8c034dee
DAT_ce31c34:
    #data 0xc14db6db

;=============================================

LAB_ce31c38:
    mov 0x05,r13

LAB_ce31c3a:
    mov.l @(PTR_ce31d4c,pc),r3
    mov 0x15,r5
    mov r13,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31d50,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c50:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31c58:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31d54,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c72
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31d58,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31c72:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31c7a:
    mov.w @(DAT_ce31d40,pc),r0
    shll2 r5
    shll2 r5
    mov.l @(PTR_ce31d5c,pc),r3
    mov.b @(r0,r4),r2
    shll r5
    add r3,r5
    extu.b r2,r2
    shll2 r2
    shll2 r2
    add r2,r5
    mov.l @r5+,r2
    mova @(DAT_ce31d60,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce31d64,pc),r0
    lds r2,FPUL
    fmov.s @r0,fr4
    mov 0x5C,r0
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    mov.l @r5+,r2
    lds r2,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31d68,pc),r0
    mov.l @r5+,r2
    fmov.s @r0,fr5
    lds r2,FPUL
    mov 0x60,r0
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r4)
    mov 0x6C,r0
    mov.l @r5,r2
    lds r2,FPUL
    float FPUL,fr3
    fmul fr5,fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31d42,pc),r0
    mov.w @(r0,r4),r2
    tst r2,r2
    bt LAB_ce31cec
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce31cec:
    rts
    nop

LAB_ce31cf0:
    mov r4,r3
    mov.l @(PTR_ce31d6c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31d02:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31d44,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s LAB_ce31d78
    mov 0x00,r13
    mov.w @(DAT_ce31d44,pc),r0
    mov.l @(PTR_ce31d70,pc),r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31d46,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31d48,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31d74,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x36,r4
    bra LAB_ce31dc2
    mov 0x07,r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d40:
    #data 0x01a3
DAT_ce31d42:
    #data 0x0130
DAT_ce31d44:
    #data 0x01f9
DAT_ce31d46:
    #data 0x041c
DAT_ce31d48:
    #data 0x01fc
    #align4

PTR_ce31d4c:
    #data loc_8c034e8c
PTR_ce31d50:
    #data loc_8c0511b4
PTR_ce31d54:
    #data loc_8c034dee
PTR_ce31d58:
    #data loc_8c051648
PTR_ce31d5c:
    #data DAT_ce34d18
DAT_ce31d60:
    #data 0x3fd55555
DAT_ce31d64:
    #data 0x47800000
DAT_ce31d68:
    #data 0x40092492
PTR_ce31d6c:
    #data PTR_ce34fe4
PTR_ce31d70:
    #data loc_8c05218a
PTR_ce31d74:
    #data loc_8c05115a

;=============================================

LAB_ce31d78:
    mov.w @(DAT_ce31ea6,pc),r0
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce31eb4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31eb8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31ebc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ea8,pc),r0
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce31eaa,pc),r0
    extu.b r3,r3
    mov.w r3,@(r0,r14)
    mov.w @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31dc0
    mov 0x39,r4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31dc0:
    mov 0x09,r12

LAB_ce31dc2:
    mov.w @(DAT_ce31eac,pc),r0
    mov 0x15,r5
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add r3,r4
    mov.l @(PTR_ce31ec0,pc),r3
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
    mov.w @(DAT_ce31eac,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce31ec4,pc),r2
    add r12,r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e00:
    mov.w @(DAT_ce31eae,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce31e74
    mov r4,r13
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
    mov.w @(DAT_ce31eb0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31e72
    mov.w @(DAT_ce31eb0,pc),r0
    mov.l @(PTR_ce31ec8,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31eae,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e72:
    mov 0x01,r13

LAB_ce31e74:
    mov.l @(PTR_ce31ecc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31eb2,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce31e9e
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce31ed0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov.l @(PTR_ce31ed4,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e9e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ea6:
    #data 0x01d4
DAT_ce31ea8:
    #data 0x01d2
DAT_ce31eaa:
    #data 0x0130
DAT_ce31eac:
    #data 0x01a3
DAT_ce31eae:
    #data 0x01f9
DAT_ce31eb0:
    #data 0x041c
DAT_ce31eb2:
    #data 0x0141
    #align4

DAT_ce31eb4:
    #data 0x3fd55555
DAT_ce31eb8:
    #data 0x414db6db
DAT_ce31ebc:
    #data 0xbf2b6db6
PTR_ce31ec0:
    #data loc_8c2896b0
PTR_ce31ec4:
    #data loc_8c034e8c
PTR_ce31ec8:
    #data loc_8c052dac
PTR_ce31ecc:
    #data loc_8c034dee
PTR_ce31ed0:
    #data loc_8c056de4
PTR_ce31ed4:
    #data loc_8c06eed4

;=============================================

LAB_ce31ed8:
    mov.w @(DAT_ce31fac,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31efe
    mov.l @(PTR_ce31fb4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31f90
    lds.l @r15+,PR
    mov.l @(PTR_ce31fb8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31efe:
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
    mov.w @(DAT_ce31fae,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31f5a
    mov.w @(DAT_ce31fae,pc),r0
    mov 0x00,r3
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31fac,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31fbc,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f5a:
    mov.l @(PTR_ce31fb4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31f6c
    mov.l @(PTR_ce31fc0,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31f6c:
    mov.w @(DAT_ce31fb0,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce31f90
    mov.l @(DAT_ce31fc4,pc),r1
    mov 0x00,r2
    mov.w @(DAT_ce31fb0,pc),r0
    lds r1,FPUL
    mov.b r2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31fc8,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)

LAB_ce31f90:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f96:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31fcc,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31fb2,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31fac:
    #data 0x01f9
DAT_ce31fae:
    #data 0x041c
DAT_ce31fb0:
    #data 0x0141
DAT_ce31fb2:
    #data 0x02a4
    #align4

PTR_ce31fb4:
    #data loc_8c034dee
PTR_ce31fb8:
    #data loc_8c051648
PTR_ce31fbc:
    #data loc_8c052dac
PTR_ce31fc0:
    #data loc_8c05176e
DAT_ce31fc4:
    #data 0x3f4db6db
DAT_ce31fc8:
    #data 0xbf4db6db
PTR_ce31fcc:
    #data PTR_ce34ff0

;=============================================

LAB_ce31fd0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x20,r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov 0x22,r0
    mov 0x1C,r2
    mov.b r2,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce320d8,pc),r0
    mov.b r3,@(r0,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x5,r5)
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce320e8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce320ec,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce320f0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce320da,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32044
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32044:
    mov.w @(DAT_ce320dc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32070
    mov 0x20,r0
    mov.l @(PTR_ce320f4,pc),r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce320de,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce320e0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce320f8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce320fc,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce32070:
    mov 0x20,r0
    mov.b @(r0,r14),r2
    mov.w @(DAT_ce320e2,pc),r0
    mov r2,r3
    shll r2
    add r3,r2
    mov.l @(PTR_ce32100,pc),r3
    add 0x3C,r2
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
    mov 0x20,r0
    mov.b @(r0,r14),r6
    mov.w @(DAT_ce320e4,pc),r0
    mov r6,r2
    shll r6
    mov.b @(r0,r14),r1
    add r2,r6
    add r1,r6
    add 0x0B,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce32104,pc),r2
    mov r14,r4
    mov 0x15,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce320be:
    mov.w @(DAT_ce320d8,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32108,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce320d8:
    #data 0x01f5
DAT_ce320da:
    #data 0x01d2
DAT_ce320dc:
    #data 0x01f9
DAT_ce320de:
    #data 0x01fc
DAT_ce320e0:
    #data 0x041c
DAT_ce320e2:
    #data 0x01a1
DAT_ce320e4:
    #data 0x01a3
    #align4

DAT_ce320e8:
    #data 0x403aaaaa
DAT_ce320ec:
    #data 0x41892492
DAT_ce320f0:
    #data 0xbf892492
PTR_ce320f4:
    #data loc_8c05218a
PTR_ce320f8:
    #data loc_8c05115a
PTR_ce320fc:
    #data loc_8c053082
PTR_ce32100:
    #data loc_8c2896b0
PTR_ce32104:
    #data loc_8c034e8c
PTR_ce32108:
    #data PTR_ce34ffc

;=============================================

LAB_ce3210c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov.l @(PTR_ce32204,pc),r3
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
    mov.w @(DAT_ce321fe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32184
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32208,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.l @r15,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32200,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32176
    mov 0x08,r5
    mov 0x0A,r5

LAB_ce32176:
    mov r14,r4
    mov 0x00,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3220c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32184:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3218c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32204,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32208,pc),r3
    mov.l @r15,r5
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0x5,r2),r0
    tst r0,r0
    bt LAB_ce321f6
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce32210,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32214,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32218,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32202,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce321ea
    mov 0x05,r5
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce321ea:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3221c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce321f6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce321fe:
    #data 0x014b
DAT_ce32200:
    #data 0x01a3
DAT_ce32202:
    #data 0x01d2
    #align4

PTR_ce32204:
    #data loc_8c034dee
PTR_ce32208:
    #data FUN_ce3402e
PTR_ce3220c:
    #data loc_8c0c447c
DAT_ce32210:
    #data 0xc0700000
DAT_ce32214:
    #data 0xbfa00000
DAT_ce32218:
    #data 0xc0892492
PTR_ce3221c:
    #data loc_8c056de4

;=============================================

LAB_ce32220:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.b @(0x5,r13),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf/s LAB_ce322a4
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce3230c,pc),r3
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
    mov.l @(PTR_ce32310,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32306,pc),r0
    mov 0x01,r4
    mov r4,r1
    mov.b @(r0,r14),r3
    add 0xD5,r0
    mov.b @(r0,r14),r2
    extu.b r2,r2
    xor r4,r2
    shad r2,r1
    tst r1,r3
    bf LAB_ce3229e
    mov 0x22,r0
    mov.l @(DAT_ce32314,pc),r2
    mov.b @(r0,r14),r1
    mov r4,r3
    extu.b r1,r1
    shad r1,r3
    tst r2,r3
    bf LAB_ce322fe

LAB_ce3229e:
    mov 0x02,r0
    bra LAB_ce322fe
    mov.b r0,@(0x5,r13)

LAB_ce322a4:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce32318,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3231c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32320,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32308,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce322e4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce322e4:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r6
    mov 0x15,r5
    lds.l @r15+,PR
    mov r6,r3
    shll r6
    add r3,r6
    mov.l @(PTR_ce32324,pc),r3
    mov.l @r15+,r13
    add 0x0D,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce322fe:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32306:
    #data 0x01fd
DAT_ce32308:
    #data 0x0130
    #align4

PTR_ce3230c:
    #data loc_8c034dee
PTR_ce32310:
    #data FUN_ce3402e
DAT_ce32314:
    #data 0xfc00000f
DAT_ce32318:
    #data 0xc0a00000
DAT_ce3231c:
    #data 0x40ab6db6
DAT_ce32320:
    #data 0xbf092492
PTR_ce32324:
    #data loc_8c034e8c

;=============================================

LAB_ce32328:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l r5,@r15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce323da
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
    mov.w @(DAT_ce323fa,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce323c0
    mov.w @(DAT_ce323fa,pc),r0
    mov 0x00,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce323fc,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3239e
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32400,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3239e:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32404,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32408,pc),r2
    jsr @r2
    mov r14,r4
    mov r14,r4
    mov 0x01,r5
    mov 0x03,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3240c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce323c0:
    mov.l @(PTR_ce32410,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce323fe,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce323f2
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce32418
    mov.l @r15+,r14

LAB_ce323da:
    mov.l @(PTR_ce32410,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce323f2
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32414,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce323f2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce323fa:
    #data 0x041c
DAT_ce323fc:
    #data 0x01f9
DAT_ce323fe:
    #data 0x0141
    #align4

PTR_ce32400:
    #data loc_8c052dac
PTR_ce32404:
    #data loc_8c05218a
PTR_ce32408:
    #data loc_8c0511b4
PTR_ce3240c:
    #data loc_8c034e8c
PTR_ce32410:
    #data loc_8c034dee
PTR_ce32414:
    #data loc_8c051648

;=============================================

LAB_ce32418:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x20,r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32496
    mov.w @(DAT_ce32542,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32496
    mov.w @(DAT_ce32544,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32496
    mov.l @r15,r3
    mov.b @(0x6,r3),r0
    tst r0,r0
    bt LAB_ce32496
    mov.w @(DAT_ce32548,pc),r6
    mov 0x03,r2
    mov.w @(DAT_ce32546,pc),r0
    mov.l @(PTR_ce32558,pc),r5
    add r14,r6
    mov.l @(PTR_ce3255c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce32490
    mov.l @r15,r2
    mov 0x01,r3
    mov.w @(DAT_ce32548,pc),r5
    mov.b @(0x6,r2),r0
    add r14,r5
    add 0xFF,r0
    mov.b r0,@(0x6,r2)
    mov.w @(DAT_ce3254a,pc),r0
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.w @(DAT_ce3254c,pc),r0
    mov.l @(PTR_ce32560,pc),r2
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3254e,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce32490:
    mov.w @(DAT_ce32546,pc),r0
    mov 0x15,r2
    mov.b r2,@(r0,r14)

LAB_ce32496:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3249e:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32564,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32550,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce324b4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32542,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32552,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32554,pc),r0
    mov.b r13,@(r0,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce32568,pc),r3
    mov.b r0,@(0x7,r5)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3256c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32556,pc),r0
    mov r14,r4
    mov 0x15,r5
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32570,pc),r0
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov 0x22,r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32556,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x42,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32574,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce32556,pc),r0
    mov.b @(r0,r14),r6
    add 0x12,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce32578,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32530:
    mov r4,r3
    mov.l @(PTR_ce3257c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32542:
    #data 0x01f9
DAT_ce32544:
    #data 0x0525
DAT_ce32546:
    #data 0x01d0
DAT_ce32548:
    #data 0x03cc
DAT_ce3254a:
    #data 0x0130
DAT_ce3254c:
    #data 0x01d2
DAT_ce3254e:
    #data 0x01e9
DAT_ce32550:
    #data 0x02a4
DAT_ce32552:
    #data 0x041c
DAT_ce32554:
    #data 0x01fc
DAT_ce32556:
    #data 0x01a3
    #align4

PTR_ce32558:
    #data DAT_ce34e5e
PTR_ce3255c:
    #data loc_8c054e58
PTR_ce32560:
    #data loc_8c055c3a
PTR_ce32564:
    #data PTR_ce35008
PTR_ce32568:
    #data loc_8c05218a
PTR_ce3256c:
    #data loc_8c05115a
PTR_ce32570:
    #data DAT_ce34d88
PTR_ce32574:
    #data loc_8c2896b0
PTR_ce32578:
    #data loc_8c034e8c
PTR_ce3257c:
    #data PTR_ce35014

;=============================================

LAB_ce32580:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32690,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32684,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce325cc
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x05,r5
    mov.w @(DAT_ce32684,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x10,r3
    mov.w @(DAT_ce32686,pc),r0
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32694,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32698,pc),r3
    mov.l @r15,r5
    jsr @r3
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3269c,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce325cc:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce325d4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32690,pc),r3
    jsr @r3
    mov r5,r13
    mov.w @(DAT_ce32688,pc),r0
    mov r13,r5
    mov.l @(PTR_ce32698,pc),r3
    mov.b @(r0,r14),r2
    mov 0x22,r0
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x7,r13),r0
    cmp/pl r0
    bf LAB_ce3261e
    mov.b @(0x7,r14),r0
    mov 0x01,r3
    mov 0x03,r2
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.w @(DAT_ce3268a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x08,r0
    mov.b r2,@(r0,r14)
    add 0xB1,r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce326a0,pc),r3
    mov.l @r15+,r13
    add 0x15,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce3261e:
    cmp/pz r0
    bt LAB_ce32640
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce326a0,pc),r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    mov.w @(DAT_ce3268c,pc),r0
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    add 0x19,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32640:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32648:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    mov.l r12,@-r15
    mov 0x01,r4
    sts.l PR,@-r15
    mov.b @(0x7,r13),r0
    cmp/pz r0
    bt/s LAB_ce326a4
    mov 0x00,r12
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.w @(DAT_ce3268e,pc),r0
    mov.l @(PTR_ce326a0,pc),r3
    mov.b r4,@(r0,r14)
    add 0xB1,r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov r14,r4
    mov.l @r15+,r12
    add 0x19,r6
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32684:
    #data 0x014b
DAT_ce32686:
    #data 0x027b
DAT_ce32688:
    #data 0x0140
DAT_ce3268a:
    #data 0x01ea
DAT_ce3268c:
    #data 0x01a3
DAT_ce3268e:
    #data 0x01f2
    #align4

PTR_ce32690:
    #data loc_8c034dee
PTR_ce32694:
    #data loc_8c056de4
PTR_ce32698:
    #data FUN_ce3402e
PTR_ce3269c:
    #data loc_8c06f5ec
PTR_ce326a0:
    #data loc_8c034e8c

;=============================================

LAB_ce326a4:
    mov.w @(DAT_ce32738,pc),r0
    mov 0x03,r3
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32744,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3271e
    mov.b @(0x7,r14),r0
    mov 0x02,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r13)
    mov r12,r0
    nop
    mov.w r0,@(0xa,r13)
    mov.w r0,@(0xc,r13)
    mov r4,r0
    nop
    mov.w r0,@(0xe,r13)
    mov 0x05,r0
    mov.w r0,@(0x12,r13)
    mov 0x05,r6
    mov.w @(DAT_ce3273a,pc),r0
    mov r6,r5
    mov.l @(PTR_ce32748,pc),r3
    mov.l @(r0,r14),r13
    mov.b @(0x6,r13),r0
    add 0x01,r0
    mov.b r0,@(0x6,r13)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3274c,pc),r2
    mov 0x10,r5
    jsr @r2
    mov r13,r4
    mov.l @(PTR_ce32750,pc),r3
    mov 0x0A,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32754,pc),r2
    mov 0x0F,r5
    mov 0x03,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32758,pc),r3
    mov r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3273c,pc),r0
    mov 0xFF,r2
    mov.w @(DAT_ce3273e,pc),r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32740,pc),r0
    bra LAB_ce3272e
    mov.b r3,@(r0,r14)

LAB_ce3271e:
    mov.l @(PTR_ce3275c,pc),r3
    mov r13,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32742,pc),r0
    mov.b @(r0,r14),r2
    mov 0x22,r0
    mov.b r2,@(r0,r14)

LAB_ce3272e:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32738:
    #data 0x01ea
DAT_ce3273a:
    #data 0x01c8
DAT_ce3273c:
    #data 0x015a
DAT_ce3273e:
    #data 0x00c5
DAT_ce32740:
    #data 0x01f7
DAT_ce32742:
    #data 0x0140
    #align4

PTR_ce32744:
    #data loc_8c034dee
PTR_ce32748:
    #data loc_8c02fec4
PTR_ce3274c:
    #data loc_8c050552
PTR_ce32750:
    #data loc_8c05064e
PTR_ce32754:
    #data loc_8c034e8c
PTR_ce32758:
    #data loc_8c052618
PTR_ce3275c:
    #data FUN_ce3402e

;=============================================

LAB_ce32760:
    mov.w @(DAT_ce32842,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x03,r2
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    add 0x08,r0
    mov.b r2,@(r0,r14)
    add 0xD6,r0
    mov.l @(r0,r14),r12
    mov 0x02,r3
    add 0x2C,r0
    mov.b r3,@(r0,r12)
    mov.l @(PTR_ce32848,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3284c,pc),r2
    jsr @r2
    mov r12,r4
    tst r0,r0
    bt LAB_ce327ac
    mov.w @(0xc,r13),r0
    mov 0x10,r5
    mov.l @(PTR_ce32850,pc),r3
    add 0x02,r0
    mov.w r0,@(0xc,r13)
    mov.w @(0xa,r13),r0
    add 0xFF,r0
    mov.w r0,@(0xa,r13)
    mov.w @(0xe,r13),r0
    add 0xFF,r0
    mov.w r0,@(0xe,r13)
    jsr @r3
    mov r12,r4

LAB_ce327ac:
    mov.l @(PTR_ce32854,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce327d0
    mov.w @(0xc,r13),r0
    mov 0x0A,r5
    mov.l @(PTR_ce32858,pc),r3
    add 0xFC,r0
    mov.w r0,@(0xc,r13)
    mov.w @(0xa,r13),r0
    add 0x02,r0
    mov.w r0,@(0xa,r13)
    mov.w @(0xe,r13),r0
    add 0x02,r0
    mov.w r0,@(0xe,r13)
    jsr @r3
    mov r14,r4

LAB_ce327d0:
    mov.w @(0xa,r13),r0
    mov r0,r4
    shar r4
    cmp/pz r4
    bt LAB_ce327e4
    mov 0x00,r5
    mov r5,r0
    nop
    mov r0,r4
    mov.w r0,@(0xa,r13)

LAB_ce327e4:
    mov.w @(DAT_ce32844,pc),r0
    mov.b @(r0,r14),r3
    cmp/ge r3,r4
    bf LAB_ce327f0
    mov.b @(r0,r14),r4
    add 0xFF,r4

LAB_ce327f0:
    mov.b @(r0,r14),r3
    sub r4,r3
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32838
    mov.w @(DAT_ce32846,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(0xe,r13),r0
    add 0xFE,r0
    mov.w r0,@(0xe,r13)
    exts.w r0,r0
    cmp/pl r0
    bf LAB_ce32820
    mov.w @(0x12,r13),r0
    add 0xFF,r0
    mov.w r0,@(0x12,r13)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32838

LAB_ce32820:
    mov.b @(0x7,r14),r0
    mov 0x04,r6
    mov.l @(PTR_ce3285c,pc),r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32838:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32842:
    #data 0x01ea
DAT_ce32844:
    #data 0x0142
DAT_ce32846:
    #data 0x0141
    #align4

PTR_ce32848:
    #data loc_8c034dee
PTR_ce3284c:
    #data loc_8c050610
PTR_ce32850:
    #data loc_8c050552
PTR_ce32854:
    #data loc_8c050682
PTR_ce32858:
    #data loc_8c05064e
PTR_ce3285c:
    #data loc_8c034e8c

;=============================================

LAB_ce32860:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x03,r3
    mov.l r12,@-r15
    mov 0x00,r12
    mov.l r11,@-r15
    mov r5,r11
    mov.w @(DAT_ce329a2,pc),r0
    mov.l r10,@-r15
    mov 0x01,r10
    sts.l PR,@-r15
    mov.b r10,@(r0,r14)
    add 0x08,r0
    mov.b r3,@(r0,r14)
    add 0xD6,r0
    mov.l @(r0,r14),r13
    mov 0x02,r3
    add 0x2C,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce329b4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32912
    mov.w @(DAT_ce329a4,pc),r0
    mov 0x02,r2
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r10,@(r0,r13)
    add 0xDC,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)
    add 0x27,r0
    mov.b r2,@(r0,r13)
    add 0xA8,r0
    mov 0x23,r3
    mov.b r3,@(r0,r13)
    mov r12,r0
    nop
    mov.b r0,@(0x6,r13)
    mov 0x07,r3
    mov.w @(DAT_ce329a6,pc),r0
    mov.b r12,@(r0,r13)
    mov 0x22,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce329a8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce328d2
    mov 0x00,r6
    mov 0x22,r0
    mov.b @(r0,r14),r2
    neg r2,r2
    add 0x20,r2
    mov.b r2,@(r0,r14)

LAB_ce328d2:
    mov.l @(PTR_ce329b8,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce329bc,pc),r2
    mov 0x03,r5
    jsr @r2
    mov r14,r4
    mov.w @(0xc,r11),r0
    mov.l @(PTR_ce329c0,pc),r3
    mov r0,r5
    jsr @r3
    mov r13,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x18,r6
    mov.w @(DAT_ce329aa,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce329c4,pc),r3
    mov r14,r4
    mov.b r10,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32912:
    mov.w @(0xa,r11),r0
    mov r0,r4
    shar r4
    cmp/pz r4
    bt LAB_ce32924
    mov r12,r0
    nop
    mov r0,r4
    mov.w r0,@(0xa,r11)

LAB_ce32924:
    mov.w @(DAT_ce329ac,pc),r0
    mov.b @(r0,r14),r3
    cmp/ge r3,r4
    bf LAB_ce32930
    mov.b @(r0,r14),r4
    add 0xFF,r4

LAB_ce32930:
    mov.b @(r0,r14),r3
    sub r4,r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32944:
    mov.w @(DAT_ce329a2,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce329b4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce3297c
    mov.w @(DAT_ce329ae,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32986
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    add 0xEF,r0
    mov.w @(r0,r14),r2
    mov 0x01,r3
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.w @(DAT_ce329a8,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    bra LAB_ce32986
    mov.b r1,@(r0,r14)

LAB_ce3297c:
    lds.l @r15+,PR
    mov.l @(PTR_ce329c8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32986:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3298c:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce329cc,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce329b0,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329a2:
    #data 0x01ea
DAT_ce329a4:
    #data 0x01b4
DAT_ce329a6:
    #data 0x01fd
DAT_ce329a8:
    #data 0x01d2
DAT_ce329aa:
    #data 0x01f2
DAT_ce329ac:
    #data 0x0142
DAT_ce329ae:
    #data 0x0141
DAT_ce329b0:
    #data 0x02a4
    #align4

PTR_ce329b4:
    #data loc_8c034dee
PTR_ce329b8:
    #data loc_8c02fec4
PTR_ce329bc:
    #data loc_8c0c3ed4
PTR_ce329c0:
    #data loc_8c05929c
PTR_ce329c4:
    #data loc_8c034e8c
PTR_ce329c8:
    #data loc_8c051648
PTR_ce329cc:
    #data PTR_ce35028

;=============================================

LAB_ce329d0:
    mov r4,r3
    mov.l @(PTR_ce32b18,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce329e2:
    mov.w @(DAT_ce32afe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce32a04
    mov r5,r13
    mov.w @(DAT_ce32b02,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32b00,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32a04:
    mov.b @(0x7,r14),r0
    mov 0x01,r3
    mov 0x04,r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x00,r12
    mov.w @(DAT_ce32b04,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x28,r0
    mov.w r0,@(0x1c,r14)
    mov 0x16,r0
    mov 0x0A,r3
    mov.b r3,@(r0,r13)
    mov 0x18,r0
    mov.b r2,@(r0,r13)
    mov 0x17,r0
    mov 0x05,r3
    mov.b r3,@(r0,r13)
    mov.w @(DAT_ce32b06,pc),r0
    mov.l @(r0,r14),r2
    mov 0x19,r0
    mov.l r2,@(0x20,r13)
    mov.b r12,@(r0,r13)
    mov 0x1A,r0
    mov.b r12,@(r0,r13)
    mov 0x1B,r0
    mov.b r12,@(r0,r13)
    mov 0x1D,r0
    mov.b r12,@(r0,r13)
    mov 0x1C,r0
    mov.b r12,@(r0,r13)
    mov 0x1E,r0
    mov.b r12,@(r0,r13)
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.b @(0x2,r14),r0
    tst r0,r0
    bt/s LAB_ce32a64
    mov 0x01,r5
    bra LAB_ce32a66
    mov 0x04,r6

LAB_ce32a64:
    mov 0x03,r6

LAB_ce32a66:
    mov.l @(PTR_ce32b1c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32b08,pc),r0
    mov 0x45,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32b20,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32b24,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32b0a,pc),r0
    mov 0x01,r2
    mov.b @(r0,r14),r3
    mov 0x1F,r0
    mov.b r3,@(r0,r13)
    mov 0x20,r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32b0c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32ac4
    mov.l @(PTR_ce32b28,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x20,r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce32b0e,pc),r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce32b10,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce32ac4:
    lds.l @r15+,PR
    mov 0x20,r0
    mov.l @(PTR_ce32b2c,pc),r3
    mov.b @(r0,r14),r6
    mov 0x16,r5
    mov.l @r15+,r12
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ad8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32b12,pc),r0
    mov 0x02,r13
    mov r4,r14
    mov 0x05,r3
    mov.l r5,@r15
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32b14,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32afe,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32b30
    bra LAB_ce32b32
    mov 0x02,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32afe:
    #data 0x0255
DAT_ce32b00:
    #data 0x00ff
DAT_ce32b02:
    #data 0x03f0
DAT_ce32b04:
    #data 0x01d4
DAT_ce32b06:
    #data 0x020c
DAT_ce32b08:
    #data 0x01a1
DAT_ce32b0a:
    #data 0x0130
DAT_ce32b0c:
    #data 0x01f9
DAT_ce32b0e:
    #data 0x01fc
DAT_ce32b10:
    #data 0x041c
DAT_ce32b12:
    #data 0x03f8
DAT_ce32b14:
    #data 0x0328
    #align4

PTR_ce32b18:
    #data PTR_ce35034
PTR_ce32b1c:
    #data loc_8c02fec4
PTR_ce32b20:
    #data loc_8c2896b0
PTR_ce32b24:
    #data loc_8c05218a
PTR_ce32b28:
    #data loc_8c05115a
PTR_ce32b2c:
    #data loc_8c034e8c

;=============================================

LAB_ce32b30:
    mov 0x00,r2

LAB_ce32b32:
    mov.w @(DAT_ce32c5c,pc),r0
    mov.l @(PTR_ce32c6c,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32c5e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32b9c
    fldi0 fr4
    mov 0x00,r3
    mov.l @(PTR_ce32c70,pc),r4
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32c60,pc),r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce32c74,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32c62,pc),r0
    fmov.s @(r0,r4),fr5
    mov.w @(DAT_ce32c64,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32b6c
    fadd fr3,fr5
    mova @(DAT_ce32c78,pc),r0
    fmov.s @r0,fr2
    mov.w @(DAT_ce32c66,pc),r0
    fmov.s @(r0,r4),fr5
    fadd fr2,fr5

LAB_ce32b6c:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce32c7c,pc),r0
    fsub fr3,fr5
    fmov.s @r0,fr3
    mov 0x5C,r0
    fdiv fr3,fr5
    fmov fr5,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32c80,pc),r0
    fmov.s @r0,fr5
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32b90
    mova @(DAT_ce32c84,pc),r0
    fmov.s @r0,fr5

LAB_ce32b90:
    mov 0x60,r0
    fmov fr5,@(r0,r14)
    mova @(DAT_ce32c88,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32b9c:
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
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce32be0
    fmov fr2,@(r0,r14)
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce32be0:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32c52
    mov.w @(DAT_ce32c68,pc),r0
    mov.b @(r0,r14),r4
    tst r4,r4
    bf/s LAB_ce32c04
    mov 0x01,r5
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce32c04
    mov r5,r4
    mov r13,r4

LAB_ce32c04:
    mov.w @(DAT_ce32c64,pc),r0
    mov.b @(r0,r14),r2
    extu.b r2,r2
    shad r2,r5
    tst r4,r5
    bt LAB_ce32c44
    mov.b @(0x7,r14),r0
    mov 0x16,r5
    mov 0x0A,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x1B,r0
    mov.l @r15,r3
    mov.b r4,@(r0,r3)
    mov 0x1D,r0
    mov.l @r15,r3
    mov.b r4,@(r0,r3)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov r14,r4
    fmov fr4,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32c8c,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32c44:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32c90,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32c52:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c5c:
    #data 0x03f1
DAT_ce32c5e:
    #data 0x014b
DAT_ce32c60:
    #data 0x01f9
DAT_ce32c62:
    #data 0x0088
DAT_ce32c64:
    #data 0x01d2
DAT_ce32c66:
    #data 0x008c
DAT_ce32c68:
    #data 0x01fd
    #align4

PTR_ce32c6c:
    #data loc_8c034dee
PTR_ce32c70:
    #data loc_8c26a518
DAT_ce32c74:
    #data 0x41555555
DAT_ce32c78:
    #data 0xc1555555
DAT_ce32c7c:
    #data 0x42000000
DAT_ce32c80:
    #data 0x414db6db
DAT_ce32c84:
    #data 0x41092492
DAT_ce32c88:
    #data 0xbf092492
PTR_ce32c8c:
    #data loc_8c034e8c
PTR_ce32c90:
    #data loc_8c05176e

;=============================================

LAB_ce32c94:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32dae,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32db0,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32db2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32cb6
    bra LAB_ce32cb8
    mov 0x02,r3

LAB_ce32cb6:
    mov 0x00,r3

LAB_ce32cb8:
    mov.w @(DAT_ce32db4,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32dc4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32cf6
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov r15,r5
    mov.w @(DAT_ce32db6,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce32dd0,pc),r3
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32dc8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32dcc,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32cf6:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32cfe:
    mov.w @(DAT_ce32db8,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce32dd4,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32d18:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF8,r15
    mov.w @(DAT_ce32dae,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov 0x00,r13
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32db0,pc),r0
    mov.b r2,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32dba,pc),r0
    mov.w r13,@(r0,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mov 0x1B,r0
    mov.l @r15,r3
    mov.b r13,@(r0,r3)
    mov.b @(0x2,r14),r0
    tst r0,r0
    bt LAB_ce32d50
    bra LAB_ce32d52
    mov 0x03,r0

LAB_ce32d50:
    mov 0x04,r0

LAB_ce32d52:
    mov.l @(PTR_ce32dd8,pc),r3
    mov 0x01,r5
    mov.b r0,@(0x4,r15)
    mov r0,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ddc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32dbe,pc),r0
    mov.w @(DAT_ce32dbc,pc),r3
    mov.w @(r0,r14),r4
    and r3,r4
    extu.w r4,r2
    tst r2,r2
    bf LAB_ce32de6
    mov 0x22,r0
    mov.l @r15,r1
    mov.b @(r0,r14),r2
    mov 0x1E,r0
    mov.b r2,@(r0,r1)
    mov.w @(DAT_ce32dc0,pc),r0
    mov.l @(r0,r14),r5
    bsr FUN_ce3362c
    mov r14,r4
    mov r0,r4
    extu.b r4,r0
    tst 0x20,r0
    bt LAB_ce32d94
    mov 0x40,r0
    sub r4,r0
    mov 0x1F,r4
    and r0,r4

LAB_ce32d94:
    mov 0x12,r3
    extu.b r4,r5
    cmp/gt r3,r5
    bf LAB_ce32da2
    mov 0x15,r4
    bra LAB_ce32e0a
    mov r13,r5

LAB_ce32da2:
    mov 0x0E,r2
    cmp/gt r2,r5
    bf LAB_ce32de0
    mov 0x10,r4
    bra LAB_ce32e0a
    mov 0x02,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32dae:
    #data 0x03f8
DAT_ce32db0:
    #data 0x0328
DAT_ce32db2:
    #data 0x0255
DAT_ce32db4:
    #data 0x03f1
DAT_ce32db6:
    #data 0x03f0
DAT_ce32db8:
    #data 0x01f5
DAT_ce32dba:
    #data 0x0130
DAT_ce32dbc:
    #data 0x3c00
DAT_ce32dbe:
    #data 0x0340
DAT_ce32dc0:
    #data 0x020c
    #align4

PTR_ce32dc4:
    #data loc_8c034dee
DAT_ce32dc8:
    #data 0x41a00000
DAT_ce32dcc:
    #data 0x4304db6d
PTR_ce32dd0:
    #data loc_8c050834
PTR_ce32dd4:
    #data PTR_ce35040
PTR_ce32dd8:
    #data loc_8c02fec4
PTR_ce32ddc:
    #data loc_8c0ee6c8

;=============================================

LAB_ce32de0:
    mov 0x08,r4
    bra LAB_ce32e0a
    mov 0x01,r5

LAB_ce32de6:
    extu.w r4,r5
    mov r5,r0
    nop
    mov 0xF6,r2
    mov r5,r1
    shad r2,r0
    mov 0xF5,r2
    and 0x01,r0
    mov r0,r4
    shad r2,r1
    or r1,r4
    mov.l @(PTR_ce32e88,pc),r2
    extu.w r4,r6
    shll r6
    add r2,r6
    mov.b @(0x1,r6),r0
    mov.b @r6,r4
    extu.b r0,r5

LAB_ce32e0a:
    mov.w @(DAT_ce32e82,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32e1a
    mov 0x40,r0
    sub r4,r0
    mov 0x3F,r4
    and r0,r4

LAB_ce32e1a:
    mov 0x22,r0
    mov.b r4,@(r0,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32e2a
    bra LAB_ce32e2c
    add 0x45,r5

LAB_ce32e2a:
    add 0x49,r5

LAB_ce32e2c:
    mov.w @(DAT_ce32e84,pc),r0
    mov.l @(PTR_ce32e8c,pc),r3
    mov.b r5,@(r0,r14)
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
    mov 0x20,r2
    mov.w @(DAT_ce32e86,pc),r0
    mov.w r2,@(r0,r14)
    add 0x26,r0
    mov.b r13,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r5
    bsr FUN_ce335b0
    mov r14,r4
    mov.l @(PTR_ce32e90,pc),r3
    mov 0x14,r5
    jsr @r3
    mov r14,r4
    mov 0x22,r0
    mov r14,r4
    mov.b @(r0,r14),r6
    mov 0x16,r5
    extu.b r6,r6
    shlr2 r6
    add 0x0C,r6
    add 0x08,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32e94,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e82:
    #data 0x01d2
DAT_ce32e84:
    #data 0x01a1
DAT_ce32e86:
    #data 0x01ac
    #align4

PTR_ce32e88:
    #data DAT_ce34e1a
PTR_ce32e8c:
    #data loc_8c2896b0
PTR_ce32e90:
    #data loc_8c042008
PTR_ce32e94:
    #data loc_8c034e8c

;=============================================

LAB_ce32e98:
    mov.w @(DAT_ce32f96,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    mov 0x05,r5
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32f98,pc),r0
    mov.b r5,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce32f04
    mov 0x19,r0
    mov.b @(r0,r13),r3
    tst r3,r3
    bt LAB_ce32ecc
    mov.w @(DAT_ce32f9a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32f04

LAB_ce32ecc:
    mov.l @(PTR_ce32fa4,pc),r3
    mov.b @r3,r2
    tst r2,r2
    bf LAB_ce32f04
    mov.w @(DAT_ce32f9c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32f48
    mov 0x01,r12
    mov.b @(r0,r14),r2
    tst r12,r2
    bf LAB_ce32f04
    mov.w @(DAT_ce32f9e,pc),r0
    mov.l @(r0,r14),r4
    mov.b @(0x3,r4),r0
    tst r0,r0
    bf LAB_ce32f04
    mov.b @(0x5,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce32f04
    mov 0x19,r0
    mov.b r12,@(r0,r13)
    mov 0x18,r0
    mov.l r4,@(0x20,r13)
    mov.b @(r0,r13),r3
    tst r3,r3
    bf LAB_ce32f48

LAB_ce32f04:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32fb4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce32fa8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fdiv fr3,fr2
    fneg fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32fac,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32fb0,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    jsr @r3
    fmov fr2,@(r0,r14)
    mov.l @(PTR_ce32fb8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32fbc,pc),r3
    mov 0x16,r5
    mov r14,r4
    mov 0x03,r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f48:
    mov 0x19,r0
    mov.b @(r0,r13),r2
    tst r2,r2
    bt LAB_ce32fd2
    mov.w @(DAT_ce32f9c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32fd2
    mov 0x17,r0
    mov.b @(r0,r13),r3
    add 0xFF,r3
    mov.b r3,@(r0,r13)
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce32fd2
    mov.b r5,@(r0,r13)
    mov 0x22,r0
    mov.b @(r0,r14),r3
    mov 0x1E,r0
    mov.b r3,@(r0,r13)
    mov.l @(0x20,r13),r5
    bsr FUN_ce3362c
    mov r14,r4
    mov r0,r4
    mov 0x1E,r0
    mov.b @(r0,r13),r2
    sub r2,r4
    extu.b r4,r3
    tst r3,r3
    bt LAB_ce32fd2
    mov 0x3F,r1
    and r1,r4
    mov 0xFA,r3
    extu.b r4,r4
    tst r3,r4
    bt LAB_ce32fc0
    mov.w @(DAT_ce32fa0,pc),r4
    bra LAB_ce32fc2
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f96:
    #data 0x03f8
DAT_ce32f98:
    #data 0x0328
DAT_ce32f9a:
    #data 0x0260
DAT_ce32f9c:
    #data 0x019e
DAT_ce32f9e:
    #data 0x01b0
DAT_ce32fa0:
    #data 0x00ff
    #align4

PTR_ce32fa4:
    #data loc_8c2895f3
DAT_ce32fa8:
    #data 0x41800000
DAT_ce32fac:
    #data 0x414db6db
DAT_ce32fb0:
    #data 0xbf092492
PTR_ce32fb4:
    #data loc_8c02fd26
PTR_ce32fb8:
    #data loc_8c05218a
PTR_ce32fbc:
    #data loc_8c034e8c

;=============================================

LAB_ce32fc0:
    mov r12,r4

LAB_ce32fc2:
    mov 0x1E,r0
    mov.b @(r0,r13),r3
    mov 0x22,r0
    add r3,r4
    mov.b r4,@(r0,r14)
    mov.b @(r0,r14),r5
    bsr FUN_ce335b0
    mov r14,r4

LAB_ce32fd2:
    mov 0x5C,r1
    mov r13,r5
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
    bsr FUN_ce334b4
    mov r14,r4
    tst r0,r0
    bt LAB_ce3303e
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    fldi0 fr3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x1C,r0
    mov.b r3,@(r0,r13)
    mov 0x1B,r0
    mov.b @(r0,r13),r0
    extu.b r0,r0
    and 0x08,r0
    shar r0
    shar r0
    mov r0,r13
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt/s LAB_ce3306a
    add 0x04,r13
    bra LAB_ce3306c
    nop

LAB_ce3303e:
    mov r13,r5
    bsr FUN_ce3354c
    mov r14,r4
    tst r0,r0
    bt LAB_ce3307e
    mov.b @(0x7,r14),r0
    fldi0 fr3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x1C,r0
    mov.b r12,@(r0,r13)
    mov 0x1B,r0
    mov.b @(r0,r13),r3
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    extu.b r3,r3
    and r12,r3
    shll r3
    fcmp/gt fr3,fr2
    mov r3,r13
    bf/s LAB_ce3306c
    add 0x08,r13

LAB_ce3306a:
    add 0x01,r13

LAB_ce3306c:
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(PTR_ce330c8,pc),r2
    mov r14,r4
    mov 0x16,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3307e:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33088:
    mov.w @(DAT_ce330c0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    mov r5,r13
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce330c2,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x1C,r0
    mov.b @(r0,r13),r3
    tst r3,r3
    bf LAB_ce330cc
    mov r13,r5
    bsr FUN_ce3354c
    mov r14,r4
    tst r0,r0
    bf LAB_ce330e0
    mov 0x1B,r0
    mov.w @(DAT_ce330c4,pc),r3
    mov.b @(r0,r13),r2
    and r3,r2
    bra LAB_ce330e0
    mov.b r2,@(r0,r13)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce330c0:
    #data 0x03f8
DAT_ce330c2:
    #data 0x0328
DAT_ce330c4:
    #data 0x00fc
    #align4

PTR_ce330c8:
    #data loc_8c034e8c

;=============================================

LAB_ce330cc:
    mov r13,r5
    bsr FUN_ce334b4
    mov r14,r4
    tst r0,r0
    bf LAB_ce330e0
    mov 0x1B,r0
    mov.w @(DAT_ce331f2,pc),r3
    mov.b @(r0,r13),r2
    and r3,r2
    mov.b r2,@(r0,r13)

LAB_ce330e0:
    mov.l @(PTR_ce331fc,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce330f0
    bra LAB_ce332fc
    nop

LAB_ce330f0:
    mov.l @(0x20,r13),r4
    mov.l @(PTR_ce33200,pc),r11
    mov.b @(0x5,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt/s LAB_ce33102
    mov 0x00,r12
    bra LAB_ce33260
    nop

LAB_ce33102:
    mov 0x19,r0
    mov.b @(r0,r13),r3
    tst r3,r3
    bf LAB_ce3310e
    bra LAB_ce33260
    nop

LAB_ce3310e:
    mov 0x16,r0
    mov.b @(r0,r13),r2
    add 0xFF,r2
    mov.b r2,@(r0,r13)
    extu.b r2,r2
    tst r2,r2
    bf LAB_ce33120
    bra LAB_ce33260
    nop

LAB_ce33120:
    mov.w @(DAT_ce331f4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33136
    mov 0x18,r0
    mov.b @(r0,r13),r3
    add 0xFF,r3
    mov.b r3,@(r0,r13)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce3313e

LAB_ce33136:
    mov 0x1A,r0
    mov.b @(r0,r13),r2
    tst r2,r2
    bt LAB_ce33194

LAB_ce3313e:
    mov.l @(PTR_ce33204,pc),r1
    jsr @r1
    nop
    mov.w @(DAT_ce331f6,pc),r3
    and 0x0F,r0
    neg r0,r0
    mov 0x01,r2
    shad r0,r3
    mov 0x1A,r0
    and r2,r3
    mov.b r3,@(r0,r13)
    mov 0x22,r0
    mov.b @(r0,r14),r1
    mov 0x1E,r0
    mov.b r1,@(r0,r13)
    mov.l @(0x20,r13),r5
    bsr FUN_ce3362c
    mov r14,r4
    mov 0x22,r1
    add r14,r1
    mov.b r0,@r1
    mov 0x22,r0
    mov.b @(r0,r14),r0
    mov 0x3F,r4
    extu.b r0,r0
    add 0x04,r0
    and r0,r4
    mov.l @(PTR_ce33208,pc),r0
    shar r4
    shar r4
    shar r4
    mov.b @(r0,r4),r4
    mov 0x1B,r0
    mov.b @(r0,r13),r5
    and r5,r4
    extu.b r5,r5
    extu.b r4,r4
    cmp/eq r5,r4
    bt LAB_ce331bc
    mov 0x1E,r0
    mov.b @(r0,r13),r3
    mov 0x22,r0
    mov.b r3,@(r0,r14)

LAB_ce33194:
    mov 0x1B,r0
    mov.b @(r0,r13),r0
    extu.b r0,r0
    tst 0x03,r0
    bt LAB_ce331aa
    mov r13,r5
    mov 0x30,r6
    bsr FUN_ce33454
    mov r14,r4
    tst r0,r0
    bf LAB_ce331bc

LAB_ce331aa:
    mov 0x1B,r0
    mov.b @(r0,r13),r0
    extu.b r0,r0
    tst 0x0C,r0
    bt LAB_ce331bc
    mov r13,r5
    mov 0x10,r6
    bsr FUN_ce33454
    mov r14,r4

LAB_ce331bc:
    mov 0x22,r0
    mov.b @(r0,r14),r5
    bsr FUN_ce335b0
    mov r14,r4
    mov 0x22,r0
    mov.b @(r0,r14),r4
    mov 0x18,r0
    mov.b @(r0,r13),r2
    extu.b r4,r4
    shlr2 r4
    shlr r4
    tst r2,r2
    add 0x4D,r4
    bf/s LAB_ce331de
    mov r12,r5
    mov 0x20,r5
    mov 0x5D,r4

LAB_ce331de:
    mov.w @(DAT_ce331f8,pc),r0
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l r12,@(r0,r14)
    bra LAB_ce3320c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331f2:
    #data 0x00f3
DAT_ce331f4:
    #data 0x019e
DAT_ce331f6:
    #data 0x7fff
DAT_ce331f8:
    #data 0x01a1
    #align4

PTR_ce331fc:
    #data loc_8c034dee
PTR_ce33200:
    #data loc_8c034e8c
PTR_ce33204:
    #data loc_8c03319e
PTR_ce33208:
    #data DAT_ce34e2a

;=============================================

LAB_ce3320c:
    mov.l @(PTR_ce3333c,pc),r3
    extu.b r5,r5
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x05,r2
    mov.w @(DAT_ce33330,pc),r0
    mov.w r5,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0xFF,r0
    mov.b r0,@(0x7,r14)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mov 0x17,r0
    mov.b r2,@(r0,r13)
    mov 0x1B,r0
    mov.b @(r0,r13),r1
    mov 0x1D,r0
    mov.b r1,@(r0,r13)
    mov 0x1C,r0
    mov.b r12,@(r0,r13)
    mov 0x1B,r0
    mov.b r12,@(r0,r13)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    add 0x02,r0
    mov 0x3F,r6
    and r0,r6
    shar r6
    shar r6
    mov 0x16,r5
    add 0x0C,r6
    jsr @r11
    mov r14,r4
    bra LAB_ce332fc
    nop

LAB_ce33260:
    mov.w @(DAT_ce33332,pc),r0
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce33334,pc),r0
    mov.b r12,@(r0,r14)
    add 0x01,r0
    mov.b r12,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x02,r3
    mov.w @(DAT_ce33336,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x1F,r0
    mov.b @(r0,r13),r2
    mov.w @(DAT_ce33338,pc),r0
    extu.b r2,r2
    mov.w r2,@(r0,r14)
    mov 0x1F,r0
    mov.b @(r0,r13),r3
    mov.w @(DAT_ce3333a,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x18,r0
    mov.l @(PTR_ce33340,pc),r3
    jsr @r3
    mov.b r12,@(r0,r13)
    mova @(DAT_ce33344,pc),r0
    fmov.s @r0,fr6
    mova @(DAT_ce33348,pc),r0
    fmov.s @r0,fr5
    mov 0x1C,r0
    mov.b @(r0,r13),r3
    tst r3,r3
    bf/s LAB_ce332da
    fldi0 fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr5,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce3334c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr6,@(r0,r14)
    mov 0x1B,r0
    mov.b @(r0,r13),r0
    extu.b r0,r0
    tst 0x08,r0
    bt/s LAB_ce332d6
    mov 0x02,r6
    mov 0x60,r0
    fmov fr4,@(r0,r14)

LAB_ce332d6:
    bra LAB_ce332f6
    nop

LAB_ce332da:
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    mov 0x03,r6
    fdiv fr5,fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce33350,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr6,@(r0,r14)

LAB_ce332f6:
    mov 0x16,r5
    jsr @r11
    mov r14,r4

LAB_ce332fc:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33308:
    mov.l r14,@-r15
    mov 0x19,r0
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r5),r3
    mov.l @(PTR_ce33354,pc),r13
    tst r3,r3
    bt/s LAB_ce333b8
    mov r4,r14
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3335c
    lds.l @r15+,PR
    mov.l @(PTR_ce33358,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33330:
    #data 0x01ac
DAT_ce33332:
    #data 0x03f9
DAT_ce33334:
    #data 0x0327
DAT_ce33336:
    #data 0x01f9
DAT_ce33338:
    #data 0x0130
DAT_ce3333a:
    #data 0x01d2
    #align4

PTR_ce3333c:
    #data loc_8c2896b0
PTR_ce33340:
    #data loc_8c02fd26
DAT_ce33344:
    #data 0xbf700000
DAT_ce33348:
    #data 0x41800000
DAT_ce3334c:
    #data 0x41ab6db6
DAT_ce33350:
    #data 0x412b6db6
PTR_ce33354:
    #data loc_8c034dee
PTR_ce33358:
    #data loc_8c05176e

;=============================================

LAB_ce3335c:
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
    mov.w @(DAT_ce3349e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3344c
    mov.w @(DAT_ce3349e,pc),r0
    mov 0x00,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce334a0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce334a4,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce3342a
    nop

LAB_ce333b8:
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce33436
    jsr @r13
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
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce3344c
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce3349e,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fcmp/gt fr1,fr2
    bf LAB_ce3344c
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov 0x01,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x03,r6
    mov.w @(DAT_ce3349e,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce334a0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce334a8,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3342a:
    lds.l @r15+,PR
    mov.l @(PTR_ce334ac,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33436:
    jsr @r13
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3344c
    lds.l @r15+,PR
    mov.l @(PTR_ce334b0,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3344c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33454:
    add 0xFC,r15
    mov 0x1A,r0
    mov 0x01,r3
    mov.b r3,@(r0,r5)
    mov 0x22,r0
    mov.b @(r0,r4),r2
    mov 0x1E,r0
    mov 0x00,r7
    mov.b r2,@(r0,r5)
    mov 0x22,r0
    mov.b @(r0,r4),r5
    extu.b r5,r0
    cmp/eq 0x10,r0
    bt/s LAB_ce33476
    mov.l r0,@r15
    cmp/eq 0x30,r0
    bf LAB_ce3347a

LAB_ce33476:
    mov 0x01,r7
    mov 0x20,r6

LAB_ce3347a:
    mov r6,r0
    nop
    xor r5,r0
    mov 0x30,r5
    mov 0x0F,r3
    and r0,r5
    mov 0x10,r0
    and r15,r3
    mov 0x0F,r6
    sub r3,r0
    and r0,r6
    mov 0x22,r0
    or r6,r5
    mov.b r5,@(r0,r4)
    mov r7,r0
    nop
    rts
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3349e:
    #data 0x041c
DAT_ce334a0:
    #data 0x01f9
    #align4

PTR_ce334a4:
    #data loc_8c052dac
PTR_ce334a8:
    #data loc_8c034e8c
PTR_ce334ac:
    #data loc_8c0511b4
PTR_ce334b0:
    #data loc_8c051648

;=============================================

FUN_ce334b4:
    mov.w @(DAT_ce33590,pc),r0
    mov.l @(PTR_ce3359c,pc),r6
    fmov.s @(r0,r4),fr5
    mov 0x19,r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bt/s LAB_ce334ce
    fmov fr5,fr4
    mov.w @(DAT_ce33592,pc),r0
    fmov.s @(r0,r6),fr3
    fcmp/gt fr5,fr3
    bf LAB_ce334ce
    fmov.s @(r0,r6),fr4

LAB_ce334ce:
    mova @(DAT_ce335a0,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fadd fr3,fr2
    fcmp/gt fr2,fr4
    bf LAB_ce334f8
    mov 0x1D,r0
    mov.b @(r0,r5),r0
    extu.b r0,r0
    tst 0x04,r0
    bf LAB_ce334f8
    mov 0x38,r0
    fmov fr4,@(r0,r4)
    mov 0x1B,r0
    mov.b @(r0,r5),r2
    mov 0x04,r3
    or r3,r2
    mov.b r2,@(r0,r5)
    rts
    mov r3,r0

LAB_ce334f8:
    mov.w @(DAT_ce33594,pc),r0
    fmov.s @(r0,r6),fr4
    mov 0x19,r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bf LAB_ce3350e
    mova @(DAT_ce335a4,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce33590,pc),r0
    fmov.s @(r0,r4),fr4
    fadd fr3,fr4

LAB_ce3350e:
    mov 0x38,r0
    fmov.s @(r0,r4),fr5
    mov 0x19,r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bt LAB_ce33520
    mova @(DAT_ce335a8,pc),r0
    fmov.s @r0,fr3
    fadd fr3,fr5

LAB_ce33520:
    fcmp/gt fr4,fr5
    bf LAB_ce33546
    mov 0x1D,r0
    mov.b @(r0,r5),r0
    extu.b r0,r0
    tst 0x08,r0
    bf LAB_ce33546
    mova @(DAT_ce335ac,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    mov 0x08,r3
    fadd fr3,fr4
    fmov fr4,@(r0,r4)
    mov 0x1B,r0
    mov.b @(r0,r5),r2
    or r3,r2
    mov.b r2,@(r0,r5)
    rts
    mov r3,r0

LAB_ce33546:
    mov 0x00,r0
    rts
    nop

;=============================================

FUN_ce3354c:
    mov.w @(DAT_ce33596,pc),r0
    mov.l r14,@-r15
    mov.b @(r0,r4),r14
    mov.l @(PTR_ce3359c,pc),r7
    extu.b r14,r3
    tst r3,r3
    bt LAB_ce3358a
    mov 0x1D,r0
    mov.b @(r0,r5),r3
    extu.b r14,r6
    extu.b r3,r3
    tst r6,r3
    bf LAB_ce3358a
    mov r6,r3
    shar r3
    mov.w @(DAT_ce33598,pc),r0
    tst r3,r3
    bf/s LAB_ce33576
    fmov.s @(r0,r7),fr4
    mov.w @(DAT_ce3359a,pc),r0
    fmov.s @(r0,r7),fr4

LAB_ce33576:
    mov 0x34,r0
    fmov fr4,@(r0,r4)
    mov 0x1B,r0
    mov.b @(r0,r5),r3
    or r14,r3
    mov.b r3,@(r0,r5)
    mov r6,r0
    nop
    rts
    mov.l @r15+,r14

LAB_ce3358a:
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33590:
    #data 0x041c
DAT_ce33592:
    #data 0x0094
DAT_ce33594:
    #data 0x0090
DAT_ce33596:
    #data 0x01fd
DAT_ce33598:
    #data 0x0088
DAT_ce3359a:
    #data 0x008c
    #align4

PTR_ce3359c:
    #data loc_8c26a518
DAT_ce335a0:
    #data 0x42cdb6db
DAT_ce335a4:
    #data 0x44744924
DAT_ce335a8:
    #data 0x43092492
DAT_ce335ac:
    #data 0xc3700000

;=============================================

FUN_ce335b0:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    fmov.s fr13,@-r15
    sts.l PR,@-r15
    add 0xF8,r15
    mova @(DAT_ce33694,pc),r0
    mov.l @(PTR_ce336a0,pc),r3
    fmov.s @r0,fr15
    mov 0x50,r0
    extu.b r5,r5
    mov r4,r14
    sub r5,r0
    and 0x3F,r0
    shll8 r0
    shll2 r0
    mov.w r0,@(0x4,r15)
    mova @(DAT_ce33698,pc),r0
    fmov.s @r0,fr13
    mova @(DAT_ce3369c,pc),r0
    fmov.s @r0,fr14
    mov.w @(0x4,r15),r0
    mov.l r0,@r15
    jsr @r3
    mov r0,r4
    fmov fr15,fr3
    fmul fr0,fr3
    mova @(DAT_ce336a4,pc),r0
    mov.l @(PTR_ce336ac,pc),r3
    fmov.s @r0,fr0
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce336a8,pc),r0
    fmul fr14,fr3
    fdiv fr0,fr3
    fmov.s @r0,fr0
    mov 0x5C,r0
    fdiv fr13,fr3
    fmac fr0,fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov.l @r15,r4
    fmul fr0,fr15
    mova @(DAT_ce336b0,pc),r0
    fmov.s @r0,fr0
    mov 0x6C,r0
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce336b4,pc),r0
    fmul fr14,fr15
    fdiv fr0,fr15
    fmov.s @r0,fr0
    mov 0x60,r0
    fdiv fr13,fr15
    fmac fr0,fr15,fr3
    fmov fr3,@(r0,r14)
    add 0x08,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr13
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3362c:
    sts.l PR,@-r15
    add 0xE8,r15
    mov r4,r2
    mov.l @(PTR_ce336b8,pc),r3
    mov r15,r1
    add 0x34,r2
    add 0x0C,r1
    jsr @r3
    mov 0x0C,r0
    mov.l @(PTR_ce336b8,pc),r3
    mov r5,r2
    mov r15,r1
    add 0x34,r2
    jsr @r3
    mov 0x0C,r0
    mova @(DAT_ce336bc,pc),r0
    mov.l @(PTR_ce336c4,pc),r3
    fmov.s @r0,fr3
    mov 0x10,r0
    fmov.s @(r0,r15),fr2
    mov 0x10,r0
    mov r15,r4
    mov r15,r5
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    mova @(DAT_ce336c0,pc),r0
    fmov.s @r0,fr2
    mov 0x04,r0
    fmov.s @(r0,r15),fr1
    mov 0x04,r0
    fadd fr2,fr1
    fmov fr1,@(r0,r15)
    jsr @r3
    add 0x0C,r4
    extu.b r0,r0
    add 0x02,r0
    mov r0,r4
    shar r4
    shar r4
    add 0x18,r15
    lds.l @r15+,PR
    rts
    mov r4,r0

LAB_ce33682:
    mov r4,r3
    mov.l @(PTR_ce336c8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33694:
    #data 0x49228000
DAT_ce33698:
    #data 0x43800000
DAT_ce3369c:
    #data 0x447a0000
PTR_ce336a0:
    #data loc_8c11e2e0
DAT_ce336a4:
    #data 0x47c35000
DAT_ce336a8:
    #data 0x3fd55555
PTR_ce336ac:
    #data loc_8c11e860
DAT_ce336b0:
    #data 0x47f42400
DAT_ce336b4:
    #data 0x40092492
PTR_ce336b8:
    #data loc_8c1294c8
DAT_ce336bc:
    #data 0x43092492
DAT_ce336c0:
    #data 0x42cdb6db
PTR_ce336c4:
    #data loc_8c03362c
PTR_ce336c8:
    #data PTR_ce3504c

;=============================================

LAB_ce336cc:
    mov.w @(DAT_ce337c8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce336e8
    mov.w @(DAT_ce337cc,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce337ca,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce336e8:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce337dc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce337ce,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce337e0,pc),r2
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
    mov 0x5E,r3
    mov.w @(DAT_ce337d0,pc),r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce337e4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mova @(DAT_ce337e8,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce337d2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce33754
    mov 0x1D,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33754:
    lds.l @r15+,PR
    mov.l @(PTR_ce337ec,pc),r3
    mov 0x16,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33760:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce337d4,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce337d6,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce337c8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33782
    bra LAB_ce33784
    mov 0x02,r3

LAB_ce33782:
    mov 0x00,r3

LAB_ce33784:
    mov.w @(DAT_ce337d8,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce337f0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce337da,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce337c0
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    fldi0 fr3
    mov r15,r5
    add 0x01,r0
    mov.l @(PTR_ce337f8,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce337da,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce337cc,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce337f4,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce337c0:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce337c8:
    #data 0x0255
DAT_ce337ca:
    #data 0x00ff
DAT_ce337cc:
    #data 0x03f0
DAT_ce337ce:
    #data 0x041c
DAT_ce337d0:
    #data 0x01a1
DAT_ce337d2:
    #data 0x01d2
DAT_ce337d4:
    #data 0x03f8
DAT_ce337d6:
    #data 0x0328
DAT_ce337d8:
    #data 0x03f1
DAT_ce337da:
    #data 0x0140
    #align4

PTR_ce337dc:
    #data loc_8c05218a
PTR_ce337e0:
    #data loc_8c05115a
PTR_ce337e4:
    #data loc_8c2896b0
DAT_ce337e8:
    #data 0xc1200000
PTR_ce337ec:
    #data loc_8c034e8c
PTR_ce337f0:
    #data loc_8c034dee
DAT_ce337f4:
    #data 0x42dedb6d
PTR_ce337f8:
    #data loc_8c050834

;=============================================

LAB_ce337fc:
    mov.w @(DAT_ce33908,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x00,r13
    mov.w @(DAT_ce3390a,pc),r0
    mov.l @(PTR_ce3391c,pc),r3
    mov.b r2,@(r0,r14)
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce33872
    mov.w @(DAT_ce3390c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce338b6
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33920,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x40,r2
    mov.w @(DAT_ce3390e,pc),r0
    mov.w r2,@(r0,r14)
    add 0x9F,r0
    bra LAB_ce338b6
    mov.b r13,@(r0,r14)

LAB_ce33872:
    mov.w @(DAT_ce33910,pc),r0
    mov r14,r4
    fldi0 fr4
    mov 0x1F,r6
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce33912,pc),r0
    mov.l @(PTR_ce33924,pc),r3
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33914,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33916,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce338b6:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce338be:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3391c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce338d8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33928,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce338d8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce338e0:
    mov r4,r3
    mov.l @(PTR_ce3392c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce338f2:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33930,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce33918,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33908:
    #data 0x03f8
DAT_ce3390a:
    #data 0x0328
DAT_ce3390c:
    #data 0x014b
DAT_ce3390e:
    #data 0x01ac
DAT_ce33910:
    #data 0x03f9
DAT_ce33912:
    #data 0x0327
DAT_ce33914:
    #data 0x041c
DAT_ce33916:
    #data 0x01f9
DAT_ce33918:
    #data 0x02a4
    #align4

PTR_ce3391c:
    #data loc_8c034dee
PTR_ce33920:
    #data loc_8c2896b0
PTR_ce33924:
    #data loc_8c034e8c
PTR_ce33928:
    #data loc_8c051648
PTR_ce3392c:
    #data PTR_ce3505c
PTR_ce33930:
    #data PTR_ce35068

;=============================================

LAB_ce33934:
    mov.w @(DAT_ce33a10,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33952
    mov.w @(DAT_ce33a14,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33a12,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33952:
    mov.b @(0x7,r14),r0
    mov 0x00,r13
    mov.l @(PTR_ce33a24,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33a16,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33a18,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x02,r0
    mov.w r0,@(0x1c,r14)
    mov 0x38,r0
    mov.b r13,@(r0,r5)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33a28,pc),r2
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
    mov 0x63,r3
    mov.w @(DAT_ce33a1a,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33a2c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mova @(DAT_ce33a30,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce33a34,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33a38,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33a1c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce339de
    mov 0x20,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce339de:
    lds.l @r15+,PR
    mov.l @(PTR_ce33a3c,pc),r3
    mov r14,r4
    mov 0x16,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce339ec:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33a1e,pc),r0
    mov r4,r14
    mov 0x02,r13
    mov.b r13,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce33a20,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33a10,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33a40
    bra LAB_ce33a42
    mov 0x02,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a10:
    #data 0x0255
DAT_ce33a12:
    #data 0x00ff
DAT_ce33a14:
    #data 0x03f0
DAT_ce33a16:
    #data 0x041c
DAT_ce33a18:
    #data 0x01f9
DAT_ce33a1a:
    #data 0x01a1
DAT_ce33a1c:
    #data 0x01d2
DAT_ce33a1e:
    #data 0x03f8
DAT_ce33a20:
    #data 0x0328
    #align4

PTR_ce33a24:
    #data loc_8c05218a
PTR_ce33a28:
    #data loc_8c05115a
PTR_ce33a2c:
    #data loc_8c2896b0
DAT_ce33a30:
    #data 0x40a6aaaa
DAT_ce33a34:
    #data 0x41ab6db6
DAT_ce33a38:
    #data 0xbf892492
PTR_ce33a3c:
    #data loc_8c034e8c

;=============================================

LAB_ce33a40:
    mov 0x00,r2

LAB_ce33a42:
    mov.w @(DAT_ce33b74,pc),r0
    mov.l @(PTR_ce33b84,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33b76,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bf LAB_ce33a90
    mov.w @(DAT_ce33b78,pc),r0
    mov 0x5C,r1
    add r14,r1
    mov.b r13,@(r0,r14)
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

LAB_ce33a90:
    mov.w @(DAT_ce33b76,pc),r0
    mov.b @(r0,r14),r3
    tst r13,r3
    bt LAB_ce33ad4
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x22,r0
    mov.b r4,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce33b76,pc),r0
    mov r15,r5
    mov 0x01,r6
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33b7a,pc),r0
    mov.l @(PTR_ce33b90,pc),r2
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33b88,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33b8c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4

LAB_ce33ad4:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33ade:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33b94,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce33b7c,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce33af4:
    mov.w @(DAT_ce33b7e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33b80,pc),r0
    mov.l @(PTR_ce33b84,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33b76,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33b24
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33b98,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33b24:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33b2a:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33b7e,pc),r0
    mov 0x02,r3
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    mov r5,r13
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33b80,pc),r0
    mov.l @(PTR_ce33b84,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x38,r0
    mov.b @(r0,r13),r2
    cmp/pl r2
    bf/s LAB_ce33c16
    fldi0 fr15
    mov.b @(0x7,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33b82,pc),r0
    mov.b r3,@(r0,r14)
    add 0xDE,r0
    mov.l @(r0,r14),r4
    add 0x2C,r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)
    mov.b @(0x2,r14),r0
    tst r0,r0
    bt LAB_ce33b9c
    bra LAB_ce33b9e
    mov 0x04,r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33b74:
    #data 0x03f1
DAT_ce33b76:
    #data 0x0141
DAT_ce33b78:
    #data 0x01f9
DAT_ce33b7a:
    #data 0x03f0
DAT_ce33b7c:
    #data 0x02a4
DAT_ce33b7e:
    #data 0x03f8
DAT_ce33b80:
    #data 0x0328
DAT_ce33b82:
    #data 0x01ea
    #align4

PTR_ce33b84:
    #data loc_8c034dee
DAT_ce33b88:
    #data 0xc1d55555
DAT_ce33b8c:
    #data 0x433c9249
PTR_ce33b90:
    #data loc_8c050834
PTR_ce33b94:
    #data PTR_ce35070
PTR_ce33b98:
    #data loc_8c06fa54

;=============================================

LAB_ce33b9c:
    mov 0x03,r12

LAB_ce33b9e:
    mov.l @(PTR_ce33c6c,pc),r2
    mov r12,r5
    mov r12,r6
    jsr @r2
    mov r14,r4
    mov r13,r5
    bsr FUN_ce3402e
    mov r14,r4
    mova @(DAT_ce33c70,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce33c74,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33c78,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33c66,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce33bdc
    mov 0x00,r6
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33bdc:
    mov.l @(PTR_ce33c7c,pc),r3
    mov 0x08,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33c80,pc),r2
    mov 0x16,r5
    mov 0x23,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33c68,pc),r0
    mov r13,r5
    mov r14,r4
    mov.b @(r0,r14),r3
    mov 0x22,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r3
    mov 0x2C,r0
    extu.b r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fmov fr3,@(r0,r13)
    mov 0x30,r0
    fmov fr3,@(r0,r13)
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra FUN_ce33f84
    mov.l @r15+,r14

LAB_ce33c16:
    mov.b @(r0,r13),r3
    cmp/pz r3
    bt LAB_ce33c5a
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    fldi1 fr3
    fadd fr3,fr3
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    mov 0x22,r6
    mov.l @(PTR_ce33c80,pc),r3
    mov 0x16,r5
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce33c84,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    mov 0x38,r0
    mov.b r4,@(r0,r13)
    mov r14,r4
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33c5a:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33c66:
    #data 0x01d2
DAT_ce33c68:
    #data 0x014b
    #align4

PTR_ce33c6c:
    #data loc_8c02fec4
DAT_ce33c70:
    #data 0xbfd55555
DAT_ce33c74:
    #data 0x414db6db
DAT_ce33c78:
    #data 0xbe960000
PTR_ce33c7c:
    #data loc_8c0c4c20
PTR_ce33c80:
    #data loc_8c034e8c
DAT_ce33c84:
    #data 0xbf4db6db

;=============================================

LAB_ce33c88:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33d1e,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov 0x02,r5
    mov.b r5,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce33d20,pc),r0
    mov 0x01,r2
    mov 0x5C,r1
    mov.b r3,@(r0,r14)
    add r14,r1
    mov.w @(DAT_ce33d22,pc),r0
    mov.b r2,@(r0,r14)
    add 0xDE,r0
    mov.l @(r0,r14),r4
    add 0x2C,r0
    mov.b r5,@(r0,r4)
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
    mov.l @(PTR_ce33d24,pc),r3
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
    bt LAB_ce33d0c
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33d0c
    mov.b @(0x7,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce33d28,pc),r3
    mov 0x24,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4

LAB_ce33d0c:
    mov.l @r15,r5
    bsr FUN_ce3402e
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra FUN_ce33f84
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33d1e:
    #data 0x03f8
DAT_ce33d20:
    #data 0x0328
DAT_ce33d22:
    #data 0x01ea
    #align4

PTR_ce33d24:
    #data loc_8c034dee
PTR_ce33d28:
    #data loc_8c034e8c

;=============================================

LAB_ce33d2c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r3
    mov.l r12,@-r15
    mov 0x01,r2
    mov.w @(DAT_ce33e52,pc),r0
    mov 0x5C,r1
    mov.l r11,@-r15
    mov 0x02,r11
    add r14,r1
    mov r5,r12
    sts.l PR,@-r15
    mov.b r11,@(r0,r14)
    mov.w @(DAT_ce33e54,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33e56,pc),r0
    mov.b r2,@(r0,r14)
    add 0xDE,r0
    mov.l @(r0,r14),r13
    add 0x2C,r0
    mov.b r11,@(r0,r13)
    mov 0x34,r0
    fmov.s @r1,fr3
    mov 0x68,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    mov 0x60,r1
    add r14,r1
    mov.l @(PTR_ce33e68,pc),r3
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
    mov r12,r5
    bsr FUN_ce3402e
    mov r14,r4
    mov r12,r5
    bsr FUN_ce33f84
    mov r14,r4
    mov.w @(DAT_ce33e58,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33e30
    mov.w @(DAT_ce33e5a,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33e5c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x38,r0
    mov 0xFF,r3
    mov.b r3,@(r0,r12)
    mov 0x01,r3
    mov.w @(DAT_ce33e5e,pc),r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov 0x24,r3
    mov.b r2,@(r0,r13)
    add 0x27,r0
    mov.b r11,@(r0,r13)
    add 0xA8,r0
    mov.b r3,@(r0,r13)
    mov r4,r0
    nop
    mov.b r0,@(0x6,r13)
    mov.l @(PTR_ce33e6c,pc),r3
    mov.w @(DAT_ce33e60,pc),r0
    jsr @r3
    mov.b r4,@(r0,r13)
    mov.l @(PTR_ce33e70,pc),r2
    jsr @r2
    mov r14,r4
    mova @(DAT_ce33e74,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33e78,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33e7c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33e80,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33e62,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33e30
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33e30:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33e3c:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33e84,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce33e64,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33e52:
    #data 0x03f8
DAT_ce33e54:
    #data 0x0328
DAT_ce33e56:
    #data 0x01ea
DAT_ce33e58:
    #data 0x0140
DAT_ce33e5a:
    #data 0x03f9
DAT_ce33e5c:
    #data 0x0327
DAT_ce33e5e:
    #data 0x01b4
DAT_ce33e60:
    #data 0x01fd
DAT_ce33e62:
    #data 0x01d2
DAT_ce33e64:
    #data 0x02a4
    #align4

PTR_ce33e68:
    #data loc_8c034dee
PTR_ce33e6c:
    #data loc_8c02fd26
PTR_ce33e70:
    #data loc_8c0423fc
DAT_ce33e74:
    #data 0x41055555
DAT_ce33e78:
    #data 0xbea00000
DAT_ce33e7c:
    #data 0x41092492
DAT_ce33e80:
    #data 0xbf700000
PTR_ce33e84:
    #data PTR_ce35080

;=============================================

LAB_ce33e88:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33f74,pc),r3
    mov r4,r14
    mov.l r5,@r15
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt/s LAB_ce33eec
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce33eec:
    mov.w @(DAT_ce33f6e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33f40
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33f6e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33f70,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce33f78,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov 0x38,r0
    mov 0x01,r13
    mov.b @(r0,r2),r3
    tst r3,r3
    bt/s LAB_ce33f2c
    mov 0x03,r12
    mov 0x25,r12
    mov 0x16,r13

LAB_ce33f2c:
    mov r14,r4
    mov r13,r5
    mov r12,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33f7c,pc),r3
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33f40:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33f4c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33f74,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33f66
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33f80,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33f66:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33f6e:
    #data 0x041c
DAT_ce33f70:
    #data 0x01f9
    #align4

PTR_ce33f74:
    #data loc_8c034dee
PTR_ce33f78:
    #data loc_8c0511b4
PTR_ce33f7c:
    #data loc_8c034e8c
PTR_ce33f80:
    #data loc_8c051648

;=============================================

FUN_ce33f84:
    mov.w @(DAT_ce3409c,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    and 0x7F,r0
    lds r0,FPUL
    mova @(DAT_ce340a4,pc),r0
    fmov.s @r0,fr4
    mov 0x2C,r0
    float FPUL,fr3
    fmov fr3,fr5
    fmov.s @(r0,r5),fr3
    fcmp/eq fr5,fr3
    bt LAB_ce33fea
    fmov.s @(r0,r5),fr3
    mov 0x30,r0
    fmov fr3,@(r0,r5)
    mov 0x2C,r0
    fmov fr5,@(r0,r5)
    mov 0x30,r0
    fmov.s @(r0,r5),fr3
    mov 0x2C,r0
    fmov.s @(r0,r5),fr2
    mov 0x34,r0
    fsub fr3,fr2
    fmov fr2,@(r0,r5)
    mova @(DAT_ce340a8,pc),r0
    fmov.s @r0,fr3
    mov 0x34,r0
    fmov.s @(r0,r5),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce33fc8
    fmov.s @(r0,r5),fr2
    fsub fr4,fr2
    fmov fr2,@(r0,r5)

LAB_ce33fc8:
    mova @(DAT_ce340ac,pc),r0
    fmov.s @r0,fr3
    mov 0x34,r0
    fmov.s @(r0,r5),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33fda
    fmov.s @(r0,r5),fr2
    fadd fr4,fr2
    fmov fr2,@(r0,r5)

LAB_ce33fda:
    mov.w @(DAT_ce3409e,pc),r3
    fmov.s @(r0,r5),fr2
    add r4,r3
    mov.b @r3,r3
    lds r3,FPUL
    float FPUL,fr3
    fdiv fr3,fr2
    fmov fr2,@(r0,r5)

LAB_ce33fea:
    mov 0x30,r0
    fmov.s @(r0,r5),fr3
    mov 0x2C,r0
    fmov.s @(r0,r5),fr2
    fcmp/eq fr3,fr2
    bf LAB_ce33ffc
    mov 0x34,r0
    fldi0 fr3
    fmov fr3,@(r0,r5)

LAB_ce33ffc:
    mov 0x34,r1
    add r5,r1
    mov 0x30,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r5),fr2
    fadd fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce34016
    fmov fr2,@(r0,r5)
    fmov.s @(r0,r5),fr2
    fadd fr4,fr2
    fmov fr2,@(r0,r5)

LAB_ce34016:
    fmov.s @(r0,r5),fr3
    fcmp/gt fr3,fr4
    bt LAB_ce34022
    fmov.s @(r0,r5),fr3
    fsub fr4,fr3
    fmov fr3,@(r0,r5)

LAB_ce34022:
    fmov.s @(r0,r5),fr3
    mov 0x22,r0
    ftrc fr3,FPUL
    sts FPUL,r3
    rts
    mov.b r3,@(r0,r4)

;=============================================

FUN_ce3402e:
    mov.w @(DAT_ce340a0,pc),r0
    mov.l @(PTR_ce340b0,pc),r3
    mov.b @(r0,r4),r6
    mova @(DAT_ce340b4,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce340b8,pc),r0
    shll r6
    fmov.s @r0,fr1
    shll r6
    mov.w @(DAT_ce340a2,pc),r0
    add r3,r6
    mov.w @r6+,r2
    lds r2,FPUL
    mov.w @r6,r2
    float FPUL,fr3
    lds r2,FPUL
    mov.b @(r0,r4),r2
    tst r2,r2
    fmov fr3,fr4
    float FPUL,fr3
    fmul fr2,fr4
    fmov fr3,fr5
    bt/s LAB_ce34060
    fmul fr1,fr5
    fneg fr4

LAB_ce34060:
    mov 0x24,r0
    fmov fr4,@(r0,r5)
    mov 0x28,r0
    rts
    fmov fr5,@(r0,r5)

LAB_ce3406a:
    mov r4,r3
    mov.l @(PTR_ce340bc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3407c:
    mov.b @(0x6,r4),r0
    mov 0x1E,r6
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce340c0,pc),r3
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3409c:
    #data 0x014b
DAT_ce3409e:
    #data 0x0142
DAT_ce340a0:
    #data 0x0141
DAT_ce340a2:
    #data 0x01d2
    #align4

DAT_ce340a4:
    #data 0x42000000
DAT_ce340a8:
    #data 0x41800000
DAT_ce340ac:
    #data 0xc1800000
PTR_ce340b0:
    #data DAT_ce34d8a
DAT_ce340b4:
    #data 0x3fd55555
DAT_ce340b8:
    #data 0x40092492
PTR_ce340bc:
    #data PTR_ce35088
PTR_ce340c0:
    #data loc_8c034e8c

;=============================================

LAB_ce340c4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34200,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce340ee
    mov.l @(PTR_ce34204,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce34208,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce340ee:
    mov.w @(DAT_ce341f0,pc),r0
    mov 0x01,r6
    mov.b @(r0,r14),r3
    tst r6,r3
    bt LAB_ce3416a
    mov.b @(r0,r14),r2
    mov 0x01,r3
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce341f2,pc),r0
    mov.w @(DAT_ce341f4,pc),r2
    mov.w @(r0,r14),r5
    extu.w r5,r4
    tst r4,r2
    bt/s LAB_ce34110
    mov 0xFF,r13
    mov 0x00,r13

LAB_ce34110:
    mov.w @(DAT_ce341f6,pc),r2
    tst r4,r2
    bt LAB_ce34118
    mov r6,r13

LAB_ce34118:
    mov.w @(DAT_ce341f8,pc),r2
    tst r2,r4
    bt LAB_ce34120
    mov 0x02,r13

LAB_ce34120:
    mov r13,r0
    nop
    cmp/eq 0xFF,r0
    bf LAB_ce3413a
    mov.l @(PTR_ce3420c,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce34210,pc),r3
    mov 0x0F,r1
    and r0,r1
    jsr @r3
    mov 0x03,r0
    mov r0,r13

LAB_ce3413a:
    mov.l @(PTR_ce34214,pc),r3
    mov 0x20,r0
    mov 0x02,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x25,r0
    mov r13,r6
    mov.b @(r0,r14),r2
    mov 0x01,r7
    mov r7,r5
    mov r14,r4
    extu.b r2,r2
    shll2 r2
    shll2 r2
    add r2,r6
    mov.l r2,@r15
    add 0x09,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce34218,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3416a:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34174:
    mov r4,r3
    mov.l @(PTR_ce3421c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34186:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r4
    fldi0 fr4
    mov 0x67,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce341fa,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce341fc,pc),r0
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
    mov.w @(DAT_ce341fe,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce34220,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce34224,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34228,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3422c,pc),r2
    mov r14,r4
    mov 0x1F,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce341f0:
    #data 0x0141
DAT_ce341f2:
    #data 0x034a
DAT_ce341f4:
    #data 0x0800
DAT_ce341f6:
    #data 0x0400
DAT_ce341f8:
    #data 0x1000
DAT_ce341fa:
    #data 0x01f9
DAT_ce341fc:
    #data 0x041c
DAT_ce341fe:
    #data 0x01a1
    #align4

PTR_ce34200:
    #data loc_8c034dee
PTR_ce34204:
    #data loc_8c035162
PTR_ce34208:
    #data loc_8c051648
PTR_ce3420c:
    #data loc_8c03319e
PTR_ce34210:
    #data loc_8c12939c
PTR_ce34214:
    #data loc_8c0c3ed4
PTR_ce34218:
    #data loc_8c03544c
PTR_ce3421c:
    #data PTR_ce35090
PTR_ce34220:
    #data loc_8c2896b0
PTR_ce34224:
    #data loc_8c05218a
PTR_ce34228:
    #data loc_8c05115a
PTR_ce3422c:
    #data loc_8c034e8c

;=============================================

LAB_ce34230:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce3432c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3424c
    mov.l @(PTR_ce34330,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce34284
    nop

LAB_ce3424c:
    mov.w @(DAT_ce34322,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce34274
    mov.w @(DAT_ce34322,pc),r0
    mov 0x01,r3
    mov r15,r5
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce34334,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34338,pc),r0
    mov.l @(PTR_ce3433c,pc),r2
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4

LAB_ce34274:
    mov.w @(DAT_ce34322,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce34284
    mov.l @(PTR_ce34340,pc),r2
    mov 0x16,r5
    jsr @r2
    mov r14,r4

LAB_ce34284:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3428c:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov 0x05,r3
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce34324,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce34344,pc),r3
    jmp @r3
    mov 0x1D,r5

LAB_ce342a0:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov 0x05,r3
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce34324,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce34344,pc),r3
    jmp @r3
    mov 0x1D,r5

LAB_ce342b4:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce34326,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce342d6
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce342dc
    cmp/eq 0x02,r0
    bt LAB_ce342e4
    bra LAB_ce342ec
    nop

LAB_ce342d6:
    mov.w @(DAT_ce34324,pc),r0
    bra LAB_ce342e8
    mov.b r6,@(r0,r4)

LAB_ce342dc:
    mov.w @(DAT_ce34324,pc),r0
    mov 0x02,r2
    bra LAB_ce342e8
    mov.b r2,@(r0,r4)

LAB_ce342e4:
    mov.w @(DAT_ce34324,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce342e8:
    mov.w @(DAT_ce34328,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce342ec:
    mov.l @(PTR_ce34344,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce342f2:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce34326,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34314
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce3431a
    cmp/eq 0x02,r0
    bt LAB_ce34348
    bra LAB_ce34350
    nop

LAB_ce34314:
    mov.w @(DAT_ce34324,pc),r0
    bra LAB_ce3434c
    mov.b r6,@(r0,r4)

LAB_ce3431a:
    mov.w @(DAT_ce34324,pc),r0
    mov 0x02,r2
    bra LAB_ce3434c
    mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34322:
    #data 0x0141
DAT_ce34324:
    #data 0x01e9
DAT_ce34326:
    #data 0x04c9
DAT_ce34328:
    #data 0x01a3
    #align4

PTR_ce3432c:
    #data loc_8c034dee
PTR_ce34330:
    #data loc_8c051648
DAT_ce34334:
    #data 0x41d55555
DAT_ce34338:
    #data 0x43272492
PTR_ce3433c:
    #data loc_8c050ea4
PTR_ce34340:
    #data loc_8c04223a
PTR_ce34344:
    #data loc_8c0530d8

;=============================================

LAB_ce34348:
    mov.w @(DAT_ce344a4,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3434c:
    mov.w @(DAT_ce344a6,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce34350:
    mov.l @(PTR_ce344b4,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce34356:
    mov r4,r3
    mov.l @(PTR_ce344b8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34368:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce344a8,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce344bc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce344aa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34392
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce34392:
    mova @(DAT_ce344c0,pc),r0
    mov.l @(PTR_ce344c8,pc),r3
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x00,r5
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce344c4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce344ac,pc),r0
    mov 0x2C,r2
    mov 0x00,r4
    mov.l @(PTR_ce344cc,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov 0x1C,r6
    mov.l @r3,r2
    mov 0x15,r5
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce344d0,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce343e4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce344d4,pc),r3
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
    mov.w @(DAT_ce344ae,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce34466
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x1D,r6
    mov.w @(DAT_ce344ae,pc),r0
    mov 0x15,r5
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce344a8,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce344d0,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce34466:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3446c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce344d4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34486
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce344d8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce34486:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3448e:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce344dc,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce344b0,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce344a4:
    #data 0x01e9
DAT_ce344a6:
    #data 0x01a3
DAT_ce344a8:
    #data 0x01f9
DAT_ce344aa:
    #data 0x01d2
DAT_ce344ac:
    #data 0x01a1
DAT_ce344ae:
    #data 0x041c
DAT_ce344b0:
    #data 0x02a4
    #align4

PTR_ce344b4:
    #data loc_8c0530d8
PTR_ce344b8:
    #data PTR_ce35098
DAT_ce344bc:
    #data 0xc1f00000
DAT_ce344c0:
    #data 0x3e892492
DAT_ce344c4:
    #data 0xbf4db6db
PTR_ce344c8:
    #data loc_8c035162
PTR_ce344cc:
    #data loc_8c2896b0
PTR_ce344d0:
    #data loc_8c034e8c
PTR_ce344d4:
    #data loc_8c034dee
PTR_ce344d8:
    #data loc_8c051648
PTR_ce344dc:
    #data PTR_ce350a4

;=============================================

LAB_ce344e0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov 0x1C,r3
    mov 0x0C,r2
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    mov 0x08,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov 0x22,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r3
    mov.w @(DAT_ce3452e,pc),r0
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)
    mov 0x3A,r0
    mov.l @r15,r2
    mov 0x00,r3
    mov r3,r6
    mov.b r3,@(r0,r2)
    mov.l @(PTR_ce34530,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34534,pc),r2
    mov 0x14,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra FUN_ce3402e
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3452e:
    #data 0x01f2
    #align4

PTR_ce34530:
    #data loc_8c0c5088
PTR_ce34534:
    #data loc_8c034e8c

;=============================================

LAB_ce34538:
    mov.l r14,@-r15
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mova @(DAT_ce3467c,pc),r0
    mov r4,r14
    mov.l r5,@r15
    fmov.s @r0,fr15
    mov.w @(DAT_ce34670,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce34564
    mov 0x01,r13
    mov.b @(r0,r14),r3
    add 0xD5,r0
    mov.b @(r0,r14),r2
    mov r13,r1
    extu.b r2,r2
    shad r2,r1
    tst r1,r3
    bt LAB_ce34604

LAB_ce34564:
    mov.w @(DAT_ce34672,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce34680,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    bsr FUN_ce3402e
    mov r14,r4
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce345be
    mov.w @(DAT_ce34674,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34664
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce34684,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34688,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3468c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce34676,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce345be
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce345be:
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr4
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov r13,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce34670,pc),r0
    mov.b @(r0,r14),r3
    add 0xD5,r0
    mov.b @(r0,r14),r2
    extu.b r2,r2
    xor r13,r2
    shad r2,r1
    tst r1,r3
    bf LAB_ce34604
    mov 0x22,r0
    mov.l @(DAT_ce34690,pc),r2
    mov.b @(r0,r14),r1
    mov r13,r3
    extu.b r1,r1
    shad r1,r3
    tst r2,r3
    bf LAB_ce34664

LAB_ce34604:
    mov.l @r15,r0
    mov 0x3A,r2
    mov 0xFF,r3
    add r0,r2
    mov.b r3,@r2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce34678,pc),r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce34694,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34698,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce34676,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce34650
    mov 0x03,r7
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce34650:
    mov r14,r4
    mov 0x14,r5
    mov 0x00,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3469c,pc),r3
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce34664:
    add 0x04,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34670:
    #data 0x01fd
DAT_ce34672:
    #data 0x01f5
DAT_ce34674:
    #data 0x0140
DAT_ce34676:
    #data 0x01d2
DAT_ce34678:
    #data 0x0142
    #align4

DAT_ce3467c:
    #data 0xbf700000
PTR_ce34680:
    #data loc_8c034dee
DAT_ce34684:
    #data 0xc0ad5555
DAT_ce34688:
    #data 0xbfa00000
DAT_ce3468c:
    #data 0xc0cdb6db
DAT_ce34690:
    #data 0xff00000f
DAT_ce34694:
    #data 0xc1200000
DAT_ce34698:
    #data 0x414db6db
PTR_ce3469c:
    #data loc_8c034f54

;=============================================

LAB_ce346a0:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce347c8,pc),r3
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
    bt LAB_ce346f4
    lds.l @r15+,PR
    mov.l @(PTR_ce347cc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce346f4:
    mov.w @(DAT_ce347b8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3472a
    mov.w @(DAT_ce347b8,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce347ba,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce347d0,pc),r3
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3472a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34730:
    mov.w @(DAT_ce347bc,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce347be,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce3476a
    mov.w @(DAT_ce347c0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3476a
    mov.w @(DAT_ce347ba,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce3476a
    mov.w @(DAT_ce347c2,pc),r0
    mov.l @(PTR_ce347d4,pc),r13
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34780
    mov.w @(DAT_ce347ba,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3476e

LAB_ce3476a:
    bra LAB_ce347b0
    mov 0x00,r0

LAB_ce3476e:
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce347ac
    mov r0,r4
    mov.w @(DAT_ce347c4,pc),r0
    mov 0x00,r3
    bra LAB_ce347ac
    mov.b r3,@(r0,r14)

LAB_ce34780:
    mov.w @(DAT_ce347ba,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce3479c
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce347ac
    mov r0,r4
    mov.w @(DAT_ce347c4,pc),r0
    mov 0x01,r3
    bra LAB_ce347ac
    mov.b r3,@(r0,r14)

LAB_ce3479c:
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce347ac
    mov r0,r4
    mov.w @(DAT_ce347c4,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)

LAB_ce347ac:
    mov r4,r0
    nop

LAB_ce347b0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce347b8:
    #data 0x041c
DAT_ce347ba:
    #data 0x01f9
DAT_ce347bc:
    #data 0x01fa
DAT_ce347be:
    #data 0x0c00
DAT_ce347c0:
    #data 0x01a3
DAT_ce347c2:
    #data 0x01fe
DAT_ce347c4:
    #data 0x01f7
    #align4

PTR_ce347c8:
    #data loc_8c034dee
PTR_ce347cc:
    #data loc_8c05176e
PTR_ce347d0:
    #data loc_8c052dac
PTR_ce347d4:
    #data loc_8c045790

;=============================================

LAB_ce347d8:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce34922,pc),r1
    mov.l @(PTR_ce34938,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce347f0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce3493c,pc),r3
    mov 0x05,r6
    mov r4,r14
    jsr @r3
    mov r6,r5
    mov.w @(DAT_ce34922,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3480e
    mov.w @(DAT_ce34924,pc),r4
    bra LAB_ce34810
    nop

LAB_ce3480e:
    mov.w @(DAT_ce34926,pc),r4

LAB_ce34810:
    mov.w @(DAT_ce34928,pc),r0
    extu.w r4,r4
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bt/s LAB_ce34830
    mov r14,r4
    mov.w @(DAT_ce3492a,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.w @(DAT_ce3492c,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)

LAB_ce34830:
    mov.l @(PTR_ce34940,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce34922,pc),r0
    mov r15,r5
    mov.l @(PTR_ce34944,pc),r3
    mov.b @(r0,r14),r4
    mova @(DAT_ce34948,pc),r0
    fmov.s @r0,fr2
    mova @(DAT_ce3494c,pc),r0
    extu.b r4,r4
    shll2 r4
    shll r4
    add r3,r4
    mov.w @r4+,r2
    lds r2,FPUL
    float FPUL,fr3
    fmul fr2,fr3
    fmov.s fr3,@r15
    mov.w @r4,r2
    fmov.s @r0,fr1
    mov 0x04,r0
    lds r2,FPUL
    mov.l @(PTR_ce34950,pc),r2
    float FPUL,fr3
    fmul fr1,fr3
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x6,r14)
    mov 0x0A,r3
    mov.b r0,@(0x7,r14)
    mov 0x0F,r5
    mov.w @(DAT_ce3492e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x57,r0
    mov.l @(PTR_ce34954,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3488a:
    rts
    nop

LAB_ce3488e:
    mov.w @(DAT_ce34930,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34958,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce348ac:
    mov r4,r3
    mov.l @(PTR_ce3495c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce348be:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)

LAB_ce348d6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34960,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34932,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3491c
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34932,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce34934,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov 0x02,r3
    mov.b r2,@(r0,r4)
    add 0x27,r0
    mov.b r3,@(r0,r4)
    mov 0x20,r2
    mov.l @(PTR_ce34964,pc),r3
    add 0xA8,r0
    mov.b r2,@(r0,r4)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3491c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34922:
    #data 0x01f7
DAT_ce34924:
    #data 0x0800
DAT_ce34926:
    #data 0x0400
DAT_ce34928:
    #data 0x01fa
DAT_ce3492a:
    #data 0x0130
DAT_ce3492c:
    #data 0x01d2
DAT_ce3492e:
    #data 0x01a0
DAT_ce34930:
    #data 0x01ea
DAT_ce34932:
    #data 0x0141
DAT_ce34934:
    #data 0x01c8
    #align4

PTR_ce34938:
    #data PTR_ce350b0
PTR_ce3493c:
    #data loc_8c02fec4
PTR_ce34940:
    #data loc_8c056f2a
PTR_ce34944:
    #data DAT_ce34e32
DAT_ce34948:
    #data 0x3fd55555
DAT_ce3494c:
    #data 0x40092492
PTR_ce34950:
    #data loc_8c103660
PTR_ce34954:
    #data loc_8c034e8c
PTR_ce34958:
    #data PTR_ce350c8
PTR_ce3495c:
    #data PTR_ce350dc
PTR_ce34960:
    #data loc_8c034dee
PTR_ce34964:
    #data loc_8c02fd26

;=============================================

LAB_ce34968:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34abc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34988
    mov.l @(PTR_ce34ac0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce34ac4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34988:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3498e:
    mov r4,r3
    mov.l @(PTR_ce34ac8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce349a0:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)

LAB_ce349b8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce34a20
    mov.l @(PTR_ce34abc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34ab0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34aaa
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov 0x02,r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce34ab0,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x11,r3
    mov.w @(DAT_ce34ab2,pc),r0
    mov.b r2,@(r0,r14)
    mova @(DAT_ce34acc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    mov 0x01,r2
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34ad0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34ad4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34ab4,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFE,r0
    mov.b r2,@(r0,r14)
    add 0xFE,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34aaa
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    bra LAB_ce34aaa
    fmov fr3,@(r0,r14)

LAB_ce34a20:
    mov 0x5C,r1
    mov.l @(PTR_ce34abc,pc),r3
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
    mov.w @(DAT_ce34ab6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34aaa
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce34ab8,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov 0x02,r3
    mov.b r2,@(r0,r4)
    add 0x27,r0
    mov.b r3,@(r0,r4)
    add 0xA8,r0
    mov 0x21,r2
    mov.b r2,@(r0,r4)
    add 0x8F,r0
    mov.w @(r0,r4),r2
    mov 0x01,r3
    xor r3,r2
    mov.w r2,@(r0,r4)
    mov.w @(DAT_ce34aba,pc),r0
    mov.l @(PTR_ce34ad8,pc),r2
    mov.b @(r0,r4),r1
    xor r3,r1
    mov.b r1,@(r0,r4)
    lds.l @r15+,PR
    jmp @r2
    mov.l @r15+,r14

LAB_ce34aaa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34ab0:
    #data 0x0141
DAT_ce34ab2:
    #data 0x01f9
DAT_ce34ab4:
    #data 0x01d6
DAT_ce34ab6:
    #data 0x014b
DAT_ce34ab8:
    #data 0x01c8
DAT_ce34aba:
    #data 0x01d2
    #align4

PTR_ce34abc:
    #data loc_8c034dee
PTR_ce34ac0:
    #data loc_8c05218a
PTR_ce34ac4:
    #data loc_8c051648
PTR_ce34ac8:
    #data PTR_ce350e8
DAT_ce34acc:
    #data 0xc0555555
DAT_ce34ad0:
    #data 0x413c9249
DAT_ce34ad4:
    #data 0xbf092492
PTR_ce34ad8:
    #data loc_8c02fd26

;=============================================

LAB_ce34adc:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce34c08,pc),r3
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
    mov.w @(DAT_ce34bfe,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce34b44
    mov.w @(DAT_ce34bfe,pc),r0
    mov 0x00,r3
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34c00,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce34c0c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34b44:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34b4a:
    mov r4,r3
    mov.l @(PTR_ce34c10,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34b5c:
    mov.b @(0x6,r4),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)

LAB_ce34b6c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34c08,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34c02,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34bf8
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34c02,pc),r0
    mov.b r3,@(r0,r14)
    add 0x7D,r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov 0x01,r3
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov 0x02,r3
    mov.b r2,@(r0,r4)
    add 0x27,r0
    mov.b r3,@(r0,r4)
    add 0xA8,r0
    mov 0x22,r2
    mov.b r2,@(r0,r4)
    add 0x8F,r0
    mov.w @(r0,r4),r2
    mov 0x01,r3
    xor r3,r2
    mov.w r2,@(r0,r4)
    mov.w @(DAT_ce34c04,pc),r0
    mov.l @(PTR_ce34c14,pc),r2
    mov.b @(r0,r4),r1
    xor r3,r1
    jsr @r2
    mov.b r1,@(r0,r4)
    mova @(DAT_ce34c18,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34c1c,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34c04,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34be8
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce34be8:
    mova @(DAT_ce34c20,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34c24,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce34bf8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34bfe:
    #data 0x041c
DAT_ce34c00:
    #data 0x01f9
DAT_ce34c02:
    #data 0x014b
DAT_ce34c04:
    #data 0x01d2
    #align4

PTR_ce34c08:
    #data loc_8c034dee
PTR_ce34c0c:
    #data loc_8c052dac
PTR_ce34c10:
    #data PTR_ce350f4
PTR_ce34c14:
    #data loc_8c02fd26
DAT_ce34c18:
    #data 0x40d55555
DAT_ce34c1c:
    #data 0xbe555555
DAT_ce34c20:
    #data 0x412b6db6
DAT_ce34c24:
    #data 0xbf4db6db

;=============================================

LAB_ce34c28:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34d08,pc),r3
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt LAB_ce34c82
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce34c82:
    mov.w @(DAT_ce34d00,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce34ca6
    mov.w @(DAT_ce34d00,pc),r0
    mov 0x00,r3
    mov r14,r4
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce34d02,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce34d0c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34ca6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34cac:
    mov.w @(DAT_ce34d04,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(r0,r14),r5
    add 0x2F,r0
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce34d10,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34cc6:
    add 0xF8,r15
    mov.l r4,@(0x4,r15)
    mov.l r5,@r15
    mov.l @(PTR_ce34d14,pc),r3
    mov.l @r15,r4
    mov.l @(0x4,r15),r5
    jmp @r3
    add 0x08,r15

LAB_ce34cd6:
    rts
    nop

LAB_ce34cda:
    mov.l r14,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce34cf0
    mov r14,r5
    mov.w @(DAT_ce34d06,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)

LAB_ce34cf0:
    mov.l @(PTR_ce34d14,pc),r3
    mov.l @r15+,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34cf8:
    mov.w @(DAT_ce34d06,pc),r0
    mov 0x02,r3
    rts
    mov.b r3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34d00:
    #data 0x041c
DAT_ce34d02:
    #data 0x01f9
DAT_ce34d04:
    #data 0x01c8
DAT_ce34d06:
    #data 0x01f4
    #align4

PTR_ce34d08:
    #data loc_8c034dee
PTR_ce34d0c:
    #data loc_8c052dac
PTR_ce34d10:
    #data PTR_ce35100
PTR_ce34d14:
    #data loc_8c04cc1c
DAT_ce34d18:
    #data 0x4000
    #data 0xfff9
DAT_ce34d1c:
    #data 0x1000
    #data 0x0000
DAT_ce34d20:
    #data 0x0000
    #data 0x0007
DAT_ce34d24:
    #data 0x8000
    #data 0xffff
    #data 0xc000
    #data 0xffef
    #data 0x0000
    #data 0x0002
    #data 0x0000
    #data 0x000b
    #data 0x8000
    #data 0xffff
DAT_ce34d38:
    #data 0x0000
    #data 0xfffd
DAT_ce34d3c:
    #data 0x4000
    #data 0x0000
DAT_ce34d40:
    #data 0x0000
    #data 0x0006
DAT_ce34d44:
    #data 0x7000
    #data 0xffff
    #data 0xc000
    #data 0xfff4
    #data 0x8000
    #data 0x0001
    #data 0x0000
    #data 0x000a
    #data 0x7000
    #data 0xffff
DAT_ce34d58:
    #data 0x0201
    #data 0x0201
DAT_ce34d5c:
    #data 0x02ff
    #data 0x02ff
DAT_ce34d60:
    #data 0xffff
    #data 0xffff
DAT_ce34d64:
    #data 0x0201
    #data 0x0201
DAT_ce34d68:
    #data 0x02ff
    #data 0x02ff
DAT_ce34d6c:
    #data 0xffff
    #data 0xffff
DAT_ce34d70:
    #data 0x0201
    #data 0x0200
DAT_ce34d74:
    #data 0x02ff
    #data 0x0201
DAT_ce34d78:
    #data 0xffff
    #data 0xffff
DAT_ce34d7c:
    #data 0x0201
    #data 0x0201
DAT_ce34d80:
    #data 0x02ff
    #data 0x02ff
DAT_ce34d84:
    #data 0xffff
    #data 0xffff
DAT_ce34d88:
    #data 0x1c18
DAT_ce34d8a:
    #data 0xffb4
DAT_ce34d8c:
    #data 0x0036
    #data 0xffc1
    #data 0x0056
    #data 0xffec
    #data 0x006d
    #data 0xffc8
    #data 0x0043
    #data 0xffdc
    #data 0x0045
    #data 0xffeb
    #data 0x004b
    #data 0xffce
    #data 0x0066
    #data 0xffd0
    #data 0x005a
    #data 0xffe5
    #data 0x0055
    #data 0xffe6
    #data 0x0055
    #data 0xffe6
    #data 0x0055
    #data 0xffe7
    #data 0x0056
    #data 0xffbf
    #data 0x0080
    #data 0xffc0
    #data 0x0076
    #data 0xffd5
    #data 0x006f
    #data 0xffd4
    #data 0x0070
    #data 0xffd6
    #data 0x0070
    #data 0xffd8
    #data 0x0071
    #data 0x0005
    #data 0x0032
    #data 0x0010
    #data 0x0039
    #data 0x001b
    #data 0x004f
    #data 0x0007
    #data 0x005e
    #data 0xffe9
    #data 0x005b
    #data 0xffe4
    #data 0x0047
    #data 0xfff3
    #data 0x0036
    #data 0xffcd
    #data 0x002d
    #data 0x000f
    #data 0x001c
    #data 0x002d
    #data 0x0031
    #data 0x003a
    #data 0x0055
    #data 0x0028
    #data 0x0078
    #data 0xffce
    #data 0x005e
    #data 0xffc5
    #data 0x0023
    #data 0x0000
    #data 0x0000
    #data 0xffdc
    #data 0x006e
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
DAT_ce34e1a:
    #data 0x15
DAT_ce34e1b:
    #data 0x00
    #data 0x10
    #data 0x02
    #data 0x15
    #data 0x00
    #data 0x15
    #data 0x00
    #data 0x08
    #data 0x01
    #data 0x08
    #data 0x01
    #data 0x10
    #data 0x02
    #data 0x15
    #data 0x00
DAT_ce34e2a:
    #data 0xf7
    #data 0xf6
    #data 0xfe
    #data 0xfa
    #data 0xfb
    #data 0xf9
    #data 0xfd
    #data 0xf5
DAT_ce34e32:
    #data 0xffc0
    #align4
    
DAT_ce34e34:
    #data 0x0048
    #data 0xffc8
    #data 0x0008
    #data 0xffe8
    #data 0x0016
DAT_ce34e3e:
    #data 0x0003
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce34e4e:
    #data 0x0003
    #data 0x0000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34e5e:
    #data 0x0003
    #data 0x0000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce34e6e:
    #data 0x0005
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce34e82:
    #data 0x0003
    #data 0x8100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34e92:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce34ea2:
    #data 0x0003
    #data 0x9100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
    #data 0x0000
    #align4

PTR_ce34eb4:
    #data LAB_ce305a8
PTR_ce34eb8:
    #data LAB_ce3001c
PTR_ce34ebc:
    #data LAB_ce30608
PTR_ce34ec0:
    #data LAB_ce30ab6
PTR_ce34ec4:
    #data LAB_ce30dd0
PTR_ce34ec8:
    #data LAB_ce30f4c
PTR_ce34ecc:
    #data LAB_ce31076
PTR_ce34ed0:
    #data LAB_ce314d2
PTR_ce34ed4:
    #data LAB_ce317a8
PTR_ce34ed8:
    #data LAB_ce34730
PTR_ce34edc:
    #data LAB_ce347d8
PTR_ce34ee0:
    #data LAB_ce3488e
PTR_ce34ee4:
    #data LAB_ce34cac
PTR_ce34ee8:
    #data LAB_ce304c0
PTR_ce34eec:
    #data LAB_ce34356
PTR_ce34ef0:
    #data LAB_ce30ce4
PTR_ce34ef4:
    #data LAB_ce3428c
PTR_ce34ef8:
    #data LAB_ce342a0
PTR_ce34efc:
    #data LAB_ce342b4
PTR_ce34f00:
    #data LAB_ce342f2
    #data 0x00000000
PTR_ce34f08:
    #data LAB_ce3448e
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce34f24:
    #data LAB_ce3061c
PTR_ce34f28:
    #data LAB_ce30920
PTR_ce34f2c:
    #data LAB_ce30948
PTR_ce34f30:
    #data LAB_ce3061c
PTR_ce34f34:
    #data LAB_ce30ad8
PTR_ce34f38:
    #data LAB_ce30c26
PTR_ce34f3c:
    #data LAB_ce30c10
PTR_ce34f40:
    #data LAB_ce30aca
PTR_ce34f44:
    #data LAB_ce30e1c
PTR_ce34f48:
    #data LAB_ce30e5e
PTR_ce34f4c:
    #data LAB_ce30ee0
PTR_ce34f50:
    #data LAB_ce30f88
PTR_ce34f54:
    #data LAB_ce30fca
PTR_ce34f58:
    #data FUN_ce31054
PTR_ce34f5c:
    #data LAB_ce3108a
PTR_ce34f60:
    #data LAB_ce3110e
PTR_ce34f64:
    #data LAB_ce31452
PTR_ce34f68:
    #data LAB_ce31120
PTR_ce34f6c:
    #data LAB_ce31180
PTR_ce34f70:
    #data LAB_ce313c0
PTR_ce34f74:
    #data LAB_ce31192
PTR_ce34f78:
    #data LAB_ce31274
PTR_ce34f7c:
    #data LAB_ce3133c
PTR_ce34f80:
    #data LAB_ce31464
PTR_ce34f84:
    #data LAB_ce3148c
PTR_ce34f88:
    #data LAB_ce314e8
PTR_ce34f8c:
    #data LAB_ce3156c
PTR_ce34f90:
    #data LAB_ce31610
PTR_ce34f94:
    #data LAB_ce31690
PTR_ce34f98:
    #data LAB_ce31720
PTR_ce34f9c:
    #data LAB_ce317a2
PTR_ce34fa0:
    #data LAB_ce317bc
PTR_ce34fa4:
    #data LAB_ce31cf0
PTR_ce34fa8:
    #data LAB_ce31f96
PTR_ce34fac:
    #data LAB_ce3249e
PTR_ce34fb0:
    #data LAB_ce3298c
PTR_ce34fb4:
    #data LAB_ce33682
PTR_ce34fb8:
    #data LAB_ce338e0
PTR_ce34fbc:
    #data LAB_ce3406a
PTR_ce34fc0:
    #data LAB_ce34174
PTR_ce34fc4:
    #data LAB_ce31800
PTR_ce34fc8:
    #data LAB_ce3187e
PTR_ce34fcc:
    #data FUN_ce31c58
PTR_ce34fd0:
    #data LAB_ce31890
PTR_ce34fd4:
    #data LAB_ce318fa
PTR_ce34fd8:
    #data LAB_ce31990
PTR_ce34fdc:
    #data LAB_ce31afc
PTR_ce34fe0:
    #data LAB_ce31b88
PTR_ce34fe4:
    #data LAB_ce31d02
PTR_ce34fe8:
    #data LAB_ce31e00
PTR_ce34fec:
    #data LAB_ce31ed8
PTR_ce34ff0:
    #data LAB_ce31fd0
PTR_ce34ff4:
    #data LAB_ce320be
PTR_ce34ff8:
    #data LAB_ce32328
PTR_ce34ffc:
    #data LAB_ce3210c
PTR_ce35000:
    #data LAB_ce3218c
PTR_ce35004:
    #data LAB_ce32220
PTR_ce35008:
    #data LAB_ce324b4
PTR_ce3500c:
    #data LAB_ce32530
PTR_ce35010:
    #data LAB_ce32944
PTR_ce35014:
    #data LAB_ce32580
PTR_ce35018:
    #data LAB_ce325d4
PTR_ce3501c:
    #data LAB_ce32648
PTR_ce35020:
    #data LAB_ce32760
PTR_ce35024:
    #data LAB_ce32860
PTR_ce35028:
    #data LAB_ce329d0
PTR_ce3502c:
    #data LAB_ce32cfe
PTR_ce35030:
    #data LAB_ce33308
PTR_ce35034:
    #data LAB_ce329e2
PTR_ce35038:
    #data LAB_ce32ad8
PTR_ce3503c:
    #data LAB_ce32c94
PTR_ce35040:
    #data LAB_ce32d18
PTR_ce35044:
    #data LAB_ce32e98
PTR_ce35048:
    #data LAB_ce33088
PTR_ce3504c:
    #data LAB_ce336cc
PTR_ce35050:
    #data LAB_ce33760
PTR_ce35054:
    #data LAB_ce337fc
PTR_ce35058:
    #data FUN_ce338be
PTR_ce3505c:
    #data LAB_ce338f2
PTR_ce35060:
    #data LAB_ce33ade
PTR_ce35064:
    #data LAB_ce33e3c
PTR_ce35068:
    #data LAB_ce33934
PTR_ce3506c:
    #data LAB_ce339ec
PTR_ce35070:
    #data LAB_ce33af4
PTR_ce35074:
    #data LAB_ce33b2a
PTR_ce35078:
    #data LAB_ce33c88
PTR_ce3507c:
    #data LAB_ce33d2c
PTR_ce35080:
    #data LAB_ce33e88
PTR_ce35084:
    #data FUN_ce33f4c
PTR_ce35088:
    #data LAB_ce3407c
PTR_ce3508c:
    #data LAB_ce340c4
PTR_ce35090:
    #data LAB_ce34186
PTR_ce35094:
    #data LAB_ce34230
PTR_ce35098:
    #data LAB_ce34368
PTR_ce3509c:
    #data LAB_ce343e4
PTR_ce350a0:
    #data FUN_ce3446c
PTR_ce350a4:
    #data LAB_ce344e0
PTR_ce350a8:
    #data LAB_ce34538
PTR_ce350ac:
    #data LAB_ce346a0
PTR_ce350b0:
    #data LAB_ce347f0
PTR_ce350b4:
    #data LAB_ce347f0
PTR_ce350b8:
    #data LAB_ce347f0
PTR_ce350bc:
    #data LAB_ce3488a
PTR_ce350c0:
    #data LAB_ce3488a
PTR_ce350c4:
    #data LAB_ce3488a
PTR_ce350c8:
    #data LAB_ce348ac
PTR_ce350cc:
    #data LAB_ce3498e
PTR_ce350d0:
    #data LAB_ce34b4a
PTR_ce350d4:
    #data LAB_ce34b4a
PTR_ce350d8:
    #data LAB_ce34b4a
PTR_ce350dc:
    #data LAB_ce348be
PTR_ce350e0:
    #data LAB_ce348d6
PTR_ce350e4:
    #data LAB_ce34968
PTR_ce350e8:
    #data LAB_ce349a0
PTR_ce350ec:
    #data LAB_ce349b8
PTR_ce350f0:
    #data LAB_ce34adc
PTR_ce350f4:
    #data LAB_ce34b5c
PTR_ce350f8:
    #data LAB_ce34b6c
PTR_ce350fc:
    #data LAB_ce34c28
PTR_ce35100:
    #data LAB_ce34cc6
PTR_ce35104:
    #data LAB_ce34cc6
PTR_ce35108:
    #data LAB_ce34cc6
PTR_ce3510c:
    #data LAB_ce34cd6
PTR_ce35110:
    #data LAB_ce34cda
PTR_ce35114:
    #data LAB_ce34cf8
