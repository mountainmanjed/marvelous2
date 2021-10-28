; S_PL35A.BIN
#symbol loc_8C054508 0x8C054508
#symbol loc_8C054B34 0x8C054B34
#symbol loc_8C05496C 0x8C05496C
#symbol loc_8C054D04 0x8C054D04
#symbol loc_8C054184 0x8C054184
#symbol loc_8C053F6E 0x8C053F6E
#symbol loc_8C053E00 0x8C053E00
#symbol loc_8C0542E0 0x8C0542E0
#symbol loc_8C054E58 0x8C054E58
#symbol loc_8C0530D8 0x8C0530D8
#symbol loc_8C055C3A 0x8C055C3A
#symbol loc_8C054D1C 0x8C054D1C
#symbol loc_8C054DA0 0x8C054DA0
#symbol loc_8C03544C 0x8C03544C
#symbol loc_8C034DEE 0x8C034DEE
#symbol loc_8C051648 0x8C051648
#symbol loc_8C04223A 0x8C04223A
#symbol loc_8C052B4C 0x8C052B4C
#symbol loc_8C2896B0 0x8C2896B0
#symbol loc_8C034E8C 0x8C034E8C
#symbol loc_8C052C84 0x8C052C84
#symbol loc_8D048802 0x8D048802
#symbol loc_8C0AD878 0x8C0AD878
#symbol loc_8C050084 0x8C050084
#symbol loc_8C04FF88 0x8C04FF88
#symbol loc_8C04FEA8 0x8C04FEA8
#symbol loc_8C050048 0x8C050048
#symbol loc_8C052CE2 0x8C052CE2
#symbol loc_8C052DAC 0x8C052DAC
#symbol loc_8C05176E 0x8C05176E
#symbol loc_8C056DE4 0x8C056DE4
#symbol loc_8C0511E2 0x8C0511E2
#symbol loc_8C0E9A78 0x8C0E9A78
#symbol loc_8C0E9D20 0x8C0E9D20
#symbol loc_8C046C8A 0x8C046C8A
#symbol loc_8C03319E 0x8C03319E
#symbol loc_8C05218A 0x8C05218A
#symbol loc_8C05115A 0x8C05115A
#symbol loc_8C050834 0x8C050834
#symbol loc_8C0ABC94 0x8C0ABC94
#symbol loc_8C053082 0x8C053082
#symbol loc_8C0AC374 0x8C0AC374
#symbol loc_8C0ABF44 0x8C0ABF44
#symbol loc_8C0ACFA8 0x8C0ACFA8
#symbol loc_8C035162 0x8C035162
#symbol loc_8C050EA4 0x8C050EA4
#symbol loc_8C0511B4 0x8C0511B4
#symbol loc_8C051854 0x8C051854
#symbol loc_8C045790 0x8C045790
#symbol loc_8C056F2A 0x8C056F2A
#symbol loc_8C103660 0x8C103660
#symbol loc_8C0EE570 0x8C0EE570
#symbol loc_8C0E97CC 0x8C0E97CC
#symbol loc_8C02FEC4 0x8C02FEC4
#symbol loc_8C26823C 0x8C26823C
#symbol loc_8C04CC1C 0x8C04CC1C



;==============================================

start_CE30000:
    mov.w @(loc_CE300DA,pc),r0
    mov 0x70,r5
    mov.l @(loc_CE300E0,pc),r7
    mov.l @(r0,r4),r6
    mov 0x00,r4

loc_CE3000A:
    mov r4,r0
    nop
    add 0x04,r4
    mov.l @(r0,r7),r3
    cmp/hs r5,r4
    bf/s loc_CE3000A
    mov.l r3,@(r0,r6)
    rts
    nop

;----------------------------------------------

