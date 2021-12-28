;╔══════════════════════════════════════════╗
;║ S_PL06 : Cyclops (Scott Summers) Program ║
;╚══════════════════════════════════════════╝
#symbol loc_8C03319E 0x8C03319E
#symbol loc_8C03362C 0x8C03362C
#symbol loc_8C034DEE 0x8C034DEE
#symbol loc_8C034E8C 0x8C034E8C
#symbol loc_8C035162 0x8C035162
#symbol loc_8C03544C 0x8C03544C
#symbol loc_8C042008 0x8C042008
#symbol loc_8C04223A 0x8C04223A
#symbol loc_8C0423FC 0x8C0423FC
#symbol loc_8C045790 0x8C045790
#symbol loc_8C046C8A 0x8C046C8A
#symbol loc_8C04CC1C 0x8C04CC1C
#symbol loc_8C04FEA8 0x8C04FEA8
#symbol loc_8C04FF88 0x8C04FF88
#symbol loc_8C050048 0x8C050048
#symbol loc_8C050084 0x8C050084
#symbol loc_8C050834 0x8C050834
#symbol loc_8C050EA4 0x8C050EA4
#symbol loc_8C05115A 0x8C05115A
#symbol loc_8C0511B4 0x8C0511B4
#symbol loc_8C0511E2 0x8C0511E2
#symbol loc_8C051648 0x8C051648
#symbol loc_8C05176E 0x8C05176E
#symbol loc_8C051854 0x8C051854
#symbol loc_8C05218A 0x8C05218A
#symbol loc_8C05225E 0x8C05225E
#symbol loc_8C0522E0 0x8C0522E0
#symbol loc_8C052B4C 0x8C052B4C
#symbol loc_8C052C84 0x8C052C84
#symbol loc_8C052CE2 0x8C052CE2
#symbol loc_8C052DAC 0x8C052DAC
#symbol loc_8C053082 0x8C053082
#symbol loc_8C0530D8 0x8C0530D8
#symbol loc_8C053E00 0x8C053E00
#symbol loc_8C0542E0 0x8C0542E0
#symbol loc_8C054508 0x8C054508
#symbol loc_8C05496C 0x8C05496C
#symbol loc_8C054B34 0x8C054B34
#symbol loc_8C054D04 0x8C054D04
#symbol loc_8C054D1C 0x8C054D1C
#symbol loc_8C054DA0 0x8C054DA0
#symbol loc_8C054E58 0x8C054E58
#symbol loc_8C055066 0x8C055066
#symbol loc_8C055C3A 0x8C055C3A
#symbol loc_8C055D54 0x8C055D54
#symbol loc_8C056DE4 0x8C056DE4
#symbol loc_8C056F2A 0x8C056F2A
#symbol loc_8C068B40 0x8C068B40
#symbol loc_8C068EE4 0x8C068EE4
#symbol loc_8C0699DC 0x8C0699DC
#symbol loc_8C0BFC20 0x8C0BFC20
#symbol loc_8C103660 0x8C103660
#symbol loc_8C1294C8 0x8C1294C8
#symbol loc_8C129728 0x8C129728
#symbol loc_8C26823C 0x8C26823C
#symbol loc_8C2896B0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300ce,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300d0,pc),r7
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
    mov.l @(PTR_ce300d4,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c8
    mov.l @(PTR_ce300d8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c8
    mov.l @(PTR_ce300dc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c8
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c8
    bsr FUN_ce300ec
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c8
    bsr FUN_ce30152
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c8
    bsr FUN_ce30240
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c8
    bsr FUN_ce30288
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c8
    bsr FUN_ce3037e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c8
    bsr FUN_ce301d8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c8
    bsr FUN_ce303c4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c8
    bsr FUN_ce302c6
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c8
    bsr FUN_ce30340
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c8
    bsr FUN_ce3040c
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c8
    bsr FUN_ce30478
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c8
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300e8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300c8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300ce:
    #data 0x0428
    #align4

PTR_ce300d0:
    #data PTR_ce33e9c
PTR_ce300d4:
    #data loc_8c054508
PTR_ce300d8:
    #data loc_8c054b34
PTR_ce300dc:
    #data loc_8c05496c
PTR_ce300e0:
    #data loc_8c054d04
PTR_ce300e4:
    #data loc_8c053e00
PTR_ce300e8:
    #data loc_8c0542e0

;=============================================

FUN_ce300ec:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301c8,pc),r5
    mov.w @(DAT_ce301b8,pc),r6
    mov.l @(PTR_ce301cc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30126
    mov.w @(DAT_ce301ba,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30126
    mov.w @(DAT_ce301bc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30134
    mov.w @(DAT_ce301be,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30134
    mov.w @(DAT_ce301c0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3012e

LAB_ce30126:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3012e:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30134:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301c2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301d0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30152:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301d4,pc),r5
    mov.w @(DAT_ce301c4,pc),r6
    mov.l @(PTR_ce301cc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3018c
    mov.w @(DAT_ce301ba,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce3018c
    mov.w @(DAT_ce301bc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3019a
    mov.w @(DAT_ce301be,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3019a
    mov.w @(DAT_ce301c0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30194

LAB_ce3018c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30194:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3019a:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301c2,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301d0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301b8:
    #data 0x0374
DAT_ce301ba:
    #data 0x040c
DAT_ce301bc:
    #data 0x01f9
DAT_ce301be:
    #data 0x01fc
DAT_ce301c0:
    #data 0x01d4
DAT_ce301c2:
    #data 0x01e9
DAT_ce301c4:
    #data 0x036c
    #align4

PTR_ce301c8:
    #data DAT_ce33e0c
PTR_ce301cc:
    #data loc_8c054e58
PTR_ce301d0:
    #data loc_8c0530d8
PTR_ce301d4:
    #data DAT_ce33e1c

;=============================================

FUN_ce301d8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce302f8,pc),r5
    mov.w @(DAT_ce302e4,pc),r6
    mov.l @(PTR_ce302fc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30208
    mov.w @(DAT_ce302e6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30216
    mov.w @(DAT_ce302e8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30216
    mov.w @(DAT_ce302ea,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30210

LAB_ce30208:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30210:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30216:
    mov.w @(DAT_ce302e4,pc),r5
    mov.l @(PTR_ce30300,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce302ec,pc),r0
    mov.l @(PTR_ce30304,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30240:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30308,pc),r5
    mov.w @(DAT_ce302ee,pc),r6
    mov.l @(PTR_ce302fc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3025e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3025e:
    mov.w @(DAT_ce302ee,pc),r5
    mov.l @(PTR_ce30300,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce302ec,pc),r0
    mov 0x03,r2
    mov.l @(PTR_ce30304,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
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

FUN_ce30288:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3030c,pc),r5
    mov.w @(DAT_ce302f0,pc),r6
    mov.l @(PTR_ce302fc,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302aa
    mov.l @(PTR_ce30310,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bf/s LAB_ce302b2
    mov r0,r5

LAB_ce302aa:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302b2:
    mov.w @(DAT_ce302f2,pc),r0
    mov 0x43,r2
    mov.l @(PTR_ce30314,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302c6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30318,pc),r5
    mov.w @(DAT_ce302f4,pc),r6
    mov.l @(PTR_ce3031c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30320
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce302e4:
    #data 0x0364
DAT_ce302e6:
    #data 0x01f9
DAT_ce302e8:
    #data 0x01fc
DAT_ce302ea:
    #data 0x01d4
DAT_ce302ec:
    #data 0x01e9
DAT_ce302ee:
    #data 0x037c
DAT_ce302f0:
    #data 0x03a4
DAT_ce302f2:
    #data 0x01f7
DAT_ce302f4:
    #data 0x0384
    #align4

PTR_ce302f8:
    #data DAT_ce33e2c
PTR_ce302fc:
    #data loc_8c054e58
PTR_ce30300:
    #data loc_8c055c3a
PTR_ce30304:
    #data loc_8c0530d8
PTR_ce30308:
    #data DAT_ce33e5c
PTR_ce3030c:
    #data DAT_ce33e88
PTR_ce30310:
    #data loc_8c045790
PTR_ce30314:
    #data loc_8c0522e0
PTR_ce30318:
    #data DAT_ce33e6c
PTR_ce3031c:
    #data loc_8c055066

;=============================================

LAB_ce30320:
    mov.w @(DAT_ce3044c,pc),r0
    mov 0x04,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30458,pc),r3
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

FUN_ce30340:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3045c,pc),r5
    mov.w @(DAT_ce3044e,pc),r6
    mov.l @(PTR_ce30460,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3035e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3035e:
    mov.w @(DAT_ce3044c,pc),r0
    mov 0x09,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30458,pc),r3
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

FUN_ce3037e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30464,pc),r5
    mov.w @(DAT_ce30450,pc),r6
    mov.l @(PTR_ce30468,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3039c
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3039c:
    mov.w @(DAT_ce30450,pc),r5
    mov.l @(PTR_ce3046c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3044c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30458,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303c4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30470,pc),r5
    mov.w @(DAT_ce30452,pc),r6
    mov.l @(PTR_ce30468,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303e2
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303e2:
    mov.w @(DAT_ce30452,pc),r5
    mov.l @(PTR_ce3046c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3044c,pc),r0
    mov 0x07,r2
    mov.l @(PTR_ce30458,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
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

FUN_ce3040c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30474,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30424
    mov.w @(DAT_ce30454,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3042c

LAB_ce30424:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3042c:
    mov.w @(DAT_ce3044c,pc),r0
    mov 0x0C,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30458,pc),r3
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

DAT_ce3044c:
    #data 0x01e9
DAT_ce3044e:
    #data 0x0394
DAT_ce30450:
    #data 0x038c
DAT_ce30452:
    #data 0x039c
DAT_ce30454:
    #data 0x040c
    #align4

PTR_ce30458:
    #data loc_8c0530d8
PTR_ce3045c:
    #data DAT_ce33e7a
PTR_ce30460:
    #data loc_8c055066
PTR_ce30464:
    #data DAT_ce33e3c
PTR_ce30468:
    #data loc_8c054e58
PTR_ce3046c:
    #data loc_8c055c3a
PTR_ce30470:
    #data DAT_ce33e4c
PTR_ce30474:
    #data loc_8c054d1c

;=============================================

FUN_ce30478:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30590,pc),r3
    jsr @r3
    mov 0x0B,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30492
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30492:
    mov.w @(DAT_ce3057c,pc),r0
    mov 0x0B,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30594,pc),r3
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

FUN_ce304b2:
    sts.l PR,@-r15
    add 0xFC,r15
    bsr FUN_ce304d8
    mov.l r4,@r15
    tst r0,r0
    bf LAB_ce304c6
    bsr FUN_ce3050e
    mov.l @r15,r4
    tst r0,r0
    bt LAB_ce304ce

LAB_ce304c6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce304ce:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce304d8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30598,pc),r5
    mov.w @(DAT_ce3057e,pc),r6
    mov.l @(PTR_ce3059c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304f8
    mov.w @(DAT_ce30580,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30500

LAB_ce304f8:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30500:
    mov.w @(DAT_ce30582,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3050e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce305a0,pc),r5
    mov.w @(DAT_ce30584,pc),r6
    mov.l @(PTR_ce3059c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30538
    mov.w @(DAT_ce30580,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce30538
    mov.w @(DAT_ce30586,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30540

LAB_ce30538:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30540:
    mov.w @(DAT_ce30582,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r2,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30550:
    mov.w @(DAT_ce30588,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3055e
    mov.b @(0x5,r4),r0
    tst r0,r0
    bt LAB_ce30564

LAB_ce3055e:
    mov.w @(DAT_ce3058a,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r4)

LAB_ce30564:
    rts
    nop

LAB_ce30568:
    mov.w @(DAT_ce3058c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce305a4,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3057c:
    #data 0x01e9
DAT_ce3057e:
    #data 0x0374
DAT_ce30580:
    #data 0x040c
DAT_ce30582:
    #data 0x0258
DAT_ce30584:
    #data 0x036c
DAT_ce30586:
    #data 0x01f9
DAT_ce30588:
    #data 0x01a0
DAT_ce3058a:
    #data 0x02a8
DAT_ce3058c:
    #data 0x01ff
    #align4

PTR_ce30590:
    #data loc_8c054da0
PTR_ce30594:
    #data loc_8c0530d8
PTR_ce30598:
    #data DAT_ce33e0c
PTR_ce3059c:
    #data loc_8c054e58
PTR_ce305a0:
    #data DAT_ce33e1c
PTR_ce305a4:
    #data PTR_ce33f0c

;=============================================

LAB_ce305a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce306a8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30696,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce305d6
    mov.w @(DAT_ce30698,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce305ce
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30832
    mov.l @r15+,r14

LAB_ce305ce:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3076a
    mov.l @r15+,r14

LAB_ce305d6:
    mov.w @(DAT_ce30698,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce305e8
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce306c4
    mov.l @r15+,r14

LAB_ce305e8:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce305f0
    mov.l @r15+,r14

LAB_ce305f0:
    mov.w @(DAT_ce3069a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x01,r12
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30614
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30634
    cmp/eq 0x02,r0
    bt LAB_ce30650
    bra LAB_ce30664
    nop

LAB_ce30614:
    mov.w @(DAT_ce3069c,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce306ac,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3069e,pc),r0
    mov.l @(PTR_ce306b0,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce306a0,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce306a2,pc),r0
    bra LAB_ce3064c
    nop

LAB_ce30634:
    mov.w @(DAT_ce3069c,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce306ac,pc),r3
    mov.b r12,@(r0,r14)
    add 0x49,r0
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3069e,pc),r0
    mov.l @(PTR_ce306b4,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce306a0,pc),r0

LAB_ce3064c:
    bra LAB_ce30664
    mov.b r12,@(r0,r14)

LAB_ce30650:
    mov.w @(DAT_ce3069c,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce306b8,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3069e,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306a0,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30664:
    mov.w @(DAT_ce306a4,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce306bc,pc),r3
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
    mov.w @(DAT_ce3069c,pc),r0
    mov.l @(PTR_ce306c0,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30696:
    #data 0x01fe
DAT_ce30698:
    #data 0x01f9
DAT_ce3069a:
    #data 0x01e8
DAT_ce3069c:
    #data 0x0158
DAT_ce3069e:
    #data 0x03f4
DAT_ce306a0:
    #data 0x01a7
DAT_ce306a2:
    #data 0x02a2
DAT_ce306a4:
    #data 0x01ac
    #align4

PTR_ce306a8:
    #data loc_8c052b4c
PTR_ce306ac:
    #data loc_8c04223a
PTR_ce306b0:
    #data DAT_ce33dc4
PTR_ce306b4:
    #data DAT_ce33dc8
PTR_ce306b8:
    #data DAT_ce33dcc
PTR_ce306bc:
    #data loc_8c2896b0
PTR_ce306c0:
    #data loc_8c034e8c

;=============================================

LAB_ce306c4:
    mov.w @(DAT_ce307b8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce306e4
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30702
    cmp/eq 0x02,r0
    bt LAB_ce30724
    bra LAB_ce3073a
    nop

LAB_ce306e4:
    mov.w @(DAT_ce307ba,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce307c4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce307bc,pc),r0
    mov.l @(PTR_ce307c8,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307be,pc),r0
    bra LAB_ce3073a
    mov.b r13,@(r0,r14)

LAB_ce30702:
    mov.w @(DAT_ce307ba,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.l @(PTR_ce307c4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce307bc,pc),r0
    mov 0x01,r3
    mov.l @(PTR_ce307cc,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307be,pc),r0
    bra LAB_ce3073a
    mov.b r3,@(r0,r14)

LAB_ce30724:
    mov.w @(DAT_ce307ba,pc),r0
    mov 0x02,r4
    mov 0x08,r3
    mov.l @(PTR_ce307d0,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce307bc,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce307be,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3073a:
    mov.w @(DAT_ce307c0,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce307d4,pc),r3
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
    mov.w @(DAT_ce307ba,pc),r0
    mov.l @(PTR_ce307d8,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce3076a:
    mov.w @(DAT_ce307b8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3078a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307a2
    cmp/eq 0x02,r0
    bt LAB_ce307e4
    bra LAB_ce307fc
    nop

LAB_ce3078a:
    mov.w @(DAT_ce307ba,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce307bc,pc),r0
    mov.l @(PTR_ce307dc,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307be,pc),r0
    bra LAB_ce307fc
    mov.b r13,@(r0,r14)

LAB_ce307a2:
    mov.w @(DAT_ce307ba,pc),r0
    mov 0x01,r4
    mov 0x04,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce307bc,pc),r0
    mov.l @(PTR_ce307e0,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce307f8
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307b8:
    #data 0x01e8
DAT_ce307ba:
    #data 0x0158
DAT_ce307bc:
    #data 0x03f4
DAT_ce307be:
    #data 0x01a7
DAT_ce307c0:
    #data 0x01ac
    #align4

PTR_ce307c4:
    #data loc_8c04223a
PTR_ce307c8:
    #data DAT_ce33dc4
PTR_ce307cc:
    #data DAT_ce33dc8
PTR_ce307d0:
    #data DAT_ce33dcc
PTR_ce307d4:
    #data loc_8c2896b0
PTR_ce307d8:
    #data loc_8c034e8c
PTR_ce307dc:
    #data DAT_ce33dd0
PTR_ce307e0:
    #data DAT_ce33dd4

;=============================================

LAB_ce307e4:
    mov.w @(DAT_ce308f6,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.l @(PTR_ce30904,pc),r3
    mov.w @(DAT_ce308f8,pc),r0
    mov.l r3,@(r0,r14)

LAB_ce307f8:
    mov.w @(DAT_ce308fa,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce307fc:
    mov.l @(PTR_ce30908,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce308fc,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce3090c,pc),r3
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
    mov.w @(DAT_ce308f6,pc),r0
    mov.l @(PTR_ce30910,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce30832:
    mov.w @(DAT_ce308fe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30852
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3086a
    cmp/eq 0x02,r0
    bt LAB_ce30880
    bra LAB_ce30898
    nop

LAB_ce30852:
    mov.w @(DAT_ce308f6,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce308f8,pc),r0
    mov.l @(PTR_ce30914,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308fa,pc),r0
    bra LAB_ce30898
    mov.b r13,@(r0,r14)

LAB_ce3086a:
    mov.w @(DAT_ce308f6,pc),r0
    mov 0x01,r4
    mov 0x0A,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce308f8,pc),r0
    mov.l @(PTR_ce30918,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30894
    mov 0x15,r5

LAB_ce30880:
    mov.w @(DAT_ce308f6,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.l @(PTR_ce30904,pc),r3
    mov.w @(DAT_ce308f8,pc),r0
    mov.l r3,@(r0,r14)

LAB_ce30894:
    mov.w @(DAT_ce308fa,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30898:
    mov.l @(PTR_ce30908,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce308fc,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce3090c,pc),r3
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
    mov.w @(DAT_ce308f6,pc),r0
    mov.l @(PTR_ce30910,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce308ce:
    mov.w @(DAT_ce30900,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce308de
    mov.w @(DAT_ce30902,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce308ee

LAB_ce308de:
    mov.w @(DAT_ce30900,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce308f2
    mov.w @(DAT_ce30902,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce308f2

LAB_ce308ee:
    bra LAB_ce3091c
    nop

LAB_ce308f2:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308f6:
    #data 0x0158
DAT_ce308f8:
    #data 0x03f4
DAT_ce308fa:
    #data 0x01a7
DAT_ce308fc:
    #data 0x01ac
DAT_ce308fe:
    #data 0x01e8
DAT_ce30900:
    #data 0x01fe
DAT_ce30902:
    #data 0x01d6
    #align4

PTR_ce30904:
    #data DAT_ce33dd8
PTR_ce30908:
    #data loc_8c04223a
PTR_ce3090c:
    #data loc_8c2896b0
PTR_ce30910:
    #data loc_8c034e8c
PTR_ce30914:
    #data DAT_ce33dd0
PTR_ce30918:
    #data DAT_ce33dd4

;=============================================

LAB_ce3091c:
    mov.w @(DAT_ce309fa,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3092a
    bra LAB_ce30a70
    nop

LAB_ce3092a:
    bra LAB_ce3092e
    nop

LAB_ce3092e:
    mov.w @(DAT_ce309fe,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.w @(DAT_ce309fc,pc),r4
    extu.b r0,r0
    mov.l @(PTR_ce30a08,pc),r12
    cmp/eq 0x00,r0
    bt/s LAB_ce30954
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30980
    cmp/eq 0x02,r0
    bt LAB_ce309c2
    bra LAB_ce30a2c
    nop

LAB_ce30954:
    mov.w @(DAT_ce30a00,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a02,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30974
    mov.w @(DAT_ce30a04,pc),r0
    mov.l @(PTR_ce30a0c,pc),r3
    bra LAB_ce3097a
    mov.l r3,@(r0,r14)

LAB_ce30974:
    mov.w @(DAT_ce30a04,pc),r0
    mov.l @(PTR_ce30a10,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce3097a:
    mov.w @(DAT_ce30a06,pc),r0
    bra LAB_ce30a2c
    mov.b r13,@(r0,r14)

LAB_ce30980:
    mov.w @(DAT_ce30a00,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r4,r2
    bt/s LAB_ce309a4
    mov 0x15,r5
    mov.w @(DAT_ce30a00,pc),r0
    mov 0x03,r1
    mov 0x12,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce309a4:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a02,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce309b8
    mov.w @(DAT_ce30a04,pc),r0
    mov.l @(PTR_ce30a14,pc),r3
    bra LAB_ce309be
    mov.l r3,@(r0,r14)

LAB_ce309b8:
    mov.w @(DAT_ce30a04,pc),r0
    mov.l @(PTR_ce30a18,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce309be:
    bra LAB_ce30a28
    mov 0x01,r3

LAB_ce309c2:
    mov.w @(DAT_ce30a00,pc),r0
    mov 0x02,r1
    mov 0x0E,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r4,r2
    bt/s LAB_ce309e6
    mov 0x16,r5
    mov.w @(DAT_ce30a00,pc),r0
    mov 0x04,r1
    mov 0x13,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce309e6:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a02,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a20
    mov.w @(DAT_ce30a04,pc),r0
    mov.l @(PTR_ce30a1c,pc),r3
    bra LAB_ce30a26
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309fa:
    #data 0x01fe
DAT_ce309fc:
    #data 0x1000
DAT_ce309fe:
    #data 0x01e8
DAT_ce30a00:
    #data 0x0158
DAT_ce30a02:
    #data 0x01fc
DAT_ce30a04:
    #data 0x03f4
DAT_ce30a06:
    #data 0x01a7
    #align4

PTR_ce30a08:
    #data loc_8c04223a
PTR_ce30a0c:
    #data DAT_ce33ddc
PTR_ce30a10:
    #data DAT_ce33df4
PTR_ce30a14:
    #data DAT_ce33de0
PTR_ce30a18:
    #data DAT_ce33df8
PTR_ce30a1c:
    #data DAT_ce33de4

;=============================================

LAB_ce30a20:
    mov.w @(DAT_ce30b1a,pc),r0
    mov.l @(PTR_ce30b2c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a26:
    mov 0x02,r3

LAB_ce30a28:
    mov.w @(DAT_ce30b1c,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30a2c:
    mov.w @(DAT_ce30b1e,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30b30,pc),r3
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
    mov.w @(DAT_ce30b20,pc),r0
    mov.l @(PTR_ce30b34,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30b22,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30a66
    mov.w @(DAT_ce30b22,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30a66:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30a70:
    mov.w @(DAT_ce30b26,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b38,pc),r12
    extu.b r0,r0
    mov.w @(DAT_ce30b24,pc),r4
    cmp/eq 0x00,r0
    bt/s LAB_ce30a96
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30ad8
    cmp/eq 0x02,r0
    bt LAB_ce30b4c
    bra LAB_ce30b90
    nop

LAB_ce30a96:
    mov.w @(DAT_ce30b20,pc),r0
    mov 0x0F,r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r4,r2
    bt/s LAB_ce30ab8
    mov 0x14,r5
    mov.w @(DAT_ce30b20,pc),r0
    mov 0x03,r1
    mov 0x14,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30ab8:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b28,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30acc
    mov.w @(DAT_ce30b1a,pc),r0
    mov.l @(PTR_ce30b3c,pc),r3
    bra LAB_ce30ad2
    mov.l r3,@(r0,r14)

LAB_ce30acc:
    mov.w @(DAT_ce30b1a,pc),r0
    mov.l @(PTR_ce30b40,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30ad2:
    mov.w @(DAT_ce30b1c,pc),r0
    bra LAB_ce30b90
    mov.b r13,@(r0,r14)

LAB_ce30ad8:
    mov.w @(DAT_ce30b20,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r4,r2
    bt/s LAB_ce30afc
    mov 0x15,r5
    mov.w @(DAT_ce30b20,pc),r0
    mov 0x04,r1
    mov 0x15,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30afc:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b28,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b10
    mov.w @(DAT_ce30b1a,pc),r0
    mov.l @(PTR_ce30b44,pc),r3
    bra LAB_ce30b16
    mov.l r3,@(r0,r14)

LAB_ce30b10:
    mov.w @(DAT_ce30b1a,pc),r0
    mov.l @(PTR_ce30b48,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b16:
    bra LAB_ce30b8c
    mov 0x01,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b1a:
    #data 0x03f4
DAT_ce30b1c:
    #data 0x01a7
DAT_ce30b1e:
    #data 0x01ac
DAT_ce30b20:
    #data 0x0158
DAT_ce30b22:
    #data 0x01d6
DAT_ce30b24:
    #data 0x1000
DAT_ce30b26:
    #data 0x01e8
DAT_ce30b28:
    #data 0x01fc
    #align4

PTR_ce30b2c:
    #data DAT_ce33dfc
PTR_ce30b30:
    #data loc_8c2896b0
PTR_ce30b34:
    #data loc_8c034e8c
PTR_ce30b38:
    #data loc_8c04223a
PTR_ce30b3c:
    #data DAT_ce33de8
PTR_ce30b40:
    #data DAT_ce33e00
PTR_ce30b44:
    #data DAT_ce33dec
PTR_ce30b48:
    #data DAT_ce33e04

;=============================================

LAB_ce30b4c:
    mov.w @(DAT_ce30c78,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r4,r2
    bt/s LAB_ce30b70
    mov 0x16,r5
    mov.w @(DAT_ce30c78,pc),r0
    mov 0x05,r1
    mov 0x16,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30b70:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c7a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b84
    mov.w @(DAT_ce30c7c,pc),r0
    mov.l @(PTR_ce30c8c,pc),r3
    bra LAB_ce30b8a
    mov.l r3,@(r0,r14)

LAB_ce30b84:
    mov.w @(DAT_ce30c7c,pc),r0
    mov.l @(PTR_ce30c90,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b8a:
    mov 0x02,r3

LAB_ce30b8c:
    mov.w @(DAT_ce30c7e,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30b90:
    mov.w @(DAT_ce30c80,pc),r0
    mov 0x0C,r5
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
    mov.w @(DAT_ce30c78,pc),r0
    mov.l @(PTR_ce30c98,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30c82,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30bca
    mov.w @(DAT_ce30c82,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30bca:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30bd4:
    mov.w @(DAT_ce30c84,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c9c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30be8:
    sts.l PR,@-r15
    mov.l @(PTR_ce30ca0,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30bf6:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30ca4,pc),r3
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
    mov.w @(DAT_ce30c86,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c5e
    mov.w @(DAT_ce30c88,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c56
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30dfc
    mov.l @r15+,r14

LAB_ce30c56:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d3c
    mov.l @r15+,r14

LAB_ce30c5e:
    mov.w @(DAT_ce30c88,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30c70
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30cf2
    mov.l @r15+,r14

LAB_ce30c70:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30ca8
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c78:
    #data 0x0158
DAT_ce30c7a:
    #data 0x01fc
DAT_ce30c7c:
    #data 0x03f4
DAT_ce30c7e:
    #data 0x01a7
DAT_ce30c80:
    #data 0x01ac
DAT_ce30c82:
    #data 0x01d6
DAT_ce30c84:
    #data 0x01ff
DAT_ce30c86:
    #data 0x01fe
DAT_ce30c88:
    #data 0x01f9
    #align4

PTR_ce30c8c:
    #data DAT_ce33df0
PTR_ce30c90:
    #data DAT_ce33e08
PTR_ce30c94:
    #data loc_8c2896b0
PTR_ce30c98:
    #data loc_8c034e8c
PTR_ce30c9c:
    #data PTR_ce33f1c
PTR_ce30ca0:
    #data loc_8c0511e2
PTR_ce30ca4:
    #data loc_8c052c84

;=============================================

LAB_ce30ca8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d84,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cc2
    lds.l @r15+,PR
    mov.l @(PTR_ce30d88,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30cc2:
    mov.w @(DAT_ce30d7e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30cec
    mov.w @(DAT_ce30d80,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30cec
    mov 0x00,r3
    mov r3,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30d8c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30d90,pc),r2
    mov 0x00,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30cec:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30cf2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30d84,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d0c
    lds.l @r15+,PR
    mov.l @(PTR_ce30d88,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30d0c:
    mov.w @(DAT_ce30d7e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30d36
    mov.w @(DAT_ce30d80,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d36
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r5
    mov.l @(PTR_ce30d8c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30d90,pc),r2
    mov 0x01,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce30d36:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30d3c:
    mov.w @(DAT_ce30d7e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30d58
    cmp/eq 0x01,r0
    bt LAB_ce30d58
    cmp/eq 0x02,r0
    bt LAB_ce30d68
    bra LAB_ce30df6
    nop

LAB_ce30d58:
    mov.l @(PTR_ce30d84,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30d74
    bra LAB_ce30df6
    nop

LAB_ce30d68:
    mov.l @(PTR_ce30d84,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d94

LAB_ce30d74:
    lds.l @r15+,PR
    mov.l @(PTR_ce30d88,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d7e:
    #data 0x01e8
DAT_ce30d80:
    #data 0x0141
    #align4

PTR_ce30d84:
    #data loc_8c034dee
PTR_ce30d88:
    #data loc_8c051648
PTR_ce30d8c:
    #data loc_8c068b40
PTR_ce30d90:
    #data loc_8c0bfc20

;=============================================

LAB_ce30d94:
    mov.w @(DAT_ce30eb2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30df6
    mov.w @(DAT_ce30eb6,pc),r3
    mov.w @(DAT_ce30eb4,pc),r0
    add r14,r3
    mov.w @r3,r3
    mov.w @(r0,r14),r0
    extu.w r3,r3
    extu.w r0,r0
    or r3,r0
    tst 0x20,r0
    bt LAB_ce30df6
    mov.l @(PTR_ce30ebc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30eb6,pc),r0
    mov 0x00,r4
    mov 0x1B,r3
    mov.w r4,@(r0,r14)
    mov 0x08,r5
    mov.w @(DAT_ce30eb8,pc),r0
    mov 0x04,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30ec0,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30ec4,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30ec8,pc),r3
    mov 0x16,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30df6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30dfc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30ecc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e16
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30ed0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30e16:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30e1e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ed4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30ed8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30e34:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30edc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30ee0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30eba,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30e56
    bsr FUN_ce30e98
    mov r14,r4
    bra LAB_ce30e5a
    nop

LAB_ce30e56:
    bsr FUN_ce30e76
    mov r14,r4

LAB_ce30e5a:
    mov.l @(PTR_ce30ee4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30e70
    lds.l @r15+,PR
    mov.l @(PTR_ce30ee8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e70:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30e76:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30ecc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e90
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30eec,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30e90:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30e98:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30ecc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ef0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30eec,pc),r3
    jmp @r3
    lds.l @r15+,PR

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30eb2:
    #data 0x0141
DAT_ce30eb4:
    #data 0x034e
DAT_ce30eb6:
    #data 0x0352
DAT_ce30eb8:
    #data 0x01a1
DAT_ce30eba:
    #data 0x01fe
    #align4

PTR_ce30ebc:
    #data loc_8c05225e
PTR_ce30ec0:
    #data loc_8c2896b0
PTR_ce30ec4:
    #data loc_8c034e8c
PTR_ce30ec8:
    #data loc_8c04223a
PTR_ce30ecc:
    #data loc_8c034dee
PTR_ce30ed0:
    #data loc_8c051648
PTR_ce30ed4:
    #data loc_8c050084
PTR_ce30ed8:
    #data loc_8c04ff88
PTR_ce30edc:
    #data loc_8c04fea8
PTR_ce30ee0:
    #data loc_8c050048
PTR_ce30ee4:
    #data loc_8c052ce2
PTR_ce30ee8:
    #data loc_8c052dac
PTR_ce30eec:
    #data loc_8c05176e

;=============================================

LAB_ce30ef0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30ef8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x1,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce30fd0
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30f76
    mov.l @(PTR_ce31000,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30ff6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce30f32
    mov 0x00,r13
    mov.w @(DAT_ce30ff8,pc),r0
    mov 0x44,r1
    mov.b r1,@(r0,r14)
    add 0x58,r0
    mov.b r13,@(r0,r14)
    bra LAB_ce30f40
    mov 0x11,r6

LAB_ce30f32:
    mov.w @(DAT_ce30ff8,pc),r0
    mov 0x45,r3
    mov 0x01,r2
    mov.b r3,@(r0,r14)
    add 0x58,r0
    mov 0x12,r6
    mov.b r2,@(r0,r14)

LAB_ce30f40:
    mov.l @(PTR_ce31004,pc),r3
    mov 0x14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30ffa,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce31008,pc),r3
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
    mov.l @(PTR_ce3100c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31010,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4

LAB_ce30f76:
    mov.w @(DAT_ce30ffc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30f86
    mov.l @(PTR_ce31014,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30f86:
    mov 0x5C,r1
    mov.l @(PTR_ce31018,pc),r3
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
    mov.l @(PTR_ce3101c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30fdc

LAB_ce30fd0:
    lds.l @r15+,PR
    mov.l @(PTR_ce31020,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30fdc:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30fe4:
    mov r4,r3
    mov.l @(PTR_ce31024,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ff6:
    #data 0x01fe
DAT_ce30ff8:
    #data 0x01a1
DAT_ce30ffa:
    #data 0x01ac
DAT_ce30ffc:
    #data 0x01ff
    #align4

PTR_ce31000:
    #data loc_8c052b4c
PTR_ce31004:
    #data loc_8c034e8c
PTR_ce31008:
    #data loc_8c2896b0
PTR_ce3100c:
    #data loc_8c04223a
PTR_ce31010:
    #data loc_8c056de4
PTR_ce31014:
    #data loc_8c0511e2
PTR_ce31018:
    #data loc_8c052c84
PTR_ce3101c:
    #data loc_8c034dee
PTR_ce31020:
    #data loc_8c051648
PTR_ce31024:
    #data PTR_ce33f2c

;=============================================

LAB_ce31028:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3115c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31158,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31068
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
    mov.w @(DAT_ce3115a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31060
    mova @(DAT_ce31160,pc),r0
    bra LAB_ce31064
    fmov.s @r0,fr3

LAB_ce31060:
    mova @(DAT_ce31164,pc),r0
    fmov.s @r0,fr3

LAB_ce31064:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce31068:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3106e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3115c,pc),r3
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
    mov.w @(DAT_ce31158,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce310e6
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
    mov.w @(DAT_ce3115a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce310de
    mova @(DAT_ce31168,pc),r0
    bra LAB_ce310e2
    fmov.s @r0,fr3

LAB_ce310de:
    mova @(DAT_ce3116c,pc),r0
    fmov.s @r0,fr3

LAB_ce310e2:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce310e6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310ec:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce3115c,pc),r3
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
    bt LAB_ce31140
    lds.l @r15+,PR
    mov.l @(PTR_ce31170,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31140:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31146:
    mov r4,r3
    mov.l @(PTR_ce31174,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31158:
    #data 0x0141
DAT_ce3115a:
    #data 0x01d2
    #align4

PTR_ce3115c:
    #data loc_8c034dee
DAT_ce31160:
    #data 0x41555555
DAT_ce31164:
    #data 0xc1555555
DAT_ce31168:
    #data 0x3fd55555
DAT_ce3116c:
    #data 0xbfd55555
PTR_ce31170:
    #data loc_8c051648
PTR_ce31174:
    #data PTR_ce33f38

;=============================================

LAB_ce31178:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce312ba,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3119e
    mova @(DAT_ce312c4,pc),r0
    bra LAB_ce311a2
    fmov.s @r0,fr3

LAB_ce3119e:
    mova @(DAT_ce312c8,pc),r0
    fmov.s @r0,fr3

LAB_ce311a2:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)

LAB_ce311a6:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce312cc,pc),r3
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
    mov.w @(DAT_ce312bc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce311f8
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce311f8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce311fe:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce312cc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31218
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce312d0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31218:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31220:
    mov r4,r3
    mov.l @(PTR_ce312d4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31232:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x02,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce312be,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce312d8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce312dc,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x12,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3125a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce312cc,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce312c0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31282
    mov 0x00,r5
    mov.w @(DAT_ce312c2,pc),r4
    mov.b r5,@(r0,r14)
    mov.b @(0x6,r14),r0
    add r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r5,r0
    nop
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)

LAB_ce31282:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31288:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce3133c
    mov r4,r14
    mov.l @(PTR_ce312cc,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce312c0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce312b4
    mov 0x00,r5
    mov.w @(DAT_ce312c2,pc),r4
    mov.b r5,@(r0,r14)
    mov.b @(0x6,r14),r0
    add r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r5,r0
    nop
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)

LAB_ce312b4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce312ba:
    #data 0x01d2
DAT_ce312bc:
    #data 0x0141
DAT_ce312be:
    #data 0x012c
DAT_ce312c0:
    #data 0x0140
DAT_ce312c2:
    #data 0x02a4
    #align4

DAT_ce312c4:
    #data 0xc1555555
DAT_ce312c8:
    #data 0x41555555
PTR_ce312cc:
    #data loc_8c034dee
PTR_ce312d0:
    #data loc_8c051648
PTR_ce312d4:
    #data PTR_ce33f44
PTR_ce312d8:
    #data loc_8c0bfc20
PTR_ce312dc:
    #data loc_8c034e8c

;=============================================

LAB_ce312e0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31372
    mov r4,r14
    mov.l @(PTR_ce31418,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3130e
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    mov.l @(PTR_ce3141c,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31410,pc),r4
    mov 0x00,r0
    add r14,r4
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)

LAB_ce3130e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31314:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31418,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31336
    mov.b @(0x5,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31420,pc),r3
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31336:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3133c:
    add 0xFC,r15
    mov.w @(DAT_ce31410,pc),r5
    mov 0x08,r3
    add r4,r5
    mov.b @(0x6,r5),r0
    cmp/ge r3,r0
    bt LAB_ce3136e
    mov 0x25,r0
    mov.l @(PTR_ce31424,pc),r2
    mov.b @(r0,r4),r1
    mov 0x01,r7
    mov.b @(0x6,r5),r0
    extu.b r1,r1
    shll2 r1
    shll r1
    add r0,r1
    add 0x20,r1
    mov.l r1,@r15
    mov.b @(0x6,r5),r0
    add 0x01,r0
    mov.b r0,@(0x6,r5)
    mov 0x00,r5
    mov.l @r15,r6
    jmp @r2
    add 0x04,r15

LAB_ce3136e:
    rts
    add 0x04,r15

;=============================================

FUN_ce31372:
    add 0xFC,r15
    mov.w @(DAT_ce31410,pc),r5
    mov 0x08,r3
    add r4,r5
    mov.b @(0x6,r5),r0
    cmp/ge r3,r0
    bt LAB_ce313a4
    mov 0x25,r0
    mov.l @(PTR_ce31424,pc),r2
    mov.b @(r0,r4),r1
    mov 0x01,r7
    mov.b @(0x6,r5),r0
    extu.b r1,r1
    shll2 r1
    shll r1
    sub r0,r1
    add 0x27,r1
    mov.l r1,@r15
    mov.b @(0x6,r5),r0
    add 0x01,r0
    mov.b r0,@(0x6,r5)
    mov 0x00,r5
    mov.l @r15,r6
    jmp @r2
    add 0x04,r15

LAB_ce313a4:
    rts
    add 0x04,r15

LAB_ce313a8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31428,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce313c8
    mov.l @(PTR_ce3142c,pc),r3
    mov 0x2B,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31430,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce313c8:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce31434,pc),r0
    extu.b r2,r2
    lds.l @r15+,PR
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce313dc:
    mov r4,r3
    mov.l @(PTR_ce31438,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce313ee:
    mov.l @(PTR_ce3143c,pc),r3
    mov 0x01,r5
    mov.l r14,@-r15
    mov r4,r14
    mov.l @r3,r4
    mov.l @(0x1c,r4),r2
    tst r5,r2
    bt LAB_ce31406
    mov.w @(DAT_ce31412,pc),r0
    mov.b @(r0,r4),r0
    tst r0,r0
    bt LAB_ce31440

LAB_ce31406:
    mov 0x03,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31414,pc),r0
    bra LAB_ce3144c
    mov.b r5,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31410:
    #data 0x02a4
DAT_ce31412:
    #data 0x0088
DAT_ce31414:
    #data 0x0158
    #align4

PTR_ce31418:
    #data loc_8c034dee
PTR_ce3141c:
    #data loc_8c034e8c
PTR_ce31420:
    #data loc_8c035162
PTR_ce31424:
    #data loc_8c03544c
PTR_ce31428:
    #data loc_8c046c8a
PTR_ce3142c:
    #data loc_8c042008
PTR_ce31430:
    #data loc_8c051648
PTR_ce31434:
    #data PTR_ce33f58
PTR_ce31438:
    #data PTR_ce33f6c
PTR_ce3143c:
    #data loc_8c26823c

;=============================================

LAB_ce31440:
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31536,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce3144c:
    mov.w @(DAT_ce31536,pc),r0
    mov r14,r4
    mov.l @(PTR_ce31544,pc),r3
    mov 0x13,r5
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce3145a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31548,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31538,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31498
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov.w @(DAT_ce3153a,pc),r13
    mov r3,r6
    add 0x01,r0
    mov.l @(PTR_ce3154c,pc),r2
    mov.b r0,@(0x6,r14)
    add r14,r13
    mov.w @(DAT_ce31538,pc),r0
    mov 0x01,r5
    mov r3,r7
    mov.b r3,@(r0,r14)
    mov 0x40,r0
    mov.b r0,@(0x1,r13)
    mov 0x04,r0
    mov.w r0,@(0x2,r13)
    mov.b r3,@r13
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3153c,pc),r0
    mov.b r0,@(0x4,r13)

LAB_ce31498:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce314a0:
    mov.w @(DAT_ce3153e,pc),r0
    mov.w @(DAT_ce3153c,pc),r3
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce31548,pc),r3
    jmp @r3
    nop

LAB_ce314ac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31548,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31538,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce314ce
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x04,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce31550,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce314ce:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce314d4:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce314e8
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce31544,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce314e8:
    mov.l @(PTR_ce31548,pc),r3
    jmp @r3
    nop

LAB_ce314ee:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31502
    mov.b @(0x6,r4),r0
    mov 0x05,r6
    mov.l @(PTR_ce31544,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31502:
    mov.l @(PTR_ce31548,pc),r3
    jmp @r3
    nop

LAB_ce31508:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce3151c
    mov.b @(0x6,r4),r0
    mov 0x03,r6
    mov.l @(PTR_ce31544,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce3151c:
    mov.l @(PTR_ce31548,pc),r3
    jmp @r3
    nop

LAB_ce31522:
    mov.w @(DAT_ce31540,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31554,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31536:
    #data 0x0158
DAT_ce31538:
    #data 0x0141
DAT_ce3153a:
    #data 0x02a4
DAT_ce3153c:
    #data 0x00ff
DAT_ce3153e:
    #data 0x02a8
DAT_ce31540:
    #data 0x01e9
    #align4

PTR_ce31544:
    #data loc_8c034e8c
PTR_ce31548:
    #data loc_8c034dee
PTR_ce3154c:
    #data loc_8c068ee4
PTR_ce31550:
    #data loc_8c0bfc20
PTR_ce31554:
    #data PTR_ce33f7c

;=============================================

LAB_ce31558:
    mov.w @(DAT_ce3169e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31582
    mov.l @(PTR_ce316ac,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce316a0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31582
    mov.w @(DAT_ce316a0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce31582:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce316b0,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce316a2,pc),r5
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31598:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov r5,r12
    mov.l r11,@-r15
    mov 0x00,r5
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce316b4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce316b8,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce316bc,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3169e,pc),r0
    mov 0x0C,r11
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce3163e
    mov 0x00,r13
    mov.l @(DAT_ce316c0,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    mov 0x34,r3
    lds r1,FPUL
    mov.l @(DAT_ce316c4,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce316c8,pc),r1
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
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce316a4,pc),r0
    mov.b r11,@r12
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce316cc,pc),r3
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov 0x15,r5
    mov.l @r3,r2
    mov 0x03,r6
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce316d0,pc),r2
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3163e:
    mov.l @(PTR_ce316d4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce316d8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3169e,pc),r0
    mov.b r13,@(r0,r14)
    add 0xAA,r0
    mov.b @(r0,r14),r4
    mov.w @(DAT_ce316a6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce31660
    add 0x31,r4
    mov 0x41,r4

LAB_ce31660:
    mov.w @(DAT_ce316a4,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce316cc,pc),r3
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
    mov.w @(DAT_ce316a8,pc),r0
    mov.l @(PTR_ce316d0,pc),r2
    mov.b @(r0,r14),r6
    shll r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce316a8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce316dc
    mov.b r11,@r12
    bra LAB_ce316e2
    mov r11,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3169e:
    #data 0x01f9
DAT_ce316a0:
    #data 0x041c
DAT_ce316a2:
    #data 0x02a4
DAT_ce316a4:
    #data 0x01a1
DAT_ce316a6:
    #data 0x0255
DAT_ce316a8:
    #data 0x01a3
    #align4

PTR_ce316ac:
    #data loc_8c04fea8
PTR_ce316b0:
    #data PTR_ce33fb4
PTR_ce316b4:
    #data loc_8c035162
PTR_ce316b8:
    #data loc_8c05218a
PTR_ce316bc:
    #data loc_8c056de4
DAT_ce316c0:
    #data 0x41800000
DAT_ce316c4:
    #data 0x41000000
DAT_ce316c8:
    #data 0x42800000
PTR_ce316cc:
    #data loc_8c2896b0
PTR_ce316d0:
    #data loc_8c034e8c
PTR_ce316d4:
    #data loc_8c052b4c
PTR_ce316d8:
    #data loc_8c05115a

;=============================================

LAB_ce316dc:
    mov 0x0E,r2
    mov 0x0A,r0
    mov.b r2,@r12

LAB_ce316e2:
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce316f0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3181c,pc),r3
    jsr @r3
    mov r5,r13
    mov.w @(DAT_ce31810,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31724
    mov.b @(0x6,r14),r0
    mov 0x00,r7
    mov.l @(PTR_ce31820,pc),r3
    mov r7,r5
    add 0x01,r0
    mov r7,r6
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b r0,@(0x1,r13)
    mov 0x0D,r0
    mov.w r0,@(0x2,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31812,pc),r0
    mov.b r0,@(0x4,r13)

LAB_ce31724:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3172c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    mov.w @(DAT_ce31812,pc),r0
    mov r13,r5
    sts.l PR,@-r15
    mov.b r0,@(0x4,r13)
    bsr FUN_ce31ca0
    mov r14,r4
    mov.l @(PTR_ce3181c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce31760
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x1,r13)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31760:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31768:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31812,pc),r0
    mov r5,r3
    mov.l r5,@r15
    mov r4,r14
    mov.b r0,@(0x4,r3)
    mov.l @(PTR_ce3181c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce317d2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.l @r15,r3
    mov.b r0,@(0x4,r3)
    mov 0x07,r3
    mov.w @(DAT_ce31814,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31816,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce317b8
    mov.w @(DAT_ce31818,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce317b2
    bra LAB_ce317b4
    mov 0x04,r2

LAB_ce317b2:
    mov 0x06,r2

LAB_ce317b4:
    mov.w @(DAT_ce31814,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce317b8:
    mov.l @(PTR_ce31824,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31814,pc),r0
    mov r14,r4
    mov 0x15,r5
    mov.b @(r0,r14),r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31828,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce317d2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce317da:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3181c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31838
    mov.l @(PTR_ce3182c,pc),r3
    mov 0x2B,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31816,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31806
    lds.l @r15+,PR
    mov.l @(PTR_ce31830,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31806:
    lds.l @r15+,PR
    mov.l @(PTR_ce31834,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31810:
    #data 0x0141
DAT_ce31812:
    #data 0x00ff
DAT_ce31814:
    #data 0x0158
DAT_ce31816:
    #data 0x01f9
DAT_ce31818:
    #data 0x01a3
    #align4

PTR_ce3181c:
    #data loc_8c034dee
PTR_ce31820:
    #data loc_8c068ee4
PTR_ce31824:
    #data loc_8c035162
PTR_ce31828:
    #data loc_8c034e8c
PTR_ce3182c:
    #data loc_8c042008
PTR_ce31830:
    #data loc_8c05176e
PTR_ce31834:
    #data loc_8c051648

;=============================================

LAB_ce31838:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3183e:
    mov.w @(DAT_ce31976,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31868
    mov.l @(PTR_ce31988,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31978,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31868
    mov.w @(DAT_ce31978,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce31868:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3198c,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce3197a,pc),r5
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3187e:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3197c,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce318a0
    mov.w @(DAT_ce31980,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce3197e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce318a0:
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31990,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31994,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31976,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce318f4
    mov 0x00,r13
    mov.l @(DAT_ce31998,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce3199c,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce319a0,pc),r1
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
    bra LAB_ce31906
    mov 0x1B,r6

LAB_ce318f4:
    mov.l @(PTR_ce319a4,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce319a8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31976,pc),r0
    mov 0x09,r6
    mov.b r13,@(r0,r14)

LAB_ce31906:
    mov.l @(PTR_ce319ac,pc),r3
    mov 0x15,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31982,pc),r0
    mov 0x36,r2
    mov.l @(PTR_ce319b0,pc),r3
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
    mov.l @r15,r2
    mov r2,r0
    nop
    mov 0x07,r1
    add r0,r1
    mov.b r13,@r1
    mov r13,r0
    nop
    mov.b r0,@(0x6,r2)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3194e:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xE8,r15
    mov.w @(DAT_ce31984,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31986,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3197c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce319b4
    mov r5,r12
    bra LAB_ce319b6
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31976:
    #data 0x01f9
DAT_ce31978:
    #data 0x041c
DAT_ce3197a:
    #data 0x02a4
DAT_ce3197c:
    #data 0x0255
DAT_ce3197e:
    #data 0x00ff
DAT_ce31980:
    #data 0x03f0
DAT_ce31982:
    #data 0x01a1
DAT_ce31984:
    #data 0x03f8
DAT_ce31986:
    #data 0x0328
    #align4

PTR_ce31988:
    #data loc_8c04fea8
PTR_ce3198c:
    #data PTR_ce33fc8
PTR_ce31990:
    #data loc_8c035162
PTR_ce31994:
    #data loc_8c05218a
DAT_ce31998:
    #data 0x41800000
DAT_ce3199c:
    #data 0x41000000
DAT_ce319a0:
    #data 0x42800000
PTR_ce319a4:
    #data loc_8c052b4c
PTR_ce319a8:
    #data loc_8c05115a
PTR_ce319ac:
    #data loc_8c034e8c
PTR_ce319b0:
    #data loc_8c2896b0

;=============================================

LAB_ce319b4:
    mov 0x00,r3

LAB_ce319b6:
    mov.w @(DAT_ce31ae0,pc),r0
    mov r15,r13
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31af0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31a1c
    mov.w @(DAT_ce31ae2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce319d4
    bra LAB_ce31ad4
    nop

LAB_ce319d4:
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31ae4,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31ae6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce319f8
    mova @(DAT_ce31af4,pc),r0
    mov r13,r4
    fmov.s @r0,fr3
    mova @(DAT_ce31af8,pc),r0
    fmov.s fr3,@r4
    bra LAB_ce31a04
    fmov.s @r0,fr3

LAB_ce319f8:
    mova @(DAT_ce31afc,pc),r0
    mov r13,r4
    fmov.s @r0,fr3
    mova @(DAT_ce31b00,pc),r0
    fmov.s fr3,@r4
    fmov.s @r0,fr3

LAB_ce31a04:
    mov 0x04,r0
    mov.l @(PTR_ce31b04,pc),r3
    fmov fr3,@(r0,r4)
    mov 0x08,r0
    mov r13,r5
    fldi0 fr3
    mov 0x01,r6
    fmov fr3,@(r0,r5)
    jsr @r3
    mov r14,r4
    bra LAB_ce31ad4
    nop

LAB_ce31a1c:
    mov.b @(0x6,r14),r0
    mov r14,r2
    mov.l @(PTR_ce31b08,pc),r3
    add 0x34,r2
    add 0x01,r0
    mov r13,r4
    mov.b r0,@(0x6,r14)
    mov 0x32,r0
    mov.w r0,@(0x1c,r14)
    mov r13,r1
    mov.w @(DAT_ce31ae8,pc),r0
    mov.b r0,@(0x4,r12)
    mov 0x30,r0
    mov.b r0,@(0x5,r12)
    mov 0x40,r0
    mov.b r0,@(0x1,r12)
    mov 0x0D,r0
    mov.w r0,@(0x2,r12)
    jsr @r3
    mov 0x0C,r0
    mova @(DAT_ce31b0c,pc),r0
    mov.l @(PTR_ce31b08,pc),r3
    fmov.s @r0,fr4
    mov 0x04,r0
    fmov.s @(r0,r4),fr3
    mov r4,r1
    add 0x0C,r1
    fadd fr4,fr3
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31aea,pc),r0
    mov.l @(r0,r14),r2
    add 0x34,r2
    jsr @r3
    mov 0x0C,r0
    mov.w @(DAT_ce31aea,pc),r0
    mov.l @(r0,r14),r5
    add 0xED,r0
    mov.b @(r0,r5),r5
    extu.b r5,r5
    tst r5,r5
    bt/s LAB_ce31a78
    add 0x0C,r4
    mov r5,r0
    nop
    cmp/eq 0x01,r0
    bf LAB_ce31a88

LAB_ce31a78:
    mov.w @(DAT_ce31aea,pc),r0
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce31aec,pc),r0
    fmov.s @(r0,r3),fr3
    mov 0x04,r0
    fadd fr4,fr3
    bra LAB_ce31a96
    fmov fr3,@(r0,r4)

LAB_ce31a88:
    mov.l @(DAT_ce31b10,pc),r1
    mov 0x04,r0
    fmov.s @(r0,r4),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)

LAB_ce31a96:
    mov.l @(PTR_ce31b14,pc),r3
    mov r13,r5
    add 0x0C,r5
    jsr @r3
    mov r13,r4
    extu.b r0,r0
    cmp/pz r0
    bt LAB_ce31aa8
    add 0x0F,r0

LAB_ce31aa8:
    mov 0xFC,r3
    mov 0x0F,r4
    shad r3,r0
    and r0,r4
    mov.w @(DAT_ce31aee,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31ac0
    mov 0x10,r0
    sub r4,r0
    mov 0x0F,r4
    and r0,r4

LAB_ce31ac0:
    mov r12,r5
    mov.b r4,@r12
    bsr FUN_ce31c72
    mov r14,r4
    mov.l @(PTR_ce31b18,pc),r2
    mov 0x00,r6
    mov 0x02,r7
    mov r6,r5
    jsr @r2
    mov r14,r4

LAB_ce31ad4:
    add 0x18,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ae0:
    #data 0x03f1
DAT_ce31ae2:
    #data 0x0141
DAT_ce31ae4:
    #data 0x03f0
DAT_ce31ae6:
    #data 0x01f9
DAT_ce31ae8:
    #data 0x00ff
DAT_ce31aea:
    #data 0x020c
DAT_ce31aec:
    #data 0x041c
DAT_ce31aee:
    #data 0x0130
    #align4

PTR_ce31af0:
    #data loc_8c034dee
DAT_ce31af4:
    #data 0xc0d55555
DAT_ce31af8:
    #data 0x435edb6d
DAT_ce31afc:
    #data 0xc23aaaaa
DAT_ce31b00:
    #data 0x43340000
PTR_ce31b04:
    #data loc_8c050834
PTR_ce31b08:
    #data loc_8c1294c8
DAT_ce31b0c:
    #data 0x42cc0000
DAT_ce31b10:
    #data 0x42600000
PTR_ce31b14:
    #data loc_8c03362c
PTR_ce31b18:
    #data loc_8c068ee4

;=============================================

LAB_ce31b1c:
    mov.w @(DAT_ce31c42,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov r5,r13
    mov.w @(DAT_ce31c44,pc),r0
    mov r13,r5
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31c46,pc),r0
    mov.b r0,@(0x4,r13)
    bsr FUN_ce31ca0
    mov r14,r4
    mov.l @(PTR_ce31c50,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31b4e
    mov r13,r5
    bsr FUN_ce31cda
    mov r14,r4

LAB_ce31b4e:
    mov.b @(0x5,r13),r0
    tst r0,r0
    bt LAB_ce31b6a
    mov.l @(PTR_ce31c54,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce31b6a
    mov.b @(0x5,r13),r0
    add 0xFF,r0
    mov.b r0,@(0x5,r13)
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31b6a:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31b84
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    mov 0x00,r0
    mov.b r0,@(0x1,r13)

LAB_ce31b84:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31b8c:
    mov.w @(DAT_ce31c42,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31c44,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31c46,pc),r0
    mov.b r0,@(0x4,r5)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce31bfe
    mov.w @(DAT_ce31c48,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31c4a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x4,r5)
    mov.w @(DAT_ce31c4c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31be2
    bra LAB_ce31be4
    mov 0x2C,r3

LAB_ce31be2:
    mov 0x1A,r3

LAB_ce31be4:
    mov.w @(DAT_ce31c4e,pc),r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31c58,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31c5c,pc),r2
    mov 0x00,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31bfe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31c04:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31c50,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c6c
    mov.l @(PTR_ce31c60,pc),r3
    mov 0x2B,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31c5c,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31c4c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31c38
    lds.l @r15+,PR
    mov.l @(PTR_ce31c64,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c38:
    lds.l @r15+,PR
    mov.l @(PTR_ce31c68,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c42:
    #data 0x03f8
DAT_ce31c44:
    #data 0x0328
DAT_ce31c46:
    #data 0x00ff
DAT_ce31c48:
    #data 0x03f9
DAT_ce31c4a:
    #data 0x0327
DAT_ce31c4c:
    #data 0x01f9
DAT_ce31c4e:
    #data 0x0158
    #align4

PTR_ce31c50:
    #data loc_8c034dee
PTR_ce31c54:
    #data loc_8c055d54
PTR_ce31c58:
    #data loc_8c034e8c
PTR_ce31c5c:
    #data loc_8c035162
PTR_ce31c60:
    #data loc_8c042008
PTR_ce31c64:
    #data loc_8c05176e
PTR_ce31c68:
    #data loc_8c051648

;=============================================

LAB_ce31c6c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31c72:
    mov.w @(DAT_ce31d68,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31c8a
    mov.b @r5,r2
    mov.w @(DAT_ce31d6a,pc),r0
    add 0x1C,r2
    bra LAB_ce31c92
    mov.b r2,@(r0,r14)

LAB_ce31c8a:
    mov.b @r5,r1
    mov.w @(DAT_ce31d6a,pc),r0
    add 0x0A,r1
    mov.b r1,@(r0,r14)

LAB_ce31c92:
    mov.w @(DAT_ce31d6a,pc),r0
    mov r14,r4
    mov.l @(PTR_ce31d74,pc),r3
    mov 0x15,r5
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

;=============================================

FUN_ce31ca0:
    mov.l r14,@-r15
    mov.b @(0x7,r5),r0
    add 0xFF,r0
    mov.b r0,@(0x7,r5)
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31cd6
    mov 0x01,r0
    mov.b r0,@(0x7,r5)
    mov 0x25,r0
    mov.b @(r0,r4),r14
    mov.b @(0x6,r5),r0
    extu.b r14,r14
    xor 0x01,r0
    mov.b r0,@(0x6,r5)
    exts.b r0,r0
    shll r14
    tst r0,r0
    bt/s LAB_ce31cca
    add 0x50,r14
    add 0x01,r14

LAB_ce31cca:
    mov.l @(PTR_ce31d78,pc),r2
    mov 0x00,r5
    mov 0x01,r7
    mov r14,r6
    jmp @r2
    mov.l @r15+,r14

LAB_ce31cd6:
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31cda:
    mov.w @(DAT_ce31d6c,pc),r0
    mov 0xF6,r2
    mov.w @(DAT_ce31d6e,pc),r3
    mov.l r14,@-r15
    mov.w @(r0,r4),r6
    mov.l @(PTR_ce31d7c,pc),r0
    extu.w r6,r6
    and r3,r6
    shad r2,r6
    exts.b r6,r6
    mov.b @(r0,r6),r6
    exts.b r6,r14
    cmp/pz r14
    bf LAB_ce31d24
    mov.b @r5,r2
    extu.b r2,r2
    cmp/eq r2,r14
    bt LAB_ce31d24
    mov.b @r5,r3
    extu.b r3,r3
    mov r14,r0
    nop
    sub r3,r0
    mov 0x08,r3
    and 0x0F,r0
    cmp/ge r3,r0
    bt LAB_ce31d18
    mov.b @r5,r1
    add 0x01,r1
    bra LAB_ce31d1e
    mov.b r1,@r5

LAB_ce31d18:
    mov.b @r5,r0
    add 0xFF,r0
    mov.b r0,@r5

LAB_ce31d1e:
    mov.b @r5,r0
    and 0x0F,r0
    mov.b r0,@r5

LAB_ce31d24:
    bra FUN_ce31c72
    mov.l @r15+,r14

LAB_ce31d28:
    mov.w @(DAT_ce31d68,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31d52
    mov.l @(PTR_ce31d80,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31d70,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31d52
    mov.w @(DAT_ce31d70,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)

LAB_ce31d52:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31d84,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce31d72,pc),r5
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d68:
    #data 0x01f9
DAT_ce31d6a:
    #data 0x0158
DAT_ce31d6c:
    #data 0x034a
DAT_ce31d6e:
    #data 0x3c00
DAT_ce31d70:
    #data 0x041c
DAT_ce31d72:
    #data 0x02a4
    #align4

PTR_ce31d74:
    #data loc_8c034e8c
PTR_ce31d78:
    #data loc_8c03544c
PTR_ce31d7c:
    #data DAT_ce33fdc
PTR_ce31d80:
    #data loc_8c04fea8
PTR_ce31d84:
    #data PTR_ce33fec

;=============================================

LAB_ce31d88:
    mov.w @(DAT_ce31e7c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31da6
    mov.w @(DAT_ce31e80,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31e7e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31da6:
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce31e8c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31e90,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31e82,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce31dfa
    mov 0x00,r13
    mov.l @(DAT_ce31e94,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(DAT_ce31e98,pc),r1
    fsts FPUL,fr3
    fdiv fr3,fr2
    lds r1,FPUL
    mov.l @(DAT_ce31e9c,pc),r1
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
    bra LAB_ce31e22
    mov 0x09,r6

LAB_ce31dfa:
    mov.l @(PTR_ce31ea0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31ea4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31e82,pc),r0
    mov r13,r6
    mov.b r13,@(r0,r14)
    add 0x5C,r0
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x05,r0
    bt/s LAB_ce31e20
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x04,r0
    bf LAB_ce31e22

LAB_ce31e20:
    mov 0x08,r6

LAB_ce31e22:
    mov.w @(DAT_ce31e84,pc),r0
    mov 0x38,r3
    mov 0x16,r5
    mov r14,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31ea8,pc),r3
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
    mov.l @(PTR_ce31eac,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e54:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31e86,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31e88,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31e7c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce31eb0
    mov r5,r12
    bra LAB_ce31eb2
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e7c:
    #data 0x0255
DAT_ce31e7e:
    #data 0x00ff
DAT_ce31e80:
    #data 0x03f0
DAT_ce31e82:
    #data 0x01f9
DAT_ce31e84:
    #data 0x01a1
DAT_ce31e86:
    #data 0x03f8
DAT_ce31e88:
    #data 0x0328
    #align4

PTR_ce31e8c:
    #data loc_8c035162
PTR_ce31e90:
    #data loc_8c05218a
DAT_ce31e94:
    #data 0x41800000
DAT_ce31e98:
    #data 0x41000000
DAT_ce31e9c:
    #data 0x42800000
PTR_ce31ea0:
    #data loc_8c052b4c
PTR_ce31ea4:
    #data loc_8c05115a
PTR_ce31ea8:
    #data loc_8c2896b0
PTR_ce31eac:
    #data loc_8c034e8c

;=============================================

LAB_ce31eb0:
    mov 0x00,r3

LAB_ce31eb2:
    mov.w @(DAT_ce31f46,pc),r0
    mov 0x00,r13
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31f50,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31f0e
    mov.w @(DAT_ce31f48,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f3a
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31f4a,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce31f4c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31eec
    mova @(DAT_ce31f54,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31f58,pc),r0
    fmov.s fr3,@r15
    bra LAB_ce31ef6
    fmov.s @r0,fr3

LAB_ce31eec:
    mova @(DAT_ce31f5c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31f60,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3

LAB_ce31ef6:
    mov 0x04,r0
    mov.l @(PTR_ce31f64,pc),r3
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    mov r15,r5
    fmov fr3,@(r0,r15)
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    bra LAB_ce31f3a
    nop

LAB_ce31f0e:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce31f68,pc),r3
    mov 0x00,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x1,r12)
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x4,r12)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    mov 0x30,r0
    mov.l @(PTR_ce31f6c,pc),r3
    mov 0x48,r5
    mov.b r0,@(0x5,r12)
    jsr @r3
    mov r14,r4

LAB_ce31f3a:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f46:
    #data 0x03f1
DAT_ce31f48:
    #data 0x0141
DAT_ce31f4a:
    #data 0x03f0
DAT_ce31f4c:
    #data 0x01f9
    #align4

PTR_ce31f50:
    #data loc_8c034dee
DAT_ce31f54:
    #data 0xc0d55555
DAT_ce31f58:
    #data 0x435edb6d
DAT_ce31f5c:
    #data 0xc23aaaaa
DAT_ce31f60:
    #data 0x43340000
PTR_ce31f64:
    #data loc_8c050834
PTR_ce31f68:
    #data loc_8c0699dc
PTR_ce31f6c:
    #data loc_8c04223a

;=============================================

LAB_ce31f70:
    mov.w @(DAT_ce3206c,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    mov r5,r12
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3206e,pc),r0
    mov.l @(PTR_ce3207c,pc),r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32070,pc),r0
    jsr @r3
    mov.b r0,@(0x4,r12)
    mov.l @(PTR_ce32080,pc),r2
    jsr @r2
    mov r14,r4
    mov r12,r5
    bsr FUN_ce31ca0
    mov r14,r4
    mov.b @(0x5,r12),r0
    tst r0,r0
    bt LAB_ce31fb8
    mov.l @(PTR_ce32084,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce31fb8
    mov.b @(0x5,r12),r0
    add 0xFF,r0
    mov.b r0,@(0x5,r12)
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce31fb8:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce3201c
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32072,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32074,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32076,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32078,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31ffa
    mov.w @(DAT_ce32076,pc),r0
    mov 0x0A,r2
    mov.b r2,@(r0,r14)

LAB_ce31ffa:
    mov.w @(DAT_ce32076,pc),r0
    mov 0x16,r5
    mov.l @(PTR_ce32088,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x4,r12)
    mov 0x00,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce3208c,pc),r3
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3201c:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32026:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32080,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32054
    mov.w @(DAT_ce32078,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3204a
    lds.l @r15+,PR
    mov.l @(PTR_ce32090,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3204a:
    lds.l @r15+,PR
    mov.l @(PTR_ce32094,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32054:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3205a:
    mov r4,r3
    mov.l @(PTR_ce32098,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3206c:
    #data 0x03f8
DAT_ce3206e:
    #data 0x0328
DAT_ce32070:
    #data 0x00ff
DAT_ce32072:
    #data 0x03f9
DAT_ce32074:
    #data 0x0327
DAT_ce32076:
    #data 0x0158
DAT_ce32078:
    #data 0x01f9
    #align4

PTR_ce3207c:
    #data loc_8c03319e
PTR_ce32080:
    #data loc_8c034dee
PTR_ce32084:
    #data loc_8c055d54
PTR_ce32088:
    #data loc_8c034e8c
PTR_ce3208c:
    #data loc_8c035162
PTR_ce32090:
    #data loc_8c05176e
PTR_ce32094:
    #data loc_8c051648
PTR_ce32098:
    #data PTR_ce33ffc

;=============================================

LAB_ce3209c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF8,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce321ac,pc),r3
    mov 0x00,r13
    add 0x01,r0
    mov r13,r5
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce321b0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce321b4,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce321b8,pc),r2
    mov 0x0A,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce321a2,pc),r0
    mov r15,r6
    mov.l @(PTR_ce321bc,pc),r5
    mov r6,r1
    mov.b @(r0,r14),r0
    mov r1,r4
    add 0x04,r4
    extu.b r0,r0
    shll r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce321a4,pc),r0
    mov.w r13,@(r0,r14)
    mov.w @(DAT_ce321a2,pc),r0
    mov.b @(r0,r14),r3
    mova @(DAT_ce321c0,pc),r0
    extu.b r3,r3
    shll2 r3
    shll r3
    add r5,r3
    fmov.s @r3,fr3
    fmov.s fr3,@r1
    fmov.s @r0,fr2
    mov.w @(DAT_ce321a2,pc),r0
    fmov.s fr2,@r4
    mov.b @(r0,r14),r3
    mov 0x04,r0
    extu.b r3,r3
    shll2 r3
    shll r3
    add r3,r5
    fmov.s @(r0,r5),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce321c4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce321a6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3213a
    mov 0x5C,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fsub fr3,fr2
    fldi0 fr3
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce32158
    fmov.s @(r0,r14),fr1
    fmov.s @r4,fr2
    bra LAB_ce32154
    fsub fr2,fr1

LAB_ce3213a:
    mov 0x5C,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fldi0 fr3
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32158
    fmov.s @(r0,r14),fr1
    fmov.s @r4,fr2
    fadd fr2,fr1

LAB_ce32154:
    bra LAB_ce3215e
    fmov fr1,@(r0,r14)

LAB_ce32158:
    fmov.s @r4,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce3215e:
    mov.w @(DAT_ce321a8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce3216c
    mov 0x30,r4
    mov 0x48,r4

LAB_ce3216c:
    mov.w @(DAT_ce321aa,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce321c8,pc),r3
    mov 0x02,r6
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
    mov.l @(PTR_ce321cc,pc),r2
    jsr @r2
    mov r14,r4
    add 0x08,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce321a2:
    #data 0x01a3
DAT_ce321a4:
    #data 0x0352
DAT_ce321a6:
    #data 0x01d2
DAT_ce321a8:
    #data 0x0255
DAT_ce321aa:
    #data 0x01a1
    #align4

PTR_ce321ac:
    #data loc_8c035162
PTR_ce321b0:
    #data loc_8c05218a
PTR_ce321b4:
    #data loc_8c05115a
PTR_ce321b8:
    #data loc_8c056de4
PTR_ce321bc:
    #data DAT_ce34010
DAT_ce321c0:
    #data 0xbf555555
DAT_ce321c4:
    #data 0xbf9a4924
PTR_ce321c8:
    #data loc_8c2896b0
PTR_ce321cc:
    #data loc_8c034e8c

;=============================================

LAB_ce321d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32314,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32306,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x0F,r0
    bt LAB_ce32226
    mov.l @(PTR_ce32318,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce3231c,pc),r3
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

LAB_ce32226:
    mov.w @(DAT_ce32306,pc),r0
    mov 0x48,r6
    mov.l @(PTR_ce32320,pc),r5
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf/s LAB_ce32266
    mov 0x00,r4
    mov.w @(DAT_ce32306,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32308,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce32246
    mov 0x30,r7
    mov r6,r7

LAB_ce32246:
    mov.w @(DAT_ce3230a,pc),r0
    mov.b r7,@(r0,r14)
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

LAB_ce32266:
    mov.w @(DAT_ce32306,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce322e6
    mov.w @(DAT_ce32306,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt LAB_ce322e6
    mov.w @(DAT_ce3230c,pc),r0
    mov.w @(DAT_ce3230e,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce322e6
    mov.l @(DAT_ce32324,pc),r1
    mov.w r4,@(r0,r14)
    mov 0x60,r0
    lds r1,FPUL
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32308,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce322a8
    mov 0x30,r7
    mov r6,r7

LAB_ce322a8:
    mov.w @(DAT_ce3230a,pc),r0
    mov.b r7,@(r0,r14)
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
    mov.w @(0x1c,r14),r0
    tst 0x01,r0
    bt LAB_ce322d2
    bra LAB_ce322d4
    mov 0x06,r3

LAB_ce322d2:
    mov 0x05,r3

LAB_ce322d4:
    mov.w @(DAT_ce32310,pc),r0
    mov 0x14,r5
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce32328,pc),r3
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce322e6:
    mov.w @(DAT_ce32306,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x03,r0
    bf LAB_ce32300
    mov.w @(DAT_ce32306,pc),r0
    mov 0x02,r5
    mov.l @(PTR_ce3232c,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce32300:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32306:
    #data 0x0141
DAT_ce32308:
    #data 0x0255
DAT_ce3230a:
    #data 0x01a1
DAT_ce3230c:
    #data 0x0352
DAT_ce3230e:
    #data 0x0300
DAT_ce32310:
    #data 0x0158
    #align4

PTR_ce32314:
    #data loc_8c034dee
PTR_ce32318:
    #data loc_8c053082
PTR_ce3231c:
    #data loc_8c052c84
PTR_ce32320:
    #data loc_8c2896b0
DAT_ce32324:
    #data 0x41892492
PTR_ce32328:
    #data loc_8c034e8c
PTR_ce3232c:
    #data loc_8c068b40

;=============================================

LAB_ce32330:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32468,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce3246c,pc),r3
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
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce323a8
    mov.b @(0x6,r14),r0
    mov r14,r4
    fldi0 fr4
    mov 0x03,r6
    add 0x01,r0
    mov.l @(PTR_ce32474,pc),r3
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce32470,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x14,r5
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce323a8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce323ae:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32468,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce3246c,pc),r3
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
    mov.l @(PTR_ce32478,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3242e
    mov.l @(PTR_ce3247c,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov r14,r4
    fldi0 fr4
    mov 0x04,r6
    add 0x01,r0
    mov.l @(PTR_ce32474,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3242e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32434:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32468,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3244e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32480,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3244e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32456:
    mov r4,r3
    mov.l @(PTR_ce32484,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

PTR_ce32468:
    #data loc_8c034dee
PTR_ce3246c:
    #data loc_8c052c84
DAT_ce32470:
    #data 0xbf4db6db
PTR_ce32474:
    #data loc_8c034e8c
PTR_ce32478:
    #data loc_8c052ce2
PTR_ce3247c:
    #data loc_8c0511b4
PTR_ce32480:
    #data loc_8c051648
PTR_ce32484:
    #data PTR_ce34020

;=============================================

LAB_ce32488:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32598,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x1C,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3259c,pc),r2
    mov 0x0A,r5
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
    mova @(DAT_ce325a0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3258e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce324d2
    mov r14,r4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce324d2:
    mov.l @(PTR_ce325a4,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce325a8,pc),r2
    mov 0x0F,r5
    mov 0x0A,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce324e8:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce324fa
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce324fa:
    rts
    nop

LAB_ce324fe:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce325ac,pc),r3
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
    bt LAB_ce32552
    lds.l @r15+,PR
    mov.l @(PTR_ce325b0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32552:
    mov.w @(DAT_ce32590,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32576
    mov.l @(PTR_ce325b4,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32576
    mov r0,r5
    mov.w @(DAT_ce32594,pc),r0
    mov r14,r4
    mov.w @(DAT_ce32592,pc),r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce325b8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32576:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3257c:
    mov r4,r3
    mov.l @(PTR_ce325bc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3258e:
    #data 0x01d2
DAT_ce32590:
    #data 0x0141
DAT_ce32592:
    #data 0x00c0
DAT_ce32594:
    #data 0x01f7
    #align4

PTR_ce32598:
    #data loc_8c05218a
PTR_ce3259c:
    #data loc_8c056de4
DAT_ce325a0:
    #data 0x413aaaaa
PTR_ce325a4:
    #data loc_8c05115a
PTR_ce325a8:
    #data loc_8c034e8c
PTR_ce325ac:
    #data loc_8c034dee
PTR_ce325b0:
    #data loc_8c051648
PTR_ce325b4:
    #data loc_8c045790
PTR_ce325b8:
    #data loc_8c0522e0
PTR_ce325bc:
    #data PTR_ce3402c

;=============================================

LAB_ce325c0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce326fc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32700,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32704,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32708,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3270c,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce32710,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32714,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32718,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce326f2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3261e
    mov 0x3F,r4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3261e:
    mov.w @(DAT_ce326f4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce3262a
    mov 0x46,r4

LAB_ce3262a:
    mov.w @(DAT_ce326f6,pc),r0
    mov 0x2D,r6
    mov.l @(PTR_ce3271c,pc),r3
    mov 0x15,r5
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov 0x00,r4
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
    mov.l @(PTR_ce32720,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3265c:
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
    mov.w @(DAT_ce326f8,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce326a6
    mov.l @(PTR_ce32724,pc),r3
    jmp @r3
    nop

LAB_ce326a6:
    mov.b @(0x6,r4),r0
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce326f8,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce326fa,pc),r0
    mov.b r6,@(r0,r4)
    add 0x5C,r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce326c8
    mov 0x40,r5
    mov 0x47,r5

LAB_ce326c8:
    mov.w @(DAT_ce326f6,pc),r0
    mov.l @(PTR_ce3271c,pc),r3
    mov.b r5,@(r0,r4)
    add 0x0B,r0
    mov.w r6,@(r0,r4)
    add 0xF2,r0
    mov.b r6,@(r0,r4)
    add 0x26,r0
    mov.l r6,@(r0,r4)
    mov 0x2E,r6
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32720,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce326f2:
    #data 0x01d2
DAT_ce326f4:
    #data 0x0255
DAT_ce326f6:
    #data 0x01a1
DAT_ce326f8:
    #data 0x041c
DAT_ce326fa:
    #data 0x01f9
    #align4

PTR_ce326fc:
    #data loc_8c053082
PTR_ce32700:
    #data loc_8c035162
PTR_ce32704:
    #data loc_8c05218a
PTR_ce32708:
    #data loc_8c056de4
PTR_ce3270c:
    #data loc_8c05115a
DAT_ce32710:
    #data 0x41092492
DAT_ce32714:
    #data 0xbf9a4924
DAT_ce32718:
    #data 0xc0f00000
PTR_ce3271c:
    #data loc_8c2896b0
PTR_ce32720:
    #data loc_8c034e8c
PTR_ce32724:
    #data loc_8c034dee

;=============================================

LAB_ce32728:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32864,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32754
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32868,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32754:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3275a:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3286c,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce32858,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32770:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce32870,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32874,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32878,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3287c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3285a,pc),r0
    mov 0x01,r3
    mov 0x35,r2
    mov.b r3,@(r0,r14)
    mov 0x00,r4
    mov.w @(DAT_ce3285c,pc),r0
    mov 0x05,r6
    mov.l @(PTR_ce32880,pc),r3
    mov 0x16,r5
    mov.b r2,@(r0,r14)
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
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce32884,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce327d2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32864,pc),r3
    jsr @r3
    mov r5,r13
    mov.w @(DAT_ce3285e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32814
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r3,r5
    mov r3,r7
    add 0x01,r0
    mov r3,r6
    mov.b r0,@(0x6,r14)
    mov 0x0B,r2
    mov.w @(DAT_ce3285e,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x20,r0
    mov.l @(PTR_ce32888,pc),r3
    mov.b r2,@r13
    mov.b r0,@(0x1,r13)
    mov 0x03,r0
    mov.w r0,@(0x2,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32860,pc),r0
    mov.b r0,@(0x4,r13)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32814:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3281c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    mov.w @(DAT_ce32860,pc),r0
    mov r13,r5
    sts.l PR,@-r15
    mov.b r0,@(0x4,r13)
    bsr FUN_ce31ca0
    mov r14,r4
    mov.l @(PTR_ce32864,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce32850
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x1,r13)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32850:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32858:
    #data 0x02a4
DAT_ce3285a:
    #data 0x01f9
DAT_ce3285c:
    #data 0x01a1
DAT_ce3285e:
    #data 0x0141
DAT_ce32860:
    #data 0x00ff
    #align4

PTR_ce32864:
    #data loc_8c034dee
PTR_ce32868:
    #data loc_8c051648
PTR_ce3286c:
    #data PTR_ce34038
PTR_ce32870:
    #data loc_8c035162
PTR_ce32874:
    #data loc_8c05218a
PTR_ce32878:
    #data loc_8c056de4
PTR_ce3287c:
    #data loc_8c05115a
PTR_ce32880:
    #data loc_8c2896b0
PTR_ce32884:
    #data loc_8c034e8c
PTR_ce32888:
    #data loc_8c068ee4

;=============================================

LAB_ce3288c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce329e4,pc),r0
    mov r5,r3
    mov.l r5,@r15
    mov r4,r14
    mov.b r0,@(0x4,r3)
    mov.l @(PTR_ce329f0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce328d2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.l @r15,r3
    mov r0,r5
    mov.b r0,@(0x4,r3)
    mov.l @(PTR_ce329f4,pc),r3
    jsr @r3
    mov r14,r4
    mov r14,r4
    mov 0x16,r5
    mov 0x06,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce329f8,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce328d2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce328da:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce329f0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32902
    mov.l @(PTR_ce329fc,pc),r3
    mov 0x2B,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce329e6,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce32a00,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32902:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32908:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce32a04,pc),r3
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
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32a08,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;=============================================

FUN_ce32942:
    mova @(DAT_ce32a0c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce32a10,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce329e8,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s LAB_ce3296c
    mov 0x00,r5
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce3296c:
    mov.w @(DAT_ce329ea,pc),r0
    mov.w r5,@(r0,r4)
    add 0x02,r0
    mov.w r5,@(r0,r4)
    mov r5,r0
    nop
    rts
    mov.w r0,@(0x1c,r4)

LAB_ce3297c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce329f4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce329e6,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32a14,pc),r2
    jsr @r2
    mov r14,r4
    bsr FUN_ce32942
    mov r14,r4
    mov.l @(PTR_ce32a18,pc),r2
    mov 0x0A,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce329ec,pc),r0
    mov 0x3B,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32a1c,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32a20,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce329f8,pc),r3
    mov 0x09,r6
    mov 0x14,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329e4:
    #data 0x00ff
DAT_ce329e6:
    #data 0x01f9
DAT_ce329e8:
    #data 0x01d2
DAT_ce329ea:
    #data 0x0350
DAT_ce329ec:
    #data 0x01a1
    #align4

PTR_ce329f0:
    #data loc_8c034dee
PTR_ce329f4:
    #data loc_8c035162
PTR_ce329f8:
    #data loc_8c034e8c
PTR_ce329fc:
    #data loc_8c042008
PTR_ce32a00:
    #data loc_8c051648
PTR_ce32a04:
    #data loc_8c052c84
PTR_ce32a08:
    #data PTR_ce3404c
DAT_ce32a0c:
    #data 0x41555555
DAT_ce32a10:
    #data 0xbed55555
PTR_ce32a14:
    #data loc_8c05218a
PTR_ce32a18:
    #data loc_8c056de4
PTR_ce32a1c:
    #data loc_8c2896b0
PTR_ce32a20:
    #data loc_8c05115a

;=============================================

LAB_ce32a24:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32afc,pc),r3
    jsr @r3
    mov 0x00,r13
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce32a92
    mov.w @(DAT_ce32af2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32a66
    mov.b r13,@(r0,r14)
    add 0x61,r0
    mov 0x3B,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32b00,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce32a66:
    mov.w @(DAT_ce32af4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32aea
    mov.l @(PTR_ce32b04,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce32a8c
    mov.w @(DAT_ce32af6,pc),r0
    mov.w @(r0,r14),r3
    add 0x04,r0
    mov.w @(r0,r14),r2
    extu.w r3,r3
    extu.w r2,r2
    or r2,r3
    mov.w @(DAT_ce32af8,pc),r2
    tst r2,r3
    bt LAB_ce32aea

LAB_ce32a8c:
    mov 0x01,r0
    bra LAB_ce32aea
    mov.w r0,@(0x1c,r14)

LAB_ce32a92:
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce32aac
    mov 0x05,r0
    mov.l @(PTR_ce32b08,pc),r3
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov 0x10,r6
    mov 0x14,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32aac:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce32942
    mov r14,r4
    mov.w @(DAT_ce32afa,pc),r0
    mov 0x3C,r2
    mov.l @(PTR_ce32b00,pc),r3
    mov 0x0A,r6
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
    mov.l @(PTR_ce32b08,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32aea:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32af2:
    #data 0x0140
DAT_ce32af4:
    #data 0x0141
DAT_ce32af6:
    #data 0x034e
DAT_ce32af8:
    #data 0x0360
DAT_ce32afa:
    #data 0x01a1
    #align4

PTR_ce32afc:
    #data loc_8c034dee
PTR_ce32b00:
    #data loc_8c2896b0
PTR_ce32b04:
    #data loc_8c055d54
PTR_ce32b08:
    #data loc_8c034e8c

;=============================================

LAB_ce32b0c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32c20,pc),r3
    jsr @r3
    mov 0x00,r13
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce32b7a
    mov.w @(DAT_ce32c16,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32b4e
    mov.b r13,@(r0,r14)
    add 0x61,r0
    mov 0x3B,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32c24,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce32b4e:
    mov.w @(DAT_ce32c18,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32bd2
    mov.l @(PTR_ce32c28,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce32b74
    mov.w @(DAT_ce32c1a,pc),r0
    mov.w @(r0,r14),r3
    add 0x04,r0
    mov.w @(r0,r14),r2
    extu.w r3,r3
    extu.w r2,r2
    or r2,r3
    mov.w @(DAT_ce32c1c,pc),r2
    tst r2,r3
    bt LAB_ce32bd2

LAB_ce32b74:
    mov 0x01,r0
    bra LAB_ce32bd2
    mov.w r0,@(0x1c,r14)

LAB_ce32b7a:
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce32b94
    mov 0x05,r0
    mov.l @(PTR_ce32c2c,pc),r3
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov 0x10,r6
    mov 0x14,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32b94:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce32942
    mov r14,r4
    mov.w @(DAT_ce32c1e,pc),r0
    mov 0x3D,r2
    mov.l @(PTR_ce32c24,pc),r3
    mov 0x0B,r6
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
    mov.l @(PTR_ce32c2c,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32bd2:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32bda:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32c20,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce32c30
    mov.w @(DAT_ce32c18,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32c86
    mov.l @(PTR_ce32c28,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce32c10
    mov.w @(DAT_ce32c1a,pc),r0
    mov.w @(r0,r14),r3
    add 0x04,r0
    mov.w @(r0,r14),r2
    extu.w r3,r3
    extu.w r2,r2
    or r2,r3
    mov.w @(DAT_ce32c1c,pc),r2
    tst r2,r3
    bt LAB_ce32c86

LAB_ce32c10:
    mov 0x01,r0
    bra LAB_ce32c86
    mov.w r0,@(0x1c,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c16:
    #data 0x0140
DAT_ce32c18:
    #data 0x0141
DAT_ce32c1a:
    #data 0x034e
DAT_ce32c1c:
    #data 0x0360
DAT_ce32c1e:
    #data 0x01a1
    #align4

PTR_ce32c20:
    #data loc_8c034dee
PTR_ce32c24:
    #data loc_8c2896b0
PTR_ce32c28:
    #data loc_8c055d54
PTR_ce32c2c:
    #data loc_8c034e8c

;=============================================

LAB_ce32c30:
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce32c48
    mov.l @(PTR_ce32d78,pc),r3
    mov 0x05,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov 0x10,r6
    mov 0x14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32c48:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce32942
    mov r14,r4
    mov.w @(DAT_ce32d6e,pc),r0
    mov 0x3E,r2
    mov 0x00,r4
    mov.l @(PTR_ce32d7c,pc),r3
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov 0x0C,r6
    mov.l @r3,r2
    mov 0x14,r5
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce32d78,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce32c86:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c8c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32d80,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32ca6
    lds.l @r15+,PR
    mov.l @(PTR_ce32d84,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ca6:
    mov.w @(DAT_ce32d70,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32cbe
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x03,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce32d88,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32cbe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32cc4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32d80,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32cde
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32d84,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32cde:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32ce6:
    mov r4,r3
    mov.l @(PTR_ce32d8c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32cf8:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce32d90,pc),r3
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
    mov.w @(DAT_ce32d72,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32d74,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32d94,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32d98,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32d6e,pc),r0
    mov 0x43,r2
    mov.l @(PTR_ce32d7c,pc),r3
    mov 0x2F,r6
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
    mov.l @(PTR_ce32d78,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32d6e:
    #data 0x01a1
DAT_ce32d70:
    #data 0x0141
DAT_ce32d72:
    #data 0x01f9
DAT_ce32d74:
    #data 0x041c
    #align4

PTR_ce32d78:
    #data loc_8c034e8c
PTR_ce32d7c:
    #data loc_8c2896b0
PTR_ce32d80:
    #data loc_8c034dee
PTR_ce32d84:
    #data loc_8c051648
PTR_ce32d88:
    #data loc_8c068b40
PTR_ce32d8c:
    #data PTR_ce34064
PTR_ce32d90:
    #data loc_8c035162
PTR_ce32d94:
    #data loc_8c05218a
PTR_ce32d98:
    #data loc_8c05115a

;=============================================

LAB_ce32d9c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32edc,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32dbc
    mov.l @(PTR_ce32ee0,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32dbc:
    mov.w @(DAT_ce32ed4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32dde
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32ee4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32ee8,pc),r0
    mov.l @(PTR_ce32eec,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32dde:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32de6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce32e24
    mov.b @(0x6,r14),r0
    mov 0x01,r7
    fldi0 fr4
    mov r7,r5
    add 0x01,r0
    mov.l @(PTR_ce32ef0,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x19,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32ef4,pc),r2
    mov r14,r4
    mov 0x04,r6
    mov 0x13,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32e24:
    mov.l @(PTR_ce32edc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32e42
    mov.l @(PTR_ce32ef8,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32ee0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e42:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e48:
    mov r4,r3
    mov.l @(PTR_ce32efc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32e5a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce32ef8,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32ed6,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32f00,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32ed8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32e8a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32e8a:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32f04,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x3A,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32f08,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce32eda,pc),r0
    mov 0x07,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32f0c,pc),r3
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
    mov.l @(PTR_ce32ef4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ed4:
    #data 0x0141
DAT_ce32ed6:
    #data 0x01f9
DAT_ce32ed8:
    #data 0x01d2
DAT_ce32eda:
    #data 0x01a1
    #align4

PTR_ce32edc:
    #data loc_8c034dee
PTR_ce32ee0:
    #data loc_8c051648
DAT_ce32ee4:
    #data 0x4276aaaa
DAT_ce32ee8:
    #data 0x42c52492
PTR_ce32eec:
    #data loc_8c050ea4
PTR_ce32ef0:
    #data loc_8c03544c
PTR_ce32ef4:
    #data loc_8c034e8c
PTR_ce32ef8:
    #data loc_8c035162
PTR_ce32efc:
    #data PTR_ce3406c
DAT_ce32f00:
    #data 0x41f00000
DAT_ce32f04:
    #data 0x40892492
DAT_ce32f08:
    #data 0xbf4db6db
PTR_ce32f0c:
    #data loc_8c2896b0

;=============================================

LAB_ce32f10:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33024,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce33028,pc),r3
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
    bt LAB_ce32f78
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce3302c,pc),r3
    mov 0x08,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33030,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32f78:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f7e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33024,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32fa0
    mov.l @(PTR_ce33034,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33038,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32fa0:
    mov.w @(DAT_ce33016,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32fb8
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x07,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce3303c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32fb8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fbe:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33018,pc),r1
    mov.l @(PTR_ce33040,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce32fd6:
    mov.w @(DAT_ce3301a,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3301c,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33078
    mov.w @(DAT_ce3301e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33048
    mov.w @(DAT_ce33020,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33048
    mov.l @(PTR_ce33044,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33078
    mov r0,r4
    bra LAB_ce3306a
    mov 0x02,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33016:
    #data 0x0141
DAT_ce33018:
    #data 0x01f9
DAT_ce3301a:
    #data 0x01fa
DAT_ce3301c:
    #data 0x0c00
DAT_ce3301e:
    #data 0x01fe
DAT_ce33020:
    #data 0x01a3
    #align4

PTR_ce33024:
    #data loc_8c034dee
PTR_ce33028:
    #data loc_8c052ce2
PTR_ce3302c:
    #data loc_8c034e8c
PTR_ce33030:
    #data loc_8c0511b4
PTR_ce33034:
    #data loc_8c035162
PTR_ce33038:
    #data loc_8c051854
PTR_ce3303c:
    #data loc_8c0bfc20
PTR_ce33040:
    #data PTR_ce34078
PTR_ce33044:
    #data loc_8c045790

;=============================================

LAB_ce33048:
    mov.w @(DAT_ce33154,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33078
    mov.w @(DAT_ce33156,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33078
    mov.l @(PTR_ce33164,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33078
    mov r0,r4
    mov 0x05,r2

LAB_ce3306a:
    mov.w @(DAT_ce33158,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33078:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33080:
    mov.w @(DAT_ce3315a,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3315c,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce330ce
    mov.w @(DAT_ce33154,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce330ce
    mov.w @(DAT_ce33156,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce330ce
    mov.l @(PTR_ce33164,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce330ce
    mov r0,r4
    mov.w @(DAT_ce33158,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce330ce:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce330d6:
    mov.w @(DAT_ce3315a,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3315c,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce33134
    mov.w @(DAT_ce33154,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33134
    mov.w @(DAT_ce33156,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33134
    mova @(DAT_ce33168,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce3315e,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bf LAB_ce33134
    mov.l @(PTR_ce33164,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33134
    mov r0,r4
    mov.w @(DAT_ce33158,pc),r0
    mov.w @(DAT_ce33160,pc),r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33134:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3313c:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33158,pc),r1
    mov.l @(PTR_ce3316c,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33154:
    #data 0x01fe
DAT_ce33156:
    #data 0x01a3
DAT_ce33158:
    #data 0x01f7
DAT_ce3315a:
    #data 0x01fa
DAT_ce3315c:
    #data 0x0c00
DAT_ce3315e:
    #data 0x041c
DAT_ce33160:
    #data 0x0084
    #align4

PTR_ce33164:
    #data loc_8c045790
DAT_ce33168:
    #data 0x43092492
PTR_ce3316c:
    #data PTR_ce34088

;=============================================

LAB_ce33170:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mova @(DAT_ce332bc,pc),r0
    mov.l @(PTR_ce332c4,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce332c0,pc),r0
    mov r4,r14
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce332ba,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce332c8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce332cc,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce331ac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mova @(DAT_ce332d0,pc),r0
    mov.l @(PTR_ce332c4,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce332c0,pc),r0
    mov r4,r14
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce332ba,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce332c8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce332cc,pc),r2
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce331e8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mova @(DAT_ce332d0,pc),r0
    mov.l @(PTR_ce332c4,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce332c0,pc),r0
    mov r4,r14
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce332ba,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce332c8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce332cc,pc),r2
    mov 0x0F,r5
    mov 0x02,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33224:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mova @(DAT_ce332d0,pc),r0
    mov.l @(PTR_ce332c4,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce332c0,pc),r0
    mov r4,r14
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce332ba,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce332c8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce332cc,pc),r2
    mov 0x0F,r5
    mov 0x03,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33260:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mova @(DAT_ce332d4,pc),r0
    mov.l @(PTR_ce332c4,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce332d8,pc),r0
    mov r4,r14
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce332ba,pc),r0
    mov 0x0A,r2
    fldi0 fr4
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fldi1 fr3
    fadd fr3,fr3
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    mov.l @(PTR_ce332c8,pc),r3
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce332dc,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce332cc,pc),r2
    mov 0x0F,r5
    mov 0x06,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce332ba:
    #data 0x01a0
    #align4

DAT_ce332bc:
    #data 0x42555555
DAT_ce332c0:
    #data 0x432b6db6
PTR_ce332c4:
    #data loc_8c103660
PTR_ce332c8:
    #data loc_8c056f2a
PTR_ce332cc:
    #data loc_8c034e8c
DAT_ce332d0:
    #data 0xc2555555
DAT_ce332d4:
    #data 0xc1d55555
DAT_ce332d8:
    #data 0x42cdb6db
DAT_ce332dc:
    #data 0xbf4db6db

;=============================================

LAB_ce332e0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mova @(DAT_ce333c0,pc),r0
    mov.l @(PTR_ce333c8,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce333c4,pc),r0
    mov r4,r14
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce333b4,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce333cc,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce333d0,pc),r2
    mov 0x0F,r5
    mov 0x08,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3331c:
    mov.w @(DAT_ce333b6,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce333d4,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3333a:
    mov r4,r3
    mov.l @(PTR_ce333d8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3334c:
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x00,r0
    mov.w r0,@(0x1c,r4)
    mova @(DAT_ce333dc,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce333e0,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce333e4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce333e8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce333b8,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3338e
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce3338e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce333ec,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce333ba,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x18,r0
    bf LAB_ce333f0
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce333bc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce333b4:
    #data 0x01a0
DAT_ce333b6:
    #data 0x01ea
DAT_ce333b8:
    #data 0x01d2
DAT_ce333ba:
    #data 0x0141
DAT_ce333bc:
    #data 0x041c
    #align4

DAT_ce333c0:
    #data 0xc2555555
DAT_ce333c4:
    #data 0x432b6db6
PTR_ce333c8:
    #data loc_8c103660
PTR_ce333cc:
    #data loc_8c056f2a
PTR_ce333d0:
    #data loc_8c034e8c
PTR_ce333d4:
    #data PTR_ce340a0
PTR_ce333d8:
    #data PTR_ce340b8
DAT_ce333dc:
    #data 0x41855555
DAT_ce333e0:
    #data 0xbed55555
DAT_ce333e4:
    #data 0x414db6db
DAT_ce333e8:
    #data 0xbf892492
PTR_ce333ec:
    #data loc_8c034dee

;=============================================

LAB_ce333f0:
    mov.w @(0x1c,r14),r0
    mov 0x0C,r3
    cmp/gt r3,r0
    bf LAB_ce33430
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

LAB_ce33430:
    mov.w @(DAT_ce33540,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33494
    mov.b @(r0,r14),r0
    mov 0x00,r3
    mov.l @(PTR_ce33548,pc),r4
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce33540,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(0x1c,r14),r0
    cmp/gt r0,r3
    addc r3,r0
    shar r0
    shll r0
    mov.w @(r0,r4),r2
    mova @(DAT_ce3354c,pc),r0
    fmov.s @r0,fr2
    lds r2,FPUL
    mov.w @(DAT_ce33542,pc),r0
    float FPUL,fr3
    mov.b @(r0,r14),r3
    tst r3,r3
    fmov fr3,fr4
    bf/s LAB_ce33466
    fmul fr2,fr4
    fneg fr4

LAB_ce33466:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    mov 0x00,r3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(0x1c,r14),r0
    cmp/gt r0,r3
    addc r3,r0
    shar r0
    shll r0
    add r0,r4
    mov.w @(0x2,r4),r0
    mov r0,r3
    lds r3,FPUL
    mova @(DAT_ce33550,pc),r0
    fmov.s @r0,fr2
    mov 0x38,r0
    float FPUL,fr3
    fmov fr3,fr4
    fmul fr2,fr4
    fmov.s @(r0,r14),fr3
    fsub fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce33494:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3349a:
    mov.w @(DAT_ce33540,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce334e6
    mov 0x00,r5
    mov.w @(DAT_ce33542,pc),r1
    mov.b r5,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce33544,pc),r0
    mov 0x20,r2
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
    add 0x58,r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)
    add 0xED,r0
    mov.w r5,@(r0,r14)
    add r4,r1
    mov.w @(DAT_ce33546,pc),r0
    mov.l @(PTR_ce33554,pc),r3
    mov.b @(r0,r14),r0
    xor 0x01,r0
    mov.b r0,@r1
    extu.b r0,r0
    mov.w @(DAT_ce33546,pc),r1
    add r4,r1
    mov.w r0,@r1
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce334e6:
    mov.l @(PTR_ce33558,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33518
    mov.b @(0x6,r14),r0
    mov r14,r4
    fldi0 fr4
    mov 0x00,r6
    add 0x01,r0
    mov.l @(PTR_ce3355c,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x11,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33518:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3351e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33558,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33538
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33560,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33538:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33540:
    #data 0x0141
DAT_ce33542:
    #data 0x01d2
DAT_ce33544:
    #data 0x01c8
DAT_ce33546:
    #data 0x0130
    #align4

PTR_ce33548:
    #data DAT_ce340c8
DAT_ce3354c:
    #data 0x3fd55555
DAT_ce33550:
    #data 0x40092492
PTR_ce33554:
    #data loc_8c0423fc
PTR_ce33558:
    #data loc_8c034dee
PTR_ce3355c:
    #data loc_8c034e8c
PTR_ce33560:
    #data loc_8c051648

;=============================================

LAB_ce33564:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33698,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3357e
    lds.l @r15+,PR
    mov.l @(PTR_ce3369c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3357e:
    mov.w @(DAT_ce33686,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce335a6
    mov.w @(DAT_ce33686,pc),r0
    mov 0x00,r2
    mov 0x01,r3
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33688,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov 0x21,r3
    mov.b r2,@(r0,r4)
    add 0xCF,r0
    mov.b r3,@(r0,r4)

LAB_ce335a6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce335ac:
    mov.w @(DAT_ce33686,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt/s LAB_ce335da
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bt LAB_ce335da
    mov.w @(DAT_ce3368a,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3368c,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce335da:
    mov.w @(DAT_ce33686,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf LAB_ce33606
    mov.w @(DAT_ce33686,pc),r0
    mov 0x22,r2
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce33688,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x1E,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    add 0xCF,r0
    mov.b r2,@(r0,r4)
    add 0x55,r0
    mov 0x0B,r3
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce336a0,pc),r3
    jsr @r3
    nop

LAB_ce33606:
    mov.l @(PTR_ce33698,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3361c
    lds.l @r15+,PR
    mov.l @(PTR_ce3369c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3361c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33622:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    mov 0x01,r10
    fmov.s fr15,@-r15
    mov.w @(DAT_ce3368e,pc),r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add r14,r13
    fldi0 fr15
    tst r0,r0
    bt/s LAB_ce33646
    mov 0x00,r12
    bra LAB_ce33774
    nop

LAB_ce33646:
    mov.l @(PTR_ce33698,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce336da
    mov.w @(DAT_ce33686,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bt LAB_ce3365e
    bra LAB_ce33842
    nop

LAB_ce3365e:
    mov.w @(DAT_ce33686,pc),r0
    mov.b r10,@(r0,r14)
    mov.w @(DAT_ce33690,pc),r0
    mov.w @(r0,r14),r5
    mov.w @(DAT_ce33692,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce336aa
    mov.w @(DAT_ce33694,pc),r3
    extu.w r5,r4
    mov 0x04,r7
    tst r4,r3
    bt/s LAB_ce336a4
    mov 0x0E,r6
    mov 0x22,r0
    mov.b r6,@r13
    mov 0x1C,r3
    mov.b r3,@(r0,r14)
    bra LAB_ce336b2
    mov r7,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33686:
    #data 0x0141
DAT_ce33688:
    #data 0x01c8
DAT_ce3368a:
    #data 0x01d2
DAT_ce3368c:
    #data 0x0130
DAT_ce3368e:
    #data 0x02a4
DAT_ce33690:
    #data 0x034a
DAT_ce33692:
    #data 0x0525
DAT_ce33694:
    #data 0x0800
    #align4

PTR_ce33698:
    #data loc_8c034dee
PTR_ce3369c:
    #data loc_8c051648
PTR_ce336a0:
    #data loc_8c0423fc

;=============================================

LAB_ce336a4:
    mov.w @(DAT_ce33752,pc),r2
    tst r2,r4
    bf LAB_ce336b6

LAB_ce336aa:
    mov 0x22,r0
    mov.b r12,@r13
    mov.b r12,@(r0,r14)
    mov 0x05,r0

LAB_ce336b2:
    bra LAB_ce33842
    mov.w r0,@(0x1c,r14)

LAB_ce336b6:
    mov 0x22,r0
    mov.b r6,@r13
    mov 0x1C,r1
    mov.b r1,@(r0,r14)
    mov r7,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce33754,pc),r0
    mov.w @(DAT_ce33754,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.b r0,@r1
    extu.b r0,r0
    mov.w @(DAT_ce33756,pc),r1
    add r14,r1
    bra LAB_ce33842
    mov.w r0,@r1

LAB_ce336da:
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce3375c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(0x1c,r14),r0
    mov r0,r6
    jsr @r3
    mov r14,r4
    mov 0x40,r0
    mov.b r0,@(0x1,r13)
    mov 0x0D,r0
    mov.w r0,@(0x2,r13)
    mov.w @(DAT_ce33758,pc),r0
    mov.b r0,@(0x4,r13)
    mov 0x1E,r0
    mov.w r0,@(0x1c,r14)
    mov r10,r0
    nop
    mov.l @(PTR_ce33760,pc),r3
    mov 0x01,r5
    mov 0x02,r6
    mov.w r0,@(0x1e,r14)
    mov 0x00,r7
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3375a,pc),r0
    mov r14,r2
    mov.l @(PTR_ce33764,pc),r3
    add 0x34,r2
    mov.l @(r0,r14),r4
    mov r4,r1
    add 0x34,r1
    jsr @r3
    mov 0x0C,r0
    mov 0x22,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce3373a
    fmov fr15,fr4
    mova @(DAT_ce33768,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce33754,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3373a
    mova @(DAT_ce3376c,pc),r0
    fmov.s @r0,fr4

LAB_ce3373a:
    mov 0x34,r0
    mov.l @(DAT_ce33770,pc),r1
    fmov.s @(r0,r4),fr3
    lds r1,FPUL
    fadd fr4,fr3
    fmov fr3,@(r0,r4)
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    bra LAB_ce33842
    fmov fr2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33752:
    #data 0x0400
DAT_ce33754:
    #data 0x01d2
DAT_ce33756:
    #data 0x0130
DAT_ce33758:
    #data 0x00ff
DAT_ce3375a:
    #data 0x01c8
    #align4

PTR_ce3375c:
    #data loc_8c034e8c
PTR_ce33760:
    #data loc_8c068ee4
PTR_ce33764:
    #data loc_8c1294c8
DAT_ce33768:
    #data 0xc3200000
DAT_ce3376c:
    #data 0x43200000
DAT_ce33770:
    #data 0x434db6db

;=============================================

LAB_ce33774:
    mov.w @(DAT_ce33864,pc),r0
    mov.b r0,@(0x4,r13)
    mov.w @(DAT_ce33866,pc),r0
    mov.l @(r0,r14),r11
    add 0x35,r0
    mov.b @(r0,r11),r3
    tst r3,r3
    bt LAB_ce3378a
    mov r12,r0
    nop
    mov.w r0,@(0x2,r13)

LAB_ce3378a:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bf LAB_ce337f0
    mov.l @(PTR_ce33870,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33874,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(0x2,r13),r0
    tst r0,r0
    bt LAB_ce33842
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33842
    mov r10,r0
    nop
    mov.w r0,@(0x1e,r14)
    mova @(DAT_ce33878,pc),r0
    fmov.s @r0,fr5
    mov 0x22,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce337de
    fmov fr15,fr4
    mova @(DAT_ce3387c,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce33880,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce33868,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce337de
    mova @(DAT_ce33884,pc),r0
    fmov.s @r0,fr4

LAB_ce337de:
    mov 0x34,r0
    fmov.s @(r0,r11),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r11)
    mov 0x38,r0
    fmov.s @(r0,r11),fr2
    fadd fr5,fr2
    bra LAB_ce33842
    fmov fr2,@(r0,r11)

LAB_ce337f0:
    mov r12,r0
    nop
    mov.w r0,@(0x2,r13)
    mov.b r0,@(0x4,r13)
    mov.w @(DAT_ce3386a,pc),r0
    mov.w @(DAT_ce3386c,pc),r3
    mov.l r14,@(r0,r11)
    add 0x42,r0
    mov.b r10,@(r0,r11)
    add 0xAB,r0
    mov.b r3,@(r0,r11)
    add 0x31,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce33820
    mov 0x00,r5
    mov 0x22,r0
    mov.b @(r0,r14),r0
    mov 0x22,r1
    add r14,r1
    neg r0,r0
    add 0x20,r0
    and 0x1F,r0
    mov.b r0,@r1

LAB_ce33820:
    mov.l @(PTR_ce33888,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3388c,pc),r2
    mov 0x2B,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33890,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33842:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33852:
    mov r4,r3
    mov.l @(PTR_ce33894,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33864:
    #data 0x00ff
DAT_ce33866:
    #data 0x01c8
DAT_ce33868:
    #data 0x01d2
DAT_ce3386a:
    #data 0x01b4
DAT_ce3386c:
    #data 0x00a3
    #align4

PTR_ce33870:
    #data FUN_ce31ca0
PTR_ce33874:
    #data loc_8c034dee
DAT_ce33878:
    #data 0x419a4924
DAT_ce3387c:
    #data 0xc1200000
DAT_ce33880:
    #data 0x414db6db
DAT_ce33884:
    #data 0x41200000
PTR_ce33888:
    #data loc_8c035162
PTR_ce3388c:
    #data loc_8c042008
PTR_ce33890:
    #data loc_8c051648
PTR_ce33894:
    #data PTR_ce340e0

;=============================================

LAB_ce33898:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce339c0,pc),r3
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
    mov.w @(DAT_ce339b6,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce33904
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce339c4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce339c8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce33904:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3390a:
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
    mova @(DAT_ce339cc,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce339b8,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bf LAB_ce339b0
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce339c0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce339d0,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce339ba,pc),r0
    mov 0x01,r3
    mov 0x00,r7
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov r7,r6
    mov 0x01,r5
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov 0x24,r3
    mov.b r2,@(r0,r4)
    add 0xCF,r0
    mov.b r3,@(r0,r4)
    mov 0x40,r0
    mov.w @(DAT_ce339bc,pc),r4
    mov 0x08,r3
    add r14,r4
    mov.b r3,@r4
    mov.b r0,@(0x1,r4)
    mov 0x05,r0
    mov.w r0,@(0x2,r4)
    mov.w @(DAT_ce339be,pc),r0
    mov.l @(PTR_ce339d4,pc),r3
    mov.b r0,@(0x4,r4)
    mov r14,r4
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce339b0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce339b6:
    #data 0x0141
DAT_ce339b8:
    #data 0x041c
DAT_ce339ba:
    #data 0x01c8
DAT_ce339bc:
    #data 0x02a4
DAT_ce339be:
    #data 0x00ff
    #align4

PTR_ce339c0:
    #data loc_8c034dee
DAT_ce339c4:
    #data 0xc0cdb6db
DAT_ce339c8:
    #data 0xbf4db6db
DAT_ce339cc:
    #data 0x43892492
DAT_ce339d0:
    #data 0x3f092492
PTR_ce339d4:
    #data loc_8c068ee4

;=============================================

LAB_ce339d8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x5C,r1
    mov.w @(DAT_ce33aee,pc),r13
    add r14,r1
    mov.w @(DAT_ce33af0,pc),r0
    add r14,r13
    sts.l PR,@-r15
    mov.b r0,@(0x4,r13)
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
    mov.w @(DAT_ce33af2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33a3c
    mova @(DAT_ce33af8,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce33af2,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    bra LAB_ce33a50
    fmov fr2,@(r0,r14)

LAB_ce33a3c:
    mov.l @(PTR_ce33afc,pc),r2
    mov r13,r5
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce33aa0

LAB_ce33a50:
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x4,r13)
    mova @(DAT_ce33b00,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33af4,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33a72
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce33a72:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33b04,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce33b0c,pc),r3
    mov 0x00,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33b08,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33b10,pc),r2
    mov 0x07,r6
    mov 0x0F,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33aa0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33aa8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33b14,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce33b18,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33b1c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce33ad6
    mov.l @(PTR_ce33b20,pc),r3
    mov 0x2B,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33b24,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33ad6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33adc:
    mov r4,r3
    mov.l @(PTR_ce33b28,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33aee:
    #data 0x02a4
DAT_ce33af0:
    #data 0x00ff
DAT_ce33af2:
    #data 0x041c
DAT_ce33af4:
    #data 0x0130
    #align4

DAT_ce33af8:
    #data 0xc0092492
PTR_ce33afc:
    #data FUN_ce31ca0
DAT_ce33b00:
    #data 0x40555555
DAT_ce33b04:
    #data 0x41ab6db6
DAT_ce33b08:
    #data 0xbf4db6db
PTR_ce33b0c:
    #data loc_8c035162
PTR_ce33b10:
    #data loc_8c034e8c
PTR_ce33b14:
    #data loc_8c034dee
PTR_ce33b18:
    #data loc_8c04fea8
PTR_ce33b1c:
    #data loc_8c052ce2
PTR_ce33b20:
    #data loc_8c042008
PTR_ce33b24:
    #data loc_8c052dac
PTR_ce33b28:
    #data PTR_ce340f0

;=============================================

LAB_ce33b2c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33c7c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33c6e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33b6e
    mov.b @(0x6,r14),r0
    mov 0x0C,r3
    mov.w @(DAT_ce33c70,pc),r13
    mov 0x02,r6
    add 0x01,r0
    mov.l @(PTR_ce33c80,pc),r2
    mov.b r0,@(0x6,r14)
    mov 0x40,r0
    add r14,r13
    mov.b r0,@(0x1,r13)
    mov 0x00,r0
    mov.w r0,@(0x2,r13)
    mov 0x01,r5
    mov.w @(DAT_ce33c72,pc),r0
    mov 0x00,r7
    mov.b r0,@(0x4,r13)
    mov.b r3,@r13
    jsr @r2
    mov r14,r4
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    mov 0x00,r0
    mov.b r0,@(0x6,r13)

LAB_ce33b6e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33b76:
    mov.w @(DAT_ce33c70,pc),r5
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33c72,pc),r0
    add r14,r5
    sts.l PR,@-r15
    mov.l @(PTR_ce33c84,pc),r3
    mov.b r0,@(0x4,r5)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33c7c,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bt LAB_ce33bb0
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33c88,pc),r3
    mov 0x09,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33bb0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33bb6:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce33c70,pc),r13
    mov.w @(DAT_ce33c72,pc),r0
    add r14,r13
    sts.l PR,@-r15
    mov.b r0,@(0x4,r13)
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce33bd4
    mov.l @(PTR_ce33c84,pc),r3
    mov r13,r5
    jsr @r3
    mov r14,r4

LAB_ce33bd4:
    mov.l @(PTR_ce33c7c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce33c24
    mov.w @(DAT_ce33c6e,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bt LAB_ce33c40
    mov.w @(DAT_ce33c6e,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x4,r13)
    mov r4,r5
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33c8c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33c74,pc),r0
    mov 0x01,r3
    mov.w @(DAT_ce33c76,pc),r1
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r0
    add r4,r1
    mov 0x25,r3
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce33c78,pc),r0
    bra LAB_ce33c40
    mov.b r3,@(r0,r4)

LAB_ce33c24:
    mov.l @(PTR_ce33c8c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33c90,pc),r2
    mov 0x2B,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33c94,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33c40:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33c48:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33c7a,pc),r1
    mov.l @(PTR_ce33c98,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce33c60:
    mov.w @(DAT_ce33c74,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33c9c,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33c6e:
    #data 0x0141
DAT_ce33c70:
    #data 0x02a4
DAT_ce33c72:
    #data 0x00ff
DAT_ce33c74:
    #data 0x01c8
DAT_ce33c76:
    #data 0x01d2
DAT_ce33c78:
    #data 0x01a1
DAT_ce33c7a:
    #data 0x01f7
    #align4

PTR_ce33c7c:
    #data loc_8c034dee
PTR_ce33c80:
    #data loc_8c068ee4
PTR_ce33c84:
    #data FUN_ce31ca0
PTR_ce33c88:
    #data loc_8c034e8c
PTR_ce33c8c:
    #data loc_8c035162
PTR_ce33c90:
    #data loc_8c042008
PTR_ce33c94:
    #data loc_8c051648
PTR_ce33c98:
    #data PTR_ce340fc
PTR_ce33c9c:
    #data loc_8c04cc1c

;=============================================

LAB_ce33ca0:
    mov.w @(DAT_ce33d7e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(r0,r14),r3
    mov.w @(DAT_ce33d80,pc),r0
    mov.b @(r0,r3),r2
    tst r2,r2
    bt LAB_ce33cbc
    mov.w @(DAT_ce33d7e,pc),r0
    mov r14,r5
    mov.l @(PTR_ce33d88,pc),r3
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33cbc:
    rts
    mov.l @r15+,r14

LAB_ce33cc0:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33d82,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33cda
    mov 0x02,r5
    cmp/eq 0x01,r0
    bt LAB_ce33cda
    cmp/eq 0x02,r0
    bf LAB_ce33cde

LAB_ce33cda:
    mov.w @(DAT_ce33d84,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33cde:
    mov.l @(PTR_ce33d8c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33ce4:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33d82,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33cfe
    mov 0x02,r5
    cmp/eq 0x01,r0
    bt LAB_ce33cfe
    cmp/eq 0x02,r0
    bf LAB_ce33d02

LAB_ce33cfe:
    mov.w @(DAT_ce33d84,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33d02:
    mov.l @(PTR_ce33d8c,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33d08:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33d82,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33d28
    cmp/eq 0x01,r0
    bt LAB_ce33d32
    cmp/eq 0x02,r0
    bt LAB_ce33d3a
    bra LAB_ce33d46
    nop

LAB_ce33d28:
    mov.w @(DAT_ce33d84,pc),r0
    mov.b r5,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce33d46
    mov.b r5,@(r0,r4)

LAB_ce33d32:
    mov.w @(DAT_ce33d84,pc),r0
    mov 0x03,r2
    bra LAB_ce33d40
    mov.b r2,@(r0,r4)

LAB_ce33d3a:
    mov.w @(DAT_ce33d84,pc),r0
    mov 0x07,r3
    mov.b r3,@(r0,r4)

LAB_ce33d40:
    mov.w @(DAT_ce33d86,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce33d46:
    mov.l @(PTR_ce33d8c,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce33d4c:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33d82,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33d6c
    cmp/eq 0x01,r0
    bt LAB_ce33d76
    cmp/eq 0x02,r0
    bt LAB_ce33d90
    bra LAB_ce33d9c
    nop

LAB_ce33d6c:
    mov.w @(DAT_ce33d84,pc),r0
    mov.b r5,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce33d9c
    mov.b r5,@(r0,r4)

LAB_ce33d76:
    mov.w @(DAT_ce33d84,pc),r0
    mov 0x03,r2
    bra LAB_ce33d96
    mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33d7e:
    #data 0x01c8
DAT_ce33d80:
    #data 0x0141
DAT_ce33d82:
    #data 0x04c9
DAT_ce33d84:
    #data 0x01e9
DAT_ce33d86:
    #data 0x01a3
    #align4

PTR_ce33d88:
    #data loc_8c04cc1c
PTR_ce33d8c:
    #data loc_8c0530d8

;=============================================

LAB_ce33d90:
    mov.w @(DAT_ce33db2,pc),r0
    mov 0x07,r3
    mov.b r3,@(r0,r4)

LAB_ce33d96:
    mov.w @(DAT_ce33db4,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)

LAB_ce33d9c:
    mov.l @(PTR_ce33dbc,pc),r2
    jmp @r2
    mov 0x15,r5
    mov.w @(DAT_ce33db8,pc),r3
    mov 0x00,r5
    mov.l @(PTR_ce33dc0,pc),r2
    mov.l r4,@-r15
    add r3,r4
    mov.w @(DAT_ce33db6,pc),r6
    jmp @r2
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33db2:
    #data 0x01e9
DAT_ce33db4:
    #data 0x01a3
DAT_ce33db6:
    #data 0x0080
DAT_ce33db8:
    #data 0x02a4
    #align4

PTR_ce33dbc:
    #data loc_8c0530d8
PTR_ce33dc0:
    #data loc_8c129728
DAT_ce33dc4:
    #data 0x02000201
DAT_ce33dc8:
    #data 0x020102ff
DAT_ce33dcc:
    #data 0xffffffff
DAT_ce33dd0:
    #data 0x02010201
DAT_ce33dd4:
    #data 0x02ff02ff
DAT_ce33dd8:
    #data 0xffffffff
DAT_ce33ddc:
    #data 0x02010201
DAT_ce33de0:
    #data 0x02ff02ff
DAT_ce33de4:
    #data 0xffffffff
DAT_ce33de8:
    #data 0x02010201
DAT_ce33dec:
    #data 0x02ff02ff
DAT_ce33df0:
    #data 0xffffffff
DAT_ce33df4:
    #data 0x02000201
DAT_ce33df8:
    #data 0x020102ff
DAT_ce33dfc:
    #data 0x02ffffff
DAT_ce33e00:
    #data 0x02010201
DAT_ce33e04:
    #data 0x02ff02ff
DAT_ce33e08:
    #data 0xffffffff
DAT_ce33e0c:
    #data 0x0003
    #data 0x8100
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33e1c:
    #data 0x0003
    #data 0x8100
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce33e2c:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33e3c:
    #data 0x0003
    #data 0x1000
    #data 0x0008
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x0300
DAT_ce33e4c:
    #data 0x0003
    #data 0x1000
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce33e5c:
    #data 0x0003
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce33e6c:
    #data 0x0032
    #data 0x1000
    #data 0x0004
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0060
DAT_ce33e7a:
    #data 0x003c
    #data 0x1000
    #data 0x0009
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0300
DAT_ce33e88:
    #data 0x0005
    #data 0x1000
    #data 0x000d
    #data 0x0000
    #data 0x0800
    #data 0x1800
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0300
    #align4

PTR_ce33e9c:
    #data LAB_ce30550
PTR_ce33ea0:
    #data LAB_ce3001c
PTR_ce33ea4:
    #data LAB_ce30568
PTR_ce33ea8:
    #data LAB_ce30bd4
PTR_ce33eac:
    #data LAB_ce30fe4
PTR_ce33eb0:
    #data LAB_ce31146
PTR_ce33eb4:
    #data LAB_ce31220
PTR_ce33eb8:
    #data LAB_ce313a8
PTR_ce33ebc:
    #data LAB_ce31522
PTR_ce33ec0:
    #data LAB_ce32fbe
PTR_ce33ec4:
    #data LAB_ce3313c
PTR_ce33ec8:
    #data LAB_ce3331c
PTR_ce33ecc:
    #data LAB_ce33c48
PTR_ce33ed0:
    #data FUN_ce304b2
PTR_ce33ed4:
    #data LAB_ce32e48
PTR_ce33ed8:
    #data LAB_ce30ef8
PTR_ce33edc:
    #data LAB_ce33cc0
PTR_ce33ee0:
    #data LAB_ce33ce4
PTR_ce33ee4:
    #data LAB_ce33d08
PTR_ce33ee8:
    #data LAB_ce33d4c
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce33f0c:
    #data LAB_ce305a8
PTR_ce33f10:
    #data LAB_ce308ce
PTR_ce33f14:
    #data LAB_ce3091c
PTR_ce33f18:
    #data LAB_ce305a8
PTR_ce33f1c:
    #data LAB_ce30bf6
PTR_ce33f20:
    #data LAB_ce30e34
PTR_ce33f24:
    #data LAB_ce30e1e
PTR_ce33f28:
    #data LAB_ce30be8
PTR_ce33f2c:
    #data LAB_ce31028
PTR_ce33f30:
    #data LAB_ce3106e
PTR_ce33f34:
    #data LAB_ce310ec
PTR_ce33f38:
    #data LAB_ce31178
PTR_ce33f3c:
    #data LAB_ce311a6
PTR_ce33f40:
    #data FUN_ce311fe
PTR_ce33f44:
    #data LAB_ce31232
PTR_ce33f48:
    #data LAB_ce3125a
PTR_ce33f4c:
    #data LAB_ce31288
PTR_ce33f50:
    #data LAB_ce312e0
PTR_ce33f54:
    #data LAB_ce31314
PTR_ce33f58:
    #data LAB_ce313dc
PTR_ce33f5c:
    #data LAB_ce314d4
PTR_ce33f60:
    #data LAB_ce314ee
PTR_ce33f64:
    #data LAB_ce314d4
PTR_ce33f68:
    #data LAB_ce31508
PTR_ce33f6c:
    #data LAB_ce313ee
PTR_ce33f70:
    #data LAB_ce3145a
PTR_ce33f74:
    #data LAB_ce314a0
PTR_ce33f78:
    #data LAB_ce314ac
PTR_ce33f7c:
    #data LAB_ce31558
PTR_ce33f80:
    #data LAB_ce3183e
PTR_ce33f84:
    #data LAB_ce31d28
PTR_ce33f88:
    #data LAB_ce3205a
PTR_ce33f8c:
    #data LAB_ce32456
PTR_ce33f90:
    #data LAB_ce31558
PTR_ce33f94:
    #data LAB_ce31558
PTR_ce33f98:
    #data LAB_ce3257c
PTR_ce33f9c:
    #data LAB_ce3275a
PTR_ce33fa0:
    #data LAB_ce32908
PTR_ce33fa4:
    #data LAB_ce31558
PTR_ce33fa8:
    #data LAB_ce32de6
PTR_ce33fac:
    #data LAB_ce32ce6
PTR_ce33fb0:
    #data LAB_ce31558
PTR_ce33fb4:
    #data LAB_ce31598
PTR_ce33fb8:
    #data LAB_ce316f0
PTR_ce33fbc:
    #data LAB_ce3172c
PTR_ce33fc0:
    #data LAB_ce31768
PTR_ce33fc4:
    #data LAB_ce317da
PTR_ce33fc8:
    #data LAB_ce3187e
PTR_ce33fcc:
    #data LAB_ce3194e
PTR_ce33fd0:
    #data LAB_ce31b1c
PTR_ce33fd4:
    #data LAB_ce31b8c
PTR_ce33fd8:
    #data LAB_ce31c04
DAT_ce33fdc:
    #data 0xff0c04ff
    #data 0xff0a0608
    #data 0xff0e0200
    #data 0xffffffff
PTR_ce33fec:
    #data LAB_ce31d88
PTR_ce33ff0:
    #data LAB_ce31e54
PTR_ce33ff4:
    #data LAB_ce31f70
PTR_ce33ff8:
    #data LAB_ce32026
PTR_ce33ffc:
    #data LAB_ce3209c
PTR_ce34000:
    #data LAB_ce321d0
PTR_ce34004:
    #data LAB_ce32330
PTR_ce34008:
    #data LAB_ce323ae
PTR_ce3400c:
    #data FUN_ce32434
DAT_ce34010:
    #data 0x40d55555
DAT_ce34014:
    #data 0x41700000
    #data 0x41a00000
    #data 0x419a4924
PTR_ce34020:
    #data LAB_ce32488
PTR_ce34024:
    #data LAB_ce324e8
PTR_ce34028:
    #data LAB_ce324fe
PTR_ce3402c:
    #data LAB_ce325c0
PTR_ce34030:
    #data LAB_ce3265c
PTR_ce34034:
    #data LAB_ce32728
PTR_ce34038:
    #data LAB_ce32770
PTR_ce3403c:
    #data LAB_ce327d2
PTR_ce34040:
    #data LAB_ce3281c
PTR_ce34044:
    #data LAB_ce3288c
PTR_ce34048:
    #data LAB_ce328da
PTR_ce3404c:
    #data LAB_ce3297c
PTR_ce34050:
    #data LAB_ce32a24
PTR_ce34054:
    #data LAB_ce32b0c
PTR_ce34058:
    #data LAB_ce32bda
PTR_ce3405c:
    #data LAB_ce32c8c
PTR_ce34060:
    #data FUN_ce32cc4
PTR_ce34064:
    #data LAB_ce32cf8
PTR_ce34068:
    #data LAB_ce32d9c
PTR_ce3406c:
    #data LAB_ce32e5a
PTR_ce34070:
    #data LAB_ce32f10
PTR_ce34074:
    #data LAB_ce32f7e
PTR_ce34078:
    #data LAB_ce32fd6
PTR_ce3407c:
    #data LAB_ce33080
PTR_ce34080:
    #data LAB_ce330d6
PTR_ce34084:
    #data LAB_ce32fd6
PTR_ce34088:
    #data LAB_ce33170
PTR_ce3408c:
    #data LAB_ce331ac
PTR_ce34090:
    #data LAB_ce331e8
PTR_ce34094:
    #data LAB_ce33224
PTR_ce34098:
    #data LAB_ce33260
PTR_ce3409c:
    #data LAB_ce332e0
PTR_ce340a0:
    #data LAB_ce3333a
PTR_ce340a4:
    #data LAB_ce33564
PTR_ce340a8:
    #data LAB_ce335ac
PTR_ce340ac:
    #data LAB_ce33622
PTR_ce340b0:
    #data LAB_ce33852
PTR_ce340b4:
    #data LAB_ce33adc
PTR_ce340b8:
    #data LAB_ce3334c
PTR_ce340bc:
    #data LAB_ce3338e
PTR_ce340c0:
    #data LAB_ce3349a
PTR_ce340c4:
    #data FUN_ce3351e
DAT_ce340c8:
    #data 0x0000
DAT_ce340ca:
    #data 0x0000
    #data 0x0020
    #data 0x0000
    #data 0x0030
    #data 0xffd0
    #data 0xffc0
    #data 0xffe0
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #align4

PTR_ce340e0:
    #data LAB_ce33898
PTR_ce340e4:
    #data LAB_ce3390a
PTR_ce340e8:
    #data LAB_ce339d8
PTR_ce340ec:
    #data LAB_ce33aa8
PTR_ce340f0:
    #data LAB_ce33b2c
PTR_ce340f4:
    #data LAB_ce33b76
PTR_ce340f8:
    #data LAB_ce33bb6
PTR_ce340fc:
    #data LAB_ce33c60
PTR_ce34100:
    #data LAB_ce33ca0
PTR_ce34104:
    #data LAB_ce33c60
PTR_ce34108:
    #data LAB_ce33ca0
PTR_ce3410c:
    #data LAB_ce33ca0
PTR_ce34110:
    #data LAB_ce33ca0
