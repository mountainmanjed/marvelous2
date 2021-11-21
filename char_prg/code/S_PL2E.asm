;╔═════════════════════════════════════════════╗
;║ S_PL2E : War Machine (James Rhodes) Program ║
;╚═════════════════════════════════════════════╝
    
#symbol loc_8c03319e 0x8C03319E
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c04242a 0x8C04242A
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
#symbol loc_8c09f670 0x8C09F670
#symbol loc_8c09fcd8 0x8C09FCD8
#symbol loc_8c09ff28 0x8C09FF28
#symbol loc_8c0a0544 0x8C0A0544
#symbol loc_8c0a0fc4 0x8C0A0FC4
#symbol loc_8c0a1898 0x8C0A1898
#symbol loc_8c0e5fdc 0x8C0E5FDC
#symbol loc_8c103660 0x8C103660
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300c8,pc),r0
    mov 0x70,r5
    mov.l @(PTR_ce300cc,pc),r7
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
    mov.l @(PTR_ce300d0,pc),r3
    jsr @r3
    mov r4,r14
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    mov.l @(PTR_ce300d4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    mov.l @(PTR_ce300d8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    mov.l @(PTR_ce300dc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce30320
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce30366
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce302ac
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce300ec
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce30152
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce30198
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce30208
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    mov.l @(PTR_ce300e0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce303e6
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c2
    bsr FUN_ce303ac
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c2
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300e8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300c2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300c8:
    #data 0x0428
    #align4

PTR_ce300cc:
    #data PTR_ce335f4
PTR_ce300d0:
    #data loc_8c054508
PTR_ce300d4:
    #data loc_8c054b34
PTR_ce300d8:
    #data loc_8c05496c
PTR_ce300dc:
    #data loc_8c054d04
PTR_ce300e0:
    #data loc_8c054184
PTR_ce300e4:
    #data loc_8c053e00
PTR_ce300e8:
    #data loc_8c0542e0

;=============================================

FUN_ce300ec:
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
    bt LAB_ce3011c
    mov.w @(DAT_ce301e2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3012a
    mov.w @(DAT_ce301e4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3012a
    mov.w @(DAT_ce301e6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30124

LAB_ce3011c:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30124:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3012a:
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

FUN_ce30152:
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
    bf LAB_ce30170
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30170:
    mov.w @(DAT_ce301ea,pc),r5
    mov.l @(PTR_ce301f8,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x0C,r3
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

FUN_ce30198:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30204,pc),r5
    mov.w @(DAT_ce301ec,pc),r6
    mov.l @(PTR_ce301f4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301b6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301b6:
    mov.w @(DAT_ce301ec,pc),r5
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
    #data 0x0374
DAT_ce301ec:
    #data 0x037c
    #align4

PTR_ce301f0:
    #data DAT_ce33590
PTR_ce301f4:
    #data loc_8c054e58
PTR_ce301f8:
    #data loc_8c055c3a
PTR_ce301fc:
    #data loc_8c0530d8
PTR_ce30200:
    #data DAT_ce335a0
PTR_ce30204:
    #data DAT_ce335b0

;=============================================

FUN_ce30208:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.w @(DAT_ce302f2,pc),r4
    add r14,r4
    mov.b @(0x2,r4),r0
    tst r0,r0
    bf LAB_ce30258
    mov.w @(DAT_ce302f4,pc),r5
    mov 0x03,r7
    mov.l @(PTR_ce30308,pc),r2
    mov r15,r6
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30258
    mov.w @(DAT_ce302f6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce3024c
    mov.w @(DAT_ce302f8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3024c
    mov.w @(DAT_ce302fa,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30258
    mov.b @(r0,r14),r2
    add 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce3024c:
    mov.l @(PTR_ce3030c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30262

LAB_ce30258:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30262:
    mov.w @(DAT_ce302fc,pc),r0
    mov.w @(DAT_ce302fe,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce30278
    mov 0x00,r4
    mov.w @(DAT_ce30300,pc),r0
    mov 0x02,r3
    bra LAB_ce3028a
    mov.b r3,@(r0,r14)

LAB_ce30278:
    mov.w @(DAT_ce30302,pc),r1
    tst r1,r3
    bt LAB_ce30284
    mov.w @(DAT_ce30300,pc),r0
    bra LAB_ce3028a
    mov.b r4,@(r0,r14)

LAB_ce30284:
    mov.w @(DAT_ce30300,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)

LAB_ce3028a:
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30304,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30310,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302ac:
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
    bf LAB_ce302ca
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302ca:
    mov.w @(DAT_ce30306,pc),r5
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
    mov.w @(DAT_ce30304,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30310,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce302f2:
    #data 0x02a4
DAT_ce302f4:
    #data 0x0140
DAT_ce302f6:
    #data 0x01f9
DAT_ce302f8:
    #data 0x01fc
DAT_ce302fa:
    #data 0x01d4
DAT_ce302fc:
    #data 0x034a
DAT_ce302fe:
    #data 0x0800
DAT_ce30300:
    #data 0x01a3
DAT_ce30302:
    #data 0x0400
DAT_ce30304:
    #data 0x01e9
DAT_ce30306:
    #data 0x0384
    #align4

PTR_ce30308:
    #data loc_8c055cf6
PTR_ce3030c:
    #data loc_8c0559da
PTR_ce30310:
    #data loc_8c0530d8
PTR_ce30314:
    #data DAT_ce335c4
PTR_ce30318:
    #data loc_8c054e58
PTR_ce3031c:
    #data loc_8c055c3a

;=============================================

FUN_ce30320:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30430,pc),r5
    mov.w @(DAT_ce30426,pc),r6
    mov.l @(PTR_ce30434,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30340
    mov.w @(DAT_ce30428,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30348

LAB_ce30340:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30348:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3042a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30438,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30366:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3043c,pc),r5
    mov.w @(DAT_ce3042c,pc),r6
    mov.l @(PTR_ce30434,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30386
    mov.w @(DAT_ce30428,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3038e

LAB_ce30386:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3038e:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3042a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30438,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303ac:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30440,pc),r3
    jsr @r3
    mov 0x04,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce303c6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303c6:
    mov.w @(DAT_ce3042a,pc),r0
    mov 0x04,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30438,pc),r3
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

FUN_ce303e6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30444,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce303fe
    mov.w @(DAT_ce30428,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30406

LAB_ce303fe:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30406:
    mov.w @(DAT_ce3042a,pc),r0
    mov 0x08,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30438,pc),r3
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

DAT_ce30426:
    #data 0x038c
DAT_ce30428:
    #data 0x040c
DAT_ce3042a:
    #data 0x01e9
DAT_ce3042c:
    #data 0x0394
    #align4

PTR_ce30430:
    #data DAT_ce335d4
PTR_ce30434:
    #data loc_8c054e58
PTR_ce30438:
    #data loc_8c0530d8
PTR_ce3043c:
    #data DAT_ce335e4
PTR_ce30440:
    #data loc_8c054da0
PTR_ce30444:
    #data loc_8c054d1c

;=============================================

LAB_ce30448:
    sts.l PR,@-r15
    add 0xFC,r15
    bsr FUN_ce3046e
    mov.l r4,@r15
    tst r0,r0
    bf LAB_ce3045c
    bsr FUN_ce304a6
    mov.l @r15,r4
    tst r0,r0
    bt LAB_ce30464

LAB_ce3045c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce30464:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce3046e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30538,pc),r5
    mov.w @(DAT_ce30528,pc),r6
    mov.l @(PTR_ce3053c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3048e
    mov.w @(DAT_ce3052a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30496

LAB_ce3048e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30496:
    mov.w @(DAT_ce3052c,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov r3,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce304a6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30540,pc),r5
    mov.w @(DAT_ce3052e,pc),r6
    mov.l @(PTR_ce3053c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce304c6
    mov.w @(DAT_ce3052a,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce304ce

LAB_ce304c6:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce304ce:
    mov.w @(DAT_ce3052c,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce304dc:
    mov.w @(DAT_ce30532,pc),r0
    mov.w @(DAT_ce30530,pc),r5
    mov.b @(r0,r4),r3
    tst r3,r3
    bt/s LAB_ce30510
    add r4,r5
    mov.b @(0x5,r4),r0
    tst r0,r0
    bf LAB_ce30510
    mov.w @(0x4,r5),r0
    add 0xFF,r0
    mov.w r0,@(0x4,r5)
    extu.w r0,r0
    tst r0,r0
    bf LAB_ce30510
    mov.w @(DAT_ce30534,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x15,r0
    bf LAB_ce3050a
    mov 0x01,r0
    bra LAB_ce30510
    mov.w r0,@(0x4,r5)

LAB_ce3050a:
    mov.l @(PTR_ce30544,pc),r2
    jmp @r2
    nop

LAB_ce30510:
    rts
    nop

LAB_ce30514:
    mov.w @(DAT_ce30536,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30548,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30528:
    #data 0x038c
DAT_ce3052a:
    #data 0x040c
DAT_ce3052c:
    #data 0x0258
DAT_ce3052e:
    #data 0x0394
DAT_ce30530:
    #data 0x02a4
DAT_ce30532:
    #data 0x0201
DAT_ce30534:
    #data 0x01d0
DAT_ce30536:
    #data 0x01ff
    #align4

PTR_ce30538:
    #data DAT_ce335d4
PTR_ce3053c:
    #data loc_8c054e58
PTR_ce30540:
    #data DAT_ce335e4
PTR_ce30544:
    #data LAB_ce326be
PTR_ce30548:
    #data PTR_ce33664

;=============================================

LAB_ce3054c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30648,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30638,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3057a
    mov.w @(DAT_ce3063a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30572
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3082e
    mov.l @r15+,r14

LAB_ce30572:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30758
    mov.l @r15+,r14

LAB_ce3057a:
    mov.w @(DAT_ce3063a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce3058c
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30664
    mov.l @r15+,r14

LAB_ce3058c:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30594
    mov.l @r15+,r14

LAB_ce30594:
    mov.w @(DAT_ce3063c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce305b4
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce305ca
    cmp/eq 0x02,r0
    bt LAB_ce305ea
    bra LAB_ce30608
    nop

LAB_ce305b4:
    mov.w @(DAT_ce3063e,pc),r0
    mov.l @(PTR_ce3064c,pc),r3
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce30640,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30642,pc),r0
    mov.b r13,@(r0,r14)
    bra LAB_ce305e0
    mov 0x14,r5

LAB_ce305ca:
    mov.w @(DAT_ce3063e,pc),r0
    mov 0x01,r4
    mov.l @(PTR_ce30650,pc),r3
    mov 0x15,r5
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30640,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30642,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce305e0:
    mov.l @(PTR_ce30654,pc),r3
    jsr @r3
    mov r14,r4
    bra LAB_ce30608
    nop

LAB_ce305ea:
    mov.w @(DAT_ce3063e,pc),r0
    mov 0x02,r4
    mov.l @(PTR_ce30658,pc),r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce30640,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30642,pc),r0
    mov.b r4,@(r0,r14)
    mov r13,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x28,r0
    mov.w r0,@(0x1c,r14)

LAB_ce30608:
    mov.w @(DAT_ce30644,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce3065c,pc),r3
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
    mov.w @(DAT_ce3063e,pc),r0
    mov.l @(PTR_ce30660,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30638:
    #data 0x01fe
DAT_ce3063a:
    #data 0x01f9
DAT_ce3063c:
    #data 0x01e8
DAT_ce3063e:
    #data 0x0158
DAT_ce30640:
    #data 0x03f4
DAT_ce30642:
    #data 0x01a7
DAT_ce30644:
    #data 0x01ac
    #align4

PTR_ce30648:
    #data loc_8c052b4c
PTR_ce3064c:
    #data DAT_ce33548
PTR_ce30650:
    #data DAT_ce3354c
PTR_ce30654:
    #data loc_8c04223a
PTR_ce30658:
    #data DAT_ce33550
PTR_ce3065c:
    #data loc_8c2896b0
PTR_ce30660:
    #data loc_8c034e8c

;=============================================

LAB_ce30664:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce3077e,pc),r0
    mov r4,r14
    mov.w @(DAT_ce3077c,pc),r3
    add r14,r3
    mov.l r3,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3068c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce306a4
    cmp/eq 0x02,r0
    bt LAB_ce306f4
    bra LAB_ce3074e
    nop

LAB_ce3068c:
    mov.w @(DAT_ce30780,pc),r0
    mov 0x06,r3
    mov.l @(PTR_ce3078c,pc),r2
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce30782,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30784,pc),r0
    mov.b r13,@(r0,r14)
    bra LAB_ce306bc
    mov 0x14,r5

LAB_ce306a4:
    mov.w @(DAT_ce30780,pc),r0
    mov 0x01,r4
    mov 0x07,r3
    mov.l @(PTR_ce30790,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x15,r5
    mov.w @(DAT_ce30782,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30784,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce306bc:
    mov.l @(PTR_ce30794,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30786,pc),r0
    mov r14,r4
    mov.l @(PTR_ce30798,pc),r3
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
    mov.w @(DAT_ce30780,pc),r0
    mov.b @(r0,r14),r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3079c,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce306f4:
    mov.w @(DAT_ce30780,pc),r0
    mov 0x02,r4
    mov 0x08,r3
    mov.l @(PTR_ce307a0,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x35,r3
    mov.w @(DAT_ce30782,pc),r0
    mov 0x09,r5
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce30784,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFA,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30798,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce30780,pc),r0
    mov.b @(r0,r14),r6
    mov.l @(PTR_ce3079c,pc),r2
    jsr @r2
    mov r14,r4
    mov r13,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce30788,pc),r0
    mov.l @r15,r3
    mov.b r13,@r3
    mov.b @(r0,r14),r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce30788,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce3074e:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30758:
    mov.w @(DAT_ce3077e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30794,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce307a4
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce307c0
    cmp/eq 0x02,r0
    bt LAB_ce307e0
    bra LAB_ce307fc
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3077c:
    #data 0x02a4
DAT_ce3077e:
    #data 0x01e8
DAT_ce30780:
    #data 0x0158
DAT_ce30782:
    #data 0x03f4
DAT_ce30784:
    #data 0x01a7
DAT_ce30786:
    #data 0x01ac
DAT_ce30788:
    #data 0x0141
    #align4

PTR_ce3078c:
    #data DAT_ce33548
PTR_ce30790:
    #data DAT_ce3354c
PTR_ce30794:
    #data loc_8c04223a
PTR_ce30798:
    #data loc_8c2896b0
PTR_ce3079c:
    #data loc_8c034e8c
PTR_ce307a0:
    #data DAT_ce33550

;=============================================

LAB_ce307a4:
    mov.w @(DAT_ce308d2,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308d4,pc),r0
    mov.l @(PTR_ce308dc,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308d6,pc),r0
    bra LAB_ce307fc
    mov.b r13,@(r0,r14)

LAB_ce307c0:
    mov.w @(DAT_ce308d2,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce308d4,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce308e0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce308d6,pc),r0
    bra LAB_ce307fc
    mov.b r2,@(r0,r14)

LAB_ce307e0:
    mov.w @(DAT_ce308d2,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce308e4,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce308d4,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308d6,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r12
    mov r14,r4

LAB_ce307fc:
    mov.w @(DAT_ce308d8,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce308e8,pc),r3
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
    mov.w @(DAT_ce308d2,pc),r0
    mov.l @(PTR_ce308ec,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3082e:
    mov.w @(DAT_ce308da,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3084e
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3086c
    cmp/eq 0x02,r0
    bt LAB_ce30884
    bra LAB_ce308a2
    nop

LAB_ce3084e:
    mov.w @(DAT_ce308d2,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce308f0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce308d4,pc),r0
    mov.l @(PTR_ce308dc,pc),r2
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308d6,pc),r0
    bra LAB_ce308a2
    mov.b r13,@(r0,r14)

LAB_ce3086c:
    mov.w @(DAT_ce308d2,pc),r0
    mov 0x01,r4
    mov 0x0A,r3
    mov.l @(PTR_ce308e0,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce308d4,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308d6,pc),r0
    bra LAB_ce308a2
    mov.b r4,@(r0,r14)

LAB_ce30884:
    mov.w @(DAT_ce308d2,pc),r0
    mov 0x02,r4
    mov 0x0B,r3
    mov.l @(PTR_ce308e4,pc),r2
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce308d4,pc),r0
    mov.l @(PTR_ce308f0,pc),r3
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce308d6,pc),r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce308a2:
    mov.w @(DAT_ce308d8,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce308e8,pc),r3
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
    mov.w @(DAT_ce308d2,pc),r0
    mov.l @(PTR_ce308ec,pc),r2
    mov.l @r15+,r13
    mov.b @(r0,r14),r6
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308d2:
    #data 0x0158
DAT_ce308d4:
    #data 0x03f4
DAT_ce308d6:
    #data 0x01a7
DAT_ce308d8:
    #data 0x01ac
DAT_ce308da:
    #data 0x01e8
    #align4

PTR_ce308dc:
    #data DAT_ce33554
PTR_ce308e0:
    #data DAT_ce33558
PTR_ce308e4:
    #data DAT_ce3355c
PTR_ce308e8:
    #data loc_8c2896b0
PTR_ce308ec:
    #data loc_8c034e8c
PTR_ce308f0:
    #data loc_8c04223a

;=============================================

LAB_ce308f4:
    mov.w @(DAT_ce309be,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3091c
    mov.w @(DAT_ce309c0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3090c
    mov.w @(DAT_ce309c2,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce3091c

LAB_ce3090c:
    mov.w @(DAT_ce309c0,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30920
    mov.w @(DAT_ce309c2,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30920

LAB_ce3091c:
    bra LAB_ce30924
    nop

LAB_ce30920:
    rts
    nop

LAB_ce30924:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce309d0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce309c0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30940
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30a80
    mov.l @r15+,r14

LAB_ce30940:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30948
    mov.l @r15+,r14

LAB_ce30948:
    mov.w @(DAT_ce309c4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30968
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30996
    cmp/eq 0x02,r0
    bt LAB_ce309e8
    bra LAB_ce30a3e
    nop

LAB_ce30968:
    mov.w @(DAT_ce309c6,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce309d4,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce309c8,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3098a
    mov.w @(DAT_ce309ca,pc),r0
    mov.l @(PTR_ce309d8,pc),r3
    bra LAB_ce30990
    mov.l r3,@(r0,r14)

LAB_ce3098a:
    mov.w @(DAT_ce309ca,pc),r0
    mov.l @(PTR_ce309dc,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30990:
    mov.w @(DAT_ce309cc,pc),r0
    bra LAB_ce30a3e
    mov.b r13,@(r0,r14)

LAB_ce30996:
    mov.w @(DAT_ce309c6,pc),r0
    mov 0x01,r4
    mov 0x0D,r3
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x5B,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce309b2
    mov.w @(DAT_ce309ca,pc),r0
    mov.l @(PTR_ce309e0,pc),r2
    bra LAB_ce309b8
    mov.l r2,@(r0,r14)

LAB_ce309b2:
    mov.w @(DAT_ce309ca,pc),r0
    mov.l @(PTR_ce309e4,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce309b8:
    mov.w @(DAT_ce309cc,pc),r0
    bra LAB_ce30a3e
    mov.b r4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309be:
    #data 0x0201
DAT_ce309c0:
    #data 0x01fe
DAT_ce309c2:
    #data 0x01d6
DAT_ce309c4:
    #data 0x01e8
DAT_ce309c6:
    #data 0x0158
DAT_ce309c8:
    #data 0x01fc
DAT_ce309ca:
    #data 0x03f4
DAT_ce309cc:
    #data 0x01a7
    #align4

PTR_ce309d0:
    #data FUN_ce326f4
PTR_ce309d4:
    #data loc_8c04223a
PTR_ce309d8:
    #data DAT_ce33560
PTR_ce309dc:
    #data DAT_ce33578
PTR_ce309e0:
    #data DAT_ce33564
PTR_ce309e4:
    #data DAT_ce3357c

;=============================================

LAB_ce309e8:
    mov.w @(DAT_ce30adc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce309fa
    mov 0x02,r4
    mov.w @(DAT_ce30ade,pc),r0
    mov.l @(PTR_ce30af4,pc),r3
    bra LAB_ce30a00
    mov.l r3,@(r0,r14)

LAB_ce309fa:
    mov.w @(DAT_ce30ade,pc),r0
    mov.l @(PTR_ce30af8,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30a00:
    mov.w @(DAT_ce30ae0,pc),r0
    mov 0x0E,r3
    mov.b r4,@(r0,r14)
    add 0xB1,r0
    mov.b r4,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    add 0x59,r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce30ae2,pc),r3
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce30a26
    mov.w @(DAT_ce30ae4,pc),r0
    mov 0x06,r2
    mov 0x12,r1
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r1,@(r0,r14)

LAB_ce30a26:
    mov.w @(DAT_ce30ae6,pc),r0
    mov.w @(DAT_ce30ae8,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce30a3e
    mov.w @(DAT_ce30ae4,pc),r0
    mov 0x07,r3
    mov 0x13,r1
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov.b r1,@(r0,r14)

LAB_ce30a3e:
    mov.w @(DAT_ce30aea,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30afc,pc),r3
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
    mov.w @(DAT_ce30ae4,pc),r0
    mov.l @(PTR_ce30b00,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30aec,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30a78
    mov.w @(DAT_ce30aec,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30a78:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30a80:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce30aee,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov 0x01,r11
    mov.l r10,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b04,pc),r10
    extu.b r0,r0
    mov.l @(PTR_ce30b00,pc),r12
    cmp/eq 0x00,r0
    bt/s LAB_ce30aac
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30b10
    cmp/eq 0x02,r0
    bt LAB_ce30b44
    bra LAB_ce30bf6
    nop

LAB_ce30aac:
    mov 0x0C,r5
    mov 0x00,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30af0,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r3,@(r0,r14)
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce30adc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30ad0
    mov.w @(DAT_ce30ade,pc),r0
    mov.l @(PTR_ce30b08,pc),r3
    bra LAB_ce30ad6
    mov.l r3,@(r0,r14)

LAB_ce30ad0:
    mov.w @(DAT_ce30ade,pc),r0
    mov.l @(PTR_ce30b0c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30ad6:
    mov.w @(DAT_ce30ae0,pc),r0
    bra LAB_ce30bf6
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30adc:
    #data 0x01fc
DAT_ce30ade:
    #data 0x03f4
DAT_ce30ae0:
    #data 0x01a7
DAT_ce30ae2:
    #data 0x2000
DAT_ce30ae4:
    #data 0x0158
DAT_ce30ae6:
    #data 0x01fa
DAT_ce30ae8:
    #data 0x1000
DAT_ce30aea:
    #data 0x01ac
DAT_ce30aec:
    #data 0x01d6
DAT_ce30aee:
    #data 0x01e8
DAT_ce30af0:
    #data 0x01a1
    #align4

PTR_ce30af4:
    #data DAT_ce33568
PTR_ce30af8:
    #data DAT_ce33580
PTR_ce30afc:
    #data loc_8c2896b0
PTR_ce30b00:
    #data loc_8c034e8c
PTR_ce30b04:
    #data loc_8c04223a
PTR_ce30b08:
    #data DAT_ce3356c
PTR_ce30b0c:
    #data DAT_ce33584

;=============================================

LAB_ce30b10:
    mov.w @(DAT_ce30c32,pc),r0
    mov 0x0C,r5
    mov 0x01,r6
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30c34,pc),r0
    mov 0x10,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce30c36,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b38
    mov.w @(DAT_ce30c38,pc),r0
    mov.l @(PTR_ce30c4c,pc),r3
    bra LAB_ce30b3e
    mov.l r3,@(r0,r14)

LAB_ce30b38:
    mov.w @(DAT_ce30c38,pc),r0
    mov.l @(PTR_ce30c50,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b3e:
    mov.w @(DAT_ce30c3a,pc),r0
    bra LAB_ce30bf6
    mov.b r11,@(r0,r14)

LAB_ce30b44:
    mov.w @(DAT_ce30c36,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30b54
    mov.w @(DAT_ce30c38,pc),r0
    mov.l @(PTR_ce30c54,pc),r3
    bra LAB_ce30b5a
    mov.l r3,@(r0,r14)

LAB_ce30b54:
    mov.w @(DAT_ce30c38,pc),r0
    mov.l @(PTR_ce30c58,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b5a:
    mov.w @(DAT_ce30c3a,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    add 0x53,r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce30c3c,pc),r3
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce30bbe
    mova @(DAT_ce30c5c,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce30c3e,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bf LAB_ce30bbe
    mov.w @(DAT_ce30c40,pc),r0
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
    mov.w @(DAT_ce30c34,pc),r0
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
    bra LAB_ce30bf6
    mov.b r0,@(0x7,r14)

LAB_ce30bbe:
    mov r13,r0
    nop
    mov.b r0,@(0x6,r14)
    mov 0x0C,r3
    mov.w @(DAT_ce30c42,pc),r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r10
    mov r14,r4
    mov.w @(DAT_ce30c44,pc),r0
    mov.w @(DAT_ce30c46,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce30be8
    mov 0x0C,r5
    mov 0x06,r6
    jsr @r12
    mov r14,r4
    bra LAB_ce30bf2
    mov 0x14,r3

LAB_ce30be8:
    mov 0x0C,r5
    mov 0x02,r6
    jsr @r12
    mov r14,r4
    mov 0x11,r3

LAB_ce30bf2:
    mov.w @(DAT_ce30c34,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30bf6:
    mov.w @(DAT_ce30c48,pc),r0
    mov.l @(PTR_ce30c60,pc),r3
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
    mov.w @(DAT_ce30c4a,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30c24
    mov.w @(DAT_ce30c4a,pc),r0
    mov.b @(r0,r14),r1
    add 0xF0,r1
    mov.b r1,@(r0,r14)

LAB_ce30c24:
    lds.l @r15+,PR
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c32:
    #data 0x0158
DAT_ce30c34:
    #data 0x01a1
DAT_ce30c36:
    #data 0x01fc
DAT_ce30c38:
    #data 0x03f4
DAT_ce30c3a:
    #data 0x01a7
DAT_ce30c3c:
    #data 0x1000
DAT_ce30c3e:
    #data 0x041c
DAT_ce30c40:
    #data 0x0201
DAT_ce30c42:
    #data 0x0159
DAT_ce30c44:
    #data 0x01fa
DAT_ce30c46:
    #data 0x2000
DAT_ce30c48:
    #data 0x01ac
DAT_ce30c4a:
    #data 0x01d6
    #align4

PTR_ce30c4c:
    #data DAT_ce33570
PTR_ce30c50:
    #data DAT_ce33588
PTR_ce30c54:
    #data DAT_ce33574
PTR_ce30c58:
    #data DAT_ce3358c
DAT_ce30c5c:
    #data 0x43092492
PTR_ce30c60:
    #data loc_8c2896b0

;=============================================

LAB_ce30c64:
    mov.w @(DAT_ce30d60,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30d68,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30c78:
    sts.l PR,@-r15
    mov.l @(PTR_ce30d6c,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    lds.l @r15+,PR

LAB_ce30c86:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30d70,pc),r3
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
    mov.w @(DAT_ce30d62,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30cee
    mov.w @(DAT_ce30d64,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30ce6
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce31010
    mov.l @r15+,r14

LAB_ce30ce6:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30f44
    mov.l @r15+,r14

LAB_ce30cee:
    mov.w @(DAT_ce30d64,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d00
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30dfa
    mov.l @r15+,r14

LAB_ce30d00:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30d08
    mov.l @r15+,r14

LAB_ce30d08:
    mov.w @(DAT_ce30d66,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30d74,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30d1c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d78,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d36
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d7c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30d36:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30d3e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30d78,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d58
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30d7c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30d58:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d60:
    #data 0x01ff
DAT_ce30d62:
    #data 0x01fe
DAT_ce30d64:
    #data 0x01f9
DAT_ce30d66:
    #data 0x01e8
    #align4

PTR_ce30d68:
    #data PTR_ce33674
PTR_ce30d6c:
    #data loc_8c0511e2
PTR_ce30d70:
    #data loc_8c052c84
PTR_ce30d74:
    #data PTR_ce33684
PTR_ce30d78:
    #data loc_8c034dee
PTR_ce30d7c:
    #data loc_8c051648

;=============================================

LAB_ce30d80:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e88,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30e82,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30da0
    mov 0x00,r3
    mov r3,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30e8c,pc),r3
    mov 0x01,r5
    jsr @r3
    mov r14,r4

LAB_ce30da0:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce30dc0
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce30e90,pc),r3
    mov 0x00,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x14,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30dc0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30dc6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30e88,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30de0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30e94,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30de0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30de8:
    mov r4,r3
    mov.l @(PTR_ce30e98,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30dfa:
    mov.w @(DAT_ce30e84,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30e9c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30e0e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30e88,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e28
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30e94,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30e28:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30e30:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30e88,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e4a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30e94,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30e4a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30e52:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30e88,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30e82,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30e7c
    mov.b @(0x7,r14),r0
    mov 0x02,r6
    mov.l @(PTR_ce30ea0,pc),r3
    mov r14,r4
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x7,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e7c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e82:
    #data 0x0141
DAT_ce30e84:
    #data 0x01e8
    #align4

PTR_ce30e88:
    #data loc_8c034dee
PTR_ce30e8c:
    #data loc_8c0a0fc4
PTR_ce30e90:
    #data loc_8c034e8c
PTR_ce30e94:
    #data loc_8c051648
PTR_ce30e98:
    #data PTR_ce33690
PTR_ce30e9c:
    #data PTR_ce33698
PTR_ce30ea0:
    #data loc_8c0e5fdc

;=============================================

LAB_ce30ea4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fd8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce30ed6
    mov.b @(0x7,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce30fdc,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30fce,pc),r0
    mov 0x10,r2
    mov 0x00,r3
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce30ed6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30edc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30fd8,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce30f04
    mov.b @(0x7,r14),r0
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.l @r15,r3
    mov.b r2,@r3

LAB_ce30f04:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30f0c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30fd8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f26
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30fe0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30f26:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30f2e:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce30fe4,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce30fd0,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f44:
    mov.w @(DAT_ce30fd2,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30fe8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30f58:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30fd8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f72
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30fe0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30f72:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30f7a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fd8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f94
    lds.l @r15+,PR
    mov.l @(PTR_ce30fe0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f94:
    mov.w @(DAT_ce30fd4,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30fae
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x02,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce30fec,pc),r3
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce30fae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fb4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fd8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30ff0
    lds.l @r15+,PR
    mov.l @(PTR_ce30fe0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fce:
    #data 0x027a
DAT_ce30fd0:
    #data 0x02a4
DAT_ce30fd2:
    #data 0x01e8
DAT_ce30fd4:
    #data 0x0141
    #align4

PTR_ce30fd8:
    #data loc_8c034dee
PTR_ce30fdc:
    #data loc_8c09f670
PTR_ce30fe0:
    #data loc_8c051648
PTR_ce30fe4:
    #data PTR_ce336a4
PTR_ce30fe8:
    #data PTR_ce336b4
PTR_ce30fec:
    #data loc_8c0a0fc4

;=============================================

LAB_ce30ff0:
    mov.w @(DAT_ce310fa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3100a
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x04,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce31100,pc),r3
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3100a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31010:
    mov.w @(DAT_ce310fc,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31104,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31024:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31108,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3103e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3110c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3103e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31046:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31108,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31060
    lds.l @r15+,PR
    mov.l @(PTR_ce3110c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31060:
    mov.w @(DAT_ce310fa,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce3107e
    mov.w @(DAT_ce310fa,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce31100,pc),r1
    mov r6,r5
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce3107e:
    mov.w @(DAT_ce310fa,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce310ba
    mov.w @(DAT_ce310fa,pc),r0
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce31110,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31114,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce310fe,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce310ba
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce310ba:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310c0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31108,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310da
    lds.l @r15+,PR
    mov.l @(PTR_ce3110c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce310da:
    mov.w @(DAT_ce310fa,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce310f4
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x05,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce31100,pc),r3
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce310f4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce310fa:
    #data 0x0141
DAT_ce310fc:
    #data 0x01e8
DAT_ce310fe:
    #data 0x01d2
    #align4

PTR_ce31100:
    #data loc_8c0a0fc4
PTR_ce31104:
    #data PTR_ce336c0
PTR_ce31108:
    #data loc_8c034dee
PTR_ce3110c:
    #data loc_8c051648
DAT_ce31110:
    #data 0xc0d55555
DAT_ce31114:
    #data 0x3ed55555

;=============================================

LAB_ce31118:
    mov.w @(DAT_ce31218,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31132
    mov.l @(PTR_ce31220,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31224,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31132:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14

LAB_ce31138:
    mov.w @(DAT_ce31218,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31152
    mov.l @(PTR_ce31228,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3118a

LAB_ce31152:
    mov.l @(PTR_ce3122c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31230,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3121a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31170
    bsr FUN_ce3126e
    mov r14,r4
    bra LAB_ce31174
    nop

LAB_ce31170:
    bsr FUN_ce31190
    mov r14,r4

LAB_ce31174:
    mov.l @(PTR_ce31234,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3118a
    lds.l @r15+,PR
    mov.l @(PTR_ce31238,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3118a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31190:
    mov.w @(DAT_ce3121c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce3123c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce311a4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31240,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311be
    lds.l @r15+,PR
    mov.l @(PTR_ce31244,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce311be:
    mov.w @(DAT_ce3121e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce311d8
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x06,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce31248,pc),r3
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce311d8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce311de:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31240,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce311f8
    lds.l @r15+,PR
    mov.l @(PTR_ce31244,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce311f8:
    mov.w @(DAT_ce3121e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31212
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x03,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce31248,pc),r3
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31212:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31218:
    #data 0x0201
DAT_ce3121a:
    #data 0x01fe
DAT_ce3121c:
    #data 0x01e8
DAT_ce3121e:
    #data 0x0141
    #align4

PTR_ce31220:
    #data loc_8c050084
PTR_ce31224:
    #data loc_8c04ff88
PTR_ce31228:
    #data loc_8c054184
PTR_ce3122c:
    #data loc_8c04fea8
PTR_ce31230:
    #data loc_8c050048
PTR_ce31234:
    #data loc_8c052ce2
PTR_ce31238:
    #data loc_8c052dac
PTR_ce3123c:
    #data PTR_ce336cc
PTR_ce31240:
    #data loc_8c034dee
PTR_ce31244:
    #data loc_8c05176e
PTR_ce31248:
    #data loc_8c0a0fc4

;=============================================

LAB_ce3124c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31348,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31266
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3134c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31266:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce3126e:
    mov.w @(DAT_ce31340,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31350,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31282:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31348,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3129c
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3134c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3129c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce312a4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31348,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312be
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3134c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce312be:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce312c6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31348,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce312e0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3134c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce312e0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce312e8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31348,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31342,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3133a
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce31354,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31358,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3135c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31344,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3133a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3133a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31340:
    #data 0x01e8
DAT_ce31342:
    #data 0x0141
DAT_ce31344:
    #data 0x0130
    #align4

PTR_ce31348:
    #data loc_8c034dee
PTR_ce3134c:
    #data loc_8c05176e
PTR_ce31350:
    #data PTR_ce336d8
DAT_ce31354:
    #data 0xc0555555
DAT_ce31358:
    #data 0xc0092492
DAT_ce3135c:
    #data 0xbe892492

;=============================================

LAB_ce31360:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31428,pc),r3
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
    mov.w @(DAT_ce31424,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce313f4
    mov.b @(0x7,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce3142c,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce31430,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31434,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31438,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3143c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31426,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce313f4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce313f4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce313fa:
    mov.l @(PTR_ce31428,pc),r3
    jmp @r3
    nop

LAB_ce31400:
    mov r4,r3
    mov.l @(PTR_ce31440,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31412:
    mov r4,r3
    mov.l @(PTR_ce31444,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31424:
    #data 0x019e
DAT_ce31426:
    #data 0x0130
    #align4

PTR_ce31428:
    #data loc_8c034dee
PTR_ce3142c:
    #data loc_8c034e8c
DAT_ce31430:
    #data 0x40d55555
DAT_ce31434:
    #data 0xbd555555
DAT_ce31438:
    #data 0x414db6db
DAT_ce3143c:
    #data 0xbf4db6db
PTR_ce31440:
    #data PTR_ce336e4
PTR_ce31444:
    #data PTR_ce336f0

;=============================================

LAB_ce31448:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce314a6
    mov 0x00,r13
    mov.l @(PTR_ce31584,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce31588,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31578,pc),r0
    mov 0x14,r5
    mov.l @(PTR_ce3158c,pc),r3
    mov 0x06,r6
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3157a,pc),r0
    mov 0x1C,r2
    mov.l @(PTR_ce31590,pc),r3
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
    mov.l @(PTR_ce31594,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce314a6:
    mov.w @(DAT_ce3157c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce314b6
    mov.l @(PTR_ce31598,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce314b6:
    mov 0x5C,r1
    mov.l @(PTR_ce3159c,pc),r3
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
    mov.l @(PTR_ce315a0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3150c
    lds.l @r15+,PR
    mov.l @(PTR_ce315a4,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3150c:
    mov.w @(DAT_ce3157e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31526
    mov.b r13,@(r0,r14)
    mov 0x04,r6
    lds.l @r15+,PR
    mov.l @(PTR_ce315a8,pc),r3
    mov 0x01,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31526:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3152e:
    mov r4,r3
    mov.l @(PTR_ce315ac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31540:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce315a0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3157e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce315c0
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
    mov.w @(DAT_ce31580,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce315b4
    mova @(DAT_ce315b0,pc),r0
    bra LAB_ce315b8
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31578:
    #data 0x01f9
DAT_ce3157a:
    #data 0x01a1
DAT_ce3157c:
    #data 0x01ff
DAT_ce3157e:
    #data 0x0141
DAT_ce31580:
    #data 0x01d2
    #align4

PTR_ce31584:
    #data loc_8c052b4c
PTR_ce31588:
    #data loc_8c056de4
PTR_ce3158c:
    #data loc_8c034e8c
PTR_ce31590:
    #data loc_8c2896b0
PTR_ce31594:
    #data loc_8c04223a
PTR_ce31598:
    #data loc_8c0511e2
PTR_ce3159c:
    #data loc_8c052c84
PTR_ce315a0:
    #data loc_8c034dee
PTR_ce315a4:
    #data loc_8c051648
PTR_ce315a8:
    #data loc_8c0a0fc4
PTR_ce315ac:
    #data PTR_ce336f8
DAT_ce315b0:
    #data 0x41555555

;=============================================

LAB_ce315b4:
    mova @(DAT_ce316e4,pc),r0
    fmov.s @r0,fr3

LAB_ce315b8:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)

LAB_ce315c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce315c6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce316e8,pc),r3
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
    bf LAB_ce31622
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce316de,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3160c
    mova @(DAT_ce316ec,pc),r0
    bra LAB_ce31610
    fmov.s @r0,fr3

LAB_ce3160c:
    mova @(DAT_ce316f0,pc),r0
    fmov.s @r0,fr3

LAB_ce31610:
    mov 0x02,r6
    mov.l @(PTR_ce316f4,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mov r6,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31622:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31628:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce316e8,pc),r3
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
    bt LAB_ce3167c
    lds.l @r15+,PR
    mov.l @(PTR_ce316f8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3167c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31682:
    mov r4,r3
    mov.l @(PTR_ce316fc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31694:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce316e8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce316e0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce316d8
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
    mov.w @(DAT_ce316de,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce316cc
    mova @(DAT_ce316e4,pc),r0
    bra LAB_ce316d0
    fmov.s @r0,fr3

LAB_ce316cc:
    mova @(DAT_ce31700,pc),r0
    fmov.s @r0,fr3

LAB_ce316d0:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov 0x14,r0
    mov.w r0,@(0x1c,r14)

LAB_ce316d8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce316de:
    #data 0x01d2
DAT_ce316e0:
    #data 0x0141
    #align4

DAT_ce316e4:
    #data 0xc1555555
PTR_ce316e8:
    #data loc_8c034dee
DAT_ce316ec:
    #data 0xbed55555
DAT_ce316f0:
    #data 0x3ed55555
PTR_ce316f4:
    #data loc_8c034e8c
PTR_ce316f8:
    #data loc_8c051648
PTR_ce316fc:
    #data PTR_ce33704
DAT_ce31700:
    #data 0x41555555

;=============================================

LAB_ce31704:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31828,pc),r3
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
    bf LAB_ce31760
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31820,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3174a
    mova @(DAT_ce3182c,pc),r0
    bra LAB_ce3174e
    fmov.s @r0,fr3

LAB_ce3174a:
    mova @(DAT_ce31830,pc),r0
    fmov.s @r0,fr3

LAB_ce3174e:
    mov.l @(PTR_ce31834,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov 0x03,r6
    mov 0x02,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31760:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31766:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31828,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31780
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31838,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31780:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31788:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r3
    mov.w @(DAT_ce31822,pc),r4
    mov.l @(DAT_ce3183c,pc),r1
    mov 0x12,r5
    add r14,r4
    lds r1,FPUL
    mov 0x00,r6
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    fsts FPUL,fr3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31824,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x1,r4)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    mov.l @(PTR_ce31834,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31840,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31844,pc),r2
    mov 0x22,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce317ce:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31828,pc),r3
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
    mov.w @(DAT_ce31826,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce3181a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31826,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31848,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)

LAB_ce3181a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31820:
    #data 0x01d2
DAT_ce31822:
    #data 0x02a4
DAT_ce31824:
    #data 0x012c
DAT_ce31826:
    #data 0x041c
    #align4

PTR_ce31828:
    #data loc_8c034dee
DAT_ce3182c:
    #data 0x3ed55555
DAT_ce31830:
    #data 0xbed55555
PTR_ce31834:
    #data loc_8c034e8c
PTR_ce31838:
    #data loc_8c051648
DAT_ce3183c:
    #data 0x43f00000
DAT_ce31840:
    #data 0xc1092492
PTR_ce31844:
    #data loc_8c042008
DAT_ce31848:
    #data 0xc0892492

;=============================================

LAB_ce3184c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce319b4,pc),r3
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
    bf LAB_ce318a8
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    mov.l @(PTR_ce319b8,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce319b0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce319bc,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce318a8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce318ae:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce319b4,pc),r3
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
    bf LAB_ce31900
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce319b8,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x12,r5
    mov.w @(DAT_ce319b0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x08,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31900:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31906:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce319b4,pc),r3
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
    bf LAB_ce31958
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce319b8,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x12,r5
    mov.w @(DAT_ce319b0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31958:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3195e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce319b4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce319aa
    mov.b @(0x6,r14),r0
    mov 0x12,r5
    mov.l @(PTR_ce319b8,pc),r3
    mov 0x09,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce319b0,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce319c0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce319c4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce319bc,pc),r2
    mov 0x00,r6
    mov r6,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce319aa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319b0:
    #data 0x041c
    #align4

PTR_ce319b4:
    #data loc_8c034dee
PTR_ce319b8:
    #data loc_8c034e8c
PTR_ce319bc:
    #data loc_8c0e5fdc
DAT_ce319c0:
    #data 0x41892492
DAT_ce319c4:
    #data 0xbf892492

;=============================================

LAB_ce319c8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31afc,pc),r3
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
    mov.w @(DAT_ce31af6,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bt LAB_ce31a18
    mov.l @(PTR_ce31b00,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31af6,pc),r0
    mov r14,r4
    mov.l @(PTR_ce31b04,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a18:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31a1e:
    mov r4,r3
    mov.l @(PTR_ce31b08,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31a30:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b0c,pc),r3
    jsr @r3
    mov r4,r14
    tst 0x01,r0
    bf LAB_ce31a46
    mov.w @(DAT_ce31af8,pc),r0
    mov 0x00,r3
    bra LAB_ce31a4c
    mov.b r3,@(r0,r14)

LAB_ce31a46:
    mov.w @(DAT_ce31af8,pc),r0
    mov 0x01,r1
    mov.b r1,@(r0,r14)

LAB_ce31a4c:
    mov.w @(DAT_ce31af8,pc),r0
    mov 0x13,r5
    mov.l @(PTR_ce31b10,pc),r3
    mov.b @(r0,r14),r6
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31a64:
    mov.l @(PTR_ce31afc,pc),r3
    jmp @r3
    nop

LAB_ce31a6a:
    mov r4,r3
    mov.l @(PTR_ce31b14,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31a7c:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31a90
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce31b10,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31a90:
    mov.l @(PTR_ce31afc,pc),r3
    jmp @r3
    nop

LAB_ce31a96:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31aaa
    mov.b @(0x6,r4),r0
    mov 0x00,r6
    mov.l @(PTR_ce31b10,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31aaa:
    mov.l @(PTR_ce31afc,pc),r3
    jmp @r3
    nop

LAB_ce31ab0:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bf LAB_ce31ac4
    mov.b @(0x6,r4),r0
    mov 0x02,r6
    mov.l @(PTR_ce31b10,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    jmp @r3
    mov 0x13,r5

LAB_ce31ac4:
    mov.l @(PTR_ce31afc,pc),r3
    jmp @r3
    nop

LAB_ce31aca:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b18,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31ae2
    lds.l @r15+,PR
    mov.l @(PTR_ce31b1c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ae2:
    mov 0x20,r0
    mov r14,r4
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31b20,pc),r0
    extu.b r3,r3
    lds.l @r15+,PR
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31af6:
    #data 0x041c
DAT_ce31af8:
    #data 0x0158
    #align4

PTR_ce31afc:
    #data loc_8c034dee
PTR_ce31b00:
    #data loc_8c04242a
PTR_ce31b04:
    #data loc_8c0511b4
PTR_ce31b08:
    #data PTR_ce33710
PTR_ce31b0c:
    #data loc_8c03319e
PTR_ce31b10:
    #data loc_8c034e8c
PTR_ce31b14:
    #data PTR_ce3372c
PTR_ce31b18:
    #data loc_8c046c8a
PTR_ce31b1c:
    #data loc_8c051648
PTR_ce31b20:
    #data PTR_ce33734

;=============================================

LAB_ce31b24:
    mov.b @(0x6,r4),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce31c2e,pc),r0
    mov.b r3,@(r0,r4)
    mova @(DAT_ce31c34,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31c30,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31b48
    mov 0x5C,r0
    fmov.s @(r0,r4),fr3
    fneg fr3
    fmov fr3,@(r0,r4)

LAB_ce31b48:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31c38,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x3F,r3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31c3c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r5
    fmov fr3,@(r0,r4)
    mov 0x01,r6
    mov.w @(DAT_ce31c32,pc),r0
    mov.b r3,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l @(PTR_ce31c40,pc),r3
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce31c44,pc),r2
    jmp @r2
    mov 0x14,r5

LAB_ce31b8c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31c48,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce31c4c,pc),r3
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
    bt LAB_ce31bf4
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce31c44,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31c50,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31bf4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31bfa:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31c48,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31c14
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31c54,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31c14:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31c1c:
    mov r4,r3
    mov.l @(PTR_ce31c58,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c2e:
    #data 0x01f9
DAT_ce31c30:
    #data 0x01d2
DAT_ce31c32:
    #data 0x01a1
    #align4

DAT_ce31c34:
    #data 0xc1f00000
DAT_ce31c38:
    #data 0xbe892492
DAT_ce31c3c:
    #data 0xbf4db6db
PTR_ce31c40:
    #data loc_8c2896b0
PTR_ce31c44:
    #data loc_8c034e8c
PTR_ce31c48:
    #data loc_8c034dee
PTR_ce31c4c:
    #data loc_8c052ce2
PTR_ce31c50:
    #data loc_8c0511b4
PTR_ce31c54:
    #data loc_8c051854
PTR_ce31c58:
    #data PTR_ce33748

;=============================================

LAB_ce31c5c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    mov.l r12,@-r15
    mov 0x05,r5
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31da8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31dac,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31db0,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31db4,pc),r2
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
    mov 0x00,r12
    mov.w @(DAT_ce31d9a,pc),r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce31d9c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31d9e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31cb6
    bra LAB_ce31cb8
    mov 0x03,r0

LAB_ce31cb6:
    mov 0x05,r0

LAB_ce31cb8:
    mov.b r0,@(0x8,r13)
    mov 0x44,r3
    mov.w @(DAT_ce31da0,pc),r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31db8,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31d9e,pc),r0
    mov.l @(PTR_ce31dbc,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31da2,pc),r0
    mov r13,r5
    mov r14,r4
    mov.b @(r0,r14),r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce31da2,pc),r0
    mov.b r12,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31d00:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31dc0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31da2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31d2a
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x10,r3
    mov.w @(DAT_ce31da4,pc),r0
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce31d2a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31d30:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31dc0,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0x8,r2),r0
    tst r0,r0
    bt LAB_ce31d6c
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31d6c
    mov.l @(PTR_ce31dc4,pc),r3
    mov 0x03,r0
    mov 0x02,r5
    mov.w r0,@(0x1c,r14)
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0x8,r2),r0
    add 0xFF,r0
    mov.b r0,@(0x8,r2)

LAB_ce31d6c:
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31d92
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31d9e,pc),r0
    mov.b @(r0,r14),r6
    add 0x02,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31dbc,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d92:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d9a:
    #data 0x01f9
DAT_ce31d9c:
    #data 0x041c
DAT_ce31d9e:
    #data 0x01a3
DAT_ce31da0:
    #data 0x01a1
DAT_ce31da2:
    #data 0x0141
DAT_ce31da4:
    #data 0x027a
    #align4

PTR_ce31da8:
    #data loc_8c056de4
PTR_ce31dac:
    #data loc_8c05218a
PTR_ce31db0:
    #data loc_8c035162
PTR_ce31db4:
    #data loc_8c05115a
PTR_ce31db8:
    #data loc_8c2896b0
PTR_ce31dbc:
    #data loc_8c034e8c
PTR_ce31dc0:
    #data loc_8c034dee
PTR_ce31dc4:
    #data loc_8c0a0fc4

;=============================================

LAB_ce31dc8:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31ed4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31de2
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31ed8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31de2:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31dea:
    mov r4,r3
    mov.l @(PTR_ce31edc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31dfc:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    mov.l r12,@-r15
    mov 0x05,r5
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce31ee0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31ee4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31ee8,pc),r3
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
    mova @(DAT_ce31eec,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ecc,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31e4a
    bra LAB_ce31e4c
    mov 0x03,r0

LAB_ce31e4a:
    mov 0x05,r0

LAB_ce31e4c:
    mov.b r0,@(0x8,r13)
    mov 0x44,r3
    mov.w @(DAT_ce31ece,pc),r0
    mov 0x00,r12
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce31ef0,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce31ecc,pc),r0
    mov.l @(PTR_ce31ef4,pc),r2
    mov.b @(r0,r14),r6
    add 0x04,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31ed0,pc),r0
    mov r13,r5
    mov r14,r4
    mov.b @(r0,r14),r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce31ed0,pc),r0
    mov.b r12,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce31e98:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31f96
    mov r4,r14
    mov.l @(PTR_ce31ed4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31ed0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31ec6
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x10,r3
    mov.w @(DAT_ce31ed2,pc),r0
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce31ec6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ecc:
    #data 0x01a3
DAT_ce31ece:
    #data 0x01a1
DAT_ce31ed0:
    #data 0x0141
DAT_ce31ed2:
    #data 0x027a
    #align4

PTR_ce31ed4:
    #data loc_8c034dee
PTR_ce31ed8:
    #data loc_8c051648
PTR_ce31edc:
    #data PTR_ce33754
PTR_ce31ee0:
    #data loc_8c056de4
PTR_ce31ee4:
    #data loc_8c05218a
PTR_ce31ee8:
    #data loc_8c035162
DAT_ce31eec:
    #data 0xc0092492
PTR_ce31ef0:
    #data loc_8c2896b0
PTR_ce31ef4:
    #data loc_8c034e8c

;=============================================

LAB_ce31ef8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31f96
    mov r5,r13
    mov.l @(PTR_ce31ffc,pc),r2
    jsr @r2
    mov r14,r4
    mov.b @(0x8,r13),r0
    tst r0,r0
    bt LAB_ce31f32
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31f32
    mov.l @(PTR_ce32000,pc),r3
    mov 0x03,r0
    mov 0x02,r5
    mov.w r0,@(0x1c,r14)
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    mov.b @(0x8,r13),r0
    add 0xFF,r0
    mov.b r0,@(0x8,r13)

LAB_ce31f32:
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31f58
    mov.b @(0x7,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce32004,pc),r3
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    mov.w @(DAT_ce31ff2,pc),r0
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    add 0x06,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f58:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce31f60:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31f96
    mov r4,r14
    mov.l @(PTR_ce31ffc,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31f7e
    lds.l @r15+,PR
    mov.l @(PTR_ce32008,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31f7e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31f84:
    mov r4,r3
    mov.l @(PTR_ce3200c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce31f96:
    mov.w @(DAT_ce31ff4,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce31fba
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

LAB_ce31fba:
    mov 0x38,r0
    fmov.s @(r0,r4),fr3
    mov.w @(DAT_ce31ff6,pc),r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31fcc
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)

LAB_ce31fcc:
    rts
    nop

LAB_ce31fd0:
    mov.w @(DAT_ce31ff8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31fe2
    mov 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31fe2:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32010,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ff2:
    #data 0x01a3
DAT_ce31ff4:
    #data 0x0201
DAT_ce31ff6:
    #data 0x041c
DAT_ce31ff8:
    #data 0x01f9
    #align4

PTR_ce31ffc:
    #data loc_8c034dee
PTR_ce32000:
    #data loc_8c0a0fc4
PTR_ce32004:
    #data loc_8c034e8c
PTR_ce32008:
    #data loc_8c05176e
PTR_ce3200c:
    #data PTR_ce33764
PTR_ce32010:
    #data PTR_ce33774

;=============================================

LAB_ce32014:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    mov.l r12,@-r15
    mov 0x05,r5
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32164,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32168,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3216c,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32170,pc),r2
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
    mov 0x01,r3
    mov.w @(DAT_ce32156,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32158,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3215a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3206e
    bra LAB_ce32070
    mov 0x03,r0

LAB_ce3206e:
    mov 0x05,r0

LAB_ce32070:
    mov.b r0,@(0x8,r13)
    mov 0x44,r3
    mov.w @(DAT_ce3215c,pc),r0
    mov 0x00,r12
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32174,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce3215a,pc),r0
    mov.l @(PTR_ce32178,pc),r2
    mov.b @(r0,r14),r6
    add 0x08,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3215e,pc),r0
    mov r13,r5
    mov r14,r4
    mov.b @(r0,r14),r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce3215e,pc),r0
    mov.b r12,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce320bc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3217c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3215e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce320e6
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)
    mov 0x10,r3
    mov.w @(DAT_ce32160,pc),r0
    mov.b r3,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce320e6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce320ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3217c,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0x8,r2),r0
    tst r0,r0
    bt LAB_ce32128
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32128
    mov 0x02,r6
    mov.l @(PTR_ce32180,pc),r3
    mov 0x03,r0
    mov r6,r5
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov.b @(0x8,r2),r0
    add 0xFF,r0
    mov.b r0,@(0x8,r2)

LAB_ce32128:
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3214e
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3215a,pc),r0
    mov.b @(r0,r14),r6
    add 0x0A,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32178,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3214e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32156:
    #data 0x01f9
DAT_ce32158:
    #data 0x041c
DAT_ce3215a:
    #data 0x01a3
DAT_ce3215c:
    #data 0x01a1
DAT_ce3215e:
    #data 0x0141
DAT_ce32160:
    #data 0x027a
    #align4

PTR_ce32164:
    #data loc_8c056de4
PTR_ce32168:
    #data loc_8c05218a
PTR_ce3216c:
    #data loc_8c035162
PTR_ce32170:
    #data loc_8c05115a
PTR_ce32174:
    #data loc_8c2896b0
PTR_ce32178:
    #data loc_8c034e8c
PTR_ce3217c:
    #data loc_8c034dee
PTR_ce32180:
    #data loc_8c0a0fc4

;=============================================

LAB_ce32184:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce322c4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3219e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce322c8,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3219e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce321a6:
    mov r4,r3
    mov.l @(PTR_ce322cc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce321b8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce322d0,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce322d4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce322d8,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce322dc,pc),r2
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
    mov.w @(DAT_ce322ba,pc),r0
    mov 0x3C,r3
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce322bc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce322be,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce322e0,pc),r3
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
    mov.w @(DAT_ce322c0,pc),r0
    mov.l @(PTR_ce322e4,pc),r2
    mov.b @(r0,r14),r6
    add 0x0C,r6
    jsr @r2
    mov r14,r4
    mov 0x04,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce322c0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32248
    bra LAB_ce3224a
    mov 0x08,r0

LAB_ce32248:
    mov 0x0C,r0

LAB_ce3224a:
    mov.w r0,@(0x1e,r14)
    mov 0x21,r0
    mov r14,r4
    mov.b r13,@(r0,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce3225c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce322c4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32280
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce322e4,pc),r3
    mov 0x0E,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32280:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32286:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce322c4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32306
    mov 0x21,r0
    mov.l @(PTR_ce322e8,pc),r2
    mov.b @(r0,r14),r6
    mov 0x00,r5
    add 0x01,r6
    mov.b r6,@(r0,r14)
    add 0xFF,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce322c0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce322ec
    bra LAB_ce322ee
    mov 0x08,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce322ba:
    #data 0x01f9
DAT_ce322bc:
    #data 0x041c
DAT_ce322be:
    #data 0x01a1
DAT_ce322c0:
    #data 0x01a3
    #align4

PTR_ce322c4:
    #data loc_8c034dee
PTR_ce322c8:
    #data loc_8c051648
PTR_ce322cc:
    #data PTR_ce3377c
PTR_ce322d0:
    #data loc_8c056de4
PTR_ce322d4:
    #data loc_8c05218a
PTR_ce322d8:
    #data loc_8c035162
PTR_ce322dc:
    #data loc_8c05115a
PTR_ce322e0:
    #data loc_8c2896b0
PTR_ce322e4:
    #data loc_8c034e8c
PTR_ce322e8:
    #data loc_8c09fcd8

;=============================================

LAB_ce322ec:
    mov 0x0C,r0

LAB_ce322ee:
    mov.w r0,@(0x1e,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32306
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x28,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32306:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3230c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32440,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32336
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32444,pc),r3
    mov 0x0F,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32336:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3233c:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32440,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32356
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32448,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32356:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3235e:
    mov r4,r3
    mov.l @(PTR_ce3244c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32370:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32450,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32454,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32458,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3245c,pc),r2
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
    mov.w @(DAT_ce32438,pc),r0
    mov 0x32,r3
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3243a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3243c,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32460,pc),r3
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
    mov.l @(PTR_ce32444,pc),r2
    mov 0x10,r6
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce323f4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32440,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3240e
    lds.l @r15+,PR
    mov.l @(PTR_ce32448,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3240e:
    mov.w @(DAT_ce3243e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32432
    mov 0x00,r3
    mov r3,r5
    mov r3,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32464,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32464,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x00,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32432:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32438:
    #data 0x01f9
DAT_ce3243a:
    #data 0x041c
DAT_ce3243c:
    #data 0x01a1
DAT_ce3243e:
    #data 0x0141
    #align4

PTR_ce32440:
    #data loc_8c034dee
PTR_ce32444:
    #data loc_8c034e8c
PTR_ce32448:
    #data loc_8c051648
PTR_ce3244c:
    #data PTR_ce3378c
PTR_ce32450:
    #data loc_8c056de4
PTR_ce32454:
    #data loc_8c05218a
PTR_ce32458:
    #data loc_8c035162
PTR_ce3245c:
    #data loc_8c05115a
PTR_ce32460:
    #data loc_8c2896b0
PTR_ce32464:
    #data loc_8c09ff28

;=============================================

LAB_ce32468:
    mov r4,r3
    mov.l @(PTR_ce325bc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3247a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce325c0,pc),r3
    mov.l r5,@r15
    mov 0x05,r5
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce325c4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce325c8,pc),r3
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
    mov.w @(DAT_ce325b4,pc),r0
    mov 0x00,r4
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce325cc,pc),r3
    mov 0x11,r6
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce325d0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce324ec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce325d4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32506
    lds.l @r15+,PR
    mov.l @(PTR_ce325d8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32506:
    mov.w @(DAT_ce325b6,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce3252e
    mov.w @(DAT_ce325b6,pc),r0
    mov 0x06,r5
    mov.l @(PTR_ce325dc,pc),r1
    mov 0x00,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    mov.l @(PTR_ce325dc,pc),r3
    mov 0x06,r5
    mov 0x01,r6
    jsr @r3
    mov r14,r4

LAB_ce3252e:
    mov.w @(DAT_ce325b6,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce3255a
    mov.w @(DAT_ce325b6,pc),r0
    mov 0x00,r6
    mov.l @(PTR_ce325e0,pc),r1
    mov r6,r5
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce325e0,pc),r3
    mov r14,r4
    mov 0x01,r6
    mov 0x00,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3255a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32560:
    mov r4,r3
    mov.l @(PTR_ce325e4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32572:
    mov.w @(DAT_ce325b8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce32584
    mov 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce32584:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce325e8,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32594:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce325ba,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce325ec
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce326be
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325b4:
    #data 0x01a1
DAT_ce325b6:
    #data 0x0141
DAT_ce325b8:
    #data 0x01f9
DAT_ce325ba:
    #data 0x0201
    #align4

PTR_ce325bc:
    #data PTR_ce337a0
PTR_ce325c0:
    #data loc_8c056de4
PTR_ce325c4:
    #data loc_8c05218a
PTR_ce325c8:
    #data loc_8c035162
PTR_ce325cc:
    #data loc_8c2896b0
PTR_ce325d0:
    #data loc_8c034e8c
PTR_ce325d4:
    #data loc_8c034dee
PTR_ce325d8:
    #data loc_8c05176e
PTR_ce325dc:
    #data loc_8c0e5fdc
PTR_ce325e0:
    #data loc_8c09ff28
PTR_ce325e4:
    #data PTR_ce337a8
PTR_ce325e8:
    #data PTR_ce337b0

;=============================================

LAB_ce325ec:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32740,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32744,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32738,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32610
    mov.l @(PTR_ce32748,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32610:
    mov.w @(DAT_ce3273a,pc),r0
    mov 0x01,r3
    mov 0x00,r13
    fldi0 fr4
    mov.b r3,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce3273c,pc),r0
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
    mova @(DAT_ce3274c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce32754,pc),r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32750,pc),r0
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
    bra LAB_ce32662
    mov.l @r15+,r14

LAB_ce32662:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r1
    mov.l @(PTR_ce32758,pc),r3
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
    bt LAB_ce326b8
    mov.l @(PTR_ce3275c,pc),r3
    mov 0x03,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3275c,pc),r2
    mov 0x07,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce32760,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce326b8:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce326be:
    mov.w @(DAT_ce3273a,pc),r0
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
    mova @(DAT_ce32764,pc),r0
    mov.l @(PTR_ce32768,pc),r3
    fmov.s @r0,fr3
    mov 0x6C,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce326e2:
    mov r4,r3
    mov.l @(PTR_ce3276c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce326f4:
    mov.w @(DAT_ce3273e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x1A,r0
    bf LAB_ce3278e
    mov.l @(PTR_ce32740,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3273a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32774
    mova @(DAT_ce32770,pc),r0
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
    bra LAB_ce3278e
    fmov fr2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32738:
    #data 0x01f9
DAT_ce3273a:
    #data 0x0201
DAT_ce3273c:
    #data 0x01e0
DAT_ce3273e:
    #data 0x0159
    #align4

PTR_ce32740:
    #data loc_8c05218a
PTR_ce32744:
    #data loc_8c035162
PTR_ce32748:
    #data loc_8c05115a
DAT_ce3274c:
    #data 0x414db6db
DAT_ce32750:
    #data 0xbe892492
PTR_ce32754:
    #data loc_8c034e8c
PTR_ce32758:
    #data loc_8c034dee
PTR_ce3275c:
    #data loc_8c0e5fdc
PTR_ce32760:
    #data loc_8c051648
DAT_ce32764:
    #data 0xbf4db6db
PTR_ce32768:
    #data loc_8c05176e
PTR_ce3276c:
    #data PTR_ce337b8
DAT_ce32770:
    #data 0x41000000

;=============================================

LAB_ce32774:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce328c4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce3278e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32794:
    mov.w @(DAT_ce328ae,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce327b6
    mov r5,r13
    mov.w @(DAT_ce328b2,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce328b0,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce327b6:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce328c8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce328cc,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce328d0,pc),r3
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
    mov.w @(DAT_ce328b4,pc),r0
    mov.b r12,@(r0,r14)
    mov.w @(DAT_ce328b6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov r12,r0
    nop
    mov.b r0,@(0x3,r13)
    mov 0x3D,r3
    mov.b r0,@(0x6,r13)
    mov 0x16,r5
    mov.w @(DAT_ce328b8,pc),r0
    mov r12,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r12,@(r0,r14)
    add 0xF2,r0
    mov.b r12,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce328d4,pc),r3
    mov.l r12,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce328d8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    mov.l @r15+,r14

LAB_ce32832:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce328ba,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce328bc,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce328ae,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32856
    bra LAB_ce32858
    mov 0x02,r3

LAB_ce32856:
    mov 0x00,r3

LAB_ce32858:
    mov.w @(DAT_ce328be,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce328dc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce328c0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32888
    mov 0x00,r3
    mov r3,r5
    mov r3,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce328e0,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce32888
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce328e4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32888:
    mov.l @r15,r2
    mov.b @(0x3,r2),r0
    tst r0,r0
    bt LAB_ce328a6
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov r14,r4
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce328d8,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce328a6:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328ae:
    #data 0x0255
DAT_ce328b0:
    #data 0x00ff
DAT_ce328b2:
    #data 0x03f0
DAT_ce328b4:
    #data 0x01f9
DAT_ce328b6:
    #data 0x041c
DAT_ce328b8:
    #data 0x01a1
DAT_ce328ba:
    #data 0x03f8
DAT_ce328bc:
    #data 0x0328
DAT_ce328be:
    #data 0x03f1
DAT_ce328c0:
    #data 0x0141
    #align4

DAT_ce328c4:
    #data 0xbf4db6db
PTR_ce328c8:
    #data loc_8c05218a
PTR_ce328cc:
    #data loc_8c035162
PTR_ce328d0:
    #data loc_8c05115a
PTR_ce328d4:
    #data loc_8c2896b0
PTR_ce328d8:
    #data loc_8c034e8c
PTR_ce328dc:
    #data loc_8c034dee
PTR_ce328e0:
    #data loc_8c0a0544
PTR_ce328e4:
    #data loc_8c051648

;=============================================

LAB_ce328e8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32a12,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32a14,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32a16,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3290c
    bra LAB_ce3290e
    mov 0x02,r3

LAB_ce3290c:
    mov 0x00,r3

LAB_ce3290e:
    mov.w @(DAT_ce32a18,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32a24,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32a1a,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce3297c
    mov.w @(DAT_ce32a1a,pc),r0
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
    mov.l @(PTR_ce32a28,pc),r2
    mov r0,r5
    mov.w r0,@(0x1e,r14)
    mov r0,r6
    jsr @r2
    mov r14,r4
    tst r0,r0
    bf LAB_ce32956
    mov.l @(PTR_ce32a2c,pc),r2
    jsr @r2
    mov r14,r4
    bra LAB_ce3297c
    nop

LAB_ce32956:
    mova @(DAT_ce32a30,pc),r0
    mov.l @(PTR_ce32a38,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce32a34,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov fr3,@(r0,r15)
    mov.w @(DAT_ce32a1c,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce3297c:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32986:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32a12,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32a14,pc),r0
    mov.l @(PTR_ce32a24,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce329d0
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0A,r0
    mov.w r0,@(0x1c,r14)
    mov 0x01,r0
    mov.l @r15,r3
    mov.b r0,@(0x6,r3)
    mov.w @(DAT_ce32a1e,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32a20,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce329d0:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce329d8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32a24,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32a0c
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce32a3c,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32a40,pc),r2
    mov r14,r4
    mov 0x00,r6
    mov 0x01,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32a0c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a12:
    #data 0x03f8
DAT_ce32a14:
    #data 0x0328
DAT_ce32a16:
    #data 0x0255
DAT_ce32a18:
    #data 0x03f1
DAT_ce32a1a:
    #data 0x0141
DAT_ce32a1c:
    #data 0x03f0
DAT_ce32a1e:
    #data 0x03f9
DAT_ce32a20:
    #data 0x0327
    #align4

PTR_ce32a24:
    #data loc_8c034dee
PTR_ce32a28:
    #data loc_8c0a1898
PTR_ce32a2c:
    #data loc_8c051648
DAT_ce32a30:
    #data 0xc3235555
DAT_ce32a34:
    #data 0x434fdb6d
PTR_ce32a38:
    #data loc_8c050834
PTR_ce32a3c:
    #data loc_8c034e8c
PTR_ce32a40:
    #data loc_8c0a0544

;=============================================

LAB_ce32a44:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32b90,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32a5e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32b94,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32a5e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32a66:
    mov r4,r3
    mov.l @(PTR_ce32b98,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32a78:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32b7a,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32a98
    mov.w @(DAT_ce32b7e,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32b7c,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32a98:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32b9c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32ba0,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32ba4,pc),r3
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
    mov.w @(DAT_ce32b80,pc),r0
    mov 0x3E,r3
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32b82,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32b84,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32ba8,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x16,r5
    mov.l @(PTR_ce32bac,pc),r2
    mov 0x03,r6
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r14

LAB_ce32b0a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32b86,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32b88,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32b7a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32b2c
    bra LAB_ce32b2e
    mov 0x02,r3

LAB_ce32b2c:
    mov 0x00,r3

LAB_ce32b2e:
    mov.w @(DAT_ce32b8a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32b90,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32b8c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32b72
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    fldi0 fr4
    mov r15,r5
    add 0x01,r0
    mov.l @(PTR_ce32bb4,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x01,r6
    mov.w @(DAT_ce32b8c,pc),r0
    mov.b r4,@(r0,r14)
    mov 0x30,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce32bb0,pc),r0
    fmov.s fr4,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    mov.w @(DAT_ce32b7e,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce32b72:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b7a:
    #data 0x0255
DAT_ce32b7c:
    #data 0x00ff
DAT_ce32b7e:
    #data 0x03f0
DAT_ce32b80:
    #data 0x01f9
DAT_ce32b82:
    #data 0x041c
DAT_ce32b84:
    #data 0x01a1
DAT_ce32b86:
    #data 0x03f8
DAT_ce32b88:
    #data 0x0328
DAT_ce32b8a:
    #data 0x03f1
DAT_ce32b8c:
    #data 0x0141
    #align4

PTR_ce32b90:
    #data loc_8c034dee
PTR_ce32b94:
    #data loc_8c051648
PTR_ce32b98:
    #data PTR_ce337c0
PTR_ce32b9c:
    #data loc_8c05218a
PTR_ce32ba0:
    #data loc_8c035162
PTR_ce32ba4:
    #data loc_8c05115a
PTR_ce32ba8:
    #data loc_8c2896b0
PTR_ce32bac:
    #data loc_8c034e8c
DAT_ce32bb0:
    #data 0x431e9249
PTR_ce32bb4:
    #data loc_8c050834

;=============================================

LAB_ce32bb8:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32cc6,pc),r0
    mov 0x02,r3
    mov.l r13,@-r15
    mov 0x05,r2
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32cc8,pc),r0
    mov.b r2,@(r0,r14)
    bsr FUN_ce32c92
    mov r14,r4
    mov.l @(PTR_ce32cd0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32cca,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32c02
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x4C,r5
    mov.l @(PTR_ce32cd4,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32cd8,pc),r11
    mov 0x00,r13
    mov 0x0A,r12

LAB_ce32bf4:
    mov 0x05,r5
    mov r13,r6
    jsr @r11
    mov r14,r4
    add 0x01,r13
    cmp/ge r12,r13
    bf LAB_ce32bf4

LAB_ce32c02:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32c18
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x40,r0
    mov.w r0,@(0x1c,r14)

LAB_ce32c18:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32c24:
    mov.w @(DAT_ce32cc6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32cc8,pc),r0
    mov.l @(PTR_ce32cd0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32c6a
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    mov.l @(PTR_ce32cdc,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32ccc,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32cce,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)

LAB_ce32c6a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32c70:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32cd0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32c8a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32ce0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32c8a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce32c92:
    mov.l r14,@-r15
    mov.w @(0x1c,r4),r0
    tst 0x03,r0
    bf LAB_ce32cb0
    mov.w @(0x1c,r4),r0
    mov 0x01,r2
    mov.l @(PTR_ce32ce4,pc),r3
    mov 0x00,r5
    mov r0,r14
    shar r14
    shar r14
    and r2,r14
    mov r14,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce32cb0:
    rts
    mov.l @r15+,r14

LAB_ce32cb4:
    mov r4,r3
    mov.l @(PTR_ce32ce8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32cc6:
    #data 0x03f8
DAT_ce32cc8:
    #data 0x0328
DAT_ce32cca:
    #data 0x0141
DAT_ce32ccc:
    #data 0x03f9
DAT_ce32cce:
    #data 0x0327
    #align4

PTR_ce32cd0:
    #data loc_8c034dee
PTR_ce32cd4:
    #data loc_8c04223a
PTR_ce32cd8:
    #data loc_8c0e5fdc
PTR_ce32cdc:
    #data loc_8c034e8c
PTR_ce32ce0:
    #data loc_8c051648
PTR_ce32ce4:
    #data loc_8c0a0fc4
PTR_ce32ce8:
    #data PTR_ce337d8

;=============================================

LAB_ce32cec:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32e30,pc),r3
    mov.l r5,@r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32e34,pc),r2
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
    mov.w @(DAT_ce32e28,pc),r0
    mov 0x14,r5
    mov 0x03,r6
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32e2a,pc),r0
    mov.l @(PTR_ce32e38,pc),r3
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

LAB_ce32d3e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32e3c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32d58
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32e40,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32d58:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32d60:
    mov r4,r3
    mov.l @(PTR_ce32e44,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32d72:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    fldi0 fr4
    mov 0x00,r13
    mov.l @(PTR_ce32e34,pc),r3
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
    mov.w @(DAT_ce32e28,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32e2a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32e30,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32e48,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32e2c,pc),r0
    mov 0x41,r2
    mov.l @(PTR_ce32e4c,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov 0x12,r6
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32e38,pc),r2
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

LAB_ce32df6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce32e3c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32e50
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(PTR_ce32e38,pc),r3
    mov 0x13,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32e28:
    #data 0x01f9
DAT_ce32e2a:
    #data 0x041c
DAT_ce32e2c:
    #data 0x01a1
    #align4

PTR_ce32e30:
    #data loc_8c05218a
PTR_ce32e34:
    #data loc_8c035162
PTR_ce32e38:
    #data loc_8c034e8c
PTR_ce32e3c:
    #data loc_8c034dee
PTR_ce32e40:
    #data loc_8c051648
PTR_ce32e44:
    #data PTR_ce337ec
PTR_ce32e48:
    #data loc_8c05115a
PTR_ce32e4c:
    #data loc_8c2896b0

;=============================================

LAB_ce32e50:
    mov.w @(DAT_ce32f62,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce32e6e
    mov.w @(DAT_ce32f62,pc),r0
    mov 0x01,r5
    mov.l @(PTR_ce32f74,pc),r1
    mov 0x08,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce32e6e:
    mov.w @(DAT_ce32f62,pc),r0
    mov.b @(r0,r14),r0
    tst 0x02,r0
    bt LAB_ce32e96
    mov.w @(DAT_ce32f62,pc),r0
    mov r15,r5
    fldi0 fr3
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce32f78,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce32f7c,pc),r2
    fmov fr3,@(r0,r15)
    jsr @r2
    mov r14,r4

LAB_ce32e96:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32e9e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32f80,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32eb8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32f84,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce32eb8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32ec0:
    mov r4,r3
    mov.l @(PTR_ce32f88,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32ed2:
    mov.w @(DAT_ce32f66,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32f8c,pc),r0
    extu.b r3,r3
    mov.w @(DAT_ce32f64,pc),r5
    shll2 r3
    mov.l @(r0,r3),r2
    add r14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce32eea:
    mov.w @(DAT_ce32f68,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32f6a,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32f5a
    mov.w @(DAT_ce32f6c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32f2a
    mov.w @(DAT_ce32f6e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32f2a
    mov.l @(PTR_ce32f90,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32f5a
    mov r0,r4
    bra LAB_ce32f4c
    mov 0x02,r2

LAB_ce32f2a:
    mov.w @(DAT_ce32f6c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32f5a
    mov.w @(DAT_ce32f6e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32f5a
    mov.l @(PTR_ce32f90,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32f5a
    mov r0,r4
    mov 0x00,r2

LAB_ce32f4c:
    mov.w @(DAT_ce32f70,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32f5a:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f62:
    #data 0x0141
DAT_ce32f64:
    #data 0x02a4
DAT_ce32f66:
    #data 0x01e9
DAT_ce32f68:
    #data 0x01fa
DAT_ce32f6a:
    #data 0x0c00
DAT_ce32f6c:
    #data 0x01fe
DAT_ce32f6e:
    #data 0x01a3
DAT_ce32f70:
    #data 0x01f7
    #align4

PTR_ce32f74:
    #data loc_8c0a0fc4
DAT_ce32f78:
    #data 0x42fcdb6d
PTR_ce32f7c:
    #data loc_8c050ea4
PTR_ce32f80:
    #data loc_8c034dee
PTR_ce32f84:
    #data loc_8c051648
PTR_ce32f88:
    #data PTR_ce337f4
PTR_ce32f8c:
    #data PTR_ce33800
PTR_ce32f90:
    #data loc_8c045790

;=============================================

LAB_ce32f94:
    mov.w @(DAT_ce33092,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33094,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1,r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt LAB_ce32fe0
    mov.w @(DAT_ce33096,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32fe0
    mov.w @(DAT_ce33098,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce32fe0
    mov.l @(PTR_ce330a4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce32fe0
    mov r0,r4
    mov.w @(DAT_ce3309a,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fe0:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32fe8:
    rts
    mov 0x00,r0

LAB_ce32fec:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(DAT_ce3309c,pc),r1
    mov.l @(PTR_ce330a8,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

LAB_ce33004:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce33028
    mov.w @(DAT_ce3309e,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce330a0,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce33028:
    mov.w @(DAT_ce330a2,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r6
    mov.l @(PTR_ce330ac,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce330b0,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce330b4,pc),r0
    fmov.s @r0,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce330a0,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3306a
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce3306a:
    mova @(DAT_ce330b8,pc),r0
    mov.l @(PTR_ce330c0,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce330bc,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce330c4,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33092:
    #data 0x01fa
DAT_ce33094:
    #data 0x0c00
DAT_ce33096:
    #data 0x01fe
DAT_ce33098:
    #data 0x01a3
DAT_ce3309a:
    #data 0x01f7
DAT_ce3309c:
    #data 0x01f9
DAT_ce3309e:
    #data 0x01d2
DAT_ce330a0:
    #data 0x0130
DAT_ce330a2:
    #data 0x01a0
    #align4

PTR_ce330a4:
    #data loc_8c045790
PTR_ce330a8:
    #data PTR_ce33834
PTR_ce330ac:
    #data loc_8c034e8c
DAT_ce330b0:
    #data 0xc1200000
DAT_ce330b4:
    #data 0xbed55555
DAT_ce330b8:
    #data 0xc2695555
DAT_ce330bc:
    #data 0x43070000
PTR_ce330c0:
    #data loc_8c103660
PTR_ce330c4:
    #data loc_8c056f2a

;=============================================

LAB_ce330c8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce330ec
    mov.w @(DAT_ce331bc,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce331be,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce330ec:
    mov.w @(DAT_ce331c0,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x03,r6
    mov.l @(PTR_ce331c4,pc),r3
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
    mova @(DAT_ce331c8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce331cc,pc),r0
    mov.l @(PTR_ce331d0,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce331d4,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33136:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce3315a
    mov.w @(DAT_ce331bc,pc),r0
    mov 0x01,r3
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r1
    mov.w @(DAT_ce331be,pc),r0
    extu.b r1,r1
    mov.w r1,@(r0,r14)

LAB_ce3315a:
    mov.w @(DAT_ce331c0,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x04,r6
    mov.l @(PTR_ce331c4,pc),r3
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
    mova @(DAT_ce331c8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce331cc,pc),r0
    mov.l @(PTR_ce331d0,pc),r3
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov 0x08,r0
    fmov fr4,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce331d4,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce331a8:
    mov.w @(DAT_ce331c2,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce331d8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331bc:
    #data 0x01d2
DAT_ce331be:
    #data 0x0130
DAT_ce331c0:
    #data 0x01a0
DAT_ce331c2:
    #data 0x01f7
    #align4

PTR_ce331c4:
    #data loc_8c034e8c
DAT_ce331c8:
    #data 0xc2695555
DAT_ce331cc:
    #data 0x43070000
PTR_ce331d0:
    #data loc_8c103660
PTR_ce331d4:
    #data loc_8c056f2a
PTR_ce331d8:
    #data PTR_ce33844

;=============================================

LAB_ce331dc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce332fe,pc),r0
    mov r4,r14
    mov.l @(r0,r14),r3
    mov.l r3,@r15
    mov.l @(PTR_ce33308,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33300,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3323a
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
    mov.w @(DAT_ce33302,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33226
    mov.w @(DAT_ce33302,pc),r0
    mov.l @r15,r3
    mov.b @(r0,r3),r2
    tst r2,r2
    bt LAB_ce3323a

LAB_ce33226:
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce3330c,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x38,r0
    mov.w r0,@(0x1c,r14)

LAB_ce3323a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33242:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33308,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33266
    lds.l @r15+,PR
    mov.l @(PTR_ce33310,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce33266:
    mov.w @(DAT_ce33300,pc),r0
    mov 0x01,r13
    mov.b @(r0,r14),r3
    tst r13,r3
    bt LAB_ce33284
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    mov.l @(PTR_ce33314,pc),r1
    and r3,r2
    mov 0x01,r5
    mov.b r2,@(r0,r14)
    mov 0x09,r6
    jsr @r1
    mov r14,r4

LAB_ce33284:
    mov.w @(DAT_ce33300,pc),r0
    mov 0x02,r5
    mov.b @(r0,r14),r3
    tst r5,r3
    bt LAB_ce332c6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce332fe,pc),r0
    mov.l @(r0,r14),r4
    add 0x2E,r0
    mov.b r13,@(r0,r4)
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
    mov 0x03,r0
    mov.l @(PTR_ce33318,pc),r4
    mov.b r0,@(0x5,r4)
    mov r13,r0
    nop
    mov.b r0,@(0x6,r4)

LAB_ce332c6:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce332ce:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3331c,pc),r1
    extu.b r0,r0
    mov.w @(DAT_ce33304,pc),r5
    shll2 r0
    mov.l @(r0,r1),r3
    add r14,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce332e4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33308,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33324
    lds.l @r15+,PR
    mov.l @(PTR_ce33320,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce332fe:
    #data 0x01c8
DAT_ce33300:
    #data 0x0141
DAT_ce33302:
    #data 0x01fd
DAT_ce33304:
    #data 0x02a4
    #align4

PTR_ce33308:
    #data loc_8c034dee
PTR_ce3330c:
    #data loc_8c034e8c
PTR_ce33310:
    #data loc_8c051648
PTR_ce33314:
    #data loc_8c0a0fc4
PTR_ce33318:
    #data loc_8c26a518
PTR_ce3331c:
    #data PTR_ce33850
PTR_ce33320:
    #data loc_8c05176e

;=============================================

LAB_ce33324:
    mov.w @(DAT_ce3345c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce33342
    mov.w @(DAT_ce3345c,pc),r0
    mov 0x01,r5
    mov.l @(PTR_ce33468,pc),r1
    mov 0x07,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce33342:
    mov.w @(DAT_ce3345c,pc),r0
    mov 0x02,r5
    mov.b @(r0,r14),r3
    tst r5,r3
    bt LAB_ce3337a
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r2
    mov.w @(DAT_ce3345e,pc),r0
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

LAB_ce3337a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33380:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3346c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce333a0
    lds.l @r15+,PR
    mov.l @(PTR_ce33470,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce333a0:
    mov.w @(DAT_ce3345c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x01,r0
    bt LAB_ce333be
    mov.w @(DAT_ce3345c,pc),r0
    mov 0x01,r5
    mov.l @(PTR_ce33468,pc),r1
    mov 0x09,r6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBD,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    jsr @r1
    mov r14,r4

LAB_ce333be:
    mov.w @(DAT_ce3345c,pc),r0
    mov 0x02,r5
    mov.b @(r0,r14),r3
    tst r5,r3
    bt LAB_ce333f6
    mov.b @(r0,r14),r2
    mov r0,r3
    add 0xBC,r3
    and r3,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r2
    mov.w @(DAT_ce3345e,pc),r0
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

LAB_ce333f6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce333fc:
    mov.w @(DAT_ce33460,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r2
    mov r14,r4
    mov.l @(PTR_ce33474,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33418:
    mov.w @(DAT_ce3345e,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce33478,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce33426:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33462,pc),r1
    mov.l @(PTR_ce3347c,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3343e:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33464,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce33480
    mov 0x06,r5
    cmp/eq 0x01,r0
    bt LAB_ce33488
    cmp/eq 0x02,r0
    bt LAB_ce33488
    bra LAB_ce3348c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3345c:
    #data 0x0141
DAT_ce3345e:
    #data 0x01c8
DAT_ce33460:
    #data 0x01ea
DAT_ce33462:
    #data 0x01f7
DAT_ce33464:
    #data 0x04c9
    #align4

PTR_ce33468:
    #data loc_8c0a0fc4
PTR_ce3346c:
    #data loc_8c034dee
PTR_ce33470:
    #data loc_8c051648
PTR_ce33474:
    #data PTR_ce33858
PTR_ce33478:
    #data loc_8c04cc1c
PTR_ce3347c:
    #data PTR_ce33864

;=============================================

LAB_ce33480:
    mov.w @(DAT_ce3353e,pc),r0
    mov 0x01,r3
    bra LAB_ce3348c
    mov.b r3,@(r0,r4)

LAB_ce33488:
    mov.w @(DAT_ce3353e,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce3348c:
    mov.l @(PTR_ce33544,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce33492:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33540,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce334b0
    mov 0x06,r5
    cmp/eq 0x01,r0
    bt LAB_ce334b8
    cmp/eq 0x02,r0
    bt LAB_ce334b8
    bra LAB_ce334bc
    nop

LAB_ce334b0:
    mov.w @(DAT_ce3353e,pc),r0
    mov 0x01,r3
    bra LAB_ce334bc
    mov.b r3,@(r0,r4)

LAB_ce334b8:
    mov.w @(DAT_ce3353e,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce334bc:
    mov.l @(PTR_ce33544,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce334c2:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33540,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce334e2
    cmp/eq 0x01,r0
    bt LAB_ce334ea
    cmp/eq 0x02,r0
    bt LAB_ce334f0
    bra LAB_ce334f6
    nop

LAB_ce334e2:
    mov.w @(DAT_ce3353e,pc),r0
    mov 0x02,r3
    bra LAB_ce334f6
    mov.b r3,@(r0,r4)

LAB_ce334ea:
    mov.w @(DAT_ce3353e,pc),r0
    bra LAB_ce334f6
    mov.b r5,@(r0,r4)

LAB_ce334f0:
    mov.w @(DAT_ce3353e,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r4)

LAB_ce334f6:
    mov.w @(DAT_ce33542,pc),r0
    mov.l @(PTR_ce33544,pc),r3
    mov.b r5,@(r0,r4)
    jmp @r3
    mov 0x15,r5

LAB_ce33500:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33540,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt LAB_ce33520
    cmp/eq 0x01,r0
    bt LAB_ce33528
    cmp/eq 0x02,r0
    bt LAB_ce3352e
    bra LAB_ce33534
    nop

LAB_ce33520:
    mov.w @(DAT_ce3353e,pc),r0
    mov 0x02,r3
    bra LAB_ce33534
    mov.b r3,@(r0,r4)

LAB_ce33528:
    mov.w @(DAT_ce3353e,pc),r0
    bra LAB_ce33534
    mov.b r5,@(r0,r4)

LAB_ce3352e:
    mov.w @(DAT_ce3353e,pc),r0
    mov 0x03,r2
    mov.b r2,@(r0,r4)

LAB_ce33534:
    mov.w @(DAT_ce33542,pc),r0
    mov.l @(PTR_ce33544,pc),r3
    mov.b r5,@(r0,r4)
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3353e:
    #data 0x01e9
DAT_ce33540:
    #data 0x04c9
DAT_ce33542:
    #data 0x01a3
    #align4

PTR_ce33544:
    #data loc_8c0530d8
DAT_ce33548:
    #data 0x0201
    #data 0x0200
DAT_ce3354c:
    #data 0x02ff
    #data 0x0201
DAT_ce33550:
    #data 0xffff
    #data 0x02ff
DAT_ce33554:
    #data 0x0201
    #data 0x0201
DAT_ce33558:
    #data 0x02ff
    #data 0x02ff
DAT_ce3355c:
    #data 0xffff
    #data 0xffff
DAT_ce33560:
    #data 0x0201
    #data 0x0200
DAT_ce33564:
    #data 0x02ff
    #data 0x0201
DAT_ce33568:
    #data 0xffff
    #data 0xffff
DAT_ce3356c:
    #data 0x0201
    #data 0x0201
DAT_ce33570:
    #data 0x02ff
    #data 0x02ff
DAT_ce33574:
    #data 0xffff
    #data 0xffff
DAT_ce33578:
    #data 0x0201
    #data 0x0200
DAT_ce3357c:
    #data 0x02ff
    #data 0x0201
DAT_ce33580:
    #data 0xffff
    #data 0x02ff
DAT_ce33584:
    #data 0x0201
    #data 0x0201
DAT_ce33588:
    #data 0x02ff
    #data 0x02ff
DAT_ce3358c:
    #data 0xffff
    #data 0xffff
DAT_ce33590:
    #data 0x0003
    #data 0x0000
    #data 0x0002
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce335a0:
    #data 0x0003
    #data 0x1000
    #data 0x000c
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce335b0:
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
DAT_ce335c4:
    #data 0x0003
    #data 0x8000
    #data 0x0005
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce335d4:
    #data 0x0003
    #data 0x9100
    #data 0x0001
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce335e4:
    #data 0x0003
    #data 0x9100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
    #align4

PTR_ce335f4:
    #data LAB_ce304dc
PTR_ce335f8:
    #data LAB_ce3001c
PTR_ce335fc:
    #data LAB_ce30514
PTR_ce33600:
    #data LAB_ce30c64
PTR_ce33604:
    #data LAB_ce3152e
PTR_ce33608:
    #data LAB_ce31682
PTR_ce3360c:
    #data LAB_ce31a1e
PTR_ce33610:
    #data LAB_ce31aca
PTR_ce33614:
    #data LAB_ce32ed2
PTR_ce33618:
    #data LAB_ce32fec
PTR_ce3361c:
    #data LAB_ce331a8
PTR_ce33620:
    #data LAB_ce333fc
PTR_ce33624:
    #data LAB_ce33426
PTR_ce33628:
    #data LAB_ce30448
PTR_ce3362c:
    #data LAB_ce31c1c
PTR_ce33630:
    #data LAB_ce31448
PTR_ce33634:
    #data LAB_ce3343e
PTR_ce33638:
    #data LAB_ce33492
PTR_ce3363c:
    #data LAB_ce334c2
PTR_ce33640:
    #data LAB_ce33500
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce33664:
    #data LAB_ce3054c
PTR_ce33668:
    #data LAB_ce308f4
PTR_ce3366c:
    #data LAB_ce30924
PTR_ce33670:
    #data LAB_ce3054c
PTR_ce33674:
    #data LAB_ce30c86
PTR_ce33678:
    #data LAB_ce31138
PTR_ce3367c:
    #data LAB_ce31118
PTR_ce33680:
    #data LAB_ce30c78
PTR_ce33684:
    #data LAB_ce30d1c
PTR_ce33688:
    #data FUN_ce30d3e
PTR_ce3368c:
    #data LAB_ce30de8
PTR_ce33690:
    #data LAB_ce30d80
PTR_ce33694:
    #data FUN_ce30dc6
PTR_ce33698:
    #data LAB_ce30e0e
PTR_ce3369c:
    #data FUN_ce30e30
PTR_ce336a0:
    #data LAB_ce30f2e
PTR_ce336a4:
    #data LAB_ce30e52
PTR_ce336a8:
    #data LAB_ce30ea4
PTR_ce336ac:
    #data LAB_ce30edc
PTR_ce336b0:
    #data FUN_ce30f0c
PTR_ce336b4:
    #data LAB_ce30f58
PTR_ce336b8:
    #data LAB_ce30f7a
PTR_ce336bc:
    #data LAB_ce30fb4
PTR_ce336c0:
    #data LAB_ce31024
PTR_ce336c4:
    #data LAB_ce31046
PTR_ce336c8:
    #data LAB_ce310c0
PTR_ce336cc:
    #data LAB_ce311a4
PTR_ce336d0:
    #data LAB_ce311de
PTR_ce336d4:
    #data LAB_ce3124c
PTR_ce336d8:
    #data LAB_ce31282
PTR_ce336dc:
    #data FUN_ce312a4
PTR_ce336e0:
    #data LAB_ce31412
PTR_ce336e4:
    #data LAB_ce312e8
PTR_ce336e8:
    #data LAB_ce31360
PTR_ce336ec:
    #data LAB_ce313fa
PTR_ce336f0:
    #data FUN_ce312c6
PTR_ce336f4:
    #data LAB_ce31400
PTR_ce336f8:
    #data LAB_ce31540
PTR_ce336fc:
    #data LAB_ce315c6
PTR_ce33700:
    #data LAB_ce31628
PTR_ce33704:
    #data LAB_ce31694
PTR_ce33708:
    #data LAB_ce31704
PTR_ce3370c:
    #data FUN_ce31766
PTR_ce33710:
    #data LAB_ce31788
PTR_ce33714:
    #data LAB_ce317ce
PTR_ce33718:
    #data LAB_ce3184c
PTR_ce3371c:
    #data LAB_ce318ae
PTR_ce33720:
    #data LAB_ce31906
PTR_ce33724:
    #data LAB_ce3195e
PTR_ce33728:
    #data LAB_ce319c8
PTR_ce3372c:
    #data LAB_ce31a30
PTR_ce33730:
    #data LAB_ce31a64
PTR_ce33734:
    #data LAB_ce31a6a
PTR_ce33738:
    #data LAB_ce31a7c
PTR_ce3373c:
    #data LAB_ce31a96
PTR_ce33740:
    #data LAB_ce31a7c
PTR_ce33744:
    #data LAB_ce31ab0
PTR_ce33748:
    #data LAB_ce31b24
PTR_ce3374c:
    #data LAB_ce31b8c
PTR_ce33750:
    #data FUN_ce31bfa
PTR_ce33754:
    #data LAB_ce31c5c
PTR_ce33758:
    #data LAB_ce31d00
PTR_ce3375c:
    #data LAB_ce31d30
PTR_ce33760:
    #data LAB_ce31dc8
PTR_ce33764:
    #data LAB_ce31dfc
PTR_ce33768:
    #data LAB_ce31e98
PTR_ce3376c:
    #data LAB_ce31ef8
PTR_ce33770:
    #data LAB_ce31f60
PTR_ce33774:
    #data LAB_ce31dea
PTR_ce33778:
    #data LAB_ce31f84
PTR_ce3377c:
    #data LAB_ce32014
PTR_ce33780:
    #data LAB_ce320bc
PTR_ce33784:
    #data LAB_ce320ec
PTR_ce33788:
    #data LAB_ce32184
PTR_ce3378c:
    #data LAB_ce321b8
PTR_ce33790:
    #data LAB_ce3225c
PTR_ce33794:
    #data LAB_ce32286
PTR_ce33798:
    #data LAB_ce3230c
PTR_ce3379c:
    #data FUN_ce3233c
PTR_ce337a0:
    #data LAB_ce32370
PTR_ce337a4:
    #data LAB_ce323f4
PTR_ce337a8:
    #data LAB_ce3247a
PTR_ce337ac:
    #data LAB_ce324ec
PTR_ce337b0:
    #data LAB_ce32468
PTR_ce337b4:
    #data LAB_ce32560
PTR_ce337b8:
    #data LAB_ce32594
PTR_ce337bc:
    #data LAB_ce32662
PTR_ce337c0:
    #data LAB_ce32794
PTR_ce337c4:
    #data LAB_ce32832
PTR_ce337c8:
    #data LAB_ce328e8
PTR_ce337cc:
    #data LAB_ce32986
PTR_ce337d0:
    #data LAB_ce329d8
PTR_ce337d4:
    #data LAB_ce32a44
PTR_ce337d8:
    #data LAB_ce32a78
PTR_ce337dc:
    #data LAB_ce32b0a
PTR_ce337e0:
    #data LAB_ce32bb8
PTR_ce337e4:
    #data LAB_ce32c24
PTR_ce337e8:
    #data FUN_ce32c70
PTR_ce337ec:
    #data LAB_ce32cec
PTR_ce337f0:
    #data LAB_ce32d3e
PTR_ce337f4:
    #data LAB_ce32d72
PTR_ce337f8:
    #data LAB_ce32df6
PTR_ce337fc:
    #data FUN_ce32e9e
PTR_ce33800:
    #data LAB_ce3235e
PTR_ce33804:
    #data LAB_ce32a66
PTR_ce33808:
    #data LAB_ce31fd0
PTR_ce3380c:
    #data LAB_ce32572
PTR_ce33810:
    #data LAB_ce32d60
PTR_ce33814:
    #data LAB_ce326e2
PTR_ce33818:
    #data LAB_ce32cb4
PTR_ce3381c:
    #data LAB_ce31fd0
PTR_ce33820:
    #data LAB_ce32ec0
PTR_ce33824:
    #data LAB_ce31fd0
PTR_ce33828:
    #data LAB_ce31fd0
PTR_ce3382c:
    #data LAB_ce31fd0
PTR_ce33830:
    #data LAB_ce321a6
PTR_ce33834:
    #data LAB_ce32eea
PTR_ce33838:
    #data LAB_ce32fe8
PTR_ce3383c:
    #data LAB_ce32f94
PTR_ce33840:
    #data LAB_ce32fe8
PTR_ce33844:
    #data LAB_ce33004
PTR_ce33848:
    #data LAB_ce330c8
PTR_ce3384c:
    #data LAB_ce33136
PTR_ce33850:
    #data LAB_ce331dc
PTR_ce33854:
    #data LAB_ce33242
PTR_ce33858:
    #data LAB_ce332ce
PTR_ce3385c:
    #data LAB_ce332e4
PTR_ce33860:
    #data LAB_ce33380
PTR_ce33864:
    #data LAB_ce33418
PTR_ce33868:
    #data LAB_ce33418
PTR_ce3386c:
    #data LAB_ce33418
