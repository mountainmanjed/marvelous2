;╔══════════════════════════════════════════╗
;║ S_PL02 : Guile Program                   ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8C02FD26 0x8C02FD26
#symbol loc_8C02FEC4 0x8C02FEC4
#symbol loc_8C03319E 0x8C03319E
#symbol loc_8C034DEE 0x8C034DEE
#symbol loc_8C034E8C 0x8C034E8C
#symbol loc_8C035162 0x8C035162
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
#symbol loc_8C05145E 0x8C05145E
#symbol loc_8C051648 0x8C051648
#symbol loc_8C05176E 0x8C05176E
#symbol loc_8C051854 0x8C051854
#symbol loc_8C05218A 0x8C05218A
#symbol loc_8C05264C 0x8C05264C
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
#symbol loc_8C056DE4 0x8C056DE4
#symbol loc_8C056F2A 0x8C056F2A
#symbol loc_8C05933C 0x8C05933C
#symbol loc_8C060F84 0x8C060F84
#symbol loc_8C0611E4 0x8C0611E4
#symbol loc_8C061774 0x8C061774
#symbol loc_8C06192C 0x8C06192C
#symbol loc_8C061E54 0x8C061E54
#symbol loc_8C0FDAB6 0x8C0FDAB6
#symbol loc_8C103660 0x8C103660
#symbol loc_8C1294C8 0x8C1294C8
#symbol loc_8C26A518 0x8C26A518
#symbol loc_8C2896B0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300b2,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300b4,pc),r7
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
    mov.l @(PTR_ce300b8,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce300bc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce300c0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce300c4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce300d0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce302b0
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce3012e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce30174
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce30208
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce30260
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce3037e
    mov r14,r4
    tst r0,r0
    bf LAB_ce300ac
    bsr FUN_ce30344
    mov r14,r4
    tst r0,r0
    bf LAB_ce300ac
    mov.l @(PTR_ce300c8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300cc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300ac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300b2:
    #data 0x0428
    #align4

PTR_ce300b4:
    #data PTR_ce337a8
PTR_ce300b8:
    #data loc_8c054508
PTR_ce300bc:
    #data loc_8c054b34
PTR_ce300c0:
    #data loc_8c05496c
PTR_ce300c4:
    #data loc_8c054d04
PTR_ce300c8:
    #data loc_8c053e00
PTR_ce300cc:
    #data loc_8c0542e0

;=============================================

FUN_ce300d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce301da,pc),r3
    mov r4,r14
    mov.w @(DAT_ce301dc,pc),r6
    add r14,r3
    mov.l @(PTR_ce301e8,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce301ec,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30102
    mov.w @(DAT_ce301dc,pc),r5
    mov.l @(PTR_ce301f0,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.l @r15,r3
    mov.b @(0x2,r3),r0
    tst r0,r0
    bt LAB_ce3010c

LAB_ce30102:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3010c:
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301de,pc),r0
    mov.l @(PTR_ce301f4,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3012e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301f8,pc),r5
    mov.w @(DAT_ce301e0,pc),r6
    mov.l @(PTR_ce301ec,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3014c
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3014c:
    mov.w @(DAT_ce301e0,pc),r5
    mov.l @(PTR_ce301f0,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301de,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301f4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30174:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce301fc,pc),r5
    mov.w @(DAT_ce301e2,pc),r6
    mov.l @(PTR_ce30200,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce301a4
    mova @(DAT_ce30204,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce301e4,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bt LAB_ce301a4
    mov.w @(DAT_ce301e6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce301ac

LAB_ce301a4:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301ac:
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce301e2,pc),r5
    mov.l @(PTR_ce301f0,pc),r2
    add 0x01,r3
    add r14,r5
    mov.b r3,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x02,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce301de,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce301f4,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301da:
    #data 0x02a4
DAT_ce301dc:
    #data 0x036c
DAT_ce301de:
    #data 0x01e9
DAT_ce301e0:
    #data 0x0374
DAT_ce301e2:
    #data 0x037c
DAT_ce301e4:
    #data 0x041c
DAT_ce301e6:
    #data 0x01d4
    #align4

PTR_ce301e8:
    #data DAT_ce3372c
PTR_ce301ec:
    #data loc_8c055066
PTR_ce301f0:
    #data loc_8c055c3a
PTR_ce301f4:
    #data loc_8c0530d8
PTR_ce301f8:
    #data DAT_ce3373a
PTR_ce301fc:
    #data DAT_ce33748
PTR_ce30200:
    #data loc_8c054e58
DAT_ce30204:
    #data 0x42e00000

;=============================================

FUN_ce30208:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3032c,pc),r5
    mov.w @(DAT_ce3031a,pc),r6
    mov.l @(PTR_ce30330,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30228
    mov.w @(DAT_ce3031c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30230

LAB_ce30228:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30230:
    mov.w @(DAT_ce3031a,pc),r5
    mov.l @(PTR_ce30334,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3031e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30338,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30320,pc),r0
    mov 0x01,r4
    mov.b r4,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30260:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3033c,pc),r5
    mov.w @(DAT_ce30322,pc),r6
    mov.l @(PTR_ce30330,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30280
    mov.w @(DAT_ce3031c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30288

LAB_ce30280:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30288:
    mov.w @(DAT_ce30322,pc),r5
    mov.l @(PTR_ce30334,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3031e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30338,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302b0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30340,pc),r5
    mov.w @(DAT_ce30324,pc),r6
    mov.l @(PTR_ce30330,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce302ea
    mov.w @(DAT_ce3031c,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt LAB_ce302ea
    mov.w @(DAT_ce30326,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce302f2
    mov.w @(DAT_ce30328,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce302f2
    mov.w @(DAT_ce3032a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce302f2

LAB_ce302ea:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302f2:
    mov.w @(DAT_ce30324,pc),r5
    mov.l @(PTR_ce30334,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x07,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3031e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30338,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3031a:
    #data 0x0384
DAT_ce3031c:
    #data 0x040c
DAT_ce3031e:
    #data 0x01e9
DAT_ce30320:
    #data 0x01a3
DAT_ce30322:
    #data 0x038c
DAT_ce30324:
    #data 0x0394
DAT_ce30326:
    #data 0x01f9
DAT_ce30328:
    #data 0x01fc
DAT_ce3032a:
    #data 0x01d4
    #align4

PTR_ce3032c:
    #data DAT_ce33756
PTR_ce30330:
    #data loc_8c054e58
PTR_ce30334:
    #data loc_8c055c3a
PTR_ce30338:
    #data loc_8c0530d8
PTR_ce3033c:
    #data DAT_ce33766
PTR_ce30340:
    #data DAT_ce33776

;=============================================

FUN_ce30344:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30460,pc),r3
    jsr @r3
    mov 0x06,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3035e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3035e:
    mov.w @(DAT_ce30456,pc),r0
    mov 0x06,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30464,pc),r3
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
    sts.l PR,@-r15
    mov.l @(PTR_ce30468,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce30396
    mov.w @(DAT_ce30458,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3039e

LAB_ce30396:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3039e:
    mov.w @(DAT_ce30456,pc),r0
    mov 0x05,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30464,pc),r3
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

LAB_ce303be:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce303ea
    mov r4,r14
    tst r0,r0
    bf LAB_ce303da
    bsr FUN_ce30420
    mov r14,r4
    tst r0,r0
    bf LAB_ce303da
    bsr FUN_ce30478
    mov r14,r4
    tst r0,r0
    bt LAB_ce303e2

LAB_ce303da:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce303e2:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303ea:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3046c,pc),r5
    mov.w @(DAT_ce3045a,pc),r6
    mov.l @(PTR_ce30470,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3040a
    mov.w @(DAT_ce30458,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30412

LAB_ce3040a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30412:
    mov.w @(DAT_ce3045c,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30420:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30474,pc),r5
    mov.w @(DAT_ce3045e,pc),r6
    mov.l @(PTR_ce30470,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30440
    mov.w @(DAT_ce30458,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30448

LAB_ce30440:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30448:
    mov.w @(DAT_ce3045c,pc),r0
    mov 0x07,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30456:
    #data 0x01e9
DAT_ce30458:
    #data 0x040c
DAT_ce3045a:
    #data 0x038c
DAT_ce3045c:
    #data 0x0258
DAT_ce3045e:
    #data 0x0394
    #align4

PTR_ce30460:
    #data loc_8c054da0
PTR_ce30464:
    #data loc_8c0530d8
PTR_ce30468:
    #data loc_8c054d1c
PTR_ce3046c:
    #data DAT_ce33766
PTR_ce30470:
    #data loc_8c054e58
PTR_ce30474:
    #data DAT_ce33776

;=============================================

FUN_ce30478:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30590,pc),r5
    mov.w @(DAT_ce30578,pc),r6
    mov.l @(PTR_ce30594,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30498
    mov.w @(DAT_ce3057a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304a0

LAB_ce30498:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304a0:
    mov.w @(DAT_ce3057c,pc),r0
    mov 0x03,r3
    mov 0x01,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3057e,pc),r0
    mov.b r2,@(r0,r14)
    mov r2,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce304b6:
    rts
    nop

LAB_ce304ba:
    mov.w @(DAT_ce30580,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30598,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce304ce:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3059c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30582,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce304fc
    mov.w @(DAT_ce30584,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce304f4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce308b6
    mov.l @r15+,r14

LAB_ce304f4:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30724
    mov.l @r15+,r14

LAB_ce304fc:
    mov.w @(DAT_ce30584,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3050e
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30650
    mov.l @r15+,r14

LAB_ce3050e:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30516
    mov.l @r15+,r14

LAB_ce30516:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30586,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce305a0,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3053c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce305b0
    cmp/eq 0x02,r0
    bt LAB_ce305d0
    bra LAB_ce3061c
    nop

LAB_ce3053c:
    mov.l @(PTR_ce305a4,pc),r3
    mov.l @(PTR_ce305a8,pc),r2
    fmov.s @r3,fr4
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3055a
    mov 0x14,r5
    mov.w @(DAT_ce30588,pc),r0
    mov 0x03,r2
    mov 0x42,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30562
    mov.b r3,@(r0,r14)

LAB_ce3055a:
    mov.w @(DAT_ce30588,pc),r0
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)

LAB_ce30562:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3058a,pc),r0
    mov.l @(PTR_ce305ac,pc),r3
    mov.l r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce3058c,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3058e,pc),r0
    bra LAB_ce3061c
    mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30578:
    #data 0x0384
DAT_ce3057a:
    #data 0x040c
DAT_ce3057c:
    #data 0x0258
DAT_ce3057e:
    #data 0x01a3
DAT_ce30580:
    #data 0x01ff
DAT_ce30582:
    #data 0x01fe
DAT_ce30584:
    #data 0x01f9
DAT_ce30586:
    #data 0x01e8
DAT_ce30588:
    #data 0x0158
DAT_ce3058a:
    #data 0x03f4
DAT_ce3058c:
    #data 0x01a7
DAT_ce3058e:
    #data 0x02a2
    #align4

PTR_ce30590:
    #data DAT_ce33756
PTR_ce30594:
    #data loc_8c054e58
PTR_ce30598:
    #data PTR_ce33830
PTR_ce3059c:
    #data loc_8c052b4c
PTR_ce305a0:
    #data loc_8c04223a
PTR_ce305a4:
    #data DAT_ce33818
PTR_ce305a8:
    #data loc_8c05145e
PTR_ce305ac:
    #data DAT_ce336e4

;=============================================

LAB_ce305b0:
    mov.w @(DAT_ce306ac,pc),r0
    mov 0x04,r1
    mov 0x43,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306ae,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce306bc,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306b0,pc),r0
    bra LAB_ce3061c
    mov.b r2,@(r0,r14)

LAB_ce305d0:
    mov.w @(DAT_ce306ac,pc),r0
    mov 0x02,r11
    mov.w @(DAT_ce306b2,pc),r2
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    cmp/eq r2,r3
    bf LAB_ce305f4
    mov.w @(DAT_ce306ac,pc),r0
    mov 0x06,r1
    mov 0x12,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    bra LAB_ce3060c
    mov.b r3,@(r0,r14)

LAB_ce305f4:
    mov.w @(DAT_ce306b4,pc),r0
    mov.w @(DAT_ce306b6,pc),r1
    mov.w @(r0,r14),r3
    extu.w r3,r3
    cmp/eq r1,r3
    bf LAB_ce3060c
    mov.w @(DAT_ce306ac,pc),r0
    mov 0x05,r2
    mov 0x44,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce3060c:
    mov 0x16,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306ae,pc),r0
    mov.l @(PTR_ce306c0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306b0,pc),r0
    mov.b r11,@(r0,r14)

LAB_ce3061c:
    mov.w @(DAT_ce306b8,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce306c4,pc),r3
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
    mov.w @(DAT_ce306ac,pc),r0
    mov.l @(PTR_ce306c8,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30650:
    mov.w @(DAT_ce306ba,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce306cc,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30674
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30690
    cmp/eq 0x02,r0
    bt LAB_ce306d4
    bra LAB_ce306f2
    nop

LAB_ce30674:
    mov.w @(DAT_ce306ac,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306ae,pc),r0
    mov.l @(PTR_ce306d0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce306b0,pc),r0
    bra LAB_ce306f2
    mov.b r13,@(r0,r14)

LAB_ce30690:
    mov.w @(DAT_ce306ac,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce306ae,pc),r0
    mov.l @(PTR_ce306bc,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce306ee
    mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce306ac:
    #data 0x0158
DAT_ce306ae:
    #data 0x03f4
DAT_ce306b0:
    #data 0x01a7
DAT_ce306b2:
    #data 0x0800
DAT_ce306b4:
    #data 0x01fa
DAT_ce306b6:
    #data 0x0400
DAT_ce306b8:
    #data 0x01ac
DAT_ce306ba:
    #data 0x01e8
    #align4

PTR_ce306bc:
    #data DAT_ce336e8
PTR_ce306c0:
    #data DAT_ce336ec
PTR_ce306c4:
    #data loc_8c2896b0
PTR_ce306c8:
    #data loc_8c034e8c
PTR_ce306cc:
    #data loc_8c04223a
PTR_ce306d0:
    #data DAT_ce336e4

;=============================================

LAB_ce306d4:
    mov.w @(DAT_ce307dc,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307de,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce307ec,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce306ee:
    mov.w @(DAT_ce307e0,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce306f2:
    mov.w @(DAT_ce307e2,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce307f0,pc),r3
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
    mov.w @(DAT_ce307dc,pc),r0
    mov.l @(PTR_ce307f4,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30724:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce307e4,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce307f8,pc),r11
    extu.b r0,r0
    mov.l @(PTR_ce307fc,pc),r12
    cmp/eq 0x00,r0
    bt/s LAB_ce3074c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307a2
    cmp/eq 0x02,r0
    bt LAB_ce307be
    bra LAB_ce30882
    nop

LAB_ce3074c:
    mov 0x0C,r0
    mov.l @(PTR_ce30800,pc),r3
    fmov.s @(r0,r12),fr4
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce30768
    mov.w @(DAT_ce307dc,pc),r0
    mov 0x03,r3
    mov 0x45,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30772
    mov.b r2,@(r0,r14)

LAB_ce30768:
    mov.w @(DAT_ce307dc,pc),r0
    mov 0x03,r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30772:
    mov.w @(DAT_ce307e6,pc),r0
    mov.w @(DAT_ce307e8,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    cmp/eq r3,r2
    bf/s LAB_ce30792
    mov 0x14,r5
    mov.w @(DAT_ce307dc,pc),r0
    mov 0x08,r1
    mov 0x61,r2
    mov.b r1,@(r0,r14)
    mov 0x14,r1
    mov.w @(DAT_ce307e4,pc),r0
    mov.b r2,@(r0,r14)
    add 0xB9,r0
    mov.b r1,@(r0,r14)

LAB_ce30792:
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce307de,pc),r0
    mov.l @(PTR_ce30804,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307e0,pc),r0
    bra LAB_ce30882
    mov.b r13,@(r0,r14)

LAB_ce307a2:
    mov.w @(DAT_ce307dc,pc),r0
    mov 0x04,r2
    mov 0x46,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce307de,pc),r0
    mov.l @(PTR_ce30808,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce3087e
    mov 0x01,r2

LAB_ce307be:
    mov 0x14,r0
    mov.l @(PTR_ce30800,pc),r3
    fmov.s @(r0,r12),fr4
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3080c
    fldi0 fr4
    mov.w @(DAT_ce307dc,pc),r0
    mov 0x05,r3
    mov 0x47,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30818
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307dc:
    #data 0x0158
DAT_ce307de:
    #data 0x03f4
DAT_ce307e0:
    #data 0x01a7
DAT_ce307e2:
    #data 0x01ac
DAT_ce307e4:
    #data 0x01e8
DAT_ce307e6:
    #data 0x01fa
DAT_ce307e8:
    #data 0x0400
    #align4

PTR_ce307ec:
    #data DAT_ce336ec
PTR_ce307f0:
    #data loc_8c2896b0
PTR_ce307f4:
    #data loc_8c034e8c
PTR_ce307f8:
    #data loc_8c04223a
PTR_ce307fc:
    #data DAT_ce33818
PTR_ce30800:
    #data loc_8c05145e
PTR_ce30804:
    #data DAT_ce336f0
PTR_ce30808:
    #data DAT_ce336f4

;=============================================

LAB_ce3080c:
    mov.w @(DAT_ce30912,pc),r0
    mov 0x02,r1
    mov 0x05,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30818:
    mov.w @(DAT_ce30914,pc),r0
    mov.w @(DAT_ce30916,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    cmp/eq r2,r3
    bf LAB_ce30848
    mov.w @(DAT_ce30912,pc),r0
    mov 0x06,r1
    mov 0x60,r3
    mov.b r1,@(r0,r14)
    mov 0x13,r1
    mov.w @(DAT_ce30918,pc),r0
    mov.b r3,@(r0,r14)
    add 0xB9,r0
    mov.b r1,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov r3,r0
    nop
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce30848:
    mov.w @(DAT_ce30914,pc),r0
    mov.w @(DAT_ce3091a,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    cmp/eq r2,r3
    bf/s LAB_ce30872
    mov 0x16,r5
    mov.w @(DAT_ce30912,pc),r0
    mov 0x07,r1
    mov 0x15,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce30872:
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce3091c,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30924,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce3087e:
    mov.w @(DAT_ce3091e,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30882:
    mov.w @(DAT_ce30920,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce30928,pc),r3
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
    mov.w @(DAT_ce30912,pc),r0
    mov.l @(PTR_ce3092c,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce308b6:
    mov.w @(DAT_ce30918,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30930,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce308da
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce308f6
    cmp/eq 0x02,r0
    bt LAB_ce3093c
    bra LAB_ce3095a
    nop

LAB_ce308da:
    mov.w @(DAT_ce30912,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3091c,pc),r0
    mov.l @(PTR_ce30934,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3091e,pc),r0
    bra LAB_ce3095a
    mov.b r13,@(r0,r14)

LAB_ce308f6:
    mov.w @(DAT_ce30912,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3091c,pc),r0
    mov.l @(PTR_ce30938,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30956
    mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30912:
    #data 0x0158
DAT_ce30914:
    #data 0x01fa
DAT_ce30916:
    #data 0x0400
DAT_ce30918:
    #data 0x01e8
DAT_ce3091a:
    #data 0x0800
DAT_ce3091c:
    #data 0x03f4
DAT_ce3091e:
    #data 0x01a7
DAT_ce30920:
    #data 0x01ac
    #align4

PTR_ce30924:
    #data DAT_ce336f8
PTR_ce30928:
    #data loc_8c2896b0
PTR_ce3092c:
    #data loc_8c034e8c
PTR_ce30930:
    #data loc_8c04223a
PTR_ce30934:
    #data DAT_ce336f0
PTR_ce30938:
    #data DAT_ce336f4

;=============================================

LAB_ce3093c:
    mov.w @(DAT_ce30a38,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a3a,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30a48,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30956:
    mov.w @(DAT_ce30a3c,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce3095a:
    mov.w @(DAT_ce30a3e,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce30a4c,pc),r3
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
    mov.w @(DAT_ce30a38,pc),r0
    mov.l @(PTR_ce30a50,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3098c:
    mov.w @(DAT_ce30a40,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3099c
    mov.w @(DAT_ce30a42,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce309ac

LAB_ce3099c:
    mov.w @(DAT_ce30a40,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce309b0
    mov.w @(DAT_ce30a42,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce309b0

LAB_ce309ac:
    bra LAB_ce309b4
    nop

LAB_ce309b0:
    rts
    nop

LAB_ce309b4:
    mov.w @(DAT_ce30a40,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce309c2
    bra LAB_ce30af4
    nop

LAB_ce309c2:
    bra LAB_ce309c6
    nop

LAB_ce309c6:
    mov.w @(DAT_ce30a44,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30a54,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce309ea
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30a16
    cmp/eq 0x02,r0
    bt LAB_ce30a6e
    bra LAB_ce30ab0
    nop

LAB_ce309ea:
    mov.w @(DAT_ce30a38,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a46,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a0a
    mov.w @(DAT_ce30a3a,pc),r0
    mov.l @(PTR_ce30a58,pc),r3
    bra LAB_ce30a10
    mov.l r3,@(r0,r14)

LAB_ce30a0a:
    mov.w @(DAT_ce30a3a,pc),r0
    mov.l @(PTR_ce30a5c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a10:
    mov.w @(DAT_ce30a3c,pc),r0
    bra LAB_ce30ab0
    mov.b r13,@(r0,r14)

LAB_ce30a16:
    mov.w @(DAT_ce30a38,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a46,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a64
    mov.w @(DAT_ce30a3a,pc),r0
    mov.l @(PTR_ce30a60,pc),r3
    bra LAB_ce30a6a
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a38:
    #data 0x0158
DAT_ce30a3a:
    #data 0x03f4
DAT_ce30a3c:
    #data 0x01a7
DAT_ce30a3e:
    #data 0x01ac
DAT_ce30a40:
    #data 0x01fe
DAT_ce30a42:
    #data 0x01d6
DAT_ce30a44:
    #data 0x01e8
DAT_ce30a46:
    #data 0x01fc
    #align4

PTR_ce30a48:
    #data DAT_ce336f8
PTR_ce30a4c:
    #data loc_8c2896b0
PTR_ce30a50:
    #data loc_8c034e8c
PTR_ce30a54:
    #data loc_8c04223a
PTR_ce30a58:
    #data DAT_ce336fc
PTR_ce30a5c:
    #data DAT_ce33714
PTR_ce30a60:
    #data DAT_ce33700

;=============================================

LAB_ce30a64:
    mov.w @(DAT_ce30b58,pc),r0
    mov.l @(PTR_ce30b6c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a6a:
    bra LAB_ce30aac
    mov 0x01,r3

LAB_ce30a6e:
    mov.w @(DAT_ce30b5a,pc),r0
    mov.w @(DAT_ce30b5c,pc),r3
    mov.w @(r0,r14),r1
    extu.w r1,r1
    tst r3,r1
    bt/s LAB_ce30a84
    mov 0x0E,r3
    mov.w @(DAT_ce30b5e,pc),r0
    mov 0x05,r2
    bra LAB_ce30a8a
    mov.b r2,@(r0,r14)

LAB_ce30a84:
    mov.w @(DAT_ce30b5e,pc),r0
    mov 0x02,r1
    mov.b r1,@(r0,r14)

LAB_ce30a8a:
    mov.w @(DAT_ce30b60,pc),r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b62,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30aa4
    mov.w @(DAT_ce30b58,pc),r0
    mov.l @(PTR_ce30b70,pc),r3
    bra LAB_ce30aaa
    mov.l r3,@(r0,r14)

LAB_ce30aa4:
    mov.w @(DAT_ce30b58,pc),r0
    mov.l @(PTR_ce30b74,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30aaa:
    mov 0x02,r3

LAB_ce30aac:
    mov.w @(DAT_ce30b64,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30ab0:
    mov.w @(DAT_ce30b66,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30b78,pc),r3
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
    mov.w @(DAT_ce30b5e,pc),r0
    mov.l @(PTR_ce30b7c,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30b68,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30aea
    mov.w @(DAT_ce30b68,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30aea:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30af4:
    mov.w @(DAT_ce30b6a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b80,pc),r12
    extu.b r0,r0
    mov.w @(DAT_ce30b5c,pc),r4
    cmp/eq 0x00,r0
    bt/s LAB_ce30b1a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30b8c
    cmp/eq 0x02,r0
    bt LAB_ce30bca
    bra LAB_ce30c0a
    nop

LAB_ce30b1a:
    mov.w @(DAT_ce30b5a,pc),r0
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r4,r3
    bt LAB_ce30b2a
    mov.w @(DAT_ce30b5e,pc),r0
    bra LAB_ce30b30
    mov.b r13,@(r0,r14)

LAB_ce30b2a:
    mov.w @(DAT_ce30b5e,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r14)

LAB_ce30b30:
    mov.w @(DAT_ce30b60,pc),r0
    mov 0x0F,r2
    mov 0x14,r5
    mov.b r2,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b62,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b4c
    mov.w @(DAT_ce30b58,pc),r0
    mov.l @(PTR_ce30b84,pc),r3
    bra LAB_ce30b52
    mov.l r3,@(r0,r14)

LAB_ce30b4c:
    mov.w @(DAT_ce30b58,pc),r0
    mov.l @(PTR_ce30b88,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b52:
    mov.w @(DAT_ce30b64,pc),r0
    bra LAB_ce30c0a
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b58:
    #data 0x03f4
DAT_ce30b5a:
    #data 0x01fa
DAT_ce30b5c:
    #data 0x2000
DAT_ce30b5e:
    #data 0x0158
DAT_ce30b60:
    #data 0x01a1
DAT_ce30b62:
    #data 0x01fc
DAT_ce30b64:
    #data 0x01a7
DAT_ce30b66:
    #data 0x01ac
DAT_ce30b68:
    #data 0x01d6
DAT_ce30b6a:
    #data 0x01e8
    #align4

PTR_ce30b6c:
    #data DAT_ce33718
PTR_ce30b70:
    #data DAT_ce33704
PTR_ce30b74:
    #data DAT_ce3371c
PTR_ce30b78:
    #data loc_8c2896b0
PTR_ce30b7c:
    #data loc_8c034e8c
PTR_ce30b80:
    #data loc_8c04223a
PTR_ce30b84:
    #data DAT_ce33708
PTR_ce30b88:
    #data DAT_ce33720

;=============================================

LAB_ce30b8c:
    mov.w @(DAT_ce30c84,pc),r0
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r4,r2
    bt/s LAB_ce30ba0
    mov 0x10,r2
    mov.w @(DAT_ce30c86,pc),r0
    mov 0x04,r1
    bra LAB_ce30ba6
    mov.b r1,@(r0,r14)

LAB_ce30ba0:
    mov.w @(DAT_ce30c86,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30ba6:
    mov.w @(DAT_ce30c88,pc),r0
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c8a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30bc0
    mov.w @(DAT_ce30c8c,pc),r0
    mov.l @(PTR_ce30c98,pc),r3
    bra LAB_ce30bc6
    mov.l r3,@(r0,r14)

LAB_ce30bc0:
    mov.w @(DAT_ce30c8c,pc),r0
    mov.l @(PTR_ce30c9c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30bc6:
    bra LAB_ce30c06
    mov 0x01,r3

LAB_ce30bca:
    mov.w @(DAT_ce30c84,pc),r0
    mov.w @(r0,r14),r1
    extu.w r1,r1
    tst r4,r1
    bt LAB_ce30bdc
    mov.w @(DAT_ce30c86,pc),r0
    mov 0x05,r2
    bra LAB_ce30be2
    mov.b r2,@(r0,r14)

LAB_ce30bdc:
    mov.w @(DAT_ce30c86,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)

LAB_ce30be2:
    mov.w @(DAT_ce30c88,pc),r0
    mov 0x11,r2
    mov 0x16,r5
    mov.b r2,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c8a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30bfe
    mov.w @(DAT_ce30c8c,pc),r0
    mov.l @(PTR_ce30ca0,pc),r3
    bra LAB_ce30c04
    mov.l r3,@(r0,r14)

LAB_ce30bfe:
    mov.w @(DAT_ce30c8c,pc),r0
    mov.l @(PTR_ce30ca4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30c04:
    mov 0x02,r3

LAB_ce30c06:
    mov.w @(DAT_ce30c8e,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30c0a:
    mov.w @(DAT_ce30c90,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30ca8,pc),r3
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
    mov.w @(DAT_ce30c86,pc),r0
    mov.l @(PTR_ce30cac,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30c92,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30c44
    mov.w @(DAT_ce30c92,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30c44:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30c4e:
    mov.w @(DAT_ce30c94,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30cb0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30c62:
    sts.l PR,@-r15
    mov.l @(PTR_ce30cb4,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30c70:
    mov.w @(DAT_ce30c96,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x60,r0
    bf LAB_ce30cb8
    bra LAB_ce30cc4
    mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c84:
    #data 0x01fa
DAT_ce30c86:
    #data 0x0158
DAT_ce30c88:
    #data 0x01a1
DAT_ce30c8a:
    #data 0x01fc
DAT_ce30c8c:
    #data 0x03f4
DAT_ce30c8e:
    #data 0x01a7
DAT_ce30c90:
    #data 0x01ac
DAT_ce30c92:
    #data 0x01d6
DAT_ce30c94:
    #data 0x01ff
DAT_ce30c96:
    #data 0x01e8
    #align4

PTR_ce30c98:
    #data DAT_ce3370c
PTR_ce30c9c:
    #data DAT_ce33724
PTR_ce30ca0:
    #data DAT_ce33710
PTR_ce30ca4:
    #data DAT_ce33728
PTR_ce30ca8:
    #data loc_8c2896b0
PTR_ce30cac:
    #data loc_8c034e8c
PTR_ce30cb0:
    #data PTR_ce33840
PTR_ce30cb4:
    #data loc_8c0511e2

;=============================================

LAB_ce30cb8:
    mov.w @(DAT_ce30db0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x61,r0
    bf LAB_ce30cce
    mov 0x01,r0

LAB_ce30cc4:
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    bra LAB_ce30ec2
    mov.l @r15+,r14

LAB_ce30cce:
    mov.w @(DAT_ce30db2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30cf2
    mov.w @(DAT_ce30db4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30cea
    bsr FUN_ce30dc4
    mov r14,r4
    bra LAB_ce30d08
    nop

LAB_ce30cea:
    bsr FUN_ce30d8e
    mov r14,r4
    bra LAB_ce30d08
    nop

LAB_ce30cf2:
    mov.w @(DAT_ce30db4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d04
    bsr FUN_ce30d6c
    mov r14,r4
    bra LAB_ce30d08
    nop

LAB_ce30d04:
    bsr FUN_ce30d4a
    mov r14,r4

LAB_ce30d08:
    mov 0x5C,r1
    mov.l @(PTR_ce30db8,pc),r3
    add r14,r1
    mov r14,r4
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
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;=============================================

FUN_ce30d4a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30dbc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d64
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30dc0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30d64:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30d6c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30dbc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d86
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30dc0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30d86:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30d8e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30dbc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30da8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30dc0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30da8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30db0:
    #data 0x01e8
DAT_ce30db2:
    #data 0x01fe
DAT_ce30db4:
    #data 0x01f9
    #align4

PTR_ce30db8:
    #data loc_8c052c84
PTR_ce30dbc:
    #data loc_8c034dee
PTR_ce30dc0:
    #data loc_8c051648

;=============================================

FUN_ce30dc4:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30eec,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ddc
    mov.l @(PTR_ce30ef0,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce30ddc:
    mov.w @(DAT_ce30ee4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30e1e
    mov.w @(DAT_ce30ee6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e1e
    mov.l @(PTR_ce30ef4,pc),r3
    mov 0x00,r13
    mov 0x16,r5
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30ee8,pc),r0
    mov 0x19,r2
    mov.l @(PTR_ce30ef8,pc),r3
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

LAB_ce30e1e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30e26:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30efc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30f00,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce30e3c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30f04,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30f08,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30eea,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30e5e
    bsr FUN_ce30ea0
    mov r14,r4
    bra LAB_ce30e62
    nop

LAB_ce30e5e:
    bsr FUN_ce30e7e
    mov r14,r4

LAB_ce30e62:
    mov.l @(PTR_ce30f0c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30e78
    lds.l @r15+,PR
    mov.l @(PTR_ce30f10,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e78:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30e7e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30eec,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e98
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30f14,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30e98:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30ea0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30eec,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30eba
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30f14,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30eba:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30ec2:
    mov r4,r3
    mov.l @(PTR_ce30f18,pc),r1
    mov.l r4,@-r15
    mov.w @(0x1c,r3),r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30ed2:
    mov r4,r3
    mov.l @(PTR_ce30f1c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30ee4:
    #data 0x01e8
DAT_ce30ee6:
    #data 0x0141
DAT_ce30ee8:
    #data 0x01a1
DAT_ce30eea:
    #data 0x01fe
    #align4

PTR_ce30eec:
    #data loc_8c034dee
PTR_ce30ef0:
    #data loc_8c051648
PTR_ce30ef4:
    #data loc_8c04223a
PTR_ce30ef8:
    #data loc_8c2896b0
PTR_ce30efc:
    #data loc_8c050084
PTR_ce30f00:
    #data loc_8c04ff88
PTR_ce30f04:
    #data loc_8c04fea8
PTR_ce30f08:
    #data loc_8c050048
PTR_ce30f0c:
    #data loc_8c052ce2
PTR_ce30f10:
    #data loc_8c052dac
PTR_ce30f14:
    #data loc_8c05176e
PTR_ce30f18:
    #data PTR_ce33850
PTR_ce30f1c:
    #data PTR_ce33858

;=============================================

LAB_ce30f20:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31044,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3103c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30f72
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x02,r2
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3103c,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3103e,pc),r0
    mov.b r2,@(r0,r14)
    mova @(DAT_ce31048,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31040,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30f6a
    mova @(DAT_ce3104c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31050,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce30f6a:
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce30f72:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f78:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31044,pc),r3
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
    bt LAB_ce30fb0
    lds.l @r15+,PR
    mov.l @(PTR_ce31054,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30fb0:
    mov.w @(DAT_ce3103c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30fc6
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce30fc6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fcc:
    mov r4,r3
    mov.l @(PTR_ce31058,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30fde:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31044,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3103c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31036
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3103c,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3103e,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce3105c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31040,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31026
    mova @(DAT_ce31060,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31050,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce31026:
    mova @(DAT_ce31064,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31068,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31036:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3103c:
    #data 0x0141
DAT_ce3103e:
    #data 0x01f9
DAT_ce31040:
    #data 0x01d2
    #align4

PTR_ce31044:
    #data loc_8c034dee
DAT_ce31048:
    #data 0x40ad5555
DAT_ce3104c:
    #data 0xc0ad5555
DAT_ce31050:
    #data 0x80000000
PTR_ce31054:
    #data loc_8c051648
PTR_ce31058:
    #data PTR_ce33860
DAT_ce3105c:
    #data 0x40d55555
DAT_ce31060:
    #data 0xc0d55555
DAT_ce31064:
    #data 0x40cdb6db
DAT_ce31068:
    #data 0xbf4db6db

;=============================================

LAB_ce3106c:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31124,pc),r3
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
    mov.w @(DAT_ce3111e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce310f6
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31120,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3111e,pc),r0
    mov.l @(PTR_ce31128,pc),r3
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
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3112c,pc),r2
    mov r14,r4
    mov 0x09,r6
    mov 0x08,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce310f6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce310fc:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31124,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31116
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31130,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31116:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3111e:
    #data 0x041c
DAT_ce31120:
    #data 0x01f9
    #align4

PTR_ce31124:
    #data loc_8c034dee
PTR_ce31128:
    #data loc_8c0511b4
PTR_ce3112c:
    #data loc_8c034e8c
PTR_ce31130:
    #data loc_8c051648

;=============================================

LAB_ce31134:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce31192
    mov.l @(PTR_ce31260,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x16,r3
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    mov.w @(DAT_ce31256,pc),r0
    mov 0x04,r6
    mov.b r3,@(r0,r14)
    add 0x58,r0
    mov.l @(PTR_ce31264,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31258,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce31268,pc),r3
    mov 0x16,r5
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
    mov.l @(PTR_ce3126c,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31270,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4

LAB_ce31192:
    mov.w @(DAT_ce3125a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce311a2
    mov.l @(PTR_ce31274,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce311a2:
    mov 0x5C,r1
    mov.l @(PTR_ce31278,pc),r3
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
    mov.l @(PTR_ce3127c,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311f6
    lds.l @r15+,PR
    mov.l @(PTR_ce31280,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce311f6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311fc:
    mov r4,r3
    mov.l @(PTR_ce31284,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3120e:
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
    mov.w @(DAT_ce3125c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31234
    mova @(DAT_ce31288,pc),r0
    bra LAB_ce31238
    fmov.s @r0,fr3

LAB_ce31234:
    mova @(DAT_ce3128c,pc),r0
    fmov.s @r0,fr3

LAB_ce31238:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce3125c,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3124a
    mova @(DAT_ce31290,pc),r0
    bra LAB_ce3124e
    fmov.s @r0,fr3

LAB_ce3124a:
    mova @(DAT_ce31294,pc),r0
    fmov.s @r0,fr3

LAB_ce3124e:
    mov.l @(PTR_ce3127c,pc),r3
    mov 0x68,r0
    jmp @r3
    fmov fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31256:
    #data 0x01a1
DAT_ce31258:
    #data 0x01ac
DAT_ce3125a:
    #data 0x01ff
DAT_ce3125c:
    #data 0x01d2
    #align4

PTR_ce31260:
    #data loc_8c052b4c
PTR_ce31264:
    #data loc_8c034e8c
PTR_ce31268:
    #data loc_8c2896b0
PTR_ce3126c:
    #data loc_8c04223a
PTR_ce31270:
    #data loc_8c056de4
PTR_ce31274:
    #data loc_8c0511e2
PTR_ce31278:
    #data loc_8c052c84
PTR_ce3127c:
    #data loc_8c034dee
PTR_ce31280:
    #data loc_8c051648
PTR_ce31284:
    #data PTR_ce3386c
DAT_ce31288:
    #data 0x417d5555
DAT_ce3128c:
    #data 0xc17d5555
DAT_ce31290:
    #data 0xbe555555
DAT_ce31294:
    #data 0x3e555555

;=============================================

LAB_ce31298:
    mov.w @(DAT_ce313b4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce312e0
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

LAB_ce312e0:
    mov.l @(PTR_ce313b8,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31312
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    mov.l @(PTR_ce313bc,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce313b6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3130a
    mova @(DAT_ce313c0,pc),r0
    bra LAB_ce3130e
    fmov.s @r0,fr3

LAB_ce3130a:
    mova @(DAT_ce313c4,pc),r0
    fmov.s @r0,fr3

LAB_ce3130e:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce31312:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31318:
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
    mov.w @(DAT_ce313b4,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31376
    mov 0x00,r3
    fldi0 fr4
    mov.b r3,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    rts
    fmov fr4,@(r0,r4)

LAB_ce31376:
    mov.l @(PTR_ce313b8,pc),r3
    jmp @r3
    nop
    rts
    nop

;=============================================

FUN_ce31380:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce313b8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3139a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce313c8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3139a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce313a2:
    mov r4,r3
    mov.l @(PTR_ce313cc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce313b4:
    #data 0x0141
DAT_ce313b6:
    #data 0x01d2
    #align4

PTR_ce313b8:
    #data loc_8c034dee
PTR_ce313bc:
    #data loc_8c034e8c
DAT_ce313c0:
    #data 0xbf555555
DAT_ce313c4:
    #data 0x3f555555
PTR_ce313c8:
    #data loc_8c051648
PTR_ce313cc:
    #data PTR_ce3387c

;=============================================

LAB_ce313d0:
    mov.w @(DAT_ce314f0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3142e
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
    mov.w @(DAT_ce314f2,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce313fe
    mova @(DAT_ce314f8,pc),r0
    bra LAB_ce31402
    fmov.s @r0,fr3

LAB_ce313fe:
    mova @(DAT_ce314fc,pc),r0
    fmov.s @r0,fr3

LAB_ce31402:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce314f2,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31414
    mova @(DAT_ce31500,pc),r0
    bra LAB_ce31418
    fmov.s @r0,fr3

LAB_ce31414:
    mova @(DAT_ce31504,pc),r0
    fmov.s @r0,fr3

LAB_ce31418:
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31508,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce3150c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    bra LAB_ce31434
    fmov fr3,@(r0,r4)

LAB_ce3142e:
    mov.l @(PTR_ce31510,pc),r2
    jmp @r2
    nop

LAB_ce31434:
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
    mov.w @(DAT_ce314f4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce314e0
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31514,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce314f4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31518,pc),r2
    mov 0x02,r5
    mov 0x03,r6
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
    mov.w @(DAT_ce314f2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce314bc
    mova @(DAT_ce3151c,pc),r0
    bra LAB_ce314c0
    fmov.s @r0,fr3

LAB_ce314bc:
    mova @(DAT_ce31520,pc),r0
    fmov.s @r0,fr3

LAB_ce314c0:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce314f2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce314d2
    mova @(DAT_ce31524,pc),r0
    bra LAB_ce314d6
    fmov.s @r0,fr3

LAB_ce314d2:
    mova @(DAT_ce31528,pc),r0
    fmov.s @r0,fr3

LAB_ce314d6:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce314e0:
    lds.l @r15+,PR
    mov.l @(PTR_ce31510,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314f0:
    #data 0x0141
DAT_ce314f2:
    #data 0x01d2
DAT_ce314f4:
    #data 0x041c
    #align4

DAT_ce314f8:
    #data 0xc17d5555
DAT_ce314fc:
    #data 0x417d5555
DAT_ce31500:
    #data 0x3ea00000
DAT_ce31504:
    #data 0xbea00000
DAT_ce31508:
    #data 0x40cdb6db
DAT_ce3150c:
    #data 0xbf092492
PTR_ce31510:
    #data loc_8c034dee
PTR_ce31514:
    #data loc_8c0511b4
PTR_ce31518:
    #data loc_8c034e8c
DAT_ce3151c:
    #data 0xc0a00000
DAT_ce31520:
    #data 0x40a00000
DAT_ce31524:
    #data 0x3e555555
DAT_ce31528:
    #data 0xbe555555

;=============================================

LAB_ce3152c:
    mov.w @(DAT_ce31644,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31574
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

LAB_ce31574:
    mov.l @(PTR_ce3164c,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3158a
    lds.l @r15+,PR
    mov.l @(PTR_ce31650,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3158a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31590:
    mov r4,r3
    mov.l @(PTR_ce31654,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce315a2:
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31646,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce31658,pc),r3
    jmp @r3
    mov 0x12,r5

LAB_ce315b6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3164c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce315ce
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce315ce:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce315d6:
    mov.w @(DAT_ce31648,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov.l @(PTR_ce3165c,pc),r3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce315f8
    lds.l @r15+,PR
    mov.l @(PTR_ce31650,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce315f8:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31660,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3160c:
    mov r4,r3
    mov.l @(PTR_ce31664,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3161e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31658,pc),r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31668
    mov 0x13,r5
    mov 0x04,r6
    jsr @r13
    mov r14,r4
    bra LAB_ce3169c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31644:
    #data 0x0141
DAT_ce31646:
    #data 0x012c
DAT_ce31648:
    #data 0x041c
    #align4

PTR_ce3164c:
    #data loc_8c034dee
PTR_ce31650:
    #data loc_8c051648
PTR_ce31654:
    #data PTR_ce33888
PTR_ce31658:
    #data loc_8c034e8c
PTR_ce3165c:
    #data loc_8c046c8a
PTR_ce31660:
    #data PTR_ce33890
PTR_ce31664:
    #data PTR_ce338a4

;=============================================

LAB_ce31668:
    mov.l @(PTR_ce31738,pc),r2
    jsr @r2
    nop
    and 0x03,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(0x1c,r14),r0
    cmp/eq 0x00,r0
    bt LAB_ce31688
    cmp/eq 0x01,r0
    bt LAB_ce3168c
    cmp/eq 0x02,r0
    bt LAB_ce31690
    cmp/eq 0x03,r0
    bt LAB_ce31694
    bra LAB_ce3169c
    nop

LAB_ce31688:
    bra LAB_ce31696
    mov 0x00,r6

LAB_ce3168c:
    bra LAB_ce31696
    mov 0x01,r6

LAB_ce31690:
    bra LAB_ce31696
    mov 0x02,r6

LAB_ce31694:
    mov 0x03,r6

LAB_ce31696:
    mov 0x13,r5
    jsr @r13
    mov r14,r4

LAB_ce3169c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce316a4:
    mov.l @(PTR_ce3173c,pc),r3
    jmp @r3
    nop

LAB_ce316aa:
    mov.l @(PTR_ce3173c,pc),r3
    jmp @r3
    nop

LAB_ce316b0:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce316c4
    mov.b @(0x6,r4),r0
    mov 0x05,r6
    mov.l @(PTR_ce31740,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce316c4:
    mov.l @(PTR_ce3173c,pc),r3
    jmp @r3
    nop

LAB_ce316ca:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce316de
    mov.b @(0x6,r4),r0
    mov 0x06,r6
    mov.l @(PTR_ce31740,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce316de:
    mov.l @(PTR_ce3173c,pc),r3
    jmp @r3
    nop

LAB_ce316e4:
    mov.w @(DAT_ce31732,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31744,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce316f8:
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
    mov.w @(DAT_ce31734,pc),r0
    mov.l @(PTR_ce31748,pc),r3
    mov.b r5,@(r0,r4)
    add 0xFD,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce31736,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce31720:
    mov r4,r3
    mov.l @(PTR_ce3174c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31732:
    #data 0x01e9
DAT_ce31734:
    #data 0x01fc
DAT_ce31736:
    #data 0x041c
    #align4

PTR_ce31738:
    #data loc_8c03319e
PTR_ce3173c:
    #data loc_8c034dee
PTR_ce31740:
    #data loc_8c034e8c
PTR_ce31744:
    #data PTR_ce338b0
PTR_ce31748:
    #data loc_8c05218a
PTR_ce3174c:
    #data PTR_ce338d0

;=============================================

LAB_ce31750:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce316f8
    mov r14,r4
    mov.l @(PTR_ce31878,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3186e,pc),r0
    mov 0x30,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3187c,pc),r3
    mov 0x05,r5
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31880,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31884,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31888,pc),r2
    mov 0x14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31870,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce3188c,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce317b4:
    mov.w @(DAT_ce31872,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce317d6
    mov.l @(PTR_ce31890,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31888,pc),r2
    mov 0x1E,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31872,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce317d6:
    mov.w @(DAT_ce31874,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce317ea
    mov.l @(PTR_ce31894,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31874,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)

LAB_ce317ea:
    mov.l @(PTR_ce31898,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31800
    lds.l @r15+,PR
    mov.l @(PTR_ce3189c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31800:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31806:
    mov r4,r3
    mov.l @(PTR_ce318a0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31818:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce316f8
    mov r14,r4
    mov.l @(PTR_ce31878,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31876,pc),r0
    mov.l @(PTR_ce3187c,pc),r5
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce31862
    mov 0x00,r4
    mov.w @(DAT_ce3186e,pc),r0
    mov 0x3D,r2
    mov.b r2,@(r0,r14)
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
    bra LAB_ce318ce
    nop

LAB_ce31862:
    mov.w @(DAT_ce31870,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce318a4
    bra LAB_ce318a6
    mov 0x32,r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3186e:
    #data 0x01a1
DAT_ce31870:
    #data 0x01a3
DAT_ce31872:
    #data 0x0141
DAT_ce31874:
    #data 0x0140
DAT_ce31876:
    #data 0x0255
    #align4

PTR_ce31878:
    #data loc_8c05115a
PTR_ce3187c:
    #data loc_8c2896b0
PTR_ce31880:
    #data loc_8c056de4
PTR_ce31884:
    #data loc_8c05218a
PTR_ce31888:
    #data loc_8c042008
PTR_ce3188c:
    #data loc_8c034e8c
PTR_ce31890:
    #data loc_8c06192c
PTR_ce31894:
    #data loc_8c060f84
PTR_ce31898:
    #data loc_8c034dee
PTR_ce3189c:
    #data loc_8c051648
PTR_ce318a0:
    #data PTR_ce338d8

;=============================================

LAB_ce318a4:
    mov 0x33,r1

LAB_ce318a6:
    mov.w @(DAT_ce319c0,pc),r0
    mov.b r1,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r5,r3
    mov 0x05,r5
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.l @(PTR_ce319d0,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce318ce:
    mov.l @(PTR_ce319d4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce319c2,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce319d8,pc),r3
    mov.b @(r0,r14),r6
    add 0x02,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce318e8:
    mov.w @(DAT_ce319c4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3194c
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce319dc,pc),r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce319c2,pc),r0
    mov.b @(r0,r14),r3
    mov 0x5C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    fmov.s @r4,fr3
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r4),fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    fmov.s @(r0,r4),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x0C,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319c6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31942
    mov r14,r4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce31942:
    mov.l @(PTR_ce319e0,pc),r3
    jsr @r3
    nop
    bsr FUN_ce31956
    mov r14,r4

LAB_ce3194c:
    lds.l @r15+,PR
    mov.l @(PTR_ce319e4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;=============================================

FUN_ce31956:
    mov.w @(DAT_ce319c8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31976
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce319e8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce319ec,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4

LAB_ce31976:
    mov.w @(DAT_ce319ca,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce319f4
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce319ca,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce319cc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce319f0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce319d8,pc),r2
    mov 0x15,r5
    mov 0x04,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31a3e
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319c0:
    #data 0x01a1
DAT_ce319c2:
    #data 0x01a3
DAT_ce319c4:
    #data 0x0141
DAT_ce319c6:
    #data 0x01d2
DAT_ce319c8:
    #data 0x0140
DAT_ce319ca:
    #data 0x041c
DAT_ce319cc:
    #data 0x01f9
    #align4

PTR_ce319d0:
    #data loc_8c056de4
PTR_ce319d4:
    #data loc_8c05218a
PTR_ce319d8:
    #data loc_8c034e8c
PTR_ce319dc:
    #data DAT_ce33788
PTR_ce319e0:
    #data loc_8c053082
PTR_ce319e4:
    #data loc_8c034dee
PTR_ce319e8:
    #data loc_8c061774
PTR_ce319ec:
    #data loc_8c061e54
PTR_ce319f0:
    #data loc_8c0511b4

;=============================================

LAB_ce319f4:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    mov 0x5C,r1
    add r14,r1
    fcmp/gt fr2,fr3
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
    lds.l @r15+,PR
    mov.l @(PTR_ce31aa0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a3e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31aa0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31a58
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31aa4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31a58:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31a60:
    mov r4,r3
    mov.l @(PTR_ce31aa8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31a72:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    sts.l PR,@-r15
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
    mov.w @(DAT_ce31a9e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31aac
    bra LAB_ce31aae
    mov 0x32,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a9e:
    #data 0x01a3
    #align4

PTR_ce31aa0:
    #data loc_8c034dee
PTR_ce31aa4:
    #data loc_8c051648
PTR_ce31aa8:
    #data PTR_ce338e8

;=============================================

LAB_ce31aac:
    mov 0x33,r3

LAB_ce31aae:
    mov.w @(DAT_ce31be2,pc),r0
    mov 0x00,r13
    mov 0x05,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31bf0,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31bf4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31bf8,pc),r3
    jsr @r3
    mov r14,r4
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x15,r5
    mov.w @(DAT_ce31be4,pc),r0
    mov.l @(PTR_ce31bfc,pc),r3
    mov.b @(r0,r14),r6
    add 0x06,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31afc:
    mov.w @(DAT_ce31be6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31b68
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31c00,pc),r4
    add 0x01,r0
    mov.l @(DAT_ce31c04,pc),r1
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31be4,pc),r0
    lds r1,FPUL
    mov.b @(r0,r14),r3
    mov 0x5C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    fmov.s @r4,fr3
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r4),fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    fmov.s @(r0,r4),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x0C,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce31be8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce31b64
    mov r14,r4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fneg fr2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr2
    fneg fr2
    fmov fr2,@(r0,r14)

LAB_ce31b64:
    bsr FUN_ce31b72
    nop

LAB_ce31b68:
    lds.l @r15+,PR
    mov.l @(PTR_ce31c08,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;=============================================

FUN_ce31b72:
    mov.w @(DAT_ce31bea,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31b96
    mov.l @(PTR_ce31c0c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31c10,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31bea,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce31b96:
    mov.w @(DAT_ce31bec,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce31c18
    fldi0 fr15
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce31bec,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31bee,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31c14,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31bfc,pc),r2
    mov 0x15,r5
    mov 0x04,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    fmov.s @r15+,fr15
    bra FUN_ce31cce
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31be2:
    #data 0x01a1
DAT_ce31be4:
    #data 0x01a3
DAT_ce31be6:
    #data 0x0141
DAT_ce31be8:
    #data 0x01d2
DAT_ce31bea:
    #data 0x0140
DAT_ce31bec:
    #data 0x041c
DAT_ce31bee:
    #data 0x01f9
    #align4

PTR_ce31bf0:
    #data loc_8c2896b0
PTR_ce31bf4:
    #data loc_8c056de4
PTR_ce31bf8:
    #data loc_8c05218a
PTR_ce31bfc:
    #data loc_8c034e8c
PTR_ce31c00:
    #data DAT_ce33788
DAT_ce31c04:
    #data 0xbd555555
PTR_ce31c08:
    #data loc_8c034dee
PTR_ce31c0c:
    #data loc_8c061774
PTR_ce31c10:
    #data loc_8c061e54
PTR_ce31c14:
    #data loc_8c0511b4

;=============================================

LAB_ce31c18:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31c66
    mov 0x5C,r1
    mov.l @(PTR_ce31d70,pc),r3
    add r14,r1
    mov r14,r4
    mov 0x34,r0
    fmov.s @r1,fr2
    fmov.s @(r0,r14),fr1
    mov 0x68,r1
    add r14,r1
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr1
    fmov.s @r1,fr2
    mov 0x60,r1
    add r14,r1
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fmov.s @r1,fr2
    mov 0x6C,r1
    add r14,r1
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr1
    fmov.s @r1,fr2
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c66:
    mov.l @(PTR_ce31d70,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c7e
    lds.l @r15+,PR
    mov.l @(PTR_ce31d74,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce31c7e:
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31c8e
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce31c8e:
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
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31cce:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31d70,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31ce8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31d78,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31ce8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31cf0:
    mov r4,r3
    mov.l @(PTR_ce31d7c,pc),r1
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
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31d64,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce31d26
    mov r14,r4
    mov.w @(DAT_ce31d68,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce31d66,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce31d26:
    bsr FUN_ce316f8
    nop
    mov.w @(DAT_ce31d6a,pc),r0
    mov 0x35,r2
    mov 0x00,r4
    mov.l @(PTR_ce31d80,pc),r3
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
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce31d6c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31d88
    mova @(DAT_ce31d84,pc),r0
    bra LAB_ce31d8c
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d64:
    #data 0x0255
DAT_ce31d66:
    #data 0x00ff
DAT_ce31d68:
    #data 0x03f0
DAT_ce31d6a:
    #data 0x01a1
DAT_ce31d6c:
    #data 0x01d2
    #align4

PTR_ce31d70:
    #data loc_8c034dee
PTR_ce31d74:
    #data loc_8c05176e
PTR_ce31d78:
    #data loc_8c051648
PTR_ce31d7c:
    #data PTR_ce338f8
PTR_ce31d80:
    #data loc_8c2896b0
DAT_ce31d84:
    #data 0x41055555

;=============================================

LAB_ce31d88:
    mova @(DAT_ce31ea8,pc),r0
    fmov.s @r0,fr3

LAB_ce31d8c:
    mov.l @(PTR_ce31eac,pc),r3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31eb0,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31eb4,pc),r3
    mov r14,r4
    mov 0x01,r6
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31daa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce31e98,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce31e9a,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce31e9c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce31dcc
    bra LAB_ce31dce
    mov 0x02,r3

LAB_ce31dcc:
    mov 0x00,r3

LAB_ce31dce:
    mov.w @(DAT_ce31e9e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31eb8,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31ea0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e0c
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce31ec4,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce31ea0,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31ea2,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce31ebc,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce31ec0,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce31e0c:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e14:
    mov.w @(DAT_ce31e98,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x00,r13
    mov.w @(DAT_ce31e9a,pc),r0
    mov.l @(PTR_ce31eb8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31ecc
    bsr FUN_ce321f4
    mov r14,r4
    mov.w @(DAT_ce31ea4,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    tst 0x01,r0
    bt LAB_ce31e52
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)

LAB_ce31e52:
    mov 0x68,r1
    add r14,r1
    mov 0x5C,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
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
    mov.w @(DAT_ce31ea6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31e88
    bra LAB_ce31fb2
    nop

LAB_ce31e88:
    mov.b r13,@(r0,r14)
    mov 0x01,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce31ec8,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e98:
    #data 0x03f8
DAT_ce31e9a:
    #data 0x0328
DAT_ce31e9c:
    #data 0x0255
DAT_ce31e9e:
    #data 0x03f1
DAT_ce31ea0:
    #data 0x0141
DAT_ce31ea2:
    #data 0x03f0
DAT_ce31ea4:
    #data 0x0150
DAT_ce31ea6:
    #data 0x014b
    #align4

DAT_ce31ea8:
    #data 0xc1055555
PTR_ce31eac:
    #data loc_8c05115a
PTR_ce31eb0:
    #data loc_8c061774
PTR_ce31eb4:
    #data loc_8c034e8c
PTR_ce31eb8:
    #data loc_8c034dee
DAT_ce31ebc:
    #data 0xc2855555
DAT_ce31ec0:
    #data 0x42676db6
PTR_ce31ec4:
    #data loc_8c050834
PTR_ce31ec8:
    #data loc_8c061e54

;=============================================

LAB_ce31ecc:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32010,pc),r4
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31f36
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32004,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31eea
    mova @(DAT_ce32014,pc),r0
    bra LAB_ce31eee
    fmov.s @r0,fr3

LAB_ce31eea:
    mova @(DAT_ce32018,pc),r0
    fmov.s @r0,fr3

LAB_ce31eee:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x35,r3
    mov.w @(DAT_ce32006,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r4,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov r13,r0
    nop
    mov.l @(PTR_ce3201c,pc),r3
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32020,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32024,pc),r3
    mov 0x02,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f36:
    mov.b @(0x6,r14),r0
    mov 0x36,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32006,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r4,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov r13,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce32004,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31f7a
    mova @(DAT_ce32028,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3202c,pc),r0
    bra LAB_ce31f86
    fmov.s @r0,fr3

LAB_ce31f7a:
    mova @(DAT_ce32030,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32034,pc),r0
    fmov.s @r0,fr3

LAB_ce31f86:
    mov 0x68,r0
    mov.l @(PTR_ce32040,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32038,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x01,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3203c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32024,pc),r2
    mov 0x03,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce31fb2:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31fba:
    mov.w @(DAT_ce32008,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce3200a,pc),r0
    mov.l @(PTR_ce32044,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce321f4
    mov r14,r4
    mov.w @(DAT_ce3200c,pc),r0
    add r14,r0
    mov.b @(0x1,r0),r0
    tst 0x01,r0
    bt LAB_ce31ffe
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3200e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3201c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32040,pc),r2
    mov 0x01,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31ffe:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32004:
    #data 0x01d2
DAT_ce32006:
    #data 0x01a1
DAT_ce32008:
    #data 0x03f8
DAT_ce3200a:
    #data 0x0328
DAT_ce3200c:
    #data 0x0150
DAT_ce3200e:
    #data 0x01f9
    #align4

PTR_ce32010:
    #data loc_8c2896b0
DAT_ce32014:
    #data 0x41055555
DAT_ce32018:
    #data 0xc1055555
PTR_ce3201c:
    #data loc_8c05115a
PTR_ce32020:
    #data loc_8c061774
PTR_ce32024:
    #data loc_8c034e8c
DAT_ce32028:
    #data 0x41d55555
DAT_ce3202c:
    #data 0xbfa00000
DAT_ce32030:
    #data 0xc1d55555
DAT_ce32034:
    #data 0x3fa00000
DAT_ce32038:
    #data 0x42092492
DAT_ce3203c:
    #data 0xbf892492
PTR_ce32040:
    #data loc_8c061e54
PTR_ce32044:
    #data loc_8c034dee

;=============================================

LAB_ce32048:
    mov.w @(DAT_ce32118,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    fmov.s fr15,@-r15
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3211a,pc),r0
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
    mov 0x60,r0
    mov 0x6C,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce3211c,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r3
    tst r3,r3
    bt/s LAB_ce320aa
    fldi0 fr15
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce320ba

LAB_ce320aa:
    extu.b r4,r2
    tst r2,r2
    bf LAB_ce320c2
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce320c2

LAB_ce320ba:
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)

LAB_ce320c2:
    mov.w @(DAT_ce3211e,pc),r3
    add r14,r3
    mov.b @(0x1,r3),r0
    cmp/pz r0
    bf LAB_ce320d6
    mov.l @(PTR_ce32124,pc),r2
    jsr @r2
    mov r14,r4
    bsr FUN_ce321f4
    mov r14,r4

LAB_ce320d6:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32110
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32128,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce32120,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32122,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce32110:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32118:
    #data 0x03f8
DAT_ce3211a:
    #data 0x0328
DAT_ce3211c:
    #data 0x01d2
DAT_ce3211e:
    #data 0x0150
DAT_ce32120:
    #data 0x03f9
DAT_ce32122:
    #data 0x0327
    #align4

PTR_ce32124:
    #data loc_8c034dee
PTR_ce32128:
    #data loc_8c034e8c

;=============================================

LAB_ce3212c:
    mov.w @(DAT_ce32256,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32258,pc),r0
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
    mov.w @(DAT_ce3225a,pc),r3
    fadd fr3,fr2
    add r14,r3
    fmov fr2,@(r0,r14)
    mov.b @(0x1,r3),r0
    cmp/pz r0
    bf LAB_ce32186
    mov.l @(PTR_ce32268,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32186:
    mov.w @(DAT_ce3225c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce321cc
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3225c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3225e,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce3226c,pc),r3
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32270,pc),r2
    mov r14,r4
    mov 0x05,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce321cc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce321d2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32268,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321ec
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32274,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce321ec:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce321f4:
    mov.w @(DAT_ce32260,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32240
    mov.w @(DAT_ce32262,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3220a
    mov.w @(0x1c,r4),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r4)

LAB_ce3220a:
    mov.w @(0x1c,r4),r0
    mov 0x03,r3
    cmp/ge r3,r0
    bt LAB_ce32240
    mov.w @(DAT_ce32260,pc),r0
    mov 0x00,r5
    mov.l @(PTR_ce3227c,pc),r3
    mov.b @(r0,r4),r1
    mov.l @(PTR_ce32278,pc),r0
    shar r1
    mov.b @(r0,r1),r2
    mov.w @(DAT_ce32264,pc),r0
    mov.b r2,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce32240:
    rts
    nop

LAB_ce32244:
    mov r4,r3
    mov.l @(PTR_ce32280,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32256:
    #data 0x03f8
DAT_ce32258:
    #data 0x0328
DAT_ce3225a:
    #data 0x0150
DAT_ce3225c:
    #data 0x041c
DAT_ce3225e:
    #data 0x01f9
DAT_ce32260:
    #data 0x0141
DAT_ce32262:
    #data 0x019e
DAT_ce32264:
    #data 0x01a1
    #align4

PTR_ce32268:
    #data loc_8c034dee
PTR_ce3226c:
    #data loc_8c0511b4
PTR_ce32270:
    #data loc_8c034e8c
PTR_ce32274:
    #data loc_8c051648
PTR_ce32278:
    #data DAT_ce33918
PTR_ce3227c:
    #data loc_8c2896b0
PTR_ce32280:
    #data PTR_ce33920

;=============================================

LAB_ce32284:
    mov.w @(DAT_ce323bc,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce322a2
    mov.w @(DAT_ce323c0,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce323be,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce322a2:
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
    bsr FUN_ce316f8
    mov r14,r4
    mov.l @(PTR_ce323d0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce323c2,pc),r0
    mov 0x3C,r3
    mov 0x00,r13
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce323d4,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce323d8,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x20,r0
    mov 0x78,r3
    mov.b r3,@(r0,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce323dc,pc),r3
    mov 0x16,r5
    mov.w r0,@(0x1c,r14)
    mov r0,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce3230e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce323c4,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce323c6,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce323bc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32330
    bra LAB_ce32332
    mov 0x02,r3

LAB_ce32330:
    mov 0x00,r3

LAB_ce32332:
    mov.w @(DAT_ce323c8,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce323e0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce323ca,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3237c
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov r14,r2
    mov.l @(PTR_ce323e4,pc),r3
    add 0x01,r0
    mov r15,r1
    mov.b r0,@(0x6,r14)
    add 0x34,r2
    mov.w @(DAT_ce323ca,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce323c0,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov 0x0C,r0
    mova @(DAT_ce323e8,pc),r0
    mov.l @(PTR_ce323f0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce323ec,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce3237c:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32384:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce323c4,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    sts.l PR,@-r15
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce323c6,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce323cc,pc),r0
    mov.l @(PTR_ce323e0,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce323f4
    mov.l @(PTR_ce323dc,pc),r3
    mov 0x16,r5
    mov 0x09,r6
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce323bc:
    #data 0x0255
DAT_ce323be:
    #data 0x00ff
DAT_ce323c0:
    #data 0x03f0
DAT_ce323c2:
    #data 0x01a1
DAT_ce323c4:
    #data 0x03f8
DAT_ce323c6:
    #data 0x0328
DAT_ce323c8:
    #data 0x03f1
DAT_ce323ca:
    #data 0x0141
DAT_ce323cc:
    #data 0x01f5
    #align4

PTR_ce323d0:
    #data loc_8c05115a
PTR_ce323d4:
    #data loc_8c2896b0
PTR_ce323d8:
    #data loc_8c05218a
PTR_ce323dc:
    #data loc_8c034e8c
PTR_ce323e0:
    #data loc_8c034dee
PTR_ce323e4:
    #data loc_8c1294c8
DAT_ce323e8:
    #data 0x40555555
DAT_ce323ec:
    #data 0x43160000
PTR_ce323f0:
    #data loc_8c050834

;=============================================

LAB_ce323f4:
    mov.w @(DAT_ce3252e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3240a
    mov.l @(PTR_ce3253c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3252e,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)

LAB_ce3240a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32410:
    mov.w @(DAT_ce32530,pc),r0
    mov 0x02,r5
    mov 0x05,r3
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce32532,pc),r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce32534,pc),r0
    mov.b r5,@(r0,r4)
    mov 0x20,r0
    mov.b @(r0,r4),r3
    add 0xFF,r3
    mov.b r3,@(r0,r4)
    extu.b r3,r3
    tst r3,r3
    bf LAB_ce3244e
    mov.w @(DAT_ce32536,pc),r0
    mov 0x00,r5
    mov.l @(PTR_ce32540,pc),r3
    mov 0x0A,r6
    mov.b r5,@(r0,r4)
    add 0xFF,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce32538,pc),r0
    mov.b r5,@(r0,r4)
    add 0x01,r0
    mov.b r5,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x16,r5

LAB_ce3244e:
    mov.l @(PTR_ce32544,pc),r2
    jmp @r2
    nop

LAB_ce32454:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32544,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3246e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32548,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3246e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32476:
    mov r4,r3
    mov.l @(PTR_ce3254c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32488:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce316f8
    mov r14,r4
    mov.l @(PTR_ce32550,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3253a,pc),r0
    mov 0x40,r3
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32554,pc),r3
    mov 0x05,r6
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
    mov.l @(PTR_ce32540,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce324d2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32544,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324f2
    mov.l @(PTR_ce32548,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce324f2:
    mov.w @(DAT_ce3252e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32514
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32558,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3255c,pc),r0
    mov.l @(PTR_ce32560,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32514:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3251c:
    mov r4,r3
    mov.l @(PTR_ce32564,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3252e:
    #data 0x0141
DAT_ce32530:
    #data 0x03f8
DAT_ce32532:
    #data 0x0328
DAT_ce32534:
    #data 0x01f5
DAT_ce32536:
    #data 0x03f9
DAT_ce32538:
    #data 0x0327
DAT_ce3253a:
    #data 0x01a1
    #align4

PTR_ce3253c:
    #data loc_8c0611e4
PTR_ce32540:
    #data loc_8c034e8c
PTR_ce32544:
    #data loc_8c034dee
PTR_ce32548:
    #data loc_8c051648
PTR_ce3254c:
    #data PTR_ce33934
PTR_ce32550:
    #data loc_8c05115a
PTR_ce32554:
    #data loc_8c2896b0
DAT_ce32558:
    #data 0x42200000
DAT_ce3255c:
    #data 0x432b6db6
PTR_ce32560:
    #data loc_8c050ea4
PTR_ce32564:
    #data PTR_ce3393c

;=============================================

LAB_ce32568:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x00,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32698,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3269a,pc),r0
    mov.l @(PTR_ce326ac,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce326b0,pc),r2
    mov 0x11,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32598:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce326b4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce325b2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce326b8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce325b2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce325ba:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce326bc,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce3269c,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce325d0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3269e,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce325f2
    mov.w @(DAT_ce326a2,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce326a0,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce325f2:
    mov.b @(0x6,r14),r0
    mov 0x48,r3
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce326a4,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce326c0,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce326c4,pc),r2
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
    mov 0x02,r3
    mov.w @(DAT_ce32698,pc),r0
    mov.b r3,@(r0,r14)
    add 0x13,r0
    mov.l @(r0,r14),r4
    mov.l @r15,r3
    mov.b @(0x1,r4),r0
    mov.b r0,@(0x1,r3)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov 0x21,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce326a6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3265c
    mova @(DAT_ce326c8,pc),r0
    bra LAB_ce32660
    fmov.s @r0,fr3

LAB_ce3265c:
    mova @(DAT_ce326cc,pc),r0
    fmov.s @r0,fr3

LAB_ce32660:
    mov 0x5C,r0
    mov r14,r4
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    mov 0x06,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce326ac,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32676:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce326a8,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce326aa,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3269e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce326d0
    bra LAB_ce326d2
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32698:
    #data 0x01f9
DAT_ce3269a:
    #data 0x041c
DAT_ce3269c:
    #data 0x02a4
DAT_ce3269e:
    #data 0x0255
DAT_ce326a0:
    #data 0x00ff
DAT_ce326a2:
    #data 0x03f0
DAT_ce326a4:
    #data 0x01a1
DAT_ce326a6:
    #data 0x01d2
DAT_ce326a8:
    #data 0x03f8
DAT_ce326aa:
    #data 0x0328
    #align4

PTR_ce326ac:
    #data loc_8c034e8c
PTR_ce326b0:
    #data loc_8c042008
PTR_ce326b4:
    #data loc_8c034dee
PTR_ce326b8:
    #data loc_8c051648
PTR_ce326bc:
    #data PTR_ce33944
PTR_ce326c0:
    #data loc_8c2896b0
PTR_ce326c4:
    #data loc_8c05218a
DAT_ce326c8:
    #data 0x41a00000
DAT_ce326cc:
    #data 0xc1a00000

;=============================================

LAB_ce326d0:
    mov 0x00,r3

LAB_ce326d2:
    mov.w @(DAT_ce327f0,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32804,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce327f2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32716
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    mov.l @(PTR_ce32810,pc),r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce327f2,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce327f4,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32808,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3280c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32716:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3271e:
    mov.w @(DAT_ce327f6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov 0x5C,r1
    mov.l r12,@-r15
    add r14,r1
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce327f8,pc),r0
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
    fadd fr3,fr2
    mov 0x6C,r1
    fmov fr2,@(r0,r14)
    add r14,r1
    mov.l @(PTR_ce32804,pc),r3
    mov 0x60,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce327fa,pc),r0
    mov.l @(PTR_ce32814,pc),r12
    mov.b @(r0,r14),r2
    fldi0 fr15
    tst r2,r2
    bf/s LAB_ce32786
    mov 0x00,r13
    bra LAB_ce32884
    nop

LAB_ce32786:
    mov.l @(PTR_ce32818,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce3282c
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce327fe,pc),r5
    add 0x01,r0
    mov.l @(DAT_ce32820,pc),r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce327fc,pc),r0
    mov.l @(r0,r14),r4
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    add r4,r5
    fmov fr3,@(r0,r4)
    mova @(DAT_ce3281c,pc),r0
    mov.l @(0x4,r5),r2
    and r3,r2
    or r2,r13
    tst r13,r13
    bt/s LAB_ce327bc
    fmov.s @r0,fr4
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r4)

LAB_ce327bc:
    mov.w @(DAT_ce327fe,pc),r5
    mov 0x00,r1
    mov.l @(DAT_ce32824,pc),r3
    add r4,r5
    mov.l @r5,r2
    and r3,r2
    or r1,r2
    tst r2,r2
    bt/s LAB_ce327d8
    mov 0x02,r3
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r4)

LAB_ce327d8:
    mov.l @(DAT_ce32828,pc),r1
    mov 0x07,r6
    mov.w @(DAT_ce32800,pc),r0
    lds r1,FPUL
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    bra LAB_ce3287c
    mov 0x16,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce327f0:
    #data 0x03f1
DAT_ce327f2:
    #data 0x0141
DAT_ce327f4:
    #data 0x03f0
DAT_ce327f6:
    #data 0x03f8
DAT_ce327f8:
    #data 0x0328
DAT_ce327fa:
    #data 0x019e
DAT_ce327fc:
    #data 0x01b0
DAT_ce327fe:
    #data 0x0414
DAT_ce32800:
    #data 0x01f9
    #align4

PTR_ce32804:
    #data loc_8c034dee
DAT_ce32808:
    #data 0xc13aaaaa
DAT_ce3280c:
    #data 0x4322db6d
PTR_ce32810:
    #data loc_8c050834
PTR_ce32814:
    #data loc_8c034e8c
PTR_ce32818:
    #data loc_8c05264c
DAT_ce3281c:
    #data 0x42520000
DAT_ce32820:
    #data 0x04000000
DAT_ce32824:
    #data 0x20000000
DAT_ce32828:
    #data 0x41800000

;=============================================

LAB_ce3282c:
    mov 0x01,r4
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x05,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32930,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32932,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce32940,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32934,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32860
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32860:
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce32944,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x14,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32948,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x06,r6
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32936,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce3287c:
    jsr @r12
    mov r14,r4
    bra LAB_ce328dc
    nop

LAB_ce32884:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce328dc
    mov.b @(0x6,r14),r0
    mov 0x2B,r5
    mov.l @(PTR_ce3294c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32930,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32932,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    fldi1 fr3
    fadd fr3,fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    mov 0x01,r5
    mov 0x09,r6
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce32950,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32954,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov 0x21,r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce328dc:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce328e8:
    mov.w @(DAT_ce32938,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov.l r12,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3293a,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3293c,pc),r0
    mov.l @(r0,r14),r13
    mov.b @(0x1,r13),r0
    mov r0,r3
    mov.b @(0x1,r5),r0
    cmp/eq r0,r3
    bt/s LAB_ce3295c
    fldi0 fr15
    mov 0x5C,r0
    mov.l @(PTR_ce32958,pc),r3
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov r14,r4
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32930:
    #data 0x03f9
DAT_ce32932:
    #data 0x0327
DAT_ce32934:
    #data 0x01d2
DAT_ce32936:
    #data 0x01d3
DAT_ce32938:
    #data 0x03f8
DAT_ce3293a:
    #data 0x0328
DAT_ce3293c:
    #data 0x020c
    #align4

DAT_ce32940:
    #data 0x40855555
DAT_ce32944:
    #data 0x41700000
DAT_ce32948:
    #data 0xbf892492
PTR_ce3294c:
    #data loc_8c042008
DAT_ce32950:
    #data 0xc0092492
DAT_ce32954:
    #data 0xbf4db6db
PTR_ce32958:
    #data loc_8c05176e

;=============================================

LAB_ce3295c:
    mov 0x21,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf/s LAB_ce329f0
    mov 0x00,r12
    mov.l @(PTR_ce32a24,pc),r2
    jsr @r2
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
    mov.w @(DAT_ce32a20,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce329b6
    bra LAB_ce32b08
    nop

LAB_ce329b6:
    mov.w @(DAT_ce32a20,pc),r0
    mov.l @(PTR_ce32a28,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce32a22,pc),r0
    mov.b r12,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32a2c,pc),r2
    mov r14,r4
    mov 0x03,r6
    fmov.s @r15+,fr15
    mov 0x01,r5
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce329f0:
    mov.l @(PTR_ce32a24,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a3c
    mov.l @(DAT_ce32a30,pc),r1
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fdiv fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32a34,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce32a38,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    mov 0x07,r0
    bra LAB_ce32b08
    mov.b r0,@(0x6,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a20:
    #data 0x041c
DAT_ce32a22:
    #data 0x01f9
    #align4

PTR_ce32a24:
    #data loc_8c034dee
PTR_ce32a28:
    #data loc_8c0511b4
PTR_ce32a2c:
    #data loc_8c034e8c
DAT_ce32a30:
    #data 0x40800000
DAT_ce32a34:
    #data 0x41892492
DAT_ce32a38:
    #data 0xc0092492

;=============================================

LAB_ce32a3c:
    mov 0x5C,r1
    mov.l @(PTR_ce32b40,pc),r4
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
    add 0x28,r0
    fmov.s @(r0,r4),fr4
    mova @(DAT_ce32b44,pc),r0
    fmov.s @r0,fr3
    mov 0x34,r0
    fmov fr4,fr2
    fadd fr3,fr2
    fmov.s @(r0,r14),fr1
    fcmp/gt fr1,fr2
    bf LAB_ce32a94
    mova @(DAT_ce32b48,pc),r0
    fmov.s @r0,fr2
    mov 0x34,r0
    fadd fr2,fr4
    fmov fr4,@(r0,r14)

LAB_ce32a94:
    mova @(DAT_ce32b4c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce32b36,pc),r0
    fmov.s @(r0,r4),fr2
    mov 0x34,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bf LAB_ce32ab4
    mova @(DAT_ce32b50,pc),r0
    fmov.s @r0,fr2
    mov.w @(DAT_ce32b38,pc),r0
    fmov.s @(r0,r4),fr1
    mov 0x34,r0
    fadd fr2,fr1
    fmov fr1,@(r0,r14)

LAB_ce32ab4:
    mov 0x21,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce32ad8
    mov.w @(DAT_ce32b3a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32acc
    mova @(DAT_ce32b54,pc),r0
    bra LAB_ce32ad0
    fmov.s @r0,fr3

LAB_ce32acc:
    mova @(DAT_ce32b58,pc),r0
    fmov.s @r0,fr3

LAB_ce32ad0:
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r13)

LAB_ce32ad8:
    mov.w @(DAT_ce32b3c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32b08
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32b5c,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce32b3c,pc),r0
    mov.b r12,@(r0,r14)

LAB_ce32b08:
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32b14:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32b60,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32b2e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32b64,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32b2e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b36:
    #data 0x008c
DAT_ce32b38:
    #data 0x0088
DAT_ce32b3a:
    #data 0x01d2
DAT_ce32b3c:
    #data 0x014b
    #align4

PTR_ce32b40:
    #data loc_8c26a518
DAT_ce32b44:
    #data 0xc1d55555
DAT_ce32b48:
    #data 0xc2a00000
DAT_ce32b4c:
    #data 0x41d55555
DAT_ce32b50:
    #data 0x42a00000
DAT_ce32b54:
    #data 0x42c80000
DAT_ce32b58:
    #data 0xc2c80000
PTR_ce32b5c:
    #data loc_8c2896b0
PTR_ce32b60:
    #data loc_8c034dee
PTR_ce32b64:
    #data loc_8c051648

;=============================================

LAB_ce32b68:
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
    mov.w @(DAT_ce32c76,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32bec
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32c78,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32c76,pc),r0
    mov.l @(PTR_ce32c80,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32c84,pc),r2
    mov r14,r4
    mov 0x07,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32bec:
    lds.l @r15+,PR
    mov.l @(PTR_ce32c88,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32bf6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32c88,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32c10
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32c8c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32c10:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32c18:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x02,r3
    mov 0x05,r2
    mov 0x00,r4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32c7a,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x4E,r3
    mov.w @(DAT_ce32c7c,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32c7e,pc),r0
    mov.b @(r0,r14),r1
    add 0xFE,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    tst r1,r1
    mov.l @(PTR_ce32c90,pc),r3
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov r4,r0
    nop
    mov.l @(PTR_ce32c84,pc),r2
    mov 0x15,r5
    mov.w r0,@(0x1c,r14)
    mov 0x07,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32c94,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c76:
    #data 0x041c
DAT_ce32c78:
    #data 0x01f9
DAT_ce32c7a:
    #data 0x03f8
DAT_ce32c7c:
    #data 0x0328
DAT_ce32c7e:
    #data 0x01a3
    #align4

PTR_ce32c80:
    #data loc_8c0511b4
PTR_ce32c84:
    #data loc_8c034e8c
PTR_ce32c88:
    #data loc_8c034dee
PTR_ce32c8c:
    #data loc_8c051648
PTR_ce32c90:
    #data loc_8c2896b0
PTR_ce32c94:
    #data LAB_ce31afc

;=============================================

LAB_ce32c98:
    mov.w @(DAT_ce32dc0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32dc2,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32dc4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32d04
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32dd4,pc),r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32dc6,pc),r0
    mov.b @(r0,r14),r3
    mov 0x5C,r0
    extu.b r3,r3
    shll2 r3
    shll2 r3
    add r3,r4
    fmov.s @r4,fr3
    fmov fr3,@(r0,r14)
    mov 0x04,r0
    fmov.s @(r0,r4),fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    fmov.s @(r0,r4),fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x0C,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32dc8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32cfe
    mov r14,r4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce32cfe:
    mov.l @(PTR_ce32dd8,pc),r3
    jsr @r3
    nop

LAB_ce32d04:
    lds.l @r15+,PR
    mov.l @(PTR_ce32ddc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32d0e:
    mov.w @(DAT_ce32dc0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32dc2,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32dca,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce32d40
    mov 0x00,r13
    mov.l @(PTR_ce32de0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32de4,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32dca,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce32d40:
    mov.w @(DAT_ce32dcc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf/s LAB_ce32d88
    fldi0 fr15
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr15,@(r0,r14)
    mov 0x6C,r0
    fmov fr15,@(r0,r14)
    mov.w @(DAT_ce32dcc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32dce,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32de8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32dec,pc),r2
    mov 0x15,r5
    mov 0x04,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32df0,pc),r3
    mov r14,r4
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32d88:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce32df4
    mov.w @(DAT_ce32dd0,pc),r0
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32dd2,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bf LAB_ce32db6
    mov.l @(PTR_ce32dec,pc),r3
    mov 0x15,r5
    mov 0x08,r6
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32db6:
    mov 0x5C,r0
    fmov fr15,@(r0,r14)
    mov 0x68,r0
    bra LAB_ce32e10
    fmov fr15,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32dc0:
    #data 0x03f8
DAT_ce32dc2:
    #data 0x0328
DAT_ce32dc4:
    #data 0x0141
DAT_ce32dc6:
    #data 0x01a3
DAT_ce32dc8:
    #data 0x01d2
DAT_ce32dca:
    #data 0x0140
DAT_ce32dcc:
    #data 0x041c
DAT_ce32dce:
    #data 0x01f9
DAT_ce32dd0:
    #data 0x03f9
DAT_ce32dd2:
    #data 0x0327
    #align4

PTR_ce32dd4:
    #data DAT_ce33788
PTR_ce32dd8:
    #data FUN_ce31b72
PTR_ce32ddc:
    #data loc_8c034dee
PTR_ce32de0:
    #data loc_8c061774
PTR_ce32de4:
    #data loc_8c061e54
PTR_ce32de8:
    #data loc_8c0511b4
PTR_ce32dec:
    #data loc_8c034e8c
PTR_ce32df0:
    #data FUN_ce31cce

;=============================================

LAB_ce32df4:
    mov 0x5C,r1
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr2
    fmov.s @(r0,r14),fr1
    mov 0x68,r1
    add r14,r1
    fadd fr2,fr1
    fmov fr1,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr1
    fmov.s @r1,fr2
    fadd fr2,fr1
    fmov fr1,@(r0,r14)

LAB_ce32e10:
    mov 0x60,r1
    mov.l @(PTR_ce32efc,pc),r3
    add r14,r1
    mov r14,r4
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
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e3a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32efc,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32e54
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32f00,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32e54:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32e5c:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce32ef0,pc),r1
    mov.l @(PTR_ce32f04,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce32e74:
    mov.w @(DAT_ce32ef2,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32ef4,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32ee4
    mov.w @(DAT_ce32ef6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32eb4
    mov.w @(DAT_ce32ef8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32eb4
    mov.l @(PTR_ce32f08,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32ee4
    mov r0,r4
    bra LAB_ce32ed6
    mov 0x00,r2

LAB_ce32eb4:
    mov.w @(DAT_ce32ef6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32ee4
    mov.w @(DAT_ce32ef8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32ee4
    mov.l @(PTR_ce32f08,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32ee4
    mov r0,r4
    mov 0x01,r2

LAB_ce32ed6:
    mov.w @(DAT_ce32efa,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32ee4:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32eec:
    rts
    mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ef0:
    #data 0x01f9
DAT_ce32ef2:
    #data 0x01fa
DAT_ce32ef4:
    #data 0x0c00
DAT_ce32ef6:
    #data 0x01fe
DAT_ce32ef8:
    #data 0x01a3
DAT_ce32efa:
    #data 0x01f7
    #align4

PTR_ce32efc:
    #data loc_8c034dee
PTR_ce32f00:
    #data loc_8c051648
PTR_ce32f04:
    #data PTR_ce33970
PTR_ce32f08:
    #data loc_8c045790

;=============================================

LAB_ce32f0c:
    mov.w @(DAT_ce3301c,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3301e,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32f94
    mov.w @(DAT_ce33020,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32f58
    mov.w @(DAT_ce33022,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32f58
    mova @(DAT_ce3302c,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32f58
    mov.l @(PTR_ce33030,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32f94
    mov r0,r4
    bra LAB_ce32f86
    mov 0x02,r2

LAB_ce32f58:
    mov.w @(DAT_ce33020,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32f94
    mov.w @(DAT_ce33022,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32f94
    mova @(DAT_ce3302c,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32f94
    mov.l @(PTR_ce33030,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32f94
    mov r0,r4
    mov 0x03,r2

LAB_ce32f86:
    mov.w @(DAT_ce33024,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f94:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f9c:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33024,pc),r1
    mov.l @(PTR_ce33034,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce32fb4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bf/s LAB_ce32fda
    mov 0x05,r6
    mov.w @(DAT_ce33026,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce33028,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce32fda:
    mov.l @(PTR_ce33038,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce3303c,pc),r0
    mov.l @(PTR_ce33044,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33040,pc),r0
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
    mov.w @(DAT_ce3302a,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33048,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3304c,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3301c:
    #data 0x01fa
DAT_ce3301e:
    #data 0x1c00
DAT_ce33020:
    #data 0x01fe
DAT_ce33022:
    #data 0x01a3
DAT_ce33024:
    #data 0x01f7
DAT_ce33026:
    #data 0x01d2
DAT_ce33028:
    #data 0x0130
DAT_ce3302a:
    #data 0x01a0
    #align4

DAT_ce3302c:
    #data 0x43092492
PTR_ce33030:
    #data loc_8c045790
PTR_ce33034:
    #data PTR_ce33980
PTR_ce33038:
    #data loc_8c02fec4
DAT_ce3303c:
    #data 0xc2e2aaaa
DAT_ce33040:
    #data 0x43430000
PTR_ce33044:
    #data loc_8c103660
PTR_ce33048:
    #data loc_8c056f2a
PTR_ce3304c:
    #data loc_8c034e8c

;=============================================

LAB_ce33050:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf/s LAB_ce33076
    mov 0x05,r6
    mov.w @(DAT_ce3319a,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3319c,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce33076:
    mov.l @(PTR_ce331a4,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce331a8,pc),r0
    mov.l @(PTR_ce331b0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce331ac,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3319e,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce331b4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce331b8,pc),r2
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce330b2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf/s LAB_ce330d8
    mov 0x05,r6
    mov.w @(DAT_ce3319a,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3319c,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce330d8:
    mov.l @(PTR_ce331a4,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce331bc,pc),r0
    mov.l @(PTR_ce331b0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce331c0,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3319e,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce331b4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce331b8,pc),r2
    mov 0x0F,r5
    mov 0x02,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33114:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x02,r0
    bf/s LAB_ce3313a
    mov 0x05,r6
    mov.w @(DAT_ce3319a,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce3319c,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce3313a:
    mov.l @(PTR_ce331a4,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mova @(DAT_ce331c4,pc),r0
    mov.l @(PTR_ce331b0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce331c8,pc),r0
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
    mov.w @(DAT_ce3319e,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce331b4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce331b8,pc),r2
    mov 0x0F,r5
    mov 0x03,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3317c:
    mov.w @(DAT_ce331a0,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce331cc,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3319a:
    #data 0x01d2
DAT_ce3319c:
    #data 0x0130
DAT_ce3319e:
    #data 0x01a0
DAT_ce331a0:
    #data 0x01ea
    #align4

PTR_ce331a4:
    #data loc_8c02fec4
DAT_ce331a8:
    #data 0x42055555
DAT_ce331ac:
    #data 0x43430000
PTR_ce331b0:
    #data loc_8c103660
PTR_ce331b4:
    #data loc_8c056f2a
PTR_ce331b8:
    #data loc_8c034e8c
DAT_ce331bc:
    #data 0x42ad5555
DAT_ce331c0:
    #data 0x43960000
DAT_ce331c4:
    #data 0xc2a00000
DAT_ce331c8:
    #data 0x43384924
PTR_ce331cc:
    #data PTR_ce33990

;=============================================

LAB_ce331d0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce332f0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce331e8
    mov.l @(PTR_ce332f4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce331e8:
    mov.w @(DAT_ce332e8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3321e
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce332ea,pc),r0
    mov 0x00,r2
    mov r2,r5
    mov r2,r6
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce332f8,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce332ec,pc),r0
    mov 0x21,r2
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)

LAB_ce3321e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33226:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce332f0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3323e
    mov.l @(PTR_ce332f4,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3323e:
    mov.w @(DAT_ce332e8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33280
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x0B,r3
    mov.w @(DAT_ce332ea,pc),r0
    mov 0x00,r2
    mov r2,r5
    mov r2,r6
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce332f8,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce332ec,pc),r0
    mov 0x20,r2
    mov r14,r4
    mov.b r2,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r13)
    lds.l @r15+,PR
    mov.l @(PTR_ce332fc,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33280:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33288:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce332f0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce332a0
    mov.l @(PTR_ce33300,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce332a0:
    mov.w @(DAT_ce332e8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce332e0
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce332ea,pc),r0
    mov 0x02,r2
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.l @(PTR_ce33304,pc),r3
    jsr @r3
    mov.b r2,@(r0,r13)
    mov.l @(PTR_ce332f8,pc),r2
    mov 0x00,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce332ec,pc),r0
    mov 0x23,r3
    mov.w @(DAT_ce332ee,pc),r1
    mov.b r3,@(r0,r13)
    add 0x31,r0
    mov.b @(r0,r14),r0
    add r13,r1
    xor 0x01,r0
    mov.b r0,@r1

LAB_ce332e0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce332e8:
    #data 0x0141
DAT_ce332ea:
    #data 0x01c8
DAT_ce332ec:
    #data 0x01a1
DAT_ce332ee:
    #data 0x01d2
    #align4

PTR_ce332f0:
    #data loc_8c034dee
PTR_ce332f4:
    #data loc_8c051648
PTR_ce332f8:
    #data loc_8c02fec4
PTR_ce332fc:
    #data loc_8c0423fc
PTR_ce33300:
    #data loc_8c05176e
PTR_ce33304:
    #data loc_8c02fd26

;=============================================

LAB_ce33308:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce333b2
    mov 0x00,r13
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
    mov.w @(DAT_ce33428,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33360
    mov.l @(PTR_ce33430,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce33360:
    mov.w @(DAT_ce3342a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3341e
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce33384
    mova @(DAT_ce33434,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce33384
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce33384:
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce33438,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3342a,pc),r0
    mov.l @(PTR_ce3343c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3342c,pc),r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33440,pc),r2
    mov 0x02,r5
    jsr @r2
    mov r14,r4
    bra LAB_ce3341e
    nop

LAB_ce333b2:
    mov.l @(PTR_ce33430,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce33418
    mov.w @(DAT_ce33428,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce333fa
    mov.b r13,@(r0,r14)
    mov 0x24,r3
    mov.w @(DAT_ce3342e,pc),r0
    mov.l @(r0,r14),r4
    add 0xD9,r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce33444,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33448,pc),r0
    mov.l @(PTR_ce33450,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce3344c,pc),r0
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
    bra LAB_ce3341e
    nop

LAB_ce333fa:
    mov.b @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce3341e
    mov.b r13,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce3342e,pc),r0
    mov 0x22,r2
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    bra LAB_ce3341e
    mov.b r2,@(r0,r4)

LAB_ce33418:
    mov.l @(PTR_ce33454,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce3341e:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33428:
    #data 0x0141
DAT_ce3342a:
    #data 0x041c
DAT_ce3342c:
    #data 0x01f9
DAT_ce3342e:
    #data 0x01c8
    #align4

PTR_ce33430:
    #data loc_8c034dee
DAT_ce33434:
    #data 0x43ab6db6
PTR_ce33438:
    #data loc_8c034e8c
PTR_ce3343c:
    #data loc_8c0423fc
PTR_ce33440:
    #data loc_8c04223a
PTR_ce33444:
    #data loc_8c05933c
DAT_ce33448:
    #data 0xc2555555
DAT_ce3344c:
    #data 0x42892492
PTR_ce33450:
    #data loc_8c0fdab6
PTR_ce33454:
    #data loc_8c051648

;=============================================

LAB_ce33458:
    mov r4,r3
    mov.l @(PTR_ce335a4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3346a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce335a8,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3359c,pc),r0
    mov.b r3,@(r0,r14)
    add 0xD9,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33490
    mova @(DAT_ce335ac,pc),r0
    bra LAB_ce33494
    fmov.s @r0,fr3

LAB_ce33490:
    mova @(DAT_ce335b0,pc),r0
    fmov.s @r0,fr3

LAB_ce33494:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov 0x37,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce335b4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce335b8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3359e,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce335bc,pc),r3
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
    mov.l @(PTR_ce335c0,pc),r2
    mov r4,r6
    mov 0x14,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce334e2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce335c4,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce335c8,pc),r3
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
    bt LAB_ce3354a
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce335c0,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce335cc,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3354a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33550:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce335c4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33572
    mov.l @(PTR_ce335a8,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce335d0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33572:
    mov.w @(DAT_ce335a0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3357e
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce3357e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33584:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce335a2,pc),r1
    mov.l @(PTR_ce335d4,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3359c:
    #data 0x01f9
DAT_ce3359e:
    #data 0x01a1
DAT_ce335a0:
    #data 0x0141
DAT_ce335a2:
    #data 0x01f7
    #align4

PTR_ce335a4:
    #data PTR_ce339a0
PTR_ce335a8:
    #data loc_8c035162
DAT_ce335ac:
    #data 0x41f00000
DAT_ce335b0:
    #data 0xc1f00000
DAT_ce335b4:
    #data 0x40892492
DAT_ce335b8:
    #data 0xbf4db6db
PTR_ce335bc:
    #data loc_8c2896b0
PTR_ce335c0:
    #data loc_8c034e8c
PTR_ce335c4:
    #data loc_8c034dee
PTR_ce335c8:
    #data loc_8c052ce2
PTR_ce335cc:
    #data loc_8c0511b4
PTR_ce335d0:
    #data loc_8c051854
PTR_ce335d4:
    #data PTR_ce339ac

;=============================================

LAB_ce335d8:
    mov.w @(DAT_ce336b6,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce336c0,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce335e6:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce336b8,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33604
    mov 0x04,r5
    cmp/eq 0x01,r0
    bt LAB_ce33612
    cmp/eq 0x02,r0
    bt LAB_ce33612
    bra LAB_ce33616
    nop

LAB_ce33604:
    mov.w @(DAT_ce336ba,pc),r0
    mov 0x03,r3
    mov 0x01,r2
    mov.b r3,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce33616
    mov.b r2,@(r0,r4)

LAB_ce33612:
    mov.w @(DAT_ce336ba,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33616:
    mov.l @(PTR_ce336c4,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce3361c:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce336b8,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3363a
    mov 0x04,r5
    cmp/eq 0x01,r0
    bt LAB_ce33648
    cmp/eq 0x02,r0
    bt LAB_ce33648
    bra LAB_ce3364c
    nop

LAB_ce3363a:
    mov.w @(DAT_ce336ba,pc),r0
    mov 0x03,r3
    mov 0x01,r2
    mov.b r3,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce3364c
    mov.b r2,@(r0,r4)

LAB_ce33648:
    mov.w @(DAT_ce336ba,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3364c:
    mov.l @(PTR_ce336c4,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33652:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce336b8,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33674
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce3367a
    cmp/eq 0x02,r0
    bt LAB_ce33680
    bra LAB_ce33688
    nop

LAB_ce33674:
    mov.w @(DAT_ce336ba,pc),r0
    bra LAB_ce33684
    mov.b r6,@(r0,r4)

LAB_ce3367a:
    mov.w @(DAT_ce336ba,pc),r0
    bra LAB_ce33684
    mov.b r5,@(r0,r4)

LAB_ce33680:
    mov.w @(DAT_ce336ba,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce33684:
    mov.w @(DAT_ce336bc,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce33688:
    mov.l @(PTR_ce336c4,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce3368e:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce336b8,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce336b0
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce336c8
    cmp/eq 0x02,r0
    bt LAB_ce336ce
    bra LAB_ce336d6
    nop

LAB_ce336b0:
    mov.w @(DAT_ce336ba,pc),r0
    bra LAB_ce336d2
    mov.b r6,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce336b6:
    #data 0x01c8
DAT_ce336b8:
    #data 0x04c9
DAT_ce336ba:
    #data 0x01e9
DAT_ce336bc:
    #data 0x01a3
    #align4

PTR_ce336c0:
    #data loc_8c04cc1c
PTR_ce336c4:
    #data loc_8c0530d8

;=============================================

LAB_ce336c8:
    mov.w @(DAT_ce336dc,pc),r0
    bra LAB_ce336d2
    mov.b r5,@(r0,r4)

LAB_ce336ce:
    mov.w @(DAT_ce336dc,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce336d2:
    mov.w @(DAT_ce336de,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce336d6:
    mov.l @(PTR_ce336e0,pc),r2
    jmp @r2
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce336dc:
    #data 0x01e9
DAT_ce336de:
    #data 0x01a3
    #align4

PTR_ce336e0:
    #data loc_8c0530d8
DAT_ce336e4:
    #data 0x0201
    #data 0x0201
DAT_ce336e8:
    #data 0x02ff
    #data 0x02ff
DAT_ce336ec:
    #data 0xffff
    #data 0xffff
DAT_ce336f0:
    #data 0x0201
    #data 0x0201
DAT_ce336f4:
    #data 0x02ff
    #data 0x02ff
DAT_ce336f8:
    #data 0xffff
    #data 0xffff
DAT_ce336fc:
    #data 0x0201
    #data 0x0201
DAT_ce33700:
    #data 0x02ff
    #data 0x02ff
DAT_ce33704:
    #data 0xffff
    #data 0xffff
DAT_ce33708:
    #data 0x0201
    #data 0x0201
DAT_ce3370c:
    #data 0x02ff
    #data 0x02ff
DAT_ce33710:
    #data 0xffff
    #data 0xffff
DAT_ce33714:
    #data 0x0201
    #data 0x0200
DAT_ce33718:
    #data 0x02ff
    #data 0x0201
DAT_ce3371c:
    #data 0xffff
    #data 0x02ff
DAT_ce33720:
    #data 0x0201
    #data 0x0201
DAT_ce33724:
    #data 0x02ff
    #data 0x02ff
DAT_ce33728:
    #data 0xffff
    #data 0xffff
DAT_ce3372c:
    #data 0x0028
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x0400
    #data 0x0800
    #data 0x0300
DAT_ce3373a:
    #data 0x0028
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x2000
    #data 0x0060
DAT_ce33748:
    #data 0x0002
    #data 0x2000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x2000
    #data 0x0060
DAT_ce33756:
    #data 0x0003
    #data 0x9100
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce33766:
    #data 0x0003
    #data 0x9100
    #data 0x0004
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce33776:
    #data 0x0003
    #data 0xa100
    #data 0x0007
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
    #align4

DAT_ce33788:
    #data 0x40855555
DAT_ce3378c:
    #data 0x00000000
DAT_ce33790:
    #data 0x419a4924
DAT_ce33794:
    #data 0xbf892492
    #data 0x40a00000
    #data 0x00000000
    #data 0x41dedb6d
    #data 0xbf892492
PTR_ce337a8:
    #data LAB_ce304b6
PTR_ce337ac:
    #data LAB_ce3001c
PTR_ce337b0:
    #data LAB_ce304ba
PTR_ce337b4:
    #data LAB_ce30c4e
PTR_ce337b8:
    #data LAB_ce311fc
PTR_ce337bc:
    #data LAB_ce313a2
PTR_ce337c0:
    #data LAB_ce31590
PTR_ce337c4:
    #data LAB_ce315d6
PTR_ce337c8:
    #data LAB_ce316e4
PTR_ce337cc:
    #data LAB_ce32e5c
PTR_ce337d0:
    #data LAB_ce32f9c
PTR_ce337d4:
    #data LAB_ce3317c
PTR_ce337d8:
    #data LAB_ce33584
PTR_ce337dc:
    #data LAB_ce303be
PTR_ce337e0:
    #data LAB_ce33458
PTR_ce337e4:
    #data LAB_ce31134
PTR_ce337e8:
    #data LAB_ce335e6
PTR_ce337ec:
    #data LAB_ce3361c
PTR_ce337f0:
    #data LAB_ce33652
PTR_ce337f4:
    #data LAB_ce3368e
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
DAT_ce33818:
    #data 0x42d55555
    #data 0x42d55555
    #data 0x42d55555
DAT_ce33824:
    #data 0x42d55555
    #data 0x42d55555
DAT_ce3382c:
    #data 0x42d55555
PTR_ce33830:
    #data LAB_ce304ce
PTR_ce33834:
    #data LAB_ce3098c
PTR_ce33838:
    #data LAB_ce309b4
PTR_ce3383c:
    #data LAB_ce304ce
PTR_ce33840:
    #data LAB_ce30c70
PTR_ce33844:
    #data LAB_ce30e3c
PTR_ce33848:
    #data LAB_ce30e26
PTR_ce3384c:
    #data LAB_ce30c62
PTR_ce33850:
    #data LAB_ce30ed2
PTR_ce33854:
    #data LAB_ce30fcc
PTR_ce33858:
    #data LAB_ce30f20
PTR_ce3385c:
    #data LAB_ce30f78
PTR_ce33860:
    #data LAB_ce30fde
PTR_ce33864:
    #data LAB_ce3106c
PTR_ce33868:
    #data FUN_ce310fc
PTR_ce3386c:
    #data LAB_ce3120e
PTR_ce33870:
    #data LAB_ce31298
PTR_ce33874:
    #data LAB_ce31318
PTR_ce33878:
    #data FUN_ce31380
PTR_ce3387c:
    #data LAB_ce313d0
PTR_ce33880:
    #data LAB_ce31434
PTR_ce33884:
    #data LAB_ce3152c
PTR_ce33888:
    #data LAB_ce315a2
PTR_ce3388c:
    #data LAB_ce315b6
PTR_ce33890:
    #data LAB_ce3160c
PTR_ce33894:
    #data LAB_ce316b0
PTR_ce33898:
    #data LAB_ce3160c
PTR_ce3389c:
    #data LAB_ce316b0
PTR_ce338a0:
    #data LAB_ce316ca
PTR_ce338a4:
    #data LAB_ce3161e
PTR_ce338a8:
    #data LAB_ce316a4
PTR_ce338ac:
    #data LAB_ce316aa
PTR_ce338b0:
    #data LAB_ce31720
PTR_ce338b4:
    #data LAB_ce31806
PTR_ce338b8:
    #data LAB_ce31a60
PTR_ce338bc:
    #data LAB_ce31cf0
PTR_ce338c0:
    #data LAB_ce32244
PTR_ce338c4:
    #data LAB_ce32476
PTR_ce338c8:
    #data LAB_ce3251c
PTR_ce338cc:
    #data LAB_ce325ba
PTR_ce338d0:
    #data LAB_ce31750
PTR_ce338d4:
    #data LAB_ce317b4
PTR_ce338d8:
    #data LAB_ce31818
PTR_ce338dc:
    #data LAB_ce318e8
PTR_ce338e0:
    #data FUN_ce31956
PTR_ce338e4:
    #data LAB_ce31a3e
PTR_ce338e8:
    #data LAB_ce31a72
PTR_ce338ec:
    #data LAB_ce31afc
PTR_ce338f0:
    #data FUN_ce31b72
PTR_ce338f4:
    #data FUN_ce31cce
PTR_ce338f8:
    #data LAB_ce31d02
PTR_ce338fc:
    #data LAB_ce31daa
PTR_ce33900:
    #data LAB_ce31e14
PTR_ce33904:
    #data LAB_ce31e14
PTR_ce33908:
    #data LAB_ce31fba
PTR_ce3390c:
    #data LAB_ce32048
PTR_ce33910:
    #data LAB_ce3212c
PTR_ce33914:
    #data FUN_ce321d2
DAT_ce33918:
    #data 0x35
    #data 0x35
    #data 0x35
    #data 0x35
    #data 0x36
    #data 0x36
    #data 0x36
    #data 0x00
    #align4

PTR_ce33920:
    #data LAB_ce32284
PTR_ce33924:
    #data LAB_ce3230e
PTR_ce33928:
    #data LAB_ce32384
PTR_ce3392c:
    #data LAB_ce32410
PTR_ce33930:
    #data LAB_ce32454
PTR_ce33934:
    #data LAB_ce32488
PTR_ce33938:
    #data LAB_ce324d2
PTR_ce3393c:
    #data LAB_ce32568
PTR_ce33940:
    #data LAB_ce32598
PTR_ce33944:
    #data LAB_ce325d0
PTR_ce33948:
    #data LAB_ce32676
PTR_ce3394c:
    #data LAB_ce3271e
PTR_ce33950:
    #data LAB_ce328e8
PTR_ce33954:
    #data FUN_ce32b14
PTR_ce33958:
    #data LAB_ce32b68
PTR_ce3395c:
    #data LAB_ce32bf6
PTR_ce33960:
    #data LAB_ce32c18
PTR_ce33964:
    #data LAB_ce32c98
PTR_ce33968:
    #data LAB_ce32d0e
PTR_ce3396c:
    #data LAB_ce32e3a
PTR_ce33970:
    #data LAB_ce32e74
PTR_ce33974:
    #data LAB_ce32eec
PTR_ce33978:
    #data LAB_ce32f0c
PTR_ce3397c:
    #data LAB_ce32e74
PTR_ce33980:
    #data LAB_ce32fb4
PTR_ce33984:
    #data LAB_ce33050
PTR_ce33988:
    #data LAB_ce330b2
PTR_ce3398c:
    #data LAB_ce33114
PTR_ce33990:
    #data LAB_ce331d0
PTR_ce33994:
    #data LAB_ce33226
PTR_ce33998:
    #data LAB_ce33288
PTR_ce3399c:
    #data LAB_ce33308
PTR_ce339a0:
    #data LAB_ce3346a
PTR_ce339a4:
    #data LAB_ce334e2
PTR_ce339a8:
    #data LAB_ce33550
PTR_ce339ac:
    #data LAB_ce335d8
PTR_ce339b0:
    #data LAB_ce335d8
PTR_ce339b4:
    #data LAB_ce335d8
PTR_ce339b8:
    #data LAB_ce335d8
