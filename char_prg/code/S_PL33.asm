;╔══════════════════════════════════════════╗
;║ S_PL33 : Ironman (Anthony Stark) Program ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
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
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c055cf6 0x8C055CF6
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c0a7cc8 0x8C0A7CC8
#symbol loc_8c0a8348 0x8C0A8348
#symbol loc_8c0a8598 0x8C0A8598
#symbol loc_8c0a8b8c 0x8C0A8B8C
#symbol loc_8c0a8fa4 0x8C0A8FA4
#symbol loc_8c0a960c 0x8C0A960C
#symbol loc_8c0e8cf0 0x8C0E8CF0
#symbol loc_8c103660 0x8C103660
#symbol loc_8c2896b0 0x8C2896B0
    
;=============================================
    
BEG_ce30000:
    mov.w @(DAT_ce300b4,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300b8,pc),r7
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
    mov.l @(PTR_ce300bc,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    mov.l @(PTR_ce300c0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    mov.l @(PTR_ce300c4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    mov.l @(PTR_ce300c8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    bsr FUN_ce3029c
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    bsr FUN_ce30256
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    bsr FUN_ce300d8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    bsr FUN_ce3013e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    bsr FUN_ce30186
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    mov.l @(PTR_ce300cc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ae
    bsr FUN_ce302e2
    mov r14,r4
    tst r0,r0
    bf LAB_ce300ae
    bsr FUN_ce30344
    mov r14,r4
    tst r0,r0
    bf LAB_ce300ae
    mov.l @(PTR_ce300d0,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300d4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce300ae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce300b4:
    #data 0x0428
#align4
    
PTR_ce300b8:
    #data PTR_ce3303c
PTR_ce300bc:
    #data loc_8c054508
PTR_ce300c0:
    #data loc_8c054b34
PTR_ce300c4:
    #data loc_8c05496c
PTR_ce300c8:
    #data loc_8c054d04
PTR_ce300cc:
    #data loc_8c054184
PTR_ce300d0:
    #data loc_8c053e00
PTR_ce300d4:
    #data loc_8c0542e0
    
;=============================================
    
FUN_ce300d8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301f0,pc),r5
    mov.w @(DAT_ce301e0,pc),r6
    mov.l @(PTR_ce301f4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30108
    mov.w @(DAT_ce301e2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30116
    mov.w @(DAT_ce301e4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30116
    mov.w @(DAT_ce301e6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30110
    
LAB_ce30108:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
    
LAB_ce30110:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    
LAB_ce30116:
    mov.w @(DAT_ce301e0,pc),r5
    mov.l @(PTR_ce301f8,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301e8,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301fc,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;=============================================
    
FUN_ce3013e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30200,pc),r5
    mov.w @(DAT_ce301ea,pc),r6
    mov.l @(PTR_ce301f4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3015c
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
    
LAB_ce3015c:
    mov.w @(DAT_ce301ea,pc),r5
    mov.l @(PTR_ce301f8,pc),r3
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
    mov.w @(DAT_ce301e8,pc),r0
    mov.l @(PTR_ce301fc,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;=============================================
    
FUN_ce30186:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.w @(DAT_ce301ec,pc),r4
    add r14,r4
    mov.b @(0x2,r4),r0
    tst r0,r0
    bf LAB_ce301d6
    mov.w @(DAT_ce301ee,pc),r5
    mov 0x03,r7
    mov.l @(PTR_ce30204,pc),r2
    mov r15,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301d6
    mov.w @(DAT_ce301e2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce301ca
    mov.w @(DAT_ce301e4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce301ca
    mov.w @(DAT_ce301e6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce301d6
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)
    
LAB_ce301ca:
    mov.l @(PTR_ce30208,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3020c
    
LAB_ce301d6:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce301e0:
    #data 0x036c
DAT_ce301e2:
    #data 0x01f9
DAT_ce301e4:
    #data 0x01fc
DAT_ce301e6:
    #data 0x01d4
DAT_ce301e8:
    #data 0x01e9
DAT_ce301ea:
    #data 0x037c
DAT_ce301ec:
    #data 0x02a4
DAT_ce301ee:
    #data 0x0140
#align4
    
PTR_ce301f0:
    #data DAT_ce32ff8
PTR_ce301f4:
    #data loc_8c054e58
PTR_ce301f8:
    #data loc_8c055c3a
PTR_ce301fc:
    #data loc_8c0530d8
PTR_ce30200:
    #data DAT_ce33008
PTR_ce30204:
    #data loc_8c055cf6
PTR_ce30208:
    #data loc_8c0559da
    
;=============================================
    
LAB_ce3020c:
    mov.w @(DAT_ce3031c,pc),r0
    mov.w @(DAT_ce3031e,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce30222
    mov 0x00,r4
    mov.w @(DAT_ce30320,pc),r0
    mov 0x02,r3
    bra LAB_ce30234
    mov.b r3,@(r0,r14)
    
LAB_ce30222:
    mov.w @(DAT_ce30322,pc),r1
    tst r1,r3
    bt LAB_ce3022e
    mov.w @(DAT_ce30320,pc),r0
    bra LAB_ce30234
    mov.b r4,@(r0,r14)
    
LAB_ce3022e:
    mov.w @(DAT_ce30320,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    
LAB_ce30234:
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30324,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3032c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;=============================================
    
FUN_ce30256:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30330,pc),r5
    mov.w @(DAT_ce30326,pc),r6
    mov.l @(PTR_ce30334,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30274
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
    
LAB_ce30274:
    mov.w @(DAT_ce30326,pc),r5
    mov.l @(PTR_ce30338,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30324,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3032c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;=============================================
    
FUN_ce3029c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3033c,pc),r5
    mov.w @(DAT_ce30328,pc),r6
    mov.l @(PTR_ce30334,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302bc
    mov.w @(DAT_ce3032a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce302c4
    
LAB_ce302bc:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
    
LAB_ce302c4:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30324,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3032c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;=============================================
    
FUN_ce302e2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30340,pc),r3
    jsr @r3
    mov 0x04,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302fc
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
    
LAB_ce302fc:
    mov.w @(DAT_ce30324,pc),r0
    mov 0x04,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce3032c,pc),r3
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
    
DAT_ce3031c:
    #data 0x034a
DAT_ce3031e:
    #data 0x0800
DAT_ce30320:
    #data 0x01a3
DAT_ce30322:
    #data 0x0400
DAT_ce30324:
    #data 0x01e9
DAT_ce30326:
    #data 0x0384
DAT_ce30328:
    #data 0x038c
DAT_ce3032a:
    #data 0x040c
#align4
    
PTR_ce3032c:
    #data loc_8c0530d8
PTR_ce30330:
    #data DAT_ce3301c
PTR_ce30334:
    #data loc_8c054e58
PTR_ce30338:
    #data loc_8c055c3a
PTR_ce3033c:
    #data DAT_ce3302c
PTR_ce30340:
    #data loc_8c054da0
    
;=============================================
    
FUN_ce30344:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30464,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce3035c
    mov.w @(DAT_ce3044e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30364
    
LAB_ce3035c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
    
LAB_ce30364:
    mov.w @(DAT_ce30450,pc),r0
    mov 0x08,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30468,pc),r3
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
    
FUN_ce30384:
    sts.l PR,@-r15
    bsr FUN_ce3039c
    nop
    tst r0,r0
    bt LAB_ce30394
    lds.l @r15+,PR
    rts
    mov 0x01,r0
    
LAB_ce30394:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    nop
    
;=============================================
    
FUN_ce3039c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3046c,pc),r5
    mov.w @(DAT_ce30452,pc),r6
    mov.l @(PTR_ce30470,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303bc
    mov.w @(DAT_ce3044e,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303c4
    
LAB_ce303bc:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
    
LAB_ce303c4:
    mov.w @(DAT_ce30454,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov r3,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce303d4:
    mov.w @(DAT_ce30458,pc),r0
    mov.w @(DAT_ce30456,pc),r5
    mov.b @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce30408
    add r4,r5
    mov.b @(0x5,r4),r0
    tst r0,r0
    bf LAB_ce30408
    mov.w @(0x4,r5),r0
    add 0xFF,r0
    mov.w r0,@(0x4,r5)
    extu.w r0,r0
    tst r0,r0
    bf LAB_ce30408
    mov.w @(DAT_ce3045a,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x15,r0
    bf LAB_ce30402
    mov 0x01,r0
    bra LAB_ce30408
    mov.w r0,@(0x4,r5)
    
LAB_ce30402:
    mov.l @(PTR_ce30474,pc),r2
    jmp @r2
    nop
    
LAB_ce30408:
    rts
    nop
    
LAB_ce3040c:
    mov.w @(DAT_ce3045c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30478,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce30420:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3047c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3045e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30480
    mov.w @(DAT_ce30460,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30446
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce306dc
    mov.l @r15+,r14
    
LAB_ce30446:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30604
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce3044e:
    #data 0x040c
DAT_ce30450:
    #data 0x01e9
DAT_ce30452:
    #data 0x038c
DAT_ce30454:
    #data 0x0258
DAT_ce30456:
    #data 0x02a4
DAT_ce30458:
    #data 0x0201
DAT_ce3045a:
    #data 0x01d0
DAT_ce3045c:
    #data 0x01ff
DAT_ce3045e:
    #data 0x01fe
DAT_ce30460:
    #data 0x01f9
#align4
    
PTR_ce30464:
    #data loc_8c054d1c
PTR_ce30468:
    #data loc_8c0530d8
PTR_ce3046c:
    #data DAT_ce3302c
PTR_ce30470:
    #data loc_8c054e58
PTR_ce30474:
    #data LAB_ce322d2
PTR_ce30478:
    #data PTR_ce330ac
PTR_ce3047c:
    #data loc_8c052b4c
    
;=============================================
    
LAB_ce30480:
    mov.w @(DAT_ce30576,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30492
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3053e
    mov.l @r15+,r14
    
LAB_ce30492:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3049a
    mov.l @r15+,r14
    
LAB_ce3049a:
    mov.w @(DAT_ce30578,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce304ba
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce304d0
    cmp/eq 0x02,r0
    bt LAB_ce304f0
    bra LAB_ce3050e
    nop
    
LAB_ce304ba:
    mov.w @(DAT_ce3057a,pc),r0
    mov.l @(PTR_ce30584,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3057c,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3057e,pc),r0
    mov.b r13,@(r0,r14)
    bra LAB_ce304e6
    mov 0x14,r5
    
LAB_ce304d0:
    mov.w @(DAT_ce3057a,pc),r0
    mov 0x01,r4
    mov.l @(PTR_ce30588,pc),r3
    mov 0x15,r5
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3057c,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3057e,pc),r0
    mov.b r4,@(r0,r14)
    
LAB_ce304e6:
    mov.l @(PTR_ce3058c,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce3050e
    nop
    
LAB_ce304f0:
    mov.w @(DAT_ce3057a,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce30590,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3057c,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3057e,pc),r0
    mov.b r4,@(r0,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x28,r0
    mov.w r0,@(0x1c,r14)
    
LAB_ce3050e:
    mov.w @(DAT_ce30580,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce30594,pc),r3
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
    mov.w @(DAT_ce3057a,pc),r0
    mov.l @(PTR_ce30598,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce3053e:
    mov.w @(DAT_ce30578,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3055e
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3059c
    cmp/eq 0x02,r0
    bt LAB_ce305be
    bra LAB_ce305d4
    nop
    
LAB_ce3055e:
    mov.w @(DAT_ce3057a,pc),r0
    mov 0x06,r3
    mov.l @(PTR_ce30584,pc),r2
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3057c,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3057e,pc),r0
    mov.b r13,@(r0,r14)
    bra LAB_ce305b4
    mov 0x14,r5
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce30576:
    #data 0x01f9
DAT_ce30578:
    #data 0x01e8
DAT_ce3057a:
    #data 0x0158
DAT_ce3057c:
    #data 0x03f4
DAT_ce3057e:
    #data 0x01a7
DAT_ce30580:
    #data 0x01ac
#align4
    
PTR_ce30584:
    #data DAT_ce32fb0
PTR_ce30588:
    #data DAT_ce32fb4
PTR_ce3058c:
    #data loc_8c04223a
PTR_ce30590:
    #data DAT_ce32fb8
PTR_ce30594:
    #data loc_8c2896b0
PTR_ce30598:
    #data loc_8c034e8c
    
;=============================================
    
LAB_ce3059c:
    mov.w @(DAT_ce306b2,pc),r0
    mov 0x01,r4
    mov 0x07,r3
    mov.l @(PTR_ce306bc,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.w @(DAT_ce306b4,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce306b6,pc),r0
    mov.b r4,@(r0,r14)
    
LAB_ce305b4:
    mov.l @(PTR_ce306c0,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce305d4
    nop
    
LAB_ce305be:
    mov.w @(DAT_ce306b2,pc),r0
    mov 0x02,r4
    mov 0x08,r3
    mov.l @(PTR_ce306c4,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce306b4,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce306b6,pc),r0
    mov.b r4,@(r0,r14)
    
LAB_ce305d4:
    mov.w @(DAT_ce306b8,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce306c8,pc),r3
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
    mov.w @(DAT_ce306b2,pc),r0
    mov.l @(PTR_ce306cc,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce30604:
    mov.w @(DAT_ce306ba,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce306c0,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30628
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30644
    cmp/eq 0x02,r0
    bt LAB_ce30664
    bra LAB_ce30680
    nop
    
LAB_ce30628:
    mov.w @(DAT_ce306b2,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306b4,pc),r0
    mov.l @(PTR_ce306d0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306b6,pc),r0
    bra LAB_ce30680
    mov.b r13,@(r0,r14)
    
LAB_ce30644:
    mov.w @(DAT_ce306b2,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306b4,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce306d4,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306b6,pc),r0
    bra LAB_ce30680
    mov.b r2,@(r0,r14)
    
LAB_ce30664:
    mov.w @(DAT_ce306b2,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce306d8,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce306b4,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce306b6,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r12
    mov r14,r4
    
LAB_ce30680:
    mov.w @(DAT_ce306b8,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce306c8,pc),r3
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
    mov.w @(DAT_ce306b2,pc),r0
    mov.l @(PTR_ce306cc,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce306b2:
    #data 0x0158
DAT_ce306b4:
    #data 0x03f4
DAT_ce306b6:
    #data 0x01a7
DAT_ce306b8:
    #data 0x01ac
DAT_ce306ba:
    #data 0x01e8
#align4
    
PTR_ce306bc:
    #data DAT_ce32fb4
PTR_ce306c0:
    #data loc_8c04223a
PTR_ce306c4:
    #data DAT_ce32fb8
PTR_ce306c8:
    #data loc_8c2896b0
PTR_ce306cc:
    #data loc_8c034e8c
PTR_ce306d0:
    #data DAT_ce32fbc
PTR_ce306d4:
    #data DAT_ce32fc0
PTR_ce306d8:
    #data DAT_ce32fc4
    
;=============================================
    
LAB_ce306dc:
    mov.w @(DAT_ce307d4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce306fc
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3071a
    cmp/eq 0x02,r0
    bt LAB_ce30732
    bra LAB_ce30750
    nop
    
LAB_ce306fc:
    mov.w @(DAT_ce307d6,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce307e4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce307d8,pc),r0
    mov.l @(PTR_ce307e8,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307da,pc),r0
    bra LAB_ce30750
    mov.b r13,@(r0,r14)
    
LAB_ce3071a:
    mov.w @(DAT_ce307d6,pc),r0
    mov 0x01,r4
    mov 0x0A,r3
    mov.l @(PTR_ce307ec,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce307d8,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307da,pc),r0
    bra LAB_ce30750
    mov.b r4,@(r0,r14)
    
LAB_ce30732:
    mov.w @(DAT_ce307d6,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.l @(PTR_ce307f0,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce307d8,pc),r0
    mov.l @(PTR_ce307e4,pc),r3
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307da,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    
LAB_ce30750:
    mov.w @(DAT_ce307dc,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce307f4,pc),r3
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
    mov.w @(DAT_ce307d6,pc),r0
    mov.l @(PTR_ce307f8,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce30780:
    mov.w @(DAT_ce307de,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce307a8
    mov.w @(DAT_ce307e0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30798
    mov.w @(DAT_ce307e2,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce307a8
    
LAB_ce30798:
    mov.w @(DAT_ce307e0,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce307ac
    mov.w @(DAT_ce307e2,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce307ac
    
LAB_ce307a8:
    bra LAB_ce307b0
    nop
    
LAB_ce307ac:
    rts
    nop
    
LAB_ce307b0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce307fc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce307e0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce307cc
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30932
    mov.l @r15+,r14
    
LAB_ce307cc:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30800
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce307d4:
    #data 0x01e8
DAT_ce307d6:
    #data 0x0158
DAT_ce307d8:
    #data 0x03f4
DAT_ce307da:
    #data 0x01a7
DAT_ce307dc:
    #data 0x01ac
DAT_ce307de:
    #data 0x0201
DAT_ce307e0:
    #data 0x01fe
DAT_ce307e2:
    #data 0x01d6
#align4
    
PTR_ce307e4:
    #data loc_8c04223a
PTR_ce307e8:
    #data DAT_ce32fbc
PTR_ce307ec:
    #data DAT_ce32fc0
PTR_ce307f0:
    #data DAT_ce32fc4
PTR_ce307f4:
    #data loc_8c2896b0
PTR_ce307f8:
    #data loc_8c034e8c
PTR_ce307fc:
    #data FUN_ce32308
    
;=============================================
    
LAB_ce30800:
    mov.w @(DAT_ce30888,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30820
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3084e
    cmp/eq 0x02,r0
    bt LAB_ce30876
    bra LAB_ce308f0
    nop
    
LAB_ce30820:
    mov.w @(DAT_ce3088a,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30894,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3088c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30842
    mov.w @(DAT_ce3088e,pc),r0
    mov.l @(PTR_ce30898,pc),r3
    bra LAB_ce30848
    mov.l r3,@(r0,r14)
    
LAB_ce30842:
    mov.w @(DAT_ce3088e,pc),r0
    mov.l @(PTR_ce3089c,pc),r1
    mov.l r1,@(r0,r14)
    
LAB_ce30848:
    mov.w @(DAT_ce30890,pc),r0
    bra LAB_ce308f0
    mov.b r13,@(r0,r14)
    
LAB_ce3084e:
    mov.w @(DAT_ce3088a,pc),r0
    mov 0x01,r4
    mov 0x0D,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3086a
    mov.w @(DAT_ce3088e,pc),r0
    mov.l @(PTR_ce308a0,pc),r2
    bra LAB_ce30870
    mov.l r2,@(r0,r14)
    
LAB_ce3086a:
    mov.w @(DAT_ce3088e,pc),r0
    mov.l @(PTR_ce308a4,pc),r1
    mov.l r1,@(r0,r14)
    
LAB_ce30870:
    mov.w @(DAT_ce30890,pc),r0
    bra LAB_ce308f0
    mov.b r4,@(r0,r14)
    
LAB_ce30876:
    mov.w @(DAT_ce3088c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce308ac
    mov 0x02,r4
    mov.w @(DAT_ce3088e,pc),r0
    mov.l @(PTR_ce308a8,pc),r3
    bra LAB_ce308b2
    mov.l r3,@(r0,r14)
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce30888:
    #data 0x01e8
DAT_ce3088a:
    #data 0x0158
DAT_ce3088c:
    #data 0x01fc
DAT_ce3088e:
    #data 0x03f4
DAT_ce30890:
    #data 0x01a7
#align4
    
PTR_ce30894:
    #data loc_8c04223a
PTR_ce30898:
    #data DAT_ce32fc8
PTR_ce3089c:
    #data DAT_ce32fe0
PTR_ce308a0:
    #data DAT_ce32fcc
PTR_ce308a4:
    #data DAT_ce32fe4
PTR_ce308a8:
    #data DAT_ce32fd0
    
;=============================================
    
LAB_ce308ac:
    mov.w @(DAT_ce309b6,pc),r0
    mov.l @(PTR_ce309cc,pc),r1
    mov.l r1,@(r0,r14)
    
LAB_ce308b2:
    mov.w @(DAT_ce309b8,pc),r0
    mov 0x0E,r3
    mov.b r4,@(r0,r14)
    add 0xB1,r0
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce309ba,pc),r3
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce308d8
    mov.w @(DAT_ce309bc,pc),r0
    mov 0x06,r2
    mov 0x12,r1
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r1,@(r0,r14)
    
LAB_ce308d8:
    mov.w @(DAT_ce309be,pc),r0
    mov.w @(DAT_ce309c0,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce308f0
    mov.w @(DAT_ce309bc,pc),r0
    mov 0x07,r3
    mov 0x13,r1
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r1,@(r0,r14)
    
LAB_ce308f0:
    mov.w @(DAT_ce309c2,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce309d0,pc),r3
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
    mov.w @(DAT_ce309bc,pc),r0
    mov.l @(PTR_ce309d4,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce309c4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce3092a
    mov.w @(DAT_ce309c4,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)
    
LAB_ce3092a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
    
LAB_ce30932:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce309c6,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov 0x01,r11
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce309d8,pc),r10
    extu.b r0,r0
    mov.l @(PTR_ce309d4,pc),r12
    cmp/eq 0x00,r0
    bt/s LAB_ce3095e
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3098e
    cmp/eq 0x02,r0
    bt LAB_ce309f4
    bra LAB_ce30aa6
    nop
    
LAB_ce3095e:
    mov 0x0C,r5
    mov 0x00,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309c8,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce309ca,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30982
    mov.w @(DAT_ce309b6,pc),r0
    mov.l @(PTR_ce309dc,pc),r3
    bra LAB_ce30988
    mov.l r3,@(r0,r14)
    
LAB_ce30982:
    mov.w @(DAT_ce309b6,pc),r0
    mov.l @(PTR_ce309e0,pc),r1
    mov.l r1,@(r0,r14)
    
LAB_ce30988:
    mov.w @(DAT_ce309b8,pc),r0
    bra LAB_ce30aa6
    mov.b r13,@(r0,r14)
    
LAB_ce3098e:
    mov.w @(DAT_ce309bc,pc),r0
    mov 0x0C,r5
    mov 0x01,r6
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce309c8,pc),r0
    mov 0x10,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce309ca,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce309e8
    mov.w @(DAT_ce309b6,pc),r0
    mov.l @(PTR_ce309e4,pc),r3
    bra LAB_ce309ee
    mov.l r3,@(r0,r14)
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce309b6:
    #data 0x03f4
DAT_ce309b8:
    #data 0x01a7
DAT_ce309ba:
    #data 0x2000
DAT_ce309bc:
    #data 0x0158
DAT_ce309be:
    #data 0x01fa
DAT_ce309c0:
    #data 0x1000
DAT_ce309c2:
    #data 0x01ac
DAT_ce309c4:
    #data 0x01d6
DAT_ce309c6:
    #data 0x01e8
DAT_ce309c8:
    #data 0x01a1
DAT_ce309ca:
    #data 0x01fc
#align4
    
PTR_ce309cc:
    #data DAT_ce32fe8
PTR_ce309d0:
    #data loc_8c2896b0
PTR_ce309d4:
    #data loc_8c034e8c
PTR_ce309d8:
    #data loc_8c04223a
PTR_ce309dc:
    #data DAT_ce32fd4
PTR_ce309e0:
    #data DAT_ce32fec
PTR_ce309e4:
    #data DAT_ce32fd8
    
;=============================================
    
LAB_ce309e8:
    mov.w @(DAT_ce30af6,pc),r0
    mov.l @(PTR_ce30b10,pc),r1
    mov.l r1,@(r0,r14)
    
LAB_ce309ee:
    mov.w @(DAT_ce30af8,pc),r0
    bra LAB_ce30aa6
    mov.b r11,@(r0,r14)
    
LAB_ce309f4:
    mov.w @(DAT_ce30afa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30a04
    mov.w @(DAT_ce30af6,pc),r0
    mov.l @(PTR_ce30b14,pc),r3
    bra LAB_ce30a0a
    mov.l r3,@(r0,r14)
    
LAB_ce30a04:
    mov.w @(DAT_ce30af6,pc),r0
    mov.l @(PTR_ce30b18,pc),r1
    mov.l r1,@(r0,r14)
    
LAB_ce30a0a:
    mov.w @(DAT_ce30af8,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    add 0x53,r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce30afc,pc),r3
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce30a6e
    mova @(DAT_ce30b1c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce30afe,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bf LAB_ce30a6e
    mov.w @(DAT_ce30b00,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0xD5,r0
    mov.b @(r0,r14),r2
    mov 0x04,r6
    and r3,r2
    mov.b r2,@(r0,r14)
    add 0x26,r0
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b02,pc),r0
    mov 0x15,r3
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
    mov r11,r0
    nop
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    bra LAB_ce30aa6
    mov.b r0,@(0x7,r14)
    
LAB_ce30a6e:
    mov r13,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x0C,r3
    mov.w @(DAT_ce30b04,pc),r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce30b06,pc),r0
    mov.w @(DAT_ce30b08,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce30a98
    mov 0x0C,r5
    mov 0x06,r6
    jsr @r12
    mov r14,r4
    bra LAB_ce30aa2
    mov 0x14,r3
    
LAB_ce30a98:
    mov 0x0C,r5
    mov 0x02,r6
    jsr @r12
    mov r14,r4
    mov 0x11,r3
    
LAB_ce30aa2:
    mov.w @(DAT_ce30b02,pc),r0
    mov.b r3,@(r0,r14)
    
LAB_ce30aa6:
    mov.w @(DAT_ce30b0a,pc),r0
    mov.l @(PTR_ce30b20,pc),r3
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
    mov.w @(DAT_ce30b0c,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30ad4
    mov.w @(DAT_ce30b0c,pc),r0
    mov.b @(r0,r14),r1
    add 0xF0,r1
    mov.b r1,@(r0,r14)
    
LAB_ce30ad4:
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
    
LAB_ce30ae2:
    mov.w @(DAT_ce30b0e,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30b24,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce30af6:
    #data 0x03f4
DAT_ce30af8:
    #data 0x01a7
DAT_ce30afa:
    #data 0x01fc
DAT_ce30afc:
    #data 0x1000
DAT_ce30afe:
    #data 0x041c
DAT_ce30b00:
    #data 0x0201
DAT_ce30b02:
    #data 0x01a1
DAT_ce30b04:
    #data 0x0159
DAT_ce30b06:
    #data 0x01fa
DAT_ce30b08:
    #data 0x2000
DAT_ce30b0a:
    #data 0x01ac
DAT_ce30b0c:
    #data 0x01d6
DAT_ce30b0e:
    #data 0x01ff
#align4
    
PTR_ce30b10:
    #data DAT_ce32ff0
PTR_ce30b14:
    #data DAT_ce32fdc
PTR_ce30b18:
    #data DAT_ce32ff4
DAT_ce30b1c:
    #data 0x43092492
PTR_ce30b20:
    #data loc_8c2896b0
PTR_ce30b24:
    #data PTR_ce330bc
    
;=============================================
    
LAB_ce30b28:
    sts.l PR,@-r15
    mov.l @(PTR_ce30c60,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR
    
LAB_ce30b36:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30c64,pc),r3
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
    mov.w @(DAT_ce30c56,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30b9e
    mov.w @(DAT_ce30c58,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30b96
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e0a
    mov.l @r15+,r14
    
LAB_ce30b96:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d42
    mov.l @r15+,r14
    
LAB_ce30b9e:
    mov.w @(DAT_ce30c58,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30bb0
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30cb0
    mov.l @r15+,r14
    
LAB_ce30bb0:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30bb8
    mov.l @r15+,r14
    
LAB_ce30bb8:
    mov.w @(DAT_ce30c5a,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c68,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce30bcc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30c6c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30be6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30c70,pc),r3
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
    mov.l @(PTR_ce30c6c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c08
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30c70,pc),r3
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
    mov.l @(PTR_ce30c6c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30c5c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30c30
    mov 0x00,r3
    mov r3,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30c74,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4
    
LAB_ce30c30:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce30c50
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce30c78,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce30c50:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce30c56:
    #data 0x01fe
DAT_ce30c58:
    #data 0x01f9
DAT_ce30c5a:
    #data 0x01e8
DAT_ce30c5c:
    #data 0x0141
#align4
    
PTR_ce30c60:
    #data loc_8c0511e2
PTR_ce30c64:
    #data loc_8c052c84
PTR_ce30c68:
    #data PTR_ce330cc
PTR_ce30c6c:
    #data loc_8c034dee
PTR_ce30c70:
    #data loc_8c051648
PTR_ce30c74:
    #data loc_8c0a960c
PTR_ce30c78:
    #data loc_8c034e8c
    
;=============================================
    
LAB_ce30c7c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d98,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c96
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d9c,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce30c96:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
LAB_ce30c9e:
    mov r4,r3
    mov.l @(PTR_ce30da0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce30cb0:
    mov.w @(DAT_ce30d92,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30da4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce30cc4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d98,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cde
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d9c,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce30cde:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
;=============================================
    
FUN_ce30ce6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d98,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d00
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d9c,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce30d00:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
LAB_ce30d08:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d98,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d22
    lds.l @r15+,PR
    mov.l @(PTR_ce30d9c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce30d22:
    mov.w @(DAT_ce30d94,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d3c
    mov 0x00,r3
    mov r14,r4
    mov r3,r6
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce30da8,pc),r3
    mov 0x02,r5
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce30d3c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce30d42:
    mov.w @(DAT_ce30d92,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30dac,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce30d56:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d98,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d70
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d9c,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce30d70:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
LAB_ce30d78:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d98,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30db0
    lds.l @r15+,PR
    mov.l @(PTR_ce30d9c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce30d92:
    #data 0x01e8
DAT_ce30d94:
    #data 0x0141
#align4
    
PTR_ce30d98:
    #data loc_8c034dee
PTR_ce30d9c:
    #data loc_8c051648
PTR_ce30da0:
    #data PTR_ce330d8
PTR_ce30da4:
    #data PTR_ce330e0
PTR_ce30da8:
    #data loc_8c0a960c
PTR_ce30dac:
    #data PTR_ce330ec
    
;=============================================
    
LAB_ce30db0:
    mov.w @(DAT_ce30ed4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30dca
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x02,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce30edc,pc),r3
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce30dca:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce30dd0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ee0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30dea
    lds.l @r15+,PR
    mov.l @(PTR_ce30ee4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce30dea:
    mov.w @(DAT_ce30ed4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e04
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x04,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce30edc,pc),r3
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce30e04:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce30e0a:
    mov.w @(DAT_ce30ed6,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30ee8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce30e1e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30ee0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e38
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30ee4,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce30e38:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
LAB_ce30e40:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ee0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e5a
    lds.l @r15+,PR
    mov.l @(PTR_ce30ee4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce30e5a:
    mov.w @(DAT_ce30ed4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce30e78
    mov.w @(DAT_ce30ed4,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce30edc,pc),r1
    mov r6,r5
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    
LAB_ce30e78:
    mov.w @(DAT_ce30ed4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce30eb4
    mov.w @(DAT_ce30ed4,pc),r0
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce30eec,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce30ef0,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30ed8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30eb4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    
LAB_ce30eb4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce30eba:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ee0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ef4
    lds.l @r15+,PR
    mov.l @(PTR_ce30ee4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce30ed4:
    #data 0x0141
DAT_ce30ed6:
    #data 0x01e8
DAT_ce30ed8:
    #data 0x01d2
#align4
    
PTR_ce30edc:
    #data loc_8c0a960c
PTR_ce30ee0:
    #data loc_8c034dee
PTR_ce30ee4:
    #data loc_8c051648
PTR_ce30ee8:
    #data PTR_ce330f8
DAT_ce30eec:
    #data 0xc0d55555
DAT_ce30ef0:
    #data 0x3ed55555
    
;=============================================
    
LAB_ce30ef4:
    mov.w @(DAT_ce30fe6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30f0e
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x05,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce30ff0,pc),r3
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce30f0e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce30f14:
    mov.w @(DAT_ce30fe8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30f2e
    mov.l @(PTR_ce30ff4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce30ff8,pc),r3
    jsr @r3
    mov r14,r4
    
LAB_ce30f2e:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14
    
LAB_ce30f34:
    mov.w @(DAT_ce30fe8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f4e
    mov.l @(PTR_ce30ffc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30f86
    
LAB_ce30f4e:
    mov.l @(PTR_ce31000,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31004,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30fea,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30f6c
    bsr FUN_ce3105e
    mov r14,r4
    bra LAB_ce30f70
    nop
    
LAB_ce30f6c:
    bsr FUN_ce30f8c
    mov r14,r4
    
LAB_ce30f70:
    mov.l @(PTR_ce31008,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30f86
    lds.l @r15+,PR
    mov.l @(PTR_ce3100c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce30f86:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;=============================================
    
FUN_ce30f8c:
    mov.w @(DAT_ce30fec,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31010,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce30fa0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31014,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fba
    lds.l @r15+,PR
    mov.l @(PTR_ce31018,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce30fba:
    mov.w @(DAT_ce30fe6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30fc6
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    
LAB_ce30fc6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce30fcc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31014,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3101c
    lds.l @r15+,PR
    mov.l @(PTR_ce31018,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce30fe6:
    #data 0x0141
DAT_ce30fe8:
    #data 0x0201
DAT_ce30fea:
    #data 0x01fe
DAT_ce30fec:
    #data 0x01e8
#align4
    
PTR_ce30ff0:
    #data loc_8c0a960c
PTR_ce30ff4:
    #data loc_8c050084
PTR_ce30ff8:
    #data loc_8c04ff88
PTR_ce30ffc:
    #data loc_8c054184
PTR_ce31000:
    #data loc_8c04fea8
PTR_ce31004:
    #data loc_8c050048
PTR_ce31008:
    #data loc_8c052ce2
PTR_ce3100c:
    #data loc_8c052dac
PTR_ce31010:
    #data PTR_ce33104
PTR_ce31014:
    #data loc_8c034dee
PTR_ce31018:
    #data loc_8c05176e
    
;=============================================
    
LAB_ce3101c:
    mov.w @(DAT_ce31130,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31036
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x03,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce31138,pc),r3
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce31036:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;=============================================
    
FUN_ce3103c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3113c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31056
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31140,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce31056:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
;=============================================
    
FUN_ce3105e:
    mov.w @(DAT_ce31132,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31144,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce31072:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3113c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3108c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31140,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce3108c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
;=============================================
    
FUN_ce31094:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3113c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310ae
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31140,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce310ae:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
;=============================================
    
FUN_ce310b6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3113c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310d0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31140,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce310d0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
LAB_ce310d8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3113c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31130,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3112a
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce31148,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3114c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31150,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31134,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3112a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    
LAB_ce3112a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce31130:
    #data 0x0141
DAT_ce31132:
    #data 0x01e8
DAT_ce31134:
    #data 0x0130
#align4
    
PTR_ce31138:
    #data loc_8c0a960c
PTR_ce3113c:
    #data loc_8c034dee
PTR_ce31140:
    #data loc_8c05176e
PTR_ce31144:
    #data PTR_ce33110
DAT_ce31148:
    #data 0xc0555555
DAT_ce3114c:
    #data 0xc0092492
DAT_ce31150:
    #data 0xbe892492
    
;=============================================
    
LAB_ce31154:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce3121c,pc),r3
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
    mov.w @(DAT_ce31218,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce311e8
    mov.b @(0x7,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce31220,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce31224,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31228,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3122c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31230,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3121a,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311e8
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    
LAB_ce311e8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce311ee:
    mov.l @(PTR_ce3121c,pc),r3
    jmp @r3
    nop
    
LAB_ce311f4:
    mov r4,r3
    mov.l @(PTR_ce31234,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce31206:
    mov r4,r3
    mov.l @(PTR_ce31238,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce31218:
    #data 0x019e
DAT_ce3121a:
    #data 0x0130
#align4
    
PTR_ce3121c:
    #data loc_8c034dee
PTR_ce31220:
    #data loc_8c034e8c
DAT_ce31224:
    #data 0x40d55555
DAT_ce31228:
    #data 0xbd555555
DAT_ce3122c:
    #data 0x414db6db
DAT_ce31230:
    #data 0xbf4db6db
PTR_ce31234:
    #data PTR_ce3311c
PTR_ce31238:
    #data PTR_ce33128
    
;=============================================
    
LAB_ce3123c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce3129a
    mov 0x00,r13
    mov.l @(PTR_ce31378,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce3137c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3136c,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce31380,pc),r3
    mov 0x06,r6
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3136e,pc),r0
    mov 0x1C,r2
    mov.l @(PTR_ce31384,pc),r3
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
    mov.l @(PTR_ce31388,pc),r2
    jsr @r2
    mov r14,r4
    
LAB_ce3129a:
    mov.w @(DAT_ce31370,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce312aa
    mov.l @(PTR_ce3138c,pc),r2
    jsr @r2
    mov r14,r4
    
LAB_ce312aa:
    mov 0x5C,r1
    mov.l @(PTR_ce31390,pc),r3
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
    mov.l @(PTR_ce31394,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31300
    lds.l @r15+,PR
    mov.l @(PTR_ce31398,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce31300:
    mov.w @(DAT_ce31372,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3131a
    mov.b r13,@(r0,r14)
    mov 0x04,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce3139c,pc),r3
    mov 0x01,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce3131a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
    
LAB_ce31322:
    mov r4,r3
    mov.l @(PTR_ce313a0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce31334:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31394,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31372,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce313b4
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
    mov.w @(DAT_ce31374,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce313a8
    mova @(DAT_ce313a4,pc),r0
    bra LAB_ce313ac
    fmov.s @r0,fr3
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce3136c:
    #data 0x01f9
DAT_ce3136e:
    #data 0x01a1
DAT_ce31370:
    #data 0x01ff
DAT_ce31372:
    #data 0x0141
DAT_ce31374:
    #data 0x01d2
#align4
    
PTR_ce31378:
    #data loc_8c052b4c
PTR_ce3137c:
    #data loc_8c056de4
PTR_ce31380:
    #data loc_8c034e8c
PTR_ce31384:
    #data loc_8c2896b0
PTR_ce31388:
    #data loc_8c04223a
PTR_ce3138c:
    #data loc_8c0511e2
PTR_ce31390:
    #data loc_8c052c84
PTR_ce31394:
    #data loc_8c034dee
PTR_ce31398:
    #data loc_8c051648
PTR_ce3139c:
    #data loc_8c0a960c
PTR_ce313a0:
    #data PTR_ce33130
DAT_ce313a4:
    #data 0x41555555
    
;=============================================
    
LAB_ce313a8:
    mova @(DAT_ce314d8,pc),r0
    fmov.s @r0,fr3
    
LAB_ce313ac:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)
    
LAB_ce313b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce313ba:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314dc,pc),r3
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
    tst r0,r0
    bf LAB_ce31416
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce314d2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31400
    mova @(DAT_ce314e0,pc),r0
    bra LAB_ce31404
    fmov.s @r0,fr3
    
LAB_ce31400:
    mova @(DAT_ce314e4,pc),r0
    fmov.s @r0,fr3
    
LAB_ce31404:
    mov 0x02,r6
    mov.l @(PTR_ce314e8,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov r6,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce31416:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce3141c:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce314dc,pc),r3
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
    bt LAB_ce31470
    lds.l @r15+,PR
    mov.l @(PTR_ce314ec,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce31470:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce31476:
    mov r4,r3
    mov.l @(PTR_ce314f0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce31488:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce314dc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce314d4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce314cc
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
    mov.w @(DAT_ce314d2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce314c0
    mova @(DAT_ce314d8,pc),r0
    bra LAB_ce314c4
    fmov.s @r0,fr3
    
LAB_ce314c0:
    mova @(DAT_ce314f4,pc),r0
    fmov.s @r0,fr3
    
LAB_ce314c4:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)
    
LAB_ce314cc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce314d2:
    #data 0x01d2
DAT_ce314d4:
    #data 0x0141
#align4
    
DAT_ce314d8:
    #data 0xc1555555
PTR_ce314dc:
    #data loc_8c034dee
DAT_ce314e0:
    #data 0xbed55555
DAT_ce314e4:
    #data 0x3ed55555
PTR_ce314e8:
    #data loc_8c034e8c
PTR_ce314ec:
    #data loc_8c051648
PTR_ce314f0:
    #data PTR_ce3313c
DAT_ce314f4:
    #data 0x41555555
    
;=============================================
    
LAB_ce314f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3161c,pc),r3
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
    tst r0,r0
    bf LAB_ce31554
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31614,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3153e
    mova @(DAT_ce31620,pc),r0
    bra LAB_ce31542
    fmov.s @r0,fr3
    
LAB_ce3153e:
    mova @(DAT_ce31624,pc),r0
    fmov.s @r0,fr3
    
LAB_ce31542:
    mov.l @(PTR_ce31628,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x03,r6
    mov 0x02,r5
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce31554:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;=============================================
    
FUN_ce3155a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3161c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31574
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3162c,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce31574:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
LAB_ce3157c:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r3
    mov.w @(DAT_ce31616,pc),r4
    mov.l @(DAT_ce31630,pc),r1
    mov 0x12,r5
    add r14,r4
    lds r1,FPUL
    mov 0x00,r6
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    fsts FPUL,fr3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31618,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x1,r4)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov.l @(PTR_ce31628,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31634,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31638,pc),r2
    mov 0x22,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce315c2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3161c,pc),r3
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce3161a,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce3160e
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3161a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3163c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    
LAB_ce3160e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce31614:
    #data 0x01d2
DAT_ce31616:
    #data 0x02a4
DAT_ce31618:
    #data 0x012c
DAT_ce3161a:
    #data 0x041c
#align4
    
PTR_ce3161c:
    #data loc_8c034dee
DAT_ce31620:
    #data 0x3ed55555
DAT_ce31624:
    #data 0xbed55555
PTR_ce31628:
    #data loc_8c034e8c
PTR_ce3162c:
    #data loc_8c051648
DAT_ce31630:
    #data 0x43f00000
DAT_ce31634:
    #data 0xc1092492
PTR_ce31638:
    #data loc_8c042008
DAT_ce3163c:
    #data 0xc0892492
    
;=============================================
    
LAB_ce31640:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3175c,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3169c
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    mov.l @(PTR_ce31760,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3175a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31764,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce3169c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce316a2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3175c,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce316f4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31760,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x12,r5
    mov.w @(DAT_ce3175a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce316f4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce316fa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3175c,pc),r3
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31754
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    mov.l @(PTR_ce31760,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3175a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31768,pc),r2
    mov 0x0A,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce31754:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce3175a:
    #data 0x041c
#align4
    
PTR_ce3175c:
    #data loc_8c034dee
PTR_ce31760:
    #data loc_8c034e8c
PTR_ce31764:
    #data loc_8c0e8cf0
PTR_ce31768:
    #data loc_8c042008
    
;=============================================
    
LAB_ce3176c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce318a4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce317b8
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    mov.l @(PTR_ce318b0,pc),r3
    mov 0x09,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3189e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce318a8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce318ac,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce318b4,pc),r2
    mov 0x00,r6
    mov r6,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce317b8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce317be:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce318a4,pc),r3
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
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce3189e,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31806
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce318b8,pc),r3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce31806:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce3180c:
    mov r4,r3
    mov.l @(PTR_ce318bc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce3181e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce318c0,pc),r3
    jsr @r3
    mov r4,r14
    tst 0x01,r0
    bf LAB_ce31834
    mov.w @(DAT_ce318a0,pc),r0
    mov 0x00,r3
    bra LAB_ce3183a
    mov.b r3,@(r0,r14)
    
LAB_ce31834:
    mov.w @(DAT_ce318a0,pc),r0
    mov 0x01,r1
    mov.b r1,@(r0,r14)
    
LAB_ce3183a:
    mov.w @(DAT_ce318a0,pc),r0
    mov 0x13,r5
    mov.l @(PTR_ce318b0,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce31852:
    mov.l @(PTR_ce318a4,pc),r3
    jmp @r3
    nop
    
LAB_ce31858:
    mov r4,r3
    mov.l @(PTR_ce318c4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce3186a:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce3187e
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce318b0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5
    
LAB_ce3187e:
    mov.l @(PTR_ce318a4,pc),r3
    jmp @r3
    nop
    
LAB_ce31884:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31898
    mov.b @(0x6,r4),r0
    mov 0x00,r6
    mov.l @(PTR_ce318b0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5
    
LAB_ce31898:
    mov.l @(PTR_ce318a4,pc),r3
    jmp @r3
    nop
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce3189e:
    #data 0x041c
DAT_ce318a0:
    #data 0x0158
#align4
    
PTR_ce318a4:
    #data loc_8c034dee
DAT_ce318a8:
    #data 0x41892492
DAT_ce318ac:
    #data 0xbf892492
PTR_ce318b0:
    #data loc_8c034e8c
PTR_ce318b4:
    #data loc_8c0e8cf0
PTR_ce318b8:
    #data loc_8c0511b4
PTR_ce318bc:
    #data PTR_ce33148
PTR_ce318c0:
    #data loc_8c03319e
PTR_ce318c4:
    #data PTR_ce33164
    
;=============================================
    
LAB_ce318c8:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce318dc
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce31a0c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5
    
LAB_ce318dc:
    mov.l @(PTR_ce31a10,pc),r3
    jmp @r3
    nop
    
LAB_ce318e2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a14,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce318fa
    lds.l @r15+,PR
    mov.l @(PTR_ce31a18,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce318fa:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31a1c,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce3190e:
    mov.b @(0x6,r4),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31a06,pc),r0
    mov.b r3,@(r0,r4)
    mova @(DAT_ce31a20,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31a08,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31932
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    
LAB_ce31932:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31a24,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x3F,r3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31a28,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r5
    fmov fr3,@(r0,r4)
    mov 0x01,r6
    mov.w @(DAT_ce31a0a,pc),r0
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce31a2c,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31a0c,pc),r2
    jmp @r2
    mov 0x14,r5
    
LAB_ce31976:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a10,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31a30,pc),r3
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
    bt LAB_ce319de
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce31a0c,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31a34,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce319de:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;=============================================
    
FUN_ce319e4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31a10,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce319fe
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31a38,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce319fe:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce31a06:
    #data 0x01f9
DAT_ce31a08:
    #data 0x01d2
DAT_ce31a0a:
    #data 0x01a1
#align4
    
PTR_ce31a0c:
    #data loc_8c034e8c
PTR_ce31a10:
    #data loc_8c034dee
PTR_ce31a14:
    #data loc_8c046c8a
PTR_ce31a18:
    #data loc_8c051648
PTR_ce31a1c:
    #data PTR_ce3316c
DAT_ce31a20:
    #data 0xc1f00000
DAT_ce31a24:
    #data 0xbe892492
DAT_ce31a28:
    #data 0xbf4db6db
PTR_ce31a2c:
    #data loc_8c2896b0
PTR_ce31a30:
    #data loc_8c052ce2
PTR_ce31a34:
    #data loc_8c0511b4
PTR_ce31a38:
    #data loc_8c051854
    
;=============================================
    
LAB_ce31a3c:
    mov r4,r3
    mov.l @(PTR_ce31ba0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce31a4e:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31ba4,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31ba8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31bac,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31bb0,pc),r2
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
    mov.w @(DAT_ce31b96,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31b98,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.l @r15,r3
    mov.w @(DAT_ce31b9a,pc),r0
    mov.b r13,@r3
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x30,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.l @(PTR_ce31bb4,pc),r3
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.l @r3,r2
    add 0x7C,r2
    mov.b @(0x2,r14),r0
    mov 0x15,r5
    extu.b r0,r0
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31b9a,pc),r0
    mov.l @(PTR_ce31bb8,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31b9c,pc),r0
    mov r14,r4
    mov.b @(r0,r14),r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce31b9c,pc),r0
    mov.b r13,@(r0,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14
    
LAB_ce31aea:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31bbc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31b9c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31b14
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31bc0,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce31b14:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce31b1a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31bbc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31b4c
    mov.b @(0x7,r14),r0
    mov 0x00,r6
    mov.l @(PTR_ce31bc4,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31b9e,pc),r0
    mov 0x10,r2
    mov 0x00,r3
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)
    
LAB_ce31b4c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce31b52:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31bbc,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31b8e
    mov.b @(0x7,r14),r0
    mov 0x01,r2
    mov 0x15,r5
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31b9a,pc),r0
    mov.l @r15,r3
    mov.b r2,@r3
    mov.b @(r0,r14),r6
    add 0x02,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31bb8,pc),r3
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce31b8e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce31b96:
    #data 0x01f9
DAT_ce31b98:
    #data 0x041c
DAT_ce31b9a:
    #data 0x01a3
DAT_ce31b9c:
    #data 0x0141
DAT_ce31b9e:
    #data 0x027a
#align4
    
PTR_ce31ba0:
    #data PTR_ce33180
PTR_ce31ba4:
    #data loc_8c056de4
PTR_ce31ba8:
    #data loc_8c05218a
PTR_ce31bac:
    #data loc_8c05115a
PTR_ce31bb0:
    #data loc_8c035162
PTR_ce31bb4:
    #data loc_8c2896b0
PTR_ce31bb8:
    #data loc_8c034e8c
PTR_ce31bbc:
    #data loc_8c034dee
PTR_ce31bc0:
    #data loc_8c0e8cf0
PTR_ce31bc4:
    #data loc_8c0a7cc8
    
;=============================================
    
LAB_ce31bc8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31cf4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31be2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31cf8,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce31be2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
LAB_ce31bea:
    mov r4,r3
    mov.l @(PTR_ce31cfc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce31bfc:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31d00,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31d04,pc),r2
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
    mova @(DAT_ce31d08,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x00,r13
    fmov fr3,@(r0,r14)
    mov.l @r15,r3
    mov.w @(DAT_ce31cf0,pc),r0
    mov.b r13,@r3
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x30,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31d0c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    add 0x7C,r2
    shll r0
    mov.w @(r0,r2),r1
    mov 0x15,r5
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31cf0,pc),r0
    mov.l @(PTR_ce31d10,pc),r2
    mov.b @(r0,r14),r6
    add 0x04,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31cf2,pc),r0
    mov r14,r4
    mov.b @(r0,r14),r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce31cf2,pc),r0
    mov.b r13,@(r0,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14
    
LAB_ce31c88:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31d92
    mov r4,r14
    mov.l @(PTR_ce31cf4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31cf2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31cb6
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31d14,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    mov 0x02,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce31cb6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce31cbc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31d92
    mov r4,r14
    mov.l @(PTR_ce31cf4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31cea
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31d18,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x00,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce31cea:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce31cf0:
    #data 0x01a3
DAT_ce31cf2:
    #data 0x0141
#align4
    
PTR_ce31cf4:
    #data loc_8c034dee
PTR_ce31cf8:
    #data loc_8c051648
PTR_ce31cfc:
    #data PTR_ce3318c
PTR_ce31d00:
    #data loc_8c056de4
PTR_ce31d04:
    #data loc_8c05218a
DAT_ce31d08:
    #data 0xc0092492
PTR_ce31d0c:
    #data loc_8c2896b0
PTR_ce31d10:
    #data loc_8c034e8c
PTR_ce31d14:
    #data loc_8c0e8cf0
PTR_ce31d18:
    #data loc_8c0a7cc8
    
;=============================================
    
LAB_ce31d1c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l r5,@r15
    mov r4,r14
    bsr FUN_ce31d92
    mov r14,r4
    mov.l @(PTR_ce31df4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31d4c
    mov.b @(0x7,r14),r0
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x1C,r0
    mov.w r0,@(0x1c,r14)
    mov.l @r15,r3
    mov.b r2,@r3
    
LAB_ce31d4c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce31d54:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31d92
    mov r4,r14
    mov.l @(PTR_ce31df4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31d7a
    lds.l @r15+,PR
    mov.l @(PTR_ce31df8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce31d7a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce31d80:
    mov r4,r3
    mov.l @(PTR_ce31dfc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
;=============================================
    
FUN_ce31d92:
    mov.w @(DAT_ce31dee,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce31db6
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
    
LAB_ce31db6:
    mov 0x38,r0
    fmov.s @(r0,r4),fr3
    mov.w @(DAT_ce31df0,pc),r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31dc8
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    
LAB_ce31dc8:
    rts
    nop
    
LAB_ce31dcc:
    mov.w @(DAT_ce31df2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31dde
    mov 0x01,r0
    mov.b r0,@(0x6,r14)
    
LAB_ce31dde:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31e00,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce31dee:
    #data 0x0201
DAT_ce31df0:
    #data 0x041c
DAT_ce31df2:
    #data 0x01f9
#align4
    
PTR_ce31df4:
    #data loc_8c034dee
PTR_ce31df8:
    #data loc_8c05176e
PTR_ce31dfc:
    #data PTR_ce331a0
PTR_ce31e00:
    #data PTR_ce331b4
    
;=============================================
    
LAB_ce31e04:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31f38,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f3c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31f40,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31f44,pc),r2
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
    mov.w @(DAT_ce31f2e,pc),r0
    mov 0x33,r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31f30,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31f32,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31f48,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x15,r5
    mov.w @(DAT_ce31f34,pc),r0
    mov.l @(PTR_ce31f4c,pc),r2
    mov.b @(r0,r14),r6
    add 0x06,r6
    jsr @r2
    mov r14,r4
    mov 0x04,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31f34,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31e94
    bra LAB_ce31e96
    mov 0x08,r0
    
LAB_ce31e94:
    mov 0x0C,r0
    
LAB_ce31e96:
    mov.w r0,@(0x1e,r14)
    mov 0x21,r0
    mov.l @(PTR_ce31f50,pc),r3
    mov 0x15,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14
    
LAB_ce31eb0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31f54,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31ed4
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31f4c,pc),r3
    mov 0x08,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce31ed4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce31eda:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31f54,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31f28
    mov 0x21,r0
    mov.l @(PTR_ce31f58,pc),r2
    mov.b @(r0,r14),r6
    mov 0x00,r5
    add 0x01,r6
    mov.b r6,@(r0,r14)
    add 0xFF,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31f34,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31f0e
    bra LAB_ce31f10
    mov 0x08,r0
    
LAB_ce31f0e:
    mov 0x0C,r0
    
LAB_ce31f10:
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31f28
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x28,r0
    mov.w r0,@(0x1c,r14)
    
LAB_ce31f28:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce31f2e:
    #data 0x01f9
DAT_ce31f30:
    #data 0x041c
DAT_ce31f32:
    #data 0x01a1
DAT_ce31f34:
    #data 0x01a3
#align4
    
PTR_ce31f38:
    #data loc_8c056de4
PTR_ce31f3c:
    #data loc_8c05218a
PTR_ce31f40:
    #data loc_8c035162
PTR_ce31f44:
    #data loc_8c05115a
PTR_ce31f48:
    #data loc_8c2896b0
PTR_ce31f4c:
    #data loc_8c034e8c
PTR_ce31f50:
    #data loc_8c042008
PTR_ce31f54:
    #data loc_8c034dee
PTR_ce31f58:
    #data loc_8c0a8348
    
;=============================================
    
LAB_ce31f5c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce320a4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31f86
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce320a8,pc),r3
    mov 0x09,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce31f86:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;=============================================
    
FUN_ce31f8c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce320a4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31fa6
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce320ac,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce31fa6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
LAB_ce31fae:
    mov r4,r3
    mov.l @(PTR_ce320b0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce31fc0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce320b4,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce320b8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce320bc,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce320c0,pc),r2
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
    mov.w @(DAT_ce3209a,pc),r0
    mov 0x32,r3
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3209c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3209e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce320c4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x15,r5
    mov.l @(PTR_ce320a8,pc),r2
    mov 0x0A,r6
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14
    
LAB_ce32044:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce320a4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3205e
    lds.l @r15+,PR
    mov.l @(PTR_ce320ac,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce3205e:
    mov.w @(DAT_ce320a0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32082
    mov 0x00,r3
    mov r3,r5
    mov r3,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce320c8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce320c8,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x00,r5
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce32082:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce32088:
    mov r4,r3
    mov.l @(PTR_ce320cc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce3209a:
    #data 0x01f9
DAT_ce3209c:
    #data 0x041c
DAT_ce3209e:
    #data 0x01a1
DAT_ce320a0:
    #data 0x0141
#align4
    
PTR_ce320a4:
    #data loc_8c034dee
PTR_ce320a8:
    #data loc_8c034e8c
PTR_ce320ac:
    #data loc_8c051648
PTR_ce320b0:
    #data PTR_ce331bc
PTR_ce320b4:
    #data loc_8c056de4
PTR_ce320b8:
    #data loc_8c05218a
PTR_ce320bc:
    #data loc_8c035162
PTR_ce320c0:
    #data loc_8c05115a
PTR_ce320c4:
    #data loc_8c2896b0
PTR_ce320c8:
    #data loc_8c0a8598
PTR_ce320cc:
    #data PTR_ce331d0
    
;=============================================
    
LAB_ce320d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce321ec,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce321f0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce321f4,pc),r3
    mov 0x00,r5
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
    mov 0x32,r3
    mov.w @(DAT_ce321e2,pc),r0
    mov 0x00,r4
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce321f8,pc),r3
    mov 0x0B,r6
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce321fc,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14
    
LAB_ce32142:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32200,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3215c
    lds.l @r15+,PR
    mov.l @(PTR_ce32204,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce3215c:
    mov.w @(DAT_ce321e4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32188
    mov.w @(DAT_ce321e4,pc),r0
    mov 0x00,r6
    mov.l @(PTR_ce32208,pc),r1
    mov r6,r5
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32208,pc),r3
    mov r14,r4
    mov 0x01,r6
    mov 0x00,r5
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce32188:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce3218e:
    mov r4,r3
    mov.l @(PTR_ce3220c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce321a0:
    mov.w @(DAT_ce321e6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce321b2
    mov 0x01,r0
    mov.b r0,@(0x6,r14)
    
LAB_ce321b2:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32210,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce321c2:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce321e8,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32214
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce322d2
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce321e2:
    #data 0x01a1
DAT_ce321e4:
    #data 0x0141
DAT_ce321e6:
    #data 0x01f9
DAT_ce321e8:
    #data 0x0201
#align4
    
PTR_ce321ec:
    #data loc_8c056de4
PTR_ce321f0:
    #data loc_8c05218a
PTR_ce321f4:
    #data loc_8c035162
PTR_ce321f8:
    #data loc_8c2896b0
PTR_ce321fc:
    #data loc_8c034e8c
PTR_ce32200:
    #data loc_8c034dee
PTR_ce32204:
    #data loc_8c05176e
PTR_ce32208:
    #data loc_8c0a8598
PTR_ce3220c:
    #data PTR_ce331d8
PTR_ce32210:
    #data PTR_ce331e0
    
;=============================================
    
LAB_ce32214:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32354,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32358,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3234c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32238
    mov.l @(PTR_ce3235c,pc),r2
    jsr @r2
    mov r14,r4
    
LAB_ce32238:
    mov.w @(DAT_ce3234e,pc),r0
    mov 0x01,r3
    mov 0x00,r13
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce32350,pc),r0
    mov 0x1A,r5
    mov.l @r15,r2
    mov r13,r6
    mov.w r0,@(0x4,r2)
    add 0x19,r0
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov.b r13,@(r0,r14)
    add 0xD8,r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32360,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce32368,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32364,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce3228a
    mov.l @r15+,r14
    
LAB_ce3228a:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r1
    mov.l @(PTR_ce3236c,pc),r3
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
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce322cc
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32370,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce322cc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce322d2:
    mov.w @(DAT_ce3234e,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce32374,pc),r0
    mov.l @(PTR_ce32378,pc),r3
    fmov.s @r0,fr3
    mov 0x6C,r0
    jmp @r3
    fmov fr3,@(r0,r4)
    
LAB_ce322f6:
    mov r4,r3
    mov.l @(PTR_ce3237c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
;=============================================
    
FUN_ce32308:
    mov.w @(DAT_ce32352,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x1A,r0
    bf LAB_ce3239e
    mov.l @(PTR_ce32354,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3234e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32384
    mova @(DAT_ce32380,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fdiv fr4,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr2
    fdiv fr4,fr2
    bra LAB_ce3239e
    fmov fr2,@(r0,r14)
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce3234c:
    #data 0x01f9
DAT_ce3234e:
    #data 0x0201
DAT_ce32350:
    #data 0x01e0
DAT_ce32352:
    #data 0x0159
#align4
    
PTR_ce32354:
    #data loc_8c05218a
PTR_ce32358:
    #data loc_8c035162
PTR_ce3235c:
    #data loc_8c05115a
DAT_ce32360:
    #data 0x414db6db
DAT_ce32364:
    #data 0xbe892492
PTR_ce32368:
    #data loc_8c034e8c
PTR_ce3236c:
    #data loc_8c034dee
PTR_ce32370:
    #data loc_8c051648
DAT_ce32374:
    #data 0xbf4db6db
PTR_ce32378:
    #data loc_8c05176e
PTR_ce3237c:
    #data PTR_ce331e8
DAT_ce32380:
    #data 0x41000000
    
;=============================================
    
LAB_ce32384:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce324d4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    
LAB_ce3239e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce323a4:
    mov.w @(DAT_ce324be,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce323c6
    mov r5,r13
    mov.w @(DAT_ce324c2,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce324c0,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)
    
LAB_ce323c6:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce324d8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce324dc,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce324e0,pc),r3
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
    mov 0x00,r12
    mov.w @(DAT_ce324c4,pc),r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce324c6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x3,r13)
    mov 0x3D,r3
    mov.b r0,@(0x6,r13)
    mov 0x16,r5
    mov.w @(DAT_ce324c8,pc),r0
    mov r12,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce324e4,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce324e8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    mov.l @r15+,r14
    
LAB_ce32442:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce324ca,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce324cc,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce324be,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32466
    bra LAB_ce32468
    mov 0x02,r3
    
LAB_ce32466:
    mov 0x00,r3
    
LAB_ce32468:
    mov.w @(DAT_ce324ce,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce324ec,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce324d0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32498
    mov 0x00,r3
    mov r3,r5
    mov r3,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce324f0,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce32498
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce324f4,pc),r3
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce32498:
    mov.l @r15,r2
    mov.b @(0x3,r2),r0
    tst r0,r0
    bt LAB_ce324b6
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov r14,r4
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce324e8,pc),r3
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce324b6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce324be:
    #data 0x0255
DAT_ce324c0:
    #data 0x00ff
DAT_ce324c2:
    #data 0x03f0
DAT_ce324c4:
    #data 0x01f9
DAT_ce324c6:
    #data 0x041c
DAT_ce324c8:
    #data 0x01a1
DAT_ce324ca:
    #data 0x03f8
DAT_ce324cc:
    #data 0x0328
DAT_ce324ce:
    #data 0x03f1
DAT_ce324d0:
    #data 0x0141
#align4
    
DAT_ce324d4:
    #data 0xbf4db6db
PTR_ce324d8:
    #data loc_8c05218a
PTR_ce324dc:
    #data loc_8c035162
PTR_ce324e0:
    #data loc_8c05115a
PTR_ce324e4:
    #data loc_8c2896b0
PTR_ce324e8:
    #data loc_8c034e8c
PTR_ce324ec:
    #data loc_8c034dee
PTR_ce324f0:
    #data loc_8c0a8b8c
PTR_ce324f4:
    #data loc_8c051648
    
;=============================================
    
LAB_ce324f8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32622,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32624,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32626,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3251c
    bra LAB_ce3251e
    mov 0x02,r3
    
LAB_ce3251c:
    mov 0x00,r3
    
LAB_ce3251e:
    mov.w @(DAT_ce32628,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32634,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3262a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce3258c
    mov.w @(DAT_ce3262a,pc),r0
    mov 0x00,r13
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x78,r0
    mov.w r0,@(0x1c,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce32638,pc),r2
    mov r0,r5
    mov.w r0,@(0x1e,r14)
    mov r0,r6
    jsr @r2
    mov r14,r4
    tst r0,r0
    bf LAB_ce32566
    mov.l @(PTR_ce3263c,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce3258c
    nop
    
LAB_ce32566:
    mova @(DAT_ce32640,pc),r0
    mov.l @(PTR_ce32648,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32644,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce3262c,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    
LAB_ce3258c:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
    
LAB_ce32596:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32622,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32624,pc),r0
    mov.l @(PTR_ce32634,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce325e0
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    mov 0x01,r0
    mov.l @r15,r3
    mov.b r0,@(0x6,r3)
    mov.w @(DAT_ce3262e,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32630,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    
LAB_ce325e0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce325e8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32634,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3261c
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce3264c,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32650,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce3261c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce32622:
    #data 0x03f8
DAT_ce32624:
    #data 0x0328
DAT_ce32626:
    #data 0x0255
DAT_ce32628:
    #data 0x03f1
DAT_ce3262a:
    #data 0x0141
DAT_ce3262c:
    #data 0x03f0
DAT_ce3262e:
    #data 0x03f9
DAT_ce32630:
    #data 0x0327
#align4
    
PTR_ce32634:
    #data loc_8c034dee
PTR_ce32638:
    #data loc_8c0a8fa4
PTR_ce3263c:
    #data loc_8c051648
DAT_ce32640:
    #data 0xc3235555
DAT_ce32644:
    #data 0x434fdb6d
PTR_ce32648:
    #data loc_8c050834
PTR_ce3264c:
    #data loc_8c034e8c
PTR_ce32650:
    #data loc_8c0a8b8c
    
;=============================================
    
LAB_ce32654:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32714,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3266e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32718,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce3266e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
LAB_ce32676:
    mov r4,r3
    mov.l @(PTR_ce3271c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce32688:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32720,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32724,pc),r2
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
    mov 0x00,r3
    mov.w @(DAT_ce3270e,pc),r0
    mov 0x14,r5
    mov 0x03,r6
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32710,pc),r0
    mov.l @(PTR_ce32728,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14
    
LAB_ce326da:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32714,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce326f4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32718,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce326f4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
LAB_ce326fc:
    mov r4,r3
    mov.l @(PTR_ce3272c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce3270e:
    #data 0x01f9
DAT_ce32710:
    #data 0x041c
#align4
    
PTR_ce32714:
    #data loc_8c034dee
PTR_ce32718:
    #data loc_8c051648
PTR_ce3271c:
    #data PTR_ce331f0
PTR_ce32720:
    #data loc_8c05218a
PTR_ce32724:
    #data loc_8c035162
PTR_ce32728:
    #data loc_8c034e8c
PTR_ce3272c:
    #data PTR_ce33208
    
;=============================================
    
LAB_ce32730:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    fldi0 fr4
    mov 0x00,r13
    mov.l @(PTR_ce32870,pc),r3
    mov.l r5,@r15
    mov r13,r5
    mov.b @(0x6,r14),r0
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
    mov.w @(DAT_ce32868,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3286a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32874,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32878,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3286c,pc),r0
    mov 0x47,r2
    mov.l @(PTR_ce3287c,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x0C,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32880,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x28,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14
    
LAB_ce327b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32884,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce327e6
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce32880,pc),r3
    mov 0x0D,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce327e6:
    mov.w @(DAT_ce3286e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32804
    mov.w @(DAT_ce3286e,pc),r0
    mov 0x01,r5
    mov.l @(PTR_ce32888,pc),r1
    mov 0x08,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    
LAB_ce32804:
    mov.w @(DAT_ce3286e,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce3282c
    mov.w @(DAT_ce3286e,pc),r0
    mov r15,r5
    fldi0 fr3
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce3288c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce32890,pc),r2
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4
    
LAB_ce3282c:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;=============================================
    
FUN_ce32834:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32884,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3284e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32894,pc),r3
    jmp @r3
    lds.l @r15+,PR
    
LAB_ce3284e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop
    
LAB_ce32856:
    mov r4,r3
    mov.l @(PTR_ce32898,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce32868:
    #data 0x01f9
DAT_ce3286a:
    #data 0x041c
DAT_ce3286c:
    #data 0x01a1
DAT_ce3286e:
    #data 0x0141
#align4
    
PTR_ce32870:
    #data loc_8c035162
PTR_ce32874:
    #data loc_8c05218a
PTR_ce32878:
    #data loc_8c05115a
PTR_ce3287c:
    #data loc_8c2896b0
PTR_ce32880:
    #data loc_8c034e8c
PTR_ce32884:
    #data loc_8c034dee
PTR_ce32888:
    #data loc_8c0a960c
DAT_ce3288c:
    #data 0x42fcdb6d
PTR_ce32890:
    #data loc_8c050ea4
PTR_ce32894:
    #data loc_8c051648
PTR_ce32898:
    #data PTR_ce33210
    
;=============================================
    
LAB_ce3289c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce329b0,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce329b4,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce329b8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3299e,pc),r0
    mov 0x05,r2
    mov 0x00,r4
    mov.l @(PTR_ce329bc,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov 0x08,r5
    mov.b @(0x2,r14),r0
    mov 0x02,r6
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce329c0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14
    
LAB_ce328fa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce329c4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32914
    lds.l @r15+,PR
    mov.l @(PTR_ce329c8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce32914:
    mov.w @(DAT_ce329a0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3292e
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x04,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce329cc,pc),r3
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce3292e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce32934:
    mov r4,r3
    mov.l @(PTR_ce329d0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce32946:
    mov.w @(DAT_ce329a4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce329d4,pc),r0
    extu.b r3,r3
    mov.w @(DAT_ce329a2,pc),r5
    shll2 r3
    mov.l @(r0,r3),r2
    add r14,r5
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce3295e:
    mov.w @(DAT_ce329a6,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce329a8,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32a0c
    mov.w @(DAT_ce329aa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce329dc
    mov.w @(DAT_ce329ac,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce329dc
    mov.l @(PTR_ce329d8,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32a0c
    mov r0,r4
    bra LAB_ce329fe
    mov 0x02,r2
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce3299e:
    #data 0x01a1
DAT_ce329a0:
    #data 0x0141
DAT_ce329a2:
    #data 0x02a4
DAT_ce329a4:
    #data 0x01e9
DAT_ce329a6:
    #data 0x01fa
DAT_ce329a8:
    #data 0x0c00
DAT_ce329aa:
    #data 0x01fe
DAT_ce329ac:
    #data 0x01a3
#align4
    
PTR_ce329b0:
    #data loc_8c05218a
PTR_ce329b4:
    #data loc_8c035162
PTR_ce329b8:
    #data loc_8c05115a
PTR_ce329bc:
    #data loc_8c2896b0
PTR_ce329c0:
    #data loc_8c034e8c
PTR_ce329c4:
    #data loc_8c034dee
PTR_ce329c8:
    #data loc_8c051648
PTR_ce329cc:
    #data loc_8c0a960c
PTR_ce329d0:
    #data PTR_ce3321c
PTR_ce329d4:
    #data PTR_ce33224
PTR_ce329d8:
    #data loc_8c045790
    
;=============================================
    
LAB_ce329dc:
    mov.w @(DAT_ce32b12,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32a0c
    mov.w @(DAT_ce32b14,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32a0c
    mov.l @(PTR_ce32b24,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32a0c
    mov r0,r4
    mov 0x00,r2
    
LAB_ce329fe:
    mov.w @(DAT_ce32b16,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce32a0c:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce32a14:
    mov.w @(DAT_ce32b18,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32b1a,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32a60
    mov.w @(DAT_ce32b12,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32a60
    mov.w @(DAT_ce32b14,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32a60
    mov.l @(PTR_ce32b24,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32a60
    mov r0,r4
    mov.w @(DAT_ce32b16,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce32a60:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce32a68:
    rts
    mov 0x00,r0
    
LAB_ce32a6c:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32b1c,pc),r1
    mov.l @(PTR_ce32b28,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15
    
LAB_ce32a84:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce32aa8
    mov.w @(DAT_ce32b1e,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce32b20,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    
LAB_ce32aa8:
    mov.w @(DAT_ce32b22,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r6
    mov.l @(PTR_ce32b2c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32b30,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32b34,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32b20,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32aea
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    
LAB_ce32aea:
    mova @(DAT_ce32b38,pc),r0
    mov.l @(PTR_ce32b40,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32b3c,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32b44,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce32b12:
    #data 0x01fe
DAT_ce32b14:
    #data 0x01a3
DAT_ce32b16:
    #data 0x01f7
DAT_ce32b18:
    #data 0x01fa
DAT_ce32b1a:
    #data 0x0c00
DAT_ce32b1c:
    #data 0x01f9
DAT_ce32b1e:
    #data 0x01d2
DAT_ce32b20:
    #data 0x0130
DAT_ce32b22:
    #data 0x01a0
#align4
    
PTR_ce32b24:
    #data loc_8c045790
PTR_ce32b28:
    #data PTR_ce3324c
PTR_ce32b2c:
    #data loc_8c034e8c
DAT_ce32b30:
    #data 0xc1200000
DAT_ce32b34:
    #data 0xbed55555
DAT_ce32b38:
    #data 0xc2695555
DAT_ce32b3c:
    #data 0x43070000
PTR_ce32b40:
    #data loc_8c103660
PTR_ce32b44:
    #data loc_8c056f2a
    
;=============================================
    
LAB_ce32b48:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce32b6c
    mov.w @(DAT_ce32c3c,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce32c3e,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    
LAB_ce32b6c:
    mov.w @(DAT_ce32c40,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x03,r6
    mov.l @(PTR_ce32c44,pc),r3
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
    mova @(DAT_ce32c48,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32c4c,pc),r0
    mov.l @(PTR_ce32c50,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32c54,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce32bb6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce32bda
    mov.w @(DAT_ce32c3c,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce32c3e,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)
    
LAB_ce32bda:
    mov.w @(DAT_ce32c40,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x04,r6
    mov.l @(PTR_ce32c44,pc),r3
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
    mova @(DAT_ce32c48,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32c4c,pc),r0
    mov.l @(PTR_ce32c50,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32c54,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce32c28:
    mov.w @(DAT_ce32c42,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce32c58,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce32c3c:
    #data 0x01d2
DAT_ce32c3e:
    #data 0x0130
DAT_ce32c40:
    #data 0x01a0
DAT_ce32c42:
    #data 0x01f7
#align4
    
PTR_ce32c44:
    #data loc_8c034e8c
DAT_ce32c48:
    #data 0xc2695555
DAT_ce32c4c:
    #data 0x43070000
PTR_ce32c50:
    #data loc_8c103660
PTR_ce32c54:
    #data loc_8c056f2a
PTR_ce32c58:
    #data PTR_ce3325c
    
;=============================================
    
LAB_ce32c5c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32d6e,pc),r0
    mov r4,r14
    mov.l @(r0,r14),r3
    mov.l r3,@r15
    mov.l @(PTR_ce32d78,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32d70,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32cba
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
    mov.w @(DAT_ce32d72,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32ca6
    mov.w @(DAT_ce32d72,pc),r0
    mov.l @r15,r3
    mov.b @(r0,r3),r2
    tst r2,r2
    bt LAB_ce32cba
    
LAB_ce32ca6:
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce32d7c,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x38,r0
    mov.w r0,@(0x1c,r14)
    
LAB_ce32cba:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce32cc2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32d78,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32ce2
    lds.l @r15+,PR
    mov.l @(PTR_ce32d80,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce32ce2:
    mov.w @(DAT_ce32d70,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32d00
    mov.w @(DAT_ce32d70,pc),r0
    mov 0x01,r5
    mov.l @(PTR_ce32d84,pc),r1
    mov 0x09,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    
LAB_ce32d00:
    mov.w @(DAT_ce32d70,pc),r0
    mov 0x02,r5
    mov.b @(r0,r14),r3
    tst r5,r3
    bt LAB_ce32d38
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r2
    mov.w @(DAT_ce32d6e,pc),r0
    mov.l @(r0,r14),r4
    add 0x2E,r0
    mov.b r2,@(r0,r4)
    add 0x03,r0
    mov.b r5,@(r0,r4)
    add 0xA8,r0
    mov 0x20,r5
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r4)
    mov 0x01,r2
    mov.b @(r0,r4),r1
    xor r2,r1
    mov.b r1,@(r0,r4)
    
LAB_ce32d38:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce32d3e:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32d88,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32d74,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce32d54:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32d78,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32d90
    lds.l @r15+,PR
    mov.l @(PTR_ce32d8c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce32d6e:
    #data 0x01c8
DAT_ce32d70:
    #data 0x0141
DAT_ce32d72:
    #data 0x01fd
DAT_ce32d74:
    #data 0x02a4
#align4
    
PTR_ce32d78:
    #data loc_8c034dee
PTR_ce32d7c:
    #data loc_8c034e8c
PTR_ce32d80:
    #data loc_8c051648
PTR_ce32d84:
    #data loc_8c0a960c
PTR_ce32d88:
    #data PTR_ce33268
PTR_ce32d8c:
    #data loc_8c05176e
    
;=============================================
    
LAB_ce32d90:
    mov.w @(DAT_ce32ece,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32dae
    mov.w @(DAT_ce32ece,pc),r0
    mov 0x01,r5
    mov.l @(PTR_ce32edc,pc),r1
    mov 0x07,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    
LAB_ce32dae:
    mov.w @(DAT_ce32ece,pc),r0
    mov 0x02,r5
    mov.b @(r0,r14),r3
    tst r5,r3
    bt LAB_ce32de6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r2
    mov.w @(DAT_ce32ed0,pc),r0
    mov.l @(r0,r14),r4
    add 0x2E,r0
    mov.b r2,@(r0,r4)
    add 0x03,r0
    mov.b r5,@(r0,r4)
    add 0xA8,r0
    mov 0x21,r5
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r4)
    mov 0x01,r2
    mov.b @(r0,r4),r1
    xor r2,r1
    mov.b r1,@(r0,r4)
    
LAB_ce32de6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce32dec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32ee0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32e0c
    lds.l @r15+,PR
    mov.l @(PTR_ce32ee4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14
    
LAB_ce32e0c:
    mov.w @(DAT_ce32ece,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32e2a
    mov.w @(DAT_ce32ece,pc),r0
    mov 0x01,r5
    mov.l @(PTR_ce32edc,pc),r1
    mov 0x09,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    
LAB_ce32e2a:
    mov.w @(DAT_ce32ece,pc),r0
    mov 0x02,r5
    mov.b @(r0,r14),r3
    tst r5,r3
    bt LAB_ce32e62
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r2
    mov.w @(DAT_ce32ed0,pc),r0
    mov.l @(r0,r14),r4
    add 0x2E,r0
    mov.b r2,@(r0,r4)
    add 0x03,r0
    mov.b r5,@(r0,r4)
    add 0xA8,r0
    mov 0x22,r5
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r14)
    add 0x31,r0
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r4)
    mov 0x01,r2
    mov.b @(r0,r4),r1
    xor r2,r1
    mov.b r1,@(r0,r4)
    
LAB_ce32e62:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
    
LAB_ce32e68:
    mov.w @(DAT_ce32ed2,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r2
    mov r14,r4
    mov.l @(PTR_ce32ee8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14
    
LAB_ce32e84:
    mov.w @(DAT_ce32ed0,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce32eec,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15
    
LAB_ce32e92:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32ed4,pc),r1
    mov.l @(PTR_ce32ef0,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15
    
LAB_ce32eaa:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32ed6,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce32ec4
    mov 0x01,r5
    cmp/eq 0x01,r0
    bt LAB_ce32ec4
    cmp/eq 0x02,r0
    bf LAB_ce32ec8
    
LAB_ce32ec4:
    mov.w @(DAT_ce32ed8,pc),r0
    mov.b r5,@(r0,r4)
    
LAB_ce32ec8:
    mov.l @(PTR_ce32ef4,pc),r2
    jmp @r2
    mov 0x1D,r5
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce32ece:
    #data 0x0141
DAT_ce32ed0:
    #data 0x01c8
DAT_ce32ed2:
    #data 0x01ea
DAT_ce32ed4:
    #data 0x01f7
DAT_ce32ed6:
    #data 0x04c9
DAT_ce32ed8:
    #data 0x01e9
#align4
    
PTR_ce32edc:
    #data loc_8c0a960c
PTR_ce32ee0:
    #data loc_8c034dee
PTR_ce32ee4:
    #data loc_8c051648
PTR_ce32ee8:
    #data PTR_ce33270
PTR_ce32eec:
    #data loc_8c04cc1c
PTR_ce32ef0:
    #data PTR_ce3327c
PTR_ce32ef4:
    #data loc_8c0530d8
    
;=============================================
    
LAB_ce32ef8:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32fa4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce32f12
    mov 0x01,r5
    cmp/eq 0x01,r0
    bt LAB_ce32f12
    cmp/eq 0x02,r0
    bf LAB_ce32f16
    
LAB_ce32f12:
    mov.w @(DAT_ce32fa6,pc),r0
    mov.b r5,@(r0,r4)
    
LAB_ce32f16:
    mov.l @(PTR_ce32fac,pc),r2
    jmp @r2
    mov 0x1D,r5
    
LAB_ce32f1c:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32fa4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce32f3c
    cmp/eq 0x01,r0
    bt LAB_ce32f48
    cmp/eq 0x02,r0
    bt LAB_ce32f4e
    bra LAB_ce32f5a
    nop
    
LAB_ce32f3c:
    mov.w @(DAT_ce32fa6,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce32f5a
    mov.b r5,@(r0,r4)
    
LAB_ce32f48:
    mov.w @(DAT_ce32fa6,pc),r0
    bra LAB_ce32f54
    mov.b r5,@(r0,r4)
    
LAB_ce32f4e:
    mov.w @(DAT_ce32fa6,pc),r0
    mov 0x09,r3
    mov.b r3,@(r0,r4)
    
LAB_ce32f54:
    mov.w @(DAT_ce32fa8,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)
    
LAB_ce32f5a:
    mov.l @(PTR_ce32fac,pc),r2
    jmp @r2
    mov 0x15,r5
    
LAB_ce32f60:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce32fa4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce32f80
    cmp/eq 0x01,r0
    bt LAB_ce32f8c
    cmp/eq 0x02,r0
    bt LAB_ce32f92
    bra LAB_ce32f9e
    nop
    
LAB_ce32f80:
    mov.w @(DAT_ce32fa6,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce32f9e
    mov.b r5,@(r0,r4)
    
LAB_ce32f8c:
    mov.w @(DAT_ce32fa6,pc),r0
    bra LAB_ce32f98
    mov.b r5,@(r0,r4)
    
LAB_ce32f92:
    mov.w @(DAT_ce32fa6,pc),r0
    mov 0x09,r3
    mov.b r3,@(r0,r4)
    
LAB_ce32f98:
    mov.w @(DAT_ce32fa8,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)
    
LAB_ce32f9e:
    mov.l @(PTR_ce32fac,pc),r2
    jmp @r2
    mov 0x15,r5
    
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    
DAT_ce32fa4:
    #data 0x04c9
DAT_ce32fa6:
    #data 0x01e9
DAT_ce32fa8:
    #data 0x01a3
#align4
    
PTR_ce32fac:
    #data loc_8c0530d8
DAT_ce32fb0:
    #data 0x0201
    #data 0x0200
DAT_ce32fb4:
    #data 0x02ff
    #data 0x0201
DAT_ce32fb8:
    #data 0xffff
    #data 0x02ff
DAT_ce32fbc:
    #data 0x0201
    #data 0x0201
DAT_ce32fc0:
    #data 0x02ff
    #data 0x02ff
DAT_ce32fc4:
    #data 0xffff
    #data 0xffff
DAT_ce32fc8:
    #data 0x0201
    #data 0x0200
DAT_ce32fcc:
    #data 0x02ff
    #data 0x0201
DAT_ce32fd0:
    #data 0xffff
    #data 0xffff
DAT_ce32fd4:
    #data 0x0201
    #data 0x0201
DAT_ce32fd8:
    #data 0x02ff
    #data 0x02ff
DAT_ce32fdc:
    #data 0xffff
    #data 0xffff
DAT_ce32fe0:
    #data 0x0201
    #data 0x0200
DAT_ce32fe4:
    #data 0x02ff
    #data 0x0201
DAT_ce32fe8:
    #data 0xffff
    #data 0x02ff
DAT_ce32fec:
    #data 0x0201
    #data 0x0201
DAT_ce32ff0:
    #data 0x02ff
    #data 0x02ff
DAT_ce32ff4:
    #data 0xffff
    #data 0xffff
DAT_ce32ff8:
    #data 0x0003
    #data 0x0000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33008:
    #data 0x0005
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
DAT_ce3301c:
    #data 0x0003
    #data 0x8000
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce3302c:
    #data 0x0003
    #data 0x9100
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
#align4
    
PTR_ce3303c:
    #data LAB_ce303d4
PTR_ce33040:
    #data LAB_ce3001c
PTR_ce33044:
    #data LAB_ce3040c
PTR_ce33048:
    #data LAB_ce30ae2
PTR_ce3304c:
    #data LAB_ce31322
PTR_ce33050:
    #data LAB_ce31476
PTR_ce33054:
    #data LAB_ce3180c
PTR_ce33058:
    #data LAB_ce318e2
PTR_ce3305c:
    #data LAB_ce32946
PTR_ce33060:
    #data LAB_ce32a6c
PTR_ce33064:
    #data LAB_ce32c28
PTR_ce33068:
    #data LAB_ce32e68
PTR_ce3306c:
    #data LAB_ce32e92
PTR_ce33070:
    #data FUN_ce30384
PTR_ce33074:
    #data LAB_ce31a3c
PTR_ce33078:
    #data LAB_ce3123c
PTR_ce3307c:
    #data LAB_ce32eaa
PTR_ce33080:
    #data LAB_ce32ef8
PTR_ce33084:
    #data LAB_ce32f1c
PTR_ce33088:
    #data LAB_ce32f60
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce330ac:
    #data LAB_ce30420
PTR_ce330b0:
    #data LAB_ce30780
PTR_ce330b4:
    #data LAB_ce307b0
PTR_ce330b8:
    #data LAB_ce30420
PTR_ce330bc:
    #data LAB_ce30b36
PTR_ce330c0:
    #data LAB_ce30f34
PTR_ce330c4:
    #data LAB_ce30f14
PTR_ce330c8:
    #data LAB_ce30b28
PTR_ce330cc:
    #data LAB_ce30bcc
PTR_ce330d0:
    #data FUN_ce30bee
PTR_ce330d4:
    #data LAB_ce30c9e
PTR_ce330d8:
    #data LAB_ce30c10
PTR_ce330dc:
    #data LAB_ce30c7c
PTR_ce330e0:
    #data LAB_ce30cc4
PTR_ce330e4:
    #data FUN_ce30ce6
PTR_ce330e8:
    #data LAB_ce30d08
PTR_ce330ec:
    #data LAB_ce30d56
PTR_ce330f0:
    #data LAB_ce30d78
PTR_ce330f4:
    #data LAB_ce30dd0
PTR_ce330f8:
    #data LAB_ce30e1e
PTR_ce330fc:
    #data LAB_ce30e40
PTR_ce33100:
    #data LAB_ce30eba
PTR_ce33104:
    #data LAB_ce30fa0
PTR_ce33108:
    #data LAB_ce30fcc
PTR_ce3310c:
    #data FUN_ce3103c
PTR_ce33110:
    #data LAB_ce31072
PTR_ce33114:
    #data FUN_ce31094
PTR_ce33118:
    #data LAB_ce31206
PTR_ce3311c:
    #data LAB_ce310d8
PTR_ce33120:
    #data LAB_ce31154
PTR_ce33124:
    #data LAB_ce311ee
PTR_ce33128:
    #data FUN_ce310b6
PTR_ce3312c:
    #data LAB_ce311f4
PTR_ce33130:
    #data LAB_ce31334
PTR_ce33134:
    #data LAB_ce313ba
PTR_ce33138:
    #data LAB_ce3141c
PTR_ce3313c:
    #data LAB_ce31488
PTR_ce33140:
    #data LAB_ce314f8
PTR_ce33144:
    #data FUN_ce3155a
PTR_ce33148:
    #data LAB_ce3157c
PTR_ce3314c:
    #data LAB_ce315c2
PTR_ce33150:
    #data LAB_ce31640
PTR_ce33154:
    #data LAB_ce316a2
PTR_ce33158:
    #data LAB_ce316fa
PTR_ce3315c:
    #data LAB_ce3176c
PTR_ce33160:
    #data LAB_ce317be
PTR_ce33164:
    #data LAB_ce3181e
PTR_ce33168:
    #data LAB_ce31852
PTR_ce3316c:
    #data LAB_ce31858
PTR_ce33170:
    #data LAB_ce3186a
PTR_ce33174:
    #data LAB_ce31884
PTR_ce33178:
    #data LAB_ce3186a
PTR_ce3317c:
    #data LAB_ce318c8
PTR_ce33180:
    #data LAB_ce3190e
PTR_ce33184:
    #data LAB_ce31976
PTR_ce33188:
    #data FUN_ce319e4
PTR_ce3318c:
    #data LAB_ce31a4e
PTR_ce33190:
    #data LAB_ce31aea
PTR_ce33194:
    #data LAB_ce31b1a
PTR_ce33198:
    #data LAB_ce31b52
PTR_ce3319c:
    #data LAB_ce31bc8
PTR_ce331a0:
    #data LAB_ce31bfc
PTR_ce331a4:
    #data LAB_ce31c88
PTR_ce331a8:
    #data LAB_ce31cbc
PTR_ce331ac:
    #data LAB_ce31d1c
PTR_ce331b0:
    #data LAB_ce31d54
PTR_ce331b4:
    #data LAB_ce31bea
PTR_ce331b8:
    #data LAB_ce31d80
PTR_ce331bc:
    #data LAB_ce31e04
PTR_ce331c0:
    #data LAB_ce31eb0
PTR_ce331c4:
    #data LAB_ce31eda
PTR_ce331c8:
    #data LAB_ce31f5c
PTR_ce331cc:
    #data FUN_ce31f8c
PTR_ce331d0:
    #data LAB_ce31fc0
PTR_ce331d4:
    #data LAB_ce32044
PTR_ce331d8:
    #data LAB_ce320d0
PTR_ce331dc:
    #data LAB_ce32142
PTR_ce331e0:
    #data LAB_ce32088
PTR_ce331e4:
    #data LAB_ce3218e
PTR_ce331e8:
    #data LAB_ce321c2
PTR_ce331ec:
    #data LAB_ce3228a
PTR_ce331f0:
    #data LAB_ce323a4
PTR_ce331f4:
    #data LAB_ce32442
PTR_ce331f8:
    #data LAB_ce324f8
PTR_ce331fc:
    #data LAB_ce32596
PTR_ce33200:
    #data LAB_ce325e8
PTR_ce33204:
    #data LAB_ce32654
PTR_ce33208:
    #data LAB_ce32688
PTR_ce3320c:
    #data LAB_ce326da
PTR_ce33210:
    #data LAB_ce32730
PTR_ce33214:
    #data LAB_ce327b4
PTR_ce33218:
    #data FUN_ce32834
PTR_ce3321c:
    #data LAB_ce3289c
PTR_ce33220:
    #data LAB_ce328fa
PTR_ce33224:
    #data LAB_ce31fae
PTR_ce33228:
    #data LAB_ce32676
PTR_ce3322c:
    #data LAB_ce31dcc
PTR_ce33230:
    #data LAB_ce321a0
PTR_ce33234:
    #data LAB_ce326fc
PTR_ce33238:
    #data LAB_ce322f6
PTR_ce3323c:
    #data LAB_ce31dcc
PTR_ce33240:
    #data LAB_ce31dcc
PTR_ce33244:
    #data LAB_ce32856
PTR_ce33248:
    #data LAB_ce32934
PTR_ce3324c:
    #data LAB_ce3295e
PTR_ce33250:
    #data LAB_ce32a68
PTR_ce33254:
    #data LAB_ce32a14
PTR_ce33258:
    #data LAB_ce32a68
PTR_ce3325c:
    #data LAB_ce32a84
PTR_ce33260:
    #data LAB_ce32b48
PTR_ce33264:
    #data LAB_ce32bb6
PTR_ce33268:
    #data LAB_ce32c5c
PTR_ce3326c:
    #data LAB_ce32cc2
PTR_ce33270:
    #data LAB_ce32d3e
PTR_ce33274:
    #data LAB_ce32d54
PTR_ce33278:
    #data LAB_ce32dec
PTR_ce3327c:
    #data LAB_ce32e84
PTR_ce33280:
    #data LAB_ce32e84
PTR_ce33284:
    #data LAB_ce32e84
