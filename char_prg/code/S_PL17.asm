;╔══════════════════════════════════════════╗
;║ S_PL17 : Cable (Nathan Summers) Program  ║
;╚══════════════════════════════════════════╝

#symbol loc_8c054508 0x8C054508
#symbol loc_8c054b34 0x8C054B34
#symbol loc_8c05496c 0x8C05496C
#symbol loc_8c054d04 0x8C054D04
#symbol loc_8c053e00 0x8C053E00
#symbol loc_8c0542e0 0x8C0542E0
#symbol loc_8c054e58 0x8C054E58
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c0530d8 0x8C0530D8
#symbol loc_8c054da0 0x8C054DA0
#symbol loc_8c054d1c 0x8C054D1C
#symbol loc_8c052b4c 0x8C052B4C
#symbol loc_8c2896b0 0x8C2896B0
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c0511e2 0x8C0511E2
#symbol loc_8c052c84 0x8C052C84
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c051648 0x8C051648
#symbol loc_8c0864b8 0x8C0864B8
#symbol loc_8c0d586c 0x8C0D586C
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c0fd7fe 0x8C0FD7FE
#symbol loc_8c050084 0x8C050084
#symbol loc_8c04ff88 0x8C04FF88
#symbol loc_8c04fea8 0x8C04FEA8
#symbol loc_8c050048 0x8C050048
#symbol loc_8c052ce2 0x8C052CE2
#symbol loc_8c052dac 0x8C052DAC
#symbol loc_8c05176e 0x8C05176E
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c105082 0x8C105082
#symbol loc_8c042008 0x8C042008
#symbol loc_8c0d4e00 0x8C0D4E00
#symbol loc_8c0fd6b0 0x8C0FD6B0
#symbol loc_8c046c8a 0x8C046C8A
#symbol loc_8c05218a 0x8C05218A
#symbol loc_8c035162 0x8C035162
#symbol loc_8c05115a 0x8C05115A
#symbol loc_8c0d4372 0x8C0D4372
#symbol loc_8c0d4594 0x8C0D4594
#symbol loc_8c0851f0 0x8C0851F0
#symbol loc_8c050834 0x8C050834
#symbol loc_8c05264c 0x8C05264C
#symbol loc_8c0522e0 0x8C0522E0
#symbol loc_8c0d491c 0x8C0D491C
#symbol loc_8c053082 0x8C053082
#symbol loc_8c084e7c 0x8C084E7C
#symbol loc_8c0511b4 0x8C0511B4
#symbol loc_8c0d41d0 0x8C0D41D0
#symbol loc_8c0d4038 0x8C0D4038
#symbol loc_8c083758 0x8C083758
#symbol loc_8c289628 0x8C289628
#symbol loc_8c0d5570 0x8C0D5570
#symbol loc_8c085ad4 0x8C085AD4
#symbol loc_8c084290 0x8C084290
#symbol loc_8c050ea4 0x8C050EA4
#symbol loc_8c045790 0x8C045790
#symbol loc_8c103660 0x8C103660
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c0ee570 0x8C0EE570
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c1294c8 0x8C1294C8
#symbol loc_8c10235c 0x8C10235C
#symbol loc_8c107366 0x8C107366
#symbol loc_8c04cc1c 0x8C04CC1C
#symbol loc_8c051854 0x8C051854
BEG_ce30000:
    mov.w @(DAT_ce300be,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300c0,pc),r7
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
    mov.l @(PTR_ce300c4,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    mov.l @(PTR_ce300c8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    mov.l @(PTR_ce300cc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    mov.l @(PTR_ce300d0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce300dc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce30148
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce303b6
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce301f0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce30236
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce30292
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce302d8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce30376
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce304da
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b8
    mov.l @(PTR_ce300d4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300d8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
LAB_ce300b8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
DAT_ce300be:
    #data 0x0428
    #align4

PTR_ce300c0:
    #data PTR_ce33614
PTR_ce300c4:
    #data loc_8c054508
PTR_ce300c8:
    #data loc_8c054b34
PTR_ce300cc:
    #data loc_8c05496c
PTR_ce300d0:
    #data loc_8c054d04
PTR_ce300d4:
    #data loc_8c053e00
PTR_ce300d8:
    #data loc_8c0542e0
FUN_ce300dc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce301dc,pc),r5
    mov.w @(DAT_ce301ca,pc),r6
    mov.l @(PTR_ce301e0,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30110
    bsr FUN_ce303f2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30110
    mov.w @(DAT_ce301cc,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce30110
    mov.w @(DAT_ce301ce,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30114
LAB_ce30110:
    bra LAB_ce30140
    mov 0x00,r0
LAB_ce30114:
    mov.w @(DAT_ce301ca,pc),r5
    mov.l @(PTR_ce301e4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r13
    mov r13,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301d0,pc),r0
    mov.l @(PTR_ce301e8,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce301d2,pc),r0
    mov.l r13,@(r0,r14)
    add 0x04,r0
    mov.l r13,@(r0,r14)
    mov 0x01,r0
LAB_ce30140:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
FUN_ce30148:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce301ec,pc),r5
    mov.l @(PTR_ce301e0,pc),r3
    mov.w @(DAT_ce301d4,pc),r6
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30186
    bsr FUN_ce303f2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30186
    mov.w @(DAT_ce301cc,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce30186
    mov.w @(DAT_ce301ce,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30186
    mov.w @(DAT_ce301d6,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3018a
LAB_ce30186:
    bra LAB_ce301c0
    mov 0x00,r0
LAB_ce3018a:
    mov.w @(DAT_ce301d4,pc),r5
    mov.l @(PTR_ce301e4,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r13
    mov r13,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x01,r12
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301d0,pc),r0
    mov.l @(PTR_ce301e8,pc),r3
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce301d6,pc),r0
    mov 0x02,r3
    mov.l r12,@(r0,r14)
    mov.w @(DAT_ce301d8,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce301da,pc),r0
    mov.l r13,@(r0,r14)
    mov r12,r0
    nop
LAB_ce301c0:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
DAT_ce301ca:
    #data 0x0364
DAT_ce301cc:
    #data 0x040c
DAT_ce301ce:
    #data 0x02d0
DAT_ce301d0:
    #data 0x01e9
DAT_ce301d2:
    #data 0x02a4
DAT_ce301d4:
    #data 0x036c
DAT_ce301d6:
    #data 0x02c4
DAT_ce301d8:
    #data 0x01f1
DAT_ce301da:
    #data 0x02d4
    #align4

PTR_ce301dc:
    #data DAT_ce33538
PTR_ce301e0:
    #data loc_8c054e58
PTR_ce301e4:
    #data loc_8c055c3a
PTR_ce301e8:
    #data loc_8c0530d8
PTR_ce301ec:
    #data DAT_ce33548
FUN_ce301f0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30314,pc),r5
    mov.w @(DAT_ce30306,pc),r6
    mov.l @(PTR_ce30318,pc),r3
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
    mov.w @(DAT_ce30306,pc),r5
    mov.l @(PTR_ce3031c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30308,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30320,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
FUN_ce30236:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30324,pc),r5
    mov.w @(DAT_ce3030a,pc),r6
    mov.l @(PTR_ce30318,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30258
    bsr FUN_ce303f2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3025c
LAB_ce30258:
    bra LAB_ce3028a
    mov 0x00,r0
LAB_ce3025c:
    mov.w @(DAT_ce3030a,pc),r5
    mov.l @(PTR_ce3031c,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r13
    mov r13,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30308,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30320,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3030c,pc),r0
    mov.l r13,@(r0,r14)
    add 0x04,r0
    mov.l r13,@(r0,r14)
    mov 0x01,r0
LAB_ce3028a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
FUN_ce30292:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30328,pc),r5
    mov.w @(DAT_ce3030e,pc),r6
    mov.l @(PTR_ce30318,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302b0
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
LAB_ce302b0:
    mov.w @(DAT_ce3030e,pc),r5
    mov.l @(PTR_ce3031c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30308,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30320,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
FUN_ce302d8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3032c,pc),r5
    mov.w @(DAT_ce30310,pc),r6
    mov.l @(PTR_ce30318,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30302
    bsr FUN_ce303f2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30302
    mov.w @(DAT_ce30312,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30330
LAB_ce30302:
    bra LAB_ce3036e
    mov 0x00,r0
DAT_ce30306:
    #data 0x0374
DAT_ce30308:
    #data 0x01e9
DAT_ce3030a:
    #data 0x037c
DAT_ce3030c:
    #data 0x02a4
DAT_ce3030e:
    #data 0x0384
DAT_ce30310:
    #data 0x038c
DAT_ce30312:
    #data 0x02b8
    #align4

PTR_ce30314:
    #data DAT_ce33558
PTR_ce30318:
    #data loc_8c054e58
PTR_ce3031c:
    #data loc_8c055c3a
PTR_ce30320:
    #data loc_8c0530d8
PTR_ce30324:
    #data DAT_ce33568
PTR_ce30328:
    #data DAT_ce33596
PTR_ce3032c:
    #data DAT_ce335a6
LAB_ce30330:
    mov.w @(DAT_ce30442,pc),r5
    mov.l @(PTR_ce30458,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r13
    mov r13,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30444,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3045c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30446,pc),r0
    mov.w @(DAT_ce30448,pc),r1
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce30448,pc),r0
    add r14,r1
    extu.w r2,r2
    mov.l r2,@(r0,r14)
    mov.l @(r0,r14),r0
    and 0x60,r0
    mov.l r0,@r1
    mov.w @(DAT_ce3044a,pc),r0
    mov.l r13,@(r0,r14)
    mov 0x01,r0
LAB_ce3036e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
FUN_ce30376:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30460,pc),r3
    jsr @r3
    mov 0x07,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3038e
    bra LAB_ce303ae
    mov 0x00,r0
LAB_ce3038e:
    mov 0x00,r13
    mov r13,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30444,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3045c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3044c,pc),r0
    mov.l r13,@(r0,r14)
    mov 0x01,r0
LAB_ce303ae:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
FUN_ce303b6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30464,pc),r5
    mov.w @(DAT_ce3044e,pc),r6
    mov.l @(PTR_ce30468,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303d4
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
LAB_ce303d4:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30444,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3045c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
FUN_ce303f2:
    mov.w @(DAT_ce30450,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30416
    mov.w @(DAT_ce30452,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30416
    mov.w @(DAT_ce30454,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30410
    rts
    mov 0x00,r0
LAB_ce30410:
    mov.b @(r0,r4),r3
    add 0x01,r3
    mov.b r3,@(r0,r4)
LAB_ce30416:
    mov 0x01,r0
    rts
    nop
FUN_ce3041c:
    sts.l PR,@-r15
    add 0xFC,r15
    bsr FUN_ce3046c
    mov.l r4,@r15
    tst r0,r0
    bf LAB_ce30430
    bsr FUN_ce304a2
    mov.l @r15,r4
    tst r0,r0
    bt LAB_ce30438
LAB_ce30430:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov 0x01,r0
LAB_ce30438:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
DAT_ce30442:
    #data 0x038c
DAT_ce30444:
    #data 0x01e9
DAT_ce30446:
    #data 0x0340
DAT_ce30448:
    #data 0x02b0
DAT_ce3044a:
    #data 0x02b4
DAT_ce3044c:
    #data 0x02ac
DAT_ce3044e:
    #data 0x0394
DAT_ce30450:
    #data 0x01f9
DAT_ce30452:
    #data 0x01fc
DAT_ce30454:
    #data 0x01d4
    #align4

PTR_ce30458:
    #data loc_8c055c3a
PTR_ce3045c:
    #data loc_8c0530d8
PTR_ce30460:
    #data loc_8c054da0
PTR_ce30464:
    #data DAT_ce335b6
PTR_ce30468:
    #data loc_8c054e58
FUN_ce3046c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30570,pc),r5
    mov.w @(DAT_ce3055c,pc),r6
    mov.l @(PTR_ce30574,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3048c
    mov.w @(DAT_ce3055e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30494
LAB_ce3048c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
LAB_ce30494:
    mov.w @(DAT_ce30560,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
FUN_ce304a2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30578,pc),r5
    mov.w @(DAT_ce30562,pc),r6
    mov.l @(PTR_ce30574,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304c2
    mov.w @(DAT_ce3055e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304ca
LAB_ce304c2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
LAB_ce304ca:
    mov.w @(DAT_ce30560,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov r3,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
FUN_ce304da:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3057c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce304f2
    mov.w @(DAT_ce3055e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304fa
LAB_ce304f2:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
LAB_ce304fa:
    mov.w @(DAT_ce30564,pc),r0
    mov 0x08,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30580,pc),r3
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
LAB_ce3051a:
    mov.w @(DAT_ce30566,pc),r0
    mov.w @(r0,r4),r3
    mov.w @(DAT_ce30568,pc),r0
    extu.w r3,r3
    mov.l @(r0,r4),r2
    and r3,r2
    mov.l r2,@(r0,r4)
    add 0x14,r0
    mov.l @(r0,r4),r3
    tst r3,r3
    bt LAB_ce30544
    mov.w @(DAT_ce3056a,pc),r0
    mov.l @(r0,r4),r3
    cmp/pz r3
    bt LAB_ce3053e
    mov 0x00,r1
    bra LAB_ce30544
    mov.l r1,@(r0,r4)
LAB_ce3053e:
    mov.l @(r0,r4),r2
    add 0xFF,r2
    mov.l r2,@(r0,r4)
LAB_ce30544:
    rts
    nop
LAB_ce30548:
    mov.w @(DAT_ce3056c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30584,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
DAT_ce3055c:
    #data 0x0364
DAT_ce3055e:
    #data 0x040c
DAT_ce30560:
    #data 0x0258
DAT_ce30562:
    #data 0x036c
DAT_ce30564:
    #data 0x01e9
DAT_ce30566:
    #data 0x0340
DAT_ce30568:
    #data 0x02b0
DAT_ce3056a:
    #data 0x02c4
DAT_ce3056c:
    #data 0x01ff
    #align4

PTR_ce30570:
    #data DAT_ce33538
PTR_ce30574:
    #data loc_8c054e58
PTR_ce30578:
    #data DAT_ce33548
PTR_ce3057c:
    #data loc_8c054d1c
PTR_ce30580:
    #data loc_8c0530d8
PTR_ce30584:
    #data PTR_ce33684
LAB_ce30588:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30688,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30676,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce305b6
    mov.w @(DAT_ce30678,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce305ae
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307dc
    mov.l @r15+,r14
LAB_ce305ae:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3070a
    mov.l @r15+,r14
LAB_ce305b6:
    mov.w @(DAT_ce30678,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce305c8
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3065a
    mov.l @r15+,r14
LAB_ce305c8:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce305d0
    mov.l @r15+,r14
LAB_ce305d0:
    mov.w @(DAT_ce3067a,pc),r0
    mov 0x01,r5
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce305ee
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce30606
    cmp/eq 0x02,r0
    bt LAB_ce3061a
    bra LAB_ce3062e
    nop
LAB_ce305ee:
    mov.w @(DAT_ce3067c,pc),r0
    mov.l @(PTR_ce3068c,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3067e,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30680,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30682,pc),r0
    bra LAB_ce3062c
    nop
LAB_ce30606:
    mov.w @(DAT_ce3067c,pc),r0
    mov.l @(PTR_ce30690,pc),r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce3067e,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30680,pc),r0
    bra LAB_ce3062c
    nop
LAB_ce3061a:
    mov.w @(DAT_ce3067c,pc),r0
    mov 0x02,r5
    mov.l @(PTR_ce30694,pc),r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce3067e,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30680,pc),r0
LAB_ce3062c:
    mov.b r5,@(r0,r14)
LAB_ce3062e:
    mov.w @(DAT_ce30684,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce30698,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
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
    mov.w @(DAT_ce3067c,pc),r0
    mov.l @(PTR_ce3069c,pc),r2
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14
LAB_ce3065a:
    mov.w @(DAT_ce3067a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce306a0
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce306b6
    cmp/eq 0x02,r0
    bt LAB_ce306c8
    bra LAB_ce306de
    nop
DAT_ce30676:
    #data 0x01fe
DAT_ce30678:
    #data 0x01f9
DAT_ce3067a:
    #data 0x01e8
DAT_ce3067c:
    #data 0x0158
DAT_ce3067e:
    #data 0x03f4
DAT_ce30680:
    #data 0x01a7
DAT_ce30682:
    #data 0x02a2
DAT_ce30684:
    #data 0x01ac
    #align4

PTR_ce30688:
    #data loc_8c052b4c
PTR_ce3068c:
    #data DAT_ce335ca
PTR_ce30690:
    #data DAT_ce335ce
PTR_ce30694:
    #data DAT_ce335d2
PTR_ce30698:
    #data loc_8c2896b0
PTR_ce3069c:
    #data loc_8c034e8c
LAB_ce306a0:
    mov.w @(DAT_ce307ae,pc),r0
    mov 0x06,r3
    mov.l @(PTR_ce307bc,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce307b0,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307b2,pc),r0
    bra LAB_ce306de
    mov.b r4,@(r0,r14)
LAB_ce306b6:
    mov.w @(DAT_ce307ae,pc),r0
    mov 0x01,r5
    mov.l @(PTR_ce307c0,pc),r2
    mov 0x07,r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce306d6
    nop
LAB_ce306c8:
    mov.w @(DAT_ce307ae,pc),r0
    mov 0x02,r5
    mov.l @(PTR_ce307c4,pc),r2
    mov 0x08,r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
LAB_ce306d6:
    mov.w @(DAT_ce307b0,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307b2,pc),r0
    mov.b r5,@(r0,r14)
LAB_ce306de:
    mov.w @(DAT_ce307b4,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce307c8,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
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
    mov.w @(DAT_ce307ae,pc),r0
    mov.l @(PTR_ce307cc,pc),r2
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14
LAB_ce3070a:
    mov.w @(DAT_ce307b6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3072a
    mov 0x03,r4
    cmp/eq 0x01,r0
    bt LAB_ce3073e
    cmp/eq 0x02,r0
    bt LAB_ce30756
    bra LAB_ce30780
    nop
LAB_ce3072a:
    mov.w @(DAT_ce307ae,pc),r0
    mov.l @(PTR_ce307d0,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce307b0,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307b2,pc),r0
    bra LAB_ce30780
    mov.b r13,@(r0,r14)
LAB_ce3073e:
    mov.w @(DAT_ce307ae,pc),r0
    mov 0x01,r4
    mov 0x04,r3
    mov.l @(PTR_ce307d4,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce307b0,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307b2,pc),r0
    bra LAB_ce30780
    mov.b r4,@(r0,r14)
LAB_ce30756:
    mov.w @(DAT_ce307b8,pc),r0
    mov.w @(DAT_ce307ba,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt/s LAB_ce3076c
    mov 0x02,r5
    mov.w @(DAT_ce307ae,pc),r0
    mov.b r4,@(r0,r14)
    bra LAB_ce30772
    mov 0x12,r2
LAB_ce3076c:
    mov.w @(DAT_ce307ae,pc),r0
    mov 0x05,r2
    mov.b r5,@(r0,r14)
LAB_ce30772:
    add 0x49,r0
    mov.l @(PTR_ce307d8,pc),r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce307b0,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307b2,pc),r0
    mov.b r5,@(r0,r14)
LAB_ce30780:
    mov.w @(DAT_ce307b4,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce307c8,pc),r3
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
    mov.w @(DAT_ce307ae,pc),r0
    mov.l @r15+,r13
    mov.l @(PTR_ce307cc,pc),r2
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14
DAT_ce307ae:
    #data 0x0158
DAT_ce307b0:
    #data 0x03f4
DAT_ce307b2:
    #data 0x01a7
DAT_ce307b4:
    #data 0x01ac
DAT_ce307b6:
    #data 0x01e8
DAT_ce307b8:
    #data 0x01fa
DAT_ce307ba:
    #data 0x0800
    #align4

PTR_ce307bc:
    #data DAT_ce335ca
PTR_ce307c0:
    #data DAT_ce335ce
PTR_ce307c4:
    #data DAT_ce335d2
PTR_ce307c8:
    #data loc_8c2896b0
PTR_ce307cc:
    #data loc_8c034e8c
PTR_ce307d0:
    #data DAT_ce335d6
PTR_ce307d4:
    #data DAT_ce335da
PTR_ce307d8:
    #data DAT_ce335de
LAB_ce307dc:
    mov.w @(DAT_ce308b6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307f8
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce3080e
    cmp/eq 0x02,r0
    bt LAB_ce30820
    bra LAB_ce30836
    nop
LAB_ce307f8:
    mov.w @(DAT_ce308b8,pc),r0
    mov 0x09,r3
    mov.l @(PTR_ce308c4,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce308ba,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308bc,pc),r0
    bra LAB_ce30836
    mov.b r4,@(r0,r14)
LAB_ce3080e:
    mov.w @(DAT_ce308b8,pc),r0
    mov 0x01,r5
    mov.l @(PTR_ce308c8,pc),r2
    mov 0x0A,r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    bra LAB_ce3082e
    nop
LAB_ce30820:
    mov.w @(DAT_ce308b8,pc),r0
    mov 0x02,r5
    mov.l @(PTR_ce308cc,pc),r2
    mov 0x0B,r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
LAB_ce3082e:
    mov.w @(DAT_ce308ba,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308bc,pc),r0
    mov.b r5,@(r0,r14)
LAB_ce30836:
    mov.w @(DAT_ce308be,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce308d0,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
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
    mov.w @(DAT_ce308b8,pc),r0
    mov.l @(PTR_ce308d4,pc),r2
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14
LAB_ce30862:
    mov.w @(DAT_ce308c0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30872
    mov.w @(DAT_ce308c2,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30882
LAB_ce30872:
    mov.w @(DAT_ce308c0,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30886
    mov.w @(DAT_ce308c2,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30886
LAB_ce30882:
    bra LAB_ce3088a
    nop
LAB_ce30886:
    rts
    nop
LAB_ce3088a:
    mov.w @(DAT_ce308c0,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce30988
    bra LAB_ce30898
    nop
LAB_ce30898:
    mov.w @(DAT_ce308b6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308d8
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce308fe
    cmp/eq 0x02,r0
    bt LAB_ce30922
    bra LAB_ce30948
    nop
DAT_ce308b6:
    #data 0x01e8
DAT_ce308b8:
    #data 0x0158
DAT_ce308ba:
    #data 0x03f4
DAT_ce308bc:
    #data 0x01a7
DAT_ce308be:
    #data 0x01ac
DAT_ce308c0:
    #data 0x01fe
DAT_ce308c2:
    #data 0x01d6
    #align4

PTR_ce308c4:
    #data DAT_ce335d6
PTR_ce308c8:
    #data DAT_ce335da
PTR_ce308cc:
    #data DAT_ce335de
PTR_ce308d0:
    #data loc_8c2896b0
PTR_ce308d4:
    #data loc_8c034e8c
LAB_ce308d8:
    mov.w @(DAT_ce309c0,pc),r0
    mov 0x0C,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce308f2
    mov.w @(DAT_ce309c2,pc),r0
    mov.l @(PTR_ce309cc,pc),r2
    bra LAB_ce308f8
    mov.l r2,@(r0,r14)
LAB_ce308f2:
    mov.w @(DAT_ce309c2,pc),r0
    mov.l @(PTR_ce309d0,pc),r1
    mov.l r1,@(r0,r14)
LAB_ce308f8:
    mov.w @(DAT_ce309c4,pc),r0
    bra LAB_ce30948
    mov.b r4,@(r0,r14)
LAB_ce308fe:
    mov.w @(DAT_ce309c0,pc),r0
    mov 0x01,r5
    mov 0x0D,r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3091a
    mov.w @(DAT_ce309c2,pc),r0
    mov.l @(PTR_ce309d4,pc),r2
    bra LAB_ce30944
    mov.l r2,@(r0,r14)
LAB_ce3091a:
    mov.w @(DAT_ce309c2,pc),r0
    mov.l @(PTR_ce309d8,pc),r1
    bra LAB_ce30944
    mov.l r1,@(r0,r14)
LAB_ce30922:
    mov.w @(DAT_ce309c0,pc),r0
    mov 0x02,r5
    mov 0x0E,r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3093e
    mov.w @(DAT_ce309c2,pc),r0
    mov.l @(PTR_ce309dc,pc),r2
    bra LAB_ce30944
    mov.l r2,@(r0,r14)
LAB_ce3093e:
    mov.w @(DAT_ce309c2,pc),r0
    mov.l @(PTR_ce309e0,pc),r1
    mov.l r1,@(r0,r14)
LAB_ce30944:
    mov.w @(DAT_ce309c4,pc),r0
    mov.b r5,@(r0,r14)
LAB_ce30948:
    mov.w @(DAT_ce309c6,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce309e4,pc),r3
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
    mov.w @(DAT_ce309c0,pc),r0
    mov.l @(PTR_ce309e8,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce309c8,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30982
    mov.w @(DAT_ce309c8,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)
LAB_ce30982:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce30988:
    mov.w @(DAT_ce309ca,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce309a6
    mov 0x00,r4
    cmp/eq 0x01,r0
    bt LAB_ce309fc
    cmp/eq 0x02,r0
    bt LAB_ce30a20
    bra LAB_ce30a46
    nop
LAB_ce309a6:
    mov.w @(DAT_ce309c0,pc),r0
    mov 0x0F,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce309f0
    mov.w @(DAT_ce309c2,pc),r0
    mov.l @(PTR_ce309ec,pc),r2
    bra LAB_ce309f6
    mov.l r2,@(r0,r14)
DAT_ce309c0:
    #data 0x0158
DAT_ce309c2:
    #data 0x03f4
DAT_ce309c4:
    #data 0x01a7
DAT_ce309c6:
    #data 0x01ac
DAT_ce309c8:
    #data 0x01d6
DAT_ce309ca:
    #data 0x01e8
    #align4

PTR_ce309cc:
    #data DAT_ce335e2
PTR_ce309d0:
    #data DAT_ce335fa
PTR_ce309d4:
    #data DAT_ce335e6
PTR_ce309d8:
    #data DAT_ce335fe
PTR_ce309dc:
    #data DAT_ce335ea
PTR_ce309e0:
    #data DAT_ce33602
PTR_ce309e4:
    #data loc_8c2896b0
PTR_ce309e8:
    #data loc_8c034e8c
PTR_ce309ec:
    #data DAT_ce335ee
LAB_ce309f0:
    mov.w @(DAT_ce30b10,pc),r0
    mov.l @(PTR_ce30b20,pc),r1
    mov.l r1,@(r0,r14)
LAB_ce309f6:
    mov.w @(DAT_ce30b12,pc),r0
    bra LAB_ce30a46
    mov.b r4,@(r0,r14)
LAB_ce309fc:
    mov.w @(DAT_ce30b14,pc),r0
    mov 0x01,r5
    mov 0x10,r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a18
    mov.w @(DAT_ce30b10,pc),r0
    mov.l @(PTR_ce30b24,pc),r2
    bra LAB_ce30a42
    mov.l r2,@(r0,r14)
LAB_ce30a18:
    mov.w @(DAT_ce30b10,pc),r0
    mov.l @(PTR_ce30b28,pc),r1
    bra LAB_ce30a42
    mov.l r1,@(r0,r14)
LAB_ce30a20:
    mov.w @(DAT_ce30b14,pc),r0
    mov 0x02,r5
    mov 0x11,r3
    mov.b r5,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a3c
    mov.w @(DAT_ce30b10,pc),r0
    mov.l @(PTR_ce30b2c,pc),r2
    bra LAB_ce30a42
    mov.l r2,@(r0,r14)
LAB_ce30a3c:
    mov.w @(DAT_ce30b10,pc),r0
    mov.l @(PTR_ce30b30,pc),r1
    mov.l r1,@(r0,r14)
LAB_ce30a42:
    mov.w @(DAT_ce30b12,pc),r0
    mov.b r5,@(r0,r14)
LAB_ce30a46:
    mov.w @(DAT_ce30b16,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30b34,pc),r3
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
    mov.w @(DAT_ce30b14,pc),r0
    mov.l @(PTR_ce30b38,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30b18,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30a80
    mov.w @(DAT_ce30b18,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)
LAB_ce30a80:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce30a86:
    mov.w @(DAT_ce30b1a,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30b3c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
LAB_ce30a9a:
    sts.l PR,@-r15
    mov.l @(PTR_ce30b40,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR
LAB_ce30aa8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30b44,pc),r3
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
    mov.w @(DAT_ce30b1c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30b48
    mov.w @(DAT_ce30b1e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30b08
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30ea2
    mov.l @r15+,r14
LAB_ce30b08:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d9a
    mov.l @r15+,r14
DAT_ce30b10:
    #data 0x03f4
DAT_ce30b12:
    #data 0x01a7
DAT_ce30b14:
    #data 0x0158
DAT_ce30b16:
    #data 0x01ac
DAT_ce30b18:
    #data 0x01d6
DAT_ce30b1a:
    #data 0x01ff
DAT_ce30b1c:
    #data 0x01fe
DAT_ce30b1e:
    #data 0x01f9
    #align4

PTR_ce30b20:
    #data DAT_ce33606
PTR_ce30b24:
    #data DAT_ce335f2
PTR_ce30b28:
    #data DAT_ce3360a
PTR_ce30b2c:
    #data DAT_ce335f6
PTR_ce30b30:
    #data DAT_ce3360e
PTR_ce30b34:
    #data loc_8c2896b0
PTR_ce30b38:
    #data loc_8c034e8c
PTR_ce30b3c:
    #data PTR_ce33694
PTR_ce30b40:
    #data loc_8c0511e2
PTR_ce30b44:
    #data loc_8c052c84
LAB_ce30b48:
    mov.w @(DAT_ce30bf8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30b5a
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d38
    mov.l @r15+,r14
LAB_ce30b5a:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30b62
    mov.l @r15+,r14
LAB_ce30b62:
    mov.w @(DAT_ce30bfa,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30b7e
    cmp/eq 0x01,r0
    bt LAB_ce30b7e
    cmp/eq 0x02,r0
    bt LAB_ce30b94
    bra LAB_ce30b9c
    nop
LAB_ce30b7e:
    mov.l @(PTR_ce30c00,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30b9c
    lds.l @r15+,PR
    mov.l @(PTR_ce30c04,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
LAB_ce30b94:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30ba2
    mov.l @r15+,r14
LAB_ce30b9c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce30ba2:
    mov r4,r3
    mov.l @(PTR_ce30c08,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
LAB_ce30bb4:
    mov 0x01,r0
    mov.b r0,@(0x7,r4)
    mov 0x00,r5
    mov.w @(DAT_ce30bfc,pc),r0
    mov.l r5,@(r0,r4)
    add 0x04,r0
    mov.l r5,@(r0,r4)
    mov r5,r0
    nop
    mov.w r0,@(0x1c,r4)
LAB_ce30bc8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30c00,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30bfe,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x05,r0
    bf LAB_ce30c0c
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce30cbc
    lds.l @r15+,PR
    mov.l @(PTR_ce30c04,pc),r2
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14
DAT_ce30bf8:
    #data 0x01f9
DAT_ce30bfa:
    #data 0x01e8
DAT_ce30bfc:
    #data 0x02bc
DAT_ce30bfe:
    #data 0x0141
    #align4

PTR_ce30c00:
    #data loc_8c034dee
PTR_ce30c04:
    #data loc_8c051648
PTR_ce30c08:
    #data PTR_ce336a4
LAB_ce30c0c:
    bsr FUN_ce30cf4
    mov r14,r4
    mov.w @(DAT_ce30d0a,pc),r3
    add r14,r3
    mov.l @r3,r3
    add r0,r3
    mov.w @(DAT_ce30d0a,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30d0c,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf/s LAB_ce30c42
    mov 0x00,r13
    mov.w @(DAT_ce30d0c,pc),r0
    mov 0x00,r5
    mov.l @(PTR_ce30d18,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30d1c,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30d20,pc),r3
    mov 0x24,r5
    jsr @r3
    mov r14,r4
LAB_ce30c42:
    mov.w @(DAT_ce30d0c,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x03,r0
    bf LAB_ce30c56
    mov.w @(DAT_ce30d0c,pc),r0
    mov 0x03,r5
    mov.l @(PTR_ce30d1c,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
LAB_ce30c56:
    mov.w @(DAT_ce30d0c,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x04,r0
    bf LAB_ce30cbc
    mov.w @(DAT_ce30d0c,pc),r0
    mov 0x03,r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce30d0e,pc),r0
    mov.l @(r0,r14),r2
    cmp/ge r3,r2
    bt LAB_ce30caa
    mov.w @(DAT_ce30d10,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce30c8a
    mov 0x01,r12
    mov.l @(PTR_ce30d24,pc),r2
    jsr @r2
    nop
    tst r12,r0
    bt LAB_ce30c86
    mov.w @(DAT_ce30d0a,pc),r0
    bra LAB_ce30c8a
    mov.l r12,@(r0,r14)
LAB_ce30c86:
    mov.w @(DAT_ce30d0a,pc),r0
    mov.l r13,@(r0,r14)
LAB_ce30c8a:
    mov.w @(DAT_ce30d0a,pc),r0
    mov.l @(r0,r14),r3
    cmp/ge r12,r3
    bf LAB_ce30ca4
    mov.l @(PTR_ce30d28,pc),r3
    mov 0x07,r5
    mov 0x03,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30d0e,pc),r0
    mov.l @(r0,r14),r2
    add 0x01,r2
    mov.l r2,@(r0,r14)
LAB_ce30ca4:
    mov.w @(DAT_ce30d0a,pc),r0
    bra LAB_ce30cb0
    mov.l r13,@(r0,r14)
LAB_ce30caa:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
LAB_ce30cb0:
    mov.w @(DAT_ce30d0e,pc),r0
    mov.l @(PTR_ce30d2c,pc),r1
    mov.l @(r0,r14),r0
    shll r0
    mov.w @(r0,r1),r0
    mov.w r0,@(0x1c,r14)
LAB_ce30cbc:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
LAB_ce30cc6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d30,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30d0c,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x05,r0
    bf LAB_ce30cee
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce30cee
    lds.l @r15+,PR
    mov.l @(PTR_ce30d34,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
LAB_ce30cee:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
FUN_ce30cf4:
    mov.w @(DAT_ce30d12,pc),r0
    mov.w @(DAT_ce30d14,pc),r2
    mov.w @(r0,r4),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce30d04
    rts
    mov 0x01,r0
LAB_ce30d04:
    mov 0x00,r0
    rts
    nop
DAT_ce30d0a:
    #data 0x02bc
DAT_ce30d0c:
    #data 0x0141
DAT_ce30d0e:
    #data 0x02c0
DAT_ce30d10:
    #data 0x0525
DAT_ce30d12:
    #data 0x0348
DAT_ce30d14:
    #data 0x0100
    #align4

PTR_ce30d18:
    #data loc_8c0864b8
PTR_ce30d1c:
    #data loc_8c0d586c
PTR_ce30d20:
    #data loc_8c04223a
PTR_ce30d24:
    #data loc_8c03319e
PTR_ce30d28:
    #data loc_8c034e8c
PTR_ce30d2c:
    #data DAT_ce336b0
PTR_ce30d30:
    #data loc_8c034dee
PTR_ce30d34:
    #data loc_8c051648
LAB_ce30d38:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e1c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d52
    lds.l @r15+,PR
    mov.l @(PTR_ce30e20,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
LAB_ce30d52:
    mov.w @(DAT_ce30e14,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30d94
    mov.w @(DAT_ce30e16,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce30d7a
    mov.w @(DAT_ce30e16,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce30e24,pc),r3
    mov 0x01,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30e28,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
LAB_ce30d7a:
    mov.w @(DAT_ce30e16,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x03,r0
    bf LAB_ce30d94
    mov.w @(DAT_ce30e16,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce30e28,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    mov 0x04,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
LAB_ce30d94:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce30d9a:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce30e14,pc),r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30dba
    cmp/eq 0x01,r0
    bt LAB_ce30dba
    cmp/eq 0x02,r0
    bt LAB_ce30dca
    bra LAB_ce30e98
    nop
LAB_ce30dba:
    mov.l @(PTR_ce30e1c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e98
    bra LAB_ce30dd6
    nop
LAB_ce30dca:
    mov.l @(PTR_ce30e1c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30de0
LAB_ce30dd6:
    mov.l @(PTR_ce30e20,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce30e98
    nop
LAB_ce30de0:
    mov.w @(DAT_ce30e18,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30e98
    mov.w @(DAT_ce30e16,pc),r0
    mov 0x00,r4
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bt/s LAB_ce30e6c
    fldi0 fr4
    cmp/eq 0x02,r0
    bt LAB_ce30e06
    cmp/eq 0x03,r0
    bt LAB_ce30e3a
    cmp/eq 0x04,r0
    bt LAB_ce30e6c
    bra LAB_ce30e7c
    nop
LAB_ce30e06:
    mov.w @(DAT_ce30e1a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30e2c
    fldi1 fr3
    bra LAB_ce30e30
    fadd fr3,fr3
DAT_ce30e14:
    #data 0x01e8
DAT_ce30e16:
    #data 0x0141
DAT_ce30e18:
    #data 0x0158
DAT_ce30e1a:
    #data 0x0130
    #align4

PTR_ce30e1c:
    #data loc_8c034dee
PTR_ce30e20:
    #data loc_8c051648
PTR_ce30e24:
    #data loc_8c0864b8
PTR_ce30e28:
    #data loc_8c0d586c
LAB_ce30e2c:
    mova @(DAT_ce30f3c,pc),r0
    fmov.s @r0,fr3
LAB_ce30e30:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30f32,pc),r0
    bra LAB_ce30e7c
    mov.b r4,@(r0,r14)
LAB_ce30e3a:
    mova @(DAT_ce30f40,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce30f34,pc),r0
    fmov.s fr3,@r15
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30e4e
    mova @(DAT_ce30f44,pc),r0
    bra LAB_ce30e52
    fmov.s @r0,fr3
LAB_ce30e4e:
    mova @(DAT_ce30f48,pc),r0
    fmov.s @r0,fr3
LAB_ce30e52:
    mov 0x5C,r0
    mov.l @(PTR_ce30f4c,pc),r3
    fmov fr3,@(r0,r14)
    mov r15,r5
    mov.w @(DAT_ce30f32,pc),r0
    fldi1 fr15
    mov.b r4,@(r0,r14)
    fmov fr15,fr5
    fmov fr15,fr4
    jsr @r3
    mov r14,r4
    bra LAB_ce30e7c
    nop
LAB_ce30e6c:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
LAB_ce30e7c:
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
LAB_ce30e98:
    add 0x0C,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14
LAB_ce30ea2:
    mov.w @(DAT_ce30f36,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30ebe
    cmp/eq 0x01,r0
    bt LAB_ce30ebe
    cmp/eq 0x02,r0
    bt LAB_ce30ebe
    bra LAB_ce30ed4
    nop
LAB_ce30ebe:
    mov.l @(PTR_ce30f50,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ed4
    lds.l @r15+,PR
    mov.l @(PTR_ce30f54,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
LAB_ce30ed4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce30eda:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30f58,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30f5c,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14
LAB_ce30ef0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30f60,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30f64,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30f38,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f12
    bsr FUN_ce30fec
    mov r14,r4
    bra LAB_ce30f16
    nop
LAB_ce30f12:
    bsr FUN_ce30f70
    mov r14,r4
LAB_ce30f16:
    mov.l @(PTR_ce30f68,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30f2c
    lds.l @r15+,PR
    mov.l @(PTR_ce30f6c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
LAB_ce30f2c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
DAT_ce30f32:
    #data 0x0141
DAT_ce30f34:
    #data 0x0130
DAT_ce30f36:
    #data 0x01e8
DAT_ce30f38:
    #data 0x01fe
    #align4

DAT_ce30f3c:
    #data 0xc0000000
DAT_ce30f40:
    #data 0x42500000
DAT_ce30f44:
    #data 0x3ecccccd
DAT_ce30f48:
    #data 0xbecccccd
PTR_ce30f4c:
    #data loc_8c0fd7fe
PTR_ce30f50:
    #data loc_8c034dee
PTR_ce30f54:
    #data loc_8c051648
PTR_ce30f58:
    #data loc_8c050084
PTR_ce30f5c:
    #data loc_8c04ff88
PTR_ce30f60:
    #data loc_8c04fea8
PTR_ce30f64:
    #data loc_8c050048
PTR_ce30f68:
    #data loc_8c052ce2
PTR_ce30f6c:
    #data loc_8c052dac
FUN_ce30f70:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31014,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f8a
    lds.l @r15+,PR
    mov.l @(PTR_ce31018,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
LAB_ce30f8a:
    mov.w @(DAT_ce3100e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30fe6
    mov.w @(DAT_ce31010,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce30fcc
    mov.w @(DAT_ce31010,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce3101c,pc),r3
    mov 0x02,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31020,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31024,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31028,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
LAB_ce30fcc:
    mov.w @(DAT_ce31010,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x03,r0
    bf LAB_ce30fe6
    mov.w @(DAT_ce31010,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce31020,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    mov 0x05,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
LAB_ce30fe6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
FUN_ce30fec:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31014,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31006
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31018,pc),r3
    jmp @r3
    lds.l @r15+,PR
LAB_ce31006:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
DAT_ce3100e:
    #data 0x01e8
DAT_ce31010:
    #data 0x0141
    #align4

PTR_ce31014:
    #data loc_8c034dee
PTR_ce31018:
    #data loc_8c05176e
PTR_ce3101c:
    #data loc_8c0864b8
PTR_ce31020:
    #data loc_8c0d586c
DAT_ce31024:
    #data 0x41055555
DAT_ce31028:
    #data 0xbfc80000
LAB_ce3102c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31092
    mov.l @(PTR_ce3115c,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31150,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31064
    mov 0x00,r13
    mov.w @(DAT_ce31152,pc),r0
    mov 0x35,r1
    mov.l @(PTR_ce31160,pc),r3
    mov 0x14,r5
    mov.b r1,@(r0,r14)
    add 0x58,r0
    mov.b r13,@(r0,r14)
    mov 0x05,r6
    jsr @r3
    mov r14,r4
LAB_ce31064:
    mov.w @(DAT_ce31154,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31164,pc),r3
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
    mov.l @(PTR_ce31168,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3116c,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
LAB_ce31092:
    mov.w @(DAT_ce31156,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce310a2
    mov.l @(PTR_ce31170,pc),r2
    jsr @r2
    mov r14,r4
LAB_ce310a2:
    mov 0x5C,r1
    mov.l @(PTR_ce31174,pc),r3
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
    mov.l @(PTR_ce31178,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310f8
    lds.l @r15+,PR
    mov.l @(PTR_ce3117c,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14
LAB_ce310f8:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
LAB_ce31100:
    mov r4,r3
    mov.l @(PTR_ce31180,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
LAB_ce31112:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31178,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31158,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce311b6
    mov.l @(PTR_ce31184,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3115a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3118c
    mova @(DAT_ce31188,pc),r0
    bra LAB_ce31190
    fmov.s @r0,fr3
DAT_ce31150:
    #data 0x01fe
DAT_ce31152:
    #data 0x01a1
DAT_ce31154:
    #data 0x01ac
DAT_ce31156:
    #data 0x01ff
DAT_ce31158:
    #data 0x0141
DAT_ce3115a:
    #data 0x01d2
    #align4

PTR_ce3115c:
    #data loc_8c052b4c
PTR_ce31160:
    #data loc_8c034e8c
PTR_ce31164:
    #data loc_8c2896b0
PTR_ce31168:
    #data loc_8c04223a
PTR_ce3116c:
    #data loc_8c056de4
PTR_ce31170:
    #data loc_8c0511e2
PTR_ce31174:
    #data loc_8c052c84
PTR_ce31178:
    #data loc_8c034dee
PTR_ce3117c:
    #data loc_8c051648
PTR_ce31180:
    #data PTR_ce336bc
PTR_ce31184:
    #data loc_8c105082
DAT_ce31188:
    #data 0x4192aaaa
LAB_ce3118c:
    mova @(DAT_ce312d4,pc),r0
    fmov.s @r0,fr3
LAB_ce31190:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce312ce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311a2
    mova @(DAT_ce312d8,pc),r0
    bra LAB_ce311a6
    fmov.s @r0,fr3
LAB_ce311a2:
    mova @(DAT_ce312dc,pc),r0
    fmov.s @r0,fr3
LAB_ce311a6:
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x0C,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    bra LAB_ce311bc
    mov.l @r15+,r14
LAB_ce311b6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce311bc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce312e0,pc),r3
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt LAB_ce311fa
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
LAB_ce311fa:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31222
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce312d0,pc),r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce312e4,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14
LAB_ce31222:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce31228:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    fmov.s fr15,@-r15
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt/s LAB_ce31264
    fldi0 fr15
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
LAB_ce31264:
    mov.l @(PTR_ce312e0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31284
    mov 0x5C,r0
    mov.l @(PTR_ce312e8,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14
LAB_ce31284:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14
LAB_ce3128c:
    mov r4,r3
    mov.l @(PTR_ce312ec,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
LAB_ce3129e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce312e0,pc),r3
    jsr @r3
    mov r4,r14
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
    mov.w @(DAT_ce312ce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce312f4
    mova @(DAT_ce312f0,pc),r0
    bra LAB_ce312f8
    fmov.s @r0,fr3
DAT_ce312ce:
    #data 0x01d2
DAT_ce312d0:
    #data 0x0158
    #align4

DAT_ce312d4:
    #data 0xc192aaaa
DAT_ce312d8:
    #data 0xbf200000
DAT_ce312dc:
    #data 0x3f200000
PTR_ce312e0:
    #data loc_8c034dee
PTR_ce312e4:
    #data loc_8c034e8c
PTR_ce312e8:
    #data loc_8c051648
PTR_ce312ec:
    #data PTR_ce336c8
DAT_ce312f0:
    #data 0xc112aaaa
LAB_ce312f4:
    mova @(DAT_ce31454,pc),r0
    fmov.s @r0,fr3
LAB_ce312f8:
    mov 0x5C,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov.l @r15+,r14
LAB_ce31306:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31458,pc),r3
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
    bf LAB_ce31386
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3144e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31368
    mova @(DAT_ce3145c,pc),r0
    bra LAB_ce3136c
    fmov.s @r0,fr3
LAB_ce31368:
    mova @(DAT_ce31460,pc),r0
    fmov.s @r0,fr3
LAB_ce3136c:
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x03,r3
    mov.w @(DAT_ce31450,pc),r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce31464,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14
LAB_ce31386:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce3138c:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31458,pc),r3
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
    bt LAB_ce313f2
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31468,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
LAB_ce313f2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce313f8:
    mov r4,r3
    mov.l @(PTR_ce3146c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
LAB_ce3140a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31470,pc),r3
    add 0x01,r0
    jsr @r3
    mov.b r0,@(0x6,r14)
    mov.b r0,@(0x7,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    and 0x01,r0
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    mov.l @r15+,r14
LAB_ce31428:
    mov r4,r3
    mov.l @(PTR_ce31474,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
LAB_ce3143a:
    mov 0x20,r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31478,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
DAT_ce3144e:
    #data 0x01d2
DAT_ce31450:
    #data 0x0158
    #align4

DAT_ce31454:
    #data 0x4112aaaa
PTR_ce31458:
    #data loc_8c034dee
DAT_ce3145c:
    #data 0x3e555555
DAT_ce31460:
    #data 0xbe555555
PTR_ce31464:
    #data loc_8c034e8c
PTR_ce31468:
    #data loc_8c051648
PTR_ce3146c:
    #data PTR_ce336d4
PTR_ce31470:
    #data loc_8c03319e
PTR_ce31474:
    #data PTR_ce336dc
PTR_ce31478:
    #data PTR_ce336e4
LAB_ce3147c:
    mov.l r14,@-r15
    mov 0x20,r0
    mov r4,r14
    mov 0x01,r2
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    mov 0x12,r5
    mov 0x00,r6
    add 0x01,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31576,pc),r0
    mov.l @(PTR_ce31580,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31584,pc),r2
    mov 0x0A,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
LAB_ce314a6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31588,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce314be
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)
LAB_ce314be:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
LAB_ce314c6:
    mov 0x20,r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce3158c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
LAB_ce314da:
    mov.l r14,@-r15
    mov 0x20,r0
    mov r4,r14
    mov 0x01,r2
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    mov 0x12,r5
    mov r2,r6
    add 0x01,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31576,pc),r0
    mov.l @(PTR_ce31580,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce31590,pc),r0
    mov.l @(DAT_ce31594,pc),r1
    fmov.s @r0,fr3
    mov 0x02,r3
    mov.w @(DAT_ce31578,pc),r0
    mov 0x04,r5
    lds r1,FPUL
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce3157a,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31598,pc),r3
    jmp @r3
    mov.l @r15+,r14
LAB_ce31520:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31588,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3157c,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce3155a
    mov 0x20,r0
    fldi1 fr3
    mov.b @(r0,r14),r2
    fldi0 fr4
    add 0x01,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31578,pc),r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce3159c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
LAB_ce3155a:
    mov.w @(DAT_ce3157c,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x03,r0
    bf LAB_ce31570
    mov.l @(DAT_ce315a0,pc),r1
    mov.w @(DAT_ce31578,pc),r0
    lds r1,FPUL
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
LAB_ce31570:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
DAT_ce31576:
    #data 0x012c
DAT_ce31578:
    #data 0x0108
DAT_ce3157a:
    #data 0x01f9
DAT_ce3157c:
    #data 0x0141
    #align4

PTR_ce31580:
    #data loc_8c034e8c
PTR_ce31584:
    #data loc_8c042008
PTR_ce31588:
    #data loc_8c034dee
PTR_ce3158c:
    #data PTR_ce336ec
DAT_ce31590:
    #data 0x3e4ccccd
DAT_ce31594:
    #data 0x42c80000
PTR_ce31598:
    #data loc_8c0d4e00
DAT_ce3159c:
    #data 0xbf4db6db
DAT_ce315a0:
    #data 0x3c83126f
LAB_ce315a4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce316a8,pc),r3
    jsr @r3
    mov r4,r14
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
    mov.w @(DAT_ce316a2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31610
    mov 0x20,r0
    fldi0 fr4
    mov.b @(r0,r14),r2
    mov 0x01,r5
    mov.l @(PTR_ce316ac,pc),r3
    mov 0x03,r6
    add 0x01,r2
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce316a2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @(PTR_ce316b0,pc),r2
    mov 0x00,r5
    add 0x34,r4
    jmp @r2
    mov.l @r15+,r14
LAB_ce31610:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce31616:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce316a8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31652
    mov.b @(0x5,r14),r0
    mov 0x00,r3
    fldi1 fr3
    add 0x01,r0
    fldi0 fr4
    mov.b r0,@(0x5,r14)
    mov.w @(DAT_ce316a4,pc),r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce316a2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce316a6,pc),r0
    mov.b r3,@(r0,r14)
LAB_ce31652:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce31658:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce316b4,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31670
    lds.l @r15+,PR
    mov.l @(PTR_ce316b8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
LAB_ce31670:
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3167c
    bsr FUN_ce31830
    mov r14,r4
LAB_ce3167c:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce316bc,pc),r0
    extu.b r2,r2
    lds.l @r15+,PR
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14
LAB_ce31690:
    mov r4,r3
    mov.l @(PTR_ce316c0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
DAT_ce316a2:
    #data 0x041c
DAT_ce316a4:
    #data 0x0108
DAT_ce316a6:
    #data 0x01f9
    #align4

PTR_ce316a8:
    #data loc_8c034dee
PTR_ce316ac:
    #data loc_8c034e8c
PTR_ce316b0:
    #data loc_8c0fd6b0
PTR_ce316b4:
    #data loc_8c046c8a
PTR_ce316b8:
    #data loc_8c051648
PTR_ce316bc:
    #data PTR_ce336fc
PTR_ce316c0:
    #data PTR_ce33728
LAB_ce316c4:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov 0x00,r3
    mov r3,r2
    mov 0x13,r5
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov r2,r6
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
    mov.w @(DAT_ce3180e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31810,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFD,r0
    mov.l @(PTR_ce31814,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14
LAB_ce31706:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31818,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce3171e
    lds.l @r15+,PR
    mov.l @(PTR_ce3181c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
LAB_ce3171e:
    mov.l @(PTR_ce31820,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31812,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3173c
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x10,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce31824,pc),r3
    jmp @r3
    mov.l @r15+,r14
LAB_ce3173c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce31742:
    mov r4,r3
    mov.l @(PTR_ce31828,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
LAB_ce31754:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce31814,pc),r3
    mov 0x01,r6
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
    mov.w @(DAT_ce3180e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31810,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14
LAB_ce31794:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31818,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce317ac
    lds.l @r15+,PR
    mov.l @(PTR_ce3181c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
LAB_ce317ac:
    lds.l @r15+,PR
    mov.l @(PTR_ce31820,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
LAB_ce317b6:
    mov r4,r3
    mov.l @(PTR_ce3182c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
LAB_ce317c8:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov 0x13,r5
    mov.l @(PTR_ce31814,pc),r3
    mov 0x02,r6
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
    mov.w @(DAT_ce3180e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31810,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14
LAB_ce31808:
    mov.l @(PTR_ce31820,pc),r3
    jmp @r3
    nop
DAT_ce3180e:
    #data 0x041c
DAT_ce31810:
    #data 0x01fc
DAT_ce31812:
    #data 0x0141
    #align4

PTR_ce31814:
    #data loc_8c034e8c
PTR_ce31818:
    #data loc_8c046c8a
PTR_ce3181c:
    #data loc_8c051648
PTR_ce31820:
    #data loc_8c034dee
PTR_ce31824:
    #data loc_8c042008
PTR_ce31828:
    #data PTR_ce33730
PTR_ce3182c:
    #data PTR_ce33738
FUN_ce31830:
    mov.w @(DAT_ce3193c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3193e,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce31890
    mov.w @(DAT_ce31940,pc),r0
    mov.w @(DAT_ce31942,pc),r1
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r1,r3
    bt LAB_ce31852
    bra LAB_ce3189e
    mov 0x05,r3
LAB_ce31852:
    mov.w @(DAT_ce31944,pc),r2
    tst r2,r3
    bt LAB_ce3185c
    bra LAB_ce3189e
    mov 0x06,r3
LAB_ce3185c:
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x80,r0
    bt LAB_ce31868
    bra LAB_ce31882
    mov 0x07,r1
LAB_ce31868:
    mov.w @(DAT_ce31940,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x40,r0
    bt LAB_ce31876
    bra LAB_ce31882
    mov 0x08,r1
LAB_ce31876:
    mov.w @(DAT_ce31940,pc),r0
    mov.w @(r0,r14),r0
    extu.w r0,r0
    tst 0x20,r0
    bt LAB_ce31888
    mov 0x09,r1
LAB_ce31882:
    mov 0x20,r0
    bra LAB_ce318a2
    mov.b r1,@(r0,r14)
LAB_ce31888:
    mov 0x20,r0
    mov 0x0A,r3
    bra LAB_ce318a2
    mov.b r3,@(r0,r14)
LAB_ce31890:
    mov.l @(PTR_ce3194c,pc),r1
    jsr @r1
    nop
    mov.l @(PTR_ce31950,pc),r1
    and 0x0F,r0
    shll r0
    mov.b @(r0,r1),r3
LAB_ce3189e:
    mov 0x20,r0
    mov.b r3,@(r0,r14)
LAB_ce318a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce318a8:
    mov.w @(DAT_ce31946,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31954,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
FUN_ce318bc:
    mov.w @(DAT_ce31948,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce318e6
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.w @(DAT_ce31948,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    rts
    mov 0x01,r0
LAB_ce318e6:
    mov 0x00,r0
    rts
    nop
FUN_ce318ec:
    mov.w @(DAT_ce3194a,pc),r0
    mov 0x00,r3
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31958,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3195c,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31960,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
LAB_ce31922:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce32610
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31964,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14
DAT_ce3193c:
    #data 0x04dc
DAT_ce3193e:
    #data 0x03f0
DAT_ce31940:
    #data 0x0340
DAT_ce31942:
    #data 0x0200
DAT_ce31944:
    #data 0x0100
DAT_ce31946:
    #data 0x01e9
DAT_ce31948:
    #data 0x041c
DAT_ce3194a:
    #data 0x01f9
    #align4

PTR_ce3194c:
    #data loc_8c03319e
PTR_ce31950:
    #data DAT_ce33740
PTR_ce31954:
    #data PTR_ce33760
PTR_ce31958:
    #data loc_8c05218a
PTR_ce3195c:
    #data loc_8c035162
PTR_ce31960:
    #data loc_8c05115a
PTR_ce31964:
    #data PTR_ce33784
LAB_ce31968:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31a86,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce3199a
    mov 0x00,r13
    mov.w @(DAT_ce31a88,pc),r0
    mov 0x03,r2
    mov.l @(PTR_ce31a98,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31a9c,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    bra LAB_ce319a4
    mov 0x01,r5
LAB_ce3199a:
    bsr FUN_ce318ec
    mov r14,r4
    mov.w @(DAT_ce31a88,pc),r0
    mov 0x00,r5
    mov.b r13,@(r0,r14)
LAB_ce319a4:
    mov.l @(PTR_ce31aa0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31a88,pc),r0
    mov 0x16,r5
    mov.l @(PTR_ce31aa4,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31a8a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce319ce
    fldi0 fr4
    mov.w @(DAT_ce31a8e,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31a8c,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)
LAB_ce319ce:
    mov 0x5C,r0
    mov r14,r4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x39,r3
    mov.w @(DAT_ce31a90,pc),r0
    mov.l r13,@(r0,r14)
    mov.w @(DAT_ce31a92,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31aa8,pc),r3
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
    mov.l @r15+,r13
    mov.l @r15+,r14
LAB_ce31a0e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31a94,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    mov 0x5C,r1
    mov.w @(DAT_ce31a96,pc),r0
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
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    bsr FUN_ce318bc
    mov r14,r4
    mov.l @(PTR_ce31aac,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31ae2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31a86,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce31ab0
    mov r14,r4
    mov.w @(DAT_ce31a88,pc),r0
    mov 0x04,r2
    mov.b r2,@(r0,r14)
    bra LAB_ce31abe
    mov 0x01,r5
DAT_ce31a86:
    #data 0x01f9
DAT_ce31a88:
    #data 0x0158
DAT_ce31a8a:
    #data 0x0255
DAT_ce31a8c:
    #data 0x00ff
DAT_ce31a8e:
    #data 0x03f0
DAT_ce31a90:
    #data 0x02d8
DAT_ce31a92:
    #data 0x01a1
DAT_ce31a94:
    #data 0x03f8
DAT_ce31a96:
    #data 0x0328
    #align4

PTR_ce31a98:
    #data loc_8c05218a
PTR_ce31a9c:
    #data loc_8c035162
PTR_ce31aa0:
    #data loc_8c0d4372
PTR_ce31aa4:
    #data loc_8c034e8c
PTR_ce31aa8:
    #data loc_8c2896b0
PTR_ce31aac:
    #data loc_8c034dee
LAB_ce31ab0:
    mov.w @(DAT_ce31ba6,pc),r0
    mov 0x00,r3
    mov 0x01,r2
    mov r3,r5
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31ba8,pc),r0
    mov.b r2,@(r0,r14)
LAB_ce31abe:
    mov.l @(PTR_ce31bb4,pc),r3
    jsr @r3
    nop
    mov.w @(DAT_ce31ba8,pc),r0
    mov 0x16,r5
    mov.l @(PTR_ce31bb8,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31bbc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31baa,pc),r0
    mov.w r0,@(0x1e,r14)
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce31ae2:
    mov.w @(DAT_ce31bac,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce31b08
    mov.w @(DAT_ce31bac,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce31bc8,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mova @(DAT_ce31bc0,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31bc4,pc),r0
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
LAB_ce31b08:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce31b10:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31bcc,pc),r3
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
    bsr FUN_ce318bc
    mov r14,r4
    mov.w @(DAT_ce31bae,pc),r0
    mov 0x02,r4
    mov 0x05,r5
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31bb0,pc),r0
    mov.b r5,@(r0,r14)
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31ba0
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31ba6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31b8c
    mov.w @(DAT_ce31ba8,pc),r0
    mov.b r5,@(r0,r14)
    mova @(DAT_ce31bd0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    bra LAB_ce31b90
    fmov fr3,@(r0,r14)
LAB_ce31b8c:
    mov.w @(DAT_ce31ba8,pc),r0
    mov.b r4,@(r0,r14)
LAB_ce31b90:
    mov.w @(DAT_ce31ba8,pc),r0
    mov 0x16,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce31bb8,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14
LAB_ce31ba0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
DAT_ce31ba6:
    #data 0x01f9
DAT_ce31ba8:
    #data 0x0158
DAT_ce31baa:
    #data 0x0087
DAT_ce31bac:
    #data 0x0141
DAT_ce31bae:
    #data 0x03f8
DAT_ce31bb0:
    #data 0x0328
    #align4

PTR_ce31bb4:
    #data loc_8c0d4594
PTR_ce31bb8:
    #data loc_8c034e8c
PTR_ce31bbc:
    #data loc_8c0851f0
DAT_ce31bc0:
    #data 0xc2d00000
DAT_ce31bc4:
    #data 0x437f0000
PTR_ce31bc8:
    #data loc_8c050834
PTR_ce31bcc:
    #data loc_8c034dee
DAT_ce31bd0:
    #data 0xbf4db6db
LAB_ce31bd4:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31cf0,pc),r0
    mov 0x5C,r1
    mov.l r13,@-r15
    mov 0x00,r13
    add r14,r1
    sts.l PR,@-r15
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31cf2,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
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
    fadd fr3,fr2
    mov 0x6C,r1
    add r14,r1
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce31cf4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31c4a
    bsr FUN_ce318bc
    mov r14,r4
    mov.l @(PTR_ce31d08,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c64
    mov.l @(PTR_ce31d0c,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce31c60
    nop
LAB_ce31c4a:
    mov.l @(PTR_ce31d08,pc),r2
    jsr @r2
    mov r14,r4
    bsr FUN_ce318bc
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce31c64
    mov.l @(PTR_ce31d10,pc),r3
    jsr @r3
    mov r14,r4
LAB_ce31c60:
    mov.w @(DAT_ce31cf6,pc),r0
    mov.l r13,@(r0,r14)
LAB_ce31c64:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
LAB_ce31c6c:
    mov r4,r3
    mov.l @(PTR_ce31d14,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
LAB_ce31c7e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31d18,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce318ec
    mov r14,r4
    mov.l @(PTR_ce31d1c,pc),r3
    mov 0x16,r5
    mov 0x06,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31cf8,pc),r0
    mov 0x40,r2
    mov 0x00,r4
    mov.l @(PTR_ce31d20,pc),r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31cfa,pc),r0
    mov.w r4,@(r0,r14)
    mov.w @(DAT_ce31cfc,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31cfe,pc),r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31d00,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce31cde
    mov 0x17,r5
    mov.w @(DAT_ce31d04,pc),r0
    mov 0x10,r2
    mov.w @(DAT_ce31d02,pc),r1
    mov.b r1,@(r0,r14)
    add 0x01,r0
    mov.b r2,@(r0,r14)
LAB_ce31cde:
    mov.l @(PTR_ce31d24,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31d06,pc),r0
    mov 0x01,r2
    mov.l r2,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
DAT_ce31cf0:
    #data 0x03f9
DAT_ce31cf2:
    #data 0x0327
DAT_ce31cf4:
    #data 0x01f9
DAT_ce31cf6:
    #data 0x00d4
DAT_ce31cf8:
    #data 0x01a1
DAT_ce31cfa:
    #data 0x01ac
DAT_ce31cfc:
    #data 0x019e
DAT_ce31cfe:
    #data 0x01c4
DAT_ce31d00:
    #data 0x0255
DAT_ce31d02:
    #data 0x00ff
DAT_ce31d04:
    #data 0x03f0
DAT_ce31d06:
    #data 0x02cc
    #align4

PTR_ce31d08:
    #data loc_8c034dee
PTR_ce31d0c:
    #data loc_8c051648
PTR_ce31d10:
    #data loc_8c05176e
PTR_ce31d14:
    #data PTR_ce33794
PTR_ce31d18:
    #data loc_8c056de4
PTR_ce31d1c:
    #data loc_8c034e8c
PTR_ce31d20:
    #data loc_8c2896b0
PTR_ce31d24:
    #data loc_8c042008
LAB_ce31d28:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31df2,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31df4,pc),r0
    mov.l @(PTR_ce31e00,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31df6,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31d58
    mov.l @(PTR_ce31e04,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce31d58:
    mov.w @(DAT_ce31df8,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf/s LAB_ce31d6e
    mov 0x00,r4
    mov.w @(DAT_ce31dfa,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31df8,pc),r0
    mov.b r4,@(r0,r14)
LAB_ce31d6e:
    mov.w @(DAT_ce31df8,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce31db6
    mov.w @(DAT_ce31df8,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31dfc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31d88
    bra LAB_ce31d8a
    mov 0x02,r3
LAB_ce31d88:
    mov 0x00,r3
LAB_ce31d8a:
    mov.w @(DAT_ce31dfe,pc),r0
    mov r15,r5
    mov 0x01,r6
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31e08,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31e0c,pc),r0
    mov.l @(PTR_ce31e10,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31e14,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31e14,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4
LAB_ce31db6:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
FUN_ce31dbe:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31e00,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31dd8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31e04,pc),r3
    jmp @r3
    lds.l @r15+,PR
LAB_ce31dd8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
LAB_ce31de0:
    mov r4,r3
    mov.l @(PTR_ce31e18,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
DAT_ce31df2:
    #data 0x03f8
DAT_ce31df4:
    #data 0x0328
DAT_ce31df6:
    #data 0x02cc
DAT_ce31df8:
    #data 0x0141
DAT_ce31dfa:
    #data 0x03f0
DAT_ce31dfc:
    #data 0x0255
DAT_ce31dfe:
    #data 0x03f1
    #align4

PTR_ce31e00:
    #data loc_8c034dee
PTR_ce31e04:
    #data loc_8c051648
DAT_ce31e08:
    #data 0xc1855555
DAT_ce31e0c:
    #data 0x43520000
PTR_ce31e10:
    #data loc_8c050834
PTR_ce31e14:
    #data loc_8c0d4e00
PTR_ce31e18:
    #data PTR_ce337a0
LAB_ce31e1c:
    mov.l r14,@-r15
    mov 0x01,r0
    sts.l PR,@-r15
    mov r4,r14
    mov.b r0,@(0x6,r14)
    bsr FUN_ce318ec
    mov r14,r4
    mov.w @(DAT_ce31f20,pc),r0
    mov 0x32,r2
    mov 0x00,r4
    mov.l @(PTR_ce31f2c,pc),r3
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
    mov.l @(PTR_ce31f30,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31f34,pc),r3
    mov 0x15,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14
LAB_ce31e68:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31f38,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e92
    mov.l @(PTR_ce31f3c,pc),r3
    mov 0x03,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f34,pc),r3
    mov 0x02,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov 0x16,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14
LAB_ce31e92:
    mov.w @(DAT_ce31f22,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31eb4
    mov.l @(PTR_ce31f40,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce31eb4
    mov.l @(PTR_ce31f3c,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31eba
    mov.l @r15+,r14
LAB_ce31eb4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce31eba:
    add 0xFC,r15
    mov.w @(DAT_ce31f24,pc),r0
    mov.l @(r0,r4),r3
    mov.w @(DAT_ce31f26,pc),r0
    mov.l r3,@r15
    mov.w @(DAT_ce31f28,pc),r3
    mov.l @(r0,r4),r2
    add 0xEB,r0
    mov.b r3,@(r0,r2)
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce31f44,pc),r3
    jmp @r3
    mov.l @r15+,r5
LAB_ce31ed4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31f38,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31eee
    lds.l @r15+,PR
    mov.l @(PTR_ce31f48,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
LAB_ce31eee:
    mov.w @(DAT_ce31f2a,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce31f08
    mov.w @(DAT_ce31f2a,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce31f4c,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    mov 0x01,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
LAB_ce31f08:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce31f0e:
    mov r4,r3
    mov.l @(PTR_ce31f50,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
DAT_ce31f20:
    #data 0x01a1
DAT_ce31f22:
    #data 0x019e
DAT_ce31f24:
    #data 0x01b0
DAT_ce31f26:
    #data 0x020c
DAT_ce31f28:
    #data 0x00c2
DAT_ce31f2a:
    #data 0x0141
    #align4

PTR_ce31f2c:
    #data loc_8c2896b0
PTR_ce31f30:
    #data loc_8c056de4
PTR_ce31f34:
    #data loc_8c034e8c
PTR_ce31f38:
    #data loc_8c034dee
PTR_ce31f3c:
    #data loc_8c042008
PTR_ce31f40:
    #data loc_8c05264c
PTR_ce31f44:
    #data loc_8c0522e0
PTR_ce31f48:
    #data loc_8c051648
PTR_ce31f4c:
    #data loc_8c0d491c
PTR_ce31f50:
    #data PTR_ce337ac
LAB_ce31f54:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32082,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce31f72
    mov.l @(PTR_ce3208c,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
LAB_ce31f72:
    bsr FUN_ce318ec
    mov r14,r4
    mov.l @(PTR_ce32090,pc),r2
    mov 0x15,r5
    mov 0x0A,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32094,pc),r3
    mov 0x15,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32084,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce31f9a
    mov 0x00,r4
    mov.w @(DAT_ce32086,pc),r0
    mov 0x3D,r3
    bra LAB_ce31fa0
    mov.b r3,@(r0,r14)
LAB_ce31f9a:
    mov.w @(DAT_ce32086,pc),r0
    mov 0x3B,r2
    mov.b r2,@(r0,r14)
LAB_ce31fa0:
    mov.w @(DAT_ce32088,pc),r0
    mov.l @(PTR_ce32098,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
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
    mov.l @r15+,r14
LAB_ce31fc4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov 0x00,r13
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce320a0,pc),r11
    mov.l @(PTR_ce320a4,pc),r3
    mov.l @(PTR_ce3209c,pc),r12
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce320d0
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce320a8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3208a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32002
    mov.w @(DAT_ce32084,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    shll2 r0
    bra LAB_ce32010
    fmov.s @(r0,r12),fr3
LAB_ce32002:
    mov.w @(DAT_ce32084,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    shll2 r0
    fmov.s @(r0,r12),fr3
    fneg fr3
LAB_ce32010:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32084,pc),r0
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    shll r3
    shll2 r3
    add r3,r12
    fmov.s @(r0,r12),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3208a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3203e
    mov.w @(DAT_ce32084,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    shll2 r0
    bra LAB_ce3204c
    fmov.s @(r0,r11),fr3
LAB_ce3203e:
    mov.w @(DAT_ce32084,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    shll2 r0
    fmov.s @(r0,r11),fr3
    fneg fr3
LAB_ce3204c:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x15,r5
    mov.w @(DAT_ce32084,pc),r0
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    shll r3
    shll2 r3
    add r3,r11
    mov.l @(PTR_ce32090,pc),r3
    fmov.s @(r0,r11),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32084,pc),r0
    mov.b @(r0,r14),r6
    add 0x0B,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32084,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce320ac
    mov.w @(DAT_ce32086,pc),r0
    mov 0x4A,r3
    bra LAB_ce320b2
    mov.b r3,@(r0,r14)
DAT_ce32082:
    #data 0x0255
DAT_ce32084:
    #data 0x01a3
DAT_ce32086:
    #data 0x01a1
DAT_ce32088:
    #data 0x01ac
DAT_ce3208a:
    #data 0x0130
    #align4

PTR_ce3208c:
    #data loc_8c056de4
PTR_ce32090:
    #data loc_8c034e8c
PTR_ce32094:
    #data loc_8c042008
PTR_ce32098:
    #data loc_8c2896b0
PTR_ce3209c:
    #data DAT_ce33514
PTR_ce320a0:
    #data DAT_ce33524
PTR_ce320a4:
    #data loc_8c034dee
PTR_ce320a8:
    #data loc_8c053082
LAB_ce320ac:
    mov.w @(DAT_ce321ac,pc),r0
    mov 0x49,r2
    mov.b r2,@(r0,r14)
LAB_ce320b2:
    mov.w @(DAT_ce321ae,pc),r0
    mov.l @(PTR_ce321b8,pc),r3
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
LAB_ce320d0:
    mov.w @(DAT_ce321b0,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x01,r0
    bf LAB_ce32118
    mov.w @(DAT_ce321b0,pc),r2
    add r14,r2
    mov r13,r0
    nop
    mov.b r0,@(0x1,r2)
    mov.w @(DAT_ce321b2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce320f4
    mov.w @(DAT_ce321ac,pc),r0
    mov 0x3D,r3
    bra LAB_ce320fa
    mov.b r3,@(r0,r14)
LAB_ce320f4:
    mov.w @(DAT_ce321ac,pc),r0
    mov 0x3B,r2
    mov.b r2,@(r0,r14)
LAB_ce320fa:
    mov.w @(DAT_ce321ae,pc),r0
    mov.l @(PTR_ce321b8,pc),r3
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
LAB_ce32118:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
LAB_ce32124:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce321bc,pc),r3
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
    mov.w @(DAT_ce321b4,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x03,r0
    bf LAB_ce3217c
    mov.w @(DAT_ce321b4,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce321c0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
LAB_ce3217c:
    mova @(DAT_ce321c4,pc),r0
    fldi0 fr1
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bf LAB_ce321a6
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce321c8,pc),r3
    mov 0x0D,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
LAB_ce321a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
DAT_ce321ac:
    #data 0x01a1
DAT_ce321ae:
    #data 0x01ac
DAT_ce321b0:
    #data 0x0150
DAT_ce321b2:
    #data 0x01a3
DAT_ce321b4:
    #data 0x0141
    #align4

PTR_ce321b8:
    #data loc_8c2896b0
PTR_ce321bc:
    #data loc_8c034dee
PTR_ce321c0:
    #data loc_8c084e7c
DAT_ce321c4:
    #data 0xc1000000
PTR_ce321c8:
    #data loc_8c034e8c
LAB_ce321cc:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32308,pc),r3
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
    bt LAB_ce3222e
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3230c,pc),r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32302,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    add 0x0E,r6
    jmp @r3
    mov.l @r15+,r14
LAB_ce3222e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce32234:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32308,pc),r3
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
    mov.w @(DAT_ce32304,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce322c0
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32306,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32304,pc),r0
    mov.l @(PTR_ce32310,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
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
    mov r14,r4
    mov.w @(DAT_ce32302,pc),r0
    mov 0x15,r5
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce3230c,pc),r3
    add 0x10,r6
    jmp @r3
    mov.l @r15+,r14
LAB_ce322c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
FUN_ce322c6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32308,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce322e0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32314,pc),r3
    jmp @r3
    lds.l @r15+,PR
LAB_ce322e0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
LAB_ce322e8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce32610
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32318,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14
DAT_ce32302:
    #data 0x01a3
DAT_ce32304:
    #data 0x041c
DAT_ce32306:
    #data 0x01f9
    #align4

PTR_ce32308:
    #data loc_8c034dee
PTR_ce3230c:
    #data loc_8c034e8c
PTR_ce32310:
    #data loc_8c0511b4
PTR_ce32314:
    #data loc_8c051648
PTR_ce32318:
    #data PTR_ce337c4
LAB_ce3231c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce323d0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce3233c
    mov.l @(PTR_ce323d8,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
LAB_ce3233c:
    mov.w @(DAT_ce323d2,pc),r0
    mov.l @(PTR_ce323dc,pc),r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3236e
    mov.l @(PTR_ce323e0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce323e4,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce323d4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32364
    mov 0x15,r5
    bra LAB_ce32366
    mov 0x07,r6
LAB_ce32364:
    mov 0x06,r6
LAB_ce32366:
    jsr @r13
    mov r14,r4
    bra LAB_ce32388
    mov 0x01,r5
LAB_ce3236e:
    bsr FUN_ce318ec
    mov r14,r4
    mov.w @(DAT_ce323d4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32380
    mov 0x15,r5
    bra LAB_ce32382
    mov 0x03,r6
LAB_ce32380:
    mov 0x02,r6
LAB_ce32382:
    jsr @r13
    mov r14,r4
    mov 0x00,r5
LAB_ce32388:
    mov.l @(PTR_ce323e8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(DAT_ce323ec,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce323f0,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce323f4,pc),r1
    fldi0 fr3
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
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce323d4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce323f8
    mov 0x00,r4
    mov.w @(DAT_ce323d6,pc),r0
    mov 0x45,r3
    bra LAB_ce323fe
    mov.b r3,@(r0,r14)
DAT_ce323d0:
    #data 0x0255
DAT_ce323d2:
    #data 0x01f9
DAT_ce323d4:
    #data 0x01a3
DAT_ce323d6:
    #data 0x01a1
    #align4

PTR_ce323d8:
    #data loc_8c056de4
PTR_ce323dc:
    #data loc_8c034e8c
PTR_ce323e0:
    #data loc_8c05218a
PTR_ce323e4:
    #data loc_8c035162
PTR_ce323e8:
    #data loc_8c0d41d0
DAT_ce323ec:
    #data 0x41800000
DAT_ce323f0:
    #data 0x41000000
DAT_ce323f4:
    #data 0x42800000
LAB_ce323f8:
    mov.w @(DAT_ce324d2,pc),r0
    mov 0x38,r2
    mov.b r2,@(r0,r14)
LAB_ce323fe:
    mov.w @(DAT_ce324d4,pc),r0
    mov.l @(PTR_ce324dc,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14
LAB_ce32424:
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
    bsr FUN_ce318bc
    mov r14,r4
    mov.l @(PTR_ce324e0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324cc
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce324d6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32498
    mov.l @(PTR_ce324e4,pc),r2
    mov 0x15,r5
    mov 0x08,r6
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce324e8,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4
    bra LAB_ce324aa
    nop
LAB_ce32498:
    mov.l @(PTR_ce324e4,pc),r3
    mov 0x15,r5
    mov 0x04,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce324e8,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
LAB_ce324aa:
    mov.l @(PTR_ce324ec,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce324d8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce324bc
    bra LAB_ce324be
    mov 0x28,r0
LAB_ce324bc:
    mov 0x0E,r0
LAB_ce324be:
    mov.w r0,@(0x1e,r14)
    mov 0x10,r2
    mov.w @(DAT_ce324da,pc),r0
    mov 0x00,r3
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)
LAB_ce324cc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
DAT_ce324d2:
    #data 0x01a1
DAT_ce324d4:
    #data 0x01ac
DAT_ce324d6:
    #data 0x01f9
DAT_ce324d8:
    #data 0x01a3
DAT_ce324da:
    #data 0x027a
    #align4

PTR_ce324dc:
    #data loc_8c2896b0
PTR_ce324e0:
    #data loc_8c034dee
PTR_ce324e4:
    #data loc_8c034e8c
PTR_ce324e8:
    #data loc_8c0d4038
PTR_ce324ec:
    #data loc_8c083758
LAB_ce324f0:
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
    bsr FUN_ce318bc
    mov r14,r4
    mov.l @(PTR_ce325fc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce3257a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce325f4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32564
    mov.w @(DAT_ce325f6,pc),r0
    mov 0x09,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce32600,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    bra LAB_ce3256a
    fmov fr3,@(r0,r14)
LAB_ce32564:
    mov.w @(DAT_ce325f6,pc),r0
    mov 0x05,r2
    mov.b r2,@(r0,r14)
LAB_ce3256a:
    mov.w @(DAT_ce325f6,pc),r0
    mov 0x15,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce32604,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14
LAB_ce3257a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce32580:
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
    bsr FUN_ce318bc
    mov r14,r4
    mov.l @(PTR_ce325fc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce325ee
    mov.w @(DAT_ce325f4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce325e2
    mov.l @(PTR_ce32608,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce325e8
    nop
LAB_ce325e2:
    mov.l @(PTR_ce3260c,pc),r2
    jsr @r2
    mov r14,r4
LAB_ce325e8:
    mov.w @(DAT_ce325f8,pc),r0
    mov 0x00,r3
    mov.l r3,@(r0,r14)
LAB_ce325ee:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
DAT_ce325f4:
    #data 0x01f9
DAT_ce325f6:
    #data 0x0158
DAT_ce325f8:
    #data 0x00d4
    #align4

PTR_ce325fc:
    #data loc_8c034dee
DAT_ce32600:
    #data 0xbf4db6db
PTR_ce32604:
    #data loc_8c034e8c
PTR_ce32608:
    #data loc_8c051648
PTR_ce3260c:
    #data loc_8c05176e
FUN_ce32610:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce326d6,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32626
    bra LAB_ce3273c
    nop
LAB_ce32626:
    mov.w @(DAT_ce326d8,pc),r0
    mov.l @(PTR_ce326e0,pc),r13
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32680
    mov 0x03,r12
    mov.w @(DAT_ce326da,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32654
    mov.w @(DAT_ce326dc,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32648
    mov.l @(r0,r14),r3
    add 0xFF,r3
    mov.l r3,@(r0,r14)
LAB_ce32648:
    mov.w @(DAT_ce326dc,pc),r4
    add r14,r4
    mov.l @r4,r0
    mov.b @(r0,r13),r3
    extu.b r3,r3
    mov.l r3,@(0x4,r4)
LAB_ce32654:
    mov.w @(DAT_ce326da,pc),r0
    mov.l @(PTR_ce326e4,pc),r3
    mov.l @(r0,r14),r2
    add 0xFF,r2
    jsr @r3
    mov.l r2,@(r0,r14)
    tst 0x07,r0
    bf LAB_ce3273c
    mov.w @(DAT_ce326dc,pc),r0
    mov.l @(r0,r14),r3
    cmp/ge r12,r3
    bt LAB_ce32672
    mov.l @(r0,r14),r1
    add 0x01,r1
    mov.l r1,@(r0,r14)
LAB_ce32672:
    mov.w @(DAT_ce326dc,pc),r4
    add r14,r4
    mov.l @r4,r0
    mov.b @(r0,r13),r3
    extu.b r3,r3
    bra LAB_ce3273c
    mov.l r3,@(0x4,r4)
LAB_ce32680:
    mov.l @(PTR_ce326e8,pc),r2
    mov.b @r2,r1
    tst r1,r1
    bt LAB_ce326ec
    mov.w @(DAT_ce326da,pc),r0
    mov.l @(r0,r14),r1
    tst r1,r1
    bf LAB_ce326aa
    mov.w @(DAT_ce326dc,pc),r0
    mov.l @(r0,r14),r1
    tst r1,r1
    bt LAB_ce3269e
    mov.l @(r0,r14),r1
    add 0xFF,r1
    mov.l r1,@(r0,r14)
LAB_ce3269e:
    mov.w @(DAT_ce326dc,pc),r4
    add r14,r4
    mov.l @r4,r0
    mov.b @(r0,r13),r3
    extu.b r3,r3
    mov.l r3,@(0x4,r4)
LAB_ce326aa:
    mov.w @(DAT_ce326da,pc),r0
    mov.l @(PTR_ce326e4,pc),r3
    mov.l @(r0,r14),r2
    add 0xFF,r2
    jsr @r3
    mov.l r2,@(r0,r14)
    tst 0x01,r0
    bt LAB_ce3273c
    mov.w @(DAT_ce326dc,pc),r0
    mov.l @(r0,r14),r3
    cmp/ge r12,r3
    bt LAB_ce326c8
    mov.l @(r0,r14),r1
    add 0x01,r1
    mov.l r1,@(r0,r14)
LAB_ce326c8:
    mov.w @(DAT_ce326dc,pc),r4
    add r14,r4
    mov.l @r4,r0
    mov.b @(r0,r13),r3
    extu.b r3,r3
    bra LAB_ce3273c
    mov.l r3,@(0x4,r4)
DAT_ce326d6:
    #data 0x0411
DAT_ce326d8:
    #data 0x0525
DAT_ce326da:
    #data 0x02a8
DAT_ce326dc:
    #data 0x02a4
    #align4

PTR_ce326e0:
    #data DAT_ce33534
PTR_ce326e4:
    #data loc_8c03319e
PTR_ce326e8:
    #data loc_8c289628
LAB_ce326ec:
    mov.w @(DAT_ce3279e,pc),r0
    mov.l @(r0,r14),r1
    tst r1,r1
    bf LAB_ce3270e
    mov.w @(DAT_ce327a0,pc),r0
    mov.l @(r0,r14),r1
    tst r1,r1
    bt LAB_ce32702
    mov.l @(r0,r14),r1
    add 0xFF,r1
    mov.l r1,@(r0,r14)
LAB_ce32702:
    mov.w @(DAT_ce327a0,pc),r4
    add r14,r4
    mov.l @r4,r0
    mov.b @(r0,r13),r3
    extu.b r3,r3
    mov.l r3,@(0x4,r4)
LAB_ce3270e:
    mov.w @(DAT_ce3279e,pc),r0
    mov.l @(r0,r14),r2
    add 0xFF,r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce327a2,pc),r0
    mov.w @(DAT_ce327a4,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce3273c
    mov.w @(DAT_ce327a0,pc),r0
    mov.l @(r0,r14),r3
    cmp/ge r12,r3
    bt LAB_ce32730
    mov.l @(r0,r14),r3
    add 0x01,r3
    mov.l r3,@(r0,r14)
LAB_ce32730:
    mov.w @(DAT_ce327a0,pc),r4
    add r14,r4
    mov.l @r4,r0
    mov.b @(r0,r13),r3
    extu.b r3,r3
    mov.l r3,@(0x4,r4)
LAB_ce3273c:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
LAB_ce32746:
    mov r4,r3
    mov.l @(PTR_ce327ac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
LAB_ce32758:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce327a6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bt LAB_ce32776
    mov.l @(PTR_ce327b0,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
LAB_ce32776:
    mov.l @(PTR_ce327b4,pc),r3
    mov 0x15,r5
    mov 0x12,r6
    jsr @r3
    mov r14,r4
    bsr FUN_ce318ec
    mov r14,r4
    mov.l @(PTR_ce327b8,pc),r3
    mov 0x03,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce327a8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce327bc
    mov 0x00,r4
    mov.w @(DAT_ce327aa,pc),r0
    mov 0x4B,r3
    bra LAB_ce327c2
    mov.b r3,@(r0,r14)
DAT_ce3279e:
    #data 0x02a8
DAT_ce327a0:
    #data 0x02a4
DAT_ce327a2:
    #data 0x0348
DAT_ce327a4:
    #data 0x0300
DAT_ce327a6:
    #data 0x0255
DAT_ce327a8:
    #data 0x01a3
DAT_ce327aa:
    #data 0x01a1
    #align4

PTR_ce327ac:
    #data PTR_ce337d4
PTR_ce327b0:
    #data loc_8c056de4
PTR_ce327b4:
    #data loc_8c034e8c
PTR_ce327b8:
    #data loc_8c042008
LAB_ce327bc:
    mov.w @(DAT_ce32894,pc),r0
    mov 0x33,r2
    mov.b r2,@(r0,r14)
LAB_ce327c2:
    mov.w @(DAT_ce32896,pc),r0
    mov.l @(PTR_ce328a0,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
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
    mov.l @r15+,r14
LAB_ce327e6:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce328a4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32898,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf/s LAB_ce32800
    mov 0x00,r13
    mov.w @(DAT_ce32898,pc),r0
    mov.b r13,@(r0,r14)
LAB_ce32800:
    mov.w @(DAT_ce32898,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x03,r0
    bf LAB_ce32814
    mov.w @(DAT_ce32898,pc),r0
    mov 0x00,r5
    mov.l @(PTR_ce328a8,pc),r3
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
LAB_ce32814:
    mov.w @(DAT_ce32898,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x04,r0
    bf LAB_ce3288c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32898,pc),r0
    mov.b r13,@(r0,r14)
    add 0x62,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32832
    bra LAB_ce32834
    mov 0x0C,r0
LAB_ce32832:
    mov 0x08,r0
LAB_ce32834:
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce3289a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32852
    mov.w @(DAT_ce3289c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3284c
    mova @(DAT_ce328ac,pc),r0
    bra LAB_ce32864
    fmov.s @r0,fr3
LAB_ce3284c:
    mova @(DAT_ce328b0,pc),r0
    bra LAB_ce32864
    fmov.s @r0,fr3
LAB_ce32852:
    mov.w @(DAT_ce3289c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32860
    mova @(DAT_ce328b4,pc),r0
    bra LAB_ce32864
    fmov.s @r0,fr3
LAB_ce32860:
    mova @(DAT_ce328b8,pc),r0
    fmov.s @r0,fr3
LAB_ce32864:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3289c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32876
    mova @(DAT_ce328bc,pc),r0
    bra LAB_ce3287a
    fmov.s @r0,fr3
LAB_ce32876:
    mova @(DAT_ce328c0,pc),r0
    fmov.s @r0,fr3
LAB_ce3287a:
    mov 0x68,r0
    mov.l @(PTR_ce328a8,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x01,r5
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14
LAB_ce3288c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
DAT_ce32894:
    #data 0x01a1
DAT_ce32896:
    #data 0x01ac
DAT_ce32898:
    #data 0x0141
DAT_ce3289a:
    #data 0x01a3
DAT_ce3289c:
    #data 0x0130
    #align4

PTR_ce328a0:
    #data loc_8c2896b0
PTR_ce328a4:
    #data loc_8c034dee
PTR_ce328a8:
    #data loc_8c0d5570
DAT_ce328ac:
    #data 0x41f00000
DAT_ce328b0:
    #data 0xc1f00000
DAT_ce328b4:
    #data 0x41d55555
DAT_ce328b8:
    #data 0xc1d55555
DAT_ce328bc:
    #data 0xbfa00000
DAT_ce328c0:
    #data 0x3fa00000
LAB_ce328c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce329e0,pc),r3
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt LAB_ce32902
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
LAB_ce32902:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce3292c
    mov.w @(DAT_ce329d8,pc),r0
    mov.l @(r0,r14),r2
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fmov.s @(r0,r2),fr3
    mova @(DAT_ce329e4,pc),r0
    fsub fr3,fr2
    fmov.s @r0,fr3
    fabs fr2
    fcmp/gt fr3,fr2
    bf LAB_ce3292c
    mov.w @(DAT_ce329da,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3297e
LAB_ce3292c:
    mov.w @(DAT_ce329dc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32942
    mov.l @(PTR_ce329e8,pc),r3
    mov 0x15,r5
    mov 0x14,r6
    jsr @r3
    mov r14,r4
    bra LAB_ce3294c
    nop
LAB_ce32942:
    mov.l @(PTR_ce329e8,pc),r2
    mov 0x15,r5
    mov 0x13,r6
    jsr @r2
    mov r14,r4
LAB_ce3294c:
    mov.w @(DAT_ce329de,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3295a
    mova @(DAT_ce329ec,pc),r0
    bra LAB_ce3295e
    fmov.s @r0,fr3
LAB_ce3295a:
    mova @(DAT_ce329f0,pc),r0
    fmov.s @r0,fr3
LAB_ce3295e:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce329de,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32970
    mova @(DAT_ce329f4,pc),r0
    bra LAB_ce32974
    fmov.s @r0,fr3
LAB_ce32970:
    mova @(DAT_ce329f8,pc),r0
    fmov.s @r0,fr3
LAB_ce32974:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
LAB_ce3297e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce32984:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    fmov.s fr15,@-r15
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
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt/s LAB_ce329c0
    fldi0 fr15
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
LAB_ce329c0:
    mov.l @(PTR_ce329e0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a00
    lds.l @r15+,PR
    mov.l @(PTR_ce329fc,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14
DAT_ce329d8:
    #data 0x020c
DAT_ce329da:
    #data 0x019e
DAT_ce329dc:
    #data 0x01a3
DAT_ce329de:
    #data 0x0130
    #align4

PTR_ce329e0:
    #data loc_8c034dee
DAT_ce329e4:
    #data 0x42b40000
PTR_ce329e8:
    #data loc_8c034e8c
DAT_ce329ec:
    #data 0x40800000
DAT_ce329f0:
    #data 0xc0800000
DAT_ce329f4:
    #data 0xbe4ccccd
DAT_ce329f8:
    #data 0x3e4ccccd
PTR_ce329fc:
    #data loc_8c051648
LAB_ce32a00:
    mov.w @(DAT_ce32adc,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bt/s LAB_ce32a16
    mov 0x00,r4
    cmp/eq 0x03,r0
    bt LAB_ce32a26
    cmp/eq 0x04,r0
    bt LAB_ce32a2c
    bra LAB_ce32a38
    nop
LAB_ce32a16:
    mov.w @(DAT_ce32adc,pc),r0
    mov.l @(PTR_ce32ae4,pc),r3
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14
LAB_ce32a26:
    mov.w @(DAT_ce32adc,pc),r0
    bra LAB_ce32a38
    mov.b r4,@(r0,r14)
LAB_ce32a2c:
    mov.w @(DAT_ce32adc,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
LAB_ce32a38:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14
LAB_ce32a40:
    mov r4,r3
    mov.l @(PTR_ce32ae8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
LAB_ce32a52:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce32aec,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32ade,pc),r0
    mov 0x37,r2
    mov 0x00,r4
    mov.l @(PTR_ce32af0,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
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
    mov.w @(DAT_ce32ae0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32b08
    mov.l @(PTR_ce32af4,pc),r1
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce32af8,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(DAT_ce32afc,pc),r1
    mov 0x01,r2
    mov.w @(DAT_ce32ae2,pc),r0
    lds r1,FPUL
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fdiv fr3,fr2
    mov.l @(DAT_ce32b00,pc),r1
    fldi0 fr3
    lds r1,FPUL
    mov.l @(DAT_ce32b04,pc),r1
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
    bra LAB_ce32b12
    fmov fr3,@(r0,r14)
DAT_ce32adc:
    #data 0x0141
DAT_ce32ade:
    #data 0x01a1
DAT_ce32ae0:
    #data 0x01f9
DAT_ce32ae2:
    #data 0x0158
    #align4

PTR_ce32ae4:
    #data loc_8c085ad4
PTR_ce32ae8:
    #data PTR_ce337e4
PTR_ce32aec:
    #data loc_8c056de4
PTR_ce32af0:
    #data loc_8c2896b0
PTR_ce32af4:
    #data loc_8c05218a
PTR_ce32af8:
    #data loc_8c035162
DAT_ce32afc:
    #data 0x41800000
DAT_ce32b00:
    #data 0x41000000
DAT_ce32b04:
    #data 0x42800000
LAB_ce32b08:
    mov.w @(DAT_ce32bec,pc),r0
    mov.l @(PTR_ce32bf8,pc),r2
    mov.b r4,@(r0,r14)
    jsr @r2
    mov r14,r4
LAB_ce32b12:
    mov.w @(DAT_ce32bec,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce32bfc,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32c00,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14
LAB_ce32b2c:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce32c04,pc),r3
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
    mov.l @(PTR_ce32c08,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32b9a
    mov.w @(DAT_ce32bee,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32b90
    lds.l @r15+,PR
    mov.l @(PTR_ce32c0c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
LAB_ce32b90:
    lds.l @r15+,PR
    mov.l @(PTR_ce32c10,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
LAB_ce32b9a:
    mov.w @(DAT_ce32bf0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32bd4
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce32bf2,pc),r0
    mov.l r3,@(r0,r14)
    add 0xFC,r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32bba
    mov r4,r5
    mov.w @(DAT_ce32bf2,pc),r0
    mov.l r4,@(r0,r14)
LAB_ce32bba:
    mov.w @(DAT_ce32bee,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce32bc8
    mov r14,r4
    mov 0x02,r5
LAB_ce32bc8:
    mov.l @(PTR_ce32c14,pc),r2
    jsr @r2
    nop
    mov.w @(DAT_ce32bf4,pc),r0
    mov 0x01,r3
    mov.l r3,@(r0,r14)
LAB_ce32bd4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce32bda:
    mov r4,r3
    mov.l @(PTR_ce32c18,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
DAT_ce32bec:
    #data 0x0158
DAT_ce32bee:
    #data 0x01f9
DAT_ce32bf0:
    #data 0x0141
DAT_ce32bf2:
    #data 0x02b4
DAT_ce32bf4:
    #data 0x02b8
    #align4

PTR_ce32bf8:
    #data FUN_ce318ec
PTR_ce32bfc:
    #data loc_8c034e8c
PTR_ce32c00:
    #data loc_8c042008
PTR_ce32c04:
    #data FUN_ce318bc
PTR_ce32c08:
    #data loc_8c034dee
PTR_ce32c0c:
    #data loc_8c051648
PTR_ce32c10:
    #data loc_8c05176e
PTR_ce32c14:
    #data loc_8c084290
PTR_ce32c18:
    #data PTR_ce337ec
LAB_ce32c1c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32d44,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
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
    mov.w @(DAT_ce32d38,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce32d48,pc),r3
    mov 0x02,r6
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32d3a,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFD,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14
LAB_ce32c62:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32d4c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32c86
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32d48,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
LAB_ce32c86:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce32c8c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    bsr FUN_ce32d0e
    mov r4,r14
    mov.l @(PTR_ce32d4c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32ce4
    mov.w @(DAT_ce32d3c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce32cc2
    mov 0x01,r13
    mov.l @(PTR_ce32d50,pc),r3
    jsr @r3
    nop
    tst r13,r0
    bt LAB_ce32cbc
    mov.w @(DAT_ce32d3e,pc),r0
    bra LAB_ce32cc2
    mov.l r13,@(r0,r14)
LAB_ce32cbc:
    mov.w @(DAT_ce32d3e,pc),r0
    mov 0x00,r2
    mov.l r2,@(r0,r14)
LAB_ce32cc2:
    mov.w @(DAT_ce32d3e,pc),r0
    mov.l @(r0,r14),r3
    cmp/ge r13,r3
    bf/s LAB_ce32cd0
    mov 0x14,r5
    bra LAB_ce32cd8
    mov 0x03,r6
LAB_ce32cd0:
    mov.b @(0x6,r14),r0
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
LAB_ce32cd8:
    mov.l @(PTR_ce32d48,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32d3e,pc),r0
    mov 0x00,r2
    mov.l r2,@(r0,r14)
LAB_ce32ce4:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
FUN_ce32cec:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32d4c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32d06
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32d54,pc),r3
    jmp @r3
    lds.l @r15+,PR
LAB_ce32d06:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
FUN_ce32d0e:
    mov.w @(DAT_ce32d40,pc),r0
    mov.l @(DAT_ce32d58,pc),r2
    mov.w @(r0,r4),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce32d22
    mov.w @(DAT_ce32d3e,pc),r0
    mov.l @(r0,r4),r3
    add 0x01,r3
    mov.l r3,@(r0,r4)
LAB_ce32d22:
    rts
    nop
LAB_ce32d26:
    mov r4,r3
    mov.l @(PTR_ce32d5c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
DAT_ce32d38:
    #data 0x041c
DAT_ce32d3a:
    #data 0x01fc
DAT_ce32d3c:
    #data 0x0525
DAT_ce32d3e:
    #data 0x02ac
DAT_ce32d40:
    #data 0x0348
    #align4

PTR_ce32d44:
    #data loc_8c05218a
PTR_ce32d48:
    #data loc_8c034e8c
PTR_ce32d4c:
    #data loc_8c034dee
PTR_ce32d50:
    #data loc_8c03319e
PTR_ce32d54:
    #data loc_8c051648
DAT_ce32d58:
    #data 0x00008000
PTR_ce32d5c:
    #data PTR_ce337fc
LAB_ce32d60:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32ea0,pc),r3
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
    mov.w @(DAT_ce32e8c,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32e8e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ea4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32e90,pc),r0
    mov 0x3F,r3
    mov 0x17,r6
    mov r14,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32ea8,pc),r3
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
    mov.l @(PTR_ce32eac,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14
LAB_ce32dce:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32eb0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32dee
    mov.l @(PTR_ce32eb4,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce32dee:
    mov.w @(DAT_ce32e92,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x0F,r0
    bf LAB_ce32e12
    mov.w @(DAT_ce32e92,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce32ec0,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mova @(DAT_ce32eb8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32ebc,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
LAB_ce32e12:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce32e1a:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32e8c,pc),r1
    mov.l @(PTR_ce32ec4,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15
LAB_ce32e32:
    mov.w @(DAT_ce32e94,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32e96,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32e80
    mov.w @(DAT_ce32e98,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32e80
    mov.w @(DAT_ce32e9a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32e80
    mov.l @(PTR_ce32ec8,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32e80
    mov r0,r4
    mov.w @(DAT_ce32e9c,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce32e80:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce32e88:
    rts
    mov 0x00,r0
DAT_ce32e8c:
    #data 0x01f9
DAT_ce32e8e:
    #data 0x041c
DAT_ce32e90:
    #data 0x01a1
DAT_ce32e92:
    #data 0x0141
DAT_ce32e94:
    #data 0x01fa
DAT_ce32e96:
    #data 0x0c00
DAT_ce32e98:
    #data 0x01fe
DAT_ce32e9a:
    #data 0x01a3
DAT_ce32e9c:
    #data 0x01f7
    #align4

PTR_ce32ea0:
    #data loc_8c05218a
PTR_ce32ea4:
    #data loc_8c05115a
PTR_ce32ea8:
    #data loc_8c2896b0
PTR_ce32eac:
    #data loc_8c034e8c
PTR_ce32eb0:
    #data loc_8c034dee
PTR_ce32eb4:
    #data loc_8c051648
DAT_ce32eb8:
    #data 0x41d55555
DAT_ce32ebc:
    #data 0x42ab6db6
PTR_ce32ec0:
    #data loc_8c050ea4
PTR_ce32ec4:
    #data PTR_ce33804
PTR_ce32ec8:
    #data loc_8c045790
LAB_ce32ecc:
    mov.w @(DAT_ce32fca,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32fcc,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32f26
    mov.w @(DAT_ce32fce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32f26
    mov.w @(DAT_ce32fd0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32f26
    mova @(DAT_ce32fe0,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32f26
    mov.l @(PTR_ce32fe4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32f26
    mov r0,r4
    mov.w @(DAT_ce32fd2,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce32f26:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
DAT_ce32f2e:
    #data 0x2f46
    #data 0x6043
    #data 0x0009
    #data 0x914d
    #data 0xd22c
    #data 0x001c
    #data 0x600c
    #data 0xc93f
    #data 0x4008
    #data 0x032e
    #data 0x432b
    #data 0x7f04
LAB_ce32f46:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32fca,pc),r0
    mov r4,r14
    mov.w @(DAT_ce32fd4,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce32f6c
    mov.w @(DAT_ce32fd6,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r1
    xor r3,r1
    mov.w r1,@(r0,r14)
    mov.w @(DAT_ce32fd8,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)
LAB_ce32f6c:
    mova @(DAT_ce32fec,pc),r0
    mov.l @(PTR_ce32ff4,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32ff0,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ff8,pc),r2
    mov 0x05,r6
    mov r6,r5
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
    mov 0x0A,r3
    mov.w @(DAT_ce32fda,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32ffc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32fdc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce32fba
    mov 0x0F,r5
    bra LAB_ce32fbc
    mov 0x03,r6
LAB_ce32fba:
    mov 0x00,r6
LAB_ce32fbc:
    mov.l @(PTR_ce33000,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
DAT_ce32fca:
    #data 0x01fa
DAT_ce32fcc:
    #data 0x1c00
DAT_ce32fce:
    #data 0x01fe
DAT_ce32fd0:
    #data 0x01a3
DAT_ce32fd2:
    #data 0x01f7
DAT_ce32fd4:
    #data 0x0800
DAT_ce32fd6:
    #data 0x0130
DAT_ce32fd8:
    #data 0x01d2
DAT_ce32fda:
    #data 0x01a0
DAT_ce32fdc:
    #data 0x01f9
    #align4

DAT_ce32fe0:
    #data 0x43092492
PTR_ce32fe4:
    #data loc_8c045790
PTR_ce32fe8:
    #data PTR_ce33814
DAT_ce32fec:
    #data 0xc2a6aaaa
DAT_ce32ff0:
    #data 0x4313db6d
PTR_ce32ff4:
    #data loc_8c103660
PTR_ce32ff8:
    #data loc_8c02fec4
PTR_ce32ffc:
    #data loc_8c056f2a
PTR_ce33000:
    #data loc_8c034e8c
LAB_ce33004:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mova @(DAT_ce33134,pc),r0
    mov.l @(PTR_ce3313c,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33138,pc),r0
    mov r4,r14
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33140,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33124,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x01,r6
    mov.l @(PTR_ce33144,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce33040:
    mov.w @(DAT_ce33126,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33148,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14
LAB_ce3305e:
    rts
    nop
LAB_ce33062:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3314c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33128,pc),r0
    fldi0 fr3
    mov.b @(r0,r14),r3
    extu.b r3,r3
    lds r3,FPUL
    float FPUL,fr4
    fcmp/eq fr3,fr4
    bt/s LAB_ce33094
    mov 0x00,r4
    mov.w @(DAT_ce3312a,pc),r0
    mov.w @(r0,r14),r1
    tst r1,r1
    bt/s LAB_ce3308a
    mov 0x34,r0
    fneg fr4
LAB_ce3308a:
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33128,pc),r0
    mov.b r4,@(r0,r14)
LAB_ce33094:
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce330e6
    mov.w @(DAT_ce3312c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3310c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3312c,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3312e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce330be
    mova @(DAT_ce33150,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
LAB_ce330be:
    mov.w @(DAT_ce33130,pc),r0
    mov 0x01,r3
    mov 0x20,r2
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov 0x00,r6
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov r6,r5
    mov.b r3,@(r0,r4)
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33154,pc),r3
    jmp @r3
    mov.l @r15+,r14
LAB_ce330e6:
    mov.w @(DAT_ce33132,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3310c
    mov.w @(DAT_ce3312e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce33102
    lds.l @r15+,PR
    mov.l @(PTR_ce33158,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
LAB_ce33102:
    lds.l @r15+,PR
    mov.l @(PTR_ce3315c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
LAB_ce3310c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
LAB_ce33112:
    mov r4,r3
    mov.l @(PTR_ce33160,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
DAT_ce33124:
    #data 0x01a0
DAT_ce33126:
    #data 0x01ea
DAT_ce33128:
    #data 0x014b
DAT_ce3312a:
    #data 0x0130
DAT_ce3312c:
    #data 0x0141
DAT_ce3312e:
    #data 0x01f9
DAT_ce33130:
    #data 0x01c8
DAT_ce33132:
    #data 0x0140
    #align4

DAT_ce33134:
    #data 0xc2f6aaaa
DAT_ce33138:
    #data 0x4322db6d
PTR_ce3313c:
    #data loc_8c103660
PTR_ce33140:
    #data loc_8c056f2a
PTR_ce33144:
    #data loc_8c034e8c
PTR_ce33148:
    #data PTR_ce33820
PTR_ce3314c:
    #data loc_8c034dee
DAT_ce33150:
    #data 0xbf4db6db
PTR_ce33154:
    #data loc_8c02fec4
PTR_ce33158:
    #data loc_8c05176e
PTR_ce3315c:
    #data loc_8c051648
PTR_ce33160:
    #data PTR_ce3382c
LAB_ce33164:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
LAB_ce3316a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce3328c,pc),r3
    mov r4,r14
    mov.w @(DAT_ce3327c,pc),r0
    jsr @r3
    mov.l @(r0,r14),r12
    mov.w @(DAT_ce3327e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x08,r0
    bt/s LAB_ce331b4
    mov 0x00,r13
    mov.w @(DAT_ce3327e,pc),r0
    mov 0x24,r2
    mov 0x03,r4
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce33280,pc),r0
    mov.l @(r0,r14),r3
    add 0xEC,r0
    mov.l r14,@(r0,r3)
    add 0x14,r0
    mov.l @(r0,r14),r3
    add 0xD9,r0
    mov.b r2,@(r0,r3)
    mov.w @(DAT_ce33282,pc),r0
    mov.l @(PTR_ce33290,pc),r3
    mov.b r4,@(r0,r12)
    add 0xFE,r0
    mov.b r4,@(r0,r12)
    jsr @r3
    mov r12,r4
    mov.l @(PTR_ce33294,pc),r2
    jsr @r2
    mov r14,r4
LAB_ce331b4:
    mov.w @(DAT_ce3327e,pc),r0
    mov.l @(PTR_ce33298,pc),r12
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce3320e
    mov.l @(PTR_ce3329c,pc),r3
    mov r14,r2
    mov r15,r1
    add 0x34,r2
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce33284,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce331d8
    mova @(DAT_ce332a0,pc),r0
    bra LAB_ce331dc
    fmov.s @r0,fr3
LAB_ce331d8:
    mova @(DAT_ce332a4,pc),r0
    fmov.s @r0,fr3
LAB_ce331dc:
    fmov.s @r15,fr2
    mova @(DAT_ce332a8,pc),r0
    mov 0x02,r5
    fadd fr3,fr2
    fmov.s fr2,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov.s @(r0,r15),fr2
    mov 0x04,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r15)
    jsr @r12
    mov r14,r4
    mov.l @(PTR_ce332ac,pc),r3
    mov r15,r5
    mov.w @(DAT_ce33286,pc),r7
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3327e,pc),r0
    mov.l @(PTR_ce332b0,pc),r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3327c,pc),r0
    jsr @r3
    mov.l @(r0,r14),r4
LAB_ce3320e:
    mov.w @(DAT_ce33288,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    cmp/eq 0x0F,r0
    bf LAB_ce3322c
    mov.w @(DAT_ce33288,pc),r2
    add r14,r2
    mov r13,r0
    nop
    mov.b r0,@(0x1,r2)
    mov 0x00,r5
    mov.w @(DAT_ce3327e,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
LAB_ce3322c:
    mov.w @(DAT_ce3327e,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x04,r0
    bf LAB_ce33244
    mov.w @(DAT_ce3327e,pc),r0
    mov 0x03,r5
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.l @(PTR_ce332b4,pc),r3
    jsr @r3
    mov r14,r4
LAB_ce33244:
    mov.w @(DAT_ce3327e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33270
    mov.l @(PTR_ce332b8,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3327e,pc),r0
    mov 0x00,r2
    mov 0x01,r3
    mov.b r2,@(r0,r14)
    mov 0x23,r2
    mov.w @(DAT_ce33280,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
LAB_ce33270:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
DAT_ce3327c:
    #data 0x020c
DAT_ce3327e:
    #data 0x0141
DAT_ce33280:
    #data 0x01c8
DAT_ce33282:
    #data 0x022a
DAT_ce33284:
    #data 0x0130
DAT_ce33286:
    #data 0x0091
DAT_ce33288:
    #data 0x0150
    #align4

PTR_ce3328c:
    #data loc_8c034dee
PTR_ce33290:
    #data loc_8c0ee570
PTR_ce33294:
    #data loc_8c05933c
PTR_ce33298:
    #data loc_8c0d491c
PTR_ce3329c:
    #data loc_8c1294c8
DAT_ce332a0:
    #data 0x430c0000
DAT_ce332a4:
    #data 0xc30c0000
DAT_ce332a8:
    #data 0x434c0000
PTR_ce332ac:
    #data loc_8c10235c
PTR_ce332b0:
    #data loc_8c107366
PTR_ce332b4:
    #data loc_8c051648
PTR_ce332b8:
    #data loc_8c02fec4
LAB_ce332bc:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce333ac,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce332d8
    cmp/eq 0x01,r0
    bt LAB_ce332d8
    cmp/eq 0x02,r0
    bf LAB_ce332dc
LAB_ce332d8:
    mov.w @(DAT_ce333ae,pc),r0
    mov.b r5,@(r0,r4)
LAB_ce332dc:
    mov.l @(PTR_ce333b4,pc),r2
    jmp @r2
    mov 0x1D,r5
LAB_ce332e2:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce333ac,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce332fe
    cmp/eq 0x01,r0
    bt LAB_ce332fe
    cmp/eq 0x02,r0
    bf LAB_ce33302
LAB_ce332fe:
    mov.w @(DAT_ce333ae,pc),r0
    mov.b r5,@(r0,r4)
LAB_ce33302:
    mov.l @(PTR_ce333b4,pc),r2
    jmp @r2
    mov 0x1D,r5
LAB_ce33308:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce333ac,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33328
    cmp/eq 0x01,r0
    bt LAB_ce33330
    cmp/eq 0x02,r0
    bt LAB_ce3333e
    bra LAB_ce33348
    nop
LAB_ce33328:
    mov.w @(DAT_ce333ae,pc),r0
    mov 0x04,r3
    bra LAB_ce33344
    mov.b r3,@(r0,r4)
LAB_ce33330:
    mov.w @(DAT_ce333ae,pc),r0
    mov 0x03,r2
    mov 0x01,r3
    mov.b r2,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce33348
    mov.b r3,@(r0,r4)
LAB_ce3333e:
    mov.w @(DAT_ce333ae,pc),r0
    mov 0x06,r1
    mov.b r1,@(r0,r4)
LAB_ce33344:
    mov.w @(DAT_ce333b0,pc),r0
    mov.b r5,@(r0,r4)
LAB_ce33348:
    mov.l @(PTR_ce333b4,pc),r2
    jmp @r2
    mov 0x15,r5
LAB_ce3334e:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce333ac,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce3336e
    cmp/eq 0x01,r0
    bt LAB_ce3337a
    cmp/eq 0x02,r0
    bt LAB_ce33382
    bra LAB_ce3338e
    nop
LAB_ce3336e:
    mov.w @(DAT_ce333ae,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce3338e
    mov.b r5,@(r0,r4)
LAB_ce3337a:
    mov.w @(DAT_ce333ae,pc),r0
    mov 0x03,r2
    bra LAB_ce33388
    mov.b r2,@(r0,r4)
LAB_ce33382:
    mov.w @(DAT_ce333ae,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r4)
LAB_ce33388:
    mov.w @(DAT_ce333b0,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)
LAB_ce3338e:
    mov.l @(PTR_ce333b4,pc),r2
    jmp @r2
    mov 0x15,r5
DAT_ce33394:
    #data 0x2f46
    #data 0x6043
    #data 0x0009
    #data 0x910a
    #data 0xd206
    #data 0x001c
    #data 0x600c
    #data 0xc93f
    #data 0x4008
    #data 0x032e
    #data 0x432b
    #data 0x7f04
DAT_ce333ac:
    #data 0x04c9
DAT_ce333ae:
    #data 0x01e9
DAT_ce333b0:
    #data 0x01a3
    #data 0x01f7
    #align4

PTR_ce333b4:
    #data loc_8c0530d8
PTR_ce333b8:
    #data PTR_ce33834
LAB_ce333bc:
    mov.w @(DAT_ce334dc,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce334e4,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15
LAB_ce333ca:
    mov r4,r3
    mov.l @(PTR_ce334e8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
LAB_ce333dc:
    mov.b @(0x6,r4),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce334de,pc),r0
    mov.b r3,@(r0,r4)
    mova @(DAT_ce334ec,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce334e0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce33400
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
LAB_ce33400:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce334f0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x34,r3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce334f4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r5
    fmov fr3,@(r0,r4)
    mov r5,r6
    mov.w @(DAT_ce334e2,pc),r0
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce334f8,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce334fc,pc),r2
    jmp @r2
    mov 0x14,r5
LAB_ce33444:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33500,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce33504,pc),r3
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
    bt LAB_ce334b4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33508,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce334fc,pc),r2
    mov 0x14,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3350c,pc),r3
    mov 0x0D,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
LAB_ce334b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
FUN_ce334ba:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33500,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce334d4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33510,pc),r3
    jmp @r3
    lds.l @r15+,PR
LAB_ce334d4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
DAT_ce334dc:
    #data 0x01c8
DAT_ce334de:
    #data 0x01f9
DAT_ce334e0:
    #data 0x01d2
DAT_ce334e2:
    #data 0x01a1
    #align4

PTR_ce334e4:
    #data loc_8c04cc1c
PTR_ce334e8:
    #data PTR_ce33840
DAT_ce334ec:
    #data 0x41f00000
DAT_ce334f0:
    #data 0x40892492
DAT_ce334f4:
    #data 0xbf4db6db
PTR_ce334f8:
    #data loc_8c2896b0
PTR_ce334fc:
    #data loc_8c034e8c
PTR_ce33500:
    #data loc_8c034dee
PTR_ce33504:
    #data loc_8c052ce2
PTR_ce33508:
    #data loc_8c0511b4
PTR_ce3350c:
    #data loc_8c042008
PTR_ce33510:
    #data loc_8c051854
DAT_ce33514:
    #data 0x5555
    #data 0x4155
DAT_ce33518:
    #data 0x6db6
    #data 0x41ab
    #data 0x0000
    #data 0x41a0
    #data 0x2492
    #data 0x4209
DAT_ce33524:
    #data 0xaaaa
    #data 0xbf3a
DAT_ce33528:
    #data 0xb6db
    #data 0xbfcd
    #data 0xaaaa
    #data 0xbf3a
    #data 0xb6db
    #data 0xbfcd
DAT_ce33534:
    #data 0x0a3c
    #data 0x0408
DAT_ce33538:
    #data 0x0003
    #data 0x8100
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33548:
    #data 0x0003
    #data 0x9100
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce33558:
    #data 0x0003
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce33568:
    #data 0x0003
    #data 0x0000
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
    #data 0x0002
    #data 0x000a
    #data 0x0004
    #data 0x0000
    #data 0x0300
    #data 0x0004
    #data 0x000a
    #data 0x0004
    #data 0x0000
    #data 0x0300
    #data 0x0006
    #data 0x000a
    #data 0x0004
    #data 0x0000
    #data 0x0300
DAT_ce33596:
    #data 0x0003
    #data 0x1000
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce335a6:
    #data 0x0003
    #data 0x0000
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce335b6:
    #data 0x0005
    #data 0x1000
    #data 0x0002
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce335ca:
    #data 0x0201
    #data 0x0201
DAT_ce335ce:
    #data 0x02ff
    #data 0x02ff
DAT_ce335d2:
    #data 0xffff
    #data 0xffff
DAT_ce335d6:
    #data 0x0201
    #data 0x0201
DAT_ce335da:
    #data 0x02ff
    #data 0x02ff
DAT_ce335de:
    #data 0xffff
    #data 0xffff
DAT_ce335e2:
    #data 0x0201
    #data 0x0201
DAT_ce335e6:
    #data 0x02ff
    #data 0x02ff
DAT_ce335ea:
    #data 0xffff
    #data 0xffff
DAT_ce335ee:
    #data 0x0201
    #data 0x0201
DAT_ce335f2:
    #data 0x02ff
    #data 0x02ff
DAT_ce335f6:
    #data 0xffff
    #data 0xffff
DAT_ce335fa:
    #data 0x0201
    #data 0x0200
DAT_ce335fe:
    #data 0x02ff
    #data 0x0201
DAT_ce33602:
    #data 0xffff
    #data 0x02ff
DAT_ce33606:
    #data 0x0201
    #data 0x0201
DAT_ce3360a:
    #data 0x02ff
    #data 0x02ff
DAT_ce3360e:
    #data 0xffff
    #data 0xffff
    #align4

PTR_ce33614:
    #data LAB_ce3051a
PTR_ce33618:
    #data LAB_ce3001c
PTR_ce3361c:
    #data LAB_ce30548
PTR_ce33620:
    #data LAB_ce30a86
PTR_ce33624:
    #data LAB_ce31100
PTR_ce33628:
    #data LAB_ce3128c
PTR_ce3362c:
    #data LAB_ce313f8
PTR_ce33630:
    #data LAB_ce31658
PTR_ce33634:
    #data LAB_ce318a8
PTR_ce33638:
    #data LAB_ce32e1a
PTR_ce3363c:
    #data DAT_ce32f2e
PTR_ce33640:
    #data LAB_ce33040
PTR_ce33644:
    #data DAT_ce33394
PTR_ce33648:
    #data FUN_ce3041c
PTR_ce3364c:
    #data LAB_ce333ca
PTR_ce33650:
    #data LAB_ce3102c
PTR_ce33654:
    #data LAB_ce332bc
PTR_ce33658:
    #data LAB_ce332e2
PTR_ce3365c:
    #data LAB_ce33308
PTR_ce33660:
    #data LAB_ce3334e
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce33684:
    #data LAB_ce30588
PTR_ce33688:
    #data LAB_ce30862
PTR_ce3368c:
    #data LAB_ce3088a
PTR_ce33690:
    #data LAB_ce30588
PTR_ce33694:
    #data LAB_ce30aa8
PTR_ce33698:
    #data LAB_ce30ef0
PTR_ce3369c:
    #data LAB_ce30eda
PTR_ce336a0:
    #data LAB_ce30a9a
PTR_ce336a4:
    #data LAB_ce30bb4
PTR_ce336a8:
    #data LAB_ce30bc8
PTR_ce336ac:
    #data LAB_ce30cc6
DAT_ce336b0:
    #data 0x0008
    #data 0x000f
    #data 0x0010
    #data 0x001f
    #data 0x0020
    #align4

PTR_ce336bc:
    #data LAB_ce31112
PTR_ce336c0:
    #data LAB_ce311bc
PTR_ce336c4:
    #data LAB_ce31228
PTR_ce336c8:
    #data LAB_ce3129e
PTR_ce336cc:
    #data LAB_ce31306
PTR_ce336d0:
    #data LAB_ce3138c
PTR_ce336d4:
    #data LAB_ce3140a
PTR_ce336d8:
    #data LAB_ce31428
PTR_ce336dc:
    #data LAB_ce3143a
PTR_ce336e0:
    #data LAB_ce314c6
PTR_ce336e4:
    #data LAB_ce3147c
PTR_ce336e8:
    #data LAB_ce314a6
PTR_ce336ec:
    #data LAB_ce314da
PTR_ce336f0:
    #data LAB_ce31520
PTR_ce336f4:
    #data LAB_ce315a4
PTR_ce336f8:
    #data LAB_ce31616
PTR_ce336fc:
    #data LAB_ce31742
PTR_ce33700:
    #data LAB_ce31690
PTR_ce33704:
    #data LAB_ce31690
PTR_ce33708:
    #data LAB_ce317b6
PTR_ce3370c:
    #data LAB_ce317b6
PTR_ce33710:
    #data LAB_ce31742
PTR_ce33714:
    #data LAB_ce31742
PTR_ce33718:
    #data LAB_ce31742
PTR_ce3371c:
    #data LAB_ce31690
PTR_ce33720:
    #data LAB_ce31690
PTR_ce33724:
    #data LAB_ce31690
PTR_ce33728:
    #data LAB_ce316c4
PTR_ce3372c:
    #data LAB_ce31706
PTR_ce33730:
    #data LAB_ce31754
PTR_ce33734:
    #data LAB_ce31794
PTR_ce33738:
    #data LAB_ce317c8
PTR_ce3373c:
    #data LAB_ce31808
DAT_ce33740:
    #data 0x0005
    #data 0x0005
    #data 0x0005
    #data 0x0006
    #data 0x0006
    #data 0x0006
    #data 0x0007
    #data 0x0007
    #data 0x0007
    #data 0x0008
    #data 0x0008
    #data 0x0008
    #data 0x0009
    #data 0x0009
    #data 0x0009
    #data 0x000a
    #align4

PTR_ce33760:
    #data LAB_ce31922
PTR_ce33764:
    #data LAB_ce31c6c
PTR_ce33768:
    #data LAB_ce31de0
PTR_ce3376c:
    #data LAB_ce31f0e
PTR_ce33770:
    #data LAB_ce322e8
PTR_ce33774:
    #data LAB_ce32746
PTR_ce33778:
    #data LAB_ce32a40
PTR_ce3377c:
    #data LAB_ce32bda
PTR_ce33780:
    #data LAB_ce32d26
PTR_ce33784:
    #data LAB_ce31968
PTR_ce33788:
    #data LAB_ce31a0e
PTR_ce3378c:
    #data LAB_ce31b10
PTR_ce33790:
    #data LAB_ce31bd4
PTR_ce33794:
    #data LAB_ce31c7e
PTR_ce33798:
    #data LAB_ce31d28
PTR_ce3379c:
    #data FUN_ce31dbe
PTR_ce337a0:
    #data LAB_ce31e1c
PTR_ce337a4:
    #data LAB_ce31e68
PTR_ce337a8:
    #data LAB_ce31ed4
PTR_ce337ac:
    #data LAB_ce31f54
PTR_ce337b0:
    #data LAB_ce31fc4
PTR_ce337b4:
    #data LAB_ce32124
PTR_ce337b8:
    #data LAB_ce321cc
PTR_ce337bc:
    #data LAB_ce32234
PTR_ce337c0:
    #data FUN_ce322c6
PTR_ce337c4:
    #data LAB_ce3231c
PTR_ce337c8:
    #data LAB_ce32424
PTR_ce337cc:
    #data LAB_ce324f0
PTR_ce337d0:
    #data LAB_ce32580
PTR_ce337d4:
    #data LAB_ce32758
PTR_ce337d8:
    #data LAB_ce327e6
PTR_ce337dc:
    #data LAB_ce328c4
PTR_ce337e0:
    #data LAB_ce32984
PTR_ce337e4:
    #data LAB_ce32a52
PTR_ce337e8:
    #data LAB_ce32b2c
PTR_ce337ec:
    #data LAB_ce32c1c
PTR_ce337f0:
    #data LAB_ce32c62
PTR_ce337f4:
    #data LAB_ce32c8c
PTR_ce337f8:
    #data FUN_ce32cec
PTR_ce337fc:
    #data LAB_ce32d60
PTR_ce33800:
    #data LAB_ce32dce
PTR_ce33804:
    #data LAB_ce32e32
PTR_ce33808:
    #data LAB_ce32e88
PTR_ce3380c:
    #data LAB_ce32ecc
PTR_ce33810:
    #data LAB_ce32e32
PTR_ce33814:
    #data LAB_ce32f46
PTR_ce33818:
    #data LAB_ce32f46
PTR_ce3381c:
    #data LAB_ce33004
PTR_ce33820:
    #data LAB_ce33062
PTR_ce33824:
    #data LAB_ce3305e
PTR_ce33828:
    #data LAB_ce33112
PTR_ce3382c:
    #data LAB_ce33164
PTR_ce33830:
    #data LAB_ce3316a
PTR_ce33834:
    #data LAB_ce333bc
PTR_ce33838:
    #data LAB_ce333bc
PTR_ce3383c:
    #data LAB_ce333bc
PTR_ce33840:
    #data LAB_ce333dc
PTR_ce33844:
    #data LAB_ce33444
PTR_ce33848:
    #data FUN_ce334ba
