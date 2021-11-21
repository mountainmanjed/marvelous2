;╔══════════════════════════════════════════╗
;║ S_PL0A : Rogue (Anna Marie) Program      ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8C02FD26 0x8C02FD26
#symbol loc_8C02FEC4 0x8C02FEC4
#symbol loc_8C030FEC 0x8C030FEC
#symbol loc_8C03319E 0x8C03319E
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
#symbol loc_8C0522E0 0x8C0522E0
#symbol loc_8C0523D8 0x8C0523D8
#symbol loc_8C05264C 0x8C05264C
#symbol loc_8C052B4C 0x8C052B4C
#symbol loc_8C052C84 0x8C052C84
#symbol loc_8C052CE2 0x8C052CE2
#symbol loc_8C052DAC 0x8C052DAC
#symbol loc_8C053082 0x8C053082
#symbol loc_8C0530D8 0x8C0530D8
#symbol loc_8C053E00 0x8C053E00
#symbol loc_8C053F6E 0x8C053F6E
#symbol loc_8C0542E0 0x8C0542E0
#symbol loc_8C054508 0x8C054508
#symbol loc_8C05496C 0x8C05496C
#symbol loc_8C054B34 0x8C054B34
#symbol loc_8C054D04 0x8C054D04
#symbol loc_8C054D1C 0x8C054D1C
#symbol loc_8C054DA0 0x8C054DA0
#symbol loc_8C054E58 0x8C054E58
#symbol loc_8C0553AC 0x8C0553AC
#symbol loc_8C0555C8 0x8C0555C8
#symbol loc_8C055C3A 0x8C055C3A
#symbol loc_8C055D54 0x8C055D54
#symbol loc_8C056DE4 0x8C056DE4
#symbol loc_8C056F2A 0x8C056F2A
#symbol loc_8C059150 0x8C059150
#symbol loc_8C059A44 0x8C059A44
#symbol loc_8C05A49C 0x8C05A49C
#symbol loc_8C06CFFC 0x8C06CFFC
#symbol loc_8C0C1A18 0x8C0C1A18
#symbol loc_8C0C1D30 0x8C0C1D30
#symbol loc_8C0C1F90 0x8C0C1F90
#symbol loc_8C0F047C 0x8C0F047C
#symbol loc_8C0FDA40 0x8C0FDA40
#symbol loc_8C103660 0x8C103660
#symbol loc_8C104DF8 0x8C104DF8
#symbol loc_8C1292D4 0x8C1292D4
#symbol loc_8C1294C8 0x8C1294C8
#symbol loc_8C129728 0x8C129728
#symbol loc_8C26A518 0x8C26A518
#symbol loc_8C26A8EC 0x8C26A8EC
#symbol loc_8C2895F0 0x8C2895F0
#symbol loc_8C2896B0 0x8C2896B0

;=============================================