loc_CE3001C:
    mov.w @(loc_CE300DC,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l pr,@-r15
    mov.b @(r0,r14),r4
    extu.b r4,r0
    cmp/eq 0x0A,r0
    bt/s loc_CE300D4
    mov r0,r4
    mov r4,r0
    nop
    cmp/eq 0x0B,r0
    bt loc_CE300D4
    mov.l @(loc_CE300E4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf loc_CE300D4
    mov.l @(loc_CE300E8,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf loc_CE300D4
    mov.l @(loc_CE300EC,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf loc_CE300D4
    mov.l @(loc_CE300F0,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf loc_CE300D4
    bsr loc_CE30104
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf loc_CE300D4
    bsr loc_CE3014C
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf loc_CE300D4
    bsr loc_CE30248
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf loc_CE300D4
    bsr loc_CE30192
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf loc_CE300D4
    bsr loc_CE301D8
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf loc_CE300D4
    bsr loc_CE302AE
    mov r14,r4
    tst r0,r0
    bf loc_CE300D4
    bsr loc_CE302EE
    mov r14,r4
    tst r0,r0
    bf loc_CE300D4
    mov.l @(loc_CE300F4,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf loc_CE300D4
    mov.w @(loc_CE300DE,pc),r5
    mov.l @(loc_CE300F8,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf loc_CE300D4
    mov.l @(loc_CE300FC,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,pr
    mov.l @(loc_CE30100,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

loc_CE300D4:
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE300DA:
    #data 0x0428

loc_CE300DC:
    #data 0x01D0

loc_CE300DE:
    #data 0x03CC


loc_CE300E0:
    #data loc_CE32910

loc_CE300E4:
    #data loc_8C054508

loc_CE300E8:
    #data loc_8C054B34

loc_CE300EC:
    #data loc_8C05496C

loc_CE300F0:
    #data loc_8C054D04

loc_CE300F4:
    #data loc_8C054184

loc_CE300F8:
    #data loc_8C053F6E

loc_CE300FC:
    #data loc_8C053E00

loc_CE30100:
    #data loc_8C0542E0

loc_CE30104:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(loc_CE3022C,pc),r5
    mov.w @(loc_CE3021E,pc),r6
    mov.l @(loc_CE30230,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt loc_CE30124
    mov.w @(loc_CE30220,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf loc_CE3012C


loc_CE30124:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;----------------------------------------------


loc_CE3012C:
    mov 0x00,r4
    mov r4,r0
    nop
    mov.b r0,@(0x5,r14)
    mov 0x1D,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(loc_CE30222,pc),r0
    mov.l @(loc_CE30234,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
;----------------------------------------------


loc_CE3014C:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(loc_CE30238,pc),r5
    mov.w @(loc_CE30224,pc),r6
    mov.l @(loc_CE30230,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt loc_CE3016C
    mov.w @(loc_CE30220,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf loc_CE30174


loc_CE3016C:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
;----------------------------------------------


loc_CE30174:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(loc_CE30222,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(loc_CE30234,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE30192:
    mov.l r14,@-r15
    mov r4,r14
    sts.l pr,@-r15
    mov.l @(loc_CE3023C,pc),r5
    mov.w @(loc_CE30226,pc),r6
    mov.l @(loc_CE30230,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf loc_CE301B0
    lds.l @r15+,pr
    mov 0x00,r0
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE301B0:
    mov.w @(loc_CE30226,pc),r5
    mov.l @(loc_CE30240,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x05,r14)
    mov 0x02,r3
    mov.b r0,@(0x07,r14)
    mov 0x15,r5
    mov.b r0,@(0x06,r14)
    mov.w @(loc_CE30222,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(loc_CE30234,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE301D8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l pr,@-r15
    mov.l @(loc_CE30244,pc),r5
    mov.w @(loc_CE30228,pc),r6
    mov.l @(loc_CE30230,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf loc_CE301F6
    lds.l @r15+,pr
    mov 0x00,r0
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE301F6:
    mov.w @(loc_CE30228,pc),r5
    mov.l @(loc_CE30240,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x05,r14)
    mov 0x03,r3
    mov.b r0,@(0x07,r14)
    mov 0x15,r5
    mov.b r0,@(0x06,r14)
    mov.w @(loc_CE30222,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(loc_CE30234,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14

loc_CE3021E:
    #data 0x0364

loc_CE30220:
    #data 0x040C

loc_CE30222:
    #data 0x01E9
loc_CE30224:
    #data 0x036C
loc_CE30226:
    #data 0x0374
loc_CE30228:
    #data 0x037C
loc_CE3022A:
    #data 0x0000
loc_CE3022C:
    #data loc_CE328B8
loc_CE30230:
    #data loc_8C054E58
loc_CE30234:
    #data loc_8C0530D8
loc_CE30238:
    #data loc_CE328C8

loc_CE3023C:
    #data loc_CE328E8

loc_CE30240:
    #data loc_8C055C3A

loc_CE30244:
    #data loc_CE328FC

loc_CE30248:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(loc_CE30360,pc),r5
    mov.w @(loc_CE30354,pc),r6
    mov.l @(loc_CE30364,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt loc_CE30282
    mov.w @(loc_CE30356,pc),r0
    mov.l @(r0,r14),r3
    mov.b @r3,r2
    tst r2,r2
    bt loc_CE30282
    mov.w @(loc_CE30358,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf loc_CE30290
    mov.w @(loc_CE3035A,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf loc_CE30290
    mov.w @(loc_CE3035C,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt loc_CE3028A

loc_CE30282:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE3028A:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)


loc_CE30290:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(loc_CE3035E,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(loc_CE30368,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE302AE:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(loc_CE3036C,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt loc_CE302C6
    mov.w @(loc_CE30356,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf loc_CE302CE

loc_CE302C6:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

;----------------------------------------------

loc_CE302CE:
    mov.w @(loc_CE3035E,pc),r0
    mov 0x09,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(loc_CE30368,pc),r3
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
;----------------------------------------------

loc_CE302EE:
    mov.l r14,@-r15
    mov r4,r14
    sts.l pr,@-r15
    mov.l @(loc_CE30370,pc),r3
    jsr @r3
    mov 0x05,r5
    extu.b r0,r0
    tst r0,r0
    bf loc_CE30308
    lds.l @r15+,pr
    mov 0x00,r0
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE30308:
    mov.w @(loc_CE3035E,pc),r0
    mov 0x05,r3
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(loc_CE30368,pc),r3
    mov.b r0,@(0x05,r14)
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x07,r14)
    mov.b r0,@(0x06,r14)
    mov 0x01,r0
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------


loc_CE30328:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr loc_CE30374
    mov r4,r14
    tst r0,r0
    bf loc_CE30344
    bsr loc_CE303AA
    mov r14,r4
    tst r0,r0
    bf loc_CE30344
    bsr loc_CE303E2
    mov r14,r4
    tst r0,r0
    bt loc_CE3034C


loc_CE30344:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14
;----------------------------------------------


loc_CE3034C:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
;----------------------------------------------
loc_CE30354:
    #data 0x0384
loc_CE30356:
    #data 0x040C
loc_CE30358:
    #data 0x01F9
loc_CE3035A:
    #data 0x01FC
loc_CE3035C:
    #data 0x01D4
loc_CE3035E:
    #data 0x01E9


loc_CE30360:
    #data loc_CE328D8
loc_CE30364:
    #data loc_8C054E58


loc_CE30368:
    #data loc_8C0530D8

loc_CE3036C:
    #data loc_8C054D1C


loc_CE30370:
    #data loc_8C054DA0

loc_CE30374:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(loc_CE30490,pc),r5
    mov.w @(loc_CE30482,pc),r6
    mov.l @(loc_CE30494,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt loc_CE30394
    mov.w @(loc_CE30484,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf loc_CE3039C


loc_CE30394:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14
;----------------------------------------------


loc_CE3039C:
    mov.w @(loc_CE30486,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE303AA:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(loc_CE30498,pc),r5
    mov.w @(loc_CE30488,pc),r6
    mov.l @(loc_CE30494,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt loc_CE303CA
    mov.w @(loc_CE30484,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf loc_CE303D2

loc_CE303CA:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

loc_CE303D2:
    mov.w @(loc_CE30486,pc),r0
    mov 0x01,r3
    mov.b r3,@(r0,r14)
    mov r3,r0
    nop
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE303E2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(loc_CE3049C,pc),r5
    mov.w @(loc_CE3048A,pc),r6
    mov.l @(loc_CE30494,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt loc_CE30402
    mov.w @(loc_CE30484,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf loc_CE3040A

loc_CE30402:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

loc_CE3040A:
    mov.w @(loc_CE30486,pc),r0
    mov 0x08,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;----------------------------------------------

loc_CE30418:
    mov 0x25,r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    tst 0x01,r0
    bf/s loc_CE3042A
    mov 0x03,r5
    mov 0x01,r7
    bra loc_CE3042E
    mov 0x04,r6

loc_CE3042A:
    mov 0x10,r6
    mov 0x01,r7

loc_CE3042E:
    mov.l @(loc_CE304A0,pc),r2
    jmp @r2
    nop

loc_CE30434:
    sts.l pr,@-r15
    add 0xFC,r15
    mov.l @(loc_CE304A4,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE3044E
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(loc_CE304A8,pc),r3
    jmp @r3
    lds.l @r15+,pr

loc_CE3044E:
    add 0x04,r15
    lds.l @r15+,pr
    rts
    nop
;----------------------------------------------

loc_CE30456:
    mov.w @(loc_CE3048C,pc),r5
    add r4,r5
    mov.b @(0x3,r5),r0
    tst r0,r0
    bt loc_CE30466
    mov.b @(0x3,r5),r0
    add 0xFF,r0
    mov.b r0,@(0x3,r5)

loc_CE30466:
    mov.b @(0x9,r5),r0
    tst r0,r0
    bt loc_CE3047E
    mov.b @(0x9,r5),r0
    add 0xFF,r0
    mov.b r0,@(0x9,r5)
    extu.b r0,r0
    tst r0,r0
    bf loc_CE3047E
    mov.l @(loc_CE304AC,pc),r2
    jmp @r2
    mov 0x3B,r5

loc_CE3047E:
    rts
    nop



loc_CE30482:
    #data 0x0364
loc_CE30484:
    #data 0x040C
loc_CE30486:
    #data 0x0258
loc_CE30488:
    #data 0x036C
loc_CE3048A:
    #data 0x0384
loc_CE3048C:
    #data 0x02A4
loc_CE3048E:
    #data 0x0000


loc_CE30490:
    #data loc_CE328B8
loc_CE30494:
    #data loc_8C054E58


loc_CE30498:
    #data loc_CE328C8

loc_CE3049C:
    #data loc_CE328D8

loc_CE304A0:
    #data loc_8C03544C

loc_CE304A4:
    #data loc_8C034DEE

loc_CE304A8:
    #data loc_8C051648
loc_CE304AC:
    #data loc_8C04223A


loc_CE304B0:
    mov.w @(loc_CE30576,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(loc_CE30584,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

loc_CE304C4:
    mov.l r14,@-r15
    sts.l pr,@-r15
    mov.l @(loc_CE30588,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(loc_CE30578,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf loc_CE304F2
    mov.w @(loc_CE3057A,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf loc_CE304EA
    lds.l @r15+,pr
    mov r14,r4
    bra loc_CE30778
    mov.l @r15+,r14

loc_CE304EA:
    lds.l @r15+,pr
    mov r14,r4
    bra loc_CE306C4
    mov.l @r15+,r14

loc_CE304F2:
    mov.w @(loc_CE3057A,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf loc_CE30504
    lds.l @r15+,pr
    mov r14,r4
    bra loc_CE305EE
    mov.l @r15+,r14

loc_CE30504:
    lds.l @r15+,pr
    mov r14,r4
    bra loc_CE3050C
    mov.l @r15+,r14

loc_CE3050C:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(loc_CE3057C,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l pr,@-r15
    mov.b @(r0,r14),r0
    mov.l @(loc_CE3058C,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s loc_CE30532
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt loc_CE3054C
    cmp/eq 0x02,r0
    bt loc_CE3059C
    bra loc_CE305BA
    nop

loc_CE30532:
    mov.w @(loc_CE3057E,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE30580,pc),r0
    mov.l @(loc_CE30590,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(loc_CE30582,pc),r0
    bra loc_CE305BA
    mov.b r13,@(r0,r14)

loc_CE3054C:
    mov.w @(loc_CE3057E,pc),r0
    mov 0x01,r11
    mov 0x15,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE30580,pc),r0
    mov r11,r5
    mov.l @(loc_CE30594,pc),r3
    mov 0x12,r6
    mov r11,r7
    mov.l r3,@(r0,r14)
    mov.w @(loc_CE30582,pc),r0
    mov.l @(loc_CE30598,pc),r3
    mov.b r11,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra loc_CE305BA
    nop

loc_CE30576:
    #data 0x01FF

loc_CE30578:
    #data 0x01FE

loc_CE3057A:
    #data 0x01F9

loc_CE3057C:
    #data 0x01E8

loc_CE3057E:
    #data 0x0158

loc_CE30580:
    #data 0x03F4

loc_CE30582:
    #data 0x01A7


loc_CE30584:
    #data loc_CE32980

loc_CE30588:
    #data loc_8C052B4C

loc_CE3058C:
    #data loc_8C04223A

loc_CE30590:
    #data loc_CE32870

loc_CE30594:
    #data loc_CE32874

loc_CE30598:
    #data loc_8C03544C

loc_CE3059C:
    mov.w @(loc_CE306A2,pc),r0
    mov 0x02,r11
    mov 0x16,r5
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r11,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE306A4,pc),r0
    mov.l @(loc_CE306AC,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(loc_CE306A6,pc),r0
    mov.b r11,@(r0,r14)
    bsr loc_CE30418
    mov r14,r4


loc_CE305BA:
    mov.w @(loc_CE306A8,pc),r0
    mov 0x07,r5
    mov.l @(loc_CE306B0,pc),r3
    mov r14,r4
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x02,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,pr
    mov.w @(loc_CE306A2,pc),r0
    mov.l @(loc_CE306B4,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

loc_CE305EE:
    mov.w @(loc_CE306AA,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l pr,@-r15
    mov.b @(r0,r14),r0
    mov.l @(loc_CE306B8,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s loc_CE30612
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt loc_CE3062E
    cmp/eq 0x02,r0
    bt loc_CE3064E
    bra loc_CE30670
    nop

loc_CE30612:
    mov.w @(loc_CE306A2,pc),r0
    mov 0x06,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE306A4,pc),r0
    mov.l @(loc_CE306BC,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(loc_CE306A6,pc),r0
    bra loc_CE30670
    mov.b r13,@(r0,r14)

loc_CE3062E:
    mov.w @(loc_CE306A2,pc),r0
    mov 0x01,r2
    mov 0x07,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE306A4,pc),r0
    mov 0x01,r2
    mov.l @(loc_CE306C0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(loc_CE306A6,pc),r0
    bra loc_CE30670
    mov.b r2,@(r0,r14)

loc_CE3064E:
    mov.W @(loc_CE306A2,pc),r0
    mov 0x02,r1
    mov 0x08,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE306A4,pc),r0
    mov 0x02,r2
    mov.l @(loc_CE306AC,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(loc_CE306A6,pc),r0
    mov.b r2,@(r0,r14)
    bsr loc_CE30418
    mov r14,r4


loc_CE30670:
    mov.w @(loc_CE306A8,pc),r0
    mov 0x09,r5
    mov.l @(loc_CE306B0,pc),r3
    mov r14,r4
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x02,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,pr
    mov.w @(loc_CE306A2,pc),r0
    mov.l @(loc_CE306B4,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

loc_CE306A2:
    #data 0x0158

loc_CE306A4:
    #data 0x03F4

loc_CE306A6:
    #data 0x01A7

loc_CE306A8:
    #data 0x01AC

loc_CE306AA:
    #data 0x01E8


loc_CE306AC:
    #data loc_CE32878

loc_CE306B0:
    #data loc_8C2896B0

loc_CE306B4:
    #data loc_8C034E8C

loc_CE306B8:
    #data loc_8C04223A

loc_CE306BC:
    #data loc_CE32870

loc_CE306C0:
    #data loc_CE32874


loc_CE306C4:
    mov.w @(loc_CE307D8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l pr,@-r15
    mov.b @(r0,r14),r0
    mov.l @(loc_CE307E4,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s loc_CE306E8
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt loc_CE30704
    cmp/eq 0x02,r0
    bt loc_CE30724
    bra loc_CE30746
    nop

loc_CE306E8:
    mov.w @(loc_CE307DA,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE307DC,pc),r0
    mov.l @(loc_CE307E8,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(loc_CE307DE,pc),r0
    bra loc_CE30746
    mov.b r13,@(r0,r14)

loc_CE30704:
    mov.w @(loc_CE307DA,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE307DC,pc),r0
    mov 0x01,r2
    mov.l @(loc_CE307EC,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(loc_CE307DE,pc),r0
    bra loc_CE30746
    mov.b r2,@(r0,r14)


loc_CE30724:
    mov.w @(loc_CE307DA,pc),r0
    mov 0x02,r1
    mov 0x05,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE307DC,pc),r0
    mov 0x02,r2
    mov.l @(loc_CE307F0,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(loc_CE307DE,pc),r0
    mov.b r2,@(r0,r14)
    bsr loc_CE30418
    mov r14,r4


loc_CE30746:
    mov.w @(loc_CE307E0,pc),r0
    mov 0x08,r5
    mov.l @(loc_CE307F4,pc),r3
    mov r14,r4
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x02,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,pr
    mov.w @(loc_CE307DA,pc),r0
    mov.l @(loc_CE307F8,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

loc_CE30778:
    mov.w @(loc_CE307D8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l pr,@-r15
    mov.b @(r0,r14),r0
    mov.l @(loc_CE307E4,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s loc_CE3079C
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt loc_CE307B8
    cmp/eq 0x02,r0
    bt loc_CE307FC
    bra loc_CE3081E
    nop

loc_CE3079C:
    mov.w @(loc_CE307DA,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE307DC,pc),r0
    mov.l @(loc_CE307E8,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(loc_CE307DE,pc),r0
    bra loc_CE3081E
    mov.b r13,@(r0,r14)

loc_CE307B8:
    mov.w @(loc_CE307DA,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE307DC,pc),r0
    mov 0x01,r2
    mov.l @(loc_CE307EC,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(loc_CE307DE,pc),r0
    bra loc_CE3081E
    mov.b r2,@(r0,r14)

loc_CE307D8:
    #data 0x01E8

loc_CE307DA:
    #data 0x0158

loc_CE307DC:
    #data 0x03F4

loc_CE307DE:
    #data 0x01A7

loc_CE307E0:
    #data 0x01AC
    #data 0x0000


loc_CE307E4:
    #data loc_8C04223A

loc_CE307E8:
    #data loc_CE3287C

loc_CE307EC:
    #data loc_CE32880

loc_CE307F0:
    #data loc_CE32884

loc_CE307F4:
    #data loc_8C2896B0

loc_CE307F8:
    #data loc_8C034E8C

loc_CE307FC:
    mov.w @(loc_CE308DA,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE308DC,pc),r0
    mov 0x02,r2
    mov.l @(loc_CE308EC,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(loc_CE308DE,pc),r0
    mov.b r2,@(r0,r14)
    bsr loc_CE30418
    mov r14,r4


loc_CE3081E:
    mov.w @(loc_CE308E0,pc),r0
    mov 0x0A,r5
    mov.l @(loc_CE308F0,pc),r3
    mov r14,r4
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x02,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,pr
    mov.w @(loc_CE308DA,pc),r0
    mov.l @(loc_CE308F4,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14


loc_CE30850:
    mov.w @(loc_CE308E2,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf loc_CE30860
    mov.w @(loc_CE308E4,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf loc_CE30870


loc_CE30860:
    mov.w @(loc_CE308E2,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt loc_CE30874
    mov.w @(loc_CE308E4,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt loc_CE30874


loc_CE30870:
    bra loc_CE30878
    nop


loc_CE30874:
    rts
    nop
;----------------------------------------------

loc_CE30878:
    mov.w @(loc_CE308E2,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf loc_CE30886
    bra loc_CE309B8
    nop

loc_CE30886:
    bra loc_CE3088A
    nop

loc_CE3088A:
    mov.w @(loc_CE308E6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l pr,@-r15
    mov.b @(r0,r14),r0
    mov.l @(loc_CE308F8,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s loc_CE308AE
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt loc_CE30904
    cmp/eq 0x02,r0
    bt loc_CE30942
    bra loc_CE30974
    nop

loc_CE308AE:
    mov.w @(loc_CE308DA,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE308E8,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf loc_CE308CE
    mov.w @(loc_CE308DC,pc),r0
    mov.l @(loc_CE308FC,pc),r3
    bra loc_CE308D4
    mov.l r3,@(r0,r14)

loc_CE308CE:
    mov.w @(loc_CE308DC,pc),r0
    mov.l @(loc_CE30900,pc),r1
    mov.l r1,@(r0,r14)

loc_CE308D4:
    mov.w @(loc_CE308DE,pc),r0
    bra loc_CE30974
    mov.b r13,@(r0,r14)

loc_CE308DA:
    #data 0x0158

loc_CE308DC:
    #data 0x03F4

loc_CE308DE:
    #data 0x01A7

loc_CE308E0:
    #data 0x01AC

loc_CE308E2:
    #data 0x01FE
loc_CE308E4:
    #data 0x01D6

loc_CE308E6:
    #data 0x01E8

loc_CE308E8:
    #data 0x01FC
loc_CE308EA:
    #data 0x0000


loc_CE308EC:
    #data loc_CE32884

loc_CE308F0:
    #data loc_8C2896B0

loc_CE308F4:
    #data loc_8C034E8C

loc_CE308F8:
    #data loc_8C04223A

loc_CE308FC:
    #data loc_CE32888

loc_CE30900:
    #data loc_CE328A0


loc_CE30904:
    mov.w @(loc_CE30A08,pc),r0
    mov 0x01,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE30A0A,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf loc_CE30926
    mov.w @(loc_CE30A0C,pc),r0
    mov.l @(loc_CE30A18,pc),r3
    bra loc_CE3092C
    mov.l r3,@(r0,r14)

loc_CE30926:
    mov.w @(loc_CE30A0C,pc),r0
    mov.l @(loc_CE30A1C,pc),r1
    mov.l r1,@(r0,r14)

loc_CE3092C:
    mov.w @(loc_CE30A0E,pc),r0
    mov 0x01,r3
    mov r3,r5
    mov r3,r7
    mov.b r3,@(r0,r14)
    mov 0x12,r6
    mov.l @(loc_CE30A20,pc),r3
    jsr @r3
    mov r14,r4
    bra loc_CE30974
    nop

loc_CE30942:
    mov.w @(loc_CE30A08,pc),r0
    mov 0x02,r3
    mov 0x0E,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r2,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE30A0A,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf loc_CE30964
    mov.w @(loc_CE30A0C,pc),r0
    mov.l @(loc_CE30A24,pc),r3
    bra loc_CE3096A
    mov.l r3,@(r0,r14)


loc_CE30964:
    mov.w @(loc_CE30A0C,pc),r0
    mov.l @(loc_CE30A28,pc),r1
    mov.l r1,@(r0,r14)

loc_CE3096A:
    mov.w @(loc_CE30A0E,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    bsr loc_CE30418
    mov r14,r4


loc_CE30974:
    mov.w @(loc_CE30A10,pc),r0
    mov 0x0B,r5
    mov.l @(loc_CE30A2C,pc),r3
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
    mov.w @(loc_CE30A08,pc),r0
    mov.l @(loc_CE30A30,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(loc_CE30A12,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt loc_CE309AE
    mov.w @(loc_CE30A12,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

loc_CE309AE:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE309B8:
    mov.w @(loc_CE30A14,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l pr,@-r15
    mov.b @(r0,r14),r0
    mov.l @(loc_CE30A34,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s loc_CE309DC
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt loc_CE30A40
    cmp/eq 0x02,r0
    bt loc_CE30A70
    bra loc_CE30AA2
    nop

loc_CE309DC:
    mov.w @(loc_CE30A08,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE30A0A,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf loc_CE309FC
    mov.w @(loc_CE30A0C,pc),r0
    mov.l @(loc_CE30A38,pc),r3
    bra loc_CE30A02
    mov.l r3,@(r0,r14)

loc_CE309FC:
    mov.w @(loc_CE30A0C,pc),r0
    mov.l @(loc_CE30A3C,pc),r1
    mov.l r1,@(r0,r14)

loc_CE30A02:
    mov.w @(loc_CE30A0E,pc),r0
    bra loc_CE30AA2
    mov.b r13,@(r0,r14)

loc_CE30A08:
    #data 0x0158

loc_CE30A0A:
    #data 0x01FC

loc_CE30A0C:
    #data 0x03F4

loc_CE30A0E:
    #data 0x01A7
loc_CE30A10:
    #data 0x01AC
loc_CE30A12:
    #data 0x01D6

loc_CE30A14:
    #data 0x01E8
    #data 0x0000


loc_CE30A18:
    #data loc_CE3288C

loc_CE30A1C:
    #data loc_CE328A4

loc_CE30A20:
    #data loc_8C03544C

loc_CE30A24:
    #data loc_CE32890

loc_CE30A28:
    #data loc_CE328A8
loc_CE30A2C:
    #data loc_8C2896B0
loc_CE30A30:
    #data loc_8C034E8C


loc_CE30A34:
    #data loc_8C04223A

loc_CE30A38:
    #data loc_CE32894

loc_CE30A3C:
    #data loc_CE328AC


loc_CE30A40:
    mov.w @(loc_CE30B62,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE30B64,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf loc_CE30A62
    mov.w @(loc_CE30B66,pc),r0
    mov.l @(loc_CE30B74,pc),r3
    bra loc_CE30A68
    mov.l r3,@(r0,r14)

loc_CE30A62:
    mov.w @(loc_CE30B66,pc),r0
    mov.l @(loc_CE30B78,pc),r1
    mov.l r1,@(r0,r14)

loc_CE30A68:
    mov.w @(loc_CE30B68,pc),r0
    mov 0x01,r3
    bra loc_CE30AA2
    mov.b r3,@(r0,r14)

loc_CE30A70:
    mov.w @(loc_CE30B62,pc),r0
    mov 0x02,r1
    mov 0x11,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(loc_CE30B64,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf loc_CE30A92
    mov.w @(loc_CE30B66,pc),r0
    mov.l @(loc_CE30B7C,pc),r3
    bra loc_CE30A98
    mov.l r3,@(r0,r14)

loc_CE30A92:
    mov.w @(loc_CE30B66,pc),r0
    mov.l @(loc_CE30B80,pc),r1
    mov.l r1,@(r0,r14)


loc_CE30A98:
    mov.w @(loc_CE30B68,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    bsr loc_CE30418
    mov r14,r4

loc_CE30AA2:
    mov.w @(loc_CE30B6A,pc),r0
    mov 0x0C,r5
    mov.l @(loc_CE30B84,pc),r3
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
    mov.w @(loc_CE30B62,pc),r0
    mov.l @(loc_CE30B88,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(loc_CE30B6C,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt loc_CE30ADC
    mov.w @(loc_CE30B6C,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)


loc_CE30ADC:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE30AE6:
    mov.w @(loc_CE30B6E,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(loc_CE30B8C,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

loc_CE30AFA:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(loc_CE30B90,pc),r3
    sts.l pr,@-r15
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov.s fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @r1,fr3
    mov 0x60,r1
    fmov.s @(r0,r14),fr2
    add r14,r1
    fadd fr3,fr2
    fmov.s fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov.s fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov.s fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(loc_CE30B70,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf loc_CE30B94
    mov.w @(loc_CE30B72,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf loc_CE30B5A
    lds.l @r15+,pr
    mov r14,r4
    bra loc_CE30CF2
    mov.l @r15+,r14

loc_CE30B5A:
    lds.l @r15+,pr
    mov r14,r4
    bra loc_CE30CA6
    mov.l @r15+,r14

loc_CE30B62:
    #data 0x0158

loc_CE30B64:
    #data 0x01FC

loc_CE30B66:
    #data 0x03F4

loc_CE30B68:
    #data 0x01A7
loc_CE30B6A:
    #data 0x01AC
loc_CE30B6C:
    #data 0x01D6
loc_CE30B6E:
    #data 0x01FF

loc_CE30B70:
    #data 0x01FE

loc_CE30B72:
    #data 0x01F9


loc_CE30B74:
    #data loc_CE32898

loc_CE30B78:
    #data loc_CE328B0

loc_CE30B7C:
    #data loc_CE3289C

loc_CE30B80:
    #data loc_CE328B4
loc_CE30B84:
    #data loc_8C2896B0
loc_CE30B88:
    #data loc_8C034E8C


loc_CE30B8C:
    #data loc_CE32990

loc_CE30B90:
    #data loc_8C052C84


loc_CE30B94:
    mov.w @(loc_CE30C74,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf loc_CE30BA6
    lds.l @r15+,pr
    mov r14,r4
    bra loc_CE30C1C
    mov.l @r15+,r14

loc_CE30BA6:
    lds.l @r15+,pr
    mov r14,r4
    bra loc_CE30BAE
    mov.l @r15+,r14

loc_CE30BAE:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(loc_CE30C76,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l pr,@-r15
    mov.b @(r0,r14),r0
    mov.l @(loc_CE30C7C,pc),r11
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s loc_CE30BD2
    mov 0x00,r10
    cmp/eq 0x01,r0
    bt loc_CE30BFA
    bra loc_CE30C0C
    nop

loc_CE30BD2:
    mov.w @(loc_CE30C78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt loc_CE30C0C
    mov.l @(loc_CE30C80,pc),r3
    mov.b r10,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov r10,r13
    mov 0x05,r12

loc_CE30BE6:
    mov 0x00,r5
    mov r13,r6
    jsr @r11
    mov r14,r4
    add 0x01,r13
    extu.b r13,r2
    cmp/ge r12,r2
    bf loc_CE30BE6
    bra loc_CE30C0C
    nop

loc_CE30BFA:
    mov.w @(loc_CE30C78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt loc_CE30C0C
    mov 0x06,r5
    mov.b r10,@(r0,r14)
    mov 0x00,r6
    jsr @r11
    mov r14,r4


loc_CE30C0C:
    lds.l @r15+,pr
    mov r14,r4
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra loc_CE30434
    mov.l @r15+,r14

loc_CE30C1C:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(loc_CE30C76,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l pr,@-r15
    mov.b @(r0,r14),r0
    mov.l @(loc_CE30C7C,pc),r12
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s loc_CE30C40
    mov 0x00,r10
    cmp/eq 0x01,r0
    bt loc_CE30C84
    bra loc_CE30C96
    nop

loc_CE30C40:
    mov.w @(loc_CE30C78,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt loc_CE30C96
    mov.b @(r0,r14),r3
    mov.w @(loc_CE30C7A,pc),r2
    extu.b r3,r3
    cmp/eq r2,r3
    bt loc_CE30C58
    mov.l @(loc_CE30C80,pc),r1
    jsr @r1
    mov r14,r4

loc_CE30C58:
    mov.w @(loc_CE30C78,pc),r0
    mov r10,r13
    mov 0x03,r11
    mov.b r10,@(r0,r14)

loc_CE30C60:
    mov 0x01,r5
    mov r13,r6
    jsr @r12
    mov r14,r4
    add 0x01,r13
    extu.b r13,r3
    cmp/ge r11,r3
    bf loc_CE30C60
    bra loc_CE30C96
    nop

loc_CE30C74:
    #data 0x01F9

loc_CE30C76:
    #data 0x01E8

loc_CE30C78:
    #data 0x0141
loc_CE30C7A:
    #data 0x0081


loc_CE30C7C:
    #data loc_8C0AD878

loc_CE30C80:
    #data loc_CE3270E

loc_CE30C84:
    mov.w @(loc_CE30D7E,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt loc_CE30C96
    mov 0x07,r5
    mov.b r10,@(r0,r14)
    mov 0x00,r6
    jsr @r12
    mov r14,r4


loc_CE30C96:
    lds.l @r15+,pr
    mov r14,r4
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra loc_CE30434
    mov.l @r15+,r14

loc_CE30CA6:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(loc_CE30D80,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf loc_CE30CE4
    mov.w @(loc_CE30D7E,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt loc_CE30CE4
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.l @(loc_CE30D84,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(loc_CE30D88,pc),r11
    mov 0x00,r13
    mov 0x06,r12


loc_CE30CD4:
    mov 0x03,r5
    mov r13,r6
    jsr @r11
    mov r14,r4
    add 0x01,r13
    extu.b r13,r2
    cmp/ge r12,r2
    bf loc_CE30CD4


loc_CE30CE4:
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    bra loc_CE30434
    mov.l @r15+,r14

loc_CE30CF2:
    mov.w @(loc_CE30D80,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf loc_CE30D1E
    mov.w @(loc_CE30D7E,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt loc_CE30D1E
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.l @(loc_CE30D84,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(loc_CE30D88,pc),r2
    mov 0x04,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4

loc_CE30D1E:
    lds.l @r15+,PR
    mov r14,r4
    bra loc_CE30434
    mov.l @r15+,r14

loc_CE30D26:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(loc_CE30D8C,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(loc_CE30D90,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r14


loc_CE30D3C:
    mov.l r14,@-r15
    sts.l pr,@-r15
    mov.l @(loc_CE30D94,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(loc_CE30D98,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(loc_CE30D82,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf loc_CE30D5E
    bsr loc_CE30E2E
    mov r14,r4
    bra loc_CE30D62
    nop

loc_CE30D5E:
    bsr loc_CE30DA4
    mov r14,r4

loc_CE30D62:
    mov.l @(loc_CE30D9C,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt loc_CE30D78
    lds.l @r15+,pr
    mov.l @(loc_CE30DA0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

loc_CE30D78:
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------
loc_CE30D7E:
    #data 0x0141
loc_CE30D80:
    #data 0x01E8
loc_CE30D82:
    #data 0x01FE
loc_CE30D84:
    #data loc_CE3270E
loc_CE30D88:
    #data loc_8C0AD878
loc_CE30D8C:
    #data loc_8C050084
loc_CE30D90:
    #data loc_8C04FF88
loc_CE30D94:
    #data loc_8C04FEA8

loc_CE30D98:
    #data loc_8C050048

loc_CE30D9C:
    #data loc_8C052CE2

loc_CE30DA0:
    #data loc_8C052DAC


loc_CE30DA4:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(loc_CE30E94,pc),r0
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.l r10,@-r15
    sts.l pr,@-r15
    mov.b @(r0,r14),r0
    mov.l @(loc_CE30E9C,pc),r12
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s loc_CE30DC8
    mov 0x00,r10
    cmp/eq 0x01,r0
    bt loc_CE30DF0
    bra loc_CE30E02
    nop

loc_CE30DC8:
    mov.w @(loc_CE30E96,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt loc_CE30E02
    mov.l @(loc_CE30EA0,pc),r3
    mov.b r10,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov r10,r13
    mov 0x03,r11

loc_CE30DDC:
    mov 0x02,r5
    mov r13,r6
    jsr @r12
    mov r14,r4
    add 0x01,r13
    extu.b r13,r2
    cmp/ge r11,r2
    bf loc_CE30DDC
    bra loc_CE30E02
    nop


loc_CE30DF0:
    mov.w @(loc_CE30E98,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt loc_CE30E02
    mov 0x08,r5
    mov.b r10,@(r0,r14)
    mov 0x00,r6
    jsr @r12
    mov r14,r4


loc_CE30E02:
    mov.l @(loc_CE30EA4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE30E20
    lds.l @r15+,pr
    mov.l @(loc_CE30EA8,pc),r3
    mov r14,r4
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

loc_CE30E20:
    lds.l @r15+,pr
    mov.l @r15+,r10
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE30E2E:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(loc_CE30E94,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf loc_CE30E6C
    mov.w @(loc_CE30E96,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt loc_CE30E6C
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov.l @(loc_CE30EA0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(loc_CE30E9C,pc),r11
    mov 0x00,r13
    mov 0x05,r12


loc_CE30E5C:
    mov 0x05,r5
    mov r13,r6
    jsr @r11
    mov r14,r4
    add 0x01,r13
    extu.b r13,r2
    cmp/ge r12,r2
    bf loc_CE30E5C


loc_CE30E6C:
    mov.l @(loc_CE30EA4,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE30E88
    lds.l @r15+,PR
    mov.l @(loc_CE30EA8,pc),r2
    mov r14,r4
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14


loc_CE30E88:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE30E94:
    #data 0x01E8

loc_CE30E96:
    #data 0x0141

loc_CE30E98:
    #data 0x00000140


loc_CE30E9C:
    #data loc_8C0AD878

loc_CE30EA0:
    #data loc_CE3270E

loc_CE30EA4:
    #data loc_8C034DEE

loc_CE30EA8:
    #data loc_8C05176E

loc_CE30EAC:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf/s loc_CE30F0A
    mov 0x00,r13
    mov.l @(loc_CE30FDC,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x15,r5
    mov.l @(loc_CE30FE0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(loc_CE30FE4,pc),r2
    mov 0x05,r5
    jsr @r2
    mov r14,r4
    mov.w @(loc_CE30FD2,pc),r0
    mov 0x14,r5
    mov.l @(loc_CE30FE8,pc),r3
    mov 0x05,r6
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(loc_CE30FD4,pc),r0
    mov 0x43,r2
    mov.l @(loc_CE30FEC,pc),r3
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

loc_CE30F0A:
    mov.w @(loc_CE30FD6,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt loc_CE30F1E
    mov.l @(loc_CE30FF0,pc),r3
    mov 0x06,r5
    mov.b r13,@(r0,r14)
    mov 0x00,r6
    jsr @r3
    mov r14,r4

loc_CE30F1E:
    mov.w @(loc_CE30FD8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf loc_CE30F2E
    mov.l @(loc_CE30FF4,pc),r2
    jsr @r2
    mov r14,r4

loc_CE30F2E:
    mov 0x5C,r1
    mov.l @(loc_CE30FF8,pc),r3
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
    lds.l @r15+,PR
    mov r14,r4
    mov.l @r15+,r13
    bra loc_CE30434
    mov.l @r15+,r14


loc_CE30F76:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(loc_CE30FDA,pc),r3
    mov r14,r4
    mov.l @(loc_CE30FFC,pc),r2
    add r14,r3
    mov.l @(loc_CE31000,pc),r1
    mov.l r3,@r2
    mov.b @(0x06,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

loc_CE30F92:
    mov.l r14,@-r15
    sts.l pr,@-r15
    mov.l @(loc_CE31004,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(loc_CE30FD6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf loc_CE30FCC
    mov.b @(0x06,r14),r0
    mov r14,r4
    mov.l @(loc_CE30FFC,pc),r2
    add 0x01,r0
    fldi0 fr4
    mov.b r0,@(0x06,r14)
    mov 0x00,r0
    mov.l @r2,r3
    mov.b r0,@(0x08,r3)
    mov 0x5C,r0
    fmov.s fr4,@(r0,r14)
    mov 0x60,r0
    fmov.s fr4,@(r0,r14)
    mov 0x68,r0
    fmov.s fr4,@(r0,r14)
    mov 0x6C,r0
    fmov.s fr4,@(r0,r14)
    lds.l @r15+,pr
    bra loc_CE31008
    mov.l @r15+,r14

loc_CE30FCC:
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------
loc_CE30FD2:
    #data 0x01F9
loc_CE30FD4:
    #data 0x01A1
loc_CE30FD6:
    #data 0x0141
loc_CE30FD8:
    #data 0x01FF
loc_CE30FDA:
    #data 0x02A4
loc_CE30FDC:
    #data loc_8C052B4C
loc_CE30FE0:
    #data loc_8C04223A
loc_CE30FE4:
    #data loc_8C056DE4
loc_CE30FE8:
    #data loc_8C034E8C
loc_CE30FEC:
    #data loc_8C2896B0
loc_CE30FF0:
    #data loc_8C0AD878
loc_CE30FF4:
    #data loc_8C0511E2
loc_CE30FF8:
    #data loc_8C052C84
loc_CE30FFC:
    #data 0x0CE32B00


loc_CE31000:
    #data loc_CE329A0

loc_CE31004:
    #data loc_8C034DEE


loc_CE31008:
    mov.l r14,@-r15
    sts.l pr,@-r15
    bsr loc_CE310B8
    mov r4,r14
    mov.l @(loc_CE31120,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE3103A
    mov.l @(loc_CE31124,pc),r2
    mov.b @(0x06,r14),r0
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov.l @r2,r3
    mov.b @(0x08,r3),r0
    tst r0,r0
    bt/s loc_CE31032
    mov 0x02,r5
    bra loc_CE31034
    mov 0x04,r6

loc_CE31032:
    mov 0x05,r6


loc_CE31034:
    mov.l @(loc_CE31128,pc),r3
    jsr @r3
    mov r14,r4

loc_CE3103A:
    lds.l @r15+,pr
    mov r14,r4
    bra loc_CE31078
    mov.l @r15+,r14

loc_CE31042:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(loc_CE31120,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE31062
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    mov.l @(loc_CE31128,pc),r3
    mov r6,r5
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

loc_CE31062:
    lds.l @r15+,PR
    mov r14,r4
    bra loc_CE31078
    mov.l @r15+,r14


loc_CE3106A:
    sts.l pr,@-r15
    bsr loc_CE31078
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    bra loc_CE30434
    lds.l @r15+,pr


loc_CE31078:
    mov.w @(loc_CE31110,pc),r0
    mov.b @(r0,r4),r3
    cmp/pz r3
    bt loc_CE310B4
    mov.w @(loc_CE31112,pc),r0
    mov 0x01,r2
    mov.b r2,@(r0,r4)
    mov.w @(loc_CE31110,pc),r0
    mov.b @(r0,r4),r0
    and 0x7F,r0
    mov r0,r5
    extu.b r0,r0
    tst r0,r0
    bt loc_CE310B4
    mov.w @(loc_CE31110,pc),r0
    mov 0x80,r2
    extu.b r5,r5
    mov.b r2,@(r0,r4)
    shll2 r5
    mov.l @(loc_CE3112C,pc),r0
    fmov.s @(r0,r5),fr4
    mov.w @(loc_CE31114,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf/s loc_CE310AE
    mov 0x34,r0
    fneg fr4

loc_CE310AE:
    fmov.s @(r0,r4),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r4)


loc_CE310B4:
    rts
    nop
;----------------------------------------------


loc_CE310B8:
    mov.w @(loc_CE31116,pc),r0
    mov.w @(r0,r4),r3
    add 0xFE,r0
    mov.w @(r0,r4),r4
    and r3,r4
    mov.w @(loc_CE31118,pc),r3
    exts.w r4,r4
    cmp/eq r3,r4
    bt loc_CE310D2
    mov.l @(loc_CE31124,pc),r2
    mov 0x01,r0
    mov.l @r2,r1
    mov.b r0,@(0x8,r1)

loc_CE310D2:
    rts
    nop
;----------------------------------------------

loc_CE310D6:
    mov.w @(loc_CE31116,pc),r0
    mov.w @(r0,r4),r3
    add 0xFE,r0
    mov.w @(r0,r4),r4
    and r3,r4
    mov.w @(loc_CE3111A,pc),r3
    exts.w r4,r4
    cmp/eq r3,r4
    bt loc_CE310F0
    mov.l @(loc_CE31124,pc),r2
    mov 0x01,r0
    mov.l @r2,r1
    mov.b r0,@(0x8,r1)


loc_CE310F0:
    rts
    nop
;----------------------------------------------

loc_CE310F4:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(loc_CE3111C,pc),r3
    mov r14,r4
    mov.l @(loc_CE31124,pc),r2
    add r14,r3
    mov.l @(loc_CE31130,pc),r1
    mov.l r3,@r2
    mov.b @(0x06,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

loc_CE31110:
    #data 0x0141
loc_CE31112:
    #data 0x01F5
loc_CE31114:
    #data 0x01D2
loc_CE31116:
    #data 0x034C
loc_CE31118:
    #data 0x0800
loc_CE3111A:
    #data 0x0400
loc_CE3111C:
    #data 0x02A4
loc_CE3111E:
    #data 0x0000
loc_CE31120:
    #data loc_8C034DEE
loc_CE31124:
    #data 0x0CE32B00
loc_CE31128:
    #data loc_8C034E8C
loc_CE3112C:
    #data loc_CE329B0
loc_CE31130:
    #data loc_CE329DC


loc_CE31134:
    mov.b @(0x06,r4),r0
    mov.l @(loc_CE31278,pc),r2
    add 0x01,r0
    fldi0 fr4
    mov.b r0,@(0x06,r4)
    mov 0x00,r0
    mov.l @r2,r3
    mov.b r0,@(0x08,r3)
    mov 0x5C,r0
    fmov.s fr4,@(r0,r4)
    mov 0x60,r0
    fmov.s fr4,@(r0,r4)
    mov 0x68,r0
    fmov.s fr4,@(r0,r4)
    mov 0x6C,r0
    fmov.s fr4,@(r0,r4)

loc_CE31154:
    mov.l r14,@-r15
    sts.l pr,@-r15
    bsr loc_CE310D6
    mov r4,r14
    mov.l @(loc_CE3127C,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE31186
    mov.l @(loc_CE31278,pc),r2
    mov.b @(0x06,r14),r0
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov.l @r2,r3
    mov.b @(0x08,r3),r0
    tst r0,r0
    bt/s loc_CE3117E
    mov 0x02,r5
    bra loc_CE31180
    mov 0x06,r6

loc_CE3117E:
    mov 0x07,r6


loc_CE31180:
    mov.l @(loc_CE31280,pc),r3
    jsr @r3
    mov r14,r4


loc_CE31186:
    lds.l @r15+,pr
    mov r14,r4
    bra loc_CE31078
    mov.l @r15+,r14

loc_CE3118E:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(loc_CE3127C,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE311AE
    mov.b @(0x6,r14),r0
    mov 0x02,r5
    mov.l @(loc_CE31280,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4

loc_CE311AE:
    lds.l @r15+,PR
    mov r14,r4
    bra loc_CE31078
    mov.l @r15+,r14


loc_CE311B6:
    sts.l pr,@-r15
    bsr loc_CE31078
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    bra loc_CE30434
    lds.l @r15+,pr

loc_CE311C4:
    mov r4,r3
    mov.l @(loc_CE31284,pc),r1
    mov.l r4,@-r15
    mov.b @(0x06,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

loc_CE311D6:
    mov.l r14,@-r15
    mov r4,r14
    mov 0x01,r4
    fldi0 fr4
    mov.l r13,@-r15
    mov.w @(loc_CE31270,pc),r3
    sts.l pr,@-r15
    mov.l @(loc_CE31278,pc),r2
    add r14,r3
    mov.l r3,@r2
    mov.b @(0x06,r14),r0
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov.w @(loc_CE31272,pc),r0
    mov.b r4,@(r0,r14)
    mova @(loc_CE31288,pc),r0
    fmov.s @r0,fr3
    mov.w @(loc_CE31274,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fadd fr3,fr2
    fmov.s fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s fr4,@(r0,r14)
    mov 0x60,r0
    fmov.s fr4,@(r0,r14)
    mov 0x68,r0
    fmov.s fr4,@(r0,r14)
    mov 0x6C,r0
    fmov.s fr4,@(r0,r14)
    mova @(loc_CE3128C,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    mov.l @(loc_CE31290,pc),r13
    fmov.s fr2,@(r0,r14)
    mov 0x00,r0
    mov.w r0,@(0x1C,r14)
    mov 0x04,r0
    mov.w r0,@(0x1E,r14)
    mov 0x25,r0
    mov.b @(r0,r14),r3
    extu.b r3,r3
    tst r4,r3
    bt loc_CE3123E
    mov 0x01,r7
    mov r7,r5
    mov 0x20,r6
    jsr @r13
    mov r14,r4
    mov 0x01,r7
    bra loc_CE3124C
    mov 0x21,r6

loc_CE3123E:
    mov 0x01,r7
    mov r7,r5
    mov 0x23,r6
    jsr @r13
    mov r14,r4
    mov 0x24,r6
    mov 0x01,r7

loc_CE3124C:
    mov 0x02,r5
    jsr @r13
    mov r14,r4
    mov.l @(loc_CE31278,pc),r3
    mov 0x00,r0
    mov.l @r3,r2
    mov.b r0,@(0x07,r2)
    mov.l @(loc_CE31294,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,pr
    mov.l @(loc_CE31280,pc),r3
    mov 0x00,r6
    mov 0x12,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

loc_CE31270:
    #data 0x02A4

loc_CE31272:
    #data 0x012C

loc_CE31274:
    #data 0x041C
    #data 0x0000


loc_CE31278:
    #data 0x0CE32B00


loc_CE3127C:
    #data loc_8C034DEE

loc_CE31280:
    #data loc_8C034E8C

loc_CE31284:
    #data loc_CE329EC

loc_CE31288:
    #data 0xC3BEB6DB


loc_CE3128C:
    #data 0x41092492


loc_CE31290:
    #data loc_8C03544C

loc_CE31294:
    #data loc_8C0E9A78

loc_CE31298:
    mov.w @(loc_CE313B4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(loc_CE313B2,pc),r3
    sts.l PR,@-r15
    mov.l @(loc_CE313BC,pc),r2
    add r14,r3
    mov.l r3,@r2
    mov.b @(r0,r14),r1
    tst r1,r1
    bf loc_CE3133C
    mov.w @(loc_CE313B6,pc),r0
    mov 0x01,r1
    mov.b r1,@(r0,r14)
    mov.w @(0x1c,r14),r0
    tst 0x0F,r0
    bf loc_CE312C0
    mov.l @(loc_CE313C0,pc),r1
    jsr @r1
    mov r14,r4


loc_CE312C0:
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
    mov.w @(loc_CE313B8,pc),r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf loc_CE31308
    mov.b @(0x6,r14),r0
    mov.l @(loc_CE313BC,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x01,r0
    mov.l @r2,r3
    mov.b r0,@(0x7,r3)
    mov 0x00,r3
    mov.w @(loc_CE313B8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(loc_CE313BA,pc),r0
    mov.b r3,@(r0,r14)
    bra loc_CE31330
    mov 0x0B,r6


loc_CE31308:
    mov.w @(0x1e,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1e,r14)
    exts.w r0,r0
    tst r0,r0
    bf loc_CE31342
    mov 0x04,r0
    mov.w r0,@(0x1e,r14)
    mov 0x0B,r4
    mov.w @(0x1c,r14),r0
    add 0x01,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/ge r4,r0
    bf loc_CE3132C
    mov r4,r0
    nop
    mov.w r0,@(0x1c,r14)


loc_CE3132C:
    mov.w @(0x1c,r14),r0
    mov r0,r6


loc_CE31330:
    lds.l @r15+,PR
    mov.l @(loc_CE313C4,pc),r3
    mov 0x12,r5
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14


loc_CE3133C:
    mov.w @(loc_CE313B6,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)

loc_CE31342:
    lds.l @r15+,PR
    mov.l @(loc_CE313C8,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14


loc_CE3134C:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(loc_CE313C8,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE31364
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)


loc_CE31364:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;----------------------------------------------

loc_CE3136C:
    mov.l r14,@-r15
    sts.l pr,@-r15
    mov.l @(loc_CE313CC,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt loc_CE31384
    lds.l @r15+,pr
    mov.l @(loc_CE313D0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

loc_CE31384:
    mov.b @(0x06,r14),r0
    mov r14,r4
    mov.l @(loc_CE313D4,pc),r1
    extu.b r0,r0
    lds.l @r15+,pr
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

loc_CE31396:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x06,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    mov.l @(loc_CE313D8,pc),r0
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

loc_CE313B2:
    #data 0x02A4
loc_CE313B4:
    #data 0x0141
loc_CE313B6:
    #data 0x012C
loc_CE313B8:
    #data 0x041C
loc_CE313BA:
    #data 0x01F9
loc_CE313BC:
    #data 0x0CE32B00
loc_CE313C0:
    #data loc_8C0E9D20
loc_CE313C4:
    #data loc_8C034E8C
loc_CE313C8:
    #data loc_8C034DEE
loc_CE313CC:
    #data loc_8C046C8A
loc_CE313D0:
    #data loc_8C051648
loc_CE313D4:
    #data loc_CE329F8
loc_CE313D8:
    #data loc_CE32A00


loc_CE313DC:
    sts.l pr,@-r15
    mov.l @(loc_CE314FC,pc),r3
    mov 0x11,r6
    mov 0x01,r7
    mov.l r4,@-r15
    jsr @r3
    mov 0x02,r5
    mov.l @(loc_CE31500,pc),r2
    jsr @r2
    nop
    mov.l @r15,r4
    mov 0x01,r6
    mov 0x13,r5
    and r0,r6
    add 0x04,r15
    mov.l @(loc_CE31504,pc),r3
    jmp @r3
    lds.l @r15+,pr

loc_CE31400:
    mov.l @(loc_CE31504,pc),r3
    mov 0x02,r6
    jmp @r3
    mov 0x13,r5

loc_CE31408:
    mov.l @(loc_CE31504,pc),r3
    mov 0x03,r6
    jmp @r3
    mov 0x13,r5

loc_CE31410:
    mov.l @(loc_CE31508,pc),r3
    jmp @r3
    nop

loc_CE31416:
    mov.w @(loc_CE314E8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(loc_CE314E6,pc),r3
    mov r14,r4
    mov.l @(loc_CE3150C,pc),r2
    add r14,r3
    mov.l r3,@r2
    mov.b @(r0,r14),r1
    mov.l @(loc_CE31510,pc),r0
    extu.b r1,r1
    shll2 r1
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

loc_CE31434:
    mov r4,r3
    mov.l @(loc_CE31514,pc),r1
    mov.l r4,@-r15
    mov.b @(0x06,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

loc_CE31446:
    mov.w @(loc_CE314EA,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf loc_CE31464
    mov.w @(loc_CE314EE,pc),r0
    mov 0x10,r3
    mov.w @(loc_CE314EC,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)


loc_CE31464:
    mov.b @(0x6,r14),r0
    mov.l @(loc_CE31518,pc),r3
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
    mov 0x00,r13
    mov.w @(loc_CE314F0,pc),r0
    mov.l @(loc_CE3151C,pc),r3
    mov.b r13,@(r0,r14)
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
    mov.w @(loc_CE314F2,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(loc_CE314F4,pc),r0
    mov.l @(loc_CE31520,pc),r2
    mov.b r13,@(r0,r14)
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r13,r6
    mov.l @(loc_CE31504,pc),r3
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14


loc_CE314C8:
    sts.l pr,@-r15
    add 0xF4,r15
    mov.w @(loc_CE314F6,pc),r0
    mov 0x02,r3
    mov 0x05,r5
    mov.b r3,@(r0,r4)
    mov.w @(loc_CE314F8,pc),r0
    mov.b r5,@(r0,r4)
    mov.w @(loc_CE314EA,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf loc_CE31524
    bra loc_CE31526
    mov 0x02,r3

loc_CE314E6:
    #data 0x02A4
loc_CE314E8:
    #data 0x01E9
loc_CE314EA:
    #data 0x0255
loc_CE314EC:
    #data 0x00FF
loc_CE314EE:
    #data 0x03F0
loc_CE314F0:
    #data 0x01A1
loc_CE314F2:
    #data 0x041C
loc_CE314F4:
    #data 0x01F9
loc_CE314F6:
    #data 0x03F8
loc_CE314F8:
    #data 0x0328
loc_CE314FA:
    #data 0x0000
loc_CE314FC:
    #data loc_8C03544C
loc_CE31500:
    #data loc_8C03319E
loc_CE31504:
    #data loc_8C034E8C
loc_CE31508:
    #data loc_8C034DEE
loc_CE3150C:
    #data 0x0CE32B00
loc_CE31510:
    #data loc_CE32A14
loc_CE31514:
    #data loc_CE32A40
loc_CE31518:
    #data loc_8C05218A
loc_CE3151C:
    #data loc_8C2896B0
loc_CE31520:
    #data loc_8C05115A


loc_CE31524:
    mov 0x00,r3
loc_CE31526:
    mov.w @(loc_CE3163C,pc),r0
    mov.b r3,@(r0,r4)
    mov.w @(loc_CE3163E,pc),r0
    mov.b r5,@(r0,r4)
    mov.w @(loc_CE31640,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt loc_CE3156A
    mov.b @(0x06,r4),r0
    mov 0x00,r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x06,r4)
    mov.w @(loc_CE31642,pc),r0
    mov.w r0,@(0x1C,r4)
    mov 0x06,r0
    mov.w r0,@(0x1E,r4)
    mov.w @(loc_CE31640,pc),r0
    mov.b r3,@(r0,r4)
    mova @(loc_CE3164C,pc),r0
    fmov.s @r0,fr3
    mova @(loc_CE31650,pc),r0
    mov.l @(loc_CE31654,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov.s fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov.s fr3,@(r0,r15)
    jsr @r3
    mov r15,r5
    bra loc_CE31570
    nop

loc_CE3156A:
    mov.l @(loc_CE31658,pc),r3
    jsr @r3
    nop

loc_CE31570:
    add 0x0C,r15
    lds.l @r15+,pr
    rts
    nop
;----------------------------------------------

loc_CE31578:
    mov.w @(loc_CE31644,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r4
    mov r3,r5
    sts.l pr,@-r15
    mov.b r3,@(r0,r14)
    mov 0x0A,r6
    mov.w @(loc_CE3163E,pc),r0
    mov 0x01,r7
    mov.l @(loc_CE3165C,pc),r3
    mov.b r4,@(r0,r14)
    mov.b r4,@(r0,r14)
    mov.b @(0x06,r14),r0
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    jsr @r3
    mov r14,r4
    mov.l @(loc_CE31660,pc),r2
    mov 0x4D,r5
    jsr @r2
    mov r14,r4
    lds.l @r15+,pr
    mov r14,r4
    mov.l @r15+,r14

loc_CE315AC:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(loc_CE31646,pc),r4
    mov 0x04,r0
    mov 0x02,r3
    mov.l r13,@-r15
    add r14,r4
    sts.l pr,@-r15
    mov.b r0,@(0x09,r4)
    mov 0x05,r13
    mov.w @(loc_CE31644,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(loc_CE3163E,pc),r0
    mov.l @(loc_CE31658,pc),r3
    mov.b r13,@(r0,r14)
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1C,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1C,r14)
    exts.w r0,r0
    tst r0,r0
    bf loc_CE31604
    mov.w @(loc_CE31648,pc),r0
    mov 0x00,r4
    mov.l @(loc_CE31664,pc),r3
    mov 0x01,r6
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x16,r5
    mov.w @(loc_CE3164A,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x06,r14),r0
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    lds.l @r15+,pr
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

loc_CE31604:
    mov.w @(0x1E,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1E,r14)
    exts.w r0,r0
    tst r0,r0
    bf loc_CE31622
    mov r13,r0
    nop
    mov.l @(loc_CE31668,pc),r3
    mov r14,r4
    mov.w r0,@(0x1E,r14)
    lds.l @r15+,pr
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

loc_CE31622:
    lds.l @r15+,pr
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE3162A:
    mov r4,r3
    mov.l @(loc_CE3166C,pc),r1
    mov.l r4,@-r15
    mov.b @(0x06,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

loc_CE3163C:
    #data 0x03F1

loc_CE3163E:
    #data 0x0328

loc_CE31640:
    #data 0x0141

loc_CE31642:
    #data 0x0080

loc_CE31644:
    #data 0x03F8

loc_CE31646:
    #data 0x02A4

loc_CE31648:
    #data 0x03F9

loc_CE3164A:
    #data 0x0327


loc_CE3164C:
    #data 0xC13AAAAA


loc_CE31650:
    #data 0x43452492


loc_CE31654:
    #data loc_8C050834

loc_CE31658:
    #data loc_8C034DEE

loc_CE3165C:
    #data loc_8C03544C

loc_CE31660:
    #data loc_8C04223A

loc_CE31664:
    #data loc_8C034E8C

loc_CE31668:
    #data loc_8C0ABC94

loc_CE3166C:
    #data loc_CE32A54

loc_CE31670:
    mov.w @(loc_CE31782,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf loc_CE3168E
    mov.w @(loc_CE31786,pc),r0
    mov 0x10,r3
    mov.w @(loc_CE31784,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

loc_CE3168E:
    mov.b @(0x6,r14),r0
    mov.l @(loc_CE31794,pc),r3
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
    mov.w @(loc_CE31788,pc),r0
    mov.l @(loc_CE31798,pc),r3
    mov.b r4,@(r0,r14)
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
    mov 0x70,r0
    mov.l @(loc_CE3179C,pc),r1
    mov.w r0,@(0x1c,r14)
    mov.l @r1,r2
    mov.b r4,@r2
    mova @(loc_CE317A0,pc),r0
    mov.l @(loc_CE317A4,pc),r2
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov 0x25,r0
    mov.l @(loc_CE317A8,pc),r13
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt loc_CE31704
    mov 0x01,r7
    mov r7,r5
    mov 0x20,r6
    jsr @r13
    mov r14,r4
    mov 0x01,r7
    bra loc_CE31712
    mov 0x21,r6


loc_CE31704:
    mov 0x01,r7
    mov r7,r5
    mov 0x23,r6
    jsr @r13
    mov r14,r4
    mov 0x24,r6
    mov 0x01,r7

loc_CE31712:
    mov 0x02,r5
    jsr @r13
    mov r14,r4
    mov.l @(loc_CE317AC,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(loc_CE317B0,pc),r2
    mov 0x04,r6
    mov 0x16,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14


loc_CE3172E:
    mov.l r14,@-r15
    sts.l pr,@-r15
    add 0xF4,r15
    mov.w @(loc_CE3178A,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r4
    mov.w @(loc_CE3178C,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(loc_CE31782,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf loc_CE31750
    bra loc_CE31752
    mov 0x02,r3

loc_CE31750:
    mov 0x00,r3

loc_CE31752:
    mov.w @(loc_CE3178E,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(loc_CE3178C,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(loc_CE31790,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt loc_CE317DE
    mov.b @(0x06,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov.w @(loc_CE31790,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(loc_CE317B4,pc),r3
    jsr @r3
    mov r14,r4
    tst r0,r0
    bf loc_CE317BC
    mov.l @(loc_CE317B8,pc),r3
    jsr @r3
    mov r14,r4
    bra loc_CE317E4
    nop

loc_CE31782:
    #data 0x0255
loc_CE31784:
    #data 0x00FF
loc_CE31786:
    #data 0x03F0
loc_CE31788:
    #data 0x01A1
loc_CE3178A:
    #data 0x03F8
loc_CE3178C:
    #data 0x0328
loc_CE3178E:
    #data 0x03F1
loc_CE31790:
    #data 0x0141
loc_CE31792:
    #data 0x0000
loc_CE31794:
    #data loc_8C05218A
loc_CE31798:
    #data loc_8C2896B0
loc_CE3179C:
    #data 0x0CE32B00
loc_CE317A0:
    #data 0x0B6DB
loc_CE317A2:
    #data 0x404D
loc_CE317A4:
    #data loc_8C053082
loc_CE317A8:
    #data loc_8C03544C
loc_CE317AC:
    #data loc_8C05115A
loc_CE317B0:
    #data loc_8C034E8C
loc_CE317B4:
    #data loc_8C0AC374
loc_CE317B8:
    #data loc_8C051648


loc_CE317BC:
    mova @(loc_CE318DC,pc),r0
    mov.l @(loc_CE318E4,pc),r3
    fmov.s @r0,fr3
    mova @(loc_CE318E0,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov.s fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov.s fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    bra loc_CE317E4
    nop

loc_CE317DE:
    mov.l @(loc_CE318E8,pc),r3
    jsr @r3
    mov r14,r4

loc_CE317E4:
    add 0x0C,r15
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE317EC:
    mov.w @(loc_CE318D0,pc),r0
    mov 0x02,r3
    mov 0x05,r5
    mov.b r3,@(r0,r4)
    mov.w @(loc_CE318D2,pc),r0
    mov.b r5,@(r0,r4)
    mov.b r5,@(r0,r4)
    mov.b @(0x06,r4),r0
    add 0x01,r0
    mov.b r0,@(0x06,r4)

loc_CE31800:
    mov.w @(loc_CE318D0,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l pr,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r4
    mov.w @(loc_CE318D2,pc),r0
    mov.l @(loc_CE318E8,pc),r3
    mov.b r4,@(r0,r14)
    mov.b r4,@(r0,r14)
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
    fmov.s fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov.s fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov.s fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov.s fr2,@(r0,r14)
    mov.w @(0x1C,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1C,r14)
    exts.w r0,r0
    tst r0,r0
    bf loc_CE318B2
    mov.w @(loc_CE318D4,pc),r0
    mov 0x00,r4
    mov.l @(loc_CE318EC,pc),r2
    mov 0x02,r5
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x13,r6
    mov.w @(loc_CE318D6,pc),r0
    mov 0x01,r7
    mov.w @(loc_CE318D8,pc),r1
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x06,r14),r0
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov.l @r2,r3
    mov.b r1,@r3
    mov.l @(loc_CE318F0,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr4
    fmov.s fr4,@(r0,r14)
    mov 0x60,r0
    fmov.s fr4,@(r0,r14)
    mov 0x68,r0
    fmov.s fr4,@(r0,r14)
    mov 0x6C,r0
    fmov.s fr4,@(r0,r14)
    mova @(loc_CE318F4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov.l @(loc_CE318F8,pc),r3
    mov r14,r4
    fmov.s fr3,@(r0,r14)
    mov 0x09,r6
    lds.l @r15+,pr
    mov 0x01,r5
    jmp @r3
    mov.l @r15+,r14

loc_CE318B2:
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE318B8:
    mov.l @(loc_CE318FC,pc),r3
    jmp @r3
    nop

loc_CE318BE:
    mov r4,r3
    mov.l @(loc_CE31900,pc),r1
    mov.l r4,@-r15
    mov.b @(0x06,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

loc_CE318D0:
    #data 0x03F8

loc_CE318D2:
    #data 0x0328

loc_CE318D4:
    #data 0x03F9

loc_CE318D6:
    #data 0x0327

loc_CE318D8:
    #data 0x00FF
    #data 0x0000


loc_CE318DC:
    #data 0xC13AAAAA


loc_CE318E0:
    #data 0x43452492


loc_CE318E4:
    #data loc_8C050834

loc_CE318E8:
    #data loc_8C034DEE

loc_CE318EC:
    #data 0x0CE32B00


loc_CE318F0:
    #data loc_8C03544C

loc_CE318F4:
    #data 0xBEF00000


loc_CE318F8:
    #data loc_8C034E8C

loc_CE318FC:
    #data loc_8C05176E

loc_CE31900:
    #data loc_CE32A6C


loc_CE31904:
    mov.l r14,@-r15
    mov r4,r14
    sts.l pr,@-r15
    mov.b @(0x06,r14),r0
    mov.l @(loc_CE319EC,pc),r3
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr4
    fmov.s fr4,@(r0,r14)
    mov 0x60,r0
    fmov.s fr4,@(r0,r14)
    mov 0x68,r0
    fmov.s fr4,@(r0,r14)
    mov 0x6C,r0
    fmov.s fr4,@(r0,r14)
    mov 0x00,r4
    mov.w @(loc_CE319E2,pc),r0
    mov.l @(loc_CE319F0,pc),r3
    mov.b r4,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x02,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(loc_CE319E4,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s fr3,@(r0,r14)
    mov.w @(loc_CE319E6,pc),r0
    mov.l @(loc_CE319F4,pc),r2
    mov 0x0A,r5
    mov.b r4,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.l @(loc_CE319F8,pc),r3
    mov 0x50,r0
    mov.w r0,@(0x1C,r14)
    jsr @r3
    mov r14,r4
    mov.w @(loc_CE319E8,pc),r0
    mov 0x01,r2
    mov.l @(loc_CE319FC,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    mov r2,r6
    lds.l @r15+,pr
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14

loc_CE3197E:
    mov.l r14,@-r15
    sts.l pr,@-r15
    mov.l @(loc_CE31A00,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1C,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1C,r14)
    exts.w r0,r0
    tst r0,r0
    bt loc_CE319B6
    mov.w @(loc_CE319EA,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt loc_CE319CA
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r7
    mov.l @(loc_CE31A04,pc),r3
    mov r7,r5
    mov 0x05,r6
    jsr @r3
    mov r14,r4
    lds.l @r15+,pr
    mov.l @(loc_CE31A08,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

loc_CE319B6:
    mov.b @(0x06,r14),r0
    mov r14,r4
    mov.l @(loc_CE319FC,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov 0x15,r5
    lds.l @r15+,pr
    jmp @r3
    mov.l @r15+,r14

loc_CE319CA:
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE319D0:
    mov r4,r3
    mov.l @(loc_CE31A0C,pc),r1
    mov.l r4,@-r15
    mov.b @(0x06,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

loc_CE319E2:
    #data 0x01A1

loc_CE319E4:
    #data 0x041C

loc_CE319E6:
    #data 0x01F9

loc_CE319E8:
    #data 0x0158

loc_CE319EA:
    #data 0x0141


loc_CE319EC:
    #data loc_8C05218A

loc_CE319F0:
    #data loc_8C2896B0

loc_CE319F4:
    #data loc_8C056DE4

loc_CE319F8:
    #data loc_8C05115A

loc_CE319FC:
    #data loc_8C034E8C

loc_CE31A00:
    #data loc_8C034DEE

loc_CE31A04:
    #data loc_8C03544C

loc_CE31A08:
    #data loc_8C0ABF44

loc_CE31A0C:
    #data loc_CE32A78


loc_CE31A10:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l pr,@-r15
    mov.b @(0x06,r14),r0
    mov.l @(loc_CE31B38,pc),r3
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r0
    fldi0 fr4
    fmov.s fr4,@(r0,r14)
    mov 0x60,r0
    fmov.s fr4,@(r0,r14)
    mov 0x68,r0
    fmov.s fr4,@(r0,r14)
    mov 0x6C,r0
    fmov.s fr4,@(r0,r14)
    mov 0x00,r13
    mov.w @(loc_CE31B2C,pc),r0
    mov.l @(loc_CE31B3C,pc),r3
    mov.b r13,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l r13,@(r0,r14)
    mov.b @(0x02,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.w @(loc_CE31B2E,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s fr3,@(r0,r14)
    mov 0x70,r0
    mov.w r0,@(0x1C,r14)
    mov 0x01,r7
    mov.w @(loc_CE31B30,pc),r0
    mov r7,r5
    mov.l @(loc_CE31B40,pc),r2
    mov 0x07,r6
    mov.b r13,@(r0,r14)
    jsr @r2
    mov r14,r4
    mov.l @(loc_CE31B40,pc),r3
    mov 0x04,r5
    mov 0x01,r7
    mov 0x07,r6
    jsr @r3
    mov r14,r4
    mov.l @(loc_CE31B44,pc),r2
    mov 0x0A,r5
    jsr @r2
    mov r14,r4
    mov.l @(loc_CE31B48,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,pr
    mov r13,r6
    mov.l @(loc_CE31B4C,pc),r2
    mov 0x15,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

loc_CE31AA0:
    mov.l r14,@-r15
    sts.l pr,@-r15
    mov.l @(loc_CE31B50,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(0x1C,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1C,r14)
    exts.w r0,r0
    tst r0,r0
    bt loc_CE31AD8
    mov.w @(loc_CE31B32,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt loc_CE31AE2
    mov 0x00,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    mov 0x01,r2
    mov.w @(loc_CE31B34,pc),r0
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,pr
    mov.l @(loc_CE31B54,pc),r3
    jmp @r3
    mov.l @r15+,r14

loc_CE31AD8:
    lds.l @r15+,pr
    mov.l @(loc_CE31B58,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

loc_CE31AE2:
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE31AE8:
    mov.b @(0x06,r4),r0
    tst r0,r0
    bt loc_CE31AF4
    mov.l @(loc_CE31B5C,pc),r0
    jmp @r0
    nop

loc_CE31AF4:
    mov.b @(0x06,r4),r0
    mov 0x00,r3
    fldi0 fr4
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x06,r4)
    mov 0x5C,r0
    fmov.s fr4,@(r0,r4)
    mov 0x60,r0
    fmov.s fr4,@(r0,r4)
    mov 0x68,r0
    fmov.s fr4,@(r0,r4)
    mov 0x6C,r0
    fmov.s fr4,@(r0,r4)
    mov.w @(loc_CE31B30,pc),r0
    mov.b r3,@(r0,r4)
    mov.l @(loc_CE31B4C,pc),r3
    jmp @r3
    mov 0x14,r5

loc_CE31B1A:
    mov r4,r3
    mov.l @(loc_CE31B60,pc),r1
    mov.l r4,@-r15
    mov.b @(0x06,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

loc_CE31B2C:
    #data 0x01A1

loc_CE31B2E:
    #data 0x041C

loc_CE31B30:
    #data 0x01F9

loc_CE31B32:
    #data 0x0141

loc_CE31B34:
    #data 0x027B
loc_CE31B36:
    #data 0x0000


loc_CE31B38:
    #data loc_8C05218A

loc_CE31B3C:
    #data loc_8C2896B0

loc_CE31B40:
    #data loc_8C03544C

loc_CE31B44:
    #data loc_8C056DE4

loc_CE31B48:
    #data loc_8C05115A

loc_CE31B4C:
    #data loc_8C034E8C

loc_CE31B50:
    #data loc_8C034DEE

loc_CE31B54:
    #data loc_8C0ACFA8

loc_CE31B58:
    #data loc_8C051648

loc_CE31B5C:
    #data loc_CE30434

loc_CE31B60:
    #data loc_CE32A80

loc_CE31B64:
    mov.w @(loc_CE31C72,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf loc_CE31B80
    mov.w @(loc_CE31C76,pc),r0
    mov 0x10,r3
    mov.w @(loc_CE31C74,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)


loc_CE31B80:
    mov.b @(0x6,r14),r0
    mov.l @(loc_CE31C84,pc),r3
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
    mov 0x3E,r3
    mov.w @(loc_CE31C78,pc),r0
    mov 0x00,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(loc_CE31C88,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov 0x60,r0
    mov.w r0,@(0x1c,r14)
    mov 0x02,r0
    mov.w r0,@(0x1e,r14)
    mov.w @(loc_CE31C7A,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf loc_CE31BE4
    lds.l @r15+,PR
    mov.l @(loc_CE31C8C,pc),r1
    mov r14,r4
    mov 0x0F,r6
    mov 0x16,r5
    jmp @r1
    mov.l @r15+,r14


loc_CE31BE4:
    mov.w @(loc_CE31C7A,pc),r0
    mov 0x16,r5
    mov.l @(loc_CE31C8C,pc),r2
    mov 0x0D,r6
    mov.b r4,@(r0,r14)
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(loc_CE31C90,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14


loc_CE31BFC:
    mov.l r14,@-r15
    sts.l pr,@-r15
    add 0xF4,r15
    mov.w @(loc_CE31C7C,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r4
    mov.w @(loc_CE31C7E,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(loc_CE31C72,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf loc_CE31C1E
    bra loc_CE31C20
    mov 0x02,r3

loc_CE31C1E:
    mov 0x00,r3

loc_CE31C20:
    mov.w @(loc_CE31C80,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(loc_CE31C7E,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(loc_CE31C82,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt loc_CE31C64
    mov.b @(0x06,r14),r0
    mov 0x00,r3
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov.w @(loc_CE31C82,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(loc_CE31C94,pc),r3
    jsr @r3
    mov r14,r4
    mova @(loc_CE31C98,pc),r0
    mov.l @(loc_CE31CA0,pc),r3
    fmov.s @r0,fr3
    mova @(loc_CE31C9C,pc),r0
    mov r15,r5
    mov 0x01,r6
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov.s fr3,@(r0,r15)
    mov 0x08,r0
    fldi0 fr3
    fmov.s fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    bra loc_CE31C6A
    nop

loc_CE31C64:
    mov.l @(loc_CE31CA4,pc),r3
    jsr @r3
    mov r14,r4

loc_CE31C6A:
    add 0x0C,r15
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE31C72:
    #data 0x0255
loc_CE31C74:
    #data 0x00FF
loc_CE31C76:
    #data 0x03F0
loc_CE31C78:
    #data 0x01A1
loc_CE31C7A:
    #data 0x01F9
loc_CE31C7C:
    #data 0x03F8
loc_CE31C7E:
    #data 0x0328
loc_CE31C80:
    #data 0x03F1
loc_CE31C82:
    #data 0x0141
loc_CE31C84:
    #data loc_8C05218A
loc_CE31C88:
    #data loc_8C2896B0
loc_CE31C8C:
    #data loc_8C034E8C
loc_CE31C90:
    #data loc_8C05115A
loc_CE31C94:
    #data loc_CE30418
loc_CE31C98:
    #data 0xC13AAAAA
loc_CE31C9C:
    #data 0x43452492
loc_CE31CA0:
    #data loc_8C050834
loc_CE31CA4:
    #data loc_8C034DEE


loc_CE31CA8:
    mov.w @(loc_CE31DCA,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l pr,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r4
    mov.w @(loc_CE31DCC,pc),r0
    mov.l @(loc_CE31DD8,pc),r3
    mov.b r4,@(r0,r14)
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(0x1C,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1C,r14)
    exts.w r0,r0
    tst r0,r0
    bt loc_CE31CFC
    mov.w @(0x1E,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1E,r14)
    exts.w r0,r0
    tst r0,r0
    bf loc_CE31D30
    mov 0x04,r0
    mov.w r0,@(0x1E,r14)
    mov.w @(loc_CE31DCE,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt/s loc_CE31CF0
    mov r14,r4
    mov 0x00,r6
    bra loc_CE31CF4
    mov 0x0A,r5

loc_CE31CF0:
    mov 0x0B,r5
    mov 0x00,r6

loc_CE31CF4:
    lds.l @r15+,pr
    mov.l @(loc_CE31DDC,pc),r2
    jmp @r2
    mov.l @r15+,r14

loc_CE31CFC:
    mov.w @(loc_CE31DD0,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(loc_CE31DD2,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x06,r14),r0
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov.w @(loc_CE31DCE,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf/s loc_CE31D24
    mov 0x16,r5
    bra loc_CE31D26
    mov 0x10,r6

loc_CE31D24:
    mov 0x0E,r6

loc_CE31D26:
    lds.l @r15+,pr
    mov.l @(loc_CE31DE0,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

loc_CE31D30:
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE31D36:
    mov.l r14,@-r15
    sts.l pr,@-r15
    mov.l @(loc_CE31DD8,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE31D64
    mov.w @(loc_CE31DCE,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf loc_CE31D5A
    lds.l @r15+,pr
    mov.l @(loc_CE31DE4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

loc_CE31D5A:
    lds.l @r15+,pr
    mov.l @(loc_CE31DE8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

loc_CE31D64:
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE31D6A:
    mov r4,r3
    mov.l @(loc_CE31DEC,pc),r1
    mov.l r4,@-r15
    mov.b @(0x06,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

loc_CE31D7C:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov 0x00,r3
    mov r3,r5
    sts.l pr,@-r15
    mov.b @(0x06,r14),r0
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov 0x5C,r0
    fmov.s fr4,@(r0,r14)
    mov 0x60,r0
    fmov.s fr4,@(r0,r14)
    mov 0x68,r0
    fmov.s fr4,@(r0,r14)
    mov 0x6C,r0
    fmov.s fr4,@(r0,r14)
    mov.w @(loc_CE31DCE,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(loc_CE31DD4,pc),r0
    mov.l @(loc_CE31DF0,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(loc_CE31DF4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(loc_CE31DF8,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,pr
    mov.l @(loc_CE31DE0,pc),r2
    mov r14,r4
    mov 0x1A,r6
    mov 0x15,r5
    jmp @r2
    mov.l @r15+,r14

loc_CE31DCA:
    #data 0x03F8

loc_CE31DCC:
    #data 0x0328

loc_CE31DCE:
    #data 0x01F9

loc_CE31DD0:
    #data 0x03F9

loc_CE31DD2:
    #data 0x0327

loc_CE31DD4:
    #data 0x041C
loc_CE31DD6:
    #data 0x0000

loc_CE31DD8:
    #data loc_8C034DEE

loc_CE31DDC:
    #data loc_8C0AD878

loc_CE31DE0:
    #data loc_8C034E8C

loc_CE31DE4:
    #data loc_8C05176E

loc_CE31DE8:
    #data loc_8C051648

loc_CE31DEC:
    #data loc_CE32A90

loc_CE31DF0:
    #data loc_8C035162

loc_CE31DF4:
    #data loc_8C05218A

loc_CE31DF8:
    #data loc_8C05115A


loc_CE31DFC:
    mov.l r14,@-r15
    sts.l pr,@-r15
    add 0xF4,r15
    mov.l @(loc_CE31F28,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE31E1C
    mov.l @(loc_CE31F2C,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------


loc_CE31E1C:
    mov.w @(loc_CE31F18,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt loc_CE31E3E
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(loc_CE31F30,pc),r0
    fmov.s @r0,fr3
    mova @(loc_CE31F34,pc),r0
    mov.l @(loc_CE31F38,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

loc_CE31E3E:
    mov.w @(loc_CE31F1A,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt loc_CE31E5C
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x07,r5
    mov.l @(loc_CE31F3C,pc),r3
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    mov.l @(loc_CE31F40,pc),r2
    mov 0x16,r5
    jsr @r2
    mov r14,r4


loc_CE31E5C:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE31E64:
    mov.l r14,@-r15
    mov r4,r14
    sts.l pr,@-r15
    mov.b @(0x06,r14),r0
    tst r0,r0
    bf/s loc_CE31EE8
    mov 0x00,r4
    mov.b @(0x06,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov 0x5C,r0
    fmov.s fr4,@(r0,r14)
    mov 0x60,r0
    fmov.s fr4,@(r0,r14)
    mov 0x68,r0
    fmov.s fr4,@(r0,r14)
    mov 0x6C,r0
    fmov.s fr4,@(r0,r14)
    mov.w @(loc_CE31F1C,pc),r0
    mov.b r4,@(r0,r14)
    mov.w @(loc_CE31F1E,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s fr3,@(r0,r14)
    mov.w @(loc_CE31F20,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf loc_CE31EA8
    mov.w @(loc_CE31F22,pc),r0
    mov 0x40,r2
    bra loc_CE31EAE
    mov.b r2,@(r0,r14)

loc_CE31EA8:
    mov.w @(loc_CE31F22,pc),r0
    mov 0x42,r3
    mov.b r3,@(r0,r14)

loc_CE31EAE:
    mov.w @(loc_CE31F24,pc),r0
    mov 0x00,r5
    mov.l @(loc_CE31F44,pc),r3
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov.b @(0x02,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(loc_CE31F48,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    jsr @r3
    mov r14,r4
    mov.l @(loc_CE31F4C,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,pr
    mov.l @(loc_CE31F50,pc),r3
    mov r14,r4
    mov 0x1B,r6
    mov 0x15,r5
    jmp @r3
    mov.l @r15+,r14


loc_CE31EE8:
    mov.w @(loc_CE31F18,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt loc_CE31EFC
    mov.l @(loc_CE31F3C,pc),r3
    mov 0x06,r5
    mov.b r4,@(r0,r14)
    mov 0x00,r6
    jsr @r3
    mov r14,r4


loc_CE31EFC:
    lds.l @r15+,PR
    mov.l @(loc_CE31F54,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14


loc_CE31F06:
    mov r4,r3
    mov.l @(loc_CE31F58,pc),r1
    mov.l r4,@-r15
    mov.b @(0x06,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

loc_CE31F18:
    #data 0x0141

loc_CE31F1A:
    #data 0x0140

loc_CE31F1C:
    #data 0x01F9

loc_CE31F1E:
    #data 0x041C

loc_CE31F20:
    #data 0x0255

loc_CE31F22:
    #data 0x01A1

loc_CE31F24:
    #data 0x01AC
    #data 0x0000


loc_CE31F28:
    #data loc_8C034DEE

loc_CE31F2C:
    #data loc_8C051648
loc_CE31F30:
    #data 0x5555
loc_CE31F32:
    #data 0x4305
loc_CE31F34:
    #data 0x6DB6
loc_CE31F36:
    #data 0x42AB
loc_CE31F38:
    #data loc_8C050EA4
loc_CE31F3C:
    #data loc_8C0AD878
loc_CE31F40:
    #data loc_8C04223A
loc_CE31F44:
    #data loc_8C2896B0
loc_CE31F48:
    #data loc_8C035162
loc_CE31F4C:
    #data loc_8C05218A
loc_CE31F50:
    #data loc_8C034E8C
loc_CE31F54:
    #data loc_CE30434
loc_CE31F58:
    #data loc_CE32A98


loc_CE31F5C:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(loc_CE32098,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(loc_CE32090,pc),r0
    mov.b r3,@(r0,r14)
    mova @(loc_CE3209C,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(loc_CE32092,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf loc_CE31F8C
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)


loc_CE31F8C:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(loc_CE320A0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x3F,r3
    fmov fr3,@(r0,r14)
    mova @(loc_CE320A4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(loc_CE32094,pc),r0
    mov r4,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(loc_CE320A8,pc),r3
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
    mov.l @(loc_CE320AC,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14


loc_CE31FD6:
    mov.l r14,@-r15
    sts.l pr,@-r15
    mov.l @(loc_CE320B0,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(loc_CE320B4,pc),r3
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    mov 0x68,r1
    add r14,r1
    fadd fr3,fr2
    fmov.s fr2,@(r0,r14)
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x60,r1
    add r14,r1
    fadd fr3,fr2
    fmov.s fr2,@(r0,r14)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    mov 0x6C,r1
    add r14,r1
    fadd fr3,fr2
    fmov.s fr2,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    fmov.s @r1,fr3
    fadd fr3,fr2
    fmov.s fr2,@(r0,r14)
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt loc_CE3203E
    mov.b @(0x06,r14),r0
    mov.l @(loc_CE320B8,pc),r3
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,pr
    mov.l @(loc_CE320AC,pc),r2
    mov r14,r4
    mov 0x01,r6
    mov 0x14,r5
    jmp @r2
    mov.l @r15+,r14

loc_CE3203E:
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE32044:
    mov.l r14,@-r15
    sts.l pr,@-r15
    mov.l @(loc_CE320B0,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE32066
    mov.l @(loc_CE32098,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,pr
    mov.l @(loc_CE320BC,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

loc_CE32066:
    mov.w @(loc_CE32096,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt loc_CE32072
    mov 0x00,r3
    mov.b r3,@(r0,r14)

loc_CE32072:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE32078:
    add 0xFC,r15
    mov.l r4,@r15
    mov r4,r0
    nop
    mov.w @(loc_CE32090,pc),r1
    mov.l @(loc_CE320C0,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r2),r0
    jmp @r0
    add 0x04,r15

loc_CE32090:
    #data 0x01F9
loc_CE32092:
    #data 0x01D2
loc_CE32094:
    #data 0x01A1
loc_CE32096:
    #data 0x0141
loc_CE32098:
    #data loc_8C035162
loc_CE3209C:
    #data 0x0000
loc_CE3209E:
    #data 0x41F0
loc_CE320A0:
    #data 0x2492
loc_CE320A2:
    #data 0x4089
loc_CE320A4:
    #data 0xB6DB
loc_CE320A6:
    #data 0xBF4D
loc_CE320A8:
    #data loc_8C2896B0
loc_CE320AC:
    #data loc_8C034E8C
loc_CE320B0:
    #data loc_8C034DEE
loc_CE320B4:
    #data loc_8C052CE2
loc_CE320B8:
    #data loc_8C0511B4
loc_CE320BC:
    #data loc_8C051854
loc_CE320C0:
    #data loc_CE32AA4


loc_CE320C4:
    mov.w @(loc_CE321D0,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(loc_CE321D2,pc),r2
    sts.l pr,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1, r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt loc_CE32134
    mov.w @(loc_CE321D4,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf loc_CE32104
    mov.w @(loc_CE321D6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf loc_CE32104
    mov.l @(loc_CE321E4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s loc_CE32134
    mov r0,r4
    bra loc_CE32126
    mov 0x00,r2

loc_CE32104:
    mov.w @(loc_CE321D4,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf loc_CE32134
    mov.w @(loc_CE321D6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf loc_CE32134
    mov.l @(loc_CE321E4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s loc_CE32134
    mov r0,r4
    mov 0x01,r2

loc_CE32126:
    mov.w @(loc_CE321D8,pc),r0
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE32134:
    mov 0x00,r0
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE3213C:
    rts
    mov 0x00,r0
;----------------------------------------------

loc_CE32140:
    mov.w @(loc_CE321D0,pc),r0
    mov 0xF6,r1
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(loc_CE321DA,pc),r2
    sts.l pr,@-r15
    mov.w @(r0,r14),r3
    mov 0x22,r0
    extu.w r3,r3
    and r2,r3
    shad r1, r3
    mov.b r3,@(r0,r14)
    extu.b r3,r3
    tst r3,r3
    bt loc_CE32190
    mov.w @(loc_CE321D6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf loc_CE32190
    mova @(loc_CE321E8,pc),r0
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf loc_CE32190
    mov.l @(loc_CE321E4,pc),r2
    jsr @r2
    mov r14,r4
    tst r0,r0
    bt/s loc_CE32190
    mov r0,r4
    mov.w @(loc_CE321D8,pc),r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov r4,r0
    nop
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE32190:
    mov 0x00,r0
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE32198:
    mov.l r14,@-r15
    sts.l pr,@-r15
    mov.l @(loc_CE321EC,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(loc_CE321DC,pc),r0
    mov.w @(loc_CE321DE,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.b @(r0,r14),r0
    mov.w @(loc_CE321E0,pc),r2
    add r4,r1
    extu.b r0,r0
    add r4,r2
    mov r14,r4
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(loc_CE321D8,pc),r0
    mov.l @(loc_CE321F0,pc),r1
    mov.b @(r0,r14),r0
    lds.l @r15+,pr
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

loc_CE321D0:
    #data 0x01FA

loc_CE321D2:
    #data 0x0C00

loc_CE321D4:
    #data 0x01FE

loc_CE321D6:
    #data 0x01A3

loc_CE321D8:
    #data 0x01F7

loc_CE321DA:
    #data 0x1C00

loc_CE321DC:
    #data 0x01C8

loc_CE321DE:
    #data 0x0130

loc_CE321E0:
    #data 0x01D2
    #data 0x0000


loc_CE321E4:
    #data loc_8C045790

loc_CE321E8:
    #data 0x43092492


loc_CE321EC:
    #data loc_8C056F2A

loc_CE321F0:
    #data loc_CE32AB4

loc_CE321F4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt loc_CE32232
    mov.w @(loc_CE32306,pc),r0
    mov.w @(loc_CE32308,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(loc_CE32306,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(loc_CE3230A,pc),r0
    mov.w @(loc_CE32308,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.w @(loc_CE32306,pc),r2
    mov.b @(r0,r4),r0
    add r4,r1
    add r4,r2
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

loc_CE32232:
    mova @(loc_CE32310,pc),r0
    mov.l @(loc_CE32318,pc),r3
    fmov.s @r0,fr3
    mova @(loc_CE32314,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(loc_CE3230C,pc),r0
    mov 0x01,r7
    mov.l @(loc_CE3231C,pc),r3
    mov 0x0A,r2
    mov r7,r5
    mov.b r2,@(r0,r14)
    mov 0x0B,r6
    jsr @r3
    mov r14,r4
    mov.l @(loc_CE32320,pc),r2
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r2
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
;----------------------------------------------


loc_CE3226C:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x22,r0
    mov r4,r14
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt loc_CE322AA
    mov.w @(loc_CE32306,pc),r0
    mov.w @(loc_CE32308,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(loc_CE32306,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(loc_CE3230A,pc),r0
    mov.w @(loc_CE32308,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.w @(loc_CE32306,pc),r2
    mov.b @(r0,r4),r0
    add r4,r1
    add r4,r2
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2

loc_CE322AA:
    mova @(loc_CE32310,pc),r0
    mov.l @(loc_CE32318,pc),r3
    fmov.s @r0,fr3
    mova @(loc_CE32314,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.w @(loc_CE3230C,pc),r0
    mov 0x01,r7
    mov.l @(loc_CE3231C,pc),r3
    mov 0x0A,r2
    mov r7,r5
    mov.b r2,@(r0,r14)
    mov 0x05,r6
    jsr @r3
    mov r14,r4
    mov.w @(loc_CE3230A,pc),r0
    mov 0x03,r4
    mov.l @(r0,r14),r2
    add 0x62,r0
    mov.b r4,@(r0,r2)
    add 0x9E,r0
    mov.l @(r0,r14),r3
    add 0x60,r0
    mov.b r4,@(r0,r3)
    add 0xA0,r0
    mov.l @(loc_CE32324,pc),r3
    jsr @r3
    mov.l @(r0,r14),r4
    mov.l @(loc_CE32328,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4
    mov.l @(loc_CE32320,pc),r3
    mov 0x0F,r5
    mov 0x02,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

loc_CE32306:
    #data 0x01D2

loc_CE32308:
    #data 0x0130

loc_CE3230A:
    #data 0x01C8

loc_CE3230C:
    #data 0x01A0

loc_CE3230E:
    #data 0x0000

loc_CE32310:
    #data 0xC2D55555

loc_CE32314:
    #data 0x434DB6DB
loc_CE32318:
    #data loc_8C103660
loc_CE3231C:
    #data loc_8C03544C
loc_CE32320:
    #data loc_8C034E8C
loc_CE32324:
    #data loc_8C0EE570
loc_CE32328:
    #data loc_8C0E97CC


loc_CE3232C:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov 0x68,r0
    fldi0 fr4
    mov r4,r14
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x22,r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    tst 0x01,r0
    bt loc_CE32378
    mov.w @(loc_CE3245A,pc),r0
    mov.w @(loc_CE3245C,pc),r1
    mov.b @(r0,r14),r0
    mov.w @(loc_CE3245A,pc),r2
    add r14,r1
    extu.b r0,r0
    add r14,r2
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2
    mov.w @(loc_CE3245E,pc),r0
    mov.w @(loc_CE3245C,pc),r1
    mov.l @(r0,r14),r4
    add 0x0A,r0
    mov.w @(loc_CE3245A,pc),r2
    mov.b @(r0,r4),r0
    add r4,r1
    add r4,r2
    extu.b r0,r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.b r0,@r2


loc_CE32378:
    mova @(loc_CE32468,pc),r0
    mov.l @(loc_CE32470,pc),r3
    fmov.s @r0,fr3
    mova @(loc_CE3246C,pc),r0
    mov r15,r5
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(loc_CE32474,pc),r2
    mov 0x01,r7
    mov r7,r5
    mov 0x05,r6
    jsr @r2
    mov r14,r4
    mov.w @(loc_CE3245E,pc),r0
    mov 0x03,r4
    mov.l @(r0,r14),r3
    add 0x62,r0
    mov.b r4,@(r0,r3)
    add 0x9E,r0
    mov.l @(r0,r14),r3
    add 0x60,r0
    mov.b r4,@(r0,r3)
    add 0xA0,r0
    mov.l @(loc_CE32478,pc),r3
    jsr @r3
    mov.l @(r0,r14),r4
    mov.w @(loc_CE32460,pc),r0
    mov 0x0A,r2
    mov.l @(loc_CE3247C,pc),r3
    mov 0x0F,r5
    mov.b r2,@(r0,r14)
    mov 0x04,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE323CC:
    mov.w @(loc_CE32462,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(loc_CE32480,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

loc_CE323EA:
    mov r4,r3
    mov.l @(loc_CE32484,pc),r1
    mov.l r4,@-r15
    mov.b @(0x06,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

loc_CE323FC:
    mov.l r14,@-r15
    sts.l pr,@-r15
    mov.l @(loc_CE32488,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(loc_CE32464,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt loc_CE32426
    mov.b @(0x06,r14),r0
    mov 0x00,r3
    mov r3,r5
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov.w @(loc_CE32464,pc),r0
    mov.b r3,@(r0,r14)
    lds.l @r15+,pr
    mov.l @(loc_CE3248C,pc),r3
    jmp @r3
    mov.l @r15+,r14

loc_CE32426:
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE3242C:
    mov.l r14,@-r15
    sts.l pr,@-r15
    bsr loc_CE324F4
    mov r4,r14
    mov.l @(loc_CE32488,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE32454
    mov.b @(0x06,r14),r0
    mov r14,r4
    mov.l @(loc_CE3247C,pc),r3
    mov 0x01,r6
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov 0x0F,r5
    lds.l @r15+,pr
    jmp @r3
    mov.l @r15+,r14

loc_CE32454:
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------
loc_CE3245A:
    #data 0x01D2
loc_CE3245C:
    #data 0x0130
loc_CE3245E:
    #data 0x01C8
loc_CE32460:
    #data 0x01A0
loc_CE32462:
    #data 0x01EA
loc_CE32464:
    #data 0x0141
loc_CE32466:
    #data 0x0000
loc_CE32468:
    #data 0x5555
loc_CE3246A:
    #data 0xC285
loc_CE3246C:
    #data 0x9249
loc_CE3246E:
    #data 0x4380
loc_CE32470:
    #data loc_8C103660
loc_CE32474:
    #data loc_8C03544C
loc_CE32478:
    #data loc_8C0EE570
loc_CE3247C:
    #data loc_8C034E8C
loc_CE32480:
    #data loc_CE32AC0
loc_CE32484:
    #data loc_CE32ACC
loc_CE32488:
    #data loc_8C034DEE
loc_CE3248C:
    #data loc_8C0E97CC


loc_CE32490:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l pr,@-r15
    bsr loc_CE324F4
    mov r4,r14
    mov.l @(loc_CE325D4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(loc_CE325CA,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt loc_CE324EC
    mov.b @(0x06,r14),r0
    mov 0x00,r3
    mov.w @(loc_CE325CE,pc),r1
    mov 0x00,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x06,r14)
    mov 0x01,r2
    mov.w @(loc_CE325CA,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x20,r3
    mov.w @(loc_CE325CC,pc),r0
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x1E,r0
    mov.b @(r0,r14),r0
    add r13,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(loc_CE325D0,pc),r0
    mov.b r3,@(r0,r13)
    add 0x55,r0
    mov.l @(loc_CE325D8,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    lds.l @r15+,pr
    mov r13,r4
    mov.l @(loc_CE325DC,pc),r2
    mov 0x00,r5
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

loc_CE324EC:
    lds.l @r15+,pr
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE324F4:
    mov.w @(loc_CE325CC,pc),r0
    mov.l @(loc_CE325E0,pc),r3
    mov.l @(r0,r4),r4
    mov.l @r3,r0
    mov.l @(0x1C,r0),r0
    tst 0x01,r0
    bt loc_CE32508
    mov.l @(loc_CE325DC,pc),r1
    jmp @r1
    mov 0x01,r5

loc_CE32508:
    mov.l @(loc_CE325DC,pc),r2
    jmp @r2
    mov 0x08,r5

loc_CE3250E:
    mov r4,r3
    mov.l @(loc_CE325E4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x06,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

loc_CE32520:
    mov.w @(loc_CE325CC,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov 0x03,r4
    mov.l r13,@-r15
    sts.l pr,@-r15
    mov.l @(r0,r14),r3
    add 0x62,r0
    mov.b r4,@(r0,r3)
    add 0x9E,r0
    mov.l @(r0,r14),r3
    add 0x60,r0
    mov.b r4,@(r0,r3)
    bsr loc_CE325F0
    mov r14,r4
    mov.l @(loc_CE325D4,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(loc_CE325CA,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x01,r0
    bf loc_CE32598
    mov.b @(0x06,r14),r0
    mov 0x00,r3
    mov.w @(loc_CE325CE,pc),r1
    mov 0x00,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x06,r14)
    mov 0x0A,r2
    mov.w @(loc_CE325CA,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x21,r3
    mov.w @(loc_CE325CC,pc),r0
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x1E,r0
    mov.b @(r0,r14),r0
    add r13,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(loc_CE325D0,pc),r0
    mov.b r3,@(r0,r13)
    add 0x55,r0
    mov.l @(loc_CE325D8,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.l @(loc_CE325DC,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r13,r4
    lds.l @r15+,pr
    mov.l @(loc_CE325E8,pc),r3
    mov r14,r4
    mov 0x02,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

loc_CE32598:
    lds.l @r15+,pr
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE325A0:
    mov.l r14,@-r15
    sts.l pr,@-r15
    mov.l @(loc_CE325D4,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE325C4
    mov.b @(0x06,r14),r0
    mov r14,r4
    mov.l @(loc_CE325EC,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov 0x0F,r5
    lds.l @r15+,pr
    jmp @r3
    mov.l @r15+,r14

loc_CE325C4:
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE325CA:
    #data 0x0141

loc_CE325CC:
    #data 0x01C8

loc_CE325CE:
    #data 0x01D2

loc_CE325D0:
    #data 0x01A1
    #data 0x0000


loc_CE325D4:
    #data loc_8C034DEE

loc_CE325D8:
    #data loc_8C02FEC4

loc_CE325DC:
    #data loc_8C035162

loc_CE325E0:
    #data loc_8C26823C

loc_CE325E4:
    #data loc_CE32ADC

loc_CE325E8:
    #data loc_8C0E97CC

loc_CE325EC:
    #data loc_8C034E8C


loc_CE325F0:
    mov.w @(loc_CE32726,pc),r0
    mov.l @(loc_CE32734,pc),r3
    mov.l @(r0,r4),r4
    mov.l @r3,r0
    mov.l @(0x1C,r0),r0
    tst 0x01,r0
    bt loc_CE32604
    mov.l @(loc_CE32738,pc),r1
    jmp @r1
    mov 0x05,r5

loc_CE32604:
    mov.l @(loc_CE32738,pc),r2
    jmp @r2
    mov 0x04,r5

loc_CE3260A:
    mov r4,r3
    mov.l @(loc_CE3273C,pc),r1
    mov.l r4,@-r15
    mov.b @(0x06,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

loc_CE3261C:
    mov.w @(loc_CE32726,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov 0x03,r4
    mov.l r13,@-r15
    sts.l pr,@-r15
    mov.l @(r0,r14),r3
    add 0x62,r0
    mov.b r4,@(r0,r3)
    add 0x9E,r0
    mov.l @(r0,r14),r3
    add 0x60,r0
    mov.b r4,@(r0,r3)
    bsr loc_CE325F0
    mov r14,r4
    mov.l @(loc_CE32740,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(loc_CE32728,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt loc_CE32694
    mov.b @(0x06,r14),r0
    mov 0x00,r3
    mov.w @(loc_CE3272A,pc),r1
    mov 0x00,r6
    add 0x01,r0
    mov r6,r5
    mov.b r0,@(0x06,r14)
    mov 0x0A,r2
    mov.w @(loc_CE32728,pc),r0
    mov.b r3,@(r0,r14)
    mov 0x22,r3
    mov.w @(loc_CE32726,pc),r0
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0x1E,r0
    mov.b @(r0,r14),r0
    add r13,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(loc_CE3272C,pc),r0
    mov.b r3,@(r0,r13)
    add 0x55,r0
    mov.l @(loc_CE32744,pc),r3
    mov.b r2,@(r0,r13)
    jsr @r3
    mov r14,r4
    mov.l @(loc_CE32738,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r13,r4
    lds.l @r15+,pr
    mov.l @(loc_CE32748,pc),r3
    mov r14,r4
    mov 0x03,r5
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

loc_CE32694:
    lds.l @r15+,pr
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE3269C:
    mov.l r14,@-r15
    sts.l pr,@-r15
    mov.l @(loc_CE32740,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE326C0
    mov.b @(0x06,r14),r0
    mov r14,r4
    mov.l @(loc_CE3274C,pc),r3
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x06,r14)
    mov 0x0F,r5
    lds.l @r15+,pr
    jmp @r3
    mov.l @r15+,r14

loc_CE326C0:
    lds.l @r15+,pr
    rts
    mov.l @r15+,r14
;----------------------------------------------

loc_CE326C6:
    sts.l pr,@-r15
    add 0xFC,r15
    mov.l @(loc_CE32740,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt loc_CE326E0
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(loc_CE32750,pc),r3
    jmp @r3
    lds.l @r15+,pr

loc_CE326E0:
    add 0x04,r15
    lds.l @r15+,pr
    rts
    nop
;----------------------------------------------

loc_CE326E8:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(loc_CE3272E,pc),r1
    mov.l @(loc_CE32754,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

loc_CE32700:
    mov.w @(loc_CE32726,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(loc_CE32758,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

loc_CE3270E:
    mov.w @(loc_CE32730,pc),r3
    mov 0xFF,r0
    add r3,r4
    mov.b r0,@(0x06,r4)
    mov.b @(0x04,r4),r0
    add 0x01,r0
    mov.b r0,@(0x04,r4)
    mov 0x00,r0
    mov.b r0,@(0x05,r4)
    mov.b r0,@(0x02,r4)
    rts
    mov.b r0,@(0x03,r4)
;----------------------------------------------

loc_CE32726:
    #data 0x01C8

loc_CE32728:
    #data 0x0141

loc_CE3272A:
    #data 0x01D2

loc_CE3272C:
    #data 0x01A1

loc_CE3272E:
    #data 0x01F7

loc_CE32730:
    #data 0x02A4
    #data 0x0000


loc_CE32734:
    #data loc_8C26823C

loc_CE32738:
    #data loc_8C035162

loc_CE3273C:
    #data loc_CE32AE8

loc_CE32740:
    #data loc_8C034DEE

loc_CE32744:
    #data loc_8C02FEC4

loc_CE32748:
    #data loc_8C0E97CC

loc_CE3274C:
    #data loc_8C034E8C

loc_CE32750:
    #data loc_8C05176E

loc_CE32754:
    #data loc_CE32AF4

loc_CE32758:
    #data loc_8C04CC1C


loc_CE3275C:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x05,r4)
    mov.b r0,@(0x07,r4)
    mov.b r0,@(0x06,r4)
    mov.w @(loc_CE32836,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt loc_CE3277C
    cmp/eq 0x01,r0
    bt loc_CE32784
    cmp/eq 0x02,r0
    bt loc_CE3278C
    bra loc_CE32790
    nop

loc_CE3277C:
    mov.w @(loc_CE32838,pc),r0
    mov 0x08,r3
    bra loc_CE32790
    mov.b r3,@(r0,r4)

loc_CE32784:
    mov.w @(loc_CE32838,pc),r0
    mov 0x01,r1
    bra loc_CE32790
    mov.b r1,@(r0,r4)


loc_CE3278C:
    #data 0x04549054


loc_CE32790:
    mov.l @(loc_CE3283C,pc),r2
    jmp @r2
    mov 0x1D,r5

loc_CE32796:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x05,r4)
    mov.b r0,@(0x07,r4)
    mov.b r0,@(0x06,r4)
    mov.w @(loc_CE32836,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt loc_CE327B6
    cmp/eq 0x01,r0
    bt loc_CE327BE
    cmp/eq 0x02,r0
    bt loc_CE327C6
    bra loc_CE327CA
    nop

loc_CE327B6:
    mov.w @(loc_CE32838,pc),r0
    mov 0x08,r3
    bra loc_CE327CA
    mov.b r3,@(r0,r4)

loc_CE327BE:
    mov.w @(loc_CE32838,pc),r0
    mov 0x01,r1
    bra loc_CE327CA
    mov.b r1,@(r0,r4)

loc_CE327C6:
    #data 0x9037
    #data 0x0454


loc_CE327CA:
    mov.l @(loc_CE3283C,pc),r2
    jmp @r2
    mov 0x1D,r5

loc_CE327D0:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x05,r4)
    mov.b r0,@(0x07,r4)
    mov.b r0,@(0x06,r4)
    mov.w @(loc_CE32836,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt loc_CE327F0
    cmp/eq 0x01,r0
    bt loc_CE327FC
    cmp/eq 0x02,r0
    bt loc_CE32804
    bra loc_CE32810
    nop

loc_CE327F0:
    mov.w @(loc_CE32838,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)
    add 0xBA,r0
    bra loc_CE32810
    mov.b r5,@(r0,r4)

loc_CE327FC:
    mov.w @(loc_CE32838,pc),r0
    mov 0x03,r2
    bra loc_CE3280A
    mov.b r2,@(r0,r4)


loc_CE32804:
    #data 0xE30A9018
    #data 0x0434

loc_CE3280A:
    #data 0x9016
    #data 0x0424E201


loc_CE32810:
    mov.l @(loc_CE3283C,pc),r2
    jmp @r2
    mov 0x15,r5

loc_CE32816:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x05,r4)
    mov.b r0,@(0x07,r4)
    mov.b r0,@(0x06,r4)
    mov.w @(loc_CE32836,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt loc_CE32840
    cmp/eq 0x01,r0
    bt loc_CE3284C
    cmp/eq 0x02,r0
    bt loc_CE32854
    bra loc_CE32860
    nop

loc_CE32836:
    #data 0x04C9

loc_CE32838:
    #data 0x01E9
    #data 0x01A3


loc_CE3283C:
    #data loc_8C0530D8


loc_CE32840:
    mov.w @(loc_CE32866,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r4)
    add 0xBA,r0
    bra loc_CE32860
    mov.b r5,@(r0,r4)

loc_CE3284C:
    mov.w @(loc_CE32866,pc),r0
    mov 0x03,r2
    bra loc_CE3285A
    mov.b r2,@(r0,r4)


loc_CE32854:
    #data 0xE30A9007
    #data 0x0434

loc_CE3285A:
    #data 0x9005
    #data 0x0424E201


loc_CE32860:
    mov.l @(loc_CE3286C,pc),r2
    jmp @r2
    mov 0x15,r5

loc_CE32866:
    #data 0x01E9
    #data 0x000001A3


loc_CE3286C:
    #data loc_8C0530D8

loc_CE32870:
    #data 0x02010201


loc_CE32874:
    #data 0xFFFFFFFF


loc_CE32878:
    #data 0xFFFFFFFF


loc_CE3287C:
    #data 0x02010201


loc_CE32880:
    #data 0xFFFFFFFF


loc_CE32884:
    #data 0xFFFFFFFF


loc_CE32888:
    #data 0x02010201


loc_CE3288C:
    #data 0xFFFFFFFF


loc_CE32890:
    #data 0xFFFFFFFF


loc_CE32894:
    #data 0x02010201


loc_CE32898:
    #data 0xFFFFFFFF


loc_CE3289C:
    #data 0xFFFFFFFF


loc_CE328A0:
    #data 0x02000201


loc_CE328A4:
    #data 0x020102FF


loc_CE328A8:
    #data 0xFFFFFFFF


loc_CE328AC:
    #data 0x02010201


loc_CE328B0:
    #data 0x02FF02FF


loc_CE328B4:
    #data 0xFFFFFFFF


loc_CE328B8:
    #data 0x0003
loc_CE328BA:
    #data 0x9100
loc_CE328BC:
    #data 0x0000
loc_CE328BE:
    #data 0x0000
loc_CE328C0:
    #data 0x1000
loc_CE328C2:
    #data 0x1800
loc_CE328C4:
    #data 0x0800
loc_CE328C6:
    #data 0x0300

loc_CE328C8:
    #data 0x0003
loc_CE328CA:
    #data 0x9100
loc_CE328CC:
    #data 0x0001
loc_CE328CE:
    #data 0x0000
loc_CE328D0:
    #data 0x1000
loc_CE328D2:
    #data 0x1800
loc_CE328D4:
    #data 0x0800
loc_CE328D6:
    #data 0x0060


loc_CE328D8:
    #data 0x0003
loc_CE328DA:
    #data 0x8100
loc_CE328DC:
    #data 0x0008
loc_CE328DE:
    #data 0x0000
loc_CE328E0:
    #data 0x1000
loc_CE328E2:
    #data 0x1400
loc_CE328E4:
    #data 0x0400
loc_CE328E6:
    #data 0x0300


loc_CE328E8:
    #data 0x0005
loc_CE328EA:
    #data 0x1000
loc_CE328EC:
    #data 0x0002
loc_CE328EE:
    #data 0x0000
loc_CE328F0:
    #data 0x0400
loc_CE328F2:
    #data 0x1400
loc_CE328F4:
    #data 0x1000
loc_CE328F6:
    #data 0x1800
loc_CE328F8:
    #data 0x0800
loc_CE328FA:
    #data 0x0300


loc_CE328FC:
    #data 0x0005
loc_CE328FE:
    #data 0x1000
loc_CE32900:
    #data 0x0003
loc_CE32902:
    #data 0x0000
loc_CE32904:
    #data 0x0800
loc_CE32906:
    #data 0x1800
loc_CE32908:
    #data 0x1000
loc_CE3290A:
    #data 0x1400
loc_CE3290C:
    #data 0x0400
loc_CE3290E:
    #data 0x0300


loc_CE32910:
    #data loc_CE30456

loc_CE32914:
    #data loc_CE3001C

loc_CE32918:
    #data loc_CE304B0

loc_CE3291C:
    #data loc_CE30AE6

loc_CE32920:
    #data loc_CE30F76

loc_CE32924:
    #data loc_CE310F4

loc_CE32928:
    #data loc_CE311C4

loc_CE3292C:
    #data loc_CE3136C

loc_CE32930:
    #data loc_CE31416

loc_CE32934:
    #data loc_CE32078

loc_CE32938:
    #data loc_CE32198

loc_CE3293C:
    #data loc_CE323CC

loc_CE32940:
    #data loc_CE326E8

loc_CE32944:
    #data loc_CE30328

loc_CE32948:
    #data loc_CE31F06

loc_CE3294C:
    #data loc_CE30EAC

loc_CE32950:
    #data loc_CE3275C

loc_CE32954:
    #data loc_CE32796

loc_CE32958:
    #data loc_CE327D0

loc_CE3295C:
    #data loc_CE32816
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000


loc_CE32980:
    #data loc_CE304C4

loc_CE32984:
    #data loc_CE30850

loc_CE32988:
    #data loc_CE30878

loc_CE3298C:
    #data loc_CE304C4

loc_CE32990:
    #data loc_CE30AFA

loc_CE32994:
    #data loc_CE30D3C

loc_CE32998:
    #data loc_CE30D26

loc_CE3299C:
    #data loc_CE30AFA

loc_CE329A0:
    #data loc_CE30F92

loc_CE329A4:
    #data loc_CE31008

loc_CE329A8:
    #data loc_CE31042

loc_CE329AC:
    #data loc_CE3106A

loc_CE329B0:
    #data 0x00000000
    #data 0x43700000
    #data 0x42555555
    #data 0x433AAAAA
    #data 0x41D55555
    #data 0xC34D0000
    #data 0xC2555555
    #data 0xC34D0000
    #data 0xC1D55555
    #data 0xC3700000
    #data 0x434D0000


loc_CE329DC:
    #data loc_CE31134

loc_CE329E0:
    #data loc_CE31154

loc_CE329E4:
    #data loc_CE3118E

loc_CE329E8:
    #data loc_CE311B6

loc_CE329EC:
    #data loc_CE311D6

loc_CE329F0:
    #data loc_CE31298

loc_CE329F4:
    #data loc_CE3134C

loc_CE329F8:
    #data loc_CE31396

loc_CE329FC:
    #data loc_CE31410

loc_CE32A00:
    #data loc_CE313DC

loc_CE32A04:
    #data loc_CE31408

loc_CE32A08:
    #data loc_CE31400

loc_CE32A0C:
    #data loc_CE31408

loc_CE32A10:
    #data loc_CE31408

loc_CE32A14:
    #data loc_CE31434

loc_CE32A18:
    #data loc_CE3162A

loc_CE32A1C:
    #data loc_CE318BE

loc_CE32A20:
    #data loc_CE319D0

loc_CE32A24:
    #data loc_CE31434

loc_CE32A28:
    #data loc_CE31AE8

loc_CE32A2C:
    #data loc_CE31434

loc_CE32A30:
    #data loc_CE31434

loc_CE32A34:
    #data loc_CE31B1A

loc_CE32A38:
    #data loc_CE31D6A

loc_CE32A3C:
    #data loc_CE31E64

loc_CE32A40:
    #data loc_CE31446

loc_CE32A44:
    #data loc_CE314C8

loc_CE32A48:
    #data loc_CE31578

loc_CE32A4C:
    #data loc_CE315AC

loc_CE32A50:
    #data loc_CE30434

loc_CE32A54:
    #data loc_CE31670

loc_CE32A58:
    #data loc_CE3172E

loc_CE32A5C:
    #data loc_CE317EC

loc_CE32A60:
    #data loc_CE31800

loc_CE32A64:
    #data loc_CE318B8

loc_CE32A68:
    #data loc_CE30434

loc_CE32A6C:
    #data loc_CE31904

loc_CE32A70:
    #data loc_CE3197E

loc_CE32A74:
    #data loc_CE30434

loc_CE32A78:
    #data loc_CE31A10

loc_CE32A7C:
    #data loc_CE31AA0

loc_CE32A80:
    #data loc_CE31B64

loc_CE32A84:
    #data loc_CE31BFC

loc_CE32A88:
    #data loc_CE31CA8

loc_CE32A8C:
    #data loc_CE31D36

loc_CE32A90:
    #data loc_CE31D7C

loc_CE32A94:
    #data loc_CE31DFC

loc_CE32A98:
    #data loc_CE31F5C

loc_CE32A9C:
    #data loc_CE31FD6

loc_CE32AA0:
    #data loc_CE32044

loc_CE32AA4:
    #data loc_CE320C4

loc_CE32AA8:
    #data loc_CE3213C

loc_CE32AAC:
    #data loc_CE32140

loc_CE32AB0:
    #data loc_CE320C4

loc_CE32AB4:
    #data loc_CE321F4

loc_CE32AB8:
    #data loc_CE3226C

loc_CE32ABC:
    #data loc_CE3232C

loc_CE32AC0:
    #data loc_CE323EA

loc_CE32AC4:
    #data loc_CE3250E

loc_CE32AC8:
    #data loc_CE3260A

loc_CE32ACC:
    #data loc_CE323FC

loc_CE32AD0:
    #data loc_CE3242C

loc_CE32AD4:
    #data loc_CE32490

loc_CE32AD8:
    #data loc_CE30434

loc_CE32ADC:
    #data loc_CE32520

loc_CE32AE0:
    #data loc_CE325A0

loc_CE32AE4:
    #data loc_CE30434

loc_CE32AE8:
    #data loc_CE3261C

loc_CE32AEC:
    #data loc_CE3269C

loc_CE32AF0:
    #data loc_CE326C6

loc_CE32AF4:
    #data loc_CE32700

loc_CE32AF8:
    #data loc_CE32700

loc_CE32AFC:
    #data loc_CE32700