BEG_ce30000:
    mov.w @(DAT_ce300c6,pc),r0
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
    bf LAB_ce300c0
    mov.l @(PTR_ce300d4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    mov.l @(PTR_ce300d8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    mov.l @(PTR_ce300dc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30350
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce302e4
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce303de
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce301b8
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30220
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30266
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce300ec
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce30132
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce302ac
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    mov.w @(DAT_ce300c8,pc),r5
    mov.l @(PTR_ce300e0,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300c0
    bsr FUN_ce303a0
    mov r14,r4
    tst r0,r0
    bf LAB_ce300c0
    mov.l @(PTR_ce300e4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce300e8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce300c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300c6:
    #data 0x0428
DAT_ce300c8:
    #data 0x0394
    #align4

PTR_ce300cc:
    #data PTR_ce34bdc
PTR_ce300d0:
    #data loc_8c054508
PTR_ce300d4:
    #data loc_8c054b34
PTR_ce300d8:
    #data loc_8c05496c
PTR_ce300dc:
    #data loc_8c054d04
PTR_ce300e0:
    #data loc_8c053f6e
PTR_ce300e4:
    #data loc_8c053e00
PTR_ce300e8:
    #data loc_8c0542e0

;=============================================

FUN_ce300ec:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30208,pc),r5
    mov.w @(DAT_ce301fe,pc),r6
    mov.l @(PTR_ce3020c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3010a
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3010a:
    mov.w @(DAT_ce301fe,pc),r5
    mov.l @(PTR_ce30210,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30200,pc),r0
    mov 0x03,r2
    mov.l @(PTR_ce30214,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30132:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30218,pc),r5
    mov.w @(DAT_ce30202,pc),r6
    mov.l @(PTR_ce3020c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30168
    mov.w @(DAT_ce30204,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x27,r0
    bt LAB_ce30170
    mov.w @(DAT_ce30204,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x07,r0
    bt LAB_ce30170
    mov.w @(DAT_ce30204,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x39,r0
    bt LAB_ce30170
    mov.w @(DAT_ce30204,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x24,r0
    bt LAB_ce30170

LAB_ce30168:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30170:
    mov.w @(DAT_ce30202,pc),r5
    mov.l @(PTR_ce30210,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30204,pc),r0
    mov 0x08,r4
    mov.l @(r0,r14),r0
    cmp/eq 0x07,r0
    bf/s LAB_ce30188
    mov 0x12,r5
    mov r5,r4

LAB_ce30188:
    mov.w @(DAT_ce30204,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x39,r0
    bf LAB_ce30192
    mov r5,r4

LAB_ce30192:
    mov.w @(DAT_ce30204,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x24,r0
    bf LAB_ce3019c
    mov 0x11,r4

LAB_ce3019c:
    mov.w @(DAT_ce30200,pc),r0
    mov 0x15,r5
    mov.l @(PTR_ce30214,pc),r3
    mov.b r4,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301b8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3021c,pc),r5
    mov.w @(DAT_ce30206,pc),r6
    mov.l @(PTR_ce3020c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce301d6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301d6:
    mov.w @(DAT_ce30206,pc),r5
    mov.l @(PTR_ce30210,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30200,pc),r0
    mov 0x0D,r2
    mov.l @(PTR_ce30214,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301fe:
    #data 0x036c
DAT_ce30200:
    #data 0x01e9
DAT_ce30202:
    #data 0x03a4
DAT_ce30204:
    #data 0x02a8
DAT_ce30206:
    #data 0x037c
    #align4

PTR_ce30208:
    #data DAT_ce34b60
PTR_ce3020c:
    #data loc_8c054e58
PTR_ce30210:
    #data loc_8c055c3a
PTR_ce30214:
    #data loc_8c0530d8
PTR_ce30218:
    #data DAT_ce34bba
PTR_ce3021c:
    #data DAT_ce34b70

;=============================================

FUN_ce30220:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30334,pc),r5
    mov.w @(DAT_ce3032a,pc),r6
    mov.l @(PTR_ce30338,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3023e
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3023e:
    mov.w @(DAT_ce3032a,pc),r5
    mov.l @(PTR_ce3033c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3032c,pc),r0
    mov 0x16,r2
    mov.l @(PTR_ce30340,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30266:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30344,pc),r5
    mov.w @(DAT_ce3032e,pc),r6
    mov.l @(PTR_ce30338,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce30284
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30284:
    mov.w @(DAT_ce3032e,pc),r5
    mov.l @(PTR_ce3033c,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3032c,pc),r0
    mov 0x0B,r2
    mov.l @(PTR_ce30340,pc),r3
    mov 0x15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302ac:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30348,pc),r3
    jsr @r3
    mov 0x13,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302c6
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302c6:
    mov.w @(DAT_ce3032c,pc),r0
    mov 0x13,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30340,pc),r3
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302e4:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3034c,pc),r5
    mov.w @(DAT_ce30330,pc),r6
    mov.l @(PTR_ce30338,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30304
    mov.w @(DAT_ce30332,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3030c

LAB_ce30304:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3030c:
    mov.w @(DAT_ce3032c,pc),r0
    mov 0x14,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30340,pc),r3
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3032a:
    #data 0x038c
DAT_ce3032c:
    #data 0x01e9
DAT_ce3032e:
    #data 0x0374
DAT_ce30330:
    #data 0x0384
DAT_ce30332:
    #data 0x040c
    #align4

PTR_ce30334:
    #data DAT_ce34b80
PTR_ce30338:
    #data loc_8c054e58
PTR_ce3033c:
    #data loc_8c055c3a
PTR_ce30340:
    #data loc_8c0530d8
PTR_ce30344:
    #data DAT_ce34b90
PTR_ce30348:
    #data loc_8c054da0
PTR_ce3034c:
    #data DAT_ce34ba0

;=============================================

FUN_ce30350:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30450,pc),r5
    mov.w @(DAT_ce30444,pc),r6
    mov.l @(PTR_ce30454,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3037a
    mov.w @(DAT_ce30446,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x1E,r0
    bf LAB_ce3037a
    mov.w @(DAT_ce30448,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    mov 0x03,r3
    cmp/ge r3,r2
    bt LAB_ce30382

LAB_ce3037a:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30382:
    mov.w @(DAT_ce3044a,pc),r0
    mov 0x17,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30458,pc),r3
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303a0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3045c,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce303b8
    mov.w @(DAT_ce30448,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303c0

LAB_ce303b8:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303c0:
    mov.w @(DAT_ce3044a,pc),r0
    mov 0x1A,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30458,pc),r3
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce303de:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30460,pc),r5
    mov.w @(DAT_ce3044c,pc),r6
    mov.l @(PTR_ce30464,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303fc
    mov.w @(DAT_ce30446,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x01,r0
    bt LAB_ce30404

LAB_ce303fc:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30404:
    mov.w @(DAT_ce3044c,pc),r5
    mov.l @(PTR_ce30468,pc),r2
    add r14,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3044a,pc),r0
    mov 0x0C,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce30458,pc),r3
    mov.b r0,@(0x5,r14)
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3042c:
    sts.l PR,@-r15
    bsr FUN_ce3046c
    nop
    tst r0,r0
    bt LAB_ce3043c
    lds.l @r15+,PR
    rts
    mov 0x01,r0

LAB_ce3043c:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30444:
    #data 0x03ac
DAT_ce30446:
    #data 0x02a8
DAT_ce30448:
    #data 0x040c
DAT_ce3044a:
    #data 0x01e9
DAT_ce3044c:
    #data 0x039c
    #align4

PTR_ce30450:
    #data DAT_ce34bca
PTR_ce30454:
    #data loc_8c0555c8
PTR_ce30458:
    #data loc_8c0530d8
PTR_ce3045c:
    #data loc_8c054d1c
PTR_ce30460:
    #data DAT_ce34bb0
PTR_ce30464:
    #data loc_8c0553ac
PTR_ce30468:
    #data loc_8c055c3a

;=============================================

FUN_ce3046c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304f0,pc),r5
    mov.w @(DAT_ce304e4,pc),r6
    mov.l @(PTR_ce304f4,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3048c
    mov.w @(DAT_ce304e6,pc),r0
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
    mov.w @(DAT_ce304e4,pc),r5
    mov.l @(PTR_ce304f8,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce304e8,pc),r0
    mov 0x14,r2
    mov.b r2,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce304ac:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce304ea,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce304c4
    mov 0x03,r13
    bra LAB_ce3062c
    nop

LAB_ce304c4:
    mov.w @(DAT_ce304ec,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bt LAB_ce304d2
    mov.l @(r0,r14),r3
    add 0xFF,r3
    mov.l r3,@(r0,r14)

LAB_ce304d2:
    mov.w @(DAT_ce304ee,pc),r0
    mov.l @(r0,r14),r2
    cmp/pl r2
    bf LAB_ce304fc
    mov.l @(r0,r14),r1
    add 0xFF,r1
    mov.l r1,@(r0,r14)
    bra LAB_ce30640
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce304e4:
    #data 0x0384
DAT_ce304e6:
    #data 0x040c
DAT_ce304e8:
    #data 0x0258
DAT_ce304ea:
    #data 0x01a0
DAT_ce304ec:
    #data 0x02c8
DAT_ce304ee:
    #data 0x02f0
    #align4

PTR_ce304f0:
    #data DAT_ce34ba0
PTR_ce304f4:
    #data loc_8c054e58
PTR_ce304f8:
    #data loc_8c055c3a

;=============================================

LAB_ce304fc:
    mov.w @(DAT_ce305ec,pc),r0
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce3050e
    mov.l @(r0,r14),r1
    add 0xFF,r1
    cmp/pl r1
    bf/s LAB_ce305a0
    mov.l r1,@(r0,r14)

LAB_ce3050e:
    mov.w @(DAT_ce305ee,pc),r0
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce30520
    mov.l @(r0,r14),r1
    add 0xFF,r1
    cmp/pl r1
    bf/s LAB_ce305a0
    mov.l r1,@(r0,r14)

LAB_ce30520:
    mov.w @(DAT_ce305f0,pc),r0
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce30532
    mov.l @(r0,r14),r1
    add 0xFF,r1
    mov.l r1,@(r0,r14)
    mov.w @(DAT_ce305f2,pc),r0
    mov.w r13,@(r0,r14)

LAB_ce30532:
    mov.w @(DAT_ce305f4,pc),r0
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce30558
    mov.w @(DAT_ce305f6,pc),r0
    mov.b @(r0,r14),r1
    tst r1,r1
    bf LAB_ce30558
    mov.w @(DAT_ce305f4,pc),r0
    mov.l @(r0,r14),r2
    add 0xFF,r2
    mov.l r2,@(r0,r14)
    mov.l @(r0,r14),r0
    tst 0x07,r0
    bf LAB_ce30558
    mov.l @(PTR_ce3060c,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4

LAB_ce30558:
    mov.w @(DAT_ce305f8,pc),r0
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce3056a
    mov.l @(r0,r14),r1
    add 0xFF,r1
    mov.l r1,@(r0,r14)
    mov.w @(DAT_ce305fa,pc),r0
    mov.w r13,@(r0,r14)

LAB_ce3056a:
    mov.w @(DAT_ce305fc,pc),r0
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce3057c
    mov.l @(r0,r14),r1
    add 0xFF,r1
    mov.l r1,@(r0,r14)
    mov.w @(DAT_ce305fa,pc),r0
    mov.w r13,@(r0,r14)

LAB_ce3057c:
    mov.w @(DAT_ce305fe,pc),r0
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce3058e
    mov.l @(r0,r14),r1
    add 0xFF,r1
    cmp/pl r1
    bf/s LAB_ce305a0
    mov.l r1,@(r0,r14)

LAB_ce3058e:
    mov.w @(DAT_ce30600,pc),r0
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce30640
    mov.l @(r0,r14),r1
    add 0xFF,r1
    cmp/pl r1
    bt/s LAB_ce30640
    mov.l r1,@(r0,r14)

LAB_ce305a0:
    mov.w @(DAT_ce30602,pc),r1
    mov r14,r5
    mov.b @(0x1,r14),r0
    mov.l @(PTR_ce30610,pc),r3
    add r14,r1
    extu.b r0,r0
    mov.l r0,@r1
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30604,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30640
    mov.w @(DAT_ce30606,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x08,r0
    bt/s LAB_ce305d6
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x09,r0
    bt LAB_ce305d6
    mov r4,r0
    nop
    cmp/eq 0x01,r0
    bf LAB_ce30640

LAB_ce305d6:
    mov.w @(DAT_ce30608,pc),r13
    add r14,r13
    mov.b @(0x1,r13),r0
    mov r0,r13
    add 0xC0,r13
    cmp/pz r13
    bt LAB_ce305e6
    mov 0x00,r13

LAB_ce305e6:
    mov.w @(DAT_ce3060a,pc),r0
    bra LAB_ce30614
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce305ec:
    #data 0x02d0
DAT_ce305ee:
    #data 0x02d4
DAT_ce305f0:
    #data 0x02d8
DAT_ce305f2:
    #data 0x03ea
DAT_ce305f4:
    #data 0x02e8
DAT_ce305f6:
    #data 0x01dc
DAT_ce305f8:
    #data 0x02e0
DAT_ce305fa:
    #data 0x03e4
DAT_ce305fc:
    #data 0x02ec
DAT_ce305fe:
    #data 0x02dc
DAT_ce30600:
    #data 0x02e4
DAT_ce30602:
    #data 0x02a8
DAT_ce30604:
    #data 0x0159
DAT_ce30606:
    #data 0x0158
DAT_ce30608:
    #data 0x0150
DAT_ce3060a:
    #data 0x0142
    #align4

PTR_ce3060c:
    #data loc_8c059150
PTR_ce30610:
    #data FUN_ce34580

;=============================================

LAB_ce30614:
    mov.l @(PTR_ce30740,pc),r3
    mov 0x00,r5
    mov.b @(r0,r14),r12
    mov r13,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30722,pc),r0
    mov.b @(r0,r14),r2
    cmp/gt r12,r2
    bf LAB_ce30640
    bra LAB_ce30640
    mov.b r12,@(r0,r14)

LAB_ce3062c:
    mov.w @(DAT_ce30724,pc),r0
    mov.l @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30640
    mov.w @(DAT_ce30726,pc),r0
    mov.l @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce30640
    mov.w @(DAT_ce30728,pc),r0
    mov.w r13,@(r0,r14)

LAB_ce30640:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3064a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30744,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3072a,pc),r0
    mov.b @(r0,r14),r4
    add 0x11,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30672
    add 0x06,r4

LAB_ce30672:
    mov.w @(DAT_ce3072c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3067c
    add 0x03,r4

LAB_ce3067c:
    mov.l @(PTR_ce30748,pc),r0
    extu.b r4,r13
    mov.w @(DAT_ce3072e,pc),r2
    extu.b r4,r1
    mov.b @(r0,r13),r3
    add r14,r2
    extu.b r3,r3
    mov.l r3,@r2
    mov.l @(PTR_ce3074c,pc),r3
    mov.l r1,@r15
    jsr @r3
    mov 0x06,r0
    mov.l @(PTR_ce30750,pc),r1
    shll2 r0
    mov.l @(r0,r1),r2
    mov.w @(DAT_ce30730,pc),r0
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3072a,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce30754,pc),r0
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce30732,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce30758,pc),r0
    mov.w @(DAT_ce30734,pc),r2
    mov.b @(r0,r13),r3
    mov.w @(DAT_ce30736,pc),r0
    add r14,r2
    mov.b r3,@r2
    mov.w r5,@(r0,r14)
    add 0xF2,r0
    mov.b r5,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3075c,pc),r3
    mov.l r5,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30760,pc),r0
    mov.l @(PTR_ce30740,pc),r2
    mov.b @(r0,r13),r6
    mov.l @(PTR_ce30764,pc),r0
    mov.b @(r0,r13),r5
    jsr @r2
    mov r14,r4
    mov.l @r15,r0
    cmp/eq 0x02,r0
    bf LAB_ce30718
    mov.w @(DAT_ce30738,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x29,r0
    bf LAB_ce30718
    mov.w @(DAT_ce3073a,pc),r0
    mov.w @(DAT_ce3073c,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce30718
    mov.w @(DAT_ce3072e,pc),r0
    mov 0x05,r2
    mov 0x07,r5
    mov r14,r4
    mov.l r2,@(r0,r14)
    mov 0x3C,r0
    mov.w r0,@(0x1c,r14)
    mov 0x03,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce30740,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30718:
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30722:
    #data 0x0142
DAT_ce30724:
    #data 0x02f0
DAT_ce30726:
    #data 0x02e0
DAT_ce30728:
    #data 0x03e4
DAT_ce3072a:
    #data 0x01e8
DAT_ce3072c:
    #data 0x01fe
DAT_ce3072e:
    #data 0x0320
DAT_ce30730:
    #data 0x03f4
DAT_ce30732:
    #data 0x01a7
DAT_ce30734:
    #data 0x01a1
DAT_ce30736:
    #data 0x01ac
DAT_ce30738:
    #data 0x02a8
DAT_ce3073a:
    #data 0x034a
DAT_ce3073c:
    #data 0x0800
    #align4

PTR_ce30740:
    #data loc_8c034e8c
PTR_ce30744:
    #data loc_8c052b4c
PTR_ce30748:
    #data DAT_ce34c73
PTR_ce3074c:
    #data loc_8c1292d4
PTR_ce30750:
    #data PTR_ce34b18
PTR_ce30754:
    #data DAT_ce34c58
PTR_ce30758:
    #data DAT_ce34c4c
PTR_ce3075c:
    #data loc_8c2896b0
PTR_ce30760:
    #data DAT_ce34c5b
PTR_ce30764:
    #data DAT_ce34c67

;=============================================

LAB_ce30768:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x00,r4
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3086e,pc),r0
    mov.b @(r0,r14),r13
    add 0x16,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3078a
    add 0x03,r13

LAB_ce3078a:
    mov.w @(DAT_ce30870,pc),r0
    extu.b r13,r12
    mov.l r4,@(r0,r14)
    mov.w @(DAT_ce3086e,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce30884,pc),r0
    extu.b r3,r3
    mov.b @(r0,r3),r2
    mov.w @(DAT_ce30872,pc),r0
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce30888,pc),r0
    mov.w @(DAT_ce30874,pc),r2
    mov.b @(r0,r12),r3
    mov.w @(DAT_ce30876,pc),r0
    add r14,r2
    mov.b r3,@r2
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce3088c,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30890,pc),r0
    mov.b @(r0,r12),r6
    mov.l @(PTR_ce30894,pc),r0
    mov.l @(PTR_ce30898,pc),r2
    mov.b @(r0,r12),r5
    jsr @r2
    mov r14,r4
    extu.b r13,r0
    cmp/eq 0x05,r0
    bf LAB_ce30800
    mov.w @(DAT_ce30878,pc),r0
    mov.w @(DAT_ce3087a,pc),r3
    mov.w @(r0,r14),r2
    extu.w r2,r2
    tst r3,r2
    bt LAB_ce30800
    mov.w @(DAT_ce30870,pc),r0
    mov 0x01,r2
    mov 0x0C,r5
    mov.l r2,@(r0,r14)
    mov 0x0F,r2
    mov.w @(DAT_ce3087c,pc),r0
    mov 0x05,r6
    mov.b @(r0,r14),r1
    and r2,r1
    mov.b r1,@(r0,r14)
    mov.l @(PTR_ce30898,pc),r1
    jsr @r1
    mov r14,r4

LAB_ce30800:
    mov.w @(DAT_ce3087e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3080a
    add 0x06,r13

LAB_ce3080a:
    mov.l @(PTR_ce3089c,pc),r0
    extu.b r13,r13
    shll2 r13
    mov.l @(r0,r13),r3
    mov.w @(DAT_ce30880,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30882,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30830
    mov.w @(DAT_ce3087c,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30840
    mov.w @(DAT_ce3087c,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    bra LAB_ce30840
    mov.b r2,@(r0,r14)

LAB_ce30830:
    mov.w @(DAT_ce3087c,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30840
    mov.w @(DAT_ce3087c,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30840:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3084a:
    mov.w @(DAT_ce30882,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3085e
    mov.w @(DAT_ce3087c,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30866
    bra LAB_ce3086a
    nop

LAB_ce3085e:
    mov.w @(DAT_ce3087c,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce3086a

LAB_ce30866:
    bra LAB_ce30768
    nop

LAB_ce3086a:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3086e:
    #data 0x01e8
DAT_ce30870:
    #data 0x0320
DAT_ce30872:
    #data 0x01a7
DAT_ce30874:
    #data 0x01a1
DAT_ce30876:
    #data 0x01ac
DAT_ce30878:
    #data 0x01fa
DAT_ce3087a:
    #data 0x1000
DAT_ce3087c:
    #data 0x01d6
DAT_ce3087e:
    #data 0x01fc
DAT_ce30880:
    #data 0x03f4
DAT_ce30882:
    #data 0x01fe
    #align4

PTR_ce30884:
    #data DAT_ce34c85
PTR_ce30888:
    #data DAT_ce34c7f
PTR_ce3088c:
    #data loc_8c2896b0
PTR_ce30890:
    #data DAT_ce34c88
PTR_ce30894:
    #data DAT_ce34c8e
PTR_ce30898:
    #data loc_8c034e8c
PTR_ce3089c:
    #data PTR_ce34b30

;=============================================

LAB_ce308a0:
    mov.w @(DAT_ce309bc,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce309c8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce308b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce309cc,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce309d0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce309be,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bf LAB_ce308f8
    mov.l @(PTR_ce309d4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce308e2
    lds.l @r15+,PR
    mov.l @(PTR_ce309d8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce308e2:
    mov.l @(PTR_ce309dc,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30900
    lds.l @r15+,PR
    mov.l @(PTR_ce309e0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce308f8:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30906
    mov.l @r15+,r14

LAB_ce30900:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30906:
    mov r4,r3
    mov.l @(PTR_ce309e4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce30918:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce309d4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce309c0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30964
    mov.b @(0x7,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce309c0,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce309c2,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce309e8,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce309c4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3094a
    mova @(DAT_ce309ec,pc),r0
    fmov.s @r0,fr4

LAB_ce3094a:
    mov 0x5C,r0
    fldi0 fr3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce309f0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce309f4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce30964:
    mov.l @(PTR_ce309dc,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3097a
    lds.l @r15+,PR
    mov.l @(PTR_ce309e0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3097a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30980:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce309d4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce309c6,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce309b6
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce309f8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce309fc,pc),r2
    mov 0x01,r5
    mov 0x03,r6
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce30a00,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce309b6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce309bc:
    #data 0x01ff
DAT_ce309be:
    #data 0x0320
DAT_ce309c0:
    #data 0x0141
DAT_ce309c2:
    #data 0x01fc
DAT_ce309c4:
    #data 0x01d2
DAT_ce309c6:
    #data 0x041c
    #align4

PTR_ce309c8:
    #data PTR_ce34c94
PTR_ce309cc:
    #data loc_8c04fea8
PTR_ce309d0:
    #data loc_8c050048
PTR_ce309d4:
    #data loc_8c034dee
PTR_ce309d8:
    #data loc_8c05176e
PTR_ce309dc:
    #data loc_8c052ce2
PTR_ce309e0:
    #data loc_8c052dac
PTR_ce309e4:
    #data PTR_ce34ca4
DAT_ce309e8:
    #data 0xc162aaaa
DAT_ce309ec:
    #data 0x4162aaaa
DAT_ce309f0:
    #data 0xc1892492
DAT_ce309f4:
    #data 0xbf092492
PTR_ce309f8:
    #data FUN_ce3495c
PTR_ce309fc:
    #data loc_8c034e8c
PTR_ce30a00:
    #data FUN_ce34930

;=============================================

LAB_ce30a04:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30b34,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30a1e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30b38,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30a1e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30a26:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30b3c,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30b40,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce308b4
    mov.l @r15+,r14

LAB_ce30a3e:
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
    mov.w @(DAT_ce30b2e,pc),r0
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(r0,r14),r2
    mov.l @(PTR_ce30b48,pc),r0
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce30a94:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30b34,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30aae
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30b38,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30aae:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30ab6:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30af8
    mov.l @(PTR_ce30b34,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30b30,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30b28
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce30b4c,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce30b50,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce30b32,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30aee
    mova @(DAT_ce30b54,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce30b58,pc),r0
    fmov.s @r0,fr5

LAB_ce30aee:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    bra LAB_ce30b28
    fmov fr5,@(r0,r14)

LAB_ce30af8:
    mov.w @(DAT_ce30b30,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf/s LAB_ce30b12
    mov r14,r4
    mov.w @(DAT_ce30b30,pc),r0
    mov 0x00,r2
    fldi0 fr4
    mov.b r2,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce30b12:
    mov.l @(PTR_ce30b34,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30b28
    lds.l @r15+,PR
    mov.l @(PTR_ce30b38,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30b28:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b2e:
    #data 0x0320
DAT_ce30b30:
    #data 0x0141
DAT_ce30b32:
    #data 0x01d2
    #align4

PTR_ce30b34:
    #data loc_8c034dee
PTR_ce30b38:
    #data FUN_ce348a0
PTR_ce30b3c:
    #data loc_8c050084
PTR_ce30b40:
    #data loc_8c04ff88
PTR_ce30b44:
    #data loc_8c052c84
PTR_ce30b48:
    #data PTR_ce34cb0
DAT_ce30b4c:
    #data 0x41d55555
DAT_ce30b50:
    #data 0xbf555555
DAT_ce30b54:
    #data 0xc1d55555
DAT_ce30b58:
    #data 0x3f555555

;=============================================

LAB_ce30b5c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30c44,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30b76
    lds.l @r15+,PR
    mov.l @(PTR_ce30c48,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30b76:
    mov.w @(DAT_ce30c3e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30b9a
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce30c4c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30c40,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b92
    mova @(DAT_ce30c50,pc),r0
    fmov.s @r0,fr4

LAB_ce30b92:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce30b9a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30ba0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30c44,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30bba
    lds.l @r15+,PR
    mov.l @(PTR_ce30c48,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30bba:
    mov.w @(DAT_ce30c3e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30bde
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce30c4c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30c40,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30bd6
    mova @(DAT_ce30c50,pc),r0
    fmov.s @r0,fr4

LAB_ce30bd6:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce30bde:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30be4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30c44,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30bfe
    lds.l @r15+,PR
    mov.l @(PTR_ce30c48,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30bfe:
    mov.w @(DAT_ce30c3e,pc),r0
    fldi0 fr3
    mov.b @(r0,r14),r3
    lds r3,FPUL
    float FPUL,fr4
    fcmp/gt fr3,fr4
    bf LAB_ce30c2e
    ftrc fr4,FPUL
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov.l @(PTR_ce30c54,pc),r0
    sts FPUL,r3
    shll2 r3
    fmov.s @(r0,r3),fr4
    mov.w @(DAT_ce30c40,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce30c26
    mov 0x34,r0
    fneg fr4

LAB_ce30c26:
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    bra LAB_ce30c38
    fmov fr3,@(r0,r14)

LAB_ce30c2e:
    mov 0x5C,r0
    fmov fr3,fr4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)

LAB_ce30c38:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c3e:
    #data 0x0141
DAT_ce30c40:
    #data 0x01d2
    #align4

PTR_ce30c44:
    #data loc_8c034dee
PTR_ce30c48:
    #data FUN_ce348a0
DAT_ce30c4c:
    #data 0x42555555
DAT_ce30c50:
    #data 0xc2555555
PTR_ce30c54:
    #data DAT_ce34cc8

;=============================================

LAB_ce30c58:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30cd6
    mov.l @(PTR_ce30d1c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30d16,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce30c9c
    mov 0x00,r4
    mov.b @(r0,r14),r3
    add 0x56,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30d20,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce30d16,pc),r0
    mov.b r4,@(r0,r14)

LAB_ce30c9c:
    mov.w @(DAT_ce30d18,pc),r0
    mov.b @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce30cb6
    mov.b r4,@(r0,r14)
    mov 0x01,r0
    mov.l @(PTR_ce30d24,pc),r4
    mov 0x30,r5
    mov.l @(PTR_ce30d28,pc),r3
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x6,r4)
    jsr @r3
    mov r14,r4

LAB_ce30cb6:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce30cec
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce30d2c,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x07,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30cd6:
    mov.l @(PTR_ce30d1c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30cec
    lds.l @r15+,PR
    mov.l @(PTR_ce30d30,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30cec:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30cf2:
    sts.l PR,@-r15
    mov.l @(PTR_ce30d34,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    bra LAB_ce30a3e
    lds.l @r15+,PR

LAB_ce30d02:
    mov.w @(DAT_ce30d1a,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30d38,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d16:
    #data 0x014b
DAT_ce30d18:
    #data 0x0140
DAT_ce30d1a:
    #data 0x01ff
    #align4

PTR_ce30d1c:
    #data loc_8c034dee
PTR_ce30d20:
    #data loc_8c2896b0
PTR_ce30d24:
    #data loc_8c26a518
PTR_ce30d28:
    #data loc_8c04223a
PTR_ce30d2c:
    #data loc_8c034e8c
PTR_ce30d30:
    #data FUN_ce348a0
PTR_ce30d34:
    #data loc_8c0511e2
PTR_ce30d38:
    #data PTR_ce34cdc

;=============================================

LAB_ce30d3c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s LAB_ce30d92
    mov 0x00,r13
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce30e48,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30e4c,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30e3e,pc),r0
    mov 0x78,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30e50,pc),r3
    mov 0x17,r6
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce30e54,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30d92:
    mov.w @(DAT_ce30e40,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30da2
    mov.l @(PTR_ce30e58,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30da2:
    mov 0x5C,r1
    mov.l @(PTR_ce30e5c,pc),r3
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
    mov.l @(PTR_ce30e60,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30df8
    lds.l @r15+,PR
    mov.l @(PTR_ce30e64,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30df8:
    mov.w @(DAT_ce30e42,pc),r0
    mov.b @(r0,r14),r2
    cmp/pl r2
    bf LAB_ce30e24
    mov.b @(r0,r14),r3
    mova @(DAT_ce30e68,pc),r0
    fmov.s @r0,fr2
    lds r3,FPUL
    mov.w @(DAT_ce30e44,pc),r0
    float FPUL,fr3
    mov.w @(r0,r14),r3
    tst r3,r3
    fmov fr3,fr4
    bt/s LAB_ce30e18
    fmul fr2,fr4
    fneg fr4

LAB_ce30e18:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce30e42,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce30e24:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30e2c:
    mov r4,r3
    mov.l @(PTR_ce30e6c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e3e:
    #data 0x01f9
DAT_ce30e40:
    #data 0x01ff
DAT_ce30e42:
    #data 0x0140
DAT_ce30e44:
    #data 0x0130
    #align4

PTR_ce30e48:
    #data loc_8c052b4c
PTR_ce30e4c:
    #data loc_8c056de4
PTR_ce30e50:
    #data loc_8c2896b0
PTR_ce30e54:
    #data loc_8c034e8c
PTR_ce30e58:
    #data loc_8c0511e2
PTR_ce30e5c:
    #data loc_8c052c84
PTR_ce30e60:
    #data loc_8c034dee
PTR_ce30e64:
    #data FUN_ce348a0
DAT_ce30e68:
    #data 0x3fd55555
PTR_ce30e6c:
    #data PTR_ce34cec

;=============================================

LAB_ce30e70:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fa8,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30fa2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30eac
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x18,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce30fac,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce30fb0,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce30fa4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30ea4
    mova @(DAT_ce30fb4,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce30fb8,pc),r0
    fmov.s @r0,fr5

LAB_ce30ea4:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)

LAB_ce30eac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30eb2:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30fa8,pc),r3
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
    cmp/pz r0
    bt LAB_ce30f2a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce30fbc,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce30fa4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30f18
    mova @(DAT_ce30fc0,pc),r0
    fmov.s @r0,fr4

LAB_ce30f18:
    mov 0x02,r6
    mov.l @(PTR_ce30fc4,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr4,@(r0,r14)
    mov r6,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f2a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f30:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30fa8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30f4a
    lds.l @r15+,PR
    mov.l @(PTR_ce30fc8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30f4a:
    mov.w @(DAT_ce30fa2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30f8a
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

LAB_ce30f8a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30f90:
    mov r4,r3
    mov.l @(PTR_ce30fcc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fa2:
    #data 0x0141
DAT_ce30fa4:
    #data 0x01d2
    #align4

PTR_ce30fa8:
    #data loc_8c034dee
DAT_ce30fac:
    #data 0xc17d5555
DAT_ce30fb0:
    #data 0x3ea00000
DAT_ce30fb4:
    #data 0x417d5555
DAT_ce30fb8:
    #data 0xbea00000
DAT_ce30fbc:
    #data 0x3f055555
DAT_ce30fc0:
    #data 0xbf055555
PTR_ce30fc4:
    #data loc_8c034e8c
PTR_ce30fc8:
    #data FUN_ce348a0
PTR_ce30fcc:
    #data PTR_ce34cf8

;=============================================

LAB_ce30fd0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31108,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31102,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3100c
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x18,r0
    mov.w r0,@(0x1c,r14)
    mova @(DAT_ce3110c,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce31110,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce31104,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31004
    mova @(DAT_ce31114,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce31118,pc),r0
    fmov.s @r0,fr5

LAB_ce31004:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)

LAB_ce3100c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31012:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31108,pc),r3
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
    cmp/pz r0
    bt LAB_ce3108a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce3111c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31104,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31078
    mova @(DAT_ce31120,pc),r0
    fmov.s @r0,fr4

LAB_ce31078:
    mov.l @(PTR_ce31124,pc),r3
    mov 0x68,r0
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    mov 0x03,r6
    mov 0x02,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3108a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31090:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31108,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce310aa
    lds.l @r15+,PR
    mov.l @(PTR_ce31128,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce310aa:
    mov.w @(DAT_ce31102,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce310ea
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

LAB_ce310ea:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310f0:
    mov r4,r3
    mov.l @(PTR_ce3112c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31102:
    #data 0x0141
DAT_ce31104:
    #data 0x01d2
    #align4

PTR_ce31108:
    #data loc_8c034dee
DAT_ce3110c:
    #data 0x417d5555
DAT_ce31110:
    #data 0xbea00000
DAT_ce31114:
    #data 0xc17d5555
DAT_ce31118:
    #data 0x3ea00000
DAT_ce3111c:
    #data 0xbf055555
DAT_ce31120:
    #data 0x3f055555
PTR_ce31124:
    #data loc_8c034e8c
PTR_ce31128:
    #data FUN_ce348a0
PTR_ce3112c:
    #data PTR_ce34d04

;=============================================

LAB_ce31130:
    mov.w @(DAT_ce3124a,pc),r0
    mov 0x00,r3
    mov.w @(DAT_ce3124c,pc),r2
    mov 0x02,r5
    mov.b r3,@(r0,r4)
    add 0x1D,r0
    mov.b r2,@(r0,r4)
    mov.l @(PTR_ce31254,pc),r2
    mov.b @r2,r3
    extu.b r3,r3
    cmp/ge r5,r3
    bf LAB_ce311b0
    mov.b @(0x6,r4),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3124a,pc),r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce3124e,pc),r0
    mov.b r5,@(r0,r4)
    mov 0x20,r0
    mov.w r0,@(0x1c,r4)
    mov 0x34,r0
    fmov.s @(r0,r4),fr3
    mov 0x64,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce31258,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce3125c,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce31250,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3117c
    mova @(DAT_ce31260,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce31264,pc),r0
    fmov.s @r0,fr5

LAB_ce3117c:
    mov 0x34,r0
    mov.l @(PTR_ce31270,pc),r3
    fmov.s @(r0,r4),fr3
    mov 0x00,r6
    fadd fr4,fr3
    fldi0 fr4
    fmov fr3,@(r0,r4)
    mov 0x5C,r0
    fmov fr5,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce31268,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce31252,pc),r0
    fmov.s @(r0,r4),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mova @(DAT_ce3126c,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    jmp @r3
    mov 0x12,r5

LAB_ce311b0:
    rts
    nop

LAB_ce311b4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31274,pc),r3
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
    mov.w @(DAT_ce31252,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31244
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x31,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3124e,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x64,r0
    fmov.s @(r0,r14),fr3
    mov 0x34,r0
    mov.l @(PTR_ce31278,pc),r3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31252,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3127c,pc),r2
    mov 0x00,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce31280,pc),r5
    mov 0x01,r0
    mov.l @(PTR_ce31270,pc),r3
    mov r14,r4
    mov.b r0,@(0x5,r5)
    mov r0,r6
    mov.b r0,@(0x6,r5)
    mov 0x12,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31244:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3124a:
    #data 0x012c
DAT_ce3124c:
    #data 0x00ff
DAT_ce3124e:
    #data 0x01f9
DAT_ce31250:
    #data 0x0130
DAT_ce31252:
    #data 0x041c
    #align4

PTR_ce31254:
    #data loc_8c2895f0
DAT_ce31258:
    #data 0xc4200000
DAT_ce3125c:
    #data 0x41a00000
DAT_ce31260:
    #data 0x44200000
DAT_ce31264:
    #data 0xc1a00000
DAT_ce31268:
    #data 0x44092492
DAT_ce3126c:
    #data 0xc1892492
PTR_ce31270:
    #data loc_8c034e8c
PTR_ce31274:
    #data loc_8c034dee
PTR_ce31278:
    #data loc_8c04223a
PTR_ce3127c:
    #data loc_8c0c1a18
PTR_ce31280:
    #data loc_8c26a518

;=============================================

LAB_ce31284:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31358,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3129a
    mov.b @(0x5,r14),r0
    add 0x01,r0
    mov.b r0,@(0x5,r14)

LAB_ce3129a:
    mov.w @(DAT_ce31354,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce312b2
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x01,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce3135c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce312b2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312b8:
    mov.b @(0x6,r4),r0
    tst r0,r0
    bt LAB_ce312c2
    bra LAB_ce312fc
    nop

LAB_ce312c2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r4
    mov.l @(PTR_ce31360,pc),r0
    extu.b r4,r6
    extu.b r4,r4
    tst r4,r4
    bf/s LAB_ce312f0
    mov.b @(r0,r6),r6
    mov.l @(PTR_ce31364,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce31368,pc),r1
    and 0x03,r0
    mov.b @(r0,r1),r6
    mov.w @(DAT_ce31356,pc),r0
    extu.b r6,r3
    mov.l r3,@(r0,r14)

LAB_ce312f0:
    lds.l @r15+,PR
    mov.l @(PTR_ce3136c,pc),r3
    mov 0x13,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce312fc:
    mov.l r14,@-r15
    mov 0x20,r0
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3131a
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31316
    bra LAB_ce31448
    nop

LAB_ce31316:
    bra LAB_ce3145c
    nop

LAB_ce3131a:
    mov.w @(DAT_ce31356,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x03,r0
    bt LAB_ce31380
    mov.l @(PTR_ce31370,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce31330
    bra LAB_ce31452
    nop

LAB_ce31330:
    mov.w @(DAT_ce31354,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce3133c
    bra LAB_ce3145c
    nop

LAB_ce3133c:
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce31374,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce31378,pc),r0
    mov.l @(PTR_ce3137c,pc),r3
    mov 0x01,r5
    fmov.s @r0,fr4
    jsr @r3
    mov r14,r4
    bra LAB_ce3145c
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31354:
    #data 0x0141
DAT_ce31356:
    #data 0x02b8
    #align4

PTR_ce31358:
    #data loc_8c034dee
PTR_ce3135c:
    #data loc_8c0c1a18
PTR_ce31360:
    #data DAT_ce34d14
PTR_ce31364:
    #data loc_8c03319e
PTR_ce31368:
    #data DAT_ce34d10
PTR_ce3136c:
    #data loc_8c034e8c
PTR_ce31370:
    #data loc_8c046c8a
DAT_ce31374:
    #data 0x42be0000
DAT_ce31378:
    #data 0xc2080000
PTR_ce3137c:
    #data loc_8c06cffc

;=============================================

LAB_ce31380:
    mov.b @(0x7,r14),r0
    tst r0,r0
    bf LAB_ce313b8
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce314b8,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce314b0,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3139c
    mova @(DAT_ce314bc,pc),r0
    fmov.s @r0,fr4

LAB_ce3139c:
    mov 0x5C,r0
    fldi0 fr3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce314c0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce314c4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    bra LAB_ce31466
    fmov fr3,@(r0,r14)

LAB_ce313b8:
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce31448
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
    mov.w @(DAT_ce314b2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3145c
    mov.b @(0x7,r14),r0
    mov 0x01,r7
    mov.l @(PTR_ce314c8,pc),r3
    mov 0x00,r5
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce314b2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x2,r14),r0
    extu.b r0,r6
    add 0x14,r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce314cc,pc),r2
    jsr @r2
    nop
    mov.l @(PTR_ce314d0,pc),r1
    and 0x07,r0
    mov.l @(PTR_ce314d4,pc),r3
    mov 0x13,r5
    mov.b @(r0,r1),r6
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce314d8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce314dc,pc),r3
    mov 0x10,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31448:
    mov.l @(PTR_ce314e0,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce3145c

LAB_ce31452:
    lds.l @r15+,PR
    mov.l @(PTR_ce314e4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3145c:
    lds.l @r15+,PR
    mov.l @(PTR_ce314e8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31466:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3146c:
    mov.w @(DAT_ce314b4,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce314ec,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31480:
    mov.l @(PTR_ce314e4,pc),r3
    jmp @r3
    nop

LAB_ce31486:
    mov.l @(PTR_ce314e4,pc),r3
    jmp @r3
    nop

LAB_ce3148c:
    mov.l @(PTR_ce314e4,pc),r3
    jmp @r3
    nop

LAB_ce31492:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce314f0,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce314f4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce314b0:
    #data 0x0130
DAT_ce314b2:
    #data 0x041c
DAT_ce314b4:
    #data 0x01e9
    #align4

DAT_ce314b8:
    #data 0x40a00000
DAT_ce314bc:
    #data 0xc0a00000
DAT_ce314c0:
    #data 0x41bc9249
DAT_ce314c4:
    #data 0xbf809249
PTR_ce314c8:
    #data loc_8c03544c
PTR_ce314cc:
    #data loc_8c03319e
PTR_ce314d0:
    #data DAT_ce34d19
PTR_ce314d4:
    #data loc_8c034e8c
PTR_ce314d8:
    #data FUN_ce34930
PTR_ce314dc:
    #data loc_8c042008
PTR_ce314e0:
    #data loc_8c046c8a
PTR_ce314e4:
    #data FUN_ce348a0
PTR_ce314e8:
    #data loc_8c034dee
PTR_ce314ec:
    #data PTR_ce34d24
PTR_ce314f0:
    #data PTR_ce34d98
PTR_ce314f4:
    #data LAB_ce34980

;=============================================

LAB_ce314f8:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31624,pc),r3
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
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3161c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31532
    mov.w @(DAT_ce3161c,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce31628,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce31532:
    mov.l @(PTR_ce3162c,pc),r2
    mov 0x10,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3161e,pc),r0
    mov.l @(PTR_ce31630,pc),r3
    mov.b @(r0,r14),r4
    add 0x8D,r0
    mov.w @(r0,r14),r2
    extu.b r4,r4
    shll r4
    shll2 r4
    add r3,r4
    fmov.s @r4+,fr4
    tst r2,r2
    bt/s LAB_ce31558
    fmov.s @r4,fr5
    fneg fr5
    fneg fr4

LAB_ce31558:
    mov 0x5C,r0
    mov.l @(PTR_ce31634,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)
    mov r14,r4
    mov.w @(DAT_ce3161e,pc),r0
    mov 0x15,r5
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31574:
    mov.w @(DAT_ce31620,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce31582
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)

LAB_ce31582:
    mov.l @(PTR_ce31638,pc),r3
    jmp @r3
    nop

LAB_ce31588:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31638,pc),r3
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
    mov.w @(DAT_ce31620,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31616
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x02,r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31620,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3161c,pc),r0
    mov.b r2,@(r0,r14)
    mova @(DAT_ce3163c,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce31640,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce31622,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce315fe
    mova @(DAT_ce31644,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce31648,pc),r0
    fmov.s @r0,fr5

LAB_ce315fe:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce3164c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)
    mova @(DAT_ce31650,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31616:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3161c:
    #data 0x01f9
DAT_ce3161e:
    #data 0x01a3
DAT_ce31620:
    #data 0x0141
DAT_ce31622:
    #data 0x0130
    #align4

PTR_ce31624:
    #data loc_8c05218a
PTR_ce31628:
    #data loc_8c05115a
PTR_ce3162c:
    #data loc_8c056de4
PTR_ce31630:
    #data DAT_ce34dac
PTR_ce31634:
    #data loc_8c034e8c
PTR_ce31638:
    #data loc_8c034dee
DAT_ce3163c:
    #data 0xc1200000
DAT_ce31640:
    #data 0x3f200000
DAT_ce31644:
    #data 0x41200000
DAT_ce31648:
    #data 0xbf200000
DAT_ce3164c:
    #data 0x414db6db
DAT_ce31650:
    #data 0xbf4db6db

;=============================================

LAB_ce31654:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x60,r0
    fldi0 fr3
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce3166c
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce3166c:
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
    mov.w @(DAT_ce3173e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce316ba
    lds.l @r15+,PR
    mov.l @(PTR_ce31744,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce316ba:
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31740,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3173e,pc),r0
    mov.l @(PTR_ce31748,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31742,pc),r0
    mov.b @(r0,r14),r6
    add 0x03,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3174c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce316e6:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31744,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31700
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31750,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31700:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31708:
    mov.l @(PTR_ce31750,pc),r3
    jmp @r3
    nop

LAB_ce3170e:
    mov.l @(PTR_ce31750,pc),r3
    jmp @r3
    nop

LAB_ce31714:
    mov.l @(PTR_ce31750,pc),r3
    jmp @r3
    nop

LAB_ce3171a:
    mov.l @(PTR_ce31750,pc),r3
    jmp @r3
    nop

LAB_ce31720:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce31754,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce31758,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3173e:
    #data 0x041c
DAT_ce31740:
    #data 0x01f9
DAT_ce31742:
    #data 0x01a3
    #align4

PTR_ce31744:
    #data loc_8c034dee
PTR_ce31748:
    #data loc_8c034e8c
PTR_ce3174c:
    #data FUN_ce34930
PTR_ce31750:
    #data FUN_ce348a0
PTR_ce31754:
    #data PTR_ce34dc4
PTR_ce31758:
    #data LAB_ce34980

;=============================================

LAB_ce3175c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31864,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31868,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce3186c,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3185a,pc),r0
    mov.l @(PTR_ce31870,pc),r4
    mov.b @(r0,r14),r2
    mova @(DAT_ce31874,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce3185c,pc),r0
    extu.b r2,r2
    shll r2
    mov.w @(r0,r14),r3
    shll2 r2
    add r4,r2
    tst r3,r3
    bt/s LAB_ce3179e
    fmov.s @r2,fr4
    mova @(DAT_ce31878,pc),r0
    fneg fr4
    fmov.s @r0,fr5

LAB_ce3179e:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)
    mov 0x15,r5
    mov.w @(DAT_ce3185a,pc),r0
    mov.b @(r0,r14),r3
    mov 0x0C,r0
    extu.b r3,r3
    shll r3
    shll2 r3
    add r3,r4
    mov.l @(PTR_ce31880,pc),r3
    fmov.s @(r0,r4),fr3
    mov 0x60,r0
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3187c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3185a,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x12,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce317d8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31884,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3185e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce317fa
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31888,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce317fa:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31800:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce31890
    mov r4,r14
    mov.w @(DAT_ce3185e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31816
    mov.l @(PTR_ce31884,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce31816:
    mov.w @(DAT_ce31860,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31832
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31868,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31832:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31838:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31884,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31852
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce3188c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31852:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3185a:
    #data 0x01a3
DAT_ce3185c:
    #data 0x0130
DAT_ce3185e:
    #data 0x0141
DAT_ce31860:
    #data 0x041c
    #align4

PTR_ce31864:
    #data loc_8c05115a
PTR_ce31868:
    #data FUN_ce3495c
PTR_ce3186c:
    #data loc_8c056de4
PTR_ce31870:
    #data DAT_ce34dd4
DAT_ce31874:
    #data 0x3f3aaaaa
DAT_ce31878:
    #data 0xbf3aaaaa
DAT_ce3187c:
    #data 0xbf892492
PTR_ce31880:
    #data loc_8c034e8c
PTR_ce31884:
    #data loc_8c034dee
PTR_ce31888:
    #data loc_8c053082
PTR_ce3188c:
    #data FUN_ce348a0

;=============================================

FUN_ce31890:
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    mov 0x5C,r0
    fmov.s @(r0,r4),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf LAB_ce318bc
    mov 0x5C,r1
    add r4,r1
    mov 0x34,r0
    fmov.s @r1,fr2
    fmov.s @(r0,r4),fr1
    mov 0x68,r1
    add r4,r1
    fadd fr2,fr1
    fmov fr1,@(r0,r4)
    mov 0x5C,r0
    fmov.s @(r0,r4),fr1
    fmov.s @r1,fr2
    fadd fr2,fr1
    fmov fr1,@(r0,r4)

LAB_ce318bc:
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
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce318e6
    fmov fr2,@(r0,r4)
    mova @(DAT_ce319b4,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r4)

LAB_ce318e6:
    rts
    nop

LAB_ce318ea:
    mov.l @(PTR_ce319b8,pc),r3
    jmp @r3
    nop

LAB_ce318f0:
    mov.l @(PTR_ce319b8,pc),r3
    jmp @r3
    nop

LAB_ce318f6:
    mov r4,r3
    mov.l @(PTR_ce319bc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31908:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce319c0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce319aa,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce31930
    mov.w @(DAT_ce319aa,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce319c4,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce31930:
    mov.w @(DAT_ce319ac,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce319c8,pc),r3
    mov 0x01,r5
    mov.l r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce319cc,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce319d0,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce319ae,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31960
    mova @(DAT_ce319d4,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce319d8,pc),r0
    fmov.s @r0,fr5

LAB_ce31960:
    mov 0x5C,r0
    mov.l @(PTR_ce319dc,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    mov r14,r4
    fmov fr5,@(r0,r14)
    lds.l @r15+,PR
    mov 0x16,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31976:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce319e0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce319b0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce319a4
    mov.b @(0x6,r14),r0
    mov 0x04,r3
    mov 0x00,r5
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce319b2,pc),r0
    mov.l r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce319e4,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce319a4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce319aa:
    #data 0x01f9
DAT_ce319ac:
    #data 0x02bc
DAT_ce319ae:
    #data 0x01d2
DAT_ce319b0:
    #data 0x0141
DAT_ce319b2:
    #data 0x02c8
    #align4

DAT_ce319b4:
    #data 0xc0092492
PTR_ce319b8:
    #data FUN_ce348a0
PTR_ce319bc:
    #data PTR_ce34dec
PTR_ce319c0:
    #data loc_8c05218a
PTR_ce319c4:
    #data loc_8c05115a
PTR_ce319c8:
    #data loc_8c056de4
DAT_ce319cc:
    #data 0xc1855555
DAT_ce319d0:
    #data 0x3ea00000
DAT_ce319d4:
    #data 0x41855555
DAT_ce319d8:
    #data 0xbea00000
PTR_ce319dc:
    #data loc_8c034e8c
PTR_ce319e0:
    #data loc_8c034dee
PTR_ce319e4:
    #data loc_8c0c1d30

;=============================================

LAB_ce319e8:
    mov.w @(DAT_ce31af0,pc),r0
    mov 0x04,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l r13,@-r15
    add r14,r1
    sts.l PR,@-r15
    mov.l r3,@(r0,r14)
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
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov.l @(PTR_ce31b00,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce31a9e
    mova @(DAT_ce31b04,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce31af2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31a50
    mova @(DAT_ce31b08,pc),r0
    fmov.s @r0,fr4

LAB_ce31a50:
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31af4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s LAB_ce31a90
    mov r14,r4
    mov 0x04,r0
    fldi0 fr4
    mov.b r0,@(0x6,r14)
    mov 0x00,r3
    mov.w @(DAT_ce31af0,pc),r0
    mov 0x09,r6
    mov.l r3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce31b0c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    bra LAB_ce31a94
    mov 0x01,r5

LAB_ce31a90:
    mov 0x15,r5
    mov 0x17,r6

LAB_ce31a94:
    lds.l @r15+,PR
    mov.l @(PTR_ce31b10,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a9e:
    mov.l @(PTR_ce31b14,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce31ae8
    mov r0,r13
    mov.w @(DAT_ce31af0,pc),r0
    mov 0x10,r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce31af6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31ace
    mov.w @(DAT_ce31af8,pc),r1
    mov r13,r5
    mov.b @(0x1,r13),r0
    mov.l @(PTR_ce31b18,pc),r3
    add r14,r1
    extu.b r0,r0
    mov.l r0,@r1
    jsr @r3
    mov r14,r4
    bra LAB_ce31ad4
    nop

LAB_ce31ace:
    mov.w @(DAT_ce31afa,pc),r0
    mov 0x00,r3
    mov.l r3,@(r0,r14)

LAB_ce31ad4:
    mov r13,r5
    mov.w @(DAT_ce31afc,pc),r2
    mov.w @(DAT_ce31afe,pc),r0
    mov r14,r4
    mov.l @(PTR_ce31b1c,pc),r3
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ae8:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31af0:
    #data 0x02c8
DAT_ce31af2:
    #data 0x01d2
DAT_ce31af4:
    #data 0x01f9
DAT_ce31af6:
    #data 0x0411
DAT_ce31af8:
    #data 0x02a8
DAT_ce31afa:
    #data 0x00cc
DAT_ce31afc:
    #data 0x00c0
DAT_ce31afe:
    #data 0x01f7
    #align4

PTR_ce31b00:
    #data loc_8c034dee
DAT_ce31b04:
    #data 0x3f055555
DAT_ce31b08:
    #data 0xbf055555
DAT_ce31b0c:
    #data 0xbf4db6db
PTR_ce31b10:
    #data loc_8c034e8c
PTR_ce31b14:
    #data loc_8c045790
PTR_ce31b18:
    #data FUN_ce34580
PTR_ce31b1c:
    #data loc_8c0522e0

;=============================================

LAB_ce31b20:
    mov.w @(DAT_ce31c5a,pc),r0
    mov 0x04,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l r3,@(r0,r14)
    mov.l @(PTR_ce31c64,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31b7a
    mov.w @(DAT_ce31c5c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31b8a
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
    bra LAB_ce31b8a
    fmov fr2,@(r0,r14)

LAB_ce31b7a:
    mov.w @(DAT_ce31c5a,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce31c68,pc),r3
    mov r14,r4
    mov.l r2,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b8a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31b90:
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
    mov.w @(DAT_ce31c5e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31be4
    lds.l @r15+,PR
    mov.l @(PTR_ce31c64,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31be4:
    mov.w @(DAT_ce31c5e,pc),r0
    mov 0x00,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31c60,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31c6c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31c68,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31c02:
    mov r4,r3
    mov.l @(PTR_ce31c70,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31c14:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31c74,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce31c60,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce31c78,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31c7c,pc),r2
    mov 0x05,r5
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
    mov.l @(PTR_ce31c80,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    mov 0x1A,r6
    lds.l @r15+,PR
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31c5a:
    #data 0x02c8
DAT_ce31c5c:
    #data 0x0141
DAT_ce31c5e:
    #data 0x041c
DAT_ce31c60:
    #data 0x01f9
    #align4

PTR_ce31c64:
    #data loc_8c034dee
PTR_ce31c68:
    #data FUN_ce348a0
PTR_ce31c6c:
    #data FUN_ce34930
PTR_ce31c70:
    #data PTR_ce34e00
PTR_ce31c74:
    #data loc_8c05218a
PTR_ce31c78:
    #data loc_8c05115a
PTR_ce31c7c:
    #data loc_8c056de4
PTR_ce31c80:
    #data loc_8c034e8c

;=============================================

LAB_ce31c84:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31d8c,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31cc4
    mov.l @(PTR_ce31d90,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce31cb0
    mov r0,r5
    mov.w @(DAT_ce31d84,pc),r0
    mov r14,r4
    mov.w @(DAT_ce31d82,pc),r3
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce31d94,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31cb0:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31d98,pc),r3
    mov 0x1B,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31cc4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce31cca:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31d8c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31ce4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce31d9c,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce31ce4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce31cec:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce31da0,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce31da4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d0a:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r3
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31d86,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31da8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31dac,pc),r2
    jsr @r2
    mov r14,r4
    bsr FUN_ce31f32
    mov r14,r4
    mov.l @(PTR_ce31db0,pc),r2
    mov 0x10,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce31d88,pc),r0
    mov r14,r4
    mov.l @(PTR_ce31db4,pc),r1
    mov 0x15,r5
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce31d98,pc),r3
    extu.b r0,r0
    shll r0
    mov.b @(r0,r1),r0
    extu.b r0,r0
    mov.w r0,@(0x1c,r14)
    mov 0x00,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce31d88,pc),r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x32,r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d5e:
    mov.w @(DAT_ce31d8a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31d78
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce31db8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

LAB_ce31d78:
    lds.l @r15+,PR
    mov.l @(PTR_ce31d8c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31d82:
    #data 0x00c1
DAT_ce31d84:
    #data 0x01f7
DAT_ce31d86:
    #data 0x01f9
DAT_ce31d88:
    #data 0x01a3
DAT_ce31d8a:
    #data 0x0141
    #align4

PTR_ce31d8c:
    #data loc_8c034dee
PTR_ce31d90:
    #data loc_8c045790
PTR_ce31d94:
    #data loc_8c0522e0
PTR_ce31d98:
    #data loc_8c034e8c
PTR_ce31d9c:
    #data FUN_ce348a0
PTR_ce31da0:
    #data PTR_ce34e0c
PTR_ce31da4:
    #data LAB_ce34980
PTR_ce31da8:
    #data loc_8c05115a
PTR_ce31dac:
    #data FUN_ce3495c
PTR_ce31db0:
    #data loc_8c056de4
PTR_ce31db4:
    #data DAT_ce34e20
PTR_ce31db8:
    #data loc_8c053082

;=============================================

LAB_ce31dbc:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31f00,pc),r3
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
    bt LAB_ce31e3e
    mov.w @(0x1c,r14),r0
    tst r0,r0
    bt LAB_ce31e24
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce31e24
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    mov 0x00,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(DAT_ce31ef6,pc),r0
    mov.b @(r0,r14),r6
    bra LAB_ce31e32
    add 0x07,r6

LAB_ce31e24:
    mov 0x03,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31ef8,pc),r0
    mov.b @(r0,r14),r6
    extu.b r6,r6
    shll r6
    add 0x09,r6

LAB_ce31e32:
    lds.l @r15+,PR
    mov.l @(PTR_ce31f04,pc),r3
    mov 0x15,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31e3e:
    mov.w @(DAT_ce31efa,pc),r0
    mov.b @(r0,r14),r3
    cmp/pl r3
    bf LAB_ce31e52
    mov 0x00,r2
    mov r14,r4
    mov.b r2,@(r0,r14)
    lds.l @r15+,PR
    bra FUN_ce31f32
    mov.l @r15+,r14

LAB_ce31e52:
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce31e66
    mov.l @(PTR_ce31f08,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt LAB_ce31e66
    mov.w @(DAT_ce31efc,pc),r0
    mov.w r0,@(0x1e,r14)

LAB_ce31e66:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e6c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31f00,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31e9c
    mov.b @(0x6,r14),r0
    fldi0 fr3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31f0c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31f10,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce31e9c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31ea2:
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
    mov.w @(DAT_ce31efe,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce31f14
    lds.l @r15+,PR
    mov.l @(PTR_ce31f00,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ef6:
    #data 0x0140
DAT_ce31ef8:
    #data 0x01a3
DAT_ce31efa:
    #data 0x0141
DAT_ce31efc:
    #data 0x00ff
DAT_ce31efe:
    #data 0x041c
    #align4

PTR_ce31f00:
    #data loc_8c034dee
PTR_ce31f04:
    #data loc_8c034e8c
PTR_ce31f08:
    #data loc_8c055d54
DAT_ce31f0c:
    #data 0xc0892492
DAT_ce31f10:
    #data 0xbf892492

;=============================================

LAB_ce31f14:
    mov.w @(DAT_ce31fec,pc),r0
    mov 0x00,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31fee,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31ff4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31ff8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;=============================================

FUN_ce31f32:
    mova @(DAT_ce31ffc,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce32000,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce31ff0,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31f4a
    mova @(DAT_ce32004,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce32008,pc),r0
    fmov.s @r0,fr5

LAB_ce31f4a:
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce3200c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov fr5,@(r0,r4)
    mova @(DAT_ce32010,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    rts
    fmov fr3,@(r0,r4)

LAB_ce31f64:
    mov.l @(PTR_ce31ff8,pc),r3
    jmp @r3
    nop

LAB_ce31f6a:
    mov.l @(PTR_ce31ff8,pc),r3
    jmp @r3
    nop

LAB_ce31f70:
    mov.l @(PTR_ce31ff8,pc),r3
    jmp @r3
    nop

LAB_ce31f76:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce32014,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce32018,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31f94:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3201c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32020,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce32024,pc),r3
    mov 0x05,r5
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
    mov 0x00,r3
    mov.w @(DAT_ce31fee,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce31fec,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31ff2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce31fe0
    mov 0x21,r6
    mov 0x30,r6

LAB_ce31fe0:
    lds.l @r15+,PR
    mov.l @(PTR_ce32028,pc),r3
    mov 0x15,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31fec:
    #data 0x041c
DAT_ce31fee:
    #data 0x01f9
DAT_ce31ff0:
    #data 0x0130
DAT_ce31ff2:
    #data 0x01a3
    #align4

PTR_ce31ff4:
    #data FUN_ce34930
PTR_ce31ff8:
    #data FUN_ce348a0
DAT_ce31ffc:
    #data 0xc1555555
DAT_ce32000:
    #data 0x3ed55555
DAT_ce32004:
    #data 0x41555555
DAT_ce32008:
    #data 0xbed55555
DAT_ce3200c:
    #data 0x414db6db
DAT_ce32010:
    #data 0xbf092492
PTR_ce32014:
    #data PTR_ce34e24
PTR_ce32018:
    #data LAB_ce34980
PTR_ce3201c:
    #data loc_8c05218a
PTR_ce32020:
    #data loc_8c05115a
PTR_ce32024:
    #data loc_8c056de4
PTR_ce32028:
    #data loc_8c034e8c

;=============================================

LAB_ce3202c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32174,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce3216c,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32090
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32178,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(DAT_ce3217c,pc),r1
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    mov.l @(PTR_ce32180,pc),r4
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce3216e,pc),r0
    mov.b @(r0,r14),r3
    add 0x8D,r0
    mov.w @(r0,r14),r2
    extu.b r3,r3
    shll2 r3
    tst r2,r2
    add r4,r3
    bt/s LAB_ce32070
    fmov.s @r3,fr4
    fneg fr4

LAB_ce32070:
    mov 0x5C,r0
    fldi0 fr3
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3216e,pc),r0
    mov.b @(r0,r14),r3
    mov 0x0C,r0
    extu.b r3,r3
    shll2 r3
    add r3,r4
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32090:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32096:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32174,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce32184,pc),r3
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
    bt LAB_ce32126
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3216e,pc),r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce32188,pc),r0
    extu.b r3,r3
    shll2 r3
    fmov.s @(r0,r3),fr4
    mov.w @(DAT_ce32170,pc),r0
    mov.w @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce3210c
    mov 0x68,r0
    fneg fr4

LAB_ce3210c:
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce3216e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce3211a
    mov 0x22,r6
    mov 0x31,r6

LAB_ce3211a:
    lds.l @r15+,PR
    mov.l @(PTR_ce3218c,pc),r3
    mov 0x15,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32126:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3212c:
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
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x68,r0
    fmov.s @(r0,r4),fr3
    mov 0x5C,r0
    fmov.s @(r0,r4),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf LAB_ce32168
    mov.b @(0x6,r4),r0
    fmov fr3,fr4
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)

LAB_ce32168:
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3216c:
    #data 0x0141
DAT_ce3216e:
    #data 0x01a3
DAT_ce32170:
    #data 0x0130
    #align4

PTR_ce32174:
    #data loc_8c034dee
PTR_ce32178:
    #data loc_8c053082
DAT_ce3217c:
    #data 0x42092492
PTR_ce32180:
    #data DAT_ce34e38
PTR_ce32184:
    #data loc_8c052ce2
PTR_ce32188:
    #data DAT_ce34e50
PTR_ce3218c:
    #data loc_8c034e8c

;=============================================

LAB_ce32190:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce322d0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321aa
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce322d4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce321aa:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce321b2:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce322d8,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce322dc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce321d0:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce322e0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce322e4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce322e8,pc),r3
    mov 0x05,r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce322ec,pc),r2
    jsr @r2
    mov r14,r4
    mov 0x02,r0
    mov.l @(PTR_ce322f0,pc),r1
    mov.w r0,@(0x1c,r14)
    mov 0x00,r4
    mov.w @(DAT_ce322c8,pc),r0
    mov 0x62,r3
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    mov.w @(r0,r1),r0
    mov.w r0,@(0x1e,r14)
    mov 0x20,r0
    mov.b r4,@(r0,r14)
    mov 0x21,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce322ca,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce322f4,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(DAT_ce322c8,pc),r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce322f8,pc),r0
    extu.b r2,r2
    shll2 r2
    fmov.s @(r0,r2),fr4
    mov.w @(DAT_ce322cc,pc),r0
    mov.w @(r0,r14),r1
    tst r1,r1
    bt/s LAB_ce3224e
    mov 0x5C,r0
    fneg fr4

LAB_ce3224e:
    mov.l @(PTR_ce322fc,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    mov 0x25,r6
    lds.l @r15+,PR
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3225e:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x5C,r1
    mov.l r13,@-r15
    add r14,r1
    mov.l @(PTR_ce322d0,pc),r3
    mov 0x34,r0
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
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32324
    mov 0x20,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce322b2
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    cmp/pz r0
    bf LAB_ce322aa
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)

LAB_ce322aa:
    mov 0x20,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce322ce,pc),r0
    mov.w r13,@(r0,r14)

LAB_ce322b2:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce32300
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bra LAB_ce32316
    mov 0x35,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce322c8:
    #data 0x01a3
DAT_ce322ca:
    #data 0x01a1
DAT_ce322cc:
    #data 0x0130
DAT_ce322ce:
    #data 0x0352
    #align4

PTR_ce322d0:
    #data loc_8c034dee
PTR_ce322d4:
    #data FUN_ce348a0
PTR_ce322d8:
    #data PTR_ce34e5c
PTR_ce322dc:
    #data LAB_ce34980
PTR_ce322e0:
    #data loc_8c05218a
PTR_ce322e4:
    #data loc_8c05115a
PTR_ce322e8:
    #data loc_8c056de4
PTR_ce322ec:
    #data FUN_ce3495c
PTR_ce322f0:
    #data DAT_ce34e74
PTR_ce322f4:
    #data loc_8c2896b0
PTR_ce322f8:
    #data DAT_ce34e68
PTR_ce322fc:
    #data loc_8c034e8c

;=============================================

LAB_ce32300:
    mov 0x21,r0
    mov.b @(r0,r14),r2
    mov 0x01,r3
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    mov.w @(0x1c,r14),r0
    cmp/eq 0x01,r0
    bf/s LAB_ce32316
    add 0x25,r6
    add 0x03,r6

LAB_ce32316:
    lds.l @r15+,PR
    mov.l @(PTR_ce32428,pc),r3
    mov r14,r4
    mov 0x15,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32324:
    mov.w @(DAT_ce3241e,pc),r3
    mov.w @(DAT_ce3241c,pc),r0
    add r14,r3
    mov.w @r3,r3
    mov.w @(r0,r14),r0
    extu.w r3,r3
    extu.w r0,r0
    or r3,r0
    tst 0x60,r0
    bt LAB_ce3233e
    mov 0x20,r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce3233e:
    mov.w @(DAT_ce32420,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3236c
    mov.w @(DAT_ce32422,pc),r0
    mov.l @(PTR_ce3242c,pc),r3
    mov.b @(r0,r14),r6
    add 0xF6,r0
    mov.b @(r0,r14),r5
    extu.b r6,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32422,pc),r0
    mov.l @(PTR_ce3242c,pc),r3
    mov.b @(r0,r14),r6
    add 0xF6,r0
    mov.b @(r0,r14),r5
    extu.b r6,r6
    add 0xFF,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32420,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce3236c:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32374:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32430,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3238e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32434,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3238e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32396:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce323c0
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x14,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x16,r6
    mov.w @(DAT_ce32424,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x3C,r0
    mov.l @(PTR_ce32428,pc),r3
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce323f4
    nop

LAB_ce323c0:
    mov.l @(PTR_ce32430,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32420,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce323e2
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce32438,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce3243c,pc),r0
    mov r3,r5
    mov.l @(PTR_ce32440,pc),r3
    fmov.s @r0,fr4
    jsr @r3
    mov r14,r4

LAB_ce323e2:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce323f4
    mov.l @(PTR_ce32434,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce323f4:
    lds.l @r15+,PR
    mov.l @(PTR_ce32444,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce323fe:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce32448,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce32444,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3241c:
    #data 0x0348
DAT_ce3241e:
    #data 0x0352
DAT_ce32420:
    #data 0x0141
DAT_ce32422:
    #data 0x014b
DAT_ce32424:
    #data 0x01f9
    #align4

PTR_ce32428:
    #data loc_8c034e8c
PTR_ce3242c:
    #data loc_8c0c1f90
PTR_ce32430:
    #data loc_8c034dee
PTR_ce32434:
    #data FUN_ce348a0
DAT_ce32438:
    #data 0x42be0000
DAT_ce3243c:
    #data 0xc2080000
PTR_ce32440:
    #data loc_8c06cffc
PTR_ce32444:
    #data LAB_ce34980
PTR_ce32448:
    #data PTR_ce34e7c

;=============================================

LAB_ce3244c:
    mov.w @(DAT_ce32556,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32468
    mov.w @(DAT_ce3255a,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32558,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32468:
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce3256c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3255c,pc),r0
    mov 0x00,r2
    mov.l @(PTR_ce32570,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3255e,pc),r0
    mov r14,r4
    mov.w @(DAT_ce32558,pc),r2
    mov 0x00,r6
    mov.l @(PTR_ce32574,pc),r3
    mov 0x16,r5
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce32560,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3249c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32562,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32564,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32556,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce324be
    bra LAB_ce324c0
    mov 0x02,r3

LAB_ce324be:
    mov 0x00,r3

LAB_ce324c0:
    mov.w @(DAT_ce32566,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32578,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce324f8
    mov.w @(DAT_ce3255a,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce32584,pc),r3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce3257c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32580,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce324f8:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32500:
    mov.w @(DAT_ce32562,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce32564,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce32574,pc),r3
    mov.b r2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov 0x18,r0
    fldi0 fr4
    mov.w r0,@(0x1c,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32588,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce3258c,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce32568,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32548
    mova @(DAT_ce32590,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce32594,pc),r0
    fmov.s @r0,fr5

LAB_ce32548:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32556:
    #data 0x0255
DAT_ce32558:
    #data 0x00ff
DAT_ce3255a:
    #data 0x03f0
DAT_ce3255c:
    #data 0x01f9
DAT_ce3255e:
    #data 0x02bc
DAT_ce32560:
    #data 0x041c
DAT_ce32562:
    #data 0x03f8
DAT_ce32564:
    #data 0x0328
DAT_ce32566:
    #data 0x03f1
DAT_ce32568:
    #data 0x01d2
    #align4

PTR_ce3256c:
    #data loc_8c05218a
PTR_ce32570:
    #data loc_8c05115a
PTR_ce32574:
    #data loc_8c034e8c
PTR_ce32578:
    #data loc_8c034dee
DAT_ce3257c:
    #data 0xc1e2aaaa
DAT_ce32580:
    #data 0x432d9249
PTR_ce32584:
    #data loc_8c050834
DAT_ce32588:
    #data 0xc1d55555
DAT_ce3258c:
    #data 0x3ed55555
DAT_ce32590:
    #data 0x41d55555
DAT_ce32594:
    #data 0xbed55555

;=============================================

LAB_ce32598:
    mov.w @(DAT_ce32696,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32698,pc),r0
    mov.l @(PTR_ce326a8,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3269a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce325f2
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

LAB_ce325f2:
    mov.w @(DAT_ce3269c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3260a
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce3265a
    bra LAB_ce3268e
    nop

LAB_ce3260a:
    mov.w @(DAT_ce3269e,pc),r0
    mov.l @(PTR_ce326ac,pc),r3
    mov.l @(r0,r14),r13
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce3265a
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce326b0,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce326b4,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce326a0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32636
    mova @(DAT_ce326b8,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce326bc,pc),r0
    fmov.s @r0,fr5

LAB_ce32636:
    mov 0x5C,r0
    fldi0 fr3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x00,r3
    mov.w @(DAT_ce326a2,pc),r0
    mov.b r3,@(r0,r13)
    mov.w @(DAT_ce326a4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r13)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fsub fr5,fr3
    fmov fr3,@(r0,r13)
    bra LAB_ce32680
    mov 0x03,r6

LAB_ce3265a:
    mov 0x06,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce326c0,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce326c4,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce326a0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32676
    mova @(DAT_ce326c8,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce326cc,pc),r0
    fmov.s @r0,fr5

LAB_ce32676:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    mov 0x02,r6
    fmov fr5,@(r0,r14)

LAB_ce32680:
    lds.l @r15+,PR
    mov.l @(PTR_ce326d0,pc),r3
    mov r14,r4
    mov 0x16,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3268e:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32696:
    #data 0x03f8
DAT_ce32698:
    #data 0x0328
DAT_ce3269a:
    #data 0x0141
DAT_ce3269c:
    #data 0x019e
DAT_ce3269e:
    #data 0x01b0
DAT_ce326a0:
    #data 0x01d2
DAT_ce326a2:
    #data 0x01f9
DAT_ce326a4:
    #data 0x041c
    #align4

PTR_ce326a8:
    #data loc_8c034dee
PTR_ce326ac:
    #data loc_8c05264c
DAT_ce326b0:
    #data 0xc0555555
DAT_ce326b4:
    #data 0x42d55555
DAT_ce326b8:
    #data 0x40555555
DAT_ce326bc:
    #data 0xc2d55555
DAT_ce326c0:
    #data 0xc1855555
DAT_ce326c4:
    #data 0x3f055555
DAT_ce326c8:
    #data 0x41855555
DAT_ce326cc:
    #data 0xbf055555
PTR_ce326d0:
    #data loc_8c034e8c

;=============================================

LAB_ce326d4:
    mov.w @(DAT_ce32770,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov 0x5C,r1
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32772,pc),r0
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
    mov.l @(PTR_ce32774,pc),r3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3276a
    mov.l @(PTR_ce32778,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce3275a
    mov 0x16,r5
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce3277c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x12,r0
    mov.w r0,@(0x1c,r14)
    bra LAB_ce32760
    mov 0x04,r6

LAB_ce3275a:
    mov 0x06,r0
    mov 0x02,r6
    mov.b r0,@(0x6,r14)

LAB_ce32760:
    lds.l @r15+,PR
    mov.l @(PTR_ce32780,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3276a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32770:
    #data 0x03f8
DAT_ce32772:
    #data 0x0328
    #align4

PTR_ce32774:
    #data loc_8c034dee
PTR_ce32778:
    #data loc_8c05264c
DAT_ce3277c:
    #data 0x42092492
PTR_ce32780:
    #data loc_8c034e8c

;=============================================

LAB_ce32784:
    mov.w @(DAT_ce328a6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x05,r2
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce328a8,pc),r0
    mov.l @(PTR_ce328b8,pc),r3
    mov.b r2,@(r0,r14)
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
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32858
    mov 0x07,r0
    fldi0 fr4
    mov.b r0,@(0x6,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce328aa,pc),r0
    mov.w @(DAT_ce328ac,pc),r1
    mov.b r3,@(r0,r14)
    add 0xB7,r0
    mov.l @(r0,r14),r13
    add r14,r1
    mov.l @(PTR_ce328bc,pc),r3
    mov.b @(0x1,r13),r0
    mov r13,r5
    extu.b r0,r0
    mov.l r0,@r1
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce328b0,pc),r0
    mov r13,r5
    mov.w @(DAT_ce328ae,pc),r2
    mov.l @(PTR_ce328c0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce328c4,pc),r2
    mov 0x23,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce328c8,pc),r3
    mov 0x05,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce328b2,pc),r0
    mov 0x0A,r2
    mov.l @(DAT_ce328cc,pc),r1
    mov 0x00,r6
    mov.b r2,@(r0,r14)
    add 0x28,r0
    lds r1,FPUL
    mov 0x0F,r5
    mov.l @(r0,r14),r4
    mov 0x38,r0
    mov.l @(PTR_ce328d0,pc),r3
    fmov.s @(r0,r4),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x40,r0
    mov r14,r4
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32858:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32860:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce328b8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce32896
    mov.w @(DAT_ce328b4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce328a0
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
    bra LAB_ce328a0
    fmov fr2,@(r0,r14)

LAB_ce32896:
    lds.l @r15+,PR
    mov.l @(PTR_ce328d4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce328a0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328a6:
    #data 0x03f8
DAT_ce328a8:
    #data 0x0328
DAT_ce328aa:
    #data 0x01f9
DAT_ce328ac:
    #data 0x02a8
DAT_ce328ae:
    #data 0x00c0
DAT_ce328b0:
    #data 0x01f7
DAT_ce328b2:
    #data 0x01a0
DAT_ce328b4:
    #data 0x0141
    #align4

PTR_ce328b8:
    #data loc_8c034dee
PTR_ce328bc:
    #data FUN_ce34580
PTR_ce328c0:
    #data loc_8c0523d8
PTR_ce328c4:
    #data loc_8c04223a
PTR_ce328c8:
    #data loc_8c02fec4
DAT_ce328cc:
    #data 0x424db6db
PTR_ce328d0:
    #data loc_8c034e8c
PTR_ce328d4:
    #data FUN_ce348a0

;=============================================

LAB_ce328d8:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce329bc,pc),r0
    mov 0x05,r3
    mov.l r13,@-r15
    mov 0x02,r13
    sts.l PR,@-r15
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce329be,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce329cc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce329c0,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce329d0,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r13,@(r0,r14)
    add 0x08,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce329c2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32926
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce329c2,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce329c4,pc),r0
    mov.w @(DAT_ce329c6,pc),r3
    mov.l @(r0,r14),r4
    add 0x2F,r0
    mov.b r3,@(r0,r4)
    mov.b r3,@(r0,r14)

LAB_ce32926:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3292e:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce329bc,pc),r0
    mov 0x05,r3
    mov.l r13,@-r15
    mov 0x02,r13
    sts.l PR,@-r15
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce329be,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce329cc,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce329c0,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce329d0,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r13,@(r0,r14)
    add 0x08,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3297e
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce329d4,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3297e:
    mov.w @(DAT_ce329c8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3299a
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce329d8,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce329dc,pc),r0
    mov.l @(PTR_ce329e0,pc),r3
    mov 0x02,r5
    fmov.s @r0,fr4
    jsr @r3
    mov r14,r4

LAB_ce3299a:
    mov.w @(DAT_ce329c2,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce329b4
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce329e4,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce329b4:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce329bc:
    #data 0x03f8
DAT_ce329be:
    #data 0x0328
DAT_ce329c0:
    #data 0x01ea
DAT_ce329c2:
    #data 0x0141
DAT_ce329c4:
    #data 0x01c8
DAT_ce329c6:
    #data 0x00c3
DAT_ce329c8:
    #data 0x0140
    #align4

PTR_ce329cc:
    #data FUN_ce3485c
PTR_ce329d0:
    #data loc_8c034dee
PTR_ce329d4:
    #data loc_8c034e8c
DAT_ce329d8:
    #data 0x42c80000
DAT_ce329dc:
    #data 0x41e80000
PTR_ce329e0:
    #data loc_8c06cffc
PTR_ce329e4:
    #data loc_8c042008

;=============================================

LAB_ce329e8:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32b2a,pc),r0
    mov 0x05,r3
    mov.l r13,@-r15
    mov 0x02,r13
    sts.l PR,@-r15
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce32b2c,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32b40,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32b2e,pc),r0
    mov 0x01,r2
    mov.l @(PTR_ce32b44,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r13,@(r0,r14)
    add 0x08,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32b30,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce32a94
    mov.w @(DAT_ce32b32,pc),r0
    mov 0x00,r5
    mov 0x01,r3
    mov.b r5,@(r0,r14)
    add 0xFF,r0
    mov.b r5,@(r0,r14)
    mov 0x24,r2
    mov.w @(DAT_ce32b34,pc),r0
    mov.b r5,@(r0,r14)
    add 0x01,r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce32b36,pc),r0
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0x03,r0
    mov.b r13,@(r0,r4)
    add 0xD9,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    add 0xCF,r0
    mov.b r2,@(r0,r4)
    mov 0x01,r3
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32b30,pc),r0
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce32b38,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    fldi0 fr4
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32b3a,pc),r0
    mov.l @(PTR_ce32b4c,pc),r2
    mov.w @(r0,r14),r1
    xor r3,r1
    mov.w r1,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce32b48,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    jsr @r2
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce32b50,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce32a94:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32a9c:
    mov.w @(DAT_ce32b2a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32b2c,pc),r0
    mov.l @(PTR_ce32b40,pc),r3
    mov.b r2,@(r0,r14)
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
    mov.w @(DAT_ce32b3c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce32b02
    lds.l @r15+,PR
    mov.l @(PTR_ce32b44,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32b02:
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x0F,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r6
    mov.w @(DAT_ce32b3c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32b3e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32b54,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32b58,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b2a:
    #data 0x03f8
DAT_ce32b2c:
    #data 0x0328
DAT_ce32b2e:
    #data 0x01ea
DAT_ce32b30:
    #data 0x0141
DAT_ce32b32:
    #data 0x03f9
DAT_ce32b34:
    #data 0x0327
DAT_ce32b36:
    #data 0x01c8
DAT_ce32b38:
    #data 0x01d2
DAT_ce32b3a:
    #data 0x0130
DAT_ce32b3c:
    #data 0x041c
DAT_ce32b3e:
    #data 0x01f9
    #align4

PTR_ce32b40:
    #data FUN_ce3485c
PTR_ce32b44:
    #data loc_8c034dee
DAT_ce32b48:
    #data 0xbf4db6db
PTR_ce32b4c:
    #data loc_8c02fd26
PTR_ce32b50:
    #data LAB_ce34834
PTR_ce32b54:
    #data loc_8c034e8c
PTR_ce32b58:
    #data FUN_ce34930

;=============================================

LAB_ce32b5c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32c80,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce32c84,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32b7c
    lds.l @r15+,PR
    mov.l @(PTR_ce32c88,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32b7c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32b82:
    mov.l @(PTR_ce32c88,pc),r3
    jmp @r3
    nop

LAB_ce32b88:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce32c8c,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce32c90,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ba6:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32c94,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32c98,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32c74,pc),r0
    mov 0x30,r3
    mov 0x00,r13
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32c9c,pc),r3
    mov 0x10,r5
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce32ca0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32c76,pc),r0
    mov.w @(DAT_ce32c78,pc),r2
    mov.b @(r0,r14),r4
    mov.l @(PTR_ce32ca4,pc),r0
    add r14,r2
    extu.b r4,r4
    fldi0 fr4
    shll r4
    shll r4
    mov.w @(r0,r4),r3
    mov r4,r5
    mov.l @(PTR_ce32ca8,pc),r0
    extu.w r3,r3
    mov.l r3,@r2
    mov 0x1E,r2
    mov.w @(r0,r5),r3
    add r14,r2
    mov.w @(DAT_ce32c7a,pc),r0
    mov.w r3,@r2
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32c7c,pc),r0
    mov.b r13,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce32c76,pc),r0
    mov.b @(r0,r14),r4
    extu.b r4,r4
    shll2 r4
    mov.l @(PTR_ce32cac,pc),r3
    shll2 r4
    mov 0x60,r0
    mov.l @(PTR_ce32cb0,pc),r2
    add r3,r4
    fmov.s @r4+,fr3
    mov 0x2C,r6
    mov 0x15,r5
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov.s @r4,fr3
    mov r14,r4
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce32c50:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32c84,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce32c7e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32c6e
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32c7c,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce32c6e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32c74:
    #data 0x01a1
DAT_ce32c76:
    #data 0x01a3
DAT_ce32c78:
    #data 0x02cc
DAT_ce32c7a:
    #data 0x041c
DAT_ce32c7c:
    #data 0x01f9
DAT_ce32c7e:
    #data 0x0141
    #align4

PTR_ce32c80:
    #data FUN_ce3485c
PTR_ce32c84:
    #data loc_8c034dee
PTR_ce32c88:
    #data FUN_ce348a0
PTR_ce32c8c:
    #data PTR_ce34eac
PTR_ce32c90:
    #data LAB_ce34980
PTR_ce32c94:
    #data loc_8c05218a
PTR_ce32c98:
    #data loc_8c05115a
PTR_ce32c9c:
    #data loc_8c2896b0
PTR_ce32ca0:
    #data loc_8c056de4
PTR_ce32ca4:
    #data DAT_ce34edc
PTR_ce32ca8:
    #data DAT_ce34ee2
PTR_ce32cac:
    #data DAT_ce34ec4
PTR_ce32cb0:
    #data loc_8c034e8c

;=============================================

LAB_ce32cb4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32dc0,pc),r3
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
    mov.w @(0x1e,r14),r0
    mov r0,r3
    lds r3,FPUL
    mov.w @(DAT_ce32db4,pc),r0
    float FPUL,fr3
    fmov.s @(r0,r14),fr2
    mova @(DAT_ce32dc4,pc),r0
    fmov.s @r0,fr0
    mov 0x38,r0
    fmac fr0,fr3,fr2
    fmov.s @(r0,r14),fr3
    fcmp/gt fr2,fr3
    bf LAB_ce32d18
    mov.w @(DAT_ce32db6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32d0e
    mov.w @(DAT_ce32db8,pc),r0
    mov.w @(r0,r14),r3
    mov.w @(DAT_ce32dba,pc),r0
    extu.w r3,r3
    mov.l @(r0,r14),r2
    tst r2,r3
    bf LAB_ce32d22
    bra LAB_ce32d18
    nop

LAB_ce32d0e:
    mov.l @(PTR_ce32dc8,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf LAB_ce32d22

LAB_ce32d18:
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32d46

LAB_ce32d22:
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce32dcc,pc),r1
    mov 0x2D,r6
    add 0x01,r0
    mov.l @(PTR_ce32dd0,pc),r3
    mov.b r0,@(0x6,r14)
    mov 0x15,r5
    mov.w @(DAT_ce32dbc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    shll r0
    shll r0
    mov.w @(r0,r1),r0
    mov.w r0,@(0x1c,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32d46:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32d4c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32dc0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce32dae
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce32dd4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce32dbc,pc),r0
    mov.b @(r0,r14),r4
    add 0x8D,r0
    mov.w @(r0,r14),r2
    extu.b r4,r4
    shll2 r4
    shll2 r4
    tst r2,r2
    add r3,r4
    bf/s LAB_ce32d82
    fmov.s @r4+,fr4
    fneg fr4

LAB_ce32d82:
    mov 0x5C,r0
    mov.l @(PTR_ce32dd0,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov.s @r4,fr3
    mov 0x15,r5
    mov 0x2E,r6
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32dbe,pc),r0
    mov 0x04,r2
    mov.l @(PTR_ce32dd8,pc),r3
    mov r14,r4
    mov.l r2,@(r0,r14)
    mov 0x01,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce32dae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32db4:
    #data 0x041c
DAT_ce32db6:
    #data 0x0525
DAT_ce32db8:
    #data 0x034e
DAT_ce32dba:
    #data 0x02cc
DAT_ce32dbc:
    #data 0x01a3
DAT_ce32dbe:
    #data 0x02c8
    #align4

PTR_ce32dc0:
    #data loc_8c034dee
DAT_ce32dc4:
    #data 0x40092492
PTR_ce32dc8:
    #data loc_8c055d54
PTR_ce32dcc:
    #data DAT_ce34ee8
PTR_ce32dd0:
    #data loc_8c034e8c
PTR_ce32dd4:
    #data DAT_ce34ef0
PTR_ce32dd8:
    #data loc_8c0c1d30

;=============================================

LAB_ce32ddc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32f38,pc),r3
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
    mov 0x04,r3
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
    mov.w @(DAT_ce32f26,pc),r0
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce32f28,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce32e58
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x2F,r6
    mov.w @(DAT_ce32f2a,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32f28,pc),r0
    mov.l @(PTR_ce32f3c,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32f40,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32e58:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e5e:
    mov.w @(DAT_ce32f26,pc),r0
    mov 0x04,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l r3,@(r0,r14)
    mov.l @(PTR_ce32f38,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32e86
    mov.w @(DAT_ce32f26,pc),r0
    mov 0x00,r3
    mov r14,r4
    mov.l r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce32f44,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32e86:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32e8c:
    mov r4,r3
    mov.l @(PTR_ce32f48,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32e9e:
    mov.w @(DAT_ce32f2c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32eba
    mov.w @(DAT_ce32f30,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32f2e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32eba:
    mov.b @(0x6,r14),r0
    mov 0x00,r3
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
    mov.w @(DAT_ce32f2a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32f4c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x20,r0
    mov.w r0,@(0x1c,r14)
    mov 0x06,r0
    mov.w r0,@(0x1e,r14)
    mova @(DAT_ce32f50,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32f32,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce32ef6
    mova @(DAT_ce32f54,pc),r0
    fmov.s @r0,fr4

LAB_ce32ef6:
    mov.l @(PTR_ce32f3c,pc),r3
    mov 0x5C,r0
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    mov 0x05,r6
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32f08:
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32f34,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce32f36,pc),r0
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce32f2c,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32f58
    bra LAB_ce32f5a
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f26:
    #data 0x02c8
DAT_ce32f28:
    #data 0x041c
DAT_ce32f2a:
    #data 0x01f9
DAT_ce32f2c:
    #data 0x0255
DAT_ce32f2e:
    #data 0x00ff
DAT_ce32f30:
    #data 0x03f0
DAT_ce32f32:
    #data 0x0130
DAT_ce32f34:
    #data 0x03f8
DAT_ce32f36:
    #data 0x0328
    #align4

PTR_ce32f38:
    #data loc_8c034dee
PTR_ce32f3c:
    #data loc_8c034e8c
PTR_ce32f40:
    #data FUN_ce34930
PTR_ce32f44:
    #data FUN_ce348a0
PTR_ce32f48:
    #data PTR_ce34f08
PTR_ce32f4c:
    #data loc_8c05115a
DAT_ce32f50:
    #data 0xc0baaaaa
DAT_ce32f54:
    #data 0x40baaaaa

;=============================================

LAB_ce32f58:
    mov 0x00,r3

LAB_ce32f5a:
    mov.w @(DAT_ce3305e,pc),r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce33060,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce32f70
    mov.l @(PTR_ce33074,pc),r3
    jsr @r3
    nop
    bra LAB_ce32f9a
    nop

LAB_ce32f70:
    mov.w @(DAT_ce33062,pc),r0
    mov 0x00,r5
    mov.l @(PTR_ce33080,pc),r3
    mov 0x03,r6
    mov.b r5,@(r0,r4)
    add 0x01,r0
    mov.b r5,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33060,pc),r0
    mov.b r5,@(r0,r4)
    mova @(DAT_ce33078,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3307c,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r15,r5

LAB_ce32f9a:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32fa2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce33064,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.b r3,@(r0,r14)
    mov 0x5C,r1
    mov.w @(DAT_ce33066,pc),r0
    add r14,r1
    mov 0x01,r4
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
    mov r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce33068,pc),r0
    mov.b @(r0,r14),r3
    add 0xD5,r0
    mov.b @(r0,r14),r2
    extu.b r2,r2
    xor r4,r2
    shad r2,r1
    tst r1,r3
    bf LAB_ce32ff4
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce33010

LAB_ce32ff4:
    mov.w @(DAT_ce3306a,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce33084,pc),r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce3306c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce33056
    nop

LAB_ce33010:
    mov.w @(0x1e,r14),r0
    tst r0,r0
    bt LAB_ce3301e
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    bra LAB_ce33056
    mov.w r0,@(0x1e,r14)

LAB_ce3301e:
    mov.l @(PTR_ce33088,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33056
    mov r0,r5
    mov.b @(0x6,r14),r0
    mov.w @(DAT_ce3306e,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33070,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3308c,pc),r3
    jsr @r3
    mov r14,r4
    bsr FUN_ce33e7e
    mov r14,r4
    mova @(DAT_ce33090,pc),r0
    mov.l @(PTR_ce33098,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33094,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce33056:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3305e:
    #data 0x03f1
DAT_ce33060:
    #data 0x0141
DAT_ce33062:
    #data 0x03f0
DAT_ce33064:
    #data 0x03f8
DAT_ce33066:
    #data 0x0328
DAT_ce33068:
    #data 0x01fd
DAT_ce3306a:
    #data 0x03f9
DAT_ce3306c:
    #data 0x0327
DAT_ce3306e:
    #data 0x00c4
DAT_ce33070:
    #data 0x01f7
    #align4

PTR_ce33074:
    #data loc_8c034dee
DAT_ce33078:
    #data 0xc13aaaaa
DAT_ce3307c:
    #data 0x43452492
PTR_ce33080:
    #data loc_8c050834
PTR_ce33084:
    #data FUN_ce348a0
PTR_ce33088:
    #data loc_8c045790
PTR_ce3308c:
    #data loc_8c0523d8
DAT_ce33090:
    #data 0xc2a6aaaa
DAT_ce33094:
    #data 0x431e9249
PTR_ce33098:
    #data loc_8c103660

;=============================================

LAB_ce3309c:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce331ec,pc),r0
    mov 0x05,r3
    mov.l r13,@-r15
    mov 0x02,r13
    mov 0x01,r2
    sts.l PR,@-r15
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce331ee,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce331f0,pc),r0
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r13,@(r0,r14)
    add 0x08,r0
    mov.b r13,@(r0,r14)
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce330f0
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33200,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x40,r0
    mov.w r0,@(0x1c,r14)
    mov 0x00,r0
    jsr @r3
    mov.w r0,@(0x1e,r14)
    mov.l @(PTR_ce33204,pc),r2
    mov 0x0A,r6
    mov.l @(PTR_ce33208,pc),r3
    mov 0x0F,r5
    mov.l r13,@r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce330f0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce330f8:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce331ec,pc),r0
    mov r4,r14
    mov 0x02,r4
    mov.b r4,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce331ee,pc),r0
    mov 0x01,r2
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce331f0,pc),r0
    mov.l @(PTR_ce33204,pc),r3
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce331f2,pc),r2
    mov.l r4,@r3
    mov.w @(0x1e,r14),r0
    add r2,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce3318c
    mov.l @(PTR_ce3320c,pc),r3
    mov r14,r2
    mov r15,r1
    add 0x34,r2
    jsr @r3
    mov 0x0C,r0
    mov.l @(PTR_ce33210,pc),r13
    jsr @r13
    nop
    extu.b r0,r0
    fmov.s @r15,fr2
    add 0x80,r0
    exts.w r0,r0
    lds r0,FPUL
    mova @(DAT_ce33214,pc),r0
    fmov.s @r0,fr0
    float FPUL,fr3
    fmac fr0,fr3,fr2
    jsr @r13
    fmov.s fr2,@r15
    and 0x7F,r0
    mov.l @(PTR_ce3321c,pc),r3
    add 0x20,r0
    exts.w r0,r0
    lds r0,FPUL
    mova @(DAT_ce33218,pc),r0
    fmov.s @r0,fr0
    mov 0x04,r0
    fmov.s @(r0,r15),fr2
    mov 0x04,r0
    float FPUL,fr3
    mov 0x00,r7
    mov 0x01,r6
    fmac fr0,fr3,fr2
    fmov fr2,@(r0,r15)
    mov.w @(DAT_ce331f4,pc),r0
    mov.w @(r0,r14),r5
    jsr @r3
    mov r15,r4
    jsr @r13
    nop
    mov.l @(PTR_ce33220,pc),r3
    tst 0x01,r0
    movt r5
    jsr @r3
    mov r14,r4

LAB_ce3318c:
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce331e0
    mov.w @(DAT_ce331f6,pc),r0
    mov 0x00,r12
    mov.l @(PTR_ce33224,pc),r3
    mov r14,r5
    mov.b r12,@(r0,r14)
    add 0xFF,r0
    mov.b r12,@(r0,r14)
    mov 0x0E,r6
    mov.w @(DAT_ce331f8,pc),r0
    mov.b r12,@(r0,r14)
    add 0x01,r0
    mov.b r12,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x40,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce331fa,pc),r0
    mov.l @(r0,r14),r13
    jsr @r3
    mov r13,r4
    mov.w @(DAT_ce331fc,pc),r0
    mov 0x08,r3
    mov.l @(PTR_ce33228,pc),r2
    mov.l r14,@(r0,r13)
    add 0x42,r0
    mov.b r3,@(r0,r13)
    add 0x03,r0
    mov.b r12,@(r0,r13)
    add 0xA8,r0
    mov 0x23,r3
    mov.b r3,@(r0,r14)
    jsr @r2
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce33204,pc),r1
    mov.l r12,@r1

LAB_ce331e0:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331ec:
    #data 0x03f8
DAT_ce331ee:
    #data 0x0328
DAT_ce331f0:
    #data 0x01ea
DAT_ce331f2:
    #data 0x4000
DAT_ce331f4:
    #data 0x0130
DAT_ce331f6:
    #data 0x03f9
DAT_ce331f8:
    #data 0x0327
DAT_ce331fa:
    #data 0x01c8
DAT_ce331fc:
    #data 0x01b4
    #align4

PTR_ce33200:
    #data loc_8c030fec
PTR_ce33204:
    #data loc_8c26a8ec
PTR_ce33208:
    #data loc_8c034e8c
PTR_ce3320c:
    #data loc_8c1294c8
PTR_ce33210:
    #data loc_8c03319e
DAT_ce33214:
    #data 0x3fd55555
DAT_ce33218:
    #data 0x40092492
PTR_ce3321c:
    #data loc_8c0fda40
PTR_ce33220:
    #data loc_8c04223a
PTR_ce33224:
    #data loc_8c05a49c
PTR_ce33228:
    #data loc_8c02fd26

;=============================================

LAB_ce3322c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33324,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce33256
    mov.w @(DAT_ce33318,pc),r0
    mov 0x30,r3
    mov r14,r4
    mov.l @(r0,r14),r2
    add 0xE1,r0
    mov.b r3,@(r0,r2)
    lds.l @r15+,PR
    mov.l @(PTR_ce33328,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33256:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3325c:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce3332c,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce33330,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3327a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce33334,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3331a,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce33338,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce3333c,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce3331c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce332aa
    mova @(DAT_ce33340,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce33344,pc),r0
    fmov.s @r0,fr5

LAB_ce332aa:
    mov 0x5C,r0
    mov.l @(PTR_ce33348,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce3334c,pc),r2
    mov r14,r4
    mov 0x06,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce332d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce3331e,pc),r0
    mov r4,r14
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33324,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33320,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33310
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r15,r5
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33320,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33350,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33354,pc),r0
    mov.l @(PTR_ce33358,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce33310:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33318:
    #data 0x020c
DAT_ce3331a:
    #data 0x01f9
DAT_ce3331c:
    #data 0x01d2
DAT_ce3331e:
    #data 0x0328
DAT_ce33320:
    #data 0x0141
    #align4

PTR_ce33324:
    #data loc_8c034dee
PTR_ce33328:
    #data FUN_ce348a0
PTR_ce3332c:
    #data PTR_ce34f20
PTR_ce33330:
    #data LAB_ce34980
PTR_ce33334:
    #data loc_8c05218a
DAT_ce33338:
    #data 0xc1a00000
DAT_ce3333c:
    #data 0x3e555555
DAT_ce33340:
    #data 0x41a00000
DAT_ce33344:
    #data 0xbe555555
PTR_ce33348:
    #data loc_8c05115a
PTR_ce3334c:
    #data loc_8c034e8c
DAT_ce33350:
    #data 0x422d5555
DAT_ce33354:
    #data 0x42f00000
PTR_ce33358:
    #data loc_8c050834

;=============================================

LAB_ce3335c:
    mov.w @(DAT_ce33482,pc),r0
    mov 0x05,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33484,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf/s LAB_ce333aa
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

LAB_ce333aa:
    mov.l @(PTR_ce33490,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce333d4
    mov.w @(DAT_ce33486,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce33494,pc),r3
    mov 0x07,r6
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x16,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce333d4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce333da:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33490,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce333f4
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33498,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce333f4:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce333fc:
    mov.l @(PTR_ce33498,pc),r3
    jmp @r3
    nop

LAB_ce33402:
    mov r4,r3
    mov.l @(PTR_ce3349c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33414:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce334a0,pc),r3
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
    mov.w @(DAT_ce33488,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3348a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce334a4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce3348c,pc),r0
    mov 0x77,r3
    mov 0x09,r6
    mov r14,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce334a8,pc),r3
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
    mov.l @(PTR_ce33494,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33482:
    #data 0x0328
DAT_ce33484:
    #data 0x0140
DAT_ce33486:
    #data 0x0327
DAT_ce33488:
    #data 0x01f9
DAT_ce3348a:
    #data 0x041c
DAT_ce3348c:
    #data 0x01a1
    #align4

PTR_ce33490:
    #data loc_8c034dee
PTR_ce33494:
    #data loc_8c034e8c
PTR_ce33498:
    #data FUN_ce348a0
PTR_ce3349c:
    #data PTR_ce34f30
PTR_ce334a0:
    #data loc_8c05218a
PTR_ce334a4:
    #data loc_8c05115a
PTR_ce334a8:
    #data loc_8c2896b0

;=============================================

LAB_ce334ac:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce335d4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce335c0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce334e2
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov r15,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce335c0,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce335d8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce335dc,pc),r0
    mov.l @(PTR_ce335e0,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce334e2:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce334ea:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce335d4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33504
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce335e4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33504:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce3350c:
    mov r4,r3
    mov.l @(PTR_ce335e8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3351e:
    mov.w @(DAT_ce335c2,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce3353a
    mov.w @(DAT_ce335c6,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce335c4,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce3353a:
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    fldi0 fr4
    mov 0x62,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce335c8,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce335ca,pc),r0
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
    mov.w @(DAT_ce335cc,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.l @(PTR_ce335ec,pc),r3
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.l @r3,r2
    mov.b @(0x2,r14),r0
    add 0x7C,r2
    extu.b r0,r0
    shll r0
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @(PTR_ce335f0,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce335f4,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce335f8,pc),r2
    mov r14,r4
    mov 0x0A,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce3359e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce335ce,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce335d0,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce335c2,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce335fc
    bra LAB_ce335fe
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce335c0:
    #data 0x0141
DAT_ce335c2:
    #data 0x0255
DAT_ce335c4:
    #data 0x00ff
DAT_ce335c6:
    #data 0x03f0
DAT_ce335c8:
    #data 0x01f9
DAT_ce335ca:
    #data 0x041c
DAT_ce335cc:
    #data 0x01a1
DAT_ce335ce:
    #data 0x03f8
DAT_ce335d0:
    #data 0x0328
    #align4

PTR_ce335d4:
    #data loc_8c034dee
DAT_ce335d8:
    #data 0x42340000
DAT_ce335dc:
    #data 0x434db6db
PTR_ce335e0:
    #data loc_8c050ea4
PTR_ce335e4:
    #data FUN_ce348a0
PTR_ce335e8:
    #data PTR_ce34f3c
PTR_ce335ec:
    #data loc_8c2896b0
PTR_ce335f0:
    #data loc_8c05218a
PTR_ce335f4:
    #data loc_8c05115a
PTR_ce335f8:
    #data loc_8c034e8c

;=============================================

LAB_ce335fc:
    mov 0x00,r3

LAB_ce335fe:
    mov.w @(DAT_ce3372e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33740,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33730,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3363c
    mov.w @(DAT_ce33732,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce3374c,pc),r3
    mov r15,r5
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov 0x01,r6
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33730,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33744,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33748,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce3363c:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33644:
    mov.w @(DAT_ce33734,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33736,pc),r0
    mov.l @(PTR_ce33740,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33694
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x12,r0
    mov.w r0,@(0x1c,r14)
    mov 0x21,r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33750,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce33738,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33682
    mova @(DAT_ce33754,pc),r0
    fmov.s @r0,fr4

LAB_ce33682:
    mov.l @(PTR_ce33758,pc),r3
    mov 0x5C,r0
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    mov 0x0B,r6
    mov 0x16,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce33694:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3369a:
    mov.w @(DAT_ce33734,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov 0x5C,r1
    mov.l r12,@-r15
    add r14,r1
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x00,r13
    mov.w @(DAT_ce33736,pc),r0
    mov.l @(PTR_ce33740,pc),r3
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
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3375c
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pl r0
    bt LAB_ce33702
    mov.w @(DAT_ce3373a,pc),r0
    mov 0x35,r6
    mov.b r13,@(r0,r14)
    add 0xFF,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce3373c,pc),r0
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bra LAB_ce33720
    mov 0x15,r5

LAB_ce33702:
    mov 0x21,r0
    mov.b @(r0,r14),r2
    mov 0x01,r3
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    mov.w @(0x1c,r14),r0
    cmp/eq 0x01,r0
    bf/s LAB_ce3371e
    add 0x0B,r6
    mov 0x5C,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    add 0x02,r6

LAB_ce3371e:
    mov 0x16,r5

LAB_ce33720:
    lds.l @r15+,PR
    mov.l @(PTR_ce33758,pc),r3
    mov r14,r4
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3372e:
    #data 0x03f1
DAT_ce33730:
    #data 0x0141
DAT_ce33732:
    #data 0x03f0
DAT_ce33734:
    #data 0x03f8
DAT_ce33736:
    #data 0x0328
DAT_ce33738:
    #data 0x0130
DAT_ce3373a:
    #data 0x03f9
DAT_ce3373c:
    #data 0x0327
    #align4

PTR_ce33740:
    #data loc_8c034dee
DAT_ce33744:
    #data 0x422d5555
DAT_ce33748:
    #data 0x42f00000
PTR_ce3374c:
    #data loc_8c050834
DAT_ce33750:
    #data 0xc1055555
DAT_ce33754:
    #data 0x41055555
PTR_ce33758:
    #data loc_8c034e8c

;=============================================

LAB_ce3375c:
    mov.w @(DAT_ce338a0,pc),r0
    mov.l @(PTR_ce338bc,pc),r12
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33788
    mov.w @(DAT_ce338a2,pc),r0
    mov.b @(r0,r14),r6
    add 0xF6,r0
    mov.b @(r0,r14),r5
    extu.b r6,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce338a2,pc),r0
    mov.b @(r0,r14),r6
    add 0xF6,r0
    mov.b @(r0,r14),r5
    extu.b r6,r6
    add 0xFF,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce338a0,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce33788:
    mov.w @(DAT_ce338a4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce337c4
    mov.w @(DAT_ce338a2,pc),r0
    mov.w @(DAT_ce338a6,pc),r5
    mov.b @(r0,r14),r6
    extu.b r6,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce338a2,pc),r0
    mov.w @(DAT_ce338a8,pc),r5
    mov.b @(r0,r14),r6
    extu.b r6,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce338a2,pc),r0
    mov.w @(DAT_ce338aa,pc),r5
    mov.b @(r0,r14),r6
    extu.b r6,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce338a2,pc),r0
    mov.w @(DAT_ce338ac,pc),r5
    mov.b @(r0,r14),r6
    extu.b r6,r6
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce338a4,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce337c4:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce337ce:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce338c0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce337e8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce338c4,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce337e8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce337f0:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce338c8,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov.l @(PTR_ce338cc,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce3380e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce338ae,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf/s LAB_ce33832
    mov r14,r4
    mov.w @(DAT_ce338b2,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce338b0,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33832:
    mov.l @(PTR_ce338d0,pc),r3
    jsr @r3
    nop
    mov.l @(PTR_ce338d4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce338b4,pc),r0
    mov 0x00,r4
    mov 0x30,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    mov 0x0F,r6
    fmov fr3,@(r0,r14)
    mov 0x16,r5
    mov.w @(DAT_ce338b6,pc),r0
    mov.b r4,@(r0,r14)
    add 0xA8,r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce338d8,pc),r3
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
    mov.l @(PTR_ce338dc,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3387e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce338b8,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce338ba,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce338ae,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce338e0
    bra LAB_ce338e2
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce338a0:
    #data 0x0141
DAT_ce338a2:
    #data 0x014b
DAT_ce338a4:
    #data 0x0140
DAT_ce338a6:
    #data 0x0080
DAT_ce338a8:
    #data 0x0081
DAT_ce338aa:
    #data 0x0082
DAT_ce338ac:
    #data 0x0083
DAT_ce338ae:
    #data 0x0255
DAT_ce338b0:
    #data 0x00ff
DAT_ce338b2:
    #data 0x03f0
DAT_ce338b4:
    #data 0x041c
DAT_ce338b6:
    #data 0x01f9
DAT_ce338b8:
    #data 0x03f8
DAT_ce338ba:
    #data 0x0328
    #align4

PTR_ce338bc:
    #data loc_8c0c1f90
PTR_ce338c0:
    #data loc_8c034dee
PTR_ce338c4:
    #data FUN_ce348a0
PTR_ce338c8:
    #data PTR_ce34f50
PTR_ce338cc:
    #data LAB_ce34980
PTR_ce338d0:
    #data loc_8c05218a
PTR_ce338d4:
    #data loc_8c05115a
PTR_ce338d8:
    #data loc_8c2896b0
PTR_ce338dc:
    #data loc_8c034e8c

;=============================================

LAB_ce338e0:
    mov 0x00,r3

LAB_ce338e2:
    mov.w @(DAT_ce33a06,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33a14,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33a08,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce33940
    mov.w @(DAT_ce33a0a,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33a08,pc),r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce33a18,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce33a1c,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce33a0c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33920
    mova @(DAT_ce33a20,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce33a24,pc),r0
    fmov.s @r0,fr5

LAB_ce33920:
    mov 0x5C,r0
    mov.l @(PTR_ce33a30,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)
    mova @(DAT_ce33a28,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce33a2c,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce33940:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33948:
    mov.w @(DAT_ce33a0e,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33a10,pc),r0
    mov.l @(PTR_ce33a14,pc),r3
    mov.b r2,@(r0,r14)
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt LAB_ce33994
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)

LAB_ce33994:
    mova @(DAT_ce33a1c,pc),r0
    fmov.s @r0,fr7
    mova @(DAT_ce33a24,pc),r0
    fmov.s @r0,fr6
    mov.w @(DAT_ce33a08,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x02,r0
    bf LAB_ce339c6
    mov.w @(DAT_ce33a08,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mova @(DAT_ce33a18,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce33a0c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce339be
    fmov fr7,fr5
    mova @(DAT_ce33a20,pc),r0
    fmov fr6,fr5
    fmov.s @r0,fr4

LAB_ce339be:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)

LAB_ce339c6:
    mov.w @(DAT_ce33a08,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33a00
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce33a34,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce33a0c,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce339e8
    fmov fr7,fr5
    mova @(DAT_ce33a38,pc),r0
    fmov fr6,fr5
    fmov.s @r0,fr4

LAB_ce339e8:
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)
    mova @(DAT_ce33a3c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33a40,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce33a00:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a06:
    #data 0x03f1
DAT_ce33a08:
    #data 0x0141
DAT_ce33a0a:
    #data 0x03f0
DAT_ce33a0c:
    #data 0x0130
DAT_ce33a0e:
    #data 0x03f8
DAT_ce33a10:
    #data 0x0328
    #align4

PTR_ce33a14:
    #data loc_8c034dee
DAT_ce33a18:
    #data 0xc1855555
DAT_ce33a1c:
    #data 0x3f200000
DAT_ce33a20:
    #data 0x41855555
DAT_ce33a24:
    #data 0xbf200000
DAT_ce33a28:
    #data 0xc2200000
DAT_ce33a2c:
    #data 0x424db6db
PTR_ce33a30:
    #data loc_8c050834
DAT_ce33a34:
    #data 0xc1a00000
DAT_ce33a38:
    #data 0x41a00000
DAT_ce33a3c:
    #data 0x42092492
DAT_ce33a40:
    #data 0xbf892492

;=============================================

LAB_ce33a44:
    mov.w @(DAT_ce33b8a,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33b8c,pc),r0
    mov.l @(PTR_ce33b98,pc),r3
    mov.b r2,@(r0,r14)
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
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.w @(DAT_ce33b8e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce33a90
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33b9c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33a90:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33a96:
    mov.w @(DAT_ce33b8a,pc),r0
    mov 0x02,r3
    mov 0x05,r2
    mov.b r3,@(r0,r4)
    mov 0x5C,r1
    mov.w @(DAT_ce33b8c,pc),r0
    add r4,r1
    mov.b r2,@(r0,r4)
    mov 0x34,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    add r4,r1
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x5C,r0
    fmov.s @(r0,r4),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r4)
    mov 0x68,r0
    fmov fr2,fr3
    fmov.s @(r0,r4),fr2
    fmul fr3,fr2
    fldi0 fr3
    fcmp/gt fr2,fr3
    bt LAB_ce33aec
    mov.w @(DAT_ce33b90,pc),r0
    mov 0x00,r5
    mov.b r5,@(r0,r4)
    add 0xFF,r0
    mov.b r5,@(r0,r4)
    mov.w @(DAT_ce33b92,pc),r0
    mov.b r5,@(r0,r4)
    add 0x01,r0
    mov.b r5,@(r0,r4)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x68,r0
    fmov fr3,@(r0,r4)
    mov 0x5C,r0
    fmov fr3,@(r0,r4)

LAB_ce33aec:
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
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce33b16
    fmov fr2,@(r0,r4)
    mova @(DAT_ce33ba0,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r4)

LAB_ce33b16:
    mov.w @(DAT_ce33b94,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33b3c
    mov.b @(0x6,r4),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce33b94,pc),r0
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce33b96,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(PTR_ce33ba4,pc),r3
    jmp @r3
    nop

LAB_ce33b3c:
    mov.w @(DAT_ce33b8e,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce33b4a
    mov.l @(PTR_ce33b98,pc),r3
    jmp @r3
    nop

LAB_ce33b4a:
    rts
    nop

;=============================================

FUN_ce33b4e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33b98,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33b66
    mov.l @r15,r4
    add 0x04,r15
    bra FUN_ce348a0
    lds.l @r15+,PR

LAB_ce33b66:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce33b6e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce33ba8,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce34980
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33b8a:
    #data 0x03f8
DAT_ce33b8c:
    #data 0x0328
DAT_ce33b8e:
    #data 0x0141
DAT_ce33b90:
    #data 0x03f9
DAT_ce33b92:
    #data 0x0327
DAT_ce33b94:
    #data 0x041c
DAT_ce33b96:
    #data 0x01f9
    #align4

PTR_ce33b98:
    #data loc_8c034dee
PTR_ce33b9c:
    #data loc_8c053082
DAT_ce33ba0:
    #data 0xbf9a4924
PTR_ce33ba4:
    #data loc_8c0511b4
PTR_ce33ba8:
    #data PTR_ce34f6c

;=============================================

LAB_ce33bac:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x00,r5
    mov.l @(PTR_ce33cc8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(DAT_ce33ccc,pc),r1
    mov 0x02,r2
    mov.w @(DAT_ce33cc0,pc),r0
    lds r1,FPUL
    mov.b r2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce33cd0,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce33cc2,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33be4
    mova @(DAT_ce33cd4,pc),r0
    fmov.s @r0,fr4

LAB_ce33be4:
    mov 0x5C,r0
    fldi0 fr3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33cd8,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x30,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33cdc,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33cc4,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce33ce0,pc),r3
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
    mov.l @(PTR_ce33ce4,pc),r2
    mov r4,r6
    mov 0x14,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33c32:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33ce8,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce33cec,pc),r3
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
    bt LAB_ce33c98
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    bsr FUN_ce34930
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33ce4,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce33c98:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33c9e:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33ce8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33cb8
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33cf0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33cb8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33cc0:
    #data 0x01f9
DAT_ce33cc2:
    #data 0x01d2
DAT_ce33cc4:
    #data 0x01a1
    #align4

PTR_ce33cc8:
    #data loc_8c035162
DAT_ce33ccc:
    #data 0x43092492
DAT_ce33cd0:
    #data 0xc1f00000
DAT_ce33cd4:
    #data 0x41f00000
DAT_ce33cd8:
    #data 0xbe892492
DAT_ce33cdc:
    #data 0xbf4db6db
PTR_ce33ce0:
    #data loc_8c2896b0
PTR_ce33ce4:
    #data loc_8c034e8c
PTR_ce33ce8:
    #data loc_8c034dee
PTR_ce33cec:
    #data loc_8c052ce2
PTR_ce33cf0:
    #data loc_8c051854

;=============================================

LAB_ce33cf4:
    mov.w @(DAT_ce33de4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce33df4,pc),r0
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    tst r2,r2
    bt/s LAB_ce33d46
    mov 0x00,r4
    mov.w @(DAT_ce33de6,pc),r0
    mov.w @(DAT_ce33de8,pc),r3
    mov.w @(r0,r14),r5
    extu.w r5,r5
    and r3,r5
    tst r5,r5
    bt LAB_ce33d46
    shlr8 r5
    mov 0x22,r0
    shlr2 r5
    mov.b r5,@(r0,r14)
    mov.w @(DAT_ce33dea,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce33d46
    mov.w @(DAT_ce33dec,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce33d46
    mov.l @(PTR_ce33df8,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce33d46
    mov r0,r4
    mov.w @(DAT_ce33dee,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)

LAB_ce33d46:
    mov r4,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33d50:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce33dee,pc),r1
    mov.l @(PTR_ce33dfc,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce33d68:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mova @(DAT_ce33e00,pc),r0
    mov.l @(PTR_ce33e08,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33e04,pc),r0
    mov r4,r14
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33df0,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce33d98
    mov.l @(PTR_ce33e0c,pc),r3
    mov 0x05,r6
    mov r6,r5
    jsr @r3
    mov r14,r4

LAB_ce33d98:
    mov.w @(DAT_ce33df2,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33e10,pc),r1
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    add 0x28,r0
    mov.l @(r0,r14),r4
    mov 0x38,r0
    mov 0x00,r6
    mov r4,r2
    add r0,r2
    mov.l r2,@-r15
    mov.b @(0x1,r4),r0
    extu.b r0,r0
    shll r0
    mov.w @(r0,r1),r3
    mova @(DAT_ce33e14,pc),r0
    fmov.s @r0,fr0
    mov 0x40,r0
    extu.w r3,r3
    lds r3,FPUL
    mov.l @r15+,r3
    float FPUL,fr3
    fmov.s @r3,fr2
    fmac fr0,fr3,fr2
    fmov.s fr2,@r3
    mov.l @(PTR_ce33e18,pc),r3
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33ddc:
    mov.l @(PTR_ce33e18,pc),r3
    mov 0x03,r6
    jmp @r3
    mov 0x0F,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33de4:
    #data 0x01f9
DAT_ce33de6:
    #data 0x01fa
DAT_ce33de8:
    #data 0x0c00
DAT_ce33dea:
    #data 0x01fe
DAT_ce33dec:
    #data 0x01a3
DAT_ce33dee:
    #data 0x01f7
DAT_ce33df0:
    #data 0x0411
DAT_ce33df2:
    #data 0x01a0
    #align4

PTR_ce33df4:
    #data DAT_ce34f78
PTR_ce33df8:
    #data loc_8c045790
PTR_ce33dfc:
    #data PTR_ce34f88
DAT_ce33e00:
    #data 0xc2dc0000
DAT_ce33e04:
    #data 0x432b6db6
PTR_ce33e08:
    #data loc_8c103660
PTR_ce33e0c:
    #data loc_8c02fec4
PTR_ce33e10:
    #data DAT_ce34f9c
DAT_ce33e14:
    #data 0x40092492
PTR_ce33e18:
    #data loc_8c034e8c

;=============================================

LAB_ce33e1c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt LAB_ce33e40
    mov.w @(DAT_ce33f4e,pc),r0
    mov 0x01,r3
    mov.w @(r0,r14),r2
    xor r3,r2
    mov.w r2,@(r0,r14)
    mov.w @(DAT_ce33f50,pc),r0
    mov.b @(r0,r14),r1
    xor r3,r1
    mov.b r1,@(r0,r14)

LAB_ce33e40:
    mova @(DAT_ce33f5c,pc),r0
    mov.l @(PTR_ce33f64,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33f60,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33f68,pc),r2
    mov 0x05,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33f52,pc),r0
    mov 0x0A,r3
    mov 0x0F,r5
    mov.b r3,@(r0,r14)
    mov 0x07,r6
    mov.l @(PTR_ce33f6c,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33f70,pc),r2
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce33e7e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mova @(DAT_ce33f74,pc),r0
    mov.l @(PTR_ce33f64,pc),r3
    fmov.s @r0,fr3
    mova @(DAT_ce33f78,pc),r0
    mov r4,r14
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov 0x05,r6
    mov.l @(PTR_ce33f68,pc),r3
    mov 0x10,r0
    mov r6,r5
    mov.w r0,@(0x1c,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33f52,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce33f6c,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x09,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33ec2:
    mov.w @(DAT_ce33f54,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce33f7c,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33ee0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce3485c
    mov r4,r14
    mov.l @(PTR_ce33f80,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33f56,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33f10
    mov 0x00,r0
    mov.w @(DAT_ce33f58,pc),r2
    mov r0,r3
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce33f56,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33f5a,pc),r0
    mov.b r2,@(r0,r14)
    add 0xD1,r0
    mov.l @(r0,r14),r4
    add 0x2F,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)

LAB_ce33f10:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33f16:
    mov r4,r3
    mov.l @(PTR_ce33f84,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33f28:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce33f80,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33f88
    mov.b @(0x6,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce33f6c,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce33fba
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33f4e:
    #data 0x0130
DAT_ce33f50:
    #data 0x01d2
DAT_ce33f52:
    #data 0x01a0
DAT_ce33f54:
    #data 0x01ea
DAT_ce33f56:
    #data 0x0141
DAT_ce33f58:
    #data 0x00c3
DAT_ce33f5a:
    #data 0x01f7
    #align4

DAT_ce33f5c:
    #data 0xc262aaaa
DAT_ce33f60:
    #data 0x43362492
PTR_ce33f64:
    #data loc_8c103660
PTR_ce33f68:
    #data loc_8c02fec4
PTR_ce33f6c:
    #data loc_8c034e8c
PTR_ce33f70:
    #data loc_8c056f2a
DAT_ce33f74:
    #data 0xc2a6aaaa
DAT_ce33f78:
    #data 0x431e9249
PTR_ce33f7c:
    #data PTR_ce3501c
PTR_ce33f80:
    #data loc_8c034dee
PTR_ce33f84:
    #data PTR_ce35030

;=============================================

LAB_ce33f88:
    mov.w @(DAT_ce34028,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce33fba
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce34030,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34034,pc),r0
    mov.l @(PTR_ce34038,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3402a,pc),r0
    mov 0x05,r6
    mov.l @(PTR_ce3403c,pc),r3
    mov 0x0A,r2
    mov r6,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4

LAB_ce33fba:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33fc2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34040,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34022
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce34044,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3402c,pc),r0
    mov.b @(r0,r14),r5
    mov 0x04,r0
    extu.b r5,r5
    shll2 r5
    mov r5,r4
    shll2 r4
    add r3,r4
    fmov.s @(r0,r4),fr4
    mov 0x08,r0
    fmov.s @(r0,r4),fr3
    mov 0x60,r0
    fmov.s @r4,fr5
    fmov fr3,@(r0,r14)
    mov 0x0C,r0
    fmov.s @(r0,r4),fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    fldi0 fr3
    fcmp/gt fr3,fr2
    bf/s LAB_ce3400e
    mov 0x5C,r0
    fneg fr4
    fneg fr5

LAB_ce3400e:
    fmov fr5,@(r0,r14)
    mov 0x68,r0
    mov.l @(PTR_ce34048,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    mov 0x05,r6
    lds.l @r15+,PR
    mov 0x0F,r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce34022:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34028:
    #data 0x0141
DAT_ce3402a:
    #data 0x01a0
DAT_ce3402c:
    #data 0x01a3
    #align4

DAT_ce34030:
    #data 0xc2e2aaaa
DAT_ce34034:
    #data 0x4322db6d
PTR_ce34038:
    #data loc_8c103660
PTR_ce3403c:
    #data loc_8c02fec4
PTR_ce34040:
    #data loc_8c034dee
PTR_ce34044:
    #data DAT_ce35040
PTR_ce34048:
    #data loc_8c034e8c

;=============================================

LAB_ce3404c:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce34194,pc),r3
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
    mov.l @(PTR_ce34198,pc),r2
    jsr @r2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce340f2
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce3419c,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce341a0,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce3418c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce340ba
    mova @(DAT_ce341a4,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce341a8,pc),r0
    fmov.s @r0,fr5

LAB_ce340ba:
    mov 0x5C,r0
    mov.l @(PTR_ce341b4,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr5,@(r0,r14)
    mova @(DAT_ce341ac,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x0F,r5
    fmov fr3,@(r0,r14)
    mova @(DAT_ce341b0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x06,r6
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce341b8,pc),r4
    mov 0x03,r0
    mov.l @(PTR_ce341bc,pc),r3
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce3418e,pc),r0
    lds.l @r15+,PR
    mov.l @(r0,r14),r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce340f2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce340f8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34194,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34112
    lds.l @r15+,PR
    mov.l @(PTR_ce341c0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce34112:
    mov.w @(DAT_ce34190,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34152
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

LAB_ce34152:
    mov.w @(DAT_ce34192,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34186
    mov 0x00,r3
    mov.w @(DAT_ce3418c,pc),r1
    mov.b r3,@(r0,r14)
    mov 0x02,r3
    mov.w @(DAT_ce3418e,pc),r0
    mov 0x26,r2
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0xAB,r0
    mov.b r2,@(r0,r4)
    add 0x31,r0
    mov.b @(r0,r14),r0
    add r4,r1
    mov.l @(PTR_ce341c4,pc),r3
    xor 0x01,r0
    mov.b r0,@r1
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce34186:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3418c:
    #data 0x01d2
DAT_ce3418e:
    #data 0x01c8
DAT_ce34190:
    #data 0x0140
DAT_ce34192:
    #data 0x0141
    #align4

PTR_ce34194:
    #data loc_8c034dee
PTR_ce34198:
    #data loc_8c052ce2
DAT_ce3419c:
    #data 0x40a00000
DAT_ce341a0:
    #data 0x3dd55555
DAT_ce341a4:
    #data 0xc0a00000
DAT_ce341a8:
    #data 0xbdd55555
DAT_ce341ac:
    #data 0x41892492
DAT_ce341b0:
    #data 0xbf2b6db6
PTR_ce341b4:
    #data loc_8c034e8c
PTR_ce341b8:
    #data loc_8c26a518
PTR_ce341bc:
    #data loc_8c0423fc
PTR_ce341c0:
    #data loc_8c05176e
PTR_ce341c4:
    #data loc_8c02fd26

;=============================================

LAB_ce341c8:
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(PTR_ce3430c,pc),r1
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jsr @r3
    nop
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce34980
    mov.l @r15+,r14

LAB_ce341e4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34310,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34306,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3424a
    mov 0x00,r3
    mov.l @(DAT_ce34314,pc),r1
    mov.b r3,@(r0,r14)
    mov.b @(0x6,r14),r0
    lds r1,FPUL
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce34318,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce34308,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3421e
    mova @(DAT_ce3431c,pc),r0
    fmov.s @r0,fr4

LAB_ce3421e:
    mov 0x5C,r0
    fldi0 fr3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce34320,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce34324,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce3430a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce34242
    mova @(DAT_ce34328,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce3432c,pc),r0
    fmov.s @r0,fr4

LAB_ce34242:
    mov 0x60,r0
    fmov fr5,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)

LAB_ce3424a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34250:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34310,pc),r3
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
    fldi0 fr3
    fcmp/gt fr2,fr3
    bf/s LAB_ce342ac
    fmov fr2,@(r0,r14)
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34330,pc),r3
    mov 0x08,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce342ac:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce342b2:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce34310,pc),r3
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
    bt LAB_ce34338
    lds.l @r15+,PR
    mov.l @(PTR_ce34334,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34306:
    #data 0x0141
DAT_ce34308:
    #data 0x01d2
DAT_ce3430a:
    #data 0x01f9
    #align4

PTR_ce3430c:
    #data PTR_ce35070
PTR_ce34310:
    #data loc_8c034dee
DAT_ce34314:
    #data 0x42700000
DAT_ce34318:
    #data 0xc0555555
DAT_ce3431c:
    #data 0x40555555
DAT_ce34320:
    #data 0x41892492
DAT_ce34324:
    #data 0xbe892492
DAT_ce34328:
    #data 0x40892492
DAT_ce3432c:
    #data 0xbd892492
PTR_ce34330:
    #data loc_8c034e8c
PTR_ce34334:
    #data loc_8c05176e

;=============================================

LAB_ce34338:
    mov.w @(DAT_ce34412,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3437a
    mov 0x00,r3
    mov.w @(DAT_ce34416,pc),r1
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce34414,pc),r0
    mov 0x02,r2
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0x03,r0
    mov.b r2,@(r0,r4)
    add 0xA8,r0
    mov 0x22,r3
    mov.b r3,@(r0,r4)
    add 0x31,r0
    mov.b @(r0,r14),r0
    add r4,r1
    mov.l @(PTR_ce34420,pc),r3
    xor 0x01,r0
    mov.b r0,@r1
    extu.b r0,r0
    mov.w @(DAT_ce34418,pc),r1
    add r4,r1
    mov.w r0,@r1
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3437a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34380:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce3485c
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce34424,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce3439a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34428,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce343c8
    mov.b @(0x6,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3442c,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x0F,r5
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce343c8:
    mov.w @(DAT_ce3441a,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce343e4
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mova @(DAT_ce34430,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce34434,pc),r0
    mov.l @(PTR_ce34438,pc),r3
    mov 0x02,r5
    fmov.s @r0,fr4
    jsr @r3
    mov r14,r4

LAB_ce343e4:
    mov.w @(DAT_ce34412,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3440a
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce3441c,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce343fc
    mov 0x14,r13
    mov 0x16,r13

LAB_ce343fc:
    lds.l @r15+,PR
    mov r13,r5
    mov.l @(PTR_ce3443c,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce3440a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34412:
    #data 0x0141
DAT_ce34414:
    #data 0x01c8
DAT_ce34416:
    #data 0x01d2
DAT_ce34418:
    #data 0x0130
DAT_ce3441a:
    #data 0x0140
DAT_ce3441c:
    #data 0x02bc
    #align4

PTR_ce34420:
    #data loc_8c02fd26
PTR_ce34424:
    #data PTR_ce3507c
PTR_ce34428:
    #data loc_8c034dee
PTR_ce3442c:
    #data loc_8c034e8c
DAT_ce34430:
    #data 0x42c80000
DAT_ce34434:
    #data 0x41e80000
PTR_ce34438:
    #data loc_8c06cffc
PTR_ce3443c:
    #data loc_8c042008

;=============================================

LAB_ce34440:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34570,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce34560,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce344c0
    mov.w @(DAT_ce34562,pc),r0
    mov 0x01,r3
    mov 0x02,r2
    mov.l @(r0,r14),r4
    add 0xEC,r0
    mov.l r14,@(r0,r4)
    add 0x42,r0
    mov.b r3,@(r0,r4)
    add 0x03,r0
    mov.b r2,@(r0,r4)
    add 0xD9,r0
    mov.b @(r0,r14),r3
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce34564,pc),r0
    mov.l @(r0,r14),r3
    tst r3,r3
    bt/s LAB_ce34478
    mov 0x20,r5
    mov 0x24,r5

LAB_ce34478:
    mov.w @(DAT_ce34566,pc),r0
    mov 0x00,r3
    fldi0 fr4
    mov.b r5,@(r0,r4)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce34560,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x01,r3
    mov.w @(DAT_ce34568,pc),r0
    mov.b @(r0,r14),r2
    xor r3,r2
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce3456a,pc),r0
    mov.l @(PTR_ce34578,pc),r2
    mov.w @(r0,r14),r1
    xor r3,r1
    mov.w r1,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce34574,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    jsr @r2
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce34834
    mov.l @r15+,r14

LAB_ce344c0:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce344c6:
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
    mov.w @(DAT_ce3456c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce3451a
    lds.l @r15+,PR
    mov.l @(PTR_ce34570,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3451a:
    mov.b @(0x6,r14),r0
    mov 0x00,r3
    mov 0x0F,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x02,r6
    mov.w @(DAT_ce3456c,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3456e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3457c,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce34930
    mov.l @r15+,r14

LAB_ce34540:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce34570,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34558
    mov.l @r15,r4
    add 0x04,r15
    bra FUN_ce348a0
    lds.l @r15+,PR

LAB_ce34558:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34560:
    #data 0x0141
DAT_ce34562:
    #data 0x01c8
DAT_ce34564:
    #data 0x02bc
DAT_ce34566:
    #data 0x01a1
DAT_ce34568:
    #data 0x01d2
DAT_ce3456a:
    #data 0x0130
DAT_ce3456c:
    #data 0x041c
DAT_ce3456e:
    #data 0x01f9
    #align4

PTR_ce34570:
    #data loc_8c034dee
DAT_ce34574:
    #data 0xbf4db6db
PTR_ce34578:
    #data loc_8c02fd26
PTR_ce3457c:
    #data loc_8c034e8c

;=============================================

FUN_ce34580:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov 0x4C,r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov 0x01,r11
    mov.l r10,@-r15
    mov 0x00,r10
    mov.l r9,@-r15
    extu.b r10,r3
    mov.w @(DAT_ce3465a,pc),r4
    mov 0x03,r9
    mov.l r8,@-r15
    mov 0x48,r8
    sts.l PR,@-r15
    add r14,r4
    mov.w @(DAT_ce3465c,pc),r1
    add r4,r0
    mov.w @(DAT_ce3465e,pc),r2
    mov.l r0,@-r15
    mov 0x44,r0
    add r4,r0
    mov.l r0,@-r15
    add r14,r1
    add r14,r2
    mov.b r10,@r1
    add r4,r8
    mov.b r10,@r2
    mov 0x40,r0
    mov.l r3,@(r0,r4)
    mov.l r3,@r8
    mov.w @(DAT_ce34660,pc),r0
    cmp/eq r5,r14
    mov.l r3,@(0x3c,r4)
    mov.l r3,@(0x38,r4)
    mov.l @r15+,r2
    mov.l r3,@r2
    mov.l r3,@(0x34,r4)
    mov.l r3,@(0x30,r4)
    mov.l r3,@(0x2c,r4)
    mov.l @r15+,r1
    mov.l r3,@r1
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce34662,pc),r0
    mov.l @(r0,r14),r2
    mov.l @(PTR_ce3466c,pc),r0
    bt/s LAB_ce345ec
    mov.b @(r0,r2),r13
    mov.w @(DAT_ce34664,pc),r0
    mov.b @(r0,r5),r2
    tst r2,r2
    bt LAB_ce345ec
    mov 0x04,r13

LAB_ce345ec:
    mov.w @(DAT_ce34660,pc),r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bt LAB_ce34602
    mov.b @(r0,r5),r0
    extu.b r0,r0
    tst 0x80,r0
    bt LAB_ce34600
    bra LAB_ce34602
    mov 0x07,r13

LAB_ce34600:
    mov 0x08,r13

LAB_ce34602:
    mov.w @(DAT_ce34662,pc),r0
    mov.l @(r0,r14),r0
    cmp/eq 0x0B,r0
    bt LAB_ce3462a
    cmp/eq 0x12,r0
    bt LAB_ce34636
    cmp/eq 0x22,r0
    bt LAB_ce34642
    cmp/eq 0x29,r0
    bt LAB_ce3464e
    cmp/eq 0x2D,r0
    bt LAB_ce34670
    cmp/eq 0x2F,r0
    bt LAB_ce34686
    cmp/eq 0x31,r0
    bt LAB_ce3469c
    cmp/eq 0x37,r0
    bt LAB_ce346c4
    bra LAB_ce346ce
    nop

LAB_ce3462a:
    mov.w @(DAT_ce34666,pc),r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bt LAB_ce34656
    bra LAB_ce346ce
    nop

LAB_ce34636:
    mov.w @(DAT_ce3465a,pc),r0
    mov.w @(r0,r5),r1
    cmp/pl r1
    bf LAB_ce346ce
    bra LAB_ce34656
    nop

LAB_ce34642:
    mov.w @(DAT_ce34668,pc),r0
    mov.l @(r0,r5),r3
    tst r3,r3
    bf LAB_ce34656
    bra LAB_ce346ce
    nop

LAB_ce3464e:
    mov.w @(DAT_ce3466a,pc),r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bt LAB_ce346ce

LAB_ce34656:
    bra LAB_ce346ce
    mov r11,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3465a:
    #data 0x02a4
DAT_ce3465c:
    #data 0x0206
DAT_ce3465e:
    #data 0x0205
DAT_ce34660:
    #data 0x0202
DAT_ce34662:
    #data 0x02a8
DAT_ce34664:
    #data 0x03f2
DAT_ce34666:
    #data 0x02b2
DAT_ce34668:
    #data 0x00cc
DAT_ce3466a:
    #data 0x02a9
    #align4

PTR_ce3466c:
    #data DAT_ce3508c

;=============================================

LAB_ce34670:
    mov.w @(DAT_ce34726,pc),r0
    mov.b @(r0,r5),r2
    tst r2,r2
    bt LAB_ce3467a
    mov r11,r13

LAB_ce3467a:
    mov.w @(DAT_ce34728,pc),r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bt LAB_ce346ce
    bra LAB_ce346ce
    mov 0x02,r13

LAB_ce34686:
    mov.w @(DAT_ce3472a,pc),r0
    mov.l @(r0,r5),r0
    cmp/eq 0x03,r0
    bf LAB_ce34690
    mov r11,r13

LAB_ce34690:
    mov.w @(DAT_ce3472a,pc),r0
    mov.l @(r0,r5),r0
    cmp/eq 0x01,r0
    bf LAB_ce346ce
    bra LAB_ce346ce
    mov r9,r13

LAB_ce3469c:
    mov.w @(DAT_ce3472c,pc),r0
    mov.w @(r0,r5),r3
    cmp/pl r3
    bf LAB_ce346b8
    mov.w @(DAT_ce3472e,pc),r0
    mov.b @(r0,r5),r2
    tst r2,r2
    bt LAB_ce346ae
    mov r11,r13

LAB_ce346ae:
    mov.w @(DAT_ce34730,pc),r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bt LAB_ce346b8
    mov r9,r13

LAB_ce346b8:
    mov.w @(DAT_ce34732,pc),r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bt LAB_ce346ce
    bra LAB_ce346ce
    mov 0x05,r13

LAB_ce346c4:
    mov.w @(DAT_ce34734,pc),r0
    mov.b @(r0,r5),r2
    tst r2,r2
    bt LAB_ce346ce
    mov 0x09,r13

LAB_ce346ce:
    mov.w @(DAT_ce34736,pc),r1
    mov.b @(0x1,r14),r0
    add r14,r1
    mov.w @(DAT_ce3473a,pc),r12
    extu.b r0,r0
    mov.l r0,@r1
    mov.w @(DAT_ce34738,pc),r0
    mov.l r13,@(r0,r14)
    mov r13,r0
    nop
    cmp/eq 0x00,r0
    bf/s LAB_ce346ec
    mov 0x28,r4
    bra LAB_ce34802
    nop

LAB_ce346ec:
    cmp/eq 0x01,r0
    bt LAB_ce34714
    cmp/eq 0x02,r0
    bt LAB_ce34742
    cmp/eq 0x03,r0
    bt LAB_ce34756
    cmp/eq 0x04,r0
    bt LAB_ce3476a
    cmp/eq 0x05,r0
    bt LAB_ce34784
    cmp/eq 0x06,r0
    bt LAB_ce347ac
    cmp/eq 0x07,r0
    bt LAB_ce347b8
    cmp/eq 0x08,r0
    bt LAB_ce347d0
    cmp/eq 0x09,r0
    bt LAB_ce347e2
    bra LAB_ce34802
    nop

LAB_ce34714:
    mov.w @(DAT_ce3473c,pc),r0
    mov.w @(DAT_ce34740,pc),r5
    mov.l r12,@(r0,r14)
    mov.w @(DAT_ce3473e,pc),r0
    add r14,r5
    add 0x2C,r5
    mov.b r4,@(r0,r14)
    bra LAB_ce34802
    mov r10,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34726:
    #data 0x02ad
DAT_ce34728:
    #data 0x02b4
DAT_ce3472a:
    #data 0x02c0
DAT_ce3472c:
    #data 0x02b2
DAT_ce3472e:
    #data 0x03ee
DAT_ce34730:
    #data 0x0200
DAT_ce34732:
    #data 0x02ba
DAT_ce34734:
    #data 0x02ac
DAT_ce34736:
    #data 0x02a8
DAT_ce34738:
    #data 0x00cc
DAT_ce3473a:
    #data 0x0384
DAT_ce3473c:
    #data 0x02d0
DAT_ce3473e:
    #data 0x0205
DAT_ce34740:
    #data 0x02a4

;=============================================

LAB_ce34742:
    mov.w @(DAT_ce34864,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce34868,pc),r5
    mov.l r12,@(r0,r14)
    mov.w @(DAT_ce34866,pc),r0
    add r14,r5
    add 0x30,r5
    mov.b r3,@(r0,r14)
    bra LAB_ce34802
    mov r11,r6

LAB_ce34756:
    mov.w @(DAT_ce3486c,pc),r0
    mov.w @(DAT_ce3486a,pc),r2
    mov.w @(DAT_ce34868,pc),r5
    mov.l r2,@(r0,r14)
    mov.w @(DAT_ce3486e,pc),r0
    add r14,r5
    add 0x34,r5
    mov.b r11,@(r0,r14)
    bra LAB_ce34802
    mov 0x02,r6

LAB_ce3476a:
    mov.w @(DAT_ce34870,pc),r0
    mov 0x00,r7
    mov.l @(PTR_ce3488c,pc),r3
    mov r12,r5
    mov.l r12,@(r0,r14)
    mov r7,r6
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34868,pc),r5
    add r14,r5
    add 0x3C,r5
    bra LAB_ce34802
    mov r9,r6

LAB_ce34784:
    mov.w @(DAT_ce34872,pc),r0
    mov.w @(r0,r14),r3
    add 0xFC,r0
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce34874,pc),r0
    sub r2,r3
    shll2 r3
    shll r3
    tst r3,r3
    bt/s LAB_ce347a4
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce34868,pc),r5
    add r14,r5
    add 0x44,r5
    bra LAB_ce34802
    mov 0x04,r6

LAB_ce347a4:
    mov.w @(DAT_ce34876,pc),r0
    mov r10,r13
    bra LAB_ce34802
    mov.l r10,@(r0,r14)

LAB_ce347ac:
    mov.l @(PTR_ce34890,pc),r2
    mov.w @(DAT_ce34878,pc),r5
    jsr @r2
    mov r14,r4
    bra LAB_ce34802
    mov 0x05,r6

LAB_ce347b8:
    mov.w @(DAT_ce3487a,pc),r0
    mov.w @(DAT_ce34868,pc),r5
    mov.l r12,@(r0,r14)
    mov.w @(DAT_ce3487c,pc),r0
    add r14,r5
    mov.w @(DAT_ce3487e,pc),r3
    add 0x40,r5
    mov.b @(r0,r14),r2
    or r3,r2
    mov.b r2,@(r0,r14)
    bra LAB_ce34802
    mov 0x08,r6

LAB_ce347d0:
    mov.w @(DAT_ce34880,pc),r0
    mov.w @(DAT_ce34868,pc),r5
    mov.l r12,@(r0,r14)
    mov.w @(DAT_ce3487c,pc),r0
    add r14,r5
    add 0x38,r5
    mov.b r11,@(r0,r14)
    bra LAB_ce34802
    mov 0x07,r6

LAB_ce347e2:
    mov.w @(DAT_ce34882,pc),r0
    mov 0x00,r7
    mov.l @(PTR_ce3488c,pc),r3
    mov r12,r5
    mov.l r12,@(r0,r14)
    mov r7,r6
    mov.w @(DAT_ce34884,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34868,pc),r5
    mov 0x09,r6
    add r14,r5
    add 0x48,r5

LAB_ce34802:
    tst r13,r13
    bt LAB_ce34822
    mov.w @(DAT_ce34886,pc),r0
    mov 0x0A,r3
    mov r14,r4
    mov.l r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce34894,pc),r3
    mov.l @r15+,r8
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce34822:
    lds.l @r15+,PR
    mov.l @r15+,r8
    mov.l @r15+,r9
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34834:
    mov.w @(DAT_ce34876,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34858
    mov.w @(DAT_ce34888,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce34858
    mov.w @(DAT_ce34876,pc),r0
    mov r14,r4
    mov.l @(r0,r14),r3
    mov.l @(PTR_ce34898,pc),r0
    mov.b @(r0,r3),r5
    mov.l @(PTR_ce3489c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34858:
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3485c:
    mov.w @(DAT_ce34886,pc),r0
    mov 0x04,r3
    rts
    mov.l r3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34864:
    #data 0x02d4
DAT_ce34866:
    #data 0x0206
DAT_ce34868:
    #data 0x02a4
DAT_ce3486a:
    #data 0x0258
DAT_ce3486c:
    #data 0x02d8
DAT_ce3486e:
    #data 0x0200
DAT_ce34870:
    #data 0x02e0
DAT_ce34872:
    #data 0x0424
DAT_ce34874:
    #data 0x02e8
DAT_ce34876:
    #data 0x00cc
DAT_ce34878:
    #data 0x0090
DAT_ce3487a:
    #data 0x02e4
DAT_ce3487c:
    #data 0x0202
DAT_ce3487e:
    #data 0x0080
DAT_ce34880:
    #data 0x02dc
DAT_ce34882:
    #data 0x02ec
DAT_ce34884:
    #data 0x0205
DAT_ce34886:
    #data 0x02f0
DAT_ce34888:
    #data 0x0411
    #align4

PTR_ce3488c:
    #data loc_8c059a44
PTR_ce34890:
    #data loc_8c056de4
PTR_ce34894:
    #data loc_8c0f047c
PTR_ce34898:
    #data DAT_ce350e0
PTR_ce3489c:
    #data loc_8c104df8

;=============================================

FUN_ce348a0:
    mov.w @(DAT_ce349c2,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce348b0
    mov.l @(PTR_ce349d4,pc),r3
    jmp @r3
    nop

LAB_ce348b0:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    mov.l @(PTR_ce349d8,pc),r3
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    jmp @r3
    fmov fr4,@(r0,r4)

LAB_ce348c6:
    mov.w @(DAT_ce349c4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce349c6,pc),r2
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    extu.b r3,r3
    cmp/eq r2,r3
    bt LAB_ce3490a
    mov.l @(PTR_ce349dc,pc),r1
    jsr @r1
    nop
    mov 0x03,r3
    mov r0,r4
    tst r4,r3
    bf LAB_ce3490a
    mov.w @(DAT_ce349c6,pc),r1
    tst r1,r4
    bt LAB_ce348f4
    mov.w @(DAT_ce349c8,pc),r0
    mov 0x0A,r2
    bra LAB_ce348fa
    mov.b r2,@(r0,r14)

LAB_ce348f4:
    mov.w @(DAT_ce349c8,pc),r0
    mov 0x0B,r3
    mov.b r3,@(r0,r14)

LAB_ce348fa:
    mov.w @(DAT_ce349c8,pc),r0
    mov 0x00,r5
    lds.l @r15+,PR
    mov.l @(PTR_ce349e0,pc),r3
    mov r14,r4
    mov.b @(r0,r14),r6
    jmp @r3
    mov.l @r15+,r14

LAB_ce3490a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34910:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce349c4,pc),r0
    mov 0x00,r4
    mov r4,r5
    mov.l @(PTR_ce349e4,pc),r3
    mov.b r4,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce349ca,pc),r4
    mov.w @(DAT_ce349c6,pc),r6
    add r14,r4
    jmp @r3
    mov.l @r15+,r14

;=============================================

FUN_ce34930:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce349e8,pc),r3
    jsr @r3
    mov.l r4,@r15
    mov.w @(DAT_ce349c4,pc),r0
    mov.l @r15,r2
    mov.b @(r0,r2),r3
    mov.w @(DAT_ce349c6,pc),r2
    extu.b r3,r3
    cmp/eq r2,r3
    bf LAB_ce34954
    mov.l @(PTR_ce349ec,pc),r5
    mov 0x01,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r5)
    mov.b r0,@(0x6,r5)

LAB_ce34954:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce3495c:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov 0x00,r3
    mov.w @(DAT_ce349c2,pc),r0
    mov.b r3,@(r0,r4)
    mov.w @(DAT_ce349cc,pc),r0
    mov.l @(PTR_ce349f0,pc),r3
    fmov.s @(r0,r4),fr3
    mov 0x38,r0
    jmp @r3
    fmov fr3,@(r0,r4)

LAB_ce34980:
    mov.w @(DAT_ce349ce,pc),r0
    mov.b @(r0,r4),r6
    extu.b r6,r6
    tst r6,r6
    bt LAB_ce349b0
    mov 0x00,r5
    mov.l @(PTR_ce349f4,pc),r3
    mov.b r5,@(r0,r4)
    add 0x56,r0
    mov.b r6,@(r0,r4)
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

LAB_ce349b0:
    rts
    nop

LAB_ce349b4:
    mov.w @(DAT_ce349d0,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce349f8,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce349c2:
    #data 0x01f9
DAT_ce349c4:
    #data 0x0202
DAT_ce349c6:
    #data 0x0080
DAT_ce349c8:
    #data 0x0158
DAT_ce349ca:
    #data 0x02a4
DAT_ce349cc:
    #data 0x041c
DAT_ce349ce:
    #data 0x014b
DAT_ce349d0:
    #data 0x01c8
    #align4

PTR_ce349d4:
    #data loc_8c05176e
PTR_ce349d8:
    #data loc_8c051648
PTR_ce349dc:
    #data loc_8c03319e
PTR_ce349e0:
    #data loc_8c034e8c
PTR_ce349e4:
    #data loc_8c129728
PTR_ce349e8:
    #data loc_8c0511b4
PTR_ce349ec:
    #data loc_8c26a518
PTR_ce349f0:
    #data loc_8c05218a
PTR_ce349f4:
    #data loc_8c2896b0
PTR_ce349f8:
    #data loc_8c04cc1c

;=============================================

LAB_ce349fc:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34ab4,pc),r0
    mov.b @(r0,r4),r5
    mov.l @(PTR_ce34abc,pc),r0
    mov.b @(r0,r5),r5
    mov.w @(DAT_ce34ab6,pc),r0
    mov.l @(r0,r4),r0
    cmp/eq 0x27,r0
    bf LAB_ce34a16
    mov 0x1C,r5

LAB_ce34a16:
    mov.w @(DAT_ce34ab6,pc),r0
    mov.l @(r0,r4),r0
    cmp/eq 0x07,r0
    bf LAB_ce34a20
    mov 0x1B,r5

LAB_ce34a20:
    mov.w @(DAT_ce34ab8,pc),r0
    mov.l @(PTR_ce34ac0,pc),r3
    mov.b r5,@(r0,r4)
    jmp @r3
    mov 0x1D,r5

LAB_ce34a2a:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34ab4,pc),r0
    mov.b @(r0,r4),r5
    mov.l @(PTR_ce34ac4,pc),r0
    mov.b @(r0,r5),r5
    mov.w @(DAT_ce34ab6,pc),r0
    mov.l @(r0,r4),r0
    cmp/eq 0x27,r0
    bf LAB_ce34a44
    mov 0x1C,r5

LAB_ce34a44:
    mov.w @(DAT_ce34ab6,pc),r0
    mov.l @(r0,r4),r0
    cmp/eq 0x07,r0
    bf LAB_ce34a4e
    mov 0x1B,r5

LAB_ce34a4e:
    mov.w @(DAT_ce34ab8,pc),r0
    mov.l @(PTR_ce34ac0,pc),r3
    mov.b r5,@(r0,r4)
    jmp @r3
    mov 0x1D,r5

LAB_ce34a58:
    mov 0x00,r0
    mov.l @(PTR_ce34ac8,pc),r5
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34ab4,pc),r0
    mov.w @(DAT_ce34aba,pc),r1
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce34ab8,pc),r0
    add r4,r1
    shll r3
    add r5,r3
    mov.b @r3,r2
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce34ab4,pc),r0
    mov.b @(r0,r4),r3
    shll r3
    add r3,r5
    mov.l @(PTR_ce34ac0,pc),r3
    mov.b @(0x1,r5),r0
    mov.b r0,@r1
    jmp @r3
    mov 0x15,r5

LAB_ce34a86:
    mov 0x00,r0
    mov.l @(PTR_ce34acc,pc),r5
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce34ab4,pc),r0
    mov.w @(DAT_ce34aba,pc),r1
    mov.b @(r0,r4),r3
    mov.w @(DAT_ce34ab8,pc),r0
    add r4,r1
    shll r3
    add r5,r3
    mov.b @r3,r2
    mov.b r2,@(r0,r4)
    mov.w @(DAT_ce34ab4,pc),r0
    mov.b @(r0,r4),r3
    shll r3
    add r3,r5
    mov.l @(PTR_ce34ac0,pc),r3
    mov.b @(0x1,r5),r0
    mov.b r0,@r1
    jmp @r3
    mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34ab4:
    #data 0x04c9
DAT_ce34ab6:
    #data 0x02a8
DAT_ce34ab8:
    #data 0x01e9
DAT_ce34aba:
    #data 0x01a3
    #align4

PTR_ce34abc:
    #data DAT_ce350ea
PTR_ce34ac0:
    #data loc_8c0530d8
PTR_ce34ac4:
    #data DAT_ce350ed
PTR_ce34ac8:
    #data DAT_ce350f0
PTR_ce34acc:
    #data DAT_ce350f6
DAT_ce34ad0:
    #data 0x0201
    #data 0x0200
DAT_ce34ad4:
    #data 0x02ff
    #data 0x0201
DAT_ce34ad8:
    #data 0xffff
    #data 0x02ff
DAT_ce34adc:
    #data 0x0201
    #data 0x0201
DAT_ce34ae0:
    #data 0x02ff
    #data 0x02ff
DAT_ce34ae4:
    #data 0xffff
    #data 0xffff
DAT_ce34ae8:
    #data 0x0201
    #data 0x0201
DAT_ce34aec:
    #data 0x02ff
    #data 0x02ff
DAT_ce34af0:
    #data 0xffff
    #data 0xffff
DAT_ce34af4:
    #data 0x0201
    #data 0x0201
DAT_ce34af8:
    #data 0x02ff
    #data 0x02ff
DAT_ce34afc:
    #data 0xffff
    #data 0xffff
DAT_ce34b00:
    #data 0x0201
    #data 0x0200
DAT_ce34b04:
    #data 0x02ff
    #data 0x0201
DAT_ce34b08:
    #data 0xffff
    #data 0x02ff
DAT_ce34b0c:
    #data 0x0201
    #data 0x0201
DAT_ce34b10:
    #data 0x02ff
    #data 0x02ff
DAT_ce34b14:
    #data 0xffff
    #data 0xffff
    #align4

PTR_ce34b18:
    #data DAT_ce34ad0
PTR_ce34b1c:
    #data DAT_ce34ad4
PTR_ce34b20:
    #data DAT_ce34ad8
PTR_ce34b24:
    #data DAT_ce34adc
PTR_ce34b28:
    #data DAT_ce34ae0
PTR_ce34b2c:
    #data DAT_ce34ae4
PTR_ce34b30:
    #data DAT_ce34ae8
PTR_ce34b34:
    #data DAT_ce34aec
PTR_ce34b38:
    #data DAT_ce34af0
PTR_ce34b3c:
    #data DAT_ce34af4
PTR_ce34b40:
    #data DAT_ce34af8
PTR_ce34b44:
    #data DAT_ce34afc
PTR_ce34b48:
    #data DAT_ce34b00
PTR_ce34b4c:
    #data DAT_ce34b04
PTR_ce34b50:
    #data DAT_ce34b08
PTR_ce34b54:
    #data DAT_ce34b0c
PTR_ce34b58:
    #data DAT_ce34b10
PTR_ce34b5c:
    #data DAT_ce34b14
DAT_ce34b60:
    #data 0x0003
    #data 0x0000
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34b70:
    #data 0x0003
    #data 0x1000
    #data 0x000d
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce34b80:
    #data 0x0003
    #data 0x1000
    #data 0x0016
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0060
DAT_ce34b90:
    #data 0x0003
    #data 0x0000
    #data 0x000b
    #data 0x0000
    #data 0x1000
    #data 0x1400
    #data 0x0400
    #data 0x0060
DAT_ce34ba0:
    #data 0x0003
    #data 0x9100
    #data 0x0014
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34bb0:
    #data 0x0004
    #data 0x1000
    #data 0x000c
    #data 0x0000
    #data 0x0300
DAT_ce34bba:
    #data 0x0003
    #data 0x1000
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce34bca:
    #data 0x0004
    #data 0x1100
    #data 0x0017
    #data 0x0000
    #data 0x0200
    #data 0x0200
    #data 0x0800
    #data 0x0040
    #data 0x0100
    #align4

PTR_ce34bdc:
    #data LAB_ce304ac
PTR_ce34be0:
    #data LAB_ce3001c
PTR_ce34be4:
    #data LAB_ce308a0
PTR_ce34be8:
    #data LAB_ce30d02
PTR_ce34bec:
    #data LAB_ce30e2c
PTR_ce34bf0:
    #data LAB_ce30f90
PTR_ce34bf4:
    #data LAB_ce310f0
PTR_ce34bf8:
    #data LAB_ce312b8
PTR_ce34bfc:
    #data LAB_ce3146c
PTR_ce34c00:
    #data LAB_ce33cf4
PTR_ce34c04:
    #data LAB_ce33d50
PTR_ce34c08:
    #data LAB_ce33ec2
PTR_ce34c0c:
    #data LAB_ce349b4
PTR_ce34c10:
    #data FUN_ce3042c
PTR_ce34c14:
    #data LAB_ce33b6e
PTR_ce34c18:
    #data LAB_ce30d3c
PTR_ce34c1c:
    #data LAB_ce349fc
PTR_ce34c20:
    #data LAB_ce34a2a
PTR_ce34c24:
    #data LAB_ce34a58
PTR_ce34c28:
    #data LAB_ce34a86
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce34c38:
    #data LAB_ce34910
PTR_ce34c3c:
    #data LAB_ce348c6
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
DAT_ce34c4c:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x03
    #data 0x04
    #data 0x05
    #data 0x06
    #data 0x07
    #data 0x08
DAT_ce34c55:
    #data 0x09
    #data 0x0a
    #data 0x0b
DAT_ce34c58:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce34c5b:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce34c64:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce34c67:
    #data 0x07
    #data 0x07
    #data 0x07
    #data 0x08
    #data 0x08
    #data 0x08
    #data 0x09
    #data 0x09
    #data 0x09
DAT_ce34c70:
    #data 0x0a
    #data 0x0a
    #data 0x0a
DAT_ce34c73:
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x03
    #data 0x04
DAT_ce34c79:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce34c7c:
    #data 0x00
    #data 0x00
    #data 0x00
DAT_ce34c7f:
    #data 0x0c
    #data 0x0d
    #data 0x0e
DAT_ce34c82:
    #data 0x0f
    #data 0x10
    #data 0x11
DAT_ce34c85:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce34c88:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce34c8b:
    #data 0x00
    #data 0x01
    #data 0x02
DAT_ce34c8e:
    #data 0x0b
    #data 0x0b
    #data 0x0b
DAT_ce34c91:
    #data 0x0c
    #data 0x0c
    #data 0x0c
PTR_ce34c94:
    #data LAB_ce3064a
PTR_ce34c98:
    #data LAB_ce3084a
PTR_ce34c9c:
    #data LAB_ce30768
PTR_ce34ca0:
    #data LAB_ce3064a
PTR_ce34ca4:
    #data LAB_ce30918
PTR_ce34ca8:
    #data LAB_ce30980
PTR_ce34cac:
    #data LAB_ce30a04
PTR_ce34cb0:
    #data LAB_ce30a94
PTR_ce34cb4:
    #data LAB_ce30ab6
PTR_ce34cb8:
    #data LAB_ce30b5c
PTR_ce34cbc:
    #data LAB_ce30ba0
PTR_ce34cc0:
    #data LAB_ce30be4
PTR_ce34cc4:
    #data LAB_ce30c58
DAT_ce34cc8:
    #data 0x00000000
    #data 0xc1555555
    #data 0xc1555555
    #data 0xc1d55555
    #data 0xc2a00000
PTR_ce34cdc:
    #data LAB_ce30a3e
PTR_ce34ce0:
    #data LAB_ce308b4
PTR_ce34ce4:
    #data LAB_ce30a26
PTR_ce34ce8:
    #data FUN_ce30cf2
PTR_ce34cec:
    #data LAB_ce30e70
PTR_ce34cf0:
    #data LAB_ce30eb2
PTR_ce34cf4:
    #data LAB_ce30f30
PTR_ce34cf8:
    #data LAB_ce30fd0
PTR_ce34cfc:
    #data LAB_ce31012
PTR_ce34d00:
    #data LAB_ce31090
PTR_ce34d04:
    #data LAB_ce31130
PTR_ce34d08:
    #data LAB_ce311b4
PTR_ce34d0c:
    #data LAB_ce31284
DAT_ce34d10:
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x03
DAT_ce34d14:
    #data 0x09
    #data 0x09
    #data 0x02
    #data 0x09
    #data 0x09
DAT_ce34d19:
    #data 0x04
    #data 0x05
    #data 0x06
    #data 0x07
    #data 0x08
    #data 0x05
    #data 0x06
    #data 0x07
    #data 0x00
    #data 0x00
    #data 0x00
PTR_ce34d24:
    #data LAB_ce31480
PTR_ce34d28:
    #data LAB_ce31486
PTR_ce34d2c:
    #data LAB_ce3148c
PTR_ce34d30:
    #data LAB_ce31492
PTR_ce34d34:
    #data LAB_ce31708
PTR_ce34d38:
    #data LAB_ce3170e
PTR_ce34d3c:
    #data LAB_ce31714
PTR_ce34d40:
    #data LAB_ce3171a
PTR_ce34d44:
    #data LAB_ce31720
PTR_ce34d48:
    #data LAB_ce318ea
PTR_ce34d4c:
    #data LAB_ce318f0
PTR_ce34d50:
    #data LAB_ce318f6
PTR_ce34d54:
    #data LAB_ce31c02
PTR_ce34d58:
    #data LAB_ce31cec
PTR_ce34d5c:
    #data LAB_ce31f64
PTR_ce34d60:
    #data LAB_ce31f6a
PTR_ce34d64:
    #data LAB_ce31f70
PTR_ce34d68:
    #data LAB_ce31f76
PTR_ce34d6c:
    #data LAB_ce321b2
PTR_ce34d70:
    #data LAB_ce32396
PTR_ce34d74:
    #data LAB_ce323fe
PTR_ce34d78:
    #data LAB_ce32b82
PTR_ce34d7c:
    #data LAB_ce32b88
PTR_ce34d80:
    #data LAB_ce32e8c
PTR_ce34d84:
    #data LAB_ce3325c
PTR_ce34d88:
    #data LAB_ce333fc
PTR_ce34d8c:
    #data LAB_ce33402
PTR_ce34d90:
    #data LAB_ce3350c
PTR_ce34d94:
    #data LAB_ce337f0
PTR_ce34d98:
    #data LAB_ce314f8
PTR_ce34d9c:
    #data LAB_ce31574
PTR_ce34da0:
    #data LAB_ce31588
PTR_ce34da4:
    #data LAB_ce31654
PTR_ce34da8:
    #data LAB_ce316e6
DAT_ce34dac:
    #data 0xc1200000
DAT_ce34db0:
    #data 0x3e555555
    #data 0xc1555555
    #data 0x3e555555
    #data 0xc1855555
    #data 0x3e555555
PTR_ce34dc4:
    #data LAB_ce3175c
PTR_ce34dc8:
    #data LAB_ce317d8
PTR_ce34dcc:
    #data LAB_ce31800
PTR_ce34dd0:
    #data FUN_ce31838
DAT_ce34dd4:
    #data 0xc1200000
    #data 0xc1555555
    #data 0xc1855555
DAT_ce34de0:
    #data 0x41892492
    #data 0x41cdb6db
    #data 0x42092492
PTR_ce34dec:
    #data LAB_ce31908
PTR_ce34df0:
    #data LAB_ce31976
PTR_ce34df4:
    #data LAB_ce319e8
PTR_ce34df8:
    #data LAB_ce31b20
PTR_ce34dfc:
    #data LAB_ce31b90
PTR_ce34e00:
    #data LAB_ce31c14
PTR_ce34e04:
    #data LAB_ce31c84
PTR_ce34e08:
    #data FUN_ce31cca
PTR_ce34e0c:
    #data LAB_ce31d0a
PTR_ce34e10:
    #data LAB_ce31d5e
PTR_ce34e14:
    #data LAB_ce31dbc
PTR_ce34e18:
    #data LAB_ce31e6c
PTR_ce34e1c:
    #data LAB_ce31ea2
DAT_ce34e20:
    #data 0x01
    #data 0x02
    #data 0x03
    #data 0x03
PTR_ce34e24:
    #data LAB_ce31f94
PTR_ce34e28:
    #data LAB_ce3202c
PTR_ce34e2c:
    #data LAB_ce32096
PTR_ce34e30:
    #data LAB_ce3212c
PTR_ce34e34:
    #data LAB_ce32190
DAT_ce34e38:
    #data 0xc1555555
    #data 0xc1a00000
    #data 0xc1855555
DAT_ce34e44:
    #data 0xbf092492
    #data 0xbe092492
    #data 0xbe892492
DAT_ce34e50:
    #data 0x3fc80000
    #data 0x40200000
    #data 0x3fd55555
PTR_ce34e5c:
    #data LAB_ce321d0
PTR_ce34e60:
    #data LAB_ce3225e
PTR_ce34e64:
    #data FUN_ce32374
DAT_ce34e68:
    #data 0xc12d5555
    #data 0xc12d5555
    #data 0xc12d5555
DAT_ce34e74:
    #data 0x0002
    #data 0x0006
    #data 0x0004
    #align4

PTR_ce34e7c:
    #data LAB_ce3244c
PTR_ce34e80:
    #data LAB_ce3249c
PTR_ce34e84:
    #data LAB_ce32500
PTR_ce34e88:
    #data LAB_ce32598
PTR_ce34e8c:
    #data LAB_ce326d4
PTR_ce34e90:
    #data LAB_ce32784
PTR_ce34e94:
    #data LAB_ce32860
PTR_ce34e98:
    #data LAB_ce328d8
PTR_ce34e9c:
    #data LAB_ce3292e
PTR_ce34ea0:
    #data LAB_ce329e8
PTR_ce34ea4:
    #data LAB_ce32a9c
PTR_ce34ea8:
    #data LAB_ce32b5c
PTR_ce34eac:
    #data LAB_ce32ba6
PTR_ce34eb0:
    #data LAB_ce32c50
PTR_ce34eb4:
    #data LAB_ce32cb4
PTR_ce34eb8:
    #data LAB_ce32d4c
PTR_ce34ebc:
    #data LAB_ce32ddc
PTR_ce34ec0:
    #data LAB_ce32e5e
DAT_ce34ec4:
    #data 0x414db6db
DAT_ce34ec8:
    #data 0xbe892492
    #data 0x41892492
    #data 0xbeab6db6
    #data 0x41ab6db6
    #data 0xbecdb6db
DAT_ce34edc:
    #data 0x0040
    #data 0x0020
    #data 0x0020
DAT_ce34ee2:
    #data 0x0030
    #data 0x0040
    #data 0x0050
DAT_ce34ee8:
    #data 0x0008
    #data 0x000a
    #data 0x000c
    #align4

DAT_ce34ef0:
    #data 0x419a4924
DAT_ce34ef4:
    #data 0xc14db6db
    #data 0x41b40000
    #data 0xc1700000
    #data 0x41cdb6db
    #data 0xc1892492
PTR_ce34f08:
    #data LAB_ce32e9e
PTR_ce34f0c:
    #data LAB_ce32f08
PTR_ce34f10:
    #data LAB_ce32fa2
PTR_ce34f14:
    #data LAB_ce3309c
PTR_ce34f18:
    #data LAB_ce330f8
PTR_ce34f1c:
    #data LAB_ce3322c
PTR_ce34f20:
    #data LAB_ce3327a
PTR_ce34f24:
    #data LAB_ce332d0
PTR_ce34f28:
    #data LAB_ce3335c
PTR_ce34f2c:
    #data FUN_ce333da
PTR_ce34f30:
    #data LAB_ce33414
PTR_ce34f34:
    #data LAB_ce334ac
PTR_ce34f38:
    #data FUN_ce334ea
PTR_ce34f3c:
    #data LAB_ce3351e
PTR_ce34f40:
    #data LAB_ce3359e
PTR_ce34f44:
    #data LAB_ce33644
PTR_ce34f48:
    #data LAB_ce3369a
PTR_ce34f4c:
    #data FUN_ce337ce
PTR_ce34f50:
    #data LAB_ce3380e
PTR_ce34f54:
    #data LAB_ce3387e
PTR_ce34f58:
    #data LAB_ce33948
PTR_ce34f5c:
    #data LAB_ce33a44
PTR_ce34f60:
    #data LAB_ce33a96
PTR_ce34f64:
    #data LAB_ce33aec
PTR_ce34f68:
    #data FUN_ce33b4e
PTR_ce34f6c:
    #data LAB_ce33bac
PTR_ce34f70:
    #data LAB_ce33c32
PTR_ce34f74:
    #data FUN_ce33c9e
DAT_ce34f78:
    #data 0x00000001
    #data 0x00000000
    #data 0x00000001
    #data 0x00000000
PTR_ce34f88:
    #data LAB_ce33d68
PTR_ce34f8c:
    #data LAB_ce33ddc
PTR_ce34f90:
    #data LAB_ce33e1c
PTR_ce34f94:
    #data LAB_ce33e1c
PTR_ce34f98:
    #data FUN_ce33e7e
DAT_ce34f9c:
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #data 0x0018
    #align4

PTR_ce3501c:
    #data LAB_ce33ee0
PTR_ce35020:
    #data LAB_ce33f16
PTR_ce35024:
    #data LAB_ce341c8
PTR_ce35028:
    #data LAB_ce34380
PTR_ce3502c:
    #data LAB_ce33ee0
PTR_ce35030:
    #data LAB_ce33f28
PTR_ce35034:
    #data LAB_ce33fc2
PTR_ce35038:
    #data LAB_ce3404c
PTR_ce3503c:
    #data LAB_ce340f8
DAT_ce35040:
    #data 0x4112aaaa
DAT_ce35044:
    #data 0x00000000
DAT_ce35048:
    #data 0x41f89249
DAT_ce3504c:
    #data 0xbfcdb6db
    #data 0x40baaaaa
    #data 0x00000000
    #data 0x420d6db7
    #data 0xbf892492
    #data 0x40baaaaa
    #data 0x00000000
    #data 0x420d6db7
    #data 0xbf892492
PTR_ce35070:
    #data LAB_ce341e4
PTR_ce35074:
    #data LAB_ce34250
PTR_ce35078:
    #data LAB_ce342b2
PTR_ce3507c:
    #data LAB_ce3439a
PTR_ce35080:
    #data LAB_ce34440
PTR_ce35084:
    #data LAB_ce344c6
PTR_ce35088:
    #data LAB_ce34540
DAT_ce3508c:
    #data 0x01
    #data 0x02
    #data 0x02
    #data 0x03
    #data 0x05
    #data 0x03
    #data 0x01
    #data 0x03
    #data 0x03
    #data 0x02
    #data 0x00
    #data 0x02
    #data 0x03
    #data 0x01
    #data 0x01
    #data 0x02
    #data 0x02
    #data 0x05
    #data 0x03
    #data 0x02
    #data 0x03
    #data 0x01
    #data 0x03
    #data 0x01
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x03
    #data 0x01
    #data 0x02
    #data 0x01
    #data 0x05
    #data 0x03
    #data 0x01
    #data 0x02
    #data 0x05
    #data 0x03
    #data 0x05
    #data 0x01
    #data 0x01
    #data 0x03
    #data 0x02
    #data 0x03
    #data 0x01
    #data 0x02
    #data 0x05
    #data 0x02
    #data 0x02
    #data 0x02
    #data 0x02
    #data 0x02
    #data 0x02
    #data 0x02
    #data 0x01
    #data 0x01
    #data 0x02
    #data 0x01
    #data 0x03
    #data 0x05
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x84
    #data 0x03
    #data 0x84
    #data 0x03
    #data 0x58
    #data 0x02
    #data 0x84
    #data 0x03
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x84
    #data 0x03
    #data 0x84
    #data 0x03
    #data 0x84
    #data 0x03
DAT_ce350e0:
    #data 0x00
    #data 0x00
    #data 0x01
    #data 0x02
    #data 0x03
    #data 0x04
    #data 0x05
    #data 0x03
    #data 0x03
    #data 0x03
DAT_ce350ea:
    #data 0x18
    #data 0x18
    #data 0x18
DAT_ce350ed:
    #data 0x18
    #data 0x18
    #data 0x18
DAT_ce350f0:
    #data 0x0d
DAT_ce350f1:
    #data 0x01
    #data 0x03
    #data 0x01
    #data 0x0b
    #data 0x01
DAT_ce350f6:
    #data 0x0d
DAT_ce350f7:
    #data 0x01
    #data 0x03
    #data 0x01
    #data 0x0b
    #data 0x01
